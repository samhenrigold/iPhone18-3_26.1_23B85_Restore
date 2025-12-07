double sub_100951E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&unk_1019F4D00, &unk_10146E7F0);
  v10 = swift_allocObject();
  sub_10000BE14(a1, v10 + 16, &unk_1019F4D00, &unk_10146E7F0);
  type metadata accessor for _NSRange(0);
  sub_100951F3C(a1, v5, a2, a3);
  swift_arrayDestroy();
  return result;
}

void sub_100951F3C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  sub_10000BE14(a1, v33, &unk_1019F4D00, &unk_10146E7F0);
  if (v34)
  {
    sub_100006370(0, &qword_1019F76F0, NSAttributedString_ptr);
    if (swift_dynamicCast())
    {

      sub_10000BE14(a1, v33, &unk_1019F4D00, &unk_10146E7F0);
      if (v34)
      {
        if (swift_dynamicCast())
        {
          v8 = v32;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        sub_10000CAAC(v33, &unk_1019F4D00, &unk_10146E7F0);
        v8 = 0;
      }

      [a2 setAttributedMarkedText:v8 selectedRange:{a3, a4}];
      goto LABEL_20;
    }
  }

  else
  {
    sub_10000CAAC(v33, &unk_1019F4D00, &unk_10146E7F0);
  }

  sub_10000BE14(a1, v33, &unk_1019F4D00, &unk_10146E7F0);
  sub_1005B981C(&unk_1019F4D00, &unk_10146E7F0);
  sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
  if (swift_dynamicCast())
  {

    sub_10000BE14(a1, v33, &unk_1019F4D00, &unk_10146E7F0);
    if (v34)
    {
      if (swift_dynamicCast())
      {
        v8 = String._bridgeToObjectiveC()();

LABEL_17:
        [a2 setMarkedText:v8 selectedRange:{a3, a4}];
        goto LABEL_20;
      }
    }

    else
    {
      sub_10000CAAC(v33, &unk_1019F4D00, &unk_10146E7F0);
    }

    v8 = 0;
    goto LABEL_17;
  }

  v31 = objc_opt_self();
  v9 = [v31 _atomicIncrementAssertCount];
  v33[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v33, "Unknown marked text type.", 25, 2u);
  StaticString.description.getter("setMarkedText(_:selectedRange:replacementRange:)", 48, 2);
  v10 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v11 lastPathComponent];

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v16 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v9;
  v18 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v18;
  v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(inited + 104) = v19;
  *(inited + 72) = v10;
  *(inited + 136) = &type metadata for String;
  v20 = sub_1000053B0();
  *(inited + 112) = v13;
  *(inited + 120) = v15;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v20;
  *(inited + 152) = 3668;
  v21 = v33[0];
  *(inited + 216) = v18;
  *(inited + 224) = v19;
  *(inited + 192) = v21;
  v22 = v10;
  v23 = v21;
  v24 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v25 = static os_log_type_t.error.getter();
  sub_100005404(v16, &_mh_execute_header, v25, "Unknown marked text type.", 25, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v26 = swift_allocObject();
  v26[2] = 8;
  v26[3] = 0;
  v26[4] = 0;
  v26[5] = 0;
  v27 = __VaListBuilder.va_list()();
  StaticString.description.getter("setMarkedText(_:selectedRange:replacementRange:)", 48, 2);
  v28 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown marked text type.", 25, 2);
  v8 = String._bridgeToObjectiveC()();

  [v31 handleFailureInFunction:v28 file:v29 lineNumber:3668 isFatal:0 format:v8 args:v27];

LABEL_20:
  v30 = *(*&a2[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v30)
  {
    if (*(v30 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10095260C(int a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = objc_allocWithZone(NSAttributedString);
    v9 = String._bridgeToObjectiveC()();
    v11 = [v8 initWithString:v9];

    [a3 setAttributedMarkedText:v11 selectedRange:{a4, a5}];
    v10 = *(*&a3[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v10)
    {
      if (*(v10 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
      {
        sub_100947A80();
      }

      else
      {
        sub_100947BA0();
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    [a3 unmarkText];
  }
}

void sub_100952848(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  v48 = a1;
  sub_100960E34();
  if (v8)
  {
    v9 = [swift_unknownObjectRetain() selectedTextRangeWithoutMarkedText];
    if (!v9)
    {
LABEL_40:

      swift_unknownObjectRelease();
      return;
    }

    v10 = v9;
    if (![v48 length] && !a3 && !a4)
    {
      sub_1009481E4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        if (!*(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        v12 = Strong;
        v13 = [Strong layoutForInfo:?];

        if (v13)
        {
          type metadata accessor for CRLWPLayout();
          v14 = swift_dynamicCastClass();
          if (v14)
          {
            v15 = v14;
            if ([v14 parentAutosizes])
            {
              [v15 invalidateSize];
            }

            *(v15 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
            [v15 invalidate];
            [v15 setNeedsDisplay];
          }
        }
      }

      v16 = *(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (v16)
      {
        if (*(v16 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
        {
          sub_100947A80();
        }

        else
        {
          sub_100947BA0();
        }

        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v18 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v19 = *(*(a2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v19)
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v20 = v10;
    v47 = *(v19 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
    if (v47)
    {
      v20 = v47;
    }

    v21 = [v20 start];
    v46 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v45 = [v48 length];
    v22 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v22)
    {
      goto LABEL_50;
    }

    v23 = type metadata accessor for CRLTextRange();
    v24 = objc_allocWithZone(v23);
    v25 = v22;
    v26 = sub_10078CDF0(a3, a4);
    v27 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS];
    *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS] = v26;

    v28 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v28)
    {
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    v29 = *(v28 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
    *(v28 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange) = v10;
    v30 = v10;

    v31 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v31)
    {
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v32 = *(v31 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
    *(v31 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText) = a1;
    v33 = v48;

    v34 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v34)
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v35 = objc_allocWithZone(v23);
    v36 = v34;
    v37 = sub_10078CDF0(v46, v45);
    v38 = *&v36[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange];
    *&v36[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange] = v37;

    v39 = swift_unknownObjectWeakLoadStrong();
    if (v39)
    {
      if (!*(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
      {
LABEL_56:
        __break(1u);
        return;
      }

      v40 = v39;
      v41 = [v39 layoutForInfo:?];

      if (v41)
      {
        type metadata accessor for CRLWPLayout();
        v42 = swift_dynamicCastClass();
        if (v42)
        {
          v43 = v42;
          if ([v42 parentAutosizes])
          {
            [v43 invalidateSize];
          }

          *(v43 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
          [v43 invalidate];
          [v43 setNeedsDisplay];
        }
      }
    }

    v44 = *(*(a2 + v18) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v44)
    {
      goto LABEL_54;
    }

    if (*(v44 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      sub_100947A80();
    }

    else
    {
      sub_100947BA0();
    }

    swift_unknownObjectRelease();
    v17 = v47;
  }

  else
  {
    v17 = v48;
  }
}

void sub_100952E10(NSUInteger a1@<X0>, NSUInteger a2@<X1>, uint64_t a3@<X2>, NSRange *a4@<X3>, void *a5@<X8>)
{
  v6 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
  v7 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v7)
  {
    v12 = v7;
    sub_100A28D8C();
    v14 = v13;

    v15 = [v14 range];
    v17 = v16;

    v25.location = a1;
    v25.length = a2;
    v26.location = v15;
    v26.length = v17;
    v18 = NSIntersectionRange(v25, v26);
    if (v18.length < 1)
    {
      goto LABEL_11;
    }

    v19 = *(*(a3 + v6) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v19)
    {
      v20 = v19;
      sub_100A28D8C();
      v22 = v21;

      if ((v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage__hasValidPresentationProperties] & 1) == 0)
      {
        sub_100A2A960();
      }

      v23 = *&v22[OBJC_IVAR____TtC8Freeform12CRLWPStorage__coreTextAttributedString];

      v24 = [v23 attributedSubstringFromRange:{v18.location, v18.length}];
      if (!v24)
      {
        goto LABEL_12;
      }

      if ([v24 length])
      {
        if (a4)
        {
          *a4 = v18;
        }

        goto LABEL_12;
      }

LABEL_11:
      v24 = 0;
LABEL_12:
      *a5 = v24;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100953030()
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1009530DC(v0);
  v1 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v1)
  {
    if (*(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {

      sub_100947A80();
    }

    else
    {

      sub_100947BA0();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1009530DC(char *a1)
{
  v1 = *(*&a1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    __break(1u);
    return;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
  v4 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRange);
  v19 = v4;
  v18 = v3;
  sub_1009481E4();
  if (v3)
  {
    if (v4)
    {
      v5 = [v18 string];
      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

      v9 = type metadata accessor for CRLWPTextString();
      v10 = objc_allocWithZone(v9);
      v11 = &v10[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
      *v11 = v6;
      *(v11 + 1) = v8;
      v11[16] = 0;
      v20.receiver = v10;
      v20.super_class = v9;
      v12 = objc_msgSendSuper2(&v20, "init");
      sub_100960E34();
      if (v13 && (v14 = [v13 selectedTextRange]) != 0 && (v15 = v14, v16 = sub_10078DB44(v19), v15, v16))
      {
        [a1 replace:v16 with:v12];
      }

      else
      {
        [a1 replace:v19 with:{v12, v18}];
      }

      return;
    }

    v17 = v18;
  }

  else
  {
    v17 = v19;
  }
}

id sub_1009535E4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100953654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[16] = a5;
  v6[17] = a6;
  v6[15] = a4;
  type metadata accessor for MainActor();
  v6[18] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v6[19] = v8;
  v6[20] = v7;

  return _swift_task_switch(sub_1009536F0, v8, v7);
}

uint64_t sub_1009536F0()
{
  v1 = v0[15];
  v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides;
  v0[21] = OBJC_IVAR____TtC8Freeform11CRLWPEditor_resignFirstResponderWhenKeyboardHides;
  *(v1 + v2) = 0;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10095379C;
  v4 = v0[17];

  return sub_100D1C8E8(v4, 1);
}

uint64_t sub_10095379C()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);
  v4 = *(v2 + 152);
  if (v0)
  {
    v5 = sub_100953948;
  }

  else
  {
    v5 = sub_1009538D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1009538D8()
{
  v1 = v0[21];
  v2 = v0[15];

  *(v2 + v1) = 1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_100953948()
{

  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  swift_getErrorValue();
  v3 = Error.localizedDescription.getter();
  v5 = v4;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = static os_log_type_t.error.getter();
  sub_100005404(v1, &_mh_execute_header, v6, "Caught error trying to present canvas view controller: %@", 57, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v7 = *(v0 + 8);

  return v7();
}

id sub_100953AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1005B981C(&unk_101A0DAA0, &qword_101483A50);
  __chkstk_darwin(v8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v46 - v12;
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v21 = *(v20 + 64);
  *(&v46 - v18) = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v22 = type metadata accessor for CRLWPTextString();
  v23 = objc_allocWithZone(v22);
  v24 = &v23[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v24 = a2;
  *(v24 + 1) = a3;
  v24[16] = 0;
  v49.receiver = v23;
  v49.super_class = v22;

  *(v19 + 2) = objc_msgSendSuper2(&v49, "init");
  v25 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v25)
  {
    v26 = v25;
    sub_100D65B10(&v19[v21]);

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  (*(*(v28 - 8) + 56))(&v19[v21], v27, 1, v28);
  v29 = *(v8 + 80);
  v30 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  (*(*(v30 - 8) + 56))(&v19[v29], 1, 1, v30);
  v47 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  sub_10000BE14(v19, v16, &unk_101A0DAA0, &qword_101483A50);
  v46 = *v16;
  v31 = *(v16 + 2);
  v32 = *(v8 + 64);
  v33 = *(v8 + 80);
  v34 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v35 = objc_allocWithZone(v34);
  *v13 = v46;
  *(v13 + 2) = v31;
  sub_10003DFF8(&v16[v32], &v13[*(v8 + 64)], &unk_101A0DAB0, &unk_101483A70);
  sub_10003DFF8(&v16[v33], &v13[*(v8 + 80)], &unk_101A096B0, &unk_10148DE20);
  v36 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v37 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v37 - 8) + 56))(&v35[v36], 1, 1, v37);
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  v38 = v47;
  *&v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v47;
  sub_10000BE14(v13, v10, &unk_101A0DAA0, &qword_101483A50);
  v39 = *(v10 + 2);
  v40 = *(v8 + 64);
  v41 = *(v8 + 80);
  v42 = &v35[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v42 = *v10;
  *(v42 + 2) = v39;
  sub_10003DFF8(&v10[v40], &v42[*(v8 + 64)], &unk_101A0DAB0, &unk_101483A70);
  sub_10003DFF8(&v10[v41], &v42[*(v8 + 80)], &unk_101A096B0, &unk_10148DE20);
  v48.receiver = v35;
  v48.super_class = v34;
  v43 = v38;
  v44 = objc_msgSendSuper2(&v48, "init");
  sub_10000CAAC(v13, &unk_101A0DAA0, &qword_101483A50);
  sub_10000CAAC(v19, &unk_101A0DAA0, &qword_101483A50);
  return v44;
}

id sub_100953F60(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1005B981C(&unk_101A0DAA0, &qword_101483A50);
  __chkstk_darwin(v6);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v45 - v10;
  __chkstk_darwin(v12);
  v14 = &v45 - v13;
  __chkstk_darwin(v15);
  v17 = &v45 - v16;
  v19 = *(v18 + 64);
  *(&v45 - v16) = *(a1 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v20 = type metadata accessor for CRLWPTextString();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v22 = a2;
  *(v22 + 1) = 0;
  v23 = 1;
  v22[16] = 1;
  v48.receiver = v21;
  v48.super_class = v20;
  v24 = a2;
  *(v17 + 2) = objc_msgSendSuper2(&v48, "init");
  v25 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  if (v25)
  {
    v26 = v25;
    sub_100D65B10(&v17[v19]);

    v23 = 0;
  }

  v27 = sub_1005B981C(&qword_101A0D850, &unk_10148DE30);
  (*(*(v27 - 8) + 56))(&v17[v19], v23, 1, v27);
  v28 = *(v6 + 80);
  v29 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  (*(*(v29 - 8) + 56))(&v17[v28], 1, 1, v29);
  v46 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  sub_10000BE14(v17, v14, &unk_101A0DAA0, &qword_101483A50);
  v45 = *v14;
  v30 = *(v14 + 2);
  v31 = *(v6 + 64);
  v32 = *(v6 + 80);
  v33 = type metadata accessor for CRLWPReplaceTextCommand(0);
  v34 = objc_allocWithZone(v33);
  *v11 = v45;
  *(v11 + 2) = v30;
  sub_10003DFF8(&v14[v31], &v11[*(v6 + 64)], &unk_101A0DAB0, &unk_101483A70);
  sub_10003DFF8(&v14[v32], &v11[*(v6 + 80)], &unk_101A096B0, &unk_10148DE20);
  v35 = OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalescingData;
  v36 = type metadata accessor for CRLWPReplaceTextCommand.CoalescingData(0);
  (*(*(v36 - 8) + 56))(&v34[v35], 1, 1, v36);
  v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_coalesceReplaceTextCommands] = 0;
  v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_didUseWritingTools] = 0;
  v37 = v46;
  *&v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_shapeItem] = v46;
  sub_10000BE14(v11, v8, &unk_101A0DAA0, &qword_101483A50);
  v38 = *(v8 + 2);
  v39 = *(v6 + 64);
  v40 = *(v6 + 80);
  v41 = &v34[OBJC_IVAR____TtC8Freeform23CRLWPReplaceTextCommand_replacement];
  *v41 = *v8;
  *(v41 + 2) = v38;
  sub_10003DFF8(&v8[v39], &v41[*(v6 + 64)], &unk_101A0DAB0, &unk_101483A70);
  sub_10003DFF8(&v8[v40], &v41[*(v6 + 80)], &unk_101A096B0, &unk_10148DE20);
  v47.receiver = v34;
  v47.super_class = v33;
  v42 = v37;
  v43 = objc_msgSendSuper2(&v47, "init");
  sub_10000CAAC(v11, &unk_101A0DAA0, &qword_101483A50);
  sub_10000CAAC(v17, &unk_101A0DAA0, &qword_101483A50);
  return v43;
}

void sub_1009543F8(uint64_t a1, char *a2, char *a3, char *a4)
{
  v81 = a4;
  v80 = a3;
  v93 = a1;
  v89 = sub_1005B981C(qword_101A0CF60, "87&");
  v73 = *(v89 - 8);
  __chkstk_darwin(v89);
  v74 = &v72 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v92 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - v10;
  v91 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v75 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v72 - v12;
  v87 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v86 = *(v87 - 1);
  __chkstk_darwin(v87);
  *&v84 = &v72 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v77);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v88 = a2;
  v79 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_36;
  }

  (*(*v26 + 896))(v23);
  v76 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v85 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v98 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptySetSingleton;
  v83 = v19;
  v82 = v25;
  v28 = CRAttributedString.count.getter();
  v29 = v88;
  if (v28 && (sub_100A31B44(v80, v81), (v30 & 1) == 0))
  {
    v42 = sub_100A31CD0(v80, v81);
    if (__OFSUB__(v43, v42))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v44 = [v29 textRangeForParagraphsInCharRange:{v42, v43 - v42}];
    v46 = __OFADD__(v44, v45);
    v47 = &v44[v45];
    if (v46)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v47 < v44)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v48 = v84;
    CRAttributedString.subscript.getter();
    v49 = v87;
    CRAttributedString.Substring.runs.getter();
    (*(v86 + 8))(v48, v49);
    CRAttributedString.Runs.next()();
    v50 = *(v92 + 48);
    v88 = (v92 + 48);
    v87 = v50;
    v51 = (v50)(v11, 1, v6);
    v52 = v74;
    if (v51 != 1)
    {
      v86 = *(v92 + 32);
      v63 = (v73 + 8);
      v92 += 32;
      v64 = (v92 - 24);
      v84 = xmmword_10146C6B0;
      (v86)(v8, v11, v6);
      while (1)
      {
        v65 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v65);
        *(&v72 - 4) = &type metadata for CRLWPListStartAttribute;
        v66 = sub_1009620D8();
        v67 = v93;
        *(&v72 - 3) = v66;
        *(&v72 - 2) = v67;
        swift_getKeyPath();
        sub_10096212C();

        v68 = v89;
        CRAttributedString.Attributes.subscript.getter();

        (*v63)(v52, v68);
        v69 = v95;
        v70 = v96;
        if ((sub_10079C8C8(v95, v96, v97) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09560, &qword_101488E90);
          inited = swift_initStackObject();
          *(inited + 16) = v84;
          *(inited + 32) = v69;
          *(inited + 40) = v70;
          sub_100798E3C(inited);
          sub_100E6B644(v94, v69, v70);
        }

        (*v64)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v87)(v11, 1, v6) == 1)
        {
          break;
        }

        (v86)(v8, v11, v6);
      }
    }

    (*(v75 + 8))(v90, v91);
    v34 = v83;
  }

  else
  {
    v31 = *&v29[v79];
    if (!v31)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v32 = v27;
    (*(*v31 + 896))();
    sub_1005E0A78(&v16[*(v76 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v78;
    v34 = v83;
    v32(v78, &v18[*(v77 + 20)], v83);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v84;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v72 - 4) = &type metadata for CRLWPListStartAttribute;
    v37 = sub_1009620D8();
    v38 = v93;
    *(&v72 - 3) = v37;
    *(&v72 - 2) = v38;
    swift_getKeyPath();
    sub_10096212C();

    v39 = v87;
    CRAttributedString.Substring.subscript.getter();

    (*(v86 + 8))(v35, v39);
    sub_1005B981C(&unk_101A09560, &qword_101488E90);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_10146C6B0;
    v41 = v96;
    *(v40 + 32) = v95;
    *(v40 + 40) = v41;
    sub_100798E3C(v40);
    (*(v85 + 8))(v33, v34);
  }

  v53 = v98;
  v54 = v98[2];
  if (v54)
  {
    v95 = _swiftEmptyArrayStorage;
    sub_100776544(0, v54, 0);
    v55 = 0;
    v56 = v95;
    v57 = v53 + 5;
    while (v55 < v53[2])
    {
      if (*v57)
      {
        v58 = 1;
      }

      else
      {
        v58 = *(v57 - 1);
      }

      v95 = v56;
      v60 = v56[2];
      v59 = v56[3];
      if (v60 >= v59 >> 1)
      {
        sub_100776544((v59 > 1), v60 + 1, 1);
        v56 = v95;
      }

      ++v55;
      v56[2] = v60 + 1;
      v56[v60 + 4] = v58;
      v57 += 16;
      if (v54 == v55)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_22:

  v61 = v56[2];
  if (v61)
  {
    if (v61 == 1)
    {
      v62 = v82;

      (*(v85 + 8))(v62, v34);
    }

    else
    {
      (*(v85 + 8))(v82, v34);
    }
  }

  else
  {
    (*(v85 + 8))(v82, v34);
  }
}

void sub_100954FAC(uint64_t a1, char *a2, char *a3, char *a4)
{
  v82 = a4;
  v81 = a3;
  v94 = a1;
  v90 = sub_1005B981C(qword_101A0CF60, "87&");
  v74 = *(v90 - 8);
  __chkstk_darwin(v90);
  v75 = &v74 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v93 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v74 - v7;
  v9 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v74 - v10;
  v92 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v76 = *(v92 - 8);
  __chkstk_darwin(v92);
  v91 = &v74 - v12;
  v88 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88);
  *&v84 = &v74 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v78);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v79 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v74 - v24;
  v89 = a2;
  v80 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_38;
  }

  (*(*v26 + 896))(v23);
  v77 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v85 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v99 = _swiftEmptyArrayStorage;
  v98 = _swiftEmptySetSingleton;
  v86 = v19;
  v83 = v25;
  v28 = CRAttributedString.count.getter();
  v29 = v89;
  if (v28 && (sub_100A31B44(v81, v82), (v30 & 1) == 0))
  {
    v42 = sub_100A31CD0(v81, v82);
    if (__OFSUB__(v43, v42))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v44 = [v29 textRangeForParagraphsInCharRange:{v42, v43 - v42}];
    v46 = __OFADD__(v44, v45);
    v47 = &v44[v45];
    if (v46)
    {
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    if (v47 < v44)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v48 = v84;
    CRAttributedString.subscript.getter();
    v49 = v88;
    CRAttributedString.Substring.runs.getter();
    (*(v87 + 8))(v48, v49);
    CRAttributedString.Runs.next()();
    v50 = *(v93 + 48);
    v89 = (v93 + 48);
    v88 = v50;
    v51 = (v50)(v11, 1, v6);
    v52 = v75;
    if (v51 != 1)
    {
      v87 = *(v93 + 32);
      v65 = (v74 + 8);
      v93 += 32;
      v66 = (v93 - 24);
      v84 = xmmword_10146C6B0;
      (v87)(v8, v11, v6);
      while (1)
      {
        v67 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v67);
        *(&v74 - 4) = &type metadata for CRLWPListStyleTypeAttribute;
        v68 = sub_100962180();
        v69 = v94;
        *(&v74 - 3) = v68;
        *(&v74 - 2) = v69;
        swift_getKeyPath();
        sub_1009621D4();

        v70 = v90;
        CRAttributedString.Attributes.subscript.getter();

        (*v65)(v52, v70);
        v71 = v96;
        v72 = v97;
        if ((sub_10079C9CC(v96, v97, v98) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09580, qword_101488EF0);
          inited = swift_initStackObject();
          *(inited + 16) = v84;
          *(inited + 32) = v71;
          *(inited + 40) = v72;
          sub_100798E54(inited);
          sub_100E6B798(v95, v71, v72);
        }

        (*v66)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v88)(v11, 1, v6) == 1)
        {
          break;
        }

        (v87)(v8, v11, v6);
      }
    }

    (*(v76 + 8))(v91, v92);
    v34 = v86;
  }

  else
  {
    v31 = *&v29[v80];
    if (!v31)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v32 = v27;
    (*(*v31 + 896))();
    sub_1005E0A78(&v16[*(v77 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v79;
    v34 = v86;
    v32(v79, &v18[*(v78 + 20)], v86);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v84;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v74 - 4) = &type metadata for CRLWPListStyleTypeAttribute;
    v37 = sub_100962180();
    v38 = v94;
    *(&v74 - 3) = v37;
    *(&v74 - 2) = v38;
    swift_getKeyPath();
    sub_1009621D4();

    v39 = v88;
    CRAttributedString.Substring.subscript.getter();

    (*(v87 + 8))(v35, v39);
    sub_1005B981C(&unk_101A09580, qword_101488EF0);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_10146C6B0;
    v41 = v97;
    *(v40 + 32) = v96;
    *(v40 + 40) = v41;
    sub_100798E54(v40);
    (*(v85 + 8))(v33, v34);
  }

  v53 = v99;
  v54 = v99[2];
  if (v54)
  {
    v96 = _swiftEmptyArrayStorage;
    sub_100776564(0, v54, 0);
    v55 = 0;
    v56 = v96;
    v57 = (v53 + 5);
    while (v55 < v53[2])
    {
      v58 = *(v57 - 8);
      v59 = *v57;
      if (v59)
      {
        v58 = 3;
      }

      if (v59 == 255)
      {
        v60 = 0;
      }

      else
      {
        v60 = v58;
      }

      v96 = v56;
      v62 = v56[2];
      v61 = v56[3];
      if (v62 >= v61 >> 1)
      {
        sub_100776564((v61 > 1), v62 + 1, 1);
        v56 = v96;
      }

      ++v55;
      v56[2] = v62 + 1;
      *(v56 + v62 + 32) = v60;
      v57 += 16;
      if (v54 == v55)
      {

        v34 = v86;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_35;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_24:

  v63 = v56[2];
  if (v63)
  {
    if (v63 == 1)
    {
      v64 = v83;

      (*(v85 + 8))(v64, v34);
    }

    else
    {
      (*(v85 + 8))(v83, v34);
    }
  }

  else
  {
    (*(v85 + 8))(v83, v34);
  }
}

void sub_100955B74(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  *&v125 = a4;
  v121 = a3;
  v122 = a1;
  v135 = sub_1005B981C(qword_101A0CF60, "87&");
  v116 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v115 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v139 = *(v6 - 8);
  __chkstk_darwin(v6);
  v117 = &v115 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v136 = &v115 - v9;
  v138 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v118 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v115 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v128 = *(v11 - 8);
  v129 = v11;
  __chkstk_darwin(v11);
  v127 = &v115 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v115 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v120);
  v17 = &v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v119 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v21);
  v24 = &v115 - v23;
  v133 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v25 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v25)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  (*(*v25 + 896))(v22);
  v132 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v131 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v124 = v19;
  v26 = *(v19 + 16);
  v26(v24, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v185 = _swiftEmptyArrayStorage;
  v184 = _swiftEmptySetSingleton;
  v126 = v18;
  v123 = v24;
  v27 = CRAttributedString.count.getter();
  v130 = a2;
  if (v27)
  {
    sub_100A31B44(v121, v125);
    if ((v28 & 1) == 0)
    {
      v41 = sub_100A31CD0(v121, v125);
      v43 = v122;
      if (__OFSUB__(v42, v41))
      {
        goto LABEL_45;
      }

      v44 = [a2 textRangeForParagraphsInCharRange:{v41, v42 - v41}];
      v46 = __OFADD__(v44, v45);
      v47 = &v44[v45];
      if (v46)
      {
LABEL_46:
        __break(1u);
      }

      else if (v47 >= v44)
      {
        v48 = v127;
        CRAttributedString.subscript.getter();
        v49 = v129;
        CRAttributedString.Substring.runs.getter();
        (*(v128 + 8))(v48, v49);
        v50 = v136;
        CRAttributedString.Runs.next()();
        v128 = *(v139 + 48);
        v129 = v139 + 48;
        v51 = (v128)(v50, 1, v6);
        v52 = v117;
        if (v51 != 1)
        {
          v127 = *(v139 + 32);
          v106 = (v116 + 8);
          v139 += 32;
          v107 = (v139 - 24);
          v125 = xmmword_10146C6B0;
          (v127)(v117, v50, v6);
          while (1)
          {
            v109 = v134;
            v110 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v110);
            *(&v115 - 4) = &type metadata for CRLWPWritingDirectionAttribute;
            *(&v115 - 3) = sub_100962450();
            *(&v115 - 2) = v43;
            swift_getKeyPath();
            sub_1009624A4();

            v111 = v135;
            CRAttributedString.Attributes.subscript.getter();

            (*v106)(v109, v111);
            v112 = *&v181[0];
            v113 = BYTE8(v181[0]);
            if ((sub_10079CB70(*&v181[0], SBYTE8(v181[0]), v184) & 1) == 0)
            {
              sub_1005B981C(&unk_101A096A0, &qword_101489118);
              v114 = swift_allocObject();
              *(v114 + 16) = v125;
              *(v114 + 32) = v112;
              *(v114 + 40) = v113;
              sub_100798E6C(v114);
              sub_100E6B98C(&v165, v112, v113);
            }

            (*v107)(v52, v6);
            v108 = v136;
            CRAttributedString.Runs.next()();
            if ((v128)(v108, 1, v6) == 1)
            {
              break;
            }

            (v127)(v52, v108, v6);
          }
        }

        (*(v118 + 8))(v137, v138);
        v31 = v130;
        v34 = v126;
        v40 = v124;
        goto LABEL_11;
      }

      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }
  }

  v29 = *&a2[v133];
  v30 = v122;
  if (!v29)
  {
LABEL_50:
    __break(1u);
    return;
  }

  v31 = a2;
  v32 = v131;
  (*(*v29 + 896))();
  sub_1005E0A78(v32 + *(v132 + 20), v17);
  sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
  v33 = v119;
  v34 = v126;
  v26(v119, &v17[*(v120 + 20)], v126);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v35 = v127;
  v36 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v36);
  *(&v115 - 4) = &type metadata for CRLWPWritingDirectionAttribute;
  *(&v115 - 3) = sub_100962450();
  *(&v115 - 2) = v30;
  swift_getKeyPath();
  sub_1009624A4();

  v37 = v129;
  CRAttributedString.Substring.subscript.getter();

  (*(v128 + 8))(v35, v37);
  sub_1005B981C(&unk_101A096A0, &qword_101489118);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_10146C6B0;
  v39 = BYTE8(v181[0]);
  *(v38 + 32) = *&v181[0];
  *(v38 + 40) = v39;
  sub_100798E6C(v38);
  v40 = v124;
  (*(v124 + 8))(v33, v34);
LABEL_11:
  v53 = v185[2];
  if (v53)
  {
    v183 = _swiftEmptyArrayStorage;
    v138 = v185;
    v139 = v53;
    sub_100776584(0, v53, 0);
    v54 = v138;
    v55 = v139;
    v56 = 0;
    v57 = &v31[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
    v58 = (v138 + 40);
    v59 = v183;
    while (1)
    {
      if (v56 >= *(v54 + 16))
      {
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v60 = *v58;
      if (v60 != 255)
      {
        if (v60)
        {
          v61 = -1;
        }

        else
        {
          v61 = *(v58 - 1);
        }

        goto LABEL_29;
      }

      v62 = *(v57 + 13);
      v63 = *(v57 + 11);
      v177 = *(v57 + 12);
      v178 = v62;
      v64 = *(v57 + 13);
      v179 = *(v57 + 14);
      v65 = *(v57 + 9);
      v66 = *(v57 + 7);
      v173 = *(v57 + 8);
      v174 = v65;
      v67 = *(v57 + 9);
      v68 = *(v57 + 11);
      v175 = *(v57 + 10);
      v176 = v68;
      v69 = *(v57 + 5);
      v70 = *(v57 + 3);
      v169 = *(v57 + 4);
      v170 = v69;
      v71 = *(v57 + 5);
      v72 = *(v57 + 7);
      v171 = *(v57 + 6);
      v172 = v72;
      v73 = *(v57 + 1);
      v165 = *v57;
      v166 = v73;
      v74 = *(v57 + 3);
      v76 = *v57;
      v75 = *(v57 + 1);
      v167 = *(v57 + 2);
      v168 = v74;
      v181[12] = v177;
      v181[13] = v64;
      v181[14] = *(v57 + 14);
      v181[8] = v173;
      v181[9] = v67;
      v181[10] = v175;
      v181[11] = v63;
      v181[4] = v169;
      v181[5] = v71;
      v181[6] = v171;
      v181[7] = v66;
      v181[0] = v76;
      v181[1] = v75;
      v180 = *(v57 + 30);
      v182 = *(v57 + 30);
      v181[2] = v167;
      v181[3] = v70;
      if (sub_100695050(v181) == 1)
      {
        v77 = *&v130[v133];
        if (!v77)
        {
          goto LABEL_48;
        }

        v78 = v131;
        (*(*v77 + 896))();
        sub_1005B981C(&unk_101A095A0, "d#'");
        CRRegister.wrappedValue.getter();
        sub_1009625A4(v78, type metadata accessor for CRLWPShapeItemCRDTData);
        v154 = v140[12];
        v155 = v140[13];
        v156 = v140[14];
        v157 = v141;
        v150 = v140[8];
        v151 = v140[9];
        v152 = v140[10];
        v153 = v140[11];
        v146 = v140[4];
        v147 = v140[5];
        v148 = v140[6];
        v149 = v140[7];
        v142 = v140[0];
        v143 = v140[1];
        v144 = v140[2];
        v145 = v140[3];
        if (sub_100695050(&v142) == 1)
        {
LABEL_28:
          v54 = v138;
          v55 = v139;
          v61 = -1;
          goto LABEL_29;
        }

        v79 = v157;
        v80 = v156;
        v81 = BYTE8(v156);
        v82 = v155;
        v83 = BYTE8(v155);
        v84 = v154;
        v85 = BYTE8(v154);
        v86 = v153;
        v87 = BYTE8(v153);
        v88 = v145;
        v89 = BYTE8(v145);
        v90 = v144;
        v91 = BYTE8(v144);
        v92 = BYTE10(v143);
        v93 = BYTE9(v143);
        v94 = DWORD1(v143);
        v95 = BYTE8(v143);
        v96 = v142;
        v97 = v143;
        v98 = &v142;
      }

      else
      {
        v96 = v165;
        v97 = v166;
        v94 = DWORD1(v166);
        v93 = BYTE9(v166);
        v92 = BYTE10(v166);
        v90 = v167;
        v91 = BYTE8(v167);
        v88 = v168;
        v89 = BYTE8(v168);
        v86 = v176;
        v87 = BYTE8(v176);
        v84 = v177;
        v85 = BYTE8(v177);
        v82 = v178;
        v83 = BYTE8(v178);
        v80 = v179;
        v79 = v180;
        v81 = BYTE8(v179);
        v95 = BYTE8(v166);
        v98 = &v165;
      }

      v99 = v98[9];
      v162 = v98[8];
      v163 = v99;
      v164 = v98[10];
      v100 = v98[5];
      v158 = v98[4];
      v159 = v100;
      v101 = v98[7];
      v160 = v98[6];
      v161 = v101;
      v142 = v96;
      LOBYTE(v143) = v97;
      DWORD1(v143) = v94;
      BYTE8(v143) = v95 & 1;
      BYTE9(v143) = v93;
      BYTE10(v143) = v92;
      *&v144 = v90;
      BYTE8(v144) = v91;
      *&v145 = v88;
      BYTE8(v145) = v89;
      v150 = v162;
      v151 = v163;
      v152 = v164;
      v146 = v158;
      v147 = v100;
      v148 = v160;
      v149 = v101;
      *&v153 = v86;
      BYTE8(v153) = v87;
      *&v154 = v84;
      BYTE8(v154) = v85;
      *&v155 = v82;
      BYTE8(v155) = v83;
      *&v156 = v80;
      BYTE8(v156) = v81 & 1;
      v157 = v79;
      sub_10000BE14(&v165, v140, &unk_101A0D830, &qword_101488F70);
      sub_10081852C(&v142);
      if (v85 == 255)
      {
        goto LABEL_28;
      }

      if (v85)
      {
        v61 = -1;
      }

      else
      {
        v61 = v84;
      }

      v54 = v138;
      v55 = v139;
LABEL_29:
      v183 = v59;
      v103 = v59[2];
      v102 = v59[3];
      if (v103 >= v102 >> 1)
      {
        sub_100776584((v102 > 1), v103 + 1, 1);
        v54 = v138;
        v55 = v139;
        v59 = v183;
      }

      ++v56;
      v59[2] = v103 + 1;
      v59[v103 + 4] = v61;
      v58 += 16;
      if (v55 == v56)
      {

        v34 = v126;
        v40 = v124;
        goto LABEL_34;
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_34:

  v104 = v59[2];
  v105 = v123;
  if (v104)
  {
    if (v104 == 1)
    {

      (*(v40 + 8))(v105, v34);
    }

    else
    {
      (*(v40 + 8))(v123, v34);
    }
  }

  else
  {

    sub_100A43F70(v130);
    (*(v40 + 8))(v105, v34);
  }
}

void sub_1009569D8(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  *&v124 = a4;
  v121 = a3;
  v122 = a1;
  v134 = sub_1005B981C(qword_101A0CF60, "87&");
  v117 = *(v134 - 8);
  __chkstk_darwin(v134);
  v133 = &v116 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v139 = *(v6 - 8);
  __chkstk_darwin(v6);
  v118 = &v116 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v135 = &v116 - v9;
  v138 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v119 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v116 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v128 = *(v11 - 8);
  v129 = v11;
  __chkstk_darwin(v11);
  v127 = &v116 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v120);
  v17 = &v116 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v116 - v24;
  v136 = a2;
  v132 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  (*(*v26 + 896))(v23);
  v131 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v130 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v125 = v19;
  v27 = *(v19 + 16);
  v27(v25, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v185 = _swiftEmptyArrayStorage;
  v184 = _swiftEmptySetSingleton;
  v126 = v18;
  v123 = v25;
  v28 = CRAttributedString.count.getter();
  v29 = v136;
  if (v28)
  {
    sub_100A31B44(v121, v124);
    if ((v30 & 1) == 0)
    {
      v43 = sub_100A31CD0(v121, v124);
      if (__OFSUB__(v44, v43))
      {
        goto LABEL_46;
      }

      v45 = [v29 textRangeForParagraphsInCharRange:{v43, v44 - v43}];
      v47 = __OFADD__(v45, v46);
      v48 = &v45[v46];
      if (v47)
      {
LABEL_47:
        __break(1u);
      }

      else if (v48 >= v45)
      {
        v49 = v127;
        CRAttributedString.subscript.getter();
        v50 = v129;
        CRAttributedString.Substring.runs.getter();
        (*(v128 + 8))(v49, v50);
        v51 = v135;
        CRAttributedString.Runs.next()();
        v128 = *(v139 + 48);
        v129 = v139 + 48;
        v52 = (v128)(v51, 1, v6);
        v53 = v122;
        v54 = v118;
        if (v52 != 1)
        {
          v127 = *(v139 + 32);
          v107 = (v117 + 8);
          v139 += 32;
          v108 = (v139 - 24);
          v124 = xmmword_10146C6B0;
          (v127)(v118, v51, v6);
          while (1)
          {
            v110 = v133;
            v111 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v111);
            *(&v116 - 4) = &type metadata for CRLWPParagraphAlignmentAttribute;
            *(&v116 - 3) = sub_1006ACAD4();
            *(&v116 - 2) = v53;
            swift_getKeyPath();
            sub_100962228();

            v112 = v134;
            CRAttributedString.Attributes.subscript.getter();

            (*v107)(v110, v112);
            v113 = *&v181[0];
            v114 = BYTE8(v181[0]);
            if ((sub_10079CD48(*&v181[0], SBYTE8(v181[0]), v184) & 1) == 0)
            {
              sub_1005B981C(&qword_101A095B8, &qword_101488F78);
              v115 = swift_allocObject();
              *(v115 + 16) = v124;
              *(v115 + 32) = v113;
              *(v115 + 40) = v114;
              sub_100798E84(v115);
              sub_100E6BBB4(&v165, v113, v114);
            }

            (*v108)(v54, v6);
            v109 = v135;
            CRAttributedString.Runs.next()();
            if ((v128)(v109, 1, v6) == 1)
            {
              break;
            }

            (v127)(v54, v109, v6);
          }
        }

        (*(v119 + 8))(v137, v138);
        v29 = v136;
        goto LABEL_11;
      }

      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }
  }

  v31 = *&v29[v132];
  if (!v31)
  {
LABEL_51:
    __break(1u);
    return;
  }

  v32 = v130;
  (*(*v31 + 896))();
  sub_1005E0A78(v32 + *(v131 + 20), v17);
  sub_1009625A4(v32, type metadata accessor for CRLWPShapeItemCRDTData);
  v33 = v21;
  v34 = v21;
  v35 = v126;
  v27(v34, &v17[*(v120 + 20)], v126);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v36 = v127;
  v37 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v37);
  *(&v116 - 4) = &type metadata for CRLWPParagraphAlignmentAttribute;
  v38 = sub_1006ACAD4();
  v39 = v122;
  *(&v116 - 3) = v38;
  *(&v116 - 2) = v39;
  swift_getKeyPath();
  sub_100962228();

  v40 = v129;
  CRAttributedString.Substring.subscript.getter();

  (*(v128 + 8))(v36, v40);
  sub_1005B981C(&qword_101A095B8, &qword_101488F78);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_10146C6B0;
  v42 = BYTE8(v181[0]);
  *(v41 + 32) = *&v181[0];
  *(v41 + 40) = v42;
  sub_100798E84(v41);
  (*(v125 + 8))(v33, v35);
LABEL_11:
  v55 = v185[2];
  if (v55)
  {
    v183 = _swiftEmptyArrayStorage;
    v138 = v185;
    v139 = v55;
    sub_1007765A4(0, v55, 0);
    v56 = v138;
    v57 = v139;
    v58 = 0;
    v59 = &v29[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
    v60 = v183;
    v61 = (v138 + 40);
    while (1)
    {
      if (v58 >= *(v56 + 16))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v62 = *v61;
      if (v62 != 255)
      {
        if (v62)
        {
          v63 = 4;
        }

        else
        {
          v63 = *(v61 - 1);
        }

        goto LABEL_29;
      }

      v64 = *(v59 + 13);
      v65 = *(v59 + 11);
      v177 = *(v59 + 12);
      v178 = v64;
      v66 = *(v59 + 13);
      v179 = *(v59 + 14);
      v67 = *(v59 + 9);
      v68 = *(v59 + 7);
      v173 = *(v59 + 8);
      v174 = v67;
      v69 = *(v59 + 9);
      v70 = *(v59 + 11);
      v175 = *(v59 + 10);
      v176 = v70;
      v71 = *(v59 + 5);
      v72 = *(v59 + 3);
      v169 = *(v59 + 4);
      v170 = v71;
      v73 = *(v59 + 5);
      v74 = *(v59 + 7);
      v171 = *(v59 + 6);
      v172 = v74;
      v75 = *(v59 + 1);
      v165 = *v59;
      v166 = v75;
      v76 = *(v59 + 3);
      v78 = *v59;
      v77 = *(v59 + 1);
      v167 = *(v59 + 2);
      v168 = v76;
      v181[12] = v177;
      v181[13] = v66;
      v181[14] = *(v59 + 14);
      v181[8] = v173;
      v181[9] = v69;
      v181[10] = v175;
      v181[11] = v65;
      v181[4] = v169;
      v181[5] = v73;
      v181[6] = v171;
      v181[7] = v68;
      v181[0] = v78;
      v181[1] = v77;
      v180 = *(v59 + 30);
      v182 = *(v59 + 30);
      v181[2] = v167;
      v181[3] = v72;
      if (sub_100695050(v181) != 1)
      {
        break;
      }

      v79 = *&v136[v132];
      if (!v79)
      {
        goto LABEL_49;
      }

      v80 = v130;
      (*(*v79 + 896))();
      sub_1005B981C(&unk_101A095A0, "d#'");
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v80, type metadata accessor for CRLWPShapeItemCRDTData);
      v154 = v140[12];
      v155 = v140[13];
      v156 = v140[14];
      v157 = v141;
      v150 = v140[8];
      v151 = v140[9];
      v152 = v140[10];
      v153 = v140[11];
      v146 = v140[4];
      v147 = v140[5];
      v148 = v140[6];
      v149 = v140[7];
      v142 = v140[0];
      v143 = v140[1];
      v144 = v140[2];
      v145 = v140[3];
      if (sub_100695050(&v142) != 1)
      {
        v81 = v157;
        v82 = v156;
        v83 = BYTE8(v156);
        v84 = v155;
        v85 = BYTE8(v155);
        v86 = v154;
        v87 = BYTE8(v154);
        v88 = v153;
        v89 = BYTE8(v153);
        v90 = v145;
        v91 = BYTE8(v145);
        v92 = v144;
        v93 = BYTE8(v144);
        v94 = BYTE10(v143);
        v95 = BYTE9(v143);
        v96 = DWORD1(v143);
        v97 = BYTE8(v143);
        v98 = v142;
        v99 = v143;
        v100 = &v142;
        goto LABEL_23;
      }

LABEL_28:
      v56 = v138;
      v57 = v139;
      v63 = 4;
LABEL_29:
      v183 = v60;
      v105 = v60[2];
      v104 = v60[3];
      if (v105 >= v104 >> 1)
      {
        sub_1007765A4((v104 > 1), v105 + 1, 1);
        v56 = v138;
        v57 = v139;
        v60 = v183;
      }

      ++v58;
      v60[2] = v105 + 1;
      v60[v105 + 4] = v63;
      v61 += 16;
      if (v57 == v58)
      {

        v29 = v136;
        goto LABEL_34;
      }
    }

    v98 = v165;
    v99 = v166;
    v96 = DWORD1(v166);
    v95 = BYTE9(v166);
    v94 = BYTE10(v166);
    v92 = v167;
    v93 = BYTE8(v167);
    v90 = v168;
    v91 = BYTE8(v168);
    v88 = v176;
    v89 = BYTE8(v176);
    v86 = v177;
    v87 = BYTE8(v177);
    v84 = v178;
    v85 = BYTE8(v178);
    v82 = v179;
    v81 = v180;
    v83 = BYTE8(v179);
    v97 = BYTE8(v166);
    v100 = &v165;
LABEL_23:
    v101 = v100[9];
    v162 = v100[8];
    v163 = v101;
    v164 = v100[10];
    v102 = v100[5];
    v158 = v100[4];
    v159 = v102;
    v103 = v100[7];
    v160 = v100[6];
    v161 = v103;
    v142 = v98;
    LOBYTE(v143) = v99;
    DWORD1(v143) = v96;
    BYTE8(v143) = v97 & 1;
    BYTE9(v143) = v95;
    BYTE10(v143) = v94;
    *&v144 = v92;
    BYTE8(v144) = v93;
    *&v145 = v90;
    BYTE8(v145) = v91;
    v150 = v162;
    v151 = v163;
    v152 = v164;
    v146 = v158;
    v147 = v102;
    v148 = v160;
    v149 = v103;
    *&v153 = v88;
    BYTE8(v153) = v89;
    *&v154 = v86;
    BYTE8(v154) = v87;
    *&v155 = v84;
    BYTE8(v155) = v85;
    *&v156 = v82;
    BYTE8(v156) = v83 & 1;
    v157 = v81;
    sub_10000BE14(&v165, v140, &unk_101A0D830, &qword_101488F70);
    sub_10081852C(&v142);
    if (v89 != 255)
    {
      if (v89)
      {
        v63 = 4;
      }

      else
      {
        v63 = v88;
      }

      v56 = v138;
      v57 = v139;
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v60 = _swiftEmptyArrayStorage;
LABEL_34:

  v106 = v60[2];
  if (v106)
  {
    if (v106 == 1)
    {
    }

    (*(v125 + 8))(v123, v126);
  }

  else
  {

    sub_100A43BEC(v29);
    (*(v125 + 8))(v123, v126);
  }
}

void sub_100957838(uint64_t a1, char *a2, char *a3, uint64_t a4)
{
  v154 = a1;
  *&v155 = a4;
  v153 = a3;
  v160 = sub_1005B981C(qword_101A0CF60, "87&");
  v141 = *(v160 - 8);
  __chkstk_darwin(v160);
  v159 = &v141 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v165 = *(v6 - 8);
  __chkstk_darwin(v6);
  v150 = &v141 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v161 = &v141 - v9;
  *&v163 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v142 = *(v163 - 8);
  __chkstk_darwin(v163);
  v162 = &v141 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v12 = *(v11 - 8);
  v157 = v11;
  v158 = v12;
  __chkstk_darwin(v11);
  v156 = &v141 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v152);
  v18 = &v141 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v151 = &v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v141 - v23;
  v26 = __chkstk_darwin(v25);
  v28 = &v141 - v27;
  v164 = a2;
  v149 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v29 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v29)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  (*(*v29 + 896))(v26);
  v148 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  v147 = v16;
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v145 = v20;
  v30 = *(v20 + 16);
  v30(v28, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v248 = _swiftEmptyArrayStorage;
  v247 = _swiftEmptySetSingleton;
  v146 = v19;
  v144 = v28;
  v31 = CRAttributedString.count.getter();
  v32 = v164;
  if (!v31 || (sub_100A31B44(v153, v155), (v33 & 1) != 0))
  {
    v34 = *&v32[v149];
    if (!v34)
    {
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v35 = v147;
    (*(*v34 + 896))();
    sub_1005E0A78(v35 + *(v148 + 20), v18);
    sub_1009625A4(v35, type metadata accessor for CRLWPShapeItemCRDTData);
    v36 = v146;
    v30(v24, &v18[*(v152 + 20)], v146);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v37 = v156;
    v38 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v38);
    *(&v141 - 4) = &type metadata for CRLWPCharacterFillAttribute;
    v39 = sub_10082489C();
    v40 = v154;
    *(&v141 - 3) = v39;
    *(&v141 - 2) = v40;
    swift_getKeyPath();
    sub_1008248F0();

    v41 = v157;
    CRAttributedString.Substring.subscript.getter();

    (*(v158 + 8))(v37, v41);
    sub_1005B981C(&qword_101A095F0, &qword_101489008);
    v42 = swift_allocObject();
    v43 = v188;
    v44 = v189;
    v212 = v189;
    v45 = v190;
    v213 = v190;
    v46 = v184;
    v207 = v184;
    v208 = v185;
    v48 = v186;
    v47 = v187;
    v210 = v187;
    v211 = v188;
    v209 = v186;
    *(v42 + 48) = v185;
    *(v42 + 64) = v48;
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 32) = v46;
    *(v42 + 112) = v44;
    *(v42 + 128) = v45;
    *(v42 + 80) = v47;
    *(v42 + 96) = v43;
    sub_10000BE14(&v207, &v223, &qword_1019FFF80, &qword_101489000);
    sub_100798E9C(v42);
    v227 = v188;
    v228 = v189;
    v229 = v190;
    v223 = v184;
    v224 = v185;
    v226 = v187;
    v225 = v186;
    sub_10000CAAC(&v223, &qword_1019FFF80, &qword_101489000);
    v143 = *(v145 + 8);
    v143(v24, v36);
    goto LABEL_13;
  }

  v49 = sub_100A31CD0(v153, v155);
  v51 = *&v32[v149];
  if (v51)
  {
    v52 = v49;
    v53 = v50;
    v54 = v147;
    (*(*v51 + 896))();
    sub_1005E0A78(v54 + *(v148 + 20), v18);
    sub_1009625A4(v54, type metadata accessor for CRLWPShapeItemCRDTData);
    v55 = v151;
    v56 = v146;
    v30(v151, v18, v146);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v57 = CRAttributedString.count.getter();
    v58 = *(v145 + 8);
    v58(v55, v56);
    if (v57 >= (v52 & ~(v52 >> 63)))
    {
      v59 = v52 & ~(v52 >> 63);
    }

    else
    {
      v59 = v57;
    }

    if ((v53 & ~(v53 >> 63)) < v59)
    {
      __break(1u);
      goto LABEL_61;
    }

    v143 = v58;
    v60 = v156;
    CRAttributedString.subscript.getter();
    v61 = v157;
    CRAttributedString.Substring.runs.getter();
    (*(v158 + 8))(v60, v61);
    v62 = v161;
    CRAttributedString.Runs.next()();
    v157 = *(v165 + 48);
    v158 = v165 + 48;
    v63 = v157(v62, 1, v6);
    v64 = v154;
    v65 = v150;
    if (v63 != 1)
    {
      v156 = *(v165 + 32);
      v125 = (v141 + 8);
      v165 += 32;
      v126 = (v165 - 24);
      v155 = xmmword_10146C6B0;
      (v156)(v150, v62, v6);
      while (1)
      {
        v135 = v159;
        v136 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v136);
        *(&v141 - 4) = &type metadata for CRLWPCharacterFillAttribute;
        *(&v141 - 3) = sub_10082489C();
        *(&v141 - 2) = v64;
        swift_getKeyPath();
        sub_1008248F0();

        v137 = v160;
        CRAttributedString.Attributes.subscript.getter();

        (*v125)(v135, v137);
        v254[4] = v227;
        v254[5] = v228;
        v254[6] = v229;
        v254[0] = v223;
        v254[1] = v224;
        v254[2] = v225;
        v254[3] = v226;
        if ((sub_10079CF20(v254, v247) & 1) == 0)
        {
          sub_1005B981C(&qword_101A095F0, &qword_101489008);
          v127 = swift_allocObject();
          v128 = v227;
          v129 = v228;
          v172 = v227;
          v173 = v228;
          v130 = v229;
          v174 = v229;
          v131 = v223;
          v168 = v223;
          v169 = v224;
          v132 = v226;
          v133 = v225;
          v170 = v225;
          v171 = v226;
          *(v127 + 48) = v224;
          *(v127 + 64) = v133;
          *(v127 + 16) = v155;
          *(v127 + 32) = v131;
          *(v127 + 112) = v129;
          *(v127 + 128) = v130;
          *(v127 + 80) = v132;
          *(v127 + 96) = v128;
          sub_10000BE14(&v168, &v207, &qword_1019FFF80, &qword_101489000);
          sub_100798E9C(v127);
          v253[4] = v227;
          v253[5] = v228;
          v253[6] = v229;
          v253[0] = v223;
          v253[1] = v224;
          v253[3] = v226;
          v253[2] = v225;
          sub_10000BE14(v253, &v207, &qword_1019FFF80, &qword_101489000);
          sub_100E6BDDC(&v239, v253);
          v188 = v243;
          v189 = v244;
          v190 = v245;
          v184 = v239;
          v185 = v240;
          v186 = v241;
          v187 = v242;
          sub_10000CAAC(&v184, &qword_1019FFF80, &qword_101489000);
        }

        (*v126)(v65, v6);
        v212 = v228;
        v213 = v229;
        v207 = v223;
        v208 = v224;
        v210 = v226;
        v211 = v227;
        v209 = v225;
        sub_10000CAAC(&v207, &qword_1019FFF80, &qword_101489000);
        v134 = v161;
        CRAttributedString.Runs.next()();
        if (v157(v134, 1, v6) == 1)
        {
          break;
        }

        (v156)(v65, v134, v6);
      }
    }

    (*(v142 + 8))(v162, v163);
    v32 = v164;
LABEL_13:
    v66 = v248;
    v67 = *(v248 + 2);
    if (v67)
    {
      v246 = _swiftEmptyArrayStorage;
      v68 = &v246;
      specialized ContiguousArray.reserveCapacity(_:)();
      if (*(v66 + 2))
      {
        v69 = 0;
        v70 = &v32[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride];
        v165 = v67 - 1;
        v71 = 32;
        v150 = v66;
        do
        {
          v72 = *&v66[v71 + 48];
          v73 = *&v66[v71 + 64];
          v74 = *&v66[v71 + 80];
          v245 = *&v66[v71 + 96];
          v75 = *&v66[v71];
          v76 = *&v66[v71 + 32];
          v240 = *&v66[v71 + 16];
          v239 = v75;
          v244 = v74;
          v243 = v73;
          v241 = v76;
          v242 = v72;
          if (v245)
          {
            v227 = v243;
            v228 = v244;
            v229 = v245;
            v223 = v239;
            v224 = v240;
            v226 = v242;
            v225 = v241;
            sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
            v249[2] = v242;
            v249[3] = v243;
            v249[4] = v244;
            v250 = v245;
            v249[0] = v240;
            v249[1] = v241;
            sub_10000BE14(&v239, &v207, &qword_1019FFF80, &qword_101489000);
            sub_10074A990(&v224, &v207);
            v77 = sub_1008B0490(v249);
            if (BYTE8(v223))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v78 = static OS_os_log.persistence;
              v79 = static os_log_type_t.info.getter();
              sub_100005404(v78, &_mh_execute_header, v79, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
              [objc_allocWithZone(CRLColorFill) initWithColor:v77];

              sub_10000CAAC(&v239, &qword_1019FFF80, &qword_101489000);
            }

            else
            {
              [objc_allocWithZone(CRLColorFill) initWithColor:v77];

              sub_10000CAAC(&v239, &qword_1019FFF80, &qword_101489000);
            }
          }

          else
          {
            v80 = *(v70 + 13);
            v81 = *(v70 + 11);
            v219 = *(v70 + 12);
            v220 = v80;
            v82 = *(v70 + 13);
            v221 = *(v70 + 14);
            v83 = *(v70 + 9);
            v84 = *(v70 + 7);
            v215 = *(v70 + 8);
            v216 = v83;
            v85 = *(v70 + 9);
            v86 = *(v70 + 11);
            v217 = *(v70 + 10);
            v218 = v86;
            v87 = *(v70 + 4);
            v88 = *(v70 + 3);
            v212 = *(v70 + 5);
            v89 = *(v70 + 5);
            v90 = *(v70 + 7);
            v213 = *(v70 + 6);
            v214 = v90;
            v91 = *(v70 + 1);
            v207 = *v70;
            v208 = v91;
            v92 = *(v70 + 3);
            v94 = *v70;
            v93 = *(v70 + 1);
            v209 = *(v70 + 2);
            v210 = v92;
            v211 = v87;
            v235 = v219;
            v236 = v82;
            v237 = *(v70 + 14);
            v231 = v215;
            v232 = v85;
            v233 = v217;
            v234 = v81;
            v227 = v87;
            v228 = v89;
            v229 = v213;
            v230 = v84;
            v223 = v94;
            v224 = v93;
            v222 = *(v70 + 30);
            v238 = *(v70 + 30);
            v225 = v209;
            v226 = v88;
            if (sub_100695050(&v223) == 1)
            {
              v95 = *&v32[v149];
              if (!v95)
              {
                goto LABEL_63;
              }

              v96 = v147;
              (*(*v95 + 896))();
              v97 = v32;
              sub_1005B981C(&unk_101A095A0, "d#'");
              CRRegister.wrappedValue.getter();
              sub_1009625A4(v96, type metadata accessor for CRLWPShapeItemCRDTData);
              v196 = v180;
              v197 = v181;
              v198 = v182;
              v199 = v183;
              v192 = v176;
              v193 = v177;
              v194 = v178;
              v195 = v179;
              v188 = v172;
              v189 = v173;
              v190 = v174;
              v191 = v175;
              v184 = v168;
              v185 = v169;
              v186 = v170;
              v187 = v171;
              if (sub_100695050(&v184) == 1)
              {

LABEL_35:
                v123 = [objc_opt_self() blackColor];
                goto LABEL_36;
              }

              v119 = v199;
              v101 = v198;
              v103 = BYTE8(v198);
              v99 = v197;
              v100 = BYTE8(v197);
              v118 = v196;
              v116 = BYTE8(v196);
              v117 = v195;
              v115 = BYTE8(v195);
              v114 = v187;
              v112 = BYTE8(v187);
              v113 = v186;
              v110 = BYTE8(v186);
              v111 = BYTE10(v185);
              v109 = BYTE9(v185);
              v108 = DWORD1(v185);
              v104 = BYTE8(v185);
              v107 = v184;
              v106 = v185;
              v204 = v192;
              v205 = v193;
              v206 = v194;
              v200 = v188;
              v201 = v189;
              v202 = v190;
              v203 = v191;
            }

            else
            {
              v163 = v207;
              LODWORD(v162) = v208;
              v98 = v32;
              LODWORD(v161) = DWORD1(v208);
              LODWORD(v160) = BYTE9(v208);
              LODWORD(v159) = BYTE10(v208);
              v158 = v209;
              LODWORD(v157) = BYTE8(v209);
              v156 = v210;
              LODWORD(v155) = BYTE8(v210);
              v154 = v218;
              LODWORD(v152) = BYTE8(v218);
              v151 = v219;
              LODWORD(v153) = BYTE8(v219);
              v99 = v220;
              v100 = BYTE8(v220);
              v101 = v221;
              v102 = v222;
              v103 = BYTE8(v221);
              v104 = BYTE8(v208);
              v204 = v215;
              v205 = v216;
              v206 = v217;
              v200 = v211;
              v201 = v212;
              v202 = v213;
              v203 = v214;
              v105 = v98;
              v106 = v162;
              v107 = v163;
              v108 = v161;
              v109 = v160;
              v110 = v157;
              v111 = v159;
              v112 = v155;
              v113 = v158;
              v114 = v156;
              v115 = v152;
              v116 = v153;
              v117 = v154;
              v118 = v151;
              v119 = v102;
            }

            v184 = v107;
            LOBYTE(v185) = v106;
            DWORD1(v185) = v108;
            BYTE8(v185) = v104 & 1;
            BYTE9(v185) = v109;
            BYTE10(v185) = v111;
            *&v186 = v113;
            BYTE8(v186) = v110;
            *&v187 = v114;
            BYTE8(v187) = v112;
            v192 = v204;
            v193 = v205;
            v194 = v206;
            v188 = v200;
            v189 = v201;
            v190 = v202;
            v191 = v203;
            *&v195 = v117;
            BYTE8(v195) = v115;
            *&v196 = v118;
            BYTE8(v196) = v116;
            *&v197 = v99;
            BYTE8(v197) = v100;
            *&v198 = v101;
            BYTE8(v198) = v103 & 1;
            v199 = v119;
            sub_10000BE14(&v200, &v168, &qword_1019FFF80, &qword_101489000);
            sub_10000BE14(&v207, &v168, &unk_101A0D830, &qword_101488F70);
            sub_10081852C(&v184);
            v167[4] = v205;
            v167[5] = v206;
            v166 = v200;
            v167[0] = v201;
            v167[2] = v203;
            v167[3] = v204;
            v167[1] = v202;
            if (!v206)
            {
              v32 = v164;

              v66 = v150;
              goto LABEL_35;
            }

            sub_100006370(0, &qword_101A00EB0, off_10182F7B0);
            v251[2] = v203;
            v251[3] = v204;
            v251[4] = v205;
            v252 = v206;
            v251[0] = v201;
            v251[1] = v202;
            sub_10074A990(v167, &v168);
            v120 = sub_1008B0490(v251);
            v32 = v164;
            v66 = v150;
            if (BYTE8(v166))
            {
              if (qword_1019F2268 != -1)
              {
                swift_once();
              }

              v121 = static OS_os_log.persistence;
              v122 = static os_log_type_t.info.getter();
              sub_100005404(v121, &_mh_execute_header, v122, "Tried to decode unknown fill value. Falling back to unarchiving color fill.", 75, 2, _swiftEmptyArrayStorage);
            }

            [objc_allocWithZone(CRLColorFill) initWithColor:v120];

            sub_10000CAAC(&v200, &qword_1019FFF80, &qword_101489000);
          }

LABEL_36:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v68 = &v246;
          specialized ContiguousArray._endMutation()();
          if (v165 == v69)
          {

            v68 = v246;
            goto LABEL_41;
          }

          ++v69;
          v71 += 112;
        }

        while (v69 < *(v66 + 2));
      }

      __break(1u);
    }

    else
    {

      v68 = _swiftEmptyArrayStorage;
LABEL_41:

      if (!(v68 >> 62))
      {
        v124 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v124)
        {
          if (v124 <= 1)
          {
            goto LABEL_54;
          }

          goto LABEL_44;
        }

LABEL_58:

        sub_100A43680(v32);
        v139 = v144;
        v140 = v146;
        goto LABEL_59;
      }
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      if (_CocoaArrayWrapper.endIndex.getter() <= 1)
      {
LABEL_54:
        v30 = v146;
        v6 = v144;
        if ((v68 & 0xC000000000000001) == 0)
        {
          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v138 = *(v68 + 32);
LABEL_57:

            v139 = v6;
            v140 = v30;
LABEL_59:
            v143(v139, v140);
            return;
          }

          __break(1u);
LABEL_63:
          __break(1u);
          goto LABEL_64;
        }

LABEL_61:
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        goto LABEL_57;
      }

LABEL_44:
      v143(v144, v146);
      return;
    }

    goto LABEL_58;
  }

LABEL_66:
  __break(1u);
}

void sub_100958DDC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v130 = a4;
  v127 = a3;
  v128 = a1;
  v140 = sub_1005B981C(qword_101A0CF60, "87&");
  v122 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v122 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v145 = *(v6 - 8);
  __chkstk_darwin(v6);
  v123 = &v122 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v141 = &v122 - v9;
  v144 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v124 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v122 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v133 = &v122 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v126);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v125 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v122 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v122 - v26;
  v143 = a2;
  v138 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_50;
  }

  (*(*v28 + 896))(v25);
  v137 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v136 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v131 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v191 = _swiftEmptyArrayStorage;
  v190 = _swiftEmptySetSingleton;
  v132 = v18;
  v30 = CRAttributedString.count.getter();
  v31 = v143;
  v129 = v27;
  if (v30 && (sub_100A31B44(v127, v130), (v32 & 1) == 0))
  {
    v127 = sub_100A31CD0(v127, v130);
    *&v130 = v46;
    v47 = *(v31 + v138);
    if (!v47)
    {
      goto LABEL_52;
    }

    v48 = v136;
    (*(*v47 + 896))();
    sub_1005E0A78(v48 + *(v137 + 20), v17);
    sub_1009625A4(v48, type metadata accessor for CRLWPShapeItemCRDTData);
    v49 = v125;
    v50 = v132;
    v29(v125, v17, v132);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v51 = CRAttributedString.count.getter();
    v52 = *(v131 + 8);
    v52(v49, v50);
    if (v51 >= (v127 & ~(v127 >> 63)))
    {
      v53 = v127 & ~(v127 >> 63);
    }

    else
    {
      v53 = v51;
    }

    if ((v130 & ~(v130 >> 63)) < v53)
    {
      goto LABEL_48;
    }

    v127 = v52;
    v54 = v133;
    CRAttributedString.subscript.getter();
    v55 = v135;
    CRAttributedString.Substring.runs.getter();
    (*(v134 + 8))(v54, v55);
    v56 = v141;
    CRAttributedString.Runs.next()();
    v134 = *(v145 + 48);
    v135 = v145 + 48;
    v57 = (v134)(v56, 1, v6);
    v58 = v128;
    v59 = v123;
    if (v57 != 1)
    {
      v133 = *(v145 + 32);
      v113 = (v122 + 8);
      v145 += 32;
      v114 = (v145 - 24);
      v130 = xmmword_10146C6B0;
      v115 = v139;
      (v133)(v123, v56, v6);
      while (1)
      {
        v117 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v117);
        *(&v122 - 4) = &type metadata for CRLWPStrikethroughAttribute;
        *(&v122 - 3) = sub_10096227C();
        *(&v122 - 2) = v58;
        swift_getKeyPath();
        sub_1009622D0();

        v118 = v140;
        CRAttributedString.Attributes.subscript.getter();

        (*v113)(v115, v118);
        v119 = *&v187[0];
        v120 = BYTE8(v187[0]);
        if ((sub_10079D3CC(*&v187[0], SBYTE8(v187[0]), v190) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09610, &qword_101489038);
          v121 = swift_allocObject();
          *(v121 + 16) = v130;
          *(v121 + 32) = v119;
          *(v121 + 40) = v120;
          sub_100798FA4(v121);
          sub_100E6C3B8(&v171, v119, v120);
        }

        (*v114)(v59, v6);
        v116 = v141;
        CRAttributedString.Runs.next()();
        if ((v134)(v116, 1, v6) == 1)
        {
          break;
        }

        (v133)(v59, v116, v6);
      }
    }

    (*(v124 + 8))(v142, v144);
    v37 = v132;
    v27 = v129;
    v45 = v127;
  }

  else
  {
    v33 = *(v31 + v138);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = v136;
    (*(*v33 + 896))();
    sub_1005E0A78(v34 + *(v137 + 20), v17);
    sub_1009625A4(v34, type metadata accessor for CRLWPShapeItemCRDTData);
    v35 = v23;
    v36 = v23;
    v37 = v132;
    v29(v36, &v17[*(v126 + 20)], v132);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v38 = v133;
    v39 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v39);
    *(&v122 - 4) = &type metadata for CRLWPStrikethroughAttribute;
    v40 = sub_10096227C();
    v41 = v128;
    *(&v122 - 3) = v40;
    *(&v122 - 2) = v41;
    swift_getKeyPath();
    sub_1009622D0();

    v42 = v135;
    CRAttributedString.Substring.subscript.getter();

    (*(v134 + 8))(v38, v42);
    sub_1005B981C(&unk_101A09610, &qword_101489038);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10146C6B0;
    v44 = BYTE8(v187[0]);
    *(v43 + 32) = *&v187[0];
    *(v43 + 40) = v44;
    sub_100798FA4(v43);
    v45 = *(v131 + 8);
    v45(v35, v37);
  }

  v60 = v191[2];
  if (!v60)
  {

    v66 = _swiftEmptyArrayStorage;
LABEL_36:

    v111 = v66[2];
    v112 = v143;
    if (v111)
    {
      if (v111 == 1)
      {
      }

      v45(v27, v37);
    }

    else
    {

      sub_100A43300(v112);
      v45(v27, v37);
    }

    return;
  }

  v127 = v45;
  v189 = _swiftEmptyArrayStorage;
  v144 = v191;
  v145 = v60;
  sub_1007765C4(0, v60, 0);
  v61 = v144;
  v62 = v145;
  v63 = 0;
  v64 = v143 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v65 = (v144 + 40);
  v66 = v189;
  while (v63 < *(v61 + 16))
  {
    v67 = *v65;
    if (v67 != 255)
    {
      if (v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = *(v65 - 1);
      }

      goto LABEL_31;
    }

    v69 = *(v64 + 208);
    v70 = *(v64 + 176);
    v183 = *(v64 + 192);
    v184 = v69;
    v71 = *(v64 + 208);
    v185 = *(v64 + 224);
    v72 = *(v64 + 144);
    v73 = *(v64 + 112);
    v179 = *(v64 + 128);
    v180 = v72;
    v74 = *(v64 + 144);
    v75 = *(v64 + 176);
    v181 = *(v64 + 160);
    v182 = v75;
    v76 = *(v64 + 80);
    v77 = *(v64 + 48);
    v175 = *(v64 + 64);
    v176 = v76;
    v78 = *(v64 + 80);
    v79 = *(v64 + 112);
    v177 = *(v64 + 96);
    v178 = v79;
    v80 = *(v64 + 16);
    v171 = *v64;
    v172 = v80;
    v81 = *(v64 + 48);
    v83 = *v64;
    v82 = *(v64 + 16);
    v173 = *(v64 + 32);
    v174 = v81;
    v187[12] = v183;
    v187[13] = v71;
    v187[14] = *(v64 + 224);
    v187[8] = v179;
    v187[9] = v74;
    v187[10] = v181;
    v187[11] = v70;
    v187[4] = v175;
    v187[5] = v78;
    v187[6] = v177;
    v187[7] = v73;
    v187[0] = v83;
    v187[1] = v82;
    v186 = *(v64 + 240);
    v188 = *(v64 + 240);
    v187[2] = v173;
    v187[3] = v77;
    if (sub_100695050(v187) != 1)
    {
      v103 = v171;
      v104 = v172;
      v101 = DWORD1(v172);
      v100 = BYTE9(v172);
      v99 = BYTE10(v172);
      v97 = v173;
      v98 = BYTE8(v173);
      v95 = v174;
      v96 = BYTE8(v174);
      v93 = v182;
      v94 = BYTE8(v182);
      v91 = v183;
      v92 = BYTE8(v183);
      v89 = v184;
      v90 = BYTE8(v184);
      v87 = v185;
      v86 = v186;
      v88 = BYTE8(v185);
      v102 = BYTE8(v172);
      v105 = &v171;
LABEL_25:
      v106 = v105[9];
      v168 = v105[8];
      v169 = v106;
      v170 = v105[10];
      v107 = v105[5];
      v164 = v105[4];
      v165 = v107;
      v108 = v105[7];
      v166 = v105[6];
      v167 = v108;
      v148 = v103;
      LOBYTE(v149) = v104;
      DWORD1(v149) = v101;
      BYTE8(v149) = v102 & 1;
      BYTE9(v149) = v100;
      BYTE10(v149) = v99;
      *&v150 = v97;
      BYTE8(v150) = v98;
      *&v151 = v95;
      BYTE8(v151) = v96;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v152 = v164;
      v153 = v107;
      v154 = v166;
      v155 = v108;
      *&v159 = v93;
      BYTE8(v159) = v94;
      *&v160 = v91;
      BYTE8(v160) = v92;
      *&v161 = v89;
      BYTE8(v161) = v90;
      *&v162 = v87;
      BYTE8(v162) = v88 & 1;
      v163 = v86;
      sub_10000BE14(&v171, v146, &unk_101A0D830, &qword_101488F70);
      sub_10081852C(&v148);
      if (v96 != 255)
      {
        if (v96)
        {
          v68 = 0;
        }

        else
        {
          v68 = v95;
        }

        v61 = v144;
        v62 = v145;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v84 = *(v143 + v138);
    if (!v84)
    {
      goto LABEL_49;
    }

    v85 = v136;
    (*(*v84 + 896))();
    sub_1005B981C(&unk_101A095A0, "d#'");
    CRRegister.wrappedValue.getter();
    sub_1009625A4(v85, type metadata accessor for CRLWPShapeItemCRDTData);
    v160 = v146[12];
    v161 = v146[13];
    v162 = v146[14];
    v163 = v147;
    v156 = v146[8];
    v157 = v146[9];
    v158 = v146[10];
    v159 = v146[11];
    v152 = v146[4];
    v153 = v146[5];
    v154 = v146[6];
    v155 = v146[7];
    v148 = v146[0];
    v149 = v146[1];
    v150 = v146[2];
    v151 = v146[3];
    if (sub_100695050(&v148) != 1)
    {
      v86 = v163;
      v87 = v162;
      v88 = BYTE8(v162);
      v89 = v161;
      v90 = BYTE8(v161);
      v91 = v160;
      v92 = BYTE8(v160);
      v93 = v159;
      v94 = BYTE8(v159);
      v95 = v151;
      v96 = BYTE8(v151);
      v97 = v150;
      v98 = BYTE8(v150);
      v99 = BYTE10(v149);
      v100 = BYTE9(v149);
      v101 = DWORD1(v149);
      v102 = BYTE8(v149);
      v103 = v148;
      v104 = v149;
      v105 = &v148;
      goto LABEL_25;
    }

LABEL_30:
    v61 = v144;
    v62 = v145;
    v68 = 0;
LABEL_31:
    v189 = v66;
    v110 = v66[2];
    v109 = v66[3];
    if (v110 >= v109 >> 1)
    {
      sub_1007765C4((v109 > 1), v110 + 1, 1);
      v61 = v144;
      v62 = v145;
      v66 = v189;
    }

    ++v63;
    v66[2] = v110 + 1;
    v66[v110 + 4] = v68;
    v65 += 16;
    if (v62 == v63)
    {

      v37 = v132;
      v27 = v129;
      v45 = v127;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_100959D4C(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v130 = a4;
  v127 = a3;
  v128 = a1;
  v140 = sub_1005B981C(qword_101A0CF60, "87&");
  v122 = *(v140 - 8);
  __chkstk_darwin(v140);
  v139 = &v122 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v145 = *(v6 - 8);
  __chkstk_darwin(v6);
  v123 = &v122 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v141 = &v122 - v9;
  v144 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v124 = *(v144 - 8);
  __chkstk_darwin(v144);
  v142 = &v122 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v134 = *(v11 - 8);
  v135 = v11;
  __chkstk_darwin(v11);
  v133 = &v122 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v126);
  v17 = &v122 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v125 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v122 - v22;
  v25 = __chkstk_darwin(v24);
  v27 = &v122 - v26;
  v143 = a2;
  v138 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_50;
  }

  (*(*v28 + 896))(v25);
  v137 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v136 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v131 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v191 = _swiftEmptyArrayStorage;
  v190 = _swiftEmptySetSingleton;
  v132 = v18;
  v30 = CRAttributedString.count.getter();
  v31 = v143;
  v129 = v27;
  if (v30 && (sub_100A31B44(v127, v130), (v32 & 1) == 0))
  {
    v127 = sub_100A31CD0(v127, v130);
    *&v130 = v46;
    v47 = *(v31 + v138);
    if (!v47)
    {
      goto LABEL_52;
    }

    v48 = v136;
    (*(*v47 + 896))();
    sub_1005E0A78(v48 + *(v137 + 20), v17);
    sub_1009625A4(v48, type metadata accessor for CRLWPShapeItemCRDTData);
    v49 = v125;
    v50 = v132;
    v29(v125, v17, v132);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v51 = CRAttributedString.count.getter();
    v52 = *(v131 + 8);
    v52(v49, v50);
    if (v51 >= (v127 & ~(v127 >> 63)))
    {
      v53 = v127 & ~(v127 >> 63);
    }

    else
    {
      v53 = v51;
    }

    if ((v130 & ~(v130 >> 63)) < v53)
    {
      goto LABEL_48;
    }

    v127 = v52;
    v54 = v133;
    CRAttributedString.subscript.getter();
    v55 = v135;
    CRAttributedString.Substring.runs.getter();
    (*(v134 + 8))(v54, v55);
    v56 = v141;
    CRAttributedString.Runs.next()();
    v134 = *(v145 + 48);
    v135 = v145 + 48;
    v57 = (v134)(v56, 1, v6);
    v58 = v128;
    v59 = v123;
    if (v57 != 1)
    {
      v133 = *(v145 + 32);
      v113 = (v122 + 8);
      v145 += 32;
      v114 = (v145 - 24);
      v130 = xmmword_10146C6B0;
      v115 = v139;
      (v133)(v123, v56, v6);
      while (1)
      {
        v117 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v117);
        *(&v122 - 4) = &type metadata for CRLWPUnderlineAttribute;
        *(&v122 - 3) = sub_100824704();
        *(&v122 - 2) = v58;
        swift_getKeyPath();
        sub_100824758();

        v118 = v140;
        CRAttributedString.Attributes.subscript.getter();

        (*v113)(v115, v118);
        v119 = *&v187[0];
        v120 = BYTE8(v187[0]);
        if ((sub_10079D5A4(*&v187[0], SBYTE8(v187[0]), v190) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09630, &qword_101489068);
          v121 = swift_allocObject();
          *(v121 + 16) = v130;
          *(v121 + 32) = v119;
          *(v121 + 40) = v120;
          sub_100798FBC(v121);
          sub_100E6C5E0(&v171, v119, v120);
        }

        (*v114)(v59, v6);
        v116 = v141;
        CRAttributedString.Runs.next()();
        if ((v134)(v116, 1, v6) == 1)
        {
          break;
        }

        (v133)(v59, v116, v6);
      }
    }

    (*(v124 + 8))(v142, v144);
    v37 = v132;
    v27 = v129;
    v45 = v127;
  }

  else
  {
    v33 = *(v31 + v138);
    if (!v33)
    {
      goto LABEL_51;
    }

    v34 = v136;
    (*(*v33 + 896))();
    sub_1005E0A78(v34 + *(v137 + 20), v17);
    sub_1009625A4(v34, type metadata accessor for CRLWPShapeItemCRDTData);
    v35 = v23;
    v36 = v23;
    v37 = v132;
    v29(v36, &v17[*(v126 + 20)], v132);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v38 = v133;
    v39 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v39);
    *(&v122 - 4) = &type metadata for CRLWPUnderlineAttribute;
    v40 = sub_100824704();
    v41 = v128;
    *(&v122 - 3) = v40;
    *(&v122 - 2) = v41;
    swift_getKeyPath();
    sub_100824758();

    v42 = v135;
    CRAttributedString.Substring.subscript.getter();

    (*(v134 + 8))(v38, v42);
    sub_1005B981C(&qword_101A09630, &qword_101489068);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_10146C6B0;
    v44 = BYTE8(v187[0]);
    *(v43 + 32) = *&v187[0];
    *(v43 + 40) = v44;
    sub_100798FBC(v43);
    v45 = *(v131 + 8);
    v45(v35, v37);
  }

  v60 = v191[2];
  if (!v60)
  {

    v66 = _swiftEmptyArrayStorage;
LABEL_36:

    v111 = v66[2];
    v112 = v143;
    if (v111)
    {
      if (v111 == 1)
      {
      }

      v45(v27, v37);
    }

    else
    {

      sub_100A42F80(v112);
      v45(v27, v37);
    }

    return;
  }

  v127 = v45;
  v189 = _swiftEmptyArrayStorage;
  v144 = v191;
  v145 = v60;
  sub_1007765E4(0, v60, 0);
  v61 = v144;
  v62 = v145;
  v63 = 0;
  v64 = v143 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v65 = (v144 + 40);
  v66 = v189;
  while (v63 < *(v61 + 16))
  {
    v67 = *v65;
    if (v67 != 255)
    {
      if (v67)
      {
        v68 = 0;
      }

      else
      {
        v68 = *(v65 - 1);
      }

      goto LABEL_31;
    }

    v69 = *(v64 + 208);
    v70 = *(v64 + 176);
    v183 = *(v64 + 192);
    v184 = v69;
    v71 = *(v64 + 208);
    v185 = *(v64 + 224);
    v72 = *(v64 + 144);
    v73 = *(v64 + 112);
    v179 = *(v64 + 128);
    v180 = v72;
    v74 = *(v64 + 144);
    v75 = *(v64 + 176);
    v181 = *(v64 + 160);
    v182 = v75;
    v76 = *(v64 + 80);
    v77 = *(v64 + 48);
    v175 = *(v64 + 64);
    v176 = v76;
    v78 = *(v64 + 80);
    v79 = *(v64 + 112);
    v177 = *(v64 + 96);
    v178 = v79;
    v80 = *(v64 + 16);
    v171 = *v64;
    v172 = v80;
    v81 = *(v64 + 48);
    v83 = *v64;
    v82 = *(v64 + 16);
    v173 = *(v64 + 32);
    v174 = v81;
    v187[12] = v183;
    v187[13] = v71;
    v187[14] = *(v64 + 224);
    v187[8] = v179;
    v187[9] = v74;
    v187[10] = v181;
    v187[11] = v70;
    v187[4] = v175;
    v187[5] = v78;
    v187[6] = v177;
    v187[7] = v73;
    v187[0] = v83;
    v187[1] = v82;
    v186 = *(v64 + 240);
    v188 = *(v64 + 240);
    v187[2] = v173;
    v187[3] = v77;
    if (sub_100695050(v187) != 1)
    {
      v103 = v171;
      v104 = v172;
      v101 = DWORD1(v172);
      v100 = BYTE9(v172);
      v99 = BYTE10(v172);
      v97 = v173;
      v98 = BYTE8(v173);
      v95 = v174;
      v96 = BYTE8(v174);
      v93 = v182;
      v94 = BYTE8(v182);
      v91 = v183;
      v92 = BYTE8(v183);
      v89 = v184;
      v90 = BYTE8(v184);
      v87 = v185;
      v86 = v186;
      v88 = BYTE8(v185);
      v102 = BYTE8(v172);
      v105 = &v171;
LABEL_25:
      v106 = v105[9];
      v168 = v105[8];
      v169 = v106;
      v170 = v105[10];
      v107 = v105[5];
      v164 = v105[4];
      v165 = v107;
      v108 = v105[7];
      v166 = v105[6];
      v167 = v108;
      v148 = v103;
      LOBYTE(v149) = v104;
      DWORD1(v149) = v101;
      BYTE8(v149) = v102 & 1;
      BYTE9(v149) = v100;
      BYTE10(v149) = v99;
      *&v150 = v97;
      BYTE8(v150) = v98;
      *&v151 = v95;
      BYTE8(v151) = v96;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v152 = v164;
      v153 = v107;
      v154 = v166;
      v155 = v108;
      *&v159 = v93;
      BYTE8(v159) = v94;
      *&v160 = v91;
      BYTE8(v160) = v92;
      *&v161 = v89;
      BYTE8(v161) = v90;
      *&v162 = v87;
      BYTE8(v162) = v88 & 1;
      v163 = v86;
      sub_10000BE14(&v171, v146, &unk_101A0D830, &qword_101488F70);
      sub_10081852C(&v148);
      if (v98 != 255)
      {
        if (v98)
        {
          v68 = 0;
        }

        else
        {
          v68 = v97;
        }

        v61 = v144;
        v62 = v145;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v84 = *(v143 + v138);
    if (!v84)
    {
      goto LABEL_49;
    }

    v85 = v136;
    (*(*v84 + 896))();
    sub_1005B981C(&unk_101A095A0, "d#'");
    CRRegister.wrappedValue.getter();
    sub_1009625A4(v85, type metadata accessor for CRLWPShapeItemCRDTData);
    v160 = v146[12];
    v161 = v146[13];
    v162 = v146[14];
    v163 = v147;
    v156 = v146[8];
    v157 = v146[9];
    v158 = v146[10];
    v159 = v146[11];
    v152 = v146[4];
    v153 = v146[5];
    v154 = v146[6];
    v155 = v146[7];
    v148 = v146[0];
    v149 = v146[1];
    v150 = v146[2];
    v151 = v146[3];
    if (sub_100695050(&v148) != 1)
    {
      v86 = v163;
      v87 = v162;
      v88 = BYTE8(v162);
      v89 = v161;
      v90 = BYTE8(v161);
      v91 = v160;
      v92 = BYTE8(v160);
      v93 = v159;
      v94 = BYTE8(v159);
      v95 = v151;
      v96 = BYTE8(v151);
      v97 = v150;
      v98 = BYTE8(v150);
      v99 = BYTE10(v149);
      v100 = BYTE9(v149);
      v101 = DWORD1(v149);
      v102 = BYTE8(v149);
      v103 = v148;
      v104 = v149;
      v105 = &v148;
      goto LABEL_25;
    }

LABEL_30:
    v61 = v144;
    v62 = v145;
    v68 = 0;
LABEL_31:
    v189 = v66;
    v110 = v66[2];
    v109 = v66[3];
    if (v110 >= v109 >> 1)
    {
      sub_1007765E4((v109 > 1), v110 + 1, 1);
      v61 = v144;
      v62 = v145;
      v66 = v189;
    }

    ++v63;
    v66[2] = v110 + 1;
    v66[v110 + 4] = v68;
    v65 += 16;
    if (v62 == v63)
    {

      v37 = v132;
      v27 = v129;
      v45 = v127;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

void sub_10095ACBC(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v121 = a4;
  v119 = a3;
  v133 = a1;
  v128 = sub_1005B981C(qword_101A0CF60, "87&");
  v114 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v113 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v132 = *(v6 - 8);
  __chkstk_darwin(v6);
  v115 = &v113 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v129 = &v113 - v9;
  v131 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v116 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v113 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v125 = *(v11 - 8);
  v126 = v11;
  __chkstk_darwin(v11);
  v124 = &v113 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v117);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v113 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v113 - v26;
  v136 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v137 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_43;
  }

  (*(*v28 + 896))(v25);
  v135 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v134 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v122 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v183 = _swiftEmptyArrayStorage;
  v182 = _swiftEmptySetSingleton;
  v123 = v18;
  v120 = v27;
  v30 = CRAttributedString.count.getter();
  v31 = v137;
  if (v30 && (sub_100A31B44(v119, v121), (v32 & 1) == 0))
  {
    v119 = sub_100A31CD0(v119, v121);
    *&v121 = v45;
    v46 = *(v31 + v136);
    if (!v46)
    {
      goto LABEL_45;
    }

    v47 = v134;
    (*(*v46 + 896))();
    sub_1005E0A78(v47 + *(v135 + 20), v17);
    sub_1009625A4(v47, type metadata accessor for CRLWPShapeItemCRDTData);
    v48 = v123;
    v29(v21, v17, v123);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v49 = CRAttributedString.count.getter();
    v50 = *(v122 + 8);
    v50(v21, v48);
    if (v49 >= (v119 & ~(v119 >> 63)))
    {
      v51 = v119 & ~(v119 >> 63);
    }

    else
    {
      v51 = v49;
    }

    if ((v121 & ~(v121 >> 63)) < v51)
    {
      goto LABEL_41;
    }

    v119 = v50;
    v52 = v124;
    CRAttributedString.subscript.getter();
    v53 = v126;
    CRAttributedString.Substring.runs.getter();
    (*(v125 + 8))(v52, v53);
    v54 = v129;
    CRAttributedString.Runs.next()();
    v125 = *(v132 + 48);
    v126 = v132 + 48;
    v55 = (v125)(v54, 1, v6);
    v56 = v115;
    if (v55 != 1)
    {
      v124 = *(v132 + 32);
      v103 = (v114 + 8);
      v132 += 32;
      v104 = (v132 - 24);
      v121 = xmmword_10146C6B0;
      (v124)(v115, v54, v6);
      while (1)
      {
        v106 = v127;
        v107 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v107);
        *(&v113 - 4) = &type metadata for CRLWPFontItalicAttribute;
        v108 = sub_1008245B4();
        v109 = v133;
        *(&v113 - 3) = v108;
        *(&v113 - 2) = v109;
        swift_getKeyPath();
        sub_100824608();

        v110 = v128;
        CRAttributedString.Attributes.subscript.getter();

        (*v103)(v106, v110);
        v111 = LOBYTE(v179[0]);
        if ((sub_10079D77C(LOBYTE(v179[0]), v182) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09648, &qword_1014890A0);
          v112 = swift_allocObject();
          *(v112 + 16) = v121;
          *(v112 + 32) = v111;
          sub_1007990D0(v112);
          sub_100E6C808(&v163, v111);
        }

        (*v104)(v56, v6);
        v105 = v129;
        CRAttributedString.Runs.next()();
        if ((v125)(v105, 1, v6) == 1)
        {
          break;
        }

        (v124)(v56, v105, v6);
      }
    }

    (*(v116 + 8))(v130, v131);
    v44 = v137;
    v43 = v119;
  }

  else
  {
    v33 = *(v31 + v136);
    if (!v33)
    {
      goto LABEL_44;
    }

    v34 = v134;
    (*(*v33 + 896))();
    sub_1005E0A78(v34 + *(v135 + 20), v17);
    sub_1009625A4(v34, type metadata accessor for CRLWPShapeItemCRDTData);
    v35 = v118;
    v36 = v123;
    v29(v118, &v17[*(v117 + 20)], v123);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v37 = v124;
    v38 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v38);
    *(&v113 - 4) = &type metadata for CRLWPFontItalicAttribute;
    v39 = sub_1008245B4();
    v40 = v133;
    *(&v113 - 3) = v39;
    *(&v113 - 2) = v40;
    swift_getKeyPath();
    sub_100824608();

    v41 = v126;
    CRAttributedString.Substring.subscript.getter();

    (*(v125 + 8))(v37, v41);
    sub_1005B981C(&qword_101A09648, &qword_1014890A0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 32) = v179[0];
    sub_1007990D0(v42);
    v43 = *(v122 + 8);
    v43(v35, v36);
    v44 = v137;
  }

  v57 = v183;
  v58 = v183[2];
  if (!v58)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_30:

    v101 = v62[2];
    v102 = v120;
    if (v101)
    {
      if (v101 == 1)
      {

        v43(v102, v123);
      }

      else
      {
        v43(v120, v123);
      }
    }

    else
    {

      sub_100A42C08(v44);
      v43(v102, v123);
    }

    return;
  }

  v119 = v43;
  v181 = _swiftEmptyArrayStorage;
  v133 = v58;
  sub_100776604(0, v58, 0);
  v59 = v133;
  v60 = 0;
  v61 = v44 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v62 = v181;
  while (v60 < v57[2])
  {
    v63 = *(v57 + v60 + 32);
    if (v63 == 2)
    {
      v64 = *(v61 + 208);
      v65 = *(v61 + 176);
      v175 = *(v61 + 192);
      v176 = v64;
      v66 = *(v61 + 208);
      v177 = *(v61 + 224);
      v67 = *(v61 + 144);
      v68 = *(v61 + 112);
      v171 = *(v61 + 128);
      v172 = v67;
      v69 = *(v61 + 144);
      v70 = *(v61 + 176);
      v173 = *(v61 + 160);
      v174 = v70;
      v71 = *(v61 + 80);
      v72 = *(v61 + 48);
      v167 = *(v61 + 64);
      v168 = v71;
      v73 = *(v61 + 80);
      v74 = *(v61 + 112);
      v169 = *(v61 + 96);
      v170 = v74;
      v75 = *(v61 + 16);
      v163 = *v61;
      v164 = v75;
      v76 = *(v61 + 48);
      v78 = *v61;
      v77 = *(v61 + 16);
      v165 = *(v61 + 32);
      v166 = v76;
      v179[12] = v175;
      v179[13] = v66;
      v179[14] = *(v61 + 224);
      v179[8] = v171;
      v179[9] = v69;
      v179[10] = v173;
      v179[11] = v65;
      v179[4] = v167;
      v179[5] = v73;
      v179[6] = v169;
      v179[7] = v68;
      v179[0] = v78;
      v179[1] = v77;
      v178 = *(v61 + 240);
      v180 = *(v61 + 240);
      v179[2] = v165;
      v179[3] = v72;
      if (sub_100695050(v179) != 1)
      {
        v81 = v163;
        v82 = v164;
        v83 = DWORD1(v164);
        v84 = BYTE9(v164);
        v63 = BYTE10(v164);
        v85 = v165;
        v86 = BYTE8(v165);
        v87 = v166;
        v88 = BYTE8(v166);
        v89 = v174;
        v90 = BYTE8(v174);
        v91 = v175;
        v92 = BYTE8(v175);
        v93 = v176;
        v94 = BYTE8(v176);
        v95 = v177;
        v96 = v178;
        v97 = BYTE8(v177);
        v98 = BYTE8(v164);
        v160 = v171;
        v161 = v172;
        v162 = v173;
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        goto LABEL_23;
      }

      v79 = *(v137 + v136);
      if (!v79)
      {
        goto LABEL_42;
      }

      v80 = v134;
      (*(*v79 + 896))();
      sub_1005B981C(&unk_101A095A0, "d#'");
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v80, type metadata accessor for CRLWPShapeItemCRDTData);
      v152 = v138[12];
      v153 = v138[13];
      v154 = v138[14];
      v155 = v139;
      v148 = v138[8];
      v149 = v138[9];
      v150 = v138[10];
      v151 = v138[11];
      v144 = v138[4];
      v145 = v138[5];
      v146 = v138[6];
      v147 = v138[7];
      v140 = v138[0];
      v141 = v138[1];
      v142 = v138[2];
      v143 = v138[3];
      if (sub_100695050(&v140) != 1)
      {
        v96 = v155;
        v95 = v154;
        v97 = BYTE8(v154);
        v93 = v153;
        v94 = BYTE8(v153);
        v91 = v152;
        v92 = BYTE8(v152);
        v89 = v151;
        v90 = BYTE8(v151);
        v87 = v143;
        v88 = BYTE8(v143);
        v85 = v142;
        v86 = BYTE8(v142);
        v63 = BYTE10(v141);
        v84 = BYTE9(v141);
        v83 = DWORD1(v141);
        v98 = BYTE8(v141);
        v81 = v140;
        v82 = v141;
        v160 = v148;
        v161 = v149;
        v162 = v150;
        v156 = v144;
        v157 = v145;
        v158 = v146;
        v159 = v147;
        v59 = v133;
LABEL_23:
        v140 = v81;
        LOBYTE(v141) = v82;
        DWORD1(v141) = v83;
        BYTE8(v141) = v98 & 1;
        BYTE9(v141) = v84;
        BYTE10(v141) = v63;
        *&v142 = v85;
        BYTE8(v142) = v86;
        *&v143 = v87;
        BYTE8(v143) = v88;
        v148 = v160;
        v149 = v161;
        v150 = v162;
        v144 = v156;
        v145 = v157;
        v146 = v158;
        v147 = v159;
        *&v151 = v89;
        BYTE8(v151) = v90;
        *&v152 = v91;
        BYTE8(v152) = v92;
        *&v153 = v93;
        BYTE8(v153) = v94;
        *&v154 = v95;
        BYTE8(v154) = v97 & 1;
        v155 = v96;
        sub_10000BE14(&v163, v138, &unk_101A0D830, &qword_101488F70);
        sub_10081852C(&v140);
        if (v63 == 2)
        {
          LOBYTE(v63) = 0;
        }

        goto LABEL_25;
      }

      LOBYTE(v63) = 0;
      v59 = v133;
    }

LABEL_25:
    v181 = v62;
    v100 = v62[2];
    v99 = v62[3];
    if (v100 >= v99 >> 1)
    {
      sub_100776604((v99 > 1), v100 + 1, 1);
      v59 = v133;
      v62 = v181;
    }

    ++v60;
    v62[2] = v100 + 1;
    *(v62 + v100 + 32) = v63 & 1;
    if (v59 == v60)
    {

      v44 = v137;
      v43 = v119;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_10095BC20(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  *&v121 = a4;
  v119 = a3;
  v133 = a1;
  v128 = sub_1005B981C(qword_101A0CF60, "87&");
  v114 = *(v128 - 8);
  __chkstk_darwin(v128);
  v127 = &v113 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v132 = *(v6 - 8);
  __chkstk_darwin(v6);
  v115 = &v113 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v129 = &v113 - v9;
  v131 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v116 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v113 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v125 = *(v11 - 8);
  v126 = v11;
  __chkstk_darwin(v11);
  v124 = &v113 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v117);
  v17 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v113 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v118 = &v113 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v113 - v26;
  v136 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v137 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_43;
  }

  (*(*v28 + 896))(v25);
  v135 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v134 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v122 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v183 = _swiftEmptyArrayStorage;
  v182 = _swiftEmptySetSingleton;
  v123 = v18;
  v120 = v27;
  v30 = CRAttributedString.count.getter();
  v31 = v137;
  if (v30 && (sub_100A31B44(v119, v121), (v32 & 1) == 0))
  {
    v119 = sub_100A31CD0(v119, v121);
    *&v121 = v45;
    v46 = *(v31 + v136);
    if (!v46)
    {
      goto LABEL_45;
    }

    v47 = v134;
    (*(*v46 + 896))();
    sub_1005E0A78(v47 + *(v135 + 20), v17);
    sub_1009625A4(v47, type metadata accessor for CRLWPShapeItemCRDTData);
    v48 = v123;
    v29(v21, v17, v123);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v49 = CRAttributedString.count.getter();
    v50 = *(v122 + 8);
    v50(v21, v48);
    if (v49 >= (v119 & ~(v119 >> 63)))
    {
      v51 = v119 & ~(v119 >> 63);
    }

    else
    {
      v51 = v49;
    }

    if ((v121 & ~(v121 >> 63)) < v51)
    {
      goto LABEL_41;
    }

    v119 = v50;
    v52 = v124;
    CRAttributedString.subscript.getter();
    v53 = v126;
    CRAttributedString.Substring.runs.getter();
    (*(v125 + 8))(v52, v53);
    v54 = v129;
    CRAttributedString.Runs.next()();
    v125 = *(v132 + 48);
    v126 = v132 + 48;
    v55 = (v125)(v54, 1, v6);
    v56 = v115;
    if (v55 != 1)
    {
      v124 = *(v132 + 32);
      v103 = (v114 + 8);
      v132 += 32;
      v104 = (v132 - 24);
      v121 = xmmword_10146C6B0;
      (v124)(v115, v54, v6);
      while (1)
      {
        v106 = v127;
        v107 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v107);
        *(&v113 - 4) = &type metadata for CRLWPFontBoldAttribute;
        v108 = sub_1008244A8();
        v109 = v133;
        *(&v113 - 3) = v108;
        *(&v113 - 2) = v109;
        swift_getKeyPath();
        sub_1008244FC();

        v110 = v128;
        CRAttributedString.Attributes.subscript.getter();

        (*v103)(v106, v110);
        v111 = LOBYTE(v179[0]);
        if ((sub_10079D77C(LOBYTE(v179[0]), v182) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09648, &qword_1014890A0);
          v112 = swift_allocObject();
          *(v112 + 16) = v121;
          *(v112 + 32) = v111;
          sub_1007990D0(v112);
          sub_100E6C808(&v163, v111);
        }

        (*v104)(v56, v6);
        v105 = v129;
        CRAttributedString.Runs.next()();
        if ((v125)(v105, 1, v6) == 1)
        {
          break;
        }

        (v124)(v56, v105, v6);
      }
    }

    (*(v116 + 8))(v130, v131);
    v44 = v137;
    v43 = v119;
  }

  else
  {
    v33 = *(v31 + v136);
    if (!v33)
    {
      goto LABEL_44;
    }

    v34 = v134;
    (*(*v33 + 896))();
    sub_1005E0A78(v34 + *(v135 + 20), v17);
    sub_1009625A4(v34, type metadata accessor for CRLWPShapeItemCRDTData);
    v35 = v118;
    v36 = v123;
    v29(v118, &v17[*(v117 + 20)], v123);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v37 = v124;
    v38 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v38);
    *(&v113 - 4) = &type metadata for CRLWPFontBoldAttribute;
    v39 = sub_1008244A8();
    v40 = v133;
    *(&v113 - 3) = v39;
    *(&v113 - 2) = v40;
    swift_getKeyPath();
    sub_1008244FC();

    v41 = v126;
    CRAttributedString.Substring.subscript.getter();

    (*(v125 + 8))(v37, v41);
    sub_1005B981C(&qword_101A09648, &qword_1014890A0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10146C6B0;
    *(v42 + 32) = v179[0];
    sub_1007990D0(v42);
    v43 = *(v122 + 8);
    v43(v35, v36);
    v44 = v137;
  }

  v57 = v183;
  v58 = v183[2];
  if (!v58)
  {

    v62 = _swiftEmptyArrayStorage;
LABEL_30:

    v101 = v62[2];
    v102 = v120;
    if (v101)
    {
      if (v101 == 1)
      {

        v43(v102, v123);
      }

      else
      {
        v43(v120, v123);
      }
    }

    else
    {

      sub_100A42890(v44);
      v43(v102, v123);
    }

    return;
  }

  v119 = v43;
  v181 = _swiftEmptyArrayStorage;
  v133 = v58;
  sub_100776604(0, v58, 0);
  v59 = v133;
  v60 = 0;
  v61 = v44 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v62 = v181;
  while (v60 < v57[2])
  {
    v63 = *(v57 + v60 + 32);
    if (v63 == 2)
    {
      v64 = *(v61 + 208);
      v65 = *(v61 + 176);
      v175 = *(v61 + 192);
      v176 = v64;
      v66 = *(v61 + 208);
      v177 = *(v61 + 224);
      v67 = *(v61 + 144);
      v68 = *(v61 + 112);
      v171 = *(v61 + 128);
      v172 = v67;
      v69 = *(v61 + 144);
      v70 = *(v61 + 176);
      v173 = *(v61 + 160);
      v174 = v70;
      v71 = *(v61 + 80);
      v72 = *(v61 + 48);
      v167 = *(v61 + 64);
      v168 = v71;
      v73 = *(v61 + 80);
      v74 = *(v61 + 112);
      v169 = *(v61 + 96);
      v170 = v74;
      v75 = *(v61 + 16);
      v163 = *v61;
      v164 = v75;
      v76 = *(v61 + 48);
      v78 = *v61;
      v77 = *(v61 + 16);
      v165 = *(v61 + 32);
      v166 = v76;
      v179[12] = v175;
      v179[13] = v66;
      v179[14] = *(v61 + 224);
      v179[8] = v171;
      v179[9] = v69;
      v179[10] = v173;
      v179[11] = v65;
      v179[4] = v167;
      v179[5] = v73;
      v179[6] = v169;
      v179[7] = v68;
      v179[0] = v78;
      v179[1] = v77;
      v178 = *(v61 + 240);
      v180 = *(v61 + 240);
      v179[2] = v165;
      v179[3] = v72;
      if (sub_100695050(v179) != 1)
      {
        v81 = v163;
        v82 = v164;
        v83 = DWORD1(v164);
        v63 = BYTE9(v164);
        v84 = BYTE10(v164);
        v85 = v165;
        v86 = BYTE8(v165);
        v87 = v166;
        v88 = BYTE8(v166);
        v89 = v174;
        v90 = BYTE8(v174);
        v91 = v175;
        v92 = BYTE8(v175);
        v93 = v176;
        v94 = BYTE8(v176);
        v95 = v177;
        v96 = v178;
        v97 = BYTE8(v177);
        v98 = BYTE8(v164);
        v160 = v171;
        v161 = v172;
        v162 = v173;
        v156 = v167;
        v157 = v168;
        v158 = v169;
        v159 = v170;
        goto LABEL_23;
      }

      v79 = *(v137 + v136);
      if (!v79)
      {
        goto LABEL_42;
      }

      v80 = v134;
      (*(*v79 + 896))();
      sub_1005B981C(&unk_101A095A0, "d#'");
      CRRegister.wrappedValue.getter();
      sub_1009625A4(v80, type metadata accessor for CRLWPShapeItemCRDTData);
      v152 = v138[12];
      v153 = v138[13];
      v154 = v138[14];
      v155 = v139;
      v148 = v138[8];
      v149 = v138[9];
      v150 = v138[10];
      v151 = v138[11];
      v144 = v138[4];
      v145 = v138[5];
      v146 = v138[6];
      v147 = v138[7];
      v140 = v138[0];
      v141 = v138[1];
      v142 = v138[2];
      v143 = v138[3];
      if (sub_100695050(&v140) != 1)
      {
        v96 = v155;
        v95 = v154;
        v97 = BYTE8(v154);
        v93 = v153;
        v94 = BYTE8(v153);
        v91 = v152;
        v92 = BYTE8(v152);
        v89 = v151;
        v90 = BYTE8(v151);
        v87 = v143;
        v88 = BYTE8(v143);
        v85 = v142;
        v86 = BYTE8(v142);
        v84 = BYTE10(v141);
        v63 = BYTE9(v141);
        v83 = DWORD1(v141);
        v98 = BYTE8(v141);
        v81 = v140;
        v82 = v141;
        v160 = v148;
        v161 = v149;
        v162 = v150;
        v156 = v144;
        v157 = v145;
        v158 = v146;
        v159 = v147;
        v59 = v133;
LABEL_23:
        v140 = v81;
        LOBYTE(v141) = v82;
        DWORD1(v141) = v83;
        BYTE8(v141) = v98 & 1;
        BYTE9(v141) = v63;
        BYTE10(v141) = v84;
        *&v142 = v85;
        BYTE8(v142) = v86;
        *&v143 = v87;
        BYTE8(v143) = v88;
        v148 = v160;
        v149 = v161;
        v150 = v162;
        v144 = v156;
        v145 = v157;
        v146 = v158;
        v147 = v159;
        *&v151 = v89;
        BYTE8(v151) = v90;
        *&v152 = v91;
        BYTE8(v152) = v92;
        *&v153 = v93;
        BYTE8(v153) = v94;
        *&v154 = v95;
        BYTE8(v154) = v97 & 1;
        v155 = v96;
        sub_10000BE14(&v163, v138, &unk_101A0D830, &qword_101488F70);
        sub_10081852C(&v140);
        if (v63 == 2)
        {
          LOBYTE(v63) = 0;
        }

        goto LABEL_25;
      }

      LOBYTE(v63) = 0;
      v59 = v133;
    }

LABEL_25:
    v181 = v62;
    v100 = v62[2];
    v99 = v62[3];
    if (v100 >= v99 >> 1)
    {
      sub_100776604((v99 > 1), v100 + 1, 1);
      v59 = v133;
      v62 = v181;
    }

    ++v60;
    v62[2] = v100 + 1;
    *(v62 + v100 + 32) = v63 & 1;
    if (v59 == v60)
    {

      v44 = v137;
      v43 = v119;
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
}

void sub_10095CB84(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v124 = a3;
  *&v125 = a4;
  v141 = a1;
  v132 = sub_1005B981C(qword_101A0CF60, "87&");
  v118 = *(v132 - 8);
  __chkstk_darwin(v132);
  v131 = &v117 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v140 = *(v6 - 8);
  __chkstk_darwin(v6);
  v119 = &v117 - v7;
  v8 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v8 - 8);
  v133 = &v117 - v9;
  v135 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v120 = *(v135 - 8);
  __chkstk_darwin(v135);
  v134 = &v117 - v10;
  v11 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v129 = *(v11 - 8);
  v130 = v11;
  __chkstk_darwin(v11);
  v128 = &v117 - v12;
  v13 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v13);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v121);
  v17 = &v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v21 = &v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v122 = &v117 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v117 - v26;
  v138 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v139 = a2;
  v28 = *(a2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData);
  if (!v28)
  {
    goto LABEL_45;
  }

  (*(*v28 + 896))(v25);
  v136 = v13;
  sub_1005E0A78(&v15[*(v13 + 20)], v17);
  v137 = v15;
  sub_1009625A4(v15, type metadata accessor for CRLWPShapeItemCRDTData);
  v126 = v19;
  v29 = *(v19 + 16);
  v29(v27, v17, v18);
  sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
  v187 = _swiftEmptyArrayStorage;
  v186 = _swiftEmptySetSingleton;
  v127 = v18;
  v30 = CRAttributedString.count.getter();
  v31 = v139;
  v123 = v27;
  if (v30 && (sub_100A31B44(v124, v125), (v32 & 1) == 0))
  {
    v124 = sub_100A31CD0(v124, v125);
    *&v125 = v46;
    v47 = *(v31 + v138);
    if (!v47)
    {
      goto LABEL_47;
    }

    v48 = v137;
    (*(*v47 + 896))();
    sub_1005E0A78(v48 + *(v136 + 20), v17);
    sub_1009625A4(v48, type metadata accessor for CRLWPShapeItemCRDTData);
    v49 = v127;
    v29(v21, v17, v127);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v50 = CRAttributedString.count.getter();
    v51 = *(v126 + 8);
    v51(v21, v49);
    if (v50 >= (v124 & ~(v124 >> 63)))
    {
      v52 = v124 & ~(v124 >> 63);
    }

    else
    {
      v52 = v50;
    }

    if ((v125 & ~(v125 >> 63)) < v52)
    {
      goto LABEL_43;
    }

    v124 = v51;
    v53 = v128;
    CRAttributedString.subscript.getter();
    v54 = v130;
    CRAttributedString.Substring.runs.getter();
    (*(v129 + 8))(v53, v54);
    v55 = v133;
    CRAttributedString.Runs.next()();
    v129 = v140[6];
    v130 = (v140 + 6);
    v56 = (v129)(v55, 1, v6);
    v57 = v119;
    if (v56 != 1)
    {
      v128 = v140[4];
      v106 = (v118 + 8);
      v140 += 4;
      v107 = (v140 - 3);
      v125 = xmmword_10146C6B0;
      (v128)(v119, v55, v6);
      while (1)
      {
        v109 = v131;
        v110 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v110);
        *(&v117 - 4) = &type metadata for CRLWPFontSizeAttribute;
        v111 = sub_10082465C();
        v112 = v141;
        *(&v117 - 3) = v111;
        *(&v117 - 2) = v112;
        swift_getKeyPath();
        sub_1008246B0();

        v113 = v132;
        CRAttributedString.Attributes.subscript.getter();

        (*v106)(v109, v113);
        v114 = LODWORD(v183[0]);
        v115 = BYTE4(v183[0]);
        LOBYTE(v167) = BYTE4(v183[0]);
        if ((sub_10079D88C(LODWORD(v183[0]) | (BYTE4(v183[0]) << 32), v186) & 1) == 0)
        {
          sub_1005B981C(&qword_101A09670, &qword_101489108);
          v116 = swift_allocObject();
          *(v116 + 16) = v125;
          *(v116 + 32) = v114;
          *(v116 + 36) = v115;
          sub_1007991BC(v116);
          LOBYTE(v167) = v115;
          sub_100E6C954(&v167, v114 | (v115 << 32));
        }

        (*v107)(v57, v6);
        v108 = v133;
        CRAttributedString.Runs.next()();
        if ((v129)(v108, 1, v6) == 1)
        {
          break;
        }

        (v128)(v57, v108, v6);
      }
    }

    (*(v120 + 8))(v134, v135);
    v45 = v139;
    v27 = v123;
    v44 = v124;
  }

  else
  {
    v33 = *(v31 + v138);
    if (!v33)
    {
      goto LABEL_46;
    }

    v34 = v137;
    (*(*v33 + 896))();
    sub_1005E0A78(v34 + *(v136 + 20), v17);
    sub_1009625A4(v34, type metadata accessor for CRLWPShapeItemCRDTData);
    v35 = v122;
    v36 = v127;
    v29(v122, &v17[*(v121 + 20)], v127);
    sub_1009625A4(v17, type metadata accessor for CRLWPStorageCRDTData);
    v37 = v128;
    v38 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v38);
    *(&v117 - 4) = &type metadata for CRLWPFontSizeAttribute;
    v39 = sub_10082465C();
    v40 = v141;
    *(&v117 - 3) = v39;
    *(&v117 - 2) = v40;
    swift_getKeyPath();
    sub_1008246B0();

    v41 = v130;
    CRAttributedString.Substring.subscript.getter();

    (*(v129 + 8))(v37, v41);
    sub_1005B981C(&qword_101A09670, &qword_101489108);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_10146C6B0;
    v43 = BYTE4(v183[0]);
    *(v42 + 32) = v183[0];
    *(v42 + 36) = v43;
    sub_1007991BC(v42);
    v44 = *(v126 + 8);
    v44(v35, v36);
    v45 = v139;
  }

  v58 = v187[2];
  if (!v58)
  {

    v64 = _swiftEmptyArrayStorage;
LABEL_31:

    v105 = v64[2];
    if (v105)
    {
      if (v105 == 1)
      {
      }
    }

    else
    {

      sub_100A42510(v45);
    }

    v44(v27, v127);
    return;
  }

  v124 = v44;
  v185 = _swiftEmptyArrayStorage;
  v140 = v187;
  v141 = v58;
  sub_100776624(0, v58, 0);
  v59 = v140;
  v60 = v141;
  v61 = 0;
  v62 = v45 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemTextPresetOverride;
  v63 = v140 + 9;
  v64 = v185;
  while (v61 < v59[2])
  {
    if (*v63)
    {
      v65 = *(v62 + 208);
      v66 = *(v62 + 176);
      v179 = *(v62 + 192);
      v180 = v65;
      v67 = *(v62 + 208);
      v181 = *(v62 + 224);
      v68 = *(v62 + 144);
      v69 = *(v62 + 112);
      v175 = *(v62 + 128);
      v176 = v68;
      v70 = *(v62 + 144);
      v71 = *(v62 + 176);
      v177 = *(v62 + 160);
      v178 = v71;
      v72 = *(v62 + 80);
      v73 = *(v62 + 48);
      v171 = *(v62 + 64);
      v172 = v72;
      v74 = *(v62 + 80);
      v75 = *(v62 + 112);
      v173 = *(v62 + 96);
      v174 = v75;
      v76 = *(v62 + 16);
      v167 = *v62;
      v168 = v76;
      v77 = *(v62 + 48);
      v79 = *v62;
      v78 = *(v62 + 16);
      v169 = *(v62 + 32);
      v170 = v77;
      v183[12] = v179;
      v183[13] = v67;
      v183[14] = *(v62 + 224);
      v183[8] = v175;
      v183[9] = v70;
      v183[10] = v177;
      v183[11] = v66;
      v183[4] = v171;
      v183[5] = v74;
      v183[6] = v173;
      v183[7] = v69;
      v183[0] = v79;
      v183[1] = v78;
      v182 = *(v62 + 240);
      v184 = *(v62 + 240);
      v183[2] = v169;
      v183[3] = v73;
      if (sub_100695050(v183) == 1)
      {
        v80 = *(v139 + v138);
        v81 = v137;
        if (!v80)
        {
          goto LABEL_44;
        }

        (*(*v80 + 896))();
        sub_1005B981C(&unk_101A095A0, "d#'");
        CRRegister.wrappedValue.getter();
        sub_1009625A4(v81, type metadata accessor for CRLWPShapeItemCRDTData);
        v156 = v142[12];
        v157 = v142[13];
        v158 = v142[14];
        v159 = v143;
        v152 = v142[8];
        v153 = v142[9];
        v154 = v142[10];
        v155 = v142[11];
        v148 = v142[4];
        v149 = v142[5];
        v150 = v142[6];
        v151 = v142[7];
        v144 = v142[0];
        v145 = v142[1];
        v146 = v142[2];
        v147 = v142[3];
        if (sub_100695050(&v144) != 1)
        {
          v82 = v159;
          v83 = v158;
          v84 = BYTE8(v158);
          v85 = v157;
          v86 = BYTE8(v157);
          v87 = v156;
          v88 = BYTE8(v156);
          v89 = v155;
          v90 = BYTE8(v155);
          v91 = v147;
          v92 = BYTE8(v147);
          v93 = v146;
          v94 = BYTE8(v146);
          v95 = BYTE10(v145);
          v96 = BYTE9(v145);
          v97 = *(&v145 + 1);
          v98 = BYTE8(v145);
          v99 = v144;
          v100 = v145;
          v164 = v152;
          v165 = v153;
          v166 = v154;
          v160 = v148;
          v161 = v149;
          v102 = v150;
          v101 = v151;
          goto LABEL_23;
        }

        goto LABEL_24;
      }

      v99 = v167;
      v100 = v168;
      v97 = *(&v168 + 1);
      v96 = BYTE9(v168);
      v95 = BYTE10(v168);
      v93 = v169;
      v94 = BYTE8(v169);
      v91 = v170;
      v92 = BYTE8(v170);
      v89 = v178;
      v90 = BYTE8(v178);
      v87 = v179;
      v88 = BYTE8(v179);
      v85 = v180;
      v86 = BYTE8(v180);
      v83 = v181;
      v82 = v182;
      v84 = BYTE8(v181);
      v98 = BYTE8(v168);
      v164 = v175;
      v165 = v176;
      v166 = v177;
      v160 = v171;
      v161 = v172;
      v102 = v173;
      v101 = v174;
LABEL_23:
      v162 = v102;
      v163 = v101;
      v144 = v99;
      LOBYTE(v145) = v100;
      *(&v145 + 1) = v97;
      BYTE8(v145) = v98 & 1;
      BYTE9(v145) = v96;
      BYTE10(v145) = v95;
      *&v146 = v93;
      BYTE8(v146) = v94;
      *&v147 = v91;
      BYTE8(v147) = v92;
      v152 = v164;
      v153 = v165;
      v154 = v166;
      v148 = v160;
      v149 = v161;
      v150 = v102;
      v151 = v101;
      *&v155 = v89;
      BYTE8(v155) = v90;
      *&v156 = v87;
      BYTE8(v156) = v88;
      *&v157 = v85;
      BYTE8(v157) = v86;
      *&v158 = v83;
      BYTE8(v158) = v84 & 1;
      v159 = v82;
      sub_10000BE14(&v167, v142, &unk_101A0D830, &qword_101488F70);
      sub_10081852C(&v144);
      if (v98)
      {
LABEL_24:
        v97 = 18.0;
      }

      v59 = v140;
      v60 = v141;
      goto LABEL_26;
    }

    v97 = *(v63 - 1);
LABEL_26:
    v185 = v64;
    v104 = v64[2];
    v103 = v64[3];
    if (v104 >= v103 >> 1)
    {
      sub_100776624((v103 > 1), v104 + 1, 1);
      v59 = v140;
      v60 = v141;
      v64 = v185;
    }

    ++v61;
    v64[2] = v104 + 1;
    *(v64 + v104 + 8) = v97;
    v63 += 2;
    if (v60 == v61)
    {

      v45 = v139;
      v27 = v123;
      v44 = v124;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

void sub_10095DAD4(unint64_t a1, char *a2, char *a3, char *a4)
{
  v91 = a4;
  v90 = a3;
  v105 = a1;
  v101 = sub_1005B981C(qword_101A0CF60, "87&");
  v85 = *(v101 - 8);
  __chkstk_darwin(v101);
  v100 = &v84 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v104 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v84 - v7;
  v9 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v84 - v10;
  v103 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v86 = *(v103 - 8);
  __chkstk_darwin(v103);
  v102 = &v84 - v12;
  v97 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  *&v94 = *(v97 - 1);
  __chkstk_darwin(v97);
  v92 = &v84 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v88);
  v18 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v87 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v89 = &v84 - v23;
  v25 = __chkstk_darwin(v24);
  v27 = &v84 - v26;
  v106 = a2;
  v99 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v28 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v28)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  (*(*v28 + 896))(v25);
  v98 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v95 = v20;
  v29 = *(v20 + 16);
  v29(v27, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v113 = _swiftEmptyArrayStorage;
  v112 = _swiftEmptySetSingleton;
  v96 = v19;
  v93 = v27;
  v30 = CRAttributedString.count.getter();
  v31 = v106;
  if (v30)
  {
    sub_100A31B44(v90, v91);
    if ((v32 & 1) == 0)
    {
      v91 = sub_100A31CD0(v90, v91);
      v46 = *&v31[v99];
      if (!v46)
      {
LABEL_60:
        __break(1u);
        return;
      }

      v47 = v45;
      (*(*v46 + 896))();
      sub_1005E0A78(&v16[*(v98 + 20)], v18);
      sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
      v48 = v87;
      v49 = v96;
      v29(v87, v18, v96);
      sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
      v50 = CRAttributedString.count.getter();
      v51 = *(v95 + 8);
      v51(v48, v49);
      if (v50 >= (v91 & ~(v91 >> 63)))
      {
        v52 = v91 & ~(v91 >> 63);
      }

      else
      {
        v52 = v50;
      }

      if ((v47 & ~(v47 >> 63)) >= v52)
      {
        v91 = v51;
        v53 = v92;
        CRAttributedString.subscript.getter();
        v54 = v97;
        CRAttributedString.Substring.runs.getter();
        (*(v94 + 8))(v53, v54);
        CRAttributedString.Runs.next()();
        v55 = *(v104 + 48);
        v99 = v104 + 48;
        v98 = v55;
        if (v55(v11, 1, v6) != 1)
        {
          v97 = *(v104 + 32);
          v73 = (v85 + 8);
          v104 += 32;
          v74 = (v104 - 24);
          v94 = xmmword_10146C6B0;
          (v97)(v8, v11, v6);
          while (1)
          {
            v75 = v100;
            v76 = CRAttributedString.Runs.Run.attributes.getter();
            __chkstk_darwin(v76);
            *(&v84 - 4) = &type metadata for CRLWPFontNameAttribute;
            v77 = sub_100962324();
            v78 = v105;
            *(&v84 - 3) = v77;
            *(&v84 - 2) = v78;
            swift_getKeyPath();
            sub_1009623E4();

            v79 = v101;
            CRAttributedString.Attributes.subscript.getter();

            (*v73)(v75, v79);
            v80 = v109;
            v81 = v110;
            v82 = v111;
            if ((sub_10079D99C(v109, v110, v111, v112) & 1) == 0)
            {
              sub_1005B981C(&qword_101A09688, &qword_101489110);
              inited = swift_initStackObject();
              *(inited + 16) = v94;
              *(inited + 32) = v80;
              *(inited + 40) = v81;
              *(inited + 48) = v82;
              sub_100962438(v80, v81, v82);
              sub_100962438(v80, v81, v82);
              sub_1007992A8(inited);
              sub_100E6CAB0(v107, v80, v81, v82);
              sub_1009623A8(v107[0], v107[1], v108);
            }

            (*v74)(v8, v6);
            sub_1009623A8(v80, v81, v82);
            CRAttributedString.Runs.next()();
            if ((v98)(v11, 1, v6) == 1)
            {
              break;
            }

            (v97)(v8, v11, v6);
          }
        }

        (*(v86 + 8))(v102, v103);
        v31 = v106;
        v35 = v96;
        v44 = v91;
        goto LABEL_13;
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }
  }

  v33 = *&v31[v99];
  if (!v33)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  (*(*v33 + 896))();
  sub_1005E0A78(&v16[*(v98 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v34 = v89;
  v35 = v96;
  v29(v89, &v18[*(v88 + 20)], v96);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v36 = v92;
  v37 = CRAttributedString.subscript.getter();
  __chkstk_darwin(v37);
  *(&v84 - 4) = &type metadata for CRLWPFontNameAttribute;
  v38 = sub_100962324();
  v39 = v105;
  *(&v84 - 3) = v38;
  *(&v84 - 2) = v39;
  swift_getKeyPath();
  sub_1009623E4();

  v40 = v97;
  CRAttributedString.Substring.subscript.getter();

  (*(v94 + 8))(v36, v40);
  sub_1005B981C(&qword_101A09688, &qword_101489110);
  v41 = swift_initStackObject();
  *(v41 + 16) = xmmword_10146C6B0;
  v42 = v109;
  v43 = v110;
  *(v41 + 32) = v109;
  *(v41 + 40) = v43;
  LOBYTE(v36) = v111;
  *(v41 + 48) = v111;
  sub_100962438(v42, v43, v36);
  sub_1007992A8(v41);
  sub_1009623A8(v42, v43, v36);
  v44 = *(v95 + 8);
  v44(v34, v35);
LABEL_13:
  v56 = v113;
  v57 = v113[2];
  if (v57)
  {
    v91 = v44;
    v109 = _swiftEmptyArrayStorage;
    sub_100034080(0, v57, 0);
    v58 = 0;
    v59 = v109;
    v105 = 0x8000000101552120;
    v104 = 0x80000001015520F0;
    v103 = 0x80000001015520C0;
    v102 = 0x8000000101552090;
    v101 = 0x8000000101552060;
    v100 = 0x8000000101552030;
    v99 = 0x8000000101552000;
    v98 = 0x8000000101551FD0;
    v60 = (v56 + 6);
    while (1)
    {
      if (v58 >= v56[2])
      {
        __break(1u);
        goto LABEL_57;
      }

      v61 = *v60;
      if (v61 == 255)
      {
        v63 = sub_100A41EDC(v106);
      }

      else if (v61)
      {
        v62 = 0xE900000000000061;
        v63 = 0x63697465766C6548;
      }

      else
      {
        v64 = *(v60 - 2);
        v65 = *(v60 - 1);
        if (v65 > 3)
        {
          if (v65 <= 5)
          {
            if (v65 == 4)
            {
              sub_1009623A8(v64, 4uLL, v61);
              v63 = 0xD000000000000025;
              v66 = &v117;
            }

            else
            {
              sub_1009623A8(v64, 5uLL, v61);
              v63 = 0xD000000000000027;
              v66 = &v118;
            }
          }

          else
          {
            switch(v65)
            {
              case 6:
                sub_1009623A8(v64, 6uLL, v61);
                v63 = 0xD000000000000023;
                v66 = &v119;
                break;
              case 7:
                sub_1009623A8(v64, 7uLL, v61);
                v63 = 0xD000000000000024;
                v66 = &v120;
                break;
              case 8:
                sub_1009623A8(v64, 8uLL, v61);
                v63 = 0xD000000000000024;
                v66 = &v121;
                break;
              default:
                goto LABEL_44;
            }
          }

          goto LABEL_39;
        }

        if (v65 > 1)
        {
          if (v65 == 2)
          {
            sub_1009623A8(v64, 2uLL, v61);
            v63 = 0xD000000000000024;
            v66 = &v115;
          }

          else
          {
            sub_1009623A8(v64, 3uLL, v61);
            v63 = 0xD000000000000026;
            v66 = &v116;
          }

LABEL_39:
          v62 = *(v66 - 32);
          goto LABEL_40;
        }

        if (v65)
        {
          if (v65 != 1)
          {
LABEL_44:
            v70 = *(v60 - 2);
            sub_100962384(v64, *(v60 - 1), 0);
            v62 = v65;
            v63 = v70;
            goto LABEL_40;
          }

          sub_1009623A8(v64, 1uLL, v61);
          v63 = 0xD000000000000023;
          v66 = &v114;
          goto LABEL_39;
        }

        sub_1009623A8(v64, 0, v61);
        v63 = 0xD000000000000029;
        v62 = 0x8000000101551FA0;
      }

LABEL_40:
      v109 = v59;
      v68 = v59[2];
      v67 = v59[3];
      if (v68 >= v67 >> 1)
      {
        v97 = v63;
        *&v94 = v62;
        sub_100034080((v67 > 1), v68 + 1, 1);
        v62 = v94;
        v63 = v97;
        v59 = v109;
      }

      ++v58;
      v59[2] = v68 + 1;
      v69 = &v59[2 * v68];
      v69[4] = v63;
      v69[5] = v62;
      v60 += 24;
      if (v57 == v58)
      {

        v31 = v106;
        v35 = v96;
        v44 = v91;
        goto LABEL_46;
      }
    }
  }

  v59 = _swiftEmptyArrayStorage;
LABEL_46:

  v71 = v59[2];
  v72 = v93;
  if (v71)
  {
    if (v71 == 1)
    {

      v44(v72, v35);
    }

    else
    {
      v44(v93, v35);
    }
  }

  else
  {

    sub_100A41EDC(v31);
    v44(v72, v35);
  }
}

void sub_10095EAFC(uint64_t a1, char *a2, char *a3, char *a4)
{
  v81 = a4;
  v80 = a3;
  v93 = a1;
  v89 = sub_1005B981C(qword_101A0CF60, "87&");
  v73 = *(v89 - 8);
  __chkstk_darwin(v89);
  v74 = &v72 - v5;
  v6 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v92 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v72 - v7;
  v9 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v9 - 8);
  v11 = &v72 - v10;
  v91 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v75 = *(v91 - 8);
  __chkstk_darwin(v91);
  v90 = &v72 - v12;
  v87 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v86 = *(v87 - 1);
  __chkstk_darwin(v87);
  *&v84 = &v72 - v13;
  v14 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v14);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v77);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v78 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v22);
  v25 = &v72 - v24;
  v88 = a2;
  v79 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v26 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    goto LABEL_36;
  }

  (*(*v26 + 896))(v23);
  v76 = v14;
  sub_1005E0A78(&v16[*(v14 + 20)], v18);
  sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
  v85 = v20;
  v27 = *(v20 + 16);
  v27(v25, v18, v19);
  sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
  v98 = _swiftEmptyArrayStorage;
  v97 = _swiftEmptySetSingleton;
  v83 = v19;
  v82 = v25;
  v28 = CRAttributedString.count.getter();
  v29 = v88;
  if (v28 && (sub_100A31B44(v80, v81), (v30 & 1) == 0))
  {
    v42 = sub_100A31CD0(v80, v81);
    if (__OFSUB__(v43, v42))
    {
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v44 = [v29 textRangeForParagraphsInCharRange:{v42, v43 - v42}];
    v46 = __OFADD__(v44, v45);
    v47 = &v44[v45];
    if (v46)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (v47 < v44)
    {
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v48 = v84;
    CRAttributedString.subscript.getter();
    v49 = v87;
    CRAttributedString.Substring.runs.getter();
    (*(v86 + 8))(v48, v49);
    CRAttributedString.Runs.next()();
    v50 = *(v92 + 48);
    v88 = (v92 + 48);
    v87 = v50;
    v51 = (v50)(v11, 1, v6);
    v52 = v74;
    if (v51 != 1)
    {
      v86 = *(v92 + 32);
      v63 = (v73 + 8);
      v92 += 32;
      v64 = (v92 - 24);
      v84 = xmmword_10146C6B0;
      (v86)(v8, v11, v6);
      while (1)
      {
        v65 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v65);
        *(&v72 - 4) = &type metadata for CRLWPParagraphLevelAttribute;
        v66 = sub_100962030();
        v67 = v93;
        *(&v72 - 3) = v66;
        *(&v72 - 2) = v67;
        swift_getKeyPath();
        sub_100962084();

        v68 = v89;
        CRAttributedString.Attributes.subscript.getter();

        (*v63)(v52, v68);
        v69 = v95;
        v70 = v96;
        if ((sub_10079C8C8(v95, v96, v97) & 1) == 0)
        {
          sub_1005B981C(&unk_101A09560, &qword_101488E90);
          inited = swift_initStackObject();
          *(inited + 16) = v84;
          *(inited + 32) = v69;
          *(inited + 40) = v70;
          sub_100798E3C(inited);
          sub_100E6B644(v94, v69, v70);
        }

        (*v64)(v8, v6);
        CRAttributedString.Runs.next()();
        if ((v87)(v11, 1, v6) == 1)
        {
          break;
        }

        (v86)(v8, v11, v6);
      }
    }

    (*(v75 + 8))(v90, v91);
    v34 = v83;
  }

  else
  {
    v31 = *&v29[v79];
    if (!v31)
    {
LABEL_37:
      __break(1u);
      return;
    }

    v32 = v27;
    (*(*v31 + 896))();
    sub_1005E0A78(&v16[*(v76 + 20)], v18);
    sub_1009625A4(v16, type metadata accessor for CRLWPShapeItemCRDTData);
    v33 = v78;
    v34 = v83;
    v32(v78, &v18[*(v77 + 20)], v83);
    sub_1009625A4(v18, type metadata accessor for CRLWPStorageCRDTData);
    v35 = v84;
    v36 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v36);
    *(&v72 - 4) = &type metadata for CRLWPParagraphLevelAttribute;
    v37 = sub_100962030();
    v38 = v93;
    *(&v72 - 3) = v37;
    *(&v72 - 2) = v38;
    swift_getKeyPath();
    sub_100962084();

    v39 = v87;
    CRAttributedString.Substring.subscript.getter();

    (*(v86 + 8))(v35, v39);
    sub_1005B981C(&unk_101A09560, &qword_101488E90);
    v40 = swift_initStackObject();
    *(v40 + 16) = xmmword_10146C6B0;
    v41 = v96;
    *(v40 + 32) = v95;
    *(v40 + 40) = v41;
    sub_100798E3C(v40);
    (*(v85 + 8))(v33, v34);
  }

  v53 = v98;
  v54 = v98[2];
  if (v54)
  {
    v95 = _swiftEmptyArrayStorage;
    sub_100776544(0, v54, 0);
    v55 = 0;
    v56 = v95;
    v57 = v53 + 5;
    while (v55 < v53[2])
    {
      if (*v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = *(v57 - 1);
      }

      v95 = v56;
      v60 = v56[2];
      v59 = v56[3];
      if (v60 >= v59 >> 1)
      {
        sub_100776544((v59 > 1), v60 + 1, 1);
        v56 = v95;
      }

      ++v55;
      v56[2] = v60 + 1;
      v56[v60 + 4] = v58;
      v57 += 16;
      if (v54 == v55)
      {

        goto LABEL_22;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

  v56 = _swiftEmptyArrayStorage;
LABEL_22:

  v61 = v56[2];
  if (v61)
  {
    if (v61 == 1)
    {
      v62 = v82;

      (*(v85 + 8))(v62, v34);
    }

    else
    {
      (*(v85 + 8))(v82, v34);
    }
  }

  else
  {
    (*(v85 + 8))(v82, v34);
  }
}

void sub_10095F6B0(char *a1, char *a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  *&v120 = a4;
  v118 = a3;
  v141 = a1;
  v129 = sub_1005B981C(qword_101A0CF60, "87&");
  v112 = *(v129 - 8);
  __chkstk_darwin(v129);
  v128 = &v112 - v5;
  v131 = sub_1005B981C(&unk_101A09540, &qword_101488E38);
  v140 = *(v131 - 8);
  __chkstk_darwin(v131);
  v130 = &v112 - v6;
  v7 = sub_1005B981C(&unk_101A0D900, &qword_101488E40);
  __chkstk_darwin(v7 - 8);
  v132 = &v112 - v8;
  v139 = sub_1005B981C(&unk_101A09550, &unk_101488E48);
  v113 = *(v139 - 8);
  __chkstk_darwin(v139);
  v133 = &v112 - v9;
  v10 = sub_1005B981C(&unk_1019F33C0, &unk_101468A60);
  __chkstk_darwin(v10 - 8);
  v138 = &v112 - v11;
  v136 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  v115 = *(v136 - 8);
  __chkstk_darwin(v136);
  v142 = &v112 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v126 = *(v13 - 8);
  v127 = v13;
  __chkstk_darwin(v13);
  v125 = &v112 - v14;
  v15 = sub_1005B981C(&unk_101A096C0, &qword_101489120);
  v143 = *(v15 - 8);
  __chkstk_darwin(v15 - 8);
  v123 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v112 - v18;
  __chkstk_darwin(v20);
  v135 = &v112 - v21;
  __chkstk_darwin(v22);
  v134 = &v112 - v23;
  __chkstk_darwin(v24);
  v124 = &v112 - v25;
  v26 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v26);
  v28 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v116);
  v30 = &v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v32 = *(v31 - 8);
  __chkstk_darwin(v31);
  v114 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v117 = &v112 - v35;
  v37 = __chkstk_darwin(v36);
  v39 = &v112 - v38;
  v40 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v137 = a2;
  v41 = *&a2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v41)
  {
    goto LABEL_36;
  }

  (*(*v41 + 896))(v37);
  v42 = v26;
  sub_1005E0A78(&v28[*(v26 + 20)], v30);
  sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
  v121 = v32;
  v43 = *(v32 + 16);
  v43(v39, v30, v31);
  sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
  v146 = _swiftEmptyArrayStorage;
  v145 = _swiftEmptySetSingleton;
  v122 = v31;
  v119 = v39;
  v44 = CRAttributedString.count.getter();
  v45 = v137;
  if (v44 && (sub_100A31B44(v118, v120), (v46 & 1) == 0))
  {
    *&v120 = sub_100A31CD0(v118, v120);
    v59 = *&v45[v40];
    if (!v59)
    {
LABEL_38:
      __break(1u);
      return;
    }

    v60 = v58;
    (*(*v59 + 896))();
    sub_1005E0A78(&v28[*(v42 + 20)], v30);
    sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v61 = v114;
    v62 = v122;
    v43(v114, v30, v122);
    sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
    v63 = CRAttributedString.count.getter();
    v64 = *(v121 + 8);
    (v64)(v61, v62);
    if (v63 >= (v120 & ~(v120 >> 63)))
    {
      v65 = v120 & ~(v120 >> 63);
    }

    else
    {
      v65 = v63;
    }

    v66 = v132;
    if ((v60 & ~(v60 >> 63)) < v65)
    {
      goto LABEL_35;
    }

    v118 = v64;
    v67 = v125;
    CRAttributedString.subscript.getter();
    v68 = v127;
    CRAttributedString.Substring.runs.getter();
    (*(v126 + 8))(v67, v68);
    CRAttributedString.Runs.next()();
    v69 = v131;
    v126 = *(v140 + 48);
    v127 = v140 + 48;
    if ((v126)(v66, 1, v131) != 1)
    {
      v125 = *(v140 + 32);
      v98 = (v112 + 8);
      v140 += 32;
      v99 = (v140 - 24);
      v120 = xmmword_10146C6B0;
      (v125)(v130, v66, v69);
      while (1)
      {
        v103 = v128;
        v104 = CRAttributedString.Runs.Run.attributes.getter();
        __chkstk_darwin(v104);
        *(&v112 - 4) = &type metadata for CRLWPHyperlinkAttribute;
        v105 = sub_1008247F4();
        v106 = v141;
        *(&v112 - 3) = v105;
        *(&v112 - 2) = v106;
        swift_getKeyPath();
        sub_100824848();

        v107 = v129;
        CRAttributedString.Attributes.subscript.getter();

        (*v98)(v103, v107);
        if ((sub_10079E018(v19, v145) & 1) == 0)
        {
          sub_1005B981C(&qword_101A096D8, &qword_101489128);
          v108 = (*(v143 + 80) + 32) & ~*(v143 + 80);
          v109 = swift_allocObject();
          *(v109 + 16) = v120;
          sub_10000BE14(v19, v109 + v108, &unk_101A096C0, &qword_101489120);
          sub_100799D70(v109);
          v110 = v123;
          sub_10000BE14(v19, v123, &unk_101A096C0, &qword_101489120);
          v111 = v124;
          sub_100E6D3D4(v124, v110);
          sub_10000CAAC(v111, &unk_101A096C0, &qword_101489120);
        }

        sub_10000CAAC(v19, &unk_101A096C0, &qword_101489120);
        v101 = v130;
        v100 = v131;
        (*v99)(v130, v131);
        v102 = v132;
        CRAttributedString.Runs.next()();
        if ((v126)(v102, 1, v100) == 1)
        {
          break;
        }

        (v125)(v101, v102, v100);
      }
    }

    (*(v113 + 8))(v133, v139);
    v45 = v137;
  }

  else
  {
    v47 = *&v45[v40];
    if (!v47)
    {
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    (*(*v47 + 896))();
    sub_1005E0A78(&v28[*(v42 + 20)], v30);
    sub_1009625A4(v28, type metadata accessor for CRLWPShapeItemCRDTData);
    v48 = v117;
    v49 = v122;
    v43(v117, &v30[*(v116 + 20)], v122);
    sub_1009625A4(v30, type metadata accessor for CRLWPStorageCRDTData);
    v50 = v125;
    v51 = CRAttributedString.subscript.getter();
    __chkstk_darwin(v51);
    *(&v112 - 4) = &type metadata for CRLWPHyperlinkAttribute;
    v52 = sub_1008247F4();
    v53 = v141;
    *(&v112 - 3) = v52;
    *(&v112 - 2) = v53;
    swift_getKeyPath();
    sub_100824848();

    v54 = v124;
    v55 = v127;
    CRAttributedString.Substring.subscript.getter();

    (*(v126 + 8))(v50, v55);
    sub_1005B981C(&qword_101A096D8, &qword_101489128);
    v56 = (*(v143 + 80) + 32) & ~*(v143 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_10146C6B0;
    sub_10000BE14(v54, v57 + v56, &unk_101A096C0, &qword_101489120);
    sub_100799D70(v57);
    sub_10000CAAC(v54, &unk_101A096C0, &qword_101489120);
    v118 = *(v121 + 8);
    (v118)(v48, v49);
  }

  v70 = v146;
  v71 = *(v146 + 2);
  v73 = v135;
  v72 = v136;
  v74 = v134;
  if (v71)
  {
    v144 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v75 = 0;
    v141 = &v70[(*(v143 + 80) + 32) & ~*(v143 + 80)];
    v140 = v115 + 48;
    v132 = v71;
    v133 = v70;
    while (v75 < *(v70 + 2))
    {
      sub_10000BE14(&v141[*(v143 + 72) * v75], v74, &unk_101A096C0, &qword_101489120);
      sub_10000BE14(v74, v73, &unk_101A096C0, &qword_101489120);
      if ((*v140)(v73, 1, v72) == 1)
      {
        sub_10000CAAC(v73, &unk_101A096C0, &qword_101489120);
      }

      else
      {
        v76 = v142;
        sub_100962540(v73, v142);
        sub_100A3400C(*(v76 + *(v72 + 24)), *(v76 + *(v72 + 24) + 8));
        v78 = v77;
        v80 = v79;
        v81 = v138;
        sub_10000BE14(v76 + *(v72 + 20), v138, &unk_1019F33C0, &unk_101468A60);
        v139 = v80;
        v82 = [v45 stringEquivalentFromRange:{v78, v80}];
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v83 = type metadata accessor for URL();
        v84 = *(v83 - 8);
        v86 = 0;
        if ((*(v84 + 48))(v81, 1, v83) != 1)
        {
          v87 = v138;
          URL._bridgeToObjectiveC()(v85);
          v86 = v88;
          (*(v84 + 8))(v87, v83);
        }

        v89 = objc_allocWithZone(CRLWPHyperlinkField);
        v90 = String._bridgeToObjectiveC()();

        v91 = String._bridgeToObjectiveC()();
        [v89 initWithURL:v86 range:v78 displayText:v139 uuidString:{v90, v91}];

        sub_1009625A4(v142, type metadata accessor for CRLWPHyperlinkSmartFieldData);
        v72 = v136;
        v45 = v137;
        v74 = v134;
        v73 = v135;
        v71 = v132;
        v70 = v133;
      }

      ++v75;
      sub_10000CAAC(v74, &unk_101A096C0, &qword_101489120);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v71 == v75)
      {

        v92 = v144;
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v92 = _swiftEmptyArrayStorage;
LABEL_24:

  v93 = v92[2];
  v94 = v118;
  if (v93)
  {
    if (v93 == 1)
    {
      v95 = v122;
      v96 = v119;
      v97 = v92[4];

      (v94)(v96, v95);
    }

    else
    {
      (v118)(v119, v122);
    }
  }

  else
  {
    (v118)(v119, v122);
  }
}

void sub_1009607FC(void *a1, uint64_t a2, id a3)
{
  v4 = [a3 newCopyAssistantWithPasteboard:a2];
  v5 = [v4 pasteboardObject];
  if (v5)
  {
    v6 = v5;
    sub_100960CE0(a1, v5);
    v31 = [objc_allocWithZone(CRLContentDescriptionTranslator) init];
    v7 = sub_1009664D0(v31);
    sub_10007941C(v7);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v4 setContentDescription:isa];

    [v4 copyToPasteboard];
  }

  else
  {
    v32 = objc_opt_self();
    v9 = [v32 _atomicIncrementAssertCount];
    v33 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v33, "invalid nil found when unwrapping value", 39, 2u);
    StaticString.description.getter("copyStyleFrom(styledItem:to:)", 29, 2);
    v10 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v11 = String._bridgeToObjectiveC()();

    v12 = [v11 lastPathComponent];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v16 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v9;
    v18 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v18;
    v19 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v19;
    *(inited + 72) = v10;
    *(inited + 136) = &type metadata for String;
    v20 = sub_1000053B0();
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v20;
    *(inited + 152) = 20;
    v21 = v33;
    *(inited + 216) = v18;
    *(inited + 224) = v19;
    *(inited + 192) = v21;
    v22 = v10;
    v23 = v21;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v24, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v25 = static os_log_type_t.error.getter();
    sub_100005404(v16, &_mh_execute_header, v25, "invalid nil found when unwrapping value", 39, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v26 = swift_allocObject();
    v26[2] = 8;
    v26[3] = 0;
    v26[4] = 0;
    v26[5] = 0;
    v27 = __VaListBuilder.va_list()();
    StaticString.description.getter("copyStyleFrom(styledItem:to:)", 29, 2);
    v28 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLKit/CRLPasteboardController.swift", 90, 2);
    v29 = String._bridgeToObjectiveC()();

    StaticString.description.getter("invalid nil found when unwrapping value", 39, 2);
    v30 = String._bridgeToObjectiveC()();

    [v32 handleFailureInFunction:v28 file:v29 lineNumber:20 isFatal:0 format:v30 args:v27];
  }
}

void sub_100960CE0(void *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData;
  v5 = *(a2 + OBJC_IVAR____TtC8Freeform19CRLPasteboardObject_pasteboardData);

  sub_100A1B8A0(a1, v16);
  v15[3] = &type metadata for CRLWPTextPresetData;
  v15[4] = sub_100967AAC();
  v6 = swift_allocObject();
  v15[0] = v6;
  v7 = v16[13];
  *(v6 + 208) = v16[12];
  *(v6 + 224) = v7;
  *(v6 + 240) = v16[14];
  *(v6 + 256) = v17;
  v8 = v16[9];
  *(v6 + 144) = v16[8];
  *(v6 + 160) = v8;
  v9 = v16[11];
  *(v6 + 176) = v16[10];
  *(v6 + 192) = v9;
  v10 = v16[5];
  *(v6 + 80) = v16[4];
  *(v6 + 96) = v10;
  v11 = v16[7];
  *(v6 + 112) = v16[6];
  *(v6 + 128) = v11;
  v12 = v16[1];
  *(v6 + 16) = v16[0];
  *(v6 + 32) = v12;
  v13 = v16[3];
  *(v6 + 48) = v16[2];
  *(v6 + 64) = v13;
  v14 = OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetData;
  swift_beginAccess();
  sub_10002C638(v15, v5 + v14, &qword_101A0B1E0, &unk_101482CD0);
  swift_endAccess();

  *(*(a2 + v4) + OBJC_IVAR____TtC8Freeform23CRLPasteboardObjectData_stylePresetSourceKind) = 4;
}

void sub_100960E34()
{
  v1 = OBJC_IVAR____TtC8Freeform11CRLWPEditor__textSelectionDelegate;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor__textSelectionDelegate];
  if (v2)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (!v4)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      swift_unknownObjectRetain();
      v5 = [Strong layoutForInfo:v4];

      if (v5)
      {
        type metadata accessor for CRLWPLayout();
        Strong = swift_dynamicCastClass();
        if (!Strong)
        {
        }
      }

      else
      {
        Strong = 0;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    v11 = [v2 layout];
    v12 = v11;
    if (Strong)
    {
      if (v11)
      {
        type metadata accessor for CRLWPLayout();
        v13 = static NSObject.== infix(_:_:)();

        if (v13)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }

      v12 = Strong;
    }

    else if (!v11)
    {
      goto LABEL_21;
    }

LABEL_19:
    v14 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v14)
    {
      v15 = swift_unknownObjectWeakLoadStrong();
      v16 = v14;
      v18 = sub_100756FAC(v16, v15, v0, v17);

      swift_unknownObjectRelease();
      *&v0[v1] = v18;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_23;
  }

  v6 = *(*&v0[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v6)
  {
    v7 = swift_unknownObjectWeakLoadStrong();
    v8 = v6;
    v10 = sub_100756FAC(v8, v7, v0, v9);

    *&v0[v1] = v10;
LABEL_21:
    swift_unknownObjectRelease();
    return;
  }

LABEL_24:
  __break(1u);
}

uint64_t sub_100961050()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
  if (swift_dynamicCast())
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100961174()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v0 = 0;
    v1 = 1;
  }

  else
  {
    sub_1005B981C(&unk_101A095E0, &qword_10146DBA0);
    v2 = swift_dynamicCast();
    v0 = v4;
    if (!v2)
    {
      v0 = 0;
    }

    v1 = v2 ^ 1;
  }

  return v0 | (v1 << 32);
}

uint64_t sub_100961280()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    sub_1005B981C(&qword_101A09638, &qword_101489098);
  }

  else
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_1005B981C(&unk_101A08E00, &qword_101489090);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_10096148C()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 2;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
    sub_1005B981C(&qword_101A09638, &qword_101489098);
  }

  else
  {
    sub_1005B981C(&unk_101A08E00, &qword_101489090);
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  return v3;
}

uint64_t sub_100961638()
{
  if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    return 0;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v1 = &unk_101A095E0;
    v2 = &qword_10146DBA0;
  }

  else
  {
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v4 = *(v0 + OBJC_IVAR____TtC8Freeform19CRLWPCharacterStyle_characterFill);
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (v5)
      {
        v7 = v5;
        v6 = v4;
        return v7;
      }

      return 0;
    }

    v1 = &unk_1019F6C70;
    v2 = &unk_101488FF0;
  }

  sub_1005B981C(v1, v2);
  sub_100006370(0, &qword_101A2BF30, off_10182F808);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  return v7;
}

char *sub_100961810(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v34 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((swift_isaMask & *v4) + 0xD8);
  v16 = sub_1005B981C(&unk_101A095C0, &unk_101488FA0);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = *((swift_isaMask & *v5) + 0xE0);
  v18 = sub_1005BD9F8(&off_101872C20);
  result = sub_100874FB4(&unk_101872C40);
  *&v5[v17] = v18;
  v20 = v37;
  v21 = *&v37[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v21)
  {
    goto LABEL_10;
  }

  *&v5[*((swift_isaMask & *v5) + 0xE8)] = v37;
  v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  (*(*v22 + 896))(result);
  sub_1005E0A78(&v11[*(v34 + 20)], v14);
  v23 = v21;
  v24 = v20;
  sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v7 + 16))(v9, v14, v6);
  sub_1009625A4(v14, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  result = (*(v7 + 8))(v9, v6);
  v26 = v35 & ~(v35 >> 63);
  if (v25 < v26)
  {
    v26 = v25;
  }

  v27 = v36 & ~(v36 >> 63);
  if (v27 < v26)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 < v27)
  {
    v27 = v25;
  }

  v28 = &v5[*((swift_isaMask & *v5) + 0xF0)];
  *v28 = v26;
  v28[1] = v27;
  v29 = v33;
  sub_10000BE14(v33, &v5[*((swift_isaMask & *v5) + 0xF8)], &qword_101A0D850, &unk_10148DE30);
  v30 = sub_1005B981C(&unk_101A095D0, &qword_101488FB0);
  v38.receiver = v5;
  v38.super_class = v30;
  v31 = objc_msgSendSuper2(&v38, "init");

  sub_10000CAAC(v29, &qword_101A0D850, &unk_10148DE30);
  return v31;
}

char *sub_100961C20(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a4;
  v35 = a2;
  v36 = a3;
  v37 = a1;
  v6 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v32 - v8;
  v34 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v34);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v12 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *((swift_isaMask & *v4) + 0xD8);
  v16 = sub_1005B981C(&qword_101A09538, &qword_101488E30);
  (*(*(v16 - 8) + 56))(&v5[v15], 1, 1, v16);
  v17 = *((swift_isaMask & *v5) + 0xE0);
  v18 = sub_1005BD9F8(&off_101872FC0);
  result = sub_100874FB4(&unk_101872FE0);
  *&v5[v17] = v18;
  v20 = v37;
  v21 = *&v37[OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage];
  if (!v21)
  {
    goto LABEL_10;
  }

  *&v5[*((swift_isaMask & *v5) + 0xE8)] = v37;
  v22 = *&v21[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v22)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  (*(*v22 + 896))(result);
  sub_1005E0A78(&v11[*(v34 + 20)], v14);
  v23 = v21;
  v24 = v20;
  sub_1009625A4(v11, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v7 + 16))(v9, v14, v6);
  sub_1009625A4(v14, type metadata accessor for CRLWPStorageCRDTData);
  v25 = CRAttributedString.count.getter();
  result = (*(v7 + 8))(v9, v6);
  v26 = v35 & ~(v35 >> 63);
  if (v25 < v26)
  {
    v26 = v25;
  }

  v27 = v36 & ~(v36 >> 63);
  if (v27 < v26)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v25 < v27)
  {
    v27 = v25;
  }

  v28 = &v5[*((swift_isaMask & *v5) + 0xF0)];
  *v28 = v26;
  v28[1] = v27;
  v29 = v33;
  sub_10000BE14(v33, &v5[*((swift_isaMask & *v5) + 0xF8)], &qword_101A06188, &qword_101483A00);
  v30 = sub_1005B981C(&qword_101A0DAF0, &unk_101488E20);
  v38.receiver = v5;
  v38.super_class = v30;
  v31 = objc_msgSendSuper2(&v38, "init");

  sub_10000CAAC(v29, &qword_101A06188, &qword_101483A00);
  return v31;
}

unint64_t sub_100962030()
{
  result = qword_101A09510;
  if (!qword_101A09510)
  {
    result = swift_getWitnessTable(byte_10148FFE0, &type metadata for CRLWPParagraphLevelAttribute, v0, v1);
    atomic_store(result, &qword_101A09510);
  }

  return result;
}

unint64_t sub_100962084()
{
  result = qword_101A09520;
  if (!qword_101A09520)
  {
    result = swift_getWitnessTable(")n:", &type metadata for CRLWPParagraphLevelAttribute, v0, v1);
    atomic_store(result, &qword_101A09520);
  }

  return result;
}

unint64_t sub_1009620D8()
{
  result = qword_101A0D870;
  if (!qword_101A0D870)
  {
    result = swift_getWitnessTable(byte_10148FF54, &type metadata for CRLWPListStartAttribute, v0, v1);
    atomic_store(result, &qword_101A0D870);
  }

  return result;
}

unint64_t sub_10096212C()
{
  result = qword_101A09530;
  if (!qword_101A09530)
  {
    result = swift_getWitnessTable(byte_10148FF0C, &type metadata for CRLWPListStartAttribute, v0, v1);
    atomic_store(result, &qword_101A09530);
  }

  return result;
}

unint64_t sub_100962180()
{
  result = qword_101A09570;
  if (!qword_101A09570)
  {
    result = swift_getWitnessTable(asc_10148FEC8, &type metadata for CRLWPListStyleTypeAttribute, v0, v1);
    atomic_store(result, &qword_101A09570);
  }

  return result;
}

unint64_t sub_1009621D4()
{
  result = qword_101A0D590;
  if (!qword_101A0D590)
  {
    result = swift_getWitnessTable("Ao:", &type metadata for CRLWPListStyleTypeAttribute, v0, v1);
    atomic_store(result, &qword_101A0D590);
  }

  return result;
}

unint64_t sub_100962228()
{
  result = qword_101A095B0;
  if (!qword_101A095B0)
  {
    result = swift_getWitnessTable(byte_1014900C8, &type metadata for CRLWPParagraphAlignmentAttribute, v0, v1);
    atomic_store(result, &qword_101A095B0);
  }

  return result;
}

unint64_t sub_10096227C()
{
  result = qword_101A095F8;
  if (!qword_101A095F8)
  {
    result = swift_getWitnessTable(byte_10148FCF0, &type metadata for CRLWPStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_101A095F8);
  }

  return result;
}

unint64_t sub_1009622D0()
{
  result = qword_101A0D430;
  if (!qword_101A0D430)
  {
    result = swift_getWitnessTable(byte_10148FCA8, &type metadata for CRLWPStrikethroughAttribute, v0, v1);
    atomic_store(result, &qword_101A0D430);
  }

  return result;
}

unint64_t sub_100962324()
{
  result = qword_101A09678;
  if (!qword_101A09678)
  {
    result = swift_getWitnessTable(aL_6, &type metadata for CRLWPFontNameAttribute, v0, v1);
    atomic_store(result, &qword_101A09678);
  }

  return result;
}

uint64_t sub_100962384(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_100962394(a1, a2);
  }
}

uint64_t sub_100962394(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

uint64_t sub_1009623A8(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1009623C0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1009623C0(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    return sub_1009623D0(a1, a2);
  }
}

uint64_t sub_1009623D0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 9)
  {
  }

  return result;
}

