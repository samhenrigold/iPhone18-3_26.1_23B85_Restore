uint64_t sub_100C8B404(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v7 = sub_100C973A8(&v32, a1, 0, 1, v5, sub_100C9E394, sub_100C9BC20, v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v32;
  if (v32 == v9)
  {
    sub_100C975D8(a1, sub_100C9BC20);
    return v7;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    _s4LineCMa();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = v7;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    sub_100C95FA8(v1, v15, i, v3, _s4LineCMa);
  }

  _s4LineCMa();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  sub_100C9DB18(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

uint64_t sub_100C8B79C(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v7 = sub_100C973A8(&v32, a1, 0, 1, v5, sub_100C9E738, sub_100C9BDB0, v6);
  v8 = a1 >> 62;
  if (a1 >> 62)
  {
    v9 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = v32;
  if (v32 == v9)
  {
    sub_100C975D8(a1, sub_100C9BDB0);
    return v7;
  }

  if (v32 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v8)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (_CocoaArrayWrapper.endIndex.getter() < 0)
    {
      goto LABEL_52;
    }

    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 < v10)
  {
    goto LABEL_48;
  }

  v12 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v10)
  {
    _s4WordCMa();

    v13 = 0;
    do
    {
      v14 = v13 + 1;
      _ArrayBuffer._typeCheckSlowPath(_:)(v13);
      v13 = v14;
    }

    while (v10 != v14);
    if (!v8)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = _CocoaArrayWrapper.subscript.getter();
    i = v16;
    v3 = v17;
    if ((v17 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v8)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v15 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v10) | 1;
LABEL_23:
  v30 = v15;
  v31 = a1 & 0xC000000000000001;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = _swiftEmptyArrayStorage;
  }

  v20 = v19[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v20 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v12 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v18)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v33 = v7;
    v34 = i;
    if (v9 < v10)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v8)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v21 < v9)
    {
      goto LABEL_50;
    }

    if (!v12)
    {

      goto LABEL_41;
    }

    if (v10 < v9)
    {
      break;
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_unknownObjectRelease();
    v15 = v30;
    v12 = v31;
LABEL_22:
    sub_100C95FA8(v1, v15, i, v3, _s4WordCMa);
  }

  _s4WordCMa();

  v22 = v10;
  do
  {
    v23 = v22 + 1;
    _ArrayBuffer._typeCheckSlowPath(_:)(v22);
    v22 = v23;
  }

  while (v9 != v23);
LABEL_41:

  if (v8)
  {
    _CocoaArrayWrapper.subscript.getter();
    v24 = v26;
    v10 = v27;
    v25 = v28;
  }

  else
  {
    v24 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v25 = (2 * v9) | 1;
  }

  sub_100C9DB18(v24, v10, v25);
  swift_unknownObjectRelease();

  return v33;
}

