id sub_1004F4E58()
{
  result = [objc_allocWithZone(NLTokenizer) initWithUnit:0];
  qword_1006F9F50 = result;
  return result;
}

uint64_t sub_1004F4E90()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = UnfairLock.init()();
  qword_1006F9F58 = result;
  return result;
}

void sub_1004F4ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, char **a8)
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
    v20 = sub_100009DCC(&qword_1006FA6C0, &qword_1005A8680);
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

          sub_1004F7CA0(0, v52, 0);
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
              sub_1004F7CA0((v57 > 1), v58 + 1, 1);
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

        sub_100009DCC(&qword_1006FA6F8, &qword_1005A8780);
        sub_100010BC0(&qword_1006FA700, &qword_1006FA6F8, &qword_1005A8780, &protocol conformance descriptor for [A]);
        v30 = sub_100572798();
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
        v44 = sub_1005728D8();
        v70 = v45;

        v46 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1004F6958(0, *(v42 + 2) + 1, 1, v42);
        }

        v30 = *(v46 + 2);
        v47 = *(v46 + 3);
        v48 = v46;
        if (v30 >= v47 >> 1)
        {
          v48 = sub_1004F6958((v47 > 1), v30 + 1, 1, v46);
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
      v33 = sub_1004F6834(0, *(v33 + 2) + 1, 1, v33);
      *a8 = v33;
LABEL_34:
      v63 = *(v33 + 2);
      v62 = *(v33 + 3);
      if (v63 >= v62 >> 1)
      {
        v33 = sub_1004F6834((v62 > 1), v63 + 1, 1, v33);
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

double sub_1004F54D0(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  if (qword_1006F9D90 != -1)
  {
    swift_once();
  }

  v4 = qword_1006F9F50;
  v5 = sub_100572898();
  [v4 setString:v5];

  *a3 = sub_100573358();

  return result;
}

BOOL sub_1004F55B8(id *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
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

  if (qword_1006F9DA0 != -1)
  {
    swift_once();
  }

  v14 = sub_10056DF88();
  sub_10000C49C(v14, static Logger.lyrics);
  v15 = v9;

  swift_errorRetain();
  v16 = sub_10056DF68();
  v17 = sub_100573428();

  if (os_log_type_enabled(v16, v17))
  {
    v25 = v17;
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136446978;
    [v15 characterRange];
    v19 = sub_100573B88();
    v21 = sub_1004F7708(v19, v20, &v26);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_1004F7708(a4, a5, &v26);
    *(v18 + 22) = 2082;
    *(v18 + 24) = sub_1004F7708(a2, a3, &v26);
    *(v18 + 32) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 34) = v22;
    *v24 = v22;
    _os_log_impl(&_mh_execute_header, v16, v25, "    Wasn't able to convert syllable range from primaryVocalText to lyricsText indicating a parsing issue.\n    MSVLyricsWord.characterRange=%{public}s\n    primaryVocalsText=%{public}s\n    lyricsText=%{public}s\n    thrownError=%{public}@", v18, 0x2Au);
    sub_10001036C(v24, &qword_1006FA6F0, qword_1005A86B0);

    swift_arrayDestroy();
  }

  else
  {
  }

  return 0;
}

void sub_1004F5894(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
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

  sub_1004F7D00(0, v17, 0);
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
      sub_1004F7D00((v27 > 1), v28 + 1, 1);
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

uint64_t sub_1004F5B1C(id *a1)
{
  result = [*a1 type];
  if (result)
  {
    v2 = result;
    v3 = sub_1005728D8();
    v5 = v4;

    if (v3 == 0x6E6F73726570 && v5 == 0xE600000000000000)
    {

      return 1;
    }

    else
    {
      v7 = sub_100574498();

      return v7 & 1;
    }
  }

  return result;
}

uint64_t Lyrics.deinit()
{

  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalLanguage, &qword_1006F9F68, &qword_1005A7B68);

  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation, &qword_1006FBA10, &qword_1005A9A10);
  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTranslation, &qword_1006FBA10, &qword_1005A9A10);
  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_preferredTransliteration, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics_originalTransliteration, &qword_1006F9F78, &qword_1005A7B80);
  sub_10001036C(v0 + OBJC_IVAR____TtC7LyricsX6Lyrics__preferredTransliteration, &qword_1006F9F78, &qword_1005A7B80);

  return v0;
}

uint64_t Lyrics.__deallocating_deinit()
{
  Lyrics.deinit();

  return swift_deallocClassInstance();
}

unint64_t Lyrics.ReportConcernData.dictionaryRepresentation()()
{
  v1 = sub_1004FD4B4(_swiftEmptyArrayStorage);
  if (v0[1])
  {
    v8 = v0[1];

    sub_100573E78();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004FAA14(v6, 0xD000000000000017, 0x80000001005BD690, isUniquelyReferenced_nonNull_native);
    v1 = v7;
  }

  v3 = v0[5];
  if (v3)
  {
    v7 = v0[4];
    v8 = v3;

    sub_100573E78();
    v4 = swift_isUniquelyReferenced_nonNull_native();
    v7 = v1;
    sub_1004FAA14(v6, 0x694C73636972796CLL, 0xEC0000006449656ELL, v4);
    return v7;
  }

  return v1;
}

