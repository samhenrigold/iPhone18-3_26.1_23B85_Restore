uint64_t sub_26D154824(uint64_t a1, double a2)
{
  swift_beginAccess();
  sub_26D1551AC(v2 + 56, &v9, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType, sub_26D15526C);
  if (v10)
  {
    sub_26D146174(&v9, v11);
    v5 = v12;
    v6 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    *&v9 = a1;
    v7 = (*(v6 + 8))(&v9, v5, v6, a2);
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    sub_26D155218(&v9, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType);
    return 0;
  }

  return v7;
}

uint64_t sub_26D154934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_26D1551AC(v3 + 16, &v11, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType, sub_26D15526C);
  if (v12)
  {
    sub_26D146174(&v11, v13);
    v7 = v14;
    v8 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    *&v11 = a3;
    v9 = (*(v8 + 8))(a1, a2, &v11, v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_26D155218(&v11, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType);
    return 0;
  }

  return v9;
}

uint64_t CategoryAxisGridViewModelGenerator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t CategoryAxisGridViewModelGenerator.models(for:orientation:options:)(uint64_t a1, char *a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *a3;
  v7 = a3[1];
  v8 = *(a1 + *(type metadata accessor for CategoryAxis(0) + 24));
  v13 = v3;
  v14 = a1;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v18 = v7;
  v9 = v7;
  v10 = sub_26D154408(sub_26D1550A8, &v12, v8);

  return v10;
}

uint64_t sub_26D154B6C(uint64_t a1, void *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v7 = a7.n128_f64[0];
  v44 = a2;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 80);
  v40 = a6;
  v41 = v12;
  if ((v11 & 1) == 0)
  {
    v19 = *(*&v10 + 16);
    if (!v19)
    {
      return MEMORY[0x277D84F90];
    }

    v43 = a3;
    v42 = (a4 & 1) == 0;

    v20 = (*&v10 + 40);
    v18 = MEMORY[0x277D84F90];
    do
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      v24 = v44[5];
      v23 = v44[6];
      __swift_project_boxed_opaque_existential_1(v44 + 2, v24);
      LOBYTE(v45) = v42;
      v25 = *(v23 + 8);

      *&v26 = COERCE_DOUBLE(v25(v22, v21, v43, &v45, v24, v23, v7));
      if (v27)
      {
      }

      else
      {
        v28 = *&v26;
        if (v41)
        {

          v29 = sub_26D154934(v22, v21, v40);
        }

        else
        {

          v29 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_26D1535AC();
          v18 = v32;
        }

        v30 = *(v18 + 16);
        if (v30 >= *(v18 + 24) >> 1)
        {
          sub_26D1535AC();
          v18 = v33;
        }

        *(v18 + 16) = v30 + 1;
        v31 = v18 + 16 * v30;
        *(v31 + 32) = v28 / v7;
        *(v31 + 40) = v29;
      }

      v20 += 2;
      --v19;
    }

    while (v19);

    return v18;
  }

  sub_26D149038();
  sub_26D14CD84();

  sub_26D174374();
  sub_26D174394();
  result = sub_26D174384();
  if ((~*&v10 & 0x7FF0000000000000) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v10)
  {
    MEMORY[0x28223BE20](result, v15);
    v34[2] = a3;
    v34[3] = v44;
    v35 = a4 & 1;
    v36 = v7;
    v37 = a5;
    v38 = v41;
    v39 = v40;
    v18 = sub_26D15465C(sub_26D15518C, v34, 0, v16, v17);

    return v18;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_26D154E74@<X0>(uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>, double a8@<D0>)
{
  sub_26D149038();
  sub_26D174044();
  v15 = v25;
  v14 = v26;
  v17 = a3[5];
  v16 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v17);
  LOBYTE(v25) = (a4 & 1) == 0;
  v18 = (*(v16 + 8))(v15, v26, a2, &v25, v17, v16, a8);
  if (v19)
  {

    v21 = 0.0;
    v22 = 1;
  }

  else
  {
    v23 = *&v18;
    if (a5)
    {
      v22 = sub_26D154934(v15, v14, a6);
    }

    else
    {
      v22 = 0;
    }

    v21 = v23 / a8;
  }

  *a7 = v21;
  *(a7 + 8) = v22;
  return result;
}

uint64_t sub_26D154FA4@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>, double a8@<D0>)
{
  memcpy(__dst, __src, 0x58uLL);
  memcpy(v22, __src, sizeof(v22));
  v16 = a4 & 1;
  v17.n128_f64[0] = a8;
  v18 = sub_26D154B6C(v22, a2, a3, v16, a5, a6, v17);
  if (*(v18 + 16))
  {
    *a7 = v16;
    *(a7 + 8) = v18;
    v19 = __dst[2];
    *(a7 + 16) = __dst[1];
    *(a7 + 32) = v19;
    v20 = __dst[4];
    *(a7 + 48) = __dst[3];
    *(a7 + 64) = v20;
    return sub_26D1529D0(&__dst[1], v22);
  }

  else
  {

    *(a7 + 48) = 0u;
    *(a7 + 64) = 0u;
    *(a7 + 16) = 0u;
    *(a7 + 32) = 0u;
    *a7 = 0u;
  }

  return result;
}

uint64_t sub_26D1550E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_26D15513C(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_26D15513C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_26D1551AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  a6(0, a3, a4, a5);
  OUTLINED_FUNCTION_0_8();
  (*(v8 + 16))(a2, a1);
  return a2;
}

uint64_t sub_26D155218(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_26D15526C(0, a2, a3, a4);
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_26D15526C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_26D1433B8(255, a3, a4);
    v5 = sub_26D1744C4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26D1552C4(uint64_t a1, uint64_t a2, id a3, double *a4)
{
  v5 = v4;
  v9 = a4[2];
  v10 = a4[3];
  [a3 setFrame_];
  v11 = [objc_opt_self() mainScreen];
  [v11 scale];

  __swift_project_boxed_opaque_existential_1(v5 + 2, v5[5]);
  sub_26D156A28(0);
  swift_allocObject();
  sub_26D1740E4();
  [a3 setAlpha_];
  __swift_project_boxed_opaque_existential_1(v5 + 17, v5[20]);
  sub_26D1468AC(0, &qword_2812B89D8, 0x277D85C78);
  v12 = sub_26D174454();
  sub_26D173FB4();

  v13 = sub_26D173EA4();
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_26D156AB4;
  *(v15 + 24) = v14;
  v16 = a3;
  sub_26D1740B4();

  v17 = [v16 traitCollection];
  v18 = [v17 layoutDirection];

  *v20 = v9;
  *&v20[1] = v10;
  v21 = v18 == 1;
  sub_26D1560E0(a2, a1, v16, v20);
}

uint64_t sub_26D155558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v30 = a4;
  v28 = a2;
  v8 = type metadata accessor for LineChartModel(0);
  v31 = *(v8 - 8);
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D14D440(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12, v16);
  v17 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v34 = a2;
  v35 = a3;
  sub_26D156B20(0);
  sub_26D174104();
  v29 = sub_26D173EA4();
  (*(v14 + 16))(v17, v30, v13);
  sub_26D14F5B8(v32, v11);
  v18 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v19 = (v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v31 + 80) + v19 + 8) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  (*(v14 + 32))(v21 + v18, v17, v13);
  v22 = v28;
  *(v21 + v19) = v28;
  sub_26D14F61C(v11, v21 + v20);

  v23 = v22;
  v24 = v29;
  v25 = sub_26D1740B4();

  return v25;
}

void sub_26D1557DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 8);
  v7 = *(a2 + 184);
  swift_beginAccess();
  v8 = v7[4];
  v9 = v7[5];
  v10 = v7[7];
  v11 = v7[8];
  v12 = v7[9];
  v59 = v8;
  v64 = v7[6];
  v61 = v10;
  v58 = v11;
  v13 = v12;
  sub_26D156CB8(v8, v9, v64, v10, v11, v12);
  sub_26D14D440(0);
  sub_26D156978(&qword_2812B7B98, MEMORY[0x277D6CC48]);
  sub_26D174374();
  sub_26D174394();
  if (v62[0] == v63[0])
  {
    v14 = v13;
    v15 = v59;
    v16 = v61;
    v17 = v64;
    if (v9)
    {
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = v58;
LABEL_6:
      v63[0] = v15;
      v63[1] = v9;
      v63[2] = v17;
      v63[3] = v16;
      v63[4] = v24;
      v63[5] = v14;
      if (v22)
      {
        v62[0] = v23;
        v62[1] = v22;
        v62[2] = v21;
        v62[3] = v20;
        v62[4] = v19;
        v62[5] = v18;
        v29 = v14;
        v30 = v24;
        v31 = v9;
        v32 = v15;
        v33 = v17;
        v60 = static CategoryZone.== infix(_:_:)(v63, v62);
        sub_26D156CB8(v32, v31, v33, v61, v30, v29);

        sub_26D156D08(v32, v31, v64, v61, v58, v29);
        if (v60)
        {
          goto LABEL_18;
        }

        goto LABEL_13;
      }

      v52 = v23;
      v53 = v21;
      v54 = v20;
      v55 = v19;
      v56 = v18;
      sub_26D156CB8(v59, v9, v64, v16, v24, v14);

      v15 = v59;
      v17 = v64;
LABEL_12:
      sub_26D156D08(v15, v9, v17, v16, v24, v14);
      sub_26D156D08(v52, v22, v53, v54, v55, v56);
LABEL_13:
      swift_beginAccess();
      sub_26D156D58(0);
      sub_26D1741C4();
      swift_endAccess();
      sub_26D174374();
      sub_26D174394();
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      if (v62[0] != v63[0])
      {
        v40 = sub_26D1743B4();
        v35 = v41[1];
        v64 = *v41;
        v42 = v41[2];
        v37 = v41[3];
        v38 = v41[4];
        v39 = v41[5];

        v40(v63, 0);
        v36 = v42;
        v34 = v64;
      }

      v15 = v7[4];
      v43 = v7[5];
      v17 = v7[6];
      v44 = v7[7];
      v45 = v7[8];
      v46 = v7[9];
      v7[4] = v34;
      v7[5] = v35;
      v7[6] = v36;
      v7[7] = v37;
      v7[8] = v38;
      v7[9] = v39;
      goto LABEL_17;
    }
  }

  else
  {
    v25 = sub_26D1743B4();
    v22 = v26[1];
    v27 = v26[3];
    v52 = *v26;
    v53 = v26[2];
    v28 = v26[5];
    v55 = v26[4];

    v54 = v27;

    v56 = v28;

    v25(v63, 0);
    v14 = v13;
    if (v9)
    {
      v24 = v58;
      v15 = v59;
      v16 = v61;
      v17 = v64;
      v19 = v55;
      v18 = v56;
      v21 = v53;
      v20 = v54;
      v23 = v52;
      goto LABEL_6;
    }

    v15 = v59;
    v16 = v61;
    v17 = v64;
    if (v22)
    {
      v24 = v58;
      goto LABEL_12;
    }
  }

  v43 = 0;
  v44 = v16;
  v45 = v58;
  v46 = v14;
LABEL_17:
  sub_26D156D08(v15, v43, v17, v44, v45, v46);
LABEL_18:
  v47 = *(a4 + OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews);
  v48 = sub_26D14CE24(v47);

  for (i = 0; ; ++i)
  {
    if (v48 == i)
    {

      return;
    }

    if ((v47 & 0xC000000000000001) != 0)
    {
      v50 = MEMORY[0x26D6B38E0](i, v47);
    }

    else
    {
      if (i >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v50 = *(v47 + 8 * i + 32);
    }

    v51 = v50;
    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_26D155CB0(i, v50, v6, a5);
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

void sub_26D155CB0(unint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  swift_beginAccess();
  v30 = a2;
  v8 = *&a2[v7];
  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 64);
  v12 = (v9 + 63) >> 6;
  v28 = a3 + 32;
  v32 = a3 + 32 + 16 * a1;
  swift_bridgeObjectRetain_n();
  v13 = 0;
  v31 = a3;
  while (v11)
  {
    v14 = v11;
    if ((a1 & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

LABEL_11:
    if (*(a3 + 16) <= a1)
    {
      goto LABEL_27;
    }

    v11 = (v14 - 1) & v14;
    v16 = *(v32 + 8);
    if (*(v16 + 16))
    {
      v17 = *(*(v8 + 56) + 8 * (__clz(__rbit64(v14)) | (v13 << 6)));

      v18 = v17;

      v19 = sub_26D147140();
      if (v20)
      {
        v21 = *(*(v16 + 56) + 8 * v19);

        [*&v18[OBJC_IVAR____TtC9TeaCharts8LineView_imageView] setImage_];
      }

      else
      {
      }

      a3 = v31;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v15 >= v12)
    {
      break;
    }

    v14 = *(v8 + 64 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      if ((a1 & 0x8000000000000000) != 0)
      {
        goto LABEL_26;
      }

      goto LABEL_11;
    }
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (*(a3 + 16) <= a1)
  {
    goto LABEL_29;
  }

  if (*(v28 + 16 * a1))
  {
    [*(*&v30[OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView] + OBJC_IVAR____TtC9TeaCharts8LineView_imageView) setImage_];
  }

  v22 = *(a4 + *(type metadata accessor for LineChartModel(0) + 20));
  if (*(v22 + 16) > a1)
  {
    v23 = LineSeriesAccessibilityElementProvider.seriesContainerElement(for:in:chartModel:)(a1, v30, a4);
    [v23 setIsAccessibilityElement_];
    if (*(v22 + 16) <= a1)
    {
      goto LABEL_30;
    }

    v24 = v22 + 24 * a1;
    v25 = *(v24 + 32);
    v26 = *(v24 + 40);

    sub_26D156DC0(v25, v26, v23);

    sub_26D156E24(0, &qword_2812B74D8, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_26D1763D0;
    *(v27 + 56) = type metadata accessor for LineSeriesAccessibilityElement(0);
    *(v27 + 32) = v23;
    sub_26D16DACC(v27, v30);
  }
}

void sub_26D155FF0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_26D156AD8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26D149F38;
  v6[3] = &block_descriptor;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.15];
  _Block_release(v4);
}

void sub_26D1560E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v83 = a2;
  v80 = a1;
  sub_26D1568F8(0);
  v79 = v6;
  OUTLINED_FUNCTION_0_8();
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D14D440(0);
  v12 = v11;
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x28223BE20](v15, v16);
  v78 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v77 = &v73 - v20;
  v21 = *a4;
  v22 = a4[1];
  v76 = *(a4 + 16);
  v23 = *(a3 + OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews);
  v84 = sub_26D14CE24(v23);
  v82 = v23 & 0xC000000000000001;
  v75 = v23 + 32;
  v74 = (v14 + 16);
  v73 = (v14 + 8);
  v85 = v23;

  v24 = 0;
  v91 = v12;
LABEL_2:
  if (v24 == v84)
  {

    return;
  }

  v25 = v82;
  sub_26D1601E0();
  if (v25)
  {
    v26 = MEMORY[0x26D6B38E0](v24, v85);
  }

  else
  {
    v26 = *(v75 + 8 * v24);
  }

  v94 = v26;
  v27 = *(v83 + *(type metadata accessor for LineChartModel(0) + 20));
  if (v24 >= *(v27 + 16))
  {
    goto LABEL_37;
  }

  v86 = v24 + 1;
  v28 = (v27 + 24 * v24);
  v29 = v28[5];
  v87 = v28[4];
  v30 = v28[6];
  (*v74)(v77, v80, v12);
  sub_26D156978(&qword_2812B7BA0, MEMORY[0x277D6CC40]);
  v89 = v29;

  v88 = v30;

  sub_26D174264();
  v31 = *(v79 + 36);
  v93 = OBJC_IVAR____TtC9TeaCharts14LineSeriesView_zoneLineViews;
  swift_beginAccess();
  sub_26D156978(&qword_2812B7B98, MEMORY[0x277D6CC48]);
  v90 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_26D174394();
    if (*&v10[v31] == *&v97[0])
    {
      break;
    }

    v32 = sub_26D1743B4();
    v34 = *v33;
    v35 = v33[1];
    v36 = v33[3];
    v92 = v33[2];
    v38 = v33[4];
    v37 = v33[5];

    v32(v97, 0);
    sub_26D1743A4();
    if (*(*&v93[v94] + 16))
    {

      sub_26D147140();
      v40 = v39;

      if (v40)
      {

        v41 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v95[0] = v41;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26D14D508(0, v41[2] + 1, 1);
          v41 = v95[0];
        }

        v44 = v41[2];
        v43 = v41[3];
        v45 = (v44 + 1);
        if (v44 >= v43 >> 1)
        {
          v90 = (v44 + 1);
          sub_26D14D508((v43 > 1), v44 + 1, 1);
          v45 = v90;
          v41 = v95[0];
        }

        v41[2] = v45;
        v90 = v41;
        v46 = &v41[6 * v44];
        v46[4] = v34;
        v46[5] = v35;
        v12 = v91;
        v46[6] = v92;
        v46[7] = v36;
        v46[8] = v38;
        v46[9] = v37;
      }

      else
      {

        v12 = v91;
      }
    }

    else
    {
    }
  }

  sub_26D1569BC(v10);
  __swift_project_boxed_opaque_existential_1((v81 + 96), *(v81 + 120));
  v47 = sub_26D1434EC();
  v48 = sub_26D143558();
  v49 = v78;
  MEMORY[0x26D6B3270](v90, &type metadata for CategoryZone, v47, v48);
  v97[0] = v87;
  v97[1] = v89;
  v97[2] = v88;
  v95[0] = v21;
  v95[1] = v22;
  v96 = v76;
  v90 = sub_26D172250(v49, v97, v95);
  v92 = v50;
  (*v73)(v49, v12);

  v52 = v93;
  v51 = v94;
  swift_beginAccess();
  v53 = *&v52[v51];
  v54 = 1 << *(v53 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v53 + 64);
  v57 = (v54 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v58 = 0;
  while (v56)
  {
    v59 = v92;
LABEL_28:
    v61 = __clz(__rbit64(v56));
    v56 &= v56 - 1;
    v62 = *(*(v53 + 56) + 8 * (v61 | (v58 << 6)));
    if (*(v59 + 16))
    {

      v93 = v62;
      v63 = sub_26D147140();
      if ((v64 & 1) == 0)
      {
        goto LABEL_32;
      }

      v65 = *(*(v92 + 56) + 8 * v63);
      v66 = v65;
      v67 = v65;
      v68 = v93;
      sub_26D154104(v67);
      [v68 setHidden_];
    }

    else
    {

      v69 = v62;
LABEL_32:
      sub_26D154104(0);
      [v62 setHidden_];
    }
  }

  v59 = v92;
  while (1)
  {
    v60 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      break;
    }

    if (v60 >= v57)
    {

      v70 = v94;
      v71 = *(v94 + OBJC_IVAR____TtC9TeaCharts14LineSeriesView_defaultLineView);
      v72 = v90;
      sub_26D154104(v90);

      v24 = v86;
      v12 = v91;
      goto LABEL_2;
    }

    v56 = *(v53 + 64 + 8 * v60);
    ++v58;
    if (v56)
    {
      v58 = v60;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void *sub_26D15687C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  return v0;
}

uint64_t sub_26D1568C4()
{
  sub_26D15687C();

  return MEMORY[0x2821FE8D8](v0, 192, 7);
}

void sub_26D1568F8(uint64_t a1)
{
  if (!qword_2812B7580)
  {
    sub_26D14D440(255);
    sub_26D156978(&qword_2812B7B98, MEMORY[0x277D6CC48]);
    v1 = sub_26D1746B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B7580);
    }
  }
}

