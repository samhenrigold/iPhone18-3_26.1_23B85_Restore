void sub_1002D7194()
{
  v1 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator;
  v2 = *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_dropIndicator];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  v4 = OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments;
  v5 = *&v0[OBJC_IVAR____TtC7Journal14CanvasTextView_dropTargetAttachments];
  if (v5 >> 62)
  {
    v6 = _CocoaArrayWrapper.endIndex.getter();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return;
  }

  v23 = v4;

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    sub_1002C322C(v8, 1);
    if ((v12 & 1) == 0)
    {
      v13 = v10;
      v14 = v11;
      v15 = [v0 textStorage];
      [v15 removeAttribute:NSParagraphAttachmentAttributeName range:{v13, v14}];
    }
  }

  v4 = v23;
LABEL_15:
  *&v0[v4] = _swiftEmptyArrayStorage;

  v16 = *&v0[v4];
  if (v16 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    v17 = &v0[OBJC_IVAR____TtC7Journal14CanvasTextView_draggedItemSize];
    *v17 = 0;
    *(v17 + 1) = 0;
    v17[16] = 1;
  }

LABEL_18:
  v18 = [v0 delegate];
  if (v18)
  {
    v19 = v18;
    if ([v18 respondsToSelector:"textViewDidChange:"])
    {
      [v19 textViewDidChange:v0];
    }

    swift_unknownObjectRelease();
  }

  v20 = *&v0[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
  if (v20)
  {
    v21 = *(v20 + OBJC_IVAR____TtC7Journal14EntryViewModel_undoManager);
    if (v21)
    {

      v22 = v21;
      sub_10012ACEC();
    }
  }
}

void sub_1002D7420(void *a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = type metadata accessor for CharacterSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = &v22 - v11;
  v13 = [a1 string];
  if (v13)
  {
    v14 = v13;
    CharacterSet.init(charactersIn:)();
    v15 = swift_allocObject();
    *(v15 + 16) = _swiftEmptySetSingleton;
    v22 = [v14 length];
    (*(v6 + 16))(v8, v12, v5);
    v16 = (*(v6 + 80) + 72) & ~*(v6 + 80);
    v17 = swift_allocObject();
    *(v17 + 2) = a1;
    *(v17 + 3) = v15;
    v18 = v23;
    *(v17 + 4) = a2;
    *(v17 + 5) = v18;
    *(v17 + 6) = 9142498;
    *(v17 + 7) = 0xA300000000000000;
    *(v17 + 8) = v14;
    (*(v6 + 32))(&v17[v16], v8, v5);
    aBlock[4] = sub_1002D76CC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10079FA14;
    aBlock[3] = &unk_100A64180;
    v19 = _Block_copy(aBlock);
    v20 = a1;

    v21 = v14;

    [v21 enumerateSubstringsInRange:0 options:v22 usingBlock:{1, v19}];
    _Block_release(v19);

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1002D77B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_1002CD724(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D7880(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002CC748(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D7940(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002CB220(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D7A00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002CAAAC(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D7AC0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100032EC8;

  return sub_10016B78C(a1, a2, v7, v6);
}

void sub_1002D7B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  if (*v4 <= a2)
  {
    if (__OFADD__(a2, a3))
    {
      __break(1u);
    }

    else
    {
      *v4 = a2 + a3;
    }
  }

  else
  {
    **(v3 + 24) = 1;
  }
}

id sub_1002D7BD4()
{
  v1 = *(v0 + 16);
  v2 = objc_allocWithZone(UIDragPreview);

  return [v2 initWithView:v1];
}

uint64_t sub_1002D7C1C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_1002C6AC8(a1, v5, v4);
}

uint64_t sub_1002D7CC8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002D7D08(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100032EC8;

  return sub_1002C597C(a1, v5, v4);
}

uint64_t sub_1002D7DD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_1002B6C24(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002D7EDC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100032EC8;

  return sub_1002BD9DC(v9, v10, a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1002D7FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032EC8;

  return sub_1002B3464(a1, v4, v5, v7, v6);
}

uint64_t sub_1002D8090()
{
  v1 = type metadata accessor for PaperMarkup();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1002D815C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000F2A18(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LocationOption.description.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      if (qword_100AD0618 != -1)
      {
        swift_once();
      }

      v1 = &xmmword_100B30810;
    }

    else
    {
      if (qword_100AD0610 != -1)
      {
        swift_once();
      }

      v1 = &xmmword_100B30800;
    }
  }

  else
  {
    if (qword_100AD0620 != -1)
    {
      swift_once();
    }

    v1 = &xmmword_100B30820;
  }

  v2 = *v1;

  return v2;
}

Journal::LocationOption_optional __swiftcall LocationOption.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue >= 3)
  {
    LOBYTE(rawValue) = 3;
  }

  return rawValue;
}

uint64_t sub_1002D8498()
{
  if (*v0)
  {
    if (*v0 == 1)
    {
      if (qword_100AD0618 != -1)
      {
        swift_once();
      }

      v1 = &xmmword_100B30810;
    }

    else
    {
      if (qword_100AD0610 != -1)
      {
        swift_once();
      }

      v1 = &xmmword_100B30800;
    }
  }

  else
  {
    if (qword_100AD0620 != -1)
    {
      swift_once();
    }

    v1 = &xmmword_100B30820;
  }

  v2 = *v1;

  return v2;
}

uint64_t _s7Journal14LocationOptionO3forACSgSS_tcfC_0(unint64_t a1, unint64_t a2)
{
  if (qword_100AD0620 != -1)
  {
    swift_once();
  }

  v4 = xmmword_100B30820 == a1 && *(&xmmword_100B30820 + 1) == a2;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    if (qword_100AD0618 != -1)
    {
      swift_once();
    }

    v6 = xmmword_100B30810 == a1 && *(&xmmword_100B30810 + 1) == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      if (qword_100AD0610 != -1)
      {
        swift_once();
      }

      if (xmmword_100B30800 == __PAIR128__(a2, a1))
      {

        return 2;
      }

      else
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          return 2;
        }

        else
        {
          return 3;
        }
      }
    }
  }
}

unint64_t sub_1002D870C()
{
  result = qword_100ADC758;
  if (!qword_100ADC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC758);
  }

  return result;
}

unint64_t sub_1002D8764()
{
  result = qword_100ADC760;
  if (!qword_100ADC760)
  {
    sub_1000F2A18(&qword_100ADC768, &qword_10094C6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADC760);
  }

  return result;
}

uint64_t sub_1002D87FC(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADCE48, &unk_10095EF70);
  __chkstk_darwin(v2 - 8);
  sub_1000082B4(a1, &v5 - v3, &qword_100ADCE48, &unk_10095EF70);
  return EnvironmentValues.backgroundMaterial.setter();
}

uint64_t sub_1002D88F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1002E2E64();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

uint64_t sub_1002D8958()
{
  sub_1002E0D48();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1002D8994()
{
  sub_1002E0CF4();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1002D89D0()
{
  v1 = v0;
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v2 = *(v7 + 105);

  if (v2 == 2)
  {
    return 2;
  }

  LOBYTE(v7) = *(v1 + *(type metadata accessor for RecordingView(0) + 28));
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.wrappedValue.getter();
  if (v6)
  {
    return 1;
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v7 + 96);
  v5 = *(v7 + 104);

  return (v5 & 1) != 0 || v4 != 2;
}

BOOL sub_1002D8B28()
{
  if (!sub_1002D89D0())
  {
    return 0;
  }

  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v0 = *(v7 + 81);

  if (v0)
  {
    return 1;
  }

  Bindable.wrappedValue.getter();
  sub_1005F0910();
  v3 = v2;
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v3 & 0xFFFFFFFFFFFFLL;
  }

  return v6 != 0;
}

uint64_t sub_1002D8C68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v48 = sub_1000F24EC(&qword_100ADB0A0, &qword_10094ABC8);
  __chkstk_darwin(v48);
  v51 = &v43 - v3;
  v4 = type metadata accessor for RecordingView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000F24EC(&qword_100ADCA80, &qword_10094C950);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  v50 = sub_1000F24EC(&qword_100ADCA88, &qword_10094C958);
  __chkstk_darwin(v50);
  v13 = &v43 - v12;
  v14 = sub_1000F24EC(&qword_100ADCA90, &qword_10094C960);
  v46 = *(v14 - 8);
  v47 = v14;
  __chkstk_darwin(v14);
  v44 = &v43 - v15;
  v43 = sub_1000F24EC(&qword_100ADCA98, &qword_10094C968);
  __chkstk_darwin(v43);
  v45 = &v43 - v16;
  *v11 = static HorizontalAlignment.center.getter();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v17 = sub_1000F24EC(&qword_100ADCAA0, &qword_10094C970);
  sub_1002D92C4(v2, &v11[*(v17 + 44)]);
  sub_1001938C4(v2, v7);
  v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v19 = swift_allocObject();
  sub_1002E1A8C(v7, v19 + v18, type metadata accessor for RecordingView);
  v20 = &v11[*(sub_1000F24EC(&qword_100ADCAA8, &qword_10094C978) + 36)];
  *v20 = 0;
  *(v20 + 1) = 0;
  *(v20 + 2) = sub_1002E0A70;
  *(v20 + 3) = v19;
  v21 = v50;
  sub_1001938C4(v2, v7);
  v22 = swift_allocObject();
  v23 = v22 + v18;
  v24 = v51;
  sub_1002E1A8C(v7, v23, type metadata accessor for RecordingView);
  v25 = &v11[*(v9 + 44)];
  *v25 = sub_1002DABE0;
  v25[1] = 0;
  v25[2] = sub_1002E0A88;
  v25[3] = v22;
  sub_1002D89D0();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v11, v13, &qword_100ADCA80, &qword_10094C950);
  v26 = &v13[*(v21 + 36)];
  v27 = v57;
  *(v26 + 4) = v56;
  *(v26 + 5) = v27;
  *(v26 + 6) = v58;
  v28 = v53;
  *v26 = v52;
  *(v26 + 1) = v28;
  v29 = v55;
  *(v26 + 2) = v54;
  *(v26 + 3) = v29;
  v30 = enum case for DynamicTypeSize.accessibility1(_:);
  v31 = type metadata accessor for DynamicTypeSize();
  (*(*(v31 - 8) + 104))(v24, v30, v31);
  sub_1002E0A28(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1002E0AF8();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    v33 = v44;
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v24, &qword_100ADB0A0, &qword_10094ABC8);
    sub_100004F84(v13, &qword_100ADCA88, &qword_10094C958);
    KeyPath = swift_getKeyPath();
    v35 = sub_1002D89D0();
    v36 = v45;
    (*(v46 + 32))(v45, v33, v47);
    v37 = &v36[*(v43 + 36)];
    *v37 = KeyPath;
    v37[8] = v35;
    v38 = swift_getKeyPath();
    v39 = sub_1002DAC94();
    v40 = v36;
    v41 = v49;
    sub_100021CEC(v40, v49, &qword_100ADCA98, &qword_10094C968);
    result = sub_1000F24EC(&qword_100ADCAE8, &unk_10094C9E0);
    v42 = v41 + *(result + 36);
    *v42 = v38;
    *(v42 + 8) = v39;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002D92C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v85 = sub_1000F24EC(&qword_100ADCB00, &qword_10094CA78);
  __chkstk_darwin(v85);
  v87 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v86 = &v72 - v5;
  v79 = sub_1000F24EC(&qword_100ADCB08, &qword_10094CA80);
  __chkstk_darwin(v79);
  v7 = &v72 - v6;
  v80 = sub_1000F24EC(&qword_100ADCB10, &qword_10094CA88);
  __chkstk_darwin(v80);
  v78 = &v72 - v8;
  v74 = sub_1000F24EC(&qword_100ADCB18, &qword_10094CA90);
  __chkstk_darwin(v74);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v77 = &v72 - v11;
  v73 = sub_1000F24EC(&qword_100ADCB20, &qword_10094CA98);
  __chkstk_darwin(v73);
  v75 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v88 = (&v72 - v14);
  v15 = sub_1000F24EC(&qword_100ADCB28, &qword_10094CAA0);
  __chkstk_darwin(v15 - 8);
  v83 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v81 = &v72 - v18;
  v19 = sub_1000F24EC(&qword_100ADCB30, &qword_10094CAA8);
  __chkstk_darwin(v19 - 8);
  v82 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v89 = (&v72 - v22);
  if (sub_1002D89D0())
  {
    sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
    Bindable.wrappedValue.getter();
    v23 = v103;
    KeyPath = swift_getKeyPath();
    v25 = static Edge.Set.top.getter();
    if (sub_1002D89D0() != 2)
    {
      Bindable.wrappedValue.getter();
    }

    EdgeInsets.init(_all:)();
    LOBYTE(v95[0]) = 0;
    LOBYTE(v90) = 0;
    v102 = 0;
    *&v97 = KeyPath;
    BYTE8(v97) = 0;
    *&v98 = v23;
    BYTE8(v98) = v25;
    *&v99 = v26;
    *(&v99 + 1) = v27;
    *&v100 = v28;
    *(&v100 + 1) = v29;
    v101 = 0;
    sub_1000F24EC(&qword_100ADCB38, &qword_10094CAB0);
    sub_1000F24EC(&qword_100ADCB40, &qword_10094CAB8);
    sub_1002E10D4();
    sub_10000B58C(&qword_100ADCB58, &qword_100ADCB40, &qword_10094CAB8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
    Bindable.wrappedValue.getter();
    v30 = v103;

    LOBYTE(v95[0]) = 1;
    LOBYTE(v90) = 1;
    v103 = v30;
    LOBYTE(v104) = 1;
    HIBYTE(v107) = 1;
    sub_1000F24EC(&qword_100ADCB38, &qword_10094CAB0);
    sub_1000F24EC(&qword_100ADCB40, &qword_10094CAB8);
    sub_1002E10D4();
    sub_10000B58C(&qword_100ADCB58, &qword_100ADCB40, &qword_10094CAB8, &protocol conformance descriptor for TupleView<A>);
    _ConditionalContent<>.init(storage:)();

    v105 = v99;
    v106 = v100;
    v107 = v101;
    v103 = v97;
    v104 = v98;
  }

  v31 = static Alignment.center.getter();
  v32 = v89;
  *v89 = v31;
  v32[1] = v33;
  v34 = sub_1000F24EC(&qword_100ADCB60, &qword_10094CAC0);
  sub_1002DEB90(a1, v32 + *(v34 + 44));
  if (sub_1002D89D0())
  {
    sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
    Bindable.wrappedValue.getter();
    v35 = v88;
    sub_1002E31A4(v97, v88);
    v36 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v37 = v35 + *(v73 + 36);
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    v42 = v77;
    sub_1002D9D28(v77);
    v43 = static Edge.Set.bottom.getter();
    EdgeInsets.init(_all:)();
    v44 = v75;
    v45 = v42 + *(v74 + 36);
    *v45 = v43;
    *(v45 + 8) = v46;
    *(v45 + 16) = v47;
    *(v45 + 24) = v48;
    *(v45 + 32) = v49;
    *(v45 + 40) = 0;
    sub_1000082B4(v35, v44, &qword_100ADCB20, &qword_10094CA98);
    v50 = v76;
    sub_1000082B4(v42, v76, &qword_100ADCB18, &qword_10094CA90);
    v51 = v78;
    sub_1000082B4(v44, v78, &qword_100ADCB20, &qword_10094CA98);
    v52 = sub_1000F24EC(&qword_100ADCB68, &qword_10094CAC8);
    sub_1000082B4(v50, v51 + *(v52 + 48), &qword_100ADCB18, &qword_10094CA90);
    sub_100004F84(v50, &qword_100ADCB18, &qword_10094CA90);
    sub_100004F84(v44, &qword_100ADCB20, &qword_10094CA98);
    sub_1000082B4(v51, v7, &qword_100ADCB10, &qword_10094CA88);
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100ADCB70, &qword_100ADCB10, &qword_10094CA88, &protocol conformance descriptor for TupleView<A>);
    v53 = v81;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v51, &qword_100ADCB10, &qword_10094CA88);
    v54 = v53;
    sub_100004F84(v42, &qword_100ADCB18, &qword_10094CA90);
    sub_100004F84(v88, &qword_100ADCB20, &qword_10094CA98);
  }

  else
  {
    *v7 = 0;
    v7[8] = 1;
    swift_storeEnumTagMultiPayload();
    sub_10000B58C(&qword_100ADCB70, &qword_100ADCB10, &qword_10094CA88, &protocol conformance descriptor for TupleView<A>);
    v54 = v81;
    _ConditionalContent<>.init(storage:)();
  }

  v55 = v86;
  sub_1002DA5F0(v86);
  v56 = static Edge.Set.bottom.getter();
  EdgeInsets.init(_all:)();
  v57 = v55 + *(v85 + 36);
  *v57 = v56;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59;
  *(v57 + 24) = v60;
  *(v57 + 32) = v61;
  *(v57 + 40) = 0;
  v92 = v105;
  v93 = v106;
  v94 = v107;
  v90 = v103;
  v91 = v104;
  v62 = v82;
  sub_1000082B4(v89, v82, &qword_100ADCB30, &qword_10094CAA8);
  v63 = v83;
  sub_1000082B4(v54, v83, &qword_100ADCB28, &qword_10094CAA0);
  v64 = v87;
  sub_1000082B4(v55, v87, &qword_100ADCB00, &qword_10094CA78);
  v65 = v93;
  v95[2] = v92;
  v95[3] = v93;
  v66 = v94;
  v96 = v94;
  v68 = v90;
  v67 = v91;
  v95[0] = v90;
  v95[1] = v91;
  v69 = v84;
  *(v84 + 32) = v92;
  *(v69 + 48) = v65;
  *(v69 + 64) = v66;
  *v69 = v68;
  *(v69 + 16) = v67;
  v70 = sub_1000F24EC(&qword_100ADCB78, &qword_10094CAD0);
  sub_1000082B4(v62, v69 + v70[12], &qword_100ADCB30, &qword_10094CAA8);
  sub_1000082B4(v63, v69 + v70[16], &qword_100ADCB28, &qword_10094CAA0);
  sub_1000082B4(v64, v69 + v70[20], &qword_100ADCB00, &qword_10094CA78);
  sub_1000082B4(v95, &v97, &qword_100ADCB80, &qword_10094CAD8);
  sub_100004F84(v55, &qword_100ADCB00, &qword_10094CA78);
  sub_100004F84(v54, &qword_100ADCB28, &qword_10094CAA0);
  sub_100004F84(v89, &qword_100ADCB30, &qword_10094CAA8);
  sub_100004F84(v64, &qword_100ADCB00, &qword_10094CA78);
  sub_100004F84(v63, &qword_100ADCB28, &qword_10094CAA0);
  sub_100004F84(v62, &qword_100ADCB30, &qword_10094CAA8);
  v99 = v92;
  v100 = v93;
  v101 = v94;
  v97 = v90;
  v98 = v91;
  return sub_100004F84(&v97, &qword_100ADCB80, &qword_10094CAD8);
}

uint64_t sub_1002D9D28@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v55 = sub_1000F24EC(&qword_100ADB0A0, &qword_10094ABC8);
  __chkstk_darwin(v55);
  v71 = &v54 - v2;
  v3 = type metadata accessor for PlainButtonStyle();
  v4 = *(v3 - 8);
  v69 = v3;
  v70 = v4;
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADCD10, &qword_10094CD48);
  __chkstk_darwin(v7 - 8);
  v9 = &v54 - v8;
  v59 = sub_1000F24EC(&qword_100ADCD18, &qword_10094CD50);
  __chkstk_darwin(v59);
  v11 = &v54 - v10;
  v68 = sub_1000F24EC(&qword_100ADCD20, &qword_10094CD58);
  v66 = *(v68 - 8);
  __chkstk_darwin(v68);
  v60 = &v54 - v12;
  v62 = sub_1000F24EC(&qword_100ADCD28, &qword_10094CD60);
  __chkstk_darwin(v62);
  v14 = &v54 - v13;
  v67 = sub_1000F24EC(&qword_100ADCD30, &qword_10094CD68);
  v65 = *(v67 - 8);
  __chkstk_darwin(v67);
  v64 = &v54 - v15;
  v16 = sub_1000F24EC(&qword_100ADCD38, &qword_10094CD70);
  v17 = v16 - 8;
  __chkstk_darwin(v16);
  v63 = &v54 - v18;
  v61 = sub_1000F24EC(&qword_100ADCD40, &qword_10094CD78);
  __chkstk_darwin(v61);
  v57 = &v54 - v19;
  v20 = sub_1002D89D0() == 2;
  v21 = v20;
  if (v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = 0x404A000000000000;
  }

  v23 = v1;
  v58 = v1;
  v20 = sub_1002D89D0() == 2;
  v24 = v20;
  if (v20)
  {
    v25 = 0;
  }

  else
  {
    v25 = 0x4032000000000000;
  }

  *v9 = static VerticalAlignment.center.getter();
  *(v9 + 1) = 0x4038000000000000;
  v9[16] = 0;
  v26 = sub_1000F24EC(&qword_100ADCD48, &qword_10094CD80);
  sub_1002DC458(v23, v22, v21, v25, v24, &v9[*(v26 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v9, v11, &qword_100ADCD10, &qword_10094CD48);
  v27 = &v11[*(v59 + 36)];
  v28 = v77;
  *(v27 + 4) = v76;
  *(v27 + 5) = v28;
  *(v27 + 6) = v78;
  v29 = v73;
  *v27 = v72;
  *(v27 + 1) = v29;
  v30 = v75;
  *(v27 + 2) = v74;
  *(v27 + 3) = v30;
  PlainButtonStyle.init()();
  sub_1002E1AF4();
  sub_1002E0A28(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v31 = v60;
  v32 = v69;
  View.buttonStyle<A>(_:)();
  (*(v70 + 8))(v6, v32);
  sub_100004F84(v11, &qword_100ADCD18, &qword_10094CD50);
  KeyPath = swift_getKeyPath();
  v34 = &v14[*(v62 + 36)];
  v35 = *(sub_1000F24EC(&qword_100AE1570, &qword_10095F2A0) + 28);
  v36 = enum case for LayoutDirection.leftToRight(_:);
  v37 = type metadata accessor for LayoutDirection();
  v38 = v34 + v35;
  v39 = v57;
  (*(*(v37 - 8) + 104))(v38, v36, v37);
  *v34 = KeyPath;
  (*(v66 + 32))(v14, v31, v68);
  static Edge.Set.horizontal.getter();
  sub_1002E1BAC();
  v40 = v64;
  View.scenePadding(_:)();
  v41 = v14;
  v42 = v61;
  sub_100004F84(v41, &qword_100ADCD28, &qword_10094CD60);
  v43 = static Color.primary.getter();
  v44 = swift_getKeyPath();
  v45 = v63;
  (*(v65 + 32))(v63, v40, v67);
  v46 = (v45 + *(v17 + 44));
  *v46 = v44;
  v46[1] = v43;
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  LOBYTE(v44) = sub_1005F0FAC();

  v47 = swift_getKeyPath();
  v48 = swift_allocObject();
  v49 = v71;
  *(v48 + 16) = (v44 & 1) == 0;
  sub_100021CEC(v45, v39, &qword_100ADCD38, &qword_10094CD70);
  v50 = (v39 + *(v42 + 36));
  *v50 = v47;
  v50[1] = sub_1002E319C;
  v50[2] = v48;
  v51 = enum case for DynamicTypeSize.xxLarge(_:);
  v52 = type metadata accessor for DynamicTypeSize();
  (*(*(v52 - 8) + 104))(v49, v51, v52);
  sub_1002E0A28(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1002E1CF0();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v49, &qword_100ADB0A0, &qword_10094ABC8);
    return sub_100004F84(v39, &qword_100ADCD40, &qword_10094CD78);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DA5F0@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v1 = sub_1000F24EC(&qword_100ADCB88, &qword_10094CAE0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v29 - v3;
  v5 = sub_1000F24EC(&qword_100ADCB90, &qword_10094CAE8);
  __chkstk_darwin(v5);
  v7 = v29 - v6;
  v8 = sub_1000F24EC(&qword_100ADCB98, &qword_10094CAF0);
  __chkstk_darwin(v8);
  v10 = v29 - v9;
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v11 = *(v30 + 80);

  if (v11 == 1)
  {
    *v10 = static VerticalAlignment.center.getter();
    *(v10 + 1) = 0;
    v10[16] = 1;
    v12 = sub_1000F24EC(&qword_100ADCBF8, &qword_10094CB20);
    sub_1002DDB7C(&v10[*(v12 + 44)]);
    v13 = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v14 = &v10[*(v8 + 36)];
    *v14 = v13;
    *(v14 + 1) = v15;
    *(v14 + 2) = v16;
    *(v14 + 3) = v17;
    *(v14 + 4) = v18;
    v14[40] = 0;
    sub_1000082B4(v10, v7, &qword_100ADCB98, &qword_10094CAF0);
    swift_storeEnumTagMultiPayload();
    sub_1002E11B4();
    v19 = sub_1000F2A18(&qword_100ADCBB8, &qword_10094CB00);
    v20 = sub_1000F2A18(&qword_100ADB0A0, &qword_10094ABC8);
    v21 = sub_1002E126C();
    v22 = sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    v30 = v19;
    v31 = v20;
    v32 = v21;
    v33 = v22;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v10, &qword_100ADCB98, &qword_10094CAF0);
  }

  else
  {
    sub_1002DD79C(v4);
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    v29[0] = sub_1002E11B4();
    v24 = sub_1000F2A18(&qword_100ADCBB8, &qword_10094CB00);
    v25 = v1;
    v26 = sub_1000F2A18(&qword_100ADB0A0, &qword_10094ABC8);
    v27 = sub_1002E126C();
    v28 = sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    v30 = v24;
    v31 = v26;
    v32 = v27;
    v33 = v28;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v2 + 8))(v4, v25);
  }
}

double sub_1002DA9F0()
{
  v0 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v0 - 8);
  v2 = &v10 - v1;
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v3 = v11;
  swift_getKeyPath();
  v11 = v3;
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 106);

  if ((v4 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    v6 = v11;
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v6;
    sub_1003E9628(0, 0, v2, &unk_10094CA70, v9);
  }

  return result;
}

uint64_t sub_1002DABE0@<X0>(BOOL *a1@<X8>)
{
  result = GeometryProxy.size.getter();
  *a1 = v3 > 500.0;
  return result;
}

uint64_t sub_1002DAC20(char *a1, uint64_t a2)
{
  type metadata accessor for RecordingView(0);
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  return State.wrappedValue.setter();
}