unint64_t sub_1009623E4()
{
  result = qword_101A09680;
  if (!qword_101A09680)
  {
    result = swift_getWitnessTable("ap:", &type metadata for CRLWPFontNameAttribute, v0, v1);
    atomic_store(result, &qword_101A09680);
  }

  return result;
}

uint64_t sub_100962438(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100962384(result, a2, a3 & 1);
  }

  return result;
}

unint64_t sub_100962450()
{
  result = qword_101A09690;
  if (!qword_101A09690)
  {
    result = swift_getWitnessTable(aL_5, &type metadata for CRLWPWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_101A09690);
  }

  return result;
}

unint64_t sub_1009624A4()
{
  result = qword_101A09698;
  if (!qword_101A09698)
  {
    result = swift_getWitnessTable("al:", &type metadata for CRLWPWritingDirectionAttribute, v0, v1);
    atomic_store(result, &qword_101A09698);
  }

  return result;
}

uint64_t sub_1009624F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100962540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLWPHyperlinkSmartFieldData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1009625A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100962604(uint64_t a1, void *a2)
{
  v3 = **(a1 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
  result = swift_conformsToProtocol2();
  if (result)
  {
    v5 = *(v3 + 840);

    v7 = v5(v6);

    v8 = [v7 bezierPath];

    LOBYTE(v7) = [v8 isLineSegment];
    if (v7)
    {
      return 0;
    }

    else
    {
      return [a2 documentIsSharedReadOnly] ^ 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100962708(void *a1, void *a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = a1;
  result = [a2 selectionPathPoppingToSelection:v6];
  v9 = *(*(v2 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v9)
  {
    v10 = result;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = v9;
      v14 = [v12 infoForSelectionPath:v10];

      if (v14)
      {
        swift_unknownObjectRelease();

        if (v14 != v13)
        {
          goto LABEL_6;
        }

        sub_100960E34();
        if (!v16)
        {
          v15 = 1;
          goto LABEL_12;
        }

        v17 = v16;
        v13 = v7;
        swift_unknownObjectRetain();
        v18 = [v6 range];
        v20 = v19;
        v21 = objc_allocWithZone(type metadata accessor for CRLTextRange());
        v7 = sub_10078CDF0(v18, v20);
        v22 = [v6 caretAffinity];

        *&v7[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = v22;
        [v17 setSelectedTextRange:v7];
        swift_unknownObjectRelease();
        v15 = 1;
      }

      else
      {
        v15 = 0;
      }

      v7 = v13;
      goto LABEL_12;
    }

LABEL_6:
    v15 = 0;
LABEL_12:

    return v15;
  }

  __break(1u);
  return result;
}

char *sub_1009628E0(void *a1, void *a2)
{
  v3 = v2;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6 && (*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_preventSelectionChanges) & 1) == 0)
  {
    v12 = v6;
    v13 = a2;
    if ([v12 isVisual])
    {
      if ([v12 isVisual] && (objc_msgSend(v12, "validVisualRanges") & 1) == 0)
      {
        v12 = [*(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) calculateVisualRunsFromSelection:v12 updateControllerSelection:0];
      }

      else
      {
        v14 = v13;
      }

      if ([v12 isValid] && *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode) == 1)
      {
        v15 = sub_100938AB4(v12);

        v12 = v15;
      }
    }

    else
    {
      if (![v12 isValid] || *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode) != 1)
      {
LABEL_21:
        if (a1)
        {
          sub_100006370(0, &qword_1019F6CB0, off_10182F9B8);
          v16 = v12;
          v17 = a1;
          v18 = static NSObject.== infix(_:_:)();

          if (v18)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v19 = v12;
        }

        v20 = sub_100943964();
        if (v20)
        {
          v21 = *&v20[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath];
          v22 = v20;
          v23 = v21;

          if (v21)
          {

            v24 = *(v3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor____lazy_storage___editMenu);
            if (v24)
            {
              v25 = v24;
              sub_10127F918();
              sub_1000505D0(v24);
            }
          }
        }

        if (!a1)
        {
          goto LABEL_33;
        }

        v17 = a1;
LABEL_31:
        sub_100006370(0, &qword_1019F6CB0, off_10182F9B8);
        v9 = v12;
        v26 = v17;
        v27 = static NSObject.== infix(_:_:)();

        if (v27)
        {

LABEL_41:
          return v12;
        }

LABEL_33:
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong && (v29 = Strong, v9 = [Strong textInputResponder], v29, v9))
        {
          if (*&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress] <= 0)
          {
            v30 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
            v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
            v31 = *&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
            if (v31)
            {
              [v31 selectionWillChange:v9];
            }

            v9[v30] = 0;
          }
        }

        else
        {

          v9 = v12;
        }

        goto LABEL_41;
      }

      v12 = sub_100938AB4(v12);
    }

    goto LABEL_21;
  }

  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    v9 = [v7 textInputResponder];

    if (v9)
    {
      v10 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard;
      v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_ignoreKeyboard] = 1;
      v11 = *&v9[OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputDelegate];
      if (v11)
      {
        [v11 textWillChange:v9];
      }

      v12 = 0;
      v9[v10] = 0;
      goto LABEL_41;
    }
  }

  return 0;
}

