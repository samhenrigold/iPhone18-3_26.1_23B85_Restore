double sub_1AACE2878@<D0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = **a1;
  v6 = *a1[2];
  v7 = *a1[3];
  sub_1AACB4B38(a1[1], a3 + 16);
  *a3 = a2;
  *(a3 + 8) = v5;
  *(a3 + 57) = v6;
  *(a3 + 64) = v7;

  return result;
}

uint64_t sub_1AACE293C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AACE2978(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1AACE29C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AACE2A0C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t static ForEach<>._renderChartContent(_:_:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v59 = a8;
  v55 = a7;
  v54 = a6;
  v46 = a5;
  v45 = a4;
  v57 = a1;
  v60 = a9;
  v49 = *(*(a6 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v45 - v14;
  v51 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(swift_getAssociatedConformanceWitness() + 8);
  v53 = sub_1AAF90354();
  v56 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v20 = &v45 - v19;
  v48 = *a2;
  v47 = *(a2 + 1);
  v21 = v47 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment;
  swift_beginAccess();
  v52 = type metadata accessor for ChartContentRenderContext.Environment(0);
  v22 = *(v52 + 64);
  v23 = *(v21 + v22);
  *(v21 + v22) = 0;
  v71 = a3;
  v72 = a4;
  v24 = v54;
  v73 = a5;
  v74 = v54;
  v25 = v55;
  v75 = v55;
  sub_1AAF8EFE4();
  v26 = v57;
  sub_1AAF8EF94();
  sub_1AAF8FB74();
  (*(v51 + 8))(v18, a3);
  MEMORY[0x1AC598390](AssociatedTypeWitness, v50);
  (*(v58 + 8))(v15, AssociatedTypeWitness);
  v27 = MEMORY[0x1E69E7CC0];
  v70 = MEMORY[0x1E69E7CC0];
  v61 = a3;
  v62 = v45;
  v63 = v46;
  v64 = v24;
  v65 = v25;
  v66 = v59;
  v67 = v48;
  v28 = v47;
  v68 = v47;
  v69 = v26;
  sub_1AACE4024();
  v29 = v53;
  swift_getWitnessTable();
  sub_1AAF8F7B4();
  (*(v56 + 8))(v20, v29);
  v30 = v71;
  *(v21 + *(v52 + 64)) = v23;
  v31 = *(*(v28 + 16) + 24);
  v32 = *(v30 + 16);
  if (v32)
  {
    v71 = v27;
    sub_1AAD0F6F0(0, v32, 0);
    v33 = v71;
    v34 = *(v71 + 16);
    v35 = 32;
    do
    {
      v36 = *(v30 + v35);
      v71 = v33;
      v37 = *(v33 + 24);

      if (v34 >= v37 >> 1)
      {
        sub_1AAD0F6F0((v37 > 1), v34 + 1, 1);
        v33 = v71;
      }

      *(v33 + 16) = v34 + 1;
      *(v33 + 8 * v34 + 32) = v36;
      v35 += 8;
      ++v34;
      --v32;
    }

    while (v32);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
  }

  v38 = type metadata accessor for SgGroup(0);
  v39 = swift_allocBox();
  v41 = v40;
  v42 = v38[6];
  v43 = type metadata accessor for SgClipRect(0);
  result = (*(*(v43 - 8) + 56))(&v41[v42], 1, 1, v43);
  *v41 = v31;
  *(v41 + 1) = v33;
  *&v41[v38[7]] = 0x3FF0000000000000;
  *&v41[v38[8]] = v23;
  *&v41[v38[9]] = v27;
  v41[v38[10]] = 0;
  *v60 = v39;
  return result;
}

uint64_t sub_1AACE3014(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for CGSize(0);

  sub_1AACD889C(&v9);

  v10[0] = &v9;

  sub_1AACD889C(v8);

  v10[1] = v8;

  sub_1AACD889C(v7);

  v10[2] = v7;
  (a1)(&v11, v10);

  return v11;
}

void *sub_1AACE30F0()
{

  memcpy(__dst, (v0 + 80), 0x102uLL);
  sub_1AACBB254(__dst);
  sub_1AACE3448(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_environment, type metadata accessor for ChartContentRenderContext.Environment);

  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_xOffsetScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_yOffsetScale + 104));
  sub_1AACE4390(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 96), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolSizeScale + 104));
  sub_1AACE337C(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_symbolScale, &qword_1ED9B3E00, &qword_1ED9B3E08, &type metadata for AnyChartSymbolShape);
  v1 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 112);
  v7[6] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 96);
  v7[7] = v1;
  v8 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 128);
  v2 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 48);
  v7[2] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 32);
  v7[3] = v2;
  v3 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 80);
  v7[4] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 64);
  v7[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale + 16);
  v7[0] = *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_lineStyleScale);
  v7[1] = v4;
  sub_1AACE337C(v7, &qword_1ED9B3E10, &qword_1ED9B3E18, MEMORY[0x1E697DD48]);
  sub_1AACE4080(*(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 8), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 16), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 24), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 32), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 40), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 48), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 56), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 64), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 72), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 80), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 88), *(v0 + OBJC_IVAR____TtC6Charts25ChartContentRenderContext_foregroundStyleScale + 96));

  return v0;
}

uint64_t sub_1AACE337C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACE46B4(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AACE33D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1AAF3AA3C(0, a2, a3, a4, type metadata accessor for AnyConcreteScale);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1AACE3448(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE34A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1AACE3534(unint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v14 = type metadata accessor for SgGroup(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v82 - v19;
  v21 = a1 >> 60;
  if ((a1 >> 60) <= 0xE)
  {
    if (((1 << v21) & 0x7BF8) != 0)
    {

      return a1;
    }

    if (v21 == 2)
    {
      sub_1AAD117A0((a1 & 0xFFFFFFFFFFFFFFFLL) + 16, v96);
      sub_1AAD117A0(v96, v84);
      v23 = *(&v84[0] + 1);
      v24 = *(*(&v84[0] + 1) + 16);
      if (v24)
      {
        v97 = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v24, 0);
        v25 = 32;
        v26 = v97;
        do
        {
          v27 = *(v23 + v25);

          v28 = sub_1AACE3534(v27, a2, a3, a4, a5, a6, a7);

          v97 = v26;
          v30 = *(v26 + 16);
          v29 = *(v26 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1AAD0F6F0((v29 > 1), v30 + 1, 1);
            v26 = v97;
          }

          *(v26 + 16) = v30 + 1;
          *(v26 + 8 * v30 + 32) = v28;
          v25 += 8;
          --v24;
        }

        while (v24);
        sub_1AAF14C40(v96);
      }

      else
      {
        sub_1AAF14C40(v96);

        v26 = MEMORY[0x1E69E7CC0];
      }

      *(&v84[0] + 1) = v26;
      v77 = swift_allocObject();
      v78 = v84[1];
      *(v77 + 16) = v84[0];
      *(v77 + 32) = v78;
      v79 = v84[3];
      *(v77 + 48) = v84[2];
      *(v77 + 64) = v79;
      return v77 | 0x2000000000000000;
    }

    if (v21 == 10)
    {
      v31 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v32 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v33 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v34 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v35 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v96[4] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v96[5] = v35;
      v96[2] = v33;
      v96[3] = v34;
      v36 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v37 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v38 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v39 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v96[9] = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v96[10] = v39;
      v96[7] = v37;
      v96[8] = v38;
      v96[6] = v36;
      v96[0] = v31;
      v96[1] = v32;
      v40 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xA0);
      v93 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x90);
      v94 = v40;
      v95 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0xB0);
      v41 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
      v89 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
      v90 = v41;
      v42 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x80);
      v91 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x70);
      v92 = v42;
      v43 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v86 = v43;
      v44 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
      v87 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      v88 = v44;
      sub_1AAD1B82C(v96, v84);
      sub_1AAF50448(&v85, a2, a3, a4, a5, a6, a7);
      v45 = swift_allocObject();
      v46 = v94;
      *(v45 + 144) = v93;
      *(v45 + 160) = v46;
      *(v45 + 176) = v95;
      v47 = v90;
      *(v45 + 80) = v89;
      *(v45 + 96) = v47;
      v48 = v92;
      *(v45 + 112) = v91;
      *(v45 + 128) = v48;
      v49 = v86;
      *(v45 + 16) = v85;
      *(v45 + 32) = v49;
      v50 = v88;
      a1 = v45 | 0xA000000000000000;
      *(v45 + 48) = v87;
      *(v45 + 64) = v50;
      return a1;
    }
  }

  if (v21)
  {
    v60 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v83 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v61 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v62 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v63 = *(v60 + 16);
    if (v63)
    {
      *&v96[0] = MEMORY[0x1E69E7CC0];

      sub_1AAD0F6F0(0, v63, 0);
      v64 = 32;
      v65 = *&v96[0];
      do
      {
        v66 = *(v60 + v64);

        v67 = sub_1AACE3534(v66, a2, a3, a4, a5, a6, a7);

        *&v96[0] = v65;
        v69 = *(v65 + 16);
        v68 = *(v65 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1AAD0F6F0((v68 > 1), v69 + 1, 1);
          v65 = *&v96[0];
        }

        *(v65 + 16) = v69 + 1;
        *(v65 + 8 * v69 + 32) = v67;
        v64 += 8;
        --v63;
      }

      while (v63);

      v70 = *(v61 + 16);
      if (v70)
      {
        goto LABEL_27;
      }
    }

    else
    {

      v65 = MEMORY[0x1E69E7CC0];
      v70 = *(v61 + 16);
      if (v70)
      {
LABEL_27:
        *&v96[0] = MEMORY[0x1E69E7CC0];
        sub_1AAD0F6F0(0, v70, 0);
        v71 = 32;
        v72 = *&v96[0];
        do
        {
          v73 = *(v61 + v71);

          v74 = sub_1AACE3534(v73, a2, a3, a4, a5, a6, a7);

          *&v96[0] = v72;
          v76 = *(v72 + 16);
          v75 = *(v72 + 24);
          if (v76 >= v75 >> 1)
          {
            sub_1AAD0F6F0((v75 > 1), v76 + 1, 1);
            v72 = *&v96[0];
          }

          *(v72 + 16) = v76 + 1;
          *(v72 + 8 * v76 + 32) = v74;
          v71 += 8;
          --v70;
        }

        while (v70);

        goto LABEL_38;
      }
    }

    v72 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v81 = swift_allocObject();
    *(v81 + 16) = v83;
    *(v81 + 24) = v65;
    *(v81 + 32) = v72;
    *(v81 + 40) = v62;
    return v81 | 0x1000000000000000;
  }

  v83 = v18;
  v51 = swift_projectBox();
  sub_1AACE3CA8(v51, v20, type metadata accessor for SgGroup);
  sub_1AACE3CA8(v20, v16, type metadata accessor for SgGroup);
  v52 = *(v16 + 1);
  v53 = *(v52 + 16);
  if (v53)
  {
    v82 = v16;
    *&v96[0] = MEMORY[0x1E69E7CC0];
    sub_1AAD0F6F0(0, v53, 0);
    v54 = 32;
    v55 = *&v96[0];
    do
    {
      v56 = *(v52 + v54);

      v57 = sub_1AACE3534(v56, a2, a3, a4, a5, a6, a7);

      *&v96[0] = v55;
      v59 = *(v55 + 16);
      v58 = *(v55 + 24);
      if (v59 >= v58 >> 1)
      {
        sub_1AAD0F6F0((v58 > 1), v59 + 1, 1);
        v55 = *&v96[0];
      }

      *(v55 + 16) = v59 + 1;
      *(v55 + 8 * v59 + 32) = v57;
      v54 += 8;
      --v53;
    }

    while (v53);
    sub_1AACE40B8(v20, type metadata accessor for SgGroup);

    v16 = v82;
  }

  else
  {
    sub_1AACE40B8(v20, type metadata accessor for SgGroup);

    v55 = MEMORY[0x1E69E7CC0];
  }

  *(v16 + 1) = v55;
  a1 = swift_allocBox();
  sub_1AACE3DD4(v16, v80);
  return a1;
}

uint64_t sub_1AACE3BE0()
{

  if (*(v0 + 56))
  {
    sub_1AACB634C((v0 + 32));
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AACE3C28()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1AACE3C68()
{
  sub_1AACE56EC(v0[7], v0[8], v0[9], v0[10], v0[11]);

  return MEMORY[0x1EEE6BDD0](v0, 192, 7);
}

uint64_t sub_1AACE3CA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_1AACE3D30@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v8 = *a1;
  result = v5 + (v6 - v5) * v4(&v8);
  *a2 = result;
  return result;
}

unint64_t sub_1AACE3D90@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = sub_1AACE3534(**a1, **(a1 + 16), *(*(a1 + 16) + 8), *(*(a1 + 16) + 16), *(*(a1 + 16) + 24), **(a1 + 8), *(*(a1 + 8) + 8));
  *a2 = result;
  return result;
}

uint64_t sub_1AACE3DD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SgGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AACE3E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{

  sub_1AACB4A98(a5, a6);

  sub_1AACE3EF4(a8, a9);
}

void sub_1AACE3EF4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    sub_1AACE40AC(result, a2 & 1);
  }
}

uint64_t sub_1AACE3F0C(void *a1)
{
  if (*a1 >> 61 == 7)
  {
    return (*a1 >> 3) + 14;
  }

  else
  {
    return *a1 >> 60;
  }
}

uint64_t sub_1AACE3F2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x71)
  {
    *result = a2 - 114;
    if (a3 >= 0x72)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x72)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1AACE3F7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t type metadata accessor for SgShapeStyle(uint64_t a1)
{
  result = qword_1ED9B6610;
  if (!qword_1ED9B6610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1AACE4024()
{
  if (!qword_1ED9B2758)
  {
    v0 = sub_1AAF8F914();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED9B2758);
    }
  }
}

void sub_1AACE4080(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  if (a13 != 255)
  {
    sub_1AAE0BF5C(result, a2, a3, a4, a5, a6, a7, a8);
  }
}

void sub_1AACE40AC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1AACE40B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACE4118@<X0>(uint64_t (*a1)(void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  *a2 = result;
  return result;
}

uint64_t sub_1AACE416C@<X0>(void (*a1)(uint64_t *__return_ptr, void *, __n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t *a8@<X8>)
{
  v9 = *(a3 + 48);
  v10 = *(a3 + 16);
  v12[0] = *a3;
  v12[1] = v10;
  v12[2] = *(a3 + 32);
  v13 = v9;
  result = sub_1AACE148C(a1, a2, v12, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

uint64_t sub_1AACE41B8(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

char *sub_1AACE41D4(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
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

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1AAD6D1F0(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1AACE4318()
{
  sub_1AACE30F0();

  return swift_deallocClassInstance();
}

void sub_1AACE4390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14)
{
  if (a14 != 255)
  {
    sub_1AACE3E8C(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }
}

uint64_t sub_1AACE43C4@<X0>(uint64_t (*a1)(void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6]);
  *a2 = result;
  return result;
}

uint64_t sub_1AACE4414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_1AAF8E244();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1AACE4490(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1AACE44E0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1AACE4530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x72 && *(a1 + 8))
  {
    return (*a1 + 114);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x71)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1AACE4580(uint64_t a1, int a2)
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

void sub_1AACE45C8(uint64_t a1)
{
  if (!qword_1ED9B3E58)
  {
    sub_1AACC9BB0(255, qword_1ED9B3E60, &type metadata for AnyChartContent, MEMORY[0x1E69E6720]);
    sub_1AACC9E68(255);
    sub_1AACCA000(255, &qword_1ED9B2AB8, MEMORY[0x1E69E5E28]);
    sub_1AACC9CF4(255);
    sub_1AACC9D70(255);
    sub_1AACC9DEC(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B3E58);
    }
  }
}

void sub_1AACE46B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACAE398(255, a3, a4, type metadata accessor for AnyConcreteScale);
    v5 = sub_1AAF8FE74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

double sub_1AACE4720(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_1AACE47D8@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[4];
  v18 = a1[3];
  v19 = v6;
  v7 = *a1;
  v8 = *a1;
  v17[1] = a1[1];
  v17[2] = v5;
  v14 = v5;
  v15 = v18;
  v16 = a1[4];
  v17[0] = v7;
  v9 = *a2;
  v12 = v8;
  v13 = v4;
  v11 = v9;
  sub_1AACE477C(v17, v20);
  static AxisTick._renderAxisMark(_:_:)(&v12, &v11, a3);
  v20[2] = v14;
  v20[3] = v15;
  v20[4] = v16;
  v20[0] = v12;
  v20[1] = v13;
  return sub_1AACE1438(v20);
}

uint64_t *sub_1AACE487C@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  result = sub_1AACE1D48(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32));
  *a2 = result;
  return result;
}

void sub_1AACE48F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata, a2);
    }
  }
}

__n128 sub_1AACE4990(uint64_t a1, uint64_t a2)
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

void sub_1AACE49D8(uint64_t a1)
{
  if (!qword_1ED9B16F8)
  {
    sub_1AAD9B578();
    v1 = sub_1AAF8F3F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B16F8);
    }
  }
}

void sub_1AACE4A3C(uint64_t a1)
{
  if (!qword_1ED9B1D68)
  {
    type metadata accessor for SgMeasurements(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B1D68);
    }
  }
}

