uint64_t sub_220666A60(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 accessibilityFrameInContainerSpace];
        v35 = v34;
        [v33 accessibilityFrameInContainerSpace];
        v37 = v36;

        if (v35 < v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 accessibilityFrameInContainerSpace];
        v19 = v18;
        [v17 accessibilityFrameInContainerSpace];
        v21 = v20;

        if (v19 >= v21)
        {
          break;
        }

        v22 = v13;
        v23 = v6 == v13++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v4;
      v23 = v6 == v4++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_220666D3C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_2208926AC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2205888C4(v3, 0);
  sub_2205D37F8((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_220666DD0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_220666E18(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&recta.origin.y = swift_unknownObjectWeakLoadStrong();
  if (*&recta.origin.y)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      sub_220891A9C();
      recta.origin.x = v6;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v15 = swift_unknownObjectWeakLoadStrong();
        if (v15)
        {
          v16 = v15;
          [v14 accessibilityFrame];
          v18 = v17;
          v20 = v19;
          v22 = v21;
          v24 = v23;
          [v16 accessibilityFrame];
          v48.origin.x = v25;
          v48.origin.y = v26;
          v48.size.width = v27;
          v48.size.height = v28;
          v42.origin.x = v18;
          v42.origin.y = v20;
          v42.size.width = v22;
          v42.size.height = v24;
          v43 = CGRectUnion(v42, v48);
          x = v43.origin.x;
          y = v43.origin.y;
          width = v43.size.width;
          height = v43.size.height;

LABEL_11:
          [v5 frame];
          MinX = CGRectGetMinX(v44);
          v45.origin.x = recta.origin.x;
          v45.origin.y = v8;
          v45.size.width = v10;
          v45.size.height = v12;
          MinY = CGRectGetMinY(v45);
          v46.origin.x = x;
          v46.origin.y = y;
          v46.size.width = width;
          v46.size.height = height;
          v39 = CGRectGetWidth(v46);
          v47.origin.x = x;
          v47.origin.y = y;
          v47.size.width = width;
          v47.size.height = height;
          [*&recta.origin.y scrollRectToVisible:0 animated:{MinX, MinY, v39, CGRectGetHeight(v47)}];

          return;
        }
      }

      *&recta.size.width = a1;
      *&recta.size.height = ObjectType;
      [(CGSize *)&recta.size accessibilityFrame];
      x = v33;
      y = v34;
      width = v35;
      height = v36;
      goto LABEL_11;
    }
  }
}

uint64_t sub_220667060()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BEC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088516C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_22088506C();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D0A8], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D090], v0);
  sub_220667264(0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF6CF78 = result;
  return result;
}

void sub_220667264(uint64_t a1)
{
  if (!qword_281298CF0)
  {
    sub_22088516C();
    sub_2206672C8();
    v1 = sub_220886C4C();
    if (!v2)
    {
      atomic_store(v1, &qword_281298CF0);
    }
  }
}

unint64_t sub_2206672C8()
{
  result = qword_2812994A8;
  if (!qword_2812994A8)
  {
    sub_22088516C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812994A8);
  }

  return result;
}

void sub_220667344(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a2;
  sub_220667980(0);
  v75 = v4;
  *&v6 = MEMORY[0x28223BE20](v4, v5).n128_u64[0];
  v74 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_lineChartViewController);
  v9 = [v8 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_38;
  }

  v10 = v9;
  [v9 setAutoresizingMask_];

  v11 = [v8 view];
  if (!v11)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v12 = v11;
  [v11 setFrame_];

  v13 = *(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_columnChartViewController);
  v14 = [v13 view];
  if (!v14)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v15 = v14;
  [v14 setAutoresizingMask_];

  v16 = [v13 view];
  if (!v16)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v17 = v16;
  v18 = v77;
  v19 = *(v77 + 64);
  v20 = *(v77 + 72);
  v21 = *(v77 + 80);
  v22 = *(v77 + 88);
  v78.origin.x = v19;
  v78.origin.y = v20;
  v78.size.width = v21;
  v78.size.height = v22;
  MinX = CGRectGetMinX(v78);
  v79.origin.x = v19;
  v79.origin.y = v20;
  v79.size.width = v21;
  v79.size.height = v22;
  MinY = CGRectGetMinY(v79);
  v23 = [v13 view];
  if (!v23)
  {
LABEL_41:
    __break(1u);
    return;
  }

  v24 = v23;
  [v23 frame];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v80.origin.x = v26;
  v80.origin.y = v28;
  v80.size.width = v30;
  v80.size.height = v32;
  Width = CGRectGetWidth(v80);
  v81.origin.x = v19;
  v81.origin.y = v20;
  v81.size.width = v21;
  v81.size.height = v22;
  [v17 setFrame_];

  [*(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_topDateRangePickerSeparator) setFrame_];
  [*(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_interactionDisplayView) setFrame_];
  v34 = *(a3 + OBJC_IVAR____TtC8StocksUI24StockChartViewController_dateRangePicker);
  [v34 setContentSize_];
  [v34 setContentOffset_];
  v71 = v34;
  v35 = *&v34[OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl];
  sub_2206149F0();
  sub_22088B5FC();
  v36 = sub_22088B5CC();
  v70 = v35;
  MinX = COERCE_DOUBLE(sub_22088B5EC());
  if (v36 >> 62)
  {
    goto LABEL_20;
  }

  v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v37)
  {
    while (1)
    {
      v38 = 0;
      v72 = v36 & 0xFFFFFFFFFFFFFF8;
      *&MinY = v36 & 0xC000000000000001;
      while (MinY != 0.0)
      {
        v40 = MEMORY[0x223D8A700](v38, v36);
        v39 = MinX;
LABEL_12:
        v41 = *(*&v39 + 16);
        if (v38 == v41)
        {

          goto LABEL_21;
        }

        if (v38 >= v41)
        {
          goto LABEL_19;
        }

        v42 = v38 + 1;
        v43 = sub_2208854FC();
        v44 = *(v43 - 8);
        v45 = v74;
        v46 = *(v75 + 48);
        (*(v44 + 16))(&v74[v46], *&v39 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v38, v43);
        v47 = v40;
        ChartRange.accessibilityLabel.getter();
        (*(v44 + 8))(&v45[v46], v43);
        v48 = sub_22089132C();

        [v47 setAccessibilityLabel_];

        v38 = v42;
        if (v37 == v42)
        {
          goto LABEL_21;
        }
      }

      v39 = MinX;
      if (v38 < *(v72 + 16))
      {
        break;
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      v37 = sub_2208926AC();
      if (!v37)
      {
        goto LABEL_21;
      }
    }

    v40 = *(v36 + 8 * v38 + 32);
    goto LABEL_12;
  }

LABEL_21:

  v49 = sub_22088B5CC();
  v50 = v49;
  if (v49 >> 62)
  {
    goto LABEL_35;
  }

  for (i = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v52 = 0;
    v53 = 0;
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x223D8A700](v53, v50);
      }

      else
      {
        if (v53 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v54 = *(v50 + 8 * v53 + 32);
      }

      v55 = *(v77 + 160);
      if (v53 >= *(v55 + 16))
      {
        break;
      }

      v56 = (v55 + v52);
      v57 = v56[4];
      v58 = v56[5];
      v59 = v56[6];
      v60 = v56[7];
      v61 = v54;
      [v61 setFrame_];
      if ([v61 isSelected])
      {
        [v61 frame];
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v69 = v68;

        [v71 scrollRectToVisible:0 animated:{v63, v65, v67, v69}];
      }

      else
      {
      }

      ++v53;

      v52 += 32;
      if (i == v53)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    ;
  }

LABEL_36:
}

void sub_220667980(uint64_t a1)
{
  if (!qword_2812978E8)
  {
    sub_22088C57C();
    sub_2208854FC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812978E8);
    }
  }
}

uint64_t sub_2206679F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for StockFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockFeedKnobsConfig(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088685C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  v18 = qword_2812948A8;
  v19 = sub_220891AFC();
  sub_22088A7EC("Creating stock feed pool", 24, 2, &dword_22043F000, v18, v19, MEMORY[0x277D84F90], v31);
  v20 = type metadata accessor for StockFeedServiceConfig(0);
  v21 = *(v14 + 16);
  v22 = a1 + *(v20 + 40);
  v33 = v13;
  v21(v17, v22, v13);
  sub_22046DA2C(v3 + 56, v34);
  __swift_project_boxed_opaque_existential_1(v34, v36);
  v32 = sub_22088613C() ^ 1;
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_project_boxed_opaque_existential_1((v3 + 56), *(v3 + 80));
  if (sub_22088618C())
  {
    LOBYTE(v34[0]) = v32 & 1;
    v34[1] = MEMORY[0x277D84F90];
    v35 = 0;
    sub_220668440();
    swift_allocObject();
    v23 = sub_220888ECC();
  }

  else
  {
    v24 = a1 + *(v20 + 24);
    v25 = type metadata accessor for StockFeedContentConfig(0);
    sub_220668244(v24 + *(v25 + 20), v12);
    sub_2206682A8(v12, v8);
    type metadata accessor for NewsStockFeedGroupKnobs(0);

    sub_22066830C(v8);
    sub_22088FB6C();

    MEMORY[0x28223BE20](v26, v27);
    *(&v31 - 4) = v3;
    *(&v31 - 3) = v17;
    *(&v31 - 2) = v28;
    sub_220668388(0);
    sub_220888FBC();
    *(swift_allocObject() + 16) = v32 & 1;
    v29 = sub_220888D9C();
    v23 = sub_220888E4C();
  }

  (*(v14 + 8))(v17, v33);
  return v23;
}

uint64_t sub_220667DCC(void *a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v26 = sub_22088609C();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[6];
  v22 = a1[5];
  v23 = v8;
  v21 = __swift_project_boxed_opaque_existential_1(a1 + 2, v22);
  sub_22066852C(0, &qword_28127E1A8, MEMORY[0x277D695B0], MEMORY[0x277D84560]);
  v9 = sub_22088608C();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  v13 = (v12 + v11);
  sub_220668490(0);
  v15 = *(v14 + 48);
  *v13 = a3;
  v16 = *MEMORY[0x277D693E0];
  v17 = sub_220885B7C();
  v18 = *(v17 - 8);
  (*(v18 + 104))(&v13[v15], v16, v17);
  (*(v18 + 56))(&v13[v15], 0, 1, v17);
  (*(v10 + 104))(v13, *MEMORY[0x277D695A0], v9);
  sub_22088607C();
  v19 = sub_220885EDC();
  (*(v24 + 8))(v7, v26);
  return v19;
}

uint64_t sub_220668064@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (qword_2812948A0 != -1)
  {
    swift_once();
  }

  sub_22066852C(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_220899360;
  v8 = *(v5 + 16);
  v9 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v9;
  *(v7 + 32) = v8;
  sub_220891AFC();
  sub_22088A7EC("Stock feed pool fetched %ld headlines", v11);

  *a3 = a2 & 1;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
}

unint64_t sub_2206681A8()
{
  result = qword_28128C4E0;
  if (!qword_28128C4E0)
  {
    type metadata accessor for StockFeedServiceConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128C4E0);
  }

  return result;
}

uint64_t sub_220668200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2206679F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_220668244(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedKnobsConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206682A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22066830C(uint64_t a1)
{
  v2 = type metadata accessor for NewsStockFeedGroupKnobs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220668388(uint64_t a1)
{
  if (!qword_28127EB38)
  {
    sub_22066852C(255, &qword_28127EB30, MEMORY[0x277D69858], MEMORY[0x277D83940]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127EB38);
    }
  }
}

void sub_220668440()
{
  if (!qword_27CF58450)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58450);
    }
  }
}

void sub_220668490(uint64_t a1)
{
  if (!qword_28127E900)
  {
    sub_22066852C(255, &qword_281299300, MEMORY[0x277D69418], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E900);
    }
  }
}

void sub_22066852C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t isMastheadEnabled.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = v1 + 1;
  if (v1 + 1 < 7 && ((0x5Fu >> v2) & 1) != 0)
  {
    return (0x64u >> v2) & 1;
  }

  result = sub_22089267C();
  __break(1u);
  return result;
}

uint64_t sub_220668680()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 1;
  sub_22045E8CC();
  swift_allocObject();
  result = sub_220886C5C();
  qword_281299678 = result;
  return result;
}

uint64_t sub_22066886C(void *a1)
{
  v2 = sub_22088846C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v19 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088516C();
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088831C();
  v18 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[24];
  __swift_project_boxed_opaque_existential_1(a1 + 21, v14);
  sub_22088681C();
  (*(v10 + 104))(v13, *MEMORY[0x277D6CA28], v9);
  sub_22059947C(v14);
  v15 = v19;
  sub_220599480(v19);
  v16 = sub_2208860EC();

  (*(v22 + 8))(v15, v23);
  (*(v20 + 8))(v8, v21);
  (*(v10 + 8))(v13, v18);
  return v16;
}

uint64_t sub_220668B10()
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v0 - 8, v1);
  sub_22088550C();
  sub_2204540D4(0, &qword_27CF57058, sub_22047C320, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_220668BE0(void *a1)
{
  v2 = sub_22088831C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v18 - v9;
  v11 = a1[8];
  v18[1] = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, v11);
  sub_220599F20();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_220899360;
  *(v12 + 32) = sub_22088681C();
  *(v12 + 40) = v13;
  v14 = *(v3 + 104);
  v14(v10, *MEMORY[0x277D6CA28], v2);
  v14(v6, *MEMORY[0x277D6CA30], v2);
  v15 = sub_2208862EC();

  v16 = *(v3 + 8);
  v16(v6, v2);
  v16(v10, v2);
  return v15;
}

uint64_t sub_220668DB4()
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088676C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v23 - v12;
  v14 = sub_22088581C();
  v15 = sub_22088681C();
  if (*(v14 + 16))
  {
    v23[1] = v0;
    v17 = sub_2204AF97C(v15, v16);
    v19 = v18;

    if (v19)
    {
      v20 = *(v6 + 16);
      v20(v9, *(v14 + 56) + *(v6 + 72) * v17, v5);

      (*(v6 + 32))(v13, v9, v5);
      v20(v4, v13, v5);
      (*(v6 + 56))(v4, 0, 1, v5);
      sub_2204540D4(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v21 = sub_220888ECC();
      (*(v6 + 8))(v13, v5);
      return v21;
    }
  }

  else
  {
  }

  (*(v6 + 56))(v4, 1, 1, v5);
  sub_2204540D4(0, &qword_281298690, sub_22045987C, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_2206690B4()
{
  v1 = sub_220886A4C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v0 + 88), *(v0 + 112));
  sub_220885F0C();
  v6 = sub_220886A1C();
  (*(v2 + 8))(v5, v1);
  v12[0] = sub_22088681C();
  v12[1] = v7;
  v11 = v12;
  v8 = sub_2206A3BCC(sub_2205AB898, v10, v6);

  if (v8)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_220669210()
{
  sub_22054B9F8(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 40));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1((v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t sub_2206692A4(uint64_t a1)
{
  v2 = sub_22088685C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v6 = MEMORY[0x28223BE20](v2, v5);
  (*(v3 + 16))(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v6);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_2208855EC();
  sub_220888FAC();

  v9 = sub_220888D9C();
  sub_22047C320(0);
  v10 = sub_220888E3C();

  return v10;
}

uint64_t sub_220669474(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v20 = a1;
  v21 = v4;
  v5 = sub_22088685C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v10 = *(v6 + 16);
  v18 = v2[26];
  v19 = v10;
  (v10)(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5, v9);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  v13 = *(v6 + 32);
  v13(v12 + v11, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  sub_22088582C();
  sub_220888FAC();

  v19(&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v5);
  v14 = swift_allocObject();
  v13(v14 + v11, &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v15 = sub_220888D9C();
  sub_22045987C(0);
  v16 = sub_220888E3C();

  return v16;
}

double sub_2206696A4(void *a1, uint64_t a2, uint64_t a3)
{
  sub_22066B130(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22088685C();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v13);
  v36 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_220886A4C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15, v18);
  v19 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088574C();
  if (sub_2208857AC())
  {
  }

  else
  {
    v35 = v8;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_2208863EC();
    v21 = MEMORY[0x223D7EB90](a3, &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 8))(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
    if (v21)
    {
      v34 = v16;
      sub_22088867C();
      v22 = v37;
      v23 = v38;
      if ((*(v37 + 48))(v12, 2, v38))
      {

        sub_2204A2770(v12, type metadata accessor for StockListSelectionModel);
        return result;
      }

      v25 = v36;
      (*(v22 + 32))(v36, v12, v23);
      if (sub_2206FA138(v25, v20))
      {
        v26 = sub_22089180C();
        (*(*(v26 - 8) + 56))(v35, 1, 1, v26);
        v27 = v22;
        v28 = swift_allocObject();
        swift_weakInit();
        v29 = v34;
        (*(v34 + 16))(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v15);
        v30 = (*(v29 + 80) + 48) & ~*(v29 + 80);
        v31 = v23;
        v32 = swift_allocObject();
        *(v32 + 2) = 0;
        *(v32 + 3) = 0;
        *(v32 + 4) = v28;
        *(v32 + 5) = v20;
        (*(v29 + 32))(&v32[v30], v19, v15);
        v33 = v35;
        sub_22066A628(0, 0, v35, &unk_2208A68B0, v32);

        sub_2204A2770(v33, sub_22066B130);
        (*(v27 + 8))(v36, v31);
        return result;
      }

      (*(v22 + 8))(v25, v23);
    }
  }

  return result;
}

uint64_t sub_220669B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = sub_220885DFC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v8 = sub_22088582C();
  v6[11] = v8;
  v6[12] = *(v8 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220669C2C, 0, 0);
}

uint64_t sub_220669C2C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + 40), *(Strong + 64));
    v0[15] = sub_22088632C();
    v2 = swift_task_alloc();
    v0[16] = v2;
    *v2 = v0;
    v2[1] = sub_220669D74;
    v3 = v0[13];

    return MEMORY[0x2821D23D8](v3);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_220669D74()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_22066A0C0;
  }

  else
  {

    v2 = sub_220669E90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_220669E90()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  __swift_project_boxed_opaque_existential_1((v0[14] + 128), *(v0[14] + 152));
  sub_220886A3C();
  v0[18] = sub_22088646C();
  (*(v2 + 8))(v1, v3);
  sub_2208917EC();
  v0[19] = sub_2208917DC();
  v5 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_220669FA8, v5, v4);
}

uint64_t sub_220669FA8()
{
  v1 = *(v0 + 144);

  sub_22066A14C(v1);

  return MEMORY[0x2822009F8](sub_22066A024, 0, 0);
}

uint64_t sub_22066A024()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22066A0C0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22066A14C(uint64_t a1)
{
  sub_22056DCB8(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22088685C();
  v7 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v8);
  v41 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StockFeedViewerPage(0);
  v10 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v11);
  v13 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22066B268(0);
  v15 = v14;
  v36 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v38 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  if (v18)
  {
    v32[1] = v1;
    v33 = v15;
    v34 = v6;
    v42 = MEMORY[0x277D84F90];
    sub_22070BE04(0, v18, 0);
    v19 = v42;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v22 = a1 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v39 = *(v20 + 56);
    v40 = v21;
    v23 = v37;
    do
    {
      v24 = v41;
      v40(v41, v22, v23);
      (*(v20 + 16))(v13, v24, v23);
      v42 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22070BE04((v25 > 1), v26 + 1, 1);
        v23 = v37;
        v19 = v42;
      }

      *(v19 + 16) = v26 + 1;
      sub_22066B800(v13, v19 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v26, type metadata accessor for StockFeedViewerPage);
      v22 += v39;
      --v18;
    }

    while (v18);
    v15 = v33;
  }

  sub_22088C05C();
  v27 = v38;
  sub_22088867C();

  sub_22066B868(&qword_27CF58458, sub_22066B268, MEMORY[0x277D6D458]);
  v28 = sub_2208915FC();
  v29 = sub_22063B3EC(v19, v28);

  if (v29)
  {
  }

  else
  {
    sub_22088C05C();
    v30 = sub_22066B868(&qword_28128F9C8, type metadata accessor for StockFeedViewerPage, &unk_2208B99B4);
    v31 = sub_22066B868(&qword_28128F9E0, type metadata accessor for StockFeedViewerPage, &unk_2208B9A1C);
    MEMORY[0x223D80A20](v19, v35, v30, v31);
    sub_22066B868(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage, &unk_2208B9A74);
    sub_22088AE0C();
    sub_22066B868(&qword_27CF58460, sub_22066B268, MEMORY[0x277D6D450]);
    sub_2208886AC();

    (*(v36 + 8))(v27, v15);
  }
}

