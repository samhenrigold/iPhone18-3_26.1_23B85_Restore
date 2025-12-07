__n128 sub_1CB8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1CD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1D78()
{
  v0 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];

  return v0;
}

__n128 sub_1DC4()
{
  *&xmmword_64120 = [objc_opt_self() tertiaryLabelColor];
  *(&xmmword_64120 + 1) = sub_1D78;
  qword_64130 = 0;
  result = *&UIEdgeInsetsZero.top;
  v1 = *&UIEdgeInsetsZero.bottom;
  unk_64138 = *&UIEdgeInsetsZero.top;
  unk_64148 = v1;
  return result;
}

uint64_t sub_1E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_48414();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E78()
{
  sub_48414();
  v0 = sub_484E4();

  return v0;
}

uint64_t sub_1EB4(uint64_t a1)
{
  sub_48414();
  sub_48464();
}

Swift::Int sub_1F08(uint64_t a1)
{
  sub_48414();
  sub_488D4();
  sub_48464();
  v1 = sub_48904();

  return v1;
}

uint64_t sub_1F7C(uint64_t a1, id *a2)
{
  result = sub_483F4();
  *a2 = 0;
  return result;
}

uint64_t sub_1FF4(uint64_t a1, id *a2)
{
  v3 = sub_48404();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2074@<X0>(uint64_t *a2@<X8>)
{
  sub_48414();
  v3 = sub_483D4();

  *a2 = v3;
  return result;
}

uint64_t sub_20C0(uint64_t a1)
{
  v2 = sub_250C(&qword_61EE0, type metadata accessor for Key, &unk_4A960);
  v3 = sub_250C(&qword_61EE8, type metadata accessor for Key, &unk_4A5F8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_217C(void *a1, uint64_t *a2)
{
  v2 = sub_48414();
  v4 = v3;
  if (v2 == sub_48414() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_48874();
  }

  return v7 & 1;
}

uint64_t sub_2204(uint64_t a1)
{
  v2 = sub_250C(&qword_61ED0, type metadata accessor for AttributeName, &unk_4A91C);
  v3 = sub_250C(&qword_61ED8, type metadata accessor for AttributeName, &unk_4A718);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_22C0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_483D4();

  *a2 = v3;
  return result;
}

__n128 sub_2330(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2368(uint64_t a1, int a2)
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

uint64_t sub_2388(uint64_t result, int a2, int a3)
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

__n128 sub_23C4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23D0(uint64_t a1, int a2)
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

uint64_t sub_23F0(uint64_t result, int a2, int a3)
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

void sub_2430(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_250C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E4(uint64_t a1)
{
  v2 = sub_250C(&qword_61EC0, type metadata accessor for TraitKey, &unk_4A88C);
  v3 = sub_250C(&qword_61EC8, type metadata accessor for TraitKey, &unk_4A82C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_2838()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_64158);
  sub_5ED4(v0, qword_64158);
  sub_477E4();
  return sub_47804();
}

void sub_28A4()
{
  v1 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel;
  v2 = *&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  if (*&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText + 8])
  {
    v3 = v2;

    v4 = sub_483D4();
  }

  else
  {
    v5 = v2;
    v4 = 0;
  }

  [v2 setText:v4];

  v9 = *&v0[v1];
  v6 = [v0 attributedText];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 length];

    [v9 setHidden:v8 > 0];
  }

  else
  {
    __break(1u);
  }
}

id sub_2AF4()
{
  v1 = v0;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_47814();
  sub_5ED4(v2, qword_64158);
  v3 = sub_477F4();
  v4 = sub_48614();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "Becoming first responder", v5, 2u);
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v6 = objc_msgSendSuper2(&v16, "becomeFirstResponder");
  v7 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (result)
  {
    v9 = result;
    v10 = [result length];

    [v7 setHidden:v10 > 0];
    if (v6)
    {
      v11 = [objc_opt_self() sharedInstance];
      v12 = [v11 payloadDelegate];
      swift_unknownObjectWeakAssign();
      swift_unknownObjectRelease();
      if (v11)
      {
        [v11 setPayloadDelegate:v1];
        v13 = v11;
        v14 = sub_48534();
        [v13 setSupportedPayloadIds:v14];
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      (*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 96))(*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 152), *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 160));
      swift_unknownObjectRelease();
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_2D94()
{
  v1 = v0;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v2 = sub_47814();
  sub_5ED4(v2, qword_64158);
  v3 = sub_477F4();
  v4 = sub_48614();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_0, v3, v4, "resigning first responder", v5, 2u);
  }

  v16.receiver = v1;
  v16.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v6 = objc_msgSendSuper2(&v16, "resignFirstResponder");
  if (v6)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      (*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 112))(*(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 152), *(Strong + OBJC_IVAR____TtCV13MessagesPolls28AdaptiveGlyphSwiftUITextView11Coordinator_parent + 160));
      swift_unknownObjectRelease();
    }
  }

  v8 = *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (result)
  {
    v10 = result;
    v11 = [result length];

    [v8 setHidden:v11 > 0];
    v12 = [objc_opt_self() sharedInstance];
    if (v12)
    {
      v13 = v12;
      [v12 setPayloadDelegate:swift_unknownObjectWeakLoadStrong()];
      swift_unknownObjectRelease();
      v14 = v13;
      v15 = sub_48534();
      [v14 setSupportedPayloadIds:v15];
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_301C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21.receiver = v3;
  v21.super_class = type metadata accessor for AdaptiveGlyphTextView();
  objc_msgSendSuper2(&v21, "traitCollectionDidChange:", a1);
  v5 = &v3[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  v6 = *&v3[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 8];
  v7 = *&v3[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];

  v9 = v6(v8);

  [v7 setFont:v9];

  v10 = *(v5 + 1);

  v12 = v10(v11);

  [v3 setFont:v12];

  v13 = *(v5 + 1);

  v15 = v13(v14);

  v16 = *&v3[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer];
  v17 = *(v16 + 24);
  LOBYTE(v5) = *(v16 + 32);
  type metadata accessor for PollOptionTextTransformer();
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  *(v18 + 32) = v5;
  v19 = v17;
  sub_52F8(v18);
}

id sub_3388()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  result = [v1 attributedText];
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  v5 = [result length];

  [v2 setHidden:v5 > 0];
  v6 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;

  result = [v1 attributedText];
  if (!result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = sub_40CFC(result);

  sub_37E64(v8);

  v9 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
  swift_beginAccess();
  sub_6128(&v1[v9], v12, &qword_62108, &qword_4AA60);
  if (!v13)
  {
    return sub_60C8(v12, &qword_62108, &qword_4AA60);
  }

  sub_5E70(v12, v11);
  sub_60C8(v12, &qword_62108, &qword_4AA60);
  sub_6190(v11, v11[3]);
  v10 = *&v1[v6];
  type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

  sub_289AC(v1, v10);

  return sub_6020(v11);
}

id sub_3674(uint64_t a1, uint64_t a2)
{
  if (sub_475A4())
  {
    v5 = objc_opt_self();
    v6 = [v5 generalPasteboard];
    v7 = [v6 hasImages];

    if (v7)
    {
      return 0;
    }

    v8 = [v5 generalPasteboard];
    v9 = [v8 hasStrings];

    if (!v9)
    {
      return 0;
    }
  }

  sub_6128(a2, v20, &qword_62128, &qword_4AA80);
  v10 = v21;
  if (v21)
  {
    v11 = sub_6190(v20, v21);
    v12 = *(v10 - 8);
    __chkstk_darwin(v11, v11);
    v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_48864();
    (*(v12 + 8))(v14, v10);
    sub_6020(v20);
  }

  else
  {
    v15 = 0;
  }

  v17 = type metadata accessor for AdaptiveGlyphTextView();
  v19.receiver = v2;
  v19.super_class = v17;
  v16 = objc_msgSendSuper2(&v19, "canPerformAction:withSender:", a1, v15);
  swift_unknownObjectRelease();
  return v16;
}

id sub_3904(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AdaptiveGlyphTextView();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_3A28(uint64_t a1)
{
  v2 = v1;
  v4 = [v1 selectedRange];
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = *(*&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText] + 16);
    v9 = objc_allocWithZone(NSMutableAttributedString);

    v10 = [v9 initWithAttributedString:v8];
    v31 = [v10 attributedSubstringFromRange:{v6, v7}];
    v11 = [v31 attributesAtIndex:0 effectiveRange:0];
    type metadata accessor for Key(0);
    sub_544C();
    v12 = v1;
    v13 = v6;
    v14 = sub_48394();

    sub_382F4(v14);

    v15 = sub_48374();

    [v10 setAttributes:v15 range:{v13, v7}];

    sub_37E64(v10);

    v17 = sub_40428(v16, 0);

    [v1 setAttributedText:v17];

    [v1 setSelectedRange:{v13, v7}];
    v18 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
    swift_beginAccess();
    sub_6128(&v12[v18], v34, &qword_62108, &qword_4AA60);
    if (v34[3])
    {
      sub_5E70(v34, v33);
      sub_60C8(v34, &qword_62108, &qword_4AA60);
      sub_6190(v33, v33[3]);
      type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

      sub_28A28(v19);

      sub_6020(v33);
    }

    else
    {
      sub_60C8(v34, &qword_62108, &qword_4AA60);
    }
  }

  else
  {
    if (qword_61CA8 != -1)
    {
      swift_once();
    }

    v20 = sub_47814();
    sub_5ED4(v20, qword_64158);
    v21 = sub_477F4();
    v22 = sub_48624();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_0, v21, v22, "Changing typing attributes", v23, 2u);
    }

    v24 = [v2 typingAttributes];
    if (v24)
    {
      v25 = v24;
      v26 = [v24 mutableCopy];

      if (v26)
      {
        v27 = *&v2[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants + 8];

        v29 = v27(v28);

        [v26 ck_toggleTextStyles:a1 baseFont:v29];

        type metadata accessor for Key(0);
        sub_544C();
        v30 = v26;
        sub_48384();

        sub_51D0(_swiftEmptyArrayStorage);
        v32 = sub_48374();

        [v2 setTypingAttributes:v32];
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_3F18(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (qword_61CA8 != -1)
  {
    swift_once();
  }

  v8 = sub_47814();
  sub_5ED4(v8, qword_64158);

  v9 = sub_477F4();
  v10 = sub_48614();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v58[0] = v12;
    *v11 = 136315138;
    if (!a3)
    {
      __break(1u);
      goto LABEL_50;
    }

    v13 = v12;
    *(v11 + 4) = sub_3DD80(a2, a3, v58);
    _os_log_impl(&dword_0, v9, v10, "handlePayloadCalled! payloadID: %s", v11, 0xCu);
    sub_6020(v13);
  }

  else
  {

    if (!a3)
    {
LABEL_17:
      oslog = sub_477F4();
      v21 = sub_48624();
      if (!os_log_type_enabled(oslog, v21))
      {
        goto LABEL_22;
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "unexpected payload type";
LABEL_21:
      _os_log_impl(&dword_0, oslog, v21, v23, v22, 2u);

      goto LABEL_22;
    }
  }

  if ((a2 != 0xD00000000000001FLL || 0x8000000000049670 != a3) && (sub_48874() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!a1 || !sub_47B4(a1))
  {
    oslog = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(oslog, v21))
    {
      goto LABEL_22;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Could not convert payload to expected dictionary type";
    goto LABEL_21;
  }

  v14 = sub_48374();

  v15 = _UIStickerCreateStickerFromTextInputPayload();

  if (v15)
  {
    v16 = [v15 _ck_plainStringEmojiText];
    if (v16)
    {
      v17 = v16;
      v18 = sub_477F4();
      v19 = sub_48604();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_0, v18, v19, "Handling sticker payload as emoji string", v20, 2u);
      }

      [v4 insertText:v17];
      goto LABEL_44;
    }

    v24 = [v15 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
    v25 = sub_477F4();
    v26 = sub_48604();
    v27 = os_log_type_enabled(v25, v26);
    if (v24)
    {
      if (v27)
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_0, v25, v26, "Handling sticker payload as adaptive image glyph backed sticker", v28, 2u);
      }

      v29 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
      if (v29)
      {
        v30 = qword_61CB0;
        v31 = v29;
        if (v30 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_9AB4(v15, v31);
        v33 = v32;
        swift_endAccess();

        v34 = [v4 selectedTextRange];
        if (v34)
        {
          v35 = v34;
          v36 = v34;
          v37 = sub_477F4();
          v38 = sub_48604();

          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            v40 = swift_slowAlloc();
            *v39 = 138412290;
            *(v39 + 4) = v36;
            *v40 = v35;
            v41 = v36;
            _os_log_impl(&dword_0, v37, v38, "Adding a glyph; range: %@", v39, 0xCu);
            sub_60C8(v40, &qword_62110, &qword_4AA68);
          }

          [v4 insertAdaptiveImageGlyph:v31 replacementRange:v36];
        }

        goto LABEL_44;
      }
    }

    else
    {
      if (v27)
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_0, v25, v26, "We don't actually want to insert a sticker, since it would replace the Poll payload.", v42, 2u);
      }
    }

    v43 = sub_477F4();
    v44 = sub_48604();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_0, v43, v44, "Adaptive glyph is nil!", v45, 2u);
    }

LABEL_44:
    v46 = *&v4[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
    v47 = [v4 attributedText];
    if (v47)
    {
      v48 = v47;
      v49 = [v47 length];

      [v46 setHidden:v49 > 0];
      v50 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText;

      v51 = [v4 attributedText];
      if (v51)
      {
        v52 = v51;
        v53 = sub_40CFC(v51);

        sub_37E64(v53);

        v54 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
        swift_beginAccess();
        sub_6128(&v4[v54], v58, &qword_62108, &qword_4AA60);
        if (v58[3])
        {
          sub_5E70(v58, v57);
          sub_60C8(v58, &qword_62108, &qword_4AA60);
          sub_6190(v57, v57[3]);
          v55 = *&v4[v50];
          type metadata accessor for AdaptiveGlyphSwiftUITextView(0);

          sub_289AC(v4, v55);

          sub_6020(v57);
        }

        else
        {

          sub_60C8(v58, &qword_62108, &qword_4AA60);
        }

        return;
      }

LABEL_51:
      __break(1u);
      return;
    }

LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  oslog = sub_477F4();
  v21 = sub_48624();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Could not convert payload to _UISticker";
    goto LABEL_21;
  }

LABEL_22:
}

unint64_t sub_47B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_54A4(&qword_62118, &qword_4AA70);
    v2 = sub_48814();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_5F70(*(a1 + 48) + 40 * v12, v27);
        sub_606C(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_5F70(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_606C(v25 + 8, v20);
        sub_60C8(v24, &qword_62120, &qword_4AA78);
        v21 = v18;
        sub_54EC(v20, v22);
        v13 = v21;
        sub_54EC(v22, v23);
        sub_54EC(v23, &v21);
        result = sub_4D30(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          sub_6020(v10);
          result = sub_54EC(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_54EC(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_60C8(v24, &qword_62120, &qword_4AA78);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_4CA0(uint64_t a1)
{
  sub_48414();
  sub_488D4();
  sub_48464();
  v2 = sub_48904();

  return sub_4E80(a1, v2);
}

unint64_t sub_4D30(uint64_t a1, uint64_t a2)
{
  sub_488D4();
  sub_48464();
  v4 = sub_48904();

  return sub_4F84(a1, a2, v4);
}

unint64_t sub_4DA8(uint64_t a1, uint64_t a2)
{
  sub_488D4();
  if (a2)
  {
    sub_488F4(1u);
    sub_48464();
  }

  else
  {
    sub_488F4(0);
  }

  v4 = sub_48904();

  return sub_503C(a1, a2, v4);
}

unint64_t sub_4E3C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_48754(*(v2 + 40));

  return sub_5108(a1, v4);
}

unint64_t sub_4E80(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_48414();
      v8 = v7;
      if (v6 == sub_48414() && v8 == v9)
      {
        break;
      }

      v11 = sub_48874();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_4F84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_48874())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (sub_48874() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_5108(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5F70(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_48764();
      sub_5FCC(v8);
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

unint64_t sub_51D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_54A4(&qword_620F8, &qword_4AA50);
    v3 = sub_48814();
    v4 = a1 + 32;

    while (1)
    {
      sub_6128(v4, &v11, &qword_620F0, &qword_4AA48);
      v5 = v11;
      result = sub_4CA0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_54EC(&v12, (v3[7] + 32 * result));
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

void sub_52F8(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer] = a1;

  v3 = *(a1 + 24);
  if (v3)
  {
    sub_54A4(&qword_620E0, &qword_4AA40);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_4A9C0;
    *(inited + 32) = NSForegroundColorAttributeName;
    *(inited + 64) = sub_61D4(0, &qword_620E8, UIColor_ptr);
    *(inited + 40) = v3;
    v5 = v3;
    v6 = NSForegroundColorAttributeName;
    sub_51D0(inited);
    swift_setDeallocating();
    sub_60C8(inited + 32, &qword_620F0, &qword_4AA48);
  }

  else
  {
    sub_51D0(_swiftEmptyArrayStorage);
  }

  type metadata accessor for Key(0);
  sub_544C();
  v7 = sub_48374();

  [v1 setTypingAttributes:v7];
}

unint64_t sub_544C()
{
  result = qword_61EE0;
  if (!qword_61EE0)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_61EE0);
  }

  return result;
}

uint64_t sub_54A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

_OWORD *sub_54EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

char *sub_54FC(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v6 = v5;
  swift_unknownObjectWeakInit();
  v12 = &v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate];
  *v12 = 0u;
  *(v12 + 1) = 0u;
  *(v12 + 4) = 0;
  *&v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = &v5[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  if (qword_61CA0 != -1)
  {
    swift_once();
  }

  v14 = qword_64130;
  v15 = unk_64138;
  v16 = unk_64148;
  v17 = xmmword_64120;
  *v13 = xmmword_64120;
  *(v13 + 2) = v14;
  *(v13 + 24) = v15;
  *(v13 + 40) = v16;
  v18 = &v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = qword_61CA8;
  v20 = v17;

  if (v19 != -1)
  {
    swift_once();
  }

  v21 = sub_47814();
  sub_5ED4(v21, qword_64158);
  v22 = sub_477F4();
  v23 = sub_48604();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "AdaptiveGlyphTextView init", v24, 2u);
  }

  v25 = [objc_allocWithZone(UILabel) init];
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel] = v25;
  type metadata accessor for PollOptionText();
  v26 = swift_allocObject();
  *(v26 + 16) = [objc_allocWithZone(NSAttributedString) init];
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_pollOptionText] = v26;
  v27 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleHeadline];
  type metadata accessor for PollOptionTextTransformer();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  *(v28 + 24) = 0;
  *(v28 + 32) = 0;
  *&v6[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_transformer] = v28;
  v56.receiver = v6;
  v56.super_class = type metadata accessor for AdaptiveGlyphTextView();
  v29 = objc_msgSendSuper2(&v56, "initWithFrame:textContainer:", a1, a2, a3, a4, a5);
  v30 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel;
  v31 = *&v29[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderLabel];
  v32 = v29;
  v33 = v31;
  v34 = sub_483D4();
  [v33 setText:v34];

  v35 = *&v29[v30];
  [v32 bounds];
  [v35 setFrame:?];

  v36 = &v32[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants];
  [*&v29[v30] setTextColor:*&v32[OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants]];
  [*&v29[v30] setNumberOfLines:2];
  v37 = *(v36 + 1);
  v38 = *&v29[v30];

  v40 = v37(v39);

  [v38 setFont:v40];

  [*&v29[v30] setIsAccessibilityElement:0];
  [v32 addSubview:*&v29[v30]];
  v41 = objc_opt_self();
  v42 = v32;
  v43 = [v41 clearColor];
  [v42 setBackgroundColor:v43];

  v44 = *(v36 + 1);

  v46 = v44(v45);

  [v42 setFont:v46];

  [v42 setScrollEnabled:0];
  [v42 setTranslatesAutoresizingMaskIntoConstraints:0];

  v47 = [v42 textContainer];
  [v47 setMaximumNumberOfLines:0];

  v48 = [v42 textContainer];
  [v48 setLineBreakMode:0];

  v49 = [v42 textContainer];
  [v49 setLineFragmentPadding:0.0];

  v50 = [v42 textContainer];
  [v50 setWidthTracksTextView:1];

  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  [v42 setTextContainerInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v42 setContentInset:{UIEdgeInsetsZero.top, left, bottom, right}];

  if (*(v36 + 3) != UIEdgeInsetsZero.top || *(v36 + 4) != left || *(v36 + 5) != bottom || *(v36 + 6) != right)
  {
    [v42 setTextContainerInset:?];
  }

  v54 = [objc_opt_self() defaultCenter];
  [v54 addObserver:v42 selector:"adaptiveImageGlyphUpdatedWithNotification:" name:CKAdaptiveImageGlyphGeneratedNotification object:v42];

  [v42 setAllowsEditingTextAttributes:1];
  return v42;
}