uint64_t MSVLyricsAgent.isEqual(_:)(uint64_t a1)
{
  sub_10000CC8C(a1, v48, &qword_1006FBEB0, &qword_1005A9D50);
  if (v49)
  {
    sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
    if (swift_dynamicCast())
    {
      v2 = [v1 type];
      if (v2)
      {
        v3 = v2;
        v4 = sub_1005728D8();
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
        v9 = sub_1005728D8();
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
            v12 = sub_100574498();

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
        v15 = sub_1005728D8();
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
        v20 = sub_1005728D8();
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
            v23 = sub_100574498();

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
        v26 = sub_1005728D8();
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
      v31 = sub_1005728D8();
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

        v34 = sub_100574498();

        if (v34)
        {
LABEL_47:
          v35 = [v1 identifier];
          if (v35)
          {
            v36 = v35;
            v37 = sub_1005728D8();
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
            v44 = sub_1005728D8();
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
                v40 = sub_100574498();

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
    sub_10001036C(v48, &qword_1006FBEB0, &qword_1005A9D50);
  }

LABEL_50:
  v40 = 0;
  return v40 & 1;
}

uint64_t sub_1004F63E8()
{
  v0 = sub_10056DF88();
  sub_10000C910(v0, static Logger.lyrics);
  sub_10000C49C(v0, static Logger.lyrics);
  return sub_10056DF78();
}

uint64_t static Logger.lyrics.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006F9DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_10056DF88();
  v3 = sub_10000C49C(v2, static Logger.lyrics);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1004F6504(void (*a1)(void *__return_ptr))
{
  a1(v3);
  v1 = sub_1005023A4(v3[1]);

  return v1;
}

char *sub_1004F656C(uint64_t a1)
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

    return sub_1004F7CA0(result, v5, 0);
  }

  return result;
}

uint64_t sub_1004F65E4()
{
  sub_100009DCC(&qword_1006FA600, &qword_1005A85D0);
  swift_arrayDestroy();

  return swift_deallocClassInstance();
}

void *sub_1004F6644(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009DCC(&qword_1006F9F10, &qword_1005A8570);
  v10 = *(sub_100009DCC(&qword_1006F9F08, &unk_1005A7900) - 8);
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
  v15 = *(sub_100009DCC(&qword_1006F9F08, &unk_1005A7900) - 8);
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

char *sub_1004F6834(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5B0, &qword_1005A8580);
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

char *sub_1004F6958(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA6C8, &qword_1005A8688);
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

void *sub_1004F6A80(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006FA6D0, &qword_1005A8690);
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
    sub_100009DCC(&qword_1006FA6D8, &qword_1005A8698);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004F6BC8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006FA6E0, &qword_1005A86A0);
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
    sub_100009DCC(&qword_1006FA6E8, &qword_1005A86A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004F6D10(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA618, &qword_1005A85E8);
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

char *sub_1004F6E1C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA608, &qword_1005A85D8);
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

void *sub_1004F6F10(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006FA630, &qword_1005A8600);
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
    sub_100009DCC(&qword_1006FA028, &unk_1005A96A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1004F7058(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100009DCC(a5, a6);
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

void *sub_1004F7234(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006F9FD0, &qword_1005A7BA8);
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
    sub_100009DCC(&qword_1006FA648, &qword_1005A8618);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004F7368(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5C8, &qword_1005A8B40);
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

char *sub_1004F746C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5B8, &qword_1005A8588);
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

void *sub_1004F7578(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006FA5F8, &qword_1005A85C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100009DCC(&qword_1006FA600, &qword_1005A85D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1004F76AC(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_1004F7708(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

unint64_t sub_1004F7708(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1004F77D4(v11, 0, 0, 1, a1, a2);
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
    sub_100081F38(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100010474(v11);
  return v7;
}

unint64_t sub_1004F77D4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1004F78E0(a5, a6);
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
    result = sub_100573F98();
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

void *sub_1004F78E0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1004F792C(a1, a2);
  sub_1004F7A5C(&off_1006AFC30);
  return v3;
}

void *sub_1004F792C(uint64_t a1, unint64_t a2)
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

  v6 = sub_100506778(v5, 0);
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

  result = sub_100573F98();
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
        v10 = sub_100572AB8();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100506778(v10, 0);
        result = sub_100573EC8();
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

void sub_1004F7A5C(uint64_t a1)
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

  v3 = sub_1004F7B48(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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

char *sub_1004F7B48(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA690, &qword_1005A8660);
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

unint64_t sub_1004F7C3C(unint64_t result, char a2, uint64_t a3)
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

unint64_t sub_1004F7C5C(unint64_t result, char a2, uint64_t a3)
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

void *sub_1004F7C80(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F7D80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7CA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F7F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7CC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F807C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004F7CE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F81A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7D00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F82E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7D20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F8410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7D40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F8514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1004F7D60(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1004F8618(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1004F7D80(void *result, int64_t a2, char a3, void *a4)
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

  sub_100009DCC(&qword_1006F9F10, &qword_1005A8570);
  v10 = *(sub_100009DCC(&qword_1006F9F08, &unk_1005A7900) - 8);
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
  v15 = *(sub_100009DCC(&qword_1006F9F08, &unk_1005A7900) - 8);
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

char *sub_1004F7F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA618, &qword_1005A85E8);
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

char *sub_1004F807C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5B0, &qword_1005A8580);
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

void *sub_1004F81A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100009DCC(&qword_1006FA630, &qword_1005A8600);
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
    sub_100009DCC(&qword_1006FA028, &unk_1005A96A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1004F82E8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA6C8, &qword_1005A8688);
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

char *sub_1004F8410(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5D0, &qword_1005A85A0);
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

char *sub_1004F8514(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA5F0, &qword_1005A85C0);
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

char *sub_1004F8618(char *result, int64_t a2, char a3, char *a4)
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
    sub_100009DCC(&qword_1006FA590, &qword_1005A8550);
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

uint64_t sub_1004F871C(double *a1)
{
  sub_100574678();
  Lyrics.Word.hash(into:)(v4);
  v2 = sub_1005746C8();

  return sub_1004F8788(a1, v2);
}

uint64_t sub_1004F8788(double *a1, uint64_t a2)
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
      result = sub_100574498();
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
      result = sub_100574498();
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

void sub_1004F8978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA668, &qword_1005A8638);
  v46 = v4;
  v6 = sub_1005741A8();
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

        sub_100503CEC(v50, v49);
        v51 = *&v50[24];
        v52 = *&v50[40];
        v30 = *&v50[56];
        v31 = *&v50[72];
      }

      v53 = v30;
      v54 = v31;
      sub_100574678();
      sub_1005729F8();
      v36 = sub_1005746C8();
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

void sub_1004F8CD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100009DCC(&qword_1006FA670, &qword_1005A8640);
  v40 = v4;
  v7 = sub_1005741A8();
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
        sub_100502568(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      else
      {
        sub_1005020B4(v27, v41, type metadata accessor for Lyrics.Transliteration);
      }

      sub_100574678();
      sub_1005729F8();
      v28 = sub_1005746C8();
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
      sub_100502568(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Transliteration);
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

void sub_1004F9050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v41 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v2;
  sub_100009DCC(&qword_1006FA658, &qword_1005A8628);
  v40 = v4;
  v7 = sub_1005741A8();
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
        sub_100502568(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      else
      {
        sub_1005020B4(v27, v41, type metadata accessor for Lyrics.Translation);
      }

      sub_100574678();
      sub_1005729F8();
      v28 = sub_1005746C8();
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
      sub_100502568(v41, *(v8 + 56) + v26 * v16, type metadata accessor for Lyrics.Translation);
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

void sub_1004F93C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA620, &qword_1005A85F0);
  v39 = v4;
  v6 = sub_1005741A8();
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
        sub_1000F40D4(v27, &v40);
      }

      sub_100574678();
      sub_1005729F8();
      v30 = sub_1005746C8();
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

void sub_1004F9698(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA5A8, &qword_1005A8578);
  v53 = v4;
  v6 = sub_1005741A8();
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

      sub_100574678();
      if (v22 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v22;
      }

      sub_1005746B8(*&v27);
      if (v23 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v23;
      }

      sub_1005746B8(*&v28);
      v54 = v24;
      sub_1005729F8();
      v59 = v26;
      v29 = *(v26 + 16);
      sub_100574688(v29);
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

          sub_1005746B8(*&v31);
          if (v32 == 0.0)
          {
            v37 = 0.0;
          }

          else
          {
            v37 = v32;
          }

          sub_1005746B8(*&v37);

          sub_1005729F8();
          sub_100574688(v33);
          sub_100574688(v34);
          sub_100574688(v35);

          --v29;
        }

        while (v29);
      }

      if (v56)
      {
        sub_100574688(0);
        v7 = v51;
        v5 = v52;
        v38 = v57;
      }

      else
      {
        sub_100574688(1uLL);
        v38 = v57;
        if ((v57 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v39 = v57;
        }

        else
        {
          v39 = 0;
        }

        sub_1005746B8(v39);
        v7 = v51;
        v5 = v52;
      }

      v40 = sub_1005746C8();
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

void sub_1004F9AC0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA5D8, &qword_1005A85A8);
  v55 = v4;
  v6 = sub_1005741A8();
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

      sub_100574678();
      if (v22 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v22;
      }

      sub_1005746B8(*&v28);
      if (v23 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v23;
      }

      sub_1005746B8(*&v29);
      v56 = v24;
      sub_1005729F8();
      v60 = v26;
      v30 = *(v26 + 16);
      sub_100574688(v30);
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

          sub_1005746B8(*&v32);
          if (v33 == 0.0)
          {
            v38 = 0.0;
          }

          else
          {
            v38 = v33;
          }

          sub_1005746B8(*&v38);

          sub_1005729F8();
          sub_100574688(v34);
          sub_100574688(v35);
          sub_100574688(v36);

          --v30;
        }

        while (v30);
      }

      if (v57)
      {
        sub_100574688(0);
        v7 = v53;
        v39 = v58;
      }

      else
      {
        sub_100574688(1uLL);
        v39 = v58;
        if ((v58 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v40 = v58;
        }

        else
        {
          v40 = 0;
        }

        sub_1005746B8(v40);
        v7 = v53;
      }

      v41 = sub_1005746C8();
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

void sub_1004F9EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA5E8, &qword_1005A85B8);
  v6 = sub_1005741A8();
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

      sub_100574678();
      sub_100574688(v21);
      v23 = sub_1005746C8();
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

void sub_1004FA184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA5E0, &qword_1005A85B0);
  v31 = v4;
  v6 = sub_1005741A8();
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

      sub_100574678();
      sub_100574688(v20);
      v22 = sub_1005746C8();
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

void sub_1004FA41C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100009DCC(&qword_1006FA598, &qword_1005A8558);
  v35 = v4;
  v6 = sub_1005741A8();
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
        sub_1000F51DC(v22, v36);
      }

      else
      {
        sub_100081F38(v22, v36);
        v23 = v21;
      }

      sub_1005728D8();
      sub_100574678();
      sub_1005729F8();
      v24 = sub_1005746C8();

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
      sub_1000F51DC(v36, (*(v7 + 56) + 32 * v15));
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

void sub_1004FA6EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100429D94(a2, a3);
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
      sub_1005043DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1004FB314();
    goto LABEL_7;
  }

  sub_1004F8CD8(v15, a4 & 1);
  v21 = sub_100429D94(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_100574578();
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
  sub_1004FB008(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

void sub_1004FA880(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_100429D94(a2, a3);
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
      sub_1005043DC(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1004FB56C();
    goto LABEL_7;
  }

  sub_1004F9050(v15, a4 & 1);
  v21 = sub_100429D94(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_100574578();
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
  sub_1004FB008(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

void sub_1004FAA14(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100429D94(a2, a3);
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
      sub_1004F93C8(v16, a4 & 1);
      v11 = sub_100429D94(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_100574578();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1004FB7C4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * v11;

    sub_100415860(a1, v22);
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

unint64_t sub_1004FABA4(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1004F871C(a2);
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
      sub_1004F9698(v14, a3 & 1);
      result = sub_1004F871C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_15:
        result = sub_100574578();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1004FB978();
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
  sub_1000CB298(&v28, v26);
  return sub_10000CC8C(&v27, v26, &qword_1006FA5C0, &unk_1005A8590);
}

void sub_1004FAD20(uint64_t a1, double *a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1004F871C(a2);
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
      sub_1004F9AC0(v14, a3 & 1);
      v9 = sub_1004F871C(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_100574578();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1004FBB08();
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
      sub_1000CB298(&v28, v26);
      sub_10000CC8C(&v27, v26, &qword_1006FA5C0, &unk_1005A8590);
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

_OWORD *sub_1004FAEC8(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_100490C6C(a2);
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
      sub_1004FBF74();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1004FA41C(v13, a3 & 1);
    v8 = sub_100490C6C(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      _s3__C3KeyVMa_1(0);
      result = sub_100574578();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100010474(v19);

    return sub_1000F51DC(a1, v19);
  }

  else
  {
    sub_1000F059C(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1004FB008(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_100502568(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
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

unint64_t sub_1004FB0B4(unint64_t result, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
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

unint64_t sub_1004FB100(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

void sub_1004FB144()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA668, &qword_1005A8638);
  v2 = *v0;
  v3 = sub_100574198();
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

      sub_100503CEC(&v33, v32);
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

void sub_1004FB314()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006FA670, &qword_1005A8640);
  v3 = *v0;
  v4 = sub_100574198();
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
        sub_1005020B4(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Transliteration);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_100502568(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Transliteration);
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

void sub_1004FB56C()
{
  v1 = v0;
  v30 = *(type metadata accessor for Lyrics.Translation(0) - 8);
  __chkstk_darwin();
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006FA658, &qword_1005A8628);
  v3 = *v0;
  v4 = sub_100574198();
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
        sub_1005020B4(*(v3 + 56) + v25, v29, type metadata accessor for Lyrics.Translation);
        v26 = v31;
        v27 = (*(v31 + 48) + v20);
        *v27 = v22;
        v27[1] = v23;
        sub_100502568(v24, *(v26 + 56) + v25, type metadata accessor for Lyrics.Translation);
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

void sub_1004FB7C4()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA620, &qword_1005A85F0);
  v2 = *v0;
  v3 = sub_100574198();
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
        sub_1000F40D4(*(v2 + 56) + 40 * v17, v28);
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

void sub_1004FB978()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA5A8, &qword_1005A8578);
  v2 = *v0;
  v3 = sub_100574198();
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

void sub_1004FBB08()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA5D8, &qword_1005A85A8);
  v2 = *v0;
  v3 = sub_100574198();
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

void sub_1004FBCA8()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA5E8, &qword_1005A85B8);
  v2 = *v0;
  v3 = sub_100574198();
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

void sub_1004FBE10()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA5E0, &qword_1005A85B0);
  v2 = *v0;
  v3 = sub_100574198();
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

void sub_1004FBF74()
{
  v1 = v0;
  sub_100009DCC(&qword_1006FA598, &qword_1005A8558);
  v2 = *v0;
  v3 = sub_100574198();
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
        sub_100081F38(*(v2 + 56) + 32 * v17, v20);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000F51DC(v20, (*(v4 + 56) + 32 * v17));
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

Swift::Int sub_1004FC0F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_100574678();
  sub_1005729F8();
  result = sub_1005746C8();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10056DD18();
    result = sub_10056DD48();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_100574498())
          {
            break;
          }

          sub_10056DD68();
          result = sub_10056DD48();
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

Swift::Int sub_1004FC244(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_100574678();
  v38 = a1;
  Lyrics.Word.hash(into:)(v39);
  result = sub_1005746C8();
  v9 = 1 << *a4;
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    goto LABEL_40;
  }

  v12 = v11 & result;
  v13 = sub_10056DD18();
  *&v41 = a4;
  *(&v41 + 1) = a5;
  *&v42 = v12;
  *(&v42 + 1) = v13;
  *&v43 = v14;
  *(&v43 + 1) = v15;
  v44 = 0;
  v16 = sub_10056DD48();
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
      result = sub_100574498();
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
    sub_10056DD68();
    v39[0] = v41;
    v39[1] = v42;
    v39[2] = v43;
    v40 = v44;
    v16 = sub_10056DD48();
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
      result = sub_100574498();
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

Swift::Int sub_1004FC4A0(Swift::UInt a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  sub_100574678();
  sub_100574688(a1);
  result = sub_1005746C8();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_10056DD18();
    result = sub_10056DD48();
    if ((v9 & 1) == 0 && *(a2 + 8 * result) != a1)
    {
      do
      {
        sub_10056DD68();
        result = sub_10056DD48();
      }

      while ((v10 & 1) == 0 && *(a2 + 8 * result) != a1);
    }
  }

  return result;
}

void sub_1004FC5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004F7CA0(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_1004F7CA0((v12 > 1), v13 + 1, 1);
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
    if (sub_10056DD78() > v13)
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

        v17 = sub_10056DD98();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_10056DD38();
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

  sub_10051E584(v11);
}

void sub_1004FC72C(uint64_t a1, uint64_t a2)
{

  sub_100573FC8();
  sub_100574008();
  sub_100574018();
  sub_100573FD8();
  v3 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (sub_10056DD78() >= v3)
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

        v6 = sub_10056DD98();

        *v2 = v6;
        v5 = v6;
      }

      if (v5)
      {
        sub_10056DD38();
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

  sub_10051E59C();
}

void sub_1004FC864(__n128 *a1, uint64_t a2)
{
  v3 = v2;
  v20 = a1[1];
  v19 = a1[2].n128_u64[0];
  v7 = v2[1];
  v5 = v2 + 1;
  v6 = v7;
  sub_1000CB298(&v20, v18);
  sub_10000CC8C(&v19, v18, &qword_1006FA5C0, &unk_1005A8590);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1004F7CC0(0, *(v6 + 16) + 1, 1);
    v6 = *v5;
  }

  v10 = *(v6 + 16);
  v9 = *(v6 + 24);
  if (v10 >= v9 >> 1)
  {
    sub_1004F7CC0((v9 > 1), v10 + 1, 1);
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
    if (sub_10056DD78() > v10)
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

        v17 = sub_10056DD98();

        *v3 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_10056DD38();
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

  sub_10051E640(v12);
}

void sub_1004FCA88(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

        sub_10051ED74(a1, a2, v20, a3);
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

void *sub_1004FCBF4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_1004FCA88(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1004FCC84(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_100574688(v3);
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

      sub_1005746B8(*&v5);
      if (v6 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v6;
      }

      sub_1005746B8(*&v11);

      sub_1005729F8();
      sub_100574688(v7);
      sub_100574688(v8);
      sub_100574688(v9);

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1004FCD50(uint64_t a1, uint64_t a2, uint64_t *a3)
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
  return sub_10002EA74(&v10, v8 + 40 * a1 + 32);
}

unint64_t sub_1004FCE10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA730, &unk_1005A8708);
    v3 = sub_1005741C8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100429D94(v5, v6);
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

unint64_t sub_1004FCF24(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006FA6A8, &qword_1005A8670);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006FA658, &qword_1005A8628);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006FA6A8, &qword_1005A8670);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100429D94(*v5, v12);
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
      result = sub_100502568(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Translation);
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

unint64_t sub_1004FD10C(uint64_t a1)
{
  v2 = sub_100009DCC(&qword_1006FA6A0, &qword_1005A8668);
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_100009DCC(&qword_1006FA670, &qword_1005A8640);
    v7 = sub_1005741C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_10000CC8C(v9, v5, &qword_1006FA6A0, &qword_1005A8668);
      v11 = *v5;
      v12 = v5[1];
      result = sub_100429D94(*v5, v12);
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
      result = sub_100502568(v5 + v8, v17 + *(*(v18 - 8) + 72) * v15, type metadata accessor for Lyrics.Transliteration);
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

unint64_t sub_1004FD2F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100009DCC(&qword_1006FA668, &qword_1005A8638);
  v3 = sub_1005741C8();

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
  sub_10000CC8C(&v27, v26, &qword_1006FA680, &unk_1005A8650);
  result = sub_100429D94(v7, v8);
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
    sub_10000CC8C(&v27, v26, &qword_1006FA680, &unk_1005A8650);
    result = sub_100429D94(v7, v8);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1004FD4B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA620, &qword_1005A85F0);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, &v16, &qword_1006FA628, &qword_1005A85F8);
      v5 = v16;
      v6 = v17;
      result = sub_100429D94(v16, v17);
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

unint64_t sub_1004FD5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA598, &qword_1005A8558);
    v3 = sub_1005741C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000CC8C(v4, &v11, &qword_1006FA5A0, &unk_1005A8560);
      v5 = v11;
      result = sub_100490C6C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000F51DC(&v12, (v3[7] + 32 * result));
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

unint64_t sub_1004FD714(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA5A8, &qword_1005A8578);
    v3 = sub_1005741C8();

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

      result = sub_1004F871C(&v18);
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

unint64_t sub_1004FD84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA5D8, &qword_1005A85A8);
    v3 = sub_1005741C8();

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

      result = sub_1004F871C(&v18);
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

unint64_t sub_1004FD98C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100009DCC(&qword_1006FA5E0, &qword_1005A85B0);
  v3 = sub_1005741C8();
  v13 = *(a1 + 32);
  result = sub_1004B0DFC(*(a1 + 32));
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

    result = sub_1004B0DFC(v11);
    --v7;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1004FDAB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_100009DCC(&qword_1006FA5E8, &qword_1005A85B8);
  v3 = sub_1005741C8();
  v4 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  v5 = sub_1004B0DFC(v4);
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

    v7 = sub_1004B0DFC(v15);
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
    if (v4 || (sub_100574498()) && (sub_1004EA0DC(*(a1 + 32), *(a2 + 32)))
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
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && (*(a1 + 16) == *(a2 + 16) ? (v2 = *(a1 + 24) == *(a2 + 24)) : (v2 = 0), (v2 || (v3 = a1, v4 = a2, v5 = sub_100574498(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)) && *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40)))
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
      v11 = sub_100574498();
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1004FDE60(uint64_t result)
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

uint64_t sub_1004FDF20()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004FDF58()
{

  return swift_deallocObject();
}

uint64_t sub_1004FDF90(uint64_t a1, uint64_t a2)
{
  v3 = sub_10056CC18();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v8 = &v17 - v7;
  if (!a2)
  {
    goto LABEL_4;
  }

  sub_10056CBD8();
  sub_10056CBE8();
  (*(v4 + 8))(v6, v3);
  v9 = sub_10056CB38();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001036C(v8, &qword_1006F9F70, &unk_1005A7B70);
LABEL_4:
    v11 = 1;
    return v11 & 1;
  }

  v12 = sub_10056CB18();
  v14 = v13;
  (*(v10 + 8))(v8, v9);
  if (qword_1006F9D88 != -1)
  {
    swift_once();
  }

  v15 = sub_1001B50F0(v12, v14, qword_1006FECB8);

  v11 = v15 ^ 1;
  return v11 & 1;
}

Swift::Int sub_1004FE1C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100009DCC(&qword_1006FA638, &qword_1005A8608);
    v3 = sub_100573EB8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_100574678();
      sub_100574688(0);
      if (v10 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v10;
      }

      sub_1005746B8(*&v11);
      result = sub_1005746C8();
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

_UNKNOWN **sub_1004FE31C(uint64_t a1, uint64_t a2)
{
  v24[1] = a1;
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v4 = v24 - v3;
  v5 = sub_10056CC18();
  v6 = *(v5 - 8);
  __chkstk_darwin();
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10056CB38();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = v24 - v13;
  __chkstk_darwin();
  if (!a2)
  {
    return &off_1006AFD10;
  }

  v16 = v24 - v15;

  sub_10056CBD8();
  sub_10056CBE8();
  (*(v6 + 8))(v8, v5);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_10001036C(v4, &qword_1006F9F70, &unk_1005A7B70);
    return &off_1006AFD10;
  }

  v18 = v16;
  (*(v10 + 32))(v16, v4, v9);
  (*(v10 + 16))(v14, v16, v9);
  sub_10056CB28();
  sub_1005027F8(&qword_1006FA720, &type metadata accessor for Locale.LanguageCode, &protocol conformance descriptor for Locale.LanguageCode);
  v19 = sub_1005727E8();
  v20 = *(v10 + 8);
  v20(v12, v9);
  if (v19 & 1) != 0 || (sub_10056CB28(), v21 = sub_1005727E8(), v20(v12, v9), (v21) || (sub_10056CB28(), v22 = sub_1005727E8(), v20(v12, v9), (v22))
  {
    v20(v14, v9);
  }

  else
  {
    sub_10056CB28();
    v23 = sub_1005727E8();
    v20(v12, v9);
    v20(v14, v9);
    if ((v23 & 1) == 0)
    {
      v20(v18, v9);
      return &off_1006AFCE8;
    }
  }

  v20(v18, v9);
  return &off_1006AFCC0;
}

uint64_t sub_1004FE768()
{

  return swift_deallocObject();
}

void sub_1004FE7A0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_100574178())
    {
LABEL_3:
      sub_100009DCC(&qword_1006FA640, &qword_1005A8610);
      v3 = sub_100573EB8();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_100574178();
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
      v8 = sub_100573F58();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_100573A48(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_100573A58();

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
      v25 = sub_100573A48(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_100573A58();

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

char *sub_1004FEA90(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, char a6, char a7)
{
  v7 = a5;
  v8 = a4;
  v9 = a2;
  v140 = a1;
  v141 = _swiftEmptyArrayStorage;
  if ((a7 & 1) == 0)
  {
    v131 = _swiftEmptyArrayStorage;
    v86 = qword_1006F9D98;

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
    v114 = sub_100572A38();
    v16 = (v15 & 1) != 0 ? v8 : v117;
    v17 = (v15 & 1) != 0 ? v8 : v12;
    v18 = sub_100572A38();
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
    v25 = sub_100009DCC(&qword_1006FA6C0, &qword_1005A8680);
    Array.extractFirst(where:)(v25, &v134);
    v10 = a3;
    v26 = v134;
    sub_100572B58();
    v27 = sub_100572758();

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
          sub_100572B88();
          v35 = sub_1005729D8();
          v37 = v36;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_1004F6BC8(0, v125[2] + 1, 1, v125);
          }

          v39 = v125[2];
          v38 = v125[3];
          v9 = a2;
          if (v39 >= v38 >> 1)
          {
            v125 = sub_1004F6BC8((v38 > 1), v39 + 1, 1, v125);
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
    sub_100572B88();
    v123 = sub_1005729D8();
    v99 = v77;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v125 = sub_1004F6BC8(0, v125[2] + 1, 1, v125);
    }

    v79 = v125[2];
    v78 = v125[3];
    if (v79 >= v78 >> 1)
    {
      v125 = sub_1004F6BC8((v78 > 1), v79 + 1, 1, v125);
    }

    v125[2] = v79 + 1;
    v80 = &v125[5 * v79];
    v80[4] = v76;
    v80[5] = v123;
    v80[6] = v99;
    v80[7] = v111;
    v80[8] = v118;
    sub_100572B88();
    v124 = sub_1005729D8();
    v82 = v81;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1004F6A80(0, v7[2] + 1, 1, v7);
    }

    v84 = v7[2];
    v83 = v7[3];
    if (v84 >= v83 >> 1)
    {
      v7 = sub_1004F6A80((v83 > 1), v84 + 1, 1, v7);
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
    if (v32 == sub_100572A48() >> 14 && v13)
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
      sub_100572A38();
      sub_100572B88();
      v48 = sub_1005729D8();
      v50 = v49;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = sub_1004F6BC8(0, v125[2] + 1, 1, v125);
      }

      v52 = v125[2];
      v51 = v125[3];
      if (v52 >= v51 >> 1)
      {
        v125 = sub_1004F6BC8((v51 > 1), v52 + 1, 1, v125);
      }

      v125[2] = v52 + 1;
      v53 = &v125[5 * v52];
      v53[4] = v116;
      v53[5] = v48;
      v53[6] = v50;
      v53[7] = v45;
      v53[8] = v47;
      sub_100572A38();
      sub_100572B88();
      v9 = v54;
      v55 = sub_1005729D8();
      v57 = v56;

      v7 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1004F6A80(0, v42[2] + 1, 1, v42);
      }

      v59 = v7[2];
      v58 = v7[3];
      v130 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v7 = sub_1004F6A80((v58 > 1), v130, 1, v7);
      }

      v7[2] = v130;
      v60 = &v7[5 * v59];
      v60[4] = v55;
      v60[5] = v57;
      v60[6] = v125;
      v60[7] = v107;
      v60[8] = v103;
      v139 = _swiftEmptyArrayStorage;
      sub_1004F7CC0(0, v130, 0);
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
        sub_1004F5894(&v131, v63 & 1, &v134);
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
          sub_1004F7CC0((v71 > 1), v72 + 1, 1);
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
  UnfairLock.locked<A>(_:)(sub_1005044E4);
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

      sub_1004F4ED0(*(v93 - 2), v94, a2, a3, &v140, v8, v7, &v141);
      v93 += 2;
      v89 = v95;
    }

    while (v88 != v95);
  }

  swift_beginAccess();
  v97 = v141;

  return v97;
}