uint64_t sub_22066A628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22066B130(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22066B798(a3, v11, sub_22066B130);
  v12 = sub_22089180C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2204A2770(v11, sub_22066B130);
  }

  else
  {
    sub_2208917FC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2208917CC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22089140C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_22066A898(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for StockFeedPage(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedViewerPage(0);
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v68 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v67 = &v56 - v13;
  v62 = sub_22088685C();
  v70 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v14);
  v61 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22066B268(0);
  v66 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v63 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_220886A4C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_220885DFC();
  v64 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v65 = &v56 - v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_22066B2FC(a2, Strong);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1(v2 + 11, *(v2 + 14));
  sub_2208863EC();
  v32 = v65;
  sub_220886A3C();
  (*(v20 + 8))(v23, v19);
  v33 = v64;
  (*(v64 + 16))(v27, v32, v24);
  v34 = (*(v33 + 88))(v27, v24);
  if (v34 == *MEMORY[0x277D694A8] || v34 == *MEMORY[0x277D694B8] || v34 == *MEMORY[0x277D694F0])
  {
    v39 = *(v33 + 8);
    v37 = v33 + 8;
    v38 = v39;
    v59 = v24;
    v39(v27, v24);
    sub_22088C05C();
    sub_22088867C();

    sub_22066B868(&qword_27CF58458, sub_22066B268, MEMORY[0x277D6D458]);
    v40 = sub_2208915FC();
    v41 = *(v40 + 16);
    if (v41)
    {
      v57 = v38;
      v58 = a2;
      v63 = v2;
      v64 = v37;
      v71 = MEMORY[0x277D84F90];
      sub_22048DBA8(0, v41, 0);
      v42 = v61;
      v43 = *(v60 + 80);
      v56 = v40;
      v44 = v40 + ((v43 + 32) & ~v43);
      v66 = *(v60 + 72);
      v45 = v71;
      v46 = (v70 + 32);
      v47 = v62;
      do
      {
        v48 = v67;
        sub_22066B798(v44, v67, type metadata accessor for StockFeedViewerPage);
        v49 = v68;
        sub_22066B798(v48, v68, type metadata accessor for StockFeedViewerPage);
        v50 = v69;
        sub_22066B800(v49, v69, type metadata accessor for StockFeedPage);
        v51 = *v46;
        (*v46)(v42, v50, v47);
        sub_2204A2770(v48, type metadata accessor for StockFeedViewerPage);
        v71 = v45;
        v53 = *(v45 + 16);
        v52 = *(v45 + 24);
        if (v53 >= v52 >> 1)
        {
          sub_22048DBA8((v52 > 1), v53 + 1, 1);
          v47 = v62;
          v45 = v71;
        }

        *(v45 + 16) = v53 + 1;
        v51((v45 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v53), v42, v47);
        v44 += v66;
        --v41;
      }

      while (v41);

      v3 = v63;
      v38 = v57;
    }

    else
    {
    }

    __swift_project_boxed_opaque_existential_1(v3 + 16, *(v3 + 19));
    v54 = v65;
    v55 = sub_22088646C();

    sub_22066A14C(v55);

    return v38(v54, v59);
  }

  else if (v34 == *MEMORY[0x277D694E8] || v34 == *MEMORY[0x277D694C0])
  {
    v35 = *(v33 + 8);
    v35(v65, v24);
    return (v35)(v27, v24);
  }

  else if (v34 == *MEMORY[0x277D694E0])
  {
    return (*(v33 + 8))(v65, v24);
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_22066B164(uint64_t a1)
{
  v4 = *(sub_220886A4C() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2204C6018;

  return sub_220669B0C(a1, v6, v7, v8, v9, v1 + v5);
}

void sub_22066B268(uint64_t a1)
{
  if (!qword_281297F20)
  {
    type metadata accessor for StockFeedViewerPage(255);
    sub_22066B868(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage, &unk_2208B9A74);
    v1 = sub_22088AE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_281297F20);
    }
  }
}

uint64_t sub_22066B2FC(uint64_t a1, uint64_t *a2)
{
  v48 = a1;
  v46 = *a2;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockListToolbarModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088676C();
  v47 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088685C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088867C();
  result = (*(v15 + 48))(v22, 2, v14);
  if (!result)
  {
    v44 = v9;
    v45 = v13;
    v24 = v47;
    (*(v15 + 32))(v18, v22, v14);
    v25 = sub_22088581C();
    v26 = sub_22088681C();
    if (*(v25 + 16))
    {
      v48 = v10;
      v28 = sub_2204AF97C(v26, v27);
      v30 = v29;

      if (v30)
      {
        v43 = v18;
        v31 = v24;
        v32 = *(v25 + 56) + *(v24 + 72) * v28;
        v33 = *(v24 + 16);
        v34 = v45;
        v35 = v48;
        v33(v45, v32, v48);
        v36 = v31;

        v33(v5, v34, v35);
        v37 = v35;
        (*(v36 + 56))(v5, 0, 1, v35);
        if (qword_281298D08 != -1)
        {
          swift_once();
        }

        sub_22066B868(&qword_281289548, type metadata accessor for StockFeedViewerInteractor, &unk_2208A998C);
        sub_220886B3C();
        v38 = v44;
        sub_22084DA0C(v5, v49, v44);
        Strong = swift_unknownObjectWeakLoadStrong();
        v40 = v45;
        v18 = v43;
        if (Strong)
        {
          v41 = swift_unknownObjectWeakLoadStrong();
          if (v41)
          {
            sub_2206AB5B0(v38, v41);
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        sub_2204A2770(v38, type metadata accessor for StockListToolbarModel);
        (*(v36 + 8))(v40, v37);
        return (*(v15 + 8))(v18, v14);
      }
    }

    else
    {
    }

    return (*(v15 + 8))(v18, v14);
  }

  return result;
}

uint64_t sub_22066B798(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22066B800(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22066B868(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22066B8B0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 48) = 0;
  *(a3 + 56) = xmmword_2208A68C0;
  v4 = objc_opt_self();
  *(a3 + 72) = [v4 blackColor];
  *(a3 + 80) = [v4 whiteColor];
  *(a3 + 88) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.490196078 green:0.498039216 blue:0.498039216 alpha:1.0];
  *(a3 + 96) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.8 green:0.8 blue:0.8 alpha:1.0];
  *(a3 + 104) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.960784314 blue:0.905882353 alpha:1.0];
  *(a3 + 112) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.490196078 blue:0.105882353 alpha:1.0];
  *(a3 + 120) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.203921569 green:0.780392157 blue:0.349019608 alpha:1.0];
  *(a3 + 128) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.247058824 green:0.941176471 blue:0.419607843 alpha:1.0];
  *(a3 + 136) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.870588235 green:0.0274509804 blue:0.109803922 alpha:1.0];
  *(a3 + 144) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:1.0 green:0.231372549 blue:0.188235294 alpha:1.0];
  *(a3 + 152) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.231372549 green:0.588235294 blue:0.97254902 alpha:1.0];
  *(a3 + 160) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.501960784 green:0.501960784 blue:0.501960784 alpha:1.0];
  *(a3 + 168) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.329411765 green:0.329411765 blue:0.329411765 alpha:1.0];
  *(a3 + 176) = [v4 secondaryLabelColor];
  *(a3 + 184) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:0.12];
  *(a3 + 192) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.298039216 green:0.850980392 blue:0.392156863 alpha:1.0];
  *(a3 + 200) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.352941176 green:0.784313725 blue:0.980392157 alpha:1.0];
  *(a3 + 208) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.0 green:0.592156863 blue:1.0 alpha:1.0];
  *(a3 + 216) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.552941176 green:0.294117647 blue:1.0 alpha:1.0];
  *(a3 + 224) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.407843137 green:0.0 blue:1.0 alpha:1.0];
  *(a3 + 232) = 1;
  *(a3 + 240) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.670588235 alpha:1.0];
  v5 = [v4 blackColor];
  v6 = [v5 colorWithAlphaComponent_];

  *(a3 + 248) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 colorWithAlphaComponent_];

  *(a3 + 256) = v8;
  v9 = [v4 blackColor];
  v10 = [v9 colorWithAlphaComponent_];

  *(a3 + 264) = v10;
  v11 = [v4 grayColor];
  v12 = [v11 colorWithAlphaComponent_];

  *(a3 + 272) = v12;
  *(a3 + 280) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.365 green:0.365 blue:0.365 alpha:1.0];
  *(a3 + 288) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 296) = [v4 whiteColor];
  sub_2204D631C();
  *(a3 + 304) = sub_22089202C();
  *(a3 + 312) = [v4 secondaryLabelColor];
  v13 = [v4 whiteColor];
  v14 = [v4 secondarySystemBackgroundColor];
  v15 = [v4 ts:v13 dynamicColor:v14 withDarkStyleVariant:?];

  *(a3 + 320) = v15;
  *(a3 + 328) = [v4 secondaryLabelColor];
  *(a3 + 336) = [v4 labelColor];
  *(a3 + 344) = [v4 systemBackgroundColor];
  *(a3 + 352) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.933333333 green:0.933333333 blue:0.937254902 alpha:1.0];
  *(a3 + 360) = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  *(a3 + 368) = [v4 separatorColor];
  *(a3 + 376) = [v4 secondaryLabelColor];
  *(a3 + 384) = [v4 labelColor];
  result = sub_220458198(a1, a3);
  *(a3 + 40) = a2;
  return result;
}

uint64_t sub_22066BFB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 392))
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

uint64_t sub_22066C000(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 376) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 392) = 1;
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

    *(result + 392) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_22066C0B4(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (v2)
  {
    v3 = [v2 horizontalSizeClass];
    if (v3 >= 2)
    {
      if (v3 != 2)
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }

      goto LABEL_9;
    }
  }

  if ((sub_22088F0DC() & 1) == 0)
  {
LABEL_9:
    sub_2204D631C();
    return sub_22089202C();
  }

  v4 = [objc_opt_self() clearColor];

  return v4;
}

uint64_t sub_22066C198@<X0>(_BYTE *a2@<X8>)
{
  result = sub_22088F0DC();
  *a2 = 1;
  return result;
}

id sub_22066C204(uint64_t a1)
{
  if (sub_22088F0DC())
  {
    v1 = [objc_opt_self() clearColor];

    return v1;
  }

  else
  {
    sub_2204D631C();
    return sub_22089202C();
  }
}

id sub_22066C270(uint64_t a1)
{
  sub_22088F0DC();
  v1 = sub_22088F0DC();
  v2 = objc_opt_self();
  v3 = &selRef_tertiarySystemFillColor;
  if ((v1 & 1) == 0)
  {
    v3 = &selRef_systemWhiteColor;
  }

  v4 = [v2 *v3];

  return v4;
}

id sub_22066C2D8(uint64_t a1)
{
  sub_22088F0DC();
  v2 = *(v1 + 96);

  return v2;
}

id sub_22066C314()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = 128;
  }

  else
  {
    v2 = UIAccessibilityDarkerSystemColorsEnabled();
    v1 = 120;
    if (v2)
    {
      v1 = 112;
    }
  }

  v3 = *(v0 + v1);

  return v3;
}

id sub_22066C388()
{
  if (UIAccessibilityDarkerSystemColorsEnabled())
  {
    v1 = UIAccessibilityDarkerSystemColorsEnabled();
    v2 = 120;
    if (v1)
    {
      v2 = 112;
    }
  }

  else
  {
    v2 = 192;
  }

  v3 = *(v0 + v2);

  return v3;
}