BOOL sub_1002DAC94()
{
  LOBYTE(v9) = *(v0 + *(type metadata accessor for RecordingView(0) + 24));
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.wrappedValue.getter();
  if (v8)
  {
    return 1;
  }

  if (!sub_1002D89D0())
  {
    sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
    Bindable.wrappedValue.getter();
    swift_getKeyPath();
    sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v9 + 16))
    {
      v2 = *(v9 + 24);
      ObjectType = swift_getObjectType();
      v4 = *(v2 + 32);
      swift_unknownObjectRetain();
      LODWORD(v2) = v4(ObjectType, v2);
      swift_unknownObjectRelease();

      if (v2 == 2)
      {
        State.wrappedValue.setter();
        return 1;
      }
    }

    else
    {
    }
  }

  if (sub_1002D89D0())
  {
    return 1;
  }

  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v9 + 16))
  {
    v5 = *(v9 + 24);
    v6 = swift_getObjectType();
    v7 = *(v5 + 32);
    swift_unknownObjectRetain();
    LODWORD(v5) = v7(v6, v5);
    swift_unknownObjectRelease();

    return v5 == 2;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1002DAF64@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = type metadata accessor for ControlSize();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ButtonBorderShape();
  v43 = *(v4 - 8);
  v44 = v4;
  __chkstk_darwin(v4);
  v42 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RecordingView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v41 = sub_1000F24EC(&qword_100ADCCB8, &qword_10094CC48);
  v9 = *(v41 - 8);
  __chkstk_darwin(v41);
  v11 = &v39 - v10;
  v12 = sub_1000F24EC(&qword_100ADCCC0, &qword_10094CC50);
  __chkstk_darwin(v12);
  v14 = &v39 - v13;
  v39 = sub_1000F24EC(&qword_100ADCCC8, &qword_10094CC58);
  __chkstk_darwin(v39);
  v16 = &v39 - v15;
  v40 = sub_1000F24EC(&qword_100ADCCD0, &qword_10094CC60);
  __chkstk_darwin(v40);
  v18 = &v39 - v17;
  sub_1001938C4(v1, &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_1002E1A8C(&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for RecordingView);
  v49 = v1;
  sub_1000F24EC(&qword_100ADCCD8, &qword_10094CC68);
  sub_1002E17F4();
  Button.init(action:label:)();
  if (sub_1002D89D0() == 2)
  {
    v21 = v42;
    static ButtonBorderShape.circle.getter();
  }

  else
  {
    v21 = v42;
    static ButtonBorderShape.automatic.getter();
  }

  KeyPath = swift_getKeyPath();
  v23 = &v14[*(v12 + 36)];
  v24 = sub_1000F24EC(&qword_100ADCCF8, &qword_10094CCA8);
  (*(v43 + 32))(v23 + *(v24 + 28), v21, v44);
  *v23 = KeyPath;
  (*(v9 + 32))(v14, v11, v41);
  v25 = sub_1002D89D0();
  v27 = v45;
  v26 = v46;
  v28 = &enum case for ControlSize.extraLarge(_:);
  if (v25 != 2)
  {
    v28 = &enum case for ControlSize.regular(_:);
  }

  v29 = v47;
  (*(v46 + 104))(v45, *v28, v47);
  v30 = swift_getKeyPath();
  v31 = &v16[*(v39 + 36)];
  v32 = sub_1000F24EC(&qword_100ADCBF0, &qword_10094FC30);
  (*(v26 + 32))(v31 + *(v32 + 28), v27, v29);
  *v31 = v30;
  sub_100021CEC(v14, v16, &qword_100ADCCC0, &qword_10094CC50);
  LOBYTE(v31) = sub_1002D89D0() == 2;
  v33 = &v18[*(v40 + 36)];
  sub_1000F24EC(&qword_100ADCD00, &qword_10094CCB0);
  BorderedButtonStyle.init()();
  BorderlessButtonStyle.init()();
  *v33 = v31;
  sub_100021CEC(v16, v18, &qword_100ADCCC8, &qword_10094CC58);
  LOBYTE(v30) = sub_1002DB920();
  v34 = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v30 & 1;
  v36 = v48;
  sub_100021CEC(v18, v48, &qword_100ADCCD0, &qword_10094CC60);
  result = sub_1000F24EC(&qword_100ADCC80, &qword_10094CC10);
  v38 = (v36 + *(result + 36));
  *v38 = v34;
  v38[1] = sub_1002E1A5C;
  v38[2] = v35;
  return result;
}

double sub_1002DB580()
{
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  sub_1005F19B4();

  return result;
}

uint64_t sub_1002DB5D4@<X0>(uint64_t a1@<X8>)
{
  v31 = sub_1000F24EC(&qword_100ADCD08, &qword_10094CCE8);
  __chkstk_darwin(v31);
  v3 = v30 - v2;
  v4 = sub_1000F24EC(&qword_100ADCCF0, &qword_10094CC70);
  __chkstk_darwin(v4);
  v6 = v30 - v5;
  if (sub_1002D89D0() == 2)
  {
    v32 = Image.init(systemName:)();
    LocalizedStringKey.init(stringLiteral:)();
    v7 = Text.init(_:tableName:bundle:comment:)();
    v9 = v8;
    v11 = v10;
    View.accessibilityLabel(_:)();
    sub_1000594D0(v7, v9, v11 & 1);

    sub_1000082B4(v6, v3, &qword_100ADCCF0, &qword_10094CC70);
    swift_storeEnumTagMultiPayload();
    sub_1002E1880();
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v6, &qword_100ADCCF0, &qword_10094CC70);
  }

  else
  {
    LocalizedStringKey.init(stringLiteral:)();
    v13 = Text.init(_:tableName:bundle:comment:)();
    v15 = v14;
    v17 = v16;
    static Font.body.getter();
    v18 = Text.font(_:)();
    v20 = v19;
    v30[1] = a1;
    v30[2] = v4;
    v22 = v21;

    sub_1000594D0(v13, v15, v17 & 1);

    static Font.Weight.semibold.getter();
    v23 = Text.fontWeight(_:)();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    sub_1000594D0(v18, v20, v22 & 1);

    *v3 = v23;
    *(v3 + 1) = v25;
    v3[16] = v27 & 1;
    *(v3 + 3) = v29;
    swift_storeEnumTagMultiPayload();
    sub_1002E1880();
    return _ConditionalContent<>.init(storage:)();
  }
}

BOOL sub_1002DB920()
{
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v7 + 16))
  {
    v0 = *(v7 + 24);
    ObjectType = swift_getObjectType();
    v2 = *(v0 + 32);
    swift_unknownObjectRetain();
    v3 = v2(ObjectType, v0);

    swift_unknownObjectRelease();
    if (v3)
    {
      return v3 == 1;
    }
  }

  else
  {
  }

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v7 + 96);
  v6 = *(v7 + 104);

  if (v6)
  {
    return 0;
  }

  return v5 == 2;
}

uint64_t sub_1002DBAD8(char a1)
{
  if (a1)
  {
    v1 = 0x61776B6361626F67;
  }

  else
  {
    v1 = 0x726177726F666F67;
  }

  v4 = v1;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return v4;
}

uint64_t sub_1002DBB74(uint64_t a1, char a2)
{
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  ++*(v7 + 88);
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  Bindable.wrappedValue.getter();
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(v7 + 64);
  ObjectType = swift_getObjectType();
  if (a2)
  {
    v5 = *(v3 + 144);
  }

  else
  {
    v5 = *(v3 + 152);
  }

  swift_unknownObjectRetain();
  v5(ObjectType, v3, 15.0);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002DBDD4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_1002DBAD8(a1 & 1);
  Image.init(systemName:)();
  static Font.title2.getter();
  swift_getKeyPath();
  static Font.Weight.semibold.getter();
  sub_1000F24EC(&unk_100AE1690, &unk_100952CF0);
  sub_1002E1F9C();
  View.fontWeight(_:)();

  v3 = (a2 + *(sub_1000F24EC(&qword_100ADCDA0, &unk_10094CE20) + 36));
  v4 = *(sub_1000F24EC(&qword_100AD21F8, &qword_10094CBA0) + 28);
  v5 = enum case for Image.Scale.large(_:);
  v6 = type metadata accessor for Image.Scale();
  (*(*(v6 - 8) + 104))(&v3[v4], v5, v6);
  result = swift_getKeyPath();
  *v3 = result;
  return result;
}

double sub_1002DBF28()
{
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v0 = sub_1005F0B78();

  Bindable.wrappedValue.getter();
  if (v0)
  {
    swift_getKeyPath();
    sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v1 = *(v5 + 64);
    ObjectType = swift_getObjectType();
    v3 = *(v1 + 136);
    swift_unknownObjectRetain();
    v3(ObjectType, v1);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1005ED948();
  }

  return result;
}

uint64_t sub_1002DC078@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for SymbolEffectOptions();
  v30 = *(v1 - 8);
  v31 = v1;
  __chkstk_darwin(v1);
  v28 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for ReplaceSymbolEffect();
  v3 = *(v27 - 8);
  __chkstk_darwin(v27);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v27 - v7;
  v9 = sub_1000F24EC(&qword_100ADCDD8, &unk_10094CE40);
  v10 = v9 - 8;
  __chkstk_darwin(v9);
  v12 = (&v27 - v11);
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  sub_1005F0B78();

  v13 = Image.init(systemName:)();
  static Font.largeTitle.getter();
  v14 = Font.bold()();

  KeyPath = swift_getKeyPath();
  v16 = (v12 + *(v10 + 44));
  v17 = *(sub_1000F24EC(&qword_100AD21F8, &qword_10094CBA0) + 28);
  v18 = enum case for Image.Scale.large(_:);
  v19 = type metadata accessor for Image.Scale();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v12 = v13;
  v12[1] = KeyPath;
  v12[2] = v14;
  ReplaceSymbolEffect.init()();
  ReplaceSymbolEffect.downUp.getter();
  v20 = *(v3 + 8);
  v21 = v27;
  v20(v8, v27);
  v22 = v28;
  static SymbolEffectOptions.default.getter();
  v23 = sub_1000F24EC(&qword_100ADCDC0, &qword_10094CE38);
  v24 = v29;
  v25 = (v29 + *(v23 + 36));
  sub_1000F24EC(&qword_100AD21B0, &qword_10094B160);
  sub_1002E0A28(&qword_100ADCDF0, &type metadata accessor for ReplaceSymbolEffect, &protocol conformance descriptor for ReplaceSymbolEffect);
  static ContentTransition.symbolEffect<A>(_:options:)();
  (*(v30 + 8))(v22, v31);
  v20(v5, v21);
  *v25 = swift_getKeyPath();
  return sub_100021CEC(v12, v24, &qword_100ADCDD8, &unk_10094CE40);
}

uint64_t sub_1002DC458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v81 = a5;
  v67 = a4;
  v80 = a3;
  v66 = a2;
  v77 = a1;
  v76 = a6;
  v70 = sub_1000F24EC(&qword_100ADCD80, &qword_10094CE00);
  v71 = *(v70 - 8);
  __chkstk_darwin(v70);
  v68 = &v55 - v7;
  v72 = sub_1000F24EC(&qword_100ADCD88, &qword_10094CE08) - 8;
  __chkstk_darwin(v72);
  v75 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v82 = &v55 - v10;
  v11 = type metadata accessor for RecordingView(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000F24EC(&qword_100ADCD90, &qword_10094CE10);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v55 - v17;
  v83 = sub_1000F24EC(&qword_100ADCD98, &qword_10094CE18) - 8;
  __chkstk_darwin(v83);
  v74 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v73 = &v55 - v21;
  __chkstk_darwin(v22);
  v69 = &v55 - v23;
  __chkstk_darwin(v24);
  v26 = &v55 - v25;
  sub_1001938C4(a1, v14);
  v27 = *(v12 + 80);
  v79 = (v27 + 16) & ~v27;
  v28 = v79 + v13;
  v29 = swift_allocObject();
  v78 = type metadata accessor for RecordingView;
  sub_1002E1A8C(v14, v29 + ((v27 + 16) & ~v27), type metadata accessor for RecordingView);
  *(v29 + v28) = 1;
  v56 = v28;
  v86 = 1;
  v65 = sub_1000F24EC(&qword_100ADCDA0, &unk_10094CE20);
  v64 = sub_1002E1EA8();
  v58 = v18;
  Button.init(action:label:)();
  v57 = &protocol conformance descriptor for Button<A>;
  v62 = sub_10000B58C(&qword_100ADCDB8, &qword_100ADCD90, &qword_10094CE10, &protocol conformance descriptor for Button<A>);
  v63 = v26;
  v59 = v15;
  View.accessibilityIdentifier(_:)();
  v30 = *(v16 + 8);
  v60 = v16 + 8;
  v61 = v30;
  v30(v18, v15);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v31 = &v26[*(v83 + 44)];
  v32 = v88;
  *v31 = v87;
  *(v31 + 1) = v32;
  *(v31 + 2) = v89;
  v33 = v77;
  sub_1001938C4(v77, v14);
  v34 = swift_allocObject();
  sub_1002E1A8C(v14, v34 + v79, v78);
  v85 = v33;
  sub_1000F24EC(&qword_100ADCDC0, &qword_10094CE38);
  sub_1002E2074();
  v35 = v68;
  Button.init(action:label:)();
  sub_10000B58C(&qword_100ADCDE0, &qword_100ADCD80, &qword_10094CE00, v57);
  v36 = v82;
  v37 = v70;
  View.accessibilityIdentifier(_:)();
  (*(v71 + 8))(v35, v37);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v38 = (v36 + *(v72 + 44));
  v39 = v36;
  v40 = v91;
  *v38 = v90;
  v38[1] = v40;
  v38[2] = v92;
  sub_1001938C4(v77, v14);
  v41 = v56;
  v42 = swift_allocObject();
  sub_1002E1A8C(v14, v42 + v79, v78);
  *(v42 + v41) = 0;
  v84[16] = 0;
  v43 = v58;
  Button.init(action:label:)();
  v44 = v69;
  v45 = v59;
  View.accessibilityIdentifier(_:)();
  v61(v43, v45);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v46 = (v44 + *(v83 + 44));
  v47 = v94;
  *v46 = v93;
  v46[1] = v47;
  v46[2] = v95;
  v48 = v63;
  v49 = v73;
  sub_1000082B4(v63, v73, &qword_100ADCD98, &qword_10094CE18);
  v50 = v75;
  sub_1000082B4(v39, v75, &qword_100ADCD88, &qword_10094CE08);
  v51 = v74;
  sub_1000082B4(v44, v74, &qword_100ADCD98, &qword_10094CE18);
  v52 = v76;
  sub_1000082B4(v49, v76, &qword_100ADCD98, &qword_10094CE18);
  v53 = sub_1000F24EC(&qword_100ADCDE8, &qword_10094CE50);
  sub_1000082B4(v50, v52 + *(v53 + 48), &qword_100ADCD88, &qword_10094CE08);
  sub_1000082B4(v51, v52 + *(v53 + 64), &qword_100ADCD98, &qword_10094CE18);
  sub_100004F84(v44, &qword_100ADCD98, &qword_10094CE18);
  sub_100004F84(v82, &qword_100ADCD88, &qword_10094CE08);
  sub_100004F84(v48, &qword_100ADCD98, &qword_10094CE18);
  sub_100004F84(v51, &qword_100ADCD98, &qword_10094CE18);
  sub_100004F84(v50, &qword_100ADCD88, &qword_10094CE08);
  return sub_100004F84(v49, &qword_100ADCD98, &qword_10094CE18);
}

uint64_t sub_1002DCDD8@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v2 = type metadata accessor for IconOnlyLabelStyle();
  v3 = *(v2 - 8);
  v41 = v2;
  v42 = v3;
  __chkstk_darwin(v2);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for TranscriptionButtonToggleStyle(0);
  __chkstk_darwin(v34);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADCC18, &qword_10094CB68);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v32 - v8;
  v10 = sub_1000F24EC(&qword_100ADCC20, &qword_10094CB70);
  v11 = *(v10 - 8);
  v36 = v10;
  v37 = v11;
  __chkstk_darwin(v10);
  v32 = &v32 - v12;
  v13 = sub_1000F24EC(&qword_100ADCC28, &qword_10094CB78);
  v14 = *(v13 - 8);
  v39 = v13;
  v40 = v14;
  __chkstk_darwin(v13);
  v33 = &v32 - v15;
  v16 = (v1 + *(type metadata accessor for RecordingView(0) + 20));
  v17 = *v16;
  v18 = *(v16 + 1);
  LOBYTE(v49) = v17;
  v50 = v18;
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.projectedValue.getter();
  v49 = v45;
  v50 = v46;
  v51 = v47;
  static Animation.spring(response:dampingFraction:blendDuration:)();
  sub_1000F24EC(&qword_100AE9D40, &qword_10094CB80);
  Binding.animation(_:)();

  v44 = v1;
  sub_1000F24EC(&qword_100ADCC30, &qword_10094CB88);
  sub_10000B58C(&qword_100ADCC38, &qword_100ADCC30, &qword_10094CB88, &protocol conformance descriptor for Label<A, B>);
  Toggle.init(isOn:label:)();
  *v6 = sub_1002D89D0();
  v19 = v34;
  ButtonToggleStyle.init()();
  v20 = sub_10000B58C(&qword_100ADCC40, &qword_100ADCC18, &qword_10094CB68, &protocol conformance descriptor for Toggle<A>);
  v21 = sub_1002E0A28(&qword_100ADCC48, type metadata accessor for TranscriptionButtonToggleStyle, &unk_10094D0B0);
  v22 = v32;
  v23 = v19;
  View.toggleStyle<A>(_:)();
  sub_1002E1404(v6);
  (*(v35 + 8))(v9, v7);
  v24 = v38;
  IconOnlyLabelStyle.init()();
  v45 = v7;
  v46 = v23;
  v47 = v20;
  v48 = v21;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1002E0A28(&qword_100ADCC50, &type metadata accessor for IconOnlyLabelStyle, &protocol conformance descriptor for IconOnlyLabelStyle);
  v27 = v33;
  v28 = v36;
  v29 = v41;
  View.labelStyle<A>(_:)();
  (*(v42 + 8))(v24, v29);
  (*(v37 + 8))(v22, v28);
  v45 = v28;
  v46 = v29;
  v47 = OpaqueTypeConformance2;
  v48 = v26;
  swift_getOpaqueTypeConformance2();
  v30 = v39;
  View.accessibilityIdentifier(_:)();
  return (*(v40 + 8))(v27, v30);
}

uint64_t sub_1002DD3C4(uint64_t a1)
{
  sub_1000F24EC(&qword_100ADCC58, &qword_10094CB90);
  sub_1002E1468();
  return Label.init(title:icon:)();
}

uint64_t sub_1002DD45C@<X0>(uint64_t a1@<X8>)
{
  LocalizedStringKey.init(stringLiteral:)();
  result = Text.init(_:tableName:bundle:comment:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

int8x16_t sub_1002DD4E4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Image.Scale();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1000F24EC(&qword_100ADCC70, &qword_10094CB98);
  v9 = v8 - 8;
  __chkstk_darwin(v8);
  v11 = &v26[-v10];
  v12 = (a1 + *(type metadata accessor for RecordingView(0) + 20));
  v13 = *v12;
  v14 = *(v12 + 1);
  v26[16] = v13;
  v27 = v14;
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.wrappedValue.getter();
  v15 = Image.init(systemName:)();
  v16 = sub_1002D89D0();
  v17 = &enum case for Image.Scale.medium(_:);
  if (v16 != 2)
  {
    v17 = &enum case for Image.Scale.large(_:);
  }

  (*(v5 + 104))(v7, *v17, v4);
  KeyPath = swift_getKeyPath();
  v19 = (v11 + *(v9 + 44));
  v20 = sub_1000F24EC(&qword_100AD21F8, &qword_10094CBA0);
  (*(v5 + 32))(v19 + *(v20 + 28), v7, v4);
  *v19 = KeyPath;
  *v11 = v15;
  v21 = sub_1002D89D0() == 2;
  LOBYTE(KeyPath) = static Edge.Set.all.getter();
  sub_100021CEC(v11, a2, &qword_100ADCC70, &qword_10094CB98);
  v22 = a2 + *(sub_1000F24EC(&qword_100ADCC58, &qword_10094CB90) + 36);
  *v22 = KeyPath;
  v23 = vdup_n_s32(v21);
  v24.i64[0] = v23.u32[0];
  v24.i64[1] = v23.u32[1];
  result = vandq_s8(vcgezq_s64(vshlq_n_s64(v24, 0x3FuLL)), xmmword_10094C760);
  *(v22 + 24) = result;
  *(v22 + 8) = result;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_1002DD79C@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v29[0] = sub_1000F24EC(&qword_100ADB0A0, &qword_10094ABC8);
  __chkstk_darwin(v29[0]);
  v2 = v29 - v1;
  v3 = type metadata accessor for ControlSize();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F24EC(&qword_100ADCBD0, &qword_10094CB08);
  v8 = v7 - 8;
  __chkstk_darwin(v7);
  v10 = v29 - v9;
  v11 = sub_1000F24EC(&qword_100ADCBB8, &qword_10094CB00);
  __chkstk_darwin(v11);
  v13 = v29 - v12;
  *v10 = static VerticalAlignment.center.getter();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v14 = sub_1000F24EC(&qword_100ADCC78, &qword_10094CBD8);
  sub_1002DDD78(&v10[*(v14 + 44)]);
  v15 = static Edge.Set.horizontal.getter();
  EdgeInsets.init(_all:)();
  v16 = &v10[*(v8 + 44)];
  *v16 = v15;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  v21 = sub_1002D89D0();
  v22 = &enum case for ControlSize.extraLarge(_:);
  if (v21 != 2)
  {
    v22 = &enum case for ControlSize.regular(_:);
  }

  (*(v4 + 104))(v6, *v22, v3);
  KeyPath = swift_getKeyPath();
  v24 = &v13[*(v11 + 36)];
  v25 = sub_1000F24EC(&qword_100ADCBF0, &qword_10094FC30);
  (*(v4 + 32))(v24 + *(v25 + 28), v6, v3);
  *v24 = KeyPath;
  sub_100021CEC(v10, v13, &qword_100ADCBD0, &qword_10094CB08);
  v26 = enum case for DynamicTypeSize.xxLarge(_:);
  v27 = type metadata accessor for DynamicTypeSize();
  (*(*(v27 - 8) + 104))(v2, v26, v27);
  sub_1002E0A28(&qword_100ADB0C8, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_1002E126C();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100004F84(v2, &qword_100ADB0A0, &qword_10094ABC8);
    return sub_100004F84(v13, &qword_100ADCBB8, &qword_10094CB00);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1002DDB7C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100ADCC00, &qword_10094CB28);
  __chkstk_darwin(v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_1000F24EC(&qword_100ADCC08, &qword_10094CB30);
  v6 = v5 - 8;
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v18 - v10;
  __chkstk_darwin(v12);
  v14 = &v18 - v13;
  sub_1002DCDD8(v4);
  if (sub_1002D8B28())
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  sub_100021CEC(v4, v11, &qword_100ADCC00, &qword_10094CB28);
  *&v11[*(v6 + 44)] = v15;
  sub_100021CEC(v11, v14, &qword_100ADCC08, &qword_10094CB30);
  sub_1000082B4(v14, v8, &qword_100ADCC08, &qword_10094CB30);
  sub_1000082B4(v8, a1, &qword_100ADCC08, &qword_10094CB30);
  v16 = a1 + *(sub_1000F24EC(&qword_100ADCC10, &qword_10094CB38) + 48);
  *v16 = 0;
  *(v16 + 8) = 1;
  sub_100004F84(v14, &qword_100ADCC08, &qword_10094CB30);
  return sub_100004F84(v8, &qword_100ADCC08, &qword_10094CB30);
}

uint64_t sub_1002DDD78@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_1000F24EC(&qword_100ADCC80, &qword_10094CC10);
  __chkstk_darwin(v1 - 8);
  v70 = &v68 - v2;
  v72 = sub_1000F24EC(&qword_100ADCC88, &qword_10094CC18);
  __chkstk_darwin(v72);
  v73 = &v68 - v3;
  v71 = sub_1000F24EC(&qword_100ADCC90, &qword_10094CC20);
  __chkstk_darwin(v71);
  v78 = &v68 - v4;
  v77 = sub_1000F24EC(&qword_100ADCC98, &qword_10094CC28);
  __chkstk_darwin(v77);
  v81 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v75 = &v68 - v7;
  __chkstk_darwin(v8);
  v79 = &v68 - v9;
  v10 = sub_1000F24EC(&qword_100ADCCA0, &qword_10094CC30);
  __chkstk_darwin(v10 - 8);
  v80 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v68 - v13;
  v15 = sub_1000F24EC(&qword_100ADCC00, &qword_10094CB28);
  __chkstk_darwin(v15 - 8);
  v17 = &v68 - v16;
  v18 = sub_1000F24EC(&qword_100ADCC08, &qword_10094CB30);
  v19 = v18 - 8;
  __chkstk_darwin(v18);
  v21 = &v68 - v20;
  v22 = sub_1000F24EC(&qword_100ADCCA8, &qword_10094CC38);
  v23 = v22 - 8;
  __chkstk_darwin(v22);
  v76 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v68 - v26;
  __chkstk_darwin(v28);
  v30 = &v68 - v29;
  sub_1002DCDD8(v17);
  v31 = 1.0;
  if (sub_1002D8B28())
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 0.0;
  }

  sub_100021CEC(v17, v21, &qword_100ADCC00, &qword_10094CB28);
  *&v21[*(v19 + 44)] = v32;
  v33 = static Animation.default.getter();
  v34 = sub_1002D8B28();
  sub_100021CEC(v21, v27, &qword_100ADCC08, &qword_10094CB30);
  v35 = &v27[*(v23 + 44)];
  *v35 = v33;
  v35[8] = v34;
  v36 = v27;
  v37 = v70;
  v74 = v30;
  sub_100021CEC(v36, v30, &qword_100ADCCA8, &qword_10094CC38);
  v69 = v14;
  sub_1002DE638(v14);
  sub_1002DAF64(v37);
  if (sub_1002D89D0())
  {
    v38 = v78;
    goto LABEL_11;
  }

  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v39 = v83;
  swift_getKeyPath();
  v83 = v39;
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(v39 + 16))
  {

    v38 = v78;
    goto LABEL_10;
  }

  v40 = *(v39 + 24);
  v41 = v37;
  ObjectType = swift_getObjectType();
  v43 = *(v40 + 32);
  swift_unknownObjectRetain();
  v44 = ObjectType;
  v37 = v41;
  LODWORD(v40) = v43(v44, v40);
  swift_unknownObjectRelease();

  v38 = v78;
  if (v40 != 2)
  {
LABEL_10:
    v31 = 0.0;
  }