uint64_t sub_26D156978(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_26D14D440(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26D1569BC(uint64_t a1)
{
  sub_26D1568F8(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D156A28(uint64_t a1)
{
  if (!qword_2812B7B80)
  {
    sub_26D156E24(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    v1 = sub_26D1740F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B7B80);
    }
  }
}

void sub_26D156B20(uint64_t a1)
{
  if (!qword_2812B75C0)
  {
    sub_26D1468AC(255, &qword_2812B89D0, 0x277D75D18);
    sub_26D156E24(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812B75C0);
    }
  }
}

void sub_26D156BC4(uint64_t a1)
{
  sub_26D14D440(0);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for LineChartModel(0) - 8);
  sub_26D1557DC(a1, *(v1 + 16), v1 + v4, *(v1 + v5), v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80)));
}

void sub_26D156CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_26D156D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

void sub_26D156D58(uint64_t a1)
{
  if (!qword_2812B7640[0])
  {
    type metadata accessor for LineSeriesAccessibilityElement(255);
    v1 = sub_26D1741D4();
    if (!v2)
    {
      atomic_store(v1, qword_2812B7640);
    }
  }
}

void sub_26D156DC0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26D174204();

  [a3 setAccessibilityLabel_];
}

void sub_26D156E24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D156E88(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D156EDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t ChartModelFactory.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t ChartModelFactory.init(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t ChartModelFactory.model(for:)(__int128 *a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return v3(&v5);
}

uint64_t ChartModelFactory.__deallocating_deinit()
{
  ChartModelFactory.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t Series.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Series.init(_:points:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Series.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_26D174244();
  v6 = *(a2 + 16);
  v7 = *(a2 + 40);

  return MEMORY[0x2821FC380](a1, v5, v6, v7);
}

uint64_t static Series.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1[2];
  v9 = a2[2];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a6 + 8);

  return MEMORY[0x2821FC390](v8, v9, a3, v11);
}

uint64_t sub_26D1571C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_26D1747E4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E696F70 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_26D1747E4();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_26D1572CC(char a1)
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](a1 & 1);
  return sub_26D174894();
}

uint64_t sub_26D157320(char a1)
{
  if (a1)
  {
    return 0x73746E696F70;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_26D15738C(uint64_t a1)
{
  sub_26D174864();
  sub_26D1572A4(v3, *v1);
  return sub_26D174894();
}

uint64_t sub_26D1573EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26D1571C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26D15744C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26D15728C();
  *a1 = result;
  return result;
}

uint64_t sub_26D157480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_26D1574D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Series.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v19 = *(a2 + 16);
  v20 = v4;
  v24[0] = v19;
  v24[1] = v4;
  type metadata accessor for Series.CodingKeys(255, v24);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_26D174794();
  OUTLINED_FUNCTION_1();
  v21 = v5;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - v8;
  v18 = *(v2 + 16);
  v10 = a1[3];
  v11 = a1;
  v13 = v12;
  __swift_project_boxed_opaque_existential_1(v11, v10);
  sub_26D1748B4();
  LOBYTE(v24[0]) = 0;
  v14 = v22;
  sub_26D174764();
  if (v14)
  {
    return (*(v21 + 8))(v9, v13);
  }

  v16 = v21;
  *&v24[0] = v18;
  v25 = 1;
  sub_26D174304();
  v23 = v20;
  swift_getWitnessTable();
  sub_26D174784();
  return (*(v16 + 8))(v9, v13);
}

uint64_t Series.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  v5 = *(v1 + 8);
  sub_26D174864();
  Series.hash(into:)(v4, a1);
  return sub_26D174894();
}

uint64_t Series.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v19[0] = a2;
  v19[1] = a3;
  v19[2] = a4;
  v19[3] = a5;
  type metadata accessor for Series.CodingKeys(255, v19);
  OUTLINED_FUNCTION_0_9();
  swift_getWitnessTable();
  sub_26D174754();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8, v9);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1748A4();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19[0]) = 0;
  v10 = sub_26D174724();
  v12 = v11;
  v17 = v10;
  sub_26D174304();
  v20 = 1;
  swift_getWitnessTable();
  sub_26D174744();
  v13 = OUTLINED_FUNCTION_1_4();
  v14(v13);
  v15 = v19[0];
  *a6 = v17;
  a6[1] = v12;
  a6[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26D1579D4(uint64_t a1, uint64_t a2)
{
  sub_26D174864();
  Series.hash(into:)(v4, a2);
  return sub_26D174894();
}

uint64_t getEnumTagSinglePayload for Orientation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26D157B28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_26D157C48(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_26D157CD4(v1);
}

void *sub_26D157C78(uint64_t a1, uint64_t a2)
{
  v3 = *((*MEMORY[0x277D85000] & *v2) + 0xE8);
  OUTLINED_FUNCTION_19(v2 + v3, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_26D157CD4(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0xE8);
  OUTLINED_FUNCTION_29(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_26D157D38@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 240);
  OUTLINED_FUNCTION_19(v1 + v4, v5);
  OUTLINED_FUNCTION_21();
  sub_26D1744C4();
  OUTLINED_FUNCTION_0_8();
  return (*(v6 + 16))(a1, v1 + v4);
}

uint64_t sub_26D157DDC(uint64_t a1)
{
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 240);
  swift_beginAccess();
  OUTLINED_FUNCTION_21();
  sub_26D1744C4();
  OUTLINED_FUNCTION_0_8();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void *sub_26D157E94()
{
  v1 = *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xF8));
  v2 = v1;
  return v1;
}

double sub_26D157F68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x108), a2);

  return result;
}

uint64_t sub_26D157FC0(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x108);
  OUTLINED_FUNCTION_29(a1);
  *(v1 + v3) = a1;
}

id ChartViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ChartViewController.init(coder:)()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_26D1744C4();
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7, v8);
  v10 = v13 - v9;
  *(v1 + *((v4 & v3) + 0xE8)) = 0;
  __swift_storeEnumTagSinglePayload(v1 + *((*v2 & *v1) + 0xF0), 1, 1, v5);
  *(v1 + *((*v2 & *v1) + 0xF8)) = 0;
  v11 = *((*v2 & *v1) + 0x100);
  sub_26D158310(0);
  memset(v13, 0, sizeof(v13));
  swift_allocObject();
  *(v1 + v11) = sub_26D173F84();
  v12 = *((*v2 & *v1) + 0x108);
  sub_26D173FA4();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, AssociatedTypeWitness);
  *(v1 + v12) = sub_26D173F74();
  sub_26D1746F4();
  __break(1u);
}

void sub_26D158310(uint64_t a1)
{
  if (!qword_2812B8998)
  {
    sub_26D158368();
    v1 = sub_26D173FA4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B8998);
    }
  }
}

void sub_26D158368()
{
  if (!qword_2812B8270)
  {
    v0 = sub_26D1744C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B8270);
    }
  }
}

void ChartViewController.init(viewProvider:coordinateProvider:styleManager:layoutAttributesFactory:gridViewProvider:gridViewModelGenerator:interactionManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_31();
  v9 = v7;
  v71 = v10;
  v74 = v11;
  v75 = v13;
  v76 = v12;
  v77 = v15;
  v78 = v14;
  v17 = v16;
  v67 = v16;
  v18 = *v7;
  v19 = *MEMORY[0x277D85000];
  v72 = *MEMORY[0x277D85000] & *v7;
  v70 = *((v19 & v18) + 0x80);
  v69 = *((v19 & v18) + 0x50);
  v20 = v69;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  OUTLINED_FUNCTION_0_8();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v65 - v24;
  *&v9[*((v19 & v18) + 0xE8)] = 0;
  OUTLINED_FUNCTION_0_10();
  __swift_storeEnumTagSinglePayload(&v9[*(v26 + 240)], 1, 1, v20);
  OUTLINED_FUNCTION_0_10();
  *&v9[*(v27 + 248)] = 0;
  OUTLINED_FUNCTION_0_10();
  v29 = *(v28 + 256);
  sub_26D158310(0);
  v84 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  memset(v83, 0, sizeof(v83));
  swift_allocObject();
  *&v9[v29] = sub_26D173F84();
  OUTLINED_FUNCTION_0_10();
  v31 = *(v30 + 264);
  sub_26D173FA4();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v8);
  *&v9[v31] = sub_26D173F74();
  OUTLINED_FUNCTION_0_10();
  v73 = *((v19 & v18) + 0x58);
  OUTLINED_FUNCTION_7_0();
  v68 = v32;
  v34 = OUTLINED_FUNCTION_16(v33);
  v35(v34, v17);
  OUTLINED_FUNCTION_0_10();
  v36 = *((v19 & v18) + 0x60);
  OUTLINED_FUNCTION_7_0();
  v66 = v37;
  v39 = OUTLINED_FUNCTION_16(v38);
  v40(v39, v78, v36);
  OUTLINED_FUNCTION_0_10();
  v41 = *((v19 & v18) + 0x68);
  OUTLINED_FUNCTION_7_0();
  v65 = v42;
  v44 = OUTLINED_FUNCTION_16(v43);
  v45(v44, v77, v41);
  OUTLINED_FUNCTION_0_10();
  sub_26D146A14(v76, &v9[*(v46 + 200)]);
  OUTLINED_FUNCTION_0_10();
  sub_26D146A14(v75, &v9[*(v47 + 208)]);
  OUTLINED_FUNCTION_0_10();
  v48 = *((v19 & v18) + 0x70);
  OUTLINED_FUNCTION_7_0();
  v50 = v49;
  v52 = OUTLINED_FUNCTION_16(v51);
  v53(v52, v74, v48);
  OUTLINED_FUNCTION_0_10();
  v54 = *((v19 & v18) + 0x78);
  OUTLINED_FUNCTION_7_0();
  v56 = v55;
  v58 = OUTLINED_FUNCTION_16(v57);
  v59 = v71;
  v60(v58, v71, v54);
  *&v61 = v69;
  *(&v61 + 1) = v73;
  *&v62 = v36;
  *(&v62 + 1) = v41;
  v63 = *((v19 & v18) + 0xA8);
  v80 = v61;
  v81 = v62;
  *&v82 = v48;
  *(&v82 + 1) = v54;
  v83[0] = v70;
  *&v83[1] = *(v72 + 136);
  *&v83[3] = *(v72 + 152);
  v83[5] = v63;
  v64 = type metadata accessor for ChartViewController(0, &v80);
  v79.receiver = v9;
  v79.super_class = v64;
  objc_msgSendSuper2(&v79, sel_initWithNibName_bundle_, 0, 0);
  (*(v56 + 8))(v59, v54);
  (*(v50 + 8))(v74, v48);
  __swift_destroy_boxed_opaque_existential_1(v75);
  __swift_destroy_boxed_opaque_existential_1(v76);
  (*(v65 + 8))(v77, v41);
  (*(v66 + 8))(v78, v36);
  (*(v68 + 8))(v67, v73);
  OUTLINED_FUNCTION_26();
}

id ChartViewController.__deallocating_deinit()
{
  v1 = (*MEMORY[0x277D85000] & *v0);
  v2 = [objc_opt_self() defaultCenter];
  [v2 removeObserver:v0 name:*MEMORY[0x277D76448] object:0];

  v3 = v1[6];
  v8[0] = v1[5];
  v8[1] = v3;
  v4 = v1[8];
  v8[2] = v1[7];
  v8[3] = v4;
  v5 = v1[10];
  v8[4] = v1[9];
  v8[5] = v5;
  v6 = type metadata accessor for ChartViewController(0, v8);
  v9.receiver = v0;
  v9.super_class = v6;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_26D158AF4(char *a1)
{
  OUTLINED_FUNCTION_5_0();
  (*(v2 + 8))(v3 + v4);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5_0();
  (*(v5 + 8))(&a1[v6]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5_0();
  (*(v7 + 8))(&a1[v8]);
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_1(&a1[*(v9 + 200)]);
  OUTLINED_FUNCTION_1_5();
  __swift_destroy_boxed_opaque_existential_1(&a1[*(v10 + 208)]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5_0();
  (*(v11 + 8))(&a1[v12]);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_5_0();
  (*(v13 + 8))(&a1[v14]);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_1_5();
  v17 = *(v16 + 240);
  sub_26D1744C4();
  OUTLINED_FUNCTION_0_8();
  (*(v18 + 8))(&a1[v17]);
  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_1_5();

  OUTLINED_FUNCTION_1_5();
}

void sub_26D158D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v8 = *v4;
  v9 = *MEMORY[0x277D85000];
  *&v132 = *MEMORY[0x277D85000] & *v4;
  v10 = *((v9 & v8) + 0xA0);
  v131 = (v132 + 120);
  v11 = *((v9 & v8) + 0x70);
  *&__dst[0] = OUTLINED_FUNCTION_27(a1, a2, a3, a4, &associated type descriptor for GridViewModelGeneratorType.XAxis);
  *(&__dst[0] + 1) = OUTLINED_FUNCTION_27(*&__dst[0], v12, v13, v14, &associated type descriptor for GridViewModelGeneratorType.YAxis);
  *&__dst[1] = swift_getAssociatedConformanceWitness();
  *(&__dst[1] + 1) = swift_getAssociatedConformanceWitness();
  type metadata accessor for CoordinateSpace(0, __dst);
  OUTLINED_FUNCTION_1();
  v117 = v16;
  v118 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_9_0();
  v115 = v19;
  v20 = *((v9 & v8) + 0x80);
  v21 = *((v9 & v8) + 0x50);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_26D1744C4();
  OUTLINED_FUNCTION_1();
  v121 = v24;
  v122 = v23;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v25, v26);
  OUTLINED_FUNCTION_9_0();
  v120 = v27;
  OUTLINED_FUNCTION_2();
  v125 = v28;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29, v30);
  OUTLINED_FUNCTION_9_0();
  v124 = v31;
  sub_26D1744C4();
  OUTLINED_FUNCTION_1();
  v129 = v33;
  v130 = v32;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v112 - v36;
  v128 = AssociatedTypeWitness;
  v127 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v38, v39);
  v123 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v42);
  v126 = &v112 - v43;
  v44 = *((v9 & v8) + 0x58);
  v45 = *((v9 & v8) + 0x88);
  v46 = v10;
  v47 = v20;
  v48 = *((v9 & v8) + 0xA8);
  v119 = v11;
  *&v49 = v11;
  *(&v49 + 1) = *v131;
  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v44;
  v131 = v44;
  v50 = *(v132 + 96);
  *&v51 = v20;
  v116 = v45;
  *(&v51 + 1) = v45;
  v114 = v50;
  __dst[1] = v50;
  __dst[2] = v49;
  v52 = *(v132 + 144);
  __dst[3] = v51;
  v132 = v52;
  __dst[4] = v52;
  v113 = v46;
  *&__dst[5] = v46;
  *(&__dst[5] + 1) = v48;
  v53 = type metadata accessor for ChartViewController(0, __dst);
  v137.receiver = v7;
  v137.super_class = v53;
  v54 = objc_msgSendSuper2(&v137, sel_viewDidLayoutSubviews);
  v56 = sub_26D157C78(v54, v55);
  if (v56)
  {
    v57 = v56;
    v58 = OUTLINED_FUNCTION_20();
    if (!v58)
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v58 bounds];
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v59 = sub_26D157E94();
  if (v59)
  {
    v60 = v59;
    v61 = OUTLINED_FUNCTION_20();
    if (!v61)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    [v61 bounds];
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_14();
  }

  v62 = OUTLINED_FUNCTION_20();
  if (!v62)
  {
    __break(1u);
    goto LABEL_19;
  }

  v63 = v62;
  v64 = [v62 traitCollection];

  v65 = [v64 layoutDirection];
  v66 = OUTLINED_FUNCTION_20();
  if (!v66)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v67 = v66;
  v68 = v65 == 1;
  [v66 bounds];
  OUTLINED_FUNCTION_22();

  sub_26D157D38(v37);
  if (__swift_getEnumTagSinglePayload(v37, 1, v21))
  {
    v129[1](v37, v130);
    return;
  }

  v69 = v124;
  v70 = v125;
  v125[2](v124, v37, v21);
  v129[1](v37, v130);
  *&__dst[0] = v5;
  *(&__dst[0] + 1) = v6;
  LODWORD(v130) = v68;
  LOBYTE(__dst[1]) = v68;
  (*(v47 + 24))(__dst, v21, v47);
  (v70[1])(v69, v21);
  v72 = v126;
  v71 = v127;
  v73 = OUTLINED_FUNCTION_25();
  v74 = v128;
  v76 = v75(v73);
  v78 = sub_26D157C78(v76, v77);
  if (!v78)
  {
    v108 = OUTLINED_FUNCTION_25();
    v109(v108);
    return;
  }

  v79 = v78;
  v80 = sub_26D157E94();
  if (!v80)
  {
    v110 = OUTLINED_FUNCTION_25();
    v111(v110);

    return;
  }

  v129 = v80;
  v82 = sub_26D157F68(v80, v81);
  v83 = *(v71 + 16);
  v84 = v120;
  v83(v120, v72, v74, v82);
  __swift_storeEnumTagSinglePayload(v84, 0, 1, v74);
  sub_26D173F64();

  (*(v121 + 8))(v84, v122);
  v85 = OUTLINED_FUNCTION_20();
  if (v85)
  {
    v86 = v85;
    v125 = v79;
    [v85 bounds];
    v88 = v87;
    v90 = v89;

    v91 = OUTLINED_FUNCTION_20();
    if (v91)
    {
      v92 = v91;
      v93 = [v91 traitCollection];

      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v95 = v115;
      v96 = v126;
      (*(AssociatedConformanceWitness + 72))(v74, AssociatedConformanceWitness);
      *&__dst[0] = v88;
      *(&__dst[0] + 1) = v90;
      *&__dst[1] = v93;
      v97 = (*(v113 + 40))(v95, __dst, v119);
      (*(v117 + 8))(v95, v118);
      OUTLINED_FUNCTION_4_0();
      v99 = &v7[*(v98 + 200)];
      v100 = *(v99 + 3);
      v101 = *(v99 + 4);
      __swift_project_boxed_opaque_existential_1(v99, v100);
      *&__dst[0] = v5;
      *(&__dst[0] + 1) = v6;
      LOBYTE(__dst[1]) = v130;
      (*(v101 + 8))(v135, v97, __dst, v100, v101);
      OUTLINED_FUNCTION_4_0();
      memcpy(v134, v135, sizeof(v134));
      sub_26D15ADE8(v135, __dst);
      sub_26D173F64();
      memcpy(__dst, v134, sizeof(__dst));
      sub_26D15AE44(__dst);
      OUTLINED_FUNCTION_4_0();
      (*(v132 + 24))(v96, v114, v135[2], v135[3]);
      OUTLINED_FUNCTION_4_0();
      memcpy(v134, v135, sizeof(v134));
      v102 = v125;
      (*(v116 + 48))(v96, v125, v134, v131);
      OUTLINED_FUNCTION_4_0();
      v104 = &v7[*(v103 + 208)];
      v105 = *(v104 + 3);
      v106 = *(v104 + 4);
      __swift_project_boxed_opaque_existential_1(v104, v105);
      memcpy(v133, &v135[4], sizeof(v133));
      v107 = v129;
      (*(v106 + 16))(v97, v133, v129, v105, v106);

      memcpy(v134, v133, 0x50uLL);
      sub_26D15AEA0(v134);
      (*(v127 + 8))(v96, v128);
      return;
    }

    goto LABEL_23;
  }

LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_26D159788(void *a1)
{
  v4 = a1;
  sub_26D158D90(v4, v1, v2, v3);
}

id sub_26D1597D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  v96 = a2;
  v9 = *v4;
  v10 = *MEMORY[0x277D85000];
  v91 = (*MEMORY[0x277D85000] & *v4);
  v11 = *((v10 & v9) + 0xA0);
  v88 = *((v10 & v9) + 0x70);
  v89 = v11;
  v99 = COERCE_DOUBLE(OUTLINED_FUNCTION_28(a1, a2, a3, a4, &associated type descriptor for GridViewModelGeneratorType.XAxis));
  v100 = OUTLINED_FUNCTION_28(*&v99, v12, v13, v14, &associated type descriptor for GridViewModelGeneratorType.YAxis);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v102 = swift_getAssociatedConformanceWitness();
  type metadata accessor for CoordinateSpace(0, &v99);
  OUTLINED_FUNCTION_1();
  v86 = v16;
  v87 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_9_0();
  v85 = v19;
  v20 = *((v10 & v9) + 0x60);
  OUTLINED_FUNCTION_2();
  v22 = v21;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v84 - v25;
  v27 = *((v10 & v9) + 0x80);
  v28 = *((v10 & v9) + 0x50);
  v97 = v27;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = sub_26D1744C4();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v84 - v34;
  v98 = AssociatedTypeWitness;
  v95 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v36, v37);
  OUTLINED_FUNCTION_9_0();
  v94 = v38;
  sub_26D1744C4();
  OUTLINED_FUNCTION_6_0();
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = &v84 - v42;
  v44 = *(*(v28 - 8) + 16);
  v92 = a1;
  v44(v43, a1, v28, v41);
  __swift_storeEnumTagSinglePayload(v43, 0, 1, v28);
  sub_26D157DDC(v43);
  result = [v7 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v46 = result;
  v90 = v20;
  v47 = [result traitCollection];

  v48 = [v47 layoutDirection];
  result = [v7 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v49 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  v99 = v5;
  v100 = *&v6;
  LOBYTE(AssociatedConformanceWitness) = v48 == 1;
  v50 = v94;
  v51 = (*(v97 + 24))(&v99, v28);
  v53 = sub_26D157F68(v51, v52);
  v54 = v98;
  (*(v95 + 16))(v35, v50, v98, v53);
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v54);
  sub_26D173F64();

  (*(v31 + 8))(v35, v93);
  OUTLINED_FUNCTION_23();
  v56 = v90;
  (*(v22 + 16))(v26, &v7[*(v55 + 184)], v90);
  result = [v7 view];
  if (!result)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v57 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  v58 = v91;
  (*(v91[18] + 24))(v50, v56, v5, v6);
  v59 = v58;
  (*(v22 + 8))(v26, v56);
  OUTLINED_FUNCTION_23();
  (*(v58[19] + 16))(v96, v58[13]);
  v60 = sub_26D157E94();
  if (v60)
  {
    v62 = v60;
    [v60 removeFromSuperview];
  }

  v63 = sub_26D157C78(v60, v61);
  if (v63)
  {
    v64 = v63;
    [v63 removeFromSuperview];
  }

  result = [v7 view];
  if (!result)
  {
    goto LABEL_17;
  }

  v65 = result;
  [result bounds];
  OUTLINED_FUNCTION_22();

  result = [v7 view];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v66 = result;
  v67 = [result traitCollection];

  OUTLINED_FUNCTION_24();
  v68 = v98;
  v69 = swift_getAssociatedConformanceWitness();
  v70 = v85;
  (*(v69 + 72))(v68, v69);
  v99 = v5;
  v100 = *&v6;
  AssociatedConformanceWitness = v67;
  v71 = (*(v89 + 40))(v70, &v99, v88);
  (*(v86 + 8))(v70, v87);
  OUTLINED_FUNCTION_24();
  v73 = &v7[*(v72 + 208)];
  v74 = *(v73 + 3);
  v75 = *(v73 + 4);
  __swift_project_boxed_opaque_existential_1(v73, v74);
  v76 = (*(v75 + 8))(v71, v74, v75);
  result = [v7 view];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v77 = result;
  [result addSubview_];

  v78 = (*(v59[17] + 40))(v50, v96, v59[11]);
  result = [v7 view];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v79 = result;
  v80 = v78;
  [v79 addSubview_];

  v81 = v80;
  sub_26D157CD4(v80);
  v82 = v76;
  sub_26D157EE0(v76);
  (*(v59[21] + 32))(v50, v81, v59[15]);

  result = [v7 view];
  if (result)
  {
    v83 = result;

    [v83 setNeedsLayout];

    return (*(v95 + 8))(v50, v98);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_26D15A0F4(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  v2 = *(v1 + 80);
  sub_26D1744C4();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3, v4);
  v6 = v13 - v5;
  v7 = sub_26D157E94();
  if (v7)
  {
    v9 = v7;
    [v7 removeFromSuperview];
  }

  v10 = sub_26D157C78(v7, v8);
  if (v10)
  {
    v11 = v10;
    [v10 removeFromSuperview];
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v2);
  sub_26D157DDC(v6);
  OUTLINED_FUNCTION_23();
  memset(v13, 0, sizeof(v13));
  return sub_26D173F64();
}

uint64_t sub_26D15A214()
{
  swift_getAssociatedTypeWitness();
  sub_26D1744C4();

  return sub_26D1744C4();
}

void sub_26D15A2BC(void *a1)
{
  v1 = a1;
  sub_26D15A214();
}

id ChartViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26D174204();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_26D15A3B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_26D174234();
  }

  v5 = a4;
  ChartViewController.init(nibName:bundle:)();
}

void ChartViewController<>.add(zone:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_31();
  v45 = v10;
  OUTLINED_FUNCTION_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v41 = v13;
  v42 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14, v15);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2();
  v44 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17, v18);
  OUTLINED_FUNCTION_9_0();
  v43 = v19;
  OUTLINED_FUNCTION_12();
  v20 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v40 - v23;
  OUTLINED_FUNCTION_12();
  v25 = OUTLINED_FUNCTION_11();
  v26(v25);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v45, v20, AssociatedConformanceWitness);
  v28 = OUTLINED_FUNCTION_25();
  v30 = v29(v28);
  sub_26D157F68(v30, v31);
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    (*(v41 + 8))(v9, v42);
  }

  else
  {
    v33 = v43;
    v32 = v44;
    v34 = OUTLINED_FUNCTION_15();
    v36 = v35(v34);
    if (sub_26D157C78(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_8_0();
      v39(v38);
    }

    (*(v32 + 8))(v33, v8);
  }

  OUTLINED_FUNCTION_26();
}

void ChartViewController<>.removeZone(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_31();
  v45 = v10;
  v46 = v11;
  OUTLINED_FUNCTION_12();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18(AssociatedTypeWitness);
  OUTLINED_FUNCTION_1();
  v41 = v14;
  v42 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v15, v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2();
  v44 = v17;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18, v19);
  OUTLINED_FUNCTION_9_0();
  v43 = v20;
  OUTLINED_FUNCTION_12();
  v21 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - v26;
  OUTLINED_FUNCTION_12();
  v28 = OUTLINED_FUNCTION_11();
  v29(v28);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v45, v46, v21, AssociatedConformanceWitness);
  v31 = (*(v23 + 8))(v27, v21);
  sub_26D157F68(v31, v32);
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v9, 1, v8) == 1)
  {
    (*(v41 + 8))(v9, v42);
  }

  else
  {
    v34 = v43;
    v33 = v44;
    v35 = OUTLINED_FUNCTION_15();
    v37 = v36(v35);
    if (sub_26D157C78(v37, v38))
    {
      v39 = OUTLINED_FUNCTION_8_0();
      v40(v39);
    }

    (*(v33 + 8))(v34, v8);
  }

  OUTLINED_FUNCTION_26();
}

