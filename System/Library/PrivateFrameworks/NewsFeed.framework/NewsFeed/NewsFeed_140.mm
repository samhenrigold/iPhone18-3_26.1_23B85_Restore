uint64_t type metadata accessor for DebugFormatDebuggerSourceHighlightView(uint64_t a1)
{
  result = qword_1EC88C218;
  if (!qword_1EC88C218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6800DC0(uint64_t a1)
{
  sub_1D68012B8(319, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6800EBC(uint64_t a1, uint64_t a2)
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6800F50(uint64_t a1)
{
  sub_1D68012B8(0, &qword_1EC88E2E0, type metadata accessor for DebugFormatDebuggerSourceHighlight, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6800FDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D680103C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_sourceFile);
  sub_1D607F0A4(v13);
  v3 = v13[3];
  v2[2] = v13[2];
  v2[3] = v3;
  v4 = v13[1];
  *v2 = v13[0];
  v2[1] = v4;
  v5 = v13[7];
  v2[6] = v13[6];
  v2[7] = v5;
  v6 = v13[5];
  v2[4] = v13[4];
  v2[5] = v6;
  v7 = (v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_didTapOnHighlight);
  *v7 = 0;
  v7[1] = 0;
  v8 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageLabel;
  sub_1D725D04C();
  *(v1 + v8) = sub_1D725D01C();
  v9 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageFont;
  *(v1 + v9) = [objc_opt_self() monospacedSystemFontOfSize:10.0 weight:*MEMORY[0x1E69DB980]];
  v10 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_messageTextColor;
  *(v1 + v10) = [objc_opt_self() whiteColor];
  v11 = OBJC_IVAR____TtC8NewsFeed38DebugFormatDebuggerSourceHighlightView_highlight;
  v12 = type metadata accessor for DebugFormatDebuggerSourceHighlight(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  sub_1D726402C();
  __break(1u);
}

uint64_t sub_1D68011B4(void *a1)
{
  v12 = a1;
  v2 = a1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D5B49474(0, &qword_1EC890C50, &protocol descriptor for FormatError);
  if (swift_dynamicCast())
  {
    sub_1D5B7DDE8(&v11, v8);
    v3 = v9;
    v4 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    v5 = (*(v4 + 16))(v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v8);
    return v5;
  }

  else
  {
    v7 = a1;
    return sub_1D72620FC();
  }
}

void sub_1D68012B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t FeedActivityIndicatorCoverStyler.init(indicatorColor:backgroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 100;
  a3[1] = result;
  a3[2] = a2;
  return result;
}

void sub_1D6801354()
{
  v0 = objc_opt_self();
  v1 = [v0 labelColor];
  v2 = [v0 secondarySystemBackgroundColor];
  v3 = [v0 systemBackgroundColor];
  v4 = [v0 ts:v2 dynamicColor:v3 withDarkStyleVariant:?];

  qword_1EDF13328 = 100;
  unk_1EDF13330 = v1;
  qword_1EDF13338 = v4;
}

id static FeedActivityIndicatorCoverStyler.feedBackground.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDF13320 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EDF13330;
  v2 = qword_1EDF13338;
  v6 = qword_1EDF13338;
  *a1 = qword_1EDF13328;
  a1[1] = v1;
  a1[2] = v2;
  v3 = v1;

  return v6;
}

uint64_t FormatTranslate.init(x:y:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v14 = type metadata accessor for FormatRange(0, &v18);
  v15 = *(*(v14 - 8) + 32);
  v15(a7, a1, v14);
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a6;
  v16 = type metadata accessor for FormatTranslate(0, &v18);
  return (v15)(a7 + *(v16 + 52), a2, v14);
}

uint64_t FormatTranslate.x.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v7[0] = *(a1 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for FormatRange(0, v7);
  return (*(*(v5 - 8) + 16))(a2, v2, v5);
}

uint64_t FormatTranslate.y.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = *(a1 + 32);
  v8[0] = *(a1 + 16);
  v8[1] = v5;
  v6 = type metadata accessor for FormatRange(0, v8);
  return (*(*(v6 - 8) + 16))(a2, v2 + v4, v6);
}

uint64_t static FormatTranslate.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (static FormatRange.== infix(_:_:)(a1, a2, a3, a4, a5, a6))
  {
    v15[0] = a3;
    v15[1] = a4;
    v15[2] = a5;
    v15[3] = a6;
    v12 = type metadata accessor for FormatTranslate(0, v15);
    v13 = static FormatRange.== infix(_:_:)(a1 + *(v12 + 52), a2 + *(v12 + 52), a3, a4, a5, a6);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_1D680172C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6801768(void *a1, uint64_t a2)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[3] = result;
  return result;
}

uint64_t sub_1D6801834(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  result = type metadata accessor for FormatRange(319, v4);
  if (v3 <= 0x3F)
  {
    v5 = 0;
    *&v4[0] = result;
    *(&v4[0] + 1) = result;
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D68018AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = *(v4 + 80);
  v6 = *(*(*(a3 + 16) - 8) + 64);
  v9 = ((((v6 + v8) & ~v8) + v6 + v8) & ~v8) + ((v6 + v8) & ~v8) + v6;
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v5 + (v9 | v13) + 1;
}

char *sub_1D6801A08(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  v8 = ((*(v5 + 64) + v7) & ~v7) + *(v5 + 64);
  v9 = ((v8 + v7) & ~v7) + v8;
  v10 = a3 >= v6;
  v11 = a3 - v6;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v16 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v16))
      {
        v12 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v12 = v17;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v6 < a2)
  {
    v13 = ~v6 + a2;
    if (v9 < 4)
    {
      v15 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v18 = v13 & ~(-1 << (8 * v9));
        v19 = result;
        bzero(result, v9);
        result = v19;
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *v19 = v18;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&result[v9] = v15;
              }

              else
              {
                *&result[v9] = v15;
              }

              return result;
            }
          }

          else
          {
            *v19 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v14 = result;
      bzero(result, v9);
      result = v14;
      *v14 = v13;
      v15 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      result[v9] = v15;
    }

    return result;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&result[v9] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v9] = 0;
  }

  else if (v12)
  {
    result[v9] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v20 = *(v5 + 56);

  return v20();
}

