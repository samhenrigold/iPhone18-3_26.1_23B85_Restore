void sub_1E390D234()
{
  v1 = v0;
  v2 = [v0 textColor];
  v3 = v2;
  if (qword_1EE28AEE8 == -1)
  {
    if (!v2)
    {
      return;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_45(&qword_1EE28AEE8);
    if (!v3)
    {
      return;
    }
  }

  v4 = qword_1EE28AEF0;
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v5 = v4;
  v6 = sub_1E4206F64();

  if (v6)
  {
    v7 = sub_1E390E9E4(v1);
    if (v8)
    {
      if (v7 || v8 != 0xE000000000000000)
      {
        v9 = sub_1E42079A4();

        if ((v9 & 1) == 0)
        {
          return;
        }
      }

      else
      {
      }

      v10 = OUTLINED_FUNCTION_74();
      sub_1E390E98C(v10, v11, v1);
      if (qword_1EE28AEF8 != -1)
      {
        OUTLINED_FUNCTION_9_50(&qword_1EE28AEF8);
      }

      v12 = qword_1EE28AF00;

      [v1 setTextColor_];
    }
  }
}

uint64_t sub_1E390D47C()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration))
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void sub_1E390D4BC()
{
  OUTLINED_FUNCTION_31_1();
  v63 = v2;
  v64 = v0;
  v4 = v3;
  v5 = type metadata accessor for SearchRACMenuOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DAF8, &unk_1E42AA640);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_29_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  if (!sub_1E41FE854())
  {
    v55 = v1;
    v60 = v6;
    v61 = v14;
    v58 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DB28, qword_1E42AA670);
    v28 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v54 = *(v20 + 72);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1E4297BE0;
    v30 = *(v20 + 16);
    v59 = v4;
    v62 = v30;
    v30(v29 + v28, v4, v18);
    v31 = OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_selectedOption;
    v32 = v64;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v57 = v31;
    sub_1E37E93E8(v32 + v31, v17, &unk_1ECF2DAF8, &unk_1E42AA640);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DAF0, &unk_1E42AA630);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, v33);
    v56 = v33;
    if (!EnumTagSinglePayload)
    {
      v53 = v28;
      v36 = v62;
      v62(v24, &v17[*(v33 + 48)], v18);
      sub_1E325F6F0(v17, &unk_1ECF2DAF8, &unk_1E42AA640);
      v51 = *(v20 + 32);
      (v51)(v27, v24, v18);
      v52 = v18;
      v36(v55, v27, v18);
      v38 = *(v29 + 16);
      v37 = *(v29 + 24);
      v39 = v38 + 1;
      v35 = v61;
      if (v38 >= v37 >> 1)
      {
        goto LABEL_12;
      }

      goto LABEL_5;
    }

    sub_1E325F6F0(v17, &unk_1ECF2DAF8, &unk_1E42AA640);
    v35 = v61;
    while (1)
    {
      v41 = v64;
      v27 = *(v64 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_racConfiguration + 16);

      v42 = v59;
      v43 = sub_1E41FE824();
      v39 = v60;
      if ((v43 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v37 = *(v27 + 2);
        if (v43 < v37)
        {
          v44 = v18;
          v45 = v58;
          sub_1E390E2C8(&v27[((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v43], v58);

          v46 = v56;
          v47 = *(v56 + 48);
          sub_1E390E2C8(v45, v35);
          v62(v35 + v47, v42, v44);
          __swift_storeEnumTagSinglePayload(v35, 0, 1, v46);
          v48 = v57;
          swift_beginAccess();
          sub_1E390E8C4(v35, v41 + v48);
          swift_endAccess();
          v49 = sub_1E42062A4();

          [v63 reloadRowsAtIndexPaths:v49 withRowAnimation:100];

          sub_1E390E548(v45);
          break;
        }
      }

      __break(1u);
LABEL_12:
      v29 = sub_1E390E5A4((v37 > 1), v39, 1, v29);
LABEL_5:
      v40 = *(v20 + 8);
      v20 += 8;
      v18 = v52;
      v40(v27, v52);
      *(v29 + 16) = v39;
      OUTLINED_FUNCTION_82();
      v51();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

id sub_1E390DAC4(void *a1)
{
  result = sub_1E390E9E4(a1);
  if (v4)
  {
    v5 = (v1 + OBJC_IVAR____TtC8VideosUI26SearchRACViewControllerIOS_textEntry);
    *v5 = result;
    v5[1] = v4;

    if (qword_1EE28AEE0 != -1)
    {
      OUTLINED_FUNCTION_1_89(&qword_1EE28AEE0);
    }

    sub_1E390D234();

    return [a1 resignFirstResponder];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1E390DBCC()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_23();
    OUTLINED_FUNCTION_82_1(25, v1);
    OUTLINED_FUNCTION_83();
    OUTLINED_FUNCTION_24_22();
    v3 = 0xE000000000000000;
    if (!v4)
    {
      v3 = v0;
    }

    qword_1ECF71388 = v2;
    unk_1ECF71390 = v3;
  }

  else
  {
    __break(1u);
  }
}

id sub_1E390DC4C()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  [v0 setEditable_];
  v1 = [objc_opt_self() systemFontOfSize_];
  [v0 setFont_];

  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

char *sub_1E390DCEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView;
  *&v3[v6] = sub_1E390DC4C();
  if (a3)
  {
    OUTLINED_FUNCTION_34();
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v32.receiver = v3;
  v32.super_class = type metadata accessor for ConcernTextCell();
  v8 = objc_msgSendSuper2(&v32, sel_initWithStyle_reuseIdentifier_, a1, v7);

  v9 = OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView;
  v10 = *&v8[OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView];
  v11 = objc_opt_self();
  v12 = v8;
  v13 = v10;
  v14 = [v11 clearColor];
  [v13 setBackgroundColor_];

  v15 = [v12 contentView];
  [v15 addSubview_];

  v16 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1E42A1E20;
  v18 = [*&v8[v9] leadingAnchor];
  v19 = [v12 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:8.0];

  *(v17 + 32) = v20;
  v21 = [*&v8[v9] trailingAnchor];
  v22 = [v12 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor:v22 constant:-8.0];

  *(v17 + 40) = v23;
  v24 = [*&v8[v9] topAnchor];
  v25 = [v12 topAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:4.0];

  *(v17 + 48) = v26;
  v27 = [*&v8[v9] bottomAnchor];
  v28 = [v12 bottomAnchor];

  v29 = [v27 constraintEqualToAnchor:v28 constant:-4.0];
  *(v17 + 56) = v29;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v30 = sub_1E42062A4();

  [v16 activateConstraints_];

  return v12;
}

void sub_1E390E08C()
{
  v1 = OBJC_IVAR____TtC8VideosUI15ConcernTextCell_textView;
  *(v0 + v1) = sub_1E390DC4C();
  OUTLINED_FUNCTION_19_37();
  __break(1u);
}

id sub_1E390E0FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ConcernTextCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E390E168(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

void sub_1E390E1AC()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E390E210(void *a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_51();
  sub_1E390E1AC();
}

id sub_1E390E254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1E4205ED4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithStyle:a1 reuseIdentifier:v5];

  return v6;
}

uint64_t sub_1E390E2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRACMenuOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E390E32C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchRACMenuOption(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E390E390()
{
  OUTLINED_FUNCTION_27_2();
  v0 = type metadata accessor for SearchRACMenuOption(0);
  OUTLINED_FUNCTION_17_2(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_14_3(v1);
  *v2 = v3;
  v2[1] = sub_1E390E464;

  return sub_1E390BF2C();
}

uint64_t sub_1E390E464()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_31();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E390E548(uint64_t a1)
{
  v2 = type metadata accessor for SearchRACMenuOption(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1E390E5A4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E390E690(v8, v7);
  v10 = *(sub_1E41FE874() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E390E78C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E390E690(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DB28, qword_1E42AA670);
  v4 = *(sub_1E41FE874() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E390E78C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FE874(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FE874();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E390E860(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setText_];
}

uint64_t sub_1E390E8C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2DAF8, &unk_1E42AA640);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E390E934()
{
  result = qword_1ECF2DB20;
  if (!qword_1ECF2DB20)
  {
    type metadata accessor for SearchRACMenuOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DB20);
  }

  return result;
}

void sub_1E390E98C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  [a3 setText_];
}

uint64_t sub_1E390E9E4(void *a1)
{
  v1 = [a1 text];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E390EA50(uint64_t a1)
{
  sub_1E390EB20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E390EB20(uint64_t a1)
{
  if (!qword_1ECF2DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DAF0, &unk_1E42AA630);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2DB38);
    }
  }
}

uint64_t sub_1E390EB84()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v2 = v1;
  OUTLINED_FUNCTION_31();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_31();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_54();

  return v8();
}

uint64_t sub_1E390EC84()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_96();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_14_3(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_6_3(v1);

  return v4(v3);
}

uint64_t sub_1E390ED14()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E390EDA4;

  return sub_1E390B364();
}

uint64_t sub_1E390EDA8()
{
  result = sub_1E39C408C();
  if (result)
  {
    type metadata accessor for ImageViewModel();
    result = swift_dynamicCastClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

void sub_1E390EE00()
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3746E10(v0);
  v2 = sub_1E3B02B0C();
  v3 = OUTLINED_FUNCTION_53();
  v4(v3);
  v5 = OUTLINED_FUNCTION_43_16();
  v6 = v5;
  if ((v2 & 1) == 0)
  {
    if (v5)
    {
      v11 = (*(*v5 + 392))(v5);

      if (v11)
      {
        type metadata accessor for ImageLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          v13 = (*(v12 + 1968))();

          if (v13)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }
    }

    v15 = OUTLINED_FUNCTION_43_16();
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = v15;
    if (OUTLINED_FUNCTION_43_16() && (OUTLINED_FUNCTION_26_0(), v18 = (*(v17 + 392))(), v19 = , v18))
    {
      v20 = (*(*v18 + 1560))(v19);
    }

    else
    {
      v20 = 7;
    }

    v21 = (*(*v16 + 1048))(v20, 0);

    if (!v21)
    {
      goto LABEL_22;
    }

LABEL_21:
    OUTLINED_FUNCTION_95();
    return;
  }

  if (v5)
  {
    if (OUTLINED_FUNCTION_43_16() && (OUTLINED_FUNCTION_26_0(), v8 = (*(v7 + 392))(), v9 = , v8))
    {
      v10 = (*(*v8 + 1560))(v9);
    }

    else
    {
      v10 = 7;
    }

    v14 = (*(*v6 + 1048))(v10, 1);

    if (v14)
    {
      goto LABEL_21;
    }
  }

LABEL_22:
  [objc_opt_self() blackColor];
  OUTLINED_FUNCTION_95();

  v24 = v22;
}

double sub_1E390F194@<D0>(uint64_t a1@<X0>, const void *a2@<X1>, char a3@<W2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v12 = type metadata accessor for LockupGradientImageContainer(0, a5, a6, a4);
  v13 = v12[12];
  *(a7 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(a7 + v12[9]) = a1;
  memcpy((a7 + v12[10]), a2, 0xC3uLL);
  *(a7 + v12[11]) = a3 & 1;

  v14 = sub_1E375C1CC(a2, v16);
  a4(v14);
  sub_1E37E6F2C(a2);

  return result;
}

void sub_1E390F2AC()
{
  OUTLINED_FUNCTION_31_1();
  v86 = v0;
  v2 = v1;
  v90 = v3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC0, &qword_1E42AA778);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC8, &unk_1E42AA780);
  v5 = *(v2 + 16);
  OUTLINED_FUNCTION_26_27(255, v4, v5);
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  sub_1E4203A44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  OUTLINED_FUNCTION_13_10();
  v6 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v108 = WitnessTable;
  v109 = sub_1E328FCF4(v8, &qword_1ECF291E0, &qword_1E42AE9A0);
  v81 = v109;
  OUTLINED_FUNCTION_4_1();
  v110 = v6;
  v111 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_30_5();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_12();
  v9 = sub_1E4203A64();
  OUTLINED_FUNCTION_0_10();
  v85 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_5();
  v84 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD0, &unk_1E42AA790);
  v16 = *(v2 + 24);
  v82 = v5;
  v110 = v5;
  v111 = v16;
  v80 = v16;
  swift_getOpaqueTypeMetadata2();
  v17 = OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_26_27(v17, v15, v18);
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_13_10();
  v19 = sub_1E4203A44();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD8, &qword_1E42AE9C0);
  OUTLINED_FUNCTION_13_10();
  v92 = v19;
  v93 = sub_1E42013A4();
  v20 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v80 - v27;
  v29 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_5();
  v35 = (v34 - v33);
  v87 = v9;
  v89 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v88 = v36;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v38);
  v39 = v86;
  sub_1E3746E10(v35);
  v40 = sub_1E3B02B0C();
  (*(v31 + 8))(v35, v29);
  v41 = MEMORY[0x1E697EBF8];
  if (v40)
  {
    sub_1E390FC18();
    OUTLINED_FUNCTION_0_81();
    v42 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_90();
    v46 = sub_1E328FCF4(v43, v44, v45);
    v96 = v42;
    v97 = v46;
    OUTLINED_FUNCTION_14_55();
    v94 = swift_getWitnessTable();
    v95 = v41;
    swift_getWitnessTable();
    v47 = *(v22 + 16);
    v47(v28, v25, v20);
    v48 = *(v22 + 8);
    v49 = OUTLINED_FUNCTION_171_0();
    v48(v49);
    v47(v25, v28, v20);
    OUTLINED_FUNCTION_4_69();
    swift_getWitnessTable();
    v50 = OUTLINED_FUNCTION_171_0();
    sub_1E37B8D98(v50, v51);
    v52 = OUTLINED_FUNCTION_171_0();
    v48(v52);
    (v48)(v28, v20);
  }

  else
  {
    sub_1E4203D44();
    v53 = v82;
    v112 = v82;
    v113 = v80;
    v114 = v39;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC0, &qword_1E42AA778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC8, &unk_1E42AA780);
    v54 = OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_26_27(v54, v55, v53);
    OUTLINED_FUNCTION_12_22();
    sub_1E4203EE4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_13_10();
    sub_1E4203A44();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0, &qword_1E42AE9A0);
    OUTLINED_FUNCTION_13_10();
    v56 = sub_1E42013A4();
    v117 = swift_getWitnessTable();
    v118 = v81;
    v57 = swift_getWitnessTable();
    v115 = v56;
    v116 = v57;
    OUTLINED_FUNCTION_3_67();
    swift_getOpaqueTypeMetadata2();
    OUTLINED_FUNCTION_30_5();
    swift_getTupleTypeMetadata3();
    sub_1E4203EE4();
    swift_getWitnessTable();
    v58 = v84;
    sub_1E4203A54();
    OUTLINED_FUNCTION_4_69();
    v59 = v87;
    v86 = swift_getWitnessTable();
    v60 = v85;
    v61 = *(v85 + 16);
    v62 = v83;
    v61(v83, v58, v59);
    v63 = *(v60 + 8);
    v63(v58, v59);
    v61(v58, v62, v59);
    v64 = swift_getWitnessTable();
    OUTLINED_FUNCTION_1_90();
    v68 = sub_1E328FCF4(v65, v66, v67);
    v106 = v64;
    v107 = v68;
    v104 = swift_getWitnessTable();
    v105 = MEMORY[0x1E697EBF8];
    OUTLINED_FUNCTION_53();
    swift_getWitnessTable();
    sub_1E37B8E90(v58, v20, v59);
    v69 = v58;
    v41 = MEMORY[0x1E697EBF8];
    v63(v69, v59);
    v63(v62, v59);
  }

  OUTLINED_FUNCTION_0_81();
  v70 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_90();
  v74 = sub_1E328FCF4(v71, v72, v73);
  v102 = v70;
  v103 = v74;
  OUTLINED_FUNCTION_14_55();
  v100 = swift_getWitnessTable();
  v101 = v41;
  v75 = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_69();
  v76 = swift_getWitnessTable();
  v98 = v75;
  v99 = v76;
  OUTLINED_FUNCTION_2_25();
  v77 = v89;
  swift_getWitnessTable();
  v78 = v88;
  v79 = v91;
  (*(v88 + 16))(v90, v91, v77);
  (*(v78 + 8))(v79, v77);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E390FC18()
{
  OUTLINED_FUNCTION_93();
  v26[0] = v0;
  v2 = v1;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD0, &unk_1E42AA790);
  v26[1] = v2;
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  v34 = v6;
  v35 = v5;
  OUTLINED_FUNCTION_3_67();
  swift_getOpaqueTypeMetadata2();
  v7 = OUTLINED_FUNCTION_13_10();
  OUTLINED_FUNCTION_26_27(v7, v4, v8);
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_15_13();
  swift_getWitnessTable();
  v9 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCD8, &qword_1E42AE9C0);
  OUTLINED_FUNCTION_18_12();
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v27 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v26 - v18;
  sub_1E3A9CCC0();
  v29 = v6;
  v30 = v5;
  v31 = v26[0];
  sub_1E4201D44();
  sub_1E4203A34();
  sub_1E390EE00();
  v21 = v20;
  v22 = sub_1E38F08C4(v20);

  v34 = v22;
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  sub_1E4202734();
  sub_1E4202D14();

  (*(v11 + 8))(v14, v9);
  OUTLINED_FUNCTION_1_90();
  v25 = sub_1E328FCF4(v24, &qword_1ECF2DCD8, &qword_1E42AE9C0);
  v32 = WitnessTable;
  v33 = v25;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  sub_1E4203DA4();
  sub_1E4203474();
  (*(v27 + 8))(v19, v15);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E390FF40()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v49 = v6;
  v58[0] = v2;
  v58[1] = v0;
  OUTLINED_FUNCTION_3_67();
  v52 = v7;
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v47 = v9;
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v44 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_25_3();
  v46 = v12;
  v13 = type metadata accessor for LockupGradientImage(0);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DCD0, &unk_1E42AA790);
  OUTLINED_FUNCTION_0_10();
  v43 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v51 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &OpaqueTypeConformance2 - v21;
  v50 = &OpaqueTypeConformance2 - v21;
  v24 = type metadata accessor for LockupGradientImageContainer(0, v3, v1, v23);
  v25 = *(v5 + *(v24 + 36));
  OUTLINED_FUNCTION_42_22(v58);
  LOBYTE(v24) = *(v5 + *(v24 + 44));
  *v16 = v25;
  OUTLINED_FUNCTION_42_22((v16 + 8));
  *(v16 + 203) = v24;
  v42 = v13;
  v26 = *(v13 + 28);
  *(v16 + v26) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();

  sub_1E375C1CC(v58, &v56);
  sub_1E4203684();
  v41 = sub_1E3912E10();
  sub_1E3D413D8(v13, v22);

  OUTLINED_FUNCTION_16_40();
  sub_1E3912FA8(v16, v27);
  sub_1E4203724();
  v28 = v44;
  sub_1E3D413D8(v3, v44);

  v56 = v3;
  v57 = v1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v46;
  v29 = v47;
  v31 = *(v47 + 16);
  v32 = v48;
  v31(v46, v28, v48);
  v47 = *(v29 + 8);
  v33 = v28;
  (v47)(v28, v32);
  v34 = v43;
  v35 = v51;
  v36 = v45;
  (*(v43 + 16))(v51, v50, v45);
  v56 = v35;
  v31(v33, v30, v32);
  v57 = v33;
  v37 = v33;
  v55[0] = v36;
  v55[1] = v32;
  v53 = v42;
  v54 = v41;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = OpaqueTypeConformance2;
  sub_1E3910324(&v56, 2, v55);
  v38 = v47;
  (v47)(v30, v32);
  v39 = *(v34 + 8);
  v39(v50, v36);
  v38(v37, v32);
  v39(v51, v36);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3910324(uint64_t *TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  v10 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v13 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v14 = (v6 + 32);
    v15 = a2;
    do
    {
      if (a2 == 1)
      {
        v16 = 0;
      }

      else
      {
        v16 = *v14;
      }

      v18 = *v13++;
      v17 = v18;
      v19 = *v5++;
      (*(*(v17 - 8) + 16))(&v12[v16], v19, v10);
      v14 += 4;
      --v15;
    }

    while (v15);
  }

  return sub_1E4203EF4();
}