void sub_5B30()
{
  swift_unknownObjectWeakInit();
  v1 = v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_adaptiveGlyphDelegate;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_focusDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_styleConstants;
  if (qword_61CA0 != -1)
  {
    swift_once();
  }

  v3 = v0 + v2;
  v4 = qword_64130;
  v5 = unk_64138;
  v6 = unk_64148;
  *v3 = xmmword_64120;
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 40) = v6;
  v7 = (v0 + OBJC_IVAR____TtC13MessagesPolls21AdaptiveGlyphTextView_placeholderText);
  *v7 = 0;
  v7[1] = 0;
  sub_487D4();
  __break(1u);
}

uint64_t sub_5C4C()
{
  sub_54A4(&qword_635C0, &unk_4AA88);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_4A9D0;
  v1 = sub_483D4();
  v2 = objc_opt_self();
  v3 = [v2 keyCommandWithInput:v1 modifierFlags:0x20000 action:"handleTabShift"];

  *(v0 + 32) = v3;
  v4 = sub_483D4();
  v5 = [v2 keyCommandWithInput:v4 modifierFlags:0x20000 action:"handleMoveToNextOption"];

  *(v0 + 40) = v5;
  v6 = sub_483D4();
  v7 = [v2 keyCommandWithInput:v6 modifierFlags:0x80000 action:"handleMoveToNextOption"];

  *(v0 + 48) = v7;
  return v0;
}

unint64_t sub_5D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_54A4(&qword_62100, &qword_4AA58);
    v3 = sub_48814();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_4CA0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_5E70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_5ED4(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_5F0C(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_6020(void *a1)
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

uint64_t sub_606C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_60C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_54A4(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6128(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_54A4(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void *sub_6190(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_61D4(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_6248(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_6290(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_62DC(char a1)
{
  sub_631C();
  if (a1)
  {
    sub_480A4();
  }

  else
  {
    sub_480B4();
  }

  return sub_486B4();
}

unint64_t sub_631C()
{
  result = qword_620E8;
  if (!qword_620E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_620E8);
  }

  return result;
}

double sub_6368()
{
  sub_47CE4();
  v0 = sub_47914();
  result = 4.0;
  __asm { FMOV            V1.2D, #2.0 }

  xmmword_64170 = xmmword_4AAD0;
  unk_64180 = _Q1;
  xmmword_64190 = 0x3FE0000000000000uLL;
  qword_641A0 = 0;
  unk_641A8 = v0;
  return result;
}

__n128 sub_63C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_63DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_6424(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_6484@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[2];
  v45 = v2;
  v3 = *(v2 + 16);
  if (v3)
  {
    v28[1] = a1;
    v28[2] = a2;
    v44 = _swiftEmptyArrayStorage;
    sub_2203C(0, v3, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = sub_47674();
    v7 = 0;
    v29 = *(v5 - 8);
    v30 = v5;
    v28[4] = v29 + 32;
    v28[3] = *(v29 + 64);
    v8 = (v2 + 72);
    do
    {
      v41 = v4;
      v42 = v3;
      v40 = v28;
      __chkstk_darwin(v5, v6);
      v43 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v10 = *(v8 - 5);
      v11 = *(v8 - 4);
      v34 = *(v8 - 3);
      v35 = v10;
      v12 = *(v8 - 1);
      v36 = *v8;
      v13 = sub_54A4(&qword_62140, &qword_4AB10);
      v38 = v28;
      v33 = *(*(v13 - 8) + 64);
      __chkstk_darwin(v13 - 8, v14);
      v32 = v15;
      v16 = v28 - v15;
      v17 = *(v12 + 16);
      swift_getKeyPath();
      sub_47444();
      sub_6CDC();
      v37 = v11;

      v18 = v17;
      sub_47474();
      if (v7)
      {

        v39 = 0;
        v19 = 1;
      }

      else
      {
        v39 = 0;
        v19 = 0;
      }

      v20 = sub_47464();
      (*(*(v20 - 8) + 56))(v16, v19, 1, v20);
      v21 = *(v12 + 16);

      v22 = [v21 string];
      sub_48414();

      v31 = v28;
      __chkstk_darwin(v23, v24);
      sub_6128(v16, v28 - v32, &qword_62140, &qword_4AB10);
      sub_47654();

      sub_60C8(v16, &qword_62140, &qword_4AB10);
      v4 = v41;
      v44 = v41;
      v26 = v41[2];
      v25 = v41[3];
      if (v26 >= v25 >> 1)
      {
        sub_2203C((v25 > 1), v26 + 1, 1);
        v4 = v44;
      }

      v4[2] = v26 + 1;
      v5 = (*(v29 + 32))(v4 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v26, v43, v30);
      v7 = v39;
      v8 += 48;
      v3 = v42 - 1;
    }

    while (v42 != 1);
  }

  sub_476D4();
  sub_60C8(&v45, &qword_62150, &qword_4BA60);
}

uint64_t sub_68C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = type metadata accessor for ViewModelPollVote(0);
  v4 = *(v30 - 8);
  __chkstk_darwin(v30, v5);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v25[1] = a2;
    v36 = _swiftEmptyArrayStorage;
    sub_22074(0, v8, 0);
    v9 = v36;
    v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v25[0] = a1;
    v11 = a1 + v10;
    v12 = sub_47784();
    v29 = v12;
    v14 = *(v12 - 8);
    v27 = *(v14 + 64);
    v28 = v14;
    v15 = *(v4 + 72);
    v25[2] = v14 + 32;
    v26 = v15;
    do
    {
      v34 = v9;
      v35 = v8;
      v33 = v25;
      __chkstk_darwin(v12, v13);
      v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_6BEC(v11, v7);
      v32 = *(v7 + 2);
      v18 = *(v30 + 24);
      v19 = sub_54A4(&qword_62138, &qword_4AC00);
      v31 = v25;
      __chkstk_darwin(v19 - 8, v20);
      sub_6128(&v7[v18], v25 - v21, &qword_62138, &qword_4AC00);

      sub_47764();
      sub_6C50(v7);
      v9 = v34;
      v36 = v34;
      v23 = v34[2];
      v22 = v34[3];
      if (v23 >= v22 >> 1)
      {
        sub_22074((v22 > 1), v23 + 1, 1);
        v9 = v36;
      }

      v9[2] = v23 + 1;
      v12 = (*(v28 + 32))(v9 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v23, v17, v29);
      v11 += v26;
      v8 = v35 - 1;
    }

    while (v35 != 1);
  }

  return sub_47684();
}

uint64_t sub_6BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_6C50(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelPollVote(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_6CAC@<X0>(uint64_t *a1@<X8>)
{
  sub_47454();
  result = sub_47444();
  *a1 = result;
  return result;
}

unint64_t sub_6CDC()
{
  result = qword_62148;
  if (!qword_62148)
  {
    sub_47444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62148);
  }

  return result;
}

void *sub_6D28(uint64_t a1)
{
  v2 = type metadata accessor for ViewModelPollVote(0);
  v38 = *(v2 - 8);
  v39 = v2;
  __chkstk_darwin(v2, v3);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_47694();
  v7 = *(v6 + 16);
  if (v7)
  {
    v31 = a1;
    v41 = _swiftEmptyArrayStorage;
    sub_21FD8(0, v7, 0);
    v8 = v41;
    v9 = sub_47784();
    v37 = v9;
    v11 = *(v9 - 8);
    v12 = *(v11 + 16);
    v35 = v11 + 16;
    v36 = v12;
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v30 = v6;
    v14 = v6 + v13;
    v15 = *(v11 + 64);
    v33 = *(v11 + 72);
    v34 = v15;
    v32 = (v11 + 8);
    do
    {
      v40 = &v30;
      __chkstk_darwin(v9, v10);
      v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
      v18 = v37;
      v36(v17, v14, v37);
      v19 = sub_47774();
      v21 = v20;
      v22 = sub_47754();
      v24 = v23;
      sub_47744();
      (*v32)(v17, v18);
      *v5 = v19;
      v5[1] = v21;
      v5[2] = v22;
      v5[3] = v24;
      v41 = v8;
      v26 = v8[2];
      v25 = v8[3];
      if (v26 >= v25 >> 1)
      {
        sub_21FD8((v25 > 1), v26 + 1, 1);
        v8 = v41;
      }

      v8[2] = v26 + 1;
      v9 = sub_7A64(v5, v8 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26);
      v14 += v33;
      --v7;
    }

    while (v7);
    v27 = sub_476A4();
    (*(*(v27 - 8) + 8))(v31, v27);
  }

  else
  {

    v28 = sub_476A4();
    (*(*(v28 - 8) + 8))(a1, v28);
    return _swiftEmptyArrayStorage;
  }

  return v8;
}

uint64_t sub_7010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_476B4();
  v5 = *(v4 + 16);
  if (!v5)
  {

    v82 = _swiftEmptyArrayStorage;
    goto LABEL_21;
  }

  v92 = a1;
  v93 = a2;
  v124 = _swiftEmptyArrayStorage;
  sub_2201C(0, v5, 0);
  v120 = _swiftEmptyArrayStorage;
  v6 = sub_47674();
  v95 = 0;
  v119 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 16);
  v8 += 16;
  v116 = v9;
  v10 = (*(v8 + 64) + 32) & ~*(v8 + 64);
  v91 = v4;
  v11 = v4 + v10;
  v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
  v13 = *(v8 + 56);
  v113 = *(v8 + 48);
  v114 = (v8 - 8);
  v115 = v8;
  v112 = v13;
  do
  {
    v118 = &v91;
    v14 = v113;
    __chkstk_darwin(v6, v7);
    v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = v119;
    v17 = v116;
    v18 = (v116)(v15, v11, v119);
    v117 = &v91;
    __chkstk_darwin(v18, v19);
    v17(v15, v15, v16);
    v20 = sub_47664();
    v21 = &off_60000;
    v123 = v22;
    if (!v22)
    {
      goto LABEL_8;
    }

    v23 = v20;
    v24 = sub_47634();
    if (!v25)
    {

      goto LABEL_8;
    }

    v106 = v24;
    v109 = v25;
    v122 = v23;
    v26 = sub_47464();
    v110 = &v91;
    v27 = *(v26 - 8);
    __chkstk_darwin(v26, v28);
    v105 = ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v107 = v29;
    v108 = (&v91 - v105);
    v30 = sub_54A4(&qword_62140, &qword_4AB10);
    v121 = &v91;
    __chkstk_darwin(v30 - 8, v31);
    v33 = v32;
    v34 = &v91 - v32;
    sub_47644();
    v35 = *(v27 + 48);
    v111 = v26;
    v104 = v35;
    if ((v35)(v34, 1, v26) == 1)
    {

      sub_60C8(v34, &qword_62140, &qword_4AB10);
      v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
      v21 = &off_60000;
LABEL_8:
      type metadata accessor for PollOptionText();
      v121 = swift_allocObject();
      v121[2] = [objc_allocWithZone(v12[486]) v21[494]];
      v36 = sub_47624();
      v37 = sub_47594();
      v38 = *(v37 - 8);
      __chkstk_darwin(v37, v39);
      v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_47584();
      v122 = sub_47574();
      v123 = v42;
      (*(v38 + 8))(v41, v37);
      v43 = *v114;
      v44 = v119;
      (*v114)(v15, v119);
      v6 = (v43)(v15, v44);
      v45 = 0;
      v46 = 0xE000000000000000;
      goto LABEL_9;
    }

    v52 = *(v27 + 32);
    v53 = v34;
    v54 = v111;
    v97 = v27 + 32;
    v96 = v52;
    v55 = (v52)(v108, v53, v111);
    v102 = &v91;
    __chkstk_darwin(v55, v56);
    v57 = *(v27 + 16);
    v99 = v27 + 16;
    v98 = v57;
    (v57)(&v91 - v33);
    v103 = v27;
    (*(v27 + 56))(&v91 - v33, 0, 1, v54);
    type metadata accessor for PollOptionText();
    v58 = swift_allocObject();
    v59 = objc_allocWithZone(NSAttributedString);
    v60 = [v59 init];
    v101 = &v91;
    v121 = v58;
    *(v58 + 16) = v60;
    v62 = __chkstk_darwin(v60, v61);
    v105 = (&v91 - v105);
    v100 = &v91;
    __chkstk_darwin(v62, v63);
    sub_6128(&v91 - v33, &v91 - v33, &qword_62140, &qword_4AB10);
    v64 = (v104)(&v91 - v33, 1, v54);
    v65 = v108;
    if (v64 == 1)
    {
      sub_60C8(&v91 - v33, &qword_62140, &qword_4AB10);
      sub_37E64([objc_allocWithZone(NSAttributedString) init]);
      sub_60C8(&v91 - v33, &qword_62140, &qword_4AB10);
      v66 = v111;
      v67 = v103;
    }

    else
    {
      v94 = &v91 - v33;
      v68 = v105;
      v69 = v111;
      v96(v105, &v91 - v33, v111);
      v70 = sub_7A18();
      v104 = &v91;
      __chkstk_darwin(v70, v71);
      v73 = (v72 + 15) & 0xFFFFFFFFFFFFFFF0;
      v98(&v91 - v73, v68, v69);
      swift_getKeyPath();
      sub_47444();
      sub_6CDC();
      v74 = v95;
      v75 = sub_48664();
      if (v74)
      {
        __chkstk_darwin(v75, v76);
        v98(&v91 - v73, v105, v111);
        v77 = sub_48674();
        sub_37E64(v77);

        v95 = 0;
      }

      else
      {
        v95 = 0;
        sub_37E64(v75);
      }

      sub_60C8(v94, &qword_62140, &qword_4AB10);
      v67 = v103;
      v66 = v111;
      (*(v103 + 8))(v105, v111);
    }

    v36 = sub_47624();
    (*(v67 + 8))(v65, v66);
    v78 = *v114;
    v79 = v119;
    (*v114)(v15, v119);
    v6 = (v78)(v15, v79);
    v46 = v109;
    v45 = v106;
LABEL_9:
    v47 = v120;
    v124 = v120;
    v49 = v120[2];
    v48 = v120[3];
    if (v49 >= v48 >> 1)
    {
      v80 = v45;
      v81 = v46;
      v6 = sub_2201C((v48 > 1), v49 + 1, 1);
      v45 = v80;
      v46 = v81;
      v47 = v124;
    }

    v47[2] = v49 + 1;
    v120 = v47;
    v50 = &v47[6 * v49];
    v50[4] = v122;
    v50[5] = v123;
    v50[6] = v45;
    v51 = v121;
    v50[7] = v46;
    v50[8] = v51;
    *(v50 + 72) = v36 & 1;
    v11 += v112;
    --v5;
    v12 = &_s10Foundation15AttributeScopesO17IMSharedUtilitiesE21IMTextStyleAttributesVMa_ptr;
  }

  while (v5);

  a2 = v93;
  a1 = v92;
  v82 = v120;
LABEL_21:
  v83 = sub_476E4();
  v85 = v84;
  v86 = sub_476C4();
  v88 = v87;
  v89 = sub_476F4();
  result = (*(*(v89 - 8) + 8))(a1, v89);
  *a2 = v83;
  a2[1] = v85;
  a2[2] = v82;
  a2[3] = v86;
  a2[4] = v88;
  return result;
}

unint64_t sub_7A18()
{
  result = qword_63590;
  if (!qword_63590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_63590);
  }

  return result;
}

uint64_t sub_7A64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_7AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ViewModelPollVote(0) - 8;
  v8 = __chkstk_darwin(v6, v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v11);
  v14 = &v25 - v13;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return _swiftEmptyArrayStorage;
  }

  v16 = *(v12 + 72);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v17 = a3 + v25;
  v18 = _swiftEmptyArrayStorage;
  do
  {
    sub_6BEC(v17, v14);
    v19 = *(v14 + 3);
    if (v19 && (*(v14 + 2) == a1 ? (v20 = v19 == a2) : (v20 = 0), v20 || (sub_48874() & 1) != 0))
    {
      sub_7A64(v14, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_21FD8(0, v18[2] + 1, 1);
        v18 = v26;
      }

      v23 = v18[2];
      v22 = v18[3];
      if (v23 >= v22 >> 1)
      {
        sub_21FD8((v22 > 1), v23 + 1, 1);
        v18 = v26;
      }

      v18[2] = v23 + 1;
      sub_7A64(v10, v18 + v25 + v23 * v16);
    }

    else
    {
      sub_6C50(v14);
    }

    v17 += v16;
    --v15;
  }

  while (v15);
  return v18;
}

unint64_t sub_7CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a5;
  v37 = a2;
  v33 = type metadata accessor for ViewModelPollVote(0);
  v9 = *(v33 - 8);
  v11 = __chkstk_darwin(v33, v10);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = (&v33 - v14);
  v36 = v5;
  v16 = *v5;
  v17 = *(*v5 + 16);
  if (!v17)
  {
LABEL_17:
    v19 = v35;
    sub_833C(v34, &v35[*(v33 + 24)]);
    v24 = v37;
    *v19 = a1;
    v19[1] = v24;
    v19[2] = a3;
    v19[3] = a4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_25:
      v16 = sub_10B1C(0, v16[2] + 1, 1, v16);
    }

    v25 = v36;
    v27 = v16[2];
    v26 = v16[3];
    if (v27 >= v26 >> 1)
    {
      v16 = sub_10B1C((v26 > 1), v27 + 1, 1, v16);
    }

    v16[2] = v27 + 1;
    result = sub_7A64(v19, v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v27);
    *v25 = v16;
    return result;
  }

  v18 = 0;
  v19 = (v16 + ((*(v9 + 80) + 32) & ~*(v9 + 80)));
  while (1)
  {
    if (v18 >= v16[2])
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_6BEC(v19 + *(v9 + 72) * v18, v15);
    v20 = v15[3];
    if (!v20 || (v15[2] == a3 ? (v21 = v20 == a4) : (v21 = 0), !v21 && (sub_48874() & 1) == 0 || (v22 = v15[1]) == 0))
    {
      sub_6C50(v15);
      goto LABEL_4;
    }

    if (*v15 == a1 && v22 == v37)
    {
      break;
    }

    v23 = sub_48874();
    sub_6C50(v15);
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v17 == ++v18)
    {
      goto LABEL_17;
    }
  }

  sub_6C50(v15);
LABEL_22:
  v29 = v37;

  v30 = v36;
  v31 = sub_9208(v36, a1, v29, a3, a4);

  v32 = *(*v30 + 16);
  if (v32 >= v31)
  {
    return sub_966C(v31, v32);
  }

  __break(1u);
  return result;
}

uint64_t sub_7FB4@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    *a1 = *(v1 + 16);
    a1[1] = v2;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
  }
}

