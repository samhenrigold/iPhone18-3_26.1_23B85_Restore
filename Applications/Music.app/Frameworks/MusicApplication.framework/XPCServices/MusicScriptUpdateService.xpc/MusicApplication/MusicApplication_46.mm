uint64_t sub_10045D6B0(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v8 = sub_100469654(&v34, a1, 0, 1, v5, sub_100470A2C, sub_10046DECC, v6);
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = sub_1004BD6A4();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v34;
  if (v34 == v10)
  {
    sub_100469884(a1, sub_10046DECC);
    return v8;
  }

  if (v34 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v9)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1004BD6A4() < 0)
    {
      goto LABEL_52;
    }

    v12 = sub_1004BD6A4();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < v11)
  {
    goto LABEL_48;
  }

  v13 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v11)
  {
    _s4LineCMa(0, v7);

    v14 = 0;
    do
    {
      v15 = v14 + 1;
      sub_1004BD464(v14);
      v14 = v15;
    }

    while (v11 != v15);
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_1004BD6B4();
    i = v17;
    v3 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v9)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v16 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v11) | 1;
LABEL_23:
  v32 = v16;
  v33 = a1 & 0xC000000000000001;
  sub_1004BD9F4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v21 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v13 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v19)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v35 = v8;
    v36 = i;
    if (v10 < v11)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v9)
    {
      v23 = sub_1004BD6A4();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 < v10)
    {
      goto LABEL_50;
    }

    if (!v13)
    {

      goto LABEL_41;
    }

    if (v11 < v10)
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
    v16 = v32;
    v13 = v33;
LABEL_22:
    sub_100468254(v1, v16, i, v3, _s4LineCMa);
  }

  _s4LineCMa(0, v22);

  v24 = v11;
  do
  {
    v25 = v24 + 1;
    sub_1004BD464(v24);
    v24 = v25;
  }

  while (v10 != v25);
LABEL_41:

  if (v9)
  {
    sub_1004BD6B4();
    v26 = v28;
    v11 = v29;
    v27 = v30;
  }

  else
  {
    v26 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v27 = (2 * v10) | 1;
  }

  sub_10046FEA0(v26, v11, v27);
  swift_unknownObjectRelease();

  return v35;
}

uint64_t sub_10045DA48(unint64_t a1)
{
  v5 = static MPMediaLibraryFilteringOptions.none.getter();
  v8 = sub_100469654(&v34, a1, 0, 1, v5, sub_100470EF0, sub_10046E05C, v6);
  v9 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = sub_1004BD6A4();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v34;
  if (v34 == v10)
  {
    sub_100469884(a1, sub_10046E05C);
    return v8;
  }

  if (v34 < 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v9)
  {
    if ((a1 & 0x8000000000000000) != 0)
    {
      v1 = a1;
    }

    else
    {
      v1 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (sub_1004BD6A4() < 0)
    {
      goto LABEL_52;
    }

    v12 = sub_1004BD6A4();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v12 < v11)
  {
    goto LABEL_48;
  }

  v13 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0 && v11)
  {
    _s4WordCMa(0, v7);

    v14 = 0;
    do
    {
      v15 = v14 + 1;
      sub_1004BD464(v14);
      v14 = v15;
    }

    while (v11 != v15);
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_21:

    v1 = sub_1004BD6B4();
    i = v17;
    v3 = v18;
    if ((v18 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  if (v9)
  {
    goto LABEL_21;
  }

LABEL_19:
  i = 0;
  v1 = a1 & 0xFFFFFFFFFFFFFF8;
  v16 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  v3 = (2 * v11) | 1;
LABEL_23:
  v32 = v16;
  v33 = a1 & 0xC000000000000001;
  sub_1004BD9F4();
  swift_unknownObjectRetain_n();
  v20 = swift_dynamicCastClass();
  if (!v20)
  {
    swift_unknownObjectRelease();
    v20 = _swiftEmptyArrayStorage;
  }

  v21 = v20[2];

  if (__OFSUB__(v3 >> 1, i))
  {
    goto LABEL_53;
  }

  if (v21 != (v3 >> 1) - i)
  {
    goto LABEL_54;
  }

  i = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v13 = a1 & 0xC000000000000001;
  if (i)
  {
    goto LABEL_30;
  }

  for (i = _swiftEmptyArrayStorage; ; i = v19)
  {
    swift_unknownObjectRelease();
LABEL_30:
    v35 = v8;
    v36 = i;
    if (v10 < v11)
    {
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v9)
    {
      v23 = sub_1004BD6A4();
    }

    else
    {
      v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23 < v10)
    {
      goto LABEL_50;
    }

    if (!v13)
    {

      goto LABEL_41;
    }

    if (v11 < v10)
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
    v16 = v32;
    v13 = v33;
LABEL_22:
    sub_100468254(v1, v16, i, v3, _s4WordCMa);
  }

  _s4WordCMa(0, v22);

  v24 = v11;
  do
  {
    v25 = v24 + 1;
    sub_1004BD464(v24);
    v24 = v25;
  }

  while (v10 != v25);
LABEL_41:

  if (v9)
  {
    sub_1004BD6B4();
    v26 = v28;
    v11 = v29;
    v27 = v30;
  }

  else
  {
    v26 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    v27 = (2 * v10) | 1;
  }

  sub_10046FEA0(v26, v11, v27);
  swift_unknownObjectRelease();

  return v35;
}

void sub_10045DDE0(uint64_t a1)
{
  v2 = static MPMediaLibraryFilteringOptions.none.getter();
  v4 = sub_1004697A0(&v20, a1, 0, 1, v2, v3);
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
      sub_1004683DC(a1, a1 + 32, 0, (2 * v20) | 1);
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
            sub_100013D04(&v27, v19);
            sub_10000F778(&v28, v19, &qword_100615690, &unk_1004EB2A0);

            sub_100446724(&v23, v11 + 32, v12, (v10 + 16), v10 + 32);
            v14 = v13;
            v16 = v15;

            if ((v14 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_10046889C(v23.n128_f64, v22 + 32, v12);
            v18 = v17;
            sub_100013D04(&v27, v19);
            sub_10000F778(&v28, v19, &qword_100615690, &unk_1004EB2A0);
            if ((v18 & 1) == 0)
            {
              goto LABEL_7;
            }

            v16 = 0;
          }

          sub_100446D44(&v23, v16);
LABEL_7:
          ++v6;
          sub_1001B4A3C(&v27);
          sub_100007214(&v28, &qword_100615690, &unk_1004EB2A0);
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

void sub_10045DFF0(void *a1, uint64_t a2, CFIndex a3, NSObject *a4, char a5, double *a6, int64_t a7, uint64_t a8, double a9, double a10, double MaxX, double y, double a13, CGFloat a14, uint64_t a15, uint64_t *a16, unint64_t *a17, uint64_t *a18, double *a19, void *a20, uint64_t a21)
{
  rect = *&a17;
  swift_beginAccess();
  v210 = a6;
  width = *a6 + a10;
  v217 = a7;
  v213 = (a7 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);

  v33 = sub_1004BBE24();

  v214 = a1;
  v34 = [a1 characterRange];
  v36 = [v33 substringWithRange:{v34, v35}];

  v37 = sub_1004BBE64();
  v39 = v38;

  v225 = v37;
  v226 = v39;
  v223 = 10;
  v224 = 0xE100000000000000;
  v221 = 0;
  v222 = 0xE000000000000000;
  v187 = sub_10044CAE0();
  sub_1004BD224();

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
        if ((sub_1004BD9C4() & 1) == 0)
        {
          continue;
        }
      }
    }

    swift_beginAccess();

    v46 = swift_retain_n();
    sub_10045F9E8(v46);
    swift_endAccess();

    goto LABEL_11;
  }

  v44 = 0;
LABEL_11:
  [v214 boundsWithType:0 options:{0, &type metadata for String, v187, v187, v187}];
  MinX = v47;
  v50 = v49;
  v51 = v217;
  v52 = *(v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v54 = *v213;
  v53 = v213[1];
  swift_beginAccess();
  v55 = *a16;
  v212 = a5;
  v207 = a3;
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

  sub_10046E800(a9, width, MaxX, y, MinX, v50, a2, v52, v54, v53, v55, v56, v57);
  v59 = v58;
  v61 = v60;

  swift_beginAccess();
  *a17 = v59;

  v62 = a16;
  swift_beginAccess();
  *a16 = v61;
  v220 = _swiftEmptyArrayStorage;
  v63 = sub_1004BBF24();
  v65 = v64;
  v66 = v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
  if (*(v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    if (v63 == sub_1004BBF24() && v65 == v67)
    {

LABEL_133:
      v69 = _swiftEmptyArrayStorage;
LABEL_134:
      if (*(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) != 2)
      {
        goto LABEL_196;
      }

      v81 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager);
      if (*&v81 == 0.0)
      {
        goto LABEL_196;
      }

      v83 = width;
      v198 = y;
      v135 = *(v81 + 16);

      [v135 usageBoundsForTextContainer];
      x = v233.origin.x;
      y = v233.origin.y;
      width = v233.size.width;
      height = v233.size.height;
      MinX = CGRectGetWidth(v233);
      if ((v59 & 0x8000000000000000) != 0 || (v59 & 0x4000000000000000) != 0)
      {
LABEL_164:
        v136 = sub_1004BD6A4();
        if (!v136)
        {
          goto LABEL_146;
        }
      }

      else
      {
        v136 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v136)
        {
LABEL_146:
          if (vabdd_f64(a13, MinX) < 1.0)
          {
            y = v198;
            width = v83;
            goto LABEL_195;
          }

          goto LABEL_180;
        }
      }

      v90 = __OFSUB__(v136, 1);
      v137 = v136 - 1;
      if (v90)
      {
        goto LABEL_169;
      }

      if ((v59 & 0xC000000000000001) != 0)
      {
        goto LABEL_170;
      }

      if ((v137 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v137 < *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v138 = *(v59 + 8 * v137 + 32);

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

    v68 = sub_1004BD9C4();

    if (v68)
    {
      goto LABEL_133;
    }
  }

  else
  {
  }

  if (!*(v66 + 8))
  {
    goto LABEL_133;
  }

  swift_beginAccess();
  v69 = _swiftEmptyArrayStorage;
  v199 = a18[1];
  if (!v199)
  {
    goto LABEL_134;
  }

  v70 = *a18;
  v200 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v190 = *(v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection);
  if (v190 == 2)
  {

    sub_100301400(v70, v199);

    goto LABEL_133;
  }

  swift_beginAccess();
  v71 = v70;
  v72 = *a17;

  v188 = v71;
  sub_100301400(v71, v199);

  v73 = a3;
  v74 = a4;
  if (v212)
  {
    v73 = CTLineRef.stringRange.getter();
    v74 = v75;
  }

  swift_beginAccess();
  sub_100460C58(v188, v199, v72, v59, v73, v74, *a16, &v225, a13, a14);

  v76 = v226;
  if (!v226)
  {

    sub_10045CAA4(0, 1, a13, a14);

    return;
  }

  if (v226 == 1)
  {

    goto LABEL_133;
  }

  MinX = v228;
  v77 = v227;
  v78 = v225;
  swift_beginAccess();
  v69 = *a18;
  v79 = a18[1];
  *a18 = v78;
  a18[1] = v76;

  sub_1003013BC(v69, v79);
  v197 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment;
  if (!*(v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) || *(v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) == (v190 & 1))
  {
    MaxX = MinX + MaxX;
  }

  v80 = *(v77 + 16);
  if (!v80)
  {

    sub_100007214(&v225, &qword_100615B38, &qword_1004EB870);
    goto LABEL_133;
  }

  v192 = v80 != 1;
  v196 = v217 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v189 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
  v195 = v77 + 32;
  swift_beginAccess();
  v81 = a19;
  swift_beginAccess();
  swift_beginAccess();
  v82 = 0;
  v83 = a9;
  v191 = width;
  x = width;
  rect = MaxX;
  height = y;
  v193 = v80;
  v194 = v77;
  v198 = y;
  while (1)
  {
    if (v82 >= *(v77 + 16))
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

    v86 = (v195 + 16 * v82);
    v81 = *v86;
    v87 = v86[1];

    v206 = v87;
    v229.origin.x = CTLineRef.bounds.getter();
    width = CGRectGetHeight(v229) + *(v196 + 328);
    *v210 = *v210 + width;
    v88 = v81 >> 62;
    if (*(v51 + v197) != 2 || *(v51 + v189) == (v190 & 1))
    {
LABEL_52:
      v231.origin.x = a9;
      v231.origin.y = v191;
      v231.size.width = MaxX;
      v231.size.height = y;
      MinX = CGRectGetMinX(v231);
      v232.origin.x = v83;
      v232.origin.y = x;
      v232.size.width = rect;
      v232.size.height = height;
      x = CGRectGetMaxY(v232);
      height = MinX;
      rect = MaxX;
      goto LABEL_53;
    }

    if (v88)
    {
      v89 = sub_1004BD6A4();
      if (!v89)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v89 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v89)
      {
        goto LABEL_52;
      }
    }

    v90 = __OFSUB__(v89, 1);
    v91 = v89 - 1;
    if (v90)
    {
      goto LABEL_173;
    }

    if ((v81 & 0xC000000000000001) != 0)
    {
      v92 = sub_1004BD484();
    }

    else
    {
      if ((v91 & 0x8000000000000000) != 0)
      {
        goto LABEL_174;
      }

      if (v91 >= *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_175;
      }

      v92 = *(v81 + 8 * v91 + 32);
    }

    MinX = CGRectGetMaxX(*(v92 + 176));
    v230.origin.x = v83;
    v230.origin.y = x;
    v230.size.width = rect;
    v230.size.height = height;
    x = CGRectGetMaxY(v230);

    if (*a19 < MinX)
    {
      *a19 = MinX;
    }

    height = a13 - MinX;
    rect = MinX;
    y = v198;
LABEL_53:
    v219[0] = v81;
    v93 = *(v51 + v200);
    v205 = v82;
    if (v93 == 2)
    {

      v94 = v81;
    }

    else
    {

      v94 = v81;
      if (v93)
      {
        sub_10045FA74();
        v94 = v219[0];
      }
    }

    if (v94 >> 62)
    {
      break;
    }

    if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_59;
    }

LABEL_76:

    v98 = 0;
    v102 = 0;
LABEL_77:
    v103 = sub_1004BBE24();
    v203 = v98;
    v204 = v102;
    v69 = [v103 substringWithRange:{v102, v98}];

    v104 = sub_1004BBE64();
    v201 = v105;
    v202 = v104;

    _s4LineCMa(0, v106);
    v51 = swift_allocObject();
    *(v51 + 112) = 0;
    *(v51 + 120) = 0;
    *(v51 + 128) = 0;
    *(v51 + 16) = *&v81;
    if (v88)
    {
      v107 = sub_1004BD6A4();
    }

    else
    {
      v107 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v108 = _swiftEmptyArrayStorage;
    v109 = v107 & ~(v107 >> 63);
    if (v107)
    {
      v218[0] = _swiftEmptyArrayStorage;

      sub_100442220(0, v107 & ~(v107 >> 63), 0);
      if (v107 < 0)
      {
        goto LABEL_162;
      }

      v108 = v218[0];
      if ((v81 & 0xC000000000000001) != 0)
      {
        for (i = 0; i != v107; ++i)
        {
          v111 = *(sub_1004BD484() + 48);
          if (*(v111 + 16))
          {
            v112 = *(v111 + 32);
          }

          else
          {
            v112 = 0;
          }

          swift_unknownObjectRelease();
          v218[0] = v108;
          v114 = *(v108 + 2);
          v113 = *(v108 + 3);
          if (v114 >= v113 >> 1)
          {
            sub_100442220((v113 > 1), v114 + 1, 1);
            v108 = v218[0];
          }

          *(v108 + 2) = v114 + 1;
          *&v108[8 * v114 + 32] = v112;
        }
      }

      else
      {
        v115 = v81 + 32;
        v116 = v107;
        do
        {
          v117 = *(*v115 + 48);
          if (*(v117 + 16))
          {
            v118 = *(v117 + 32);
          }

          else
          {
            v118 = 0;
          }

          v218[0] = v108;
          v120 = *(v108 + 2);
          v119 = *(v108 + 3);
          if (v120 >= v119 >> 1)
          {
            sub_100442220((v119 > 1), v120 + 1, 1);
            v108 = v218[0];
          }

          *(v108 + 2) = v120 + 1;
          *&v108[8 * v120 + 32] = v118;
          v115 += 8;
          --v116;
        }

        while (v116);
      }

      v62 = a16;
      v109 = v107 & ~(v107 >> 63);
    }

    else
    {
    }

    v218[0] = v108;

    v69 = 0;
    sub_10046CBA4(v218);

    if (*(v218[0] + 2))
    {
      MinX = *(v218[0] + 4);
    }

    else
    {
      MinX = 0.0;
    }

    *(v51 + 64) = MinX;
    if (v107)
    {
      v218[0] = _swiftEmptyArrayStorage;
      sub_100442220(0, v109, 0);
      if (v107 < 0)
      {
        goto LABEL_163;
      }

      v121 = v218[0];
      if ((v81 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v107; ++j)
        {
          v123 = *(sub_1004BD484() + 48);
          v124 = *(v123 + 16);
          if (v124)
          {
            v125 = *(v123 + 56 * v124 - 16);
          }

          else
          {
            v125 = 0;
          }

          swift_unknownObjectRelease();
          v218[0] = v121;
          v127 = *(v121 + 2);
          v126 = *(v121 + 3);
          if (v127 >= v126 >> 1)
          {
            sub_100442220((v126 > 1), v127 + 1, 1);
            v121 = v218[0];
          }

          *(v121 + 2) = v127 + 1;
          *&v121[8 * v127 + 32] = v125;
        }
      }

      else
      {
        v128 = v81 + 32;
        do
        {
          v129 = *(*v128 + 48);
          v130 = *(v129 + 16);
          if (v130)
          {
            v131 = *(v129 + 56 * v130 - 16);
          }

          else
          {
            v131 = 0;
          }

          v218[0] = v121;
          v133 = *(v121 + 2);
          v132 = *(v121 + 3);
          if (v133 >= v132 >> 1)
          {
            sub_100442220((v132 > 1), v133 + 1, 1);
            v121 = v218[0];
          }

          *(v121 + 2) = v133 + 1;
          *&v121[8 * v133 + 32] = v131;
          v128 += 8;
          --v107;
        }

        while (v107);
      }

      v62 = a16;
    }

    else
    {
      v121 = _swiftEmptyArrayStorage;
    }

    v218[0] = v121;

    sub_10046CBA4(v218);
    v77 = v194;

    v134 = *(v218[0] + 2);
    if (v134)
    {
      MinX = *&v218[0][8 * v134 + 24];
    }

    else
    {
      MinX = 0.0;
    }

    v69 = v202;

    *(v51 + 24) = v202;
    *(v51 + 32) = v201;
    *(v51 + 40) = v204;
    *(v51 + 48) = v203;
    *(v51 + 72) = MinX;
    *(v51 + 80) = height;
    v83 = height;
    *(v51 + 88) = x;
    *(v51 + 96) = rect;
    *(v51 + 104) = width;
    *(v51 + 56) = 1;
    *(v51 + 57) = v192;
    *(v51 + 58) = v190 & 1;
    sub_1004BC274();
    if (*((v220 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v220 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v69 = *((v220 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1004BC2E4();
    }

    v82 = v205 + 1;
    sub_1004BC334();

    height = width;
    v51 = v217;
    if (v205 + 1 == v193)
    {
      v69 = v220;

      sub_100007214(&v225, &qword_100615B38, &qword_1004EB870);
      width = v191;
      goto LABEL_134;
    }
  }

  if (!sub_1004BD6A4())
  {
    goto LABEL_76;
  }

LABEL_59:
  v69 = v94 & 0xC000000000000001;
  if ((v94 & 0xC000000000000001) != 0)
  {
    v95 = v62;

    v51 = sub_1004BD484();
  }

  else
  {
    if (!*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_161;
    }

    v95 = v62;
    v51 = *(v94 + 32);
  }

  v62 = *(v51 + 88);
  if (!(v94 >> 62))
  {
    v96 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v96)
    {
      goto LABEL_64;
    }

LABEL_68:

    v98 = 0;
LABEL_74:
    v102 = v62;
    v62 = v95;
    v88 = v81 >> 62;
    goto LABEL_77;
  }

  v96 = sub_1004BD6A4();
  if (!v96)
  {
    goto LABEL_68;
  }

LABEL_64:
  v90 = __OFSUB__(v96, 1);
  v97 = v96 - 1;
  if (!v90)
  {
    if (v69)
    {
      v69 = sub_1004BD484();
    }

    else
    {
      if ((v97 & 0x8000000000000000) != 0)
      {
        goto LABEL_176;
      }

      if (v97 >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_177;
      }

      v69 = *(v94 + 8 * v97 + 32);
    }

    v99 = *(v69 + 88);
    v100 = *(v69 + 96);

    v90 = __OFADD__(v99, v100);
    v101 = v99 + v100;
    if (v90)
    {
      goto LABEL_167;
    }

    v69 = *(v51 + 88);

    v98 = v101 - v69;
    if (__OFSUB__(v101, v69))
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
  v138 = sub_1004BD484();
LABEL_144:
  if (vabdd_f64(CGRectGetMaxX(*(v138 + 176)), MaxX) < 1.0)
  {

    goto LABEL_146;
  }

  MaxX = CGRectGetMaxX(*(v138 + 176));
  if (v69 >> 62)
  {
LABEL_178:
    v139 = sub_1004BD6A4();
    if (!v139)
    {
      goto LABEL_179;
    }

LABEL_150:
    rect = *&v81;
    if (v139 < 1)
    {
      goto LABEL_266;
    }

    v140 = 0;
    v141 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
    v142 = v69 & 0xC000000000000001;
    v143 = v69;
    do
    {
      if (v142)
      {
        v144 = sub_1004BD484();
      }

      else
      {
        v144 = *(v69 + 8 * v140 + 32);
      }

      if (*(v144 + 58) == *(v217 + v141))
      {
        v234.origin.x = *(v144 + 80);
        v234.origin.y = *(v144 + 88);
        v242.size.width = *(v144 + 96);
        v234.size.height = *(v144 + 104);
        *(v144 + 96) = MaxX;
        v234.size.width = MaxX;
        v242.origin.x = v234.origin.x;
        v242.origin.y = v234.origin.y;
        v242.size.height = v234.size.height;
        if (!CGRectEqualToRect(v234, v242))
        {
          *(v144 + 128) = 0;
        }
      }

      ++v140;
      v69 = v143;
    }

    while (v139 != v140);

    v62 = a16;
    v51 = v217;
    *&v81 = rect;
    goto LABEL_180;
  }

  v139 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v139)
  {
    goto LABEL_150;
  }

LABEL_179:

  v51 = v217;
LABEL_180:
  v235.origin.x = x;
  v235.origin.y = y;
  v235.size.width = width;
  v235.size.height = height;
  v145 = CGRectGetWidth(v235);
  v236.origin.x = a9;
  width = v83;
  v236.origin.y = v83;
  v236.size.width = MaxX;
  y = v198;
  v236.size.height = v198;
  v146 = CGRectGetWidth(v236);
  v237.origin.x = a9;
  v237.origin.y = v83;
  v237.size.width = MaxX;
  v237.size.height = v198;
  v147 = CGRectGetMaxX(v237) - a13;
  if (v147 > 0.0)
  {
    a9 = v147;
  }

  else
  {
    a9 = 0.0;
  }

  MinX = v145 - v146;
  if (v69 >> 62)
  {
    goto LABEL_263;
  }

  v148 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
  a9 = MinX + a9;
  if (v148)
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
      v81 = v154;
      v155 = a20;
      swift_beginAccess();
      if (__OFADD__(*a20, v81))
      {
        __break(1u);
        goto LABEL_259;
      }

      *a20 += v81;
      if (!v44)
      {
        v214 = [v214 characterRange];
        rect = *&v158;
        v155 = *(v51 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction);
        _s4LineCMa(0, v158);
        *&v81 = COERCE_DOUBLE(swift_allocObject());
        *(v81 + 112) = 0;
        *(v81 + 120) = 0;
        *(v81 + 128) = 0;
        *(v81 + 16) = v59;
        if (!(v59 >> 62))
        {
          v62 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_203;
        }

LABEL_259:
        v62 = sub_1004BD6A4();
LABEL_203:
        v216 = v155;
        v217 = v69;
        if (v62)
        {
          v218[0] = _swiftEmptyArrayStorage;

          sub_100442220(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_261;
          }

          v159 = v218[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            for (k = 0; k != v62; ++k)
            {
              v161 = *(sub_1004BD484() + 48);
              if (*(v161 + 16))
              {
                v162 = *(v161 + 32);
              }

              else
              {
                v162 = 0;
              }

              swift_unknownObjectRelease();
              v218[0] = v159;
              v164 = *(v159 + 2);
              v163 = *(v159 + 3);
              if (v164 >= v163 >> 1)
              {
                sub_100442220((v163 > 1), v164 + 1, 1);
                v159 = v218[0];
              }

              *(v159 + 2) = v164 + 1;
              *&v159[8 * v164 + 32] = v162;
            }
          }

          else
          {
            v172 = v59 + 32;
            v51 = v62;
            do
            {
              v173 = *(*v172 + 48);
              if (*(v173 + 16))
              {
                v174 = *(v173 + 32);
              }

              else
              {
                v174 = 0;
              }

              v218[0] = v159;
              v176 = *(v159 + 2);
              v175 = *(v159 + 3);
              if (v176 >= v175 >> 1)
              {
                sub_100442220((v175 > 1), v176 + 1, 1);
                v159 = v218[0];
              }

              *(v159 + 2) = v176 + 1;
              *&v159[8 * v176 + 32] = v174;
              v172 += 8;
              --v51;
            }

            while (v51);
          }
        }

        else
        {

          v159 = _swiftEmptyArrayStorage;
        }

        v218[0] = v159;

        v69 = 0;
        sub_10046CBA4(v218);

        if (*(v218[0] + 2))
        {
          MinX = *(v218[0] + 4);
        }

        else
        {
          MinX = 0.0;
        }

        *(v81 + 64) = MinX;
        if (v62)
        {
          v218[0] = _swiftEmptyArrayStorage;
          sub_100442220(0, v62 & ~(v62 >> 63), 0);
          if (v62 < 0)
          {
            goto LABEL_262;
          }

          v165 = v218[0];
          if ((v59 & 0xC000000000000001) != 0)
          {
            v166 = 0;
            v51 = 56;
            do
            {
              v167 = *(sub_1004BD484() + 48);
              v168 = *(v167 + 16);
              if (v168)
              {
                v169 = *(v167 + 56 * v168 - 16);
              }

              else
              {
                v169 = 0;
              }

              swift_unknownObjectRelease();
              v218[0] = v165;
              v171 = *(v165 + 2);
              v170 = *(v165 + 3);
              if (v171 >= v170 >> 1)
              {
                sub_100442220((v170 > 1), v171 + 1, 1);
                v165 = v218[0];
              }

              ++v166;
              *(v165 + 2) = v171 + 1;
              *&v165[8 * v171 + 32] = v169;
            }

            while (v62 != v166);
          }

          else
          {
            v51 = 32;
            do
            {
              v177 = *(*(v59 + v51) + 48);
              v178 = *(v177 + 16);
              if (v178)
              {
                v179 = *(v177 + 56 * v178 - 16);
              }

              else
              {
                v179 = 0;
              }

              v218[0] = v165;
              v181 = *(v165 + 2);
              v180 = *(v165 + 3);
              if (v181 >= v180 >> 1)
              {
                sub_100442220((v180 > 1), v181 + 1, 1);
                v165 = v218[0];
              }

              *(v165 + 2) = v181 + 1;
              *&v165[8 * v181 + 32] = v179;
              v51 += 8;
              --v62;
            }

            while (v62);
          }
        }

        else
        {

          v165 = _swiftEmptyArrayStorage;
        }

        v218[0] = v165;

        sub_10046CBA4(v218);
        v62 = a16;
        v157 = a19;

        v182 = *(v218[0] + 2);
        if (v182)
        {
          v183 = *&v218[0][8 * v182 + 24];
        }

        else
        {
          v183 = 0;
        }

        v69 = v217;

        *(v81 + 24) = v40;
        *(v81 + 40) = v214;
        *(v81 + 48) = rect;
        *(v81 + 72) = v183;
        *(v81 + 80) = a9;
        *(v81 + 88) = width;
        *(v81 + 96) = MaxX;
        *(v81 + 104) = y;
        *(v81 + 56) = 0;
        *(v81 + 58) = v216;
        swift_beginAccess();
        sub_1004684CC(v81);
        swift_endAccess();

        goto LABEL_250;
      }

      swift_beginAccess();
      *(v44 + 16) = v59;

      sub_1004724B8();
      *(v44 + 24) = v40;

      v244 = *(v44 + 80);
      *(v44 + 80) = a9;
      *(v44 + 88) = width;
      *(v44 + 96) = MaxX;
      *(v44 + 104) = y;
      v239.origin.x = a9;
      v239.origin.y = width;
      v239.size.width = MaxX;
      v239.size.height = y;
      if (!CGRectEqualToRect(v239, v244))
      {
        *(v44 + 128) = 0;
      }

      *(v44 + 40) = [v214 characterRange];
      *(v44 + 48) = v156;
      swift_beginAccess();
      sub_1004684CC(v44);
      swift_endAccess();
      swift_beginAccess();
      sub_1004684CC(v44);
      swift_endAccess();

      v157 = a19;
LABEL_250:
      v240.origin.x = a9;
      v240.origin.y = width;
      v240.size.width = MaxX;
      v240.size.height = y;
      MinX = CGRectGetWidth(v240);
      swift_beginAccess();
      if (*v157 < MinX)
      {
        v241.origin.x = a9;
        v241.origin.y = width;
        v241.size.width = MaxX;
        v241.size.height = y;
        MinX = CGRectGetWidth(v241);
        swift_beginAccess();
        *v157 = MinX;
      }

      swift_beginAccess();
      sub_10045FF44(v69);
      swift_endAccess();

      if (v212)
      {

        return;
      }

      v184 = sub_1004BBE24();

      v185 = [v184 substringWithRange:{v207, a4}];

      sub_1004BBE64();
      v69 = v186;

      *&v81 = COERCE_DOUBLE(sub_1004BD264());

      if ((v81 & 1) == 0)
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
      v148 = sub_1004BD6A4();
      a9 = MinX + a9;
      if (!v148)
      {
        continue;
      }

      break;
    }

LABEL_185:
    rect = *&v81;
    if (v148 >= 1)
    {
      v149 = 0;
      v150 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction;
      v151 = v69 & 0xC000000000000001;
      v152 = v69;
      do
      {
        if (v151)
        {
          v153 = sub_1004BD484();
        }

        else
        {
          v153 = *(v69 + 8 * v149 + 32);
        }

        if (*(v153 + 58) == *(v217 + v150))
        {
          v238.size.width = *(v153 + 96);
          v238.size.height = *(v153 + 104);
          v243.origin.x = *(v153 + 80);
          v238.origin.y = *(v153 + 88);
          *(v153 + 80) = a9;
          v238.origin.x = a9;
          v243.origin.y = v238.origin.y;
          v243.size.width = v238.size.width;
          v243.size.height = v238.size.height;
          if (!CGRectEqualToRect(v238, v243))
          {
            *(v153 + 128) = 0;
          }
        }

        ++v149;
        v69 = v152;
      }

      while (v148 != v149);
      v51 = v217;
      continue;
    }

    break;
  }

  __break(1u);
LABEL_266:
  __break(1u);

  __break(1u);
}

void sub_10045F9E8(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (*v1)
  {
    v5 = sub_10044EC24();
    if ((v7 & 1) == 0)
    {
LABEL_9:
      sub_10046B75C(v5, v6, sub_100470F84);
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

void sub_10045FA74()
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
          v8 = sub_1004BD484();
          v9 = sub_1004BD484();
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
          v1 = sub_10044EC2C(v1);
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
          v1 = sub_10044EC2C(v1);
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
      if (!sub_1004BD6A4())
      {
        return;
      }

      v2 = sub_1004BD6A4();
      v3 = v2 - 1;
    }

    __break(1u);
  }
}

void sub_10045FC28()
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
    v4 = sub_1004472D8(v3);
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

void sub_10045FD98()
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
        v1 = sub_10046CA2C(v1);
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

void sub_10045FF44(unint64_t a1)
{
  v2 = v1;
  if (a1 >> 62)
  {
LABEL_35:
    v3 = sub_1004BD6A4();
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
      v5 = sub_1004BD484();
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
      sub_10044EC24();
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

    sub_1004BD4F4();
    sub_1004BD534();
    sub_1004BD544();
    sub_1004BD504();
    v12 = v2[1];
    v13 = *(v12 + 16);
    if (!v8)
    {
      if (v13 > 0xF)
      {
        v14 = 0;
LABEL_24:
        v15 = sub_1004B7ED4();
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = v14;
        }

        v18 = sub_100468C6C(v12, v17, 0, v14, v16);

        *v2 = v18;
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    swift_beginAccess();
    if (sub_1004B7EA4() >= v13)
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

    v21 = sub_1004B7EC4();

    *v2 = v21;
    v20 = v21;
  }

  if (v20)
  {
    sub_1004B7E64();
LABEL_6:

    goto LABEL_7;
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

id sub_1004601D8(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v54 = a1;
  v3 = sub_1004B6E44();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v7 = &v47 - v6;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v9 = &v47 - v8;
  v10 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v12 = 264;
  if (!*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8))
  {
    v12 = 272;
  }

  v13 = *(v10 + v12);
  v14 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 288);
  v52 = v14;
  if (!v11)
  {
    if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) == 1)
    {
      v15 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v15 = 384;
      }
    }

    else
    {
      v15 = 368;
    }

    v14 = *(v10 + v15);
    v16 = v14;
  }

  v50 = v9;
  sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C5070;
  v51 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v53 = inited + 32;
  v18 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *(inited + 40) = v13;
  *(inited + 64) = v18;
  *(inited + 72) = NSForegroundColorAttributeName;
  v19 = sub_100003ABC(&qword_100615B28, &qword_1004EB858);
  *(inited + 80) = v14;
  *(inited + 104) = v19;
  *(inited + 112) = NSLanguageIdentifierAttributeName;
  v20 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  sub_10000F778(v2 + v20, v7, &qword_100615038, &qword_1004EA878);
  if ((*(v4 + 48))(v7, 1, v3))
  {
    v21 = v14;
    v22 = NSLanguageIdentifierAttributeName;
    v23 = v13;
    v24 = v52;
    v25 = v51;
    v26 = NSForegroundColorAttributeName;
    sub_100007214(v7, &qword_100615038, &qword_1004EA878);
    v27 = v13;
LABEL_14:
    v38 = (inited + 120);
    *(inited + 144) = &type metadata for String;
    goto LABEL_15;
  }

  v28 = v49;
  (*(v4 + 16))(v49, v7, v3);
  v48 = v14;
  v29 = NSLanguageIdentifierAttributeName;
  v30 = v13;
  v31 = v13;
  v32 = v52;
  v33 = v51;
  v34 = NSForegroundColorAttributeName;
  sub_100007214(v7, &qword_100615038, &qword_1004EA878);
  v35 = v50;
  sub_1004B6E14();
  (*(v4 + 8))(v28, v3);
  v36 = sub_1004B6D64();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_100007214(v35, &qword_100615040, &unk_1004EA880);
    v27 = v30;
    v21 = v48;
    goto LABEL_14;
  }

  v45 = sub_1004B6D44();
  v39 = v46;
  (*(v37 + 8))(v35, v36);
  v38 = (inited + 120);
  *(inited + 144) = &type metadata for String;
  if (v39)
  {
    *v38 = v45;
    v27 = v30;
    v21 = v48;
    goto LABEL_16;
  }

  v27 = v30;
  v21 = v48;
LABEL_15:
  *v38 = 0;
  v39 = 0xE000000000000000;
LABEL_16:
  *(inited + 128) = v39;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670, &unk_1004EB270);
  swift_arrayDestroy();
  v40 = objc_allocWithZone(NSAttributedString);
  v41 = sub_1004BBE24();
  _s3__C3KeyVMa_1(0);
  sub_1004701D0(&qword_100616F20, _s3__C3KeyVMa_1, &unk_1004EA7A0);
  isa = sub_1004BBC24().super.isa;

  v43 = [v40 initWithString:v41 attributes:isa];

  return v43;
}

void sub_1004607B8(char a1, double a2)
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
  v9 = sub_1004BBF24();
  v11 = v10;
  if (v9 == sub_1004BBF24() && v11 == v12)
  {

    goto LABEL_10;
  }

  v14 = sub_1004BD9C4();

  if (v14)
  {

LABEL_10:

LABEL_11:
    v15 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v16 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v15 = 1;
    *(v15 + 8) = 0u;
    *(v15 + 24) = 0u;
LABEL_12:

    sub_100470218(v16);
    return;
  }

  v17 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
  v18 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (!v18 || (v19 = [v18 attributedText]) == 0)
  {
    v25 = v4[1];
LABEL_24:
    if (v25)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  v20 = v19;
  v21 = [v19 string];

  v22 = sub_1004BBE64();
  v24 = v23;

  v25 = v4[1];
  if (!v24)
  {
    goto LABEL_24;
  }

  if (!v25)
  {

    goto LABEL_30;
  }

  if (v22 == *v4 && v25 == v24)
  {

    if (a1)
    {
      goto LABEL_30;
    }

LABEL_26:

    return;
  }

  v44 = sub_1004BD9C4();

  if ((v44 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_25:
  if ((a1 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_30:
  v26 = *&v2[v17];
  if (v26)
  {
    v27 = *&v2[v17];
  }

  else
  {
    v27 = [objc_allocWithZone(UILabel) init];
    [v27 setNumberOfLines:0];
    [v27 setClipsToBounds:0];
    [v2 addSubview:v27];
    v28 = *&v2[v17];
    *&v2[v17] = v27;

    v29 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v30 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    *v29 = 0u;
    *(v29 + 1) = 0u;
    *(v29 + 4) = 0;
    sub_100470218(v30);
    v26 = 0;
  }

  v31 = 264;
  if (!*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8])
  {
    v31 = 272;
  }

  v32 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + v31];
  v33 = v26;
  v45 = v32;
  v34 = sub_1004601D8(v8, v5);

  [v34 boundingRectWithSize:1 options:0 context:{a2, INFINITY}];
  v36 = v35;
  v38 = v37;
  Height = CGRectGetHeight(v3[2]);
  v40 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 296];
  Width = CGRectGetWidth(v3[2]);
  if (v36 <= Width)
  {
    v36 = Width;
  }

  v42 = Height + v40;
  [v27 setTextAlignment:*&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment]];

  v43 = &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  if (*v43)
  {

    v16 = *v43;
    *v43 = v34;
    *(v43 + 1) = 0;
    *(v43 + 2) = v42;
    *(v43 + 3) = v36;
    *(v43 + 4) = v38;
    goto LABEL_12;
  }

  [v27 setAttributedText:v34];
  [v27 setFrame:{0.0, v42, v36, v38}];
}

void sub_100460C58(NSObject *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, NSObject *a6@<X5>, uint64_t a7@<X6>, double *a8@<X8>, CGFloat a9@<D0>, CGFloat a10@<D1>)
{
  v744 = a6;
  v745 = a5;
  v742 = a3;
  v18 = sub_1004B6E44();
  v746 = *(v18 - 1);
  __chkstk_darwin();
  v20 = (&v700 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v743 = &v700 - v21;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  object = &v700 - v22;
  sub_100003ABC(&qword_100615068, &qword_1004EA8A8);
  __chkstk_darwin();
  v25 = &v700 - v24;
  v26 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8);
  v27 = 0.0;
  if (*&v26 == 0.0)
  {
    goto LABEL_178;
  }

  v28 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  v752 = a4;
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
  v739 = v25;
  v740 = v28;
  v722 = v30;
  v723 = v29;
  v734 = a7;
  v729 = a8;
  v747 = v10;
  v726 = (v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v741 = v26;

  v733 = sub_1004BBE24();

  v769 = a1;
  v770 = a2;
  v767 = a1;
  v768 = a2;
  swift_retain_n();
  swift_retain_n();

  v765 = sub_10045DA48(v31);
  v766 = v32;
  isa = v32[2].isa;
  v737 = object;
  v738 = v18;
  v736 = v20;
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
    v732 = 0;
    v18 = a2;
    goto LABEL_10;
  }

  sub_10045FD98();
  sub_100468B34(sub_100468EC4, v36);

  v732 = 1;
  v18 = v768;
LABEL_10:
  v20 = &v778;
  a2 = _swiftEmptyArrayStorage;
  v764 = _swiftEmptyArrayStorage;
  v763 = sub_100447D2C(_swiftEmptyArrayStorage);
  v749 = *(v18 + 2);
  v750 = v18;
  if (!v749)
  {
    v754 = 0;
    object = _swiftEmptyArrayStorage;
    v91 = _swiftEmptyArrayStorage[2];
    if (!v91)
    {
      goto LABEL_114;
    }

    goto LABEL_100;
  }

  v754 = 0;
  v37 = 0;
  v748 = v18 + 4;
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
    v38 = &v748[7 * v37];
    v39 = *(v38 + 2);
    v825 = *(v38 + 1);
    v826 = v39;
    v824 = *v38;
    v827 = *(v38 + 48);
    v828 = v825;
    v40 = v39;
    v829 = v39;
    *&v817 = _swiftEmptyArrayStorage;
    a7 = v766;
    if (v766[2].isa)
    {
      v41 = v765;
      a1 = v766 + 4;
      v42 = *&v824;
      v43 = *(v826 + 16);
      sub_100013D04(&v828, v821);
      sub_10000F778(&v829, v821, &qword_100615690, &unk_1004EB2A0);
      object = v40 + 56 * v43 - 16;
      v10 = *(a7 + 16);
      v751 = v41;

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

          a2 = v817;
          v18 = v750;
          v20 = &v778;
          goto LABEL_52;
        }
      }

      swift_retain_n();
      sub_1004BC274();
      if (*((v817 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v817 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v735 = *((v817 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004BC2E4();
      }

      sub_1004BC334();
      v52 = v766[2].isa;
      if (v765)
      {
        v53 = sub_10044EC24();
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
        while (v766[v53 + 4].isa != v41)
        {
          if (v52 == ++v53)
          {
            goto LABEL_20;
          }
        }

        v46 = 0;
      }

      sub_10046B75C(v53, v46, sub_100470F84);

LABEL_20:

      v10 = *(a7 + 16);
      v754 = v41;
      goto LABEL_21;
    }

    sub_100013D04(&v828, v821);
    sub_10000F778(&v829, v821, &qword_100615690, &unk_1004EB2A0);
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
        a7 = sub_1004BD484();
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

      v56 = sub_1004BD6A4();
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
            v184 = v742;
            v185 = sub_10044EC7C(v742);
            if (v185)
            {
              v186 = v185 - 1;
              if (__OFSUB__(v185, 1))
              {
                __break(1u);
              }

              else
              {
                sub_10044213C(v185 - 1, (v184 & 0xC000000000000001) == 0, v184);
                if ((v184 & 0xC000000000000001) == 0)
                {
                  v187 = *(v184 + 8 * v186 + 32);

                  goto LABEL_171;
                }
              }

              v187 = sub_1004BD484();
LABEL_171:
              v188 = sub_100448340(a7);

              a1 = v183;
              if (v188 > 0)
              {
                v751 = v187;
                if (qword_100614E70 != -1)
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
            if (qword_100614E70 != -1)
            {
              swift_once();
            }

            v159 = sub_1004B80B4();
            sub_100007084(v159, static Logger.lyrics);
            v160 = swift_allocObject();
            v161 = v747;
            *(v160 + 16) = v747;
            v162 = v161;
            v163 = sub_1004B8094();
            v164 = sub_1004BC9A4();
            v165 = swift_allocObject();
            *(v165 + 16) = 34;
            v166 = swift_allocObject();
            *(v166 + 16) = 8;
            v167 = swift_allocObject();
            *(v167 + 16) = sub_100470F88;
            *(v167 + 24) = v160;
            v168 = swift_allocObject();
            *(v168 + 16) = sub_100470F74;
            *(v168 + 24) = v167;
            sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
            v169 = swift_allocObject();
            *(v169 + 16) = xmmword_1004C5070;
            *(v169 + 32) = sub_100471004;
            *(v169 + 40) = v165;
            *(v169 + 48) = sub_100471004;
            *(v169 + 56) = v166;
            *(v169 + 64) = sub_100470E54;
            *(v169 + 72) = v168;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v163, v164))
            {
              v170 = swift_slowAlloc();
              v752 = swift_slowAlloc();
              *&v789 = v752;
              *v170 = 136446210;
              v171 = v726[1];
              v803._countAndFlagsBits = *v726;
              v803._object = v171;
              v796 = 10519010;
              v797 = 0xA300000000000000;
              *&v793[0] = 44226;
              *(&v793[0] + 1) = 0xA200000000000000;
              sub_10044CAE0();
              v172 = sub_1004BD224();
              location = v162;
              v803._countAndFlagsBits = v172;
              v803._object = v173;
              v174 = String.nonBreakingSpace.unsafeMutableAddressor();
              v175 = v174[1];
              v796 = *v174;
              v797 = v175;
              *&v793[0] = 0x3B7073626E26;
              *(&v793[0] + 1) = 0xE600000000000000;
              v176 = sub_1004BD224();
              v178 = v177;

              v803._countAndFlagsBits = v176;
              v803._object = v178;
              v796 = 10;
              v797 = 0xE100000000000000;
              *&v793[0] = 28252;
              *(&v793[0] + 1) = 0xE200000000000000;
              v179 = sub_1004BD224();
              v181 = v180;

              v182 = sub_100441BE8(v179, v181, &v789);

              *(v170 + 4) = v182;
              _os_log_impl(&_mh_execute_header, v163, v164, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to make it fit with the previous line by forcing a line break after it. New text: %{public}s", v170, 0xCu);
              sub_100004C6C(v752);
            }

            a8 = v729;
            sub_100467AB8(a1[11].isa, a1[12].isa);

            goto LABEL_158;
          }

LABEL_152:

          goto LABEL_153;
        }

        if (v10)
        {
          sub_1004BD484();
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

        v59 = v769;
        v60 = v770;
        a1 = *(v770 + 16);
        if (v769)
        {

          v61 = sub_100446724(&v824, v60 + 32, a1, (v59 + 16), v59 + 32);
          v63 = v62;
          a1 = v64;

          if (v63)
          {
            goto LABEL_69;
          }

LABEL_68:
          sub_10046B5B4(v61, a1, &v771);
          v780 = v772;
          sub_1001B4A3C(&v780);
          v779 = v773;
          sub_100007214(&v779, &qword_100615690, &unk_1004EB2A0);
        }

        else
        {
          v65 = sub_10046889C(&v824, v770 + 32, *(v770 + 16));
          if ((v66 & 1) == 0)
          {
            v61 = v65;
            a1 = 0;
            goto LABEL_68;
          }
        }

LABEL_69:
        sub_100013D04(&v828, v821);
        sub_10000F778(&v829, v821, &qword_100615690, &unk_1004EB2A0);
        object = location;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          object = sub_100440D14(0, *(object + 16) + 1, 1, object);
        }

        v68 = *(object + 16);
        v67 = *(object + 24);
        v20 = &v778;
        if (v68 >= v67 >> 1)
        {
          object = sub_100440D14((v67 > 1), v68 + 1, 1, object);
        }

        *(object + 16) = v68 + 1;
        v69 = object + 56 * v68;
        v70 = v824;
        v71 = v825;
        v72 = v826;
        *(v69 + 80) = v827;
        *(v69 + 48) = v71;
        *(v69 + 64) = v72;
        *(v69 + 32) = v70;
        sub_100455098(a2, &v824);

        v18 = v750;
        goto LABEL_13;
      }

      goto LABEL_78;
    }

    v73 = sub_1004BD6A4();
    object = location;
    if (v73)
    {
      goto LABEL_54;
    }

LABEL_79:

    if (!v754)
    {
      sub_1001B4A3C(&v828);
      sub_100007214(&v829, &qword_100615690, &unk_1004EB2A0);
LABEL_13:
      a2 = _swiftEmptyArrayStorage;
      goto LABEL_14;
    }

    a2 = _swiftEmptyArrayStorage;
    if (*&v824 > *(&v824 + 1))
    {
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      v740 = v28;
      v741 = v26;
      v213 = v25;
      v29 = sub_1004BD6A4();
      v28 = v740;
      v26 = v741;
      v25 = v213;
      v30 = v29 - 1;
      if (v29 < 1)
      {
        goto LABEL_178;
      }

      goto LABEL_4;
    }

    v75 = *&v754[2].isa;
    v74 = *&v754[3].isa;
    if (v75 > v74)
    {
      goto LABEL_176;
    }

    if (v75 == v74 || *&v824 == *(&v824 + 1) || *(&v824 + 1) <= v75 || v74 <= *&v824)
    {
      sub_1001B4A3C(&v828);
      sub_100007214(&v829, &qword_100615690, &unk_1004EB2A0);
      goto LABEL_14;
    }

    sub_100013D04(&v828, v821);
    sub_10000F778(&v829, v821, &qword_100615690, &unk_1004EB2A0);

    sub_100455098(_swiftEmptyArrayStorage, &v824);
    v76 = v769;
    v77 = v770;
    v78 = *(v770 + 16);
    if (v769)
    {

      v79 = sub_100446724(&v824, v77 + 32, v78, (v76 + 16), v76 + 32);
      v81 = v80;
      a1 = v82;

      if (v81)
      {
        goto LABEL_93;
      }

      goto LABEL_92;
    }

    v83 = sub_10046889C(&v824, v770 + 32, *(v770 + 16));
    if ((v84 & 1) == 0)
    {
      v79 = v83;
      a1 = 0;
LABEL_92:
      sub_10046B5B4(v79, a1, &v774);
      v778 = v775;
      sub_1001B4A3C(&v778);
      v777 = v776;
      sub_100007214(&v777, &qword_100615690, &unk_1004EB2A0);
    }

LABEL_93:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      object = sub_100440D14(0, *(object + 16) + 1, 1, object);
    }

    v86 = *(object + 16);
    v85 = *(object + 24);
    if (v86 >= v85 >> 1)
    {
      object = sub_100440D14((v85 > 1), v86 + 1, 1, object);
    }

    *(object + 16) = v86 + 1;
    v87 = object + 56 * v86;
    v88 = v824;
    v89 = v825;
    v90 = v826;
    *(v87 + 80) = v827;
    *(v87 + 48) = v89;
    *(v87 + 64) = v90;
    *(v87 + 32) = v88;
LABEL_14:
    ++v37;
  }

  while (v37 != v749);
  v764 = object;
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
  v807 = *(object + 32);
  v808 = v92;
  v809 = v93;
  v810 = v45;
  v811 = v94;
  v812 = v95;
  v96 = v91 - 1;
  sub_10044211C(v91 - 1, 1, object);
  v97 = object + 32 + 56 * v96;
  v98 = *(v97 + 16);
  v99 = *(v97 + 24);
  v41 = *(v97 + 32);
  v100 = *(v97 + 40);
  v101 = *(v97 + 48);
  v781 = *v97;
  v782 = v98;
  v783 = v99;
  v784 = v41;
  v785 = v100;
  v786 = v101;
  a7 = v763;
  v748 = v93;

  v735 = v99;

  sub_100454FF0(&v781, a7);
  v749 = v41;
  v751 = v45;
  if (!v102)
  {
    goto LABEL_139;
  }

  v103 = v102;
  *&v793[0] = v102;
  if (v732)
  {
    sub_10045FA74();
    v103 = *&v793[0];
  }

  if (!sub_10044EC7C(v103))
  {

    goto LABEL_139;
  }

  v104 = v103 & 0xC000000000000001;
  sub_10044213C(0, (v103 & 0xC000000000000001) == 0, v103);
  v37 = a7;
  if ((v103 & 0xC000000000000001) != 0)
  {
    v40 = sub_1004BD484();
  }

  else
  {
    v40 = *(v103 + 32);
  }

  v105 = sub_10044EC7C(v103);
  if (!v105)
  {
    goto LABEL_121;
  }

  if (__OFSUB__(v105, 1))
  {
    goto LABEL_544;
  }

  sub_10044213C(v105 - 1, v104 == 0, v103);
  if (v104)
  {
    goto LABEL_545;
  }

  while (2)
  {

    sub_10047768C();
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
    v112 = *&v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words];
    v113 = *(v112 + 16);
    if (!v113)
    {

      a7 = v20;
      goto LABEL_139;
    }

    sub_10044211C(v113 - 1, 1, *&v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words]);
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
    v822 = *(v40 + 48);
    v117 = *(v40 + 32);
    v821[0] = *(v40 + 16);
    v821[1] = v117;
    v823 = *(v40 + 64);
    v830 = v117;
    v831 = v822;
    v118 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v119 = v747;
    swift_beginAccess();
    v120 = *&v119[v118];
    sub_100013D04(&v830, &v817);
    sub_10000F778(&v831, &v817, &qword_100615690, &unk_1004EB2A0);

    sub_100455040(v821, v120);
    v122 = v121;

    sub_1001B4A3C(&v830);
    sub_100007214(&v831, &qword_100615690, &unk_1004EB2A0);
    if (v122)
    {

      v123 = *(v40 + 32);
      v817 = *(v40 + 16);
      v818 = v123;
      v819 = *(v40 + 48);
      v820 = *(v40 + 64);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v803._countAndFlagsBits = *&v119[v118];
      *&v119[v118] = 0x8000000000000000;
      sub_100445084(1, &v817, isUniquelyReferenced_nonNull_native);
      *&v119[v118] = v803._countAndFlagsBits;
      swift_endAccess();
      sub_100467940(v40);
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v125 = sub_1004B80B4();
      sub_100007084(v125, static Logger.lyrics);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      v127 = v119;
      v37 = sub_1004B8094();
      v128 = sub_1004BC9A4();
      v129 = swift_allocObject();
      *(v129 + 16) = 34;
      v130 = swift_allocObject();
      *(v130 + 16) = 8;
      v131 = swift_allocObject();
      *(v131 + 16) = sub_100470F88;
      *(v131 + 24) = v126;
      v132 = swift_allocObject();
      *(v132 + 16) = sub_100470F74;
      *(v132 + 24) = v131;
      sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_1004C5070;
      *(v133 + 32) = sub_100471004;
      *(v133 + 40) = v129;
      *(v133 + 48) = sub_100471004;
      *(v133 + 56) = v130;
      *(v133 + 64) = sub_100470E54;
      *(v133 + 72) = v132;
      swift_setDeallocating();
      sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v37, v128))
      {
        v134 = swift_slowAlloc();
        location = swift_slowAlloc();
        *&v789 = location;
        *v134 = 136446210;
        v135 = v726[1];
        *&v813 = *v726;
        *(&v813 + 1) = v135;
        v803._countAndFlagsBits = 10519010;
        v803._object = 0xA300000000000000;
        v796 = 44226;
        v797 = 0xA200000000000000;
        sub_10044CAE0();
        *&v813 = sub_1004BD224();
        *(&v813 + 1) = v136;
        v137 = String.nonBreakingSpace.unsafeMutableAddressor();
        v138 = v137[1];
        v803._countAndFlagsBits = *v137;
        v803._object = v138;
        v796 = 0x3B7073626E26;
        v797 = 0xE600000000000000;
        v139 = sub_1004BD224();
        LODWORD(v752) = v128;
        v141 = v140;

        *&v813 = v139;
        *(&v813 + 1) = v141;
        v803._countAndFlagsBits = 10;
        v803._object = 0xE100000000000000;
        v796 = 28252;
        v797 = 0xE200000000000000;
        v142 = sub_1004BD224();
        v144 = v143;

        v145 = sub_100441BE8(v142, v144, &v789);

        *(v134 + 4) = v145;
        _os_log_impl(&_mh_execute_header, v37, v752, "[Transliteration] Last transliterated word in this line has more original words to match in the next line, and the next line only contains words that match this transliteration. Insert a line break before this word to make sure they are all in the same line. New text: %{public}s", v134, 0xCu);
        sub_100004C6C(location);

        goto LABEL_220;
      }

LABEL_162:

LABEL_219:

LABEL_220:

      goto LABEL_410;
    }

LABEL_160:

    a7 = v20;
    v41 = v749;
    v45 = v751;
LABEL_139:
    v146 = v766[2].isa;
    v713 = v765;
    v714 = v766;
    v721 = a7;
    if (!v146)
    {
      goto LABEL_188;
    }

    v147 = v766[4].isa;
    if (!sub_10044EC7C(v752))
    {
      goto LABEL_188;
    }

    v148 = v752;
    v149 = v752 & 0xC000000000000001;
    sub_10044213C(0, (v752 & 0xC000000000000001) == 0, v752);
    if (v149)
    {

      v214 = sub_1004BD484();
      swift_unknownObjectRelease();
      if (v147 == v214)
      {
LABEL_144:
        v150 = v747;
        if (v745 >= 1)
        {
          v819 = *(v147 + 48);
          v151 = *(v147 + 32);
          v817 = *(v147 + 16);
          v818 = v151;
          v820 = *(v147 + 64);
          v832 = v151;
          v833 = v819;
          v152 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
          swift_beginAccess();
          v153 = *&v150[v152];
          sub_100013D04(&v832, &v813);
          sub_10000F778(&v833, &v813, &qword_100615690, &unk_1004EB2A0);

          sub_100455040(&v817, v153);
          v155 = v154;

          sub_1001B4A3C(&v832);
          sub_100007214(&v833, &qword_100615690, &unk_1004EB2A0);
          if (v155)
          {

            v156 = *(v147 + 32);
            v813 = *(v147 + 16);
            v814 = v156;
            v815 = *(v147 + 48);
            v816 = *(v147 + 64);
            swift_beginAccess();
            v157 = swift_isUniquelyReferenced_nonNull_native();
            v796 = *&v150[v152];
            *&v150[v152] = 0x8000000000000000;
            sub_100445084(1, &v813, v157);
            *&v150[v152] = v796;
            swift_endAccess();
            a1 = v147;
            if (v714[2].isa >= 2)
            {
              a7 = v749;
              if (v723 != 1)
              {
                v10 = v714[5].isa;
                a8 = v752;
                sub_10044213C(1uLL, v149 == 0, v752);
                if (!v149)
                {
                  goto LABEL_166;
                }

                v158 = sub_1004BD484();
                swift_unknownObjectRelease();

                if (v10 == v158)
                {
                  goto LABEL_167;
                }
              }
            }

            goto LABEL_152;
          }

          v41 = v749;
          goto LABEL_187;
        }
      }

LABEL_187:
      v45 = v751;
      goto LABEL_188;
    }

    if (v147 == *(v148 + 32))
    {

      goto LABEL_144;
    }

LABEL_188:
    v215 = sub_100448340(v45);
    v217 = v216;
    v841.location = sub_100448340(v41);
    v841.length = v218;
    v840.location = v215;
    v840.length = v217;
    v219 = NSUnionRange(v840, v841);
    v220 = sub_1004BBE24();
    location = v219.location;
    v221 = [v220 substringWithRange:{v219.location, v219.length}];

    sub_1004BBE64();
    v731 = String.trim()();

    v45 = v744;
    v37 = v745;
    v222 = [v733 substringWithRange:{v745, v744}];
    v223 = sub_1004BBE64();
    v40 = v224;

    v225 = String.trim()();
    object = v225._object;
    *&v813 = v223;
    *(&v813 + 1) = v40;
    countAndFlagsBits = v225._countAndFlagsBits;
    v803 = v225;
    v226 = sub_1004B6E64();
    v227 = v739;
    (*(*(v226 - 8) + 56))(v739, 1, 1, v226);
    v228 = sub_10044CAE0();

    v712 = v228;
    v229 = sub_1004BD234();
    v231 = v230;
    v41 = v232;
    sub_100007214(v227, &qword_100615068, &qword_1004EA8A8);
    v725 = v225._object;

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
      sub_1004BD484();
      continue;
    }

    break;
  }

LABEL_192:
  if (qword_100614E78 != -1)
  {
    goto LABEL_530;
  }

  while (2)
  {
    v235 = sub_10043EA2C(3, *(static LyricsOptionsManager.shared + 40));
    v711 = a10;
    v742 = v45;
    v740 = v37;
    if (!v235)
    {
      goto LABEL_199;
    }

    v236 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
    v237 = v747;
    swift_beginAccess();
    v238 = v743;
    sub_10000F778(&v237[v236], v743, &qword_100615038, &qword_1004EA878);
    v239 = v746;
    v240 = v738;
    if ((*(*&v746 + 48))(v238, 1, v738))
    {
      v241 = &qword_100615038;
      v242 = &qword_1004EA878;
      v243 = v238;
      goto LABEL_198;
    }

    v244 = v736;
    (*(*&v239 + 16))(v736, v238, v240);
    sub_100007214(v238, &qword_100615038, &qword_1004EA878);
    v245 = v737;
    sub_1004B6E14();
    (*(*&v239 + 8))(v244, v240);
    v246 = sub_1004B6D64();
    v247 = *(v246 - 8);
    if ((*(v247 + 48))(v245, 1, v246) == 1)
    {
      v241 = &qword_100615040;
      v242 = &unk_1004EA880;
      v243 = v245;
LABEL_198:
      sub_100007214(v243, v241, v242);
LABEL_199:
      v248 = 0;
      v249 = 0xE000000000000000;
    }

    else
    {
      v248 = sub_1004B6D44();
      v249 = v316;
      (*(v247 + 8))(v245, v246);
    }

    sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_1004C50C0;
    *(v250 + 32) = NSFontAttributeName;
    v251 = v747;
    object = &v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs];
    v252 = *&v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 312];
    v253 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
    *(v250 + 40) = v252;
    *(v250 + 64) = v253;
    *(v250 + 72) = NSLanguageIdentifierAttributeName;
    *(v250 + 104) = &type metadata for String;
    *(v250 + 80) = v248;
    *(v250 + 88) = v249;
    v254 = NSFontAttributeName;
    v255 = v252;
    v256 = NSLanguageIdentifierAttributeName;

    sub_100447ACC(v250);
    swift_setDeallocating();
    sub_100003ABC(&qword_100615670, &unk_1004EB270);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v257 = objc_allocWithZone(NSAttributedString);
    v258 = *&v731._object;
    v259 = sub_1004BBE24();
    _s3__C3KeyVMa_1(0);
    sub_1004701D0(&qword_100616F20, _s3__C3KeyVMa_1, &unk_1004EA7A0);
    v260 = sub_1004BBC24().super.isa;

    *&v261 = COERCE_DOUBLE([v257 initWithString:v259 attributes:v260]);

    *&v45 = COERCE_DOUBLE(CTLineCreateWithAttributedString(v261));
    v27 = CTLineRef.bounds.getter();
    a10 = v262;
    v264 = v263;
    v266 = v265;
    v267 = v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection];
    v715 = v261;
    if (v267 != 2 && v251[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == (v267 & 1))
    {
      v302 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v807, &v781);
      v41 = v721;
      if (v302)
      {
        v843.origin.x = v27;
        v843.origin.y = a10;
        v843.size.width = v264;
        v843.size.height = v266;
        if (CGRectGetWidth(v843) > a9)
        {
          v27 = Int.seconds.getter(0);
          sub_100454FF0(&v781, v763);
          MaxX = v27;
          if (!v303)
          {
            goto LABEL_428;
          }

          v306 = v303;
          v307 = sub_10044EC7C(v303);
          if (!v307)
          {

            MaxX = v27;
            goto LABEL_428;
          }

          v308 = v307 - 1;
          if (__OFSUB__(v307, 1))
          {
            __break(1u);
          }

          else
          {
            v258 = *&v261;
            sub_10044213C(v307 - 1, (v306 & 0xC000000000000001) == 0, v306);
            if ((v306 & 0xC000000000000001) == 0)
            {
              v309 = *(v306 + 8 * v308 + 32);

              goto LABEL_229;
            }
          }

          v309 = sub_1004BD484();
LABEL_229:

          MaxX = CGRectGetMaxX(*(v309 + 176));
          v310 = sub_100448340(*(v309 + 48));
          v312 = v311;

          v313 = v310 + v734;
          if (__OFADD__(v310, v734))
          {
            __break(1u);
          }

          else if (!__OFADD__(v740, v742))
          {
            v57 = __OFADD__(v313, v312);
            v314 = v313 + v312;
            if (!v57)
            {
              *&v261 = v258;
              if (v740 + v742 != v314)
              {

LABEL_383:
                v108 = 0;
                v109 = 0;
                v110 = 0;
                v111 = 1;
                a8 = v729;
                v27 = 0.0;
                goto LABEL_179;
              }

LABEL_428:
              v704 = v45;
              type metadata accessor for TextKitManager(0, v304);
              swift_allocObject();
              v744 = v261;
              TextKitManager.init(text:size:)(v744, a9);
              v541 = *(*v540 + 192);
              v745 = v540;
              v542 = v541();
              v752 = v542[2];
              if (v752)
              {
                v543 = 0;
                v750 = (v542 + 4);
                *&v746 = -location;
                v747 = v542;
                v544 = __OFSUB__(0, location);
                LODWORD(location) = v544;
                v109 = _swiftEmptyArrayStorage;
                while (v543 < v542[2])
                {
                  v545 = &v750[7 * v543];
                  v546 = *(v545 + 1);
                  v547 = *(v545 + 2);
                  v548 = *(v545 + 3);
                  v549 = *(v545 + 4);
                  v550 = *(v545 + 5);
                  v258 = COERCE_DOUBLE(*v545);
                  v551 = [*&v258 lineRef];
                  if (!v551)
                  {
                    __break(1u);
LABEL_569:
                    swift_once();
LABEL_173:
                    v189 = sub_1004B80B4();
                    sub_100007084(v189, static Logger.lyrics);
                    v190 = swift_allocObject();
                    v191 = v747;
                    *(v190 + 16) = v747;
                    v752 = v191;
                    v192 = sub_1004B8094();
                    v193 = sub_1004BC9A4();
                    v194 = swift_allocObject();
                    *(v194 + 16) = 34;
                    v195 = swift_allocObject();
                    *(v195 + 16) = 8;
                    v196 = swift_allocObject();
                    *(v196 + 16) = sub_1004701B4;
                    *(v196 + 24) = v190;
                    v197 = swift_allocObject();
                    *(v197 + 16) = sub_100470F74;
                    *(v197 + 24) = v196;
                    sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
                    v198 = swift_allocObject();
                    *(v198 + 16) = xmmword_1004C5070;
                    *(v198 + 32) = sub_100471004;
                    *(v198 + 40) = v194;
                    *(v198 + 48) = sub_100471004;
                    *(v198 + 56) = v195;
                    *(v198 + 64) = sub_100470E54;
                    *(v198 + 72) = v197;
                    swift_setDeallocating();
                    sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
                    swift_arrayDestroy();
                    swift_deallocClassInstance();
                    LODWORD(v750) = v193;
                    location = v192;
                    if (os_log_type_enabled(v192, v193))
                    {
                      v199 = swift_slowAlloc();
                      v200 = swift_slowAlloc();
                      *&v789 = v200;
                      *v199 = 136446210;
                      v201 = v726[1];
                      v803._countAndFlagsBits = *v726;
                      v803._object = v201;
                      v796 = 10519010;
                      v797 = 0xA300000000000000;
                      *&v793[0] = 44226;
                      *(&v793[0] + 1) = 0xA200000000000000;
                      sub_10044CAE0();
                      v803._countAndFlagsBits = sub_1004BD224();
                      v803._object = v202;
                      v203 = String.nonBreakingSpace.unsafeMutableAddressor();
                      v204 = v203[1];
                      v796 = *v203;
                      v797 = v204;
                      *&v793[0] = 0x3B7073626E26;
                      *(&v793[0] + 1) = 0xE600000000000000;
                      v205 = sub_1004BD224();
                      v207 = v206;

                      v803._countAndFlagsBits = v205;
                      v803._object = v207;
                      v796 = 10;
                      v797 = 0xE100000000000000;
                      *&v793[0] = 28252;
                      *(&v793[0] + 1) = 0xE200000000000000;
                      v208 = sub_1004BD224();
                      v210 = v209;

                      v211 = sub_100441BE8(v208, v210, &v789);

                      *(v199 + 4) = v211;
                      v212 = location;
                      _os_log_impl(&_mh_execute_header, location, v750, "[Transliteration] The first word in this line, which is not the first line in this text, had no transliterated word match. Let's try to bring the previous line's last word into this line by forcing a line break before it. New text: %{public}s", v199, 0xCu);
                      sub_100004C6C(v200);
                    }

                    else
                    {
                    }

                    sub_100467940(v751);

                    a8 = v729;
LABEL_158:

LABEL_511:

                    v108 = 0;
                    v111 = 0;
                    v109 = 0;
                    v110 = 0;
                    goto LABEL_179;
                  }

                  v552 = v551;
                  v553 = _swiftEmptyArrayStorage[2];
                  if (v553)
                  {
                    v554 = 0;
                    v555 = &_swiftEmptyArrayStorage[4];
                    do
                    {
                      v557 = *v555++;
                      v556 = v557;
                      if ((v557 & ~v554) == 0)
                      {
                        v556 = 0;
                      }

                      v554 |= v556;
                      --v553;
                    }

                    while (v553);
                  }

                  else
                  {
                    v554 = 0;
                  }

                  [*&v258 boundsWithType:0 options:v554];
                  if (location)
                  {
                    goto LABEL_532;
                  }

                  sub_10046E800(v546, v547, v548, v549, v558, v559, v552, v764, v731._countAndFlagsBits, v731._object, *&v746, v550, _swiftEmptyArrayStorage);
                  v561 = v560;
                  v845.origin.x = v546;
                  v845.origin.y = v547;
                  v845.size.width = v548;
                  v845.size.height = v549;
                  Width = CGRectGetWidth(v845);
                  if (Width > v27)
                  {
                    v27 = Width;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v109 = sub_10044194C(0, *(v109 + 2) + 1, 1, v109);
                  }

                  v564 = *(v109 + 2);
                  v563 = *(v109 + 3);
                  if (v564 >= v563 >> 1)
                  {
                    v109 = sub_10044194C((v563 > 1), v564 + 1, 1, v109);
                  }

                  ++v543;

                  *(v109 + 2) = v564 + 1;
                  v565 = &v109[16 * v564];
                  *(v565 + 4) = v561;
                  *(v565 + 5) = v552;
                  v542 = v747;
                  if (v543 == v752)
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

              sub_100454FF0(&v781, v763);
              v567 = v566;

              if (v567)
              {
                v568 = sub_10044EC7C(v567);
                if (v568)
                {
                  v569 = v568 - 1;
                  if (__OFSUB__(v568, 1))
                  {
                    __break(1u);
                  }

                  else
                  {
                    sub_10044213C(v568 - 1, (v567 & 0xC000000000000001) == 0, v567);
                    if ((v567 & 0xC000000000000001) == 0)
                    {
                      v570 = *(v567 + 8 * v569 + 32);

                      goto LABEL_460;
                    }
                  }

                  v570 = sub_1004BD484();
LABEL_460:

                  sub_1004774B4(v570[22], v570[23], v27 + v570[24], v570[25]);
                }

                else
                {
                }
              }

              else
              {
              }

              v108 = v769;
              v111 = v770;

LABEL_401:
              a8 = v729;
              v110 = v732;
              goto LABEL_179;
            }

LABEL_557:
            __break(1u);
LABEL_558:
            swift_once();
LABEL_425:
            v517 = sub_1004B80B4();
            sub_100007084(v517, static Logger.lyrics);
            v518 = swift_allocObject();
            *(v518 + 16) = v249;
            v519 = v249;
            v520 = sub_1004B8094();
            v521 = sub_1004BC9A4();
            v522 = swift_allocObject();
            *(v522 + 16) = 34;
            v523 = swift_allocObject();
            *(v523 + 16) = 8;
            v524 = swift_allocObject();
            *(v524 + 16) = sub_100470F88;
            *(v524 + 24) = v518;
            v525 = swift_allocObject();
            *(v525 + 16) = sub_100470F74;
            *(v525 + 24) = v524;
            sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
            v526 = swift_allocObject();
            *(v526 + 16) = xmmword_1004C5070;
            *(v526 + 32) = sub_100471004;
            *(v526 + 40) = v522;
            *(v526 + 48) = sub_100471004;
            *(v526 + 56) = v523;
            *(v526 + 64) = sub_100470E54;
            *(v526 + 72) = v525;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v520, v521))
            {
              v527 = swift_slowAlloc();
              v528 = swift_slowAlloc();
              v757 = v528;
              *v527 = 136446210;
              v529 = v726[1];
              v758 = *v726;
              v759 = v529;
              v760 = 10519010;
              v761 = 0xA300000000000000;
              v755 = 44226;
              v756 = 0xA200000000000000;
              LODWORD(v752) = v521;
              v758 = sub_1004BD224();
              v759 = v530;
              v531 = String.nonBreakingSpace.unsafeMutableAddressor();
              v532 = v531[1];
              v760 = *v531;
              v761 = v532;
              v755 = 0x3B7073626E26;
              v756 = 0xE600000000000000;
              v533 = sub_1004BD224();
              v535 = v534;

              v758 = v533;
              v759 = v535;
              v760 = 10;
              v761 = 0xE100000000000000;
              v755 = 28252;
              v756 = 0xE200000000000000;
              v536 = sub_1004BD224();
              v538 = v537;

              v539 = sub_100441BE8(v536, v538, &v757);

              *(v527 + 4) = v539;
              _os_log_impl(&_mh_execute_header, v520, v752, "[Transliteration][Last word timing check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v527, 0xCu);
              sub_100004C6C(v528);

LABEL_507:

              goto LABEL_510;
            }

LABEL_509:

LABEL_510:

            a8 = v729;
            goto LABEL_511;
          }

          __break(1u);
          goto LABEL_557;
        }
      }

      v249 = 1;
      v315 = 1;
      if (v732)
      {
        goto LABEL_241;
      }

      goto LABEL_242;
    }

    v842.origin.x = v27;
    v842.origin.y = a10;
    v842.size.width = v264;
    v842.size.height = v266;
    v268 = CGRectGetWidth(v842);
    v41 = v721;
    if (v268 <= a9)
    {

      goto LABEL_239;
    }

    v41 = v763;
    sub_100454FF0(&v807, v763);
    v270 = v269;

    if (!v270)
    {
LABEL_238:

      goto LABEL_239;
    }

    if (!sub_10044EC7C(v270))
    {

      goto LABEL_238;
    }

    sub_10044213C(0, (v270 & 0xC000000000000001) == 0, v270);
    if ((v270 & 0xC000000000000001) != 0)
    {
      v40 = sub_1004BD484();
    }

    else
    {
      v40 = *(v270 + 32);
    }

    sub_100454FF0(&v781, v41);
    v272 = v271;

    if (v272)
    {
      v273 = sub_10044EC7C(v272);
      if (v273)
      {
        v274 = v273;
        v704 = v45;

        v57 = __OFSUB__(v274, 1);
        v275 = v274 - 1;
        if (!v57)
        {
          sub_10044213C(v275, (v272 & 0xC000000000000001) == 0, v272);
          v27 = 0.0;
          if ((v272 & 0xC000000000000001) == 0)
          {
            v276 = *(v272 + 8 * v275 + 32);

LABEL_212:

            if (v732)
            {
              v277 = v40;
            }

            else
            {
              v277 = v276;
            }

            v278 = v747;
            sub_100467940(v277);
            if (qword_100614E70 != -1)
            {
              swift_once();
            }

            v279 = sub_1004B80B4();
            sub_100007084(v279, static Logger.lyrics);
            v280 = swift_allocObject();
            *(v280 + 16) = v278;
            v281 = v278;
            v282 = sub_1004B8094();
            v283 = sub_1004BC9A4();
            v284 = swift_allocObject();
            *(v284 + 16) = 34;
            v285 = swift_allocObject();
            *(v285 + 16) = 8;
            v286 = swift_allocObject();
            *(v286 + 16) = sub_100470F88;
            *(v286 + 24) = v280;
            v287 = swift_allocObject();
            *(v287 + 16) = sub_100470F74;
            *(v287 + 24) = v286;
            sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
            v288 = swift_allocObject();
            *(v288 + 16) = xmmword_1004C5070;
            *(v288 + 32) = sub_100471004;
            *(v288 + 40) = v284;
            *(v288 + 48) = sub_100471004;
            *(v288 + 56) = v285;
            *(v288 + 64) = sub_100470E54;
            *(v288 + 72) = v287;
            swift_setDeallocating();
            sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            if (os_log_type_enabled(v282, v283))
            {
              v289 = swift_slowAlloc();
              v290 = swift_slowAlloc();
              *&v793[0] = v290;
              *v289 = 136446210;
              v291 = v726[1];
              *&v813 = *v726;
              *(&v813 + 1) = v291;
              v803._countAndFlagsBits = 10519010;
              v803._object = 0xA300000000000000;
              v796 = 44226;
              v797 = 0xA200000000000000;
              location = v276;
              LODWORD(v752) = v283;
              *&v813 = sub_1004BD224();
              *(&v813 + 1) = v292;
              v293 = String.nonBreakingSpace.unsafeMutableAddressor();
              v294 = v293[1];
              v803._countAndFlagsBits = *v293;
              v803._object = v294;
              v796 = 0x3B7073626E26;
              v797 = 0xE600000000000000;
              v295 = sub_1004BD224();
              v297 = v296;

              *&v813 = v295;
              *(&v813 + 1) = v297;
              v803._countAndFlagsBits = 10;
              v803._object = 0xE100000000000000;
              v796 = 28252;
              v797 = 0xE200000000000000;
              v298 = sub_1004BD224();
              v300 = v299;

              v301 = sub_100441BE8(v298, v300, v793);

              *(v289 + 4) = v301;
              _os_log_impl(&_mh_execute_header, v282, v752, "[Transliteration] Directions don't match and transliterated line goes beyond view bounds. Inserting line break. New text: %{public}s", v289, 0xCu);
              sub_100004C6C(v290);

              goto LABEL_219;
            }

LABEL_410:

LABEL_411:

            goto LABEL_477;
          }

LABEL_552:
          v276 = sub_1004BD484();
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
    v315 = 0;
    if (v732)
    {
LABEL_241:
      sub_10045FC28();
      v315 = v249;
    }

LABEL_242:
    if (__OFSUB__(0, location))
    {
      goto LABEL_533;
    }

    v317 = v764;
    sub_10046E800(v27, a10, v264, v266, v27, a10, v45, v764, v731._countAndFlagsBits, *&v258, -location, 0, _swiftEmptyArrayStorage);
    v319 = v318;
    v762 = v318;
    v320 = sub_10044EC7C(v318);
    v37 = v750;
    if (v320 < 1)
    {

      goto LABEL_383;
    }

    v321 = Int.seconds.getter(0);
    v27 = 0.0;
    if (!v315)
    {

      v108 = v769;
      v111 = v770;
      sub_100003ABC(&qword_100615688, &qword_1004EB298);
      v109 = swift_allocObject();
      *(v109 + 1) = xmmword_1004C50A0;
      *(v109 + 4) = v319;
      *(v109 + 5) = *&v45;

      goto LABEL_400;
    }

    if (v732)
    {
      sub_10045FA74();
    }

    v700 = v317;
    v40 = v762;
    v717 = sub_10044EC7C(v762);
    if (!v717)
    {

      location = 0;
      v445 = v321;
      v446 = v40;
      goto LABEL_392;
    }

    v737 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
    v708 = v40 + 32;
    v709 = v40 & 0xFFFFFFFFFFFFFF8;
    v322 = v752;
    v718 = v40 & 0xC000000000000001;
    v719 = v752 & 0xC000000000000001;
    v720 = v40;

    v746 = 0.0;
    *&v741 = 0.0;
    v258 = 0.0;
    v323 = 0;
    v324 = 0;
    v705 = v322 + 40;
    LODWORD(v749) = 1;
    *&v325 = 136446466;
    v706 = v325;
    *&v325 = 136315394;
    v707 = v325;
    v701 = v321;
    v702 = v321;
    LODWORD(v739) = 1;
    v704 = v45;
    v724 = object;
LABEL_252:
    if (v718)
    {
      v326 = object;
      v327 = v323;
      location = sub_1004BD484();
      v57 = __OFADD__(v327, 1);
      v328 = v327 + 1;
      if (v57)
      {
        goto LABEL_528;
      }

      break;
    }

    if (v323 >= *(v709 + 16))
    {
      __break(1u);
      goto LABEL_541;
    }

    v326 = object;
    location = *(v708 + 8 * v323);
    v329 = v323;

    v57 = __OFADD__(v329, 1);
    v328 = v329 + 1;
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

  v728 = v328;
  v330 = *(location + 32);
  v813 = *(location + 16);
  v814 = v330;
  v815 = *(location + 48);
  v816 = *(location + 64);
  v41 = v763;
  if (!v763[2].isa)
  {
    goto LABEL_269;
  }

  v834 = *(location + 32);
  v835 = v815;
  sub_100013D04(&v834, &v789);
  v37 = &qword_100615690;
  sub_10000F778(&v835, &v789, &qword_100615690, &unk_1004EB2A0);
  v331 = sub_100442BFC(&v813);
  v40 = v332;
  sub_1001B4A3C(&v834);
  sub_100007214(&v835, &qword_100615690, &unk_1004EB2A0);
  if ((v40 & 1) == 0)
  {
    goto LABEL_269;
  }

  v40 = *(v41[7].isa + v331);
  if (!(v40 >> 62))
  {
    object = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (object)
    {
      goto LABEL_262;
    }

LABEL_269:
    if (v749)
    {

      LODWORD(v749) = 1;
    }

    else
    {
      if (v258 != 0.0)
      {
        object = v326;
        if (v324)
        {
          a10 = v746;
          v341 = *(v324 + 144);
          v342 = *(v324 + 152);
          v343 = *(v324 + 160);
          v344 = *(v324 + 168);

          v844.origin.x = v341;
          v844.origin.y = v342;
          v844.size.width = v343;
          v844.size.height = v344;
          v345 = CGRectGetMaxX(v844);
          v346 = location;
          *(location + 144) = v345 + *(v326 + 336);
          sub_1004774B4(*(v346 + 176) + a10, *(v346 + 184), *(v346 + 192), *(v346 + 200));
          v347 = CGRectGetMaxX(*(v346 + 176));
          v348 = v347 - CGRectGetMinX(*(*&v258 + 176));
          if (CGRectGetWidth(*(*&v258 + 176)) >= v348)
          {

            LODWORD(v749) = 0;
            v27 = 0.0;
          }

          else
          {
            v349 = *(*&v258 + 192);
            v350 = v348 - v349 + *(v326 + 336);
            sub_1004774B4(*(*&v258 + 176), *(*&v258 + 184), v349 + v350, *(*&v258 + 200));
            v321 = v321 + v350;
            v27 = 0.0;
            if (CGRectGetMaxX(*(*&v258 + 176)) > a9)
            {
              v351 = *(v324 + 32);
              v787[0] = *(v324 + 16);
              v787[1] = v351;
              v787[2] = *(v324 + 48);
              v788 = *(v324 + 64);
              if (v41[2].isa)
              {
                v352 = sub_100442BFC(v787);
                if (v353)
                {
                  v354 = *(v41[7].isa + v352);
                  if (v354 >> 62)
                  {
                    if (sub_1004BD6A4())
                    {
LABEL_378:
                      v703 = v324;
                      v721 = v41;

                      swift_bridgeObjectRelease_n();
                      sub_10044213C(0, (v354 & 0xC000000000000001) == 0, v354);
                      if ((v354 & 0xC000000000000001) != 0)
                      {
                        v249 = sub_1004BD484();
                      }

                      else
                      {
                        v249 = *(v354 + 32);
                      }

                      if (v732)
                      {
                        sub_100467AB8(*(v249 + 88), *(v249 + 96));
                        goto LABEL_535;
                      }

LABEL_534:
                      sub_100467940(v249);
LABEL_535:
                      if (qword_100614E70 != -1)
                      {
                        swift_once();
                      }

                      v681 = sub_1004B80B4();
                      sub_100007084(v681, static Logger.lyrics);
                      v682 = v747;

                      v683 = sub_1004B8094();
                      v684 = sub_1004BC9A4();

                      if (os_log_type_enabled(v683, v684))
                      {
                        v685 = swift_slowAlloc();
                        v752 = swift_slowAlloc();
                        v755 = v752;
                        *v685 = v707;
                        v686 = *(*&v258 + 72);
                        v687 = *(*&v258 + 80);

                        v688 = sub_100441BE8(v686, v687, &v755);

                        *(v685 + 4) = v688;
                        *(v685 + 12) = 2082;
                        v689 = v726[1];
                        *&v789 = *v726;
                        *(&v789 + 1) = v689;
                        v758 = 10519010;
                        v759 = 0xA300000000000000;
                        v760 = 44226;
                        v761 = 0xA200000000000000;
                        *&v789 = sub_1004BD224();
                        *(&v789 + 1) = v690;
                        v691 = String.nonBreakingSpace.unsafeMutableAddressor();
                        v692 = v691[1];
                        v758 = *v691;
                        v759 = v692;
                        v760 = 0x3B7073626E26;
                        v761 = 0xE600000000000000;
                        v693 = sub_1004BD224();
                        v727 = v258;
                        v695 = v694;

                        *&v789 = v693;
                        *(&v789 + 1) = v695;
                        v758 = 10;
                        v759 = 0xE100000000000000;
                        v760 = 28252;
                        v761 = 0xE200000000000000;
                        v696 = sub_1004BD224();
                        v698 = v697;

                        v699 = sub_100441BE8(v696, v698, &v755);

                        *(v685 + 14) = v699;
                        _os_log_impl(&_mh_execute_header, v683, v684, "[Transliteration][Empty Map Entry] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v685, 0x16u);
                        swift_arrayDestroy();
                      }

                      else
                      {
                      }

LABEL_521:

                      goto LABEL_475;
                    }
                  }

                  else if (*((v354 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_378;
                  }
                }
              }
            }

            LODWORD(v749) = 0;
          }
        }

        else
        {
          LODWORD(v749) = 0;
        }

LABEL_251:
        v324 = location;
        v323 = v728;
        if (v728 == v717)
        {

          v446 = v720;

          if (v258 != 0.0)
          {
            v447 = *(*&v258 + 112);
            if (v447 < v722)
            {

              v448 = v723;
              v449 = v752;
              if (v447 + 1 != v723)
              {
                v615 = v752 & 0xFFFFFFFFFFFFFF8;
                v616 = v447;
                while (1)
                {
                  if (v616 < v447 || v616 + 1 >= v448)
                  {
                    __break(1u);
LABEL_548:
                    __break(1u);
LABEL_549:
                    __break(1u);
                    goto LABEL_550;
                  }

                  if (v719)
                  {
                    v40 = sub_1004BD484();
                  }

                  else
                  {
                    if (v616 < -1)
                    {
                      goto LABEL_548;
                    }

                    if ((v616 + 1) >= *(v615 + 16))
                    {
                      goto LABEL_549;
                    }

                    v40 = *(v449 + 8 * v616 + 40);
                  }

                  sub_1004774B4(v321 + *(v40 + 176), *(v40 + 184), *(v40 + 192), *(v40 + 200));
                  if (CGRectGetMaxX(*(v40 + 176)) > a9)
                  {
                    break;
                  }

                  ++v616;
                  v448 = v723;
                  v449 = v752;
                  if (v722 == v616)
                  {
                    goto LABEL_390;
                  }
                }

                if (!v732)
                {
                  goto LABEL_515;
                }

                sub_100467AB8(*(v40 + 88), *(v40 + 96));
LABEL_516:
                if (qword_100614E70 != -1)
                {
                  swift_once();
                }

                v660 = sub_1004B80B4();
                sub_100007084(v660, static Logger.lyrics);
                v661 = v747;

                v662 = sub_1004B8094();
                v663 = sub_1004BC9A4();

                if (os_log_type_enabled(v662, v663))
                {
                  v664 = swift_slowAlloc();
                  v665 = swift_slowAlloc();
                  v751 = v662;
                  v752 = v665;
                  v755 = v665;
                  *v664 = v707;
                  v666 = *(v40 + 72);
                  v667 = *(v40 + 80);

                  v668 = sub_100441BE8(v666, v667, &v755);

                  *(v664 + 4) = v668;
                  *(v664 + 12) = 2082;
                  v669 = v726[1];
                  *&v789 = *v726;
                  *(&v789 + 1) = v669;
                  v758 = 10519010;
                  v759 = 0xA300000000000000;
                  v760 = 44226;
                  v761 = 0xA200000000000000;
                  LODWORD(v749) = v663;
                  *&v789 = sub_1004BD224();
                  *(&v789 + 1) = v670;
                  v671 = String.nonBreakingSpace.unsafeMutableAddressor();
                  v672 = v671[1];
                  v758 = *v671;
                  v759 = v672;
                  v760 = 0x3B7073626E26;
                  v761 = 0xE600000000000000;
                  v673 = sub_1004BD224();
                  v727 = v258;
                  v675 = v674;

                  *&v789 = v673;
                  *(&v789 + 1) = v675;
                  v758 = 10;
                  v759 = 0xE100000000000000;
                  v760 = 28252;
                  v761 = 0xE200000000000000;
                  v676 = sub_1004BD224();
                  v678 = v677;

                  v679 = sub_100441BE8(v676, v678, &v755);

                  *(v664 + 14) = v679;
                  v680 = v751;
                  _os_log_impl(&_mh_execute_header, v751, v749, "[Transliteration] Word %s crossed view bounds after final adjustment, adding line break. New text: %{public}s", v664, 0x16u);
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

          v445 = v702;
LABEL_392:
          v450 = sub_10044EC7C(v446);
          if (v450)
          {
            v451 = v450;
            if (v450 < 1)
            {
LABEL_550:
              __break(1u);
              goto LABEL_551;
            }

            for (i = 0; i != v451; ++i)
            {
              if ((v446 & 0xC000000000000001) != 0)
              {
                v453 = sub_1004BD484();
              }

              else
              {
              }

              *(v453 + 224) = v445 + *(v453 + 224);
            }
          }

          v454 = v715;
          v108 = v769;
          v111 = v770;
          sub_100003ABC(&qword_100615688, &qword_1004EB298);
          v109 = swift_allocObject();
          *(v109 + 1) = xmmword_1004C50A0;

          *&v789 = sub_10046DE30(v455, sub_10046E05C);
          sub_10046CA54(&v789);

          *(v109 + 4) = v789;
          *(v109 + 5) = *&v45;

LABEL_400:

          v27 = v321;
          goto LABEL_401;
        }

        goto LABEL_252;
      }

      LODWORD(v749) = 0;
    }

    object = v326;
    goto LABEL_251;
  }

  object = sub_1004BD6A4();
  if (!object)
  {
    goto LABEL_269;
  }

LABEL_262:
  v37 = v40 & 0xC000000000000001;
  if ((v40 & 0xC000000000000001) != 0)
  {

    v333 = sub_1004BD484();
  }

  else
  {
    if (!*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_542;
    }

    v333 = *(v40 + 32);
  }

  v736 = object;
  v742 = v40 & 0xC000000000000001;
  v743 = v40;
  v738 = v333;
  v721 = v41;
  v703 = v324;
  v727 = v258;
  if (!v324)
  {
    LODWORD(v751) = 0;
    v748 = 0;
    v740 = 0;
    v735 = 0;
    v37 = 0;
    v355 = location;
    v356 = *(location + 32);
    v803 = *(location + 16);
    v804 = v356;
    v805 = *(location + 48);
    v806 = *(location + 64);
LABEL_285:
    object = *(v355 + 64);
    v357 = *(v355 + 32);
    v40 = *(v355 + 40);
    v45 = *(v355 + 16);
    v358 = *(v355 + 24);
    v836 = v804;
    v837 = v805;
    sub_100013D04(&v836, &v789);
    sub_10000F778(&v837, &v789, &qword_100615690, &unk_1004EB2A0);
    sub_10046FD48(v37, v735, v740, 0);
    sub_10046FD48(v45, v358, v357, v40);
    goto LABEL_286;
  }

  v335 = *(v324 + 16);
  v334 = *(v324 + 24);
  v40 = *(v324 + 32);
  object = *(v324 + 40);
  v336 = v324;
  v337 = *(v324 + 48);
  v338 = *(v336 + 56);
  v37 = *(v336 + 64);
  v339 = *(location + 32);
  v803 = *(location + 16);
  v804 = v339;
  v805 = *(location + 48);
  v806 = *(location + 64);

  if (!object)
  {
    v355 = location;
    LODWORD(v751) = v37;
    v748 = v338;
    v740 = v40;
    v735 = v334;
    v37 = v335;
    goto LABEL_285;
  }

  v796 = v335;
  v797 = v334;
  v798 = v40;
  v799 = object;
  v800 = v337;
  v801 = v338;
  v802 = v37;
  v340 = _s7LyricsX0A0C4WordV23__derived_struct_equalsySbAE_AEtFZ_0(&v796, &v803);
  sub_10046FD48(v335, v334, v40, object);
  if (v340)
  {

    v324 = v703;
    v45 = v704;
    v258 = v727;
    v41 = v721;
    v326 = v724;
    goto LABEL_269;
  }

LABEL_286:
  v735 = v736 - 1;
  v41 = v738;
  if (__OFSUB__(v736, 1))
  {
    goto LABEL_543;
  }

  swift_beginAccess();
  v359 = 0;
  v360 = v742;
  v37 = v743;
  v730 = v743 & 0xFFFFFFFFFFFFFF8;
  v740 = v743 + 32;
  a10 = v701;
  *&v45 = v727;
  v258 = *&v741;
  while (2)
  {
    if (v360)
    {
      v361 = sub_1004BD484();
      v57 = __OFADD__(v359, 1);
      v362 = (v359 + 1);
      if (v57)
      {
        goto LABEL_514;
      }
    }

    else
    {
      if (v359 >= *(v730 + 16))
      {
        goto LABEL_525;
      }

      v361 = *(v740 + 8 * v359);

      v57 = __OFADD__(v359, 1);
      v362 = (v359 + 1);
      if (v57)
      {
LABEL_514:
        __break(1u);
LABEL_515:
        sub_100467940(v40);
        goto LABEL_516;
      }
    }

    v363 = CGRectGetWidth(*(v361 + 176));

    if (v360)
    {
      sub_1004BD484();
    }

    else
    {
    }

    v364 = sub_1004BDA64();

    v365 = *(v361 + 176);
    if (v364)
    {
      *(location + 144) = v365;
    }

    sub_1004774B4(v321 + v365, *(v361 + 184), *(v361 + 192), *(v361 + 200));
    v751 = v361;
    v748 = v362;
    if (*&v45 == 0.0)
    {
LABEL_322:
      swift_retain_n();
      if (v360)
      {
        sub_1004BD484();
      }

      else
      {
      }

      v386 = sub_1004BDA64();

      if (v386)
      {
        v387 = v751[22].isa;
        v258 = *&v387 - *(location + 176);
        sub_1004774B4(*&v387, *&v751[23].isa, *(location + 192), *(location + 200));
        LODWORD(v749) = 0;
        LODWORD(v739) = 0;
        v746 = v258;
      }
    }

    else
    {
      v366 = v41;
      v367 = *(v45 + 112);
      v368 = *(v361 + 112);
      if (v368 <= v367)
      {
        v37 = *(v45 + 112);
      }

      else
      {
        v37 = *(v361 + 112);
      }

      if (v368 >= v367)
      {
        v369 = *(v45 + 112);
      }

      else
      {
        v369 = *(v361 + 112);
      }

      if (__OFADD__(v369, 1))
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

      if (v369 + 1 < v37)
      {
        *&v741 = v258;
        v370 = v719;
        v371 = v752;
        sub_10044213C(v369 + 1, v719 == 0, v752);
        sub_10044213C(v37 - 1, v370 == 0, v371);

        v372 = (v369 + 1);
        if (v370)
        {
          do
          {
            v373 = v372 + 1;
            v374 = sub_1004BD484();
            sub_1004774B4(v321 + v374[22], v374[23], v374[24], v374[25]);
            swift_unknownObjectRelease();
            v372 = v373;
          }

          while (v37 != v373);
        }

        else
        {
          v375 = ~v369 + v37;
          v376 = (v705 + 8 * v369);
          do
          {
            v377 = *v376++;
            v27 = v377[23];
            v378 = v377[24];
            v379 = v377[25];
            v380 = v321 + v377[22];

            sub_1004774B4(v380, v27, v378, v379);

            --v375;
          }

          while (v375);
        }

        v366 = v738;
        v258 = *&v741;
        v360 = v742;
      }

      v381 = v746;
      if (v361 == v45)
      {
        v381 = v258;
      }

      v746 = v381;
      v382 = v749;
      if (v361 == v45)
      {
        v382 = v739;
      }

      if ((v361 != v45) | v739 & 1)
      {
        LODWORD(v749) = v382;
        v37 = v743;
        v41 = v366;
        goto LABEL_322;
      }

      v383 = *(location + 184);
      v384 = *(location + 192);
      v385 = *(location + 200);
      v27 = *(location + 176) + v258;

      sub_1004774B4(v27, v383, v384, v385);
      LODWORD(v749) = 0;
      LODWORD(v739) = 0;
      v746 = v258;
      v37 = v743;
      v41 = v366;
    }

    v388 = *&v41[4].isa;
    v793[0] = *&v41[2].isa;
    v793[1] = v388;
    v794 = *&v41[6].isa;
    v795 = v41[8].isa;
    v389 = *&v747[v737];
    if (*(v389 + 16))
    {
      v390 = v41;
      v838 = *&v41[4].isa;
      v839[0] = v794;
      sub_100013D04(&v838, &v789);
      sub_10000F778(v839, &v789, &qword_100615690, &unk_1004EB2A0);

      v391 = sub_100442BFC(v793);
      v393 = v392;
      sub_1001B4A3C(&v838);
      sub_100007214(v839, &qword_100615690, &unk_1004EB2A0);
      if (v393)
      {
        v741 = *(*(v389 + 56) + 8 * v391);
      }

      else
      {

        *&v741 = 0.0;
      }

      v360 = v742;
      v37 = v743;
      v41 = v390;
      if (v742)
      {
LABEL_337:
        v394 = v751;

        sub_1004BD484();
        v359 = v748;
        goto LABEL_338;
      }
    }

    else
    {
      *&v741 = 0.0;
      if (v360)
      {
        goto LABEL_337;
      }
    }

    v359 = v748;
    if ((v735 & 0x8000000000000000) != 0)
    {
      goto LABEL_526;
    }

    if (v735 >= *(v730 + 16))
    {
      goto LABEL_527;
    }

    v394 = v751;

LABEL_338:
    a10 = a10 + v363;
    v40 = sub_1004BDA64();

    if ((v40 & 1) == 0)
    {
      goto LABEL_362;
    }

    v395 = v394[6].isa;
    v396 = *(v395 + 2);
    if (v396)
    {
      v397 = v395 + 56 * v396;
      v399 = *(v397 + 1);
      v398 = *(v397 + 2);
      v57 = __OFADD__(v399, v398);
      v396 = v399 + v398;
      if (v57)
      {
        goto LABEL_529;
      }

      v400 = *(v395 + 8);
    }

    else
    {
      v400 = 0;
    }

    v401 = v396 - v400;
    if (__OFSUB__(v396, v400))
    {
      goto LABEL_523;
    }

    v402 = v400 + v734;
    if (__OFADD__(v400, v734))
    {
      goto LABEL_524;
    }

    v403.location = v400 + v734;
    v403.length = v396 - v400;
    if (_NSRange.contains(_:)(v403))
    {
      goto LABEL_359;
    }

    if (v741 == 1)
    {

      v456 = v737;
      v457 = *&v738[4].isa;
      v789 = *&v738[2].isa;
      v790 = v457;
      v791 = *&v738[6].isa;
      v792 = v738[8].isa;
      v458 = v747;
      swift_beginAccess();
      v459 = swift_isUniquelyReferenced_nonNull_native();
      v760 = *&v458[v456];
      *&v458[v456] = 0x8000000000000000;
      sub_100445084(2, &v789, v459);
      *&v458[v456] = v760;
      swift_endAccess();
      if (v742)
      {
        v460 = sub_1004BD484();

        v461 = *(v460 + 88);
        swift_unknownObjectRelease();
      }

      else
      {
        v506 = *(v743 + 32);

        v461 = *(v506 + 88);
      }

      v27 = 0.0;
      if (v461 != v745)
      {
        v727 = *&v45;
        v249 = v747;
        v515 = *&v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8];
        v516 = v726;
        *v726 = *&v747[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v516[1] = v515;

        if (qword_100614E70 != -1)
        {
          goto LABEL_558;
        }

        goto LABEL_425;
      }

      v507 = sub_1004BBE24();

      v508 = sub_1004BBE24();
      v509 = sub_1004BBE24();
      v510 = _swiftEmptyArrayStorage[2];
      if (v510)
      {
        v511 = 0;
        v512 = &_swiftEmptyArrayStorage[4];
        do
        {
          v514 = *v512++;
          v513 = v514;
          if ((v514 & ~v511) == 0)
          {
            v513 = 0;
          }

          v511 |= v513;
          --v510;
        }

        while (v510);
      }

      else
      {
        v511 = 0;
      }

      v617 = [v507 stringByReplacingOccurrencesOfString:v508 withString:v509 options:v511 range:{v402, v401}];

      v618 = sub_1004BBE64();
      v620 = v619;

      v621 = v726;
      *v726 = v618;
      v621[1] = v620;

      v622 = [v507 length];
      v464 = v621[1];

      v623 = sub_1004BBFB4();

      v57 = __OFSUB__(v622, v623);
      v471 = &v622[-v623];
      if (v57)
      {
        __break(1u);
      }

      else
      {
        v624 = sub_100448340(v394[6].isa);
        if (!__OFSUB__(v734, v471))
        {
          v626 = (v734 - v471) & ~((v734 - v471) >> 63);
          v471 = (v624 + v626);
          if (!__OFADD__(v624, v626))
          {
            v627 = v625;
            v628 = &v471[v625];
            if (!__OFADD__(v471, v625))
            {

              v629 = sub_1004BBFB4();

              if (v628 == v629)
              {

                goto LABEL_115;
              }

              v750 = v507;
              v727 = *&v45;
              v630 = v627;
              v631 = v747;
              sub_100467AB8(v471, v630);
              if (qword_100614E70 != -1)
              {
                swift_once();
              }

              v632 = sub_1004B80B4();
              sub_100007084(v632, static Logger.lyrics);
              v633 = swift_allocObject();
              *(v633 + 16) = v631;
              v634 = v631;

              v749 = sub_1004B8094();
              LODWORD(v752) = sub_1004BC9A4();
              v635 = swift_allocObject();
              *(v635 + 16) = 32;
              v636 = swift_allocObject();
              *(v636 + 16) = 8;
              v637 = swift_allocObject();
              *(v637 + 16) = sub_100470184;
              *(v637 + 24) = *&v394;
              v638 = swift_allocObject();
              *(v638 + 16) = sub_100470F74;
              *(v638 + 24) = v637;
              v639 = swift_allocObject();
              *(v639 + 16) = 34;
              v640 = swift_allocObject();
              *(v640 + 16) = 8;
              v641 = swift_allocObject();
              *(v641 + 16) = sub_100470F88;
              *(v641 + 24) = v633;
              v642 = swift_allocObject();
              *(v642 + 16) = sub_100470F74;
              *(v642 + 24) = v641;
              sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
              v643 = swift_allocObject();
              *(v643 + 16) = xmmword_1004C5220;
              *(v643 + 32) = sub_100471004;
              *(v643 + 40) = v635;
              *(v643 + 48) = sub_100471004;
              *(v643 + 56) = v636;
              *(v643 + 64) = sub_100470E54;
              *(v643 + 72) = v638;
              *(v643 + 80) = sub_100471004;
              *(v643 + 88) = v639;
              *(v643 + 96) = sub_100471004;
              *(v643 + 104) = v640;
              *(v643 + 112) = sub_100470E54;
              *(v643 + 120) = v642;
              swift_setDeallocating();
              sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
              swift_arrayDestroy();
              swift_deallocClassInstance();
              v644 = v749;
              if (os_log_type_enabled(v749, v752))
              {
                v645 = swift_slowAlloc();
                v757 = swift_slowAlloc();
                *v645 = v707;
                v646 = v394[9].isa;
                v647 = v394[10].isa;

                v648 = sub_100441BE8(v646, v647, &v757);

                *(v645 + 4) = v648;
                *(v645 + 12) = 2082;
                v649 = v726[1];
                v758 = *v726;
                v759 = v649;
                v760 = 10519010;
                v761 = 0xA300000000000000;
                v755 = 44226;
                v756 = 0xA200000000000000;
                v758 = sub_1004BD224();
                v759 = v650;
                v651 = String.nonBreakingSpace.unsafeMutableAddressor();
                v652 = v651[1];
                v760 = *v651;
                v761 = v652;
                v755 = 0x3B7073626E26;
                v756 = 0xE600000000000000;
                v653 = sub_1004BD224();
                v655 = v654;

                v758 = v653;
                v759 = v655;
                v760 = 10;
                v761 = 0xE100000000000000;
                v755 = 28252;
                v756 = 0xE200000000000000;
                v656 = sub_1004BD224();
                v658 = v657;

                v659 = sub_100441BE8(v656, v658, &v757);

                *(v645 + 14) = v659;
                _os_log_impl(&_mh_execute_header, v644, v752, "[Transliteration] Word %s is not fully contained in this line, and it's the only word in this line. Adding line break after it and trying again. New text: %{public}s", v645, 0x16u);
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

    if (v741 >= 2)
    {
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v415 = sub_1004B80B4();
      sub_100007084(v415, static Logger.lyrics);
      v416 = v725;

      v417 = v731._object;

      v408 = sub_1004B8094();
      v418 = sub_1004BC9A4();

      if (os_log_type_enabled(v408, v418))
      {
        v410 = swift_slowAlloc();
        v419 = swift_slowAlloc();
        v727 = *&v45;
        *&v789 = v419;
        *v410 = v706;
        *(v410 + 4) = sub_100441BE8(countAndFlagsBits, v416, &v789);
        *(v410 + 12) = 2082;
        *(v410 + 14) = sub_100441BE8(v731._countAndFlagsBits, v417, &v789);
        v412 = v418;
        v413 = v408;
        v414 = "[Transliteration] Trying to insert a line break for the third time. The view might be too small to fulfill the layout requirements. Not doing any more adjustments. Line: %{public}s transliterated line: %{public}s";
LABEL_357:
        _os_log_impl(&_mh_execute_header, v413, v412, v414, v410, 0x16u);
        swift_arrayDestroy();
        *&v45 = v727;
      }
    }

    else
    {
      v404 = v738;
      if (v738[14].isa)
      {
        v501 = v741;

        v502 = *(v404 + 32);
        v789 = *(v404 + 16);
        v790 = v502;
        v791 = *(v404 + 48);
        v792 = *(v404 + 64);
        v503 = v747;
        v504 = v737;
        swift_beginAccess();
        v505 = swift_isUniquelyReferenced_nonNull_native();
        v760 = *&v503[v504];
        *&v503[v504] = 0x8000000000000000;
        sub_100445084(v501 + 1, &v789, v505);
        *&v503[v504] = v760;
        swift_endAccess();
        if (v732)
        {
          sub_100467AB8(*(v404 + 88), *(v404 + 96));
        }

        else
        {
          sub_100467940(v404);
        }

        v27 = 0.0;
        v727 = *&v45;
        if (qword_100614E70 != -1)
        {
          swift_once();
        }

        v591 = sub_1004B80B4();
        sub_100007084(v591, static Logger.lyrics);
        v592 = swift_allocObject();
        v593 = v747;
        *(v592 + 16) = v747;
        v594 = v593;
        v595 = sub_1004B8094();
        v596 = sub_1004BC9A4();
        v597 = swift_allocObject();
        *(v597 + 16) = 34;
        v598 = swift_allocObject();
        *(v598 + 16) = 8;
        v599 = swift_allocObject();
        *(v599 + 16) = sub_100470F88;
        *(v599 + 24) = v592;
        v600 = swift_allocObject();
        *(v600 + 16) = sub_100470F74;
        *(v600 + 24) = v599;
        sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
        v601 = swift_allocObject();
        *(v601 + 16) = xmmword_1004C5070;
        *(v601 + 32) = sub_100471004;
        *(v601 + 40) = v597;
        *(v601 + 48) = sub_100471004;
        *(v601 + 56) = v598;
        *(v601 + 64) = sub_100470E54;
        *(v601 + 72) = v600;
        swift_setDeallocating();
        sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        if (os_log_type_enabled(v595, v596))
        {
          v602 = swift_slowAlloc();
          v603 = swift_slowAlloc();
          v757 = v603;
          *v602 = 136446210;
          v604 = v726[1];
          v758 = *v726;
          v759 = v604;
          v760 = 10519010;
          v761 = 0xA300000000000000;
          v755 = 44226;
          v756 = 0xA200000000000000;
          LODWORD(v752) = v596;
          v758 = sub_1004BD224();
          v759 = v605;
          v606 = String.nonBreakingSpace.unsafeMutableAddressor();
          v607 = v606[1];
          v760 = *v606;
          v761 = v607;
          v755 = 0x3B7073626E26;
          v756 = 0xE600000000000000;
          v608 = sub_1004BD224();
          v610 = v609;

          v758 = v608;
          v759 = v610;
          v760 = 10;
          v761 = 0xE100000000000000;
          v755 = 28252;
          v756 = 0xE200000000000000;
          v611 = sub_1004BD224();
          v613 = v612;

          v614 = sub_100441BE8(v611, v613, &v757);

          *(v602 + 4) = v614;
          _os_log_impl(&_mh_execute_header, v595, v752, "[Transliteration] Word is incomplete in this line, adding line break. New text: %{public}s", v602, 0xCu);
          sub_100004C6C(v603);
        }

        else
        {
        }

        goto LABEL_411;
      }

      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v405 = sub_1004B80B4();
      sub_100007084(v405, static Logger.lyrics);
      v406 = v725;

      v407 = v731._object;

      v408 = sub_1004B8094();
      v409 = sub_1004BC9A4();

      if (os_log_type_enabled(v408, v409))
      {
        v410 = swift_slowAlloc();
        v411 = swift_slowAlloc();
        v727 = *&v45;
        *&v789 = v411;
        *v410 = v706;
        *(v410 + 4) = sub_100441BE8(countAndFlagsBits, v406, &v789);
        *(v410 + 12) = 2082;
        *(v410 + 14) = sub_100441BE8(v731._countAndFlagsBits, v407, &v789);
        v412 = v409;
        v413 = v408;
        v414 = "[Transliteration] Word is incomplete in this line, but the current view size will not accomodate all of it. Not doing any adjustments. Line: %{public}s transliterated line: %{public}s";
        goto LABEL_357;
      }
    }

    v37 = v743;
LABEL_359:
    v40 = location;
    v420 = CGRectGetWidth(*(location + 176));
    v421 = v724;
    if (a10 < v420 + *(v724 + 336))
    {
      v422 = CGRectGetWidth(*(v40 + 176)) - a10 + *(v421 + 336);
      v321 = v321 + v422;
      sub_1004774B4(*&v394[22].isa, *&v394[23].isa, v422 + *&v394[24].isa, *&v394[25].isa);
    }

    v41 = v738;
    v360 = v742;
LABEL_362:
    v423 = CGRectGetMaxX(*&v394[22].isa);
    *&v789 = v423;
    v758 = *&a9;
    if ((sub_1004B70C4() & 1) != 0 || v423 <= a9)
    {

      goto LABEL_289;
    }

    if (v741 > 1)
    {
      v40 = v41;
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v424 = sub_1004B80B4();
      sub_100007084(v424, static Logger.lyrics);
      v425 = v747;
      v426 = sub_1004B8094();
      v427 = sub_1004BC9A4();

      v716 = v427;
      if (os_log_type_enabled(v426, v427))
      {
        v428 = swift_slowAlloc();
        v755 = swift_slowAlloc();
        *v428 = v707;
        v429 = sub_1004BCE04();
        v40 = v426;
        v431 = sub_100441BE8(v429, v430, &v755);

        *(v428 + 4) = v431;
        *(v428 + 12) = 2082;
        v432 = v726[1];
        *&v789 = *v726;
        *(&v789 + 1) = v432;
        v758 = 10519010;
        v759 = 0xA300000000000000;
        v760 = 44226;
        v761 = 0xA200000000000000;
        v727 = *&v45;
        *&v741 = v258;
        *&v789 = sub_1004BD224();
        *(&v789 + 1) = v433;
        v434 = String.nonBreakingSpace.unsafeMutableAddressor();
        v435 = v434[1];
        v758 = *v434;
        v759 = v435;
        v760 = 0x3B7073626E26;
        v761 = 0xE600000000000000;
        v436 = sub_1004BD224();
        v438 = v437;

        *&v789 = v436;
        *(&v789 + 1) = v438;
        v758 = 10;
        v759 = 0xE100000000000000;
        v760 = 28252;
        v761 = 0xE200000000000000;
        v258 = *&v741;
        v37 = v743;
        v439 = sub_1004BD224();
        v441 = v440;

        v442 = sub_100441BE8(v439, v441, &v755);

        *(v428 + 14) = v442;
        _os_log_impl(&_mh_execute_header, v40, v716, "[Transliteration][Width check] Tried too many times to add a line break before the same word. This layout might be impossible, usually when the width is too narrow. Give up on adjustments. Size: %s Text: %{public}s", v428, 0x16u);
        swift_arrayDestroy();

        v360 = v742;
        v41 = v738;
      }

      else
      {

        v41 = v40;
      }

      v394 = v751;
LABEL_289:
      v45 = v394;
      if (v359 == v736)
      {
        v40 = v41;
        *&v741 = v258;

        v443 = location;
        v444 = CGRectGetMaxX(*(location + 176));
        v41 = v721;
        if (v702 < v444)
        {
          v702 = CGRectGetMaxX(*(v443 + 176));
        }

        v258 = *&v394;
        v27 = 0.0;
        v45 = v704;
        object = v724;
        goto LABEL_251;
      }

      continue;
    }

    break;
  }

  if (v741 == 1)
  {
    v727 = *&v45;
    v462 = v726;
    v463 = v726[1];
    *&v789 = *v726;
    *(&v789 + 1) = v463;

    v464 = String.nonBreakingSpace.unsafeMutableAddressor();
    v465 = v464[1];
    v758 = *v464;
    v759 = v465;
    v760 = 0;
    v761 = 0xE000000000000000;
    v466 = sub_1004BD224();
    v467 = v41;
    v469 = v468;

    *v462 = v466;
    v462[1] = v469;

    v470 = *&v467[4].isa;
    v789 = *&v467[2].isa;
    v790 = v470;
    v791 = *&v467[6].isa;
    v792 = v467[8].isa;
    v471 = v747;
    v472 = v737;
    swift_beginAccess();
    v473 = swift_isUniquelyReferenced_nonNull_native();
    v760 = *&v471[v472];
    *&v471[v472] = 0x8000000000000000;
    sub_100445084(2, &v789, v473);
    *&v471[v472] = v760;
    swift_endAccess();
    v27 = 0.0;
    if (qword_100614E70 == -1)
    {
LABEL_406:
      v474 = sub_1004B80B4();
      sub_100007084(v474, static Logger.lyrics);
      v475 = swift_allocObject();
      *(v475 + 16) = v471;
      v476 = v471;
      v477 = sub_1004B8094();
      v478 = sub_1004BC9A4();
      v479 = swift_allocObject();
      *(v479 + 16) = 34;
      v480 = swift_allocObject();
      *(v480 + 16) = 8;
      v481 = swift_allocObject();
      *(v481 + 16) = sub_100470F88;
      *(v481 + 24) = v475;
      v482 = swift_allocObject();
      *(v482 + 16) = sub_10046FE14;
      *(v482 + 24) = v481;
      sub_100003ABC(&qword_1006150C8, &qword_1004EA8C0);
      v483 = swift_allocObject();
      *(v483 + 16) = xmmword_1004C5070;
      *(v483 + 32) = sub_10046FDC4;
      *(v483 + 40) = v479;
      *(v483 + 48) = sub_100471004;
      *(v483 + 56) = v480;
      *(v483 + 64) = sub_10046FE1C;
      *(v483 + 72) = v482;
      swift_setDeallocating();
      sub_100003ABC(&qword_1006156D0, &qword_1004EB2E0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      if (os_log_type_enabled(v477, v478))
      {
        v484 = swift_slowAlloc();
        v485 = swift_slowAlloc();
        v757 = v485;
        *v484 = 136446210;
        v486 = v726[1];
        v758 = *v726;
        v759 = v486;
        v760 = 10519010;
        v761 = 0xA300000000000000;
        v755 = 44226;
        v756 = 0xA200000000000000;
        LODWORD(v752) = v478;
        v758 = sub_1004BD224();
        v759 = v487;
        v488 = v464[1];
        v760 = *v464;
        v761 = v488;
        v755 = 0x3B7073626E26;
        v756 = 0xE600000000000000;
        v489 = sub_1004BD224();
        v491 = v490;

        v758 = v489;
        v759 = v491;
        v760 = 10;
        v761 = 0xE100000000000000;
        v755 = 28252;
        v756 = 0xE200000000000000;
        v492 = sub_1004BD224();
        v494 = v493;

        v495 = sub_100441BE8(v492, v494, &v757);

        *(v484 + 4) = v495;
        _os_log_impl(&_mh_execute_header, v477, v752, "[Transliteration][Width check] Trying to insert a line break for the second time before the same word. A nonbreaking space could be making this layout impossible, resetting string and trying again. New text: %{public}s", v484, 0xCu);
        sub_100004C6C(v485);
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

  v496 = *&v41[4].isa;
  v789 = *&v41[2].isa;
  v790 = v496;
  v791 = *&v41[6].isa;
  v792 = v41[8].isa;
  v497 = v747;
  v498 = v737;
  v499 = v741;
  swift_beginAccess();
  v500 = swift_isUniquelyReferenced_nonNull_native();
  v760 = *&v497[v498];
  *&v497[v498] = 0x8000000000000000;
  sub_100445084(v499 + 1, &v789, v500);
  *&v497[v498] = v760;
  swift_endAccess();
  v27 = 0.0;
  if (v732)
  {
    sub_100467AB8(v41[11].isa, v41[12].isa);
  }

  else
  {
    sub_100467940(v41);
  }

  v571 = location;
  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v572 = sub_1004B80B4();
  sub_100007084(v572, static Logger.lyrics);
  v573 = v747;

  v574 = sub_1004B8094();
  v575 = sub_1004BC9A4();

  if (os_log_type_enabled(v574, v575))
  {
    v576 = swift_slowAlloc();
    v752 = swift_slowAlloc();
    location = v571;
    v757 = v752;
    *v576 = v707;
    v577 = v571[9];
    v578 = v571[10];

    v579 = sub_100441BE8(v577, v578, &v757);

    *(v576 + 4) = v579;
    *(v576 + 12) = 2082;
    v580 = v726[1];
    v758 = *v726;
    v759 = v580;
    v760 = 10519010;
    v761 = 0xA300000000000000;
    v755 = 44226;
    v756 = 0xA200000000000000;
    v727 = *&v45;
    v758 = sub_1004BD224();
    v759 = v581;
    v582 = String.nonBreakingSpace.unsafeMutableAddressor();
    v583 = v582[1];
    v760 = *v582;
    v761 = v583;
    v755 = 0x3B7073626E26;
    v756 = 0xE600000000000000;
    v584 = sub_1004BD224();
    v586 = v585;

    v758 = v584;
    v759 = v586;
    v760 = 10;
    v761 = 0xE100000000000000;
    v755 = 28252;
    v756 = 0xE200000000000000;
    v587 = sub_1004BD224();
    v589 = v588;

    v590 = sub_100441BE8(v587, v589, &v757);

    *(v576 + 14) = v590;
    _os_log_impl(&_mh_execute_header, v574, v575, "[Transliteration] Word %s crossed view bounds after adjustment, adding line break. New text: %{public}s", v576, 0x16u);
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
  a8 = v729;
LABEL_179:
  *a8 = v108;
  *(a8 + 1) = v111;
  *(a8 + 2) = v109;
  a8[3] = v27;
  *(a8 + 32) = v110;
}

uint64_t sub_1004677D0(uint64_t a1)
{
  sub_10044CAE0();
  sub_1004BD224();
  String.nonBreakingSpace.unsafeMutableAddressor();
  sub_1004BD224();

  v1 = sub_1004BD224();

  return v1;
}

void sub_100467940(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v4 = objc_allocWithZone(NSMutableString);

  v5 = sub_1004BBE24();

  v6 = [v4 initWithString:v5];

  v7 = *(a1 + 88);
  v8 = v6;
  v9 = [v8 substringWithRange:{v7, 1}];
  v10 = sub_1004BBE64();
  v12 = v11;

  if (v10 == 32 && v12 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = sub_1004BD9C4();

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
  v16 = sub_1004BBE24();
  [v8 insertString:v16 atIndex:v7];

  v17 = sub_1004BBE64();
  v19 = v18;

  *v3 = v17;
  v3[1] = v19;
}

void sub_100467AB8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
  v6 = objc_allocWithZone(NSMutableString);

  v7 = sub_1004BBE24();

  v8 = [v6 initWithString:v7];

  v9 = a1 + a2;
  if (__OFADD__(a1, a2))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = v8;
  v11 = [v10 substringWithRange:{v9, 1}];
  v12 = sub_1004BBE64();
  v14 = v13;

  if (v12 == 32 && v14 == 0xE100000000000000)
  {
  }

  else
  {
    v16 = sub_1004BD9C4();

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
  v18 = sub_1004BBE24();
  [v10 insertString:v18 atIndex:v9];

  v19 = sub_1004BBE64();
  v21 = v20;

  *v5 = v19;
  v5[1] = v21;
}

id sub_100467C74()
{
  v2.receiver = v0;
  v2.super_class = _s14descr1005A2689C8TextViewCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s14descr1005A2689C8TextViewCMa(uint64_t a1)
{
  result = qword_100615AF8;
  if (!qword_100615AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100467EB4(uint64_t a1)
{
  sub_100467FD8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_100467FD8(uint64_t a1)
{
  if (!qword_1006151B0)
  {
    sub_1004B6E44();
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006151B0);
    }
  }
}

__n128 sub_100468030(uint64_t a1, uint64_t a2)
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

uint64_t sub_10046805C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100468074(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1004680C8(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10046812C(uint64_t result, int a2)
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

unint64_t sub_100468178()
{
  result = qword_100615B08;
  if (!qword_100615B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615B08);
  }

  return result;
}

void *sub_1004681CC(uint64_t a1, uint64_t a2)
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

  sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
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

void sub_100468254(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void))
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
      sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
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

void *sub_100468340(unint64_t a1)
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
    v2 = sub_1004681CC(v1, 0);

    sub_1004BD454();
    v4 = v3;

    if (v4 == v1)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v1 = sub_1004BD6A4();
    if (!v1)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v2;
}

void sub_1004683DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      sub_100003ABC(&qword_100615680, &qword_1004EB290);
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

uint64_t sub_1004684CC(uint64_t a1)
{
  v2 = v1[1];
  v3 = *(v2 + 16);
  if (*v1)
  {
    v4 = a1;
    sub_10044EC24();
    if (v5)
    {
      a1 = v4;
LABEL_9:
      sub_100446C0C(a1, v3);
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

void sub_100468560(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v40 = a2 + 64;
    v38 = (sub_1004BD2F4() + 1) & ~v5;
    v39 = v7;
    do
    {
      v45 = v3;
      v43 = 56 * v6;
      v8 = *(v2 + 48) + 56 * v6;
      v9 = *v8;
      v10 = *(v8 + 8);
      v11 = *(v8 + 32);
      v42 = *(v8 + 40);
      v44 = *(v8 + 48);
      sub_1004BDBA4();
      if (v9 == 0.0)
      {
        v12 = 0.0;
      }

      else
      {
        v12 = v9;
      }

      sub_1004BDBE4(*&v12);
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_1004BDBE4(*&v13);

      sub_1004BBF84();
      sub_1004BDBB4(*(v11 + 16));
      v14 = *(v11 + 16);
      if (v14)
      {
        v15 = (v11 + 80);
        do
        {
          v16 = *(v15 - 6);
          v17 = *(v15 - 5);
          v19 = *(v15 - 2);
          v18 = *(v15 - 1);
          v21 = *v15;
          v15 += 7;
          v20 = *&v21;
          if (v16 == 0.0)
          {
            v16 = 0.0;
          }

          sub_1004BDBE4(*&v16);
          if (v17 == 0.0)
          {
            v22 = 0.0;
          }

          else
          {
            v22 = v17;
          }

          sub_1004BDBE4(*&v22);

          sub_1004BBF84();
          sub_1004BDBB4(v19);
          sub_1004BDBB4(v18);
          sub_1004BDBB4(v20);

          --v14;
        }

        while (v14);
      }

      if (v44)
      {
        sub_1004BDBB4(0);
      }

      else
      {
        sub_1004BDBB4(1uLL);
        if ((v42 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v23 = v42;
        }

        else
        {
          v23 = 0;
        }

        sub_1004BDBE4(v23);
      }

      v2 = a2;
      v3 = v45;
      v24 = sub_1004BDBF4();

      v25 = v24 & v39;
      if (v45 >= v38)
      {
        v4 = v40;
        if (v25 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v40;
        if (v25 >= v38)
        {
          goto LABEL_30;
        }
      }

      if (v45 >= v25)
      {
LABEL_30:
        v26 = *(a2 + 48);
        v27 = v26 + 56 * v45;
        v28 = (v26 + v43);
        if (56 * v45 < v43 || v27 >= v28 + 56 || v45 != v6)
        {
          v29 = *v28;
          v30 = v28[1];
          v31 = v28[2];
          *(v27 + 48) = *(v28 + 6);
          *(v27 + 16) = v30;
          *(v27 + 32) = v31;
          *v27 = v29;
        }

        v32 = *(a2 + 56);
        v33 = (v32 + 8 * v45);
        v34 = (v32 + 8 * v6);
        if (v45 != v6 || v33 >= v34 + 1)
        {
          *v33 = *v34;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v39;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v35 = *(v2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v37;
    ++*(v2 + 36);
  }
}

uint64_t sub_10046889C(double *a1, uint64_t a2, uint64_t a3)
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
        if (v12 || (result = sub_1004BD9C4(), v5 = a1, v4 = a2, v3 = a3, (result & 1) != 0))
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
                  result = sub_1004BD9C4();
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

void sub_100468A7C(__n128 a1)
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
    v6 = sub_1004B7ED4();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = sub_100468C6C(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

void sub_100468B34(void *(*a1)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a2)
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
    v8 = sub_1004B7ED4();
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v7 = sub_100468BE4(v6, v10, 0, v5, a1, v9);
  }

  else
  {
    v7 = 0;
  }

  *v2 = v7;
}

uint64_t sub_100468BE4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, void *(*a5)(uint64_t *__return_ptr, uint64_t, void, uint64_t, uint64_t), __n128 a6)
{
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2;
  }

  v10 = sub_1004B7ED4();
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
    v12 = sub_1004B7EE4();
    sub_100468D3C(a1, v12 + 16, v12 + 32, a5);
    return v12;
  }

  return result;
}

uint64_t sub_100468C6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = sub_1004B7ED4();
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
    v10 = sub_1004B7EE4();
    sub_100468CEC(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

Swift::Int sub_100468D94(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1004BDBA4();

        sub_1004BBF84();
        v7 = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1004B7E44();

        if (v8)
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        v7 = sub_1004B7E84();
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

Swift::Int sub_100468EC4(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
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
        sub_1004BDBA4();
        if (v6 == 0.0)
        {
          v9 = 0.0;
        }

        else
        {
          v9 = v6;
        }

        sub_1004BDBE4(*&v9);
        if (v7 == 0.0)
        {
          v10 = 0.0;
        }

        else
        {
          v10 = v7;
        }

        sub_1004BDBE4(*&v10);

        sub_1004BBF84();
        v11 = *(v8 + 16);
        sub_1004BDBB4(v11);
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

            sub_1004BDBE4(*&v13);
            if (v14 == 0.0)
            {
              v19 = 0.0;
            }

            else
            {
              v19 = v14;
            }

            sub_1004BDBE4(*&v19);

            sub_1004BBF84();
            sub_1004BDBB4(v15);
            sub_1004BDBB4(v16);
            sub_1004BDBB4(v17);

            --v11;
          }

          while (v11);
        }

        if (v26)
        {
          sub_1004BDBB4(0);
        }

        else
        {
          sub_1004BDBB4(1uLL);
          v20 = (v25 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v25 : 0;
          sub_1004BDBE4(v20);
        }

        result = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v21 = sub_1004B7E44();

        if (v21)
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        result = sub_1004B7E84();
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

Swift::Int sub_100469148(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
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
        sub_1004BDBA4();
        sub_1004BDBB4(v8);
        result = sub_1004BDBF4();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        result = sub_1004B7E84();
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

uint64_t sub_100469250(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003ABC(&qword_100615710, &qword_1004EB320);
  result = sub_1004BD3E4();
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
    result = sub_1004BCF94(v16);
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

uint64_t sub_100469444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  sub_100003ABC(&qword_100615A20, &unk_1004EB5B0);
  result = sub_1004BD3E4();
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
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_1004BDBA4();
    sub_1004BDBB4(v16);
    result = sub_1004BDBF4();
    v17 = -1 << v9[32];
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 6) + 8 * v20) = v16;
    ++*(v9 + 2);
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

uint64_t sub_100469654(unint64_t *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, uint64_t, __n128), void (*a7)(void *, uint64_t, uint64_t), __n128 a8)
{
  v13 = a2 >> 62;
  if (a2 >> 62)
  {
    v23 = a3;
    v24 = a4;
    sub_1004BD6A4();
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

  v15 = sub_1004B7ED4();
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
      if (sub_1004BD6A4() >= 2)
      {
        sub_10046E1EC(a2, a7);
        goto LABEL_21;
      }

      v18 = sub_1004BD6A4();
    }

    else
    {
      v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v18 >= 2)
      {
        sub_100469920((a2 & 0xFFFFFFFFFFFFFF8) + 32, v18, a7);
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

  v20 = sub_1004B7EE4();
  sub_100469D98(&v25, a2, (v20 + 16), v20 + 32, a6);
  result = v20;
  v22 = v25;
LABEL_22:
  *a1 = v22;
  return result;
}

uint64_t sub_1004697A0(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, __n128 a6)
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

  v11 = sub_1004B7ED4();
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
    v15 = sub_1004B7EE4();
    sub_100469F70(a2 + 32, v9, (v15 + 16), v15 + 32);
    *a1 = v16;
    return v15;
  }

  else if (v9 >= 2)
  {
    v17 = sub_100469A34((a2 + 32), v9);
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

void *sub_100469884(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1004BD6A4();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1004681CC(v5, 0);
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

void sub_100469920(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v10 = sub_10046DE30(_swiftEmptyArrayStorage, a3);
  sub_1004BD524();
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
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();

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

char *sub_100469A34(__int128 *a1, uint64_t a2)
{
  v2 = a2;
  v16 = _swiftEmptyArrayStorage;
  result = sub_1004421A0(0, a2 & ~(a2 >> 63), 0);
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
      if (sub_100469BD4(&v17, v5))
      {
        break;
      }

      v21 = v18;
      v22 = v19;
      sub_100013D04(&v21, v15);
      sub_10000F778(&v22, v15, &qword_100615690, &unk_1004EB2A0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1004421A0(0, v5[2] + 1, 1);
        v5 = v16;
      }

      v10 = v5[2];
      v9 = v5[3];
      if (v10 >= v9 >> 1)
      {
        sub_1004421A0((v9 > 1), v10 + 1, 1);
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

uint64_t sub_100469BD4(double *a1, uint64_t a2)
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
      result = sub_1004BD9C4();
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
      result = sub_1004BD9C4();
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

uint64_t sub_100469D98(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  if (a2 < 0 || (a2 & 0x4000000000000000) != 0)
  {
    v6 = sub_10046FE24(a2, a5);
  }

  else
  {
    v6 = sub_100469E08((a2 & 0xFFFFFFFFFFFFFF8) + 32, *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10), a3, a4);
  }

  *a1 = v7;
  return v6 & 1;
}

Swift::Int sub_100469E08(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
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
      sub_1004BDBA4();
      sub_1004BDBB4(v9);
      result = sub_1004BDBF4();
      if (__OFSUB__(1 << *a3, 1))
      {
        goto LABEL_15;
      }

      sub_1004B7E44();
      while (1)
      {
        v10 = sub_1004B7E74();
        if (v11)
        {
          break;
        }

        if (*(v6 + 8 * v10) == *(v6 + 8 * i))
        {
          return 0;
        }

        sub_1004B7E94();
      }

      result = sub_1004B7E84();
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

Swift::Int sub_100469F70(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
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
    sub_1004BDBA4();
    sub_100013D04(v60, v46);
    sub_10000F778(&v61, v46, &qword_100615690, &unk_1004EB2A0);
    Lyrics.Word.hash(into:)(v47);
    result = sub_1004BDBF4();
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
    v12 = sub_1004B7E44();
    v14 = v13;
    v16 = v15;
    sub_1001B4A3C(v60);
    sub_100007214(&v61, &qword_100615690, &unk_1004EB2A0);
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
      v17 = sub_1004B7E74();
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
        if (v25 || (result = sub_1004BD9C4(), (result & 1) != 0))
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
                  result = sub_1004BD9C4();
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
      sub_1004B7E94();
      v52 = v48;
      v53 = v49;
      v54 = v50;
      v55 = v51;
    }

    result = sub_1004B7E84();
    v5 = v41;
    v4 = a3;
    if (v41 != a2)
    {
      continue;
    }

    return 1;
  }
}

void sub_10046A2AC(uint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1004BD334())
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
    sub_1004BD324();
    _s4WordCMa(0, v3);
    sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
    sub_1004BC6A4();
    a1 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(a1 + 32);
    v4 = a1 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(a1 + 56);

    v6 = 0;
  }

  if (a1 < 0)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v11 = v6;
    v12 = v7;
    v13 = v6;
    if (!v7)
    {
      break;
    }

LABEL_16:
    v14 = (v12 - 1) & v12;
    v15 = *(*(a1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

    if (!v15)
    {
LABEL_22:
      sub_1001A43F8(a1);
      return;
    }

    while (1)
    {
      sub_100453C70(v15);

      v6 = v13;
      v7 = v14;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_18:
      if (sub_1004BD354())
      {
        _s4WordCMa(0, v16);
        swift_dynamicCast();
        v15 = v17;
        v13 = v6;
        v14 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v5 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v4 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
}

void *sub_10046A4E4(uint64_t a1, unint64_t a2)
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
    sub_1004BD324();
    _s4WordCMa(0, v5);
    sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
    sub_1004BC6A4();
    v4 = v64;
    v7 = v65;
    v8 = v66;
    v9 = v67;
    v10 = v68;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v10 = v14 & *(a1 + 56);

    v9 = 0;
  }

  v59 = v4;
  v60 = v7;
  v61 = v8;
  v62 = v9;
  v55 = v8;
  v15 = (v8 + 64) >> 6;
  v16 = (v3 + 56);
  v63 = v10;
  v56 = v3;
  while (1)
  {
    if (v4 < 0)
    {
      v22 = sub_1004BD354();
      if (!v22)
      {
        goto LABEL_65;
      }

      v57 = v22;
      _s4WordCMa(0, v23);
      swift_dynamicCast();
      v2 = v58;
      v20 = v9;
      v3 = v10;
      if (!v58)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v17 = v10;
      v18 = v9;
      if (v10)
      {
LABEL_20:
        v3 = (v17 - 1) & v17;
        v2 = *(*(v4 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

        v20 = v18;
      }

      else
      {
        if (v15 <= (v9 + 1))
        {
          v19 = v9 + 1;
        }

        else
        {
          v19 = v15;
        }

        v20 = v19 - 1;
        v21 = v9;
        while (1)
        {
          v18 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            goto LABEL_67;
          }

          if (v18 >= v15)
          {
            break;
          }

          v17 = *(v7 + 8 * v18);
          ++v21;
          if (v17)
          {
            goto LABEL_20;
          }
        }

        v2 = 0;
        v3 = 0;
      }

      v59 = v4;
      v60 = v7;
      v61 = v55;
      v62 = v20;
      v63 = v3;
      if (!v2)
      {
LABEL_65:
        sub_1001A43F8(v4);
        return v56;
      }
    }

    sub_1004BDBA4();
    sub_1004BDBB4(v2);
    v24 = sub_1004BDBF4();
    v25 = -1 << *(v56 + 32);
    v10 = v24 & ~v25;
    v9 = v10 >> 6;
    v18 = 1 << v10;
    if (((1 << v10) & v16[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_10:

    v9 = v20;
    v10 = v3;
  }

  v26 = *(v56 + 48);
  if (*(v26 + 8 * v10) != v2)
  {
    v27 = ~v25;
    do
    {
      v10 = (v10 + 1) & v27;
      v9 = v10 >> 6;
      v18 = 1 << v10;
      if (((1 << v10) & v16[v10 >> 6]) == 0)
      {
        goto LABEL_10;
      }
    }

    while (*(v26 + 8 * v10) != v2);
  }

  v2 = v56;
  v28 = *(v56 + 32);
  v51 = ((1 << v28) + 63) >> 6;
  v6 = 8 * v51;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v52 = &v50;
    __chkstk_darwin();
    v10 = &v50 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v10, v16, v29);
    v30 = *(v10 + 8 * v9) & ~v18;
    v31 = *(v2 + 16);
    v53 = v10;
    *(v10 + 8 * v9) = v30;
    v32 = v31 - 1;
    v2 = 1;
LABEL_34:
    v54 = v32;
    while (1)
    {
      if (v4 < 0)
      {
        v33 = sub_1004BD354();
        if (!v33)
        {
          goto LABEL_62;
        }

        v57 = v33;
        _s4WordCMa(0, v34);
        swift_dynamicCast();
        v9 = v58;
        if (!v58)
        {
          goto LABEL_62;
        }

        goto LABEL_51;
      }

      if (!v3)
      {
        break;
      }

      v18 = v20;
LABEL_49:
      v37 = __clz(__rbit64(v3));
      v3 &= v3 - 1;
      v9 = *(*(v4 + 48) + ((v18 << 9) | (8 * v37)));

      v36 = v18;
LABEL_50:
      v59 = v4;
      v60 = v7;
      v61 = v55;
      v62 = v36;
      v20 = v36;
      v63 = v3;
      if (!v9)
      {
LABEL_62:
        v11 = sub_100469444(v53, v51, v54, v56);
        goto LABEL_63;
      }

LABEL_51:
      v38 = v56;
      sub_1004BDBA4();
      sub_1004BDBB4(v9);
      v39 = sub_1004BDBF4();
      v40 = -1 << *(v38 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v10 = 1 << v41;
      if (((1 << v41) & v16[v41 >> 6]) == 0)
      {
        goto LABEL_35;
      }

      v43 = *(v56 + 48);
      if (*(v43 + 8 * v41) != v9)
      {
        v44 = ~v40;
        while (1)
        {
          v41 = (v41 + 1) & v44;
          v42 = v41 >> 6;
          v10 = 1 << v41;
          if (((1 << v41) & v16[v41 >> 6]) == 0)
          {
            break;
          }

          if (*(v43 + 8 * v41) == v9)
          {
            goto LABEL_56;
          }
        }

LABEL_35:

        continue;
      }

LABEL_56:

      v45 = v53[v42];
      v53[v42] = v45 & ~v10;
      if ((v45 & v10) != 0)
      {
        v32 = v54 - 1;
        if (__OFSUB__(v54, 1))
        {
          __break(1u);
        }

        if (v54 == 1)
        {

          v11 = &_swiftEmptySetSingleton;
          goto LABEL_63;
        }

        goto LABEL_34;
      }
    }

    if (v15 <= (v20 + 1))
    {
      v35 = v20 + 1;
    }

    else
    {
      v35 = v15;
    }

    v36 = v35 - 1;
    while (1)
    {
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        v9 = 0;
        v3 = 0;
        goto LABEL_50;
      }

      v3 = *(v7 + 8 * v18);
      ++v20;
      if (v3)
      {
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v54 = v6;

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v47 = v54;
  v48 = swift_slowAlloc();
  memcpy(v48, v16, v47);
  sub_10046AB8C(v48, v51, v2, v10, &v59);
  v11 = v49;

LABEL_63:
  sub_1001A43F8(v59);
  return v11;
}

void sub_10046AB8C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v8 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v9 = v8 - 1;
  v10 = a3 + 56;
  while (2)
  {
    v29 = v9;
    do
    {
      while (1)
      {
        if ((*a5 & 0x8000000000000000) != 0)
        {
          if (!sub_1004BD354())
          {
            goto LABEL_29;
          }

          _s4WordCMa(0, v14);
          swift_dynamicCast();
          v15 = v30;
          if (!v30)
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
            v16 = (a5[2] + 64) >> 6;
            if (v16 <= v11 + 1)
            {
              v17 = v11 + 1;
            }

            else
            {
              v17 = (a5[2] + 64) >> 6;
            }

            v18 = v17 - 1;
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v16)
              {
                a5[3] = v18;
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
          v19 = (v12 - 1) & v12;
          v15 = *(*(*a5 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));

          a5[3] = v13;
          a5[4] = v19;
          if (!v15)
          {
LABEL_29:

            sub_100469444(a1, a2, v29, a3);
            return;
          }
        }

        sub_1004BDBA4();
        sub_1004BDBB4(v15);
        v20 = sub_1004BDBF4();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v10 + 8 * (v22 >> 6))) == 0)
        {
          goto LABEL_3;
        }

        v25 = *(a3 + 48);
        if (*(v25 + 8 * v22) == v15)
        {
          break;
        }

        v26 = ~v21;
        while (1)
        {
          v22 = (v22 + 1) & v26;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v10 + 8 * (v22 >> 6))) == 0)
          {
            break;
          }

          if (*(v25 + 8 * v22) == v15)
          {
            goto LABEL_23;
          }
        }

LABEL_3:
      }

LABEL_23:

      v27 = a1[v23];
      a1[v23] = v27 & ~v24;
    }

    while ((v27 & v24) == 0);
    v9 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_31:
      __break(1u);
      return;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

void sub_10046ADDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    __chkstk_darwin();
    v9 = 0;
    v10 = 0;
    __chkstk_darwin();
    sub_1004B7EF4();
  }

  else
  {
    if (!(_swiftEmptyArrayStorage >> 62) || (v4 = sub_1004BD6A4()) == 0 || (v5 = v4, v6 = sub_1004681CC(v4, 0), sub_10046DECC((v6 + 4), v5, _swiftEmptyArrayStorage), v8 = v7, , v8 == v5))
    {

      return;
    }

    __break(1u);
  }

  __break(1u);

  sub_1003013BC(v9, v10);
  __break(1u);
}

void sub_10046AF90(uint64_t a1, uint64_t *a2, void (*a3)(__int128 *__return_ptr, uint64_t))
{
  a3(&v7, a1);
  if (!v3)
  {
    v5 = *a2;
    v6 = a2[1];
    *a2 = v7;
    sub_1003013BC(v5, v6);
  }
}

void sub_10046AFE4(int8x8_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int8x8_t *a6, uint64_t a7)
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
    sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
    sub_10046B414(a5, 0);

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
      v15 = sub_1004B7EA4();
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
          sub_10046B414(a3 + a5, 0);
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
    v32 = sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
    sub_10046B414(v17, 0);
    v7 = 0;
    v34 = v32;
LABEL_20:
    v18 = sub_1004B7F14();
    if (v19)
    {
LABEL_47:

      return;
    }

    while (1)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v18 >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      v26 = *(a7 + 32 + 8 * v18);
      swift_retain_n();
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v27 = v34;
      v28 = v34[2];
      if (!v7)
      {
        break;
      }

      swift_beginAccess();
      if (sub_1004B7EA4() >= v28)
      {
        if ((swift_isUniquelyReferenced_native() & 1) == 0)
        {
          v31 = sub_1004B7EC4();

          v7 = v31;
          if (!v31)
          {
            goto LABEL_55;
          }
        }

        sub_1004BDBA4();
        sub_1004BDBB4(v26);
        sub_1004BDBF4();
        if (__OFSUB__(1 << *(v7 + 16), 1))
        {
          goto LABEL_52;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            sub_1004B7E94();
          }
        }

        sub_1004B7E84();
      }

      else
      {
        v20 = *(v7 + 24) & 0x3FLL;
        if (v28 > 0xF || v20)
        {
          goto LABEL_23;
        }

        v7 = 0;
      }

LABEL_27:
      v18 = sub_1004B7F14();
      if (v25)
      {
        goto LABEL_47;
      }
    }

    while (v28 <= 0xF)
    {

      v29 = sub_1004B7F14();
      if (v30)
      {
        goto LABEL_47;
      }

      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_50;
      }

      if (v29 >= *(a7 + 16))
      {
        goto LABEL_51;
      }

      swift_retain_n();
      sub_1004BD4F4();
      sub_1004BD534();
      sub_1004BD544();
      sub_1004BD504();
      v27 = v34;
      v28 = v34[2];
    }

    v20 = 0;
LABEL_23:
    v21 = sub_1004B7ED4();
    if (v20 <= v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = v20;
    }

    v24 = sub_100468C6C(v27, v23, 0, v20, v22);

    v7 = v24;
    goto LABEL_27;
  }

LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_10046B414(uint64_t a1, char a2)
{
  if (a1 < 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v3 = v2;
  sub_1004BD524();
  v5 = *v2;
  if (*v2)
  {
    swift_beginAccess();
    v6 = *(v5 + 16) & 0x3FLL;
    v7 = sub_1004B7ED4();
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
    v7 = sub_1004B7ED4();
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
    v15 = sub_100468C6C(v10, v11, 0, v9, v8);

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

  v13 = sub_1004B7ED4();
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

  v16 = sub_1004B7EC4();

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

void sub_10046B5B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
    sub_10046B8A4(a1, &v19);
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

  else if (v7 <= sub_1004B7EB4())
  {
LABEL_16:
    sub_10046B8A4(a1, &v19);
    sub_100468B34(sub_100468EC4, v14);
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

    v12 = sub_1004B7EC4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {

    sub_10046BBE0(a2, (v11 + 16), v11 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {

      sub_10046BF2C(a1, a1 + 1, v6, (v11 + 16), v11 + 32, v13);

      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_10046B75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
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
    sub_10046B96C(a1, a3);
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

  else if (v7 <= sub_1004B7EB4())
  {
LABEL_16:
    sub_10046B96C(a1, a3);
    sub_100468A7C(v15);
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

    v12 = sub_1004B7EC4();

    *v3 = v12;
    v11 = v12;
  }

  if (v11)
  {
    sub_10046BA00(a2, (v11 + 16), v11 + 32, v3);
    v14 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (v14 >= a1)
    {
      sub_10046C644(a1, v14, v6, (v11 + 16), v11 + 32, v13);
      goto LABEL_15;
    }

    __break(1u);
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_10046B8A4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046CA2C(v5);
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

uint64_t sub_10046B96C(unint64_t a1, uint64_t (*a2)(uint64_t))
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
    sub_1004BD504();
    return v10;
  }

  return result;
}

unint64_t sub_10046BA00(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v15 = sub_1004B7E44();
  sub_1004B7E94();
  if (v15)
  {
    v7 = sub_1004B7E54();
    while (1)
    {
      result = sub_1004B7E74();
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
      sub_1004BDBA4();
      sub_1004BDBB4(v11);
      result = sub_1004BDBF4();
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
      sub_1004B7E74();
      v6 = a1;
      sub_1004B7E64();
LABEL_3:
      sub_1004B7E94();
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

  return sub_1004B7E64();
}

void sub_10046BBE0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v34 = sub_1004B7E44();
  sub_1004B7E94();
  if (v34)
  {
    v28 = sub_1004B7E54();
    v29 = a2;
    while (1)
    {
      v6 = sub_1004B7E74();
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
      sub_1004BDBA4();
      if (v10 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v10;
      }

      sub_1004BDBE4(*&v13);
      if (v11 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v11;
      }

      sub_1004BDBE4(*&v14);

      sub_1004BBF84();
      v15 = *(v12 + 16);
      sub_1004BDBB4(v15);
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

          sub_1004BDBE4(*&v17);
          if (v18 == 0.0)
          {
            v23 = 0.0;
          }

          else
          {
            v23 = v18;
          }

          sub_1004BDBE4(*&v23);

          sub_1004BBF84();
          sub_1004BDBB4(v20);
          sub_1004BDBB4(v19);
          sub_1004BDBB4(v21);

          --v15;
        }

        while (v15);
      }

      if (v32)
      {
        sub_1004BDBB4(0);
      }

      else
      {
        sub_1004BDBB4(1uLL);
        if ((v31 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v24 = v31;
        }

        else
        {
          v24 = 0;
        }

        sub_1004BDBE4(v24);
      }

      v25 = sub_1004BDBF4();

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
      sub_1004B7E74();
      v5 = a1;
      sub_1004B7E64();
LABEL_3:
      sub_1004B7E94();
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

  sub_1004B7E64();
}

void sub_10046BF2C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v7 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_98;
  }

  if (v7 >= 1)
  {
    v8 = a4;
    v11 = *(a3 + 16);
    v65 = a2 - a1;
    if (a1 < (v11 - v7) / 2)
    {
      if (sub_1004B7EA4() / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        if (v11 < a1)
        {
LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

        if (a1)
        {
          v12 = 0;
          v59 = a1;
          while (1)
          {
            v13 = a3 + 32 + 56 * v12;
            v14 = *(v13 + 32);
            v60 = *(v13 + 40);
            v62 = *(v13 + 48);
            v16 = *v13;
            v15 = *(v13 + 8);
            sub_1004BDBA4();
            if (v16 == 0.0)
            {
              v17 = 0.0;
            }

            else
            {
              v17 = v16;
            }

            sub_1004BDBE4(*&v17);
            if (v15 == 0.0)
            {
              v18 = 0.0;
            }

            else
            {
              v18 = v15;
            }

            sub_1004BDBE4(*&v18);

            sub_1004BBF84();
            v19 = *(v14 + 16);
            sub_1004BDBB4(v19);
            if (v19)
            {
              v20 = (v14 + 80);
              do
              {
                v21 = *(v20 - 6);
                v22 = *(v20 - 5);
                v24 = *(v20 - 2);
                v23 = *(v20 - 1);
                v26 = *v20;
                v20 += 7;
                v25 = *&v26;
                if (v21 == 0.0)
                {
                  v21 = 0.0;
                }

                sub_1004BDBE4(*&v21);
                if (v22 == 0.0)
                {
                  v27 = 0.0;
                }

                else
                {
                  v27 = v22;
                }

                sub_1004BDBE4(*&v27);

                sub_1004BBF84();
                sub_1004BDBB4(v24);
                sub_1004BDBB4(v23);
                sub_1004BDBB4(v25);

                --v19;
              }

              while (v19);
            }

            if (v62)
            {
              sub_1004BDBB4(0);
            }

            else
            {
              sub_1004BDBB4(1uLL);
              v28 = (v60 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v60 : 0;
              sub_1004BDBE4(v28);
            }

            v8 = a4;
            v7 = v65;
            sub_1004BDBF4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004B7E44())
            {
              while (1)
              {
                v29 = sub_1004B7E74();
                if ((v30 & 1) == 0 && v29 == v12)
                {
                  break;
                }

                sub_1004B7E94();
              }
            }

            if (__OFADD__(v12, v65))
            {
              goto LABEL_95;
            }

            ++v12;
            sub_1004B7E84();

            if (v12 == v59)
            {
              goto LABEL_37;
            }
          }

          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

LABEL_37:

        goto LABEL_38;
      }

      sub_1004B7E44();
      v36 = sub_1004B7E74();
      if ((v37 & 1) != 0 || v36 >= a1)
      {
LABEL_53:
        sub_1004B7E94();
LABEL_38:
        v31 = v8[1];
        if (__OFSUB__(v31 >> 6, v7))
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        v32 = 1 << *v8;
        v33 = __OFSUB__(v32, 1);
        v34 = v32 - 1;
        if (v33)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v35 = (v34 & (((v31 >> 6) - v7) >> 63)) + (v31 >> 6) - v7;
        if (v35 < v34)
        {
          v34 = 0;
        }

        v8[1] = v8[1] & 0x3FLL | ((v35 - v34) << 6);
        return;
      }

      if (!__OFADD__(v36, v7))
      {
        sub_1004B7E84();
        goto LABEL_53;
      }

      __break(1u);
LABEL_59:
      sub_1004B7E44();
      v38 = sub_1004B7E74();
      if ((v39 & 1) == 0 && v38 >= v6)
      {
        if (__OFSUB__(v38, v7))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        sub_1004B7E84();
      }

      sub_1004B7E94();
      return;
    }

    v6 = a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

    if ((v11 - a2) >= sub_1004B7EA4() / 3)
    {
      goto LABEL_59;
    }

    if (v11 < v6)
    {
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (v6 < 0)
    {
LABEL_105:
      __break(1u);
      return;
    }

    if (v11 != v6)
    {
      v58 = v11;
      do
      {
        v40 = a3 + 32 + 56 * v6;
        v41 = *(v40 + 32);
        v61 = *(v40 + 40);
        v63 = *(v40 + 48);
        v43 = *v40;
        v42 = *(v40 + 8);
        sub_1004BDBA4();
        if (v43 == 0.0)
        {
          v44 = 0.0;
        }

        else
        {
          v44 = v43;
        }

        sub_1004BDBE4(*&v44);
        if (v42 == 0.0)
        {
          v45 = 0.0;
        }

        else
        {
          v45 = v42;
        }

        sub_1004BDBE4(*&v45);

        sub_1004BBF84();
        v46 = *(v41 + 16);
        sub_1004BDBB4(v46);
        if (v46)
        {
          v47 = (v41 + 80);
          do
          {
            v48 = *(v47 - 6);
            v49 = *(v47 - 5);
            v50 = *(v47 - 2);
            v51 = *(v47 - 1);
            v53 = *v47;
            v47 += 7;
            v52 = *&v53;
            if (v48 == 0.0)
            {
              v48 = 0.0;
            }

            sub_1004BDBE4(*&v48);
            if (v49 == 0.0)
            {
              v54 = 0.0;
            }

            else
            {
              v54 = v49;
            }

            sub_1004BDBE4(*&v54);

            sub_1004BBF84();
            sub_1004BDBB4(v50);
            sub_1004BDBB4(v51);
            sub_1004BDBB4(v52);

            --v46;
          }

          while (v46);
        }

        if (v63)
        {
          sub_1004BDBB4(0);
        }

        else
        {
          sub_1004BDBB4(1uLL);
          v55 = (v61 & 0x7FFFFFFFFFFFFFFFLL) != 0 ? v61 : 0;
          sub_1004BDBE4(v55);
        }

        sub_1004BDBF4();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_97;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            v56 = sub_1004B7E74();
            if ((v57 & 1) == 0 && v56 == v6)
            {
              break;
            }

            sub_1004B7E94();
          }
        }

        sub_1004B7E84();
      }

      while (++v6 != v58);
    }
  }
}

void sub_10046C644(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, __n128 a6)
{
  v7 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_54;
  }

  if (v7 >= 1)
  {
    v11 = *(a3 + 16);
    if (result < (v11 - v7) / 2)
    {
      if (sub_1004B7EA4() / 3 > result)
      {
        if (result < 0)
        {
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        if (v11 < result)
        {
LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

        if (result)
        {
          v12 = 0;
          while (1)
          {
            v13 = *(a3 + 32 + 8 * v12);
            sub_1004BDBA4();
            sub_1004BDBB4(v13);
            sub_1004BDBF4();
            if (__OFSUB__(1 << *a4, 1))
            {
              break;
            }

            if (sub_1004B7E44())
            {
              while (1)
              {
                v14 = sub_1004B7E74();
                if ((v15 & 1) == 0 && v14 == v12)
                {
                  break;
                }

                sub_1004B7E94();
              }
            }

            if (__OFADD__(v12, v7))
            {
              goto LABEL_51;
            }

            ++v12;
            sub_1004B7E84();
            if (v12 == result)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        goto LABEL_17;
      }

      sub_1004B7E44();
      v21 = sub_1004B7E74();
      if ((v22 & 1) != 0 || v21 >= result)
      {
LABEL_29:
        sub_1004B7E94();
LABEL_17:
        v16 = a4[1];
        if (__OFSUB__(v16 >> 6, v7))
        {
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v17 = 1 << *a4;
        v18 = __OFSUB__(v17, 1);
        v19 = v17 - 1;
        if (v18)
        {
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v20 = (v19 & (((v16 >> 6) - v7) >> 63)) + (v16 >> 6) - v7;
        if (v20 < v19)
        {
          v19 = 0;
        }

        a4[1] = a4[1] & 0x3FLL | ((v20 - v19) << 6);
        return;
      }

      if (!__OFADD__(v21, v7))
      {
        sub_1004B7E84();
        goto LABEL_29;
      }

      __break(1u);
LABEL_35:
      sub_1004B7E44();
      v23 = sub_1004B7E74();
      if ((v24 & 1) == 0 && v23 >= v6)
      {
        if (__OFSUB__(v23, v7))
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

        sub_1004B7E84();
      }

      sub_1004B7E94();
      return;
    }

    v6 = a2;
    if (__OFSUB__(v11, a2))
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if ((v11 - a2) >= sub_1004B7EA4() / 3)
    {
      goto LABEL_35;
    }

    if (v11 < v6)
    {
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    if (v6 < 0)
    {
LABEL_61:
      __break(1u);
      return;
    }

    if (v11 != v6)
    {
      while (1)
      {
        v25 = *(a3 + 32 + 8 * v6);
        sub_1004BDBA4();
        sub_1004BDBB4(v25);
        sub_1004BDBF4();
        if (__OFSUB__(1 << *a4, 1))
        {
          break;
        }

        if (sub_1004B7E44())
        {
          while (1)
          {
            v26 = sub_1004B7E74();
            if ((v27 & 1) == 0 && v26 == v6)
            {
              break;
            }

            sub_1004B7E94();
          }
        }

        sub_1004B7E84();
        if (++v6 == v11)
        {
          return;
        }
      }

      goto LABEL_53;
    }
  }
}

uint64_t sub_10046CA54(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_10024DBD0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v21[0] = v2 + 32;
  v21[1] = v4;
  v5 = sub_1004BD8B4(v4);
  if (v5 >= v4)
  {
    if (v4 >= 2)
    {
      v10 = -1;
      v11 = 1;
      v12 = (v2 + 32);
      do
      {
        v13 = *(v2 + 32 + 8 * v11);
        v14 = v10;
        v15 = v12;
        do
        {
          v16 = *v15;
          if (*(v13 + 176) >= *(*v15 + 176))
          {
            break;
          }

          *v15 = v13;
          v15[1] = v16;
          --v15;
        }

        while (!__CFADD__(v14++, 1));
        ++v11;
        ++v12;
        --v10;
      }

      while (v11 != v4);
    }
  }

  else
  {
    v7 = v5;
    v8 = (v4 >> 1);
    if (v4 >= 2)
    {
      _s4WordCMa(0, v6);
      v9 = sub_1004BC314();
      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
    }

    v19[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
    v19[1] = v8;
    sub_10046CCD8(v19, v20, v21, v7);
    *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
  }

  return sub_1004BD504();
}

void sub_10046CBA4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10046CA40(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1004BD8B4(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1004BC314();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_10046D43C(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
}

void sub_10046CCD8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = _swiftEmptyArrayStorage;
LABEL_124:
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_157;
      }

      goto LABEL_126;
    }

    goto LABEL_162;
  }

  v6 = 0;
  v7 = _swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6 + 1;
    if (v6 + 1 >= v5)
    {
      goto LABEL_19;
    }

    v9 = *(*(*a3 + 8 * v8) + 176);
    v10 = *(*(*a3 + 8 * v6) + 176);
    v11 = v6 + 2;
    v12 = v9;
    do
    {
      if (v5 == v11)
      {
        v8 = v5;
        if (v9 >= v10)
        {
          goto LABEL_19;
        }

        goto LABEL_11;
      }

      v13 = *(*(*a3 + 8 * v11) + 176);
      v14 = v13 >= v12;
      ++v11;
      v12 = v13;
    }

    while ((((v9 < v10) ^ v14) & 1) != 0);
    v8 = v11 - 1;
    if (v9 >= v10)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (v8 < v6)
    {
      goto LABEL_153;
    }

    if (v6 < v8)
    {
      v15 = 8 * v8 - 8;
      v16 = 8 * v6;
      v17 = v8;
      v18 = v6;
      do
      {
        if (v18 != --v17)
        {
          v19 = *a3;
          if (!*a3)
          {
            goto LABEL_159;
          }

          v20 = *(v19 + v16);
          *(v19 + v16) = *(v19 + v15);
          *(v19 + v15) = v20;
        }

        ++v18;
        v15 -= 8;
        v16 += 8;
      }

      while (v18 < v17);
      v5 = a3[1];
    }

LABEL_19:
    if (v8 < v5)
    {
      if (__OFSUB__(v8, v6))
      {
        goto LABEL_152;
      }

      if (v8 - v6 < a4)
      {
        if (__OFADD__(v6, a4))
        {
          goto LABEL_154;
        }

        if (v6 + a4 < v5)
        {
          v5 = v6 + a4;
        }

        if (v5 < v6)
        {
          goto LABEL_155;
        }

        if (v8 != v5)
        {
          v21 = *a3;
          v22 = *a3 + 8 * v8 - 8;
          v23 = v6 - v8;
          do
          {
            v24 = *(v21 + 8 * v8);
            v25 = v23;
            v26 = v22;
            do
            {
              v27 = *v26;
              if (*(v24 + 176) >= *(*v26 + 176))
              {
                break;
              }

              if (!v21)
              {
                goto LABEL_156;
              }

              *v26 = v24;
              v26[1] = v27;
              --v26;
            }

            while (!__CFADD__(v25++, 1));
            ++v8;
            v22 += 8;
            --v23;
          }

          while (v8 != v5);
          v8 = v5;
        }
      }
    }

    if (v8 < v6)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_100441848(0, *(v7 + 2) + 1, 1, v7);
    }

    v30 = *(v7 + 2);
    v29 = *(v7 + 3);
    v31 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      v7 = sub_100441848((v29 > 1), v30 + 1, 1, v7);
    }

    *(v7 + 2) = v31;
    v32 = &v7[16 * v30];
    *(v32 + 4) = v6;
    *(v32 + 5) = v8;
    v104 = v8;
    v33 = *a1;
    if (!*a1)
    {
LABEL_160:
      __break(1u);
      goto LABEL_161;
    }

    if (v30)
    {
      break;
    }

LABEL_3:
    v6 = v104;
    v5 = a3[1];
    if (v104 >= v5)
    {
      goto LABEL_124;
    }
  }

  while (1)
  {
    v34 = v31 - 1;
    if (v31 >= 4)
    {
      v39 = &v7[16 * v31 + 32];
      v40 = *(v39 - 64);
      v41 = *(v39 - 56);
      v45 = __OFSUB__(v41, v40);
      v42 = v41 - v40;
      if (v45)
      {
        goto LABEL_138;
      }

      v44 = *(v39 - 48);
      v43 = *(v39 - 40);
      v45 = __OFSUB__(v43, v44);
      v37 = v43 - v44;
      v38 = v45;
      if (v45)
      {
        goto LABEL_139;
      }

      v46 = &v7[16 * v31];
      v48 = *v46;
      v47 = *(v46 + 1);
      v45 = __OFSUB__(v47, v48);
      v49 = v47 - v48;
      if (v45)
      {
        goto LABEL_141;
      }

      v45 = __OFADD__(v37, v49);
      v50 = v37 + v49;
      if (v45)
      {
        goto LABEL_144;
      }

      if (v50 >= v42)
      {
        v68 = &v7[16 * v34 + 32];
        v70 = *v68;
        v69 = *(v68 + 1);
        v45 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v45)
        {
          goto LABEL_148;
        }

        if (v37 < v71)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

    if (v31 == 3)
    {
      v35 = *(v7 + 4);
      v36 = *(v7 + 5);
      v45 = __OFSUB__(v36, v35);
      v37 = v36 - v35;
      v38 = v45;
LABEL_56:
      if (v38)
      {
        goto LABEL_140;
      }

      v51 = &v7[16 * v31];
      v53 = *v51;
      v52 = *(v51 + 1);
      v54 = __OFSUB__(v52, v53);
      v55 = v52 - v53;
      v56 = v54;
      if (v54)
      {
        goto LABEL_143;
      }

      v57 = &v7[16 * v34 + 32];
      v59 = *v57;
      v58 = *(v57 + 1);
      v45 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v45)
      {
        goto LABEL_146;
      }

      if (__OFADD__(v55, v60))
      {
        goto LABEL_147;
      }

      if (v55 + v60 >= v37)
      {
        if (v37 < v60)
        {
          v34 = v31 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_70;
    }

    v61 = &v7[16 * v31];
    v63 = *v61;
    v62 = *(v61 + 1);
    v45 = __OFSUB__(v62, v63);
    v55 = v62 - v63;
    v56 = v45;
LABEL_70:
    if (v56)
    {
      goto LABEL_142;
    }

    v64 = &v7[16 * v34];
    v66 = *(v64 + 4);
    v65 = *(v64 + 5);
    v45 = __OFSUB__(v65, v66);
    v67 = v65 - v66;
    if (v45)
    {
      goto LABEL_145;
    }

    if (v67 < v55)
    {
      goto LABEL_3;
    }

LABEL_77:
    if (v34 - 1 >= v31)
    {
      break;
    }

    v72 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_159:
      __break(1u);
      goto LABEL_160;
    }

    v109 = v34;
    v110 = v7;
    v106 = v34 - 1;
    v73 = *&v7[16 * v34 + 32];
    v74 = *&v7[16 * v34 + 40];
    v107 = *&v7[16 * v34 + 16];
    v108 = v74;
    v7 = (8 * v107);
    v75 = (v72 + 8 * v107);
    v76 = 8 * v73;
    v77 = (v72 + 8 * v73);
    v78 = 8 * v74;
    v79 = (v72 + 8 * v74);
    v80 = 8 * v73 - 8 * v107;
    v81 = 8 * v74 - 8 * v73;
    if (v80 < v81)
    {
      if (v75 != v33 || v77 <= v33)
      {
        memmove(v33, (v72 + 8 * v107), 8 * v73 - 8 * v107);
      }

      v82 = &v33[v80];
      v83 = v80 < 1;
      v4 = v110;
      v84 = v108;
      if (v83 || v78 <= v76)
      {
        v85 = v33;
        v90 = v75;
        v86 = v109;
        v87 = v107;
        goto LABEL_114;
      }

      v85 = v33;
      v86 = v109;
      v87 = v107;
      while (1)
      {
        v88 = *v77;
        if (*(*v77 + 176) >= *(*v85 + 176))
        {
          break;
        }

        v89 = v75 == v77;
        v77 += 8;
        if (!v89)
        {
          goto LABEL_91;
        }

LABEL_92:
        v75 += 8;
        if (v85 >= v82 || v77 >= v79)
        {
          v90 = v75;
          goto LABEL_114;
        }
      }

      v88 = *v85;
      v89 = v75 == v85;
      v85 += 8;
      if (v89)
      {
        goto LABEL_92;
      }

LABEL_91:
      *v75 = v88;
      goto LABEL_92;
    }

    if (v77 != v33 || v79 <= v33)
    {
      memmove(v33, (v72 + 8 * v73), 8 * v74 - 8 * v73);
    }

    v82 = &v33[v81];
    v86 = v109;
    if (v81 < 1 || v76 <= v7)
    {
      v85 = v33;
      v90 = v77;
      v4 = v110;
      v87 = v107;
      v84 = v108;
    }

    else
    {
      v4 = v110;
      v87 = v107;
      v84 = v108;
      do
      {
        v90 = v77 - 8;
        v79 -= 8;
        v91 = v82;
        while (1)
        {
          v92 = v79 + 8;
          v94 = *(v91 - 8);
          v91 -= 8;
          v93 = v94;
          if (*(v94 + 176) < *(*v90 + 176))
          {
            break;
          }

          if (v92 != v82)
          {
            *v79 = v93;
          }

          v79 -= 8;
          v82 = v91;
          if (v91 <= v33)
          {
            v82 = v91;
            v85 = v33;
            v90 = v77;
            goto LABEL_114;
          }
        }

        if (v92 != v77)
        {
          *v79 = *v90;
        }

        v85 = v33;
        if (v82 <= v33)
        {
          break;
        }

        v77 -= 8;
      }

      while (v75 < v90);
    }

LABEL_114:
    v95 = v82 - v85 + (v82 - v85 < 0 ? 7uLL : 0);
    if (v90 != v85 || v90 >= &v85[v95 & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v90, v85, 8 * (v95 >> 3));
    }

    if (v84 < v87)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_10046DE1C(v4);
    }

    if (v86 > *(v4 + 2))
    {
      goto LABEL_137;
    }

    v96 = &v4[16 * v106];
    *(v96 + 4) = v87;
    *(v96 + 5) = v84;
    sub_10046DD90(v86);
    v7 = v4;
    v31 = *(v4 + 2);
    if (v31 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  v7 = sub_10046DE1C(v7);
LABEL_126:
  v97 = *(v7 + 2);
  if (v97 < 2)
  {
LABEL_134:
  }

  else
  {
    while (*a3)
    {
      v98 = *&v7[16 * v97];
      v99 = *&v7[16 * v97 + 24];
      sub_10046D998((*a3 + 8 * v98), (*a3 + 8 * *&v7[16 * v97 + 16]), (*a3 + 8 * v99), v4);
      if (v103)
      {
        goto LABEL_134;
      }

      if (v99 < v98)
      {
        goto LABEL_150;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10046DE1C(v7);
      }

      if (v97 - 2 >= *(v7 + 2))
      {
        goto LABEL_151;
      }

      v100 = &v7[16 * v97];
      *v100 = v98;
      *(v100 + 1) = v99;
      sub_10046DD90(v97 - 1);
      v97 = *(v7 + 2);
      if (v97 <= 1)
      {
        goto LABEL_134;
      }
    }

LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
  }
}

void sub_10046D43C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_10046DE1C(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10046DB9C((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_100441848(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_100441848((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_10046DB9C((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_10046D998(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v6 + 176) < *(*v4 + 176))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (*(v21 + 176) < *(*v17 + 176))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10046DB9C(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_10046DD90(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10046DE1C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_10046DE30(unint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v5 = sub_1004BD6A4();
  if (!v5)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v6 = v5;
  v7 = sub_1004681CC(v5, 0);
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

uint64_t sub_10046DECC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1004BD6A4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1004BD6A4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000197E8(&qword_100615B48, &qword_100615B40, &qword_1004EB878);
          for (i = 0; i != v6; ++i)
          {
            sub_100003ABC(&qword_100615B40, &qword_1004EB878);
            v9 = sub_10024DEA4(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s4LineCMa(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10046E05C(uint64_t result, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    v13 = a2;
    result = sub_1004BD6A4();
    a2 = v13;
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    if (v6)
    {
      v8 = a2;
      result = sub_1004BD6A4();
      if (result <= v8)
      {
        if (v7 >= 1)
        {
          sub_1000197E8(&qword_100615B18, &qword_100615B10, &unk_1004EB840);
          for (i = 0; i != v7; ++i)
          {
            sub_100003ABC(&qword_100615B10, &unk_1004EB840);
            v10 = sub_10024DF2C(v14, i, a3);
            v12 = *v11;

            (v10)(v14, 0);
            *(v5 + 8 * i) = v12;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        _s4WordCMa(0, a2);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_10046E1EC(uint64_t a1, void (*a2)(void *, uint64_t, uint64_t))
{
  v3 = sub_10046E23C(a1);
  v4 = v3[2];

  sub_100469920((v3 + 4), v4, a2);
}

void *sub_10046E23C(int64_t a1)
{
  if (a1 < 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = (a1 & 0xFFFFFFFFFFFFFF8);
  }

  AssociatedObject = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
  if (AssociatedObject)
  {
    v4 = AssociatedObject;
  }

  else
  {
    objc_sync_enter(v2);
    v5 = objc_getAssociatedObject(v2, _swiftEmptyArrayStorage);
    if (v5)
    {
      v4 = v5;
      swift_retain_n();
    }

    else
    {
      v4 = sub_100468340(a1);

      objc_setAssociatedObject(v2, _swiftEmptyArrayStorage, v4, 1);
    }

    objc_sync_exit(v2);
  }

  return v4;
}

uint64_t sub_10046E2F8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_1004BC684();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100450CC8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10046E390(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100470BCC();
  result = sub_1004BC684();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100451060(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10046E404(unint64_t a1, __n128 a2, uint64_t a3)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_18:
    sub_1004BD6A4();
  }

  _s4WordCMa(0, a3);
  sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
  result = sub_1004BC684();
  v11 = result;
  if (!i)
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004BD484();
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_14:
          __break(1u);
          return v11;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_18;
        }

        v8 = *(a1 + 8 * i + 32);

        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_14;
        }
      }

      sub_100451178(&v10, v8);

      if (v9 == v6)
      {
        return v11;
      }
    }
  }

  v7 = result;
  v6 = sub_1004BD6A4();
  result = v7;
  if (v6)
  {
    goto LABEL_6;
  }

  return result;
}

void sub_10046E620()
{
  v1 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
  v2 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v4 = sub_1004B6E44();
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
  v6 = v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
  *v6 = 2;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
  *(v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
  v7 = (v0 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  *v7 = 0u;
  v7[1] = 0u;
  v7[2] = 0u;
  v7[3] = 0u;
  v7[4] = 0u;
  v7[5] = 0u;
  v8 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  *(v0 + v8) = sub_100447BF4(_swiftEmptyArrayStorage);
  sub_1004BD624();
  __break(1u);
}

void sub_10046E800(double a1, double a2, double a3, double a4, double a5, double a6, uint64_t a7, CFIndex a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13)
{
  *&v200[16] = a3;
  *&v200[24] = a4;
  *v200 = a1;
  *&v200[8] = a2;

  v21 = sub_10046E404(a13, v20, v19);

  v244 = v21;
  v22 = CTLineRef.stringRange.getter();
  if (__OFSUB__(a12, v22))
  {
    goto LABEL_252;
  }

  v217 = a12 - v22;
  v23 = CTLineRef.glyphRuns.getter();
  v203 = v23;
  if (v23 >> 62)
  {
LABEL_253:
    v24 = sub_1004BD6A4();
    v25 = a10;
    if (v24)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = a10;
    if (v24)
    {
LABEL_4:
      v207 = v24;
      v26 = Int.seconds.getter(0);
      v27 = 0;
      v239 = *(a8 + 16);
      v241 = a8 + 32;
      v194 = a6;
      do
      {
        if ((v203 & 0xC000000000000001) != 0)
        {
          v28 = sub_1004BD484();
        }

        else
        {
          if (v27 >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_249;
          }

          v28 = *(v203 + 32 + 8 * v27);
        }

        v225 = v28;
        v29 = __OFADD__(v27, 1);
        v30 = v27 + 1;
        if (v29)
        {
          goto LABEL_246;
        }

        v219 = v30;
        v31 = CTRunGetFont();
        CTFontGetLanguageAwareOutsets();

        if (String.containsExcessiveHeightCharacters.getter(a9, v25))
        {
          v32 = a6 - v26;
        }

        else
        {
          v32 = a6;
        }

        v224 = CTRunRef.positions.getter();
        a8 = CTRunRef.stringRange.getter();
        v34 = v33;
        v35 = CTRunRef.stringIndices.getter();
        if (v217)
        {
          v29 = __OFADD__(a8, v217);
          a8 += v217;
          if (v29)
          {
            goto LABEL_247;
          }

          v36 = *(v35 + 16);
          if (v36)
          {
            v37 = a11;
            v245[0] = _swiftEmptyArrayStorage;
            v38 = v35;
            sub_100442200(0, v36, 0);
            v39 = v38;
            v40 = _swiftEmptyArrayStorage;
            v41 = 32;
            v42 = v217;
            do
            {
              v43 = *(v39 + v41);
              a11 = v43 + v42;
              if (__OFADD__(v43, v42))
              {
                goto LABEL_234;
              }

              v245[0] = v40;
              v45 = v40[2];
              v44 = v40[3];
              if (v45 >= v44 >> 1)
              {
                sub_100442200((v44 > 1), v45 + 1, 1);
                v39 = v38;
                v42 = v217;
                v40 = v245[0];
              }

              v40[2] = v45 + 1;
              v40[v45 + 4] = a11;
              v41 += 8;
              --v36;
            }

            while (v36);

            v226 = v40;
            a11 = v37;
          }

          else
          {

            v226 = _swiftEmptyArrayStorage;
          }
        }

        else
        {
          v226 = v35;
        }

        v46 = v239;
        if (!v239)
        {
LABEL_5:
          v25 = a10;
          goto LABEL_6;
        }

        v47 = 0;
        v243 = a8 + v34;
        v48 = __OFADD__(a8, v34);
        v202 = v224 + 32;
        v25 = a10;
        v238 = v48;
        do
        {
          while (1)
          {
            if (v47 >= v46)
            {
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              goto LABEL_238;
            }

            v49 = (v241 + 56 * v47);
            v50 = *v49;
            v51 = v49[1];
            v52 = v49[2];
            v53 = v49[3];
            v55 = v49[4];
            v54 = v49[5];
            v56 = *(v49 + 48);
            v57 = *(v55 + 16);
            if (v57)
            {
              v58 = v55 + 56 * v57;
              v60 = *(v58 + 8);
              v59 = *(v58 + 16);
              v29 = __OFADD__(v60, v59);
              v61 = v60 + v59;
              if (v29)
              {
                goto LABEL_235;
              }

              v57 = *(v55 + 64);
              v29 = __OFSUB__(v61, v57);
              v62 = v61 - v57;
              if (v29)
              {
                goto LABEL_229;
              }
            }

            else
            {
              v62 = 0;
            }

            v63 = v57 + a11;
            if (__OFADD__(v57, a11))
            {
              goto LABEL_230;
            }

            if (v48)
            {
              goto LABEL_231;
            }

            v64 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              goto LABEL_232;
            }

            v65 = v243;
            if (v243 >= v64)
            {
              v65 = v63 + v62;
            }

            if (a8 >= v63 && a8 < v64)
            {
              v66 = v65 - a8;
              if (__OFSUB__(v65, a8))
              {
                goto LABEL_236;
              }

              v63 = a8;
              goto LABEL_53;
            }

            if (v63 >= a8 && v63 < v243)
            {
              break;
            }

LABEL_32:
            v29 = __OFADD__(v47++, 1);
            if (v29)
            {
              goto LABEL_233;
            }

            if (v47 >= v46)
            {
              goto LABEL_6;
            }
          }

          v66 = v65 - v63;
          if (__OFSUB__(v65, v63))
          {
            goto LABEL_237;
          }

LABEL_53:
          if (v66 < 1)
          {
            goto LABEL_32;
          }

          v233 = v56;
          v234 = v54;
          v236 = v52;

          v67 = sub_1004BC884();
          if (v69)
          {

            v46 = v239;
            v48 = v238;
            goto LABEL_32;
          }

          v231 = v53;
          v240 = a11;
          v70 = v67;
          v71 = v68;

          v72 = _NSRange.init(range:in:)(v70, v71, a9, v25);
          v227 = v73;
          v228 = v72;
          v74 = sub_1004BC114();
          a11 = v76;
          v77 = v74 >> 16;
          v79 = v78 >> 16;
          if (v75 == 32)
          {
            if (v76 == 0xE100000000000000 && !v77 && v79 == 1 || (v80 = sub_1004BD8C4(), v81 = 32, v82 = v79, v83 = v77, (v80 & 1) != 0))
            {
LABEL_62:

              v29 = __OFADD__(v47++, 1);
              if (!v29)
              {
                goto LABEL_63;
              }

              goto LABEL_239;
            }
          }

          else
          {
            v84 = v75;
            if (sub_1004BD8C4())
            {
              goto LABEL_62;
            }

            v81 = v84;
            v82 = v79;
            v83 = v77;
            if (v84 == 10 && a11 == 0xE100000000000000 && !v77 && v82 == 1)
            {
LABEL_75:

              a11 = v240 + 1;
              v25 = a10;
              if (!__OFADD__(v240, 1))
              {
                goto LABEL_76;
              }

              goto LABEL_244;
            }
          }

          range_8 = v82;
          v85 = v81;
          if ((sub_1004BD8C4() & 1) != 0 || v85 == 10519010 && a11 == 0xA300000000000000 && !v83 && range_8 == 3)
          {
            goto LABEL_75;
          }

          v218 = v85;
          if (sub_1004BD8C4())
          {
            goto LABEL_75;
          }

          v86.location = v63;
          v86.length = v66;
          v257 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v86, v226);
          if (v257.is_nil)
          {

            v29 = __OFADD__(v47++, 1);
            if (!v29)
            {
LABEL_63:
              a11 = v240;
              v25 = a10;
LABEL_76:
              v46 = v239;
              goto LABEL_77;
            }

            __break(1u);
LABEL_255:
            __break(1u);
LABEL_256:
            __break(1u);
LABEL_257:
            __break(1u);
LABEL_258:
            __break(1u);
LABEL_259:
            __break(1u);
LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
          }

          v87 = v257.value.location + v257.value.length;
          if (__OFADD__(v257.value.location, v257.value.length))
          {
            goto LABEL_255;
          }

          if (v87 < v257.value.location)
          {
            goto LABEL_256;
          }

          if (v257.value.location < 0)
          {
            goto LABEL_257;
          }

          v88 = *(v224 + 16);
          if (v88 < v257.value.location || v88 < v87)
          {
            goto LABEL_258;
          }

          range = v257.value.location;
          if (v257.value.location == v87)
          {
            length = v257.value.length;
            v90 = INFINITY;
          }

          else
          {
            if (v257.value.location >= v87)
            {
              goto LABEL_261;
            }

            v91 = (v202 + 16 * v257.value.location);
            v90 = INFINITY;
            length = v257.value.length;
            v92 = v257.value.length;
            do
            {
              v93 = *v91;
              v91 += 2;
              v94 = v93;
              if (v93 < v90)
              {
                v90 = v94;
              }

              --v92;
            }

            while (v92);
          }

          v254.location = range;
          v254.length = length;
          CTRunRef.drawingWidth(range:positions:)(v254, v224);
          v196 = v95;

          Height = CGRectGetHeight(*v200);
          if ((v244 & 0xC000000000000001) != 0)
          {

            sub_1004BD324();
            _s4WordCMa(0, v96);
            sub_1004701D0(&qword_100615B20, _s4WordCMa, &unk_1004EBEC8);
            sub_1004BC6A4();
            v97 = v247;
            v98 = v248;
            v100 = v249;
            v99 = v250;
            v101 = v251;
          }

          else
          {
            v102 = -1 << *(v244 + 32);
            v100 = ~v102;
            v103 = -v102;
            if (v103 < 64)
            {
              v104 = ~(-1 << v103);
            }

            else
            {
              v104 = -1;
            }

            v101 = v104 & *(v244 + 56);

            v98 = v244 + 56;
            v99 = 0;
          }

          v211 = v98;
          v105 = (v100 + 64) >> 6;
          v213 = v97;
          while ((v97 & 0x8000000000000000) == 0)
          {
            v106 = v99;
            v107 = v101;
            if (!v101)
            {
              while (1)
              {
                v99 = v106 + 1;
                if (__OFADD__(v106, 1))
                {
                  break;
                }

                if (v99 >= v105)
                {
                  goto LABEL_141;
                }

                v107 = *(v98 + 8 * v99);
                ++v106;
                if (v107)
                {
                  goto LABEL_108;
                }
              }

LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              __break(1u);
LABEL_244:
              __break(1u);
LABEL_245:
              __break(1u);
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
              goto LABEL_250;
            }

LABEL_108:
            v108 = (v107 - 1) & v107;
            v109 = *(*(v97 + 48) + ((v99 << 9) | (8 * __clz(__rbit64(v107)))));

            if (!v109)
            {
              goto LABEL_194;
            }

LABEL_112:
            v111 = *(v109 + 72);
            v112 = *(v109 + 80);
            if ((v112 & 0x2000000000000000) != 0)
            {
              v113 = HIBYTE(v112) & 0xF;
            }

            else
            {
              v113 = v111 & 0xFFFFFFFFFFFFLL;
            }

            v116 = v111 == v218 && v112 == a11 && v83 == 0 && v113 == range_8;
            if (!v116 && (sub_1004BD8C4() & 1) == 0 || *(v109 + 88) != v228 || *(v109 + 96) != v227)
            {
              goto LABEL_102;
            }

            v117 = *(v109 + 104);
            if (v117 >> 62)
            {
              v208 = *(v109 + 104);
              v120 = sub_1004BD6A4();
              v117 = v208;
              if (!v120)
              {
                goto LABEL_102;
              }
            }

            else if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_102;
            }

            if ((v117 & 0xC000000000000001) != 0)
            {

              v205 = sub_1004BD484();

              v121 = *(v205 + 120);
              a6 = *(v205 + 128);
              swift_unknownObjectRelease();
              if (v121 != a5)
              {
                goto LABEL_102;
              }
            }

            else
            {
              if (!*((v117 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_260;
              }

              v118 = *(v117 + 32);
              if (*(v118 + 120) != a5)
              {
                goto LABEL_102;
              }

              a6 = *(v118 + 128);
            }

            if (a6 == v32)
            {
              v119 = CGRectGetHeight(*v200);
              if (v119 == CGRectGetHeight(*(v109 + 176)))
              {

                v175 = *(v109 + 176);
                *(v109 + 176) = v90;
                *(v109 + 184) = 0;
                *(v109 + 192) = v196;
                *(v109 + 200) = Height;
                *(v109 + 216) = v90 - v175 + *(v109 + 216);
                v176 = *(v109 + 104);
                if (v176 >> 62)
                {
                  v177 = sub_1004BD6A4();
                }

                else
                {
                  v177 = *((v176 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                a11 = v240;
                v25 = a10;
                if (!v177)
                {
LABEL_217:
                  *(v109 + 144) = v90;
                  *(v109 + 152) = 0;
                  *(v109 + 160) = v196;
                  *(v109 + 168) = Height;
                  if (_swiftEmptyArrayStorage >> 62)
                  {
                    v186 = sub_1004BD6A4();
                  }

                  else
                  {
                    v186 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  a6 = v194;
                  *(v109 + 112) = v186;

                  sub_1004BC274();
                  if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_1004BC2E4();
                    v25 = a10;
                  }

                  sub_1004BC334();
                  sub_100453C70(v109);
                  sub_1001A43F8(v213);

                  v29 = __OFADD__(v47++, 1);
                  if (!v29)
                  {
                    goto LABEL_76;
                  }

                  goto LABEL_270;
                }

                v178 = 0;
                v235 = v177;
                v237 = v176 & 0xC000000000000001;
                v232 = v176 & 0xFFFFFFFFFFFFFF8;
                v229 = v176 + 32;
                while (2)
                {
                  if (v237)
                  {
                    v179 = sub_1004BD484();
                    v29 = __OFADD__(v178++, 1);
                    if (v29)
                    {
                      goto LABEL_266;
                    }
                  }

                  else
                  {
                    if (v178 >= *(v232 + 16))
                    {
                      goto LABEL_269;
                    }

                    v179 = *(v229 + 8 * v178);

                    v29 = __OFADD__(v178++, 1);
                    if (v29)
                    {
                      goto LABEL_266;
                    }
                  }

                  v180 = *(v109 + 216);
                  *(v179 + 192) = v180;
                  *(v179 + 152) = CGRectOffset(*(v179 + 200), v180, 0.0);
                  v181 = *(v179 + 88);
                  if (v181 >> 62)
                  {
                    v182 = sub_1004BD6A4();
                    if (v182)
                    {
LABEL_209:
                      if (v182 < 1)
                      {
                        goto LABEL_267;
                      }

                      v183 = 0;
                      do
                      {
                        if ((v181 & 0xC000000000000001) != 0)
                        {
                          v184 = sub_1004BD484();
                        }

                        else
                        {
                          v184 = *(v181 + 8 * v183 + 32);
                        }

                        ++v183;
                        v185 = *(v179 + 192);
                        *(v184 + 104) = v185;
                        *(v184 + 64) = CGRectOffset(*(v184 + 112), v185, 0.0);
                      }

                      while (v182 != v183);
                    }
                  }

                  else
                  {
                    v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v182)
                    {
                      goto LABEL_209;
                    }
                  }

                  a11 = v240;
                  v25 = a10;
                  if (v178 == v235)
                  {
                    goto LABEL_217;
                  }

                  continue;
                }
              }
            }

LABEL_102:

            v98 = v211;
            v97 = v213;
            v101 = v108;
          }

          v215 = v101;
          if (sub_1004BD354())
          {
            _s4WordCMa(0, v110);
            swift_dynamicCast();
            v109 = v245[0];
            v108 = v215;
            if (!v245[0])
            {
LABEL_194:
              v97 = v213;
              goto LABEL_141;
            }

            goto LABEL_112;
          }

          v97 = v213;
LABEL_141:
          sub_1001A43F8(v97);
          v122 = *(v55 + 16);

          v201 = v225;
          if (!v122)
          {
            goto LABEL_186;
          }

          a11 = 0;
          v123 = v55 + 80;
          v216 = v122;
          while (2)
          {
            v124 = (v123 + 56 * a11);
            while (2)
            {
              if (a11 >= v122)
              {
                goto LABEL_240;
              }

              v125 = a11 + 1;
              if (__OFADD__(a11, 1))
              {
                goto LABEL_241;
              }

              v126 = *(v124 - 2);
              v127 = v126 + v240;
              if (__OFADD__(v126, v240))
              {
                goto LABEL_242;
              }

              v128 = *(v124 - 1);
              v129 = v127 + v128;
              if (__OFADD__(v127, v128))
              {
                goto LABEL_243;
              }

              a6 = *(v124 - 6);
              v130 = *(v124 - 5);
              v131 = v243;
              if (v243 >= v129)
              {
                v131 = v127 + v128;
              }

              if (a8 >= v127 && a8 < v129)
              {
                v133 = v131 - a8;
                if (__OFSUB__(v131, a8))
                {
                  goto LABEL_245;
                }

                v127 = a8;
                if (v133 < 1)
                {
                  goto LABEL_145;
                }
              }

              else
              {
                if (v127 < a8 || v127 >= v243)
                {
                  goto LABEL_145;
                }

                v133 = v131 - v127;
                if (__OFSUB__(v131, v127))
                {
                  goto LABEL_248;
                }

                if (v133 < 1)
                {
                  goto LABEL_145;
                }
              }

              v209 = *(v124 - 4);
              v210 = *v124;
              v212 = *(v124 - 1);
              v214 = *(v124 - 2);
              rangea = *(v124 - 3);
              range_8a = a11 + 1;

              sub_1004BC884();
              if ((v134 & 1) != 0 || (, v135.location = v127, v135.length = v133, v258 = CTRunRef.convertToGlyphRange(textRange:stringIndices:)(v135, v226), location = v258.value.location, v137 = v258.value.length, is_nil = v258.is_nil, , is_nil))
              {

                v125 = a11 + 1;
                v122 = v216;
LABEL_145:
                ++a11;
                v124 += 7;
                if (v125 == v122)
                {
                  goto LABEL_186;
                }

                continue;
              }

              break;
            }

            sub_1004BC114();
            v139 = location + v137;
            if (__OFADD__(location, v137))
            {
              goto LABEL_262;
            }

            if (v139 < location)
            {
              goto LABEL_263;
            }

            if ((location & 0x8000000000000000) != 0)
            {
              goto LABEL_264;
            }

            v140 = *(v224 + 16);
            if (v140 < location || v140 < v139)
            {
              goto LABEL_265;
            }

            v199 = *(v224 + 16);
            if (location == v139)
            {
              v141 = INFINITY;
              goto LABEL_177;
            }

            if (location >= v139)
            {
              goto LABEL_268;
            }

            v142 = (v202 + 16 * location);
            v141 = INFINITY;
            v143 = v137;
            do
            {
              v144 = *v142;
              v142 += 2;
              v145 = v144;
              if (v144 < v141)
              {
                v141 = v145;
              }

              --v143;
            }

            while (v143);
LABEL_177:
            v190 = v141;
            v204 = v26;
            v255.location = location;
            v255.length = v137;
            a11 = location;
            CTRunRef.drawingWidth(range:positions:)(v255, v224);
            v189 = v146;
            v188 = CGRectGetHeight(*v200);

            v147 = v201;
            sub_1004BD524();
            v191 = v137;
            v192 = location;
            _NSRange.makeIterator()();
            v245[0] = v148;
            v245[1] = v149;
            v245[2] = v150;
            v246 = v151 & 1;
            v252 = _NSRange.NSRangeIterator.next()();
            if (!v252.is_nil)
            {
              value = v252.value;
              v122 = v216;
              v197 = v130;
              v198 = a6;
              v206 = v147;
              while (value < v199)
              {
                a6 = v32;
                v153 = a5;
                v154 = *(v202 + 16 * value);
                v256.location = value;
                v256.length = v224;
                CTRunRef.drawingWidth(forGlyphAtIndex:positions:)(v256);
                v156 = v155;
                v157 = CGRectGetHeight(*v200);
                if (value >= v226[2])
                {
                  goto LABEL_251;
                }

                v158 = v157;
                sub_10044CAE0();

                sub_1004BBF94();
                v159 = sub_1004BC0E4();
                v161 = v160;
                _s5GlyphCMa(0, v160);
                a11 = swift_allocObject();
                *(a11 + 96) = 0;
                *(a11 + 48) = v159;
                *(a11 + 56) = v161;
                *(a11 + 64) = v154;
                *(a11 + 72) = 0;
                *(a11 + 80) = v156;
                *(a11 + 88) = v158;
                *(a11 + 104) = v204;
                *(a11 + 112) = v154;
                *(a11 + 120) = 0;
                *(a11 + 128) = v156;
                *(a11 + 136) = v158;
                *(a11 + 16) = value;
                *(a11 + 40) = v206;
                a5 = v153;
                *(a11 + 24) = v153;
                *(a11 + 32) = a6;
                v32 = a6;
                v162 = v206;
                sub_1004BD4F4();
                sub_1004BD534();
                v147 = v206;
                sub_1004BD544();
                sub_1004BD504();
                v253 = _NSRange.NSRangeIterator.next()();
                value = v253.value;
                v130 = v197;
                a6 = v198;
                if (v253.is_nil)
                {
                  goto LABEL_183;
                }
              }

LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
              goto LABEL_253;
            }

            v122 = v216;
LABEL_183:

            v163 = sub_1004BBF64();
            v193 = v164;

            _s8SyllableCMa(0, v165);
            v166 = swift_allocObject();
            *(v166 + 136) = 0;
            *(v166 + 144) = 2;
            *(v166 + 184) = 0;
            *(v166 + 16) = a6;
            *(v166 + 24) = v130;
            *(v166 + 32) = v209;
            *(v166 + 40) = rangea;
            *(v166 + 48) = v214;
            *(v166 + 56) = v212;
            *(v166 + 64) = v210;
            *(v166 + 72) = v163;
            *(v166 + 80) = v193;
            *(v166 + 88) = _swiftEmptyArrayStorage;
            v26 = v204;
            *(v166 + 192) = v204;
            *(v166 + 200) = v190;
            *(v166 + 208) = 0;
            *(v166 + 216) = v189;
            *(v166 + 224) = v188;
            *(v166 + 152) = v190;
            *(v166 + 160) = 0;
            *(v166 + 168) = v189;
            *(v166 + 176) = v188;
            *(v166 + 96) = v192;
            *(v166 + 104) = v191;
            *(v166 + 112) = v147;
            *(v166 + 120) = a5;
            *(v166 + 128) = v32;
            v167 = v147;

            sub_1004BC274();
            if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004BC2E4();
            }

            sub_1004BC334();
            a11 = range_8a;
            v123 = v55 + 80;
            if (range_8a != v122)
            {
              continue;
            }

            break;
          }

LABEL_186:

          v168 = sub_1004BBF64();
          v170 = v169;

          if (_swiftEmptyArrayStorage >> 62)
          {
            v172 = sub_1004BD6A4();
          }

          else
          {
            v172 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          _s4WordCMa(0, v171);
          v173 = swift_allocObject();
          *(v173 + 136) = 2;
          *(v173 + 208) = 0;
          *(v173 + 216) = v26;
          *(v173 + 224) = v26;
          *(v173 + 232) = 0;
          *(v173 + 16) = v50;
          *(v173 + 24) = v51;
          *(v173 + 32) = v236;
          *(v173 + 40) = v231;
          *(v173 + 48) = v55;
          *(v173 + 56) = v234;
          *(v173 + 64) = v233;
          *(v173 + 72) = v168;
          *(v173 + 80) = v170;
          *(v173 + 184) = 0;
          *(v173 + 192) = v196;
          *(v173 + 200) = Height;
          *(v173 + 144) = v90;
          *(v173 + 152) = 0;
          *(v173 + 160) = v196;
          *(v173 + 168) = Height;
          *(v173 + 176) = v90;
          *(v173 + 104) = _swiftEmptyArrayStorage;
          *(v173 + 112) = v172;
          *(v173 + 88) = v228;
          *(v173 + 96) = v227;
          *(v173 + 120) = v201;
          *(v173 + 128) = 0;
          v174 = v201;

          sub_1004BC274();
          if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();

          a11 = v240;
          a6 = v194;
          if (v243 == v64)
          {
            goto LABEL_5;
          }

          v29 = __OFADD__(v47++, 1);
          v25 = a10;
          v46 = v239;
          if (v29)
          {
            goto LABEL_259;
          }

LABEL_77:
          v48 = v238;
        }

        while (v47 < v46);
LABEL_6:

        v27 = v219;
      }

      while (v219 != v207);
    }
  }

  v245[0] = sub_10046DE30(v187, sub_10046E05C);
  sub_10046CA54(v245);
}

double sub_10046FD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_10046FD8C()
{

  return swift_deallocObject();
}

uint64_t sub_10046FDDC()
{

  return swift_deallocObject();
}

uint64_t sub_10046FE24(int64_t a1, void (*a2)(uint64_t *__return_ptr, void *, uint64_t, __n128))
{
  v4 = sub_10046E23C(a1);
  v5 = v4[2];

  (a2)(&v8, v4 + 4, v5);
  if (!v2)
  {
    v6 = v8;
  }

  return v6 & 1;
}

void sub_10046FEA0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a3 >> 1;
  if (a3 >> 1 == a2)
  {
    return;
  }

  v5 = v3;
  v6 = a2;
  while (v6 < v4)
  {
    v8 = *(a1 + 8 * v6);
    v10 = *v5;
    v9 = v5[1];
    v11 = (v9 + 32);
    if (*v5)
    {
      sub_1004BDBA4();
      sub_1004BDBB4(v8);
      sub_1004BDBF4();
      if (__OFSUB__(1 << *(v10 + 16), 1))
      {
        goto LABEL_33;
      }

      sub_1004B7E44();
      v12 = sub_1004B7E74();
      if ((v13 & 1) == 0)
      {
        while (v11[v12] != v8)
        {
          sub_1004B7E94();
          v12 = sub_1004B7E74();
          if (v14)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

    else
    {
      v15 = *(v9 + 16);
      if (v15)
      {
        while (*v11 != v8)
        {
          ++v11;
          if (!--v15)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_5;
      }
    }

LABEL_16:
    swift_retain_n();
    sub_1004BD4F4();
    sub_1004BD534();
    sub_1004BD544();
    sub_1004BD504();
    v16 = v5[1];
    v17 = *(v16 + 16);
    if (!v10)
    {
      if (v17 > 0xF)
      {
        v18 = 0;
LABEL_23:
        v19 = sub_1004B7ED4();
        if (v18 <= v19)
        {
          v21 = v19;
        }

        else
        {
          v21 = v18;
        }

        v22 = sub_100468C6C(v16, v21, 0, v18, v20);

        *v5 = v22;
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    swift_beginAccess();
    if (sub_1004B7EA4() >= v17)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v24 = *v5;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v24)
        {
          goto LABEL_35;
        }

        v25 = sub_1004B7EC4();

        *v5 = v25;
        v24 = v25;
      }

      if (!v24)
      {
        goto LABEL_34;
      }

      sub_1004B7E64();
LABEL_4:

      goto LABEL_5;
    }

    v18 = *(v10 + 24) & 0x3FLL;
    if (v17 > 0xF || v18)
    {
      goto LABEL_23;
    }

    *v5 = 0;
LABEL_5:
    if (++v6 == v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_100470184()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1004701D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_100470218(id a1)
{
  if (a1 != 2)
  {
    sub_10014FEE8(a1);
  }
}

uint64_t sub_100470244(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_10047025C()
{
  result = *(v0 + 112);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1004702A0()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

id sub_1004702DC()
{
  result = *(v0 + 112);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_10047031C()
{

  return swift_deallocObject();
}

id sub_1004703A0()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1004703BC()
{

  return swift_deallocObject();
}

id sub_100470488()
{
  result = *(v0 + 208);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

id sub_1004704CC()
{
  result = *(v0 + 208);
  if (result)
  {
    return [result setAlpha:1.0];
  }

  return result;
}

void sub_1004704E8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_100470540(a1, *(v2 + 16), *(v2 + 24), *(*(v2 + 32) + 8));
  if (!v3)
  {
    *a2 = v5;
    a2[1] = v6;
  }
}

void sub_100470540(uint64_t a1, int8x8_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  sub_1004B7F24(v8);
  v9 = 0;
  v10 = *(a4 + 16);
  v11 = a4 + 32;
  v22 = a3;
  v12 = a3 + 32;
  v13 = v8;
  while (2)
  {
    if (v9 == v10)
    {
LABEL_19:
      v20 = *a1;
      v19 = *(a1 + 8);
      v21 = static MPMediaLibraryFilteringOptions.none.getter();

      sub_10046AFE4(v20, v19, v13, 0, v21, a2, v22);
      return;
    }

    while (1)
    {
      if (v9 >= v10)
      {
        __break(1u);
LABEL_21:
        __break(1u);
        return;
      }

      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_21;
      }

      v15 = *(v11 + 8 * v9++);
      if (a2)
      {
        v16 = sub_10044EC24();
        if (v17)
        {
          goto LABEL_5;
        }

        v18 = v16;
        if (v16 < 0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_5;
        }

        v18 = 0;
        while (*(v12 + 8 * v18) != v15)
        {
          if (v8 == ++v18)
          {
            goto LABEL_5;
          }
        }
      }

      if (sub_1004B7F04(v18))
      {
        break;
      }

LABEL_5:
      if (v14 == v10)
      {
        goto LABEL_19;
      }
    }

    if (--v13)
    {
      continue;
    }

    break;
  }

  sub_10046DE30(_swiftEmptyArrayStorage, sub_10046DECC);
}

uint64_t sub_1004706B8()
{

  return swift_deallocObject();
}

uint64_t sub_100470770()
{

  return swift_deallocObject();
}

void sub_1004707B0()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) removeFromSuperview];
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
  *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
}

id sub_100470804()
{
  v1 = *(v0 + 16);
  v3[0] = 0x3FF0000000000000;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = 0x3FF0000000000000;
  v3[4] = 0;
  v3[5] = 0;
  return [v1 setTransform:v3];
}

uint64_t sub_100470858()
{

  return swift_deallocObject();
}

uint64_t sub_1004708A0()
{

  return swift_deallocObject();
}

id sub_1004708E8(id result)
{
  if (result >= 2)
  {
    return result;
  }

  return result;
}

uint64_t sub_1004708F8()
{

  return swift_deallocObject();
}

__n128 sub_100470930()
{
  v1 = *(v0 + 16);
  result = *(v0 + 24);
  v3 = *(v0 + 40);
  *(v1 + 64) = result;
  *(v1 + 80) = v3;
  return result;
}

void sub_100470954(id a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }
}

uint64_t sub_100470968()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

id sub_1004709A8(id result, void *a2)
{
  if (result)
  {
    v2 = result;

    return a2;
  }

  return result;
}

uint64_t sub_1004709E8()
{

  return swift_deallocObject();
}

Swift::Int sub_100470A44@<X0>(Swift::Int a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_100469E08(a1, a2, *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result & 1;
    *(a3 + 8) = v7;
  }

  return result;
}

uint64_t sub_100470A7C()
{

  return swift_deallocObject();
}

uint64_t sub_100470AB4()
{

  return swift_deallocObject();
}

id sub_100470B28(id result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    return result;
  }

  return result;
}

double sub_100470B3C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_100470BCC()
{
  result = qword_100615B70;
  if (!qword_100615B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615B70);
  }

  return result;
}

uint64_t sub_100470C20(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 _s5SpecsV20SelectedLinePositionOwcp(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100470C4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100470C9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100470CF8(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_100470D30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_100470D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100471010(uint64_t a1)
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

uint64_t sub_10047103C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v2 == 1)
      {
        return 1;
      }
    }

    else
    {
      v4 = *a2;
      if (*a1)
      {
        if (v2 == 2 && v4 == 1)
        {
          return 1;
        }
      }

      else if (v2 == 2 && v4 == 0)
      {
        return 1;
      }
    }
  }

  else if (!*(a2 + 8))
  {
    return 1;
  }

  return 0;
}

char *sub_100471098()
{
  v1 = v0;
  v2 = *(v0 + 72);
  v3 = *(v0 + 104) - *(v0 + 64);
  MaxX = CGRectGetMaxX(*(v0 + 112));
  Height = CGRectGetHeight(*(v0 + 64));
  v8 = *(v0 + 96);
  if (v8)
  {
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    v13 = v8;
    [v13 setFrame:{v9, v10, v11, v12}];
    [*&v13[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] setFrame:{v3, v2, MaxX, Height}];
  }

  else
  {
    v14 = *(v0 + 40);
    v15 = *(v0 + 16);
    v16 = v1[3];
    v17 = v1[4];
    v18 = objc_allocWithZone(_s5GlyphC9GlyphViewCMa(v5, v6));
    v19 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v14, v15, 1, v16, v17);
    v20 = [v19 setFrame:{v3, v2, MaxX, Height}];
    v21 = v1[8];
    v22 = v1[9];
    v23 = v1[10];
    v24 = v1[11];
    v26 = _s5GlyphC18GlyphContainerViewCMa(v20, v25);
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators] = _swiftEmptyArrayStorage;
    *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_glyphView] = v19;
    v41.receiver = v27;
    v41.super_class = v26;
    v28 = v19;
    v29 = objc_msgSendSuper2(&v41, "initWithFrame:", v21, v22, v23, v24);
    if (qword_100614E78 != -1)
    {
      swift_once();
    }

    v30 = static LyricsOptionsManager.shared;
    if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v30 + 40)))
    {
      v31 = objc_opt_self();
      v32 = v29;
      v33 = [v31 greenColor];
      v34 = [v33 colorWithAlphaComponent:0.7];

      [v32 setBackgroundColor:v34];
      v35 = [v31 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v37, v36 & 1, v38);
    }

    v13 = v29;
    [v13 addSubview:v28];

    v39 = *(v1 + 12);
    *(v1 + 12) = v13;
  }

  return v13;
}

id sub_10047144C(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10[0] = 0x3FF0000000000000;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0x3FF0000000000000;
  v10[4] = 0;
  v10[5] = 0;
  [a1 setTransform:v10];
  return UIView.untransformedFrame.setter(a2, a3, a4, a5);
}

void sub_1004714C8()
{
  v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v31 = v1;
  v3 = *(v0 + v1);
  v30 = v3 >> 62;
  v4 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_75;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      if (v30)
      {
        v6 = sub_1004BD6A4();
      }

      else
      {
        v6 = *(v4 + 16);
      }

      goto LABEL_26;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = sub_1004BD484();
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_66;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 state];

    v10 = __OFADD__(v6, 1);
    if (v9 == 2 || v9 == 0)
    {
      break;
    }

    ++v6;
    if (v10)
    {
      goto LABEL_67;
    }
  }

  if (!v10)
  {
    if (v30)
    {
      v12 = sub_1004BD6A4();
    }

    else
    {
      v12 = *(v4 + 16);
    }

    v13 = v0;
    if (v6 + 1 != v12)
    {
      v4 = v6 + 5;
      do
      {
        v15 = v4 - 4;
        v0 = (v3 & 0xC000000000000001);
        if ((v3 & 0xC000000000000001) != 0)
        {
          v16 = sub_1004BD484();
        }

        else
        {
          if ((v15 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v15 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v16 = *(v3 + 8 * v4);
        }

        v17 = v16;
        v18 = [v16 state];

        if (v18 != 2 && v18 != 0)
        {
          if (v15 != v6)
          {
            if (v0)
            {
              v20 = sub_1004BD484();
              v21 = sub_1004BD484();
            }

            else
            {
              if ((v6 & 0x8000000000000000) != 0)
              {
                goto LABEL_78;
              }

              v22 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v6 >= v22)
              {
                goto LABEL_79;
              }

              if (v15 >= v22)
              {
                goto LABEL_80;
              }

              v0 = *(v3 + 8 * v4);
              v20 = *(v3 + 8 * v6 + 32);
              v21 = v0;
            }

            v23 = v21;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *(v13 + v31) = v3;
            if (!isUniquelyReferenced_nonNull_bridgeObject || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_10044EC2C(v3);
              *(v13 + v31) = v3;
            }

            if ((v6 & 0x8000000000000000) != 0)
            {
              goto LABEL_72;
            }

            v0 = (v3 & 0xFFFFFFFFFFFFFF8);
            if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v25 = &v0[v6];
            v26 = v25[4];
            v25[4] = v23;

            *(v13 + v31) = v3;
            if ((v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_10044EC2C(v3);
              *(v13 + v31) = v3;
              v0 = (v3 & 0xFFFFFFFFFFFFFF8);
              if ((v15 & 0x8000000000000000) != 0)
              {
LABEL_65:
                __break(1u);
LABEL_66:
                __break(1u);
LABEL_67:
                __break(1u);
LABEL_68:
                __break(1u);
LABEL_69:
                __break(1u);
LABEL_70:
                __break(1u);
LABEL_71:
                __break(1u);
LABEL_72:
                __break(1u);
LABEL_73:
                __break(1u);
LABEL_74:
                __break(1u);
LABEL_75:
                v5 = sub_1004BD6A4();
                goto LABEL_3;
              }
            }

            else if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v15 >= v0[2])
            {
              goto LABEL_74;
            }

            v27 = v0[v4];
            v0[v4] = v20;

            *(v13 + v31) = v3;
          }

          if (__OFADD__(v6++, 1))
          {
            goto LABEL_71;
          }
        }

        v0 = (v4 - 3);
        if (__OFADD__(v15, 1))
        {
          goto LABEL_70;
        }

        if (v3 >> 62)
        {
          v29 = sub_1004BD6A4();
        }

        else
        {
          v29 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v4;
      }

      while (v0 != v29);
    }

LABEL_26:
    if (v3 >> 62)
    {
      v14 = sub_1004BD6A4();
      if (v14 >= v6)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14 >= v6)
      {
LABEL_28:
        sub_1004AFDF4(v6, v14, v2);
        swift_endAccess();
        return;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
  }

  __break(1u);
}

void sub_100471868(void *a1, uint64_t a2, double a3, double a4, CGFloat a5)
{
  v9 = objc_opt_self();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_100472254;
  *(v11 + 24) = v10;
  *&v14.tx = sub_1000E639C;
  *&v14.ty = v11;
  *&v14.a = _NSConcreteStackBlock;
  *&v14.b = 1107296256;
  *&v14.c = sub_100008224;
  *&v14.d = &unk_1005D3C20;
  v12 = _Block_copy(&v14);
  v13 = a1;

  [v9 performWithoutAnimation:v12];
  _Block_release(v12);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if (v9)
  {
    __break(1u);
  }

  else
  {
    [v13 frame];
    [v13 setFrame:{a3, a4}];
    CGAffineTransformMakeScale(&v14, a5, a5);
    [v13 setTransform:&v14];
  }
}

void sub_100471A4C(void *a1, double a2, double a3, double a4, uint64_t a5)
{
  v6 = v5;
  sub_1004720E0(0, a5);
  isa = UIViewPropertyAnimator.init(springTimingParameters:)(a1).super.isa;
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  v23 = sub_100472164;
  v24 = v12;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_1000D6C80;
  v22 = &unk_1005D3AE0;
  v13 = _Block_copy(&v19);
  v14 = v6;

  [(objc_class *)isa addAnimations:v13];
  _Block_release(v13);
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_1004721C0;
  v24 = v15;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_10013ABCC;
  v22 = &unk_1005D3B30;
  v16 = _Block_copy(&v19);

  [(objc_class *)isa addCompletion:v16];
  _Block_release(v16);
  [(objc_class *)isa startAnimationAfterDelay:a4];
  v17 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
  swift_beginAccess();
  v18 = isa;
  sub_1004BC274();
  if (*((*(v14 + v17) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v14 + v17) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004BC2E4();
  }

  sub_1004BC334();
  swift_endAccess();
}

void sub_100471C9C(void *a1, uint64_t a2, double a3, double a4)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100472214;
  *(v9 + 24) = v8;
  v16 = sub_1000E6038;
  v17 = v9;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100008224;
  v15 = &unk_1005D3BA8;
  v10 = _Block_copy(&v12);
  v11 = a1;

  [v7 performWithoutAnimation:v10];
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  else
  {
    v12 = 0x3FF0000000000000;
    v13 = 0;
    v14 = 0;
    v15 = 0x3FF0000000000000;
    v16 = 0;
    v17 = 0;
    [v11 setTransform:&v12];
    [v11 frame];
    [v11 setFrame:{a3, a4}];
  }
}

id sub_100471E60(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2();
  swift_beginAccess();
  return UIView.setAnchorPoint(_:preserveFrame:)(1, *v2, v2[1]);
}

void sub_100471EB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1004714C8();
  }
}

id sub_100471F34(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s5GlyphC18GlyphContainerViewCMa(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10047202C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1004720E0(uint64_t a1, uint64_t a2)
{
  result = qword_100616AF0;
  if (!qword_100616AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100616AF0);
  }

  return result;
}

uint64_t sub_10047212C()
{

  return swift_deallocObject();
}

uint64_t sub_100472170(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100472188()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004721DC()
{

  return swift_deallocObject();
}

void sub_1004722A4()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_1004BD6A4();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v2; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      sub_1004BD484();
    }

    else
    {
    }

    sub_100477250();
  }

LABEL_10:
  v4 = *(v0 + 112);
  if (v4)
  {
    [v4 removeFromSuperview];
    v5 = *(v0 + 112);
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 112) = 0;
}

id sub_1004723B4()
{
  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  result = [result maskView];
  if (result)
  {
    return result;
  }

  result = *(v0 + 112);
  if (!result)
  {
    return result;
  }

  v2 = [result subviews];
  sub_100009130(0, &qword_100615B60, UIView_ptr);
  v3 = sub_1004BC2A4();

  if (v3 >> 62)
  {
    result = sub_1004BD6A4();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_12:

    return 0;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = sub_1004BD484();
    goto LABEL_10;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v3 + 32);
LABEL_10:
    v5 = v4;

    return v5;
  }

  __break(1u);
  return result;
}

void sub_1004724B8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = v0[2];
  if (v2 >> 62)
  {
    v3 = sub_1004BD6A4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = _swiftEmptyArrayStorage;
  if (v3)
  {
    v24 = _swiftEmptyArrayStorage;

    sub_100442220(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      goto LABEL_41;
    }

    v5 = 0;
    v4 = v24;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
      }

      v7 = *(v6 + 48);
      if (*(v7 + 16))
      {
        v8 = *(v7 + 32);
      }

      else
      {
        v8 = 0;
      }

      v24 = v4;
      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        sub_100442220((v9 > 1), v10 + 1, 1);
        v4 = v24;
      }

      ++v5;
      *(v4 + 2) = v10 + 1;
      *&v4[8 * v10 + 32] = v8;
    }

    while (v3 != v5);
  }

  v24 = v4;

  sub_10046CBA4(&v24);

  if (*(v24 + 2))
  {
    v11 = *(v24 + 4);
  }

  else
  {
    v11 = 0;
  }

  v1[8] = v11;
  v12 = v1[2];
  if (v12 >> 62)
  {
    v13 = sub_1004BD6A4();
  }

  else
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = _swiftEmptyArrayStorage;
  if (v13)
  {
    v24 = _swiftEmptyArrayStorage;

    sub_100442220(0, v13 & ~(v13 >> 63), 0);
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = 0;
      v14 = v24;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v16 = sub_1004BD484();
        }

        else
        {
        }

        v17 = *(v16 + 48);
        v18 = *(v17 + 16);
        if (v18)
        {
          v19 = *(v17 + 56 * v18 - 16);
        }

        else
        {
          v19 = 0;
        }

        v24 = v14;
        v21 = *(v14 + 2);
        v20 = *(v14 + 3);
        if (v21 >= v20 >> 1)
        {
          sub_100442220((v20 > 1), v21 + 1, 1);
          v14 = v24;
        }

        ++v15;
        *(v14 + 2) = v21 + 1;
        *&v14[8 * v21 + 32] = v19;
      }

      while (v13 != v15);

      goto LABEL_34;
    }

LABEL_41:
    __break(1u);

    __break(1u);
    return;
  }

LABEL_34:
  v24 = v14;

  sub_10046CBA4(&v24);

  v22 = *(v24 + 2);
  if (v22)
  {
    v23 = *&v24[8 * v22 + 24];
  }

  else
  {
    v23 = 0;
  }

  v1[9] = v23;
}

void sub_1004727CC(uint64_t a1)
{
  v3 = *(v1 + 112);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v4)
    {
      swift_beginAccess();
      v6 = *(v1 + 16);
      if (v6 >> 62)
      {
        v7 = sub_1004BD6A4();
        if (!v7)
        {
          return;
        }
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v7)
        {
          return;
        }
      }

      v8 = v7 - 1;
      if (__OFSUB__(v7, 1))
      {
        __break(1u);
      }

      else if ((v6 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_23;
        }

        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_26;
        }

        v9 = *(v6 + 8 * v8 + 32);
        v10 = v4;

LABEL_10:
        v2 = *(v9 + 104);
        if (!(v2 >> 62))
        {
          v11 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_24;
        }

LABEL_23:
        v11 = sub_1004BD6A4();
        if (v11)
        {
LABEL_12:
          v12 = v11 - 1;
          if (!__OFSUB__(v11, 1))
          {
            if ((v2 & 0xC000000000000001) == 0)
            {
              if ((v12 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v12 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v13 = *(v2 + 8 * v12 + 32);

                if (*(v1 + 120))
                {
LABEL_17:

                  return;
                }

                goto LABEL_28;
              }

              __break(1u);
              return;
            }

LABEL_27:

            v13 = sub_1004BD484();

            if (*(v1 + 120))
            {
              goto LABEL_17;
            }

LABEL_28:
            [*(a1 + 200) lineHeight];
            v16 = vabdd_f64(v15 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v1 + 80))) * 0.5;
            *(v1 + 120) = 1;
            v17 = objc_opt_self();
            v18 = *(a1 + 648);
            v19 = swift_allocObject();
            *(v19 + 16) = v1;
            *(v19 + 24) = v4;
            *(v19 + 32) = v13;
            memcpy((v19 + 40), a1, 0x2B0uLL);
            *(v19 + 728) = v16;
            aBlock[4] = sub_100475B5C;
            aBlock[5] = v19;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000D6C80;
            aBlock[3] = &unk_1005D3EE0;
            v20 = _Block_copy(aBlock);
            v21 = v4;

            sub_10046E570(a1, v24);

            [v17 animateWithDuration:196609 delay:v20 options:0 animations:v18 completion:0.0];
            _Block_release(v20);
            sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
            v22 = sub_1004BCB44();
            v23 = swift_allocObject();
            swift_weakInit();

            OS_dispatch_queue.asyncAfter(_:block:)(sub_100475BA8, v23, v18);

            return;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_24:

        return;
      }

      v14 = v4;

      v9 = sub_1004BD484();

      goto LABEL_10;
    }
  }
}

id sub_100472B90(uint64_t a1, id a2, uint64_t a3, uint64_t a4, double a5)
{
  if (*(a1 + 58))
  {
    [a2 frame];
    v10 = v9;
    v12 = v11;
    v13 = *(a4 + 504);
    Width = CGRectGetWidth(*(a1 + 80));
    v15 = v12;
    v16 = v10;
    v17 = Width;
    v18 = -(v13 + a5);
    v19 = v13 + v17 + a5;
  }

  else
  {
    v19 = CGRectGetMaxX(*(a3 + 152)) + *(a4 + 504) + a5;
    [a2 frame];
  }

  return [a2 setFrame:{v18, v16, v19, v15}];
}

double sub_100472C78(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 120) = 0;
  }

  return result;
}

void sub_100472CC8(unint64_t a1, double a2)
{
  swift_beginAccess();
  v14 = *(v3 + 16);
  if (v14 >> 62)
  {
    v2 = *(v3 + 16);
    v15 = sub_1004BD6A4();
    v14 = v2;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_3;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v15)
  {
LABEL_3:
    v112 = *(v3 + 56);
    v110 = *(v3 + 57);
    v114 = v14 & 0xC000000000000001;
    v109 = v14 & 0xFFFFFFFFFFFFFF8;
    v108 = v3;
    v118 = &v121;

    v5 = 0;
    v9 = 1107296256;
    v111 = v15;
    while (1)
    {
      if (v114)
      {
        v21 = sub_1004BD484();
        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v23 = *(v109 + 16);
        if (v5 >= v23)
        {
          __break(1u);
          goto LABEL_100;
        }

        v22 = __OFADD__(v5++, 1);
        if (v22)
        {
LABEL_86:
          __break(1u);
LABEL_87:

LABEL_187:

          goto LABEL_188;
        }
      }

      v116 = v21;
      if (v112)
      {
        goto LABEL_39;
      }

      v15 = *(v21 + 104);
      if (v15 >> 62)
      {
        v4 = sub_1004BD6A4();
        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_17:
        if (v4 >= 1)
        {
          v7 = 0;
          v2 = v15 & 0xC000000000000001;
          while (1)
          {
            if (v2)
            {
              v6 = sub_1004BD484();
            }

            else
            {
              v6 = *(v15 + 8 * v7 + 32);
            }

            v8 = *(v6 + 16);
            v30 = v8 <= a2;
            if (*(v6 + 144) >= 2u)
            {
              if (*(v6 + 136))
              {
                if (v8 <= a2)
                {
                  goto LABEL_21;
                }

                v30 = 0;
              }

              else if (v8 > a2)
              {
                goto LABEL_21;
              }
            }

            sub_100470954(v30, 2u);
            v24 = *(v6 + 136);
            v31 = *(v6 + 144);
            if (v31 == 1)
            {
              if (v24 && v8 <= a2)
              {
LABEL_37:
                sub_100470B28(*(v6 + 136), *(v6 + 144));
                sub_100470B28(v24, v31);
                [(objc_class *)v24 stopAnimation:1];
                goto LABEL_20;
              }
            }

            else if (!*(v6 + 144) && v24 && v8 > a2)
            {
              goto LABEL_37;
            }

            sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
            v24 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
LABEL_20:
            v25 = swift_allocObject();
            *(v25 + 16) = v6;
            *(v25 + 24) = v8 > a2;
            memcpy((v25 + 32), a1, 0x2B0uLL);
            v125[4] = sub_1004758FC;
            v125[5] = v25;
            v125[0] = _NSConcreteStackBlock;
            v125[1] = 1107296256;
            v125[2] = sub_1000D6C80;
            v125[3] = &unk_1005D3DA0;
            v26 = _Block_copy(v125);

            sub_10046E570(a1, &aBlock);

            [(objc_class *)v24 addAnimations:v26];
            _Block_release(v26);
            v27 = swift_allocObject();
            *(v27 + 16) = v6;
            *(v27 + 24) = v8 > a2;
            v123 = sub_100475944;
            v124 = v27;
            aBlock = _NSConcreteStackBlock;
            v120 = 1107296256;
            v121 = sub_10013ABCC;
            v122 = &unk_1005D3DF0;
            v28 = _Block_copy(&aBlock);

            [(objc_class *)v24 addCompletion:v28];
            _Block_release(v28);

            v29 = *(v6 + 136);
            *(v6 + 136) = v24;
            LOBYTE(v26) = *(v6 + 144);
            *(v6 + 144) = v8 > a2;
            v3 = v24;
            sub_100470954(v29, v26);
            [v3 startAnimation];

LABEL_21:
            ++v7;

            if (v4 == v7)
            {
              goto LABEL_39;
            }
          }
        }

LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

      v23 = v15 & 0xFFFFFFFFFFFFFF8;
      v4 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_17;
      }

LABEL_39:
      if (!v110)
      {
        v3 = v116;
        sub_100477738(a1, a2);

        goto LABEL_7;
      }

      v32 = *(v116 + 208);
      if (v32)
      {
        v33 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
        if (v33)
        {
          v4 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
          v2 = *(v116 + 48);
          if (*(v2 + 16))
          {
            if (*(v2 + 32) > a2)
            {
              goto LABEL_44;
            }
          }

          else if (a2 < 0.0)
          {
LABEL_44:
            v2 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
            LOBYTE(v6) = v116;
            v3 = v32;
            sub_1004709A8(v33, v4);
            v34 = v2;
            [v34 setBackgroundColor:v33];

            goto LABEL_7;
          }

          v35 = *&v32[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
          v6 = v32;
          sub_1004709A8(v33, v4);
          v36 = [v35 backgroundColor];
          if (v36)
          {
            v7 = v36;
            sub_100009130(0, &unk_1006169D0, UIColor_ptr);
            v37 = v4;
            v3 = sub_1004BCFA4();

            if (v3)
            {

              goto LABEL_7;
            }
          }

          v38 = *(v2 + 16);
          if (v38)
          {
            v16 = *(v2 + 32);
            v17 = *(v2 + 32 + 56 * v38 - 48);
          }

          else
          {
            v16 = 0.0;
            v17 = 0.0;
          }

          v2 = v116;
          v3 = objc_opt_self();
          v8 = v17 - v16;
          v18 = swift_allocObject();
          v18[2] = v6;
          v18[3] = v33;
          v18[4] = v4;
          v123 = sub_1004759FC;
          v124 = v18;
          aBlock = _NSConcreteStackBlock;
          v120 = 1107296256;
          v121 = sub_1000D6C80;
          v122 = &unk_1005D3E90;
          v19 = _Block_copy(&aBlock);
          v6 = v6;
          v4 = v4;
          v20 = v33;

          [v3 animateWithDuration:v19 animations:v8];

          _Block_release(v19);
        }
      }

LABEL_7:
      v15 = v111;
      if (v5 == v111)
      {

        v3 = v108;
        break;
      }
    }
  }

LABEL_53:
  if ((*(v3 + 120) & 1) == 0 && (*(v3 + 57) & 1) == 0)
  {
    v39 = *(v3 + 112);
    if (v39)
    {
      v40 = *(v39 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
      if (v40)
      {
        v41 = *(a1 + 200);
        v7 = v3;
        v15 = v40;
        [v41 lineHeight];
        v8 = vabdd_f64(v42 * *(a1 + 256) + *(a1 + 464) + *(a1 + 464), CGRectGetHeight(*(v3 + 80))) * 0.5;
        v11 = *(a1 + 504);
        if (*(v3 + 72) > a2)
        {
          if (*(v3 + 64) > a2)
          {
            *(v3 + 128) = 0;

            if (*(v3 + 58))
            {
              v43 = *(v3 + 80);
              v44 = *(v3 + 88);
              v45 = *(v3 + 96);
              v46 = *(v3 + 104);
              v47 = v15;
              v126.origin.x = v43;
              v126.origin.y = v44;
              v126.size.width = v45;
              v126.size.height = v46;
              v48 = v8 * 0.5 + CGRectGetWidth(v126);
              [v47 frame];
              [v47 setFrame:v48];
            }

            else
            {
              v47 = v15;
            }

            [v47 frame];
            [v47 setFrame:{v65, v66, v8, v67, v108}];
            goto LABEL_85;
          }

          sub_100473E00(a2);
          v5 = v51;
          a1 = v52;
          v53 = sub_100473FF8(a2);
          v4 = v53;
          v3 = v54;
          if (v5 && v53)
          {
            v55 = *(v7 + 128);
            if (v55 && v53 == v55)
            {

              return;
            }

            LOBYTE(v6) = *(v7 + 58);
            v2 = *(v7 + 16);
            v23 = v2 >> 62;
            if (v6)
            {
              if (!v23)
              {
                if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
LABEL_91:
                  if ((v2 & 0xC000000000000001) != 0)
                  {

                    v75 = sub_1004BD484();

                    v68 = *(v75 + 104);

                    swift_unknownObjectRelease();
                    if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
                    {
LABEL_95:
                      if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
LABEL_96:
                        if ((v68 & 0xC000000000000001) != 0)
                        {
                          goto LABEL_194;
                        }

                        if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
                        {
                          v69 = *(v68 + 32);
                          goto LABEL_115;
                        }

                        __break(1u);
                        goto LABEL_196;
                      }

LABEL_144:

                      goto LABEL_145;
                    }

LABEL_137:
                    if (sub_1004BD6A4())
                    {
                      goto LABEL_96;
                    }

                    goto LABEL_144;
                  }

                  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v68 = *(*(v2 + 32) + 104);

                    if ((v68 & 0x8000000000000000) == 0 && (v68 & 0x4000000000000000) == 0)
                    {
                      goto LABEL_95;
                    }

                    goto LABEL_137;
                  }

                  goto LABEL_140;
                }

LABEL_134:

                goto LABEL_145;
              }

LABEL_131:
              if (sub_1004BD6A4())
              {
                goto LABEL_91;
              }

              goto LABEL_134;
            }

LABEL_101:
            if (v23)
            {
              v70 = sub_1004BD6A4();
              if (!v70)
              {
                goto LABEL_134;
              }
            }

            else
            {
              v70 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v70)
              {
                goto LABEL_134;
              }
            }

            v71 = v70 - 1;
            if (__OFSUB__(v70, 1))
            {
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            if ((v2 & 0xC000000000000001) != 0)
            {
LABEL_141:

              v76 = sub_1004BD484();

              v72 = *(v76 + 104);

              swift_unknownObjectRelease();
              if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
              {
                goto LABEL_143;
              }

              goto LABEL_109;
            }

            if ((v71 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_175:
              __break(1u);
            }

            else if (v71 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v72 = *(*(v2 + 8 * v71 + 32) + 104);

              if (v72 < 0 || (v72 & 0x4000000000000000) != 0)
              {
LABEL_143:
                v73 = sub_1004BD6A4();
                if (!v73)
                {
                  goto LABEL_144;
                }

                goto LABEL_110;
              }

LABEL_109:
              v73 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v73)
              {
                goto LABEL_144;
              }

LABEL_110:
              v22 = __OFSUB__(v73, 1);
              v74 = v73 - 1;
              if (!v22)
              {
                if ((v72 & 0xC000000000000001) != 0)
                {
                  goto LABEL_194;
                }

                if ((v74 & 0x8000000000000000) == 0)
                {
                  if (v74 < *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    v69 = *(v72 + 8 * v74 + 32);
                    while (1)
                    {
LABEL_115:

                      if (v69 == v4)
                      {
                        v10 = 1.0;
                      }

                      else
                      {
LABEL_145:
                        v77 = *(v4 + 64);
                        if (!v77 || (v10 = 0.5, v77 >= 3))
                        {
                          if (!v3 || (, v78 = sub_1004BBFB4(), , v10 = 0.25, v78 >= 3))
                          {
                            v10 = 0.12;
                          }
                        }
                      }

                      if (v6)
                      {
                        v79 = *(v4 + 152) - v11 * v10 - v8;
                        [v15 frame];
                        v81 = v80;
                        v82 = v7;
                        v83 = CGRectGetWidth(*(v7 + 80)) - v79;
                        goto LABEL_183;
                      }

                      v9 = *(v4 + 16);
                      a2 = *(v4 + 24);
                      v71 = *(v4 + 32);
                      v2 = *(v4 + 40);
                      v85 = *(v4 + 48);
                      v84 = *(v4 + 56);
                      v86 = *(v4 + 64);
                      v6 = *(v5 + 104);
                      if (v6 >> 62)
                      {
                        v116 = *(v4 + 56);
                        v118 = *(v4 + 48);
                        v87 = sub_1004BD6A4();
                        v85 = v118;
                        v84 = v116;
                        if (!v87)
                        {
LABEL_172:

                          if (!v2)
                          {
                            goto LABEL_190;
                          }

LABEL_179:

                          goto LABEL_180;
                        }
                      }

                      else
                      {
                        v87 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (!v87)
                        {
                          goto LABEL_172;
                        }
                      }

                      v114 = v86;
                      v88 = v87 - 1;
                      if (__OFSUB__(v87, 1))
                      {
                        goto LABEL_175;
                      }

                      v116 = v84;
                      v118 = v85;
                      if ((v6 & 0xC000000000000001) != 0)
                      {
                        goto LABEL_177;
                      }

                      if ((v88 & 0x8000000000000000) != 0)
                      {
                        __break(1u);
                      }

                      else if (v88 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        v89 = *(v6 + 8 * v88 + 32);
                        v91 = *(v89 + 16);
                        v90 = *(v89 + 24);
                        v93 = *(v89 + 32);
                        v92 = *(v89 + 40);
                        v117 = *(v89 + 48);
                        v115 = *(v89 + 56);
                        v113 = *(v89 + 64);

                        if (!v2)
                        {
                          goto LABEL_178;
                        }

                        goto LABEL_159;
                      }

                      __break(1u);
LABEL_194:
                      v69 = sub_1004BD484();
                      swift_unknownObjectRelease();
                    }
                  }

                  goto LABEL_198;
                }

LABEL_197:
                __break(1u);
LABEL_198:
                __break(1u);
                return;
              }

LABEL_196:
              __break(1u);
              goto LABEL_197;
            }

            __break(1u);
LABEL_177:

            v95 = sub_1004BD484();

            v96 = v95;
            v91 = *(v95 + 16);
            v90 = *(v95 + 24);
            v93 = *(v95 + 32);
            v92 = v96[5];
            v117 = v96[6];
            v115 = v96[7];
            v113 = v96[8];

            swift_unknownObjectRelease();
            if (v2)
            {
LABEL_159:
              if (!v92 || *&v9 != v91 || a2 != v90)
              {
                goto LABEL_179;
              }

              if (v71 == v93 && v92 == v2)
              {
              }

              else
              {
                v94 = sub_1004BD9C4();

                if ((v94 & 1) == 0)
                {
                  goto LABEL_180;
                }
              }

              if (v118 == v117 && v116 == v115)
              {

                if (v114 == v113 && a1)
                {
LABEL_191:
                  MaxX = *(a1 + 176);
LABEL_182:
                  [v15 frame];
                  v79 = v98;
                  v81 = v99;
                  v83 = v8 + v11 * v10 + MaxX;
                  v82 = v7;
LABEL_183:
                  [v15 frame];
                  v101 = v100;

                  v102 = *(v82 + 112);
                  if (v102)
                  {
                    v103 = *(v4 + 24) - *(v4 + 16);
                    v104 = objc_opt_self();
                    v105 = swift_allocObject();
                    *(v105 + 16) = v102;
                    *(v105 + 24) = v79;
                    *(v105 + 32) = v81;
                    *(v105 + 40) = v83;
                    *(v105 + 48) = v101;
                    v123 = sub_100475988;
                    v124 = v105;
                    aBlock = _NSConcreteStackBlock;
                    v120 = 1107296256;
                    v121 = sub_1000D6C80;
                    v122 = &unk_1005D3E40;
                    v106 = _Block_copy(&aBlock);
                    v107 = v102;

                    [v104 animateWithDuration:196609 delay:v106 options:0 animations:v103 completion:0.0];
                    _Block_release(v106);
                  }

                  else
                  {
                  }

                  *(v7 + 128) = v4;
                  goto LABEL_187;
                }
              }

              else
              {
LABEL_180:
              }
            }

            else
            {
LABEL_178:
              if (v92)
              {
                goto LABEL_179;
              }

LABEL_190:

              if (a1)
              {
                goto LABEL_191;
              }
            }

            MaxX = CGRectGetMaxX(*(v4 + 152));
            goto LABEL_182;
          }

          goto LABEL_87;
        }

        if (*(v3 + 58))
        {
          v47 = v15;
          [v47 frame];
          [v47 setFrame:{-(v11 + v8), v49, v11 + v8 + CGRectGetWidth(*(v3 + 80)), v50, v108}];
LABEL_85:

          goto LABEL_188;
        }

        v56 = *(v3 + 16);
        if (v56 >> 62)
        {
          v57 = sub_1004BD6A4();
          if (!v57)
          {
            goto LABEL_188;
          }
        }

        else
        {
          v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v57)
          {
LABEL_188:
            [v15 setNeedsDisplay];

            return;
          }
        }

        v2 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        else if ((v56 & 0xC000000000000001) == 0)
        {
          if ((v2 & 0x8000000000000000) != 0)
          {
            __break(1u);
            goto LABEL_124;
          }

          if (v2 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_127;
          }

          v2 = *(v56 + 8 * v2 + 32);

LABEL_75:
          a1 = *(v2 + 104);
          if (!(a1 >> 62))
          {
            v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v58)
            {
              goto LABEL_187;
            }

LABEL_77:
            v3 = v58 - 1;
            if (!__OFSUB__(v58, 1))
            {
              if ((a1 & 0xC000000000000001) == 0)
              {
                if ((v3 & 0x8000000000000000) != 0)
                {
                  __break(1u);
                }

                else if (v3 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  v59 = *(a1 + 8 * v3 + 32);

LABEL_82:
                  v60 = v59[19];
                  v61 = v59[20];
                  v62 = v59[21];
                  v63 = v59[22];
                  v64 = v15;
                  v127.origin.x = v60;
                  v127.origin.y = v61;
                  v127.size.width = v62;
                  v127.size.height = v63;
                  CGRectGetMaxX(v127);
                  [v64 frame];
                  [v64 setFrame:?];

                  goto LABEL_188;
                }

                __break(1u);
                goto LABEL_131;
              }

LABEL_128:

              v59 = sub_1004BD484();

              goto LABEL_82;
            }

LABEL_127:
            __break(1u);
            goto LABEL_128;
          }

LABEL_124:
          v58 = sub_1004BD6A4();
          if (!v58)
          {
            goto LABEL_187;
          }

          goto LABEL_77;
        }

        v2 = sub_1004BD484();

        goto LABEL_75;
      }
    }
  }
}

void sub_100473E00(double a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (v3 >> 62)
  {
LABEL_28:
    v4 = sub_1004BD6A4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
LABEL_3:

      for (i = 4; ; ++i)
      {
        v6 = i - 4;
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = sub_1004BD484();
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }
        }

        v8 = *(v7 + 48);
        v9 = *(v8 + 16);
        if (v9)
        {
          v10 = *(v8 + 32);
          v11 = *(v8 + 32 + 56 * v9 - 48);

          if (v10 > v11)
          {
            __break(1u);
LABEL_26:
            __break(1u);
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        else
        {

          v10 = 0.0;
          v11 = 0.0;
        }

        if (v10 <= a1 && v11 > a1)
        {
          break;
        }

        v13 = i - 3;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_26;
        }

        if (v13 == v4)
        {

          return;
        }
      }

      swift_beginAccess();
      v14 = *(v1 + 16);
      if ((v14 & 0xC000000000000001) != 0)
      {
        sub_1004BD484();
      }

      else
      {
        if (v6 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_32:
          __break(1u);
          return;
        }
      }

      swift_endAccess();
      if (!__OFADD__(v6, 1))
      {
        v16 = _s4WordCMa(0, v15);

        Array.subscript.getter(v16, v17);

        return;
      }

      __break(1u);
      goto LABEL_32;
    }
  }
}

uint64_t sub_100473FF8(double a1)
{
  swift_beginAccess();

  v3 = sub_100474994(v2);

  if (v3 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v5 = v3 & 0xC000000000000001;
    v6 = 4;
    while (1)
    {
      v7 = v6 - 4;
      if (v5)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }
      }

      v9 = *(v8 + 16);
      v10 = *(v8 + 24);

      if (v9 > v10)
      {
        goto LABEL_23;
      }

      if (v9 <= a1 && v10 > a1)
      {
        break;
      }

      v12 = v6 - 3;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_24;
      }

      ++v6;
      if (v12 == i)
      {
        goto LABEL_16;
      }
    }

    if (v5)
    {
      v14 = sub_1004BD484();
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (!__OFADD__(v7, 1))
      {
LABEL_19:
        v16 = v14;
        v17 = _s8SyllableCMa(0, v15);
        Array.subscript.getter(v17, &v18);

        return v16;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_16:

  return 0;
}

id sub_100474188(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = *(v3 + 112);
  if (v8)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 88);
    v11 = *(v3 + 96);
    v12 = *(v3 + 104);
    v13 = &selRef_values;
    v14 = v8;
    [v14 setFrame:{v9, v10, v11, v12}];
    v15 = sub_1004723B4();
    if (!v15)
    {
      v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
    }

    v67 = v15;
    [v15 setFrame:{0.0, 0.0, *(v3 + 96), *(v3 + 104)}];
  }

  else
  {
    v16 = *(v3 + 80);
    v17 = *(v3 + 88);
    v18 = *(v3 + 96);
    v19 = *(v3 + 104);
    v20 = *(v3 + 58);
    v21 = *(v4 + 57);
    v22 = _s4LineC8LineViewCMa(a1, a2);
    v23 = v5;
    v24 = objc_allocWithZone(v22);
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = 0;
    *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = 0;
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind] = v6 & 1;
    memcpy(&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs], v23, 0x2B0uLL);
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_animationKind] = v21;
    v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_direction] = v20;
    sub_10046E570(v23, aBlock);
    v73.receiver = v24;
    v73.super_class = v22;
    v13 = &selRef_values;
    v25 = objc_msgSendSuper2(&v73, "initWithFrame:", v16, v17, v18, v19);
    v26 = v25;
    if ((v21 & 1) == 0)
    {
      v27 = v25;
      v72 = v7;
      v28 = [v7 CGColor];
      v29 = [objc_allocWithZone(CALayer) init];
      [v29 setBackgroundColor:v28];
      if (qword_100614E78 != -1)
      {
        swift_once();
      }

      v30 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v30 + 40)))
      {
        v31 = [v27 layer];
        [v31 addSublayer:v29];

        v28 = v31;
      }

      v32 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
      *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer] = v29;

      v33 = sub_100474CD4(v6 & 1, a3, v20);
      v34 = *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
      *&v27[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView] = v33;

      v7 = v72;
    }

    v35 = *(v4 + 96);
    v36 = *(v4 + 104);
    v37 = objc_allocWithZone(UIView);
    v14 = v26;
    v67 = [v37 initWithFrame:{0.0, 0.0, v35, v36}];
    v38 = *(v4 + 112);
    *(v4 + 112) = v14;

    v5 = a3;
  }

  v65 = *(v4 + 57);
  if (v65 == 1)
  {
    v39 = 61;
    if (v6)
    {
      v39 = 62;
    }

    v40 = v5[v39];
    v41 = v40;
    v42 = v7;
  }

  else
  {
    v7 = 0;
    v40 = 0;
  }

  swift_beginAccess();
  v43 = *(v4 + 16);
  if (v43 >> 62)
  {
LABEL_34:
    v44 = sub_1004BD6A4();
    v45 = v67;
    if (v44)
    {
      goto LABEL_21;
    }

LABEL_35:
    v43 = 0;
    v13 = 0;
    if ((v65 & 1) == 0)
    {
LABEL_36:
      if (qword_100614E78 != -1)
      {
        swift_once();
      }

      v55 = static LyricsOptionsManager.shared;
      if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v55 + 40)))
      {
        [v14 setMaskView:{v45, v64}];
        goto LABEL_46;
      }
    }

    goto LABEL_40;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v45 = v67;
  if (!v44)
  {
    goto LABEL_35;
  }

LABEL_21:
  if (v44 < 1)
  {
    __break(1u);
    goto LABEL_49;
  }

  v64 = v14;

  v69 = 0;
  v70 = 0;
  v14 = 0;
  v71 = v44;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v49 = sub_1004BD484();
    }

    else
    {
      v49 = *(v43 + 8 * v14 + 32);
    }

    v50 = swift_allocObject();
    v50[2] = v49;
    memcpy(v50 + 3, v5, 0x2B0uLL);
    v50[89] = v7;
    v50[90] = v40;
    v50[91] = v45;
    if (*(v49 + 208))
    {
      sub_10046E570(v5, aBlock);

      v46 = v45;
      sub_1004709A8(v7, v40);
      sub_100478290(v5, v7, v40);
      v48 = v47;
      [v46 addSubview:v47];
    }

    else
    {
      v68 = objc_opt_self();
      v51 = swift_allocObject();
      *(v51 + 16) = sub_100475750;
      *(v51 + 24) = v50;
      sub_10046E570(v5, aBlock);

      v52 = v45;
      v53 = v7;
      sub_1004709A8(v7, v40);

      sub_10003CC4C(v70, v69);
      v5 = swift_allocObject();
      v70 = sub_1000081FC;
      v5[2] = sub_1000081FC;
      v5[3] = v51;
      aBlock[4] = sub_1000E6038;
      v75 = v5;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100008224;
      aBlock[3] = &unk_1005D3D50;
      v7 = _Block_copy(aBlock);
      v13 = v75;

      [v68 performWithoutAnimation:v7];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
        goto LABEL_34;
      }

      v69 = v51;
      v7 = v53;
      v5 = a3;
      v45 = v67;
    }

    v14 = v14 + 1;
  }

  while (v71 != v14);

  v14 = v64;
  v13 = v69;
  v43 = v70;
  if ((v65 & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_40:
  [v14 addSubview:{v45, v64}];
  if (qword_100614E78 != -1)
  {
LABEL_49:
    swift_once();
  }

  v56 = static LyricsOptionsManager.shared;
  if ((os_variant_has_internal_content() & 1) != 0 && sub_10043EA2C(9, *(v56 + 40)))
  {
    v57 = objc_opt_self();
    v58 = [v57 grayColor];
    [v14 setBackgroundColor:v58];

    v59 = [v57 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v61, v60 & 1, v62);
LABEL_46:

    sub_1002AD70C(v7, v40);
    goto LABEL_47;
  }

  sub_1002AD70C(v7, v40);

LABEL_47:
  sub_10003CC4C(v43, v13);
  return v14;
}

void *sub_100474994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD484();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 104);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_1004BD6A4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1004BD6A4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD494();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v7)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v17 = v12 + 8 * v13 + 32;
          v27 = v12;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_100475A08();
            for (i = 0; i != v15; ++i)
            {
              sub_100003ABC(&qword_100615E98, &unk_1004EBC70);
              v19 = sub_10024DF2C(v31, i, v6);
              v21 = *v20;

              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            _s8SyllableCMa(0, v11);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1004BD6A4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

char *sub_100474CD4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  [*(a2 + 200) lineHeight];
  v9 = v8 * *(a2 + 256) + *(a2 + 464) + *(a2 + 464);
  [v4 frame];
  v10 = vabdd_f64(v9, CGRectGetHeight(v30)) * 0.5;
  if (a3)
  {
    [v4 frame];
    v11 = v10 * 0.5 + CGRectGetWidth(v31);
  }

  else
  {
    v11 = -v10;
  }

  [v4 frame];
  v13 = v10 + v10 + CGRectGetHeight(v32);
  v14 = 488;
  if (a1)
  {
    v14 = 496;
  }

  v15 = *(a2 + v14);
  v16 = *(a2 + 504);
  v17 = type metadata accessor for LineProgressGradientView(0, v12);
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v19 = &v18[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView(0, v21);
  v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v23 = v15;
  *&v18[v20] = [v22 init];
  v24 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v18[v24] = [objc_allocWithZone(UIView) init];
  *&v18[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = v23;
  *&v18[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = v16;
  v18[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a3 & 1;
  v29.receiver = v18;
  v29.super_class = v17;
  v25 = v23;
  v26 = objc_msgSendSuper2(&v29, "initWithFrame:", v11, -v10, v10, v13);
  [v26 setClipsToBounds:{1, v29.receiver, v29.super_class}];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v26 addSubview:*&v26[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v27 = static LyricsOptionsManager.shared;
  if (!os_variant_has_internal_content() || !sub_10043EA2C(9, *(v27 + 40)))
  {
    [v4 addSubview:v26];
  }

  return v26;
}

void sub_100475018()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, "layoutSubviews");
  [*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 200] lineHeight];
  [v0 frame];
  CGRectGetHeight(v15);
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer];
  if (v1)
  {
    v2 = v1;
    [v0 frame];
    v3 = -CGRectGetWidth(v16);
    [v0 frame];
    v4 = -CGRectGetHeight(v17);
    [v0 frame];
    v5 = CGRectGetWidth(v18) * 3.0;
    [v0 frame];
    [v2 setFrame:{v3, v4, v5, CGRectGetHeight(v19) * 3.0}];
  }

  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v6)
  {
    v7 = v6;
    [v0 frame];
    v8 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v9 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
    v10 = *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
    v11 = v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16];
    *v8 = v12;
    *(v8 + 1) = v13;
    v8[16] = 0;
    sub_1004B5984(v9, v10, v11);
  }
}

void sub_1004751C4()
{
  v7.receiver = v0;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, "tintColorDidChange");
  v1 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v2 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v3 = *v2;
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v1[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v2;
    sub_100009130(0, &unk_1006169D0, UIColor_ptr);
    v5 = v3;
    v6 = v1;
    if ((sub_1004BCFA4() & 1) == 0)
    {
      sub_1004B5EA0();
    }
  }
}

void sub_1004752F8(uint64_t a1)
{
  v9.receiver = v1;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "traitCollectionDidChange:", a1);
  v3 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView];
  if (v3)
  {
    if (v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_kind])
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 496];
    }

    else
    {
      v4 = &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_specs + 488];
    }

    v5 = *v4;
    v6 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color];
    *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = *v4;
    sub_100009130(0, &unk_1006169D0, UIColor_ptr);
    v7 = v5;
    v8 = v3;
    if ((sub_1004BCFA4() & 1) == 0)
    {
      sub_1004B5EA0();
    }
  }
}

uint64_t sub_1004754F0()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10047559C()
{
  result = qword_100615E30;
  if (!qword_100615E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615E30);
  }

  return result;
}

unint64_t sub_1004755F4(uint64_t a1, uint64_t a2)
{
  result = qword_100615E68;
  if (!qword_100615E68)
  {
    _s4LineCMa(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615E68);
  }

  return result;
}

uint64_t sub_100475654()
{

  v1 = *(v0 + 712);
  if (v1)
  {
  }

  return swift_deallocObject();
}

void sub_100475750()
{
  v1 = *(v0 + 728);
  sub_100478290(v0 + 24, *(v0 + 712), *(v0 + 720));
  v3 = v2;
  [v1 addSubview:v2];
}

uint64_t sub_1004757BC()
{

  return swift_deallocObject();
}

uint64_t sub_100475804(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047581C()
{

  return swift_deallocObject();
}

uint64_t sub_10047590C()
{

  return swift_deallocObject();
}

uint64_t sub_100475950()
{

  return swift_deallocObject();
}

id sub_100475988()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
  if (result)
  {
    return [result setFrame:{*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48)}];
  }

  return result;
}

uint64_t sub_1004759B4()
{

  return swift_deallocObject();
}

unint64_t sub_100475A08()
{
  result = qword_100615EA0;
  if (!qword_100615EA0)
  {
    sub_100003B68(&qword_100615E98, &unk_1004EBC70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100615EA0);
  }

  return result;
}

uint64_t sub_100475A6C()
{

  return swift_deallocObject();
}

uint64_t sub_100475B70()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void *sub_100475BEC(void *result, char a2, uint64_t a3)
{
  v3 = result[23];
  if (v3)
  {
    if (a2)
    {
      v4 = xmmword_1004D9D20;
      v5 = xmmword_1004D9B70;
      v6 = 0uLL;
    }

    else
    {
      CGAffineTransformMakeTranslation(&v7, 0.0, -*(a3 + 624));
      v5 = *&v7.a;
      v4 = *&v7.c;
      v6 = *&v7.tx;
    }

    *&v7.a = v5;
    *&v7.c = v4;
    *&v7.tx = v6;
    return [v3 setTransform:&v7];
  }

  return result;
}

void sub_100475C6C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a1)
  {
    v3 = *(a2 + 136);
    *(a2 + 136) = (a3 & 1) == 0;
    v4 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100470954(v3, v4);
  }
}

id sub_100475C98(uint64_t a1)
{
  result = *(a1 + 184);
  if (result)
  {
    v2[0] = 0x3FF0000000000000;
    v2[1] = 0;
    v2[2] = 0;
    v2[3] = 0x3FF0000000000000;
    v2[4] = 0;
    v2[5] = 0;
    return [result setTransform:v2];
  }

  return result;
}

void sub_100475CE0(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v2 = *(a2 + 136);
    *(a2 + 136) = 0;
    v3 = *(a2 + 144);
    *(a2 + 144) = 2;
    sub_100470954(v2, v3);
  }
}

char *sub_100475DB8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 192) - *(v0 + 152);
  MaxX = CGRectGetMaxX(*(v0 + 200));
  Height = CGRectGetHeight(*(v0 + 152));
  v7 = *(v0 + 184);
  if (v7)
  {
    v8 = *(v0 + 152);
    v9 = *(v0 + 160);
    v10 = *(v0 + 168);
    v11 = *(v0 + 176);
    v12 = v7;
    [v12 setFrame:{v8, v9, v10, v11}];
    [*&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] setFrame:{v2, v1, MaxX, Height}];
  }

  else
  {
    v13 = *(v0 + 104);
    v14 = *(v0 + 112);
    v15 = *(v0 + 96);
    v16 = *(v0 + 120);
    v17 = *(v0 + 128);
    objc_allocWithZone(_s8SyllableC12SyllableViewCMa(v4, v5));
    v18 = v14;
    v19 = v0;
    v20 = CTRunRef.PartialRunView.init(run:range:textPosition:)(v18, v15, v13, v16, v17);
    v21 = [v20 setFrame:{v2, v1, MaxX, Height}];
    v22 = *(v0 + 152);
    v23 = *(v0 + 160);
    v24 = *(v0 + 168);
    v25 = *(v0 + 176);
    v27 = _s8SyllableC21SyllableContainerViewCMa(v21, v26);
    v28 = objc_allocWithZone(v27);
    *&v28[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView8Syllable21SyllableContainerView_syllableView] = v20;
    v32.receiver = v28;
    v32.super_class = v27;
    v29 = v20;
    v12 = objc_msgSendSuper2(&v32, "initWithFrame:", v22, v23, v24, v25);
    [v12 addSubview:{v29, v32.receiver, v32.super_class}];

    v30 = *(v19 + 184);
    *(v19 + 184) = v12;
  }

  return v12;
}

id sub_100476000(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100476038()
{

  sub_100470954(*(v0 + 136), *(v0 + 144));

  return swift_deallocClassInstance();
}

void sub_100476114(void *a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(v3 + 96);
  v7 = &off_1004C4000;
  if (v6)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = v6;
    *(v9 + 24) = v3;
    v10 = swift_allocObject();
    v38 = sub_100476E70;
    *(v10 + 16) = sub_100476E70;
    *(v10 + 24) = v9;
    v49 = sub_1000E639C;
    v50 = v10;
    aBlock = _NSConcreteStackBlock;
    v46 = 1107296256;
    v47 = sub_100008224;
    v48 = &unk_1005D4020;
    v11 = _Block_copy(&aBlock);
    v12 = v6;

    [v8 performWithoutAnimation:v11];
    _Block_release(v11);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
      __break(1u);
      return;
    }

    v37 = v9;
    v13 = v12;
    v7 = &off_1004C4000;
  }

  else
  {
    v14 = [objc_allocWithZone(_s13TextContainerC17TextContainerViewCMa(a1 a2))];
    v15 = *(v3 + 96);
    *(v3 + 96) = v14;
    v13 = v14;

    v37 = 0;
    v38 = 0;
  }

  v16 = *(v3 + 56);
  v44 = *(v16 + 16);
  if (v44)
  {
    v17 = v4 & 1;

    v41 = 0;
    v42 = 0;
    v18 = 0;
    v19 = *(v7 + 493);
    v20 = a3;
    v43 = v4 & 1;
    while (v18 < *(v16 + 16))
    {
      v23 = *(v16 + 8 * v18 + 32);
      v24 = swift_allocObject();
      *(v24 + 16) = v23;
      *(v24 + 24) = a1;
      *(v24 + 32) = v17;
      memcpy((v24 + 40), v20, 0x2B0uLL);
      *(v24 + 728) = v13;
      if (*(v23 + 112))
      {
        swift_retain_n();
        sub_10046E570(v20, &aBlock);
        v21 = a1;
        v22 = v13;
        v7 = sub_100474188(v21, v17, v20);
        [v22 addSubview:v7];
      }

      else
      {
        v40 = objc_opt_self();
        v25 = swift_allocObject();
        *(v25 + 16) = sub_100476D68;
        *(v25 + 24) = v24;
        swift_retain_n();
        sub_10046E570(v20, &aBlock);
        v26 = a1;
        v20 = v13;
        v27 = v13;

        sub_10003CC4C(v41, v42);
        v7 = swift_allocObject();
        v41 = sub_1000081FC;
        *(v7 + 2) = sub_1000081FC;
        *(v7 + 3) = v25;
        v49 = sub_1000E6038;
        v50 = v7;
        aBlock = _NSConcreteStackBlock;
        v46 = v19;
        v47 = sub_100008224;
        v48 = &unk_1005D3FA8;
        v28 = _Block_copy(&aBlock);
        v13 = v50;

        [v40 performWithoutAnimation:v28];

        _Block_release(v28);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          goto LABEL_21;
        }

        v42 = v25;
        v13 = v20;
        v20 = a3;
      }

      ++v18;
      v17 = v43;
      if (v44 == v18)
      {

        v7 = v41;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
    v7 = 0;
    v42 = 0;
LABEL_15:
    v20 = v37;
    if (qword_100614E78 == -1)
    {
      goto LABEL_16;
    }
  }

  swift_once();
LABEL_16:
  v30 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content())
  {
    if (sub_10043EA2C(9, *(v30 + 40)))
    {
      v31 = objc_opt_self();
      v32 = [v31 blackColor];
      [v13 setBackgroundColor:v32];

      v33 = [v31 yellowColor];
      UIView.Border.init(thickness:color:)();
      UIView.border.setter(v35, v34 & 1, v36);
    }
  }

  sub_10003CC4C(v38, v20);
  sub_10003CC4C(v7, v42);
}

void sub_1004766B4()
{
  v1 = *(v0 + 56);
  v38 = *(v1 + 16);
  if (v38)
  {
    v39 = v1 + 32;

    v40 = v1;

    v2 = 0;
    while (1)
    {
      if (v2 >= *(v40 + 16))
      {
        goto LABEL_59;
      }

      v41 = v2;
      v3 = *(v39 + 8 * v2);
      swift_beginAccess();
      v4 = v3;
      v5 = *(v3 + 16);
      if (!(v5 >> 62))
      {
        v0 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v0)
        {
          break;
        }

        goto LABEL_46;
      }

      v29 = *(v3 + 16);
      v30 = sub_1004BD6A4();
      v5 = v29;
      v0 = v30;
      v4 = v3;
      if (v0)
      {
        break;
      }

LABEL_46:
      v28 = v4;

LABEL_47:
      v31 = *(v28 + 112);
      v32 = v28;
      if (v31)
      {
        [v31 removeFromSuperview];
        v32 = v28;
        v33 = *(v28 + 112);
      }

      else
      {
        v33 = 0;
      }

      *(v32 + 112) = 0;

      v2 = v41 + 1;
      if (v41 + 1 == v38)
      {

        v0 = v36;
        goto LABEL_52;
      }
    }

    if (v0 >= 1)
    {
      v43 = v5 & 0xC000000000000001;
      v37 = v4;

      v6 = 0;
      v42 = v0;
      while (1)
      {
        if (v43)
        {
          v9 = sub_1004BD484();
        }

        else
        {
        }

        v44 = v9;
        v45 = v6;
        v10 = *(v9 + 104);
        v46 = v10;
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_39;
        }

        v11 = sub_1004BD6A4();
        if (v11)
        {
          break;
        }

LABEL_39:
        v0 = v44;
        v24 = *(v44 + 208);
        if (v24)
        {
          [v24 removeFromSuperview];
          v25 = *(v44 + 208);
        }

        else
        {
          v25 = 0;
        }

        *(v44 + 208) = 0;

        if (!*(v44 + 208))
        {
          v26 = *(v44 + 128);
          *(v44 + 128) = 0;
          v27 = *(v44 + 136);
          *(v44 + 136) = 2;
          sub_100470954(v26, v27);
        }

        v6 = v45 + 1;
        v7 = *(v44 + 128);
        *(v44 + 128) = 0;
        v8 = *(v44 + 136);
        *(v44 + 136) = 2;
        sub_100470954(v7, v8);

        if (v45 + 1 == v42)
        {

          v28 = v37;
          goto LABEL_47;
        }
      }

      v12 = 0;
      while (1)
      {
        if ((v46 & 0xC000000000000001) != 0)
        {
          v17 = sub_1004BD484();
          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
            goto LABEL_54;
          }
        }

        else
        {
          if (v12 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_59:
            __break(1u);
            break;
          }

          v17 = *(v46 + 32 + 8 * v12);

          v18 = __OFADD__(v12++, 1);
          if (v18)
          {
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
            goto LABEL_56;
          }
        }

        v0 = *(v17 + 88);
        if (!(v0 >> 62))
        {
          v19 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v19)
          {
            goto LABEL_26;
          }

          goto LABEL_15;
        }

        v19 = sub_1004BD6A4();
        if (v19)
        {
LABEL_26:
          if (v19 >= 1)
          {
            v20 = 0;
            while (1)
            {
              if ((v0 & 0xC000000000000001) != 0)
              {
                v22 = sub_1004BD484();
                v23 = *(v22 + 96);
                if (!v23)
                {
                  goto LABEL_34;
                }
              }

              else
              {
                v22 = *(v0 + 8 * v20 + 32);

                v23 = *(v22 + 96);
                if (!v23)
                {
LABEL_34:
                  v21 = 0;
                  goto LABEL_29;
                }
              }

              [v23 removeFromSuperview];
              v21 = *(v22 + 96);
LABEL_29:
              ++v20;
              *(v22 + 96) = 0;

              if (v19 == v20)
              {
                goto LABEL_15;
              }
            }
          }

          goto LABEL_55;
        }

LABEL_15:
        v13 = *(v17 + 184);
        if (v13)
        {
          [v13 removeFromSuperview];
          v14 = *(v17 + 184);
        }

        else
        {
          v14 = 0;
        }

        *(v17 + 184) = 0;

        v15 = *(v17 + 136);
        *(v17 + 136) = 0;
        v16 = *(v17 + 144);
        *(v17 + 144) = 2;
        sub_100470954(v15, v16);

        if (v12 == v11)
        {
          goto LABEL_39;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_52:
    v34 = *(v0 + 96);
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *(v0 + 96);
    }

    else
    {
LABEL_56:
      v35 = 0;
    }

    *(v0 + 96) = 0;
  }
}

uint64_t sub_100476BC4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100476C78()
{

  return swift_deallocObject();
}

void sub_100476D68()
{
  v1 = *(v0 + 728);
  v2 = sub_100474188(*(v0 + 24), *(v0 + 32), (v0 + 40));
  [v1 addSubview:v2];
}

uint64_t sub_100476DD0()
{

  return swift_deallocObject();
}

uint64_t sub_100476E18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100476E30()
{

  return swift_deallocObject();
}

void sub_100476E94()
{
  v1 = v0;
  v2 = *(v0 + 208);
  if (v2)
  {
    v3 = [v2 layer];
    [v3 removeAllAnimations];
  }

  if (*(v1 + 232))
  {

    sub_1004BC524();
  }

  *(v1 + 232) = 0;

  v4 = *(v1 + 208);
  if (v4)
  {
    v5 = v4;
    sub_1004792A8();
  }

  v6 = sub_10047879C(*(v1 + 104));
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_34;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v9 = 0;
    v28 = v7;
    v29 = v7 & 0xC000000000000001;
    v27 = v7 & 0xFFFFFFFFFFFFFF8;
    v25 = v1;
    v26 = v7 + 32;
    while (1)
    {
      if (v29)
      {
        v10 = sub_1004BD484();
        v11 = __OFADD__(v9++, 1);
        if (v11)
        {
          break;
        }

        goto LABEL_17;
      }

      if (v9 >= *(v27 + 16))
      {
        goto LABEL_33;
      }

      v10 = *(v26 + 8 * v9);

      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        break;
      }

LABEL_17:
      v12 = *(v10 + 96);
      if (v12)
      {
        v30 = *(v10 + 80);
        v31 = *(v10 + 64);
        v1 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v7 = *&v12[v1];
        if (v7 >> 62)
        {
          v13 = sub_1004BD6A4();
          if (!v13)
          {
LABEL_28:
            v18 = v12;
            goto LABEL_29;
          }
        }

        else
        {
          v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_28;
          }
        }

        if (v13 < 1)
        {
          goto LABEL_32;
        }

        v1 = v7 & 0xC000000000000001;
        v14 = v12;

        for (j = 0; j != v13; ++j)
        {
          if (v1)
          {
            v16 = sub_1004BD484();
          }

          else
          {
            v16 = *(v7 + 8 * j + 32);
          }

          v17 = v16;
          [v16 stopAnimation:0];
        }

LABEL_29:
        sub_1004714C8();
        v19 = CGPoint.center.unsafeMutableAddressor();
        swift_beginAccess();
        UIView.setAnchorPoint(_:preserveFrame:)(1, *v19, v19[1]);
        sub_100009130(0, &qword_100615B60, UIView_ptr);
        sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
        v20 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
        v21 = swift_allocObject();
        *(v21 + 16) = v12;
        *(v21 + 40) = v30;
        *(v21 + 24) = v31;
        v22 = v12;
        static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v20, 0, sub_10047A640, v21, 0, 0, 0.0);

        [v22 sizeToFit];

        v7 = v28;
        if (v9 == i)
        {
LABEL_30:

          v1 = v25;
          goto LABEL_36;
        }
      }

      else
      {

        if (v9 == i)
        {
          goto LABEL_30;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ;
  }

LABEL_36:
  v23 = *(v1 + 128);
  *(v1 + 128) = 0;
  v24 = *(v1 + 136);
  *(v1 + 136) = 2;
  sub_100470954(v23, v24);
}

void sub_100477250()
{
  v1 = *(v0 + 104);
  v23 = v1;
  if (v1 >> 62)
  {
    goto LABEL_30;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    while (1)
    {
      v3 = 0;
      while (1)
      {
        if ((v23 & 0xC000000000000001) != 0)
        {
          v8 = sub_1004BD484();
          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
            goto LABEL_27;
          }
        }

        else
        {
          if (v3 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(v23 + 32 + 8 * v3);

          v9 = __OFADD__(v3++, 1);
          if (v9)
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        v10 = *(v8 + 88);
        if (!(v10 >> 62))
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v11)
          {
            break;
          }

          goto LABEL_4;
        }

        v11 = sub_1004BD6A4();
        if (v11)
        {
          break;
        }

LABEL_4:
        v4 = *(v8 + 184);
        if (v4)
        {
          [v4 removeFromSuperview];
          v5 = *(v8 + 184);
        }

        else
        {
          v5 = 0;
        }

        *(v8 + 184) = 0;

        v6 = *(v8 + 136);
        *(v8 + 136) = 0;
        v7 = *(v8 + 144);
        *(v8 + 144) = 2;
        sub_100470954(v6, v7);

        if (v3 == v2)
        {
          goto LABEL_31;
        }
      }

      if (v11 >= 1)
      {
        break;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      v2 = sub_1004BD6A4();
      if (!v2)
      {
        goto LABEL_31;
      }
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_1004BD484();
        v15 = *(v14 + 96);
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v14 = *(v10 + 8 * v12 + 32);

        v15 = *(v14 + 96);
        if (!v15)
        {
LABEL_23:
          v13 = 0;
          goto LABEL_18;
        }
      }

      [v15 removeFromSuperview];
      v13 = *(v14 + 96);
LABEL_18:
      ++v12;
      *(v14 + 96) = 0;

      if (v11 == v12)
      {
        goto LABEL_4;
      }
    }
  }

LABEL_31:
  v16 = *(v22 + 208);
  if (v16)
  {
    [v16 removeFromSuperview];
    v17 = *(v22 + 208);
  }

  else
  {
    v17 = 0;
  }

  *(v22 + 208) = 0;

  if (!*(v22 + 208))
  {
    v18 = *(v22 + 128);
    *(v22 + 128) = 0;
    v19 = *(v22 + 136);
    *(v22 + 136) = 2;
    sub_100470954(v18, v19);
  }

  v20 = *(v22 + 128);
  *(v22 + 128) = 0;
  v21 = *(v22 + 136);
  *(v22 + 136) = 2;

  sub_100470954(v20, v21);
}

void sub_1004774B4(double a1, double a2, double a3, double a4)
{
  v5 = *(v4 + 176);
  *(v4 + 176) = a1;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 200) = a4;
  *(v4 + 216) = a1 - v5 + *(v4 + 216);
  v6 = *(v4 + 104);
  v17 = v6;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
  {
    v8 = 0;
    while ((v17 & 0xC000000000000001) != 0)
    {
      v9 = sub_1004BD484();
      v10 = __OFADD__(v8++, 1);
      if (v10)
      {
        goto LABEL_21;
      }

LABEL_11:
      v11 = *(v4 + 216);
      *(v9 + 192) = v11;
      *(v9 + 152) = CGRectOffset(*(v9 + 200), v11, 0.0);
      v12 = *(v9 + 88);
      if (v12 >> 62)
      {
        v13 = sub_1004BD6A4();
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_4;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_22;
      }

      v14 = 0;
      do
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = sub_1004BD484();
        }

        else
        {
          v15 = *(v12 + 8 * v14 + 32);
        }

        ++v14;
        v16 = *(v9 + 192);
        *(v15 + 104) = v16;
        *(v15 + 64) = CGRectOffset(*(v15 + 112), v16, 0.0);
      }

      while (v13 != v14);
LABEL_4:

      if (v8 == i)
      {
        return;
      }
    }

    if (v8 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v9 = *(v17 + 32 + 8 * v8);

    v10 = __OFADD__(v8++, 1);
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }
}

void sub_10047768C()
{
  v1 = *(v0 + 104);
  if (v1 >> 62)
  {
    v2 = sub_1004BD6A4();
    if (v2)
    {
LABEL_3:
      v3 = __OFSUB__(v2, 1);
      v4 = v2 - 1;
      if (v3)
      {
        __break(1u);
      }

      else if ((v1 & 0xC000000000000001) == 0)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v4 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return;
        }

        __break(1u);
        return;
      }

      sub_1004BD484();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }
  }
}

void sub_100477738(double *a1, double a2)
{
  v3 = v2;
  sub_100003ABC(&qword_100616B00, &qword_1004EBF30);
  __chkstk_darwin();
  *&v7 = &v79 - v6;
  v8 = *(v2 + 6);
  v9 = *(*&v8 + 16);
  if (!v9)
  {
    if (a2 >= 0.0)
    {
      goto LABEL_46;
    }

    goto LABEL_5;
  }

  if (*(*&v8 + 32) > a2)
  {
LABEL_5:
    if (v2[136] < 2u || *(v2 + 16))
    {
      v10 = *(v2 + 26);
      if (v10)
      {
        v11 = [v10 layer];
        [v11 removeAllAnimations];
      }

      if (*(v2 + 29))
      {

        sub_1004BC524();
      }

      *(v2 + 29) = 0;

      v12 = *(v2 + 26);
      if (v12)
      {
        v13 = v12;
        sub_1004792A8();
      }

      v85 = v8;
      v14 = sub_10047879C(*(v2 + 13));
      v15 = v14;
      v86 = 0;
      if (v14 >> 62)
      {
        goto LABEL_40;
      }

      for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1004BD6A4())
      {
        v82 = v7;
        v83 = a1;
        v84 = v3;
        a1 = 0;
        v90.super.isa = (v15 & 0xC000000000000001);
        v88 = v15 & 0xFFFFFFFFFFFFFF8;
        v87 = v15 + 32;
        v7 = COERCE_DOUBLE(&selRef_shuffleCommand);
        v89 = v15;
        while (1)
        {
          if (v90.super.isa)
          {
            v17 = sub_1004BD484();
            v18 = __OFADD__(a1, 1);
            a1 = (a1 + 1);
            if (v18)
            {
              break;
            }

            goto LABEL_23;
          }

          if (a1 >= *(v88 + 16))
          {
            goto LABEL_39;
          }

          v17 = *(v87 + 8 * a1);

          v18 = __OFADD__(a1, 1);
          a1 = (a1 + 1);
          if (v18)
          {
            break;
          }

LABEL_23:
          v19 = *(v17 + 96);
          if (v19)
          {
            v20 = *(v17 + 64);
            v91 = *(v17 + 80);
            v92 = v20;
            v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
            swift_beginAccess();
            v21 = *&v19[v15];
            if (v21 >> 62)
            {
              v22 = sub_1004BD6A4();
              if (!v22)
              {
LABEL_34:
                v27 = v19;
                goto LABEL_35;
              }
            }

            else
            {
              v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (!v22)
              {
                goto LABEL_34;
              }
            }

            if (v22 < 1)
            {
              goto LABEL_38;
            }

            v23 = v19;

            for (j = 0; j != v22; ++j)
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = sub_1004BD484();
              }

              else
              {
                v25 = *(v21 + 8 * j + 32);
              }

              v26 = v25;
              [v25 stopAnimation:0];
            }

LABEL_35:
            sub_1004714C8();
            v28 = CGPoint.center.unsafeMutableAddressor();
            swift_beginAccess();
            UIView.setAnchorPoint(_:preserveFrame:)(1, *v28, v28[1]);
            sub_100009130(0, &qword_100615B60, UIView_ptr);
            sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
            v3 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
            v29 = swift_allocObject();
            *(v29 + 16) = v19;
            *(v29 + 40) = v91;
            *(v29 + 24) = v92;
            v30 = v19;
            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v3, 0, sub_100479CE8, v29, 0, 0, 0.0);

            [v30 sizeToFit];

            v15 = v89;
            if (a1 == i)
            {
LABEL_36:

              v3 = v84;
              a1 = v83;
              v7 = v82;
              goto LABEL_42;
            }
          }

          else
          {

            if (a1 == i)
            {
              goto LABEL_36;
            }
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        ;
      }

LABEL_42:
      v31 = *(v3 + 16);
      *(v3 + 16) = 0;
      v32 = v3[136];
      v3[136] = 2;
      sub_100470954(v31, v32);
      v8 = v85;
      v9 = *(*&v85 + 16);
    }

    if (v9)
    {
      goto LABEL_44;
    }

LABEL_46:
    if (a2 < 0.0)
    {
      return;
    }

    goto LABEL_47;
  }

LABEL_44:
  if (*(*&v8 + 32) > a2)
  {
    return;
  }

LABEL_47:
  if (v3[136] >= 2u && !*(v3 + 16) && (v3[64] & 1) == 0)
  {
    v33 = *(v3 + 7);
    v34 = sub_10047879C(*(v3 + 13));
    v35 = v34;
    v36 = *(*&v8 + 16);
    if (v36)
    {
      v37 = *(*&v8 + 32 + 56 * v36 - 48) - *(*&v8 + 32);
    }

    else
    {
      v37 = 0.0;
    }

    v38 = v34 >> 62;
    if (v34 >> 62)
    {
      goto LABEL_86;
    }

    for (k = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); k >= 1; k = sub_1004BD6A4())
    {
      if (v37 <= 0.0)
      {
        break;
      }

      v40 = *(v3 + 16);
      *(v3 + 16) = 0;
      v41 = v3[136];
      v3[136] = 0;
      sub_100470954(v40, v41);
      v42 = *(v3 + 26);
      if (v42)
      {
        v43 = v42;
        sub_1004794C0(a1, v33, v37);
      }

      v44 = sub_1004BC4B4();
      (*(*(v44 - 8) + 56))(COERCE_DOUBLE(*&v7), 1, 1, v44);
      v45 = swift_allocObject();
      swift_weakInit();
      v46 = swift_allocObject();
      *(v46 + 16) = 0;
      *(v46 + 24) = 0;
      *(v46 + 32) = v45;
      *(v46 + 40) = v37;
      *(v3 + 29) = sub_100496E74(0, 0, *&v7, &unk_1004EBF40, v46);

      v47 = v37 / k * 0.4;
      if (v47 > 0.4)
      {
        v47 = 0.4;
      }

      *&v88 = v47;
      v33 = a1[31] + v33 * (a1[32] - a1[31]);
      if (v37 <= 3.0)
      {
        v48 = v37;
      }

      else
      {
        v48 = 3.0;
      }

      sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
      v89 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v48);
      v49 = *(v3 + 24);
      v50 = *(v3 + 25);
      sub_1004BCE24();
      v52 = v51;
      v54 = v53;
      if (v38)
      {
        v38 = sub_1004BD6A4();
      }

      else
      {
        v38 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v38)
      {
LABEL_81:

        break;
      }

      v55 = 0;
      v80 = v37 / vcvtd_n_f64_u64(k, 1uLL);
      *&v92 = v35 & 0xC000000000000001;
      *&v91 = v35 & 0xFFFFFFFFFFFFFF8;
      v85 = v50 - v54;
      v82 = (v49 - v52) * 0.5;
      v81 = &v95;
      v84 = v3;
      v83 = a1;
      v87 = v35;
      v86 = v38;
      while (v92)
      {
        v56 = sub_1004BD484();
        *&v7 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_84;
        }

LABEL_73:
        v57 = *(v56 + 96);
        if (!v57)
        {
          goto LABEL_68;
        }

        v58 = *(v3 + 22);
        v59 = *(v3 + 23);
        v60 = *(v56 + 64) - v58;
        v61 = *(v56 + 72) - v59;
        v62 = a1[78];
        v63 = v58 + (v60 + v82 + v33 * v60) * 0.5;
        v64 = v59 + (v61 + v85 + v33 * v61) * 0.25 - v62;
        v37 = *&v88 * *&v7;
        sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
        v65 = v57;
        v90.super.isa = v89;
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v90).super.isa;
        v67 = swift_allocObject();
        *(v67 + 16) = v65;
        *(v67 + 24) = v63;
        *(v67 + 32) = v64;
        *(v67 + 40) = v33;
        v97 = sub_100479C48;
        v98 = v67;
        aBlock = _NSConcreteStackBlock;
        v94 = 1107296256;
        v95 = sub_1000D6C80;
        v96 = &unk_1005D4140;
        v68 = _Block_copy(&aBlock);
        v69 = v65;

        [(objc_class *)isa addAnimations:v68];
        _Block_release(v68);
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v97 = sub_100479CA8;
        v98 = v70;
        aBlock = _NSConcreteStackBlock;
        v94 = 1107296256;
        v95 = sub_10013ABCC;
        v96 = &unk_1005D4190;
        v71 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v71];
        _Block_release(v71);
        [(objc_class *)isa startAnimationAfterDelay:v37];
        v72 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView5Glyph18GlyphContainerView_currentAnimators;
        swift_beginAccess();
        v73 = isa;
        sub_1004BC274();
        if (*((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v69 + v72) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();

        v74 = *(v56 + 96);
        v3 = v84;
        a1 = v83;
        v35 = v87;
        v38 = v86;
        if (v74)
        {
          v75 = v60 + v84[22];
          v76 = v61 - v62 + v84[23];
          v37 = v80 + v37;
          v77 = v74;
          sub_100471A4C(v90.super.isa, v75, v76, v37, v78);
        }

        else
        {
LABEL_68:
        }

        ++v55;
        if (*&v7 == v38)
        {
          goto LABEL_81;
        }
      }

      if (v55 >= *(v91 + 16))
      {
        goto LABEL_85;
      }

      v56 = *(v35 + 8 * v55 + 32);

      *&v7 = v55 + 1;
      if (!__OFADD__(v55, 1))
      {
        goto LABEL_73;
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      ;
    }
  }
}

void sub_100478290(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v59.origin.x = *(v4 + 176);
  v8 = *(v4 + 184);
  v9 = -v59.origin.x;
  v59.size.width = *(v4 + 192);
  v59.size.height = *(v4 + 200);
  v59.origin.y = v8;
  MaxX = CGRectGetMaxX(v59);
  Height = CGRectGetHeight(*(v4 + 176));
  v14 = *(v4 + 208);
  if (v14)
  {
    v15 = *&v14[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView];
    v16 = v14;
    v17 = v15;
    [v17 setFrame:{v9, v8, MaxX, Height}];
    [v16 setFrame:{*(v4 + 176), *(v4 + 184), *(v4 + 192), *(v4 + 200)}];
  }

  else
  {
    v18 = [objc_allocWithZone(_s4WordC8WordViewCMa(v11 v12))];
    v19 = *(a1 + 456);
    UIView.Shadow.init(color:opacity:radius:offset:)(v19, v58, 0.0, *(a1 + 464), 0.0, 0.0);
    v17 = v18;
    v20 = v19;
    v21 = [v17 layer];
    v22 = [v17 traitCollection];
    [v22 displayScale];
    v24 = v23;

    [v21 setRasterizationScale:v24];
    v25 = [v17 layer];
    [v25 setShouldRasterize:1];

    v26 = v58[0];
    UIView.shadow.setter(v58);

    v27 = *(v4 + 176);
    v28 = *(v4 + 184);
    v29 = *(v4 + 192);
    v30 = *(v4 + 200);
    v33 = objc_allocWithZone(_s4WordC17WordContainerViewCMa(v31, v32));
    sub_1004709A8(a2, a3);
    v34 = sub_10047902C(v17, a2, a3, v27, v28, v29, v30);
    sub_100479A1C(v58);
    v35 = *(v4 + 208);
    *(v4 + 208) = v34;
    v16 = v34;

    if (!*(v4 + 208))
    {
      v36 = *(v4 + 128);
      *(v4 + 128) = 0;
      v37 = *(v4 + 136);
      *(v4 + 136) = 2;
      sub_100470954(v36, v37);
    }
  }

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v38 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v38 + 40)))
  {
    v39 = objc_opt_self();
    v40 = [v39 blueColor];
    v41 = [v40 colorWithAlphaComponent:0.7];

    [v16 setBackgroundColor:v41];
    v42 = [v39 blackColor];
    UIView.Border.init(thickness:color:)();
    UIView.border.setter(v44, v43 & 1, v45);
  }

  v46 = *(v4 + 104);
  if (*(v4 + 64) == 1)
  {
    if (v46 >> 62)
    {
      v47 = sub_1004BD6A4();
      if (v47)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47)
      {
LABEL_13:
        if (v47 >= 1)
        {
          v48 = 0;
          do
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              sub_1004BD484();
            }

            else
            {
            }

            ++v48;
            v49 = sub_100475DB8();
            [v17 addSubview:v49];
          }

          while (v47 != v48);
          goto LABEL_28;
        }

        __break(1u);
LABEL_35:
        __break(1u);
        return;
      }
    }

LABEL_28:

    goto LABEL_31;
  }

  v50 = sub_10047879C(*(v4 + 104));
  v51 = v50;
  if (v50 >> 62)
  {
    v52 = sub_1004BD6A4();
    if (!v52)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v52 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v52)
    {
      goto LABEL_30;
    }
  }

  if (v52 < 1)
  {
    goto LABEL_35;
  }

  v53 = 0;
  do
  {
    if ((v51 & 0xC000000000000001) != 0)
    {
      sub_1004BD484();
    }

    else
    {
    }

    ++v53;
    v54 = sub_100471098();
    [v17 addSubview:v54];
  }

  while (v52 != v53);
LABEL_30:

LABEL_31:
  v55 = *(v4 + 208);
  *(v4 + 208) = v16;
  v16;

  if (!*(v4 + 208))
  {
    v56 = *(v4 + 128);
    *(v4 + 128) = 0;
    v57 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100470954(v56, v57);
  }
}

void *sub_10047879C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = _swiftEmptyArrayStorage;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD484();
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 88);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_1004BD6A4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v12 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_1004BD6A4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD494();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v7)
      {
        v16 = v12;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
        v12 = v16;
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v14 >> 1) - v13) < v8)
          {
            goto LABEL_43;
          }

          v32 = v3;
          v17 = v12 + 8 * v13 + 32;
          v27 = v12;
          if (v7)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_100479A70();
            for (i = 0; i != v15; ++i)
            {
              sub_100003ABC(&qword_100616350, &qword_1004EBF28);
              v19 = sub_10024DF2C(v31, i, v6);
              v21 = *v20;

              (v19)(v31, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            _s5GlyphCMa(0, v11);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v32;
          if (v8 >= 1)
          {
            v22 = *(v27 + 16);
            v5 = __OFADD__(v22, v8);
            v23 = v22 + v8;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_24;
        }
      }

      if (v8 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_1004BD6A4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

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
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1004BD6A4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_100478ADC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 96) = a1;
  *(v5 + 88) = a5;
  return _swift_task_switch(sub_100478B00, 0, 0);
}

uint64_t sub_100478B00()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 208);
    v0[13] = v2;
    if (v2)
    {
      v3 = v2;

      sub_1004BC474();
      v0[14] = sub_1004BC464();
      v5 = sub_1004BC3E4();
      v0[15] = v5;
      v0[16] = v4;

      return _swift_task_switch(sub_100478CC4, v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = *(v6 + 128);
  v8 = *(v6 + 136);
  sub_100470B28(v7, v8);

  if (v8 < 2)
  {
    sub_100470954(v7, v8);
    goto LABEL_11;
  }

  if (v7)
  {
LABEL_11:
    swift_beginAccess();
    v9 = swift_weakLoadStrong();
    if (v9)
    {
      v10 = *(v9 + 128);
      *(v9 + 128) = 1;
      v11 = *(v9 + 136);
      *(v9 + 136) = 2;
      sub_100470954(v10, v11);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_100478CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_100478D78;
  v2 = *(v0 + 96);

  return sub_100479CEC(v2);
}

uint64_t sub_100478D78()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return _swift_task_switch(sub_100478E98, v3, v2);
}

uint64_t sub_100478E98()
{
  v1 = *(v0 + 104);

  return _swift_task_switch(sub_100478F04, 0, 0);
}

uint64_t sub_100478F04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + 128);
    v3 = *(Strong + 136);
    sub_100470B28(v2, v3);

    if (v3 >= 2)
    {
      if (!v2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_100470954(v2, v3);
    }
  }

  swift_beginAccess();
  v4 = swift_weakLoadStrong();
  if (v4)
  {
    v5 = *(v4 + 128);
    *(v4 + 128) = 1;
    v6 = *(v4 + 136);
    *(v4 + 136) = 2;
    sub_100470954(v5, v6);
  }

LABEL_7:
  v7 = *(v0 + 8);

  return v7();
}

char *sub_10047902C(void *a1, void *a2, void *a3, double a4, double a5, double a6, double a7)
{
  v15 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
  *&v7[v15] = [objc_allocWithZone(UIView) init];
  *&v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_wordView] = a1;
  v16 = &v7[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
  *v16 = a2;
  *(v16 + 1) = a3;
  v17 = a1;
  v18 = sub_1004709A8(a2, a3);
  v26.receiver = v7;
  v26.super_class = _s4WordC17WordContainerViewCMa(v18, v19);
  v20 = objc_msgSendSuper2(&v26, "initWithFrame:", a4, a5, a6, a7);
  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v21 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v21 + 40)) || !a2)
  {
    [v20 addSubview:v17];
    sub_1002AD70C(a2, a3);
  }

  else
  {
    [v20 setMaskView:v17];
    v22 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView;
    v23 = *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
    [v20 bounds];
    [v23 setFrame:?];

    [*&v20[v22] setBackgroundColor:a2];
    v24 = *&v20[v22];
    [v20 addSubview:v24];
  }

  return v20;
}

void sub_1004792A8()
{
  v1 = v0;
  sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
  v2 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 1.5);
  v3 = sub_1004BBE24();
  v4 = [objc_opt_self() animationWithKeyPath:v3];

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  v6 = v2;
  CASpringAnimation.springParameters.setter(v6);
  v7 = v5;
  v8 = [v1 layer];
  [v8 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v7 setFromValue:isa];

  v10 = sub_1004BC6E4().super.super.isa;
  [v7 setToValue:v10];

  v11 = [v1 layer];
  v12 = [v7 keyPath];
  [v11 addAnimation:v7 forKey:v12];

  v13 = [v1 layer];
  [v13 setShadowOpacity:0.0];
}

void sub_1004794C0(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = *(a1 + 472) + (*(a1 + 480) - *(a1 + 472)) * a2;
  if (a3 <= 3.0)
  {
    v6 = a3;
  }

  else
  {
    v6 = 3.0;
  }

  sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
  v7 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, v6);
  v8 = sub_1004BBE24();
  v9 = [objc_opt_self() animationWithKeyPath:v8];

  v10 = v9;
  [v7 settlingDuration];
  [v10 setDuration:?];

  v11 = v7;
  CASpringAnimation.springParameters.setter(v11);
  v12 = v10;
  v13 = [v4 layer];
  [v13 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v12 setFromValue:isa];

  v15 = sub_1004BC5F4().super.super.isa;
  [v12 setToValue:v15];

  v16 = [v4 layer];
  v17 = [v12 keyPath];
  [v16 addAnimation:v12 forKey:v17];

  v19 = [v4 layer];
  *&v18 = v5;
  [v19 setShadowOpacity:v18];
}

id sub_100479728(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s4WordC17WordContainerViewCMa(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_1004798A4()
{

  sub_100470954(*(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t sub_100479908()
{
  sub_1004798A4();

  return swift_deallocClassInstance();
}

unint64_t sub_1004799BC(uint64_t a1, uint64_t a2)
{
  result = qword_1006162F0;
  if (!qword_1006162F0)
  {
    _s4WordCMa(0, a2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006162F0);
  }

  return result;
}

unint64_t sub_100479A70()
{
  result = qword_100616358;
  if (!qword_100616358)
  {
    sub_100003B68(&qword_100616350, &qword_1004EBF28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616358);
  }

  return result;
}

uint64_t sub_100479AD4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100479B0C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_100479B4C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_100478ADC(v7, a1, v4, v5, v6);
}

uint64_t sub_100479C10()
{

  return swift_deallocObject();
}

uint64_t sub_100479C58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100479C70()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_100479CB0()
{

  return swift_deallocObject();
}

uint64_t sub_100479CEC(double a1)
{
  *(v2 + 24) = v1;
  *(v2 + 16) = a1;
  sub_1004BC474();
  *(v2 + 32) = sub_1004BC464();
  v4 = sub_1004BC3E4();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return _swift_task_switch(sub_100479D88, v4, v3);
}

uint64_t sub_100479D88()
{
  if (v0[2] <= 0.0)
  {
    v4 = *(v0 + 3);
    v5 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
    *(v0 + 9) = v5;
    v6 = sub_1004BBE24();
    v7 = [objc_opt_self() animationWithKeyPath:v6];
    *(v0 + 10) = v7;

    v8 = v7;
    [v5 settlingDuration];
    [v8 setDuration:?];

    CASpringAnimation.springParameters.setter(v5);
    v9 = v8;
    v10 = [v4 layer];
    [v10 shadowOpacity];

    isa = sub_1004BC5F4().super.super.isa;
    [v9 setFromValue:isa];

    v12 = sub_1004BC6E4().super.super.isa;
    [v9 setToValue:v12];

    *(v0 + 11) = [v4 layer];
    v13 = [v9 keyPath];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1004BBE64();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    *(v0 + 12) = v17;
    v18 = swift_task_alloc();
    *(v0 + 13) = v18;
    *v18 = v0;
    v18[1] = sub_10047A3F4;

    return CALayer.addAsyncAnimation(_:forKey:)(v9, v15, v17);
  }

  else
  {
    v1 = swift_task_alloc();
    *(v0 + 7) = v1;
    *v1 = v0;
    v1[1] = sub_10047A060;
    v2 = v0[2];

    return static Task<>.sleep(for:)(v2);
  }
}

uint64_t sub_10047A060()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);
  if (v0)
  {
    v5 = sub_10047A5BC;
  }

  else
  {
    v5 = sub_10047A19C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10047A19C()
{
  v1 = v0[3];
  v2 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
  v0[9] = v2;
  v3 = sub_1004BBE24();
  v4 = [objc_opt_self() animationWithKeyPath:v3];
  v0[10] = v4;

  v5 = v4;
  [v2 settlingDuration];
  [v5 setDuration:?];

  CASpringAnimation.springParameters.setter(v2);
  v6 = v5;
  v7 = [v1 layer];
  [v7 shadowOpacity];

  isa = sub_1004BC5F4().super.super.isa;
  [v6 setFromValue:isa];

  v9 = sub_1004BC6E4().super.super.isa;
  [v6 setToValue:v9];

  v0[11] = [v1 layer];
  v10 = [v6 keyPath];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1004BBE64();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v0[12] = v14;
  v15 = swift_task_alloc();
  v0[13] = v15;
  *v15 = v0;
  v15[1] = sub_10047A3F4;

  return CALayer.addAsyncAnimation(_:forKey:)(v6, v12, v14);
}

uint64_t sub_10047A3F4()
{
  v1 = *v0;
  v2 = *(*v0 + 88);

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_10047A550, v4, v3);
}

uint64_t sub_10047A550()
{
  v1 = v0[9];
  v2 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10047A5BC()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10047A648()
{
  __chkstk_darwin();
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v2)
  {
    v3 = OBJC_IVAR___MusicSBS_TextContentView_specs;
    memcpy(__dst, (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
    memcpy(v13, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v13));
    memcpy(v11, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v11));
    memmove(&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + OBJC_IVAR___MusicSBS_TextContentView_specs), 0x2B0uLL);
    sub_10046E570(__dst, v12);
    sub_10046E570(__dst, v12);
    v4 = v2;
    sub_10046E570(v13, v12);
    sub_10046E5CC(v11);
    sub_1004551D8(v13);
    sub_10046E5CC(v13);
    sub_10046E5CC(__dst);

    v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v5)
    {
      memcpy(v8, (v1 + v3), sizeof(v8));
      memcpy(v12, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v12));
      memcpy(v9, &v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], sizeof(v9));
      memmove(&v5[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], (v1 + v3), 0x2B0uLL);
      sub_10046E570(v8, &v7);
      sub_10046E570(v8, &v7);
      v6 = v5;
      sub_10046E570(v12, &v7);
      sub_10046E5CC(v9);
      sub_1004551D8(v12);
      sub_10046E5CC(v12);
      sub_10046E5CC(v8);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10047A808(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling);
  v3 = result & 1;
  *(v1 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = result;
  if (v2 != (result & 1))
  {
    v4 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v4)
    {
      *(v4 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      v5 = *(v1 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v5)
      {
        *(v5 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = v3;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10047A864(char a1, char a2)
{
  v3 = a1 & 1;
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) != (a1 & 1))
  {
    v4 = v2;
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = v3;
    v5 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v5)
    {
      v8 = v5;
      sub_100455284(a1 & 1, a2 & 1);

      v9 = *(v4 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v9)
      {
        v10 = v9;
        sub_100455284(a1 & 1, a2 & 1);
      }

      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;
      *(v12 + 24) = v3;
      if (a2)
      {
        if (a1)
        {
          v13 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
        }

        else
        {
          sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
          v13 = UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
        }

        v15.super.isa = v13;
        sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v15).super.isa;
        v18[4] = sub_10047CF74;
        v18[5] = v12;
        v18[0] = _NSConcreteStackBlock;
        v18[1] = 1107296256;
        v18[2] = sub_1000D6C80;
        v18[3] = &unk_1005D42C0;
        v17 = _Block_copy(v18);

        [(objc_class *)isa addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)isa startAnimation];
      }

      else
      {

        sub_10047AAE0(v14, a1 & 1);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_10047AAE0(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
    v6 = *(Strong + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
    if (v6)
    {
      if (a2)
      {
        v7 = xmmword_1004D9D20;
        v8 = xmmword_1004D9B70;
        v9 = 0uLL;
      }

      else
      {
        v8 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 128];
        v7 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 144];
        v9 = *&v4[OBJC_IVAR___MusicSBS_TextContentView_specs + 160];
      }

      v13[0] = v8;
      v13[1] = v7;
      v13[2] = v9;
      [v6 setTransform:v13];
      v10 = *&v4[v5];
      if (v10)
      {
        if (a2)
        {
          v11 = 1.0;
        }

        else
        {
          v11 = 0.0;
        }

        v12 = v10;
        [v12 setAlpha:v11];
      }
    }
  }
}

void sub_10047ABD0(char a1, double a2)
{
  if (*(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) != a2)
  {
    *(v2 + OBJC_IVAR___MusicSBS_TextContentView_progress) = a2;
    v3 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (v3)
    {
      v4 = *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
      v5 = v4 <= a2;
      if (v4 != a2)
      {
        v6 = v4 - a2;
        if (v5 || v6 >= 0.5)
        {
          *&v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
          v8 = a2;
          v9 = a1;
          v10 = v3;
          sub_100455F48(v9 & 1, v11, v8);

          a1 = v9;
          a2 = v8;
        }
      }

      v12 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (v12)
      {
        v13 = *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
        v14 = v13 <= a2;
        if (v13 != a2)
        {
          v15 = v13 - a2;
          if (v14 || v15 >= 0.5)
          {
            *&v12[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = a2;
            v17 = a2;
            v18 = a1;
            v19 = v12;
            sub_100455F48(v18 & 1, v19, v17);
          }
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_10047AD50()
{
  v1 = *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (!v2)
    {
      return 0;
    }

    v3 = *(v2 + 96);
    if (v3)
    {
      v4 = v3;
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047AE08(char **a1@<X8>)
{
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v155 = &v149 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v157 = &v149 - v4;
  __chkstk_darwin();
  v156 = &v149 - v5;
  __chkstk_darwin();
  v154 = &v149 - v6;
  __chkstk_darwin();
  v181 = (&v149 - v7);
  __chkstk_darwin();
  v175 = &v149 - v8;
  __chkstk_darwin();
  v174 = &v149 - v9;
  __chkstk_darwin();
  v11 = &v149 - v10;
  __chkstk_darwin();
  v13 = &v149 - v12;
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v178 = &v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v177 = &v149 - v15;
  __chkstk_darwin();
  v176 = &v149 - v16;
  __chkstk_darwin();
  v187 = &v149 - v17;
  __chkstk_darwin();
  v186 = &v149 - v18;
  __chkstk_darwin();
  v194 = &v149 - v19;
  __chkstk_darwin();
  v190 = &v149 - v20;
  __chkstk_darwin();
  v22 = &v149 - v21;
  v23 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v23)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
  v184 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
  v193 = v24;
  v197 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
  v25 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  swift_beginAccess();
  sub_10000F778(v23 + v25, v22, &qword_100615038, &qword_1004EA878);
  v191 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  LODWORD(v185) = v1[OBJC_IVAR___MusicSBS_TextContentView_direction];
  v198 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_capabilities];
  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v189 = v22;
  if (v26)
  {
    v27 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text + 8);
    v152 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text);
    v28 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words);
    v195 = v27;

    v188 = v28;
  }

  else
  {
    v152 = 0;
    v195 = 0;
    v188 = _swiftEmptyArrayStorage;
  }

  v183 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection];
  v171 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
  memcpy(v205, &v1[OBJC_IVAR___MusicSBS_TextContentView_specs], 0x2B0uLL);
  v29 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  swift_beginAccess();
  v173 = v1;
  sub_10000F778(&v1[v29], v13, &qword_100616C00, &unk_1004EBFF0);
  v30 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
  v168 = *(v23 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
  v192 = v30;
  v196 = v13;
  v161 = a1;
  if (v26)
  {
    v31 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
    v153 = *(v26 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);
    v180 = v31;
  }

  else
  {
    v153 = 0;
    v180 = 0;
  }

  v32 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  swift_beginAccess();
  v33 = v190;
  sub_10000F778(v23 + v32, v190, &qword_100615038, &qword_1004EA878);
  v172 = _s19SBS_TextContentViewCMa(0);
  v34 = objc_allocWithZone(v172);
  v34[OBJC_IVAR___MusicSBS_TextContentView_isScrolling] = 1;
  v35 = &v34[OBJC_IVAR___MusicSBS_TextContentView_text];
  *v35 = 0;
  v35[1] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_attributedText] = 0;
  v34[OBJC_IVAR___MusicSBS_TextContentView_isSelected] = 0;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_progress] = 0;
  v170 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection] = 2;
  v36 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v37 = type metadata accessor for Lyrics.TextLine(0);
  v38 = *(v37 - 8);
  (*(v38 + 56))(&v34[v36], 1, 1, v37);
  v169 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition] = 2;
  v167 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_textView] = 0;
  v179 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView] = 0;
  v39 = v193;
  *v35 = v184;
  v35[1] = v39;
  memcpy(&v34[OBJC_IVAR___MusicSBS_TextContentView_specs], v205, 0x2B0uLL);
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_alignment] = v191;
  v34[OBJC_IVAR___MusicSBS_TextContentView_direction] = v185;
  *&v34[OBJC_IVAR___MusicSBS_TextContentView_capabilities] = v198;
  swift_beginAccess();

  sub_10046E570(v205, &v202);

  sub_10046E570(v205, &v202);

  v182 = v34;
  v40 = &v34[v36];
  v41 = v37;
  v42 = v196;
  sub_10003F42C(v196, v40, &qword_100616C00, &unk_1004EBFF0);
  swift_endAccess();
  sub_10000F778(v189, v194, &qword_100615038, &qword_1004EA878);
  sub_10000F778(v33, v186, &qword_100615038, &qword_1004EA878);
  sub_10000F778(v42, v11, &qword_100616C00, &unk_1004EBFF0);
  v45 = *(v38 + 48);
  v44 = v38 + 48;
  v43 = v45;
  if (v45(v11, 1, v41) == 1)
  {
    sub_100007214(v11, &qword_100616C00, &unk_1004EBFF0);
    v46 = sub_1004B6E44();
    (*(*(v46 - 8) + 56))(v187, 1, 1, v46);
  }

  else
  {
    sub_10000F778(&v11[v41[7]], v187, &qword_100615038, &qword_1004EA878);
    sub_10047CFF0(v11);
  }

  v47 = v181;
  v48 = v174;
  sub_10000F778(v42, v174, &qword_100616C00, &unk_1004EBFF0);
  v49 = v43(v48, 1, v41);
  v50 = v175;
  if (v49 == 1)
  {
    sub_100007214(v48, &qword_100616C00, &unk_1004EBFF0);
    v51 = 2;
  }

  else
  {
    v52 = (*(v48 + v41[15]))();
    sub_10047CFF0(v48);
    v51 = v52 & 1;
  }

  LODWORD(v174) = v51;
  sub_10000F778(v42, v50, &qword_100616C00, &unk_1004EBFF0);
  if (v43(v50, 1, v41) == 1)
  {
    sub_100007214(v50, &qword_100616C00, &unk_1004EBFF0);
    v165 = 0;
    v166 = 0;
  }

  else
  {
    v53 = (*(v50 + v41[16]))();
    v165 = v54;
    v166 = v53;
    sub_10047CFF0(v50);
  }

  sub_10000F778(v42, v47, &qword_100616C00, &unk_1004EBFF0);
  v55 = v43(v47, 1, v41);
  v150 = v44;
  v151 = v41;
  v149 = v43;
  if (v55 == 1)
  {
    sub_100007214(v47, &qword_100616C00, &unk_1004EBFF0);
    v175 = 0;
  }

  else
  {
    v175 = (*(v47 + v41[17]))();
    sub_10047CFF0(v47);
  }

  v181 = _s14descr1005A2689C8TextViewCMa(0);
  v56 = objc_allocWithZone(v181);
  v57 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v57 = 0;
  v57[1] = 0;
  v164 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v163 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v58 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v58 = 0;
  v58[1] = 0;
  v59 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v60 = sub_1004B6E44();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v63 = v61 + 56;
  v62(&v56[v59], 1, 1, v60);
  v64 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v60);
  v65 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v159 = v62;
  v160 = v60;
  v158 = v63;
  v62(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v60);
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v162 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v66 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v66 = 2;
  *(v66 + 8) = 0u;
  *(v66 + 24) = 0u;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v67 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v67[4] = 0u;
  v67[5] = 0u;
  v67[2] = 0u;
  v67[3] = 0u;
  *v67 = 0u;
  v67[1] = 0u;
  v68 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
  v69 = v193;

  sub_10046E570(v205, &v202);

  v70 = v192;

  *&v56[v68] = sub_100447BF4(_swiftEmptyArrayStorage);
  v71 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v72 = v184;
  *v71 = v184;
  v71[1] = v69;
  v73 = &v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v73 = v72;
  v73[1] = v69;
  swift_beginAccess();

  sub_10003F42C(v194, &v56[v59], &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  swift_beginAccess();
  v74 = v186;
  sub_10003F42C(v186, &v56[v64], &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  swift_beginAccess();
  v75 = v187;
  sub_10003F42C(v187, &v56[v65], &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  v56[v163] = v174;
  v76 = v165;
  *v57 = v166;
  v57[1] = v76;

  *&v56[v164] = v175;

  *v58 = v168;
  v58[1] = v70;

  memcpy(&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v205, 0x2B0uLL);
  *&v56[v162] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v197;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v191;
  v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v185;
  *&v56[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v198;
  v77 = v181;
  v201.receiver = v56;
  v201.super_class = v181;
  v78 = objc_msgSendSuper2(&v201, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100007214(v75, &qword_100615038, &qword_1004EA878);
  sub_100007214(v74, &qword_100615038, &qword_1004EA878);
  sub_100007214(v194, &qword_100615038, &qword_1004EA878);
  v79 = v182;
  v80 = *&v182[v167];
  *&v182[v167] = v78;

  v81 = v195;
  if (v195)
  {
    sub_10000F778(v189, v176, &qword_100615038, &qword_1004EA878);
    sub_10000F778(v190, v177, &qword_100615038, &qword_1004EA878);
    v82 = v196;
    v83 = v154;
    sub_10000F778(v196, v154, &qword_100616C00, &unk_1004EBFF0);
    v84 = v151;
    v85 = v149;
    v86 = v149(v83, 1, v151);
    v195 = v81;
    if (v86 == 1)
    {

      sub_100007214(v83, &qword_100616C00, &unk_1004EBFF0);
      v159(v178, 1, 1, v160);
    }

    else
    {
      sub_10000F778(v83 + v84[7], v178, &qword_100615038, &qword_1004EA878);

      sub_10047CFF0(v83);
    }

    v88 = v156;
    v87 = v157;
    sub_10000F778(v82, v156, &qword_100616C00, &unk_1004EBFF0);
    if (v85(v88, 1, v84) == 1)
    {
      sub_100007214(v88, &qword_100616C00, &unk_1004EBFF0);
      v89 = 2;
    }

    else
    {
      v90 = (*(v88 + v84[15]))();
      sub_10047CFF0(v88);
      v89 = v90 & 1;
    }

    LODWORD(v194) = v89;
    sub_10000F778(v82, v87, &qword_100616C00, &unk_1004EBFF0);
    if (v85(v87, 1, v84) == 1)
    {
      sub_100007214(v87, &qword_100616C00, &unk_1004EBFF0);
      v186 = 0;
      v187 = 0;
    }

    else
    {
      (*(v87 + v84[18]))(v206);
      v187 = v207;
      if (v207)
      {
        v186 = v206[2];

        sub_100007214(v206, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        v186 = 0;
      }

      sub_10047CFF0(v87);
    }

    v91 = v82;
    v92 = v155;
    sub_10000F778(v91, v155, &qword_100616C00, &unk_1004EBFF0);
    if (v85(v92, 1, v84) == 1)
    {
      sub_100007214(v92, &qword_100616C00, &unk_1004EBFF0);
    }

    else
    {
      (*(v92 + v84[18]))(v208);
      sub_10047CFF0(v92);
      if (v208[3])
      {
        v185 = v208[7];

        sub_100007214(v208, &qword_100615030, &qword_1004EA870);
LABEL_38:
        v93 = objc_allocWithZone(v77);
        v94 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText;
        *v94 = 0;
        v94[1] = 0;
        v184 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords) = 0;
        v175 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection) = 2;
        v95 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText;
        *v95 = 0;
        v95[1] = 0;
        v96 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v98 = v159;
        v97 = v160;
        v159(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language, 1, 1, v160);
        v99 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage, 1, 1, v97);
        v100 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v98(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage, 1, 1, v97);
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling) = 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = 0;
        v174 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = 0;
        v101 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
        *v101 = 2;
        *(v101 + 8) = 0u;
        *(v101 + 24) = 0u;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer) = 0;
        v102 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata;
        v102[4] = 0u;
        v102[5] = 0u;
        v102[2] = 0u;
        v102[3] = 0u;
        *v102 = 0u;
        v102[1] = 0u;
        v103 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
        sub_10046E570(v205, &v202);
        v104 = v180;

        *(v93 + v103) = sub_100447BF4(_swiftEmptyArrayStorage);
        v105 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text;
        v106 = v152;
        v107 = v195;
        *v105 = v152;
        v105[1] = v107;
        v108 = v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText;
        *v108 = v106;
        v108[1] = v107;
        swift_beginAccess();

        v109 = v93 + v96;
        v110 = v176;
        sub_10003F42C(v176, v109, &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        swift_beginAccess();
        v111 = v93 + v99;
        v112 = v177;
        sub_10003F42C(v177, v111, &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        swift_beginAccess();
        v113 = v93 + v100;
        v114 = v178;
        sub_10003F42C(v178, v113, &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        v175[v93] = v194;
        v115 = v187;
        *v94 = v186;
        v94[1] = v115;

        *(v93 + v184) = v185;

        *v95 = v153;
        v95[1] = v104;

        memcpy(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs, v205, 0x2B0uLL);
        *(v93 + v174) = 0;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words) = v188;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind) = 1;
        v116 = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment) = v191;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction) = v183 & 1;
        *(v93 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities) = v198;
        v199.receiver = v93;
        v199.super_class = v181;
        v117 = objc_msgSendSuper2(&v199, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_100007214(v114, &qword_100615038, &qword_1004EA878);
        sub_100007214(v112, &qword_100615038, &qword_1004EA878);
        sub_100007214(v110, &qword_100615038, &qword_1004EA878);
        v79 = v182;
        v118 = v179;
        v119 = *&v182[v179];
        *&v182[v179] = v117;

        v120 = *&v79[v118];
        if (v120)
        {
          v121 = sub_10047CE90(v116);
          v123 = v122;
          v124 = v120;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v121, v123);

          v125 = *&v79[v179];
          if (v125)
          {
            [v125 setAlpha:0.0];
            v126 = *&v79[v179];
            if (v126)
            {
              v202 = v205[8];
              v203 = v205[9];
              v204 = v205[10];
              [v126 setTransform:&v202];
            }
          }
        }

        goto LABEL_42;
      }
    }

    v185 = 0;
    goto LABEL_38;
  }

LABEL_42:
  v127 = v169;
  v79[v170] = v183;
  v79[v127] = v171;
  v128 = v172;
  v200.receiver = v79;
  v200.super_class = v172;
  v129 = objc_msgSendSuper2(&v200, "initWithFrame:", 0.0, 0.0, 0.0, 0.0, v149, v150, v151);
  v130 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v131 = *(v129 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  v132 = v173;
  v133 = v196;
  if (!v131)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v134 = v129;
  v135 = v129;
  [v135 addSubview:v131];
  v136 = *(v135 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
  if (!v136)
  {

    sub_10046E5CC(v205);

    goto LABEL_48;
  }

  v137 = *(v134 + v130);
  if (!v137)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v138 = v136;
  [v137 frame];
  v139 = *(v134 + v130);
  if (v139)
  {
    v140 = v139;

    [v140 frame];

    [v138 frame];
    [v138 setFrame:?];

    [v135 addSubview:v138];
    sub_10046E5CC(v205);
    v133 = v196;
LABEL_48:
    v141 = v189;
    sub_100007214(v190, &qword_100615038, &qword_1004EA878);
    sub_100007214(v133, &qword_100616C00, &unk_1004EBFF0);
    sub_100007214(v141, &qword_100615038, &qword_1004EA878);
    v142 = objc_opt_self();
    v143 = swift_allocObject();
    *(v143 + 16) = v135;
    *(v143 + 24) = v132;
    v144 = swift_allocObject();
    *(v144 + 16) = sub_10047CFD8;
    *(v144 + 24) = v143;
    *&v204 = sub_1000E6038;
    *(&v204 + 1) = v144;
    *&v202 = _NSConcreteStackBlock;
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_100008224;
    *(&v203 + 1) = &unk_1005D4338;
    v145 = _Block_copy(&v202);
    v146 = v135;
    v147 = v132;

    [v142 performWithoutAnimation:v145];
    _Block_release(v145);
    LOBYTE(v145) = swift_isEscapingClosureAtFileLocation();

    if ((v145 & 1) == 0)
    {
      v148 = v161;
      v161[3] = v128;

      *v148 = v146;
      return;
    }

    __break(1u);
    goto LABEL_51;
  }

LABEL_54:
  __break(1u);
}

void sub_10047C5E8(void *a1, char *a2)
{
  [a2 bounds];
  [a1 setFrame:?];
  [a1 layoutIfNeeded];
  sub_10047A864(a2[OBJC_IVAR___MusicSBS_TextContentView_isSelected], 0);
  sub_10047ABD0(0, *&a2[OBJC_IVAR___MusicSBS_TextContentView_progress]);
}

id sub_10047C6C4(char a1, double a2, double a3)
{
  result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    result = [result sizeThatFits:?];
    if (a1)
    {
      result = *(v3 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a2, a3}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_10047C768(double a1, double a2)
{
  result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_textView);
  if (result)
  {
    v6 = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_isSelected);
    result = [result sizeThatFits:?];
    if (v6 == 1)
    {
      result = *(v2 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
      if (result)
      {
        return [result sizeThatFits:{a1, a2}];
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_10047C86C()
{
  v1 = v0;
  v32.receiver = v0;
  v32.super_class = _s19SBS_TextContentViewCMa(0);
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v2 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v3 = *&v0[OBJC_IVAR___MusicSBS_TextContentView_textView];
  if (!v3)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v4 = v3;
  [v1 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;
  v10 = v9;

  v11 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  v12 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  v13 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v12)
  {
    v18 = v1[OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition];
    if (v18 != 2)
    {
      v19 = v12;
      [v1 bounds];
      [v19 sizeThatFits:{v20, v21}];
      v14 = v22;
      v15 = v23;
      [v1 bounds];
      MaxY = CGRectGetMaxY(v33);

      v25 = MaxY - v10;
      if (v18)
      {
        v16 = MaxY - v15;
      }

      else
      {
        v16 = 0.0;
      }

      if (v18)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = v25;
      }
    }
  }

  v26 = *&v1[OBJC_IVAR___MusicSBS_TextContentView_alignment];
  if (v26 == 1)
  {
    [v1 bounds];
    v27 = (CGRectGetWidth(v36) - v8) * 0.5;
    [v1 bounds];
    v13 = (CGRectGetWidth(v37) - v14) * 0.5;
  }

  else
  {
    v27 = 0.0;
    if (v26 == 2)
    {
      [v1 bounds];
      v27 = CGRectGetWidth(v34) - v8;
      [v1 bounds];
      v13 = CGRectGetWidth(v35) - v14;
    }
  }

  v28 = *&v1[v2];
  if (!v28)
  {
    goto LABEL_19;
  }

  v29 = v28;
  UIView.untransformedFrame.setter(v27, v17, v8, v10);

  v30 = *&v1[v11];
  if (v30)
  {
    v31 = v30;
    UIView.untransformedFrame.setter(v13, v16, v14, v15);
  }
}

id sub_10047CB1C()
{
  v2.receiver = v0;
  v2.super_class = _s19SBS_TextContentViewCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t _s19SBS_TextContentViewCMa(uint64_t a1)
{
  result = qword_1006163E0;
  if (!qword_1006163E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10047CC64(uint64_t a1)
{
  sub_10047CD50(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10047CD50(uint64_t a1)
{
  if (!qword_1006163F0)
  {
    type metadata accessor for Lyrics.TextLine(255);
    v1 = sub_1004BD174();
    if (!v2)
    {
      atomic_store(v1, &qword_1006163F0);
    }
  }
}

uint64_t sub_10047CDA8(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicSBS_TextContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, &v5);
  sub_10046E5CC(__dst);
  sub_10047A648();
  return sub_10046E5CC(a1);
}

double sub_10047CE90(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v1 = CGPoint.centerRight.unsafeMutableAddressor();
      goto LABEL_8;
    }

    if (a1 != 3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v1 = CGPoint.center.unsafeMutableAddressor();
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    goto LABEL_6;
  }

LABEL_3:
  v1 = CGPoint.centerLeft.unsafeMutableAddressor();
LABEL_8:
  v2 = v1;
  swift_beginAccess();
  return *v2;
}

uint64_t sub_10047CF04()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10047CF3C()
{

  return swift_deallocObject();
}

uint64_t sub_10047CF80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047CF98()
{

  return swift_deallocObject();
}

uint64_t sub_10047CFF0(uint64_t a1)
{
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10047D04C()
{
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v1 = (v0 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v2 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v3 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  *(v0 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  sub_1004BD624();
  __break(1u);
}

CFIndex sub_10047D178(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  qword_100619AE0 = v3;
  return result;
}

CGFloat sub_10047D218(CGFloat a1, uint64_t a2, _OWORD *a3, _OWORD *a4, _OWORD *a5)
{
  CGAffineTransformMakeScale(&v11, a1, a1);
  result = v11.a;
  v9 = *&v11.c;
  v10 = *&v11.tx;
  *a3 = *&v11.a;
  *a4 = v9;
  *a5 = v10;
  return result;
}

id sub_10047D270(uint64_t a1, char a2, void *__src, double a4, double a5)
{
  v5[OBJC_IVAR___MusicInstrumentalContentView_isScrolling] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_alignment] = 0;
  v6 = &v5[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  *v6 = 0u;
  v6[1] = 0u;
  v5[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dots] = _swiftEmptyArrayStorage;
  v5[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration] = 0;
  v7 = &v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  *v7 = 0;
  v7[8] = 1;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] = 0;
  *&v5[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = 0;
  v8 = &v5[OBJC_IVAR___MusicInstrumentalContentView_line];
  *v8 = a1;
  v8[1] = a4;
  v8[2] = a5;
  *(v8 + 24) = a2 & 1;
  v9 = memcpy(&v5[OBJC_IVAR___MusicInstrumentalContentView_specs], __src, 0x2B0uLL);
  v12.receiver = v5;
  v12.super_class = _s23InstrumentalContentViewCMa(v9, v10);
  return objc_msgSendSuper2(&v12, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
}

void sub_10047D3BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31.receiver = v2;
  v31.super_class = _s23InstrumentalContentViewCMa(a1, a2);
  objc_msgSendSuper2(&v31, "layoutSubviews");
  v4 = &v2[OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds];
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v8 = v4[3];
  [v3 bounds];
  v35.origin.x = v9;
  v35.origin.y = v10;
  v35.size.width = v11;
  v35.size.height = v12;
  v32.origin.x = v5;
  v32.origin.y = v6;
  v32.size.width = v7;
  v32.size.height = v8;
  if (CGRectEqualToRect(v32, v35))
  {
    return;
  }

  [v3 bounds];
  *v4 = v13;
  *(v4 + 1) = v14;
  *(v4 + 2) = v15;
  *(v4 + 3) = v16;
  v17 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v18 = *&v3[v17];
  if (v18 >> 62)
  {
    if (sub_1004BD6A4())
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    sub_10047F184();
  }

LABEL_5:
  v19 = &v3[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v20 = *&v3[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
  v21 = v20 * *&v3[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v3[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v3[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
  v22 = Int.seconds.getter(0);
  v23 = *&v3[OBJC_IVAR___MusicInstrumentalContentView_alignment];
  if (v23 == 1)
  {
    [v3 bounds];
    v24 = (CGRectGetWidth(v34) - v21) * 0.5;
  }

  else
  {
    v24 = v22;
    if (v23 == 2)
    {
      [v3 bounds];
      v24 = CGRectGetWidth(v33) - v21;
    }
  }

  v25 = *&v3[v17];
  if (v25 >> 62)
  {
    v26 = sub_1004BD6A4();
    if (!v26)
    {
      return;
    }
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      return;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
  }

  else
  {

    v27 = 0;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v28 = sub_1004BD484();
      }

      else
      {
        v28 = *(v25 + 8 * v27 + 32);
      }

      v29 = v28;
      ++v27;
      [v3 bounds];
      UIView.untransformedFrame.setter(v24, v30 * 0.5 - v20 * 0.5, v20, v20);

      v24 = v24 + v20 + v19[77];
    }

    while (v26 != v27);
  }
}

void sub_10047D674()
{
  v1 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 8);
  v2 = *(v0 + OBJC_IVAR___MusicInstrumentalContentView_line + 16) + -1.8;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = (v2 - v1) / floor((v2 - v1) * 0.25) * 0.5;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = (v2 - (v1 + 1.0)) / *(v0 + OBJC_IVAR___MusicInstrumentalContentView_specs + 592);
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  v3 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v5 = *(v0 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1004BD6A4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {

    v7 = 0;
    do
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      v10 = [v8 layer];
      [v10 removeAllAnimations];

      [v9 setAlpha:0.0];
      v11[1] = 0;
      v11[2] = 0;
      v11[0] = 0x3FF0000000000000;
      v11[3] = 0x3FF0000000000000;
      v11[4] = 0;
      v11[5] = 0;
      [v9 setTransform:v11];
    }

    while (v6 != v7);
  }
}

void sub_10047D87C(char a1, char a2)
{
  v2[OBJC_IVAR___MusicInstrumentalContentView_isSelected] = a1;
  if ((a1 & 1) == 0)
  {
    if (a2)
    {
      v3 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
      v4 = swift_allocObject();
      *(v4 + 16) = v2;
      v7[4] = sub_10047F684;
      v7[5] = v4;
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 1107296256;
      v7[2] = sub_1000D6C80;
      v7[3] = &unk_1005D4670;
      v5 = _Block_copy(v7);
      v6 = v2;

      [v3 addAnimations:v5];
      _Block_release(v5);
      [v3 startAnimation];
    }

    else
    {

      sub_10047D674();
    }
  }
}

void sub_10047D9E0(double a1)
{
  v2 = &v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn];
  if (v1[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] == 1)
  {
    v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v5 = *&v1[v4];
    if (v5 >> 62)
    {
      v6 = &off_100616000;
      if (sub_1004BD6A4())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v6 = &off_100616000;
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }
    }

    v7 = *&v1[v4];
    if (v7 >> 62)
    {
      goto LABEL_43;
    }

    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_6:
      sub_10047F184();
      goto LABEL_7;
    }

    while (1)
    {
LABEL_7:
      v8 = (v6[128] + v1);
      v9 = v8[76];
      v10 = v9 * *(v8 + 74) + (*(v8 + 74) + -1.0) * v8[77];
      v11 = Int.seconds.getter(0);
      v12 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_alignment];
      if (v12 == 1)
      {
        [v1 bounds];
        v13 = (CGRectGetWidth(v45) - v10) * 0.5;
      }

      else
      {
        v13 = v11;
        if (v12 == 2)
        {
          [v1 bounds];
          v13 = CGRectGetWidth(v44) - v10;
        }
      }

      v4 = *&v1[v4];
      if (v4 >> 62)
      {
        v14 = sub_1004BD6A4();
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v14 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (v14 < 1)
      {
        __break(1u);
        return;
      }

      v15 = v1;

      v16 = 0;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v17 = sub_1004BD484();
        }

        else
        {
          v17 = *(v4 + 8 * v16 + 32);
        }

        v18 = v17;
        ++v16;
        [v15 bounds];
        UIView.untransformedFrame.setter(v13, v19 * 0.5 - v9 * 0.5, v9, v9);

        v13 = v13 + v9 + v8[77];
      }

      while (v14 != v16);

      v1 = v15;
LABEL_20:
      v20 = 0;
      *v2 = 0;
      v2[8] = 0;
      v21 = *&v1[OBJC_IVAR___MusicInstrumentalContentView_line + 8] + 1.0;
      if (v21 > a1)
      {
        goto LABEL_28;
      }

      v22 = (a1 - v21) / *&v1[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
      if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (v22 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (v22 < 9.22337204e18)
      {
        if (__OFADD__(v22, 1))
        {
          goto LABEL_42;
        }

        if (v22 + 1 >= 3)
        {
          v20 = 3;
        }

        else
        {
          v20 = v22 + 1;
        }

LABEL_28:
        v23 = *(v6[128] + v1 + 592);
        if (v23 < 0)
        {
          __break(1u);
        }

        else
        {
          v2 = v1;
          if (v23)
          {
            for (i = 0; i != v23; ++i)
            {
              v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:3 curve:0 animations:0.8];
              v26 = swift_allocObject();
              v26[2] = v20;
              v26[3] = i;
              v26[4] = v2;
              v42 = sub_10047F630;
              v43 = v26;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_1000D6C80;
              v41 = &unk_1005D4580;
              v27 = _Block_copy(&aBlock);
              v28 = v2;
              v29 = v2;

              [v25 addAnimations:v27];
              _Block_release(v27);
              v30 = swift_allocObject();
              *(v30 + 16) = v29;
              *(v30 + 24) = i;
              v42 = sub_10047F63C;
              v43 = v30;
              aBlock = _NSConcreteStackBlock;
              v39 = 1107296256;
              v40 = sub_10013ABCC;
              v41 = &unk_1005D45D0;
              v31 = _Block_copy(&aBlock);
              v6 = v43;
              v32 = v29;
              v2 = v28;

              [v25 addCompletion:v31];
              _Block_release(v31);
              [v25 startAnimationAfterDelay:i * 0.06];
            }
          }

          v1 = objc_opt_self();
          a1 = *&v2[OBJC_IVAR___MusicInstrumentalContentView_breathDuration] + -0.4;
          v33 = swift_allocObject();
          *(v33 + 16) = v2;
          v42 = sub_10047F67C;
          v43 = v33;
          aBlock = _NSConcreteStackBlock;
          v39 = 1107296256;
          v40 = sub_1000D6C80;
          v41 = &unk_1005D4620;
          v4 = _Block_copy(&aBlock);
          v34 = v2;

          [v1 animateWithDuration:0x20000 delay:v4 options:0 animations:a1 completion:0.2];
          _Block_release(v4);
          v35 = *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (!v36)
          {
            *&v34[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] = v37;
            return;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
      }

      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      if (!sub_1004BD6A4())
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_10047DFD4(int64_t a1, int64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  if (a2 >= a1)
  {
    swift_beginAccess();
    v7 = *(a3 + v5);
    if ((v7 & 0xC000000000000001) != 0)
    {

      v4 = sub_1004BD484();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v4)
      {
        goto LABEL_20;
      }

      v4 = *(v7 + 8 * v4 + 32);
    }

    if (qword_100614E80 == -1)
    {
LABEL_12:
      [v4 setAlpha:*&qword_100619AE0];
      goto LABEL_13;
    }

LABEL_18:
    swift_once();
    goto LABEL_12;
  }

  swift_beginAccess();
  v6 = *(a3 + v5);
  if ((v6 & 0xC000000000000001) != 0)
  {

    v4 = sub_1004BD484();

    goto LABEL_6;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) > v4)
  {
    v4 = *(v6 + 8 * v4 + 32);
LABEL_6:
    [v4 setAlpha:1.0];
LABEL_13:

    return;
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

void sub_10047E154(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (qword_100614E90 != -1)
      {
        swift_once();
      }

      ++v5;
      v8[0] = xmmword_100619B20;
      v8[1] = *algn_100619B30;
      v8[2] = xmmword_100619B40;
      [v7 setTransform:v8];
    }

    while (v4 != v5);
  }
}

void sub_10047E2A8(double a1, uint64_t a2, uint64_t a3)
{
  v6 = &v4[OBJC_IVAR___MusicInstrumentalContentView_line];
  v7 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_line + 8];
  v8 = OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration;
  v9 = (a1 - (v7 + 1.0)) / *&v4[OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration];
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v9 >= 9.22337204e18)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (__OFADD__(v9, 1))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v10 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v9 + 1 >= v10)
  {
    v11 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted;
  v13 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted];
  if (v11 < v13)
  {
    sub_10047D674();
    v14 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v3 = *&v4[v14];
    if (!(v3 >> 62))
    {
      v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_11:
        if (v15 >= 1)
        {

          v16 = 0;
          do
          {
            if ((v3 & 0xC000000000000001) != 0)
            {
              v17 = sub_1004BD484();
            }

            else
            {
              v17 = *(v3 + 8 * v16 + 32);
            }

            v18 = v17;
            v19 = [v17 layer];
            [v19 removeAllAnimations];

            if (qword_100614E80 != -1)
            {
              swift_once();
            }

            ++v16;
            [v18 setAlpha:*&qword_100619AE0];
            v49 = 0;
            v50 = 0;
            aBlock = 0x3FF0000000000000;
            v51 = 0x3FF0000000000000;
            v52 = 0;
            v53 = 0;
            [v18 setTransform:&aBlock];
          }

          while (v15 != v16);

          goto LABEL_51;
        }

        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        do
        {
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:

          v25 = sub_1004BD484();

          v20 = "KeyboardAvoidance";
LABEL_36:
          v26 = *&v4[v8] + -0.1;
          v27 = swift_allocObject();
          *(v27 + 16) = v25;
          v28 = objc_allocWithZone(UIViewPropertyAnimator);
          v52 = sub_100470844;
          v53 = v27;
          aBlock = _NSConcreteStackBlock;
          v49 = 1107296256;
          v50 = sub_1000D6C80;
          v51 = &unk_1005D4530;
          v29 = _Block_copy(&aBlock);
          v30 = v25;

          v31 = [v28 initWithDuration:3 curve:v29 animations:v26];
          _Block_release(v29);
          [v31 startAnimation];

          v7 = v6[1];
LABEL_37:
          v32 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_breathDuration];
          v33 = (a1 - v7) / v32;
          if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_71;
          }

          if (v33 <= -9.22337204e18)
          {
            goto LABEL_72;
          }

          if (v33 >= 9.22337204e18)
          {
            goto LABEL_73;
          }

          v34 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_74;
          }

          v35 = OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted;
          if (*&v4[OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted] >= v34)
          {
            goto LABEL_44;
          }

          v36 = objc_opt_self();
          v37 = swift_allocObject();
          *(v37 + 16) = v4;
          *(v37 + 24) = v34;
          v52 = sub_10047F5F0;
          v53 = v37;
          aBlock = _NSConcreteStackBlock;
          v49 = 1107296256;
          v50 = sub_1000D6C80;
          v51 = &unk_1005D44E0;
          v38 = _Block_copy(&aBlock);
          v39 = v4;

          [v36 animateWithDuration:0x20000 delay:v38 options:0 animations:v32 + -0.4 completion:0.2];
          _Block_release(v38);
          v40 = *&v4[v35];
          v41 = __OFADD__(v40, 1);
          v42 = v40 + 1;
        }

        while (v41);
        *&v4[v35] = v42;
        goto LABEL_44;
      }

LABEL_51:
      sub_10047D9E0(a1);
      return;
    }

LABEL_66:
    v15 = sub_1004BD6A4();
    if (v15)
    {
      goto LABEL_11;
    }

    goto LABEL_51;
  }

  v20 = "KeyboardAvoidance";
  if ((v4[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn + 8] & 1) != 0 || (v7 + 1.0 < a1 ? (v21 = *&v4[OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn] == v10) : (v21 = 0), !v21 || v6[2] + -1.8 <= a1))
  {
LABEL_44:
    v43 = v6[2];
    v44 = v43 > a1 && v43 + *(v20 + 132) < a1;
    if (v44 && (v4[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
    {
      sub_10047EAE0();
    }

    return;
  }

  if (v11 == v13 || v4[OBJC_IVAR___MusicInstrumentalContentView_isSelected] != 1)
  {
    goto LABEL_37;
  }

  v22 = v11 - 1;
  if (__OFSUB__(v11, 1))
  {
    goto LABEL_76;
  }

  if (v22 < v13)
  {
    goto LABEL_77;
  }

  if (v13 == v22)
  {
LABEL_32:
    *&v4[v12] = v11;
    v23 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v24 = *&v4[v23];
    if ((v24 & 0xC000000000000001) != 0)
    {
      goto LABEL_78;
    }

    v20 = "KeyboardAvoidance";
    if (v22 < 0)
    {
      __break(1u);
    }

    else if (v22 < *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v25 = *(v24 + 8 * v22 + 32);
      goto LABEL_36;
    }

    __break(1u);
  }

  else if (v13 < v22)
  {
    v45 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    while (1)
    {
      v46 = *&v4[v45];
      if ((v46 & 0xC000000000000001) != 0)
      {

        v47 = sub_1004BD484();
      }

      else
      {
        if (v13 < 0)
        {
          goto LABEL_69;
        }

        if (v13 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v47 = *(v46 + 8 * v13 + 32);
      }

      ++v13;
      [v47 setAlpha:1.0];

      if (v22 == v13)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
}

void sub_10047E934(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5 >> 62)
  {
    v6 = sub_1004BD6A4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = a2 & 0x8000000000000001;

    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v10 = sub_1004BD484();
      }

      else
      {
        v10 = *(v5 + 8 * i + 32);
      }

      v11 = v10;
      if (v7 == 1)
      {
        if (qword_100614E90 != -1)
        {
          swift_once();
        }

        v12 = xmmword_100619B20;
        v13 = *algn_100619B30;
        v9 = xmmword_100619B40;
      }

      else
      {
        if (qword_100614E88 != -1)
        {
          swift_once();
        }

        v12 = xmmword_100619AF0;
        v13 = xmmword_100619B00;
        v9 = xmmword_100619B10;
      }

      v14 = v9;
      [v11 setTransform:&v12];
    }
  }
}

void sub_10047EAE0()
{
  if ((v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] & 1) == 0)
  {
    v0[OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued] = 1;
    v1 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:1.0 controlPoint2:0.25 animations:{0.1, 0.25, 1.0}];
    v2 = swift_allocObject();
    *(v2 + 16) = v0;
    v17 = sub_10047F588;
    v18 = v2;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D43F0;
    v3 = _Block_copy(&v13);
    v4 = v0;

    [v1 addAnimations:v3];
    _Block_release(v3);
    [v1 startAnimation];
    v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.3];
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v17 = sub_10047F5A8;
    v18 = v6;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D4440;
    v7 = _Block_copy(&v13);
    v8 = v4;

    [v5 addAnimations:v7];
    _Block_release(v7);
    [v5 startAnimationAfterDelay:1.0];
    v9 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:1 curve:0 animations:0.5];
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v17 = sub_10047F5B0;
    v18 = v10;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_1000D6C80;
    v16 = &unk_1005D4490;
    v11 = _Block_copy(&v13);
    v12 = v8;

    [v9 addAnimations:v11];
    _Block_release(v11);
    [v9 startAnimationAfterDelay:1.0];
  }
}

void sub_10047EDE8(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (qword_100614E98 != -1)
      {
        swift_once();
      }

      ++v5;
      v8[0] = xmmword_100619B50;
      v8[1] = xmmword_100619B60;
      v8[2] = xmmword_100619B70;
      [v7 setTransform:v8];
    }

    while (v4 != v5);
  }
}

void sub_10047EF3C(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      v7 = v6;
      [v6 setAlpha:0.0];
    }
  }
}

void sub_10047F030(uint64_t a1)
{
  v2 = OBJC_IVAR___MusicInstrumentalContentView_dots;
  swift_beginAccess();
  v3 = *(a1 + v2);
  if (v3 >> 62)
  {
    v4 = sub_1004BD6A4();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {

    v5 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = sub_1004BD484();
      }

      else
      {
        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      if (qword_100614EA0 != -1)
      {
        swift_once();
      }

      ++v5;
      v8[0] = xmmword_100619B80;
      v8[1] = *algn_100619B90;
      v8[2] = xmmword_100619BA0;
      [v7 setTransform:v8];
    }

    while (v4 != v5);
  }
}

void sub_10047F184()
{
  v1 = &v0[OBJC_IVAR___MusicInstrumentalContentView_specs];
  v2 = *&v0[OBJC_IVAR___MusicInstrumentalContentView_specs + 592];
  if (v2 < 0)
  {
LABEL_13:
    __break(1u);
  }

  else if (v2)
  {
    v3 = v0;
    v4 = 0;
    v5 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    do
    {
      v6 = [objc_allocWithZone(UIView) init];
      v7 = v6;
      v8 = 1.3;
      if (!v4)
      {
        goto LABEL_7;
      }

      v9 = *(v1 + 74);
      v10 = __OFSUB__(v9, 1);
      v11 = v9 - 1;
      if (v10)
      {
        __break(1u);
        goto LABEL_13;
      }

      v8 = -1.3;
      if (v4 == v11)
      {
LABEL_7:
        v12 = [v6 layer];
        [v12 anchorPoint];
        [v12 setAnchorPoint:v13 + v8];
      }

      [v7 setBackgroundColor:{*(v1 + 44), v16}];
      [v7 setAlpha:0.0];
      [v7 setAutoresizingMask:40];
      v14 = [v7 layer];
      [v14 setCornerRadius:*(v1 + 76) * 0.5];

      swift_beginAccess();
      v15 = v7;
      sub_1004BC274();
      if (*((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((*(v3 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1004BC2E4();
      }

      ++v4;
      sub_1004BC334();
      swift_endAccess();
      [v3 addSubview:v15];
    }

    while (v2 != v4);
  }
}

id sub_10047F3D0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s23InstrumentalContentViewCMa(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10047F480(const void *a1)
{
  v3 = *v1;
  memcpy(v5, (v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), sizeof(v5));
  memcpy((v3 + OBJC_IVAR___MusicInstrumentalContentView_specs), a1, 0x2B0uLL);
  return sub_10046E5CC(v5);
}

uint64_t sub_10047F550()
{

  return swift_deallocObject();
}

uint64_t sub_10047F590(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10047F5B8()
{

  return swift_deallocObject();
}

uint64_t sub_10047F5F8()
{

  return swift_deallocObject();
}

void sub_10047F63C()
{
  v1 = *(v0 + 16) + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  if ((*(v1 + 8) & 1) == 0)
  {
    v2 = *(v0 + 24);
    if (*v1 <= v2)
    {
      v3 = __OFADD__(v2, 1);
      v4 = v2 + 1;
      if (v3)
      {
        __break(1u);
      }

      else
      {
        *v1 = v4;
        *(v1 + 8) = 0;
      }
    }
  }
}

void sub_10047F6A8()
{
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isScrolling) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_alignment) = 0;
  v1 = (v0 + OBJC_IVAR___MusicInstrumentalContentView_lastSeenBounds);
  *v1 = 0u;
  v1[1] = 0u;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dots) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_fadeOutCued) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_dotFadeInDuration) = 0;
  v2 = v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsFadedIn;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalDotsCompleted) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_breathDuration) = 0;
  *(v0 + OBJC_IVAR___MusicInstrumentalContentView_totalBreathsCompleted) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_10047F7FC(char a1, char a2)
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v6 = (&v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v2[OBJC_IVAR___MusicTextContentView_isSelected] = a1;
  if (a1)
  {
    v7 = Int.seconds.getter(1);
    v8 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v9 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
    if (v9 || ((v10 = [objc_allocWithZone(UILabel) init], objc_msgSend(v10, "setAdjustsFontForContentSizeCategory:", 1), objc_msgSend(v10, "setLineBreakStrategy:", 3), objc_msgSend(v10, "setNumberOfLines:", 0), objc_msgSend(v10, "setTextAlignment:", 4), objc_msgSend(v10, "setAutoresizingMask:", 18), objc_msgSend(v10, "setTextAlignment:", *&v2[OBJC_IVAR___MusicTextContentView_alignment]), v11 = OBJC_IVAR___MusicTextContentView_content, swift_beginAccess(), sub_100485354(&v2[v11], v6), swift_getEnumCaseMultiPayload() != 1) ? (sub_10048541C(v6), v12 = objc_msgSend(*&v2[OBJC_IVAR___MusicTextContentView_label], "attributedText")) : (v12 = *v6), (objc_msgSend(v10, "setAttributedText:", v12), v12, (v13 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]) == 0) ? (v14 = *&v2[OBJC_IVAR___MusicTextContentView_specs + 352], v13 = 0) : (v14 = *&v2[OBJC_IVAR___MusicTextContentView_textColorOverride]), v15 = v13, objc_msgSend(v10, "setTextColor:", v14), v14, objc_msgSend(v2, "addSubview:", v10), v16 = *&v2[v8], *&v2[v8] = v10, v16, (v9 = *&v2[v8]) != 0))
    {
      v17 = *&v2[OBJC_IVAR___MusicTextContentView_label];
      v18 = v9;
      [v17 frame];
      [v18 setFrame:?];

      v19 = *&v2[v8];
      if (v19)
      {
        [v19 setAlpha:0.0];
      }
    }
  }

  else
  {
    v7 = Int.seconds.getter(0);
  }

  if (a2)
  {
    v20 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
    v21 = swift_allocObject();
    *(v21 + 16) = v2;
    *(v21 + 24) = v7;
    v35 = sub_100486508;
    v36 = v21;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_1000D6C80;
    v34 = &unk_1005D4BE0;
    v22 = _Block_copy(&aBlock);
    v23 = v2;

    [v20 addAnimations:v22];
    _Block_release(v22);
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v35 = sub_100486598;
    v36 = v24;
    aBlock = _NSConcreteStackBlock;
    v32 = 1107296256;
    v33 = sub_10013ABCC;
    v34 = &unk_1005D4C30;
    v25 = _Block_copy(&aBlock);
    v26 = v23;

    [v20 addCompletion:v25];
    _Block_release(v25);
    [v20 startAnimation];
LABEL_22:

    return;
  }

  [*&v2[OBJC_IVAR___MusicTextContentView_label] setAlpha:1.0 - v7];
  v27 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v28 = *&v2[OBJC_IVAR___MusicTextContentView_selectedLabel];
  if (v28)
  {
    [v28 setAlpha:v7];
  }

  if ((a1 & 1) == 0)
  {
    v29 = *&v2[v27];
    if (v29)
    {
      [v29 removeFromSuperview];
      v20 = *&v2[v27];
    }

    else
    {
      v20 = 0;
    }

    *&v2[v27] = 0;
    goto LABEL_22;
  }
}

void sub_10047FCC4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + OBJC_IVAR___MusicTextContentView_isSelected) & 1) == 0)
  {
    v3 = OBJC_IVAR___MusicTextContentView_selectedLabel;
    v4 = *(a2 + OBJC_IVAR___MusicTextContentView_selectedLabel);
    if (v4)
    {
      v5 = a2;
      [v4 removeFromSuperview];
      a2 = v5;
      v4 = *(v5 + v3);
    }

    *(a2 + v3) = 0;
  }
}

void sub_10047FDD8(char **a1@<X8>)
{
  v2 = v1;
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v5 = &v16[-v4];
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100485354(&v2[v10], v9);
  memcpy(v17, &v2[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  v11 = _s15TextContentViewCMa(0);
  v12 = objc_allocWithZone(v11);
  sub_10046E570(v17, v16);
  v13 = sub_1004854D0(v9, v17, 0);
  sub_10046E5CC(v17);
  sub_10047F7FC(v2[OBJC_IVAR___MusicTextContentView_isSelected], 0);
  *&v13[OBJC_IVAR___MusicTextContentView_alignment] = *&v2[OBJC_IVAR___MusicTextContentView_alignment];
  v14 = sub_10044E090(&off_1005D0A70);
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_100480034(v14);

  sub_100007214(v5, &qword_100616678, &unk_1004EC3A0);
  v15 = v13;
  [v2 bounds];
  [v15 setFrame:?];

  a1[3] = v11;
  *a1 = v15;
}

void sub_100480034(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v103 = &v95 - v4;
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v107 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v117 = &v95 - v6;
  v7 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v9 = &v95 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v95 - v10);
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 56);
  v110 = OBJC_IVAR___MusicTextContentView_isScrolling;
  v120 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  v121 = v2 + OBJC_IVAR___MusicTextContentView_specs;
  v119 = OBJC_IVAR___MusicTextContentView_alignment;
  v122 = OBJC_IVAR___MusicTextContentView_selectedLabel;
  v123 = OBJC_IVAR___MusicTextContentView_label;
  v15 = OBJC_IVAR___MusicTextContentView_content;
  v124 = a1;
  v16 = a1 + 56;

  v118 = v15;
  swift_beginAccess();
  v17 = 0;
  v18 = v12 + 63;
  v19 = v11;
  v20 = v18 >> 6;
  v115 = NSFontAttributeName;
  v114 = NSParagraphStyleAttributeName;
  v113 = NSForegroundColorAttributeName;
  v106 = NSLanguageIdentifierAttributeName;
  v105 = xmmword_1004C50B0;
  v116 = v2;
  v111 = v9;
  v112 = v7;
  while (v14)
  {
LABEL_9:
    v22 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v23 = *(*(v124 + 48) + (v22 | (v17 << 6)));
    v24 = v7;
    if (v23 > 1)
    {
      if (v23 != 2)
      {
        v33 = *(v2 + v120);
        v34 = *(v2 + v123);
        if (!v33)
        {
          v35 = 368;
          if (*(v2 + v110))
          {
            v35 = 392;
          }

          v33 = *(v121 + v35);
        }

        goto LABEL_34;
      }

      [*(v2 + v123) setTextAlignment:*(v2 + v119)];
      v30 = *(v2 + v122);
      if (v30)
      {
        [v30 setTextAlignment:*(v2 + v119)];
        goto LABEL_35;
      }
    }

    else if (v23)
    {
      sub_100485354(v2 + v118, v9);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v32 = v121;
      if (EnumCaseMultiPayload == 1)
      {
        sub_10048541C(v9);
      }

      else
      {

        v47 = sub_100003ABC(&qword_100616680, &unk_1004EC1A0);
        sub_100007214(&v9[*(v47 + 48)], &qword_100615038, &qword_1004EA878);
        [*(v2 + v123) setFont:*(v32 + 200)];
        v48 = *(v2 + v122);
        if (v48)
        {
          [v48 setFont:*(v32 + 200)];
        }
      }

      v49 = *(v2 + v120);
      if (!v49)
      {
        v50 = 368;
        if (*(v2 + v110))
        {
          v50 = 392;
        }

        v49 = *(v32 + v50);
      }

      [*(v2 + v123) setTextColor:v49];
      v34 = *(v2 + v122);
      v7 = v24;
      if (v34)
      {
        v33 = *(v121 + 352);
LABEL_34:
        [v34 setTextColor:v33];
LABEL_35:
        v7 = v24;
      }
    }

    else
    {
      sub_100485354(v2 + v118, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = *v19;
        v26 = v19;
        v27 = *(v2 + v123);
        v28 = v25;
        [v27 setAttributedText:v28];
        v29 = *(v2 + v122);
        [v29 setAttributedText:v28];

        v19 = v26;
        v9 = v111;
        v7 = v112;
      }

      else
      {
        v36 = *v19;
        v37 = v19[1];
        v38 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
        v102 = v19;
        sub_100486498(v19 + v38, v117);
        v39 = [objc_allocWithZone(NSMutableParagraphStyle) init];
        [v39 setAlignment:*(v2 + v119)];
        v109 = v39;
        [v39 setLineBreakStrategy:3];
        v104 = v36;
        v108 = v37;
        v40 = String.containsExcessiveHeightCharacters.getter(v36, v37);
        v41 = v121;
        if (v40)
        {
          *&v127 = Int.seconds.getter(0);
          *&v126[0] = v127;
          CTFontGetLanguageAwareOutsets();
          v42 = *&v127 + *v126;
          v43 = v109;
          [v109 lineSpacing];
          [v43 setLineSpacing:v42 + v44];
        }

        v45 = *(v2 + v120);
        v99 = v45;
        if (v45)
        {
          v46 = v45;
        }

        else
        {
          v51 = 368;
          if (*(v2 + v110))
          {
            v51 = 392;
          }

          v46 = *(v41 + v51);
        }

        sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
        inited = swift_initStackObject();
        *(inited + 16) = v105;
        *(inited + 32) = v115;
        v97 = *(v41 + 200);
        v53 = v97;
        v98 = (inited + 32);
        v54 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
        *(inited + 40) = v53;
        v55 = v114;
        *(inited + 64) = v54;
        *(inited + 72) = v55;
        v56 = sub_100009130(0, &qword_100615B50, NSMutableParagraphStyle_ptr);
        *(inited + 80) = v109;
        v57 = v113;
        *(inited + 104) = v56;
        *(inited + 112) = v57;
        v58 = sub_100009130(0, &unk_1006169D0, UIColor_ptr);
        v100 = v58;
        v101 = v46;
        *(inited + 120) = v46;
        v60 = v106;
        v59 = v107;
        *(inited + 144) = v58;
        *(inited + 152) = v60;
        sub_1004852E4(v117, v59);
        v61 = sub_1004B6E44();
        v62 = *(v61 - 8);
        LODWORD(v96) = (*(v62 + 48))(v59, 1, v61);
        v63 = v99;
        v64 = v115;
        v65 = v97;
        v66 = v114;
        v109 = v109;
        v99 = v113;
        v67 = v60;
        if (v96 == 1)
        {
          v68 = v59;
          v69 = &qword_100615038;
          v70 = &qword_1004EA878;
LABEL_43:
          sub_100007214(v68, v69, v70);
          v74 = v116;
          v75 = (inited + 160);
          *(inited + 184) = &type metadata for String;
LABEL_44:
          v76 = &swift_beginAccess_ptr;
          *v75 = 0;
          v77 = 0xE000000000000000;
          goto LABEL_45;
        }

        v71 = v103;
        sub_1004B6E14();
        (*(v62 + 8))(v59, v61);
        v72 = sub_1004B6D64();
        v73 = *(v72 - 8);
        if ((*(v73 + 48))(v71, 1, v72) == 1)
        {
          v68 = v71;
          v69 = &qword_100615040;
          v70 = &unk_1004EA880;
          goto LABEL_43;
        }

        v97 = sub_1004B6D44();
        v77 = v94;
        (*(v73 + 8))(v71, v72);
        v75 = (inited + 160);
        *(inited + 184) = &type metadata for String;
        v74 = v116;
        if (!v77)
        {
          goto LABEL_44;
        }

        *v75 = v97;
        v76 = &swift_beginAccess_ptr;
LABEL_45:
        *(inited + 168) = v77;
        v78 = sub_100447ACC(inited);
        swift_setDeallocating();
        sub_100003ABC(&qword_100615670, &unk_1004EB270);
        swift_arrayDestroy();
        v98 = *(v74 + v123);
        v79 = objc_allocWithZone(v76[399]);

        v80 = sub_1004BBE24();
        _s3__C3KeyVMa_1(0);
        v82 = v81;
        v96 = sub_100485478();
        v97 = v82;
        isa = sub_1004BBC24().super.isa;

        v84 = [v79 initWithString:v80 attributes:isa];

        [v98 setAttributedText:v84];
        v2 = v116;
        v85 = *(v121 + 352);
        v128 = v100;
        *&v127 = v85;
        sub_10003E13C(&v127, v126);
        v86 = v85;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125 = v78;
        sub_1004453A8(v126, v99, isUniquelyReferenced_nonNull_native);
        v88 = *(v2 + v122);
        if (v88)
        {
          v89 = objc_allocWithZone(NSAttributedString);
          v90 = v88;
          v91 = sub_1004BBE24();

          v92 = sub_1004BBC24().super.isa;

          v93 = [v89 initWithString:v91 attributes:v92];

          [v90 setAttributedText:v93];
          v2 = v116;

          sub_100007214(v117, &qword_100615038, &qword_1004EA878);
        }

        else
        {

          sub_100007214(v117, &qword_100615038, &qword_1004EA878);
        }

        v9 = v111;
        v7 = v112;
        v19 = v102;
      }
    }
  }

  while (1)
  {
    v21 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
    }

    if (v21 >= v20)
    {
      break;
    }

    v14 = *(v16 + 8 * v21);
    ++v17;
    if (v14)
    {
      v17 = v21;
      goto LABEL_9;
    }
  }
}

uint64_t sub_100480C44(uint64_t a1)
{
  result = _s15TextContentViewC7ContentOMa(319);
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

uint64_t sub_100480D30(const void *a1)
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v4 = &v9[-v3];
  v5 = *v1;
  memcpy(v10, (v5 + OBJC_IVAR___MusicTextContentView_specs), sizeof(v10));
  memcpy((v5 + OBJC_IVAR___MusicTextContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, v9);
  sub_10046E5CC(v10);
  v6 = sub_10044E090(&off_1005D0A20);
  v7 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  sub_100480034(v6);

  sub_100007214(v4, &qword_100616678, &unk_1004EC3A0);
  return sub_10046E5CC(a1);
}

uint64_t sub_100480E80(char a1)
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v4 = &v8 - v3;
  *(*v1 + OBJC_IVAR___MusicTextContentView_isScrolling) = a1;
  v5 = sub_10044E090(&off_1005D0A98);
  v6 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_100480034(v5);

  return sub_100007214(v4, &qword_100616678, &unk_1004EC3A0);
}

void sub_100480FCC()
{
  v1 = v0;
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v3 = &v19[-v2 - 8];
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_specs;
  memcpy(v22, (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(v22));
  memcpy(v23, &v4[OBJC_IVAR___MusicTextContentView_specs], 0x2B0uLL);
  memmove(&v4[OBJC_IVAR___MusicTextContentView_specs], (v1 + OBJC_IVAR___MusicDespacitoContentView_specs), 0x2B0uLL);
  sub_10046E570(v22, v21);
  sub_10046E570(v22, v21);
  v6 = v4;
  sub_10046E5CC(v23);
  v7 = sub_10044E090(&off_1005D0A20);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v3, 1, 1, v8);
  sub_100480034(v7);

  sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
  sub_10046E5CC(v22);

  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    memcpy(v20, (v1 + v5), sizeof(v20));
    memcpy(v21, &v10[OBJC_IVAR___MusicTextContentView_specs], sizeof(v21));
    memmove(&v10[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v20, v19);
    sub_10046E570(v20, v19);
    v11 = v10;
    sub_10046E5CC(v21);
    v12 = sub_10044E090(&off_1005D0A20);
    v9(v3, 1, 1, v8);
    sub_100480034(v12);

    sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
    sub_10046E5CC(v20);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    memcpy(v20, (v1 + v5), sizeof(v20));
    memcpy(v21, &v13[OBJC_IVAR___MusicTextContentView_specs], sizeof(v21));
    memmove(&v13[OBJC_IVAR___MusicTextContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v20, v19);
    sub_10046E570(v20, v19);
    v14 = v13;
    sub_10046E5CC(v21);
    v15 = sub_10044E090(&off_1005D0A20);
    v9(v3, 1, 1, v8);
    sub_100480034(v15);

    sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
    sub_10046E5CC(v20);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    memcpy(v20, (v1 + v5), sizeof(v20));
    memcpy(v21, &v16[OBJC_IVAR___MusicDespacitoContentView_specs], sizeof(v21));
    memmove(&v16[OBJC_IVAR___MusicDespacitoContentView_specs], (v1 + v5), 0x2B0uLL);
    sub_10046E570(v20, v19);
    sub_10046E570(v20, v19);
    v17 = v16;
    sub_10046E5CC(v21);
    sub_100480FCC();
    sub_10046E5CC(v20);
  }
}

void sub_10048137C()
{
  v1 = v0;
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v3 = &v18 - v2;
  v4 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v5 = OBJC_IVAR___MusicDespacitoContentView_isScrolling;
  v4[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + OBJC_IVAR___MusicDespacitoContentView_isScrolling);
  v6 = sub_10044E090(&off_1005D0AC0);
  v7 = _s15TextContentViewC7ContentOMa(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v3, 1, 1, v7);
  v9 = v4;
  sub_100480034(v6);

  sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
  v10 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v10)
  {
    v10[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v11 = sub_10044E090(&off_1005D0AE8);
    v8(v3, 1, 1, v7);
    v12 = v10;
    sub_100480034(v11);

    sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
  }

  v13 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v13)
  {
    v13[OBJC_IVAR___MusicTextContentView_isScrolling] = *(v1 + v5);
    v14 = sub_10044E090(&off_1005D0B10);
    v8(v3, 1, 1, v7);
    v15 = v13;
    sub_100480034(v14);

    sub_100007214(v3, &qword_100616678, &unk_1004EC3A0);
  }

  v16 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v16)
  {
    v16[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = *(v1 + v5);
    v17 = v16;
    sub_10048137C();
  }
}

uint64_t sub_1004815E0(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v5 = &v18 - v4;
  v6 = *(v1 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  *&v6[OBJC_IVAR___MusicTextContentView_alignment] = a1;
  v7 = sub_10044E090(&off_1005D0B38);
  v8 = _s15TextContentViewC7ContentOMa(0);
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 1, 1, v8);
  v10 = v6;
  sub_100480034(v7);

  result = sub_100007214(v5, &qword_100616678, &unk_1004EC3A0);
  v12 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v12)
  {
    *&v12[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v13 = sub_10044E090(&off_1005D0B60);
    v9(v5, 1, 1, v8);
    v14 = v12;
    sub_100480034(v13);

    result = sub_100007214(v5, &qword_100616678, &unk_1004EC3A0);
  }

  v15 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v15)
  {
    *&v15[OBJC_IVAR___MusicTextContentView_alignment] = a1;
    v16 = sub_10044E090(&off_1005D0B88);
    v9(v5, 1, 1, v8);
    v17 = v15;
    sub_100480034(v16);

    return sub_100007214(v5, &qword_100616678, &unk_1004EC3A0);
  }

  return result;
}

id sub_100481804()
{
  result = [*(*(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  v2 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v2)
  {
    result = [*(v2 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0];
  }

  v3 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR___MusicTextContentView_label);

    return [v4 setAlpha:1.0];
  }

  return result;
}

void sub_1004818B4(char a1, char a2)
{
  v3 = v2;
  v6 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  sub_10047F7FC(a1, a2);

  v7 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v7)
  {
    v8 = v7;
    sub_1004818B4(a1 & 1, a2 & 1);
  }

  v9 = *(v3 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v9)
  {
    v10 = v9;
    sub_10047F7FC(a1 & 1, a2 & 1);
  }
}

double sub_10048198C(char a1, double a2, double a3)
{
  v4 = v3;
  [*(v4 + OBJC_IVAR___MusicDespacitoContentView_mainLineView) sizeThatFits:?];
  v9 = v8;
  v10 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView);
  if (v10 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) & 1) == 0)
  {
    [v10 sizeThatFits:{a2, a3}];
  }

  v11 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_translationLineView);
  if (v11 && (*(v4 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) & 1) == 0)
  {
    [v11 sizeThatFits:{a2, a3}];
  }

  v12 = *(v4 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v12)
  {
    v13 = v12;
    sub_10048198C(a1 & 1, a2, a3);
  }

  return v9;
}

uint64_t sub_100481B88()
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v2 = &v20 - v1;
  v20 = _s15TextContentViewC7ContentOMa(0);
  v3 = *(v20 - 8);
  __chkstk_darwin();
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = (&v20 - v6);
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v9 = &v20 - v8;
  v10 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text);
  v11 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_text + 8);
  v13 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_1004852E4(v0 + v13, v9);
  v14 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
  *v7 = v12;
  v7[1] = v11;
  sub_1004852E4(v9, v7 + v14);
  v15 = v20;
  swift_storeEnumTagMultiPayload();
  v16 = OBJC_IVAR___MusicTextContentView_content;
  swift_beginAccess();
  sub_100485354(v10 + v16, v5);
  swift_beginAccess();
  v17 = v10;

  sub_1004853B8(v7, v10 + v16);
  swift_endAccess();
  v18 = sub_10044E090(&off_1005D0BB0);
  sub_100485354(v5, v2);
  (*(v3 + 56))(v2, 0, 1, v15);
  sub_100480034(v18);

  sub_100007214(v2, &qword_100616678, &unk_1004EC3A0);

  sub_10048541C(v5);
  sub_10048541C(v7);
  return sub_100007214(v9, &qword_100615038, &qword_1004EA878);
}

void sub_100481E6C()
{
  _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v2 = (&v75 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v4 = &v75 - v3;
  __chkstk_darwin();
  v6 = &v75 - v5;
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v75 - v10;
  v12 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8);
  if (v12)
  {
    v84 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
    v13 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
    if (v13)
    {
      v14 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();
      sub_1004852E4(v0 + v14, v11);
      v81 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
      v15 = v6;
      v16 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
      v17 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
      swift_beginAccess();
      v83 = v15;
      sub_1004852E4(v0 + v17, v15);
      sub_1004852E4(v11, v4);
      v18 = OBJC_IVAR___MusicDespacitoContentView_language;
      swift_beginAccess();

      v19 = v13;

      sub_1004858C4(v4, v13 + v18);
      swift_endAccess();
      v20 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
      *v20 = v84;
      v20[1] = v12;

      sub_100481B88();
      v21 = sub_1004B6E44();
      v82 = *(*(v21 - 8) + 56);
      v82(v4, 1, 1, v21);
      v22 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
      swift_beginAccess();
      sub_1004858C4(v4, &v19[v22]);
      swift_endAccess();
      v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
      *v23 = 0;
      v23[1] = 0;

      sub_10048313C();
      if (v16)
      {
        v24 = sub_1004BBF24();
        v26 = v25;

        v84 = v16;
        if (v24 != sub_1004BBF24() || v26 != v27)
        {
          v67 = sub_1004BD9C4();

          v28 = v83;
          if ((v67 & 1) == 0)
          {
            sub_1004852E4(v83, v4);
            v69 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
            swift_beginAccess();
            sub_1004858C4(v4, &v19[v69]);
            swift_endAccess();
            v70 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
            v71 = v84;
            *v70 = v81;
            v70[1] = v71;
            goto LABEL_9;
          }

LABEL_8:
          v82(v4, 1, 1, v21);
          v29 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_1004858C4(v4, &v19[v29]);
          swift_endAccess();
          v30 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v30 = 0;
          v30[1] = 0;
LABEL_9:

          sub_100482950();
          sub_1004828A4(0, 0);
          v31 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v31 = 0;
          v31[1] = 0;

          sub_100481E6C();
          v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          [v19 setNeedsLayout];

          sub_100007214(v28, &qword_100615038, &qword_1004EA878);
          sub_100007214(v11, &qword_100615038, &qword_1004EA878);
          return;
        }
      }

      v28 = v83;
      goto LABEL_8;
    }

    v81 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
    v34 = OBJC_IVAR___MusicDespacitoContentView_language;
    v35 = v7;
    v36 = v8;
    v76 = v8;
    swift_beginAccess();
    sub_1004852E4(v0 + v34, v36);
    v37 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8);
    v75 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
    v79 = v37;
    v38 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
    swift_beginAccess();
    v83 = v35;
    sub_1004852E4(v0 + v38, v35);
    v82 = v0;
    memcpy(v87, v0 + OBJC_IVAR___MusicDespacitoContentView_specs, 0x2B0uLL);
    v80 = _s20DespacitoContentViewCMa(0);
    v39 = objc_allocWithZone(v80);
    v39[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
    *&v39[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    *&v39[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
    *&v39[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
    v40 = OBJC_IVAR___MusicDespacitoContentView_language;
    v77 = OBJC_IVAR___MusicDespacitoContentView_language;
    v41 = sub_1004B6E44();
    v42 = *(*(v41 - 8) + 56);
    v42(&v39[v40], 1, 1, v41);
    v78 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v39[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
    v43 = &v39[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v43 = 0;
    v43[1] = 0;
    v44 = &v39[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
    *v44 = 0;
    v44[1] = 0;
    v39[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
    v42(&v39[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v41);
    v45 = &v39[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v45 = 0;
    v45[1] = 0;
    v39[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
    v42(&v39[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v41);
    v46 = &v39[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
    *v46 = 0;
    v46[1] = 0;
    v47 = v76;
    sub_1004852E4(v76, v4);
    v48 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
    v49 = v84;
    *v2 = v84;
    v2[1] = v12;
    sub_1004852E4(v4, v2 + v48);
    v50 = v49;
    swift_storeEnumTagMultiPayload();
    v51 = objc_allocWithZone(_s15TextContentViewCMa(0));

    sub_10046E570(v87, v86);

    sub_10046E570(v87, v86);
    v52 = v79;

    v53 = sub_1004854D0(v2, v87, 0);
    sub_10046E5CC(v87);
    sub_100007214(v4, &qword_100615038, &qword_1004EA878);
    *&v39[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v53;
    memcpy(&v39[OBJC_IVAR___MusicDespacitoContentView_specs], v87, 0x2B0uLL);
    v54 = &v39[OBJC_IVAR___MusicDespacitoContentView_text];
    *v54 = v50;
    v54[1] = v12;
    v55 = v77;
    swift_beginAccess();

    sub_10046E570(v87, v86);
    sub_100485854(v47, &v39[v55]);
    swift_endAccess();
    v39[v78] = 2;
    v85.receiver = v39;
    v85.super_class = v80;
    v56 = objc_msgSendSuper2(&v85, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
    v57 = *&v56[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
    v58 = v56;
    [v58 addSubview:v57];
    if (v52)
    {
      v59 = sub_1004BBF24();
      v61 = v60;

      v62 = v75;
      if (v59 == sub_1004BBF24() && v61 == v63)
      {
      }

      else
      {
        v68 = sub_1004BD9C4();

        if ((v68 & 1) == 0)
        {
          sub_1004852E4(v83, v4);
          v72 = v52;
          v73 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
          swift_beginAccess();
          sub_1004858C4(v4, &v58[v73]);
          swift_endAccess();
          v74 = &v58[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v74 = v62;
          *(v74 + 1) = v72;

          sub_100482950();
          goto LABEL_20;
        }
      }
    }

LABEL_20:
    v64 = &v58[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
    *v64 = 0;
    *(v64 + 1) = 0;

    sub_100481E6C();

    sub_10046E5CC(v87);
    sub_100007214(v83, &qword_100615038, &qword_1004EA878);
    sub_100007214(v47, &qword_100615038, &qword_1004EA878);
    v58[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 0;
    sub_10048137C();
    v65 = v82;
    [v82 addSubview:v58];
    v66 = *(v65 + v81);
    *(v65 + v81) = v58;

    return;
  }

  v32 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView;
  v33 = *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v33)
  {
    [v33 removeFromSuperview];
    v33 = *(v0 + v32);
  }

  *(v0 + v32) = 0;
}

void sub_1004828A4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v3 = a1;
  v3[1] = a2;

  v4 = *(v2 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView);
  if (v4)
  {
    v5 = *v3;
    v6 = v3[1];
    v7 = &v4[OBJC_IVAR___MusicDespacitoContentView_translationText];
    *v7 = v5;
    *(v7 + 1) = v6;
    v8 = v4;

    sub_100482950();
  }
}

void sub_100482950()
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v2 = &v56 - v1;
  v67 = _s15TextContentViewC7ContentOMa(0);
  v65 = *(v67 - 8);
  __chkstk_darwin();
  v66 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v56 - v4;
  v6 = sub_1004B6E44();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v11 = &v56 - v10;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  if (!v14 || *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText] == *&v0[OBJC_IVAR___MusicDespacitoContentView_text] && v14 == *&v0[OBJC_IVAR___MusicDespacitoContentView_text + 8] || (v64 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationText], (sub_1004BD9C4() & 1) != 0))
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 1;
    return;
  }

  v58 = v2;
  v63 = v5;
  v15 = 264;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v15 = 272;
  }

  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + v15];
  sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  v60 = NSFontAttributeName;
  *(inited + 32) = NSFontAttributeName;
  v62 = inited + 32;
  v18 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
  v61 = v16;
  *(inited + 40) = v16;
  *(inited + 64) = v18;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v59 = NSLanguageIdentifierAttributeName;
  v19 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_1004852E4(&v0[v19], v11);
  if ((*(v7 + 48))(v11, 1, v6))
  {
    v20 = v61;
    v21 = v61;

    v22 = v60;
    v23 = v59;
    sub_100007214(v11, &qword_100615038, &qword_1004EA878);
LABEL_13:
    v30 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_14:
    *v30 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_15;
  }

  v57 = v0;
  (*(v7 + 16))(v9, v11, v6);
  v24 = v61;
  v25 = v61;

  v26 = v60;
  v27 = v59;
  sub_100007214(v11, &qword_100615038, &qword_1004EA878);
  sub_1004B6E14();
  (*(v7 + 8))(v9, v6);
  v28 = sub_1004B6D64();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    sub_100007214(v13, &qword_100615040, &unk_1004EA880);
    v0 = v57;
    v20 = v24;
    goto LABEL_13;
  }

  v54 = sub_1004B6D44();
  v31 = v55;
  (*(v29 + 8))(v13, v28);
  v30 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  if (!v31)
  {
    v0 = v57;
    v20 = v24;
    goto LABEL_14;
  }

  *v30 = v54;
  v0 = v57;
  v20 = v24;
LABEL_15:
  *(inited + 88) = v31;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670, &unk_1004EB270);
  swift_arrayDestroy();
  v32 = objc_allocWithZone(NSAttributedString);
  v33 = sub_1004BBE24();

  _s3__C3KeyVMa_1(0);
  sub_100485478();
  isa = sub_1004BBC24().super.isa;

  v35 = [v32 initWithString:v33 attributes:isa];

  v36 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v37 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v37)
  {
    v38 = v63;
    *v63 = v35;
    v39 = v67;
    swift_storeEnumTagMultiPayload();
    v40 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v41 = v66;
    sub_100485354(v37 + v40, v66);
    swift_beginAccess();
    v42 = v37;
    v43 = v35;
    sub_1004853B8(v38, v37 + v40);
    swift_endAccess();
    v44 = sub_10044E090(&off_1005D0C00);
    v45 = v58;
    sub_100485354(v41, v58);
    (*(v65 + 56))(v45, 0, 1, v39);
    sub_100480034(v44);

    sub_100007214(v45, &qword_100616678, &unk_1004EC3A0);

    sub_10048541C(v41);
    sub_10048541C(v38);
  }

  else
  {
    memcpy(v69, &v0[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
    v46 = v69[36];
    v47 = v63;
    *v63 = v35;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v48 = v35;
    sub_10046E570(v69, &v68);
    v49 = v46;
    v50 = v47;
    v51 = v0;
    v52 = sub_1004854D0(v50, v69, v46);

    sub_10046E5CC(v69);
    [v51 addSubview:v52];

    v53 = *&v51[v36];
    *&v51[v36] = v52;

    v51[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 0;
  }
}

void sub_10048313C()
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v2 = &v52 - v1;
  v3 = _s15TextContentViewC7ContentOMa(0);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v52 - v7;
  v9 = sub_1004B6E44();
  v62 = *(v9 - 8);
  __chkstk_darwin();
  v57 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v12 = &v52 - v11;
  sub_100003ABC(&qword_100615040, &unk_1004EA880);
  __chkstk_darwin();
  v14 = &v52 - v13;
  if (!*&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8])
  {
    v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 1;
    return;
  }

  v54 = v4;
  v55 = v6;
  v60 = v3;
  v61 = v8;
  v56 = v2;
  v59 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = NSFontAttributeName;
  v58 = inited + 32;
  v53 = &v0[OBJC_IVAR___MusicDespacitoContentView_specs];
  v16 = *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 312];
  v17 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *(inited + 40) = v16;
  *(inited + 64) = v17;
  *(inited + 72) = NSLanguageIdentifierAttributeName;
  v18 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v19 = &v0[v18];
  v20 = v0;
  sub_1004852E4(v19, v12);
  if ((*(v62 + 48))(v12, 1, v9))
  {

    v21 = NSFontAttributeName;
    v22 = v16;
    v23 = NSLanguageIdentifierAttributeName;
    sub_100007214(v12, &qword_100615038, &qword_1004EA878);
    v24 = v61;
LABEL_7:
    v32 = (inited + 80);
    *(inited + 104) = &type metadata for String;
LABEL_8:
    *v32 = 0;
    v33 = 0xE000000000000000;
    goto LABEL_9;
  }

  v52 = v0;
  v25 = v62;
  v26 = v57;
  (*(v62 + 16))(v57, v12, v9);

  v27 = NSFontAttributeName;
  v28 = v16;
  v29 = NSLanguageIdentifierAttributeName;
  sub_100007214(v12, &qword_100615038, &qword_1004EA878);
  sub_1004B6E14();
  (*(v25 + 8))(v26, v9);
  v30 = sub_1004B6D64();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v14, 1, v30) == 1)
  {
    sub_100007214(v14, &qword_100615040, &unk_1004EA880);
    v24 = v61;
    v20 = v52;
    goto LABEL_7;
  }

  v50 = sub_1004B6D44();
  v33 = v51;
  (*(v31 + 8))(v14, v30);
  v32 = (inited + 80);
  *(inited + 104) = &type metadata for String;
  v24 = v61;
  v20 = v52;
  if (!v33)
  {
    goto LABEL_8;
  }

  *v32 = v50;
LABEL_9:
  *(inited + 88) = v33;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670, &unk_1004EB270);
  swift_arrayDestroy();
  v34 = objc_allocWithZone(NSAttributedString);
  v35 = sub_1004BBE24();

  _s3__C3KeyVMa_1(0);
  sub_100485478();
  isa = sub_1004BBC24().super.isa;

  v37 = [v34 initWithString:v35 attributes:isa];

  v38 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v39 = *&v20[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (v39)
  {
    *v24 = v37;
    v40 = v60;
    swift_storeEnumTagMultiPayload();
    v41 = OBJC_IVAR___MusicTextContentView_content;
    swift_beginAccess();
    v42 = v55;
    sub_100485354(v39 + v41, v55);
    swift_beginAccess();
    v43 = v39;
    v44 = v37;
    sub_1004853B8(v24, v39 + v41);
    swift_endAccess();
    v45 = sub_10044E090(&off_1005D0BD8);
    v46 = v56;
    sub_100485354(v42, v56);
    (*(v54 + 56))(v46, 0, 1, v40);
    sub_100480034(v45);

    sub_100007214(v46, &qword_100616678, &unk_1004EC3A0);

    sub_10048541C(v42);
    sub_10048541C(v24);
  }

  else
  {
    memcpy(v65, v53, 0x2B0uLL);
    *v24 = v37;
    swift_storeEnumTagMultiPayload();
    objc_allocWithZone(_s15TextContentViewCMa(0));
    v47 = v37;
    sub_10046E570(v65, &v64);
    v48 = sub_1004854D0(v24, v65, 0);
    sub_10046E5CC(v65);
    [v20 addSubview:v48];

    v49 = *&v20[v38];
    *&v20[v38] = v48;

    v20[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 0;
  }
}

id sub_1004838C4(void *a1)
{
  [a1 setAlpha:0.0];
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  return [a1 setTransform:&v3];
}

void sub_100483930()
{
  v80.receiver = v0;
  v80.super_class = _s20DespacitoContentViewCMa(0);
  objc_msgSendSuper2(&v80, "layoutSubviews");
  v79 = Int.seconds.getter(0);
  v72 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v1 = v0[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  if (v1 != 2 && (v1 & 1) == 0)
  {
    sub_100484164(v0, &v79);
  }

  v3 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v4 = *&v0[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
  [v0 bounds];
  [v4 sizeThatFits:{v5, v6}];
  v8 = v7;

  v9 = *&v0[v3];
  swift_beginAccess();
  v10 = v79;
  v11 = v9;
  [v0 bounds];
  [v11 setFrame:{0.0, v10, CGRectGetWidth(v81), v8}];

  [*&v0[v3] frame];
  MaxY = CGRectGetMaxY(v82);
  v79 = MaxY;
  v13 = OBJC_IVAR___MusicDespacitoContentView_transliterationLineView;
  v14 = *&v0[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView];
  if (!v14)
  {
    v28 = 0;
    v27 = 0;
    goto LABEL_21;
  }

  v15 = v14;
  [v0 bounds];
  [v15 sizeThatFits:{v16, v17}];
  v19 = v18;
  [*&v0[v3] frame];
  v20 = CGRectGetMaxY(v83) + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 328];
  [v0 bounds];
  Width = CGRectGetWidth(v84);
  v22 = objc_opt_self();
  v23 = [v22 _isInAnimationBlockWithAnimationsEnabled];
  v24 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate];
  if (v23)
  {
    if (v24 != 2)
    {
      if (v24)
      {
        v25 = *&v0[v13];
        *&v0[v13] = 0;

        v26 = 0;
        v27 = 0;
      }

      else
      {
        v27 = swift_allocObject();
        *(v27 + 16) = v15;
        *(v27 + 24) = 0;
        *(v27 + 32) = v20;
        *(v27 + 40) = Width;
        *(v27 + 48) = v19;
        v39 = swift_allocObject();
        *(v39 + 16) = sub_1004863F0;
        *(v39 + 24) = v27;
        v77 = sub_1000E639C;
        v78 = v39;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_100008224;
        v76 = &unk_1005D4938;
        v40 = _Block_copy(&aBlock);
        v41 = v15;

        [v22 performWithoutAnimation:v40];
        _Block_release(v40);
        isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

        if (isEscapingClosureAtFileLocation)
        {
          __break(1u);
          goto LABEL_40;
        }

        [v41 frame];
        MaxY = CGRectGetMaxY(v86);
        v79 = MaxY;
        v26 = sub_1004863F0;
      }

      swift_unknownObjectWeakInit();
      v43 = swift_allocObject();
      v44 = v24 & 1;
      *(v43 + 16) = v44;
      *(v43 + 24) = v15;
      v45 = v15;
      sub_100485C74(v45, v44, sub_1004863D0, v43);

      swift_unknownObjectWeakDestroy();
      v28 = v26;
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v24 == 2 || (v24 & 1) == 0)
  {
LABEL_16:
    v30 = v15;
    [v30 setFrame:{0.0, v20, Width, v19}];
    [v30 frame];
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v38 = v37;

    v85.origin.x = v32;
    v85.origin.y = v34;
    v85.size.width = v36;
    v85.size.height = v38;
    MaxY = CGRectGetMaxY(v85);

    v28 = 0;
    v27 = 0;
    v79 = MaxY;
    goto LABEL_20;
  }

  [v15 removeFromSuperview];

  v29 = *&v0[v13];
  *&v0[v13] = 0;

  v28 = 0;
  v27 = 0;
LABEL_20:
  v0[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
LABEL_21:
  v46 = OBJC_IVAR___MusicDespacitoContentView_translationLineView;
  v47 = *&v0[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
  if (v47)
  {
    v71 = v28;
    v48 = v47;
    [v0 bounds];
    [v48 sizeThatFits:{v49, v50}];
    v52 = v51;
    v53 = MaxY + *&v0[OBJC_IVAR___MusicDespacitoContentView_specs + 296];
    [v0 bounds];
    v54 = CGRectGetWidth(v87);
    v55 = objc_opt_self();
    v56 = [v55 _isInAnimationBlockWithAnimationsEnabled];
    v57 = v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate];
    if (v56)
    {
      v58 = v72;
      if (v57 != 2)
      {
        if (v57)
        {
          [v48 removeFromSuperview];
          v59 = 0;
          v60 = 0;
LABEL_33:
          v67 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v68 = swift_allocObject();
          *(v68 + 16) = v57 & 1;
          *(v68 + 24) = v67;

          sub_100485C74(v48, v57 & 1, sub_1004859A4, v68);

          v58 = v72;
          goto LABEL_34;
        }

        v60 = swift_allocObject();
        *(v60 + 16) = v48;
        *(v60 + 24) = 0;
        *(v60 + 32) = v53;
        *(v60 + 40) = v54;
        *(v60 + 48) = v52;
        v63 = swift_allocObject();
        *(v63 + 16) = sub_100486650;
        *(v63 + 24) = v60;
        v77 = sub_1000E6038;
        v78 = v63;
        aBlock = _NSConcreteStackBlock;
        v74 = 1107296256;
        v75 = sub_100008224;
        v76 = &unk_1005D4898;
        v64 = _Block_copy(&aBlock);
        v65 = v48;

        [v55 performWithoutAnimation:v64];
        _Block_release(v64);
        v66 = swift_isEscapingClosureAtFileLocation();

        if ((v66 & 1) == 0)
        {
          v89.origin.x = 0.0;
          v89.origin.y = v53;
          v89.size.width = v54;
          v89.size.height = v52;
          v79 = CGRectGetMaxY(v89);
          v59 = sub_100486650;
          goto LABEL_33;
        }

LABEL_40:
        __break(1u);
        return;
      }
    }

    else
    {
      v58 = v72;
      if (v57 != 2 && (v57 & 1) != 0)
      {
        [v48 removeFromSuperview];

        v61 = *&v0[v46];
        *&v0[v46] = 0;

        v59 = 0;
        v60 = 0;
LABEL_34:
        v0[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
        v28 = v71;
        goto LABEL_35;
      }
    }

    [v48 setFrame:{0.0, v53, v54, v52, v71}];
    v88.origin.x = 0.0;
    v88.origin.y = v53;
    v88.size.width = v54;
    v88.size.height = v52;
    v62 = CGRectGetMaxY(v88);

    v59 = 0;
    v60 = 0;
    v79 = v62;
    goto LABEL_34;
  }

  v59 = 0;
  v60 = 0;
  v58 = v72;
LABEL_35:
  v69 = v0[v58];
  if (v69 != 2 && (v69 & 1) != 0)
  {
    v70 = v28;
    sub_100484164(v0, &v79);
    v28 = v70;
  }

  sub_10003CC4C(v28, v27);
  sub_10003CC4C(v59, v60);
}

void sub_100484164(char *a1, double *a2)
{
  v2 = *&a1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView];
  if (v2)
  {
    v5 = v2;
    [a1 bounds];
    sub_10048198C(*(*&a1[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), v6, v7);
    v9 = v8;
    swift_beginAccess();
    v10 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
    v11 = 0.0;
    if (a1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition])
    {
      v11 = *&a1[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
    }

    v12 = *a2 + v11;
    v13 = v5;
    [a1 bounds];
    [v13 setFrame:{0.0, v12, CGRectGetWidth(v25), v9}];
    [v13 frame];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;

    v26.origin.x = v15;
    v26.origin.y = v17;
    v26.size.width = v19;
    v26.size.height = v21;
    MaxY = CGRectGetMaxY(v26);

    swift_beginAccess();
    *a2 = MaxY;
    v23 = a1[v10];
    if (v23 != 2 && (v23 & 1) == 0)
    {
      v24 = *&a1[OBJC_IVAR___MusicDespacitoContentView_specs + 112];
      swift_beginAccess();
      *a2 = MaxY + v24;
    }
  }
}

void sub_100484310(char a1, uint64_t a2)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView];
      *&Strong[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
    }
  }
}

void sub_1004843C0(char **a1@<X8>)
{
  v84 = a1;
  v81 = _s15TextContentViewC7ContentOMa(0);
  __chkstk_darwin();
  v3 = (&v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v86 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v72 - v5;
  __chkstk_darwin();
  v8 = &v72 - v7;
  __chkstk_darwin();
  v10 = &v72 - v9;
  v91 = &v72 - v9;
  v11 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text + 8];
  v89 = *&v1[OBJC_IVAR___MusicDespacitoContentView_text];
  v77 = v11;
  v12 = OBJC_IVAR___MusicDespacitoContentView_language;
  swift_beginAccess();
  sub_1004852E4(&v1[v12], v10);
  v13 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText + 8];
  v73 = *&v1[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  v79 = v13;
  v14 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
  swift_beginAccess();
  v85 = v8;
  sub_1004852E4(&v1[v14], v8);
  v15 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText + 8];
  v74 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationText];
  v75 = v15;
  v16 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText + 8];
  v87 = *&v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  v92 = v16;
  v80 = v1[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition];
  v17 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText + 8];
  v72 = *&v1[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  v90 = v17;
  v18 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  v83 = v6;
  sub_1004852E4(&v1[v18], v6);
  v82 = v1;
  memcpy(v95, &v1[OBJC_IVAR___MusicDespacitoContentView_specs], 0x2B0uLL);
  v88 = _s20DespacitoContentViewCMa(0);
  v19 = objc_allocWithZone(v88);
  v19[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
  *&v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
  v20 = OBJC_IVAR___MusicDespacitoContentView_language;
  v76 = OBJC_IVAR___MusicDespacitoContentView_language;
  v21 = sub_1004B6E44();
  v22 = *(*(v21 - 8) + 56);
  v22(&v19[v20], 1, 1, v21);
  v78 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
  v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
  v23 = &v19[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
  *v24 = 0;
  v24[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v21);
  v25 = &v19[OBJC_IVAR___MusicDespacitoContentView_translationText];
  *v25 = 0;
  v25[1] = 0;
  v19[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
  v26 = v21;
  v27 = v75;
  v22(&v19[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v26);
  v28 = v77;
  v29 = &v19[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
  *v29 = 0;
  v29[1] = 0;
  v30 = v86;
  sub_1004852E4(v91, v86);
  v31 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
  v32 = v89;
  v33 = v3;
  *v3 = v89;
  v3[1] = v28;
  v34 = v3 + v31;
  v35 = v30;
  sub_1004852E4(v30, v34);
  swift_storeEnumTagMultiPayload();
  objc_allocWithZone(_s15TextContentViewCMa(0));
  swift_bridgeObjectRetain_n();
  sub_10046E570(v95, v94);

  v36 = v79;

  v37 = sub_1004854D0(v33, v95, 0);
  sub_100007214(v35, &qword_100615038, &qword_1004EA878);
  *&v19[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v37;
  memcpy(&v19[OBJC_IVAR___MusicDespacitoContentView_specs], v95, 0x2B0uLL);
  v38 = &v19[OBJC_IVAR___MusicDespacitoContentView_text];
  *v38 = v32;
  v38[1] = v28;
  v39 = v76;
  swift_beginAccess();

  sub_10046E570(v95, v94);
  sub_100485854(v91, &v19[v39]);
  swift_endAccess();
  v19[v78] = v80;
  v93.receiver = v19;
  v93.super_class = v88;
  v40 = objc_msgSendSuper2(&v93, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v41 = *(v40 + OBJC_IVAR___MusicDespacitoContentView_mainLineView);
  v42 = v40;
  [v42 addSubview:v41];
  if (v36)
  {
    v43 = v27;
    v44 = sub_1004BBF24();
    v46 = v45;
    if (v44 == sub_1004BBF24() && v46 == v47)
    {
    }

    else
    {
      v48 = sub_1004BD9C4();

      if (v48)
      {
      }

      else
      {
        v49 = v86;
        sub_1004852E4(v85, v86);
        v50 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
        swift_beginAccess();
        sub_1004858C4(v49, v42 + v50);
        swift_endAccess();
        v51 = (v42 + OBJC_IVAR___MusicDespacitoContentView_transliterationText);
        *v51 = v73;
        v51[1] = v36;

        sub_10048313C();
      }
    }

    v27 = v43;
  }

  if (!v27)
  {

    v57 = v83;
    if (!v90)
    {
      goto LABEL_27;
    }

LABEL_19:
    if (v92)
    {
      v62 = sub_1004BBF24();
      v64 = v63;
      if (v62 == sub_1004BBF24() && v64 == v65)
      {

        goto LABEL_27;
      }

      v66 = sub_1004BD9C4();

      if ((v66 & 1) == 0)
      {
        sub_1004828A4(v72, v90);
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  v52 = sub_1004BBF24();
  v54 = v53;

  v56 = sub_1004BBF24();
  v57 = v83;
  if (v52 == v56 && v54 == v55)
  {

    goto LABEL_16;
  }

  v58 = sub_1004BD9C4();

  if (v58)
  {
LABEL_16:

    if (!v90)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  v59 = v86;
  sub_1004852E4(v57, v86);
  v60 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
  swift_beginAccess();
  sub_1004858C4(v59, v42 + v60);
  swift_endAccess();
  v61 = (v42 + OBJC_IVAR___MusicDespacitoContentView_translationText);
  *v61 = v74;
  v61[1] = v27;

  sub_100482950();
  if (v90)
  {
    goto LABEL_19;
  }

LABEL_27:
  v67 = (v42 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
  v68 = v92;
  *v67 = v87;
  v67[1] = v68;

  sub_100481E6C();

  sub_10046E5CC(v95);
  sub_100007214(v57, &qword_100615038, &qword_1004EA878);
  sub_100007214(v85, &qword_100615038, &qword_1004EA878);
  sub_100007214(v91, &qword_100615038, &qword_1004EA878);
  v69 = OBJC_IVAR___MusicDespacitoContentView_mainLineView;
  v70 = v82;
  sub_1004818B4(*(*&v82[OBJC_IVAR___MusicDespacitoContentView_mainLineView] + OBJC_IVAR___MusicTextContentView_isSelected), 0);
  sub_1004815E0(*(*&v70[v69] + OBJC_IVAR___MusicTextContentView_alignment));
  [v70 bounds];
  [v42 setFrame:?];

  v71 = v84;
  v84[3] = v88;
  *v71 = v42;
}

uint64_t sub_100484CE8(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v7);

  sub_100009178(v7, v7[3]);
  v5 = sub_1004BD9A4();
  sub_100004C6C(v7);
  return v5;
}

id sub_100484D98(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

void sub_100484F84(uint64_t a1)
{
  sub_100467FD8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10048507C(uint64_t a1)
{
  sub_100485100(319);
  if (v1 <= 0x3F)
  {
    sub_100009130(319, &qword_100615B58, NSAttributedString_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_100485100(uint64_t a1)
{
  if (!qword_100616640)
  {
    sub_100003B68(&qword_100615038, &qword_1004EA878);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_100616640);
    }
  }
}

unint64_t sub_100485178()
{
  result = qword_100616670;
  if (!qword_100616670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616670);
  }

  return result;
}

uint64_t sub_1004851CC(const void *a1)
{
  v3 = *v1;
  memcpy(__dst, (v3 + OBJC_IVAR___MusicDespacitoContentView_specs), sizeof(__dst));
  memcpy((v3 + OBJC_IVAR___MusicDespacitoContentView_specs), a1, 0x2B0uLL);
  sub_10046E570(a1, &v5);
  sub_10046E5CC(__dst);
  sub_100480FCC();
  return sub_10046E5CC(a1);
}

uint64_t sub_1004852E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038, &qword_1004EA878);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100485354(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004853B8(uint64_t a1, uint64_t a2)
{
  v4 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048541C(uint64_t a1)
{
  v2 = _s15TextContentViewC7ContentOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100485478()
{
  result = qword_100616F20;
  if (!qword_100616F20)
  {
    _s3__C3KeyVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616F20);
  }

  return result;
}

char *sub_1004854D0(uint64_t a1, uint64_t a2, void *a3)
{
  v27 = a3;
  v6 = _s15TextContentViewC7ContentOMa(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v3[OBJC_IVAR___MusicTextContentView_isSelected] = 0;
  *&v3[OBJC_IVAR___MusicTextContentView_alignment] = 0;
  v3[OBJC_IVAR___MusicTextContentView_isScrolling] = 1;
  v12 = OBJC_IVAR___MusicTextContentView_label;
  v13 = [objc_allocWithZone(UILabel) init];
  [v13 setAdjustsFontForContentSizeCategory:1];
  [v13 setLineBreakStrategy:3];
  [v13 setNumberOfLines:0];
  [v13 setTextAlignment:4];
  [v13 setAutoresizingMask:18];
  *&v3[v12] = v13;
  *&v3[OBJC_IVAR___MusicTextContentView_selectedLabel] = 0;
  v14 = OBJC_IVAR___MusicTextContentView_textColorOverride;
  *&v3[OBJC_IVAR___MusicTextContentView_textColorOverride] = 0;
  sub_100485354(a1, &v3[OBJC_IVAR___MusicTextContentView_content]);
  memcpy(&v3[OBJC_IVAR___MusicTextContentView_specs], a2, 0x2B0uLL);
  v15 = v27;
  *&v3[v14] = v27;
  sub_10046E570(a2, &v29);
  v16 = _s15TextContentViewCMa(0);
  v28.receiver = v3;
  v28.super_class = v16;
  v17 = v15;
  v18 = objc_msgSendSuper2(&v28, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v19 = sub_10044E090(&off_1005D0A48);
  (*(v7 + 56))(v11, 1, 1, v6);
  v20 = v18;
  sub_100480034(v19);
  v21 = a1;

  sub_100007214(v11, &qword_100616678, &unk_1004EC3A0);
  sub_100485354(a1, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10048541C(v9);
    v22 = &off_100616000;
  }

  else
  {

    v23 = *&v20[OBJC_IVAR___MusicTextContentView_label];
    if (*(a2 + 88))
    {
      v24 = 4;
    }

    else
    {
      v24 = *(a2 + 80);
    }

    v25 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
    [v23 setTextAlignment:v24];
    sub_100007214(&v9[v25], &qword_100615038, &qword_1004EA878);
    v22 = &off_100616000;
  }

  [v20 addSubview:{*(v22[150] + v20), v27}];

  sub_10048541C(v21);
  return v20;
}

uint64_t sub_100485854(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038, &qword_1004EA878);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004858C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038, &qword_1004EA878);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100485934()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10048596C()
{

  return swift_deallocObject();
}

void sub_1004859B0()
{
  *(v0 + OBJC_IVAR___MusicTextContentView_isSelected) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_alignment) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_isScrolling) = 1;
  v1 = OBJC_IVAR___MusicTextContentView_label;
  v2 = [objc_allocWithZone(UILabel) init];
  [v2 setAdjustsFontForContentSizeCategory:1];
  [v2 setLineBreakStrategy:3];
  [v2 setNumberOfLines:0];
  [v2 setTextAlignment:4];
  [v2 setAutoresizingMask:18];
  *(v0 + v1) = v2;
  *(v0 + OBJC_IVAR___MusicTextContentView_selectedLabel) = 0;
  *(v0 + OBJC_IVAR___MusicTextContentView_textColorOverride) = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_100485ADC()
{
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_isScrolling) = 1;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLineView) = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView) = 0;
  v1 = OBJC_IVAR___MusicDespacitoContentView_language;
  v2 = sub_1004B6E44();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition) = 2;
  v4 = (v0 + OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText);
  *v4 = 0;
  v4[1] = 0;
  v5 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText);
  *v5 = 0;
  v5[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_translationLanguage, 1, 1, v2);
  v6 = (v0 + OBJC_IVAR___MusicDespacitoContentView_translationText);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate) = 2;
  v3(v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage, 1, 1, v2);
  v7 = (v0 + OBJC_IVAR___MusicDespacitoContentView_transliterationText);
  *v7 = 0;
  v7[1] = 0;
  sub_1004BD624();
  __break(1u);
}

void sub_100485C74(id a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    v36 = sub_100470754;
    v37 = v8;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4988;
    v9 = _Block_copy(&v32);
    v10 = a1;

    [(objc_class *)v7.super.isa addAnimations:v9];
    _Block_release(v9);
    v11 = swift_allocObject();
    *(v11 + 16) = a3;
    *(v11 + 24) = a4;
    v36 = sub_100009350;
    v37 = v11;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10013ABCC;
    v35 = &unk_1005D49D8;
    v12 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v12];
    _Block_release(v12);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v14 = swift_allocObject();
    *(v14 + 16) = v10;
    v36 = sub_10047075C;
    v37 = v14;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4A28;
    v15 = _Block_copy(&v32);
    v16 = v10;

    [v13 addAnimations:v15];
    _Block_release(v15);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];
LABEL_5:

    return;
  }

  [a1 alpha];
  v18 = v17;
  v19 = objc_opt_self();
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_100486444;
  *(v21 + 24) = v20;
  v36 = sub_1000E639C;
  v37 = v21;
  v32 = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100008224;
  v35 = &unk_1005D4AA0;
  v22 = _Block_copy(&v32);
  v23 = a1;

  [v19 performWithoutAnimation:v22];
  _Block_release(v22);
  LOBYTE(v19) = swift_isEscapingClosureAtFileLocation();

  if ((v19 & 1) == 0)
  {
    sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
    v7.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    v24 = swift_allocObject();
    *(v24 + 16) = v23;
    v36 = sub_100470804;
    v37 = v24;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4AF0;
    v25 = _Block_copy(&v32);
    v26 = v23;

    [(objc_class *)v7.super.isa addAnimations:v25];
    _Block_release(v25);
    v27 = swift_allocObject();
    *(v27 + 16) = a3;
    *(v27 + 24) = a4;
    v36 = sub_1000081FC;
    v37 = v27;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10013ABCC;
    v35 = &unk_1005D4B40;
    v28 = _Block_copy(&v32);

    [(objc_class *)v7.super.isa addCompletion:v28];
    _Block_release(v28);
    v13 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v29 = swift_allocObject();
    *(v29 + 16) = v26;
    *(v29 + 24) = v18;
    v36 = sub_100486484;
    v37 = v29;
    v32 = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_1000D6C80;
    v35 = &unk_1005D4B90;
    v30 = _Block_copy(&v32);
    v31 = v26;

    [v13 addAnimations:v30];
    _Block_release(v30);
    [(objc_class *)v7.super.isa startAnimation];
    [v13 startAnimation];

    goto LABEL_5;
  }

  __break(1u);
}

uint64_t sub_100486338()
{

  return swift_deallocObject();
}

uint64_t sub_100486380(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100486398()
{

  return swift_deallocObject();
}

id sub_1004863D0()
{
  if (*(v0 + 16) == 1)
  {
    return [*(v0 + 24) removeFromSuperview];
  }

  return result;
}

uint64_t sub_10048640C()
{

  return swift_deallocObject();
}

uint64_t sub_10048644C()
{

  return swift_deallocObject();
}

uint64_t sub_100486498(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615038, &qword_1004EA878);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_100486508()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [*(v1 + OBJC_IVAR___MusicTextContentView_label) setAlpha:1.0 - v2];
  result = *(v1 + OBJC_IVAR___MusicTextContentView_selectedLabel);
  if (result)
  {

    return [result setAlpha:v2];
  }

  return result;
}

unint64_t sub_1004865B4()
{
  result = qword_100616688;
  if (!qword_100616688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616688);
  }

  return result;
}

uint64_t sub_100486684@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_10001342C(v1 + v3, a1);
}

id sub_1004866DC()
{
  v1 = UIView.untransformedFrame.getter();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  if (v8 == 2)
  {
    v9 = CGPoint.centerRight.unsafeMutableAddressor();
  }

  else if (v8)
  {
    v9 = CGPoint.center.unsafeMutableAddressor();
  }

  else
  {
    v9 = CGPoint.centerLeft.unsafeMutableAddressor();
  }

  v10 = v9;
  swift_beginAccess();
  [v0 setAnchorPoint:{*v10, v10[1]}];
  return UIView.untransformedFrame.setter(v1, v3, v5, v7);
}

void sub_10048678C(void *a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    [a1 removeFromSuperview];
    v3 = *&v1[v2];
    if (!v3)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3 == a1)
  {
    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:
  v4 = v3;
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [*&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView] addSubview:v4];
  v5 = objc_opt_self();
  sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004C51F0;
  v7 = [v4 leadingAnchor];
  v8 = [v1 leadingAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];

  *(v6 + 32) = v9;
  v10 = [v4 trailingAnchor];
  v11 = [v1 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];

  *(v6 + 40) = v12;
  v13 = [v4 topAnchor];
  v14 = [v1 topAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];

  *(v6 + 48) = v15;
  v16 = [v4 bottomAnchor];
  v17 = [v1 bottomAnchor];
  v18 = [v16 constraintEqualToAnchor:v17];

  *(v6 + 56) = v18;
  sub_100009130(0, &qword_100616718, NSLayoutConstraint_ptr);
  isa = sub_1004BC284().super.isa;

  [v5 activateConstraints:isa];
}

void (*sub_100486A6C(uint64_t a1))(__int128 *a1, char a2)
{
  v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  v3 = *(v1 + v2);
  *a1 = v3;
  v4 = v3;
  return sub_100486AC8;
}

void sub_100486AC8(__int128 *a1, char a2)
{
  v3 = (*(a1 + 2) + *(a1 + 3));
  v8 = *v3;
  v4 = *a1;
  *v3 = *a1;
  v5 = v4;
  v6 = v5;
  if (a2)
  {
    v7 = v5;
    sub_10048678C(v8);
  }

  else
  {
    sub_10048678C(v8);
  }
}

id sub_100486B60()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView;
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView];
  }

  else
  {
    v4 = sub_100486BC4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100486BC4(char *a1)
{
  v2 = [objc_allocWithZone(UIView) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = &a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
  [v2 setBackgroundColor:*&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 568]];
  [v2 setAlpha:0.0];
  v4 = [v2 layer];
  [v4 setCornerCurve:kCACornerCurveContinuous];

  v5 = [v2 layer];
  [v5 setCornerRadius:*(v3 + 72)];

  [a1 insertSubview:v2 atIndex:0];
  v6 = objc_opt_self();
  sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004C51F0;
  v8 = [v2 leadingAnchor];
  v9 = [a1 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:-*(v3 + 73)];

  *(v7 + 32) = v10;
  v11 = [v2 trailingAnchor];
  v12 = [a1 trailingAnchor];
  v13 = [v11 constraintEqualToAnchor:v12 constant:*(v3 + 73)];

  *(v7 + 40) = v13;
  v14 = [v2 topAnchor];
  v15 = [a1 topAnchor];
  v16 = [v14 constraintEqualToAnchor:v15 constant:-*(v3 + 73)];

  *(v7 + 48) = v16;
  v17 = [v2 bottomAnchor];
  v18 = [a1 bottomAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:*(v3 + 73)];

  *(v7 + 56) = v19;
  sub_100009130(0, &qword_100616718, NSLayoutConstraint_ptr);
  isa = sub_1004BC284().super.isa;

  [v6 activateConstraints:isa];

  return v2;
}

void sub_100486FC4(char a1)
{
  if ([v1 isHighlighted] == (a1 & 1))
  {
    return;
  }

  v2 = sub_100486B60();
  if ([v1 isHighlighted])
  {
    v3 = &v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    *v3 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius];
    v3[8] = 0;
    v4 = 0.0;
LABEL_6:
    sub_100487C74(1, v4);
    goto LABEL_7;
  }

  if ((v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius + 8] & 1) == 0)
  {
    v4 = *&v1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
    goto LABEL_6;
  }

LABEL_7:
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;
  v7 = v2;
  v8 = v1;
  v9 = v7;
  v10 = [v8 isHighlighted];
  v11 = objc_allocWithZone(UISpringTimingParameters);
  if (v10)
  {
    v12 = 24.0;
  }

  else
  {
    v12 = 50.0;
  }

  v13 = 322.0;
  if (!v10)
  {
    v13 = 300.0;
  }

  v14 = 2.0;
  if (v10)
  {
    v14 = 1.0;
    v15 = 0.0;
  }

  else
  {
    v15 = 0.1;
  }

  if (v10)
  {
    v16 = 0.2;
  }

  else
  {
    v16 = 0.3;
  }

  v17 = [v11 initWithMass:v14 stiffness:v13 damping:v12 initialVelocity:{0.0, 0.0}];
  v19 = sub_1004969C0(v10, v18);
  v20 = objc_opt_self();
  v35 = sub_10048F834;
  v36 = v5;
  v31 = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_1000D6C80;
  v34 = &unk_1005D4F08;
  v21 = _Block_copy(&v31);
  swift_unknownObjectRetain();

  [v20 _animateWithDuration:0 delay:v19 options:v21 factory:0 animations:v16 completion:v15];
  _Block_release(v21);
  swift_unknownObjectRelease();
  [v17 settlingDuration];
  v23 = v22;
  [v17 mass];
  v25 = v24;
  [v17 stiffness];
  v27 = v26;
  [v17 damping];
  v29 = v28;
  v35 = sub_10048F83C;
  v36 = v6;
  v31 = _NSConcreteStackBlock;
  v32 = 1107296256;
  v33 = sub_1000D6C80;
  v34 = &unk_1005D4F30;
  v30 = _Block_copy(&v31);

  [v20 _animateUsingSpringWithDuration:0 delay:v30 options:0 mass:v23 stiffness:v15 damping:v25 initialVelocity:v27 animations:v29 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v30);
}

void sub_100487370(void *a1, char *a2)
{
  v4 = [a2 isHighlighted];
  v5 = 0.0;
  v6 = 1.0;
  if (v4)
  {
    v5 = 1.0;
  }

  [a1 setAlpha:v5];
  v7 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  if ([a2 isHighlighted])
  {
    v6 = *&a2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 560];
  }

  [v7 setAlpha:v6];
}

id sub_100487434(char *a1, void *a2)
{
  if ([a1 isHighlighted])
  {
    v4 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 512];
    v5 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 520];
    v6 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 528];
    v7 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 536];
    v8 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 544];
    v9 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 552];
  }

  else
  {
    v5 = 0;
    v4 = 1.0;
    v6 = 0;
    v7 = 1.0;
    v8 = 0;
    v9 = 0;
  }

  v10 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  [v10 setTransform:&v12];
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  return [a2 setTransform:&v12];
}

void sub_10048769C()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v17[0] = v3;
    (*(v4 + 80))(ObjectType, v4);
  }

  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
  *(v1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v8 = sub_100486A6C(v17);
  v9 = *v7;
  if (*v7)
  {
    v10 = *(v1 + v6);
    v11 = *(v7 + 8);
    v12 = v7;
    v13 = swift_getObjectType();
    v14 = *(v11 + 40);
    v15 = v9;
    v14(v10, v13, v11);
    v16 = *v12;
    *v12 = v9;
    *(v12 + 8) = v11;
  }

  v8(v17, 0);
  sub_1004877C8(0, 0);
}

void sub_1004877C8(char a1, void *a2)
{
  if ([v2 isSelected] != (a1 & 1))
  {
    if ((a1 & 1) != 0 && v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] == 1)
    {
      sub_10048809C(0, a2 != 0);
    }

    v5 = a1 & 1;
    [v2 setSelected:a1 & 1];
    if ([v2 isHighlighted])
    {
      [v2 setHighlighted:0];
      [v2 cancelTrackingWithEvent:0];
      v6 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      *(v7 + 24) = v5;
      v8 = sub_10048F85C;
      if (!a2)
      {
LABEL_7:
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          if (a1)
          {
            v29 = xmmword_1004D9D20;
            v28 = xmmword_1004D9B70;
            v11 = 0;
            v12 = 0;
          }

          else
          {
            v28 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400);
            v29 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416);
            v11 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432);
            v12 = *(Strong + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 440);
          }

          v31 = v29;
          aBlock = v28;
          v32 = v11;
          v33 = v12;
          [v10 setTransform:&aBlock];
        }

        v22 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        v23 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (v23)
        {
          v24 = *(v22 + 1);
          ObjectType = swift_getObjectType();
          *&aBlock = v23;
          v26 = *(v24 + 88);
          v27 = v23;
          v26(a1 & 1, 0, ObjectType, v24);
        }

LABEL_18:

        return;
      }
    }

    else
    {
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = v5;
      v8 = sub_10048F660;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    v32 = v8;
    v33 = v7;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v31 = sub_1000D6C80;
    *(&v31 + 1) = &unk_1005D4E68;
    v14 = _Block_copy(&aBlock);
    v15 = a2;

    [v15 addAnimations:v14];
    _Block_release(v14);
    v16 = &v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v17 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v17)
    {
      v18 = *(v16 + 1);
      v19 = swift_getObjectType();
      *&aBlock = v17;
      v20 = *(v18 + 88);
      v21 = v17;
      v20(a1 & 1, 1, v19, v18);

      return;
    }

    goto LABEL_18;
  }
}

void sub_100487B64(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v4 = xmmword_1004D9D20;
      v5 = xmmword_1004D9B70;
      v6 = 0uLL;
    }

    else
    {
      v5 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400];
      v4 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416];
      v6 = *&Strong[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432];
    }

    v8[0] = v5;
    v8[1] = v4;
    v8[2] = v6;
    v7 = Strong;
    [Strong setTransform:v8];
  }
}

void sub_100487C74(char a1, double a2)
{
  v5 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius;
  if (*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] != a2)
  {
    v36 = v5;
    v7 = [v5 timingParameters];
    if (v7)
    {
      v8 = [v7 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v8)
      {
        v9 = sub_1004BBE24();
        v10 = [objc_opt_self() animationWithKeyPath:v9];

        v11 = v10;
        v12 = 0.0;
        if (a1)
        {
          [v36 duration];
        }

        [v11 setDuration:v12];
        [v11 setFillMode:kCAFillModeBoth];
        isa = sub_1004B7194().super.super.isa;
        [v11 setFromValue:isa];

        v14 = sub_1004B7194().super.super.isa;
        [v11 setToValue:v14];

        [v11 setRemovedOnCompletion:0];
        [v8 controlPoint1];
        v16 = v15;
        [v8 controlPoint1];
        v18 = v17;
        [v8 controlPoint2];
        v20 = v19;
        [v8 controlPoint2];
        v22 = v21;
        v23 = objc_allocWithZone(CAMediaTimingFunction);
        *&v24 = v16;
        *&v25 = v18;
        *&v26 = v20;
        *&v27 = v22;
        v28 = [v23 initWithControlPoints:v24 :v25 :v26 :v27];
        [v11 setTimingFunction:v28];

        v29 = [v2 layer];
        [v29 setShouldRasterize:0];

        v30 = objc_opt_self();
        [v30 begin];
        v31 = swift_allocObject();
        *(v31 + 16) = v2;
        aBlock[4] = sub_10048F860;
        aBlock[5] = v31;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        aBlock[3] = &unk_1005D4DF0;
        v32 = _Block_copy(aBlock);
        v33 = v2;

        [v30 setCompletionBlock:v32];
        _Block_release(v32);
        v34 = [v33 layer];
        v35 = sub_1004BBE24();
        [v34 addAnimation:v11 forKey:v35];

        [v30 commit];
        *&v2[v6] = a2;
        return;
      }
    }

    v5 = v36;
  }
}

void sub_10048809C(char a1, char a2)
{
  if ([v2 isSelected])
  {
    return;
  }

  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter])
  {
    v6 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterColorBrightness];
    isa = sub_1004BC6E4().super.super.isa;
    [v6 setValue:isa forKey:kCAFilterInputAmount];

    v8 = [v2 layer];
    sub_100003ABC(&qword_100615758, &qword_1004ECB50);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1004C50C0;
    v10 = *&v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter];
    v11 = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
    *(v9 + 32) = v10;
    *(v9 + 88) = v11;
    *(v9 + 56) = v11;
    *(v9 + 64) = v6;
    v12 = v10;
    v13 = v6;
    v14 = sub_1004BC284().super.isa;

    [v8 setFilters:v14];

    v15 = *&v2[v5];
    *&v2[v5] = v13;
  }

  v16 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
  v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused;
  if (v2[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] != (a1 & 1))
  {
    v51 = v16;
    v18 = [v16 timingParameters];
    if (v18)
    {
      v19 = [v18 cubicTimingParameters];
      swift_unknownObjectRelease();
      if (v19)
      {
        v20 = sub_1004BBE24();
        v21 = [objc_opt_self() animationWithKeyPath:v20];

        v22 = v21;
        v23 = 0.0;
        if (a2)
        {
          [v51 duration];
        }

        [v22 setDuration:{v23, "previousBlurRadius"}];
        [v22 setFillMode:kCAFillModeBoth];
        v24 = v2[v17];
        v53 = &type metadata for Int;
        aBlock[0] = v24;
        sub_100009178(aBlock, &type metadata for Int);
        v25 = sub_1004BD9A4();
        sub_100004C6C(aBlock);
        [v22 setFromValue:v25];
        swift_unknownObjectRelease();
        v53 = &type metadata for Int;
        aBlock[0] = a1 & 1;
        sub_100009178(aBlock, &type metadata for Int);
        v26 = sub_1004BD9A4();
        sub_100004C6C(aBlock);
        [v22 setToValue:v26];
        swift_unknownObjectRelease();
        [v19 controlPoint1];
        v28 = v27;
        [v19 controlPoint1];
        v30 = v29;
        [v19 controlPoint2];
        v32 = v31;
        [v19 controlPoint2];
        v34 = v33;
        v35 = objc_allocWithZone(CAMediaTimingFunction);
        *&v36 = v28;
        *&v37 = v30;
        *&v38 = v32;
        *&v39 = v34;
        v40 = [v35 initWithControlPoints:v36 :v37 :v38 :v39];
        [v22 setTimingFunction:v40];

        v41 = [v2 layer];
        [v41 setShouldRasterize:0];

        v42 = objc_opt_self();
        [v42 begin];
        v43 = swift_allocObject();
        *(v43 + 16) = v2;
        v54 = sub_10048F5BC;
        v55 = v43;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000D6C80;
        v53 = &unk_1005D4DA0;
        v44 = _Block_copy(aBlock);
        v45 = v2;

        [v42 setCompletionBlock:v44];
        _Block_release(v44);
        v46 = [v45 layer];
        v47 = sub_1004BBE24();
        [v46 addAnimation:v22 forKey:v47];

        [v42 commit];
        v48 = [v45 layer];
        v49 = [v22 toValue];
        v50 = sub_1004BBE24();
        [v48 setValue:v49 forKeyPath:v50];

        swift_unknownObjectRelease();
        v2[v17] = a1 & 1;
        return;
      }
    }

    v16 = v51;
  }
}

void sub_1004886CC(void *a1)
{
  v1 = [a1 layer];
  [v1 setShouldRasterize:1];
}

void sub_100488724()
{
  sub_100003ABC(&qword_100616678, &unk_1004EC3A0);
  __chkstk_darwin();
  v695 = &v642 - v1;
  sub_1004B6E64();
  __chkstk_darwin();
  v693 = &v642 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v708 = sub_1004BBE14();
  v712 = *(v708 - 1);
  __chkstk_darwin();
  v707 = &v642 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v5 = &v642 - v4;
  v705 = _s15TextContentViewC7ContentOMa(0);
  v694 = *(v705 - 1);
  __chkstk_darwin();
  v675 = (&v642 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v704 = (&v642 - v7);
  v710 = type metadata accessor for Lyrics.Translation.Line(0);
  v711 = *(v710 - 1);
  __chkstk_darwin();
  *&v706 = &v642 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
  __chkstk_darwin();
  v691 = &v642 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v676 = &v642 - v10;
  __chkstk_darwin();
  v690 = &v642 - v11;
  __chkstk_darwin();
  v682 = &v642 - v12;
  __chkstk_darwin();
  v654 = &v642 - v13;
  __chkstk_darwin();
  v681 = &v642 - v14;
  __chkstk_darwin();
  v670 = (&v642 - v15);
  __chkstk_darwin();
  v669 = &v642 - v16;
  __chkstk_darwin();
  v668 = &v642 - v17;
  __chkstk_darwin();
  v663 = &v642 - v18;
  __chkstk_darwin();
  v667 = &v642 - v19;
  __chkstk_darwin();
  v660 = &v642 - v20;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v689 = &v642 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v23 = &v642 - v22;
  __chkstk_darwin();
  v680 = &v642 - v24;
  __chkstk_darwin();
  v26 = &v642 - v25;
  __chkstk_darwin();
  v659 = &v642 - v27;
  __chkstk_darwin();
  v658 = &v642 - v28;
  __chkstk_darwin();
  v657 = &v642 - v29;
  __chkstk_darwin();
  v656 = &v642 - v30;
  __chkstk_darwin();
  v674 = &v642 - v31;
  __chkstk_darwin();
  v673 = (&v642 - v32);
  __chkstk_darwin();
  v672 = &v642 - v33;
  __chkstk_darwin();
  v671 = &v642 - v34;
  __chkstk_darwin();
  v700 = (&v642 - v35);
  __chkstk_darwin();
  v646 = &v642 - v36;
  __chkstk_darwin();
  v645 = &v642 - v37;
  __chkstk_darwin();
  v644 = &v642 - v38;
  __chkstk_darwin();
  v643 = &v642 - v39;
  __chkstk_darwin();
  v650 = &v642 - v40;
  __chkstk_darwin();
  v649 = &v642 - v41;
  __chkstk_darwin();
  v648 = &v642 - v42;
  __chkstk_darwin();
  v647 = &v642 - v43;
  __chkstk_darwin();
  v666 = &v642 - v44;
  __chkstk_darwin();
  v665 = &v642 - v45;
  __chkstk_darwin();
  v664 = &v642 - v46;
  __chkstk_darwin();
  v662 = &v642 - v47;
  __chkstk_darwin();
  v661 = &v642 - v48;
  __chkstk_darwin();
  v688 = &v642 - v49;
  sub_100003ABC(&qword_100615038, &qword_1004EA878);
  __chkstk_darwin();
  v703 = &v642 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v702 = (&v642 - v51);
  __chkstk_darwin();
  v709 = &v642 - v52;
  __chkstk_darwin();
  v698 = (&v642 - v53);
  __chkstk_darwin();
  v697 = &v642 - v54;
  __chkstk_darwin();
  v701 = (&v642 - v55);
  __chkstk_darwin();
  v678 = &v642 - v56;
  __chkstk_darwin();
  v677 = &v642 - v57;
  __chkstk_darwin();
  v684 = &v642 - v58;
  __chkstk_darwin();
  v686 = &v642 - v59;
  __chkstk_darwin();
  v685 = &v642 - v60;
  __chkstk_darwin();
  v696 = &v642 - v61;
  __chkstk_darwin();
  v692 = &v642 - v62;
  __chkstk_darwin();
  v699 = &v642 - v63;
  __chkstk_darwin();
  v651 = &v642 - v64;
  __chkstk_darwin();
  v653 = &v642 - v65;
  __chkstk_darwin();
  v652 = &v642 - v66;
  __chkstk_darwin();
  v655 = &v642 - v67;
  __chkstk_darwin();
  v713 = &v642 - v68;
  __chkstk_darwin();
  v679 = &v642 - v69;
  __chkstk_darwin();
  v687 = &v642 - v70;
  __chkstk_darwin();
  v683 = &v642 - v71;
  v72 = type metadata accessor for Lyrics.TextLine(0);
  v714 = *(v72 - 1);
  __chkstk_darwin();
  v74 = &v642 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v76 = &v642 - v75;
  __chkstk_darwin();
  v78 = &v642 - v77;
  sub_1004866DC();
  v79 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  v715 = v0;
  sub_10001342C(&v0[v79], v724);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      v711 = v741;
      v714 = [objc_allocWithZone(NSMutableAttributedString) init];
      v89 = v5;
      sub_1004BBDA4();
      v90 = v712;
      v91 = v5;
      v92 = v708;
      v710 = v712[2];
      v710(v707, v91, v708);
      if (qword_100614E40 != -1)
      {
        swift_once();
      }

      v93 = qword_100619A00;
      v94 = qword_100619A00;
      v702 = v93;
      v95 = v94;
      sub_1004B6DF4();
      v96 = v95;
      v713 = sub_1004BBED4();
      v97 = *(v90 + 8);
      v712 = (v90 + 8);
      v701 = v97;
      (v97)(v89, v92);
      v709 = sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
      v98 = swift_allocObject();
      v706 = xmmword_1004C50A0;
      *(v98 + 16) = xmmword_1004C50A0;
      *(v98 + 32) = NSFontAttributeName;
      v99 = &v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs];
      v100 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 232];
      v703 = sub_100009130(0, &qword_100616F10, UIFont_ptr);
      *(v98 + 64) = v703;
      *(v98 + 40) = v100;
      v700 = NSFontAttributeName;
      v101 = v100;
      sub_100447ACC(v98);
      swift_setDeallocating();
      sub_100007214(v98 + 32, &qword_100615670, &unk_1004EB270);
      swift_deallocClassInstance();
      v102 = objc_allocWithZone(NSAttributedString);
      v103 = sub_1004BBE24();

      _s3__C3KeyVMa_1(0);
      v699 = v104;
      v698 = sub_100485478();
      isa = sub_1004BBC24().super.isa;

      v106 = [v102 initWithString:v103 attributes:isa];

      v107 = v714;
      v713 = v106;
      [v714 appendAttributedString:v106];
      *&v743[0] = v711;
      sub_1004BBDA4();
      v108 = v708;
      v710(v707, v89, v708);
      sub_1004B6DF4();
      v109 = v99;
      sub_1004BBED4();
      (v701)(v89, v108);
      sub_100003ABC(&qword_1006157C8, &qword_1004EB490);
      sub_100454F4C();
      sub_1004BBD34();

      v110 = swift_allocObject();
      *(v110 + 16) = v706;
      *(v110 + 32) = v700;
      v111 = *(v99 + 30);
      *(v110 + 64) = v703;
      *(v110 + 40) = v111;
      v112 = v111;
      sub_100447ACC(v110);
      swift_setDeallocating();
      sub_100007214(v110 + 32, &qword_100615670, &unk_1004EB270);
      swift_deallocClassInstance();
      v113 = objc_allocWithZone(NSAttributedString);
      v114 = sub_1004BBE24();

      v115 = sub_1004BBC24().super.isa;

      v116 = [v113 initWithString:v114 attributes:v115];

      [v107 appendAttributedString:v116];
      v117 = &v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      v118 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v118 && (_s15TextContentViewCMa(0), (v119 = swift_dynamicCastClass()) != 0))
      {
        v120 = v119;
        v121 = v704;
        *v704 = v107;
        v711 = v109;
        v122 = v705;
        swift_storeEnumTagMultiPayload();
        v123 = OBJC_IVAR___MusicTextContentView_content;
        swift_beginAccess();
        v712 = v116;
        v124 = v675;
        sub_10048F51C(v120 + v123, v675, _s15TextContentViewC7ContentOMa);
        swift_beginAccess();
        v125 = v107;
        v710 = v118;
        sub_1004853B8(v121, v120 + v123);
        swift_endAccess();
        v126 = sub_10044E090(&off_1005D0C28);
        v127 = v695;
        sub_10048F51C(v124, v695, _s15TextContentViewC7ContentOMa);
        v128 = v694[7];
        v128(v127, 0, 1, v122);
        sub_100480034(v126);

        sub_100007214(v127, &qword_100616678, &unk_1004EC3A0);
        v129 = v124;
        v116 = v712;
        sub_10048F4BC(v129, _s15TextContentViewC7ContentOMa);
        sub_10048F4BC(v121, _s15TextContentViewC7ContentOMa);
        v130 = *(v711 + 96);
        if (*(v711 + 104))
        {
          v130 = 4;
        }

        *(v120 + OBJC_IVAR___MusicTextContentView_alignment) = v130;
        v131 = sub_10044E090(&off_1005D0C50);
        v128(v127, 1, 1, v122);
        v107 = v714;
        sub_100480034(v131);

        sub_100007214(v127, &qword_100616678, &unk_1004EC3A0);
        v132 = v715;
      }

      else
      {
        memcpy(v743, v109, 0x2B0uLL);
        v139 = v704;
        v140 = v705;
        *v704 = v107;
        swift_storeEnumTagMultiPayload();
        v141 = objc_allocWithZone(_s15TextContentViewCMa(0));
        v142 = v107;
        sub_10046E570(v743, &v721);
        v143 = sub_1004854D0(v139, v743, 0);
        sub_10046E5CC(v743);
        v144 = v109[12];
        if (*(v109 + 104))
        {
          v144 = 4;
        }

        *&v143[OBJC_IVAR___MusicTextContentView_alignment] = v144;
        v145 = sub_10044E090(&off_1005D0C78);
        v146 = v695;
        (v694[7])(v695, 1, 1, v140);
        sub_100480034(v145);

        sub_100007214(v146, &qword_100616678, &unk_1004EC3A0);
        v147 = *v117;
        *v117 = v143;
        *(v117 + 1) = &off_1005D4790;
        v148 = v143;
        v132 = v715;
        sub_10048678C(v147);
      }

      [v132 setEnabled:0];

      goto LABEL_300;
    }

    if (!swift_dynamicCast())
    {
LABEL_300:
      sub_100004C6C(v724);
      return;
    }

    v134 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    v135 = v715;
    v136 = &v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v137 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs])
    {
      *v136 = 0;
      v136[1] = 0;
      sub_10048678C(v137);
LABEL_271:

      [v135 setEnabled:1];
      goto LABEL_300;
    }

    v207 = v738[0];
    v208 = *&v738[1];
    v209 = v739;
    v210 = v740;
    if (v137)
    {
      _s23InstrumentalContentViewCMa(0, v133);
      v211 = swift_dynamicCastClass();
      if (v211)
      {
        v212 = v211;
        v213 = v211 + OBJC_IVAR___MusicInstrumentalContentView_line;
        *v213 = v207;
        *(v213 + 8) = v208;
        *(v213 + 16) = v209;
        *(v213 + 24) = v210;
        *(v211 + OBJC_IVAR___MusicInstrumentalContentView_isSelected) = 0;
        v137 = v137;
        sub_10047D674();
        v135 = v715;
        v214 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
        v215 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
        v216 = *&v212[OBJC_IVAR___MusicInstrumentalContentView_alignment];
        *&v212[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v214;
        if (v214 == v216)
        {
          goto LABEL_271;
        }

        v217 = OBJC_IVAR___MusicInstrumentalContentView_dots;
        swift_beginAccess();
        v218 = *&v212[v217];
        if (v218 >> 62)
        {
          if (sub_1004BD6A4())
          {
LABEL_58:
            v219 = &v212[OBJC_IVAR___MusicInstrumentalContentView_specs];
            v220 = *&v212[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
            v221 = v220 * *&v212[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v212[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v212[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
            v222 = Int.seconds.getter(0);
            v223 = *&v212[v215];
            if (v223 == 1)
            {
              [v212 bounds];
              v224 = (CGRectGetWidth(v747) - v221) * 0.5;
            }

            else
            {
              v224 = v222;
              if (v223 == 2)
              {
                [v212 bounds];
                v224 = CGRectGetWidth(v744) - v221;
              }
            }

            v607 = *&v212[v217];
            if (v607 >> 62)
            {
              v608 = sub_1004BD6A4();
              if (v608)
              {
LABEL_283:
                if (v608 >= 1)
                {

                  v609 = 0;
                  do
                  {
                    if ((v607 & 0xC000000000000001) != 0)
                    {
                      v610 = sub_1004BD484();
                    }

                    else
                    {
                      v610 = *(v607 + 8 * v609 + 32);
                    }

                    v611 = v610;
                    ++v609;
                    [v212 bounds];
                    UIView.untransformedFrame.setter(v224, v612 * 0.5 - v220 * 0.5, v220, v220);

                    v224 = v224 + v220 + v219[77];
                  }

                  while (v608 != v609);

                  v135 = v715;
                  goto LABEL_271;
                }

LABEL_310:
                __break(1u);
                goto LABEL_311;
              }
            }

            else
            {
              v608 = *((v607 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v608)
              {
                goto LABEL_283;
              }
            }

            v135 = v715;
            goto LABEL_271;
          }
        }

        else if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_58;
        }

        sub_10047F184();
        goto LABEL_58;
      }
    }

    v275 = v715;
    memcpy(v743, &v715[v134], 0x2B0uLL);
    objc_allocWithZone(_s23InstrumentalContentViewCMa(0, v276));
    sub_10046E570(v743, &v721);
    v277 = sub_10047D270(v207, v210, v743, v208, v209);
    v278 = *&v275[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
    v279 = OBJC_IVAR___MusicInstrumentalContentView_alignment;
    v280 = *&v277[OBJC_IVAR___MusicInstrumentalContentView_alignment];
    *&v277[OBJC_IVAR___MusicInstrumentalContentView_alignment] = v278;
    if (v278 == v280)
    {
      goto LABEL_270;
    }

    v281 = OBJC_IVAR___MusicInstrumentalContentView_dots;
    swift_beginAccess();
    v282 = *&v277[v281];
    if (v282 >> 62)
    {
      if (sub_1004BD6A4())
      {
        goto LABEL_90;
      }
    }

    else if (*((v282 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_90:
      v283 = &v277[OBJC_IVAR___MusicInstrumentalContentView_specs];
      v284 = *&v277[OBJC_IVAR___MusicInstrumentalContentView_specs + 608];
      v285 = v284 * *&v277[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + (*&v277[OBJC_IVAR___MusicInstrumentalContentView_specs + 592] + -1.0) * *&v277[OBJC_IVAR___MusicInstrumentalContentView_specs + 616];
      v286 = Int.seconds.getter(0);
      v287 = *&v277[v279];
      if (v287 == 1)
      {
        [v277 bounds];
        v288 = (CGRectGetWidth(v746) - v285) * 0.5;
      }

      else
      {
        v288 = v286;
        if (v287 == 2)
        {
          [v277 bounds];
          v288 = CGRectGetWidth(v745) - v285;
        }
      }

      v587 = *&v277[v281];
      if (v587 >> 62)
      {
        v588 = sub_1004BD6A4();
        if (!v588)
        {
          goto LABEL_270;
        }
      }

      else
      {
        v588 = *((v587 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v588)
        {
          goto LABEL_270;
        }
      }

      if (v588 < 1)
      {
        __break(1u);
        goto LABEL_310;
      }

      v589 = 0;
      do
      {
        if ((v587 & 0xC000000000000001) != 0)
        {
          v590 = sub_1004BD484();
        }

        else
        {
          v590 = *(v587 + 8 * v589 + 32);
        }

        v591 = v590;
        ++v589;
        [v277 bounds];
        UIView.untransformedFrame.setter(v288, v592 * 0.5 - v284 * 0.5, v284, v284);

        v288 = v288 + v284 + v283[77];
      }

      while (v588 != v589);

LABEL_270:
      v137 = *v136;
      *v136 = v277;
      v136[1] = &off_1005D4360;
      v593 = v277;
      v135 = v715;
      sub_10048678C(v137);

      goto LABEL_271;
    }

    sub_10047F184();
    goto LABEL_90;
  }

  v80 = sub_10048F458(v78, v76);
  v81 = &v76[v72[18]];
  v82 = *v81;
  v695 = *(v81 + 1);
  v83 = (v82)(v725, v80);
  v694 = v82;
  if (!v725[3])
  {
    v138 = 2;
LABEL_26:
    LODWORD(v707) = v138;
    goto LABEL_27;
  }

  v84 = *v725;
  v85 = sub_100007214(v725, &qword_100615030, &qword_1004EA870);
  v86 = (*&v76[v72[17]])(v85);
  if (!*(v86 + 16))
  {

    v138 = 2;
    goto LABEL_26;
  }

  v87 = *(v86 + 64);

  if (!*(v87 + 16))
  {

    if (v84 < 0.0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

  v88 = *(v87 + 32);

  if (v84 >= v88)
  {
LABEL_25:
    v138 = 1;
    goto LABEL_26;
  }

LABEL_6:
  LODWORD(v707) = 0;
LABEL_27:
  v708 = v72;
  v149 = v72[17];
  v712 = v76;
  v150 = &v76[v149];
  v151 = *v150;
  v152 = *((*v150)(v83) + 16);

  if (!v152 || (v154 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs, (v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] & 1) != 0))
  {
    v155 = &v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v156 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v157 = v715;
    if (v156)
    {
      _s20DespacitoContentViewCMa(0);
      v153 = swift_dynamicCastClass();
      if (v153)
      {
        v158 = v153;
        v159 = v708;
        v160 = v712;
        v161 = *(v712 + v708[16]);
        v705 = v156;
        v709 = v161();
        v704 = v162;
        sub_10000F778(v160 + v159[7], v701, &qword_100615038, &qword_1004EA878);
        v163 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
        swift_beginAccess();
        sub_10000F778(&v157[v163], v26, &qword_100616C00, &unk_1004EBFF0);
        v164 = *(v714 + 6);
        if (v164(v26, 1, v159))
        {
          sub_100007214(v26, &qword_100616C00, &unk_1004EBFF0);
          v702 = 0;
          v165 = 0;
        }

        else
        {
          sub_10048F51C(v26, v74, type metadata accessor for Lyrics.TextLine);
          v225 = sub_100007214(v26, &qword_100616C00, &unk_1004EBFF0);
          v702 = (*&v74[v159[16]])(v225);
          v165 = v226;
          sub_10048F4BC(v74, type metadata accessor for Lyrics.TextLine);
        }

        v227 = v680;
        sub_10000F778(&v157[v163], v680, &qword_100616C00, &unk_1004EBFF0);
        v228 = v164(v227, 1, v159);
        v703 = v165;
        if (v228)
        {
          sub_100007214(v227, &qword_100616C00, &unk_1004EBFF0);
          v229 = sub_1004B6E44();
          (*(*(v229 - 8) + 56))(v697, 1, 1, v229);
        }

        else
        {
          sub_10000F778(v227 + v159[7], v697, &qword_100615038, &qword_1004EA878);
          sub_100007214(v227, &qword_100616C00, &unk_1004EBFF0);
        }

        v230 = v710;
        v231 = v681;
        v232 = v682;
        v233 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
        swift_beginAccess();
        sub_10000F778(&v157[v233], v231, &qword_100616EF0, &qword_1004EC398);
        v234 = *(v711 + 48);
        if (v234(v231, 1, v230))
        {
          v235 = sub_100007214(v231, &qword_100616EF0, &qword_1004EC398);
          v708 = 0;
          v236 = 0;
        }

        else
        {
          v237 = v706;
          sub_10048F51C(v231, v706, type metadata accessor for Lyrics.Translation.Line);
          sub_100007214(v231, &qword_100616EF0, &qword_1004EC398);
          v236 = *(v237 + 8);
          v708 = *v237;

          v235 = sub_10048F4BC(v237, type metadata accessor for Lyrics.Translation.Line);
        }

        v238 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        if (v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] != 1)
        {
          v239 = 0;
          v714 = 0;
          v700 = 0;
          v711 = 0;
          v240 = v715;
          goto LABEL_153;
        }

        (v694)(v743, v235);
        v239 = *(&v743[1] + 1);
        if (*(&v743[1] + 1))
        {
          v714 = *&v743[1];

          sub_100007214(v743, &qword_100615030, &qword_1004EA870);
        }

        else
        {
          v714 = 0;
        }

        v240 = v715;
        if (v715[v238] == 1)
        {
          v387 = v654;
          sub_10000F778(&v715[v233], v654, &qword_100616EF0, &qword_1004EC398);
          if (!v234(v387, 1, v710))
          {
            v521 = v387;
            v522 = v706;
            sub_10048F51C(v521, v706, type metadata accessor for Lyrics.Translation.Line);
            sub_100007214(v654, &qword_100616EF0, &qword_1004EC398);
            v523 = *(v522 + 24);
            v700 = *(v522 + 16);
            v711 = v523;

            sub_10048F4BC(v522, type metadata accessor for Lyrics.Translation.Line);
LABEL_153:
            sub_10000F778(&v240[v233], v232, &qword_100616EF0, &qword_1004EC398);
            v388 = v710;
            if (v234(v232, 1, v710))
            {
              sub_100007214(v232, &qword_100616EF0, &qword_1004EC398);
              v389 = sub_1004B6E44();
              (*(*(v389 - 8) + 56))(v698, 1, 1, v389);
            }

            else
            {
              v390 = v706;
              sub_10048F51C(v232, v706, type metadata accessor for Lyrics.Translation.Line);
              sub_100007214(v232, &qword_100616EF0, &qword_1004EC398);
              v391 = *(v388 + 6);
              v392 = sub_1004B6E44();
              v393 = *(v392 - 8);
              v394 = v390 + v391;
              v395 = v698;
              (*(v393 + 16))(v698, v394, v392);
              sub_10048F4BC(v390, type metadata accessor for Lyrics.Translation.Line);
              (*(v393 + 56))(v395, 0, 1, v392);
            }

            v396 = v713;
            sub_10000F778(v701, v713, &qword_100615038, &qword_1004EA878);
            v397 = OBJC_IVAR___MusicDespacitoContentView_language;
            swift_beginAccess();
            sub_100047A5C(v396, &v158[v397], &qword_100615038, &qword_1004EA878);
            swift_endAccess();
            v398 = &v158[OBJC_IVAR___MusicDespacitoContentView_text];
            v399 = v704;
            *v398 = v709;
            v398[1] = v399;

            sub_100481B88();
            v400 = v703;
            if (v703)
            {
              v401 = sub_1004BBF24();
              v403 = v402;
              if (v401 == sub_1004BBF24() && v403 == v404)
              {
              }

              else
              {
                v405 = sub_1004BD9C4();

                if ((v405 & 1) == 0)
                {
                  v504 = v400;
                  v505 = v713;
                  sub_10000F778(v697, v713, &qword_100615038, &qword_1004EA878);
                  v506 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                  swift_beginAccess();
                  sub_100047A5C(v505, &v158[v506], &qword_100615038, &qword_1004EA878);
                  swift_endAccess();
                  v507 = &v158[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                  *v507 = v702;
                  v507[1] = v504;
LABEL_163:

                  sub_10048313C();
                  if (v236)
                  {
                    v410 = sub_1004BBF24();
                    v412 = v411;

                    if (v410 == sub_1004BBF24() && v412 == v413)
                    {
                    }

                    else
                    {
                      v414 = sub_1004BD9C4();

                      if ((v414 & 1) == 0)
                      {
                        v508 = v713;
                        sub_10000F778(v698, v713, &qword_100615038, &qword_1004EA878);
                        v509 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                        swift_beginAccess();
                        sub_100047A5C(v508, &v158[v509], &qword_100615038, &qword_1004EA878);
                        swift_endAccess();
                        v510 = &v158[OBJC_IVAR___MusicDespacitoContentView_translationText];
                        *v510 = v708;
                        v510[1] = v236;
                        v415 = v715;
LABEL_170:
                        v420 = v714;
                        v421 = v711;

                        sub_100482950();
                        if (v421)
                        {
                          if (v239)
                          {
                            v422 = sub_1004BBF24();
                            v424 = v423;
                            if (v422 == sub_1004BBF24() && v424 == v425)
                            {
                            }

                            else
                            {
                              v426 = sub_1004BD9C4();

                              if ((v426 & 1) == 0)
                              {
                                sub_1004828A4(v700, v421);
                                v415 = v715;
                                goto LABEL_179;
                              }
                            }

                            v415 = v715;
                          }

                          else
                          {
                          }
                        }

                        sub_1004828A4(0, 0);
LABEL_179:
                        v427 = &v158[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
                        *v427 = v420;
                        v427[1] = v239;

                        sub_100481E6C();
                        v158[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = v707;
                        [v158 setNeedsLayout];

                        sub_100007214(v698, &qword_100615038, &qword_1004EA878);
                        sub_100007214(v697, &qword_100615038, &qword_1004EA878);
                        sub_100007214(v701, &qword_100615038, &qword_1004EA878);
                        sub_1004815E0(*&v415[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);

LABEL_299:
                        [v415 setEnabled:1];
                        sub_10048F4BC(v712, type metadata accessor for Lyrics.TextLine);
                        goto LABEL_300;
                      }
                    }
                  }

                  v415 = v715;
                  v416 = sub_1004B6E44();
                  v417 = v713;
                  (*(*(v416 - 8) + 56))(v713, 1, 1, v416);
                  v418 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                  swift_beginAccess();
                  sub_100047A5C(v417, &v158[v418], &qword_100615038, &qword_1004EA878);
                  swift_endAccess();
                  v419 = &v158[OBJC_IVAR___MusicDespacitoContentView_translationText];
                  *v419 = 0;
                  v419[1] = 0;
                  goto LABEL_170;
                }
              }
            }

            v406 = sub_1004B6E44();
            v407 = v713;
            (*(*(v406 - 8) + 56))(v713, 1, 1, v406);
            v408 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
            swift_beginAccess();
            sub_100047A5C(v407, &v158[v408], &qword_100615038, &qword_1004EA878);
            swift_endAccess();
            v409 = &v158[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
            *v409 = 0;
            v409[1] = 0;
            goto LABEL_163;
          }

          sub_100007214(v387, &qword_100616EF0, &qword_1004EC398);
        }

        v700 = 0;
        v711 = 0;
        goto LABEL_153;
      }
    }

    v700 = v155;
    v166 = v708;
    v167 = v712;
    v701 = (*(v712 + v708[16]))(v153);
    v699 = v168;
    sub_10000F778(v167 + v166[7], v709, &qword_100615038, &qword_1004EA878);
    v169 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
    swift_beginAccess();
    sub_10000F778(&v157[v169], v23, &qword_100616C00, &unk_1004EBFF0);
    v170 = *(v714 + 6);
    if (v170(v23, 1, v166))
    {
      sub_100007214(v23, &qword_100616C00, &unk_1004EBFF0);
      v696 = 0;
      v698 = 0;
    }

    else
    {
      sub_10048F51C(v23, v74, type metadata accessor for Lyrics.TextLine);
      v192 = sub_100007214(v23, &qword_100616C00, &unk_1004EBFF0);
      v696 = (*&v74[v166[16]])(v192);
      v698 = v193;
      sub_10048F4BC(v74, type metadata accessor for Lyrics.TextLine);
    }

    v194 = v711;
    v195 = v691;
    v196 = v689;
    sub_10000F778(&v157[v169], v689, &qword_100616C00, &unk_1004EBFF0);
    if (v170(v196, 1, v166))
    {
      sub_100007214(v196, &qword_100616C00, &unk_1004EBFF0);
      v197 = sub_1004B6E44();
      (*(*(v197 - 8) + 56))(v702, 1, 1, v197);
    }

    else
    {
      sub_10000F778(v196 + v166[7], v702, &qword_100615038, &qword_1004EA878);
      sub_100007214(v196, &qword_100616C00, &unk_1004EBFF0);
    }

    v198 = v690;
    v199 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
    swift_beginAccess();
    sub_10000F778(&v157[v199], v198, &qword_100616EF0, &qword_1004EC398);
    v200 = *(v194 + 48);
    v201 = v710;
    if (v200(v198, 1, v710))
    {
      v202 = sub_100007214(v198, &qword_100616EF0, &qword_1004EC398);
      v695 = 0;
      v708 = 0;
    }

    else
    {
      v203 = v706;
      sub_10048F51C(v198, v706, type metadata accessor for Lyrics.Translation.Line);
      sub_100007214(v198, &qword_100616EF0, &qword_1004EC398);
      v204 = v203[1];
      v695 = *v203;
      v708 = v204;

      v202 = sub_10048F4BC(v203, type metadata accessor for Lyrics.Translation.Line);
    }

    v205 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
    if (v157[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs] == 1)
    {
      (v694)(v738, v202);
      v206 = v740;
      if (v740)
      {
        v711 = *&v739;

        sub_100007214(v738, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        v711 = 0;
      }

      v241 = v676;
      if (v157[v205] == 1)
      {
        sub_10000F778(&v157[v199], v676, &qword_100616EF0, &qword_1004EC398);
        if (!v200(v241, 1, v201))
        {
          v515 = v241;
          v714 = v206;
          v516 = v241;
          v517 = v706;
          sub_10048F51C(v515, v706, type metadata accessor for Lyrics.Translation.Line);
          v518 = v516;
          v206 = v714;
          sub_100007214(v518, &qword_100616EF0, &qword_1004EC398);
          v519 = *(v517 + 24);
          v694 = *(v517 + 16);
          v697 = v519;

          sub_10048F4BC(v517, type metadata accessor for Lyrics.Translation.Line);
LABEL_77:
          v714 = v206;
          sub_10000F778(&v157[v199], v195, &qword_100616EF0, &qword_1004EC398);
          if (v200(v195, 1, v201))
          {
            sub_100007214(v195, &qword_100616EF0, &qword_1004EC398);
            v242 = sub_1004B6E44();
            (*(*(v242 - 8) + 56))(v703, 1, 1, v242);
          }

          else
          {
            v243 = v706;
            sub_10048F51C(v195, v706, type metadata accessor for Lyrics.Translation.Line);
            sub_100007214(v195, &qword_100616EF0, &qword_1004EC398);
            v244 = *(v201 + 6);
            v242 = sub_1004B6E44();
            v245 = *(v242 - 8);
            v246 = v243 + v244;
            v157 = v715;
            v247 = v703;
            (*(v245 + 16))(v703, v246, v242);
            sub_10048F4BC(v243, type metadata accessor for Lyrics.Translation.Line);
            (*(v245 + 56))(v247, 0, 1, v242);
          }

          memcpy(v743, &v157[v205], 0x2B0uLL);
          v710 = _s20DespacitoContentViewCMa(0);
          v248 = objc_allocWithZone(v710);
          v248[OBJC_IVAR___MusicDespacitoContentView_isScrolling] = 1;
          *&v248[OBJC_IVAR___MusicDespacitoContentView_translationLineView] = 0;
          *&v248[OBJC_IVAR___MusicDespacitoContentView_transliterationLineView] = 0;
          *&v248[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsView] = 0;
          v249 = OBJC_IVAR___MusicDespacitoContentView_language;
          sub_1004B6E44();
          v250 = *(*(v242 - 8) + 56);
          v250(&v248[v249], 1, 1, v242);
          *&v706 = OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition;
          v248[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsPosition] = 2;
          v251 = &v248[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
          *v251 = 0;
          v251[1] = 0;
          v252 = &v248[OBJC_IVAR___MusicDespacitoContentView_translationBackgroundVocalsText];
          *v252 = 0;
          v252[1] = 0;
          v248[OBJC_IVAR___MusicDespacitoContentView_pendingTranslationViewUpdate] = 2;
          v250(&v248[OBJC_IVAR___MusicDespacitoContentView_translationLanguage], 1, 1, v242);
          v253 = &v248[OBJC_IVAR___MusicDespacitoContentView_translationText];
          *v253 = 0;
          v253[1] = 0;
          v248[OBJC_IVAR___MusicDespacitoContentView_pendingTransliterationViewUpdate] = 2;
          v250(&v248[OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage], 1, 1, v242);
          v254 = &v248[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
          *v254 = 0;
          v254[1] = 0;
          v255 = v709;
          v256 = v713;
          sub_10000F778(v709, v713, &qword_100615038, &qword_1004EA878);
          v257 = *(sub_100003ABC(&qword_100616680, &unk_1004EC1A0) + 48);
          v258 = v704;
          v259 = v701;
          v260 = v699;
          *v704 = v701;
          *(v258 + 8) = v260;
          sub_10000F778(v256, v258 + v257, &qword_100615038, &qword_1004EA878);
          swift_storeEnumTagMultiPayload();
          v261 = objc_allocWithZone(_s15TextContentViewCMa(0));

          sub_10046E570(v743, &v721);
          v262 = sub_1004854D0(v258, v743, 0);
          sub_100007214(v256, &qword_100615038, &qword_1004EA878);
          *&v248[OBJC_IVAR___MusicDespacitoContentView_mainLineView] = v262;
          memcpy(&v248[OBJC_IVAR___MusicDespacitoContentView_specs], v743, 0x2B0uLL);
          v263 = &v248[OBJC_IVAR___MusicDespacitoContentView_text];
          *v263 = v259;
          v263[1] = v260;
          swift_beginAccess();

          sub_10046E570(v743, &v721);
          sub_10003F42C(v255, &v248[v249], &qword_100615038, &qword_1004EA878);
          swift_endAccess();
          v248[v706] = v707;
          v720.receiver = v248;
          v720.super_class = v710;
          v264 = objc_msgSendSuper2(&v720, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
          v265 = *&v264[OBJC_IVAR___MusicDespacitoContentView_mainLineView];
          v266 = v264;
          [v266 addSubview:v265];
          v267 = v711;
          v268 = v698;
          if (v698)
          {
            v269 = sub_1004BBF24();
            v271 = v270;
            v272 = v696;
            if (v269 == sub_1004BBF24() && v271 == v273)
            {
            }

            else
            {
              v274 = sub_1004BD9C4();

              if (v274)
              {
              }

              else
              {
                v360 = v713;
                sub_10000F778(v702, v713, &qword_100615038, &qword_1004EA878);
                v361 = OBJC_IVAR___MusicDespacitoContentView_transliterationLanguage;
                swift_beginAccess();
                sub_100047A5C(v360, &v266[v361], &qword_100615038, &qword_1004EA878);
                swift_endAccess();
                v362 = &v266[OBJC_IVAR___MusicDespacitoContentView_transliterationText];
                *v362 = v272;
                v362[1] = v268;

                sub_10048313C();
              }
            }
          }

          v363 = v714;
          v364 = v708;
          if (v708)
          {
            v365 = sub_1004BBF24();
            v367 = v366;

            v368 = v695;
            v369 = sub_1004BBF24();
            v371 = v715;
            if (v365 == v369 && v367 == v370)
            {
            }

            else
            {
              v372 = sub_1004BD9C4();

              if (v372)
              {
              }

              else
              {
                v373 = v713;
                sub_10000F778(v703, v713, &qword_100615038, &qword_1004EA878);
                v374 = OBJC_IVAR___MusicDespacitoContentView_translationLanguage;
                swift_beginAccess();
                v375 = &v266[v374];
                v371 = v715;
                sub_100047A5C(v373, v375, &qword_100615038, &qword_1004EA878);
                swift_endAccess();
                v376 = &v266[OBJC_IVAR___MusicDespacitoContentView_translationText];
                *v376 = v368;
                v376[1] = v364;

                sub_100482950();
              }
            }
          }

          else
          {

            v371 = v715;
          }

          v377 = v697;
          if (!v697)
          {
            goto LABEL_219;
          }

          if (v363)
          {
            v378 = sub_1004BBF24();
            v380 = v379;
            if (v378 == sub_1004BBF24() && v380 == v381)
            {

LABEL_219:
              v511 = &v266[OBJC_IVAR___MusicDespacitoContentView_backgroundVocalsText];
              *v511 = v267;
              *(v511 + 1) = v363;

              sub_100481E6C();

              sub_10046E5CC(v743);
              sub_100007214(v703, &qword_100615038, &qword_1004EA878);
              sub_100007214(v702, &qword_100615038, &qword_1004EA878);
              sub_100007214(v709, &qword_100615038, &qword_1004EA878);
              sub_1004815E0(*&v371[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment]);
              v512 = v700;
              v513 = *v700;
              *v700 = v266;
              v512[1] = &off_1005D4728;
              v514 = v266;
              sub_10048678C(v513);

              v415 = v715;
              goto LABEL_299;
            }

            v382 = sub_1004BD9C4();

            if ((v382 & 1) == 0)
            {
              sub_1004828A4(v694, v377);
              goto LABEL_219;
            }
          }

          goto LABEL_219;
        }

        sub_100007214(v241, &qword_100616EF0, &qword_1004EC398);
      }
    }

    else
    {
      v206 = 0;
      v711 = 0;
    }

    v694 = 0;
    v697 = 0;
    goto LABEL_77;
  }

  v171 = &v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v172 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (v172)
  {
    _s19SBS_TextContentViewCMa(0);
    v153 = swift_dynamicCastClass();
    if (v153)
    {
      v709 = v153;
      v173 = v708;
      v174 = v712;
      v175 = *(v712 + v708[16]);
      v699 = v172;
      v696 = v175();
      v705 = v176;
      v704 = v151();
      v177 = sub_10000F778(v174 + v173[7], v683, &qword_100615038, &qword_1004EA878);
      v178 = v715;
      v701 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      LODWORD(v693) = (*(v174 + v173[15]))(v177);
      v700 = *(v174 + v173[9]);
      v179 = v694;
      v180 = (v694)(v726);
      v181 = v728;
      if (v728)
      {
        v690 = v727;

        v180 = sub_100007214(v726, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        v690 = 0;
      }

      v428 = v660;
      v429 = (v179)(v729, v180);
      if (v730)
      {
        v698 = v731;

        v429 = sub_100007214(v729, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        v698 = _swiftEmptyArrayStorage;
      }

      (v179)(v732, v429);
      v702 = v181;
      if (v733)
      {
        LODWORD(v695) = v734;
        sub_100007214(v732, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        LODWORD(v695) = 0;
      }

      v430 = v667;
      v431 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      v432 = v688;
      sub_10000F778(&v178[v431], v688, &qword_100616C00, &unk_1004EBFF0);
      v433 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_10000F778(&v178[v433], v428, &qword_100616EF0, &qword_1004EC398);
      v434 = *(v711 + 48);
      v435 = v710;
      v711 += 48;
      if (v434(v428, 1, v710))
      {
        sub_100007214(v428, &qword_100616EF0, &qword_1004EC398);
        v694 = 0;
        v703 = 0;
      }

      else
      {
        v436 = v706;
        sub_10048F51C(v428, v706, type metadata accessor for Lyrics.Translation.Line);
        sub_100007214(v428, &qword_100616EF0, &qword_1004EC398);
        v437 = *(v436 + 8);
        v694 = *v436;
        v703 = v437;

        v438 = v436;
        v430 = v667;
        sub_10048F4BC(v438, type metadata accessor for Lyrics.Translation.Line);
      }

      v439 = v714;
      v440 = v687;
      sub_10000F778(&v178[v433], v430, &qword_100616EF0, &qword_1004EC398);
      if (v434(v430, 1, v435))
      {
        sub_100007214(v430, &qword_100616EF0, &qword_1004EC398);
        v689 = 0;
        v697 = 0;
      }

      else
      {
        v441 = v430;
        v442 = v439;
        v443 = v432;
        v444 = v440;
        v445 = v430;
        v446 = v706;
        sub_10048F51C(v441, v706, type metadata accessor for Lyrics.Translation.Line);
        v447 = v445;
        v440 = v444;
        v432 = v443;
        v439 = v442;
        sub_100007214(v447, &qword_100616EF0, &qword_1004EC398);
        v448 = *(v446 + 24);
        v689 = *(v446 + 16);
        v697 = v448;

        sub_10048F4BC(v446, type metadata accessor for Lyrics.Translation.Line);
      }

      v449 = &v178[v433];
      v450 = v663;
      sub_10000F778(v449, v663, &qword_100616EF0, &qword_1004EC398);
      if (v434(v450, 1, v435))
      {
        sub_100007214(v450, &qword_100616EF0, &qword_1004EC398);
        v451 = sub_1004B6E44();
        (*(*(v451 - 8) + 56))(v440, 1, 1, v451);
      }

      else
      {
        v452 = v706;
        sub_10048F51C(v450, v706, type metadata accessor for Lyrics.Translation.Line);
        sub_100007214(v450, &qword_100616EF0, &qword_1004EC398);
        v453 = *(v435 + 6);
        v454 = sub_1004B6E44();
        v455 = *(v454 - 8);
        (*(v455 + 16))(v440, v452 + v453, v454);
        sub_10048F4BC(v452, type metadata accessor for Lyrics.Translation.Line);
        (*(v455 + 56))(v440, 0, 1, v454);
      }

      v456 = v664;
      v457 = v661;
      sub_10000F778(v432, v661, &qword_100616C00, &unk_1004EBFF0);
      v458 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
      v459 = v709;
      swift_beginAccess();
      sub_100047A5C(v457, v459 + v458, &qword_100616C00, &unk_1004EBFF0);
      swift_endAccess();
      v460 = *(v459 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (v460)
      {
        v461 = v662;
        sub_10000F778(v432, v662, &qword_100616C00, &unk_1004EBFF0);
        v464 = v439[6];
        v462 = v439 + 6;
        v463 = v464;
        v465 = v708;
        v466 = (v464)(v461, 1, v708);
        v468 = v665;
        v467 = v666;
        if (v466 == 1)
        {
          v469 = v460;
          sub_100007214(v461, &qword_100616C00, &unk_1004EBFF0);
          v470 = sub_1004B6E44();
          (*(*(v470 - 8) + 56))(v679, 1, 1, v470);
        }

        else
        {
          sub_10000F778(v461 + v465[7], v679, &qword_100615038, &qword_1004EA878);
          v471 = v460;
          sub_10048F4BC(v461, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v432, v456, &qword_100616C00, &unk_1004EBFF0);
        if ((v463)(v456, 1, v465) == 1)
        {
          sub_100007214(v456, &qword_100616C00, &unk_1004EBFF0);
          v472 = 2;
        }

        else
        {
          v473 = (*(v456 + v465[15]))();
          sub_10048F4BC(v456, type metadata accessor for Lyrics.TextLine);
          v472 = v473 & 1;
        }

        LODWORD(v710) = v472;
        sub_10000F778(v432, v468, &qword_100616C00, &unk_1004EBFF0);
        v714 = v462;
        if ((v463)(v468, 1, v465) == 1)
        {
          sub_100007214(v468, &qword_100616C00, &unk_1004EBFF0);
          *&v706 = 0;
          v692 = 0;
        }

        else
        {
          *&v706 = (*(v468 + v465[16]))();
          v692 = v474;
          sub_10048F4BC(v468, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v432, v467, &qword_100616C00, &unk_1004EBFF0);
        v475 = (v463)(v467, 1, v465);
        v711 = v463;
        if (v475 == 1)
        {
          sub_100007214(v467, &qword_100616C00, &unk_1004EBFF0);
          v691 = 0;
        }

        else
        {
          v691 = (*(v467 + v465[17]))();
          sub_10048F4BC(v467, type metadata accessor for Lyrics.TextLine);
        }

        v476 = &v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v477 = v696;
        v478 = v705;
        *v476 = v696;
        *(v476 + 1) = v478;

        v479 = &v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v479 = v477;
        v479[1] = v478;

        *&v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v704;

        v480 = v713;
        sub_10000F778(v687, v713, &qword_100615038, &qword_1004EA878);
        v481 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        swift_beginAccess();

        sub_100047A5C(v480, &v460[v481], &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        v482 = v679;
        sub_10000F778(v679, v480, &qword_100615038, &qword_1004EA878);
        v483 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        swift_beginAccess();
        sub_100047A5C(v480, &v460[v483], &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        v484 = &v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        v485 = v703;
        *v484 = v694;
        *(v484 + 1) = v485;

        v486 = &v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        v487 = v692;
        *v486 = v706;
        *(v486 + 1) = v487;

        *&v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v691;

        v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v710;
        v489 = v700;
        v488 = v701;
        *&v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v701;
        LOBYTE(v483) = v693 & 1;
        v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v693 & 1;
        *&v460[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v489;

        [v460 setNeedsLayout];

        sub_100007214(v482, &qword_100615038, &qword_1004EA878);
        v490 = v709;
        v491 = &v709[OBJC_IVAR___MusicSBS_TextContentView_text];
        *v491 = v477;
        v491[1] = v478;

        *(v490 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v488;
        *(v490 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v483;
        *(v490 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v489;

        v492 = v695 & 1;
        *(v490 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = v492;
        *(v490 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = v707;
        v493 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        v494 = *(v490 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
        if (v494)
        {
          v415 = v715;
          v495 = v688;
          v496 = v702;
          if (v702)
          {
            LODWORD(v710) = v492;
            v497 = v647;
            sub_10000F778(v688, v647, &qword_100616C00, &unk_1004EBFF0);
            v498 = v708;
            if ((v711)(v497, 1, v708) == 1)
            {
              v499 = v494;
              sub_100007214(v497, &qword_100616C00, &unk_1004EBFF0);
              v500 = sub_1004B6E44();
              (*(*(v500 - 8) + 56))(v655, 1, 1, v500);
            }

            else
            {
              sub_10000F778(v497 + v498[7], v655, &qword_100615038, &qword_1004EA878);
              v524 = v494;
              sub_10048F4BC(v497, type metadata accessor for Lyrics.TextLine);
            }

            v525 = v495;
            v527 = v648;
            v526 = v649;
            sub_10000F778(v525, v648, &qword_100616C00, &unk_1004EBFF0);
            if ((v711)(v527, 1, v498) == 1)
            {
              sub_100007214(v527, &qword_100616C00, &unk_1004EBFF0);
              v528 = 2;
            }

            else
            {
              v529 = (*(v527 + v498[15]))();
              sub_10048F4BC(v527, type metadata accessor for Lyrics.TextLine);
              v528 = v529 & 1;
            }

            LODWORD(v707) = v528;
            sub_10000F778(v688, v526, &qword_100616C00, &unk_1004EBFF0);
            if ((v711)(v526, 1, v498) == 1)
            {
              sub_100007214(v526, &qword_100616C00, &unk_1004EBFF0);
              v696 = 0;
              *&v706 = 0;
              v530 = v650;
            }

            else
            {
              (*(v526 + v498[18]))(&v721);
              *&v706 = *(&v722 + 1);
              if (*(&v722 + 1))
              {
                v696 = v722;

                sub_100007214(&v721, &qword_100615030, &qword_1004EA870);
              }

              else
              {
                v696 = 0;
              }

              v530 = v650;
              sub_10048F4BC(v526, type metadata accessor for Lyrics.TextLine);
            }

            sub_10000F778(v688, v530, &qword_100616C00, &unk_1004EBFF0);
            v594 = v708;
            if ((v711)(v530, 1, v708) == 1)
            {
              sub_100007214(v530, &qword_100616C00, &unk_1004EBFF0);
            }

            else
            {
              (*(v530 + v594[18]))(v743);
              sub_10048F4BC(v530, type metadata accessor for Lyrics.TextLine);
              if (*(&v743[1] + 1))
              {
                v714 = *(&v743[3] + 1);

                sub_100007214(v743, &qword_100615030, &qword_1004EA870);
LABEL_279:
                v595 = &v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
                v596 = v690;
                *v595 = v690;
                *(v595 + 1) = v496;

                v597 = &v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
                *v597 = v596;
                *(v597 + 1) = v496;

                *&v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v698;

                v579 = v687;
                v598 = v713;
                sub_10000F778(v687, v713, &qword_100615038, &qword_1004EA878);
                v599 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
                swift_beginAccess();

                sub_100047A5C(v598, &v494[v599], &qword_100615038, &qword_1004EA878);
                swift_endAccess();
                v600 = v655;
                sub_10000F778(v655, v598, &qword_100615038, &qword_1004EA878);
                v601 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
                swift_beginAccess();
                sub_100047A5C(v598, &v494[v601], &qword_100615038, &qword_1004EA878);
                swift_endAccess();
                v602 = &v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
                v603 = v697;
                *v602 = v689;
                *(v602 + 1) = v603;

                v604 = &v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
                v605 = v706;
                *v604 = v696;
                *(v604 + 1) = v605;

                *&v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = v714;

                v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = v707;
                v606 = v700;
                *&v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v701;
                v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v710;
                *&v494[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v606;

                [v494 setNeedsLayout];

                sub_100007214(v600, &qword_100615038, &qword_1004EA878);
                v415 = v715;
                v495 = v688;
                v490 = v709;
                goto LABEL_298;
              }
            }

            v714 = 0;
            goto LABEL_279;
          }

          [v494 removeFromSuperview];
          v490 = v709;
          v520 = *&v709[v493];
LABEL_251:
          v579 = v687;
          *(v490 + v493) = 0;

LABEL_298:
          [v490 setNeedsLayout];

          sub_100007214(v579, &qword_100615038, &qword_1004EA878);
          sub_100007214(v495, &qword_100616C00, &unk_1004EBFF0);
          sub_100007214(v683, &qword_100615038, &qword_1004EA878);
          goto LABEL_299;
        }

        v415 = v715;
        v495 = v688;
        if (!v702)
        {
          v520 = 0;
          goto LABEL_251;
        }

        v707 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
        LODWORD(v710) = v492;
        sub_10000F778(v683, v652, &qword_100615038, &qword_1004EA878);
        sub_10000F778(v687, v653, &qword_100615038, &qword_1004EA878);
        v501 = v643;
        sub_10000F778(v495, v643, &qword_100616C00, &unk_1004EBFF0);
        v502 = v708;
        if ((v711)(v501, 1, v708) == 1)
        {

          sub_100007214(v501, &qword_100616C00, &unk_1004EBFF0);
          v503 = sub_1004B6E44();
          (*(*(v503 - 8) + 56))(v651, 1, 1, v503);
        }

        else
        {
          sub_10000F778(v501 + v502[7], v651, &qword_100615038, &qword_1004EA878);

          sub_10048F4BC(v501, type metadata accessor for Lyrics.TextLine);
        }

        v580 = v646;
        v581 = v644;
        sub_10000F778(v495, v644, &qword_100616C00, &unk_1004EBFF0);
        v582 = (v711)(v581, 1, v502);
        v583 = v645;
        if (v582 == 1)
        {
          sub_100007214(v581, &qword_100616C00, &unk_1004EBFF0);
          v584 = 2;
        }

        else
        {
          v585 = (*(v581 + v502[15]))();
          sub_10048F4BC(v581, type metadata accessor for Lyrics.TextLine);
          v584 = v585 & 1;
        }

        LODWORD(v706) = v584;
        sub_10000F778(v495, v583, &qword_100616C00, &unk_1004EBFF0);
        v586 = v711;
        if ((v711)(v583, 1, v502) == 1)
        {
          sub_100007214(v583, &qword_100616C00, &unk_1004EBFF0);
          v713 = 0;
          v696 = 0;
        }

        else
        {
          (*(v583 + v502[18]))(v735);
          v696 = v737;
          if (v737)
          {
            v713 = v736;

            sub_100007214(v735, &qword_100615030, &qword_1004EA870);
          }

          else
          {
            v713 = 0;
          }

          sub_10048F4BC(v583, type metadata accessor for Lyrics.TextLine);
        }

        sub_10000F778(v495, v580, &qword_100616C00, &unk_1004EBFF0);
        if (v586(v580, 1, v502) == 1)
        {
          sub_100007214(v580, &qword_100616C00, &unk_1004EBFF0);
        }

        else
        {
          (*(v580 + v502[18]))(v738);
          sub_10048F4BC(v580, type metadata accessor for Lyrics.TextLine);
          if (v740)
          {
            v714 = v742;

            sub_100007214(v738, &qword_100615030, &qword_1004EA870);
LABEL_297:
            v711 = v490 + OBJC_IVAR___MusicSBS_TextContentView_specs;
            memcpy(v743, v490 + OBJC_IVAR___MusicSBS_TextContentView_specs, 0x2B0uLL);
            v708 = _s14descr1005A2689C8TextViewCMa(0);
            v613 = objc_allocWithZone(v708);
            v614 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
            *v614 = 0;
            v614[1] = 0;
            v695 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
            v694 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
            v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
            v615 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
            *v615 = 0;
            v615[1] = 0;
            v616 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
            v617 = sub_1004B6E44();
            v618 = *(*(v617 - 8) + 56);
            v618(&v613[v616], 1, 1, v617);
            v619 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
            v618(&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v617);
            v620 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
            v618(&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v617);
            v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
            v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
            v693 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
            v621 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
            *v621 = 2;
            *(v621 + 8) = 0u;
            *(v621 + 24) = 0u;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
            v622 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
            v622[4] = 0u;
            v622[5] = 0u;
            v622[2] = 0u;
            v622[3] = 0u;
            *v622 = 0u;
            v622[1] = 0u;
            v623 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;
            sub_10046E570(v743, &v721);
            *&v613[v623] = sub_100447BF4(_swiftEmptyArrayStorage);
            v624 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
            v625 = v690;
            v626 = v702;
            *v624 = v690;
            v624[1] = v626;
            v627 = &v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
            *v627 = v625;
            v627[1] = v626;
            swift_beginAccess();

            v628 = &v613[v616];
            v490 = v709;
            sub_10003F42C(v652, v628, &qword_100615038, &qword_1004EA878);
            swift_endAccess();
            swift_beginAccess();
            sub_10003F42C(v653, &v613[v619], &qword_100615038, &qword_1004EA878);
            swift_endAccess();
            swift_beginAccess();
            v629 = v651;
            sub_10003F42C(v651, &v613[v620], &qword_100615038, &qword_1004EA878);
            swift_endAccess();
            *(v694 + v613) = v706;
            v630 = v696;
            *v614 = v713;
            v614[1] = v630;

            *&v613[v695] = v714;

            v631 = v697;
            *v615 = v689;
            v615[1] = v631;

            memcpy(&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v743, 0x2B0uLL);
            *&v613[v693] = 0;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v698;
            v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
            v632 = v700;
            v633 = v701;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v701;
            v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v710;
            *&v613[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v632;
            v716.receiver = v613;
            v716.super_class = v708;

            v634 = objc_msgSendSuper2(&v716, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
            sub_100007214(v629, &qword_100615038, &qword_1004EA878);
            sub_100007214(v653, &qword_100615038, &qword_1004EA878);
            sub_100007214(v652, &qword_100615038, &qword_1004EA878);
            v635 = sub_10047CE90(v633);
            v637 = v636;
            v638 = v634;
            UIView.setAnchorPoint(_:preserveFrame:)(1, v635, v637);
            [v638 setAlpha:0.0];
            v639 = *(v711 + 144);
            v640 = *(v711 + 160);
            v721 = *(v711 + 128);
            v722 = v639;
            v723 = v640;
            [v638 setTransform:&v721];

            [v490 addSubview:v638];
            v641 = *&v707[v490];
            *&v707[v490] = v638;

            v415 = v715;
            v579 = v687;
            v495 = v688;
            goto LABEL_298;
          }
        }

        v714 = 0;
        goto LABEL_297;
      }

      goto LABEL_312;
    }
  }

  v675 = v171;
  v182 = v708;
  v183 = v712;
  v701 = (*(v712 + v708[16]))(v153);
  v709 = v184;
  v705 = v151();
  v185 = sub_10000F778(v183 + v182[7], v699, &qword_100615038, &qword_1004EA878);
  v186 = v715;
  v703 = *&v715[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
  v187 = (*(v183 + v182[15]))(v185);
  v713 = *(v183 + v182[9]);

  v189 = v694;
  v190 = (v694)(v726, v188);
  v191 = v728;
  if (v728)
  {
    v667 = v727;

    v190 = sub_100007214(v726, &qword_100615030, &qword_1004EA870);
  }

  else
  {
    v667 = 0;
  }

  v289 = v668;
  v290 = (v189)(v729, v190);
  if (v730)
  {
    v702 = v731;

    v290 = sub_100007214(v729, &qword_100615030, &qword_1004EA870);
  }

  else
  {
    v702 = _swiftEmptyArrayStorage;
  }

  v704 = v191;
  (v189)(v732, v290);
  if (v733)
  {
    LODWORD(v698) = v734;
    sub_100007214(v732, &qword_100615030, &qword_1004EA870);
  }

  else
  {
    LODWORD(v698) = 0;
  }

  v291 = v669;
  memcpy(v743, &v186[v154], 0x2B0uLL);
  v292 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  swift_beginAccess();
  sub_10000F778(&v186[v292], v700, &qword_100616C00, &unk_1004EBFF0);
  v293 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  swift_beginAccess();
  sub_10000F778(&v186[v293], v289, &qword_100616EF0, &qword_1004EC398);
  v294 = *(v711 + 48);
  v295 = v710;
  if (v294(v289, 1, v710))
  {
    sub_10046E570(v743, &v721);
    sub_100007214(v289, &qword_100616EF0, &qword_1004EC398);
    v690 = 0;
    v711 = 0;
  }

  else
  {
    v296 = v706;
    sub_10048F51C(v289, v706, type metadata accessor for Lyrics.Translation.Line);
    sub_10046E570(v743, &v721);
    sub_100007214(v289, &qword_100616EF0, &qword_1004EC398);
    v297 = v296[1];
    v690 = *v296;
    v711 = v297;

    sub_10048F4BC(v296, type metadata accessor for Lyrics.Translation.Line);
  }

  v298 = v714;
  sub_10000F778(&v186[v293], v291, &qword_100616EF0, &qword_1004EC398);
  if (v294(v291, 1, v295))
  {
    sub_100007214(v291, &qword_100616EF0, &qword_1004EC398);
    v669 = 0;
    v697 = 0;
  }

  else
  {
    v299 = v706;
    sub_10048F51C(v291, v706, type metadata accessor for Lyrics.Translation.Line);
    sub_100007214(v291, &qword_100616EF0, &qword_1004EC398);
    v300 = *(v299 + 24);
    v669 = *(v299 + 16);
    v697 = v300;

    sub_10048F4BC(v299, type metadata accessor for Lyrics.Translation.Line);
  }

  v301 = &v186[v293];
  v302 = v670;
  sub_10000F778(v301, v670, &qword_100616EF0, &qword_1004EC398);
  if (v294(v302, 1, v295))
  {
    sub_100007214(v302, &qword_100616EF0, &qword_1004EC398);
    v303 = sub_1004B6E44();
    v304 = v692;
    (*(*(v303 - 8) + 56))(v692, 1, 1, v303);
  }

  else
  {
    v305 = v706;
    sub_10048F51C(v302, v706, type metadata accessor for Lyrics.Translation.Line);
    sub_100007214(v302, &qword_100616EF0, &qword_1004EC398);
    v306 = *(v295 + 6);
    v307 = sub_1004B6E44();
    v308 = *(v307 - 8);
    v304 = v692;
    (*(v308 + 16))(v692, v305 + v306, v307);
    sub_10048F4BC(v305, type metadata accessor for Lyrics.Translation.Line);
    (*(v308 + 56))(v304, 0, 1, v307);
  }

  v309 = v708;
  v310 = v713;
  v694 = _s19SBS_TextContentViewCMa(0);
  v311 = objc_allocWithZone(v694);
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_isScrolling) = 1;
  v312 = (v311 + OBJC_IVAR___MusicSBS_TextContentView_text);
  *v312 = 0;
  v312[1] = 0;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_attributedText) = 0;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_isSelected) = 0;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_progress) = 0;
  v693 = OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_backgroundDirection) = 2;
  v313 = OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine;
  v298[7](v311 + OBJC_IVAR___MusicSBS_TextContentView_transliteratedLine, 1, 1, v309);
  v691 = OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_backgroundPosition) = 2;
  v689 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_textView) = 0;
  v695 = OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView) = 0;
  v314 = v709;
  *v312 = v701;
  v312[1] = v314;
  memcpy(v311 + OBJC_IVAR___MusicSBS_TextContentView_specs, v743, 0x2B0uLL);
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_alignment) = v703;
  LODWORD(v688) = v187 & 1;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_direction) = v187 & 1;
  *(v311 + OBJC_IVAR___MusicSBS_TextContentView_capabilities) = v310;
  swift_beginAccess();

  sub_10046E570(v743, &v721);

  v710 = v311;
  v315 = v700;
  sub_10003F42C(v700, v311 + v313, &qword_100616C00, &unk_1004EBFF0);
  swift_endAccess();
  sub_10000F778(v699, v696, &qword_100615038, &qword_1004EA878);
  v316 = v708;
  sub_10000F778(v304, v685, &qword_100615038, &qword_1004EA878);
  v317 = v671;
  sub_10000F778(v315, v671, &qword_100616C00, &unk_1004EBFF0);
  v320 = v298[6];
  v318 = v298 + 6;
  v319 = v320;
  if ((v320)(v317, 1, v316) == 1)
  {
    sub_100007214(v317, &qword_100616C00, &unk_1004EBFF0);
    v321 = sub_1004B6E44();
    (*(*(v321 - 8) + 56))(v686, 1, 1, v321);
  }

  else
  {
    sub_10000F778(v317 + v316[7], v686, &qword_100615038, &qword_1004EA878);
    sub_10048F4BC(v317, type metadata accessor for Lyrics.TextLine);
  }

  v323 = v673;
  v322 = v674;
  v324 = v672;
  sub_10000F778(v315, v672, &qword_100616C00, &unk_1004EBFF0);
  if ((v319)(v324, 1, v316) == 1)
  {
    sub_100007214(v324, &qword_100616C00, &unk_1004EBFF0);
    v325 = 2;
  }

  else
  {
    v326 = (*(v324 + v316[15]))();
    sub_10048F4BC(v324, type metadata accessor for Lyrics.TextLine);
    v325 = v326 & 1;
  }

  LODWORD(v687) = v325;
  sub_10000F778(v315, v323, &qword_100616C00, &unk_1004EBFF0);
  if ((v319)(v323, 1, v316) == 1)
  {
    sub_100007214(v323, &qword_100616C00, &unk_1004EBFF0);
    v682 = 0;
    v683 = 0;
  }

  else
  {
    v327 = (*(v323 + v316[16]))();
    v682 = v328;
    v683 = v327;
    sub_10048F4BC(v323, type metadata accessor for Lyrics.TextLine);
  }

  LODWORD(v706) = v698 & 1;
  sub_10000F778(v315, v322, &qword_100616C00, &unk_1004EBFF0);
  v329 = (v319)(v322, 1, v316);
  v714 = v318;
  v670 = v319;
  if (v329 == 1)
  {
    sub_100007214(v322, &qword_100616C00, &unk_1004EBFF0);
    v681 = 0;
  }

  else
  {
    v681 = (*(v322 + v316[17]))();
    sub_10048F4BC(v322, type metadata accessor for Lyrics.TextLine);
  }

  v698 = _s14descr1005A2689C8TextViewCMa(0);
  v330 = objc_allocWithZone(v698);
  v331 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  *v331 = 0;
  v331[1] = 0;
  v680 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
  v679 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
  v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
  v332 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
  *v332 = 0;
  v332[1] = 0;
  v333 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
  v334 = sub_1004B6E44();
  v335 = *(v334 - 8);
  v336 = *(v335 + 56);
  v337 = v335 + 56;
  (v336)(&v330[v333], 1, 1, v334);
  v338 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
  (v336)(&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v334);
  v339 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
  v673 = v336;
  v674 = v334;
  v672 = v337;
  (v336)(&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v334);
  v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
  v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
  v676 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
  v340 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
  *v340 = 2;
  *(v340 + 8) = 0u;
  *(v340 + 24) = 0u;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
  v341 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  v341[4] = 0u;
  v341[5] = 0u;
  v341[2] = 0u;
  v341[3] = 0u;
  *v341 = 0u;
  v341[1] = 0u;
  v342 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

  sub_10046E570(v743, &v721);
  v343 = v711;

  v344 = v709;

  *&v330[v342] = sub_100447BF4(_swiftEmptyArrayStorage);
  v345 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
  v346 = v701;
  *v345 = v701;
  v345[1] = v344;
  v347 = &v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
  *v347 = v346;
  v347[1] = v344;
  swift_beginAccess();

  sub_10003F42C(v696, &v330[v333], &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  swift_beginAccess();
  v348 = &v330[v338];
  v349 = v685;
  sub_10003F42C(v685, v348, &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  swift_beginAccess();
  v350 = v686;
  sub_10003F42C(v686, &v330[v339], &qword_100615038, &qword_1004EA878);
  swift_endAccess();
  v330[v679] = v687;
  v351 = v682;
  *v331 = v683;
  v331[1] = v351;

  *&v330[v680] = v681;

  *v332 = v690;
  v332[1] = v343;

  memcpy(&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v743, 0x2B0uLL);
  *&v330[v676] = 0;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v705;
  v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 0;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v703;
  v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v688;
  *&v330[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v713;
  v719.receiver = v330;
  v352 = v698;
  v719.super_class = v698;
  v353 = objc_msgSendSuper2(&v719, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  sub_100007214(v350, &qword_100615038, &qword_1004EA878);
  sub_100007214(v349, &qword_100615038, &qword_1004EA878);
  sub_100007214(v696, &qword_100615038, &qword_1004EA878);
  v354 = v710;
  v355 = *(v710 + v689);
  *(v710 + v689) = v353;

  if (v704)
  {
    sub_10000F778(v699, v684, &qword_100615038, &qword_1004EA878);
    sub_10000F778(v692, v677, &qword_100615038, &qword_1004EA878);
    v356 = v700;
    v357 = v656;
    sub_10000F778(v700, v656, &qword_100616C00, &unk_1004EBFF0);
    v358 = v708;
    v359 = v670;
    if ((v670)(v357, 1, v708) == 1)
    {

      sub_100007214(v357, &qword_100616C00, &unk_1004EBFF0);
      v673(v678, 1, 1, v674);
    }

    else
    {
      sub_10000F778(v357 + v358[7], v678, &qword_100615038, &qword_1004EA878);

      sub_10048F4BC(v357, type metadata accessor for Lyrics.TextLine);
    }

    v384 = v657;
    v383 = v658;
    sub_10000F778(v356, v657, &qword_100616C00, &unk_1004EBFF0);
    if ((v359)(v384, 1, v358) == 1)
    {
      sub_100007214(v384, &qword_100616C00, &unk_1004EBFF0);
      v385 = 2;
    }

    else
    {
      v386 = (*(v384 + v358[15]))();
      sub_10048F4BC(v384, type metadata accessor for Lyrics.TextLine);
      v385 = v386 & 1;
    }

    LODWORD(v701) = v385;
    sub_10000F778(v356, v383, &qword_100616C00, &unk_1004EBFF0);
    if ((v359)(v383, 1, v358) == 1)
    {
      sub_100007214(v383, &qword_100616C00, &unk_1004EBFF0);
      v690 = 0;
      v696 = 0;
    }

    else
    {
      (*(v383 + v358[18]))(v735);
      v696 = v737;
      if (v737)
      {
        v690 = v736;

        sub_100007214(v735, &qword_100615030, &qword_1004EA870);
      }

      else
      {
        v690 = 0;
      }

      sub_10048F4BC(v383, type metadata accessor for Lyrics.TextLine);
    }

    v531 = v356;
    v532 = v659;
    sub_10000F778(v531, v659, &qword_100616C00, &unk_1004EBFF0);
    if ((v359)(v532, 1, v358) == 1)
    {
      sub_100007214(v532, &qword_100616C00, &unk_1004EBFF0);
    }

    else
    {
      (*(v532 + v358[18]))(v738);
      sub_10048F4BC(v532, type metadata accessor for Lyrics.TextLine);
      if (v740)
      {
        v714 = v742;

        sub_100007214(v738, &qword_100615030, &qword_1004EA870);
LABEL_239:
        v533 = objc_allocWithZone(v352);
        v534 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
        *v534 = 0;
        v534[1] = 0;
        v708 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedWords] = 0;
        v689 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection;
        v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationDirection] = 2;
        v535 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText];
        *v535 = 0;
        v535[1] = 0;
        v536 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language;
        v538 = v673;
        v537 = v674;
        v673(&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_language], 1, 1, v674);
        v539 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage;
        v538(&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLanguage], 1, 1, v537);
        v540 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage;
        v538(&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliterationLanguage], 1, 1, v537);
        v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isScrolling] = 1;
        v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] = 0;
        v688 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = 0;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = 0;
        v541 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
        *v541 = 2;
        *(v541 + 8) = 0u;
        *(v541 + 24) = 0u;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel] = 0;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textKitManager] = 0;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer] = 0;
        v542 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
        v542[4] = 0u;
        v542[5] = 0u;
        v542[2] = 0u;
        v542[3] = 0u;
        *v542 = 0u;
        v542[1] = 0u;
        v543 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lineBreakAdjustmentCountMap;

        sub_10046E570(v743, &v721);
        v544 = v697;

        *&v533[v543] = sub_100447BF4(_swiftEmptyArrayStorage);
        v545 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_text];
        v546 = v667;
        v547 = v704;
        *v545 = v667;
        v545[1] = v547;
        v548 = &v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
        *v548 = v546;
        v548[1] = v547;
        swift_beginAccess();

        sub_10003F42C(v684, &v533[v536], &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        swift_beginAccess();
        v549 = &v533[v539];
        v550 = v677;
        sub_10003F42C(v677, v549, &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        swift_beginAccess();
        v551 = v678;
        sub_10003F42C(v678, &v533[v540], &qword_100615038, &qword_1004EA878);
        swift_endAccess();
        v533[v689] = v701;
        v552 = v696;
        *v534 = v690;
        v534[1] = v552;

        *(v708 + v533) = v714;

        *v535 = v669;
        v535[1] = v544;

        memcpy(&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], v743, 0x2B0uLL);
        *&v533[v688] = 0;
        v553 = v703;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_words] = v702;
        v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] = 1;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] = v553;
        v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] = v706;
        *&v533[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_capabilities] = v713;
        v717.receiver = v533;
        v717.super_class = v698;
        v554 = objc_msgSendSuper2(&v717, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
        sub_100007214(v551, &qword_100615038, &qword_1004EA878);
        sub_100007214(v550, &qword_100615038, &qword_1004EA878);
        sub_100007214(v684, &qword_100615038, &qword_1004EA878);
        v354 = v710;
        v555 = v695;
        v556 = *(v710 + v695);
        *(v710 + v695) = v554;

        v557 = *(v354 + v555);
        if (v557)
        {
          v558 = sub_10047CE90(v553);
          v560 = v559;
          v561 = v557;
          UIView.setAnchorPoint(_:preserveFrame:)(1, v558, v560);

          v562 = *(v354 + v695);
          if (v562)
          {
            [v562 setAlpha:0.0];
            v563 = *(v354 + v695);
            if (v563)
            {
              v721 = v743[8];
              v722 = v743[9];
              v723 = v743[10];
              [v563 setTransform:&v721];
            }
          }
        }

        goto LABEL_243;
      }
    }

    v714 = 0;
    goto LABEL_239;
  }

LABEL_243:
  *(v354 + v693) = v706;
  v691[v354] = v707;
  v718.receiver = v354;
  v718.super_class = v694;
  v564 = objc_msgSendSuper2(&v718, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v565 = OBJC_IVAR___MusicSBS_TextContentView_textView;
  v566 = *&v564[OBJC_IVAR___MusicSBS_TextContentView_textView];
  v567 = v692;
  if (!v566)
  {
LABEL_311:
    __break(1u);
LABEL_312:
    __break(1u);
    goto LABEL_313;
  }

  v568 = v564;
  v569 = v564;
  [v569 addSubview:v566];
  v570 = *&v569[OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView];
  if (!v570)
  {

    sub_10046E5CC(v743);

    goto LABEL_249;
  }

  v571 = *&v568[v565];
  if (!v571)
  {
LABEL_313:
    __break(1u);
    goto LABEL_314;
  }

  v572 = v570;
  [v571 frame];
  v573 = *&v568[v565];
  if (v573)
  {
    v574 = v573;

    [v574 frame];

    [v572 frame];
    [v572 setFrame:?];

    [v569 addSubview:v572];
    sub_10046E5CC(v743);
LABEL_249:
    sub_100007214(v567, &qword_100615038, &qword_1004EA878);
    sub_100007214(v700, &qword_100616C00, &unk_1004EBFF0);
    sub_100007214(v699, &qword_100615038, &qword_1004EA878);
    v575 = v675;
    v576 = *v675;
    *v675 = v569;
    v575[1] = &off_1005D4208;
    v577 = v569;
    v578 = v715;
    sub_10048678C(v576);

    v415 = v578;
    goto LABEL_299;
  }

LABEL_314:
  __break(1u);
}

id sub_10048EB3C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SyncedLyricsLineView(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for SyncedLyricsLineView(uint64_t a1)
{
  result = qword_100616700;
  if (!qword_100616700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10048ECB0(uint64_t a1)
{
  sub_10048EE10(319, &qword_1006163F0, type metadata accessor for Lyrics.TextLine);
  if (v1 <= 0x3F)
  {
    sub_10048EE10(319, &unk_100617000, type metadata accessor for Lyrics.Translation.Line);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_10048EE10(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10048EE78()
{
  result = qword_100616710;
  if (!qword_100616710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616710);
  }

  return result;
}

char *sub_10048EECC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v11 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v13 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v13 - 8) + 56))(&v5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
  v15 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *&v5[v15] = [objc_allocWithZone(UIView) init];
  v16 = a1;
  v17 = a2;
  v18 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  *v18 = 0;
  v18[1] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius] = 0;
  v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused] = 0;
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter] = 0;
  v19 = &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius];
  *v19 = 0;
  v19[8] = 1;
  sub_10001342C(v16, &v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line]);
  swift_beginAccess();
  v44 = a3;
  sub_10003F42C(a3, &v5[v12], &qword_100616EF0, &qword_1004EC398);
  swift_endAccess();
  *&v5[v14] = a4;
  memcpy(&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], a5, 0x2B0uLL);
  swift_beginAccess();
  sub_10046E570(a5, v46);
  sub_10003F42C(a2, &v5[v10], &qword_100616C00, &unk_1004EBFF0);
  swift_endAccess();
  v20 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  *&v5[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter] = v20;
  v45.receiver = v5;
  v45.super_class = type metadata accessor for SyncedLyricsLineView(0);
  v21 = objc_msgSendSuper2(&v45, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v22 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  [*(v21 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView) setUserInteractionEnabled:0];
  v23 = *(v21 + v22);
  v24 = v21;
  [v24 addSubview:v23];
  [v24 setExclusiveTouch:1];
  v25 = *(v24 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 416);
  v26 = *(v24 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 432);
  v46[0] = *(v24 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs + 400);
  v46[1] = v25;
  v46[2] = v26;
  [v24 setTransform:v46];
  v27 = [v24 layer];
  [v27 setShouldRasterize:1];

  v28 = [v24 layer];
  v29 = [objc_opt_self() mainScreen];
  [v29 scale];
  v31 = v30;

  [v28 setRasterizationScale:v31];
  v32 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter;
  v33 = *(v24 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurFilter);
  isa = sub_1004BC6E4().super.super.isa;
  [v33 setValue:isa forKey:kCAFilterInputRadius];

  v35 = [v24 layer];
  sub_100003ABC(&qword_100615758, &qword_1004ECB50);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1004C50A0;
  v37 = *(v24 + v32);
  *(v36 + 56) = sub_100009130(0, &qword_100615B68, CAFilter_ptr);
  *(v36 + 32) = v37;
  v38 = v37;
  v39 = sub_1004BC284().super.isa;

  [v35 setFilters:v39];

  if (qword_100614E78 != -1)
  {
    swift_once();
  }

  v40 = static LyricsOptionsManager.shared;
  if (os_variant_has_internal_content() && sub_10043EA2C(9, *(v40 + 40)))
  {
    v41 = [objc_opt_self() redColor];
    [v24 setBackgroundColor:v41];
  }

  sub_100488724();
  sub_10048769C();
  sub_100007214(v44, &qword_100616EF0, &qword_1004EC398);
  sub_100007214(v17, &qword_100616C00, &unk_1004EBFF0);
  sub_100004C6C(v16);
  return v24;
}

uint64_t sub_10048F458(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10048F4BC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10048F51C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10048F584()
{

  return swift_deallocObject();
}

uint64_t sub_10048F5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10048F5F0()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10048F628()
{

  return swift_deallocObject();
}

void sub_10048F66C()
{
  v1 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
  v2 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
  v4 = type metadata accessor for Lyrics.Translation.Line(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling) = 1;
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_containerView;
  *(v0 + v5) = [objc_allocWithZone(UIView) init];
  v6 = (v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  *v6 = 0;
  v6[1] = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_blurRadius) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isLineFocused) = 0;
  *(v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_brightnessFilter) = 0;
  v7 = v0 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_previousBlurRadius;
  *v7 = 0;
  *(v7 + 8) = 1;
  sub_1004BD624();
  __break(1u);
}

uint64_t sub_10048F7F4()
{

  return swift_deallocObject();
}

uint64_t SyncedLyricsManager.Configuration.init(animationDuration:finishLineAnimationDuration:maxEndTimeOffset:maxSelectedLines:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  *(a4 + 24) = a6;
  *(a4 + 32) = a3;
  return result;
}

uint64_t SyncedLyricsManager.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v1 + 40);
  *(a1 + 32) = v4;
}

double SyncedLyricsManager.configuration.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  *(v1 + 56) = *(a1 + 32);

  return result;
}

double SyncedLyricsManager.delegate.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*SyncedLyricsManager.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_10048FA68;
}

void sub_10048FA68(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

double sub_10048FAEC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;

  return result;
}

double SyncedLyricsManager.selectedLines.getter()
{
  swift_beginAccess();

  return result;
}

double SyncedLyricsManager.spatialOffset.getter()
{
  swift_beginAccess();
  result = 0.0;
  if (*(v0 + 88) == 1)
  {
    return Lyrics.spatialOffset.getter();
  }

  return result;
}

uint64_t SyncedLyricsManager.adjustedElapsedTime.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  if (v1)
  {
    v2 = *(v0 + 104);

    v4 = v1(v3);
    swift_beginAccess();
    v5 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v5 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v1, v2);
    *&result = v4 - v5;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

void sub_10048FD5C()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 96);
  if (v2)
  {
    v3 = *(v0 + 104);

    v5 = v2(v4);
    swift_beginAccess();
    v6 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v6 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v2, v3);
    v7 = v5 - v6;
    v8 = *(v0 + 16);
    Lyrics.line(before:useOriginalLines:)(0, &v21, v7 + 0.1);
    if (v22)
    {
      sub_100013414(&v21, &v23);
    }

    else
    {
      v20 = *(v8 + 40);
      if (*(v20 + 16))
      {
        sub_10001342C(v20 + 32, &v23);
        if (v22)
        {
          sub_100007214(&v21, &qword_100615100, &unk_1004EA8E0);
        }
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
      }
    }

    if (*(&v24 + 1))
    {
      sub_100013414(&v23, v26);
      v10 = v27;
      v9 = v28;
      sub_100009178(v26, v27);
      if ((*(*(v9 + 8) + 8))(v10) < v7 || (v12 = v27, v11 = v28, sub_100009178(v26, v27), vabdd_f64(v7, (*(*(v11 + 8) + 8))(v12)) <= 0.1))
      {
        Lyrics.line(after:)(v26, &v23);
        swift_beginAccess();
        sub_100491900(&v23, v1 + 112);
        swift_endAccess();
        sub_100007214(&v23, &qword_100615100, &unk_1004EA8E0);
        sub_100003ABC(&qword_100615700, &qword_1004EB310);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1004C50A0;
        sub_10001342C(v26, v17 + 32);
        swift_beginAccess();
        *(v1 + 80) = v17;

        swift_beginAccess();
        if (!swift_unknownObjectWeakLoadStrong())
        {
LABEL_16:
          sub_100004C6C(v26);
          return;
        }

        v18 = *(v1 + 72);
        ObjectType = swift_getObjectType();
        (*(v18 + 16))(v1, v26, 1, ObjectType, v18, v7);
      }

      else
      {
        sub_10001342C(v26, &v23);
        swift_beginAccess();
        sub_100491900(&v23, v1 + 112);
        swift_endAccess();
        sub_100007214(&v23, &qword_100615100, &unk_1004EA8E0);
        swift_beginAccess();
        *(v1 + 80) = _swiftEmptyArrayStorage;

        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v13 = *(v1 + 72);
          v14 = swift_getObjectType();
          (*(v13 + 48))(v1, v14, v13);
          swift_unknownObjectRelease();
        }

        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_16;
        }

        v15 = *(v1 + 72);
        v16 = swift_getObjectType();
        (*(v15 + 16))(v1, v26, 0, v16, v15, v7);
      }

      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    sub_100007214(&v23, &qword_100615100, &unk_1004EA8E0);
  }

  SyncedLyricsManager.update()();
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  sub_10002F518(v1, *(v0 + 104));
  return v1;
}

uint64_t SyncedLyricsManager.elapsedTimeProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 96);
  v6 = *(v2 + 104);
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  sub_10002F518(a1, a2);
  sub_10003CC4C(v5, v6);
  sub_10048FD5C();
  return sub_10003CC4C(a1, a2);
}

void (*SyncedLyricsManager.elapsedTimeProvider.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_10049026C;
}

void sub_10049026C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_10048FD5C();
  }
}

uint64_t SyncedLyricsManager.__allocating_init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = swift_allocObject();
  *(v9 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v9 + 80) = _swiftEmptyArrayStorage;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0;
  *(v9 + 16) = a1;
  v10 = *(a2 + 16);
  *(v9 + 24) = *a2;
  *(v9 + 40) = v10;
  *(v9 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v9 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v9 + 88) = a5;
  return v9;
}

uint64_t SyncedLyricsManager.init(lyrics:configuration:delegate:isPlayingSpatial:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 80) = _swiftEmptyArrayStorage;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 144) = 0;
  *(v5 + 16) = a1;
  v10 = *(a2 + 16);
  *(v5 + 24) = *a2;
  *(v5 + 40) = v10;
  *(v5 + 56) = *(a2 + 32);
  swift_beginAccess();
  *(v5 + 72) = a4;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v5 + 88) = a5;
  return v5;
}

Swift::Void __swiftcall SyncedLyricsManager.update()()
{
  v1 = v0;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v3 = &ObjectType - v2;
  v4 = type metadata accessor for Lyrics.TextLine(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004913E8();
  swift_beginAccess();
  sub_10049169C(v0 + 112, &v69);
  if (!v70)
  {
    sub_100007214(&v69, &qword_100615100, &unk_1004EA8E0);
    return;
  }

  sub_100013414(&v69, v72);
  swift_beginAccess();
  v8 = *(v0 + 96);
  if (v8)
  {
    v9 = *(v0 + 104);

    v11 = v8(v10);
    swift_beginAccess();
    v12 = 0.0;
    if (*(v0 + 88) == 1)
    {
      v12 = Lyrics.spatialOffset.getter();
    }

    sub_10003CC4C(v8, v9);
    swift_beginAccess();
    v13 = *(v0 + 80);
    v14 = *(v13 + 16);
    if (v14)
    {
      sub_10001342C(v13 + 40 * v14 - 8, &v69);
      v16 = v73;
      v15 = v74;
      sub_100009178(v72, v73);
      v17 = (*(*(v15 + 8) + 8))(v16);
      v19 = v70;
      v18 = v71;
      sub_100009178(&v69, v70);
      v20 = v17 - (*(v18[1] + 2))(v19);
      swift_beginAccess();
      v21 = *(v1 + 24);

      v23 = v21(v22, v20);

      sub_100004C6C(&v69);
    }

    else
    {
      swift_beginAccess();
      v24 = *(v0 + 24);

      v23 = v24(v25, 0.0);
    }

    v26 = v11 - v12;
    v27 = *(v1 + 80);
    v28 = *(v27 + 16);
    v66 = v5;
    if (v28)
    {
      sub_10001342C(v27 + 40 * v28 - 8, &v69);
      sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
      if (swift_dynamicCast())
      {
        v29 = v67[0];
        v30 = v67[1];
        v31 = v67[2];
        v32 = v68;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v33 = *(v1 + 72);
          ObjectType = swift_getObjectType();
          v70 = &type metadata for Lyrics.InstrumentalLine;
          v71 = &protocol witness table for Lyrics.InstrumentalLine;
          v34 = swift_allocObject();
          *&v69 = v34;
          *(v34 + 16) = v29;
          *(v34 + 24) = v30;
          *(v34 + 32) = v31;
          *(v34 + 40) = v32;
          (*(v33 + 24))(v1, &v69, ObjectType, v33, v26);
          swift_unknownObjectRelease();
          sub_100004C6C(&v69);
        }
      }
    }

    swift_beginAccess();
    if (sub_100490C58(v72, v1, v26 + *(v1 + 40), v23) == 1)
    {
      v35 = *(v1 + 80);
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v35 + 32;

        swift_beginAccess();
        do
        {
          sub_10001342C(v37, &v69);
          if (swift_unknownObjectWeakLoadStrong())
          {
            v38 = *(v1 + 72);
            v39 = swift_getObjectType();
            (*(v38 + 40))(v1, &v69, v39, v38);
            swift_unknownObjectRelease();
          }

          sub_100004C6C(&v69);
          v37 += 40;
          --v36;
        }

        while (v36);
      }
    }

    v41 = v73;
    v40 = v74;
    sub_100009178(v72, v73);
    if ((*(*(v40 + 8) + 8))(v41) <= v26 + v23)
    {
      v42 = *(v1 + 80);
      v43 = *(v42 + 16);
      if (v43)
      {
        sub_10001342C(v42 + 40 * v43 - 8, &v69);
        v45 = v73;
        v44 = v74;
        sub_100009178(v72, v73);
        v46 = (*(*(v44 + 8) + 8))(v45);
        v48 = v70;
        v47 = v71;
        sub_100009178(&v69, v70);
        v49 = (*(v47[1] + 2))(v48);
        v51 = v70;
        v50 = v71;
        sub_100009178(&v69, v70);
        v52 = (*(v50[1] + 2))(v51) - *(v1 + 48);
        sub_10001342C(v72, v67);
        sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
        if (swift_dynamicCast())
        {
          v53 = v66;
          if (v52 < v26)
          {
            goto LABEL_34;
          }
        }

        else
        {
          sub_10001342C(&v69, v67);
          v54 = swift_dynamicCast();
          v53 = v66;
          if (!v54 && *(*(v1 + 80) + 16) < *(v1 + 56))
          {
            v55 = v73;
            v56 = v74;
            sub_100009178(v72, v73);
            ObjectType = (*(v56 + 16))(v55, v56);
            v58 = v70;
            v57 = v71;
            sub_100009178(&v69, v70);
            v59 = (v57[2])(v58, v57);
            if (v59 < ObjectType)
            {
              v61 = v73;
              v60 = v74;
              sub_100009178(v72, v73);
              if ((*(*(v60 + 8) + 8))(v61) < v26)
              {
                sub_1004911AC(v72);
                goto LABEL_36;
              }
            }
          }

          if (v52 < v26)
          {
LABEL_34:
            sub_10049104C(v72, COERCE__INT64(v46 - v49), 0, v26);
            goto LABEL_36;
          }
        }

        sub_10001342C(&v69, v67);
        v62 = swift_dynamicCast();
        v63 = *(v53 + 56);
        if ((v62 & 1) == 0)
        {
          v63(v3, 1, 1, v4);
          sub_100007214(v3, &qword_100616C00, &unk_1004EBFF0);
          goto LABEL_36;
        }

        v63(v3, 0, 1, v4);
        sub_10048F458(v3, v7);
        v64 = *&v7[*(v4 + 44)];
        sub_10047CFF0(v7);
        if (v64 - *(v1 + 48) < v26)
        {
          goto LABEL_34;
        }

LABEL_36:
        sub_100004C6C(&v69);
        goto LABEL_37;
      }

      sub_10049104C(v72, 0, 1, v26);
    }
  }

LABEL_37:
  sub_100004C6C(v72);
}

uint64_t sub_100490C58(void *a1, uint64_t a2, double a3, double a4)
{
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v9 = v34 - v8 + 24;
  v10 = type metadata accessor for Lyrics.TextLine(0);
  v11 = *(v10 - 8);
  __chkstk_darwin();
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v15 = a1[3];
  v14 = a1[4];
  sub_100009178(a1, v15);
  if ((*(*(v14 + 8) + 8))(v15) <= a3 + a4)
  {
    swift_beginAccess();
    v16 = *(a2 + 80);
    v17 = *(v16 + 16);
    if (v17)
    {
      sub_10001342C(v16 + 40 * v17 - 8, v35);
      v19 = v36;
      v18 = v37;
      sub_100009178(v35, v36);
      v20 = (*(*(v18 + 8) + 16))(v19);
      swift_beginAccess();
      v21 = v20 - *(a2 + 48);
      sub_10001342C(a1, v34);
      sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
      if (!swift_dynamicCast())
      {
        sub_10001342C(v35, v34);
        if (!swift_dynamicCast() && *(*(a2 + 80) + 16) < *(a2 + 56))
        {
          v22 = a1[3];
          v23 = a1[4];
          sub_100009178(a1, v22);
          v33 = (*(v23 + 16))(v22, v23);
          v25 = v36;
          v24 = v37;
          sub_100009178(v35, v36);
          v26 = (*(v24 + 16))(v25, v24);
          if (v26 < v33)
          {
            v28 = a1[3];
            v27 = a1[4];
            sub_100009178(a1, v28);
            if ((*(*(v27 + 8) + 8))(v28) < a3)
            {
              sub_100004C6C(v35);
              return 2;
            }
          }
        }
      }

      if (v21 < a3)
      {
        goto LABEL_10;
      }

      sub_10001342C(v35, v34);
      v30 = swift_dynamicCast();
      v31 = *(v11 + 56);
      if (v30)
      {
        v31(v9, 0, 1, v10);
        sub_10048F458(v9, v13);
        v32 = *&v13[*(v10 + 44)];
        sub_10047CFF0(v13);
        if (v32 - *(a2 + 48) < a3)
        {
LABEL_10:
          sub_100004C6C(v35);
          return 1;
        }
      }

      else
      {
        v31(v9, 1, 1, v10);
        sub_100007214(v9, &qword_100616C00, &unk_1004EBFF0);
      }

      sub_100004C6C(v35);
    }
  }

  return 0;
}

void sub_10049104C(void *a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  sub_100003ABC(&qword_100615700, &qword_1004EB310);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1004C50A0;
  sub_10001342C(a1, v10 + 32);
  swift_beginAccess();
  *(v5 + 80) = v10;

  Lyrics.line(after:)(a1, v13);
  swift_beginAccess();
  sub_100491900(v13, v5 + 112);
  swift_endAccess();
  sub_100007214(v13, &qword_100615100, &unk_1004EA8E0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v5 + 72);
    ObjectType = swift_getObjectType();
    (*(v11 + 8))(v5, a1, a2, a3 & 1, ObjectType, v11, a4);
    swift_unknownObjectRelease();
  }
}

double sub_1004911AC(void *a1)
{
  v2 = v1;
  sub_10001342C(a1, v18);
  swift_beginAccess();
  v4 = *(v1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 80) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1004413F0(0, v4[2] + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v7 = v4[2];
  v6 = v4[3];
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1004413F0((v6 > 1), v7 + 1, 1, v4);
    *(v2 + 80) = v4;
  }

  v8 = v19;
  v9 = v20;
  sub_1001F4C68(v18, v19);
  v10 = __chkstk_darwin();
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12, v10);
  sub_100491868(v7, v12, (v2 + 80), v8, v9);
  sub_100004C6C(v18);
  *(v2 + 80) = v4;
  swift_endAccess();
  Lyrics.line(after:)(a1, v18);
  swift_beginAccess();
  sub_100491900(v18, v2 + 112);
  swift_endAccess();
  sub_100007214(v18, &qword_100615100, &unk_1004EA8E0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v15 = *(v2 + 72);
    ObjectType = swift_getObjectType();
    (*(v15 + 32))(v2, a1, ObjectType, v15);
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_1004913E8()
{
  v1 = v0;
  swift_beginAccess();
  sub_10049169C(v0 + 112, &v19);
  v2 = *(&v20 + 1);
  sub_100007214(&v19, &qword_100615100, &unk_1004EA8E0);
  if (!v2)
  {
    swift_beginAccess();
    v3 = *(v1 + 96);
    if (v3)
    {
      v4 = *(v1 + 104);

      v6 = v3(v5);
      swift_beginAccess();
      v7 = 0.0;
      if (*(v1 + 88) == 1)
      {
        v7 = Lyrics.spatialOffset.getter();
      }

      sub_10003CC4C(v3, v4);
      v8 = *(v1 + 16);
      v9 = *(v8 + 40);
      if (*(v9 + 16))
      {
        v10 = v6 - v7;
        sub_10001342C(v9 + 32, &v19);
        v12 = *(&v20 + 1);
        v11 = v21;
        sub_100009178(&v19, *(&v20 + 1));
        v13 = (*(*(v11 + 8) + 8))(v12);
        sub_100004C6C(&v19);
        if (v10 <= v13)
        {
          v16 = *(v8 + 40);
          if (*(v16 + 16))
          {
            sub_10001342C(v16 + 32, &v19);
          }

          else
          {
            v21 = 0;
            v19 = 0u;
            v20 = 0u;
          }

          swift_beginAccess();
          sub_100491900(&v19, v1 + 112);
          swift_endAccess();
          sub_100007214(&v19, &qword_100615100, &unk_1004EA8E0);
        }

        else
        {
          Lyrics.line(before:useOriginalLines:)(0, &v17, v10);
          if (v18)
          {
            sub_100013414(&v17, &v19);
            v15 = *(&v20 + 1);
            v14 = v21;
            sub_100009178(&v19, *(&v20 + 1));
            if (v10 >= (*(*(v14 + 8) + 16))(v15))
            {
              Lyrics.line(after:)(&v19, &v17);
            }

            else
            {
              sub_10001342C(&v19, &v17);
            }

            swift_beginAccess();
            sub_100491900(&v17, v1 + 112);
            swift_endAccess();
            sub_100007214(&v17, &qword_100615100, &unk_1004EA8E0);
            sub_100004C6C(&v19);
          }

          else
          {
            sub_100007214(&v17, &qword_100615100, &unk_1004EA8E0);
          }
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_10049169C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615100, &unk_1004EA8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SyncedLyricsManager.deinit()
{

  sub_1001898C4(v0 + 64);

  sub_10003CC4C(*(v0 + 96), *(v0 + 104));
  sub_100007214(v0 + 112, &qword_100615100, &unk_1004EA8E0);
  return v0;
}

uint64_t SyncedLyricsManager.__deallocating_deinit()
{

  sub_1001898C4(v0 + 64);

  sub_10003CC4C(*(v0 + 96), *(v0 + 104));
  sub_100007214(v0 + 112, &qword_100615100, &unk_1004EA8E0);

  return swift_deallocClassInstance();
}

double sub_1004917E4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 80);

  return result;
}

uint64_t sub_100491868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000133B0(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_100013414(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100491900(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003ABC(&qword_100615100, &unk_1004EA8E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

CFIndex sub_1004919DC(uint64_t a1, uint64_t a2)
{
  result = CFRange.init(_:)(*&a1).location;
  qword_100619BF0 = v3;
  return result;
}

void sub_100491A04()
{
  v1 = v0;
  sub_100003ABC(&qword_100616910, &qword_1004EC4C0);
  __chkstk_darwin();
  v3 = &v26 - v2;
  sub_100003ABC(&qword_100616918, &qword_1004EC4C8);
  __chkstk_darwin();
  v5 = &v26 - v4;
  v6 = sub_1004B67C4();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10049169C(v1 + v10, &v27);
  if (!v28)
  {
    sub_100492DF8(&v27);
    [*(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label) setText:0];
    return;
  }

  sub_100013414(&v27, v29);
  v12 = v30;
  v11 = v31;
  sub_100009178(v29, v30);
  v13 = (*(*(v11 + 8) + 8))(v12);
  v14 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label);
  if (v13 >= 60.0)
  {
    v23 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter);
    v25 = v30;
    v24 = v31;
    sub_100009178(v29, v30);
    (*(*(v24 + 8) + 8))(v25);
    v22 = [v23 stringFromTimeInterval:?];
    goto LABEL_9;
  }

  v15 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter);
  v16 = sub_1004B6F34();
  (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
  v17 = sub_1004B6FC4();
  (*(*(v17 - 8) + 56))(v3, 1, 1, v17);
  v19 = v30;
  v18 = v31;
  sub_100009178(v29, v30);
  v20 = (*(*(v18 + 8) + 8))(v19);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_1004B67B4();
  isa = sub_1004B6774().super.isa;
  (*(v7 + 8))(v9, v6);
  v22 = [v15 stringFromDateComponents:isa];

LABEL_9:
  [v14 setText:v22];

  sub_100004C6C(v29);
}

char *sub_100491E60(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *&v5[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v12 = [objc_allocWithZone(UILabel) init];
  v13 = UIView.forAutolayout.getter();

  *&v5[v11] = v13;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v15 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v15 setZeroFormattingBehavior:0x10000];
  [v15 setAllowedUnits:192];
  *&v5[v14] = v15;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  v17 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  *&v5[v16] = v17;
  v18 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line];
  *(v18 + 4) = 0;
  *v18 = 0u;
  *(v18 + 1) = 0u;
  v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 1;
  v73.receiver = v5;
  v73.super_class = type metadata accessor for SyncedLyricsTimestampLabel(v17, v19);
  v20 = objc_msgSendSuper2(&v73, "initWithFrame:", a1, a2, a3, a4);
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  v22 = *&v20[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  v23 = v20;
  [v23 addSubview:v22];
  v24 = sub_1004BBE24();
  v25 = [objc_opt_self() systemImageNamed:v24];

  if (v25)
  {
    v26 = UIFontTextStyleCaption2;
    v27 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleCaption2];
    v28 = [objc_opt_self() configurationWithFont:v27 scale:1];

    v29 = [v25 imageWithSymbolConfiguration:v28];
  }

  else
  {
    v29 = 0;
    v26 = UIFontTextStyleCaption2;
  }

  v72 = v29;
  v30 = [objc_allocWithZone(UIImageView) initWithImage:v29];
  v31 = UIView.forAutolayout.getter();

  v32 = *&v20[v21];
  v33 = v31;
  [v32 addSubview:v33];
  v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v35 = *&v23[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [v36 preferredFontForTextStyle:v26];
  [v37 setFont:v38];

  [*&v23[v34] _setTextColorFollowsTintColor:1];
  [*&v20[v21] addSubview:*&v23[v34]];
  v39 = [v23 layer];

  v40 = objc_opt_self();
  v41 = [v40 blackColor];
  v42 = [v41 CGColor];

  [v39 setShadowColor:v42];
  v43 = [v23 layer];

  if (qword_100614EC0 != -1)
  {
    swift_once();
  }

  HIDWORD(v44) = HIDWORD(qword_100619BF0);
  *&v44 = *&qword_100619BF0;
  [v43 setShadowOpacity:v44];

  v45 = [v23 layer];
  [v45 setShadowOffset:{2.0, 8.0}];

  v46 = [v40 blackColor];
  [v23 setTintColor:v46];

  sub_1004928CC();
  v47 = objc_opt_self();
  sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1004C5210;
  v49 = [v33 centerYAnchor];

  v50 = [v23 centerYAnchor];
  v51 = [v49 constraintEqualToAnchor:v50];

  *(v48 + 32) = v51;
  v52 = [v33 leadingAnchor];

  v53 = [v23 leadingAnchor];
  if (qword_100614EA8 != -1)
  {
    swift_once();
  }

  v54 = *&qword_100619BD8;
  v55 = [v52 constraintEqualToAnchor:v53 constant:*&qword_100619BD8];

  *(v48 + 40) = v55;
  v56 = [*&v23[v34] topAnchor];
  v57 = [v23 topAnchor];

  if (qword_100614EB0 != -1)
  {
    swift_once();
  }

  v58 = *&qword_100619BE0;
  v59 = [v56 constraintEqualToAnchor:v57 constant:*&qword_100619BE0];

  *(v48 + 48) = v59;
  v60 = [*&v23[v34] bottomAnchor];
  v61 = [v23 bottomAnchor];

  v62 = [v60 constraintEqualToAnchor:v61 constant:-v58];
  *(v48 + 56) = v62;
  v63 = [*&v23[v34] leadingAnchor];
  v64 = [v33 trailingAnchor];

  if (qword_100614EB8 != -1)
  {
    swift_once();
  }

  v65 = [v63 constraintEqualToAnchor:v64 constant:*&qword_100619BE8];

  *(v48 + 64) = v65;
  v66 = [*&v23[v34] trailingAnchor];
  v67 = [v23 trailingAnchor];

  v68 = [v66 constraintEqualToAnchor:v67 constant:-v54];
  *(v48 + 72) = v68;
  sub_100492DAC(0, v69);
  isa = sub_1004BC284().super.isa;

  [v47 activateConstraints:isa];

  return v23;
}

void sub_1004926FC(uint64_t a1, uint64_t a2)
{
  v12.receiver = v2;
  v12.super_class = type metadata accessor for SyncedLyricsTimestampLabel(a1, a2);
  objc_msgSendSuper2(&v12, "layoutSubviews");
  [v2 frame];
  v3 = CGRectGetHeight(v13) * 0.5;
  v4 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
  [v4 _setContinuousCornerRadius:v3];
  [v2 bounds];
  [v4 setFrame:?];
  v5 = [v2 layer];
  [v2 bounds];
  v10 = [objc_opt_self() bezierPathWithRoundedRect:v6 cornerRadius:{v7, v8, v9, v3}];
  v11 = [v10 CGPath];

  [v5 setShadowPath:v11];
}

void sub_1004928CC()
{
  v1 = v0;
  sub_1004B8414();
  __chkstk_darwin();
  v2 = sub_1004B8434();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v15[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    v6 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView];
    v7 = v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
    v8 = objc_opt_self();
    v9 = &selRef_whiteColor;
    if (!v7)
    {
      v9 = &selRef_grayColor;
    }

    v10 = [v8 *v9];
    [v6 setBackgroundColor:v10];
  }

  else
  {
    if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
    {
      sub_1004B8404();
      sub_1004B8444();
      v11 = [objc_opt_self() whiteColor];
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_1000133B0(v15);
      sub_1004B8424();

      (*(v3 + 8))(v5, v2);
    }

    else
    {
      sub_1004B8404();
      v16 = v2;
      v17 = &protocol witness table for _Glass;
      sub_1000133B0(v15);
      sub_1004B8444();
    }

    sub_1004BCF04();
  }

  v12 = [v1 layer];
  v13 = 0.0;
  if (v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] == 1)
  {
    if (qword_100614EC0 != -1)
    {
      swift_once();
    }

    HIDWORD(v13) = HIDWORD(qword_100619BF0);
    *&v13 = *&qword_100619BF0;
  }

  [v12 setShadowOpacity:v13];
}

id sub_100492B8C(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SyncedLyricsTimestampLabel(a1, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100492C60()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_containerView;
  *(v1 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_label;
  v4 = [objc_allocWithZone(UILabel) init];
  v5 = UIView.forAutolayout.getter();

  *(v1 + v3) = v5;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_secondsFormatter;
  v7 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v7 setZeroFormattingBehavior:0x10000];
  [v7 setAllowedUnits:192];
  *(v1 + v6) = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_minutesFormatter;
  *(v1 + v8) = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v9 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  *(v9 + 32) = 0;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState) = 1;
  sub_1004BD624();
  __break(1u);
}

unint64_t sub_100492DAC(uint64_t a1, uint64_t a2)
{
  result = qword_100616718;
  if (!qword_100616718)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100616718);
  }

  return result;
}

uint64_t sub_100492DF8(uint64_t a1)
{
  v2 = sub_100003ABC(&qword_100615100, &unk_1004EA8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id SyncedLyricsViewController.Specs.lineChangeSpringTimingParameters.getter()
{
  v1 = v0[83];
  v2 = v0[84];
  v3 = v0[85];
  v4 = objc_allocWithZone(UISpringTimingParameters);

  return [v4 initWithMass:v1 stiffness:v2 damping:v3 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.liftSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}];
}

id static SyncedLyricsViewController.Specs.backgroundVocalsSpringTimingParameters(showing:)(char a1)
{
  if (a1)
  {
    v1 = objc_allocWithZone(UISpringTimingParameters);

    return [v1 initWithMass:1.0 stiffness:30.0 damping:9.0 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
    return UISpringTimingParameters.init(dampingRatio:response:)(1.0, 0.2);
  }
}

id static SyncedLyricsViewController.Specs.opacityAnimator()()
{
  v0 = objc_allocWithZone(UIViewPropertyAnimator);

  return [v0 initWithDuration:0 controlPoint1:0.12 controlPoint2:0.33 animations:{0.0, 0.2, 0.1}];
}

void static SyncedLyricsViewController.Specs.animateWithHighlightAnimationCurves(highlighted:fadeAnimations:transformAnimations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  v10 = objc_allocWithZone(UISpringTimingParameters);
  if (v9)
  {
    v11 = 24.0;
  }

  else
  {
    v11 = 50.0;
  }

  v12 = 322.0;
  if ((v9 & 1) == 0)
  {
    v12 = 300.0;
  }

  v13 = 2.0;
  if (v9)
  {
    v13 = 1.0;
    v14 = 0.0;
  }

  else
  {
    v14 = 0.1;
  }

  if (v9)
  {
    v15 = 0.2;
  }

  else
  {
    v15 = 0.3;
  }

  v16 = [v10 initWithMass:v13 stiffness:v12 damping:v11 initialVelocity:{0.0, 0.0}];
  v18 = sub_1004969C0(v9, v17);
  v19 = objc_opt_self();
  v34 = a2;
  v35 = a3;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000D6C80;
  v33 = &unk_1005D5018;
  v20 = _Block_copy(&v30);
  swift_unknownObjectRetain();

  [v19 _animateWithDuration:0 delay:v18 options:v20 factory:0 animations:v15 completion:v14];
  _Block_release(v20);
  swift_unknownObjectRelease();
  [v16 settlingDuration];
  v22 = v21;
  [v16 mass];
  v24 = v23;
  [v16 stiffness];
  v26 = v25;
  [v16 damping];
  v28 = v27;
  v34 = a4;
  v35 = a5;
  v30 = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000D6C80;
  v33 = &unk_1005D5040;
  v29 = _Block_copy(&v30);

  [v19 _animateUsingSpringWithDuration:0 delay:v29 options:0 mass:v22 stiffness:v14 damping:v24 initialVelocity:v26 animations:v28 completion:0.0];

  swift_unknownObjectRelease();
  _Block_release(v29);
}

BOOL static SyncedLyricsViewController.Specs.SelectedLinePosition.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    if ((*(a2 + 32) & 0x80000000) == 0)
    {
      return *a2 == *a1;
    }

    return 0;
  }

  v4 = *(a2 + 32);
  if ((v4 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v4 & 1) != 0;
  }

  else
  {
    return (v4 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

BOOL sub_1004933C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 32);
  if ((v2 & 0x80000000) == 0)
  {
    return (v3 & 0x80000000) == 0 && *a1 == *a2;
  }

  if ((v3 & 0x80000000) == 0)
  {
    return 0;
  }

  if (v2)
  {
    return (v3 & 1) != 0;
  }

  else
  {
    return (v3 & 1) == 0 && CGRectEqualToRect(*a1, *a2);
  }
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  result = *(v1 + 16);
  v4 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 SyncedLyricsViewController.Specs.selectedLinePosition.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 48) = *(a1 + 32);
  return result;
}

uint64_t SyncedLyricsViewController.Specs.lineTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.songwritersTextAlignment.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  result = *(v1 + 160);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.backgroundVocalsDeselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v2;
  result = *(a1 + 32);
  *(v1 + 160) = result;
  return result;
}

uint64_t SyncedLyricsViewController.Specs.fontLeading.setter(uint64_t result, char a2)
{
  *(v2 + 208) = result;
  *(v2 + 216) = a2 & 1;
  return result;
}

void *SyncedLyricsViewController.Specs.translationTextColor.getter()
{
  v1 = *(v0 + 288);
  v2 = v1;
  return v1;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 416);
  *a1 = *(v1 + 400);
  *(a1 + 16) = v2;
  result = *(v1 + 432);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.deselectedTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 400) = *a1;
  *(v1 + 416) = v2;
  result = *(a1 + 32);
  *(v1 + 432) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 528);
  *a1 = *(v1 + 512);
  *(a1 + 16) = v2;
  result = *(v1 + 544);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsViewController.Specs.touchDownTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 512) = *a1;
  *(v1 + 528) = v2;
  result = *(a1 + 32);
  *(v1 + 544) = result;
  return result;
}

void *SyncedLyricsViewController.Specs.with(_:)@<X0>(void (*a1)(_BYTE *)@<X0>, void *a2@<X8>)
{
  memcpy(__dst, v2, sizeof(__dst));
  sub_10046E570(v2, &v6);
  a1(__dst);
  return memcpy(a2, __dst, 0x2B0uLL);
}

void *SyncedLyricsViewController.Specs.default.unsafeMutableAddressor()
{
  if (qword_100614EC8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.default;
}

void sub_100494338(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0x4034000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1004EA350;
  *(a1 + 184) = 0x3FE0000000000000;
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 200) = v4;
  v5 = [v3 systemFontOfSize:32.0 weight:UIFontWeightBold];

  *(a1 + 224) = v5;
  sub_100009130(0, &qword_100616F10, UIFont_ptr);
  v6 = sub_1004BCE34();

  *(a1 + 264) = v6;
  v7 = sub_1004BCE34();

  *(a1 + 272) = v7;
  v8 = sub_1004BCE34();

  *(a1 + 280) = v8;
  v9 = sub_1004BCE34();

  *(a1 + 312) = v9;
  v10 = sub_1004BCE34();

  *(a1 + 320) = v10;
  *(a1 + 208) = 0x404A000000000000;
  *(a1 + 216) = 0;
  v11 = [v3 preferredFontForTextStyle:UIFontTextStyleBody];

  *(a1 + 344) = v11;
}

void *SyncedLyricsViewController.Specs.iPad.unsafeMutableAddressor()
{
  if (qword_100614ED0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.iPad;
}

void sub_1004945E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0x4042000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = xmmword_1004EA350;
  *(a1 + 184) = 0x3FE0000000000000;
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:56.0 weight:UIFontWeightBold];

  *(a1 + 200) = v4;
  v5 = [v3 systemFontOfSize:34.0 weight:UIFontWeightBold];

  *(a1 + 224) = v5;
  v6 = [v3 systemFontOfSize:26.0 weight:UIFontWeightBold];

  *(a1 + 264) = v6;
  v7 = [v3 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 272) = v7;
  sub_100009130(0, &qword_100616F10, UIFont_ptr);
  v8 = sub_1004BCE34();

  *(a1 + 280) = v8;
  v9 = [v3 systemFontOfSize:33.0 weight:UIFontWeightBold];

  *(a1 + 312) = v9;
  v10 = sub_1004BCE34();

  *(a1 + 320) = v10;
  *(a1 + 656) = 0;
  *(a1 + 208) = 0x404C000000000000;
  *(a1 + 216) = 0;
  v11 = objc_opt_self();
  v12 = [v11 whiteColor];
  v13 = [v12 colorWithAlphaComponent:0.175];

  *(a1 + 496) = v13;
  v14 = [v11 whiteColor];

  *(a1 + 488) = v14;
  v15 = [v11 whiteColor];
  v16 = [v15 colorWithAlphaComponent:0.35];

  v17 = [v11 labelColor];
  v18 = [v17 colorWithAlphaComponent:0.55];

  v19 = objc_allocWithZone(UIColor);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v16;
  v26[4] = sub_100496DB0;
  v26[5] = v20;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 1107296256;
  v26[2] = sub_100399BF8;
  v26[3] = &unk_1005D53B0;
  v21 = _Block_copy(v26);
  v22 = v18;
  v23 = v16;

  v24 = [v19 initWithDynamicProvider:v21];

  _Block_release(v21);
  *(a1 + 360) = v24;
  v25 = [v3 systemFontOfSize:20.0];

  *(a1 + 344) = v25;
}

void *SyncedLyricsViewController.Specs.vision.unsafeMutableAddressor()
{
  if (qword_100614ED8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.vision;
}

double sub_100494A98(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:76.0 weight:UIFontWeightBold];

  *(a1 + 200) = v4;
  *(a1 + 112) = 0x4059000000000000;
  *(a1 + 624) = 0x4008000000000000;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  v5 = [v3 systemFontOfSize:48.0 weight:UIFontWeightBold];

  *(a1 + 224) = v5;
  v6 = [v3 systemFontOfSize:35.0 weight:UIFontWeightBold];

  *(a1 + 264) = v6;
  v7 = [v3 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 272) = v7;
  v8 = [v3 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 280) = v8;
  v9 = [v3 systemFontOfSize:44.0 weight:UIFontWeightBold];

  *(a1 + 312) = v9;
  v10 = [v3 systemFontOfSize:21.0 weight:UIFontWeightBold];

  *(a1 + 320) = v10;
  objc_storeStrong((a1 + 392), *(a1 + 368));
  v11 = [v3 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 232) = v11;
  v12 = [v3 preferredFontForTextStyle:UIFontTextStyleHeadline];

  *(a1 + 240) = v12;
  *(a1 + 608) = xmmword_1004EA360;
  *(a1 + 656) = 16842752;
  *(a1 + 664) = 0x3FF0000000000000;
  result = 68.0;
  *(a1 + 672) = xmmword_1004EA370;
  return result;
}

void *SyncedLyricsViewController.Specs.tv.unsafeMutableAddressor()
{
  if (qword_100614EE0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.tv;
}

void sub_100494DB8(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = -127;
  *(a1 + 192) = 1;
  v3 = objc_opt_self();
  v4 = [v3 systemFontOfSize:28.0 weight:UIFontWeightBold];

  *(a1 + 200) = v4;
  v5 = [v3 systemFontOfSize:24.0 weight:UIFontWeightBold];

  *(a1 + 224) = v5;
}

void *SyncedLyricsViewController.Specs.alternative.unsafeMutableAddressor()
{
  if (qword_100614EE8 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.alternative;
}

void sub_100494F40(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  __asm { FMOV            V0.2D, #3.0 }

  *(a1 + 112) = _Q0;
  *(a1 + 128) = 0x3FF0000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x3FF0000000000000;
  sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  v7 = sub_1004BCE34();

  *(a1 + 200) = v7;
  v8 = sub_1004BCE34();

  *(a1 + 224) = v8;
  v9 = sub_1004BCE34();

  *(a1 + 232) = v9;
  v10 = sub_1004BCE34();

  *(a1 + 240) = v10;
  v11 = sub_1004BCE34();

  *(a1 + 264) = v11;
  v12 = sub_1004BCE34();

  *(a1 + 272) = v12;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0x4010000000000000;
  v13 = objc_opt_self();
  v14 = [v13 labelColor];

  *(a1 + 352) = v14;
  v15 = [v13 labelColor];

  *(a1 + 360) = v15;
  v16 = [v13 labelColor];

  *(a1 + 368) = v16;
  v17 = [v13 labelColor];

  *(a1 + 376) = v17;
  v18 = [v13 labelColor];

  *(a1 + 384) = v18;
  v19 = [v13 labelColor];

  *(a1 + 392) = v19;
  v20 = [v13 secondaryLabelColor];

  *(a1 + 288) = v20;
  *(a1 + 400) = 0x3FF0000000000000;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 424) = 0x3FF0000000000000;
  *(a1 + 657) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
}

void *SyncedLyricsViewController.Specs.static.unsafeMutableAddressor()
{
  if (qword_100614EF0 != -1)
  {
    swift_once();
  }

  return &static SyncedLyricsViewController.Specs.static;
}

uint64_t sub_100495228@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v5 = a4;
  if (*a1 != -1)
  {
    swift_once();
    v5 = a4;
  }

  return sub_10046E570(a2, v5);
}

UISpringTimingParameters __swiftcall SyncedLyricsViewController.Specs.syllableBySyllableLineChangeSpringTimingParameters(gap:)(Swift::Double_optional gap)
{
  if (v1)
  {
    v3 = v2[83];
    v4 = v2[84];
    v5 = v2[85];
    v6 = objc_allocWithZone(UISpringTimingParameters);

    return [v6 initWithMass:v3 stiffness:v4 damping:v5 initialVelocity:{0.0, 0.0}];
  }

  else
  {
    v8 = 0.75;
    if (*&gap.is_nil <= 0.75)
    {
      v8 = *&gap.is_nil;
    }

    v9 = (v8 + -0.2) / 0.55;
    v10 = 0.0;
    if (*&gap.is_nil >= 0.2)
    {
      v10 = v9;
    }

    v11 = (1.0 - v10) * 0.12 + 0.78;
    v12 = v10 * 0.27 + 0.48;
    sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
    return UISpringTimingParameters.init(dampingRatio:response:)(v11, v12);
  }
}

id static SyncedLyricsViewController.Specs.tapSpringTimingParameters()()
{
  v0 = objc_allocWithZone(UISpringTimingParameters);

  return [v0 initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
}

id sub_1004954C0(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = _s5SpecsV27CustomCurveAnimationFactoryCMa(0, a2);
  return objc_msgSendSuper2(&v4, "dealloc");
}

BOOL sub_1004954FC(void *__src, const void *a2)
{
  memcpy(v4, __src, sizeof(v4));
  memcpy(__dst, a2, sizeof(__dst));
  return _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(v4, __dst);
}

id sub_100495554(void *a1, void *a2, void *a3)
{
  v4 = [a1 accessibilityContrast];
  if (v4 == -1)
  {
    v6 = a3;
  }

  else
  {
    v5 = v4 == 1;
    v6 = a3;
    if (v5)
    {
      v6 = a2;
    }
  }

  return v6;
}

BOOL _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[48];
  v3 = a2[48];
  if (v2 < 0)
  {
    if ((v3 & 0x80000000) == 0)
    {
      return 0;
    }

    if (v2)
    {
      if ((v3 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v3)
      {
        return 0;
      }

      v6 = a1;
      v7 = a2;
      v8 = CGRectEqualToRect(*(a1 + 16), *(a2 + 16));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (!v9)
      {
        return 0;
      }
    }
  }

  else if (v3 < 0 || *(a1 + 2) != *(a2 + 2))
  {
    return 0;
  }

  if (*(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  v4 = a2[88];
  if (a1[88])
  {
    if (!a2[88])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v10 = a2[104];
  if (a1[104])
  {
    if (!a2[104])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (*(a1 + 14) != *(a2 + 14))
  {
    return 0;
  }

  if (*(a1 + 15) != *(a2 + 15))
  {
    return 0;
  }

  v11 = a1;
  v12 = a2;
  if ((sub_1004BCA84() & 1) == 0)
  {
    return 0;
  }

  if (*(v11 + 22) != *(v12 + 22))
  {
    return 0;
  }

  if (*(v11 + 23) != *(v12 + 23))
  {
    return 0;
  }

  if (*(v11 + 24) != *(v12 + 24))
  {
    return 0;
  }

  sub_100009130(0, &qword_100616BF0, NSObject_ptr);
  if ((sub_1004BCFA4() & 1) == 0)
  {
    return 0;
  }

  v13 = v12[216];
  if (v11[216])
  {
    if (!v12[216])
    {
      return 0;
    }
  }

  else
  {
    if (*(v11 + 26) != *(v12 + 26))
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || *(v11 + 31) != *(v12 + 31) || *(v11 + 32) != *(v12 + 32) || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0 || (sub_1004BCFA4() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v11 + 36);
  v15 = *(v12 + 36);
  if (!v14)
  {
    if (!v15)
    {
      return *(v11 + 37) == *(v12 + 37) && *(v11 + 38) == *(v12 + 38) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && *(v11 + 41) == *(v12 + 41) && *(v11 + 42) == *(v12 + 42) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && *(v11 + 56) == *(v12 + 56) && (sub_1004BCFA4() & 1) != 0 && *(v11 + 58) == *(v12 + 58) && *(v11 + 59) == *(v12 + 59) && *(v11 + 60) == *(v12 + 60) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && *(v11 + 63) == *(v12 + 63) && (sub_1004BCA84() & 1) != 0 && *(v11 + 70) == *(v12 + 70) && (sub_1004BCFA4() & 1) != 0 && *(v11 + 72) == *(v12 + 72) && *(v11 + 73) == *(v12 + 73) && *(v11 + 74) == *(v12 + 74) && *(v11 + 75) == *(v12 + 75) && *(v11 + 76) == *(v12 + 76) && *(v11 + 77) == *(v12 + 77) && *(v11 + 78) == *(v12 + 78) && *(v11 + 79) == *(v12 + 79) && *(v11 + 80) == *(v12 + 80) && *(v11 + 81) == *(v12 + 81) && ((v11[656] ^ v12[656]) & 1) == 0 && ((v11[657] ^ v12[657]) & 1) == 0 && ((v11[658] ^ v12[658]) & 1) == 0 && ((v11[659] ^ v12[659]) & 1) == 0 && *(v11 + 83) == *(v12 + 83) && *(v11 + 84) == *(v12 + 84) && *(v11 + 85) == *(v12 + 85);
    }

    return 0;
  }

  if (!v15)
  {
    return 0;
  }

  sub_100009130(0, &unk_1006169D0, UIColor_ptr);
  v16 = v15;
  v17 = v14;
  v18 = sub_1004BCFA4();

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  return *(v11 + 37) == *(v12 + 37) && *(v11 + 38) == *(v12 + 38) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && *(v11 + 41) == *(v12 + 41) && *(v11 + 42) == *(v12 + 42) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCA84() & 1) != 0 && *(v11 + 56) == *(v12 + 56) && (sub_1004BCFA4() & 1) != 0 && *(v11 + 58) == *(v12 + 58) && *(v11 + 59) == *(v12 + 59) && *(v11 + 60) == *(v12 + 60) && (sub_1004BCFA4() & 1) != 0 && (sub_1004BCFA4() & 1) != 0 && *(v11 + 63) == *(v12 + 63) && (sub_1004BCA84() & 1) != 0 && *(v11 + 70) == *(v12 + 70) && (sub_1004BCFA4() & 1) != 0 && *(v11 + 72) == *(v12 + 72) && *(v11 + 73) == *(v12 + 73) && *(v11 + 74) == *(v12 + 74) && *(v11 + 75) == *(v12 + 75) && *(v11 + 76) == *(v12 + 76) && *(v11 + 77) == *(v12 + 77) && *(v11 + 78) == *(v12 + 78) && *(v11 + 79) == *(v12 + 79) && *(v11 + 80) == *(v12 + 80) && *(v11 + 81) == *(v12 + 81) && ((v11[656] ^ v12[656]) & 1) == 0 && ((v11[657] ^ v12[657]) & 1) == 0 && ((v11[658] ^ v12[658]) & 1) == 0 && ((v11[659] ^ v12[659]) & 1) == 0 && *(v11 + 83) == *(v12 + 83) && *(v11 + 84) == *(v12 + 84) && *(v11 + 85) == *(v12 + 85);
}

void *sub_100495C14@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __src[0] = 0;
  *&__src[8] = 0x404E000000000000;
  *&__src[16] = 0x4028000000000000uLL;
  memset(&__src[32], 0, 17);
  *&__src[56] = xmmword_1004EA380;
  *&__src[72] = 0x4043800000000000;
  *&__src[80] = 0;
  __src[88] = 1;
  *&__src[96] = 0;
  __src[104] = 1;
  *&__src[112] = xmmword_1004EA390;
  CGAffineTransformMakeScale(&aBlock, 0.9, 0.9);
  *&__src[128] = aBlock;
  *&__src[176] = xmmword_1004EA3A0;
  *&__src[192] = 2;
  sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *&__src[200] = sub_1004BCE34();
  *&__src[208] = 0;
  __src[216] = 1;
  *&__src[224] = sub_1004BCE44();
  v3 = objc_opt_self();
  *&__src[232] = [v3 systemFontOfSize:22.0 weight:UIFontWeightBold];
  *&__src[240] = [v3 systemFontOfSize:22.0 weight:UIFontWeightSemibold];
  *&__src[248] = xmmword_1004EA3B0;
  *&__src[264] = sub_1004BCE34();
  *&__src[272] = sub_1004BCE34();
  *&__src[280] = [v3 systemFontOfSize:14.0 weight:UIFontWeightBold];
  *&__src[288] = 0;
  *&__src[296] = Int.seconds.getter(7);
  *&__src[304] = Int.seconds.getter(4);
  *&__src[312] = sub_1004BCE34();
  *&__src[320] = sub_1004BCE34();
  *&__src[328] = Int.seconds.getter(5);
  *&__src[336] = *&__src[328];
  *&__src[344] = [v3 preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v4 labelColor];
  v7 = objc_allocWithZone(UIColor);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v8;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5400;
  v9 = _Block_copy(&aBlock);
  v10 = v6;
  v11 = v5;

  v12 = [v7 initWithDynamicProvider:v9];

  _Block_release(v9);
  *&__src[352] = v12;
  v13 = [v4 whiteColor];
  v14 = [v13 colorWithAlphaComponent:0.35];

  v15 = [v4 labelColor];
  v16 = [v15 colorWithAlphaComponent:0.85];

  v17 = objc_allocWithZone(UIColor);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v14;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v18;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5450;
  v19 = _Block_copy(&aBlock);
  v20 = v16;
  v21 = v14;

  v22 = [v17 initWithDynamicProvider:v19];

  _Block_release(v19);
  *&__src[360] = v22;
  v23 = [v4 whiteColor];
  v24 = [v23 colorWithAlphaComponent:0.175];

  v25 = [v4 labelColor];
  v26 = [v25 colorWithAlphaComponent:0.4];

  v27 = objc_allocWithZone(UIColor);
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = v24;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v28;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D54A0;
  v29 = _Block_copy(&aBlock);
  v30 = v26;
  v31 = v24;

  v32 = [v27 initWithDynamicProvider:v29];

  _Block_release(v29);
  *&__src[368] = v32;
  v33 = [v4 whiteColor];
  v34 = [v33 colorWithAlphaComponent:0.35];

  v35 = [v4 labelColor];
  v36 = [v35 colorWithAlphaComponent:0.85];

  v37 = objc_allocWithZone(UIColor);
  v38 = swift_allocObject();
  *(v38 + 16) = v36;
  *(v38 + 24) = v34;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v38;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D54F0;
  v39 = _Block_copy(&aBlock);
  v40 = v36;
  v41 = v34;

  v42 = [v37 initWithDynamicProvider:v39];

  _Block_release(v39);
  *&__src[376] = v42;
  v43 = [v4 whiteColor];
  v44 = [v43 colorWithAlphaComponent:0.175];

  v45 = [v4 labelColor];
  v46 = [v45 colorWithAlphaComponent:0.65];

  v47 = objc_allocWithZone(UIColor);
  v48 = swift_allocObject();
  *(v48 + 16) = v46;
  *(v48 + 24) = v44;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v48;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5540;
  v49 = _Block_copy(&aBlock);
  v50 = v46;
  v51 = v44;

  v52 = [v47 initWithDynamicProvider:v49];

  _Block_release(v49);
  *&__src[384] = v52;
  v53 = [v4 whiteColor];
  v54 = [v53 colorWithAlphaComponent:0.4];

  v55 = [v4 labelColor];
  v56 = [v55 colorWithAlphaComponent:0.4];

  v57 = objc_allocWithZone(UIColor);
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = v54;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v58;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5590;
  v59 = _Block_copy(&aBlock);
  v60 = v56;
  v61 = v54;

  v62 = [v57 initWithDynamicProvider:v59];

  _Block_release(v59);
  *&__src[392] = v62;
  CGAffineTransformMakeScale(&aBlock, 0.98, 0.98);
  *&__src[400] = aBlock;
  *&__src[448] = 0x3FB999999999999ALL;
  *&__src[456] = [v4 whiteColor];
  *&__src[464] = xmmword_1004EA3C0;
  *&__src[480] = 0x3FD999999999999ALL;
  v63 = [v4 whiteColor];
  v64 = [v4 tintColor];
  v65 = objc_allocWithZone(UIColor);
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  *(v66 + 24) = v63;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v66;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D55E0;
  v67 = _Block_copy(&aBlock);
  v68 = v64;
  v69 = v63;

  v70 = [v65 initWithDynamicProvider:v67];

  _Block_release(v67);
  *&__src[488] = v70;
  v71 = [v4 whiteColor];
  v72 = [v71 colorWithAlphaComponent:0.175];

  v73 = [v4 tintColor];
  v74 = [v73 colorWithAlphaComponent:0.175];

  v75 = objc_allocWithZone(UIColor);
  v76 = swift_allocObject();
  *(v76 + 16) = v74;
  *(v76 + 24) = v72;
  *&aBlock.tx = sub_100496E70;
  *&aBlock.ty = v76;
  *&aBlock.a = _NSConcreteStackBlock;
  *&aBlock.b = 1107296256;
  *&aBlock.c = sub_100399BF8;
  *&aBlock.d = &unk_1005D5630;
  v77 = _Block_copy(&aBlock);
  v78 = v74;
  v79 = v72;

  v80 = [v75 initWithDynamicProvider:v77];

  _Block_release(v77);
  *&__src[496] = v80;
  *&__src[504] = 0x403E000000000000;
  CGAffineTransformMakeScale(&aBlock, 0.95, 0.95);
  *&__src[512] = aBlock;
  *&__src[560] = 0x3FEB333333333333;
  *&__src[568] = [objc_allocWithZone(UIColor) initWithWhite:1.0 alpha:0.08];
  __asm { FMOV            V0.2D, #16.0 }

  *&__src[576] = _Q0;
  *&__src[592] = 3;
  *&__src[600] = 0x4044000000000000;
  *&__src[608] = xmmword_1004EA3D0;
  *&__src[624] = xmmword_1004EA3E0;
  *&__src[640] = xmmword_1004EA3F0;
  *&__src[656] = 257;
  v86 = Int.seconds.getter(1);
  v87 = Int.seconds.getter(100);
  v88 = Int.seconds.getter(18);
  *&__src[664] = v86;
  *&__src[672] = v87;
  *&__src[680] = v88;
  if (a1)
  {

    a1(__src);
    sub_10003CC4C(a1, a2);
    sub_10003CC4C(a1, a2);
  }

  return memcpy(a3, __src, 0x2B0uLL);
}

id sub_1004969C0(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 1.0;
    v3 = 0.0;
    v4 = 0.55;
    v5 = 0;
  }

  else
  {
    v3 = 0.25;
    v5 = 0x3FB999999999999ALL;
    v2 = 0.1;
    v4 = 0.25;
  }

  v6 = _s5SpecsV27CustomCurveAnimationFactoryCMa(0, a2);
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint1];
  *v8 = v3;
  *(v8 + 1) = v5;
  v9 = &v7[OBJC_IVAR____TtCVC7LyricsX26SyncedLyricsViewController5SpecsP33_721F05E5229E32246B486C601D4C7EC827CustomCurveAnimationFactory_controlPoint2];
  *v9 = v4;
  v9[1] = v2;
  v11.receiver = v7;
  v11.super_class = v6;
  return objc_msgSendSuper2(&v11, "init");
}

uint64_t sub_100496A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100496A84()
{
  result = qword_100616928;
  if (!qword_100616928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616928);
  }

  return result;
}

uint64_t sub_100496AE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 200);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100496B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 688) = 1;
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
      *(result + 200) = (a2 - 1);
      return result;
    }

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s5SpecsV20SelectedLinePositionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 33))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 32) & 0x7E | (*(a1 + 32) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s5SpecsV20SelectedLinePositionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

__n128 _s5SpecsV22SpringTimingParametersVwCP(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100496D70()
{

  return swift_deallocObject();
}

id sub_100496DB4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 accessibilityContrast];
  if (v4 == 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == -1)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

uint64_t sub_100496E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100003ABC(&qword_100616B00, &qword_1004EBF30);
  __chkstk_darwin();
  v10 = v24 - v9;
  sub_10000F778(a3, v24 - v9, &qword_100616B00, &qword_1004EBF30);
  v11 = sub_1004BC4B4();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100007214(v10, &qword_100616B00, &qword_1004EBF30);
  }

  else
  {
    sub_1004BC4A4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1004BC3E4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1004BBF54() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_100007214(a3, &qword_100616B00, &qword_1004EBF30);

      return v22;
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

  sub_100007214(a3, &qword_100616B00, &qword_1004EBF30);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1004971B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.TextLine(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SyncedLyricsSharingTransitionInfo.initialView.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.initialView.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 20);

  *(v1 + v3) = a1;
}

uint64_t SyncedLyricsSharingTransitionInfo.alignment.setter(uint64_t a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.frame.setter(double a1, double a2, double a3, double a4)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  v10 = (v4 + *(result + 28));
  *v10 = a1;
  v10[1] = a2;
  v10[2] = a3;
  v10[3] = a4;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.isSelected.setter(char a1)
{
  result = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  *(a1 + 32) = result;
  return result;
}

__n128 SyncedLyricsSharingTransitionInfo.transform.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 36);
  v4 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v4;
  result = *(a1 + 32);
  *(v3 + 32) = result;
  return result;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.transitionWillBeginHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 40));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  return v1;
}

void SyncedLyricsSharingTransitionInfo.transitionCompletionHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SyncedLyricsSharingTransitionInfo(0) + 44));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t SyncedLyricsViewController.isPlayingSpatial.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.isPlayingSpatial.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  swift_beginAccess();
  *(v1 + v3) = a1;
  v4 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v4)
  {
    swift_beginAccess();
    *(v4 + 88) = a1 & 1;
  }
}

uint64_t (*SyncedLyricsViewController.isPlayingSpatial.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_100497A08;
}

void sub_100497A08(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v5)
    {
      v6 = *(v4 + v3[4]);
      swift_beginAccess();
      *(v5 + 88) = v6;
    }
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.isFullScreen.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.isFullScreen.setter(char a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SyncedLyricsViewController.bottomTapAreaHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.bottomTapAreaHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double SyncedLyricsViewController.containerHeight.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void SyncedLyricsViewController.containerHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  v4 = swift_beginAccess();
  v5.n128_u64[0] = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v5.n128_f64[0] != a1)
  {
    sub_1004A01CC(v4, v5);
  }
}

void (*SyncedLyricsViewController.containerHeight.modify(uint64_t *a1))(uint64_t a1, __n128 a2)
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
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return sub_100497DA8;
}

void sub_100497DA8(uint64_t a1, __n128 a2)
{
  v2 = *a1;
  a2.n128_u64[0] = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v5 = *(v4 + v3);
  *(v4 + v3) = a2.n128_u64[0];
  if (a2.n128_f64[0] != v5)
  {
    sub_1004A01CC(a1, a2);
  }

  free(v2);
}

void sub_100497E00(unsigned __int8 *a1)
{
  v2 = v1;
  if (![v1 isViewLoaded])
  {
    return;
  }

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  memcpy(__dst, v4, 0x2B0uLL);
  sub_10046E570(__dst, v36);
  v5 = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  v6 = sub_10046E5CC(__dst);
  if (v5)
  {
    return;
  }

  sub_1004A01CC(v6, v7);
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v8] setShowsVerticalScrollIndicator:v4[656]];
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v10 = *&v2[v9];
  if (v10 >> 62)
  {
    v11 = sub_1004BD6A4();
    if (v11)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
LABEL_5:
      v27 = a1;
      v30 = v11 - 1;
      if (v11 < 1)
      {
        __break(1u);
        return;
      }

      v29 = v10 & 0xC000000000000001;

      v12 = 0;
      v28 = v4;
      if ((v10 & 0xC000000000000001) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      for (i = sub_1004BD484(); ; i = *(v10 + 8 * v12 + 32))
      {
        v14 = i;
        memcpy(v34, v4, sizeof(v34));
        v15 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs;
        memcpy(v35, &v14[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], sizeof(v35));
        memmove(&v14[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_specs], v4, 0x2B0uLL);
        sub_10046E570(v34, v33);
        sub_10046E570(v34, v33);
        sub_10046E5CC(v35);
        v17 = sub_100486A6C(v32);
        if (*v16)
        {
          v18 = v16;
          memcpy(v36, &v14[v15], sizeof(v36));
          v31 = v12;
          v19 = v10;
          v21 = *v18;
          v20 = v18[1];
          ObjectType = swift_getObjectType();
          v23 = v2;
          v24 = v20[2];
          sub_10046E570(v36, v33);
          v25 = v21;
          v24(v36, ObjectType, v20);
          v2 = v23;
          v26 = *v18;
          *v18 = v21;
          v18[1] = v20;
          v10 = v19;
          v12 = v31;
        }

        v17(v32, 0);
        sub_10046E5CC(v34);
        sub_1004A302C(v14);

        if (v30 == v12)
        {
          break;
        }

        ++v12;
        v4 = v28;
        if (v29)
        {
          goto LABEL_7;
        }

LABEL_8:
        ;
      }

      a1 = v27;
      v4 = v28;
    }
  }

  if (v4[657] != (a1[657] & 1))
  {
    if (v4[657])
    {
      sub_1004A7128(0);
    }

    else
    {
      sub_1004A84A4();
    }
  }
}

void *SyncedLyricsViewController.specs.getter@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  sub_10046E570(__dst, v5);
  return memcpy(a1, __dst, 0x2B0uLL);
}

uint64_t SyncedLyricsViewController.specs.setter(const void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(__dst, (v1 + v3), sizeof(__dst));
  memcpy(v7, (v1 + v3), sizeof(v7));
  memcpy((v1 + v3), a1, 0x2B0uLL);
  sub_10046E570(__dst, v5);
  sub_10046E570(a1, v5);
  sub_10046E5CC(v7);
  sub_100497E00(__dst);
  sub_10046E5CC(__dst);
  return sub_10046E5CC(a1);
}

void (*SyncedLyricsViewController.specs.modify(uint64_t *a1))(unsigned __int8 **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x15A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 5528) = v1;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  *(v3 + 5536) = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  memcpy(v4, (v1 + v5), 0x2B0uLL);
  memcpy((v4 + 2064), (v1 + v5), 0x2B0uLL);
  sub_10046E570(v4, v4 + 2752);
  return sub_100498300;
}

void sub_100498300(unsigned __int8 **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 692);
    v4 = *(v2 + 691);
    memcpy(v2 + 4128, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 688, (v4 + v3), 0x2B0uLL);
    memcpy(v2 + 3440, (v4 + v3), 0x2B0uLL);
    memcpy((v4 + v3), v2 + 2064, 0x2B0uLL);
    sub_10046E570((v2 + 4128), (v2 + 4816));
    sub_10046E570((v2 + 4128), (v2 + 4816));
    sub_10046E570((v2 + 688), (v2 + 4816));
    sub_10046E5CC((v2 + 3440));
    sub_100497E00(v2 + 688);
    sub_10046E5CC((v2 + 688));
    sub_10046E5CC((v2 + 4128));
    memcpy(v2 + 2752, v2 + 2064, 0x2B0uLL);
    v5 = (v2 + 2752);
  }

  else
  {
    v6 = *(v2 + 692);
    v7 = *(v2 + 691);
    memcpy(v2 + 3440, v2 + 2064, 0x2B0uLL);
    memcpy(v2 + 1376, (v7 + v6), 0x2B0uLL);
    memcpy(v2 + 2752, (v7 + v6), 0x2B0uLL);
    memcpy((v7 + v6), v2 + 2064, 0x2B0uLL);
    sub_10046E570((v2 + 1376), (v2 + 4128));
    sub_10046E570((v2 + 3440), (v2 + 4128));
    sub_10046E5CC((v2 + 2752));
    sub_100497E00(v2 + 1376);
    sub_10046E5CC((v2 + 1376));
    v5 = (v2 + 3440);
  }

  sub_10046E5CC(v5);

  free(v2);
}

double SyncedLyricsViewController.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void (*SyncedLyricsViewController.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1004985D0;
}

void sub_1004985D0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SyncedLyricsViewController.mode.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return *(v0 + v1);
}

double sub_10049869C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  sub_10049870C(v5);

  return result;
}

void sub_10049870C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    if (v4 == a1)
    {
LABEL_3:
      sub_1004A4CDC(0);
      return;
    }
  }

  else if (!a1)
  {
    goto LABEL_3;
  }

  v5 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  *(v1 + v6) = _swiftEmptyArrayStorage;

  if (_swiftEmptyArrayStorage >> 62 && sub_1004BD6A4())
  {
    sub_10044E5F0(_swiftEmptyArrayStorage);
    v7 = v28;
  }

  else
  {
    v7 = &_swiftEmptySetSingleton;
  }

  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  *(v1 + v8) = v7;

  v9 = *(v1 + v3);
  if (v9)
  {
    v10 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
    swift_beginAccess();
    if (*v10)
    {
    }

    else
    {
      v12 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v13 = *(v10 + 648);
      v14 = *(v10 + 184);
      v15 = *(v10 + 192);
      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial;
      swift_beginAccess();
      v17 = *(v1 + v16);
      type metadata accessor for SyncedLyricsManager(0, v18);
      v19 = swift_allocObject();
      *(v19 + 72) = 0;
      swift_unknownObjectWeakInit();
      *(v19 + 80) = _swiftEmptyArrayStorage;
      *(v19 + 96) = 0u;
      *(v19 + 112) = 0u;
      *(v19 + 128) = 0u;
      *(v19 + 144) = 0;
      *(v19 + 16) = v9;
      *(v19 + 24) = sub_1004B4D2C;
      *(v19 + 32) = v12;
      *(v19 + 40) = v13;
      *(v19 + 48) = v14;
      *(v19 + 56) = v15;
      swift_beginAccess();
      *(v19 + 72) = &protocol witness table for SyncedLyricsViewController;
      swift_unknownObjectWeakAssign();
      *(v19 + 88) = v17;
      *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = v19;
      swift_retain_n();
    }

    v20 = v1;
    sub_1004AC910();
    sub_1004A3DE8(v9);
    v21 = v1;
    v22 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    if (v22)
    {
      v23 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v24 = *(v22 + 96);
      v25 = *(v22 + 104);
      *(v22 + 96) = sub_1004B5578;
      *(v22 + 104) = v23;

      swift_retain_n();
      sub_10003CC4C(v24, v25);
      sub_10048FD5C();
      v21 = v20;
    }

    v26 = *(v21 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v26)
    {
      v27 = v26;
      [v27 setPaused:sub_1004A6098()];
    }
  }

  else
  {
    v11 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    if (v11)
    {
      [v11 setPaused:1];
    }

    *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager) = 0;
  }
}

double sub_100498AA8(uint64_t a1, double a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0.0;
  }

  v4 = Strong;
  v5 = sub_1004A6EE0(*&a2, 0);

  [v5 settlingDuration];
  v7 = v6;

  return v7;
}

void sub_100498B80(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616F28, &qword_1004ECA20);
  __chkstk_darwin();
  v5 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v55 - v6;
  v8 = sub_1004B6CD4();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v55 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v2 + v14, &v58, &qword_100616AA8, &qword_1004EC710);
  v15 = &off_100616000;
  if (v59)
  {
    sub_100013414(&v58, v61);
    sub_10001342C(v61, &v58);
    sub_100003ABC(&qword_100616F40, &qword_1004ECA28);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider(0, v16);
    if (swift_dynamicCast())
    {

      goto LABEL_26;
    }

    v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (*(v2 + v20) == 2)
    {
LABEL_26:
      __chkstk_darwin();
      *(&v55 - 2) = v61;
      sub_1004AFE30(sub_1004B5080);
      v47 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v47)
      {
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        swift_beginAccess();
        v49 = *(v47 + 96);
        v50 = *(v47 + 104);
        *(v47 + 96) = sub_1004B5578;
        *(v47 + 104) = v48;

        swift_retain_n();
        sub_10003CC4C(v49, v50);
        sub_10048FD5C();
      }

LABEL_28:
      sub_100004C6C(v61);
      goto LABEL_29;
    }

    sub_10000F778(a1, &v58, &qword_100616AA8, &qword_1004EC710);
    v21 = v59;
    if (v59)
    {
      v22 = v60;
      sub_100009178(&v58, v59);
      v23 = (*(v22 + 8))(v21, v22);
      v24 = v23();

      sub_100004C6C(&v58);
      v25 = v62;
      v26 = v63;
      sub_100009178(v61, v62);
      v27 = (*(v26 + 8))(v25, v26);
      v28 = v27();

      if (vabdd_f64(v24, v28) <= 0.5)
      {
        if (qword_100614EF8 != -1)
        {
          swift_once();
        }

        v29 = sub_1004B80B4();
        sub_100007084(v29, qword_100616A40);
        v30 = sub_1004B8094();
        v31 = sub_1004BC9A4();
        if (os_log_type_enabled(v30, v31))
        {
          v56 = "ince last tap, ignoring.";
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v55 = v30;
          v34 = v33;
          *&v58 = v33;
          *v32 = 136315138;
          *(v32 + 4) = sub_100441BE8(0xD00000000000005FLL, v56 | 0x8000000000000000, &v58);
          v35 = v31;
          v36 = v55;
          _os_log_impl(&_mh_execute_header, v55, v35, "%s", v32, 0xCu);
          sub_100004C6C(v34);
        }

        else
        {
        }

        v37 = 0;
LABEL_16:
        v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
        swift_beginAccess();
        sub_10000F778(v2 + v38, v7, &qword_100616F28, &qword_1004ECA20);
        if ((*(v9 + 48))(v7, 1, v8) == 1)
        {
          sub_100007214(v7, &qword_100616F28, &qword_1004ECA20);
        }

        else
        {
          LODWORD(v56) = v37;
          (*(v9 + 32))(v13, v7, v8);
          sub_1004B6CC4();
          sub_1004B6C04();
          v40 = v39;
          v41 = *(v9 + 8);
          v41(v11, v8);
          if (v40 < 1.0)
          {
            if (qword_100614EF8 != -1)
            {
              swift_once();
            }

            v42 = sub_1004B80B4();
            sub_100007084(v42, qword_100616A40);
            v43 = sub_1004B8094();
            v44 = sub_1004BC9A4();
            if (os_log_type_enabled(v43, v44))
            {
              v45 = swift_slowAlloc();
              v46 = swift_slowAlloc();
              v57[0] = v46;
              *v45 = 136315138;
              *(v45 + 4) = sub_100441BE8(0xD000000000000058, 0x800000010050F0D0, v57);
              _os_log_impl(&_mh_execute_header, v43, v44, "%s", v45, 0xCu);
              sub_100004C6C(v46);
            }

            v41(v13, v8);
            v15 = &off_100616000;
            goto LABEL_32;
          }

          v41(v13, v8);
          v37 = v56;
        }

        (*(v9 + 56))(v5, 1, 1, v8);
        swift_beginAccess();
        sub_100047A5C(v5, v2 + v38, &qword_100616F28, &qword_1004ECA20);
        swift_endAccess();
        v15 = &off_100616000;
        if (v37)
        {
          goto LABEL_26;
        }

LABEL_32:
        v53 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
        if (v53)
        {
          v54 = v53;
          [v54 setPaused:sub_1004A6098()];
        }

        goto LABEL_28;
      }
    }

    else
    {
      sub_100007214(&v58, &qword_100616AA8, &qword_1004EC710);
    }

    v37 = 1;
    goto LABEL_16;
  }

  sub_100007214(&v58, &qword_100616AA8, &qword_1004EC710);
  v17 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (v17)
  {
    swift_beginAccess();
    v18 = *(v17 + 96);
    v19 = *(v17 + 104);
    *(v17 + 96) = 0;
    *(v17 + 104) = 0;

    sub_10003CC4C(v18, v19);
    sub_10048FD5C();
  }

LABEL_29:
  v51 = *(v15[357] + v2);
  if (v51)
  {
    v52 = v51;
    [v52 setPaused:sub_1004A6098()];
  }
}

uint64_t sub_100499418(void *a1)
{
  sub_1004BD404(56);
  v6._object = 0x800000010050F190;
  v6._countAndFlagsBits = 0xD000000000000036;
  sub_1004BC024(v6);
  v2 = a1[3];
  v3 = a1[4];
  sub_100009178(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v4();

  sub_1004BC5D4();
  return 0;
}

double sub_1004994F4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = 0.0;
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    v4 = Strong;
    swift_beginAccess();
    sub_10000F778(v4 + v3, v15, &qword_100616AA8, &qword_1004EC710);

    v5 = v16;
    if (v16)
    {
      v6 = v17;
      sub_100009178(v15, v16);
      v7 = *(v5 - 8);
      v8 = __chkstk_darwin();
      v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
      (*(v7 + 16))(v10, v8);
      sub_100007214(v15, &qword_100616AA8, &qword_1004EC710);
      v11 = (*(v6 + 8))(v5, v6);
      v12 = (*(v7 + 8))(v10, v5);
      v2 = v11(v12);
    }

    else
    {
      sub_100007214(v15, &qword_100616AA8, &qword_1004EC710);
    }
  }

  return v2;
}

uint64_t SyncedLyricsViewController.timingProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  return sub_10000F778(v1 + v3, a1, &qword_100616AA8, &qword_1004EC710);
}

uint64_t SyncedLyricsViewController.timingProvider.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v1 + v3, v5, &qword_100616AA8, &qword_1004EC710);
  swift_beginAccess();
  sub_10003F42C(a1, v1 + v3, &qword_100616AA8, &qword_1004EC710);
  swift_endAccess();
  sub_100498B80(v5);
  sub_100007214(a1, &qword_100616AA8, &qword_1004EC710);
  return sub_100007214(v5, &qword_100616AA8, &qword_1004EC710);
}

void (*SyncedLyricsViewController.timingProvider.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xB8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  *(v3 + 168) = v1;
  *(v3 + 176) = v5;
  swift_beginAccess();
  sub_10000F778(v1 + v5, v4, &qword_100616AA8, &qword_1004EC710);
  return sub_1004998B0;
}

void sub_1004998B0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 168);
  v4 = *(*a1 + 176);
  if (a2)
  {
    sub_10000F778(*a1, v2 + 40, &qword_100616AA8, &qword_1004EC710);
    sub_10000F778(v3 + v4, v2 + 80, &qword_100616AA8, &qword_1004EC710);
    swift_beginAccess();
    sub_10003F42C(v2 + 40, v3 + v4, &qword_100616AA8, &qword_1004EC710);
    swift_endAccess();
    sub_100498B80(v2 + 80);
    sub_100007214(v2 + 80, &qword_100616AA8, &qword_1004EC710);
  }

  else
  {
    sub_10000F778(v3 + v4, v2 + 40, &qword_100616AA8, &qword_1004EC710);
    swift_beginAccess();
    sub_10003F42C(v2, v3 + v4, &qword_100616AA8, &qword_1004EC710);
    swift_endAccess();
    sub_100498B80(v2 + 40);
  }

  sub_100007214(v2 + 40, &qword_100616AA8, &qword_1004EC710);
  sub_100007214(v2, &qword_100616AA8, &qword_1004EC710);

  free(v2);
}

id SyncedLyricsViewController.bottomViewMetadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 16);
  v6 = *v3;
  *a1 = *v3;
  *(a1 + 16) = v5;
  *(a1 + 32) = v4;

  return v6;
}

void SyncedLyricsViewController.bottomViewMetadata.setter(uint64_t a1)
{
  v3 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v5;
  *(v3 + 32) = *(a1 + 32);
  sub_10000F778(a1, &v11, &qword_100616AB8, &qword_1004EC718);
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

LABEL_12:

    sub_100007214(a1, &qword_100616AB8, &qword_1004EC718);

    return;
  }

  v8 = sub_1004BD6A4();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_5:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v10 = sub_1004BD484();

    goto LABEL_10;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_10:
    sub_1004A302C(v10);

    sub_100007214(a1, &qword_100616AB8, &qword_1004EC718);
    return;
  }

  __break(1u);
}

void (*SyncedLyricsViewController.bottomViewMetadata.modify(uint64_t *a1))(char **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xC0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 184) = v1;
  v5 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *v5;
  v8 = v5[1];
  *(v4 + 80) = *v5;
  *(v4 + 96) = v8;
  *(v4 + 112) = v6;
  v9 = v7;
  return sub_100499CC0;
}

void sub_100499CC0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 6);
  if (a2)
  {
    *v2 = v2[5];
    v2[1] = v3;
    *(v2 + 4) = *(v2 + 14);
    sub_10000F778(v2, v2 + 120, &qword_100616AB8, &qword_1004EC718);
    SyncedLyricsViewController.bottomViewMetadata.setter(v2);
  }

  else
  {
    *(v2 + 40) = v2[5];
    *(v2 + 56) = v3;
    *(v2 + 9) = *(v2 + 14);
    SyncedLyricsViewController.bottomViewMetadata.setter(v2 + 40);
  }

  free(v2);
}

uint64_t SyncedLyricsViewController.shareHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_10002F518(*v1, v1[1]);
  return v2;
}

uint64_t SyncedLyricsViewController.shareHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_10003CC4C(v6, v7);
}

id SyncedLyricsViewController.contentView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.contentView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id SyncedLyricsViewController.scrollView.getter()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SyncedLyricsViewController.scrollView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t (*SyncedLyricsViewController.currentTranslation.modify(uint64_t *a1))()
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
  v5 = *(*(sub_100003ABC(&qword_100616AE0, &qword_1004EC720) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_10049A1A8;
}

uint64_t sub_10049A21C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  sub_100003ABC(a2, a3);
  __chkstk_darwin();
  v12 = &v18 - v11;
  v13 = *a4;
  swift_beginAccess();
  sub_10003F42C(a1, v5 + v13, a2, a3);
  swift_endAccess();
  if ((*(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
  {
    sub_10000F778(v5 + v13, v12, a2, a3);
    v14 = a5(0);
    if ((*(*(v14 - 8) + 48))(v12, 1, v14) == 1)
    {
      v15 = 150.0;
    }

    else
    {
      v15 = 130.0;
    }

    sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
    sub_100007214(v12, a2, a3);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v15 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
    sub_1004A4CDC(isa);
  }

  return sub_100007214(a1, a2, a3);
}

uint64_t (*SyncedLyricsViewController.currentTransliteration.modify(uint64_t *a1))()
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
  v5 = *(*(sub_100003ABC(&qword_100615048, &qword_1004EA890) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;
  swift_beginAccess();
  return sub_10049A4C0;
}

void sub_10049A4E8(void *a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v9 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v10 = v9[3];
    if ((*(v10 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) & 1) == 0)
    {
      v11 = v9[4];
      sub_10000F778(v10 + v9[5], v11, a3, a4);
      v12 = a5(0);
      if ((*(*(v12 - 8) + 48))(v11, 1, v12) == 1)
      {
        v13 = 150.0;
      }

      else
      {
        v13 = 130.0;
      }

      sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
      sub_100007214(v11, a3, a4);
      isa = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:v13 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
      sub_1004A4CDC(isa);
    }
  }

  free(v9[4]);

  free(v9);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLoad()()
{
  v1 = v0;
  swift_getObjectType();
  sub_100003ABC(&qword_100616B00, &qword_1004EBF30);
  __chkstk_darwin();
  v3 = &v62 - v2;
  v4 = type metadata accessor for SyncedLyricsViewController(0);
  v66.receiver = v0;
  v66.super_class = v4;
  objc_msgSendSuper2(&v66, "viewDidLoad");
  v5 = [v0 view];
  if (!v5)
  {
    __break(1u);
    goto LABEL_10;
  }

  v6 = v5;
  [v5 setPreservesSuperviewLayoutMargins:1];

  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  swift_beginAccess();
  v8 = *&v1[v7];
  v9 = [v1 view];
  if (!v9)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v9;
  v64 = v3;
  [v9 bounds];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  [v8 setFrame:{v12, v14, v16, v18}];
  [*&v1[v7] setAutoresizingMask:18];
  v19 = [v1 view];
  if (!v19)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v20 = v19;
  [v19 addSubview:*&v1[v7]];

  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v65 = v21;
  v22 = *&v1[v21];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  [v22 setFrame:{v26, v28, v30, v32}];
  v33 = v65;
  [*&v1[v65] setClipsToBounds:0];
  [*&v1[v33] setIndicatorStyle:2];
  [*&v1[v33] setShowsHorizontalScrollIndicator:0];
  [*&v1[v33] setAutoresizingMask:18];
  [*&v1[v33] setDelegate:v1];
  [*&v1[v33] setMultipleTouchEnabled:0];
  v34 = *&v1[v33];
  v35 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  [v34 setShowsVerticalScrollIndicator:v35[656]];
  [*&v1[v33] _setHiddenPocketEdges:15];
  [*&v1[v7] addSubview:*&v1[v33]];
  sub_100003ABC(&qword_100616B08, &qword_1004EC728);
  v36 = swift_allocObject();
  v62 = xmmword_1004C50A0;
  *(v36 + 16) = xmmword_1004C50A0;
  *(v36 + 32) = sub_1004B83D4();
  *(v36 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  sub_1004BCA74();
  swift_unknownObjectRelease();

  v37 = objc_opt_self();
  v38 = [v37 defaultCenter];
  v39 = sub_1004BCC64();

  v40 = [v37 defaultCenter];
  v63 = sub_1004BCC64();

  v41 = swift_allocObject();
  *(v41 + 16) = v62;
  *(v41 + 32) = sub_1004B83C4();
  *(v41 + 40) = &protocol witness table for UITraitAccessibilityContrast;
  sub_1004BCA74();
  swift_unknownObjectRelease();

  v42 = sub_1004BC4B4();
  v43 = *(*(v42 - 8) + 56);
  v44 = v64;
  v43(v64, 1, 1, v42);
  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1004BC474();

  v46 = sub_1004BC464();
  v47 = swift_allocObject();
  v47[2] = v46;
  v47[3] = &protocol witness table for MainActor;
  *&v62 = v39;
  v47[4] = v39;
  v47[5] = v45;

  sub_100496E74(0, 0, v44, &unk_1004EC738, v47);

  v43(v44, 1, 1, v42);
  v48 = v63;
  v49 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v50 = sub_1004BC464();
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = &protocol witness table for MainActor;
  v51[4] = v48;
  v51[5] = v49;

  sub_100496E74(0, 0, v44, &unk_1004EC748, v51);

  v52 = [v1 traitCollection];
  v53 = [v52 userInterfaceIdiom];

  v54 = [objc_allocWithZone(UITapGestureRecognizer) init];
  v55 = v54;
  if (v53 == 2)
  {
    sub_100003ABC(&qword_100616B10, &qword_1004EC3C0);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1004C4D40;
    *(v56 + 32) = sub_1004BC6E4();
    sub_100009130(0, &qword_100616B18, NSNumber_ptr);
    isa = sub_1004BC284().super.isa;

    [v55 setAllowedPressTypes:isa];

    [v55 setDelegate:v1];
    [v55 addTarget:v1 action:"menuHandler:"];
    v58 = *&v1[v65];
    [v58 addGestureRecognizer:v55];

    v59 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = v55;

    return;
  }

  [v54 setDelegate:v1];
  [v55 addTarget:v1 action:"tapHandler:"];
  v60 = [v1 view];
  if (v60)
  {
    v61 = v60;
    [v60 addGestureRecognizer:v55];

    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_10049AE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1004BA8F4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_1004BA924();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_1004BCC44();
  v5[22] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_100616F48, &qword_1004ECA30);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100616F50, &qword_1004ECA38);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = sub_1004BC474();
  v5[30] = sub_1004BC464();
  v11 = sub_1004BC3E4();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_10049B0C4, v11, v10);
}

uint64_t sub_10049B0C4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  sub_1004BCC54();
  v0[33] = sub_100009130(0, &qword_100616F58, UIWindowScene_ptr);
  sub_1004B4DA0(&qword_100616F60, &type metadata accessor for NSNotificationCenter.Notifications, &protocol conformance descriptor for NSNotificationCenter.Notifications);

  sub_1004BD924();
  sub_1004BD8D4();
  sub_1004BC594();
  sub_1004BD914();
  (*(v1 + 8))(v2, v3);
  sub_1004BD904();
  swift_beginAccess();
  v4 = sub_1004BC464();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10049B2E4;

  return sub_10049B97C(v4, &protocol witness table for MainActor);
}

uint64_t sub_10049B2E4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_10049B3FC, v5, v6);
  }

  return result;
}

void sub_10049B3FC()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_11;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        if (qword_100614E70 != -1)
        {
          swift_once();
        }

        v9 = sub_1004B80B4();
        sub_100007084(v9, static Logger.lyrics);
        v10 = sub_1004B8094();
        v11 = sub_1004BC9A4();
        if (os_log_type_enabled(v10, v11))
        {
          v12 = swift_slowAlloc();
          *v12 = 0;
        }

        v13 = v0[21];
        v14 = v0[18];
        v23 = v0[20];
        v24 = v0[19];
        v15 = v0[16];
        v22 = v0[17];
        v16 = v0[15];

        sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
        v21 = sub_1004BCB44();
        v0[6] = sub_1004B4F58;
        v0[7] = v16;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_1000D6C80;
        v0[5] = &unk_1005D62F0;
        v17 = _Block_copy(v0 + 2);

        sub_1004BA914();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100003ABC(&qword_100616B80, &unk_1004EC758);
        sub_1000F96D4(&qword_100616B88, &qword_100616B80, &unk_1004EC758);
        sub_1004BD2D4();
        sub_1004BCB54();
        _Block_release(v17);

        (*(v22 + 8))(v14, v15);
        (*(v23 + 8))(v13, v24);
      }

      else
      {
      }
    }

    else
    {
LABEL_11:
    }

    v19 = sub_1004BC464();
    v0[34] = v19;
    v20 = swift_task_alloc();
    v0[35] = v20;
    *v20 = v0;
    v20[1] = sub_10049B2E4;

    sub_10049B97C(v19, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v18 = v0[1];

    v18();
  }
}

uint64_t sub_10049B88C(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_10049B8AC, 0, 0);
}

uint64_t sub_10049B8AC()
{
  sub_1004B65D4();
  v1 = v0[6];
  if (v0[5])
  {
    sub_100009130(0, &qword_100616F58, UIWindowScene_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *v0[6] = 0;
    }
  }

  else
  {
    sub_100007214((v0 + 2), &qword_100616F80, &qword_1004ECA60);
    *v1 = 0;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_10049B97C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_100003ABC(&qword_100616F70, &qword_1004ECA58);
  v3[10] = swift_task_alloc();
  v5 = sub_1004B65F4();
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();
  if (a1)
  {
    swift_getObjectType();
    v6 = sub_1004BC3E4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v3[14] = v6;
  v3[15] = v8;

  return _swift_task_switch(sub_10049BAB4, v6, v8);
}

uint64_t sub_10049BAB4()
{
  v0[16] = sub_100003ABC(&qword_100616F50, &qword_1004ECA38);
  v0[17] = sub_1004BD8E4();
  sub_1004BCC44();
  sub_1004B4DA0(&qword_100616F78, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_10049BBD4;
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];

  return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v2, v3, v4);
}

uint64_t sub_10049BBD4()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10049BECC;
  }

  else
  {
    (*(v2 + 136))();
    v3 = *(v2 + 112);
    v4 = *(v2 + 120);
    v5 = sub_10049BCFC;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10049BCFC()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007214(v3, &qword_100616F70, &qword_1004ECA58);

    v4 = v0[1];

    return v4(0);
  }

  else
  {
    (*(v2 + 32))(v0[13], v3, v1);
    v6 = sub_1004BD8F4();
    v0[19] = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    v0[20] = v8;
    *v8 = v0;
    v8[1] = sub_10049BF58;
    v9 = v0[13];

    return (v10)(v0 + 6, v9);
  }
}

uint64_t sub_10049BECC()
{
  (*(v0 + 136))();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049BF58()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 96);
  v4 = *(*v0 + 88);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 120);
  v6 = *(v1 + 112);

  return _swift_task_switch(sub_10049C0F8, v6, v5);
}

uint64_t sub_10049C0F8()
{
  v1 = v0[6];
  if (v1)
  {

    v2 = v0[1];

    return v2(v1);
  }

  else
  {
    v0[16] = sub_100003ABC(&qword_100616F50, &qword_1004ECA38);
    v0[17] = sub_1004BD8E4();
    sub_1004BCC44();
    sub_1004B4DA0(&qword_100616F78, &type metadata accessor for NSNotificationCenter.Notifications.Iterator, &protocol conformance descriptor for NSNotificationCenter.Notifications.Iterator);
    v4 = swift_task_alloc();
    v0[18] = v4;
    *v4 = v0;
    v4[1] = sub_10049BBD4;
    v5 = v0[10];
    v6 = v0[7];
    v7 = v0[8];

    return _sScI4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTj(v5, v6, v7);
  }
}

void sub_10049C274(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
  }

  swift_beginAccess();
  v2 = swift_unknownObjectWeakLoadStrong();
  if (v2)
  {
    v3 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v4 = v2;
    v5 = v3;

    if (v3)
    {
      [v5 setPaused:1];
    }
  }
}

uint64_t sub_10049C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v6 = sub_1004BA8F4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v7 = sub_1004BA924();
  v5[19] = v7;
  v5[20] = *(v7 - 8);
  v5[21] = swift_task_alloc();
  sub_1004BCC44();
  v5[22] = swift_task_alloc();
  v8 = sub_100003ABC(&qword_100616F48, &qword_1004ECA30);
  v5[23] = v8;
  v5[24] = *(v8 - 8);
  v5[25] = swift_task_alloc();
  v9 = sub_100003ABC(&qword_100616F50, &qword_1004ECA38);
  v5[26] = v9;
  v5[27] = *(v9 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = sub_1004BC474();
  v5[30] = sub_1004BC464();
  v11 = sub_1004BC3E4();
  v5[31] = v11;
  v5[32] = v10;

  return _swift_task_switch(sub_10049C580, v11, v10);
}

uint64_t sub_10049C580()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v0[11] = v0[14];
  sub_1004BCC54();
  v0[33] = sub_100009130(0, &qword_100616F58, UIWindowScene_ptr);
  sub_1004B4DA0(&qword_100616F60, &type metadata accessor for NSNotificationCenter.Notifications, &protocol conformance descriptor for NSNotificationCenter.Notifications);

  sub_1004BD924();
  sub_1004BD8D4();
  sub_1004BC594();
  sub_1004BD914();
  (*(v1 + 8))(v2, v3);
  sub_1004BD904();
  swift_beginAccess();
  v4 = sub_1004BC464();
  v0[34] = v4;
  v5 = swift_task_alloc();
  v0[35] = v5;
  *v5 = v0;
  v5[1] = sub_10049C7A0;

  return sub_10049B97C(v4, &protocol witness table for MainActor);
}

uint64_t sub_10049C7A0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 288) = a1;

  if (!v1)
  {

    v5 = *(v3 + 248);
    v6 = *(v3 + 256);

    return _swift_task_switch(sub_10049C8B8, v5, v6);
  }

  return result;
}

void sub_10049C8B8()
{
  v1 = v0[36];
  if (v1)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      goto LABEL_7;
    }

    v3 = Strong;
    v4 = [Strong view];

    if (!v4)
    {
      __break(1u);
      return;
    }

    v5 = [v4 window];

    v6 = [v5 windowScene];
    if (v6)
    {
      v7 = v1;
      v8 = sub_1004BCFA4();

      if (v8)
      {
        v9 = v0[21];
        v10 = v0[18];
        v19 = v0[20];
        v20 = v0[19];
        v11 = v0[16];
        v18 = v0[17];
        v12 = v0[15];
        sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
        v17 = sub_1004BCB44();
        v0[6] = sub_1004B4D7C;
        v0[7] = v12;
        v0[2] = _NSConcreteStackBlock;
        v0[3] = 1107296256;
        v0[4] = sub_1000D6C80;
        v0[5] = &unk_1005D6278;
        v13 = _Block_copy(v0 + 2);

        sub_1004BA914();
        v0[13] = _swiftEmptyArrayStorage;
        sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_100003ABC(&qword_100616B80, &unk_1004EC758);
        sub_1000F96D4(&qword_100616B88, &qword_100616B80, &unk_1004EC758);
        sub_1004BD2D4();
        sub_1004BCB54();
        _Block_release(v13);

        (*(v18 + 8))(v10, v11);
        (*(v19 + 8))(v9, v20);
      }

      else
      {
      }
    }

    else
    {
LABEL_7:
    }

    v15 = sub_1004BC464();
    v0[34] = v15;
    v16 = swift_task_alloc();
    v0[35] = v16;
    *v16 = v0;
    v16[1] = sub_10049C7A0;

    sub_10049B97C(v15, &protocol witness table for MainActor);
  }

  else
  {
    (*(v0[27] + 8))(v0[28], v0[26]);

    v14 = v0[1];

    v14();
  }
}

uint64_t sub_10049CC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return _swift_task_switch(sub_1004B5588, 0, 0);
}

void sub_10049CCB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
    v3 = Strong;

    if (v2)
    {
      v4 = swift_allocObject();
      swift_beginAccess();
      v5 = swift_unknownObjectWeakLoadStrong();
      swift_unknownObjectWeakInit();

      swift_beginAccess();
      v6 = *(v2 + 96);
      v7 = *(v2 + 104);
      *(v2 + 96) = sub_1004B4D84;
      *(v2 + 104) = v4;
      swift_retain_n();
      sub_10003CC4C(v6, v7);
      sub_10048FD5C();
    }
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v8[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  }

  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v9 = sub_1004B80B4();
  sub_100007084(v9, static Logger.lyrics);

  v10 = sub_1004B8094();
  v11 = sub_1004BC9A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v26[0] = v13;
    *v12 = 136315138;
    swift_beginAccess();
    v14 = swift_unknownObjectWeakLoadStrong();
    if (v14)
    {
      v15 = v14;
      sub_1004A6098();
    }

    sub_100003ABC(&qword_100616F68, &qword_1004ECA50);
    v16 = sub_1004BBF04();
    v18 = sub_100441BE8(v16, v17, v26);

    *(v12 + 4) = v18;
    sub_100004C6C(v13);
  }

  swift_beginAccess();
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
    v21 = v19;
    v22 = v20;

    if (v20)
    {
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (v23)
      {
        v24 = v23;
        v25 = sub_1004A6098();
      }

      else
      {
        v25 = 1;
      }

      [v22 setPaused:v25];
    }
  }
}

void sub_10049D054(void *a1)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v3] == 1)
  {
    v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
    swift_beginAccess();
    if (!v1[v4])
    {
      v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
      swift_beginAccess();
      if (*&v1[v5] > 0.0)
      {
        v6 = [v1 view];
        [a1 locationInView:v6];
        v8 = v7;

        v9 = [v1 view];
        if (v9)
        {
          v10 = v9;
          [v9 frame];
          v12 = v11;
          v14 = v13;
          v16 = v15;
          v18 = v17;

          v22.origin.x = v12;
          v22.origin.y = v14;
          v22.size.width = v16;
          v22.size.height = v18;
          if (CGRectGetHeight(v22) - *&v1[v5] < v8)
          {
            v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
            swift_beginAccess();
            if (swift_unknownObjectWeakLoadStrong())
            {
              v20 = *(v19 + 1);
              ObjectType = swift_getObjectType();
              (*(v20 + 40))(v1, ObjectType, v20);
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
          __break(1u);
        }
      }
    }
  }
}

uint64_t sub_10049D280(double a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a6 + v10, v13);
  v11.n128_f64[0] = a1;
  sub_1004A88B0(v13, 0, 0, 1, 0, v11, a2, a3);
  return sub_100004C6C(v13);
}

void sub_10049D388(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1004BA8F4();
  v99 = *(v4 - 8);
  v100 = v4;
  __chkstk_darwin();
  v97 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1004BA924();
  v96 = *(v98 - 8);
  __chkstk_darwin();
  v95 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_1004BA954();
  v94 = *(v104 - 8);
  __chkstk_darwin();
  v92 = v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v93 = v84 - v8;
  sub_100003ABC(&qword_100616F28, &qword_1004ECA20);
  __chkstk_darwin();
  v91 = v84 - v9;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  *&v10 = __chkstk_darwin().n128_u64[0];
  v12 = v84 - v11;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator) selectionChanged];
  v13 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v13)
  {
    [v13 setPaused:1];
  }

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling) = 1;
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) invalidate];
  v15 = *(v2 + v14);
  *(v2 + v14) = 0;

  *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll) = 1;
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v16, v107);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  v17 = type metadata accessor for Lyrics.TextLine(0);
  v18 = swift_dynamicCast();
  v19 = *(*(v17 - 8) + 56);
  if ((v18 & 1) == 0)
  {
LABEL_37:
    (v19)(v12, 1, 1, v17);
    sub_100007214(v12, &qword_100616C00, &unk_1004EBFF0);
    goto LABEL_38;
  }

  (v19)(v12, 0, 1, v17);
  sub_100007214(v12, &qword_100616C00, &unk_1004EBFF0);
  v12 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v12)
  {
    _s19SBS_TextContentViewCMa(0);
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v21 = *(v20 + OBJC_IVAR___MusicSBS_TextContentView_textView);
      if (!v21)
      {
LABEL_49:
        __break(1u);
        return;
      }

      v17 = *(v21 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v17)
      {
        v22 = *(v17 + 56);
        v23 = *(v22 + 16);
        if (v23)
        {
          v24 = *(v17 + 48);
          v103 = sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
          v25 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
          v84[1] = v24;

          v84[0] = v12;
          v84[2] = v17;

          v102 = v25;
          swift_beginAccess();
          v19 = *(v22 + 16);
          if (v19)
          {
            v26 = 0;
            v101 = v22 + 32;
            v86 = a1;
            v87 = v2;
            v85 = v16;
            v88 = v23;
            v89 = v22;
            while (1)
            {
              v17 = *(v101 + 8 * v26);
              v105 = v26 + 1;
              memcpy(v107, &v102[v2], 0x2B0uLL);
              *(v17 + 120) = 1;

              sub_10046E570(v107, v106);
              v12 = sub_1004BCB44();
              v27 = *&v107[80];
              v28 = swift_allocObject();
              swift_weakInit();

              OS_dispatch_queue.asyncAfter(_:block:)(sub_1004709A0, v28, v27);

              if ((*(v17 + 57) & 1) == 0)
              {
                v38 = *(v17 + 112);
                if (v38 && (v39 = *(v38 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
                {
                  v40 = v107[25];
                  v41 = v39;
                  [v40 lineHeight];
                  v43 = vabdd_f64(v42 * *&v107[32] + *&v107[58] + *&v107[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
                  if (*(v17 + 58))
                  {
                    v44 = v43 + CGRectGetWidth(*(v17 + 80));
                    v45 = -v43;
                  }

                  else
                  {
                    v45 = -v43;
                    v44 = -v43;
                  }

                  v46 = *(v17 + 80);
                  v47 = *(v17 + 88);
                  v48 = *(v17 + 96);
                  v49 = *(v17 + 104);
                  v12 = v41;
                  v110.origin.x = v46;
                  v110.origin.y = v47;
                  v110.size.width = v48;
                  v110.size.height = v49;
                  [v12 setFrame:{v44, v45, v43, v43 + v43 + CGRectGetHeight(v110)}];
                  sub_10046E5CC(v107);
                }

                else
                {
                  sub_10046E5CC(v107);
                }

                goto LABEL_34;
              }

              swift_beginAccess();
              v12 = *(v17 + 16);
              if (!(v12 >> 62))
              {
                v29 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v29)
                {
                  break;
                }

                goto LABEL_32;
              }

              v29 = sub_1004BD6A4();
              if (v29)
              {
                break;
              }

LABEL_32:
              sub_10046E5CC(v107);

LABEL_33:
              v23 = v88;
              v22 = v89;
LABEL_34:
              v26 = v105;
              if (v105 == v23)
              {

                goto LABEL_38;
              }

              v19 = *(v22 + 16);
              if (v105 >= v19)
              {
                goto LABEL_36;
              }
            }

            if (v29 >= 1)
            {
              v90 = v17;

              v30 = 0;
              while (1)
              {
                if ((v12 & 0xC000000000000001) != 0)
                {
                  v31 = *(sub_1004BD484() + 208);
                  if (v31)
                  {
                    goto LABEL_21;
                  }
                }

                else
                {
                  v32 = *(v12 + 8 * v30 + 32);

                  v31 = *(v32 + 208);
                  if (v31)
                  {
LABEL_21:
                    v33 = *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
                    if (v33)
                    {
                      v17 = *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
                      v34 = *&v31[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
                      v35 = v31;
                      sub_1004709A8(v33, v17);
                      v36 = v34;
                      v37 = v33;
                      [v36 setBackgroundColor:v37];
                    }
                  }
                }

                ++v30;

                if (v29 == v30)
                {

                  sub_10046E5CC(v107);

                  a1 = v86;
                  v2 = v87;
                  v16 = v85;
                  goto LABEL_33;
                }
              }
            }

            __break(1u);
            goto LABEL_49;
          }

LABEL_36:
          __break(1u);
          goto LABEL_37;
        }
      }
    }
  }

LABEL_38:
  v50 = [objc_allocWithZone(MSVLyricsLine) init];
  sub_10001342C(a1 + v16, v107);
  v51 = v107[3];
  v52 = v107[4];
  sub_100009178(v107, v107[3]);
  v53 = (*(*(v52 + 8) + 8))(v51);
  v54 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  v55 = 0.0;
  if (v54)
  {
    swift_beginAccess();
    if (*(v54 + 88) == 1)
    {

      v55 = Lyrics.spatialOffset.getter();
    }
  }

  sub_100004C6C(v107);
  [v50 setStartTime:v53 + v55];
  sub_10001342C(a1 + v16, v107);
  v56 = v107[3];
  v57 = v107[4];
  sub_100009178(v107, v107[3]);
  (*(*(v57 + 8) + 16))(v56);
  [v50 setEndTime:?];
  sub_100004C6C(v107);
  v58 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v2 + v58, v106, &qword_100616AA8, &qword_1004EC710);
  [v50 startTime];
  v60 = v59;
  sub_10000F778(v106, v107, &qword_100616AA8, &qword_1004EC710);
  v61 = v107[3];
  if (v107[3])
  {
    v62 = v107[4];
    sub_100009178(v107, v107[3]);
    v63 = (*(v62 + 16))(v61, v62);
    sub_100004C6C(v107);
  }

  else
  {
    sub_100007214(v107, &qword_100616AA8, &qword_1004EC710);
    v63 = 1;
  }

  v65 = type metadata accessor for SyncedLyricsViewController.StaticTimingProvider(0, v64);
  v66 = swift_allocObject();
  *(v66 + 24) = v60;
  *(v66 + 16) = v63 & 1;
  v107[4] = &off_1005D5950;
  v107[3] = v65;
  v107[0] = v66;
  sub_10000F778(v2 + v58, v108, &qword_100616AA8, &qword_1004EC710);
  swift_beginAccess();

  sub_10003F42C(v107, v2 + v58, &qword_100616AA8, &qword_1004EC710);
  swift_endAccess();
  sub_100498B80(v108);
  sub_100007214(v108, &qword_100616AA8, &qword_1004EC710);
  sub_100007214(v107, &qword_100616AA8, &qword_1004EC710);
  v67 = v91;
  sub_1004B6CC4();
  v68 = sub_1004B6CD4();
  (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
  v69 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  swift_beginAccess();
  sub_100047A5C(v67, v2 + v69, &qword_100616F28, &qword_1004ECA20);
  swift_endAccess();
  v70 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v71 = *(v70 + 1);
    ObjectType = swift_getObjectType();
    (*(v71 + 8))(v2, v50, ObjectType, v71);
    swift_unknownObjectRelease();
  }

  sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
  v103 = sub_1004BCB44();
  v73 = v92;
  sub_1004BA944();
  v74 = v93;
  sub_1004BA9B4();
  v105 = *(v94 + 8);
  (v105)(v73, v104);
  sub_10000F778(v106, v108, &qword_100616AA8, &qword_1004EC710);
  v75 = swift_allocObject();
  *(v75 + 16) = v2;
  *(v75 + 24) = v66;
  v76 = v108[1];
  *(v75 + 32) = v108[0];
  *(v75 + 48) = v76;
  *(v75 + 64) = v109;
  v107[4] = sub_1004B4CE8;
  v107[5] = v75;
  v107[0] = _NSConcreteStackBlock;
  v107[1] = 1107296256;
  v107[2] = sub_1000D6C80;
  v107[3] = &unk_1005D60C0;
  v77 = _Block_copy(v107);
  v102 = v50;
  v78 = v77;

  v79 = v2;

  v80 = v95;
  sub_1004BA914();
  v107[0] = _swiftEmptyArrayStorage;
  sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003ABC(&qword_100616B80, &unk_1004EC758);
  sub_1000F96D4(&qword_100616B88, &qword_100616B80, &unk_1004EC758);
  v81 = v97;
  v82 = v100;
  sub_1004BD2D4();
  v83 = v103;
  sub_1004BCB04();
  _Block_release(v78);

  (*(v99 + 8))(v81, v82);
  (*(v96 + 8))(v80, v98);
  (v105)(v74, v104);
  sub_100007214(v106, &qword_100616AA8, &qword_1004EC710);
}

void sub_10049E1F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(a1 + v6, v14, &qword_100616AA8, &qword_1004EC710);
  if (v14[3])
  {
    sub_100003ABC(&qword_100616F40, &qword_1004ECA28);
    type metadata accessor for SyncedLyricsViewController.StaticTimingProvider(0, v7);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    if (v13[0] != a2)
    {

      return;
    }

    if (qword_100614EF8 != -1)
    {
      swift_once();
    }

    v8 = sub_1004B80B4();
    sub_100007084(v8, qword_100616A40);
    v9 = sub_1004B8094();
    v10 = sub_1004BC9A4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14[0] = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_100441BE8(0xD00000000000004DLL, 0x800000010050F050, v14);
      _os_log_impl(&_mh_execute_header, v9, v10, "%s", v11, 0xCu);
      sub_100004C6C(v12);
    }

    sub_10000F778(a3, v14, &qword_100616AA8, &qword_1004EC710);
    sub_10000F778(a1 + v6, v13, &qword_100616AA8, &qword_1004EC710);
    swift_beginAccess();
    sub_10003F42C(v14, a1 + v6, &qword_100616AA8, &qword_1004EC710);
    swift_endAccess();
    sub_100498B80(v13);

    sub_100007214(v13, &qword_100616AA8, &qword_1004EC710);
  }

  sub_100007214(v14, &qword_100616AA8, &qword_1004EC710);
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v38.receiver = v2;
  v38.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v38, "viewDidAppear:", a1);
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
  if (!*&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink])
  {
    v5 = [v2 view];
    if (!v5)
    {
      __break(1u);
      return;
    }

    v6 = v5;
    v7 = [v5 window];

    if (v7)
    {
      v8 = [v7 screen];

      v7 = [v8 displayLinkWithTarget:v2 selector:"displayLinkFired:"];
    }

    v9 = *&v2[v4];
    *&v2[v4] = v7;
    v10 = v7;

    if (v7)
    {
      [v10 setPreferredFramesPerSecond:30];
    }

    v11 = *&v2[v4];
    if (v11)
    {
      v12 = objc_opt_self();
      v13 = v11;
      v14 = [v12 mainRunLoop];
      [v13 addToRunLoop:v14 forMode:NSRunLoopCommonModes];
    }

    if (qword_100614E70 != -1)
    {
      swift_once();
    }

    v15 = sub_1004B80B4();
    sub_100007084(v15, static Logger.lyrics);
    v16 = sub_1004B8094();
    v17 = sub_1004BC9A4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "[SyncedLyricsViewController] Creating new display link", v18, 2u);
    }
  }

  v19 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded;
  if (v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] == 1)
  {
    v20 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (v20)
    {
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      swift_beginAccess();
      v22 = *(v20 + 96);
      v23 = *(v20 + 104);
      *(v20 + 96) = sub_1004B5578;
      *(v20 + 104) = v21;

      swift_retain_n();
      sub_10003CC4C(v22, v23);
      sub_10048FD5C();
    }

    v2[v19] = 0;
  }

  v24 = *&v2[v4];
  if (v24)
  {
    v25 = v24;
    [v25 setPaused:sub_1004A6098()];
  }

  if (qword_100614E70 != -1)
  {
    swift_once();
  }

  v26 = sub_1004B80B4();
  sub_100007084(v26, static Logger.lyrics);
  v27 = v2;
  v28 = sub_1004B8094();
  v29 = sub_1004BC9A4();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v37 = v31;
    *v30 = 136315138;
    v32 = sub_1004A6098();
    v33 = !v32;
    if (v32)
    {
      v34 = 1702195828;
    }

    else
    {
      v34 = 0x65736C6166;
    }

    if (v33)
    {
      v35 = 0xE500000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    v36 = sub_100441BE8(v34, v35, &v37);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "[SyncedLyricsViewController] viewDidAppear (displayLinkShouldPause: %s", v30, 0xCu);
    sub_100004C6C(v31);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v11.receiver = v1;
  v11.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v11, "viewDidDisappear:", a1);
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 window];

    if (!v5)
    {
      v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink;
      [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] invalidate];
      v7 = *&v1[v6];
      *&v1[v6] = 0;

      v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 1;
      if (qword_100614E70 != -1)
      {
        swift_once();
      }

      v8 = sub_1004B80B4();
      sub_100007084(v8, static Logger.lyrics);
      v5 = sub_1004B8094();
      v9 = sub_1004BC9A4();
      if (os_log_type_enabled(v5, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v5, v9, "[SyncedLyricsViewController] viewDidDisappear, nil window, invalidating display link", v10, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v37.receiver = v0;
  v37.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v37, "viewDidLayoutSubviews");
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v3 = v2;
  _s3__C6CGRectVMa_2(0);
  [v3 bounds];

  v4 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  if ((sub_1004B70D4() & 1) == 0)
  {
    return;
  }

  v5 = [v1 view];
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  [v5 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v38.origin.x = v8;
  v38.origin.y = v10;
  v38.size.width = v12;
  v38.size.height = v14;
  CGRectGetWidth(v38);
  CGRectGetWidth(*v4);
  if (sub_1004B70D4())
  {
    sub_1004A07AC();
  }

  v15 = [v1 view];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  [v15 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v39.origin.x = v18;
  v39.origin.y = v20;
  v39.size.width = v22;
  v39.size.height = v24;
  CGRectGetHeight(v39);
  CGRectGetHeight(*v4);
  if (sub_1004B70D4())
  {
    sub_1004A7128(0);
    swift_beginAccess();
    sub_1004AFC48();
    v25 = sub_1004B70E4();
    if (v25)
    {
      sub_1004A01CC(v25, v26);
    }
  }

  v27 = [v1 view];
  if (!v27)
  {
    goto LABEL_16;
  }

  v28 = v27;
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  *v4 = v30;
  *(v4 + 1) = v32;
  *(v4 + 2) = v34;
  *(v4 + 3) = v36;
}

Swift::Void __swiftcall SyncedLyricsViewController.viewLayoutMarginsDidChange()()
{
  v22.receiver = v0;
  v22.super_class = type metadata accessor for SyncedLyricsViewController(0);
  objc_msgSendSuper2(&v22, "viewLayoutMarginsDidChange");
  v1 = &v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v2 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins + 8];
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = v3;
  [v3 layoutMargins];
  v6 = v5;

  if (v2 != v6)
  {
LABEL_5:
    sub_1004A07AC();
LABEL_6:
    v12 = [v0 view];
    if (v12)
    {
      v13 = v12;
      [v12 layoutMargins];
      v15 = v14;
      v17 = v16;
      v19 = v18;
      v21 = v20;

      *v1 = v15;
      *(v1 + 1) = v17;
      *(v1 + 2) = v19;
      *(v1 + 3) = v21;
      return;
    }

    goto LABEL_9;
  }

  v7 = v1[3];
  v8 = [v0 view];
  if (v8)
  {
    v9 = v8;
    [v8 layoutMargins];
    v11 = v10;

    if (v7 == v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_10:
  __break(1u);
}

void SyncedLyricsViewController.set(lyrics:translation:transliteration:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100003ABC(&qword_100615048, &qword_1004EA890);
  __chkstk_darwin();
  v8 = &v14 - v7;
  sub_100003ABC(&qword_100616AE0, &qword_1004EC720);
  __chkstk_darwin();
  v10 = &v14 - v9;
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics;
  *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics) = 1;
  sub_10000F778(a2, &v14 - v9, &qword_100616AE0, &qword_1004EC720);
  SyncedLyricsViewController.currentTranslation.setter(v10);
  sub_10000F778(a3, v8, &qword_100615048, &qword_1004EA890);
  SyncedLyricsViewController.currentTransliteration.setter(v8);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v13 = *(v3 + v12);
  *(v3 + v12) = a1;

  sub_10049870C(v13);

  *(v3 + v11) = 0;
}

Swift::Bool __swiftcall SyncedLyricsViewController.handleSelectGesture()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 1)
  {
    return 0;
  }

  v2 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (!v2)
  {
    return 0;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10000F778(v2 + v3, &v13, &qword_100615100, &unk_1004EA8E0);
  if (!v14)
  {
    sub_100007214(&v13, &qword_100615100, &unk_1004EA8E0);
    return 0;
  }

  sub_100013414(&v13, v15);
  v4 = v16;
  v5 = v17;
  sub_100009178(v15, v16);
  v6 = *(v5 + 16);
  v7 = v2;
  v8 = v6(v4, v5);
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  result = swift_beginAccess();
  v11 = *(v0 + v9);
  if ((v11 & 0xC000000000000001) != 0)
  {

    v12 = sub_1004BD484();

    goto LABEL_8;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v8 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v12 = *(v11 + 8 * v8 + 32);
LABEL_8:
    sub_10049D388(v12);

    sub_100004C6C(v15);
    return 1;
  }

  __break(1u);
  return result;
}

void sub_10049F2E4(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (v3)
  {
    _s19SBS_TextContentViewCMa(0);
    if (swift_dynamicCastClass())
    {
      v5 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
      if (v5)
      {
        swift_beginAccess();
        v6 = *(v5 + 96);
        if (v6)
        {
          v7 = *(v5 + 104);
          v8 = v3;

          v9 = sub_10002F518(v6, v7);
          v10 = v6(v9);
          swift_beginAccess();
          if (*(v5 + 88) == 1)
          {
            v11 = Lyrics.spatialOffset.getter();
            sub_10003CC4C(v6, v7);
          }

          else
          {

            sub_10003CC4C(v6, v7);
            v11 = 0.0;
          }

          sub_10047ABD0(a2 & 1, v10 - v11);
        }
      }
    }
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.presentSharing()()
{
  v3 = v0;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_19:
    v18 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager];
    if (!v18)
    {
      return;
    }

    swift_beginAccess();
    v19 = *(v18 + 96);
    if (!v19)
    {
      return;
    }

    v20 = *(v18 + 104);

    v21 = sub_10002F518(v19, v20);
    v22 = v19(v21);
    swift_beginAccess();
    if (*(v18 + 88) == 1)
    {
      v23 = Lyrics.spatialOffset.getter();
      sub_10003CC4C(v19, v20);
    }

    else
    {

      sub_10003CC4C(v19, v20);
      v23 = 0.0;
    }

    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    if (*&v3[v24])
    {

      Lyrics.line(before:useOriginalLines:)(0, &v48, v22 - v23);

      if (*(&v49 + 1))
      {
        sub_100013414(&v48, v51);
        v25 = v52;
        v26 = v53;
        sub_100009178(v51, v52);
        v27 = (*(v26 + 16))(v25, v26);
        v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v29 = *&v3[v28];
        if ((v29 & 0xC000000000000001) != 0)
        {
          goto LABEL_58;
        }

        if ((v27 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v27 < *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v30 = *(v29 + 8 * v27 + 32);
          goto LABEL_30;
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v50 = 0;
      v48 = 0u;
      v49 = 0u;
    }

    sub_100007214(&v48, &qword_100615100, &unk_1004EA8E0);
    return;
  }

  v6 = sub_1004BD6A4();
  if (!v6)
  {
    goto LABEL_19;
  }

LABEL_3:
  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_34;
  }

  if ((v5 & 0xC000000000000001) != 0)
  {
LABEL_34:

    v31 = sub_1004BD484();

    v8 = v31;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v8 = *(v5 + 8 * v7 + 32);
LABEL_8:
  v7 = v8;
  while (1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v7 + v2, v51);

    sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
    if (!swift_dynamicCast())
    {
      goto LABEL_39;
    }

    sub_10001342C(v7 + v2, v51);
    v9 = v52;
    v1 = v53;
    sub_100009178(v51, v52);
    v10 = (*(v1 + 16))(v9, v1);
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    sub_100004C6C(v51);
    v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v11 = *&v3[v1];
    if (v11 >> 62)
    {
      goto LABEL_38;
    }

    if (v5 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

LABEL_39:
    sub_10001342C(v7 + v2, v51);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_48;
    }

    sub_10001342C(v7 + v2, v51);
    v32 = v52;
    v33 = v53;
    sub_100009178(v51, v52);
    v34 = (*(v33 + 16))(v32, v33);
    sub_100004C6C(v51);
    if (v34 < 1)
    {
      goto LABEL_48;
    }

    sub_10001342C(v7 + v2, v51);
    v35 = v52;
    v36 = v53;
    sub_100009178(v51, v52);
    v37 = (*(v36 + 16))(v35, v36);
    v38 = v37 - 1;
    if (__OFSUB__(v37, 1))
    {
      goto LABEL_54;
    }

    sub_100004C6C(v51);
    v39 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v40 = *&v3[v39];
    if ((v40 & 0xC000000000000001) != 0)
    {
      goto LABEL_55;
    }

    if ((v38 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v38 < *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v17 = v40 + 8 * v38;
LABEL_46:
      v41 = *(v17 + 32);
      goto LABEL_47;
    }

    __break(1u);
LABEL_58:

    v47 = sub_1004BD484();

    v30 = v47;
LABEL_30:
    v7 = v30;
    sub_100004C6C(v51);
  }

LABEL_37:
  __break(1u);
LABEL_38:
  if (v5 >= sub_1004BD6A4())
  {
    goto LABEL_39;
  }

LABEL_13:
  sub_10001342C(v7 + v2, v51);
  v12 = v52;
  v13 = v53;
  sub_100009178(v51, v52);
  v14 = (*(v13 + 16))(v12, v13);
  v15 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100004C6C(v51);
    v16 = *&v3[v1];
    if ((v16 & 0xC000000000000001) == 0)
    {
      if ((v15 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v17 = v16 + 8 * v15;
        goto LABEL_46;
      }

      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:

      v41 = sub_1004BD484();

LABEL_47:

      v7 = v41;
      goto LABEL_48;
    }
  }

  v46 = sub_1004BD484();

  v7 = v46;
LABEL_48:
  v42 = v7;
  [v42 setHighlighted:1];
  sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
  v43 = sub_1004BCB44();
  v44 = swift_allocObject();
  *(v44 + 16) = v3;
  *(v44 + 24) = v42;
  v45 = v3;
  OS_dispatch_queue.asyncAfter(_:block:)(sub_1004AFC9C, v44, 0.3);
}

id sub_10049FBDC(char *a1)
{
  v3 = type metadata accessor for SyncedLyricsSharingTransitionInfo(0);
  __chkstk_darwin();
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v7 = &v56 - v6;
  v8 = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = &v56 - v12;
  v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v14], v59);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  v15 = swift_dynamicCast();
  v16 = *(v9 + 56);
  if ((v15 & 1) == 0)
  {
    v16(v7, 1, 1, v8);
    return sub_100007214(v7, &qword_100616C00, &unk_1004EBFF0);
  }

  v16(v7, 0, 1, v8);
  sub_1004B492C(v7, v13, type metadata accessor for Lyrics.TextLine);
  v17 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  if (!v17)
  {
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  [v17 copy];
  sub_1004BD284();
  swift_unknownObjectRelease();
  sub_100009130(0, &qword_100615B60, UIView_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  v58 = v62;
  [a1 cancelTrackingWithEvent:0];
  v18 = sub_1004B4994(v13, v11, type metadata accessor for Lyrics.TextLine);
  v19 = *&v13[*(v8 + 60)];
  v20 = v1;
  v21 = v19(v18);
  v22 = v20;
  result = [v20 view];
  if (result)
  {
    v24 = result;
    if (v21)
    {
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    v26 = UIView.untransformedFrame.getter();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [v24 convertRect:*&v22[v33] fromCoordinateSpace:{v26, v28, v30, v32}];
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;

    LOBYTE(v33) = [a1 isSelected];
    [a1 transform];
    v42 = v60;
    v43 = v61;
    v57 = v59[0];
    v56 = v59[1];
    v44 = swift_allocObject();
    *(v44 + 16) = a1;
    v45 = swift_allocObject();
    *(v45 + 16) = a1;
    sub_1004B492C(v11, v5, type metadata accessor for Lyrics.TextLine);
    *&v5[v3[5]] = v58;
    *&v5[v3[6]] = v25;
    v46 = &v5[v3[7]];
    *v46 = v35;
    *(v46 + 1) = v37;
    *(v46 + 2) = v39;
    *(v46 + 3) = v41;
    v5[v3[8]] = v33;
    v47 = &v5[v3[9]];
    v48 = v56;
    *v47 = v57;
    *(v47 + 1) = v48;
    *(v47 + 4) = v42;
    *(v47 + 5) = v43;
    v49 = &v5[v3[10]];
    *v49 = sub_1004B4A4C;
    v49[1] = v44;
    v50 = &v5[v3[11]];
    *v50 = sub_1004B4A60;
    v50[1] = v45;
    v51 = &v22[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
    swift_beginAccess();
    v52 = *v51;
    if (*v51)
    {
      v53 = *(v51 + 1);
      v54 = a1;
      sub_10002F518(v52, v53);
      v52(v5);
      sub_10003CC4C(v52, v53);
    }

    else
    {
      v55 = a1;
    }

    sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsSharingTransitionInfo);
    return sub_1004B3CFC(v13, type metadata accessor for Lyrics.TextLine);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SyncedLyricsViewController.displayLinkResumeIfNeeded()()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink);
  if (v1)
  {
    v2 = v1;
    [v2 setPaused:sub_1004A6098()];
  }
}

void sub_1004A01CC(uint64_t a1, __n128 a2)
{
  v3 = v2;
  sub_1004AC910();
  v4 = &v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v4)
  {
    v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v6 = *(v4 + 7);
    v7 = *&v3[v5];
    [v7 contentInset];
    [v7 setContentInset:v6];
LABEL_23:

    goto LABEL_24;
  }

  if ((v4[48] & 0x80000000) == 0)
  {
    v8 = *(v4 + 2);
    v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*&v3[v9] contentOffset];
    v11 = v10;
    v13 = v12;
    v14 = [v3 view];
    if (v14)
    {
      v15 = v14;
      [v14 frame];
      v17 = v16;

      v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
      swift_beginAccess();
      v19 = *&v3[v18];
      if (v19 > 0.0)
      {
LABEL_8:
        v24 = v11;
        v25 = v13;
        v26 = v17;
        v27 = v8 * (CGRectGetHeight(*(&v19 - 3)) / 100.0);
        [*(v4 + 25) ascender];
        v29 = v27 - v28;
        goto LABEL_21;
      }

      v20 = [v3 view];
      if (v20)
      {
        v21 = v20;
        [v20 frame];
        v23 = v22;

        v19 = v23;
        goto LABEL_8;
      }

LABEL_36:
      __break(1u);
      return;
    }

LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v31 = *&v3[v30];
  if (v31 >> 62)
  {
    if (sub_1004BD6A4())
    {
LABEL_11:
      if ((v31 & 0xC000000000000001) != 0)
      {

        v32 = sub_1004BD484();
      }

      else
      {
        if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_33;
        }

        v32 = *(v31 + 32);
      }

      v33 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v32 + v33, v64);

      sub_100013414(v64, v65);
      v34 = v66;
      v35 = v67;
      sub_100009178(v65, v66);
      v36 = (*(v35 + 16))(v34, v35);
      v37 = *&v3[v30];
      if ((v37 & 0xC000000000000001) != 0)
      {

        v63 = sub_1004BD484();

        v38 = v63;
        goto LABEL_18;
      }

      if ((v36 & 0x8000000000000000) == 0)
      {
        if (v36 < *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v38 = *(v37 + 8 * v36 + 32);
LABEL_18:
          v39 = v38;
          v40 = UIView.untransformedFrame.getter();
          v42 = v41;
          v44 = v43;
          v46 = v45;

          sub_1004A688C(v40, v42, v44, v46);
          v48 = v47;

          v29 = fabs(v48);
          sub_100004C6C(v65);
          goto LABEL_21;
        }

LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }
  }

  else if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

  [*(v4 + 25) _bodyLeading];
  v29 = v49;
LABEL_21:
  v50 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v51 = *&v3[v50];
  [v51 contentInset];
  [v51 setContentInset:v29];

  [*&v3[v50] contentOffset];
  if (v52 <= 0.0)
  {
    v7 = *&v3[v50];
    [v7 contentOffset];
    [v7 setContentOffset:?];
    goto LABEL_23;
  }

LABEL_24:
  *&v64[0] = 0;
  *(&v64[0] + 1) = 0xE000000000000000;
  sub_1004BD404(49);
  v70 = v64[0];
  v71._object = 0x800000010050F1D0;
  v71._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1004BC024(v71);
  v53 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v3[v53] contentOffset];
  v68 = v54;
  v69 = v55;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v56 = v70;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v57 = sub_1004B80B4();
  sub_100007084(v57, qword_100616A40);

  v58 = sub_1004B8094();
  v59 = sub_1004BC9A4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *&v70 = v61;
    *v60 = 136315138;
    v62 = sub_100441BE8(v56, *(&v56 + 1), &v70);

    *(v60 + 4) = v62;
    _os_log_impl(&_mh_execute_header, v58, v59, "%s", v60, 0xCu);
    sub_100004C6C(v61);
  }

  else
  {
  }
}

void sub_1004A07AC()
{
  v1 = swift_allocObject();
  *(v1 + 16) = isEscapingClosureAtFileLocation;
  if (*(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    v3 = *(isEscapingClosureAtFileLocation + v2);
    if (!(v3 >> 62))
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        goto LABEL_4;
      }

LABEL_13:
      v15 = isEscapingClosureAtFileLocation;

      return;
    }
  }

  else
  {
    v11 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = isEscapingClosureAtFileLocation;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1004B4D3C;
    *(v12 + 24) = v3;
    v21 = sub_100009350;
    v22 = v12;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_100008224;
    v20 = &unk_1005D6188;
    v13 = _Block_copy(&aBlock);
    v14 = isEscapingClosureAtFileLocation;

    [v11 performWithoutAnimation:v13];
    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  v4 = sub_1004BD6A4();
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_4:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_16;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_16:
    v16 = isEscapingClosureAtFileLocation;

    v8 = sub_1004BD484();

    goto LABEL_9;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
    v7 = isEscapingClosureAtFileLocation;
    v8 = v6;
LABEL_9:
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1004B4D34;
    *(v9 + 24) = v1;
    v21 = sub_1000081FC;
    v22 = v9;
    aBlock = _NSConcreteStackBlock;
    v18 = 1107296256;
    v19 = sub_10013ABCC;
    v20 = &unk_1005D61D8;
    v10 = _Block_copy(&aBlock);

    [v8 addCompletion:v10];

    _Block_release(v10);

    return;
  }

  __break(1u);
}

void sub_1004A0AD8(void *a1, uint64_t a2)
{
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1004B55F0;
  *(v5 + 24) = v4;
  v8[4] = sub_100009350;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100008224;
  v8[3] = &unk_1005D6250;
  v6 = _Block_copy(v8);
  v7 = a1;

  [v3 performWithoutAnimation:v6];
  _Block_release(v6);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }
}

void sub_1004A0C3C(unint64_t a1)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v9 = *(a1 + v8);
  if (v9 >> 62)
  {
    v10 = sub_1004BD6A4();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    goto LABEL_9;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v9 & 0xC000000000000001) != 0)
  {

    v11 = sub_1004BD484();
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = *(v9 + 4);
  }

  v9 = v11;
  v3 = UIView.untransformedFrame.getter();
  v4 = v12;
  v5 = v13;
  v6 = v14;

LABEL_9:
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *(a1 + v2);
  if (v15 >> 62)
  {
    v16 = sub_1004BD6A4();
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_18;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    goto LABEL_40;
  }

  for (i = 0; i != v16; ++i)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v17 = sub_1004BD484();
    }

    else
    {
      v17 = *(v15 + 8 * i + 32);
    }

    v18 = v17;
    sub_1004A302C(v17);
  }

LABEL_18:
  if (!v10)
  {
    return;
  }

  v9 = *(a1 + v8);
  if (!(v9 >> 62))
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_21:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v10 = sub_1004BD484();
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_45;
      }

      v10 = *(v9 + 4);
    }

    [v10 frame];
    v51.origin.x = v3;
    v51.origin.y = v4;
    v51.size.width = v5;
    v51.size.height = v6;
    if (CGRectEqualToRect(v50, v51))
    {
LABEL_34:

      return;
    }

    i = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v10 + i, &v44);
    v19 = v46;
    v20 = v47;
    sub_100009178(&v44, v46);
    v21 = (*(v20 + 16))(v19, v20);
    v22 = *(a1 + v2);
    if ((v22 & 0xC000000000000001) == 0)
    {
      if ((v21 & 0x8000000000000000) != 0)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v21 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v23 = *(v22 + 8 * v21 + 32);
LABEL_29:
      v24 = v23;
      v25 = UIView.untransformedFrame.getter();
      v27 = v26;
      v29 = v28;
      v31 = v30;

      sub_1004A688C(v25, v27, v29, v31);
      v33 = v32;

      sub_100004C6C(&v44);
      v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a1 + v34) setContentOffset:{0.0, v33}];
      v44 = 0;
      v45 = 0xE000000000000000;
      sub_1004BD404(55);
      v42 = v44;
      v43 = v45;
      v48._object = 0x800000010050F0A0;
      v48._countAndFlagsBits = 0xD00000000000002ELL;
      sub_1004BC024(v48);
      v44 = 0;
      v45 = *&v33;
      _s3__C7CGPointVMa_3(0);
      sub_1004BD5C4();
      v49._countAndFlagsBits = 0x20726F6620;
      v49._object = 0xE500000000000000;
      sub_1004BC024(v49);
      sub_10001342C(v10 + i, &v44);
      sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
      sub_1004BD5C4();
      sub_100004C6C(&v44);
      v19 = v42;
      a1 = v43;
      if (qword_100614EF8 == -1)
      {
LABEL_30:
        v35 = sub_1004B80B4();
        sub_100007084(v35, qword_100616A40);

        v36 = sub_1004B8094();
        v37 = sub_1004BC9A4();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v44 = v39;
          *v38 = 136315138;
          v40 = sub_100441BE8(v19, a1, &v44);

          *(v38 + 4) = v40;
          _os_log_impl(&_mh_execute_header, v36, v37, "%s", v38, 0xCu);
          sub_100004C6C(v39);
        }

        else
        {
        }

        goto LABEL_34;
      }

LABEL_47:
      swift_once();
      goto LABEL_30;
    }

LABEL_45:

    v41 = sub_1004BD484();

    v23 = v41;
    goto LABEL_29;
  }

LABEL_41:
  if (sub_1004BD6A4())
  {
    goto LABEL_21;
  }
}

void sub_1004A11E4(char *a1, char a2, double *a3)
{
  v4 = v3;
  v87 = a3;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v83 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v86 = &v82 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v85 = *(v9 - 8);
  __chkstk_darwin();
  v84 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v82 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v13] frame];
  Width = CGRectGetWidth(v95);
  v15 = [v4 view];
  if (!v15)
  {
    goto LABEL_58;
  }

  v16 = v15;
  v17 = &selRef_shuffleCommand;
  [v15 layoutMargins];

  sub_1004BC914();
  v19 = Width - v18;
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v20], v92);
  v21 = sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  v88 = v9;
  if (swift_dynamicCast())
  {
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v23 = *&v4[v22];
    v24 = &selRef_shuffleCommand;
    if (v23 && !*(v23 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType))
    {
      v27 = 1.0;
    }

    else
    {
      v25 = v21;
      v26 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      v27 = v26[79];
      v21 = v25;
    }

    sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_shuffleCommand;
  }

  else
  {
    v27 = 1.0;
    v24 = &selRef_shuffleCommand;
    if ((swift_dynamicCast() & 1) == 0 && swift_dynamicCast())
    {
    }
  }

  sub_100004C6C(v92);
  if (a2 == 2)
  {
    [a1 sizeThatFits:{v19 * v27, INFINITY}];
  }

  else
  {
    v28 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v28)
    {
      v29 = v21;
      v30 = *&a1[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
      ObjectType = swift_getObjectType();
      v92[0] = v28;
      v32 = *(v30 + 96);
      v33 = v30;
      v21 = v29;
      v32(a2 & 1, ObjectType, v33, v19 * v27, INFINITY);
    }
  }

  sub_10001342C(&a1[v20], v92);
  if (swift_dynamicCast())
  {
    v34 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    if ((*v34 & 1) == 0)
    {
      v82 = v21;
      v35 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
      if (v35)
      {
        v36 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v35 + v36, v89);
        v38 = v90;
        v37 = v91;
        sub_100009178(v89, v90);
        (*(v37 + 16))(v38, v37);
        sub_100004C6C(v89);
      }

      sub_10001342C(&a1[v20], v89);
      v39 = v90;
      v40 = v91;
      sub_100009178(v89, v90);
      (*(v40 + 16))(v39, v40);
      sub_100004C6C(v89);
      if (v35)
      {
        v24 = &selRef_shuffleCommand;
        v17 = &selRef_shuffleCommand;
      }

      else
      {
        v24 = &selRef_shuffleCommand;
        v17 = &selRef_shuffleCommand;
      }

      v21 = v82;
    }
  }

  sub_100004C6C(v92);
  sub_10001342C(&a1[v20], v92);
  v41 = v93;
  v42 = v94;
  sub_100009178(v92, v93);
  v43 = (*(v42 + 16))(v41, v42);
  sub_100004C6C(v92);
  if (!v43)
  {
    swift_beginAccess();
    goto LABEL_50;
  }

  if (v87[4])
  {
    sub_10001342C(&a1[v20], v92);
    v44 = v93;
    v45 = v94;
    sub_100009178(v92, v93);
    v46 = (*(v45 + 16))(v44, v45);
    v47 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
      __break(1u);
    }

    else
    {
      sub_100004C6C(v92);
      v48 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v49 = *&v4[v48];
      if ((v49 & 0xC000000000000001) == 0)
      {
        if ((v47 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v47 < *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v50 = *(v49 + 8 * v47 + 32);
          goto LABEL_31;
        }

        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v81 = sub_1004BD484();

    v50 = v81;
LABEL_31:
    v51 = v50;
    [v51 frame];
    Height = CGRectGetHeight(v96);
    v53 = UIView.untransformedFrame.getter();
    v55 = v54;
    v57 = v56;
    v59 = v58;

    v97.origin.x = v53;
    v97.origin.y = v55;
    v97.size.width = v57;
    v97.size.height = v59;
    CGRectGetMaxY(v97);

    v60 = v88;
    v61 = v86;
    if (Height > 0.0)
    {
      swift_beginAccess();
    }

    goto LABEL_38;
  }

  v63 = v87[2];
  v62 = v87[3];
  v65 = *v87;
  v64 = v87[1];
  v98.origin.x = *v87;
  v98.origin.y = v64;
  v98.size.width = v63;
  v98.size.height = v62;
  v66 = CGRectGetHeight(v98);
  v99.origin.x = v65;
  v99.origin.y = v64;
  v99.size.width = v63;
  v99.size.height = v62;
  CGRectGetMaxY(v99);
  if (v66 > 0.0)
  {
    swift_beginAccess();
  }

  v60 = v88;
  v61 = v86;
LABEL_38:
  v67 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v67 != 1)
  {
    goto LABEL_50;
  }

  sub_10001342C(&a1[v20], v92);
  v68 = swift_dynamicCast();
  v69 = *(v85 + 56);
  if ((v68 & 1) == 0)
  {
    v69(v61, 1, 1, v60);
    sub_100007214(v61, &qword_100616C00, &unk_1004EBFF0);
    goto LABEL_48;
  }

  v69(v61, 0, 1, v60);
  v70 = v61;
  v71 = v84;
  sub_1004B492C(v70, v84, type metadata accessor for Lyrics.TextLine);
  if (*(v71 + *(v60 + 48)) != 1)
  {
    v77 = v71;
LABEL_47:
    sub_1004B3CFC(v77, type metadata accessor for Lyrics.TextLine);
    goto LABEL_48;
  }

  v72 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v73 = *&v4[v72];
  if (!v73)
  {
    v77 = v84;
    goto LABEL_47;
  }

  v82 = v21;
  v87 = &v82;
  v74 = *(v73 + 48);
  __chkstk_darwin();
  v75 = v84;
  *(&v82 - 2) = v84;

  v76 = v83;
  sub_100437198(sub_1004483E0, v74, v83);

  sub_1004B3CFC(v75, type metadata accessor for Lyrics.TextLine);
  if ((*(v85 + 48))(v76, 1, v88) == 1)
  {
    sub_100007214(v76, &qword_100616C00, &unk_1004EBFF0);
    v17 = &selRef_shuffleCommand;
    v24 = &selRef_shuffleCommand;
  }

  else
  {
    v80 = *(v76 + 16);
    sub_1004B3CFC(v76, type metadata accessor for Lyrics.TextLine);
    v17 = &selRef_shuffleCommand;
    v24 = &selRef_shuffleCommand;
    if (v80 > 0)
    {
      goto LABEL_50;
    }
  }

LABEL_48:
  sub_10001342C(&a1[v20], v92);
  if (swift_dynamicCast())
  {
  }

LABEL_50:
  v78 = [v4 v24[87]];
  if (v78)
  {
    v79 = v78;
    [v78 v17[278]];

    return;
  }

LABEL_59:
  __break(1u);
}

id sub_1004A1CB0()
{
  sub_1004B6E64();
  __chkstk_darwin();
  v72 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1004BBE14();
  v73 = *(v2 - 8);
  v74 = v2;
  __chkstk_darwin();
  v78 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v79 = &v70 - v4;
  v5 = type metadata accessor for Lyrics.Translation(0);
  v76 = *(v5 - 8);
  v77 = v5;
  __chkstk_darwin();
  v71 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616AE0, &qword_1004EC720);
  __chkstk_darwin();
  v70 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v75 = &v70 - v8;
  v9 = type metadata accessor for Lyrics.Transliteration(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615048, &qword_1004EA890);
  __chkstk_darwin();
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v70 - v15;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v0;
  sub_10000F778(v18, v16, &qword_100615048, &qword_1004EA890);
  v20 = *(v10 + 48);
  if (v20(v16, 1, v9))
  {
    sub_100007214(v16, &qword_100615048, &qword_1004EA890);
  }

  else
  {
    sub_1004B4994(v16, v12, type metadata accessor for Lyrics.Transliteration);
    sub_100007214(v16, &qword_100615048, &qword_1004EA890);
    v21 = v12[*(v9 + 24)];
    sub_1004B3CFC(v12, type metadata accessor for Lyrics.Transliteration);
    if (v21)
    {
      v22 = 1;
      goto LABEL_11;
    }
  }

  v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v24 = *(v0 + v23);
  if (v24)
  {
    v25 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_10000F778(v24 + v25, v14, &qword_100615048, &qword_1004EA890);
    if (v20(v14, 1, v9))
    {
      sub_100007214(v14, &qword_100615048, &qword_1004EA890);
      v22 = 0;
    }

    else
    {
      sub_1004B4994(v14, v12, type metadata accessor for Lyrics.Transliteration);
      sub_100007214(v14, &qword_100615048, &qword_1004EA890);
      v22 = v12[*(v9 + 24)];
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.Transliteration);
    }

    v19 = v0;
  }

  else
  {
    v22 = 0;
  }

LABEL_11:
  v27 = v76;
  v26 = v77;
  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  v29 = v75;
  sub_10000F778(v19 + v28, v75, &qword_100616AE0, &qword_1004EC720);
  v30 = *(v27 + 48);
  v31 = v30(v29, 1, v26);
  v32 = v78;
  if (v31)
  {
    sub_100007214(v29, &qword_100616AE0, &qword_1004EC720);
    goto LABEL_15;
  }

  v33 = v71;
  sub_1004B4994(v29, v71, type metadata accessor for Lyrics.Translation);
  sub_100007214(v29, &qword_100616AE0, &qword_1004EC720);
  v34 = *(v33 + *(v26 + 28));
  sub_1004B3CFC(v33, type metadata accessor for Lyrics.Translation);
  if (v34 != 1)
  {
LABEL_15:
    v36 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v37 = *(v19 + v36);
    v35 = v79;
    if (v37)
    {
      v38 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
      swift_beginAccess();
      v39 = v37 + v38;
      v40 = v70;
      sub_10000F778(v39, v70, &qword_100616AE0, &qword_1004EC720);
      if (!v30(v40, 1, v26))
      {
        v41 = v71;
        sub_1004B4994(v40, v71, type metadata accessor for Lyrics.Translation);
        sub_100007214(v40, &qword_100616AE0, &qword_1004EC720);
        v42 = *(v41 + *(v26 + 28));
        sub_1004B3CFC(v41, type metadata accessor for Lyrics.Translation);
        if (v22 & 1) != 0 || (v42)
        {
          goto LABEL_22;
        }

        return 0;
      }

      sub_100007214(v40, &qword_100616AE0, &qword_1004EC720);
    }

    if (v22)
    {
      goto LABEL_22;
    }

    return 0;
  }

  v35 = v79;
LABEL_22:
  sub_1004BBDA4();
  v44 = v73;
  v43 = v74;
  (*(v73 + 16))(v32, v35, v74);
  if (qword_100614E40 != -1)
  {
    swift_once();
  }

  v45 = qword_100619A00;
  sub_1004B6DF4();
  v46 = sub_1004BBED4();
  v48 = v47;
  (*(v44 + 8))(v35, v43);
  sub_100003ABC(&unk_100616F00, &unk_1004EC1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004C50C0;
  *(inited + 32) = NSForegroundColorAttributeName;
  v50 = v19 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v51 = *(v50 + 368);
  v52 = sub_100009130(0, &unk_1006169D0, UIColor_ptr);
  *(inited + 40) = v51;
  *(inited + 64) = v52;
  *(inited + 72) = NSFontAttributeName;
  v53 = *(v50 + 344);
  *(inited + 104) = sub_100009130(0, &qword_100616F10, UIFont_ptr);
  *(inited + 80) = v53;
  v54 = NSForegroundColorAttributeName;
  v55 = v51;
  v56 = NSFontAttributeName;
  v57 = v53;
  sub_100447ACC(inited);
  swift_setDeallocating();
  sub_100003ABC(&qword_100615670, &unk_1004EB270);
  swift_arrayDestroy();
  v58 = [objc_allocWithZone(NSTextAttachment) init];
  v59 = sub_1004BBE24();
  v60 = [objc_opt_self() systemImageNamed:v59];

  if (v60)
  {
    v61 = [v60 imageWithTintColor:*(v50 + 368)];
  }

  else
  {
    v61 = 0;
  }

  [v58 setImage:v61];

  _s3__C3KeyVMa_1(0);
  sub_1004B4DA0(&qword_100616F20, _s3__C3KeyVMa_1, &unk_1004EA7A0);
  v63 = v58;
  isa = sub_1004BBC24().super.isa;
  v62 = [objc_opt_self() attributedStringWithAttachment:v63 attributes:isa];

  v80 = 32;
  v81 = 0xE100000000000000;
  v82._countAndFlagsBits = v46;
  v82._object = v48;
  sub_1004BC024(v82);

  v65 = objc_allocWithZone(NSAttributedString);
  v66 = sub_1004BBE24();

  v67 = sub_1004BBC24().super.isa;

  v68 = [v65 initWithString:v66 attributes:v67];

  [v62 appendAttributedString:v68];
  return v62;
}

void sub_1004A27B0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    v6 = a1;
    goto LABEL_10;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v8 = *&v3[v7];
  if (v8 >> 62)
  {
    v9 = sub_1004BD6A4();
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  v10 = v9 - 1;
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v10 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v8 + 8 * v10 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v6 = sub_1004BD484();

LABEL_10:
  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v12 = *&v3[v11];
  v13 = a1;
  [v12 frame];
  Width = CGRectGetWidth(v101);
  v15 = [v3 view];
  if (!v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v15;
  [v15 layoutMargins];

  sub_1004BC914();
  v18 = Width - v17;
  v19 = v6;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1004A1CB0();
  v28 = &selRef_values;
  if (!v27)
  {
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v34 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    if (v34)
    {
      [v34 removeFromSuperview];
      v35 = *&v3[v33];
    }

    else
    {
      v35 = 0;
    }

    v41 = &off_100616000;
    *&v3[v33] = 0;

    v53 = 0;
    v54 = 0;
    goto LABEL_26;
  }

  v29 = v27;
  v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
  v31 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
  if (v31)
  {
    v97 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel];
    v32 = v31;
  }

  else
  {
    v36 = [objc_allocWithZone(UILabel) init];
    v97 = v36;
    [v36 setNumberOfLines:0];
    v37 = *&v3[v30];
    *&v3[v30] = v36;
    v32 = v36;

    v28 = &selRef_values;
    v31 = 0;
  }

  v38 = v31;
  [v32 setAttributedText:v29];
  [v32 v28[438]];
  v39 = [v3 view];
  if (!v39)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v40 = v39;
  [v39 layoutMargins];

  v102.origin.x = v20;
  v102.origin.y = v22;
  v102.size.width = v24;
  v102.size.height = v26;
  CGRectGetMaxY(v102);
  v41 = &off_100616000;
  swift_beginAccess();
  v42 = *&v3[v11];
  v98 = 0u;
  v99 = 0u;
  v100 = 1;
  v43 = v42;
  sub_1004BCDA4();
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v52 = objc_opt_self();
  if ([v52 _isInAnimationBlockWithAnimationsEnabled] && (*(a2 + 32) & 1) == 0)
  {
    v54 = swift_allocObject();
    *(v54 + 16) = v45;
    *(v54 + 24) = v47;
    *(v54 + 32) = v49;
    *(v54 + 40) = v51;
    v55 = *(a2 + 16);
    *(v54 + 48) = *a2;
    *(v54 + 64) = v55;
    *(v54 + 80) = v3;
    *(v54 + 88) = &v97;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_1004B4A34;
    *(v56 + 24) = v54;
    aBlock[4] = sub_1000081FC;
    aBlock[5] = v56;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100008224;
    aBlock[3] = &unk_1005D5DC8;
    v57 = _Block_copy(aBlock);
    v58 = v3;

    [v52 performWithoutAnimation:v57];
    _Block_release(v57);
    LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

    if ((v57 & 1) == 0)
    {
      v53 = sub_1004B4A34;
      v32 = v97;
      v41 = &off_100616000;
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  v53 = 0;
  v54 = 0;
LABEL_23:
  [v32 setAlpha:1.0];
  [v97 setFrame:{v45, v47, v49, v51}];
  [*&v3[v11] addSubview:v97];
  v59 = v97;
  [v59 frame];
  v20 = v60;
  v22 = v61;
  v24 = v62;
  v26 = v63;

LABEL_26:
  v64 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  swift_beginAccess();
  if (*v64)
  {
    v95 = v64[3];
    v65 = v64[1];
    v66 = *v64;
    [v66 sizeThatFits:{v18, INFINITY}];
    v68 = v67;
    v70 = v69;
    v71 = *&v3[v11];
    v72 = v66;
    [v71 frame];
    v73 = (CGRectGetWidth(v103) - v68) * 0.5;
    v104.origin.x = v20;
    v104.origin.y = v22;
    v104.size.width = v24;
    v104.size.height = v26;
    [v72 setFrame:{v73, v65 + CGRectGetMaxY(v104), v68, v70}];

    [*&v3[v11] addSubview:v72];
    [v72 frame];
    v20 = v74;
    v22 = v75;
    v24 = v76;
    v78 = v77;

    v26 = v95 + v78;
  }

  v79 = *&v3[v11];
  [v79 frame];
  v80 = CGRectGetWidth(v105);
  v106.origin.x = v20;
  v106.origin.y = v22;
  v106.size.width = v24;
  v106.size.height = v26;
  [v79 setContentSize:{v80, CGRectGetMaxY(v106)}];

  v81 = v41[336] + v3;
  swift_beginAccess();
  if (*v81)
  {

    v82 = *&v3[v11];
  }

  else
  {
    [*&v3[v11] frame];
    Height = CGRectGetHeight(v107);
    [*&v3[v11] contentInset];
    v85 = v84;
    v86 = UIView.untransformedFrame.getter();
    v88 = v87;
    v90 = v89;
    v92 = v91;

    v108.origin.x = v86;
    v108.origin.y = v88;
    v108.size.width = v90;
    v108.size.height = v92;
    v93 = Height - (v85 + CGRectGetHeight(v108));
    v94 = *&v3[v11];
    v82 = v94;
    if (v93 <= 0.0)
    {
      [v94 contentInset];
    }
  }

  [v82 contentInset];
  [v82 setContentInset:?];

  sub_10003CC4C(v53, v54);
}

id sub_1004A2F74(uint64_t a1, id *a2, double a3, double a4, double a5, double a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v18.origin.y = a8;
  v18.origin.x = a7;
  v18.size.width = a9;
  v18.size.height = a10;
  MaxY = CGRectGetMaxY(v18);
  v16 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  [*a2 setFrame:{a3, MaxY + *(v16 + 112), a5, a6}];
  return [*a2 setAlpha:0.0];
}

void sub_1004A302C(char *a1)
{
  v2 = v1;
  memset(v33, 0, sizeof(v33));
  v4 = 1;
  v34 = 1;
  sub_1004A11E4(a1, 2, v33);
  UIView.untransformedFrame.setter(v5, v6, v7, v8);
  v9 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v9 + v10, v30, &qword_100615100, &unk_1004EA8E0);
    v11 = v31;
    if (v31)
    {
      v12 = v32;
      sub_100009178(v30, v31);
      v13 = *(v11 - 8);
      v14 = __chkstk_darwin();
      v16 = &v29[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v13 + 16))(v16, v14);
      sub_100007214(v30, &qword_100615100, &unk_1004EA8E0);
      v17 = (*(v12 + 16))(v11, v12);
      (*(v13 + 8))(v16, v11);
      v4 = 0;
      goto LABEL_6;
    }

    sub_100007214(v30, &qword_100615100, &unk_1004EA8E0);
  }

  v17 = 0;
LABEL_6:
  v18 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v18], v30);
  v19 = v31;
  v20 = v32;
  sub_100009178(v30, v31);
  v21 = (*(v20 + 16))(v19, v20);
  if (v4)
  {
    sub_100004C6C(v30);
  }

  else
  {
    v22 = v21;
    sub_100004C6C(v30);
    if (v17 == v22)
    {
      sub_1004A3320();
    }
  }

  sub_10001342C(&a1[v18], v30);
  v23 = v31;
  v24 = v32;
  sub_100009178(v30, v31);
  v25 = (*(v24 + 16))(v23, v24);
  v26 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v27 = *(v2 + v26);
  if (v27)
  {
    v28 = *(*(v27 + 40) + 16) - 1;
  }

  else
  {
    v28 = -1;
  }

  sub_100004C6C(v30);
  if (v25 == v28)
  {
    sub_1004A27B0(a1, v33);
  }
}

void sub_1004A3320()
{
  v1 = *&v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (v1)
  {
    v2 = v0;
    v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v1 + v3, &v36, &qword_100615100, &unk_1004EA8E0);
    if (v37)
    {
      sub_100013414(&v36, v38);
      v4 = v39;
      v5 = v40;
      sub_100009178(v38, v39);
      v6 = *(v5 + 16);
      v7 = v1;
      v8 = v6(v4, v5);
      v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v10 = *&v2[v9];
      if ((v10 & 0xC000000000000001) == 0)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v11 = *(v10 + 8 * v8 + 32);
          goto LABEL_7;
        }

        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      v11 = sub_1004BD484();

LABEL_7:
      v12 = v7;
      [v12 systemLayoutSizeFittingSize:{INFINITY, INFINITY}];
      v14 = v13;
      v16 = v15;
      v17 = *&v11[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment];
      v18 = v11;
      v19 = UIView.untransformedFrame.getter();
      v21 = v20;
      v23 = v22;
      v25 = v24;

      if (v17 == 2)
      {
        v41.origin.x = v19;
        v41.origin.y = v21;
        v41.size.width = v23;
        v41.size.height = v25;
        v19 = CGRectGetMaxX(v41) - v14;
      }

      v26 = v18;
      UIView.untransformedFrame.getter();
      v28 = v27;

      v29 = [v2 view];
      if (v29)
      {
        v30 = v29;
        v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [v30 convertPoint:*&v2[v31] fromCoordinateSpace:{v19, v28 - v16}];
        v33 = v32;
        v35 = v34;

        [v12 setFrame:{v33, v35, v14, v16}];
        sub_100004C6C(v38);
        return;
      }

      goto LABEL_16;
    }

    sub_100007214(&v36, &qword_100615100, &unk_1004EA8E0);
  }
}

uint64_t sub_1004A35D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Lyrics.Transliteration(0);
  v50 = *(v4 - 8);
  v51 = v4;
  __chkstk_darwin();
  v44 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100615048, &qword_1004EA890);
  __chkstk_darwin();
  v52 = &v42 - v6;
  v48 = type metadata accessor for Lyrics.Translation(0);
  v45 = *(v48 - 8);
  __chkstk_darwin();
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003ABC(&qword_100616AE0, &qword_1004EC720);
  __chkstk_darwin();
  v47 = &v42 - v8;
  v9 = type metadata accessor for Lyrics.TextLine(0);
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
  __chkstk_darwin();
  v46 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v42 - v14;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v49 = (&v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v18 = &v42 - v17;
  __chkstk_darwin();
  v20 = &v42 - v19;
  sub_10001342C(a1, v57);
  v21 = *(v10 + 56);
  v53 = v20;
  v21(v20, 1, 1, v9);
  v22 = type metadata accessor for Lyrics.Translation.Line(0);
  v23 = *(*(v22 - 8) + 56);
  v54 = v15;
  v23(v15, 1, 1, v22);
  sub_10001342C(v57, v56);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  if (swift_dynamicCast())
  {
    v42 = a2;
    v21(v18, 0, 1, v9);
    sub_1004B492C(v18, v12, type metadata accessor for Lyrics.TextLine);
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
    v25 = v55;
    swift_beginAccess();
    v26 = v25 + v24;
    v27 = v47;
    sub_10000F778(v26, v47, &qword_100616AE0, &qword_1004EC720);
    v28 = v21;
    if ((*(v45 + 48))(v27, 1, v48))
    {
      v29 = v54;
      sub_100007214(v54, &qword_100616EF0, &qword_1004EC398);
      sub_100007214(v27, &qword_100616AE0, &qword_1004EC720);
      v30 = v46;
      v23(v46, 1, 1, v22);
    }

    else
    {
      v32 = v43;
      sub_1004B4994(v27, v43, type metadata accessor for Lyrics.Translation);
      sub_100007214(v27, &qword_100616AE0, &qword_1004EC720);
      v30 = v46;
      sub_1004355D8(v12, v46);
      sub_1004B3CFC(v32, type metadata accessor for Lyrics.Translation);
      v29 = v54;
      sub_100007214(v54, &qword_100616EF0, &qword_1004EC398);
    }

    sub_100025B04(v30, v29, &qword_100616EF0, &qword_1004EC398);
    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
    v34 = v55;
    swift_beginAccess();
    v35 = v34 + v33;
    v36 = v52;
    sub_10000F778(v35, v52, &qword_100615048, &qword_1004EA890);
    v37 = (*(v50 + 48))(v36, 1, v51);
    a2 = v42;
    if (v37)
    {
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_100007214(v53, &qword_100616C00, &unk_1004EBFF0);
      sub_100007214(v36, &qword_100615048, &qword_1004EA890);
      v38 = v49;
      v28(v49, 1, 1, v9);
    }

    else
    {
      v39 = v44;
      sub_1004B4994(v36, v44, type metadata accessor for Lyrics.Transliteration);
      sub_100007214(v36, &qword_100615048, &qword_1004EA890);
      v38 = v49;
      sub_100435878(v12, v49);
      sub_1004B3CFC(v39, type metadata accessor for Lyrics.Transliteration);
      sub_1004B3CFC(v12, type metadata accessor for Lyrics.TextLine);
      v31 = v53;
      sub_100007214(v53, &qword_100616C00, &unk_1004EBFF0);
    }

    sub_100025B04(v38, v31, &qword_100616C00, &unk_1004EBFF0);
  }

  else
  {
    v21(v18, 1, 1, v9);
    sub_100007214(v18, &qword_100616C00, &unk_1004EBFF0);
    v31 = v53;
    v29 = v54;
  }

  sub_100013414(v57, a2);
  v40 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  sub_100025B04(v31, a2 + *(v40 + 20), &qword_100616C00, &unk_1004EBFF0);
  return sub_100025B04(v29, a2 + *(v40 + 24), &qword_100616EF0, &qword_1004EC398);
}

void sub_1004A3DE8(uint64_t a1)
{
  sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
  __chkstk_darwin();
  v112 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v104 = &v102 - v4;
  __chkstk_darwin();
  v6 = &v102 - v5;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v113 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v103 = &v102 - v8;
  __chkstk_darwin();
  v110 = &v102 - v9;
  v111 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v11 = (&v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  v115 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v117 = v1;
  v13 = *&v1[v12];
  if (v13 >> 62)
  {
LABEL_64:
    v14 = sub_1004BD6A4();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(a1 + 40);
  v16 = *(v15 + 16);
  v105 = v6;
  v106 = v11;
  if (v16 >= v14)
  {
    goto LABEL_8;
  }

  v17 = *&v117[v115];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18 >= v16)
    {
      goto LABEL_6;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  v18 = sub_1004BD6A4();
  if (v18 < v16)
  {
    goto LABEL_66;
  }

LABEL_6:
  if (v16 != v18)
  {
    if (v16 < v18)
    {
      v11 = &selRef_shuffleCommand;
      v100 = v16;
      while (1)
      {
        v6 = *&v117[v115];
        if ((v6 & 0xC000000000000001) != 0)
        {

          v101 = sub_1004BD484();
        }

        else
        {
          if ((v100 & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          if (v100 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v101 = *(v6 + 8 * v100 + 32);
        }

        ++v100;
        [v101 removeFromSuperview];

        if (v18 == v100)
        {
          goto LABEL_7;
        }
      }
    }

    goto LABEL_67;
  }

LABEL_7:
  swift_beginAccess();
  sub_1004B00AC(v16, v18, sub_1004AFFAC);
  swift_endAccess();
  v11 = v106;
LABEL_8:
  v19 = *&v117[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView];
  *&v117[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;

  v20 = *(v15 + 16);
  v6 = v115;
  if (v20)
  {
    v21 = &v117[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v22 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v23 = v15 + 32;
    v109 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
    swift_beginAccess();
    v114 = v21;
    swift_beginAccess();
    v102 = v22;
    swift_beginAccess();
    do
    {
      v116 = v20;
      sub_10001342C(v23, &v124);
      v25 = v117;
      sub_1004A35D4(&v124, v11);
      v26 = v126;
      v27 = v127;
      sub_100009178(&v124, v126);
      v28 = (*(v27 + 16))(v26, v27);
      v29 = *&v25[v6];
      if (v29 >> 62)
      {
        if (v28 >= sub_1004BD6A4())
        {
LABEL_30:
          sub_10001342C(v11, v123);
          v64 = v111;
          sub_10000F778(v11 + *(v111 + 20), v113, &qword_100616C00, &unk_1004EBFF0);
          sub_10000F778(v11 + *(v64 + 24), v112, &qword_100616EF0, &qword_1004EC398);
          v65 = *&v117[v109];
          v66 = v114;
          if (v65)
          {
            if (*(v65 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || *(v114 + 88) == 1)
            {
              v67 = v11[3];
              v68 = v11[4];
              sub_100009178(v11, v67);
              v6 = v115;
              v69 = (*(v68 + 3))(v67, v68);
            }

            else
            {
              v69 = v114[10];
            }
          }

          else
          {
            v69 = 4;
          }

          memcpy(v128, v66, 0x2B0uLL);
          v70 = objc_allocWithZone(type metadata accessor for SyncedLyricsLineView(0));
          sub_10046E570(v128, v122);
          v71 = sub_10048EECC(v123, v113, v112, v69, v128);
          sub_10046E5CC(v128);
          v72 = [v117 traitCollection];
          v73 = [v72 userInterfaceIdiom];

          if (v73 != 2)
          {
            sub_100009130(0, &qword_100616EF8, UIAction_ptr);
            v74 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v75 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v76 = swift_allocObject();
            *(v76 + 16) = v74;
            *(v76 + 24) = v75;
            v6 = v115;
            v77 = v71;
            v78 = sub_1004BCFD4();
            [v77 addAction:v78 forControlEvents:64];
          }

          v79 = v117;
          v80 = *&v117[v102];
          v34 = v71;
          [v80 addSubview:v34];
          swift_beginAccess();
          sub_1004BC274();
          if (*((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v79[v6] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1004BC2E4();
          }

          sub_1004BC334();
          swift_endAccess();
          if (*v114 == 1)
          {
            [v34 setUserInteractionEnabled:0];
          }

          else
          {
            v24 = [objc_allocWithZone(UILongPressGestureRecognizer) init];
            [v24 setCancelsTouchesInView:0];
            [v24 addTarget:v117 action:"shareGestureHandler:"];
            [v34 addGestureRecognizer:v24];
          }

          goto LABEL_11;
        }
      }

      else if (v28 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v30 = v126;
      v31 = v127;
      sub_100009178(&v124, v126);
      v32 = (*(v31 + 16))(v30, v31);
      v33 = *&v117[v6];
      if ((v33 & 0xC000000000000001) != 0)
      {

        v34 = sub_1004BD484();

        a1 = v105;
      }

      else
      {
        a1 = v105;
        if ((v32 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        if (v32 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v34 = *(v33 + 8 * v32 + 32);
      }

      sub_10001342C(v11, v122);
      v35 = v111;
      sub_10000F778(v11 + *(v111 + 20), v110, &qword_100616C00, &unk_1004EBFF0);
      sub_10000F778(v11 + *(v35 + 24), a1, &qword_100616EF0, &qword_1004EC398);
      v36 = *&v117[v109];
      v108 = v23;
      if (v36)
      {
        if (*(v36 + OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType) || (v114[11] & 1) != 0)
        {
          v37 = v11;
          v38 = v11[3];
          v39 = v11[4];
          sub_100009178(v37, v38);
          v40 = *(v39 + 3);
          v41 = v34;
          v42 = v40(v38, v39);
        }

        else
        {
          v42 = v114[10];
          v44 = v34;
        }
      }

      else
      {
        v43 = v34;
        v42 = 4;
      }

      sub_10001342C(v122, v123);
      v45 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_100004C6C(&v34[v45]);
      sub_100013414(v123, &v34[v45]);
      swift_endAccess();
      v46 = v110;
      v47 = v103;
      sub_10000F778(v110, v103, &qword_100616C00, &unk_1004EBFF0);
      v48 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
      swift_beginAccess();
      sub_100047A5C(v47, &v34[v48], &qword_100616C00, &unk_1004EBFF0);
      swift_endAccess();
      v49 = v104;
      sub_10000F778(a1, v104, &qword_100616EF0, &qword_1004EC398);
      v50 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
      swift_beginAccess();
      sub_100047A5C(v49, &v34[v50], &qword_100616EF0, &qword_1004EC398);
      swift_endAccess();
      *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v42;
      sub_100488724();
      sub_100007214(a1, &qword_100616EF0, &qword_1004EC398);
      sub_100007214(v46, &qword_100616C00, &unk_1004EBFF0);
      sub_100004C6C(v122);
      v51 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
      if (v51)
      {
        v52 = *&v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView + 8];
        ObjectType = swift_getObjectType();
        v122[0] = v51;
        (*(v52 + 80))(ObjectType, v52);
      }

      v54 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v34[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v56 = sub_100486A6C(v122);
      v57 = *v55;
      if (*v55)
      {
        v58 = v55;
        v107 = v34[v54];
        v59 = *(v55 + 8);
        v60 = swift_getObjectType();
        *&v123[0] = v57;
        v61 = *(v59 + 40);
        v62 = v57;
        v61(v107, v60, v59);
        v63 = *v58;
        *v58 = *&v123[0];
        *(v58 + 8) = v59;
      }

      v56(v122, 0);
      v11 = v106;
      v6 = v115;
      v23 = v108;
      sub_1004877C8(0, 0);
LABEL_11:
      sub_1004A302C(v34);

      sub_1004B3CFC(v11, type metadata accessor for SyncedLyricsViewController.LineData);
      sub_100004C6C(&v124);
      v23 += 40;
      v20 = v116 - 1;
    }

    while (v116 != 1);
  }

  v81 = v117;
  sub_1004A7128(0);
  sub_1004A01CC(v82, v83);
  v84 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v81[v84] == 1)
  {
    v85 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    v86 = v117;
    swift_beginAccess();
    v87 = *&v86[v85];
    [v87 contentInset];
    [v87 contentOffset];
    [v87 setContentOffset:?];
  }

  v124 = 0;
  v125 = 0xE000000000000000;
  sub_1004BD404(44);
  v118 = v124;
  v119 = v125;
  v129._object = 0x800000010050EE10;
  v129._countAndFlagsBits = 0xD00000000000002ALL;
  sub_1004BC024(v129);
  v88 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  v89 = v117;
  swift_beginAccess();
  [*&v89[v88] contentOffset];
  v120 = v90;
  v121 = v91;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v93 = v118;
  v92 = v119;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v94 = sub_1004B80B4();
  sub_100007084(v94, qword_100616A40);

  v95 = sub_1004B8094();
  v96 = sub_1004BC9A4();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v118 = v98;
    *v97 = 136315138;
    v99 = sub_100441BE8(v93, v92, &v118);

    *(v97 + 4) = v99;
    _os_log_impl(&_mh_execute_header, v95, v96, "%s", v97, 0xCu);
    sub_100004C6C(v98);
  }

  else
  {
  }
}

void sub_1004A4C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      sub_10049D388(v5);

      v4 = v6;
    }
  }
}

void sub_1004A4CDC(void *a1)
{
  v126 = a1;
  sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
  __chkstk_darwin();
  v125 = &v106 - v2;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v124 = &v106 - v3;
  v123 = type metadata accessor for SyncedLyricsViewController.LineData(0);
  __chkstk_darwin();
  v5 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v7 = *(v1 + v6);
  if (!v7)
  {
    return;
  }

  sub_1004AC910();
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v1 + v8) contentOffset];
  v10 = v9;
  v112 = v8;
  [*(v1 + v8) contentOffset];
  v128 = v11;
  v13 = v12;
  v14 = [v1 view];
  if (!v14)
  {
    __break(1u);
    goto LABEL_81;
  }

  v15 = v14;
  [v14 frame];
  v17 = v16;

  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (v19 > 0.0)
  {
    goto LABEL_6;
  }

  v20 = [v1 view];
  if (!v20)
  {
LABEL_81:
    __break(1u);
    return;
  }

  v21 = v20;
  [v20 frame];
  v19 = v22;

LABEL_6:
  v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v24 = *(v1 + v23);
  v25 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    goto LABEL_72;
  }

  v127 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:

  v26 = 0;
  do
  {
    v27 = v26;
    if (v127 == v26)
    {
      break;
    }

    if ((v24 & 0xC000000000000001) != 0)
    {
      v28 = sub_1004BD484();
    }

    else
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_70;
      }

      v28 = *(v24 + 8 * v26 + 32);
    }

    v29 = v28;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_69;
    }

    [v28 frame];
    v146.x = v30;
    v146.y = v31;
    v148.origin.x = v128;
    v148.origin.y = v13;
    v148.size.width = v17;
    v148.size.height = v19;
    v32 = CGRectContainsPoint(v148, v146);

    v26 = v27 + 1;
  }

  while (!v32);

  [*(v1 + v112) contentOffset];
  v114 = v33;
  v34 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v24 = *(v1 + v34);
  if (v24 >> 62)
  {
    v25 = sub_1004BD6A4();
    if (v25)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
LABEL_19:
      v35 = v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
      v119 = OBJC_IVAR____TtC7LyricsX6Lyrics_vocalistsType;
      v122 = v24 & 0xC000000000000001;

      v117 = v35;
      swift_beginAccess();
      v108 = 0;
      v133 = 0;
      v36 = 0;
      v115 = v24 & 0xFFFFFFFFFFFFFF8;
      v37 = 0uLL;
      v38 = 1;
      v113 = v13;
      v110 = _swiftEmptyArrayStorage;
      v111 = _swiftEmptyArrayStorage;
      v39 = 0uLL;
      v116 = v27;
      v120 = v25;
      v121 = v24;
      v118 = v7;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v144[0] = v37;
            v144[1] = v39;
            v145 = v38 & 1;
            if (v122)
            {
              v40 = sub_1004BD484();
            }

            else
            {
              if (v36 >= *(v115 + 16))
              {
                goto LABEL_71;
              }

              v40 = *(v24 + 8 * v36 + 32);
            }

            v41 = v40;
            if (__OFADD__(v36, 1))
            {
              __break(1u);
LABEL_67:
              __break(1u);
LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
LABEL_70:
              __break(1u);
LABEL_71:
              __break(1u);
LABEL_72:
              v127 = sub_1004BD6A4();
              goto LABEL_8;
            }

            v129 = v36;
            v132 = (v36 + 1);
            v24 = v1;
            v42 = v7;
            v7 = *(v7 + 40);
            v25 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(&v41[v25], &v138);
            v43 = v140;
            v44 = v141;
            v1 = sub_100009178(&v138, v140);
            v45 = v44[2](v43, v44);
            if ((v45 & 0x8000000000000000) != 0)
            {
              goto LABEL_67;
            }

            if (v45 >= *(v7 + 16))
            {
              goto LABEL_68;
            }

            sub_10001342C(v7 + 40 * v45 + 32, v143);
            sub_1004A35D4(v143, v5);
            sub_100004C6C(v143);
            sub_100004C6C(&v138);
            if (*(v42 + v119) || v117[88] == 1)
            {
              v46 = v5[3];
              v47 = v5[4];
              sub_100009178(v5, v46);
              v48 = (*(v47 + 24))(v46, v47);
            }

            else
            {
              v48 = *(v117 + 10);
            }

            v49 = *(v123 + 20);
            v50 = *(v123 + 24);
            sub_10001342C(v5, &v138);
            swift_beginAccess();
            sub_100004C6C(&v41[v25]);
            sub_100013414(&v138, &v41[v25]);
            swift_endAccess();
            v51 = v5 + v49;
            v52 = v124;
            sub_10000F778(v51, v124, &qword_100616C00, &unk_1004EBFF0);
            v53 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_transliteratedLine;
            swift_beginAccess();
            sub_100047A5C(v52, &v41[v53], &qword_100616C00, &unk_1004EBFF0);
            swift_endAccess();
            v54 = v125;
            sub_10000F778(v5 + v50, v125, &qword_100616EF0, &qword_1004EC398);
            v55 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_translatedLine;
            swift_beginAccess();
            sub_100047A5C(v54, &v41[v55], &qword_100616EF0, &qword_1004EC398);
            swift_endAccess();
            *&v41[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_alignment] = v48;
            sub_100488724();
            v56 = v41;
            [v56 frame];
            v58 = v57;
            v60 = v59;
            v62 = v61;
            v64 = v63;
            v1 = v24;
            sub_1004A11E4(v56, 2, v144);
            v136 = v67;
            v137 = v68;
            v134 = v65;
            v135 = v66;
            if (v133)
            {
              v133 = 1;
              v24 = v121;
              v7 = v118;
            }

            else
            {
              v149.origin.x = v128;
              v149.origin.y = v13;
              v149.size.width = v17;
              v149.size.height = v19;
              v147.x = v58;
              v147.y = v60;
              v69 = CGRectContainsPoint(v149, v147);
              v24 = v121;
              v7 = v118;
              if (v69 && (v127 == v116 || [v56 isSelected]))
              {
                *&v150.origin.x = v134;
                *&v150.origin.y = v135;
                *&v150.size.width = v136;
                *&v150.size.height = v137;
                MinY = CGRectGetMinY(v150);
                v151.origin.x = v58;
                v151.origin.y = v60;
                v151.size.width = v62;
                v151.size.height = v64;
                *&v65 = CGRectGetMinY(v151);
                *&v67 = v136;
                *&v68 = v137;
                v10 = MinY - (*&v65 - v114);
                *&v65 = v134;
                *&v66 = v135;
                v133 = 1;
                v113 = v10;
              }

              else
              {
                v133 = 0;
                *&v67 = v136;
                *&v68 = v137;
                *&v65 = v134;
                *&v66 = v135;
              }
            }

            *(&v65 + 1) = v66;
            v131 = v65;
            *&v71 = v67;
            *(&v71 + 1) = v68;
            v130 = v71;
            v72 = swift_allocObject();
            *(v72 + 2) = v56;
            v73 = v135;
            *(v72 + 3) = v134;
            *(v72 + 4) = v73;
            v74 = v137;
            *(v72 + 5) = v136;
            *(v72 + 6) = v74;
            *(v72 + 7) = v1;
            v72[8] = v58;
            v72[9] = v60;
            v72[10] = v62;
            v72[11] = v64;
            if (v126)
            {
              break;
            }

            v75 = v1;
            sub_1004A5B44(v56, v75, *&v134, *&v135, *&v136, *&v137, v58, v60, v62, v64);

            sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
            v38 = 0;
            v36 = (v129 + 1);
            v25 = v120;
            v39 = v130;
            v37 = v131;
            if (v132 == v120)
            {
              goto LABEL_62;
            }
          }

          v76 = v56;
          v107 = v1;
          v129 = v126;
          v152.origin.x = v58;
          v152.origin.y = v60;
          v152.size.width = v62;
          v152.size.height = v64;
          v154.origin.x = v128;
          v154.origin.y = v13;
          v154.size.width = v17;
          v154.size.height = v19;
          if (!CGRectIntersectsRect(v152, v154))
          {
            *&v153.origin.x = v134;
            *&v153.origin.y = v135;
            *&v153.size.width = v136;
            *&v153.size.height = v137;
            v155.origin.x = v128;
            v155.origin.y = v113;
            v155.size.width = v17;
            v155.size.height = v19;
            if (!CGRectIntersectsRect(v153, v155))
            {
              [v76 setHidden:1];

              v83 = swift_allocObject();
              v83[2] = v76;
              v83[3] = sub_1004B4FC4;
              v83[4] = v72;
              *&v137 = v76;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v110 = sub_100441A58(0, v110[2] + 1, 1, v110);
              }

              v85 = v110[2];
              v84 = v110[3];
              if (v85 >= v84 >> 1)
              {
                v110 = sub_100441A58((v84 > 1), v85 + 1, 1, v110);
              }

              v86 = v110;
              v110[2] = v85 + 1;
              v87 = &v86[2 * v85];
              v87[4] = sub_1004B5044;
              v87[5] = v83;
              sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
              goto LABEL_54;
            }
          }

          v77 = swift_allocObject();
          *(v77 + 16) = sub_1004B4FC4;
          *(v77 + 24) = v72;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v109 = v76;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v111 = sub_100441A58(0, v111[2] + 1, 1, v111);
          }

          v80 = v111[2];
          v79 = v111[3];
          if (v80 >= v79 >> 1)
          {
            v111 = sub_100441A58((v79 > 1), v80 + 1, 1, v111);
          }

          v81 = v111;
          v111[2] = v80 + 1;
          v82 = &v81[2 * v80];
          v82[4] = sub_1000081FC;
          v82[5] = v77;
          if (v133)
          {
            break;
          }

          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_54:
          v38 = 0;
          v25 = v120;
          v36 = v132;
          v39 = v130;
          v37 = v131;
          if (v132 == v120)
          {

            if ((v108 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }
        }

        v88 = v109;
        if (v108)
        {
          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);

LABEL_59:
          v38 = 0;
          v108 = 1;
          v133 = 1;
          v25 = v120;
          v36 = v132;
          v39 = v130;
          v37 = v131;
          if (v132 == v120)
          {

LABEL_65:
            v92 = v107;
            v93 = *(v107 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
            *(v107 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = v126;
            v94 = v129;

            v95 = swift_allocObject();
            *(v95 + 16) = v111;
            *(v95 + 24) = v92;
            *(v95 + 32) = v10;
            v141 = sub_1004B4FE8;
            v142 = v95;
            *&v138 = _NSConcreteStackBlock;
            *(&v138 + 1) = 1107296256;
            v139 = sub_1000D6C80;
            v140 = &unk_1005D63B8;
            v96 = _Block_copy(&v138);
            v97 = v92;

            [v94 addAnimations:v96];
            _Block_release(v96);
            v98 = swift_allocObject();
            *(v98 + 16) = v110;
            *(v98 + 24) = v97;
            v141 = sub_1004B4FFC;
            v142 = v98;
            *&v138 = _NSConcreteStackBlock;
            *(&v138 + 1) = 1107296256;
            v139 = sub_10013ABCC;
            v140 = &unk_1005D6408;
            v99 = _Block_copy(&v138);
            v100 = v97;

            [v94 addCompletion:v99];
            _Block_release(v99);
            [v94 startAnimation];

            return;
          }
        }

        else
        {

          v89 = vabdd_f64(v64, *&v137);
          sub_1004B3CFC(v5, type metadata accessor for SyncedLyricsViewController.LineData);
          if (v89 > 1.0)
          {
            goto LABEL_59;
          }

          v108 = 0;
          v38 = 0;
          v133 = 1;
          v25 = v120;
          v36 = v132;
          v39 = v130;
          v37 = v131;
          if (v132 == v120)
          {
LABEL_62:

LABEL_63:
            v90 = v110;
            v91 = v111;
            goto LABEL_75;
          }
        }
      }
    }
  }

  v91 = _swiftEmptyArrayStorage;
  v90 = _swiftEmptyArrayStorage;
LABEL_75:
  v101 = *(v1 + v112);
  [v101 contentOffset];
  [v101 setContentOffset:?];

  *&v138 = v91;
  sub_10043E4B8(v90);
  v102 = *(v138 + 16);
  if (v102)
  {
    v103 = v138 + 40;
    do
    {
      v104 = *(v103 - 8);

      v104(v105);

      v103 += 16;
      --v102;
    }

    while (v102);
  }
}

void sub_1004A5B44(char *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, double a7, double a8, double a9, double a10)
{
  UIView.untransformedFrame.setter(a3, a4, a5, a6);
  v16 = *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v16)
  {
    v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v16 + v17, v39, &qword_100615100, &unk_1004EA8E0);
    v18 = v40;
    if (v40)
    {
      v19 = v41;
      sub_100009178(v39, v40);
      v20 = *(v18 - 8);
      v21 = __chkstk_darwin();
      v23 = &v38[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v20 + 16))(v23, v21);
      sub_100007214(v39, &qword_100615100, &unk_1004EA8E0);
      v24 = (*(v19 + 16))(v18, v19);
      (*(v20 + 8))(v23, v18);
      v25 = 0;
      goto LABEL_6;
    }

    sub_100007214(v39, &qword_100615100, &unk_1004EA8E0);
  }

  v24 = 0;
  v25 = 1;
LABEL_6:
  v26 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v26], v39);
  v27 = v40;
  v28 = v41;
  sub_100009178(v39, v40);
  v29 = (*(v28 + 16))(v27, v28);
  if (v25)
  {
    sub_100004C6C(v39);
  }

  else
  {
    v30 = v29;
    sub_100004C6C(v39);
    if (v24 == v30)
    {
      sub_1004A3320();
    }
  }

  v31 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v32 = *(a2 + v31);
  if (v32 >> 62)
  {
    v33 = sub_1004BD6A4();
    if (!v33)
    {
      return;
    }
  }

  else
  {
    v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      return;
    }
  }

  v34 = v33 - 1;
  if (__OFSUB__(v33, 1))
  {
    __break(1u);
  }

  else if ((v32 & 0xC000000000000001) == 0)
  {
    if ((v34 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v35 = *(v32 + 8 * v34 + 32);
      goto LABEL_17;
    }

    __break(1u);
    return;
  }

  v35 = sub_1004BD484();

LABEL_17:
  type metadata accessor for SyncedLyricsLineView(0);
  v36 = a1;
  v37 = sub_1004BCFA4();

  if (v37)
  {
    *v39 = a7;
    *&v39[1] = a8;
    *&v39[2] = a9;
    v40 = *&a10;
    LOBYTE(v41) = 0;
    sub_1004A27B0(v36, v39);
  }
}

void sub_1004A5EA0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v8 = *(a2 + v7);
  [v8 contentOffset];
  [v8 setContentOffset:?];
}

void sub_1004A5F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);

      v6(v7);

      v5 += 16;
      --v4;
    }

    while (v4);
  }

  v8 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator) = 0;
}

Swift::Void __swiftcall SyncedLyricsViewController.enterTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) != 2)
  {
    sub_1004A84A4();
    *(v0 + v1) = 2;
  }
}

Swift::Void __swiftcall SyncedLyricsViewController.leaveTrackingMode()()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v0 + v1) == 2)
  {
    sub_1004A7128(0);
    *(v0 + v1) = 0;
  }
}

BOOL sub_1004A6098()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  if (!*(v0 + v1) || (*(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded) & 1) != 0)
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
  swift_beginAccess();
  sub_10000F778(v0 + v3, &v8, &qword_100616AA8, &qword_1004EC710);
  if (v9)
  {
    sub_100013414(&v8, v10);
    v4 = v11;
    v5 = v12;
    sub_100009178(v10, v11);
    if ((*(v5 + 16))(v4, v5))
    {
      v6 = 1;
    }

    else
    {
      v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      v6 = *(v0 + v7) == 2;
    }

    sub_100004C6C(v10);
    return v6;
  }

  else
  {
    sub_100007214(&v8, &qword_100616AA8, &qword_1004EC710);
    return 1;
  }
}

void *sub_1004A61E0()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v0[v1] contentOffset];
  v3 = v2;
  v5 = v4;
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = result;
  [result frame];
  v9 = v8;

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v11 = *&v0[v10];
  if (v11 <= 0.0)
  {
    result = [v0 view];
    if (result)
    {
      v12 = result;
      [result frame];
      v11 = v13;

      goto LABEL_5;
    }

LABEL_23:
    __break(1u);
    return result;
  }

LABEL_5:
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = *&v0[v14];
  if (v15 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004BD6A4())
  {

    if (!i)
    {
      break;
    }

    v17 = 0;
    while (1)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = sub_1004BD484();
      }

      else
      {
        if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v18 = *(v15 + 8 * v17 + 32);
      }

      v19 = v18;
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      [v18 frame];
      v22.origin.x = v3;
      v22.origin.y = v5;
      v22.size.width = v9;
      v22.size.height = v11;
      if (CGRectIntersectsRect(v21, v22))
      {
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
      }

      else
      {
      }

      ++v17;
      if (v20 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

LABEL_18:

  return _swiftEmptyArrayStorage;
}

uint64_t sub_1004A6430(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  v11 = a1[3];
  v12 = a1[4];
  sub_100009178(a1, v11);
  v38 = v11;
  v37 = *(v12 + 16);
  v13 = v37(v11, v12);
  v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v15 = 0;
  v16 = v13 == 0;
  if (v13 <= 0)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = v13 - 1; ; i = 0)
  {
    v19 = *(v6 + v14);
    if ((v19 & 0xC000000000000001) != 0)
    {

      v20 = sub_1004BD484();
    }

    else
    {
      if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_41;
      }

      v20 = *(v19 + 8 * v13 + 32);
    }

    [v20 frame];
    v41.origin.x = a2;
    v41.origin.y = a3;
    v41.size.width = a4;
    v41.size.height = a5;
    if (!CGRectIntersectsRect(v39, v41))
    {
      break;
    }

    v21 = v20;
    sub_1004BC274();
    if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();

    v13 = i;
    v16 = i == 0;
    if (i > 0)
    {
      goto LABEL_2;
    }

LABEL_3:
    v18 = !v16;
    if ((v18 | v15))
    {
      goto LABEL_18;
    }

    v15 = 1;
  }

LABEL_18:
  v22 = v37(v38, v12);
  v13 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    goto LABEL_43;
  }

  v23 = *(v6 + v14);
  if (v23 >> 62)
  {
    goto LABEL_44;
  }

  result = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v25 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_46;
  }

  while (2)
  {
    v26 = 0;
    v27 = v13 == v25;
    if (v13 < v25)
    {
LABEL_22:
      v28 = v13 + 1;
      goto LABEL_28;
    }

    while (1)
    {
      v29 = !v27;
      if ((v29 | v26))
      {
        goto LABEL_39;
      }

      v26 = 1;
      v28 = v25;
LABEL_28:
      v30 = *(v6 + v14);
      if ((v30 & 0xC000000000000001) != 0)
      {

        v31 = sub_1004BD484();

        goto LABEL_32;
      }

      if (v13 < 0)
      {
        break;
      }

      if (v13 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v31 = *(v30 + 8 * v13 + 32);
LABEL_32:
      [v31 frame];
      v42.origin.x = a2;
      v42.origin.y = a3;
      v42.size.width = a4;
      v42.size.height = a5;
      if (!CGRectIntersectsRect(v40, v42))
      {

LABEL_39:
        KeyPath = swift_getKeyPath();
        v34 = sub_100003ABC(&qword_100616EE0, &unk_1004ECA10);
        v35 = sub_1000F96D4(&qword_100616EE8, &qword_100616EE0, &unk_1004ECA10);
        v36 = Sequence.sorted<A>(by:comparator:)(KeyPath, sub_100134E44, 0, v34, v35, &protocol witness table for Int);

        return v36;
      }

      v32 = v31;
      sub_1004BC274();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
      }

      sub_1004BC334();

      v13 = v28;
      v27 = v28 == v25;
      if (v28 < v25)
      {
        goto LABEL_22;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    result = sub_1004BD6A4();
    v25 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      continue;
    }

    break;
  }

LABEL_46:
  __break(1u);
  return result;
}

double sub_1004A681C(uint64_t a1, uint64_t *a2)
{
  sub_10001342C(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_100004C6C((v3 + v4));
  sub_100013414(v6, v3 + v4);
  swift_endAccess();
  return result;
}

double sub_1004A688C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v9 = v4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  v10 = *(v9 + 48);
  if (v10 < 0)
  {
    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
    v15 = *(v9 + 32);
    v14 = *(v9 + 40);
    if (v10)
    {
      v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(v4 + v16) frame];
    }

    else
    {
      v17 = v12;
      v18 = v13;
      v19 = v15;
      v20 = v14;
    }

    CGRectGetHeight(*&v17);
    v23.origin.x = a1;
    v23.origin.y = a2;
    v23.size.width = a3;
    v23.size.height = a4;
    CGRectGetHeight(v23);
    v24.origin.x = a1;
    v24.origin.y = a2;
    v24.size.width = a3;
    v24.size.height = a4;
    CGRectGetMinY(v24);
    if ((v10 & 1) == 0)
    {
      v25.origin.x = v12;
      v25.origin.y = v13;
      v25.size.width = v15;
      v25.size.height = v14;
      CGRectGetMinY(v25);
    }
  }

  else
  {
    v22.origin.x = a1;
    v22.origin.y = a2;
    v22.size.width = a3;
    v22.size.height = a4;
    CGRectGetMinY(v22);
    v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v4 + v11) contentInset];
  }

  return 0.0;
}

void sub_1004A6A18(void *a1, void *a2, char a3, char a4)
{
  v5 = v4;
  v9 = a1[3];
  v10 = a1[4];
  sub_100009178(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *(v5 + v12);
  if ((v13 & 0xC000000000000001) != 0)
  {

    v14 = sub_1004BD484();

    v15 = &off_100616000;
    if ((a3 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    sub_1004BC2E4();
LABEL_29:
    sub_1004BC334();
    swift_endAccess();
    __chkstk_darwin();
    sub_1004AFE30(sub_1004B4BD8);

    return;
  }

  v14 = *(v13 + 8 * v11 + 32);
  v15 = &off_100616000;
  if ((a3 & 1) == 0)
  {
LABEL_17:
    sub_1004877C8(1, a2);
    sub_10049F2E4(v14, a2 != 0);
    v23 = *&v14[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    if (v23)
    {
      _s23InstrumentalContentViewCMa(0, v22);
      if (swift_dynamicCastClass())
      {
        v24 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = v14;
        v25 = v23;
        v26 = v14;

        if (a4)
        {
          v27 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
          v28 = 0.0;
          if (v27)
          {
            swift_beginAccess();
            v29 = *(v27 + 96);
            if (v29)
            {
              v30 = v15;
              v31 = *(v27 + 104);

              v32 = sub_10002F518(v29, v31);
              v33 = v29(v32);
              swift_beginAccess();
              if (*(v27 + 88) == 1)
              {
                v34 = Lyrics.spatialOffset.getter();
                sub_10003CC4C(v29, v31);
              }

              else
              {

                sub_10003CC4C(v29, v31);
                v34 = 0.0;
              }

              v28 = v33 - v34;
              v15 = v30;
            }
          }

          sub_10047D9E0(v28);
        }
      }
    }

    sub_1004A8360(v14, 1, 0.0);
    v35 = v15[364];
    swift_beginAccess();
    v9 = v14;
    sub_1004BC274();
    if (*((*(v35 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v35 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_34;
  }

LABEL_5:
  v36 = a4;
  v16 = v15[364];
  swift_beginAccess();
  v17 = *&v16[v5];
  if (!(v17 >> 62))
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_7;
    }

LABEL_16:
    *&v16[v5] = _swiftEmptyArrayStorage;

    a4 = v36;
    goto LABEL_17;
  }

  v18 = sub_1004BD6A4();
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_7:
  type metadata accessor for SyncedLyricsLineView(0);
  if (v18 >= 1)
  {

    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = sub_1004BD484();
      }

      else
      {
        v20 = *(v17 + 8 * i + 32);
      }

      v21 = v20;
      if ((sub_1004BCFA4() & 1) == 0)
      {
        sub_1004877C8(0, a2);
      }
    }

    v15 = &off_100616000;
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_1004A6E44(uint64_t a1)
{
  sub_1004BD404(37);
  v2._object = 0x800000010050EF10;
  v2._countAndFlagsBits = 0xD000000000000023;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

id sub_1004A6EE0(uint64_t a1, char a2)
{
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 && *(v6 + 56) == 2)
  {
    v7 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (a2)
    {
      return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v7[83] stiffness:v7[84] damping:v7[85] initialVelocity:{0.0, 0.0}];
    }

    else
    {
      v10 = 0.75;
      if (*&a1 <= 0.75)
      {
        v10 = *&a1;
      }

      v11 = (v10 + -0.2) / 0.55;
      v12 = 0.0;
      if (*&a1 >= 0.2)
      {
        v12 = v11;
      }

      v13 = (1.0 - v12) * 0.12 + 0.78;
      v14 = v12 * 0.27 + 0.48;
      sub_100009130(0, &qword_100616920, UISpringTimingParameters_ptr);
      return UISpringTimingParameters.init(dampingRatio:response:)(v13, v14);
    }
  }

  else
  {
    v9 = (v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    return [objc_allocWithZone(UISpringTimingParameters) initWithMass:v9[83] stiffness:v9[84] damping:v9[85] initialVelocity:{0.0, 0.0}];
  }
}

uint64_t sub_1004A70A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1004B80B4();
  sub_100007108(v2, qword_100616A40);
  sub_100007084(v2, qword_100616A40);
  return sub_1004B80A4();
}

void sub_1004A7128(unint64_t a1)
{
  v2 = v1;
  v4 = [v1 traitCollection];
  v5 = [v4 accessibilityContrast];

  v140 = v2;
  if (v5 == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if ((v7 & 0xC000000000000001) != 0)
    {

      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView(0);
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView, &protocol conformance descriptor for NSObject);
      sub_1004BC6A4();
      v7 = v152;
      v8 = v153;
      v9 = v154;
      v2 = v155;
      v10 = v156;
    }

    else
    {
      v54 = -1 << *(v7 + 32);
      v8 = v7 + 56;
      v9 = ~v54;
      v55 = -v54;
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v10 = v56 & *(v7 + 56);

      v2 = 0;
    }

    v57 = (v9 + 64) >> 6;
    while (1)
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        v62 = sub_1004BD354();
        if (!v62)
        {
          goto LABEL_75;
        }

        v151 = v62;
        type metadata accessor for SyncedLyricsLineView(0);
        swift_dynamicCast();
        v61 = v142;
        v11 = v2;
        v9 = v10;
        if (!v142)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v59 = v2;
        v60 = v10;
        v11 = v2;
        if (!v10)
        {
          while (1)
          {
            v11 = v59 + 1;
            if (__OFADD__(v59, 1))
            {
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              goto LABEL_101;
            }

            if (v11 >= v57)
            {
              break;
            }

            v60 = *(v8 + 8 * v11);
            ++v59;
            if (v60)
            {
              goto LABEL_69;
            }
          }

LABEL_75:
          sub_1001A43F8(v7);
          return;
        }

LABEL_69:
        v9 = (v60 - 1) & v60;
        v61 = *(*(v7 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v60)))));
        if (!v61)
        {
          goto LABEL_75;
        }
      }

      v63 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v63[657] == 1)
      {
        v64 = [v140 traitCollection];
        [v64 accessibilityContrast];
      }

      sub_100487C74(0, 0.0);
      swift_beginAccess();
      v58 = sub_100453DE0(v61);
      swift_endAccess();

      v2 = v11;
      v10 = v9;
    }
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v2 + v9) == 1)
  {
    return;
  }

  if (a1)
  {
    v150 = a1;
    v7 = a1;
    goto LABEL_7;
  }

  v65 = *(v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager);
  if (!v65 || (swift_beginAccess(), v66 = *(v65 + 80), !*(v66 + 16)))
  {
    v82 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v83 = *(v2 + v82);
    if (v83 >> 62)
    {
      goto LABEL_142;
    }

    if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    goto LABEL_87;
  }

  sub_10001342C(v66 + 32, &v152);
  v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v2 + v67) contentOffset];
  v69 = v68;
  v71 = v70;
  v9 = &selRef_shuffleCommand;
  v72 = [v2 view];
  if (!v72)
  {
    goto LABEL_148;
  }

  v73 = v72;
  [v72 frame];
  v75 = v74;

  v76 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v77 = *(v2 + v76);
  if (v77 <= 0.0)
  {
    v78 = [v2 view];
    if (!v78)
    {
      goto LABEL_150;
    }

    v79 = v78;
    [v78 frame];
    v81 = v80;

    v77 = v81;
  }

  v7 = sub_1004A6430(&v152, v69, v71, v75, v77);
  sub_100004C6C(&v152);
  v150 = v7;
  while (1)
  {
LABEL_7:
    v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
    swift_beginAccess();
    v11 = *(v2 + v8);
    v149 = v11;
    if (!(v7 >> 62))
    {
      v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_9;
      }

      goto LABEL_102;
    }

LABEL_101:
    v12 = sub_1004BD6A4();
    if (v12)
    {
LABEL_9:
      if (v12 < 1)
      {
LABEL_138:
        __break(1u);
        goto LABEL_139;
      }

      v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager;
      v14 = v2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;

      v137 = v14;
      swift_beginAccess();
      v15 = 0;
      v134 = v13;
      v135 = v12;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v18 = sub_1004BD484();
        }

        else
        {
          v18 = *(v7 + 8 * v15 + 32);
        }

        v19 = v18;
        v20 = *(v2 + v13);
        if (v20)
        {
          swift_beginAccess();
          v9 = *(v20 + 80);
          if (*(v9 + 16))
          {
            sub_10001342C(v9 + 32, &v152);
            v21 = *(v9 + 16);
            if (v21)
            {
              sub_10001342C(v9 + 32 + 40 * v21 - 40, &v146);
              v2 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
              swift_beginAccess();
              sub_10001342C(v19 + v2, v143);
              sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
              if (swift_dynamicCast())
              {

                v22 = v147;
                v23 = v148;
                sub_100009178(&v146, v147);
                v11 = (*(v23 + 16))(v22, v23);
                sub_10001342C(v19 + v2, v143);
                v24 = v144;
                v25 = v145;
                sub_100009178(v143, v144);
                v26 = (*(v25 + 16))(v24, v25);
                v9 = v26 - 1;
                if (__OFSUB__(v26, 1))
                {
                  goto LABEL_99;
                }

                sub_100004C6C(v143);
                if (v11 == v9)
                {
                  v2 = v140;
                  if (*(v137 + 657) == 1)
                  {
                    v27 = [v140 traitCollection];
                    [v27 accessibilityContrast];
                  }

                  sub_100487C74(1, 0.0);
                  swift_beginAccess();
                  v16 = sub_100453DE0(v19);
                  swift_endAccess();

                  v13 = v134;
                  v12 = v135;
                  goto LABEL_12;
                }
              }

              sub_10001342C(v19 + v2, v143);
              v28 = v144;
              v29 = v145;
              sub_100009178(v143, v144);
              v30 = (*(v29 + 16))(v28, v29);
              v31 = v147;
              v32 = v148;
              sub_100009178(&v146, v147);
              v33 = (*(v32 + 16))(v31, v32);
              sub_100004C6C(v143);
              v34 = v19 + v2;
              if (v33 >= v30)
              {
                sub_10001342C(v34, v143);
                v45 = v144;
                v46 = v145;
                sub_100009178(v143, v144);
                v11 = (*(v46 + 16))(v45, v46);
                v47 = v155;
                v48 = v156;
                sub_100009178(&v152, v155);
                v49 = (*(v48 + 16))(v47, v48);
                sub_100004C6C(v143);
                if (v11 >= v49)
                {
                  v2 = v140;
                  v13 = v134;
                  v12 = v135;
                  if (*(v137 + 657))
                  {
                    v51 = [v140 traitCollection];
                    [v51 accessibilityContrast];
                  }

                  sub_100487C74(1, 0.0);
                  goto LABEL_56;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (!*(v137 + 657))
                {
                  goto LABEL_12;
                }

                v50 = [v140 traitCollection];
                v11 = [v50 accessibilityContrast];

                if (v11 == 1)
                {
                  goto LABEL_12;
                }

                sub_100487C74(1, 3.0);
              }

              else
              {
                sub_10001342C(v34, v143);
                v35 = v144;
                v36 = v145;
                sub_100009178(v143, v144);
                v11 = (*(v36 + 16))(v35, v36);
                v37 = v147;
                v38 = v148;
                sub_100009178(&v146, v147);
                v39 = (*(v38 + 16))(v37, v38);
                v9 = v11 - v39;
                if (__OFSUB__(v11, v39))
                {
                  goto LABEL_100;
                }

                sub_100004C6C(v143);
                v40 = v9 + 1.0;
                if (*(v137 + 657) == 1)
                {
                  v2 = v140;
                  v41 = [v140 traitCollection];
                  v11 = [v41 accessibilityContrast];

                  v13 = v134;
                  v12 = v135;
                  if (v11 != 1 || v40 <= 0.0)
                  {
                    goto LABEL_52;
                  }

LABEL_12:
                  sub_100004C6C(&v146);
                  sub_100004C6C(&v152);
                  goto LABEL_13;
                }

                v2 = v140;
                v13 = v134;
                v12 = v135;
                if (v40 > 0.0)
                {
                  goto LABEL_12;
                }

LABEL_52:
                if (v40 <= 4.0)
                {
                  v52 = v9 + 1.0;
                }

                else
                {
                  v52 = 4.0;
                }

                sub_100487C74(1, v52);
                if (v40 == 0.0)
                {
LABEL_56:
                  swift_beginAccess();
                  v53 = sub_100453DE0(v19);
                  swift_endAccess();

                  goto LABEL_12;
                }
              }

              swift_beginAccess();
              sub_10045137C(&v142, v19);
              v9 = v142;
              swift_endAccess();

              goto LABEL_12;
            }

            sub_100004C6C(&v152);
          }
        }

        v9 = v15 + 3;
        if (__OFADD__(v15, 3))
        {
          goto LABEL_98;
        }

        if (*(v137 + 657) == 1)
        {
          v42 = [v2 traitCollection];
          v11 = [v42 accessibilityContrast];

          if (v11 != 1 || v9 <= 0)
          {
LABEL_41:
            v44 = v9;
            if (v9 > 4.0)
            {
              v44 = 4.0;
            }

            sub_100487C74(1, v44);
            swift_beginAccess();
            sub_10045137C(&v146, v19);
            v9 = v146;
            swift_endAccess();
          }
        }

        else if (v9 <= 0)
        {
          goto LABEL_41;
        }

LABEL_13:
        ++v15;
        v17 = sub_100453DE0(v19);

        if (v12 == v15)
        {

          v11 = v149;
          goto LABEL_103;
        }
      }
    }

LABEL_102:

LABEL_103:
    v136 = v8;
    if ((v11 & 0xC000000000000001) != 0)
    {
      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView(0);
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView, &protocol conformance descriptor for NSObject);
      sub_1004BC6A4();
      v11 = v152;
      v101 = v153;
      v102 = v154;
      v103 = v155;
      v104 = v156;
    }

    else
    {
      v103 = 0;
      v105 = -1 << *(v11 + 32);
      v101 = v11 + 56;
      v102 = ~v105;
      v106 = -v105;
      v107 = v106 < 64 ? ~(-1 << v106) : -1;
      v104 = v107 & *(v11 + 56);
    }

    v108 = (v102 + 64) >> 6;
    while (v11 < 0)
    {
      v114 = sub_1004BD354();
      if (!v114)
      {
        goto LABEL_122;
      }

      v143[0] = v114;
      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      v113 = v146;
      v2 = v103;
      v112 = v104;
      if (!v146)
      {
        goto LABEL_122;
      }

LABEL_120:
      v9 = v140;
      v115 = &v140[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
      swift_beginAccess();
      if (v115[657] == 1)
      {
        v116 = [v140 traitCollection];
        [v116 accessibilityContrast];
      }

      sub_100487C74(0, 0.0);
      swift_beginAccess();
      v109 = sub_100453DE0(v113);
      swift_endAccess();

      v103 = v2;
      v104 = v112;
    }

    v110 = v103;
    v111 = v104;
    v2 = v103;
    if (!v104)
    {
      while (1)
      {
        v2 = v110 + 1;
        if (__OFADD__(v110, 1))
        {
          break;
        }

        if (v2 >= v108)
        {
          goto LABEL_122;
        }

        v111 = *(v101 + 8 * v2);
        ++v110;
        if (v111)
        {
          goto LABEL_116;
        }
      }

      __break(1u);
      goto LABEL_138;
    }

LABEL_116:
    v112 = (v111 - 1) & v111;
    v113 = *(*(v11 + 48) + ((v2 << 9) | (8 * __clz(__rbit64(v111)))));
    if (v113)
    {
      goto LABEL_120;
    }

LABEL_122:
    sub_1001A43F8(v11);
    v117 = *&v140[v136];
    if ((v117 & 0xC000000000000001) != 0)
    {

      v118 = sub_1004BD334();

      if (v118 < 1)
      {
        return;
      }
    }

    else if (*(v117 + 16) < 1)
    {
      return;
    }

    v119 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = *&v140[v119];
    if (!(v9 >> 62))
    {
      v82 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v82)
      {
        return;
      }

      goto LABEL_128;
    }

LABEL_139:
    v82 = sub_1004BD6A4();
    if (!v82)
    {
      return;
    }

LABEL_128:
    if (v82 >= 1)
    {
      v141 = (v9 & 0xC000000000000001);

      v120 = 0;
      v138 = v82;
      v139 = v9;
      do
      {
        if (v141)
        {
          v121 = sub_1004BD484();
        }

        else
        {
          v121 = *(v9 + 8 * v120 + 32);
        }

        v122 = v121;
        v123 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
        v121[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 0;
        v125 = sub_100486A6C(&v146);
        v126 = *v124;
        if (*v124)
        {
          v127 = v122[v123];
          v128 = *(v124 + 8);
          v129 = v124;
          ObjectType = swift_getObjectType();
          v131 = *(v128 + 40);
          v132 = v126;
          v131(v127, ObjectType, v128);
          v133 = *v129;
          *v129 = v126;
          *(v129 + 8) = v128;
          v82 = v138;
          v9 = v139;
        }

        v125(&v146, 0);
        ++v120;
      }

      while (v82 != v120);

      return;
    }

    __break(1u);
LABEL_142:
    if (sub_1004BD6A4() < 1)
    {
      break;
    }

LABEL_87:
    v84 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    [*(v2 + v84) contentOffset];
    v86 = v85;
    v88 = v87;
    v89 = [v2 view];
    if (!v89)
    {
      goto LABEL_149;
    }

    v90 = v89;
    [v89 frame];
    v92 = v91;

    v93 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v94 = *(v2 + v93);
    if (v94 <= 0.0)
    {
      v95 = [v2 view];
      if (!v95)
      {
        goto LABEL_151;
      }

      v96 = v95;
      [v95 frame];
      v94 = v97;
    }

    v98 = *(v2 + v82);
    if ((v98 & 0xC000000000000001) != 0)
    {

      v99 = sub_1004BD484();

      goto LABEL_94;
    }

    if (!*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      return;
    }

    v99 = *(v98 + 32);
LABEL_94:
    v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v99 + v9, &v152);

    v7 = sub_1004A6430(&v152, v86, v88, v92, v94);
    sub_100004C6C(&v152);
    v150 = v7;
    if (v7 >> 62)
    {
      if (sub_1004BD6A4() >= 1)
      {
LABEL_96:
        sub_1004A8274();

        v7 = v150;
      }
    }

    else if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_96;
    }
  }
}

void sub_1004A8274()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_1004BD6A4())
  {
    if (sub_1004BD6A4())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      sub_1004BD484();
      if (!v2)
      {
LABEL_6:
        v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v3 = sub_1004BD6A4();
LABEL_13:
      if (v3)
      {
        sub_1004B00AC(0, 1, sub_1004AFFAC);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

void sub_1004A8360(void *a1, char a2, double a3)
{
  v4 = v3;
  v8 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (v8[657] == 1 && (v9 = [v4 traitCollection], v10 = objc_msgSend(v9, "accessibilityContrast"), v9, v10 != 1) || a3 <= 0.0)
  {
    v11 = 4.0;
    if (a3 <= 4.0)
    {
      v11 = a3;
    }

    sub_100487C74(a2 & 1, v11);
    swift_beginAccess();
    if (a3 == 0.0)
    {
      v12 = sub_100453DE0(a1);
    }

    else
    {
      sub_10045137C(&v13, a1);
      v12 = v13;
    }

    swift_endAccess();
  }
}

void sub_1004A84A4()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_1004BD324();
    type metadata accessor for SyncedLyricsLineView(0);
    sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView, &protocol conformance descriptor for NSObject);
    sub_1004BC6A4();
    v3 = v41;
    v4 = v42;
    v5 = v43;
    v6 = v44;
    v7 = v45;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  while (v3 < 0)
  {
    v18 = sub_1004BD354();
    if (!v18)
    {
      goto LABEL_20;
    }

    v40[4] = v18;
    type metadata accessor for SyncedLyricsLineView(0);
    swift_dynamicCast();
    v17 = v40[0];
    v15 = v6;
    v16 = v7;
    if (!v40[0])
    {
      goto LABEL_20;
    }

LABEL_18:
    v19 = (v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
    swift_beginAccess();
    if (v19[657] == 1)
    {
      v20 = [v1 traitCollection];
      [v20 accessibilityContrast];
    }

    sub_100487C74(1, 0.0);
    swift_beginAccess();
    v12 = sub_100453DE0(v17);
    swift_endAccess();

    v6 = v15;
    v7 = v16;
  }

  v13 = v6;
  v14 = v7;
  v15 = v6;
  if (!v7)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= v11)
      {
        goto LABEL_20;
      }

      v14 = *(v4 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_14:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  if (v17)
  {
    goto LABEL_18;
  }

LABEL_20:
  sub_1001A43F8(v3);
  v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v1 = *(v1 + v21);
  if (!(v1 >> 62))
  {
    v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_33:
  v22 = sub_1004BD6A4();
  if (!v22)
  {
    return;
  }

LABEL_22:
  if (v22 < 1)
  {
    __break(1u);
  }

  else
  {
    v39 = v1 & 0xC000000000000001;

    v23 = 0;
    v37 = v22;
    v38 = v1;
    do
    {
      if (v39)
      {
        v24 = sub_1004BD484();
      }

      else
      {
        v24 = *(v1 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling;
      v24[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_isScrolling] = 1;
      v28 = sub_100486A6C(v40);
      v29 = *v27;
      if (*v27)
      {
        v30 = v25[v26];
        v31 = *(v27 + 8);
        v32 = v27;
        ObjectType = swift_getObjectType();
        v34 = *(v31 + 40);
        v35 = v29;
        v34(v30, ObjectType, v31);
        v36 = *v32;
        *v32 = v29;
        *(v32 + 8) = v31;
        v22 = v37;
        v1 = v38;
      }

      v28(v40, 0);
      ++v23;
    }

    while (v22 != v23);
  }
}

void sub_1004A88B0(void *a1, char a2, unint64_t a3, int a4, char a5, __n128 a6, double a7, double a8)
{
  v9 = v8;
  LODWORD(v10) = a4;
  v15 = a6.n128_u64[0];
  if (*(v8 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator))
  {
    sub_1004AC910();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a7;
  v227 = v16;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(v8 + v17) contentOffset];
  v19 = v18;
  [*(v8 + v17) contentOffset];
  v21 = v20;
  v23 = v22;
  v24 = [v8 view];
  if (!v24)
  {
    goto LABEL_188;
  }

  v25 = v24;
  [v24 frame];
  v27 = v26;

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v29 = *(v9 + v28);
  if (v29 <= 0.0)
  {
    v30 = [v9 view];
    if (!v30)
    {
      goto LABEL_189;
    }

    v31 = v30;
    [v30 frame];
    v29 = v32;
  }

  v219 = a2;
  v33 = a7 - v19;
  v255.origin.x = v21;
  v255.origin.y = v23;
  v255.size.width = v27;
  v255.size.height = v29;
  v259 = CGRectOffset(v255, 0.0, v33);
  v256.origin.x = v21;
  v256.origin.y = v23;
  v256.size.width = v27;
  v256.size.height = v29;
  v257 = CGRectUnion(v256, v259);
  v34 = sub_1004A6430(a1, v257.origin.x, v257.origin.y, v257.size.width, v257.size.height);
  v35 = a1[3];
  v36 = a1[4];
  sub_100009178(a1, v35);
  v37 = (*(v36 + 16))(v35, v36);
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v39 = *(v38 + v9);
  if ((v39 & 0xC000000000000001) != 0)
  {

    v229 = sub_1004BD484();

    v40 = v219;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = v219;
    if ((v37 & 0x8000000000000000) != 0)
    {
      goto LABEL_164;
    }

    if (v37 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_165;
    }

    v229 = *(v39 + 8 * v37 + 32);
    if (v10)
    {
      goto LABEL_15;
    }
  }

  v41 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v42 = *(v9 + v41);
  if (v42 && *(v42 + 56) == 2)
  {
    v43 = a3;
    v44 = 0;
    goto LABEL_18;
  }

LABEL_15:
  if (v40)
  {
    v45 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:2.0 stiffness:260.0 damping:50.0 initialVelocity:{0.0, 0.0}];
    goto LABEL_19;
  }

  v44 = v10 & 1;
  v43 = a3;
LABEL_18:
  v45 = sub_1004A6EE0(v43, v44);
LABEL_19:
  v241 = v45;
  v47 = a1[3];
  v46 = a1[4];
  sub_100009178(a1, v47);
  v48 = (*(*(v46 + 8) + 16))(v47);
  v240 = (v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs);
  swift_beginAccess();
  v38 = &off_100616000;
  v242 = v9;
  v243 = v34;
  if ((v40 & 1) == 0)
  {
    a7 = v48 - v240[23];
    [v241 settlingDuration];
    if (a7 < v49 + a8)
    {
      if (qword_100614EF8 == -1)
      {
        goto LABEL_22;
      }

      goto LABEL_170;
    }
  }

  [v241 settlingDuration];
  a7 = v55;
  *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 1;
  if ((v40 & 1) == 0 || (*(v240 + 659) & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_34:
  v69 = 0;
LABEL_35:
  if (fabs(v33) >= 1.0)
  {
    v29 = v33;
  }

  else
  {
    v29 = 0.0;
  }

  sub_10001342C(a1, &aBlock);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  v71 = swift_dynamicCast();
  if (v71)
  {
    v33 = *(v227 + 16);
    v21 = *(v227 + 24);
    v38 = (v34 >> 62);
    if (v34 >> 62)
    {
      goto LABEL_166;
    }

    v72 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_41;
    }

    goto LABEL_182;
  }

  if (!v69)
  {
    v75 = v34 >> 62;
    v217 = a3;
    v215 = v10;
    if (v34 >> 62)
    {
      v76 = sub_1004BD6A4();
    }

    else
    {
      v76 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = _swiftEmptyArrayStorage;
    if (v76)
    {
      aBlock = _swiftEmptyArrayStorage;
      v71 = sub_100442240(0, v76 & ~(v76 >> 63), 0);
      if (v76 < 0)
      {
        goto LABEL_177;
      }

      v77 = 0;
      v10 = aBlock;
      v78 = v34 & 0xC000000000000001;
      do
      {
        if (v78)
        {
          v79 = sub_1004BD484();
        }

        else
        {
          v79 = *(v34 + 8 * v77 + 32);
        }

        v80 = v79;
        v33 = UIView.untransformedFrame.getter();
        v21 = v81;
        v83 = v82;
        v85 = v84;

        aBlock = v10;
        v87 = v10[2];
        v86 = v10[3];
        if (v87 >= v86 >> 1)
        {
          sub_100442240((v86 > 1), v87 + 1, 1);
          v10 = aBlock;
        }

        ++v77;
        v10[2] = (v87 + 1);
        v88 = &v10[4 * v87];
        *(v88 + 4) = v33;
        *(v88 + 5) = v21;
        v88[6] = v83;
        v88[7] = v85;
        v34 = v243;
      }

      while (v76 != v77);
    }

    v220 = swift_allocObject();
    *(v220 + 16) = 0;
    v224 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.28 controlPoint2:0.17 animations:{0.0, 0.83, 1.0}];
    if (v75)
    {
      v89 = sub_1004BD6A4();
    }

    else
    {
      v89 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    a3 = 1;
    swift_beginAccess();
    v252 = 0u;
    v253 = 0u;
    v254 = 1;
    v228 = v38;
    if (!v89)
    {
LABEL_124:

      swift_beginAccess();
      v47 = v224;
      sub_1004BC274();
      if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_125;
      }

      goto LABEL_175;
    }

    v122 = 0;
    v234 = 0;
    v226 = v34 & 0xC000000000000001;
    v223 = v34 & 0xFFFFFFFFFFFFFF8;
    v231 = v76 - 1;
    v123 = __OFSUB__(v76, 1);
    v222 = v123;
    v239 = 7;
    v221 = v89;
    v218 = v10;
    while (1)
    {
      if (v226)
      {
        v124 = sub_1004BD484();
      }

      else
      {
        if (v122 >= *(v223 + 16))
        {
          goto LABEL_160;
        }

        v124 = *(v34 + 8 * v122 + 32);
      }

      v34 = v124;
      v125 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v241 timingParameters:a7];
      v126 = swift_allocObject();
      sub_100009130(0, &qword_100616BF0, NSObject_ptr);
      v127 = sub_1004BCFA4();
      sub_1004A11E4(v34, v127 & 1, &v252);
      *(v126 + 16) = v130;
      v9 = (v126 + 16);
      *(v126 + 24) = v128;
      *(v126 + 32) = v131;
      *(v126 + 40) = v129;
      if (!v122)
      {
        v33 = v129;
        v21 = v128;
        swift_beginAccess();
        v129 = v33;
        *(v126 + 24) = v21 - v29;
      }

      if (v122 >= v10[2])
      {
        while (1)
        {
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          v72 = sub_1004BD6A4();
          if (!v72)
          {
            goto LABEL_182;
          }

LABEL_41:
          if (v72 < 1)
          {
            break;
          }

          if (v38)
          {
            v73 = sub_1004BD6A4();
          }

          else
          {
            v73 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v236 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            goto LABEL_169;
          }

          v90 = 0;
          v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
          v233 = v34 & 0xC000000000000001;
          v230 = v72;
          while (1)
          {
            if (v233)
            {
              v91 = sub_1004BD484();
            }

            else
            {
              v91 = *(v34 + 8 * v90 + 32);
            }

            v92 = v91;
            v10 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v241 timingParameters:a7];
            a3 = a1;
            sub_10001342C(a1, v251);
            v93 = swift_allocObject();
            *(v93 + 16) = v92;
            sub_100013414(v251, v93 + 24);
            *(v93 + 64) = v9;
            *(v93 + 72) = v29;
            v249 = sub_1004B46BC;
            v250 = v93;
            aBlock = _NSConcreteStackBlock;
            v246 = 1107296256;
            v247 = sub_1000D6C80;
            v248 = &unk_1005D5C10;
            v94 = _Block_copy(&aBlock);
            v95 = v92;
            v96 = v9;

            [v10 addAnimations:v94];
            _Block_release(v94);
            v97 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(&v95[v97], &aBlock);
            v98 = v248;
            v99 = v249;
            sub_100009178(&aBlock, v248);
            v100 = (*(v99 + 2))(v98, v99);
            v102 = a1[3];
            v101 = a1[4];
            sub_100009178(a3, *(a3 + 24));
            v103 = (*(v101 + 16))(v102, v101);
            sub_100004C6C(&aBlock);
            if (v100 == v103)
            {
              v104 = v10;
              sub_1004A6A18(a1, v10, 1, 0);

              v106 = *&v95[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
              if (v106)
              {
                _s23InstrumentalContentViewCMa(0, v105);
                v107 = swift_dynamicCastClass();
                if (v107)
                {
                  v108 = v107;
                  v109 = swift_allocObject();
                  *(v109 + 16) = v96;
                  *(v109 + 24) = v95;
                  *(v109 + 32) = v29;
                  v249 = sub_1004B4778;
                  v250 = v109;
                  aBlock = _NSConcreteStackBlock;
                  v246 = 1107296256;
                  v247 = sub_1000D6C80;
                  v248 = &unk_1005D5CB0;
                  v110 = _Block_copy(&aBlock);
                  v111 = v95;
                  v112 = v96;
                  v113 = v106;

                  [v104 addAnimations:v110];
                  _Block_release(v110);
                  v114 = swift_allocObject();
                  *(v114 + 16) = v108;
                  *(v114 + 24) = a8;
                  v249 = sub_1004B47BC;
                  v250 = v114;
                  aBlock = _NSConcreteStackBlock;
                  v246 = 1107296256;
                  v247 = sub_10013ABCC;
                  v248 = &unk_1005D5D00;
                  v115 = _Block_copy(&aBlock);
                  a3 = v113;

                  [v104 addCompletion:v115];
                  _Block_release(v115);
                }
              }
            }

            v34 = v243;
            if (v236 == v90)
            {
              sub_10001342C(a1, v251);
              v116 = swift_allocObject();
              *(v116 + 16) = v243;
              *(v116 + 24) = v29;
              *(v116 + 32) = v95;
              *(v116 + 40) = v96;
              *(v116 + 48) = v33;
              *(v116 + 56) = v21;
              sub_100013414(v251, v116 + 64);
              v249 = sub_1004B4720;
              v250 = v116;
              aBlock = _NSConcreteStackBlock;
              v246 = 1107296256;
              v247 = sub_10013ABCC;
              v248 = &unk_1005D5C60;
              v117 = _Block_copy(&aBlock);
              v118 = v95;
              v119 = v96;

              [v10 addCompletion:v117];
              _Block_release(v117);
            }

            v9 = v242;
            swift_beginAccess();
            v120 = v10;
            sub_1004BC274();
            if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1004BC2E4();
            }

            sub_1004BC334();
            swift_endAccess();
            if (v90 == 0x8000000000000000)
            {
              break;
            }

            if (v90 <= 1)
            {
              v121 = 1;
            }

            else
            {
              v121 = v90;
            }

            ++v90;
            [v120 startAnimationAfterDelay:v240[22] * (v121 - 1)];

            if (v230 == v90)
            {
              goto LABEL_182;
            }
          }

          __break(1u);
LABEL_158:
          __break(1u);
        }

        __break(1u);
LABEL_169:
        __break(1u);
LABEL_170:
        swift_once();
LABEL_22:
        v50 = sub_1004B80B4();
        sub_100007084(v50, qword_100616A40);
        v51 = sub_1004B8094();
        v47 = sub_1004BC9A4();
        if (os_log_type_enabled(v51, v47))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          aBlock = v53;
          *v52 = 136315138;
          v34 = v243;
          *(v52 + 4) = sub_100441BE8(0x100000000000003ELL, 0x800000010050ECF0, &aBlock);
          _os_log_impl(&_mh_execute_header, v51, v47, "%s", v52, 0xCu);
          sub_100004C6C(v53);
        }

        a7 = a7 - a8;
        [v241 setImplicitDuration:0];
        *(v38[377] + v9) = 1;
LABEL_27:
        v56 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
        v57 = *(v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v57)
        {
          goto LABEL_34;
        }

        v58 = *&v57[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
        if (!v58)
        {
          goto LABEL_34;
        }

        _s23InstrumentalContentViewCMa(0, v54);
        v59 = swift_dynamicCastClass();
        if (!v59)
        {
          goto LABEL_34;
        }

        v47 = v59;
        v214 = v10;
        v216 = a3;
        v60 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(&v57[v60], &aBlock);
        v61 = v248;
        v9 = v249;
        sub_100009178(&aBlock, v248);
        v62 = *(v9 + 2);
        v63 = v57;
        v34 = v58;
        v64 = v62(v61, v9);
        v65 = v64 + 1;
        if (!__OFADD__(v64, 1))
        {
          sub_100004C6C(&aBlock);
          v66 = a1[3];
          v67 = a1[4];
          sub_100009178(a1, v66);
          v68 = (*(v67 + 16))(v66, v67);
          v69 = v65 == v68;
          v9 = v242;
          if (v65 == v68)
          {
            v70 = *(v242 + v56);
            *(v242 + v56) = 0;

            [v63 frame];
            *(v227 + 24) = *(v227 + 24) - (CGRectGetHeight(v258) + v240[14]);
            sub_10047D674();
          }

          v34 = v243;
          a3 = v216;
          LODWORD(v10) = v214;
          goto LABEL_35;
        }

        __break(1u);
LABEL_175:
        sub_1004BC2E4();
        v38 = v228;
LABEL_125:
        sub_1004BC334();
        swift_endAccess();
        v176 = swift_allocObject();
        *(v176 + 16) = v9;
        v249 = sub_1004B5574;
        v250 = v176;
        aBlock = _NSConcreteStackBlock;
        v246 = 1107296256;
        v247 = sub_1000D6C80;
        v248 = &unk_1005D5B20;
        v177 = _Block_copy(&aBlock);
        v178 = v9;

        [v47 addAnimations:v177];
        _Block_release(v177);
        [v47 startAnimation];
        v71 = sub_1004AB4B4(v229, v34);
        if (v179)
        {
          goto LABEL_180;
        }

        v180 = *(v38 + v9);
        if (!(v180 >> 62))
        {
          if (v71 < *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_128;
          }

LABEL_180:
          sub_1004A6A18(a1, 0, 1, 1);

LABEL_181:

          goto LABEL_182;
        }

LABEL_179:
        if (v71 >= sub_1004BD6A4())
        {
          goto LABEL_180;
        }

LABEL_128:
        v181 = v47;
        sub_1004A6A18(a1, v47, 1, 1);

        goto LABEL_181;
      }

      v132 = *&v10[v239];
      v237 = v122;
      if (v132 == v129)
      {
        if (a5)
        {
          goto LABEL_108;
        }
      }

      else
      {
        *(v220 + 16) = 1;
        if (a5)
        {
          goto LABEL_108;
        }

        v133 = a1[3];
        v134 = a1[4];
        sub_100009178(a1, v133);
        v135 = (*(v134 + 16))(v133, v134);
        v136 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v34 + v136, &aBlock);
        v137 = v125;
        v138 = v248;
        v139 = v249;
        sub_100009178(&aBlock, v248);
        v140 = *(v139 + 2);
        v141 = v139;
        v125 = v137;
        LOBYTE(v137) = v140(v138, v141) < v135;
        sub_100004C6C(&aBlock);
        v234 |= v137;
        v132 = *&v10[v239];
      }

      swift_beginAccess();
      if (v132 == *(v126 + 40) || (v142 = a1[3], v143 = a1[4], sub_100009178(a1, v142), v144 = (*(v143 + 16))(v142, v143), v145 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line, swift_beginAccess(), sub_10001342C(v34 + v145, &aBlock), v146 = v125, v147 = v248, v148 = v249, sub_100009178(&aBlock, v248), v149 = *(v148 + 2), v150 = v148, v125 = v146, v151 = v149(v147, v150), sub_100004C6C(&aBlock), v151 >= v144))
      {
        v146 = v125;
        v152 = v234;
      }

      else
      {
        v152 = 1;
      }

      v153 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v34 + v153, &aBlock);
      v154 = v248;
      v155 = v249;
      sub_100009178(&aBlock, v248);
      v156 = (*(v155 + 2))(v154, v155);
      v157 = a1[3];
      v158 = a1[4];
      sub_100009178(a1, v157);
      v159 = (*(v158 + 16))(v157, v158);
      sub_100004C6C(&aBlock);
      v234 = (v156 != v159) & v152;
      if (v156 == v159)
      {
        v125 = v146;
        if (v152)
        {
          sub_1004AC910();
          swift_beginAccess();
          v201 = *(v126 + 16);
          v202 = v29 + *(v126 + 24);
          *(v126 + 24) = v202;
          sub_1004A688C(v201, v202, *(v126 + 32), *(v126 + 40));
          v204 = v203;
          if (!v237)
          {
LABEL_156:

            v209.n128_u64[0] = 0;
            sub_1004A88B0(a1, v219 & 1, v217, v215 & 1, 1, v209, v204, a8);

            return;
          }

          if (v226 || v237 <= *(v223 + 16))
          {
            if (v237 <= v10[2])
            {
              v205 = 0;
              v206 = (v10 + 7);
              do
              {
                if (v226)
                {
                  v207 = sub_1004BD484();
                }

                else
                {
                  v207 = *(v243 + 8 * v205 + 32);
                }

                v208 = v207;
                ++v205;
                UIView.untransformedFrame.setter(*(v206 - 3), *(v206 - 2), *(v206 - 1), *v206);

                v206 += 4;
              }

              while (v237 != v205);
              goto LABEL_156;
            }

            __break(1u);
          }

          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
          return;
        }
      }

      else
      {
        v125 = v146;
      }

LABEL_108:
      swift_beginAccess();
      v33 = *(v126 + 16);
      v21 = *(v126 + 24);
      v160 = *(v126 + 32);
      v161 = *(v126 + 40);
      if (v234)
      {
        v162 = v34;
        UIView.untransformedFrame.setter(v33, v21, v160, v161);

        v9 = v242;
      }

      else
      {
        v163 = swift_allocObject();
        *(v163 + 16) = v34;
        *(v163 + 24) = v126;
        v9 = v242;
        *(v163 + 32) = v242;
        *(v163 + 40) = v29;
        v164 = v242;
        v165 = v34;

        UIViewPropertyAnimator.addModifiedAnimations(with:animations:)(2, sub_1004B44B4, v163);
      }

      v38 = v228;
      sub_10001342C(a1, v251);
      v166 = swift_allocObject();
      *(v166 + 16) = v9;
      *(v166 + 24) = v34;
      sub_100013414(v251, v166 + 32);
      v249 = sub_1004B450C;
      v250 = v166;
      aBlock = _NSConcreteStackBlock;
      v246 = 1107296256;
      v247 = sub_1000D6C80;
      v248 = &unk_1005D5A80;
      a3 = _Block_copy(&aBlock);
      v167 = v9;
      v34 = v34;

      [v224 addAnimations:a3];
      _Block_release(a3);
      if (v222)
      {
        goto LABEL_161;
      }

      v168 = v237;
      if (v231 == v237)
      {
        sub_10001342C(a1, v251);
        v169 = swift_allocObject();
        *(v169 + 16) = v243;
        *(v169 + 24) = v29;
        *(v169 + 32) = v167;
        *(v169 + 40) = v220;
        *(v169 + 48) = v231;
        *(v169 + 56) = v227;
        sub_100013414(v251, v169 + 64);
        v249 = sub_1004B4570;
        v250 = v169;
        aBlock = _NSConcreteStackBlock;
        v246 = 1107296256;
        v247 = sub_10013ABCC;
        v248 = &unk_1005D5AD0;
        a3 = _Block_copy(&aBlock);
        v170 = v167;

        v10 = v218;

        v38 = v228;

        v168 = v237;

        [v125 addCompletion:a3];
        _Block_release(a3);
      }

      swift_beginAccess();
      v171 = v125;
      sub_1004BC274();
      if (*((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v9) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1004BC2E4();
        v38 = v228;
      }

      sub_1004BC334();
      swift_endAccess();
      v172 = v240[22];
      if (v29 >= 0.0)
      {
        v173 = v168;
      }

      else
      {
        v173 = v231 - v168;
        if (__OFSUB__(v231, v168))
        {
          goto LABEL_163;
        }

        v172 = v172 * 0.5;
      }

      v174 = __OFSUB__(v173, 1);
      v175 = v173 - 1;
      if (v174)
      {
        goto LABEL_162;
      }

      v122 = v168 + 1;
      [v171 startAnimationAfterDelay:v172 * (v175 & ~(v175 >> 63))];

      *&v252 = v33;
      *(&v252 + 1) = v21;
      *&v253 = v160;
      *(&v253 + 1) = v161;
      v239 += 4;
      v254 = 0;
      v34 = v243;
      if (v221 == v122)
      {
        goto LABEL_124;
      }
    }
  }

  a8 = *(v227 + 16);
  v33 = *(v227 + 24);
  if (v34 >> 62)
  {
    v71 = sub_1004BD6A4();
    v74 = v71;
    if (!v71)
    {
      goto LABEL_182;
    }
  }

  else
  {
    v74 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v74)
    {
      goto LABEL_182;
    }
  }

  if (v74 < 1)
  {
    __break(1u);
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  if (v34 >> 62)
  {
    v71 = sub_1004BD6A4();
  }

  else
  {
    v71 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v238 = v71 - 1;
  if (__OFSUB__(v71, 1))
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v182 = 0;
  v38 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  v235 = v34 & 0xC000000000000001;
  *&v21 = 1107296256;
  v232 = v74;
  do
  {
    if (v235)
    {
      v183 = sub_1004BD484();
    }

    else
    {
      v183 = *(v34 + 8 * v182 + 32);
    }

    v184 = v183;
    v185 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v241 timingParameters:a7];
    sub_10001342C(a1, v251);
    v186 = swift_allocObject();
    *(v186 + 16) = v184;
    sub_100013414(v251, v186 + 24);
    *(v186 + 64) = v29;
    *(v186 + 72) = v9;
    v249 = sub_1004B4608;
    v250 = v186;
    aBlock = _NSConcreteStackBlock;
    v246 = 1107296256;
    v247 = sub_1000D6C80;
    v248 = &unk_1005D5B70;
    v187 = _Block_copy(&aBlock);
    v188 = v9;
    v9 = v184;

    [v185 addAnimations:v187];
    _Block_release(v187);
    v189 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v9 + v189, &aBlock);
    v190 = v248;
    v191 = v249;
    sub_100009178(&aBlock, v248);
    v192 = (*(v191 + 2))(v190, v191);
    v193 = a1[3];
    v194 = a1[4];
    sub_100009178(a1, v193);
    v195 = (*(v194 + 16))(v193, v194);
    sub_100004C6C(&aBlock);
    if (v192 == v195)
    {
      v196 = v185;
      sub_1004A6A18(a1, v185, 1, 1);
    }

    v34 = v243;
    if (v238 == v182)
    {
      sub_10001342C(a1, v251);
      v197 = swift_allocObject();
      *(v197 + 16) = v243;
      *(v197 + 24) = v188;
      *(v197 + 32) = a8;
      *(v197 + 40) = v33;
      sub_100013414(v251, v197 + 48);
      v249 = sub_1004B4664;
      v250 = v197;
      aBlock = _NSConcreteStackBlock;
      v246 = 1107296256;
      v247 = sub_10013ABCC;
      v248 = &unk_1005D5BC0;
      v198 = _Block_copy(&aBlock);
      v199 = v188;

      [v185 addCompletion:v198];
      _Block_release(v198);
    }

    swift_beginAccess();
    v10 = v185;
    sub_1004BC274();
    if (*((*(v38 + v242) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v38 + v242) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    a3 = v182 + 0x8000000000000000;
    sub_1004BC334();
    swift_endAccess();
    if (v182 == 0x8000000000000000)
    {
      goto LABEL_158;
    }

    if (v182 <= 1)
    {
      v200 = 1;
    }

    else
    {
      v200 = v182;
    }

    ++v182;
    [v10 startAnimationAfterDelay:v240[22] * (v200 - 1)];

    v9 = v242;
  }

  while (v232 != v182);
LABEL_182:
  v210 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v9 + v210) == 1)
  {
    *(v9 + v210) = 0;
    v211 = v9 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v212 = *(v211 + 1);
      ObjectType = swift_getObjectType();
      (*(v212 + 24))(v9, ObjectType, v212);
      swift_unknownObjectRelease();
    }
  }

  sub_1004A7128(v34);
}

void sub_1004AA690(uint64_t a1, CGFloat *a2, uint64_t a3)
{
  swift_beginAccess();
  UIView.untransformedFrame.setter(a2[2], a2[3], a2[4], a2[5]);
  v6 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v6)
  {
    v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v6 + v7, v37, &qword_100615100, &unk_1004EA8E0);
    v8 = v38;
    if (v38)
    {
      v9 = v39;
      sub_100009178(v37, v38);
      v10 = *(v8 - 8);
      v11 = __chkstk_darwin();
      v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v10 + 16))(v13, v11);
      v14 = v6;
      sub_100007214(v37, &qword_100615100, &unk_1004EA8E0);
      v15 = (*(v9 + 16))(v8, v9);
      (*(v10 + 8))(v13, v8);
    }

    else
    {
      v16 = v6;
      sub_100007214(v37, &qword_100615100, &unk_1004EA8E0);
      v15 = 0;
    }

    v17 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(a1 + v17, v37);
    v18 = v38;
    v19 = v39;
    sub_100009178(v37, v38);
    v20 = (*(v19 + 16))(v18, v19);
    if (v8)
    {
      v21 = v20;
      sub_100004C6C(v37);
      if (v15 == v21)
      {
        v22 = v6;
        [v22 frame];
        [v22 setFrame:?];
      }

      else
      {
      }
    }

    else
    {

      sub_100004C6C(v37);
    }
  }

  v23 = *(a3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel);
  if (v23)
  {
    v24 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(a1 + v24, v37);
    v25 = v38;
    v26 = v39;
    sub_100009178(v37, v38);
    v27 = *(v26 + 16);
    v28 = v23;
    v29 = v27(v25, v26);
    v30 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v31 = *(a3 + v30);
    if (v31 >> 62)
    {
      v35 = sub_1004BD6A4();
      v33 = v35 - 1;
      if (!__OFSUB__(v35, 1))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v33 = v32 - 1;
      if (!__OFSUB__(v32, 1))
      {
LABEL_13:
        sub_100004C6C(v37);
        if (v29 == v33)
        {
          v34 = v28;
          [v34 frame];
          [v34 setFrame:?];
        }

        return;
      }
    }

    __break(1u);
  }
}

void sub_1004AAA40(uint64_t a1, char *a2, void *a3)
{
  v5 = a1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (*(v5 + 658) == 1)
  {
    v6 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(&a2[v6], v15);
    v7 = v16;
    v8 = v17;
    sub_100009178(v15, v16);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = a3[3];
    v11 = a3[4];
    sub_100009178(a3, v10);
    v12 = (*(v11 + 16))(v10, v11);
    sub_100004C6C(v15);
    if (v9 < v12)
    {
      [a2 setAlpha:0.0];
      swift_beginAccess();
      sub_10045137C(&v14, a2);
      v13 = v14;
      swift_endAccess();
    }
  }
}

void sub_1004AABAC(double a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (!(a3 >> 62))
  {
    v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v14)
    {
      goto LABEL_3;
    }

    goto LABEL_19;
  }

LABEL_18:
  v14 = sub_1004BD6A4();
  if (!v14)
  {
LABEL_19:
    v32 = a5;
    swift_beginAccess();
    v33 = a8;
    if ((*(a5 + 16) & 1) == 0)
    {
      goto LABEL_49;
    }

    v34 = a6 + 1;
    if (__OFADD__(a6, 1))
    {
      goto LABEL_62;
    }

    v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v68 = a4;
    v35 = *(a4 + v32);
    if (v35 >> 62)
    {
      goto LABEL_63;
    }

    v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v36 < v34)
    {
      goto LABEL_64;
    }

LABEL_23:
    v8 = *(v68 + v32);
    v32 = v8 >> 62;
    if (v8 >> 62)
    {
      while (sub_1004BD6A4() < v34)
      {
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        swift_once();
LABEL_41:
        v43 = sub_1004B80B4();
        sub_100007084(v43, qword_100616A40);

        v44 = sub_1004B8094();
        v45 = sub_1004BC9A4();

        if (os_log_type_enabled(v44, v45))
        {
          v46 = v14;
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v73 = v48;
          *v47 = 136315138;
          v10 = sub_100441BE8(v10, v9, &v73);

          *(v47 + 4) = v10;
          _os_log_impl(&_mh_execute_header, v44, v45, "%s", v47, 0xCu);
          sub_100004C6C(v48);
          v33 = a8;

          v14 = v46;

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        v51 = v36 - v34;
        v49 = v36 == v34;
        v50 = v36 <= v34;
        a4 = v68;
        if (!v49)
        {
          if (v50)
          {
            goto LABEL_72;
          }

          v52 = (v14 + 8 * v34);
          do
          {
            v53 = *v52++;
            v54 = v53;
            sub_1004A302C(v54);

            --v51;
          }

          while (v51);
        }

        swift_unknownObjectRelease();
LABEL_49:
        v55 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        v56 = *(a4 + v55);
        swift_beginAccess();
        [v56 setContentOffset:{*(a7 + 16), *(a7 + 24)}];
        __chkstk_darwin();
        sub_1004AFE30(sub_1004B4800);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v57 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a4 + v57) = _swiftEmptyArrayStorage;

        v58 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel) = 0;
        if (v58)
        {
          [v58 removeFromSuperview];
        }

        v14 = *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        if (!v14)
        {
          return;
        }

        *(a4 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView) = 0;
        v59 = v33[3];
        v34 = v33[4];
        sub_100009178(v33, v59);
        v8 = (*(v34 + 16))(v59, v34);
        v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
        swift_beginAccess();
        v60 = *(a4 + v32);
        if ((v60 & 0xC000000000000001) != 0)
        {
          goto LABEL_59;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v8 < *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v61 = *(v60 + 8 * v8 + 32);
          goto LABEL_56;
        }

        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v36 = sub_1004BD6A4();
        if (v36 >= v34)
        {
          goto LABEL_23;
        }

LABEL_64:
        __break(1u);
      }
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < v34)
    {
      goto LABEL_66;
    }

    if (v34 < 0)
    {
      goto LABEL_67;
    }

    if (v32)
    {
      v37 = sub_1004BD6A4();
    }

    else
    {
      v37 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v37 < v36)
    {
      goto LABEL_68;
    }

    if ((v8 & 0xC000000000000001) == 0 || v34 == v36)
    {
      swift_bridgeObjectRetain_n();
      if (!v32)
      {
LABEL_36:
        v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
        goto LABEL_39;
      }
    }

    else
    {
      if (v34 >= v36)
      {
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      type metadata accessor for SyncedLyricsLineView(0);
      swift_bridgeObjectRetain_n();
      v38 = v34;
      do
      {
        v39 = v38 + 1;
        sub_1004BD464(v38);
        v38 = v39;
      }

      while (v36 != v39);
      if (!v32)
      {
        goto LABEL_36;
      }
    }

    sub_1004BD6B4();
    v14 = v40;
    v34 = v41;
    v36 = v42 >> 1;
LABEL_39:
    swift_unknownObjectRetain();

    v73 = 0;
    v74 = 0xE000000000000000;
    sub_1004BD404(52);
    v75._object = 0x800000010050EDB0;
    v75._countAndFlagsBits = 0xD00000000000002CLL;
    sub_1004BC024(v75);
    if (!__OFSUB__(v36, v34))
    {
      v72[0] = v36 - v34;
      v76._countAndFlagsBits = sub_1004BD934();
      sub_1004BC024(v76);

      v77._countAndFlagsBits = 0x73656E696C20;
      v77._object = 0xE600000000000000;
      sub_1004BC024(v77);
      v10 = v73;
      v9 = v74;
      if (qword_100614EF8 != -1)
      {
        goto LABEL_70;
      }

      goto LABEL_41;
    }

    goto LABEL_69;
  }

LABEL_3:
  if (v14 >= 1)
  {
    v68 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel;
    v67 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
    swift_beginAccess();
    v9 = 0;
    v66 = v14;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v15 = sub_1004BD484();
      }

      else
      {
        v15 = *(a3 + 8 * v9 + 32);
      }

      v10 = v15;
      v8 = v15;
      v16 = UIView.untransformedFrame.getter();
      UIView.untransformedFrame.setter(v16, v17 + a1, v18, v19);
      v20 = *(a4 + v68);
      if (v20)
      {
        v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
        swift_beginAccess();
        sub_10001342C(v10 + v21, v69);
        v22 = v70;
        v23 = a4;
        v24 = v71;
        sub_100009178(v69, v70);
        v25 = *(v24 + 16);
        v26 = v20;
        v27 = v24;
        a4 = v23;
        v8 = v25(v22, v27);
        v28 = *(v23 + v67);
        if (v28 >> 62)
        {
          v31 = sub_1004BD6A4();
          v30 = v31 - 1;
          if (__OFSUB__(v31, 1))
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v30 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_17;
          }
        }

        sub_100004C6C(v69);
        if (v8 == v30)
        {
          v8 = v26;
          [v8 frame];
          [v8 setFrame:?];
        }

        v14 = v66;
      }

      ++v9;

      if (v14 == v9)
      {
        goto LABEL_19;
      }
    }
  }

  __break(1u);
LABEL_59:

  v61 = sub_1004BD484();

LABEL_56:
  sub_1004AC0B4(v14, v61);
}

uint64_t sub_1004AB3B0(__int128 *a1, uint64_t a2)
{
  sub_1004BD404(56);
  v3._object = 0x800000010050EDE0;
  v3._countAndFlagsBits = 0xD00000000000002FLL;
  sub_1004BC024(v3);
  swift_beginAccess();
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v4._countAndFlagsBits = 0x20726F6620;
  v4._object = 0xE500000000000000;
  sub_1004BC024(v4);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

unint64_t sub_1004AB4B4(uint64_t a1, unint64_t a2)
{
  v3 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_17:
    v4 = sub_1004BD6A4();
  }

  else
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v6 = sub_1004BD484();
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a2 + 8 * v5 + 32);
    }

    v7 = v6;
    type metadata accessor for SyncedLyricsLineView(0);
    v8 = sub_1004BCFA4();

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

id sub_1004AB5A4(char *a1, void *a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v5], v13);
  v6 = v14;
  v7 = v15;
  sub_100009178(v13, v14);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = a2[3];
  v10 = a2[4];
  sub_100009178(a2, v9);
  v11 = (*(v10 + 16))(v9, v10);
  sub_100004C6C(v13);
  if (v11 < v8)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

id sub_1004AB708(uint64_t a1, char *a2)
{
  sub_1004A302C(a2);
  v3 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a2[v3], v8);
  v4 = v9;
  v5 = v10;
  sub_100009178(v8, v9);
  v6 = (*(v5 + 16))(v4, v5);
  result = sub_100004C6C(v8);
  if (!v6)
  {
    [a2 frame];
    return [a2 setFrame:?];
  }

  return result;
}

void sub_1004AB7E0(double a1, double a2, double a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5 >> 62)
  {
    v12 = sub_1004BD6A4();
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
      goto LABEL_10;
    }
  }

  if (v12 < 1)
  {
    goto LABEL_26;
  }

  v13 = 0;
  do
  {
    if ((a5 & 0xC000000000000001) != 0)
    {
      v14 = sub_1004BD484();
    }

    else
    {
      v14 = *(a5 + 8 * v13 + 32);
    }

    v15 = v14;
    ++v13;
    [v14 frame];
    [v15 setFrame:?];
  }

  while (v12 != v13);
LABEL_10:
  v16 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a6 + v16, v27);
  v17 = v28;
  v18 = v29;
  sub_100009178(v27, v28);
  v19 = (*(v18 + 16))(v17, v18);
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v21 = *(a7 + v20);
  if (v21 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v19; i = sub_1004BD6A4())
  {
    sub_100004C6C(v27);
    if (v19 == i)
    {
LABEL_13:
      v23 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      [*(a7 + v23) setContentOffset:{a2, a3}];
      __chkstk_darwin();
      sub_1004AFE30(sub_1004B47E8);
      *(a7 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
      v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
      swift_beginAccess();
      *(a7 + v24) = _swiftEmptyArrayStorage;

      return;
    }

    if (v19 >= i)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v25 = *(a7 + v20);
      if ((v25 & 0xC000000000000001) != 0)
      {

        v26 = sub_1004BD484();

        goto LABEL_19;
      }

      if (v19 < 0)
      {
        break;
      }

      if (v19 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v26 = *(v25 + 8 * v19 + 32);
LABEL_19:
      ++v19;
      sub_1004A302C(v26);

      if (i == v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_1004ABAEC(uint64_t a1, double a2, double a3)
{
  sub_1004BD404(68);
  v4._object = 0x800000010050ED30;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  sub_1004BC024(v4);
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v5._countAndFlagsBits = 0x20726F6620;
  v5._object = 0xE500000000000000;
  sub_1004BC024(v5);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

id sub_1004ABBE4(char *a1, void *a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(&a1[v5], v13);
  v6 = v14;
  v7 = v15;
  sub_100009178(v13, v14);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = a2[3];
  v10 = a2[4];
  sub_100009178(a2, v9);
  v11 = (*(v10 + 16))(v9, v10);
  sub_100004C6C(v13);
  if (v8 < v11)
  {
    swift_beginAccess();
  }

  [a1 frame];
  return [a1 setFrame:?];
}

void sub_1004ABD30(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    goto LABEL_18;
  }

  if (*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a4 + 32); ; i = sub_1004BD484())
    {
      v9 = i;
      v10 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
      swift_beginAccess();
      sub_10001342C(v9 + v10, v21);

      v11 = v22;
      v12 = v23;
      sub_100009178(v21, v22);
      v13 = (*(v12 + 16))(v11, v12);
      v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
      swift_beginAccess();
      v15 = *(a5 + v14);
      if (v15 >> 62)
      {
        v16 = sub_1004BD6A4();
        if (v16 < v13)
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 < v13)
        {
          goto LABEL_20;
        }
      }

      sub_100004C6C(v21);
      if (v13 == v16)
      {
LABEL_7:
        v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
        swift_beginAccess();
        [*(a5 + v17) setContentOffset:{a1, a2}];
        __chkstk_darwin();
        sub_1004AFE30(sub_1004B47F4);
        *(a5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = 0;
        v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
        swift_beginAccess();
        *(a5 + v18) = _swiftEmptyArrayStorage;

        return;
      }

      if (v13 >= v16)
      {
        goto LABEL_22;
      }

      while (1)
      {
        v19 = *(a5 + v14);
        if ((v19 & 0xC000000000000001) != 0)
        {

          v20 = sub_1004BD484();

          goto LABEL_13;
        }

        if (v13 < 0)
        {
          break;
        }

        if (v13 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v20 = *(v19 + 8 * v13 + 32);
LABEL_13:
        ++v13;
        sub_1004A302C(v20);

        if (v16 == v13)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1004ABFBC(uint64_t a1, double a2, double a3)
{
  sub_1004BD404(66);
  v4._object = 0x800000010050ED70;
  v4._countAndFlagsBits = 0xD000000000000039;
  sub_1004BC024(v4);
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v5._countAndFlagsBits = 0x20726F6620;
  v5._object = 0xE500000000000000;
  sub_1004BC024(v5);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

void sub_1004AC0B4(objc_class *a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v2[v6] contentOffset];
  v8 = v7;
  v10 = v9;
  v11 = [v2 view];
  if (!v11)
  {
    __break(1u);
    goto LABEL_38;
  }

  v12 = v11;
  [v11 frame];
  v14 = v13;

  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
  swift_beginAccess();
  v16 = *&v3[v15];
  if (v16 > 0.0)
  {
    goto LABEL_5;
  }

  v17 = [v3 view];
  if (!v17)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v18 = v17;
  [v17 frame];
  v16 = v19;

LABEL_5:
  v20 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a2 + v20, &v66);
  v65 = sub_1004A6430(&v66, v8, v10, v14, v16);
  sub_100004C6C(&v66);
  v21 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a1 + v21, &v66);
  v22 = v69;
  v23 = v70;
  sub_100009178(&v66, v69);
  v64 = (*(v23 + 2))(v22, v23);
  sub_10001342C(a2 + v20, v74);
  v24 = v75;
  v25 = v76;
  sub_100009178(v74, v75);
  v63 = (*(v25 + 16))(v24, v25);
  sub_100004C6C(v74);
  sub_100004C6C(&v66);
  v57 = v21;
  sub_10001342C(a1 + v21, &v66);
  v26 = v69;
  v27 = v70;
  sub_100009178(&v66, v69);
  v28 = (*(v27 + 16))(v26, v27);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v30 = *&v3[v29];
  v58 = v6;
  if (v30 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= v28; i = sub_1004BD6A4())
  {
    v56 = a1;
    sub_100004C6C(&v66);
    if (v28 == i)
    {
LABEL_8:

      if (v63 >= v64)
      {
        v32 = v58;
        v33 = *&v3[v58];
        swift_beginAccess();
        v34 = v33;
        [v34 contentOffset];
        [v34 setContentOffset:?];

        v66 = 0;
        v67 = 0xE000000000000000;
        sub_1004BD404(67);
        v72 = v66;
        v73 = v67;
        v77._object = 0x800000010050ECB0;
        v77._countAndFlagsBits = 0xD00000000000003ALL;
        sub_1004BC024(v77);
        [*&v3[v32] contentOffset];
        v66 = v35;
        v67 = v36;
        _s3__C7CGPointVMa_3(0);
        sub_1004BD5C4();
        v78._countAndFlagsBits = 0x20726F6620;
        v78._object = 0xE500000000000000;
        sub_1004BC024(v78);
        sub_10001342C(v56 + v57, &v66);
        sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
        sub_1004BD5C4();
        sub_100004C6C(&v66);
        v27 = v72;
        v26 = v73;
        if (qword_100614EF8 == -1)
        {
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      return;
    }

    if (v28 >= i)
    {
      goto LABEL_35;
    }

    a1 = i;
    v27 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    v62 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
    swift_beginAccess();
    swift_beginAccess();
    v43 = 0;
    v26 = 0;
    v61 = &v68;
    v59 = i;
    v60 = v29;
    while (1)
    {
      v44 = *&v3[v29];
      if ((v44 & 0xC000000000000001) != 0)
      {

        v45 = sub_1004BD484();

        goto LABEL_20;
      }

      if (v28 < 0)
      {
        break;
      }

      if (v28 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v45 = *(v44 + 8 * v28 + 32);
LABEL_20:
      v66 = v45;
      __chkstk_darwin();
      v55[2] = &v66;
      if ((sub_10042BA44(sub_1004B43B8, v55, v65) & 1) != 0 && v63 < v64)
      {
        v46 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v27 + 664) stiffness:*(v27 + 672) damping:*(v27 + 680) initialVelocity:{0.0, 0.0}];
        sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v46).super.isa;
        v48 = swift_allocObject();
        *(v48 + 16) = v3;
        *(v48 + 24) = v45;
        v70 = sub_1004B4414;
        v71 = v48;
        v66 = _NSConcreteStackBlock;
        v67 = 1107296256;
        v68 = sub_1000D6C80;
        v69 = &unk_1005D5990;
        v49 = _Block_copy(&v66);
        v50 = v3;
        v51 = v45;

        [(objc_class *)isa addAnimations:v49];
        _Block_release(v49);
        v52 = v62;
        swift_beginAccess();
        a1 = isa;
        sub_1004BC274();
        v53 = *&v3[v52] & 0xFFFFFFFFFFFFFF8;
        v29 = *(v53 + 0x10);
        if (v29 >= *(v53 + 24) >> 1)
        {
          sub_1004BC2E4();
        }

        sub_1004BC334();
        swift_endAccess();
        [(objc_class *)a1 startAnimationAfterDelay:*(v27 + 176) * v43];

        if (__OFADD__(v43++, 1))
        {
          goto LABEL_32;
        }

        a1 = v59;
        v29 = v60;
      }

      else
      {
        sub_1004A302C(v45);
      }

      if (a1 == ++v28)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  swift_once();
LABEL_10:
  v37 = sub_1004B80B4();
  sub_100007084(v37, qword_100616A40);

  v38 = sub_1004B8094();
  v39 = sub_1004BC9A4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v66 = v41;
    *v40 = 136315138;
    v42 = sub_100441BE8(v27, v26, &v66);

    *(v40 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v38, v39, "%s", v40, 0xCu);
    sub_100004C6C(v41);
  }

  else
  {
  }
}

void sub_1004AC910()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v10 = v2;
  v3 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator);
  if (v3)
  {
    v4 = v3;

    v5 = v4;
    sub_1004BC274();
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1004BC2E4();
    }

    sub_1004BC334();

    v2 = v10;
    if (!(v10 >> 62))
    {
LABEL_5:
      v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_6;
      }

LABEL_16:

      return;
    }
  }

  else
  {

    if (!(v2 >> 62))
    {
      goto LABEL_5;
    }
  }

  v6 = sub_1004BD6A4();
  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = sub_1004BD484();
      }

      else
      {
        v8 = *(v2 + 8 * i + 32);
      }

      v9 = v8;
      if ([v8 state] == 1)
      {
        [v9 stopAnimation:0];
        [v9 finishAnimationAtPosition:0];
      }
    }

    goto LABEL_16;
  }

  __break(1u);
}

Swift::Void __swiftcall SyncedLyricsViewController.didUpdateFocus(in:with:)(UIFocusUpdateContext in, UIFocusAnimationCoordinator with)
{
  v3 = v2;
  v6 = sub_1004BA8F4();
  v58 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1004BA924();
  v56 = *(v9 - 8);
  v57 = v9;
  __chkstk_darwin();
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1004BA954();
  v59 = *(v12 - 8);
  __chkstk_darwin();
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = type metadata accessor for SyncedLyricsViewController(0);
  v61.receiver = v3;
  v61.super_class = v17;
  objc_msgSendSuper2(&v61, "didUpdateFocusInContext:withAnimationCoordinator:", in.super.isa, with.super.isa);
  v18 = [v3 traitCollection];
  v19 = [v18 userInterfaceIdiom];

  if (v19 == 2)
  {
    v54 = v8;
    v55 = v6;
    v20 = [(objc_class *)in.super.isa nextFocusedItem];
    v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v22 = &selRef_values;
    if (!v20 || (v23 = *&v3[v21], swift_unknownObjectRelease(), v24 = v20 == v23, v22 = &selRef_values, !v24))
    {
      v25 = [(objc_class *)in.super.isa previouslyFocusedItem];
      if (v25)
      {
        v26 = *&v3[v21];
        v27 = v25;
        swift_unknownObjectRelease();
        v24 = v27 == v26;
        v22 = &selRef_values;
        if (v24)
        {
          if ([*&v3[v21] isTracking])
          {
            v28 = [*&v3[v21] panGestureRecognizer];
            [v28 setEnabled:0];

            sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
            v52 = sub_1004BCB44();
            sub_1004BA944();
            sub_1004BA9B4();
            v29 = *(v59 + 8);
            v59 += 8;
            v53 = v29;
            v29(v14, v12);
            v30 = swift_allocObject();
            *(v30 + 16) = v3;
            aBlock[4] = sub_1004AFCC4;
            aBlock[5] = v30;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000D6C80;
            aBlock[3] = &unk_1005D5720;
            v51 = _Block_copy(aBlock);
            v31 = v3;

            sub_1004BA914();
            aBlock[0] = _swiftEmptyArrayStorage;
            v50 = sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
            sub_100003ABC(&qword_100616B80, &unk_1004EC758);
            sub_1000F96D4(&qword_100616B88, &qword_100616B80, &unk_1004EC758);
            v33 = v54;
            v32 = v55;
            sub_1004BD2D4();
            v35 = v51;
            v34 = v52;
            sub_1004BCB04();
            _Block_release(v35);

            v36 = v32;
            v22 = &selRef_values;
            (*(v58 + 8))(v33, v36);
            (*(v56 + 8))(v11, v57);
            v53(v16, v12);
          }
        }
      }
    }

    v37 = [(objc_class *)in.super.isa nextFocusedItem];
    v38 = [in.super.isa v22[292]];
    if (v37)
    {
      if (v38)
      {
        v39 = v38;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v37 == v39)
        {
          return;
        }

LABEL_15:
        v40 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
        if (!v40)
        {
          return;
        }

        v41 = v40;
        v42 = [(objc_class *)in.super.isa nextFocusedItem];
        if (v42)
        {
          v43 = v42;
          v44 = *&v3[v21];
          swift_unknownObjectRelease();
          v45 = v43 == v44;
          v46 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = v45;
          if (v45 != v46)
          {
            if (v43 == v44)
            {
              v47 = &selRef_blackColor;
LABEL_22:
              v49 = [objc_opt_self() *v47];
              [v41 setTintColor:v49];

              sub_1004928CC();
              goto LABEL_23;
            }

LABEL_21:
            v47 = &selRef_whiteColor;
            goto LABEL_22;
          }
        }

        else
        {
          v48 = v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState];
          v41[OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_isInFocusedState] = 0;
          if (v48)
          {
            goto LABEL_21;
          }
        }

LABEL_23:

        return;
      }
    }

    else if (!v38)
    {
      return;
    }

    swift_unknownObjectRelease();
    goto LABEL_15;
  }
}

void sub_1004AD108(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  v3 = [*(a1 + v2) panGestureRecognizer];
  [v3 setEnabled:1];
}

id SyncedLyricsViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v7 = Int.seconds.getter(0);
  *&v3[v6] = v7;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v7;
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  sub_100495C14(0, 0, __src);
  memcpy(&v3[v8], __src, 0x2B0uLL);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v9 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v10 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v10 = 0u;
  *(v10 + 1) = 0u;
  *(v10 + 4) = 0;
  v11 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v11 = 0;
  v11[1] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v3[v12] = [objc_allocWithZone(UIView) init];
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView(0, v14);
  *&v3[v13] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v3[v15] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v16 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v17 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v19 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v19 - 8) + 56))(&v3[v18], 1, 1, v19);
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v21 = sub_1004B6CD4();
  (*(*(v21 - 8) + 56))(&v3[v20], 1, 1, v21);
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v22 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v22 = 0u;
  v22[1] = 0u;
  v23 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v24 = *&UIEdgeInsetsZero.bottom;
  *v23 = *&UIEdgeInsetsZero.top;
  v23[1] = v24;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  if (a2)
  {
    v25 = sub_1004BBE24();
  }

  else
  {
    v25 = 0;
  }

  v28.receiver = v3;
  v28.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v26 = objc_msgSendSuper2(&v28, "initWithNibName:bundle:", v25, a3);

  return v26;
}

id SyncedLyricsViewController.init(coder:)(void *a1)
{
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isPlayingSpatial] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen] = 0;
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  v4 = Int.seconds.getter(0);
  *&v1[v3] = v4;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight] = v4;
  v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  sub_100495C14(0, 0, __src);
  memcpy(&v1[v5], __src, 0x2B0uLL);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics] = 0;
  v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider];
  *v6 = 0u;
  *(v6 + 1) = 0u;
  *(v6 + 4) = 0;
  v7 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomViewMetadata];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  v8 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_shareHandler];
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_contentView;
  *&v1[v9] = [objc_allocWithZone(UIView) init];
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  type metadata accessor for SyncedLyricsViewController.ScrollView(0, v11);
  *&v1[v10] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_displayLink] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_blurredLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews] = &_swiftEmptySetSingleton;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = 0;
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_tapFeedbackGenerator;
  *&v1[v12] = [objc_allocWithZone(UISelectionFeedbackGenerator) init];
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_automaticallyCreatedDisclaimerLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer] = 0;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  v14 = type metadata accessor for Lyrics.Translation(0);
  (*(*(v14 - 8) + 56))(&v1[v13], 1, 1, v14);
  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  v16 = type metadata accessor for Lyrics.Transliteration(0);
  (*(*(v16 - 8) + 56))(&v1[v15], 1, 1, v16);
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators] = _swiftEmptyArrayStorage;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineUpdateAnimator] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] = 0;
  v17 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastTapDate;
  v18 = sub_1004B6CD4();
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isBackgrounded] = 0;
  v19 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_previousBounds];
  *v19 = 0u;
  v19[1] = 0u;
  v20 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lastSeenLayoutMargins];
  v21 = *&UIEdgeInsetsZero.bottom;
  *v20 = *&UIEdgeInsetsZero.top;
  v20[1] = v21;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isSettingLyrics] = 0;
  *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] = 0;
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  v24.receiver = v1;
  v24.super_class = type metadata accessor for SyncedLyricsViewController(0);
  v22 = objc_msgSendSuper2(&v24, "initWithCoder:", a1);

  if (v22)
  {
  }

  return v22;
}

id sub_1004AD9FC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_1004ADC5C(uint64_t a1)
{
  sub_1004BD404(35);
  v2._object = 0x800000010050F020;
  v2._countAndFlagsBits = 0xD000000000000021;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

uint64_t sub_1004ADD04(uint64_t a1)
{
  sub_1004BD404(33);
  v2._object = 0x800000010050F000;
  v2._countAndFlagsBits = 0xD00000000000001FLL;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

void sub_1004ADDA0(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*(a1 + v8) setContentOffset:{a3, a4}];
  sub_1004BD404(65);
  v19 = 0;
  v20 = 0xE000000000000000;
  v21._object = 0x800000010050EFC0;
  v21._countAndFlagsBits = 0xD000000000000038;
  sub_1004BC024(v21);
  *v18 = a3;
  *&v18[1] = a4;
  _s3__C7CGPointVMa_3(0);
  sub_1004BD5C4();
  v22._countAndFlagsBits = 0x20726F6620;
  v22._object = 0xE500000000000000;
  sub_1004BC024(v22);
  v9 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(a2 + v9, v18);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  sub_100004C6C(v18);
  v11 = v19;
  v10 = v20;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1004B80B4();
  sub_100007084(v12, qword_100616A40);

  v13 = sub_1004B8094();
  v14 = sub_1004BC9A4();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    v17 = sub_100441BE8(v11, v10, v18);

    *(v15 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s", v15, 0xCu);
    sub_100004C6C(v16);
  }

  else
  {
  }
}

void SyncedLyricsViewController.syncedLyrics(_:select:)(uint64_t a1, void *a2, __n128 a3)
{
  v4 = v3;
  sub_1004AFE30(sub_1004B1E84);
  v7 = a2[3];
  v8 = a2[4];
  sub_100009178(a2, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v11 = *&v4[v10];
  if ((v11 & 0xC000000000000001) == 0)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v9 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v11 + 8 * v9 + 32);
      goto LABEL_5;
    }

    __break(1u);
    goto LABEL_24;
  }

  v9 = sub_1004BD484();

LABEL_5:
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v12] contentOffset];
  v14 = v13;
  v16 = v15;
  v17 = [v4 view];
  if (v17)
  {
    v18 = v17;
    [v17 frame];
    v20 = v19;

    v21 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v22 = *&v4[v21];
    if (v22 > 0.0)
    {
      goto LABEL_9;
    }

    v23 = [v4 view];
    if (v23)
    {
      v24 = v23;
      [v23 frame];
      v22 = v25;

LABEL_9:
      [v9 frame];
      v57.origin.x = v26;
      v57.origin.y = v27;
      v57.size.width = v28;
      v57.size.height = v29;
      v56.origin.x = v14;
      v56.origin.y = v16;
      v56.size.width = v20;
      v56.size.height = v22;
      if (CGRectContainsRect(v56, v57))
      {
        sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
        v30 = sub_1004A6EE0(0, 1);
        isa = UIViewPropertyAnimator.init(springTimingParameters:)(v30).super.isa;
        sub_1004A6A18(a2, isa, 0, 1);
        v32 = swift_allocObject();
        *(v32 + 16) = v4;
        v54 = sub_1004B1E8C;
        v55 = v32;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_1000D6C80;
        v53 = &unk_1005D5770;
        v33 = _Block_copy(&aBlock);
        v34 = v4;

        [(objc_class *)isa addAnimations:v33];
        _Block_release(v33);
        v35 = [(objc_class *)isa state]== 3;
        v34[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v35;
        v36 = swift_allocObject();
        *(v36 + 16) = v34;
        v54 = sub_1004B1EA8;
        v55 = v36;
        aBlock = _NSConcreteStackBlock;
        v51 = 1107296256;
        v52 = sub_10013ABCC;
        v53 = &unk_1005D57C0;
        v37 = _Block_copy(&aBlock);
        v38 = v34;

        [(objc_class *)isa addCompletion:v37];
        _Block_release(v37);
        [(objc_class *)isa startAnimation];

        v9 = isa;
LABEL_20:

        return;
      }

      if (qword_100614EF8 == -1)
      {
LABEL_12:
        v39 = sub_1004B80B4();
        sub_100007084(v39, qword_100616A40);
        v40 = sub_1004B8094();
        v41 = sub_1004BC9A4();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = v43;
          *v42 = 136315138;
          *(v42 + 4) = sub_100441BE8(0xD000000000000056, 0x800000010050E890, &aBlock);
          _os_log_impl(&_mh_execute_header, v40, v41, "%s", v42, 0xCu);
          sub_100004C6C(v43);
        }

        swift_beginAccess();
        v44 = *(a1 + 96);
        if (v44)
        {
          v45 = *(a1 + 104);

          v47 = v44(v46);
          swift_beginAccess();
          v48 = 0.0;
          if (*(a1 + 88) == 1)
          {
            v48 = Lyrics.spatialOffset.getter();
          }

          sub_10003CC4C(v44, v45);
          v49 = v47 - v48;
        }

        else
        {
          v49 = 0.0;
        }

        sub_1004B0198(a2, 0, 1, v49);
        goto LABEL_20;
      }

LABEL_24:
      swift_once();
      goto LABEL_12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1004AE5D4(uint64_t a1)
{
  sub_1004BD404(32);
  v2._object = 0x800000010050EF40;
  v2._countAndFlagsBits = 0xD00000000000001ELL;
  sub_1004BC024(v2);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  sub_1004BD5C4();
  return 0;
}

void sub_1004AE670()
{
  v0 = sub_1004A61E0();
  v1 = v0;
  if (v0 >> 62)
  {
    v2 = sub_1004BD6A4();
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1004BD484();
  }

  else
  {
    v3 = *(v1 + 32);
  }

  v4 = v3;
  sub_1004A11E4(v3, 2, &v23);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  UIView.untransformedFrame.setter(v6, v8, v10, v12);

  v14 = v2 - 1;
  if (v2 != 1)
  {
    v15 = 5;
    do
    {
      *&v23 = v6;
      *(&v23 + 1) = v8;
      *&v24 = v10;
      *(&v24 + 1) = v12;
      v25 = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v16 = sub_1004BD484();
      }

      else
      {
        v16 = *(v1 + 8 * v15);
      }

      v17 = v16;
      sub_1004A11E4(v16, 2, &v23);
      v6 = v18;
      v8 = v19;
      v10 = v20;
      v12 = v21;
      v22 = v17;
      UIView.untransformedFrame.setter(v6, v8, v10, v12);

      ++v15;
      --v14;
    }

    while (v14);
  }

LABEL_8:
}

uint64_t sub_1004AE820(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentAnimators;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (v4 >> 62)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(a2 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating) = result > 0;
  return result;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizer(_:shouldRecognizeSimultaneouslyWith:)(UIGestureRecognizer _, UIGestureRecognizer shouldRecognizeSimultaneouslyWith)
{
  v3 = v2;
  v5 = [v3 traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == 2)
  {
    v7 = *&v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
    if (v7 && (sub_100009130(0, &qword_100616BF8, UIGestureRecognizer_ptr), v8 = _.super.isa, v9 = v7, v10 = sub_1004BCFA4(), v9, v8, (v10 & 1) != 0))
    {
      v11 = 0;
    }

    else
    {
      sub_100009130(0, &qword_100616BF0, NSObject_ptr);
      v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
      swift_beginAccess();
      v13 = [*&v3[v12] panGestureRecognizer];
      v14 = sub_1004BCFA4();

      v11 = v14 ^ 1;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

Swift::Bool __swiftcall SyncedLyricsViewController.gestureRecognizerShouldBegin(_:)(UIGestureRecognizer a1)
{
  v2 = v1;
  v4 = [v2 traitCollection];
  v5 = [v4 userInterfaceIdiom];

  if (v5 != 2)
  {
    return 1;
  }

  v6 = *&v2[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_menuRecognizer];
  if (!v6)
  {
    return 1;
  }

  sub_100009130(0, &qword_100616BF8, UIGestureRecognizer_ptr);
  v7 = a1.super.isa;
  v8 = v6;
  v9 = sub_1004BCFA4();

  if ((v9 & 1) == 0)
  {
    return 1;
  }

  v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  return v2[v10] == 1;
}

Swift::Void __swiftcall SyncedLyricsViewController.scrollViewDidScroll(_:)(UIScrollView a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (v2)
  {
    v3 = v2;
    sub_1004A3320();
  }
}

void sub_1004AED54(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
  }
}

void SyncedLyricsViewController.reportConcernData.getter(void *a1@<X8>)
{
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v4 = &v46 - v3;
  sub_100003ABC(&qword_100615048, &qword_1004EA890);
  __chkstk_darwin();
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v8 = &v46 - v7;
  sub_100003ABC(&qword_100616AE0, &qword_1004EC720);
  __chkstk_darwin();
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v46 - v11;
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  v14 = *(v1 + v13);
  if (!v14)
  {
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 1;
LABEL_29:
    *a1 = v20;
    a1[1] = v25;
    a1[2] = v21;
    a1[3] = v22;
    a1[4] = v23;
    a1[5] = v24;
    return;
  }

  v47 = v4;
  v48 = a1;
  v15 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTranslation;
  swift_beginAccess();
  sub_10000F778(v1 + v15, v10, &qword_100616AE0, &qword_1004EC720);
  v16 = type metadata accessor for Lyrics.Translation(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  if (v18(v10, 1, v16) == 1)
  {
    v19 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTranslation;
    swift_beginAccess();
    sub_10000F778(v14 + v19, v12, &qword_100616AE0, &qword_1004EC720);
    LODWORD(v19) = v18(v10, 1, v16);

    if (v19 != 1)
    {
      sub_100007214(v10, &qword_100616AE0, &qword_1004EC720);
    }
  }

  else
  {
    sub_1004B492C(v10, v12, type metadata accessor for Lyrics.Translation);
    (*(v17 + 56))(v12, 0, 1, v16);
  }

  if (v18(v12, 1, v16) == 1)
  {
    sub_100007214(v12, &qword_100616AE0, &qword_1004EC720);
    v20 = 0;
    v25 = 0;
  }

  else
  {
    v26 = &v12[*(v16 + 20)];
    v20 = *v26;
    v25 = *(v26 + 1);

    sub_1004B3CFC(v12, type metadata accessor for Lyrics.Translation);
  }

  v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_currentTransliteration;
  swift_beginAccess();
  sub_10000F778(v1 + v27, v6, &qword_100615048, &qword_1004EA890);
  v28 = type metadata accessor for Lyrics.Transliteration(0);
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v6, 1, v28) == 1)
  {
    v31 = OBJC_IVAR____TtC7LyricsX6Lyrics_currentTransliteration;
    swift_beginAccess();
    sub_10000F778(v14 + v31, v8, &qword_100615048, &qword_1004EA890);
    if (v30(v6, 1, v28) != 1)
    {
      sub_100007214(v6, &qword_100615048, &qword_1004EA890);
    }
  }

  else
  {
    sub_1004B492C(v6, v8, type metadata accessor for Lyrics.Transliteration);
    (*(v29 + 56))(v8, 0, 1, v28);
  }

  v32 = v30(v8, 1, v28);
  v33 = v47;
  if (v32 == 1)
  {
    sub_100007214(v8, &qword_100615048, &qword_1004EA890);
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v34 = &v8[*(v28 + 20)];
    v21 = *v34;
    v22 = *(v34 + 1);

    sub_1004B3CFC(v8, type metadata accessor for Lyrics.Transliteration);
  }

  a1 = v48;
  v35 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v36 = *(v1 + v35);
  if (!(v36 >> 62))
  {
    v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_27:

    v45 = type metadata accessor for Lyrics.TextLine(0);
    (*(*(v45 - 8) + 56))(v33, 1, 1, v45);
    goto LABEL_28;
  }

  v37 = sub_1004BD6A4();
  if (!v37)
  {
    goto LABEL_27;
  }

LABEL_19:
  v38 = v37 - 1;
  if (__OFSUB__(v37, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  if ((v36 & 0xC000000000000001) != 0)
  {
LABEL_31:

    v39 = sub_1004BD484();

LABEL_24:

    v40 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v39 + v40, v49);

    sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
    v41 = type metadata accessor for Lyrics.TextLine(0);
    v42 = swift_dynamicCast();
    v43 = *(v41 - 8);
    (*(v43 + 56))(v33, v42 ^ 1u, 1, v41);
    if ((*(v43 + 48))(v33, 1, v41) != 1)
    {
      v44 = (v33 + *(v41 + 52));
      v23 = *v44;
      v24 = v44[1];

      sub_1004B3CFC(v33, type metadata accessor for Lyrics.TextLine);
      goto LABEL_29;
    }

LABEL_28:
    sub_100007214(v33, &qword_100616C00, &unk_1004EBFF0);
    v23 = 0;
    v24 = 0;
    goto LABEL_29;
  }

  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v38 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v39 = *(v36 + 8 * v38 + 32);
    goto LABEL_24;
  }

  __break(1u);
}

double sub_1004AF63C(void *a1, void *a2)
{
  v4 = sub_1004BA8F4();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1004BA924();
  v27 = *(v8 - 8);
  *&v9 = __chkstk_darwin().n128_u64[0];
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a1 traitCollection];
  v13 = [v12 preferredContentSizeCategory];

  v14 = [a2 preferredContentSizeCategory];
  v15 = sub_1004BBE64();
  v17 = v16;
  if (v15 == sub_1004BBE64() && v17 == v18)
  {
  }

  else
  {
    v26 = v5;
    v20 = sub_1004BD9C4();

    if ((v20 & 1) == 0)
    {
      sub_100009130(0, &qword_100616B70, OS_dispatch_queue_ptr);
      v22 = sub_1004BCB44();
      v23 = swift_allocObject();
      *(v23 + 16) = a1;
      aBlock[4] = sub_1004B4F60;
      aBlock[5] = v23;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      aBlock[3] = &unk_1005D6340;
      v24 = _Block_copy(aBlock);
      v25 = a1;

      sub_1004BA914();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1004B4DA0(&qword_100616B78, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100003ABC(&qword_100616B80, &unk_1004EC758);
      sub_1000F96D4(&qword_100616B88, &qword_100616B80, &unk_1004EC758);
      sub_1004BD2D4();
      sub_1004BCB54();
      _Block_release(v24);

      (*(v26 + 8))(v7, v4);
      (*(v27 + 8))(v11, v8);
    }
  }

  return result;
}

uint64_t sub_1004AFA44()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004AFA7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000136EC;

  return sub_10049AE74(a1, v4, v5, v7, v6);
}

uint64_t sub_1004AFB40()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1004AFB88(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001384C;

  return sub_10049C330(a1, v4, v5, v7, v6);
}

unint64_t sub_1004AFC48()
{
  result = qword_100616B40;
  if (!qword_100616B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616B40);
  }

  return result;
}

uint64_t sub_1004AFCCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004AFCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

void sub_1004AFE30(uint64_t (*a1)(void))
{
  v1 = a1();
  v3 = v2;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_100616A40);

  oslog = sub_1004B8094();
  v5 = sub_1004BC9A4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    v8 = sub_100441BE8(v1, v3, &v10);

    *(v6 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "%s", v6, 0xCu);
    sub_100004C6C(v7);
  }

  else
  {
  }
}

uint64_t sub_1004AFFAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for SyncedLyricsLineView(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1004BD6A4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1004BD6A4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1004B00AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a2;
    v6 = a1;
    v7 = *v5;
    v8 = *v5 >> 62;
    v13 = a3;
    if (!v8)
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1004BD6A4();
  if (result < v4)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v4, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = v6 - v4;
  if (__OFSUB__(0, v4 - v6))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v11 = sub_1004BD6A4();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (v12)
  {
    goto LABEL_18;
  }

  sub_10013232C(result, 1);

  return v13(v6, v4, 0);
}

void sub_1004B0198(_BOOL8 a1, unint64_t a2, char a3, CGFloat a4)
{
  v5 = v4;
  LOBYTE(v6) = a3;
  sub_1004AFE30(sub_1004B4C90);
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  sub_100009178(a1, v10);
  v12 = (*(v11 + 16))(v10, v11);
  v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v14 = *&v4[v13];
  if ((v14 & 0xC000000000000001) != 0)
  {
    goto LABEL_42;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v12 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v15 = *(v14 + 8 * v12 + 32);
  while (1)
  {
    v95 = a4;
    [v15 frame];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v98 = v24;
    [*&v5[v24] contentOffset];
    v26 = v25;
    v28 = v27;
    v29 = [v5 view];
    if (!v29)
    {
      goto LABEL_51;
    }

    v30 = v29;
    [v29 frame];
    v32 = v31;

    v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v97 = v33;
    a4 = *&v5[v33];
    if (a4 <= 0.0)
    {
      v34 = [v5 view];
      if (!v34)
      {
        goto LABEL_52;
      }

      v35 = v34;
      [v34 frame];
      a4 = v36;
    }

    v105.origin.x = v17;
    v105.origin.y = v19;
    v105.size.width = v21;
    v105.size.height = v23;
    v107.origin.x = v26;
    v107.origin.y = v28;
    v107.size.width = v32;
    v107.size.height = a4;
    v96 = v13;
    if (CGRectIntersectsRect(v105, v107))
    {
      break;
    }

    v93 = a2;
    v37 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v14 = *&v5[v37];
    v94 = v15;
    v92 = v6;
    v91 = a1;
    a2 = v14 & 0xFFFFFFFFFFFFFF8;
    if (v14 >> 62)
    {
LABEL_45:
      v38 = sub_1004BD6A4();
    }

    else
    {
      v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = 0;
    while (1)
    {
      v13 = v38 == v39;
      if (v38 == v39)
      {
LABEL_25:

        a2 = v93;
        v15 = v94;
        LOBYTE(v6) = v92;
        a1 = v91;
        goto LABEL_26;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v40 = sub_1004BD484();
      }

      else
      {
        if (v39 >= *(a2 + 16))
        {
          goto LABEL_41;
        }

        v40 = *(v14 + 8 * v39 + 32);
      }

      v6 = v40;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      [v40 frame];
      v42 = v41;
      v44 = v43;
      v46 = v45;
      v48 = v47;
      [*&v5[v98] contentOffset];
      v50 = v49;
      v52 = v51;
      v53 = [v5 view];
      if (!v53)
      {
        goto LABEL_49;
      }

      v54 = v53;
      [v53 frame];
      v56 = v55;

      a4 = *&v5[v97];
      if (a4 <= 0.0)
      {
        v57 = [v5 view];
        if (!v57)
        {
          goto LABEL_50;
        }

        v58 = v57;
        [v57 frame];
        a4 = v59;
      }

      v106.origin.x = v42;
      v106.origin.y = v44;
      v106.size.width = v46;
      v106.size.height = v48;
      v108.origin.x = v50;
      v108.origin.y = v52;
      v108.size.width = v56;
      v108.size.height = a4;
      a1 = CGRectIntersectsRect(v106, v108);

      ++v39;
      if (a1)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:

    v15 = sub_1004BD484();
  }

  LODWORD(v13) = 0;
LABEL_26:
  v60 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling;
  if (v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_needsTapHandling] == 1)
  {
    v61 = &v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
    swift_beginAccess();
    v62 = v61[659];
  }

  else
  {
    v62 = 0;
  }

  v63 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v5[v63] == 2 || ((v13 | [*&v5[v98] isDragging] & (v62 ^ 1)) & 1) != 0 || v5[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] != 1)
  {
    sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
    v81 = sub_1004A6EE0(a2, v6 & 1);
    isa = UIViewPropertyAnimator.init(springTimingParameters:)(v81).super.isa;
    sub_1004A6A18(a1, isa, 1, 1);
    v83 = swift_allocObject();
    *(v83 + 16) = v5;
    v103 = sub_1004B55D8;
    v104 = v83;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_1000D6C80;
    v102 = &unk_1005D6020;
    v84 = _Block_copy(&aBlock);
    v85 = v5;

    [(objc_class *)isa addAnimations:v84];
    _Block_release(v84);
    v86 = [(objc_class *)isa state]== 3;
    v85[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating] = v86;
    v87 = swift_allocObject();
    *(v87 + 16) = v85;
    v103 = sub_1004B562C;
    v104 = v87;
    aBlock = _NSConcreteStackBlock;
    v100 = 1107296256;
    v101 = sub_10013ABCC;
    v102 = &unk_1005D6070;
    v88 = _Block_copy(&aBlock);
    v89 = v85;

    [(objc_class *)isa addCompletion:v88];
    _Block_release(v88);
    [(objc_class *)isa startAnimation];
  }

  else
  {
    if (v62)
    {
      sub_1004AC910();
    }

    v64 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v15 + v64, &aBlock);
    v65 = v102;
    v66 = v103;
    sub_100009178(&aBlock, v102);
    v67 = v66[2](v65, v66);
    v68 = *&v5[v96];
    if ((v68 & 0xC000000000000001) != 0)
    {

      v90 = sub_1004BD484();

      v69 = v90;
      goto LABEL_38;
    }

    if ((v67 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v67 < *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v69 = *(v68 + 8 * v67 + 32);
LABEL_38:
      v70 = v69;
      v71 = UIView.untransformedFrame.getter();
      v73 = v72;
      v75 = v74;
      v77 = v76;

      sub_1004A688C(v71, v73, v75, v77);
      v79 = v78;

      sub_100004C6C(&aBlock);
      sub_10001342C(v15 + v64, &aBlock);
      v80.n128_u64[0] = 0;
      sub_1004A88B0(&aBlock, v5[v60], a2, v6 & 1, 0, v80, v79, v95);

      sub_100004C6C(&aBlock);
      v5[v60] = 0;
      return;
    }

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
}

void sub_1004B0984(void *a1, uint64_t a2, double a3)
{
  v5 = v3;
  v146 = a1;
  sub_1004AFE30(sub_1004B4BE0);
  v9 = a1[3];
  v10 = a1[4];
  v144 = a1;
  sub_100009178(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v12 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v13 = *&v12[v5];
  if ((v13 & 0xC000000000000001) != 0)
  {
    goto LABEL_93;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_95;
  }

  if (v11 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_97;
  }

  v4 = *(v13 + 8 * v11 + 32);
  while (1)
  {
    v14 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    v142 = v14;
    sub_10001342C(v4 + v14, &v147);
    v13 = v150;
    v15 = v151;
    sub_100009178(&v147, v150);
    v16 = (*(v15 + 2))(v13, v15);
    v17 = *&v12[v5];
    if ((v17 & 0xC000000000000001) != 0)
    {
      break;
    }

    if ((v16 & 0x8000000000000000) != 0)
    {
LABEL_97:
      __break(1u);
    }

    else if (v16 < *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v18 = *(v17 + 8 * v16 + 32);
      goto LABEL_9;
    }

    __break(1u);
LABEL_99:
    swift_once();
LABEL_43:
    v83 = sub_1004B80B4();
    sub_100007084(v83, qword_100616A40);

    v84 = sub_1004B8094();
    v85 = sub_1004BC9A4();

    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v147 = v87;
      *v86 = 136315138;
      v88 = sub_100441BE8(a2, v13, &v147);

      *(v86 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v84, v85, "%s", v86, 0xCu);
      sub_100004C6C(v87);
    }

    else
    {
    }

    v89 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
    swift_beginAccess();
    v143 = v89;
    a2 = *(v5 + v89);
    v136 = v4;
    if ((a2 & 0xC000000000000001) != 0)
    {

      sub_1004BD324();
      type metadata accessor for SyncedLyricsLineView(0);
      sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView, &protocol conformance descriptor for NSObject);
      sub_1004BC6A4();
      a2 = v147;
      v90 = v148;
      v91 = v149;
      v12 = v150;
      v5 = v151;
    }

    else
    {
      v92 = -1 << *(a2 + 32);
      v90 = a2 + 56;
      v91 = ~v92;
      v93 = -v92;
      if (v93 < 64)
      {
        v94 = ~(-1 << v93);
      }

      else
      {
        v94 = -1;
      }

      v5 = v94 & *(a2 + 56);

      v12 = 0;
    }

    v138 = v91;
    v95 = (v91 + 64) >> 6;
    if (a2 < 0)
    {
      while (1)
      {
        v101 = sub_1004BD354();
        if (!v101)
        {
          break;
        }

        v153[4] = v101;
        type metadata accessor for SyncedLyricsLineView(0);
        swift_dynamicCast();
        v100 = v154[0];
        v98 = v12;
        v99 = v5;
        if (!v154[0])
        {
          break;
        }

LABEL_61:
        [v100 setAlpha:{1.0, v136}];
        swift_beginAccess();
        v102 = sub_100453DE0(v100);
        swift_endAccess();

        v12 = v98;
        v5 = v99;
        if ((a2 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }
      }

LABEL_63:
      sub_1001A43F8(a2);
      v103 = v145;
      if (v145[v139])
      {
LABEL_64:

        return;
      }

      [*&v145[v140] contentOffset];
      v105 = v104;
      v107 = v106;
      v108 = [v103 view];
      if (!v108)
      {
        goto LABEL_111;
      }

      v109 = v108;
      [v108 frame];
      v111 = v110;

      v112 = v136;
      v113 = *&v103[v137];
      if (v113 > 0.0)
      {
        goto LABEL_69;
      }

      v114 = [v103 view];
      if (v114)
      {
        v115 = v114;
        [v114 frame];
        v113 = v116;

LABEL_69:
        sub_10001342C(v112 + v142, v154);
        v64 = sub_1004A6430(v154, v105, v107, v111, v113);
        sub_100004C6C(v154);

        sub_1004A7128(v117);

        v118 = &v103[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
        swift_beginAccess();
        if (v118[658] != 1)
        {
          goto LABEL_107;
        }

        if (!(v64 >> 62))
        {
          v119 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v119)
          {
            goto LABEL_72;
          }

LABEL_107:

          return;
        }

LABEL_106:
        v119 = sub_1004BD6A4();
        if (!v119)
        {
          goto LABEL_107;
        }

LABEL_72:
        if (v119 >= 1)
        {
          v120 = 0;
          v142 = v64 & 0xC000000000000001;
          do
          {
            if (v142)
            {
              v123 = sub_1004BD484();
            }

            else
            {
              v123 = *(v64 + 8 * v120 + 32);
            }

            v124 = v123;
            v125 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
            swift_beginAccess();
            sub_10001342C(v124 + v125, v154);
            v126 = v155;
            v127 = v156;
            sub_100009178(v154, v155);
            v128 = (*(v127 + 16))(v126, v127);
            v130 = v144[3];
            v129 = v144[4];
            sub_100009178(v144, v130);
            v131 = (*(v129 + 16))(v130, v129);
            sub_100004C6C(v154);
            if (v128 < v131)
            {
              [v124 setAlpha:0.0];
              swift_beginAccess();
              v121 = v124;
              sub_10045137C(v153, v121);
              v122 = v153[0];
              swift_endAccess();
            }

            else
            {
            }

            ++v120;
          }

          while (v119 != v120);
          goto LABEL_107;
        }

        __break(1u);
LABEL_109:
        __break(1u);
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      __break(1u);
      return;
    }

LABEL_53:
    v96 = v12;
    v97 = v5;
    v98 = v12;
    if (v5)
    {
LABEL_57:
      v99 = (v97 - 1) & v97;
      v100 = *(*(a2 + 48) + ((v98 << 9) | (8 * __clz(__rbit64(v97)))));
      if (v100)
      {
        goto LABEL_61;
      }

      goto LABEL_63;
    }

    while (1)
    {
      v98 = (v96 + 1);
      if (__OFADD__(v96, 1))
      {
        break;
      }

      if (v98 >= v95)
      {
        goto LABEL_63;
      }

      v97 = *(v90 + 8 * v98);
      ++v96;
      if (v97)
      {
        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:

    v4 = sub_1004BD484();
  }

LABEL_95:

  v134 = sub_1004BD484();

  v18 = v134;
LABEL_9:
  v19 = v18;
  v20 = UIView.untransformedFrame.getter();
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_1004A688C(v20, v22, v24, v26);
  v28 = v27;

  v145 = v5;
  sub_100004C6C(&v147);
  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v30 = *&v145[v29];
  v147 = v4;
  __chkstk_darwin();
  v135[2] = &v147;
  v5 = v145;

  v31 = sub_10042BA44(sub_1004B5610, v135, v30);

  v32 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (*(v5 + v32) != 2 || (v31 & 1) != 0)
  {
    v139 = v32;
    v40 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    v140 = v40;
    [*(v5 + v40) contentOffset];
    v42 = v41;
    v44 = v43;
    v45 = [v5 view];
    if (!v45)
    {
      goto LABEL_109;
    }

    v46 = v45;
    [v45 frame];
    v48 = v47;

    v49 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_containerHeight;
    swift_beginAccess();
    v137 = v49;
    v50 = *(v5 + v49);
    if (v50 <= 0.0)
    {
      v51 = [v5 view];
      if (!v51)
      {
        goto LABEL_110;
      }

      v52 = v51;
      [v51 frame];
      v50 = v53;
    }

    v141 = v4;
    [v141 frame];
    v161.origin.x = v54;
    v161.origin.y = v55;
    v161.size.width = v56;
    v161.size.height = v57;
    v160.origin.x = v42;
    v160.origin.y = v44;
    v160.size.width = v48;
    v160.size.height = v50;
    if (CGRectIntersectsRect(v160, v161))
    {
      sub_10001342C(v144, &v147);
      sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
      if (swift_dynamicCast() & 1) == 0 && (a2)
      {

        if (qword_100614EF8 == -1)
        {
          goto LABEL_22;
        }

        goto LABEL_105;
      }
    }

    sub_10001342C(v144, &v147);
    sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
    if (!swift_dynamicCast())
    {
      goto LABEL_36;
    }

    v63 = v144[3];
    v64 = v144[4];
    sub_100009178(v144, v63);
    v65 = (*(v64 + 16))(v63, v64);
    v66 = *&v12[v5];
    if ((v66 & 0xC000000000000001) == 0)
    {
      if ((v65 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v65 < *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v67 = *(v66 + 8 * v65 + 32);
        goto LABEL_30;
      }

      __break(1u);
      goto LABEL_103;
    }

    v67 = sub_1004BD484();

LABEL_30:
    v68 = *&v67[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
    v69 = v68;

    if (v68)
    {
      _s23InstrumentalContentViewCMa(0, v70);
      if (swift_dynamicCastClass())
      {
        v71 = v5;
        v72 = *(v5 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
        v73 = v141;
        *&v71[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView] = v141;
        v74 = v73;

        if (v31)
        {
          sub_10047E2A8(a3, v75, v76);

          v5 = v145;
          goto LABEL_38;
        }

        sub_10047D9E0(a3);
        v5 = v145;
      }
    }

LABEL_36:
    if (!(v31 & 1 | ((a2 & 1) == 0)))
    {
      sub_10001342C(v4 + v142, &v147);
      sub_1004A6A18(&v147, 0, 1, 0);
      sub_100004C6C(&v147);
    }

LABEL_38:
    v77 = v141;
    UIView.untransformedFrame.getter();
    a3 = v78;

    memset(v157, 0, sizeof(v157));
    v158 = 1;
    sub_1004A11E4(v77, 2, v157);
    if (v79 == a3)
    {
      goto LABEL_42;
    }

    sub_10001342C(v4 + v142, &v147);
    v80 = v150;
    v64 = v151;
    sub_100009178(&v147, v150);
    v81 = (*(v64 + 16))(v80, v64);
    v63 = v81;
    v82 = *&v12[v5];
    if (!(v82 >> 62))
    {
      a2 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 < v81)
      {
        goto LABEL_104;
      }

      goto LABEL_41;
    }

LABEL_103:
    a2 = sub_1004BD6A4();
    if (a2 < v63)
    {
LABEL_104:
      __break(1u);
LABEL_105:
      swift_once();
LABEL_22:
      v58 = sub_1004B80B4();
      sub_100007084(v58, qword_100616A40);
      v59 = sub_1004B8094();
      v60 = sub_1004BC9A4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v147 = v62;
        *v61 = 136315138;
        *(v61 + 4) = sub_100441BE8(0xD00000000000002BLL, 0x800000010050EF90, &v147);
        _os_log_impl(&_mh_execute_header, v59, v60, "%s", v61, 0xCu);
        sub_100004C6C(v62);
      }

      sub_1004AC910();
      sub_1004B0198(v144, 0, 1, a3);
      goto LABEL_64;
    }

LABEL_41:
    sub_100004C6C(&v147);
    if (v63 != a2)
    {
      if (v63 < a2)
      {
        while (1)
        {
          v132 = *&v12[v5];
          if ((v132 & 0xC000000000000001) != 0)
          {

            v133 = sub_1004BD484();
          }

          else
          {
            if (v63 < 0)
            {
              goto LABEL_91;
            }

            if (v63 >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_92;
            }

            v133 = *(v132 + 8 * v63 + 32);
          }

          ++v63;
          sub_1004A302C(v133);

          if (a2 == v63)
          {
            goto LABEL_42;
          }
        }
      }

      __break(1u);
      goto LABEL_106;
    }

LABEL_42:
    sub_1004AC910();
    [*(v5 + v140) setContentOffset:{0.0, v28}];
    v147 = 0;
    v148 = 0xE000000000000000;
    sub_1004BD404(41);
    v159._object = 0x800000010050EF60;
    v159._countAndFlagsBits = 0xD000000000000027;
    sub_1004BC024(v159);
    v154[0] = 0;
    *&v154[1] = v28;
    _s3__C7CGPointVMa_3(0);
    sub_1004BD5C4();
    a2 = v147;
    v13 = v148;
    if (qword_100614EF8 == -1)
    {
      goto LABEL_43;
    }

    goto LABEL_99;
  }

  sub_1004AC910();
  v33 = swift_allocObject();
  *(v33 + 2) = v5;
  v33[3] = 0.0;
  v33[4] = v28;
  *(v33 + 5) = v4;
  v34 = objc_allocWithZone(UIViewPropertyAnimator);
  v151 = sub_1004B4C80;
  v152 = v33;
  v147 = _NSConcreteStackBlock;
  v148 = 1107296256;
  v149 = sub_1000D6C80;
  v150 = &unk_1005D5FD0;
  v35 = _Block_copy(&v147);
  v36 = v5;
  v37 = v4;

  v38 = [v34 initWithDuration:3 curve:v35 animations:0.25];
  _Block_release(v35);
  if (a2)
  {
    sub_10001342C(v4 + v142, &v147);
    v39 = v38;
    sub_1004A6A18(&v147, v38, 1, 1);

    sub_100004C6C(&v147);
  }

  [v38 startAnimation];
}

void _s7LyricsX06SyncedA14ViewControllerC06syncedA14DesectAllLinesyyAA0bA7ManagerCF_0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100614EF8 != -1)
  {
    swift_once();
  }

  v4 = sub_1004B80B4();
  sub_100007084(v4, qword_100616A40);
  v5 = sub_1004B8094();
  v6 = sub_1004BC9A4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100441BE8(0xD000000000000023, 0x800000010050EEE0, v26);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_100004C6C(v8);
  }

  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (!v3[v9])
  {
    v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
    swift_beginAccess();
    if (([*&v3[v10] isDragging] & 1) == 0)
    {
      sub_100009130(0, &qword_100616AF0, UIViewPropertyAnimator_ptr);
      v11 = sub_1004A6EE0(0, 1);
      v12.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v11).super.isa;
      v13 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
      swift_beginAccess();
      v14 = *&v3[v13];
      if (v14 >> 62)
      {
        v15 = sub_1004BD6A4();
        if (v15)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_9:
          v24 = v13;
          if (v15 < 1)
          {
            __break(1u);
            return;
          }

          v16 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];

          swift_beginAccess();
          for (i = 0; i != v15; ++i)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v18 = sub_1004BD484();
            }

            else
            {
              v18 = *(v14 + 8 * i + 32);
            }

            v19 = v18;
            v20 = v12.super.isa;
            sub_1004877C8(0, v12.super.isa);

            if (v16[657] != 1 || (v21 = [v3 traitCollection], v22 = objc_msgSend(v21, "accessibilityContrast"), v21, v22 == 1))
            {
            }

            else
            {
              sub_100487C74(1, 3.0);
              swift_beginAccess();
              sub_10045137C(&v25, v19);
              v23 = v25;
              swift_endAccess();
            }
          }

          v13 = v24;
        }
      }

      *&v3[v13] = _swiftEmptyArrayStorage;
    }
  }
}

void sub_1004B1D4C(void *a1, double a2)
{
  v3 = v2;
  v5 = a1[3];
  v6 = a1[4];
  sub_100009178(a1, v5);
  v7 = (*(v6 + 16))(v5, v6);
  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v9 = *(v3 + v8);
  if ((v9 & 0xC000000000000001) == 0)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v9 + 8 * v7 + 32);
      goto LABEL_5;
    }

    __break(1u);
    return;
  }

  v10 = sub_1004BD484();

LABEL_5:
  v11 = *&v10[OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView];
  v12 = v11;

  if (v11)
  {
    _s23InstrumentalContentViewCMa(0, v13);
    if (swift_dynamicCastClass())
    {
      v14 = v12;
      sub_10047E2A8(a2, v14, v15);
    }
  }
}

void sub_1004B1EC4(uint64_t a1)
{
  v2 = v1;
  sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
  __chkstk_darwin();
  v5 = &v22 - v4;
  v6 = type metadata accessor for Lyrics.TextLine(0);
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001342C(a1, v26);
  sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
  v10 = swift_dynamicCast();
  v11 = *(v7 + 56);
  if ((v10 & 1) == 0)
  {
    v11(v5, 1, 1, v6);
    sub_100007214(v5, &qword_100616C00, &unk_1004EBFF0);
    return;
  }

  v11(v5, 0, 1, v6);
  sub_1004B492C(v5, v9, type metadata accessor for Lyrics.TextLine);
  swift_beginAccess();
  v12 = type metadata accessor for SyncedLyricsLineView(0);

  Array.subscript.getter(v12, v26);

  v13 = v26[0];
  if (!v26[0])
  {
    goto LABEL_15;
  }

  v14 = *(v26[0] + OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView);
  if (!v14)
  {
    goto LABEL_13;
  }

  _s19SBS_TextContentViewCMa(0);
  v15 = swift_dynamicCastClass();
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR___MusicSBS_TextContentView_textView);
    if (!v16)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v17 = *(v16 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v17)
    {
      v18 = *(v17 + 56);
      v19 = *(v18 + 16);
      if (v19)
      {
        v20 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
        v24 = *(v17 + 48);

        v23 = v14;

        swift_beginAccess();
        v21 = 0;
        while (v21 < *(v18 + 16))
        {
          ++v21;
          memcpy(v26, (v2 + v20), 0x2B0uLL);

          sub_10046E570(v26, &v25);
          sub_1004727CC(v26);
          sub_10046E5CC(v26);

          if (v19 == v21)
          {

            goto LABEL_15;
          }
        }

        __break(1u);
        goto LABEL_18;
      }

      goto LABEL_14;
    }

LABEL_13:
    sub_1004B3CFC(v9, type metadata accessor for Lyrics.TextLine);

    return;
  }

LABEL_14:

LABEL_15:
  sub_1004B3CFC(v9, type metadata accessor for Lyrics.TextLine);
}

void sub_1004B225C()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
    swift_beginAccess();
    v3 = *&v0[v2];
    if (v3 >> 62)
    {
      if (!sub_1004BD6A4())
      {
        return;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {

      v4 = sub_1004BD484();
    }

    else
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v4 = *(v3 + 32);
    }

    v5 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timingProvider;
    swift_beginAccess();
    sub_10000F778(&v0[v5], &aBlock, &qword_100616AA8, &qword_1004EC710);
    v6 = v38;
    if (v38)
    {
      v7 = v39;
      sub_100009178(&aBlock, v38);
      v8 = *(v6 - 1);
      v9 = __chkstk_darwin();
      v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v8 + 16))(v11, v9);
      sub_100007214(&aBlock, &qword_100616AA8, &qword_1004EC710);
      v12 = v0;
      v13 = v7[1](v6, v7);
      v14 = (*(v8 + 8))(v11, v6);
      v15 = v13(v14);

      sub_1004AC910();
      v0[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 1;
      v16 = v4;
      v17 = UIView.untransformedFrame.getter();
      v19 = v18;
      v21 = v20;
      v23 = v22;

      sub_1004A688C(v17, v19, v21, v23);
      v25 = v24;
      v26 = objc_opt_self();
      v27 = swift_allocObject();
      *(v27 + 2) = v12;
      v27[3] = 0.0;
      *(v27 + 4) = v25;
      v39 = sub_1004B4AEC;
      v40 = v27;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_1000D6C80;
      v38 = &unk_1005D5E68;
      v28 = _Block_copy(&aBlock);
      v29 = v12;

      v30 = swift_allocObject();
      *(v30 + 2) = v29;
      *(v30 + 3) = v16;
      v30[4] = 0.0;
      *(v30 + 5) = v25;
      v30[6] = v15;
      v39 = sub_1004B4B94;
      v40 = v30;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_100398C10;
      v38 = &unk_1005D5EB8;
      v31 = _Block_copy(&aBlock);
      v32 = v16;
      v33 = v29;

      [v26 animateWithDuration:v28 animations:v31 completion:0.25];
      _Block_release(v31);
      _Block_release(v28);
    }

    else
    {

      sub_100007214(&aBlock, &qword_100616AA8, &qword_1004EC710);
    }
  }
}

void sub_1004B26A0()
{
  v3 = v1;
  v4 = sub_1004A61E0();
  v5 = v4;
  if (v4 >> 62)
  {
    v6 = sub_1004BD6A4();
    v7 = &off_100616000;
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &off_100616000;
    if (v6)
    {
LABEL_3:
      if (v6 >= 1)
      {
        v8 = 0;
        v9 = v7[332];
        v10 = v5 & 0xC000000000000001;
        v11 = &OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_contentView;
        v49 = v9;
        v50 = v5;
        while (1)
        {
          if (v10)
          {
            v12 = sub_1004BD484();
          }

          else
          {
            v12 = *(v5 + 8 * v8 + 32);
          }

          v13 = v12;
          v14 = *&v12[*v11];
          if (!v14)
          {
            goto LABEL_6;
          }

          _s19SBS_TextContentViewCMa(0);
          v15 = swift_dynamicCastClass();
          if (!v15)
          {
            goto LABEL_6;
          }

          v16 = *&v9[v3];
          if (!v16)
          {
            goto LABEL_6;
          }

          v17 = v6;
          v18 = v10;
          v19 = v11;
          v52 = v15;
          swift_beginAccess();
          v20 = *(v16 + 96);
          if (v20)
          {
            break;
          }

          v11 = v19;
          v10 = v18;
          v6 = v17;
          v5 = v50;
LABEL_6:
          ++v8;

          if (v6 == v8)
          {
            goto LABEL_36;
          }
        }

        v21 = v3;
        v22 = *(v16 + 104);
        v51 = v14;

        v23 = sub_10002F518(v20, v22);
        v24 = v20(v23);
        swift_beginAccess();
        if (*(v16 + 88) == 1)
        {
          v25 = Lyrics.spatialOffset.getter();
          sub_10003CC4C(v20, v22);
        }

        else
        {

          sub_10003CC4C(v20, v22);
          v25 = 0.0;
        }

        v26 = v24 - v25;
        v27 = v52;
        v3 = v21;
        v11 = v19;
        if (v26 == *(v52 + OBJC_IVAR___MusicSBS_TextContentView_progress))
        {
          v10 = v18;
          v6 = v17;
          v9 = v49;
          v5 = v50;
        }

        else
        {
          *(v52 + OBJC_IVAR___MusicSBS_TextContentView_progress) = v26;
          v29 = *(v27 + OBJC_IVAR___MusicSBS_TextContentView_textView);
          v9 = v49;
          if (!v29)
          {
            goto LABEL_58;
          }

          v10 = v18;
          v30 = *&v29[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
          v6 = v17;
          if (v30 != v26 && (v26 >= v30 || v30 - v26 >= 0.5))
          {
            *&v29[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v26;
            v32 = v29;
            sub_100455F48(1, v33, v26);

            v27 = v52;
          }

          v34 = *(v27 + OBJC_IVAR___MusicSBS_TextContentView_backgroundTextView);
          v5 = v50;
          if (v34)
          {
            v35 = *&v34[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress];
            if (v35 != v26 && (v26 >= v35 || v35 - v26 >= 0.5))
            {
              *&v34[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress] = v26;
              v37 = v34;
              sub_100455F48(1, v38, v26);

              v28 = v13;
              v13 = v37;
              goto LABEL_20;
            }
          }
        }

        v28 = v51;
LABEL_20:

        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_52;
    }
  }

LABEL_36:

  if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isAnimating))
  {
    return;
  }

  v0 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView;
  v6 = *(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_instrumentalBreakVisibleView);
  if (!v6)
  {
    goto LABEL_48;
  }

  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_selectedLineViews;
  swift_beginAccess();
  v1 = *(v3 + v2);
  if (!(v1 >> 62))
  {
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v39)
    {
      goto LABEL_48;
    }

    goto LABEL_40;
  }

LABEL_52:
  v39 = sub_1004BD6A4();
  if (!v39)
  {
LABEL_48:
    if (*(v3 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_manager))
    {

      SyncedLyricsManager.update()();
    }

    return;
  }

LABEL_40:
  v40 = v39 - 1;
  if (__OFSUB__(v39, 1))
  {
    __break(1u);
    goto LABEL_55;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
LABEL_55:
    v47 = v6;

    v43 = sub_1004BD484();

    goto LABEL_45;
  }

  if ((v40 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v40 < *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v41 = *(v1 + 8 * v40 + 32);
    v42 = v6;
    v43 = v41;
LABEL_45:
    v44 = *(v3 + v2);
    v53 = v6;
    __chkstk_darwin();
    v48[2] = &v53;

    v45 = sub_10042BA44(sub_1004B5610, v48, v44);

    if ((v45 & 1) == 0)
    {
      v46 = *(v3 + v0);
      *(v3 + v0) = 0;

      sub_1004AC0B4(v6, v43);
      sub_10048769C();
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1004B2B40(void *a1)
{
  v3 = [v1 traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 2)
  {
    return 1;
  }

  v6 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_isFullScreen;
  swift_beginAccess();
  if (v1[v6] != 1)
  {
    return 0;
  }

  v7 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v7])
  {
    return 0;
  }

  v8 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_bottomTapAreaHeight;
  swift_beginAccess();
  if (*&v1[v8] <= 0.0)
  {
    return 0;
  }

  v9 = [v1 view];
  [a1 locationInView:v9];
  v11 = v10;

  result = [v1 view];
  if (result)
  {
    v12 = result;
    [result frame];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    v21.origin.x = v14;
    v21.origin.y = v16;
    v21.size.width = v18;
    v21.size.height = v20;
    return CGRectGetHeight(v21) - *&v1[v8] < v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _s7LyricsX06SyncedA14ViewControllerC06scrollC17WillBeginDraggingyySo08UIScrollC0CF_0()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if (v1[v2])
  {
    return;
  }

  v3 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  if (v1[v3] != 1)
  {
    v4 = [v1 traitCollection];
    v5 = [v4 userInterfaceIdiom];

    if (v5 == 2)
    {
      v1[v3] = 1;
      v6 = &v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
      swift_beginAccess();
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = *(v6 + 1);
        ObjectType = swift_getObjectType();
        (*(v7 + 16))(v1, ObjectType, v7);
        swift_unknownObjectRelease();
      }
    }
  }

  sub_1004A84A4();
  sub_1004AC910();
  v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScroll] = 0;
  v9 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer;
  [*&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer] invalidate];
  v10 = *&v1[v9];
  *&v1[v9] = 0;

  v11 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_hiddenLineViews;
  swift_beginAccess();
  v12 = *&v1[v11];
  if ((v12 & 0xC000000000000001) != 0)
  {

    sub_1004BD324();
    type metadata accessor for SyncedLyricsLineView(0);
    sub_1004B4DA0(&unk_100616F30, type metadata accessor for SyncedLyricsLineView, &protocol conformance descriptor for NSObject);
    sub_1004BC6A4();
    v12 = v48;
    v13 = v49;
    v14 = v50;
    v15 = v51;
    v16 = v52;
  }

  else
  {
    v17 = -1 << *(v12 + 32);
    v13 = v12 + 56;
    v14 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v12 + 56);

    v15 = 0;
  }

  v40 = v14;
  v20 = (v14 + 64) >> 6;
  if (v12 < 0)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v21 = v15;
    v22 = v16;
    v23 = v15;
    if (!v16)
    {
      while (1)
      {
        v23 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v23 >= v20)
        {
          goto LABEL_23;
        }

        v22 = *(v13 + 8 * v23);
        ++v21;
        if (v22)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_35:

      v35 = sub_1004BD484();

LABEL_29:
      sub_10048809C(0, 1);

      sub_100004C6C(aBlock);
LABEL_32:
      v36 = objc_opt_self();
      v37 = swift_allocObject();
      *(v37 + 16) = v1;
      v43 = sub_1004B4BAC;
      v44 = v37;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000D6C80;
      v42 = &unk_1005D5F80;
      v38 = _Block_copy(aBlock);
      v39 = v1;

      [v36 animateWithDuration:v38 animations:0.2];
      _Block_release(v38);
      return;
    }

LABEL_17:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v12 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      break;
    }

    while (1)
    {
      [v25 setAlpha:{1.0, v40}];
      swift_beginAccess();
      v27 = sub_100453DE0(v25);
      swift_endAccess();

      v15 = v23;
      v16 = v24;
      if ((v12 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_19:
      v26 = sub_1004BD354();
      if (v26)
      {
        *&v45 = v26;
        type metadata accessor for SyncedLyricsLineView(0);
        swift_dynamicCast();
        v25 = aBlock[0];
        v23 = v15;
        v24 = v16;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_23;
    }
  }

LABEL_23:
  sub_1001A43F8(v12);
  v28 = *&v1[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  if (!v28)
  {
    v47 = 0;
    v45 = 0u;
    v46 = 0u;
    goto LABEL_31;
  }

  v29 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  swift_beginAccess();
  sub_10000F778(v28 + v29, &v45, &qword_100615100, &unk_1004EA8E0);
  if (!*(&v46 + 1))
  {
LABEL_31:
    sub_100007214(&v45, &qword_100615100, &unk_1004EA8E0);
    goto LABEL_32;
  }

  sub_100013414(&v45, aBlock);
  v30 = v42;
  v31 = v43;
  sub_100009178(aBlock, v42);
  v32 = (*(v31 + 2))(v30, v31);
  v33 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v34 = *&v1[v33];
  if ((v34 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

  if ((v32 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v32 < *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v34 + 8 * v32 + 32);
    goto LABEL_29;
  }

  __break(1u);
}

void _s7LyricsX06SyncedA14ViewControllerC06scrollC14DidEndDragging_14willDecelerateySo08UIScrollC0C_SbtF_0()
{
  v1 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs;
  swift_beginAccess();
  if ((*(v0 + v1) & 1) == 0)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1004B4BA4;
    aBlock[5] = v3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000C81CC;
    aBlock[3] = &unk_1005D5F30;
    v4 = _Block_copy(aBlock);

    v5 = [v2 scheduledTimerWithTimeInterval:0 repeats:v4 block:3.0];
    _Block_release(v4);
    v6 = *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer);
    *(v0 + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_allowAnimateToNextLineAfterScrollTimer) = v5;
  }
}

void sub_1004B33B0(unint64_t a1, double a2, double a3)
{
  v4 = v3;
  v7 = &v3[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_specs];
  swift_beginAccess();
  if (*v7)
  {
    return;
  }

  v8 = [v3 traitCollection];
  v9 = [v8 userInterfaceIdiom];

  if (v9 != 2)
  {
    if (a3 <= 0.0)
    {
      if (a3 < 0.0)
      {
        v14 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
        swift_beginAccess();
        if (v4[v14] == 1)
        {
          v4[v14] = 0;
          v15 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
          swift_beginAccess();
          if (swift_unknownObjectWeakLoadStrong())
          {
            v16 = *(v15 + 1);
            ObjectType = swift_getObjectType();
            (*(v16 + 24))(v4, ObjectType, v16);
            swift_unknownObjectRelease();
          }
        }

        v18 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v18 + 1);
          v20 = swift_getObjectType();
          (*(v19 + 32))(v4, v20, v19);
          goto LABEL_13;
        }
      }
    }

    else
    {
      v10 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
      swift_beginAccess();
      if (v4[v10] != 1)
      {
        v4[v10] = 1;
        v11 = &v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v12 = *(v11 + 1);
          v13 = swift_getObjectType();
          (*(v12 + 16))(v4, v13, v12);
LABEL_13:
          swift_unknownObjectRelease();
        }
      }
    }
  }

  if (*(v7 + 659) != 1)
  {
    return;
  }

  v21 = *(v7 + 48);
  if (v21 & 0x80000000) == 0 || (v21)
  {
    return;
  }

  v22 = v7[3];
  v87 = v7[4];
  v88 = v7[2];
  rect = v7[5];
  v23 = *(a1 + 8);
  v24 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  [*&v4[v24] frame];
  Width = CGRectGetWidth(v97);
  [*&v4[v24] frame];
  Height = CGRectGetHeight(v98);
  v27 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lineViews;
  swift_beginAccess();
  v84 = v27;
  v28 = *(v27 + v4);
  aBlock[0] = _swiftEmptyArrayStorage;
  if (v28 >> 62)
  {
    goto LABEL_65;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1004BD6A4())
  {

    v85 = a1;
    if (!i)
    {
      break;
    }

    a1 = 0;
    while (1)
    {
      if ((v28 & 0xC000000000000001) != 0)
      {
        v30 = sub_1004BD484();
      }

      else
      {
        if (a1 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_64;
        }

        v30 = *(v28 + 8 * a1 + 32);
      }

      v31 = v30;
      v27 = (a1 + 1);
      if (__OFADD__(a1, 1))
      {
        break;
      }

      [v30 frame];
      v102.origin.x = 0.0;
      v102.origin.y = v23;
      v102.size.width = Width;
      v102.size.height = Height;
      if (CGRectIntersectsRect(v99, v102))
      {
        sub_1004BD4F4();
        sub_1004BD534();
        sub_1004BD544();
        sub_1004BD504();
      }

      else
      {
      }

      ++a1;
      if (v27 == i)
      {
        v32 = aBlock[0];
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    ;
  }

  v32 = _swiftEmptyArrayStorage;
LABEL_32:

  if ((v32 & 0x8000000000000000) != 0 || (v32 & 0x4000000000000000) != 0)
  {
    v33 = sub_1004BD6A4();
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  else
  {
    v33 = *(v32 + 16);
    if (!v33)
    {
      goto LABEL_67;
    }
  }

  if (v33 < 1)
  {
    __break(1u);
    goto LABEL_70;
  }

  v89 = 0;
  v34 = 0;
  v35 = v22 + v23;
  v36 = INFINITY;
  do
  {
    if ((v32 & 0xC000000000000001) != 0)
    {
      v37 = sub_1004BD484();
    }

    else
    {
      v37 = *(v32 + 8 * v34 + 32);
    }

    v38 = v37;
    v39 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
    swift_beginAccess();
    sub_10001342C(v38 + v39, aBlock);
    sub_100003ABC(&qword_1006150F8, &unk_1004EC3B0);
    if (swift_dynamicCast())
    {
    }

    else
    {
      v40 = v38;
      [v40 frame];
      v42 = v41;
      [v40 frame];
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;

      v100.origin.x = v44;
      v100.origin.y = v46;
      v100.size.width = v48;
      v100.size.height = v50;
      v51 = v42 + CGRectGetHeight(v100) * 0.5;
      v101.size.width = v87;
      v101.origin.x = v88;
      v101.origin.y = v35;
      v101.size.height = rect;
      v52 = vabdd_f64(v51, CGRectGetMidY(v101));
      if (v52 >= v36)
      {
      }

      else
      {

        v36 = v52;
        v89 = v40;
      }
    }

    ++v34;
  }

  while (v33 != v34);
  if (!v89)
  {
LABEL_67:

    return;
  }

  v28 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel;
  v53 = *&v4[OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel];
  v27 = &OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
  if (v53)
  {
    v54 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsTimestampLabel_line;
    swift_beginAccess();
    sub_10000F778(v53 + v54, &v94, &qword_100615100, &unk_1004EA8E0);
    if (*(&v95 + 1))
    {
      sub_100013414(&v94, aBlock);
      v55 = v91;
      v56 = v92;
      sub_100009178(aBlock, v91);
      v57 = (*(v56 + 2))(v55, v56);
      v58 = *(v84 + v4);
      if ((v58 & 0xC000000000000001) == 0)
      {
        if ((v57 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (v57 < *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v59 = *(v58 + 8 * v57 + 32);
LABEL_53:
          sub_100004C6C(aBlock);
          goto LABEL_56;
        }

        __break(1u);
LABEL_73:
        __break(1u);
        return;
      }

LABEL_70:

      v59 = sub_1004BD484();

      goto LABEL_53;
    }
  }

  else
  {
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
  }

  sub_100007214(&v94, &qword_100615100, &unk_1004EA8E0);
  v59 = 0;
LABEL_56:
  type metadata accessor for SyncedLyricsTimestampLabel(0, v60);
  v61 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v62 = v61;
  v63 = *&v4[v28];
  *&v4[v28] = v61;
  if (v63)
  {
    v64 = v61;
    [v63 removeFromSuperview];
  }

  else
  {
    v65 = v61;
  }

  v66 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  sub_10001342C(v89 + v66, aBlock);
  v67 = *v27;
  swift_beginAccess();
  sub_10003F42C(aBlock, v62 + v67, &qword_100615100, &unk_1004EA8E0);
  swift_endAccess();
  sub_100491A04();
  sub_100007214(aBlock, &qword_100615100, &unk_1004EA8E0);
  [v62 setAlpha:0.0];
  sub_1004A3320();
  v68 = [v4 view];
  if (!v68)
  {
    goto LABEL_73;
  }

  v69 = v68;

  [v69 addSubview:v62];

  if (v59)
  {
    v70 = v59;
    sub_10048809C(0, 1);
  }

  sub_10048809C(1, 1);
  v71 = objc_opt_self();
  v72 = swift_allocObject();
  *(v72 + 16) = v62;
  v92 = sub_100470844;
  v93 = v72;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000D6C80;
  v91 = &unk_1005D5F08;
  v73 = _Block_copy(aBlock);
  v74 = v62;

  [v71 animateWithDuration:v73 animations:0.2];
  _Block_release(v73);
  v75 = v89;
  v76 = UIView.untransformedFrame.getter();
  v78 = v77;
  v80 = v79;
  v82 = v81;

  sub_1004A688C(v76, v78, v80, v82);
  *v85 = 0;
  v85[1] = v83;
}

uint64_t sub_1004B3CFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1004B3D60()
{
  result = qword_100616C08;
  if (!qword_100616C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100616C08);
  }

  return result;
}

void sub_1004B3DB4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_1004B3E0C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_mode;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1004B3E60@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_lyrics;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1004B3ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Lyrics.TextLine(0);
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

    return (v10 + 1);
  }
}

uint64_t sub_1004B3FA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Lyrics.TextLine(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1004B405C(uint64_t a1)
{
  type metadata accessor for Lyrics.TextLine(319);
  if (v1 <= 0x3F)
  {
    sub_100009130(319, &qword_100615B60, UIView_ptr);
    if (v2 <= 0x3F)
    {
      type metadata accessor for NSTextAlignment(319);
      if (v3 <= 0x3F)
      {
        _s3__C6CGRectVMa_2(319);
        if (v4 <= 0x3F)
        {
          _s3__C17CGAffineTransformVMa_1(319);
          if (v5 <= 0x3F)
          {
            sub_10044D6E8();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1004B4160(uint64_t a1)
{
  sub_1004B5460(319, &unk_100616D00, type metadata accessor for Lyrics.Translation);
  if (v1 <= 0x3F)
  {
    sub_1004B5460(319, &unk_1006151B8, type metadata accessor for Lyrics.Transliteration);
    if (v2 <= 0x3F)
    {
      sub_1004B5460(319, &qword_100616D10, &type metadata accessor for Date);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1004B43D4()
{

  return swift_deallocObject();
}

uint64_t sub_1004B446C()
{

  return swift_deallocObject();
}

uint64_t sub_1004B44C4()
{
  sub_100004C6C((v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1004B4518()
{

  sub_100004C6C((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1004B4588()
{

  return swift_deallocObject();
}

uint64_t sub_1004B45C0()
{
  sub_100004C6C((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1004B461C()
{

  sub_100004C6C((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1004B4674()
{
  sub_100004C6C((v0 + 24));

  return swift_deallocObject();
}

uint64_t sub_1004B46D0()
{

  sub_100004C6C((v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_1004B4738()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4784()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4808@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7LyricsX20SyncedLyricsLineView_line;
  swift_beginAccess();
  return sub_10001342C(v3 + v4, a2);
}

uint64_t sub_1004B486C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  sub_100009178(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  return result;
}

uint64_t sub_1004B48E4()
{

  return swift_deallocObject();
}

uint64_t sub_1004B492C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B4994(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1004B49FC()
{

  return swift_deallocObject();
}

id sub_1004B4A60()
{
  v1 = *(v0 + 16);
  [v1 setHidden:0];

  return [v1 setHighlighted:0];
}

uint64_t sub_1004B4AB4()
{

  return swift_deallocObject();
}

id sub_1004B4AEC()
{
  v1 = *(v0 + 2);
  v2 = v0[3];
  v3 = v0[4];
  v4 = OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_scrollView;
  swift_beginAccess();
  return [*(v1 + v4) setContentOffset:{v2, v3}];
}

uint64_t sub_1004B4B54()
{

  return swift_deallocObject();
}

id sub_1004B4BB0()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7LyricsX26SyncedLyricsViewController_timestampLabel);
  if (result)
  {
    return [result setAlpha:0.0];
  }

  return result;
}

uint64_t sub_1004B4C40()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4C98()
{

  if (*(v0 + 56))
  {
    sub_100004C6C((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1004B4CF4()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1004B4D44()
{

  return swift_deallocObject();
}

uint64_t sub_1004B4DA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1004B4DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001384C;

  return sub_100109480(a1, v4);
}

uint64_t sub_1004B4EA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000136EC;

  return sub_100109480(a1, v4);
}

uint64_t sub_1004B4F84()
{

  return swift_deallocObject();
}

uint64_t sub_1004B5004()
{

  return swift_deallocObject();
}

uint64_t sub_1004B509C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
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
      v13 = sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1004B51EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = sub_100003ABC(&qword_100616C00, &unk_1004EBFF0);
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
      v13 = sub_100003ABC(&qword_100616EF0, &qword_1004EC398);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1004B5328(uint64_t a1)
{
  sub_1004B53FC();
  if (v1 <= 0x3F)
  {
    sub_1004B5460(319, &qword_1006163F0, type metadata accessor for Lyrics.TextLine);
    if (v2 <= 0x3F)
    {
      sub_1004B5460(319, &unk_100617000, type metadata accessor for Lyrics.Translation.Line);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1004B53FC()
{
  result = qword_100616FF0;
  if (!qword_100616FF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_100616FF0);
  }

  return result;
}

void sub_1004B5460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1004BD174();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *LineProgressGradientView.__allocating_init(color:featherWidth:direction:frame:)(void *a1, char a2, double a3, double a4, double a5, double a6, double a7)
{
  v15 = objc_allocWithZone(v7);
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v16 = &v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v16 = 0;
  *(v16 + 1) = 0;
  v16[16] = 1;
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView(0, v18);
  *&v15[v17] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v19 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *&v15[v19] = [objc_allocWithZone(UIView) init];
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v15[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = a2 & 1;
  v23.receiver = v15;
  v23.super_class = v7;
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, "initWithFrame:", a4, a5, a6, a7);
  [v21 setClipsToBounds:{1, v23.receiver, v23.super_class}];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  return v21;
}

char *LineProgressGradientView.init(color:featherWidth:direction:frame:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  v12 = a2;
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView] = 0;
  v15 = &v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  *v15 = 0;
  *(v15 + 1) = 0;
  v15[16] = 1;
  v16 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView(0, a2);
  *&v7[v16] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v17 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  v18 = [objc_allocWithZone(UIView) init];
  *&v7[v17] = v18;
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color] = a1;
  *&v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth] = a3;
  v7[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction] = v12 & 1;
  v23.receiver = v7;
  v23.super_class = type metadata accessor for LineProgressGradientView(v18, v19);
  v20 = a1;
  v21 = objc_msgSendSuper2(&v23, "initWithFrame:", a4, a5, a6, a7);
  [v21 setClipsToBounds:{1, v23.receiver, v23.super_class}];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView]];
  [v21 addSubview:*&v21[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView]];
  sub_1004B5B6C();
  sub_1004B5EA0();

  return v21;
}

uint64_t sub_1004B5984(uint64_t result, uint64_t a2, char a3)
{
  v4 = &v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    if (a3)
    {
      return result;
    }
  }

  else if ((a3 & 1) == 0 && *v4 == *&result && v4[1] == *&a2)
  {
    return result;
  }

  [v3 setClipsToBounds:?];
  v6 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView;
  v7 = *&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
  if (v4[2])
  {
    [v7 removeFromSuperview];
    v8 = *&v3[v6];
    *&v3[v6] = 0;
  }

  else
  {
    if (!v7)
    {
      v9 = [objc_allocWithZone(UIView) init];
      [v9 setBackgroundColor:*&v3[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color]];
      [v3 addSubview:v9];
      v10 = *&v3[v6];
      *&v3[v6] = v9;
    }

    [v3 setNeedsLayout];
  }

  *&result = COERCE_DOUBLE([v3 setNeedsLayout]);
  return result;
}

Swift::Void __swiftcall LineProgressGradientView.layoutSubviews()()
{
  v3.receiver = v2;
  v3.super_class = type metadata accessor for LineProgressGradientView(v0, v1);
  objc_msgSendSuper2(&v3, "layoutSubviews");
  sub_1004B5C78();
}

void sub_1004B5B6C()
{
  v1 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction);
  v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  v3 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClassUnconditional();
  if (v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (v1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [v4 setStartPoint:v5];

  v7 = [*(v0 + v2) layer];
  objc_opt_self();
  [swift_dynamicCastObjCClassUnconditional() setEndPoint:{v6, 0.0}];

  sub_1004B5C78();
}

void sub_1004B5C78()
{
  v1 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction;
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_direction])
  {
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v3 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = 0.0;
    v5 = v3;
  }

  else
  {
    [v0 bounds];
    Width = CGRectGetWidth(v26);
    v2 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth;
    v5 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_featherWidth];
    v4 = Width - v5;
    if (Width - v5 <= 0.0)
    {
      v3 = Width - v5;
    }

    else
    {
      v3 = 0.0;
    }
  }

  v7 = &v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding];
  if (v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 16])
  {
    v8 = 0.0;
  }

  else
  {
    v8 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding + 8];
  }

  v9 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView];
  [v0 bounds];
  [v9 setFrame:{v4, -v8, v5, v8 + v8 + CGRectGetHeight(v27)}];

  v10 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  v11 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView];
  [v0 bounds];
  v12 = CGRectGetWidth(v28) - *&v0[v2];
  if (v12 < 0.0)
  {
    v13 = 0.0;
  }

  else
  {
    v13 = v12;
  }

  [v0 bounds];
  [v11 setFrame:{v3, 0.0, v13, CGRectGetHeight(v29)}];

  if ((v7[2] & 1) == 0)
  {
    v14 = *&v0[OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView];
    if (v14)
    {
      v15 = *v7;
      v16 = v7[1];
      v17 = v0[v1];
      v18 = *&v0[v10];
      v24 = v14;
      [v18 frame];
      if (v17 == 1)
      {
        MaxX = CGRectGetMaxX(*&v19);
      }

      else
      {
        MaxX = CGRectGetMinX(*&v19) - v15;
      }

      [v24 setFrame:{MaxX, -v16, v15, v16 + v16}];
    }
  }
}

id sub_1004B5EA0()
{
  v1 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView) layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClassUnconditional();
  sub_100003ABC(&qword_100615758, &qword_1004ECB50);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004C50C0;
  v4 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color;
  v5 = [*(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_color) CGColor];
  _s3__C7CGColorCMa_1(0);
  v7 = v6;
  *(v3 + 56) = v6;
  *(v3 + 32) = v5;
  v8 = [*(v0 + v4) colorWithAlphaComponent:0.0];
  v9 = [v8 CGColor];

  *(v3 + 88) = v7;
  *(v3 + 64) = v9;
  isa = sub_1004BC284().super.isa;

  [v2 setColors:isa];

  v11 = *(v0 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView);
  v12 = *(v0 + v4);

  return [v11 setBackgroundColor:v12];
}

id sub_1004B620C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

unint64_t sub_1004B6248()
{
  result = qword_100617078;
  if (!qword_100617078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100617078);
  }

  return result;
}

unint64_t sub_1004B6318(uint64_t a1, uint64_t a2)
{
  result = qword_1006170D0;
  if (!qword_1006170D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006170D0);
  }

  return result;
}

void sub_1004B6364(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_horizontalPaddingView) = 0;
  v3 = v2 + OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_outerPadding;
  *v3 = 0;
  *(v3 + 8) = 0;
  *(v3 + 16) = 1;
  v4 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_gradientView;
  type metadata accessor for LineProgressGradientView.GradientView(0, a2);
  *(v2 + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = OBJC_IVAR____TtC7LyricsX24LineProgressGradientView_fillView;
  *(v2 + v5) = [objc_allocWithZone(UIView) init];
  sub_1004BD624();
  __break(1u);
  sub_1004B6434();
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  v4 = _CGPointApplyAffineTransform(point, t);
  y = v4.y;
  x = v4.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CTFramesetterSuggestFrameSizeWithConstraints(CTFramesetterRef framesetter, CFRange stringRange, CFDictionaryRef frameAttributes, CGSize constraints, CFRange *fitRange)
{
  v7 = _CTFramesetterSuggestFrameSizeWithConstraints(framesetter, stringRange, frameAttributes, constraints, fitRange);
  height = v7.height;
  width = v7.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v4 = _NSUnionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}