void sub_1AACE4ACC(uint64_t a1)
{
  if (!qword_1ED9B67A0)
  {
    type metadata accessor for SgClipRect(255);
    v1 = sub_1AAF8FE74();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B67A0);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ContourLineValues.Stride(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IndexedChannel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 9;
  v5 = v3 - 9;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IndexedChannel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AxisMarkPosition.Storage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1AACE4C50()
{
  result = qword_1ED9B1D50;
  if (!qword_1ED9B1D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED9B1D50);
  }

  return result;
}

uint64_t sub_1AACE4CB8(uint64_t a1, SEL *a2, uint64_t *a3)
{
  v4 = [objc_opt_self() *a2];
  result = sub_1AAF8EC34();
  *a3 = result;
  return result;
}

void sub_1AACE4D00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1AACDF9B8(255);
    v7 = v6;
    v8 = sub_1AACE046C();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1AACE4DD8(uint64_t a1, uint64_t a2)
{
  v4 = v2[4];
  if (*(v4 + 16) && (v5 = a2, v6 = sub_1AACC9B78(a2), v8 = v7, a2 = v5, (v8 & 1) != 0) && (v9 = *(*(v4 + 56) + 8 * v6), (v9 & 0x8000000000000000) == 0))
  {
    v10 = v2[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1AADB8130(v10);
    }

    if (v9 >= v10[2])
    {
      __break(1u);
    }

    else
    {
      v10[5 * v9 + 7] = a1;

      v2[1] = v10;
      if (v9 != v2[2])
      {
        v11 = v10[2];
        v12[0] = (v10 + 4);
        v12[1] = v11;
        sub_1AACFD36C(v12, v9, v2);
        v2[1] = v10;
      }
    }
  }

  else
  {

    sub_1AACE4F04(a1, a2, 0);
  }
}

uint64_t sub_1AACE4F04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v8 = v3[1];
  v9 = v8[2];
  if (v9 >= *v3)
  {
    a3 = v3[3];
    if (a3 < v9)
    {
      v15 = v8 + 4;
      v4 = 40 * a3;
      if (LOBYTE(v8[5 * a3 + 8]) != 1)
      {
LABEL_16:
        v16 = sub_1AACC9B78(*(v15 + v4 + 16));
        if ((v17 & 1) == 0)
        {
          goto LABEL_19;
        }

        v9 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = v3[4];
        v25[0] = v5[4];
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_18;
        }

        goto LABEL_32;
      }

      while (1)
      {
        a3 = v15[5 * a3];
        if (a3 >= v9)
        {
          break;
        }

        v4 = 40 * a3;
        if ((v8[5 * a3 + 8] & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    v8 = sub_1AACE5360(0, v8[2] + 1, 1, v8);
LABEL_9:
    v13 = v8[2];
    v12 = v8[3];
    if (v13 >= v12 >> 1)
    {
      v8 = sub_1AACE5360((v12 > 1), v13 + 1, 1, v8);
    }

    v8[2] = v13 + 1;
    v14 = &v8[5 * v13];
    v14[4] = -1;
    v14[5] = v4;
    v14[6] = a2;
    v14[7] = a1;
    *(v14 + 64) = a3 & 1;
    v5[1] = v8;
    return v9;
  }

  v4 = v3[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
LABEL_6:
    v5[2] = v9;
    if ((v5[3] & 0x8000000000000000) != 0)
    {
      v5[3] = v9;
    }

    v11 = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v5[4];
    sub_1AACE51D4(v9, a2, v11);
    v5[4] = v25[0];

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (v4 < v8[2])
    {
      v8[5 * v4 + 4] = v9;
      goto LABEL_6;
    }

    __break(1u);
LABEL_32:
    sub_1AAD94F24();
    v20 = v25[0];
LABEL_18:
    sub_1AAD928F4(v9, v20, v19);
    v5[4] = v20;
LABEL_19:
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = v5[4];
    sub_1AACE51D4(a3, a2, v21);
    v5[4] = v25[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1AADB8130(v8);
    }

    if (a3 < v8[2])
    {
      break;
    }

    __break(1u);
LABEL_30:
    v8 = sub_1AADB8130(v8);
  }

  v22 = v8 + v4 + 32;
  *(v22 + 2) = a2;
  *(v22 + 3) = a1;

  v5[1] = v8;
  if (a3 == v5[2])
  {
    return a3;
  }

  v23 = v8[2];
  v25[0] = (v8 + 4);
  v25[1] = v23;
  sub_1AACFD36C(v25, a3, v5);
  v5[1] = v8;
  return v5[2];
}

unint64_t sub_1AACE51D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1AACC9B78(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1AAD94F24();
    result = v17;
    goto LABEL_8;
  }

  sub_1AACE0504(v14, a3 & 1);
  result = sub_1AACC9B78(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1AAF905B4();
  __break(1u);
  return result;
}

void sub_1AACE52F8(uint64_t a1)
{
  if (!qword_1ED9B1730)
  {
    v2 = type metadata accessor for SgMeasurements.CacheContent();
    v3 = type metadata accessor for LRUCache.Element(a1, MEMORY[0x1E69E76D8], v2, MEMORY[0x1E69E76E8]);
    if (!v4)
    {
      atomic_store(v3, &qword_1ED9B1730);
    }
  }
}

void *sub_1AACE5360(void *result, int64_t a2, char a3, void *a4)
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
    sub_1AAD6CF88(0, &qword_1ED9B1690, sub_1AACE52F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    sub_1AACE52F8(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

__n128 AxisGridLine.init(centered:stroke:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v4[7] = *a2;
  *&v4[23] = *(a2 + 16);
  *(a3 + 17) = *v4;
  *&v4[39] = *(a2 + 32);
  *a3 = a1;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
  *(a3 + 33) = *&v4[16];
  result = *&v4[31];
  *(a3 + 48) = *&v4[31];
  *(a3 + 64) = 1;
  *(a3 + 72) = 0;
  return result;
}

uint64_t sub_1AACE5524()
{
  v1 = *(v0 + 64);
  if (v1 == 255)
  {
    return 0;
  }

  if (v1)
  {
    return 0;
  }

  v2 = *(v0 + 56);
  v3 = *(v2 + 16);
  if (!v3)
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * v3 + 24);
  }
}

uint64_t sub_1AACE555C()
{
  v1 = *(v0 + 8);
  MEMORY[0x1AC5992C0](*v0);
  return MEMORY[0x1AC5992C0](v1);
}

uint64_t getEnumTagSinglePayload for PrimitivePlottableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

double sub_1AACE56EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    sub_1AAD04750(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1AACE5740(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

BOOL sub_1AACE578C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *(a1 + 24);
  v4 = *(a1 + 56);
  v28[2] = *(a1 + 40);
  v28[3] = v4;
  v29 = a1[72];
  v28[0] = *(a1 + 8);
  v28[1] = v3;
  v5 = *a2;
  v6 = *(a2 + 24);
  v7 = *(a2 + 56);
  v30[2] = *(a2 + 40);
  v30[3] = v7;
  v31 = a2[72];
  v30[0] = *(a2 + 8);
  v30[1] = v6;
  if (v2 == v5)
  {
    v8 = *(a1 + 24);
    v9 = *(a1 + 56);
    v21 = *(a1 + 40);
    v22 = v9;
    v23 = a1[72];
    v19 = *(a1 + 8);
    v20 = v8;
    v10 = *(a2 + 24);
    v11 = *(a2 + 56);
    v16 = *(a2 + 40);
    v17 = v11;
    v18 = a2[72];
    v14 = *(a2 + 8);
    v15 = v10;
    sub_1AACB1E30(v28, v26);
    sub_1AACB1E30(v30, v26);
    v12 = sub_1AACD22F8(&v19, &v14);
    v24[2] = v16;
    v24[3] = v17;
    v25 = v18;
    v24[0] = v14;
    v24[1] = v15;
    sub_1AACB24B4(v24);
    v26[2] = v21;
    v26[3] = v22;
    v27 = v23;
    v26[0] = v19;
    v26[1] = v20;
    sub_1AACB24B4(v26);
  }

  else
  {
    return 0;
  }

  return v12;
}

void sub_1AACE58B4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    type metadata accessor for AxisMarkLayoutContext();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

__n128 sub_1AACE5948(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AACE5968(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1AACCB8F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1AACE59E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = v4;
  v285 = a4;
  v271 = a3;
  v268 = *&a2;
  v312 = a1;
  v6 = type metadata accessor for CalendarBinningUnit(0);
  v269 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v277 = &v267 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v292 = &v267 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v278 = &v267 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v267 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v296 = &v267 - v16;
  v17 = sub_1AAF8CBA4();
  v18 = *(v17 - 8);
  v308 = v17;
  v309 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v276 = &v267 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v284 = &v267 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v300 = &v267 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v295 = &v267 - v25;
  v26 = type metadata accessor for DateBins(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v274 = &v267 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v282 = &v267 - v29;
  sub_1AACD57C4(0);
  v290 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v267 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v286 = &v267 - v34;
  v35 = sub_1AAF8CA64();
  v306 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v301 = &v267 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v267 - v38;
  sub_1AACEC8E4(0);
  v307 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v279 = &v267 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v287 = &v267 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v270 = &v267 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v288 = &v267 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v272 = &v267 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v280 = &v267 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v291 = (&v267 - v53);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v267 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v293 = &v267 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v303 = (&v267 - v60);
  MEMORY[0x1EEE9AC00](v61);
  v305 = &v267 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v304 = &v267 - v64;
  sub_1AACAF184(0, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v273 = &v267 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v298 = (&v267 - v68);
  v310 = sub_1AAF8CB94();
  v69 = *(v310 - 8);
  MEMORY[0x1EEE9AC00](v310);
  v275 = &v267 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v71);
  v299 = &v267 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v302 = &v267 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v294 = &v267 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v297 = (&v267 - v78);
  v79 = type metadata accessor for AxisMarkValues.Storage.Stride(0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v267 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v283 = v5;
  sub_1AACB81D4(v5, v81, type metadata accessor for AxisMarkValues.Storage.Stride);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v84 = *v81;
      if (v81[8] == 1)
      {
        return v84;
      }
    }

    sub_1AADD90F0();
    return MEMORY[0x1E69E7CC0];
  }

  v313 = v35;
  if (EnumCaseMultiPayload)
  {
    v281 = v6;
    sub_1AACAF0D8(0);
    v118 = *&v81[*(v117 + 48)];
    v119 = *(v117 + 64);
    (*(v69 + 32))(v297, v81, v310);
    sub_1AACB75FC(&v81[v119], v298, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
    sub_1AACEC978(v312);
    sub_1AAF8C844();
    v120 = v301;
    sub_1AAF8C844();
    sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    result = sub_1AAF8F584();
    if (result)
    {
      v292 = v118;
      v288 = v56;
      v287 = v14;
      v121 = v306;
      v122 = *(v306 + 32);
      v123 = v286;
      v122(v286, v39, v35);
      v289 = v69;
      v124 = v290;
      v122((v123 + v290[12]), v120, v35);
      sub_1AACB81D4(v123, v32, sub_1AACD57C4);
      v125 = v124[12];
      v122(v304, v32, v35);
      v126 = *(v121 + 8);
      v126(&v32[v125], v35);
      sub_1AACB812C(v123, v32, sub_1AACD57C4);
      v127 = v304;
      v122(&v304[*(v307 + 36)], &v32[v124[12]], v35);
      v311 = v126;
      v312 = v121 + 8;
      v126(v32, v35);
      v128 = v289 + 16;
      v129 = *(v289 + 16);
      v129(v294, v297, v310);
      sub_1AACB81D4(v127, v305, sub_1AACEC8E4);
      v130 = v273;
      sub_1AACAEB18(v298, v273, &qword_1ED9B6B90, MEMORY[0x1E6969AE8]);
      v131 = v308;
      v132 = v309;
      v133 = v309[6];
      v134 = v133(v130, 1, v308);
      v291 = v128;
      if (v134 == 1)
      {
        (v132[2])(v295, v285, v131);
        if (v133(v130, 1, v131) != 1)
        {
          sub_1AACD1518(v130, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
        }
      }

      else
      {
        (v132[4])(v295, v130, v131);
      }

      v135 = v302;
      v129(v302, v294, v310);
      v136 = v129;
      v290 = v129;
      v138 = (v306 + 16);
      v137 = *(v306 + 16);
      v137(v39, v305, v313);
      v286 = v132[2];
      v139 = v308;
      (v286)(v300, v295, v308);
      v140 = v296;
      v141 = v135;
      v142 = v135;
      v143 = v310;
      v136(v296, v141, v310);
      v144 = v281;
      v145 = v140;
      *&v140[*(v281 + 20)] = v292;
      v146 = v144;
      v147 = v145;
      v148 = v313;
      v137(&v145[*(v144 + 24)], v39, v313);
      v149 = &v147[*(v146 + 28)];
      v150 = v300;
      v151 = v286;
      (v286)(v149, v300, v139);
      (v290)(v299, v142, v143);
      v152 = v301;
      v291 = v137;
      v290 = v138;
      v137(v301, v39, v148);
      v153 = v284;
      (v151)(v284, v150, v139);
      type metadata accessor for CalendarBinningImpl(0);
      swift_allocObject();
      v154 = sub_1AACE7AF4(v299, v292, v152, v153);
      v155 = v309[1];
      ++v309;
      v155(v150, v139);
      v311(v39, v148);
      v156 = v289 + 8;
      v157 = v302;
      v302 = *(v289 + 8);
      (v302)(v157, v310);
      v158 = v296;
      *&v296[*(v281 + 32)] = v154;
      sub_1AACB81D4(v158, v287, type metadata accessor for CalendarBinningUnit);
      v159 = v303;
      sub_1AACB81D4(v305, v303, sub_1AACEC8E4);
      sub_1AACEE9E4(v159);
      v161 = v160;
      sub_1AACEE9E4(v159);
      v163 = v162;
      sub_1AACEE9E4(v159 + *(v307 + 36));
      v165 = v164;
      sub_1AACE8E98(v163, v293);
      result = sub_1AACE8E98(v165, v288);
      v166 = v165 - v163;
      if (!__OFSUB__(v165, v163))
      {
        v167 = v166 + 1;
        if (!__OFADD__(v166, 1))
        {
          result = sub_1AAF8CA14();
          v168 = v291;
          if (result)
          {
            v169 = __OFSUB__(v167--, 1);
            if (v169)
            {
              goto LABEL_76;
            }
          }

          v170 = v288;
          v171 = sub_1AAF8CA14();
          sub_1AACB767C(v170, sub_1AACEC8E4);
          sub_1AACB767C(v293, sub_1AACEC8E4);
          if (v171)
          {
            v169 = __OFSUB__(v167--, 1);
            v172 = v310;
            v173 = v282;
            if (!v169)
            {
              goto LABEL_31;
            }

            __break(1u);
          }

          v172 = v310;
          v173 = v282;
LABEL_31:
          sub_1AACB767C(v303, sub_1AACEC8E4);
          sub_1AACB767C(v296, type metadata accessor for CalendarBinningUnit);
          v155(v295, v308);
          sub_1AACB767C(v305, sub_1AACEC8E4);
          v174 = v172;
          v175 = v302;
          (v302)(v294, v174);
          sub_1AACE99D0(0);
          v176 = v156;
          v178 = *(v177 + 48);
          v179 = *(v177 + 64);
          sub_1AACB812C(v287, v173, type metadata accessor for CalendarBinningUnit);
          *(v173 + v178) = v161;
          *(v173 + v179) = v167;
          type metadata accessor for DateBins.Storage(0);
          swift_storeEnumTagMultiPayload();
          v180 = DateBins.thresholds.getter();
          v181 = type metadata accessor for AxisMarkValues.Storage(0);
          MEMORY[0x1EEE9AC00](v181);
          *(&v267 - 32) = v182 & 1;
          *(&v267 - 3) = v304;
          *(&v267 - 16) = v183 & 1;
          sub_1AACE9C1C(sub_1AACE9F14, (&v267 - 6), v180);
          v185 = v184;
          v186 = v173;
          v187 = v184[2];
          if (v187)
          {
            v289 = v176;
            v314 = MEMORY[0x1E69E7CC0];
            sub_1AACEF664(0, v187, 0);
            v84 = v314;
            v188 = (*(v306 + 80) + 32) & ~*(v306 + 80);
            v309 = v185;
            v189 = v185 + v188;
            v190 = *(v306 + 72);
            do
            {
              v191 = v313;
              v168(v39, v189, v313);
              sub_1AAF8C854();
              v193 = v192;
              v311(v39, v191);
              v314 = v84;
              v195 = *(v84 + 16);
              v194 = *(v84 + 24);
              if (v195 >= v194 >> 1)
              {
                sub_1AACEF664((v194 > 1), v195 + 1, 1);
                v84 = v314;
              }

              *(v84 + 16) = v195 + 1;
              *(v84 + 8 * v195 + 32) = v193;
              v189 += v190;
              --v187;
            }

            while (v187);

            sub_1AACB767C(v282, type metadata accessor for DateBins);
            sub_1AACD1518(v298, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            (v302)(v297, v310);
          }

          else
          {

            sub_1AACB767C(v186, type metadata accessor for DateBins);
            sub_1AACD1518(v298, &qword_1ED9B6B90, MEMORY[0x1E6969AE8], MEMORY[0x1E69E6720], sub_1AACAF184);
            v175(v297, v310);
            v84 = MEMORY[0x1E69E7CC0];
          }

          v196 = v304;
          goto LABEL_68;
        }

LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_72;
  }

  v83 = *v81;
  if (v81[8])
  {
    v83 = 4;
  }

  v84 = MEMORY[0x1E69E7CC0];
  if (v83 < 1)
  {
    return v84;
  }

  v304 = v83;
  v305 = v32;
  v281 = v6;
  v289 = v69;
  sub_1AACEC978(v312);
  sub_1AAF8C844();
  v85 = v301;
  sub_1AAF8C844();
  v86 = v35;
  v298 = sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  result = sub_1AAF8F584();
  if ((result & 1) == 0)
  {
    goto LABEL_73;
  }

  v88 = v306;
  v89 = *(v306 + 32);
  v90 = v286;
  v89(v286, v39, v86);
  v91 = v290;
  v89((v90 + v290[12]), v85, v86);
  v92 = v305;
  sub_1AACB81D4(v90, v305, sub_1AACD57C4);
  v312 = v91[12];
  v93 = v291;
  v89(v291, v92, v86);
  v94 = *(v88 + 8);
  v94(&v92[v312], v86);
  sub_1AACB812C(v90, v92, sub_1AACD57C4);
  v95 = v93 + *(v307 + 36);
  v96 = &v92[v290[12]];
  v303 = v89;
  v89(v95, v96, v86);
  v311 = v94;
  v312 = v88 + 8;
  v94(v92, v86);
  v97 = v93;
  v98 = v280;
  sub_1AACB81D4(v97, v280, sub_1AACEC8E4);
  if ((v271 & 1) == 0 && v268 > 0.0)
  {
    sub_1AAF8CA24();
    v99 = v313;
    result = sub_1AAF8F584();
    if ((result & 1) == 0)
    {
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    v100 = v286;
    (*(v306 + 16))(v286, v98, v99);
    sub_1AACB767C(v98, sub_1AACEC8E4);
    v101 = v290;
    v102 = v303;
    (v303)(v100 + v290[12], v39, v99);
    v103 = v102;
    v104 = v305;
    sub_1AACB81D4(v100, v305, sub_1AACD57C4);
    v105 = v101[12];
    v103(v98, v104, v99);
    v106 = &v104[v105];
    v107 = v311;
    v311(v106, v99);
    sub_1AACB812C(v100, v104, sub_1AACD57C4);
    (v303)(v98 + *(v307 + 36), &v104[v101[12]], v99);
    v107(v104, v99);
  }

  v108 = v272;
  sub_1AACB81D4(v98, v272, sub_1AACEC8E4);
  v109 = type metadata accessor for AxisMarkValues.Storage(0);
  v110 = *(v283 + *(v109 + 20));
  v111 = *(v283 + *(v109 + 24));
  result = sub_1AADDFFE8(v108, v285);
  v112 = result;
  v113 = *(result + 16);
  LODWORD(v295) = v111;
  LODWORD(v294) = v110;
  if (v113 == 1)
  {
    v293 = 0;
    v114 = result + ((*(v269 + 80) + 32) & ~*(v269 + 80));
    v115 = v289;
    v116 = v281;
    goto LABEL_51;
  }

  if (!v113)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  MEMORY[0x1EEE9AC00](result);
  *(&v267 - 4) = v108;
  LODWORD(v305) = v110 & 1;
  *(&v267 - 24) = v110 & 1;
  LODWORD(v303) = v111 & 1;
  *(&v267 - 23) = v111 & 1;
  *(&v267 - 2) = v304;
  v197 = v112;
  sub_1AADE595C(sub_1AADD996C, (&v267 - 6), v112);
  v293 = 0;
  v199 = v198;
  v200 = *(v198 + 16);
  v201 = MEMORY[0x1E69E7CC0];
  if (v200)
  {
    v298 = v113;
    v314 = MEMORY[0x1E69E7CC0];
    sub_1AAD214F4(0, v200, 0);
    v201 = v314;
    v202 = *(v314 + 16);
    v203 = v199;
    v204 = (v199 + 40);
    do
    {
      v206 = *v204;
      v204 += 2;
      v205 = v206;
      v314 = v201;
      v207 = *(v201 + 24);
      if (v202 >= v207 >> 1)
      {
        sub_1AAD214F4((v207 > 1), v202 + 1, 1);
        v201 = v314;
      }

      *(v201 + 16) = v202 + 1;
      *(v201 + 8 * v202++ + 32) = v205;
      --v200;
    }

    while (v200);
    v108 = v272;
    v113 = v298;
    v199 = v203;
  }

  v208 = sub_1AADE6A18(v201);
  v210 = v209;

  if (v210)
  {
    goto LABEL_82;
  }

  MEMORY[0x1EEE9AC00](result);
  *(&v267 - 6) = v199;
  *(&v267 - 5) = v208;
  *(&v267 - 4) = v197;
  *(&v267 - 3) = v108;
  *(&v267 - 16) = v305;
  *(&v267 - 15) = v303;
  *(&v267 - 1) = v304;
  result = sub_1AADE7340(sub_1AADD9998, (&v267 - 8), 0, v113);
  if ((v211 & 1) == 0)
  {
    v212 = result;

    v115 = v289;
    v116 = v281;
    if ((v212 & 0x8000000000000000) != 0)
    {
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if (v212 >= *(v197 + 16))
    {
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v114 = v197 + ((*(v269 + 80) + 32) & ~*(v269 + 80)) + *(v269 + 72) * v212;
LABEL_51:
    v298 = type metadata accessor for CalendarBinningUnit;
    v213 = v278;
    sub_1AACB81D4(v114, v278, type metadata accessor for CalendarBinningUnit);

    sub_1AACB767C(v108, sub_1AACEC8E4);
    v214 = *(v115 + 16);
    v215 = v275;
    v216 = v310;
    v214(v275, v213, v310);
    v217 = *(v213 + *(v116 + 20));
    v303 = v214;
    v304 = v217;
    v297 = sub_1AACEC8E4;
    v218 = v288;
    sub_1AACB81D4(v291, v288, sub_1AACEC8E4);
    v219 = v309[2];
    v220 = v276;
    v219(v276, v285, v308);
    v296 = v219;
    v214(v302, v215, v216);
    v305 = *(v306 + 16);
    (v305)(v39, v218, v313);
    v221 = v308;
    v219(v300, v220, v308);
    v222 = v292;
    v223 = v302;
    v224 = v310;
    (v303)(v292, v302, v310);
    v225 = v281;
    *(v222 + *(v281 + 20)) = v304;
    v226 = v222 + *(v225 + 24);
    v227 = v313;
    (v305)(v226, v39, v313);
    v228 = v292 + *(v225 + 28);
    v229 = v300;
    v230 = v221;
    v231 = v296;
    (v296)(v228, v300, v230);
    (v303)(v299, v223, v224);
    v232 = v301;
    (v305)(v301, v39, v227);
    v233 = v284;
    v234 = v308;
    v231(v284, v229, v308);
    type metadata accessor for CalendarBinningImpl(0);
    swift_allocObject();
    v235 = sub_1AACE7AF4(v299, v304, v232, v233);
    v236 = v309[1];
    ++v309;
    v304 = v236;
    (v236)(v229, v234);
    v237 = v289;
    v311(v39, v313);
    v303 = *(v237 + 8);
    (v303)(v302, v310);
    v238 = v292;
    *(v292 + *(v281 + 32)) = v235;
    sub_1AACB81D4(v238, v277, v298);
    v239 = v270;
    sub_1AACB81D4(v288, v270, v297);
    sub_1AACEE9E4(v239);
    v302 = v240;
    sub_1AACEE9E4(v239);
    v242 = v241;
    sub_1AACEE9E4(v239 + *(v307 + 36));
    v244 = v243;
    sub_1AACE8E98(v242, v287);
    result = sub_1AACE8E98(v244, v279);
    v245 = v244 - v242;
    if (!__OFSUB__(v244, v242))
    {
      v246 = v245 + 1;
      if (!__OFADD__(v245, 1))
      {
        result = sub_1AAF8CA14();
        v247 = v305;
        if ((result & 1) == 0 || (v169 = __OFSUB__(v246, 1), --v246, !v169))
        {
          v248 = v279;
          v249 = sub_1AAF8CA14();
          sub_1AACB767C(v248, sub_1AACEC8E4);
          sub_1AACB767C(v287, sub_1AACEC8E4);
          if (v249)
          {
            v169 = __OFSUB__(v246--, 1);
            v250 = v274;
            if (!v169)
            {
              goto LABEL_60;
            }

            __break(1u);
          }

          v250 = v274;
LABEL_60:
          sub_1AACB767C(v239, sub_1AACEC8E4);
          sub_1AACB767C(v292, type metadata accessor for CalendarBinningUnit);
          (v304)(v276, v308);
          sub_1AACB767C(v288, sub_1AACEC8E4);
          (v303)(v275, v310);
          sub_1AACE99D0(0);
          v252 = *(v251 + 48);
          v253 = *(v251 + 64);
          sub_1AACB812C(v277, v250, type metadata accessor for CalendarBinningUnit);
          *(v250 + v252) = v302;
          *(v250 + v253) = v246;
          type metadata accessor for DateBins.Storage(0);
          swift_storeEnumTagMultiPayload();
          v254 = DateBins.thresholds.getter();
          MEMORY[0x1EEE9AC00](v254);
          *(&v267 - 32) = v294 & 1;
          *(&v267 - 3) = v291;
          *(&v267 - 16) = v295 & 1;
          sub_1AACE9C1C(sub_1AACE9EEC, (&v267 - 6), v255);
          v257 = v256;
          v258 = *(v256 + 16);
          if (v258)
          {
            v314 = v84;
            sub_1AACEF664(0, v258, 0);
            v84 = v314;
            v259 = (*(v306 + 80) + 32) & ~*(v306 + 80);
            v310 = v257;
            v260 = v257 + v259;
            v261 = *(v306 + 72);
            do
            {
              v262 = v313;
              (v247)(v39, v260, v313);
              sub_1AAF8C854();
              v264 = v263;
              v311(v39, v262);
              v314 = v84;
              v266 = *(v84 + 16);
              v265 = *(v84 + 24);
              if (v266 >= v265 >> 1)
              {
                sub_1AACEF664((v265 > 1), v266 + 1, 1);
                v84 = v314;
              }

              *(v84 + 16) = v266 + 1;
              *(v84 + 8 * v266 + 32) = v264;
              v260 += v261;
              --v258;
            }

            while (v258);

            sub_1AACB767C(v274, type metadata accessor for DateBins);
            sub_1AACB767C(v278, type metadata accessor for CalendarBinningUnit);
            sub_1AACB767C(v280, sub_1AACEC8E4);
          }

          else
          {

            sub_1AACB767C(v250, type metadata accessor for DateBins);
            sub_1AACB767C(v278, type metadata accessor for CalendarBinningUnit);
            sub_1AACB767C(v280, sub_1AACEC8E4);
            v84 = MEMORY[0x1E69E7CC0];
          }

          v196 = v291;
LABEL_68:
          sub_1AACB767C(v196, sub_1AACEC8E4);
          return v84;
        }

        goto LABEL_80;
      }

      goto LABEL_75;
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_1AACE7A94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1AACE59E8(**(a1 + 8), **(a1 + 16), *(*(a1 + 16) + 8), *(a1 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_1AACE7AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a3;
  v8 = sub_1AAF8CAB4();
  v78 = *(v8 - 8);
  v79 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v75 - v11;
  v12 = sub_1AAF8CB94();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v82 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACECC0C(0, &qword_1ED9B1678, MEMORY[0x1E6968130], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v75 - v16;
  v81 = sub_1AAF8CA64();
  v18 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v20 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v75 - v23;
  v85 = v13;
  v86 = v12;
  v80 = *(v13 + 16);
  v80(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component, a1, v12, v22);
  v88 = a2;
  *(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride) = a2;
  v84 = a4;
  v25 = sub_1AACECCD4(a4);
  v89 = v4;
  *(v4 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_cache) = v25;

  v87 = a1;
  sub_1AACED38C(a1, v90, v17);

  v26 = sub_1AAF8C6F4();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v17, 1, v26);
  v29 = (v18 + 32);
  v83 = v18;
  if (v28 == 1)
  {
    sub_1AADE4234(v17);
    v30 = *(v18 + 2);
    v18 += 16;
    v31 = v90;
    v32 = v81;
    v30(v24, v90, v81);
    v33 = *(v18 + 2);
  }

  else
  {
    sub_1AAF8C6E4();
    (*(v27 + 8))(v17, v26);
    v33 = *v29;
    v34 = v20;
    v32 = v81;
    (*v29)(v24, v34, v81);
    v31 = v90;
  }

  v35 = v89;
  v33((v89 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor), v24, v32);
  v36 = v82;
  v38 = v86;
  v37 = v87;
  (v80)(v82, v87, v86);
  v39 = v85;
  v40 = (*(v85 + 88))(v36, v38);
  if (v40 != *MEMORY[0x1E6969A68])
  {
    if (v40 != *MEMORY[0x1E6969A78])
    {
      if (v40 == *MEMORY[0x1E6969A48])
      {
        v57 = sub_1AAF8CBA4();
        (*(*(v57 - 8) + 8))(v84, v57);
        (*(v83 + 1))(v31, v32);
        v43 = (*(v39 + 8))(v37, v38);
        v50 = v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
        *(v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
        v51 = 1;
        v44 = 79200.0;
        v45 = 93600.0;
        goto LABEL_17;
      }

      v58 = v83;
      if (v40 == *MEMORY[0x1E6969A58])
      {
        v59 = sub_1AAF8CBA4();
        (*(*(v59 - 8) + 8))(v84, v59);
        v60 = *(v58 + 1);
        v36 = v58 + 8;
        v60(v31, v32);
        v43 = (*(v39 + 8))(v37, v38);
        v51 = 0;
        v52 = v88;
        v61 = v88;
        v62 = 3600.0;
      }

      else
      {
        if (v40 != *MEMORY[0x1E6969A88])
        {
          if (v40 == *MEMORY[0x1E6969A98])
          {
            v67 = sub_1AAF8CBA4();
            (*(*(v67 - 8) + 8))(v84, v67);
            v68 = *(v58 + 1);
            v36 = v58 + 8;
            v68(v31, v32);
            v43 = (*(v39 + 8))(v37, v38);
            v51 = 0;
            v52 = v88;
            v50 = v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
            *(v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = v88;
            v45 = 1.0;
            v44 = 1.0;
            goto LABEL_18;
          }

          if (v40 == *MEMORY[0x1E6969A10])
          {
            v70 = sub_1AAF8CBA4();
            (*(*(v70 - 8) + 8))(v84, v70);
            v71 = *(v58 + 1);
            v36 = v58 + 8;
            v71(v31, v32);
            v43 = (*(v39 + 8))(v37, v38);
            v50 = v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
            *(v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
            v51 = 1;
            v45 = 604800.0;
            v44 = 604800.0;
            goto LABEL_17;
          }

          result = sub_1AAF902C4();
          __break(1u);
          return result;
        }

        v63 = sub_1AAF8CBA4();
        (*(*(v63 - 8) + 8))(v84, v63);
        v64 = *(v58 + 1);
        v36 = v58 + 8;
        v64(v31, v32);
        v43 = (*(v39 + 8))(v37, v38);
        v51 = 0;
        v52 = v88;
        v61 = v88;
        v62 = 60.0;
      }

      v45 = v62;
      v65 = v61 * v62;
      v50 = v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
      *(v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = v65;
      v44 = v45;
      goto LABEL_18;
    }

    v18 = v76;
    v48 = v84;
    sub_1AAF8CAC4();
    v49 = sub_1AAF8CBA4();
    (*(*(v49 - 8) + 8))(v48, v49);
    (*(v83 + 1))(v31, v32);
    (*(v39 + 8))(v37, v38);
    v36 = v78;
    v37 = v79;
    v43 = (*(v78 + 11))(v18, v79);
    v44 = 2412000.0;
    v45 = 2685600.0;
    if (v43 == *MEMORY[0x1E6969868] || v43 == *MEMORY[0x1E6969850])
    {
      goto LABEL_16;
    }

    if (v43 == *MEMORY[0x1E6969820])
    {
      goto LABEL_14;
    }

    v44 = 424800.0;
    v45 = 2599200.0;
    if (v43 == *MEMORY[0x1E69697F8] || v43 == *MEMORY[0x1E69697D0] || v43 == *MEMORY[0x1E69697C8])
    {
      goto LABEL_16;
    }

    if (v43 == *MEMORY[0x1E6969800])
    {
LABEL_14:
      v44 = 2498400.0;
      v47 = 0x4143D49000000000;
      goto LABEL_15;
    }

    if (v43 == *MEMORY[0x1E6969830])
    {
      goto LABEL_37;
    }

    if (v43 == *MEMORY[0x1E6969808])
    {
      v72 = 0xB87000000000;
    }

    else
    {
      v44 = 2498400.0;
      v45 = 2599200.0;
      if (v43 == *MEMORY[0x1E6969828] || v43 == *MEMORY[0x1E69697A8])
      {
        goto LABEL_16;
      }

      if (v43 == *MEMORY[0x1E6969860])
      {
LABEL_37:
        v66 = 0x414266F000000000;
LABEL_49:
        v44 = *&v66;
        v47 = 0x41447D5000000000;
        goto LABEL_15;
      }

      if (v43 != *MEMORY[0x1E6969848])
      {
        goto LABEL_65;
      }

      v72 = 0xFB000000000;
    }

    v66 = v72 & 0xFFFFFFFFFFFFLL | 0x4143000000000000;
    goto LABEL_49;
  }

  v18 = v77;
  v41 = v84;
  sub_1AAF8CAC4();
  v42 = sub_1AAF8CBA4();
  (*(*(v42 - 8) + 8))(v41, v42);
  (*(v83 + 1))(v31, v32);
  (*(v39 + 8))(v37, v38);
  v36 = v78;
  v37 = v79;
  v43 = (*(v78 + 11))(v18, v79);
  v44 = 31532400.0;
  v45 = 31622400.0;
  if (v43 == *MEMORY[0x1E6969868] || v43 == *MEMORY[0x1E6969850])
  {
    goto LABEL_16;
  }

  if (v43 == *MEMORY[0x1E6969820])
  {
    v46 = 0x2A4F00000000;
LABEL_9:
    *&v44 = v46 & 0xFFFFFFFFFFFFLL | 0x417D000000000000;
    v47 = 0x417FB91800000000;
    goto LABEL_15;
  }

  v44 = 31532400.0;
  v45 = 31622400.0;
  if (v43 == *MEMORY[0x1E69697F8] || v43 == *MEMORY[0x1E69697D0] || v43 == *MEMORY[0x1E69697C8])
  {
    goto LABEL_16;
  }

  if (v43 == *MEMORY[0x1E6969800])
  {
    v46 = 0x153700000000;
    goto LABEL_9;
  }

  v44 = 31532400.0;
  v45 = 31622400.0;
  if (v43 == *MEMORY[0x1E6969830] || v43 == *MEMORY[0x1E6969808])
  {
    goto LABEL_16;
  }

  if (v43 == *MEMORY[0x1E6969828])
  {
    v69 = 0x161800000000;
LABEL_52:
    *&v44 = v69 & 0xFFFFFFFFFFFFLL | 0x417D000000000000;
    v47 = 0x417D412900000000;
    goto LABEL_15;
  }

  if (v43 == *MEMORY[0x1E69697A8])
  {
    goto LABEL_51;
  }

  v44 = 31532400.0;
  v45 = 31622400.0;
  if (v43 == *MEMORY[0x1E6969860] || v43 == *MEMORY[0x1E6969848] || v43 == *MEMORY[0x1E69697B8])
  {
    goto LABEL_16;
  }

  if (v43 == *MEMORY[0x1E69697B0])
  {
LABEL_51:
    v69 = 0x2A4F00000000;
    goto LABEL_52;
  }

  if (v43 != *MEMORY[0x1E69697C0])
  {
    v74 = *(v36 + 1);
    v36 += 8;
    v43 = v74(v18, v37, 31532400.0, 31622400.0);
    v46 = 0x161800000000;
    goto LABEL_9;
  }

  v44 = 30582000.0;
  v47 = 0x417D556000000000;
LABEL_15:
  v45 = *&v47;
LABEL_16:
  while (1)
  {
    v50 = v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval;
    *(v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval) = 0;
    v51 = 1;
LABEL_17:
    v52 = v88;
LABEL_18:
    *(v50 + 8) = v51;
    v53 = v44 * v52;
    v54 = v45 * v52;
    if (v53 <= v54)
    {
      break;
    }

    __break(1u);
LABEL_65:
    if (v43 == *MEMORY[0x1E69697B8])
    {
      goto LABEL_37;
    }

    v44 = 2498400.0;
    v45 = 2599200.0;
    if (v43 != *MEMORY[0x1E69697B0] && v43 != *MEMORY[0x1E69697C0])
    {
      v73 = *(v36 + 1);
      v36 += 8;
      v43 = v73(v18, v37, 2498400.0, 2599200.0);
      goto LABEL_37;
    }
  }

  v55 = (v35 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_durationBounds);
  *v55 = v53;
  v55[1] = v54;
  return v35;
}

void sub_1AACE8880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1AAF8CBA4();
    v7 = type metadata accessor for CalendarCache(255);
    v8 = sub_1AACECACC(&qword_1ED9B1650, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1AACE8934(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1AAF8CBA4();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1AADB31F8(&qword_1ED9B6B98, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B00]);
      v16 = sub_1AAF8F5F4();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void sub_1AACE8B14(uint64_t a1)
{
  if (!qword_1ED9B1660)
  {
    sub_1AAF8CB94();
    sub_1AAF8CA64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED9B1660);
    }
  }
}

unint64_t sub_1AACE8B84(char *a1)
{
  sub_1AAF90694();
  sub_1AACED800(v4);
  v2 = sub_1AAF906F4();

  return sub_1AACEDDAC(a1, v2);
}

uint64_t sub_1AACE8BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACE8C58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1AACE8CC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACE8D28(uint64_t a1)
{
  if (!qword_1ED9B1588[0])
  {
    type metadata accessor for CalendarCache.Key(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1ED9B1588);
    }
  }
}

uint64_t sub_1AACE8D8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACE8DEC(uint64_t a1)
{
  if (!qword_1ED9B1290)
  {
    v2 = type metadata accessor for CalendarCache.Key(255);
    v3 = type metadata accessor for CalendarCache.Value(255);
    v4 = sub_1AAD6CACC(&qword_1ED9B1640, type metadata accessor for CalendarCache.Key, &unk_1AAFA1260);
    v5 = type metadata accessor for LRUCache.Element(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B1290);
    }
  }
}

uint64_t sub_1AACE8E98@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v104 = a2;
  v106 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v106);
  v6 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CalendarCache.Value(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v99 = &v82 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v101 = (&v82 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v82 - v15);
  sub_1AACECC0C(0, &qword_1ED9B2738, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v98 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v100 = &v82 - v20;
  sub_1AACD57C4(0);
  v103 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v102 = &v82 - v25;
  v26 = sub_1AAF8CA64();
  v107 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v105 = &v82 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v82 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v82 - v34;
  if ((*(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval + 8) & 1) == 0)
  {
    v9 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
    v37 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
    sub_1AAF8C854();
    if (!__OFADD__(a1, 1))
    {
      sub_1AAF8C854();
      sub_1AAF8C844();
      sub_1AAF8C844();
      sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v37 = v26;
      if (sub_1AAF8F584())
      {
        v73 = v107;
        v74 = v107[4];
        v75 = v102;
        v74(v102, v35, v26);
        v76 = v103;
        v74((v75 + *(v103 + 48)), v32, v26);
        sub_1AACEDD44(v75, v23, sub_1AACD57C4);
        v77 = *(v76 + 48);
        v78 = v104;
        v74(v104, v23, v26);
        v79 = v73[1];
        v79(&v23[v77], v26);
        sub_1AACD582C(v75, v23, sub_1AACD57C4);
        v80 = *(v76 + 48);
        sub_1AACEC8E4(0);
        v74(&v78[*(v81 + 36)], &v23[v80], v26);
        return (v79)(v23, v26);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v96 = v7;
  v36 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
  v37 = a1 * v36;
  if ((a1 * v36) >> 64 != (a1 * v36) >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v93 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
  v94 = a1;
  v92 = v9;
  v83 = v23;
  v95 = v16;
  v38 = *(v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_cache);
  v39 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component;
  v40 = v3 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
  sub_1AADDFE60(0);
  v42 = *(v41 + 48);
  v89 = v41;
  v43 = *(v41 + 64);
  v44 = sub_1AAF8CB94();
  v45 = *(v44 - 8);
  v46 = *(v45 + 16);
  v88 = v44;
  v87 = v46;
  v86 = v45 + 16;
  (v46)(v6, v39);
  *&v6[v42] = v37;
  v9 = v107;
  v47 = v107[2];
  v85 = v107 + 2;
  v84 = v47;
  v47(&v6[v43], v40, v26);
  v48 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v48);
  *(&v82 - 4) = v38;
  *(&v82 - 3) = v39;
  v90 = v39;
  *(&v82 - 2) = v37;
  *(&v82 - 1) = v40;
  v49 = v40;
  swift_beginAccess();
  v91 = v38;
  v50 = v95;
  sub_1AACED630(v6, sub_1AADE42C0, v95);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  v37 = v101;
  sub_1AACEDD44(v50, v101, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_20:
    sub_1AACE8D8C(v37, type metadata accessor for CalendarCache.Value);
    __break(1u);
    goto LABEL_21;
  }

  sub_1AACE8D8C(v50, type metadata accessor for CalendarCache.Value);
  v51 = v37;
  v37 = v100;
  sub_1AADE42E4(v51, v100, &qword_1ED9B2738, MEMORY[0x1E6969530]);
  v52 = (v9 + 48);
  v53 = *(v9 + 6);
  if (v53(v37, 1, v26) == 1)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = *(v9 + 4);
  (v9)(v105, v37, v26);
  v54 = v94 + 1;
  if (__OFADD__(v94, 1))
  {
    goto LABEL_17;
  }

  v37 = v54 * v93;
  if ((v54 * v93) >> 64 != (v54 * v93) >> 63)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v95 = v53;
  v100 = v52;
  v101 = v9;
  v55 = *(v89 + 48);
  v56 = *(v89 + 64);
  v57 = v90;
  v87(v6, v90, v88);
  *&v6[v55] = v37;
  v84(&v6[v56], v49, v26);
  v58 = swift_storeEnumTagMultiPayload();
  MEMORY[0x1EEE9AC00](v58);
  *(&v82 - 4) = v91;
  *(&v82 - 3) = v57;
  *(&v82 - 2) = v37;
  *(&v82 - 1) = v49;
  swift_beginAccess();
  v59 = v99;
  sub_1AACED630(v6, sub_1AADE43D8, v99);
  swift_endAccess();
  sub_1AACE8D8C(v6, type metadata accessor for CalendarCache.Key);
  v9 = v92;
  sub_1AACEDD44(v59, v92, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_22:
    result = sub_1AACE8D8C(v9, type metadata accessor for CalendarCache.Value);
    __break(1u);
    goto LABEL_23;
  }

  sub_1AACE8D8C(v59, type metadata accessor for CalendarCache.Value);
  v60 = v9;
  v61 = v98;
  sub_1AADE42E4(v60, v98, &qword_1ED9B2738, MEMORY[0x1E6969530]);
  result = (v95)(v61, 1, v26);
  v63 = v104;
  v64 = v83;
  v65 = v97;
  v66 = v101;
  if (result != 1)
  {
    v101(v97, v61, v26);
    sub_1AACECACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v9 = v105;
    v37 = v26;
    if (sub_1AAF8F584())
    {
      v67 = v102;
      v66(v102, v9, v26);
      v68 = v103;
      v66((v67 + *(v103 + 48)), v65, v26);
      sub_1AACEDD44(v67, v64, sub_1AACD57C4);
      v69 = *(v68 + 48);
      v66(v63, v64, v26);
      v70 = v107[1];
      v70(v64 + v69, v26);
      sub_1AACD582C(v67, v64, sub_1AACD57C4);
      v71 = *(v68 + 48);
      sub_1AACEC8E4(0);
      v66(&v63[*(v72 + 36)], (v64 + v71), v26);
      return (v70)(v64, v26);
    }

    goto LABEL_19;
  }

LABEL_23:
  __break(1u);
  return result;
}

void sub_1AACE99D0(uint64_t a1)
{
  if (!qword_1ED9B3BD8[0])
  {
    type metadata accessor for CalendarBinningUnit(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, qword_1ED9B3BD8);
    }
  }
}

void sub_1AACE9A60(uint64_t a1)
{
  if (!qword_1ED9B2620[0])
  {
    v2 = sub_1AAF8CA64();
    v3 = sub_1AAD6CACC(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v5 = type metadata accessor for ChartBinRange(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1ED9B2620);
    }
  }
}

void sub_1AACE9AF4(uint64_t a1)
{
  if (!qword_1ED9B11E0)
  {
    type metadata accessor for DateBins(255);
    sub_1AACECB14(&qword_1ED9B12A0, type metadata accessor for DateBins, &protocol conformance descriptor for DateBins);
    v1 = sub_1AAF8F4D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B11E0);
    }
  }
}

uint64_t sub_1AACE9B88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACE9C1C(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v38 = sub_1AAF8CA64();
  MEMORY[0x1EEE9AC00](v38);
  v35 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v37 = &v27 - v11;
  v34 = *(a3 + 16);
  if (v34)
  {
    v12 = 0;
    v31 = (v9 + 8);
    v32 = (v9 + 32);
    v33 = v9 + 16;
    v36 = MEMORY[0x1E69E7CC0];
    v29 = a2;
    v30 = a3;
    v28 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = *(v9 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v9;
      v18 = a1;
      v19 = v37;
      (*(v9 + 16))(v37, v16, v38, v10);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v31)(v37, v38);

        return;
      }

      if (v21)
      {
        v22 = *v32;
        (*v32)(v35, v37, v38);
        v23 = v36;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v39 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1AACEA040(0, *(v23 + 16) + 1, 1);
          v23 = v39;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1AACEA040((v25 > 1), v26 + 1, 1);
          v23 = v39;
        }

        *(v23 + 16) = v26 + 1;
        v36 = v23;
        v22((v23 + v13 + v26 * v14), v35, v38);
        a3 = v30;
        a1 = v28;
      }

      else
      {
        (*v31)(v37, v38);
        a3 = v15;
      }

      ++v12;
      v9 = v17;
      if (v34 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_14:
  }
}

uint64_t sub_1AACE9F30(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v5 = 1;
      return v5 & 1;
    }

LABEL_6:
    sub_1AAF8CA64();
    sub_1AACEC8E4(0);
    sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v5 = sub_1AAF8F584();
    return v5 & 1;
  }

  sub_1AAF8CA64();
  sub_1AACED314(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v5 = sub_1AAF8F574();
  if ((v5 & 1) != 0 && (a4 & 1) == 0)
  {
    goto LABEL_6;
  }

  return v5 & 1;
}

void *sub_1AACEA040(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B1E10, MEMORY[0x1E6969530], MEMORY[0x1E6969530]);
  *v3 = result;
  return result;
}

uint64_t sub_1AACEA090()
{
  v1 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component;
  v2 = sub_1AAF8CB94();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor;
  v4 = sub_1AAF8CA64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1AACEA1AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1AAF8CAA4();
    sub_1AAF8CBA4();
    sub_1AACC9BB0(255, a3, a4, MEMORY[0x1E69E62F8]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v8)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1AACEA258(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v265 = a2;
  v266 = a3;
  v248 = a4;
  v224 = sub_1AAF8C9D4();
  v223 = *(v224 - 8);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v222 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_1AAF8C9B4();
  v227 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v226 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v232 = sub_1AAF8C944();
  v230 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v229 = &v222 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v234 = sub_1AAF8C954();
  v233 = *(v234 - 8);
  MEMORY[0x1EEE9AC00](v234);
  v231 = &v222 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AAF8C914();
  v236 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v235 = &v222 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = sub_1AAF8C994();
  v244 = *(v245 - 8);
  MEMORY[0x1EEE9AC00](v245);
  v243 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v240 = sub_1AAF8C974();
  v239 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v238 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AAF8C774();
  v251 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v247 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v246 = &v222 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v262 = &v222 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v225 = &v222 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v222 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v263 = &v222 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v222 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v222 - v28;
  v30 = sub_1AAF8C834();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v264 = &v222 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1AAF8CBC4();
  MEMORY[0x1EEE9AC00](v32 - 8);
  v261 = &v222 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1AAF8CBA4();
  v258 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260);
  v259 = &v222 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1AAF8CAA4();
  v252 = *(v35 - 8);
  v253 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v250 = &v222 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1E69E6720];
  sub_1AACEBDDC(0, &qword_1ED9B2748, MEMORY[0x1E69690E8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v40 = &v222 - v39;
  sub_1AACEBDDC(0, &qword_1ED9B2740, MEMORY[0x1E69690F0], v37);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v222 - v42;
  v44 = sub_1AAF8CA04();
  v45 = *(v44 - 8);
  v256 = v44;
  v257 = v45;
  MEMORY[0x1EEE9AC00](v44);
  v241 = &v222 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v254 = &v222 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v255 = &v222 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v222 - v52;
  v267 = a1;

  sub_1AACEBE40(&v267);
  v54 = v267;
  MEMORY[0x1EEE9AC00](v55);
  v56 = v266;
  *(&v222 - 2) = v266;
  sub_1AACEFF84(sub_1AACF040C, (&v222 - 4), v54);
  v58 = v57;

  v59 = sub_1AAF8C874();
  v60 = *(*(v59 - 8) + 56);
  v249 = v43;
  v60(v43, 1, 1, v59);
  v61 = sub_1AAF8C864();
  (*(*(v61 - 8) + 56))(v40, 1, 1, v61);
  (*(v252 + 16))(v250, v265, v253);
  v258[2](v259, v56, v260);
  v62 = v261;
  sub_1AAF8CBB4();
  sub_1AAF8C824();
  sub_1AAF8C8A4();
  v63 = 0;
  v261 = *(v58 + 16);
  v64 = v251;
  v265 = v251 + 16;
  v266 = (v251 + 8);
  while (1)
  {
    if (v261 == v63)
    {

      v185 = v238;
      sub_1AAF8C964();
      v186 = v255;
      sub_1AAF8C8C4();
      (*(v239 + 8))(v185, v240);
LABEL_117:
      v188 = v257;
      v189 = *(v257 + 8);
      v190 = v53;
LABEL_118:
      v196 = v256;
      v189(v190, v256);
      goto LABEL_126;
    }

    if (v63 >= *(v58 + 16))
    {
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
      goto LABEL_132;
    }

    v259 = ((*(v64 + 80) + 32) & ~*(v64 + 80));
    v264 = *(v64 + 72);
    v62 = *(v64 + 16);
    v62(v29, &v259[v58 + v264 * v63], v12);
    v65 = sub_1AAF8C734();
    if (v66)
    {
      break;
    }

    if (v65 != 1)
    {
      break;
    }

    v67 = sub_1AAF8C704();
    if (v68)
    {
      break;
    }

    if (v67 != 1)
    {
      break;
    }

    v69 = sub_1AAF8C714();
    if (v70)
    {
      break;
    }

    if (v69)
    {
      break;
    }

    v71 = sub_1AAF8C754();
    if (v72)
    {
      break;
    }

    if (v71)
    {
      break;
    }

    v73 = sub_1AAF8C764();
    if (v74)
    {
      break;
    }

    v75 = v73;
    v76 = *v266;
    (*v266)(v29, v12);
    ++v63;
    if (v75)
    {
      goto LABEL_16;
    }
  }

  v76 = *v266;
  (*v266)(v29, v12);
LABEL_16:
  v77 = sub_1AACF04C0(1uLL, v58);
  v252 = v80 >> 1;
  v253 = v79;
  v81 = (v80 >> 1) - v79;
  v258 = v53;
  v260 = v58;
  v249 = v78;
  v250 = v77;
  if (v80 >> 1 == v79)
  {

    v82 = MEMORY[0x1E69E7CC0];
LABEL_18:
    v83 = *(v82 + 2);
    if (v83)
    {
      v84 = (v82 + 32);
      v85 = v258;
      v86 = v260;
      do
      {
        v87 = v83 == 0;
        if (!v83)
        {
          break;
        }

        v88 = *v84++;
        --v83;
      }

      while (v88 == *(v82 + 4));
    }

    else
    {
      v87 = 1;
      v85 = v258;
      v86 = v260;
    }

    LODWORD(v251) = v87;

    v97 = v259;
    v98 = &v259[v86];
    v99 = -v261;
    v100 = -1;
    while (v99 + v100 != -1)
    {
      if (++v100 >= *(v86 + 16))
      {
        goto LABEL_128;
      }

      v62(v263, v98, v12);
      v101 = sub_1AAF8C704();
      if (v102 & 1) != 0 || v101 != 1 || (v103 = sub_1AAF8C714(), (v104) || v103 || (v105 = sub_1AAF8C754(), (v106) || v105 || (v107 = sub_1AAF8C764(), (v108))
      {
        v76(v263, v12);
LABEL_46:
        v110 = &v97[v86];
        v111 = -v261;
        v112 = -1;
        v113 = v242;
        while (v111 + v112 != -1)
        {
          if (++v112 >= *(v86 + 16))
          {
            goto LABEL_129;
          }

          v62(v113, v110, v12);
          v114 = sub_1AAF8C714();
          if (v115 & 1) != 0 || v114 || (v116 = sub_1AAF8C754(), (v117) || v116 || (v118 = sub_1AAF8C764(), (v119))
          {
            v76(v113, v12);
LABEL_57:
            v121 = v252 - v253;
            if (v252 == v253)
            {
              v122 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              if (v252 <= v253)
              {
                goto LABEL_133;
              }

              v128 = &v249[v253 * v264];
              v122 = MEMORY[0x1E69E7CC0];
              v129 = v225;
              do
              {
                v62(v129, v128, v12);
                v130 = sub_1AAF8C734();
                v132 = v131;
                v76(v129, v12);
                if ((v132 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v122 = sub_1AACF04D8(0, *(v122 + 2) + 1, 1, v122);
                  }

                  v134 = *(v122 + 2);
                  v133 = *(v122 + 3);
                  if (v134 >= v133 >> 1)
                  {
                    v122 = sub_1AACF04D8((v133 > 1), v134 + 1, 1, v122);
                  }

                  *(v122 + 2) = v134 + 1;
                  *&v122[8 * v134 + 32] = v130;
                }

                v128 = &v264[v128];
                --v121;
              }

              while (v121);
            }

            v123 = *(v122 + 2);
            if (v123)
            {
              v124 = (v122 + 32);
              v125 = v253;
              do
              {
                v126 = v123 == 0;
                if (!v123)
                {
                  break;
                }

                v127 = *v124++;
                --v123;
              }

              while (v127 == *(v122 + 4));
            }

            else
            {
              v126 = 1;
              v125 = v253;
            }

            v135 = v252 - v125;
            if (v252 == v125)
            {
              v136 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              if (v252 <= v125)
              {
                goto LABEL_134;
              }

              v144 = &v249[v125 * v264];
              v136 = MEMORY[0x1E69E7CC0];
              do
              {
                v145 = v262;
                v62(v262, v144, v12);
                v146 = sub_1AAF8C704();
                v148 = v147;
                v76(v145, v12);
                if ((v148 & 1) == 0)
                {
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v136 = sub_1AACF04D8(0, *(v136 + 2) + 1, 1, v136);
                  }

                  v150 = *(v136 + 2);
                  v149 = *(v136 + 3);
                  if (v150 >= v149 >> 1)
                  {
                    v136 = sub_1AACF04D8((v149 > 1), v150 + 1, 1, v136);
                  }

                  *(v136 + 2) = v150 + 1;
                  *&v136[8 * v150 + 32] = v146;
                }

                v144 = &v264[v144];
                --v135;
              }

              while (v135);
            }

            v137 = *(v136 + 2);
            if (v137)
            {
              v138 = (v136 + 32);
              v139 = v257;
              v140 = v247;
              v141 = v246;
              do
              {
                v142 = v137 == 0;
                if (!v137)
                {
                  break;
                }

                v143 = *v138++;
                --v137;
              }

              while (v143 == *(v136 + 4));
            }

            else
            {
              v142 = 1;
              v139 = v257;
              v140 = v247;
              v141 = v246;
            }

            if (v251)
            {
              v151 = v126 && v142;
              v152 = v259;
              if (!v151)
              {
                v153 = v243;
                sub_1AAF8C984();
                v154 = v254;
                v155 = v258;
                sub_1AAF8C8D4();
                (*(v244 + 8))(v153, v245);
                v156 = v235;
                sub_1AAF8C904();
                v157 = v255;
                sub_1AAF8C894();
                (*(v236 + 8))(v156, v237);
                v158 = *(v139 + 8);
                v159 = v154;
                v160 = v256;
                v158(v159, v256);
                v158(v155, v160);
                goto LABEL_95;
              }
            }

            else
            {
              v161 = v238;
              sub_1AAF8C964();
              v162 = v241;
              sub_1AAF8C8C4();
              (*(v239 + 8))(v161, v240);
              v163 = v243;
              sub_1AAF8C984();
              v164 = v254;
              sub_1AAF8C8D4();
              (*(v244 + 8))(v163, v245);
              v165 = *(v139 + 8);
              v166 = v256;
              v165(v162, v256);
              v167 = v235;
              sub_1AAF8C904();
              v157 = v255;
              sub_1AAF8C894();
              v168 = v167;
              v155 = v258;
              (*(v236 + 8))(v168, v237);
              v169 = v164;
              v160 = v166;
              v165(v169, v166);
              v165(v155, v166);
              v139 = v257;
              v152 = v259;
LABEL_95:
              (*(v139 + 32))(v155, v157, v160);
              v140 = v247;
              v141 = v246;
            }

            v170 = &v152[v260];
            v171 = -v261;
            v172 = -1;
            while (1)
            {
              if (v171 + v172 == -1)
              {

                v194 = v229;
                sub_1AAF8C934();
                v195 = v231;
                sub_1AAF8C924();
                (*(v230 + 8))(v194, v232);
                v186 = v255;
                v53 = v258;
                sub_1AAF8C8B4();
                swift_unknownObjectRelease();
                (*(v233 + 8))(v195, v234);
                goto LABEL_117;
              }

              if (++v172 >= *(v260 + 16))
              {
                goto LABEL_130;
              }

              v62(v141, v170, v12);
              v173 = sub_1AAF8C754();
              if (v174)
              {
                break;
              }

              if (v173)
              {
                break;
              }

              v175 = sub_1AAF8C764();
              if (v176)
              {
                break;
              }

              v177 = v175;
              v170 = &v264[v170];
              v76(v141, v12);
              if (v177)
              {
                goto LABEL_105;
              }
            }

            v76(v141, v12);
LABEL_105:
            v178 = v260;
            v179 = &v152[v260];
            v180 = -v261;
            v181 = -1;
            while (1)
            {
              if (v180 + v181 == -1)
              {

                v197 = v229;
                sub_1AAF8C934();
                v198 = v231;
                sub_1AAF8C924();
                (*(v230 + 8))(v197, v232);
                v199 = v254;
                v53 = v258;
                sub_1AAF8C8B4();
                (*(v233 + 8))(v198, v234);
                v200 = v226;
                sub_1AAF8C9A4();
                v186 = v255;
                sub_1AAF8C9E4();
                swift_unknownObjectRelease();
                (*(v227 + 8))(v200, v228);
                v196 = v256;
                v188 = v257;
                v201 = *(v257 + 8);
                v201(v199, v256);
                v202 = v53;
                goto LABEL_124;
              }

              if (++v181 >= *(v178 + 16))
              {
                goto LABEL_131;
              }

              v62(v140, v179, v12);
              v182 = sub_1AAF8C764();
              if (v183)
              {
                break;
              }

              v184 = v182;
              v179 = &v264[v179];
              v76(v140, v12);
              if (v184)
              {
                goto LABEL_121;
              }
            }

            v76(v140, v12);
LABEL_121:

            v203 = v229;
            sub_1AAF8C934();
            v204 = v231;
            sub_1AAF8C924();
            (*(v230 + 8))(v203, v232);
            v205 = v241;
            v53 = v258;
            sub_1AAF8C8B4();
            (*(v233 + 8))(v204, v234);
            v206 = v226;
            sub_1AAF8C9A4();
            v207 = v254;
            sub_1AAF8C9E4();
            (*(v227 + 8))(v206, v228);
            v196 = v256;
            v188 = v257;
            v208 = *(v257 + 8);
            v208(v205, v256);
            v209 = v222;
            sub_1AAF8C9A4();
            v186 = v255;
            sub_1AAF8C9F4();
            swift_unknownObjectRelease();
            (*(v223 + 8))(v209, v224);
            v208(v207, v196);
            v208(v53, v196);
            goto LABEL_126;
          }

          v120 = v118;
          v110 = &v264[v110];
          v76(v113, v12);
          if (v120)
          {
            goto LABEL_57;
          }
        }

        if (v251)
        {
          v191 = v243;
          sub_1AAF8C984();
          v192 = v254;
          v53 = v85;
          sub_1AAF8C8D4();
          (*(v244 + 8))(v191, v245);
          v193 = v235;
          sub_1AAF8C904();
          v186 = v255;
          sub_1AAF8C894();
          swift_unknownObjectRelease();
          (*(v236 + 8))(v193, v237);
          goto LABEL_123;
        }

        v212 = v238;
        sub_1AAF8C964();
        v213 = v241;
        sub_1AAF8C8C4();
        (*(v239 + 8))(v212, v240);
        v214 = v243;
        sub_1AAF8C984();
        v215 = v254;
        sub_1AAF8C8D4();
        (*(v244 + 8))(v214, v245);
        v196 = v256;
        v188 = v257;
        v216 = *(v257 + 8);
        v217 = v213;
        v53 = v85;
        v216(v217, v256);
        v218 = v235;
        sub_1AAF8C904();
        v186 = v255;
        sub_1AAF8C894();
        swift_unknownObjectRelease();
        (*(v236 + 8))(v218, v237);
        v216(v215, v196);
        v216(v85, v196);
        goto LABEL_126;
      }

      v109 = v107;
      v98 = &v264[v98];
      v76(v263, v12);
      if (v109)
      {
        goto LABEL_46;
      }
    }

    if (v251)
    {
      v187 = v243;
      sub_1AAF8C984();
      v186 = v255;
      v53 = v85;
      sub_1AAF8C8D4();
      swift_unknownObjectRelease();
      (*(v244 + 8))(v187, v245);
      v188 = v257;
      v189 = *(v257 + 8);
      v190 = v85;
      goto LABEL_118;
    }

    v210 = v238;
    sub_1AAF8C964();
    v192 = v254;
    v53 = v85;
    sub_1AAF8C8C4();
    (*(v239 + 8))(v210, v240);
    v211 = v243;
    sub_1AAF8C984();
    v186 = v255;
    sub_1AAF8C8D4();
    swift_unknownObjectRelease();
    (*(v244 + 8))(v211, v245);
LABEL_123:
    v196 = v256;
    v188 = v257;
    v201 = *(v257 + 8);
    v201(v192, v256);
    v202 = v85;
LABEL_124:
    v201(v202, v196);
LABEL_126:
    v219 = v248;
    v220 = *(v188 + 32);
    v220(v53, v186, v196);
    *(v219 + 24) = v196;
    *(v219 + 32) = sub_1AACEFF3C(&qword_1ED9B2850, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    v221 = sub_1AACB2508(v219);
    v220(v221, v53, v196);
    *(v219 + 40) = 1;
    return;
  }

  if ((v80 >> 1) > v79)
  {
    v89 = v78;
    v90 = v79;

    v91 = &v89[v90 * v264];
    v82 = MEMORY[0x1E69E7CC0];
    do
    {
      v62(v26, v91, v12);
      v92 = sub_1AAF8C724();
      v94 = v93;
      v76(v26, v12);
      if ((v94 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_1AACF04D8(0, *(v82 + 2) + 1, 1, v82);
        }

        v96 = *(v82 + 2);
        v95 = *(v82 + 3);
        if (v96 >= v95 >> 1)
        {
          v82 = sub_1AACF04D8((v95 > 1), v96 + 1, 1, v82);
        }

        *(v82 + 2) = v96 + 1;
        *&v82[8 * v96 + 32] = v92;
      }

      v91 = &v264[v91];
      --v81;
    }

    while (v81);
    goto LABEL_18;
  }

LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);

  __break(1u);
}

void sub_1AACEBDDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACEBE40(uint64_t *a1)
{
  v2 = *(sub_1AAF8CA64() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1AACEFC1C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1AACEBEE8(v5);
  *a1 = v3;
}

void sub_1AACEBEE8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1AAF90464();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1AAF8CA64();
        v6 = sub_1AAF8F8A4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_1AAF8CA64() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1AAF0EE80(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1AACEFC30(0, v2, 1, a1);
  }
}

uint64_t sub_1AACEC014(uint64_t a1)
{
  v2 = sub_1AAF8CB94();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    sub_1AACF042C(0);
    v9 = sub_1AAF900A4();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1AADAB5C0(&qword_1ED9B2820, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
      v16 = sub_1AAF8F474();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          sub_1AADAB5C0(&qword_1ED9B1DB0, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AE0]);
          v23 = sub_1AAF8F5F4();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

BOOL sub_1AACEC328(double *a1, double *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (a1[2])
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (a1[1] != a2[1])
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if (a1[4])
  {
    if (!*(a2 + 32))
    {
      return 0;
    }
  }

  else
  {
    if (a1[3] != a2[3])
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  sub_1AACE5968((a1 + 5), v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  sub_1AACE5968((a2 + 5), &v12, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  if (v11)
  {
    sub_1AACE5968(v10, v9, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    if (*(&v13 + 1))
    {
      v7[0] = v12;
      v7[1] = v13;
      v8 = v14;
      sub_1AAE049CC();
      v5 = AGCompareValues();
      sub_1AAE04C1C(v7);
      sub_1AAE04C1C(v9);
      sub_1AACEC504(v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
      return (v5 & 1) != 0;
    }

    sub_1AAE04C1C(v9);
  }

  else if (!*(&v13 + 1))
  {
    sub_1AACEC504(v10, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
    return 1;
  }

  sub_1AAE04BC0(v10, &qword_1EB424EB0, &qword_1ED9B3728, &type metadata for AnyChartScrollTargetBehavior);
  return 0;
}

uint64_t sub_1AACEC504(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACCB8F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACEC574(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1AACBBBA0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1AACEC5E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AACEC634(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1AACEC808(0);
  v8 = (v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AxisMarkValues.Storage(0);
  v11 = MEMORY[0x1E69E63B0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  sub_1AACC9BB0(0, &qword_1ED9B29E0, v11, MEMORY[0x1E69E6720]);
  sub_1AAF8CBA4();

  sub_1AACD889C(v10);

  v17[0] = v10;
  v12 = &v10[v8[14]];

  sub_1AACD889C(v12);

  v17[1] = v12;
  v13 = &v10[v8[18]];

  sub_1AACD889C(v13);

  v17[2] = v13;
  v14 = &v10[v8[22]];

  sub_1AACD889C(v14);

  v17[3] = v14;
  (a1)(&v18, v17);
  sub_1AACD8D78(v10, sub_1AACEC808);
  return v18;
}

void sub_1AACEC808(uint64_t a1)
{
  if (!qword_1ED9B1D58)
  {
    type metadata accessor for AxisMarkValues.Storage(255);
    v1 = MEMORY[0x1E69E63B0];
    sub_1AACC9BB0(255, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
    sub_1AACC9BB0(255, &qword_1ED9B29E0, v1, MEMORY[0x1E69E6720]);
    sub_1AAF8CBA4();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1ED9B1D58);
    }
  }
}

void sub_1AACEC8E4(uint64_t a1)
{
  if (!qword_1ED9B2AA0)
  {
    sub_1AAF8CA64();
    sub_1AADAB5C0(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v1 = sub_1AAF8F5D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2AA0);
    }
  }
}

uint64_t sub_1AACEC978(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = result + 32;
  do
  {
    v4 = v1;
    if (v2 == v1)
    {
      *&result = 0.0;
      return result;
    }

    ++v1;
    v5 = *(v3 + 8 * v4);
    v6 = v5;
  }

  while ((~*&v5 & 0x7FF0000000000000) == 0);
  do
  {
    if (v2 == v1)
    {
      result = *(v3 + 8 * v4);
      goto LABEL_36;
    }

    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v8 = *(v3 + 8 * v1++);
  }

  while ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL);
  if (v8 >= v5)
  {
    v9 = v8;
  }

  else
  {
    v9 = *(v3 + 8 * v4);
  }

  if (v8 < v5)
  {
    v5 = v8;
  }

  v10 = v5;
LABEL_13:
  v11 = v9;
LABEL_14:
  v12 = v7 + 1;
  while (v2 != v7)
  {
    if (v7 >= v2)
    {
      goto LABEL_39;
    }

    if (__OFADD__(v7, 1))
    {
      goto LABEL_40;
    }

    v13 = v12;
    v14 = *(v3 + 8 * v7++);
    ++v12;
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      while (v2 != v13)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_41;
        }

        v15 = *(v3 + 8 * v13++);
        if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_24;
        }
      }

      v7 = *(result + 16);
      v15 = v14;
LABEL_24:
      if (v15 >= v14)
      {
        v9 = v15;
      }

      else
      {
        v9 = v14;
      }

      if (v15 < v14)
      {
        v14 = v15;
      }

      if (v14 < v10)
      {
        v5 = v14;
        v10 = v14;
      }

      if (v9 < v11)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  *&result = v5;
  v6 = v11;
LABEL_36:
  if (*&result <= v6)
  {
    return result;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1AACECACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AACECB14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AACECB5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AACECBA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AACECC0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1AACECC70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACECCD4(uint64_t a1)
{
  v2 = sub_1AAF8CBA4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED9B14C0 != -1)
  {
    swift_once();
  }

  v6 = off_1ED9B14C8;
  swift_beginAccess();
  v7 = *(v6 + 2);

  v8 = pthread_getspecific(v7);
  if (!v8)
  {
    v9 = swift_slowAlloc();
    pthread_setspecific(*(v6 + 2), v9);
    sub_1AACE8880(0, qword_1ED9B1208, type metadata accessor for LRUCache);
    *(&v45 + 1) = v10;
    v11 = swift_allocObject();
    *&v44 = v11;
    v12 = *(v6 + 4);
    v13 = *(v6 + 7);
    v14 = *(v6 + 40);
    *(v11 + 16) = *(v6 + 3);
    *(v11 + 24) = v12;
    *(v11 + 32) = v14;
    *(v11 + 48) = v13;
    sub_1AACED35C(&v44, v9);

    v8 = v9;
  }

  sub_1AACED220(v8, &v42);
  sub_1AACE8880(0, qword_1ED9B1208, type metadata accessor for LRUCache);
  v40 = v15;
  swift_dynamicCast();
  v16 = *(&v44 + 1);
  v17 = v46;
  v39 = v45;
  if (*(v46 + 16) && (v18 = sub_1AACED27C(a1), (v19 & 1) != 0) && (v20 = *(*(v17 + 56) + 8 * v18), (v20 & 0x8000000000000000) == 0))
  {
    if (v20 == v39)
    {
      goto LABEL_11;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(&v44 + 1) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_18;
    }

    while (1)
    {
      v22 = v16[2];
      sub_1AACE8880(0, &qword_1ED9B1298, type metadata accessor for LRUCache.Element);
      *&v42 = v16 + ((*(*(v23 - 8) + 80) + 32) & ~*(*(v23 - 8) + 80));
      *(&v42 + 1) = v22;
      sub_1AADB7088(&v42, v20, &v44, v41);
      *(&v44 + 1) = v16;
LABEL_11:
      if (v20 < v16[2])
      {
        break;
      }

      __break(1u);
LABEL_18:
      v16 = sub_1AADB8158(v16);
      *(&v44 + 1) = v16;
    }

    sub_1AACE8880(0, &qword_1ED9B1298, type metadata accessor for LRUCache.Element);
    v25 = *(v16 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v20 + *(v24 + 52));
  }

  else
  {
    (*(v3 + 16))(v5, a1, v2);
    type metadata accessor for CalendarCache(0);
    v25 = swift_allocObject();
    v26 = (v25 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_cache);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = sub_1AADF72C0(MEMORY[0x1E69E7CC0]);
    *v26 = 64;
    v26[1] = v27;
    v26[2] = -1;
    v26[3] = -1;
    v26[4] = v28;
    (*(v3 + 32))(v25 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893713CalendarCache_calendar, v5, v2);
    sub_1AADB7940(v25, a1, 0);
    v16 = *(&v44 + 1);
  }

  v29 = v44;
  v30 = v45;
  v31 = v46;
  v32 = pthread_getspecific(*(v6 + 2));
  if (!v32)
  {
    v32 = swift_slowAlloc();
    pthread_setspecific(*(v6 + 2), v32);
    v43 = v40;
    v33 = swift_allocObject();
    *&v42 = v33;
    v34 = *(v6 + 4);
    v35 = *(v6 + 7);
    v36 = *(v6 + 40);
    *(v33 + 16) = *(v6 + 3);
    *(v33 + 24) = v34;
    *(v33 + 32) = v36;
    *(v33 + 48) = v35;
    sub_1AACED35C(&v42, v32);
  }

  v43 = v40;
  v37 = swift_allocObject();
  *&v42 = v37;
  *(v37 + 16) = v29;
  *(v37 + 24) = v16;
  *(v37 + 32) = v30;
  *(v37 + 48) = v31;
  sub_1AACB634C(v32);
  sub_1AACED35C(&v42, v32);

  return v25;
}

uint64_t sub_1AACED1E0()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1AACED220(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1AACED27C(uint64_t a1)
{
  sub_1AAF8CBA4();
  sub_1AADB31F8(&qword_1ED9B1650, MEMORY[0x1E6969AE8], MEMORY[0x1E6969AF8]);
  v2 = sub_1AAF8F474();

  return sub_1AACE8934(a1, v2);
}

uint64_t sub_1AACED314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_1AACED35C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1AACED38C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for CalendarCache.Value(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21[-v14];
  sub_1AACE8B14(0);
  v17 = *(v16 + 48);
  v18 = sub_1AAF8CB94();
  (*(*(v18 - 8) + 16))(v9, a1, v18);
  v19 = sub_1AAF8CA64();
  (*(*(v19 - 8) + 16))(&v9[v17], a2, v19);
  swift_storeEnumTagMultiPayload();
  v22 = v3;
  v23 = a1;
  v24 = a2;
  swift_beginAccess();
  sub_1AACED630(v9, sub_1AADE42D8, v15);
  swift_endAccess();
  sub_1AACE8D8C(v9, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v15, v12, type metadata accessor for CalendarCache.Value);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1AACE8D8C(v15, type metadata accessor for CalendarCache.Value);
    return sub_1AADE42E4(v12, a3, &qword_1ED9B1678, MEMORY[0x1E6968130]);
  }

  else
  {
    result = sub_1AACE8D8C(v12, type metadata accessor for CalendarCache.Value);
    __break(1u);
  }

  return result;
}

uint64_t sub_1AACED630@<X0>(char *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 32);
  if (*(v8 + 16) && (v9 = sub_1AACE8B84(a1), (v10 & 1) != 0) && (v11 = *(*(v8 + 56) + 8 * v9), (v11 & 0x8000000000000000) == 0))
  {
    v12 = *(v4 + 8);
    if (v11 == *(v4 + 16))
    {
      goto LABEL_7;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + 8) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v14 = v12[2];
      sub_1AACE8DEC(0);
      v19[0] = v12 + ((*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80));
      v19[1] = v14;
      sub_1AADB6FF8(v19, v11, v4, &v18);
      *(v4 + 8) = v12;
LABEL_7:
      if (v11 < v12[2])
      {
        break;
      }

      __break(1u);
LABEL_13:
      v12 = sub_1AADB80F4(v12);
      *(v4 + 8) = v12;
    }

    sub_1AACE8DEC(0);
    return sub_1AACEDD44(v12 + ((*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80)) + *(*(v16 - 8) + 72) * v11 + *(v16 + 52), a3, type metadata accessor for CalendarCache.Value);
  }

  else
  {
    a2();

    return sub_1AADB71DC(a3, a1, 0);
  }
}

uint64_t sub_1AACED800(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1AAF8CA64();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = sub_1AAF8CB94();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACEDD44(v2, v16, type metadata accessor for CalendarCache.Key);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1AACE8B14(0);
    v26 = *(v25 + 48);
    v20 = v13;
    (*(v11 + 32))(v13, v16, v10);
    v27 = v35;
    (*(v35 + 32))(v9, &v16[v26], v4);
    MEMORY[0x1AC5992C0](0);
    sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    sub_1AAF8F484();
LABEL_6:
    sub_1AACECACC(&qword_1ED9B1670, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1AAF8F484();
    (*(v27 + 8))(v9, v4);
    return (*(v11 + 8))(v20, v10);
  }

  v34 = a1;
  if (EnumCaseMultiPayload != 1)
  {
    sub_1AADDFE60(0);
    v29 = *&v16[*(v28 + 48)];
    v30 = *(v28 + 64);
    v20 = v13;
    (*(v11 + 32))(v13, v16, v10);
    v27 = v35;
    (*(v35 + 32))(v9, &v16[v30], v4);
    MEMORY[0x1AC5992C0](2);
    sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    sub_1AAF8F484();
    MEMORY[0x1AC5992C0](v29);
    goto LABEL_6;
  }

  sub_1AADDFDEC(0);
  v19 = *(v18 + 48);
  v32 = *(v18 + 64);
  v20 = v13;
  (*(v11 + 32))(v13, v16, v10);
  v21 = v35;
  v33 = v9;
  v22 = *(v35 + 32);
  v22(v9, &v16[v19], v4);
  v22(v6, &v16[v32], v4);
  MEMORY[0x1AC5992C0](1);
  sub_1AACECACC(&qword_1ED9B2820, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
  sub_1AAF8F484();
  sub_1AACECACC(&qword_1ED9B1670, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  v23 = v33;
  sub_1AAF8F484();
  sub_1AAF8F484();
  v24 = *(v21 + 8);
  v24(v6, v4);
  v24(v23, v4);
  return (*(v11 + 8))(v20, v10);
}

uint64_t sub_1AACEDD44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1AACEDDAC(char *a1, uint64_t a2)
{
  v5 = type metadata accessor for CalendarCache.Key(0) - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1AADB3194(*(v2 + 48) + v12 * v10, v8);
      v13 = sub_1AACEDEF8(v8, a1);
      sub_1AADB3134(v8, type metadata accessor for CalendarCache.Key);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

uint64_t sub_1AACEDEF8(char *a1, char *a2)
{
  v123 = a1;
  v124 = a2;
  v2 = sub_1AAF8CA64();
  v127 = *(v2 - 8);
  v128 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v116 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v119 = &v115 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v117 = &v115 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v115 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v120 = &v115 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v115 - v18;
  v20 = sub_1AAF8CB94();
  v21 = *(v20 - 8);
  v125 = v20;
  v126 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v115 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v122 = &v115 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v115 - v26;
  v28 = type metadata accessor for CalendarCache.Key(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v115 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v115 - v35;
  sub_1AACE8D28(0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v115 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = &v39[*(v40 + 56)];
  sub_1AACEDD44(v123, v39, type metadata accessor for CalendarCache.Key);
  sub_1AACEDD44(v124, v41, type metadata accessor for CalendarCache.Key);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v124 = v39;
      sub_1AACEDD44(v39, v33, type metadata accessor for CalendarCache.Key);
      sub_1AADDFDEC(0);
      v44 = *(v43 + 48);
      v45 = *(v43 + 64);
      v46 = swift_getEnumCaseMultiPayload();
      v47 = v127;
      v48 = v128;
      if (v46 == 1)
      {
        v50 = v125;
        v49 = v126;
        (*(v126 + 32))(v122, v41, v125);
        v51 = *(v47 + 32);
        v51(v121, &v33[v44], v48);
        v51(v120, &v33[v45], v48);
        v52 = (v41 + v44);
        v53 = v118;
        v51(v118, v52, v48);
        v54 = (v41 + v45);
        v55 = v117;
        v51(v117, v54, v48);
        v56 = v122;
        v57 = sub_1AAF8CB84();
        v58 = *(v49 + 8);
        v58(v33, v50);
        if (v57)
        {
          v59 = v121;
          if (sub_1AAF8CA14())
          {
            v60 = v120;
            v61 = sub_1AAF8CA14();
            v62 = v55;
            v63 = v61;
            v64 = *(v47 + 8);
            v64(v62, v48);
            v64(v53, v48);
            v64(v60, v48);
            v64(v59, v48);
            v58(v122, v50);
LABEL_25:
            v92 = type metadata accessor for CalendarCache.Key;
            v39 = v124;
            goto LABEL_26;
          }

          v107 = *(v47 + 8);
          v107(v55, v48);
          v107(v53, v48);
          v107(v120, v48);
          v108 = v59;
        }

        else
        {
          v107 = *(v47 + 8);
          v107(v55, v48);
          v107(v53, v48);
          v107(v120, v48);
          v108 = v121;
        }

        v107(v108, v48);
        v58(v56, v50);
        goto LABEL_24;
      }

      v91 = *(v127 + 8);
      v91(&v33[v45], v128);
      v91(&v33[v44], v48);
      v36 = v33;
      v39 = v124;
    }

    else
    {
      sub_1AACEDD44(v39, v30, type metadata accessor for CalendarCache.Key);
      sub_1AADDFE60(0);
      v68 = *(v67 + 48);
      v69 = *&v30[v68];
      v70 = *(v67 + 64);
      v71 = swift_getEnumCaseMultiPayload();
      v72 = v127;
      if (v71 == 2)
      {
        v124 = v39;
        v73 = *(v41 + v68);
        v122 = v69;
        v123 = v73;
        v74 = v125;
        v75 = v126;
        v76 = v115;
        (*(v126 + 32))(v115, v41, v125);
        v77 = *(v72 + 32);
        v78 = v128;
        v77(v119, &v30[v70], v128);
        v79 = (v41 + v70);
        v80 = v74;
        v81 = v116;
        v77(v116, v79, v78);
        v82 = v76;
        v83 = sub_1AAF8CB84();
        v84 = *(v75 + 8);
        v84(v30, v80);
        if (v83)
        {
          if (v122 == v123)
          {
            v85 = v119;
            v86 = sub_1AAF8CA14();
            v87 = v81;
            v88 = v80;
            v63 = v86;
            v89 = *(v72 + 8);
            v90 = v128;
            v89(v87, v128);
            v89(v85, v90);
            v84(v76, v88);
            goto LABEL_25;
          }

          v112 = *(v72 + 8);
          v113 = v128;
          v112(v81, v128);
          v112(v119, v113);
          v84(v76, v80);
        }

        else
        {
          v109 = *(v72 + 8);
          v110 = v128;
          v109(v81, v128);
          v109(v119, v110);
          v84(v82, v80);
        }

LABEL_24:
        v63 = 0;
        goto LABEL_25;
      }

      (*(v127 + 8))(&v30[v70], v128);
      v36 = v30;
    }
  }

  else
  {
    v122 = v16;
    v123 = v19;
    sub_1AACEDD44(v39, v36, type metadata accessor for CalendarCache.Key);
    sub_1AACE8B14(0);
    v66 = *(v65 + 48);
    if (!swift_getEnumCaseMultiPayload())
    {
      v124 = v39;
      v93 = v125;
      v94 = v126;
      v95 = v27;
      (*(v126 + 32))(v27, v41, v125);
      v96 = v127;
      v97 = v128;
      v98 = *(v127 + 32);
      v98(v123, &v36[v66], v128);
      v99 = (v41 + v66);
      v100 = v93;
      v101 = v122;
      v98(v122, v99, v97);
      v102 = sub_1AAF8CB84();
      v103 = *(v94 + 8);
      v103(v36, v100);
      if (v102)
      {
        v104 = v123;
        v105 = v100;
        v63 = sub_1AAF8CA14();
        v106 = *(v96 + 8);
        v106(v101, v97);
        v106(v104, v97);
        v103(v95, v105);
        goto LABEL_25;
      }

      v111 = *(v96 + 8);
      v111(v101, v97);
      v111(v123, v97);
      v103(v95, v100);
      goto LABEL_24;
    }

    (*(v127 + 8))(&v36[v66], v128);
  }

  (*(v126 + 8))(v36, v125);
  v63 = 0;
  v92 = sub_1AACE8D28;
LABEL_26:
  sub_1AACE8D8C(v39, v92);
  return v63 & 1;
}

uint64_t sub_1AACEE924(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1AACEE984(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AACEE9E4(uint64_t a1)
{
  if ((*(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval + 8) & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_fixedTimeInterval);
    sub_1AAF8C854();
    v7 = v6;
    sub_1AAF8C854();
    v9 = floor((v7 - v8) / v5);
    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v9 > -9.22337204e18)
    {
      if (v9 < 9.22337204e18)
      {
        return;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  v2 = sub_1AADDF484(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_component, v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_anchor, a1);
  if (v3)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v4 = *(v1 + OBJC_IVAR____TtC6ChartsP33_AC55519798C41102105C995519A2893719CalendarBinningImpl_stride);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v4)
    {
      return;
    }

    goto LABEL_22;
  }

  if (!v4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v2 == 0x8000000000000000 && v4 == -1)
  {
    goto LABEL_26;
  }

  v11 = v2 / v4 * v4;
  v12 = __OFSUB__(v11, v4);
  v13 = v11 - v4;
  if (v12)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4 == -1 && v13 == 0x8000000000000000)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }
}

void *DateBins.thresholds.getter()
{
  v58 = sub_1AAF8CA64();
  v51 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v50 = &v47 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v47 - v3;
  sub_1AACE9A60(0);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACE9AF4(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACEF1CC(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v47 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  v56 = v0;
  sub_1AACEF164(v0, &v47 - v20, type metadata accessor for DateBins.Storage);
  v52 = v13;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return *v21;
    }

    sub_1AACE9B88(v21, type metadata accessor for CalendarBinningUnit);
  }

  v23 = v56;
  sub_1AACEF164(v56, v9, type metadata accessor for DateBins);
  *&v9[*(v7 + 36)] = 0;
  sub_1AACEF164(v23, v18, type metadata accessor for DateBins.Storage);
  v24 = swift_getEnumCaseMultiPayload();
  if (v24)
  {
    if (v24 == 1)
    {
      sub_1AACE99D0(0);
      v26 = *(v18 + *(v25 + 64));
      sub_1AACE9B88(v18, type metadata accessor for CalendarBinningUnit);
    }

    else
    {
      v28 = *(*v18 + 16);

      v26 = v28 - 1;
    }
  }

  else
  {
    v26 = v18[2];
  }

  *&v9[*(v7 + 40)] = v26;
  v29 = v53;
  result = sub_1AACEF260(v9, v53, sub_1AACE9AF4);
  v49 = *(v11 + 36);
  *(v29 + v49) = 0;
  v48 = *(v29 + *(v7 + 40));
  if (!v48)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_30:
    sub_1AACE9B88(v53, sub_1AACEF1CC);
    return v27;
  }

  v31 = 0;
  v32 = (v51 + 16);
  v54 = v51 + 32;
  v27 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v33 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    *(v53 + v49) = v33;
    v34 = v57;
    DateBins.subscript.getter(v31, v57);
    v35 = *v32;
    (*v32)(v55, v34, v58);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1AACE9BE8(0, v27[2] + 1, 1, v27);
    }

    v37 = v27[2];
    v36 = v27[3];
    if (v37 >= v36 >> 1)
    {
      v27 = sub_1AACE9BE8((v36 > 1), v37 + 1, 1, v27);
    }

    v27[2] = v37 + 1;
    v38 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v39 = *(v51 + 72);
    v40 = v27 + v38 + v39 * v37;
    v41 = *(v51 + 32);
    v41(v40, v55, v58);
    sub_1AACEF164(v56, v15, type metadata accessor for DateBins.Storage);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        sub_1AACE99D0(0);
        v43 = *(v15 + *(v42 + 64));
        result = sub_1AACE9B88(v15, type metadata accessor for CalendarBinningUnit);
      }

      else
      {
        v44 = *(*v15 + 16);

        v43 = v44 - 1;
      }
    }

    else
    {
      v43 = v15[2];
    }

    if (v43 < 0)
    {
      goto LABEL_33;
    }

    if (v31 == v43 - 1)
    {
      v35(v50, v57 + *(v47 + 36), v58);
      v46 = v27[2];
      v45 = v27[3];
      if (v46 >= v45 >> 1)
      {
        v27 = sub_1AACE9BE8((v45 > 1), v46 + 1, 1, v27);
      }

      sub_1AACE9B88(v57, sub_1AACE9A60);
      v27[2] = v46 + 1;
      result = (v41)(v27 + v38 + v46 * v39, v50, v58);
    }

    else
    {
      result = sub_1AACE9B88(v57, sub_1AACE9A60);
    }

    ++v31;
    if (v33 == v48)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1AACEF164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1AACEF1CC(uint64_t a1)
{
  if (!qword_1ED9B11B8)
  {
    sub_1AACE9AF4(255);
    sub_1AACECB14(&qword_1ED9B11D8, sub_1AACE9AF4, MEMORY[0x1E69E5EC8]);
    v1 = sub_1AAF90294();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B11B8);
    }
  }
}

uint64_t sub_1AACEF260(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t DateBins.subscript.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_1AACEC8E4(0);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CalendarBinningUnit(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DateBins.Storage(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1AACEF164(v3, v15, type metadata accessor for DateBins.Storage);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      goto LABEL_11;
    }

    sub_1AACE99D0(0);
    v18 = *(v15 + *(v17 + 48));
    v19 = *(v15 + *(v17 + 64));
    sub_1AACEF260(v15, v12, type metadata accessor for CalendarBinningUnit);
    result = v18 + a1;
    if (__OFADD__(v18, a1))
    {
      __break(1u);
      goto LABEL_17;
    }

    sub_1AACE8E98(result, v9);
    sub_1AACE9B88(v12, type metadata accessor for CalendarBinningUnit);
    v20 = sub_1AAF8CA64();
    v15 = *(*(v20 - 8) + 32);
    v15(a2, v9, v20);
    v21 = *(v7 + 36);
    sub_1AACE9A60(0);
    v23 = v22;
    result = (v15)(a2 + *(v22 + 36), &v9[v21], v20);
    v24 = v19 - 1;
    if (!__OFSUB__(v19, 1))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  if (__OFADD__(a1, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25 = *(v15 + 2);
  sub_1AAF8C844();
  sub_1AACE9A60(0);
  v23 = v26;
  result = sub_1AAF8C844();
  v24 = v25 - 1;
  if (!__OFSUB__(v25, 1))
  {
    goto LABEL_15;
  }

  __break(1u);
LABEL_11:
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v27 = *v15;
  v28 = *(*v15 + 16);
  if ((v28 - 1) <= a1)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v28 > a1)
  {
    v36 = *(*v15 + 16);
    v29 = sub_1AAF8CA64();
    v30 = *(v29 - 8);
    v31 = *(v30 + 16);
    v32 = v27 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v33 = *(v30 + 72);
    v31(a2, v32 + v33 * a1, v29);
    sub_1AACE9A60(0);
    v23 = v34;
    v31(a2 + *(v34 + 36), v32 + v33 + v33 * a1, v29);

    v24 = v36 - 2;
LABEL_15:
    *(a2 + *(v23 + 40)) = v24 == a1;
    return result;
  }

LABEL_20:
  __break(1u);
  return result;
}

char *sub_1AACEF664(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AACEF684(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1AACEF684(char *result, int64_t a2, char a3, char *a4)
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
    sub_1AAD469FC(0, &qword_1ED9B28C0, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1AACEF7A0(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, unint64_t *a7, uint64_t a8)
{
  v18[1] = a2;
  v19 = a1;
  sub_1AACEA1AC(0, a6, a7, a8);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - v13;
  sub_1AAF8CAA4();
  sub_1AAF8CBA4();
  sub_1AACC9BB0(0, a7, a8, MEMORY[0x1E69E62F8]);

  sub_1AACD889C(v14);

  v20[0] = v14;
  v15 = &v14[*(v12 + 56)];

  sub_1AACD889C(v15);

  v20[1] = v15;
  v16 = &v14[*(v12 + 72)];

  sub_1AACD889C(v16);

  v20[2] = v16;
  v19(v20);
  return sub_1AACE1350(v14, a6, a7, a8, sub_1AACEA1AC);
}

uint64_t sub_1AACEF970@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1AAF8CA64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = **(a1 + 16);
  if (a2)
  {
    if (a2 == 1)
    {
      v12 = *(a1 + 8);
      v13 = *(v11 + 16);
      v14 = MEMORY[0x1E69E7CC0];
      if (v13)
      {
        v21 = v12;
        v22 = a3;
        v23 = MEMORY[0x1E69E7CC0];
        sub_1AACEA040(0, v13, 0);
        v14 = v23;
        v15 = v11 + 32;
        do
        {
          sub_1AAF8C844();
          v23 = v14;
          v17 = *(v14 + 16);
          v16 = *(v14 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_1AACEA040((v16 > 1), v17 + 1, 1);
            v14 = v23;
          }

          *(v14 + 16) = v17 + 1;
          (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v17, v9, v6);
          v15 += 8;
          --v13;
        }

        while (v13);
        v12 = v21;
        a3 = v22;
      }

      sub_1AACEA258(v14, v10, v12, a3);
    }

    else
    {
      if (qword_1ED9B0278 != -1)
      {
        swift_once();
      }

      return sub_1AACE0A98(&unk_1ED9C33B8, a3);
    }
  }

  else
  {
    v18 = sub_1AAF87F6C(**(a1 + 16));
    sub_1AAF0D208(v18, v10, a3);
  }
}

void sub_1AACEFC30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_1AAF8CA64();
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v31 - v11;
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v44 = &v31 - v15;
  v33 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v42 = *(v13 + 16);
    v43 = v13 + 16;
    v17 = *(v13 + 72);
    v18 = (v13 + 8);
    v39 = (v13 + 32);
    v40 = v16;
    v19 = (v16 + v17 * (a3 - 1));
    v38 = -v17;
    v20 = a1 - a3;
    v32 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v36 = v19;
    v37 = a3;
    v34 = v21;
    v35 = v20;
    v22 = v19;
    while (1)
    {
      v23 = v44;
      v24 = v42;
      (v42)(v44, v21, v8, v14);
      v25 = v45;
      v24(v45, v22, v8);
      sub_1AACEFF3C(&qword_1ED9B6BA8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v26 = sub_1AAF8F564();
      v27 = *v18;
      (*v18)(v25, v8);
      v27(v23, v8);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v37 + 1;
        v19 = &v36[v32];
        v20 = v35 - 1;
        v21 = v34 + v32;
        if (v37 + 1 == v33)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v40)
      {
        break;
      }

      v28 = *v39;
      v29 = v41;
      (*v39)(v41, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      v28(v22, v29, v8);
      v22 += v38;
      v21 += v38;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1AACEFEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AACEFF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AACEFF84(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_1AAF8C774();
  v6 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1AACF0188(0, v9, 0);
    v10 = v21;
    v11 = *(sub_1AAF8CA64() - 8);
    v12 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v17 = v6 + 32;
    v16 = *(v11 + 72);
    while (1)
    {
      v19(v12);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1AACF0188((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v18);
      v12 += v16;
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

void *sub_1AACF0188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AAD45470(a1, a2, a3, *v3, &qword_1ED9B16B0, MEMORY[0x1E6968278], MEMORY[0x1E6968278]);
  *v3 = result;
  return result;
}

uint64_t sub_1AACF01D8(uint64_t a1)
{
  sub_1AACEBDDC(0, &qword_1ED9B1E08, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
  v1 = sub_1AAF8CB94();
  v2 = *(v1 - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1AAFC2A20;
  v6 = v5 + v4;
  v7 = *(v2 + 104);
  v7(v6, *MEMORY[0x1E6969A68], v1);
  v7(v6 + v3, *MEMORY[0x1E6969A78], v1);
  v7(v6 + 2 * v3, *MEMORY[0x1E6969A48], v1);
  v7(v6 + 3 * v3, *MEMORY[0x1E6969A58], v1);
  v7(v6 + 4 * v3, *MEMORY[0x1E6969A88], v1);
  v7(v6 + 5 * v3, *MEMORY[0x1E6969A98], v1);
  sub_1AACEC014(v5);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1AAF8CB04();
}

void sub_1AACF042C(uint64_t a1)
{
  if (!qword_1ED9B1E38)
  {
    sub_1AAF8CB94();
    sub_1AADAB5C0(&qword_1ED9B2820, MEMORY[0x1E6969AD0], MEMORY[0x1E6969AD8]);
    v1 = sub_1AAF900B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B1E38);
    }
  }
}

void sub_1AACF04EC(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v24 = v3;
  v25 = a1;
  while (v7)
  {
    v10 = v9;
LABEL_15:
    v13 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v14 = v13 | (v10 << 6);
    v15 = *(*(v3 + 48) + 8 * v14);
    sub_1AACAEF68(*(v3 + 56) + 40 * v14, v27);
    *&v28 = v15;
    sub_1AACBB198(v27, &v28 + 8);
LABEL_16:
    v31[1] = v29;
    v31[2] = v30;
    v31[0] = v28;
    if (!v30)
    {

      return;
    }

    v16 = *&v31[0];
    sub_1AACBB198((v31 + 8), &v28);
    if (*(a1 + 16))
    {
      v17 = sub_1AACC9B78(v16);
      if (v18)
      {
        v19 = *(*(a1 + 56) + 16 * v17 + 8);
        v21 = *(&v29 + 1);
        v20 = v30;
        sub_1AACBB42C(&v28, *(&v29 + 1));
        v26 = *(v20 + 16);

        v23 = v20;
        a1 = v25;
        v26(v22, v19, v21, v23);
        v3 = v24;
      }
    }

    sub_1AACB634C(&v28);
  }

  if (v8 <= v9 + 1)
  {
    v11 = v9 + 1;
  }

  else
  {
    v11 = v8;
  }

  v12 = v11 - 1;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {
      v7 = 0;
      v29 = 0u;
      v30 = 0u;
      v9 = v12;
      v28 = 0u;
      goto LABEL_16;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_1AACF06EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 82) = 1;
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

    *(result + 82) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AACF0744(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || ((*(a1 + 24) ^ *(a2 + 24)) & 1) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a1 + 56);
  v5 = *(a1 + 64);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v11 = *(a2 + 56);
  v10 = *(a2 + 64);
  if (sub_1AACF0AB8(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_1AACF0880(v3, v8) & 1) == 0 || ((v4 ^ v9))
  {
    goto LABEL_9;
  }

  v13 = 0;
  if (((v9 & 0x100) == 0) == (v4 & 0x100) >> 8 || v6 != v11 || v5 != v10)
  {
    return v13 & 1;
  }

  if (sub_1AACF0C18(*(a1 + 72), *(a2 + 72)) && ((*(a1 + 80) ^ *(a2 + 80)) & 1) == 0)
  {
    v13 = *(a1 + 81) ^ *(a2 + 81) ^ 1;
  }

  else
  {
LABEL_9:
    v13 = 0;
  }

  return v13 & 1;
}

unint64_t sub_1AACF0880(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_12:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 56) + 24 * v12);
    v14 = *v13;
    v15 = *(v13 + 1);
    v16 = *(v13 + 2);
    result = sub_1AACB6398(*(*(v3 + 48) + v12));
    if ((v17 & 1) == 0)
    {
      return 0;
    }

    v18 = (*(a2 + 56) + 24 * result);
    if (v14 != *v18)
    {
      return 0;
    }

    v19 = *(v18 + 2);
    if (*(v18 + 1))
    {
      if (!v15 || (sub_1AACF1088(*(v18 + 1), v15) & 1) == 0)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    v20 = *(v19 + 16);
    if (v20 != *(v16 + 16))
    {
LABEL_52:

      return 0;
    }

    if (v20)
    {
      v21 = v19 == v16;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = 0;
      while (v20)
      {
        v24 = *(v19 + v22 + 32);
        v25 = *(v19 + v22 + 72);
        v26 = *(v16 + v22 + 32);
        result = *(v16 + v22 + 48);
        v27 = *(v16 + v22 + 72);
        if (v24 == 9)
        {
          if (v26 != 9)
          {
            goto LABEL_52;
          }
        }

        else if (v26 == 9 || v24 != v26)
        {
          goto LABEL_52;
        }

        if (*(v19 + v22 + 48))
        {
          if (!*(v16 + v22 + 48))
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (*(v19 + v22 + 40) == *(v16 + v22 + 40))
          {
            v29 = *(v16 + v22 + 48);
          }

          else
          {
            v29 = 1;
          }

          if (v29)
          {
            goto LABEL_52;
          }
        }

        if (*(v19 + v22 + 64))
        {
          if (v25 == v27)
          {
            v23 = *(v16 + v22 + 64);
          }

          else
          {
            v23 = 0;
          }

          if (v23 != 1)
          {
            goto LABEL_52;
          }
        }

        else if ((*(v16 + v22 + 64) & 1) != 0 || *(v19 + v22 + 56) != *(v16 + v22 + 56) || v25 != v27)
        {
          goto LABEL_52;
        }

        v22 += 48;
        if (!--v20)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_56;
    }

LABEL_25:
    ;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= i)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t sub_1AACF0AB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(v3 + 56) + 16 * v12;
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 9);
    v17 = sub_1AACB6398(*(*(v3 + 48) + v12));
    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v19 = *(a2 + 56) + 16 * v17;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 9);
    if (v21)
    {
      if (v21 == 1)
      {
        if (v15 != 1)
        {
          return 0;
        }
      }

      else if (v15 != 2)
      {
        return 0;
      }
    }

    else if (v15)
    {
      return 0;
    }

    result = 0;
    if (v20 != v14 || ((v16 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1AACF0C18(_BOOL8 result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v49 = (v6 + 63) >> 6;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (v8 - 1) & v8;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = *(v3 + 56) + 72 * v13;
    v15 = *(v14 + 8);
    result = v15 == 254;
    if (v15 == 254)
    {
      return result;
    }

    v53 = v10;
    v16 = *v14;
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(v14 + 40);
    v52 = *(v14 + 48);
    v50 = *(v14 + 32);
    v51 = *(v14 + 56);
    v20 = *(v14 + 64);
    v21 = v3;
    v22 = sub_1AACB6398(*(*(v3 + 48) + v13));
    if ((v23 & 1) == 0)
    {
      return v15 == 254;
    }

    v24 = *(a2 + 56) + 72 * v22;
    v25 = *(v24 + 8);
    v26 = *(v24 + 16);
    v27 = *(v24 + 24);
    v28 = *(v24 + 32);
    v29 = *(v24 + 40);
    v30 = *(v24 + 48);
    v31 = *(v24 + 56);
    v32 = *(v24 + 64);
    if (v25 == 255)
    {
      if (v15 != 255)
      {
        return v15 == 254;
      }
    }

    else
    {
      if (v15 == 255)
      {
        return v15 == 254;
      }

      v33 = *v24;
      if (v25)
      {
        if (v25 == 1)
        {
          if (v15 != 1 || v33 != v16)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 <= 1)
        {
          if (v33 == 0.0)
          {
            if (v15 != 2 || *&v16 != 0)
            {
              return v15 == 254;
            }
          }

          else if (v15 != 2 || *&v16 != 1)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 == 2)
        {
          if (v15 != 2 || *&v16 != 2)
          {
            return v15 == 254;
          }
        }

        else if (*&v33 == 3)
        {
          if (v15 != 2 || *&v16 != 3)
          {
            return v15 == 254;
          }
        }

        else if (v15 != 2 || *&v16 != 4)
        {
          return v15 == 254;
        }
      }

      else
      {
        if (v15)
        {
          v35 = 0;
        }

        else
        {
          v35 = v33 == v16;
        }

        if (!v35)
        {
          return v15 == 254;
        }
      }
    }

    v36 = v29 >> 8;
    v37 = v19 & 0xFF00;
    if (v29 >> 8 <= 0xFE)
    {
      if (v37 == 65280)
      {
        return v15 == 254;
      }

      if (v29 >> 8 > 1)
      {
        if (v36 == 2)
        {
          if (BYTE1(v19) != 2 || v26 != v17)
          {
            return v15 == 254;
          }
        }

        else
        {
          if (BYTE1(v19) != 3 || v26 != v17 || v27 != v18)
          {
            return v15 == 254;
          }

          if (v29 == 0xFF)
          {
            if (v19 != 255)
            {
              return v15 == 254;
            }
          }

          else
          {
            if (v19 == 255)
            {
              return v15 == 254;
            }

            if (v29)
            {
              if (v29 == 1)
              {
                if (v19 != 1)
                {
                  return v15 == 254;
                }
              }

              else if (v19 != 2)
              {
                return v15 == 254;
              }
            }

            else if (v19)
            {
              return v15 == 254;
            }

            if (v28 != v50)
            {
              return v15 == 254;
            }
          }
        }
      }

      else if (v36)
      {
        if (BYTE1(v19) != 1 || v26 != v17)
        {
          return v15 == 254;
        }
      }

      else
      {
        if (BYTE1(v19))
        {
          v39 = 0;
        }

        else
        {
          v39 = v26 == v17;
        }

        if (!v39)
        {
          return v15 == 254;
        }
      }
    }

    else if (v37 != 65280)
    {
      return v15 == 254;
    }

    if (v32 == 255)
    {
      v38 = v20 == 255;
      result = v15 == 254;
      v3 = v21;
      goto LABEL_35;
    }

    if (v20 == 255)
    {
      return v15 == 254;
    }

    v3 = v21;
    if (v32 > 3)
    {
      if (v32 <= 5)
      {
        if (v32 == 4)
        {
          v8 = v53;
          if (v20 != 4)
          {
            return v15 == 254;
          }
        }

        else
        {
          v8 = v53;
          if (v20 != 5)
          {
            return v15 == 254;
          }
        }

        goto LABEL_108;
      }

      if (v32 == 6)
      {
        v8 = v53;
        if (v20 != 6)
        {
          return v15 == 254;
        }

        goto LABEL_108;
      }

      if (v20 != 7)
      {
        return v15 == 254;
      }

      result = v15 == 254;
      if (v31 > 1u)
      {
        if (v31 == 2)
        {
          if (v51 != 2)
          {
            return result;
          }
        }

        else if (v51 != 3)
        {
          return result;
        }
      }

      else if (v31)
      {
        if (v51 != 1)
        {
          return result;
        }
      }

      else if (v51)
      {
        return result;
      }

      v38 = v30 == v52;
LABEL_35:
      v8 = v53;
      if (!v38)
      {
        return result;
      }
    }

    else
    {
      if (v32 <= 1)
      {
        if (v32)
        {
          if (v20 != 1)
          {
            return v15 == 254;
          }

          v38 = v30 == v52;
        }

        else
        {
          if (v20)
          {
            return v15 == 254;
          }

          v38 = v30 == v52 && v31 == v51;
        }

        result = v15 == 254;
        goto LABEL_35;
      }

      if (v32 == 2)
      {
        v8 = v53;
        if (v20 != 2)
        {
          return v15 == 254;
        }
      }

      else
      {
        v8 = v53;
        if (v20 != 3)
        {
          return v15 == 254;
        }
      }

LABEL_108:
      result = v15 == 254;
      if (v30 != v52)
      {
        return result;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v49)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AACF1088(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) == *(a2 + v3 + 32))
        {
          v5 = *(a2 + v3 + 40);
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 56))
      {
        if (!*(a2 + v3 + 56))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 48) == *(a2 + v3 + 48))
        {
          v6 = *(a2 + v3 + 56);
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 72))
      {
        if (!*(a2 + v3 + 72))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 64) == *(a2 + v3 + 64))
        {
          v7 = *(a2 + v3 + 72);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 88))
      {
        if (!*(a2 + v3 + 88))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 80) == *(a2 + v3 + 80))
        {
          v8 = *(a2 + v3 + 88);
        }

        else
        {
          v8 = 1;
        }

        if (v8)
        {
          return 0;
        }
      }

      if (*(a1 + v3 + 104))
      {
        if (!*(a2 + v3 + 104))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 96) == *(a2 + v3 + 96))
        {
          v4 = *(a2 + v3 + 104);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 80;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1AACF11BC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1AACF04EC(v2);
}

double sub_1AACF1218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + 16);
  type metadata accessor for SourceSignal(0, v5, a3, a4);
  v6 = swift_dynamicCastClass();
  v7 = v6;
  if (v6)
  {
  }

  v10[6] = v7;
  MEMORY[0x1EEE9AC00](v6);
  v10[2] = v5;
  v10[3] = v4;
  sub_1AAF8FE74();
  sub_1AACD90D0(sub_1AACF130C, v10, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v8, &v11);

  return result;
}

uint64_t sub_1AACF1340(uint64_t a1)
{
  v3 = *(*v1 + 344);
  v4 = sub_1AAF8FE74();
  v5 = *(v4 - 8);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-v7];
  v9 = *(v3 - 8);
  (*(v9 + 16))(&v16[-v7], a1, v3, v6);
  (*(v9 + 56))(v8, 0, 1, v3);
  v10 = *(*v1 + 256);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v10, v8, v4);
  swift_endAccess();
  sub_1AACDCA88();
  *(v1 + 16) = 1;
  result = swift_beginAccess();
  v12 = *(v1 + 32);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = v12 + 32;

    do
    {
      sub_1AACD9378(v14, v16);
      Strong = swift_weakLoadStrong();
      sub_1AACD93DC(v16);
      if (Strong)
      {
        *(Strong + 17) = 1;
      }

      v14 += 8;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1AACF1548(uint64_t a1)
{
  v3 = sub_1AAF8DF14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF198C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACDCB48(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACDCB48);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACDCB48);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACDCB48);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACDCB48);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACDCB48);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACDCB48);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACF198C);
    return sub_1AACFE690(v25, sub_1AACDCB48, MEMORY[0x1E697E7E0], sub_1AACDCB48);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B5578, MEMORY[0x1E697E7E0], MEMORY[0x1E697E7F8]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACDCB48);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACDCB48);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACDCB48, MEMORY[0x1E697E7E0], sub_1AACDCB48);
  }

  return result;
}

void sub_1AACF19AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1AACF1A0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1AACF1A54(uint64_t a1)
{
  v3 = sub_1AAF8CAA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF1ECC(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF1E98(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACF1E98);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACF1E98);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF1E98);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACF1E98);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACF1E98);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF1E98);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACF1ECC);
    return sub_1AACFE690(v25, sub_1AACF1E98, MEMORY[0x1E6969770], sub_1AACF1E98);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B6BA0, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACF1E98);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACF1E98);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACF1E98, MEMORY[0x1E6969770], sub_1AACF1E98);
  }

  return result;
}

uint64_t sub_1AACF1EEC(uint64_t a1)
{
  v3 = sub_1AAF8CBA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACD265C(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AACF2330(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(v4 + 16);
  v25 = a1;
  v18(&v25 - v16, a1, v3, v15);
  (*(v4 + 56))(v17, 0, 1, v3);
  v19 = *(*v1 + 256);
  swift_beginAccess();
  v20 = *(v8 + 56);
  sub_1AACDCB7C(v17, v10, sub_1AACF2330);
  sub_1AACDCB7C(v1 + v19, &v10[v20], sub_1AACF2330);
  v21 = *(v4 + 48);
  if (v21(v10, 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF2330);
    if (v21(&v10[v20], 1, v3) == 1)
    {
      return sub_1AACC9B18(v10, sub_1AACF2330);
    }

    goto LABEL_6;
  }

  sub_1AACDCB7C(v10, v13, sub_1AACF2330);
  if (v21(&v10[v20], 1, v3) == 1)
  {
    sub_1AACC9B18(v17, sub_1AACF2330);
    (*(v4 + 8))(v13, v3);
LABEL_6:
    sub_1AACC9B18(v10, sub_1AACD265C);
    return sub_1AACFE690(v25, sub_1AACF2330, MEMORY[0x1E6969AE8], sub_1AACF2330);
  }

  (*(v4 + 32))(v6, &v10[v20], v3);
  sub_1AACF1A0C(&qword_1ED9B6B98, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B00]);
  v23 = sub_1AAF8F5F4();
  v24 = *(v4 + 8);
  v24(v6, v3);
  sub_1AACC9B18(v17, sub_1AACF2330);
  v24(v13, v3);
  result = sub_1AACC9B18(v10, sub_1AACF2330);
  if ((v23 & 1) == 0)
  {
    return sub_1AACFE690(v25, sub_1AACF2330, MEMORY[0x1E6969AE8], sub_1AACF2330);
  }

  return result;
}

uint64_t sub_1AACF2364()
{
  sub_1AACF2398();

  return swift_deallocClassInstance();
}

uint64_t sub_1AACF2398()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 72);
  v20[2] = *(v0 + 56);
  v20[3] = v2;
  v21 = *(v0 + 88);
  v20[0] = *(v0 + 24);
  v20[1] = v1;
  sub_1AACB9B38(v20);
  v3 = *(v0 + 144);
  v22[2] = *(v0 + 128);
  v22[3] = v3;
  v23 = *(v0 + 160);
  v4 = *(v0 + 112);
  v22[0] = *(v0 + 96);
  v22[1] = v4;
  sub_1AACB9B38(v22);
  v5 = *(v0 + 184);
  v6 = *(v0 + 216);
  v24[2] = *(v0 + 200);
  v24[3] = v6;
  v25 = *(v0 + 232);
  v24[0] = *(v0 + 168);
  v24[1] = v5;
  sub_1AACB9B38(v24);

  v7 = *(v0 + 264);
  v8 = *(v0 + 296);
  v26[2] = *(v0 + 280);
  v26[3] = v8;
  v27 = *(v0 + 312);
  v26[0] = *(v0 + 248);
  v26[1] = v7;
  sub_1AACB9B38(v26);
  v9 = *(v0 + 368);
  v28[2] = *(v0 + 352);
  v28[3] = v9;
  v29 = *(v0 + 384);
  v10 = *(v0 + 336);
  v28[0] = *(v0 + 320);
  v28[1] = v10;
  sub_1AACB9B38(v28);
  v11 = *(v0 + 440);
  v30[2] = *(v0 + 424);
  v30[3] = v11;
  v31 = *(v0 + 456);
  v12 = *(v0 + 408);
  v30[0] = *(v0 + 392);
  v30[1] = v12;
  sub_1AACB9B38(v30);
  v13 = *(v0 + 512);
  v32[2] = *(v0 + 496);
  v32[3] = v13;
  v33 = *(v0 + 528);
  v14 = *(v0 + 480);
  v32[0] = *(v0 + 464);
  v32[1] = v14;
  sub_1AACB9B38(v32);
  v15 = *(v0 + 584);
  v34[2] = *(v0 + 568);
  v34[3] = v15;
  v35 = *(v0 + 600);
  v16 = *(v0 + 552);
  v34[0] = *(v0 + 536);
  v34[1] = v16;
  sub_1AACB9B38(v34);
  v17 = *(v0 + 656);
  v36[2] = *(v0 + 640);
  v36[3] = v17;
  v37 = *(v0 + 672);
  v18 = *(v0 + 624);
  v36[0] = *(v0 + 608);
  v36[1] = v18;
  sub_1AACB9B38(v36);

  memcpy(__dst, (v0 + 696), 0x102uLL);
  sub_1AACBB254(__dst);
  sub_1AACF257C(v0 + 960);
  return v0;
}

uint64_t sub_1AACF2544()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1AACF25D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACF25E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1AACF2600@<X0>(uint64_t (*a1)(void, void, void, void, void, void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1(v2[2], v2[3], v2[4], v2[5], v2[6], v2[7]);
  *a2 = result;
  return result;
}

unint64_t sub_1AACF2648(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = *v6;
  v11 = *v8;
  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v10;
  v12[5] = v11;
  sub_1AACC9C70(0);
  v13 = swift_allocObject();
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0u;
  *(v13 + 72) = 0u;
  *(v13 + 88) = 0u;
  *(v13 + 104) = 0u;
  *(v13 + 120) = 0u;
  *(v13 + 136) = 0u;
  *(v13 + 152) = 0;

  v14 = sub_1AACBD668(v19);

  v15 = swift_allocObject();
  *(v15 + 16) = sub_1AACDE210;
  *(v15 + 24) = v12;
  v16 = *(v14 + 144);
  v17 = *(v14 + 152);
  *(v14 + 144) = sub_1AACD8838;
  *(v14 + 152) = v15;

  sub_1AACB4A98(v16, v17);

  return v14;
}

void sub_1AACF28C0(uint64_t a1, unsigned __int8 a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_1AACB6398(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v13 = sub_1AACB6398(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    *(v23[6] + v13) = a2;
    *(v23[7] + 8 * v13) = a1;
    v24 = v23[2];
    v17 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v17)
    {
      v23[2] = v25;
      return;
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

unint64_t sub_1AACF2A74(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CAA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AAEB0210;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  v20 = *(v17 + 96);
  *(v17 + 88) = sub_1AACD8838;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

void sub_1AACF2D68(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1AACE1760(a2);
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
      sub_1AACF5A40(v14, a3 & 1);
      v9 = sub_1AACE1760(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1AAF905B4();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_1AAD96AE4();
      v9 = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(v9 >> 6) + 8] |= 1 << v9;
    *(v19[6] + v9) = a2;
    *(v19[7] + 8 * v9) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * v9) = a1;
}

unint64_t sub_1AACF2EB4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CGSize(0);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACF3140(0);
  v16 = swift_allocObject();
  v16[6] = 0;
  v16[7] = 0;
  v16[5] = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACDDFA4;
  *(v18 + 24) = v15;
  v19 = *(v17 + 48);
  v20 = *(v17 + 56);
  *(v17 + 48) = sub_1AACD8838;
  *(v17 + 56) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

void sub_1AACF3140(uint64_t a1)
{
  if (!qword_1ED9B31A8)
  {
    sub_1AACC9BB0(255, &qword_1ED9B2A88, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E62F8]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B31A8);
    }
  }
}

unint64_t sub_1AACF31BC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AAF8CAA4();
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AAF8CBA4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0;
  *(v16 + 80) = -1;
  *(v16 + 88) = 0;
  *(v16 + 96) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACEA17C;
  *(v18 + 24) = v15;
  v19 = *(v17 + 88);
  v20 = *(v17 + 96);
  *(v17 + 88) = sub_1AACD8800;
  *(v17 + 96) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AACF34B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1AACC9BB0(0, &qword_1ED9B1770, &type metadata for AxisMarkPosition.Storage, type metadata accessor for Signal);
  v6 = swift_allocObject();
  *(v6 + 40) = 4;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  v7 = sub_1AACBD668(MEMORY[0x1E69E7CC0]);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1AAD131E8;
  *(v8 + 24) = v5;
  v9 = *(v7 + 48);
  v10 = *(v7 + 56);
  *(v7 + 48) = sub_1AACD8838;
  *(v7 + 56) = v8;

  sub_1AACB4A98(v9, v10);

  return v7;
}

unint64_t sub_1AACF35B8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements(0);
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B1758, type metadata accessor for AxisMarkLayoutContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AAD16D4C;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  *(v20 + 48) = sub_1AACD8800;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

unint64_t sub_1AACF38F4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v22 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for AxisMarkLayoutContext();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = *v6;
  v13 = *v8;
  v14 = *v10;
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v12;
  v15[5] = v13;
  v15[6] = v14;
  sub_1AACC9BB0(0, &qword_1ED9B1760, &type metadata for AxisLayoutInformation, type metadata accessor for Signal);
  v16 = swift_allocObject();
  *(v16 + 40) = 0u;
  *(v16 + 56) = 0u;
  *(v16 + 72) = 0u;
  *(v16 + 88) = 0u;
  *(v16 + 104) = 0;

  v17 = sub_1AACBD668(v22);

  v18 = swift_allocObject();
  *(v18 + 16) = sub_1AACE56C0;
  *(v18 + 24) = v15;
  v19 = *(v17 + 96);
  v20 = *(v17 + 104);
  *(v17 + 96) = sub_1AACD8800;
  *(v17 + 104) = v18;

  sub_1AACB4A98(v19, v20);

  return v17;
}

unint64_t sub_1AACF3C00(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements(0);
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF5D54(0, &qword_1ED9B1750, type metadata accessor for AxisMarkRenderContext, type metadata accessor for Signal);
  v19 = swift_allocObject();
  v19[6] = 0;
  v19[7] = 0;
  v19[5] = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACE4154;
  *(v21 + 24) = v18;
  v22 = *(v20 + 48);
  v23 = *(v20 + 56);
  *(v20 + 48) = sub_1AACD8838;
  *(v20 + 56) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

unint64_t sub_1AACF3F38(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v25 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = a1[1];

  MEMORY[0x1AC598430](v9);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[2];

  MEMORY[0x1AC598430](v11);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v12 = a1[3];

  MEMORY[0x1AC598430](v13);
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v14 = *v6;
  v15 = *v8;
  v16 = *v10;
  v17 = *v12;
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v14;
  v18[5] = v15;
  v18[6] = v16;
  v18[7] = v17;
  sub_1AACF4278(0);
  v19 = swift_allocObject();
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 104) = 0u;
  *(v19 + 120) = 0;

  v20 = sub_1AACBD668(v25);

  v21 = swift_allocObject();
  *(v21 + 16) = sub_1AACE285C;
  *(v21 + 24) = v18;
  v22 = *(v20 + 112);
  v23 = *(v20 + 120);
  *(v20 + 112) = sub_1AACD8838;
  *(v20 + 120) = v21;

  sub_1AACB4A98(v22, v23);

  return v20;
}

void sub_1AACF4278(uint64_t a1)
{
  if (!qword_1ED9B1778)
  {
    sub_1AAD6D1F0(255, qword_1ED9B1B28, MEMORY[0x1E69E63B0], type metadata accessor for MarksDescriptor);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B1778);
    }
  }
}