void ChartViewController<>.removeZones(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_31();
  v10 = v8;
  v12 = v11;
  v14 = v13;
  v35 = *MEMORY[0x277D85000] & *v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_26D1744C4();
  OUTLINED_FUNCTION_1();
  v36 = v17;
  v37 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v35 - v20;
  OUTLINED_FUNCTION_2();
  v23 = v22;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v24, v25);
  OUTLINED_FUNCTION_13();
  v28 = *(v14 + 16);
  for (i = (v14 + 40); v28; --v28)
  {
    v30 = *i;
    v38[0] = *(i - 1);
    v38[1] = v30;

    sub_26D15AC40(v38, v10, v12);

    i += 2;
  }

  sub_26D157F68(v26, v27);
  sub_26D173F94();

  if (__swift_getEnumTagSinglePayload(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v36 + 8))(v21, v37);
  }

  else
  {
    v31 = (*(v23 + 32))(v9, v21, AssociatedTypeWitness);
    v33 = sub_26D157C78(v31, v32);
    if (v33)
    {
      v34 = v33;
      (*(v12 + 56))(v9, v33, *(v35 + 88), v12);
    }

    (*(v23 + 8))(v9, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t sub_26D15AC40(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *((*MEMORY[0x277D85000] & *a2) + 0x58);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness, v8);
  v11 = &v16 - v10;
  v12 = *a1;
  v13 = a1[1];
  v17 = v12;
  (*(a3 + 48))(v5, a3, v9);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(v17, v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_26D15AE44(uint64_t a1)
{
  sub_26D158368();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_14()
{

  return [v0 (v1 + 2424)];
}

uint64_t OUTLINED_FUNCTION_18(uint64_t a1)
{

  return sub_26D1744C4();
}

uint64_t OUTLINED_FUNCTION_19(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

id OUTLINED_FUNCTION_20()
{

  return [v0 (v1 + 2808)];
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, ...)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_30()
{
}

uint64_t MultiTouchInteractionManager.__allocating_init(interactor:)(uint64_t a1)
{
  v1 = swift_allocObject();
  MultiTouchInteractionManager.init(interactor:)();
  return v1;
}

uint64_t MultiTouchInteractionManager.register(model:on:)(uint64_t a1, void *a2)
{
  v5 = *v2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v35 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26D1744C4();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  v14.n128_f64[0] = MEMORY[0x28223BE20](v12, v13);
  v16 = &v36[-1] - v15;
  v17 = *(v5 + 136);
  v18 = *(v2 + v17);
  if (v18)
  {
    [v18 removeGestureRecognizer_];
  }

  (*(*(AssociatedTypeWitness - 8) + 16))(v16, a1, AssociatedTypeWitness, v14);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_1_6();
  v20 = *(v19 + 144);
  swift_beginAccess();
  (*(v11 + 40))(v2 + v20, v16, v9);
  swift_endAccess();
  v21 = *(v2 + v17);
  *(v2 + v17) = a2;

  OUTLINED_FUNCTION_1_6();
  [a2 addGestureRecognizer_];
  OUTLINED_FUNCTION_1_6();
  v24 = *(v23 + 104);
  v25 = OUTLINED_FUNCTION_10(v2 + v24, v37);
  v36[5] = *(v2 + v24);
  MEMORY[0x28223BE20](v25, v26);
  v27 = v35;
  *(&v35 - 4) = v7;
  *(&v35 - 3) = v27;
  *(&v35 - 2) = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = swift_getAssociatedTypeWitness();
  v30 = OUTLINED_FUNCTION_4_1();
  v31 = OUTLINED_FUNCTION_4_1();
  v32 = OUTLINED_FUNCTION_4_1();

  v36[0] = v29;
  v36[1] = v30;
  v36[2] = v31;
  v36[3] = v32;
  v33 = type metadata accessor for InteractionCursor(255, v36);
  type metadata accessor for InteractionHandlerWrapper(255, AssociatedTypeWitness, v33, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  sub_26D174304();
  OUTLINED_FUNCTION_0_11();
  swift_getWitnessTable();
  sub_26D174284();
}

uint64_t MultiTouchInteractionManager.add<A>(interactionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8_1();
  v5 = *(v4 + 88);
  v7 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16[0] = swift_getAssociatedTypeWitness();
  v16[1] = OUTLINED_FUNCTION_5_1();
  v16[2] = OUTLINED_FUNCTION_5_1();
  v16[3] = OUTLINED_FUNCTION_5_1();
  v10 = type metadata accessor for InteractionCursor(255, v16);
  type metadata accessor for InteractionHandlerWrapper(0, AssociatedTypeWitness, v10, AssociatedConformanceWitness);
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = a2;
  v11[4] = v5;
  v11[5] = a3;
  v11[6] = v3;
  v12 = swift_allocObject();
  v12[2] = v7;
  v12[3] = a2;
  v12[4] = v5;
  v12[5] = a3;
  v12[6] = v3;
  sub_26D16AE4C(sub_26D15CA94, v11, sub_26D15CACC, v12);
  OUTLINED_FUNCTION_2_2();
  swift_beginAccess();
  sub_26D174304();
  swift_unknownObjectRetain_n();

  sub_26D1742F4();
  swift_endAccess();
}

uint64_t MultiTouchInteractionManager.init(interactor:)()
{
  v2 = v0;
  OUTLINED_FUNCTION_8_1();
  v4 = *(v3 + 104);
  v6 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v22[0] = swift_getAssociatedTypeWitness();
  v22[1] = OUTLINED_FUNCTION_3_2();
  v22[2] = OUTLINED_FUNCTION_3_2();
  v22[3] = OUTLINED_FUNCTION_3_2();
  v9 = type metadata accessor for InteractionCursor(255, v22);
  type metadata accessor for InteractionHandlerWrapper(0, AssociatedTypeWitness, v9, AssociatedConformanceWitness);
  OUTLINED_FUNCTION_9();
  *(v2 + v4) = sub_26D1742C4();
  OUTLINED_FUNCTION_2_2();
  *(v2 + *(v10 + 112)) = 0;
  OUTLINED_FUNCTION_2_2();
  v12 = *(v11 + 120);
  LOBYTE(v22[0]) = 0;
  v13 = objc_allocWithZone(type metadata accessor for TapDragGestureRecognizer());
  *(v2 + v12) = sub_26D166608();
  OUTLINED_FUNCTION_2_2();
  v15 = *(v14 + 128);
  *(v2 + v15) = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  OUTLINED_FUNCTION_2_2();
  *(v2 + *(v16 + 136)) = 0;
  OUTLINED_FUNCTION_2_2();
  __swift_storeEnumTagSinglePayload(v2 + *(v17 + 144), 1, 1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_2_2();
  v19 = *(v6 - 8);
  (*(v19 + 16))(v2 + *(v18 + 96), v1, v6);
  OUTLINED_FUNCTION_2_2();
  [*(v2 + *(v20 + 120)) addTarget:v2 action:sel_handleGestureWithGesture_];
  (*(v19 + 8))(v1, v6);
  return v2;
}

void sub_26D15BB6C(void *a1)
{
  v2 = v1;
  v54 = a1;
  v3 = *v1;
  v4 = *v1;
  v5 = *(*v1 + 80);
  v53 = *(*v1 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_26D1744C4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v49 - v12;
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v49 - v18;
  v20 = *(v2 + *(v3 + 136));
  if (v20)
  {
    v21 = *(v4 + 144);
    OUTLINED_FUNCTION_10(v2 + v21, v58);
    (*(v9 + 16))(v13, v2 + v21, v7);
    if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
    {
      (*(v9 + 8))(v13, v7);
      return;
    }

    v22 = v15;
    (*(v15 + 32))(v19, v13, AssociatedTypeWitness);
    v23 = v20;
    v24 = [v54 state];
    if ((v24 - 3) < 2)
    {
      v39 = *(*v2 + 112);
      swift_beginAccess();
      if (!*(v2 + v39))
      {
        v47 = OUTLINED_FUNCTION_6_1();
        v48(v47);
        swift_endAccess();
        goto LABEL_16;
      }

      swift_endAccess();

      sub_26D16EEF8();
    }

    else
    {
      if (v24 != 2)
      {
        if (v24 == 1)
        {
          AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
          v26 = swift_getAssociatedTypeWitness();
          v51 = AssociatedConformanceWitness;
          v27 = swift_getAssociatedConformanceWitness();
          v28 = swift_getAssociatedConformanceWitness();
          v29 = swift_getAssociatedConformanceWitness();
          v57[0] = v26;
          v57[1] = v27;
          v57[2] = v28;
          v57[3] = v29;
          v50 = type metadata accessor for InteractionCursor(255, v57);
          type metadata accessor for HighlightInteraction(0, v50, v30, v31);
          v32 = sub_26D16EEC8();
          v33 = *v2;
          v52 = v22;
          v34 = *(v33 + 112);
          swift_beginAccess();
          *(v2 + v34) = v32;

          v35 = *(*v2 + 104);
          v36 = OUTLINED_FUNCTION_10(v2 + v35, v56);
          v55 = *(v2 + v35);
          MEMORY[0x28223BE20](v36, v37);
          v38 = v53;
          *(&v49 - 4) = v5;
          *(&v49 - 3) = v38;
          *(&v49 - 2) = v32;
          type metadata accessor for InteractionHandlerWrapper(255, AssociatedTypeWitness, v50, v51);
          OUTLINED_FUNCTION_9();
          sub_26D174304();

          OUTLINED_FUNCTION_0_11();
          swift_getWitnessTable();
          sub_26D174284();

          sub_26D15C0D8(v32, v54, v23, v2, v19);

          (*(v52 + 8))(v19, AssociatedTypeWitness);
          return;
        }

        goto LABEL_14;
      }

      v40 = *(*v2 + 112);
      OUTLINED_FUNCTION_10(v2 + v40, v57);
      if (!*(v2 + v40))
      {
LABEL_14:
        v45 = OUTLINED_FUNCTION_6_1();
        v46(v45);
LABEL_16:

        return;
      }

      sub_26D15C0D8(v41, v54, v23, v2, v19);
    }

    v42 = OUTLINED_FUNCTION_6_1();
    v44(v42, v43);
  }
}

uint64_t sub_26D15C0D8(void *a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v81 = a5;
  v7 = *a1;
  v8 = *a4;
  v75 = a1;
  v9 = *(v7 + 80);
  v76 = type metadata accessor for HighlightInteraction.InteractionType(0, v9, v9, a4);
  v73 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v10);
  v74 = &v70 - v11;
  v12 = sub_26D1744C4();
  v79 = *(v12 - 8);
  v80 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v70 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v70 - v22;
  v78 = *(v9 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v72 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v28);
  v77 = &v70 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v70 - v32;
  v34 = a2 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  result = swift_beginAccess();
  v36 = *(v34 + 32);
  if (v36 != 255)
  {
    v38 = *(v34 + 16);
    v37 = *(v34 + 24);
    v39 = *(v34 + 8);
    if (*v34 > 0.0)
    {
      v40 = *v34;
    }

    else
    {
      v40 = 0.0;
    }

    [a3 bounds];
    Width = CGRectGetWidth(v82);
    if (Width < v40)
    {
      v40 = Width;
    }

    if (v36)
    {
      [a3 bounds];
      v42 = CGRectGetWidth(v83);
      [a3 bounds];
      v43 = *(v8 + 88);
      v44 = *(v43 + 24);
      v70 = *(v8 + 80);
      v71 = v44;
      (v44)(v81, v40, v39);
      if (__swift_getEnumTagSinglePayload(v19, 1, v9) == 1)
      {
        return (*(v79 + 8))(v19, v80);
      }

      else
      {
        v45 = 0.0;
        if (v38 > 0.0)
        {
          v45 = v38;
        }

        if (v42 >= v45)
        {
          v46 = v45;
        }

        else
        {
          v46 = v42;
        }

        v47 = v78;
        v48 = v19;
        v49 = *(v78 + 32);
        v49(v77, v48, v9);
        [a3 bounds];
        v71(v81, v70, v43, v46, v37);
        if (__swift_getEnumTagSinglePayload(v15, 1, v9) == 1)
        {
          (*(v47 + 8))(v77, v9);
          return (*(v79 + 8))(v15, v80);
        }

        else
        {
          v49(v72, v15, v9);
          v53 = [a3 traitCollection];
          v54 = [v53 layoutDirection];

          v55 = *(swift_getTupleTypeMetadata2() + 48);
          v56 = *(v47 + 16);
          v57 = (v73 + 8);
          v58 = (v47 + 8);
          v59 = v74;
          if (v54 == 1)
          {
            v60 = v72;
            v56(v74, v72, v9);
            v61 = (v59 + v55);
            v62 = v77;
            v56(v61, v77, v9);
            v63 = v76;
            swift_storeEnumTagMultiPayload();
            sub_26D16EDEC(v59);
            (*v57)(v59, v63);
            v64 = *v58;
            (*v58)(v60, v9);
            return (v64)(v62, v9);
          }

          else
          {
            v65 = v77;
            v56(v74, v77, v9);
            v66 = (v59 + v55);
            v67 = v72;
            v56(v66, v72, v9);
            v68 = v76;
            swift_storeEnumTagMultiPayload();
            sub_26D16EDEC(v59);
            (*v57)(v59, v68);
            v69 = *v58;
            (*v58)(v67, v9);
            return (v69)(v65, v9);
          }
        }
      }
    }

    else
    {
      [a3 bounds];
      (*(*(v8 + 88) + 24))(v81, *(v8 + 80), v40, v39);
      if (__swift_getEnumTagSinglePayload(v23, 1, v9) == 1)
      {
        return (*(v79 + 8))(v23, v80);
      }

      else
      {
        v50 = v78;
        (*(v78 + 32))(v33, v23, v9);
        v51 = v74;
        (*(v50 + 16))(v74, v33, v9);
        v52 = v76;
        swift_storeEnumTagMultiPayload();
        sub_26D16EDEC(v51);
        (*(v73 + 8))(v51, v52);
        return (*(v50 + 8))(v33, v9);
      }
    }
  }

  return result;
}

uint64_t sub_26D15C7F0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = *(*a1 + 32);
  v5 = a2;

  v3(&v5);
}

uint64_t sub_26D15C844(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_26D15BB6C(v3);
}

uint64_t *MultiTouchInteractionManager.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_1_6();

  OUTLINED_FUNCTION_1_6();
  v5 = *(v4 + 144);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9();
  v6 = sub_26D1744C4();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t MultiTouchInteractionManager.__deallocating_deinit()
{
  MultiTouchInteractionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D15CACC(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 40);
  v5 = *a1;
  return (*(v3 + 48))(&v5, v2);
}

uint64_t sub_26D15CB60(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_26D1744C4();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v1;
}

uint64_t OUTLINED_FUNCTION_5_1()
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void sub_26D15CD44(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = v5;
  v90 = *(a3 + 24);
  v11 = *(a3 + 32);
  if (!sub_26D14CCF0())
  {
    sub_26D142914(0);
    if (*(a2 + *(v12 + 52) + 8) > *(a2 + *(v12 + 52)) && a5 > 0.0 && a4 > 0.0)
    {
      v13 = 0;
      v115 = MEMORY[0x277D84F90];
      v92 = a1 + 32;
      v94 = *(a1 + 16);
      while (1)
      {
        if (v13 == v94)
        {
          return;
        }

        v14 = (v92 + 24 * v13);
        v15 = v14[1];
        v109 = *v14;
        v16 = v14[2];
        v96 = v13 + 1;
        v17 = objc_allocWithZone(MEMORY[0x277D75208]);

        v18 = v17;
        v19 = v16;
        v98 = [v18 init];
        v100 = v15;
        v20 = 0;
        v110 = *(v16 + 16);
        v21 = (v16 + 48);
        v108 = v16;
        while (v110 != v20)
        {
          if (v20 >= *(v19 + 16))
          {
            __break(1u);
            return;
          }

          v22 = *v21;
          v23 = *(v21 - 1);
          v24 = *(v6 + 16);
          v111[0] = *(v21 - 2);
          v111[1] = v23;
          v111[2] = v22;
          v112 = v109;
          v113 = v15;
          v114 = v19;

          *&v25 = COERCE_DOUBLE(ColumnChartCoordinateProvider.location(for:in:)(v111, &v112));
          if (v27)
          {

            goto LABEL_27;
          }

          v28 = *&v25;
          v29 = v26;
          v30 = v24 + OBJC_IVAR____TtC9TeaCharts29ColumnChartCoordinateProvider_options;
          swift_beginAccess();
          if (*(v30 + 32))
          {
          }

          else
          {
            v31 = *v30;
            if (~*&v28 & 0x7FF0000000000000) == 0 || (v28 != 1.79769313e308 ? (v32 = (~*&v29 & 0x7FF0000000000000) == 0) : (v32 = 1), !v32 ? (v33 = v29 == 1.79769313e308) : (v33 = 1), v33 || (v116.origin.x = OUTLINED_FUNCTION_0_12(), CGRectGetWidth(v116), OUTLINED_FUNCTION_1_7(), v66 || (v67 & 1) != 0 || (v117.origin.x = OUTLINED_FUNCTION_0_12(), CGRectGetHeight(v117), OUTLINED_FUNCTION_1_7(), v32) || (v68)))
            {
              HIDWORD(v102) = sub_26D174404();
              sub_26D150C98(0);
              v106 = v34;
              v35 = OUTLINED_FUNCTION_3_3(v34);
              OUTLINED_FUNCTION_2_3(v35, v36, v37, v38, v39, v40, v41, v42, v43, v88, v90, v92, v94, v96, v98, v100, v102, v104, v106, v44);
              type metadata accessor for CGRect(0);
              v105 = v45;
              sub_26D1746A4();
              v46 = v6;
              v47 = v112;
              v48 = v113;
              v35[3].n128_u64[1] = MEMORY[0x277D837D0];
              v49 = sub_26D150D4C();
              v35[4].n128_u64[0] = v49;
              v35[2].n128_u64[0] = v47;
              v35[2].n128_u64[1] = v48;
              sub_26D14CDDC();
              v50 = sub_26D1744B4();
              sub_26D174164("Column path generator created an invalid rect, rect=%{public}@", 62, 2, &dword_26D140000, v50, HIDWORD(v103), v35);

              v6 = v46;
              v51 = sub_26D174414();
              v52 = OUTLINED_FUNCTION_3_3(v107);
              OUTLINED_FUNCTION_2_3(v52, v53, v54, v55, v56, v57, v58, v59, v60, v89, v91, v93, v95, v97, v99, v101, v103, v105, v107, v61);
              sub_26D1746A4();
              v62 = v112;
              v63 = v113;
              v52[3].n128_u64[1] = MEMORY[0x277D837D0];
              v52[4].n128_u64[0] = v49;
              v52[2].n128_u64[0] = v62;
              v52[2].n128_u64[1] = v63;
              v64 = sub_26D1744B4();
              v65 = v51;
              v15 = v100;
              sub_26D174164("Column path generator created an invalid rect, rect=%{public}@", 62, 2, &dword_26D140000, v64, v65, v52);
            }

            else
            {
              v70 = COERCE__INT64(fabs(v11 * v31)) > *&v69;
              if (v11 * v31 != v69 && !v70)
              {
                objc_opt_self();
                v71 = OUTLINED_FUNCTION_0_12();
                v74 = [v72 v73];
                [v98 appendPath_];

                goto LABEL_26;
              }

              v75 = sub_26D174404();
              sub_26D150C98(0);
              v77 = v76;
              v78 = OUTLINED_FUNCTION_3_3(v76);
              *(v78 + 16) = xmmword_26D1763D0;
              v79 = sub_26D174344();
              v81 = v80;
              *(v78 + 56) = MEMORY[0x277D837D0];
              v82 = sub_26D150D4C();
              *(v78 + 64) = v82;
              *(v78 + 32) = v79;
              *(v78 + 40) = v81;
              sub_26D14CDDC();
              v83 = sub_26D1744B4();
              sub_26D174164("Column path generator created an invalid corner radii, cornerRadii=%{public}@", 77, 2, &dword_26D140000, v83, v75, v78);

              v84 = sub_26D174414();
              v85 = OUTLINED_FUNCTION_3_3(v77);
              *(v85 + 16) = xmmword_26D1763D0;
              v86 = sub_26D174344();
              *(v85 + 56) = MEMORY[0x277D837D0];
              *(v85 + 64) = v82;
              v15 = v100;
              *(v85 + 32) = v86;
              *(v85 + 40) = v87;
              v64 = sub_26D1744B4();
              sub_26D174164("Column path generator created an invalid corner radii, cornerRadii=%{public}@", 77, 2, &dword_26D140000, v64, v84, v85);
            }
          }

LABEL_26:
          v19 = v108;
LABEL_27:
          v21 += 3;
          ++v20;
        }

        MEMORY[0x26D6B3530]();
        if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_26D1742B4();
        }

        sub_26D1742E4();

        v13 = v96;
      }
    }
  }
}

uint64_t GridLabelFormatter.format(value:options:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v23[-v10];
  v13 = *v12;
  swift_beginAccess();
  sub_26D15D638(v2 + 16, &v24, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType);
  if (!v25)
  {
    sub_26D155218(&v24, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType);
    goto LABEL_6;
  }

  sub_26D146174(&v24, v26);
  (*(v5 + 16))(v11, a1, v4);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
LABEL_6:
    swift_beginAccess();
    sub_26D15D638(v2 + 56, &v24, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType);
    if (v25)
    {
      sub_26D146174(&v24, v26);
      (*(v5 + 16))(v7, a1, v4);
      if (swift_dynamicCast())
      {
        v19 = *&v24;
        v20 = v27;
        v21 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        *&v24 = v13;
        v18 = (*(v21 + 8))(&v24, v20, v21, v19);
        goto LABEL_9;
      }

      __swift_destroy_boxed_opaque_existential_1(v26);
    }

    else
    {
      sub_26D155218(&v24, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType);
    }

    return 0;
  }

  v15 = *(&v24 + 1);
  v14 = v24;
  v16 = v27;
  v17 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  *&v24 = v13;
  v18 = (*(v17 + 8))(v14, v15, &v24, v16, v17);

LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v18;
}

uint64_t sub_26D15D638(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_4(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_8();
  (*(v7 + 16))(v5, v6);
  return v5;
}

double GridLabelFormatter.__allocating_init()()
{
  OUTLINED_FUNCTION_0_13();
  v0 = swift_allocObject();
  return OUTLINED_FUNCTION_3_4(v0);
}

double GridLabelFormatter.init()()
{
  result = 0.0;
  v0[4] = 0u;
  v0[5] = 0u;
  v0[2] = 0u;
  v0[3] = 0u;
  v0[1] = 0u;
  return result;
}

uint64_t GridLabelFormatter.deinit()
{
  sub_26D155218(v0 + 16, &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType);
  sub_26D155218(v0 + 56, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType);
  return v0;
}

uint64_t GridLabelFormatter.__deallocating_deinit()
{
  GridLabelFormatter.deinit();
  v0 = OUTLINED_FUNCTION_0_13();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

_OWORD *GridLabelFormatter<A>.init(formatter:)(__int128 *a1)
{
  OUTLINED_FUNCTION_0_13();
  v2 = swift_allocObject();
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[1] = 0u;
  sub_26D146174(a1, v4);
  swift_beginAccess();

  sub_26D15D8B8(v4, (v2 + 1), &qword_2812B7810, &qword_2812B7818, &protocol descriptor for StringLabelFormatterType);
  swift_endAccess();

  return v2;
}

{
  OUTLINED_FUNCTION_0_13();
  v2 = swift_allocObject();
  OUTLINED_FUNCTION_3_4(v2);
  sub_26D146174(a1, v4);
  swift_beginAccess();

  sub_26D15D8B8(v4, v2 + 56, &qword_2812B7820, qword_2812B7828, &protocol descriptor for ValueLabelFormatterType);
  swift_endAccess();

  return v2;
}

uint64_t sub_26D15D8B8(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  OUTLINED_FUNCTION_2_4(a1, a2, a3, a4, a5);
  OUTLINED_FUNCTION_0_8();
  (*(v7 + 40))(v5, v6);
  return v5;
}

uint64_t sub_26D15D908(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D15D948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t GridStyle.init(stroke:insetBehavior:labelPadding:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  v7 = *(result + 8);
  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = *a2;
  *a3 = *result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v8;
  *(a3 + 24) = v9;
  *(a3 + 25) = v10;
  *(a3 + 32) = a4;
  *(a3 + 40) = a5;
  *(a3 + 48) = a6;
  *(a3 + 56) = a7;
  return result;
}

uint64_t GridInsetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15DB28()
{
  result = qword_2804DD968;
  if (!qword_2804DD968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD968);
  }

  return result;
}

uint64_t sub_26D15DB7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D15DBBC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for GridInsetBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t Orientation.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15DDBC()
{
  result = qword_2804DD970;
  if (!qword_2804DD970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD970);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Orientation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t GridViewProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  return v0;
}

uint64_t GridViewProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

char *GridViewProvider.view(for:)(char *result)
{
  v2 = v1;
  v3 = 0;
  v4 = 0;
  v5 = *(result + 2);
  v6 = result + 32;
  while (2)
  {
    if (v3 != v5)
    {
      v7 = 0;
      v8 = v3 + 1;
      v9 = v6[10 * v3 + 1];
      v10 = (v9 + 40);
      v11 = *(v9 + 16) + 1;
      while (--v11)
      {
        v12 = *v10;
        v10 += 2;
        v13 = v12 != 0;
        v14 = __OFADD__(v7, v13);
        v7 += v13;
        if (v14)
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          return result;
        }
      }

      v3 = v8;
      v14 = __OFADD__(v4, v7);
      v4 += v7;
      if (!v14)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

  v15 = objc_allocWithZone(type metadata accessor for GridView());
  GridView.init(numberOfGrids:numberOfLabels:)(v5, v4);
  v17 = v16;
  __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
  sub_26D171D84(v17);
  v18 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
  swift_beginAccess();
  v19 = *&v17[v18];
  v20 = sub_26D14AB7C(v19);

  v21 = 0;
  while (v20 != v21)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B38E0](v21, v19);
    }

    else
    {
      if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      result = *(v19 + 8 * v21 + 32);
    }

    v22 = result;
    if (v5 == v21)
    {
      goto LABEL_20;
    }

    ++v21;
    memcpy(__dst, v6, sizeof(__dst));
    __swift_project_boxed_opaque_existential_1((v2 + 56), *(v2 + 80));
    memcpy(v24, __dst, sizeof(v24));
    sub_26D150B24(__dst, v23);
    sub_26D171DF8(v22, v24);

    result = sub_26D150BDC(__dst);
    v6 += 10;
  }

  return v17;
}

void GridViewProvider.present(models:attributes:on:)(int a1, uint64_t a2, void *a3)
{
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v16.origin.x = *a2;
  v16.origin.y = v8;
  v16.size.width = v9;
  v16.size.height = v10;
  if (!CGRectIsEmpty(v16))
  {
    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    *v12 = v7;
    *&v12[1] = v8;
    *&v12[2] = v9;
    *&v12[3] = v10;
    v11 = *(a2 + 48);
    v13 = *(a2 + 32);
    v14 = v11;
    v15 = *(a2 + 64);
    sub_26D160D04(a1, a3, v12);
  }
}

TeaCharts::DataPoint __swiftcall DataPoint.init(x:y:)(Swift::Double x, Swift::Double y)
{
  *v2 = x;
  v2[1] = y;
  result.y = y;
  result.x = x;
  return result;
}

void *sub_26D15E2C4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = type metadata accessor for GridViewRenderer();
  result = sub_26D173EE4();
  if (result)
  {
    v20[3] = v2;
    v20[4] = &off_287E8B6F8;
    v20[0] = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v4 = type metadata accessor for GridViewStyler();
    result = sub_26D173EE4();
    if (result)
    {
      v5 = result;
      v6 = __swift_mutable_project_boxed_opaque_existential_1(v20, v2);
      v17 = &v17;
      v7 = *(v2 - 8);
      v8 = *(v7 + 64);
      v9 = MEMORY[0x28223BE20](v6, v6);
      v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
      v11 = *(v7 + 16);
      v11(&v18[-1] - v10, v9);
      v12 = *(&v18[-1] - v10);
      v19[3] = v2;
      v19[4] = &off_287E8B6F8;
      v19[0] = v12;
      type metadata accessor for GridViewProvider();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v19, v2);
      v15 = MEMORY[0x28223BE20](v14, v14);
      v11(&v18[-1] - v10, v15);
      v16 = *(&v18[-1] - v10);
      v18[3] = v2;
      v18[4] = &off_287E8B6F8;
      v18[0] = v16;
      sub_26D146A14(v18, (v13 + 2));
      v13[10] = v4;
      v13[11] = &off_287E8CA00;
      v13[7] = v5;
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v19);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26D15E55C(void *a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(void *, uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, a2, a3);
  result = sub_26D173EF4();
  if (v12)
  {
    a4(0);
    v10 = swift_allocObject();
    a5(v11, v10 + 16);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26D15E61C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9268, &protocol descriptor for GridPathGeneratorType);
  result = sub_26D173EF4();
  if (v7)
  {
    v4 = type metadata accessor for GridLayoutAttributesFactory();
    v5 = swift_allocObject();
    result = sub_26D146174(&v6, v5 + 16);
    a2[3] = v4;
    a2[4] = &off_287E8A920;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15E6CC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9DD8, MEMORY[0x277D6CC30]);
  sub_26D173ED4();
  if (v6)
  {
    sub_26D146174(&v5, &v7);
  }

  else
  {
    v1 = sub_26D173F14();
    swift_allocObject();
    v2 = sub_26D173F04();
    v8 = v1;
    v9 = MEMORY[0x277D6CB10];
    *&v7 = v2;
  }

  type metadata accessor for GridViewRenderer();
  v3 = swift_allocObject();
  sub_26D146174(&v7, v3 + 16);
  return v3;
}

uint64_t sub_26D15E7D4()
{
  type metadata accessor for GridViewStyler();

  return swift_allocObject();
}

uint64_t sub_26D15E808@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for GridPathGenerator();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &protocol witness table for GridPathGenerator;
  *a1 = result;
  return result;
}

uint64_t sub_26D15E850(uint64_t a1)
{
  sub_26D15E8AC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D15E8AC(uint64_t a1)
{
  if (!qword_2812B8990)
  {
    sub_26D1433B8(255, &qword_2812B9DD8, MEMORY[0x277D6CC30]);
    v1 = sub_26D1744C4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B8990);
    }
  }
}

uint64_t SparklineViewRendererOptions.Method.hashValue.getter()
{
  v1 = *v0;
  sub_26D174864();
  MEMORY[0x26D6B3B10](v1);
  return sub_26D174894();
}

unint64_t sub_26D15E9C8()
{
  result = qword_2804DD978;
  if (!qword_2804DD978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD978);
  }

  return result;
}

_BYTE *sub_26D15EA2C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26D15EB08()
{
  v1 = v0[1];
  v5 = *v0;
  v6 = v1;
  v2 = v0[3];
  v7 = v0[2];
  v8 = v2;
  sub_26D174864();
  sub_26D1498EC(v4);
  return sub_26D174894();
}

uint64_t sub_26D15EB64(__n128 a1)
{

  sub_26D174124();
}

void *sub_26D15EBE4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t sub_26D15EC14()
{
  sub_26D15EBE4();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_26D15EC48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D15EC88(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void *sub_26D15ECF0(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartCoordinateProvider(0);
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14527C(0, v5, v6, v7);
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8BB8, &protocol descriptor for ChartLayoutAttributesFactoryType);
  result = sub_26D173EF4();
  if (!v15[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = type metadata accessor for GridViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14[3] = v9;
  v14[4] = &protocol witness table for GridViewProvider;
  v14[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D144468(0);
  result = sub_26D173EC4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D145368(0);
  result = sub_26D173EC4();
  if (result)
  {
    v11 = result;
    sub_26D144DB4(0);
    v13 = objc_allocWithZone(v12);
    return sub_26D162CEC(v3, v4, v8, v15, v14, v10, v11);
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_26D15EF40(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9108, &protocol descriptor for ColumnChartRendererType);
  result = sub_26D173EF4();
  if (v22)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9270, &protocol descriptor for ColumnChartStylerType);
    result = sub_26D173EF4();
    if (v20)
    {
      v3 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
      v4 = MEMORY[0x28223BE20](v3, v3);
      v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v7 + 16))(v6, v4);
      v8 = *v6;
      v9 = type metadata accessor for ColumnChartRenderer();
      v18[3] = v9;
      v18[4] = &off_287E8CBB8;
      v18[0] = v8;
      type metadata accessor for ColumnChartViewProvider();
      v10 = swift_allocObject();
      v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v9);
      v12 = MEMORY[0x28223BE20](v11, v11);
      v14 = (&v18[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v15 + 16))(v14, v12);
      v16 = *v14;
      v10[5] = v9;
      v10[6] = &off_287E8CBB8;
      v10[2] = v16;
      sub_26D146174(&v19, (v10 + 7));
      __swift_destroy_boxed_opaque_existential_1(v18);
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26D15F1AC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8C78, &protocol descriptor for ValueCoordinateCalculatorType);
  result = sub_26D173EF4();
  if (v3)
  {
    type metadata accessor for ColumnChartCoordinateProvider(0);
    swift_allocObject();
    return sub_26D170488(&v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26D14527C(0, a2, a3, a4);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void *sub_26D15F26C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8F98, &protocol descriptor for ColumnChartImageLoaderType);
  result = sub_26D173EF4();
  if (v14)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, &qword_2812B9DD8, MEMORY[0x277D6CC30]);
    result = sub_26D173ED4();
    if (v12)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = sub_26D15FC10(*v8, &v11);
      __swift_destroy_boxed_opaque_existential_1(v13);
      result = type metadata accessor for ColumnChartRenderer();
      a2[3] = result;
      a2[4] = &off_287E8CBB8;
      *a2 = v10;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D15F494@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2(0);
  result = sub_26D173EE4();
  if (result)
  {
    v11 = OUTLINED_FUNCTION_1_8();
    v12 = a3(v11);
    result = swift_allocObject();
    *(result + 16) = v9;
    a5[3] = v12;
    a5[4] = a4;
    *a5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F538(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for CategoryAxisGridViewModelGenerator();
  result = sub_26D173EE4();
  if (result)
  {
    v3 = result;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    type metadata accessor for ValueAxisGridViewModelGenerator();
    result = sub_26D173EE4();
    if (result)
    {
      v4 = result;
      sub_26D144468(0);
      result = swift_allocObject();
      *(result + 16) = v3;
      *(result + 24) = v4;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26D15F5EC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for ColumnChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v2 = result;
    sub_26D145368(0);
    v3 = swift_allocObject();
    sub_26D1452CC(0, qword_2812B7E18, type metadata accessor for MultiTouchInteractionManager);
    swift_allocObject();
    *(v3 + 16) = sub_26D16329C(v2);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15F6A0()
{
  type metadata accessor for ColumnChartInteractor();

  return swift_allocObject();
}

void *sub_26D15F6D4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8C80, &protocol descriptor for ColumnChartImageGeneratorType);
  result = sub_26D173EF4();
  if (v25)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9270, &protocol descriptor for ColumnChartStylerType);
    result = sub_26D173EF4();
    if (v23)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (&v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = *v8;
      v11 = type metadata accessor for ColumnChartImageGenerator();
      v21[3] = v11;
      v21[4] = &off_287E8B6E8;
      v21[0] = v10;
      v12 = type metadata accessor for ColumnChartImageLoader();
      v13 = swift_allocObject();
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v21, v11);
      v15 = MEMORY[0x28223BE20](v14, v14);
      v17 = (&v21[-1] - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17, v15);
      v19 = *v17;
      v13[5] = v11;
      v13[6] = &off_287E8B6E8;
      v13[2] = v19;
      sub_26D146174(&v22, (v13 + 7));
      __swift_destroy_boxed_opaque_existential_1(v21);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      a2[3] = v12;
      a2[4] = &off_287E8BA20;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26D15F95C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9050, &protocol descriptor for ColumnPathGeneratorType);
  result = sub_26D173EF4();
  if (v21)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = *v7;
    v10 = type metadata accessor for ColumnPathGenerator();
    v19[3] = v10;
    v19[4] = &off_287E8B190;
    v19[0] = v9;
    v11 = type metadata accessor for ColumnChartImageGenerator();
    v12 = swift_allocObject();
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v19, v10);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = (v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16, v14);
    v18 = *v16;
    v12[5] = v10;
    v12[6] = &off_287E8B190;
    v12[2] = v18;
    __swift_destroy_boxed_opaque_existential_1(v19);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a2[3] = v11;
    a2[4] = &off_287E8B6E8;
    *a2 = v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D15FB84(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v8 = type metadata accessor for ColumnChartImageLoader();
  v9 = &off_287E8BA20;
  *&v7 = a1;
  sub_26D14674C(0);
  swift_allocObject();
  *(a3 + 96) = sub_26D174064();
  sub_26D146174(&v7, a3 + 16);
  sub_26D146174(a2, a3 + 56);
  return a3;
}

uint64_t sub_26D15FC10(uint64_t a1, __int128 *a2)
{
  v14 = type metadata accessor for ColumnChartImageLoader();
  v15 = &off_287E8BA20;
  v13[0] = a1;
  type metadata accessor for ColumnChartRenderer();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_26D15FB84(*v8, a2, v4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v10;
}

id LineChartView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LineChartView.init(seriesViews:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews] = a1;
  v10.receiver = v1;
  v10.super_class = ObjectType;

  v4 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = sub_26D14CE24(a1);
  v6 = v4;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x26D6B38E0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v8 = *(a1 + 8 * i + 32);
    }

    v9 = v8;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v6 addSubview_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

Swift::Void __swiftcall LineChartView.layoutSubviews()()
{
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts13LineChartView_seriesViews];
  v2 = sub_26D14CE24(v1);

  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x26D6B38E0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    v5 = v4;
    if (__OFADD__(i, 1))
    {
      break;
    }

    [v0 bounds];
    [v5 setFrame_];
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id LineChartView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id LineChartView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_26D16016C(unint64_t result, char a2, uint64_t a3)
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

void sub_26D1601E4(uint64_t a1, uint64_t a2, void *__src, uint64_t *a4)
{
  memcpy(__dst, __src, 0x42uLL);
  v8 = *a4;
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v9 = __dst[0];
  v10 = __dst[1];
  v11 = __dst[2];
  v12 = BYTE1(__dst[8]);
  v24 = *&__dst[3];
  v25 = __dst[5];
  v26 = __dst[6];
  v27 = __dst[7];
  v28 = LOWORD(__dst[8]);
  sub_26D15CD44(a1, a2, &v24, __dst[0], __dst[1]);
  v14 = v13;
  v30.width = v9;
  v30.height = v10;
  UIGraphicsBeginImageContextWithOptions(v30, 0, v11);
  v15 = UIGraphicsGetCurrentContext();
  if (v15)
  {
    v16 = v15;
    v17 = sub_26D14CE24(v14);
    for (i = 0; v17 != i; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D6B38E0](i, v14);
      }

      else
      {
        if (i >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v19 = *(v14 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_17:
        __break(1u);
        return;
      }

      sub_26D16040C(i, v19, v8, v16, __dst);
    }

    v21 = UIGraphicsGetImageFromCurrentImageContext();
    v22 = v21;
    if (v21)
    {
      if (v12)
      {
        [(UIImage *)v21 imageWithHorizontallyFlippedOrientation];
      }
    }

    UIGraphicsEndImageContext();
  }

  else
  {

    sub_26D14CDDC();
    v16 = sub_26D1744B4();
    v23 = sub_26D174404();
    sub_26D174164("Failed to create graphics context to draw line chart", 52, 2, &dword_26D140000, v16, v23, MEMORY[0x277D84F90]);
  }
}

void sub_26D16040C(uint64_t a1, void *a2, uint64_t a3, CGContext *a4, CGFloat *a5)
{
  if (*(a3 + 16) > a1)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      v8 = (a3 + 16 * a1 + 32);
      goto LABEL_6;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_2804DD808 != -1)
  {
LABEL_25:
    swift_once();
  }

  v8 = &qword_2804DDC50;
LABEL_6:
  v9 = *v8;
  if (v8[1])
  {
    v10 = objc_opt_self();
    sub_26D14E2C4(v9, 1);
    sub_26D14E2C4(v9, 1);
    v11 = [v10 clearColor];
    [v11 setFill];

    [a2 addClip];
    v12 = sub_26D14CE24(v9);
    if (v12)
    {
      v13 = v12;
      v23 = MEMORY[0x277D84F90];
      sub_26D174674();
      if (v13 < 0)
      {
        __break(1u);
        return;
      }

      colors = a5;
      v14 = 0;
      do
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x26D6B38E0](v14, v9);
        }

        else
        {
          v15 = *(v9 + 8 * v14 + 32);
        }

        v16 = v15;
        ++v14;
        v17 = [v15 CGColor];

        sub_26D174654();
        sub_26D174684();
        sub_26D174694();
        sub_26D174664();
      }

      while (v13 != v14);
      sub_26D14ABA0(v9, 1);
      a5 = colors;
    }

    else
    {
      sub_26D14ABA0(v9, 1);
    }

    type metadata accessor for CGColor(0);
    colorsa = sub_26D1742A4();

    DeviceRGB = CGColorSpaceCreateDeviceRGB();
    v19 = CGGradientCreateWithColors(DeviceRGB, colorsa, 0);

    if (v19)
    {
      v26.y = a5[1];
      v25.x = 0.0;
      v25.y = 0.0;
      v26.x = 0.0;
      CGContextDrawLinearGradient(a4, v19, v25, v26, 0);
    }

    [a2 fill];
    sub_26D14ABA0(v9, 1);
  }

  else
  {
    sub_26D14E2C4(*v8, 0);
    [v9 setFill];
    [a2 fill];
    [a2 fill];

    sub_26D14ABA0(v9, 0);
  }
}