void sub_100C8BB34(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v4 = sub_100C974F4(&v20, a1, 0, 1, v2, v3);
  v5 = *(a1 + 16);
  v6 = v20;
  if (v20 != v5)
  {
    if ((v20 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v5 < v20)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      sub_100C96130(a1, a1 + 32, 0, (2 * v20) | 1);
      v21 = v4;
      v22 = v7;
      if (*(a1 + 16) >= v5)
      {

        for (i = a1 + 56 * v6 + 48; ; i += 56)
        {
          if (v6 >= v5)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v9 = *(i + 16);
          v24 = *i;
          v25 = v9;
          v23 = *(i - 16);
          v26 = *(i + 32);
          v27 = v24;
          v28 = v9;
          v10 = v21;
          v11 = v22;
          v12 = *(v22 + 16);
          if (v21)
          {
            sub_100118E9C(&v27, v19);
            sub_1000089F8(&v28, v19, &qword_1011BC0A0, &unk_100F0EFD0);

            sub_100C75814(&v23, v11 + 32, v12, (v10 + 16), v10 + 32);
            v14 = v13;
            v16 = v15;

            if ((v14 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_100C965F0(v23.n128_f64, v22 + 32, v12);
            v18 = v17;
            sub_100118E9C(&v27, v19);
            sub_1000089F8(&v28, v19, &qword_1011BC0A0, &unk_100F0EFD0);
            if ((v18 & 1) == 0)
            {
              goto LABEL_7;
            }

            v16 = 0;
          }

          sub_100C75E34(&v23, v16);
LABEL_7:
          ++v6;
          sub_100015BB0(&v27);
          sub_1000095E8(&v28, &qword_1011BC0A0, &unk_100F0EFD0);
          if (v5 == v6)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

void sub_100C8BD44(void *a1, uint64_t a2, CFIndex a3, NSObject *a4, char a5, double *a6, int64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, uint64_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20, uint64_t a21)
{
  rect = *&a17;
  swift_beginAccess();
  v208 = a6;
  width = *a6 + a10;
  v215 = a7;
  v211 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v33 = String._bridgeToObjectiveC()();

  v212 = a1;
  v34 = [a1 characterRange];
  v36 = [v33 substringWithRange:{v34, v35}];

  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v223 = v37;
  v224 = v39;
  v221 = 10;
  v222 = 0xE100000000000000;
  v219 = 0;
  v220 = 0xE000000000000000;
  v185 = sub_100009988();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v40 = String.trim()();

  swift_beginAccess();
  v41 = *(a8 + 8);
  v42 = *(v41 + 16);
  swift_beginAccess();
  v43 = 32;
  while (v42)
  {
    v44 = *(v41 + v43);
    if (*(*(a15 + 8) + 16))
    {
      if (*(v44 + 24) != v40._countAndFlagsBits || *(v44 + 32) != v40._object)
      {
        v43 += 8;
        --v42;
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v46 = swift_retain_n();
    sub_100C8D73C(v46);
    swift_endAccess();

    goto LABEL_11;
  }

  v44 = 0;
LABEL_11:
  [v212 boundsWithType:0 options:{0, &type metadata for String, v185, v185, v185}];
  MinX = v47;
  v50 = v49;
  v51 = v215;
  v52 = *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v54 = *v211;
  v53 = v211[1];
  swift_beginAccess();
  v55 = *a16;
  v210 = a5;
  v205 = a3;
  if (a5)
  {
    v56 = 0;
  }

  else
  {
    v56 = a3;
  }

  if (v44)
  {
    swift_beginAccess();
    v57 = *(v44 + 16);
  }

  else
  {
    v57 = _swiftEmptyArrayStorage;
  }

  sub_100C9C4F8(a9, width, MaxX, y, MinX, v50, a2, v52, v54, v53, v55, v56, v57);
  v59 = v58;
  v61 = v60;

  swift_beginAccess();
  *a17 = v59;

  v62 = a16;
  swift_beginAccess();
  *a16 = v61;
  v218 = _swiftEmptyArrayStorage;
  v63 = String.lowercased()();
  v64 = v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v65 = String.lowercased()();
    if (v63._countAndFlagsBits == v65._countAndFlagsBits && v63._object == v65._object)
    {

LABEL_133:
      v67 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v80 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v80 == 0.0)
      {
        goto LABEL_196;
      }

      v82 = width;
      v196 = y;
      v133 = *(v80 + 16);

      [v133 usageBoundsForTextContainer];
      x = v231.origin.x;
      y = v231.origin.y;
      width = v231.size.width;
      height = v231.size.height;
      MinX = CGRectGetWidth(v231);
      if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v134 = _CocoaArrayWrapper.endIndex.getter();
        if (!v134)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v134 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v134)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v196;
            width = v82;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v89 = __OFSUB__(v134, 1);
      v135 = v134 - 1;
      if (v89)
      {
        goto LABEL_169;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v135 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v135 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v136 = *(v59 + 8 * v135 + 32);

        goto LABEL_144;
      }

      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
      goto LABEL_178;
    }

    v66 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v66)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v64 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v67 = _swiftEmptyArrayStorage;
  v197 = a18[1];
  if (!v197)
  {
    goto LABEL_134;
  }

  v68 = *a18;
  v198 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v188 = *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v188 == 2)
  {

    sub_100B46188(v68, v197);

    goto LABEL_133;
  }

  swift_beginAccess();
  v69 = v68;
  v70 = *a17;

  v186 = v69;
  sub_100B46188(v69, v197);

  v71 = a3;
  v72 = a4;
  if (v210)
  {
    v71 = CTLineRef.stringRange.getter();
    v72 = v73;
  }

  swift_beginAccess();
  v74.n128_f64[0] = a13;
  sub_100C8E9AC(v186, v197, v70, v59, v71, v72, *a16, &v223, v74, a14);

  v75 = v224;
  if (!v224)
  {

    sub_100C8A7F8(0, 1, a13, a14);

    return;
  }

  if (v224 == 1)
  {

    goto LABEL_133;
  }

  MinX = v226;
  v76 = v225;
  v77 = v223;
  swift_beginAccess();
  v67 = *a18;
  v78 = a18[1];
  *a18 = v77;
  a18[1] = v75;

  sub_100B46144(v67, v78);
  v195 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v188 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v79 = *(v76 + 16);
  if (!v79)
  {

    sub_1000095E8(&v223, &qword_1011BC548, &qword_100F0F590);
    goto LABEL_133;
  }

  v190 = v79 != 1;
  v194 = v215 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v187 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v193 = v76 + 32;
  swift_beginAccess();
  v80 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v81 = 0;
  v82 = a9;
  v189 = width;
  x = width;
  rect = MaxX;
  height = y;
  v191 = v79;
  v192 = v76;
  v196 = y;
  while (1)
  {
    if (v81 >= *(v76 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v85 = (v193 + 16 * v81);
    v80 = *v85;
    v86 = v85[1];

    v204 = v86;
    v227.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v227) + *(v194 + 328);
    *v208 = *v208 + width;
    v87 = v80 >> 62;
    if (*(v51 + v195) != 2 || *(v51 + v187) == (v188 & 1))
    {
LABEL_52:
      v229.origin.x = a9;
      v229.origin.y = v189;
      v229.size.width = MaxX;
      v229.size.height = y;
      MinX = CGRectGetMinX(v229);
      v230.origin.x = v82;
      v230.origin.y = x;
      v230.size.width = rect;
      v230.size.height = height;
      x = CGRectGetMaxY(v230);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v87)
    {
      v88 = _CocoaArrayWrapper.endIndex.getter();
      if (!v88)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v88 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v88)
      {
        goto LABEL_52;
      }
    }

    v89 = __OFSUB__(v88, 1);
    v90 = v88 - 1;
    if (v89)
    {
      goto LABEL_173;
    }

    if ((v80 & 0xC000000000000001) != 0)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v90 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v91 = *(v80 + 8 * v90 + 32);
    }

    MinX = CGRectGetMaxX(*(v91 + 176));
    v228.origin.x = v82;
    v228.origin.y = x;
    v228.size.width = rect;
    v228.size.height = height;
    x = CGRectGetMaxY(v228);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v196;
LABEL_53:
    v217[0] = v80;
    v92 = *(v51 + v198);
    v203 = v81;
    if (v92 == 2)
    {

      v93 = v80;
    }

    else
    {

      v93 = v80;
      if (v92)
      {
        sub_100C8D7C8();
        v93 = v217[0];
      }
    }

    if (v93 >> 62)
    {
      break;
    }

    if (*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v97 = 0;
    v101 = 0;
LABEL_77:
    v102 = String._bridgeToObjectiveC()();
    v201 = v97;
    v202 = v101;
    v67 = [v102 substringWithRange:{v101, v97}];

    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v199 = v104;
    v200 = v103;

    _s4LineCMa();
    v51 = swift_allocObject();
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 16) = *&v80;
    if (v87)
    {
      v105 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v105 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v106 = _swiftEmptyArrayStorage;
    v107 = v105 & ~(v105 >> 63);
    if (v105)
    {
      v216[0] = _swiftEmptyArrayStorage;

      sub_100C71420(0, v105 & ~(v105 >> 63), 0);
      if (v105 < 0)
      {
        goto LABEL_162;
      }

      v106 = v216[0];
      if ((v80 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v105; ++i)
        {
          v109 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          if (*(v109 + 16))
          {
            v110 = *(v109 + 32);
          }

          else
          {
            v110 = 0;
          }

          swift_unknownObjectRelease();
          v216[0] = v106;
          v112 = *(v106 + 2);
          v111 = *(v106 + 3);
          if (v112 >= v111 >> 1)
          {
            sub_100C71420((v111 > 1), v112 + 1, 1);
            v106 = v216[0];
          }

          *(v106 + 2) = v112 + 1;
          *&v106[8 * v112 + 32] = v110;
        }
      }

      else
      {
        v113 = v80 + 32;
        v114 = v105;
        do
        {
          v115 = *(*v113 + 48);
          if (*(v115 + 16))
          {
            v116 = *(v115 + 32);
          }

          else
          {
            v116 = 0;
          }

          v216[0] = v106;
          v118 = *(v106 + 2);
          v117 = *(v106 + 3);
          if (v118 >= v117 >> 1)
          {
            sub_100C71420((v117 > 1), v118 + 1, 1);
            v106 = v216[0];
          }

          *(v106 + 2) = v118 + 1;
          *&v106[8 * v118 + 32] = v116;
          v113 += 8;
          --v114;
        }

        while (v114);
      }

      v62 = a16;
      v107 = v105 & ~(v105 >> 63);
    }

    else
    {
    }

    v216[0] = v106;

    v67 = 0;
    sub_100C9A8F8(v216);

    if (*(v216[0] + 2))
    {
      MinX = *(v216[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v51 + 64) = MinX;
    if (v105)
    {
      v216[0] = _swiftEmptyArrayStorage;
      sub_100C71420(0, v107, 0);
      if (v105 < 0)
      {
        goto LABEL_163;
      }

      v119 = v216[0];
      if ((v80 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v105; ++j)
        {
          v121 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
          v122 = *(v121 + 16);
          if (v122)
          {
            v123 = *(v121 + 56 * v122 - 16);
          }

          else
          {
            v123 = 0;
          }

          swift_unknownObjectRelease();
          v216[0] = v119;
          v125 = *(v119 + 2);
          v124 = *(v119 + 3);
          if (v125 >= v124 >> 1)
          {
            sub_100C71420((v124 > 1), v125 + 1, 1);
            v119 = v216[0];
          }

          *(v119 + 2) = v125 + 1;
          *&v119[8 * v125 + 32] = v123;
        }
      }

      else
      {
        v126 = v80 + 32;
        do
        {
          v127 = *(*v126 + 48);
          v128 = *(v127 + 16);
          if (v128)
          {
            v129 = *(v127 + 56 * v128 - 16);
          }

          else
          {
            v129 = 0;
          }

          v216[0] = v119;
          v131 = *(v119 + 2);
          v130 = *(v119 + 3);
          if (v131 >= v130 >> 1)
          {
            sub_100C71420((v130 > 1), v131 + 1, 1);
            v119 = v216[0];
          }

          *(v119 + 2) = v131 + 1;
          *&v119[8 * v131 + 32] = v129;
          v126 += 8;
          --v105;
        }

        while (v105);
      }

      v62 = a16;
    }

    else
    {
      v119 = _swiftEmptyArrayStorage;
    }

    v216[0] = v119;

    sub_100C9A8F8(v216);
    v76 = v192;

    v132 = *(v216[0] + 2);
    if (v132)
    {
      MinX = *&v216[0][8 * v132 + 24];
    }

    else
    {
      MinX = 0.0;
    }

    v67 = v200;

    *(v51 + 24) = v200;
    *(v51 + 32) = v199;
    *(v51 + 40) = v202;
    *(v51 + 48) = v201;
    *(v51 + 72) = MinX;
    *(v51 + 80) = height;
    v82 = height;
    *(v51 + 88) = x;
    *(v51 + 96) = rect;
    *(v51 + 104) = width;
    *(v51 + 56) = 1;
    *(v51 + 57) = v190;
    *(v51 + 58) = v188 & 1;
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v67 = *((v218 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v81 = v203 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    height = width;
    v51 = v215;
    if (v203 + 1 == v191)
    {
      v67 = v218;

      sub_1000095E8(&v223, &qword_1011BC548, &qword_100F0F590);
      width = v189;
      goto LABEL_134;
    }
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_76;
  }

LABEL_59:
  v67 = v93 & 0xC000000000000001;
  if ((v93 & 0xC000000000000001) != 0)
  {
    v94 = v62;

    v51 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v94 = v62;
    v51 = *(v93 + 32);
  }

  v62 = *(v51 + 88);
  if (!(v93 >> 62))
  {
    v95 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v95)
    {
      goto LABEL_64;
    }

LABEL_68:

    v97 = 0;
LABEL_74:
    v101 = v62;
    v62 = v94;
    v87 = v80 >> 62;
    goto LABEL_77;
  }

  v95 = _CocoaArrayWrapper.endIndex.getter();
  if (!v95)
  {
    goto LABEL_68;
  }

LABEL_64:
  v89 = __OFSUB__(v95, 1);
  v96 = v95 - 1;
  if (!v89)
  {
    if (v67)
    {
      v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v96 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v67 = *(v93 + 8 * v96 + 32);
    }

    v98 = *(v67 + 88);
    v99 = *(v67 + 96);

    v89 = __OFADD__(v98, v99);
    v100 = v98 + v99;
    if (v89)
    {
      goto LABEL_167;
    }

    v67 = *(v51 + 88);

    v97 = v100 - v67;
    if (__OFSUB__(v100, v67))
    {
      goto LABEL_168;
    }

    goto LABEL_74;
  }

  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  v136 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v136 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v136 + 176));
  if (v67 >> 62)
  {
LABEL_178:
    v137 = _CocoaArrayWrapper.endIndex.getter();
    if (!v137)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v80;
    if (v137 < 1)
    {
      goto LABEL_266;
    }

    v138 = 0;
    v139 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v140 = v67 & 0xC000000000000001;
    v141 = v67;
    do
    {
      if (v140)
      {
        v142 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v142 = *(v67 + 8 * v138 + 32);
      }

      if (*(v142 + 58) == *(v215 + v139))
      {
        v232.origin.x = *(v142 + 80);
        v232.origin.y = *(v142 + 88);
        v240.size.width = *(v142 + 96);
        v232.size.height = *(v142 + 104);
        *(v142 + 96) = MaxX;
        v232.size.width = MaxX;
        v240.origin.x = v232.origin.x;
        v240.origin.y = v232.origin.y;
        v240.size.height = v232.size.height;
        if (!CGRectEqualToRect(v232, v240))
        {
          *(v142 + 128) = 0;
        }
      }

      ++v138;
      v67 = v141;
    }

    while (v137 != v138);

    v62 = a16;
    v51 = v215;
    *&v80 = rect;
    goto LABEL_180;
  }

  v137 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v137)
  {
    goto LABEL_150;
  }

LABEL_179:

  v51 = v215;
LABEL_180:
  v233.origin.x = x;
  v233.origin.y = y;
  v233.size.width = width;
  v233.size.height = height;
  v143 = CGRectGetWidth(v233);
  v234.origin.x = a9;
  width = v82;
  v234.origin.y = v82;
  v234.size.width = MaxX;
  y = v196;
  v234.size.height = v196;
  v144 = CGRectGetWidth(v234);
  v235.origin.x = a9;
  v235.origin.y = v82;
  v235.size.width = MaxX;
  v235.size.height = v196;
  v145 = CGRectGetMaxX(v235) - a13;
  if (v145 > 0.0)
  {
    a9 = v145;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v143 - v144;
  if (v67 >> 62)
  {
    goto LABEL_263;
  }

  v146 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v146)
  {
    goto LABEL_185;
  }

LABEL_195:
  while (2)
  {
    while (2)
    {

LABEL_196:
      CTLineRef.stringRange.getter();
      v80 = v152;
      v153 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v80))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v80;
      if (!v44)
      {
        v212 = [v212 characterRange];
        rect = v156;
        v153 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        _s4LineCMa();
        *&v80 = COERCE_DOUBLE(swift_allocObject());
        *(v80 + 112) = 0;
        *(v80 + 120) = 0;
        *(v80 + 128) = 0;
        *(v80 + 16) = v59;
        if (!(v59 >> 62))
        {
          v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v62 = _CocoaArrayWrapper.endIndex.getter();
LABEL_203:
        v214 = v153;
        v215 = v67;
        if (v62)
        {
          v216[0] = _swiftEmptyArrayStorage;

          sub_100C71420(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_261;
          }

          v157 = v216[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v62; ++k)
            {
              v159 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              if (*(v159 + 16))
              {
                v160 = *(v159 + 32);
              }

              else
              {
                v160 = 0;
              }

              swift_unknownObjectRelease();
              v216[0] = v157;
              v162 = *(v157 + 2);
              v161 = *(v157 + 3);
              if (v162 >= v161 >> 1)
              {
                sub_100C71420((v161 > 1), v162 + 1, 1);
                v157 = v216[0];
              }

              *(v157 + 2) = v162 + 1;
              *&v157[8 * v162 + 32] = v160;
            }
          }

          else
          {
            v170 = v59 + 32;
            v51 = v62;
            do
            {
              v171 = *(*v170 + 48);
              if (*(v171 + 16))
              {
                v172 = *(v171 + 32);
              }

              else
              {
                v172 = 0;
              }

              v216[0] = v157;
              v174 = *(v157 + 2);
              v173 = *(v157 + 3);
              if (v174 >= v173 >> 1)
              {
                sub_100C71420((v173 > 1), v174 + 1, 1);
                v157 = v216[0];
              }

              *(v157 + 2) = v174 + 1;
              *&v157[8 * v174 + 32] = v172;
              v170 += 8;
              --v51;
            }

            while (v51);
          }
        }

        else
        {

          v157 = _swiftEmptyArrayStorage;
        }

        v216[0] = v157;

        v67 = 0;
        sub_100C9A8F8(v216);

        if (*(v216[0] + 2))
        {
          MinX = *(v216[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v80 + 64) = MinX;
        if (v62)
        {
          v216[0] = _swiftEmptyArrayStorage;
          sub_100C71420(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_262;
          }

          v163 = v216[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            v164 = 0;
            v51 = 56;
            do
            {
              v165 = *(specialized _ArrayBuffer._getElementSlowPath(_:)() + 48);
              v166 = *(v165 + 16);
              if (v166)
              {
                v167 = *(v165 + 56 * v166 - 16);
              }

              else
              {
                v167 = 0;
              }

              swift_unknownObjectRelease();
              v216[0] = v163;
              v169 = *(v163 + 2);
              v168 = *(v163 + 3);
              if (v169 >= v168 >> 1)
              {
                sub_100C71420((v168 > 1), v169 + 1, 1);
                v163 = v216[0];
              }

              ++v164;
              *(v163 + 2) = v169 + 1;
              *&v163[8 * v169 + 32] = v167;
            }

            while (v62 != v164);
          }

          else
          {
            v51 = 32;
            do
            {
              v175 = *(*(v59 + v51) + 48);
              v176 = *(v175 + 16);
              if (v176)
              {
                v177 = *(v175 + 56 * v176 - 16);
              }

              else
              {
                v177 = 0;
              }

              v216[0] = v163;
              v179 = *(v163 + 2);
              v178 = *(v163 + 3);
              if (v179 >= v178 >> 1)
              {
                sub_100C71420((v178 > 1), v179 + 1, 1);
                v163 = v216[0];
              }

              *(v163 + 2) = v179 + 1;
              *&v163[8 * v179 + 32] = v177;
              v51 += 8;
              --v62;
            }

            while (v62);
          }
        }

        else
        {

          v163 = _swiftEmptyArrayStorage;
        }

        v216[0] = v163;

        sub_100C9A8F8(v216);
        v62 = a16;
        v155 = a19;

        v180 = *(v216[0] + 2);
        if (v180)
        {
          v181 = *&v216[0][8 * v180 + 24];
        }

        else
        {
          v181 = 0;
        }

        v67 = v215;

        *(v80 + 24) = v40;
        *(v80 + 40) = v212;
        *(v80 + 48) = rect;
        *(v80 + 72) = v181;
        *(v80 + 80) = a9;
        *(v80 + 88) = width;
        *(v80 + 96) = MaxX;
        *(v80 + 104) = y;
        *(v80 + 56) = 0;
        *(v80 + 58) = v214;
        swift_beginAccess();
        sub_100C96220(v80);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v44 + 16) = v59;

      sub_100C9FBB8();
      *(v44 + 24) = v40;

      v242 = *(v44 + 80);
      *(v44 + 80) = a9;
      *(v44 + 88) = width;
      *(v44 + 96) = MaxX;
      *(v44 + 104) = y;
      v237.origin.x = a9;
      v237.origin.y = width;
      v237.size.width = MaxX;
      v237.size.height = y;
      if (!CGRectEqualToRect(v237, v242))
      {
        *(v44 + 128) = 0;
      }

      *(v44 + 40) = [v212 characterRange];
      *(v44 + 48) = v154;
      swift_beginAccess();
      sub_100C96220(v44);
      swift_endAccess();
      swift_beginAccess();
      sub_100C96220(v44);
      swift_endAccess();

      v155 = a19;
LABEL_250:
      v238.origin.x = a9;
      v238.origin.y = width;
      v238.size.width = MaxX;
      v238.size.height = y;
      MinX = CGRectGetWidth(v238);
      swift_beginAccess();
      if (*v155 < MinX)
      {
        v239.origin.x = a9;
        v239.origin.y = width;
        v239.size.width = MaxX;
        v239.size.height = y;
        MinX = CGRectGetWidth(v239);
        swift_beginAccess();
        *v155 = MinX;
      }

      swift_beginAccess();
      sub_100C8DC98(v67);
      swift_endAccess();

      if (v210)
      {

        return;
      }

      v182 = String._bridgeToObjectiveC()();

      v183 = [v182 substringWithRange:{v205, a4}];

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v184;

      *&v80 = COERCE_DOUBLE(StringProtocol.contains<A>(_:)());

      if ((v80 & 1) == 0)
      {
        return;
      }

      swift_beginAccess();
      if (!__OFADD__(*v62, 1))
      {
        ++*v62;
        return;
      }

      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      v146 = _CocoaArrayWrapper.endIndex.getter();
      a9 = MinX + a9;
      if (!v146)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v80;
    if (v146 >= 1)
    {
      v147 = 0;
      v148 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v149 = v67 & 0xC000000000000001;
      v150 = v67;
      do
      {
        if (v149)
        {
          v151 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v151 = *(v67 + 8 * v147 + 32);
        }

        if (*(v151 + 58) == *(v215 + v148))
        {
          v236.size.width = *(v151 + 96);
          v236.size.height = *(v151 + 104);
          v241.origin.x = *(v151 + 80);
          v236.origin.y = *(v151 + 88);
          *(v151 + 80) = a9;
          v236.origin.x = a9;
          v241.origin.y = v236.origin.y;
          v241.size.width = v236.size.width;
          v241.size.height = v236.size.height;
          if (!CGRectEqualToRect(v236, v241))
          {
            *(v151 + 128) = 0;
          }
        }

        ++v147;
        v67 = v150;
      }

      while (v146 != v147);
      v51 = v215;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
}

void sub_100C8D73C(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1)
  {
    v5 = sub_100C7D238();
    if ((v7 & 1) == 0)
    {
LABEL_9:
      sub_100C994B0(v5, v6, sub_100C9E75C);
    }
  }

  else
  {
    v5 = 0;
    if (v4)
    {
      while (*(v3 + 32 + 8 * v5) != a1)
      {
        if (v4 == ++v5)
        {
          return;
        }
      }

      v6 = 0;
      goto LABEL_9;
    }
  }
}

void sub_100C8D7C8()
{
  v1 = *v0;
  if (*v0 >> 62)
  {
    goto LABEL_27;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    v3 = v2 - 1;
    while (!__OFSUB__(v2, 1))
    {
      if (v3 < 1)
      {
        return;
      }

      v4 = 0;
      v5 = v2 + 0x7FFFFFFFFFFFFFFFLL;
      while (1)
      {
        v6 = v2 - 1;
        if ((v1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_10;
        }

        v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v4 >= v7)
        {
          break;
        }

        if (v6 >= v7)
        {
          goto LABEL_25;
        }

        v8 = *(v1 + 8 * v4 + 32);
        v9 = *(v1 + 8 * v2 + 24);

LABEL_10:
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v1 & 0x8000000000000000) != 0 || (v1 & 0x4000000000000000) != 0)
        {
          v1 = sub_100C7D240();
          v10 = (v1 >> 62) & 1;
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = v1 & 0xFFFFFFFFFFFFFF8;
        *((v1 & 0xFFFFFFFFFFFFFF8) + 8 * v4 + 0x20) = v9;

        if ((v1 & 0x8000000000000000) != 0 || v10)
        {
          v1 = sub_100C7D240();
          v11 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        if (v6 >= *(v11 + 16))
        {
          goto LABEL_24;
        }

        *(v11 + 8 * v2 + 24) = v8;

        *v0 = v1;
        if (v5 == v4)
        {
          goto LABEL_26;
        }

        ++v4;
        v12 = v2 - 2;
        --v2;
        if (v4 >= v12)
        {
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
        return;
      }

      v2 = _CocoaArrayWrapper.endIndex.getter();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void sub_100C8D97C()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return;
  }

  v2 = (v1 - 1);
  if (v1 == 1)
  {
    return;
  }

  v3 = *v0;
  v20 = v0;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = v3;
  }

  else
  {
LABEL_18:
    v4 = sub_100C76360(v3);
  }

  v5 = 0;
  v6 = 56 * v1;
  v7 = 1;
  while (1)
  {
    if (v7 - 1 == v2)
    {
      goto LABEL_7;
    }

    v9 = *(v4 + 2);
    if (v7 - 1 >= v9)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (v2 >= v9)
    {
      goto LABEL_17;
    }

    v10 = &v4[v5];
    v11 = *&v4[v5 + 48];
    v21 = *&v4[v5 + 56];
    v22 = *&v4[v5 + 32];
    v12 = *&v4[v5 + 72];
    v13 = v4[v5 + 80];
    v1 = &v4[v6];
    v15 = *&v4[v6 - 8];
    v14 = *&v4[v6];
    v17 = *&v4[v6 + 8];
    v16 = *&v4[v6 + 16];
    v18 = v4[v6 + 24];
    *(v10 + 2) = *&v4[v6 - 24];
    *(v10 + 6) = v15;
    *(v10 + 7) = v14;
    *(v10 + 8) = v17;
    *(v10 + 9) = v16;
    v10[80] = v18;
    v19 = v4;
    v23 = *(v4 + 2);

    if (v2 >= v23)
    {
      break;
    }

    v3 = *v1;
    *(v1 - 24) = v22;
    *(v1 - 1) = v11;
    *v1 = v21;
    *(v1 + 2) = v12;
    v1[24] = v13;

    v4 = v19;
LABEL_7:
    --v2;
    v6 -= 56;
    v5 += 56;
    if (v7++ >= v2)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_14:
  *v20 = v4;
}

void sub_100C8DAEC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  if (v2 >= 2)
  {
    v3 = v2 - 1;
    v4 = 56 * v2 - 24;
    v5 = 80;
    v6 = 1;
    while (1)
    {
      v7 = *(v1 + 2);
      if (v6 - 1 >= v7)
      {
        break;
      }

      if (v3 >= v7)
      {
        goto LABEL_12;
      }

      v21 = *&v1[v5 - 48];
      v8 = *&v1[v5 - 24];
      v9 = *&v1[v5 - 16];
      v19 = *&v1[v5 - 8];
      v20 = *&v1[v5 - 32];
      v18 = v1[v5];
      v10 = *&v1[v4];
      v11 = *&v1[v4 + 8];
      v12 = *&v1[v4 + 24];
      v13 = *&v1[v4 + 32];
      v23 = *&v1[v4 + 40];
      v24 = *&v1[v4 + 16];
      v22 = v1[v4 + 48];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_100C9A780(v1);
      }

      if ((v6 - 1) >= *(v1 + 2))
      {
        goto LABEL_13;
      }

      v14 = &v1[v5];
      *(v14 - 6) = v10;
      *(v14 - 5) = v11;
      *(v14 - 4) = v24;
      *(v14 - 3) = v12;
      *(v14 - 2) = v13;
      *(v14 - 1) = v23;
      *v14 = v22;

      if (v3 >= *(v1 + 2))
      {
        goto LABEL_14;
      }

      v15 = &v1[v4];
      *v15 = v21;
      *(v15 + 2) = v20;
      *(v15 + 3) = v8;
      *(v15 + 4) = v9;
      *(v15 + 5) = v19;
      v15[48] = v18;

      *v17 = v1;
      --v3;
      v4 -= 56;
      v5 += 56;
      if (v6++ >= v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
  }
}

void sub_100C8DC98(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_35:
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  v4 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v5 = *(a1 + 32 + 8 * v4);

      v6 = __OFADD__(v4++, 1);
      if (v6)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }
    }

    v8 = *v2;
    v7 = v2[1];
    v9 = (v7 + 32);
    v10 = *(v7 + 16);
    if (*v2)
    {
      sub_100C7D238();
      if ((v11 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (v10)
    {
      while (*v9 != v5)
      {
        ++v9;
        if (!--v10)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_6;
    }

LABEL_17:

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = static _HashTable.scale(forCapacity:)();
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = sub_100C969C0(v12, v17, 0, v14, v16);

        *v2 = v18;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v13)
    {
      break;
    }

    v14 = *(v8 + 24) & 0x3FLL;
    if (v13 > 0xF || v14)
    {
      goto LABEL_24;
    }

    *v2 = 0;
LABEL_7:
    if (v4 == v3)
    {
      return;
    }
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v20 = *v2;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_38;
    }

    v21 = _HashTable.copy()();

    *v2 = v21;
    v20 = v21;
  }

  if (v20)
  {
    _HashTable.UnsafeHandle.subscript.setter();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_100C8DF2C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v56 = a2;
  v55 = a1;
  v4 = type metadata accessor for Locale.Language();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v50 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10010FC20(&qword_1011BBA48, &qword_100F0E5A8);
  __chkstk_darwin();
  v8 = &v48 - v7;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  v10 = &v48 - v9;
  v11 = v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v12 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v13 = 264;
  if (!*(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v13 = 272;
  }

  v14 = *(v11 + v13);
  v15 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v53 = v15;
  if (!v12)
  {
    if (*(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v16 = 360;
      if (*(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v16 = 384;
      }
    }

    else
    {
      v16 = 368;
    }

    v15 = *(v11 + v16);
    v17 = v15;
  }

  v51 = v10;
  sub_10010FC20(&unk_1011BD910, &unk_100F0FEC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100EBE260;
  v52 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v54 = inited + 32;
  v19 = sub_100009F78(0, &qword_1011BD920, UIFont_ptr);
  *(inited + 40) = v14;
  *(inited + 64) = v19;
  *(inited + 72) = NSForegroundColorAttributeName;
  v20 = sub_10010FC20(&qword_1011BC538, &qword_100F0F578);
  *(inited + 80) = v15;
  *(inited + 104) = v20;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v21 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  sub_1000089F8(v3 + v21, v8, &qword_1011BBA48, &qword_100F0E5A8);
  if ((*(v5 + 48))(v8, 1, v4))
  {
    v22 = v15;
    v23 = NSLanguageIdentifierAttributeName;
    v24 = v14;
    v25 = v53;
    v26 = v52;
    v27 = NSForegroundColorAttributeName;
    sub_1000095E8(v8, &qword_1011BBA48, &qword_100F0E5A8);
    v28 = v14;
LABEL_14:
    v39 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v29 = v50;
  (*(v5 + 16))(v50, v8, v4);
  v49 = v15;
  v30 = NSLanguageIdentifierAttributeName;
  v31 = v14;
  v32 = v14;
  v33 = v53;
  v34 = v52;
  v35 = NSForegroundColorAttributeName;
  sub_1000095E8(v8, &qword_1011BBA48, &qword_100F0E5A8);
  v36 = v51;
  Locale.Language.languageCode.getter();
  (*(v5 + 8))(v29, v4);
  v37 = type metadata accessor for Locale.LanguageCode();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_1000095E8(v36, &qword_1011BBA50, &unk_100F0E5B0);
    v28 = v31;
    v22 = v49;
    goto LABEL_14;
  }

  v46 = Locale.LanguageCode.identifier.getter();
  v40 = v47;
  (*(v38 + 8))(v36, v37);
  v39 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v40)
  {
    *v39 = v46;
    v28 = v31;
    v22 = v49;
    goto LABEL_16;
  }

  v28 = v31;
  v22 = v49;
LABEL_15:
  *v39 = 0;
  v40 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v40;
  sub_100C76B50(inited);
  swift_setDeallocating();
  sub_10010FC20(&qword_1011BC080, &unk_100F0EFA0);
  swift_arrayDestroy();
  v41 = objc_allocWithZone(NSAttributedString);
  v42 = String._bridgeToObjectiveC()();
  _s3__C3KeyVMa_2(0);
  sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2, &unk_100F0E4D0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v44 = [v41 initWithString:v42 attributes:isa];

  return v44;
}

void sub_100C8E50C(char a1, double a2)
{
  v3 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v3)
  {
    goto LABEL_11;
  }

  v4 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8];
  if (!v5)
  {
    goto LABEL_11;
  }

  v8 = *v4;
  v9 = String.lowercased()();
  v10 = String.lowercased()();
  if (v9._countAndFlagsBits == v10._countAndFlagsBits && v9._object == v10._object)
  {

    goto LABEL_10;
  }

  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v12)
  {

LABEL_10:

LABEL_11:
    v13 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v14 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v13 = 1;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
LABEL_12:

    sub_100C9DE90(v14);
    return;
  }

  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v16 || (v17 = [v16 attributedText]) == 0)
  {
    v23 = v4[1];
LABEL_24:
    if (v23)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v18 = v17;
  v19 = [v17 string];

  v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = v21;

  v23 = v4[1];
  if (!v22)
  {
    goto LABEL_24;
  }

  if (!v23)
  {

    goto LABEL_30;
  }

  if (v20 == *v4 && v23 == v22)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v43 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v24 = *&v2[v15];
  if (v24)
  {
    v25 = *&v2[v15];
  }

  else
  {
    v25 = [objc_allocWithZone(UILabel) init];
    [v25 setNumberOfLines:0];
    [v25 setClipsToBounds:0];
    [v2 addSubview:v25];
    v26 = *&v2[v15];
    *&v2[v15] = v25;

    v27 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v28 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v27 = 0u;
    *(v27 + 1) = 0u;
    *(v27 + 4) = 0;
    sub_100C9DE90(v28);
    v24 = 0;
  }

  v29 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v29 = 272;
  }

  v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v29];
  v31 = v24;
  v44 = v30;
  v33 = sub_100C8DF2C(v8, v5, v32);

  [v33 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v35 = v34;
  v37 = v36;
  Height = CGRectGetHeight(v3[2]);
  v39 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v35 <= Width)
  {
    v35 = Width;
  }

  v41 = Height + v39;
  [v25 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v42 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v42)
  {

    v14 = *v42;
    *v42 = v33;
    *(v42 + 1) = 0;
    *(v42 + 2) = v41;
    *(v42 + 3) = v35;
    *(v42 + 4) = v37;
    goto LABEL_12;
  }

  [v25 setAttributedText:v33];
  [v25 setFrame:{0.0, v41, v35, v37}];
}

void sub_100C8E9AC(NSObject *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, __n128 a9@<Q0>, CGFloat a10@<D1>)
{
  v12 = a9.n128_f64[0];
  v743 = a6;
  v744 = a5;
  v741 = a3;
  v18 = type metadata accessor for Locale.Language();
  v745 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v699 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010FC20(&qword_1011BBA48, &qword_100F0E5A8);
  __chkstk_darwin();
  v742 = &v699 - v21;
  sub_10010FC20(&qword_1011BBA50, &unk_100F0E5B0);
  __chkstk_darwin();
  object = &v699 - v22;
  sub_10010FC20(&qword_1011BBA78, &qword_100F0E5D8);
  __chkstk_darwin();
  v25 = &v699 - v24;
  v26 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  v751 = a4;
  if (a4 >> 62)
  {
    goto LABEL_177;
  }

  v29 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v30 = v29 - 1;
  if (v29 < 1)
  {
LABEL_178:
    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_179;
  }

LABEL_4:
  v738 = v25;
  v739 = v28;
  v721 = v30;
  v722 = v29;
  v733 = a7;
  v728 = a8;
  v746 = v10;
  v725 = (v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v740 = v26;

  v732 = String._bridgeToObjectiveC()();

  v768 = a1;
  v769 = a2;
  v766 = a1;
  v767 = a2;
  swift_retain_n();
  swift_retain_n();

  v764 = sub_100C8B79C(v31);
  v765 = v32;
  isa = v32[2].isa;
  v736 = object;
  v737 = v18;
  v735 = v20;
  if (!isa)
  {
    goto LABEL_9;
  }

  v34 = v32[4].isa;
  v35 = v32[isa + 3].isa;

  if (!v35)
  {
    goto LABEL_9;
  }

  if (*(v35 + 11) >= *(v34 + 11))
  {

LABEL_9:
    v731 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  sub_100C8DAEC();
  sub_100C96888(sub_100C96C18, v36);

  v731 = 1;
  v18 = v767;
LABEL_10:
  v20 = &v777;
  a2 = _swiftEmptyArrayStorage;
  v763 = _swiftEmptyArrayStorage;
  v762 = sub_100C76DB0(_swiftEmptyArrayStorage);
  v748 = *(v18 + 2);
  v749 = v18;
  if (!v748)
  {
    v753 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v753 = 0;
  v37 = 0;
  v747 = v18 + 4;
  object = _swiftEmptyArrayStorage;
  do
  {
    if (v37 >= *(v18 + 2))
    {
      __break(1u);
      goto LABEL_160;
    }

    location = object;
    v10 = 56;
    v38 = &v747[7 * v37];
    v39 = *(v38 + 2);
    v824 = *(v38 + 1);
    v825 = v39;
    v823 = *v38;
    v826 = *(v38 + 48);
    v827 = v824;
    v40 = v39;
    v828 = v39;
    *&v816 = _swiftEmptyArrayStorage;
    a7 = v765;
    if (v765[2].isa)
    {
      v41 = v764;
      a1 = v765 + 4;
      v42 = *&v823;
      v43 = *(v825 + 16);
      sub_100118E9C(&v827, v820);
      sub_1000089F8(&v828, v820, &qword_1011BC0A0, &unk_100F0EFD0);
      object = v40 + 56 * v43 - 16;
      v10 = *(a7 + 16);
      v750 = v41;

      *&v45 = 0.0;
      while (1)
      {
        if (v45 >= v10)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:

          a7 = v37;
          goto LABEL_139;
        }

        v41 = a1[v45].isa;
        if (v43)
        {
          if (v43 > *(v40 + 16))
          {
            __break(1u);
            goto LABEL_123;
          }

          v44 = *object;
          if (v42 > *object)
          {
            goto LABEL_119;
          }
        }

        else
        {
          v44 = 0.0;
          if (v42 > 0.0)
          {
            goto LABEL_119;
          }
        }

        v47 = *&v41[2].isa;
        v48 = *&v41[3].isa;
        if (v47 > v48)
        {
          goto LABEL_120;
        }

        v49 = v47 == v48 || v42 == v44;
        v50 = !v49 && v44 > v47;
        if (v50 && v48 > v42)
        {
          break;
        }

LABEL_21:
        if (++v45 == v10)
        {

          a2 = v816;
          v18 = v749;
          v20 = &v777;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v816 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v816 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v734 = *((v816 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v52 = v765[2].isa;
      if (v764)
      {
        v53 = sub_100C7D238();
        if (v54)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (!v52)
        {
          goto LABEL_20;
        }

        v53 = 0;
        while (v765[v53 + 4].isa != v41)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v46 = 0;
      }

      sub_100C994B0(v53, v46, sub_100C9E75C);

LABEL_20:

      v10 = *(a7 + 16);
      v753 = v41;
      goto LABEL_21;
    }

    sub_100118E9C(&v827, v820);
    sub_1000089F8(&v828, v820, &qword_1011BC0A0, &unk_100F0EFD0);
LABEL_52:
    a8 = (a2 >> 62);
    if (!(a2 >> 62))
    {
      object = location;
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_79;
      }

LABEL_54:
      v10 = a2 & 0xC000000000000001;
      if ((a2 & 0xC000000000000001) != 0)
      {
        a7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_162;
        }

        a7 = *(a2 + 32);

        v55 = a2 & 0xFFFFFFFFFFFFFF8;
        if (!a8)
        {
LABEL_57:
          v56 = *(v55 + 16);
          if (v56)
          {
            goto LABEL_58;
          }

LABEL_78:

          goto LABEL_79;
        }
      }

      v56 = _CocoaArrayWrapper.endIndex.getter();
      if (v56)
      {
LABEL_58:
        v57 = __OFSUB__(v56, 1);
        v58 = v56 - 1;
        if (v57)
        {
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          if (v10 == *(a8 + 5))
          {
LABEL_167:
            v183 = a1;
            v184 = v741;
            v185 = sub_100C7D24C(v741);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                sub_100C7135C(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_171:
              v188 = sub_100C773C4(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v750 = v187;
                if (qword_1011BB880 != -1)
                {
                  goto LABEL_569;
                }

                goto LABEL_173;
              }
            }

            else
            {

              a1 = v183;
            }

LABEL_153:
            if (qword_1011BB880 != -1)
            {
              swift_once();
            }

            v159 = type metadata accessor for Logger();
            sub_1000060E4(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v746;
            *(v160 + 16) = v746;
            v162 = v161;
            v163 = Logger.logObject.getter();
            v164 = static os_log_type_t.default.getter();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_100C9E760;
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_100C9E754;
            *(v168 + 24) = v167;
            sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_100EBE260;
            *(v169 + 32) = sub_100C9E7DC;
            *(v169 + 40) = v165;
            *(v169 + 48) = sub_100C9E7DC;
            *(v169 + 56) = v166;
            *(v169 + 64) = sub_100C9E734;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v751 = swift_slowAlloc();
              *&v788 = v751;
              *v170 = 136446210;
              v171 = v725[1];
              v802._countAndFlagsBits = *v725;
              v802._object = v171;
              v795 = 10519010;
              v796 = 0xA300000000000000;
              *&v792[0] = 44226;
              *(&v792[0] + 1) = 0xA200000000000000;
              sub_100009988();
              v172 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              location = v162;
              v802._countAndFlagsBits = v172;
              v802._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v795 = *v174;
              v796 = v175;
              *&v792[0] = 0x3B7073626E26;
              *(&v792[0] + 1) = 0xE600000000000000;
              v176 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v178 = v177;

              v802._countAndFlagsBits = v176;
              v802._object = v178;
              v795 = 10;
              v796 = 0xE100000000000000;
              *&v792[0] = 28252;
              *(&v792[0] + 1) = 0xE200000000000000;
              v179 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v181 = v180;

              v182 = sub_1000109A8(v179, v181, &v788);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              sub_10000959C(v751);
            }

            a8 = v728;
            sub_100C9580C(a1[11].isa, a1[12].isa);

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            goto LABEL_164;
          }

          if (v58 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_165;
          }
        }

        v59 = v768;
        v60 = v769;
        a1 = *(v769 + 16);
        if (v768)
        {

          v61 = sub_100C75814(&v823, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          sub_100C99308(v61, a1, &v770);
          v779 = v771;
          sub_100015BB0(&v779);
          v778 = v772;
          sub_1000095E8(&v778, &qword_1011BC0A0, &unk_100F0EFD0);
        }

        else
        {
          v65 = sub_100C965F0(&v823, v769 + 32, *(v769 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        sub_100118E9C(&v827, v820);
        sub_1000089F8(&v828, v820, &qword_1011BC0A0, &unk_100F0EFD0);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100C70470(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v777;
        if (v68 >= v67 >> 1)
        {
          object = sub_100C70470((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v823;
        v71 = v824;
        v72 = v825;
        *(v69 + 80) = v826;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        sub_100C82DEC(a2, &v823);

        v18 = v749;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = _CocoaArrayWrapper.endIndex.getter();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v753)
    {
      sub_100015BB0(&v827);
      sub_1000095E8(&v828, &qword_1011BC0A0, &unk_100F0EFD0);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v823 > *(&v823 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v739 = v28;
      v740 = v26;
      v213 = v25;
      v29 = _CocoaArrayWrapper.endIndex.getter();
      v28 = v739;
      v26 = v740;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *&v753[2].isa;
    v74 = *&v753[3].isa;
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v823 == *(&v823 + 1) || *(&v823 + 1) <= v75 || v74 <= *&v823)
    {
      sub_100015BB0(&v827);
      sub_1000095E8(&v828, &qword_1011BC0A0, &unk_100F0EFD0);
      goto LABEL_14;
    }

    sub_100118E9C(&v827, v820);
    sub_1000089F8(&v828, v820, &qword_1011BC0A0, &unk_100F0EFD0);

    sub_100C82DEC(_swiftEmptyArrayStorage, &v823);
    v76 = v768;
    v77 = v769;
    v78 = *(v769 + 16);
    if (v768)
    {

      v79 = sub_100C75814(&v823, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = sub_100C965F0(&v823, v769 + 32, *(v769 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      sub_100C99308(v79, a1, &v773);
      v777 = v774;
      sub_100015BB0(&v777);
      v776 = v775;
      sub_1000095E8(&v776, &qword_1011BC0A0, &unk_100F0EFD0);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_100C70470(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = sub_100C70470((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v823;
    v89 = v824;
    v90 = v825;
    *(v87 + 80) = v826;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v37;
  }

  while (v37 != v748);
  v763 = object;
  v91 = *(object + 16);
  if (!v91)
  {
LABEL_114:

LABEL_115:

    v108 = 0;
    v109 = 0;
    v110 = 0;
    v111 = 1;
    goto LABEL_116;
  }

LABEL_100:
  v92 = *(object + 48);
  v93 = *(object + 56);
  v45 = *(object + 64);
  v94 = *(object + 72);
  v95 = *(object + 80);
  v806 = *(object + 32);
  v807 = v92;
  v808 = v93;
  v809 = v45;
  v810 = v94;
  v811 = v95;
  v96 = v91 - 1;
  sub_100C7133C(v91 - 1, 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v41 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v780 = *v97;
  v781 = v98;
  v782 = v99;
  v783 = v41;
  v784 = v100;
  v785 = v101;
  a7 = v762;
  v747 = v93;

  v734 = v99;

  sub_100C82D44(&v780, a7);
  v748 = v41;
  v750 = v45;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v792[0] = v102;
  if (v731)
  {
    sub_100C8D7C8();
    v103 = *&v792[0];
  }

  if (!sub_100C7D24C(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  sub_100C7135C(0, (v103 & 0xC000000000000001) == 0, v103);
  v37 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    v40 = *(v103 + 32);
  }

  v105 = sub_100C7D24C(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  sub_100C7135C(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    sub_100CA47DC();
    v106 = v41[2].isa;
    a7 = v37;
    if (!v106)
    {
LABEL_123:
      if (v44 != 0.0)
      {
        v107 = 0.0;
        goto LABEL_125;
      }

      goto LABEL_138;
    }

    v107 = *&v41[7 * v106 - 2].isa;
    if (v44 == v107)
    {
LABEL_138:

      goto LABEL_139;
    }

LABEL_125:
    v20 = a7;
    v112 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    sub_100C7133C(v113 - 1, 1, *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
    v114 = *(v112 + 56 * v113 + 8);
    v115 = *(v114 + 16);
    if (v115)
    {
      v116 = v107 == *(v114 + 56 * v115 - 16);
    }

    else
    {
      v116 = v107 == 0.0;
    }

    a7 = v20;
    if (!v116 || *(v40 + 88) < 1)
    {
      goto LABEL_138;
    }

    location = object;
    v821 = *(v40 + 48);
    v117 = *(v40 + 32);
    v820[0] = *(v40 + 16);
    v820[1] = v117;
    v822 = *(v40 + 64);
    v829 = v117;
    v830 = v821;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v746;
    swift_beginAccess();
    v120 = *&v119[v118];
    sub_100118E9C(&v829, &v816);
    sub_1000089F8(&v830, &v816, &qword_1011BC0A0, &unk_100F0EFD0);

    sub_100C82D94(v820, v120);
    v122 = v121;

    sub_100015BB0(&v829);
    sub_1000095E8(&v830, &qword_1011BC0A0, &unk_100F0EFD0);
    if (v122)
    {

      v123 = *(v40 + 32);
      v816 = *(v40 + 16);
      v817 = v123;
      v818 = *(v40 + 48);
      v819 = *(v40 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v802._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      sub_100C74178(1, &v816, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v802._countAndFlagsBits;
      swift_endAccess();
      sub_100C95694(v40);
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v125 = type metadata accessor for Logger();
      sub_1000060E4(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v37 = Logger.logObject.getter();
      v128 = static os_log_type_t.default.getter();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_100C9E760;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_100C9E754;
      *(v132 + 24) = v131;
      sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_100EBE260;
      *(v133 + 32) = sub_100C9E7DC;
      *(v133 + 40) = v129;
      *(v133 + 48) = sub_100C9E7DC;
      *(v133 + 56) = v130;
      *(v133 + 64) = sub_100C9E734;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v37, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v788 = location;
        *v134 = 136446210;
        v135 = v725[1];
        *&v812 = *v725;
        *(&v812 + 1) = v135;
        v802._countAndFlagsBits = 10519010;
        v802._object = 0xA300000000000000;
        v795 = 44226;
        v796 = 0xA200000000000000;
        sub_100009988();
        *&v812 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v812 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v802._countAndFlagsBits = *v137;
        v802._object = v138;
        v795 = 0x3B7073626E26;
        v796 = 0xE600000000000000;
        v139 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        LODWORD(v751) = v128;
        v141 = v140;

        *&v812 = v139;
        *(&v812 + 1) = v141;
        v802._countAndFlagsBits = 10;
        v802._object = 0xE100000000000000;
        v795 = 28252;
        v796 = 0xE200000000000000;
        v142 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v144 = v143;

        v145 = sub_1000109A8(v142, v144, &v788);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v37, v751, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        sub_10000959C(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v41 = v748;
    v45 = v750;
LABEL_139:
    v146 = v765[2].isa;
    v712 = v764;
    v713 = v765;
    v720 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v765[4].isa;
    if (!sub_100C7D24C(v751))
    {
      goto LABEL_188;
    }

    v148 = v751;
    v149 = v751 & 0xC000000000000001;
    sub_100C7135C(0, (v751 & 0xC000000000000001) == 0, v751);
    if (v149)
    {

      v214 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v746;
        if (v744 >= 1)
        {
          v818 = *(v147 + 48);
          v151 = *(v147 + 32);
          v816 = *(v147 + 16);
          v817 = v151;
          v819 = *(v147 + 64);
          v831 = v151;
          v832 = v818;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          sub_100118E9C(&v831, &v812);
          sub_1000089F8(&v832, &v812, &qword_1011BC0A0, &unk_100F0EFD0);

          sub_100C82D94(&v816, v153);
          v155 = v154;

          sub_100015BB0(&v831);
          sub_1000095E8(&v832, &qword_1011BC0A0, &unk_100F0EFD0);
          if (v155)
          {

            v156 = *(v147 + 32);
            v812 = *(v147 + 16);
            v813 = v156;
            v814 = *(v147 + 48);
            v815 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v795 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            sub_100C74178(1, &v812, v157);
            *&v150[v152] = v795;
            swift_endAccess();
            a1 = v147;
            if (v713[2].isa >= 2)
            {
              a7 = v748;
              if (v722 != 1)
              {
                v10 = v713[5].isa;
                a8 = v751;
                sub_100C7135C(1uLL, v149 == 0, v751);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v41 = v748;
          goto LABEL_187;
        }
      }

LABEL_187:
      v45 = v750;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = sub_100C773C4(v45);
    v217 = v216;
    v840.location = sub_100C773C4(v41);
    v840.length = v218;
    v839.location = v215;
    v839.length = v217;
    v219 = NSUnionRange(v839, v840);
    v220 = String._bridgeToObjectiveC()();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v730 = String.trim()();

    v45 = v743;
    v37 = v744;
    v222 = [v732 substringWithRange:{v744, v743}];
    v223 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v812 = v223;
    *(&v812 + 1) = v40;
    countAndFlagsBits = v225._countAndFlagsBits;
    v802 = v225;
    v226 = type metadata accessor for Locale();
    v227 = v738;
    (*(*(v226 - 8) + 56))(v738, 1, 1, v226);
    v228 = sub_100009988();

    v711 = v228;
    v229 = StringProtocol.range<A>(of:options:range:locale:)();
    v231 = v230;
    v41 = v232;
    sub_1000095E8(v227, &qword_1011BBA78, &qword_100F0E5D8);
    v724 = v225._object;

    if ((v41 & 1) == 0)
    {
      v233 = _NSRange.init(range:in:)(v229, v231, v223, v40);
      v57 = __OFADD__(v37, v233);
      v37 += v233;
      if (!v57)
      {
        v45 = v234;
        goto LABEL_192;
      }

LABEL_541:
      __break(1u);
LABEL_542:
      __break(1u);
LABEL_543:
      __break(1u);
LABEL_544:
      __break(1u);
LABEL_545:
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      continue;
    }

    break;
  }

LABEL_192:
  if (qword_1011BB888 != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v235 = sub_100C6E398(3, *(static LyricsOptionsManager.shared + 40));
    v710 = a10;
    v741 = v45;
    v739 = v37;
    if (!v235)
    {
      goto LABEL_199;
    }

    v236 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v237 = v746;
    swift_beginAccess();
    v238 = v742;
    sub_1000089F8(&v237[v236], v742, &qword_1011BBA48, &qword_100F0E5A8);
    v239 = v745;
    v240 = v737;
    if ((*(*&v745 + 48))(v238, 1, v737))
    {
      v241 = &qword_1011BBA48;
      v242 = &qword_100F0E5A8;
      v243 = v238;
      goto LABEL_198;
    }

    v244 = v735;
    (*(*&v239 + 16))(v735, v238, v240);
    sub_1000095E8(v238, &qword_1011BBA48, &qword_100F0E5A8);
    v245 = v736;
    Locale.Language.languageCode.getter();
    (*(*&v239 + 8))(v244, v240);
    v246 = type metadata accessor for Locale.LanguageCode();
    v247 = *(v246 - 8);
    if ((*(v247 + 48))(v245, 1, v246) == 1)
    {
      v241 = &qword_1011BBA50;
      v242 = &unk_100F0E5B0;
      v243 = v245;
LABEL_198:
      sub_1000095E8(v243, v241, v242);
LABEL_199:
      v248 = 0;
      v249 = 0xE000000000000000;
    }

    else
    {
      v248 = Locale.LanguageCode.identifier.getter();
      v249 = v315;
      (*(v247 + 8))(v245, v246);
    }

    sub_10010FC20(&unk_1011BD910, &unk_100F0FEC0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_100EBDC20;
    *(v250 + 32) = NSFontAttributeName;
    v251 = v746;
    object = &v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v252 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v253 = sub_100009F78(0, &qword_1011BD920, UIFont_ptr);
    *(v250 + 40) = v252;
    *(v250 + 64) = v253;
    *(v250 + 72) = NSLanguageIdentifierAttributeName;
    *(v250 + 104) = &type metadata for String;
    *(v250 + 80) = v248;
    *(v250 + 88) = v249;
    v254 = NSFontAttributeName;
    v255 = v252;
    v256 = NSLanguageIdentifierAttributeName;

    sub_100C76B50(v250);
    swift_setDeallocating();
    sub_10010FC20(&qword_1011BC080, &unk_100F0EFA0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = objc_allocWithZone(NSAttributedString);
    v258 = *&v730._object;
    v259 = String._bridgeToObjectiveC()();
    _s3__C3KeyVMa_2(0);
    sub_100C9DE48(&qword_1011BD930, _s3__C3KeyVMa_2, &unk_100F0E4D0);
    v260 = Dictionary._bridgeToObjectiveC()().super.isa;

    *&v261 = COERCE_DOUBLE([v257 initWithString:v259 attributes:v260]);

    *&v45 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v261));
    v27 = CTLineRef.bounds.getter();
    a10 = v262;
    v264 = v263;
    v266 = v265;
    v267 = v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v714 = v261;
    if (v267 != 2 && v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v267 & 1))
    {
      v302 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v806, &v780);
      v41 = v720;
      if (v302)
      {
        v842.origin.x = v27;
        v842.origin.y = a10;
        v842.size.width = v264;
        v842.size.height = v266;
        if (CGRectGetWidth(v842) > v12)
        {
          v27 = Int.seconds.getter(0);
          sub_100C82D44(&v780, v762);
          MaxX = v27;
          if (!v303)
          {
            goto LABEL_428;
          }

          v305 = v303;
          v306 = sub_100C7D24C(v303);
          if (!v306)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v307 = v306 - 1;
          if (__OFSUB__(v306, 1))
          {
            __break(1u);
          }

          else
          {
            v258 = *&v261;
            sub_100C7135C(v306 - 1, (v305 & 0xC000000000000001) == 0, v305);
            if ((v305 & 0xC000000000000001) == 0)
            {
              v308 = *(v305 + 8 * v307 + 32);

              goto LABEL_229;
            }
          }

          v308 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v308 + 176));
          v309 = sub_100C773C4(*(v308 + 48));
          v311 = v310;

          v312 = v309 + v733;
          if (__OFADD__(v309, v733))
          {
            __break(1u);
          }

          else if (!__OFADD__(v739, v741))
          {
            v57 = __OFADD__(v312, v311);
            v313 = v312 + v311;
            if (!v57)
            {
              *&v261 = v258;
              if (v739 + v741 != v313)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v728;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v703 = v45;
              type metadata accessor for TextKitManager();
              swift_allocObject();
              v743 = v261;
              TextKitManager.init(text:size:)(v743, v12);
              v540 = *(*v539 + 192);
              v744 = v539;
              v541 = v540();
              v751 = v541[2];
              if (v751)
              {
                v542 = 0;
                v749 = (v541 + 4);
                *&v745 = -location;
                v746 = v541;
                v543 = __OFSUB__(0, location);
                LODWORD(location) = v543;
                v109 = _swiftEmptyArrayStorage;
                while (v542 < v541[2])
                {
                  v544 = &v749[7 * v542];
                  v545 = *(v544 + 1);
                  v546 = *(v544 + 2);
                  v547 = *(v544 + 3);
                  v548 = *(v544 + 4);
                  v549 = *(v544 + 5);
                  v258 = COERCE_DOUBLE(*v544);
                  v550 = [*&v258 lineRef];
                  if (!v550)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = type metadata accessor for Logger();
                    sub_1000060E4(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v746;
                    *(v190 + 16) = v746;
                    v751 = v191;
                    v192 = Logger.logObject.getter();
                    v193 = static os_log_type_t.default.getter();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = sub_100C9DE2C;
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = sub_100C9E754;
                    *(v197 + 24) = v196;
                    sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_100EBE260;
                    *(v198 + 32) = sub_100C9E7DC;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = sub_100C9E7DC;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = sub_100C9E734;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v749) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v788 = v200;
                      *v199 = 136446210;
                      v201 = v725[1];
                      v802._countAndFlagsBits = *v725;
                      v802._object = v201;
                      v795 = 10519010;
                      v796 = 0xA300000000000000;
                      *&v792[0] = 44226;
                      *(&v792[0] + 1) = 0xA200000000000000;
                      sub_100009988();
                      v802._countAndFlagsBits = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v802._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v795 = *v203;
                      v796 = v204;
                      *&v792[0] = 0x3B7073626E26;
                      *(&v792[0] + 1) = 0xE600000000000000;
                      v205 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v207 = v206;

                      v802._countAndFlagsBits = v205;
                      v802._object = v207;
                      v795 = 10;
                      v796 = 0xE100000000000000;
                      *&v792[0] = 28252;
                      *(&v792[0] + 1) = 0xE200000000000000;
                      v208 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                      v210 = v209;

                      v211 = sub_1000109A8(v208, v210, &v788);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v749, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      sub_10000959C(v200);
                    }

                    else
                    {
                    }

                    sub_100C95694(v750);

                    a8 = v728;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v551 = v550;
                  v552 = _swiftEmptyArrayStorage[2];
                  if (v552)
                  {
                    v553 = 0;
                    v554 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v556 = *v554++;
                      v555 = v556;
                      if ((v556 & ~v553) == 0)
                      {
                        v555 = 0;
                      }

                      v553 |= v555;
                      --v552;
                    }

                    while (v552);
                  }

                  else
                  {
                    v553 = 0;
                  }

                  [*&v258 boundsWithType:0 options:v553];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  sub_100C9C4F8(v545, v546, v547, v548, v557, v558, v551, v763, v730._countAndFlagsBits, v730._object, *&v745, v549, _swiftEmptyArrayStorage);
                  v560 = v559;
                  v844.origin.x = v545;
                  v844.origin.y = v546;
                  v844.size.width = v547;
                  v844.size.height = v548;
                  Width = CGRectGetWidth(v844);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = sub_100C710A8(0, *(v109 + 2) + 1, 1, v109);
                  }

                  v563 = *(v109 + 2);
                  v562 = *(v109 + 3);
                  if (v563 >= v562 >> 1)
                  {
                    v109 = sub_100C710A8((v562 > 1), v563 + 1, 1, v109);
                  }

                  ++v542;

                  *(v109 + 2) = v563 + 1;
                  v564 = &v109[16 * v563];
                  *(v564 + 4) = v560;
                  *(v564 + 5) = v551;
                  v541 = v746;
                  if (v542 == v751)
                  {
                    goto LABEL_452;
                  }
                }

                __break(1u);
LABEL_532:
                __break(1u);
LABEL_533:
                __break(1u);
                goto LABEL_534;
              }

              v109 = _swiftEmptyArrayStorage;
LABEL_452:

              if (v27 - MaxX > 0.0)
              {
                v27 = v27 - MaxX;
              }

              else
              {
                v27 = 0.0;
              }

              sub_100C82D44(&v780, v762);
              v566 = v565;

              if (v566)
              {
                v567 = sub_100C7D24C(v566);
                if (v567)
                {
                  v568 = v567 - 1;
                  if (__OFSUB__(v567, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_100C7135C(v567 - 1, (v566 & 0xC000000000000001) == 0, v566);
                    if ((v566 & 0xC000000000000001) == 0)
                    {
                      v569 = *(v566 + 8 * v568 + 32);

                      goto LABEL_460;
                    }
                  }

                  v569 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_460:

                  sub_100CA4604(v569[22], v569[23], v27 + v569[24], v569[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v768;
              v111 = v769;

LABEL_401:
              a8 = v728;
              v110 = v731;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v516 = type metadata accessor for Logger();
            sub_1000060E4(v516, static Logger.lyrics);
            v517 = swift_allocObject();
            *(v517 + 16) = v249;
            v518 = v249;
            v519 = Logger.logObject.getter();
            v520 = static os_log_type_t.default.getter();
            v521 = swift_allocObject();
            *(v521 + 16) = 34;
            v522 = swift_allocObject();
            *(v522 + 16) = 8;
            v523 = swift_allocObject();
            *(v523 + 16) = sub_100C9E760;
            *(v523 + 24) = v517;
            v524 = swift_allocObject();
            *(v524 + 16) = sub_100C9E754;
            *(v524 + 24) = v523;
            sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
            v525 = swift_allocObject();
            *(v525 + 16) = xmmword_100EBE260;
            *(v525 + 32) = sub_100C9E7DC;
            *(v525 + 40) = v521;
            *(v525 + 48) = sub_100C9E7DC;
            *(v525 + 56) = v522;
            *(v525 + 64) = sub_100C9E734;
            *(v525 + 72) = v524;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v519, v520))
            {
              v526 = swift_slowAlloc();
              v527 = swift_slowAlloc();
              v756 = v527;
              *v526 = 136446210;
              v528 = v725[1];
              v757 = *v725;
              v758 = v528;
              v759 = 10519010;
              v760 = 0xA300000000000000;
              v754 = 44226;
              v755 = 0xA200000000000000;
              LODWORD(v751) = v520;
              v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v758 = v529;
              v530 = String.nonBreakingSpace.unsafeMutableAddressor();
              v531 = v530[1];
              v759 = *v530;
              v760 = v531;
              v754 = 0x3B7073626E26;
              v755 = 0xE600000000000000;
              v532 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v534 = v533;

              v757 = v532;
              v758 = v534;
              v759 = 10;
              v760 = 0xE100000000000000;
              v754 = 28252;
              v755 = 0xE200000000000000;
              v535 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v537 = v536;

              v538 = sub_1000109A8(v535, v537, &v756);

              *(v526 + 4) = v538;
              _os_log_impl(&_mh_execute_header, v519, v751, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v526, 0xCu);
              sub_10000959C(v527);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v728;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v249 = 1;
      v314 = 1;
      if (v731)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v841.origin.x = v27;
    v841.origin.y = a10;
    v841.size.width = v264;
    v841.size.height = v266;
    v268 = CGRectGetWidth(v841);
    v41 = v720;
    if (v268 <= v12)
    {

      goto LABEL_239;
    }

    v41 = v762;
    sub_100C82D44(&v806, v762);
    v270 = v269;

    if (!v270)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!sub_100C7D24C(v270))
    {

      goto LABEL_238;
    }

    sub_100C7135C(0, (v270 & 0xC000000000000001) == 0, v270);
    if ((v270 & 0xC000000000000001) != 0)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v40 = *(v270 + 32);
    }

    sub_100C82D44(&v780, v41);
    v272 = v271;

    if (v272)
    {
      v273 = sub_100C7D24C(v272);
      if (v273)
      {
        v274 = v273;
        v703 = v45;

        v57 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (!v57)
        {
          sub_100C7135C(v275, (v272 & 0xC000000000000001) == 0, v272);
          v27 = 0.0;
          if ((v272 & 0xC000000000000001) == 0)
          {
            v276 = *(v272 + 8 * v275 + 32);

LABEL_212:

            if (v731)
            {
              v277 = v40;
            }

            else
            {
              v277 = v276;
            }

            v278 = v746;
            sub_100C95694(v277);
            if (qword_1011BB880 != -1)
            {
              swift_once();
            }

            v279 = type metadata accessor for Logger();
            sub_1000060E4(v279, static Logger.lyrics);
            v280 = swift_allocObject();
            *(v280 + 16) = v278;
            v281 = v278;
            v282 = Logger.logObject.getter();
            v283 = static os_log_type_t.default.getter();
            v284 = swift_allocObject();
            *(v284 + 16) = 34;
            v285 = swift_allocObject();
            *(v285 + 16) = 8;
            v286 = swift_allocObject();
            *(v286 + 16) = sub_100C9E760;
            *(v286 + 24) = v280;
            v287 = swift_allocObject();
            *(v287 + 16) = sub_100C9E754;
            *(v287 + 24) = v286;
            sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
            v288 = swift_allocObject();
            *(v288 + 16) = xmmword_100EBE260;
            *(v288 + 32) = sub_100C9E7DC;
            *(v288 + 40) = v284;
            *(v288 + 48) = sub_100C9E7DC;
            *(v288 + 56) = v285;
            *(v288 + 64) = sub_100C9E734;
            *(v288 + 72) = v287;
            swift_setDeallocating();
            sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v282, v283))
            {
              v289 = swift_slowAlloc();
              v290 = swift_slowAlloc();
              *&v792[0] = v290;
              *v289 = 136446210;
              v291 = v725[1];
              *&v812 = *v725;
              *(&v812 + 1) = v291;
              v802._countAndFlagsBits = 10519010;
              v802._object = 0xA300000000000000;
              v795 = 44226;
              v796 = 0xA200000000000000;
              location = v276;
              LODWORD(v751) = v283;
              *&v812 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              *(&v812 + 1) = v292;
              v293 = String.nonBreakingSpace.unsafeMutableAddressor();
              v294 = v293[1];
              v802._countAndFlagsBits = *v293;
              v802._object = v294;
              v795 = 0x3B7073626E26;
              v796 = 0xE600000000000000;
              v295 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v297 = v296;

              *&v812 = v295;
              *(&v812 + 1) = v297;
              v802._countAndFlagsBits = 10;
              v802._object = 0xE100000000000000;
              v795 = 28252;
              v796 = 0xE200000000000000;
              v298 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v300 = v299;

              v301 = sub_1000109A8(v298, v300, v792);

              *(v289 + 4) = v301;
              _os_log_impl(&_mh_execute_header, v282, v751, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v289, 0xCu);
              sub_10000959C(v290);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v276 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_212;
        }

LABEL_551:
        __break(1u);
        goto LABEL_552;
      }

LABEL_239:
    }

    else
    {
    }

    v249 = 0;
    v314 = 0;
    if (v731)
    {
LABEL_241:
      sub_100C8D97C();
      v314 = v249;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v316 = v763;
    sub_100C9C4F8(v27, a10, v264, v266, v27, a10, v45, v763, v730._countAndFlagsBits, *&v258, -location, 0, _swiftEmptyArrayStorage);
    v318 = v317;
    v761 = v317;
    v319 = sub_100C7D24C(v317);
    v37 = v749;
    if (v319 < 1)
    {

      goto LABEL_383;
    }

    v320 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v314)
    {

      v108 = v768;
      v111 = v769;
      sub_10010FC20(&qword_1011BC098, &qword_100F0EFC8);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_100EBC6B0;
      *(v109 + 4) = v318;
      *(v109 + 5) = *&v45;

      goto LABEL_400;
    }

    if (v731)
    {
      sub_100C8D7C8();
    }

    v699 = v316;
    v40 = v761;
    v716 = sub_100C7D24C(v761);
    if (!v716)
    {

      location = 0;
      v444 = v320;
      v445 = v40;
      goto LABEL_392;
    }

    v736 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v707 = v40 + 32;
    v708 = v40 & 0xFFFFFFFFFFFFFF8;
    v321 = v751;
    v717 = v40 & 0xC000000000000001;
    v718 = v751 & 0xC000000000000001;
    v719 = v40;

    v745 = 0.0;
    *&v740 = 0.0;
    v258 = 0.0;
    v322 = 0;
    v323 = 0;
    v704 = v321 + 40;
    LODWORD(v748) = 1;
    *&v324 = 136446466;
    v705 = v324;
    *&v324 = 136315394;
    v706 = v324;
    v700 = v320;
    v701 = v320;
    LODWORD(v738) = 1;
    v703 = v45;
    v723 = object;
LABEL_252:
    if (v717)
    {
      v325 = object;
      v326 = v322;
      location = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v326, 1);
      v327 = v326 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v322 >= *(v708 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v325 = object;
    location = *(v707 + 8 * v322);
    v328 = v322;

    v57 = __OFADD__(v328, 1);
    v327 = v328 + 1;
    if (v57)
    {
LABEL_528:
      __break(1u);
LABEL_529:
      __break(1u);
LABEL_530:
      swift_once();
      continue;
    }

    break;
  }

  v727 = v327;
  v329 = *(location + 32);
  v812 = *(location + 16);
  v813 = v329;
  v814 = *(location + 48);
  v815 = *(location + 64);
  v41 = v762;
  if (!v762[2].isa)
  {
    goto LABEL_269;
  }

  v833 = *(location + 32);
  v834 = v814;
  sub_100118E9C(&v833, &v788);
  v37 = &qword_1011BC0A0;
  sub_1000089F8(&v834, &v788, &qword_1011BC0A0, &unk_100F0EFD0);
  v330 = sub_100C71CF0(&v812);
  v40 = v331;
  sub_100015BB0(&v833);
  sub_1000095E8(&v834, &qword_1011BC0A0, &unk_100F0EFD0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_269;
  }

  v40 = *(v41[7].isa + v330);
  if (!(v40 >> 62))
  {
    object = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v748)
    {

      LODWORD(v748) = 1;
    }

    else
    {
      if (v258 != 0.0)
      {
        object = v325;
        if (v323)
        {
          a10 = v745;
          v340 = *(v323 + 144);
          v341 = *(v323 + 152);
          v342 = *(v323 + 160);
          v343 = *(v323 + 168);

          v843.origin.x = v340;
          v843.origin.y = v341;
          v843.size.width = v342;
          v843.size.height = v343;
          v344 = CGRectGetMaxX(v843);
          v345 = location;
          *(location + 144) = v344 + *(v325 + 336);
          sub_100CA4604(*(v345 + 176) + a10, *(v345 + 184), *(v345 + 192), *(v345 + 200));
          v346 = CGRectGetMaxX(*(v345 + 176));
          v347 = v346 - CGRectGetMinX(*(*&v258 + 176));
          if (CGRectGetWidth(*(*&v258 + 176)) >= v347)
          {

            LODWORD(v748) = 0;
            v27 = 0.0;
          }

          else
          {
            v348 = *(*&v258 + 192);
            v349 = v347 - v348 + *(v325 + 336);
            sub_100CA4604(*(*&v258 + 176), *(*&v258 + 184), v348 + v349, *(*&v258 + 200));
            v320 = v320 + v349;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v258 + 176)) > v12)
            {
              v350 = *(v323 + 32);
              v786[0] = *(v323 + 16);
              v786[1] = v350;
              v786[2] = *(v323 + 48);
              v787 = *(v323 + 64);
              if (v41[2].isa)
              {
                v351 = sub_100C71CF0(v786);
                if (v352)
                {
                  v353 = *(v41[7].isa + v351);
                  if (v353 >> 62)
                  {
                    if (_CocoaArrayWrapper.endIndex.getter())
                    {
LABEL_378:
                      v702 = v323;
                      v720 = v41;

                      swift_bridgeObjectRelease_n();
                      sub_100C7135C(0, (v353 & 0xC000000000000001) == 0, v353);
                      if ((v353 & 0xC000000000000001) != 0)
                      {
                        v249 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                      }

                      else
                      {
                        v249 = *(v353 + 32);
                      }

                      if (v731)
                      {
                        sub_100C9580C(*(v249 + 88), *(v249 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      sub_100C95694(v249);
LABEL_535:
                      if (qword_1011BB880 != -1)
                      {
                        swift_once();
                      }

                      v680 = type metadata accessor for Logger();
                      sub_1000060E4(v680, static Logger.lyrics);
                      v681 = v746;

                      v682 = Logger.logObject.getter();
                      v683 = static os_log_type_t.default.getter();

                      if (os_log_type_enabled(v682, v683))
                      {
                        v684 = swift_slowAlloc();
                        v751 = swift_slowAlloc();
                        v754 = v751;
                        *v684 = v706;
                        v685 = *(*&v258 + 72);
                        v686 = *(*&v258 + 80);

                        v687 = sub_1000109A8(v685, v686, &v754);

                        *(v684 + 4) = v687;
                        *(v684 + 12) = 2082;
                        v688 = v725[1];
                        *&v788 = *v725;
                        *(&v788 + 1) = v688;
                        v757 = 10519010;
                        v758 = 0xA300000000000000;
                        v759 = 44226;
                        v760 = 0xA200000000000000;
                        *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        *(&v788 + 1) = v689;
                        v690 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v691 = v690[1];
                        v757 = *v690;
                        v758 = v691;
                        v759 = 0x3B7073626E26;
                        v760 = 0xE600000000000000;
                        v692 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v726 = v258;
                        v694 = v693;

                        *&v788 = v692;
                        *(&v788 + 1) = v694;
                        v757 = 10;
                        v758 = 0xE100000000000000;
                        v759 = 28252;
                        v760 = 0xE200000000000000;
                        v695 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                        v697 = v696;

                        v698 = sub_1000109A8(v695, v697, &v754);

                        *(v684 + 14) = v698;
                        _os_log_impl(&_mh_execute_header, v682, v683, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v684, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*((v353 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v748) = 0;
          }
        }

        else
        {
          LODWORD(v748) = 0;
        }

LABEL_251:
        v323 = location;
        v322 = v727;
        if (v727 == v716)
        {

          v445 = v719;

          if (v258 != 0.0)
          {
            v446 = *(*&v258 + 112);
            if (v446 < v721)
            {

              v447 = v722;
              v448 = v751;
              if (v446 + 1 != v722)
              {
                v614 = v751 & 0xFFFFFFFFFFFFFF8;
                v615 = v446;
                while (1)
                {
                  if (v615 < v446 || v615 + 1 >= v447)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v718)
                  {
                    v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                  }

                  else
                  {
                    if (v615 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v615 + 1) >= *(v614 + 16))
                    {
                      goto LABEL_549;
                    }

                    v40 = *(v448 + 8 * v615 + 40);
                  }

                  sub_100CA4604(v320 + *(v40 + 176), *(v40 + 184), *(v40 + 192), *(v40 + 200));
                  if (CGRectGetMaxX(*(v40 + 176)) > v12)
                  {
                    break;
                  }

                  ++v615;
                  v447 = v722;
                  v448 = v751;
                  if (v721 == v615)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v731)
                {
                  goto LABEL_515;
                }

                sub_100C9580C(*(v40 + 88), *(v40 + 96));
LABEL_516:
                if (qword_1011BB880 != -1)
                {
                  swift_once();
                }

                v659 = type metadata accessor for Logger();
                sub_1000060E4(v659, static Logger.lyrics);
                v660 = v746;

                v661 = Logger.logObject.getter();
                v662 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v661, v662))
                {
                  v663 = swift_slowAlloc();
                  v664 = swift_slowAlloc();
                  v750 = v661;
                  v751 = v664;
                  v754 = v664;
                  *v663 = v706;
                  v665 = *(v40 + 72);
                  v666 = *(v40 + 80);

                  v667 = sub_1000109A8(v665, v666, &v754);

                  *(v663 + 4) = v667;
                  *(v663 + 12) = 2082;
                  v668 = v725[1];
                  *&v788 = *v725;
                  *(&v788 + 1) = v668;
                  v757 = 10519010;
                  v758 = 0xA300000000000000;
                  v759 = 44226;
                  v760 = 0xA200000000000000;
                  LODWORD(v748) = v662;
                  *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  *(&v788 + 1) = v669;
                  v670 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v671 = v670[1];
                  v757 = *v670;
                  v758 = v671;
                  v759 = 0x3B7073626E26;
                  v760 = 0xE600000000000000;
                  v672 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v726 = v258;
                  v674 = v673;

                  *&v788 = v672;
                  *(&v788 + 1) = v674;
                  v757 = 10;
                  v758 = 0xE100000000000000;
                  v759 = 28252;
                  v760 = 0xE200000000000000;
                  v675 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                  v677 = v676;

                  v678 = sub_1000109A8(v675, v677, &v754);

                  *(v663 + 14) = v678;
                  v679 = v750;
                  _os_log_impl(&_mh_execute_header, v750, v748, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v663, 0x16u);
                  swift_arrayDestroy();
                }

                else
                {
                }

                goto LABEL_521;
              }

LABEL_390:
            }
          }

          v444 = v701;
LABEL_392:
          v449 = sub_100C7D24C(v445);
          if (v449)
          {
            v450 = v449;
            if (v449 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v450; ++i)
            {
              if ((v445 & 0xC000000000000001) != 0)
              {
                v452 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
              }

              *(v452 + 224) = v444 + *(v452 + 224);
            }
          }

          v453 = v714;
          v108 = v768;
          v111 = v769;
          sub_10010FC20(&qword_1011BC098, &qword_100F0EFC8);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_100EBC6B0;

          *&v788 = sub_100C9BB84(v454, sub_100C9BDB0);
          sub_100C9A7A8(&v788);

          *(v109 + 4) = v788;
          *(v109 + 5) = *&v45;

LABEL_400:

          v27 = v320;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v748) = 0;
    }

    object = v325;
    goto LABEL_251;
  }

  object = _CocoaArrayWrapper.endIndex.getter();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v37 = v40 & 0xC000000000000001;
  if ((v40 & 0xC000000000000001) != 0)
  {

    v332 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_542;
    }

    v332 = *(v40 + 32);
  }

  v735 = object;
  v741 = v40 & 0xC000000000000001;
  v742 = v40;
  v737 = v332;
  v720 = v41;
  v702 = v323;
  v726 = v258;
  if (!v323)
  {
    LODWORD(v750) = 0;
    v747 = 0;
    v739 = 0;
    v734 = 0;
    v37 = 0;
    v354 = location;
    v355 = *(location + 32);
    v802 = *(location + 16);
    v803 = v355;
    v804 = *(location + 48);
    v805 = *(location + 64);
LABEL_285:
    object = *(v354 + 64);
    v356 = *(v354 + 32);
    v40 = *(v354 + 40);
    v45 = *(v354 + 16);
    v357 = *(v354 + 24);
    v835 = v803;
    v836 = v804;
    sub_100118E9C(&v835, &v788);
    sub_1000089F8(&v836, &v788, &qword_1011BC0A0, &unk_100F0EFD0);
    sub_100C9DA40(v37, v734, v739, 0);
    sub_100C9DA40(v45, v357, v356, v40);
    goto LABEL_286;
  }

  v334 = *(v323 + 16);
  v333 = *(v323 + 24);
  v40 = *(v323 + 32);
  object = *(v323 + 40);
  v335 = v323;
  v336 = *(v323 + 48);
  v337 = *(v335 + 56);
  v37 = *(v335 + 64);
  v338 = *(location + 32);
  v802 = *(location + 16);
  v803 = v338;
  v804 = *(location + 48);
  v805 = *(location + 64);

  if (!object)
  {
    v354 = location;
    LODWORD(v750) = v37;
    v747 = v337;
    v739 = v40;
    v734 = v333;
    v37 = v334;
    goto LABEL_285;
  }

  v795 = v334;
  v796 = v333;
  v797 = v40;
  v798 = object;
  v799 = v336;
  v800 = v337;
  v801 = v37;
  v339 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v795, &v802);
  sub_100C9DA40(v334, v333, v40, object);
  if (v339)
  {

    v323 = v702;
    v45 = v703;
    v258 = v726;
    v41 = v720;
    v325 = v723;
    goto LABEL_269;
  }

LABEL_286:
  v734 = v735 - 1;
  v41 = v737;
  if (__OFSUB__(v735, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v358 = 0;
  v359 = v741;
  v37 = v742;
  v729 = v742 & 0xFFFFFFFFFFFFFF8;
  v739 = v742 + 32;
  a10 = v700;
  *&v45 = v726;
  v258 = *&v740;
  while (2)
  {
    if (v359)
    {
      v360 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v358 >= *(v729 + 16))
      {
        goto LABEL_525;
      }

      v360 = *(v739 + 8 * v358);

      v57 = __OFADD__(v358, 1);
      v361 = (v358 + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        sub_100C95694(v40);
        goto LABEL_516;
      }
    }

    v362 = CGRectGetWidth(*(v360 + 176));

    if (v359)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
    }

    v363 = === infix(_:_:)();

    v364 = *(v360 + 176);
    if (v363)
    {
      *(location + 144) = v364;
    }

    sub_100CA4604(v320 + v364, *(v360 + 184), *(v360 + 192), *(v360 + 200));
    v750 = v360;
    v747 = v361;
    if (*&v45 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v359)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      v385 = === infix(_:_:)();

      if (v385)
      {
        v386 = v750[22].isa;
        v258 = *&v386 - *(location + 176);
        sub_100CA4604(*&v386, *&v750[23].isa, *(location + 192), *(location + 200));
        LODWORD(v748) = 0;
        LODWORD(v738) = 0;
        v745 = v258;
      }
    }

    else
    {
      v365 = v41;
      v366 = *(v45 + 112);
      v367 = *(v360 + 112);
      if (v367 <= v366)
      {
        v37 = *(v45 + 112);
      }

      else
      {
        v37 = *(v360 + 112);
      }

      if (v367 >= v366)
      {
        v368 = *(v45 + 112);
      }

      else
      {
        v368 = *(v360 + 112);
      }

      if (__OFADD__(v368, 1))
      {
        __break(1u);
LABEL_523:
        __break(1u);
LABEL_524:
        __break(1u);
LABEL_525:
        __break(1u);
LABEL_526:
        __break(1u);
LABEL_527:
        __break(1u);
        goto LABEL_528;
      }

      if (v368 + 1 < v37)
      {
        *&v740 = v258;
        v369 = v718;
        v370 = v751;
        sub_100C7135C(v368 + 1, v718 == 0, v751);
        sub_100C7135C(v37 - 1, v369 == 0, v370);

        v371 = (v368 + 1);
        if (v369)
        {
          do
          {
            v372 = v371 + 1;
            v373 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            sub_100CA4604(v320 + v373[22], v373[23], v373[24], v373[25]);
            swift_unknownObjectRelease();
            v371 = v372;
          }

          while (v37 != v372);
        }

        else
        {
          v374 = ~v368 + v37;
          v375 = (v704 + 8 * v368);
          do
          {
            v376 = *v375++;
            v27 = v376[23];
            v377 = v376[24];
            v378 = v376[25];
            v379 = v320 + v376[22];

            sub_100CA4604(v379, v27, v377, v378);

            --v374;
          }

          while (v374);
        }

        v365 = v737;
        v258 = *&v740;
        v359 = v741;
      }

      v380 = v745;
      if (v360 == v45)
      {
        v380 = v258;
      }

      v745 = v380;
      v381 = v748;
      if (v360 == v45)
      {
        v381 = v738;
      }

      if ((v360 != v45) | v738 & 1)
      {
        LODWORD(v748) = v381;
        v37 = v742;
        v41 = v365;
        goto LABEL_322;
      }

      v382 = *(location + 184);
      v383 = *(location + 192);
      v384 = *(location + 200);
      v27 = *(location + 176) + v258;

      sub_100CA4604(v27, v382, v383, v384);
      LODWORD(v748) = 0;
      LODWORD(v738) = 0;
      v745 = v258;
      v37 = v742;
      v41 = v365;
    }

    v387 = *&v41[4].isa;
    v792[0] = *&v41[2].isa;
    v792[1] = v387;
    v793 = *&v41[6].isa;
    v794 = v41[8].isa;
    v388 = *&v746[v736];
    if (*(v388 + 16))
    {
      v389 = v41;
      v837 = *&v41[4].isa;
      v838[0] = v793;
      sub_100118E9C(&v837, &v788);
      sub_1000089F8(v838, &v788, &qword_1011BC0A0, &unk_100F0EFD0);

      v390 = sub_100C71CF0(v792);
      v392 = v391;
      sub_100015BB0(&v837);
      sub_1000095E8(v838, &qword_1011BC0A0, &unk_100F0EFD0);
      if (v392)
      {
        v740 = *(*(v388 + 56) + 8 * v390);
      }

      else
      {

        *&v740 = 0.0;
      }

      v359 = v741;
      v37 = v742;
      v41 = v389;
      if (v741)
      {
LABEL_337:
        v393 = v750;

        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v358 = v747;
        goto LABEL_338;
      }
    }

    else
    {
      *&v740 = 0.0;
      if (v359)
      {
        goto LABEL_337;
      }
    }

    v358 = v747;
    if ((v734 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v734 >= *(v729 + 16))
    {
      goto LABEL_527;
    }

    v393 = v750;

LABEL_338:
    a10 = a10 + v362;
    v40 = === infix(_:_:)();

    if ((v40 & 1) == 0)
    {
      goto LABEL_362;
    }

    v394 = v393[6].isa;
    v395 = *(v394 + 2);
    if (v395)
    {
      v396 = v394 + 56 * v395;
      v398 = *(v396 + 1);
      v397 = *(v396 + 2);
      v57 = __OFADD__(v398, v397);
      v395 = v398 + v397;
      if (v57)
      {
        goto LABEL_529;
      }

      v399 = *(v394 + 8);
    }

    else
    {
      v399 = 0;
    }

    v400 = v395 - v399;
    if (__OFSUB__(v395, v399))
    {
      goto LABEL_523;
    }

    v401 = v399 + v733;
    if (__OFADD__(v399, v733))
    {
      goto LABEL_524;
    }

    v402.location = v399 + v733;
    v402.length = v395 - v399;
    if (_NSRange.contains(_:)(v402))
    {
      goto LABEL_359;
    }

    if (v740 == 1)
    {

      v455 = v736;
      v456 = *&v737[4].isa;
      v788 = *&v737[2].isa;
      v789 = v456;
      v790 = *&v737[6].isa;
      v791 = v737[8].isa;
      v457 = v746;
      swift_beginAccess();
      v458 = swift_isUniquelyReferenced_nonNull_native();
      v759 = *&v457[v455];
      *&v457[v455] = 0x8000000000000000;
      sub_100C74178(2, &v788, v458);
      *&v457[v455] = v759;
      swift_endAccess();
      if (v741)
      {
        v459 = specialized _ArrayBuffer._getElementSlowPath(_:)();

        v460 = *(v459 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v505 = *(v742 + 32);

        v460 = *(v505 + 88);
      }

      v27 = 0.0;
      if (v460 != v744)
      {
        v726 = *&v45;
        v249 = v746;
        v514 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v515 = v725;
        *v725 = *&v746[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v515[1] = v514;

        if (qword_1011BB880 != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v506 = String._bridgeToObjectiveC()();

      v507 = String._bridgeToObjectiveC()();
      v508 = String._bridgeToObjectiveC()();
      v509 = _swiftEmptyArrayStorage[2];
      if (v509)
      {
        v510 = 0;
        v511 = &_swiftEmptyArrayStorage[4];
        do
        {
          v513 = *v511++;
          v512 = v513;
          if ((v513 & ~v510) == 0)
          {
            v512 = 0;
          }

          v510 |= v512;
          --v509;
        }

        while (v509);
      }

      else
      {
        v510 = 0;
      }

      v616 = [v506 stringByReplacingOccurrencesOfString:v507 withString:v508 options:v510 range:{v401, v400}];

      v617 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v619 = v618;

      v620 = v725;
      *v725 = v617;
      v620[1] = v619;

      v621 = [v506 length];
      v463 = v620[1];

      v622 = String.count.getter();

      v57 = __OFSUB__(v621, v622);
      v470 = &v621[-v622];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v623 = sub_100C773C4(v393[6].isa);
        if (!__OFSUB__(v733, v470))
        {
          v625 = (v733 - v470) & ~((v733 - v470) >> 63);
          v470 = (v623 + v625);
          if (!__OFADD__(v623, v625))
          {
            v626 = v624;
            v627 = &v470[v624];
            if (!__OFADD__(v470, v624))
            {

              v628 = String.count.getter();

              if (v627 == v628)
              {

                goto LABEL_115;
              }

              v749 = v506;
              v726 = *&v45;
              v629 = v626;
              v630 = v746;
              sub_100C9580C(v470, v629);
              if (qword_1011BB880 != -1)
              {
                swift_once();
              }

              v631 = type metadata accessor for Logger();
              sub_1000060E4(v631, static Logger.lyrics);
              v632 = swift_allocObject();
              *(v632 + 16) = v630;
              v633 = v630;

              v748 = Logger.logObject.getter();
              LODWORD(v751) = static os_log_type_t.default.getter();
              v634 = swift_allocObject();
              *(v634 + 16) = 32;
              v635 = swift_allocObject();
              *(v635 + 16) = 8;
              v636 = swift_allocObject();
              *(v636 + 16) = sub_100C9DDFC;
              *(v636 + 24) = *&v393;
              v637 = swift_allocObject();
              *(v637 + 16) = sub_100C9E754;
              *(v637 + 24) = v636;
              v638 = swift_allocObject();
              *(v638 + 16) = 34;
              v639 = swift_allocObject();
              *(v639 + 16) = 8;
              v640 = swift_allocObject();
              *(v640 + 16) = sub_100C9E760;
              *(v640 + 24) = v632;
              v641 = swift_allocObject();
              *(v641 + 16) = sub_100C9E754;
              *(v641 + 24) = v640;
              sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
              v642 = swift_allocObject();
              *(v642 + 16) = xmmword_100EBCED0;
              *(v642 + 32) = sub_100C9E7DC;
              *(v642 + 40) = v634;
              *(v642 + 48) = sub_100C9E7DC;
              *(v642 + 56) = v635;
              *(v642 + 64) = sub_100C9E734;
              *(v642 + 72) = v637;
              *(v642 + 80) = sub_100C9E7DC;
              *(v642 + 88) = v638;
              *(v642 + 96) = sub_100C9E7DC;
              *(v642 + 104) = v639;
              *(v642 + 112) = sub_100C9E734;
              *(v642 + 120) = v641;
              swift_setDeallocating();
              sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v643 = v748;
              if (os_log_type_enabled(v748, v751))
              {
                v644 = swift_slowAlloc();
                v756 = swift_slowAlloc();
                *v644 = v706;
                v645 = v393[9].isa;
                v646 = v393[10].isa;

                v647 = sub_1000109A8(v645, v646, &v756);

                *(v644 + 4) = v647;
                *(v644 + 12) = 2082;
                v648 = v725[1];
                v757 = *v725;
                v758 = v648;
                v759 = 10519010;
                v760 = 0xA300000000000000;
                v754 = 44226;
                v755 = 0xA200000000000000;
                v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v758 = v649;
                v650 = String.nonBreakingSpace.unsafeMutableAddressor();
                v651 = v650[1];
                v759 = *v650;
                v760 = v651;
                v754 = 0x3B7073626E26;
                v755 = 0xE600000000000000;
                v652 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v654 = v653;

                v757 = v652;
                v758 = v654;
                v759 = 10;
                v760 = 0xE100000000000000;
                v754 = 28252;
                v755 = 0xE200000000000000;
                v655 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
                v657 = v656;

                v658 = sub_1000109A8(v655, v657, &v756);

                *(v644 + 14) = v658;
                _os_log_impl(&_mh_execute_header, v643, v751, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v644, 0x16u);
                swift_arrayDestroy();

                goto LABEL_507;
              }

              goto LABEL_509;
            }

LABEL_562:
            __break(1u);
            goto LABEL_563;
          }

LABEL_561:
          __break(1u);
          goto LABEL_562;
        }
      }

      __break(1u);
      goto LABEL_561;
    }

    if (v740 >= 2)
    {
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v414 = type metadata accessor for Logger();
      sub_1000060E4(v414, static Logger.lyrics);
      v415 = v724;

      v416 = v730._object;

      v407 = Logger.logObject.getter();
      v417 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v407, v417))
      {
        v409 = swift_slowAlloc();
        v418 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v418;
        *v409 = v705;
        *(v409 + 4) = sub_1000109A8(countAndFlagsBits, v415, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = sub_1000109A8(v730._countAndFlagsBits, v416, &v788);
        v411 = v417;
        v412 = v407;
        v413 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&_mh_execute_header, v412, v411, v413, v409, 0x16u);
        swift_arrayDestroy();
        *&v45 = v726;
      }
    }

    else
    {
      v403 = v737;
      if (v737[14].isa)
      {
        v500 = v740;

        v501 = *(v403 + 32);
        v788 = *(v403 + 16);
        v789 = v501;
        v790 = *(v403 + 48);
        v791 = *(v403 + 64);
        v502 = v746;
        v503 = v736;
        swift_beginAccess();
        v504 = swift_isUniquelyReferenced_nonNull_native();
        v759 = *&v502[v503];
        *&v502[v503] = 0x8000000000000000;
        sub_100C74178(v500 + 1, &v788, v504);
        *&v502[v503] = v759;
        swift_endAccess();
        if (v731)
        {
          sub_100C9580C(*(v403 + 88), *(v403 + 96));
        }

        else
        {
          sub_100C95694(v403);
        }

        v27 = 0.0;
        v726 = *&v45;
        if (qword_1011BB880 != -1)
        {
          swift_once();
        }

        v590 = type metadata accessor for Logger();
        sub_1000060E4(v590, static Logger.lyrics);
        v591 = swift_allocObject();
        v592 = v746;
        *(v591 + 16) = v746;
        v593 = v592;
        v594 = Logger.logObject.getter();
        v595 = static os_log_type_t.default.getter();
        v596 = swift_allocObject();
        *(v596 + 16) = 34;
        v597 = swift_allocObject();
        *(v597 + 16) = 8;
        v598 = swift_allocObject();
        *(v598 + 16) = sub_100C9E760;
        *(v598 + 24) = v591;
        v599 = swift_allocObject();
        *(v599 + 16) = sub_100C9E754;
        *(v599 + 24) = v598;
        sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
        v600 = swift_allocObject();
        *(v600 + 16) = xmmword_100EBE260;
        *(v600 + 32) = sub_100C9E7DC;
        *(v600 + 40) = v596;
        *(v600 + 48) = sub_100C9E7DC;
        *(v600 + 56) = v597;
        *(v600 + 64) = sub_100C9E734;
        *(v600 + 72) = v599;
        swift_setDeallocating();
        sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v594, v595))
        {
          v601 = swift_slowAlloc();
          v602 = swift_slowAlloc();
          v756 = v602;
          *v601 = 136446210;
          v603 = v725[1];
          v757 = *v725;
          v758 = v603;
          v759 = 10519010;
          v760 = 0xA300000000000000;
          v754 = 44226;
          v755 = 0xA200000000000000;
          LODWORD(v751) = v595;
          v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v758 = v604;
          v605 = String.nonBreakingSpace.unsafeMutableAddressor();
          v606 = v605[1];
          v759 = *v605;
          v760 = v606;
          v754 = 0x3B7073626E26;
          v755 = 0xE600000000000000;
          v607 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v609 = v608;

          v757 = v607;
          v758 = v609;
          v759 = 10;
          v760 = 0xE100000000000000;
          v754 = 28252;
          v755 = 0xE200000000000000;
          v610 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v612 = v611;

          v613 = sub_1000109A8(v610, v612, &v756);

          *(v601 + 4) = v613;
          _os_log_impl(&_mh_execute_header, v594, v751, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v601, 0xCu);
          sub_10000959C(v602);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v404 = type metadata accessor for Logger();
      sub_1000060E4(v404, static Logger.lyrics);
      v405 = v724;

      v406 = v730._object;

      v407 = Logger.logObject.getter();
      v408 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v407, v408))
      {
        v409 = swift_slowAlloc();
        v410 = swift_slowAlloc();
        v726 = *&v45;
        *&v788 = v410;
        *v409 = v705;
        *(v409 + 4) = sub_1000109A8(countAndFlagsBits, v405, &v788);
        *(v409 + 12) = 2082;
        *(v409 + 14) = sub_1000109A8(v730._countAndFlagsBits, v406, &v788);
        v411 = v408;
        v412 = v407;
        v413 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v37 = v742;
LABEL_359:
    v40 = location;
    v419 = CGRectGetWidth(*(location + 176));
    v420 = v723;
    if (a10 < v419 + *(v723 + 336))
    {
      v421 = CGRectGetWidth(*(v40 + 176)) - a10 + *(v420 + 336);
      v320 = v320 + v421;
      sub_100CA4604(*&v393[22].isa, *&v393[23].isa, v421 + *&v393[24].isa, *&v393[25].isa);
    }

    v41 = v737;
    v359 = v741;
LABEL_362:
    v422 = CGRectGetMaxX(*&v393[22].isa);
    *&v788 = v422;
    v757 = *&v12;
    if ((dispatch thunk of static ApproximatelyEquatable.==~ infix(_:_:)() & 1) != 0 || v422 <= v12)
    {

      goto LABEL_289;
    }

    if (v740 > 1)
    {
      v40 = v41;
      if (qword_1011BB880 != -1)
      {
        swift_once();
      }

      v423 = type metadata accessor for Logger();
      sub_1000060E4(v423, static Logger.lyrics);
      v424 = v746;
      v425 = Logger.logObject.getter();
      v426 = static os_log_type_t.default.getter();

      v715 = v426;
      if (os_log_type_enabled(v425, v426))
      {
        v427 = swift_slowAlloc();
        v754 = swift_slowAlloc();
        *v427 = v706;
        v428 = CGSize.description.getter();
        v40 = v425;
        v430 = sub_1000109A8(v428, v429, &v754);

        *(v427 + 4) = v430;
        *(v427 + 12) = 2082;
        v431 = v725[1];
        *&v788 = *v725;
        *(&v788 + 1) = v431;
        v757 = 10519010;
        v758 = 0xA300000000000000;
        v759 = 44226;
        v760 = 0xA200000000000000;
        v726 = *&v45;
        *&v740 = v258;
        *&v788 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        *(&v788 + 1) = v432;
        v433 = String.nonBreakingSpace.unsafeMutableAddressor();
        v434 = v433[1];
        v757 = *v433;
        v758 = v434;
        v759 = 0x3B7073626E26;
        v760 = 0xE600000000000000;
        v435 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v437 = v436;

        *&v788 = v435;
        *(&v788 + 1) = v437;
        v757 = 10;
        v758 = 0xE100000000000000;
        v759 = 28252;
        v760 = 0xE200000000000000;
        v258 = *&v740;
        v37 = v742;
        v438 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v440 = v439;

        v441 = sub_1000109A8(v438, v440, &v754);

        *(v427 + 14) = v441;
        _os_log_impl(&_mh_execute_header, v40, v715, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v427, 0x16u);
        swift_arrayDestroy();

        v359 = v741;
        v41 = v737;
      }

      else
      {

        v41 = v40;
      }

      v393 = v750;
LABEL_289:
      v45 = v393;
      if (v358 == v735)
      {
        v40 = v41;
        *&v740 = v258;

        v442 = location;
        v443 = CGRectGetMaxX(*(location + 176));
        v41 = v720;
        if (v701 < v443)
        {
          v701 = CGRectGetMaxX(*(v442 + 176));
        }

        v258 = *&v393;
        v27 = 0.0;
        v45 = v703;
        object = v723;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v740 == 1)
  {
    v726 = *&v45;
    v461 = v725;
    v462 = v725[1];
    *&v788 = *v725;
    *(&v788 + 1) = v462;

    v463 = String.nonBreakingSpace.unsafeMutableAddressor();
    v464 = v463[1];
    v757 = *v463;
    v758 = v464;
    v759 = 0;
    v760 = 0xE000000000000000;
    v465 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v466 = v41;
    v468 = v467;

    *v461 = v465;
    v461[1] = v468;

    v469 = *&v466[4].isa;
    v788 = *&v466[2].isa;
    v789 = v469;
    v790 = *&v466[6].isa;
    v791 = v466[8].isa;
    v470 = v746;
    v471 = v736;
    swift_beginAccess();
    v472 = swift_isUniquelyReferenced_nonNull_native();
    v759 = *&v470[v471];
    *&v470[v471] = 0x8000000000000000;
    sub_100C74178(2, &v788, v472);
    *&v470[v471] = v759;
    swift_endAccess();
    v27 = 0.0;
    if (qword_1011BB880 == -1)
    {
LABEL_406:
      v473 = type metadata accessor for Logger();
      sub_1000060E4(v473, static Logger.lyrics);
      v474 = swift_allocObject();
      *(v474 + 16) = v470;
      v475 = v470;
      v476 = Logger.logObject.getter();
      v477 = static os_log_type_t.default.getter();
      v478 = swift_allocObject();
      *(v478 + 16) = 34;
      v479 = swift_allocObject();
      *(v479 + 16) = 8;
      v480 = swift_allocObject();
      *(v480 + 16) = sub_100C9E760;
      *(v480 + 24) = v474;
      v481 = swift_allocObject();
      *(v481 + 16) = sub_100C9DA8C;
      *(v481 + 24) = v480;
      sub_10010FC20(&qword_1011BBAD8, &qword_100F0E5F0);
      v482 = swift_allocObject();
      *(v482 + 16) = xmmword_100EBE260;
      *(v482 + 32) = sub_100C9DA84;
      *(v482 + 40) = v478;
      *(v482 + 48) = sub_100C9E7DC;
      *(v482 + 56) = v479;
      *(v482 + 64) = sub_100C9DA94;
      *(v482 + 72) = v481;
      swift_setDeallocating();
      sub_10010FC20(&qword_1011BC0E0, &qword_100F0F010);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v476, v477))
      {
        v483 = swift_slowAlloc();
        v484 = swift_slowAlloc();
        v756 = v484;
        *v483 = 136446210;
        v485 = v725[1];
        v757 = *v725;
        v758 = v485;
        v759 = 10519010;
        v760 = 0xA300000000000000;
        v754 = 44226;
        v755 = 0xA200000000000000;
        LODWORD(v751) = v477;
        v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v758 = v486;
        v487 = v463[1];
        v759 = *v463;
        v760 = v487;
        v754 = 0x3B7073626E26;
        v755 = 0xE600000000000000;
        v488 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v490 = v489;

        v757 = v488;
        v758 = v490;
        v759 = 10;
        v760 = 0xE100000000000000;
        v754 = 28252;
        v755 = 0xE200000000000000;
        v491 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
        v493 = v492;

        v494 = sub_1000109A8(v491, v493, &v756);

        *(v483 + 4) = v494;
        _os_log_impl(&_mh_execute_header, v476, v751, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v483, 0xCu);
        sub_10000959C(v484);
      }

      else
      {
      }

      goto LABEL_476;
    }

LABEL_563:
    swift_once();
    goto LABEL_406;
  }

  v495 = *&v41[4].isa;
  v788 = *&v41[2].isa;
  v789 = v495;
  v790 = *&v41[6].isa;
  v791 = v41[8].isa;
  v496 = v746;
  v497 = v736;
  v498 = v740;
  swift_beginAccess();
  v499 = swift_isUniquelyReferenced_nonNull_native();
  v759 = *&v496[v497];
  *&v496[v497] = 0x8000000000000000;
  sub_100C74178(v498 + 1, &v788, v499);
  *&v496[v497] = v759;
  swift_endAccess();
  v27 = 0.0;
  if (v731)
  {
    sub_100C9580C(v41[11].isa, v41[12].isa);
  }

  else
  {
    sub_100C95694(v41);
  }

  v570 = location;
  if (qword_1011BB880 != -1)
  {
    swift_once();
  }

  v571 = type metadata accessor for Logger();
  sub_1000060E4(v571, static Logger.lyrics);
  v572 = v746;

  v573 = Logger.logObject.getter();
  v574 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v573, v574))
  {
    v575 = swift_slowAlloc();
    v751 = swift_slowAlloc();
    location = v570;
    v756 = v751;
    *v575 = v706;
    v576 = v570[9];
    v577 = v570[10];

    v578 = sub_1000109A8(v576, v577, &v756);

    *(v575 + 4) = v578;
    *(v575 + 12) = 2082;
    v579 = v725[1];
    v757 = *v725;
    v758 = v579;
    v759 = 10519010;
    v760 = 0xA300000000000000;
    v754 = 44226;
    v755 = 0xA200000000000000;
    v726 = *&v45;
    v757 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v758 = v580;
    v581 = String.nonBreakingSpace.unsafeMutableAddressor();
    v582 = v581[1];
    v759 = *v581;
    v760 = v582;
    v754 = 0x3B7073626E26;
    v755 = 0xE600000000000000;
    v583 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v585 = v584;

    v757 = v583;
    v758 = v585;
    v759 = 10;
    v760 = 0xE100000000000000;
    v754 = 28252;
    v755 = 0xE200000000000000;
    v586 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v588 = v587;

    v589 = sub_1000109A8(v586, v588, &v756);

    *(v575 + 14) = v589;
    _os_log_impl(&_mh_execute_header, v573, v574, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v575, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

LABEL_475:

LABEL_476:

LABEL_477:
  v108 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
LABEL_116:
  a8 = v728;
LABEL_179:
  *a8 = v108;
  *(a8 + 1) = v111;
  *(a8 + 2) = v109;
  a8[3] = v27;
  *(a8 + 32) = v110;
}

uint64_t sub_100C95524(uint64_t a1)
{
  sub_100009988();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  String.nonBreakingSpace.unsafeMutableAddressor();
  StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v1;
}

void sub_100C95694(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (__OFADD__(v7++, 1))
  {
    __break(1u);
    return;
  }

LABEL_9:
  v16 = String._bridgeToObjectiveC()();
  [v8 insertString:v16 atIndex:v7];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *v3 = v17;
  v3[1] = v19;
}

void sub_100C9580C(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if (__OFADD__(v9++, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

LABEL_10:
  v18 = String._bridgeToObjectiveC()();
  [v10 insertString:v18 atIndex:v9];

  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id sub_100C959C8()
{
  v2.receiver = v0;
  v2.super_class = _s8TextViewCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s8TextViewCMa(uint64_t a1)
{
  result = qword_1011BC508;
  if (!qword_1011BC508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100C95C08(uint64_t a1, __n128 a2)
{
  sub_100C95D2C(319, a2);
  if (v2 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100C95D2C(uint64_t a1, __n128 a2)
{
  if (!qword_1011BBBC0)
  {
    type metadata accessor for Locale.Language();
    v2 = type metadata accessor for Optional();
    if (!v3)
    {
      atomic_store(v2, &qword_1011BBBC0);
    }
  }
}

__n128 sub_100C95D84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_100C95DB0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100C95DC8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 40))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100C95E1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100C95E80(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    v2 = a2 & 0x7FFFFFFF;
    *(result + 24) = 0u;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

unint64_t sub_100C95ECC()
{
  result = qword_1011BC518;
  if (!qword_1011BC518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011BC518);
  }

  return result;
}

void *sub_100C95F20(uint64_t a1, uint64_t a2)
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

  sub_10010FC20(&qword_1011BD520, &qword_100F100C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_100C95FA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 < 1)
    {
      if (v5 != a3)
      {
LABEL_7:
        a5(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011BD520, &qword_100F100C0);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v11 = v10 - 32;
      if (v10 < 32)
      {
        v11 = v10 - 25;
      }

      v9[2] = v6;
      v9[3] = (2 * (v11 >> 3)) | 1;
      if (v5 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_100C96094(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v2 = sub_100C95F20(v1, 0);

    specialized _ArrayBuffer._copyContents(initializing:)();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = _CocoaArrayWrapper.endIndex.getter();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_100C96130(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_10010FC20(&qword_1011BC090, &qword_100F0EFC0);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 56);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_100C96220(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v2 + 16);
  if (*v1)
  {
    v4 = a1;
    sub_100C7D238();
    if (v5)
    {
      a1 = v4;
LABEL_9:
      sub_100C75CFC(a1, v3);
      return 1;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v6 = 0;
    while (*(v2 + 32 + 8 * v6) != a1)
    {
      if (v3 == ++v6)
      {
        v3 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void sub_100C962B4(unint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v41 = a2 + 64;
    v39 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    v40 = v8;
    do
    {
      v46 = v4;
      v44 = 56 * v7;
      v9 = *(v3 + 48) + 56 * v7;
      v10 = *v9;
      v11 = *(v9 + 8);
      v12 = *(v9 + 32);
      v43 = *(v9 + 40);
      v45 = *(v9 + 48);
      Hasher.init(_seed:)();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      Hasher._combine(_:)(*&v14);

      String.hash(into:)();
      Hasher._combine(_:)(*(v12 + 16));
      v15 = *(v12 + 16);
      if (v15)
      {
        v16 = (v12 + 80);
        do
        {
          v17 = *(v16 - 6);
          v18 = *(v16 - 5);
          v20 = *(v16 - 2);
          v19 = *(v16 - 1);
          v22 = *v16;
          v16 += 7;
          v21 = *&v22;
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          Hasher._combine(_:)(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          Hasher._combine(_:)(*&v23);

          String.hash(into:)();
          Hasher._combine(_:)(v20);
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v21);

          --v15;
        }

        while (v15);
      }

      if (v45)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v43 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v43;
        }

        else
        {
          v24 = 0;
        }

        Hasher._combine(_:)(v24);
      }

      v3 = a2;
      v4 = v46;
      v25 = Hasher._finalize()();

      v26 = v25 & v40;
      if (v46 >= v39)
      {
        v5 = v41;
        if (v26 < v39)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v5 = v41;
        if (v26 >= v39)
        {
          goto LABEL_30;
        }
      }

      if (v46 >= v26)
      {
LABEL_30:
        v27 = *(a2 + 48);
        v28 = v27 + 56 * v46;
        v29 = (v27 + v44);
        if (56 * v46 < v44 || v28 >= v29 + 56 || v46 != v7)
        {
          v30 = *v29;
          v31 = v29[1];
          v32 = v29[2];
          *(v28 + 48) = *(v29 + 6);
          *(v28 + 16) = v31;
          *(v28 + 32) = v32;
          *v28 = v30;
        }

        v33 = *(a2 + 56);
        v34 = (v33 + 8 * v46);
        v35 = (v33 + 8 * v7);
        if (v46 != v7 || v34 >= v35 + 1)
        {
          *v34 = *v35;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v40;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v36 = *(v3 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v38;
    ++*(v3 + 36);
  }
}

uint64_t sub_100C965F0(double *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    v4 = a2;
    v5 = a1;
    v6 = 0;
    v7 = *a1;
    do
    {
      v8 = v4 + 56 * v6;
      if (*v8 == v7 && *(v8 + 8) == v5[1])
      {
        result = *(v8 + 16);
        v10 = *(v8 + 32);
        v11 = *(v8 + 40);
        v25 = *(v8 + 48);
        v12 = result == *(v5 + 2) && *(v8 + 24) == *(v5 + 3);
        if (v12 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
        {
          v13 = *(v5 + 4);
          v14 = *(v10 + 16);
          if (v14 == *(v13 + 16))
          {
            if (v14)
            {
              v15 = v10 == v13;
            }

            else
            {
              v15 = 1;
            }

            if (!v15)
            {
              v16 = (v10 + 80);
              v17 = v13 + 40;
              while (v14)
              {
                if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
                {
                  goto LABEL_4;
                }

                result = *(v16 - 4);
                v19 = *(v16 - 2);
                v20 = *(v16 - 1);
                v21 = *v16;
                v23 = *(v17 + 24);
                v22 = *(v17 + 32);
                v24 = *(v17 + 40);
                if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v5 = a1;
                  v4 = a2;
                  v3 = a3;
                  if ((result & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (v19 != v23 || v20 != v22 || *&v21 != v24)
                {
                  goto LABEL_4;
                }

                v16 += 7;
                v17 += 56;
                if (!--v14)
                {
                  goto LABEL_18;
                }
              }

              __break(1u);
              return result;
            }

LABEL_18:
            if (v25)
            {
              if (v5[6])
              {
                return v6;
              }
            }

            else if ((v5[6] & 1) == 0 && v11 == v5[5])
            {
              return v6;
            }
          }
        }
      }

LABEL_4:
      ++v6;
    }

    while (v6 != v3);
  }

  return 0;
}

void sub_100C967D0(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100C969C0(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

void sub_100C96888(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a2)
{
  v4 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v5 = *(v4 + 24) & 0x3FLL;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[1];
  if (v5 || *(v6 + 16) >= 0x10uLL)
  {
    v8 = static _HashTable.scale(forCapacity:)();
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v7 = sub_100C96938(v6, v10, 0, v5, a1, v9);
  }

  else
  {
    v7 = 0;
  }

  *v2 = v7;
}

uint64_t sub_100C96938(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a6)
{
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v10 <= v9)
  {
    v10 = v9;
  }

  if (v10 <= a4)
  {
    v10 = a4;
  }

  if (v10 >= 5)
  {
    v12 = _HashTable.init(scale:reservedScale:)();
    sub_100C96A90(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_100C969C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    sub_100C96A40(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int sub_100C96AE8(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int sub_100C96C18(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v23 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v4 = 0;
      while (1)
      {
        v5 = v23 + 56 * v4;
        v6 = *v5;
        v7 = *(v5 + 8);
        v8 = *(v5 + 32);
        v25 = *(v5 + 40);
        v26 = *(v5 + 48);
        Hasher.init(_seed:)();
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        Hasher._combine(_:)(*&v9);
        if (v7 == 0.0)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v7;
        }

        Hasher._combine(_:)(*&v10);

        String.hash(into:)();
        v11 = *(v8 + 16);
        Hasher._combine(_:)(v11);
        if (v11)
        {
          v12 = (v8 + 80);
          do
          {
            v13 = *(v12 - 6);
            v14 = *(v12 - 5);
            v15 = *(v12 - 2);
            v16 = *(v12 - 1);
            v18 = *v12;
            v12 += 7;
            v17 = *&v18;
            if (v13 == 0.0)
            {
              v13 = 0.0;
            }

            Hasher._combine(_:)(*&v13);
            if (v14 == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v14;
            }

            Hasher._combine(_:)(*&v19);

            String.hash(into:)();
            Hasher._combine(_:)(v15);
            Hasher._combine(_:)(v16);
            Hasher._combine(_:)(v17);

            --v11;
          }

          while (v11);
        }

        if (v26)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1uLL);
          v20 = (v25 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v25 : 0;
          Hasher._combine(_:)(v20);
        }

        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v21)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v4 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100C96E9C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = result;
      v7 = 0;
      while (1)
      {
        v8 = *(v6 + 8 * v7);
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v8);
        result = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        result = _HashTable.BucketIterator.currentValue.setter();
        if (++v7 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

Swift::Int sub_100C96FA4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_10010FC20(&qword_1011BC120, &qword_100F0F050);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = v9[5];
    v17 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = NSObject._rawHashValue(seed:)(v16);
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(v9[6] + 8 * v21) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_100C97198(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    if (*(a4 + 16) != a3)
    {
      sub_10010FC20(&qword_1011BC430, "FH\n");
      v8 = static _SetStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 56;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = *(*(a4 + 48) + 8 * (v13 | (v11 << 6)));
        Hasher.init(_seed:)();
        Hasher._combine(_:)(v16);
        v17 = Hasher._finalize()();
        v18 = -1 << *(v9 + 32);
        v19 = v17 & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
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
            v25 = *(v12 + 8 * v20);
            if (v25 != -1)
            {
              v21 = __clz(__rbit64(~v25)) + (v20 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v9 + 48) + 8 * v21) = v16;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          goto LABEL_5;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_100C973A8(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t, __n128), void (*a7)(void *, uint64_t, uint64_t), __n128 a8)
{
  v13 = a2 >> 62;
  if (a2 >> 62)
  {
    v23 = a3;
    v24 = a4;
    _CocoaArrayWrapper.endIndex.getter();
    a4 = v24;
    a3 = v23;
  }

  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a3;
  }

  v15 = static _HashTable.scale(forCapacity:)();
  if (v15 <= v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  if (v16 <= a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = v16;
  }

  if (v17 <= 4)
  {
    if (v13)
    {
      if (_CocoaArrayWrapper.endIndex.getter() >= 2)
      {
        sub_100C9BF40(a2, a7);
        goto LABEL_21;
      }

      v18 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 >= 2)
      {
        sub_100C97674((a2 & 0xFFFFFFFFFFFFFF8) + 32, v18, a7);
LABEL_21:
        v22 = v19;
        result = 0;
        goto LABEL_22;
      }
    }

    result = 0;
    *a1 = v18;
    return result;
  }

  v20 = _HashTable.init(scale:reservedScale:)();
  sub_100C97AEC(&v25, a2, (v20 + 16), v20 + 32, a6);
  result = v20;
  v22 = v25;
LABEL_22:
  *a1 = v22;
  return result;
}

uint64_t sub_100C974F4(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
{
  v9 = *(a2 + 16);
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a3;
  }

  v11 = static _HashTable.scale(forCapacity:)();
  if (v11 <= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  if (v12 <= a5)
  {
    v13 = a5;
  }

  else
  {
    v13 = v12;
  }

  if (v13 > 4)
  {
    v15 = _HashTable.init(scale:reservedScale:)();
    sub_100C97CC4(a2 + 32, v9, (v15 + 16), v15 + 32);
    *a1 = v16;
    return v15;
  }

  else if (v9 >= 2)
  {
    v17 = sub_100C97788((a2 + 32), v9);
    result = 0;
    *a1 = v17;
  }

  else
  {
    result = 0;
    *a1 = v9;
  }

  return result;
}

void *sub_100C975D8(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_100C95F20(v5, 0);
  a2(v7 + 4, v6, a1);
  v9 = v8;

  result = v7;
  if (v9 != v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_100C97674(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v10 = sub_100C9BB84(_swiftEmptyArrayStorage, a3);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v7 = v10[2];
        v8 = v10 + 4;
        while (v7)
        {
          v9 = *v8++;
          --v7;
          if (*(a1 + 8 * v5) == v9)
          {
            goto LABEL_10;
          }
        }

        swift_retain_n();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();

        ++v5;
        if (v6 == a2)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_10:
  }
}

char *sub_100C97788(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = sub_100C713A0(0, a2 & ~(a2 >> 63), 0);
  v5 = _swiftEmptyArrayStorage;
  if (!v2)
  {
LABEL_12:

    return v2;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    while (1)
    {
      v7 = a1[1];
      v17 = *a1;
      v18 = v7;
      v19 = a1[2];
      v20 = *(a1 + 48);
      if (sub_100C97928(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      sub_100118E9C(&v21, v15);
      sub_1000089F8(&v22, v15, &qword_1011BC0A0, &unk_100F0EFD0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_100C713A0(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_100C713A0((v9 > 1), v10 + 1, 1);
        v5 = v16;
      }

      ++v6;
      v5[2] = v10 + 1;
      v11 = &v5[7 * v10];
      v12 = v17;
      v13 = v18;
      v14 = v19;
      *(v11 + 80) = v20;
      *(v11 + 3) = v13;
      *(v11 + 4) = v14;
      *(v11 + 2) = v12;
      a1 = (a1 + 56);
      if (v2 == v6)
      {
        goto LABEL_12;
      }
    }

    v2 = v6;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_100C97928(double *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = a1;
  v4 = 0;
  v5 = a2 + 32;
  v6 = *a1;
  v27 = *(a2 + 16);
  v26 = a2 + 32;
  while (1)
  {
    v8 = v5 + 56 * v4;
    if (v6 != *v8 || v3[1] != *(v8 + 8))
    {
      goto LABEL_6;
    }

    v9 = *(v8 + 32);
    v10 = *(v8 + 40);
    v25 = *(v8 + 48);
    result = *(v3 + 2);
    if (result != *(v8 + 16) || *(v3 + 3) != *(v8 + 24))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v13 = *(v3 + 4);
    v14 = *(v13 + 16);
    if (v14 != *(v9 + 16))
    {
      goto LABEL_6;
    }

    if (v14 && v13 != v9)
    {
      break;
    }

LABEL_20:
    if (v3[6])
    {
      if (v25)
      {
        return 1;
      }
    }

    else
    {
      v7 = v25;
      if (v3[5] != v10)
      {
        v7 = 1;
      }

      if (v7 != 1)
      {
        return 1;
      }
    }

LABEL_6:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v16 = (v13 + 80);
  v17 = v9 + 40;
  while (v14)
  {
    if (*(v16 - 6) != *(v17 - 8) || *(v16 - 5) != *v17)
    {
      goto LABEL_6;
    }

    result = *(v16 - 4);
    v19 = *(v16 - 2);
    v20 = *(v16 - 1);
    v21 = *v16;
    v22 = *(v17 + 24);
    v23 = *(v17 + 32);
    v24 = *(v17 + 40);
    if (result != *(v17 + 8) || *(v16 - 3) != *(v17 + 16))
    {
      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      v5 = v26;
      v2 = v27;
      v3 = a1;
      if ((result & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v19 != v22 || v20 != v23 || *&v21 != v24)
    {
      goto LABEL_6;
    }

    v16 += 7;
    v17 += 56;
    if (!--v14)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100C97AEC(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = sub_100C9DA9C(a2, a5);
  }

  else
  {
    v6 = sub_100C97B5C((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int sub_100C97B5C(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = result;
    for (i = 0; ; ++i)
    {
      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v9 = *(v6 + 8 * i);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v9);
      result = Hasher._finalize()();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      _HashTable.UnsafeHandle._startIterator(bucket:)();
      while (1)
      {
        v10 = _HashTable.BucketIterator.currentValue.getter();
        if (v11)
        {
          break;
        }

        if (*(v6 + 8 * v10) == *(v6 + 8 * i))
        {
          return 0;
        }

        _HashTable.BucketIterator.advance()();
      }

      result = _HashTable.BucketIterator.currentValue.setter();
      if (v8 == a2)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_100C97CC4(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  v44 = result;
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_52;
  }

  v4 = a3;
  v5 = 0;
  while (2)
  {
    if (__OFADD__(v5, 1))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    v6 = v44 + 56 * v5;
    v7 = *(v6 + 32);
    v57 = *(v6 + 16);
    v58 = v7;
    v56 = *v6;
    v45 = v6;
    v59 = *(v6 + 48);
    v60[0] = v57;
    v61 = v7;
    Hasher.init(_seed:)();
    sub_100118E9C(v60, v46);
    sub_1000089F8(&v61, v46, &qword_1011BC0A0, &unk_100F0EFD0);
    Lyrics.Word.hash(into:)(v47);
    result = Hasher._finalize()();
    v8 = 1 << *v4;
    v9 = __OFSUB__(v8, 1);
    v10 = v8 - 1;
    if (v9)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    v41 = v5 + 1;
    v11 = v10 & result;
    v12 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    v14 = v13;
    v16 = v15;
    sub_100015BB0(v60);
    sub_1000095E8(&v61, &qword_1011BC0A0, &unk_100F0EFD0);
    *&v48 = v4;
    *(&v48 + 1) = a4;
    *&v49 = v11;
    *(&v49 + 1) = v12;
    *&v50 = v14;
    *(&v50 + 1) = v16;
    v51 = 0;
    v55 = 0;
    v52 = v48;
    v53 = v49;
    v54 = v50;
    while (1)
    {
      v17 = _HashTable.BucketIterator.currentValue.getter();
      if (v18)
      {
        break;
      }

      v19 = v44 + 56 * v17;
      if (*v19 == *v45 && *(v19 + 8) == *(v45 + 8))
      {
        result = *(v19 + 16);
        v21 = *(v19 + 32);
        v22 = *(v19 + 40);
        v23 = *(v45 + 32);
        v24 = *(v45 + 40);
        v42 = *(v45 + 48);
        v43 = *(v19 + 48);
        v25 = result == *(v45 + 16) && *(v19 + 24) == *(v45 + 24);
        if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          v26 = *(v21 + 16);
          if (v26 == *(v23 + 16))
          {
            if (v26)
            {
              v27 = v21 == v23;
            }

            else
            {
              v27 = 1;
            }

            if (!v27)
            {
              v29 = (v21 + 80);
              v30 = v23 + 40;
              while (v26)
              {
                if (*(v29 - 6) != *(v30 - 8) || *(v29 - 5) != *v30)
                {
                  goto LABEL_9;
                }

                result = *(v29 - 4);
                v32 = *(v29 - 2);
                v33 = *(v29 - 1);
                v34 = *v29;
                v36 = *(v30 + 24);
                v35 = *(v30 + 32);
                v37 = *(v30 + 40);
                if (result != *(v30 + 8) || *(v29 - 3) != *(v30 + 16))
                {
                  result = _stringCompareWithSmolCheck(_:_:expecting:)();
                  if ((result & 1) == 0)
                  {
                    goto LABEL_9;
                  }
                }

                if (v32 != v36 || v33 != v35 || *&v34 != v37)
                {
                  goto LABEL_9;
                }

                v29 += 7;
                v30 += 56;
                if (!--v26)
                {
                  goto LABEL_27;
                }
              }

              __break(1u);
              goto LABEL_50;
            }

LABEL_27:
            if (v43)
            {
              if (v42)
              {
                return 0;
              }
            }

            else
            {
              v28 = v42;
              if (v22 != v24)
              {
                v28 = 1;
              }

              if ((v28 & 1) == 0)
              {
                return 0;
              }
            }
          }
        }
      }

LABEL_9:
      _HashTable.BucketIterator.advance()();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = _HashTable.BucketIterator.currentValue.setter();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

void sub_100C98000(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!__CocoaSet.count.getter())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
    Set.Iterator.init(_cocoa:)();
    a1 = v16;
    v3 = v17;
    v4 = v18;
    v5 = v19;
    v6 = v20;
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

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_16:
    v13 = (v11 - 1) & v11;
    v14 = *(*(a1 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_22:
      sub_10005C9F8(a1);
      return;
    }

    while (1)
    {
      sub_100C81B9C(v14);

      v5 = v12;
      v6 = v13;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (__CocoaSet.Iterator.next()())
      {
        _s4WordCMa();
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_100C98238(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (!*(a2 + 16))
  {

    return &_swiftEmptySetSingleton;
  }

  v4 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    _s4WordCMa();
    sub_100C9DE48(&qword_1011BC530, _s4WordCMa, &unk_100F0FBD8);
    Set.Iterator.init(_cocoa:)();
    v4 = v62;
    v6 = v63;
    v7 = v64;
    v8 = v65;
    v9 = v66;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v6 = a1 + 56;
    v7 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v9 = v13 & *(a1 + 56);

    v8 = 0;
  }

  v57 = v4;
  v58 = v6;
  v59 = v7;
  v60 = v8;
  v53 = v7;
  v14 = (v7 + 64) >> 6;
  v15 = (v3 + 56);
  v61 = v9;
  v54 = v3;
  while (1)
  {
    if (v4 < 0)
    {
      v21 = __CocoaSet.Iterator.next()();
      if (!v21)
      {
        goto LABEL_65;
      }

      v55 = v21;
      _s4WordCMa();
      swift_dynamicCast();
      v2 = v56;
      v19 = v8;
      v3 = v9;
      if (!v56)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v16 = v9;
      v17 = v8;
      if (v9)
      {
LABEL_20:
        v3 = (v16 - 1) & v16;
        v2 = *(*(v4 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

        v19 = v17;
      }

      else
      {
        if (v14 <= (v8 + 1))
        {
          v18 = v8 + 1;
        }

        else
        {
          v18 = v14;
        }

        v19 = v18 - 1;
        v20 = v8;
        while (1)
        {
          v17 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_67;
          }

          if (v17 >= v14)
          {
            break;
          }

          v16 = *(v6 + 8 * v17);
          ++v20;
          if (v16)
          {
            goto LABEL_20;
          }
        }

        v2 = 0;
        v3 = 0;
      }

      v57 = v4;
      v58 = v6;
      v59 = v53;
      v60 = v19;
      v61 = v3;
      if (!v2)
      {
LABEL_65:
        sub_10005C9F8(v4);
        return v54;
      }
    }

    Hasher.init(_seed:)();
    Hasher._combine(_:)(v2);
    v22 = Hasher._finalize()();
    v23 = -1 << *(v54 + 32);
    v9 = v22 & ~v23;
    v8 = v9 >> 6;
    v17 = 1 << v9;
    if (((1 << v9) & v15[v9 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v8 = v19;
    v9 = v3;
  }

  v24 = *(v54 + 48);
  if (*(v24 + 8 * v9) != v2)
  {
    v25 = ~v23;
    do
    {
      v9 = (v9 + 1) & v25;
      v8 = v9 >> 6;
      v17 = 1 << v9;
      if (((1 << v9) & v15[v9 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*(v24 + 8 * v9) != v2);
  }

  v2 = v54;
  v26 = *(v54 + 32);
  v49 = ((1 << v26) + 63) >> 6;
  v5 = 8 * v49;
  if ((v26 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v50 = &v48;
    __chkstk_darwin();
    v9 = &v48 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v9, v15, v27);
    v28 = *(v9 + 8 * v8) & ~v17;
    v29 = *(v2 + 16);
    v51 = v9;
    *(v9 + 8 * v8) = v28;
    v30 = v29 - 1;
    v2 = 1;
LABEL_34:
    v52 = v30;
    while (1)
    {
      if (v4 < 0)
      {
        v31 = __CocoaSet.Iterator.next()();
        if (!v31)
        {
          goto LABEL_62;
        }

        v55 = v31;
        _s4WordCMa();
        swift_dynamicCast();
        v8 = v56;
        if (!v56)
        {
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      if (!v3)
      {
        break;
      }

      v17 = v19;
LABEL_49:
      v34 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v8 = *(*(v4 + 48) + ((v17 << 9) | (8 * v34)));

      v33 = v17;
LABEL_50:
      v57 = v4;
      v58 = v6;
      v59 = v53;
      v60 = v33;
      v19 = v33;
      v61 = v3;
      if (!v8)
      {
LABEL_62:
        sub_100C97198(v51, v49, v52, v54);
        v10 = v43;
        goto LABEL_63;
      }

LABEL_51:
      v35 = v54;
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v8);
      v36 = Hasher._finalize()();
      v37 = -1 << *(v35 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      v9 = 1 << v38;
      if (((1 << v38) & v15[v38 >> 6]) == 0)
      {
        goto LABEL_35;
      }

      v40 = *(v54 + 48);
      if (*(v40 + 8 * v38) != v8)
      {
        v41 = ~v37;
        while (1)
        {
          v38 = (v38 + 1) & v41;
          v39 = v38 >> 6;
          v9 = 1 << v38;
          if (((1 << v38) & v15[v38 >> 6]) == 0)
          {
            break;
          }

          if (*(v40 + 8 * v38) == v8)
          {
            goto LABEL_56;
          }
        }

LABEL_35:

        continue;
      }

LABEL_56:

      v42 = v51[v39];
      v51[v39] = v42 & ~v9;
      if ((v42 & v9) != 0)
      {
        v30 = v52 - 1;
        if (__OFSUB__(v52, 1))
        {
          __break(1u);
        }

        if (v52 == 1)
        {

          v10 = &_swiftEmptySetSingleton;
          goto LABEL_63;
        }

        goto LABEL_34;
      }
    }

    if (v14 <= (v19 + 1))
    {
      v32 = v19 + 1;
    }

    else
    {
      v32 = v14;
    }

    v33 = v32 - 1;
    while (1)
    {
      v17 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v8 = 0;
        v3 = 0;
        goto LABEL_50;
      }

      v3 = *(v6 + 8 * v17);
      ++v19;
      if (v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v52 = v5;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v45 = v52;
  v46 = swift_slowAlloc();
  memcpy(v46, v15, v45);
  sub_100C988E0(v46, v49, v2, v9, &v57);
  v10 = v47;

LABEL_63:
  sub_10005C9F8(v57);
  return v10;
}

void sub_100C988E0(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v28 = v9;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!__CocoaSet.Iterator.next()())
          {
            goto LABEL_29;
          }

          _s4WordCMa();
          swift_dynamicCast();
          v14 = v29;
          if (!v29)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v11 = a5[3];
          v12 = a5[4];
          if (!v12)
          {
            v15 = (a5[2] + 64) >> 6;
            if (v15 <= v11 + 1)
            {
              v16 = v11 + 1;
            }

            else
            {
              v16 = (a5[2] + 64) >> 6;
            }

            v17 = v16 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v15)
              {
                a5[3] = v17;
                a5[4] = 0;
                goto LABEL_29;
              }

              v12 = *(a5[1] + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            goto LABEL_31;
          }

          v13 = a5[3];
LABEL_17:
          v18 = (v12 - 1) & v12;
          v14 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

          a5[3] = v13;
          a5[4] = v18;
          if (!v14)
          {
LABEL_29:

            sub_100C97198(a1, a2, v28, a3);
            return;
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v14);
        v19 = Hasher._finalize()();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v24 = *(a3 + 48);
        if (*(v24 + 8 * v21) == v14)
        {
          break;
        }

        v25 = ~v20;
        while (1)
        {
          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v10 + 8 * (v21 >> 6))) == 0)
          {
            break;
          }

          if (*(v24 + 8 * v21) == v14)
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v26 = a1[v22];
      a1[v22] = v26 & ~v23;
    }

    while ((v26 & v23) == 0);
    v9 = v28 - 1;
    if (__OFSUB__(v28, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v28 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_100C98B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v9 = 0;
    v10 = 0;
    __chkstk_darwin();
    static _UnsafeBitSet._withTemporaryBitSet(wordCount:run:)();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v4 = _CocoaArrayWrapper.endIndex.getter()) == 0 || (v5 = v4, v6 = sub_100C95F20(v4, 0), sub_100C9BC20((v6 + 4), v5, _swiftEmptyArrayStorage), v8 = v7, , v8 == v5))
    {

      return;
    }

    __break(1u);
  }

  __break(1u);

  sub_100B46144(v9, v10);
  __break(1u);
}

void sub_100C98CE4(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  if (!v3)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = v7;
    sub_100B46144(v5, v6);
  }
}

void sub_100C98D38(int8x8_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x8_t *a6, uint64_t a7)
{
  if (a4)
  {
    if (a1 && a2)
    {
      a3 = 0;
      v10 = 8 * a2;
      v11 = a1;
      while (1)
      {
        v12 = vcnt_s8(*v11);
        v12.i16[0] = vaddlv_u8(v12);
        v13 = __OFADD__(a3, v12.u32[0]);
        a3 += v12.u32[0];
        if (v13)
        {
          break;
        }

        ++v11;
        v10 -= 8;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

LABEL_14:
    sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    sub_100C99168(a5, 0);

    return;
  }

LABEL_7:
  if (!a3)
  {
    goto LABEL_14;
  }

  if (a3 == *(a7 + 16))
  {
    if (a6)
    {
      v14 = a3;
      swift_beginAccess();
      v15 = static _HashTable.maximumCapacity(forScale:)();
      a3 = v14;
      v16 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
LABEL_11:
        if (v16 >= a5)
        {
          return;
        }

        if (!__OFADD__(a3, a5))
        {
          sub_100C99168(a3 + a5, 0);
          return;
        }

        goto LABEL_54;
      }
    }

    else
    {
      v16 = 15 - a3;
      if (!__OFSUB__(15, a3))
      {
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v17 = a3 + a5;
  if (!__OFADD__(a3, a5))
  {
    v27 = sub_100C9BB84(_swiftEmptyArrayStorage, sub_100C9BC20);
    sub_100C99168(v17, 0);
    v7 = 0;
    v29 = v27;
LABEL_20:
    v30 = _UnsafeBitSet.Iterator.next()();
    if (v30.is_nil)
    {
LABEL_47:

      return;
    }

    while (1)
    {
      if ((v30.value & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v30.value >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      v23 = *(a7 + 32 + 8 * v30.value);
      swift_retain_n();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 = v29;
      v25 = v29[2];
      if (!v7)
      {
        break;
      }

      swift_beginAccess();
      if (static _HashTable.maximumCapacity(forScale:)() >= v25)
      {
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v26 = _HashTable.copy()();

          v7 = v26;
          if (!v26)
          {
            goto LABEL_55;
          }
        }

        Hasher.init(_seed:)();
        Hasher._combine(_:)(v23);
        Hasher._finalize()();
        if (__OFSUB__(1 << *(v7 + 16), 1))
        {
          goto LABEL_52;
        }

        if (_HashTable.UnsafeHandle._startIterator(bucket:)())
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        _HashTable.BucketIterator.currentValue.setter();
      }

      else
      {
        v18 = *(v7 + 24) & 0x3FLL;
        if (v25 > 0xF || v18)
        {
          goto LABEL_23;
        }

        v7 = 0;
      }

LABEL_27:
      v30 = _UnsafeBitSet.Iterator.next()();
      if (v30.is_nil)
      {
        goto LABEL_47;
      }
    }

    while (v25 <= 0xF)
    {

      v31 = _UnsafeBitSet.Iterator.next()();
      if (v31.is_nil)
      {
        goto LABEL_47;
      }

      if ((v31.value & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v31.value >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      swift_retain_n();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v24 = v29;
      v25 = v29[2];
    }

    v18 = 0;
LABEL_23:
    v19 = static _HashTable.scale(forCapacity:)();
    if (v18 <= v19)
    {
      v21 = v19;
    }

    else
    {
      v21 = v18;
    }

    v22 = sub_100C969C0(v24, v21, 0, v18, v20);

    v7 = v22;
    goto LABEL_27;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_100C99168(uint64_t a1, char a2)
{
  if (a1 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  specialized ContiguousArray.reserveCapacity(_:)();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = static _HashTable.scale(forCapacity:)();
    v9 = v7;
    if ((a2 & 1) == 0)
    {
      swift_beginAccess();
      v7 = v9;
      v9 = *(v5 + 24) & 0x3FLL;
    }
  }

  else
  {
    v7 = static _HashTable.scale(forCapacity:)();
    v6 = 0;
    if (a2)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  v10 = v3[1];
  if (v6 < v7)
  {
    if (v9 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

LABEL_23:
    v15 = sub_100C969C0(v10, v11, 0, v9, v8);

    *v3 = v15;
    return;
  }

  if (v9 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  v13 = static _HashTable.scale(forCapacity:)();
  if (v13 <= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  if (v14 < v6)
  {
    if (v9 <= v14)
    {
      v11 = v14;
    }

    else
    {
      v11 = v9;
    }

    goto LABEL_23;
  }

  if (!v5 || (swift_isUniquelyReferenced_native() & 1) != 0)
  {
    v16 = *v3;
    if (*v3)
    {
      goto LABEL_28;
    }

LABEL_32:
    if (!v9)
    {
      return;
    }

    __break(1u);
    goto LABEL_34;
  }

  if (!*v3)
  {
LABEL_35:
    __break(1u);
    return;
  }

  v16 = _HashTable.copy()();

  *v3 = v16;
  if (!v16)
  {
    goto LABEL_32;
  }

LABEL_28:
  swift_beginAccess();
  if ((*(v16 + 24) & 0x3FLL) != v9)
  {
    *(v16 + 24) = *(v16 + 24) & 0xFFFFFFFFFFFFFFC0 | v9 & 0x3F;
  }
}

void sub_100C99308(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100C995F8(a1, &v19);
LABEL_17:
    v15 = v22;
    v16 = v23;
    v17 = v20;
    v18 = v21;
    *a3 = v19;
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;
    *(a3 + 40) = v15;
    *(a3 + 48) = v16;
    return;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    sub_100C995F8(a1, &v19);
    sub_100C96888(sub_100C96C18, v14);
    goto LABEL_17;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    sub_100C99934(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_100C99C80(a1, a1 + 1, v6, (v11 + 16), v11 + 32, v13);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_100C994B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = v3[1];
  v7 = *(v6 + 16);
  v8 = *v3;
  if (!*v3)
  {
    if (!v7)
    {
      goto LABEL_16;
    }

LABEL_15:
    sub_100C996C0(a1, a3);
    return;
  }

  swift_beginAccess();
  if ((*(v8 + 16) & 0x3FLL) == (*(v8 + 24) & 0x3FLL))
  {
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  else if (v7 <= static _HashTable.minimumCapacity(forScale:)())
  {
LABEL_16:
    sub_100C996C0(a1, a3);
    sub_100C967D0(v15);
    return;
  }

  isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
  v11 = *v3;
  if ((isUniquelyReferenced_native & 1) == 0)
  {
    if (!v11)
    {
      goto LABEL_20;
    }

    v12 = _HashTable.copy()();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    sub_100C99754(a2, (v11 + 16), v11 + 32, v3);
    v14 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v14 >= a1)
    {
      sub_100C9A398(a1, v14, v6, (v11 + 16), v11 + 32, v13);
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_100C995F8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100C9A780(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 56 * a1;
    v10 = *(v9 + 32);
    v9 += 32;
    v11 = *(v9 + 16);
    v12 = *(v9 + 40);
    v13 = *(v9 + 48);
    v14 = *(v9 + 24);
    result = memmove(v9, (v9 + 56), 56 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = v14;
    *(a2 + 40) = v12;
    *(a2 + 48) = v13;
  }

  return result;
}

uint64_t sub_100C996C0(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
    *v2 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    specialized ContiguousArray._endMutation()();
    return v10;
  }

  return result;
}

unint64_t sub_100C99754(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v15)
  {
    v7 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    while (1)
    {
      result = _HashTable.BucketIterator.currentValue.getter();
      if (v9)
      {
LABEL_20:
        __break(1u);
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v10 = *(a4 + 8);
      if (result >= *(v10 + 16))
      {
        goto LABEL_18;
      }

      v11 = *(v10 + 8 * result + 32);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_19;
      }

      v13 = (v12 - 1) & result;
      if (v6 >= v7)
      {
        break;
      }

      if (v13 < v7)
      {
        goto LABEL_12;
      }

LABEL_13:
      _HashTable.BucketIterator.currentValue.getter();
      v6 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v13 < v7)
    {
      goto LABEL_3;
    }

LABEL_12:
    if (v6 < v13)
    {
      goto LABEL_3;
    }

    goto LABEL_13;
  }

  return _HashTable.UnsafeHandle.subscript.setter();
}

void sub_100C99934(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v34 = _HashTable.UnsafeHandle._startIterator(bucket:)();
  _HashTable.BucketIterator.advance()();
  if (v34)
  {
    v28 = _HashTable.UnsafeHandle.firstOccupiedBucketInChain(with:)();
    v29 = a2;
    while (1)
    {
      v6 = _HashTable.BucketIterator.currentValue.getter();
      if (v7)
      {
LABEL_40:
        __break(1u);
        return;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v8 = *(a4 + 8);
      if (v6 >= *(v8 + 16))
      {
        goto LABEL_38;
      }

      v9 = v8 + 56 * v6;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *(v9 + 64);
      v31 = *(v9 + 72);
      v32 = *(v9 + 80);
      Hasher.init(_seed:)();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      Hasher._combine(_:)(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      Hasher._combine(_:)(*&v14);

      String.hash(into:)();
      v15 = *(v12 + 16);
      Hasher._combine(_:)(v15);
      if (v15)
      {
        v16 = (v12 + 80);
        do
        {
          v17 = *(v16 - 6);
          v18 = *(v16 - 5);
          v20 = *(v16 - 2);
          v19 = *(v16 - 1);
          v22 = *v16;
          v16 += 7;
          v21 = *&v22;
          if (v17 == 0.0)
          {
            v17 = 0.0;
          }

          Hasher._combine(_:)(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          Hasher._combine(_:)(*&v23);

          String.hash(into:)();
          Hasher._combine(_:)(v20);
          Hasher._combine(_:)(v19);
          Hasher._combine(_:)(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        Hasher._combine(_:)(v24);
      }

      v25 = Hasher._finalize()();

      v26 = 1 << *v29;
      if (__OFSUB__(v26, 1))
      {
        goto LABEL_39;
      }

      v27 = (v26 - 1) & v25;
      if (v5 >= v28)
      {
        break;
      }

      if (v27 < v28)
      {
        goto LABEL_32;
      }

LABEL_33:
      _HashTable.BucketIterator.currentValue.getter();
      v5 = a1;
      _HashTable.UnsafeHandle.subscript.setter();
LABEL_3:
      _HashTable.BucketIterator.advance()();
    }

    if (v27 < v28)
    {
      goto LABEL_3;
    }

LABEL_32:
    if (v5 < v27)
    {
      goto LABEL_3;
    }

    goto LABEL_33;
  }

  _HashTable.UnsafeHandle.subscript.setter();
}