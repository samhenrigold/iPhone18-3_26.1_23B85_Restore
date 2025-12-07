BOOL sub_100C6CA10(uint64_t a1, BOOL a2)
{
  sub_10010FC20(&qword_1011BD4F0, &qword_100F10400);
  __chkstk_darwin();
  v4 = &v23 - v3;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58, &qword_100F0E5C0);
  __chkstk_darwin();
  v10 = &v23 - v9;
  v11 = type metadata accessor for Lyrics.Transliteration(0);
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v16 = Strong;
  v23 = v6;
  v17 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v16 + v17, v10, &qword_1011BBA58, &qword_100F0E5C0);
  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    sub_100C7B91C(v10, v14, type metadata accessor for Lyrics.Transliteration);
    v19 = Locale.Language.characterDirection.getter();

    v20 = type metadata accessor for Lyrics.Transliteration;
    v21 = v14;
LABEL_8:
    sub_100C7B560(v21, v20);
    return v19 == 2;
  }

  sub_1000095E8(v10, &qword_1011BBA58, &qword_100F0E5C0);
  v18 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v16 + v18, v4, &qword_1011BD4F0, &qword_100F10400);
  if ((*(v23 + 48))(v4, 1, v5) != 1)
  {
    sub_100C7B91C(v4, v8, type metadata accessor for Lyrics.Translation);
    v19 = Locale.Language.characterDirection.getter();

    v20 = type metadata accessor for Lyrics.Translation;
    v21 = v8;
    goto LABEL_8;
  }

  sub_1000095E8(v4, &qword_1011BD4F0, &qword_100F10400);
  return a2;
}

uint64_t sub_100C6CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a5;
  v34 = a2;
  sub_10010FC20(&qword_1011BD4F0, &qword_100F10400);
  __chkstk_darwin();
  v8 = &v32 - v7;
  v9 = type metadata accessor for Lyrics.Translation(0);
  v35 = *(v9 - 8);
  __chkstk_darwin();
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58, &qword_100F0E5C0);
  __chkstk_darwin();
  v13 = &v32 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v32 = a3;
  v33 = a4;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v19 + v20, v13, &qword_1011BBA58, &qword_100F0E5C0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100C7B91C(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v23 = *&v17[*(v14 + 28)];
    a4 = v33;
    if (*(v23 + 16) && (v24 = sub_10000F8B8(v34, v32), (v25 & 1) != 0))
    {
      a4 = *(*(v23 + 56) + 88 * v24);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v17;
    goto LABEL_18;
  }

  sub_1000095E8(v13, &qword_1011BBA58, &qword_100F0E5C0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v19 + v21, v8, &qword_1011BD4F0, &qword_100F10400);
  v22 = (*(v35 + 48))(v8, 1, v9);
  a4 = v33;
  if (v22 != 1)
  {
    sub_100C7B91C(v8, v11, type metadata accessor for Lyrics.Translation);
    v28 = *&v11[*(v9 + 32)];
    if (*(v28 + 16) && (v29 = sub_10000F8B8(v34, v32), (v30 & 1) != 0))
    {
      a4 = *(*(v28 + 56) + 88 * v29);
    }

    else
    {
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v11;
LABEL_18:
    sub_100C7B560(v27, v26);
    return a4;
  }

  sub_1000095E8(v8, &qword_1011BD4F0, &qword_100F10400);
LABEL_7:

  return a4;
}

uint64_t sub_100C6D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a2;
  sub_10010FC20(&qword_1011BD4F0, &qword_100F10400);
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = type metadata accessor for Lyrics.Translation(0);
  v36 = *(v8 - 8);
  __chkstk_darwin();
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58, &qword_100F0E5C0);
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = type metadata accessor for Lyrics.Transliteration(0);
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v18 = Strong;
  if (!a3)
  {

    goto LABEL_7;
  }

  v33 = a3;
  v34 = a4;
  v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v18 + v19, v12, &qword_1011BBA58, &qword_100F0E5C0);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    sub_100C7B91C(v12, v16, type metadata accessor for Lyrics.Transliteration);
    v22 = *&v16[*(v13 + 28)];
    v23 = v34;
    if (*(v22 + 16) && (v24 = sub_10000F8B8(v35, v33), (v25 & 1) != 0))
    {
      v21 = *(*(v22 + 56) + 88 * v24 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v23 + 16);
    }

    v26 = type metadata accessor for Lyrics.Transliteration;
    v27 = v16;
    goto LABEL_18;
  }

  sub_1000095E8(v12, &qword_1011BBA58, &qword_100F0E5C0);
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v18 + v20, v7, &qword_1011BD4F0, &qword_100F10400);
  if ((*(v36 + 48))(v7, 1, v8) != 1)
  {
    sub_100C7B91C(v7, v10, type metadata accessor for Lyrics.Translation);
    v28 = *&v10[*(v8 + 32)];
    v29 = v34;
    if (*(v28 + 16) && (v30 = sub_10000F8B8(v35, v33), (v31 & 1) != 0))
    {
      v21 = *(*(v28 + 56) + 88 * v30 + 16);
    }

    else
    {

      swift_beginAccess();
      v21 = *(v29 + 16);
    }

    v26 = type metadata accessor for Lyrics.Translation;
    v27 = v10;
LABEL_18:
    sub_100C7B560(v27, v26);
    return v21;
  }

  sub_1000095E8(v7, &qword_1011BD4F0, &qword_100F10400);
  a4 = v34;
LABEL_7:
  swift_beginAccess();
  v21 = *(a4 + 16);

  return v21;
}

double sub_100C6D6A0@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X3>, _OWORD *a5@<X8>)
{
  v55 = a2;
  sub_10010FC20(&qword_1011BD4F0, &qword_100F10400);
  __chkstk_darwin();
  v9 = &v51 - v8;
  v10 = type metadata accessor for Lyrics.Translation(0);
  v56 = *(v10 - 8);
  v57 = v10;
  __chkstk_darwin();
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA58, &qword_100F0E5C0);
  __chkstk_darwin();
  v13 = &v51 - v12;
  v14 = type metadata accessor for Lyrics.Transliteration(0);
  v15 = *(v14 - 8);
  __chkstk_darwin();
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v19 = Strong;
  if (!a3)
  {

LABEL_7:
    swift_beginAccess();
    v24 = a4[1];
    v25 = a4[2];
    goto LABEL_8;
  }

  v52 = a3;
  v53 = a5;
  v20 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_1000089F8(v19 + v20, v13, &qword_1011BBA58, &qword_100F0E5C0);
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    sub_100C7B91C(v13, v17, type metadata accessor for Lyrics.Transliteration);
    v27 = *&v17[*(v14 + 28)];
    if (*(v27 + 16) && (v28 = sub_10000F8B8(v55, v52), (v29 & 1) != 0))
    {
      v30 = *(v27 + 56) + 88 * v28;
      v31 = *(v30 + 72);
      v32 = *(v30 + 40);
      v33 = *(v30 + 56);
      v63 = *(v30 + 24);
      v64 = v32;
      v65 = v33;
      v66 = v31;
      sub_1000089F8(&v63, &v67, &qword_1011BBA40, &qword_100F0E5A0);

      a5 = v53;
      if (*(&v64 + 1))
      {
LABEL_15:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Transliteration;
        v37 = v17;
LABEL_23:
        sub_100C7B560(v37, v36);
        goto LABEL_24;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      a5 = v53;
    }

    swift_beginAccess();
    v34 = a4[2];
    v63 = a4[1];
    v64 = v34;
    v35 = a4[4];
    v65 = a4[3];
    v66 = v35;
    sub_1000089F8(&v63, v58, &qword_1011BBA40, &qword_100F0E5A0);
    sub_1000095E8(&v67, &qword_1011BBA40, &qword_100F0E5A0);
    goto LABEL_15;
  }

  sub_1000095E8(v13, &qword_1011BBA58, &qword_100F0E5C0);
  v21 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
  swift_beginAccess();
  sub_1000089F8(v19 + v21, v9, &qword_1011BD4F0, &qword_100F10400);
  v22 = v57;
  v23 = (*(v56 + 48))(v9, 1, v57);
  a5 = v53;
  if (v23 != 1)
  {
    v38 = v54;
    sub_100C7B91C(v9, v54, type metadata accessor for Lyrics.Translation);
    v39 = *(v38 + *(v22 + 32));
    if (*(v39 + 16) && (v40 = sub_10000F8B8(v55, v52), (v41 & 1) != 0))
    {
      v42 = *(v39 + 56) + 88 * v40;
      v43 = *(v42 + 72);
      v44 = *(v42 + 40);
      v45 = *(v42 + 56);
      v63 = *(v42 + 24);
      v64 = v44;
      v65 = v45;
      v66 = v43;
      sub_1000089F8(&v63, &v67, &qword_1011BBA40, &qword_100F0E5A0);

      if (*(&v64 + 1))
      {
LABEL_22:
        v59 = v63;
        v60 = v64;
        v61 = v65;
        v62 = v66;
        v36 = type metadata accessor for Lyrics.Translation;
        v37 = v38;
        goto LABEL_23;
      }

      v67 = v63;
      v68 = v64;
      v69 = v65;
      v70 = v66;
    }

    else
    {

      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
    }

    swift_beginAccess();
    v46 = a4[2];
    v63 = a4[1];
    v64 = v46;
    v47 = a4[4];
    v65 = a4[3];
    v66 = v47;
    sub_1000089F8(&v63, v58, &qword_1011BBA40, &qword_100F0E5A0);
    sub_1000095E8(&v67, &qword_1011BBA40, &qword_100F0E5A0);
    goto LABEL_22;
  }

  sub_1000095E8(v9, &qword_1011BD4F0, &qword_100F10400);
  swift_beginAccess();
  v24 = a4[1];
  v25 = a4[2];
LABEL_8:
  v67 = v24;
  v68 = v25;
  v26 = a4[4];
  v69 = a4[3];
  v70 = v26;
  sub_1000089F8(&v67, &v63, &qword_1011BBA40, &qword_100F0E5A0);
  v59 = v67;
  v60 = v68;
  v61 = v69;
  v62 = v70;
LABEL_24:
  v48 = v60;
  *a5 = v59;
  a5[1] = v48;
  result = *&v61;
  v50 = v62;
  a5[2] = v61;
  a5[3] = v50;
  return result;
}