void sub_1E39104A0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v93 = v6;
  sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  OpaqueTypeConformance2 = v8;
  v92 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v90 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC8, &unk_1E42AA780);
  v11 = OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_26_27(v11, v12, v3);
  OUTLINED_FUNCTION_12_22();
  sub_1E4203EE4();
  OUTLINED_FUNCTION_15_13();
  v87 = v13;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_18_12();
  v14 = sub_1E4203A44();
  OUTLINED_FUNCTION_0_10();
  v89 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  v86 = v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  OUTLINED_FUNCTION_18_12();
  v82 = v14;
  v18 = sub_1E42013A4();
  v81 = v18;
  v88 = *(v18 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v83 = v20;
  OUTLINED_FUNCTION_0_81();
  WitnessTable = swift_getWitnessTable();
  v78 = WitnessTable;
  OUTLINED_FUNCTION_1_25();
  v23 = sub_1E328FCF4(v22, &qword_1ECF291E0, &qword_1E42AE9A0);
  v99[1] = WitnessTable;
  v99[2] = v23;
  OUTLINED_FUNCTION_4_1();
  v80 = swift_getWitnessTable();
  v100[0] = v18;
  v100[1] = v80;
  OUTLINED_FUNCTION_3_67();
  v84 = v24;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v97 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v76 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  v79 = v29;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD38, &qword_1E42AA9E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v74 - v31;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DCC0, &qword_1E42AA778);
  OUTLINED_FUNCTION_0_10();
  v95 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  v94 = v35;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_25_3();
  v98 = v37;
  v39 = type metadata accessor for LockupGradientImageContainer(0, v3, v1, v38);
  v40 = v5;
  sub_1E390EE00();
  v42 = v41;
  v75 = sub_1E38F08C4(v41);

  v43 = sub_1E4201D44();
  LOBYTE(v99[0]) = 0;
  v45 = *(v39 + 16);
  v44 = *(v39 + 24);
  sub_1E3910DE0(v45, v44, v100);
  memcpy(v102, v100, 0x51uLL);
  memcpy(v103, v100, 0x51uLL);
  sub_1E3294EE4(v102, v101, &qword_1ECF2DD60, &qword_1E42AAA00);
  sub_1E325F6F0(v103, &qword_1ECF2DD60, &qword_1E42AAA00);
  memcpy(v100 + 7, v102, 0x51uLL);
  LOBYTE(v18) = v99[0];
  v46 = sub_1E4203D84();
  v48 = v47;
  v49 = &v32[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD38, &qword_1E42AA9E8) + 36)];
  sub_1E3910C9C();
  v50 = &v49[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD58, &qword_1E42AA9F8) + 36)];
  *v50 = v46;
  v50[1] = v48;
  *v32 = v43;
  *(v32 + 1) = 0;
  v32[16] = v18;
  memcpy(v32 + 17, v100, 0x58uLL);
  sub_1E4203684();
  v74 = sub_1E3912E74();
  sub_1E3D413D8(v96, v98);

  sub_1E325F6F0(v32, &qword_1ECF2DD38, &qword_1E42AA9E8);
  sub_1E4201D54();
  v100[2] = v45;
  v100[3] = v44;
  v100[4] = v40;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCC8, &unk_1E42AA780);
  v51 = OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_26_27(v51, v52, v45);
  sub_1E4203EE4();
  swift_getWitnessTable();
  v53 = v86;
  sub_1E4203A34();
  (*(OpaqueTypeConformance2 + 104))(v90, *MEMORY[0x1E697DBA8], v92);
  v55 = v82;
  v54 = v83;
  sub_1E4202DB4();
  v56 = OUTLINED_FUNCTION_171_0();
  v57(v56);
  (*(v89 + 8))(v53, v55);
  sub_1E4203724();
  v58 = v76;
  v59 = v80;
  v60 = v81;
  sub_1E3D413D8(v81, v76);

  (*(v88 + 8))(v54, v60);
  v100[0] = v60;
  v100[1] = v59;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v61 = v97;
  v62 = *(v97 + 16);
  v63 = v79;
  v64 = v58;
  v65 = v58;
  v66 = OpaqueTypeMetadata2;
  v62(v79, v65, OpaqueTypeMetadata2);
  v67 = *(v61 + 8);
  v97 = v61 + 8;
  v92 = v67;
  v67(v64, v66);
  v99[0] = v75;
  v100[0] = v99;
  v68 = v94;
  v69 = v77;
  (*(v95 + 16))(v94, v98, v77);
  v100[1] = v68;
  v62(v64, v63, v66);
  v100[2] = v64;
  v70 = v64;

  v103[0] = MEMORY[0x1E69815C0];
  v103[1] = v69;
  v71 = v69;
  v103[2] = v66;
  v102[0] = MEMORY[0x1E6981580];
  v101[0] = v96;
  v101[1] = v74;
  v102[1] = swift_getOpaqueTypeConformance2();
  v102[2] = OpaqueTypeConformance2;
  sub_1E3910324(v100, 3, v103);

  v72 = v92;
  v92(v63, v66);
  v73 = *(v95 + 8);
  v73(v98, v71);
  v72(v70, v66);
  v73(v94, v71);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3910C9C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for LockupGradientImage(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v12 = type metadata accessor for LockupGradientImageContainer(0, v3, v1, v11);
  v13 = *(v5 + *(v12 + 36));
  OUTLINED_FUNCTION_42_22(v19);
  LOBYTE(v12) = *(v5 + *(v12 + 44));
  *v10 = v13;
  OUTLINED_FUNCTION_42_22((v10 + 8));
  *(v10 + 203) = v12;
  v14 = *(v6 + 28);
  *(v10 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();

  sub_1E375C1CC(v19, &v18);
  sub_1E4203694();
  sub_1E3912E10();
  OUTLINED_FUNCTION_53();
  sub_1E3D413D8(v15, v16);

  OUTLINED_FUNCTION_16_40();
  sub_1E3912FA8(v10, v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3910DE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v10 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = (v15 - v14);
  v17 = sub_1E42036E4();
  type metadata accessor for LockupGradientImageContainer(0, a1, a2, v18);
  v19 = *sub_1E418A524();
  v20 = sub_1E4202754();
  sub_1E3746E10(v16);
  v21 = sub_1E3B02B0C();
  (*(v12 + 8))(v16, v10);
  if ((v21 & 1) == 0)
  {
    sub_1E3A9CCF0();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  v45 = 0;
  v41 = 0;
  v28[0] = v17;
  v28[1] = v19;
  LOWORD(v28[2]) = 0;
  *(&v28[2] + 2) = v43;
  HIWORD(v28[2]) = v44;
  LOBYTE(v28[3]) = v20;
  HIDWORD(v28[3]) = *&v42[3];
  *(&v28[3] + 1) = *v42;
  v28[4] = v22;
  v28[5] = v23;
  v28[6] = v24;
  v28[7] = v25;
  LOBYTE(v28[8]) = 0;
  memcpy(v29, v28, 0x41uLL);
  v27[72] = 0;
  memcpy(a3, v29, 0x48uLL);
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  v30[0] = v17;
  v30[1] = v19;
  v31 = 0;
  v32 = v43;
  v33 = v44;
  v34 = v20;
  *v35 = *v42;
  *&v35[3] = *&v42[3];
  v36 = v3;
  v37 = v4;
  v38 = v5;
  v39 = v6;
  v40 = 0;
  sub_1E3294EE4(v28, v27, &qword_1ECF2DD68, &unk_1E42AAA08);
  return sub_1E325F6F0(v30, &qword_1ECF2DD68, &unk_1E42AAA08);
}

void sub_1E391100C()
{
  OUTLINED_FUNCTION_93();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v35 = v4;
  v31 = *(v2 - 8);
  v5 = v31;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_5();
  v32 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = type metadata accessor for LockupMetadataTopSpacer(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DCC8, &unk_1E42AA780);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v36 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  v23 = *sub_1E418A524();
  v24 = *(v10 + 20);
  *(v14 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v14 = v23;
  sub_1E42036F4();
  v25 = sub_1E3912F64(&qword_1EE25AB08, type metadata accessor for LockupMetadataTopSpacer);
  sub_1E3D414F8(v10, v22);

  sub_1E3912FA8(v14, type metadata accessor for LockupMetadataTopSpacer);
  v26 = *(v5 + 16);
  v26(v9, v33, v3);
  v27 = v36;
  (*(v17 + 16))(v36, v22, v15);
  v40[0] = v27;
  v28 = v32;
  v26(v32, v9, v3);
  v40[1] = v28;
  v39[0] = v15;
  v39[1] = v3;
  OpaqueTypeConformance2 = v10;
  v38 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v34;
  sub_1E3910324(v40, 2, v39);
  v29 = *(v31 + 8);
  v29(v9, v3);
  v30 = *(v17 + 8);
  v30(v22, v15);
  v29(v28, v3);
  v30(v36, v15);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3911384()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  memcpy(v13, (v0 + 8), 0x5BuLL);
  OUTLINED_FUNCTION_17_37();
  v5 = v13[90];
  if (v6 == 1)
  {
    if (*(v0 + 144))
    {
      v1 = 0.0;
    }

    else
    {
      v1 = *(v0 + 128);
    }
  }

  v7 = *v0;
  sub_1E375C2C0(v13, &v12);
  v8 = sub_1E39114AC(v7);
  sub_1E3A9CD70(v9, v1, v8);
  v12 = 0;
  OUTLINED_FUNCTION_25_31();
  sub_1E3B02B0C();
  v10 = OUTLINED_FUNCTION_53();
  v11(v10);
  OUTLINED_FUNCTION_11_51();
  *(v3 + 90) = v5;
  OUTLINED_FUNCTION_54_0();
}

double sub_1E39114AC(uint64_t a1)
{
  v2 = v1;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_25_31();
  v5 = sub_1E3B02B0C();
  v6 = OUTLINED_FUNCTION_53();
  v7(v6);
  if (v5)
  {
    return *sub_1E418A524();
  }

  v9 = sub_1E3A9CCE4();
  LOBYTE(v10) = 3;
  (*(*a1 + 776))(v11, &v10, &unk_1F5D5D918, &off_1F5D5C938);
  if (v11[3])
  {
    if (swift_dynamicCast())
    {
      return v10;
    }
  }

  else
  {
    sub_1E325F6F0(v11, &unk_1ECF296E0, &unk_1E4298030);
  }

  if (*(v2 + 203))
  {
    return 0.8;
  }

  else
  {
    return *v9;
  }
}

void sub_1E391163C(uint64_t a1@<X8>)
{
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  memcpy(v11, (v1 + 8), 0x5BuLL);
  OUTLINED_FUNCTION_17_37();
  v5 = v11[90];
  if (v6 == 1)
  {
    if (*(v1 + 144))
    {
      v2 = 0.0;
    }

    else
    {
      v2 = *(v1 + 128);
    }
  }

  sub_1E375C2C0(v11, v10);
  v7 = sub_1E418A524();
  sub_1E3A9CD70(v7, v2, *v7);
  v10[0] = 0;
  OUTLINED_FUNCTION_25_31();
  sub_1E3B02B0C();
  v8 = OUTLINED_FUNCTION_53();
  v9(v8);
  OUTLINED_FUNCTION_11_51();
  *(a1 + 90) = v5;
}

void sub_1E391176C()
{
  OUTLINED_FUNCTION_93();
  v2 = v0;
  v71 = v3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD08, &qword_1E42AA9A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v63 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD10, &qword_1E42AA9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD18, &qword_1E42AA9B8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v63 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = (v18 - v17);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD20, &unk_1E42AA9C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_35_3();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v22 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v63 - v24;
  if (sub_1E39C408C())
  {
    if (TVAppFeature.isEnabled.getter(28, v26, v27))
    {
      sub_1E391163C(v73);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      sub_1E37E8BE8(v28, v29, v30, v31, v32, v33, v34);
      sub_1E375C31C(v73);
      v35 = v69;
      (*(v22 + 16))(v1, v25, v69);
      v36 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0(v36);
      sub_1E3912BBC();
      v37 = v71;
      sub_1E4201F44();

      (*(v22 + 8))(v25, v35);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD28, &qword_1E42AA9D0);
      v39 = v37;
LABEL_22:
      __swift_storeEnumTagSinglePayload(v39, 0, 1, v38);
      OUTLINED_FUNCTION_54_0();
      return;
    }
  }

  if (sub_1E39C408C())
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_20_2();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      if ((*(v40 + 392))())
      {
        type metadata accessor for ImageLayout();
        OUTLINED_FUNCTION_20_2();
        v41 = swift_dynamicCastClass();
        if (v41)
        {
          type metadata accessor for LockupGradientImage(0);
          sub_1E3746E10(v19);
          v42 = sub_1E3B02B0C();
          (*(v63 + 8))(v19, v14);
          (*(*v41 + 2240))(v42 & 1);
        }

        else
        {
        }
      }

      v48 = v2[24];
      v73[0] = *v2;
      if (v48)
      {
        v72[0] = v48;
        type metadata accessor for ViewModel();
        sub_1E3912F64(&qword_1EE23BA60, type metadata accessor for ViewModel);

        v49 = sub_1E4205E84();

        if (v49)
        {
          v50 = 0.0;
        }

        else
        {
          v50 = 1.0;
        }
      }

      else
      {
        v50 = 1.0;
      }

      sub_1E3911384();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_30_5();
      sub_1E37E8BE8(v51, v52, v53, v54, v55, v56, v57);
      sub_1E375C31C(v72);
      v58 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD30, &unk_1E42AA9D8) + 36)];
      *v58 = 0;
      *(v58 + 4) = 257;
      *&v6[*(v64 + 36)] = 256;
      sub_1E4203DA4();
      OUTLINED_FUNCTION_20_39();
      v59 = v66;
      sub_1E329E454(v6, v66, &qword_1ECF2DD08, &qword_1E42AA9A8);
      memcpy((v59 + *(v65 + 36)), v73, 0x70uLL);
      sub_1E329E454(v59, v11, &qword_1ECF2DD10, &qword_1E42AA9B0);
      *&v11[*(v70 + 36)] = v50;
      v60 = v67;
      sub_1E329E454(v11, v67, &qword_1ECF2DD18, &qword_1E42AA9B8);
      sub_1E32BA880(v60, v1);
      v61 = swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_19_0(v61);
      sub_1E3912BBC();
      v62 = v71;
      sub_1E4201F44();

      sub_1E325F6F0(v60, &qword_1ECF2DD18, &qword_1E42AA9B8);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD28, &qword_1E42AA9D0);
      v39 = v62;
      goto LABEL_22;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD28, &qword_1E42AA9D0);
  OUTLINED_FUNCTION_54_0();

  __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
}

void *sub_1E3911EC0@<X0>(uint64_t a2@<X8>)
{
  v9 = sub_1E42036E4();
  v10 = *v3;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_20_39();
  v13[116] = 0;
  memcpy(&v13[4], __src, 0x70uLL);
  v11 = sub_1E4202754();
  sub_1E3911FA0();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 19) = 1;
  result = memcpy((a2 + 20), v13, 0x74uLL);
  *(a2 + 136) = v11;
  *(a2 + 144) = v4;
  *(a2 + 152) = v5;
  *(a2 + 160) = v6;
  *(a2 + 168) = v7;
  *(a2 + 176) = 0;
  return result;
}

double sub_1E3911FA0()
{
  v0 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  type metadata accessor for LockupMetadataTopSpacer(0);
  sub_1E3746E10(v6);
  v7 = sub_1E3B02B0C();
  (*(v2 + 8))(v6, v0);
  if (v7)
  {
    v8 = sub_1E3A9CCD8();
  }

  else
  {
    v8 = sub_1E3A9CCCC();
  }

  return -*v8;
}

unint64_t sub_1E3912084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2DCE0;
  if (!qword_1ECF2DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LockupFlipImageStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1E391221C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E39122D4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(sub_1E42012F4() - 8);
  v9 = 8;
  if (*(v8 + 64) > 8uLL)
  {
    v9 = *(v8 + 64);
  }

  v10 = *(v5 + 64);
  if (!a2)
  {
    goto LABEL_24;
  }

  if (a2 <= v7)
  {
    goto LABEL_19;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = v9 + ((((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v11 + 196) & ~v11) + 1;
  if (v12 <= 3)
  {
    v13 = ((a2 - v7 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
    if (HIWORD(v13))
    {
      if (*(a1 + v12))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v13 > 0xFF)
    {
      if (*(a1 + v12))
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v13 < 2)
    {
      goto LABEL_19;
    }
  }

  if (*(a1 + v12))
  {
    goto LABEL_24;
  }

LABEL_19:
  if (v6 < 0x7FFFFFFF)
  {
    OUTLINED_FUNCTION_36_1(*((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
LABEL_24:
    OUTLINED_FUNCTION_95();
    return;
  }

  OUTLINED_FUNCTION_95();

  __swift_getEnumTagSinglePayload(v14, v15, v16);
}

void sub_1E391251C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(sub_1E42012F4() - 8);
  v11 = 8;
  if (*(v10 + 64) > 8uLL)
  {
    v11 = *(v10 + 64);
  }

  v12 = *(v7 + 64);
  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = v11 + ((((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v13 + 196) & ~v13) + 1;
  v15 = 8 * (v11 + ((((((v12 + 7) & 0xF8) + 15) & 0xF8) + v13 - 60) & ~v13) + 1);
  if (a3 <= v9)
  {
    v16 = 0;
  }

  else if (v14 <= 3)
  {
    v19 = ((a3 - v9 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
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

  if (v9 < a2)
  {
    v17 = ~v9 + a2;
    if (v14 < 4)
    {
      v18 = (v17 >> v15) + 1;
      if (v14)
      {
        v21 = v17 & ~(-1 << v15);
        bzero(a1, v14);
        if (v14 == 3)
        {
          *a1 = v21;
          a1[2] = BYTE2(v21);
        }

        else if (v14 == 2)
        {
          *a1 = v21;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v14);
      *a1 = v17;
      v18 = 1;
    }

    switch(v16)
    {
      case 1:
        a1[v14] = v18;
        goto LABEL_46;
      case 2:
        *&a1[v14] = v18;
        goto LABEL_46;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v14] = v18;
        goto LABEL_46;
      default:
        goto LABEL_46;
    }
  }

  switch(v16)
  {
    case 1:
      a1[v14] = 0;
      if (a2)
      {
        goto LABEL_29;
      }

      goto LABEL_46;
    case 2:
      *&a1[v14] = 0;
      if (!a2)
      {
        goto LABEL_46;
      }

      goto LABEL_29;
    case 3:
LABEL_47:
      __break(1u);
      return;
    case 4:
      *&a1[v14] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (!a2)
      {
        goto LABEL_46;
      }

LABEL_29:
      if (v8 < 0x7FFFFFFF)
      {
        v27 = (&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v28 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v28 = a2 - 1;
        }

        *v27 = v28;
LABEL_46:
        OUTLINED_FUNCTION_95();
      }

      else
      {
        OUTLINED_FUNCTION_95();

        __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
      }

      return;
  }
}

void sub_1E391281C(uint64_t a1)
{
  sub_1E38D5D68(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1E3912898()
{
  result = qword_1EE289430;
  if (!qword_1EE289430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCE8, &qword_1E42AA918);
    sub_1E3912924();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289430);
  }

  return result;
}

unint64_t sub_1E3912924()
{
  result = qword_1EE289490;
  if (!qword_1EE289490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCF0, &qword_1E42AA920);
    sub_1E39129B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289490);
  }

  return result;
}

unint64_t sub_1E39129B0()
{
  result = qword_1EE2895A8;
  if (!qword_1EE2895A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DCF8, &qword_1E42AA928);
    sub_1E3912A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895A8);
  }

  return result;
}

unint64_t sub_1E3912A3C()
{
  result = qword_1EE2898A8;
  if (!qword_1EE2898A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD00, &unk_1E42AA930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2898A8);
  }

  return result;
}

void sub_1E3912B08(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E38D5D68(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1E3912BBC()
{
  result = qword_1EE289448;
  if (!qword_1EE289448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD18, &qword_1E42AA9B8);
    sub_1E3912C48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289448);
  }

  return result;
}

unint64_t sub_1E3912C48()
{
  result = qword_1EE289508;
  if (!qword_1EE289508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD10, &qword_1E42AA9B0);
    sub_1E3912CD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289508);
  }

  return result;
}

unint64_t sub_1E3912CD4()
{
  result = qword_1EE289700;
  if (!qword_1EE289700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD08, &qword_1E42AA9A8);
    sub_1E3912D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289700);
  }

  return result;
}

unint64_t sub_1E3912D60()
{
  result = qword_1EE289C48;
  if (!qword_1EE289C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD30, &unk_1E42AA9D8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C48);
  }

  return result;
}

unint64_t sub_1E3912E10()
{
  result = qword_1ECF4F700[0];
  if (!qword_1ECF4F700[0])
  {
    type metadata accessor for LockupGradientImage(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF4F700);
  }

  return result;
}

unint64_t sub_1E3912E74()
{
  result = qword_1ECF2DD40;
  if (!qword_1ECF2DD40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD38, &qword_1E42AA9E8);
    sub_1E328FCF4(&qword_1EE288488, &qword_1ECF2DD48, &qword_1E42AA9F0);
    sub_1E328FCF4(&qword_1ECF2DD50, &qword_1ECF2DD58, &qword_1E42AA9F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DD40);
  }

  return result;
}

uint64_t sub_1E3912F64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3912FA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E3913000()
{
  result = qword_1EE2891A0;
  if (!qword_1EE2891A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD70, &qword_1E42AAA18);
    sub_1E3913084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891A0);
  }

  return result;
}

unint64_t sub_1E3913084()
{
  result = qword_1EE2891A8;
  if (!qword_1EE2891A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DD28, &qword_1E42AA9D0);
    swift_getOpaqueTypeConformance2();
    sub_1E3912BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2891A8);
  }

  return result;
}

uint64_t sub_1E391315C(uint64_t a1)
{
  *(v1 + 104) = 0;
  v2 = sub_1E3C2F9A0();

  v30 = sub_1E3952C28(16.0);
  v31 = v3;
  v32 = v4;
  v33 = v5;
  v34 = 0;
  sub_1E3C2CC78();
  if (sub_1E39DFFC8() & 1) != 0 || (TVAppFeature.isEnabled.getter(10, v6, v7))
  {
    v8 = [objc_opt_self() clearColor];
  }

  else
  {
    v9 = *sub_1E3E60480();
  }

  sub_1E3C2DE50();
  v10 = sub_1E37BD068();
  v22[0] = 19;
  v28 = 17;
  v27 = 17;
  v26 = 15;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_91();
  sub_1E3C3DE00();
  v23 = v24;
  sub_1E3C2FCB8(v22, &v28, &v27, &v25, &v23, &v26, &qword_1F5D549D8, v29);
  v11 = OUTLINED_FUNCTION_0_82();
  (*(*v10 + 1600))(v22, 48, v11 & 1, &qword_1F5D549D8);

  v12 = *(**(v2 + 104) + 2056);

  v12(0, 0);

  v13 = *(v2 + 104);
  v22[0] = 10;
  v28 = 7;

  sub_1E3C2FC98();
  v26 = v27;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_91();
  sub_1E3C3DE00();
  v23 = v24;
  sub_1E3C3DE00();
  v21[0] = v21[1];
  sub_1E3C2FCB8(v22, &v26, &v25, &v23, v21, &v28, &qword_1F5D54AF8, v29);
  v14 = OUTLINED_FUNCTION_0_82();
  (*(*v13 + 1600))(v22, 54, v14 & 1, &qword_1F5D54AF8);

  v15 = *(v2 + 104);

  v16 = *sub_1E3E5FD88();
  v17 = *(*v15 + 680);
  v18 = v16;
  v17(v16);

  sub_1E3C37CBC(v19, 23);

  return v2;
}

uint64_t sub_1E39134B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3913528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39134B4();
  *a1 = result;
  return result;
}