uint64_t sub_26D160748(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D174234();
  v4 = v3;
  if (v2 == sub_26D174234() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_26D1747E4();
  }

  return v7 & 1;
}

Swift::Int_optional __swiftcall CategoryAxis.index(of:)(Swift::String of)
{
  v2 = *(v1 + *(type metadata accessor for CategoryAxis(0) + 20));
  if (*(v2 + 16) && (v3 = sub_26D147140(), (v4 & 1) != 0))
  {
    v5 = 0;
    v6 = *(*(v2 + 56) + 8 * v3);
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  result.value = v6;
  result.is_nil = v5;
  return result;
}

uint64_t CategoryAxis.categories.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_0_16();
  sub_26D142A64(0, v3, v4, v5, v6);
  OUTLINED_FUNCTION_0_8();
  v9 = *(v8 + 16);

  return v9(a1, v1, v7);
}

double CategoryAxis.grids.getter()
{
  type metadata accessor for CategoryAxis(0);

  return result;
}

uint64_t sub_26D1608EC(uint64_t a1, uint64_t a2)
{
  sub_26D174234();
  sub_26D174864();
  sub_26D174244();
  v2 = sub_26D174894();

  return v2;
}

unint64_t sub_26D160964(uint64_t a1)
{
  sub_26D174234();
  sub_26D174864();
  sub_26D174244();
  v2 = sub_26D174894();

  return sub_26D160ACC(a1, v2);
}