unint64_t sub_1AACF42F4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = 0;
  v3[6] = 0;
  v3[7] = 0;
  v3[8] = 1;
  v3[10] = 0;
  v3[11] = 0;
  v3[9] = 0;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9 = *(v6 + 80);
  v8 = *(v6 + 88);
  *(v6 + 80) = sub_1AAD1CCF8;
  *(v6 + 88) = v7;
  sub_1AACB4A98(v9, v8);

  return v6;
}

void sub_1AACF43A8(uint64_t a1)
{
  if (!qword_1ED9B1768)
  {
    sub_1AACC9BB0(255, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
    v5 = type metadata accessor for Signal(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ED9B1768);
    }
  }
}

unint64_t sub_1AACF4424(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v34 = MEMORY[0x1E69E7CC0];
  type metadata accessor for AxisMarkRenderContext();
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9C1C(0, &qword_1ED9B4070, MEMORY[0x1E69E63B0], MEMORY[0x1E69E7DE0], type metadata accessor for ConcreteScale);
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for CGSize(0);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v33 = a1[3];

  MEMORY[0x1AC598430](v10);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACE49D8(0);
  v11 = a1[4];

  MEMORY[0x1AC598430](v12);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, qword_1ED9B1B28, MEMORY[0x1E69E63B0], type metadata accessor for MarksDescriptor);
  v13 = a1[5];

  MEMORY[0x1AC598430](v14);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B3AF8, &type metadata for AxisCompositingLayer, MEMORY[0x1E69E6720]);
  v15 = a1[6];

  MEMORY[0x1AC598430](v16);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v17 = *v4;
  v18 = *v6;
  v19 = *v8;
  v20 = *v33;
  v21 = *v11;
  v22 = *v13;
  v23 = *v15;
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v17;
  v24[5] = v18;
  v24[6] = v19;
  v24[7] = v20;
  v24[8] = v21;
  v24[9] = v22;
  v24[10] = v23;
  sub_1AACC9BB0(0, &unk_1ED9B31D0, &type metadata for SgNode, type metadata accessor for Signal);
  v25 = swift_allocObject();
  v25[6] = 0;
  v25[7] = 0;
  v25[5] = 0xF000000000000007;

  v26 = sub_1AACBD668(v34);

  v27 = swift_allocObject();
  *(v27 + 16) = sub_1AACE48B0;
  *(v27 + 24) = v24;
  v28 = *(v26 + 48);
  v29 = *(v26 + 56);
  *(v26 + 48) = sub_1AACD8838;
  *(v26 + 56) = v27;

  sub_1AACB4A98(v28, v29);

  return v26;
}