id sub_22066C420(uint64_t a1, uint64_t a2, SEL *a3, SEL *a4)
{
  v6 = sub_22088F0DC();
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a3;
  }

  else
  {
    v8 = a4;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t sub_22066C52C()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_22066C5A0(void *a1)
{
  sub_22047C320(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - v8;
  v10 = sub_220884E9C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v31 - v17;
  swift_getObjectType();
  v19 = [a1 routeURL];
  if (v19)
  {
    v20 = v19;
    sub_220884E4C();

    v21 = *(v11 + 32);
    v21(v5, v14, v10);
    v22 = *(v11 + 56);
    v22(v5, 0, 1, v10);
    v21(v9, v5, v10);
    v22(v9, 0, 1, v10);
    v23 = (*(v11 + 48))(v9, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v5, 1, 1, v10);
    sub_220891DCC();
    v24 = *(v11 + 48);
    if (v24(v5, 1, v10) != 1)
    {
      sub_22066CD54(v5, sub_22047C320);
    }

    v23 = v24(v9, 1, v10);
  }

  if (v23 == 1)
  {
    return sub_22066CD54(v9, sub_22047C320);
  }

  (*(v11 + 32))(v18, v9, v10);
  v26 = objc_opt_self();
  v27 = [v26 generalPasteboard];
  v28 = sub_220884E3C();
  [v27 setURL_];

  v29 = [v26 generalPasteboard];
  sub_220884E0C();
  v30 = sub_22089132C();

  [v29 setString_];

  return (*(v11 + 8))(v18, v10);
}

uint64_t sub_22066C92C(void *a1)
{
  result = [a1 sourceChannel];
  if (result)
  {
    v4 = result;
    v5 = *(v1 + 24);
    v6 = [v5 purchaseProvider];
    if ([swift_unknownObjectRetain() tagType] == 3)
    {
      v7 = [v4 asSection];
      if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    else
    {
      v8 = [v4 identifier];
    }

    v9 = sub_22089136C();
    v11 = v10;

    v12 = [v6 purchasedTagIDs];
    v13 = sub_2208918EC();

    LOBYTE(v9) = sub_22056F244(v9, v11, v13);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    if (v9)
    {
      goto LABEL_31;
    }

LABEL_8:
    v14 = [objc_msgSend(v5 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v14, v14 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27 = v25;
    v28 = v26;
    if (*(&v26 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v15 = v24;
        v16 = [v24 integerValue];
        if (v16 == -1)
        {

          goto LABEL_28;
        }

        v17 = v16;
LABEL_17:
        if (objc_getAssociatedObject(v14, ~v17))
        {
          sub_2208923BC();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_2204DD8BC();
          if (swift_dynamicCast())
          {
            v18 = v24;
            v19 = [v18 integerValue];

            if (((v19 ^ v17) & 1) == 0)
            {
LABEL_32:
              v23 = [a1 isPaid];
              swift_unknownObjectRelease();
              return v23 ^ 1;
            }

            goto LABEL_28;
          }
        }

        else
        {
          sub_22066CD54(&v27, sub_22055F87C);
        }

        if ((v17 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_28:
        v20 = [objc_msgSend(v5 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v21 = [v4 identifier];
        if (!v21)
        {
          sub_22089136C();
          v21 = sub_22089132C();
        }

        v22 = [v20 containsTagID_];

        if ((v22 & 1) == 0)
        {
          goto LABEL_32;
        }

LABEL_31:
        swift_unknownObjectRelease();
        return 1;
      }
    }

    else
    {
      sub_22066CD54(&v27, sub_22055F87C);
    }

    v15 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_22066CD54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22066CDB4()
{
  sub_22054B9F8(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1((v0 + 88));

  return swift_deallocClassInstance();
}

double sub_22066CE28(char a1, uint64_t a2)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_22066CEE0();
    sub_22088E0CC();
    swift_allocObject();
    sub_22088E07C();
    sub_22088E08C();
    swift_unknownObjectRelease();
  }

  return result;
}

unint64_t sub_22066CEE0()
{
  result = qword_27CF58468;
  if (!qword_27CF58468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58468);
  }

  return result;
}

void *sub_22066CF34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v6 = v5;
  v168 = a5;
  v166 = a3;
  sub_220454138(0, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v162 = &v140 - v12;
  v13 = type metadata accessor for StockSparklineViewModel(0);
  v160 = *(v13 - 8);
  v161 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v141 = &v140 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088DA1C();
  v164 = *(v16 - 8);
  v165 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v163 = &v140 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088699C();
  v170 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C20C();
  v24 = v23;
  v26 = v25;
  v27 = sub_22088C28C();
  v28 = [v27 horizontalSizeClass];

  if (v28 == 2)
  {
    v29 = 16.0;
  }

  else
  {
    v29 = v24;
  }

  if (v28 == 2)
  {
    v30 = 12.0;
  }

  else
  {
    v30 = v26;
  }

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v31 = sub_22088684C();
  v33 = sub_2204C3EAC(v31, v32);

  sub_22088C21C();
  if (v34 > 320.0)
  {
    v35 = 68.0;
  }

  else
  {
    v35 = 44.0;
  }

  v36 = a4 - v35;
  v156 = COERCE_DOUBLE(type metadata accessor for StockViewLayoutOptions(0));
  v37 = *(a2 + *(*&v156 + 28));
  sub_220891A6C();
  v39 = v36 - v37 - v38;
  v40 = v168;
  [v33 boundingRectWithSize:1 options:0 context:{v39, v168}];
  v173 = v42;
  v174 = v41;

  v43 = sub_22066DB24(a1);
  v45 = v44;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v46 = sub_2204C4604(v43, v45, 0);

  sub_22088C21C();
  if (v47 > 320.0)
  {
    v48 = 68.0;
  }

  else
  {
    v48 = 44.0;
  }

  v49 = a4 - v48 - v37;
  sub_220891A6C();
  [v46 boundingRectWithSize:1 options:0 context:{v49 - v50, v40}];
  v171 = v52;
  v172 = v51;
  sub_220891A6C();
  sub_220891EEC();
  v158 = v46;
  [v46 boundingRectWithSize:1 options:0 context:?];
  x = v54;
  v152 = v53;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v55 = sub_22088683C();
  v57 = sub_2204C43E4(v55, v56, 0);

  v159 = v30;
  sub_220891A6C();
  sub_220891EEC();
  v157 = v57;
  v60 = sub_2204C0AC0(v57, 1, v58, v59);
  v154 = v61;
  v155 = v60;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v153 = type metadata accessor for StockViewModel(0);
  v62 = a1 + *(v153 + 28);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220886B9C();

  if (*(v62 + 8))
  {
    goto LABEL_29;
  }

  v63 = *v62;
  if ((v176[0] & 1) == 0)
  {
    goto LABEL_24;
  }

  v64 = type metadata accessor for PriceViewModel(0);
  v65 = v170;
  (*(*&v170 + 16))(v22, v62 + *(v64 + 40), v19);
  v66 = (*(*&v65 + 88))(v22, v19);
  v67 = 2;
  if (v66 != *MEMORY[0x277D69898] && v66 != *MEMORY[0x277D698A0] && v66 != *MEMORY[0x277D69870] && v66 != *MEMORY[0x277D69888] && v66 != *MEMORY[0x277D69878] && v66 != *MEMORY[0x277D69890])
  {
    if (v66 == *MEMORY[0x277D69880])
    {
LABEL_24:
      v67 = 0;
      goto LABEL_25;
    }

    if (v66 != *MEMORY[0x277D69868])
    {
      (*(*&v65 + 8))(v22, v19);
    }

    v67 = 2;
  }

LABEL_25:
  if (qword_281294078 != -1)
  {
    v139 = v67;
    swift_once();
    v67 = v139;
  }

  v68 = sub_2204BD7B8(*(v62 + 48), *(v62 + 56), 5, 1, v67, v63);
  if (v69)
  {
    v70 = v68;
    v71 = v69;
    goto LABEL_30;
  }

LABEL_29:
  v70 = *(v62 + 64);
  v71 = *(v62 + 72);

LABEL_30:
  v72 = sub_2204C0128(v70, v71);

  [v72 boundingRectWithSize:1 options:0 context:{a4, v40}];
  v169 = v74;
  v170 = v73;

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  if (*(v62 + 24))
  {
    v75 = 2;
  }

  else
  {
    v75 = *(v62 + 16) < 0.0;
  }

  v76 = sub_2204C080C(0x4D30302E303030, 0xE700000000000000, v75);
  v146 = sub_2204C0AC0(v76, 1, a4, v40);
  v147 = v77;
  sub_22088C21C();
  v79 = v78 > 320.0;
  v80 = 68.0;
  if (!v79)
  {
    v80 = 44.0;
  }

  v168 = v80;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v81 = sub_22088A9DC();
  [v81 ascender];
  v83 = v82;

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v84 = sub_22088A9DC();
  [v84 capHeight];
  v86 = v85;

  v87 = v173;
  v88 = v173 - (v83 - v86);
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v89 = sub_22088A9DC();
  [v89 lineHeight];
  v91 = v90;

  v92 = v88 + v91;
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v93 = sub_22088A9DC();
  [v93 descender];
  v95 = v94;

  v167 = v92 - fabs(v95);
  v177.origin.y = 11.0;
  v177.origin.x = v29;
  v96 = v174;
  v177.size.width = v174;
  v177.size.height = v87;
  MaxY = CGRectGetMaxY(v177);
  v98 = v171;
  v99 = v172;
  sub_220891E6C();
  y = v178.origin.y;
  x = v178.origin.x;
  height = v178.size.height;
  width = v178.size.width;
  v145 = CGRectGetMaxY(v178);
  v179.origin.y = 11.0;
  v179.origin.x = v29;
  v179.size.width = v96;
  v179.size.height = v87;
  MinY = CGRectGetMinY(v179);
  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v100 = sub_22088A9DC();
  [v100 ascender];
  v143 = v101;

  __swift_project_boxed_opaque_existential_1(v6 + 2, v6[5]);
  v102 = sub_22088A9DC();
  [v102 capHeight];
  v142 = v103;

  v180.origin.x = v29;
  v152 = MaxY;
  v180.origin.y = MaxY;
  v180.size.width = v99;
  v180.size.height = v98;
  v181.origin.y = CGRectGetMaxY(v180) + 11.0;
  v104 = (a2 + *(*&v156 + 32));
  v105 = v146 + v104[1] + v104[3];
  v106 = v147 + *v104 + v104[2];
  v181.origin.x = v29;
  v156 = v181.origin.y;
  v181.size.height = v169;
  v181.size.width = v170;
  v107 = CGRectGetMaxY(v181) + 11.0;
  v108 = v163;
  sub_22088C1DC();
  sub_22088D9EC();
  v110 = v109;
  sub_22088D9EC();
  v112 = a4 - (v110 + v111);
  v182.origin.x = v29;
  v182.origin.y = v107;
  v147 = v105;
  v182.size.width = v105;
  v182.size.height = v106;
  v183.size.height = CGRectGetMaxY(v182) + 11.0;
  v183.origin.x = 0.0;
  v183.origin.y = 0.0;
  v183.size.width = v112;
  v184 = CGRectIntegral(v183);
  v113 = v184.origin.x;
  v114 = v184.origin.y;
  v115 = v184.size.width;
  v116 = v184.size.height;
  v117 = v162;
  sub_2204B28E8(a1 + *(v153 + 24), v162, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
  if ((*(v160 + 48))(v117, 1, v161) == 1)
  {
    v118 = sub_2204B3B04(v117, qword_28128AAE8, type metadata accessor for StockSparklineViewModel);
    v120 = 1;
  }

  else
  {
    v121 = v141;
    sub_2204C31E8(v117, v141);
    sub_22088C1FC();
    v122 = __swift_project_boxed_opaque_existential_1(v6 + 7, v6[10]);
    v120 = sub_2204C324C(v121, *v122, v168, v167);
    v118 = sub_2204BEEE8(v121, type metadata accessor for StockSparklineViewModel);
  }

  v123 = MEMORY[0x28223BE20](v118, v119).n128_u64[0];
  v124 = (&v140 - 38);
  v124[2] = v113;
  v124[3] = v114;
  v124[4] = v115;
  v124[5] = v116;
  v125 = v145;
  *(&v140 - 32) = v29;
  *(&v140 - 31) = v125;
  v126 = v154;
  *(&v140 - 30) = v155;
  *(&v140 - 29) = v126;
  *(&v140 - 28) = a2;
  *(&v140 - 27) = v29;
  *(&v140 - 26) = 0x4026000000000000;
  v127 = v173;
  *(&v140 - 25) = v174;
  *(&v140 - 24) = v127;
  v128 = v158;
  *(&v140 - 23) = v158;
  v129 = v152;
  *(&v140 - 22) = v29;
  *(&v140 - 21) = v129;
  v130 = v171;
  *(&v140 - 20) = v172;
  *(&v140 - 19) = v130;
  v131 = y;
  *(&v140 - 18) = x;
  *(&v140 - 17) = v131;
  v132 = height;
  *(&v140 - 16) = width;
  *(&v140 - 15) = v132;
  v133 = v156;
  *(&v140 - 14) = v29;
  *(&v140 - 13) = v133;
  v134 = v169;
  *(&v140 - 12) = v170;
  *(&v140 - 11) = v134;
  *(&v140 - 10) = v29;
  *(&v140 - 9) = v107;
  *(&v140 - 8) = v147;
  *(&v140 - 7) = v106;
  *(&v140 - 6) = v123;
  *(&v140 - 5) = v135;
  v136 = v167;
  *(&v140 - 4) = v137;
  *(&v140 - 3) = v136;
  *(&v140 - 2) = v120;
  sub_22088C19C();

  sub_2204C4FA0(v120);
  (*(v164 + 8))(v108, v165);
  memcpy(v176, v175, sizeof(v176));
  return memcpy(v166, v176, 0x150uLL);
}

uint64_t sub_22066DB24(uint64_t a1)
{
  v2 = MEMORY[0x277D697F8];
  sub_220454138(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v15 - v5;
  v7 = type metadata accessor for StockViewModel(0);
  sub_2204B28E8(a1 + *(v7 + 20), v6, &qword_2812990C0, v2);
  v8 = sub_22088676C();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_2204B3B04(v6, &qword_2812990C0, MEMORY[0x277D697F8]);
  }

  else
  {
    v10 = sub_22088668C();
    v12 = v11;
    (*(v9 + 8))(v6, v8);
    if (v12)
    {
      sub_220886BCC();
      sub_220886BAC();
      if (qword_281298FC0 != -1)
      {
        swift_once();
      }

      sub_220886B9C();

      if (LOBYTE(v15[0]) == 1)
      {
        v15[0] = sub_2208867BC();
        v15[1] = v13;

        MEMORY[0x223D89680](548913696, 0xA400000000000000);

        MEMORY[0x223D89680](v10, v12);

        return v15[0];
      }
    }
  }

  return sub_2208867BC();
}

id sub_22066DD6C@<X0>(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, CGFloat a9@<D4>, CGFloat a10@<D5>, CGFloat a11@<D6>, CGFloat a12@<D7>, double a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21, double a22, double a23, double a24, double a25, double a26, double a27, double a28, uint64_t a29, uint64_t a30, double a31, double a32, double a33, double a34, double a35, double a36)
{
  v125 = a2;
  v126 = a3;
  v123 = a7;
  v124 = a8;
  v121 = a5;
  v122 = a6;
  v120 = a33;
  v119 = a34;
  v118 = a35;
  v117 = a36;
  *&v115 = a29;
  *&v114 = a30;
  v113 = a31;
  v112 = a32;
  v103 = a25;
  v102 = a26;
  v101 = a27;
  v100 = a28;
  v99 = a21;
  v98 = a22;
  v97 = a23;
  v96 = a24;
  v107 = a17;
  v106 = a18;
  v105 = a19;
  v104 = a20;
  v42 = sub_22088ABEC();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v44);
  v46 = &v92 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131.origin.x = a9;
  v131.origin.y = a10;
  v131.size.width = a11;
  v131.size.height = a12;
  v116 = CGRectGetMaxY(v131) + 11.0;
  v47 = *MEMORY[0x277D6D320];
  v48 = *(v43 + 104);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v111 = v49;
  v110 = v50;
  v109 = v51;
  v108 = v52;
  v53 = *(v43 + 8);
  v53(v46, v42);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v107 = v54;
  v106 = v55;
  v105 = v56;
  v104 = v57;
  v53(v46, v42);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v99 = v58;
  v98 = v59;
  v97 = v60;
  v96 = v61;
  v53(v46, v42);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v95 = v62;
  v94 = v63;
  v93 = v64;
  v92 = v65;
  v53(v46, v42);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v103 = v66;
  v102 = v67;
  v101 = v68;
  v100 = v69;
  v53(v46, v42);
  v48(v46, v47, v42);
  sub_22088ABDC();
  v71 = v70;
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v53(v46, v42);
  v78 = (a1 + *(type metadata accessor for StockViewLayoutOptions(0) + 32));
  v115 = v78[1];
  v114 = *v78;
  v48(v46, v47, v42);
  sub_22088ABDC();
  v80 = v79;
  v82 = v81;
  v84 = v83;
  v86 = v85;
  v53(v46, v42);
  v87 = sub_22088C28C();
  *a4 = v121;
  *(a4 + 8) = v122;
  *(a4 + 16) = v123;
  *(a4 + 24) = v124;
  v130 = 0;
  v128 = 0;
  *(a4 + 32) = v116;
  *(a4 + 40) = 0;
  *(a4 + 41) = *v129;
  *(a4 + 44) = *&v129[3];
  *(a4 + 48) = v111;
  *(a4 + 56) = v110;
  *(a4 + 64) = v109;
  *(a4 + 72) = v108;
  v88 = v125;
  *(a4 + 80) = v125;
  *(a4 + 88) = v107;
  *(a4 + 96) = v106;
  *(a4 + 104) = v105;
  *(a4 + 112) = v104;
  *(a4 + 120) = v99;
  *(a4 + 128) = v98;
  *(a4 + 136) = v97;
  *(a4 + 144) = v96;
  *(a4 + 152) = v95;
  *(a4 + 160) = v94;
  *(a4 + 168) = v93;
  *(a4 + 176) = v92;
  *(a4 + 184) = v103;
  *(a4 + 192) = v102;
  *(a4 + 200) = v101;
  *(a4 + 208) = v100;
  *(a4 + 216) = v71;
  *(a4 + 224) = v73;
  *(a4 + 232) = v75;
  *(a4 + 240) = v77;
  *(a4 + 248) = v114;
  *(a4 + 264) = v115;
  *(a4 + 280) = v80;
  *(a4 + 288) = v82;
  *(a4 + 296) = v84;
  *(a4 + 304) = v86;
  *(a4 + 312) = v128;
  *(a4 + 313) = *v127;
  *(a4 + 316) = *&v127[3];
  v89 = v126;
  *(a4 + 320) = v126;
  *(a4 + 328) = v87;
  v90 = v88;
  return sub_2204C4F90(v89);
}

void sub_22066E624()
{
  sub_220514CD8(&qword_281294CB0, &unk_2208A6D4C);

  JUMPOUT(0x223D86790);
}

uint64_t type metadata accessor for HiddenCardViewController(uint64_t a1)
{
  result = qword_27CF58478;
  if (!qword_27CF58478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22066E89C(uint64_t a1, uint64_t a2)
{
  result = sub_22088B9BC();
  if (v3 <= 0x3F)
  {
    result = sub_22088B42C();
    if (v4 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22066E968@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6E238];
  v3 = sub_22088CC6C();
  (*(*(v3 - 8) + 104))(a1, v2, v3);
  v4 = *MEMORY[0x277D6E218];
  v5 = sub_22088CC2C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t sub_22066EA24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5920](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22066EA8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return MEMORY[0x2821D5940](a1, a2, a3, ObjectType, a5);
}

uint64_t sub_22066EB34@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v5 = *v3;
  v6 = *a1;
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v5 + v6, v7);
}

uint64_t ThemingStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

unint64_t sub_22066EC40()
{
  result = qword_27CF58488;
  if (!qword_27CF58488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58488);
  }

  return result;
}

void sub_22066F220(uint64_t a1, uint64_t a2, char *a3)
{
  sub_22057E51C(0);
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v60 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WatchlistCellViewModel(0);
  v59 = *(v10 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v56 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v3;
  swift_beginAccess();
  sub_22046DA2C(v3 + 16, v65);
  v53[1] = __swift_project_boxed_opaque_existential_1(v65, v66);
  v54 = *&a3[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel];
  v13 = v54;
  v55 = a1;
  v14 = *(a1 + 16);
  v63 = *(a1 + 24);
  v15 = v63;
  v64 = v14;
  v16 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing;
  v17 = a3[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing];
  v18 = *(a1 + 32);
  v19 = off_28341D0E8;
  type metadata accessor for WatchlistCellViewStyler();
  v19(v13, v14, v15, v17, v18);
  __swift_destroy_boxed_opaque_existential_1(v65);
  v20 = a3;
  v21 = 8;
  if (a3[v16])
  {
    v21 = 40;
  }

  v22 = 16;
  if (a3[v16])
  {
    v22 = 48;
  }

  v23 = 24;
  if (a3[v16])
  {
    v23 = 56;
  }

  v24 = 32;
  if (a3[v16])
  {
    v24 = 64;
  }

  [v54 setFrame_];
  v25 = v56;
  sub_22066FAA8(v55, v56);
  v26 = (*(v59 + 80) + 24) & ~*(v59 + 80);
  v27 = (v58 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = v57;
  *(v28 + 16) = v57;
  sub_22066FB0C(v25, v28 + v26);
  v30 = v28 + v27;
  v31 = *(a2 + 144);
  *(v30 + 128) = *(a2 + 128);
  *(v30 + 144) = v31;
  *(v30 + 160) = *(a2 + 160);
  v32 = *(a2 + 80);
  *(v30 + 64) = *(a2 + 64);
  *(v30 + 80) = v32;
  v33 = *(a2 + 112);
  *(v30 + 96) = *(a2 + 96);
  *(v30 + 112) = v33;
  v34 = *(a2 + 16);
  *v30 = *a2;
  *(v30 + 16) = v34;
  v35 = *(a2 + 48);
  *(v30 + 32) = *(a2 + 32);
  *(v30 + 48) = v35;
  v36 = &v20[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing];
  v37 = *&v20[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing];
  v38 = *&v20[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing + 8];
  *v36 = sub_22066FB70;
  v36[1] = v28;

  sub_2204DA45C(v37, v38);
  v39 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  [*&v20[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton] setFrame_];
  v40 = *&v20[v39];
  LOBYTE(v65[0]) = 0;
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = swift_allocObject();
  v43 = v20;
  swift_unknownObjectWeakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  *(v44 + 24) = v42;
  sub_22047A590();
  sub_22046599C();
  v45 = v40;
  v46 = v60;
  sub_22088B8EC();
  sub_22088BB6C();

  (*(v61 + 8))(v46, v62);
  sub_22046DA2C(v29 + 16, v65);
  __swift_project_boxed_opaque_existential_1(v65, v66);
  v47 = *&v43[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton];
  v48 = [v43 traitCollection];
  v49 = [v48 preferredContentSizeCategory];

  sub_2206E7FD0(v47, v49);
  __swift_destroy_boxed_opaque_existential_1(v65);
  [v47 setFrame_];
  v50 = *&v43[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView];
  [v50 setFrame_];
  v51 = [objc_opt_self() secondarySystemFillColor];
  [v50 setBackgroundColor_];

  [v47 setHidden_];
  [v50 setHidden_];
  v52 = sub_22089132C();
  [v43 setAccessibilityLabel_];
}

id sub_22066F778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = a2;
  swift_beginAccess();
  sub_22046DA2C(a3 + 16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v10 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel);
  v11 = *(a4 + 16);
  v12 = *(a4 + 24);
  LOBYTE(a4) = *(a4 + 32);
  v13 = off_28341D0E8;
  type metadata accessor for WatchlistCellViewStyler();
  v13(v10, v11, v12, v8, a4);
  __swift_destroy_boxed_opaque_existential_1(v19);
  v14 = 8;
  if (v8)
  {
    v14 = 40;
  }

  v15 = 16;
  if (v8)
  {
    v15 = 48;
  }

  v16 = 24;
  if (v8)
  {
    v16 = 56;
  }

  v17 = 32;
  if (v8)
  {
    v17 = 64;
  }

  return [v10 setFrame_];
}

void sub_22066F8B8(char *a1@<X0>, void *a4@<X8>)
{
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_5;
  }

  v7 = Strong;
  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (!v8)
  {

LABEL_5:
    v12 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    goto LABEL_6;
  }

  v9 = v8;
  v10 = [v8 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  swift_beginAccess();
  __swift_project_boxed_opaque_existential_1((v7 + 16), *(v7 + 40));
  v12 = sub_2206E8340((v5 & 1) == 0, v11);

LABEL_6:
  *a4 = v12;
}

unint64_t sub_22066FA2C(uint64_t a1)
{
  result = sub_22066FA54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22066FA54()
{
  result = qword_27CF58490;
  if (!qword_27CF58490)
  {
    type metadata accessor for WatchlistCellViewRenderer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58490);
  }

  return result;
}

uint64_t sub_22066FAA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCellViewModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22066FB0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WatchlistCellViewModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_22066FB70(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for WatchlistCellViewModel(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_22066F778(a1, a2, v7, v2 + v6, v8);
}

uint64_t sub_22066FC28(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v58 = a1;
  sub_220447A9C(0, &qword_281298480, MEMORY[0x277D686D0]);
  v61 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v63 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v6;
  MEMORY[0x28223BE20](v7, v8);
  v65 = &v50 - v9;
  v57 = sub_220887C9C();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447A9C(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v50 - v15;
  v55 = sub_2208874DC();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v17);
  v19 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v54, v20);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 112), *(v2 + 136));
  sub_2204446D4(0, &unk_281298980, MEMORY[0x277D6CB00]);
  sub_22088849C();
  if (*(&v73 + 1))
  {
    sub_220458198(&v72, &v75);
  }

  else
  {
    sub_22046DA2C(v2 + 112, &v75);
    if (*(&v73 + 1))
    {
      sub_2205A0B34(&v72, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    }
  }

  __swift_project_boxed_opaque_existential_1(&v75, v76);
  sub_2204549FC(0);
  v60 = v23;
  result = sub_2208884CC();
  v64 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_17;
  }

  v52 = v3;
  __swift_project_boxed_opaque_existential_1(&v75, v76);
  v51 = sub_22088731C();
  result = sub_2208884CC();
  v66 = result;
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  sub_2204481D8(0);
  v26 = *(v25 + 48);
  v27 = &v22[*(v25 + 64)];
  v28 = sub_220884E9C();
  v29 = v22;
  v30 = *(*(v28 - 8) + 56);
  v30(v16, 1, 1, v28);

  sub_2208874CC();
  v30(v16, 1, 1, v28);
  v31 = v29;
  v32 = v56;
  v33 = v57;
  (*(v56 + 104))(v12, *MEMORY[0x277D2FF08], v57);
  sub_22088764C();
  (*(v32 + 8))(v12, v33);
  sub_2206708A4(v16, &qword_2812994E0, MEMORY[0x277CC9260]);
  (*(v53 + 8))(v19, v55);
  *(v27 + 4) = 0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  *(v31 + v26) = 0;
  type metadata accessor for StocksActivity.Article(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v34 = sub_22088969C();
  v35 = v65;
  (*(*(v34 - 8) + 56))(v65, 1, 1, v34);
  v74 = 0;
  v72 = 0u;
  v73 = 0u;
  sub_22046DA2C(&v75, v71);
  v77 = v64;
  sub_2205A0924(v71, &v67, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v68)
  {
    sub_220458198(&v67, v69);
    v36 = v66;

    v37 = sub_220597454(v69);
    v39 = v38;
    v41 = v40;
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  else
  {
    v36 = v66;

    sub_2205A0B34(&v67, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v37 = qword_2812908F8;
    v39 = qword_281290900;
    v41 = qword_281290908;

    sub_2204A80F4(v39, v41);
  }

  v68 = v51;
  *&v67 = v36;
  v42 = v63;
  sub_2205A08A4(v35, v63);
  sub_2205A0924(&v72, v69, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v43 = (*(v61 + 80) + 24) & ~*(v61 + 80);
  v44 = (v62 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  *(v45 + 16) = v66;
  sub_2205A0994(v42, v45 + v43);
  v46 = v45 + v44;
  v47 = v69[1];
  *v46 = v69[0];
  *(v46 + 16) = v47;
  *(v46 + 32) = v70;
  v48 = (v45 + ((v44 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v48 = v37;
  v48[1] = v39;
  v48[2] = v41;
  swift_retain_n();

  sub_2204A80F4(v39, v41);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  v49 = v52;
  sub_22088E92C();

  if (v49)
  {
    sub_2205A0B34(&v67, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    sub_2205A0AE4(0, &qword_281298600, MEMORY[0x277D839B0], MEMORY[0x277D6CF30]);
    swift_allocObject();
    sub_220888EBC();

    sub_2204DA45C(v39, v41);

    sub_2205A0B34(v71, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v72, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2206708A4(v65, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205BA954(v31);
  }

  else
  {

    sub_2204DA45C(v39, v41);

    sub_2205A0B34(v71, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(&v72, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_2206708A4(v65, &qword_281298480, MEMORY[0x277D686D0]);
    sub_2205BA954(v31);

    sub_2205A0B34(&v67, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  }

  return __swift_destroy_boxed_opaque_existential_1(&v75);
}

uint64_t OpenArticleIntentNavigator.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t OpenArticleIntentNavigator.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 112));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2206707D4()
{
  sub_220447A9C(0, &qword_281298480, MEMORY[0x277D686D0]);

  return sub_220598700();
}

uint64_t sub_2206708A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447A9C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_220670974@<X0>(uint64_t a1@<X8>)
{
  v62 = a1;
  v66 = sub_220885B2C();
  v56 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v2);
  v65 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044BCF0(0, &qword_27CF58498, MEMORY[0x277D693A8], MEMORY[0x277CC8C90]);
  v64 = v4;
  v58 = *(v4 - 1);
  MEMORY[0x28223BE20](v4, v5);
  v57 = &v54 - v6;
  v7 = sub_220885B4C();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v61 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_22044BCF0(0, &qword_2812989B8, MEMORY[0x277D30338], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v54 - v13;
  v15 = sub_22088772C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088822C();
  v63 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044BCF0(0, &qword_281298B68, MEMORY[0x277D2FB78], v10);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v54 - v26;
  sub_220887AAC();
  (*(v16 + 56))(v27, 0, 1, v15);
  v28 = OBJC_IVAR____TtC8StocksUI36ArticleSymbolsToolbarFeatureProvider_activePage;
  swift_beginAccess();
  sub_2206714F8(v27, v1 + v28);
  swift_endAccess();
  sub_220887AAC();
  sub_22088770C();
  v29 = v63;
  (*(v16 + 8))(v19, v15);
  if ((*(v29 + 48))(v14, 1, v20) == 1)
  {
    sub_220671634(v14, &qword_2812989B8, MEMORY[0x277D30338]);
    return sub_22088791C();
  }

  else
  {
    v31 = *(v29 + 32);
    v55 = v20;
    v31(v23, v14, v20);
    v54 = v23;
    sub_22088820C();
    swift_getObjectType();
    sub_220891DBC();
    swift_unknownObjectRelease();
    v67 = sub_220885B3C();
    swift_getKeyPath();
    v32 = v57;
    sub_220884C9C();
    v33 = MEMORY[0x277D83940];
    sub_22044BCF0(0, &qword_27CF584A0, MEMORY[0x277D693A8], MEMORY[0x277D83940]);
    sub_22067158C(&qword_27CF584A8, &qword_27CF584A0, v33, MEMORY[0x277D83970]);
    sub_22067158C(&qword_27CF584B0, &qword_27CF58498, MEMORY[0x277CC8C90], MEMORY[0x277CC8C98]);
    v34 = v64;
    v35 = sub_2208915AC();
    (*(v58 + 8))(v32, v34);

    v36 = *(v35 + 16);
    if (v36)
    {
      v64 = *(v56 + 16);
      v37 = *(v56 + 80);
      v58 = v35;
      v38 = v35 + ((v37 + 32) & ~v37);
      v39 = *(v56 + 72);
      v40 = (v56 + 8);
      v41 = MEMORY[0x277D84F90];
      do
      {
        v44 = v65;
        v43 = v66;
        v64(v65, v38, v66);
        v45 = sub_220885B1C();
        v47 = v46;
        (*v40)(v44, v43);
        if (v47)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_22045E924(0, *(v41 + 2) + 1, 1, v41);
          }

          v49 = *(v41 + 2);
          v48 = *(v41 + 3);
          if (v49 >= v48 >> 1)
          {
            v41 = sub_22045E924((v48 > 1), v49 + 1, 1, v41);
          }

          *(v41 + 2) = v49 + 1;
          v42 = &v41[16 * v49];
          *(v42 + 4) = v45;
          *(v42 + 5) = v47;
        }

        v38 += v39;
        --v36;
      }

      while (v36);
    }

    else
    {

      v41 = MEMORY[0x277D84F90];
    }

    v50 = *(v41 + 2);
    v51 = v61;
    v52 = v54;
    if (v50)
    {
      v67 = MEMORY[0x277D84F90];
      sub_2208925EC();
      sub_2206715E8();
      v53 = v41 + 40;
      do
      {

        sub_220891B9C();
        sub_2208925CC();
        sub_2208925FC();
        sub_22089260C();
        sub_2208925DC();
        v53 += 16;
        --v50;
      }

      while (v50);
    }

    sub_22088791C();
    (*(v59 + 8))(v51, v60);
    return (*(v63 + 8))(v52, v55);
  }
}

double sub_2206711A8(__n128 a1, uint64_t a2, uint64_t a3, void (*a4)(__n128))
{
  v25 = a4;
  v5 = sub_22088772C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR____TtC8StocksUI36ArticleSymbolsToolbarFeatureProvider_activePage;
  swift_beginAccess();
  v15 = 0;
  v16 = 0;
  if (!(*(v6 + 48))(v4 + v14, 1, v5))
  {
    (*(v6 + 16))(v13, v4 + v14, v5);
    v15 = sub_2208876FC();
    v16 = v17;
    (*(v6 + 8))(v13, v5);
  }

  sub_220887AAC();
  v18 = sub_2208876FC();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  if (!v16)
  {

    goto LABEL_11;
  }

  if (v15 == v18 && v16 == v20)
  {

    return result;
  }

  v22 = sub_2208928BC();

  if ((v22 & 1) == 0)
  {
LABEL_11:
    (v25)(v23);
  }

  return result;
}

uint64_t sub_2206713C8()
{
  sub_220671634(v0 + OBJC_IVAR____TtC8StocksUI36ArticleSymbolsToolbarFeatureProvider_activePage, &qword_281298B68, MEMORY[0x277D2FB78]);

  return swift_deallocClassInstance();
}

uint64_t sub_220671450@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D2FBF8];
  v3 = sub_22088781C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2206714F8(uint64_t a1, uint64_t a2)
{
  sub_22044BCF0(0, &qword_281298B68, MEMORY[0x277D2FB78], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22067158C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22044BCF0(255, a2, MEMORY[0x277D693A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2206715E8()
{
  result = qword_28127E850;
  if (!qword_28127E850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E850);
  }

  return result;
}

uint64_t sub_220671634(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_22044BCF0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for StockFeedPage(uint64_t a1)
{
  result = qword_281294528;
  if (!qword_281294528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220671774@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22088E5DC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2206717A0(uint64_t a1, uint64_t a2)
{
  sub_2208929EC();
  sub_2208912AC();
  return sub_220892A2C();
}

uint64_t sub_2206717F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_220671988(&qword_27CF584D0, &unk_2208A71B4);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_220671860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2208929EC();
  sub_2208912AC();
  return sub_220892A2C();
}

uint64_t sub_220671988(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StockFeedPage(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void URL.Param.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_22089270C();

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v4)
  {
    v5 = 0;
  }

  *a3 = v5;
}

uint64_t URL.Param.rawValue.getter()
{
  if (*v0)
  {
    return 0x657370616C6C6F63;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_220671A88(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x657370616C6C6F63;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x80000002208BEB80;
  }

  else
  {
    v4 = 0xEF72616265646953;
  }

  if (*a2)
  {
    v5 = 0x657370616C6C6F63;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEF72616265646953;
  }

  else
  {
    v6 = 0x80000002208BEB80;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

unint64_t sub_220671B44()
{
  result = qword_27CF584D8;
  if (!qword_27CF584D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF584D8);
  }

  return result;
}

uint64_t sub_220671B98()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_220671C2C(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_220671CAC()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

void sub_220671D3C(char *a2@<X8>)
{
  v3 = sub_22089270C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_220671D9C(unint64_t *a1@<X8>)
{
  v2 = 0x80000002208BEB80;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x657370616C6C6F63;
    v2 = 0xEF72616265646953;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_220671E0C()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CF90);
  __swift_project_value_buffer(v0, qword_27CF6CF90);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220671FB8()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CFA8);
  __swift_project_value_buffer(v0, qword_27CF6CFA8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220672164()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CFC0);
  __swift_project_value_buffer(v0, qword_27CF6CFC0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t sub_220672310()
{
  v0 = sub_22089030C();
  __swift_allocate_value_buffer(v0, qword_27CF6CFD8);
  __swift_project_value_buffer(v0, qword_27CF6CFD8);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_220884CAC();

  v4 = [v2 bundleForClass_];
  sub_220884CAC();

  return sub_22089029C();
}

uint64_t ArticleTopStoriesOptionsProvider.results()()
{
  v1[3] = v0;
  sub_220508808(0);
  v1[4] = swift_task_alloc();
  v2 = sub_22089033C();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_22088698C();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220672690, 0, 0);
}

uint64_t sub_220672690()
{
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  *(v0 + 88) = sub_2208860BC();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_220672758;

  return MEMORY[0x2821D23D8](v0 + 16);
}

uint64_t sub_220672758()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_220672BB0;
  }

  else
  {

    v2 = sub_220672874;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_220672874()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (!v2)
  {

    v11 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }

LABEL_22:
    v12 = sub_2208926AC();
    if (v12)
    {
      goto LABEL_6;
    }

LABEL_23:
    v17 = MEMORY[0x277D84F90];
LABEL_24:

    v26 = v0[1];

    v26(v17);
    return;
  }

  v3 = v0[9];
  v31 = MEMORY[0x277D84F90];
  sub_2208925EC();
  v6 = *(v3 + 16);
  v4 = v3 + 16;
  v5 = v6;
  v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
  v8 = *(v4 + 56);
  do
  {
    v9 = v0[10];
    v10 = v0[8];
    v5(v9, v7, v10);
    sub_2208868DC();
    (*(v4 - 8))(v9, v10);
    sub_2208925CC();
    sub_2208925FC();
    sub_22089260C();
    sub_2208925DC();
    v7 += v8;
    --v2;
  }

  while (v2);

  v11 = v31;
  if (v31 >> 62)
  {
    goto LABEL_22;
  }

LABEL_5:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_6:
  v13 = 0;
  v14 = v0[6];
  v29 = v11 & 0xFFFFFFFFFFFFFF8;
  v30 = v11 & 0xC000000000000001;
  v15 = (v14 + 48);
  v27 = v14;
  v16 = (v14 + 32);
  v17 = MEMORY[0x277D84F90];
  v28 = v11;
  while (v30)
  {
    MEMORY[0x223D8A700](v13, v11);
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_27;
    }

LABEL_12:
    v20 = v0[4];
    v19 = v0[5];
    sub_22089032C();
    if ((*v15)(v20, 1, v19) == 1)
    {
      sub_220672C3C(v0[4]);
    }

    else
    {
      v21 = *v16;
      (*v16)(v0[7], v0[4], v0[5]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_220588348(0, *(v17 + 2) + 1, 1, v17);
      }

      v23 = *(v17 + 2);
      v22 = *(v17 + 3);
      if (v23 >= v22 >> 1)
      {
        v17 = sub_220588348((v22 > 1), v23 + 1, 1, v17);
      }

      v24 = v0[7];
      v25 = v0[5];
      *(v17 + 2) = v23 + 1;
      v21(&v17[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23], v24, v25);
      v11 = v28;
    }

    ++v13;
    if (v18 == v12)
    {
      goto LABEL_24;
    }
  }

  if (v13 >= *(v29 + 16))
  {
    goto LABEL_28;
  }

  swift_unknownObjectRetain();
  v18 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    goto LABEL_12;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_220672BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220672C3C(uint64_t a1)
{
  sub_220508808(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220672C98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_220672D24;

  return ArticleTopStoriesOptionsProvider.results()();
}

uint64_t sub_220672D24(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_220672E44(uint64_t a1, void (*a2)(char *))
{
  sub_2204ADC00(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_2204B3F5C(0);
  v11 = *(v10 + 48);
  sub_2204ADC00(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D868];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF48], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_220673014()
{
  result = qword_2812823B0;
  if (!qword_2812823B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812823B0);
  }

  return result;
}

void sub_22067307C(uint64_t a1, void (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v94 = a5;
  v95 = a6;
  v93 = a4;
  sub_2204D4A18(0);
  v10 = v9;
  v96 = *(v9 - 1);
  MEMORY[0x28223BE20](v9, v11);
  v92 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v98 = v67 - v15;
  sub_2205AB764(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v83 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for StockSearchSectionDescriptor(0);
  MEMORY[0x28223BE20](v86, v19);
  v21 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44(0);
  v97 = v22;
  v85 = *(v22 - 1);
  MEMORY[0x28223BE20](v22, v23);
  v25 = v67 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v67 - v28;
  sub_220674AC4(0, &qword_281297838, MEMORY[0x277D6DF88]);
  v72 = v30;
  v71 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v70 = v67 - v32;
  sub_2205AB5A4(0);
  MEMORY[0x28223BE20](v33 - 8, v34);
  v67[1] = v67 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924(0);
  v37 = v36;
  v69 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v68 = v67 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_220674A7C(&qword_281296E80, sub_2204D4924, MEMORY[0x277D6EC70]);
  v41 = sub_22089197C();
  v74 = a2;
  v73 = a3;
  if (v41)
  {
    v102 = MEMORY[0x277D84F90];
    v84 = v41;
    sub_22070C1EC(0, v41 & ~(v41 >> 63), 0);
    v88 = v102;
    sub_22089193C();
    if ((v84 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v82 = (v85 + 16);
      v90 = (v96 + 16);
      v91 = (v96 + 8);
      v89 = v96 + 32;
      v78 = (v85 + 8);
      v77 = v85 + 32;
      v99 = v25;
      v76 = a1;
      v75 = v37;
      v81 = v21;
      v80 = v29;
      v79 = v40;
      while (1)
      {
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          break;
        }

        v87 = v44;
        v45 = sub_2208919BC();
        a2 = v97;
        (*v82)(v25);
        v45(v101, 0);
        sub_22088B2AC();
        sub_220674A7C(&qword_27CF56C60, sub_220576D44, MEMORY[0x277D6D730]);
        v46 = sub_22089197C();
        if (v46)
        {
          v47 = v46;
          v100 = MEMORY[0x277D84F90];
          sub_22070C004(0, v46 & ~(v46 >> 63), 0);
          v48 = v100;
          sub_22089193C();
          if (v47 < 0)
          {
            goto LABEL_22;
          }

          v49 = 0;
          while (1)
          {
            v50 = v49 + 1;
            if (__OFADD__(v49, 1))
            {
              break;
            }

            v51 = sub_2208919BC();
            v52 = v92;
            (*v90)(v92);
            v51(v101, 0);
            sub_220673BAC(v52, v95, v98);
            (*v91)(v52, v10);
            v100 = v48;
            v54 = *(v48 + 16);
            v53 = *(v48 + 24);
            a2 = v10;
            if (v54 >= v53 >> 1)
            {
              sub_22070C004((v53 > 1), v54 + 1, 1);
              v48 = v100;
            }

            *(v48 + 16) = v54 + 1;
            (*(v96 + 32))(v48 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v54, v98, v10);
            sub_2208919AC();
            ++v49;
            if (v50 == v47)
            {
              v37 = v75;
              v25 = v99;
              goto LABEL_14;
            }
          }

          __break(1u);
          break;
        }

        v48 = MEMORY[0x277D84F90];
LABEL_14:
        v55 = sub_220674A7C(&qword_281297F48, sub_2204D4A18, MEMORY[0x277D6D408]);
        v56 = sub_220674A7C(&qword_281297F50, sub_2204D4A18, MEMORY[0x277D6D3F8]);
        MEMORY[0x223D80A20](v48, v10, v55, v56);
        type metadata accessor for StockSearchModel(0);
        sub_220674A7C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
        sub_220674A7C(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
        v57 = v80;
        sub_22088B29C();
        a2 = v97;
        (*v78)(v25, v97);
        v58 = v88;
        v102 = v88;
        v60 = *(v88 + 16);
        v59 = *(v88 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_22070C1EC((v59 > 1), v60 + 1, 1);
          v58 = v102;
        }

        *(v58 + 16) = v60 + 1;
        v61 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v88 = v58;
        (*(v85 + 32))(v58 + v61 + *(v85 + 72) * v60, v57, a2);
        sub_2208919AC();
        v42 = v87;
        v25 = v99;
        if (v87 == v84)
        {
          v62 = v88;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
    }

    __break(1u);
    (*v91)(a2, v10);

    __break(1u);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
LABEL_19:
    v63 = sub_220674A7C(&qword_281297E38, sub_220576D44, MEMORY[0x277D6D720]);
    v64 = sub_220674A7C(&unk_281297E40, sub_220576D44, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v62, v97, v63, v64);
    type metadata accessor for StockSearchModel(0);
    sub_220674A7C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    sub_220674A7C(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v65 = v68;
    sub_22088E7CC();
    v66 = v70;
    sub_22088C66C();
    v74(v66);
    (*(v71 + 8))(v66, v72);
    (*(v69 + 8))(v65, v37);
  }
}

uint64_t sub_220673BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v149 = a3;
  v150 = a2;
  v4 = sub_220886A4C();
  v145 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220522FA4(0);
  v141 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v134 = (&v126 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11, v12);
  v133 = &v126 - v13;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v131 = &v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v139 = (&v126 - v19);
  MEMORY[0x28223BE20](v20, v21);
  v137 = &v126 - v22;
  MEMORY[0x28223BE20](v23, v24);
  v130 = &v126 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v138 = &v126 - v28;
  v144 = sub_22088676C();
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v29);
  v31 = &v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v143 = &v126 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v132 = &v126 - v37;
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v126 - v40;
  MEMORY[0x28223BE20](v42, v43);
  v142 = &v126 - v44;
  v140 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v140, v45);
  v47 = &v126 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v51 = &v126 - v50;
  v52 = type metadata accessor for StockSearchModel(0);
  MEMORY[0x28223BE20](v52, v53);
  v135 = &v126 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v126 - v57;
  sub_2204D4A18(0);
  v147 = v59;
  v148 = a1;
  sub_22088AD8C();
  v136 = v52;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22050381C(v58, v51);
    v84 = sub_22088681C();
    if (!*(v150 + 16))
    {

      goto LABEL_28;
    }

    v86 = sub_2204AF97C(v84, v85);
    v88 = v87;

    if ((v88 & 1) == 0)
    {
LABEL_28:
      v121 = v51;
      goto LABEL_29;
    }

    v89 = v146;
    v90 = *(v150 + 56) + *(v146 + 72) * v86;
    v91 = v146 + 16;
    v92 = *(v146 + 16);
    v93 = v144;
    (v92)(v41, v90, v144);
    v94 = v142;
    v134 = *(v89 + 32);
    v134(v142, v41, v93);
    v95 = v138;
    v150 = v91;
    v145 = v92;
    (v92)(v138, v94, v93);
    v96 = *(v89 + 56);
    v143 = (v89 + 56);
    v139 = v96;
    v96(v95, 0, 1, v93);
    v97 = *(v140 + 20);
    v98 = *(v141 + 48);
    v99 = v133;
    sub_2204B1CA8(v95, v133);
    sub_2204B1CA8(&v51[v97], v99 + v98);
    v100 = v89;
    v101 = v99;
    v102 = *(v100 + 48);
    if (v102(v99, 1, v93) == 1)
    {
      sub_2204D6188(v95, sub_22045987C);
      v103 = v102(v99 + v98, 1, v93);
      v104 = v93;
      if (v103 == 1)
      {
        sub_2204D6188(v101, sub_22045987C);
        (*(v146 + 8))(v142, v93);
        goto LABEL_28;
      }
    }

    else
    {
      v113 = v99;
      v114 = v130;
      sub_2204B1CA8(v113, v130);
      if (v102(v101 + v98, 1, v93) != 1)
      {
        v122 = v114;
        v123 = v132;
        v134(v132, (v101 + v98), v93);
        sub_220674A7C(&qword_2812990C8, MEMORY[0x277D697F8], MEMORY[0x277D69800]);
        v124 = sub_2208912FC();
        v125 = *(v146 + 8);
        v125(v123, v93);
        sub_2204D6188(v138, sub_22045987C);
        v125(v122, v93);
        sub_2204D6188(v101, sub_22045987C);
        v104 = v93;
        if (v124)
        {
          v125(v142, v93);
          goto LABEL_28;
        }

LABEL_21:
        v115 = v137;
        v116 = v142;
        (v145)(v137, v142, v104);
        v139(v115, 0, 1, v104);
        sub_2206B8E10(v115, v135);
        sub_2204D6188(v115, sub_22045987C);
        swift_storeEnumTagMultiPayload();
        sub_220674A7C(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
        sub_22088AD7C();
        (*(v146 + 8))(v116, v104);
        return sub_2204D6188(v51, type metadata accessor for StockViewModel);
      }

      sub_2204D6188(v138, sub_22045987C);
      (*(v146 + 8))(v114, v93);
      v104 = v93;
    }

    sub_2204D6188(v101, sub_220522FA4);
    goto LABEL_21;
  }

  sub_22049550C(0);
  v61 = v60;
  v62 = *(v60 + 48);
  sub_22050381C(v58, v47);
  v63 = v145;
  v145[4](v7, &v58[v62], v4);
  v64 = sub_22088681C();
  if (*(v150 + 16))
  {
    v142 = v7;
    v138 = v47;
    v66 = sub_2204AF97C(v64, v65);
    v68 = v67;
    v47 = v138;
    v7 = v142;

    if (v68)
    {
      v130 = v61;
      v133 = v4;
      v69 = v146;
      v70 = *(v150 + 56) + *(v146 + 72) * v66;
      v72 = v146 + 16;
      v71 = *(v146 + 16);
      v73 = v144;
      v71(v31, v70, v144);
      v74 = v47;
      v75 = v143;
      v126 = v69[4];
      v126(v143, v31, v73);
      v76 = v139;
      v150 = v72;
      v129 = v71;
      v71(v139, v75, v73);
      v77 = v69[7];
      v128 = v69 + 7;
      v127 = v77;
      v77(v76, 0, 1, v73);
      v78 = *(v140 + 20);
      v79 = *(v141 + 48);
      v80 = v134;
      sub_2204B1CA8(v76, v134);
      sub_2204B1CA8(&v74[v78], &v80[v79]);
      v81 = v69[6];
      if (v81(v80, 1, v73) == 1)
      {
        sub_2204D6188(v76, sub_22045987C);
        v82 = v81(&v80[v79], 1, v73);
        v83 = v73;
        v4 = v133;
        v63 = v145;
        if (v82 == 1)
        {
          sub_2204D6188(v80, sub_22045987C);
          (*(v146 + 8))(v143, v73);
LABEL_24:
          v7 = v142;
          v47 = v138;
          goto LABEL_25;
        }
      }

      else
      {
        v105 = v131;
        sub_2204B1CA8(v80, v131);
        if (v81(&v80[v79], 1, v73) != 1)
        {
          v117 = v105;
          v118 = v132;
          v126(v132, &v80[v79], v73);
          sub_220674A7C(&qword_2812990C8, MEMORY[0x277D697F8], MEMORY[0x277D69800]);
          v119 = sub_2208912FC();
          v120 = *(v146 + 8);
          v120(v118, v73);
          sub_2204D6188(v139, sub_22045987C);
          v120(v117, v73);
          sub_2204D6188(v80, sub_22045987C);
          v83 = v73;
          v4 = v133;
          v63 = v145;
          if (v119)
          {
            v120(v143, v73);
            goto LABEL_24;
          }

LABEL_17:
          v106 = *(v130 + 48);
          v107 = v137;
          v108 = v143;
          v129(v137, v143, v83);
          v127(v107, 0, 1, v83);
          v109 = v135;
          v110 = v138;
          sub_2206B8E10(v107, v135);
          sub_2204D6188(v107, sub_22045987C);
          v111 = v142;
          v63[2]((v109 + v106), v142, v4);
          swift_storeEnumTagMultiPayload();
          sub_220674A7C(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
          sub_22088AD7C();
          (*(v146 + 8))(v108, v83);
          (v63[1])(v111, v4);
          return sub_2204D6188(v110, type metadata accessor for StockViewModel);
        }

        sub_2204D6188(v139, sub_22045987C);
        (*(v146 + 8))(v105, v73);
        v83 = v73;
        v4 = v133;
        v63 = v145;
      }

      sub_2204D6188(v80, sub_220522FA4);
      goto LABEL_17;
    }
  }

  else
  {
  }

LABEL_25:
  (v63[1])(v7, v4);
  v121 = v47;
LABEL_29:
  sub_2204D6188(v121, type metadata accessor for StockViewModel);
  return (*(*(v147 - 8) + 16))(v149, v148);
}

unint64_t sub_220674998()
{
  result = qword_281299680;
  if (!qword_281299680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281299680);
  }

  return result;
}

uint64_t sub_220674A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_220674AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockSearchSectionDescriptor(255);
    v8[1] = type metadata accessor for StockSearchModel(255);
    v8[2] = sub_220674A7C(qword_281286DF0, type metadata accessor for StockSearchSectionDescriptor, &unk_2208A87F0);
    v8[3] = sub_220674A7C(&qword_281291EB0, type metadata accessor for StockSearchModel, &unk_2208B9DB4);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
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
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_220674BEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 146))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 144);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_220674C40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
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
    *(result + 144) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 146) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 146) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2 + 1;
    }
  }

  return result;
}

double sub_220674CBC(uint64_t a1)
{
  sub_220674D50();

  sub_22088D90C();
  return result;
}

unint64_t sub_220674CFC()
{
  result = qword_27CF584E0;
  if (!qword_27CF584E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF584E0);
  }

  return result;
}

unint64_t sub_220674D50()
{
  result = qword_27CF584E8;
  if (!qword_27CF584E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF584E8);
  }

  return result;
}

uint64_t sub_220674DA4(uint64_t a1, uint64_t a2)
{
  sub_22061D1D0(0);
  v40 = *(v5 - 8);
  v6 = *(v40 + 8);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v8 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v40 - v11;
  v13 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088685C();
  (*(*(v22 - 8) + 16))(v21, a1, v22);
  *&v21[*(v18 + 28)] = a2;
  v23 = *(v2 + 64);
  sub_2206758FC(0);
  v25 = *(v24 + 48);
  v41 = v21;
  sub_220675968(v21, v16, type metadata accessor for StocksActivity.StockFeed.Series);
  *&v16[v25] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v26 = *(v2 + 72);
  v27 = sub_22088969C();
  (*(*(v27 - 8) + 56))(v12, 1, 1, v27);
  v50 = 0;
  memset(v49, 0, sizeof(v49));
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  v46 = v23;
  sub_2205A0924(v47, &v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (v43)
  {
    sub_220458198(&v42, v44);

    v28 = sub_220597454(v44);
    v30 = v29;
    v32 = v31;
    __swift_destroy_boxed_opaque_existential_1(v44);
  }

  else
  {

    sub_2205A0B34(&v42, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v28 = qword_2812908F8;
    v30 = qword_281290900;
    v32 = qword_281290908;

    sub_2204A80F4(v30, v32);
  }

  v43 = sub_22088731C();
  *&v42 = v26;
  sub_220675968(v12, v8, sub_22061D1D0);
  sub_2205A0924(v49, v44, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v33 = (v40[80] + 24) & ~v40[80];
  v40 = v12;
  v34 = (v6 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v26;
  sub_2205A0994(v8, v35 + v33);
  v36 = v35 + v34;
  v37 = v44[1];
  *v36 = v44[0];
  *(v36 + 16) = v37;
  *(v36 + 32) = v45;
  v38 = (v35 + ((v34 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v38 = v28;
  v38[1] = v30;
  v38[2] = v32;
  swift_retain_n();

  sub_2204A80F4(v30, v32);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v30, v32);
  sub_2205A0B34(v47, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v49, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2206759D0(v40, sub_22061D1D0);
  sub_2206759D0(v16, type metadata accessor for StocksActivity);
  sub_2206759D0(v41, type metadata accessor for StocksActivity.StockFeed.Series);
  return sub_2205A0B34(&v42, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

uint64_t sub_220675504(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_22088685C();
  (*(*(v14 - 8) + 16))(v13, a1, v14);
  *&v13[*(v10 + 28)] = a2;
  v15 = *(v2 + 64);
  sub_2206758FC(0);
  v17 = *(v16 + 48);
  sub_220675968(v13, v8, type metadata accessor for StocksActivity.StockFeed.Series);
  *&v8[v17] = 0;
  type metadata accessor for StocksActivity.StockFeed(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v18 = *(v2 + 72);
  v28 = 0;
  memset(v27, 0, sizeof(v27));
  v26[4] = v15;
  v26[3] = sub_22088731C();
  v26[0] = v18;
  sub_2205A0924(v27, v24, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = v24[1];
  *(v19 + 24) = v24[0];
  *(v19 + 40) = v20;
  *(v19 + 56) = v25;
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  swift_retain_n();

  v21 = sub_22088E91C();

  sub_2205A0B34(v27, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_2206759D0(v8, type metadata accessor for StocksActivity);
  sub_2206759D0(v13, type metadata accessor for StocksActivity.StockFeed.Series);
  sub_2205A0B34(v26, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
  return v21;
}

uint64_t sub_220675864()
{
  MEMORY[0x223D8B910](v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

void sub_2206758FC(uint64_t a1)
{
  if (!qword_2812952A0)
  {
    type metadata accessor for StocksActivity.StockFeed.Series(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2812952A0);
    }
  }
}

uint64_t sub_220675968(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206759D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220675B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v5 = sub_220884E9C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220884E4C();
  LOBYTE(a4) = a4(v9);
  (*(v6 + 8))(v9, v5);
  return a4 & 1;
}

uint64_t sub_220675CA0()
{
  v0 = sub_220884E7C();
  if (!v1)
  {
    goto LABEL_15;
  }

  v2 = v1;
  if (v0 == sub_220884DEC() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2208928BC();
  }

  v5 = sub_220884E6C();
  v7 = v6;
  v8 = sub_220884DDC();
  if (v7)
  {
    if (v5 == v8 && v7 == v9)
    {
    }

    else
    {
      v10 = sub_2208928BC();

      if (((v4 | v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (sub_220884DFC())
  {
    return 0;
  }

LABEL_15:
  v12 = sub_220884E3C();
  v13 = [v12 fc_isNewsArticleURL];

  return v13 ^ 1;
}

id sub_220675DDC()
{
  v0 = sub_220884E7C();
  if (v1)
  {
    v2 = v1;
    if (v0 == sub_220884DEC() && v2 == v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_2208928BC();
    }

    v5 = sub_220884E6C();
    v7 = v6;
    v8 = sub_220884DDC();
    if (v7)
    {
      if (v5 == v8 && v7 == v9)
      {

        goto LABEL_13;
      }

      v10 = sub_2208928BC();

      if ((v4 | v10))
      {
LABEL_13:
        if (sub_220884DFC())
        {
          goto LABEL_15;
        }
      }
    }

    else
    {

      if (v4)
      {
        goto LABEL_13;
      }
    }
  }

  v11 = sub_220884E3C();
  v12 = [v11 fc_isNewsArticleURL];

  if (!v12)
  {
    return 0;
  }

LABEL_15:
  v13 = [objc_opt_self() sharedApplication];
  v14 = [v13 supportsMultipleScenes];

  return v14;
}

uint64_t sub_220675F54(uint64_t a1)
{
  v3 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v1 + 11, v1[14]);
  result = sub_22088618C();
  if ((result & 1) == 0)
  {
    v8 = v1[7];
    if ([v8 isCollapsed])
    {
LABEL_8:
      sub_2206761EC(a1);
      v12 = sub_22088685C();
      (*(*(v12 - 8) + 56))(v6, 1, 2, v12);
      sub_220448B08(&qword_28128AD90, type metadata accessor for StockListSelectionModel, &unk_2208A0F38);
      sub_2208886AC();
      return sub_220676E50(v6, type metadata accessor for StockListSelectionModel);
    }

    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    sub_2204446D4(0, &unk_28128F188, &protocol descriptor for ForYouFeedModuleType);
    result = sub_2208884DC();
    if (v14)
    {
      sub_220457328(&v13, v15);
      __swift_project_boxed_opaque_existential_1(v15, v15[3]);
      sub_22048B0E8(&v13);
      v9 = v13;
      v10 = [v13 parentViewController];
      if (!v10)
      {
LABEL_7:
        [v8 showViewController:v9 sender:0];

        __swift_destroy_boxed_opaque_existential_1(v15);
        goto LABEL_8;
      }

      [v9 willMoveToParentViewController_];
      result = [v9 view];
      if (result)
      {
        v11 = result;
        [result removeFromSuperview];

        [v9 removeFromParentViewController];
        [v9 didMoveToParentViewController_];
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_2206761EC(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v3 = sub_22088CC6C();
  v17 = *(v3 - 8);
  v4 = *(v17 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v6 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v9 = *(v7 + 8);
  v10 = sub_22088D03C();
  if (v10)
  {
    v11 = v10;
    sub_22048B97C(0);
    if (!swift_dynamicCastClass())
    {
      sub_220676EB0(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for ForYouFeedViewController();
        sub_220891C9C();
        if (!v19)
        {
          v13 = v17;
          (*(v17 + 16))(&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v3);
          v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
          v15 = swift_allocObject();
          *(v15 + 16) = v2;
          (*(v13 + 32))(v15 + v14, v6, v3);

          MEMORY[0x223D851F0](v11, 0, sub_220676F84, v15, ObjectType, v9);

          goto LABEL_7;
        }
      }
    }

    v12 = *(v7 + 48);
    v12(1, ObjectType, v7);
    sub_22088D08C();
    v12(0, ObjectType, v7);
LABEL_7:
  }
}

uint64_t sub_22067642C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v27 - v19;
  sub_2206766CC(a1, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_220676730(v11, v7);
    (*(v13 + 32))(v20, v7, v12);
    v21 = *&v7[*(v4 + 20)];
  }

  else
  {
    v22 = *(v13 + 32);
    v22(v16, v11, v12);
    (*(v13 + 16))(v20, v16, v12);
    sub_220676A28(0);
    v23 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_220899360;
    v22((v21 + v23), v16, v12);
  }

  sub_220676794(v20, v21, a2);
  v25 = v24;

  (*(v13 + 8))(v20, v12);
  return v25;
}

uint64_t sub_2206766CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.StockFeed(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_220676730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksActivity.StockFeed.Series(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220676794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  sub_22055F760(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6, v10);
  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  sub_2204446D4(0, qword_281289488, &protocol descriptor for StockFeedViewerModuleType);
  v11 = *(v8 + 16);
  v18[1] = a3;
  v11(v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  (*(v8 + 32))(v13 + v12, v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  sub_2208884BC();

  if (v21)
  {
    sub_220457328(&v20, v22);
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    sub_22056D3F0(a1, v19, &v20);
    v14 = v20;
    if (sub_22088F0DC())
    {
      sub_22088D89C();
      swift_getObjectType();
      [objc_allocWithZone(sub_22088BE5C()) initWithRootViewController_];
      *&v20 = v14;
      sub_22088845C();
      v15 = sub_22088D85C();
      sub_22088D87C();
      v16 = sub_22088E0EC();
      v17 = v15;
      v16();
    }

    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    __break(1u);
  }
}

void sub_220676A28(uint64_t a1)
{
  if (!qword_28127E198)
  {
    sub_22088685C();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E198);
    }
  }
}

double sub_220676A80(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22055F760(0);
  sub_22088E11C();
  if (v5)
  {
    sub_22088731C();
    swift_dynamicCast();
  }

  else
  {
    sub_220676E50(v4, sub_22055F87C);
  }

  sub_22088731C();
  sub_22088832C();

  v2 = sub_22088E0FC();
  v2(a1);

  return result;
}

double sub_220676BA0(void *a1)
{
  sub_22055F760(0);

  return sub_220676A80(a1);
}

void sub_220676C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = sub_22088CC6C();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v7 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 72);
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  v11 = sub_22088D03C();
  if (v11)
  {
    v12 = v11;
    sub_22048B97C(0);
    if (!swift_dynamicCastClass())
    {
      sub_220676EB0(0);
      if (!swift_dynamicCastClass())
      {
        type metadata accessor for ForYouFeedViewController();
        sub_220891C9C();
        if (!v20)
        {
          v14 = v18;
          (*(v18 + 16))(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v19, v4);
          v15 = (*(v14 + 80) + 24) & ~*(v14 + 80);
          v16 = swift_allocObject();
          *(v16 + 16) = a2;
          (*(v14 + 32))(v16 + v15, v7, v4);

          MEMORY[0x223D851F0](v12, 0, sub_2206770C0, v16, ObjectType, v10);

          goto LABEL_7;
        }
      }
    }

    v13 = *(v8 + 48);
    v13(1, ObjectType, v8);
    sub_22088D08C();
    v13(0, ObjectType, v8);
LABEL_7:
  }
}

uint64_t sub_220676E50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_220676EB0(uint64_t a1)
{
  if (!qword_281283A88)
  {
    sub_22048B188(255);
    v3 = v2;
    v4 = sub_220676F14();
    v6 = type metadata accessor for ForYouFeedContainerViewController(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_281283A88);
    }
  }
}

unint64_t sub_220676F14()
{
  result = qword_281297910;
  if (!qword_281297910)
  {
    sub_22048B188(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281297910);
  }

  return result;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_22088CC6C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_22067704C(uint64_t a1)
{
  v3 = *(sub_22088CC6C() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_220676C10(a1, v4, v5);
}

uint64_t sub_2206770C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v6 = sub_22088A1EC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220677454(0, v9);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088A61C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    v23.n128_f64[0] = (*(v17 + 56))(v15, 1, 1, v16, v19);
    goto LABEL_6;
  }

  swift_getObjectType();
  v31 = a3;
  v32 = v16;
  (*(v7 + 104))(v11, *MEMORY[0x277D34D60], v6);
  a3 = v31;
  v22 = v32;
  sub_22088A31C();
  (*(v7 + 8))(v11, v6);
  if ((*(v17 + 48))(v15, 1, v22) == 1)
  {
LABEL_6:
    sub_2206774AC(v15, v23);
    goto LABEL_7;
  }

  (*(v17 + 32))(v21, v15, v22);
  v24 = sub_22088A5EC();
  (*(v17 + 8))(v21, v22);
  if (v24)
  {
    v25 = *MEMORY[0x277D68420];
    v26 = sub_22088938C();
    return (*(*(v26 - 8) + 104))(v33, v25, v26);
  }

LABEL_7:
  v28 = sub_22088938C();
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        v29 = MEMORY[0x277D68420];
        return (*(*(v28 - 8) + 104))(v33, *v29, v28);
      case 4:
        v29 = MEMORY[0x277D68448];
        return (*(*(v28 - 8) + 104))(v33, *v29, v28);
      case 5:
        v29 = MEMORY[0x277D68418];
        return (*(*(v28 - 8) + 104))(v33, *v29, v28);
    }

LABEL_18:
    v29 = MEMORY[0x277D68438];
    return (*(*(v28 - 8) + 104))(v33, *v29, v28);
  }

  if (!a3)
  {
    v29 = MEMORY[0x277D68440];
    return (*(*(v28 - 8) + 104))(v33, *v29, v28);
  }

  if (a3 == 1)
  {
    v29 = MEMORY[0x277D68428];
    return (*(*(v28 - 8) + 104))(v33, *v29, v28);
  }

  if (a3 != 2)
  {
    goto LABEL_18;
  }

  v29 = MEMORY[0x277D68430];
  return (*(*(v28 - 8) + 104))(v33, *v29, v28);
}

void sub_220677454(uint64_t a1, __n128 a2)
{
  if (!qword_281298170[0])
  {
    sub_22088A61C();
    v2 = sub_22089230C();
    if (!v3)
    {
      atomic_store(v2, qword_281298170);
    }
  }
}

uint64_t sub_2206774AC(uint64_t a1, __n128 a2)
{
  sub_220677454(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_22067750C()
{
  result = qword_27CF584F0;
  if (!qword_27CF584F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF584F0);
  }

  return result;
}

unint64_t sub_220677564()
{
  result = qword_27CF584F8;
  if (!qword_27CF584F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF584F8);
  }

  return result;
}

unint64_t sub_220677624()
{
  result = qword_27CF58500;
  if (!qword_27CF58500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58500);
  }

  return result;
}

uint64_t sub_220677694()
{
  v0 = sub_220884D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208852DC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22089131C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = sub_220884D6C();
  __swift_allocate_value_buffer(v9, qword_27CF6CFF0);
  __swift_project_value_buffer(v9, qword_27CF6CFF0);
  sub_22089130C();
  sub_22088528C();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_220884D7C();
}

void sub_220677874(uint64_t a1)
{
  sub_22088E2CC();
  sub_22088481C();
  swift_getObjectType();
  v1 = sub_22088B7EC();
  swift_unknownObjectRelease();
  if (v1)
  {
    sub_22088481C();
    swift_getObjectType();
    sub_22088B82C();

    swift_unknownObjectRelease();
  }

  else
  {
    sub_220677EE0();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_22067796C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CF55A78 != -1)
  {
    swift_once();
  }

  v3 = sub_220884D6C();
  v4 = __swift_project_value_buffer(v3, qword_27CF6CFF0);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t sub_220677A24(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_220677A48, 0, 0);
}

uint64_t sub_220677A48()
{
  sub_2208917EC();
  *(v0 + 32) = sub_2208917DC();
  v2 = sub_2208917CC();

  return MEMORY[0x2822009F8](sub_220677ADC, v2, v1);
}

uint64_t sub_220677ADC()
{
  v1 = *(v0 + 24);

  sub_220677874(v1);

  return MEMORY[0x2822009F8](sub_220677B94, 0, 0);
}

uint64_t sub_220677B94()
{
  sub_22088491C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_220677BF8@<X0>(uint64_t *a1@<X8>)
{
  sub_220677E28(0);
  sub_22088488C();
  sub_22088487C();
  result = sub_22088482C();
  *a1 = result;
  return result;
}

uint64_t sub_220677C64(uint64_t a1)
{
  v2 = sub_220677624();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_220677CB0()
{
  result = qword_27CF58508;
  if (!qword_27CF58508)
  {
    sub_220677D08(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58508);
  }

  return result;
}

void sub_220677D08(uint64_t a1)
{
  if (!qword_27CF58510)
  {
    sub_220677D80();
    sub_220677DD4();
    v1 = sub_22088492C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58510);
    }
  }
}

unint64_t sub_220677D80()
{
  result = qword_27CF58518;
  if (!qword_27CF58518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58518);
  }

  return result;
}

unint64_t sub_220677DD4()
{
  result = qword_27CF58520;
  if (!qword_27CF58520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58520);
  }

  return result;
}

void sub_220677E28(uint64_t a1)
{
  if (!qword_27CF58528)
  {
    sub_220677E80();
    v1 = sub_22088483C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58528);
    }
  }
}

unint64_t sub_220677E80()
{
  result = qword_281297C50;
  if (!qword_281297C50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_281297C50);
  }

  return result;
}

unint64_t sub_220677EE0()
{
  result = qword_27CF58530;
  if (!qword_27CF58530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58530);
  }

  return result;
}

unint64_t sub_220677F48()
{
  result = qword_27CF58538;
  if (!qword_27CF58538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58538);
  }

  return result;
}

uint64_t sub_220677FC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22045DF78(&qword_281293CC8, type metadata accessor for StockListModel, &unk_2208A7A04);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_220678040(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if ((sub_2204CDC68(a1, a2, a4) & 1) == 0 || *(a1 + *(a3 + 20)) != *(a2 + *(a3 + 20)))
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_2208928BC();
}

uint64_t sub_2206780DC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_220884E9C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v1, v15, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE394(v15, type metadata accessor for StockListModel);
    }

    v17 = 1;
  }

  else
  {
    sub_2204CDB9C(v15, v11);
    sub_22088678C();
    sub_220884E3C();
    sub_2208867BC();
    sub_22088E4DC();
    (*(v4 + 8))(v7, v3);
    sub_2204AE394(v11, type metadata accessor for StockListStockModel);
    v17 = 0;
  }

  v18 = sub_22088E4EC();
  return (*(*(v18 - 8) + 56))(a1, v17, 1, v18);
}

uint64_t sub_22067839C@<X0>(uint64_t a2@<X1>, unsigned int *a3@<X2>, uint64_t (*a4)(void)@<X3>, unsigned int *a5@<X4>, uint64_t a6@<X8>)
{
  MEMORY[0x28223BE20](v6, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v13, v12, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE394(v12, type metadata accessor for StockListModel);
      v15 = *a3;
    }

    else
    {
      v15 = *a5;
    }

    v19 = a4(0);
    return (*(*(v19 - 8) + 104))(a6, v15, v19);
  }

  else
  {
    v16 = *a3;
    v17 = a4(0);
    (*(*(v17 - 8) + 104))(a6, v16, v17);
    return sub_2204AE394(v12, type metadata accessor for StockListStockModel);
  }
}

char *sub_220678524()
{
  v1 = sub_22088BCCC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v78[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v78[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2204B40F4(v0, v13, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v15 = 0;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE394(v13, type metadata accessor for StockListModel);
      return 0;
    }
  }

  else
  {
    v88 = v6;
    v84 = v5;
    sub_2204CDB9C(v13, v9);
    v16 = MEMORY[0x277D84560];
    sub_220679628(0, &qword_281299538, MEMORY[0x277D6DB00], MEMORY[0x277D84560]);
    v89 = *(v2 + 72);
    v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v18 = swift_allocObject();
    v102 = xmmword_220899920;
    *(v18 + 16) = xmmword_220899920;
    v83 = v17;
    v87 = v18;
    v19 = (v18 + v17);
    sub_22067957C(0, xmmword_220899920);
    v91 = v2;
    v21 = v20;
    v103 = v1;
    v22 = *(v20 + 48);
    v94 = *(v20 + 64);
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v101 = ObjCClassFromMetadata;
    v97 = objc_opt_self();
    v24 = [v97 bundleForClass_];
    v25 = sub_220884CAC();
    v90 = v9;
    v26 = v25;
    v28 = v27;

    *v19 = v26;
    v19[1] = v28;
    v29 = *MEMORY[0x277D6DA70];
    v100 = sub_22088BC8C();
    v30 = *(v100 - 8);
    v31 = *(v30 + 104);
    v98 = v30 + 104;
    v99 = v31;
    v31((v19 + v22), v29, v100);
    sub_220679628(0, qword_281299698, MEMORY[0x277D6DAF8], v16);
    v96 = v32;
    v33 = sub_22088BCBC();
    v34 = *(v33 - 8);
    v35 = *(v34 + 72);
    v36 = *(v34 + 80);
    v92 = ((v36 + 32) & ~v36) + 2 * v35;
    v93 = (v36 + 32) & ~v36;
    v37 = swift_allocObject();
    *(v37 + 16) = v102;
    v38 = v37 + ((v36 + 32) & ~v36);
    v39 = *(v34 + 104);
    (v39)(v38, *MEMORY[0x277D6DAD8], v33);
    sub_22088E1DC();
    *(v38 + v35) = sub_22088E1AC();
    v40 = *MEMORY[0x277D6DAF0];
    v86 = v35;
    v95 = v40;
    v39(v38 + v35);
    *(v94 + v19) = v37;
    v41 = *MEMORY[0x277D6DA90];
    v42 = v91 + 104;
    v94 = *(v91 + 104);
    v94(v19, v41, v103);
    v43 = (v19 + v89);
    v44 = (v19 + v89 + *(v21 + 48));
    v82 = v21;
    v85 = *(v21 + 64);
    v45 = [v97 bundleForClass_];
    v46 = sub_220884CAC();
    v48 = v47;

    *v43 = v46;
    v43[1] = v48;
    v49 = v39;
    *v44 = 0x6D79536572616853;
    v44[1] = 0xEB000000006C6F62;
    v50 = *MEMORY[0x277D6DA68];
    v99(v44, v50, v100);
    v81 = v36;
    v51 = swift_allocObject();
    *(v51 + 16) = v102;
    v52 = (v51 + v93);
    v80 = objc_opt_self();
    *v52 = [v80 systemOrangeColor];
    v79 = *MEMORY[0x277D6DAE8];
    v39(v52);
    if (qword_28127F098 != -1)
    {
      swift_once();
    }

    v53 = qword_2812B6928;
    v54 = v86;
    *&v52[v86] = qword_2812B6928;
    v49(&v52[v54], v95, v33);
    *(v43 + v85) = v51;
    v55 = *MEMORY[0x277D6DAD0];
    v94(v43, *MEMORY[0x277D6DAD0], v103);
    v56 = v90;
    if (v90[*(v88 + 20)] == 1)
    {
      LODWORD(v85) = v55;
      v88 = v42;
      v57 = v50;
      v58 = v84;
      v59 = (v84 + *(v82 + 48));
      v82 = *(v82 + 64);
      v60 = v49;
      v61 = v53;
      v62 = [v97 bundleForClass_];
      v63 = sub_220884CAC();
      v65 = v64;

      *v58 = v63;
      v58[1] = v65;
      *v59 = 0x61576567616E614DLL;
      v59[1] = 0xEF7473696C686374;
      v99(v59, v57, v100);
      v66 = swift_allocObject();
      *(v66 + 16) = v102;
      v67 = (v66 + v93);
      *v67 = [v80 systemBlueColor];
      v60(v67, v79, v33);
      if (qword_27CF558B0 != -1)
      {
        swift_once();
      }

      v68 = qword_27CF6CED8;
      *(v67 + v54) = qword_27CF6CED8;
      v60((v67 + v54), v95, v33);
      *(v58 + v82) = v66;
      v69 = v103;
      v94(v58, v85, v103);
      v15 = v87;
      v70 = *(v87 + 2);
      v71 = *(v87 + 3);
      v72 = v68;
      if (v70 >= v71 >> 1)
      {
        v15 = sub_22058837C((v71 > 1), v70 + 1, 1, v15);
      }

      v73 = v91;
      v74 = v89;
      v75 = v83;
      sub_2204AE394(v90, type metadata accessor for StockListStockModel);
      *(v15 + 2) = v70 + 1;
      (*(v73 + 32))(&v15[v75 + v70 * v74], v58, v69);
    }

    else
    {
      v76 = v53;
      sub_2204AE394(v56, type metadata accessor for StockListStockModel);
      return v87;
    }
  }

  return v15;
}

uint64_t sub_220678E70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, uint64_t a9)
{
  v10 = v9;
  v76 = a8;
  v77 = a4;
  v79 = a6;
  v80 = a7;
  v78 = a5;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088685C();
  v72 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockListStockModel(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19 - 8, v22);
  v23 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v67 - v26;
  v28 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v67 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B40F4(v10, v31, type metadata accessor for StockListModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v33 = EnumCaseMultiPayload;
    result = 0;
    if (v33 == 1)
    {
      sub_2204AE394(v31, type metadata accessor for StockListModel);
      return 0;
    }
  }

  else
  {
    v69 = v21;
    v70 = v20;
    v35 = v72;
    sub_2204CDB9C(v31, v27);
    v36 = sub_22088B17C();
    v66 = v76;
    v76 = v27;
    v37 = v36;
    v39 = sub_22065F810(v27, v73, v74, v75, v77, v78, v79, v80, v38, v66, a9);
    sub_220679628(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
    v40 = swift_allocObject();
    v41 = v40;
    *(v40 + 16) = xmmword_22089EF70;
    v71 = v23;
    v68 = v37;
    if (v39)
    {
      v42 = MEMORY[0x277D6D630];
      v43 = v37;
    }

    else
    {
      v43 = 0;
      v42 = 0;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
    }

    v44 = v15;
    v80 = v39;
    *(v40 + 32) = v39;
    *(v40 + 56) = v43;
    *(v40 + 64) = v42;
    v45 = *(v35 + 16);
    v46 = v76;
    v45(v18, v76, v15);
    v47 = type metadata accessor for StockViewModel(0);
    sub_2204B40F4(&v46[*(v47 + 20)], v14, sub_22045987C);
    v48 = type metadata accessor for StockShareActivityItemSource(0);
    v49 = objc_allocWithZone(v48);
    v45(&v49[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v18, v44);
    sub_2204B40F4(v14, &v49[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
    v81.receiver = v49;
    v81.super_class = v48;

    v50 = objc_msgSendSuper2(&v81, sel_init);
    sub_2204AE394(v14, sub_22045987C);
    v51.n128_f64[0] = (*(v35 + 8))(v18, v44);
    v52 = sub_22076D084(v50, 0, v51);

    if (v52)
    {
      v54 = MEMORY[0x277D6D630];
      v55 = v68;
      v56 = v68;
      v57 = v70;
      v58 = v71;
    }

    else
    {
      v56 = 0;
      v54 = 0;
      v41[10] = 0;
      v41[11] = 0;
      v57 = v70;
      v58 = v71;
      v55 = v68;
    }

    v41[9] = v52;
    v41[12] = v56;
    v41[13] = v54;
    v59 = v76;
    v60 = _s5TeaUI15ContextMenuItemC06StocksB0E8copyLink5stockAC0F4Core5StockV_tFZ_0(v76, v53);
    v41[17] = v55;
    v61 = MEMORY[0x277D6D630];
    v41[18] = MEMORY[0x277D6D630];
    v41[14] = v60;
    v62 = sub_2207E451C(v59);
    v41[22] = v55;
    v41[23] = v61;
    v41[19] = v62;
    sub_2204B40F4(v59, v58, type metadata accessor for StockListStockModel);
    v63 = (*(v57 + 80) + 16) & ~*(v57 + 80);
    v64 = swift_allocObject();
    sub_2204CDB9C(v58, v64 + v63);
    sub_22088AB2C();
    swift_allocObject();
    v65 = sub_22088AACC();

    sub_2204AE394(v59, type metadata accessor for StockListStockModel);
    return v65;
  }

  return result;
}

id sub_2206793E4(uint64_t a1)
{
  sub_22045987C(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088685C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StockActivityItemsConfiguration();
  (*(v7 + 16))(v10, a1, v6);
  v11 = type metadata accessor for StockViewModel(0);
  sub_2204B40F4(a1 + *(v11 + 20), v5, sub_22045987C);
  return StockActivityItemsConfiguration.__allocating_init(stock:quote:)(v10, v5);
}

void sub_22067957C(uint64_t a1, __n128 a2)
{
  if (!qword_281299688)
  {
    sub_22088BC8C();
    sub_220679628(255, &qword_281299690, MEMORY[0x277D6DAF8], MEMORY[0x277D83940]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_281299688);
    }
  }
}

void sub_220679628(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_22067968C()
{
  v1 = *(type metadata accessor for StockListStockModel(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2206793E4(v2);
}

uint64_t StocksActivity.Tip.tipType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = sub_220889FAC();
  v5 = *(*(v4 - 8) + 104);
  v6 = MEMORY[0x277D68EC8];
  if (v3 < 0)
  {
    v6 = MEMORY[0x277D68EC0];
  }

  v7 = *v6;

  return v5(a1, v7, v4);
}

uint64_t type metadata accessor for StockFeedEarningsRefreshBlueprintModifier(uint64_t a1)
{
  result = qword_27CF58540;
  if (!qword_27CF58540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_220679808(uint64_t a1)
{
  result = type metadata accessor for StockEarningsModel(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_220679874(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v83 = a3;
  v84 = a2;
  v4 = sub_22088B64C();
  v78 = *(v4 - 8);
  v79 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v77 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22067A2FC(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v82 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v58 - v10);
  v75 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v75, v12);
  v72 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D328(0);
  v73 = *(v14 - 8);
  v74 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v71 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D524(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v68 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for StockFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v80, v20);
  v67 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22067A2FC(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v23 = v22;
  v81 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v58 - v25;
  sub_22055E01C(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v58 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22067A2FC(0, &qword_281297DE0, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v69 = &v58 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v58 - v38;
  sub_22088E76C();
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_22063AD88(v30);
    sub_22067A3F0();
    *v11 = swift_allocError();
    v40 = v82;
    (*(v8 + 104))(v11, *MEMORY[0x277D6DF68], v82);
    v84(v11);
    return (*(v8 + 8))(v11, v40);
  }

  else
  {
    v65 = v11;
    v66 = v8;
    v63 = v33;
    v42 = *(v33 + 32);
    v62 = v32;
    v42(v39, v30, v32);
    (*(v81 + 16))(v26, a1, v23);
    v43 = sub_220577460();
    sub_22088FA1C();
    sub_22088FA0C();
    type metadata accessor for StockFeedServiceConfig(0);
    sub_22067A444(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
    v44 = sub_22088F9EC();

    v64 = a1;
    v70 = v39;
    v45 = 0;
    if (v44)
    {
      v45 = sub_22088F45C();
    }

    else
    {
      v86 = 0;
      v87 = 0;
    }

    v85 = v44;
    v88 = v45;
    v60 = v26;
    sub_22088E7BC();
    sub_22062782C(v43);
    swift_storeEnumTagMultiPayload();
    v46 = sub_22067A444(&qword_281297FB8, sub_22055D328, MEMORY[0x277D6D408]);
    v47 = sub_22067A444(&qword_281297FC0, sub_22055D328, MEMORY[0x277D6D3F8]);
    v48 = v74;
    MEMORY[0x223D80A10](MEMORY[0x277D84F90], v74, v46, v47);
    v59 = v23;
    v61 = type metadata accessor for StockFeedSectionDescriptor;
    sub_22067A444(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    sub_22067A444(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v49 = v69;
    sub_22088B29C();
    sub_220649AF0(v76, v72);
    swift_storeEnumTagMultiPayload();
    v50 = v71;
    sub_22088AD7C();
    v51 = v62;
    sub_22088B30C();
    (*(v73 + 8))(v50, v48);
    v52 = v60;
    sub_22088E75C();
    v54 = v77;
    v53 = v78;
    v55 = v79;
    (*(v78 + 104))(v77, *MEMORY[0x277D6D868], v79);
    sub_22067A444(&unk_281288C00, v61, &unk_2208A205C);
    v56 = v65;
    sub_22088C67C();
    (*(v53 + 8))(v54, v55);
    v84(v56);
    (*(v66 + 8))(v56, v82);
    v57 = *(v63 + 8);
    v57(v49, v51);
    (*(v81 + 8))(v52, v59);
    return (v57)(v70, v51);
  }
}

uint64_t sub_22067A1B8(uint64_t a1)
{
  v2 = sub_22067A444(&qword_27CF58560, type metadata accessor for StockFeedEarningsRefreshBlueprintModifier, &unk_2208A7D54);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_22067A2FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_22067A444(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_22067A444(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_22067A3F0()
{
  result = qword_27CF58558;
  if (!qword_27CF58558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58558);
  }

  return result;
}

uint64_t sub_22067A444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22067A4A0()
{
  result = qword_27CF58568;
  if (!qword_27CF58568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58568);
  }

  return result;
}

id sub_22067A4F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v34 = a1;
  v4 = sub_220886D4C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = objc_opt_self();
  sub_22089002C();
  (*(v5 + 104))(v8, *MEMORY[0x277D6D198], v4);
  v12 = v10;
  sub_22089001C();
  v14 = v13;
  (*(v5 + 8))(v8, v4);
  v15 = [v11 systemFontOfSize:v14 weight:{*MEMORY[0x277D743F8], v34, v35}];
  v16 = sub_220891F4C();

  v17 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v18 = MEMORY[0x277D740C0];
  *(inited + 40) = v16;
  v19 = *v18;
  *(inited + 64) = v17;
  *(inited + 72) = v19;
  v21 = v3[5];
  v20 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
  v22 = *(v20 + 16);
  v23 = *(v22 + 520);
  v24 = v19;
  v25 = v23(v21, v22);
  v26 = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v25;
  v27 = *MEMORY[0x277D740D0];
  *(inited + 104) = v26;
  *(inited + 112) = v27;
  *(inited + 144) = MEMORY[0x277D839F8];
  *(inited + 120) = 0xBFD3333333333333;
  v28 = v27;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v30 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v31 = sub_22089125C();

  v32 = [v29 initWithString:v30 attributes:v31];

  return v32;
}

id sub_22067A850(uint64_t a1, uint64_t a2)
{
  v23[1] = a2;
  v2 = sub_220886D4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  sub_22089002C();
  (*(v3 + 104))(v6, *MEMORY[0x277D6D198], v2);
  v10 = v8;
  sub_22089001C();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  v13 = [v9 systemFontOfSize:v12 weight:*MEMORY[0x277D743F8]];
  v14 = sub_220891F4C();

  v15 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  *(inited + 40) = v14;
  v16 = *MEMORY[0x277D740D0];
  *(inited + 64) = v15;
  *(inited + 72) = v16;
  *(inited + 104) = MEMORY[0x277D839F8];
  *(inited + 80) = 0xBFD3333333333333;
  v17 = v16;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v18 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v19 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v20 = sub_22089125C();

  v21 = [v18 initWithString:v19 attributes:v20];

  return v21;
}

void sub_22067AB0C(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v84 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_separatorView];
  [v84 setHidden_];
  v82 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_quoteSummaryView];
  [v82 &off_27844B678];
  v86 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_exchangeLabel];
  [v86 &off_27844B678];
  v8 = type metadata accessor for StockFeedMastheadViewLayoutAttributes(0);
  [a3 setFrame_];
  v9 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_symbolLabel];
  v10 = a3;
  v77 = a3;
  [v9 &off_27844B978];
  swift_beginAccess();
  sub_22046DA2C(v4 + 16, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v11 = sub_22088684C();
  v12 = *(a2 + v8[15]);
  v14 = sub_22083C2F4(v11, v13, v12);

  [v9 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v15 = Stock.accessibleSymbol.getter();
  v80 = v9;
  [v9 setAccessibilityAttributedLabel_];

  v16 = *&v10[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_nameLabel];
  v76 = v8;
  [v16 setFrame_];
  sub_22046DA2C(v4 + 16, __dst);
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v17 = sub_2208867BC();
  v81 = v12;
  v19 = sub_22083C744(v17, v18, v12);

  v79 = v16;
  [v16 setAttributedText_];

  __swift_destroy_boxed_opaque_existential_1(__dst);
  [v86 setFrame_];
  v85 = v4;
  sub_22046DA2C(v4 + 16, __dst);
  v20 = __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  v78 = type metadata accessor for StockFeedMastheadModel(0);
  v83 = a1;
  sub_2204C4258(a1 + v78[5]);
  v21 = *v20;
  sub_2204A5DF0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v23 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v24 = sub_22044D56C(0, &qword_28127E570, 0x277D74300);
  v25 = v23;
  v26 = sub_220891F2C();
  v27 = MEMORY[0x277D740C0];
  *(inited + 40) = v26;
  v28 = *v27;
  *(inited + 64) = v24;
  *(inited + 72) = v28;
  v29 = v21[5];
  v30 = v21[6];
  __swift_project_boxed_opaque_existential_1(v21 + 2, v29);
  v31 = *(v30 + 16);
  v32 = *(v31 + 216);
  v33 = v28;
  v74 = a2;
  v34 = v32(v29, v31);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530, 0x277D75348);
  *(inited + 80) = v34;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84(0);
  swift_arrayDestroy();
  v35 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v36 = sub_22089132C();

  type metadata accessor for Key(0);
  sub_22067B62C(&qword_28127E6A8, 255, type metadata accessor for Key, &unk_220899024);
  v37 = sub_22089125C();

  v38 = [v35 initWithString:v36 attributes:v37];

  [v86 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v39 = *&v77[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_moreOptionsButton];
  v40 = (a2 + v76[8]);
  v41 = *v40;
  v42 = v40[1];
  v43 = v40[2];
  v44 = v40[3];
  v88.origin.x = *v40;
  v88.origin.y = v42;
  v88.size.width = v43;
  v88.size.height = v44;
  [v39 setHidden_];
  [v39 setFrame_];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v46 = objc_opt_self();
  v47 = [v46 bundleForClass_];
  sub_220884CAC();

  v48 = sub_22089132C();

  [v39 setAccessibilityLabel_];

  v49 = *&v77[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_shareButton];
  v50 = (v74 + v76[9]);
  v51 = *v50;
  v52 = v50[1];
  v53 = v50[2];
  v54 = v50[3];
  v89.origin.x = *v50;
  v89.origin.y = v52;
  v89.size.width = v53;
  v89.size.height = v54;
  [v49 setHidden_];
  [v49 setFrame_];
  v55 = [v46 bundleForClass_];
  sub_220884CAC();

  v56 = sub_22089132C();

  v75 = v49;
  [v49 setAccessibilityLabel_];

  v57 = *&v77[OBJC_IVAR____TtC8StocksUI21StockFeedMastheadView_watchStockButton];
  v58 = (v74 + v76[10]);
  v59 = *v58;
  v60 = v58[1];
  v61 = v58[2];
  v62 = v58[3];
  v90.origin.x = *v58;
  v90.origin.y = v60;
  v90.size.width = v61;
  v90.size.height = v62;
  [v57 setHidden_];
  [v57 setFrame_];
  v63 = [v77 nextResponder];
  if (v63)
  {
    v64 = v63;
    while (1)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      v65 = [v64 nextResponder];

      v64 = v65;
      if (!v65)
      {
        goto LABEL_8;
      }
    }

    LOBYTE(v65) = sub_220891C8C();
  }

  else
  {
    LOBYTE(v65) = 0;
  }

LABEL_8:
  [v39 setHidden_];
  v66 = [objc_opt_self() clearColor];
  [v77 setBackgroundColor_];

  [v80 setNumberOfLines_];
  [v79 setNumberOfLines_];
  v67 = v85;
  __swift_project_boxed_opaque_existential_1((v85 + 16), *(v85 + 40));
  sub_22083BAE4(v75);
  __swift_project_boxed_opaque_existential_1((v67 + 16), *(v67 + 40));
  sub_22083BD70(v57, *(v83 + v78[8]) != 2);
  __swift_project_boxed_opaque_existential_1((v67 + 16), *(v67 + 40));
  sub_22083C0A8(v39, v81);
  v68 = *(v74 + v76[16]);
  if (v68 == 2)
  {
    goto LABEL_12;
  }

  if (v68 == 1)
  {
    [v82 setHidden_];
    [v86 setHidden_];
    [v84 setFrame_];
    v69 = __swift_project_boxed_opaque_existential_1((v85 + 16), *(v85 + 40));
    v70 = *(*v69 + 40);
    v71 = *(*v69 + 48);
    __swift_project_boxed_opaque_existential_1((*v69 + 16), v70);
    v72 = (*(*(v71 + 16) + 168))(v70);
    [v84 setBackgroundColor_];

    return;
  }

  if (v68)
  {
    sub_22089267C();
    __break(1u);
  }

  else
  {
LABEL_12:
    [v84 setHidden_];
    [v82 setFrame_];
    v73 = v78[7];
    memcpy(__dst, (v74 + v76[12]), 0x1A1uLL);
    sub_220510818((v83 + v73), __dst, v82);
  }
}

uint64_t sub_22067B568()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

uint64_t sub_22067B5D4(uint64_t a1, uint64_t a2)
{
  result = sub_22067B62C(qword_281285FD0, a2, type metadata accessor for StockFeedMastheadViewRenderer, &unk_2208A7F20);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22067B62C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22067B674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for StockFeedPrewarmBlueprintModifier(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v25 - v14;
  v16 = OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stock;
  v17 = sub_22088685C();
  (*(*(v17 - 8) + 16))(v15, v3 + v16, v17);
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_priceDataManager, &v15[v8[5]]);
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_quoteDetailManager, &v15[v8[6]]);
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_watchlistManager, &v15[v8[7]]);
  v18 = qword_281298FA8;
  v25 = *(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_chartManager);
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  sub_220444494(&qword_281283238, type metadata accessor for StockFeedBlueprintModifierFactory, &unk_2208A80A0);
  sub_220886B3C();
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stockEarningsModelFactory, &v15[v8[16]]);
  v19 = v8[8];
  v20 = sub_220885D4C();
  (*(*(v20 - 8) + 16))(&v15[v19], a1, v20);
  v21 = MEMORY[0x277CC9578];
  sub_22067CF04(a2, &v15[v8[11]], &qword_281299480, MEMORY[0x277CC9578]);
  sub_22067CF04(a3, &v15[v8[12]], &qword_281299480, v21);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_appConfigurationManager), *(v4 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_appConfigurationManager + 24));
  sub_22088641C();
  LOBYTE(v19) = *(v4 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_newsSource);
  sub_22046DA2C(v4 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability, &v15[v8[13]]);
  *&v15[v8[14]] = v25;
  v15[v8[10]] = v19;
  sub_22067CC94(v15, v11, type metadata accessor for StockFeedPrewarmBlueprintModifier);
  sub_2205E7490(0, v22);
  swift_allocObject();
  sub_220444494(&qword_281283078, type metadata accessor for StockFeedPrewarmBlueprintModifier, &unk_22089E094);
  v23 = sub_22088B66C();
  sub_22067D274(v15, type metadata accessor for StockFeedPrewarmBlueprintModifier);
  return v23;
}

uint64_t sub_22067BA34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_sectionFactory, v15);
  v7 = *(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_offlineManager);
  v8 = *(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_newsSource);
  v14[0] = 0x6C6961467377654ELL;
  v14[1] = 0xEA00000000006465;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v15[5] = v7;
  v16 = v8;
  sub_22067CE00(v14, &v13);
  sub_2205E7490(0, v9);
  swift_allocObject();
  sub_22067CE5C();
  v10 = v7;

  v11 = sub_22088B66C();
  sub_22067CEB0(v14);
  return v11;
}

uint64_t sub_22067BB34()
{
  v1 = OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stock;
  v2 = sub_22088685C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_priceDataManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_quoteDetailManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_watchlistManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_appConfigurationManager));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_sectionFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stockEarningsModelFactory));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_22067BC24()
{
  sub_22067BB34();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockFeedBlueprintModifierFactory(uint64_t a1)
{
  result = qword_281283220;
  if (!qword_281283220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22067BCD0(uint64_t a1)
{
  result = sub_22088685C();
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

uint64_t sub_22067BDF0(uint64_t a1)
{
  v3 = *v1;
  sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_sectionFactory, v10);
  v4 = *(v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_newsSource);
  v9[0] = 0x4468736572666552;
  v9[1] = 0xEB00000000617461;
  v9[2] = a1;
  v10[40] = v4;
  sub_22067D11C(v9, &v8);
  sub_2205E7490(0, v5);
  swift_allocObject();
  sub_22067D178();

  v6 = sub_22088B66C();
  sub_22067D1CC(v9);
  return v6;
}

uint64_t sub_22067BEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22046DA2C(*v3 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_sectionFactory, &v15);
  strcpy(v11, "NewsExpandData");
  v11[15] = -18;
  v12 = a1;
  v13 = a2;
  v14 = a3;
  sub_22067D018(v11, &v10);
  sub_2205E7490(0, v7);
  swift_allocObject();
  sub_22067D074();

  v8 = sub_22088B66C();
  sub_22067D0C8(v11);
  return v8;
}

uint64_t sub_22067BFA8(uint64_t a1)
{
  v3 = type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v18 - v9;
  v11 = *v1;
  v13 = *(v12 + 20);
  v14 = sub_220885D4C();
  (*(*(v14 - 8) + 16))(&v10[v13], a1, v14);
  sub_22046DA2C(v11 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability, &v10[*(v3 + 24)]);
  *v10 = 0xD000000000000012;
  *(v10 + 1) = 0x80000002208BF650;
  sub_22067CC94(v10, v6, type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier);
  sub_2205E7490(0, v15);
  swift_allocObject();
  sub_220444494(qword_28127FA38, type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier, &unk_2208AE718);
  v16 = sub_22088B66C();
  sub_22067D274(v10, type metadata accessor for StockFeedPriceChangeDisplayBlueprintModifier);
  return v16;
}

uint64_t sub_22067C190(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  sub_2205E7490(0, a1);
  v8 = swift_allocObject();
  a6(v8, v9);
  return sub_22088B66C();
}

uint64_t sub_22067C1FC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier(0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = (&v23 - v15);
  v17 = *v4;
  sub_22067CC94(a1, &v23 + *(v18 + 20) - v15, type metadata accessor for StockFeedQuoteData);
  v19 = MEMORY[0x277CC9578];
  sub_22067CF04(a3, v16 + v9[7], &qword_281299480, MEMORY[0x277CC9578]);
  sub_22067CF04(a4, v16 + v9[8], &qword_281299480, v19);
  sub_22046DA2C(v17 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stockEarningsModelFactory, v16 + v9[9]);
  sub_22046DA2C(v17 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability, v16 + v9[10]);
  *v16 = 0xD000000000000010;
  v16[1] = 0x80000002208CB210;
  *(v16 + v9[6]) = a2;
  sub_22067CC94(v16, v12, type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier);
  sub_2205E7490(0, v20);
  swift_allocObject();
  sub_220444494(&qword_28127FF60, type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier, &unk_2208B01A4);
  v21 = sub_22088B66C();
  sub_22067D274(v16, type metadata accessor for StockFeedReplaceQuoteDataBlueprintModifier);
  return v21;
}

uint64_t sub_22067C444(char a1)
{
  sub_22046DA2C(*v1 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability, &v9);
  v7[0] = 0xD000000000000010;
  v7[1] = 0x80000002208CB1F0;
  v8 = a1;
  sub_22067CCFC(v7, &v6);
  sub_2205E7490(0, v3);
  swift_allocObject();
  sub_22067CD58();
  v4 = sub_22088B66C();
  sub_22067CDAC(v7);
  return v4;
}

uint64_t sub_22067C4F4(uint64_t a1)
{
  refreshed = type metadata accessor for StockFeedEarningsRefreshBlueprintModifier(0);
  MEMORY[0x28223BE20](refreshed, v3);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v13 - v8;
  sub_22067CC94(a1, &v13 - v8, type metadata accessor for StockEarningsModel);
  sub_22067CC94(v9, v5, type metadata accessor for StockFeedEarningsRefreshBlueprintModifier);
  sub_2205E7490(0, v10);
  swift_allocObject();
  sub_220444494(&qword_27CF58560, type metadata accessor for StockFeedEarningsRefreshBlueprintModifier, &unk_2208A7D54);
  v11 = sub_22088B66C();
  sub_22067D274(v9, type metadata accessor for StockFeedEarningsRefreshBlueprintModifier);
  return v11;
}

uint64_t sub_22067C650(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StockFeedChartUpdateBlueprintModifier(0);
  MEMORY[0x28223BE20](updated, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - v11;
  v13 = *v2;
  sub_22067CF04(a1, &v20 + *(v14 + 20) - v11, &unk_2812990E0, MEMORY[0x277D697C0]);
  v15 = *(updated + 24);
  v16 = sub_220885D4C();
  (*(*(v16 - 8) + 16))(&v12[v15], a2, v16);
  sub_22046DA2C(v13 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability, &v12[*(updated + 28)]);
  *v12 = 0x6470557472616843;
  *(v12 + 1) = 0xEB00000000657461;
  sub_22067CC94(v12, v8, type metadata accessor for StockFeedChartUpdateBlueprintModifier);
  sub_2205E7490(0, v17);
  swift_allocObject();
  sub_220444494(qword_281281368, type metadata accessor for StockFeedChartUpdateBlueprintModifier, &unk_2208AD650);
  v18 = sub_22088B66C();
  sub_22067D274(v12, type metadata accessor for StockFeedChartUpdateBlueprintModifier);
  return v18;
}

uint64_t sub_22067C8CC(uint64_t a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v50 = a8;
  v47 = a6;
  v48 = a7;
  v45 = a4;
  v46 = a5;
  v44 = a3;
  v43 = a2;
  v49 = a10;
  v58 = a14;
  v59 = a17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57);
  (*(*(a14 - 8) + 32))(boxed_opaque_existential_1, a9, a14);
  v55 = a15;
  v56 = a18;
  v21 = __swift_allocate_boxed_opaque_existential_1(v54);
  (*(*(a15 - 8) + 32))(v21, a11, a15);
  v52 = a16;
  v53 = a19;
  v22 = __swift_allocate_boxed_opaque_existential_1(&v51);
  (*(*(a16 - 8) + 32))(v22, a12, a16);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v57, v58);
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = (&v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27, v25);
  v29 = __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  v30 = MEMORY[0x28223BE20](v29, v29);
  v32 = (&v43 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v32, v30);
  v34 = *v27;
  v35 = *v32;
  v36 = (v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_sectionFactory);
  v36[3] = type metadata accessor for StockFeedSectionFactory();
  v36[4] = &off_28341EFB8;
  *v36 = v34;
  v37 = (v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stockEarningsModelFactory);
  v37[3] = type metadata accessor for StockEarningsModelFactory();
  v37[4] = &off_2834129F8;
  *v37 = v35;
  v38 = OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_stock;
  v39 = sub_22088685C();
  (*(*(v39 - 8) + 32))(v23 + v38, a1, v39);
  sub_220457328(v43, v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_priceDataManager);
  sub_220457328(v44, v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_quoteDetailManager);
  sub_220457328(v45, v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_watchlistManager);
  v40 = (v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_chartManager);
  v41 = v47;
  *v40 = v46;
  v40[1] = v41;
  sub_220457328(v48, v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_appConfigurationManager);
  *(v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_offlineManager) = v50;
  *(v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_newsSource) = v49 & 1;
  sub_220457328(&v51, v23 + OBJC_IVAR____TtC8StocksUI33StockFeedBlueprintModifierFactory_featureAvailability);
  __swift_destroy_boxed_opaque_existential_1(v54);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return v23;
}

uint64_t sub_22067CC94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22067CD58()
{
  result = qword_27CF58570;
  if (!qword_27CF58570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58570);
  }

  return result;
}

unint64_t sub_22067CE5C()
{
  result = qword_2812818B0;
  if (!qword_2812818B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812818B0);
  }

  return result;
}

uint64_t sub_22067CF04(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_22067CF70(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_22067CF70(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_22067CFC4()
{
  result = qword_27CF58578;
  if (!qword_27CF58578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58578);
  }

  return result;
}

unint64_t sub_22067D074()
{
  result = qword_281280510;
  if (!qword_281280510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281280510);
  }

  return result;
}

unint64_t sub_22067D178()
{
  result = qword_27CF58580;
  if (!qword_27CF58580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58580);
  }

  return result;
}

unint64_t sub_22067D220()
{
  result = qword_2812824C8[0];
  if (!qword_2812824C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812824C8);
  }

  return result;
}

uint64_t sub_22067D274(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22067D2D4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088699C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  v10 = (*(v5 + 88))(v9, v4);
  if (v10 == *MEMORY[0x277D69898])
  {
    v11 = MEMORY[0x277D682A0];
LABEL_17:
    v12 = *v11;
    v13 = sub_22088915C();
    return (*(*(v13 - 8) + 104))(a1, v12, v13);
  }

  if (v10 == *MEMORY[0x277D698A0])
  {
    v11 = MEMORY[0x277D682A8];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69870])
  {
    v11 = MEMORY[0x277D68280];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69888])
  {
    v11 = MEMORY[0x277D68290];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69878])
  {
    v11 = MEMORY[0x277D68288];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69890])
  {
    v11 = MEMORY[0x277D68298];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69880])
  {
    v11 = MEMORY[0x277D682B0];
    goto LABEL_17;
  }

  if (v10 == *MEMORY[0x277D69868])
  {
    v11 = MEMORY[0x277D68278];
    goto LABEL_17;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for StockFeedRouteModel(uint64_t a1)
{
  result = qword_281299710;
  if (!qword_281299710)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22067D554(uint64_t a1)
{
  type metadata accessor for StocksActivity.Article(319);
  if (v1 <= 0x3F)
  {
    sub_2205BAAE4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22067D5C8(uint64_t a1)
{
  if (qword_281298DB8 != -1)
  {
    swift_once();
  }

  v2 = *(a1 + 16);
  if (v2 && (v3 = sub_220588764(v2, 0), v4 = sub_22067DCB0(v12, v3 + 4, v2, a1), v5 = v12[0], , sub_22067DE08(v5), v4 != v2))
  {
    __break(1u);
  }

  else
  {
    v6 = sub_22089172C();
    v8 = v7;

    if (v8)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0;
    }

    if (v8)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0xE000000000000000;
    }

    v12[0] = v10;
    v12[1] = v11;
    sub_2204B81A4(&qword_2812814B0, v9, type metadata accessor for PresentationOperationManagerDataStore, &unk_2208A81C8);
    sub_220886C6C();

    sub_2204B81EC(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8);
    swift_allocObject();
    sub_220888ECC();
  }
}

uint64_t sub_22067D7EC(uint64_t a1)
{
  sub_22046EAA0(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27CF55A50 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&unk_2812814B8, v3, type metadata accessor for PresentationOperationManagerDataStore, &unk_2208A8188);
  sub_220886B3C();
  v6 = sub_22088516C();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_22044D888(0, &qword_27CF58588, sub_22046EAA0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22067D970(uint64_t a1, uint64_t a2)
{
  if (qword_27CF55A50 != -1)
  {
    swift_once();
  }

  sub_2204B81A4(&qword_2812814B0, a2, type metadata accessor for PresentationOperationManagerDataStore, &unk_2208A81C8);
  sub_220886C6C();
  sub_2204B81EC(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8);
  swift_allocObject();
  return sub_220888ECC();
}

uint64_t sub_22067DA50(unsigned int (**a1)(char *, uint64_t, uint64_t), char *a2, uint64_t a3)
{
  sub_22052EA18(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088698C();
  v24 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = *(v3 + 16);

  sub_22067DE80(v3, type metadata accessor for ForYouSection);
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  sub_22063C15C(0);
  result = swift_allocObject();
  v18 = result;
  *(result + 16) = sub_22063C154;
  *(result + 24) = v15;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = v18;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v23 = a1;
    a1 = (v24 + 48);
    v19 = (v24 + 32);
    v20 = 1;
    while (1)
    {
      (*(v18 + 16))();
      if ((*a1)(v10, 1, v11) == 1)
      {
        break;
      }

      v21 = *v19;
      (*v19)(v14, v10, v11);
      v21(a2, v14, v11);
      if (a3 == v20)
      {
        goto LABEL_12;
      }

      a2 += *(v24 + 72);
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_22067DE80(v10, sub_22052EA18);
    a3 = v20 - 1;
LABEL_12:
    a1 = v23;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

void *sub_22067DCB0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_22067DE10()
{
  result = qword_28127E958;
  if (!qword_28127E958)
  {
    sub_2204B9618();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127E958);
  }

  return result;
}

uint64_t sub_22067DE80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22067DEE0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (([*v1 isFullTrackAvailableToAll] & 1) == 0)
  {
    v4 = *(v1 + *(type metadata accessor for StocksAudioTrack(0) + 24));
    if ([v3 respondsToSelector_])
    {
      v5 = v4;
      v6 = [v3 narrativeTrackSample];
      if (v6)
      {
        v7 = v6;
        sub_22067DFFC();
        v8 = sub_22089208C();

        if (v8)
        {
          v9 = MEMORY[0x277D68468];
          goto LABEL_8;
        }
      }

      else
      {
      }
    }
  }

  v9 = MEMORY[0x277D68460];
LABEL_8:
  v10 = *v9;
  v11 = sub_2208893AC();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

unint64_t sub_22067DFFC()
{
  result = qword_28127E768;
  if (!qword_28127E768)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E768);
  }

  return result;
}

uint64_t sub_22067E048()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58590 = result;
  return result;
}

uint64_t sub_22067E238()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF58598 = result;
  return result;
}

uint64_t sub_22067E428()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF585A0 = result;
  return result;
}

uint64_t sub_22067E618()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(&v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[15] = 0;
  sub_2204643A4(0, &qword_281298CC8, MEMORY[0x277D839B0], MEMORY[0x277D6D0E8]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF585A8 = result;
  return result;
}

uint64_t sub_22067E808()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088516C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_22088506C();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D090], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  sub_220667264(0);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298F88 = result;
  return result;
}

uint64_t sub_22067EA30()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D090], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[1] = 0;
  sub_2204643A4(0, &qword_281298CC0, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_281298F70 = result;
  return result;
}

uint64_t sub_22067EC20()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v7 = MEMORY[0x28223BE20](v5, v6);
  (*(v9 + 104))(v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277D6D098], v7);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  v11[1] = 0;
  sub_2204643A4(0, &qword_281298CC0, MEMORY[0x277D83B88], MEMORY[0x277D6D120]);
  swift_allocObject();
  result = sub_220886C5C();
  qword_27CF585B0 = result;
  return result;
}

uint64_t sub_22067EE10()
{
  v0 = sub_220886BEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204643A4(0, &unk_27CF58368, MEMORY[0x277D839F8], MEMORY[0x277D6D0F8]);
  v12[0] = "rnings.config_override";
  v12[1] = v10;
  v14 = 0xBFF0000000000000;
  (*(v6 + 104))(v9, *MEMORY[0x277D6D098], v5);
  sub_22067F778(0);
  sub_22067F7D0();
  *(swift_allocObject() + 16) = xmmword_2208A8290;
  v13 = 0xBFF0000000000000;
  sub_220886BFC();
  v13 = 0x404E000000000000;
  sub_220886BFC();
  v13 = 0x4066800000000000;
  sub_220886BFC();
  v13 = 0x4072C00000000000;
  sub_220886BFC();
  v13 = 0x4082C00000000000;
  sub_220886BFC();
  v13 = 0x408C200000000000;
  sub_220886BFC();
  v13 = 0x4092C00000000000;
  sub_220886BFC();
  v13 = 0x409C200000000000;
  sub_220886BFC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6D0A8], v0);
  result = sub_220886C1C();
  qword_27CF585B8 = result;
  return result;
}

uint64_t Settings.Tips.Earnings.ConfigOverrides.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v6 + 16))(v9, a4, v5);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Tips.Earnings.ConfigOverrides.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_220886BDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  (*(v6 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v5, v8);
  v10 = sub_220886B6C();
  (*(v6 + 8))(a4, v5);
  return v10;
}

uint64_t Settings.Tips.Earnings.ConfigOverrides.__deallocating_deinit()
{
  _s11TeaSettings0B0C8StocksUIE4TipsV8EarningsV15ConfigOverridesCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_22067F52C()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v9 = &v12 - v8;
  (*(v1 + 104))(&v12 - v8, *MEMORY[0x277D6D098], v0, v7);
  type metadata accessor for Settings.Tips.Earnings.ConfigOverrides(0);
  swift_allocObject();
  (*(v1 + 16))(v4, v9, v0);
  v10 = sub_220886B6C();
  result = (*(v1 + 8))(v9, v0);
  qword_281298F28 = v10;
  return result;
}

uint64_t type metadata accessor for Settings.Tips.Earnings.ConfigOverrides(uint64_t a1)
{
  result = qword_281298F58;
  if (!qword_281298F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22067F778(uint64_t a1)
{
  if (!qword_27CF585C0)
  {
    sub_22067F7D0();
    v1 = sub_22089288C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF585C0);
    }
  }
}

void sub_22067F7D0()
{
  if (!qword_27CF585C8)
  {
    v0 = sub_220886C0C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF585C8);
    }
  }
}

char *sub_22067F820(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v12 = OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_onTap;
  sub_22049D9F4();
  *&v6[v12] = [objc_allocWithZone(v13) init];
  v14 = OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton;
  *&v6[v14] = [objc_opt_self() buttonWithType_];
  v26.receiver = v6;
  v26.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v26, sel_initWithFrame_, a1, a2, a3, a4);
  v16 = OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton;
  v17 = *&v15[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_newWatchlistButton];
  v18 = v15;
  [v18 addSubview_];
  v19 = *&v15[v16];
  v20 = *&v18[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_onTap];
  v21 = v19;
  sub_22088E18C();

  [v18 setIsAccessibilityElement_];
  v22 = *MEMORY[0x277D76548];
  v23 = [v18 accessibilityTraits];
  if ((v22 & ~v23) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  [v18 setAccessibilityTraits_];

  return v18;
}

void sub_22067FAE8(__n128 a1)
{
  v1 = sub_22088E14C();
}

void sub_22067FB28()
{
  sub_22067FBB4(&qword_27CF56CC0, &unk_2208A831C);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22067FBB4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CreateWatchlistView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for ComputationalGraphDebugView(uint64_t a1)
{
  result = qword_27CF585E8;
  if (!qword_27CF585E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22067FC68(uint64_t a1)
{
  sub_22067FD1C();
  if (v1 <= 0x3F)
  {
    sub_220479FF0(319, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_22067FD1C()
{
  result = qword_27CF585F8;
  if (!qword_27CF585F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF585F8);
  }

  return result;
}

uint64_t sub_22067FD9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v49 = a2;
  sub_220682484(0);
  v48 = v3;
  v58 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v57 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v54 = &v43 - v8;
  sub_2206822F4(0);
  v47 = v9;
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v55 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v43 - v14;
  sub_220681FF8(0);
  v17 = *(v16 - 8);
  v52 = v16;
  v53 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v51 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v50 = &v43 - v22;
  sub_22088EFFC();
  sub_220682B74(0, &qword_27CF58618, MEMORY[0x277CE0338]);
  sub_220682780();
  sub_22088F0BC();
  sub_22088EFFC();
  v60 = a1;
  sub_220479FF0(0, &qword_27CF58658, sub_22068238C, MEMORY[0x277CE14B8]);
  sub_22068271C(&qword_27CF586C8, &qword_27CF58658, sub_22068238C);
  v46 = v15;
  sub_22088F0BC();
  sub_22088EFFC();
  v59 = a1;
  sub_22068251C(0, &qword_27CF58680, sub_220682588, MEMORY[0x277CE0338]);
  sub_22068288C();
  v23 = v54;
  sub_22088F0BC();
  v44 = *(v53 + 16);
  v24 = v51;
  v25 = v52;
  v44(v51, v50, v52);
  v45 = *(v56 + 16);
  v26 = v47;
  v45(v55, v15, v47);
  v27 = v57;
  v28 = *(v58 + 16);
  v29 = v48;
  v28(v57, v23, v48);
  v30 = v28;
  v31 = v49;
  v32.n128_f64[0] = v44(v49, v24, v25);
  sub_220681F70(0, v32);
  v34 = v33;
  v35 = v55;
  v36 = v26;
  v45(&v31[*(v33 + 48)], v55, v26);
  v30(&v31[*(v34 + 64)], v27, v29);
  v37 = *(v58 + 8);
  v38 = v29;
  v37(v54, v29);
  v39 = *(v56 + 8);
  v39(v46, v36);
  v40 = v52;
  v41 = *(v53 + 8);
  v41(v50, v52);
  v37(v57, v38);
  v39(v35, v36);
  return (v41)(v51, v40);
}

uint64_t sub_22068034C@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = sub_2208913BC();
  v41 = *(v1 - 8);
  v42 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_220888C8C();
  MEMORY[0x28223BE20](v35, v5);
  v36 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_22088E55C();
  v8 = MEMORY[0x28223BE20](v38, v7);
  v37 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206821FC(0, v8);
  v11 = v10;
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v39 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220682B74(0, &qword_27CF58700, MEMORY[0x277CE0330]);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v34 - v16;
  sub_22068207C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v21);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220886BCC();
  sub_220886BAC();
  sub_220886AFC();
  sub_220886B9C();

  v25 = v44;
  v24 = v45;

  v26 = HIBYTE(v24) & 0xF;
  if ((v24 & 0x2000000000000000) == 0)
  {
    v26 = v25 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v34[1] = v19;
    sub_22088498C();
    swift_allocObject();
    sub_22088497C();
    sub_220886BAC();
    sub_220886AFC();
    sub_220886B9C();

    sub_2208913AC();
    v27 = sub_22089137C();
    v29 = v28;

    (*(v41 + 8))(v4, v42);
    if (v29 >> 60 == 15)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {
      sub_2206822AC(&qword_27CF586F8, MEMORY[0x277D6CED0], MEMORY[0x277D6CEE0]);
      sub_22088496C();
      sub_2204B9058(v27, v29);

      v30 = v11;
      sub_22088E54C();
      sub_2206822AC(&qword_27CF58648, MEMORY[0x277D6EC18], MEMORY[0x277D6EC10]);
      v31 = v39;
      sub_22088EF9C();
      v32 = v40;
      (*(v40 + 16))(v17, v31, v30);
      swift_storeEnumTagMultiPayload();
      sub_2206822AC(&qword_27CF586B8, sub_22068207C, MEMORY[0x277CDF188]);
      sub_2206822AC(&qword_27CF586C0, sub_2206821FC, MEMORY[0x277CDD938]);
      sub_22088F03C();
      return (*(v32 + 8))(v31, v30);
    }
  }

  else
  {
    sub_22088F0FC();
    (*(v20 + 16))(v17, v23, v19);
    swift_storeEnumTagMultiPayload();
    sub_2206822AC(&qword_27CF586B8, sub_22068207C, MEMORY[0x277CDF188]);
    sub_2206822AC(&qword_27CF586C0, sub_2206821FC, MEMORY[0x277CDD938]);
    sub_22088F03C();
    return (*(v20 + 8))(v23, v19);
  }

  return result;
}

uint64_t sub_220680A30@<X0>(uint64_t a1@<X8>)
{
  sub_22088EFFC();
  result = sub_22088F07C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_220680AA8@<X0>(uint64_t a1@<X8>)
{
  sub_22088EFFC();
  result = sub_22088F07C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

double sub_220680B20@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v99 = a2;
  sub_22068251C(0, &qword_27CF586E8, sub_2206821FC, MEMORY[0x277CE0330]);
  v97 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v96 = (&v78 - v5);
  v81 = sub_22088E55C();
  v7 = MEMORY[0x28223BE20](v81, v6);
  v80 = &v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206821FC(0, v7);
  v98 = v9;
  v83 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v82 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220479FF0(0, &qword_27CF586F0, MEMORY[0x277D6CED0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v78 - v14;
  v85 = sub_220888C8C();
  v86 = *(v85 - 8);
  MEMORY[0x28223BE20](v85, v16);
  v79 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v84 = &v78 - v20;
  sub_22068251C(0, &qword_27CF58670, sub_2206821FC, MEMORY[0x277CE0338]);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v104 = &v78 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v78 - v26;
  v28 = sub_22088EFEC();
  MEMORY[0x28223BE20](v28 - 8, v29);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088A75C();
  if (v30)
  {
    sub_22088EFDC();
    sub_22088EFCC();
    sub_22088EFBC();

    sub_22088EFCC();
    sub_22088F00C();
    v105 = sub_22088F07C();
    v106 = v31;
    v107 = v32 & 1;
    v108 = v33;
    v109 = 0;
  }

  else
  {
    sub_22088EFFC();
    v105 = sub_22088F07C();
    v106 = v35;
    v107 = v34 & 1;
    v108 = v36;
    v109 = 1;
  }

  sub_22088F03C();
  v102 = v110;
  v103 = v111;
  v37 = v112;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v93 = *(&v102 + 1);
  v94 = v102;
  v91 = *(&v103 + 1);
  v92 = v103;
  v95 = v37;
  sub_22068296C(v102, *(&v102 + 1), v103, *(&v103 + 1));
  sub_22088A74C();
  if (v38)
  {
    sub_22088EFDC();
    sub_22088EFCC();
    sub_22088EFBC();

    sub_22088EFCC();
    sub_22088F00C();
    v105 = sub_22088F07C();
    v106 = v39;
    v107 = v40 & 1;
    v108 = v41;
    v109 = 0;
  }

  else
  {
    sub_22088EFFC();
    v105 = sub_22088F07C();
    v106 = v43;
    v107 = v42 & 1;
    v108 = v44;
    v109 = 1;
  }

  sub_22088F03C();
  v101 = v111;
  v100 = v110;
  v45 = v112;
  v46 = v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v87 = *(&v100 + 1);
  v90 = v100;
  v88 = *(&v101 + 1);
  v89 = v101;
  v47 = v45;
  sub_22068296C(v100, *(&v100 + 1), v101, *(&v101 + 1));
  v48 = sub_22088A73C();
  if (v49 >> 60 == 15)
  {
    sub_22088EFFC();
    v54 = sub_22088F07C();
    v55 = v96;
    *v96 = v54;
    v55[1] = v56;
    *(v55 + 16) = v57 & 1;
    v55[3] = v58;
    swift_storeEnumTagMultiPayload();
    sub_2206822AC(&qword_27CF586C0, sub_2206821FC, MEMORY[0x277CDD938]);
    sub_22088F03C();
  }

  else
  {
    v50 = v48;
    v51 = v49;
    v52 = v15;
    sub_22088498C();
    swift_allocObject();
    sub_22088497C();
    sub_2206822AC(&qword_27CF586F8, MEMORY[0x277D6CED0], MEMORY[0x277D6CEE0]);
    v53 = v85;
    sub_22088496C();

    v73 = v86;
    (*(v86 + 56))(v52, 0, 1, v53);
    v74 = v84;
    (*(v73 + 32))(v84, v52, v53);
    (*(v73 + 16))(v79, v74, v53);
    sub_22088E54C();
    sub_2206822AC(&qword_27CF58648, MEMORY[0x277D6EC18], MEMORY[0x277D6EC10]);
    v75 = v82;
    sub_22088EF9C();
    v76 = v83;
    v77 = v98;
    (*(v83 + 16))(v96, v75, v98);
    swift_storeEnumTagMultiPayload();
    sub_2206822AC(&qword_27CF586C0, sub_2206821FC, MEMORY[0x277CDD938]);
    sub_22088F03C();
    sub_2204B9058(v50, v51);
    (*(v76 + 8))(v75, v77);
    (*(v73 + 8))(v84, v53);
  }

  v59 = MEMORY[0x277CE0338];
  v60 = v46;
  v98 = v46;
  v61 = v104;
  sub_2206829B8(v60, v104, &qword_27CF58670, sub_2206821FC, MEMORY[0x277CE0338], sub_22068251C);
  v62 = v99;
  v63 = v103;
  *v99 = v102;
  v62[1] = v63;
  *(v62 + 32) = v95;
  *(v62 + 56) = v101;
  *(v62 + 40) = v100;
  *(v62 + 72) = v47;
  sub_22068238C(0);
  sub_2206829B8(v61, v62 + *(v64 + 64), &qword_27CF58670, sub_2206821FC, v59, sub_22068251C);
  v65 = v94;
  v66 = v93;
  LOBYTE(v59) = v92;
  v67 = v91;
  sub_22068296C(v94, v93, v92, v91);
  v68 = v90;
  v69 = v87;
  v70 = v89;
  v71 = v88;
  sub_22068296C(v90, v87, v89, v88);
  sub_220682A2C(v68, v69, v70, v71);
  sub_220682A2C(v65, v66, v59, v67);
  sub_220682A78(v98);
  sub_220682A78(v104);
  sub_220682A2C(v68, v69, v70, v71);
  return sub_220682A2C(v65, v66, v59, v67);
}

uint64_t sub_2206817AC@<X0>(uint64_t a1@<X8>)
{
  sub_22088EFFC();
  result = sub_22088F07C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_220681824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  sub_22068251C(0, &qword_27CF586E0, sub_220682588, MEMORY[0x277CE0330]);
  v50 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v44 - v5;
  sub_220682588(0);
  v8 = v7;
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v47 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC9260];
  v12 = MEMORY[0x277D83D88];
  sub_220479FF0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v44 - v19;
  v21 = sub_220884E9C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v45 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v46 = &v44 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &v44 - v30;
  v32 = type metadata accessor for ComputationalGraphDebugView(0);
  sub_2206829B8(v49 + *(v32 + 20), v20, &qword_2812994E0, v11, v12, sub_220479FF0);
  v33 = *(v22 + 48);
  if (v33(v20, 1, v21) == 1)
  {
    v16 = v20;
LABEL_5:
    sub_220682B04(v16, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_22088EFFC();
    *v6 = sub_22088F07C();
    *(v6 + 1) = v35;
    v6[16] = v36 & 1;
    *(v6 + 3) = v37;
    swift_storeEnumTagMultiPayload();
    sub_2206822AC(&qword_27CF586D8, sub_220682588, MEMORY[0x277CDF188]);
    return sub_22088F03C();
  }

  v44 = v8;
  v49 = a2;
  v34 = *(v22 + 32);
  v34(v31, v20, v21);
  sub_220884E2C();
  if (v33(v16, 1, v21) == 1)
  {
    (*(v22 + 8))(v31, v21);
    goto LABEL_5;
  }

  v39 = v46;
  v34(v46, v16, v21);
  (*(v22 + 16))(v45, v39, v21);
  v40 = v47;
  sub_22088F0EC();
  v41 = v48;
  v42 = v44;
  (*(v48 + 16))(v6, v40, v44);
  swift_storeEnumTagMultiPayload();
  sub_2206822AC(&qword_27CF586D8, sub_220682588, MEMORY[0x277CDF188]);
  sub_22088F03C();
  (*(v41 + 8))(v40, v42);
  v43 = *(v22 + 8);
  v43(v39, v21);
  return (v43)(v31, v21);
}

uint64_t sub_220681E10@<X0>(uint64_t a1@<X8>)
{
  sub_22088EFFC();
  result = sub_22088F07C();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_220681EB4()
{
  sub_220479FF0(0, &qword_27CF58600, sub_220681F70, MEMORY[0x277CE14B8]);
  sub_22068271C(&qword_27CF586A8, &qword_27CF58600, sub_220681F70);
  return sub_22088F05C();
}

void sub_220681F70(uint64_t a1, __n128 a2)
{
  if (!qword_27CF58608)
  {
    sub_220681FF8(255);
    sub_2206822F4(255);
    sub_220682484(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF58608);
    }
  }
}

void sub_220681FF8(uint64_t a1)
{
  if (!qword_27CF58610)
  {
    sub_220682B74(255, &qword_27CF58618, MEMORY[0x277CE0338]);
    v1 = sub_22088F0CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58610);
    }
  }
}

void sub_22068207C(uint64_t a1)
{
  if (!qword_27CF58620)
  {
    sub_220682158();
    sub_2206822AC(&qword_27CF58630, sub_220682158, MEMORY[0x277D84238]);
    sub_2206821A8();
    v1 = sub_22088F10C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58620);
    }
  }
}

void sub_220682158()
{
  if (!qword_27CF58628)
  {
    v0 = sub_2208925BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58628);
    }
  }
}

unint64_t sub_2206821A8()
{
  result = qword_27CF58638;
  if (!qword_27CF58638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58638);
  }

  return result;
}

void sub_2206821FC(uint64_t a1, __n128 a2)
{
  if (!qword_27CF58640)
  {
    sub_22088E55C();
    sub_2206822AC(&qword_27CF58648, MEMORY[0x277D6EC18], MEMORY[0x277D6EC10]);
    v2 = sub_22088EFAC();
    if (!v3)
    {
      atomic_store(v2, &qword_27CF58640);
    }
  }
}

uint64_t sub_2206822AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2206822F4(uint64_t a1)
{
  if (!qword_27CF58650)
  {
    sub_220479FF0(255, &qword_27CF58658, sub_22068238C, MEMORY[0x277CE14B8]);
    v1 = sub_22088F0CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58650);
    }
  }
}

void sub_22068238C(uint64_t a1)
{
  if (!qword_27CF58660)
  {
    sub_220682430();
    sub_22068251C(255, &qword_27CF58670, sub_2206821FC, MEMORY[0x277CE0338]);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CF58660);
    }
  }
}

void sub_220682430()
{
  if (!qword_27CF58668)
  {
    v0 = sub_22088F04C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58668);
    }
  }
}

void sub_220682484(uint64_t a1)
{
  if (!qword_27CF58678)
  {
    sub_22068251C(255, &qword_27CF58680, sub_220682588, MEMORY[0x277CE0338]);
    v1 = sub_22088F0CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58678);
    }
  }
}