uint64_t sub_1D6801C3C(void *a1)
{
  v3 = v1;
  sub_1D6804E50(0, &qword_1EC88C358, sub_1D6804DFC, &type metadata for A18_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6804DFC();
  sub_1D7264B5C();
  v11 = *(v3 + 16);
  v13[0] = *v3;
  v13[1] = v11;
  v14 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6804EB8(&qword_1EC8801E8, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    *&v13[0] = *(v3 + 32);
    v14 = 1;
    sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
    sub_1D5BD47D0(&qword_1EC8806A0, sub_1D5C0B904, MEMORY[0x1E69E6300]);
    sub_1D726443C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D6801E84(uint64_t a1)
{
  v2 = sub_1D6804DFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6801EC0(uint64_t a1)
{
  v2 = sub_1D6804DFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D6801EFC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6804B5C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D6801F5C(uint64_t a1, double a2, double a3, double a4, double a5)
{
  sub_1D6804808();

  return sub_1D725A24C();
}

uint64_t sub_1D6801FD8@<X0>(uint64_t *a1@<X8>)
{
  sub_1D5BEDFF4(0);
  swift_allocObject();
  v2 = sub_1D725996C();
  sub_1D6804E50(0, &qword_1EDF3BFE8, sub_1D5BE14C0, &type metadata for HeadlineViewLayout.Attributes, MEMORY[0x1E69D7198]);
  swift_allocObject();
  result = sub_1D7259F9C();
  *a1 = v2;
  a1[1] = result;
  return result;
}

void sub_1D6802094(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v83 = a2;
  v71 = a3;
  v7 = type metadata accessor for FeedHeadline(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v95 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v84 = &v71 - v12;
  v13 = sub_1D725895C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for GroupLayoutContext(0);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v18);
  v81 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v71 - v22;
  v75 = &v71 - v22;
  v85 = type metadata accessor for GroupLayoutBindingContext(0);
  v76 = *(v85 - 1);
  MEMORY[0x1EEE9AC00](v85, v24);
  v26 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *v5;
  v28 = *(v5 + 1);
  LOBYTE(v5) = v5[16];
  v82 = a1;
  sub_1D5BE3ED8(a1, v26, type metadata accessor for GroupLayoutBindingContext);
  v77 = type metadata accessor for GroupLayoutContext;
  sub_1D5BE3ED8(v83, v23, type metadata accessor for GroupLayoutContext);
  sub_1D725894C();
  v74 = sub_1D725893C();
  v73 = v29;
  (*(v14 + 8))(v17, v13);
  v93 = &type metadata for A18_V2;
  v30 = sub_1D5ECE334();
  v94 = v30;
  LOBYTE(v91) = v27;
  LOBYTE(v23) = v27;
  *(&v91 + 1) = v28;
  v92 = v5;
  type metadata accessor for GroupLayoutKey(0);
  v31 = swift_allocObject();
  sub_1D5BEE8A0(v28, v5);
  v86[0] = sub_1D7264C5C();
  v86[1] = v32;
  v89 = 95;
  v90 = 0xE100000000000000;
  v87 = 45;
  v88 = 0xE100000000000000;
  sub_1D5BF4D9C();
  v33 = sub_1D7263A6C();
  v35 = v34;

  *(v31 + 16) = v33;
  *(v31 + 24) = v35;
  v36 = (v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_identifier);
  v37 = v73;
  *v36 = v74;
  v36[1] = v37;
  sub_1D5B68374(&v91, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_factory);
  v38 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings;
  sub_1D5BDA904(v26, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_bindings, type metadata accessor for GroupLayoutBindingContext);
  (*(v76 + 56))(v31 + v38, 0, 1, v85);
  v39 = OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext;
  sub_1D5BDA904(v75, v31 + OBJC_IVAR____TtC8NewsFeed14GroupLayoutKey_layoutContext, type metadata accessor for GroupLayoutContext);
  (*(v78 + 56))(v31 + v39, 0, 1, v79);
  __swift_destroy_boxed_opaque_existential_1(&v91);
  v93 = &type metadata for A18_V2;
  v94 = v30;
  v40 = v81;
  LOBYTE(v91) = v23;
  *(&v91 + 1) = v28;
  v92 = v5;
  sub_1D5BE3ED8(v83, v81, v77);
  sub_1D5BD3920(0, qword_1EDF39B38, type metadata accessor for FeedHeadline, type metadata accessor for FeedItemSorter);
  inited = swift_initStackObject();
  v42 = MEMORY[0x1E69E7CC0];
  v83 = inited;
  *(inited + 16) = MEMORY[0x1E69E7CC0];
  v43 = inited + 16;
  swift_beginAccess();
  sub_1D5BEE8A0(v28, v5);
  v44 = sub_1D5C0F8FC(0, 1, 1, v42);
  v46 = v44[2];
  v45 = v44[3];
  v47 = v46 + 1;
  if (v46 >= v45 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v44[2] = v47;
    v48 = &v44[2 * v46];
    v48[4] = sub_1D63106DC;
    v48[5] = 0;
    *v43 = v44;
    swift_endAccess();
    if (!*(*&v82[v85[14]] + 16) || (sub_1D5BCF83C(0x6461654864656546, 0xEC000000656E696CLL, 0, 0), (v49 & 1) == 0) || (v50 = , v47 = sub_1D5C14D80(v50), , !v47))
    {
      if (!qword_1F5113A20)
      {

        v59 = MEMORY[0x1E69E7CC0];
        goto LABEL_29;
      }

      v86[0] = &unk_1F5113A00;
      v4 = v72;
      sub_1D5E239F4(v86);
      if (v4)
      {
        goto LABEL_38;
      }

      v56 = v86[0];
      if (*(v86[0] + 2))
      {
LABEL_19:
        v57 = *(v56 + 4);

        sub_1D5ED8048();
        swift_allocError();
        strcpy(v58, "FeedHeadline");
        v58[13] = 0;
        *(v58 + 7) = -5120;
        *(v58 + 2) = 0;
        *(v58 + 3) = 0;
        *(v58 + 4) = 4;
        *(v58 + 5) = v57;
        *(v58 + 6) = 0;
        *(v58 + 7) = 0;
        v58[64] = 0;
        swift_willThrow();
        swift_setDeallocating();

        sub_1D5BE780C(v40, type metadata accessor for GroupLayoutContext);
        __swift_destroy_boxed_opaque_existential_1(&v91);
        return;
      }

      __break(1u);
      goto LABEL_36;
    }

    v79 = v31;
    v40 = *(v47 + 16);
    if (!v40)
    {
      break;
    }

    v51 = 0;
    v52 = MEMORY[0x1E69E7CC0];
    v43 = v80;
    v44 = v84;
    while (1)
    {
      v45 = *(v47 + 16);
      if (v51 >= v45)
      {
        break;
      }

      v53 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v46 = *(v43 + 72);
      sub_1D5BE3ED8(v47 + v53 + v46 * v51, v44, type metadata accessor for FeedHeadline);
      if ((v44[4] & 4) != 0)
      {
        sub_1D5BDA904(v44, v95, type metadata accessor for FeedHeadline);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86[0] = v52;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5C0F91C(0, *(v52 + 2) + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        v31 = *(v52 + 2);
        v55 = *(v52 + 3);
        if (v31 >= v55 >> 1)
        {
          sub_1D5C0F91C((v55 > 1), v31 + 1, 1);
          v43 = v80;
          v52 = v86[0];
        }

        *(v52 + 2) = v31 + 1;
        sub_1D5BDA904(v95, &v52[v53 + v31 * v46], type metadata accessor for FeedHeadline);
        v44 = v84;
      }

      else
      {
        sub_1D5BE780C(v44, type metadata accessor for FeedHeadline);
      }

      if (v40 == ++v51)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_34:
    v44 = sub_1D5C0F8FC((v45 > 1), v47, 1, v44);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_22:
  v60 = v82;
  if ((*v82 & 1) == 0)
  {

    sub_1D62F071C(v52);
    v62 = v61;

    v52 = v62;
  }

  v63 = *&v60[v85[18]];
  v64 = *&v60[v85[19]];
  if (__OFSUB__(v63, v64))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v65 = sub_1D5C0FAD4(v52, v63 - v64);
  v59 = sub_1D5C11E10(&unk_1F5113A00, v65, v47);

  if (v59)
  {

    goto LABEL_28;
  }

  v59 = sub_1D5C11E10(&unk_1F5113A00, v52, v47);

  if (!v59)
  {
    v86[0] = &unk_1F5113A00;
    v4 = v72;
    sub_1D5E239F4(v86);
    if (v4)
    {
LABEL_38:

      __break(1u);
      return;
    }

    v56 = v86[0];
    v40 = v81;
    if (*(v86[0] + 2))
    {
      goto LABEL_19;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

LABEL_28:
  strcpy(v86, "FeedHeadline");
  BYTE5(v86[1]) = 0;
  HIWORD(v86[1]) = -5120;
  v86[2] = 0;
  v86[3] = 0;

  v67 = sub_1D5C107C4(v66);

  sub_1D5BDACA8(v86, v67);
  swift_setDeallocating();

  v40 = v81;
  v31 = v79;
LABEL_29:
  v68 = type metadata accessor for A18_V2.Bound(0);
  v69 = v71;
  v71[3] = v68;
  v69[4] = sub_1D6804EB8(&qword_1EC88C2B8, type metadata accessor for A18_V2.Bound, &unk_1D72F2584);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v69);
  *boxed_opaque_existential_1 = v31;
  sub_1D5B63F14(&v91, (boxed_opaque_existential_1 + 1));
  sub_1D5BDA904(v40, boxed_opaque_existential_1 + *(v68 + 24), type metadata accessor for GroupLayoutContext);
  *(boxed_opaque_existential_1 + *(v68 + 28)) = v59;
}

uint64_t sub_1D6802BE8@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v31 = a1;
  v3 = sub_1D725A36C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for A18_V2.Bound(0);
  v9 = v1 + *(v8 + 24);
  v10 = type metadata accessor for GroupLayoutContext(0);
  v11 = *(*(v9 + *(v10 + 40)) + 16);
  v12 = *(v9 + *(v10 + 32));
  sub_1D5B68374(v11 + 16, v36);
  sub_1D5B68374(v11 + 56, v35);
  v13 = v12 * *(v11 + 96);
  type metadata accessor for FeedLayoutStylerFactory();
  inited = swift_initStackObject();
  sub_1D5B63F14(v36, inited + 16);
  sub_1D5B63F14(v35, inited + 56);
  *(inited + 96) = v13;
  v34[0] = 1;
  FeedLayoutStylerFactory.styler(withHeading:)(v34, v38);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_1((inited + 16));
  __swift_destroy_boxed_opaque_existential_1((inited + 56));
  v15 = *(v2 + *(v8 + 28));
  v33[2] = v2;
  v33[3] = v38;
  v16 = sub_1D5ECA650(sub_1D680478C, v33, v15);
  v17 = *MEMORY[0x1E69D7130];
  v18 = sub_1D7259D1C();
  (*(*(v18 - 8) + 104))(v7, v17, v18);
  (*(v4 + 104))(v7, *MEMORY[0x1E69D7370], v3);
  v32 = v16;
  sub_1D68048B0(0, &qword_1EC88C2D8, MEMORY[0x1E69D73B8]);
  swift_allocObject();
  v30 = sub_1D725A4CC();
  sub_1D725A4DC();
  v19 = v37;
  sub_1D5BD3920(0, &qword_1EDF1B250, type metadata accessor for HeadlineViewLayout.Context, MEMORY[0x1E69E62F8]);
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  sub_1D5BD48FC();
  v20 = sub_1D5ED1E1C(&qword_1EDF1B260, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v28 = v36[1];
  v29 = v36[0];
  *&v36[0] = v16;
  *&v35[0] = v19;
  MEMORY[0x1EEE9AC00](v20, v21);

  v22 = sub_1D725C00C();

  v23 = v31;
  *v31 = 0;
  v24 = v29;
  *(v23 + 24) = v28;
  *(v23 + 8) = v24;
  *&v36[0] = v22;
  sub_1D5B49714(0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5ED1E1C(&qword_1EDF1B4C0, &qword_1EDF1B4C8, &type metadata for FeedItemLayoutAttributes);
  sub_1D5BDEFF8();
  v25 = sub_1D72623BC();

  v26 = MEMORY[0x1E69E7CC0];
  *(v23 + 5) = v25;
  *(v23 + 6) = v26;
  return __swift_destroy_boxed_opaque_existential_1(v38);
}

uint64_t sub_1D6803054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for FeedHeadline(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5BE3ED8(a1, v9, type metadata accessor for FeedHeadline);
  sub_1D5B68374(a2, v13);

  return HeadlineViewLayout.Context.init(key:model:styler:)(v10, v9, v13, a3);
}

uint64_t sub_1D680312C(uint64_t a1, uint64_t a2)
{
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13[-v8];
  v15 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 18;
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69D7490], v5);
  v14 = a2;
  v11 = MEMORY[0x1E69D7150];
  sub_1D68048B0(0, &qword_1EC88C2F8, MEMORY[0x1E69D7150]);
  sub_1D680486C(&qword_1EC88C300, &qword_1EC88C2F8, v11, MEMORY[0x1E69D7158]);
  sub_1D7259A2C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D6803318(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v23 = sub_1D68047B4;
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = (v22 - v7);
  v26 = a1;
  v9 = sub_1D725994C();
  v10 = swift_allocBox();
  (*(*(v9 - 8) + 104))(v11, *MEMORY[0x1E69D6F50], v9);
  *v8 = v10;
  v12 = *(v5 + 104);
  v12(v8, *MEMORY[0x1E69D73C0], v4);
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  v22[1] = v14;
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A9C();
  v15 = *(v5 + 8);
  v15(v8, v4);
  v26 = a1;
  v12(v8, *MEMORY[0x1E69D7460], v4);
  sub_1D6804934(0);
  sub_1D6804E50(0, &qword_1EC88C320, v23, &type metadata for A18_V2.Layout, MEMORY[0x1E69D70D8]);
  v17 = v16;
  v18 = *(v16 - 8);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D7273AE0;
  (*(v18 + 104))(v20 + v19, *MEMORY[0x1E69D7098], v17);
  v25 = v24;
  sub_1D72599EC();

  return (v15)(v8, v4);
}

uint64_t sub_1D6803684(uint64_t a1, uint64_t a2)
{
  v17 = a2;
  v18 = a1;
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = (&v17 - v8);
  v21 = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = 9;
  *v9 = v10;
  v11 = *MEMORY[0x1E69D7490];
  v12 = *(v6 + 104);
  v12(v9, v11, v5);
  v20 = a2;
  v13 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v13, MEMORY[0x1E69D6F40]);
  sub_1D7259A2C();
  v14 = *(v6 + 8);
  v14(v9, v5);
  v21 = v18;
  v15 = swift_allocObject();
  *(v15 + 16) = 9;
  *v9 = v15;
  v12(v9, v11, v5);
  v19 = v17;
  sub_1D7259A2C();
  return (v14)(v9, v5);
}

uint64_t sub_1D6803928(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (!*(a2 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D6803EF8(uint64_t a1, uint64_t a2)
{
  KeyPath = a1;
  v3 = sub_1D725A36C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D725A19C();
  v44 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for HeadlineViewLayout.Options(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HeadlineViewLayout.Context(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8, v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6804E50(0, &qword_1EC88C2F0, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D74B0]);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v39 - v23;
  v46 = KeyPath;
  KeyPath = swift_getKeyPath();
  (*(v21 + 104))(v24, *MEMORY[0x1E69D7460], v20);
  if (*(a2 + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_5;
  }

  v39 = v6;
  v40 = v20;
  sub_1D5BE3ED8(a2 + *(v15 + 72) + ((*(v15 + 80) + 32) & ~*(v15 + 80)), v18, type metadata accessor for HeadlineViewLayout.Context);
  v25 = v10[5];
  v26 = *MEMORY[0x1E69D7348];
  v27 = sub_1D725A34C();
  v28 = *(v27 - 8);
  (*(v28 + 104))(&v13[v25], v26, v27);
  (*(v28 + 56))(&v13[v25], 0, 1, v27);
  v29 = MEMORY[0x1E69DDC70];
  *v13 = 0;
  *&v13[v10[6]] = 0;
  v30 = *v29;
  *&v13[v10[7]] = v30;
  v31 = qword_1EDF386E8;
  v32 = v30;
  if (v31 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_1D725972C();

  v35 = MEMORY[0x1EEE9AC00](v33, v34);
  *(&v39 - 4) = v18;
  *(&v39 - 3) = v13;
  v38 = v9;
  (*(v41 + 104))(v43, *MEMORY[0x1E69D7378], v42, v35);
  sub_1D5BED904(0);
  swift_allocObject();
  sub_1D725A4CC();
  (*(v44 + 8))(v9, v39);
  sub_1D5BE780C(v13, type metadata accessor for HeadlineViewLayout.Options);
  sub_1D5BE780C(v18, type metadata accessor for HeadlineViewLayout.Context);
  v36 = MEMORY[0x1E69D6F38];
  sub_1D68048B0(0, &qword_1EC88C308, MEMORY[0x1E69D6F38]);
  sub_1D680486C(&qword_1EC88C310, &qword_1EC88C308, v36, MEMORY[0x1E69D6F40]);
  v38 = sub_1D5BE8850();
  sub_1D7259A4C();

  return (*(v21 + 8))(v24, v40);
}

uint64_t sub_1D68044D4@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  memcpy(v21, __src, sizeof(v21));
  sub_1D5BE5E28(0);
  v10 = v9;
  v11 = swift_allocBox();
  v13 = v12;
  v14 = *(v10 + 48);
  v15 = *(v10 + 64);
  sub_1D5BE3ED8(a3, v12, type metadata accessor for HeadlineViewLayout.Context);
  memcpy((v13 + v14), v21, 0x130uLL);
  v16 = a4 + *(type metadata accessor for A18_V2.Bound(0) + 24);
  result = type metadata accessor for GroupLayoutContext(0);
  v18 = *(v16 + *(result + 28));
  v19 = __OFADD__(v18, a2);
  v20 = v18 + a2;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v13 + v15) = v20;
    *a5 = v11 | 0x4000000000000000;
  }

  return result;
}

unint64_t sub_1D68045E8(uint64_t a1)
{
  *(a1 + 8) = sub_1D6804618();
  result = sub_1D680466C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6804618()
{
  result = qword_1EC88C2A8;
  if (!qword_1EC88C2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2A8);
  }

  return result;
}

unint64_t sub_1D680466C()
{
  result = qword_1EC88C2B0;
  if (!qword_1EC88C2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2B0);
  }

  return result;
}

uint64_t type metadata accessor for A18_V2.Bound(uint64_t a1)
{
  result = qword_1EC88C2C0;
  if (!qword_1EC88C2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6804734(uint64_t a1)
{
  result = sub_1D6804EB8(&qword_1EC88C2D0, type metadata accessor for A18_V2.Bound, &unk_1D72F255C);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68047B4()
{
  result = qword_1EC88C2E0;
  if (!qword_1EC88C2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2E0);
  }

  return result;
}

unint64_t sub_1D6804808()
{
  result = qword_1EC88C2E8;
  if (!qword_1EC88C2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C2E8);
  }

  return result;
}

uint64_t sub_1D680486C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D68048B0(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D68048B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for A18_V2.Layout;
    v8[1] = &type metadata for A18_V2.Layout.Attributes;
    v8[2] = sub_1D68047B4();
    v8[3] = sub_1D6804808();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D6804934(uint64_t a1)
{
  if (!qword_1EC88C318)
  {
    sub_1D6804E50(255, &qword_1EC88C320, sub_1D68047B4, &type metadata for A18_V2.Layout, MEMORY[0x1E69D70D8]);
    v1 = sub_1D72644CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88C318);
    }
  }
}

unint64_t sub_1D6804A00()
{
  result = qword_1EC88C328;
  if (!qword_1EC88C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C328);
  }

  return result;
}

unint64_t sub_1D6804A58()
{
  result = qword_1EC88C330;
  if (!qword_1EC88C330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C330);
  }

  return result;
}

unint64_t sub_1D6804AB0()
{
  result = qword_1EC88C338;
  if (!qword_1EC88C338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C338);
  }

  return result;
}

unint64_t sub_1D6804B08()
{
  result = qword_1EC88C340;
  if (!qword_1EC88C340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C340);
  }

  return result;
}

uint64_t sub_1D6804B5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D6804E50(0, &qword_1EC88C348, sub_1D6804DFC, &type metadata for A18_V2.Layout.Attributes.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6804DFC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v11 = v17;
  type metadata accessor for CGRect(0);
  v20 = 0;
  sub_1D6804EB8(&qword_1EDF1A740, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
  sub_1D726431C();
  v15 = v19;
  v16 = v18;
  sub_1D5B49714(0, &qword_1EDF1B268, &type metadata for HeadlineViewLayout.Attributes);
  v20 = 1;
  sub_1D5BD47D0(&qword_1EDF1B258, sub_1D5BEE208, MEMORY[0x1E69E6330]);
  sub_1D726431C();
  (*(v10 + 8))(v9, v5);
  v12 = v18;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v14 = v15;
  *v11 = v16;
  *(v11 + 16) = v14;
  *(v11 + 32) = v12;
  return result;
}

unint64_t sub_1D6804DFC()
{
  result = qword_1EC88C350;
  if (!qword_1EC88C350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C350);
  }

  return result;
}

void sub_1D6804E50(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6804EB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D6804F14()
{
  result = qword_1EC88C360;
  if (!qword_1EC88C360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C360);
  }

  return result;
}

unint64_t sub_1D6804F6C()
{
  result = qword_1EC88C368;
  if (!qword_1EC88C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C368);
  }

  return result;
}

unint64_t sub_1D6804FC4()
{
  result = qword_1EC88C370;
  if (!qword_1EC88C370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C370);
  }

  return result;
}

uint64_t sub_1D6805018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a4;
  v6[3] = sub_1D726290C();
  v6[4] = sub_1D72628FC();
  v9 = swift_task_alloc();
  v6[5] = v9;
  *v9 = v6;
  v9[1] = sub_1D68050D8;

  return sub_1D6929F84(a5, a6);
}

uint64_t sub_1D68050D8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = sub_1D726285C();

  return MEMORY[0x1EEE6DFA0](sub_1D680521C, v3, v2);
}

uint64_t sub_1D680521C()
{
  v1 = v0[6];
  v2 = v0[2];

  *(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections) = v1;

  [*(v2 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView) reloadData];
  v3 = v0[1];

  return v3();
}

void sub_1D6805360()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    v4 = [objc_opt_self() systemBackgroundColor];
    [v3 setBackgroundColor_];

    v5 = *&v1[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView];
    [v5 setDataSource_];
    [v5 setDelegate_];
    [v5 setAlwaysBounceVertical_];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];
    [v5 setTableFooterView_];

    type metadata accessor for SubtitleTableViewCell();
    sub_1D7262DAC();
    v7 = [v1 view];
    if (v7)
    {
      v8 = v7;
      [v7 addSubview_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1D6805720(__n128 a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  result = sub_1D7258DAC();
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v6 = *(v3 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections);
  if (result >= *(v6 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v7 = *(v6 + 24 * result + 48);

  result = sub_1D7258D9C();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (result < *(v7 + 16))
  {
    v8 = (v7 + 80 * result);
    v73 = v8[2];
    v9 = v8[3];
    v10 = v8[4];
    v11 = v8[5];
    *&v76[9] = *(v8 + 89);
    v75 = v10;
    *v76 = v11;
    v74 = v9;
    sub_1D6806848(&v73, &aBlock);

    type metadata accessor for SubtitleTableViewCell();
    v12 = sub_1D7262D8C();
    v13 = [v12 textLabel];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1D726203C();
      [v14 setText_];
    }

    v16 = [v12 textLabel];
    if (v16)
    {
      v17 = v16;
      [v16 setNumberOfLines_];
    }

    v18 = [v12 textLabel];
    if (v18)
    {
      v19 = v18;
      v20 = [objc_opt_self() systemFontOfSize_];
      [v19 setFont_];
    }

    v21 = [v12 detailTextLabel];
    if (v21)
    {
      v22 = v21;
      if (*&v76[8])
      {

        v23 = sub_1D726203C();
      }

      else
      {
        v23 = 0;
      }

      [v22 setText_];
    }

    v24 = [v12 detailTextLabel];
    if (v24)
    {
      v25 = v24;
      [v24 setNumberOfLines_];
    }

    v26 = [v12 detailTextLabel];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_opt_self() secondaryLabelColor];
      [v27 setTextColor_];
    }

    v29 = [v12 detailTextLabel];
    if (v29)
    {
      v30 = v29;
      v31 = [objc_opt_self() systemFontOfSize_];
      [v30 setFont_];
    }

    v32 = objc_opt_self();
    v33 = v12;
    v34 = [v32 systemBlueColor];
    [v33 setTintColor_];

    v35 = [v33 imageView];
    if (v35)
    {
      v36 = v35;
      v37 = [v32 secondaryLabelColor];
      [v36 setTintColor_];
    }

    v71 = v75;
    v72[0] = *v76;
    *(v72 + 9) = *&v76[9];
    aBlock = v73;
    v70 = v74;
    v38 = *(v4 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
    v39 = *(v4 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed + 8);
    v40 = *(v4 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed + 16);

    v41 = sub_1D6C136C4(v38, v39, v40);

    if (v41)
    {
      v42 = 3;
    }

    else
    {
      v42 = 0;
    }

    v43 = *&v76[16];
    v44 = v76[24];
    [v33 setAccessoryType_];
    if (v44)
    {
      v46 = *(&v73 + 1);
      v45 = v74;
      v47 = v43;
      v48 = sub_1D726203C();
      [v33 setAccessibilityIdentifier_];

      v49 = [v33 imageView];
      v50 = v49;
      if (v43)
      {
        if (v49)
        {
          [v49 setImage_];
        }

        v51 = *(*(v4 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache);
        v52 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v53 = swift_allocObject();
        v54 = v73;
        *(v53 + 40) = v74;
        v55 = *v76;
        *(v53 + 56) = v75;
        *(v53 + 72) = v55;
        *(v53 + 81) = *&v76[9];
        *(v53 + 16) = v52;
        *(v53 + 24) = v54;
        sub_1D6806848(&v73, &aBlock);

        sub_1D725B86C();

        if (v68)
        {
          sub_1D6805F90(v68, v52, &v73);

          sub_1D68068A4(&v73);
        }

        else
        {
          sub_1D5B5A498(0, &qword_1EDF1AA30, 0x1E69E9610);
          v67 = sub_1D726308C();
          v60 = swift_allocObject();
          swift_weakInit();
          v61 = *(v51 + 24);
          v62 = swift_allocObject();
          v62[2] = v60;
          v62[3] = v47;
          v62[4] = sub_1D68068F8;
          v62[5] = v53;
          v62[6] = v61;
          v62[7] = v46;
          v62[8] = v45;
          *&v71 = sub_1D6806904;
          *(&v71 + 1) = v62;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          *&v70 = sub_1D5B6B06C;
          *(&v70 + 1) = &block_descriptor_47;
          v63 = _Block_copy(&aBlock);
          v64 = v43;

          v65 = v61;

          v66 = [v47 downloadIfNeededWithCompletionQueue:v67 completion:v63];

          sub_1D68068A4(&v73);
          _Block_release(v63);

          swift_unknownObjectRelease();
        }

        return v33;
      }

      if (v49)
      {
        v59 = *(*(*(v4 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor) + OBJC_IVAR____TtC8NewsFeed17DebugFormatEditor_imageCache) + 16);
        [v50 setImage_];

        sub_1D68068A4(&v73);
        return v33;
      }
    }

    else
    {
      v56 = v43;

      v57 = [v33 imageView];
      if (v57)
      {
        v58 = v57;
        [v57 setImage_];

        sub_1D68068A4(&v73);
        return v33;
      }
    }

    sub_1D68068A4(&v73);
    return v33;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_1D6805F90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [Strong accessibilityIdentifier];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1D726207C();
      v11 = v10;

      if (v9 == *(a3 + 8) && v11 == *(a3 + 16))
      {
      }

      else
      {
        v13 = sub_1D72646CC();

        if ((v13 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v14 = [v6 imageView];
      if (v14)
      {
        v15 = v14;
        [v14 setImage_];
      }
    }

LABEL_12:
  }
}

uint64_t sub_1D680634C(uint64_t a1, uint64_t a2, SEL *a3)
{
  v5 = [*v3 navigationItem];
  v6 = [v5 *a3];

  if (!v6)
  {
    return 0;
  }

  sub_1D5B5A498(0, &qword_1EDF04590, 0x1E69DC708);
  v7 = sub_1D726267C();

  return v7;
}

id sub_1D68063DC(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DebugFormatWorkspace(0);
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v11 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B73DC0(0);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView;
  *&v2[v16] = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections] = MEMORY[0x1E69E7CC0];
  *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_editor] = a1;
  v17 = (a2 + *(v7 + 28));
  v18 = v17[9];
  v19 = v17[10];
  v20 = v17[11];
  v21 = &v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed];
  *v21 = v18;
  *(v21 + 1) = v19;
  *(v21 + 2) = v20;
  v31.receiver = v2;
  v31.super_class = ObjectType;

  v22 = objc_msgSendSuper2(&v31, sel_initWithNibName_bundle_, 0, 0);
  v23 = sub_1D726294C();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  sub_1D5FC998C(a2, v11);
  sub_1D726290C();
  v24 = v22;

  v25 = v24;
  v26 = sub_1D72628FC();
  v27 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v28 = swift_allocObject();
  v29 = MEMORY[0x1E69E85E0];
  v28[2] = v26;
  v28[3] = v29;
  v28[4] = v25;
  v28[5] = a1;
  sub_1D676E2D0(v11, v28 + v27);
  sub_1D6BD1334(0, 0, v15, &unk_1D72F28E0, v28);

  sub_1D5EF0664(a2);
  return v25;
}

void sub_1D68066A4(__n128 a1)
{
  v2 = sub_1D7258DAC();
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_sections);
  if (v2 >= *(v3 + 16))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(v3 + 24 * v2 + 48);

  v5 = sub_1D7258D9C();
  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v5 >= *(v4 + 16))
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = v4 + 80 * v5;
  v7 = *(v6 + 56);
  v8 = *(v6 + 96);

  v9 = v8;

  v10 = FeedKind.rawValue.getter();
  v11 = (v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_feed);
  *v11 = v10;
  v11[1] = v12;
  v11[2] = v7;
  swift_retain_n();

  [*(v1 + OBJC_IVAR____TtC8NewsFeed38DebugFormatWorkspaceFeedViewController_tableView) reloadData];
}

uint64_t sub_1D6806918(uint64_t a1)
{
  v4 = *(type metadata accessor for DebugFormatWorkspace(0) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D5B64684;

  return sub_1D6805018(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_1D6806A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = sub_1D7259BCC();
  v7 = *(v6 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6, v8);
  v12 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v14 = *v2 >> 62;
  if (v14 > 1)
  {
    v24 = v13 & 0x3FFFFFFFFFFFFFFFLL;
    if (v14 == 2)
    {
      v25 = *(v24 + 16);
      v26 = *(v24 + 24);
      sub_1D6807884(0, v10);
      v28 = v27;
      v29 = swift_allocBox();
      v31 = v30;
      v64 = v25;

      swift_retain_n();
      sub_1D6806A1C(a1, v31);
      if (!v3)
      {
        v32 = *(v28 + 48);

        v64 = v26;

        sub_1D6806A1C(a1, (v31 + v32));

        *a2 = v29;
        v33 = MEMORY[0x1E69D70F0];
LABEL_16:
        v57 = *v33;
        v58 = sub_1D7259BDC();
        return (*(*(v58 - 8) + 104))(a2, v57, v58);
      }
    }

    else
    {
      v43 = *(v24 + 16);
      v44 = *(v24 + 24);
      sub_1D6807884(0, v10);
      v46 = v45;
      v47 = swift_allocBox();
      v49 = v48;
      v64 = v43;

      swift_retain_n();
      sub_1D6806A1C(a1, v49);
      if (!v3)
      {
        v56 = *(v46 + 48);

        v64 = v44;

        sub_1D6806A1C(a1, (v49 + v56));

        *a2 = v47;
        v33 = MEMORY[0x1E69D70E0];
        goto LABEL_16;
      }
    }

    return swift_deallocBox();
  }

  if (!v14)
  {
    v16 = *(v13 + 16);
    v15 = *(v13 + 24);
    v17 = *(v13 + 32);
    sub_1D68078E8(0, &qword_1EC88C3E8, MEMORY[0x1E69D7108], MEMORY[0x1E69E6158]);
    v19 = v18;
    v20 = swift_allocBox();
    v22 = v21;
    v23 = *(v19 + 48);
    *v21 = v16;
    v21[1] = v15;
    v64 = v17;
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    sub_1D6806A1C(a1, (v22 + v23));
    if (v3)
    {

      return swift_deallocBox();
    }

    *a2 = v20;
    v33 = MEMORY[0x1E69D70E8];
    goto LABEL_16;
  }

  v61 = a2;
  v62 = v9;
  v34 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = *(v34 + 16);
  v60 = *(v34 + 24);
  sub_1D68078E8(0, &qword_1EDF3BEA8, MEMORY[0x1E69D70F8], MEMORY[0x1E69E7DE0]);
  v37 = v36;
  v63 = swift_allocBox();
  v64 = a1;
  v59 = v38;
  v39 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);

  v40 = v39();
  v41 = sub_1D5E02AFC(v40, v35);
  if (v3)
  {

    return swift_deallocBox();
  }

  else
  {
    v50 = v41;

    v51 = v59;
    *v59 = v50;

    v52 = v62;
    (*(v7 + 104))(v12, **(&unk_1E84CE620 + v60), v62);
    (*(v7 + 32))(&v51[*(v37 + 48)], v12, v52);
    v53 = v61;
    *v61 = v63;
    v54 = *MEMORY[0x1E69D7100];
    v55 = sub_1D7259BDC();
    return (*(*(v55 - 8) + 104))(v53, v54, v55);
  }
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  sub_1D633A310(*a1, *a2);
  if (v2)
  {
    v3 = FormatOperator.rawValue.getter();
    v5 = v4;
    if (v3 == FormatOperator.rawValue.getter() && v5 == v6)
    {
      v7 = 1;
    }

    else
    {
      v7 = sub_1D72646CC();
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO15LogicalOperatorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a2[1];
  v7 = *a2;
  v8 = v2;

  LOBYTE(v2) = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);

  if (v2)
  {
    v7 = v4;
    v8 = v3;

    v5 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO0fG0V2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v7 = v3;
    v8 = v2;

    v5 = _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(&v8, &v7);
  }

  return v5 & 1;
}

uint64_t _s8NewsFeed30FormatTextNodeAlternativeLogicO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 != 2)
      {
        goto LABEL_14;
      }
    }

    else if (v3 >> 62 != 3)
    {
      goto LABEL_14;
    }

    v18 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v14 = _s8NewsFeed30FormatTextNodeAlternativeLogicO15LogicalOperatorV2eeoiySbAE_AEtFZ_0(&v18, &v16);
    goto LABEL_12;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_14;
    }

    v9 = v2 & 0x3FFFFFFFFFFFFFFFLL;
    v10 = *(v9 + 24);
    v11 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v12 = *(v11 + 16);
    v13 = *(v11 + 24);
    *&v18 = *(v9 + 16);
    BYTE8(v18) = v10;
    *&v16 = v12;
    BYTE8(v16) = v13;

    v14 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0D5LinesV2eeoiySbAE_AEtFZ_0(&v18, &v16);