LABEL_11:
  v45 = v73;
  sub_100021CEC(v37, v73, &qword_100ADCC80, &qword_10094CC10);
  *(v45 + *(v72 + 36)) = v31;
  v46 = static Animation.default.getter();
  v47 = sub_1002D89D0();
  sub_100021CEC(v45, v38, &qword_100ADCC88, &qword_10094CC18);
  v48 = v38 + *(v71 + 36);
  *v48 = v46;
  *(v48 + 8) = v47;
  v49 = static Animation.default.getter();
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v50 = v83;
  swift_getKeyPath();
  v83 = v50;
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v50 + 16))
  {
    v51 = *(v50 + 24);
    v52 = swift_getObjectType();
    v53 = *(v51 + 32);
    swift_unknownObjectRetain();
    LODWORD(v51) = v53(v52, v51);
    swift_unknownObjectRelease();

    v54 = v51 == 2;
  }

  else
  {

    v54 = 0;
  }

  v55 = v75;
  sub_100021CEC(v38, v75, &qword_100ADCC90, &qword_10094CC20);
  v56 = v55 + *(v77 + 36);
  *v56 = v49;
  *(v56 + 8) = v54;
  v57 = v79;
  sub_100021CEC(v55, v79, &qword_100ADCC98, &qword_10094CC28);
  v58 = v74;
  v59 = v76;
  sub_1000082B4(v74, v76, &qword_100ADCCA8, &qword_10094CC38);
  v60 = v69;
  v61 = v80;
  sub_1000082B4(v69, v80, &qword_100ADCCA0, &qword_10094CC30);
  v62 = v81;
  sub_1000082B4(v57, v81, &qword_100ADCC98, &qword_10094CC28);
  v63 = v82;
  sub_1000082B4(v59, v82, &qword_100ADCCA8, &qword_10094CC38);
  v64 = sub_1000F24EC(&qword_100ADCCB0, &qword_10094CC40);
  v65 = v63 + v64[12];
  *v65 = 0;
  *(v65 + 8) = 1;
  sub_1000082B4(v61, v63 + v64[16], &qword_100ADCCA0, &qword_10094CC30);
  v66 = v63 + v64[20];
  *v66 = 0;
  *(v66 + 8) = 1;
  sub_1000082B4(v62, v63 + v64[24], &qword_100ADCC98, &qword_10094CC28);
  sub_100004F84(v57, &qword_100ADCC98, &qword_10094CC28);
  sub_100004F84(v60, &qword_100ADCCA0, &qword_10094CC30);
  sub_100004F84(v58, &qword_100ADCCA8, &qword_10094CC38);
  sub_100004F84(v62, &qword_100ADCC98, &qword_10094CC28);
  sub_100004F84(v61, &qword_100ADCCA0, &qword_10094CC30);
  return sub_100004F84(v59, &qword_100ADCCA8, &qword_10094CC38);
}

uint64_t sub_1002DE638@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for RecordingView(0);
  v45 = *(v4 - 8);
  v5 = *(v45 + 64);
  __chkstk_darwin(v4 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecordingButton(0);
  __chkstk_darwin(v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v11 = v46;
  swift_getKeyPath();
  v46 = v11;
  v44 = sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 16))
  {
    v43 = v10;
    v12 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    v41 = v5;
    v42 = v9;
    v14 = v7;
    v15 = a1;
    v16 = ObjectType;
    v17 = *(v12 + 32);
    swift_unknownObjectRetain();
    v18 = v16;
    a1 = v15;
    v7 = v14;
    v19 = v17(v18, v12);
    v2 = v1;
    v9 = v42;
    v20 = v19;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0;
  }

  sub_1001938C4(v2, v6);
  v21 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v22 = swift_allocObject();
  sub_1002E1A8C(v6, v22 + v21, type metadata accessor for RecordingView);
  KeyPath = swift_getKeyPath();
  v24 = swift_getKeyPath();
  v25 = swift_getKeyPath();
  AccessibilityFocusState.init<>()();
  *v9 = v20;
  *(v9 + 1) = KeyPath;
  v9[16] = 0;
  *(v9 + 3) = v24;
  v9[32] = 0;
  *(v9 + 5) = v25;
  v9[48] = 0;
  v26 = &v9[*(v7 + 36)];
  *v26 = sub_1002E1A74;
  v26[1] = v22;
  Bindable.wrappedValue.getter();
  LOBYTE(v22) = sub_1005F0B78();

  if ((v22 & 1) == 0)
  {
    Bindable.wrappedValue.getter();
    v28 = v46;
    swift_getKeyPath();
    v46 = v28;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v28 + 16))
    {
      v29 = *(v28 + 24);
      v30 = swift_getObjectType();
      v31 = *(v29 + 32);
      swift_unknownObjectRetain();
      v32 = v31(v30, v29);
      swift_unknownObjectRelease();

      if (v32 == 2)
      {
        Bindable.wrappedValue.getter();
        v33 = v46;
        swift_getKeyPath();
        v46 = v33;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v34 = *(v33 + 64);
        v35 = swift_getObjectType();
        v36 = *(v34 + 48);
        swift_unknownObjectRetain();
        LOBYTE(v34) = v36(v35, v34);

        swift_unknownObjectRelease();
        v27 = v34 ^ 1;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v27 = 0;
    goto LABEL_11;
  }

  v27 = 1;
LABEL_11:
  v37 = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v27 & 1;
  sub_1002E1A8C(v9, a1, type metadata accessor for RecordingButton);
  result = sub_1000F24EC(&qword_100ADCCA0, &qword_10094CC30);
  v40 = (a1 + *(result + 36));
  *v40 = v37;
  v40[1] = sub_1002E319C;
  v40[2] = v38;
  return result;
}

double sub_1002DEB30()
{
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v0 = sub_1002DAC94();
  sub_1005F1308(v0);

  return result;
}

uint64_t sub_1002DEB90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v90 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v87 = *(v90 - 8);
  __chkstk_darwin(v90);
  v84 = v74 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v75 - 8);
  __chkstk_darwin(v75);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v9 = v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v78 = *(v10 - 8);
  v79 = v10;
  __chkstk_darwin(v10);
  v12 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for ScrollableWaveformView(0);
  __chkstk_darwin(v97);
  v14 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1000F24EC(&qword_100ADCDF8, &qword_10094CEE0);
  __chkstk_darwin(v77);
  v82 = v74 - v15;
  v85 = sub_1000F24EC(&qword_100ADCE00, &qword_10094CEE8);
  __chkstk_darwin(v85);
  v89 = v74 - v16;
  v88 = sub_1000F24EC(&qword_100ADCE08, &qword_10094CEF0);
  __chkstk_darwin(v88);
  v92 = v74 - v17;
  v83 = sub_1000F24EC(&qword_100ADCE10, &qword_10094CEF8);
  __chkstk_darwin(v83);
  v94 = v74 - v18;
  v91 = sub_1000F24EC(&qword_100ADCE18, &qword_10094CF00);
  __chkstk_darwin(v91);
  v95 = v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v93 = v74 - v21;
  __chkstk_darwin(v22);
  v98 = v74 - v23;
  if (sub_1002D89D0())
  {
    v24 = (a1 + *(type metadata accessor for RecordingView(0) + 20));
    v25 = *v24;
    v26 = *(v24 + 1);
    LOBYTE(v110) = v25;
    *(&v110 + 1) = v26;
    sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
    State.wrappedValue.getter();
    v27 = v107;
  }

  else
  {
    v27 = 0;
  }

  v28 = sub_1002D89D0();
  v86 = v27;
  if (v28)
  {
    v76 = 0;
  }

  else
  {
    sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
    Bindable.wrappedValue.getter();
    if (*(v110 + 80))
    {
      v29 = 0;
    }

    else
    {
      sub_1005EFF5C();
      static Duration.seconds(_:)();
      static Duration.zero.getter();
      v29 = static Duration.== infix(_:_:)();
    }

    v76 = v29;
  }

  v74[0] = sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v30 = v110;
  *(v14 + 3) = type metadata accessor for RecordingViewModel(0);
  *(v14 + 4) = sub_1002E0A28(&qword_100ADCE20, type metadata accessor for RecordingViewModel, &unk_10095FA44);
  *v14 = v30;
  KeyPath = swift_getKeyPath();
  v32 = swift_getKeyPath();
  LOBYTE(v107) = 0;
  State.init(wrappedValue:)();
  v33 = *(&v110 + 1);
  v14[40] = v110;
  *(v14 + 6) = v33;
  *&v107 = 0;
  State.init(wrappedValue:)();
  *(v14 + 56) = v110;
  *(v14 + 9) = KeyPath;
  v14[80] = 0;
  *(v14 + 11) = v32;
  v14[96] = 0;
  v74[1] = *(v97 + 36);
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  v34 = v75;
  (*(v4 + 104))(v6, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v75);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.show(length:rounded:increment:)();
  (*(v4 + 8))(v6, v34);
  sub_1000F24EC(&qword_100ADCE28, &qword_10094CF30);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_100942000;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_1002E42F8(v35);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v36 = v84;
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v87 + 8))(v36, v90);
  (*(v80 + 8))(v9, v81);
  (*(v78 + 8))(v12, v79);
  *&v14[*(v97 + 40)] = 0x3FD0000000000000;
  sub_1002D89D0();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v37 = v82;
  sub_1002E1A8C(v14, v82, type metadata accessor for ScrollableWaveformView);
  v38 = (v37 + *(v77 + 36));
  v39 = v108;
  *v38 = v107;
  v38[1] = v39;
  v38[2] = v109;
  sub_1002D89D0();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v40 = v89;
  sub_100021CEC(v37, v89, &qword_100ADCDF8, &qword_10094CEE0);
  v41 = v86;
  v42 = v76;
  v43 = (v40 + *(v85 + 36));
  v44 = v115;
  v43[4] = v114;
  v43[5] = v44;
  v43[6] = v116;
  v45 = v111;
  *v43 = v110;
  v43[1] = v45;
  if ((v42 | v41))
  {
    v46 = 0.0;
  }

  else
  {
    v46 = 1.0;
  }

  v47 = v113;
  v43[2] = v112;
  v43[3] = v47;
  v48 = v92;
  sub_100021CEC(v40, v92, &qword_100ADCE00, &qword_10094CEE8);
  *(v48 + *(v88 + 36)) = v46;
  v49 = swift_getKeyPath();
  v50 = v94;
  v51 = (v94 + *(v83 + 36));
  v52 = *(sub_1000F24EC(&qword_100AE1570, &qword_10095F2A0) + 28);
  v53 = enum case for LayoutDirection.leftToRight(_:);
  v54 = type metadata accessor for LayoutDirection();
  (*(*(v54 - 8) + 104))(v51 + v52, v53, v54);
  *v51 = v49;
  sub_100021CEC(v48, v50, &qword_100ADCE08, &qword_10094CEF0);
  v55 = swift_getKeyPath();
  v56 = v93;
  v57 = &v93[*(v91 + 36)];
  v58 = *(sub_1000F24EC(&qword_100AD20B0, &qword_10096FD70) + 28);
  v59 = type metadata accessor for Material();
  (*(*(v59 - 8) + 56))(v57 + v58, 1, 1, v59);
  *v57 = v55;
  sub_100021CEC(v50, v56, &qword_100ADCE10, &qword_10094CEF8);
  sub_100021CEC(v56, v98, &qword_100ADCE18, &qword_10094CF00);
  if (v42)
  {
    sub_1002E2450();
    sub_1002E24A4();
    v99 = 0u;
    memset(v100, 0, 25);
  }

  else
  {
    if (!v41)
    {
      v97 = 0;
      v94 = 0;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = -1;
      goto LABEL_19;
    }

    Bindable.wrappedValue.getter();
    v60 = v101;
    LOBYTE(v99) = 0;
    State.init(wrappedValue:)();
    v61 = v101;
    v62 = v102;
    LOBYTE(v99) = 1;
    State.init(wrappedValue:)();
    *&v99 = v61;
    *(&v99 + 1) = v62;
    v100[0] = v101;
    v100[1] = v102;
    v100[2] = v60;
    LOBYTE(v100[3]) = 1;
    sub_1002E2450();
    sub_1002E24A4();
  }

  _ConditionalContent<>.init(storage:)();
  v63 = v103;
  v64 = v104;
  v65 = v105;
  v66 = v106;
  v97 = v101;
  v94 = v102;
  sub_1002E2398(v101, v102, v103, v104, v105, v106);
LABEL_19:
  v67 = v98;
  v68 = v95;
  sub_1000082B4(v98, v95, &qword_100ADCE18, &qword_10094CF00);
  v69 = v96;
  sub_1000082B4(v68, v96, &qword_100ADCE18, &qword_10094CF00);
  v70 = v69 + *(sub_1000F24EC(&qword_100ADCE30, &unk_10094CF70) + 48);
  v71 = v97;
  v72 = v94;
  sub_1002E2380(v97, v94, v63, v64, v65, v66);
  sub_1002E23E8(v71, v72, v63, v64, v65, v66);
  *v70 = v71;
  *(v70 + 8) = v72;
  *(v70 + 16) = v63;
  *(v70 + 24) = v64;
  *(v70 + 32) = v65;
  *(v70 + 40) = v66;
  sub_100004F84(v67, &qword_100ADCE18, &qword_10094CF00);
  sub_1002E23E8(v71, v72, v63, v64, v65, v66);
  return sub_100004F84(v68, &qword_100ADCE18, &qword_10094CF00);
}

uint64_t sub_1002DF8C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a1;
  v56 = a3;
  swift_getWitnessTable();
  v5 = type metadata accessor for _ViewModifier_Content();
  v6 = a2[3];
  WitnessTable = swift_getWitnessTable();
  v8 = a2[5];
  v65 = v5;
  v66 = v6;
  v57 = v6;
  v67 = WitnessTable;
  v68 = v8;
  v62 = v8;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v50 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v48 - v13;
  v15 = a2[2];
  v16 = a2[4];
  v65 = v5;
  v66 = v15;
  v60 = v16;
  v61 = v15;
  v58 = WitnessTable;
  v67 = WitnessTable;
  v68 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v49 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v48 - v21;
  v54 = OpaqueTypeMetadata2;
  v23 = type metadata accessor for _ConditionalContent();
  v52 = *(v23 - 8);
  v53 = v23;
  __chkstk_darwin(v23);
  v59 = &v48 - v24;
  LODWORD(OpaqueTypeMetadata2) = *v3;
  v55 = v5;
  v25 = swift_checkMetadataState();
  if (OpaqueTypeMetadata2 == 1)
  {
    v27 = v60;
    v26 = v61;
    v28 = v58;
    View.buttonStyle<A>(_:)();
    v65 = v25;
    v66 = v26;
    v67 = v28;
    v68 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_10053057C();
    v30 = *(v49 + 8);
    v30(v19, v17);
    sub_10053057C();
    v31 = v57;
    v65 = v25;
    v66 = v57;
    v67 = v28;
    v68 = v62;
    v32 = swift_getOpaqueTypeConformance2();
    sub_10047EEF4(v19, v17, v54, OpaqueTypeConformance2, v32);
    v30(v19, v17);
    v30(v22, v17);
  }

  else
  {
    v33 = v57;
    v34 = v58;
    v35 = v62;
    View.buttonStyle<A>(_:)();
    v65 = v25;
    v66 = v33;
    v67 = v34;
    v68 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = v54;
    sub_10053057C();
    v38 = *(v50 + 8);
    v38(v11, v37);
    sub_10053057C();
    v65 = v25;
    v66 = v61;
    v67 = v34;
    v68 = v60;
    v39 = swift_getOpaqueTypeConformance2();
    sub_10047EFEC(v11, v17, v37, v39, v36);
    v40 = v11;
    v31 = v57;
    v38(v40, v37);
    v38(v14, v37);
  }

  v41 = v55;
  v65 = v55;
  v66 = v61;
  v42 = v58;
  v67 = v58;
  v68 = v60;
  v43 = swift_getOpaqueTypeConformance2();
  v65 = v41;
  v66 = v31;
  v67 = v42;
  v68 = v62;
  v44 = swift_getOpaqueTypeConformance2();
  v63 = v43;
  v64 = v44;
  v45 = v53;
  swift_getWitnessTable();
  v46 = v59;
  sub_10053057C();
  return (*(v52 + 8))(v46, v45);
}

uint64_t sub_1002DFE78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a1;
  v40 = a2;
  v39 = type metadata accessor for BorderedProminentButtonStyle();
  v32 = *(v39 - 8);
  __chkstk_darwin(v39);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1000F24EC(&qword_100ADCFA0, &qword_10094D158);
  v31 = *(v37 - 8);
  __chkstk_darwin(v37);
  v6 = &v31 - v5;
  v38 = sub_1000F24EC(&qword_100ADCFA8, &qword_10094D160);
  v7 = *(v38 - 8);
  __chkstk_darwin(v38);
  v9 = &v31 - v8;
  v34 = sub_1000F24EC(&qword_100ADCFB0, &qword_10094D168);
  __chkstk_darwin(v34);
  v36 = &v31 - v10;
  v11 = type metadata accessor for ToggleStyleConfiguration();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v35 = sub_1000F24EC(&qword_100ADCFB8, &qword_10094D170);
  v14 = __chkstk_darwin(v35);
  v16 = &v31 - v15;
  if (*v2 == 2)
  {
    v17 = v33;
    (*(v12 + 16))(&v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v11, v14);
    v18 = (*(v12 + 80) + 16) & ~*(v12 + 80);
    v19 = swift_allocObject();
    v20 = (*(v12 + 32))(v19 + v18, &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
    __chkstk_darwin(v20);
    *(&v31 - 2) = v17;
    type metadata accessor for ToggleStyleConfiguration.Label();
    sub_1002E0A28(&qword_100AD2548, &type metadata accessor for ToggleStyleConfiguration.Label, &protocol conformance descriptor for ToggleStyleConfiguration.Label);
    Button.init(action:label:)();
    v21 = &v16[*(sub_1000F24EC(&qword_100ADCFD8, &qword_10094D178) + 36)];
    sub_1000F24EC(&qword_100ADCCF8, &qword_10094CCA8);
    static ButtonBorderShape.circle.getter();
    *v21 = swift_getKeyPath();
    LOBYTE(v21) = ToggleStyleConfiguration.isOn.getter();
    v22 = &v16[*(v35 + 36)];
    sub_1000F24EC(&qword_100ADD000, &qword_10094D188);
    BorderedProminentButtonStyle.init()();
    BorderedButtonStyle.init()();
    *v22 = v21 & 1;
    sub_1000082B4(v16, v36, &qword_100ADCFB8, &qword_10094D170);
    swift_storeEnumTagMultiPayload();
    sub_1002E2EB8();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v24 = sub_1002E0A28(&qword_100ADCFC0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    v41 = v37;
    v42 = v39;
    v43 = OpaqueTypeConformance2;
    v44 = v24;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return sub_100004F84(v16, &qword_100ADCFB8, &qword_10094D170);
  }

  else
  {
    type metadata accessor for TranscriptionButtonToggleStyle(0);
    ButtonToggleStyle.makeBody(configuration:)();
    BorderedProminentButtonStyle.init()();
    v26 = swift_getOpaqueTypeConformance2();
    v27 = sub_1002E0A28(&qword_100ADCFC0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    v28 = v37;
    v29 = v39;
    View.buttonStyle<A>(_:)();
    (*(v32 + 8))(v4, v29);
    (*(v31 + 8))(v6, v28);
    v30 = v38;
    (*(v7 + 16))(v36, v9, v38);
    swift_storeEnumTagMultiPayload();
    sub_1002E2EB8();
    v41 = v28;
    v42 = v29;
    v43 = v26;
    v44 = v27;
    swift_getOpaqueTypeConformance2();
    _ConditionalContent<>.init(storage:)();
    return (*(v7 + 8))(v9, v30);
  }
}

uint64_t sub_1002E0588()
{

  sub_100004F84(v0 + 32, &unk_100AE9D30, &qword_1009417E0);
  sub_100004F84(v0 + OBJC_IVAR____TtCFFZFV7Journal117_s7Journal0024RecordingViewswift_ynAHffMX352_0_33_104DA14A1B51E0439F4AC926246DCE3ALl7PreviewfMf_15PreviewRegistryfMu_11makePreviewFzT_V21DeveloperToolsSupport7PreviewU_FY_T_P7SwiftUI4View_U_FT_PS4__L_22MockPlaybackController_currentURL, &unk_100AD6DD0, &qword_1009437C0);

  return swift_deallocClassInstance();
}

void sub_1002E0644(uint64_t a1)
{
  sub_10000A288(319, &qword_100AD2EE8, &type metadata accessor for URL, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1002E078C(uint64_t a1)
{
  sub_10000A288(319, &qword_100ADCA28, type metadata accessor for RecordingViewModel, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    sub_1002E0848();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1002E0848()
{
  if (!qword_100ADCA30)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADCA30);
    }
  }
}

uint64_t sub_1002E09A4(uint64_t a1)
{
  *(a1 + 8) = sub_1002E0A28(&qword_100ADCA70, type metadata accessor for $s7Journal0024RecordingViewswift_ynAHffMX352_0_33_104DA14A1B51E0439F4AC926246DCE3ALl7PreviewfMf_15PreviewRegistryfMu_.MockPlaybackController, &unk_10094C8F4);
  result = sub_1002E0A28(&qword_100ADCA78, type metadata accessor for $s7Journal0024RecordingViewswift_ynAHffMX352_0_33_104DA14A1B51E0439F4AC926246DCE3ALl7PreviewfMf_15PreviewRegistryfMu_.MockPlaybackController, &unk_10094C910);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1002E0A28(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1002E0A88(char *a1)
{
  v3 = *(type metadata accessor for RecordingView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002DAC20(a1, v4);
}

unint64_t sub_1002E0AF8()
{
  result = qword_100ADCAB0;
  if (!qword_100ADCAB0)
  {
    sub_1000F2A18(&qword_100ADCA88, &qword_10094C958);
    sub_1002E0B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCAB0);
  }

  return result;
}

unint64_t sub_1002E0B84()
{
  result = qword_100ADCAB8;
  if (!qword_100ADCAB8)
  {
    sub_1000F2A18(&qword_100ADCA80, &qword_10094C950);
    sub_1002E0C3C();
    sub_10000B58C(&qword_100ADCAD8, &qword_100ADCAE0, &qword_10094C988, &protocol conformance descriptor for _GeometryActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCAB8);
  }

  return result;
}

unint64_t sub_1002E0C3C()
{
  result = qword_100ADCAC0;
  if (!qword_100ADCAC0)
  {
    sub_1000F2A18(&qword_100ADCAA8, &qword_10094C978);
    sub_10000B58C(&qword_100ADCAC8, &qword_100ADCAD0, &qword_10094C980, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCAC0);
  }

  return result;
}

unint64_t sub_1002E0CF4()
{
  result = qword_100ADCAF0;
  if (!qword_100ADCAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCAF0);
  }

  return result;
}

unint64_t sub_1002E0D48()
{
  result = qword_100ADCAF8;
  if (!qword_100ADCAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCAF8);
  }

  return result;
}

void sub_1002E0D9C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 81);
}

void sub_1002E0E6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v4;
}

void sub_1002E0F50(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1002E0A28(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 106);
}

uint64_t sub_1002E1020(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100032ECC;

  return sub_1005F41C8();
}

unint64_t sub_1002E10D4()
{
  result = qword_100ADCB48;
  if (!qword_100ADCB48)
  {
    sub_1000F2A18(&qword_100ADCB38, &qword_10094CAB0);
    sub_1002E1160();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCB48);
  }

  return result;
}

unint64_t sub_1002E1160()
{
  result = qword_100ADCB50;
  if (!qword_100ADCB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCB50);
  }

  return result;
}

unint64_t sub_1002E11B4()
{
  result = qword_100ADCBA0;
  if (!qword_100ADCBA0)
  {
    sub_1000F2A18(&qword_100ADCB98, &qword_10094CAF0);
    sub_10000B58C(&qword_100ADCBA8, &qword_100ADCBB0, &qword_10094CAF8, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCBA0);
  }

  return result;
}

unint64_t sub_1002E126C()
{
  result = qword_100ADCBC0;
  if (!qword_100ADCBC0)
  {
    sub_1000F2A18(&qword_100ADCBB8, &qword_10094CB00);
    sub_1002E1324();
    sub_10000B58C(&qword_100ADCBE8, &qword_100ADCBF0, &qword_10094FC30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCBC0);
  }

  return result;
}

unint64_t sub_1002E1324()
{
  result = qword_100ADCBC8;
  if (!qword_100ADCBC8)
  {
    sub_1000F2A18(&qword_100ADCBD0, &qword_10094CB08);
    sub_10000B58C(&qword_100ADCBD8, &qword_100ADCBE0, &unk_10094CB10, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCBC8);
  }

  return result;
}

uint64_t sub_1002E1404(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptionButtonToggleStyle(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002E1468()
{
  result = qword_100ADCC60;
  if (!qword_100ADCC60)
  {
    sub_1000F2A18(&qword_100ADCC58, &qword_10094CB90);
    sub_1002E14F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCC60);
  }

  return result;
}

unint64_t sub_1002E14F4()
{
  result = qword_100ADCC68;
  if (!qword_100ADCC68)
  {
    sub_1000F2A18(&qword_100ADCC70, &qword_10094CB98);
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8, &qword_10094CBA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCC68);
  }

  return result;
}

uint64_t sub_1002E15FC@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.font.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002E16B8@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002E1778(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecordingView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1002E17F4()
{
  result = qword_100ADCCE0;
  if (!qword_100ADCCE0)
  {
    sub_1000F2A18(&qword_100ADCCD8, &qword_10094CC68);
    sub_1002E1880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCCE0);
  }

  return result;
}

unint64_t sub_1002E1880()
{
  result = qword_100ADCCE8;
  if (!qword_100ADCCE8)
  {
    sub_1000F2A18(&qword_100ADCCF0, &qword_10094CC70);
    sub_1002E0A28(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCCE8);
  }

  return result;
}