uint64_t sub_1E391357C(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E39135F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  OUTLINED_FUNCTION_15_0(v3 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, a2);
  v5 = *(v3 + v4);
  v6 = sub_1E37BD068();
  if (!v5)
  {
    OUTLINED_FUNCTION_8();
    (*(v170 + 1984))(1);

    OUTLINED_FUNCTION_0_36();
    v172 = *(v171 + 2056);

    v173 = OUTLINED_FUNCTION_15_8();
    v172(v173);

    OUTLINED_FUNCTION_0_36();
    v175 = *(v174 + 2080);

    v176 = OUTLINED_FUNCTION_15_8();
    v175(v176);

    OUTLINED_FUNCTION_0_36();
    v178 = *(v177 + 2104);

    v179 = OUTLINED_FUNCTION_15_8();
    v178(v179);

    v180 = *(v3 + 104);

    v181 = *sub_1E3E5FD88();
    v182 = *(*v180 + 680);
    v183 = v181;
    v182(v181);

    LOBYTE(v754) = 21;
    LOBYTE(v751) = 15;
    LOBYTE(v749[0]) = 14;

    OUTLINED_FUNCTION_21_36();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_7_72();
    v184 = sub_1E3C3DE00();
    LOBYTE(v733) = v743;
    v192 = OUTLINED_FUNCTION_13_57(v184, v185, v186, v187, v188, v189, v190, v191, v587, v616, v645, v674, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, 19);
    sub_1E3C2FCB8(v192, &v745, &v733, &v754, &v751, v749, &qword_1F5D549D8, v193);
    OUTLINED_FUNCTION_2_70();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v202 = OUTLINED_FUNCTION_11_52(v194, v195, v196, v197, v198, v199, v200, v201, v594, v623, v652, v681, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    v203(v202, 48);

    LOBYTE(v739) = 5;
    LOBYTE(v754) = 5;
    LOBYTE(v751) = 11;
    LOBYTE(v749[0]) = 11;

    OUTLINED_FUNCTION_21_36();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_72();
    sub_1E3C3DE00();
    LOBYTE(v733) = v743;
    OUTLINED_FUNCTION_23_29();
    sub_1E3C2FCB8(v204, v205, v206, v207, v749, &v733, &qword_1F5D54AF8, v208);
    OUTLINED_FUNCTION_2_70();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v217 = OUTLINED_FUNCTION_11_52(v209, v210, v211, v212, v213, v214, v215, v216, v595, v624, v653, v682, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    v218(v217, 54);

    OUTLINED_FUNCTION_0_36();
    v220 = *(v219 + 1720);

    v220(10);

    v221 = OUTLINED_FUNCTION_5_0(v3 + 144, &v703);
    v227 = OUTLINED_FUNCTION_37_19(v221, v222, v223, v224, v225, v226);
    if (v227 & 1) != 0 || (OUTLINED_FUNCTION_38_14(v227, v228, v229, v230, v231, v232))
    {
      if ((TVAppFeature.isEnabled.getter(10, v228, v229) & 1) == 0)
      {
        OUTLINED_FUNCTION_8();
        v234 = *(v233 + 1720);

        v234(7);
      }

      OUTLINED_FUNCTION_8();
      v236 = *(v235 + 2080);

      v237 = OUTLINED_FUNCTION_15_8();
      v236(v237);

      OUTLINED_FUNCTION_0_36();
      v239 = *(v238 + 2104);

      v240 = OUTLINED_FUNCTION_10_7();
      v239(v240);
    }

    sub_1E374EA2C();
    v241 = OUTLINED_FUNCTION_15_8();
    v242(v241);

    OUTLINED_FUNCTION_3_1();
    v244 = *(v243 + 2080);

    v245 = OUTLINED_FUNCTION_15_8();
    v244(v245);

    OUTLINED_FUNCTION_3_1();
    v247 = *(v246 + 2104);

    v248 = OUTLINED_FUNCTION_15_8();
    v247(v248);

    OUTLINED_FUNCTION_3_1();
    v250 = *(v249 + 1984);

    v250(1);

    OUTLINED_FUNCTION_3_1();
    v252 = *(v251 + 680);

    v252(0);

    OUTLINED_FUNCTION_3_1();
    v254 = *(v253 + 704);

    v254(1);

    OUTLINED_FUNCTION_3_1();
    v256 = *(v255 + 1720);

    v256(10);

    v257 = OUTLINED_FUNCTION_5_0(v3 + 144, &v706);
    v263 = OUTLINED_FUNCTION_37_19(v257, v258, v259, v260, v261, v262);
    if (v263 & 1) != 0 || (v269 = OUTLINED_FUNCTION_38_14(v263, v264, v265, v266, v267, v268), (v269))
    {
      if ((TVAppFeature.isEnabled.getter(10, v264, v265) & 1) == 0)
      {
        OUTLINED_FUNCTION_8();
        v271 = *(v270 + 1720);

        v271(7);
      }

      OUTLINED_FUNCTION_8();
      v273 = *(v272 + 2080);

      v274 = OUTLINED_FUNCTION_15_8();
      v273(v274);

      OUTLINED_FUNCTION_3_1();
      v276 = *(v275 + 2104);

      v277 = OUTLINED_FUNCTION_10_7();
      v276(v277);
    }

    if (sub_1E3915B78(v269))
    {
      LOBYTE(v739) = 21;

      sub_1E3C2FC98();
      LOBYTE(v751) = v754;
      sub_1E3C3DE00();
      LOBYTE(v747[0]) = v749[0];
      sub_1E3C3DE00();
      LOBYTE(v743) = v745;
      sub_1E3C3DE00();
      LOBYTE(v727) = v733;
      v278 = sub_1E3C3DE00();
      LOBYTE(v715) = v721;
      v286 = OUTLINED_FUNCTION_13_57(v278, v279, v280, v281, v282, v283, v284, v285, v596, v625, v654, v683, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      OUTLINED_FUNCTION_25_32(v286, v287, v597, v626, v655, v684, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727);
      OUTLINED_FUNCTION_2_70();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v296 = OUTLINED_FUNCTION_11_52(v288, v289, v290, v291, v292, v293, v294, v295, v598, v627, v656, v685, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      v298 = 48;
    }

    else
    {
      LOBYTE(v739) = 21;
      LOBYTE(v754) = 23;

      OUTLINED_FUNCTION_40_20();
      LOBYTE(v749[0]) = v751;
      OUTLINED_FUNCTION_21_36();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_24_23();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_10_44();
      OUTLINED_FUNCTION_31_25(v338, v339, v340, v596, v625, v654, v683, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733);
      OUTLINED_FUNCTION_2_70();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v349 = OUTLINED_FUNCTION_11_52(v341, v342, v343, v344, v345, v346, v347, v348, v601, v630, v659, v688, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      v350(v349, 48);

      LOBYTE(v739) = 11;
      LOBYTE(v754) = 5;

      OUTLINED_FUNCTION_40_20();
      LOBYTE(v749[0]) = v751;
      OUTLINED_FUNCTION_21_36();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_72();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_24_23();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_10_44();
      OUTLINED_FUNCTION_31_25(v351, v352, v353, v602, v631, v660, v689, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733);
      OUTLINED_FUNCTION_2_70();
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_14();
      v296 = OUTLINED_FUNCTION_11_52(v354, v355, v356, v357, v358, v359, v360, v361, v603, v632, v661, v690, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      v298 = 54;
    }

    v297(v296, v298);

    OUTLINED_FUNCTION_8();
    v363 = *(v362 + 728);

    v363(2);

    v366 = sub_1E3C2F644(v364, v365);
    if (v366 == 2)
    {
      v371 = 74.0;
    }

    else if (v366 == 4)
    {
      OUTLINED_FUNCTION_5_0(v3 + 144, &v709);
      if (sub_1E373F6E0(*(v3 + 144), 204, v367, v368, v369, v370))
      {
        v371 = 82.0;
      }

      else
      {
        v371 = 76.0;
      }
    }

    else
    {
      v371 = 76.0;
    }

    OUTLINED_FUNCTION_5_0(v3 + 144, &v712);
    if (sub_1E373F6E0(*(v3 + 144), 204, v372, v373, v374, v375))
    {
      v377 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
      [v377 setShadowOffset_];
      [v377 setShadowBlurRadius_];
      v378 = [objc_opt_self() blackColor];
      v379 = [v378 colorWithAlphaComponent_];

      [v377 setShadowColor_];
      v381 = *(*sub_1E38EF97C(v380) + 608);
      v382 = v377;
      v381(v377);
    }

    sub_1E38EF97C(v376);
    v383 = OUTLINED_FUNCTION_36_2();
    v384(v383);

    OUTLINED_FUNCTION_8();
    v386 = *(v385 + 208);

    v387 = OUTLINED_FUNCTION_36_2();
    v386(v387);

    OUTLINED_FUNCTION_36();
    v389 = v388 + 1768;
    v390 = *(v388 + 1768);

    v390(v391);
    OUTLINED_FUNCTION_11_5();

    (*(*v389 + 1816))(v371 * 0.5, 0);

    v739 = 0uLL;
    v740 = xmmword_1E4296CD0;
    LOBYTE(v741) = 0;
    v754 = 0uLL;
    v755 = xmmword_1E4298710;
    v756 = 0;
    v751 = 0uLL;
    v752 = xmmword_1E42AAA60;
    v753 = 0;
    type metadata accessor for UIEdgeInsets();
    OUTLINED_FUNCTION_11_5();

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_19_38();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_41();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_34_27();
    v400 = OUTLINED_FUNCTION_13_57(v392, v393, v394, v395, v396, v397, v398, v399, v599, v628, v657, v686, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FCB8(v400, v747, &v754, &v751, &v743, &v727, v389, v401);
    v410 = OUTLINED_FUNCTION_20_40(v402, v403, v404, v405, v406, v407, v408, v409, v604, v633, v662, v691, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    memcpy(v410, v411, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v420 = OUTLINED_FUNCTION_11_52(v412, v413, v414, v415, v416, v417, v418, v419, v605, v634, v663, v692, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    v421(v420, 0);

    LOBYTE(v739) = 2;
    LOBYTE(v754) = 7;
    sub_1E3C2FC98();
    LOBYTE(v749[0]) = v751;
    sub_1E3C3DE00();
    LOBYTE(v745) = v747[0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_24_23();
    v422 = sub_1E3C3DE00();
    LOBYTE(v721) = v727;
    v430 = OUTLINED_FUNCTION_5_68(v422, v423, v424, v425, v426, v427, v428, v429, v606, v635, v664, v693, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FCB8(v430, v431, v432, v433, v434, v435, &unk_1F5D999E0, v436);
    OUTLINED_FUNCTION_2_70();
    v437 = OUTLINED_FUNCTION_18();
    v445 = OUTLINED_FUNCTION_9_51(v437, v438, v439, v440, v441, v442, v443, v444, v607, v636, v665, v694, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FDFC(v445, 26, v446, &unk_1F5D999E0);
    v447 = OUTLINED_FUNCTION_5_0(v3 + 144, v761);
    v453 = OUTLINED_FUNCTION_37_19(v447, v448, v449, v450, v451, v452);
    if (v453 & 1) != 0 || (OUTLINED_FUNCTION_38_14(v453, v454, v455, v456, v457, v458))
    {
      v463 = sub_1E3E5FB0C();
    }

    else
    {
      if (sub_1E373F6E0(*(v3 + 144), 204, v459, v460, v461, v462))
      {
        goto LABEL_45;
      }

      v463 = sub_1E3E5FACC();
    }

    v464 = *v463;
LABEL_45:
    sub_1E3C2DE50();
    v469 = sub_1E373F6E0(*(v3 + 144), 204, v465, v466, v467, v468);
    __asm { FMOV            V1.2D, #12.0 }

    v739 = _Q1;
    v740 = xmmword_1E4298720;
    LOBYTE(v741) = 0;
    __asm { FMOV            V0.2D, #14.0 }

    v754 = _Q0;
    v755 = xmmword_1E4298730;
    v756 = 0;
    v476 = 0x4038000000000000;
    if ((v469 & 1) == 0)
    {
      v476 = 0;
    }

    v751 = xmmword_1E42AAA70;
    *&v752 = v476;
    *(&v752 + 1) = 0x4034000000000000;
    v753 = 0;
    v749[0] = _Q0;
    v749[1] = xmmword_1E4298730;
    v750 = 0;
    v747[0] = _Q0;
    v747[1] = xmmword_1E4298730;
    v748 = 0;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_41();
    OUTLINED_FUNCTION_23_29();
    sub_1E3C2FCB8(v477, v478, v479, v480, v749, v747, v389, v481);
    v490 = OUTLINED_FUNCTION_20_40(v482, v483, v484, v485, v486, v487, v488, v489, v608, v637, v666, v695, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    memcpy(v490, v491, 0xE9uLL);
    v492 = OUTLINED_FUNCTION_18();
    v500 = OUTLINED_FUNCTION_9_51(v492, v493, v494, v495, v496, v497, v498, v499, v609, v638, v667, v696, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FDFC(v500, 1, v501, v389);
    if (TVAppFeature.isEnabled.getter(10, v502, v503) & 1) != 0 && (sub_1E373F6E0(*(v3 + 144), 194, v504, v505, v506, v507))
    {
      v508 = *sub_1E3E5FB88();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.2];
    }

    sub_1E3C2E258();
    sub_1E39537A8();
    *&v739 = v509;
    *(&v739 + 1) = v510;
    *&v740 = v511;
    *(&v740 + 1) = v512;
    LOBYTE(v741) = 0;
    sub_1E3C2FC98();
    v751 = v754;
    v752 = v755;
    v753 = v756;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_38();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_16_41();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_34_27();
    v513 = sub_1E3C3DE00();
    LOBYTE(v719) = v725;
    v521 = OUTLINED_FUNCTION_13_57(v513, v514, v515, v516, v517, v518, v519, v520, v610, v639, v668, v697, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v721, v722, v723, v724, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    OUTLINED_FUNCTION_25_32(v521, v522, v611, v640, v669, v698, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727);
    v531 = OUTLINED_FUNCTION_20_40(v523, v524, v525, v526, v527, v528, v529, v530, v612, v641, v670, v699, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    memcpy(v531, v532, 0xE9uLL);
    v533 = OUTLINED_FUNCTION_18();
    v541 = OUTLINED_FUNCTION_9_51(v533, v534, v535, v536, v537, v538, v539, v540, v613, v642, v671, v700, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FDFC(v541, 17, v542, v389);
    if (sub_1E373F6E0(*(v3 + 144), 204, v543, v544, v545, v546))
    {
      v551 = sub_1E39DFFC8();
      v552 = sub_1E39DFFC8();
      *&v739 = 0x4061C00000000000;
      BYTE8(v739) = 0;
      v553 = 0x4064400000000000;
      if (v551)
      {
        v553 = 0x4065800000000000;
      }

      *&v754 = v553;
      BYTE8(v754) = 0;
      v554 = 0x406E000000000000;
      if (v552)
      {
        v554 = 0x406CC00000000000;
      }

      *&v751 = v554;
      BYTE8(v751) = 0;
      v555 = MEMORY[0x1E69E7DE0];
      sub_1E3C3DE00();
      *&v747[0] = *&v749[0];
      BYTE8(v747[0]) = BYTE8(v749[0]);
      sub_1E3C3DE00();
      v743 = v745;
      v744 = v746;
      sub_1E3C3DE00();
      v727 = v733;
      LOBYTE(v728) = v734;
      OUTLINED_FUNCTION_23_29();
      sub_1E3C2FCB8(v556, v557, v558, v559, &v743, &v727, v555, v560);
      v569 = OUTLINED_FUNCTION_20_40(v561, v562, v563, v564, v565, v566, v567, v568, v614, v643, v672, v701, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      memcpy(v569, v570, 0x59uLL);
      v571 = OUTLINED_FUNCTION_18();
      v579 = OUTLINED_FUNCTION_9_51(v571, v572, v573, v574, v575, v576, v577, v578, v615, v644, v673, v702, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
      sub_1E3C2FDFC(v579, 6, v580, v555);
    }

    else
    {
      v581 = sub_1E373F6E0(*(v3 + 144), 194, v547, v548, v549, v550);
      if (v581 & 1) != 0 || (OUTLINED_FUNCTION_38_14(v581, v582, v583, v584, v585, v586))
      {
        sub_1E3C2D438();
      }
    }

    OUTLINED_FUNCTION_36_0();
    goto LABEL_61;
  }

  if (v5 != 1)
  {
    sub_1E3C6DC94(v6);

    sub_1E374EA2C();
    sub_1E3C6DE18();

    v300 = sub_1E38EF97C(v299);
    sub_1E3C6E348(v300);

    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D0A0();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2EAE8();
    sub_1E3C2DE50();
    sub_1E3C2E258();
    v757 = 0u;
    v758 = 0u;
    LOBYTE(v759) = 1;
    sub_1E3C2D7EC();
    v301 = sub_1E3C6DC70();
    v302 = v301[1];
    v739 = *v301;
    v740 = v302;
    LOBYTE(v741) = 0;
    sub_1E3C2CC78();
    sub_1E3C6DC7C();
    return sub_1E3C2EAE8();
  }

  OUTLINED_FUNCTION_8();
  (*(v7 + 1984))(5);

  BYTE8(v739) = 0;
  *&v754 = 1;
  BYTE8(v754) = 0;

  v8 = MEMORY[0x1E69E6810];
  OUTLINED_FUNCTION_40_20();
  *&v749[0] = v751;
  BYTE8(v749[0]) = BYTE8(v751);
  OUTLINED_FUNCTION_21_36();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_27_21();
  v9 = OUTLINED_FUNCTION_26_28();
  LOBYTE(v722) = v728;
  v17 = OUTLINED_FUNCTION_5_68(v9, v10, v11, v12, v13, v14, v15, v16, v587, v616, v645, v674, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v727, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, 2);
  sub_1E3C2FCB8(v17, v18, v19, v20, v21, v22, v8, v23);
  v32 = OUTLINED_FUNCTION_20_40(v24, v25, v26, v27, v28, v29, v30, v31, v588, v617, v646, v675, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
  memcpy(v32, v33, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v42 = OUTLINED_FUNCTION_11_52(v34, v35, v36, v37, v38, v39, v40, v41, v589, v618, v647, v676, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
  v43(v42, 62);

  OUTLINED_FUNCTION_0_36();
  v45 = *(v44 + 2080);

  v46 = OUTLINED_FUNCTION_10_7();
  v45(v46);

  OUTLINED_FUNCTION_0_36();
  v48 = *(v47 + 2104);

  v49 = OUTLINED_FUNCTION_10_7();
  v48(v49);

  v50 = *(v3 + 104);

  v51 = *sub_1E3E5FD88();
  v52 = *(*v50 + 680);
  v53 = v51;
  v52(v51);

  v55 = sub_1E3915B78(v54);
  v56 = *(**(v3 + 104) + 1696);

  if (v55)
  {
    v57 = 19;
  }

  else
  {
    v57 = 17;
  }

  if (v55)
  {
    v58 = 10;
  }

  else
  {
    v58 = 5;
  }

  v56(v57);

  OUTLINED_FUNCTION_0_36();
  v60 = *(v59 + 1792);

  v60(v58);

  OUTLINED_FUNCTION_0_36();
  v62 = *(v61 + 1720);

  v62(12);

  sub_1E374EA2C();
  BYTE8(v739) = 0;
  *&v754 = 1;
  BYTE8(v754) = 0;
  OUTLINED_FUNCTION_40_20();
  *&v749[0] = v751;
  BYTE8(v749[0]) = BYTE8(v751);
  OUTLINED_FUNCTION_21_36();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_27_21();
  v63 = OUTLINED_FUNCTION_26_28();
  LOBYTE(v722) = v728;
  v71 = OUTLINED_FUNCTION_5_68(v63, v64, v65, v66, v67, v68, v69, v70, v590, v619, v648, v677, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v727, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, 2);
  sub_1E3C2FCB8(v71, v72, v73, v74, v75, v76, v8, v77);
  v86 = OUTLINED_FUNCTION_20_40(v78, v79, v80, v81, v82, v83, v84, v85, v591, v620, v649, v678, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
  memcpy(v86, v87, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v96 = OUTLINED_FUNCTION_11_52(v88, v89, v90, v91, v92, v93, v94, v95, v592, v621, v650, v679, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
  v97(v96, 62);

  OUTLINED_FUNCTION_3_1();
  v99 = *(v98 + 2080);

  v100 = OUTLINED_FUNCTION_10_7();
  v99(v100);

  OUTLINED_FUNCTION_3_1();
  v102 = *(v101 + 2104);

  v103 = OUTLINED_FUNCTION_10_7();
  v102(v103);

  OUTLINED_FUNCTION_3_1();
  v105 = *(v104 + 1984);

  v105(5);

  OUTLINED_FUNCTION_3_1();
  v107 = *(v106 + 680);

  v107(0);

  OUTLINED_FUNCTION_3_1();
  v109 = *(v108 + 704);

  v109(1);

  OUTLINED_FUNCTION_3_1();
  v111 = *(v110 + 1696);

  v111(19);

  OUTLINED_FUNCTION_3_1();
  v113 = *(v112 + 1792);

  v113(5);

  OUTLINED_FUNCTION_3_1();
  v115 = *(v114 + 1720);

  v115(12);

  OUTLINED_FUNCTION_3_1();
  v117 = *(v116 + 728);

  v117(2);

  v118 = sub_1E38A86A4();
  v119 = *sub_1E3E5FDEC();
  v120 = *(*v118 + 680);
  v121 = v119;
  v120(v119);

  OUTLINED_FUNCTION_36();
  v123 = *(v122 + 2024);

  v124 = OUTLINED_FUNCTION_15_8();
  v123(v124);

  OUTLINED_FUNCTION_36();
  v126 = *(v125 + 2072);

  v126(15);

  sub_1E3952C78();
  OUTLINED_FUNCTION_8_8(v127, v128, v129, v130);
  OUTLINED_FUNCTION_8();
  (*(v131 + 160))(&v757);

  v132 = OUTLINED_FUNCTION_5_0(v3 + 144, &v751);
  v138 = OUTLINED_FUNCTION_37_19(v132, v133, v134, v135, v136, v137);
  v139.n128_u64[0] = 0x4048000000000000;
  if (v138)
  {
    v140 = 62.0;
  }

  else
  {
    v140 = 48.0;
  }

  sub_1E38EF97C(v139);
  v141 = OUTLINED_FUNCTION_36_2();
  v142(v141);

  OUTLINED_FUNCTION_8();
  v144 = *(v143 + 208);

  v145 = OUTLINED_FUNCTION_36_2();
  v144(v145);

  OUTLINED_FUNCTION_36();
  v147 = v146 + 1768;
  v148 = *(v146 + 1768);

  v148(v149);
  OUTLINED_FUNCTION_11_5();

  (*(*v147 + 1816))(v140 * 0.5, 0);

  v150 = sub_1E3952CA4();
  OUTLINED_FUNCTION_8_8(v150, v151, v152, v153);
  OUTLINED_FUNCTION_8();
  (*(v154 + 160))(&v757);

  v159 = sub_1E373F6E0(*(v3 + 144), 204, v155, v156, v157, v158);
  if (v159)
  {
    v160 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v160 setShadowOffset_];
    [v160 setShadowBlurRadius_];
    v161 = [objc_opt_self() blackColor];
    v162 = [v161 colorWithAlphaComponent_];

    [v160 setShadowColor_];
    v163 = *(**(v3 + 120) + 608);

    v164 = v160;
    v163(v160);
  }

  if (sub_1E3915B78(v159))
  {
    sub_1E39537A8();
    OUTLINED_FUNCTION_8_8(v165, v166, v167, v168);
    sub_1E3C2D7EC();
  }

  else
  {
    v304 = *sub_1E3E5FACC();
    sub_1E3C2DE50();
    sub_1E3C2E014(11);
    sub_1E39537A8();
    *&v754 = v305;
    *(&v754 + 1) = v306;
    *&v755 = v307;
    *(&v755 + 1) = v308;
    v756 = 0;
    sub_1E3C2D7EC();
    v309 = [objc_opt_self() systemGray4Color];
    LOBYTE(v739) = v309;
    *&v749[0] = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.2];
    v310 = sub_1E3755B54();
    sub_1E3C2FC98();
    v745 = *&v747[0];
    sub_1E3C3DE00();
    sub_1E3C3DE00();
    v311 = sub_1E3C3DE00();
    v761[0] = v715;
    v319 = OUTLINED_FUNCTION_13_57(v311, v312, v313, v314, v315, v316, v317, v318, v593, v622, v651, v680, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v727, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v743, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FCB8(v319, &v745, &v733, v749, &v721, v761, v310, v320);
    v321 = v757;
    v322 = v758;
    v323 = v759;
    v324 = v760;
    v739 = v757;
    v740 = v758;
    v741 = v759;
    v742 = v760;
    v325 = OUTLINED_FUNCTION_18();
    v333 = OUTLINED_FUNCTION_9_51(v325, v326, v327, v328, v329, v330, v331, v332, v600, v629, v658, v687, v703, v704, v705, v706, v707, v708, v709, v710, v711, v712, v713, v714, v715, v716, v717, v718, v719, v720, v721, v722, v723, v724, v725, v726, v727, v728, v729, v730, v731, v732, v733, v734, v735, v736, v737, v738, v739);
    sub_1E3C2FDFC(v333, 29, v334, v310);
  }

  v169.n128_u64[0] = 10.0;
  *&v739 = j__OUTLINED_FUNCTION_7_78(v169);
  *(&v739 + 1) = v335;
  *&v740 = v336;
  *(&v740 + 1) = v337;
  LOBYTE(v741) = 0;
  sub_1E3C2CC78();
  OUTLINED_FUNCTION_36_0();
  sub_1E3C2D0A0();
LABEL_61:
  sub_1E3C2D150();
  sub_1E3C2CE80();
  return sub_1E3C2D200();
}

uint64_t sub_1E39153B8(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  result = OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, v8);
  if (*(v1 + v5) != v4)
  {
    return sub_1E39135F0(result, v7);
  }

  return result;
}

uint64_t sub_1E3915434(char a1, uint64_t a2)
{
  v2 = a2;
  swift_allocObject();
  return sub_1E3915480(a1 & 1, v2);
}

uint64_t sub_1E3915480(char a1, __int16 a2)
{
  *(v2 + 136) = 0;
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType) = 0;
  OUTLINED_FUNCTION_11_3(v2 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout__type, v19);
  v5 = a1 & 1;
  sub_1E4200634();
  swift_endAccess();
  *(v2 + 144) = a2;
  v6 = sub_1E3C2F9A0();

  v9 = TVAppFeature.isEnabled.getter(10, v7, v8);
  if ((v9 & 1) == 0)
  {
    v11 = v5 ^ 1;
    v12 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
    v9 = swift_beginAccess();
    *(v6 + v12) = v11;
  }

  sub_1E39135F0(v9, v10);
  v13 = sub_1E37BD068();
  sub_1E3C37CBC(v13, 23);

  v14 = sub_1E374EA2C();
  sub_1E3C37CBC(v14, 15);

  v16 = sub_1E38EF97C(v15);
  sub_1E3C37CBC(v16, 41);

  v17 = sub_1E38A86A4();
  sub_1E3C37CBC(v17, 31);

  return v6;
}

uint64_t sub_1E39155BC(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  sub_1E39134B4();
  OUTLINED_FUNCTION_15_0(v2 + 144, v3);
  v4 = OUTLINED_FUNCTION_30_21();
  v5 = sub_1E39153B8(v4);
  return sub_1E39135F0(v5, v6);
}

uint64_t sub_1E391561C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, __int16 a5)
{
  v7 = a3;
  v8 = a2;
  if ((TVAppFeature.isEnabled.getter(10, a2, a3) & 1) == 0)
  {
    return !(a4 & 1);
  }

  if ((a4 & 1) == 0)
  {
    return 1;
  }

  if (a5 == 215)
  {
    if (sub_1E3A24FDC(a1))
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  else if (a5 == 194)
  {
    if (v8)
    {
      LOBYTE(v8) = [v8 isAXEnabled];
    }

    v13 = sub_1E3A24FDC(a1);
    result = 0;
    if ((v13 & 1) != 0 && (v8 & 1) == 0)
    {
      if (v7 == 5)
      {
        return 1;
      }

      sub_1E3890B18(0, v11, v12);
      if ((sub_1E4205E84() & 1) == 0)
      {
        return 1;
      }

      return 2;
    }
  }

  else
  {
    return 0;
  }

  return result;
}

double sub_1E391572C(__objc2_class **a1)
{
  if (*a1 == _TtC8VideosUI24PlaybackPersonViewLayout)
  {

    sub_1E3C35F80();
    v1 = sub_1E39134B4();
    sub_1E391357C(v1);
  }

  return result;
}

void sub_1E39157F0()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  *(v0 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType) = 0;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3915868()
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x3D656C797473, 0xE600000000000000);
  sub_1E39134B4();
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x5474756F79616C20, 0xEC0000003D657079);
  OUTLINED_FUNCTION_15_0(v0 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, v1);
  sub_1E4207614();
  v2 = MEMORY[0x1E69109E0](32, 0xE100000000000000);
  sub_1E3C3684C(v2, v3, v4);
  v6 = v5;
  v8 = v7;

  MEMORY[0x1E69109E0](v6, v8);

  return 0;
}

uint64_t sub_1E39159B8()
{

  v1 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD78, &unk_1E42AAAC8);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3915A48()
{
  v0 = sub_1E3C36C6C();

  v1 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DD78, &unk_1E42AAAC8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3915AD8()
{
  v0 = sub_1E3915A48();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E3915B2C@<X0>(uint64_t *a1@<X8>)
{
  OUTLINED_FUNCTION_8();
  result = sub_1E4200514();
  *a1 = result;
  return result;
}

uint64_t sub_1E3915B78(uint64_t a1)
{
  if (sub_1E39DFFC8())
  {
    OUTLINED_FUNCTION_15_0(v1 + 144, v2);
    v7 = sub_1E373F6E0(*(v1 + 144), 204, v3, v4, v5, v6);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL sub_1E3915BBC()
{
  sub_1E39134B4();
  OUTLINED_FUNCTION_5_0(v0 + 144, v5);
  v1 = OUTLINED_FUNCTION_30_21();
  v2 = OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI24PlaybackPersonViewLayout_layoutType, &v4);
  return *(v0 + v2) != v1;
}

unint64_t sub_1E3915C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2DD80;
  if (!qword_1ECF2DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DD80);
  }

  return result;
}

unint64_t sub_1E3915CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2DD88;
  if (!qword_1ECF2DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DD88);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackPersonViewLayoutType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t type metadata accessor for PlaybackPersonViewLayout(uint64_t a1)
{
  result = qword_1EE297460;
  if (!qword_1EE297460)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3915E3C(uint64_t a1)
{
  sub_1E38C734C(319, &unk_1EE289FF0, &type metadata for PlaybackPersonViewLayout.PlaybackPersonViewType, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PlaybackPersonViewLayout.PlaybackPersonViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3915FEC()
{
  v1 = OUTLINED_FUNCTION_106();
  type metadata accessor for AppEnvironment(v1);
  OUTLINED_FUNCTION_1_92();
  sub_1E391D20C(v2, v3, &unk_1E42BD340);
  OUTLINED_FUNCTION_19_3();
  sub_1E4201754();
  v4 = *(*v0 + 392);

  v6 = v4(v5);

  if (v6)
  {
    type metadata accessor for UpsellOfferTemplateLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  return v0;
}

uint64_t sub_1E39160E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (**a5)()@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 2) = a1;
  *(v10 + 3) = a2;
  *(v10 + 4) = a3;
  *(v10 + 5) = a4;
  *a5 = sub_1E3916664;
  a5[1] = v10;
}

void sub_1E3916174()
{
  OUTLINED_FUNCTION_93();
  v67 = v2;
  v68 = v1;
  v4 = v3;
  v70 = v5;
  v7 = v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD8, &qword_1E42AB0C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFE0, &qword_1E42AB0D0);
  OUTLINED_FUNCTION_0_10();
  v74 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v73 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFE8, &qword_1E42AB0D8);
  OUTLINED_FUNCTION_0_10();
  v72 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_49_2();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFF0, &qword_1E42AB0E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v64 - v24;
  sub_1E4200E64();
  if (v27 == 0.0 && v26 == 0.0)
  {
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  }

  else
  {
    v64[1] = v25;
    v65 = v11;
    v69 = v15;
    v66 = v7;
    sub_1E3EB9AB8(v75);
    sub_1E4200E64();
    v34 = v33;
    sub_1E4200E44();
    v36 = v35;
    sub_1E4200E44();
    if (v4)
    {
      v38 = v34 + v36 + v37;
      v39 = *(*v4 + 184);

      v39(v40);
      v42 = v41;
      LOBYTE(v39) = v43;

      if (v39)
      {
        v44 = 0;
      }

      else
      {
        v44 = v42;
      }

      *&v75[3] = v38;
      v75[4] = v44;
      v76 = 0;
      v45 = sub_1E4202704();
      MEMORY[0x1EEE9AC00](v45);
      v46 = v67;
      v47 = v70;
      v64[-6] = v68;
      v64[-5] = v47;
      v64[-4] = v4;
      v64[-3] = v46;
      v64[-2] = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFF8, &unk_1E42AB0E8);
      sub_1E391D2C4();
      sub_1E4200AD4();
      sub_1E42026F4();
      sub_1E4200AB4();
      *v10 = sub_1E4201D44();
      *(v10 + 1) = 0;
      v10[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E008, &qword_1E42AB0F8);
      sub_1E3917434();
      OUTLINED_FUNCTION_1();
      sub_1E374AD40(v48, &qword_1ECF2DFD8, &qword_1E42AB0C8, v49);
      v50 = v73;
      sub_1E4203394();
      sub_1E325F69C(v10, &qword_1ECF2DFD8);
      v51 = sub_1E4202754();
      v52 = sub_1E4202774();
      sub_1E4202774();
      if (sub_1E4202774() != v51)
      {
        v52 = sub_1E4202774();
      }

      (*(v74 + 32))(v22, v50, v65);
      *(v22 + *(v18 + 36)) = v52;
      (*(v72 + 8))(v0, v69);
      OUTLINED_FUNCTION_21_1();
      sub_1E3741EA0(v53, v54, v55, &qword_1E42AB0E0);
      OUTLINED_FUNCTION_21_1();
      sub_1E3741EA0(v56, v57, v58, &qword_1E42AB0E0);
      v59 = OUTLINED_FUNCTION_22_1();
      __swift_storeEnumTagSinglePayload(v59, v60, v61, v18);
      OUTLINED_FUNCTION_54_0();
    }

    else
    {
      type metadata accessor for AppEnvironment(0);
      OUTLINED_FUNCTION_1_92();
      sub_1E391D20C(v62, v63, &unk_1E42BD340);
      sub_1E4201744();
      __break(1u);
    }
  }
}

void sub_1E39166EC(uint64_t a1)
{
  sub_1E3916B4C(319, &qword_1ECF2DDA0, type metadata accessor for UpsellOfferTransactionViewLayout, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1E3916B4C(319, v2, v3, MEMORY[0x1E69E6720]);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_30_22(v4, &qword_1EE23B530, &unk_1ECF2C790, &qword_1E42996A0);
      if (v6 <= 0x3F)
      {
        sub_1E3916AE8(319, &qword_1EE289E90, &qword_1ECF2D6D0, &qword_1E42A9DF0, MEMORY[0x1E697DCC0]);
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3916878(uint64_t a1)
{
  type metadata accessor for TemplateViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_1E3916B4C(319, &qword_1ECF2DDB0, type metadata accessor for UpsellOfferViewLayout, MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_30_22(v2, &qword_1EE23B620, &qword_1ECF34240, &unk_1E4297E90);
      if (v4 <= 0x3F)
      {
        sub_1E3916B4C(319, qword_1EE282B40, type metadata accessor for ImageViewModel, MEMORY[0x1E69E6720]);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_24_24();
          sub_1E3916B4C(319, v6, v7, MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1E3916B4C(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
            if (v9 <= 0x3F)
            {
              sub_1E3916B4C(319, &qword_1EE289E98, MEMORY[0x1E697F6A0], MEMORY[0x1E697DCC0]);
              if (v10 <= 0x3F)
              {
                sub_1E3916B4C(319, &qword_1EE289EB0, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
                if (v11 <= 0x3F)
                {
                  sub_1E37A6718(319);
                  if (v12 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1E3916AE8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1E3916B4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3916BC8()
{
  OUTLINED_FUNCTION_93();
  v1 = v0;
  v75 = v2;
  v76 = v3;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for OfferView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  if (v5)
  {
    OUTLINED_FUNCTION_8();
    v14 = *(v13 + 1704);

    v16 = v14(v15);
  }

  else
  {

    v16 = 0;
  }

  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v17 = v8[16];
  *(v12 + v17) = swift_getKeyPath();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  OUTLINED_FUNCTION_65_11(v18);
  v19 = v8[17];
  *(v12 + v19) = swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEF0, &qword_1E42AAFE0);
  OUTLINED_FUNCTION_65_11(v20);
  v21 = v8[18];
  *(v12 + v21) = swift_getKeyPath();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_65_11(v22);
  *v12 = v7;
  *(v12 + 8) = v16;
  v23 = *(v1 + 16);
  *(v12 + 16) = *v1;
  *(v12 + 32) = v23;
  *(v12 + 41) = *(v1 + 25);
  v24 = *(*v7 + 488);

  v26 = v24(v25);
  *(v12 + 64) = v26;
  v27 = v12 + v8[19];
  *v27 = sub_1E379F17C;
  *(v27 + 8) = 0;
  *(v27 + 16) = 0;
  if (*(v1 + 40))
  {
    v28 = 0.0;
  }

  else
  {
    v28 = *(v1 + 24);
  }

  if (*(v1 + 40))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(v1 + 32);
  }

  type metadata accessor for LayoutGrid();

  *(v12 + 112) = sub_1E3A2579C(v28);
  sub_1E3C2AE10();
  v77 = v32;
  if (!v26)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    goto LABEL_38;
  }

  v73 = v31;
  v74 = v30;

  v34 = sub_1E373E010(31, v26, v33);

  if (v34)
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_19_3();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      *(v12 + 88) = v35;
      v34 = 1;
    }

    else
    {

      v34 = 0;
    }
  }

  v40 = sub_1E373E010(35, v26, v39);

  if (!v40)
  {
    v38 = 0;
    goto LABEL_25;
  }

  type metadata accessor for ImageViewModel();
  v41 = swift_dynamicCastClass();
  v38 = v41;
  if (!v41)
  {
    goto LABEL_24;
  }

  *(v12 + 72) = v41;
  if (v16)
  {
    OUTLINED_FUNCTION_30_1();
    v43 = *(v42 + 2072);

    v44 = v43(v34, v28, v29, v29);
  }

  else
  {
  }

  v45 = (*(*v38 + 392))(v44);

  if (v45)
  {
    OUTLINED_FUNCTION_8();
    (*(v46 + 1640))(v74, v77, v73);
LABEL_24:
  }

LABEL_25:

  v48 = sub_1E373E010(39, v26, v47);

  if (!v48)
  {
    v37 = 0;
    goto LABEL_34;
  }

  type metadata accessor for ImageViewModel();
  v49 = swift_dynamicCastClass();
  v37 = v49;
  if (!v49)
  {
    goto LABEL_33;
  }

  *(v12 + 80) = v49;
  if (v16)
  {
    OUTLINED_FUNCTION_30_1();
    v51 = *(v50 + 2064);

    v51(v34, v28);
  }

  else
  {
  }

  OUTLINED_FUNCTION_66_3();
  v53 = (*(v52 + 392))();

  if (v53)
  {
    OUTLINED_FUNCTION_8();
    (*(v54 + 1640))(v74, v77, v73);
LABEL_33:
  }

LABEL_34:

  v56 = sub_1E373E010(43, v26, v55);

  if (v56)
  {
    type metadata accessor for ImageViewModel();
    OUTLINED_FUNCTION_19_3();
    v36 = swift_dynamicCastClass();
    if (v36)
    {
      goto LABEL_38;
    }
  }

  v36 = 0;
LABEL_38:
  *(v12 + 96) = v36;
  if (v16)
  {
    OUTLINED_FUNCTION_30_1();
    v58 = *(v57 + 2088);

    v58(v59, v28);
  }

  if (!v26)
  {
    goto LABEL_44;
  }

  v60 = sub_1E373E010(5, v26, v31);

  if (v60 && *v60 != _TtC8VideosUI13TextViewModel)
  {

LABEL_44:
    v60 = 0;
  }

  *(v12 + 104) = v60;
  if (v16)
  {
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_30_1();
    v36 = (*(v61 + 2080))(v38 != 0, v62 & 1);
  }

  *(v12 + 113) = v38 != 0;
  v63 = (*(*v7 + 552))(v36);

  if (!v63)
  {
    v79 = 0u;
    v80 = 0u;
    v64 = v76;
    goto LABEL_52;
  }

  v78[3] = &unk_1F5D7BE68;
  v78[4] = &off_1F5D7BC48;
  LOBYTE(v78[0]) = 6;
  sub_1E3F9F164(v78, v63, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(v78);
  v64 = v76;
  if (!*(&v80 + 1))
  {
LABEL_52:
    sub_1E325F69C(&v79, &unk_1ECF296E0);
    goto LABEL_53;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (!swift_dynamicCast())
  {
LABEL_53:
    v65 = 0;
    goto LABEL_54;
  }

  v65 = v78[0];
LABEL_54:
  v66 = v65 != 0;

  *(v12 + 114) = v66;
  if (![objc_opt_self() isPhone] || !v37)
  {

    goto LABEL_60;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_30_1();
    v68 = (*(v67 + 2016))();

    if (v29 >= v68)
    {
      goto LABEL_60;
    }
  }

  else
  {

    if (v29 >= 0.0)
    {
      goto LABEL_60;
    }
  }

  *(v12 + 113) = 0;
LABEL_60:
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_92();
  sub_1E391D20C(v69, v70, &unk_1E42BD340);
  if (v64)
  {

    v71 = sub_1E4200504();
    sub_1E391D254(v12, v75);
    v72 = (v75 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFF8, &unk_1E42AB0E8) + 36));
    *v72 = v71;
    v72[1] = v64;
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    sub_1E4201744();
    __break(1u);
  }
}

void sub_1E3917434()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v51 = v7;
  v48 = type metadata accessor for TransactionView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v52 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFE8, &qword_1E42AB0D8);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E018, &qword_1E42AB100);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v50 = v21;
  OUTLINED_FUNCTION_49();
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - v24;
  (*(v13 + 16))(v16, v6, v11, v23);
  sub_1E4202704();
  sub_1E374AD40(&qword_1ECF2E020, &qword_1ECF2DFE8, &qword_1E42AB0D8, MEMORY[0x1E697BE60]);
  v49 = v25;
  sub_1E3E3665C(v11, v25);
  (*(v13 + 8))(v16, v11);
  if (v2)
  {
    OUTLINED_FUNCTION_66_3();
    v27 = *(v26 + 1728);

    v29 = v27(v28);
  }

  else
  {

    v29 = 0;
  }

  v30 = *(v48 + 28);
  *(v0 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6C8, &unk_1E42A9DE0);
  swift_storeEnumTagMultiPayload();
  *v0 = v29;
  v31 = *(*v4 + 488);

  v34 = (v31)(v32);
  if (v34)
  {
    v35 = sub_1E373E010(91, v34, v33);

    if (v35)
    {
      OUTLINED_FUNCTION_8();
      v34 = (*(v36 + 464))();
    }

    else
    {
      v34 = 0;
    }
  }

  v0[2] = v34;
  v37 = v31();

  if (!v37 || (v39 = sub_1E373E010(11, v37, v38), , , v39) && *v39 != _TtC8VideosUI13TextViewModel)
  {

    v39 = 0;
  }

  v0[1] = v39;
  v40 = *(v19 + 16);
  v42 = v49;
  v41 = v50;
  v40(v50, v49, v17);
  v43 = v52;
  sub_1E391D058(v0, v52);
  v44 = v51;
  v40(v51, v41, v17);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E028, &qword_1E42AB108);
  sub_1E391D058(v43, v44 + *(v45 + 48));
  sub_1E391D3D4(v0, type metadata accessor for TransactionView);
  v46 = *(v19 + 8);
  v46(v42, v17);
  sub_1E391D3D4(v43, type metadata accessor for TransactionView);
  v46(v41, v17);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39178E0(uint64_t a2@<X8>)
{
  if (*(v2 + 8))
  {
    OUTLINED_FUNCTION_8();
    (*(v4 + 2000))();
  }

  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE60, &qword_1E42AAF08);
  sub_1E391799C();
}

void sub_1E391799C()
{
  OUTLINED_FUNCTION_9_4();
  v39 = v4;
  v41 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE68, &qword_1E42AAF10);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE70, &qword_1E42AAF18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_78();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE78, &qword_1E42AAF20);
  v19 = OUTLINED_FUNCTION_17_2(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v39 - v24;
  sub_1E3917D18();
  *v9 = sub_1E4201D44();
  *(v9 + 1) = 0;
  v9[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE80, &unk_1E42AAF28);
  sub_1E3918008();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v27 = sub_1E4202764();
  *(inited + 32) = v27;
  v28 = sub_1E4202784();
  *(inited + 33) = v28;
  v29 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v27)
  {
    v29 = sub_1E4202774();
  }

  sub_1E4202774();
  if (sub_1E4202774() != v28)
  {
    v29 = sub_1E4202774();
  }

  if ((*(v39 + 32) & 1) == 0)
  {
    sub_1E3952BE0(*v39, *(v39 + 8), *(v39 + 16), *(v39 + 24));
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v9, v16, &qword_1ECF2DE68, &qword_1E42AAF10);
  v30 = &v16[*(v40 + 36)];
  *v30 = v29;
  *(v30 + 1) = v0;
  *(v30 + 2) = v1;
  *(v30 + 3) = v2;
  *(v30 + 4) = v3;
  v30[40] = 0;
  OUTLINED_FUNCTION_40_21();
  sub_1E3741EA0(v31, v32, v33, &qword_1E42AAF18);
  sub_1E3743538(v25, v22, &qword_1ECF2DE78, &qword_1E42AAF20);
  v34 = OUTLINED_FUNCTION_74();
  sub_1E3743538(v34, v35, &qword_1ECF2DE70, &qword_1E42AAF18);
  sub_1E3743538(v22, v41, &qword_1ECF2DE78, &qword_1E42AAF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE88, &qword_1E42AAF38);
  OUTLINED_FUNCTION_74_6();
  sub_1E3743538(v13, v36, &qword_1ECF2DE70, &qword_1E42AAF18);
  v37 = OUTLINED_FUNCTION_78_0();
  sub_1E325F69C(v37, v38);
  sub_1E325F69C(v25, &qword_1ECF2DE78);
  sub_1E325F69C(v13, &qword_1ECF2DE70);
  sub_1E325F69C(v22, &qword_1ECF2DE78);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3917D18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF48, &qword_1E42AB040);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF50, &qword_1E42AB048);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF58, &qword_1E42AB050);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_49_2();
  if (*(v0 + 113) == 1)
  {
    *v2 = sub_1E4203D94();
    v2[1] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF80, &qword_1E42AB068);
    sub_1E39192B8();
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v7, v8, v9, &qword_1E42AB050);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_5();
    sub_1E374AD40(v10, &qword_1ECF2DF58, &qword_1E42AB050, v11);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v12, v13, v14, v15);
    OUTLINED_FUNCTION_37_4();
    sub_1E4201F44();
    v16 = v2;
    v17 = &qword_1ECF2DF58;
LABEL_5:
    sub_1E325F69C(v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF60, &qword_1E42AB058);
    v27 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_95();
    return;
  }

  if (*(v0 + 80))
  {
    *v1 = sub_1E4201D44();
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF68, &qword_1E42AB060);
    sub_1E3919D78();
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v18, v19, v20, &qword_1E42AB040);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_5();
    sub_1E374AD40(v21, v22, v23, v24);
    OUTLINED_FUNCTION_1();
    sub_1E374AD40(v25, &qword_1ECF2DF48, &qword_1E42AB040, v26);
    OUTLINED_FUNCTION_37_4();
    sub_1E4201F44();
    v16 = v1;
    v17 = &qword_1ECF2DF48;
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF60, &qword_1E42AB058);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_95();

  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

void sub_1E3918008()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v3;
  v76 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE90, &qword_1E42AAF40);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v69 - v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  v75 = &v69 - v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_3();
  v74 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE98, &qword_1E42AAF48);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  v81 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v79 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEA0, &qword_1E42AAF50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v72 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEA8, &qword_1E42AAF58);
  v23 = OUTLINED_FUNCTION_17_2(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_5();
  v80 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_78();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEB0, &qword_1E42AAF60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_12();
  v28 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = (v33 - v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEB8, &qword_1E42AAF68);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v78 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  v40 = *(v4 + 113);
  v82 = &v69 - v39;
  if (v40 != 1)
  {
    v45 = 1;
    __swift_storeEnumTagSinglePayload(&v69 - v39, 1, 1, v26);
    if (!*(v4 + 80))
    {
      goto LABEL_6;
    }

LABEL_5:
    v46 = v72;
    sub_1E3918780();
    sub_1E3741EA0(v46, v1, &qword_1ECF2DEA0, &qword_1E42AAF50);
    v45 = 0;
    goto LABEL_6;
  }

  v70 = v19;
  v71 = v0;
  type metadata accessor for OfferView(0);
  sub_1E391CDD4(v34);
  v41 = sub_1E4201D04();
  v42 = *(v30 + 8);
  v42(v34, v28);
  if (v41)
  {
    sub_1E391865C(v2);
    v43 = v82;
    sub_1E3741EA0(v2, v82, &qword_1ECF2DEB0, &qword_1E42AAF60);
    v44 = 0;
  }

  else
  {
    v44 = 1;
    v43 = v82;
  }

  v45 = 1;
  __swift_storeEnumTagSinglePayload(v43, v44, 1, v26);
  sub_1E391CDD4(v34);
  v68 = sub_1E4201D04();
  v42(v34, v28);
  v19 = v70;
  v0 = v71;
  if (v68)
  {
    goto LABEL_5;
  }

LABEL_6:
  v73 = v1;
  __swift_storeEnumTagSinglePayload(v1, v45, 1, v19);
  v47 = v79;
  sub_1E39188C8();
  sub_1E3918CA4();
  v48 = v75;
  sub_1E3918FB8();
  v49 = v78;
  sub_1E3743538(v82, v78, &qword_1ECF2DEB8, &qword_1E42AAF68);
  v50 = v80;
  sub_1E3743538(v1, v80, &qword_1ECF2DEA8, &qword_1E42AAF58);
  v51 = v81;
  sub_1E3743538(v47, v81, &qword_1ECF2DE98, &qword_1E42AAF48);
  v52 = v77;
  OUTLINED_FUNCTION_55_0();
  sub_1E3743538(v53, v54, v55, &qword_1E42AAF40);
  sub_1E3743538(v48, v0, &qword_1ECF2DE90, &qword_1E42AAF40);
  v56 = v0;
  v57 = v76;
  sub_1E3743538(v49, v76, &qword_1ECF2DEB8, &qword_1E42AAF68);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEC0, &qword_1E42AAF70);
  OUTLINED_FUNCTION_74_6();
  sub_1E3743538(v50, v59, &qword_1ECF2DEA8, &qword_1E42AAF58);
  sub_1E3743538(v51, v57 + v58[16], &qword_1ECF2DE98, &qword_1E42AAF48);
  sub_1E3743538(v52, v57 + v58[20], &qword_1ECF2DE90, &qword_1E42AAF40);
  sub_1E3743538(v56, v57 + v58[24], &qword_1ECF2DE90, &qword_1E42AAF40);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F69C(v60, v61);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F69C(v62, v63);
  sub_1E325F69C(v79, &qword_1ECF2DE98);
  sub_1E325F69C(v73, &qword_1ECF2DEA8);
  sub_1E325F69C(v82, &qword_1ECF2DEB8);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F69C(v64, v65);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F69C(v66, v67);
  sub_1E325F69C(v81, &qword_1ECF2DE98);
  sub_1E325F69C(v80, &qword_1ECF2DEA8);
  sub_1E325F69C(v78, &qword_1ECF2DEB8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3918780()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEF8, &qword_1E42AAFE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_8_4();
  if (*(v0 + 8))
  {
    OUTLINED_FUNCTION_8();
    v6 = (*(v5 + 1880))();
    v7 = v6;
    if (*(v2 + 114) == 1)
    {
      *v1 = sub_1E4201D44();
      *(v1 + 8) = 0;
      *(v1 + 16) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF00, &qword_1E42AAFF0);
      OUTLINED_FUNCTION_78_0();
      sub_1E391AC1C();

      v8 = OUTLINED_FUNCTION_38_0();
      sub_1E3741EA0(v8, v9, v10, v11);
      v12 = OUTLINED_FUNCTION_22_1();
      return __swift_storeEnumTagSinglePayload(v12, v13, v14, v3);
    }
  }

  v16 = OUTLINED_FUNCTION_10_2();

  return __swift_storeEnumTagSinglePayload(v16, v17, v18, v3);
}

void sub_1E39188C8()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF38, &unk_1E42AB028);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  v14 = *(v4 + 88);
  if (v14)
  {
    v15 = v13;
    v42 = v7;
    v43 = v6;
    v16 = *(v4 + 8);
    if (v16)
    {
      OUTLINED_FUNCTION_8();
      v7 = *(v17 + 2048);
      v18 = *(v4 + 112);

      v7(v18);
    }

    else
    {
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_14();
    sub_1E4200D94();
    if (v16)
    {
      OUTLINED_FUNCTION_8();
      (*(v24 + 1904))();
      OUTLINED_FUNCTION_30();
      v26 = (*(v25 + 200))();
      v28 = v27;

      if (v28)
      {
        v16 = 0;
      }

      else
      {
        v16 = v26;
      }
    }

    v29 = j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_12_16(v16, v29 & 1, v50, 0, v7, 0, v7, v48, v44, v45, v46);
    v30 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_3(v14, v50, v30 & 1, v3);
    v31 = v3;
    v32 = *(v10 + 16);
    v32(v0, v31, v15);
    *v2 = 0;
    *(v2 + 8) = v7;
    *(v2 + 16) = v41;
    *(v2 + 24) = v47;
    *(v2 + 32) = v40;
    *(v2 + 40) = v49;
    *(v2 + 48) = v39;
    *(v2 + 56) = v38;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF40, &qword_1E42AB038);
    v32(v2 + *(v33 + 48), v0, v15);
    sub_1E375C31C(v50);

    v34 = *(v10 + 8);
    v34(v31, v15);
    v34(v0, v15);
    sub_1E3741EA0(v2, v43, &qword_1ECF2DF38, &unk_1E42AB028);
    v35 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v42);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

void sub_1E3918CA4()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_19_7();
  v12 = type metadata accessor for ScaledBaselineRelativeSpacer(0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  v17 = *(v0 + 64);
  if (v17 && *(v17 + 16) && (v18 = sub_1E3740AE8(23, v15, v16), (v19 & 1) != 0) && **(*(v17 + 56) + 8 * v18) == _TtC8VideosUI13TextViewModel)
  {
    if (*(v4 + 8))
    {
      v39 = *(v4 + 88) != 0;
      OUTLINED_FUNCTION_8();
      v38 = *(v20 + 2040);
      v21 = *(v4 + 112);

      v22 = v38(v21, v39);
    }

    else
    {

      v22 = 0.0;
    }

    sub_1E40E4CD4(v3, v22);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E391D058(v3, v2);
    v28 = *(v9 + 16);
    v29 = OUTLINED_FUNCTION_37_4();
    v28(v29);
    sub_1E391D058(v2, v6);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF30, &qword_1E42AB020);
    v31 = OUTLINED_FUNCTION_73_4(v30);
    v28(v31);

    v32 = *(v9 + 8);
    v32(v1, v7);
    sub_1E391D3D4(v3, type metadata accessor for ScaledBaselineRelativeSpacer);
    v33 = OUTLINED_FUNCTION_74();
    (v32)(v33);
    sub_1E391D3D4(v2, type metadata accessor for ScaledBaselineRelativeSpacer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF28, &qword_1E42AB018);
    v34 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF28, &qword_1E42AB018);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  }
}

void sub_1E3918FB8()
{
  OUTLINED_FUNCTION_93();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_7();
  v10 = type metadata accessor for ScaledBaselineRelativeSpacer(0);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_8();
  v15 = *(v0 + 64);
  if (v15 && *(v15 + 16) && (v16 = sub_1E3740AE8(17, v13, v14), (v17 & 1) != 0) && **(*(v15 + 56) + 8 * v16) == _TtC8VideosUI13TextViewModel)
  {
    if (*(v4 + 8))
    {
      OUTLINED_FUNCTION_8();
      v38 = *(v18 + 2056);
      v19 = *(v4 + 112);

      v20 = v38(v19);
    }

    else
    {

      v20 = 0.0;
    }

    sub_1E40E4CD4(v3, v20);
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E391D058(v3, v2);
    v39 = *(v7 + 16);
    v26 = OUTLINED_FUNCTION_37_4();
    v27(v26);
    OUTLINED_FUNCTION_21_1();
    sub_1E391D058(v28, v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF30, &qword_1E42AB020);
    v31 = OUTLINED_FUNCTION_73_4(v30);
    v39(v31);

    v32 = *(v7 + 8);
    v32(v1, v5);
    sub_1E391D3D4(v3, type metadata accessor for ScaledBaselineRelativeSpacer);
    v33 = OUTLINED_FUNCTION_74();
    (v32)(v33);
    sub_1E391D3D4(v2, type metadata accessor for ScaledBaselineRelativeSpacer);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF28, &qword_1E42AB018);
    v34 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF28, &qword_1E42AB018);
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  }
}

void sub_1E39192B8()
{
  OUTLINED_FUNCTION_9_4();
  v2 = v1;
  v93 = v3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF88, &qword_1E42AB070);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEA0, &qword_1E42AAF50);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v91 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v89 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEB0, &qword_1E42AAF60);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v90 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - v16;
  v18 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = (v23 - v22);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF90, &qword_1E42AB078);
  v26 = OUTLINED_FUNCTION_17_2(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v95 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v87 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF98, &unk_1E42AB080);
  v32 = OUTLINED_FUNCTION_17_2(v31);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_5();
  v94 = v33;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_19_7();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  v36 = OUTLINED_FUNCTION_17_2(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_5();
  v98 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  v97 = v39;
  sub_1E3919ACC(v39);
  v40 = *(v2 + 113);
  v96 = v0;
  if (v40 == 1 && ((*(v2 + 114) & 1) != 0 || *(v2 + 96) || *(v2 + 104)))
  {
    v87 = v18;
    v88 = v30;
    v41 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFD0, &qword_1E42AB0C0);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E4299720;
    sub_1E42036C4();
    v43 = sub_1E4203734();

    *(v42 + 32) = v43;
    sub_1E42036C4();
    v44 = sub_1E4203734();

    *(v42 + 40) = v44;
    MEMORY[0x1E690E590](v42);
    sub_1E4203F54();
    sub_1E4203F34();
    sub_1E4201064();
    v45 = *(v2 + 112);
    if (sub_1E373F630(v45, 0, v46) & 1) != 0 || (sub_1E373F630(v45, 1, v47))
    {
      v17 = v41;
    }

    else
    {
      v17 = v41;
    }

    sub_1E4203DA4();
    v48 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_64_3(v48, v49, v50, v51, 0x7FEFFFFFFFFFFFFFLL, v52, v53, v54, v86);
    *v101 = *&v101[19];
    *&v101[2] = *&v101[21];
    v101[4] = v101[23];
    memcpy(v100, v101, sizeof(v100));
    nullsub_1();
    memcpy(v102, v100, 0x98uLL);
    v18 = v87;
    v30 = v88;
    v0 = v96;
  }

  else
  {
    sub_1E391D2AC(v102);
  }

  memcpy(v99, v102, sizeof(v99));
  sub_1E3919C5C(v0);
  type metadata accessor for OfferView(0);
  sub_1E391CDD4(v24);
  v55 = sub_1E4201D04();
  (*(v20 + 8))(v24, v18);
  if (v55)
  {
    v56 = 1;
  }

  else
  {
    sub_1E391865C(v17);
    v57 = v89;
    sub_1E3918780();
    v88 = v17;
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v58, v59, v60, v61);
    v62 = v91;
    OUTLINED_FUNCTION_29_12(v57, v91);
    OUTLINED_FUNCTION_18_5();
    sub_1E3743538(v63, v64, v65, v66);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFA0, &qword_1E42AB090);
    OUTLINED_FUNCTION_29_12(v62, v6 + *(v67 + 48));
    OUTLINED_FUNCTION_90();
    sub_1E325F69C(v68, v69);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v70, v71);
    OUTLINED_FUNCTION_90();
    sub_1E325F69C(v72, v73);
    OUTLINED_FUNCTION_82();
    sub_1E325F69C(v74, v75);
    sub_1E3741EA0(v6, v30, &qword_1ECF2DF88, &qword_1E42AB070);
    v56 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v56, 1, v92);
  v76 = v98;
  sub_1E3743538(v97, v98, &qword_1ECF29938, &unk_1E429C3F0);
  v77 = v96;
  v78 = v94;
  sub_1E3743538(v96, v94, &qword_1ECF2DF98, &unk_1E42AB080);
  v79 = v95;
  sub_1E3743538(v30, v95, &qword_1ECF2DF90, &qword_1E42AB078);
  v80 = v93;
  sub_1E3743538(v76, v93, &qword_1ECF29938, &unk_1E429C3F0);
  v81 = v30;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFA8, &qword_1E42AB098);
  v83 = v82[12];
  memcpy(v101, v99, 0x98uLL);
  memcpy((v80 + v83), v99, 0x98uLL);
  sub_1E3743538(v78, v80 + v82[16], &qword_1ECF2DF98, &unk_1E42AB080);
  sub_1E3743538(v79, v80 + v82[20], &qword_1ECF2DF90, &qword_1E42AB078);
  sub_1E3743538(v101, v102, &qword_1ECF2DFB0, &qword_1E42AB0A0);
  sub_1E325F69C(v81, &qword_1ECF2DF90);
  sub_1E325F69C(v77, &qword_1ECF2DF98);
  sub_1E325F69C(v97, &qword_1ECF29938);
  sub_1E325F69C(v79, &qword_1ECF2DF90);
  sub_1E325F69C(v78, &qword_1ECF2DF98);
  memcpy(v102, v99, 0x98uLL);
  sub_1E325F69C(v102, &qword_1ECF2DFB0);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v84, v85);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E3919ACC(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = *(v1 + 72);
  if (!v9 || (*(v1 + 56) & 1) != 0 || (v10 = *(v1 + 40), *&v10 <= 0.0))
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_95();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }

  else
  {

    j__OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_55_3();
    OUTLINED_FUNCTION_58_2();
    OUTLINED_FUNCTION_71_12();
    OUTLINED_FUNCTION_12_16(v10, v11, v12, v22, v23, v24, v25, v26, v27, v28, v29);
    v13 = OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_42_3(v9, &v22, v13 & 1, v8);
    sub_1E375C31C(&v22);

    (*(v5 + 32))(a1, v8, v3);
    v14 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v3);
    OUTLINED_FUNCTION_95();
  }
}