char *sub_1004FF784(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [a1 words];
  if (v6)
  {
    v7 = v6;
    sub_1000D3B98(0, &qword_1006FA6B8, MSVLyricsWord_ptr);
    sub_100572D28();

    v8 = sub_100009DCC(&qword_1006FA6C0, &qword_1005A8680);
    v9 = sub_100010BC0(&qword_1006FA708, &qword_1006FA6C0, &qword_1005A8680, &protocol conformance descriptor for [A]);
    v10 = Sequence.exclude(_:)(sub_1004F5EB8, 0, v8, v9);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  type metadata accessor for Lyrics(0);
  v11 = sub_1004FDF90(a2, a3);
  v12 = sub_1004FE31C(a2, a3);
  v13 = [a1 primaryVocalText];
  v14 = [v13 string];

  v15 = sub_1005728D8();
  v17 = v16;

  v18 = [a1 lyricsText];
  v19 = [v18 string];

  v20 = sub_1005728D8();
  v22 = v21;

  [a1 endTime];
  [a1 startTime];
  v23 = v12[2];
  v24 = (v12 + 4);
  do
  {
    v25 = v23;
    if (v23-- == 0)
    {
      break;
    }

    v27 = *v24++;
  }

  while (v27 != 2);
  v28 = v25 != 0;

  v29 = sub_1004FEA90(v10, v15, v17, v20, v22, v28, v11 & 1);

  return v29;
}

BOOL sub_1004FF9FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_10056CC18();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_opt_self();
  v7 = sub_100572898();
  v8 = [v6 dominantLanguageForString:v7];

  if (!v8)
  {
    return 0;
  }

  sub_1005728D8();
  sub_10056CBD8();
  v9 = sub_10056CBF8();

  (*(v3 + 8))(v5, v2);
  return v9 == 2;
}