LABEL_12:
    v8 = v14;

    goto LABEL_13;
  }

  if (v3 >> 62)
  {
LABEL_14:
    v8 = 0;
    return v8 & 1;
  }

  v5 = *(v2 + 32);
  v6 = *(v3 + 16);
  v7 = *(v3 + 32);
  v18 = *(v2 + 16);
  v19 = v5;
  v16 = v6;
  v17 = v7;

  v8 = _s8NewsFeed30FormatTextNodeAlternativeLogicO0fG0V2eeoiySbAE_AEtFZ_0(&v18, &v16);

LABEL_13:

  return v8 & 1;
}

unint64_t sub_1D68073B0(uint64_t a1)
{
  result = sub_1D68073D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68073D8()
{
  result = qword_1EC88C3A0;
  if (!qword_1EC88C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3A0);
  }

  return result;
}

unint64_t sub_1D680746C()
{
  result = qword_1EC88C3A8;
  if (!qword_1EC88C3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3A8);
  }

  return result;
}

unint64_t sub_1D68074C0(uint64_t a1)
{
  result = sub_1D68074E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68074E8()
{
  result = qword_1EC88C3B0;
  if (!qword_1EC88C3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3B0);
  }

  return result;
}

unint64_t sub_1D680757C()
{
  result = qword_1EC88C3B8;
  if (!qword_1EC88C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3B8);
  }

  return result;
}

unint64_t sub_1D68075D0(uint64_t a1)
{
  result = sub_1D68075F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D68075F8()
{
  result = qword_1EC88C3C0;
  if (!qword_1EC88C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3C0);
  }

  return result;
}

unint64_t sub_1D680768C()
{
  result = qword_1EC88C3C8;
  if (!qword_1EC88C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3C8);
  }

  return result;
}

unint64_t sub_1D68076E0(uint64_t a1)
{
  result = sub_1D6807708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6807708()
{
  result = qword_1EC88C3D0;
  if (!qword_1EC88C3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3D0);
  }

  return result;
}

uint64_t sub_1D680779C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68077F0()
{
  result = qword_1EC88C3D8;
  if (!qword_1EC88C3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3D8);
  }

  return result;
}

void sub_1D6807884(uint64_t a1, __n128 a2)
{
  if (!qword_1EC88C3E0)
  {
    sub_1D7259BDC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88C3E0);
    }
  }
}

void sub_1D68078E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

NewsFeed::FormatSlotTransformPolicy_optional __swiftcall FormatSlotTransformPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FormatSlotTransformPolicy.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 1953656691;
    v8 = 0x65746164696C6176;
    if (v1 != 10)
    {
      v8 = 0x7974706D65;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x7453656C7A7A7570;
    v10 = 0x726F7463656C6573;
    if (v1 != 7)
    {
      v10 = 0x7265746C6966;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x657571696E75;
    v3 = 0x65726975716572;
    v4 = 0x6F43657269707865;
    if (v1 != 4)
    {
      v4 = 6775156;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x74696D696CLL;
    if (v1 != 1)
    {
      v5 = 0x6C616E6F73726570;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D6807B2C()
{
  v0 = FormatSlotTransformPolicy.rawValue.getter();
  v2 = v1;
  if (v0 == FormatSlotTransformPolicy.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t sub_1D6807BC8()
{
  sub_1D7264A0C();
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6807C30(uint64_t a1)
{
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6807C94(uint64_t a1)
{
  sub_1D7264A0C();
  FormatSlotTransformPolicy.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6807D04@<X0>(uint64_t *a1@<X8>)
{
  result = FormatSlotTransformPolicy.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D6807D3C@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  v3 = *v1 >> 60;
  if (v3 <= 4)
  {
    if (v3 <= 1)
    {
      if (v3)
      {
        v4 = 3;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      if (v3 == 2)
      {
        return sub_1D6807D3C(a1);
      }

      if (v3 == 3)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    goto LABEL_24;
  }

  if (v3 > 7)
  {
    if (v3 == 8)
    {
      v4 = 9;
      goto LABEL_24;
    }

    if (v3 == 9)
    {
      v4 = 10;
      goto LABEL_24;
    }

    if (v2 == 0xA000000000000000)
    {
      *a1 = 0;
      return result;
    }

    if (v2 == 0xA000000000000008)
    {
      v4 = 2;
      goto LABEL_24;
    }

LABEL_23:
    v4 = 8;
    goto LABEL_24;
  }

  if (v3 == 5)
  {
    v4 = 6;
    goto LABEL_24;
  }

  if (v3 != 6)
  {
    goto LABEL_23;
  }

  v4 = 7;
LABEL_24:
  *a1 = v4;
  return result;
}

uint64_t sub_1D6807E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for FormatArrangementTemplate(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    type metadata accessor for FormatArrangementComponentResult(255, v4, v5, v7);
    result = sub_1D72627FC();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D6807EEC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 16) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
  }

  if (v13 >= 0x10000)
  {
    v14 = 4;
  }

  else
  {
    v14 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((a1 + v8 + 16) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_1D6808074(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((a1 + v10 + 16) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (a1 + v10 + 16) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

uint64_t sub_1D68082F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for FormatArrangementComponentResult(255, *(a1 + 16), *(a1 + 24), a4);
  sub_1D72627FC();
  sub_1D609C43C(0);

  swift_getWitnessTable();
  sub_1D68085A0();
  v4 = sub_1D72624BC();

  return v4;
}

void sub_1D68083D4(uint64_t a1@<X0>, uint64_t a2@<X3>, _WORD *a3@<X8>)
{
  v5 = *(v3 + *(a1 + 36));
  type metadata accessor for FormatArrangementComponentResult(0, *(a1 + 16), *(a1 + 24), a2);

  v6 = 0;
  v7 = 49;
  while (1)
  {
    if (v6 == sub_1D726279C())
    {

      LOWORD(v9) = 0x8000;
      goto LABEL_8;
    }

    v8 = sub_1D726277C();
    sub_1D726271C();
    if ((v8 & 1) == 0)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_10;
    }

    v9 = *(v5 + v7);
    ++v6;
    v7 += 32;
    if ((~v9 & 0xFCC0) != 0)
    {

LABEL_8:
      *a3 = v9;
      return;
    }
  }

  sub_1D7263DBC();
  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t sub_1D68084C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for FormatArrangementTemplate(0, a3, a4, a4);
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  result = type metadata accessor for FormatArrangementTemplateResult(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

unint64_t sub_1D68085A0()
{
  result = qword_1EDF049D0[0];
  if (!qword_1EDF049D0[0])
  {
    sub_1D609C43C(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF049D0);
  }

  return result;
}

uint64_t sub_1D68085F8(void *a1, uint64_t *a2)
{
  v3 = a1[7];
  v4 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v3);
  v5 = *a2;
  v6 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  return ResourceServiceType.fetchResources(identifiers:qualityOfService:cachePolicy:purpose:)(v5, 25, a2 + *(v6 + 20), *MEMORY[0x1E69B50A8], v3, v4);
}

void sub_1D680867C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceBatchResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDF17598);
  sub_1D68098C8(a2, v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
  v9 = a1;
  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136446466;
    v14 = MEMORY[0x1DA6F9D20](*v7, MEMORY[0x1E69E6158]);
    v16 = v15;
    sub_1D6809868(v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
    v17 = sub_1D5BC5100(v14, v16, &v23);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2082;
    v22 = a1;
    v18 = a1;
    sub_1D5BA6EF4();
    v19 = sub_1D72620FC();
    v21 = sub_1D5BC5100(v19, v20, &v23);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_1D5B42000, v10, v11, "Sports data service failed to resolve resources %{public}s, error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceBatchResourceRequest);
  }
}

uint64_t sub_1D68088E8(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1 + 9, a1[12]);
  type metadata accessor for SportsDataServiceURLRequest(0);
  return sub_1D725B44C();
}

char *sub_1D6808954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v87 = a1;
  v88 = a4;
  v90 = type metadata accessor for SportsDataServiceURLRequest(0);
  MEMORY[0x1EEE9AC00](v90, v5);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  *&v89 = &v82 - v9;
  v10 = MEMORY[0x1E69E6720];
  sub_1D5B54858(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v82 - v13;
  v92 = sub_1D72585BC();
  v94 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92, v15);
  v91 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D7257B5C();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54858(0, &unk_1EDF43B50, MEMORY[0x1E69681B8], v10);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v82 - v24;
  v26 = sub_1D7257C7C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v31;
  sub_1D7257BCC();
  if ((*(v27 + 48))(v25, 1, v32) == 1)
  {
    sub_1D5B6F19C(v25, &unk_1EDF43B50, MEMORY[0x1E69681B8]);
    sub_1D5F82C30();
    swift_allocError();
    *v33 = 3;
    swift_willThrow();
  }

  else
  {
    v83 = a2;
    v86 = v27;
    v34 = *(v27 + 32);
    v82 = v32;
    v34(v30, v25, v32);
    sub_1D7257BAC();
    sub_1D7257BBC();
    v85 = v30;
    v36 = sub_1D7257B9C();
    if (*v35)
    {
      v37 = v35;
      sub_1D725BF1C();
      sub_1D7257B2C();

      v38 = *v37;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v37 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = sub_1D698BCB0(0, v38[2] + 1, 1, v38);
        *v37 = v38;
      }

      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v38 = sub_1D698BCB0((v40 > 1), v41 + 1, 1, v38);
        *v37 = v38;
      }

      v42 = v89;
      v38[2] = v41 + 1;
      (*(v18 + 32))(v38 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v41, v21, v17);
      v36(v93, 0);
    }

    else
    {
      v36(v93, 0);
      v42 = v89;
    }

    v30 = v85;
    sub_1D7257BDC();
    v43 = v94;
    v44 = v92;
    v45 = (*(v94 + 48))(v14, 1, v92);
    v46 = v86;
    v47 = v90;
    if (v45 == 1)
    {
      sub_1D5B6F19C(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
      sub_1D5F82C30();
      swift_allocError();
      *v48 = 4;
      swift_willThrow();
      (*(v46 + 8))(v30, v82);
    }

    else
    {
      (*(v43 + 32))(v91, v14, v44);
      sub_1D5B54858(0, &qword_1EDF01E00, sub_1D68097E4, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      v89 = xmmword_1D7273AE0;
      *(inited + 16) = xmmword_1D7273AE0;
      strcpy((inited + 32), "X-REQUEST-ID");
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      sub_1D5B581F0(0, &qword_1EDF195B0, MEMORY[0x1E69E6F90]);
      v50 = swift_allocObject();
      *(v50 + 16) = v89;
      v51 = v88;
      v52 = (v88 + *(v47 + 32));
      v54 = *v52;
      v53 = v52[1];
      *(v50 + 32) = v54;
      *(v50 + 40) = v53;
      *(inited + 48) = v50;

      *&v89 = sub_1D605DB28(inited);
      swift_setDeallocating();
      sub_1D6809868(inited + 32, sub_1D68097E4);
      if (qword_1EDF17590 != -1)
      {
        swift_once();
      }

      v55 = sub_1D725C42C();
      __swift_project_value_buffer(v55, qword_1EDF17598);
      sub_1D68098C8(v51, v42, type metadata accessor for SportsDataServiceURLRequest);
      v56 = v84;
      sub_1D68098C8(v51, v84, type metadata accessor for SportsDataServiceURLRequest);
      v57 = sub_1D725C3FC();
      v58 = sub_1D7262EDC();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v93[0] = v60;
        *v59 = 136446466;
        v61 = (v42 + *(v47 + 32));
        v62 = v42;
        v63 = *v61;
        v64 = v61[1];

        sub_1D6809868(v62, type metadata accessor for SportsDataServiceURLRequest);
        v65 = sub_1D5BC5100(v63, v64, v93);

        *(v59 + 4) = v65;
        *(v59 + 12) = 2082;
        v66 = sub_1D72583DC();
        v68 = v67;
        sub_1D6809868(v56, type metadata accessor for SportsDataServiceURLRequest);
        v69 = sub_1D5BC5100(v66, v68, v93);

        *(v59 + 14) = v69;
        _os_log_impl(&dword_1D5B42000, v57, v58, "SportsDataService executing fetch with identifier=%{public}s, url=%{public}s", v59, 0x16u);
        swift_arrayDestroy();
        v70 = v60;
        v44 = v92;
        MEMORY[0x1DA6FD500](v70, -1, -1);
        v71 = v59;
        v51 = v88;
        MEMORY[0x1DA6FD500](v71, -1, -1);
      }

      else
      {

        sub_1D6809868(v56, type metadata accessor for SportsDataServiceURLRequest);
        sub_1D6809868(v42, type metadata accessor for SportsDataServiceURLRequest);
      }

      v72 = (v51 + *(v47 + 28));
      v90 = sub_1D726207C();
      v74 = v73;
      if (v72[3])
      {
        v75 = *v72;
        v76 = v72[1];
        sub_1D5E3E824(*v72, v76);
        v77 = v72[3];
        if (v77)
        {
          v78 = v72[2];
        }

        else
        {
          v78 = 0;
        }
      }

      else
      {
        v75 = 0;
        v78 = 0;
        v77 = 0;
        v76 = 0xF000000000000000;
      }

      ObjectType = swift_getObjectType();
      v80 = v91;
      v30 = FCEndpointConnectionType.performHTTPRequest(with:valuesByHTTPHeaderField:method:data:contentType:priority:networkEventType:requiresMescalSigning:callbackQueue:)(v91, v89, v90, v74, v75, v76, v78, v77, *MEMORY[0x1E696A9C8], 25, 0, *(v83 + 112), ObjectType);

      sub_1D5B952E4(v75, v76);

      (*(v94 + 8))(v80, v44);
      (*(v86 + 8))(v85, v82);
    }
  }

  return v30;
}

uint64_t sub_1D68093C0(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1D605DB28(MEMORY[0x1E69E7CC0]);
  v6 = sub_1D726207C();
  v8 = FCEndpointConnectionType.performHTTPRequest(with:valuesByHTTPHeaderField:method:data:contentType:priority:networkEventType:requiresMescalSigning:callbackQueue:)(a2, v5, v6, v7, 0, 0xF000000000000000, 0, 0, *MEMORY[0x1E696A9C8], 0, 0, *(a1 + 112), ObjectType);

  return v8;
}

uint64_t sub_1D680949C(void *a1, uint64_t *a2)
{
  v3 = a1[7];
  v4 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v3);
  v5 = *a2;
  v6 = a2[1];
  v7 = type metadata accessor for SportsDataServiceResourceRequest(0);
  return ResourceServiceType.fetchResource(identifier:qualityOfService:cachePolicy:purpose:)(v5, v6, 25, a2 + *(v7 + 20), *MEMORY[0x1E69B50A8], v3, v4);
}

void sub_1D680952C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsDataServiceResourceRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = (&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDF17590 != -1)
  {
    swift_once();
  }

  v8 = sub_1D725C42C();
  __swift_project_value_buffer(v8, qword_1EDF17598);
  sub_1D68098C8(a2, v7, type metadata accessor for SportsDataServiceResourceRequest);
  v9 = a1;
  v10 = sub_1D725C3FC();
  v11 = sub_1D7262EBC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136446466;
    v14 = *v7;
    v15 = v7[1];

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceResourceRequest);
    v16 = sub_1D5BC5100(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2082;
    v21 = a1;
    v17 = a1;
    sub_1D5BA6EF4();
    v18 = sub_1D72620FC();
    v20 = sub_1D5BC5100(v18, v19, &v22);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D5B42000, v10, v11, "Sports data service failed to resolve resource %{public}s, error=%{public}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v13, -1, -1);
    MEMORY[0x1DA6FD500](v12, -1, -1);
  }

  else
  {

    sub_1D6809868(v7, type metadata accessor for SportsDataServiceResourceRequest);
  }
}

uint64_t sub_1D680978C()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

void sub_1D68097E4(uint64_t a1)
{
  if (!qword_1EDF05428)
  {
    sub_1D5B581F0(255, &qword_1EDF43BA0, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05428);
    }
  }
}

uint64_t sub_1D6809868(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D68098C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6809940(uint64_t a1)
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

uint64_t sub_1D68099CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 24) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1D6809BA8(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1D6809E7C(uint64_t a1)
{
  result = type metadata accessor for SportsDataServiceBatchRequest(319);
  if (v3 <= 0x3F)
  {
    v7 = 0;
    v9 = result;
    v5[0] = *(a1 + 16);
    v5[1] = type metadata accessor for SportsDataServiceRequest(255);
    v6 = *(a1 + 24);
    type metadata accessor for SportsDataServiceResponse(255, v5);
    result = sub_1D72627FC();
    if (v4 <= 0x3F)
    {
      v8 = 0;
      v10 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1D6809F6C()
{
  result = qword_1EC88C3F0;
  if (!qword_1EC88C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C3F0);
  }

  return result;
}

void FormatFeedConfig.init(selectors:options:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{

  *a3 = a1;

  a3[1] = a2;
}

uint64_t sub_1D680A030()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 0x726F7463656C6573;
  }
}

void sub_1D680A070(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073;
  if (v6 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D680A154(uint64_t a1)
{
  v2 = sub_1D680A430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D680A190(uint64_t a1)
{
  v2 = sub_1D680A430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatFeedConfig.encode(to:)(void *a1)
{
  sub_1D680AEB0(0, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D680A430();
  sub_1D7264B5C();
  if (!v10 || (v14 = 0, v13 = v10, sub_1D680A484(), sub_1D680A7C4(0), sub_1D680A720(&qword_1EC88C460, sub_1D680A7C4, sub_1D680A88C, MEMORY[0x1E69E7C70]), sub_1D72647EC(), !v2))
  {
    if (v12)
    {
      v14 = 1;
      v13 = v12;
      sub_1D680A484();
      sub_1D680A4F8(0);
      sub_1D680A720(&qword_1EC88C430, sub_1D680A4F8, sub_1D680A6D8, MEMORY[0x1E69E7C70]);
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1D680A430()
{
  result = qword_1EC88C408;
  if (!qword_1EC88C408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C408);
  }

  return result;
}

unint64_t sub_1D680A484()
{
  result = qword_1EC88C410;
  if (!qword_1EC88C410)
  {
    sub_1D680AEB0(255, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C410);
  }

  return result;
}

void sub_1D680A560(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D680A5C4(uint64_t a1)
{
  if (!qword_1EC88C428)
  {
    v2 = type metadata accessor for FormatOption(255);
    v3 = sub_1D680A690(&unk_1EDF45930, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v4 = sub_1D680A690(&qword_1EDF45940, type metadata accessor for FormatOption, &protocol conformance descriptor for FormatOption);
    v5 = type metadata accessor for FormatFeedConfigValue(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EC88C428);
    }
  }
}

uint64_t sub_1D680A690(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D680A720(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D680A82C()
{
  if (!qword_1EC88C458)
  {
    v0 = type metadata accessor for FormatFeedConfigValue(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6190], MEMORY[0x1E69E6160]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC88C458);
    }
  }
}

double FormatFeedConfig.init(from:)@<D0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v35 = a2;
  sub_1D680AD60(0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D680AE08(0);
  v9 = v8;
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D680AEB0(0, &qword_1EC88C498, MEMORY[0x1E69E6F48]);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v30 - v17;
  v19 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1D680A430();
  v20 = v36;
  sub_1D7264B0C();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  else
  {
    v36 = v15;
    v31 = v7;
    v22 = v35;
    v41 = 0;
    if (sub_1D726434C())
    {
      v38 = 0;
      sub_1D680A690(&qword_1EC88C4A8, sub_1D680AE08, MEMORY[0x1E69D64C8]);
      v23 = v9;
      sub_1D726431C();
      v24 = sub_1D725A74C();
      (*(v32 + 8))(v12, v23);
    }

    else
    {
      v24 = 0;
    }

    v40 = 1;
    v25 = sub_1D726434C();
    v26 = v34;
    if (v25)
    {
      v39 = 1;
      sub_1D680A690(&qword_1EC88C4A0, sub_1D680AD60, MEMORY[0x1E69D64C8]);
      v27 = v31;
      v28 = v33;
      sub_1D726431C();
      v29 = sub_1D725A74C();
      (*(v26 + 8))(v27, v28);
      (*(v36 + 8))(v18, v14);
    }

    else
    {
      (*(v36 + 8))(v18, v14);
      v29 = 0;
    }

    *v22 = v24;
    v22[1] = v29;

    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

void sub_1D680AD60(uint64_t a1)
{
  if (!qword_1EC88C478)
  {
    sub_1D680A5C4(255);
    sub_1D680A690(&qword_1EC88C480, sub_1D680A5C4, &protocol conformance descriptor for FormatFeedConfigValue<A>);
    sub_1D680A790();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88C478);
    }
  }
}

void sub_1D680AE08(uint64_t a1)
{
  if (!qword_1EC88C488)
  {
    sub_1D680A82C();
    sub_1D680A690(&qword_1EC88C490, sub_1D680A82C, &protocol conformance descriptor for FormatFeedConfigValue<A>);
    sub_1D680A8D4();
    v1 = sub_1D725AAEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88C488);
    }
  }
}

void sub_1D680AEB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D680A430();
    v7 = a3(a1, &type metadata for FormatFeedConfig.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D680AF2C(void *a1)
{
  sub_1D680AEB0(0, &qword_1EC88C400, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v12 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D680A430();
  sub_1D7264B5C();
  if (!v10 || (v14 = 0, v13 = v10, sub_1D680A484(), sub_1D680A7C4(0), sub_1D680A720(&qword_1EC88C460, sub_1D680A7C4, sub_1D680A88C, MEMORY[0x1E69E7C70]), sub_1D72647EC(), !v2))
  {
    if (v12)
    {
      v14 = 1;
      v13 = v12;
      sub_1D680A484();
      sub_1D680A4F8(0);
      sub_1D680A720(&qword_1EC88C430, sub_1D680A4F8, sub_1D680A6D8, MEMORY[0x1E69E7C70]);
      sub_1D72647EC();
    }
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D680B190(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

unint64_t sub_1D680B210()
{
  result = qword_1EC88C4B0;
  if (!qword_1EC88C4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4B0);
  }

  return result;
}

unint64_t sub_1D680B268()
{
  result = qword_1EC88C4B8;
  if (!qword_1EC88C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4B8);
  }

  return result;
}

unint64_t sub_1D680B2C0()
{
  result = qword_1EC88C4C0;
  if (!qword_1EC88C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4C0);
  }

  return result;
}

uint64_t Array<A>.bind(binder:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a1;
  v21 = a2;
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1D726279C();
  if (result)
  {
    v13 = 0;
    v19 = (v9 + 16);
    v17 = v10;
    v18 = a5 + 8;
    while (1)
    {
      v14 = sub_1D726277C();
      sub_1D726271C();
      if (v14)
      {
        result = (*(v9 + 16))(v11, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v13, a4);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_1D7263DBC();
        if (v17 != 8)
        {
          __break(1u);
          return result;
        }

        v22 = result;
        (*v19)(v11, &v22, a4);
        result = swift_unknownObjectRelease();
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_11:
          __break(1u);
          return result;
        }
      }

      (*(a5 + 8))(v20, v21, a4, a5);
      result = (*(v9 + 8))(v11, a4);
      if (!v5)
      {
        result = sub_1D726279C();
        ++v13;
        if (v15 != result)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t Dictionary.bind(binder:context:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v70 = a1;
  v65 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v69 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = v62 - v12;
  MEMORY[0x1EEE9AC00](v14, v15);
  v79 = v62 - v16;
  v64 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v18, v19);
  v72 = v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = v62 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = sub_1D726393C();
  v26 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v27);
  v67 = v62 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = v62 - v31;
  v91 = v5;
  v66 = v24;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v33 = sub_1D7263FEC();
    v34 = 0;
    v35 = 0;
    v82 = 0;
    v78 = v33 | 0x8000000000000000;
  }

  else
  {
    v36 = -1 << *(a3 + 32);
    v35 = ~v36;
    v34 = a3 + 64;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v82 = v38 & *(a3 + 64);
    v78 = a3;
  }

  v85 = (v64 + 32);
  v84 = (v65 + 32);
  v75 = TupleTypeMetadata2 - 8;
  v62[1] = v35;
  v39 = (v35 + 64) >> 6;
  v62[2] = v64 + 16;
  v81 = (v65 + 16);
  v73 = (v65 + 8);
  v74 = (v26 + 32);

  v41 = 0;
  v68 = a4;
  v83 = v13;
  v42 = v79;
  v43 = v67;
  v77 = v34;
  v63 = v32;
  v44 = v82;
  while (1)
  {
    v82 = v44;
    v80 = v41;
    if ((v78 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1D726401C())
    {
      sub_1D726468C();
      v42 = v79;
      swift_unknownObjectRelease();
      sub_1D726468C();
      swift_unknownObjectRelease();
      v46 = v80;
      v87 = v82;
LABEL_22:
      v52 = *(TupleTypeMetadata2 + 48);
      v43 = v67;
      (*v85)();
      (*v84)(&v43[v52], v42, a5);
      v53 = 0;
      v86 = v46;
      v13 = v83;
      goto LABEL_23;
    }

    v53 = 1;
    v86 = v80;
    v87 = v82;
LABEL_23:
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v43, v53, 1, TupleTypeMetadata2);
    (*v74)(v32, v43, v76);
    if ((*(v54 + 48))(v32, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1D5B87E38(v78);
    }

    (*v84)(v13, &v32[*(TupleTypeMetadata2 + 48)], a5);
    (*v85)(v72, v32, a4);
    sub_1D680BDA0();
    if (swift_dynamicCast())
    {
      v55 = *(&v89 + 1);
      v56 = v90;
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v57 = v91;
      (*(v56 + 8))(v70, v71, v55, v56);
      v91 = v57;
      if (v57)
      {
        (*v73)(v83, a5);
LABEL_35:
        sub_1D5B87E38(v78);
        return __swift_destroy_boxed_opaque_existential_1(&v88);
      }

      __swift_destroy_boxed_opaque_existential_1(&v88);
      a4 = v68;
      v13 = v83;
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      sub_1D680BE04(&v88);
    }

    (*v81)(v69, v13, a5);
    if (swift_dynamicCast())
    {
      v58 = *(&v89 + 1);
      v59 = v90;
      __swift_project_boxed_opaque_existential_1(&v88, *(&v89 + 1));
      v60 = v91;
      v61 = v58;
      v13 = v83;
      (*(v59 + 8))(v70, v71, v61, v59);
      (*v73)(v13, a5);
      v91 = v60;
      v42 = v79;
      if (v60)
      {
        goto LABEL_35;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v88);
      v41 = v86;
      v44 = v87;
      a4 = v68;
      v34 = v77;
    }

    else
    {
      (*v73)(v13, a5);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      result = sub_1D680BE04(&v88);
      v41 = v86;
      v44 = v87;
      v42 = v79;
      v34 = v77;
    }
  }

  if (v44)
  {
    v45 = v44;
    v46 = v41;
LABEL_21:
    v87 = (v45 - 1) & v45;
    v50 = __clz(__rbit64(v45)) | (v46 << 6);
    v51 = v78;
    (*(v64 + 16))(v66, *(v78 + 48) + *(v64 + 72) * v50, a4);
    (*(v65 + 16))(v42, *(v51 + 56) + *(v65 + 72) * v50, a5);
    v32 = v63;
    goto LABEL_22;
  }

  if (v39 <= v41 + 1)
  {
    v47 = v41 + 1;
  }

  else
  {
    v47 = v39;
  }

  v48 = v47 - 1;
  v49 = v41;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v39)
    {
      v86 = v48;
      v87 = 0;
      v53 = 1;
      goto LABEL_23;
    }

    v45 = *(v34 + 8 * v46);
    ++v49;
    if (v45)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D680BDA0()
{
  result = qword_1EDF329A8;
  if (!qword_1EDF329A8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF329A8);
  }

  return result;
}

uint64_t sub_1D680BE04(uint64_t a1)
{
  sub_1D680BE60(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D680BE60(uint64_t a1)
{
  if (!qword_1EDF329A0)
  {
    sub_1D680BDA0();
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF329A0);
    }
  }
}

BOOL static FormatCodingMetadataStrategy.shouldEncode(wrappedValue:)(void *a1)
{
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FormatCodingMetadataStrategy.defaultValue.getter(v5);
  LOBYTE(a1) = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(a1, v5);
  sub_1D5BFC6D4(v5, type metadata accessor for FormatMetadata);
  return (a1 & 1) == 0;
}

BOOL sub_1D680BF88(void *a1)
{
  v2 = type metadata accessor for FormatMetadata(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static FormatCodingMetadataStrategy.defaultValue.getter(v5);
  LOBYTE(a1) = _s8NewsFeed14FormatMetadataV2eeoiySbAC_ACtFZ_0(a1, v5);
  sub_1D5BFC6D4(v5, type metadata accessor for FormatMetadata);
  return (a1 & 1) == 0;
}

unint64_t sub_1D680C02C(uint64_t a1)
{
  result = sub_1D5B5C758();
  *(a1 + 8) = result;
  return result;
}

uint64_t FormatLayoutContext.annotator.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t FormatLayoutContext.itemIdentifier.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t FormatLayoutContext.copy(itemFrame:sectionFrame:)@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 40);
  *a1 = *v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = *(v9 + 24);
  *(a1 + 40) = v12;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8;
  *(a1 + 104) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
}

Swift::String __swiftcall FormatLayoutContext.sourceIdentifier(layoutIdentifier:)(Swift::String layoutIdentifier)
{
  object = layoutIdentifier._object;
  countAndFlagsBits = layoutIdentifier._countAndFlagsBits;
  if (*(v1 + 120))
  {
    v7 = *(v1 + 112);
    v8 = *(v1 + 120);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](countAndFlagsBits, object);
    countAndFlagsBits = v7;
    object = v8;
  }

  else
  {
  }

  v4 = countAndFlagsBits;
  v5 = object;
  result._object = v5;
  result._countAndFlagsBits = v4;
  return result;
}

uint64_t sub_1D680C220@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
  *(a1 + 24) = v2;
}

uint64_t sub_1D680C288()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t sub_1D680C2B8@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>, double a9@<D7>)
{
  v10 = *(v9 + 8);
  v11 = *(v9 + 16);
  v12 = *(v9 + 40);
  *a1 = *v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = *(v9 + 24);
  *(a1 + 40) = v12;
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  *(a1 + 80) = a6;
  *(a1 + 88) = a7;
  *(a1 + 96) = a8;
  *(a1 + 104) = a9;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
}

uint64_t sub_1D680C33C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 120))
  {
    v6 = *(v2 + 112);

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](a1, a2);
    return v6;
  }

  else
  {
  }

  return a1;
}

uint64_t sub_1D680C45C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1D680C4A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WebEmbedDataVisualizationDataServiceFailure.deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_createdDate, v2);
  v4 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request;
  v5 = sub_1D72577EC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t WebEmbedDataVisualizationDataServiceFailure.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_fetchDate;
  v2 = sub_1D725891C();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_createdDate, v2);
  v4 = OBJC_IVAR____TtC8NewsFeed43WebEmbedDataVisualizationDataServiceFailure_request;
  v5 = sub_1D72577EC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of LatestPuzzleProviderType.fetchLatestPuzzles(for:minPuzzles:maxPuzzles:limitedToSamePublishDate:limitedToToday:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 8) + **(a8 + 8));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D5E97EA8;

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1D680C890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  *(v7 + 40) = a4;
  *(v7 + 48) = v6;
  *(v7 + 209) = a6;
  *(v7 + 208) = a5;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 16) = a1;
  v8 = sub_1D7258C2C();
  *(v7 + 56) = v8;
  *(v7 + 64) = *(v8 - 8);
  *(v7 + 72) = swift_task_alloc();
  sub_1D5B5B2A0(0);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  v9 = sub_1D725891C();
  *(v7 + 96) = v9;
  *(v7 + 104) = *(v9 - 8);
  *(v7 + 112) = swift_task_alloc();
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D680CA00, 0, 0);
}

uint64_t sub_1D680CA00()
{
  v1 = v0[6];
  v3 = v0[2];
  v2 = v0[3];
  v4 = [objc_opt_self() cachePolicyWithSoftMaxAge_];
  v0[16] = v4;
  v5 = v1[5];
  v6 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v5);
  sub_1D5C3C480();
  v7 = swift_allocObject();
  v0[17] = v7;
  *(v7 + 16) = xmmword_1D7273AE0;
  *(v7 + 32) = v3;
  *(v7 + 40) = v2;
  v8 = *(v6 + 128);

  v9 = v4;
  v12 = (v8 + *v8);
  v10 = swift_task_alloc();
  v0[18] = v10;
  *v10 = v0;
  v10[1] = sub_1D680CBB8;

  return v12(v7, v4, 25, v5, v6);
}