uint64_t sub_1E3919C5C@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFB8, &qword_1E42AB0A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  if (*(v1 + 96))
  {

    *v2 = sub_1E4201D44();
    *(v2 + 8) = 0;
    *(v2 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFC0, &qword_1E42AB0B0);
    sub_1E3919FF4();

    sub_1E3741EA0(v2, a1, &qword_1ECF2DFB8, &qword_1E42AB0A8);
    v6 = OUTLINED_FUNCTION_22_1();
    return __swift_storeEnumTagSinglePayload(v6, v7, v8, v4);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_10_2();

    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v4);
  }
}

void sub_1E3919D78()
{
  OUTLINED_FUNCTION_21_5();
  v7 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_12();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29938, &unk_1E429C3F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_4();
  v14 = *(v0 + 8);
  if (v14)
  {
    OUTLINED_FUNCTION_8();
    (*(v15 + 2000))();
    OUTLINED_FUNCTION_3();
  }

  else
  {
    v3 = 0.0;
    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
  }

  v16 = *(v7 + 80);
  if (!v16 || (*(v7 + 56) & 1) != 0 || (v17 = *(v7 + 40), v17 <= 0.0))
  {
    OUTLINED_FUNCTION_10_2();
    OUTLINED_FUNCTION_20_0();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {

    if (v14)
    {
      v18 = sub_1E3952BE0(v3, v4, v5, v6);
    }

    else
    {
      v18 = 0.0;
    }

    v24 = v17 - v18;
    if (v24 <= 0.0)
    {

      v29 = 1;
    }

    else
    {
      v25 = *&v24;
      j__OUTLINED_FUNCTION_51_1();
      j__OUTLINED_FUNCTION_18();
      j__OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_55_3();
      OUTLINED_FUNCTION_58_2();
      OUTLINED_FUNCTION_71_12();
      OUTLINED_FUNCTION_12_16(v25, v26, v27, v37, v38, v39, v40, v41, v42, v43, v44);
      v28 = OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_42_3(v16, &v37, v28 & 1, v2);
      sub_1E375C31C(&v37);

      (*(v10 + 32))(v1, v2, v8);
      v29 = 0;
    }

    __swift_storeEnumTagSinglePayload(v1, v29, 1, v8);
    v30 = OUTLINED_FUNCTION_38_0();
    sub_1E3741EA0(v30, v31, v32, v33);
    v34 = OUTLINED_FUNCTION_22_1();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v12);
    OUTLINED_FUNCTION_20_0();
  }
}