uint64_t sub_7FDC()
{
  type metadata accessor for ViewModelPollVote(0);
  v1._countAndFlagsBits = sub_48554();
  sub_48484(v1);

  return 0x203A7365746F56;
}

uint64_t sub_8048()
{
  v1 = *(type metadata accessor for ViewModelPollVote(0) + 24);
  v2 = sub_54A4(&qword_62138, &qword_4AC00);
  __chkstk_darwin(v2 - 8, v3);
  v5 = &v17 - v4;
  sub_833C(v0 + v1, &v17 - v4);
  v6 = sub_47564();
  LODWORD(v1) = (*(*(v6 - 8) + 48))(v5, 1, v6);
  sub_60C8(v5, &qword_62138, &qword_4AC00);
  if (v1 == 1)
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_48794(21);
    if (v0[1])
    {
      v7 = *v0;
      v8 = v0[1];
    }

    else
    {
      v7 = 0xD000000000000014;
      v8 = 0x80000000000498C0;
    }

    v19._countAndFlagsBits = v7;
    v19._object = v8;
    sub_48484(v19);

    v20._countAndFlagsBits = 8250;
    v20._object = 0xE200000000000000;
    sub_48484(v20);
    if (v0[3])
    {
      v11 = v0[2];
      v12 = v0[3];
    }

    else
    {
      v12 = 0x80000000000498E0;
      v11 = 0xD000000000000019;
    }

    v23._countAndFlagsBits = v11;
    v23._object = v12;
    sub_48484(v23);

    v15._countAndFlagsBits = 0x6F76206F6E202D20;
    v15._object = 0xEF656D6974206574;
  }

  else
  {
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_48794(22);
    if (v0[1])
    {
      v9 = *v0;
      v10 = v0[1];
    }

    else
    {
      v10 = 0x80000000000498C0;
      v9 = 0xD000000000000014;
    }

    v21._countAndFlagsBits = v9;
    v21._object = v10;
    sub_48484(v21);

    v22._countAndFlagsBits = 8250;
    v22._object = 0xE200000000000000;
    sub_48484(v22);
    if (v0[3])
    {
      v13 = v0[2];
      v14 = v0[3];
    }

    else
    {
      v14 = 0x80000000000498E0;
      v13 = 0xD000000000000019;
    }

    v24._countAndFlagsBits = v13;
    v24._object = v14;
    sub_48484(v24);

    v15._countAndFlagsBits = 0xD000000000000010;
    v15._object = 0x8000000000049900;
  }

  sub_48484(v15);
  return v17;
}