unint64_t sub_1AACF4984(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v16 = MEMORY[0x1E69E7CC0];
  sub_1AACC9BB0(0, &qword_1ED9B2A30, MEMORY[0x1E69E63B0], MEMORY[0x1E69E62F8]);
  v6 = *a1;

  MEMORY[0x1AC598430](v7);
  if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v8 = *v6;
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = v8;
  sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
  v10 = swift_allocObject();
  *(v10 + 40) = 0;
  *(v10 + 48) = -1;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;

  v11 = sub_1AACBD668(v16);

  v12 = swift_allocObject();
  *(v12 + 16) = sub_1AAEB0184;
  *(v12 + 24) = v9;
  v13 = *(v11 + 56);
  v14 = *(v11 + 64);
  *(v11 + 56) = sub_1AACD8800;
  *(v11 + 64) = v12;

  sub_1AACB4A98(v13, v14);

  return v11;
}

uint64_t sub_1AACF4B88(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1AAF8FFB4();
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
      result = sub_1AAF8FFB4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1AAD9B4FC(0);
          sub_1AAEB02DC(&qword_1EB4268A8, sub_1AAD9B4FC, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1AAEAD5BC(v13, i, a3);
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
        sub_1AACC9BB0(0, &qword_1ED9B1740, &type metadata for AnyPrimitivePlottableArray, type metadata accessor for Signal);
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

void sub_1AACF4D48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AACF5940(0, &qword_1ED9B16D0, sub_1AAD9B4FC, sub_1AACB62F8, &type metadata for Spec.Channel);
  v31 = v4;
  v6 = sub_1AAF90394();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v20);
      v22 = sub_1AAF906F4();
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
      *(*(v7 + 48) + v15) = v20;
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

uint64_t sub_1AACF5004(uint64_t a1, uint64_t a2)
{
  sub_1AACC9B7C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1AACF5068(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v6[5] = 0;
  v6[6] = 0;
  v6[7] = 0;
  v11 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v12 = swift_allocObject();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = v11;
  v14 = *(v11 + 48);
  v13 = *(v11 + 56);
  *(v11 + 48) = a5;
  *(v11 + 56) = v12;
  a6(v14, v13);

  return v11;
}

uint64_t sub_1AACF5174(__n128 *a1, char a2, uint64_t **a3, uint64_t *a4)
{
  v5 = a1[3].n128_u64[0];
  v6 = a1->n128_u64[0];
  v7 = a1->n128_u8[8];
  v8 = a1[4];
  v49 = v8;
  v50 = a1[5].n128_u8[0];
  v9 = v50;
  v10 = v8;
  v11 = v50 >> 5;
  if (v11 > 3)
  {
    if (v50 >> 5 > 6u)
    {
      v27 = (v5 >> 61) & 3;
      if (v49.n128_u8[8] > 1u)
      {
        v46 = a3;
        v43 = &v46;
        if (v49.n128_u8[8] == 2)
        {

          v48 = sub_1AAEA03BC(v10.n128_i64[0]);
          v44 = &v48;
          v36 = swift_allocObject();
          *(v36 + 16) = v27;
          return sub_1AAEA179C(&v43, sub_1AAEB7BC0, v36);
        }

        else
        {

          v48 = sub_1AAEA03A4(v10.n128_i64[0]);
          v44 = &v48;
          v38 = swift_allocObject();
          *(v38 + 16) = v27;
          return sub_1AAEA1554(&v43, sub_1AAEB7BB8, v38);
        }
      }

      else
      {
        v46 = a3;
        v43 = &v46;
        if (v49.n128_u8[8])
        {

          v48 = sub_1AAEA03D4(v10.n128_i64[0]);
          v44 = &v48;
          v37 = swift_allocObject();
          *(v37 + 16) = v27;
          return sub_1AAEA19E8(&v43, sub_1AAEB7BC8, v37);
        }

        else
        {

          v48 = sub_1AAEA03EC(v10.n128_i64[0]);
          v44 = &v48;
          v28 = swift_allocObject();
          *(v28 + 16) = v27;
          return sub_1AAEA1C44(&v43, sub_1AAEB7BD0, v28);
        }
      }
    }

    if (v11 == 5)
    {
      v48 = a3;
      v46 = &v48;

      sub_1AAEB7BD8(&v49, &v43);
      sub_1AAEAA090(v10.n128_i64[0], v10.n128_i64[1], v9 & 0x1F);
      v43 = v22;
      v47 = &v43;
      v23 = swift_allocObject();
      *(v23 + 16) = v6;
      *(v23 + 24) = v7;
      v24 = sub_1AAEA1098(&v46, sub_1AAEB7CA0, v23);
    }

    else
    {
      if (v11 != 6)
      {
        result = sub_1AAF902C4();
        __break(1u);
        return result;
      }

      v48 = a3;
      v46 = &v48;

      sub_1AAEB7BD8(&v49, &v43);
      sub_1AAEAA148(v10.n128_i64[0], v10.n128_i64[1], v9 & 0x1F);
      v43 = v29;
      v47 = &v43;
      v30 = swift_allocObject();
      *(v30 + 16) = v6;
      *(v30 + 24) = v7;
      v24 = sub_1AAEA12D4(&v46, sub_1AAEB7C34, v30);
    }

LABEL_23:
    v35 = v24;
    sub_1AAEB7C4C(&v49);
    return v35;
  }

  if (v50 >> 5 > 1u)
  {
    v48 = a3;
    v46 = &v48;
    if (v11 == 2)
    {

      sub_1AAEB7BD8(&v49, &v43);
      sub_1AAEA9ED8(v10.n128_i64[0], v10.n128_i64[1], v9 & 0x1F);
      v43 = v25;
      v47 = &v43;
      v26 = swift_allocObject();
      *(v26 + 16) = v6;
      *(v26 + 24) = v7;
      v24 = sub_1AAEA0BF0(&v46, sub_1AAEB7D00, v26);
    }

    else
    {

      sub_1AAEB7BD8(&v49, &v43);
      sub_1AAEA9FB4(v10.n128_i64[0], v10.n128_i64[1], v9 & 0x1F);
      v43 = v33;
      v47 = &v43;
      v34 = swift_allocObject();
      *(v34 + 16) = v6;
      *(v34 + 24) = v7;
      v24 = sub_1AAEA0E30(&v46, sub_1AAEB7CB8, v34);
    }

    goto LABEL_23;
  }

  if (v11)
  {
    v48 = a3;
    v46 = &v48;

    sub_1AAEB7BD8(&v49, &v43);
    sub_1AAEA9DFC(v10.n128_i64[0], v10.n128_i64[1], v9 & 0x1F);
    v43 = v31;
    v47 = &v43;
    v32 = swift_allocObject();
    *(v32 + 16) = v6;
    *(v32 + 24) = v7;
    v24 = sub_1AACF2648(&v46, sub_1AACDE384, v32);
    goto LABEL_23;
  }

  v14 = sub_1AACF263C(v49.n128_i64[0], v8);
  v16 = sub_1AACF263C(v49.n128_i64[1], v15);
  v48 = a4;
  v18 = (v5 & 0x6000000000000000) == 0 && a2 == 1;
  v42 = v14;
  v43 = &v48;
  v41 = v16;
  v44 = &v42;
  v45 = &v41;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 17) = v18;

  v39 = sub_1AACF2EB4(&v43, sub_1AACDDFBC, v19);
  v40 = a3;
  v46 = &v40;
  v47 = &v39;
  v20 = swift_allocObject();
  *(v20 + 16) = v6;
  *(v20 + 24) = v7;

  return sub_1AACF2648(&v46, sub_1AACDE380, v20);
}

uint64_t sub_1AACF57BC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16))
  {
    v7 = sub_1AACC9B78(a1);
    if (v8)
    {
      v9 = *(*(v6 + 56) + 16 * v7);
      swift_endAccess();
      result = (*(*v9 + 200))(a2, a2);
      if (result)
      {
        return result;
      }

      __break(1u);
    }
  }

  swift_endAccess();

  v11 = sub_1AACC6620(a1);
  v13 = v12;

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + 24);
  *(v4 + 24) = 0x8000000000000000;
  sub_1AACC6B20(v11, v13, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 24) = v16;
  swift_endAccess();
  result = (*(*v11 + 200))(a2, a2);
  if (result)
  {
    v15 = result;

    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AACF5940(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_1AAF903B4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AACF59C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    v7 = sub_1AAF903B4();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1AACF5A40(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1AACF5CC4(0);
  v31 = v4;
  v6 = sub_1AAF90394();
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1AAF90694();
      MEMORY[0x1AC5992C0](v20);
      v22 = sub_1AAF906F4();
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
      *(*(v7 + 48) + v15) = v20;
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

void sub_1AACF5CC4(uint64_t a1)
{
  if (!qword_1ED9B2968)
  {
    sub_1AAD9B62C(255, &unk_1ED9B3210, &type metadata for AnyFormatStyle, type metadata accessor for Signal);
    sub_1AACFDD38();
    v1 = sub_1AAF903B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED9B2968);
    }
  }
}

void sub_1AACF5D54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1AACF5DB8(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1AAF8FFB4();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1AAF8FFB4();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1AACF5EC0(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1AAF8FFB4();
LABEL_9:
  result = sub_1AAF90134();
  *v2 = result;
  return result;
}

uint64_t sub_1AACF5FEC()
{
  sub_1AACF6044();

  return swift_deallocClassInstance();
}

char *sub_1AACF6044()
{

  v1 = *(*v0 + 256);
  v2 = sub_1AAF8FE74();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1AACB4A98(*(v0 + *(*v0 + 264)), *(v0 + *(*v0 + 264) + 8));
  return v0;
}

uint64_t sub_1AACF6100()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v4 | 7);
}