void sub_1004FFB38(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = [a1 subwords];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  sub_1000D3B98(0, &qword_1006FA6B8, MSVLyricsWord_ptr);
  v11 = sub_100572D28();

  if (v11 >> 62)
  {
    if (sub_100574178())
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
    v12 = sub_100573F58();
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
    v25 = v26;
    goto LABEL_23;
  }

  v17 = v16;
  sub_1000D3B98(0, &qword_1006FA6B8, MSVLyricsWord_ptr);
  v18 = sub_100572D28();

  if (!(v18 >> 62))
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_14;
    }

    goto LABEL_21;
  }

  v19 = sub_100574178();
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
    v22 = sub_100573F58();
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
  v27 = sub_1004FDF90(a2, a3);

  v28 = a1;
  v29 = [v28 lyricsText];
  v30 = [v29 string];

  v31 = sub_1005728D8();
  v33 = v32;

  v34 = [v28 characterRange];
  v60 = v35;
  v61 = v34;
  v36 = [v28 lyricsText];

  v37 = [v36 string];
  v38 = sub_1005728D8();
  v40 = v39;

  v41 = sub_1004FF9FC(v38, v40);

  v42 = [v28 subwords];
  if (v42)
  {
    v43 = v42;
    type metadata accessor for Lyrics(0);
    sub_1000D3B98(0, &qword_1006FA6B8, MSVLyricsWord_ptr);
    v44 = sub_100572D28();

    v45 = [v28 lyricsText];
    v46 = a4;
    v47 = v41;
    v48 = v33;
    v49 = v31;
    v50 = [v45 string];

    v59 = sub_1005728D8();
    v52 = v51;

    v53 = [v28 lyricsText];
    v54 = [v53 string];

    v55 = sub_1005728D8();
    v57 = v56;

    v31 = v49;
    v33 = v48;
    v41 = v47;
    a4 = v46;
    v58 = sub_1004FEA90(v44, v59, v52, v55, v57, 0, v27 & 1);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v58 = _swiftEmptyArrayStorage;
  }

  *a4 = v4;
  *(a4 + 8) = v25;
  *(a4 + 16) = v31;
  *(a4 + 24) = v33;
  *(a4 + 32) = v61;
  *(a4 + 40) = v60;
  *(a4 + 48) = v41;
  *(a4 + 56) = v58;
}