uint64_t sub_1002E198C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = __chkstk_darwin(v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1002E1A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002E1AF4()
{
  result = qword_100ADCD50;
  if (!qword_100ADCD50)
  {
    sub_1000F2A18(&qword_100ADCD18, &qword_10094CD50);
    sub_10000B58C(&qword_100ADCD58, &qword_100ADCD10, &qword_10094CD48, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCD50);
  }

  return result;
}

unint64_t sub_1002E1BAC()
{
  result = qword_100ADCD60;
  if (!qword_100ADCD60)
  {
    sub_1000F2A18(&qword_100ADCD28, &qword_10094CD60);
    sub_1000F2A18(&qword_100ADCD18, &qword_10094CD50);
    type metadata accessor for PlainButtonStyle();
    sub_1002E1AF4();
    sub_1002E0A28(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADCD68, &qword_100AE1570, &qword_10095F2A0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCD60);
  }

  return result;
}

unint64_t sub_1002E1CF0()
{
  result = qword_100ADCD70;
  if (!qword_100ADCD70)
  {
    sub_1000F2A18(&qword_100ADCD40, &qword_10094CD78);
    sub_1002E1DA8();
    sub_10000B58C(&qword_100AD2348, &qword_100AD2350, &qword_1009406A0, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCD70);
  }

  return result;
}

unint64_t sub_1002E1DA8()
{
  result = qword_100ADCD78;
  if (!qword_100ADCD78)
  {
    sub_1000F2A18(&qword_100ADCD38, &qword_10094CD70);
    sub_1000F2A18(&qword_100ADCD28, &qword_10094CD60);
    sub_1002E1BAC();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD28F0, &qword_100AD28F8, &unk_10094CDF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCD78);
  }

  return result;
}

unint64_t sub_1002E1EA8()
{
  result = qword_100ADCDA8;
  if (!qword_100ADCDA8)
  {
    sub_1000F2A18(&qword_100ADCDA0, &unk_10094CE20);
    sub_1000F2A18(&unk_100AE1690, &unk_100952CF0);
    sub_1002E1F9C();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8, &qword_10094CBA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCDA8);
  }

  return result;
}

unint64_t sub_1002E1F9C()
{
  result = qword_100ADCDB0;
  if (!qword_100ADCDB0)
  {
    sub_1000F2A18(&unk_100AE1690, &unk_100952CF0);
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0, &qword_10094CE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCDB0);
  }

  return result;
}

unint64_t sub_1002E2074()
{
  result = qword_100ADCDC8;
  if (!qword_100ADCDC8)
  {
    sub_1000F2A18(&qword_100ADCDC0, &qword_10094CE38);
    sub_1002E212C();
    sub_10000B58C(&qword_100AD21A8, &qword_100AD21B0, &qword_10094B160, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCDC8);
  }

  return result;
}

unint64_t sub_1002E212C()
{
  result = qword_100ADCDD0;
  if (!qword_100ADCDD0)
  {
    sub_1000F2A18(&qword_100ADCDD8, &unk_10094CE40);
    sub_1002E1F9C();
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8, &qword_10094CBA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCDD0);
  }

  return result;
}

uint64_t sub_1002E21E4()
{
  v1 = *(type metadata accessor for RecordingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  (*(*(v3 - 8) + 8))(v2, v3);

  return swift_deallocObject();
}

uint64_t sub_1002E2300()
{
  v1 = *(type metadata accessor for RecordingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_1002DBB74(v2, v3);
}

void sub_1002E2380(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    sub_1002E2398(result, a2, a3, a4, a5, a6 & 1);
  }
}

void sub_1002E2398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }
}

double sub_1002E23E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_1002E2400(result, a2, a3, a4, a5, a6 & 1);
  }

  return v6;
}

double sub_1002E2400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

unint64_t sub_1002E2450()
{
  result = qword_100ADCE38;
  if (!qword_100ADCE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCE38);
  }

  return result;
}

unint64_t sub_1002E24A4()
{
  result = qword_100ADCE40;
  if (!qword_100ADCE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCE40);
  }

  return result;
}

unint64_t sub_1002E24F8()
{
  result = qword_100ADCE50[0];
  if (!qword_100ADCE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100ADCE50);
  }

  return result;
}