uint64_t sub_1AACF61B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = type metadata accessor for ChartScrollView(0, v5, *(v4 + 24), a4);
  v7 = *(*(v6 - 1) + 80);
  v8 = *(*(v6 - 1) + 64);
  v9 = (v7 + 32) & ~v7;
  v10 = v4 + v9;
  (*(*(v5 - 8) + 8))(v4 + v9 + v6[9], v5);
  v11 = v4 + v9 + v6[10];
  if (*(v11 + 104) != 255)
  {
    sub_1AACE3E8C(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), *(v11 + 32), *(v11 + 40), *(v11 + 48), *(v11 + 56), *(v11 + 64));
  }

  v12 = v10 + v6[11];
  if (*(v12 + 104) != 255)
  {
    sub_1AACE3E8C(*v12, *(v12 + 8), *(v12 + 16), *(v12 + 24), *(v12 + 32), *(v12 + 40), *(v12 + 48), *(v12 + 56), *(v12 + 64));
  }

  v13 = v10 + v6[12];
  if (*(v13 + 90))
  {
    v14 = *(v13 + 40);
    if (v14 >> 8 <= 0xFE)
    {
      if ((v14 & 0x100) != 0)
      {
        sub_1AACB634C((v10 + v6[12]));
      }

      else
      {
        sub_1AACCA728(*v13, *(v13 + 8), *(v13 + 16));
      }
    }

    v15 = *(v13 + 88);
    if (v15 >> 8 <= 0xFE)
    {
      if ((v15 & 0x100) != 0)
      {
        sub_1AACB634C((v13 + 48));
      }

      else
      {
        sub_1AACCA728(*(v13 + 48), *(v13 + 56), *(v13 + 64));
      }
    }
  }

  else
  {
  }

  v16 = v10 + v6[13];
  if (*(v16 + 80))
  {
    if (*(v16 + 64))
    {
      sub_1AACB634C((v16 + 40));
    }
  }

  else
  {
  }

  v17 = v10 + v6[14];
  v18 = *(v17 + 16);
  if (v18 != 255)
  {
    sub_1AACCA728(*v17, *(v17 + 8), v18);
  }

  v19 = v10 + v6[15];
  v20 = *(v19 + 16);
  if (v20 != 255)
  {
    sub_1AACCA728(*v19, *(v19 + 8), v20);
  }

  return MEMORY[0x1EEE6BDD0](v4, v9 + v8, v7 | 7);
}