void sub_1E3919FF4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v30 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  sub_1E3EB9BB4(v34);
  v13 = OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_42_3(v4, v34, v13 & 1, v12);
  sub_1E375C31C(v34);
  if (*(v2 + 8))
  {
    OUTLINED_FUNCTION_8();
    (*(v14 + 1808))();
    OUTLINED_FUNCTION_30();
    (*(v15 + 152))(v35);
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_52_1();
  v29 = v35[5];
  v28 = v37;
  v27 = v39;
  v26 = v40;
  v33 = 1;
  v32 = v36;
  v31 = v38;
  v16 = *(v8 + 16);
  (v16)(v0, v12, v6);
  v17 = v33;
  v18 = v32;
  v19 = v6;
  v20 = v31;
  v21 = v30;
  OUTLINED_FUNCTION_40_21();
  v16();
  v22 = v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DFC8, &qword_1E42AB0B8) + 48);
  *v22 = 0;
  *(v22 + 8) = v17;
  *(v22 + 16) = v29;
  *(v22 + 24) = v18;
  *(v22 + 32) = v28;
  *(v22 + 40) = v20;
  v23 = v26;
  *(v22 + 48) = v27;
  *(v22 + 56) = v23;
  v24 = *(v8 + 8);
  v24(v12, v19);
  v25 = OUTLINED_FUNCTION_78_0();
  (v24)(v25);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E391A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_93();
  a21 = v23;
  a22 = v24;
  v114 = v25;
  v27 = v26;
  v29 = v28;
  v111 = type metadata accessor for ScaledBaselineRelativeSpacer(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v32 - v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29FB0, &qword_1E429CC20);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v36);
  v37 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v110 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v108 = v40;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v96 - v42;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DED8, &qword_1E42AAF90);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v118 = v47;
  v48 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v50 = v49;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_5();
  v54 = (v53 - v52);
  v116 = *(type metadata accessor for OfferView(0) + 68);
  sub_1E391CDD4(v54);
  v55 = sub_1E4201D04();
  v56 = *(v50 + 8);
  v117 = v48;
  v115 = v56;
  v56(v54, v48);
  if (v55)
  {
    sub_1E391A9C8();
    sub_1E4203DA4();
    v57 = v27;
    OUTLINED_FUNCTION_52_1();
    v106 = 0;
    v107 = v122;
    v105 = v124;
    v104 = v126;
    v103 = v127;
    v121 = 1;
    v120 = v123;
    v119 = v125;
    v100 = 1;
    v101 = v123;
    v102 = v125;
    LOBYTE(v128[0]) = 0;
  }

  else
  {
    v107 = 0;
    v105 = 0;
    OUTLINED_FUNCTION_39_16(&a9);
    v106 = 1;
    v57 = v27;
  }

  OUTLINED_FUNCTION_18();
  v99 = v43;
  sub_1E3F23370();
  KeyPath = swift_getKeyPath();
  sub_1E391CDD4(v54);
  sub_1E4201D04();
  v59 = OUTLINED_FUNCTION_69_6();
  v60(v59);
  if (v54)
  {
    sub_1E379EBAC(v22);
    v61 = v22;
    v62 = v110;
  }

  else
  {
    v61 = v22;
    v62 = v110;
    (*(v110 + 104))(v61, *MEMORY[0x1E697DBA8], v37);
  }

  v63 = v97;
  v64 = (v97 + *(v98 + 36));
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  (*(v62 + 32))(v64 + *(v65 + 28), v61, v37);
  *v64 = KeyPath;
  (*(v108 + 32))(v63, v99, v109);
  sub_1E3741EA0(v63, v118, &qword_1ECF2DED8, &qword_1E42AAF90);
  sub_1E391CDD4(v54);
  sub_1E4201D04();
  v66 = OUTLINED_FUNCTION_69_6();
  v67(v66);
  if (v54)
  {
    v68 = 1;
    v69 = v112;
  }

  else
  {
    v69 = v112;
    if (*(v57 + 8))
    {
      OUTLINED_FUNCTION_8();
      (*(v70 + 1832))();
      OUTLINED_FUNCTION_30();
      (*(v71 + 152))(v128);

      if (v129)
      {
        v72 = 0.0;
      }

      else
      {
        v72 = *&v128[2];
      }
    }

    else
    {
      v72 = 0.0;
    }

    v73 = v96;
    sub_1E40E4CD4(v96, v72);
    sub_1E391D254(v73, v69);
    v68 = 0;
  }

  __swift_storeEnumTagSinglePayload(v69, v68, 1, v111);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v74, v75, v76, v77);
  v78 = v113;
  OUTLINED_FUNCTION_29_12(v69, v113);
  v79 = v100;
  *v29 = 0;
  *(v29 + 8) = v79;
  v80 = v101;
  *(v29 + 16) = v107;
  *(v29 + 24) = v80;
  v81 = v102;
  *(v29 + 32) = v105;
  *(v29 + 40) = v81;
  v82 = v103;
  *(v29 + 48) = v104;
  *(v29 + 56) = v82;
  *(v29 + 64) = v106;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE0, &unk_1E42AAFD0);
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v84, v85, v86, v87);
  OUTLINED_FUNCTION_29_12(v78, v29 + *(v83 + 64));
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v88, v89);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v90, v91);
  OUTLINED_FUNCTION_90();
  sub_1E325F69C(v92, v93);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v94, v95);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E391A9C8()
{
  OUTLINED_FUNCTION_93();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v28 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = *(v0 + 8);
  if (v10)
  {
    OUTLINED_FUNCTION_8();
    v13 = (*(v11 + 1880))(v12);
    [v13 margin];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  type metadata accessor for OfferView(0);
  OUTLINED_FUNCTION_56_12();
  OUTLINED_FUNCTION_7_73();
  v18 = sub_1E391D20C(v16, v17, &unk_1E42BD340);
  OUTLINED_FUNCTION_62_10(v18);
  OUTLINED_FUNCTION_63_8();
  v19 = *v2;
  v20 = *(v2 + 8);

  if (v10)
  {
    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_8();
      v22 = (*(v21 + 1880))();
      v23 = [v22 textLayout];

      v24 = [v23 textStyle];
      if (v19 > 0.0)
      {
        v25 = sub_1E376AD08(v24);
        sub_1E3E3B33C(v25, v1);
        sub_1E3746E10(v7);
        sub_1E405EA04(v15, v1, v7);
        v26 = OUTLINED_FUNCTION_59_6();
        v27(v26);
        sub_1E325F69C(v1, &qword_1ECF2DEE8);
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E391AC1C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF08, &qword_1E42AAFF8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v59 = *(v4 + 113);
  v57 = v14;
  v55 = v12;
  v54 = v0;
  if (v59 == 1 && (type metadata accessor for OfferView(0), sub_1E391CDD4(v0), v15 = sub_1E4201D04(), (*(v12 + 8))(v0, v10), (v15 & 1) == 0))
  {
    OUTLINED_FUNCTION_39_16(&v84);
    v64 = 0;
    v63 = 0;
    v69 = 1;
  }

  else
  {
    sub_1E391A9C8();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_14();
    OUTLINED_FUNCTION_52_1();
    v69 = 0;
    v70 = v72;
    v68 = v74;
    v67 = v76;
    v66 = v77;
    v63 = v10;
    v64 = v73;
    v65 = v75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF10, &qword_1E42AB000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v17;

  v18 = v2;
  sub_1E32ABF64();
  OUTLINED_FUNCTION_8();
  v20 = *(v19 + 96);

  v22 = v20(v21);

  sub_1E4207414();
  sub_1E4205CB4();
  v23 = OUTLINED_FUNCTION_106();
  type metadata accessor for OfferView(v23);
  type metadata accessor for ViewRepresentableProperties(0);
  OUTLINED_FUNCTION_7_73();
  sub_1E391D20C(v24, v25, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3820C18();
  OUTLINED_FUNCTION_18_5();
  sub_1E3820C20(v26, v27, v28, v29, v30, v31);
  *(v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF18, &qword_1E42AB008) + 36)) = 257;
  KeyPath = swift_getKeyPath();
  v33 = (v71 + *(v61 + 36));
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0);
  sub_1E391B214((v33 + *(v34 + 28)));
  *v33 = KeyPath;
  if (v59 && (sub_1E391CDD4(v54), v35 = sub_1E4201D04(), (*(v55 + 8))(v54, v57), (v35 & 1) == 0))
  {
    sub_1E391B354();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_51_14();
    OUTLINED_FUNCTION_52_1();
    v60 = 0;
    LOBYTE(v78) = v22 & 1;
    v62 = v78;
    v58 = v80;
    v36 = v83;
    v56 = v82;
    v39 = v54;
    v38 = v79;
    v37 = v81;
  }

  else
  {
    v62 = 0;
    v58 = 0;
    v56 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v60 = 1;
  }

  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v40, v41, v42, v43);
  *v6 = 0;
  *(v6 + 8) = v63;
  *(v6 + 16) = v70;
  *(v6 + 24) = v64;
  *(v6 + 32) = v68;
  *(v6 + 40) = v65;
  *(v6 + 48) = v67;
  *(v6 + 56) = v66;
  *(v6 + 64) = v69;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DF20, &qword_1E42AB010);
  OUTLINED_FUNCTION_74_6();
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v45, v46, v47, v48);
  v49 = v6 + *(v44 + 64);
  *v49 = 0;
  *(v49 + 8) = v39;
  *(v49 + 16) = v62;
  *(v49 + 24) = v38;
  *(v49 + 32) = v58;
  *(v49 + 40) = v37;
  *(v49 + 48) = v56;
  *(v49 + 56) = v36;
  *(v49 + 64) = v60;
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v50, v51);
  OUTLINED_FUNCTION_82();
  sub_1E325F69C(v52, v53);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E391B214(void *a1@<X8>)
{
  v4 = sub_1E4201D14();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v8 = *(v1 + 113);
  type metadata accessor for OfferView(0);
  if (v8 == 1 && (sub_1E391CDD4(v2), v9 = sub_1E4201D04(), (*(v6 + 8))(v2, v4), (v9 & 1) == 0))
  {
    v10 = *MEMORY[0x1E697DBA8];
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v11 + 104))(a1, v10);
  }

  else
  {
    sub_1E379EBAC(a1);
  }

  OUTLINED_FUNCTION_95();
}

void sub_1E391B354()
{
  OUTLINED_FUNCTION_93();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v28 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = *(v0 + 8);
  if (v10)
  {
    OUTLINED_FUNCTION_8();
    v13 = (*(v11 + 1880))(v12);
    [v13 margin];
    v15 = v14;
  }

  else
  {
    v15 = 0.0;
  }

  type metadata accessor for OfferView(0);
  OUTLINED_FUNCTION_56_12();
  OUTLINED_FUNCTION_7_73();
  v18 = sub_1E391D20C(v16, v17, &unk_1E42BD340);
  OUTLINED_FUNCTION_62_10(v18);
  OUTLINED_FUNCTION_63_8();
  v19 = *v2;
  v20 = *(v2 + 8);

  if (v10)
  {
    if ((v20 & 1) == 0)
    {
      OUTLINED_FUNCTION_8();
      v22 = (*(v21 + 1880))();
      v23 = [v22 textLayout];

      v24 = [v23 textStyle];
      if (v19 > 0.0)
      {
        v25 = sub_1E376AD08(v24);
        sub_1E3E3B33C(v25, v1);
        sub_1E3746E10(v7);
        sub_1E405EA04(v15, v1, v7);
        v26 = OUTLINED_FUNCTION_59_6();
        v27(v26);
        sub_1E325F69C(v1, &qword_1ECF2DEE8);
      }
    }
  }

  OUTLINED_FUNCTION_54_0();
}

void sub_1E391B5C4()
{
  OUTLINED_FUNCTION_9_4();
  v49[3] = v3;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v49 - v7;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDB8, &qword_1E42AAE60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v49[2] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDC0, &qword_1E42AAE68);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_8_4();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDC8, &qword_1E42AAE70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDD0, &qword_1E42AAE78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_49_2();
  v49[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DDD8, &qword_1E42AAE80);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  if (*(v0 + 8) || *(v0 + 16))
  {
    *v1 = sub_1E4201D44();
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE00, &unk_1E42AAE88);
    sub_1E391BA80();
    v24 = sub_1E4202744();
    sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v24)
    {
      sub_1E4202774();
    }

    sub_1E391C75C();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v1, v16, &qword_1ECF2DDC0, &qword_1E42AAE68);
    OUTLINED_FUNCTION_32_4(&v16[*(v13 + 36)]);
    v25 = sub_1E4202754();
    sub_1E4202774();
    sub_1E4202774();
    if (sub_1E4202774() != v25)
    {
      sub_1E4202774();
    }

    sub_1E391C75C();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v16, v2, &qword_1ECF2DDC8, &qword_1E42AAE70);
    OUTLINED_FUNCTION_32_4(v2 + *(v17 + 36));
    sub_1E4203DA4();
    v26 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_64_3(v26, v27, v28, v29, 0x7FF0000000000000, v30, v31, v32, v48);
    sub_1E3741EA0(v2, v22, &qword_1ECF2DDD0, &qword_1E42AAE78);
    memcpy((v22 + *(v49[0] + 36)), v51, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v33, v34, v35, v36);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v37, v38, v39, v40);
    swift_storeEnumTagMultiPayload();
    v41 = sub_1E391CB60();
    OUTLINED_FUNCTION_5_1(v41);
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v42, v43);
  }

  else
  {
    nullsub_1();
    v44 = OUTLINED_FUNCTION_38_0();
    v45 = v50;
    v46(v44);
    swift_storeEnumTagMultiPayload();
    v47 = sub_1E391CB60();
    OUTLINED_FUNCTION_5_1(v47);
    sub_1E4201F44();
    (*(v5 + 8))(v8, v45);
  }

  OUTLINED_FUNCTION_10_3();
}

void sub_1E391BA80()
{
  OUTLINED_FUNCTION_93();
  v3 = v2;
  v87 = v4;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE08, &qword_1E42AAE98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE10, &qword_1E42AAEA0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v86 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v85 = v11;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE18, &qword_1E42AAEA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v13);
  v14 = type metadata accessor for ScaledBaselineRelativeSpacer(0);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v17);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v76 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  v27 = v25 - v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_50_9();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_19_7();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE20, &qword_1E42AAEB0);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v76 - v33;
  v35 = v3;
  v36 = 1;
  if (v3[1])
  {

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    sub_1E4203DA4();
    v37 = OUTLINED_FUNCTION_51_3();
    OUTLINED_FUNCTION_64_3(v37, v38, v39, v40, 0x7FF0000000000000, v41, v42, v43, v75);
    (*(v19 + 32))(v0, v22, v78);
    memcpy((v0 + *(v23 + 36)), v88, 0x70uLL);
    sub_1E3741EA0(v0, v1, &qword_1ECF2A140, &qword_1E42B7E30);
    v44 = *v3;
    v77 = v3;
    if (v44)
    {
      v45 = *(v44 + 184);
    }

    else
    {
      v45 = 0.0;
    }

    v46 = v79;
    sub_1E40E4CD4(v79, v45);
    sub_1E3743538(v1, v27, &qword_1ECF2A140, &qword_1E42B7E30);
    v47 = v80;
    sub_1E391D058(v46, v80);
    v48 = v81;
    sub_1E3743538(v27, v81, &qword_1ECF2A140, &qword_1E42B7E30);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE38, &qword_1E42AAEC8);
    sub_1E391D058(v47, v48 + *(v49 + 48));

    sub_1E391D3D4(v46, type metadata accessor for ScaledBaselineRelativeSpacer);
    v50 = OUTLINED_FUNCTION_38_0();
    sub_1E325F69C(v50, v51);
    sub_1E391D3D4(v47, type metadata accessor for ScaledBaselineRelativeSpacer);
    sub_1E325F69C(v27, &qword_1ECF2A140);
    sub_1E3741EA0(v48, v34, &qword_1ECF2DE18, &qword_1E42AAEA8);
    v36 = 0;
    v35 = v77;
  }

  v52 = 1;
  __swift_storeEnumTagSinglePayload(v34, v36, 1, v83);
  v53 = v85;
  if (v35[2])
  {
    v54 = sub_1E4201D44();
    v55 = v82;
    *v82 = v54;
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE30, &qword_1E42AAEC0);
    sub_1E391C07C();
    sub_1E3741EA0(v55, v53, &qword_1ECF2DE08, &qword_1E42AAE98);
    v52 = 0;
  }

  __swift_storeEnumTagSinglePayload(v53, v52, 1, v84);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v56, v57, v58, v59);
  v60 = v86;
  sub_1E3743538(v53, v86, &qword_1ECF2DE10, &qword_1E42AAEA0);
  v61 = v87;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v62, v63, v64, v65);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE28, &qword_1E42AAEB8);
  sub_1E3743538(v60, v61 + *(v66 + 48), &qword_1ECF2DE10, &qword_1E42AAEA0);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v67, v68);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v69, v70);
  OUTLINED_FUNCTION_55_0();
  sub_1E325F69C(v71, v72);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v73, v74);
  OUTLINED_FUNCTION_54_0();
}