void *sub_1004FFFD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BOOL4 a6, uint64_t a7, uint64_t a8)
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
  v190 = sub_10056CC18();
  v12 = *(v190 - 8);
  __chkstk_darwin();
  v159 = &v153 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v155 = &v153 - v14;
  sub_100009DCC(&qword_1006F9F70, &unk_1005A7B70);
  __chkstk_darwin();
  v154 = &v153 - v15;
  sub_100009DCC(&qword_1006F9F68, &qword_1005A7B68);
  __chkstk_darwin();
  v173 = &v153 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = &v153 - v17;
  __chkstk_darwin();
  v196 = &v153 - v19;
  *&v202[0] = a1;
  KeyPath = swift_getKeyPath();
  v21 = sub_100009DCC(&qword_1006FA710, &qword_1005A86F8);
  v22 = sub_100010BC0(&qword_1006FA718, &qword_1006FA710, &qword_1005A86F8, &protocol conformance descriptor for [A]);
  v23 = Sequence.sorted<A>(by:comparator:)(KeyPath, sub_1004F2A54, 0, v21, v22, &protocol witness table for Double);

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
    v28 = &selRef_setDialogId_;
    v198 = _swiftEmptyArrayStorage;
    v188 = v18;
    while (1)
    {
      if (v168)
      {
        v29 = sub_100573F58();
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
          v24 = sub_100574178();
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
      sub_10050693C(v200, v33);
      swift_endAccess();

      v34 = [v33 v28[223]];
      if (!v34)
      {

        goto LABEL_19;
      }

      v35 = v34;
      v36 = sub_1005728D8();
      v38 = v37;

      v39 = v36;
      if (v36 == 0x6E6F73726570 && v38 == 0xE600000000000000 || (sub_100574498() & 1) != 0)
      {
        v40 = [v33 identifier];
        if (v40)
        {
          v41 = v40;
          v197 = sub_1005728D8();
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
            v49 = sub_1005728D8();
            v51 = v50;
          }

          else
          {
            v49 = 0;
            v51 = 0;
          }

          v27 = v46;
          v28 = &selRef_setDialogId_;
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
              v52 = sub_100574498();

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

      v53 = sub_100574498();
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

      v123 = sub_100574498();

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
        v59 = sub_1005728D8();
        v180 = v60;
        v181 = v59;
      }

      else
      {
        v180 = 0;
        v181 = 0;
      }

      v184 = v27;
      v61 = [v189 v28[223]];
      v62 = &selRef_primaryVocalText;
      if (v61 != 2)
      {
        v62 = &selRef_lyricsText;
      }

      v63 = v199;
      v64 = [v199 *v62];
      v65 = [v64 string];

      v193 = sub_1005728D8();
      v194 = v66;

      v67 = [v63 words];
      if (v67)
      {
        v68 = v67;
        sub_1000D3B98(0, &qword_1006FA6B8, MSVLyricsWord_ptr);
        v69 = sub_100572D28();

        *&v201[0] = v69;
        v70 = sub_100009DCC(&qword_1006FA6C0, &qword_1005A8680);
        v71 = sub_100010BC0(&qword_1006FA708, &qword_1006FA6C0, &qword_1005A8680, &protocol conformance descriptor for [A]);
        v72 = v70;
        v73 = v175;
        v74 = Sequence.exclude(_:)(sub_1004F5EB8, 0, v72, v71);
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
      v23 = sub_100572898();
      v79 = [v167 dominantLanguageForString:v23];

      if (v79)
      {
        sub_1005728D8();
        sub_10056CBD8();

LABEL_60:
        v191(v18, 0, 1, v25);
        sub_10008B71C(v18, v26, &qword_1006F9F68, &qword_1005A7B68);
        goto LABEL_61;
      }

      v80 = [v189 language];
      if (v80)
      {
        v81 = v80;
        v23 = sub_1005728D8();

        sub_10056CBD8();
        v26 = v196;
        goto LABEL_60;
      }

LABEL_61:
      if ([v189 v28[223]] == 2)
      {
        v82 = [objc_opt_self() standardUserDefaults];
        v23 = sub_100572898();
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
            sub_10056CBE8();
            v89 = v87;
            v90 = v88;
            (*v161)(v89, v25);
            v91 = sub_10056CB38();
            v92 = *(v91 - 8);
            if ((*(v92 + 48))(v90, 1, v91) == 1)
            {
              sub_10001036C(v90, &qword_1006F9F70, &unk_1005A7B70);
              v85 = 0;
              v86 = 0;
            }

            else
            {
              v93 = v90;
              v94 = sub_10056CB18();
              v86 = v95;
              v96 = v93;
              v18 = v188;
              (*(v92 + 8))(v96, v91);
              v85 = v94;
            }

            v25 = v190;
          }

          v97 = v199;
          v23 = sub_1004FF784(v199, v85, v86);

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
              v102 = sub_1005728D8();
              v23 = v103;
            }

            else
            {

              v102 = 0;
              v23 = 0;
            }

            sub_1004FFB38(v99, v102, v23, v202);
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
          sub_10001036C(v201, &qword_1006F9F60, &qword_1005A7B60);
        }
      }

      v109 = v173;
      sub_10000CC8C(v196, v173, &qword_1006F9F68, &qword_1005A7B68);
      if ((*v176)(v109, 1, v25) == 1)
      {
        sub_10001036C(v109, &qword_1006F9F68, &qword_1005A7B68);
        v110 = v160;
      }

      else
      {
        v111 = v159;
        (*v157)(v159, v109, v25);
        v112 = sub_10056CBF8();
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
        v12 = sub_100574178();
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
        v118 = sub_100573F58();
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
        v122 = sub_100573F58();
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
      sub_10000CC8C(v196, v18, &qword_1006F9F68, &qword_1005A7B68);
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

      sub_10008B71C(v188, v140 + v194, &qword_1006F9F68, &qword_1005A7B68);
      v141 = (v140 + v139[13]);
      *v141 = v131;
      v141[1] = v132;
      *(v140 + v139[8]) = v182;
      *(v140 + v139[9]) = v171;
      v142 = (v140 + v139[14]);
      v143 = v179;
      *v142 = sub_100504618;
      v142[1] = v143;
      v144 = (v140 + v139[15]);
      v145 = v178;
      *v144 = sub_100504740;
      v144[1] = v145;
      v146 = (v140 + v139[16]);
      *v146 = sub_100504680;
      v146[1] = v130;
      v147 = (v140 + v139[17]);
      *v147 = sub_100504694;
      v147[1] = v135;
      v148 = (v140 + v139[18]);
      *v148 = sub_1005046E8;
      v148[1] = v137;
      sub_1005020B4(v140, v187, type metadata accessor for Lyrics.TextLine);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v198 = sub_1004F7058(0, v198[2] + 1, 1, v198, &qword_1006FA650, &qword_1005A8620, type metadata accessor for Lyrics.TextLine);
      }

      v23 = v174;
      v149 = v184;
      v28 = &selRef_setDialogId_;
      v12 = v198[2];
      v150 = v198[3];
      v25 = v190;
      v18 = v188;
      v26 = v196;
      if (v12 >= v150 >> 1)
      {
        v198 = sub_1004F7058((v150 > 1), v12 + 1, 1, v198, &qword_1006FA650, &qword_1005A8620, type metadata accessor for Lyrics.TextLine);
      }

      v151 = v198;
      v198[2] = v12 + 1;
      sub_100502568(v187, v151 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v12, type metadata accessor for Lyrics.TextLine);
      sub_10050211C(v186, type metadata accessor for Lyrics.TextLine);
      sub_10001036C(v26, &qword_1006F9F68, &qword_1005A7B68);

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