uint64_t sub_1AACF6410()
{
  v1 = *(v0 + 24);
  sub_1AAF8FE74();
  v2 = (sub_1AAF8EF74() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);

  v6 = v2[10];
  v7 = *(v1 - 8);
  if (!(*(v7 + 48))(v0 + v4 + v6, 1, v1))
  {
    (*(v7 + 8))(v0 + v4 + v6, v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1AACF6548(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t sub_1AACF6598()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1AACF65D8()
{
  if (v0[2])
  {
  }

  if (v0[4])
  {
  }

  if (v0[6])
  {
  }

  if (v0[8])
  {
  }

  if (v0[10])
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1AACF6658()
{
  if (*(v0 + 56) <= 2u)
  {
    sub_1AACB634C((v0 + 16));
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

unint64_t sub_1AACF669C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 72) = 1;
  *(v3 + 80) = 0;
  *(v3 + 88) = 0;
  v6 = sub_1AACBD668(a1);

  swift_unownedRetainStrong();

  swift_unownedRetain();

  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = v6;
  v9 = *(v6 + 80);
  v8 = *(v6 + 88);
  *(v6 + 80) = sub_1AACDCC90;
  *(v6 + 88) = v7;
  sub_1AACB4A98(v9, v8);

  return v6;
}

unint64_t sub_1AACF6754(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v33 = MEMORY[0x1E69E7CC0];
  type metadata accessor for CGSize(0);
  v4 = *a1;

  MEMORY[0x1AC598430](v5);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v6 = a1[1];

  MEMORY[0x1AC598430](v7);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  type metadata accessor for SgMeasurements(0);
  v8 = a1[2];

  MEMORY[0x1AC598430](v9);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v10 = a1[3];

  MEMORY[0x1AC598430](v11);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, &qword_1ED9B4100, &type metadata for StackContext, MEMORY[0x1E69E6720]);
  v12 = a1[4];

  MEMORY[0x1AC598430](v13);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  sub_1AACC9BB0(0, qword_1ED9B3CE8, &type metadata for SubPositionContext, MEMORY[0x1E69E6720]);
  v14 = a1[5];

  MEMORY[0x1AC598430](v15);
  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1AAF8F874();
  }

  sub_1AAF8F8C4();
  v16 = v33;
  v17 = *v4;
  v18 = *v6;
  v19 = *v8;
  v20 = *v10;
  v21 = *v12;
  v22 = *v14;
  v23 = swift_allocObject();
  v23[2] = a2;
  v23[3] = a3;
  v23[4] = v17;
  v23[5] = v18;
  v23[6] = v19;
  v23[7] = v20;
  v23[8] = v21;
  v23[9] = v22;
  sub_1AACF5D54(0, &qword_1ED9B3180, sub_1AACC9E68, type metadata accessor for Signal);
  v24 = swift_allocObject();
  sub_1AACF6BF0(__src);
  memcpy(v24 + 5, __src, 0x152uLL);
  v24[48] = 0;
  v24[49] = 0;

  v25 = sub_1AACBD668(v16);

  v26 = swift_allocObject();
  *(v26 + 16) = sub_1AACDEAC8;
  *(v26 + 24) = v23;
  v27 = *(v25 + 384);
  v28 = *(v25 + 392);
  *(v25 + 384) = sub_1AACD8800;
  *(v25 + 392) = v26;

  sub_1AACB4A98(v27, v28);

  return v25;
}