void sub_1E391C07C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for TransactionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v13[1] = v3;
  swift_getKeyPath();
  sub_1E391D058(v1, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_1E391D254(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  *(v8 + ((v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE40, &unk_1E42AAEF0);
  OUTLINED_FUNCTION_90();
  sub_1E374AD40(v9, v10, v11, v12);
  sub_1E375BEF4();
  sub_1E391D15C(&qword_1ECF2DE48, &qword_1ECF2DE40, &unk_1E42AAEF0, sub_1E391D1DC);
  sub_1E4203B34();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E391C298()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v53 = v9;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29878, &unk_1E429C0E0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_49_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF289E8, &qword_1E4297EE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE58, &qword_1E42AAF00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_26_2();
  v16 = *v8;
  v17 = *v6;
  if (*v6)
  {
    OUTLINED_FUNCTION_66_3();
    (*(v18 + 1760))();
    OUTLINED_FUNCTION_30();
    (*(v19 + 176))(v54);
    v20 = *v54;
    v21 = *&v54[1];
    v22 = *&v54[2];
    v23 = *&v54[3];

    if ((v55 & 1) == 0)
    {
      sub_1E3952BE0(v20, v21, v22, v23);
    }

    OUTLINED_FUNCTION_66_3();
    v25 = (*(v24 + 1760))();
  }

  else
  {
    v25 = 0;
  }

  sub_1E3EC24F4(v16, v25, 0, 0);

  v26 = sub_1E4202744();
  v27 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v26)
  {
    v27 = sub_1E4202774();
  }

  if (sub_1E32AE9B0(v4))
  {
    if ((v4 & 0xC000000000000001) != 0)
    {

      v28 = MEMORY[0x1E6911E60](0, v4);
    }

    else
    {
      if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v28 = *(v4 + 32);
    }

    if (v28)
    {
      type metadata accessor for ViewModel();
      sub_1E391D20C(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
      v29 = sub_1E4205E84();

      if ((v29 & 1) != 0 || v17)
      {
        goto LABEL_15;
      }

LABEL_18:
      v52 = 0u;
      v30 = 1;
      v49 = 0u;
      goto LABEL_19;
    }
  }

  else
  {
  }

  if (!v17)
  {
    goto LABEL_18;
  }

LABEL_15:
  sub_1E4200A54();
  v30 = 0;
  *(&v32 + 1) = v31;
  v49 = v32;
  *(&v34 + 1) = v33;
  v52 = v34;
LABEL_19:
  (*(v11 + 32))(v1, v2, v50);
  v35 = v1 + *(v13 + 36);
  *v35 = v27;
  *(v35 + 24) = v49;
  *(v35 + 8) = v52;
  *(v35 + 40) = v30;
  v36 = sub_1E4202764();
  v37 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v36)
  {
    v37 = sub_1E4202774();
  }

  sub_1E391C75C();
  sub_1E4200A54();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_1E3741EA0(v1, v0, &qword_1ECF289E8, &qword_1E4297EE8);
  v46 = v0 + *(v51 + 36);
  *v46 = v37;
  *(v46 + 8) = v39;
  *(v46 + 16) = v41;
  *(v46 + 24) = v43;
  *(v46 + 32) = v45;
  *(v46 + 40) = 0;
  v47 = sub_1E4202784();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v47)
  {
    sub_1E4202774();
  }

  sub_1E391C75C();
  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v0, v53, &qword_1ECF2DE58, &qword_1E42AAF00);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DE40, &unk_1E42AAEF0);
  OUTLINED_FUNCTION_32_4(v53 + *(v48 + 36));
  OUTLINED_FUNCTION_20_0();
}

void sub_1E391C75C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = sub_1E42021E4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v43 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D868, &qword_1E42AA0B0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D6D0, &qword_1E42A9DF0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_23_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_23_8();
  type metadata accessor for TransactionView(0);
  v44 = v0;
  sub_1E38F861C(v3);
  (*(v6 + 104))(v16, *MEMORY[0x1E697FF40], v4);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v4);
  v18 = *(v10 + 56);
  sub_1E3743538(v3, v1, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  sub_1E3743538(v16, v1 + v18, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_21_2(v1);
  if (v27)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v19, v20);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v21, v22);
    OUTLINED_FUNCTION_21_2(v1 + v18);
    if (v27)
    {
      sub_1E325F69C(v1, &qword_1ECF2D6D0);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1E3743538(v1, v2, &qword_1ECF2D6D0, &qword_1E42A9DF0);
  OUTLINED_FUNCTION_21_2(v1 + v18);
  if (v27)
  {
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v28, v29);
    OUTLINED_FUNCTION_21_1();
    sub_1E325F69C(v30, v31);
    (*(v6 + 8))(v2, v4);
LABEL_9:
    sub_1E325F69C(v1, &qword_1ECF2D868);
    goto LABEL_10;
  }

  v37 = v1 + v18;
  v38 = v43;
  (*(v6 + 32))(v43, v37, v4);
  sub_1E391D20C(&qword_1ECF2D768, MEMORY[0x1E697FF50], MEMORY[0x1E697FF60]);
  v39 = sub_1E4205E84();
  v40 = *(v6 + 8);
  v40(v38, v4);
  sub_1E325F69C(v16, &qword_1ECF2D6D0);
  sub_1E325F69C(v3, &qword_1ECF2D6D0);
  v40(v2, v4);
  v41 = OUTLINED_FUNCTION_78_0();
  sub_1E325F69C(v41, v42);
  if (v39)
  {
LABEL_13:
    v32 = *v44;
    if (*v44)
    {
      v33 = 176;
      v34 = 168;
      v35 = 160;
      v36 = 152;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_10:
  v32 = *v44;
  if (*v44)
  {
    v33 = 144;
    v34 = 136;
    v35 = 128;
    v36 = 120;
LABEL_15:
    v23.n128_u64[0] = *(v32 + v36);
    v24.n128_u64[0] = *(v32 + v35);
    v25.n128_u64[0] = *(v32 + v34);
    v26.n128_u64[0] = *(v32 + v33);
    j_nullsub_1(v23, v24, v25, v26);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E391CB60()
{
  result = qword_1ECF2DDE0;
  if (!qword_1ECF2DDE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DDD8, &qword_1E42AAE80);
    sub_1E391D15C(&qword_1ECF2DDE8, &qword_1ECF2DDD0, &qword_1E42AAE78, sub_1E391CC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DDE0);
  }

  return result;
}

unint64_t sub_1E391CC18()
{
  result = qword_1ECF2DDF0;
  if (!qword_1ECF2DDF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DDC8, &qword_1E42AAE70);
    sub_1E374AD40(&qword_1ECF2DDF8, &qword_1ECF2DDC0, &qword_1E42AAE68, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2DDF0);
  }

  return result;
}

uint64_t sub_1E391CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = OUTLINED_FUNCTION_74();
  v10(v9);
  return a6(v6);
}

uint64_t sub_1E391CDD4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEF0, &qword_1E42AAFE0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF2DEF0, &qword_1E42AAFE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4201D14();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000013, 0x80000001E4267A30, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E391D058(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

void sub_1E391D0B0()
{
  type metadata accessor for TransactionView(0);

  sub_1E391C298();
}

uint64_t sub_1E391D15C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E391D20C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E391D254(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_106();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_32_0();
  v6(v5);
  return a2;
}

unint64_t sub_1E391D2C4()
{
  result = qword_1ECF2E000;
  if (!qword_1ECF2E000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2DFF8, &unk_1E42AB0E8);
    sub_1E391D37C();
    sub_1E374AD40(&qword_1EE288820, &qword_1ECF2A7B8, &qword_1E429E4A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E000);
  }

  return result;
}

unint64_t sub_1E391D37C()
{
  result = qword_1EE28F200[0];
  if (!qword_1EE28F200[0])
  {
    type metadata accessor for OfferView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE28F200);
  }

  return result;
}

uint64_t sub_1E391D3D4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E391D42C()
{
  result = qword_1ECF2E030;
  if (!qword_1ECF2E030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E038, &qword_1E42AB1A0);
    sub_1E391CB60();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E030);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_56_12()
{

  return type metadata accessor for ViewRepresentableProperties(0);
}

uint64_t OUTLINED_FUNCTION_62_10(uint64_t a1)
{

  return sub_1E4200BC4();
}

id sub_1E391D550()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI24BannerViewCellController_bannerViewCell] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI24BannerViewCellController_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI24BannerViewCellController_navigationBarHeight] = 0x4052000000000000;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E391D5DC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI24BannerViewCellController_bannerViewCell;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *&v1[v2];
  if (!v3 || (v4 = [v3 vuiCellView]) == 0)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  }

  [v1 setView_];
}

void sub_1E391D6AC()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI24BannerViewCellController_bannerViewCell) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24BannerViewCellController_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI24BannerViewCellController_navigationBarHeight) = 0x4052000000000000;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E391D748(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_vui_viewWillAppear_, a1 & 1);
}

id sub_1E391D8C4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v2[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_usesDefaultImage] = 0;
  v14.receiver = v2;
  v14.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v14, sel_initWithType_interfaceStyle_, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4297BE0;
  *(v7 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  v8 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  v9 = sub_1E42062A4();

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v13[4] = sub_1E391DA88;
  v13[5] = v10;
  OUTLINED_FUNCTION_3_4();
  v13[1] = 1107296256;
  v13[2] = sub_1E3790FBC;
  v13[3] = &block_descriptor_26;
  v11 = _Block_copy(v13);

  [v8 vui:v9 registerForTraitChanges:v11 withHandler:?];
  _Block_release(v11);

  return v8;
}

void sub_1E391DA88()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E391DAD0();
  }
}

double sub_1E391DAD0()
{
  v1 = v0;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v20 = v19 - v18;
  if (*(v1 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_usesDefaultImage) == 1)
  {
    v29 = v8;
    v21 = [v1 vuiTraitCollection];
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    (*(v15 + 104))(v20, *MEMORY[0x1E69E7F80], v13);
    v28 = sub_1E4206A54();
    (*(v15 + 8))(v20, v13);
    OUTLINED_FUNCTION_4_0();
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = v21;
    aBlock[4] = sub_1E391ED6C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E329EEC4;
    aBlock[3] = &block_descriptor_17_0;
    v24 = _Block_copy(aBlock);

    v25 = v21;
    sub_1E4203FE4();
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    OUTLINED_FUNCTION_6_56();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v12, v5, v24);
    _Block_release(v24);

    v26 = OUTLINED_FUNCTION_11_6();
    v27(v26);
    (*(v29 + 8))(v12, v6);
  }

  return result;
}

void sub_1E391DE6C()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_usesDefaultImage) = 0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E391DF1C(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a3;
  if (a3)
  {
    if (a2)
    {
LABEL_3:

      v6 = a2;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = (*(*a1 + 392))();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v7 = objc_allocWithZone(v3);

  v6 = [v7 initWithType:9 interfaceStyle:0];
LABEL_6:
  v8 = v6;
  v9 = a2;
  [v8 setUsesSymbolPointerInteraction_];
  v10 = v8;
  [v10 setShowsMenuAsPrimaryAction_];
  [v10 setContextMenuInteractionEnabled_];

  if (v5)
  {
    OUTLINED_FUNCTION_111();
    v12 = *(v11 + 672);
    v13 = v10;

    v15 = v12(v14);

    if (v15)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v17 = v10;
  }

  v16 = [objc_opt_self() whiteColor];
  v15 = v16;
LABEL_11:
  OUTLINED_FUNCTION_13_0(v16, sel_setVuiTintColor_);

  v18 = objc_opt_self();
  v19 = [v18 clearColor];
  OUTLINED_FUNCTION_13_0(v19, sel_setVuiBackgroundColor_);

  v20 = OUTLINED_FUNCTION_12_47();
  if (v20)
  {
  }

  else
  {
    v21 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
    OUTLINED_FUNCTION_13_0(v21, sel_setImageView_);

    v22 = OUTLINED_FUNCTION_12_47();
    if (v22)
    {
      v23 = v22;
      if (!v5 || (OUTLINED_FUNCTION_111(), v25 = *(v24 + 672), v26 = , v27 = v25(v26), , !v27))
      {
        v27 = [v18 whiteColor];
      }

      [v23 _setTintColor_];
    }

    v28 = OUTLINED_FUNCTION_12_47();
    if (v28)
    {
      v29 = v28;
      if (!v5 || (OUTLINED_FUNCTION_111(), v31 = *(v30 + 864), v32 = , v33 = v31(v32), , !v33))
      {
        v33 = [v18 whiteColor];
      }

      [v29 _setFocusedColor_];
    }

    [v10 setTextContentView_];
    v46 = nullsub_1;
    v47 = 0;
    OUTLINED_FUNCTION_3_4();
    v43 = 1107296256;
    v44 = sub_1E37C0588;
    v45 = &block_descriptor_3_0;
    v34 = _Block_copy(&v42);
    OUTLINED_FUNCTION_13_0(v34, sel_setSelectActionHandler_);
    _Block_release(v34);
  }

  v35 = OUTLINED_FUNCTION_12_47();
  if (v35 && (v36 = v35, v37 = [v35 image], v36, v37))
  {

    if (!v5)
    {
      goto LABEL_31;
    }
  }

  else
  {
    *(v10 + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_usesDefaultImage) = 1;
    sub_1E391DAD0();
    if (!v5)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_111();
  v39 = *(v38 + 176);

  v39(&v42, v40);

  if ((v46 & 1) == 0)
  {
    [v10 setPadding_];

    return v10;
  }

LABEL_31:

  return v10;
}

id sub_1E391E3AC(uint64_t a1, double a2, double a3)
{
  v7 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  v16 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_lockupViewModel], v37);
  v17 = *&v3[v16];
  if (!v17)
  {
    return 0;
  }

  v18 = [v3 superview];
  if (!v18)
  {
LABEL_11:

    return 0;
  }

  while (1)
  {
    type metadata accessor for BaseCollectionView();
    v19 = swift_dynamicCastClass();
    if (v19)
    {
      break;
    }

    v20 = [v18 superview];

    v18 = v20;
    if (!v20)
    {
      goto LABEL_11;
    }
  }

  v21 = v19;
  [v19 convertPoint:v3 fromCoordinateSpace:{a2, a3}];
  v22 = [v21 indexPathForItemAtPoint_];
  if (!v22)
  {
LABEL_10:

    goto LABEL_11;
  }

  v23 = v22;
  sub_1E41FE804();

  (*(v9 + 32))(v15, v12, v7);
  v24 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
  swift_beginAccess();
  v25 = *&v3[v24];
  if (!v25)
  {
    v33 = OUTLINED_FUNCTION_11_6();
    v34(v33);
    swift_endAccess();
    goto LABEL_10;
  }

  swift_endAccess();
  v26 = &v3[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate];
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractorDelegate], v36);
  Strong = swift_unknownObjectWeakLoadStrong();
  v28 = *(v26 + 1);
  v29 = v25;
  v30 = sub_1E3C9C60C(v17, v15, a1, v3, &off_1F5D7CF48, Strong, v28);

  swift_unknownObjectRelease();

  v31 = OUTLINED_FUNCTION_11_6();
  v32(v31);
  return v30;
}

void sub_1E391E6DC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v18.receiver = v4;
  v18.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v18, sel_contextMenuInteraction_willEndForConfiguration_animator_, a1, a2, a3);
  v8 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor], v17);
  v9 = *&v4[v8];
  if (v9)
  {
    v10 = v9;
    sub_1E3C9EA54();
  }

  if (a3)
  {
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = a2;
    aBlock[4] = sub_1E391E82C;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v13;
    aBlock[3] = &block_descriptor_10_0;
    v14 = _Block_copy(aBlock);
    v15 = a2;

    [a3 addCompletion_];
    _Block_release(v14);
  }
}

void sub_1E391E82C()
{
  OUTLINED_FUNCTION_5_0(*(v0 + 16) + 16, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor;
    OUTLINED_FUNCTION_5_0(Strong + OBJC_IVAR____TtC8VideosUI17ContextMenuButton_contextMenuInteractor, &v6);
    v4 = *&v2[v3];
    if (v4)
    {
      v5 = v4;

      v2 = v5;
      sub_1E3C9F738();
    }
  }
}

void *sub_1E391E94C(uint64_t a1, uint64_t a2)
{
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_5_0(a1 + 16, v32);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    [objc_opt_self() scaleContentSizeValue:a2 forTraitCollection:16.0];
    v29 = [objc_opt_self() configurationWithPointSize:7 weight:v17];
    v18 = objc_opt_self();
    v30 = v10;
    v19 = sub_1E4205ED4();
    v20 = [v18 vuiSystemImageNamed:v19 withConfiguration:v29 accessibilityDescription:0];

    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v28 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    aBlock[4] = sub_1E391EDB0;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v23;
    aBlock[3] = &block_descriptor_24_0;
    v24 = _Block_copy(aBlock);
    v25 = v20;

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E37E7A8C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E378AD28();
    OUTLINED_FUNCTION_6_56();
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v14, v7, v24);
    _Block_release(v24);

    v26 = OUTLINED_FUNCTION_11_6();
    v27(v26);
    return (*(v30 + 8))(v14, v8);
  }

  return result;
}

uint64_t objectdestroy_6Tm_0()
{

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

void sub_1E391EDB0()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_5_0(v2 + 16, v14);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong imageView];

    if (v5)
    {
      v6 = [v1 vuiTemplateImage];
      [v5 setImage_];
    }
  }

  OUTLINED_FUNCTION_5_0(v2 + 16, v13);
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7;
    [v7 vui_setNeedsLayout];
  }

  OUTLINED_FUNCTION_5_0(v2 + 16, v12);
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = v9;
    v11 = [v9 superview];

    [v11 vui_setNeedsLayout];
  }
}

uint64_t sub_1E391EEE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D1>)
{
  v98 = a2;
  v101 = a1;
  v105 = a4;
  v7 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = (v10 - v9);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E088, &qword_1E42AB290);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94 - v13;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E090, &qword_1E42AB298);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v94 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E098, &qword_1E42AB2A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v94 - v18;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0A0, &qword_1E42AB2A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  v100 = &v94 - v21;
  v22 = sub_1E4201C44();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  v26 = (v25 - v24);
  v27 = sub_1E4203AF4();
  MEMORY[0x1EEE9AC00](v27 - 8);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0A8, &qword_1E42AB2B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v94 - v33;
  v96 = v19;
  if (a3)
  {
    v35 = v32;
    v36 = &v34[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0B8, &unk_1E42AB2C0) + 36)];
    v37 = *MEMORY[0x1E697F468];
    v38 = *(v23 + 104);
    v38(v36, v37, v22);
    *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F20, &unk_1E42C9520) + 36)] = 256;
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0B0, &qword_1E42AB2B8);
    OUTLINED_FUNCTION_2();
    (*(v39 + 16))(v34, v101);
    v40.n128_f64[0] = v38(v30, v37, v22);
    OUTLINED_FUNCTION_3_68(v40, v41, v42);
    v43 = &v34[*(v35 + 36)];
    v44 = MEMORY[0x1E6981998];
    sub_1E391FDAC(v30, v43, MEMORY[0x1E6981998]);
    v38(v26, *MEMORY[0x1E697F480], v22);
    v45 = sub_1E4201C34();
    (*(v23 + 8))(v26, v22);
    v46 = v106;
    v47 = v107;
    v48 = COERCE_UNSIGNED_INT64(*&v106 * 0.5) & 0xFFFFFFFFFFFFFFFELL | ((v45 & 1) == 0);
    v49 = *(&v107 + 1);
    v50 = v108;
    v51 = v98;

    v52 = sub_1E4203DA4();
    v54 = v53;
    v55 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0F0, &qword_1E42AB300) + 68);
    *v55 = v48;
    v56 = *(&v106 + 1);
    *(v55 + 8) = v46;
    *(v55 + 16) = v56;
    *(v55 + 24) = v47;
    *(v55 + 32) = v49;
    *(v55 + 40) = v50;
    *(v55 + 48) = v51;
    *(v55 + 56) = 256;
    *(v55 + 64) = v52;
    *(v55 + 72) = v54;
    sub_1E391FE0C(v30, v44);
    v57 = sub_1E4203DA4();
    v59 = v58;
    v60 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0C0, &qword_1E42AB2D0) + 36));
    *v60 = v57;
    v60[1] = v59;
    v61 = &qword_1ECF2E0A8;
    v62 = &qword_1E42AB2B0;
    sub_1E37E93E8(v34, v96, &qword_1ECF2E0A8, &qword_1E42AB2B0);
    swift_storeEnumTagMultiPayload();
    sub_1E391FAE8();
    sub_1E391FC84();
    v63 = v100;
    sub_1E4201F44();
    OUTLINED_FUNCTION_5_69(v63);
    swift_storeEnumTagMultiPayload();
    sub_1E391FA5C();
    OUTLINED_FUNCTION_1_11();
    sub_1E32752B0(v64, &qword_1ECF2E0B0, &qword_1E42AB2B8, v65);
    sub_1E4201F44();
    sub_1E325F6F0(v63, &qword_1ECF2E0A0, &qword_1E42AB2A8);
    v66 = v34;
    return sub_1E325F6F0(v66, v61, v62);
  }

  v67 = v101;
  if (a5 > 0.0)
  {
    v94 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0B0, &qword_1E42AB2B8);
    OUTLINED_FUNCTION_1_11();
    v95 = sub_1E32752B0(v68, &qword_1ECF2E0B0, &qword_1E42AB2B8, v69);
    sub_1E3E361E8();
    v70.n128_f64[0] = (*(v23 + 104))(v11 + *(v7 + 20), *MEMORY[0x1E697F468], v22);
    *v11 = a5;
    v11[1] = a5;
    OUTLINED_FUNCTION_3_68(v70, v71, v72);
    v73 = &v14[*(v97 + 36)];
    v74 = MEMORY[0x1E697EAF0];
    sub_1E391FDAC(v11, v73, MEMORY[0x1E697EAF0]);
    v75 = *&v106 * 0.5;
    v76 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D0, &qword_1E42AB2E0) + 68);
    sub_1E391FDAC(v11, v76, v74);
    *(v76 + *(sub_1E4201524() + 20)) = v75;
    v77 = v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0D8, &qword_1E42AB2E8) + 36);
    v78 = v107;
    *v77 = v106;
    *(v77 + 16) = v78;
    *(v77 + 32) = v108;
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E0, &qword_1E42AB2F0);
    *(v76 + *(v79 + 52)) = v98;
    *(v76 + *(v79 + 56)) = 256;

    v80 = sub_1E4203DA4();
    v82 = v81;
    sub_1E391FE0C(v11, v74);
    v83 = (v76 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0E8, &qword_1E42AB2F8) + 36));
    *v83 = v80;
    v83[1] = v82;
    v84 = sub_1E4203DA4();
    v86 = v85;
    v87 = (v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0C8, &qword_1E42AB2D8) + 36));
    *v87 = v84;
    v87[1] = v86;
    v61 = &qword_1ECF2E088;
    v62 = &qword_1E42AB290;
    sub_1E37E93E8(v14, v96, &qword_1ECF2E088, &qword_1E42AB290);
    swift_storeEnumTagMultiPayload();
    sub_1E391FAE8();
    sub_1E391FC84();
    v88 = v100;
    sub_1E4201F44();
    OUTLINED_FUNCTION_5_69(v88);
    swift_storeEnumTagMultiPayload();
    sub_1E391FA5C();
    sub_1E4201F44();
    sub_1E325F6F0(v88, &qword_1ECF2E0A0, &qword_1E42AB2A8);
    v66 = v14;
    return sub_1E325F6F0(v66, v61, v62);
  }

  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E0B0, &qword_1E42AB2B8);
  OUTLINED_FUNCTION_2();
  (*(v91 + 16))(v102, v67, v90);
  swift_storeEnumTagMultiPayload();
  sub_1E391FA5C();
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v92, &qword_1ECF2E0B0, &qword_1E42AB2B8, v93);
  return sub_1E4201F44();
}

void sub_1E391F7FC(void *a1, char a2, char a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = sub_1E42036E4();
  if (a1)
  {
    v15 = a1;
    v16 = sub_1E4203644();

    v14 = v16;
  }

  v17[0] = v14;
  *&v17[1] = a6;
  *&v17[2] = a7;
  v18 = a2 & 1;
  v19 = a3 & 1;
  MEMORY[0x1E690DE70](v17, a4, &type metadata for ClippedRoundedBorderModifier, a5);
}

void sub_1E391F8C0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *sub_1E3E60CFC();
  v8 = v6;
  v7 = sub_1E3E60B34();
  sub_1E391F7FC(v6, 0, 0, a1, a2, *v7, a3);
}

unint64_t sub_1E391F958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE293CB0[0];
  if (!qword_1EE293CB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE293CB0);
  }

  return result;
}

uint64_t sub_1E391F9AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1E391F9EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E391FA5C()
{
  result = qword_1EE288EE0;
  if (!qword_1EE288EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E0A0, &qword_1E42AB2A8);
    sub_1E391FAE8();
    sub_1E391FC84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EE0);
  }

  return result;
}

unint64_t sub_1E391FAE8()
{
  result = qword_1EE289658;
  if (!qword_1EE289658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E0A8, &qword_1E42AB2B0);
    sub_1E391FBA0();
    sub_1E32752B0(&qword_1EE2892E0, &qword_1ECF2E0C0, &qword_1E42AB2D0, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289658);
  }

  return result;
}

unint64_t sub_1E391FBA0()
{
  result = qword_1EE289AA0;
  if (!qword_1EE289AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E0B8, &unk_1E42AB2C0);
    sub_1E32752B0(&qword_1EE288928, &qword_1ECF2E0B0, &qword_1E42AB2B8, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE289DF8, &qword_1ECF28F20, &unk_1E42C9520, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AA0);
  }

  return result;
}

unint64_t sub_1E391FC84()
{
  result = qword_1EE289980;
  if (!qword_1EE289980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E088, &qword_1E42AB290);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E0B0, &qword_1E42AB2B8);
    sub_1E32752B0(&qword_1EE288928, &qword_1ECF2E0B0, &qword_1E42AB2B8, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE2892F8, &qword_1ECF2E0C8, &qword_1E42AB2D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289980);
  }

  return result;
}

uint64_t sub_1E391FDAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1E391FE0C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1E391FE64()
{
  result = qword_1EE288BC0;
  if (!qword_1EE288BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E0F8, &qword_1E42AB308);
    sub_1E391FA5C();
    sub_1E32752B0(&qword_1EE288928, &qword_1ECF2E0B0, &qword_1E42AB2B8, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288BC0);
  }

  return result;
}