uint64_t sub_100501390()
{

  return swift_deallocObject();
}

uint64_t sub_1005013D0()
{

  return swift_deallocObject();
}

void *sub_100501430(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  sub_100009DCC(&qword_1006FA668, &qword_1005A8638);
  result = sub_100574198();
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
      v24 = sub_1005728D8();
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

uint64_t sub_100501640(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v95 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_100573E08() > 1)
    {
      v93 = v2;
      v90 = 0;
      v3 = &_swiftEmptySetSingleton;
      v103 = &_swiftEmptySetSingleton;

      sub_100573DF8();
      v4 = sub_100573E28();
      if (v4)
      {
        v5 = v4;
        sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
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
          v10 = sub_1005728D8();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = sub_100574498();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v98;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            sub_100507938(v16 + 1);
          }

          v3 = v103;
          v17 = sub_100573A48(v103[5]);
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
          v6 = sub_100573E28();
        }

        while (v6);
      }

      v38 = v95;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v91 = sub_100573E08();
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
      v45 = sub_1005728D8();
      v47 = v46;

      if (v45 == 0x6E6F73726570 && v47 == 0xE600000000000000)
      {

        break;
      }

      v49 = sub_100574498();
    }

    while ((v49 & 1) == 0);
    *&v92[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
  }

  while (!__OFADD__(v94++, 1));
  __break(1u);