uint64_t sub_1D680CBB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_1D680DC58;
  }

  else
  {

    v4 = sub_1D680CCDC;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D680CCDC()
{
  v50 = v0;
  v2 = v0[19];
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (!sub_1D7263BFC())
  {
    goto LABEL_31;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1DA6FB460](0, v0[19]);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_38;
    }

    v3 = *(v0[19] + 32);
    swift_unknownObjectRetain();
  }

  v4 = [v3 latestPuzzleIDs];
  swift_unknownObjectRelease();
  if (!v4)
  {
LABEL_32:
    v15 = v0[16];
    sub_1D680E84C();
    swift_allocError();
    *v45 = 0;
    *(v45 + 8) = 0;
    *(v45 + 16) = 1;
LABEL_33:
    swift_willThrow();

    v46 = v0[1];

    return v46();
  }

  v5 = v0[4];
  v6 = sub_1D726267C();

  v1 = *(v6 + 16);
  if (v1 < v5)
  {

    if (qword_1EDF3B838 == -1)
    {
LABEL_9:
      v7 = sub_1D725C42C();
      __swift_project_value_buffer(v7, qword_1EDFFCFA8);

      v8 = sub_1D725C3FC();
      v9 = sub_1D7262EBC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[3];
        v11 = v0[4];
        v12 = v0[2];
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v49[0] = v14;
        *v13 = 134218242;
        *(v13 + 4) = v11;
        *(v13 + 12) = 2080;
        *(v13 + 14) = sub_1D5BC5100(v12, v10, v49);
        _os_log_impl(&dword_1D5B42000, v8, v9, "Failed to meet minimum item requirement of %ld for Puzzle Type %s", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1DA6FD500](v14, -1, -1);
        MEMORY[0x1DA6FD500](v13, -1, -1);
      }

      v15 = v0[16];
      v16 = v0[4];
      sub_1D680E84C();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = v1;
      *(v17 + 16) = 0;
      goto LABEL_33;
    }

LABEL_38:
    swift_once();
    goto LABEL_9;
  }

  v18 = sub_1D691601C();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ((v23 & 1) == 0)
  {

LABEL_14:
    sub_1D5EC3274(v18, v20, v22, v24);
    v26 = v25;
LABEL_21:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  sub_1D72647AC();
  swift_unknownObjectRetain_n();

  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v24 >> 1, v22))
  {
    __break(1u);
    goto LABEL_40;
  }

  if (v28 != (v24 >> 1) - v22)
  {
LABEL_40:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v26 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v26)
  {
    v26 = MEMORY[0x1E69E7CC0];
    goto LABEL_21;
  }

LABEL_22:
  v0[21] = v26;
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v29 = sub_1D725C42C();
  v0[22] = __swift_project_value_buffer(v29, qword_1EDFFCFA8);

  v30 = sub_1D725C3FC();
  v31 = sub_1D7262EDC();

  if (os_log_type_enabled(v30, v31))
  {
    v47 = v0[5];
    v33 = v0[2];
    v32 = v0[3];
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v49[0] = v35;
    *v34 = 134218754;
    *(v34 + 4) = *(v26 + 16);

    *(v34 + 12) = 2080;
    *(v34 + 14) = sub_1D5BC5100(v33, v32, v49);
    *(v34 + 22) = 2080;
    v36 = MEMORY[0x1DA6F9D20](v6, MEMORY[0x1E69E6158]);
    v38 = v37;

    v39 = sub_1D5BC5100(v36, v38, v49);

    *(v34 + 24) = v39;
    *(v34 + 32) = 2048;
    *(v34 + 34) = v47;
    _os_log_impl(&dword_1D5B42000, v30, v31, "%ld Puzzle IDs available to be fetched for Puzzle Type %s: %s - Max Number of Puzzles: %ld", v34, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v35, -1, -1);
    MEMORY[0x1DA6FD500](v34, -1, -1);
  }

  else
  {
  }

  v40 = v0[6];
  v41 = v40[5];
  v42 = v40[6];
  __swift_project_boxed_opaque_existential_1(v40 + 2, v41);
  v48 = (*(v42 + 56) + **(v42 + 56));
  v43 = swift_task_alloc();
  v0[23] = v43;
  *v43 = v0;
  v43[1] = sub_1D680D3A4;

  return v48(v26, 1, v41, v42);
}