uint64_t sub_1E391FF1C()
{
  v1 = OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E110, &qword_1E42AB338);
    v2 = sub_1E4205CB4();
    *(v0 + v1) = v2;
  }

  return v2;
}

id sub_1E391FFB0(void *a1)
{
  OUTLINED_FUNCTION_0_8();
  *(v1 + OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells) = 0;
  v8 = type metadata accessor for StackCollectionView();
  v3 = OUTLINED_FUNCTION_2_15();
  v6 = objc_msgSendSuper2(v4, v5, a1, v3, v1, v8);

  return v6;
}

void sub_1E3920090()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3920110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1E38E7D78();
  v7 = swift_dynamicCastMetatype();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1E391FF1C();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E3920B40(v8, a2, a3, isUniquelyReferenced_nonNull_native);
    *&v4[OBJC_IVAR____TtC8VideosUI19StackCollectionView____lazy_storage___registeredCells] = v9;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = sub_1E4205ED4();
  v13.receiver = v4;
  v13.super_class = type metadata accessor for StackCollectionView();
  objc_msgSendSuper2(&v13, sel_vui_registerClass_forCellWithReuseIdentifier_, ObjCClassFromMetadata, v12);
}

uint64_t sub_1E392026C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E391FF1C();
  if (*(v4 + 16) && (v5 = sub_1E327D33C(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {

    return 0;
  }

  return v7;
}

id sub_1E39202DC(void *a1)
{
  if (a1)
  {
    v1 = [a1 traitCollection];
  }

  else
  {
    v1 = [objc_opt_self() current];
  }

  return v1;
}

void sub_1E392032C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E41FE874();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v27 = &v26 - v11;
  v12 = [v2 vuiIsRTL];
  v13 = [v2 vuiPreciseIndexPathsForVisibleItems];
  v14 = sub_1E42062B4();

  if (v12)
  {
    sub_1E39206C0(v14);
    v14 = v15;
  }

  v16 = [v2 numberOfItemsInSection_];
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (!v17)
  {
    v19 = v27;
    v20 = MEMORY[0x1E6909190](v18, a2);
    MEMORY[0x1EEE9AC00](v20);
    *(&v26 - 2) = v19;
    if (sub_1E3920CE8(sub_1E3920CC8, (&v26 - 4), v14))
    {
      sub_1E3920990(v28);
      if ((v29 & 1) == 0 && CGRectContainsRect(v28[1], v28[0]))
      {

        (*(v6 + 32))(a1, v27, v5);
        __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
        return;
      }
    }

    v26 = a1;
    v21 = v14[2];
    if (!v21)
    {
LABEL_14:
      sub_1E39208E8(v14, v26);

      (*(v6 + 8))(v27, v5);
      return;
    }

    v22 = 0;
    v23 = v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    while (v22 < v14[2])
    {
      (*(v6 + 16))(v8, &v23[*(v6 + 72) * v22], v5);
      sub_1E3920990(v30);
      if ((v31 & 1) == 0)
      {
        width = v30[0].size.width;
        v32 = CGRectIntersection(v30[1], v30[0]);
        if (v32.size.width / width >= 0.5)
        {

          (*(v6 + 8))(v27, v5);
          v25 = v26;
          (*(v6 + 32))(v26, v8, v5);
          __swift_storeEnumTagSinglePayload(v25, 0, 1, v5);
          return;
        }
      }

      ++v22;
      (*(v6 + 8))(v8, v5);
      if (v21 == v22)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1E39206C0(void *a1)
{
  v2 = sub_1E41FE874();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v29 = v23 - v8;
  v9 = a1[2];
  if (v9 < 2)
  {
    return;
  }

  v10 = 0;
  v11 = v9 >> 1;
  v12 = v9 - 1;
  v24 = v9 >> 1;
  v25 = v6;
  v23[1] = v6 + 16;
  v26 = (v6 + 40);
  while (1)
  {
    if (v10 == v12)
    {
      goto LABEL_10;
    }

    v13 = a1[2];
    if (v10 >= v13)
    {
      break;
    }

    v14 = v4;
    v28 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = a1 + v28;
    v16 = *(v6 + 72);
    v17 = a1;
    v18 = *(v6 + 16);
    v27 = v16 * v10;
    v18(v29, &v15[v16 * v10], v2, v7);
    if (v12 >= v13)
    {
      goto LABEL_13;
    }

    v19 = v16 * v12;
    v20 = &v15[v16 * v12];
    v4 = v14;
    (v18)(v14, v20, v2);
    a1 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1E3920DBC(v17);
    }

    v21 = a1 + v28;
    v22 = *v26;
    (*v26)(a1 + v28 + v27, v4, v2);
    if (v12 >= a1[2])
    {
      goto LABEL_14;
    }

    v22(&v21[v19], v29, v2);
    v11 = v24;
    v6 = v25;
LABEL_10:
    ++v10;
    --v12;
    if (v11 == v10)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1E39208E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E41FE874();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1E3920990(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1E41FE7E4();
  v6 = [v2 vui:v5 cellForItemAtIndexPath:?];

  if (v6)
  {
    [v6 frame];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [v3 superview];
    [v3 convertRect:v15 toView:{v8, v10, v12, v14}];
    v33 = v16;
    v31 = v17;
    v35 = v18;
    v36 = v19;

    [v3 frame];
    v32 = v20;
    v29 = v22;
    v30 = v21;
    v34 = v23;

    *&v28 = v29;
    *&v27 = v30;
    *&v26 = v31;
    *&v25 = v33;
    v24 = 0;
    *(&v25 + 1) = v35;
    *(&v26 + 1) = v36;
    *(&v27 + 1) = v32;
    *(&v28 + 1) = v34;
  }

  else
  {
    v24 = 1;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
  }

  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v27;
  *(a2 + 48) = v28;
  *(a2 + 64) = v24;
}

id sub_1E3920AFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackCollectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E3920B40(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E108, &qword_1E42AB330);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1E3920C68(uint64_t a1, uint64_t a2)
{
  sub_1E41FE874();
  sub_1E37BDE0C();
  return sub_1E4205E84() & 1;
}

BOOL sub_1E3920CE8(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_1E41FE874() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void *sub_1E3920DD0(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC0];
  }

  v2 = OUTLINED_FUNCTION_26_29();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

LABEL_3:
  result = type metadata accessor for LibMediaEntityFactory();
  if (v2 >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1E6911E60](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      sub_1E3B46CE8(v6, 0, &v14);
      if (v15)
      {
        sub_1E3251BE8(&v14, v16);
        sub_1E327F454(v16, &v14);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = OUTLINED_FUNCTION_27();
          v5 = sub_1E3923890(v10, v11, v12, v5);
        }

        v9 = v5[2];
        v8 = v5[3];
        if (v9 >= v8 >> 1)
        {
          v13 = OUTLINED_FUNCTION_35(v8);
          v5 = sub_1E3923890(v13, v9 + 1, 1, v5);
        }

        __swift_destroy_boxed_opaque_existential_1(v16);
        v5[2] = v9 + 1;
        sub_1E3251BE8(&v14, &v5[5 * v9 + 4]);
      }

      else
      {

        sub_1E325F748(&v14, &qword_1ECF28EB8, &unk_1E4298890);
      }

      ++v4;
    }

    while (v2 != v4);
    return v5;
  }

  __break(1u);
  return result;
}

void *sub_1E3920F60(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_40;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E4207384())
  {
    v3 = 0;
    v36 = v1 & 0xC000000000000001;
    v32 = v1 + 32;
    v33 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = MEMORY[0x1E69E7CC0];
    v34 = i;
    v35 = v1;
    while (1)
    {
      if (v36)
      {
        v5 = MEMORY[0x1E6911E60](v3, v1);
      }

      else
      {
        if (v3 >= *(v33 + 16))
        {
          goto LABEL_39;
        }

        v5 = *(v32 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      if ([v5 mediaTypes] == 512)
      {
        v8 = type metadata accessor for LibMediaEntityFactory();
        v9 = v6;
        sub_1E3B46CE8(v6, 1, &v38);

        if (v39)
        {
          sub_1E3251BE8(&v38, v40);
          sub_1E327F454(v40, &v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = OUTLINED_FUNCTION_27();
            v4 = sub_1E3923890(v25, v26, v27, v4);
          }

          v10 = v4[2];
          OUTLINED_FUNCTION_20_41();
          if (v12)
          {
            v28 = OUTLINED_FUNCTION_1_12(v11);
            v4 = sub_1E3923890(v28, v29, v30, v4);
          }

          __swift_destroy_boxed_opaque_existential_1(v40);
          v4[2] = v8;
          OUTLINED_FUNCTION_25_33(&v4[5 * v10], v32, v33, v34, v35, v36, v37, v38);
          goto LABEL_35;
        }

        sub_1E325F748(&v38, &qword_1ECF28EB8, &unk_1E4298890);
      }

      v37 = v6;
      v13 = [v6 items];
      sub_1E3923D18();
      v14 = sub_1E42062B4();

      if (v14 >> 62)
      {
        v15 = sub_1E4207384();
        if (!v15)
        {
LABEL_34:

          goto LABEL_35;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          goto LABEL_34;
        }
      }

      type metadata accessor for LibMediaEntityFactory();
      if (v15 < 1)
      {
        goto LABEL_38;
      }

      for (j = 0; j != v15; ++j)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1E6911E60](j, v14);
        }

        else
        {
          v17 = *(v14 + 8 * j + 32);
        }

        v18 = v17;
        sub_1E3B46CE8(v17, 0, &v38);
        if (v39)
        {
          sub_1E3251BE8(&v38, v40);
          sub_1E327F454(v40, &v38);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v21 = OUTLINED_FUNCTION_27();
            v4 = sub_1E3923890(v21, v22, v23, v4);
          }

          v20 = v4[2];
          v19 = v4[3];
          if (v20 >= v19 >> 1)
          {
            v24 = OUTLINED_FUNCTION_35(v19);
            v4 = sub_1E3923890(v24, v20 + 1, 1, v4);
          }

          __swift_destroy_boxed_opaque_existential_1(v40);
          v4[2] = v20 + 1;
          OUTLINED_FUNCTION_25_33(&v4[5 * v20], v32, v33, v34, v35, v36, v37, v38);
        }

        else
        {

          sub_1E325F748(&v38, &qword_1ECF28EB8, &unk_1E4298890);
        }
      }

      i = v34;
      v1 = v35;
LABEL_35:
      if (v3 == i)
      {
        return v4;
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

  return MEMORY[0x1E69E7CC0];
}

void sub_1E39212D0(uint64_t a1, void *a2)
{
  v8 = MEMORY[0x1E69E7CC0];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = &v8;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E3923D5C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_1E379E500;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3839B50;
  aBlock[3] = &block_descriptor_9_2;
  v6 = _Block_copy(aBlock);

  [a2 performBlockAndWait_];
  _Block_release(v6);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1E3921444()
{
  OUTLINED_FUNCTION_28_5();
  if ([v1 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v76 = 0u;
    v77[0] = 0u;
  }

  *v80 = v76;
  *&v80[16] = v77[0];
  if (!*(&v77[0] + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    *v80 = 4;
    memset(&v80[8], 0, 32);
    v81 = 1;
    return v0(v80);
  }

  v2 = OUTLINED_FUNCTION_5_70();
  sub_1E3277E60(v2, v3, v78, v4);
  if (!*&v80[24])
  {

LABEL_14:
    sub_1E325F748(v80, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_8_46(v5, v6, v7, v5, v8, v9, v10, v11, v59, v61, v64, v67, v69, v73, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_15;
  }

  v12 = v76;
  sub_1E3277E60(1635018093, 0xE400000000000000, v78, v80);
  if (!*&v80[24])
  {
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_8_46(v13, v14, v15, v16, v17, v18, v19, v20, v60, v62, v65, v68, v70, v74, v76);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_18;
  }

  v21 = OUTLINED_FUNCTION_16_42();
  sub_1E3277E60(v21, 0xE500000000000000, v76, v80);

  if (!*&v80[24])
  {
LABEL_17:
    sub_1E325F748(v80, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_8_46(v22, v23, v24, MEMORY[0x1E69E6530], v25, v26, v27, v28, v60, v62, v65, v68, v71, v74, v76);
  if (swift_dynamicCast())
  {
    HIDWORD(v68) = 0;
    v72 = v76;
    goto LABEL_19;
  }

LABEL_18:
  v72 = 0;
  HIDWORD(v68) = 1;
LABEL_19:
  v30 = OUTLINED_FUNCTION_14_56();
  sub_1E3277E60(v30, v31, v78, v32);

  if (*&v80[24])
  {
    OUTLINED_FUNCTION_8_46(v33, v34, v35, MEMORY[0x1E69E6158], v36, v37, v38, v39, v60, v62, v65, v68, v72, v74, v76);
    if (swift_dynamicCast())
    {
      v63 = *(&v76 + 1);
      v66 = v76;
      goto LABEL_24;
    }
  }

  else
  {
    sub_1E325F748(v80, &unk_1ECF296E0, &unk_1E4298030);
  }

  v63 = 0;
  v66 = 0;
LABEL_24:
  v40 = *(v12 + 16);
  v75 = v12;
  if (v40)
  {
    type metadata accessor for LibMediaEntityFactory();
    v41 = MEMORY[0x1E69E7CC0];
    v42 = v12 + 32;
    do
    {

      sub_1E3B46CE8(v43, 128, &v76);

      if (*(&v77[0] + 1))
      {
        sub_1E3251BE8(&v76, v80);
        sub_1E327F454(v80, &v76);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = OUTLINED_FUNCTION_27();
          v41 = sub_1E3923890(v46, v47, v48, v41);
        }

        v45 = v41[2];
        v44 = v41[3];
        if (v45 >= v44 >> 1)
        {
          v49 = OUTLINED_FUNCTION_35(v44);
          v41 = sub_1E3923890(v49, v45 + 1, 1, v41);
        }

        __swift_destroy_boxed_opaque_existential_1(v80);
        v41[2] = v45 + 1;
        OUTLINED_FUNCTION_25_33(&v41[5 * v45], v60, v63, v66, v68, v72, v75, v76);
      }

      else
      {
        sub_1E325F748(&v76, &qword_1ECF28EB8, &unk_1E4298890);
      }

      v42 += 8;
      --v40;
    }

    while (v40);
  }

  else
  {
    v41 = MEMORY[0x1E69E7CC0];
  }

  v50 = 0;
  v51 = v41[2];
  v52 = (v41 + 4);
  v53 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v51 == v50)
    {

      OUTLINED_FUNCTION_33_26(&v76, v60, v63, v66, v68, SBYTE4(v68), v72);
      v58 = v76;
      *v80 = v76;
      *&v80[16] = LOBYTE(v77[0]);
      *&v80[24] = *(v77 + 8);
      v81 = 0;
      v0(v80);
      v79 = v58;
      sub_1E325F748(&v79, &qword_1ECF2E118, &qword_1E42AB340);
      v78 = *(v77 + 8);
      return sub_1E325F748(&v78, &qword_1ECF3D960, &unk_1E4298000);
    }

    if (v50 >= v41[2])
    {
      break;
    }

    sub_1E327F454(v52, v80);
    if (sub_1E3921914(v80))
    {
      sub_1E3251BE8(v80, &v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v78 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3923EE8(0, *(v53 + 16) + 1, 1);
        v53 = v78;
      }

      v56 = *(v53 + 16);
      v55 = *(v53 + 24);
      if (v56 >= v55 >> 1)
      {
        v57 = OUTLINED_FUNCTION_35(v55);
        sub_1E3923EE8(v57, v56 + 1, 1);
        v53 = v78;
      }

      *(v53 + 16) = v56 + 1;
      result = OUTLINED_FUNCTION_25_33(v53 + 40 * v56, v60, v63, v66, v68, v72, v75, v76);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v80);
    }

    v52 += 40;
    ++v50;
  }

  __break(1u);
  return result;
}

BOOL sub_1E3921914(uint64_t a1)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedInstance];
  v4 = [v3 maxMovieRank];

  v5 = [v2 sharedInstance];
  v6 = [v5 maxTVShowRank];

  sub_1E327F454(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CE88, &unk_1E42C61F0);
  if (!swift_dynamicCast())
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1E325F748(v20, &qword_1ECF2CEA0, &unk_1E42A8980);
    sub_1E327F454(a1, v23);
    type metadata accessor for LibFamilySharingShowMediaEntity(0);
    if (swift_dynamicCast())
    {
      v14 = (*(*v22[0] + 584))();
      if (v14)
      {
        if (v6)
        {
          v15 = (*(*v14 + 952))(v14);
          if (v15)
          {
            v16 = v15;
            v17 = [v15 rank];

            v18 = [v6 unsignedIntegerValue];

            return v18 >= v17;
          }

          return 0;
        }

        return 1;
      }
    }

    return 0;
  }

  sub_1E3251BE8(v20, v23);
  if (!v4)
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
    return 1;
  }

  v8 = v24;
  v7 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v9 = (*(*(v7 + 8) + 136))(v8);
  if (!v9)
  {

    __swift_destroy_boxed_opaque_existential_1(v23);
    return 0;
  }

  v10 = v9;
  v11 = [v9 rank];

  v12 = [v4 unsignedIntegerValue];
  v13 = v12 >= v11;
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v13;
}

uint64_t sub_1E3921C2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if ([a1 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v84 = 0u;
    v85 = 0u;
  }

  v87 = v84;
  v88[0] = v85;
  if (!*(&v85 + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  result = OUTLINED_FUNCTION_35_21(&v86, &v87, MEMORY[0x1E69E7CA0] + 8);
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  v4 = v86;
  v5 = OUTLINED_FUNCTION_5_70();
  sub_1E3277E60(v5, v6, v4, v7);
  if (!*(&v88[0] + 1))
  {

LABEL_14:
    result = sub_1E325F748(&v87, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_9_52(v8, v9, v10, v8, v11, v12, v13, v14, v67, v69, v72, v75, v77, v81, v84);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_15:
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0uLL;
LABEL_16:
    *a2 = v35;
    *(a2 + 8) = v36;
    *(a2 + 16) = v37;
    *(a2 + 24) = v38;
    return result;
  }

  v15 = v84;
  sub_1E3277E60(1635018093, 0xE400000000000000, v4, &v87);
  if (!*(&v88[0] + 1))
  {
    goto LABEL_18;
  }

  v24 = OUTLINED_FUNCTION_9_52(v16, v17, v18, v19, v20, v21, v22, v23, v68, v70, v73, v76, v78, v82, v84);
  if ((OUTLINED_FUNCTION_35_21(v24, v25, v26) & 1) == 0)
  {
    goto LABEL_19;
  }

  v27 = OUTLINED_FUNCTION_16_42();
  sub_1E3277E60(v27, 0xE500000000000000, v84, &v87);

  if (!*(&v88[0] + 1))
  {
LABEL_18:
    sub_1E325F748(&v87, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_9_52(v28, v29, v30, MEMORY[0x1E69E6530], v31, v32, v33, v34, v68, v70, v73, v76, v79, v82, v84);
  if (swift_dynamicCast())
  {
    HIDWORD(v76) = 0;
    v80 = v84;
    goto LABEL_20;
  }

LABEL_19:
  v80 = 0;
  HIDWORD(v76) = 1;
LABEL_20:
  v39 = OUTLINED_FUNCTION_14_56();
  sub_1E3277E60(v39, v40, v4, v41);

  if (*(&v88[0] + 1))
  {
    OUTLINED_FUNCTION_9_52(v42, v43, v44, MEMORY[0x1E69E6158], v45, v46, v47, v48, v68, v70, v73, v76, v80, v82, v84);
    if (swift_dynamicCast())
    {
      v71 = *(&v84 + 1);
      v74 = v84;
      goto LABEL_25;
    }
  }

  else
  {
    sub_1E325F748(&v87, &unk_1ECF296E0, &unk_1E4298030);
  }

  v71 = 0;
  v74 = 0;
LABEL_25:
  v49 = *(v15 + 16);
  v83 = v15;
  if (v49)
  {
    type metadata accessor for LibMediaEntityFactory();
    v50 = MEMORY[0x1E69E7CC0];
    v51 = v15 + 32;
    do
    {

      sub_1E3B46CE8(v52, 128, &v84);

      if (*(&v85 + 1))
      {
        sub_1E3251BE8(&v84, &v87);
        sub_1E327F454(&v87, &v84);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = OUTLINED_FUNCTION_27();
          v50 = sub_1E3923890(v55, v56, v57, v50);
        }

        v54 = v50[2];
        v53 = v50[3];
        if (v54 >= v53 >> 1)
        {
          v58 = OUTLINED_FUNCTION_35(v53);
          v50 = sub_1E3923890(v58, v54 + 1, 1, v50);
        }

        __swift_destroy_boxed_opaque_existential_1(&v87);
        v50[2] = v54 + 1;
        OUTLINED_FUNCTION_25_33(&v50[5 * v54], v68, v71, v74, v76, v80, v83, v84);
      }

      else
      {
        sub_1E325F748(&v84, &qword_1ECF28EB8, &unk_1E4298890);
      }

      v51 += 8;
      --v49;
    }

    while (v49);
  }

  else
  {
    v50 = MEMORY[0x1E69E7CC0];
  }

  v59 = 0;
  v60 = v50[2];
  v61 = (v50 + 4);
  v62 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v60 == v59)
    {

      result = OUTLINED_FUNCTION_33_26(&v87, v68, v71, v74, v76, SBYTE4(v76), v80);
      v36 = *(&v87 + 1);
      v35 = v87;
      v37 = LOBYTE(v88[0]);
      v38 = *(v88 + 8);
      goto LABEL_16;
    }

    if (v59 >= v50[2])
    {
      break;
    }

    sub_1E327F454(v61, &v87);
    if (sub_1E3921914(&v87))
    {
      sub_1E3251BE8(&v87, &v84);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = v62;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1E3923EE8(0, *(v62 + 16) + 1, 1);
        v62 = v86;
      }

      v65 = *(v62 + 16);
      v64 = *(v62 + 24);
      if (v65 >= v64 >> 1)
      {
        v66 = OUTLINED_FUNCTION_35(v64);
        sub_1E3923EE8(v66, v65 + 1, 1);
        v62 = v86;
      }

      *(v62 + 16) = v65 + 1;
      result = OUTLINED_FUNCTION_25_33(v62 + 40 * v65, v68, v71, v74, v76, v80, v83, v84);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(&v87);
    }

    v61 += 40;
    ++v59;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3922084()
{
  OUTLINED_FUNCTION_28_5();
  if ([v3 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v278 = 0u;
    v279[0] = 0u;
  }

  *v282 = v278;
  *&v282[16] = v279[0];
  if (!*(&v279[0] + 1))
  {
    goto LABEL_65;
  }

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_24_25(&v280, v282) & 1) == 0)
  {
LABEL_66:
    *v282 = 4;
    memset(&v282[8], 0, 32);
    v283 = 1;
    return v0(v282);
  }

  v5 = v280;
  v6 = OUTLINED_FUNCTION_5_70();
  sub_1E3277E60(v6, v7, v5, v8);
  if (!*&v282[24])
  {

LABEL_65:
    sub_1E325F748(v282, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_66;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_7_74(v9, v10, v11, v12, v13, v14, v15, v16, v235, v238, v241, v244, v247, v250, v253, v256, v259, v262, v265, v268, v270, v274, v278);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_66;
  }

  v254 = v9;
  v257 = v1;
  v260 = v0;
  v263 = v5;
  v17 = v278;
  v18 = *(v278 + 16);
  if (v18)
  {
    v19 = (v278 + 32);
    v20 = MEMORY[0x1E69E7CC8];
    v266 = xmmword_1E4297BE0;
    v275 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v21 = *v19;

      v22 = sub_1E38ADF4C();
      if (!*(v21 + 16))
      {
        goto LABEL_35;
      }

      v23 = *v22;
      v24 = v22[1];

      sub_1E327D33C(v23, v24);
      OUTLINED_FUNCTION_15_51();

      if ((v2 & 1) == 0)
      {
        goto LABEL_35;
      }

      v25 = sub_1E328438C(*(v21 + 56) + 32 * v21, v282);
      v33 = OUTLINED_FUNCTION_7_74(v25, v26, v27, v28, v29, v30, v31, v32, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v271, v275, v278);
      if ((OUTLINED_FUNCTION_24_25(v33, v34) & 1) == 0)
      {
        goto LABEL_35;
      }

      v35 = sub_1E38ADF64();
      if (*(v278 + 16) && (v36 = *v35, v2 = v35[1], , v37 = sub_1E327D33C(v36, v2), v39 = v38, , (v39 & 1) != 0))
      {
        sub_1E328438C(*(v278 + 56) + 32 * v37, v282);

        v48 = OUTLINED_FUNCTION_7_74(v40, v41, v42, v43, v44, v45, v46, v47, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v271, v275, v278);
        if ((OUTLINED_FUNCTION_24_25(v48, v49) & 1) == 0)
        {
          goto LABEL_35;
        }

        if (!*(v278 + 16))
        {
          goto LABEL_34;
        }

        v50 = OUTLINED_FUNCTION_5_70();
        v52 = sub_1E327D33C(v50, v51);
        if ((v53 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_1E328438C(*(v278 + 56) + 32 * v52, v282);

        OUTLINED_FUNCTION_7_74(v54, v55, v56, v57, v58, v59, v60, v61, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v271, v275, v278);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_35;
        }

        if (!*(v278 + 16) || (v62 = *(v278 + 32), , , v63 = sub_1E38ADE90(), !*(v62 + 16)) || (v251 = v62, v64 = *v63, v65 = v63[1], , sub_1E327D33C(v64, v65), OUTLINED_FUNCTION_15_51(), , (v2 & 1) == 0) || (v66 = sub_1E328438C(*(v251 + 56) + 32 * v251, v282), OUTLINED_FUNCTION_7_74(v66, v67, v68, v69, v70, v71, v72, v73, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v271, v275, v278), (swift_dynamicCast() & 1) == 0))
        {
LABEL_34:

LABEL_35:

          goto LABEL_36;
        }

        v74 = v278;
        v242 = v17;
        v245 = *(&v278 + 1);
        v248 = v278;
        if (*(v275 + 16) && (v75 = sub_1E327D33C(v278, *(&v278 + 1)), (v76 & 1) != 0))
        {
          v77 = v75;

          v78 = *(*(v275 + 56) + 8 * v77);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = OUTLINED_FUNCTION_27();
            v78 = sub_1E39239C8(v130, v131, v132, v78);
          }

          v80 = v78[2];
          v79 = v78[3];
          v81 = v275;
          if (v80 >= v79 >> 1)
          {
            v133 = OUTLINED_FUNCTION_1_12(v79);
            v136 = sub_1E39239C8(v133, v134, v135, v78);
            v81 = v275;
            v78 = v136;
          }

          v78[2] = v80 + 1;
          v251 = v78;
          v78[v80 + 4] = v21;
          v82 = v81;
          swift_isUniquelyReferenced_nonNull_native();
          *v282 = v82;
          sub_1E327D33C(v74, *(&v74 + 1));
          OUTLINED_FUNCTION_10_45();
          if (v85)
          {
            goto LABEL_133;
          }

          v2 = v83;
          v86 = v84;
          v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E128, &qword_1E42AB358);
          v88 = OUTLINED_FUNCTION_34_28(v87);
          if (v88)
          {
            v96 = v245;
            v88 = sub_1E327D33C(v248, v245);
            if ((v86 & 1) != (v89 & 1))
            {
              goto LABEL_135;
            }

            v2 = v88;
          }

          else
          {
            v96 = v245;
          }

          v275 = *v282;
          if (v86)
          {
            OUTLINED_FUNCTION_29_23(v88, v89, v90, v91, v92, v93, v94, v95, v236, v239, v242, v245, v248, v251);
          }

          else
          {
            OUTLINED_FUNCTION_3_69(*v282 + 8 * (v2 >> 6));
            v127 = (*(v126 + 48) + 16 * v2);
            *v127 = v248;
            v127[1] = v96;
            OUTLINED_FUNCTION_30_23();
            if (v85)
            {
              goto LABEL_134;
            }

            *(v129 + 16) = v128;
          }

          v17 = v242;
        }

        else
        {
          HIDWORD(v239) = swift_isUniquelyReferenced_nonNull_native();
          *v282 = v20;
          sub_1E327D33C(v278, *(&v278 + 1));
          OUTLINED_FUNCTION_10_45();
          if (v85)
          {
            goto LABEL_129;
          }

          v99 = v97;
          v100 = v98;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E120, &qword_1E42AB348);
          if (sub_1E4207644())
          {
            v101 = *(&v278 + 1);
            v102 = sub_1E327D33C(v278, *(&v278 + 1));
            if ((v100 & 1) != (v103 & 1))
            {
              goto LABEL_135;
            }

            v99 = v102;
            v104 = v100;
            v17 = v242;
          }

          else
          {
            v104 = v100;
            v17 = v242;
            v101 = *(&v278 + 1);
          }

          v20 = *v282;
          if (v104)
          {
            *(*(*v282 + 56) + 8 * v99) = v251;
          }

          else
          {
            OUTLINED_FUNCTION_3_69(*v282 + 8 * (v99 >> 6));
            v105 = (v20[6] + 16 * v99);
            *v105 = v278;
            v105[1] = v101;
            *(v20[7] + 8 * v99) = v251;
            v106 = v20[2];
            v85 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v85)
            {
              goto LABEL_131;
            }

            v20[2] = v107;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
          v108 = swift_allocObject();
          *(v108 + 16) = v266;
          v251 = v108;
          *(v108 + 32) = v21;
          swift_isUniquelyReferenced_nonNull_native();
          *v282 = v275;
          sub_1E327D33C(v248, v101);
          v276 = v109;
          OUTLINED_FUNCTION_10_45();
          if (v85)
          {
            goto LABEL_130;
          }

          v2 = v110;
          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E128, &qword_1E42AB358);
          v112 = OUTLINED_FUNCTION_34_28(v111);
          if (v112)
          {
            v120 = v245;
            v112 = sub_1E327D33C(v248, v245);
            v121 = v276;
            if ((v276 & 1) != (v113 & 1))
            {
              goto LABEL_135;
            }

            v2 = v112;
          }

          else
          {
            v120 = v245;
            v121 = v276;
          }

          v275 = *v282;
          if (v121)
          {
            OUTLINED_FUNCTION_29_23(v112, v113, v114, v115, v116, v117, v118, v119, v236, v239, v242, v245, v248, v251);

            goto LABEL_35;
          }

          OUTLINED_FUNCTION_3_69(*v282 + 8 * (v2 >> 6));
          v123 = (*(v122 + 48) + 16 * v2);
          *v123 = v248;
          v123[1] = v120;
          OUTLINED_FUNCTION_30_23();
          if (v85)
          {
            goto LABEL_132;
          }

          *(v125 + 16) = v124;
        }
      }

      else
      {
      }

LABEL_36:
      ++v19;
      if (!--v18)
      {
        goto LABEL_69;
      }
    }
  }

  v20 = MEMORY[0x1E69E7CC8];
  v275 = MEMORY[0x1E69E7CC8];
LABEL_69:

  v138 = 0;
  v139 = v20 + 8;
  OUTLINED_FUNCTION_4_4();
  v142 = v141 & v140;
  v144 = (v143 + 63) >> 6;
  *&v266 = MEMORY[0x1E69E7CC0];
  v145 = v275;
  v272 = v4;
  while (v142)
  {
    v146 = v142;
LABEL_76:
    v142 = (v146 - 1) & v146;
    if (*(v145 + 16))
    {
      v148 = __clz(__rbit64(v146)) | (v138 << 6);
      v149 = v20;
      v150 = *(v20[7] + 8 * v148);
      v151 = (v20[6] + 16 * v148);
      v152 = *v151;
      v153 = v151[1];
      v154 = v145;

      sub_1E327D33C(v152, v153);
      OUTLINED_FUNCTION_15_51();

      if (v2)
      {
        v155 = *(*(v275 + 56) + 8 * v154);

        v156 = sub_1E38ADFA0();
        v158 = *v156;
        v157 = v156[1];
        *&v282[24] = v254;
        *v282 = v155;
        sub_1E329504C(v282, &v278);

        LODWORD(v248) = swift_isUniquelyReferenced_nonNull_native();
        *&v280 = v150;
        v251 = v158;
        sub_1E327D33C(v158, v157);
        OUTLINED_FUNCTION_10_45();
        if (v85)
        {
          goto LABEL_127;
        }

        v2 = v159;
        v161 = v160;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
        v162 = &v280;
        if (sub_1E4207644())
        {
          v162 = v280;
          v163 = sub_1E327D33C(v158, v157);
          if ((v161 & 1) != (v164 & 1))
          {
            goto LABEL_135;
          }

          v2 = v163;
        }

        if (v161)
        {

          v165 = v280;
          v162 = (*(v280 + 56) + 32 * v2);
          __swift_destroy_boxed_opaque_existential_1(v162);
          sub_1E329504C(&v278, v162);
        }

        else
        {
          v165 = v280;
          OUTLINED_FUNCTION_3_69(v280 + 8 * (v2 >> 6));
          v166 = (v165[6] + 16 * v2);
          *v166 = v251;
          v166[1] = v157;
          sub_1E329504C(&v278, (v165[7] + 32 * v2));
          v167 = v165[2];
          v85 = __OFADD__(v167, 1);
          v168 = v167 + 1;
          if (v85)
          {
            goto LABEL_128;
          }

          v165[2] = v168;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v172 = OUTLINED_FUNCTION_27();
          *&v266 = sub_1E39239C8(v172, v173, v174, v175);
        }

        v169 = *(v266 + 16);
        OUTLINED_FUNCTION_20_41();
        if (v171)
        {
          v176 = OUTLINED_FUNCTION_1_12(v170);
          v179 = sub_1E39239C8(v176, v177, v178, v266);
          v145 = v275;
          *&v266 = v179;
        }

        *(v266 + 16) = v162;
        *(v266 + 8 * v169 + 32) = v165;
      }

      else
      {

        v145 = v275;
      }

      v20 = v149;
    }
  }

  while (1)
  {
    v147 = v138 + 1;
    if (__OFADD__(v138, 1))
    {
      break;
    }

    if (v147 >= v144)
    {

      v180 = *(v266 + 16);
      if (v180)
      {
        type metadata accessor for LibMediaEntityFactory();
        v181 = MEMORY[0x1E69E7CC0];
        v182 = v266 + 32;
        do
        {

          sub_1E3B46CE8(v183, 128, &v278);

          if (*(&v279[0] + 1))
          {
            v192 = OUTLINED_FUNCTION_7_74(v184, v185, v186, v187, v188, v189, v190, v191, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v272, v275, v278);
            sub_1E3251BE8(v192, v193);
            sub_1E327F454(v282, &v278);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v196 = OUTLINED_FUNCTION_27();
              v181 = sub_1E3923890(v196, v197, v198, v181);
            }

            v195 = v181[2];
            v194 = v181[3];
            if (v195 >= v194 >> 1)
            {
              v199 = OUTLINED_FUNCTION_35(v194);
              v181 = sub_1E3923890(v199, v195 + 1, 1, v181);
            }

            __swift_destroy_boxed_opaque_existential_1(v282);
            v181[2] = v195 + 1;
            sub_1E3251BE8(&v278, &v181[5 * v195 + 4]);
          }

          else
          {
            sub_1E325F748(&v278, &qword_1ECF28EB8, &unk_1E4298890);
          }

          v182 += 8;
          --v180;
        }

        while (v180);
      }

      else
      {
        v181 = MEMORY[0x1E69E7CC0];
      }

      v200 = OUTLINED_FUNCTION_14_56();
      sub_1E3277E60(v200, v201, v263, v202);
      if (*&v282[24])
      {
        OUTLINED_FUNCTION_7_74(v203, v204, v205, MEMORY[0x1E69E6158], v206, v207, v208, v209, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v272, v275, v278);
        v210 = swift_dynamicCast();
        if (v210)
        {
          v211 = v278;
        }

        else
        {
          v211 = 0;
        }

        if (v210)
        {
          v212 = *(&v278 + 1);
        }

        else
        {
          v212 = 0;
        }

        v213 = v260;
      }

      else
      {
        sub_1E325F748(v282, &unk_1ECF296E0, &unk_1E4298030);
        v211 = 0;
        v212 = 0;
        v213 = v260;
      }

      sub_1E3277E60(1635018093, 0xE400000000000000, v263, v282);

      if (*&v282[24])
      {
        OUTLINED_FUNCTION_7_74(v214, v215, v216, v217, v218, v219, v220, v221, v236, v239, v242, v245, v248, v251, v254, v257, v260, v263, v266, *(&v266 + 1), v272, v275, v278);
        if (swift_dynamicCast())
        {
          v222 = v278;
          if (v278)
          {
            v223 = OUTLINED_FUNCTION_16_42();
            sub_1E3277E60(v223, 0xE500000000000000, v222, v282);

            if (*&v282[24])
            {
              OUTLINED_FUNCTION_7_74(v224, v225, v226, MEMORY[0x1E69E6530], v227, v228, v229, v230, v237, v240, v243, v246, v249, v252, v255, v258, v261, v264, v267, v269, v273, v277, v278);
              v231 = swift_dynamicCast();
              if (v231)
              {
                v232 = v278;
              }

              else
              {
                v232 = 0;
              }

              v233 = v231 ^ 1;
              goto LABEL_125;
            }

LABEL_124:
            sub_1E325F748(v282, &unk_1ECF296E0, &unk_1E4298030);
            v232 = 0;
            v233 = 1;
LABEL_125:
            sub_1E3DAF2DC(v181, v232, v233, v211, v212, &v278);
            v234 = v278;
            *v282 = v278;
            *&v282[16] = LOBYTE(v279[0]);
            *&v282[24] = *(v279 + 8);
            v283 = 0;
            v213(v282);
            v281 = v234;
            sub_1E325F748(&v281, &qword_1ECF2E118, &qword_1E42AB340);
            v280 = *(v279 + 8);
            sub_1E325F748(&v280, &qword_1ECF3D960, &unk_1E4298000);
          }
        }
      }

      else
      {
        sub_1E325F748(v282, &unk_1ECF296E0, &unk_1E4298030);
      }

      memset(v282, 0, 32);
      goto LABEL_124;
    }

    v146 = v139[v147];
    ++v138;
    if (v146)
    {
      v138 = v147;
      goto LABEL_76;
    }
  }

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
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