LABEL_55:
  v38 = v95;
  v3 = sub_10051ED74(v92, v91, v94, v95);
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
      sub_100573DF8();
      sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
      sub_10050447C();
      sub_100573138();
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
          v60 = sub_100573E28();
          if (!v60 || (v97 = v60, sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr), swift_dynamicCast(), (v59 = v103) == 0))
          {
LABEL_81:
            sub_10025A994(v38);
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
      v15 = sub_1005728D8();
      v65 = v64;

      if (v15 == 0x70756F7267 && v65 == 0xE500000000000000)
      {
        break;
      }

      v15 = sub_100574498();

      v38 = v63;
      if (v15)
      {
        goto LABEL_118;
      }
    }

    v38 = v63;
LABEL_118:
    sub_10025A994(v38);
    LODWORD(v92) = 0;
LABEL_82:
    v67 = v95;
    if (v93)
    {
      swift_unknownObjectRetain();
      sub_100573DF8();
      sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr);
      sub_10050447C();
      sub_100573138();
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
      v78 = sub_100573E28();
      if (!v78 || (v96 = v78, sub_1000D3B98(0, &qword_1006FA038, MSVLyricsAgent_ptr), swift_dynamicCast(), (v77 = v97) == 0))
      {
LABEL_106:
        sub_10025A994(v67);
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
          v3 = sub_1004FCBF4(v87, v91, v7, sub_1004F5B1C);
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
  v81 = sub_1005728D8();
  v83 = v82;

  if (v81 != 0x726568746FLL || v83 != 0xE500000000000000)
  {
    v15 = sub_100574498();

    v67 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v67 = v7;
LABEL_120:
  sub_10025A994(v67);
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

uint64_t sub_1005020B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10050211C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10050217C()
{

  return swift_deallocObject();
}

_BYTE **sub_1005022C0(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_100502300()
{

  return swift_deallocObject();
}

void sub_100502348(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = sub_1004F7708(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_1005023A4(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    sub_100009DCC(&qword_1006FA688, &unk_1005A9E40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_10057B510;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    sub_100573E48();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v12._countAndFlagsBits = 8236;
        v12._object = 0xE200000000000000;
        sub_100572A98(v12);
        sub_100009DCC(&qword_1006FA688, &unk_1005A9E40);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_10057B510;
        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = v9;
        *(v10 + 40) = v8;

        sub_100573E48();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  sub_100572A98(v13);
  return 91;
}

uint64_t sub_100502568(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100502600()
{
  result = qword_1006FA008;
  if (!qword_1006FA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006FA008);
  }

  return result;
}