unint64_t sub_26D1609F8(uint64_t a1)
{
  v2 = sub_26D174854();

  return sub_26D160BC4(a1, v2);
}

unint64_t sub_26D160A3C(double a1)
{
  OUTLINED_FUNCTION_2_7();
  sub_26D174244();
  v4 = 0.0;
  if (a1 != 0.0)
  {
    v4 = a1;
  }

  MEMORY[0x26D6B3B20](*&v4);
  v5 = sub_26D174894();

  return sub_26D160C24(v2, v1, v5, a1);
}

unint64_t sub_26D160ACC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_26D174234();
    v7 = v6;
    if (v5 == sub_26D174234() && v7 == v8)
    {

      return i;
    }

    v10 = sub_26D1747E4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_26D160BC4(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_26D160C24(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a3 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      v14 = *(v13 + 16);
      v15 = *v13 == a1 && *(v13 + 8) == a2;
      if (v15 || (sub_26D1747E4()) && v14 == a4)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

void sub_26D160D04(int a1, void *a2, void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  [a2 setFrame_];
  [a2 setAlpha_];
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_26D146644();
  v5 = sub_26D174454();
  sub_26D173FB4();

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26D1614D8;
  *(v7 + 24) = v6;
  v8 = a2;
  v9 = sub_26D1740A4();
  sub_26D1740B4();
}

uint64_t sub_26D160E74(uint64_t a1, uint64_t a2)
{
  sub_26D16159C(0, &qword_2812B8988, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_26D1740E4();
}

uint64_t sub_26D160EF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a1;
  v7 = 0;
  v8 = *(a5 + 64);
  v9 = *(v8 + 16);
  v10 = OBJC_IVAR____TtC9TeaCharts8GridView_gridLayers;
  v11 = v8 + 32;
  while (1)
  {
    if (v9 == v7)
    {
      v20 = 0;
      v21 = *(a5 + 72);
      v22 = *(v21 + 16);
      v23 = OBJC_IVAR____TtC9TeaCharts8GridView_labels;
      v46 = *MEMORY[0x277D76528];
      v24 = (v21 + 72);
      v47 = v22;
      while (1)
      {
        if (v22 == v20)
        {
          return v45(a1, a2, a3, a4);
        }

        v25 = *(v24 - 5);
        v26 = *(v24 - 4);
        v27 = *(v24 - 3);
        v28 = *(v24 - 2);
        v29 = *(v24 - 1);
        v30 = *v24;
        a1 = swift_beginAccess();
        v31 = *(a6 + v23);
        if ((v31 & 0xC000000000000001) != 0)
        {
          v44 = v25;
          v34 = MEMORY[0x26D6B38E0](v20, v31);
        }

        else
        {
          if (v20 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_23;
          }

          v32 = *(v31 + 8 * v20 + 32);
          v33 = v25;
          v34 = v32;
        }

        v35 = v34;
        swift_endAccess();
        if (!v25)
        {
          goto LABEL_16;
        }

        if (v30)
        {
          break;
        }

        v36 = v25;
        [v35 setAttributedText_];
        [v35 setFrame_];
        a1 = [v36 length];
        if (a1 < 0)
        {
          goto LABEL_24;
        }

        v37 = a1;
        v38 = swift_allocObject();
        *(v38 + 16) = v35;
        v39 = v38;
        v40 = swift_allocObject();
        *(v40 + 16) = sub_26D1614E8;
        *(v40 + 24) = v39;
        aBlock[4] = sub_26D1614F0;
        aBlock[5] = v40;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_26D161344;
        aBlock[3] = &block_descriptor_17;
        v41 = _Block_copy(aBlock);
        v42 = v35;

        [v36 enumerateAttribute:v46 inRange:0 options:v37 usingBlock:{0, v41}];

        v43 = v41;
        v22 = v47;
        _Block_release(v43);
        LOBYTE(v37) = swift_isEscapingClosureAtFileLocation();

        if (v37)
        {
          goto LABEL_25;
        }

LABEL_19:
        v24 += 48;
        ++v20;
      }

LABEL_16:
      goto LABEL_19;
    }

    v12 = *(v11 + 8 * v7);
    a1 = swift_beginAccess();
    v13 = *(a6 + v10);
    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

    v19 = v12;
    v16 = MEMORY[0x26D6B38E0](v7, v13);
LABEL_6:
    v17 = v16;
    swift_endAccess();
    v18 = [v12 CGPath];
    [v17 setPath_];

    ++v7;
  }

  if (v7 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 8 * v7 + 32);
    v15 = v12;
    v16 = v14;
    goto LABEL_6;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return a1;
}

void sub_26D1612C0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_26D1615FC(a1, v9);
  if (v10)
  {
    if (swift_dynamicCast())
    {
      sub_26D156DC0(v7, v8, a5);
      *a4 = 1;
    }
  }

  else
  {
    sub_26D161518(v9);
  }
}

uint64_t sub_26D161344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v11 = a2;
    sub_26D1615EC(&v11, v13);
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  swift_unknownObjectRetain();
  v9(v13, a3, a4, a5);
  return sub_26D161518(v13);
}

void sub_26D1613E0(void *a1)
{
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v6[4] = sub_26D156AD8;
  v6[5] = v3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_26D149F38;
  v6[3] = &block_descriptor_0;
  v4 = _Block_copy(v6);
  v5 = a1;

  [v2 animateWithDuration:v4 animations:0.15];
  _Block_release(v4);
}

uint64_t sub_26D161518(uint64_t a1)
{
  sub_26D16159C(0, &qword_2812B74D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D16159C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

_OWORD *sub_26D1615EC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_26D1615FC(uint64_t a1, uint64_t a2)
{
  sub_26D16159C(0, &qword_2812B74D0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t GridViewModelGenerator.models(for:options:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v27 = 1;
  v23 = v5;
  v24 = v7;
  v8 = v4[12];
  v9 = *(v8 + 24);
  v10 = v4[10];
  v11 = v7;
  v22 = v9(a1, &v27, &v23, v10, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = v4[13];
  v14 = v4[11];
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v23 = AssociatedTypeWitness;
  v24 = v15;
  v25 = AssociatedConformanceWitness;
  v26 = v17;
  v18 = *(type metadata accessor for CoordinateSpace(0, &v23) + 52);
  v27 = 0;
  v23 = v6;
  v24 = v11;
  v19 = (*(v13 + 24))(a1 + v18, &v27, &v23, v14, v13);
  v23 = v22;
  sub_26D161B24(v19);

  return v23;
}

uint64_t *GridViewModelGenerator.deinit()
{
  v1 = *v0;
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 120));
  return v0;
}

uint64_t GridViewModelGenerator.__deallocating_deinit()
{
  GridViewModelGenerator.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D161A4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D161CF8(result, 1, sub_26D153268);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D161B24(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_26D161CF8(result, 1, sub_26D153484);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D161C3C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D161C7C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26D161CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

double ColumnChartModel.series.getter()
{
  type metadata accessor for ColumnChartModel(0);

  return result;
}

double ColumnChartModel.options.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ColumnChartModel(0) + 24);
  result = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 41);
  *a1 = *v3;
  *(a1 + 16) = result;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 41) = v8;
  return result;
}

__n128 ColumnChartModel.init(coordinateSpace:series:options:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X2>, uint64_t a4@<X8>)
{
  v14 = *a3;
  v6 = a3[1].n128_u64[0];
  v7 = a3[1].n128_u64[1];
  v8 = a3[2].n128_u64[0];
  v9 = a3[2].n128_u8[8];
  v10 = a3[2].n128_u8[9];
  sub_26D14770C(a1, a4);
  v11 = type metadata accessor for ColumnChartModel(0);
  *(a4 + *(v11 + 20)) = a2;
  v12 = (a4 + *(v11 + 24));
  result = v14;
  *v12 = v14;
  v12[1].n128_u64[0] = v6;
  v12[1].n128_u64[1] = v7;
  v12[2].n128_u64[0] = v8;
  v12[2].n128_u8[8] = v9;
  v12[2].n128_u8[9] = v10;
  return result;
}

uint64_t sub_26D161EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26D161F44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D161F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_26D16200C(uint64_t a1, __int128 *a2)
{
  v17 = a2[1];
  v18 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v6 = *(a2 + 6);
  v7 = *(a2 + 7);
  v8 = *(a2 + 64);
  v9 = *(a2 + 65);
  v10 = v2[10];
  v11 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v10);
  (*(v11 + 8))(__src, v10, v11);
  v12 = *&__src[0];
  if (!*&__src[0])
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
  v13 = *(a1 + *(type metadata accessor for ColumnChartModel(0) + 20));
  __src[1] = v17;
  __src[0] = v18;
  v21 = v4;
  v22 = v5;
  v23 = v6;
  v24 = v7;
  v25 = v8;
  v26 = v9;
  v19 = v12;
  sub_26D1601E4(v13, a1, __src, &v19);
  v15 = v14;

  return v15;
}

uint64_t sub_26D162128(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = v2[10];
  v4 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v3);
  v5 = (*(v4 + 8))(&v10, v3, v4);
  if (v10)
  {
    MEMORY[0x28223BE20](v5, v6);
    sub_26D16262C(0);
    swift_allocObject();
    v7 = sub_26D1740E4();

    return v7;
  }

  else
  {
    sub_26D1625D8();
    swift_allocError();
    *v9 = 0;
    sub_26D16262C(0);
    swift_allocObject();
    return sub_26D1740D4();
  }
}

uint64_t sub_26D162270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a4;
  v31 = a8;
  v29 = a3;
  v13 = type metadata accessor for ColumnChartModel(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8, v16);
  v17 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  __src[0] = *a5;
  *&__src[1] = *(a5 + 16);
  *(&__src[1] + 8) = *(a5 + 24);
  *(&__src[2] + 8) = *(a5 + 40);
  *(&__src[3] + 2) = *(a5 + 50);
  v28 = sub_26D173F34();
  sub_26D162698(a7, v17);
  v19 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 73) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = a6;
  sub_26D1626FC(v17, v23 + v19);
  memcpy((v23 + v20), __src, 0x42uLL);
  v24 = v30;
  *(v23 + v21) = v31;
  v25 = (v23 + v22);
  *v25 = v29;
  v25[1] = v24;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_26D162690;
  v26[1] = v18;

  sub_26D173F24();
}

void sub_26D162478(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(void))
{
  __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  v12 = *(a2 + *(type metadata accessor for ColumnChartModel(0) + 20));
  memcpy(__dst, a3, 0x42uLL);
  v18 = a4;
  sub_26D1601E4(v12, a2, __dst, &v18);
  if (v13)
  {
    v17 = v13;
    a7();
    v14 = v17;
  }

  else
  {
    sub_26D1625D8();
    v15 = swift_allocError();
    *v16 = 1;
    a5();
    v14 = v15;
  }
}

unint64_t sub_26D1625D8()
{
  result = qword_2804DD988;
  if (!qword_2804DD988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD988);
  }

  return result;
}

void sub_26D16262C(uint64_t a1)
{
  if (!qword_2812B7B78)
  {
    sub_26D148D08();
    v1 = sub_26D1740F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B7B78);
    }
  }
}

uint64_t sub_26D162698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColumnChartModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D1626FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColumnChartModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26D162760()
{
  v1 = *(type metadata accessor for ColumnChartModel(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 73) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = *(v0 + v5 + 8);
  v10 = *(v0 + ((v5 + 23) & 0xFFFFFFFFFFFFFFF8));

  sub_26D162478(v6, v0 + v2, (v0 + v3), v7, v8, v9, v10);
}

_BYTE *storeEnumTagSinglePayload for ColumnChartImageLoader.ColumnChartImageLoaderError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26D1628FC()
{
  result = qword_2804DD990;
  if (!qword_2804DD990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD990);
  }

  return result;
}

uint64_t sub_26D16295C(uint64_t a1, int a2)
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

double LineChartModel.series.getter()
{
  type metadata accessor for LineChartModel(0);

  return result;
}

uint64_t LineChartModel.tcAccessibleXAxisTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for LineChartModel(0) + 24));

  return v1;
}

uint64_t LineChartModel.tcAccessibleXAxisTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LineChartModel(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LineChartModel.tcAccessibleYAxisTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for LineChartModel(0) + 28));

  return v1;
}

uint64_t LineChartModel.tcAccessibleYAxisTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for LineChartModel(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t LineChartModel.marketTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LineChartModel(0) + 32);
  v4 = sub_26D173E24();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LineChartModel.init(coordinateSpace:series:marketTimeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for LineChartModel(0);
  v9 = (a4 + v8[6]);
  *v9 = 0;
  v9[1] = 0;
  v10 = (a4 + v8[7]);
  *v10 = 0;
  v10[1] = 0;
  sub_26D14770C(a1, a4);
  *(a4 + v8[5]) = a2;
  v11 = v8[8];
  v12 = sub_26D173E24();
  v13 = *(*(v12 - 8) + 32);

  return v13(a4 + v11, a3, v12);
}

id sub_26D162CEC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  sub_26D164A04(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_2_8(*((*MEMORY[0x277D85000] & *v7) + 0xE8));
  OUTLINED_FUNCTION_2_8(*(v17 + 240));
  OUTLINED_FUNCTION_2_8(*(v18 + 248));
  v20 = *(v19 + 256);
  sub_26D158310(0);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  swift_allocObject();
  *(v7 + v20) = sub_26D173F84();
  OUTLINED_FUNCTION_1_10();
  v22 = *(v21 + 264);
  v23 = type metadata accessor for ColumnChartModel(0);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v23);
  sub_26D164A38(0, &qword_2812B89A0, sub_26D164A04, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *(v7 + v22) = sub_26D173F84();
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v24 + 176)) = a1;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v25 + 184)) = a2;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v26 + 192)) = a3;
  OUTLINED_FUNCTION_1_10();
  sub_26D146A14(a4, v7 + *(v27 + 200));
  OUTLINED_FUNCTION_1_10();
  sub_26D146A14(a5, v7 + *(v28 + 208));
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v29 + 216)) = v34;
  OUTLINED_FUNCTION_1_10();
  *(v7 + *(v30 + 224)) = v35;
  sub_26D144DB4(0);
  v36.receiver = v7;
  v36.super_class = v31;
  v32 = objc_msgSendSuper2(&v36, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v32;
}

id sub_26D162F7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v25 = a6;
  v26 = a7;
  sub_26D1649D0(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D85000];
  *(v7 + *((*MEMORY[0x277D85000] & *v7) + 0xE8)) = 0;
  *(v7 + *((*v18 & *v7) + 0xF0)) = 0;
  *(v7 + *((*v18 & *v7) + 0xF8)) = 0;
  v19 = *((*v18 & *v7) + 0x100);
  sub_26D158310(0);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  swift_allocObject();
  *(v7 + v19) = sub_26D173F84();
  v20 = *((*v18 & *v7) + 0x108);
  v21 = type metadata accessor for LineChartModel(0);
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v21);
  sub_26D164A38(0, &qword_2812B7BA8, sub_26D1649D0, MEMORY[0x277D6CB60]);
  swift_allocObject();
  *(v7 + v20) = sub_26D173F84();
  *(v7 + *((*v18 & *v7) + 0xB0)) = a1;
  *(v7 + *((*v18 & *v7) + 0xB8)) = a2;
  *(v7 + *((*v18 & *v7) + 0xC0)) = a3;
  sub_26D146A14(a4, v8 + *((*v18 & *v8) + 0xC8));
  sub_26D146A14(a5, v8 + *((*v18 & *v8) + 0xD0));
  *(v7 + *((*v18 & *v7) + 0xD8)) = v25;
  *(v7 + *((*v18 & *v7) + 0xE0)) = v26;
  sub_26D143F5C(0);
  v27.receiver = v7;
  v27.super_class = v22;
  v23 = objc_msgSendSuper2(&v27, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v23;
}

void *sub_26D1632B4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = 0;
  v6 = objc_allocWithZone(type metadata accessor for TapDragGestureRecognizer());
  v2[5] = sub_26D166608();
  v2[6] = [objc_allocWithZone(MEMORY[0x277D75708]) init];
  v2[7] = 0;
  v7 = *(*v2 + 144);
  v8 = a2(0);
  __swift_storeEnumTagSinglePayload(v4 + v7, 1, 1, v8);
  v4[2] = a1;
  [v4[5] addTarget:v4 action:sel_handleGestureWithGesture_];
  return v4;
}

void *sub_26D16338C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartCoordinateProvider(0);
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B8BB8, &protocol descriptor for ChartLayoutAttributesFactoryType);
  result = sub_26D173EF4();
  if (!v12[3])
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v6 = type metadata accessor for GridViewProvider();
  result = sub_26D173EE4();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11[3] = v6;
  v11[4] = &protocol witness table for GridViewProvider;
  v11[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D144468(0);
  result = sub_26D173EC4();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1445D8(0);
  result = sub_26D173EC4();
  if (result)
  {
    v8 = result;
    sub_26D143F5C(0);
    v10 = objc_allocWithZone(v9);
    return sub_26D162F7C(v3, v4, v5, v12, v11, v7, v8);
  }

LABEL_15:
  __break(1u);
  return result;
}