double sub_1E3922D3C(void *a1, void (*a2)(uint64_t, uint64_t))
{
  if ([a1 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v72 = 0u;
    v73 = 0u;
  }

  v65 = v72;
  v66 = v73;
  if (!*(&v73 + 1))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_35_21(v71, &v65, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_32_28(0x746C75736572, v3, v4, v5, v6, v7, v8, v9, v46, v48, v51, v53, v56, v59, v62, v64, v65);

  if (!*(&v66 + 1))
  {
LABEL_17:
    sub_1E325F748(&v65, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_18;
  }

  v10 = OUTLINED_FUNCTION_13_58();
  if ((OUTLINED_FUNCTION_35_21(v10, v11, v12) & 1) == 0)
  {
LABEL_18:
    a2(4, 1);
    return result;
  }

  v20 = v72;
  OUTLINED_FUNCTION_32_28(0x7265626D656DLL, v13, v14, v15, v16, v17, v18, v19, v47, v49, v52, v54, v57, v60, v63, v64, v65);
  if (!*(&v66 + 1))
  {

    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_13_58();
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_18;
  }

  v21 = v72;
  sub_1E3277E60(25965, 0xE200000000000000, v20, &v65);

  if (*(&v66 + 1))
  {
    OUTLINED_FUNCTION_13_58();
    v22 = swift_dynamicCast();
    v23 = v72;
    if (!v22)
    {
      v23 = 0;
    }

    v58 = v23;
    if (v22)
    {
      v24 = *(&v72 + 1);
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v65, &unk_1ECF296E0, &unk_1E4298030);
    v58 = 0;
    v24 = 0;
  }

  v26 = [objc_opt_self() isVision];
  v27 = *(v21 + 16);
  if (v27)
  {
    v55 = v26 ^ 1;
    v61 = MEMORY[0x1E69E7CC0];
    v28 = 32;
    v50 = v24;
    do
    {

      sub_1E3BEEE08(v29, &v65);
      v30 = *(&v65 + 1);
      if (*(&v65 + 1))
      {
        v31 = v65;
        v32 = v69;
        v72 = v66;
        v73 = v67;
        v74 = v68;
        v71[0] = *v70;
        *(v71 + 15) = *&v70[15];
        if (v24 && (v65 == v58 ? (v33 = *(&v65 + 1) == v24) : (v33 = 0), v33 || (sub_1E42079A4() & 1) != 0) || ((v32 | v55) & 1) == 0)
        {
          sub_1E325F748(&v65, &qword_1ECF2E130, &unk_1E42AB360);
        }

        else
        {
          v34 = v61;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = OUTLINED_FUNCTION_27();
            v34 = sub_1E3923AF8(v41, v42, v43, v61);
          }

          v36 = *(v34 + 2);
          v35 = *(v34 + 3);
          v61 = v34;
          if (v36 >= v35 >> 1)
          {
            v44 = OUTLINED_FUNCTION_35(v35);
            v61 = sub_1E3923AF8(v44, v36 + 1, 1, v34);
          }

          *(v61 + 2) = v36 + 1;
          v37 = &v61[88 * v36];
          *(v37 + 4) = v31;
          *(v37 + 5) = v30;
          v39 = v73;
          v38 = v74;
          *(v37 + 3) = v72;
          *(v37 + 4) = v39;
          *(v37 + 5) = v38;
          v37[96] = v32;
          v40 = v71[0];
          *(v37 + 14) = *(v71 + 15);
          *(v37 + 97) = v40;
          v24 = v50;
        }
      }

      v28 += 8;
      --v27;
    }

    while (v27);

    v45 = v61;
  }

  else
  {

    v45 = MEMORY[0x1E69E7CC0];
  }

  v64 = v45;

  sub_1E3924158(&v64);

  a2(v64, 0);

  return result;
}

char *sub_1E3923128(void *a1)
{
  if ([a1 object])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v151 = 0u;
    v152 = 0u;
  }

  v155 = v151;
  v156 = v152;
  if (!*(&v152 + 1))
  {
    goto LABEL_36;
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_12_48(&v147, v2, v3, v1) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v147;
  v5 = OUTLINED_FUNCTION_5_70();
  sub_1E3277E60(v5, v6, v4, v7);

  if (!*(&v156 + 1))
  {
LABEL_36:
    sub_1E325F748(&v155, &unk_1ECF296E0, &unk_1E4298030);
    return MEMORY[0x1E69E7CC0];
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((OUTLINED_FUNCTION_12_48(&v151, v9, v10, v8) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v11 = v151;
  v12 = *(v151 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
    v137 = v12 - 1;
    v135 = xmmword_1E4297BE0;
    while (1)
    {
      if (v13 >= v12)
      {
        goto LABEL_68;
      }

      sub_1E3BEBD6C(v15, &v151);
      v155 = v151;
      v156 = v152;
      v157 = v153;
      v158 = v154;
      v16 = *(&v151 + 1);
      if (*(&v151 + 1))
      {
        v17 = v151;
        v18 = v152;
        v159 = v153;
        v160 = v154;
        if (*(v14 + 16))
        {

          v19 = OUTLINED_FUNCTION_21_9();
          v21 = sub_1E327D33C(v19, v20);
          v23 = v22;

          if (v23)
          {
            v24 = *(*(v14 + 56) + 8 * v21);

            sub_1E39242D8(&v151, &v147);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v58 = OUTLINED_FUNCTION_27();
              v24 = sub_1E3923C10(v58, v59, v60, v24);
            }

            v26 = *(v24 + 16);
            v25 = *(v24 + 24);
            if (v26 >= v25 >> 1)
            {
              v61 = OUTLINED_FUNCTION_1_12(v25);
              v24 = sub_1E3923C10(v61, v62, v63, v24);
            }

            *(v24 + 16) = v26 + 1;
            v27 = v24 + (v26 << 6);
            *(v27 + 32) = v17;
            *(v27 + 40) = v16;
            *(v27 + 48) = v18;
            v28 = v160;
            *(v27 + 64) = v159;
            *(v27 + 80) = v28;
            swift_isUniquelyReferenced_nonNull_native();
            *&v147 = v14;
            v29 = OUTLINED_FUNCTION_21_9();
            sub_1E327D33C(v29, v30);
            OUTLINED_FUNCTION_11_53();
            if (__OFADD__(v33, v34))
            {
              goto LABEL_71;
            }

            v35 = v31;
            v36 = v32;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E140, &qword_1E42AB378);
            if (sub_1E4207644())
            {
              v37 = OUTLINED_FUNCTION_21_9();
              v39 = sub_1E327D33C(v37, v38);
              if ((v36 & 1) != (v40 & 1))
              {
                goto LABEL_74;
              }

              v35 = v39;
            }

            v14 = v147;
            if (v36)
            {
LABEL_30:
              *(*(v14 + 56) + 8 * v35) = v24;
            }

            else
            {
              OUTLINED_FUNCTION_3_69(v147 + 8 * (v35 >> 6));
              OUTLINED_FUNCTION_23_30();
              v41 = *(v14 + 16);
              v42 = __OFADD__(v41, 1);
              v43 = v41 + 1;
              if (v42)
              {
                goto LABEL_72;
              }

              *(v14 + 16) = v43;
            }

            sub_1E325F748(&v151, &qword_1ECF2E148, &unk_1E42AB380);
            goto LABEL_34;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E138, &qword_1E42AB370);
        v24 = swift_allocObject();
        *(v24 + 16) = xmmword_1E4297BE0;
        *(v24 + 32) = v17;
        *(v24 + 40) = v16;
        *(v24 + 48) = v18;
        v44 = v160;
        *(v24 + 64) = v159;
        *(v24 + 80) = v44;
        v147 = v155;
        v148 = v156;
        v149 = v157;
        v150 = v158;
        sub_1E39241C4(&v147, &v139);
        swift_isUniquelyReferenced_nonNull_native();
        v139 = v14;
        v45 = OUTLINED_FUNCTION_21_9();
        sub_1E327D33C(v45, v46);
        OUTLINED_FUNCTION_11_53();
        if (__OFADD__(v49, v50))
        {
          goto LABEL_69;
        }

        v35 = v47;
        v51 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E140, &qword_1E42AB378);
        if (sub_1E4207644())
        {
          v52 = OUTLINED_FUNCTION_21_9();
          v54 = sub_1E327D33C(v52, v53);
          if ((v51 & 1) != (v55 & 1))
          {
            goto LABEL_74;
          }

          v35 = v54;
        }

        v14 = v139;
        if (v51)
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_3_69(v139 + 8 * (v35 >> 6));
        OUTLINED_FUNCTION_23_30();

        sub_1E325F748(&v151, &qword_1ECF2E148, &unk_1E42AB380);
        v56 = *(v14 + 16);
        v42 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v42)
        {
          goto LABEL_70;
        }

        *(v14 + 16) = v57;
      }

LABEL_34:
      if (v137 == v13)
      {

        goto LABEL_41;
      }

      v12 = *(v11 + 16);
      ++v13;
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_41:
  v66 = v14 + 64;
  OUTLINED_FUNCTION_4_4();
  v69 = v68 & v67;
  v71 = (v70 + 63) >> 6;

  v80 = 0;
  v81 = MEMORY[0x1E69E7CC0];
  v64 = MEMORY[0x1E69E7CC0];
  while (v69)
  {
LABEL_47:
    v83 = __clz(__rbit64(v69));
    v69 &= v69 - 1;
    v84 = *(*(v14 + 56) + ((v80 << 9) | (8 * v83)));
    v85 = *(v84 + 16);
    if (v85 > 1)
    {
      v132 = v64;
      v134 = v71;
      *&v135 = v66;

      v93 = 32;
      v94 = v81;
      v138 = v84;
      do
      {
        v95 = *(v84 + v93 + 48);
        v97 = *(v84 + v93);
        v96 = *(v84 + v93 + 16);
        v149 = *(v84 + v93 + 32);
        v150 = v95;
        v147 = v97;
        v148 = v96;
        v98 = v97;
        sub_1E39241C4(&v147, &v139);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = OUTLINED_FUNCTION_27();
          v94 = sub_1E3740F88(v101, v102, v103, v94);
        }

        v100 = *(v94 + 2);
        v99 = *(v94 + 3);
        if (v100 >= v99 >> 1)
        {
          v104 = OUTLINED_FUNCTION_35(v99);
          v94 = sub_1E3740F88(v104, v100 + 1, 1, v94);
        }

        *(v94 + 2) = v100 + 1;
        *&v94[16 * v100 + 32] = v98;
        sub_1E3924220(&v147);
        v93 += 64;
        --v85;
        v84 = v138;
      }

      while (v85);
      *&v147 = v94;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      sub_1E3924274();
      v105 = sub_1E4205DF4();
      v107 = v106;

      if (!*(v138 + 16))
      {
        goto LABEL_73;
      }

      OUTLINED_FUNCTION_17_38(v108, v109, v110, v111, v112, v113, v114, v115, v132, v134, v135, *(&v135 + 1), v136, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);

      v116 = v148;

      sub_1E3BEBF48(v105, v107, v116, *(&v116 + 1), &v155);
      sub_1E3924220(&v147);
      v64 = v131;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = OUTLINED_FUNCTION_27();
        v64 = sub_1E3923C10(v119, v120, v121, v131);
      }

      v71 = v133;
      v66 = v135;
      v117 = *(v64 + 2);
      OUTLINED_FUNCTION_20_41();
      if (v88)
      {
        v122 = OUTLINED_FUNCTION_1_12(v118);
        v64 = sub_1E3923C10(v122, v123, v124, v64);
      }

      *(v64 + 2) = v105;
      OUTLINED_FUNCTION_27_22(&v64[64 * v117]);
      v81 = MEMORY[0x1E69E7CC0];
    }

    else if (v85)
    {
      OUTLINED_FUNCTION_17_38(v72, v73, v74, v75, v76, v77, v78, v79, v131, v133, v135, *(&v135 + 1), v136, v137, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v125 = OUTLINED_FUNCTION_27();
        v64 = sub_1E3923C10(v125, v126, v127, v64);
      }

      v86 = *(v64 + 2);
      OUTLINED_FUNCTION_20_41();
      if (v88)
      {
        v128 = OUTLINED_FUNCTION_1_12(v87);
        v72 = sub_1E3923C10(v128, v129, v130, v64);
        v64 = v72;
      }

      *(v64 + 2) = v81;
      v89 = &v64[64 * v86];
      v90 = v147;
      v91 = v148;
      v92 = v150;
      *(v89 + 4) = v149;
      *(v89 + 5) = v92;
      *(v89 + 2) = v90;
      *(v89 + 3) = v91;
    }
  }

  while (1)
  {
    v82 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v82 >= v71)
    {

      return v64;
    }

    v69 = *(v66 + 8 * v82);
    ++v80;
    if (v69)
    {
      v80 = v82;
      goto LABEL_47;
    }
  }

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
  result = sub_1E4207A74();
  __break(1u);
  return result;
}