uint64_t sub_1D680D3A4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1D680DD08;
  }

  else
  {

    v4 = sub_1D680D4C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

void sub_1D680D4C0()
{
  v64 = v0;
  v1 = v0;
  v58 = v0;
  if (NFInternalBuild())
  {
    v2 = v0[24];
    if (v2 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
    {
      v4 = 0;
      v59 = v2 & 0xFFFFFFFFFFFFFF8;
      v61 = v2 & 0xC000000000000001;
      v2 = v1[24] + 32;
      v5 = MEMORY[0x1E69E7CC0];
      while (v61)
      {
        v6 = MEMORY[0x1DA6FB460](v4, v58[24]);
        v7 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }

LABEL_8:
        v1 = i;
        v8 = [v6 identifier];
        v9 = sub_1D726207C();
        v11 = v10;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D5B858EC(0, *(v5 + 2) + 1, 1, v5);
        }

        v13 = *(v5 + 2);
        v12 = *(v5 + 3);
        if (v13 >= v12 >> 1)
        {
          v5 = sub_1D5B858EC((v12 > 1), v13 + 1, 1, v5);
        }

        *(v5 + 2) = v13 + 1;
        v14 = &v5[16 * v13];
        *(v14 + 4) = v9;
        *(v14 + 5) = v11;
        swift_unknownObjectRelease();
        ++v4;
        i = v1;
        if (v7 == v1)
        {
          goto LABEL_20;
        }
      }

      if (v4 >= *(v59 + 16))
      {
        goto LABEL_17;
      }

      v6 = *(v2 + 8 * v4);
      swift_unknownObjectRetain();
      v7 = (v4 + 1);
      if (!__OFADD__(v4, 1))
      {
        goto LABEL_8;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

    v5 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v1 = v58;

    v15 = sub_1D725C3FC();
    v16 = sub_1D7262EDC();

    if (os_log_type_enabled(v15, v16))
    {
      v18 = v58[2];
      v17 = v58[3];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v63[0] = v20;
      *v19 = 134218498;
      *(v19 + 4) = *(v5 + 2);
      *(v19 + 12) = 2080;
      *(v19 + 14) = sub_1D5BC5100(v18, v17, v63);
      *(v19 + 22) = 2080;

      v22 = MEMORY[0x1DA6F9D20](v21, MEMORY[0x1E69E6158]);
      v24 = v23;

      v25 = sub_1D5BC5100(v22, v24, v63);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_1D5B42000, v15, v16, "Successfully Fetched %ld Puzzles for Puzzle Type %s: %s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v20, -1, -1);
      MEMORY[0x1DA6FD500](v19, -1, -1);
    }
  }

  v26 = v1[25];
  v27 = v1[6];

  v63[0] = sub_1D680E950(v28, sub_1D5C38490, sub_1D609A6F4);
  sub_1D6810058(v63, v27);
  if (v26)
  {

    return;
  }

  v29 = *(v1 + 208);

  v30 = v63[0];
  if (v29)
  {
    if (v63[0] < 0 || (v63[0] & 0x4000000000000000) != 0)
    {
      if (sub_1D7263BFC())
      {
LABEL_31:
        if ((v30 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x1DA6FB460](0, v30);
        }

        else
        {
          if (!*(v30 + 16))
          {
            __break(1u);
            return;
          }

          v31 = *(v30 + 32);
          swift_unknownObjectRetain();
        }

        v32 = [v31 publishDate];
        swift_unknownObjectRelease();
        if (v32)
        {
          sub_1D72588BC();

          v33 = 0;
        }

        else
        {
          v33 = 1;
        }

        v35 = v1[12];
        v34 = v1[13];
        v37 = v1[10];
        v36 = v1[11];
        (*(v34 + 56))(v37, v33, 1, v35);
        sub_1D5DF42F8(v37, v36);
        if ((*(v34 + 48))(v36, 1, v35) != 1)
        {
          v38 = v1[15];
          v39 = v1[12];
          v40 = v1[13];
          v41 = v1[6];
          (*(v40 + 32))(v38, v1[11], v39);
          v42 = swift_task_alloc();
          v42[2] = v38;
          v42[3] = v41;
          v30 = sub_1D62ECB1C(sub_1D6810104, v42, v30);

          (*(v40 + 8))(v38, v39);
          goto LABEL_42;
        }

        goto LABEL_41;
      }
    }

    else if (*(v63[0] + 16))
    {
      goto LABEL_31;
    }

    (*(v1[13] + 56))(v1[11], 1, 1, v1[12]);
LABEL_41:
    _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v1[11]);
  }

LABEL_42:
  if (*(v1 + 209) == 1)
  {
    v63[0] = MEMORY[0x1E69E7CC0];
    if (v30 >> 62)
    {
      goto LABEL_62;
    }

    for (j = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_1D7263BFC())
    {
      v44 = 0;
      v60 = v30 & 0xFFFFFFFFFFFFFF8;
      v62 = v30 & 0xC000000000000001;
      v56 = (v1[13] + 8);
      v57 = (v1[8] + 8);
      while (1)
      {
        if (v62)
        {
          v45 = MEMORY[0x1DA6FB460](v44, v30);
          v46 = v44 + 1;
          if (__OFADD__(v44, 1))
          {
LABEL_58:
            __break(1u);
            goto LABEL_59;
          }

          goto LABEL_51;
        }

        if (v44 >= *(v60 + 16))
        {
          break;
        }

        v45 = *(v30 + 8 * v44 + 32);
        swift_unknownObjectRetain();
        v46 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          goto LABEL_58;
        }

LABEL_51:
        v47 = [v45 publishDate];
        if (v47)
        {
          v48 = v30;
          v49 = v1[14];
          v50 = v1[12];
          v51 = v1[9];
          v52 = v1[7];
          v53 = v47;
          sub_1D72588BC();

          sub_1D7258BCC();
          LOBYTE(v53) = sub_1D7258AFC();
          (*v57)(v51, v52);
          (*v56)(v49, v50);
          if (v53)
          {
            sub_1D7263E9C();
            sub_1D7263EDC();
            sub_1D7263EEC();
            sub_1D7263EAC();
          }

          else
          {
            swift_unknownObjectRelease();
          }

          v1 = v58;
          v30 = v48;
        }

        else
        {
          swift_unknownObjectRelease();
        }

        ++v44;
        if (v46 == j)
        {
          v54 = v63[0];
          goto LABEL_64;
        }
      }

      __break(1u);
LABEL_62:
      ;
    }

    v54 = MEMORY[0x1E69E7CC0];
LABEL_64:

    v30 = v54;
  }

  else
  {
LABEL_59:
  }

  v55 = v1[1];

  v55(v30);
}

uint64_t sub_1D680DC58()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D680DD08()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D680DDB4(void **a1, id *a2, uint64_t a3)
{
  v44 = a3;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v42 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v40 - v10;
  v12 = sub_1D725891C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v43 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v40 - v18;
  *&v22 = MEMORY[0x1EEE9AC00](v20, v21).n128_u64[0];
  v24 = &v40 - v23;
  v25 = *a1;
  v45 = *a2;
  v41 = v25;
  v26 = [v25 publishDate];
  if (v26)
  {
    v27 = v26;
    sub_1D72588BC();

    v28 = *(v13 + 32);
    v28(v11, v19, v12);
    v29 = *(v13 + 56);
    v29(v11, 0, 1, v12);
    v28(v24, v11, v12);
  }

  else
  {
    v29 = *(v13 + 56);
    v29(v11, 1, 1, v12);
    sub_1D725890C();
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v11);
    }
  }

  v30 = [v45 publishDate];
  if (v30)
  {
    v31 = v30;
    sub_1D72588BC();

    v32 = *(v13 + 32);
    v33 = v42;
    v32(v42, v19, v12);
    v29(v33, 0, 1, v12);
    v34 = v43;
    v32(v43, v33, v12);
  }

  else
  {
    v35 = v42;
    v29(v42, 1, 1, v12);
    v34 = v43;
    sub_1D725890C();
    if ((*(v13 + 48))(v35, 1, v12) != 1)
    {
      _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v35);
    }
  }

  if (sub_1D72588EC())
  {
    v36 = [v41 difficulty];
    v37 = v36 < [v45 difficulty];
  }

  else
  {
    v37 = sub_1D725882C();
  }

  v38 = *(v13 + 8);
  v38(v34, v12);
  v38(v24, v12);
  return v37 & 1;
}

uint64_t sub_1D680E198(id *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D725891C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v9, v10).n128_u64[0];
  v13 = &v18 - v12;
  v14 = [*a1 publishDate];
  if (v14)
  {
    v15 = v14;
    sub_1D72588BC();

    (*(v5 + 32))(v13, v8, v4);
    v16 = sub_1D72588EC();
    (*(v5 + 8))(v13, v4);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_1D680E308()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
  v2 = sub_1D7258CFC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D680E3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1D5BAF844;

  return sub_1D680C890(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1D680E48C(id *__dst, id *a2, void **a3, unint64_t a4, uint64_t a5)
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_54;
    }

    v17 = v14;
    while (1)
    {
      v48 = *v17;
      v47 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = sub_1D680DDB4(&v48, &v47, a5);
      if (v5)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v35 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v35 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v35 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v36 = 8 * (v35 >> 3);
          v37 = v7;
          goto LABEL_60;
        }

        goto LABEL_62;
      }

      v19 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      v21 = v7 == v17++;
      if (!v21)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v20 = v15;
    v21 = v7 == v15++;
    if (v21)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v20;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v22 = a2;
    v23 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v23;
    a2 = v22;
  }

  v45 = a4;
  v16 = (a4 + 8 * v13);
  if (v11 < 8 || a2 <= v7)
  {
    v15 = a4;
    goto LABEL_54;
  }

  v24 = -a4;
  v43 = -a4;
LABEL_28:
  v44 = a2;
  v25 = a2 - 1;
  v26 = v16 + v24;
  --v6;
  v27 = v16;
  v28 = v16;
  while (1)
  {
    v29 = *--v28;
    v48 = v29;
    v30 = v25;
    v47 = *v25;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v31 = sub_1D680DDB4(&v48, &v47, a5);
    if (v5)
    {
      break;
    }

    v32 = v31;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v33 = v6 + 1;
    if (v32)
    {
      v34 = v30;
      if (v33 != v44)
      {
        *v6 = *v30;
      }

      v15 = v45;
      v16 = v27;
      if (v27 <= v45 || (a2 = v34, v24 = v43, v34 <= v7))
      {
        a2 = v34;
        goto LABEL_54;
      }

      goto LABEL_28;
    }

    if (v33 != v27)
    {
      *v6 = *v28;
    }

    v26 -= 8;
    --v6;
    v27 = v28;
    v25 = v30;
    if (v28 <= v45)
    {
      v16 = v28;
      a2 = v44;
      v15 = v45;
LABEL_54:
      v41 = v16 - v15 + 7;
      if (v16 - v15 >= 0)
      {
        v41 = v16 - v15;
      }

      if (a2 >= v15 && a2 < (v15 + (v41 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
      {
        goto LABEL_62;
      }

      v36 = 8 * (v41 >> 3);
      v37 = a2;
LABEL_60:
      v40 = v15;
LABEL_61:
      memmove(v37, v40, v36);
      goto LABEL_62;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v26 >= 0)
  {
    v38 = v26;
  }

  else
  {
    v38 = v26 + 7;
  }

  v39 = v38 >> 3;
  v37 = v44;
  v40 = v45;
  if (v44 < v45 || v44 >= (v45 + (v38 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v44, v45, 8 * v39);
    goto LABEL_62;
  }

  if (v44 != v45)
  {
    v36 = 8 * v39;
    goto LABEL_61;
  }

LABEL_62:

  return 1;
}

unint64_t sub_1D680E84C()
{
  result = qword_1EC88C4D0;
  if (!qword_1EC88C4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C4D0);
  }

  return result;
}

unint64_t sub_1D680E950(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_1D7263BFC();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void sub_1D680E9F4(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v206 = a5;
  v186 = a1;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v205 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v201 = &v184 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v191 = &v184 - v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v190 = &v184 - v19;
  v212 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v212, v20);
  v200 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v184 - v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  v208 = &v184 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v196 = a3;
  v36 = a3[1];
  if (v36 < 1)
  {
    swift_retain_n();
    v38 = MEMORY[0x1E69E7CC0];
LABEL_113:
    v212 = *v186;
    if (!v212)
    {
      goto LABEL_153;
    }

    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v197;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_115:
      v215 = v38;
      v175 = *(v38 + 2);
      if (v175 >= 2)
      {
        v176 = v206;
        do
        {
          v177 = *v196;
          if (!*v196)
          {
            goto LABEL_151;
          }

          v178 = *&v38[16 * v175];
          v179 = *&v38[16 * v175 + 24];
          v180 = (v177 + 8 * v178);
          v181 = (v177 + 8 * *&v38[16 * v175 + 16]);
          v182 = (v177 + 8 * v179);

          sub_1D680E48C(v180, v181, v182, v212, v176);
          if (v5)
          {
            break;
          }

          if (v179 < v178)
          {
            goto LABEL_140;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_1D62FF50C(v38);
          }

          if (v175 - 2 >= *(v38 + 2))
          {
            goto LABEL_141;
          }

          v183 = &v38[16 * v175];
          *v183 = v178;
          *(v183 + 1) = v179;
          v215 = v38;
          sub_1D62FF480(v175 - 1);
          v38 = v215;
          v175 = *(v215 + 2);
        }

        while (v175 > 1);
      }

      return;
    }

LABEL_147:
    v38 = sub_1D62FF50C(v38);
    goto LABEL_115;
  }

  v195 = &v184 - v34;
  v189 = v35;
  v185 = a4;
  v207 = (v33 + 32);
  v210 = (v33 + 56);
  v199 = (v33 + 48);
  v203 = (v33 + 8);
  v204 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
  swift_retain_n();
  v37 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  v209 = v25;
  while (1)
  {
    v39 = v37;
    v40 = v37 + 1;
    v192 = v38;
    v187 = v37;
    if (v37 + 1 >= v36)
    {
      goto LABEL_31;
    }

    v41 = *v196;
    v42 = *(*v196 + 8 * v40);
    v213 = *(*v196 + 8 * v37);
    v214 = v42;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v43 = v197;
    LODWORD(v202) = sub_1D680DDB4(&v214, &v213, v206);
    v197 = v43;
    if (v43)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v40 = v37 + 2;
    v39 = v37;
    if (v37 + 2 >= v36)
    {
      v38 = v192;
      if ((v202 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_24:
      if (v40 >= v39)
      {
        if (v39 < v40)
        {
          v77 = v40;
          v78 = 8 * v40 - 8;
          v79 = 8 * v39;
          v80 = v39;
          do
          {
            if (v80 != --v77)
            {
              v81 = *v196;
              if (!*v196)
              {
                goto LABEL_150;
              }

              v82 = *(v81 + v79);
              *(v81 + v79) = *(v81 + v78);
              *(v81 + v78) = v82;
            }

            ++v80;
            v78 -= 8;
            v79 += 8;
          }

          while (v80 < v77);
        }

        goto LABEL_31;
      }

LABEL_146:
      __break(1u);
      goto LABEL_147;
    }

    v198 = v37 + 2;
    v44 = (v41 + 8 * v37 + 16);
    v194 = v36;
    while (1)
    {
      v50 = *(v44 - 1);
      v51 = *v44;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v52 = [v51 publishDate];
      if (v52)
      {
        v53 = v208;
        v54 = v52;
        sub_1D72588BC();

        v55 = *v207;
        v56 = v190;
        v57 = v212;
        (*v207)(v190, v53, v212);
        v58 = *v210;
        (*v210)(v56, 0, 1, v57);
        v55(v195, v56, v57);
      }

      else
      {
        v58 = *v210;
        v59 = v190;
        v60 = v212;
        (*v210)(v190, 1, 1, v212);
        sub_1D725890C();
        if ((*v199)(v59, 1, v60) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v59);
        }
      }

      v61 = [v50 publishDate];
      v211 = v51;
      if (v61)
      {
        v62 = v208;
        v63 = v61;
        sub_1D72588BC();

        v64 = *v207;
        v65 = v191;
        v66 = v62;
        v67 = v50;
        v68 = v212;
        (*v207)(v191, v66, v212);
        v58(v65, 0, 1, v68);
        v69 = v189;
        v70 = v68;
        v50 = v67;
        v64(v189, v65, v70);
      }

      else
      {
        v71 = v191;
        v72 = v212;
        v58(v191, 1, 1, v212);
        v69 = v189;
        sub_1D725890C();
        if ((*v199)(v71, 1, v72) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v191);
        }
      }

      v5 = v195;
      if ((sub_1D72588EC() & 1) == 0)
      {
        break;
      }

      v193 = [v211 difficulty];
      v45 = [v50 difficulty];
      v46 = v69;
      v47 = v45;
      v48 = *v203;
      v49 = v212;
      (*v203)(v46, v212);
      v48(v5, v49);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (((v202 ^ (v193 >= v47)) & 1) == 0)
      {
        goto LABEL_20;
      }

LABEL_9:
      ++v44;
      ++v198;
      v40 = v194;
      v38 = v192;
      if (v194 == v198)
      {
        goto LABEL_21;
      }
    }

    v73 = sub_1D725882C();
    v74 = v69;
    v75 = *v203;
    v76 = v212;
    (*v203)(v74, v212);
    v75(v5, v76);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (((v202 ^ v73) & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_20:
    v38 = v192;
    v40 = v198;
LABEL_21:
    v39 = v187;
    if (v202)
    {
      goto LABEL_24;
    }

LABEL_31:
    v83 = v196[1];
    v84 = v40;
    if (v40 >= v83)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v40, v39))
    {
      goto LABEL_143;
    }

    if (v40 - v39 >= v185)
    {
LABEL_39:
      v84 = v40;
LABEL_40:
      if (v84 < v39)
      {
        goto LABEL_142;
      }

      goto LABEL_41;
    }

    v85 = v39 + v185;
    if (__OFADD__(v39, v185))
    {
      goto LABEL_144;
    }

    if (v85 >= v83)
    {
      v85 = v196[1];
    }

    if (v85 < v39)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    if (v40 == v85)
    {
      goto LABEL_39;
    }

    v202 = *v196;
    v140 = v202 + 8 * v40 - 8;
    v141 = (v39 - v40);
    v188 = v85;
LABEL_92:
    v198 = v40;
    v142 = *(v202 + 8 * v40);
    v193 = v141;
    v194 = v140;
LABEL_93:
    v143 = *v140;
    swift_unknownObjectRetain();
    v211 = v143;
    swift_unknownObjectRetain();
    v144 = [v142 publishDate];
    if (v144)
    {
      v145 = v208;
      v146 = v144;
      sub_1D72588BC();

      v147 = *v207;
      v5 = v201;
      v148 = v212;
      (*v207)(v201, v145, v212);
      v149 = *v210;
      (*v210)(v5, 0, 1, v148);
      v147(v25, v5, v148);
    }

    else
    {
      v149 = *v210;
      v150 = v201;
      v151 = v212;
      (*v210)(v201, 1, 1, v212);
      sub_1D725890C();
      if ((*v199)(v150, 1, v151) != 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v150);
      }
    }

    v152 = [v211 publishDate];
    if (v152)
    {
      v153 = v208;
      v154 = v152;
      sub_1D72588BC();

      v155 = *v207;
      v5 = v205;
      v156 = v212;
      (*v207)(v205, v153, v212);
      v149(v5, 0, 1, v156);
      v157 = v200;
      v155(v200, v5, v156);
    }

    else
    {
      v158 = v205;
      v159 = v212;
      v149(v205, 1, 1, v212);
      v157 = v200;
      sub_1D725890C();
      if ((*v199)(v158, 1, v159) != 1)
      {
        _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v205);
      }
    }

    v25 = v209;
    if (sub_1D72588EC())
    {
      v160 = [v142 difficulty];
      v5 = v211;
      v161 = [v211 difficulty];
      v162 = v157;
      v163 = v161;
      v164 = *v203;
      v165 = v212;
      (*v203)(v162, v212);
      v164(v209, v165);
      v25 = v209;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v160 >= v163)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v166 = sub_1D725882C();
      v167 = v157;
      v168 = v166;
      v169 = *v203;
      v170 = v212;
      (*v203)(v167, v212);
      v169(v25, v170);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v168 & 1) == 0)
      {
        goto LABEL_91;
      }
    }

    if (!v202)
    {
      break;
    }

    v171 = *v140;
    v142 = *(v140 + 8);
    *v140 = v142;
    *(v140 + 8) = v171;
    v140 -= 8;
    if (!__CFADD__(v141++, 1))
    {
      goto LABEL_93;
    }

LABEL_91:
    v40 = v198 + 1;
    v140 = v194 + 8;
    v141 = v193 - 1;
    if (v198 + 1 != v188)
    {
      goto LABEL_92;
    }

    v84 = v188;
    v38 = v192;
    if (v188 < v187)
    {
      goto LABEL_142;
    }