void sub_22068251C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x277CE0BD8]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_220682588(uint64_t a1)
{
  if (!qword_27CF58688)
  {
    sub_220479FF0(255, &qword_27CF58690, MEMORY[0x277CC9260], MEMORY[0x277D84220]);
    sub_220682694();
    sub_2206822AC(&qword_27CF586A0, MEMORY[0x277CC9260], MEMORY[0x277CC4AE0]);
    v1 = sub_22088F10C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58688);
    }
  }
}

unint64_t sub_220682694()
{
  result = qword_27CF58698;
  if (!qword_27CF58698)
  {
    sub_220479FF0(255, &qword_27CF58690, MEMORY[0x277CC9260], MEMORY[0x277D84220]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58698);
  }

  return result;
}

uint64_t sub_22068271C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_220479FF0(255, a2, a3, MEMORY[0x277CE14B8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_220682780()
{
  result = qword_27CF586B0;
  if (!qword_27CF586B0)
  {
    sub_220682B74(255, &qword_27CF58618, MEMORY[0x277CE0338]);
    sub_2206822AC(&qword_27CF586B8, sub_22068207C, MEMORY[0x277CDF188]);
    sub_2206822AC(&qword_27CF586C0, sub_2206821FC, MEMORY[0x277CDD938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF586B0);
  }

  return result;
}

unint64_t sub_22068288C()
{
  result = qword_27CF586D0;
  if (!qword_27CF586D0)
  {
    sub_22068251C(255, &qword_27CF58680, sub_220682588, MEMORY[0x277CE0338]);
    sub_2206822AC(&qword_27CF586D8, sub_220682588, MEMORY[0x277CDF188]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF586D0);
  }

  return result;
}

uint64_t sub_22068296C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_2206829A8(a1, a2, a3 & 1);
}

uint64_t sub_2206829A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_2206829B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

double sub_220682A2C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_220682A68(a1, a2, a3 & 1);

  return result;
}

double sub_220682A68(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_220682A78(uint64_t a1)
{
  sub_22068251C(0, &qword_27CF58670, sub_2206821FC, MEMORY[0x277CE0338]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220682B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220479FF0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_220682B74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_22068207C(255);
    v7 = v6;
    sub_2206821FC(255, v8);
    v10 = a3(a1, v7, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_220682BE4(uint64_t a1)
{
  if (!qword_27CF58710)
  {
    sub_220479FF0(255, &qword_27CF58600, sub_220681F70, MEMORY[0x277CE14B8]);
    sub_22068271C(&qword_27CF586A8, &qword_27CF58600, sub_220681F70);
    v1 = sub_22088F06C();
    if (!v2)
    {
      atomic_store(v1, &qword_27CF58710);
    }
  }
}

id sub_220682CB4()
{
  result = sub_220682D0C(43, 0xE100000000000000, 45);
  qword_27CF6D008 = result;
  return result;
}

id sub_220682CE0()
{
  result = sub_220682D0C(0, 0xE000000000000000, 0);
  qword_27CF6D010 = result;
  return result;
}

id sub_220682D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v3 setNumberStyle_];
  sub_2204DD8BC();
  v4 = sub_22089205C();
  [v3 setMultiplier_];

  [v3 setMinimumFractionDigits_];
  [v3 setMaximumFractionDigits_];
  v5 = sub_22089132C();
  [v3 setPositivePrefix_];

  v6 = sub_22089132C();
  [v3 setNegativePrefix_];

  return v3;
}

uint64_t sub_220682E44(double a1, double a2)
{
  v3 = a1 - a2;
  v4 = a2 / v3;
  if (v3 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [objc_opt_self() bundleForClass_];
  if (a2 >= 0.0)
  {
    v23 = 0x80000002208CBB00;
  }

  else
  {
    v23 = 0x80000002208CBA90;
  }

  v8 = sub_220884CAC();
  v10 = v9;

  if (qword_27CF55AC0 != -1)
  {
    swift_once();
  }

  v11 = qword_27CF6D010;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v13 = [v11 stringFromNumber_];

  if (v13)
  {
    v14 = sub_22089136C();
    v16 = v15;

    v17 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8(0);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_220899920;
    v19 = MEMORY[0x277D837D0];
    *(v18 + 56) = MEMORY[0x277D837D0];
    v20 = sub_22048D860();
    *(v18 + 32) = v8;
    *(v18 + 40) = v10;
    *(v18 + 96) = v19;
    *(v18 + 104) = v20;
    *(v18 + 64) = v20;
    *(v18 + 72) = v14;
    *(v18 + 80) = v16;
    v21 = sub_22089133C();
  }

  else
  {

    return 0;
  }

  return v21;
}

uint64_t sub_2206830F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x277D85720];
  sub_220479938(0, &unk_28127E970, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v26 - v12;
  sub_22047BCF8(a3, v26 - v12, &unk_28127E970, v9);
  v14 = sub_22089180C();
  v15 = *(v14 - 8);
  LODWORD(v9) = (*(v15 + 48))(v13, 1, v14);

  if (v9 == 1)
  {
    sub_22047BD78(v13, &unk_28127E970, MEMORY[0x277D85720]);
  }

  else
  {
    sub_2208917FC();
    (*(v15 + 8))(v13, v14);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2208917CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_22089140C() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_22047BD78(a3, &unk_28127E970, MEMORY[0x277D85720]);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22047BD78(a3, &unk_28127E970, MEMORY[0x277D85720]);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_220683440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = MEMORY[0x277D83D88];
  sub_220479938(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for AttributionSource(0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v8 = sub_220885EBC();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  sub_22047BC64(0);
  v6[27] = v9;
  v6[28] = swift_task_alloc();
  sub_220479938(0, &qword_2812992A0, MEMORY[0x277D69520], v7);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v10 = sub_22088846C();
  v6[31] = v10;
  v6[32] = *(v10 - 8);
  v6[33] = swift_task_alloc();
  sub_220479938(0, &qword_281299218, MEMORY[0x277D69670], v7);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_2208917EC();
  v6[36] = sub_2208917DC();
  v12 = sub_2208917CC();
  v6[37] = v12;
  v6[38] = v11;

  return MEMORY[0x2822009F8](sub_22068371C, v12, v11);
}

uint64_t sub_22068371C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = v0[32];
    v2 = v0[33];
    v4 = v0[31];
    sub_22046DA2C(Strong + OBJC_IVAR____TtC8StocksUI19AttributionProvider_attributionAssetManager, (v0 + 2));

    v5 = v0[5];
    v6 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
    v7 = [objc_opt_self() mainScreen];
    [v7 scale];
    v9 = v8;

    (*(v3 + 104))(v2, *MEMORY[0x277D6CAB8], v4);
    v10 = swift_task_alloc();
    v0[39] = v10;
    *v10 = v0;
    v10[1] = sub_220683F38;
    v11 = v0[35];
    v12 = v0[33];
    v13 = v0[17];
    v14.n128_u64[0] = v9;

    return MEMORY[0x2821CF188](v11, v13, v12, v5, v6, v14);
  }

  v15 = v0[35];

  v16 = sub_22088625C();
  v17 = *(v16 - 8);
  (*(v17 + 56))(v15, 1, 1, v16);
  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (!v18)
  {
    goto LABEL_13;
  }

  v19 = v18;
  v66 = v17;
  v67 = v16;
  v20 = v0[30];
  v22 = v0[27];
  v21 = v0[28];
  v23 = v0[24];
  v24 = v0[25];
  (*(v24 + 16))(v20, v0[18], v23);
  (*(v24 + 56))(v20, 0, 1, v23);
  v25 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource;
  swift_beginAccess();
  v26 = *(v22 + 48);
  v27 = MEMORY[0x277D69520];
  sub_22047BCF8(v20, v21, &qword_2812992A0, MEMORY[0x277D69520]);
  sub_22047BCF8(v19 + v25, v21 + v26, &qword_2812992A0, v27);
  v28 = *(v24 + 48);
  if (v28(v21, 1, v23) != 1)
  {
    v30 = v0[24];
    sub_22047BCF8(v0[28], v0[29], &qword_2812992A0, MEMORY[0x277D69520]);
    v31 = v28(v21 + v26, 1, v30);
    v32 = v0[29];
    v33 = v0[30];
    if (v31 != 1)
    {
      v65 = v0[28];
      v36 = v0[25];
      v37 = v0[26];
      v38 = v0[24];
      (*(v36 + 32))(v37, v21 + v26, v38);
      sub_22047A5DC(&qword_2812992A8, MEMORY[0x277D69520], MEMORY[0x277D69528]);
      v39 = sub_2208912FC();
      v40 = *(v36 + 8);
      v40(v37, v38);
      v41 = MEMORY[0x277D69520];
      sub_22047BD78(v33, &qword_2812992A0, MEMORY[0x277D69520]);
      v40(v32, v38);
      sub_22047BD78(v65, &qword_2812992A0, v41);
      if (v39)
      {
        goto LABEL_15;
      }

LABEL_13:
      sub_22047BD78(v0[35], &qword_281299218, MEMORY[0x277D69670]);
      goto LABEL_23;
    }

    v34 = v0[24];
    v35 = v0[25];

    sub_22047BD78(v33, &qword_2812992A0, MEMORY[0x277D69520]);
    (*(v35 + 8))(v32, v34);
LABEL_12:
    sub_22047BDE8(v0[28], sub_22047BC64);
    goto LABEL_13;
  }

  v29 = v0[24];
  sub_22047BD78(v0[30], &qword_2812992A0, MEMORY[0x277D69520]);
  if (v28(v21 + v26, 1, v29) != 1)
  {

    goto LABEL_12;
  }

  sub_22047BD78(v0[28], &qword_2812992A0, MEMORY[0x277D69520]);
LABEL_15:
  v42 = sub_22089182C();
  v43 = v0[35];
  if (v42)
  {
    v44 = MEMORY[0x277D69670];
    v45 = v0[35];
  }

  else
  {
    v46 = v0[34];
    v48 = v0[21];
    v47 = v0[22];
    v50 = v0[19];
    v49 = v0[20];
    sub_2208886DC();
    v63 = *v47;
    v64 = v47[1];

    v51 = v47;
    v52 = v49;
    sub_22047BDE8(v51, type metadata accessor for AttributionSource);
    sub_2208886DC();
    sub_22047BCF8(v48 + *(v49 + 20), v50, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_22047BDE8(v48, type metadata accessor for AttributionSource);
    sub_22047BCF8(v43, v46, &qword_281299218, MEMORY[0x277D69670]);
    v53 = (*(v66 + 48))(v46, 1, v67);
    v54 = v0[34];
    if (v53 == 1)
    {
      sub_22047BD78(v0[34], &qword_281299218, MEMORY[0x277D69670]);
      v55 = 0;
    }

    else
    {
      sub_220684E5C();
      v55 = v56;
      (*(v66 + 8))(v54, v67);
    }

    v57 = v0[35];
    v58 = v0[23];
    v59 = v0[19];
    v60 = v0[20];
    *v58 = v63;
    v58[1] = v64;
    sub_2206578D0(v59, v58 + *(v52 + 20));
    *(v58 + *(v60 + 24)) = v55;
    sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource, &protocol conformance descriptor for AttributionSource);
    sub_2208886FC();
    sub_22047BDE8(v58, type metadata accessor for AttributionSource);
    v44 = MEMORY[0x277D69670];
    v45 = v57;
  }

  sub_22047BD78(v45, &qword_281299218, v44);

LABEL_23:

  v61 = v0[1];

  return v61();
}

uint64_t sub_220683F38()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[33];
  v5 = v2[32];
  v6 = v2[31];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_220684794;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[37];
    v8 = v3[38];
    v9 = sub_2206840CC;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2206840CC()
{
  v1 = v0[35];

  v2 = sub_22088625C();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v5 = Strong;
  v52 = v3;
  v53 = v2;
  v6 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  (*(v10 + 16))(v6, v0[18], v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource;
  swift_beginAccess();
  v12 = *(v8 + 48);
  v13 = MEMORY[0x277D69520];
  sub_22047BCF8(v6, v7, &qword_2812992A0, MEMORY[0x277D69520]);
  sub_22047BCF8(v5 + v11, v7 + v12, &qword_2812992A0, v13);
  v14 = *(v10 + 48);
  if (v14(v7, 1, v9) != 1)
  {
    v16 = v0[24];
    sub_22047BCF8(v0[28], v0[29], &qword_2812992A0, MEMORY[0x277D69520]);
    v17 = v14(v7 + v12, 1, v16);
    v18 = v0[29];
    v19 = v0[30];
    if (v17 != 1)
    {
      v51 = v0[28];
      v22 = v0[25];
      v23 = v0[26];
      v24 = v0[24];
      (*(v22 + 32))(v23, v7 + v12, v24);
      sub_22047A5DC(&qword_2812992A8, MEMORY[0x277D69520], MEMORY[0x277D69528]);
      v25 = sub_2208912FC();
      v26 = *(v22 + 8);
      v26(v23, v24);
      v27 = MEMORY[0x277D69520];
      sub_22047BD78(v19, &qword_2812992A0, MEMORY[0x277D69520]);
      v26(v18, v24);
      sub_22047BD78(v51, &qword_2812992A0, v27);
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_22047BD78(v0[35], &qword_281299218, MEMORY[0x277D69670]);
      goto LABEL_19;
    }

    v20 = v0[24];
    v21 = v0[25];

    sub_22047BD78(v19, &qword_2812992A0, MEMORY[0x277D69520]);
    (*(v21 + 8))(v18, v20);
LABEL_8:
    sub_22047BDE8(v0[28], sub_22047BC64);
    goto LABEL_9;
  }

  v15 = v0[24];
  sub_22047BD78(v0[30], &qword_2812992A0, MEMORY[0x277D69520]);
  if (v14(v7 + v12, 1, v15) != 1)
  {

    goto LABEL_8;
  }

  sub_22047BD78(v0[28], &qword_2812992A0, MEMORY[0x277D69520]);
LABEL_11:
  v28 = sub_22089182C();
  v29 = v0[35];
  if (v28)
  {
    v30 = MEMORY[0x277D69670];
    v31 = v0[35];
  }

  else
  {
    v32 = v0[34];
    v34 = v0[21];
    v33 = v0[22];
    v36 = v0[19];
    v35 = v0[20];
    sub_2208886DC();
    v49 = *v33;
    v50 = v33[1];

    v37 = v33;
    v38 = v35;
    sub_22047BDE8(v37, type metadata accessor for AttributionSource);
    sub_2208886DC();
    sub_22047BCF8(v34 + *(v35 + 20), v36, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_22047BDE8(v34, type metadata accessor for AttributionSource);
    sub_22047BCF8(v29, v32, &qword_281299218, MEMORY[0x277D69670]);
    v39 = (*(v52 + 48))(v32, 1, v53);
    v40 = v0[34];
    if (v39 == 1)
    {
      sub_22047BD78(v0[34], &qword_281299218, MEMORY[0x277D69670]);
      v41 = 0;
    }

    else
    {
      sub_220684E5C();
      v41 = v42;
      (*(v52 + 8))(v40, v53);
    }

    v43 = v0[35];
    v44 = v0[23];
    v45 = v0[19];
    v46 = v0[20];
    *v44 = v49;
    v44[1] = v50;
    sub_2206578D0(v45, v44 + *(v38 + 20));
    *(v44 + *(v46 + 24)) = v41;
    sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource, &protocol conformance descriptor for AttributionSource);
    sub_2208886FC();
    sub_22047BDE8(v44, type metadata accessor for AttributionSource);
    v30 = MEMORY[0x277D69670];
    v31 = v43;
  }

  sub_22047BD78(v31, &qword_281299218, v30);

LABEL_19:

  v47 = v0[1];

  return v47();
}

uint64_t sub_220684794()
{
  v1 = v0[35];

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = sub_22088625C();
  v3 = *(v2 - 8);
  (*(v3 + 56))(v1, 1, 1, v2);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_9;
  }

  v5 = Strong;
  v52 = v3;
  v53 = v2;
  v6 = v0[30];
  v8 = v0[27];
  v7 = v0[28];
  v9 = v0[24];
  v10 = v0[25];
  (*(v10 + 16))(v6, v0[18], v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource;
  swift_beginAccess();
  v12 = *(v8 + 48);
  v13 = MEMORY[0x277D69520];
  sub_22047BCF8(v6, v7, &qword_2812992A0, MEMORY[0x277D69520]);
  sub_22047BCF8(v5 + v11, v7 + v12, &qword_2812992A0, v13);
  v14 = *(v10 + 48);
  if (v14(v7, 1, v9) != 1)
  {
    v16 = v0[24];
    sub_22047BCF8(v0[28], v0[29], &qword_2812992A0, MEMORY[0x277D69520]);
    v17 = v14(v7 + v12, 1, v16);
    v18 = v0[29];
    v19 = v0[30];
    if (v17 != 1)
    {
      v51 = v0[28];
      v22 = v0[25];
      v23 = v0[26];
      v24 = v0[24];
      (*(v22 + 32))(v23, v7 + v12, v24);
      sub_22047A5DC(&qword_2812992A8, MEMORY[0x277D69520], MEMORY[0x277D69528]);
      v25 = sub_2208912FC();
      v26 = *(v22 + 8);
      v26(v23, v24);
      v27 = MEMORY[0x277D69520];
      sub_22047BD78(v19, &qword_2812992A0, MEMORY[0x277D69520]);
      v26(v18, v24);
      sub_22047BD78(v51, &qword_2812992A0, v27);
      if (v25)
      {
        goto LABEL_11;
      }

LABEL_9:
      sub_22047BD78(v0[35], &qword_281299218, MEMORY[0x277D69670]);
      goto LABEL_19;
    }

    v20 = v0[24];
    v21 = v0[25];

    sub_22047BD78(v19, &qword_2812992A0, MEMORY[0x277D69520]);
    (*(v21 + 8))(v18, v20);
LABEL_8:
    sub_22047BDE8(v0[28], sub_22047BC64);
    goto LABEL_9;
  }

  v15 = v0[24];
  sub_22047BD78(v0[30], &qword_2812992A0, MEMORY[0x277D69520]);
  if (v14(v7 + v12, 1, v15) != 1)
  {

    goto LABEL_8;
  }

  sub_22047BD78(v0[28], &qword_2812992A0, MEMORY[0x277D69520]);
LABEL_11:
  v28 = sub_22089182C();
  v29 = v0[35];
  if (v28)
  {
    v30 = MEMORY[0x277D69670];
    v31 = v0[35];
  }

  else
  {
    v32 = v0[34];
    v34 = v0[21];
    v33 = v0[22];
    v36 = v0[19];
    v35 = v0[20];
    sub_2208886DC();
    v49 = *v33;
    v50 = v33[1];

    v37 = v33;
    v38 = v35;
    sub_22047BDE8(v37, type metadata accessor for AttributionSource);
    sub_2208886DC();
    sub_22047BCF8(v34 + *(v35 + 20), v36, &qword_2812994E0, MEMORY[0x277CC9260]);
    sub_22047BDE8(v34, type metadata accessor for AttributionSource);
    sub_22047BCF8(v29, v32, &qword_281299218, MEMORY[0x277D69670]);
    v39 = (*(v52 + 48))(v32, 1, v53);
    v40 = v0[34];
    if (v39 == 1)
    {
      sub_22047BD78(v0[34], &qword_281299218, MEMORY[0x277D69670]);
      v41 = 0;
    }

    else
    {
      sub_220684E5C();
      v41 = v42;
      (*(v52 + 8))(v40, v53);
    }

    v43 = v0[35];
    v44 = v0[23];
    v45 = v0[19];
    v46 = v0[20];
    *v44 = v49;
    v44[1] = v50;
    sub_2206578D0(v45, v44 + *(v38 + 20));
    *(v44 + *(v46 + 24)) = v41;
    sub_22047A5DC(qword_281291C88, type metadata accessor for AttributionSource, &protocol conformance descriptor for AttributionSource);
    sub_2208886FC();
    sub_22047BDE8(v44, type metadata accessor for AttributionSource);
    v30 = MEMORY[0x277D69670];
    v31 = v43;
  }

  sub_22047BD78(v31, &qword_281299218, v30);

LABEL_19:

  v47 = v0[1];

  return v47();
}

void sub_220684E5C()
{
  sub_220479938(0, &qword_27CF58720, MEMORY[0x277D69668], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = &v37 - v2;
  v4 = sub_22088624C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v38 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v37 - v10;
  sub_22088621C();
  v12 = sub_22088622C();
  v14 = v13;
  sub_22088623C();
  v16 = v15;
  v17 = objc_allocWithZone(MEMORY[0x277D755B8]);
  v18 = sub_220884EBC();
  v19 = [v17 initWithData:v18 scale:v16];

  sub_220457EE8(v12, v14);
  v20 = *(v5 + 8);
  v20(v11, v4);
  if (v19)
  {
    sub_22088620C();
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_22047BD78(v3, &qword_27CF58720, MEMORY[0x277D69668]);
      return;
    }

    v21 = v38;
    (*(v5 + 32))(v38, v3, v4);
    v22 = sub_22088622C();
    v24 = v23;
    sub_22088623C();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v28 = sub_220884EBC();
    v29 = [v27 initWithData:v28 scale:v26];

    sub_220457EE8(v22, v24);
    if (v29)
    {
      v30 = [v19 imageAsset];
      if (v30)
      {
        v32 = v30;
        v37 = &v37;
        MEMORY[0x28223BE20](v30, v31);
        *(&v37 - 2) = v21;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_2206858F0;
        *(v33 + 24) = &v37 - 4;
        aBlock[4] = sub_220685948;
        aBlock[5] = v33;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22068553C;
        aBlock[3] = &block_descriptor_22;
        v34 = _Block_copy(aBlock);
        v35 = objc_opt_self();

        v36 = [v35 traitCollectionWithTraits_];
        _Block_release(v34);

        LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

        if (v34)
        {
          __break(1u);
          return;
        }

        [v32 registerImage:v29 withTraitCollection:v36];

        v21 = v38;
      }
    }

    v20(v21, v4);
  }
}

uint64_t sub_2206852C4()
{
  if (*(v0 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentDownloadTask))
  {

    sub_22089181C();
  }

  sub_22047BD78(v0 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_currentSource, &qword_2812992A0, MEMORY[0x277D69520]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_attributionProvider));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI19AttributionProvider_attributionAssetManager));

  return swift_deallocClassInstance();
}

uint64_t sub_2206853DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2208861EC() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_220885EBC() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2204C6018;

  return sub_220683440(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_22068553C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_220685590(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_220685688;

  return v6(a1);
}

uint64_t sub_220685688()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_220685780(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_220685970;

  return sub_220685590(a1, v4);
}

uint64_t sub_220685838(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2204C6018;

  return sub_220685590(a1, v4);
}

id sub_2206858F0(void *a1)
{
  sub_22088623C();
  [a1 setDisplayScale_];

  return [a1 setUserInterfaceStyle_];
}

uint64_t sub_22068599C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  sub_22044F09C(0);
  v4 = v3;
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220686448(0, &qword_281296B30, sub_22044F09C);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v36 - v13;
  sub_220686448(0, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v36 - v17;
  v19 = type metadata accessor for NewsStockFeedGroupKnobs(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v41 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v36 - v25;
  sub_22068649C(a1, v18, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
  v27 = *(v20 + 48);
  if (v27(v18, 1, v19) == 1)
  {
    v36 = v27;
    v37 = v26;
    v38 = a1;
    v28 = v39;
    (*(v39 + 56))(v14, 1, 1, v4);
    sub_22068649C(v14, v10, &qword_281296B30, sub_22044F09C);
    v29 = *(v28 + 48);
    if (v29(v10, 1, v4) == 1)
    {
      type metadata accessor for StockFeedServiceConfig(0);
      sub_220453520(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
      v30 = v40;
      sub_22088F7EC();
      v31 = v29(v10, 1, v4);
      v32 = v30;
      if (v31 != 1)
      {
        sub_220686508(v10, &qword_281296B30, sub_22044F09C);
      }
    }

    else
    {
      v32 = v40;
      (*(v28 + 32))(v40, v10, v4);
    }

    v33 = v41;
    (*(v28 + 32))(v41, v32, v4);
    v43 = 6;
    sub_22044D0C0();
    swift_allocObject();
    *(v33 + *(v19 + 20)) = sub_22088FB7C();
    v43 = 1000;
    swift_allocObject();
    v34 = sub_22088FB7C();
    sub_220686508(v38, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
    sub_220686508(v14, &qword_281296B30, sub_22044F09C);
    *(v33 + *(v19 + 24)) = v34;
    v26 = v37;
    sub_220571D04(v33, v37);
    if (v36(v18, 1, v19) != 1)
    {
      sub_220686508(v18, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
    }
  }

  else
  {
    sub_220686508(a1, qword_28128B590, type metadata accessor for NewsStockFeedGroupKnobs);
    sub_220571D04(v18, v26);
  }

  return sub_220571D04(v26, v42);
}