void sub_100C6DCD4(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_100C70C94(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_1011BC130, &qword_100F0F060, type metadata accessor for Lyrics.TextLine);
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
  v8 = (v3[3] >> 1) - v3[2];
  type metadata accessor for Lyrics.TextLine(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100C6DE24(uint64_t a1)
{
  v2 = *(a1 + 16);
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

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(a1 + 16))
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

  v3 = sub_100064418(isUniquelyReferenced_nonNull_native, v11, 1, v3);
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
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void sub_100C6DF28(id a1@<X3>, void *a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X8>)
{
  if ([a1 type] == 2)
  {
    v9 = [a2 hasBackgroundVocal];
    v10 = &selRef_primaryVocalText;
    if (!v9)
    {
      v10 = &selRef_lyricsText;
    }

    v11 = [a2 *v10];
    v12 = [v11 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = sub_100C78C40(a2, a3, a4);
    v17 = [a2 backgroundVocals];
    if (!v17)
    {
      v22 = 0uLL;
      v23 = 0uLL;
      v24 = 0uLL;
      v25 = 0uLL;
      goto LABEL_8;
    }

    v18 = v17;

    sub_100C78FF4(v18, a3, a4, v30);
    v28 = v30[1];
    v29 = v30[0];
    v19 = v30[3];
    v27 = v30[2];
  }

  else
  {
    v20 = [a2 lyricsText];
    v18 = [v20 string];

    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v21;
    v19 = 0uLL;
    v29 = 0u;
    v16 = _swiftEmptyArrayStorage;
    v27 = 0u;
    v28 = 0u;
  }

  v26 = v19;

  v23 = v28;
  v22 = v29;
  v25 = v26;
  v24 = v27;
LABEL_8:
  *a5 = v13;
  *(a5 + 8) = v15;
  *(a5 + 16) = v16;
  *(a5 + 24) = v22;
  *(a5 + 40) = v23;
  *(a5 + 56) = v24;
  *(a5 + 72) = v25;
}

uint64_t sub_100C6E0F8()
{
  sub_10010FC20(&qword_1011BBA80, &qword_100F0E5E0);
  __chkstk_darwin();
  v1 = v17 - v0;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v3 = v17 - v2;
  Locale.Language.languageCode.getter();
  v4 = type metadata accessor for Locale.LanguageCode();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000095E8(v3, &qword_1011BBA50, &unk_100F0E5B0);
    return 0;
  }

  else
  {
    v6 = Locale.LanguageCode.identifier.getter();
    v8 = v7;
    (*(v5 + 8))(v3, v4);
    v9 = v6 == 26746 && v8 == 0xE200000000000000;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      Locale.Language.script.getter();
      v10 = type metadata accessor for Locale.Script();
      v11 = *(v10 - 8);
      if ((*(v11 + 48))(v1, 1, v10) == 1)
      {
        sub_1000095E8(v1, &qword_1011BBA80, &qword_100F0E5E0);
      }

      else
      {

        v12 = Locale.Script.identifier.getter();
        v14 = v13;
        (*(v11 + 8))(v1, v10);
        v17[0] = 2975866;
        v17[1] = 0xE300000000000000;
        v15._countAndFlagsBits = v12;
        v15._object = v14;
        String.append(_:)(v15);

        return v17[0];
      }
    }
  }

  return v6;
}

BOOL sub_100C6E398(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v4 = qword_100F0F158[a1];
  Hasher._combine(_:)(v4);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = qword_100F0F158[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_100C6E478(uint64_t a1, uint64_t a2)
{

  sub_10010FC20(&qword_1011BBAE0, &qword_100F0E5F8);
  return String.init<A>(describing:)();
}

uint64_t sub_100C6E4C0(uint64_t a1, void *a2, uint64_t (*a3)(void, __n128))
{
  v4 = a1 + *a2;
  swift_beginAccess();
  v5 = (a3)(0);
  if (!(*(*(v5 - 8) + 48))(v4, 1, v5))
  {
  }

  sub_10010FC20(&qword_1011BBAE0, &qword_100F0E5F8);
  return String.init<A>(describing:)();
}

double sub_100C6E594@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  *a2 = v4;
  a2[1] = v5;

  return result;
}

Swift::Void __swiftcall Lyrics.updateTransliterations()()
{
  sub_10010FC20(&qword_1011BBA58, &qword_100F0E5C0);
  __chkstk_darwin();
  v2 = &v10 - v1;
  if (qword_1011BB888 != -1)
  {
    swift_once();
  }

  if (sub_100C6E398(3, *(static LyricsOptionsManager.shared + 40)))
  {
    v3 = OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v3, v2, &qword_1011BBA58, &qword_100F0E5C0);
    v4 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10006B010(v2, v0 + v4, &qword_1011BBA58, &qword_100F0E5C0);
    swift_endAccess();
    v5 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v5, v2, &qword_1011BBA58, &qword_100F0E5C0);
  }

  else
  {
    v7 = OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration;
    swift_beginAccess();
    sub_1000089F8(v0 + v7, v2, &qword_1011BBA58, &qword_100F0E5C0);
    v8 = OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration;
    swift_beginAccess();
    sub_10006B010(v2, v0 + v8, &qword_1011BBA58, &qword_100F0E5C0);
    swift_endAccess();
    v9 = type metadata accessor for Lyrics.Transliteration(0);
    (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  }

  v6 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
  swift_beginAccess();
  sub_10006B010(v2, v0 + v6, &qword_1011BBA58, &qword_100F0E5C0);
  swift_endAccess();
}

void Lyrics.line(before:useOriginalLines:)(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (a1)
  {
    v6 = sub_100C6395C(*(v3 + 48));
    if (!v6[2])
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = *(v3 + 40);

    if (!v6[2])
    {
LABEL_6:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
LABEL_28:

      return;
    }
  }

  sub_100008FE4((v6 + 4), &v34);
  v8 = *(&v35 + 1);
  v7 = v36;
  sub_10000954C(&v34, *(&v35 + 1));
  v9 = (*(*(v7 + 8) + 8))(v8);
  sub_10000959C(&v34);
  if (v9 > a3)
  {
    goto LABEL_6;
  }

  v10 = v6[2];
  v27 = a2;
  if (!v10)
  {
    goto LABEL_13;
  }

  sub_100008FE4(&v6[5 * v10 - 1], &v34);
  sub_10010FC20(&qword_1011BBB08, &unk_100F100B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  if (!v6[2])
  {
    goto LABEL_34;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v11 = v6[2];
    if (v11)
    {
LABEL_12:
      v12 = v11 - 1;
      sub_10000959C(&v6[5 * v11 - 1]);
      v6[2] = v12;
LABEL_13:
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v13 = v6[2];
      if (!v13)
      {
LABEL_27:
        v26 = v35;
        *v27 = v34;
        *(v27 + 16) = v26;
        *(v27 + 32) = v36;
        goto LABEL_28;
      }

      v14 = 0;
      v15 = v13 - 1;
      v16 = v6 + 4;
      v17 = v13 - 1;
      while (1)
      {
        if (__OFSUB__(v17, v14))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v14 + (v17 - v14) / 2;
        if (__OFADD__(v14, (v17 - v14) / 2))
        {
          goto LABEL_30;
        }

        if ((v18 & 0x8000000000000000) != 0)
        {
          goto LABEL_31;
        }

        if (v18 >= v6[2])
        {
          goto LABEL_32;
        }

        sub_100008FE4(&v16[5 * v18], v31);
        v20 = v32;
        v19 = v33;
        sub_10000954C(v31, v32);
        v21 = (*(*(v19 + 8) + 8))(v20);
        v22 = v21;
        if (v18 >= v15)
        {
          break;
        }

        if (v18 + 1 >= v6[2])
        {
          goto LABEL_33;
        }

        sub_100008FE4(&v16[5 * v18 + 5], v28);
        v24 = v29;
        v23 = v30;
        sub_10000954C(v28, v29);
        v25 = (*(*(v23 + 8) + 8))(v24);
        sub_10000959C(v28);
        if (v22 > a3)
        {
          goto LABEL_16;
        }

        v14 = v18 + 1;
        if (v25 >= a3)
        {
LABEL_26:
          sub_1000095E8(&v34, &qword_1011BBB10, &unk_100F0E610);
          sub_100008FE4(v31, &v34);
          sub_10000959C(v31);
          goto LABEL_27;
        }

LABEL_17:
        sub_10000959C(v31);
        if (v17 < v14)
        {
          goto LABEL_27;
        }
      }

      if (v21 <= a3)
      {
        goto LABEL_26;
      }

LABEL_16:
      v17 = v18 - 1;
      goto LABEL_17;
    }
  }

  else
  {
LABEL_35:
    v6 = sub_100C7634C(v6);
    v11 = v6[2];
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void Lyrics.line(after:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_10000954C(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  v9 = *(v3 + 40);
  if (v8 >= *(v9 + 16))
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_11;
  }

  v10 = v9 + 40 * v8;
  sub_100008FE4(v10 + 32, v11);
  sub_10010FC20(&qword_1011BBB08, &unk_100F100B0);
  if (swift_dynamicCast())
  {

    goto LABEL_6;
  }

  if (v8 >= *(v9 + 16))
  {
    goto LABEL_12;
  }

  sub_100008FE4(v10 + 32, a2);
}

id sub_100C6ECA4()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_1011BBA30 = result;
  return result;
}

uint64_t sub_100C6ECDC()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_1011BBA38 = result;
  return result;
}

void sub_100C6ED1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
{

  v71._countAndFlagsBits = a3;
  v71._object = a4;
  _NSRange.init(range:in:)(a1, a2, a3, a4);
  v14 = 0;
  v15 = 0;
  v16 = _swiftEmptyArrayStorage;
  v69 = a6;
  while (1)
  {
LABEL_4:
    v19 = v14;
    __chkstk_darwin();
    swift_beginAccess();
    v20 = sub_10010FC20(&qword_1011BC1A0, &qword_100F0F0C0);
    Array.extractFirst(where:)(v20, &v72);
    swift_endAccess();
    v14 = v72;
    if (!v72)
    {
      if (*(v16 + 2))
      {
        v26 = 0.0;
        v28 = 0.0;
        if (v15)
        {
          [v15 startTime];
          v28 = v50;
        }

        if (v19)
        {
          [v19 endTime];
          v26 = v51;
        }

        v52 = *(v16 + 2);
        if (v52)
        {

          sub_100015C64(0, v52, 0);
          v53 = v16;
          v54 = (v16 + 56);
          do
          {
            v56 = *(v54 - 1);
            v55 = *v54;
            v58 = _swiftEmptyArrayStorage[2];
            v57 = _swiftEmptyArrayStorage[3];

            if (v58 >= v57 >> 1)
            {
              sub_100015C64((v57 > 1), v58 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v58 + 1;
            v59 = &_swiftEmptyArrayStorage[2 * v58];
            v59[4] = v56;
            v59[5] = v55;
            v54 += 7;
            --v52;
          }

          while (v52);
          v16 = v53;
        }

        else
        {
        }

        sub_10010FC20(&qword_1011BC1D8, &qword_100F0F1C0);
        sub_100020674(&qword_1011BC1E0, &qword_1011BC1D8, &qword_100F0F1C0, &protocol conformance descriptor for [A]);
        v30 = BidirectionalCollection<>.joined(separator:)();
        v34 = v60;

        swift_beginAccess();
        v33 = *a8;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a8 = v33;
        a7 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_34;
      }

LABEL_37:

      return;
    }

    if (!v15)
    {
      v21 = v14;
      v15 = v14;
    }

    v22 = v14;
    v23 = [v22 lyricsText];
    v24 = [v23 string];
    if (!v24)
    {
      break;
    }

    v18 = v24;

    v19 = v22;
    [v19 endTime];
    v26 = v25;
    [v19 startTime];
    v28 = v27;
    [v19 characterRange];
    v30 = v29;
    [v19 characterRange];
    v31._countAndFlagsBits = a6;
    v31._object = a7;
    location = _NSRange.convert(from:to:preserveLength:)(v31, v71, 0).location;
    if (v33)
    {

      v17 = v18;
      v18 = v19;
      goto LABEL_3;
    }

    v34 = location;
    v35 = [v18 length];
    if ((v35 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_39;
    }

    v36 = v35;
    if (v35)
    {
      v65 = v15;
      v37 = 0;
      v38 = (v26 - v28) / v30;
      v67 = v34;
      v68 = a7;
      while (1)
      {
        v39 = __OFADD__(v34, v37);
        v34 += v37;
        if (v39)
        {
          break;
        }

        [v19 startTime];
        v26 = v40;
        [v19 startTime];
        v28 = v41;
        v42 = v16;
        v43 = [v18 substringWithRange:{v37, 1}];
        v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v70 = v45;

        v46 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_100C70594(0, *(v42 + 2) + 1, 1, v42);
        }

        v30 = *(v46 + 2);
        v47 = *(v46 + 3);
        v48 = v46;
        if (v30 >= v47 >> 1)
        {
          v48 = sub_100C70594((v47 > 1), v30 + 1, 1, v46);
        }

        *(v48 + 2) = v30 + 1;
        v16 = v48;
        v49 = &v48[56 * v30];
        *(v49 + 4) = v38 * v37 + v26;
        *(v49 + 5) = v38 * (v37 + 1) + v28;
        *(v49 + 6) = v44;
        *(v49 + 7) = v70;
        *(v49 + 8) = v34;
        *(v49 + 72) = vdupq_n_s64(1uLL);
        ++v37;
        v34 = v67;
        a7 = v68;
        if (v37 == v36)
        {

          v15 = v65;
          a6 = v69;
          goto LABEL_4;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      v33 = sub_100C70470(0, *(v33 + 2) + 1, 1, v33);
      *a8 = v33;
LABEL_34:
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      if (v63 >= v62 >> 1)
      {
        v33 = sub_100C70470((v62 > 1), v63 + 1, 1, v33);
        *a8 = v33;
      }

      *(v33 + 2) = v63 + 1;
      v64 = &v33[56 * v63];
      *(v64 + 4) = v28;
      *(v64 + 5) = v26;
      *(v64 + 6) = v30;
      *(v64 + 7) = v34;
      *(v64 + 8) = v16;
      *(v64 + 9) = 0;
      v64[80] = 1;
      swift_endAccess();
      v15 = a7;
      goto LABEL_37;
    }

    v17 = v19;
    a6 = v69;
LABEL_3:
  }

  __break(1u);
}

double sub_100C6F31C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (qword_1011BB870 != -1)
  {
    swift_once();
  }

  v4 = qword_1011BBA30;
  v5 = String._bridgeToObjectiveC()();
  [v4 setString:v5];

  *a3 = NLTokenizer.tokens(for:)();

  return result;
}

BOOL sub_100C6F404(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v9 = *a1;
  [*a1 characterRange];
  v10._countAndFlagsBits = a2;
  v10._object = a3;
  v11._countAndFlagsBits = a4;
  v11._object = a5;
  v12 = _NSRange.convert(from:to:preserveLength:)(v10, v11, 0);
  if (!v13)
  {
    return _NSRange.intersects(_:)(v12);
  }

  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_1000060E4(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = _NSRange.description.getter();
    v21 = sub_1000109A8(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1000109A8(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_1000109A8(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_1000095E8(v24, &qword_1011BC1D0, qword_100F0F0F0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_100C6F6E0(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v39 = a1[4];
  v8 = *(v7 + 16);
  v9 = 0;
  if (!v8)
  {
    v11 = 0.0;
    v14 = 0;
LABEL_14:

    goto LABEL_15;
  }

  [*(v7 - 8 + 40 * v8) endTime];
  v11 = v10;
  if (!*(v7 + 16) || ([*(v7 + 32) startTime], v11 = v11 - v12, !*(v7 + 16)))
  {
    v14 = 0;
    goto LABEL_14;
  }

  [*(v7 + 32) startTime];
  v14 = v13;
  v15 = *(v7 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  [*(v7 - 8 + 40 * v15) endTime];
  v9 = v16;
  v17 = *(v7 + 16);
  if (!v17)
  {
    goto LABEL_14;
  }

  v36 = a2;
  v37 = v5;
  v38 = a3;

  sub_100C713E0(0, v17, 0);
  v18 = (v7 + 64);
  do
  {
    v19 = *(v18 - 3);
    v20 = *(v18 - 2);
    v21 = *(v18 - 1);
    v40 = *v18;
    v22 = *(v18 - 4);

    [v22 startTime];
    v24 = v23;
    [v22 endTime];
    v26 = v25;

    v28 = _swiftEmptyArrayStorage[2];
    v27 = _swiftEmptyArrayStorage[3];
    if (v28 >= v27 >> 1)
    {
      sub_100C713E0((v27 > 1), v28 + 1, 1);
    }

    v18 += 5;
    _swiftEmptyArrayStorage[2] = v28 + 1;
    v29 = &_swiftEmptyArrayStorage[7 * v28];
    v29[4] = v24;
    v29[5] = v26;
    v29[6] = v19;
    v29[7] = v20;
    v29[8] = v21;
    v29[9] = v40;
    v29[10] = v39;
    --v17;
  }

  while (v17);
  a3 = v38;
  v5 = v37;
  a2 = v36;
LABEL_15:
  v30 = 1;
  v31 = 0.0;
  if ((a2 & 1) != 0 && v11 > 1.0 && v39 <= 7)
  {
    v33 = 2.0;
    if (v11 <= 2.0)
    {
      v33 = v11;
    }

    v34 = v33 + -1.0;
    v31 = 0.0;
    if (v11 < 1.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = v34;
    }

    if (v35 > 0.0)
    {
      v30 = 0;
      v31 = v35;
    }
  }

  *a3 = v14;
  *(a3 + 8) = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  *(a3 + 32) = _swiftEmptyArrayStorage;
  *(a3 + 40) = v31;
  *(a3 + 48) = v30;
}

uint64_t sub_100C6F968(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_1011BBA48, &qword_100F0E5A8);

  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_1011BD4F0, &qword_100F10400);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_1011BBA58, &qword_100F0E5C0);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_1011BD4F0, &qword_100F10400);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_1011BBA58, &qword_100F0E5C0);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_1011BBA58, &qword_100F0E5C0);
  sub_1000095E8(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_1011BBA58, &qword_100F0E5C0);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_100C76A18(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    AnyHashable.init<A>(_:)();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_100C73FE8(v6, 0xD000000000000017, 0x8000000100E69F60, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    AnyHashable.init<A>(_:)();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_100C73FE8(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_1000089F8(a1, v48, &qword_1011BD990, &qword_100F10740);
  if (v49)
  {
    sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v47 type];
      if (v7)
      {
        v8 = v7;
        v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_42;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v12 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_45;
        }
      }

      else if (v6)
      {
        goto LABEL_42;
      }

      v13 = [v1 name];
      if (v13)
      {
        v14 = v13;
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = [v47 name];
      if (v18)
      {
        v19 = v18;
        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;

        if (v17)
        {
          if (!v22)
          {
            goto LABEL_42;
          }

          if (v15 == v20 && v17 == v22)
          {
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v23 & 1) == 0)
            {
              goto LABEL_49;
            }
          }
        }

        else if (v22)
        {
          goto LABEL_45;
        }
      }

      else if (v17)
      {
        goto LABEL_42;
      }

      v24 = [v1 artistID];
      if (v24)
      {
        v25 = v24;
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = [v47 artistID];
      if (!v29)
      {
        if (v28)
        {
          goto LABEL_42;
        }

        goto LABEL_47;
      }

      v30 = v29;
      v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v32;

      if (v28)
      {
        if (!v33)
        {
          goto LABEL_42;
        }

        if (v26 == v31 && v28 == v33)
        {

          goto LABEL_47;
        }

        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          v42 = [v47 identifier];
          if (v42)
          {
            v43 = v42;
            v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v46 = v45;

            if (!v39)
            {

              if (!v46)
              {
                v40 = 1;
                return v40 & 1;
              }

              goto LABEL_43;
            }

            if (v46)
            {
              if (v37 != v44 || v39 != v46)
              {
                v40 = _stringCompareWithSmolCheck(_:_:expecting:)();

                return v40 & 1;
              }

              goto LABEL_61;
            }
          }

          else if (!v39)
          {
LABEL_61:

            v40 = 1;
            return v40 & 1;
          }

LABEL_42:

LABEL_43:

          goto LABEL_50;
        }

LABEL_49:

        goto LABEL_50;
      }

      if (!v33)
      {
        goto LABEL_47;
      }

LABEL_45:
    }
  }

  else
  {
    sub_1000095E8(v48, &qword_1011BD990, &qword_100F10740);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_100C70214()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.lyrics);
  sub_1000060E4(v0, static Logger.lyrics);
  return Logger.init(subsystem:category:)();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100C70330(void (*a1)(uint64_t *__return_ptr))
{
  a1(v3);
  v1 = sub_100C7B768(v3[1]);

  return v1;
}

char *sub_100C70398(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_100015C64(result, v5, 0);
  }

  return result;
}

uint64_t sub_100C70410()
{
  sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

char *sub_100C70470(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC090, &qword_100F0EFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C70594(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC1A8, &qword_100F0F0C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100C706BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BC1B0, &qword_100F0F0D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BC1B8, &qword_100F0F0D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100C70804(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BC1C0, &qword_100F0F0E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BC1C8, &qword_100F0F0E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C7094C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0F8, &qword_100F0F028);
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

char *sub_100C70A58(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0E8, &qword_100F0F018);
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

void *sub_100C70B4C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BC110, &qword_100F0F040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BBB08, &unk_100F100B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100C70C94(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10010FC20(a5, a6);
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

void *sub_100C70E70(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BBAB0, &qword_100F0E5E8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BC128, &qword_100F0F058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C70FA4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0A8, &qword_100F0F570);
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

char *sub_100C710A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC098, &qword_100F0EFC8);
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

void sub_100C711DC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1000109A8(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

char *sub_100C71238(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC170, &qword_100F0F0A0);
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

_BYTE **sub_100C7132C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_100C7133C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_100C7135C(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *sub_100C71380(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C71460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C713A0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C71650(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100C713C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C71774(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C713E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C718BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71400(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C719E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71420(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C71AE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100C71440(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100C71BEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100C71460(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10010FC20(&qword_1011BB9F0, &qword_100F0EFB0);
  v10 = *(sub_10010FC20(&qword_1011BB9E8, &unk_100F0E340) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10010FC20(&qword_1011BB9E8, &unk_100F0E340) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100C71650(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC090, &qword_100F0EFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100C71774(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10010FC20(&qword_1011BC110, &qword_100F0F040);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10010FC20(&qword_1011BBB08, &unk_100F100B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C718BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC1A8, &qword_100F0F0C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100C719E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0B0, &qword_100F0EFE0);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100C71AE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC0D0, &qword_100F0F000);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_100C71BEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10010FC20(&qword_1011BC070, &qword_100F0EF90);
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

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

uint64_t sub_100C71CF0(double *a1)
{
  Hasher.init(_seed:)();
  Lyrics.Word.hash(into:)(v4);
  v2 = Hasher._finalize()();

  return sub_100C71D5C(a1, v2);
}

uint64_t sub_100C71D5C(double *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a1;
  v7 = ~v4;
  v8 = *a1;
  v9 = *(v2 + 48);
  v30 = v2 + 64;
  v28 = v9;
  v29 = ~v4;
  while (1)
  {
    v10 = v9 + 56 * v5;
    if (*v10 != v8 || *(v10 + 8) != v6[1])
    {
      goto LABEL_4;
    }

    result = *(v10 + 16);
    v12 = *(v10 + 32);
    v13 = *(v10 + 40);
    v27 = *(v10 + 48);
    if (result != *(v6 + 2) || *(v10 + 24) != *(v6 + 3))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v15 = *(v6 + 4);
    v16 = *(v12 + 16);
    if (v16 != *(v15 + 16))
    {
      goto LABEL_4;
    }

    if (v16 && v12 != v15)
    {
      break;
    }

LABEL_18:
    if (v27)
    {
      if (v6[6])
      {
        return v5;
      }
    }

    else if ((v6[6] & 1) == 0 && v13 == v6[5])
    {
      return v5;
    }

LABEL_4:
    v5 = (v5 + 1) & v7;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v18 = (v12 + 80);
  v19 = v15 + 40;
  while (v16)
  {
    if (*(v18 - 6) != *(v19 - 8) || *(v18 - 5) != *v19)
    {
      goto LABEL_4;
    }

    result = *(v18 - 4);
    v21 = *(v18 - 2);
    v22 = *(v18 - 1);
    v23 = *v18;
    v24 = *(v19 + 24);
    v25 = *(v19 + 32);
    v26 = *(v19 + 40);
    if (result != *(v19 + 8) || *(v18 - 3) != *(v19 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v9 = v28;
      v7 = v29;
      v3 = v30;
      v6 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (v21 != v24 || v22 != v25 || *&v23 != v26)
    {
      goto LABEL_4;
    }

    v18 += 7;
    v19 += 56;
    if (!--v16)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

void sub_100C71F4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC148, &qword_100F0F078);
  v46 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v45 = v5;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + 88 * v23);
      if (v46)
      {
        v48 = *v28;
        v47 = *(v28 + 1);
        v29 = *(v28 + 5);
        v51 = *(v28 + 3);
        v52 = v29;
        v30 = *(v28 + 7);
        v31 = *(v28 + 9);
      }

      else
      {
        v32 = *(v28 + 1);
        *v50 = *v28;
        *&v50[16] = v32;
        v34 = *(v28 + 3);
        v33 = *(v28 + 4);
        v35 = v28[10];
        *&v50[32] = *(v28 + 2);
        *&v50[80] = v35;
        *&v50[48] = v34;
        *&v50[64] = v33;
        v48 = *v50;
        v47 = *&v50[8];

        sub_100C7CC04(v50, v49);
        v51 = *&v50[24];
        v52 = *&v50[40];
        v30 = *&v50[56];
        v31 = *&v50[72];
      }

      v53 = v30;
      v54 = v31;
      Hasher.init(_seed:)();
      String.hash(into:)();
      v36 = Hasher._finalize()();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 88 * v15;
      *(v17 + 8) = v47;
      v18 = v52;
      *(v17 + 24) = v51;
      *(v17 + 40) = v18;
      v19 = v54;
      *(v17 + 56) = v53;
      *v17 = v48;
      *(v17 + 72) = v19;
      ++*(v7 + 16);
      v5 = v45;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero(v9, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100C722AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_10010FC20(&qword_1011BC150, &qword_100F0F080);
  v40 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v37 = v2;
    v38 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v39 + 72);
      v27 = v22 + v26 * v21;
      if (v40)
      {
        sub_100C7B91C(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_100C7B4F8(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      sub_100C7B91C(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Transliteration);
      ++*(v8 + 16);
      v6 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v6 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_100C72624(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_10010FC20(&qword_1011BC138, &qword_100F0F068);
  v40 = v4;
  v7 = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v37 = v2;
    v38 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = v7 + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = *(v6 + 56);
      v23 = (*(v6 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v39 + 72);
      v27 = v22 + v26 * v21;
      if (v40)
      {
        sub_100C7B91C(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_100C7B4F8(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v28 = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      sub_100C7B91C(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Translation);
      ++*(v8 + 16);
      v6 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v6 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v3 = v8;
}

void sub_100C7299C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC100, &qword_100F0F030);
  v39 = v4;
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
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v5 + 56) + 40 * v23;
      if (v39)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v42 = *(v27 + 32);
        v40 = v28;
        v41 = v29;
      }

      else
      {
        sub_1000160F8(v27, &v40);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      v30 = Hasher._finalize()();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v25;
      v16[1] = v26;
      v17 = *(v7 + 56) + 40 * v15;
      v18 = v40;
      v19 = v41;
      *(v17 + 32) = v42;
      *v17 = v18;
      *(v17 + 16) = v19;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100C72C6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC088, &qword_100F0EFB8);
  v53 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v49 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v50 = v12;
    v51 = v6;
    v52 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v58 = (v11 - 1) & v11;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(v5 + 48) + 56 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v57 = *(v21 + 40);
      v56 = *(v21 + 48);
      v55 = *(v20 + 8 * v19);
      if ((v53 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v22 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      Hasher._combine(_:)(*&v27);
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      Hasher._combine(_:)(*&v28);
      v54 = v24;
      String.hash(into:)();
      v59 = v26;
      v29 = *(v26 + 16);
      Hasher._combine(_:)(v29);
      if (v29)
      {
        v30 = (v26 + 80);
        do
        {
          v31 = *(v30 - 6);
          v32 = *(v30 - 5);
          v33 = *(v30 - 2);
          v34 = *(v30 - 1);
          v36 = *v30;
          v30 += 7;
          v35 = *&v36;
          if (v31 == 0.0)
          {
            v31 = 0.0;
          }

          Hasher._combine(_:)(*&v31);
          if (v32 == 0.0)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = v32;
          }

          Hasher._combine(_:)(*&v37);

          String.hash(into:)();
          Hasher._combine(_:)(v33);
          Hasher._combine(_:)(v34);
          Hasher._combine(_:)(v35);

          --v29;
        }

        while (v29);
      }

      if (v56)
      {
        Hasher._combine(_:)(0);
        v7 = v51;
        v5 = v52;
        v38 = v57;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v38 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v57;
        }

        else
        {
          v39 = 0;
        }

        Hasher._combine(_:)(v39);
        v7 = v51;
        v5 = v52;
      }

      v40 = Hasher._finalize()();
      v41 = -1 << *(v7 + 32);
      v42 = v40 & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v13 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        v11 = v58;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v13 + 8 * v43);
          if (v47 != -1)
          {
            v14 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v42) & ~*(v13 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
      v11 = v58;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v54;
      *(v15 + 24) = v25;
      *(v15 + 32) = v59;
      *(v15 + 40) = v38;
      *(v15 + 48) = v56;
      *(*(v7 + 56) + 8 * v14) = v55;
      ++*(v7 + 16);
      v12 = v50;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v18 = v49[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v58 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v53 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_53;
    }

    v48 = 1 << *(v5 + 32);
    v3 = v2;
    if (v48 >= 64)
    {
      bzero(v49, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v49 = -1 << v48;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
}

void sub_100C73094(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0B8, &qword_100F0EFE8);
  v55 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v50 = v2;
    v51 = (v5 + 64);
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 64);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 64;
    v52 = v12;
    v53 = v6;
    v54 = v5;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v59 = (v11 - 1) & v11;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(v5 + 48) + 56 * v19;
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      v25 = *(v21 + 24);
      v26 = *(v21 + 32);
      v58 = *(v21 + 40);
      v57 = *(v21 + 48);
      v27 = *(v20 + 8 * v19);
      if ((v55 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      if (v22 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v22;
      }

      Hasher._combine(_:)(*&v28);
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      Hasher._combine(_:)(*&v29);
      v56 = v24;
      String.hash(into:)();
      v60 = v26;
      v30 = *(v26 + 16);
      Hasher._combine(_:)(v30);
      if (v30)
      {
        v31 = (v26 + 80);
        do
        {
          v32 = *(v31 - 6);
          v33 = *(v31 - 5);
          v34 = *(v31 - 2);
          v35 = *(v31 - 1);
          v37 = *v31;
          v31 += 7;
          v36 = *&v37;
          if (v32 == 0.0)
          {
            v32 = 0.0;
          }

          Hasher._combine(_:)(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          Hasher._combine(_:)(*&v38);

          String.hash(into:)();
          Hasher._combine(_:)(v34);
          Hasher._combine(_:)(v35);
          Hasher._combine(_:)(v36);

          --v30;
        }

        while (v30);
      }

      if (v57)
      {
        Hasher._combine(_:)(0);
        v7 = v53;
        v39 = v58;
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        v39 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v58;
        }

        else
        {
          v40 = 0;
        }

        Hasher._combine(_:)(v40);
        v7 = v53;
      }

      v41 = Hasher._finalize()();
      v42 = -1 << *(v7 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v5 = v54;
      if (((-1 << v43) & ~*(v13 + 8 * (v43 >> 6))) == 0)
      {
        v45 = 0;
        v46 = (63 - v42) >> 6;
        v11 = v59;
        while (++v44 != v46 || (v45 & 1) == 0)
        {
          v47 = v44 == v46;
          if (v44 == v46)
          {
            v44 = 0;
          }

          v45 |= v47;
          v48 = *(v13 + 8 * v44);
          if (v48 != -1)
          {
            v14 = __clz(__rbit64(~v48)) + (v44 << 6);
            goto LABEL_7;
          }
        }

LABEL_55:
        __break(1u);
        return;
      }

      v14 = __clz(__rbit64((-1 << v43) & ~*(v13 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
      v11 = v59;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v7 + 48) + 56 * v14;
      *v15 = v22;
      *(v15 + 8) = v23;
      *(v15 + 16) = v56;
      *(v15 + 24) = v25;
      *(v15 + 32) = v60;
      *(v15 + 40) = v39;
      *(v15 + 48) = v57;
      *(*(v7 + 56) + 8 * v14) = v27;
      ++*(v7 + 16);
      v12 = v52;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_55;
      }

      if (v8 >= v12)
      {
        break;
      }

      v18 = v51[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v59 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v55 & 1) == 0)
    {

      v3 = v50;
      goto LABEL_53;
    }

    v49 = 1 << *(v5 + 32);
    v3 = v50;
    if (v49 >= 64)
    {
      bzero(v51, ((v49 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v51 = -1 << v49;
    }

    *(v5 + 16) = 0;
  }

LABEL_53:
  *v3 = v7;
}

void sub_100C734C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0C8, &qword_100F0EFF8);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      v32 = v22[1];
      v33 = *v22;
      if ((v4 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      v23 = Hasher._finalize()();
      v24 = -1 << *(v7 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 32 * v15);
      *v16 = v33;
      v16[1] = v32;
      ++*(v7 + 16);
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100C73758(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC0C0, &qword_100F0EFF0);
  v31 = v4;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v22 = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_100C739F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_10010FC20(&qword_1011BC078, &qword_100F0EF98);
  v35 = v4;
  v6 = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v33 = v2;
    v34 = v5;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_100016270(v22, v36);
      }

      else
      {
        sub_10000DD18(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      sub_100016270(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_100C73CC0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F8B8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      sub_100C7D060(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100C748E8();
    goto LABEL_7;
  }

  sub_100C722AC(v15, a4 & 1);
  v21 = sub_10000F8B8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100C745DC(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

void sub_100C73E54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_10000F8B8(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Translation(0);
      sub_100C7D060(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_100C74B40();
    goto LABEL_7;
  }

  sub_100C72624(v15, a4 & 1);
  v21 = sub_10000F8B8(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_100C745DC(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

void sub_100C73FE8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10000F8B8(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100C7299C(v16, a4 & 1);
      v11 = sub_10000F8B8(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_100C74D98();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_10040DF5C(a1, v22);
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  v24 = v21[7] + 40 * v11;
  v25 = *a1;
  v26 = a1[1];
  *(v24 + 32) = *(a1 + 4);
  *v24 = v25;
  *(v24 + 16) = v26;
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v28;
}

unint64_t sub_100C74178(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_100C71CF0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100C72C6C(v14, a3 & 1);
      result = sub_100C71CF0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_100C74F4C();
      result = v17;
    }
  }

  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a1;
    return result;
  }

  v21 = *a2;
  v28 = *(a2 + 1);
  v20 = v28;
  v27 = *(a2 + 4);
  v19[(result >> 6) + 8] |= 1 << result;
  v22 = v19[6] + 56 * result;
  v23 = *(a2 + 2);
  *(v22 + 16) = v20;
  *(v22 + 32) = v23;
  *(v22 + 48) = *(a2 + 48);
  *v22 = v21;
  *(v19[7] + 8 * result) = a1;
  v24 = v19[2];
  v13 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v13)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v19[2] = v25;
  sub_100118E9C(&v28, v26);
  return sub_1000089F8(&v27, v26, &qword_1011BC0A0, &unk_100F0EFD0);
}

void sub_100C742F4(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_100C71CF0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_100C73094(v14, a3 & 1);
      v9 = sub_100C71CF0(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_100C750DC();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v21 = *a2;
    v28 = *(a2 + 1);
    v20 = v28;
    v27 = *(a2 + 4);
    v19[(v9 >> 6) + 8] |= 1 << v9;
    v22 = v19[6] + 56 * v9;
    v23 = *(a2 + 2);
    *(v22 + 16) = v20;
    *(v22 + 32) = v23;
    *(v22 + 48) = *(a2 + 48);
    *v22 = v21;
    *(v19[7] + 8 * v9) = a1;
    v24 = v19[2];
    v13 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v13)
    {
      v19[2] = v25;
      sub_100118E9C(&v28, v26);
      sub_1000089F8(&v27, v26, &qword_1011BC0A0, &unk_100F0EFD0);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_100C7449C(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002B5A68(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100C75548();
      v8 = v16;
      goto LABEL_8;
    }

    sub_100C739F0(v13, a3 & 1);
    v8 = sub_1002B5A68(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_2(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_10000959C(v19);

    return sub_100016270(a1, v19);
  }

  else
  {
    sub_1006C7BCC(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_100C745DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100C7B91C(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

unint64_t sub_100C74688(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  v7 = (a3[7] + 32 * result);
  *v7 = a4;
  v7[1] = a5;
  v7[2] = a6;
  v7[3] = a7;
  v8 = a3[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v10;
  }

  return result;
}

unint64_t sub_100C746D4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

void sub_100C74718()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC148, &qword_100F0F078);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;

      sub_100C7CC04(&v33, v32);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void sub_100C748E8()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BC150, &qword_100F0F080);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_100C7B4F8(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Transliteration);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_100C7B91C(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Transliteration);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_100C74B40()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BC138, &qword_100F0F068);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v28 = v1;
    v6 = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v7 + 8 * v8)
    {
      memmove(v6, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = *(v3 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_14:
        v19 = v16 | (v9 << 6);
        v20 = 16 * v19;
        v21 = (*(v3 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v29;
        v25 = *(v30 + 72) * v19;
        sub_100C7B4F8(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Translation);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_100C7B91C(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Translation);
      }

      while (v14);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v15)
      {

        v1 = v28;
        v5 = v31;
        goto LABEL_18;
      }

      v18 = *(v7 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

void sub_100C74D98()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC100, &qword_100F0F030);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 40 * v17;
        sub_1000160F8(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
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

void sub_100C74F4C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC088, &qword_100F0EFB8);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void sub_100C750DC()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0B8, &qword_100F0EFE8);
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
        v18 = v17 << 6;
        v17 *= 8;
        v19 = v18 - v17;
        v20 = *(v2 + 48) + v19;
        v22 = *(v20 + 16);
        v21 = *(v20 + 24);
        v24 = *(v20 + 32);
        v23 = *(v20 + 40);
        v25 = *(v20 + 48);
        v26 = *(*(v2 + 56) + v17);
        v27 = *(v4 + 48) + v19;
        *v27 = *v20;
        *(v27 + 16) = v22;
        *(v27 + 24) = v21;
        *(v27 + 32) = v24;
        *(v27 + 40) = v23;
        *(v27 + 48) = v25;
        *(*(v4 + 56) + v17) = v26;
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

void sub_100C7527C()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0C8, &qword_100F0EFF8);
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
        v18 = (*(v2 + 56) + 32 * v17);
        v19 = *v18;
        v20 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 32 * v17);
        *v21 = v19;
        v21[1] = v20;
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

void sub_100C753E4()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC0C0, &qword_100F0EFF0);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void sub_100C75548()
{
  v1 = v0;
  sub_10010FC20(&qword_1011BC078, &qword_100F0EF98);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000DD18(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_100016270(v20, (*(v4 + 56) + 32 * v17));
        v19 = v18;
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

Swift::Int sub_100C756C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (_stringCompareWithSmolCheck(_:_:expecting:)())
          {
            break;
          }

          _HashTable.BucketIterator.advance()();
          result = _HashTable.BucketIterator.currentValue.getter();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

Swift::Int sub_100C75814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = Hasher._finalize()();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = _HashTable.BucketIterator.currentValue.getter();
  if (v17)
  {
    return v16;
  }

  v18 = *v38;
  while (1)
  {
    v20 = a2 + 56 * v16;
    if (*v20 != v18 || *(v20 + 8) != *(v38 + 8))
    {
      goto LABEL_6;
    }

    result = *(v20 + 16);
    v21 = *(v20 + 32);
    v22 = *(v20 + 40);
    v36 = *(v20 + 48);
    if (result != *(v38 + 16) || *(v20 + 24) != *(v38 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v24 = *(v38 + 32);
    v25 = *(v21 + 16);
    if (v25 != *(v24 + 16))
    {
      goto LABEL_6;
    }

    if (v25 && v21 != v24)
    {
      break;
    }

LABEL_20:
    if (v36)
    {
      if (*(v38 + 48))
      {
        return v16;
      }
    }

    else if ((*(v38 + 48) & 1) == 0 && v22 == *(v38 + 40))
    {
      return v16;
    }

LABEL_6:
    _HashTable.BucketIterator.advance()();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = _HashTable.BucketIterator.currentValue.getter();
    if (v19)
    {
      return v16;
    }
  }

  v27 = (v21 + 80);
  v28 = v24 + 40;
  while (v25)
  {
    if (*(v27 - 6) != *(v28 - 8) || *(v27 - 5) != *v28)
    {
      goto LABEL_6;
    }

    result = *(v27 - 4);
    v30 = *(v27 - 2);
    v31 = *(v27 - 1);
    v32 = *v27;
    v34 = *(v28 + 24);
    v33 = *(v28 + 32);
    v35 = *(v28 + 40);
    if (result != *(v28 + 8) || *(v27 - 3) != *(v28 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v30 != v34 || v31 != v33 || *&v32 != v35)
    {
      goto LABEL_6;
    }

    v27 += 7;
    v28 += 56;
    if (!--v25)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

Swift::Int sub_100C75A70(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle._startIterator(bucket:)();
    result = _HashTable.BucketIterator.currentValue.getter();
    if ((v9 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        _HashTable.BucketIterator.advance()();
        result = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v10 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void sub_100C75B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100015C64(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_100015C64((v12 > 1), v13 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v13 + 1;
  v14 = v8 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v8;
  if (*v4)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  sub_100C967B4(v11);
}

void sub_100C75CFC(uint64_t a1, uint64_t a2)
{

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v3 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v3)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v5 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v6 = _HashTable.copy()();

        *v2 = v6;
        v5 = v6;
      }

      if (v5)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v3 < 0x10)
  {
    return;
  }

  sub_100C967CC();
}

void sub_100C75E34(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1[1];
  v19 = a1[2].n128_u64[0];
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  sub_100118E9C(&v20, v18);
  sub_1000089F8(&v19, v18, &qword_1011BC0A0, &unk_100F0EFD0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100C713A0(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_100C713A0((v9 > 1), v10 + 1, 1);
    v6 = *v5;
  }

  *(v6 + 16) = v10 + 1;
  v11 = v6 + 56 * v10;
  v12 = *a1;
  v13 = a1[1];
  v14 = a1[2];
  *(v11 + 80) = a1[3].n128_u8[0];
  *(v11 + 48) = v13;
  *(v11 + 64) = v14;
  *(v11 + 32) = v12;
  v3[1] = v6;
  if (*v3)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v10)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v3;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v3 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v10 < 0xF)
  {
    return;
  }

  sub_100C96870(v12);
}

void sub_100C75FF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_100C96FA4(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_100C7615C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100C75FF0(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_100C761EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v10 = *v4;
      v4 += 7;
      v9 = *&v10;
      if (v5 == 0.0)
      {
        v5 = 0.0;
      }

      Hasher._combine(_:)(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      Hasher._combine(_:)(*&v11);

      String.hash(into:)();
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100C762B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v11 = &type metadata for Lyrics.SongwritersLine;
  v12 = &protocol witness table for Lyrics.SongwritersLine;
  v6 = swift_allocObject();
  *&v10 = v6;
  v7 = *(a2 + 16);
  *(v6 + 16) = *a2;
  *(v6 + 32) = v7;
  *(v6 + 48) = *(a2 + 32);
  v8 = *a3;
  *(v8 + 16) = a1 + 1;
  return sub_100059A8C(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_100C76374(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC210, &unk_100F0F148);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10000F8B8(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76488(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BC188, &qword_100F0F0B0);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011BC138, &qword_100F0F068);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011BC188, &qword_100F0F0B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F8B8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Translation(0);
      result = sub_100C7B91C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76670(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011BC180, &qword_100F0F0A8);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_10010FC20(&qword_1011BC150, &qword_100F0F080);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1000089F8(v9, v5, &qword_1011BC180, &qword_100F0F0A8);
      v11 = *v5;
      v12 = v5[1];
      result = sub_10000F8B8(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = type metadata accessor for Lyrics.Transliteration(0);
      result = sub_100C7B91C(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76858(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC148, &qword_100F0F078);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_1000089F8(&v27, v26, &qword_1011BC160, &unk_100F0F090);
  result = sub_10000F8B8(v7, v8);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_1000089F8(&v27, v26, &qword_1011BC160, &unk_100F0F090);
    result = sub_10000F8B8(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100C76A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC100, &qword_100F0F030);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v16, &qword_1011BC108, &qword_100F0F038);
      v5 = v16;
      v6 = v17;
      result = sub_10000F8B8(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76B50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC078, &qword_100F0EF98);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000089F8(v4, &v11, &qword_1011BC080, &unk_100F0EFA0);
      v5 = v11;
      result = sub_1002B5A68(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100016270(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76C78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC088, &qword_100F0EFB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_100C71CF0(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC0B8, &qword_100F0EFE8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 88); ; i += 8)
    {
      v6 = *(i - 5);
      v5 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v9 = *(i - 8);
      v10 = *i;
      v18 = *(i - 7);
      *&v19 = v6;
      *(&v19 + 1) = v5;
      *&v20 = v8;
      *(&v20 + 1) = v7;
      v21 = v9;

      result = sub_100C71CF0(&v18);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v3[6] + 56 * result;
      v14 = v19;
      *v13 = v18;
      *(v13 + 16) = v14;
      *(v13 + 32) = v20;
      *(v13 + 48) = v21;
      *(v3[7] + 8 * result) = v10;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100C76EF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC0C0, &qword_100F0EFF0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v13 = *(a1 + 32);
  result = sub_1006BE788(*(a1 + 32));
  if (v5)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v6 = (a1 + 48);
  v7 = v1 - 1;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v13;
    *(v3[7] + 8 * result) = *(&v13 + 1);
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!v7)
    {
      goto LABEL_8;
    }

    v11 = *v6++;
    v13 = v11;

    result = sub_1006BE788(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_100C77014(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_10010FC20(&qword_1011BC0C8, &qword_100F0EFF8);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = sub_1006BE788(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = v5;
  result = v4;
  v9 = (a1 + 80);
  while (1)
  {
    *(v3 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v7;
    *(v3[6] + 8 * v7) = result;
    v10 = (v3[7] + 32 * v7);
    *v10 = v17;
    v10[1] = v18;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = (v9 + 40);
    v15 = *(v9 - 1);
    v17 = *v9;
    v18 = v9[1];

    v7 = sub_1006BE788(v15);
    v9 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_100C64098(*(a1 + 32), *(a2 + 32)))
    {
      if (*(a1 + 48))
      {
        if (*(a2 + 48))
        {
          return 1;
        }
      }

      else if ((*(a2 + 48) & 1) == 0 && *(a1 + 40) == *(a2 + 40))
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL _s7LyricsX0A0C8SyllableV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = _stringCompareWithSmolCheck(_:_:expecting:)(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 48) == *(a2 + 48);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7LyricsX0A0C8TextLineV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (v4 = type metadata accessor for Lyrics.TextLine(0), *(a1 + v4[10]) == *(a2 + v4[10])) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v5 = v4;
    v6 = (*(a1 + v4[16]))();
    v8 = v7;
    if (v6 == (*(a2 + v5[16]))() && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_100C773C4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result + 56 * v1;
  v4 = *(v2 + 8);
  v3 = *(v2 + 16);
  v5 = __OFADD__(v4, v3);
  v6 = v4 + v3;
  if (v5)
  {
    goto LABEL_7;
  }

  result = *(result + 64);
  if (__OFSUB__(v6, result))
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  return result;
}

uint64_t sub_100C77484(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v9 = &v18 - v8;
  if (!a2)
  {
    goto LABEL_4;
  }

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v7, v4);
  v10 = type metadata accessor for Locale.LanguageCode();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000095E8(v9, &qword_1011BBA50, &unk_100F0E5B0);
LABEL_4:
    v12 = 1;
    return v12 & 1;
  }

  v13 = Locale.LanguageCode.identifier.getter();
  v15 = v14;
  (*(v11 + 8))(v9, v10);
  if (qword_1011BB868 != -1)
  {
    swift_once();
  }

  v16 = sub_10048C9BC(v13, v15, qword_10121C0F8);

  v12 = v16 ^ 1;
  return v12 & 1;
}

Swift::Int sub_100C776BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10010FC20(&qword_1011BC118, &qword_100F0F048);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      Hasher._combine(_:)(*&v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

_UNKNOWN **sub_100C77810(uint64_t a1, uint64_t a2)
{
  v24[1] = a1;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v4 = v24 - v3;
  v5 = type metadata accessor for Locale.Language();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale.LanguageCode();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v24 - v13;
  __chkstk_darwin();
  if (!a2)
  {
    return &off_1010F3048;
  }

  v16 = v24 - v15;

  Locale.Language.init(identifier:)();
  Locale.Language.languageCode.getter();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_1000095E8(v4, &qword_1011BBA50, &unk_100F0E5B0);
    return &off_1010F3048;
  }

  v18 = v16;
  (*(v10 + 32))(v16, v4, v9);
  (*(v10 + 16))(v14, v16, v9);
  Locale.LanguageCode.init(stringLiteral:)();
  sub_100C7BB04(&qword_1011BC200, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
  v19 = dispatch thunk of static Equatable.== infix(_:_:)();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v19 & 1) != 0 || (Locale.LanguageCode.init(stringLiteral:)(), v21 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v12, v9), (v21) || (Locale.LanguageCode.init(stringLiteral:)(), v22 = dispatch thunk of static Equatable.== infix(_:_:)(), v20(v12, v9), (v22))
  {
    v20(v14, v9);
  }

  else
  {
    Locale.LanguageCode.init(stringLiteral:)();
    v23 = dispatch thunk of static Equatable.== infix(_:_:)();
    v20(v12, v9);
    v20(v14, v9);
    if ((v23 & 1) == 0)
    {
      v20(v18, v9);
      return &off_1010F3020;
    }
  }

  v20(v18, v9);
  return &off_1010F2FF8;
}

void sub_100C77C5C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_10010FC20(&qword_1011BC120, &qword_100F0F050);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

char *sub_100C77F4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v140 = a1;
  v141 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v131 = _swiftEmptyArrayStorage;
    v86 = qword_1011BB878;

    if (v86 != -1)
    {
      goto LABEL_87;
    }

    goto LABEL_62;
  }

  v10 = a3;
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

    v13 = 0;
    v100 = _swiftEmptyArrayStorage;
LABEL_80:

    return v100;
  }

  v105._countAndFlagsBits = a4;
  v105._object = a5;
  v104 = 4 * v11;

  v12 = 0;
  v117 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 1;
  v8 = 15;
  v7 = _swiftEmptyArrayStorage;
  v125 = _swiftEmptyArrayStorage;
  v100 = _swiftEmptyArrayStorage;
  while (1)
  {
    v121 = v13;
    v114 = String.index(after:)();
    v16 = (v15 & 1) != 0 ? v8 : v117;
    v17 = (v15 & 1) != 0 ? v8 : v12;
    v18 = String.index(after:)();
    if (v16 >> 14 > v18 >> 14)
    {
      break;
    }

    v19 = v18;

    v20 = _NSRange.init(range:in:)(v16, v19, v9, v10);
    if (v14 < v17 >> 14)
    {
      goto LABEL_84;
    }

    v106 = v16 >> 14;
    v115 = v14;
    v129 = v16;
    v22 = v20;
    v23 = v21;

    v119 = v17;
    v111 = _NSRange.init(range:in:)(v17, v8, v9, v10);
    v118 = v24;
    __chkstk_darwin();
    v108 = v22;
    v102 = v23;
    v25 = sub_10010FC20(&qword_1011BC1A0, &qword_100F0F0C0);
    Array.extractFirst(where:)(v25, &v134);
    v10 = a3;
    v26 = v134;
    String.subscript.getter();
    v27 = Character.isWhitespace.getter();

    if ((v27 & 1) == 0)
    {
      if (v26)
      {
LABEL_22:
        v9 = a2;
        if (v121)
        {
          v109 = v26;
          v34 = v26;
          String.subscript.getter();
          v35 = static String._fromSubstring(_:)();
          v37 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_100C70804(0, v125[2] + 1, 1, v125);
          }

          v39 = v125[2];
          v38 = v125[3];
          v9 = a2;
          if (v39 >= v38 >> 1)
          {
            v125 = sub_100C70804((v38 > 1), v39 + 1, 1, v125);
          }

          v113 = 0;
          v125[2] = v39 + 1;
          v40 = &v125[5 * v39];
          v40[4] = v121;
          v40[5] = v35;
          v40[6] = v37;
          v40[7] = v111;
          v40[8] = v118;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v26 = v109;
          v13 = v109;
          v10 = a3;
        }

        else
        {
          v41 = v26;
          v113 = 0;
          v112 = v8;
          v31 = v129;
          v117 = v129;
          v13 = v26;
        }
      }

      else
      {
        v113 = 0;
        v112 = v17;
        v31 = v129;
        v117 = v129;
        v9 = a2;
        v13 = v121;
      }

LABEL_31:
      v32 = v115;
      goto LABEL_32;
    }

    if (v26)
    {
      goto LABEL_22;
    }

    v9 = a2;
    if (!v121)
    {
      v113 = 0;
      v13 = 0;
      v112 = v17;
      v31 = v129;
      v117 = v129;
      goto LABEL_31;
    }

    v28 = v121;
    [v28 characterRange];
    v29._countAndFlagsBits = a2;
    v29._object = a3;
    v30 = _NSRange.convert(from:to:preserveLength:)(v105, v29, 0);
    v31 = v129;
    v32 = v115;
    if (v33)
    {

      v113 = 0;
      v112 = v119;
      v117 = v129;
LABEL_60:
      v13 = v121;
      goto LABEL_32;
    }

    v75 = _NSRange.contains(_:)(v30);

    if (!v75)
    {
      v113 = 0;
      v112 = v119;
      v117 = v129;
      v9 = a2;
      goto LABEL_60;
    }

    v76 = v28;
    v9 = a2;
    String.subscript.getter();
    v123 = static String._fromSubstring(_:)();
    v99 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_100C70804(0, v125[2] + 1, 1, v125);
    }

    v79 = v125[2];
    v78 = v125[3];
    if (v79 >= v78 >> 1)
    {
      v125 = sub_100C70804((v78 > 1), v79 + 1, 1, v125);
    }

    v125[2] = v79 + 1;
    v80 = &v125[5 * v79];
    v80[4] = v76;
    v80[5] = v123;
    v80[6] = v99;
    v80[7] = v111;
    v80[8] = v118;
    String.subscript.getter();
    v124 = static String._fromSubstring(_:)();
    v82 = v81;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100C706BC(0, v7[2] + 1, 1, v7);
    }

    v84 = v7[2];
    v83 = v7[3];
    if (v84 >= v83 >> 1)
    {
      v7 = sub_100C706BC((v83 > 1), v84 + 1, 1, v7);
    }

    v7[2] = v84 + 1;
    v85 = &v7[5 * v84];
    v85[4] = v124;
    v85[5] = v82;
    v85[6] = v125;
    v85[7] = v108;
    v85[8] = v102;

    v112 = 0;
    v117 = 0;
    v13 = 0;
    v113 = 1;
    v125 = _swiftEmptyArrayStorage;
    v10 = a3;
    v31 = v129;
LABEL_32:
    if (v32 == String.index(before:)() >> 14 && v13)
    {
      if (v32 < v106)
      {
        goto LABEL_86;
      }

      v110 = v26;
      v42 = v7;

      v122 = v13;
      v43 = v13;
      v107 = _NSRange.init(range:in:)(v31, v8, v9, v10);
      v103 = v44;

      v45 = _NSRange.init(range:in:)(v119, v8, v9, v10);
      v47 = v46;
      v116 = v43;
      String.index(after:)();
      String.subscript.getter();
      v48 = static String._fromSubstring(_:)();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_100C70804(0, v125[2] + 1, 1, v125);
      }

      v52 = v125[2];
      v51 = v125[3];
      if (v52 >= v51 >> 1)
      {
        v125 = sub_100C70804((v51 > 1), v52 + 1, 1, v125);
      }

      v125[2] = v52 + 1;
      v53 = &v125[5 * v52];
      v53[4] = v116;
      v53[5] = v48;
      v53[6] = v50;
      v53[7] = v45;
      v53[8] = v47;
      String.index(after:)();
      String.subscript.getter();
      v9 = v54;
      v55 = static String._fromSubstring(_:)();
      v57 = v56;

      v7 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100C706BC(0, v42[2] + 1, 1, v42);
      }

      v59 = v7[2];
      v58 = v7[3];
      v130 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v7 = sub_100C706BC((v58 > 1), v130, 1, v7);
      }

      v7[2] = v130;
      v60 = &v7[5 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v60[6] = v125;
      v60[7] = v107;
      v60[8] = v103;
      v139 = _swiftEmptyArrayStorage;
      sub_100C713A0(0, v130, 0);
      v61 = 0;
      v62 = v139;
      v8 = (v7 + 7);
      v63 = a6;
      while (v61 < v7[2])
      {
        v9 = v7;
        v65 = *(v8 - 16);
        v64 = *v8;
        v131 = *(v8 - 24);
        v132 = v65;
        v133 = v64;
        sub_100C6F6E0(&v131, v63 & 1, &v134);
        v66 = v134;
        v67 = v135;
        v68 = v136;
        v69 = v137;
        v70 = v138;
        v139 = v62;
        v72 = v62[2];
        v71 = v62[3];
        v73 = v62;
        if (v72 >= v71 >> 1)
        {
          v126 = v136;
          v120 = v134;
          sub_100C713A0((v71 > 1), v72 + 1, 1);
          v66 = v120;
          v68 = v126;
          v63 = a6;
          v73 = v139;
        }

        v73[2] = v72 + 1;
        v74 = &v73[7 * v72];
        *(v74 + 2) = v66;
        ++v61;
        v74[6] = v67;
        *(v74 + 7) = v68;
        v74[9] = v69;
        *(v74 + 80) = v70;
        v8 += 40;
        v7 = v9;
        v62 = v73;
        if (v130 == v61)
        {

          v125 = _swiftEmptyArrayStorage;
          v100 = v62;
          v10 = a3;
          v9 = a2;
          v13 = v122;
          goto LABEL_7;
        }
      }

      __break(1u);
      break;
    }

LABEL_7:
    v8 = v114;
    v14 = v114 >> 14;
    v15 = v113;
    v12 = v112;
    if (v114 >> 14 == v104)
    {

      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  swift_once();
LABEL_62:
  __chkstk_darwin();
  UnfairLock.locked<A>(_:)(sub_100C7D130);
  v87 = v131;
  v88 = v131[2];
  if (v88)
  {
    v89 = 0;
    v90 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v90 = v9 & 0xFFFFFFFFFFFFLL;
    }

    v91 = 7;
    if (((a3 >> 60) & ((v9 & 0x800000000000000) == 0)) != 0)
    {
      v91 = 11;
    }

    v9 = 4 * v90;
    v92 = v91 | (v90 << 16);
    v93 = v131 + 6;
    do
    {
      v95 = v89 + 1;
      v96 = *(v93 - 1);
      if (v89 >= v88 - 1)
      {
        if (v9 == v96 >> 14)
        {
          v94 = *(v93 - 1);
        }

        else
        {
          v94 = v92;
        }
      }

      else
      {
        if (v95 >= v87[2])
        {
          goto LABEL_85;
        }

        if ((*v93 ^ v96) >= 0x4000)
        {
          v94 = *v93;
        }

        else
        {
          v94 = *(v93 - 1);
        }
      }

      sub_100C6ED1C(*(v93 - 2), v94, a2, a3, &v140, v8, v7, &v141);
      v93 += 2;
      v89 = v95;
    }

    while (v88 != v95);
  }

  swift_beginAccess();
  v97 = v141;

  return v97;
}

char *sub_100C78C40(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    sub_100009F78(0, &qword_1011BC198, MSVLyricsWord_ptr);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v8 = sub_10010FC20(&qword_1011BC1A0, &qword_100F0F0C0);
    v9 = sub_100020674(&qword_1011BC1E8, &qword_1011BC1A0, &qword_100F0F0C0, &protocol conformance descriptor for [A]);
    v10 = Sequence.exclude(_:)(sub_100C6FD04, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v12 = sub_100C77484(a2, a3, v11);
  v13 = sub_100C77810(a2, a3);
  v14 = [a1 primaryVocalText];
  v15 = [v14 string];

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;

  v19 = [a1 lyricsText];
  v20 = [v19 string];

  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  [a1 endTime];
  [a1 startTime];
  v24 = v13[2];
  v25 = (v13 + 4);
  do
  {
    v26 = v24;
    if (v24-- == 0)
    {
      break;
    }

    v28 = *v25++;
  }

  while (v28 != 2);
  v29 = v26 != 0;

  v30 = sub_100C77F4C(v10, v16, v18, v21, v23, v29, v12 & 1);

  return v30;
}

BOOL sub_100C78EB8(__n128 a1)
{
  v1 = type metadata accessor for Locale.Language();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_opt_self();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v5 dominantLanguageForString:v6];

  if (!v7)
  {
    return 0;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Locale.Language.init(identifier:)();
  v8 = Locale.Language.characterDirection.getter();

  (*(v2 + 8))(v4, v1);
  return v8 == 2;
}

void sub_100C78FF4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  sub_100009F78(0, &qword_1011BC198, MSVLyricsWord_ptr);
  v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v11 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    [a1 startTime];
    v4 = v15;
    goto LABEL_11;
  }

LABEL_4:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;

  [v13 startTime];
  v4 = v14;

LABEL_11:
  v16 = [a1 subwords];
  if (!v16)
  {
LABEL_22:
    [a1 endTime];
    v25 = v26.n128_u64[0];
    goto LABEL_23;
  }

  v17 = v16;
  sub_100009F78(0, &qword_1011BC198, MSVLyricsWord_ptr);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = _CocoaArrayWrapper.endIndex.getter();
  if (!v19)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_14:
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  if ((v18 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_19;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v21 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
    return;
  }

  v22 = *(v18 + 8 * v21 + 32);
LABEL_19:
  v23 = v22;

  [v23 endTime];
  v25 = v24;

LABEL_23:
  v27 = sub_100C77484(a2, a3, v26);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  v34 = [v28 characterRange];
  v58 = v35;
  v59 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = sub_100C78EB8(v38);

  v40 = [v28 subwords];
  if (v40)
  {
    v41 = v40;
    type metadata accessor for Lyrics(0);
    sub_100009F78(0, &qword_1011BC198, MSVLyricsWord_ptr);
    v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v43 = [v28 lyricsText];
    v44 = a4;
    v45 = v39;
    v46 = v33;
    v47 = v31;
    v48 = [v43 string];

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v50 = v49;

    v51 = [v28 lyricsText];
    v52 = [v51 string];

    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    v31 = v47;
    v33 = v46;
    v39 = v45;
    a4 = v44;
    v56 = sub_100C77F4C(v42, v57, v50, v53, v55, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v56 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v59;
  *(a4 + 40) = v58;
  *(a4 + 48) = v39;
  *(a4 + 56) = v56;
}

void *sub_100C7948C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
{
  v171 = a7;
  v172 = a8;
  v160 = a6;
  v189 = a5;
  v163 = a3;
  v164 = a4;
  v162 = a2;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v169 = *(v9 - 8);
  v170 = v9;
  __chkstk_darwin();
  v187 = &v153 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v186 = (&v153 - v11);
  v190 = type metadata accessor for Locale.Language();
  v12 = *(v190 - 8);
  __chkstk_darwin();
  v159 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v153 - v14;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v154 = &v153 - v15;
  sub_10010FC20(&qword_1011BBA48, &qword_100F0E5A8);
  __chkstk_darwin();
  v173 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v153 - v17;
  __chkstk_darwin();
  v196 = &v153 - v19;
  *&v202[0] = a1;
  KeyPath = swift_getKeyPath();
  v21 = sub_10010FC20(&qword_1011BC1F0, &qword_100F0F138);
  v22 = sub_100020674(&qword_1011BC1F8, &qword_1011BC1F0, &qword_100F0F138, &protocol conformance descriptor for [A]);
  v23 = Sequence.sorted<A>(by:comparator:)(KeyPath, sub_100666B20, 0, v21, v22, &protocol witness table for Double);

  if (v23 >> 62)
  {
    goto LABEL_109;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v25 = v190;
  v26 = v196;
  if (v24)
  {
    v166 = v24;
    v167 = objc_opt_self();
    v168 = v23 & 0xC000000000000001;
    v174 = v23;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v23 = v174;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v27 = 0;
    v192 = (v12 + 56);
    v158 = "$_staticText";
    v175 = 0;
    v176 = (v12 + 48);
    v153 = (v12 + 16);
    v161 = (v12 + 8);
    v156 = v23 & 0xFFFFFFFFFFFFFF8;
    v157 = (v12 + 32);
    v165 = v160;
    v28 = &selRef_trackNumber;
    v198 = _swiftEmptyArrayStorage;
    v188 = v18;
    while (1)
    {
      if (v168)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v27 >= *(v156 + 16))
        {
          goto LABEL_106;
        }

        v29 = *(v23 + 8 * v27 + 32);
        v30 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          v24 = _CocoaArrayWrapper.endIndex.getter();
          goto LABEL_3;
        }
      }

      v183 = v30;
      v199 = v29;
      v31 = [v199 agent];
      if (!v31)
      {
        goto LABEL_19;
      }

      v32 = v31;
      swift_beginAccess();
      v33 = v32;
      sub_100C7F338(v200, v33);
      swift_endAccess();

      v34 = [v33 v28[9]];
      if (!v34)
      {

        goto LABEL_19;
      }

      v35 = v34;
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      v39 = v36;
      if (v36 == 0x6E6F73726570 && v38 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v40 = [v33 identifier];
        if (v40)
        {
          v41 = v40;
          v197 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v43 = v42;
        }

        else
        {
          v197 = 0;
          v43 = 0;
        }

        v45 = *(v163 + 16);
        if (v45)
        {
          v46 = v27;
          v47 = [v45 identifier];
          if (v47)
          {
            v48 = v47;
            v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v27 = v46;
          v28 = &selRef_trackNumber;
          if (v43)
          {
LABEL_29:
            if (!v51)
            {

              v18 = v188;
              goto LABEL_44;
            }

            if (v197 == v49 && v43 == v51)
            {

              v18 = v188;
            }

            else
            {
              v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v18 = v188;
              if ((v52 & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            goto LABEL_35;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0;
          if (v43)
          {
            goto LABEL_29;
          }
        }

        v18 = v188;
        if (v51)
        {

LABEL_43:

LABEL_44:
          v54 = v164;
          v55 = *(v163 + 16);
          v26 = v196;
          v25 = v190;
          if (v55)
          {
            *(v164 + 16) = (*(v164 + 16) & 1) == 0;
          }

          *(v163 + 16) = v32;
          v56 = v54;

          v44 = *(v56 + 16);
          goto LABEL_47;
        }
      }

LABEL_35:
      if (v39 == 0x70756F7267 && v38 == 0xE500000000000000)
      {

        v182 = 0;
        v26 = v196;
        v25 = v190;
        goto LABEL_48;
      }

      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v26 = v196;
      if (v53)
      {

        v182 = 0;
        v25 = v190;
        goto LABEL_48;
      }

      if (v39 == 0x726568746FLL && v38 == 0xE500000000000000)
      {

        v182 = 1;
        v25 = v190;
        goto LABEL_48;
      }

      v123 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v25 = v190;
      if (v123)
      {
        v44 = 1;
        goto LABEL_47;
      }

LABEL_19:
      v44 = *(v164 + 16);
LABEL_47:
      v182 = v44;
LABEL_48:
      v57 = [v199 translationKey];
      if (v57)
      {
        v58 = v57;
        v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v180 = v60;
        v181 = v59;
      }

      else
      {
        v180 = 0;
        v181 = 0;
      }

      v184 = v27;
      v61 = [v189 v28[9]];
      v62 = &selRef_primaryVocalText;
      if (v61 != 2)
      {
        v62 = &selRef_lyricsText;
      }

      v63 = v199;
      v64 = [v199 *v62];
      v65 = [v64 string];

      v193 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v194 = v66;

      v67 = [v63 words];
      if (v67)
      {
        v68 = v67;
        sub_100009F78(0, &qword_1011BC198, MSVLyricsWord_ptr);
        v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        *&v201[0] = v69;
        v70 = sub_10010FC20(&qword_1011BC1A0, &qword_100F0F0C0);
        v71 = sub_100020674(&qword_1011BC1E8, &qword_1011BC1A0, &qword_100F0F0C0, &protocol conformance descriptor for [A]);
        v72 = v70;
        v73 = v175;
        v74 = Sequence.exclude(_:)(sub_100C6FD04, 0, v72, v71);
        v175 = v73;
      }

      else
      {
        v74 = _swiftEmptyArrayStorage;
      }

      v75 = swift_allocObject();
      v197 = v75;
      *(v75 + 16) = _swiftEmptyArrayStorage;
      v76 = (v75 + 16);
      v77 = swift_allocObject();
      v77[1] = 0u;
      v78 = v77 + 1;
      v77[2] = 0u;
      v77[3] = 0u;
      v195 = v77;
      v77[4] = 0u;
      v191 = *v192;
      v191(v26, 1, 1, v25);
      v23 = String._bridgeToObjectiveC()();
      v79 = [v167 dominantLanguageForString:v23];

      if (v79)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Locale.Language.init(identifier:)();

LABEL_60:
        v191(v18, 0, 1, v25);
        sub_10006B010(v18, v26, &qword_1011BBA48, &qword_100F0E5A8);
        goto LABEL_61;
      }

      v80 = [v189 language];
      if (v80)
      {
        v81 = v80;
        v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();

        Locale.Language.init(identifier:)();
        v26 = v196;
        goto LABEL_60;
      }

LABEL_61:
      if ([v189 v28[9]] == 2)
      {
        v82 = [objc_opt_self() standardUserDefaults];
        v23 = String._bridgeToObjectiveC()();
        v83 = [v82 BOOLForKey:v23];

        if ((v83 & 1) == 0)
        {
          v84 = v196;
          if ((*v176)(v196, 1, v25))
          {
            v85 = 0;
            v86 = 0;
          }

          else
          {
            v87 = v155;
            (*v153)(v155, v84, v25);
            v88 = v154;
            Locale.Language.languageCode.getter();
            v89 = v87;
            v90 = v88;
            (*v161)(v89, v25);
            v91 = type metadata accessor for Locale.LanguageCode();
            v92 = *(v91 - 8);
            if ((*(v92 + 48))(v90, 1, v91) == 1)
            {
              sub_1000095E8(v90, &qword_1011BBA50, &unk_100F0E5B0);
              v85 = 0;
              v86 = 0;
            }

            else
            {
              v93 = v90;
              v94 = Locale.LanguageCode.identifier.getter();
              v86 = v95;
              v96 = v93;
              v18 = v188;
              (*(v92 + 8))(v96, v91);
              v85 = v94;
            }

            v25 = v190;
          }

          v97 = v199;
          v23 = sub_100C78C40(v199, v85, v86);

          swift_beginAccess();
          *v76 = v23;

          v98 = [v97 backgroundVocals];
          if (v98)
          {
            v99 = v98;
            v100 = [v189 language];
            if (v100)
            {
              v101 = v100;
              v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v23 = v103;
            }

            else
            {

              v102 = 0;
              v23 = 0;
            }

            sub_100C78FF4(v99, v102, v23, v202);
            v185 = v202[0];
            v177 = v202[3];
            v178 = v202[2];
            v179 = v202[1];
          }

          else
          {
            v185 = 0u;
            v178 = 0u;
            v179 = 0u;
            v177 = 0u;
          }

          swift_beginAccess();
          v104 = v78[1];
          v201[0] = *v78;
          v201[1] = v104;
          v105 = v78[3];
          v201[2] = v78[2];
          v201[3] = v105;
          v106 = v195;
          v107 = v179;
          v195[1] = v185;
          v106[2] = v107;
          v108 = v177;
          v106[3] = v178;
          v106[4] = v108;
          sub_1000095E8(v201, &qword_1011BBA40, &qword_100F0E5A0);
        }
      }

      v109 = v173;
      sub_1000089F8(v196, v173, &qword_1011BBA48, &qword_100F0E5A8);
      if ((*v176)(v109, 1, v25) == 1)
      {
        sub_1000095E8(v109, &qword_1011BBA48, &qword_100F0E5A8);
        v110 = v160;
      }

      else
      {
        v111 = v159;
        (*v157)(v159, v109, v25);
        v112 = Locale.Language.characterDirection.getter();
        (*v161)(v111, v25);
        v110 = v112 == 2;
      }

      v113 = v199;
      *&v185 = [v199 lineIndex];
      [v113 startTime];
      v115 = v114;
      [v113 endTime];
      v117 = v116;
      if (v74 >> 62)
      {
        v12 = _CocoaArrayWrapper.endIndex.getter();
        if (!v12)
        {
LABEL_93:
          v122 = v199;
          [v199 startTime];
          v120 = v124;
          goto LABEL_94;
        }
      }

      else
      {
        v12 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v12)
        {
          goto LABEL_93;
        }
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v118 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v118 = *(v74 + 32);
      }

      v23 = v118;
      [v118 startTime];
      v120 = v119;

      v121 = v12 - 1;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_104;
      }

      if ((v74 & 0xC000000000000001) != 0)
      {
        v122 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v121 & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        if (v121 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_108;
        }

        v122 = *(v74 + 8 * v121 + 32);
      }

LABEL_94:

      [v122 endTime];
      v126 = v125;

      LODWORD(v177) = v198[2] == 0;
      sub_1000089F8(v196, v18, &qword_1011BBA48, &qword_100F0E5A8);
      v127 = swift_allocObject();
      *&v179 = v127;
      v128 = v172;
      *(v127 + 16) = v172;
      *(v127 + 24) = v165;
      v129 = swift_allocObject();
      *&v178 = v129;
      *(v129 + 16) = v128;
      *(v129 + 24) = v110;
      v130 = swift_allocObject();
      v132 = v180;
      v131 = v181;
      *(v130 + 2) = v128;
      *(v130 + 3) = v131;
      v134 = v193;
      v133 = v194;
      *(v130 + 4) = v132;
      *(v130 + 5) = v134;
      *(v130 + 6) = v133;
      v135 = swift_allocObject();
      *(v135 + 2) = v128;
      *(v135 + 3) = v131;
      v136 = v197;
      *(v135 + 4) = v132;
      *(v135 + 5) = v136;
      v137 = swift_allocObject();
      v137[2] = v128;
      v137[3] = v131;
      v138 = v195;
      v137[4] = v132;
      v137[5] = v138;
      v139 = v170;
      v194 = v170[7];
      v140 = v186;
      v191(v186 + v194, 1, 1, v190);
      v140[2] = v185;
      *v140 = v115;
      v140[1] = v117;
      *(v140 + v139[10]) = v120;
      *(v140 + v139[11]) = v126;
      *(v140 + v139[12]) = v177;
      swift_bridgeObjectRetain_n();
      swift_retain_n();

      sub_10006B010(v188, v140 + v194, &qword_1011BBA48, &qword_100F0E5A8);
      v141 = (v140 + v139[13]);
      *v141 = v131;
      v141[1] = v132;
      *(v140 + v139[8]) = v182;
      *(v140 + v139[9]) = v171;
      v142 = (v140 + v139[14]);
      v143 = v179;
      *v142 = sub_100C7D1A0;
      v142[1] = v143;
      v144 = (v140 + v139[15]);
      v145 = v178;
      *v144 = sub_100C7D234;
      v144[1] = v145;
      v146 = (v140 + v139[16]);
      *v146 = sub_100C7D1C0;
      v146[1] = v130;
      v147 = (v140 + v139[17]);
      *v147 = sub_100C7D1D0;
      v147[1] = v135;
      v148 = (v140 + v139[18]);
      *v148 = sub_100C7D224;
      v148[1] = v137;
      sub_100C7B4F8(v140, v187, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_100C70C94(0, v198[2] + 1, 1, v198, &qword_1011BC130, &qword_100F0F060, type metadata accessor for Lyrics.TextLine);
      }

      v23 = v174;
      v149 = v184;
      v28 = &selRef_trackNumber;
      v12 = v198[2];
      v150 = v198[3];
      v25 = v190;
      v18 = v188;
      v26 = v196;
      if (v12 >= v150 >> 1)
      {
        v198 = sub_100C70C94((v150 > 1), v12 + 1, 1, v198, &qword_1011BC130, &qword_100F0F060, type metadata accessor for Lyrics.TextLine);
      }

      v151 = v198;
      v198[2] = v12 + 1;
      sub_100C7B91C(v187, v151 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v12, type metadata accessor for Lyrics.TextLine);
      sub_100C7B560(v186, type metadata accessor for Lyrics.TextLine);
      sub_1000095E8(v26, &qword_1011BBA48, &qword_100F0E5A8);

      v27 = v149 + 1;
      if (v183 == v166)
      {
        goto LABEL_102;
      }
    }
  }

  v198 = _swiftEmptyArrayStorage;
LABEL_102:

  return v198;
}

void *sub_100C7A874(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  sub_10010FC20(&qword_1011BC148, &qword_100F0F078);
  result = static _DictionaryStorage.copy(original:)();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 8;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100C7AA84(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v95 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter() > 1)
    {
      v93 = v2;
      v90 = 0;
      v3 = &_swiftEmptySetSingleton;
      v103 = &_swiftEmptySetSingleton;

      __CocoaSet.makeIterator()();
      v4 = __CocoaSet.Iterator.next()();
      if (v4)
      {
        v5 = v4;
        sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v97 = v6;
          swift_dynamicCast();
          v8 = [v98 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v98;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            sub_100C80334(v16 + 1);
          }

          v3 = v103;
          v17 = NSObject._rawHashValue(seed:)(v103[5]);
          v18 = (v103 + 7);
          v19 = -1 << *(v103 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v103[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v103[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = __CocoaSet.Iterator.next()();
        }

        while (v6);
      }

      v38 = v95;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v91 = __CocoaSet.count.getter();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v93 = 0;
  v90 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v91 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v91;

  v29 = v28 > 0xD;
  v7 = a1;
  if (v29)
  {
    goto LABEL_130;
  }

LABEL_30:
  v89 = &v89;
  __chkstk_darwin();
  v92 = &v89 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v92, v15);
  v94 = 0;
  v30 = 0;
  v32 = *(v7 + 56);
  v7 += 56;
  v31 = v32;
  v33 = 1 << *(v7 - 24);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v35)
        {
          v40 = v30;
          while (1)
          {
            v30 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_129;
            }

            if (v30 >= v36)
            {
              goto LABEL_55;
            }

            v41 = *(v7 + 8 * v30);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v35 = (v41 - 1) & v41;
              goto LABEL_44;
            }
          }
        }

        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
LABEL_44:
        v42 = v39 | (v30 << 6);
        v15 = *(*(v95 + 48) + 8 * v42);
        v43 = [v15 type];
        if (v43)
        {
          break;
        }
      }

      v44 = v43;
      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      if (v45 == 0x6E6F73726570 && v47 == 0xE600000000000000)
      {

        break;
      }

      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    while ((v49 & 1) == 0);
    *&v92[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
  }

  while (!__OFADD__(v94++, 1));
  __break(1u);
LABEL_55:
  v38 = v95;
  v3 = sub_100C96FA4(v92, v91, v94, v95);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v91 = *(v3 + 16);
LABEL_57:

    if (v93)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
      sub_100C7D0C8();
      Set.Iterator.init(_cocoa:)();
      v38 = v98;
      v94 = v99;
      v15 = v100;
      v7 = v101;
      v51 = v102;
    }

    else
    {
      v52 = -1 << *(v38 + 32);
      v53 = *(v38 + 56);
      v94 = v38 + 56;
      v15 = ~v52;
      v54 = -v52;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v51 = v55 & v53;

      v7 = 0;
    }

    v92 = v15;
    v56 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v38 < 0)
        {
          v60 = __CocoaSet.Iterator.next()();
          if (!v60 || (v97 = v60, sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr), swift_dynamicCast(), (v59 = v103) == 0))
          {
LABEL_81:
            sub_10005C9F8(v38);
            LODWORD(v92) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v57 = v7;
          for (i = v51; !i; ++v57)
          {
            v7 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v56)
            {
              goto LABEL_81;
            }

            i = *(v94 + 8 * v7);
          }

          v51 = (i - 1) & i;
          v59 = *(*(v38 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v59)
          {
            goto LABEL_81;
          }
        }

        v61 = [v59 type];
        if (v61)
        {
          break;
        }
      }

      v62 = v61;
      v63 = v38;
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v65 = v64;

      if (v15 == 0x70756F7267 && v65 == 0xE500000000000000)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v38 = v63;
      if (v15)
      {
        goto LABEL_118;
      }
    }

    v38 = v63;
LABEL_118:
    sub_10005C9F8(v38);
    LODWORD(v92) = 0;
LABEL_82:
    v67 = v95;
    if (v93)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr);
      sub_100C7D0C8();
      Set.Iterator.init(_cocoa:)();
      v67 = v103;
      v94 = v104;
      v7 = v105;
      v68 = v106;
      v69 = v107;
    }

    else
    {
      v70 = -1 << *(v95 + 32);
      v71 = *(v95 + 56);
      v94 = v95 + 56;
      v7 = ~v70;
      v72 = -v70;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v69 = v73 & v71;

      v68 = 0;
    }

    v95 = v7;
    v74 = (v7 + 64) >> 6;
LABEL_90:
    if (v67 < 0)
    {
      v78 = __CocoaSet.Iterator.next()();
      if (!v78 || (v96 = v78, sub_100009F78(0, &qword_1011BBB18, MSVLyricsAgent_ptr), swift_dynamicCast(), (v77 = v97) == 0))
      {
LABEL_106:
        sub_10005C9F8(v67);
        if (v91 == 2)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        if (v91 == 1)
        {
          v85 = 0;
        }

        if (v91 >= 3)
        {
          v86 = 2;
        }

        else
        {
          v86 = 0x10000u >> (8 * v91);
        }

        if (v92)
        {
          return v85;
        }

        else
        {
          return v86;
        }
      }
    }

    else
    {
      v75 = v68;
      v76 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v68 >= v74)
          {
            goto LABEL_106;
          }

          v76 = *(v94 + 8 * v68);
          ++v75;
          if (v76)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
        {
          v87 = swift_slowAlloc();
          v88 = v90;
          v3 = sub_100C7615C(v87, v91, v7, sub_100C6F968);
          v90 = v88;

          v38 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v69 = (v76 - 1) & v76;
      v77 = *(*(v67 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v76)))));
      if (!v77)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v79 = [v77 type];
  if (!v79)
  {

    goto LABEL_90;
  }

  v80 = v79;
  v7 = v67;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v83 = v82;

  if (v81 != 0x726568746FLL || v83 != 0xE500000000000000)
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v67 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v67 = v7;
LABEL_120:
  sub_10005C9F8(v67);
  if (v92)
  {
    if (v91 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v91);
    }
  }

  else if (v91 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}