uint64_t type metadata accessor for ViewModelPollVote(uint64_t a1)
{
  result = qword_621C8;
  if (!qword_621C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_833C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62138, &qword_4AC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_83AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v7 = *(a2 + 48);
    v6 = *(a2 + 56);
    v8 = *(a2 + 64);
    v17 = *(a2 + 72);
    v18 = *(a1 + 72);
    if (*(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40) || (v9 = a2, v10 = sub_48874(), a2 = v9, (v10 & 1) != 0))
    {
      v15 = a2;
      for (i = 0; ; i += 48)
      {
        --v2;
        if (v4)
        {
          if (!v6 || (v3 != v7 || v4 != v6) && (sub_48874() & 1) == 0)
          {
            return 0;
          }
        }

        else if (v6)
        {
          return 0;
        }

        v12 = *(v5 + 16);
        v13 = *(v8 + 16);

        if (![v12 isEqualToAttributedString:v13])
        {
          break;
        }

        if ((v17 ^ v18))
        {
          return 0;
        }

        if (!v2)
        {
          return 1;
        }

        v3 = *(a1 + i + 96);
        v4 = *(a1 + i + 104);
        v5 = *(a1 + i + 112);
        v7 = *(v15 + i + 96);
        v6 = *(v15 + i + 104);
        v8 = *(v15 + i + 112);
        v17 = *(v15 + i + 120);
        v18 = *(a1 + i + 120);
        if ((*(a1 + i + 80) != *(v15 + i + 80) || *(a1 + i + 88) != *(v15 + i + 88)) && (sub_48874() & 1) == 0)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_85F4(uint64_t a1, uint64_t a2)
{
  v53 = type metadata accessor for ViewModelPollVote(0);
  v5 = __chkstk_darwin(v53, v4);
  v7 = (&v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5, v8);
  v11 = (&v47 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    return 0;
  }

  if (!v12 || a1 == a2)
  {
    return 1;
  }

  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v51 = *(v9 + 72);
  v52 = v7;
  v16 = &qword_62138;
  v17 = &qword_4AC00;
  v48 = (&v47 - v10);
  while (1)
  {
    sub_6BEC(v14, v11);
    sub_6BEC(v15, v7);
    v18 = v11[1];
    v19 = v7[1];
    if (v18)
    {
      if (!v19 || (*v11 != *v7 || v18 != v19) && (sub_48874() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v19)
    {
      goto LABEL_29;
    }

    v20 = v11[3];
    v21 = v7[3];
    if (v20)
    {
      if (!v21 || (v11[2] != v7[2] || v20 != v21) && (sub_48874() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v21)
    {
      goto LABEL_29;
    }

    v22 = v16;
    v54 = v15;
    v55 = v14;
    v23 = *(v53 + 24);
    v24 = sub_54A4(&qword_62158, &qword_4AC08);
    v56 = &v47;
    v26 = __chkstk_darwin(v24 - 8, v25);
    v28 = &v47 - v27;
    v29 = *(v26 + 56);
    sub_833C(v11 + v23, &v47 - v27);
    sub_833C(v7 + v23, &v28[v29]);
    v30 = sub_47564();
    v31 = *(v30 - 8);
    v32 = *(v31 + 48);
    if (v32(v28, 1, v30) != 1)
    {
      break;
    }

    if (v32(&v28[v29], 1, v30) != 1)
    {
      goto LABEL_28;
    }

    v16 = v22;
    sub_60C8(v28, v22, v17);
    v7 = v52;
    sub_6C50(v52);
    sub_6C50(v11);
LABEL_5:
    v15 = v54 + v51;
    v14 = v55 + v51;
    if (!--v12)
    {
      return 1;
    }
  }

  v33 = v22;
  v34 = v22;
  v35 = v17;
  v36 = sub_54A4(v34, v17);
  v50 = &v47;
  __chkstk_darwin(v36 - 8, v37);
  v39 = &v47 - v38;
  sub_833C(v28, &v47 - v38);
  v40 = (v32)(&v28[v29], 1, v30);
  if (v40 != 1)
  {
    __chkstk_darwin(v40, v41);
    v43 = &v47 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 32))(v43, &v28[v29], v30);
    sub_8AD8();
    v49 = sub_483C4();
    v44 = *(v31 + 8);
    v44(v43, v30);
    v44(v39, v30);
    sub_60C8(v28, v33, v35);
    v7 = v52;
    sub_6C50(v52);
    v45 = v48;
    sub_6C50(v48);
    v16 = v33;
    v11 = v45;
    v17 = v35;
    if ((v49 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_5;
  }

  (*(v31 + 8))(v39, v30);
  v11 = v48;
LABEL_28:
  sub_60C8(v28, &qword_62158, &qword_4AC08);
  v7 = v52;
LABEL_29:
  sub_6C50(v7);
  sub_6C50(v11);
  return 0;
}

unint64_t sub_8AD8()
{
  result = qword_62160;
  if (!qword_62160)
  {
    sub_47564();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62160);
  }

  return result;
}

uint64_t sub_8B24(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_9790();
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = sub_487A4();
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = sub_487A4();
LABEL_26:
        v17 = v16;
        v18 = sub_486C4();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
    v22 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_486C4();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_487E4();
  }

  result = sub_487E4();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

BOOL sub_8D64(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (v7)
  {
    if (!v8 || (a1[2] != a2[2] || v7 != v8) && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v9 = *(type metadata accessor for ViewModelPollVote(0) + 24);
  v10 = sub_54A4(&qword_62158, &qword_4AC08);
  v12 = __chkstk_darwin(v10 - 8, v11);
  v14 = &v30 - v13;
  v15 = *(v12 + 56);
  sub_833C(a1 + v9, &v30 - v13);
  sub_833C(a2 + v9, &v14[v15]);
  v16 = sub_47564();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v14, 1, v16) == 1)
  {
    if (v18(&v14[v15], 1, v16) == 1)
    {
      sub_60C8(v14, &qword_62138, &qword_4AC00);
      return 1;
    }

    goto LABEL_22;
  }

  v20 = sub_54A4(&qword_62138, &qword_4AC00);
  __chkstk_darwin(v20 - 8, v21);
  v23 = &v30 - v22;
  sub_833C(v14, &v30 - v22);
  v24 = (v18)(&v14[v15], 1, v16);
  if (v24 == 1)
  {
    (*(v17 + 8))(v23, v16);
LABEL_22:
    sub_60C8(v14, &qword_62158, &qword_4AC08);
    return 0;
  }

  __chkstk_darwin(v24, v25);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 32))(v27, &v14[v15], v16);
  sub_8AD8();
  v28 = sub_483C4();
  v29 = *(v17 + 8);
  v29(v27, v16);
  v29(v23, v16);
  sub_60C8(v14, &qword_62138, &qword_4AC00);
  return (v28 & 1) != 0;
}

uint64_t sub_90B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v11 = 0;
  v12 = *(type metadata accessor for ViewModelPollVote(0) - 8);
  v13 = *(v12 + 72);
  v14 = (((*(v12 + 80) + 32) & ~*(v12 + 80)) + a1 + 16);
  while (1)
  {
    v15 = *(v14 - 1);
    if (v15)
    {
      v16 = *(v14 - 2) == a2 && v15 == a3;
      if (v16 || (sub_48874() & 1) != 0)
      {
        v17 = v14[1];
        if (v17)
        {
          v18 = *v14 == a4 && v17 == a5;
          if (v18 || (sub_48874() & 1) != 0)
          {
            break;
          }
        }
      }
    }

    ++v11;
    v14 = (v14 + v13);
    if (v5 == v11)
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_9208(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v9 = type metadata accessor for ViewModelPollVote(0);
  v10 = *(v9 - 8);
  v12 = __chkstk_darwin(v9 - 8, v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v41 - v17;
  __chkstk_darwin(v16, v19);
  v21 = (&v41 - v20);
  v22 = *a1;
  v23 = *a1;
  v50 = a2;
  v45 = a3;
  v24 = v51;
  result = sub_90B8(v23, a2, a3, a4, v49);
  if (v24)
  {
    return result;
  }

  v46 = v14;
  v47 = v18;
  v44 = a4;
  v41 = 0;
  if (v26)
  {
    return v22[2];
  }

  v51 = result;
  v27 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_39;
  }

  v29 = v22 + 2;
  v28 = v22[2];
  v30 = v45;
  if (v27 == v28)
  {
    return v51;
  }

  v43 = a1;
  v48 = v10;
  while (v27 < v28)
  {
    v31 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v32 = v22 + v31;
    v33 = *(v10 + 72);
    v34 = v33 * v27;
    sub_6BEC(v22 + v31 + v33 * v27, v21);
    v35 = v21[1];
    if (v35 && (*v21 == v50 ? (v36 = v35 == v30) : (v36 = 0), (v36 || (sub_48874() & 1) != 0) && (v37 = v21[3]) != 0))
    {
      if (v21[2] == v44 && v37 == v49)
      {
        result = sub_6C50(v21);
LABEL_33:
        v10 = v48;
        goto LABEL_11;
      }

      v42 = sub_48874();
      result = sub_6C50(v21);
      if (v42)
      {
        goto LABEL_33;
      }
    }

    else
    {
      result = sub_6C50(v21);
    }

    v38 = v51;
    if (v27 == v51)
    {
      v10 = v48;
    }

    else
    {
      if ((v51 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v39 = *v29;
      if (v51 >= *v29)
      {
        goto LABEL_36;
      }

      v40 = v33 * v51;
      result = sub_6BEC(&v32[v33 * v51], v47);
      if (v27 >= v39)
      {
        goto LABEL_37;
      }

      sub_6BEC(&v32[v34], v46);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_29974(v22);
      }

      v30 = v45;
      v10 = v48;
      result = sub_972C(v46, v22 + v31 + v40);
      if (v27 >= v22[2])
      {
        goto LABEL_38;
      }

      result = sub_972C(v47, v22 + v31 + v34);
      *v43 = v22;
      v38 = v51;
    }

    v51 = v38 + 1;
LABEL_11:
    ++v27;
    v29 = v22 + 2;
    v28 = v22[2];
    if (v27 == v28)
    {
      return v51;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_9524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for ViewModelPollVote(0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_966C(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
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
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_10B1C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_9524(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_972C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ViewModelPollVote(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_9790()
{
  result = qword_62168;
  if (!qword_62168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62168);
  }

  return result;
}

uint64_t sub_97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_54A4(&qword_62138, &qword_4AC00);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_98CC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_54A4(&qword_62138, &qword_4AC00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_997C(uint64_t a1)
{
  sub_9A00();
  if (v1 <= 0x3F)
  {
    sub_9A50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_9A00()
{
  if (!qword_621D8)
  {
    v0 = sub_486E4();
    if (!v1)
    {
      atomic_store(v0, &qword_621D8);
    }
  }
}

void sub_9A50(uint64_t a1)
{
  if (!qword_621E0)
  {
    sub_47564();
    v1 = sub_486E4();
    if (!v2)
    {
      atomic_store(v1, &qword_621E0);
    }
  }
}

void sub_9AB4(uint64_t a1, void *a2)
{
  if (&static CKMediaObjectManager.shared.getter)
  {
    sub_9EF8(a2, *v2);
    if (!v5)
    {
      v6 = v2;
      sub_A17C();
      v7 = sub_48684();
      v8 = [objc_allocWithZone(IMSticker) initWithUISticker:a1 adaptiveImageGlyph:a2];
      v9 = [v7 mediaObjectWithSticker:v8 stickerUserInfo:0];
      if (!v9)
      {

        return;
      }

      v10 = v9;
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v13 = v10;
        v14 = v12;
        v15 = [v12 transferGUID];
        if (v15)
        {
          v16 = v15;
          v17 = sub_48414();
          v19 = v18;

          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = v17 & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v21 = [v14 adaptiveImageGlyph];
            if (v21)
            {

              if (qword_61CC0 != -1)
              {
                swift_once();
              }

              v22 = sub_47814();
              sub_5ED4(v22, qword_641B0);
              v23 = sub_477F4();
              v24 = sub_48624();
              if (!os_log_type_enabled(v23, v24))
              {
                goto LABEL_28;
              }

              v25 = swift_slowAlloc();
              *v25 = 0;
              v26 = "The adaptive glyph is already available";
            }

            else
            {
              if (qword_61CC0 != -1)
              {
                swift_once();
              }

              v31 = sub_47814();
              sub_5ED4(v31, qword_641B0);
              v23 = sub_477F4();
              v24 = sub_48624();
              if (!os_log_type_enabled(v23, v24))
              {
                goto LABEL_28;
              }

              v25 = swift_slowAlloc();
              *v25 = 0;
              v26 = "The adaptive glyph hasn't been generated, but we just kicked off a retrieval";
            }

            _os_log_impl(&dword_0, v23, v24, v26, v25, 2u);

LABEL_28:

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v33 = *v6;
            sub_42EB4(v14, v17, v19, isUniquelyReferenced_nonNull_native);

            *v6 = v33;
            return;
          }
        }

        if (qword_61CC0 != -1)
        {
          swift_once();
        }

        v27 = sub_47814();
        sub_5ED4(v27, qword_641B0);
        v28 = sub_477F4();
        v29 = sub_48624();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_0, v28, v29, "Failed to get file transfer guid for created emoji image media object", v30, 2u);
        }
      }

      else
      {
      }
    }
  }
}

uint64_t sub_9E84()
{
  v0 = sub_47814();
  sub_5F0C(v0, qword_641B0);
  sub_5ED4(v0, qword_641B0);
  sub_477E4();
  return sub_47804();
}

void sub_9EF8(void *a1, uint64_t a2)
{
  v3 = [a1 contentIdentifier];
  v4 = sub_48414();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  v32 = v4;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
LABEL_26:

    return;
  }

  v8 = a2 + 64;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
  v30 = a2;
  while (v11)
  {
    v15 = v13;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = *(*(a2 + 56) + 8 * (v16 | (v15 << 6)));

    v18 = v17;
    v19 = [v18 v14[11]];
    if (v19)
    {
      v20 = [v19 adaptiveImageGlyphContentIdentifier];
      if (v20)
      {
        v31 = v18;
        v21 = v20;
        v22 = v6;
        v23 = sub_48414();
        v25 = v24;

        v26 = v23;
        v6 = v22;
        if (v26 == v32 && v25 == v22)
        {

          swift_unknownObjectRelease();
          v29 = v31;
LABEL_23:
          objc_opt_self();
          a2 = v30;
          if (swift_dynamicCastObjCClass())
          {

            return;
          }

          v13 = v15;
          v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
        }

        else
        {
          v28 = sub_48874();

          swift_unknownObjectRelease();
          v29 = v31;
          if (v28)
          {
            goto LABEL_23;
          }

          v13 = v15;
          a2 = v30;
          v14 = &selRef_adaptiveImageGlyphUpdatedWithNotification_;
        }
      }

      else
      {

        swift_unknownObjectRelease();
        v13 = v15;
      }
    }

    else
    {

      v13 = v15;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      goto LABEL_26;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

unint64_t sub_A17C()
{
  result = qword_62218;
  if (!qword_62218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62218);
  }

  return result;
}

__n128 sub_A1C8()
{
  v0 = sub_54A4(&qword_62220, &qword_4ACA0);
  __chkstk_darwin(v0, v1);
  v3 = (&v18 - v2);
  v4 = sub_482C4();
  v6 = v5;
  v7 = sub_48084();
  v8 = *(v0 + 36);
  v9 = enum case for BlendMode.destinationOut(_:);
  v10 = sub_48304();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  *v3 = v7;
  sub_A308();
  v11 = sub_47914();
  __asm { FMOV            V0.2D, #24.0 }

  xmmword_641D0 = _Q0;
  qword_641E0 = 0x3FD999999999999ALL;
  unk_641E8 = v4;
  *&xmmword_641F0 = v6;
  *(&xmmword_641F0 + 8) = xmmword_4AC90;
  __asm { FMOV            V0.2D, #6.0 }

  unk_64208 = result;
  qword_64218 = v11;
  return result;
}

unint64_t sub_A308()
{
  result = qword_62228;
  if (!qword_62228)
  {
    sub_A36C(&qword_62220, &qword_4ACA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62228);
  }

  return result;
}

uint64_t sub_A36C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_A3B4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_A3D0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_A418(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_A4A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_54A4(&qword_62230, "v9");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_54A4(&qword_63450, &unk_4C4C0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 36) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_A5DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_54A4(&qword_62230, "v9");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_54A4(&qword_63450, &unk_4C4C0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 36) + 24) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for PollOptionList.PollOptionListView(uint64_t a1)
{
  result = qword_62290;
  if (!qword_62290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_A74C(uint64_t a1)
{
  sub_A8F4(319, &qword_622A0, type metadata accessor for PollViewModel, &type metadata accessor for Bindable);
  if (v1 <= 0x3F)
  {
    sub_A8F4(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      sub_A958(319, &qword_622A8, &type metadata for Bool, &type metadata accessor for Environment);
      if (v3 <= 0x3F)
      {
        sub_A958(319, &qword_622B0, &type metadata for Double, &type metadata accessor for Environment);
        if (v4 <= 0x3F)
        {
          sub_A958(319, &qword_622B8, &type metadata for CGFloat, &type metadata accessor for Optional);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_A8F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_A958(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_A9C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62308, &qword_4AD90);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for PollOptionList.PollOptionListView(0);
  sub_6128(v1 + *(v12 + 24), v11, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_47884();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_48634();
    v15 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_ABCC@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PollOptionList.PollOptionListView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8, v7);
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  swift_getKeyPath();
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  v8 = *(*&v16 + 176);

  if (v8 == 1)
  {
    v9 = sub_47C94();
  }

  else
  {
    v9 = sub_47C84();
  }

  v10 = v9;
  sub_D5A4(v2, v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v12 = swift_allocObject();
  sub_EA44(v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for PollOptionList.PollOptionListView);
  v15[1] = 0x4024000000000000;
  sub_48114();
  result = v16;
  v14 = v17;
  *a1 = v10;
  *(a1 + 8) = sub_D618;
  *(a1 + 16) = v12;
  *(a1 + 24) = result;
  *(a1 + 32) = v14;
  return result;
}

uint64_t sub_ADC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v106 = a2;
  v5 = type metadata accessor for PollOptionList.PollOptionListView(0);
  v96 = *(v5 - 8);
  __chkstk_darwin(v5, v6);
  v97 = v7;
  v98 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62230, "v9");
  v95 = *(v8 - 8);
  __chkstk_darwin(v8, v9);
  v11 = &v82 - v10;
  v12 = sub_54A4(&qword_62310, &qword_4AD98);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v82 - v14;
  v105 = sub_54A4(&qword_62318, &qword_4ADA0);
  v17 = __chkstk_darwin(v105, v16);
  v99 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v100 = &v82 - v20;
  v103 = sub_54A4(&qword_62320, &qword_4ADA8);
  __chkstk_darwin(v103, v21);
  v104 = &v82 - v22;
  v89 = sub_479D4();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89, v23);
  v87 = &v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_54A4(&qword_62328, &qword_4ADB0);
  v84 = *(v86 - 8);
  __chkstk_darwin(v86, v25);
  v83 = &v82 - v26;
  v85 = sub_54A4(&qword_62330, &qword_4ADB8);
  __chkstk_darwin(v85, v27);
  v29 = &v82 - v28;
  v91 = sub_54A4(&qword_62338, &qword_4ADC0);
  __chkstk_darwin(v91, v30);
  v90 = &v82 - v31;
  v93 = sub_54A4(&qword_62340, &qword_4ADC8);
  __chkstk_darwin(v93, v32);
  v92 = &v82 - v33;
  v101 = sub_54A4(&qword_62348, &qword_4ADD0);
  __chkstk_darwin(v101, v34);
  v94 = &v82 - v35;
  v102 = v5;
  v36 = a1 + *(v5 + 40);
  if (!*(v36 + 8))
  {
    a3 = *v36;
  }

  sub_481F4();
  v37 = v109;
  swift_getKeyPath();
  v109 = v37;
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  v38 = *(v37 + 98);

  if (v38 == 1 && (sub_481F4(), v39 = v109, swift_getKeyPath(), v109 = v39, sub_475C4(), , v40 = *(v39 + 97), v41 = , (v40 & 1) == 0))
  {
    __chkstk_darwin(v41, v42);
    sub_54A4(&qword_623F8, &qword_4AEB8);
    v60 = sub_A36C(&qword_62400, &qword_4AEC0);
    v61 = sub_A36C(&qword_62408, &qword_4AEC8);
    v62 = sub_DD44();
    v109 = v61;
    *&v110 = v62;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v109 = v60;
    *&v110 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v64 = v83;
    sub_47EC4();
    v65 = v87;
    sub_479C4();
    sub_EAF0(&qword_623B8, &qword_62328, &qword_4ADB0, &protocol conformance descriptor for List<A, B>);
    v66 = v86;
    v67 = v89;
    sub_48044();
    (*(v88 + 8))(v65, v67);
    (*(v84 + 8))(v64, v66);
    KeyPath = swift_getKeyPath();
    v69 = &v29[*(v85 + 36)];
    *v69 = KeyPath;
    v69[1] = 0;
    sub_DB04();
    v70 = v90;
    sub_47F94();
    sub_60C8(v29, &qword_62330, &qword_4ADB8);
    v71 = (a1 + *(v102 + 36));
    v72 = *v71;
    v73 = (v70 + *(v91 + 36));
    v74 = *(sub_47A84() + 20);
    v75 = enum case for RoundedCornerStyle.continuous(_:);
    v76 = sub_47C24();
    (*(*(v76 - 8) + 104))(&v73[v74], v75, v76);
    *v73 = v72;
    *(v73 + 1) = v72;
    *&v73[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
    sub_DA10();
    v77 = v92;
    sub_48004();
    sub_60C8(v70, &qword_62338, &qword_4ADC0);
    *(v77 + *(v93 + 36)) = 256;
    sub_478C4();
    sub_D948();
    v78 = v94;
    sub_47FA4();
    sub_60C8(v77, &qword_62340, &qword_4ADC8);
    v79 = v71[2];
    v80 = swift_getKeyPath();
    v81 = v78 + *(v101 + 36);
    *v81 = v80;
    *(v81 + 8) = v79;
    *(v81 + 16) = 0;
    sub_E36C(v78, v104);
    swift_storeEnumTagMultiPayload();
    sub_D854();
    sub_DC4C();
    sub_47CC4();
    return sub_60C8(v78, &qword_62348, &qword_4ADD0);
  }

  else
  {
    sub_481F4();
    v43 = v109;
    swift_getKeyPath();
    v109 = v43;
    sub_475C4();

    v44 = *(v43 + 98);

    v45 = v102;
    v46 = 8;
    if (v44)
    {
      v46 = 16;
    }

    v47 = *(a1 + *(v102 + 36) + v46);
    *v15 = sub_47C74();
    *(v15 + 1) = v47;
    v15[16] = 0;
    sub_54A4(&qword_62350, &qword_4AE00);
    sub_48204();
    swift_getKeyPath();
    sub_48224();

    (*(v95 + 8))(v11, v8);
    v107 = v109;
    v108 = v110;
    swift_getKeyPath();
    v48 = v98;
    sub_D5A4(a1, v98);
    v49 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v50 = (v97 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = swift_allocObject();
    sub_EA44(v48, v51 + v49, type metadata accessor for PollOptionList.PollOptionListView);
    *(v51 + v50) = a3;
    sub_54A4(&qword_62360, &qword_4AE68);
    _s18PollOptionCellViewVMa(0);
    sub_D720();
    sub_D80C(&qword_62388, _s18PollOptionCellViewVMa, &unk_4C648);
    sub_481E4();
    v52 = *(a1 + *(v45 + 36));
    v53 = v99;
    v54 = &v99[*(v105 + 36)];
    v55 = *(sub_47A84() + 20);
    v56 = enum case for RoundedCornerStyle.continuous(_:);
    v57 = sub_47C24();
    (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
    *v54 = v52;
    *(v54 + 1) = v52;
    *&v54[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
    sub_E940(v15, v53, &qword_62310, &qword_4AD98);
    v58 = v100;
    sub_E940(v53, v100, &qword_62318, &qword_4ADA0);
    sub_6128(v58, v104, &qword_62318, &qword_4ADA0);
    swift_storeEnumTagMultiPayload();
    sub_D854();
    sub_DC4C();
    sub_47CC4();
    return sub_60C8(v58, &qword_62318, &qword_4ADA0);
  }
}

uint64_t sub_BACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v38 = a2;
  v5 = type metadata accessor for PollOptionList.PollOptionListView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8, v8);
  v9 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_54A4(&qword_62230, "v9");
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = v32 - v13;
  v35 = sub_54A4(&qword_62408, &qword_4AEC8);
  __chkstk_darwin(v35, v15);
  v17 = v32 - v16;
  v18 = sub_54A4(&qword_62400, &qword_4AEC0);
  v19 = *(v18 - 8);
  v36 = v18;
  v37 = v19;
  __chkstk_darwin(v18, v20);
  v33 = a1;
  v34 = v32 - v21;
  sub_48204();
  swift_getKeyPath();
  sub_48224();

  (*(v11 + 8))(v14, v10);
  v39 = v41;
  v40 = v42;
  v32[1] = swift_getKeyPath();
  sub_D5A4(a1, v9);
  v22 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v23 = swift_allocObject();
  sub_EA44(v9, v23 + v22, type metadata accessor for PollOptionList.PollOptionListView);
  *(v23 + ((v22 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  sub_54A4(&qword_62360, &qword_4AE68);
  sub_54A4(&qword_62430, &qword_4AED8);
  sub_D720();
  sub_DE80();
  sub_481E4();
  sub_D5A4(v33, v9);
  v24 = swift_allocObject();
  sub_EA44(v9, v24 + v22, type metadata accessor for PollOptionList.PollOptionListView);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_E808;
  *(v25 + 24) = v24;
  v26 = v35;
  v27 = &v17[*(v35 + 36)];
  *v27 = sub_E8C0;
  *(v27 + 1) = v25;
  sub_478C4();
  v28 = sub_DD44();
  v29 = v34;
  sub_48014();
  sub_60C8(v17, &qword_62408, &qword_4AEC8);
  sub_478C4();
  v41 = v26;
  *&v42 = v28;
  swift_getOpaqueTypeConformance2();
  v30 = v36;
  sub_47FA4();
  return (*(v37 + 8))(v29, v30);
}

void *sub_BF6C@<X0>(void *a2@<X8>)
{
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_D6AC();
  result = sub_481A4();
  *a2 = v4;
  a2[1] = v5;
  return result;
}

uint64_t sub_BFEC@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v38 = a2;
  v42 = a3;
  v6 = sub_54A4(&qword_62470, &qword_4AEF8);
  __chkstk_darwin(v6 - 8, v7);
  v9 = &v37 - v8;
  v39 = sub_54A4(&qword_62458, &qword_4AEF0);
  __chkstk_darwin(v39, v10);
  v12 = &v37 - v11;
  v13 = sub_54A4(&qword_624B8, &qword_4AF80);
  v40 = *(v13 - 8);
  v41 = v13;
  __chkstk_darwin(v13, v14);
  v16 = &v37 - v15;
  v17 = sub_54A4(&qword_62450, &qword_4AEE8);
  v18 = v17 - 8;
  __chkstk_darwin(v17, v19);
  v21 = &v37 - v20;
  v22 = sub_54A4(&qword_62440, &qword_4AEE0);
  v23 = v22 - 8;
  __chkstk_darwin(v22, v24);
  v26 = &v37 - v25;
  v27 = a1[3];
  v52 = a1[2];
  v53[0] = v27;
  *(v53 + 10) = *(a1 + 58);
  v28 = a1[1];
  v50 = *a1;
  v51 = v28;
  *v9 = sub_47C74();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v29 = sub_54A4(&qword_624C0, &qword_4AF88);
  sub_C418(v38, &v50, &v9[*(v29 + 44)], a4);
  v48 = v52;
  v49[0] = v53[0];
  *(v49 + 10) = *(v53 + 10);
  v46 = v50;
  v47 = v51;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_48164();
  *v55 = v45[0];
  *&v55[10] = *(v45 + 10);
  v54[0] = v43;
  v54[1] = v44;
  v30 = [*(*&v45[0] + 16) length];
  sub_E8EC(v54);
  LOBYTE(v30) = (v30 == 0) | ~v55[24];
  sub_E940(v9, v12, &qword_62470, &qword_4AEF8);
  v12[*(v39 + 36)] = v30 & 1;
  sub_478C4();
  sub_E0E4();
  sub_47FA4();
  sub_60C8(v12, &qword_62458, &qword_4AEF0);
  KeyPath = swift_getKeyPath();
  (*(v40 + 32))(v21, v16, v41);
  v32 = &v21[*(v18 + 44)];
  *v32 = KeyPath;
  *(v32 + 1) = 0;
  v32[16] = 0;
  sub_E940(v21, v26, &qword_62450, &qword_4AEE8);
  v33 = &v26[*(v23 + 44)];
  v33[32] = 0;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  *&v46 = sub_48074();
  v34 = sub_48154();
  v35 = v42;
  sub_E940(v26, v42, &qword_62440, &qword_4AEE0);
  result = sub_54A4(&qword_62430, &qword_4AED8);
  *(v35 + *(result + 36)) = v34;
  return result;
}

uint64_t sub_C418@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v141 = a3;
  v7 = sub_47884();
  v130 = *(v7 - 8);
  v131 = v7;
  v9 = __chkstk_darwin(v7, v8);
  v127 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v126 = &v114 - v12;
  v13 = sub_48304();
  v128 = *(v13 - 8);
  v129 = v13;
  __chkstk_darwin(v13, v14);
  v125 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_54A4(&qword_62220, &qword_4ACA0);
  __chkstk_darwin(v121, v16);
  v123 = &v114 - v17;
  v124 = sub_481D4();
  v122 = *(v124 - 8);
  __chkstk_darwin(v124, v18);
  *&v142 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_54A4(&qword_624D0, &qword_4AFA0);
  __chkstk_darwin(v115, v20);
  v119 = &v114 - v21;
  v118 = sub_54A4(&qword_624D8, &qword_4AFA8);
  __chkstk_darwin(v118, v22);
  v120 = &v114 - v23;
  v139 = sub_54A4(&qword_624E0, &qword_4AFB0);
  v137 = *(v139 - 8);
  v25 = __chkstk_darwin(v139, v24);
  v117 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25, v27);
  v116 = &v114 - v28;
  v29 = sub_54A4(&qword_624E8, &qword_4AFB8);
  v31 = __chkstk_darwin(v29 - 8, v30);
  v140 = &v114 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  *&v138 = &v114 - v34;
  v35 = _s18PollOptionCellViewVMa(0);
  __chkstk_darwin(v35, v36);
  v38 = &v114 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_54A4(&qword_624F0, &qword_4AFC0);
  __chkstk_darwin(v132, v39);
  v41 = &v114 - v40;
  v133 = sub_54A4(&qword_624F8, &qword_4AFC8);
  v43 = __chkstk_darwin(v133, v42);
  v135 = &v114 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __chkstk_darwin(v43, v45);
  v48 = &v114 - v47;
  __chkstk_darwin(v46, v49);
  v143 = &v114 - v50;
  v51 = sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v52 = *&v151[0];
  *&v38[v35[6]] = swift_getKeyPath();
  sub_54A4(&qword_62500, &qword_4B000);
  swift_storeEnumTagMultiPayload();
  *&v38[v35[7]] = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  v54 = swift_getKeyPath();
  v55 = *a2;
  *(v38 + 24) = a2[1];
  v56 = a2[3];
  *(v38 + 40) = a2[2];
  *(v38 + 56) = v56;
  *(v38 + 66) = *(a2 + 58);
  *v38 = v52;
  *(v38 + 8) = v55;
  v57 = &v38[v35[8]];
  *v57 = KeyPath;
  v57[8] = 0;
  v58 = &v38[v35[9]];
  *v58 = v54;
  v58[8] = 0;
  v59 = &v38[v35[10]];
  sub_6128(a2, v151, &qword_624C8, &unk_4AF90);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v60 = xmmword_64308;
  v151[6] = xmmword_64318;
  v151[7] = xmmword_64328;
  v61 = xmmword_64328;
  v151[8] = xmmword_64338;
  v62 = xmmword_642C8;
  v63 = xmmword_642D8;
  v151[2] = xmmword_642D8;
  v151[3] = xmmword_642E8;
  v64 = xmmword_642E8;
  v65 = xmmword_642F8;
  v151[4] = xmmword_642F8;
  v151[5] = xmmword_64308;
  v66 = xmmword_642B8;
  v151[0] = xmmword_642B8;
  v151[1] = xmmword_642C8;
  v59[6] = xmmword_64318;
  v59[7] = v61;
  v59[8] = xmmword_64338;
  v59[2] = v63;
  v59[3] = v64;
  v59[4] = v65;
  v59[5] = v60;
  *v59 = v66;
  v59[1] = v62;
  *&v38[v35[11]] = a4;
  sub_E9E8(v151, &v147);
  v134 = v51;
  v136 = a1;
  sub_481F4();
  v67 = v147;
  swift_getKeyPath();
  *&v147 = v67;
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  v68 = *(v67 + 176);

  if (v68 == 1)
  {
    sub_47C94();
  }

  else
  {
    sub_47C84();
  }

  sub_47C04();
  sub_47904();
  sub_EA44(v38, v41, _s18PollOptionCellViewVMa);
  v69 = &v41[*(v132 + 36)];
  v70 = v150[7];
  *v69 = v150[6];
  *(v69 + 1) = v70;
  *(v69 + 2) = v150[8];
  *&v147 = sub_48074();
  v71 = sub_48154();
  sub_E940(v41, v48, &qword_624F0, &qword_4AFC0);
  *&v48[*(v133 + 36)] = v71;
  sub_E940(v48, v143, &qword_624F8, &qword_4AFC8);
  v72 = a2[3];
  v149 = a2[2];
  v150[0] = v72;
  *(v150 + 10) = *(a2 + 58);
  v73 = a2[1];
  v147 = *a2;
  v148 = v73;
  sub_54A4(&qword_624C8, &unk_4AF90);
  sub_D6AC();
  sub_481A4();
  v75 = v145;
  v74 = v146;
  v76 = v136;
  sub_481F4();
  v77 = v144;
  swift_getKeyPath();
  v144 = v77;
  sub_475C4();

  swift_beginAccess();
  v78 = *(v77 + 200);

  v79 = *(v78 + 16);
  if (v79)
  {
    v80 = v78 + (v79 << 6);
    v82 = *(v80 - 32);
    v81 = *(v80 - 24);

    if (v75 == v82 && v74 == v81)
    {

      v83 = 1;
      v84 = v139;
      v85 = v138;
      goto LABEL_16;
    }

    v86 = sub_48874();

    v85 = v138;
    if (v86)
    {
      v83 = 1;
      v84 = v139;
      goto LABEL_16;
    }
  }

  else
  {

    v85 = v138;
  }

  sub_481C4();
  v87 = v76 + *(type metadata accessor for PollOptionList.PollOptionListView(0) + 36);
  v88 = *(v87 + 32);
  v89 = v126;
  sub_A9C4(v126);
  v91 = v130;
  v90 = v131;
  v92 = v127;
  (*(v130 + 104))(v127, enum case for ColorScheme.dark(_:), v131);
  v93 = sub_47874();
  v94 = *(v91 + 8);
  v94(v92, v90);
  v94(v89, v90);
  v95 = v128;
  v96 = &enum case for BlendMode.plusLighter(_:);
  if ((v93 & 1) == 0)
  {
    v96 = &enum case for BlendMode.plusDarker(_:);
  }

  v97 = v125;
  v98 = v129;
  (*(v128 + 104))(v125, *v96, v129);
  v99 = v123;
  (*(v95 + 32))(&v123[*(v121 + 36)], v97, v98);
  *v99 = v88;
  v100 = v119;
  sub_E940(v99, &v119[*(v115 + 36)], &qword_62220, &qword_4ACA0);
  (*(v122 + 32))(v100, v142, v124);

  sub_482A4();
  sub_47904();
  v101 = v120;
  sub_E940(v100, v120, &qword_624D0, &qword_4AFA0);
  v102 = (v101 + *(v118 + 36));
  v103 = v148;
  *v102 = v147;
  v102[1] = v103;
  v102[2] = v149;
  v142 = *(v87 + 40);
  v138 = *(v87 + 56);
  LOBYTE(v100) = sub_47E54();
  v104 = v117;
  sub_E940(v101, v117, &qword_624D8, &qword_4AFA8);
  v84 = v139;
  v105 = v104 + *(v139 + 36);
  *v105 = v100;
  *(v105 + 24) = v138;
  *(v105 + 8) = v142;
  *(v105 + 40) = 0;
  v106 = v104;
  v107 = v116;
  sub_E940(v106, v116, &qword_624E0, &qword_4AFB0);
  sub_E940(v107, v85, &qword_624E0, &qword_4AFB0);
  v83 = 0;
LABEL_16:
  (*(v137 + 56))(v85, v83, 1, v84);
  v108 = v143;
  v109 = v135;
  sub_6128(v143, v135, &qword_624F8, &qword_4AFC8);
  v110 = v140;
  sub_6128(v85, v140, &qword_624E8, &qword_4AFB8);
  v111 = v141;
  sub_6128(v109, v141, &qword_624F8, &qword_4AFC8);
  v112 = sub_54A4(&qword_62508, &qword_4B098);
  sub_6128(v110, v111 + *(v112 + 48), &qword_624E8, &qword_4AFB8);
  sub_60C8(v85, &qword_624E8, &qword_4AFB8);
  sub_60C8(v108, &qword_624F8, &qword_4AFC8);
  sub_60C8(v110, &qword_624E8, &qword_4AFB8);
  return sub_60C8(v109, &qword_624F8, &qword_4AFC8);
}

uint64_t sub_D180(uint64_t a1, uint64_t a2)
{
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  swift_getKeyPath();
  sub_D80C(&qword_62300, type metadata accessor for PollViewModel, &unk_4BEEC);
  sub_475C4();

  swift_getKeyPath();
  sub_475E4();

  swift_beginAccess();
  sub_54A4(&qword_62378, &qword_4AE70);
  sub_EAF0(&qword_62370, &qword_62378, &qword_4AE70, &protocol conformance descriptor for [A]);
  sub_483B4();
  swift_endAccess();
  sub_20450();
  swift_getKeyPath();
  sub_475D4();
}

uint64_t sub_D348@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = a1[3];
  v29 = a1[2];
  v30[0] = v5;
  *(v30 + 10) = *(a1 + 58);
  v6 = a1[1];
  v27 = *a1;
  v28 = v6;
  sub_54A4(&qword_62230, "v9");
  sub_481F4();
  v7 = *&v31[0];
  KeyPath = swift_getKeyPath();
  v9 = _s18PollOptionCellViewVMa(0);
  *(a2 + v9[6]) = KeyPath;
  sub_54A4(&qword_62500, &qword_4B000);
  swift_storeEnumTagMultiPayload();
  *(a2 + v9[7]) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  v10 = swift_getKeyPath();
  v11 = swift_getKeyPath();
  v12 = v27;
  *(a2 + 24) = v28;
  v13 = v30[0];
  *(a2 + 40) = v29;
  *(a2 + 56) = v13;
  *(a2 + 66) = *(v30 + 10);
  *a2 = v7;
  *(a2 + 8) = v12;
  v14 = a2 + v9[8];
  *v14 = v10;
  *(v14 + 8) = 0;
  v15 = a2 + v9[9];
  *v15 = v11;
  *(v15 + 8) = 0;
  v16 = v9[10];
  sub_6128(&v27, v31, &qword_624C8, &unk_4AF90);
  if (qword_61CE8 != -1)
  {
    swift_once();
  }

  v17 = xmmword_64308;
  v31[6] = xmmword_64318;
  v31[7] = xmmword_64328;
  v18 = xmmword_64328;
  v31[8] = xmmword_64338;
  v19 = xmmword_642C8;
  v20 = xmmword_642D8;
  v31[2] = xmmword_642D8;
  v31[3] = xmmword_642E8;
  v21 = xmmword_642E8;
  v22 = xmmword_642F8;
  v31[4] = xmmword_642F8;
  v31[5] = xmmword_64308;
  v23 = xmmword_642B8;
  v31[0] = xmmword_642B8;
  v31[1] = xmmword_642C8;
  v24 = (a2 + v16);
  v24[6] = xmmword_64318;
  v24[7] = v18;
  v24[8] = xmmword_64338;
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[5] = v17;
  *v24 = v23;
  v24[1] = v19;
  *(a2 + v9[11]) = a3;
  return sub_E9E8(v31, &v26);
}

uint64_t sub_D5A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PollOptionList.PollOptionListView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_D60C(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return v2;
}

uint64_t sub_D618@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = *(type metadata accessor for PollOptionList.PollOptionListView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_ADC4(v6, a1, a2);
}

unint64_t sub_D6AC()
{
  result = qword_62358;
  if (!qword_62358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62358);
  }

  return result;
}

unint64_t sub_D720()
{
  result = qword_62368;
  if (!qword_62368)
  {
    sub_A36C(&qword_62360, &qword_4AE68);
    sub_EAF0(&qword_62370, &qword_62378, &qword_4AE70, &protocol conformance descriptor for [A]);
    sub_EAF0(&qword_62380, &qword_62378, &qword_4AE70, &protocol conformance descriptor for [A]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62368);
  }

  return result;
}

uint64_t sub_D80C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_D854()
{
  result = qword_62398;
  if (!qword_62398)
  {
    sub_A36C(&qword_62348, &qword_4ADD0);
    sub_A36C(&qword_62340, &qword_4ADC8);
    sub_D948();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D8, &qword_623E0, &qword_4AE88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62398);
  }

  return result;
}

unint64_t sub_D948()
{
  result = qword_623A0;
  if (!qword_623A0)
  {
    sub_A36C(&qword_62340, &qword_4ADC8);
    sub_A36C(&qword_62338, &qword_4ADC0);
    sub_DA10();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623A0);
  }

  return result;
}

unint64_t sub_DA10()
{
  result = qword_623A8;
  if (!qword_623A8)
  {
    sub_A36C(&qword_62338, &qword_4ADC0);
    sub_A36C(&qword_62330, &qword_4ADB8);
    sub_DB04();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623A8);
  }

  return result;
}

unint64_t sub_DB04()
{
  result = qword_623B0;
  if (!qword_623B0)
  {
    sub_A36C(&qword_62330, &qword_4ADB8);
    sub_A36C(&qword_62328, &qword_4ADB0);
    sub_479D4();
    sub_EAF0(&qword_623B8, &qword_62328, &qword_4ADB0, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623C0, &qword_623C8, &qword_4AE80, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623B0);
  }

  return result;
}

unint64_t sub_DC4C()
{
  result = qword_623E8;
  if (!qword_623E8)
  {
    sub_A36C(&qword_62318, &qword_4ADA0);
    sub_EAF0(&qword_623F0, &qword_62310, &qword_4AD98, &protocol conformance descriptor for VStack<A>);
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_623E8);
  }

  return result;
}

unint64_t sub_DD44()
{
  result = qword_62410;
  if (!qword_62410)
  {
    sub_A36C(&qword_62408, &qword_4AEC8);
    sub_DDFC();
    sub_EAF0(&qword_624A8, &qword_624B0, &qword_4AF18, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62410);
  }

  return result;
}

unint64_t sub_DDFC()
{
  result = qword_62418;
  if (!qword_62418)
  {
    sub_A36C(&qword_62420, &qword_4AED0);
    sub_DE80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62418);
  }

  return result;
}

unint64_t sub_DE80()
{
  result = qword_62428;
  if (!qword_62428)
  {
    sub_A36C(&qword_62430, &qword_4AED8);
    sub_DF38();
    sub_EAF0(&qword_62498, &qword_624A0, &qword_4AF10, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62428);
  }

  return result;
}

unint64_t sub_DF38()
{
  result = qword_62438;
  if (!qword_62438)
  {
    sub_A36C(&qword_62440, &qword_4AEE0);
    sub_DFF0();
    sub_EAF0(&qword_62488, &qword_62490, &qword_4AF08, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62438);
  }

  return result;
}

unint64_t sub_DFF0()
{
  result = qword_62448;
  if (!qword_62448)
  {
    sub_A36C(&qword_62450, &qword_4AEE8);
    sub_A36C(&qword_62458, &qword_4AEF0);
    sub_E0E4();
    swift_getOpaqueTypeConformance2();
    sub_EAF0(&qword_623D8, &qword_623E0, &qword_4AE88, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62448);
  }

  return result;
}

unint64_t sub_E0E4()
{
  result = qword_62460;
  if (!qword_62460)
  {
    sub_A36C(&qword_62458, &qword_4AEF0);
    sub_EAF0(&qword_62468, &qword_62470, &qword_4AEF8, &protocol conformance descriptor for VStack<A>);
    sub_EAF0(&qword_62478, &qword_62480, &qword_4AF00, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62460);
  }

  return result;
}

uint64_t sub_E240(uint64_t a1)
{
  v2 = sub_47A04();
  __chkstk_darwin(v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_47AF4();
}

uint64_t sub_E308@<X0>(uint64_t a1@<X8>)
{
  result = sub_47AC4();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_E36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62348, &qword_4ADD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_E3DC()
{
  v1 = type metadata accessor for PollOptionList.PollOptionListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_54A4(&qword_62230, "v9");
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_47884();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_D60C(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_E5A4(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, __n128))
{
  v4 = *(type metadata accessor for PollOptionList.PollOptionListView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6.n128_u64[0] = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_E664()
{
  v1 = type metadata accessor for PollOptionList.PollOptionListView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_54A4(&qword_62230, "v9");
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[6];
  sub_54A4(&qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_47884();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  sub_D60C(*(v5 + v1[7]), *(v5 + v1[7] + 8));
  sub_D60C(*(v5 + v1[8]), *(v5 + v1[8] + 8));

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_E808(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PollOptionList.PollOptionListView(0);

  return sub_D180(a1, a2);
}

uint64_t sub_E888()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_E940(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_54A4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_EA44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_EAF0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_A36C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_EB44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 75) = *(a2 + 75);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_EB68(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 91))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_EBB0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 90) = 0;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 91) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 91) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_EC38@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_480E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 80))
  {
    (*(v4 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v3);

    v8 = sub_48104();
    (*(v4 + 8))(v7, v3);
    *&v61[34] = *&v51[32];
    *&v61[50] = *&v51[48];
    *&v61[66] = *&v51[64];
    *&v61[2] = *v51;
    LOBYTE(v39) = 1;
    LOBYTE(v33) = 0;
    v60 = v8;
    *v61 = 1;
    *&v61[82] = *&v51[80];
    *&v61[18] = *&v51[16];
    v61[90] = 0;

    sub_54A4(&qword_62530, &qword_4B140);
    sub_54A4(&qword_62528, &qword_4B138);
    sub_F1F8();
    sub_F27C();
    sub_47CC4();
  }

  else
  {
    v9 = *(v1 + 88);
    v10 = *(v1 + 89);
    v11 = *(v1 + 90);
    v30 = sub_38D20(*(v1 + 88), v10, v11);
    if (v9 == 1)
    {
      if (v10)
      {
        if (qword_61D58 != -1)
        {
          swift_once();
        }

        v12 = &qword_643F0;
      }

      else
      {
        if (qword_61D50 != -1)
        {
          swift_once();
        }

        v12 = &qword_643E8;
      }
    }

    else if (v11)
    {
      if (qword_61D68 != -1)
      {
        swift_once();
      }

      v12 = &qword_64400;
    }

    else
    {
      if (qword_61D38 != -1)
      {
        swift_once();
      }

      v12 = &qword_643D0;
    }

    v29 = *v12;

    sub_478A4();
    v13 = v54;
    v14 = v55;
    v15 = v56;
    v16 = v57;
    v17 = v58;
    v18 = v59;
    v19 = v30;

    v20 = sub_482A4();
    v22 = v21;
    v23 = sub_482A4();
    *&v33 = v13;
    *(&v33 + 1) = __PAIR64__(v15, v14);
    *&v34 = v16;
    *(&v34 + 1) = v17;
    *&v35 = v18;
    *(&v35 + 1) = v19;
    LOWORD(v36) = 256;
    *(&v36 + 1) = v20;
    *&v37 = v22;
    *(&v37 + 1) = v23;
    v38 = v24;
    *&v53[38] = v35;
    *&v53[54] = v36;
    *&v53[70] = v37;
    *&v53[6] = v33;
    *&v53[86] = v24;
    *&v53[22] = v34;
    v39 = v13;
    v40 = v14;
    v41 = v15;
    v42 = v16;
    v43 = v17;
    v44 = v18;
    v45 = v19;
    v46 = 256;
    v47 = v20;
    v48 = v22;
    v49 = v23;
    v50 = v24;
    sub_6128(&v33, &v60, &qword_62520, &qword_4B130);
    sub_60C8(&v39, &qword_62520, &qword_4B130);
    *v51 = v29;
    *&v51[8] = 256;
    *&v51[10] = *v53;
    *&v51[88] = *&v53[78];
    *&v51[26] = *&v53[16];
    *&v51[42] = *&v53[32];
    *&v51[58] = *&v53[48];
    *&v51[74] = *&v53[64];
    *&v51[104] = 256;
    *&v61[74] = *&v51[90];
    v60 = *v51;
    *v61 = *&v51[16];
    *&v61[48] = *&v51[64];
    *&v61[64] = *&v51[80];
    *&v61[16] = *&v51[32];
    *&v61[32] = *&v51[48];
    v52 = 1;
    v61[90] = 1;
    sub_6128(v51, v31, &qword_62528, &qword_4B138);
    sub_54A4(&qword_62530, &qword_4B140);
    sub_54A4(&qword_62528, &qword_4B138);
    sub_F1F8();
    sub_F27C();
    sub_47CC4();

    sub_60C8(v51, &qword_62528, &qword_4B138);
  }

  *&v61[64] = v32[0];
  *&v61[75] = *(v32 + 11);
  v60 = v31[0];
  *v61 = v31[1];
  *&v61[16] = v31[2];
  *&v61[32] = v31[3];
  v25 = *&v61[64];
  *(a1 + 64) = v31[4];
  *(a1 + 80) = v25;
  *(a1 + 91) = *&v61[75];
  v26 = *v61;
  *a1 = v60;
  *(a1 + 16) = v26;
  result = *&v61[32];
  *(a1 + 32) = *&v61[16];
  *(a1 + 48) = result;
  return result;
}

unint64_t sub_F1F8()
{
  result = qword_62538;
  if (!qword_62538)
  {
    sub_A36C(&qword_62530, &qword_4B140);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62538);
  }

  return result;
}

unint64_t sub_F27C()
{
  result = qword_62540;
  if (!qword_62540)
  {
    sub_A36C(&qword_62528, &qword_4B138);
    sub_F334();
    sub_EAF0(&qword_62570, &qword_62578, &qword_4B158, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62540);
  }

  return result;
}

unint64_t sub_F334()
{
  result = qword_62548;
  if (!qword_62548)
  {
    sub_A36C(&qword_62550, &qword_4B148);
    sub_EAF0(&qword_62558, &qword_62560, &qword_4B150, &protocol conformance descriptor for _ShapeView<A, B>);
    sub_EAF0(&qword_62568, &qword_62520, &qword_4B130, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62548);
  }

  return result;
}

unint64_t sub_F41C()
{
  result = qword_62580;
  if (!qword_62580)
  {
    sub_A36C(&qword_62588, &unk_4B160);
    sub_F1F8();
    sub_F27C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62580);
  }

  return result;
}

uint64_t sub_F4A8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

id sub_F554(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v19 = sub_47814();
    sub_5ED4(v19, qword_64360);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Empty handle";
    goto LABEL_19;
  }

  v41[1] = a2;
  v42 = a1;
  v3 = sub_FB7C(a1, a2);
  if (!v3)
  {
    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v24 = sub_47814();
    sub_5ED4(v24, qword_64360);
    v20 = sub_477F4();
    v21 = sub_48624();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_20;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "No Contact found for handle";
LABEL_19:
    _os_log_impl(&dword_0, v20, v21, v23, v22, 2u);

LABEL_20:

    return 0;
  }

  v43 = v3;
  result = [objc_opt_self() componentsForContact:v3];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() localizedStringFromPersonNameComponents:result style:1 options:0];

    v7 = sub_48414();
    v9 = v8;

    v44 = v7;
    v45 = v9;
    v10 = sub_47384();
    v11 = *(v10 - 8);
    v12 = *(v11 + 64);
    __chkstk_darwin(v10, v13);
    sub_47364();
    sub_10330();
    v14 = sub_48714();
    v16 = v15;
    v17 = *(v11 + 8);
    v17(v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

    v18 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v18 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {

      return v7;
    }

    v25 = objc_opt_self();
    v26 = v43;
    v27 = [v25 stringFromContact:v43 style:0];
    if (v27)
    {
      v28 = v27;
      v7 = sub_48414();
      v30 = v29;

      v44 = v7;
      v45 = v30;
      __chkstk_darwin(v31, v32);
      sub_47364();
      v33 = sub_48714();
      v35 = v34;
      v17(v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);

      v36 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v36 = v33 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {

        return v7;
      }
    }

    if (qword_61CF0 != -1)
    {
      swift_once();
    }

    v37 = sub_47814();
    sub_5ED4(v37, qword_64360);
    v38 = sub_477F4();
    v39 = sub_48624();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "No name found in Contact", v40, 2u);
    }

    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_FA3C(void *a1, void *a2)
{
  v5 = *(v2 + 16);
  v17[0] = 0;
  v6 = [v5 meContactIdentifiers:v17];
  v7 = v17[0];
  if (v6)
  {
    v8 = v6;
    v9 = sub_48544();
    v10 = v7;

    v17[0] = a1;
    v17[1] = a2;
    __chkstk_darwin(v11, v12);
    v16[2] = v17;
    v13 = sub_F4A8(sub_10384, v16, v9);
  }

  else
  {
    v14 = v17[0];
    sub_474A4();

    swift_willThrow();

    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_FB7C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(CNContact) init];
  sub_10330();
  if (sub_48724())
  {
    result = sub_FDD0(a1, a2);
    if (result >> 62)
    {
      v18 = result;
      v19 = sub_487E4();
      result = v18;
      if (!v19)
      {
        goto LABEL_24;
      }
    }

    else if (!*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_24;
    }

    if ((result & 0xC000000000000001) != 0)
    {
LABEL_20:
      v6 = sub_487A4();
      goto LABEL_12;
    }

    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_11:
      v6 = *(result + 32);
LABEL_12:
      v7 = v6;

      v8 = [v7 givenName];
      v9 = sub_48414();
      v11 = v10;

      v12 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v12 = v9 & 0xFFFFFFFFFFFFLL;
      }

      if (v12)
      {
        goto LABEL_18;
      }

      v13 = [v7 familyName];
      v14 = sub_48414();
      v16 = v15;

      v17 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v17 = v14 & 0xFFFFFFFFFFFFLL;
      }

      if (v17)
      {
LABEL_18:

        return v7;
      }

      else
      {
      }

      return v4;
    }

    __break(1u);
  }

  result = sub_FF34(a1, a2);
  if (!(result >> 62))
  {
    if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_9;
    }

LABEL_24:

    return v4;
  }

  v20 = result;
  v21 = sub_487E4();
  result = v20;
  if (!v21)
  {
    goto LABEL_24;
  }

LABEL_9:
  if ((result & 0xC000000000000001) != 0)
  {
    goto LABEL_20;
  }

  if (*(&dword_10 + (result & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_FDD0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = sub_483D4();
  v6 = [v4 predicateForContactsMatchingEmailAddress:v5];

  v7 = *(v2 + 16);
  sub_54A4(&qword_62670, &unk_4B1B0);
  v8 = sub_48534();
  v14 = 0;
  v9 = [v7 unifiedContactsMatchingPredicate:v6 keysToFetch:v8 error:&v14];

  v10 = v14;
  if (v9)
  {
    sub_102E4();
    a1 = sub_48544();
    v11 = v10;
  }

  else
  {
    v12 = v14;
    sub_474A4();

    swift_willThrow();
  }

  return a1;
}

void *sub_FF34(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = objc_allocWithZone(CNPhoneNumber);
  v5 = sub_483D4();
  v6 = [v4 initWithStringValue:v5];

  v7 = [v3 predicateForContactsMatchingPhoneNumber:v6];
  v8 = *(v2 + 16);
  sub_54A4(&qword_62670, &unk_4B1B0);
  v9 = sub_48534();
  v15 = 0;
  v10 = [v8 unifiedContactsMatchingPredicate:v7 keysToFetch:v9 error:&v15];

  v11 = v15;
  if (v10)
  {
    sub_102E4();
    v8 = sub_48544();
    v12 = v11;
  }

  else
  {
    v13 = v15;
    sub_474A4();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100C4()
{

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10128()
{
  *(v0 + 16) = [objc_allocWithZone(CNContactStore) init];
  sub_54A4(&qword_635C0, &unk_4AA88);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_4B170;
  *(v1 + 32) = CNContactEmailAddressesKey;
  *(v1 + 40) = CNContactPhoneNumbersKey;
  *(v1 + 48) = CNContactGivenNameKey;
  *(v1 + 56) = CNContactFamilyNameKey;
  *(v0 + 24) = v1;
  v2 = CNContactEmailAddressesKey;
  v3 = CNContactPhoneNumbersKey;
  v4 = CNContactGivenNameKey;
  v5 = CNContactFamilyNameKey;
  return v0;
}

uint64_t sub_101E4(void *a1)
{
  v2 = &selRef_senderAddress;
  v3 = [a1 senderAddress];
  v4 = sub_48414();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    goto LABEL_7;
  }

  v2 = &selRef_iMessageLoginID;
  v8 = [a1 iMessageLoginID];
  v9 = sub_48414();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    return 0;
  }

LABEL_7:
  v13 = [a1 *v2];
  v14 = sub_48414();

  return v14;
}

unint64_t sub_102E4()
{
  result = qword_62678;
  if (!qword_62678)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_62678);
  }

  return result;
}

unint64_t sub_10330()
{
  result = qword_62680;
  if (!qword_62680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62680);
  }

  return result;
}

uint64_t sub_10384(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_48874() & 1;
  }
}

__n128 sub_103DC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_103F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10438(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

void *sub_10490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    sub_2201C(0, v3, 0);
    v5 = (a3 + 64);
    do
    {
      v6 = *(v5 - 3);
      v16 = *(v5 - 4);
      v7 = *v5;
      if (*(v5 - 1))
      {
        v15 = *(v5 - 2);
        v8 = *(v5 - 1);
      }

      else
      {
        v8 = a2;

        v15 = a1;
      }

      v9 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];

      if (v9 >= v10 >> 1)
      {
        sub_2201C((v10 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v11 = &_swiftEmptyArrayStorage[6 * v9];
      v11[4] = v16;
      v11[5] = v6;
      v11[6] = v15;
      v11[7] = v8;
      v11[8] = v7;
      *(v11 + 72) = 0;
      v5 += 6;
      --v3;
    }

    while (v3);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_105C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_113D4(v5, v7) & 1;
}

uint64_t sub_1060C(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_11318(&v5, &v7) & 1;
}

uint64_t sub_10658@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_10664()
{
  v1 = 0x7461657263206F4ELL;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 64);
    v5 = _swiftEmptyArrayStorage;
    do
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(v4 - 4);
      v8 = *(v4 - 3);
      v10 = *(v4 - 2);

      sub_48794(20);

      if (v7)
      {
        v1 = v10;
        v11 = v7;
      }

      else
      {
        v11 = 0xEA0000000000726FLL;
      }

      v28._countAndFlagsBits = v1;
      v28._object = v11;
      sub_48484(v28);

      v29._countAndFlagsBits = 2108704;
      v29._object = 0xE300000000000000;
      sub_48484(v29);
      v30._countAndFlagsBits = v9;
      v30._object = v8;
      sub_48484(v30);
      v31._countAndFlagsBits = 8250;
      v31._object = 0xE200000000000000;
      sub_48484(v31);
      v12 = [*(v6 + 16) string];
      v13 = sub_48414();
      v15 = v14;

      v32._countAndFlagsBits = v13;
      v32._object = v15;
      sub_48484(v32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_10C50(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      v1 = 0x7461657263206F4ELL;
      if (v17 >= v16 >> 1)
      {
        v5 = sub_10C50((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      v18 = &v5[16 * v17];
      *(v18 + 4) = 0x3A726F7461657243;
      *(v18 + 5) = 0xE900000000000020;
      v4 += 6;
      --v3;
    }

    while (v3);
  }

  sub_54A4(&qword_62690, &qword_4B280);
  sub_10D5C();
  v19 = sub_483A4();
  v21 = v20;

  sub_48794(32);

  if (v27[4])
  {
    v1 = v27[3];
    v22 = v27[4];
  }

  else
  {
    v22 = 0xEA0000000000726FLL;
  }

  v33._countAndFlagsBits = v1;
  v33._object = v22;
  sub_48484(v33);

  v34._countAndFlagsBits = 0x203A656C7469540ALL;
  v23 = 0xE800000000000000;
  v34._object = 0xE800000000000000;
  sub_48484(v34);
  v24 = v27[1];
  if (v24)
  {
    v25 = *v27;
  }

  else
  {
    v25 = 0x656C746974206F4ELL;
  }

  if (v24)
  {
    v23 = v27[1];
  }

  v35._countAndFlagsBits = v25;
  v35._object = v23;
  sub_48484(v35);

  v36._countAndFlagsBits = 0x736E6F6974704F0ALL;
  v36._object = 0xE90000000000003ALL;
  sub_48484(v36);
  v37._countAndFlagsBits = v19;
  v37._object = v21;
  sub_48484(v37);

  return 0x3A726F7461657243;
}

uint64_t sub_109E8()
{
  sub_48794(20);

  if (v0[1]._object)
  {
    countAndFlagsBits = v0[1]._countAndFlagsBits;
    object = v0[1]._object;
  }

  else
  {
    object = 0xEA0000000000726FLL;
    countAndFlagsBits = 0x7461657263206F4ELL;
  }

  v8._countAndFlagsBits = countAndFlagsBits;
  v8._object = object;
  sub_48484(v8);

  v9._countAndFlagsBits = 2108704;
  v9._object = 0xE300000000000000;
  sub_48484(v9);
  sub_48484(*v0);
  v10._countAndFlagsBits = 8250;
  v10._object = 0xE200000000000000;
  sub_48484(v10);
  v3 = [*(v0[2]._countAndFlagsBits + 16) string];
  v4 = sub_48414();
  v6 = v5;

  v11._countAndFlagsBits = v4;
  v11._object = v6;
  sub_48484(v11);

  return 0x3A726F7461657243;
}

char *sub_10B44(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A8, &unk_4B290);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10C50(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626A0, &qword_4B288);
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

unint64_t sub_10D5C()
{
  result = qword_62698;
  if (!qword_62698)
  {
    sub_A36C(&qword_62690, &qword_4B280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62698);
  }

  return result;
}

void *sub_10DFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_54A4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
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

char *sub_10FD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626B8, &qword_4B2A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_110F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626D8, &qword_4B370);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_111F8(char *result, int64_t a2, char a3, char *a4)
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
    sub_54A4(&qword_626D0, &qword_4B368);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_11318(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_48874() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      goto LABEL_17;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_48874() & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v6)
  {
LABEL_17:
    v8 = 0;
    return v8 & 1;
  }

  if (![*(a1[4] + 16) isEqualToAttributedString:*(*(a2 + 32) + 16)])
  {
    goto LABEL_17;
  }

  v8 = *(a1 + 40) ^ *(a2 + 40) ^ 1;
  return v8 & 1;
}

uint64_t sub_113D4(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_48874() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if (sub_83AC(a1[2], a2[2]))
  {
    v7 = a1[4];
    v8 = a2[4];
    if (v7)
    {
      if (v8 && (a1[3] == a2[3] && v7 == v8 || (sub_48874() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_11484(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_11498(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_114E0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_11570()
{
  type metadata accessor for Localization();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  qword_64220 = result;
  return result;
}

uint64_t sub_115D8(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_54A4(&qword_63450, &unk_4C4C0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_116A8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_54A4(&qword_63450, &unk_4C4C0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t _s11EmptyCircleVMa(uint64_t a1)
{
  result = qword_627D0;
  if (!qword_627D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_117A4(uint64_t a1)
{
  type metadata accessor for PollViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_11864(319);
    if (v2 <= 0x3F)
    {
      sub_118BC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_11864(uint64_t a1)
{
  if (!qword_634E0)
  {
    sub_47884();
    v1 = sub_47894();
    if (!v2)
    {
      atomic_store(v1, &qword_634E0);
    }
  }
}

void sub_118BC()
{
  if (!qword_622A8)
  {
    v0 = sub_47894();
    if (!v1)
    {
      atomic_store(v0, &qword_622A8);
    }
  }
}

void sub_11928(uint64_t a1@<X8>)
{
  v3 = sub_54A4(&qword_62220, &qword_4ACA0);
  __chkstk_darwin(v3, v4);
  v6 = (&v34 - v5);
  v7 = *(v1 + 72);
  v8 = sub_11BF8();

  sub_478A4();
  v9 = v37;
  v10 = v38;
  v11 = v39;
  v12 = v40;
  v13 = v41;
  v14 = sub_482A4();
  v16 = v15;
  if (*(v1 + 89) == 1)
  {
    v34 = sub_48084();
    v17 = v8;
    v18 = v16;
    v19 = v14;
    v20 = v12;
    v21 = *(v3 + 36);
    v22 = enum case for BlendMode.destinationOut(_:);
    v23 = sub_48304();
    v24 = v6 + v21;
    v12 = v20;
    v14 = v19;
    v16 = v18;
    v8 = v17;
    (*(*(v23 - 8) + 104))(v24, v22, v23);
    *v6 = v34;
    sub_EAF0(&qword_62228, &qword_62220, &qword_4ACA0, &protocol conformance descriptor for _BlendModeShapeStyle<A>);
  }

  v25 = sub_47914();
  v26 = v7 * 0.5;
  v27 = sub_482A4();
  v29 = v28;
  v35 = 0;
  sub_482A4();
  sub_47904();
  *&v36[6] = v42;
  *&v36[22] = v43;
  *&v36[38] = v44;
  v30 = sub_482A4();
  v31 = *(v1 + 80);
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = 256;
  *(a1 + 24) = v26;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = v8;
  *(a1 + 80) = 256;
  *(a1 + 88) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = v27;
  *(a1 + 112) = v29;
  *(a1 + 120) = 0x3FF0000000000000;
  *(a1 + 128) = 0;
  *(a1 + 176) = *&v36[46];
  *(a1 + 184) = 0x4059000000000000;
  *(a1 + 162) = *&v36[32];
  v32 = *v36;
  *(a1 + 146) = *&v36[16];
  *(a1 + 130) = v32;
  *(a1 + 192) = v31;
  *(a1 + 200) = 256;
  *(a1 + 208) = v30;
  *(a1 + 216) = v33;
}

uint64_t sub_11BF8()
{
  v1 = sub_47BF4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1, v3);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(_s11EmptyCircleVMa(0) + 40);
  v7 = *v6;
  if (*(v6 + 8) == 1)
  {
    if ((v7 & 1) == 0)
    {
LABEL_3:
      if (qword_61D70 != -1)
      {
        swift_once();
      }

      v8 = &qword_64408;
      return *v8;
    }
  }

  else
  {

    sub_48634();
    v9 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();
    sub_EB40(v7, 0);
    (*(v2 + 8))(v5, v1);
    if (v11[15] != 1)
    {
      goto LABEL_3;
    }
  }

  if (qword_61D78 != -1)
  {
    swift_once();
  }

  v8 = &qword_64410;
  return *v8;
}

unint64_t sub_11DD4()
{
  result = qword_62820;
  if (!qword_62820)
  {
    sub_A36C(&qword_62828, &qword_4B3E8);
    sub_11E8C();
    sub_EAF0(&qword_62880, &qword_62888, &qword_4B418, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62820);
  }

  return result;
}

unint64_t sub_11E8C()
{
  result = qword_62830;
  if (!qword_62830)
  {
    sub_A36C(&qword_62838, &qword_4B3F0);
    sub_11F44();
    sub_EAF0(&qword_62870, &qword_62878, &qword_4B410, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62830);
  }

  return result;
}

unint64_t sub_11F44()
{
  result = qword_62840;
  if (!qword_62840)
  {
    sub_A36C(&qword_62848, &qword_4B3F8);
    sub_11FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62840);
  }

  return result;
}

unint64_t sub_11FD0()
{
  result = qword_62850;
  if (!qword_62850)
  {
    sub_A36C(&qword_62858, &qword_4B400);
    sub_EAF0(&qword_62860, &qword_62868, &qword_4B408, &protocol conformance descriptor for FillShapeView<A, B, C>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62850);
  }

  return result;
}

uint64_t sub_12088(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_120A8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

double sub_120F4()
{
  xmmword_64228 = 0uLL;
  result = 5.0;
  xmmword_64238 = xmmword_4B420;
  xmmword_64248 = 0x4018000000000000uLL;
  qword_64258 = 0;
  unk_64260 = 0;
  return result;
}

double sub_1211C(uint64_t a1)
{
  sub_48074();
  v1 = sub_47914();
  v2 = sub_480C4();
  xmmword_64270 = xmmword_4B460;
  qword_64280 = 0;
  unk_64288 = v1;
  *&xmmword_64290 = v2;
  result = 0.0;
  *(&xmmword_64290 + 8) = xmmword_4B470;
  unk_642A8 = xmmword_4B470;
  return result;
}

__n128 sub_121A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_121CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12214(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_12274(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_122A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_122E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1235C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v71 = a1;
  v69 = sub_47A84();
  __chkstk_darwin(v69, v2);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_54A4(&qword_62890, &qword_4B5C8);
  v7 = __chkstk_darwin(v5, v6);
  v9 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7, v10);
  v12 = &v63 - v11;
  v13 = sub_54A4(&qword_62898, &qword_4B5D0);
  __chkstk_darwin(v13, v14);
  v16 = &v63 - v15;
  v73 = sub_54A4(&qword_628A0, &qword_4B5D8);
  __chkstk_darwin(v73, v17);
  v74 = &v63 - v18;
  v68 = sub_54A4(&qword_628A8, &qword_4B5E0);
  __chkstk_darwin(v68, v19);
  v21 = &v63 - v20;
  v64 = sub_54A4(&qword_628B0, &qword_4B5E8);
  __chkstk_darwin(v64, v22);
  v66 = &v63 - v23;
  v65 = sub_54A4(&qword_628B8, &qword_4B5F0);
  __chkstk_darwin(v65, v24);
  v26 = &v63 - v25;
  v72 = sub_54A4(&qword_628C0, &qword_4B5F8);
  __chkstk_darwin(v72, v27);
  v67 = &v63 - v28;
  v29 = [objc_opt_self() currentDevice];
  v30 = [v29 userInterfaceIdiom];

  v70 = v13;
  if (v30 == &dword_4 + 2 && (*(v76 + 153) & 1) != 0)
  {
    v31 = *(v76 + 152);
    v32 = v76[18];
    v33 = sub_47E54();
    v34 = sub_54A4(&qword_628D0, &qword_4B608);
    v35 = *(*(v34 - 8) + 16);
    if (v31)
    {
      v35(v26, v71, v34);
      v36 = v66;
      v37 = &v26[*(v65 + 36)];
      *v37 = v32;
      v37[8] = v33;
      sub_6128(v26, v36, &qword_628B8, &qword_4B5F0);
      swift_storeEnumTagMultiPayload();
      sub_12EC0();
      sub_12FA4();

      v38 = v67;
      sub_47CC4();
      v39 = v26;
      v40 = &qword_628B8;
      v41 = &qword_4B5F0;
    }

    else
    {
      v35(v21, v71, v34);
      v56 = &v21[*(v65 + 36)];
      *v56 = v32;
      v56[8] = v33;
      v57 = *v76;
      v58 = &v21[*(v68 + 36)];
      v59 = *(v69 + 20);
      v60 = enum case for RoundedCornerStyle.continuous(_:);
      v61 = sub_47C24();
      (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
      *v58 = v57;
      *(v58 + 1) = v57;
      *&v58[*(sub_54A4(&qword_62390, &qword_4AE78) + 36)] = 256;
      sub_6128(v21, v66, &qword_628A8, &qword_4B5E0);
      swift_storeEnumTagMultiPayload();
      sub_12EC0();
      sub_12FA4();

      v38 = v67;
      sub_47CC4();
      v39 = v21;
      v40 = &qword_628A8;
      v41 = &qword_4B5E0;
    }

    sub_60C8(v39, v40, v41);
    sub_6128(v38, v74, &qword_628C0, &qword_4B5F8);
    swift_storeEnumTagMultiPayload();
    sub_12E34();
    sub_1305C();
    sub_47CC4();
    v53 = v38;
    v54 = &qword_628C0;
    v55 = &qword_4B5F8;
  }

  else
  {
    v42 = sub_482A4();
    v44 = v43;
    v45 = 0;
    if ((v76[19] & 1) == 0)
    {
      v45 = *v76;
    }

    v46 = &v16[*(v13 + 36)];
    v47 = *(v69 + 20);
    v48 = enum case for RoundedCornerStyle.continuous(_:);
    v49 = sub_47C24();
    (*(*(v49 - 8) + 104))(&v4[v47], v48, v49);
    *v4 = v45;
    *(v4 + 1) = v45;
    v50 = v76[18];
    sub_12D60(v4, v9);
    *&v9[*(v5 + 52)] = v50;
    *&v9[*(v5 + 56)] = 256;
    sub_12DC4(v9, v12);
    sub_12DC4(v12, v46);
    v51 = (v46 + *(sub_54A4(&qword_628C8, &qword_4B600) + 36));
    *v51 = v42;
    v51[1] = v44;
    v52 = sub_54A4(&qword_628D0, &qword_4B608);
    (*(*(v52 - 8) + 16))(v16, v71, v52);
    sub_6128(v16, v74, &qword_62898, &qword_4B5D0);
    swift_storeEnumTagMultiPayload();
    sub_12E34();
    sub_1305C();

    sub_47CC4();
    v53 = v16;
    v54 = &qword_62898;
    v55 = &qword_4B5D0;
  }

  return sub_60C8(v53, v54, v55);
}

double sub_12B20()
{
  sub_12B74(&v1);
  xmmword_64318 = v7;
  xmmword_64328 = v8;
  xmmword_64338 = v9;
  xmmword_642D8 = v3;
  xmmword_642E8 = v4;
  xmmword_642F8 = v5;
  xmmword_64308 = v6;
  result = *&v2;
  xmmword_642B8 = v1;
  xmmword_642C8 = v2;
  return result;
}

double sub_12B74@<D0>(uint64_t a1@<X8>)
{
  if (qword_61D40 != -1)
  {
    swift_once();
  }

  v2 = qword_643D8;

  sub_48074();
  v3 = sub_47914();
  *a1 = xmmword_4B4C0;
  *(a1 + 16) = xmmword_4B4D0;
  __asm { FMOV            V0.2D, #12.0 }

  *(a1 + 32) = _Q0;
  *(a1 + 48) = xmmword_4B470;
  *(a1 + 64) = xmmword_4B470;
  *(a1 + 80) = xmmword_4B4E0;
  *(a1 + 96) = 0x4062C00000000000;
  *(a1 + 104) = v2;
  *(a1 + 112) = v3;
  result = 0.0;
  *(a1 + 120) = xmmword_4B4F0;
  *(a1 + 136) = 0x4034000000000000;
  return result;
}

__n128 sub_12C50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_12C84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 154))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 104);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_12CCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 154) = 1;
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
      *(result + 104) = (a2 - 1);
      return result;
    }

    *(result + 154) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_12D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_47A84();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12DC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(&qword_62890, &qword_4B5C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_12E34()
{
  result = qword_628D8;
  if (!qword_628D8)
  {
    sub_A36C(&qword_628C0, &qword_4B5F8);
    sub_12EC0();
    sub_12FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_628D8);
  }

  return result;
}

unint64_t sub_12EC0()
{
  result = qword_628E0;
  if (!qword_628E0)
  {
    sub_A36C(&qword_628B8, &qword_4B5F0);
    sub_EAF0(&qword_628E8, &qword_628D0, &qword_4B608, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_EAF0(&qword_628F0, &qword_628F8, &qword_4B610, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_628E0);
  }

  return result;
}

unint64_t sub_12FA4()
{
  result = qword_62900;
  if (!qword_62900)
  {
    sub_A36C(&qword_628A8, &qword_4B5E0);
    sub_12EC0();
    sub_EAF0(&qword_623D0, &qword_62390, &qword_4AE78, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62900);
  }

  return result;
}

unint64_t sub_1305C()
{
  result = qword_62908;
  if (!qword_62908)
  {
    sub_A36C(&qword_62898, &qword_4B5D0);
    sub_EAF0(&qword_628E8, &qword_628D0, &qword_4B608, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_EAF0(&qword_62910, &qword_628C8, &qword_4B600, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62908);
  }

  return result;
}

unint64_t sub_13144()
{
  result = qword_62918;
  if (!qword_62918)
  {
    sub_A36C(&qword_62920, &qword_4B618);
    sub_12E34();
    sub_1305C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62918);
  }

  return result;
}

uint64_t sub_131E0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 sub_13204(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_13218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_13260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_132BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_13318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_13378(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

uint64_t sub_133C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1)
  {
    if (a2 == 1)
    {
      return 1;
    }
  }

  else if (a2 != 1)
  {
    if (a1)
    {
      if (a2)
      {

        v4 = sub_480F4();
        sub_13444(a2);
        if (v4)
        {
          return 1;
        }
      }
    }

    else if (!a2)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_13444(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_13454@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_47BF4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_54A4(&qword_62308, &qword_4AD90);
  __chkstk_darwin(v8, v9);
  v11 = &v16 - v10;
  v12 = type metadata accessor for BlendedColor(0);
  sub_6128(v1 + *(v12 + 28), v11, &qword_62308, &qword_4AD90);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_47884();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    sub_48634();
    v15 = sub_47E44();
    sub_477D4();

    sub_47BE4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t BlendedColor.init(color:lightSchemeBlendMode:darkSchemeBlendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for BlendedColor(0);
  v9 = v8[7];
  *(a4 + v9) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *a4 = a1;
  sub_E940(a2, a4 + v8[5], &qword_62928, &qword_4B780);
  return sub_E940(a3, a4 + v8[6], &qword_62928, &qword_4B780);
}

uint64_t type metadata accessor for BlendedColor(uint64_t a1)
{
  result = qword_62990;
  if (!qword_62990)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlendedColor.init(color:blendMode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for BlendedColor(0);
  sub_6128(a2, a3 + v6[5], &qword_62928, &qword_4B780);
  v7 = v6[7];
  *(a3 + v7) = swift_getKeyPath();
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *a3 = a1;
  return sub_E940(a2, a3 + v6[6], &qword_62928, &qword_4B780);
}

double BlendedColor.resolve(in:)@<D0>(void *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_47884();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v30 - v10;
  v12 = sub_54A4(&qword_62928, &qword_4B780);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v30 - v14;
  v16 = sub_48304();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *v1;
  sub_47AA4();
  (*(v4 + 32))(v8, v11, v3);
  v21 = (*(v4 + 88))(v8, v3);
  if (v21 == enum case for ColorScheme.light(_:))
  {
    v22 = *(type metadata accessor for BlendedColor(0) + 20);
LABEL_5:
    sub_6128(v2 + v22, v15, &qword_62928, &qword_4B780);
    goto LABEL_7;
  }

  v23 = v21;
  v24 = enum case for ColorScheme.dark(_:);
  v25 = type metadata accessor for BlendedColor(0);
  if (v23 == v24)
  {
    v22 = *(v25 + 24);
    goto LABEL_5;
  }

  sub_6128(v2 + *(v25 + 20), v15, &qword_62928, &qword_4B780);
  (*(v4 + 8))(v8, v3);
LABEL_7:
  v26 = *(v17 + 48);
  if (v26(v15, 1, v16) == 1)
  {
    (*(v17 + 104))(v20, enum case for BlendMode.normal(_:), v16);
    if (v26(v15, 1, v16) != 1)
    {
      sub_60C8(v15, &qword_62928, &qword_4B780);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  v27 = sub_54A4(&qword_62220, &qword_4ACA0);
  v28 = v31;
  (*(v17 + 32))(v31 + *(v27 + 36), v20, v16);
  *v28 = v30;

  return result;
}

double BlendedColor.body.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_47884();
  v4 = *(v3 - 8);
  v6 = __chkstk_darwin(v3, v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = &v31 - v10;
  v12 = sub_54A4(&qword_62928, &qword_4B780);
  __chkstk_darwin(v12 - 8, v13);
  v15 = &v31 - v14;
  v16 = sub_48304();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16, v18);
  v34 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_54A4(&qword_62930, &qword_4B788);
  __chkstk_darwin(v32, v20);
  v22 = &v31 - v21;
  v33 = *v1;
  sub_13454(v11);
  (*(v4 + 32))(v8, v11, v3);
  v23 = (*(v4 + 88))(v8, v3);
  if (v23 == enum case for ColorScheme.light(_:))
  {
    v24 = type metadata accessor for BlendedColor(0);
    sub_6128(v1 + *(v24 + 20), v15, &qword_62928, &qword_4B780);
  }

  else
  {
    v25 = v23;
    v31 = a1;
    v26 = enum case for ColorScheme.dark(_:);
    v27 = type metadata accessor for BlendedColor(0);
    if (v25 == v26)
    {
      sub_6128(v1 + *(v27 + 24), v15, &qword_62928, &qword_4B780);
    }

    else
    {
      sub_6128(v1 + *(v27 + 20), v15, &qword_62928, &qword_4B780);
      (*(v4 + 8))(v8, v3);
    }

    a1 = v31;
  }

  v28 = v34;
  v29 = *(v17 + 48);
  if (v29(v15, 1, v16) == 1)
  {
    (*(v17 + 104))(v28, enum case for BlendMode.normal(_:), v16);
    if (v29(v15, 1, v16) != 1)
    {
      sub_60C8(v15, &qword_62928, &qword_4B780);
    }
  }

  else
  {
    (*(v17 + 32))(v28, v15, v16);
  }

  (*(v17 + 32))(&v22[*(v32 + 36)], v28, v16);
  *v22 = v33;
  sub_E940(v22, a1, &qword_62930, &qword_4B788);

  return result;
}

uint64_t sub_1403C(uint64_t a1)
{
  v2 = sub_47884();
  __chkstk_darwin(v2, v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_47AB4();
}

uint64_t _s13MessagesPolls12BlendedColorV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_48304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_54A4(&qword_62928, &qword_4B780);
  v11 = __chkstk_darwin(v9 - 8, v10);
  v13 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v14);
  v16 = &v44[-v15];
  v17 = sub_54A4(&qword_629E0, &qword_4B878);
  v19 = __chkstk_darwin(v17, v18);
  v21 = &v44[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19, v22);
  v24 = &v44[-v23];
  if ((sub_48054() & 1) == 0)
  {
    goto LABEL_16;
  }

  v46 = v13;
  v47 = v8;
  v50 = v21;
  v25 = type metadata accessor for BlendedColor(0);
  v51 = v5;
  v48 = v25;
  v26 = *(v25 + 20);
  v27 = *(v17 + 48);
  sub_6128(a1 + v26, v24, &qword_62928, &qword_4B780);
  v49 = a2;
  v28 = a2 + v26;
  v29 = v51;
  sub_6128(v28, &v24[v27], &qword_62928, &qword_4B780);
  v30 = *(v29 + 48);
  if (v30(v24, 1, v4) == 1)
  {
    if (v30(&v24[v27], 1, v4) == 1)
    {
      sub_60C8(v24, &qword_62928, &qword_4B780);
      goto LABEL_9;
    }

LABEL_7:
    v31 = v24;
LABEL_15:
    sub_60C8(v31, &qword_629E0, &qword_4B878);
    goto LABEL_16;
  }

  sub_6128(v24, v16, &qword_62928, &qword_4B780);
  if (v30(&v24[v27], 1, v4) == 1)
  {
    (*(v29 + 8))(v16, v4);
    goto LABEL_7;
  }

  v32 = v47;
  (*(v29 + 32))(v47, &v24[v27], v4);
  sub_14AF8();
  v45 = sub_483C4();
  v33 = *(v29 + 8);
  v33(v32, v4);
  v33(v16, v4);
  sub_60C8(v24, &qword_62928, &qword_4B780);
  if ((v45 & 1) == 0)
  {
LABEL_16:
    v38 = 0;
    return v38 & 1;
  }

LABEL_9:
  v34 = *(v48 + 24);
  v35 = *(v17 + 48);
  v36 = a1 + v34;
  v37 = v50;
  sub_6128(v36, v50, &qword_62928, &qword_4B780);
  sub_6128(v49 + v34, v37 + v35, &qword_62928, &qword_4B780);
  if (v30(v37, 1, v4) != 1)
  {
    v39 = v46;
    sub_6128(v37, v46, &qword_62928, &qword_4B780);
    if (v30((v37 + v35), 1, v4) != 1)
    {
      v41 = v51;
      v42 = v47;
      (*(v51 + 32))(v47, v37 + v35, v4);
      sub_14AF8();
      v38 = sub_483C4();
      v43 = *(v41 + 8);
      v43(v42, v4);
      v43(v39, v4);
      sub_60C8(v37, &qword_62928, &qword_4B780);
      return v38 & 1;
    }

    (*(v51 + 8))(v39, v4);
    goto LABEL_14;
  }

  if (v30((v37 + v35), 1, v4) != 1)
  {
LABEL_14:
    v31 = v37;
    goto LABEL_15;
  }

  sub_60C8(v37, &qword_62928, &qword_4B780);
  v38 = 1;
  return v38 & 1;
}

uint64_t sub_14688(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_54A4(&qword_62928, &qword_4B780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_147D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_54A4(&qword_62928, &qword_4B780);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_54A4(&qword_63450, &unk_4C4C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_14914(uint64_t a1)
{
  sub_14A08(319, &unk_629A0, &type metadata accessor for BlendMode, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_14A08(319, &qword_634E0, &type metadata accessor for ColorScheme, &type metadata accessor for Environment);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_14A08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_14A74()
{
  result = qword_629D8;
  if (!qword_629D8)
  {
    sub_A36C(&qword_62930, &qword_4B788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_629D8);
  }

  return result;
}

unint64_t sub_14AF8()
{
  result = qword_629E8[0];
  if (!qword_629E8[0])
  {
    sub_48304();
    result = swift_getWitnessTable();
    atomic_store(result, qword_629E8);
  }

  return result;
}

uint64_t sub_14B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_14B98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_14BE0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_14C8C(double *a1, double (*a2)(void))
{
  v3 = *a1;
  v4 = a2();
  if (v3 > v4)
  {
    v4 = v3;
  }

  *a1 = v4;
}

uint64_t sub_14D4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v62 = a3;
  v5 = *(a1 + 16);
  v59 = *(v5 - 8);
  __chkstk_darwin(a1, a2);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_47A54();
  v61 = *(v44 - 8);
  __chkstk_darwin(v44, v8);
  v50 = v42 - v9;
  v10 = *(a1 + 24);
  v12 = type metadata accessor for HorizontalGeometryReader.WidthKey(255, v5, v10, v11);
  WitnessTable = swift_getWitnessTable();
  v51 = v12;
  v53 = WitnessTable;
  sub_47D94();
  sub_47A54();
  v14 = swift_getWitnessTable();
  v73 = &protocol witness table for Color;
  v74 = v14;
  v47 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  swift_getWitnessTable();
  v45 = sub_479B4();
  v46 = swift_getWitnessTable();
  v54 = sub_47CB4();
  v49 = sub_47A54();
  v60 = *(v49 - 8);
  __chkstk_darwin(v49, v15);
  v43 = v42 - v16;
  v52 = sub_157EC();
  v57 = sub_47D54();
  v56 = sub_47A54();
  v58 = *(v56 - 8);
  v18 = __chkstk_darwin(v56, v17);
  v48 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v20);
  v55 = v42 - v21;
  v22 = *(v3 + 8);
  v42[1] = *(v3 + 16);
  v75 = *(v3 + 24);
  v72 = *(v3 + 24);
  sub_54A4(qword_62A78, &qword_4B948);
  v23 = sub_48124();
  v22(v23, v71);
  v24 = v10;
  sub_47C14();
  v25 = v50;
  sub_48034();
  (*(v59 + 8))(v7, v5);
  v63 = v5;
  v64 = v24;
  sub_482A4();
  v69 = v24;
  v70 = &protocol witness table for _FlexFrameLayout;
  v26 = v44;
  v27 = swift_getWitnessTable();
  v28 = v43;
  sub_47F54();
  (*(v61 + 8))(v25, v26);
  v29 = swift_allocObject();
  *(v29 + 16) = v5;
  *(v29 + 24) = v24;
  v30 = *(v3 + 16);
  *(v29 + 32) = *v3;
  *(v29 + 48) = v30;
  *(v29 + 64) = *(v3 + 32);

  sub_158E0(&v75, &v72);
  v31 = swift_getWitnessTable();
  v67 = v27;
  v68 = v31;
  v32 = v49;
  v33 = swift_getWitnessTable();
  v34 = v48;
  sub_47FD4();

  (*(v60 + 8))(v28, v32);
  v35 = swift_getWitnessTable();
  v65 = v33;
  v66 = v35;
  v36 = v56;
  swift_getWitnessTable();
  v37 = v58;
  v38 = *(v58 + 16);
  v39 = v55;
  v38(v55, v34, v36);
  v40 = *(v37 + 8);
  v40(v34, v36);
  v38(v62, v39, v36);
  return (v40)(v39, v36);
}

uint64_t sub_15454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  type metadata accessor for HorizontalGeometryReader.WidthKey(255, a1, a2, v7);
  swift_getWitnessTable();
  sub_47D94();
  sub_47A54();
  v14 = &protocol witness table for Color;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  v12 = sub_479A4();
  v13 = v8;
  v9 = sub_479B4();
  swift_getWitnessTable();
  v10 = *(*(v9 - 8) + 16);
  v10(v16, &v12, v9);

  v12 = v16[0];
  v13 = v16[1];
  v10(a3, &v12, v9);
}

uint64_t sub_15618@<X0>(uint64_t a2@<X1>, void *a3@<X8>, uint64_t x2_0@<X2>)
{
  v14[0] = sub_48074();
  type metadata accessor for HorizontalGeometryReader.WidthKey(0, a2, x2_0, v7);
  sub_47964();
  swift_getWitnessTable();
  sub_47F64();

  v11[0] = v12;
  v11[1] = v13;
  sub_47D94();
  v8 = sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v9 = *(*(v8 - 8) + 16);
  v9(v14, v11, v8);

  v12 = v14[0];
  v13 = v14[1];
  v9(a3, &v12, v8);
}

unint64_t sub_157EC()
{
  result = qword_62A70;
  if (!qword_62A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_62A70);
  }

  return result;
}

uint64_t sub_15848()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_158E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_54A4(qword_62A78, &qword_4B948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_159A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_47A54();
  type metadata accessor for HorizontalGeometryReader.WidthKey(255, v2, v1, v3);
  swift_getWitnessTable();
  sub_47D94();
  sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_479B4();
  swift_getWitnessTable();
  sub_47CB4();
  sub_47A54();
  sub_157EC();
  sub_47D54();
  sub_47A54();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_15BE8(char a1, char a2)
{
  if (qword_4BCE8[a1] == qword_4BCE8[a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_48874();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

void sub_15C50()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = type metadata accessor for MessagesViewController(0);
  objc_msgSendSuper2(&v13, "viewDidLoad");
  v2 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  if (!*&v0[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel])
  {
    type metadata accessor for PollNetworking(0);
    v3 = swift_allocObject();
    sub_476F4();
    sub_1C308(&qword_62B88, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    sub_1C308(&qword_62B90, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    sub_47724();
    sub_476A4();
    sub_1C308(&qword_62B98, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    sub_1C308(&qword_62BA0, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    sub_47724();
    *(v3 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = 0;
    *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = v3;

    [v1 backgroundLuminance];
    v5 = v4;
    type metadata accessor for PollViewModel(0);
    swift_allocObject();
    v6 = v1;
    v7 = sub_22B54(v1, &off_5EB48, v5);

    *&v1[v2] = v7;

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v9);
    sub_1B304();
    sub_475B4();
  }

  v10 = [v1 view];
  if (v10)
  {
    v11 = v10;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor:v12];
  }

  else
  {
    __break(1u);
  }
}

id sub_15F90(char a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for MessagesViewController(0);
  result = objc_msgSendSuper2(&v9, "viewDidAppear:", a1 & 1);
  v5 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v6 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  if (v6)
  {
    if (*(v6 + 96) == 1)
    {
      *(v6 + 96) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath, v8);
      sub_1B304();

      sub_475B4();
    }

    if (*&v2[v5])
    {

      sub_1DCA8();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_1613C(uint64_t a1, uint64_t a2, void *a3)
{
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = 0;
  v6 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  v7 = type metadata accessor for ContentView(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel] = 0;
  *&v3[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = 0;
  if (a2)
  {
    v8 = sub_483D4();
  }

  else
  {
    v8 = 0;
  }

  v11.receiver = v3;
  v11.super_class = type metadata accessor for MessagesViewController(0);
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v8, a3);

  return v9;
}

id sub_162A0(void *a1)
{
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = 0;
  v3 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  v4 = type metadata accessor for ContentView(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel] = 0;
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for MessagesViewController(0);
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", a1);

  if (v5)
  {
  }

  return v5;
}

id sub_16460()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MessagesViewController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for MessagesViewController(uint64_t a1)
{
  result = qword_62B30;
  if (!qword_62B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_16568(uint64_t a1)
{
  sub_16608(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_16608(uint64_t a1)
{
  if (!qword_62B40)
  {
    type metadata accessor for ContentView(255);
    v1 = sub_486E4();
    if (!v2)
    {
      atomic_store(v1, &qword_62B40);
    }
  }
}

void sub_16660(void *a1)
{
  v2 = v1;
  v4 = sub_54A4(&qword_62B80, &qword_4BC40);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v89 - v6;
  v8 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  if (v8)
  {
    v9 = v8;
    v10 = [v9 view];
    if (!v10)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v11 = v10;
    [v10 removeFromSuperview];

    [v9 removeFromParentViewController];
  }

  v12 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v13 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  v94 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel;
  v92 = v7;
  v93 = a1;
  if (!v13)
  {
    type metadata accessor for PollNetworking(0);
    v14 = swift_allocObject();
    sub_476F4();
    sub_1C308(&qword_62B88, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    sub_1C308(&qword_62B90, &type metadata accessor for PollDefinition, &protocol conformance descriptor for PollDefinition);
    sub_47724();
    sub_476A4();
    sub_1C308(&qword_62B98, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    sub_1C308(&qword_62BA0, &type metadata accessor for PollResponse, &protocol conformance descriptor for PollResponse);
    sub_47724();
    *(v14 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = 0;
    *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking] = v14;

    [v2 backgroundLuminance];
    v16 = v15;
    type metadata accessor for PollViewModel(0);
    swift_allocObject();
    v17 = v2;
    v18 = sub_22B54(v2, &off_5EB48, v16);

    *&v2[v94] = v18;

    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath, v20);
    *(&v89 - 4) = v18;
    *(&v89 - 3) = v2;
    *(&v89 - 2) = &off_5EB28;
    *&v99 = v18;
    sub_1B304();
    sub_475B4();

    v12 = v94;
    v13 = *&v2[v94];
    if (!v13)
    {
      goto LABEL_55;
    }
  }

  if ([v2 presentationStyle] == &dword_4)
  {
    v21 = 1;
    if ((*(v13 + 98) & 1) == 0)
    {
LABEL_8:
      v22 = swift_getKeyPath();
      __chkstk_darwin(v22, v23);
      *(&v89 - 2) = v13;
      *(&v89 - 8) = v21;
      *&v99 = v13;
      sub_1B304();
      sub_475B4();

      v12 = v94;
      goto LABEL_11;
    }
  }

  else
  {
    v24 = [v2 performSendAnimationOnAppear];
    v21 = v24;
    if (v24 != *(v13 + 98))
    {
      goto LABEL_8;
    }
  }

  *(v13 + 98) = v21;
  sub_1D84C();

LABEL_11:
  v25 = *&v2[v12];
  if (!v25)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v26 = [v2 performSendAnimationOnAppear];
  v27 = v26;
  if (v26 == *(v25 + 97))
  {
    *(v25 + 97) = v26;
  }

  else
  {
    v28 = swift_getKeyPath();
    __chkstk_darwin(v28, v29);
    *(&v89 - 2) = v25;
    *(&v89 - 8) = v27;
    *&v99 = v25;
    sub_1B304();
    sub_475B4();

    v12 = v94;
  }

  v30 = *&v2[v12];
  if (!v30)
  {
    goto LABEL_50;
  }

  swift_getKeyPath();
  *&v99 = v30;
  sub_1B304();

  sub_475C4();

  v31 = *(v30 + 98);

  if (v31 == 1)
  {
    v32 = *&v2[v12];
    if (!v32)
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    swift_getKeyPath();
    *&v99 = v32;

    sub_475C4();

    v33 = *(v32 + 97);

    if ((v33 & 1) == 0)
    {
      v34 = *&v2[v12];
      if (!v34)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      swift_getKeyPath();
      *&v99 = v34;

      sub_475C4();

      swift_beginAccess();
      v35 = *(v34 + 200);
      v36 = *(v35 + 16);

      v37 = 0;
      v38 = -1;
      v39 = 64;
      while (1)
      {
        if (v38 - v36 == -1)
        {
          goto LABEL_26;
        }

        if (++v38 >= *(v35 + 16))
        {
          break;
        }

        v40 = v39 + 64;
        v41 = [*(*(v35 + v39) + 16) length] != 0;
        v39 = v40;
        v42 = __OFADD__(v37, v41);
        v37 += v41;
        if (v42)
        {
          __break(1u);
LABEL_26:

          [v2 _setSendingEnabled:v37 > 1];
          v12 = v94;
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_49;
    }
  }

LABEL_27:
  v43 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking;
  v44 = *&v2[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollNetworking];
  if (!v44)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v45 = *(v44 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation);
  v46 = v93;
  *(v44 + OBJC_IVAR____TtC13MessagesPolls14PollNetworking_conversation) = v93;
  v47 = v46;

  v48 = *&v2[v12];
  if (!v48)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  swift_getKeyPath();
  *&v99 = v48;
  swift_retain_n();
  sub_475C4();

  v49 = sub_101E4(v47);
  v51 = v50;

  sub_1D3BC(v49, v51);

  v52 = [v2 presentationStyle];
  v53 = [v47 selectedMessage];
  if (v53)
  {
    v54 = v53;
    if (v52 == &dword_4)
    {
      if (!*&v2[v43])
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v55 = sub_3F144(v54);

      if (!v55)
      {
        v86 = *&v2[v94];
        if (!v86)
        {
LABEL_60:
          __break(1u);
          return;
        }

        swift_getKeyPath();
        *&v99 = v86;
        swift_retain_n();
        sub_475C4();

        v88 = *(v86 + 80);
        v87 = *(v86 + 88);

        v99 = xmmword_4B9C0;
        *&v100 = _swiftEmptyArrayStorage;
        *(&v100 + 1) = v88;
        v101 = v87;
        sub_1CCAC(&v99);

        sub_17394();
        goto LABEL_44;
      }
    }
  }

  v56 = [v47 selectedMessage];
  if (v56)
  {
    v54 = v56;
    if (v52 == &dword_4)
    {
      if (!*&v2[v43])
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v57 = sub_3F144(v54);

      if (v57 > 0)
      {
        v93 = v57;
        v58 = *&v2[v94];
        if (!v58)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        swift_getKeyPath();
        *&v99 = v58;
        swift_retain_n();
        sub_475C4();

        v59 = *(v58 + 88);
        v94 = *(v58 + 80);
        v91 = v59;

        type metadata accessor for PollOptionText();
        v90 = swift_allocObject();
        *(v90 + 16) = [objc_allocWithZone(NSAttributedString) init];
        v60 = sub_47594();
        *&v89 = &v89;
        v61 = *(v60 - 8);
        __chkstk_darwin(v60, v62);
        v64 = &v89 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
        sub_47584();
        v65 = sub_47574();
        v67 = v66;
        (*(v61 + 8))(v64, v60);
        *&v99 = v65;
        *(&v99 + 1) = v67;
        v89 = xmmword_4B9C0;
        v100 = xmmword_4B9C0;
        v101 = v90;
        v102 = 0;
        v68 = sub_17AAC(&v99, v93);
        v95 = v89;
        v96 = v68;
        v97 = v94;
        v98 = v91;
        sub_1CCAC(&v95);

        sub_17394();
        v69 = [v47 selectedMessage];
        if (v69)
        {
          v70 = v69;
          v71 = v69;
          sub_17BDC(v70, v47);

          v72 = v92;
          sub_485C4();
          v73 = sub_485E4();
          (*(*(v73 - 8) + 56))(v72, 0, 1, v73);
          sub_485B4();
          v74 = v2;
          v75 = v47;
          v76 = sub_485A4();
          v77 = swift_allocObject();
          v77[2] = v76;
          v77[3] = &protocol witness table for MainActor;
          v77[4] = v74;
          v77[5] = v75;
          sub_39454(0, 0, v72, &unk_4BC88, v77);
        }

        goto LABEL_44;
      }
    }
  }

  sub_17394();
  v78 = [v47 selectedMessage];
  if (!v78)
  {
    return;
  }

  v79 = v78;
  v54 = v78;
  sub_17BDC(v79, v47);

  v80 = v92;
  sub_485C4();
  v81 = sub_485E4();
  (*(*(v81 - 8) + 56))(v80, 0, 1, v81);
  sub_485B4();
  v82 = v2;
  v83 = v47;
  v84 = sub_485A4();
  v85 = swift_allocObject();
  v85[2] = v84;
  v85[3] = &protocol witness table for MainActor;
  v85[4] = v82;
  v85[5] = v83;
  sub_39454(0, 0, v80, &unk_4BC78, v85);

LABEL_44:
}

void sub_17394()
{
  v1 = v0;
  v2 = sub_54A4(&qword_62BB8, &qword_4BCA8);
  v4 = __chkstk_darwin(v2 - 8, v3);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4, v7);
  v9 = &v75 - v8;
  v10 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_pollViewModel];
  KeyPath = swift_getKeyPath();
  v12 = type metadata accessor for ContentView(0);
  *&v9[*(v12 + 28)] = KeyPath;
  sub_54A4(&qword_62308, &qword_4AD90);
  swift_storeEnumTagMultiPayload();
  *v9 = v10;
  v13 = qword_61CD8;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = xmmword_64238;
  *(v9 + 8) = xmmword_64228;
  *(v9 + 24) = v14;
  v15 = *&qword_64258;
  *(v9 + 40) = xmmword_64248;
  *(v9 + 56) = v15;
  *(v9 + 9) = 0;
  v9[80] = 1;
  v16 = *(v12 - 8);
  (*(v16 + 56))(v9, 0, 1, v12);
  v17 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentView;
  swift_beginAccess();
  sub_1C700(v9, &v1[v17]);
  swift_endAccess();
  sub_6128(&v1[v17], v6, &qword_62BB8, &qword_4BCA8);
  if ((*(v16 + 48))(v6, 1, v12) == 1)
  {
    __break(1u);
    goto LABEL_31;
  }

  v18 = objc_allocWithZone(sub_54A4(&qword_62BC0, &qword_4BCB0));
  v19 = sub_47CA4();
  v20 = OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost;
  v21 = *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost];
  *&v1[OBJC_IVAR____TtC13MessagesPolls22MessagesViewController_contentHost] = v19;
  v22 = v19;

  [v1 addChildViewController:v22];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v24 = v23;
  v25 = *&v1[v20];
  if (!v25)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v26 = [v25 view];
  if (!v26)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v27 = v26;
  [v24 addSubview:v26];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v29 = v28;
  [v28 setBackgroundColor:0];

  v30 = *&v1[v20];
  if (!v30)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v31 = [v30 view];
  if (!v31)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v32 = v31;
  [v31 setBackgroundColor:0];

  v33 = *&v1[v20];
  if (!v33)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v34 = [v33 view];
  if (!v34)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v35 = v34;
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];

  v36 = *&v1[v20];
  if (!v36)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v37 = [v36 view];
  if (!v37)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v38 = v37;
  v39 = [v37 topAnchor];

  v40 = [v1 view];
  if (!v40)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v41 = v40;
  v42 = [v40 topAnchor];

  v43 = [v39 constraintEqualToAnchor:v42];
  [v43 setActive:1];

  v44 = *&v1[v20];
  if (!v44)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v45 = [v44 view];
  if (!v45)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v46 = v45;
  v47 = [v45 bottomAnchor];

  v48 = [v1 view];
  if (!v48)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v49 = v48;
  v50 = [v48 bottomAnchor];

  v51 = [v47 constraintEqualToAnchor:v50];
  [v51 setActive:1];

  v52 = *&v1[v20];
  if (!v52)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v53 = [v52 view];
  if (!v53)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v54 = v53;
  v55 = [v53 leadingAnchor];

  v56 = [v1 view];
  if (!v56)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v57 = v56;
  v58 = [v56 leadingAnchor];

  v59 = [v55 constraintEqualToAnchor:v58];
  [v59 setActive:1];

  v60 = *&v1[v20];
  if (!v60)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v61 = [v60 view];
  if (!v61)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v62 = v61;
  v63 = [v61 trailingAnchor];

  v64 = [v1 view];
  if (!v64)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v65 = v64;
  v66 = [v64 trailingAnchor];

  v67 = [v63 constraintEqualToAnchor:v66];
  [v67 setActive:1];

  v68 = *&v1[v20];
  if (!v68)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  [v68 didMoveToParentViewController:v1];
  v69 = *&v1[v20];
  if (!v69)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v70 = [v69 view];
  if (!v70)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v71 = v70;
  [v70 setContentMode:5];

  v72 = *&v1[v20];
  if (!v72)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v73 = [v72 view];
  if (v73)
  {
    v74 = v73;
    [v73 layoutIfNeeded];

    return;
  }

LABEL_55:
  __break(1u);
}