LABEL_41:
    v198 = v84;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1D698BA94(0, *(v38 + 2) + 1, 1, v38);
    }

    v87 = *(v38 + 2);
    v86 = *(v38 + 3);
    v88 = v87 + 1;
    v89 = v187;
    if (v87 >= v86 >> 1)
    {
      v173 = sub_1D698BA94((v86 > 1), v87 + 1, 1, v38);
      v89 = v187;
      v38 = v173;
    }

    *(v38 + 2) = v88;
    v90 = &v38[16 * v87];
    *(v90 + 4) = v89;
    *(v90 + 5) = v198;
    if (!*v186)
    {
      goto LABEL_152;
    }

    v91 = *v186;
    if (v87)
    {
      while (2)
      {
        v92 = v88 - 1;
        if (v88 >= 4)
        {
          v97 = &v38[16 * v88 + 32];
          v98 = *(v97 - 64);
          v99 = *(v97 - 56);
          v103 = __OFSUB__(v99, v98);
          v100 = v99 - v98;
          if (v103)
          {
            goto LABEL_129;
          }

          v102 = *(v97 - 48);
          v101 = *(v97 - 40);
          v103 = __OFSUB__(v101, v102);
          v95 = v101 - v102;
          v96 = v103;
          if (v103)
          {
            goto LABEL_130;
          }

          v104 = &v38[16 * v88];
          v106 = *v104;
          v105 = *(v104 + 1);
          v103 = __OFSUB__(v105, v106);
          v107 = v105 - v106;
          if (v103)
          {
            goto LABEL_132;
          }

          v103 = __OFADD__(v95, v107);
          v108 = v95 + v107;
          if (v103)
          {
            goto LABEL_135;
          }

          if (v108 >= v100)
          {
            v126 = &v38[16 * v92 + 32];
            v128 = *v126;
            v127 = *(v126 + 1);
            v103 = __OFSUB__(v127, v128);
            v129 = v127 - v128;
            if (v103)
            {
              goto LABEL_139;
            }

            if (v95 < v129)
            {
              v92 = v88 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v96)
            {
              goto LABEL_131;
            }

            v109 = &v38[16 * v88];
            v111 = *v109;
            v110 = *(v109 + 1);
            v112 = __OFSUB__(v110, v111);
            v113 = v110 - v111;
            v114 = v112;
            if (v112)
            {
              goto LABEL_134;
            }

            v115 = &v38[16 * v92 + 32];
            v117 = *v115;
            v116 = *(v115 + 1);
            v103 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v103)
            {
              goto LABEL_137;
            }

            if (__OFADD__(v113, v118))
            {
              goto LABEL_138;
            }

            if (v113 + v118 < v95)
            {
              goto LABEL_74;
            }

            if (v95 < v118)
            {
              v92 = v88 - 2;
            }
          }
        }

        else
        {
          if (v88 == 3)
          {
            v93 = *(v38 + 4);
            v94 = *(v38 + 5);
            v103 = __OFSUB__(v94, v93);
            v95 = v94 - v93;
            v96 = v103;
            goto LABEL_60;
          }

          v119 = &v38[16 * v88];
          v121 = *v119;
          v120 = *(v119 + 1);
          v103 = __OFSUB__(v120, v121);
          v113 = v120 - v121;
          v114 = v103;
LABEL_74:
          if (v114)
          {
            goto LABEL_133;
          }

          v122 = &v38[16 * v92];
          v124 = *(v122 + 4);
          v123 = *(v122 + 5);
          v103 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v103)
          {
            goto LABEL_136;
          }

          if (v125 < v113)
          {
            break;
          }
        }

        v130 = v92 - 1;
        if (v92 - 1 >= v88)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
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
          goto LABEL_145;
        }

        v131 = *v196;
        if (!*v196)
        {
          goto LABEL_149;
        }

        v5 = v38;
        v132 = *&v38[16 * v130 + 32];
        v133 = *&v38[16 * v92 + 40];
        v134 = (v131 + 8 * v132);
        v135 = (v131 + 8 * *&v38[16 * v92 + 32]);
        v38 = (v131 + 8 * v133);
        v136 = v206;

        v137 = v134;
        v138 = v197;
        sub_1D680E48C(v137, v135, v38, v91, v136);
        v197 = v138;
        if (v138)
        {

          return;
        }

        if (v133 < v132)
        {
          goto LABEL_127;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_1D62FF50C(v5);
        }

        if (v130 >= *(v5 + 2))
        {
          goto LABEL_128;
        }

        v139 = &v5[16 * v130];
        *(v139 + 4) = v132;
        *(v139 + 5) = v133;
        v215 = v5;
        sub_1D62FF480(v92);
        v38 = v215;
        v88 = *(v215 + 2);
        v25 = v209;
        if (v88 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v36 = v196[1];
    v37 = v198;
    if (v198 >= v36)
    {
      goto LABEL_113;
    }
  }

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
}

void sub_1D680F9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v71 = a5;
  sub_1D5B5B2A0(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v73 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v61 - v14;
  v78 = sub_1D725891C();
  MEMORY[0x1EEE9AC00](v78, v16);
  v70 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v75 = &v61 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v79 = &v61 - v24;
  v62 = a2;
  if (a3 != a2)
  {
    v25 = v15;
    v26 = *a4;
    v74 = (v23 + 32);
    v76 = (v23 + 56);
    v66 = (v23 + 48);
    v67 = (v23 + 8);
    v68 = OBJC_IVAR____TtC8NewsFeed20LatestPuzzleProvider_timeZone;
    v72 = v26;
    v27 = v26 + 8 * a3 - 8;
    v28 = a1 - a3;
    v69 = v15;
LABEL_5:
    v64 = v27;
    v65 = a3;
    v29 = *(v72 + 8 * a3);
    v63 = v28;
    while (1)
    {
      v30 = *v27;
      swift_unknownObjectRetain();
      v77 = v30;
      swift_unknownObjectRetain();
      v31 = [v29 publishDate];
      if (v31)
      {
        v32 = v31;
        v33 = v75;
        sub_1D72588BC();

        v34 = *v74;
        v35 = v78;
        (*v74)(v25, v33, v78);
        v36 = *v76;
        (*v76)(v25, 0, 1, v35);
        v34(v79, v25, v35);
      }

      else
      {
        v36 = *v76;
        v37 = v78;
        (*v76)(v25, 1, 1, v78);
        sub_1D725890C();
        if ((*v66)(v25, 1, v37) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v25);
        }
      }

      v38 = [v77 publishDate];
      if (v38)
      {
        v39 = v75;
        v40 = v38;
        sub_1D72588BC();

        v41 = v73;
        v42 = *v74;
        v43 = v78;
        (*v74)(v73, v39, v78);
        v36(v41, 0, 1, v43);
        v44 = v70;
        v42(v70, v41, v43);
      }

      else
      {
        v45 = v73;
        v46 = v78;
        v36(v73, 1, 1, v78);
        v44 = v70;
        sub_1D725890C();
        if ((*v66)(v45, 1, v46) != 1)
        {
          _s8NewsFeed44SimulatedBundleSubscriptionDetectionProviderC9timestamp10Foundation4DateVSgvs_0(v73);
        }
      }

      if (sub_1D72588EC())
      {
        v47 = [v29 difficulty];
        v48 = [v77 difficulty];
        v49 = v44;
        v50 = v48;
        v51 = *v67;
        v52 = v78;
        (*v67)(v49, v78);
        v51(v79, v52);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v25 = v69;
        if (v47 >= v50)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v53 = v79;
        v54 = sub_1D725882C();
        v55 = v44;
        v56 = v54;
        v57 = *v67;
        v58 = v78;
        (*v67)(v55, v78);
        v57(v53, v58);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v25 = v69;
        if ((v56 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      if (!v72)
      {
        break;
      }

      v59 = *v27;
      v29 = *(v27 + 8);
      *v27 = v29;
      *(v27 + 8) = v59;
      v27 -= 8;
      if (__CFADD__(v28++, 1))
      {
LABEL_4:
        a3 = v65 + 1;
        v27 = v64 + 8;
        v28 = v63 - 1;
        if (v65 + 1 == v62)
        {
          return;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_1D680FEFC(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_retain_n();
  v5 = sub_1D726449C();
  if (v5 < v4)
  {
    if (v4 >= -1)
    {
      v6 = v5;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D6152704();
        v8 = sub_1D726276C();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v9[0] = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
      v9[1] = v7;

      sub_1D680E9F4(v9, v10, a1, v6, a2);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_1D680F9CC(0, v4, 1, a1, a2);
  }
}

uint64_t sub_1D6810058(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1D630BBB4(v4);
    *a1 = v4;
  }

  v6 = *(v4 + 16);
  v8[0] = v4 + 32;
  v8[1] = v6;

  sub_1D680FEFC(v8, a2);

  sub_1D7263EAC();
}

Swift::Bool __swiftcall FeedPrerollAdRequester.hasScheduledRequest(for:)(Swift::String a1)
{
  sub_1D725A7BC();

  sub_1D725B7CC();

  return v2;
}

void sub_1D68101B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 16);

  LOBYTE(a3) = sub_1D5BE240C(a2, a3, v8);

  *a4 = a3 & 1;
}

void FeedPrerollAdRequester.scheduleRequest(for:createContext:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v6 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v41 - v13;
  v15 = sub_1D726093C();
  v16 = *(v3 + 56);
  v47 = v17;
  v48 = v16;
  v45 = v3;
  v46 = v15;
  sub_1D725A7BC();

  sub_1D725B7CC();

  if (v49)
  {
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v18 = qword_1EDFFC830;
    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1D7273AE0;
    v20 = sub_1D726093C();
    v22 = v21;
    *(v19 + 56) = MEMORY[0x1E69E6158];
    *(v19 + 64) = sub_1D5B7E2C0();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    v23 = sub_1D7262EDC();
    sub_1D725C30C("Ad request already scheduled for placement=%{public}@", 53, 2, &dword_1D5B42000, v18, v23, v19);
  }

  else
  {
    v42 = v7;
    sub_1D726093C();
    sub_1D7260CEC();

    sub_1D726093C();
    sub_1D7260D1C();

    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDFFC830;
    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_1D7273AE0;
    v26 = sub_1D726093C();
    v28 = v27;
    *(v25 + 56) = MEMORY[0x1E69E6158];
    *(v25 + 64) = sub_1D5B7E2C0();
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v29 = sub_1D7262EDC();
    sub_1D725C30C("Scheduling ad request for placement=%{public}@", 46, 2, &dword_1D5B42000, v24, v29, v25);

    sub_1D725A76C();
    v30 = sub_1D726093C();
    v32 = v31;
    swift_beginAccess();
    sub_1D5B860D0(&v49, v30, v32);
    swift_endAccess();

    v33 = sub_1D726094C();
    (*(*(v33 - 8) + 16))(v14, a1, v33);
    v34 = &v14[*(v6 + 20)];
    v35 = v44;
    *v34 = v43;
    v34[1] = v35;
    sub_1D6810CCC(v14, v10);
    swift_beginAccess();
    v36 = *(v4 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 24) = v36;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v36 = sub_1D699507C(0, v36[2] + 1, 1, v36);
      *(v4 + 24) = v36;
    }

    v39 = v36[2];
    v38 = v36[3];
    v40 = v42;
    if (v39 >= v38 >> 1)
    {
      v36 = sub_1D699507C((v38 > 1), v39 + 1, 1, v36);
    }

    v36[2] = v39 + 1;
    sub_1D6810D30(v10, v36 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39);
    *(v4 + 24) = v36;
    swift_endAccess();
    sub_1D725A77C();
    sub_1D6810FA0(v14, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest);
  }
}

uint64_t type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(uint64_t a1)
{
  result = qword_1EC88C4F0;
  if (!qword_1EC88C4F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void FeedPrerollAdRequester.initiateScheduledRequest(for:)(uint64_t a1)
{
  v25 = a1;
  sub_1D6810D94(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B679FC(0, &qword_1EC88C4E0, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v24 - v8;
  v10 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v1 + 56);
  sub_1D725A7BC();
  sub_1D5B679FC(0, &qword_1EC88C4E8, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E62F8]);

  v15 = v25;
  sub_1D725B7CC();

  v26 = v15;
  sub_1D5E3EBF4(sub_1D6810E98, v28, v9);

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D6810EB8(v9);
    if (qword_1EDF1BB68 != -1)
    {
      swift_once();
    }

    v16 = qword_1EDFFC830;
    v17 = sub_1D7262EBC();
    sub_1D5B679FC(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1D7273AE0;
    v19 = sub_1D726093C();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1D5B7E2C0();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1D725C30C("Attempting to initiate scheduled preroll, but no request found. placement=%{public}@", 84, 2, &dword_1D5B42000, v16, v17, v18);
  }

  else
  {
    sub_1D6810D30(v9, v14);
    v22 = sub_1D726026C();
    MEMORY[0x1EEE9AC00](v22, v23);
    *(&v24 - 2) = v14;
    sub_1D72606DC();

    sub_1D6810FA0(v5, sub_1D6810D94);
    sub_1D6810FA0(v14, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest);
  }
}

uint64_t sub_1D6810B88(__n128 a1)
{
  v1 = sub_1D726093C();
  v3 = v2;
  if (v1 == sub_1D726093C() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D72646CC();
  }

  return v5 & 1;
}

uint64_t FeedPrerollAdRequester.deinit()
{

  return v0;
}

uint64_t FeedPrerollAdRequester.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D6810CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6810D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D6810D94(uint64_t a1)
{
  if (!qword_1EC88C4D8)
  {
    sub_1D7260A1C();
    sub_1D726094C();
    sub_1D5B473C8(&unk_1EDF43920, MEMORY[0x1E69B41D8], MEMORY[0x1E69B41D0]);
    v1 = sub_1D72605CC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88C4D8);
    }
  }
}

uint64_t sub_1D6810E50@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 24);
}

uint64_t sub_1D6810EB8(uint64_t a1)
{
  sub_1D5B679FC(0, &qword_1EC88C4E0, type metadata accessor for FeedPrerollAdRequester.ScheduledRequest, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6810F44(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for FeedPrerollAdRequester.ScheduledRequest(0);
  return (*(v3 + *(v4 + 20)))(a1);
}

uint64_t sub_1D6810FA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D6811040(uint64_t a1)
{
  result = sub_1D726094C();
  if (v2 <= 0x3F)
  {
    result = sub_1D5B5D9E0();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t TagMastheadAlignment.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6811158()
{
  result = qword_1EC88C500;
  if (!qword_1EC88C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C500);
  }

  return result;
}

uint64_t PuzzleHintFormatter.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D72745A0;
  type metadata accessor for PuzzleTagConverter();
  v1 = swift_allocObject();
  v1[2] = 23390;
  v1[3] = 0xE200000000000000;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = 0;
  *(v0 + 32) = v1;
  return v0;
}

uint64_t PuzzleHintFormatter.init()(uint64_t a1)
{
  *(v1 + 16) = xmmword_1D72745A0;
  type metadata accessor for PuzzleTagConverter();
  v2 = swift_allocObject();
  v2[2] = 23390;
  v2[3] = 0xE200000000000000;
  v2[5] = 0;
  v2[6] = 0;
  v2[4] = 0;
  *(v1 + 32) = v2;
  return v1;
}

double PuzzleHintFormatter.attributedString(from:format:)@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58._countAndFlagsBits = a1;
  v58._object = a2;
  v59 = a4;
  sub_1D5B542FC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v50 = &v50 - v9;
  v10 = sub_1D7257FAC();
  v52 = *(v10 - 8);
  v53 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D7257FBC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D7257FDC();
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1D5B542FC(0, &qword_1EC87FF50, MEMORY[0x1E6968848]);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v26 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v50 - v29;
  v31 = sub_1D72580BC();
  v54 = *(v31 - 8);
  v55 = v31;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v50 - v37;
  v39 = sub_1D725815C();
  v41 = MEMORY[0x1EEE9AC00](v39 - 8, v40);
  v56 = &v50 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v57)
  {
    if (*v57 == 1)
    {
      (*(v15 + 104))(v18, *MEMORY[0x1E6968748], v14, v41);
      (*(v52 + 104))(v13, *MEMORY[0x1E6968728], v53);

      sub_1D7257FCC();
      v43 = sub_1D72585BC();
      (*(*(v43 - 8) + 56))(v50, 1, 1, v43);
      sub_1D6812C40();
      sub_1D72580AC();
      v46 = v54;
      v45 = v55;
      (*(v54 + 56))(v30, 0, 1, v55);
      (*(v46 + 32))(v38, v30, v45);
      sub_1D6811AC4(v38, v59);
      (*(v46 + 8))(v38, v45);
    }

    else
    {
      PuzzleTagConverter.convertToMarkup(html:)(v58);
      (*(v15 + 104))(v18, *MEMORY[0x1E6968748], v14);
      (*(v52 + 104))(v13, *MEMORY[0x1E6968728], v53);

      sub_1D7257FCC();
      v44 = sub_1D72585BC();
      (*(*(v44 - 8) + 56))(v51, 1, 1, v44);
      sub_1D6812C40();
      sub_1D72580AC();
      v49 = v54;
      v48 = v55;
      (*(v54 + 56))(v26, 0, 1, v55);
      (*(v49 + 32))(v34, v26, v48);
      sub_1D6811AC4(v34, v59);
      (*(v49 + 8))(v34, v48);
    }
  }

  else
  {

    sub_1D725814C();
    sub_1D72580CC();
    sub_1D5C14A38();
    v60 = sub_1D72633DC();
    sub_1D62DE440();
    sub_1D72580DC();
  }

  return result;
}

uint64_t sub_1D6811AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D681334C(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D725804C();
  v57 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60, v9);
  v59 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D725802C();
  v11 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v12);
  v55 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D725805C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6813428(0, v17);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D72580BC();
  (*(*(v25 - 8) + 16))(a2, a1, v25);
  v26 = [objc_allocWithZone(MEMORY[0x1E69DCA40]) initForTextStyle_];
  [v26 scaledValueForValue_];
  v28 = v27;

  if (v28 <= 19.66665)
  {
    v29 = v28;
  }

  else
  {
    v29 = 19.66665;
  }

  v50 = a2;
  sub_1D725807C();
  (*(v15 + 16))(v24, v19, v14);
  v30 = *(v21 + 44);
  v58 = sub_1D68133E0(&qword_1EDF3C410, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
  sub_1D7262BFC();
  (*(v15 + 8))(v19, v14);
  ++v57;
  v54 = (v11 + 16);
  v53 = (v11 + 8);
  v48[1] = *MEMORY[0x1E69DDD80];
  v61 = v5;
  v49 = v8;
  v52 = v14;
  v51 = v30;
  while (1)
  {
    v33 = v59;
    sub_1D7262C5C();
    sub_1D68133E0(&qword_1EDF18AD8, MEMORY[0x1E69687B0], MEMORY[0x1E69687C0]);
    v34 = v60;
    v35 = sub_1D7261FBC();
    (*v57)(v33, v34);
    if (v35)
    {
      return sub_1D6813510(v24, sub_1D6813428);
    }

    v36 = sub_1D7262D0C();
    v37 = v55;
    v38 = v56;
    (*v54)(v55);
    v36(v65, 0);
    sub_1D7262C6C();
    sub_1D725801C();
    sub_1D68134BC();
    sub_1D725803C();
    (*v53)(v37, v38);
    v39 = v65[0];
    swift_getKeyPath();
    if (v39 > 2)
    {
      if (v39 != 3)
      {
        swift_getKeyPath();
        sub_1D5C14A38();
        v62 = COERCE_DOUBLE(sub_1D72633DC());
        sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        v45 = sub_1D72580EC();
        sub_1D7257EDC();
        sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
        v46 = sub_1D725821C();
        sub_1D62DE3AC(0);
        sub_1D62DE440();
        sub_1D725830C();
        v46(v64, 0);

        v45(v65, 0);
        goto LABEL_7;
      }

      swift_getKeyPath();
      sub_1D5C14A38();
      v62 = COERCE_DOUBLE(sub_1D72633DC());
      sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
      v42 = sub_1D72580EC();
      sub_1D7257EDC();
      sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
      v44 = sub_1D725821C();
      sub_1D62DE3AC(0);
      sub_1D62DE440();
      sub_1D725830C();
      v44(v64, 0);
LABEL_17:

      v42(v65, 0);
      sub_1D6813510(v8, sub_1D681334C);
    }

    else
    {
      if (!v39)
      {
        swift_getKeyPath();
        *&v62 = 1;
        v63 = 0;
        sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
        v42 = sub_1D72580EC();
        sub_1D7257EDC();
        sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
        v43 = sub_1D725821C();
        sub_1D62DE3AC(0);
        sub_1D62DE614();
        sub_1D725830C();
        v43(v64, 0);
        goto LABEL_17;
      }

      v48[0] = swift_getKeyPath();
      if (v39 == 1)
      {
        v62 = v29 / 3.0;
      }

      else
      {
        v62 = v29 * -0.125;
      }

      v63 = 0;
      sub_1D68133E0(&qword_1EDF046C0, sub_1D681334C, MEMORY[0x1E69E66D8]);
      v40 = sub_1D72580EC();
      sub_1D7257EDC();
      sub_1D68133E0(&qword_1EDF3C418, MEMORY[0x1E69DBE88], MEMORY[0x1E69DBE80]);
      v41 = sub_1D725821C();
      sub_1D62DE3AC(0);
      sub_1D62DE79C();
      sub_1D725830C();
      v41(v64, 0);

      v40(v65, 0);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_1D5C14A38();
      v62 = COERCE_DOUBLE(sub_1D72633DC());
      v8 = v49;
      v31 = sub_1D72580EC();
      v32 = sub_1D725821C();
      sub_1D62DE440();
      sub_1D725830C();
      v32(v64, 0);

      v31(v65, 0);
LABEL_7:
      sub_1D6813510(v8, sub_1D681334C);
    }
  }
}

Swift::String __swiftcall PuzzleTagConverter.convertToMarkup(html:)(Swift::String html)
{
  v2 = v1;
  object = html._object;
  countAndFlagsBits = html._countAndFlagsBits;
  sub_1D68132FC(0, &qword_1EC88C510, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v42 - v7;
  v9 = sub_1D6812D10();
  v10 = v9[2];
  if (v10)
  {
    sub_1D5BF4D9C();

    v11 = v9 + 7;
    do
    {
      v12 = *(v11 - 3);
      v13 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;
      v49 = countAndFlagsBits;
      v50 = object;
      v47 = v12;
      v48 = v13;
      v45 = v14;
      v46 = v15;
      countAndFlagsBits = sub_1D7263A6C();
      v17 = v16;

      object = v17;
      v11 += 4;
      --v10;
    }

    while (v10);
  }

  else
  {
  }

  v42[1] = v2;
  v18 = sub_1D6812D50();
  v19 = *(v18 + 16);
  if (v19)
  {
    sub_1D5BF4D9C();
    v20 = (v18 + 56);
    do
    {
      v21 = *(v20 - 3);
      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      v49 = countAndFlagsBits;
      v50 = object;
      v47 = v21;
      v48 = v22;
      v45 = v23;
      v46 = v24;
      countAndFlagsBits = sub_1D7263A6C();
      v26 = v25;

      v20 += 4;
      object = v26;
      --v19;
    }

    while (v19);
  }

  else
  {
    v26 = object;
  }

  sub_1D725C16C();
  v47 = countAndFlagsBits;
  v48 = v26;
  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1D6812D9C();
  sub_1D6812DF0();
  sub_1D6812E44();
  v27 = v44;
  sub_1D7262D2C();

  v29 = v49;
  v28 = v50;
  v30 = sub_1D681319C();
  v31 = v30[2];
  if (v31)
  {
    sub_1D5BF4D9C();
    v32 = v30 + 7;
    do
    {
      v33 = *(v32 - 3);
      v34 = *(v32 - 2);
      v35 = *(v32 - 1);
      v36 = *v32;
      v49 = v29;
      v50 = v28;
      v47 = v33;
      v48 = v34;
      v45 = v35;
      v46 = v36;
      v29 = sub_1D7263A6C();
      v38 = v37;

      v32 += 4;
      v28 = v38;
      --v31;
    }

    while (v31);
  }

  else
  {
    v38 = v28;
  }

  (*(v43 + 8))(v8, v27);
  v39 = v29;
  v40 = v38;
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

unint64_t sub_1D6812C40()
{
  result = qword_1EC88C508;
  if (!qword_1EC88C508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C508);
  }

  return result;
}

uint64_t PuzzleHintFormatter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_1D6812D10()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = &unk_1F50F4F48;
    *(v0 + 32) = &unk_1F50F4F48;
  }

  return v1;
}