void *sub_26D1635FC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v2 = type metadata accessor for LineChartRenderer();
  result = sub_26D173EE4();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v39 = v2;
  v40 = &off_287E8ACE0;
  v38[0] = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9320, &protocol descriptor for LineChartStylerType);
  result = sub_26D173EF4();
  if (!v37)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14340C(0);
  result = sub_26D173EE4();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
    v31[2] = v31;
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
    v31[1] = v31;
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = *v8;
    v16 = *v13;
    v35[3] = v2;
    v35[4] = &off_287E8ACE0;
    v35[0] = v15;
    v17 = type metadata accessor for LineChartStyler();
    v33 = v17;
    v34 = &off_287E8BB98;
    v32[0] = v16;
    type metadata accessor for LineChartViewProvider();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v35, v2);
    v20 = MEMORY[0x28223BE20](v19, v19);
    v22 = (v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = __swift_mutable_project_boxed_opaque_existential_1(v32, v33);
    v25 = MEMORY[0x28223BE20](v24, v24);
    v27 = (v31 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v28 + 16))(v27, v25);
    v29 = *v22;
    v30 = *v27;
    v18[5] = v2;
    v18[6] = &off_287E8ACE0;
    v18[2] = v29;
    v18[10] = v17;
    v18[11] = &off_287E8BB98;
    v18[12] = v4;
    v18[7] = v30;
    __swift_destroy_boxed_opaque_existential_1(v32);
    __swift_destroy_boxed_opaque_existential_1(v35);
    __swift_destroy_boxed_opaque_existential_1(v36);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_26D163A2C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v2 = result;
    type metadata accessor for LineSeriesAccessibilityElementProvider();
    swift_allocObject();
    return sub_26D1658BC(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D163AA4()
{
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

void *sub_26D163AF4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9048, &protocol descriptor for LineChartImageLoaderType);
  result = sub_26D173EF4();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B9320, &protocol descriptor for LineChartStylerType);
  result = sub_26D173EF4();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9040, &protocol descriptor for LineZoneMaskProviderType);
  result = sub_26D173EF4();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9DD8, MEMORY[0x277D6CC30]);
  result = sub_26D173ED4();
  if (!v21)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for LineSeriesAccessibilityElementProvider();
  result = sub_26D173EE4();
  if (result)
  {
    v3 = result;
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v15 = MEMORY[0x28223BE20](v14, v14);
    v17 = (&v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = sub_26D1645F0(*v7, *v12, *v17, &v20, v3);
    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v19;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26D163ED0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D14436C(0, &qword_2812B9B30, &type metadata for LineChartStyle, type metadata accessor for StyleManager);
  result = sub_26D173EE4();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for LineChartStyler();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_287E8BB98;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D163F7C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_1_8();
  type metadata accessor for LineChartInteractor();
  result = sub_26D173EE4();
  if (result)
  {
    v2 = result;
    sub_26D1445D8(0);
    v3 = swift_allocObject();
    sub_26D16455C(0);
    swift_allocObject();
    *(v3 + 16) = sub_26D1632B4(v2, type metadata accessor for LineChartModel);
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_26D164024(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, qword_2812B8BC0, &protocol descriptor for CategoryCoordinateCalculatorType);
  result = sub_26D173EF4();
  if (v4[3])
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, &qword_2812B8C78, &protocol descriptor for ValueCoordinateCalculatorType);
    result = sub_26D173EF4();
    if (v3[3])
    {
      type metadata accessor for LineChartInteractor();
      swift_allocObject();
      return LineChartInteractor.init(categoryCoordinateCalculator:valueCoordinateCalculator:)(v4, v3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26D16412C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1433B8(0, &qword_2812B9110, &protocol descriptor for LineImageGeneratorType);
  result = sub_26D173EF4();
  if (v41)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_26D1433B8(0, qword_2812B9320, &protocol descriptor for LineChartStylerType);
    result = sub_26D173EF4();
    if (v39)
    {
      v5 = __swift_mutable_project_boxed_opaque_existential_1(v40, v41);
      v33[2] = v33;
      v6 = MEMORY[0x28223BE20](v5, v5);
      v8 = (v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v9 + 16))(v8, v6);
      v10 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
      v33[1] = v33;
      v11 = MEMORY[0x28223BE20](v10, v10);
      v13 = (v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v14 + 16))(v13, v11);
      v15 = *v8;
      v16 = *v13;
      v17 = type metadata accessor for LineImageGenerator();
      v37[3] = v17;
      v37[4] = &off_287E8A7D0;
      v37[0] = v15;
      v18 = type metadata accessor for LineChartStyler();
      v35 = v18;
      v36 = &off_287E8BB98;
      v34[0] = v16;
      v19 = type metadata accessor for LineChartImageLoader();
      v20 = swift_allocObject();
      v21 = __swift_mutable_project_boxed_opaque_existential_1(v37, v17);
      v22 = MEMORY[0x28223BE20](v21, v21);
      v24 = (v33 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v25 + 16))(v24, v22);
      v26 = __swift_mutable_project_boxed_opaque_existential_1(v34, v35);
      v27 = MEMORY[0x28223BE20](v26, v26);
      v29 = (v33 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v30 + 16))(v29, v27);
      v31 = *v24;
      v32 = *v29;
      v20[5] = v17;
      v20[6] = &off_287E8A7D0;
      v20[2] = v31;
      v20[10] = v18;
      v20[11] = &off_287E8BB98;
      v20[7] = v32;
      __swift_destroy_boxed_opaque_existential_1(v34);
      __swift_destroy_boxed_opaque_existential_1(v37);
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v40);
      a2[3] = v19;
      a2[4] = &off_287E8A8C0;
      *a2 = v20;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_26D16455C(uint64_t a1)
{
  if (!qword_2812B7808)
  {
    v2 = type metadata accessor for LineChartInteractor();
    v3 = sub_26D143F14(qword_2812B93E0, type metadata accessor for LineChartInteractor, &protocol conformance descriptor for LineChartInteractor);
    v5 = type metadata accessor for MultiTouchInteractionManager(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2812B7808);
    }
  }
}

void *sub_26D1645F0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v32 = a5;
  v9 = type metadata accessor for LineChartImageLoader();
  v39[3] = v9;
  v39[4] = &off_287E8A8C0;
  v39[0] = a1;
  v10 = type metadata accessor for LineChartStyler();
  v37 = v10;
  v38 = &off_287E8BB98;
  v36[0] = a2;
  v11 = type metadata accessor for LineZoneMaskProvider();
  v34 = v11;
  v35 = &off_287E8CAA8;
  v33[0] = a3;
  type metadata accessor for LineChartRenderer();
  v12 = swift_allocObject();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v39, v9);
  v14 = MEMORY[0x28223BE20](v13, v13);
  v16 = (&v33[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v17 + 16))(v16, v14);
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v36, v37);
  v19 = MEMORY[0x28223BE20](v18, v18);
  v21 = (&v33[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v24 = MEMORY[0x28223BE20](v23, v23);
  v26 = (&v33[-1] - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  v28 = *v16;
  v29 = *v21;
  v30 = *v26;
  v12[5] = v9;
  v12[6] = &off_287E8A8C0;
  v12[2] = v28;
  v12[10] = v10;
  v12[11] = &off_287E8BB98;
  v12[12] = v30;
  v12[7] = v29;
  v12[15] = v11;
  v12[16] = &off_287E8CAA8;
  sub_26D164900(0);
  swift_allocObject();
  v12[22] = sub_26D174064();
  sub_26D15166C(a4, (v12 + 17));
  v12[23] = v32;
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return v12;
}

void sub_26D164900(uint64_t a1)
{
  if (!qword_2812B7B88)
  {
    sub_26D16498C();
    sub_26D14436C(255, &qword_2812B7600, &type metadata for LineChartImages, MEMORY[0x277D83940]);
    v1 = sub_26D174074();
    if (!v2)
    {
      atomic_store(v1, &qword_2812B7B88);
    }
  }
}

unint64_t sub_26D16498C()
{
  result = qword_2812B89D0;
  if (!qword_2812B89D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B89D0);
  }

  return result;
}

void sub_26D164A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id ColumnChartView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void ColumnChartView.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView;
  v2 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v3 = OUTLINED_FUNCTION_0_7();
  *(v0 + v1) = [v4 v5];
  sub_26D1746F4();
  __break(1u);
}

char *sub_26D164B90()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView;
  v3 = objc_allocWithZone(MEMORY[0x277D755E8]);
  v4 = OUTLINED_FUNCTION_0_7();
  *(v0 + v2) = [v5 v6];
  v7 = OUTLINED_FUNCTION_0_7();
  v10 = objc_msgSendSuper2(v8, v9, v7, v0, ObjectType);
  [v10 addSubview_];
  return v10;
}

Swift::Void __swiftcall ColumnChartView.layoutSubviews()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC9TeaCharts15ColumnChartView_imageView];
  [v0 bounds];
  [v1 setFrame_];
}

id ColumnChartView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ColumnChartView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_26D164E10@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v3 + 16);
  if (v4)
  {
    *a1 = v4;
  }

  else
  {
    sub_26D164FC0();
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_26D177440;
    if (qword_2804DD800 != -1)
    {
      OUTLINED_FUNCTION_0_18(&qword_2804DD800);
    }

    *(v5 + 32) = qword_2804DDB10;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_26D164EBC(uint64_t a1)
{
  sub_26D164E10(&v7);
  v2 = sub_26D14CE24(v7);

  if (v2 <= a1)
  {
    if (qword_2804DD800 != -1)
    {
      OUTLINED_FUNCTION_0_18(&qword_2804DD800);
    }

    v5 = qword_2804DDB10;
  }

  else
  {
    sub_26D164E10(&v7);
    v3 = v7;
    v4 = v7 & 0xC000000000000001;
    sub_26D1601E0();
    if (v4)
    {
      v5 = MEMORY[0x26D6B38E0](a1, v3);
    }

    else
    {
      v5 = *(v3 + 8 * a1 + 32);
    }
  }

  return v5;
}

void sub_26D164FC0()
{
  if (!qword_2812B7C60)
  {
    v0 = sub_26D1747C4();
    if (!v1)
    {
      atomic_store(v0, &qword_2812B7C60);
    }
  }
}

uint64_t sub_26D16509C()
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](0);
  return sub_26D174894();
}

uint64_t sub_26D1650F0(uint64_t a1)
{
  sub_26D174864();
  MEMORY[0x26D6B3B10](0);
  return sub_26D174894();
}

uint64_t sub_26D165130()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

unint64_t sub_26D165194()
{
  result = qword_2804DD9A0;
  if (!qword_2804DD9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD9A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SparklineLoader.SparklineLoaderError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for SparklineLoader.SparklineLoaderError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_26D1652EC()
{
  result = qword_2804DD9A8;
  if (!qword_2804DD9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DD9A8);
  }

  return result;
}

uint64_t sub_26D165340(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D165380(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

id SparklineView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SparklineView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_11();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_19();

  return [v2 v3];
}

id SparklineView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall LineSeriesAccessibilityElementProvider.clearElements()()
{
  swift_beginAccess();
  sub_26D165F88(0, qword_2812B7640, MEMORY[0x277D834E8]);
  sub_26D1741C4();
  swift_endAccess();
}

id LineSeriesAccessibilityElementProvider.seriesContainerElement(for:in:chartModel:)(unint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for LineChartModel(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v12 = *(v3 + 24);
  if (*(v12 + 16) && (v13 = sub_26D1609F8(a1), (v14 & 1) != 0))
  {
    v26 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v15 = v26;

    return v15;
  }

  else
  {
    result = swift_endAccess();
    if ((a1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v17 = *(a3 + *(v8 + 20));
      if (*(v17 + 16) > a1)
      {
        v18 = (v17 + 24 * a1);
        v19 = v18[5];
        v20 = v18[6];
        v28[0] = v18[4];
        v28[1] = v19;
        v28[2] = v20;
        sub_26D14F5B8(a3, v11);
        v21 = *(v4 + 16);
        objc_allocWithZone(type metadata accessor for LineSeriesAccessibilityElement(0));

        v22 = sub_26D16B71C(a2, v28, v11, v21);
        swift_beginAccess();
        v23 = v22;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v4 + 24);
        sub_26D165ADC(v23, a1, isUniquelyReferenced_nonNull_native);
        *(v4 + 24) = v27;
        swift_endAccess();
        return v23;
      }
    }

    __break(1u);
  }

  return result;
}

void LineSeriesAccessibilityElementProvider.currentZone.getter(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v2 = OUTLINED_FUNCTION_0_20();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  sub_26D156CB8(v2, v3, v4, v5, v6, v7);
}

__n128 LineSeriesAccessibilityElementProvider.currentZone.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  swift_beginAccess();
  v5 = OUTLINED_FUNCTION_0_20();
  v6 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v6;
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  sub_26D156D08(v5, v7, v8, v9, v10, v11);
  return result;
}

void *sub_26D1658BC(uint64_t a1)
{
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  *(v1 + 2) = 0u;
  v2 = MEMORY[0x277D84F98];
  v1[2] = a1;
  v1[3] = v2;
  swift_beginAccess();
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  *(v1 + 2) = 0u;
  *(v1 + 3) = 0u;
  *(v1 + 4) = 0u;
  sub_26D156D08(v3, v4, v5, v6, v7, v8);
  return v1;
}

uint64_t LineSeriesAccessibilityElementProvider.deinit()
{

  v1 = OUTLINED_FUNCTION_0_20();
  sub_26D156D08(v1, v2, v3, v4, v5, v6);
  return v0;
}

uint64_t LineSeriesAccessibilityElementProvider.__deallocating_deinit()
{
  LineSeriesAccessibilityElementProvider.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void sub_26D16599C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_26D147140();
  OUTLINED_FUNCTION_1_12();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  sub_26D165E58(0, &qword_2812B7550, sub_26D165FF8);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_26D147140();
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    sub_26D174804();
    __break(1u);
    return;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7];
    v17 = *(v16 + 8 * v11);
    *(v16 + 8 * v11) = a1;
  }

  else
  {
    sub_26D165D68(v11, a2, a3, a1, v15);
  }
}

void sub_26D165ADC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26D1609F8(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  sub_26D165F88(0, &qword_2812B7540, MEMORY[0x277D843B8]);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_26D1609F8(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    sub_26D174804();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7];
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {

    sub_26D165DB0(v10, a2, a1, v14);
  }
}

void sub_26D165C10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_26D147140();
  OUTLINED_FUNCTION_1_12();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  sub_26D165E58(0, &qword_2812B7558, sub_26D165EBC);
  if ((sub_26D1746C4() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_26D147140();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    sub_26D174804();
    __break(1u);
    return;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
  }

  else
  {
    sub_26D165DF4(v13, a3, a4, a1, a2, v17);
  }
}

unint64_t sub_26D165D68(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_26D165DB0(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_26D165DF4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

void sub_26D165E58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26D1746E4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_26D165EBC(uint64_t a1)
{
  if (!qword_2812B7C80)
  {
    sub_26D165F24(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812B7C80);
    }
  }
}

void sub_26D165F24(uint64_t a1)
{
  if (!qword_2812B7C98[0])
  {
    sub_26D142EBC();
    v1 = sub_26D1741E4();
    if (!v2)
    {
      atomic_store(v1, qword_2812B7C98);
    }
  }
}

void sub_26D165F88(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for LineSeriesAccessibilityElement(255);
    v7 = a3(a1, MEMORY[0x277D83B88], v6, MEMORY[0x277D83B98]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_26D165FF8()
{
  result = qword_2812B7C78;
  if (!qword_2812B7C78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B7C78);
  }

  return result;
}

uint64_t CategoryZone.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void __swiftcall CategoryZone.init(identifier:from:to:)(TeaCharts::CategoryZone *__return_ptr retstr, Swift::String identifier, Swift::String from, Swift::String to)
{
  retstr->identifier = identifier;
  retstr->fromCategory = from;
  retstr->toCategory = to;
}

uint64_t static CategoryZone.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  if (!v10 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  v11 = v2 == v6 && v4 == v7;
  if (!v11 && (sub_26D1747E4() & 1) == 0)
  {
    return 0;
  }

  if (v3 == v8 && v5 == v9)
  {
    return 1;
  }

  return sub_26D1747E4();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26D166194(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26D1661D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D166230(uint64_t a1)
{
  v2 = sub_26D16A758(a1);
  v4 = v3;
  v6 = v5;
  v7 = sub_26D16A7B8(a1);
  v9 = v8;
  v11 = v10;
  v12 = sub_26D16A9F8(v2, v4, v6 & 1, v7, v8, v10 & 1);
  sub_26D16AA2C(v7, v9, v11 & 1);
  if (v12)
  {
    sub_26D16AA2C(v2, v4, v6 & 1);
    return 0;
  }

  else
  {
    sub_26D16A80C(v2, v4, v6 & 1, a1);
    v13 = v14;
    sub_26D16AA2C(v2, v4, v6 & 1);
  }

  return v13;
}

__n128 TapDragGestureRecognizer.locations.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 TapDragGestureRecognizer.locations.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_6_2(v4, v7);
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

double TapDragGestureRecognizer.minimumPressDuration.getter()
{
  v1 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t TapDragGestureRecognizer.minimumPressDuration.setter(double a1)
{
  v3 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  result = OUTLINED_FUNCTION_6_2(v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration, v5);
  *(v1 + v3) = a1;
  return result;
}

id TapDragGestureRecognizer.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void TapDragGestureRecognizer.init(coder:)()
{
  v1 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = -1;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration) = 0x3FB999999999999ALL;
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v2 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches) = v2;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer) = 0;
  sub_26D1746F4();
  __break(1u);
}

id sub_26D166608()
{
  OUTLINED_FUNCTION_3_6();
  ObjectType = swift_getObjectType();
  v3 = *v1;
  v4 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = -1;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration) = 0x3FB999999999999ALL;
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v5 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v5 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches) = v5;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer) = 0;
  *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation) = v3;
  OUTLINED_FUNCTION_1_13();
  return objc_msgSendSuper2(v6, v7, v0, ObjectType);
}

void TapDragGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v7 = *&v2[v6];

  v9 = sub_26D166BBC(v8);

  v10 = a1 & 0xC000000000000001;
  if (v9 > 1)
  {
    if (v10)
    {
      swift_unknownObjectRetain();
      sub_26D174544();
      sub_26D1682B4();
      v15 = sub_26D1682F8();
      OUTLINED_FUNCTION_4_3(v15);
      a1 = v56;
      v16 = v57;
      v7 = v58;
      v17 = v59;
      v18 = v60;
    }

    else
    {
      v16 = a1 + 56;
      OUTLINED_FUNCTION_0_21();
      v18 = v33 & v34;

      v17 = 0;
    }

    v52 = v7;
    v35 = (v7 + 64) >> 6;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v36 = sub_26D1745B4();
      if (!v36)
      {
        break;
      }

      v55 = v36;
      sub_26D1682B4();
      swift_dynamicCast();
      v37 = v54;
      v38 = v17;
      v39 = v18;
      if (!v54)
      {
        break;
      }

      while (1)
      {
        [v4 ignoreTouch:v37 forEvent:{a2, v52}];

        v17 = v38;
        v18 = v39;
        if (a1 < 0)
        {
          break;
        }

LABEL_31:
        v40 = v17;
        v38 = v17;
        if (!v18)
        {
          while (1)
          {
            v38 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              break;
            }

            if (v38 >= v35)
            {
              goto LABEL_38;
            }

            ++v40;
            if (*(v16 + 8 * v38))
            {
              goto LABEL_35;
            }
          }

LABEL_48:
          __break(1u);
          return;
        }

LABEL_35:
        OUTLINED_FUNCTION_2_9();
        v39 = v42 & v41;
        v37 = *(*(a1 + 48) + ((v38 << 9) | (8 * v43)));
        if (!v37)
        {
          goto LABEL_38;
        }
      }
    }

LABEL_38:
    sub_26D168350(a1);
  }

  else
  {
    if (v10)
    {
      swift_unknownObjectRetain();
      sub_26D174544();
      sub_26D1682B4();
      v11 = sub_26D1682F8();
      OUTLINED_FUNCTION_4_3(v11);
      a1 = v56;
      v12 = v57;
      v7 = v58;
      v13 = v59;
      v14 = v60;
    }

    else
    {
      v12 = a1 + 56;
      OUTLINED_FUNCTION_0_21();
      v14 = v19 & v20;

      v13 = 0;
    }

    v21 = (v7 + 64) >> 6;
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v22 = sub_26D1745B4();
      if (!v22)
      {
        break;
      }

      v55 = v22;
      sub_26D1682B4();
      swift_dynamicCast();
      v23 = v54;
      v24 = v13;
      v3 = v14;
      if (!v54)
      {
        break;
      }

      while (1)
      {
        v29 = *&v4[v6];
        if ((v29 & 0xC000000000000001) != 0)
        {

          v30 = sub_26D174584();
        }

        else
        {
          v30 = *(v29 + 16);
        }

        if (v30 > 1)
        {
          [v4 ignoreTouch:v23 forEvent:a2];
        }

        else
        {
          swift_beginAccess();
          v31 = v23;
          sub_26D168358(&v55, v31);
          swift_endAccess();
        }

        v13 = v24;
        v14 = v3;
        if (a1 < 0)
        {
          break;
        }

LABEL_11:
        v25 = v13;
        v24 = v13;
        if (!v14)
        {
          while (1)
          {
            v24 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v24 >= v21)
            {
              goto LABEL_24;
            }

            ++v25;
            if (*(v12 + 8 * v24))
            {
              goto LABEL_15;
            }
          }

          __break(1u);
          goto LABEL_48;
        }

LABEL_15:
        OUTLINED_FUNCTION_2_9();
        v3 = v27 & v26;
        v23 = *(*(a1 + 48) + ((v24 << 9) | (8 * v28)));
        if (!v23)
        {
          goto LABEL_24;
        }
      }
    }

LABEL_24:
    sub_26D168350(a1);
    if ([v4 state])
    {
      v32 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
    }

    else
    {

      sub_26D166BBC(v44);
      OUTLINED_FUNCTION_3_6();

      v32 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
      if (v3 == 1 && !*&v4[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer])
      {

        sub_26D166230(v46);
        OUTLINED_FUNCTION_3_6();

        v47 = [v4 view];
        [1 locationInView_];
        v49 = v48;
        v51 = v50;

        sub_26D166BDC(v49, v51);
        return;
      }
    }

    if (*&v4[v32])
    {

      sub_26D166BBC(v45);
      OUTLINED_FUNCTION_3_6();

      if (v3 < 2)
      {
        return;
      }

      sub_26D1670B8();
    }

    sub_26D166D28();
  }
}

uint64_t sub_26D166BBC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_26D174584();
  }

  else
  {
    return *(a1 + 16);
  }
}

void sub_26D166BDC(double a1, double a2)
{
  v5 = objc_opt_self();
  v6 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_minimumPressDuration;
  swift_beginAccess();
  v7 = *&v2[v6];
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  aBlock[4] = sub_26D16A560;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26D167ECC;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  v10 = v2;

  v11 = [v5 scheduledTimerWithTimeInterval:0 repeats:v9 block:v7];
  _Block_release(v9);
  v12 = *&v10[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer];
  *&v10[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer] = v11;
}

id sub_26D166D28()
{
  v1 = &v0[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations];
  swift_beginAccess();
  v2 = v1[32];
  swift_beginAccess();

  v4 = sub_26D166BBC(v3);

  if (v4 != 1)
  {
    v13 = sub_26D166BBC(v5);

    if (v13 < 2)
    {
      *v1 = 0u;
      *(v1 + 1) = 0u;
      v1[32] = -1;
      return [v0 setState_];
    }

    v14 = [v0 view];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 traitCollection];

      v17 = [v16 layoutDirection];
      v18 = v17 == 1;
    }

    else
    {
      v18 = 0;
    }

    v19 = v0;

    v41 = sub_26D168068(v20);
    sub_26D168E38(&v41, v19, v18);

    v21 = v41;
    v22 = v41 & 0xC000000000000001;
    if (v18)
    {
      sub_26D1601E0();
      if (v22)
      {
        v23 = MEMORY[0x26D6B38E0](1, v21);
      }

      else
      {
        v23 = *(v21 + 40);
      }

      v24 = v23;
      sub_26D1601E0();
      if (v22)
      {
        v25 = 0;
LABEL_18:
        v27 = MEMORY[0x26D6B38E0](v25, v21);
LABEL_22:
        v29 = v27;

        v30 = [v19 view];
        [v24 locationInView_];
        v32 = v31;
        v34 = v33;

        v35 = [v19 view];
        [v29 locationInView_];
        v37 = v36;
        v39 = v38;

        *v1 = v32;
        *(v1 + 1) = v34;
        *(v1 + 2) = v37;
        *(v1 + 3) = v39;
        v1[32] = 1;
        goto LABEL_23;
      }

      v28 = *(v21 + 32);
    }

    else
    {
      sub_26D1601E0();
      if (v22)
      {
        v26 = MEMORY[0x26D6B38E0](0, v21);
      }

      else
      {
        v26 = *(v21 + 32);
      }

      v24 = v26;
      sub_26D1601E0();
      if (v22)
      {
        v25 = 1;
        goto LABEL_18;
      }

      v28 = *(v21 + 40);
    }

    v27 = v28;
    goto LABEL_22;
  }

  v6 = sub_26D166230(v5);

  if (!v6)
  {
    return result;
  }

  v8 = [v0 view];
  [v6 locationInView_];
  v10 = v9;
  v12 = v11;

  *v1 = v10;
  *(v1 + 1) = v12;
  *(v1 + 2) = 0;
  *(v1 + 3) = 0;
  v1[32] = 0;
LABEL_23:
  if (v2 == 255)
  {
    v40 = 1;
  }

  else
  {
    v40 = 2;
  }

  return [v0 setState_];
}

void sub_26D1670B8()
{
  v1 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer;
  v2 = *(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer);
  if (v2)
  {
    [v2 invalidate];
    v2 = *(v0 + v1);
  }

  *(v0 + v1) = 0;
}

id TapDragGestureRecognizer.touchesMoved(_:with:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_1_13();
  swift_beginAccess();
  v4 = *(v1 + v3);

  sub_26D167218(a1, v4);
  LOBYTE(a1) = v5;

  if ((a1 & 1) == 0 && !*(v1 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer))
  {
    return sub_26D166D28();
  }

  return result;
}

void sub_26D167218(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (!sub_26D174584())
    {
      return;
    }
  }

  else if (!*(a2 + 16))
  {
    return;
  }

  v5 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (!sub_26D174584())
    {
      return;
    }
  }

  else if (!*(a1 + 16))
  {
    return;
  }

  if (!v4)
  {
    v6 = *(v2 + 16);
    if (v5)
    {
      goto LABEL_11;
    }

LABEL_13:
    v7 = *(a1 + 16);
    goto LABEL_14;
  }

  v6 = sub_26D174584();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_11:
  v7 = sub_26D174584();
LABEL_14:
  if (v6 >= v7)
  {
    v8 = a1;
  }

  else
  {
    v8 = v2;
  }

  if (v6 < v7)
  {
    v2 = a1;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_26D174544();
    sub_26D1682B4();
    sub_26D1682F8();
    sub_26D174364();
    v8 = v32;
    v9 = v33;
    v10 = v34;
    v11 = v35;
    v12 = v36;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  sub_26D1682B4();
  v28 = v9;
  v16 = (v10 + 64) >> 6;
  v17 = v2 & 0xC000000000000001;
  v29 = v8;
  while (1)
  {
    while (v8 < 0)
    {
      if (!sub_26D1745B4())
      {
LABEL_43:
        sub_26D168350(v8);

        return;
      }

      swift_dynamicCast();
      v22 = v12;
      v20 = v31;
      v30 = v22;
      if (v17)
      {
        goto LABEL_33;
      }

LABEL_37:
      if (*(v2 + 16))
      {
        v23 = sub_26D174494();
        v24 = ~(-1 << *(v2 + 32));
        while (1)
        {
          v25 = v23 & v24;
          if (((*(v2 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
          {
            break;
          }

          v26 = *(*(v2 + 48) + 8 * v25);
          v27 = sub_26D1744A4();

          v23 = v25 + 1;
          if (v27)
          {
            sub_26D168350(v29);

            goto LABEL_45;
          }
        }
      }

      v9 = v28;
      v8 = v29;
      v17 = v2 & 0xC000000000000001;
      v12 = v30;
    }

    v18 = v12;
    if (!v12)
    {
      break;
    }

LABEL_32:
    v30 = (v18 - 1) & v18;
    v31 = *(*(v8 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v18)))));
    v20 = v31;
    if (!v17)
    {
      goto LABEL_37;
    }

LABEL_33:
    v21 = sub_26D1745C4();

    v12 = v30;
    if (v21)
    {
      sub_26D168350(v8);
LABEL_45:

      return;
    }
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      goto LABEL_43;
    }

    v18 = *(v9 + 8 * v11);
    ++v19;
    if (v18)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
}

void TapDragGestureRecognizer.touchesEnded(_:with:)(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_26D174544();
    sub_26D1682B4();
    sub_26D1682F8();
    sub_26D174364();
    v3 = v21;
    v4 = v22;
    v1 = v23;
    v5 = v24;
    v6 = v25;
  }

  else
  {
    v4 = a1 + 56;
    OUTLINED_FUNCTION_0_21();
    v6 = v7 & v8;

    v5 = 0;
  }

  v9 = (v1 + 64) >> 6;
  if (v3 < 0)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v10 = v5;
    v11 = v5;
    if (!v6)
    {
      break;
    }

LABEL_9:
    OUTLINED_FUNCTION_2_9();
    v14 = v13 & v12;
    v16 = *(*(v3 + 48) + ((v11 << 9) | (8 * v15)));
    if (!v16)
    {
LABEL_15:
      sub_26D168350(v3);
      if (*&v2[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_timer] && (OUTLINED_FUNCTION_1_13(), swift_beginAccess(), v18 = , v19 = sub_26D1677EC(v18), , v19))
      {
        [v2 setState_];
      }

      else
      {
        sub_26D166D28();
      }

      return;
    }

    while (1)
    {
      swift_beginAccess();
      v17 = sub_26D169F88(v16);
      swift_endAccess();

      v5 = v11;
      v6 = v14;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_11:
      if (sub_26D1745B4())
      {
        sub_26D1682B4();
        swift_dynamicCast();
        v16 = v20;
        v11 = v5;
        v14 = v6;
        if (v20)
        {
          continue;
        }
      }

      goto LABEL_15;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_15;
    }

    ++v10;
    if (*(v4 + 8 * v11))
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_26D1677EC(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_26D174584();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_26D167844(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t))
{
  sub_26D1682B4();
  sub_26D1682F8();
  v8 = sub_26D174354();
  v9 = a4;
  v10 = a1;
  a5(v8);
}

Swift::Void __swiftcall TapDragGestureRecognizer.reset()()
{
  sub_26D1670B8();
  if (sub_26D14CE24(MEMORY[0x277D84F90]))
  {
    v1 = sub_26D168118(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  v2 = OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches;
  OUTLINED_FUNCTION_6_2(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_touches, v5);
  *(v0 + v2) = v1;

  v3 = v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations;
  OUTLINED_FUNCTION_6_2(v0 + OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_locations, &v4);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = -1;
}

id TapDragGestureRecognizer.__allocating_init(target:action:)(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6, v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_26D1747D4();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(v2) initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

id TapDragGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_26D167C94(void **a1, void **a2, _BYTE *a3, char a4)
{
  v6 = *a1;
  v7 = *a2;
  v8 = a3[OBJC_IVAR____TtC9TeaCharts24TapDragGestureRecognizer_orientation];
  v9 = [a3 view];
  [v6 locationInView_];
  v11 = v10;
  v13 = v12;

  v14 = [a3 view];
  [v7 locationInView_];
  v16 = v15;
  v18 = v17;

  v19 = v11 < v16;
  if (a4)
  {
    v19 = v16 < v11;
  }

  if (v8)
  {
    return v13 < v18;
  }

  else
  {
    return v19;
  }
}

void sub_26D167D9C(double a1, double a2, uint64_t a3, char *a4)
{
  sub_26D1670B8();
  swift_beginAccess();

  v8 = sub_26D166230(v7);

  if (v8)
  {
    v9 = [a4 view];
    [v8 locationInView_];
    v11 = v10;

    v12 = vabdd_f64(a1, v11);
    v13 = [a4 view];
    [v8 locationInView_];
    v15 = v14;

    v16 = vabdd_f64(a2, v15);
    if (v12 <= 5.0 && v16 <= 5.0)
    {
      sub_26D166D28();
    }

    else
    {
      [a4 setState_];
    }
  }
}

void sub_26D167ECC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_26D167F34(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      sub_26D1682B4();
      result = sub_26D1742D4();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t sub_26D167F90(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26D1777C0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *sub_26D167FF4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_26D164FC0();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = (2 * ((v5 - 32) / 8)) | 1;
  return v4;
}

uint64_t **sub_26D168068(uint64_t *a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_26D174584();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_26D167FF4(v2, 0);

    v1 = sub_26D16A56C(&v5, v3 + 4, v2, v1);
    sub_26D168350(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_26D168118(uint64_t a1)
{
  if (sub_26D14CE24(a1))
  {
    sub_26D16A4FC(0);
    v2 = sub_26D174614();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v17 = sub_26D14CE24(a1);
  if (v17)
  {
    v3 = 0;
    v4 = v2 + 56;
    while (1)
    {
      sub_26D1601E0();
      result = (a1 & 0xC000000000000001) != 0 ? MEMORY[0x26D6B38E0](v3, a1) : *(a1 + 32 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_26D174494();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_26D1682B4();
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_26D1744A4();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      if (v3 == v17)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_26D1682B4()
{
  result = qword_2812B75A8;
  if (!qword_2812B75A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2812B75A8);
  }

  return result;
}

unint64_t sub_26D1682F8()
{
  result = qword_2812B75A0;
  if (!qword_2812B75A0)
  {
    sub_26D1682B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812B75A0);
  }

  return result;
}

uint64_t sub_26D168358(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26D174594();

    if (v9)
    {

      sub_26D1682B4();
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_26D174584();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_26D16855C(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_26D16870C(v17 + 1);
        }

        v18 = v8;
        sub_26D168924(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_26D1682B4();
    v11 = sub_26D174494();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_26D1689A8(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_26D1744A4();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_26D16855C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_26D16A4FC(0);
    v2 = sub_26D174604();
    v15 = v2;
    sub_26D174544();
    while (1)
    {
      if (!sub_26D1745B4())
      {

        return v2;
      }

      sub_26D1682B4();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26D16870C(v3 + 1);
      }

      v2 = v15;
      result = sub_26D174494();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26D16870C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26D16A4FC(0);
  result = sub_26D1745F4();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26D167F90(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_26D174494();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26D168924(uint64_t a1, uint64_t a2)
{
  sub_26D174494();
  result = sub_26D174524();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_26D1689A8(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26D16870C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26D168C34(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_26D174494();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        sub_26D1682B4();
        v14 = *(*(v12 + 48) + 8 * a2);
        v15 = sub_26D1744A4();

        if (v15)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26D168AF0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26D1747F4();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

id sub_26D168AF0()
{
  v1 = v0;
  sub_26D16A4FC(0);
  v2 = *v0;
  v3 = sub_26D1745E4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

uint64_t sub_26D168C34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26D16A4FC(0);
  result = sub_26D1745F4();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_26D174494();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void sub_26D168E38(uint64_t *a1, void *a2, char a3)
{
  v5 = *a1;
  v6 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_26D16A744(v5);
    *a1 = v5;
  }

  v8 = *(v5 + 16);
  v10[0] = v5 + 32;
  v10[1] = v8;
  v9 = v6;
  sub_26D168EE8(v10, v9, a3 & 1);
  sub_26D174664();
}