uint64_t sub_1002E2574(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1002E2610(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  v11 = *(v7 + 80);
  if (v5 <= v8)
  {
    v12 = *(v7 + 84);
  }

  else
  {
    v12 = *(v4 + 84);
  }

  if (v12 <= 0xFE)
  {
    v13 = 254;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = a2 - v13;
  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v15 = ((v10 + v11 + ((v9 + 1) & ~v9)) & ~v11) + *(*(v6 - 8) + 64);
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((v14 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *&a1[v15];
      if (!v17)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 > 0xFF)
    {
      v17 = *&a1[v15];
      if (!*&a1[v15])
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v19 < 2)
    {
LABEL_31:
      if (v12 > 0xFE)
      {
        v26 = &a1[v9 + 1] & ~v9;
        if (v5 == v13)
        {
          return (*(v4 + 48))(v26);
        }

        else
        {
          return (*(v7 + 48))((v26 + v10 + v11) & ~v11, v8, v6);
        }
      }

      else
      {
        v23 = *a1;
        v24 = v23 >= 2;
        v25 = (v23 + 2147483646) & 0x7FFFFFFF;
        if (v24)
        {
          return (v25 + 1);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v17 = a1[v15];
  if (!a1[v15])
  {
    goto LABEL_31;
  }

LABEL_18:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (a1[2] << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v13 + (v22 | v20) + 1;
}

void sub_1002E283C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(a4 + 24);
  v8 = *(v6 + 84);
  v9 = *(v7 - 8);
  v10 = *(v6 + 80);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v13 = *(v9 + 84);
  }

  else
  {
    v13 = *(v6 + 84);
  }

  if (v13 <= 0xFE)
  {
    v14 = 254;
  }

  else
  {
    v14 = v13;
  }

  v15 = ((v11 + v12 + ((v10 + 1) & ~v10)) & ~v12) + *(*(v7 - 8) + 64);
  v16 = a3 >= v14;
  v17 = a3 - v14;
  if (v17 != 0 && v16)
  {
    if (v15 <= 3)
    {
      v21 = ((v17 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
      if (HIWORD(v21))
      {
        v18 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v18 = v22;
        }

        else
        {
          v18 = 0;
        }
      }
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  if (v14 < a2)
  {
    v19 = ~v14 + a2;
    if (v15 < 4)
    {
      v20 = (v19 >> (8 * v15)) + 1;
      if (v15)
      {
        v23 = v19 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v23;
            if (v18 > 1)
            {
LABEL_51:
              if (v18 == 2)
              {
                *&a1[v15] = v20;
              }

              else
              {
                *&a1[v15] = v20;
              }

              return;
            }
          }

          else
          {
            *a1 = v19;
            if (v18 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *a1 = v23;
        a1[2] = BYTE2(v23);
      }

      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v19;
      v20 = 1;
      if (v18 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v18)
    {
      a1[v15] = v20;
    }

    return;
  }

  if (v18 > 1)
  {
    if (v18 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_34;
    }

    *&a1[v15] = 0;
  }

  else if (v18)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (!a2)
  {
    return;
  }

LABEL_34:
  if (v13 > 0xFE)
  {
    v24 = &a1[v10 + 1] & ~v10;
    if (v8 == v14)
    {
      v25 = *(v6 + 56);

      v25(v24);
    }

    else
    {
      v26 = *(v9 + 56);
      v27 = (v24 + v11 + v12) & ~v12;

      v26(v27);
    }
  }

  else
  {
    *a1 = a2 + 1;
  }
}

uint64_t sub_1002E2B7C(uint64_t a1)
{
  result = type metadata accessor for ButtonToggleStyle();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1002E2BF8()
{
  result = qword_100ADCF68;
  if (!qword_100ADCF68)
  {
    sub_1000F2A18(&qword_100ADCAE8, &unk_10094C9E0);
    sub_1002E2CB0();
    sub_10000B58C(&qword_100ADCF88, &qword_100ADCF90, &qword_10094D058, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCF68);
  }

  return result;
}

unint64_t sub_1002E2CB0()
{
  result = qword_100ADCF70;
  if (!qword_100ADCF70)
  {
    sub_1000F2A18(&qword_100ADCA98, &qword_10094C968);
    sub_1000F2A18(&qword_100ADCA88, &qword_10094C958);
    sub_1000F2A18(&qword_100ADB0A0, &qword_10094ABC8);
    sub_1002E0AF8();
    sub_10000B58C(&qword_100ADB0F0, &qword_100ADB0A0, &qword_10094ABC8, &protocol conformance descriptor for PartialRangeThrough<A>);
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADCF78, &qword_100ADCF80, &qword_10094D050, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCF70);
  }

  return result;
}

unint64_t sub_1002E2E64()
{
  result = qword_100ADCF98;
  if (!qword_100ADCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCF98);
  }

  return result;
}

unint64_t sub_1002E2EB8()
{
  result = qword_100ADCFC8;
  if (!qword_100ADCFC8)
  {
    sub_1000F2A18(&qword_100ADCFB8, &qword_10094D170);
    sub_1002E2F70();
    sub_10000B58C(&qword_100ADCFF8, &qword_100ADD000, &qword_10094D188, &unk_10094D060);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCFC8);
  }

  return result;
}

unint64_t sub_1002E2F70()
{
  result = qword_100ADCFD0;
  if (!qword_100ADCFD0)
  {
    sub_1000F2A18(&qword_100ADCFD8, &qword_10094D178);
    sub_10000B58C(&qword_100ADCFE0, &qword_100ADCFE8, &qword_10094D180, &protocol conformance descriptor for Button<A>);
    sub_10000B58C(&qword_100ADCFF0, &qword_100ADCCF8, &qword_10094CCA8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADCFD0);
  }

  return result;
}

unint64_t sub_1002E3054()
{
  result = qword_100ADD008;
  if (!qword_100ADD008)
  {
    sub_1000F2A18(&qword_100ADD010, &qword_10094D190);
    sub_1002E2EB8();
    sub_1000F2A18(&qword_100ADCFA0, &qword_10094D158);
    type metadata accessor for BorderedProminentButtonStyle();
    swift_getOpaqueTypeConformance2();
    sub_1002E0A28(&qword_100ADCFC0, &type metadata accessor for BorderedProminentButtonStyle, &protocol conformance descriptor for BorderedProminentButtonStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD008);
  }

  return result;
}

uint64_t sub_1002E31A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v29 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Duration.UnitsFormatStyle.FractionalPartDisplayStrategy();
  v31 = *(v6 - 8);
  v32 = v6;
  __chkstk_darwin(v6);
  v36 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v35 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Duration.TimeFormatStyle.Pattern();
  v13 = *(v26 - 8);
  __chkstk_darwin(v26);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a2;
  *a2 = a1;
  v16 = type metadata accessor for TimecodeView(0);
  v24[1] = *(v16 + 20);
  v17 = enum case for FloatingPointRoundingRule.toNearestOrEven(_:);
  v25 = *(v10 + 104);
  v25(v12, enum case for FloatingPointRoundingRule.toNearestOrEven(_:), v9);
  static Duration.TimeFormatStyle.Pattern.minuteSecond(padMinuteToLength:fractionalSecondsLength:roundFractionalSeconds:)();
  v18 = *(v10 + 8);
  v18(v12, v9);
  static FormatStyle<>.time(pattern:)();
  (*(v13 + 8))(v15, v26);
  v26 = *(v16 + 24);
  static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
  v25(v12, v17, v9);
  static Duration.UnitsFormatStyle.FractionalPartDisplayStrategy.show(length:rounded:increment:)();
  v18(v12, v9);
  sub_1000F24EC(&qword_100ADCE28, &qword_10094CF30);
  type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100942000;
  static Duration.UnitsFormatStyle.Unit.hours.getter();
  static Duration.UnitsFormatStyle.Unit.minutes.getter();
  static Duration.UnitsFormatStyle.Unit.seconds.getter();
  sub_1002E42F8(v19);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v20 = v29;
  static Duration.UnitsFormatStyle.ZeroValueUnitsDisplayStrategy.hide.getter();
  v22 = v35;
  v21 = v36;
  static FormatStyle<>.units(allowed:width:maximumUnitCount:zeroValueUnits:valueLength:fractionalPart:)();

  (*(v33 + 8))(v20, v34);
  (*(v31 + 8))(v21, v32);
  return (*(v28 + 8))(v22, v30);
}

uint64_t type metadata accessor for TimecodeView(uint64_t a1)
{
  result = qword_100ADD088;
  if (!qword_100ADD088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002E370C@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v2 = type metadata accessor for TimecodeView(0);
  v19 = *(v2 - 8);
  v3 = *(v19 + 64);
  __chkstk_darwin(v2 - 8);
  v4 = type metadata accessor for AnimationTimelineSchedule();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v18 - v9;
  v11 = *v1;
  swift_getKeyPath();
  v21 = v11;
  sub_1002E492C(&qword_100AD62F8, type metadata accessor for RecordingViewModel, &unk_10095FA0C);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v11 + 16))
  {
    v12 = *(v11 + 24);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_100885D80(ObjectType, v12);
    swift_unknownObjectRelease();
  }

  AnimationTimelineSchedule.init(minimumInterval:paused:)();
  sub_1002E46FC(v1, &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v15 = swift_allocObject();
  sub_1002E4760(&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  (*(v5 + 16))(v7, v10, v4);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1002E47C4;
  *(v16 + 24) = v15;
  sub_1000F24EC(&qword_100ADD0C8, &qword_10094D228);
  sub_1002E492C(&qword_100ADD0D0, &type metadata accessor for AnimationTimelineSchedule, &protocol conformance descriptor for AnimationTimelineSchedule);
  sub_1002E4870();
  TimelineView<>.init(_:content:)();
  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_1002E3A60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v57 = a2;
  v58 = type metadata accessor for AccessibilityTraits();
  v56 = *(v58 - 8);
  __chkstk_darwin(v58);
  v55 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for Duration.UnitsFormatStyle();
  v49 = *(v53 - 8);
  __chkstk_darwin(v53);
  v50 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Duration.TimeFormatStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000F24EC(&qword_100ADD0C8, &qword_10094D228);
  __chkstk_darwin(v52);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v51 = &v45 - v12;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F24EC(&qword_100ADD0E0, &qword_10094D230);
  TimelineView.Context.date.getter();
  sub_1005F00F4(v16);
  (*(v14 + 8))(v16, v13);
  v48 = static Duration.seconds(_:)();
  *&v67[0] = v48;
  *(&v67[0] + 1) = v17;
  v47 = v17;
  v46 = type metadata accessor for TimecodeView(0);
  v18 = *(v46 + 20);
  v19 = *(v6 + 16);
  v54 = a1;
  v19(v8, a1 + v18, v5);
  sub_1002E492C(&qword_100ADD0F0, &type metadata accessor for Duration.TimeFormatStyle, &protocol conformance descriptor for Duration.TimeFormatStyle);
  v20 = Text.init<A>(_:format:)();
  v22 = v21;
  LOBYTE(v8) = v23;
  static Font.largeTitle.getter();
  Font.bold()();

  v24 = Text.font(_:)();
  v26 = v25;
  v28 = v27;

  sub_1000594D0(v20, v22, v8 & 1);

  v29 = Text.monospacedDigit()();
  v31 = v30;
  LOBYTE(v22) = v32;
  v34 = v33;
  sub_1000594D0(v24, v26, v28 & 1);

  KeyPath = swift_getKeyPath();
  v36 = swift_getKeyPath();
  v66 = v22 & 1;
  v65 = 0;
  *&v60 = v29;
  *(&v60 + 1) = v31;
  LOBYTE(v61) = v22 & 1;
  *(&v61 + 1) = v34;
  *&v62 = KeyPath;
  *(&v62 + 1) = 1;
  LOBYTE(v63) = 0;
  *(&v63 + 1) = v36;
  v64 = 0x3FEC28F5C28F5C29;
  if (qword_100AD0800 != -1)
  {
    swift_once();
  }

  v59 = xmmword_100B30BE0;
  sub_1000F24EC(&qword_100ADB580, &qword_10094B198);
  sub_100282480();
  sub_1000777B4();
  View.accessibilityLabel<A>(_:)();
  v67[2] = v62;
  v67[3] = v63;
  v68 = v64;
  v67[0] = v60;
  v67[1] = v61;
  sub_100004F84(v67, &qword_100ADB580, &qword_10094B198);
  *&v60 = v48;
  *(&v60 + 1) = v47;
  (*(v49 + 16))(v50, v54 + *(v46 + 24), v53);
  sub_1002E492C(&qword_100ADD0F8, &type metadata accessor for Duration.UnitsFormatStyle, &protocol conformance descriptor for Duration.UnitsFormatStyle);
  v37 = Text.init<A>(_:format:)();
  v39 = v38;
  v41 = v40;
  v42 = v51;
  ModifiedContent<>.accessibilityValue(_:)();
  sub_1000594D0(v37, v39, v41 & 1);

  sub_100004F84(v10, &qword_100ADD0C8, &qword_10094D228);
  v43 = v55;
  static AccessibilityTraits.updatesFrequently.getter();
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v56 + 8))(v43, v58);
  return sub_100004F84(v42, &qword_100ADD0C8, &qword_10094D228);
}

uint64_t sub_1002E41A8(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = sub_1000F24EC(&qword_100ADD0E0, &qword_10094D230);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v17 - v12;
  v14 = sub_1000F24EC(a4, a5);
  v16 = *(v14 - 8);
  result = v14 - 8;
  if (*(v16 + 64) == v11)
  {
    (*(v10 + 16))(v13, a1, v9);
    a2(v13);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1002E42F8(uint64_t a1)
{
  v2 = type metadata accessor for Duration.UnitsFormatStyle.Unit();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1000F24EC(&qword_100ADD018, &qword_10094D198);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v33 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    v31 = v8;
    v32 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v13 * v10, v2);
      sub_1002E492C(&qword_100ADD020, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
      v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v16 = -1 << *(v9 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      v19 = *(v36 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      if (((1 << v17) & v19) != 0)
      {
        v21 = ~v16;
        do
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v17 * v13, v2);
          sub_1002E492C(&qword_100ADD028, &type metadata accessor for Duration.UnitsFormatStyle.Unit, &protocol conformance descriptor for Duration.UnitsFormatStyle.Unit);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v14;
          (*v14)(v5, v2);
          if (v23)
          {
            v24(v37, v2);
            v11 = v22;
            v8 = v31;
            goto LABEL_4;
          }

          v17 = (v17 + 1) & v21;
          v18 = v17 >> 6;
          v19 = *(v36 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          v11 = v22;
        }

        while (((1 << v17) & v19) != 0);
        v8 = v31;
      }

      v25 = v37;
      *(v36 + 8 * v18) = v20 | v19;
      result = (*v32)(*(v9 + 48) + v17 * v13, v25, v2);
      v27 = *(v9 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v9 + 16) = v29;
LABEL_4:
      v10 = v34 + 1;
      if (v34 + 1 == v8)
      {
        return v9;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1002E4644(uint64_t a1)
{
  result = type metadata accessor for RecordingViewModel(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Duration.TimeFormatStyle();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Duration.UnitsFormatStyle();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002E46FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimecodeView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E4760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TimecodeView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002E47C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TimecodeView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1002E3A60(v4, a1);
}

unint64_t sub_1002E4870()
{
  result = qword_100ADD0D8;
  if (!qword_100ADD0D8)
  {
    sub_1000F2A18(&qword_100ADD0C8, &qword_10094D228);
    sub_100282480();
    sub_1002E492C(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD0D8);
  }

  return result;
}

uint64_t sub_1002E492C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002E4974()
{
  result = qword_100ADD108;
  if (!qword_100ADD108)
  {
    sub_1000F2A18(&qword_100ADD110, &qword_10094D2A8);
    sub_1002E4870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD108);
  }

  return result;
}

BOOL sub_1002E4A54()
{
  v0 = type metadata accessor for RecordingView(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v8 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UIHostingController.rootView.getter();
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  sub_100193928(v2);
  v3 = *(v10[0] + 80);

  if (v3 == 1)
  {
    dispatch thunk of UIHostingController.rootView.getter();
    Bindable.wrappedValue.getter();
    sub_100193928(v2);
    sub_1005EFDF8(&v8);

    if (v9)
    {
      sub_100018480(&v8, v10);
      v4 = v11;
      v5 = v12;
      sub_10000CA14(v10, v11);
      v6 = !sub_10029B2BC(v4, v5);
      sub_10000BA7C(v10);
    }

    else
    {
      sub_10019385C(&v8);
      return 1;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

void sub_1002E4BB4(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v4 = v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v1[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v5 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v1[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
LABEL_4:
    v1[v5] = 1;
    goto LABEL_5;
  }

  if (v4 <= 6)
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:
  v7 = *&v1[OBJC_IVAR____TtC7Journal26TranscribingAudioAssetView_hostingController];
  v8 = [v7 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  [v2 addSubview:v8];

  v10 = OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView;
  [v2 addSubview:*&v2[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v11 = [v7 view];
  if (!v11)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor:v13];

  v14 = [v7 view];
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v14;
  [v14 frame];
  [v15 setFrame:?];

  v16 = [v7 view];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v16;
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v18 = [v7 view];
  if (!v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = v18;
  sub_100013178(0.0);

  v20 = *&v2[v10];
  v21 = *((swift_isaMask & *v20) + 0x58);
  v22 = v2[v3];
  v23 = v20;
  v21(5, v22);

  v24 = *&v2[v10];
  sub_100013178(0.0);

  v25 = sub_1002E4A54();
  [*&v2[v10] setHidden:!v25];
  v26 = [v7 view];
  if (v26)
  {
    v27 = v26;
    [v26 setHidden:v25];

    v2[OBJC_IVAR____TtC7Journal16JournalAssetView_isAssetFinishedLoading] = 1;
    return;
  }

LABEL_18:
  __break(1u);
}

uint64_t sub_1002E4F88()
{
  v0 = type metadata accessor for RecordingView(0);
  __chkstk_darwin(v0 - 8);
  v2 = &v5[-1] - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UIHostingController.rootView.getter();
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  sub_100193928(v2);
  sub_1005EFDF8(v5);

  if (v5[3])
  {
    sub_1000F24EC(&qword_100AD6308, qword_10094D2F0);
    type metadata accessor for AudioAsset(0);
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_10019385C(v5);
  }

  return 0;
}

id sub_1002E50D8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TranscribingAudioAssetView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

double sub_1002E5170(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = type metadata accessor for RecordingView(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of UIHostingController.rootView.getter();
  sub_1000F24EC(&qword_100ADC9B8, &unk_10094D2E0);
  Bindable.wrappedValue.getter();
  v7 = sub_100193928(v6);
  a3(v7);

  return result;
}

void sub_1002E5234(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_1000F24EC(&unk_100ADD500, &qword_10094D5C0);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask;
  if (*&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask])
  {
    v17 = sub_1000F24EC(&qword_100ADD1F0, &unk_10094D360);
    v18 = *(v17 + 48);
    sub_10000D6E8(a1, v15, type metadata accessor for SceneSplitViewController.ContentType);
    *&v15[v18] = a2;
    (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
    v19 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
    swift_beginAccess();

    sub_100014318(v15, &v3[v19], &unk_100ADD500, &qword_10094D5C0);
    swift_endAccess();
  }

  else
  {
    v20 = sub_1004B6AC0();
    if (v20)
    {
      v21 = v20;
      v22 = type metadata accessor for TaskPriority();
      (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
      sub_10000D6E8(a1, &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SceneSplitViewController.ContentType);
      type metadata accessor for MainActor();

      v23 = v21;
      v30 = v3;
      v24 = static MainActor.shared.getter();
      v25 = (*(v7 + 80) + 48) & ~*(v7 + 80);
      v26 = (v8 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
      v27 = swift_allocObject();
      v27[2] = v24;
      v27[3] = &protocol witness table for MainActor;
      v28 = v30;
      v27[4] = v23;
      v27[5] = v28;
      sub_10001DB98(v9, v27 + v25, type metadata accessor for SceneSplitViewController.ContentType);
      *(v27 + v26) = a2;
      v29 = sub_1003E9628(0, 0, v12, &unk_10094D5D8, v27);

      *&v3[v16] = v29;
    }

    else
    {

      sub_1002E8E78(a1, a2);
    }
  }
}

void sub_1002E55E8(char a1, char *a2)
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5 || v9 == 1 && ((*(v5 + 104))(v7, enum case for JournalFeatureFlags.inspectorColumn(_:), v4), v10 = JournalFeatureFlags.isEnabled.getter(), (*(v5 + 8))(v7, v4), (v10 & 1) != 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v12 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
        v13 = swift_allocObject();
        v13[2] = sub_1002E9704;
        v13[3] = 0;
        v13[4] = v12;
        if (a1)
        {
          [v12 hideColumn:4];
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = sub_1002EE210;
          *(v15 + 24) = v13;
          v30 = sub_100177C4C;
          v31 = v15;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_10001A7D4;
          v29 = &unk_100A65E20;
          v16 = _Block_copy(&aBlock);
          v17 = v12;

          [v14 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

          if (v14)
          {
            __break(1u);
            return;
          }
        }

        v18 = swift_allocObject();
        v18[2] = a2;
        v18[3] = DebugData.init(name:);
        v18[4] = 0;
        v19 = a2;
        v20 = [v12 transitionCoordinator];
        if (v20)
        {
          v21 = v20;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_100177CC0;
          *(v22 + 24) = v18;
          v30 = sub_1000F560C;
          v31 = v22;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_1002E6808;
          v29 = &unk_100A65E98;
          v23 = _Block_copy(&aBlock);

          [v21 animateAlongsideTransition:0 completion:v23];

          _Block_release(v23);
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = *&v19[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
          sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v24 setViewControllers:isa];
        }

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_1002E5A64(char a1, char *a2)
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5 || v9 == 1 && ((*(v5 + 104))(v7, enum case for JournalFeatureFlags.inspectorColumn(_:), v4), v10 = JournalFeatureFlags.isEnabled.getter(), (*(v5 + 8))(v7, v4), (v10 & 1) != 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v12 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
        v13 = swift_allocObject();
        v13[2] = sub_1002E9704;
        v13[3] = 0;
        v13[4] = v12;
        if (a1)
        {
          [v12 hideColumn:4];
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = sub_1002EE210;
          *(v15 + 24) = v13;
          v30 = sub_100177C4C;
          v31 = v15;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_10001A7D4;
          v29 = &unk_100A656A0;
          v16 = _Block_copy(&aBlock);
          v17 = v12;

          [v14 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

          if (v14)
          {
            __break(1u);
            return;
          }
        }

        v18 = swift_allocObject();
        v18[2] = a2;
        v18[3] = DebugData.init(name:);
        v18[4] = 0;
        v19 = a2;
        v20 = [v12 transitionCoordinator];
        if (v20)
        {
          v21 = v20;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_100177CC0;
          *(v22 + 24) = v18;
          v30 = sub_1000F560C;
          v31 = v22;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_1002E6808;
          v29 = &unk_100A65718;
          v23 = _Block_copy(&aBlock);

          [v21 animateAlongsideTransition:0 completion:v23];

          _Block_release(v23);
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = *&v19[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
          sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v24 setViewControllers:isa];
        }

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_1002E5EE0(char a1, char *a2)
{
  v4 = type metadata accessor for JournalFeatureFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v8 = [objc_opt_self() currentTraitCollection];
    v9 = [v8 userInterfaceIdiom];

    if (v9 == 5 || v9 == 1 && ((*(v5 + 104))(v7, enum case for JournalFeatureFlags.inspectorColumn(_:), v4), v10 = JournalFeatureFlags.isEnabled.getter(), (*(v5 + 8))(v7, v4), (v10 & 1) != 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {

        v12 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
        v13 = swift_allocObject();
        v13[2] = sub_1002E9704;
        v13[3] = 0;
        v13[4] = v12;
        if (a1)
        {
          [v12 hideColumn:4];
        }

        else
        {
          v14 = objc_opt_self();
          v15 = swift_allocObject();
          *(v15 + 16) = sub_1002EA9D0;
          *(v15 + 24) = v13;
          v30 = sub_100028EF4;
          v31 = v15;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_10001A7D4;
          v29 = &unk_100A654C0;
          v16 = _Block_copy(&aBlock);
          v17 = v12;

          [v14 performWithoutAnimation:v16];
          _Block_release(v16);
          LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

          if (v14)
          {
            __break(1u);
            return;
          }
        }

        v18 = swift_allocObject();
        v18[2] = a2;
        v18[3] = DebugData.init(name:);
        v18[4] = 0;
        v19 = a2;
        v20 = [v12 transitionCoordinator];
        if (v20)
        {
          v21 = v20;
          v22 = swift_allocObject();
          *(v22 + 16) = sub_100175E70;
          *(v22 + 24) = v18;
          v30 = sub_100028ECC;
          v31 = v22;
          aBlock = _NSConcreteStackBlock;
          v27 = 1107296256;
          v28 = sub_1002E6808;
          v29 = &unk_100A65538;
          v23 = _Block_copy(&aBlock);

          [v21 animateAlongsideTransition:0 completion:v23];

          _Block_release(v23);
          swift_unknownObjectRelease();
        }

        else
        {
          v24 = *&v19[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
          sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
          isa = Array._bridgeToObjectiveC()().super.isa;
          [v24 setViewControllers:isa];
        }

        swift_unknownObjectWeakAssign();
      }
    }
  }
}

void sub_1002E635C(char a1, void (*a2)(void), uint64_t a3)
{
  v7 = type metadata accessor for JournalFeatureFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (_UISolariumEnabled())
  {
    v11 = [objc_opt_self() currentTraitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (v12 == 5 || v12 == 1 && ((*(v8 + 104))(v10, enum case for JournalFeatureFlags.inspectorColumn(_:), v7), v13 = JournalFeatureFlags.isEnabled.getter(), (*(v8 + 8))(v10, v7), (v13 & 1) != 0))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (!Strong)
      {
        a2();
        return;
      }

      v15 = *&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
      v16 = swift_allocObject();
      v16[2] = sub_1002E9704;
      v16[3] = 0;
      v16[4] = v15;
      if (a1)
      {
        [v15 hideColumn:4];
      }

      else
      {
        v17 = objc_opt_self();
        v18 = swift_allocObject();
        *(v18 + 16) = sub_1002EE210;
        *(v18 + 24) = v16;
        v33 = sub_100177C4C;
        v34 = v18;
        aBlock = _NSConcreteStackBlock;
        v30 = 1107296256;
        v31 = sub_10001A7D4;
        v32 = &unk_100A655B0;
        v19 = _Block_copy(&aBlock);
        v20 = v15;

        [v17 performWithoutAnimation:v19];
        _Block_release(v19);
        LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

        if (v17)
        {
          __break(1u);
          return;
        }
      }

      v21 = swift_allocObject();
      v21[2] = v3;
      v21[3] = a2;
      v21[4] = a3;

      v22 = v3;
      v23 = [v15 transitionCoordinator];
      if (v23)
      {
        v24 = v23;
        v25 = swift_allocObject();
        *(v25 + 16) = sub_100177CC0;
        *(v25 + 24) = v21;
        v33 = sub_1000F560C;
        v34 = v25;
        aBlock = _NSConcreteStackBlock;
        v30 = 1107296256;
        v31 = sub_1002E6808;
        v32 = &unk_100A65628;
        v26 = _Block_copy(&aBlock);

        [v24 animateAlongsideTransition:0 completion:v26];

        _Block_release(v26);
        swift_unknownObjectRelease();
      }

      else
      {
        v27 = *&v22[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
        sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v27 setViewControllers:isa];

        a2();
      }

      swift_unknownObjectWeakAssign();
    }
  }
}

uint64_t sub_1002E6808(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1002E6868()
{
  v0 = type metadata accessor for SceneSplitViewController.ContentType(0);
  sub_100006118(v0, qword_100ADD150);
  v1 = sub_10000617C(v0, qword_100ADD150);
  if (qword_100ACFF20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  v3 = sub_10000617C(v2, qword_100B2FAE0);
  sub_10000D6E8(v3, v1, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v4 = sub_1000F24EC(&unk_100AD4BA0, &unk_1009435D0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1, 0, 2, v4);
}

uint64_t sub_1002E6968(uint64_t a1)
{
  v2 = sub_10000F6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E69A4(uint64_t a1)
{
  v2 = sub_10000F6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002E69E0(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1002E6A68(uint64_t a1)
{
  v2 = sub_10000F958();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E6AA4(uint64_t a1)
{
  v2 = sub_10000F958();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E6AE0(uint64_t a1)
{
  v2 = sub_1002EC13C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E6B1C(uint64_t a1)
{
  v2 = sub_1002EC13C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E6B58(uint64_t a1)
{
  v2 = sub_1002EC0E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E6B94(uint64_t a1)
{
  v2 = sub_1002EC0E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1002E6BD4(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001008E9C20 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1002E6C68(uint64_t a1)
{
  v2 = sub_10000F4A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002E6CA4(uint64_t a1)
{
  v2 = sub_10000F4A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002E6CE0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  swift_beginAccess();
  return sub_1000082B4(v1 + v3, a1, &qword_100ADD440, &unk_10094D548);
}

double sub_1002E6D48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(a1, v1 + v3, &qword_100ADD440, &unk_10094D548);
  swift_endAccess();
  return result;
}

uint64_t sub_1002E6E18(void *a1)
{
  v19 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView;
  *(v1 + v19) = [objc_allocWithZone(UISplitViewController) initWithStyle:1];
  v2 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController;
  v3 = type metadata accessor for RootPaneNavigationController();
  v17 = v2;
  *(v1 + v2) = [objc_allocWithZone(v3) init];
  v16 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController;
  *(v1 + v16) = [objc_allocWithZone(v3) init];
  v15 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController;
  *(v1 + v15) = [objc_allocWithZone(v3) init];
  v4 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController;
  *(v1 + v4) = [objc_allocWithZone(v3) init];
  swift_unknownObjectWeakInit();
  v5 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
  if (qword_100ACFBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v7 = sub_10000617C(v6, qword_100ADD150);
  sub_10000D6E8(v7, v1 + v5, type metadata accessor for SceneSplitViewController.ContentType);
  *(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask) = 0;
  v8 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
  v9 = sub_1000F24EC(&qword_100ADD1F0, &unk_10094D360);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  v11 = type metadata accessor for SceneSplitViewController.State(0);
  (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController;
  type metadata accessor for AppNavigationSidebarController(0);
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  *(v1 + v12) = v13;
  swift_unknownObjectWeakDestroy();
  sub_10000D628(v1 + v5, type metadata accessor for SceneSplitViewController.ContentType);

  sub_100004F84(v1 + v8, &unk_100ADD500, &qword_10094D5C0);
  sub_100004F84(v1 + v10, &qword_100ADD440, &unk_10094D548);

  type metadata accessor for SceneSplitViewController(0);
  swift_deallocPartialClassInstance();
  return 0;
}

char *sub_1002E7184(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = type metadata accessor for JournalFeatureFlags();
  v45 = *(v4 - 8);
  v46 = v4;
  __chkstk_darwin(v4);
  v44 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1000F24EC(&qword_100ADD440, &unk_10094D548);
  __chkstk_darwin(v6 - 8);
  v8 = &v42[-v7];
  v9 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView;
  *&v2[v9] = [objc_allocWithZone(UISplitViewController) initWithStyle:1];
  v10 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController;
  v11 = type metadata accessor for RootPaneNavigationController();
  *&v2[v10] = [objc_allocWithZone(v11) init];
  v12 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController;
  *&v2[v12] = [objc_allocWithZone(v11) init];
  v13 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController;
  *&v2[v13] = [objc_allocWithZone(v11) init];
  v14 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController;
  *&v2[v14] = [objc_allocWithZone(v11) init];
  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
  if (qword_100ACFBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SceneSplitViewController.ContentType(0);
  v17 = sub_10000617C(v16, qword_100ADD150);
  sub_10000D6E8(v17, &v2[v15], type metadata accessor for SceneSplitViewController.ContentType);
  *&v2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask] = 0;
  v18 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
  v19 = sub_1000F24EC(&qword_100ADD1F0, &unk_10094D360);
  (*(*(v19 - 8) + 56))(&v2[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  v21 = type metadata accessor for SceneSplitViewController.State(0);
  (*(*(v21 - 8) + 56))(&v2[v20], 1, 1, v21);
  v22 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController;
  type metadata accessor for AppNavigationSidebarController(0);
  *&v2[v22] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = type metadata accessor for SceneSplitViewController(0);
  v48.receiver = v2;
  v48.super_class = v23;
  v24 = objc_msgSendSuper2(&v48, "initWithNibName:bundle:", 0, 0);
  v25 = a1;
  [v24 setUserActivity:v25];
  sub_10000C59C(&unk_100ADD4F0, type metadata accessor for SceneSplitViewController, &unk_10094D4F4);
  static RestorableController.getRestorableState(from:key:)();
  v47 = v25;

  v26 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_stateToRestore;
  swift_beginAccess();
  sub_100014318(v8, &v24[v26], &qword_100ADD440, &unk_10094D548);
  swift_endAccess();
  v27 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView;
  [*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView] setDelegate:v24];
  [*&v24[v27] setPrimaryBackgroundStyle:1];
  v28 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController;
  [*&v24[v27] setViewController:*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController] forColumn:0];
  v29 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController;
  [*&v24[v27] setViewController:*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController] forColumn:2];
  v30 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController;
  [*&v24[v27] setViewController:*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController] forColumn:3];
  if (_UISolariumEnabled())
  {
    v31 = [objc_opt_self() currentTraitCollection];
    v32 = [v31 userInterfaceIdiom];

    if (v32 == 5 || v32 == 1 && (v33 = v44, v34 = v45, v35 = v46, (*(v45 + 104))(v44, enum case for JournalFeatureFlags.inspectorColumn(_:), v46), v43 = JournalFeatureFlags.isEnabled.getter(), (*(v34 + 8))(v33, v35), (v43 & 1) != 0))
    {
      [*&v24[v27] setViewController:*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController] forColumn:4];
      [*&v24[v27] hideColumn:4];
    }
  }

  v36 = [v24 traitCollection];
  v37 = [v36 userInterfaceIdiom];

  if (v37 == 5)
  {
    [*&v24[v27] setPreferredPrimaryColumnWidth:200.0];
  }

  *(*&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController] + OBJC_IVAR____TtC7Journal30AppNavigationSidebarController_delegate + 8) = &off_100A65460;
  swift_unknownObjectWeakAssign();
  v38 = *&v24[v28];
  v39 = v24;
  [v38 setDelegate:v39];
  [*&v24[v29] setDelegate:v39];
  v40 = *&v24[v30];
  [v40 setDelegate:v39];

  return v39;
}

uint64_t sub_1002E7958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for UUID();
  v51 = *(v3 - 8);
  __chkstk_darwin(v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1000F24EC(&qword_100AD4C60, &qword_100943670);
  __chkstk_darwin(v57);
  v58 = &v45 - v6;
  v56 = type metadata accessor for AppNavigationSidebarController.Item(0);
  v62 = *(v56 - 8);
  __chkstk_darwin(v56);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  v12 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v12);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  v52 = a1;
  sub_10000D6E8(a1, v14, type metadata accessor for SceneSplitViewController.ContentType);
  v24 = sub_1000F24EC(&unk_100AD4BA0, &unk_1009435D0);
  if ((*(*(v24 - 8) + 48))(v14, 2, v24))
  {
    v25 = type metadata accessor for SceneSplitViewController.ContentType;
    v26 = v14;
LABEL_3:
    sub_10000D628(v26, v25);
    return sub_10000D6E8(v52, v53, type metadata accessor for SceneSplitViewController.ContentType);
  }

  v55 = v20;
  v50 = v17;
  sub_10001DB98(v14, v23, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
  v28 = sub_100152DFC();
  v29 = v57;
  v30 = v62;
  v60 = *(v28 + 16);
  v61 = v28;
  if (!v60)
  {
LABEL_21:

    if (qword_100ACFBE0 != -1)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  v31 = 0;
  v59 = v61 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
  v47 = v5;
  v48 = (v51 + 8);
  v46 = (v51 + 32);
  v54 = v12;
  v49 = v3;
  while (v31 < *(v61 + 16))
  {
    sub_10000D6E8(v59 + *(v30 + 72) * v31, v11, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10000D6E8(v11, v8, type metadata accessor for AppNavigationSidebarController.Item);
    if (!swift_getEnumCaseMultiPayload())
    {
      v32 = v55;
      sub_10001DB98(v8, v55, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v33 = *(v29 + 48);
      v34 = v58;
      sub_10000D6E8(v23, v58, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D6E8(v32, v34 + v33, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v35 = sub_1000F24EC(&qword_100AD47A0, &qword_100941E20);
      v36 = *(*(v35 - 8) + 48);
      v37 = v36(v34, 2, v35);
      if (v37)
      {
        if (v37 == 1)
        {
          sub_10000D628(v32, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          sub_10000D628(v11, type metadata accessor for AppNavigationSidebarController.Item);
          v38 = v58;
          if (v36(v58 + v33, 2, v35) == 1)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_10000D628(v32, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          sub_10000D628(v11, type metadata accessor for AppNavigationSidebarController.Item);
          v38 = v58;
          if (v36(v58 + v33, 2, v35) == 2)
          {
            goto LABEL_23;
          }
        }

LABEL_17:
        sub_100004F84(v38, &qword_100AD4C60, &qword_100943670);
      }

      else
      {
        v38 = v58;
        v39 = v50;
        sub_10000D6E8(v58, v50, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        if (v36(v38 + v33, 2, v35))
        {
          sub_10000D628(v55, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          sub_10000D628(v11, type metadata accessor for AppNavigationSidebarController.Item);
          (*v48)(v39, v49);
          goto LABEL_17;
        }

        v40 = v47;
        v41 = v38 + v33;
        v42 = v49;
        (*v46)(v47, v41, v49);
        LODWORD(v51) = static UUID.== infix(_:_:)();
        v43 = *v48;
        (*v48)(v40, v42);
        sub_10000D628(v55, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
        sub_10000D628(v11, type metadata accessor for AppNavigationSidebarController.Item);
        v43(v39, v42);
        if (v51)
        {
LABEL_23:

          sub_10000D628(v38, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
          v26 = v23;
          v25 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType;
          goto LABEL_3;
        }

        sub_10000D628(v38, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      }

      v29 = v57;
      v12 = v54;
      goto LABEL_7;
    }

    sub_10000D628(v11, type metadata accessor for AppNavigationSidebarController.Item);
    sub_10000D628(v8, type metadata accessor for AppNavigationSidebarController.Item);
LABEL_7:
    ++v31;
    v30 = v62;
    if (v60 == v31)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_22:
  v44 = sub_10000617C(v12, qword_100ADD150);
  sub_10000D6E8(v44, v53, type metadata accessor for SceneSplitViewController.ContentType);
  return sub_10000D628(v23, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
}

void sub_1002E8160(uint64_t a1@<X8>)
{
  if (![*(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) isCollapsed])
  {
    v9 = [*(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController) viewControllers];
    sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v4 >> 62))
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_29:

        goto LABEL_30;
      }

LABEL_11:
      if ((v4 & 0xC000000000000001) == 0)
      {
        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        v10 = *(v4 + 32);
        goto LABEL_14;
      }

LABEL_34:
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_14:
      v11 = v10;

      goto LABEL_21;
    }

LABEL_28:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_11;
  }

  v3 = [*(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController) viewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (v20 < 0)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v5 = v20;
    v6 = v20 != 0;
    if (_CocoaArrayWrapper.endIndex.getter() < v6)
    {
      goto LABEL_33;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v5)
    {
      goto LABEL_4;
    }

    __break(1u);
    goto LABEL_28;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v6 = v5 != 0;
  if (v5 < v6)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {

    if (v5 >= 2)
    {
      v7 = v6;
      do
      {
        v8 = v7 + 1;
        _ArrayBuffer._typeCheckSlowPath(_:)(v7);
        v7 = v8;
      }

      while (v5 != v8);
    }
  }

  else
  {
  }

  if (v4 >> 62)
  {
    _CocoaArrayWrapper.subscript.getter();
    v12 = v16;
    v6 = v17;
    v19 = v18;

    v19 = v19 >> 1;
    v13 = v6 < v19;
    if (v6 != v19)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    v13 = v6 < v5;
    if (v6 != v5)
    {
LABEL_18:
      if (!v13)
      {
        goto LABEL_36;
      }

      v11 = *(v12 + 8 * v6);
      swift_unknownObjectRelease();
LABEL_21:
      v14 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
      swift_beginAccess();
      sub_10000D6E8(v1 + v14, a1, type metadata accessor for SceneSplitViewController.ContentType);
      v15 = type metadata accessor for SceneSplitViewController.Content(0);
      *(a1 + *(v15 + 20)) = v11;
      (*(*(v15 - 8) + 56))(a1, 0, 1, v15);
      return;
    }
  }

  swift_unknownObjectRelease();
LABEL_30:
  v21 = type metadata accessor for SceneSplitViewController.Content(0);
  v22 = *(*(v21 - 8) + 56);

  v22(a1, 1, 1, v21);
}

uint64_t sub_1002E8640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  sub_1000F24EC(&unk_100ADD500, &qword_10094D5C0);
  v7[12] = swift_task_alloc();
  v7[13] = swift_task_alloc();
  v8 = sub_1000F24EC(&qword_100ADD1F0, &unk_10094D360);
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  type metadata accessor for SceneSplitViewController.ContentType(0);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for MainActor();
  v7[19] = static MainActor.shared.getter();
  v7[20] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v7[21] = v10;
  v7[22] = v9;

  return _swift_task_switch(sub_1002E87C4, v10, v9);
}

uint64_t sub_1002E87C4()
{
  if (![*(v0 + 64) isEditing])
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v6;
    v5 = sub_1002EE20C;
    goto LABEL_5;
  }

  v1 = UIViewController.forPresenting.getter();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_1002E8D50;
LABEL_5:

    return _swift_task_switch(v5, v2, v4);
  }

  v7 = swift_task_alloc();
  *(v0 + 184) = v7;
  *v7 = v0;
  v7[1] = sub_1002E8938;

  return sub_1004F1518();
}

uint64_t sub_1002E8938()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return _swift_task_switch(sub_1002E8A58, v3, v2);
}

uint64_t sub_1002E8A58()
{

  sub_10067202C();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002E8AF0, v1, v0);
}

uint64_t sub_1002E8AF0()
{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[9];

  v5 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
  swift_beginAccess();
  sub_1000082B4(v4 + v5, v3, &unk_100ADD500, &qword_10094D5C0);
  v6 = *(v2 + 48);
  v7 = v6(v3, 1, v1);
  v8 = v0[16];
  if (v7 == 1)
  {
    v10 = v0[13];
    v9 = v0[14];
    v11 = v0[11];
    v12 = *(v9 + 48);
    sub_10000D6E8(v0[10], v0[16], type metadata accessor for SceneSplitViewController.ContentType);
    *(v8 + v12) = v11;
    v13 = v6(v10, 1, v9);

    if (v13 != 1)
    {
      sub_100004F84(v0[13], &unk_100ADD500, &qword_10094D5C0);
    }
  }

  else
  {
    sub_1002ED780(v0[13], v0[16]);
  }

  v14 = v0[16];
  v15 = v0[17];
  v16 = *(v14 + *(v0[14] + 48));
  sub_10001DB98(v14, v15, type metadata accessor for SceneSplitViewController.ContentType);
  sub_1002E8E78(v15, v16);

  sub_10000D628(v15, type metadata accessor for SceneSplitViewController.ContentType);
  v17 = v0[12];
  v18 = v0[9];
  (*(v0[15] + 56))(v17, 1, 1, v0[14]);
  v19 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
  swift_beginAccess();
  sub_100014318(v17, v18 + v19, &unk_100ADD500, &qword_10094D5C0);
  swift_endAccess();
  *(v18 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask) = 0;

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002E8D50()
{

  sub_10002CCF8(1);
  v1 = v0[12];
  v2 = v0[9];
  (*(v0[15] + 56))(v1, 1, 1, v0[14]);
  v3 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeRequest;
  swift_beginAccess();
  sub_100014318(v1, v2 + v3, &unk_100ADD500, &qword_10094D5C0);
  swift_endAccess();
  *(v2 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_pendingContentTypeTask) = 0;

  v4 = v0[1];

  return v4();
}

void sub_1002E8E78(id a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
  swift_beginAccess();
  sub_10000D6E8(&v2[v9], v8, type metadata accessor for SceneSplitViewController.ContentType);
  v10 = sub_1002EAAD8(a1, v8);
  sub_10000D628(v8, type metadata accessor for SceneSplitViewController.ContentType);
  v11 = &qword_100ADD000;
  v12 = &selRef_setRegion_;
  if ((v10 & 1) == 0)
  {
    goto LABEL_33;
  }

  if ([*&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView] isCollapsed])
  {
    v13 = [*&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController] viewControllers];
    v12 = sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v14 >> 62))
    {
      v11 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v11 != 0;
      if (v11 >= v15)
      {
        goto LABEL_5;
      }

      goto LABEL_50;
    }

    if (v14 < 0)
    {
      v27 = v14;
    }

    else
    {
      v27 = (v14 & 0xFFFFFFFFFFFFFF8);
    }

    v53 = v27;
    v28 = _CocoaArrayWrapper.endIndex.getter();
    if (v28 < 0)
    {
      goto LABEL_54;
    }

    v11 = v28;
    v15 = v28 != 0;
    if (_CocoaArrayWrapper.endIndex.getter() < v15)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (_CocoaArrayWrapper.endIndex.getter() >= v11)
    {
LABEL_5:
      v53 = a1;
      if ((v14 & 0xC000000000000001) != 0)
      {

        if (v11 >= 2)
        {
          v16 = v15;
          do
          {
            v17 = (v16 + 1);
            _ArrayBuffer._typeCheckSlowPath(_:)(v16);
            v16 = v17;
          }

          while (v11 != v17);
        }
      }

      else
      {
      }

      if (v14 >> 62)
      {
        _CocoaArrayWrapper.subscript.getter();
        v22 = v23;
        v15 = v24;
        v26 = v25;

        v11 = (v26 >> 1);
      }

      else
      {
        v22 = (v14 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      a1 = v53;
      if (v15 == v11)
      {
        swift_unknownObjectRelease();
        v12 = &selRef_setRegion_;
        v11 = &qword_100ADD000;
LABEL_33:
        v20 = sub_10000D79C(a1, 0);
        v21 = 0;
        goto LABEL_34;
      }

      if (v15 < v11)
      {
        v20 = *(v22 + 8 * v15);
        swift_unknownObjectRelease();
        v21 = 1;
        v12 = &selRef_setRegion_;
        v11 = &qword_100ADD000;
        goto LABEL_34;
      }

      goto LABEL_53;
    }

    __break(1u);
LABEL_31:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_32;
    }

    goto LABEL_12;
  }

  v18 = [*&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController] viewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v15 >> 62)
  {
    goto LABEL_31;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:

    goto LABEL_33;
  }

LABEL_12:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_51:
    v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_15;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return;
  }

  v19 = *(v15 + 32);
LABEL_15:
  v20 = v19;

  v21 = 1;
LABEL_34:
  v29 = *&v3[v11[45]];
  v30 = [v29 v12[264]];
  sub_1000F24EC(&unk_100AD4780, &unk_100941070);
  if (v30)
  {
    v31 = *&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController];
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_100941D60;
    v33 = *&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController];
    *(v32 + 32) = v33;
    *(v32 + 40) = v20;
    sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
    v34 = v33;
    v35 = v20;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v31 setViewControllers:isa animated:1];
  }

  else
  {
    v53 = *&v3[OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController];
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_100941D50;
    *(v37 + 32) = v20;
    sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
    v38 = v21;
    v39 = v3;
    v40 = v8;
    v41 = v9;
    v42 = a2;
    v43 = a1;
    v44 = v20;
    v45 = Array._bridgeToObjectiveC()().super.isa;

    [v53 setViewControllers:v45 animated:v38];

    a1 = v43;
    a2 = v42;
    v9 = v41;
    v8 = v40;
    v3 = v39;
    [v29 showColumn:2];
  }

  v46 = [v3 presentedViewController];
  if (v46)
  {
    v47 = v46;
    if (([v46 isBeingDismissed] & 1) == 0)
    {
      sub_10000D6E8(&v3[v9], v8, type metadata accessor for SceneSplitViewController.ContentType);
      v48 = sub_1002EAAD8(a1, v8);
      sub_10000D628(v8, type metadata accessor for SceneSplitViewController.ContentType);
      if ((v48 & 1) == 0)
      {
        [v3 dismissViewControllerAnimated:1 completion:0];
      }
    }
  }

  if (a2)
  {
    v56 = v20;
    sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
    v49 = v20;

    sub_1000F24EC(&qword_100ADD510, &qword_10094D5E0);
    if (swift_dynamicCast())
    {
      sub_100018480(v54, v57);
      v50 = *(*sub_10000CA14(v57, v57[3]) + OBJC_IVAR____TtC7Journal29JournalTimelineViewController_entryCollectionViewController);
      v51 = v50 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_pendingScrollRequest;
      *v51 = a2;
      *(v51 + 8) = 1;
      swift_retain_n();

      if (*(v50 + OBJC_IVAR____TtC7Journal36JournalEntryCollectionViewController_initialFetchStatus) == 2)
      {
        *v51 = 0;
        *(v51 + 8) = 0;

        sub_100304A74(a2, 1);
      }

      sub_10000BA7C(v57);
    }

    else
    {

      v55 = 0;
      memset(v54, 0, sizeof(v54));
      sub_100004F84(v54, &qword_100ADD518, &unk_10094D5E8);
    }
  }

  else
  {
  }

  sub_10000D6E8(a1, v8, type metadata accessor for SceneSplitViewController.ContentType);
  swift_beginAccess();
  sub_1002ED7F0(v8, &v3[v9]);
  swift_endAccess();
}

uint64_t sub_1002E9714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = *(a1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v3 setViewControllers:isa];

  return a2();
}

void sub_1002E9798(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) childViewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  swift_getKeyPath();
  if (v3 >> 62)
  {
LABEL_44:
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v3 & 0xC000000000000001;
  v6 = v3 + 32;

  while (2)
  {
    if (v3 >> 62)
    {
      v7 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if (v5)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
          goto LABEL_44;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v18 = v9;
      v10 = v9;
      swift_getAtKeyPath();

      if (v19)
      {
        v7 = v8;
        break;
      }

      v11 = __OFADD__(v8++, 1);
      if (v11)
      {
        goto LABEL_38;
      }
    }

    if (v4 != v7)
    {
      if (!v4)
      {
        goto LABEL_41;
      }

      do
      {
        v11 = __OFSUB__(v4--, 1);
        if (v11)
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v5)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_39;
          }

          if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v12 = *(v6 + 8 * v4);
        }

        v18 = v12;
        v13 = v12;
        swift_getAtKeyPath();
      }

      while (!v19);
      if (v5)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_42;
        }

        if (v4 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v14 = *(v6 + 8 * v4);
      }

      v18 = v14;
      v15 = v14;
      swift_getAtKeyPath();

      LOBYTE(v15) = [v19 respondsToSelector:a1];
      if ((v15 & 1) == 0)
      {
        continue;
      }

      __chkstk_darwin(v16);
      v18 = v4;
      sub_1002ED9A0(&v18, &v19);
    }

    break;
  }
}

void sub_1002E9ADC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 childViewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

unint64_t sub_1002E9B50@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (!result)
    {
      goto LABEL_8;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
LABEL_8:
      *a2 = result;
      return result;
    }
  }

  if (__OFSUB__(result--, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_12:
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_8;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v3 + 8 * result + 32);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

void sub_1002E9BEC(id *a1)
{
  v3 = *a1;
  swift_getAtKeyPath();
}

void sub_1002E9C44(uint64_t a1, uint64_t a2)
{
  sub_1000082B4(a2, v24, &qword_100AD13D0, &unk_100942DB0);
  v5 = v25;
  if (v25)
  {
    v6 = sub_10000CA14(v24, v25);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000BA7C(v24);
  }

  else
  {
    v11 = 0;
  }

  v12 = type metadata accessor for SceneSplitViewController(0);
  v23.receiver = v2;
  v23.super_class = v12;
  v13 = objc_msgSendSuper2(&v23, "canPerformAction:withSender:", a1, v11);
  swift_unknownObjectRelease();
  if ((v13 & 1) == 0)
  {
    sub_1002E9798(a1);
    if (v14)
    {
      v15 = v14;
      sub_1000082B4(a2, v24, &qword_100AD13D0, &unk_100942DB0);
      v16 = v25;
      if (v25)
      {
        v17 = sub_10000CA14(v24, v25);
        v18 = *(v16 - 8);
        v19 = __chkstk_darwin(v17);
        v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v21, v19);
        v22 = _bridgeAnythingToObjectiveC<A>(_:)();
        (*(v18 + 8))(v21, v16);
        sub_10000BA7C(v24);
      }

      else
      {
        v22 = 0;
      }

      [v15 canPerformAction:a1 withSender:v22];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1002EA0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  type metadata accessor for MainActor();
  v4[5] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[6] = v6;
  v4[7] = v5;

  return _swift_task_switch(sub_1002EA170, v6, v5);
}

uint64_t sub_1002EA170()
{
  if (qword_100ACFE28 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = *(*(qword_100B2F9E0 + 16) + OBJC_IVAR____TtC7Journal13CoreDataStack_container);
  v0[8] = v2;
  v3 = [v2 newBackgroundContext];
  v0[9] = v3;

  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_1002EA298;

  return static JournalDataUtilities.getTimelineEntriesIDs(fetchLimit:context:)(v1, &protocol witness table for MainActor, 0, 1, v3);
}

uint64_t sub_1002EA298(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;

  v4 = *(v2 + 56);
  v5 = *(v2 + 48);

  return _swift_task_switch(sub_1002EA3E0, v5, v4);
}

uint64_t sub_1002EA3E0()
{

  if (qword_100AD02B0 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[3];
  v3 = v0[4];
  v5 = qword_100B30290;
  sub_100325058(v4, 0, v1, v3, 1);

  v6 = v0[1];

  return v6();
}

BOOL sub_1002EA64C()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView) childViewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_19;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    if (__OFSUB__(v3--, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_9;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v3 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_18:
      __break(1u);
LABEL_19:
      v3 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v5 = *(v2 + 32 + 8 * v3);
LABEL_9:
      v6 = v5;
      v7 = [v5 accessibilityPerformMagicTap];

      if (v7)
      {
        __chkstk_darwin(v8);
        v11 = v3;
        sub_1002ED854(&v11, &v12);
        v9 = v12;
        goto LABEL_13;
      }
    }
  }

  v9 = 0;
LABEL_13:

  if (v9)
  {
  }

  return v9 != 0;
}

id sub_1002EA968(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_1002EAA00@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = sub_1002EDF84(*a1, *a2, a2[1], a2[2], a2[5]);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

id sub_1002EAA58@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1002EAA6C@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EAAD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JournalSidebarViewModel.JournalMembershipType(0);
  __chkstk_darwin(v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SceneSplitViewController.ContentType(0);
  __chkstk_darwin(v7 - 8);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&qword_100ADD4E8, &unk_10094D5B0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v14 = *(v13 + 56);
  sub_10000D6E8(a1, &v20 - v11, type metadata accessor for SceneSplitViewController.ContentType);
  sub_10000D6E8(a2, &v12[v14], type metadata accessor for SceneSplitViewController.ContentType);
  v15 = sub_1000F24EC(&unk_100AD4BA0, &unk_1009435D0);
  v16 = *(*(v15 - 8) + 48);
  v17 = v16(v12, 2, v15);
  if (!v17)
  {
    sub_10000D6E8(v12, v9, type metadata accessor for SceneSplitViewController.ContentType);
    if (!v16(&v12[v14], 2, v15))
    {
      sub_10001DB98(&v12[v14], v6, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      v18 = sub_100524B84(v9, v6);
      sub_10000D628(v6, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D628(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
      sub_10000D628(v12, type metadata accessor for SceneSplitViewController.ContentType);
      return v18 & 1;
    }

    sub_10000D628(v9, type metadata accessor for JournalSidebarViewModel.JournalMembershipType);
    goto LABEL_9;
  }

  if (v17 == 1)
  {
    if (v16(&v12[v14], 2, v15) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v16(&v12[v14], 2, v15) != 2)
  {
LABEL_9:
    sub_100004F84(v12, &qword_100ADD4E8, &unk_10094D5B0);
    v18 = 0;
    return v18 & 1;
  }

  sub_10000D628(v12, type metadata accessor for SceneSplitViewController.ContentType);
  v18 = 1;
  return v18 & 1;
}

void sub_1002EADDC(void *a1, void *a2)
{
  v4 = swift_allocObject();
  v4[2] = DebugData.init(name:);
  v4[3] = 0;
  v4[4] = a2;
  v5 = a2;
  v6 = [a1 transitionCoordinator];
  if (v6)
  {
    v7 = v6;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1001754D4;
    *(v8 + 24) = v4;
    aBlock[4] = sub_1000F560C;
    aBlock[5] = v8;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E6808;
    aBlock[3] = &unk_100A65808;
    v9 = _Block_copy(aBlock);

    [v7 animateAlongsideTransition:0 completion:v9];
    _Block_release(v9);

    swift_unknownObjectRelease();
  }

  else
  {
    v10 = UIAccessibilityLayoutChangedNotification;
    v11 = [v5 view];
    UIAccessibilityPostNotification(v10, v11);
  }
}

void sub_1002EAF9C(void *a1, char a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a4;
  if (_UISolariumEnabled())
  {
    v12 = [objc_opt_self() currentTraitCollection];
    v13 = [v12 userInterfaceIdiom];

    if (v13 == 1)
    {
      (*(v9 + 104))(v11, enum case for JournalFeatureFlags.inspectorColumn(_:), v8);
      v15 = JournalFeatureFlags.isEnabled.getter();
      (*(v9 + 8))(v11, v8);
      if ((v15 & 1) == 0)
      {

        return;
      }
    }

    else if (v13 != 5)
    {
      goto LABEL_4;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v17 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_100941D50;
      *(v18 + 32) = a1;
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      v19 = v17;
      v20 = a1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v19 setViewControllers:isa animated:a2 & 1];
    }

    else
    {
      v22 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
      v23 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_100941D50;
      *(v24 + 32) = a1;
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      v25 = v22;
      v26 = a1;
      v27 = v25;
      v28 = Array._bridgeToObjectiveC()().super.isa;

      [v23 setViewControllers:v28];

      v29 = swift_allocObject();
      v29[2] = sub_1002E96F4;
      v29[3] = 0;
      v29[4] = v27;
      if (a2)
      {
        v19 = v27;
        [v19 showColumn:4];
      }

      else
      {
        v30 = objc_opt_self();
        v31 = swift_allocObject();
        *(v31 + 16) = sub_1002EE210;
        *(v31 + 24) = v29;
        aBlock[4] = sub_100177C4C;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001A7D4;
        aBlock[3] = &unk_100A65790;
        v32 = _Block_copy(aBlock);
        v19 = v27;

        [v30 performWithoutAnimation:v32];
        _Block_release(v32);
        LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

        if (v30)
        {
          __break(1u);
          return;
        }
      }
    }

    v33 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
    [v33 setMaximumInspectorColumnWidth:280.0];
    [v33 setMinimumInspectorColumnWidth:280.0];
    v34 = v36;
    sub_1002EADDC(v19, v34);

    swift_unknownObjectWeakAssign();
    return;
  }

LABEL_4:
  v14 = v36;
}

void sub_1002EB4A8(void *a1, void (*a2)(void), uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = a4;

  v9 = a4;
  v10 = [a1 transitionCoordinator];
  if (v10)
  {
    v11 = v10;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_100177CB8;
    *(v12 + 24) = v8;
    aBlock[4] = sub_1000F560C;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1002E6808;
    aBlock[3] = &unk_100A65F88;
    v13 = _Block_copy(aBlock);

    [v11 animateAlongsideTransition:0 completion:v13];
    _Block_release(v13);

    swift_unknownObjectRelease();
  }

  else
  {
    a2();
    v14 = UIAccessibilityLayoutChangedNotification;
    v15 = [v9 view];
    UIAccessibilityPostNotification(v14, v15);
  }
}

void sub_1002EB680(void *a1, char a2, uint64_t a3, void (*a4)(void), uint64_t a5, void *a6)
{
  v12 = type metadata accessor for JournalFeatureFlags();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  v16 = a6;
  if (_UISolariumEnabled())
  {
    v42 = a4;
    v17 = [objc_opt_self() currentTraitCollection];
    v18 = [v17 userInterfaceIdiom];

    if (v18 == 1)
    {
      (*(v13 + 104))(v15, enum case for JournalFeatureFlags.inspectorColumn(_:), v12);
      v19 = JournalFeatureFlags.isEnabled.getter();
      (*(v13 + 8))(v15, v12);
      if ((v19 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (v18 != 5)
    {
      goto LABEL_4;
    }

    v20 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorRootController;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v22 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_100941D50;
      *(v23 + 32) = a1;
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      v24 = v22;
      v25 = a1;
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v24 setViewControllers:isa animated:a2 & 1];

      v27 = v42;
    }

    else
    {
      v41 = v20;
      v28 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
      v29 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController);
      sub_1000F24EC(&unk_100AD4780, &unk_100941070);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_100941D50;
      *(v30 + 32) = a1;
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      v31 = v28;
      v32 = a1;
      v33 = v31;
      v34 = Array._bridgeToObjectiveC()().super.isa;

      [v29 setViewControllers:v34];

      v35 = swift_allocObject();
      v35[2] = sub_1002E96F4;
      v35[3] = 0;
      v35[4] = v33;
      if (a2)
      {
        v24 = v33;
        [v24 showColumn:4];
      }

      else
      {
        v36 = objc_opt_self();
        v37 = swift_allocObject();
        *(v37 + 16) = sub_1002EE210;
        *(v37 + 24) = v35;
        aBlock[4] = sub_100177C4C;
        aBlock[5] = v37;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_10001A7D4;
        aBlock[3] = &unk_100A65F10;
        v38 = _Block_copy(aBlock);
        v24 = v33;

        [v36 performWithoutAnimation:v38];
        _Block_release(v38);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          return;
        }
      }

      v27 = v42;
    }

    v40 = *(a3 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView);
    [v40 setMaximumInspectorColumnWidth:280.0];
    [v40 setMinimumInspectorColumnWidth:280.0];

    v16 = v16;
    sub_1002EB4A8(v24, v27, a5, v16);

    swift_unknownObjectWeakAssign();
LABEL_15:

    return;
  }

LABEL_4:
}

void sub_1002EBBC8(char a1, char *a2, void *a3)
{
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  a3;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    (*(v7 + 104))(v9, enum case for JournalFeatureFlags.inspectorColumn(_:), v6);
    v13 = JournalFeatureFlags.isEnabled.getter();
    (*(v7 + 8))(v9, v6);
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v12 != 5)
  {
LABEL_4:

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100170C4C(1);
LABEL_6:

    return;
  }

  v15 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
  v16 = swift_allocObject();
  v16[2] = sub_1002E9704;
  v16[3] = 0;
  v16[4] = v15;
  if (a1)
  {
    [v15 hideColumn:4];

LABEL_13:
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = sub_10017685C;
    v21[4] = v10;

    v22 = a2;
    v23 = [v15 transitionCoordinator];
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100177CC0;
      *(v25 + 24) = v21;
      v33 = sub_1000F560C;
      v34 = v25;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002E6808;
      v32 = &unk_100A65920;
      v26 = _Block_copy(&aBlock);

      [v24 animateAlongsideTransition:0 completion:v26];

      _Block_release(v26);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = *&v22[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v27 setViewControllers:isa];

      sub_100170C4C(1);
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_6;
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002EE210;
  *(v18 + 24) = v16;
  v33 = sub_100177C4C;
  v34 = v18;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10001A7D4;
  v32 = &unk_100A658A8;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

unint64_t sub_1002EC0E8()
{
  result = qword_100ADD4B0;
  if (!qword_100ADD4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD4B0);
  }

  return result;
}

unint64_t sub_1002EC13C()
{
  result = qword_100ADD4B8;
  if (!qword_100ADD4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD4B8);
  }

  return result;
}

void sub_1002EC190(char a1, char *a2, void *a3)
{
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  a3;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    (*(v7 + 104))(v9, enum case for JournalFeatureFlags.inspectorColumn(_:), v6);
    v13 = JournalFeatureFlags.isEnabled.getter();
    (*(v7 + 8))(v9, v6);
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v12 != 5)
  {
LABEL_4:

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100170C4C(1);
LABEL_6:

    return;
  }

  v15 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
  v16 = swift_allocObject();
  v16[2] = sub_1002E9704;
  v16[3] = 0;
  v16[4] = v15;
  if (a1)
  {
    [v15 hideColumn:4];

LABEL_13:
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = sub_100177978;
    v21[4] = v10;

    v22 = a2;
    v23 = [v15 transitionCoordinator];
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100177CC0;
      *(v25 + 24) = v21;
      v33 = sub_1000F560C;
      v34 = v25;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002E6808;
      v32 = &unk_100A65D80;
      v26 = _Block_copy(&aBlock);

      [v24 animateAlongsideTransition:0 completion:v26];

      _Block_release(v26);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = *&v22[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v27 setViewControllers:isa];

      sub_100170C4C(1);
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_6;
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002EE210;
  *(v18 + 24) = v16;
  v33 = sub_100177C4C;
  v34 = v18;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10001A7D4;
  v32 = &unk_100A65D08;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002EC6B0(char a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if (_UISolariumEnabled())
  {
    v10 = [objc_opt_self() currentTraitCollection];
    v11 = [v10 userInterfaceIdiom];

    if (v11 == 1)
    {
      (*(v7 + 104))(v9, enum case for JournalFeatureFlags.inspectorColumn(_:), v6);
      v12 = JournalFeatureFlags.isEnabled.getter();
      (*(v7 + 8))(v9, v6);
      if ((v12 & 1) == 0)
      {
LABEL_20:

        return;
      }
    }

    else if (v11 != 5)
    {
      goto LABEL_4;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {

      v14 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
      v15 = swift_allocObject();
      v15[2] = sub_1002E9704;
      v15[3] = 0;
      v15[4] = v14;
      if (a1)
      {
        [v14 hideColumn:4];
      }

      else
      {
        v19 = objc_opt_self();
        v20 = swift_allocObject();
        *(v20 + 16) = sub_1002EE210;
        *(v20 + 24) = v15;
        v38 = sub_100177C4C;
        v39 = v20;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = sub_10001A7D4;
        v37 = &unk_100A65BF0;
        v21 = _Block_copy(&aBlock);
        v22 = v14;

        [v19 performWithoutAnimation:v21];
        _Block_release(v21);
        LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

        if (v19)
        {
          __break(1u);
          return;
        }
      }

      v23 = swift_allocObject();
      v23[2] = a2;
      v23[3] = sub_100177980;
      v23[4] = a3;

      v24 = a2;
      v25 = [v14 transitionCoordinator];
      if (v25)
      {
        v26 = v25;
        v27 = swift_allocObject();
        *(v27 + 16) = sub_100177CC0;
        *(v27 + 24) = v23;
        v38 = sub_1000F560C;
        v39 = v27;
        aBlock = _NSConcreteStackBlock;
        v35 = 1107296256;
        v36 = sub_1002E6808;
        v37 = &unk_100A65C68;
        v28 = _Block_copy(&aBlock);

        [v26 animateAlongsideTransition:0 completion:v28];

        _Block_release(v28);
        swift_unknownObjectRelease();
      }

      else
      {
        v29 = *&v24[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
        sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v29 setViewControllers:isa];

        swift_beginAccess();
        v31 = swift_unknownObjectWeakLoadStrong();
        if (v31)
        {
          v32 = v31;
          v33 = sub_100658B00();

          sub_1002B40C8();
        }

        else
        {
        }
      }

      swift_unknownObjectWeakAssign();
    }

    else
    {
      swift_beginAccess();
      v16 = swift_unknownObjectWeakLoadStrong();
      if (v16)
      {
        v17 = v16;
        v18 = sub_100658B00();

        sub_1002B40C8();

        return;
      }
    }

    goto LABEL_20;
  }

LABEL_4:
}

void sub_1002ECC0C(char a1, char *a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for JournalFeatureFlags();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;

  v13 = a4;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v14 = [objc_opt_self() currentTraitCollection];
  v15 = [v14 userInterfaceIdiom];

  if (v15 == 1)
  {
    (*(v9 + 104))(v11, enum case for JournalFeatureFlags.inspectorColumn(_:), v8);
    v16 = JournalFeatureFlags.isEnabled.getter();
    (*(v9 + 8))(v11, v8);
    if ((v16 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v15 != 5)
  {
LABEL_4:

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_1003BDDC0(a3, v13);
LABEL_6:

    return;
  }

  v18 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
  v19 = swift_allocObject();
  v19[2] = sub_1002E9704;
  v19[3] = 0;
  v19[4] = v18;
  if (a1)
  {
    [v18 hideColumn:4];

LABEL_13:
    v24 = swift_allocObject();
    v24[2] = a2;
    v24[3] = sub_10017762C;
    v24[4] = v12;

    v25 = a2;
    v26 = [v18 transitionCoordinator];
    if (v26)
    {
      v27 = v26;
      v28 = swift_allocObject();
      *(v28 + 16) = sub_100177CC0;
      *(v28 + 24) = v24;
      v38 = sub_1000F560C;
      v39 = v28;
      aBlock = _NSConcreteStackBlock;
      v35 = 1107296256;
      v36 = sub_1002E6808;
      v37 = &unk_100A65A38;
      v29 = _Block_copy(&aBlock);

      [v27 animateAlongsideTransition:0 completion:v29];

      _Block_release(v29);
      swift_unknownObjectRelease();
    }

    else
    {
      v30 = *&v25[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v30 setViewControllers:isa];

      sub_1003BDDC0(a3, v13);
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_6;
  }

  v33 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1002EE210;
  *(v20 + 24) = v19;
  v38 = sub_100177C4C;
  v39 = v20;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = sub_10001A7D4;
  v37 = &unk_100A659C0;
  v21 = _Block_copy(&aBlock);
  v22 = v18;

  [v33 performWithoutAnimation:v21];
  _Block_release(v21);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

void sub_1002ED128(char a1, char *a2, void *a3)
{
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  a3;
  if (!_UISolariumEnabled())
  {
    goto LABEL_4;
  }

  v11 = [objc_opt_self() currentTraitCollection];
  v12 = [v11 userInterfaceIdiom];

  if (v12 == 1)
  {
    (*(v7 + 104))(v9, enum case for JournalFeatureFlags.inspectorColumn(_:), v6);
    v13 = JournalFeatureFlags.isEnabled.getter();
    (*(v7 + 8))(v9, v6);
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (v12 != 5)
  {
LABEL_4:

    goto LABEL_6;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    sub_100170C4C(1);
LABEL_6:

    return;
  }

  v15 = *&a2[OBJC_IVAR____TtC7Journal24SceneSplitViewController_splitView];
  v16 = swift_allocObject();
  v16[2] = sub_1002E9704;
  v16[3] = 0;
  v16[4] = v15;
  if (a1)
  {
    [v15 hideColumn:4];

LABEL_13:
    v21 = swift_allocObject();
    v21[2] = a2;
    v21[3] = sub_100177978;
    v21[4] = v10;

    v22 = a2;
    v23 = [v15 transitionCoordinator];
    if (v23)
    {
      v24 = v23;
      v25 = swift_allocObject();
      *(v25 + 16) = sub_100177CC0;
      *(v25 + 24) = v21;
      v33 = sub_1000F560C;
      v34 = v25;
      aBlock = _NSConcreteStackBlock;
      v30 = 1107296256;
      v31 = sub_1002E6808;
      v32 = &unk_100A65B50;
      v26 = _Block_copy(&aBlock);

      [v24 animateAlongsideTransition:0 completion:v26];

      _Block_release(v26);
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = *&v22[OBJC_IVAR____TtC7Journal24SceneSplitViewController_inspectorNavigationController];
      sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v27 setViewControllers:isa];

      sub_100170C4C(1);
    }

    swift_unknownObjectWeakAssign();
    goto LABEL_6;
  }

  v17 = objc_opt_self();
  v18 = swift_allocObject();
  *(v18 + 16) = sub_1002EE210;
  *(v18 + 24) = v16;
  v33 = sub_100177C4C;
  v34 = v18;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_10001A7D4;
  v32 = &unk_100A65AD8;
  v19 = _Block_copy(&aBlock);
  v20 = v15;

  [v17 performWithoutAnimation:v19];
  _Block_release(v19);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
}

uint64_t sub_1002ED648(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SceneSplitViewController.ContentType(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100032ECC;

  return sub_1002E8640(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1002ED780(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100ADD1F0, &unk_10094D360);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED7F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SceneSplitViewController.ContentType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002ED874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1002EA0D8(a1, v4, v5, v6);
}

unint64_t sub_1002ED934()
{
  result = qword_100ADD528;
  if (!qword_100ADD528)
  {
    sub_1000F2A18(&unk_100ADD530, &qword_10094D610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD528);
  }

  return result;
}

uint64_t sub_1002ED9C0()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController);
  v3 = [v2 viewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController);
  v5 = [v4 viewControllers];
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1006ADCA0(v6);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v2 setViewControllers:isa];

  v8 = Array._bridgeToObjectiveC()().super.isa;
  [v4 setViewControllers:v8];

  v9 = *(v1 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  [v9 setViewControllers:v10];

  return 2;
}

unint64_t sub_1002EDB30()
{
  v1 = type metadata accessor for SceneSplitViewController.ContentType(0);
  *&v2 = __chkstk_darwin(v1 - 8).n128_u64[0];
  v4 = &v32[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_compactNavigationController);
  v6 = [v5 viewControllers];
  sub_1000065A8(0, &qword_100AD4C80, UIViewController_ptr);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = v8 != 0;
    if (v8 >= v9)
    {
      goto LABEL_3;
    }

    goto LABEL_32;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if ((result & 0x8000000000000000) == 0)
  {
    v8 = result;
    v9 = result != 0;
    if (_CocoaArrayWrapper.endIndex.getter() >= v9)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= v8)
      {
LABEL_3:
        if ((v7 & 0xC000000000000001) != 0)
        {

          if (v8 >= 2)
          {
            v10 = v9;
            do
            {
              v11 = v10 + 1;
              _ArrayBuffer._typeCheckSlowPath(_:)(v10);
              v10 = v11;
            }

            while (v8 != v11);
          }
        }

        else
        {
        }

        if (v7 >> 62)
        {
          v12 = _CocoaArrayWrapper.subscript.getter();
          v13 = v15;
          v9 = v16;
          v14 = v17;

          if ((v14 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v12 = v7 & 0xFFFFFFFFFFFFFF8;
          v13 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
          v14 = (2 * v8) | 1;
          if ((v14 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        type metadata accessor for __ContiguousArrayStorageBase();
        swift_unknownObjectRetain_n();
        v20 = swift_dynamicCastClass();
        if (!v20)
        {
          swift_unknownObjectRelease();
          v20 = _swiftEmptyArrayStorage;
        }

        v21 = *(v20 + 2);

        if (__OFSUB__(v14 >> 1, v9))
        {
          __break(1u);
        }

        else if (v21 == (v14 >> 1) - v9)
        {
          v19 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (v19)
          {
LABEL_21:
            v33 = v19;
            if ((v19 & 0x8000000000000000) == 0 && (v19 & 0x4000000000000000) == 0)
            {
              if (!*(v19 + 16))
              {
LABEL_24:
                v22 = OBJC_IVAR____TtC7Journal24SceneSplitViewController_lastDisplayedContentType;
                swift_beginAccess();
                sub_10000D6E8(v0 + v22, v4, type metadata accessor for SceneSplitViewController.ContentType);
                sub_10000D79C(v4, 0);
                sub_10000D628(v4, type metadata accessor for SceneSplitViewController.ContentType);
                specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
                if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
                }

                specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              }

LABEL_27:
              isa = Array._bridgeToObjectiveC()().super.isa;
              [v5 setViewControllers:isa];

              v24 = *(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_primaryNavigationController);
              sub_1000F24EC(&unk_100AD4780, &unk_100941070);
              v25 = swift_allocObject();
              *(v25 + 16) = xmmword_100941D50;
              v26 = *(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_sidebarController);
              *(v25 + 32) = v26;
              v27 = v26;
              v28 = Array._bridgeToObjectiveC()().super.isa;

              [v24 setViewControllers:v28];

              v29 = *(v0 + OBJC_IVAR____TtC7Journal24SceneSplitViewController_secondaryNavigationController);
              v30 = Array._bridgeToObjectiveC()().super.isa;

              [v29 setViewControllers:v30];

              return 1;
            }

LABEL_33:
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
              goto LABEL_24;
            }

            goto LABEL_27;
          }

          v19 = _swiftEmptyArrayStorage;
LABEL_20:
          swift_unknownObjectRelease();
          goto LABEL_21;
        }

        swift_unknownObjectRelease_n();
LABEL_13:
        sub_10061003C(v12, v13, v9, v14);
        v19 = v18;
        goto LABEL_20;
      }

      __break(1u);
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002EDF84(unint64_t result, uint64_t a2, void (*a3)(void **__return_ptr, id *), uint64_t a4, void (*a5)(void **__return_ptr, id *))
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v7 = *(a2 + 8 * result + 32);
LABEL_5:
    v8 = v7;
    v10 = v7;
    a3(&v11, &v10);

    v9 = v11;
    v10 = v11;
    a5(&v11, &v10);

    return v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002EE074()
{
  result = qword_100ADD640;
  if (!qword_100ADD640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD640);
  }

  return result;
}

unint64_t sub_1002EE0CC()
{
  result = qword_100ADD648;
  if (!qword_100ADD648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD648);
  }

  return result;
}

unint64_t sub_1002EE124()
{
  result = qword_100ADD650;
  if (!qword_100ADD650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD650);
  }

  return result;
}

double sub_1002EE240@<D0>(double *a3@<X8>)
{
  sub_1000F24EC(&qword_100ADD710, &qword_10094DC18);
  State.wrappedValue.getter();
  static Animation.easeInOut(duration:)();
  Animation.repeatForever(autoreverses:)();

  v5 = Animation.delay(_:)();

  State.wrappedValue.getter();
  result = v7;
  *a3 = v7;
  *(a3 + 1) = v5;
  a3[2] = v7;
  return result;
}

__n128 sub_1002EE330@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_1000F24EC(&qword_100AE1670, &qword_10094AFF0);
  __chkstk_darwin(v2 - 8);
  v4 = v19 - v3;
  v5 = type metadata accessor for Font.TextStyle();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v9 = static Color.red.getter();
  KeyPath = swift_getKeyPath();
  (*(v6 + 104))(v8, enum case for Font.TextStyle.title3(_:), v5);
  v11 = enum case for Font.Design.serif (_:);
  v12 = type metadata accessor for Font.Design();
  v13 = *(v12 - 8);
  (*(v13 + 104))(v4, v11, v12);
  (*(v13 + 56))(v4, 0, 1, v12);
  static Font.Weight.regular.getter();
  v14 = static Font.system(_:design:weight:)();
  sub_1002EEA90(v4);
  (*(v6 + 8))(v8, v5);
  v15 = swift_getKeyPath();
  v16 = v19[5];
  *(a1 + 64) = v19[4];
  *(a1 + 80) = v16;
  *(a1 + 96) = v19[6];
  v17 = v19[1];
  *a1 = v19[0];
  *(a1 + 16) = v17;
  result = v19[3];
  *(a1 + 32) = v19[2];
  *(a1 + 48) = result;
  *(a1 + 112) = KeyPath;
  *(a1 + 120) = v9;
  *(a1 + 128) = v15;
  *(a1 + 136) = v14;
  return result;
}

uint64_t sub_1002EE5BC@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1000F24EC(&qword_100ADD6B0, &unk_10094DBC8);
  swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v5;

  sub_1000F24EC(&qword_100ADD6B8, &qword_10094DBF0);
  sub_1000F24EC(&qword_100ADD6C0, &qword_10094DBF8);
  sub_1000AAF00();
  sub_1002EE75C();
  ForEach<>.init(_:id:content:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  v8 = (a2 + *(sub_1000F24EC(&qword_100ADD708, &qword_10094DC10) + 36));
  *v8 = sub_1002EE8F4;
  v8[1] = v7;
  v8[2] = 0;
  v8[3] = 0;
}

unint64_t sub_1002EE75C()
{
  result = qword_100ADD6D8;
  if (!qword_100ADD6D8)
  {
    sub_1000F2A18(&qword_100ADD6C0, &qword_10094DBF8);
    sub_1002EE814();
    sub_10000B58C(&qword_100ADD6F8, &qword_100ADD700, &qword_10094DC08, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6D8);
  }

  return result;
}

unint64_t sub_1002EE814()
{
  result = qword_100ADD6E0;
  if (!qword_100ADD6E0)
  {
    sub_1000F2A18(&qword_100ADD6E8, &qword_10094DC00);
    sub_1002EE8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6E0);
  }

  return result;
}

unint64_t sub_1002EE8A0()
{
  result = qword_100ADD6F0;
  if (!qword_100ADD6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD6F0);
  }

  return result;
}

unint64_t sub_1002EE964()
{
  result = qword_100ADD718;
  if (!qword_100ADD718)
  {
    sub_1000F2A18(&qword_100ADD708, &qword_10094DC10);
    sub_10000B58C(&qword_100ADD720, &qword_100ADD728, &qword_10094DC30, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD718);
  }

  return result;
}

uint64_t sub_1002EEA38@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1002EEA90(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AE1670, &qword_10094AFF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002EEAF8()
{
  result = qword_100ADD730;
  if (!qword_100ADD730)
  {
    sub_1000F2A18(&qword_100ADD738, &qword_10094DCF0);
    sub_1002EEBB0();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0, &qword_10094CE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD730);
  }

  return result;
}

unint64_t sub_1002EEBB0()
{
  result = qword_100ADD740;
  if (!qword_100ADD740)
  {
    sub_1000F2A18(&qword_100ADD748, &qword_10094DCF8);
    sub_1002EEC68();
    sub_10000B58C(&qword_100AD28F0, &qword_100AD28F8, &unk_10094CDF0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD740);
  }

  return result;
}

unint64_t sub_1002EEC68()
{
  result = qword_100ADD750;
  if (!qword_100ADD750)
  {
    sub_1000F2A18(&qword_100ADD758, &qword_10094DD00);
    sub_1002EECF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD750);
  }

  return result;
}

unint64_t sub_1002EECF4()
{
  result = qword_100ADD760;
  if (!qword_100ADD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD760);
  }

  return result;
}

uint64_t type metadata accessor for RecordingButton(uint64_t a1)
{
  result = qword_100ADD7C8;
  if (!qword_100ADD7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002EEDBC(uint64_t a1)
{
  sub_100280704(319, &qword_100ADB020, &type metadata for Bool);
  if (v1 <= 0x3F)
  {
    sub_100280704(319, &qword_100ADD7D8, &type metadata for RecordingViewModel.PresentationStyle);
    if (v2 <= 0x3F)
    {
      sub_1002EEEA4();
      if (v3 <= 0x3F)
      {
        sub_100087C9C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1002EEEA4()
{
  if (!qword_100ADD7E0)
  {
    v0 = type metadata accessor for AccessibilityFocusState();
    if (!v1)
    {
      atomic_store(v0, &qword_100ADD7E0);
    }
  }
}

uint64_t sub_1002EEF18()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 8);
  if (*(v0 + 16) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

uint64_t sub_1002EF060()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    return v9[15];
  }

  return v5;
}

uint64_t sub_1002EF1A8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) != 1)
  {

    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v7 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v7);
    LOBYTE(v5) = v9[15];
  }

  return v5 & 1;
}

BOOL sub_1002EF2F0()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    if (v9[15] != 1)
    {
      return 0;
    }
  }

  return *v0 != 0;
}

double sub_1002EF45C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = *(v0 + 24);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    v6 = v10[15];
  }

  result = 3.0;
  if (v6 == 2)
  {
    return 2.0;
  }

  return result;
}

double sub_1002EF5B8()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 24);
  if (*(v0 + 32) == 1)
  {
    v6 = *(v0 + 24);
  }

  else
  {

    static os_log_type_t.fault.getter();
    v7 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v8 = sub_1000467F0(v5, 0);
    (*(v2 + 8))(v4, v1, v8);
    v6 = v10[15];
  }

  result = 6.0;
  if (v6 == 2)
  {
    return 4.0;
  }

  return result;
}

uint64_t sub_1002EF714@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = sub_1000F24EC(&qword_100ADD9E0, &qword_10094DF10);
  __chkstk_darwin(v2);
  v4 = (&v66 - v3);
  v69 = sub_1000F24EC(&qword_100ADD9E8, &qword_10094DF18);
  __chkstk_darwin(v69);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v66 - v8;
  v66 = sub_1000F24EC(&qword_100ADD9F0, &qword_10094DF20);
  __chkstk_darwin(v66);
  v11 = &v66 - v10;
  v67 = sub_1000F24EC(&qword_100ADD9F8, &qword_10094DF28);
  __chkstk_darwin(v67);
  v13 = &v66 - v12;
  v14 = sub_1000F24EC(&qword_100ADDA00, &qword_10094DF30);
  __chkstk_darwin(v14);
  v16 = &v66 - v15;
  v68 = sub_1000F24EC(&qword_100ADDA08, &qword_10094DF38);
  __chkstk_darwin(v68);
  v18 = &v66 - v17;
  if (sub_1002EF060() == 2)
  {
    v19 = 32.0;
  }

  else
  {
    v19 = 60.0;
  }

  if (sub_1002EF2F0())
  {
    sub_1002EF060();
  }

  sub_1002EF5B8();
  if (!*v1)
  {
    v38 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v71[23] = v74;
    *&v71[7] = v73;
    *&v71[55] = v76;
    *&v71[71] = v77;
    *&v71[87] = v78;
    *&v71[103] = v79;
    v72 = 0;
    *&v71[39] = v75;
    *v16 = v38;
    *(v16 + 1) = v40;
    *(v16 + 2) = v42;
    *(v16 + 3) = v44;
    *(v16 + 4) = v46;
    v16[40] = 0;
    v47 = *&v71[80];
    *(v16 + 105) = *&v71[64];
    *(v16 + 121) = v47;
    *(v16 + 137) = *&v71[96];
    *(v16 + 19) = *&v71[111];
    v48 = *&v71[16];
    *(v16 + 41) = *v71;
    *(v16 + 57) = v48;
    v49 = *&v71[48];
    *(v16 + 73) = *&v71[32];
    *(v16 + 89) = v49;
    swift_storeEnumTagMultiPayload();
    sub_1000F24EC(&qword_100ADDA20, &qword_10094DF40);
    sub_1002F2D3C();
    sub_1002F2E54();
    _ConditionalContent<>.init(storage:)();
    v50 = &qword_100ADDA08;
    v51 = &qword_10094DF38;
    sub_1000082B4(v18, v13, &qword_100ADDA08, &qword_10094DF38);
    swift_storeEnumTagMultiPayload();
    sub_1002F2CB0();
    sub_1002F2FE4();
    _ConditionalContent<>.init(storage:)();
    v35 = v18;
LABEL_11:
    v36 = v50;
    v37 = v51;
    return sub_100004F84(v35, v36, v37);
  }

  if (*v1 != 1)
  {
    v52 = v19 * 0.5;
    v53 = *(type metadata accessor for RoundedRectangle() + 20);
    v54 = enum case for RoundedCornerStyle.continuous(_:);
    v55 = type metadata accessor for RoundedCornerStyle();
    (*(*(v55 - 8) + 104))(v4 + v53, v54, v55);
    *v4 = v52;
    v4[1] = v52;
    LOBYTE(v54) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v56 = v4 + *(v2 + 36);
    *v56 = v54;
    *(v56 + 1) = v57;
    *(v56 + 2) = v58;
    *(v56 + 3) = v59;
    *(v56 + 4) = v60;
    v56[40] = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    sub_100021CEC(v4, v6, &qword_100ADD9E0, &qword_10094DF10);
    v61 = &v6[*(v69 + 36)];
    v62 = v78;
    *(v61 + 4) = v77;
    *(v61 + 5) = v62;
    *(v61 + 6) = v79;
    v63 = v74;
    *v61 = v73;
    *(v61 + 1) = v63;
    v64 = v76;
    *(v61 + 2) = v75;
    *(v61 + 3) = v64;
    v50 = &qword_100ADD9E8;
    v51 = &qword_10094DF18;
    sub_100021CEC(v6, v9, &qword_100ADD9E8, &qword_10094DF18);
    sub_1000082B4(v9, v13, &qword_100ADD9E8, &qword_10094DF18);
    swift_storeEnumTagMultiPayload();
    sub_1002F2CB0();
    sub_1002F2FE4();
    _ConditionalContent<>.init(storage:)();
    v35 = v9;
    goto LABEL_11;
  }

  v20 = *(type metadata accessor for RoundedRectangle() + 20);
  v21 = enum case for RoundedCornerStyle.continuous(_:);
  v22 = type metadata accessor for RoundedCornerStyle();
  (*(*(v22 - 8) + 104))(&v11[v20], v21, v22);
  __asm { FMOV            V0.2D, #4.0 }

  *v11 = _Q0;
  LOBYTE(v21) = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v28 = &v11[*(v2 + 36)];
  *v28 = v21;
  *(v28 + 1) = v29;
  *(v28 + 2) = v30;
  *(v28 + 3) = v31;
  *(v28 + 4) = v32;
  v28[40] = 0;
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v33 = &v11[*(v66 + 36)];
  v34 = v74;
  *v33 = v73;
  *(v33 + 1) = v34;
  *(v33 + 2) = v75;
  sub_1000082B4(v11, v16, &qword_100ADD9F0, &qword_10094DF20);
  swift_storeEnumTagMultiPayload();
  sub_1000F24EC(&qword_100ADDA20, &qword_10094DF40);
  sub_1002F2D3C();
  sub_1002F2E54();
  _ConditionalContent<>.init(storage:)();
  sub_1000082B4(v18, v13, &qword_100ADDA08, &qword_10094DF38);
  swift_storeEnumTagMultiPayload();
  sub_1002F2CB0();
  sub_1002F2FE4();
  _ConditionalContent<>.init(storage:)();
  sub_100004F84(v18, &qword_100ADDA08, &qword_10094DF38);
  v35 = v11;
  v36 = &qword_100ADD9F0;
  v37 = &qword_10094DF20;
  return sub_100004F84(v35, v36, v37);
}

uint64_t sub_1002EFF70@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = sub_1002EF1A8();
  v5 = sub_1002EEF18();
  if (!v3)
  {
LABEL_5:
    if (v5)
    {
      static Color.red.getter();
    }

    else
    {
      static Color.gray.getter();
    }

    goto LABEL_10;
  }

  if (v3 == 1)
  {
    if (v4)
    {
      static Color.clear.getter();
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  if (v5)
  {
    static Color.red.getter();
    Color.opacity(_:)();
  }

  else
  {
    static HierarchicalShapeStyle.tertiary.getter();
  }

LABEL_10:
  result = AnyShapeStyle.init<A>(_:)();
  *a1 = result;
  return result;
}

uint64_t sub_1002F0044()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*v0 != 1)
  {
    return 0;
  }

  v6 = *(v0 + 40);
  if (*(v0 + 48) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v8 = v3;

    static os_log_type_t.fault.getter();
    v9 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v10 = sub_1000467F0(v6, 0);
    (*(v2 + 8))(v5, v8, v10);
    if (v11[15] != 1)
    {
      return 0;
    }
  }

  return Image.init(systemName:)();
}

uint64_t sub_1002F01C4()
{
  v1 = *v0;
  v2 = sub_1002EF1A8();
  if (!v1)
  {
    if (qword_100AD0898 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v1 != 1)
  {
    if (qword_100AD0890 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v2)
  {
    if (qword_100AD0868 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (qword_100AD08A0 != -1)
  {
LABEL_12:
    swift_once();
  }

LABEL_11:
  sub_1000777B4();

  return Text.init<A>(_:)();
}

uint64_t sub_1002F031C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v3 = type metadata accessor for AccessibilityTraits();
  v56 = *(v3 - 8);
  v57 = v3;
  __chkstk_darwin(v3);
  v55 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessibilityChildBehavior();
  v52 = *(v5 - 8);
  v53 = v5;
  __chkstk_darwin(v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlainButtonStyle();
  v8 = *(v7 - 8);
  v48 = v7;
  v49 = v8;
  __chkstk_darwin(v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RecordingButton(0);
  v12 = *(v11 - 8);
  v54 = v11 - 8;
  v41 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v14 = sub_1000F24EC(&qword_100ADD828, &qword_10094DD78);
  v43 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v41 - v15;
  v17 = sub_1000F24EC(&qword_100ADD830, &qword_10094DD80);
  v44 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v41 - v18;
  v46 = sub_1000F24EC(&qword_100ADD838, &qword_10094DD88);
  v50 = *(v46 - 8);
  __chkstk_darwin(v46);
  v21 = &v41 - v20;
  v47 = sub_1000F24EC(&qword_100ADD840, &qword_10094DD90);
  __chkstk_darwin(v47);
  v42 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v45 = &v41 - v24;
  sub_1002F24E8(a1, &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecordingButton);
  v25 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v26 = swift_allocObject();
  sub_1002F1FB0(&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
  v59 = a1;
  sub_1000F24EC(&qword_100ADD848, &qword_10094DD98);
  sub_1002F207C();
  Button.init(action:label:)();
  PlainButtonStyle.init()();
  v27 = sub_10000B58C(&qword_100ADD8B8, &qword_100ADD828, &qword_10094DD78, &protocol conformance descriptor for Button<A>);
  v28 = sub_1002F2F9C(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
  v29 = v48;
  View.buttonStyle<A>(_:)();
  (*(v49 + 8))(v10, v29);
  (*(v43 + 8))(v16, v14);
  v30 = v51;
  static AccessibilityChildBehavior.ignore.getter();
  v60 = v14;
  v61 = v29;
  v62 = v27;
  v63 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.accessibilityElement(children:)();
  (*(v52 + 8))(v30, v53);
  (*(v44 + 8))(v19, v17);
  v32 = sub_1002F01C4();
  v34 = v33;
  LOBYTE(v28) = v35;
  v60 = v17;
  v61 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v36 = v42;
  v37 = v46;
  View.accessibilityLabel(_:)();
  sub_1000594D0(v32, v34, v28 & 1);

  (*(v50 + 8))(v21, v37);
  v38 = v55;
  static AccessibilityTraits.isButton.getter();
  v39 = v45;
  ModifiedContent<>.accessibilityAddTraits(_:)();
  (*(v56 + 8))(v38, v57);
  sub_100004F84(v36, &qword_100ADD840, &qword_10094DD90);
  sub_1000F24EC(&qword_100ADD768, &qword_10094DD08);
  AccessibilityFocusState.projectedValue.getter();
  sub_1002F2330();
  View.accessibilityFocused(_:)();

  return sub_100004F84(v39, &qword_100ADD840, &qword_10094DD90);
}

uint64_t sub_1002F0AF0(_BYTE *a1)
{
  v2 = type metadata accessor for RecordingButton(0);
  (*&a1[*(v2 + 36)])();
  sub_1000F24EC(&qword_100ADD768, &qword_10094DD08);
  return AccessibilityFocusState.wrappedValue.setter();
}

uint64_t sub_1002F0B7C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_1000F24EC(&qword_100ADD890, &qword_10094DDB8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v30 - v4);
  v6 = sub_1000F24EC(&qword_100ADD880, &qword_10094DDB0);
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  v30 = sub_1000F24EC(&qword_100ADD870, &qword_10094DDA8);
  __chkstk_darwin(v30);
  v10 = &v30 - v9;
  v31 = sub_1000F24EC(&qword_100ADD860, &qword_10094DDA0);
  __chkstk_darwin(v31);
  v12 = &v30 - v11;
  sub_1002EF060();
  if (sub_1002EF2F0())
  {
    sub_1002EF060();
  }

  *v5 = static Alignment.center.getter();
  v5[1] = v13;
  v14 = sub_1000F24EC(&qword_100ADD8C8, &qword_10094DDD0);
  sub_1002F0F80(a1, v5 + *(v14 + 44));
  sub_1002EF2F0();
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  sub_100021CEC(v5, v8, &qword_100ADD890, &qword_10094DDB8);
  v15 = &v8[*(v6 + 36)];
  v16 = v34;
  *v15 = v33;
  *(v15 + 1) = v16;
  *(v15 + 2) = v35;
  sub_1002EF2F0();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  sub_100021CEC(v8, v10, &qword_100ADD880, &qword_10094DDB0);
  v17 = &v10[*(v30 + 36)];
  v18 = v41;
  *(v17 + 4) = v40;
  *(v17 + 5) = v18;
  *(v17 + 6) = v42;
  v19 = v37;
  *v17 = v36;
  *(v17 + 1) = v19;
  v20 = v39;
  *(v17 + 2) = v38;
  *(v17 + 3) = v20;
  v21 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v22 = *a1;
  sub_100021CEC(v10, v12, &qword_100ADD870, &qword_10094DDA8);
  v23 = &v12[*(v31 + 36)];
  *v23 = v21;
  v23[8] = v22;
  v24 = static Animation.spring(response:dampingFraction:blendDuration:)();
  v25 = sub_1002EF1A8();
  v26 = v12;
  v27 = v32;
  sub_100021CEC(v26, v32, &qword_100ADD860, &qword_10094DDA0);
  result = sub_1000F24EC(&qword_100ADD848, &qword_10094DD98);
  v29 = v27 + *(result + 36);
  *v29 = v24;
  *(v29 + 8) = v25 & 1;
  return result;
}

uint64_t sub_1002F0F80@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v118 = sub_1000F24EC(&qword_100ADD8D0, &qword_10094DDD8);
  __chkstk_darwin(v118);
  v117 = &v116 - v4;
  v128 = sub_1000F24EC(&qword_100ADD8D8, &qword_10094DDE0);
  __chkstk_darwin(v128);
  v119 = &v116 - v5;
  v126 = sub_1000F24EC(&qword_100ADD8E0, &qword_10094DDE8);
  __chkstk_darwin(v126);
  v127 = &v116 - v6;
  v124 = sub_1000F24EC(&qword_100ADD8E8, &qword_10094DDF0);
  v122 = *(v124 - 8);
  __chkstk_darwin(v124);
  v121 = &v116 - v7;
  v125 = sub_1000F24EC(&qword_100ADD8F0, &qword_10094DDF8);
  __chkstk_darwin(v125);
  v120 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v123 = &v116 - v10;
  v11 = sub_1000F24EC(&qword_100ADD8F8, &qword_10094DE00);
  __chkstk_darwin(v11 - 8);
  v138 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v116 - v14;
  v134 = sub_1000F24EC(&qword_100ADD900, &qword_10094DE08);
  __chkstk_darwin(v134);
  v137 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v142 = &v116 - v18;
  v19 = type metadata accessor for RoundedCornerStyle();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1000F24EC(&qword_100ADD908, &qword_10094DE10);
  v24 = v23 - 8;
  __chkstk_darwin(v23);
  v26 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v116 - v28;
  v132 = sub_1000F24EC(&qword_100ADD910, &qword_10094DE18);
  __chkstk_darwin(v132);
  v135 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v140 = &v116 - v32;
  v34 = __chkstk_darwin(v33);
  v141 = &v116 - v35;
  v130 = *(v20 + 104);
  (v130)(v29, enum case for RoundedCornerStyle.continuous(_:), v19, v34);
  *&v29[*(v24 + 64)] = 256;
  v133 = *a1;
  v136 = v15;
  if (v133 != 2)
  {
    v36 = static Color.gray.getter();
    goto LABEL_5;
  }

  if (sub_1002EEF18())
  {
    v36 = static Color.red.getter();
LABEL_5:
    *&v150 = v36;
    goto LABEL_7;
  }

  LODWORD(v150) = static HierarchicalShapeStyle.tertiary.getter();
LABEL_7:
  v131 = AnyShapeStyle.init<A>(_:)();
  sub_1002EF45C();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  sub_1000082B4(v29, v26, &qword_100ADD908, &qword_10094DE10);
  v37 = v140;
  sub_1002F24E8(v29, v140, &type metadata accessor for Capsule);
  (v130)(v22, enum case for RoundedCornerStyle.circular(_:), v19);
  v38 = static RoundedCornerStyle.== infix(_:_:)();
  (*(v20 + 8))(v22, v19);
  v39 = v168;
  v40 = v170;
  v41 = COERCE_UNSIGNED_INT64(v168 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v38 & 1) == 0);
  v129 = v171;
  v130 = a1;
  v42 = v172;
  v43 = v37 + *(v132 + 68);
  v44 = v43 + *(sub_1000F24EC(&qword_100ADD918, &qword_10094DE20) + 36);
  sub_1000082B4(v26, v44, &qword_100ADD908, &qword_10094DE10);
  v45 = static Alignment.center.getter();
  v47 = v46;
  sub_100004F84(v26, &qword_100ADD908, &qword_10094DE10);
  sub_100004F84(v29, &qword_100ADD908, &qword_10094DE10);
  v48 = (v44 + *(sub_1000F24EC(&qword_100ADD920, &qword_10094DE28) + 36));
  *v48 = v45;
  v48[1] = v47;
  *v43 = v41;
  v49 = v129;
  v50 = v169;
  *(v43 + 8) = v39;
  *(v43 + 16) = v50;
  *(v43 + 24) = v40;
  *(v43 + 32) = v49;
  *(v43 + 40) = v42;
  *(v43 + 48) = v131;
  *(v43 + 56) = 256;
  sub_100021CEC(v140, v141, &qword_100ADD910, &qword_10094DE18);
  v51 = v142;
  sub_1002EF714(v142);
  sub_1002EFF70(&v150);
  *(v51 + *(v134 + 36)) = v150;
  if (v133 == 2)
  {
    LocalizedStringKey.init(stringLiteral:)();
    v52 = Text.init(_:tableName:bundle:comment:)();
    v54 = v53;
    v56 = v55;
    v58 = v57;
    sub_1002EF5B8();
    v59 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v56 & 1;
    v165 = v56 & 1;
    v164 = 0;
    static Alignment.center.getter();
    _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
    *&v166[55] = v173[3];
    *&v166[71] = v173[4];
    *&v166[87] = v173[5];
    *&v166[103] = v173[6];
    *&v166[7] = v173[0];
    *&v166[23] = v173[1];
    *&v166[39] = v173[2];
    if (sub_1002EEF18())
    {
      v69 = static Color.red.getter();
    }

    else
    {
      v69 = static Color.white.getter();
    }

    v75 = v69;
    v76 = static Font.subheadline.getter();
    KeyPath = swift_getKeyPath();
    *&v143 = v52;
    *(&v143 + 1) = v54;
    LOBYTE(v144) = v68;
    *(&v144 + 1) = v58;
    LOBYTE(v145) = v59;
    *(&v145 + 1) = v61;
    *&v146 = v63;
    *(&v146 + 1) = v65;
    *&v147[0] = v67;
    BYTE8(v147[0]) = 0;
    *(&v147[4] + 9) = *&v166[64];
    *(&v147[5] + 9) = *&v166[80];
    *(&v147[6] + 9) = *&v166[96];
    *(v147 + 9) = *v166;
    *(&v147[1] + 9) = *&v166[16];
    *(&v147[2] + 9) = *&v166[32];
    *(&v147[3] + 9) = *&v166[48];
    *(&v147[7] + 1) = *&v166[111];
    *&v148 = v75;
    *(&v148 + 1) = KeyPath;
    v149 = v76;
    static Font.Weight.bold.getter();
    sub_1000F24EC(&qword_100ADD980, &qword_10094DE88);
    sub_1002F28CC();
    v78 = v121;
    View.fontWeight(_:)();
    v160 = v147[6];
    v161 = v147[7];
    v162 = v148;
    v163 = v149;
    v156 = v147[2];
    v157 = v147[3];
    v158 = v147[4];
    v159 = v147[5];
    v152 = v145;
    v153 = v146;
    v154 = v147[0];
    v155 = v147[1];
    v150 = v143;
    v151 = v144;
    sub_100004F84(&v150, &qword_100ADD980, &qword_10094DE88);
    v79 = v120;
    v80 = &v120[*(v125 + 36)];
    v81 = *(sub_1000F24EC(&qword_100ADD9C8, &qword_10094DEA0) + 28);
    v82 = enum case for Text.Case.uppercase(_:);
    v83 = type metadata accessor for Text.Case();
    v84 = *(v83 - 8);
    (*(v84 + 104))(v80 + v81, v82, v83);
    (*(v84 + 56))(v80 + v81, 0, 1, v83);
    *v80 = swift_getKeyPath();
    (*(v122 + 32))(v79, v78, v124);
    v85 = v123;
    sub_100021CEC(v79, v123, &qword_100ADD8F0, &qword_10094DDF8);
    sub_1000082B4(v85, v127, &qword_100ADD8F0, &qword_10094DDF8);
    swift_storeEnumTagMultiPayload();
    sub_1002F27D8();
    sub_1002F2B4C();
    v86 = v136;
    _ConditionalContent<>.init(storage:)();
    sub_100004F84(v85, &qword_100ADD8F0, &qword_10094DDF8);
    v87 = sub_1000F24EC(&qword_100ADD928, &qword_10094DE30);
    v88 = *(*(v87 - 8) + 56);
    v89 = v86;
LABEL_18:
    v88(v89, 0, 1, v87);
    goto LABEL_19;
  }

  v70 = sub_1002F0044();
  if (v70)
  {
    v71 = v70;
    v72 = sub_1002EEF18();
    v73 = v136;
    if (v72)
    {
      v74 = static Color.red.getter();
    }

    else
    {
      v74 = static Color.gray.getter();
    }

    v140 = v74;

    sub_1002EF5B8();
    v91 = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v93 = v92;
    v95 = v94;
    v97 = v96;
    v99 = v98;
    LOBYTE(v173[0]) = 0;
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    *&v167[7] = v150;
    *&v167[23] = v151;
    *&v167[39] = v152;
    v100 = v117;
    v101 = &v117[*(v118 + 36)];
    v102 = *(sub_1000F24EC(&qword_100AD21F8, &qword_10094CBA0) + 28);
    v103 = enum case for Image.Scale.large(_:);
    v104 = type metadata accessor for Image.Scale();
    (*(*(v104 - 8) + 104))(v101 + v102, v103, v104);
    *v101 = swift_getKeyPath();
    v105 = v140;
    *v100 = v71;
    *(v100 + 8) = v105;
    *(v100 + 16) = v91;
    *(v100 + 17) = v143;
    *(v100 + 20) = *(&v143 + 3);
    *(v100 + 24) = v93;
    *(v100 + 32) = v95;
    *(v100 + 40) = v97;
    *(v100 + 48) = v99;
    *(v100 + 56) = 0;
    *(v100 + 57) = *v167;
    *(v100 + 73) = *&v167[16];
    *(v100 + 89) = *&v167[32];
    *(v100 + 104) = *&v167[47];
    sub_1002F2550();
    v106 = v119;
    View.accessibilityHidden(_:)();
    sub_100004F84(v100, &qword_100ADD8D0, &qword_10094DDD8);
    sub_1000082B4(v106, v127, &qword_100ADD8D8, &qword_10094DDE0);
    swift_storeEnumTagMultiPayload();
    sub_1002F27D8();
    sub_1002F2B4C();
    v86 = v73;
    _ConditionalContent<>.init(storage:)();

    sub_100004F84(v106, &qword_100ADD8D8, &qword_10094DDE0);
    v87 = sub_1000F24EC(&qword_100ADD928, &qword_10094DE30);
    v88 = *(*(v87 - 8) + 56);
    v89 = v73;
    goto LABEL_18;
  }

  v90 = sub_1000F24EC(&qword_100ADD928, &qword_10094DE30);
  v86 = v136;
  (*(*(v90 - 8) + 56))(v136, 1, 1, v90);
LABEL_19:
  v107 = v141;
  v108 = v135;
  sub_1000082B4(v141, v135, &qword_100ADD910, &qword_10094DE18);
  v109 = v142;
  v110 = v137;
  sub_1000082B4(v142, v137, &qword_100ADD900, &qword_10094DE08);
  v111 = v138;
  sub_1000082B4(v86, v138, &qword_100ADD8F8, &qword_10094DE00);
  v112 = v86;
  v113 = v139;
  sub_1000082B4(v108, v139, &qword_100ADD910, &qword_10094DE18);
  v114 = sub_1000F24EC(&qword_100ADD930, &qword_10094DE38);
  sub_1000082B4(v110, v113 + *(v114 + 48), &qword_100ADD900, &qword_10094DE08);
  sub_1000082B4(v111, v113 + *(v114 + 64), &qword_100ADD8F8, &qword_10094DE00);
  sub_100004F84(v112, &qword_100ADD8F8, &qword_10094DE00);
  sub_100004F84(v109, &qword_100ADD900, &qword_10094DE08);
  sub_100004F84(v107, &qword_100ADD910, &qword_10094DE18);
  sub_100004F84(v111, &qword_100ADD8F8, &qword_10094DE00);
  sub_100004F84(v110, &qword_100ADD900, &qword_10094DE08);
  return sub_100004F84(v108, &qword_100ADD910, &qword_10094DE18);
}

uint64_t sub_1002F1F5C@<X0>(uint64_t a2@<X8>)
{
  *a2 = static HorizontalAlignment.center.getter();
  *(a2 + 8) = 0x4018000000000000;
  *(a2 + 16) = 0;
  v4 = sub_1000F24EC(&qword_100ADD820, &qword_10094DD70);
  return sub_1002F031C(v2, a2 + *(v4 + 44));
}

uint64_t sub_1002F1FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecordingButton(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F2014()
{
  v1 = *(type metadata accessor for RecordingButton(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_1002F0AF0(v2);
}

unint64_t sub_1002F207C()
{
  result = qword_100ADD850;
  if (!qword_100ADD850)
  {
    sub_1000F2A18(&qword_100ADD848, &qword_10094DD98);
    sub_1002F2134();
    sub_10000B58C(&qword_100ADD8A8, &qword_100ADD8B0, &qword_10094DDC8, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD850);
  }

  return result;
}

unint64_t sub_1002F2134()
{
  result = qword_100ADD858;
  if (!qword_100ADD858)
  {
    sub_1000F2A18(&qword_100ADD860, &qword_10094DDA0);
    sub_1002F21EC();
    sub_10000B58C(&qword_100ADD898, &qword_100ADD8A0, &qword_10094DDC0, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD858);
  }

  return result;
}

unint64_t sub_1002F21EC()
{
  result = qword_100ADD868;
  if (!qword_100ADD868)
  {
    sub_1000F2A18(&qword_100ADD870, &qword_10094DDA8);
    sub_1002F2278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD868);
  }

  return result;
}

unint64_t sub_1002F2278()
{
  result = qword_100ADD878;
  if (!qword_100ADD878)
  {
    sub_1000F2A18(&qword_100ADD880, &qword_10094DDB0);
    sub_10000B58C(&qword_100ADD888, &qword_100ADD890, &qword_10094DDB8, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD878);
  }

  return result;
}

unint64_t sub_1002F2330()
{
  result = qword_100ADD8C0;
  if (!qword_100ADD8C0)
  {
    sub_1000F2A18(&qword_100ADD840, &qword_10094DD90);
    sub_1000F2A18(&qword_100ADD830, &qword_10094DD80);
    sub_1000F2A18(&qword_100ADD828, &qword_10094DD78);
    type metadata accessor for PlainButtonStyle();
    sub_10000B58C(&qword_100ADD8B8, &qword_100ADD828, &qword_10094DD78, &protocol conformance descriptor for Button<A>);
    sub_1002F2F9C(&qword_100AD2918, &type metadata accessor for PlainButtonStyle, &protocol conformance descriptor for PlainButtonStyle);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1002F2F9C(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD8C0);
  }

  return result;
}

uint64_t sub_1002F24E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1002F2550()
{
  result = qword_100ADD938;
  if (!qword_100ADD938)
  {
    sub_1000F2A18(&qword_100ADD8D0, &qword_10094DDD8);
    sub_1002F2608();
    sub_10000B58C(&qword_100AD21F0, &qword_100AD21F8, &qword_10094CBA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD938);
  }

  return result;
}

unint64_t sub_1002F2608()
{
  result = qword_100ADD940;
  if (!qword_100ADD940)
  {
    sub_1000F2A18(&qword_100ADD948, &qword_10094DE70);
    sub_1002F2694();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD940);
  }

  return result;
}

unint64_t sub_1002F2694()
{
  result = qword_100ADD950;
  if (!qword_100ADD950)
  {
    sub_1000F2A18(&qword_100ADD958, &qword_10094DE78);
    sub_1002F2720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD950);
  }

  return result;
}

unint64_t sub_1002F2720()
{
  result = qword_100ADD960;
  if (!qword_100ADD960)
  {
    sub_1000F2A18(&qword_100ADD968, &qword_10094DE80);
    sub_10000B58C(&qword_100ADD970, &unk_100AE16B0, &qword_100952D00, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD960);
  }

  return result;
}

unint64_t sub_1002F27D8()
{
  result = qword_100ADD978;
  if (!qword_100ADD978)
  {
    sub_1000F2A18(&qword_100ADD8F0, &qword_10094DDF8);
    sub_1000F2A18(&qword_100ADD980, &qword_10094DE88);
    sub_1002F28CC();
    swift_getOpaqueTypeConformance2();
    sub_10000B58C(&qword_100ADD9C0, &qword_100ADD9C8, &qword_10094DEA0, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD978);
  }

  return result;
}

unint64_t sub_1002F28CC()
{
  result = qword_100ADD988;
  if (!qword_100ADD988)
  {
    sub_1000F2A18(&qword_100ADD980, &qword_10094DE88);
    sub_1002F2984();
    sub_10000B58C(&qword_100AD2760, &unk_100AE16A0, &qword_10094CE30, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD988);
  }

  return result;
}

unint64_t sub_1002F2984()
{
  result = qword_100ADD990;
  if (!qword_100ADD990)
  {
    sub_1000F2A18(&qword_100ADD998, &qword_10094DE90);
    sub_1002F2A3C();
    sub_10000B58C(&qword_100ADD970, &unk_100AE16B0, &qword_100952D00, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD990);
  }

  return result;
}

unint64_t sub_1002F2A3C()
{
  result = qword_100ADD9A0;
  if (!qword_100ADD9A0)
  {
    sub_1000F2A18(&qword_100ADD9A8, &qword_10094DE98);
    sub_1002F2AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD9A0);
  }

  return result;
}

unint64_t sub_1002F2AC8()
{
  result = qword_100ADD9B0;
  if (!qword_100ADD9B0)
  {
    sub_1000F2A18(&qword_100ADD9B8, &qword_1009592B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD9B0);
  }

  return result;
}

unint64_t sub_1002F2B4C()
{
  result = qword_100ADD9D0;
  if (!qword_100ADD9D0)
  {
    sub_1000F2A18(&qword_100ADD8D8, &qword_10094DDE0);
    sub_1002F2550();
    sub_1002F2F9C(&qword_100AD2200, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADD9D0);
  }

  return result;
}

uint64_t sub_1002F2C08(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100ADD9D8, &qword_10094DF08);
  __chkstk_darwin(v2 - 8);
  sub_1000082B4(a1, &v5 - v3, &qword_100ADD9D8, &qword_10094DF08);
  return EnvironmentValues.textCase.setter();
}

unint64_t sub_1002F2CB0()
{
  result = qword_100ADDA10;
  if (!qword_100ADDA10)
  {
    sub_1000F2A18(&qword_100ADDA08, &qword_10094DF38);
    sub_1002F2D3C();
    sub_1002F2E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA10);
  }

  return result;
}

unint64_t sub_1002F2D3C()
{
  result = qword_100ADDA18;
  if (!qword_100ADDA18)
  {
    sub_1000F2A18(&qword_100ADDA20, &qword_10094DF40);
    sub_1002F2DC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA18);
  }

  return result;
}

unint64_t sub_1002F2DC8()
{
  result = qword_100ADDA28;
  if (!qword_100ADDA28)
  {
    sub_1000F2A18(&qword_100ADDA30, &qword_10094DF48);
    sub_1002EECF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA28);
  }

  return result;
}

unint64_t sub_1002F2E54()
{
  result = qword_100ADDA38;
  if (!qword_100ADDA38)
  {
    sub_1000F2A18(&qword_100ADD9F0, &qword_10094DF20);
    sub_1002F2EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA38);
  }

  return result;
}

unint64_t sub_1002F2EE0()
{
  result = qword_100ADDA40;
  if (!qword_100ADDA40)
  {
    sub_1000F2A18(&qword_100ADD9E0, &qword_10094DF10);
    sub_1002F2F9C(&qword_100ADDA48, &type metadata accessor for RoundedRectangle, &protocol conformance descriptor for RoundedRectangle);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA40);
  }

  return result;
}

uint64_t sub_1002F2F9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1002F2FE4()
{
  result = qword_100ADDA50;
  if (!qword_100ADDA50)
  {
    sub_1000F2A18(&qword_100ADD9E8, &qword_10094DF18);
    sub_1002F2EE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100ADDA50);
  }

  return result;
}

uint64_t sub_1002F3074(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1002F30BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002F3130@<X0>(uint64_t *a2@<X8>)
{
  v4 = static Alignment.center.getter();
  v6 = v5;
  sub_1002F33E4(v2, __src);
  memcpy(__dst, __src, 0x191uLL);
  memcpy(v19, __src, 0x191uLL);
  sub_1000082B4(__dst, v16, &qword_100ADDA68, &qword_10094DFF8);
  sub_100004F84(v19, &qword_100ADDA68, &qword_10094DFF8);
  memcpy(__src, __dst, 0x191uLL);
  v7 = static Alignment.center.getter();
  v9 = v8;
  v10 = sub_1005EDEDC(v7);
  v11 = *(v2 + 16);
  v16[0] = *v2;
  v17 = v11;
  v12 = swift_allocObject();
  v13 = *(v2 + 16);
  *(v12 + 16) = *v2;
  *(v12 + 32) = v13;
  *(v12 + 48) = *(v2 + 32);
  *a2 = v4;
  a2[1] = v6;
  memcpy(a2 + 2, __src, 0x191uLL);
  a2[53] = v10;
  a2[54] = sub_1002F3D40;
  a2[55] = v12;
  a2[56] = v7;
  a2[57] = v9;
  sub_1000082B4(v16, v15, &qword_100AD2640, &unk_10094E000);
  sub_1000082B4(&v17, v15, &qword_100AD2640, &unk_10094E000);
}

double sub_1002F32B4(uint64_t a1)
{
  v2 = sub_1000F24EC(&qword_100AD5170, &unk_100943680);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - v3;
  v5 = *(a1 + 32);
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  type metadata accessor for MainActor();

  v7 = static MainActor.shared.getter();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = &protocol witness table for MainActor;
  *(v8 + 32) = v5;
  *(v8 + 40) = 1;
  sub_1003E9628(0, 0, v4, &unk_10094E010, v8);

  return result;
}

double sub_1002F33E4@<D0>(__n128 *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = *a1;
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.projectedValue.getter();
  v25 = *(&v65 + 1);
  v26 = v65;
  v24 = v66;
  v48 = a1[1];
  State.projectedValue.getter();
  v22 = *(&v65 + 1);
  v23 = v65;
  v21 = v66;
  v20 = a1[2].n128_u64[0];

  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v4 = static Alignment.center.getter();
  v6 = v5;
  v19 = static HorizontalAlignment.center.getter();
  LOBYTE(v44) = 0;
  sub_1002F389C(a1, &v65);
  v39 = v75;
  v40 = v76;
  v35 = v71;
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v31 = v67;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v29 = v65;
  v30 = v66;
  v42[10] = v75;
  v42[11] = v76;
  v42[6] = v71;
  v42[7] = v72;
  v42[8] = v73;
  v42[9] = v74;
  v42[2] = v67;
  v42[3] = v68;
  v42[4] = v69;
  v42[5] = v70;
  v41 = v77;
  v43 = v77;
  v42[0] = v65;
  v42[1] = v66;
  sub_1000082B4(&v29, &v48, &qword_100ADDA70, &qword_10094E018);
  sub_100004F84(v42, &qword_100ADDA70, &qword_10094E018);
  *&v28[151] = v38;
  *&v28[167] = v39;
  *&v28[183] = v40;
  v28[199] = v41;
  *&v28[87] = v34;
  *&v28[103] = v35;
  *&v28[119] = v36;
  *&v28[135] = v37;
  *&v28[23] = v30;
  *&v28[39] = v31;
  *&v28[55] = v32;
  *&v28[71] = v33;
  *&v28[7] = v29;
  v7 = v44;
  *&v44 = v4;
  *(&v44 + 1) = v6;
  v45 = v19;
  v46 = 0;
  LOBYTE(v47[0]) = v7;
  *(&v47[9] + 1) = *&v28[144];
  *(&v47[10] + 1) = *&v28[160];
  *(&v47[11] + 1) = *&v28[176];
  *(&v47[12] + 1) = *&v28[192];
  *(&v47[5] + 1) = *&v28[80];
  *(&v47[6] + 1) = *&v28[96];
  *(&v47[7] + 1) = *&v28[112];
  *(&v47[8] + 1) = *&v28[128];
  *(&v47[1] + 1) = *&v28[16];
  *(&v47[2] + 1) = *&v28[32];
  *(&v47[3] + 1) = *&v28[48];
  *(&v47[4] + 1) = *&v28[64];
  *(v47 + 1) = *v28;
  v76 = v47[9];
  v77 = v47[10];
  v78[0] = v47[11];
  *(v78 + 9) = *(&v47[11] + 9);
  v73 = v47[6];
  v74 = v47[7];
  v75 = v47[8];
  v69 = v47[2];
  v70 = v47[3];
  v71 = v47[4];
  v72 = v47[5];
  v65 = v44;
  v66 = v19;
  v67 = v47[0];
  v68 = v47[1];
  v61 = *&v28[144];
  v62 = *&v28[160];
  v63 = *&v28[176];
  v57 = *&v28[80];
  v58 = *&v28[96];
  v59 = *&v28[112];
  v60 = *&v28[128];
  v53 = *&v28[16];
  v54 = *&v28[32];
  v55 = *&v28[48];
  v56 = *&v28[64];
  v48.n128_u64[0] = v4;
  v48.n128_u64[1] = v6;
  v49 = v19;
  v50 = 0;
  v51 = v7;
  v64 = *&v28[192];
  v52 = *v28;
  sub_1000082B4(&v44, &v27, &qword_100ADDA78, &qword_10094E020);
  sub_100004F84(&v48, &qword_100ADDA78, &qword_10094E020);
  v8 = v78[0];
  *(a2 + 360) = v77;
  *(a2 + 376) = v8;
  *(a2 + 385) = *(v78 + 9);
  v9 = v74;
  *(a2 + 296) = v73;
  *(a2 + 312) = v9;
  v10 = v76;
  *(a2 + 328) = v75;
  *(a2 + 344) = v10;
  v11 = v72;
  *(a2 + 264) = v71;
  *(a2 + 280) = v11;
  v12 = v78[4];
  *(a2 + 104) = v78[5];
  v13 = v78[7];
  *(a2 + 120) = v78[6];
  *(a2 + 136) = v13;
  *(a2 + 152) = v78[8];
  v14 = v78[3];
  *(a2 + 56) = v78[2];
  *(a2 + 72) = v14;
  *(a2 + 88) = v12;
  v15 = v67;
  *(a2 + 216) = v68;
  v16 = v70;
  *(a2 + 232) = v69;
  *(a2 + 248) = v16;
  result = *&v65;
  v18 = v66;
  *(a2 + 168) = v65;
  *(a2 + 184) = v18;
  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v24;
  *(a2 + 24) = v23;
  *(a2 + 32) = v22;
  *(a2 + 40) = v21;
  *(a2 + 48) = v20;
  *(a2 + 200) = v15;
  return result;
}

uint64_t sub_1002F389C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = *a1;
  sub_1000F24EC(&qword_100AD2640, &unk_10094E000);
  State.wrappedValue.getter();
  if (LOBYTE(v57[0]) == 1)
  {
    sub_1000F24EC(&qword_100AD3CA8, &qword_100942240);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100940050;
    *(v4 + 32) = static Color.clear.getter();
    *(v4 + 40) = static Color.white.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v32 = v60;
    v33 = v59;
    v30 = v62;
    v31 = v61;
    v28 = v65;
    v29 = v63;
    v38 = v66;
    v39 = v64;
    v36 = v68;
    v37 = v67;
    v35 = v69;
    v34 = static Edge.Set.top.getter();
  }

  else
  {
    v32 = 0;
    v33 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
    v35 = 0;
    v34 = 0;
  }

  v27 = static Color.white.getter();
  v50 = a1[1];
  State.wrappedValue.getter();
  if (LOBYTE(v57[0]) == 1)
  {
    sub_1000F24EC(&qword_100AD3CA8, &qword_100942240);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_100940050;
    *(v5 + 32) = static Color.white.getter();
    *(v5 + 40) = static Color.clear.getter();
    static UnitPoint.top.getter();
    static UnitPoint.bottom.getter();
    Gradient.init(colors:)();
    LinearGradient.init(gradient:startPoint:endPoint:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v6 = v79;
    v7 = v80;
    v8 = static Edge.Set.bottom.getter();
    v9 = v78;
    v10 = v77;
    v11 = v76;
    v12 = v75;
    v13 = v74;
    v14 = v73;
    v15 = v72;
    v17 = v71;
    v16 = v70;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  *&v40 = v33;
  *(&v40 + 1) = v32;
  *&v41 = v31;
  *(&v41 + 1) = v30;
  *&v42 = v29;
  *(&v42 + 1) = v39;
  *&v43 = v28;
  *(&v43 + 1) = v38;
  *v44 = v37;
  *&v44[8] = v36;
  *&v44[16] = v35;
  v44[24] = v34;
  v52 = v42;
  v53 = v43;
  *v54 = *v44;
  *&v54[9] = *&v44[9];
  v50 = v40;
  v51 = v41;
  *&v45 = v16;
  *(&v45 + 1) = v17;
  *&v46 = v15;
  *(&v46 + 1) = v14;
  *&v47 = v13;
  *(&v47 + 1) = v12;
  *&v48 = v11;
  *(&v48 + 1) = v10;
  *v49 = v9;
  *&v49[8] = v6;
  *&v49[16] = v7;
  v49[24] = v8;
  v18 = v41;
  *a2 = v40;
  *(a2 + 16) = v18;
  v19 = v52;
  v20 = v53;
  v21 = *&v54[16];
  *(a2 + 64) = *v54;
  *(a2 + 80) = v21;
  *(a2 + 32) = v19;
  *(a2 + 48) = v20;
  *(a2 + 96) = v27;
  v22 = v45;
  *(a2 + 120) = v46;
  *(a2 + 104) = v22;
  v23 = v47;
  v24 = v48;
  v25 = *v49;
  *(a2 + 177) = *&v49[9];
  *(a2 + 168) = v25;
  *(a2 + 152) = v24;
  *(a2 + 136) = v23;
  v55[0] = v16;
  v55[1] = v17;
  v55[2] = v15;
  v55[3] = v14;
  v55[4] = v13;
  v55[5] = v12;
  v55[6] = v11;
  v55[7] = v10;
  v55[8] = v9;
  v55[9] = v6;
  v55[10] = v7;
  v56 = v8;
  sub_1000082B4(&v40, v57, &qword_100ADDA80, &unk_10094E028);

  sub_1000082B4(&v45, v57, &qword_100ADDA80, &unk_10094E028);
  sub_100004F84(v55, &qword_100ADDA80, &unk_10094E028);

  v57[0] = v33;
  v57[1] = v32;
  v57[2] = v31;
  v57[3] = v30;
  v57[4] = v29;
  v57[5] = v39;
  v57[6] = v28;
  v57[7] = v38;
  v57[8] = v37;
  v57[9] = v36;
  v57[10] = v35;
  v58 = v34;
  return sub_100004F84(v57, &qword_100ADDA80, &unk_10094E028);
}