void sub_100962C70()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage))
    {
      v3 = Strong;
      v10 = [Strong layoutForInfo:?];

      if (v10)
      {
        type metadata accessor for CRLWPLayout();
        v4 = swift_dynamicCastClass();
        if (v4 && (v5 = v4, (v6 = swift_unknownObjectWeakLoadStrong()) != 0))
        {
          v7 = v6;
          v8 = [v6 repForInfo:*(v0 + v2)];
          [v8 invalidateKnobs];
          if ([v5 parentAutosizes])
          {
            [v5 invalidateSize];
          }

          *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
          [v5 invalidate];
          [v5 setNeedsDisplay];
          [v7 canvasInvalidatedForLayout:v5];

          v9 = v8;
        }

        else
        {
          v9 = v10;
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100962DFC(id a1)
{
  v3 = *(*(*(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator) + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_shareState) + 16);
  if (v3)
  {

    v4 = v3;
    v5 = [v4 currentUserParticipant];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 permission];
    }

    else
    {
      v7 = [v4 publicPermission];
    }

    if (v7 == 2)
    {
      return 0;
    }
  }

  if ([a1 hasNativeText])
  {
    return 1;
  }

  if ([a1 hasImportableText])
  {
    return 1;
  }

  result = [a1 hasImportableRichText];
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_100962F14(void *a1, id a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = [a2 range];
  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v14 = sub_10078CDF0(v10, v12);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v16 = Strong;
  v17 = [Strong commandController];
  if (!v17)
  {

    goto LABEL_11;
  }

  v18 = v17;
  if ((sub_100962DFC(a1) & 1) == 0)
  {

    goto LABEL_11;
  }

  if (([a1 hasNativeText] & 1) == 0 && !objc_msgSend(a1, "hasNativeTextStorages"))
  {
    if ([a1 hasImportableRichText])
    {
      v35 = swift_allocObject();
      *(v35 + 16) = 0;
      *(v35 + 24) = a5;
      *(v35 + 32) = v14;
      *(v35 + 40) = a4;
      *(v35 + 48) = v18;
      v53 = sub_100967ED4;
      v54 = v35;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_100967EB4;
      v52 = &unk_10188E8E0;
      v36 = _Block_copy(&aBlock);
      v37 = a5;
      v38 = v14;
      v39 = v18;

      v40 = [a1 loadImportedRichTextStringWithHandler:v36];
    }

    else
    {
      if (![a1 hasImportableText])
      {

        goto LABEL_11;
      }

      v41 = swift_allocObject();
      v41[2] = a5;
      v41[3] = v14;
      v41[4] = a4;
      v41[5] = v18;
      v53 = sub_100967E5C;
      v54 = v41;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_10093B8DC;
      v52 = &unk_10188E890;
      v36 = _Block_copy(&aBlock);
      v42 = a5;
      v43 = v14;
      v39 = v18;

      v40 = [a1 loadImportedTextStringWithHandler:v36];
    }

    v44 = v40;

    _Block_release(v36);
LABEL_11:
    (*(a6 + 16))(a6);

    return;
  }

  v47 = a4;
  v19 = *&a5[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editingCoordinator];
  if (*(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_suspendResumeCoordinator))
  {
    sub_100833EBC(0xD000000000000036, 0x800000010157BF00);
    v20 = *(*(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_mainBoard) + OBJC_IVAR____TtC8Freeform8CRLBoard_store);
    v21 = type metadata accessor for CRLPasteboardSourceContext();
    v22 = objc_allocWithZone(v21);
    *&v22[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__store] = v20;
    v23 = *&v20[OBJC_IVAR____TtC8Freeform17CRLBoardDataStore_crdtContext];
    *&v22[OBJC_IVAR____TtC8Freeform26CRLPasteboardSourceContext__sourceContext] = v23;
    v48.receiver = v22;
    v48.super_class = v21;
    v24 = v20;
    v25 = v23;
    v46 = objc_msgSendSuper2(&v48, "init");
    v26 = *(*&a5[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (v26)
    {
      v45 = *(v19 + OBJC_IVAR____TtC8Freeform21CRLEditingCoordinator_boardItemFactory);
      v27 = swift_allocObject();
      *(v27 + 16) = a5;
      *(v27 + 24) = 0xD000000000000036;
      *(v27 + 32) = 0x800000010157BF00;
      *(v27 + 40) = 0;
      *(v27 + 48) = v14;
      *(v27 + 56) = v47;
      *(v27 + 64) = v18;
      v53 = sub_100967ED8;
      v54 = v27;
      aBlock = _NSConcreteStackBlock;
      v50 = *"";
      v51 = sub_100967EB4;
      v52 = &unk_10188E930;
      v28 = _Block_copy(&aBlock);
      v29 = v26;
      v30 = a5;
      v31 = v14;
      v32 = v18;
      v33 = v45;

      v34 = [a1 loadTextStorageUsingBoardItemFactory:v33 forTargetContext:v46 targetStorage:v29 loadHandler:v28];

      _Block_release(v28);
      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_100963420()
{
  v1 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v17 - v3;
  v5 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CRLWPStorageCRDTData(0);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v12)
  {
    v13 = *&v12[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v13)
    {
      (*(*v13 + 896))(v9);
      sub_1005E0A78(&v7[*(v5 + 20)], v11);
      v14 = v12;
      sub_1009625A4(v7, type metadata accessor for CRLWPShapeItemCRDTData);
      (*(v2 + 16))(v4, v11, v1);
      sub_1009625A4(v11, type metadata accessor for CRLWPStorageCRDTData);
      v15 = CRAttributedString.attributedString.getter();
      (*(v2 + 8))(v4, v1);
      v16 = [v15 string];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

double sub_1009636AC()
{
  sub_1005B981C(&qword_101A09738, &qword_1014891C0);
  v0 = swift_allocObject();
  *&result = 10;
  *(v0 + 16) = xmmword_101488C80;
  *(v0 + 32) = "insertText:";
  *(v0 + 40) = "insertNewline:";
  *(v0 + 48) = "insertTab:";
  *(v0 + 56) = "insertBacktab:";
  *(v0 + 64) = "moveLeft:";
  *(v0 + 72) = "moveRight:";
  *(v0 + 80) = "moveForward:";
  *(v0 + 88) = "moveBackward:";
  *(v0 + 96) = "deleteBackward:";
  *(v0 + 104) = "deleteForward:";
  return result;
}

uint64_t sub_100963750()
{
  v0 = [CRLWPEditorHelper editorKeyboardLanguage]_0();
  if (!v0)
  {
    return -1;
  }

  v1 = v0;
  v2 = [objc_opt_self() characterDirectionForLanguage:v0];

  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v47 = objc_opt_self();
      v48 = [v47 _atomicIncrementAssertCount];
      v67[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v67, "Vertical text is not supported.", 31, 2u);
      StaticString.description.getter("keyboardWritingDirection()", 26, 2);
      v49 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v50 = String._bridgeToObjectiveC()();

      v51 = [v50 lastPathComponent];

      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v55 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10146CA70;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v48;
      v57 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(inited + 96) = v57;
      v58 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(inited + 104) = v58;
      *(inited + 72) = v49;
      *(inited + 136) = &type metadata for String;
      v59 = sub_1000053B0();
      *(inited + 112) = v52;
      *(inited + 120) = v54;
      *(inited + 176) = &type metadata for UInt;
      *(inited + 184) = &protocol witness table for UInt;
      *(inited + 144) = v59;
      *(inited + 152) = 2415;
      v60 = v67[0];
      *(inited + 216) = v57;
      *(inited + 224) = v58;
      *(inited + 192) = v60;
      v61 = v49;
      v62 = v60;
      v63 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v63, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v64 = static os_log_type_t.error.getter();
      sub_100005404(v55, &_mh_execute_header, v64, "Vertical text is not supported.", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v65 = swift_allocObject();
      v65[2] = 8;
      v65[3] = 0;
      v65[4] = 0;
      v65[5] = 0;
      v66 = __VaListBuilder.va_list()();
      StaticString.description.getter("keyboardWritingDirection()", 26, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Vertical text is not supported.", 31, 2);
      v26 = String._bridgeToObjectiveC()();

      [v47 handleFailureInFunction:v24 file:v25 lineNumber:2415 isFatal:0 format:v26 args:v66];
      goto LABEL_18;
    }

    if (v2 == 4)
    {
      v4 = objc_opt_self();
      v5 = [v4 _atomicIncrementAssertCount];
      v67[0] = [objc_allocWithZone(NSString) init];
      sub_100604538(_swiftEmptyArrayStorage, v67, "Vertical text is not supported.", 31, 2u);
      StaticString.description.getter("keyboardWritingDirection()", 26, 2);
      v6 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v7 = String._bridgeToObjectiveC()();

      v8 = [v7 lastPathComponent];

      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      if (qword_1019F20A0 != -1)
      {
        swift_once();
      }

      v12 = static OS_os_log.crlAssert;
      sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
      v13 = swift_initStackObject();
      *(v13 + 16) = xmmword_10146CA70;
      *(v13 + 56) = &type metadata for Int32;
      *(v13 + 64) = &protocol witness table for Int32;
      *(v13 + 32) = v5;
      v14 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
      *(v13 + 96) = v14;
      v15 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
      *(v13 + 104) = v15;
      *(v13 + 72) = v6;
      *(v13 + 136) = &type metadata for String;
      v16 = sub_1000053B0();
      *(v13 + 112) = v9;
      *(v13 + 120) = v11;
      *(v13 + 176) = &type metadata for UInt;
      *(v13 + 184) = &protocol witness table for UInt;
      *(v13 + 144) = v16;
      *(v13 + 152) = 2418;
      v17 = v67[0];
      *(v13 + 216) = v14;
      *(v13 + 224) = v15;
      *(v13 + 192) = v17;
      v18 = v6;
      v19 = v17;
      v20 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v20, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v13);
      swift_setDeallocating();
      sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
      swift_arrayDestroy();
      v21 = static os_log_type_t.error.getter();
      sub_100005404(v12, &_mh_execute_header, v21, "Vertical text is not supported.", 31, 2, _swiftEmptyArrayStorage);

      type metadata accessor for __VaListBuilder();
      v22 = swift_allocObject();
      v22[2] = 8;
      v22[3] = 0;
      v22[4] = 0;
      v22[5] = 0;
      v23 = __VaListBuilder.va_list()();
      StaticString.description.getter("keyboardWritingDirection()", 26, 2);
      v24 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
      v25 = String._bridgeToObjectiveC()();

      StaticString.description.getter("Vertical text is not supported.", 31, 2);
      v26 = String._bridgeToObjectiveC()();

      [v4 handleFailureInFunction:v24 file:v25 lineNumber:2418 isFatal:0 format:v26 args:v23];
      goto LABEL_18;
    }
  }

  else
  {
    if (v2 == 1)
    {
      return 0;
    }

    if (v2 == 2)
    {
      return 1;
    }
  }

  v27 = objc_opt_self();
  v28 = [v27 _atomicIncrementAssertCount];
  v67[0] = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, v67, "Unknown keyboard writing direction.", 35, 2u);
  StaticString.description.getter("keyboardWritingDirection()", 26, 2);
  v29 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
  v30 = String._bridgeToObjectiveC()();

  v31 = [v30 lastPathComponent];

  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v35 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_10146CA70;
  *(v36 + 56) = &type metadata for Int32;
  *(v36 + 64) = &protocol witness table for Int32;
  *(v36 + 32) = v28;
  v37 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(v36 + 96) = v37;
  v38 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
  *(v36 + 104) = v38;
  *(v36 + 72) = v29;
  *(v36 + 136) = &type metadata for String;
  v39 = sub_1000053B0();
  *(v36 + 112) = v32;
  *(v36 + 120) = v34;
  *(v36 + 176) = &type metadata for UInt;
  *(v36 + 184) = &protocol witness table for UInt;
  *(v36 + 144) = v39;
  *(v36 + 152) = 2421;
  v40 = v67[0];
  *(v36 + 216) = v37;
  *(v36 + 224) = v38;
  *(v36 + 192) = v40;
  v41 = v29;
  v42 = v40;
  v43 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v43, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v36);
  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  v44 = static os_log_type_t.error.getter();
  sub_100005404(v35, &_mh_execute_header, v44, "Unknown keyboard writing direction.", 35, 2, _swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v45 = swift_allocObject();
  v45[2] = 8;
  v45[3] = 0;
  v45[4] = 0;
  v45[5] = 0;
  v46 = __VaListBuilder.va_list()();
  StaticString.description.getter("keyboardWritingDirection()", 26, 2);
  v24 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
  v25 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Unknown keyboard writing direction.", 35, 2);
  v26 = String._bridgeToObjectiveC()();

  [v27 handleFailureInFunction:v24 file:v25 lineNumber:2421 isFatal:0 format:v26 args:v46];
LABEL_18:

  return -1;
}

void sub_10096423C(void *a1)
{
  v248 = a1;
  v2 = type metadata accessor for IndexSet();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v244 = (&v233 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v7 = &v233 - v6;
  v8 = type metadata accessor for NSFastEnumerationIterator();
  v245 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v233 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100960E34();
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = [v11 selectedTextRange];
  if (!v12)
  {
    goto LABEL_14;
  }

  v13 = v12;
  sub_100960E34();
  if (!v14 || (v15 = [v14 selectedTextRange]) == 0)
  {

LABEL_14:
    v248 = objc_opt_self();
    v31 = [v248 _atomicIncrementAssertCount];
    *&v252 = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, &v252, "No text selection", 17, 2u);
    StaticString.description.getter("addContextualMenuElements(to:at:)", 33, 2);
    v32 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v33 = String._bridgeToObjectiveC()();

    v34 = [v33 lastPathComponent];

    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v38 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v31;
    v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v40;
    v41 = sub_10000FDE0(&qword_1019F52E0, &qword_1019F4D30, NSString_ptr, &protocol conformance descriptor for NSObject);
    *(inited + 104) = v41;
    *(inited + 72) = v32;
    *(inited + 136) = &type metadata for String;
    v42 = sub_1000053B0();
    *(inited + 112) = v35;
    *(inited + 120) = v37;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v42;
    *(inited + 152) = 1087;
    v43 = v252;
    *(inited + 216) = v40;
    *(inited + 224) = v41;
    *(inited + 192) = v43;
    v44 = v32;
    v45 = v43;
    v46 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v47 = static os_log_type_t.error.getter();
    sub_100005404(v38, &_mh_execute_header, v47, "No text selection", 17, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v48 = swift_allocObject();
    v48[2] = 8;
    v48[3] = 0;
    v48[4] = 0;
    v48[5] = 0;
    v49 = __VaListBuilder.va_list()();
    StaticString.description.getter("addContextualMenuElements(to:at:)", 33, 2);
    v50 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPEditor.swift", 84, 2);
    v51 = String._bridgeToObjectiveC()();

    StaticString.description.getter("No text selection", 17, 2);
    v52 = String._bridgeToObjectiveC()();

    [v248 handleFailureInFunction:v50 file:v51 lineNumber:1087 isFatal:0 format:v52 args:v49];

    return;
  }

  v240 = v8;
  v16 = v15;
  LODWORD(v239) = [v15 isEmpty];

  v17 = [*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:v1];
  if (v17)
  {
    v18 = v17;
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = [v19 type];

      if (v20 == 3)
      {
        v21 = [v13 start];
        v22 = *&v21[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        v23 = NSNotFound.getter();
        v24 = &v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        if (v22 == v23)
        {
          v24 = &xmmword_101464828;
        }

        v25 = *v24;
        v26 = v248;
        [v248 removeAllObjects];
        sub_10093EA0C(v25);
        v28 = v27;
        sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
        v29._countAndFlagsBits = 0;
        v29._object = 0xE000000000000000;
        v255.value.super.isa = 0;
        v255.is_nil = 0;
        isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v29, 0, v255, 1, 0xFFFFFFFFFFFFFFFFLL, v28, v229).super.super.isa;
        [v26 addObject:isa];

        v30 = isa;

        return;
      }
    }

    else
    {
    }
  }

  v242 = v13;
  v243 = v1;
  v236 = v7;
  v237 = v3;
  v238 = v2;
  NSArray.makeIterator()();
  v241 = 0;
  v53 = &qword_1019F6C00;
  v246 = @"CRLCutCopyPasteMenuIdentifier";
  isa = @"CRLZOrderMenuIdentifier";
  while (1)
  {
    NSFastEnumerationIterator.next()();
    if (!*(&v253 + 1))
    {
      break;
    }

    sub_10000BF3C(&v252, &v249);
    sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
    if (swift_dynamicCast())
    {
      v54 = v251;
      v55 = [v251 identifier];
      v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v57;
      if (v56 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v58 == v59)
      {
      }

      else
      {
        v61 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v61 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v62 = v248;
      [v248 indexOfObject:v54];
      v63 = Int._bridgeToObjectiveC()().super.super.isa;
      [v62 removeObject:v63];

LABEL_29:
      v64 = [v54 identifier];
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
      {

        goto LABEL_34;
      }

      v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v69)
      {
LABEL_34:
        [v54 setPreferredElementSize:1];
        v70 = [v248 indexOfObject:v54];

        v241 = (v70 + 1);
        if (__OFADD__(v70, 1))
        {
          __break(1u);
          break;
        }
      }

      else
      {
      }
    }
  }

  v245[1](v10, v240);
  v251 = _swiftEmptyArrayStorage;
  v71 = &selRef_longLongValue;
  if (v239)
  {
    sub_100006370(0, &unk_1019FF3D0, UICommand_ptr);
    v53 = objc_opt_self();
    v72 = [v53 mainBundle];
    v73 = String._bridgeToObjectiveC()();
    v74 = String._bridgeToObjectiveC()();
    v75 = &selRef_isEnumeratingForUserSearch;
    v76 = [v72 localizedStringForKey:v73 value:v74 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v252 = 0u;
    v253 = 0u;
    v77 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    v78 = &selRef_longLongValue;
    v71 = v242;
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_86;
  }

  v75 = &selRef_shouldQueueBeginScribbleMode;
  v77 = v242;
  v90 = [(SEL *)v242 start];
  v91 = *&v90[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v91 == NSNotFound.getter())
  {
    v92 = 0x7FFFFFFFFFFFFFFFLL;
    v93 = 0;
  }

  else
  {
    v92 = *(v77 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    v138 = *(v77 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
    v93 = v138 - v92;
    if (__OFSUB__(v138, v92))
    {
      goto LABEL_88;
    }
  }

  if (sub_100940D78(v92, v93))
  {
    sub_100006370(0, &unk_1019FF3D0, UICommand_ptr);
    v139 = [objc_opt_self() mainBundle];
    v140 = String._bridgeToObjectiveC()();
    v141 = String._bridgeToObjectiveC()();
    v142 = [v139 localizedStringForKey:v140 value:v141 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v252 = 0u;
    v253 = 0u;
    v143 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_101465920;
    *(v144 + 32) = v143;
    v145 = v143;
    v146._countAndFlagsBits = 0;
    v146._object = 0xE000000000000000;
    v259.value.super.isa = 0;
    v259.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v146, 0, v259, 1, 0xFFFFFFFFFFFFFFFFLL, v144, v229);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v147 = objc_opt_self();
  v148 = [v147 mainBundle];
  v149 = String._bridgeToObjectiveC()();
  v150 = String._bridgeToObjectiveC()();
  v151 = [v148 localizedStringForKey:v149 value:v150 table:0];

  v152 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v154 = v153;

  v155 = String._bridgeToObjectiveC()();
  v156 = objc_opt_self();
  v157 = [v156 systemImageNamed:v155];

  v158 = v242;
  v159 = [(SEL *)v242 start];
  v160 = *&v159[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v161 = NSNotFound.getter();
  v162 = (v158 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  if (v160 == v161)
  {
    v162 = &xmmword_101464828;
  }

  v163 = *v162;
  v164 = sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
  sub_10093EA0C(v163);
  v228 = v165;
  v166._countAndFlagsBits = v152;
  v166._object = v154;
  v260.value.super.isa = v157;
  v260.is_nil = 0;
  v239 = v164;
  isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v166, 0, v260, 0, 0xFFFFFFFFFFFFFFFFLL, v228, v229).super.super.isa;
  v167 = sub_100006370(0, &unk_1019FF3D0, UICommand_ptr);
  v168 = [v147 mainBundle];
  v169 = String._bridgeToObjectiveC()();
  v170 = String._bridgeToObjectiveC()();
  v171 = [v168 localizedStringForKey:v169 value:v170 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v172 = String._bridgeToObjectiveC()();
  v173 = [v156 systemImageNamed:v172];

  v252 = 0u;
  v253 = 0u;
  v245 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v174 = [v147 mainBundle];
  v175 = String._bridgeToObjectiveC()();
  v176 = String._bridgeToObjectiveC()();
  v177 = [v174 localizedStringForKey:v175 value:v176 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v178 = String._bridgeToObjectiveC()();
  v179 = [v156 crl_internalSystemImageNamed:v178];

  v252 = 0u;
  v253 = 0u;
  v246 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v234 = v147;
  v180 = [v147 mainBundle];
  v181 = String._bridgeToObjectiveC()();
  v182 = String._bridgeToObjectiveC()();
  v183 = [v180 localizedStringForKey:v181 value:v182 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v184 = String._bridgeToObjectiveC()();
  v185 = [v156 crl_internalSystemImageNamed:v184];

  v252 = 0u;
  v253 = 0u;
  v235 = v167;
  v186 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  if (qword_1019F2000 != -1)
  {
    swift_once();
  }

  v187 = qword_101A1AB00;
  v188 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  LODWORD(v187) = *(v187 + v188);
  v240 = v186;
  if (v187 == 1)
  {
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_10146E8B0;
    v191 = v246;
    v190 = isa;
    v192 = v245;
    *(v189 + 32) = isa;
    *(v189 + 40) = v192;
    *(v189 + 48) = v191;
    *(v189 + 56) = v186;
    v193 = v190;
    v194 = v192;
  }

  else
  {
    v189 = swift_allocObject();
    *(v189 + 16) = xmmword_10146E8A0;
    v191 = v246;
    v195 = isa;
    *(v189 + 32) = isa;
    *(v189 + 40) = v191;
    *(v189 + 48) = v186;
    v196 = v195;
  }

  v197 = v191;
  v198 = v186;
  v199._countAndFlagsBits = 0;
  v199._object = 0xE000000000000000;
  v261.value.super.isa = 0;
  v261.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v199, 0, v261, 1, 0xFFFFFFFFFFFFFFFFLL, v189, v231.super.super.isa);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  v137 = &selRef_longLongValue;
  v200 = v234;
  if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v201 = [v200 mainBundle];
  v202 = String._bridgeToObjectiveC()();
  v203 = String._bridgeToObjectiveC()();
  v204 = [v201 localizedStringForKey:v202 value:v203 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v205 = String._bridgeToObjectiveC()();
  v206 = [v156 systemImageNamed:v205];

  v252 = 0u;
  v253 = 0u;
  v207 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
  v208 = swift_allocObject();
  *(v208 + 16) = xmmword_101465920;
  *(v208 + 32) = v207;
  v130 = v207;
  v209._countAndFlagsBits = 0;
  v209._object = 0xE000000000000000;
  v262.value.super.isa = 0;
  v262.is_nil = 0;
  UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v209, 0, v262, 1, 0xFFFFFFFFFFFFFFFFLL, v208, v232);
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v136 = v241;
  v135 = v242;
  v53 = v238;
  v75 = v244;
  while (2)
  {
    v210 = v246;
    v211 = v240;

    v212 = [(SEL *)v135 start];
    sub_1009457D8(v212);

    sub_100006370(0, &unk_1019FF3D0, UICommand_ptr);
    v213 = [objc_opt_self() v137[17]];
    v214 = String._bridgeToObjectiveC()();
    v215 = String._bridgeToObjectiveC()();
    v216 = [v213 localizedStringForKey:v214 value:v215 table:0];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v217 = String._bridgeToObjectiveC()();
    v218 = [objc_opt_self() imageNamed:v217];

    v252 = 0u;
    v253 = 0u;
    v77 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_84;
    }

    while (1)
    {
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      sub_10093E3B8();
      v220 = v219;
      if (v219 >> 62)
      {
        sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
        v221 = _bridgeCocoaArray<A>(_:)();
      }

      else
      {

        dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
        sub_100006370(0, &unk_1019F61A0, UIMenuElement_ptr);
        v221 = v220;
      }

      sub_10079A660(v221);
      v222 = v251;
      sub_100640EB8(v251);
      v77 = Array._bridgeToObjectiveC()().super.isa;

      v78 = v222 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v222 & 0xFFFFFFFFFFFFFF8) + 0x10);

      v71 = (v78 + v136);
      if (!__OFADD__(v136, v78))
      {
        break;
      }

      __break(1u);
LABEL_84:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    if (v71 < v136)
    {
      __break(1u);
LABEL_86:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_39:
      isa = v77;
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v79 = v78[17];
      v245 = v53;
      v80 = [v53 v79];
      v81 = String._bridgeToObjectiveC()();
      v82 = String._bridgeToObjectiveC()();
      v83 = [v80 v75[489]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v77 = v84;

      v252 = 0u;
      v253 = 0u;
      v85 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v77 = *((v251 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v86 = [(SEL *)v71 start];
      v87 = *&v86[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v87 == NSNotFound.getter())
      {
        v88 = 0x7FFFFFFFFFFFFFFFLL;
        v89 = 0;
      }

      else
      {
        v88 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
        v94 = *(v71 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
        v89 = v94 - v88;
        if (__OFSUB__(v94, v88))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }
      }

      v71 = &selRef_longLongValue;
      v246 = v85;
      v95 = sub_100940D78(v88, v89);
      v53 = v245;
      if ((v95 & 1) == 0)
      {
LABEL_49:
        v103 = [v53 v71[17]];
        v104 = String._bridgeToObjectiveC()();
        v105 = String._bridgeToObjectiveC()();
        v106 = [v103 v75[489]];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = String._bridgeToObjectiveC()();
        v239 = objc_opt_self();
        v108 = [v239 systemImageNamed:v107];

        v252 = 0u;
        v253 = 0u;
        v109 = v53;
        v240 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        v110 = v71;
        v111 = [v109 v71[17]];
        v112 = String._bridgeToObjectiveC()();
        v113 = String._bridgeToObjectiveC()();
        v114 = [v111 v75[489]];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v115 = String._bridgeToObjectiveC()();
        v116 = v239;
        v117 = [v239 systemImageNamed:v115];

        v252 = 0u;
        v253 = 0u;
        v118 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
        sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
        v119 = [v109 v110[17]];
        v120 = String._bridgeToObjectiveC()();
        v121 = String._bridgeToObjectiveC()();
        v122 = [v119 v75[489]];

        v123 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v125 = v124;

        v126 = String._bridgeToObjectiveC()();
        v127 = [v116 systemImageNamed:v126];

        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_10146CE00;
        v129 = v240;
        *(v128 + 32) = v240;
        *(v128 + 40) = v118;
        v240 = v129;
        v130 = v118;
        v131._countAndFlagsBits = v123;
        v131._object = v125;
        v257.value.super.isa = v127;
        v257.is_nil = 0;
        v132 = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v131, 0, v257, 0, 0xFFFFFFFFFFFFFFFFLL, v128, v229).super.super.isa;
        v133 = swift_allocObject();
        *(v133 + 16) = xmmword_101465920;
        *(v133 + 32) = v132;
        v245 = v132;
        v134._countAndFlagsBits = 0;
        v134._object = 0xE000000000000000;
        v258.value.super.isa = 0;
        v258.is_nil = 0;
        UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v134, 0, v258, 1, 0xFFFFFFFFFFFFFFFFLL, v133, v230);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v136 = v241;
        v135 = v242;
        v53 = v238;
        v75 = v244;
        v137 = &selRef_longLongValue;
        continue;
      }

      v96 = [v245 mainBundle];
      v97 = String._bridgeToObjectiveC()();
      v98 = String._bridgeToObjectiveC()();
      v99 = [v96 v75[489]];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v252 = 0u;
      v253 = 0u;
      v100 = UICommand.init(title:subtitle:image:selectedImage:action:propertyList:alternates:discoverabilityTitle:attributes:state:)();
      sub_100006370(0, &qword_1019F6C00, UIMenu_ptr);
      v101 = swift_allocObject();
      *(v101 + 16) = xmmword_101465920;
      *(v101 + 32) = v100;
      v77 = v100;
      v102._countAndFlagsBits = 0;
      v102._object = 0xE000000000000000;
      v256.value.super.isa = 0;
      v256.is_nil = 0;
      UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v102, 0, v256, 1, 0xFFFFFFFFFFFFFFFFLL, v101, v229);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_48:
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        goto LABEL_49;
      }

LABEL_89:
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      goto LABEL_48;
    }

    break;
  }

  sub_1009624F8(&qword_101A09758, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
  dispatch thunk of SetAlgebra.init()();
  if (v136 == v71)
  {
    goto LABEL_80;
  }

  if (v136 >= v71)
  {
    __break(1u);
    goto LABEL_87;
  }

  do
  {
    v250 = v136;
    dispatch thunk of SetAlgebra.insert(_:)();
    v136 = (v136 + 1);
    v78 = (v78 - 1);
  }

  while (v78);
LABEL_80:
  v224 = v236;
  v223 = v237;
  (*(v237 + 32))(v236, v75, v53);
  IndexSet._bridgeToObjectiveC()(v225);
  v227 = v226;
  (*(v223 + 8))(v224, v53);
  [v248 insertObjects:v77 atIndexes:v227];
}

void *sub_1009664D0(void *a1)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = [a1 appDescriptionData];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = sub_1005B981C(&unk_101A07740, &unk_101486B90);
  *&v14 = v6;
  sub_10000BF3C(&v14, v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9EF34(v13, v2, v4, isUniquelyReferenced_nonNull_native);

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  v15 = &type metadata for CRLStyleCopyingType;
  LOBYTE(v14) = 4;
  sub_10000BF3C(&v14, v13);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_100A9EF34(v13, v8, v10, v11);

  return _swiftEmptyDictionarySingleton;
}

void sub_100966624()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_100D7320C(v2);

  v4 = [v3 start];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  if (v5 == NSNotFound.getter())
  {

    return;
  }

  v6 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v7 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

  if (__OFSUB__(v7, v6))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }
}

void sub_1009666F8(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1005B981C(&qword_101A06188, &qword_101483A00);
  __chkstk_darwin(v5);
  v7 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v163 - v9;
  __chkstk_darwin(v11);
  v171 = (&v163 - v12);
  __chkstk_darwin(v13);
  v15 = &v163 - v14;
  __chkstk_darwin(v16);
  v172 = (&v163 - v17);
  sub_100960E34();
  if (v18 && (v19 = [v18 selectedTextRange]) != 0)
  {
    v164 = v7;
    v165 = v10;
    v20 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape;
    v21 = *(*&a1[OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v21)
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v22 = v19;
    v23 = v21;
    v168 = sub_10078D5E4(v23);

    v24 = *(*&a1[v20] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v24)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v166 = v15;
    v25 = v24;
    v169 = v22;
    v26 = [v22 start];
    v27 = *&v26[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v28 = [v25 paragraphIndexAtCharIndex:v27];
    v167 = v20;
    v29 = *(*&a1[v20] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v29)
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v30 = [v29 rangeForParagraphAt:v28];
    v31 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
      __break(1u);
      goto LABEL_64;
    }

    v170 = v30;
    KeyPath = swift_getKeyPath();
    sub_100946704(KeyPath);
    v34 = v33;

    if (v34)
    {
      v35 = (v34 & 0xFF00) == 512;
    }

    else
    {
      v35 = 1;
    }

    v36 = a1;
    v37 = !v35;
    v173 = v36;
    sub_100935E08();
    v39 = v38;
    if (v37 == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v41 = Strong;
        v42 = [Strong commandController];

        if (v42)
        {
          sub_10088E3FC(0);
        }
      }
    }

    v43 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v43)
    {
      goto LABEL_70;
    }

    v44 = v43;
    v45 = sub_10078D5E4(v44);

    sub_100940E8C(v45);
    if (v37)
    {
      v46 = v167;
      v47 = *(*&v173[v167] + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
      if (!v47)
      {
LABEL_71:
        __break(1u);
        return;
      }

      v48 = [v47 paragraphLevelAtParIndex:v31 & ~(v31 >> 63)];
      v49 = v169;
      v50 = [v169 start];
      v51 = *&v50[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (!v51)
      {
        v76 = v172;
        *v172 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v80 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x6C7974537473696CLL, 0xE900000000000065);

        __chkstk_darwin(v81);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPListStyleTypeAttribute;
        *(&v163 - 2) = sub_100962180();
        *(&v163 - 1) = v80;
        swift_getKeyPath();
        v178 = 0;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60, "87&");
        sub_1009621D4();
        CRAttributedString.Attributes.subscript.setter();
        v82 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v83);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v82;
        v84 = v173;
        swift_getKeyPath();
        v178 = 0;
        LOBYTE(v179) = 0;
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v85 = *&v84[v46];
        v86 = *&v168[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v87 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v88 = v85;
        v89 = [v87 init:v86 caretAffinity:0];
        NSNotFound.getter();
        v90 = *&v89[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v91 = *&v89[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v92 = type metadata accessor for CRLTextRange();
        v93 = objc_allocWithZone(v92);
        v94 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v95 = &v93[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v95 = v90;
        *(v95 + 1) = v90;
        *&v93[v94] = v91;
        v174.receiver = v93;
        v174.super_class = v92;
        v96 = objc_msgSendSuper2(&v174, "init");

        v97 = *&v96[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v98 = *&v96[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v99 = v166;
        sub_10000BE14(v76, v166, &qword_101A06188, &qword_101483A00);
        v100 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
        v72 = sub_100961C20(v88, v97, v98, v99);

        v101 = swift_unknownObjectWeakLoadStrong();
        if (!v101 || (v102 = v101, v75 = [v101 commandController], v102, !v75))
        {
          v49 = v169;
          goto LABEL_40;
        }

        sub_100888700(v72, 0, 0, 4uLL, 0);
        goto LABEL_34;
      }

      sub_100006370(0, &qword_1019F54D0, NSObject_ptr);
      v52 = v168;
      if (static NSObject.== infix(_:_:)())
      {
        v53 = v171;
        *v171 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v54 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v55);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v54;
        swift_getKeyPath();
        v178 = v39;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60, "87&");
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v56 = *&v173[v46];
        v57 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v58 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v59 = v56;
        v60 = [v58 init:v57 caretAffinity:0];
        NSNotFound.getter();
        v61 = *&v60[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v62 = *&v60[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v63 = type metadata accessor for CRLTextRange();
        v64 = objc_allocWithZone(v63);
        v65 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v66 = &v64[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v66 = v61;
        *(v66 + 1) = v61;
        *&v64[v65] = v62;
        v175.receiver = v64;
        v175.super_class = v63;
        v67 = objc_msgSendSuper2(&v175, "init");

        v68 = *&v67[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v69 = *&v67[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v70 = v166;
        sub_10000BE14(v53, v166, &qword_101A06188, &qword_101483A00);
        v71 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
        v72 = sub_100961C20(v59, v68, v69, v70);

        v73 = swift_unknownObjectWeakLoadStrong();
        if (!v73 || (v74 = v73, v75 = [v73 commandController], v74, !v75))
        {
          v76 = v53;
          v49 = v169;
          goto LABEL_42;
        }

        sub_100888700(v72, 0, 0, 4uLL, 0);
        v76 = v53;
LABEL_34:
        v49 = v169;
LABEL_35:

        v72 = v75;
LABEL_40:
        v52 = v168;
LABEL_42:

        sub_10000CAAC(v76, &qword_101A06188, &qword_101483A00);
LABEL_43:
        v107 = swift_unknownObjectWeakLoadStrong();
        if (v107 && (v108 = v107, v109 = [v107 commandController], v108, v109))
        {
          sub_10088E600(0);
        }

        else
        {
        }

        return;
      }

      v103 = v170;
      if (v48 != v39)
      {
        v104 = [v170 start];
        v105 = *&v104[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

        if (v105 == NSNotFound.getter())
        {
          v106 = 0;
          v103 = v170;
        }

        else
        {
          v103 = v170;
          v111 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v110 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
          v112 = __OFSUB__(v110, v111);
          v106 = v110 - v111;
          if (v112)
          {
LABEL_65:
            __break(1u);
            goto LABEL_66;
          }
        }

        if (!v106)
        {
          v141 = v164;
          *v164 = _swiftEmptySetSingleton;
          sub_10068D144();
          CRAttributedString.Attributes.init()();
          v142 = swift_getKeyPath();
          sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

          __chkstk_darwin(v143);
          *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
          *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
          *(&v163 - 2) = sub_100962030();
          *(&v163 - 1) = v142;
          swift_getKeyPath();
          v178 = v48;
          LOBYTE(v179) = 0;
          sub_1005B981C(qword_101A0CF60, "87&");
          sub_100962084();
          CRAttributedString.Attributes.subscript.setter();
          v144 = *&v173[v167];
          v145 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v146 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
          v147 = v144;
          v148 = [v146 init:v145 caretAffinity:0];
          NSNotFound.getter();
          v149 = *&v148[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          v150 = *&v148[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
          v151 = type metadata accessor for CRLTextRange();
          v152 = objc_allocWithZone(v151);
          v153 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
          *&v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
          *&v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
          v154 = &v152[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          *v154 = v149;
          *(v154 + 1) = v149;
          *&v152[v153] = v150;
          v176.receiver = v152;
          v176.super_class = v151;
          v155 = objc_msgSendSuper2(&v176, "init");

          v156 = *&v155[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
          v157 = *&v155[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

          v158 = v141;
          v159 = v166;
          sub_10000BE14(v158, v166, &qword_101A06188, &qword_101483A00);
          v160 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
          v72 = sub_100961C20(v147, v156, v157, v159);

          v161 = swift_unknownObjectWeakLoadStrong();
          if (!v161 || (v162 = v161, v75 = [v161 commandController], v162, !v75))
          {
            v76 = v164;
            goto LABEL_42;
          }

          sub_100888700(v72, 0, 0, 4uLL, 0);
          v76 = v164;
          goto LABEL_35;
        }
      }

      v113 = [v103 start];
      v114 = *&v113[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

      if (v114 == NSNotFound.getter())
      {
        v115 = 0;
LABEL_53:
        if (v115)
        {
          goto LABEL_43;
        }

        v118 = v165;
        *v165 = _swiftEmptySetSingleton;
        sub_10068D144();
        CRAttributedString.Attributes.init()();
        v119 = swift_getKeyPath();
        sub_100E6DE34(&v178, 0x7061726761726170, 0xEE006C6576654C68);

        __chkstk_darwin(v120);
        *(&v163 - 4) = &type metadata for CRLWPParagraphScope;
        *(&v163 - 3) = &type metadata for CRLWPParagraphLevelAttribute;
        *(&v163 - 2) = sub_100962030();
        *(&v163 - 1) = v119;
        swift_getKeyPath();
        v178 = v39;
        LOBYTE(v179) = 0;
        sub_1005B981C(qword_101A0CF60, "87&");
        sub_100962084();
        CRAttributedString.Attributes.subscript.setter();
        v121 = *&v173[v167];
        v122 = *&v52[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v123 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
        v124 = v121;
        v125 = [v123 init:v122 caretAffinity:0];
        NSNotFound.getter();
        v126 = *&v125[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
        v127 = *&v125[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
        v128 = type metadata accessor for CRLTextRange();
        v129 = objc_allocWithZone(v128);
        v130 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
        *&v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
        *&v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
        v131 = &v129[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        *v131 = v126;
        *(v131 + 1) = v126;
        *&v129[v130] = v127;
        v132 = v118;
        v177.receiver = v129;
        v177.super_class = v128;
        v133 = objc_msgSendSuper2(&v177, "init");

        v134 = *&v133[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v135 = *&v133[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

        v136 = v118;
        v137 = v166;
        sub_10000BE14(v136, v166, &qword_101A06188, &qword_101483A00);
        v138 = objc_allocWithZone(sub_1005B981C(&qword_101A0DAF0, &unk_101488E20));
        v72 = sub_100961C20(v124, v134, v135, v137);

        v139 = swift_unknownObjectWeakLoadStrong();
        if (!v139)
        {
          v76 = v132;
          goto LABEL_42;
        }

        v140 = v139;
        v75 = [v139 commandController];

        if (!v75)
        {
          v76 = v165;
          goto LABEL_42;
        }

        sub_100888700(v72, 0, 0, 4uLL, 0);
        v76 = v165;
        goto LABEL_35;
      }

      v117 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v116 = *&v170[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
      v112 = __OFSUB__(v116, v117);
      v115 = v116 - v117;
      if (!v112)
      {
        goto LABEL_53;
      }

LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v79 = v170;
  }

  else
  {
    v77 = *(*(a3 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
    if (!v77)
    {
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    v78 = v77;
    v173 = sub_10078D5E4(v78);

    sub_100940E8C(v173);
    v79 = v173;
  }
}

uint64_t sub_1009677CC()
{
  v3[3] = &type metadata for CRLFeatureFlags;
  v3[4] = sub_100004D60();
  LOBYTE(v3[0]) = 16;
  v0 = isFeatureEnabled(_:)();
  sub_100005070(v3);
  sub_1005B981C(&unk_101A096E8, &qword_101489158);
  result = swift_allocObject();
  if (v0)
  {
    *(result + 56) = &_s23InsertSmartListBehaviorVN;
    *(result + 64) = &off_101883370;
    *(result + 96) = &_s23ExtendSmartListBehaviorVN;
    *(result + 104) = &off_101883358;
    *(result + 136) = &_s23RemoveSmartListBehaviorVN;
    *(result + 144) = &off_101883340;
    *(result + 176) = &_s30IncreaseParagraphLevelBehaviorVN;
    v2 = (result + 184);
    *(result + 16) = xmmword_10146D2A0;
  }

  else
  {
    *(result + 16) = xmmword_10146C6B0;
    *(result + 56) = &_s30IncreaseParagraphLevelBehaviorVN;
    v2 = (result + 64);
  }

  *v2 = &off_101883388;
  return result;
}

uint64_t sub_1009678D4(uint64_t result)
{
  if (qword_1019F1570 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v2 = *(*(v1 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    *&v2[OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle] = result;
    v3 = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1009679BC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1009679F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100947D60(a1, v4, v5, v6);
}

unint64_t sub_100967AAC()
{
  result = qword_101A09720;
  if (!qword_101A09720)
  {
    result = swift_getWitnessTable("\tW:", &type metadata for CRLWPTextPresetData, v0, v1);
    atomic_store(result, &qword_101A09720);
  }

  return result;
}

uint64_t sub_100967B08(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10002D4C8;

  return sub_100953654(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100967BD0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100967C20(void *a1, void *a2)
{
  if (a1)
  {
  }
}

uint64_t sub_100967CF0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100967D38()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100967D90()
{

  return _swift_deallocObject(v0, 72, 7);
}

id sub_100967F0C()
{
  v0 = type metadata accessor for TSCLVersion();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, "init");
  static TSContentLanguage.Models.TextStroke.version = result;
  return result;
}

uint64_t *TSContentLanguage.Models.TextStroke.version.unsafeMutableAddressor()
{
  if (qword_1019F19D0 != -1)
  {
    swift_once();
  }

  return &static TSContentLanguage.Models.TextStroke.version;
}

id static TSContentLanguage.Models.TextStroke.version.getter()
{
  if (qword_1019F19D0 != -1)
  {
    swift_once();
  }

  v1 = static TSContentLanguage.Models.TextStroke.version;

  return v1;
}

__n128 TSContentLanguage.Models.TextStroke.init(stroke:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = v2;
  return result;
}

__n128 TSContentLanguage.Models.TextStroke.init<A>(object:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_dynamicCast())
  {
    v10 = v13;
    v11 = v12;
    v7 = v14;
    v6 = v15;
    v8 = v16;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0u;
    v11 = 0u;
    v7 = 0xFFFFFFFE00;
  }

  (*(*(a2 - 8) + 8))(a1, a2);
  result = v11;
  *a3 = v11;
  *(a3 + 16) = v10;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
  *(a3 + 48) = v8;
  return result;
}

uint64_t sub_100968114(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6564695F65707974;
  v4 = 0xEF7265696669746ELL;
  if (v2 != 1)
  {
    v3 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656B6F727473;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x6564695F65707974;
  v8 = 0xEF7265696669746ELL;
  if (*a2 != 1)
  {
    v7 = 0x6E6F6973726576;
    v8 = 0xE700000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656B6F727473;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10096822C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1009682D8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100968370(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100968418@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100968B3C(*a1);
  *a2 = result;
  return result;
}

void sub_100968448(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEF7265696669746ELL;
  v5 = 0x6564695F65707974;
  if (v2 != 1)
  {
    v5 = 0x6E6F6973726576;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656B6F727473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1009684B0()
{
  v1 = 0x6564695F65707974;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656B6F727473;
  }
}

unint64_t sub_100968514@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100968B3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10096853C(uint64_t a1)
{
  v2 = sub_1009692B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100968578(uint64_t a1)
{
  v2 = sub_1009692B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double TSContentLanguage.Models.TextStroke.init(from:)@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100968B88(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t TSContentLanguage.Models.TextStroke.encode(to:)(void *a1)
{
  v4 = sub_1005B981C(&qword_101A09880, &qword_1014891C8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  v8 = *(v1 + 4);
  v9 = *(v1 + 48);
  if (v8 >> 8 != 0xFFFFFFFF || v9 > 0xF)
  {
    v16 = *(v1 + 5);
    v17 = v5;
    sub_100020E58(a1, a1[3]);
    sub_1009692B8();
    v15 = v2;
    dispatch thunk of Encoder.container<A>(keyedBy:)();
    v11 = v1[1];
    v18 = *v1;
    v19 = v11;
    v20 = v8;
    v21 = v16;
    v22 = v9;
    v23 = 0;
    sub_10096930C();
    v12 = v15;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (v12)
    {
      return (*(v17 + 8))(v7, v4);
    }

    else
    {
      LOBYTE(v18) = 1;
      KeyedEncodingContainer.encode(_:forKey:)();
      if (qword_1019F19D0 != -1)
      {
        swift_once();
      }

      *&v18 = static TSContentLanguage.Models.TextStroke.version;
      v23 = 2;
      type metadata accessor for TSCLVersion();
      sub_100969804(&qword_101A00458, protocol conformance descriptor for TSCLVersion);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      return (*(v17 + 8))(v7, v4);
    }
  }

  else
  {
    sub_100020E58(a1, a1[3]);
    dispatch thunk of Encoder.singleValueContainer()();
    sub_10002A948(&v18, *(&v19 + 1));
    dispatch thunk of SingleValueEncodingContainer.encode(_:)();
    return sub_100005070(&v18);
  }
}

BOOL sub_100968914(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s8Freeform17TSContentLanguageO6ModelsO10TextStrokeO21__derived_enum_equalsySbAG_AGtFZ_0(v5, v7);
}

BOOL _s8Freeform17TSContentLanguageO6ModelsO10TextStrokeO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t *a1, double *a2)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 48);
  if (a1[4] >> 8 != 0xFFFFFFFF || v5 > 0xF)
  {
    v33 = v2;
    v34 = v3;
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = a1[3];
    v11 = *a2;
    v12 = a2[1];
    v13 = *(a2 + 2);
    v14 = *(a2 + 3);
    v15 = *(a2 + 4);
    v16 = *(a2 + 5);
    v17 = *(a2 + 48);
    if (v15 >> 8 == 0xFFFFFFFF && v17 < 0x10)
    {
      return 0;
    }

    if (v5 >> 6)
    {
      if (v5 >> 6 == 1)
      {
        v28 = v8;
        v29 = v9;
        v30 = v10;
        v31 = v4;
        v32 = v5 & 0x3F;
        if ((v17 & 0xC0) == 0x40)
        {
          v26[0] = v11;
          *&v26[1] = v12;
          v26[2] = v13;
          v26[3] = v14;
          v26[4] = v15;
          v26[5] = v16;
          v27 = v17 & 0x3F;
          if (_s8Freeform17TSContentLanguageO6ModelsO6StrokeO4LineV23__derived_struct_equalsySbAI_AItFZ_0(&v28, v26))
          {
            return 1;
          }
        }
      }

      else if ((v17 & 0xC0) == 0x80 && !(*&v12 | v11 | v13 | v14 | v15 | v16) && v17 == 128)
      {
        return 1;
      }
    }

    else if (v17 < 0x40)
    {
      v25 = *&v9;
      v20 = TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v8);
      v22 = v21;
      if (v20 == TSContentLanguage.Models.Stroke.Frame.Name.rawValue.getter(v11) && v22 == v23)
      {

        if (v25 == v12)
        {
          return 1;
        }
      }

      else
      {
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v24 & 1) != 0 && v25 == v12)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  return *(a2 + 4) >> 8 == 0xFFFFFFFFLL && *(a2 + 48) < 0x10u;
}

unint64_t sub_100968B3C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_101874ED0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100968B88@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v33 = a2;
  v3 = sub_1005B981C(&qword_101A003E8, &qword_101481A70);
  __chkstk_darwin(v3 - 8);
  v4 = type metadata accessor for CodingUserInfoKey();
  *&v32 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_101A098E0, &qword_101489428);
  v34 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = v31 - v8;
  v10 = a1;
  sub_100020E58(a1, a1[3]);
  sub_1009692B8();
  v11 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_12;
  }

  *&v35 = v6;
  v12 = v34;
  LOBYTE(v36) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (!v14)
  {
    goto LABEL_10;
  }

  if (v13 == 0xD00000000000002BLL && v14 == 0x800000010157C340)
  {

    goto LABEL_10;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
LABEL_10:
    type metadata accessor for TSCLVersion();
    v41 = 2;
    sub_100969804(&qword_101A00400, protocol conformance descriptor for TSCLVersion);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v26 = v36;
    if (v36)
    {
      if (qword_1019F19D0 != -1)
      {
        swift_once();
      }

      if (*(static TSContentLanguage.Models.TextStroke.version + OBJC_IVAR____TtC8Freeform11TSCLVersion_major) < *&v26[OBJC_IVAR____TtC8Freeform11TSCLVersion_major])
      {
        sub_1007C8648();
        swift_allocError();
        *v27 = xmmword_101463530;
        *(v27 + 16) = 0;
        swift_willThrow();

        goto LABEL_11;
      }
    }

    v29 = v10[3];
    v31[1] = v10[4];
    sub_100020E58(v10, v29);
    dispatch thunk of Decoder.userInfo.getter();
    v41 = 0;
    sub_100969848();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();

    v22 = v38;
    v21 = v40;
    if (v38 >> 8 != 0xFFFFFFFF || v40 > 0xFu)
    {
      v32 = v37;
      v35 = v36;
      v30 = v7;
      v20 = v39;
      (*(v12 + 8))(v9, v30);
      goto LABEL_17;
    }

    (*(v12 + 8))(v9, v7);
    goto LABEL_24;
  }

  sub_1007C8648();
  swift_allocError();
  v17[1] = 0;
  v17[2] = 0;
  *v17 = 0;
  swift_willThrow();
LABEL_11:
  (*(v12 + 8))(v9, v7);
LABEL_12:
  sub_100020E58(v10, v10[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  sub_100020E58(&v36, *(&v37 + 1));
  if (dispatch thunk of SingleValueDecodingContainer.decode(_:)() == 1701736302 && v18 == 0xE400000000000000)
  {

LABEL_16:
    sub_100005070(&v36);
    v20 = 0;
    v21 = 0;
    v35 = 0u;
    v22 = 0xFFFFFFFF00;
    v32 = 0u;
LABEL_17:
    result = sub_100005070(v10);
    v24 = v33;
    v25 = v32;
    *v33 = v35;
    v24[1] = v25;
    *(v24 + 4) = v22;
    *(v24 + 5) = v20;
    *(v24 + 48) = v21;
    return result;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v19)
  {
    goto LABEL_16;
  }

  sub_100005070(&v36);
LABEL_24:
  sub_1007C8648();
  swift_allocError();
  *v28 = xmmword_101478600;
  *(v28 + 16) = 0;
  swift_willThrow();
  return sub_100005070(v10);
}