uint64_t sub_1D6812D50()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v1 = sub_1D6812EC0(v0);
    *(v0 + 40) = v1;
  }

  return v1;
}

unint64_t sub_1D6812D9C()
{
  result = qword_1EC88C518;
  if (!qword_1EC88C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C518);
  }

  return result;
}

unint64_t sub_1D6812DF0()
{
  result = qword_1EC88C520;
  if (!qword_1EC88C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C520);
  }

  return result;
}

unint64_t sub_1D6812E44()
{
  result = qword_1EC88C528;
  if (!qword_1EC88C528)
  {
    sub_1D68132FC(255, &qword_1EC88C510, MEMORY[0x1E69E67B0], MEMORY[0x1E69E9288]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C528);
  }

  return result;
}

uint64_t sub_1D6812EC0(uint64_t a1)
{
  sub_1D68132FC(0, &qword_1EC88C530, &type metadata for PuzzleTagConverter.TagPair, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72F3820;
  *(v2 + 32) = 4088380;
  *(v2 + 40) = 0xE300000000000000;
  *(v2 + 48) = 10794;
  *(v2 + 56) = 0xE200000000000000;
  *(v2 + 64) = 1046622012;
  *(v2 + 72) = 0xE400000000000000;
  *(v2 + 80) = 10794;
  *(v2 + 88) = 0xE200000000000000;
  *(v2 + 96) = 0x3E676E6F7274733CLL;
  *(v2 + 104) = 0xE800000000000000;
  *(v2 + 112) = 10794;
  *(v2 + 120) = 0xE200000000000000;
  *(v2 + 128) = 0x676E6F7274732F3CLL;
  *(v2 + 136) = 0xE90000000000003ELL;
  *(v2 + 144) = 10794;
  *(v2 + 152) = 0xE200000000000000;
  *(v2 + 160) = 4090172;
  *(v2 + 168) = 0xE300000000000000;
  *(v2 + 176) = 95;
  *(v2 + 184) = 0xE100000000000000;
  *(v2 + 192) = 1047080764;
  *(v2 + 200) = 0xE400000000000000;
  *(v2 + 208) = 95;
  *(v2 + 216) = 0xE100000000000000;
  *(v2 + 224) = 1047356732;
  *(v2 + 232) = 0xE400000000000000;
  *(v2 + 240) = 95;
  *(v2 + 248) = 0xE100000000000000;
  *(v2 + 256) = 0x3E6D652F3CLL;
  *(v2 + 264) = 0xE500000000000000;
  *(v2 + 272) = 95;
  *(v2 + 280) = 0xE100000000000000;
  *(v2 + 288) = 4092732;
  *(v2 + 296) = 0xE300000000000000;
  *(v2 + 304) = 32382;
  *(v2 + 312) = 0xE200000000000000;
  *(v2 + 320) = 1047736124;
  *(v2 + 328) = 0xE400000000000000;
  *(v2 + 336) = 32382;
  *(v2 + 344) = 0xE200000000000000;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  *(v2 + 352) = 4093244;
  *(v2 + 360) = 0xE300000000000000;
  *(v2 + 368) = v4;
  *(v2 + 376) = v3;
  *(v2 + 384) = 1047867196;
  *(v2 + 392) = 0xE400000000000000;
  *(v2 + 400) = 0xD00000000000001BLL;
  *(v2 + 408) = 0x80000001D73D6E20;
  *(v2 + 416) = 0x3E7075733CLL;
  *(v2 + 424) = 0xE500000000000000;
  *(v2 + 432) = v4;
  *(v2 + 440) = v3;
  *(v2 + 448) = 0x3E7075732F3CLL;
  *(v2 + 456) = 0xE600000000000000;
  *(v2 + 464) = 0xD00000000000001DLL;
  *(v2 + 472) = 0x80000001D73D6E40;
  *(v2 + 480) = 0x3E6275733CLL;
  *(v2 + 488) = 0xE500000000000000;
  *(v2 + 496) = v4;
  *(v2 + 504) = v3;
  *(v2 + 512) = 0x3E6275732F3CLL;
  *(v2 + 520) = 0xE600000000000000;
  *(v2 + 528) = 0xD00000000000001BLL;
  *(v2 + 536) = 0x80000001D73D6E60;
  *(v2 + 544) = 0x3E6769623CLL;
  *(v2 + 552) = 0xE500000000000000;
  *(v2 + 560) = v4;
  *(v2 + 568) = v3;
  *(v2 + 576) = 0x3E6769622F3CLL;
  *(v2 + 584) = 0xE600000000000000;
  *(v2 + 592) = 0xD000000000000018;
  *(v2 + 600) = 0x80000001D73D6E80;
  *(v2 + 608) = 0x3E6C6C616D733CLL;
  *(v2 + 616) = 0xE700000000000000;
  *(v2 + 624) = v4;
  *(v2 + 632) = v3;
  *(v2 + 640) = 0x3E6C6C616D732F3CLL;
  *(v2 + 648) = 0xE800000000000000;
  *(v2 + 656) = 0xD000000000000019;
  *(v2 + 664) = 0x80000001D73D6EA0;
  *(v2 + 672) = 1047683644;
  *(v2 + 680) = 0xE400000000000000;
  *(v2 + 688) = 10;
  *(v2 + 696) = 0xE100000000000000;
  *(v2 + 704) = 0x3E72622F3CLL;
  *(v2 + 712) = 0xE500000000000000;
  *(v2 + 720) = 10;
  *(v2 + 728) = 0xE100000000000000;
  swift_bridgeObjectRetain_n();
  return v2;
}

void *sub_1D681319C()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 48);
  }

  else
  {
    v1 = &unk_1F50F4FC8;
    *(v0 + 48) = &unk_1F50F4FC8;
  }

  return v1;
}

uint64_t PuzzleTagConverter.deinit()
{

  return v0;
}

uint64_t PuzzleTagConverter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_1D68132FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D681334C(uint64_t a1)
{
  if (!qword_1EDF1AC60)
  {
    sub_1D725808C();
    sub_1D68133E0(&qword_1EDF3C408, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
    v1 = sub_1D7262D5C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1AC60);
    }
  }
}

uint64_t sub_1D68133E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6813428(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF1A548)
  {
    sub_1D725805C();
    sub_1D68133E0(&qword_1EDF3C410, MEMORY[0x1E69687C8], MEMORY[0x1E69687E0]);
    v2 = sub_1D7263FAC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF1A548);
    }
  }
}

unint64_t sub_1D68134BC()
{
  result = qword_1EC88C538;
  if (!qword_1EC88C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C538);
  }

  return result;
}

uint64_t sub_1D6813510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatMediaTiming.autoreverses.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 72);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t FormatMediaTiming.timingFunction.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  v5 = *(v1 + 104);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 112);
  *(a1 + 32) = v6;
  return sub_1D66A01E4(v2, v3, v4, v5, v6);
}

uint64_t FormatMediaTiming.removeOnCompletion.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 136);
  *(a1 + 16) = v4;
  return sub_1D6189668(v2, v3, v4);
}

uint64_t sub_1D6813640@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = *(v1 + 32);
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = *(v1 + 72);
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = v1[13];
  v17 = *(v1 + 112);
  v18 = v1[15];
  v19 = v1[16];
  v20 = *(v1 + 136);
  v37 = v18;
  if (v17 != 255)
  {
    if (v17)
    {
      v36 = v1[7];
      v33 = v1[8];
      v34 = v1[5];
      v30 = v1[2];
      v31 = v1[3];
      v21 = *v1;
      v35 = *(v1 + 72);
      v32 = v1[16];
      v22 = *(v1 + 136);
      v23 = v7;

      v7 = v23;
      v3 = v21;
      v6 = v30;
      v5 = v31;
      v20 = v22;
      v19 = v32;
      v11 = v33;
      v10 = v36;
      v18 = v37;
      v8 = v34;
      v12 = v35;
      LOBYTE(v17) = 1;
    }

    else
    {
      LOBYTE(v17) = 0;
    }
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v5;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v11;
  *(a1 + 72) = v12;
  *(a1 + 80) = v13;
  *(a1 + 88) = v14;
  *(a1 + 96) = v15;
  *(a1 + 104) = v16;
  *(a1 + 112) = v17;
  *(a1 + 120) = v18;
  *(a1 + 128) = v19;
  *(a1 + 136) = v20;
  v24 = v10;
  v25 = v11;
  v26 = v12;
  v27 = v19;
  v28 = v20;

  sub_1D6189668(v24, v25, v26);

  return sub_1D6189668(v37, v27, v28);
}

void sub_1D68137D4(uint64_t a1, __int128 *a2)
{
  v4 = v2;
  v5 = a2[7];
  v47 = a2[6];
  *v48 = v5;
  *&v48[9] = *(a2 + 121);
  v6 = a2[3];
  v43 = a2[2];
  v44 = v6;
  v7 = a2[5];
  v45 = a2[4];
  v46 = v7;
  v8 = a2[1];
  v41 = *a2;
  v42 = v8;
  if (sub_1D60486AC(&v41) == 1)
  {
    return;
  }

  v9 = v41;
  if (v41)
  {
    v10 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v11 = v10();
    v12 = sub_1D5E02AFC(v11, v9);
    if (v3)
    {
      goto LABEL_10;
    }

    v13 = v12;

    [v2 setDuration_];
  }

  v14 = *(&v41 + 1);
  if (!*(&v41 + 1))
  {
    goto LABEL_8;
  }

  v15 = off_1F51AF338[0];
  type metadata accessor for FormatNodeContext(0);
  v16 = v15();
  v17 = sub_1D5E02AFC(v16, v14);
  if (v3)
  {
LABEL_10:

    return;
  }

  v18 = v17;

  *&v19 = v18;
  [v2 setSpeed_];
LABEL_8:
  v20 = *(&v42 + 1);
  if (*(&v42 + 1))
  {
    v21 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v22 = v21();
    v23 = sub_1D5E02AFC(v22, v20);
    if (v3)
    {
      goto LABEL_10;
    }

    v24 = v23;

    [v2 setTimeOffset_];
  }

  if (v43 <= 1u)
  {
    if (v43)
    {
      v25 = MEMORY[0x1E69797D8];
    }

    else
    {
      v25 = MEMORY[0x1E69797E8];
    }

    goto LABEL_21;
  }

  if (v43 == 2)
  {
    v25 = MEMORY[0x1E69797E0];
    goto LABEL_21;
  }

  if (v43 == 3)
  {
    v25 = MEMORY[0x1E69797F0];
LABEL_21:
    v26 = *v25;
    [v4 setFillMode_];
  }

  v27 = *(&v43 + 1);
  if (*(&v43 + 1))
  {
    v28 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v29 = v28();
    v30 = sub_1D5E02AFC(v29, v27);

    if (v3)
    {
      return;
    }

    *&v31 = v30;
    [v4 setRepeatCount_];
  }

  v32 = v44;
  if (v44)
  {
    v33 = off_1F51AF338[0];
    type metadata accessor for FormatNodeContext(0);
    v34 = v33();
    v35 = sub_1D5E02AFC(v34, v32);

    if (v3)
    {
      return;
    }

    [v4 setRepeatDuration_];
  }

  if (BYTE8(v45) != 255)
  {
    sub_1D725A7EC();
    v36 = FormatBoolean.value(contextLayoutOptions:)(v40);

    if (v3)
    {
      return;
    }

    [v4 setAutoreverses_];
  }

  if (v48[24] != 255)
  {
    sub_1D725A7EC();
    v37 = FormatBoolean.value(contextLayoutOptions:)(v40);

    if (v3)
    {
      return;
    }

    [v4 setRemovedOnCompletion_];
  }

  if (v48[0] != 255)
  {
    if (v48[0])
    {
      sub_1D70714AC();
    }

    else
    {
      v38 = sub_1D69BAFD8();
    }

    if (!v3)
    {
      v39 = v38;
      [v4 setTimingFunction_];
    }
  }
}

BOOL _s8NewsFeed17FormatMediaTimingV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v70 = *(a1 + 32);
  v69 = *(a1 + 40);
  v67 = *(a1 + 48);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 32);
  v68 = *(a2 + 40);
  v66 = *(a2 + 48);
  v64 = *(a2 + 56);
  v65 = *(a2 + 64);
  v63 = *(a2 + 72);
  if (*a1)
  {
    if (!v7)
    {
      return 0;
    }

    v59 = *(a2 + 112);
    v60 = *(a1 + 72);
    v61 = *(a1 + 56);
    v62 = *(a1 + 64);
    v50 = *(a2 + 80);
    v51 = *(a2 + 88);
    v52 = *(a2 + 96);
    v53 = *(a2 + 104);
    v54 = *(a1 + 112);
    v55 = *(a1 + 80);
    v56 = *(a1 + 88);
    v57 = *(a1 + 96);
    v58 = *(a1 + 104);
    v46 = *(a2 + 136);
    v44 = *(a2 + 120);
    v45 = *(a2 + 128);
    v49 = *(a1 + 136);
    v47 = *(a1 + 120);
    v48 = *(a1 + 128);

    sub_1D633A310(v3, v7);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (v2)
    {
      goto LABEL_5;
    }

LABEL_13:
    if (v6)
    {
      return 0;
    }

    if (v4)
    {
      goto LABEL_8;
    }

LABEL_15:
    if (v8)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (v7)
  {
    return 0;
  }

  v59 = *(a2 + 112);
  v60 = *(a1 + 72);
  v61 = *(a1 + 56);
  v62 = *(a1 + 64);
  v50 = *(a2 + 80);
  v51 = *(a2 + 88);
  v52 = *(a2 + 96);
  v53 = *(a2 + 104);
  v54 = *(a1 + 112);
  v55 = *(a1 + 80);
  v56 = *(a1 + 88);
  v57 = *(a1 + 96);
  v58 = *(a1 + 104);
  v46 = *(a2 + 136);
  v44 = *(a2 + 120);
  v45 = *(a2 + 128);
  v49 = *(a1 + 136);
  v47 = *(a1 + 120);
  v48 = *(a1 + 128);

  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (!v6)
  {
    return 0;
  }

  sub_1D633A310(v2, v6);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (!v8)
  {
    return 0;
  }

  sub_1D633A310(v4, v8);
  v16 = v15;

  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1D633A310(v5, v9);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v9)
    {
      return 0;
    }
  }

  if (v70 == 4)
  {
    if (v10 != 4)
    {
      return 0;
    }
  }

  else if (v10 == 4 || (sub_1D6DE5ADC(v70, v10) & 1) == 0)
  {
    return 0;
  }

  if (v69)
  {
    if (!v68)
    {
      return 0;
    }

    sub_1D633A310(v69, v68);
    v20 = v19;

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v68)
    {
      return 0;
    }
  }

  if (v67)
  {
    if (!v66)
    {
      return 0;
    }

    sub_1D633A310(v67, v66);
    v22 = v21;

    if ((v22 & 1) == 0)
    {
      return 0;
    }

LABEL_40:
    if (v60 == 255)
    {
      v25 = -1;
      sub_1D6189668(v61, v62, 255);
      v23 = v63;
      v27 = v64;
      v26 = v65;
      if (v63 == 255)
      {
        sub_1D6189668(v64, v65, 255);
        sub_1D60107F0(v61, v62, 255);
        goto LABEL_50;
      }

      sub_1D6189668(v64, v65, v63);
      v29 = v61;
      v28 = v62;
    }

    else
    {
      v76 = v61;
      v77 = v62;
      LOBYTE(v78) = v60;
      v23 = v63;
      if (v63 != 255)
      {
        v71 = v64;
        v72 = v65;
        LOBYTE(v73) = v63 & 1;
        sub_1D6189668(v61, v62, v60);
        sub_1D6189668(v64, v65, v63);
        sub_1D6189668(v61, v62, v60);
        v24 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v76, &v71);
        sub_1D5D2F2C4(v71, v72, v73);
        sub_1D5D2F2C4(v76, v77, v78);
        sub_1D60107F0(v61, v62, v60);
        if ((v24 & 1) == 0)
        {
          return 0;
        }

LABEL_50:
        if (v54 == 255)
        {
          v34 = v55;
          v35 = v56;
          v36 = v57;
          v37 = v58;
          sub_1D66A01E4(v55, v56, v57, v58, 255);
          if (v59 == 255)
          {
            sub_1D66A01E4(v50, v51, v52, v53, 255);
            sub_1D62B4B50(v55, v56, v57, v58, 255);
LABEL_61:
            if (v49 == 255)
            {
              sub_1D6189668(v47, v48, 255);
              if (v46 == 255)
              {
                sub_1D6189668(v44, v45, 255);
                sub_1D60107F0(v47, v48, 255);
                return 1;
              }

              sub_1D6189668(v44, v45, v46);
            }

            else
            {
              v76 = v47;
              v77 = v48;
              LOBYTE(v78) = v49;
              if (v46 != 255)
              {
                v71 = v44;
                v72 = v45;
                LOBYTE(v73) = v46 & 1;
                sub_1D6189668(v47, v48, v49);
                sub_1D6189668(v44, v45, v46);
                sub_1D6189668(v47, v48, v49);
                v43 = _s8NewsFeed13FormatBooleanO2eeoiySbAC_ACtFZ_0(&v76, &v71);
                sub_1D5D2F2C4(v71, v72, v73);
                sub_1D5D2F2C4(v76, v77, v78);
                sub_1D60107F0(v47, v48, v49);
                return (v43 & 1) != 0;
              }

              sub_1D6189668(v47, v48, v49);
              sub_1D6189668(v44, v45, 255);
              sub_1D6189668(v47, v48, v49);
              sub_1D5D2F2C4(v47, v48, v49 & 1);
            }

            sub_1D60107F0(v47, v48, v49);
            v30 = v44;
            v31 = v45;
            v32 = v46;
            goto LABEL_48;
          }

          v39 = v50;
          v38 = v51;
          v41 = v52;
          v40 = v53;
          sub_1D66A01E4(v50, v51, v52, v53, v59);
        }

        else
        {
          v76 = v55;
          v77 = v56;
          v78 = v57;
          v79 = v58;
          v80 = v54;
          if (v59 != 255)
          {
            v71 = v50;
            v72 = v51;
            v73 = v52;
            v74 = v53;
            v75 = v59 & 1;
            sub_1D66A01E4(v55, v56, v57, v58, v54);
            sub_1D66A01E4(v50, v51, v52, v53, v59);
            sub_1D66A01E4(v55, v56, v57, v58, v54);
            v33 = _s8NewsFeed25FormatMediaTimingFunctionO2eeoiySbAC_ACtFZ_0(&v76, &v71);
            sub_1D618909C(v71, v72, v73, v74, v75);
            sub_1D618909C(v76, v77, v78, v79, v80);
            sub_1D62B4B50(v55, v56, v57, v58, v54);
            if ((v33 & 1) == 0)
            {
              return 0;
            }

            goto LABEL_61;
          }

          sub_1D66A01E4(v55, v56, v57, v58, v54);
          v39 = v50;
          v38 = v51;
          v41 = v52;
          v40 = v53;
          sub_1D66A01E4(v50, v51, v52, v53, 255);
          sub_1D66A01E4(v55, v56, v57, v58, v54);
          v34 = v55;
          v35 = v56;
          v36 = v57;
          v37 = v58;
          sub_1D618909C(v55, v56, v57, v58, v54 & 1);
        }

        sub_1D62B4B50(v34, v35, v36, v37, v54);
        sub_1D62B4B50(v39, v38, v41, v40, v59);
        return 0;
      }

      v28 = v62;
      v29 = v61;
      v25 = v60;
      sub_1D6189668(v61, v62, v60);
      v27 = v64;
      v26 = v65;
      sub_1D6189668(v64, v65, 255);
      sub_1D6189668(v61, v62, v60);
      sub_1D5D2F2C4(v61, v62, v60 & 1);
    }

    sub_1D60107F0(v29, v28, v25);
    v30 = v27;
    v31 = v26;
    v32 = v23;
LABEL_48:
    sub_1D60107F0(v30, v31, v32);
    return 0;
  }

  if (!v66)
  {

    goto LABEL_40;
  }

  return 0;
}

unint64_t sub_1D6814414(uint64_t a1)
{
  result = sub_1D681443C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D681443C()
{
  result = qword_1EC88C540;
  if (!qword_1EC88C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C540);
  }

  return result;
}

unint64_t sub_1D6814490(void *a1)
{
  a1[1] = sub_1D66A0918();
  a1[2] = sub_1D6662A38();
  result = sub_1D68144C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D68144C8()
{
  result = qword_1EC88C548[0];
  if (!qword_1EC88C548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC88C548);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed25FormatMediaTimingFunctionOSg(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy137_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 121) = *(a2 + 121);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D6814564(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 137))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D68145C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 137) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1D6814648(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 112);
  v112[6] = *(a1 + 96);
  v112[7] = v3;
  v112[8] = *(a1 + 128);
  v113 = *(a1 + 144);
  v4 = *(a1 + 48);
  v112[2] = *(a1 + 32);
  v112[3] = v4;
  v5 = *(a1 + 80);
  v112[4] = *(a1 + 64);
  v112[5] = v5;
  v6 = *(a1 + 16);
  v112[0] = *a1;
  v112[1] = v6;
  v7 = a2[7];
  v120 = a2[6];
  v121[0] = v7;
  *(v121 + 9) = *(a2 + 121);
  v8 = a2[3];
  v116 = a2[2];
  v117 = v8;
  v9 = a2[4];
  v119 = a2[5];
  v118 = v9;
  v10 = *a2;
  v115 = a2[1];
  v114 = v10;
  v11 = MEMORY[0x1E69E6F90];
  sub_1D5B56088(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_1D7273AE0;
  sub_1D5B56088(0, &qword_1EC880490, sub_1D5EA74B8, v11);
  sub_1D5EA74B8(0);
  v13 = *(*(v12 - 8) + 72);
  v14 = (*(*(v12 - 8) + 80) + 32) & ~*(*(v12 - 8) + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D7279790;
  v52 = v15;
  v16 = (v15 + v14);
  v17 = a2[7];
  v122[6] = a2[6];
  v123[0] = v17;
  *(v123 + 9) = *(a2 + 121);
  v18 = a2[3];
  v122[2] = a2[2];
  v122[3] = v18;
  v19 = a2[5];
  v122[4] = a2[4];
  v122[5] = v19;
  v20 = a2[1];
  v122[0] = *a2;
  v122[1] = v20;
  v21 = 0;
  if (sub_1D60486AC(v122) != 1)
  {
    v21 = *&v122[0];
  }

  sub_1D711B070(0x6E6F697461727544, 0xE800000000000000, v21, v16);
  v22 = type metadata accessor for FormatInspectionItem(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v16, 0, 1, v22);
  v108[6] = v120;
  v109[0] = v121[0];
  *(v109 + 9) = *(v121 + 9);
  v108[2] = v116;
  v108[3] = v117;
  v108[5] = v119;
  v108[4] = v118;
  v108[1] = v115;
  v108[0] = v114;
  v24 = 0;
  if (sub_1D60486AC(v108) != 1)
  {
    v24 = *(&v108[0] + 1);
  }

  v25 = sub_1D711B070(0x6465657053, 0xE500000000000000, v24, &v16[v13]);
  (v23)(&v16[v13], 0, 1, v22, v25);
  v106 = v120;
  v107[0] = v121[0];
  *(v107 + 9) = *(v121 + 9);
  v102 = v116;
  v103 = v117;
  v105 = v119;
  v104 = v118;
  v101 = v115;
  v100 = v114;
  if (sub_1D60486AC(&v100) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = v101;
  }

  v27 = sub_1D711B070(0x6954206E69676542, 0xEA0000000000656DLL, v26, &v16[2 * v13]);
  (v23)(&v16[2 * v13], 0, 1, v22, v27);
  v98 = v120;
  v99[0] = v121[0];
  *(v99 + 9) = *(v121 + 9);
  v94 = v116;
  v95 = v117;
  v96 = v118;
  v97 = v119;
  v92 = v114;
  v93 = v115;
  if (sub_1D60486AC(&v92) == 1)
  {
    v28 = 0;
  }

  else
  {
    v28 = *(&v93 + 1);
  }

  v29 = sub_1D711B070(0x66664F20656D6954, 0xEB00000000746573, v28, &v16[3 * v13]);
  (v23)(&v16[3 * v13], 0, 1, v22, v29);
  v90 = v120;
  v91[0] = v121[0];
  *(v91 + 9) = *(v121 + 9);
  v86 = v116;
  v87 = v117;
  v88 = v118;
  v89 = v119;
  v85[0] = v114;
  v85[1] = v115;
  if (sub_1D60486AC(v85) == 1)
  {
    v30 = 4;
  }

  else
  {
    v30 = v86;
  }

  sub_1D71234A4(0x646F4D206C6C6946, 0xE900000000000065, v30, &v16[4 * v13]);
  v23(&v16[4 * v13], 0, 1, v22);
  v83 = v120;
  v84[0] = v121[0];
  *(v84 + 9) = *(v121 + 9);
  v79 = v116;
  v80 = v117;
  v81 = v118;
  v82 = v119;
  v78[0] = v114;
  v78[1] = v115;
  if (sub_1D60486AC(v78) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(&v79 + 1);
  }

  v32 = sub_1D711B070(0x4320746165706552, 0xEC000000746E756FLL, v31, &v16[5 * v13]);
  (v23)(&v16[5 * v13], 0, 1, v22, v32);
  v76 = v120;
  v77[0] = v121[0];
  *(v77 + 9) = *(v121 + 9);
  v72[2] = v116;
  v73 = v117;
  v74 = v118;
  v75 = v119;
  v72[0] = v114;
  v72[1] = v115;
  if (sub_1D60486AC(v72) == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = v73;
  }

  v34 = sub_1D711B070(0x4420746165706552, 0xEF6E6F6974617275, v33, &v16[6 * v13]);
  (v23)(&v16[6 * v13], 0, 1, v22, v34);
  v70 = v120;
  v71[0] = v121[0];
  *(v71 + 9) = *(v121 + 9);
  v66[2] = v116;
  v67 = v117;
  v68 = v118;
  v69 = v119;
  v66[0] = v114;
  v66[1] = v115;
  if (sub_1D60486AC(v66) == 1)
  {
    v35 = 0;
    v36 = 0;
    v37 = -1;
  }

  else
  {
    v35 = *(&v67 + 1);
    v36 = v68;
    v37 = BYTE8(v68);
    sub_1D6189668(*(&v67 + 1), v68, SBYTE8(v68));
  }

  sub_1D71237B4(0x657665726F747541, 0xEC00000073657372, v35, v36, v37, &v16[8 * v13 - v13]);
  v23(&v16[8 * v13 - v13], 0, 1, v22);
  v64 = v120;
  *v65 = v121[0];
  *&v65[9] = *(v121 + 9);
  v62[2] = v116;
  v62[3] = v117;
  v62[4] = v118;
  v63 = v119;
  v62[0] = v114;
  v62[1] = v115;
  if (sub_1D60486AC(v62) == 1)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = -1;
  }

  else
  {
    v39 = *(&v63 + 1);
    v38 = v63;
    v41 = *(&v64 + 1);
    v40 = v64;
    v42 = v65[0];
    sub_1D66A01E4(v63, *(&v63 + 1), v64, *(&v64 + 1), v65[0]);
  }

  *&v54 = v38;
  *(&v54 + 1) = v39;
  *&v55 = v40;
  *(&v55 + 1) = v41;
  LOBYTE(v56) = v42;
  v43 = sub_1D6188A58(v112, &v54);
  sub_1D62B4B50(v54, *(&v54 + 1), v55, *(&v55 + 1), v56);
  sub_1D7120960(0x4620676E696D6954, 0xEF6E6F6974636E75, v43, &v16[8 * v13]);
  v23(&v16[8 * v13], 0, 1, v22);
  v60 = v120;
  *v61 = v121[0];
  *&v61[9] = *(v121 + 9);
  v56 = v116;
  v57 = v117;
  v58 = v118;
  v59 = v119;
  v54 = v114;
  v55 = v115;
  if (sub_1D60486AC(&v54) == 1)
  {
    v44 = 0;
    v45 = 0;
    v46 = -1;
  }

  else
  {
    v44 = *&v61[8];
    v45 = *&v61[16];
    v46 = v61[24];
    sub_1D6189668(*&v61[8], *&v61[16], v61[24]);
  }

  v47 = 9 * v13;
  sub_1D71237B4(0xD000000000000014, 0x80000001D73D6EC0, v44, v45, v46, &v16[v47]);
  v23(&v16[v47], 0, 1, v22);
  sub_1D6795150(0x695420616964654DLL, 0xEC000000676E696DLL, 0, 0, v52, v110);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v53 + 56) = &type metadata for FormatInspectionGroup;
  *(v53 + 64) = &off_1F518B2C0;
  v48 = swift_allocObject();
  *(v53 + 32) = v48;
  v49 = v110[1];
  *(v48 + 16) = v110[0];
  *(v48 + 32) = v49;
  *(v48 + 48) = v111;
  v50 = sub_1D7073500(v53);
  swift_setDeallocating();
  sub_1D5F10AA0(v53 + 32);
  swift_deallocClassInstance();
  return v50;
}

uint64_t FeedItemFilterResultJournal.init(title:initialCount:entries:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t FeedItemFilterResultJournal.title.getter()
{
  v0 = sub_1D5F90834();

  return v0;
}

uint64_t FeedItemFilterResultJournal.remainingCount.getter(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  type metadata accessor for FeedItemFilterResultEntry(0, *(a1 + 16), *(a1 + 24), a5);
  v7 = sub_1D726279C();
  v8 = __OFSUB__(v6, v7);
  result = v6 - v7;
  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t FeedItemFilterResultJournal.removedCount.getter(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for FeedItemFilterResultEntry(0, *(a1 + 16), *(a1 + 24), a5);

  return sub_1D726279C();
}

uint64_t sub_1D68150F4(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *(v5 + 24);
  v6 = *(a1 + 24);
  v14 = *(a1 + 16);
  v15 = v6;
  type metadata accessor for FeedItemFilterResultEntry(255, v14, v6, a5);
  v7 = sub_1D72627FC();
  v8 = type metadata accessor for DebugJournalGroupItem(0);

  WitnessTable = swift_getWitnessTable();
  v11 = sub_1D5B874E4(sub_1D6815308, &v13, v7, v8, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  return v11;
}

double sub_1D68151C8@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t x3_0@<X3>)
{
  v6 = type metadata accessor for FeedItemFilterResultEntry(0, a1, a2, x3_0);
  v10 = sub_1D6AB7E9C(v6, v7, v8, v9);
  v12 = 757935405;
  if (v11)
  {
    v12 = v10;
  }

  v13 = 0xE400000000000000;
  if (v11)
  {
    v13 = v11;
  }

  *a3 = v12;
  a3[1] = v13;
  v14 = sub_1D6AB804C(v6, v11);
  v15 = MEMORY[0x1E69E61C8];
  a3[5] = MEMORY[0x1E69E6158];
  a3[6] = v15;
  a3[2] = v14;
  a3[3] = v16;
  type metadata accessor for DebugJournalGroupItem(0);
  swift_storeEnumTagMultiPayload();
  return result;
}

uint64_t sub_1D68152B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id SharingPuzzleURLActivityItemSource.__allocating_init(puzzle:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1D6815A84(a1, a2);
  swift_unknownObjectRelease();
  return v6;
}

id SharingPuzzleURLActivityItemSource.init(puzzle:linkPresentationSource:)(void *a1, uint64_t a2)
{
  v2 = sub_1D6815A84(a1, a2);
  swift_unknownObjectRelease();
  return v2;
}

id SharingPuzzleURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingPuzzleURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingPuzzleURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL, v6);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5E3E404(v6);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(&v11, a1);
  }

  return result;
}

void SharingPuzzleURLActivityItemSource.activityViewController(_:itemForActivityType:)(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = sub_1D726207C();
    v11 = v10;
    if (v9 == sub_1D726207C() && v11 == v12)
    {

      goto LABEL_10;
    }

    v14 = sub_1D72646CC();

    if (v14)
    {
LABEL_10:
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return;
    }
  }

  sub_1D5EB84C0(v2 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL, v8);
  v15 = sub_1D72585BC();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v8, 1, v15) == 1)
  {
    sub_1D5E3E404(v8);
    goto LABEL_10;
  }

  *(a2 + 24) = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  (*(v16 + 32))(boxed_opaque_existential_1, v8, v15);
}

LPLinkMetadata_optional __swiftcall SharingPuzzleURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

id sub_1D6815A84(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_1D5B4D3E0(0);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 identifier];
  if (!v11)
  {
    sub_1D726207C();
    v11 = sub_1D726203C();
  }

  v12 = [objc_opt_self() nss:v11 NewsURLForPuzzleID:?];

  if (v12)
  {
    sub_1D72584EC();

    v13 = sub_1D72585BC();
    (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  }

  else
  {
    v14 = sub_1D72585BC();
    (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  }

  sub_1D5EB8540(v10, &v2[OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_puzzleURL]);
  *&v2[OBJC_IVAR____TtC8NewsFeed34SharingPuzzleURLActivityItemSource_linkPresentationSource] = a2;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

uint64_t type metadata accessor for SharingPuzzleURLActivityItemSource(uint64_t a1)
{
  result = qword_1EC88C5F0;
  if (!qword_1EC88C5F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6815C84(uint64_t a1)
{
  sub_1D5B4D3E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1D6815D58()
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D6815DCC(uint64_t a1)
{
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D6815E44(uint64_t a1)
{
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D6815EB4(uint64_t a1)
{
  v1 = FormatTagBinding.Asset.rawValue.getter();
  v3 = v2;
  if (v1 == FormatTagBinding.Asset.rawValue.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D72646CC();
  }

  return v6 & 1;
}

unint64_t sub_1D6815F54()
{
  result = qword_1EDF29D08;
  if (!qword_1EDF29D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29D08);
  }

  return result;
}

NewsFeed::FeedScoredTag __swiftcall FeedScoredTag.init(tagID:score:)(Swift::String tagID, Swift::Double score)
{
  *v2 = tagID;
  *(v2 + 16) = score;
  result.tagID = tagID;
  result.score = score;
  return result;
}

uint64_t FeedScoredTag.identifier.getter()
{
  v1 = *v0;

  return v1;
}

BOOL static FeedScoredTag.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

BOOL sub_1D681604C(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    return v2 == v3;
  }

  v5 = sub_1D72646CC();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_1D68160C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D5D64DD0(a1, v13);
  v4 = v14;
  if (v14)
  {
    v5 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v4 = (*(v5 + 16))(v4, v5);
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D6330678(v13);
    v7 = 0;
  }

  sub_1D5D64DD0(a1, v13);
  v8 = v14;
  if (v14)
  {
    v9 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    v10 = (*(v9 + 24))(v8, v9);
    v8 = v11;
    sub_1D6330678(a1);
    result = __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1D6330678(a1);
    result = sub_1D6330678(v13);
    v10 = 0;
  }

  *a2 = v4;
  a2[1] = v7;
  a2[2] = v10;
  a2[3] = v8;
  return result;
}

uint64_t sub_1D68161E0()
{
  if (*v0)
  {
    return 0x656C746974;
  }

  else
  {
    return 1701667182;
  }
}

void sub_1D6816210(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1D72646CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D72646CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D68162E8(uint64_t a1)
{
  v2 = sub_1D68164E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6816324(uint64_t a1)
{
  v2 = sub_1D68164E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DebugInspectionGroup.encode(to:)(void *a1)
{
  sub_1D6816744(0, &qword_1EC88C600, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v12 - v7;
  v9 = *(v1 + 16);
  v12[1] = *(v1 + 24);
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68164E0();
  sub_1D7264B5C();
  v14 = 0;
  v10 = v12[3];
  sub_1D726437C();
  if (!v10)
  {
    v13 = 1;
    sub_1D726437C();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D68164E0()
{
  result = qword_1EC88C608;
  if (!qword_1EC88C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C608);
  }

  return result;
}

void DebugInspectionGroup.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6816744(0, &qword_1EC88C610, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D68164E0();
  sub_1D7264B0C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    v11 = sub_1D726422C();
    v13 = v12;
    v18 = v11;
    v19 = 1;
    v14 = sub_1D726422C();
    v16 = v15;
    (*(v7 + 8))(v10, v6);
    *a2 = v18;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

void sub_1D6816744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D68164E0();
    v7 = a3(a1, &type metadata for DebugInspectionGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D68167FC()
{
  result = qword_1EC88C618;
  if (!qword_1EC88C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C618);
  }

  return result;
}

unint64_t sub_1D6816854()
{
  result = qword_1EC88C620;
  if (!qword_1EC88C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C620);
  }

  return result;
}

unint64_t sub_1D68168AC()
{
  result = qword_1EC88C628;
  if (!qword_1EC88C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88C628);
  }

  return result;
}