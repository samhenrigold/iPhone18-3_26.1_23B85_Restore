unint64_t sub_2745A7B40()
{
  result = qword_280952A28;
  if (!qword_280952A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952A28);
  }

  return result;
}

unint64_t sub_2745A7B94()
{
  result = qword_280952A38;
  if (!qword_280952A38)
  {
    sub_274412734(255, &qword_280952A30, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952A38);
  }

  return result;
}

id sub_2745A7BFC(void *a1, uint64_t a2)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = *(v4 - 8);
    v8 = MEMORY[0x28223BE20](v6);
    v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = sub_27463C69C();
    (*(v7 + 8))(v10, v4);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v11 = 0;
  }

  v12 = [v2 initWithTarget:v11 action:a2];
  swift_unknownObjectRelease();
  return v12;
}

uint64_t sub_2745A7D40(uint64_t a1)
{
  v2 = v1;
  v3 = sub_274534D60(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v11 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AC0, &unk_27465C520);
  sub_27463C4CC();

  v6 = *(*(v11 + 56) + 8 * v5);
  type metadata accessor for WFEditorItem();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952678, &unk_27465C0C0);
  OUTLINED_FUNCTION_10_28();
  sub_2745A8678(v7, v8, v9, &protocol conformance descriptor for WFEditorItem);
  sub_27463C4EC();
  *v2 = v11;
  return v6;
}

uint64_t sub_2745A7E4C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v19 = sub_274534D60(a1);
    if (v20)
    {
      v21 = v19;
      swift_isUniquelyReferenced_nonNull_native();
      v23 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952A98, &qword_27465C510);
      sub_27463C4CC();
      v12 = v23;

      v17 = *(*(v23 + 56) + 8 * v21);
      type metadata accessor for WFEditorItem();
      type metadata accessor for WFEditorCell();
      sub_2745A8678(&qword_28094BDF8, v22, type metadata accessor for WFEditorItem, &protocol conformance descriptor for WFEditorItem);
      sub_27463C4EC();
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_27463C53C();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_27463C27C();
  sub_2745FBB18(v5, v7, v8, v9, v10);
  v12 = v11;

  v13 = sub_274534D60(a1);
  v15 = v14;

  if (v15)
  {

    v17 = *(*(v12 + 56) + 8 * v13);
    type metadata accessor for WFEditorItem();
    type metadata accessor for WFEditorCell();
    sub_2745A8678(&qword_28094BDF8, v18, type metadata accessor for WFEditorItem, &protocol conformance descriptor for WFEditorItem);
    sub_27463C4EC();

LABEL_10:
    *v2 = v12;
    return v17;
  }

  __break(1u);
  return result;
}

void (*sub_2745A806C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_2745A8380(v6);
  v6[9] = sub_2745A8164(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2745A8104;
}

void sub_2745A8104(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2745A8164(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v9;
  v9[2] = a3;
  v9[3] = v4;
  v9[1] = a2;
  v10 = *v4;
  v11 = sub_274534C48(a2, a3);
  *(v9 + 40) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AA0, &qword_27465C518);
  if (sub_27463C4CC())
  {
    v15 = sub_274534C48(a2, a3);
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_27463C71C();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[4] = v13;
  if (v14)
  {
    v17 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v17 = 0;
  }

  *v9 = v17;
  return sub_2745A82A4;
}

void sub_2745A82A4(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_2745FCB98(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_2744FB18C(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952670, &unk_27465C4F0);
    sub_27463C4EC();
  }

  free(v1);
}

uint64_t (*sub_2745A8380(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2745A83A8;
}

uint64_t sub_2745A83B4(unint64_t *a1, uint64_t a2)
{
  v5 = *a1;

  result = sub_274595AC0(v5, a2);
  v8 = result;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    v8 = sub_274453594();
LABEL_36:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    while (1)
    {
      if (v5 >> 62)
      {
        result = sub_27463C27C();
      }

      else
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == result)
      {
        goto LABEL_36;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x277C58B20](v9, v5);
        result = swift_unknownObjectRelease();
        if (v16 != a2)
        {
          if (v8 != v9)
          {
            v12 = MEMORY[0x277C58B20](v8, v5);
            v11 = MEMORY[0x277C58B20](v9, v5);
            goto LABEL_16;
          }

LABEL_26:
          v15 = __OFADD__(v8++, 1);
          if (v15)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_38:
          __break(1u);
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
          break;
        }

        v10 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v10)
        {
          goto LABEL_38;
        }

        v11 = *(v5 + 32 + 8 * v9);
        if (v11 != a2)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v10)
            {
              goto LABEL_42;
            }

            v12 = *(v5 + 32 + 8 * v8);

LABEL_16:
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
            {
              v5 = sub_27453BA6C();
              v13 = (v5 >> 62) & 1;
            }

            else
            {
              LODWORD(v13) = 0;
            }

            v14 = v5 & 0xFFFFFFFFFFFFFF8;
            *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v11;

            if ((v5 & 0x8000000000000000) != 0 || v13)
            {
              result = sub_27453BA6C();
              v5 = result;
              v14 = result & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v14 + 16))
            {
              goto LABEL_43;
            }

            *(v14 + 8 * v9 + 32) = v12;

            *a1 = v5;
          }

          goto LABEL_26;
        }
      }

      v15 = __OFADD__(v9++, 1);
      if (v15)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_2745A85DC(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_27463B7FC();

  [a2 *a3];
}

uint64_t sub_2745A8678(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2745A86E8(void *a1)
{
  v1 = [a1 name];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_27463B6AC();

  return v3;
}

uint64_t sub_2745A874C(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_27463C27C();
  }

  else
  {
    return *(a1 + 16);
  }
}

double block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_2745A87F4(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t objectdestroy_142Tm()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t objectdestroy_133Tm()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2745A8BE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  [v1 removeFromSuperview];
  return v2(v1);
}

id OUTLINED_FUNCTION_9_22()
{
  v4 = *(v1 + 280);

  return sub_2745FB6C4(v0, v2, v4, 1.0);
}

double OUTLINED_FUNCTION_19_15(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_20_16(uint64_t a1)
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_39_8()
{

  swift_endAccess();
  return result;
}

double OUTLINED_FUNCTION_44_5(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

void OUTLINED_FUNCTION_45_5()
{

  sub_27446ECD4(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_46_6(uint64_t a1)
{

  return sub_27463BF7C();
}

uint64_t OUTLINED_FUNCTION_49_4(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_27463C56C();
}

double OUTLINED_FUNCTION_51_4(double a1, double a2)
{
  result = v3 - (v4 + a2);
  **(v2 + 184) = result;
  return result;
}

id OUTLINED_FUNCTION_56_1()
{
  v4 = *(v0 + v2);

  return [v4 (v1 + 2168)];
}

CGFloat OUTLINED_FUNCTION_72_2()
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v8 = v1;

  return CGRectGetMidY(*&v5);
}

id OUTLINED_FUNCTION_73_2()
{

  return [v1 (v0 + 1590)];
}

id OUTLINED_FUNCTION_74_1()
{

  return [v0 (v1 + 2296)];
}

uint64_t OUTLINED_FUNCTION_75_1()
{

  return sub_27463B66C();
}

id OUTLINED_FUNCTION_93_0()
{
  v4 = *(v2 - 456);

  return [v1 (v0 + 2501)];
}

id OUTLINED_FUNCTION_94(id a1, SEL a2)
{

  return [a1 a2];
}

uint64_t OUTLINED_FUNCTION_95_0(uint64_t a1)
{

  return sub_27463BF7C();
}

id OUTLINED_FUNCTION_96_0(double a1, double a2)
{
  v5 = v4 + a2;

  return [v2 setFrame_];
}

id OUTLINED_FUNCTION_97_0()
{

  return [v1 (v0 + 3832)];
}

uint64_t OUTLINED_FUNCTION_98_0()
{
  *(v0 + 424) = v1;
}

id OUTLINED_FUNCTION_99(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 384);

  return [v4 a2];
}

id OUTLINED_FUNCTION_100()
{

  return [v1 (v0 + 3192)];
}

id sub_2745A9480(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_27463B66C();

  v4 = [v2 initWithString_];

  return v4;
}

id DrawerAction.attributedDescription.getter()
{
  v0 = sub_27463819C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v74 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2746381BC();
  v5 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  v74 = v4;
  v6 = *(v4 + 16);
  if (v6)
  {
    v85 = objc_opt_self();
    v8 = *(v1 + 16);
    v7 = v1 + 16;
    v79 = v8;
    v9 = v74 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v78 = *MEMORY[0x277D76918];
    v84 = *MEMORY[0x277D740A8];
    v10 = *(v7 + 56);
    v75 = *MEMORY[0x277D76988];
    v80 = v7;
    v76 = (v7 - 8);
    v77 = v10;
    v82 = xmmword_274648570;
    v83 = v3;
    v81 = v0;
    v86 = v5;
    do
    {
      v79(v3, v9, v0);
      v11 = [v5 string];
      v12 = sub_27463B6AC();
      v14 = v13;

      v15 = HIBYTE(v14) & 0xF;
      if ((v14 & 0x2000000000000000) == 0)
      {
        v15 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v15)
      {
        sub_274412734(0, &qword_280953450, 0x277CCA898);
        v16 = sub_2745A9480(2570, 0xE200000000000000);
        [v5 appendAttributedString_];
      }

      sub_27463818C();
      if (v17)
      {
        v18 = sub_27463B6DC();
        v20 = v19;

        if (v20)
        {
          v21 = [v85 preferredFontForTextStyle_];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
          inited = swift_initStackObject();
          v23 = OUTLINED_FUNCTION_0_44(inited);
          *(inited + 64) = sub_274412734(v23, &qword_280952AC8, 0x277D74300);
          *(inited + 40) = v21;
          type metadata accessor for Key(0);
          sub_2744D0860();
          v24 = v3;
          v3 = v83;
          v25 = v21;
          v26 = sub_27463B4DC();
          v87 = v18;
          v88 = v20;
          MEMORY[0x277C57EA0](10, 0xE100000000000000);
          v27 = v87;
          v28 = v88;
          v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v30 = sub_2745A9D88(v27, v28, v26);
          [v86 appendAttributedString_];
        }
      }

      v31 = sub_27463817C();
      v32 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

      v33 = [v85 preferredFontForTextStyle_];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
      v34 = swift_initStackObject();
      v35 = OUTLINED_FUNCTION_0_44(v34);
      *(v34 + 64) = sub_274412734(v35, &qword_280952AC8, 0x277D74300);
      *(v34 + 40) = v33;
      type metadata accessor for Key(0);
      sub_2744D0860();
      v36 = v3;
      v3 = v83;
      v37 = v33;
      sub_27463B4DC();
      v38 = sub_27463B4BC();

      [v32 addAttributes:v38 range:{0, objc_msgSend(v32, sel_length)}];

      v5 = v86;
      [v86 appendAttributedString_];

      v0 = v81;
      (*v76)(v3, v81);
      v9 += v77;
      --v6;
    }

    while (v6);
  }

  v39 = v5;
  v40 = [v39 string];
  v41 = sub_27463B6AC();
  v43 = v42;

  v44 = HIBYTE(v43) & 0xF;
  if ((v43 & 0x2000000000000000) == 0)
  {
    v44 = v41 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
    v45 = swift_initStackObject();
    v46 = MEMORY[0x277D740C0];
    *(v45 + 16) = xmmword_274648570;
    v47 = *v46;
    *(v45 + 32) = *v46;
    v48 = objc_opt_self();
    v49 = v47;
    v50 = [v48 labelColor];
    *(v45 + 64) = sub_274412734(0, qword_28094A770, 0x277D75348);
    *(v45 + 40) = v50;
    type metadata accessor for Key(0);
    sub_2744D0860();
    sub_27463B4DC();
    v51 = sub_27463B4BC();

    [v39 addAttributes:v51 range:{0, objc_msgSend(v39, sel_length)}];
    v52 = v39;
LABEL_19:

    return v52;
  }

  v53 = [objc_opt_self() preferredFontDescriptorWithTextStyle_];
  result = [v53 fontDescriptorWithSymbolicTraits_];
  if (result)
  {
    v55 = result;

    v56 = [objc_opt_self() fontWithDescriptor:v55 size:0.0];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
    v57 = swift_initStackObject();
    *(v57 + 16) = xmmword_2746486A0;
    v58 = *MEMORY[0x277D740A8];
    *(v57 + 32) = *MEMORY[0x277D740A8];
    v59 = sub_274412734(0, &qword_280952AC8, 0x277D74300);
    *(v57 + 40) = v56;
    v60 = *MEMORY[0x277D740C0];
    *(v57 + 64) = v59;
    *(v57 + 72) = v60;
    v61 = objc_opt_self();
    v62 = v58;
    v51 = v56;
    v63 = v60;
    v64 = [v61 labelColor];
    *(v57 + 104) = sub_274412734(0, qword_28094A770, 0x277D75348);
    *(v57 + 80) = v64;
    type metadata accessor for Key(0);
    sub_2744D0860();
    v65 = sub_27463B4DC();
    sub_27463B70C("No description available.", 25);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v66 = qword_28094BB00;
    v67 = sub_27463B66C();
    v68 = sub_27463B66C();

    v69 = [v66 localizedStringForKey:v67 value:v68 table:0];

    v70 = sub_27463B6AC();
    v72 = v71;

    v73 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v52 = sub_2745A9D88(v70, v72, v65);

    v39 = v53;
    goto LABEL_19;
  }

  __break(1u);
  return result;
}

id sub_2745A9D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_27463B66C();

  if (a3)
  {
    type metadata accessor for Key(0);
    sub_2744D0860();
    v6 = sub_27463B4BC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 initWithString:v5 attributes:v6];

  return v7;
}

uint64_t OUTLINED_FUNCTION_0_44(uint64_t a1)
{
  *(a1 + 16) = *(v1 + 64);
  *(a1 + 32) = *(v1 + 88);
  return 0;
}

uint64_t type metadata accessor for VariableConfigurationSheet(uint64_t a1)
{
  result = qword_280952AD0;
  if (!qword_280952AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2745A9EBC(uint64_t a1)
{
  sub_274412734(319, &qword_280950DE8, off_279ED93B0);
  if (v1 <= 0x3F)
  {
    sub_274481024(319);
    if (v2 <= 0x3F)
    {
      sub_274458288(319, &qword_28094BBC8, &unk_28094A210, qword_27464FBA0);
      if (v3 <= 0x3F)
      {
        sub_274458288(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60);
        if (v4 <= 0x3F)
        {
          sub_2745A9FC8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2745A9FC8()
{
  if (!qword_280952AE0)
  {
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280952AE0);
    }
  }
}

uint64_t sub_2745AA044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

char *sub_2745AA098()
{
  objc_opt_self();
  OUTLINED_FUNCTION_21_2();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    return [v1 action];
  }

  objc_opt_self();
  OUTLINED_FUNCTION_21_2();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v3 = result;
    v4 = v0;
    v5 = [v3 variableProvider];
    if (v5)
    {
      v6 = v5;
      swift_unknownObjectRetain();
      v7 = [v3 name];
      if (!v7)
      {
        sub_27463B6AC();
        v7 = sub_27463B66C();
      }

      v8 = [v6 actionsProvidingVariableName_];

      swift_unknownObjectRelease();
      if (v8)
      {
        sub_274412734(0, &qword_28094E040, 0x277D7C098);
        OUTLINED_FUNCTION_54_1();
        v9 = sub_27463B81C();

        v10 = sub_27455C158(v9);

        swift_unknownObjectRelease();

        return v10;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  return result;
}

uint64_t sub_2745AA1FC@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8, &qword_27465C8B0);
  MEMORY[0x28223BE20](v3);
  v5 = &v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CF0, &qword_27465C8B8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CF8, &qword_27465C8C0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  sub_27463A0CC();
  v14 = sub_27463A32C();
  sub_2746390AC();
  v15 = &v5[*(v3 + 36)];
  *v15 = v14;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D00, &qword_27465C8C8);
  sub_2745B0558();
  sub_2745B0658();
  sub_27463A61C();
  sub_27440CB1C(v5, &qword_280952CE8, &qword_27465C8B0);
  v20 = sub_27463AB1C();
  KeyPath = swift_getKeyPath();
  v22 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D28, &unk_27465C908) + 36)];
  *v22 = KeyPath;
  v22[1] = v20;
  v23 = &v9[*(v7 + 44)];
  v24 = *(sub_27463970C() + 20);
  v25 = *MEMORY[0x277CE0118];
  v26 = sub_274639BFC();
  (*(*(v26 - 8) + 104))(&v23[v24], v25, v26);
  __asm { FMOV            V0.2D, #10.0 }

  *v23 = _Q0;
  v32 = [objc_opt_self() secondarySystemGroupedBackgroundColor];
  v33 = sub_27463AB0C();
  v34 = swift_getKeyPath();
  v35 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C5C8, &qword_27464E020) + 36)];
  *v35 = v34;
  v35[1] = v33;
  v36 = sub_27463B0CC();
  v38 = v37;
  v39 = &v23[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D30, &qword_27465C918) + 36)];
  *v39 = v36;
  v39[1] = v38;
  if (sub_27463A0DC())
  {
    v40 = 0.5;
  }

  else
  {
    v40 = 1.0;
  }

  sub_27441277C(v9, v13, &qword_280952CF0, &qword_27465C8B8);
  *&v13[*(v11 + 44)] = v40;
  sub_27463A0DC();
  v41 = sub_27463B14C();
  v42 = sub_27463A0DC();
  v43 = v47;
  sub_27441277C(v13, v47, &qword_280952CF8, &qword_27465C8C0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D38, &qword_27465C920);
  v45 = v43 + *(result + 36);
  *v45 = v41;
  *(v45 + 8) = v42 & 1;
  return result;
}

uint64_t sub_2745AA5BC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D20, &qword_27465C8D0);
  MEMORY[0x28223BE20](v4);
  v6 = __src - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = __src - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952D40, &unk_27465C928);
  MEMORY[0x28223BE20](v10);
  v12 = __src - v11;
  if (a2)
  {
    sub_274412C20(a1, __src - v11, &qword_280952CE8, &qword_27465C8B0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8, &qword_27465C8B0);
    sub_2745B0558();
    sub_2745B06E4();
    return sub_274639DDC();
  }

  else
  {
    sub_27463B0CC();
    sub_27463973C();
    sub_274412C20(a1, v6, &qword_280952CE8, &qword_27465C8B0);
    memcpy(&v6[*(v4 + 36)], __src, 0x70uLL);
    sub_27441277C(v6, v9, &qword_280952D20, &qword_27465C8D0);
    sub_274412C20(v9, v12, &qword_280952D20, &qword_27465C8D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CE8, &qword_27465C8B0);
    sub_2745B0558();
    sub_2745B06E4();
    sub_274639DDC();
    return sub_27440CB1C(v9, &qword_280952D20, &qword_27465C8D0);
  }
}

void sub_2745AA868(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1;
  v4 = [v3 name];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = [v3 name];
  v9 = sub_27463B6AC();
  v11 = v10;

  v12 = sub_2745AA928(v9, v11, v3);
  v14 = v13;

  *a2 = v3;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v12;
  a2[4] = v14;
}

uint64_t sub_2745AA928(uint64_t a1, uint64_t a2, id a3)
{
  v6 = [a3 name];
  v7 = sub_27463B6AC();
  v9 = v8;

  if (v7 == a1 && v9 == a2)
  {
  }

  else
  {
    v11 = sub_27463C6BC();

    if ((v11 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  if (![a3 isRenamed])
  {
    return 0;
  }

LABEL_9:

  return a1;
}

uint64_t sub_2745AA9FC()
{
  v1 = v0;
  v3 = v0[3];
  v2 = v0[4];
  v4 = sub_27463B72C();
  v5 = *v0;
  v6 = sub_2745AA098();
  v7 = v6;
  if (v4)
  {
    if (v6)
    {
      v8 = sub_27463B66C();
      [v7 setOutputName_];
    }

    v1[1] = v3;
    v1[2] = v2;
    v9 = sub_2745AA928(v3, v2, v5);
    v11 = v10;

    v1[3] = v9;
    v1[4] = v11;
  }

  else
  {
    if (v6)
    {
      [v6 setOutputName_];
    }

    v13 = [v5 name];
    v14 = sub_27463B6AC();
    v16 = v15;

    v1[1] = v14;
    v1[2] = v16;
  }

  return result;
}

uint64_t sub_2745AAB14()
{
  v1 = *v0;
  v2 = [*v0 anchor];
  v3 = [v2 variable];

  v4 = sub_2745AA098();
  if (v4)
  {

    v5 = 0;
  }

  else
  {
    v6 = [v1 anchor];
    v7 = [v6 parameter];

    LOBYTE(v6) = sub_2745AABDC();
    v5 = v6 ^ 1;
  }

  return v5 & 1;
}

id sub_2745AABDC()
{
  [v0 stateClass];
  swift_getObjCClassMetadata();
  sub_274412734(0, &unk_28094F530, 0x277D7CA30);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  return [swift_getObjCClassFromMetadata() isSubclassOfClass_];
}

uint64_t sub_2745AAC48@<X0>(uint64_t a1@<X8>)
{
  v3 = [*v1 anchor];
  v4 = [v3 variable];

  v5 = [v4 icon];
  if (v5 && (v6 = [v5 hasClearBackground], v5, (v6 & 1) != 0))
  {
    v7 = MEMORY[0x277D7D6C8];
  }

  else
  {
    v7 = MEMORY[0x277D7D6D0];
  }

  v8 = *v7;
  v9 = sub_274638B7C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a1, v8, v9);
}

BOOL sub_2745AAD48()
{
  v1 = [*v0 anchor];
  v2 = [v1 variable];

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass() != 0;

  return v3;
}

uint64_t sub_2745AADC4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AE8, &qword_27465C618);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF0, &qword_27465C620);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF8, &qword_27465C628);
  sub_2745AF2B4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B28, &qword_27465C640);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B30, &qword_27465C648);
  v0 = sub_274458A14(&qword_280952B38, &qword_280952B30, &qword_27465C648);
  v4 = OUTLINED_FUNCTION_7_30(v0, v1, v2, v3);
  v12 = OUTLINED_FUNCTION_7_30(v4, v5, v6, v7);
  OUTLINED_FUNCTION_7_30(v12, v8, v9, v10);
  return sub_27463966C();
}

uint64_t sub_2745AAF34(id *a1)
{
  v2 = type metadata accessor for VariableConfigurationSheet(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AF0, &qword_27465C620);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  *v8 = sub_274639C5C();
  *(v8 + 1) = 0;
  v8[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B40, &qword_27465C650);
  sub_2745ABA40(a1, 1);
  v9 = [*a1 anchor];
  v10 = [v9 variable];

  sub_2745AF398(a1, v5);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  sub_2745AF3FC(v5, v12 + v11);
  v13 = &v8[*(v6 + 36)];
  *v13 = v10;
  v13[1] = sub_2745AF460;
  v13[2] = v12;
  v20 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952AF8, &qword_27465C628);
  sub_2745AF2B4();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B28, &qword_27465C640);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B30, &qword_27465C648);
  v16 = sub_274458A14(&qword_280952B38, &qword_280952B30, &qword_27465C648);
  v21 = v15;
  v22 = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = v14;
  v22 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_27463AA0C();
  return sub_27440CB1C(v8, &qword_280952AF0, &qword_27465C620);
}

uint64_t sub_2745AB224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15[1] = a2;
  v3 = sub_274639EBC();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B30, &qword_27465C648);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - v6;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B28, &qword_27465C640);
  v8 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v10 = v15 - v9;
  sub_274639E8C();
  v15[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B48, &qword_27465C658);
  sub_274458A14(&qword_280952B50, &qword_280952B48, &qword_27465C658);
  sub_27463925C();
  v11 = sub_274458A14(&qword_280952B38, &qword_280952B30, &qword_27465C648);
  sub_27463958C();
  (*(v5 + 8))(v7, v4);
  v15[6] = v4;
  v15[7] = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v13 = v15[0];
  MEMORY[0x277C56680](v10, v15[0], OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v13);
}

uint64_t sub_2745AB4E8@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B58, &qword_27465C660);
  return sub_2745AB540(a1, a2 + *(v4 + 44));
}

uint64_t sub_2745AB540@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_274638B7C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_274638B6C();
  v6 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v8 = (&v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_274638B8C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B60, &qword_27465C668);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v18 = &v61 - v17;
  v19 = [*a1 anchor];
  v20 = [v19 variable];

  v21 = [v20 icon];
  if (v21)
  {
    __asm { FMOV            V0.2D, #29.0 }

    *v8 = _Q0;
    (*(v6 + 104))(v8, *MEMORY[0x277D7D690], v61);
    sub_2745AAC48(v5);
    sub_274638B9C();
    (*(v10 + 32))(v18, v12, v9);
    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v62 = v18;
  __swift_storeEnumTagSinglePayload(v18, v27, 1, v9);
  v28 = a1 + *(type metadata accessor for VariableConfigurationSheet(0) + 32);
  v29 = *v28;
  v30 = *(v28 + 1);
  v32 = *(v28 + 4);
  v31 = *(v28 + 5);
  v68 = v29;
  v69 = v30;
  v70 = v32;
  v71 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68, &qword_27465C670);
  sub_27463ACEC();

  v33 = v66;
  v34 = v67;

  *&v68 = v33;
  *(&v68 + 1) = v34;
  sub_274412BBC();
  v35 = sub_27463A53C();
  v37 = v36;
  v39 = v38;
  sub_27463A41C();
  v40 = sub_27463A50C();
  v42 = v41;
  v44 = v43;

  sub_274412C10(v35, v37, v39 & 1);

  sub_27463A3FC();
  v45 = sub_27463A4CC();
  v47 = v46;
  v49 = v48;
  sub_274412C10(v40, v42, v44 & 1);

  sub_27463ABBC();
  v50 = sub_27463A4DC();
  v52 = v51;
  LOBYTE(v42) = v53;
  v55 = v54;

  sub_274412C10(v45, v47, v49 & 1);

  v57 = v62;
  v56 = v63;
  sub_274412C20(v62, v63, &qword_280952B60, &qword_27465C668);
  v58 = v64;
  sub_274412C20(v56, v64, &qword_280952B60, &qword_27465C668);
  v59 = v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B70, &qword_27465C678) + 48);
  *v59 = v50;
  *(v59 + 8) = v52;
  *(v59 + 16) = v42 & 1;
  *(v59 + 24) = v55;
  *(v59 + 32) = 1;
  sub_27440B094(v50, v52, v42 & 1);

  sub_27440CB1C(v57, &qword_280952B60, &qword_27465C668);
  sub_274412C10(v50, v52, v42 & 1);

  return sub_27440CB1C(v56, &qword_280952B60, &qword_27465C668);
}

uint64_t sub_2745ABA40(uint64_t a1, char a2)
{
  v4 = sub_274639F1C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B78, &qword_27465C680);
  MEMORY[0x28223BE20](v8);
  v10 = &v14[-v9];
  v15 = a1;
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B80, &qword_27465C688);
  sub_274458A14(&qword_280952B88, &qword_280952B80, &qword_27465C688);
  sub_27463A48C();
  KeyPath = swift_getKeyPath();
  v12 = &v10[*(v8 + 36)];
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  v12[16] = 0;
  sub_274639F0C();
  sub_2745AF4E4();
  sub_27463AAAC();
  (*(v5 + 8))(v7, v4);
  return sub_27440CB1C(v10, &qword_280952B78, &qword_27465C680);
}

uint64_t sub_2745ABC50@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v6 = type metadata accessor for VariableConfigurationSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_274638B1C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D7D458], v9, v11);
  sub_2745AF398(a1, &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = swift_allocObject();
  sub_2745AF3FC(&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14);
  *(v15 + v14 + v8) = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B80, &qword_27465C688);
  v17 = *(v16 + 56);
  (*(v10 + 32))(&a3[v17], v13, v9);
  result = __swift_storeEnumTagSinglePayload(&a3[v17], 0, 1, v9);
  a3[*(v16 + 60)] = 0;
  *a3 = sub_2745AF5C8;
  *(a3 + 1) = v15;
  return result;
}

uint64_t sub_2745ABE58@<X0>(id *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v68) = a2;
  v71 = a3;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BB8, &qword_27465C6D0);
  MEMORY[0x28223BE20](v69);
  v66 = (&v65 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BC0, &qword_27465C6D8);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v65 - v8;
  v9 = type metadata accessor for VariableConfigurationSheet(0);
  v74 = *(v9 - 8);
  v10 = *(v74 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_274638B1C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BC8, &qword_27465C6E0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v65 - v17);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BD0, &qword_27465C6E8);
  MEMORY[0x28223BE20](v19 - 8);
  v70 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v65 - v22;
  v24 = a1;
  v25 = sub_2745AAD48();
  v73 = v23;
  v67 = v10;
  if (v25)
  {
    (*(v13 + 104))(v15, *MEMORY[0x277D7D450], v12);
    sub_2745AF398(a1, &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = a1;
    v27 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v28 = swift_allocObject();
    sub_2745AF3FC(&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = *(v16 + 56);
    (*(v13 + 32))(v18 + v29, v15, v12);
    v30 = v18 + v29;
    v24 = v26;
    v23 = v73;
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v12);
    *(v18 + *(v16 + 60)) = 0;
    *v18 = sub_2745AF928;
    v18[1] = v28;
    sub_27441277C(v18, v23, &qword_280952BC8, &qword_27465C6E0);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = 1;
  __swift_storeEnumTagSinglePayload(v23, v31, 1, v16);
  v33 = v69;
  if (v68)
  {
    sub_2745AF398(v24, &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = (*(v74 + 80) + 16) & ~*(v74 + 80);
    v35 = swift_allocObject();
    sub_2745AF3FC(&v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v35 + v34);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BE0, &qword_27465C6F8);
    v37 = v66;
    __swift_storeEnumTagSinglePayload(v66 + *(v36 + 56), 1, 1, v12);
    *(v37 + *(v36 + 60)) = 0;
    *v37 = sub_2745AF910;
    v37[1] = v35;
    v76 = sub_27463AB7C();
    v38 = sub_27463AE9C();
    *(v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BE8, &qword_27465C700) + 36)) = v38;
    v39 = v37 + *(v33 + 36);
    v39[32] = 0;
    *v39 = 0u;
    *(v39 + 1) = 0u;
    sub_27441277C(v37, v75, &qword_280952BB8, &qword_27465C6D0);
    v32 = 0;
  }

  __swift_storeEnumTagSinglePayload(v75, v32, 1, v33);
  sub_2745AF398(v24, v11);
  sub_27463B9CC();
  v40 = sub_27463B9BC();
  v41 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v42 = swift_allocObject();
  v43 = v24;
  v44 = MEMORY[0x277D85700];
  *(v42 + 16) = v40;
  *(v42 + 24) = v44;
  sub_2745AF3FC(v11, v42 + v41);
  sub_2745AF398(v43, v11);
  v45 = sub_27463B9BC();
  v46 = swift_allocObject();
  *(v46 + 16) = v45;
  *(v46 + 24) = v44;
  sub_2745AF3FC(v11, v46 + v41);
  sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
  sub_27463AF0C();
  v67 = v76;
  v74 = v77;
  v69 = v78;
  v47 = *v43;
  v68 = [*v43 resultType];
  v48 = [v47 anchor];
  v49 = [v48 parameter];

  v50 = [v49 localizedPrompt];
  v66 = sub_27463B6AC();
  v52 = v51;

  v53 = v73;
  v54 = v70;
  sub_274412C20(v73, v70, &qword_280952BD0, &qword_27465C6E8);
  v55 = v75;
  v56 = v72;
  sub_274412C20(v75, v72, &qword_280952BC0, &qword_27465C6D8);
  v57 = v71;
  sub_274412C20(v54, v71, &qword_280952BD0, &qword_27465C6E8);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BD8, &qword_27465C6F0);
  sub_274412C20(v56, v57 + *(v58 + 48), &qword_280952BC0, &qword_27465C6D8);
  v59 = (v57 + *(v58 + 64));
  v60 = v68;
  v61 = v74;
  *v59 = v67;
  v59[1] = v61;
  v62 = v69;
  v59[2] = v69;
  v59[3] = v60;
  v59[4] = v66;
  v59[5] = v52;

  v63 = v62;

  sub_27440CB1C(v55, &qword_280952BC0, &qword_27465C6D8);
  sub_27440CB1C(v53, &qword_280952BD0, &qword_27465C6E8);

  sub_27440CB1C(v56, &qword_280952BC0, &qword_27465C6D8);
  return sub_27440CB1C(v54, &qword_280952BD0, &qword_27465C6E8);
}

uint64_t sub_2745AC64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_27463B70C("Variable Name", 13);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v4 = qword_28094BB00;
  v5 = sub_27463B66C();
  v6 = sub_27463B66C();

  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = sub_27463B6AC();
  v10 = v9;

  *a2 = sub_274639B2C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BF0, &qword_27465C708);
  sub_2745AC78C(v8, v10, a1, (a2 + *(v11 + 44)));
}

uint64_t sub_2745AC78C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v76 = a3;
  v75 = a4;
  v7 = type metadata accessor for VariableConfigurationSheet(0);
  v8 = v7 - 8;
  v65 = *(v7 - 8);
  v64 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v62 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_27463957C();
  v71 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v61 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D688, &qword_27465C710);
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = &v52 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952BF8, &qword_27465C718) - 8;
  MEMORY[0x28223BE20](v73);
  v72 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v60 = &v52 - v14;
  v78 = a1;
  v79 = a2;
  v58 = sub_274412BBC();

  v68 = sub_27463A53C();
  v67 = v15;
  v69 = v16;
  v70 = v17;
  v91 = a1;
  v92 = a2;
  v18 = (a3 + *(v8 + 40));
  v19 = v18[1];
  v57 = *v18;
  v56 = v18[2];
  v55 = v18[3];
  v21 = v18[4];
  v20 = v18[5];
  v54 = v21;
  v53 = v20;
  v85 = v57;
  v86 = v19;
  v87 = v56;
  v88 = v55;
  v89 = v21;
  v90 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68, &qword_27465C670);
  sub_27463AD0C();
  v22 = v78;
  v23 = v79;
  v24 = v80;
  v25 = v81;
  v27 = v82;
  v26 = v83;
  v28 = v84;
  swift_getKeyPath();
  v78 = v22;
  v79 = v23;
  v80 = v24;
  v81 = v25;
  v82 = v27;
  v83 = v26;
  v84 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C00, &qword_27465C740);
  sub_27463AECC();

  v85 = v57;
  v86 = v19;
  v87 = v56;
  v88 = v55;
  v89 = v54;
  v90 = v53;
  sub_27463ACEC();
  v29 = v77;
  v30 = [v77 defaultName];
  v31 = sub_27463B6AC();
  v33 = v32;

  v85 = v31;
  v86 = v33;
  sub_27463A53C();
  v34 = v59;
  sub_27463B18C();
  v35 = v61;
  sub_27463956C();
  v36 = v62;
  sub_2745AF398(v76, v62);
  v37 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v38 = swift_allocObject();
  sub_2745AF3FC(v36, v38 + v37);
  sub_274458A14(&qword_280952FC0, &qword_28094D688, &qword_27465C710);
  v39 = v60;
  v40 = v63;
  sub_27463AA6C();

  (*(v71 + 8))(v35, v74);
  (*(v66 + 8))(v34, v40);
  sub_2745AF398(v76, v36);
  v41 = swift_allocObject();
  sub_2745AF3FC(v36, v41 + v37);
  v42 = (v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C08, &qword_27465C748) + 36));
  *v42 = 0;
  v42[1] = 0;
  v42[2] = sub_2745AF9BC;
  v42[3] = v41;
  KeyPath = swift_getKeyPath();
  v44 = v39 + *(v73 + 44);
  *v44 = KeyPath;
  *(v44 + 8) = 2;
  v45 = v72;
  sub_274412C20(v39, v72, &qword_280952BF8, &qword_27465C718);
  v46 = v75;
  v47 = v68;
  v48 = v67;
  *v75 = v68;
  v46[1] = v48;
  LOBYTE(v41) = v69 & 1;
  *(v46 + 16) = v69 & 1;
  v46[3] = v70;
  v46[4] = 0;
  *(v46 + 40) = 1;
  v49 = v46;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C10, &qword_27465C780);
  sub_274412C20(v45, v49 + *(v50 + 64), &qword_280952BF8, &qword_27465C718);
  sub_27440B094(v47, v48, v41);

  sub_27440CB1C(v39, &qword_280952BF8, &qword_27465C718);
  sub_27440CB1C(v45, &qword_280952BF8, &qword_27465C718);
  sub_274412C10(v47, v48, v41);
}

void sub_2745ACF08(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for VariableConfigurationSheet(0) + 32));

  v2 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68, &qword_27465C670);
  sub_27463ACEC();
  sub_2745AA9FC();
  sub_27463ACFC();
}

uint64_t sub_2745AD010@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*a1 anchor];
  v5 = [v4 parameter];

  LOBYTE(v4) = sub_2745AABDC();
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C18, &qword_27465C788);
  return sub_2745AD574(a1, v4 & 1, (a2 + *(v6 + 44)));
}

void sub_2745AD0BC(id *a1@<X2>, void *a2@<X8>)
{
  v3 = [*a1 anchor];
  v4 = [v3 variable];

  *a2 = v4;
}

void sub_2745AD120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for VariableConfigurationSheet(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v13 = &v36 - v12;
  v14 = *a1;
  v15 = *a4;
  [*a4 variableDidChange_];
  v16 = *(a4 + 8);
  if (v16)
  {
    v17 = v16;
    v18 = sub_27443C514();

    if (v18)
    {

      v39 = v17;
      v38 = v14;
      v19 = [v15 anchor];
      v20 = [v19 variableProvider];

      v21 = [v15 anchor];
      v37 = v7;
      v22 = v21;
      v23 = [v21 parameter];

      v24 = [v15 anchor];
      v25 = [v24 sourceView];

      v26 = [v15 anchor];
      [v26 sourceRect];

      v27 = objc_allocWithZone(WFVariableEditingAnchor);
      v28 = sub_2745AFB44(v38, v20, v23, v25);
      v29 = [v15 resultType];
      sub_2745AF398(a4, v13);
      v30 = (*(v37 + 80) + 16) & ~*(v37 + 80);
      v31 = swift_allocObject();
      sub_2745AF3FC(v13, v31 + v30);
      sub_2745AF398(a4, v9);
      v32 = swift_allocObject();
      sub_2745AF3FC(v9, v32 + v30);
      v33 = objc_allocWithZone(WFVariableEditingOptions);
      v34 = sub_2745AFA0C(v28, v29, sub_2745B0190, v31, sub_2745B03D0, v32);
      v35 = v39;
      sub_27443C58C(v34);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2745AD4E0(id *a1, uint64_t a2)
{
  sub_2745AA868(*a1, &v3);
  type metadata accessor for VariableConfigurationSheet(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952B68, &qword_27465C670);
  return sub_27463ACFC();
}

uint64_t sub_2745AD574@<X0>(id *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  LODWORD(v35) = a2;
  v37 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C20, &qword_27465C790);
  MEMORY[0x28223BE20](v4 - 8);
  v36 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C28, &qword_27465C798);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v33 - v19;
  sub_2745AD960(0, 0, &v33 - v19);
  v21 = [*a1 anchor];
  v22 = [v21 variable];

  v23 = sub_2745AA098();
  if (v23)
  {

    sub_2745AD960(1, 0, v17);
    (*(v15 + 32))(v13, v17, v14);
    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = 1;
  __swift_storeEnumTagSinglePayload(v13, v24, 1, v14);
  if (v35)
  {
    sub_2745AD960(2, 0, v17);
    (*(v15 + 32))(v10, v17, v14);
    v25 = 0;
  }

  __swift_storeEnumTagSinglePayload(v10, v25, 1, v14);
  v26 = *(v15 + 16);
  v34 = v20;
  v26(v17, v20, v14);
  sub_274412C20(v13, v38, &qword_280952C20, &qword_27465C790);
  v27 = v36;
  sub_274412C20(v10, v36, &qword_280952C20, &qword_27465C790);
  v35 = v13;
  v28 = v37;
  v26(v37, v17, v14);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C30, &qword_27465C7A0);
  v30 = v38;
  sub_274412C20(v38, &v28[*(v29 + 48)], &qword_280952C20, &qword_27465C790);
  sub_274412C20(v27, &v28[*(v29 + 64)], &qword_280952C20, &qword_27465C790);
  sub_27440CB1C(v10, &qword_280952C20, &qword_27465C790);
  sub_27440CB1C(v35, &qword_280952C20, &qword_27465C790);
  v31 = *(v15 + 8);
  v31(v34, v14);
  sub_27440CB1C(v27, &qword_280952C20, &qword_27465C790);
  sub_27440CB1C(v30, &qword_280952C20, &qword_27465C790);
  return (v31)(v17, v14);
}

uint64_t sub_2745AD960@<X0>(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for VariableConfigurationSheet(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C38, &qword_27465C7A8);
  *&v11 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v57 = a3;
  v58 = v12;
  v55 = &v43[-v13];
  v56 = v14;
  v53 = a1;
  v54 = a2;
  v51 = v9;
  v52 = &v43[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v50 = v8;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_27463B70C("Reveal Action (Variable Editor)", 31, v11);
      sub_27463B70C("Reveal Action", 13);
      if (qword_2809492C0 == -1)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_27463B70C("Return (Variable Editor)", 24, v11);
      sub_27463B70C("Return", 6);
      if (qword_2809492C0 == -1)
      {
LABEL_9:
        v19 = qword_28094BB00;
        v16 = sub_27463B66C();

        v17 = sub_27463B66C();

        v18 = [v19 localizedStringForKey:v16 value:v17 table:0];
        goto LABEL_10;
      }
    }

    swift_once();
    goto LABEL_9;
  }

  sub_27463B70C("Clear Variable (Variable Editor)", 32, v11);
  sub_27463B70C("Clear Variable", 14);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v15 = qword_28094BB00;
  v16 = sub_27463B66C();

  v17 = sub_27463B66C();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];
LABEL_10:
  v20 = v18;

  v21 = sub_27463B6AC();
  v23 = v22;

  v49 = sub_27463AC2C();
  v48 = sub_27463A41C();
  KeyPath = swift_getKeyPath();
  v60 = v21;
  v61 = v23;
  sub_274412BBC();
  v24 = sub_27463A53C();
  v26 = v25;
  v28 = v27;
  if (sub_2745AAB14())
  {
    sub_27463A3AC();
  }

  else
  {
    sub_27463A45C();
  }

  v29 = sub_27463A50C();
  v45 = v30;
  v46 = v29;
  v31 = v30;
  v44 = v32;
  v34 = v33;

  sub_274412C10(v24, v26, v28 & 1);

  v35 = v52;
  sub_2745AF398(v3, v52);
  v36 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v37 = v36 + v51;
  v38 = swift_allocObject();
  v39 = sub_2745AF3FC(v35, v38 + v36);
  *(v38 + v37) = v53;
  v60 = v49;
  v61 = KeyPath;
  v62 = v48;
  MEMORY[0x28223BE20](v39);
  *&v43[-48] = v3;
  *&v43[-40] = v29;
  *&v43[-32] = v31;
  LOBYTE(v29) = v44 & 1;
  v43[-24] = v44 & 1;
  *&v43[-16] = v34;
  *&v43[-8] = &v60;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C40, &qword_27465C7E0);
  sub_2745AFE38();
  v40 = v55;
  sub_27463AD5C();

  v59 = v54 & 1;
  sub_274458A14(&qword_280952C90, &qword_280952C38, &qword_27465C7A8);
  sub_2745B0034();
  v41 = v58;
  sub_27463A6AC();
  sub_274412C10(v46, v45, v29);

  return (*(v56 + 8))(v40, v41);
}

void sub_2745ADFFC(char a1)
{
  v2 = v1;
  v4 = sub_2746396DC();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v17[-v7];
  v9 = *v2;
  if (!a1)
  {
    [*v2 variableDidChange_];
LABEL_8:
    type metadata accessor for VariableConfigurationSheet(0);
    sub_2744C68E8();
    MEMORY[0x277C575F0](v5);
    sub_2746396CC();
    sub_27463AEBC();
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    [*v2 finishEditingReturningToKeyboard_];
    goto LABEL_8;
  }

  v10 = [*v2 anchor];
  v11 = [v10 variable];

  v12 = sub_2745AA098();
  if (!v12)
  {
    return;
  }

  MEMORY[0x28223BE20](v13);
  *&v17[-16] = v2;
  *&v17[-8] = v12;
  sub_27463B13C();
  sub_27463946C();

  v14 = [objc_opt_self() systemShortcutsUserDefaults];
  v15 = sub_27463B66C();
  v16 = [v14 BOOLForKey_];

  if (!v16)
  {

    return;
  }

  [v9 finishEditingReturningToKeyboard_];
  type metadata accessor for VariableConfigurationSheet(0);
  sub_2744C68E8();
  MEMORY[0x277C575F0](v5);
  sub_2746396CC();
  sub_27463AEBC();

LABEL_9:
  sub_27440CB1C(v8, &unk_28094A210, qword_27464FBA0);
}

void *sub_2745AE374@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, void *a6@<X8>)
{
  if (sub_2745AAB14())
  {
    sub_27440B094(a1, a2, a3 & 1);

    sub_27440B094(a1, a2, a3 & 1);

    sub_274412C10(a1, a2, a3 & 1);
  }

  else
  {

    v10 = a3 & 1;
    sub_27440B094(a1, a2, v10);

    sub_27440B094(a1, a2, v10);

    sub_274412C10(a1, a2, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CB8, &qword_27465C828);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952CC0, &qword_27465C830);
  sub_274458A14(&qword_280952CC8, &qword_280952CB8, &qword_27465C828);
  sub_274458A14(&qword_280952CD0, &qword_280952CC0, &qword_27465C830);
  sub_274639DDC();
  return memcpy(a6, __src, 0x49uLL);
}

uint64_t sub_2745AE5EC@<X0>(void (*a1)(void *__return_ptr)@<X0>, void *a3@<X8>)
{
  if (sub_2745AAB14())
  {
    v5 = sub_274639B2C();
    v46 = 0;
    a1(__src);
    memcpy(__dst, __src, 0x49uLL);
    memcpy(v54, __src, 0x49uLL);
    sub_274412C20(__dst, v64, &qword_280952CA8, &unk_27465C810);
    sub_27440CB1C(v54, &qword_280952CA8, &unk_27465C810);
    memcpy(&v45[7], __dst, 0x49uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000, &qword_27465BD40);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_2746486A0;
    v7 = sub_27463A37C();
    *(v6 + 32) = v7;
    v8 = sub_27463A35C();
    *(v6 + 33) = v8;
    v9 = sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v7)
    {
      v9 = sub_27463A36C();
    }

    sub_27463A36C();
    if (sub_27463A36C() != v8)
    {
      v9 = sub_27463A36C();
    }

    v41[0] = v5;
    v41[1] = 0x4020000000000000;
    v10 = v46;
    LOBYTE(v41[2]) = v46;
    memcpy(&v41[2] + 1, v45, 0x50uLL);
    sub_2746390AC();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    memcpy(v49, v41, 0x61uLL);
    v47 = 0;
    v42[0] = v5;
    v42[1] = 0x4020000000000000;
    v43 = v10;
    memcpy(v44, v45, sizeof(v44));
    sub_274412C20(v41, __src, &qword_280952C78, &qword_27465C7F8);
    sub_27440CB1C(v42, &qword_280952C78, &qword_27465C7F8);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_2746486A0;
    v20 = sub_27463A33C();
    *(v19 + 32) = v20;
    v21 = sub_27463A34C();
    *(v19 + 33) = v21;
    v22 = sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v20)
    {
      v22 = sub_27463A36C();
    }

    sub_27463A36C();
    if (sub_27463A36C() != v21)
    {
      v22 = sub_27463A36C();
    }

    memcpy(v34, v49, 0x68uLL);
    LOBYTE(v34[13]) = v9;
    *(&v34[13] + 1) = *v48;
    HIDWORD(v34[13]) = *&v48[3];
    v34[14] = v12;
    v34[15] = v14;
    v34[16] = v16;
    v34[17] = v18;
    v23 = v47;
    LOBYTE(v34[18]) = v47;
    sub_2746390AC();
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    memcpy(v52, v34, 0x91uLL);
    v50 = 0;
    memcpy(v35, v49, 0x68uLL);
    v35[104] = v9;
    *&v35[105] = *v48;
    *&v35[108] = *&v48[3];
    *&v35[112] = v12;
    v36 = v14;
    v37 = v16;
    v38 = v18;
    v39 = v23;
    sub_274412C20(v34, __src, &qword_280952C68, &qword_27465C7F0);
    sub_27440CB1C(v35, &qword_280952C68, &qword_27465C7F0);
    memcpy(v40, v52, 0x98uLL);
    LOBYTE(v40[19]) = v22;
    *(&v40[19] + 1) = *v51;
    HIDWORD(v40[19]) = *&v51[3];
    v40[20] = v25;
    v40[21] = v27;
    v40[22] = v29;
    v40[23] = v31;
    LOBYTE(v40[24]) = v50;
    memcpy(v55, v52, sizeof(v55));
    v56 = v22;
    *v57 = *v51;
    *&v57[3] = *&v51[3];
    v58 = v25;
    v59 = v27;
    v60 = v29;
    v61 = v31;
    v62 = v50;
    sub_274412C20(v40, __src, &qword_280952C58, &qword_27465C7E8);
    sub_27440CB1C(v55, &qword_280952C58, &qword_27465C7E8);
    memcpy(v64, v40, 0xC1uLL);
    sub_2745B00B0(v64);
    memcpy(v63, v64, 0xC2uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C58, &qword_27465C7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C88, &qword_27465C800);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88, &qword_27465C800);
  }

  else
  {
    v32 = sub_274639C5C();
    v63[0] = 0;
    sub_2745AECD8(a1, __src, 8.0);
    memcpy(v35, __src, 0x71uLL);
    memcpy(v52, __src, 0x71uLL);
    sub_274412C20(v35, v64, &qword_280952CA0, &qword_27465C808);
    sub_27440CB1C(v52, &qword_280952CA0, &qword_27465C808);
    memcpy(&v64[7], v35, 0x71uLL);
    v40[0] = v32;
    v40[1] = 0;
    LOBYTE(v40[2]) = v63[0];
    memcpy(&v40[2] + 1, v64, 0x78uLL);
    v55[0] = v32;
    v55[1] = 0;
    LOBYTE(v55[2]) = v63[0];
    memcpy(&v55[2] + 1, v64, 0x78uLL);
    sub_274412C20(v40, __src, &qword_280952C88, &qword_27465C800);
    sub_27440CB1C(v55, &qword_280952C88, &qword_27465C800);
    memcpy(v64, v40, 0x89uLL);
    sub_2745B00A4(v64);
    memcpy(v63, v64, 0xC2uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C58, &qword_27465C7E8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952C88, &qword_27465C800);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88, &qword_27465C800);
  }

  sub_274639DDC();
  memcpy(v63, __src, 0xC2uLL);
  memcpy(a3, __src, 0xC2uLL);
  memcpy(v64, __src, 0xC2uLL);
  sub_274412C20(v63, v55, &qword_280952C40, &qword_27465C7E0);
  return sub_27440CB1C(v64, &qword_280952C40, &qword_27465C7E0);
}

uint64_t sub_2745AECD8@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = sub_274639C5C();
  v8[0] = 0;
  a1(__src);
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v11, __src, 0x49uLL);
  sub_274412C20(__dst, v16, &qword_280952CA8, &unk_27465C810);
  sub_27440CB1C(v11, &qword_280952CA8, &unk_27465C810);
  memcpy(&v16[7], __dst, 0x49uLL);
  v12[0] = v6;
  *&v12[1] = a3;
  LOBYTE(v12[2]) = 0;
  memcpy(&v12[2] + 1, v16, 0x50uLL);
  v13[0] = v6;
  *&v13[1] = a3;
  v14 = 0;
  memcpy(v15, v16, sizeof(v15));
  sub_274412C20(v12, __src, &qword_280952CB0, &qword_27465C820);
  sub_27440CB1C(v13, &qword_280952CB0, &qword_27465C820);
  memcpy(__src, v12, 0x61uLL);
  v9[104] = 0;
  memcpy(v16, v12, 0x61uLL);
  memcpy(&v9[7], v12, 0x61uLL);
  *a2 = 0;
  *(a2 + 8) = 0;
  memcpy((a2 + 9), v9, 0x68uLL);
  sub_274412C20(v16, v8, &qword_280952CB0, &qword_27465C820);
  return sub_27440CB1C(__src, &qword_280952CB0, &qword_27465C820);
}

void sub_2745AEE94(void **a1, void *a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  sub_2744C6BF0();
  v13 = sub_27463969C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_27440CB1C(v12, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    *&v26 = a2;
    sub_27463B1BC();
    sub_27463968C();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v14 = a1[1];
  if (v14)
  {
    v15 = *a1;
    v16 = v14;
    v17 = a2;
    v18 = [v15 anchor];
    v19 = [v18 variableProvider];

    sub_2745AF398(a1, v9);
    v20 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v21 = swift_allocObject();
    sub_2745AF3FC(v9, v21 + v20);
    v22 = v25;
    sub_2745AF398(a1, v25);
    v23 = swift_allocObject();
    sub_2745AF3FC(v22, v23 + v20);
    *&v26 = v17;
    *(&v26 + 1) = v19;
    v27 = sub_2745B00D4;
    v28 = v21;
    v29 = sub_2745B0138;
    v30 = v23;
    v31 = 1;
    sub_27443CA58(&v26);

    v24 = v16;
    sub_27443C58C(0);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_2745AF1F0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v2 = *a1;
    v4 = v1;
    v3 = v2;
    sub_27443C58C(v2);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2745B0614(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

unint64_t sub_2745AF2B4()
{
  result = qword_280952B00;
  if (!qword_280952B00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952AF0, &qword_27465C620);
    sub_274458A14(&qword_280952B08, &qword_280952B10, &qword_27465C630);
    sub_274458A14(&qword_280952B18, &qword_280952B20, &qword_27465C638);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952B00);
  }

  return result;
}

uint64_t sub_2745AF398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745AF3FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableConfigurationSheet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745AF460(id *a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_2745AD4E0(a1, v1 + v4);
}

unint64_t sub_2745AF4E4()
{
  result = qword_280952B90;
  if (!qword_280952B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952B78, &qword_27465C680);
    sub_274458A14(&qword_280952B98, &qword_280952BA0, &qword_27465C6C0);
    sub_274458A14(&qword_280952BA8, &qword_280952BB0, &qword_27465C6C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952B90);
  }

  return result;
}

uint64_t sub_2745AF5C8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for VariableConfigurationSheet(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = *(v4 + *(v3 + 64));

  return sub_2745ABE58(v4, v5, a1);
}

void sub_2745AF658(void *a1@<X8>)
{
  v3 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v3);
  v5 = (v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  sub_2745AD0BC(v5, a1);
}

uint64_t objectdestroy_14Tm_0()
{
  type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v1 + v3;

  v5 = v1 + v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v8 + 8))(v5 + v7);
  }

  v9 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_27463969C();
    if (!OUTLINED_FUNCTION_10_29(v10))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v11 + 8))(v4 + v9, v5);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

void sub_2745AF8A0(void *a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_2745AD120(a1, v5, v6, v7);
}

uint64_t sub_2745AF940(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_30_2();

  return a1(v1 + v3);
}

void sub_2745AF9C0()
{
  v1 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();
  sub_2745ACF08(v0 + v2);
}

id sub_2745AFA0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274486F8C;
  aBlock[3] = &block_descriptor_34;
  v11 = _Block_copy(aBlock);
  v15[4] = a5;
  v15[5] = a6;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2745AA044;
  v15[3] = &block_descriptor_58_0;
  v12 = _Block_copy(v15);
  v13 = [v6 initWithAnchor:a1 resultType:a2 onChange:v11 onFinish:v12];
  _Block_release(v11);

  _Block_release(v12);

  return v13;
}

id sub_2745AFB44(void *a1, uint64_t a2, void *a3, void *a4)
{
  v8 = [v4 initWithVariable:a1 variableProvider:a2 parameter:a3 sourceView:a4 sourceRect:?];

  swift_unknownObjectRelease();
  return v8;
}

uint64_t objectdestroy_11Tm_0()
{
  type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(&v4[v6]);
  }

  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v3 + v8, 1, v9))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v3 + v8, v9);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_2745AFE38()
{
  result = qword_280952C48;
  if (!qword_280952C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C40, &qword_27465C7E0);
    sub_2745AFEF0();
    sub_274458A14(&qword_280952C80, &qword_280952C88, &qword_27465C800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C48);
  }

  return result;
}

unint64_t sub_2745AFEF0()
{
  result = qword_280952C50;
  if (!qword_280952C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C58, &qword_27465C7E8);
    sub_2745AFF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C50);
  }

  return result;
}

unint64_t sub_2745AFF7C()
{
  result = qword_280952C60;
  if (!qword_280952C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952C68, &qword_27465C7F0);
    sub_274458A14(&qword_280952C70, &qword_280952C78, &qword_27465C7F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C60);
  }

  return result;
}

unint64_t sub_2745B0034()
{
  result = qword_280952C98;
  if (!qword_280952C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952C98);
  }

  return result;
}

id sub_2745B00D4()
{
  v1 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();
  v3 = *(v0 + v2);

  return [v3 finishEditingReturningToKeyboard_];
}

void sub_2745B0138()
{
  v1 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v1);
  OUTLINED_FUNCTION_30_2();

  sub_2745AF1F0(v0 + v2);
}

id sub_2745B0190(uint64_t a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();
  v5 = *(v1 + v4);

  return [v5 variableDidChange_];
}

uint64_t objectdestroyTm_20()
{
  type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  v4 = v3 + v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
  OUTLINED_FUNCTION_54_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210, qword_27464FBA0) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(&v4[v6]);
  }

  v8 = v0[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_27463969C();
    if (!OUTLINED_FUNCTION_10_29(v9))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v10 + 8))(v3 + v8, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

id sub_2745B03D0(char a1)
{
  v3 = type metadata accessor for VariableConfigurationSheet(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();
  v5 = *(v1 + v4);

  return [v5 finishEditingReturningToKeyboard_];
}

double block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

_BYTE *storeEnumTagSinglePayload for ActionButtonStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2745B0558()
{
  result = qword_280952D08;
  if (!qword_280952D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CE8, &qword_27465C8B0);
    sub_2745B0614(&qword_28094F168, MEMORY[0x277CDE278]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D08);
  }

  return result;
}

uint64_t sub_2745B0614(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_21_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2745B0658()
{
  result = qword_280952D10;
  if (!qword_280952D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D00, &qword_27465C8C8);
    sub_2745B0558();
    sub_2745B06E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D10);
  }

  return result;
}

unint64_t sub_2745B06E4()
{
  result = qword_280952D18;
  if (!qword_280952D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D20, &qword_27465C8D0);
    sub_2745B0558();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D18);
  }

  return result;
}

unint64_t sub_2745B0770()
{
  result = qword_280952D48;
  if (!qword_280952D48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D38, &qword_27465C920);
    sub_2745B0828();
    sub_274458A14(&qword_280952D70, &qword_280952D78, &qword_27465C938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D48);
  }

  return result;
}

unint64_t sub_2745B0828()
{
  result = qword_280952D50;
  if (!qword_280952D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CF8, &qword_27465C8C0);
    sub_2745B08B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D50);
  }

  return result;
}

unint64_t sub_2745B08B4()
{
  result = qword_280952D58;
  if (!qword_280952D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952CF0, &qword_27465C8B8);
    sub_2745B096C();
    sub_274458A14(&qword_280952D68, &qword_280952D30, &qword_27465C918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D58);
  }

  return result;
}

unint64_t sub_2745B096C()
{
  result = qword_280952D60;
  if (!qword_280952D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952D28, &unk_27465C908);
    sub_2745B0658();
    sub_274458A14(&unk_28094D180, &qword_28094C600, &qword_27464FD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952D60);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_10_29(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v2 + v1, 1, a1);
}

uint64_t WFDatePickerParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for DateParameterRowView(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_1_37();
  sub_2745B41CC(v6, v7, &protocol conformance descriptor for ParameterStateStore);
  v8 = v1;

  v9 = sub_27463950C();
  v11 = v10;
  OUTLINED_FUNCTION_39();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2745B0C54;
  *(v12 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_274458A90;
  *(v13 + 24) = a1;
  v15[0] = v9;
  v15[1] = v11;
  v15[2] = sub_274458A60;
  v15[3] = v12;
  v15[4] = sub_274458A98;
  v15[5] = v13;
  swift_retain_n();
  sub_2745B1370(v8, v15, type metadata accessor for DateParameterRowView, v5);
  sub_2745B41CC(&unk_280952D90, type metadata accessor for DateParameterRowView, &unk_27465C9C8);
  return sub_27463AE9C();
}

id sub_2745B0C60()
{
  result = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  qword_280952D80 = result;
  return result;
}

id sub_2745B0C94()
{
  if (qword_280949330 != -1)
  {
    swift_once();
  }

  v0 = qword_280952D80;

  return v0;
}

id sub_2745B0CF0(uint64_t a1)
{
  swift_getObjCClassMetadata();
  v1 = sub_2745B0C94();

  return v1;
}

id WFDatePickerParameter.moduleSummarySlot(for:)(uint64_t a1, __n128 a2)
{
  v3 = v2;
  v5 = sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v11 = [v2 localizedLabel];
  v12 = sub_27463B6AC();
  v14 = v13;

  v15 = sub_27444C12C(v2);
  v17 = v16;
  v18 = sub_27463B66C();
  v19 = sub_27444AEE4(v12, v14, v15, v17, v18);
  if (a1)
  {
    objc_opt_self();
    v20 = swift_dynamicCastObjCClass();
    if (v20)
    {
      v21 = v20;
      swift_unknownObjectRetain();
      v22 = [v21 variable];
      if (v22)
      {
        v23 = v22;
        [v19 populateWith_];

        swift_unknownObjectRelease();
        return v19;
      }

      v24 = [v21 value];
      if (!v24)
      {

        return v19;
      }

      v25 = v24;
      sub_274637E6C();

      v26 = [v3 datePickerMode];
      if (qword_280949330 != -1)
      {
        swift_once();
      }

      v27 = qword_280952D80;
      v28 = sub_27463B6AC();
      v30 = v29;
      v31 = sub_27463B6AC();
      v33 = v28 == v31 && v30 == v32;
      v51 = v26;
      if (v33)
      {
        v35 = 0;
        v36 = 1;
      }

      else
      {
        v34 = OUTLINED_FUNCTION_7_31(v31);

        if (v34)
        {
          v35 = 0;
          v36 = 1;
LABEL_17:
          [v27 setDateStyle_];
          [v27 setTimeStyle_];
          v37 = sub_274637E5C();
          v38 = [v27 stringFromDate_];

          v39 = sub_27463B6AC();
          v41 = v40;

          sub_274457D08(v39, v41, v19);
          (*(v7 + 8))(v10, v5);
          return v19;
        }

        v43 = sub_27463B6AC();
        v45 = v44;
        v46 = sub_27463B6AC();
        if (v43 != v46 || v45 != v47)
        {
          v49 = OUTLINED_FUNCTION_7_31(v46);

          v36 = ~v49 & 1;
          v35 = 1;
          goto LABEL_17;
        }

        v36 = 0;
        v35 = 1;
      }

      goto LABEL_17;
    }
  }

  return v19;
}

id sub_2745B10E4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v7 = WFDatePickerParameter.moduleSummarySlot(for:)(a3, v6);
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_2745B1154()
{
  static WFDatePickerParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745B117C(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(type metadata accessor for SummaryModal());
  v5 = v2;
  sub_274408830(v5, 1);
  v6 = *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal];
  *&v5[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal] = v7;
  v8 = v7;

  sub_27440A42C(a2);
}

uint64_t sub_2745B121C@<X0>(uint64_t a1@<X0>, id a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [a2 parameter];
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_1_37();
  sub_2745B41CC(v6, v7, &protocol conformance descriptor for ParameterStateStore);

  v8 = sub_27463950C();
  v10 = v9;
  OUTLINED_FUNCTION_39();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2745B4D00;
  *(v11 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v12 = swift_allocObject();
  *(v12 + 16) = sub_274467398;
  *(v12 + 24) = a1;
  v14[0] = v8;
  v14[1] = v10;
  v14[2] = sub_274467394;
  v14[3] = v11;
  v14[4] = sub_27446739C;
  v14[5] = v12;
  swift_retain_n();
  return sub_2745B1370(v5, v14, type metadata accessor for DateParameterSlotView, a3);
}

uint64_t sub_2745B1370@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v38 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30, &qword_274654EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v42 = &v35 - v7;
  sub_274637E8C();
  OUTLINED_FUNCTION_1();
  v43 = v9;
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v36 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v40 = &v35 - v14;
  v15 = *a2;
  v16 = a2[1];
  v17 = a2[2];
  v18 = a2[5];
  v19 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560, &unk_27464B3C0));
  v38 = v38;
  sub_27444A6A4(v38);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560, &unk_27464B3C0, &unk_274648AD8);
  *a4 = sub_27463950C();
  *(a4 + 8) = v20;
  *(a4 + 16) = v15;
  *(a4 + 24) = v16;
  *(a4 + 32) = v17;
  v37 = *(a2 + 3);
  *(a4 + 40) = v37;
  *(a4 + 56) = v18;

  v17(&v46, v21);

  v22 = v46;
  if (v46 && (v23 = [v46 value], v22, v23))
  {
    v24 = v36;
    sub_274637E6C();

    v26 = v42;
    v25 = v43;
    v27 = *(v43 + 32);
    v28 = v24;
    v29 = v44;
    v27(v42, v28, v44);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
    v30 = v41;
    v27(v41, v26, v29);
  }

  else
  {
    v31 = v42;
    v29 = v44;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v44);
    v30 = v41;
    sub_274637E7C();

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v29);
    v25 = v43;
    if (EnumTagSinglePayload != 1)
    {
      sub_27440CB1C(v31, &unk_280952E30, &qword_274654EC0);
    }
  }

  v33 = v40;
  *&v40[*(v39 + 28)] = 0;
  (*(v25 + 32))(v33, v30, v29);
  v45(0);
  return sub_274433B6C();
}

uint64_t sub_2745B17B0()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745B1848, v3, v2);
}

uint64_t sub_2745B1848()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745B1964;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_35;
  v0[7].receiver = v2;
  v3 = type metadata accessor for DatePickerParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745B1964()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745B1A68, v2, v1);
}

uint64_t sub_2745B1A68()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal);
  if (v2)
  {
    v3 = v2;
    sub_27440A5E8();
  }

  v4 = *(v0 + 8);

  return v4();
}

id sub_2745B1B60(void *a1, uint64_t a2, char a3)
{
  *&v3[OBJC_IVAR____TtC14WorkflowEditorP33_F98045B4B06EF7F5A24A30DEAE57012B32DatePickerParameterSummaryEditor_modal] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DatePickerParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

uint64_t sub_2745B1BD8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745B1C70, v4, v3);
}

uint64_t sub_2745B1C70()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745B17B0();
}

id sub_2745B1D60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatePickerParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745B1DA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v73 = a1;
  v63 = type metadata accessor for DateParameterRowView(0);
  v70 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v71 = v3;
  v72 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274639F7C();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for DateParameterView(0);
  MEMORY[0x28223BE20](v64);
  v65 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952DF0, &qword_27465CA18);
  MEMORY[0x28223BE20](v7);
  v9 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v11;
  v12 = *(v1 + 8);
  v13 = qword_28094A100;
  v14 = *(v12 + qword_28094A100);
  v15 = *(v1 + 32);
  v77 = *(v1 + 16);
  v78 = v15;
  v79 = *(v1 + 48);
  v16 = v14;
  v62 = sub_274465E90();
  v61 = v17;
  v60 = v18;
  v19 = (v9 + v7[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745B41CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *v19 = sub_27463979C();
  v19[1] = v20;
  v21 = v9 + v7[16];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v9 + v7[17];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = v9 + v7[18];
  *v23 = swift_getKeyPath();
  v23[8] = 0;
  v24 = v9 + v7[19];
  *v24 = swift_getKeyPath();
  v24[40] = 0;
  v25 = v9 + v7[20];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  v26 = v9 + v7[21];
  v74 = 0;
  sub_27463ACDC();
  v27 = v76;
  *v26 = v75;
  *(v26 + 1) = v27;
  v28 = v9 + v7[22];
  v74 = 0;
  sub_27463ACDC();
  v29 = v76;
  *v28 = v75;
  *(v28 + 1) = v29;
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v31 = v16;
  sub_27444A564(v31);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v9 = sub_27463950C();
  v9[1] = v32;
  v33 = [v31 localizedLabel];
  v34 = sub_27463B6AC();
  v36 = v35;

  v9[2] = v34;
  v9[3] = v36;
  v37 = [v31 localizedDescription];
  if (v37)
  {
    v38 = v37;
    v39 = sub_27463B6AC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v9[4] = v39;
  v9[5] = v41;
  v9[6] = 1;
  v42 = v61;
  v9[7] = v62;
  v9[8] = v42;
  v9[9] = v60;
  v60 = v9 + v7[13];
  v43 = *(v12 + v13);
  v62 = *(v63 + 24);
  v44 = v43;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);
  v45 = v65;
  sub_27463AD0C();
  v61 = v2;
  v46 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560, &unk_27464B3C0));
  v47 = v44;
  sub_27444A6A4(v47);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560, &unk_27464B3C0, &unk_274648AD8);
  v48 = sub_27463950C();
  v50 = v49;

  *v45 = v48;
  v45[1] = v50;
  v51 = v66;
  sub_274639F6C();
  sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView, &unk_27465CBB4);
  sub_2745B41CC(&qword_280952E08, MEMORY[0x277CDE150], MEMORY[0x277CDE148]);
  v52 = v60;
  v53 = v68;
  sub_27463A77C();
  (*(v67 + 8))(v51, v53);
  sub_2745B42FC(v45);

  *&v52[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E10, &qword_27465CAF8) + 36)] = 257;
  *(v9 + v7[14]) = 0;
  sub_274403DBC();
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E18, &qword_27465CB00);
  v55 = v73 + *(v54 + 36);
  sub_27463ACEC();
  sub_2745B4944();
  v56 = swift_allocObject();
  sub_2745B4AC0();
  v57 = (v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E20, &qword_27465CB08) + 36));
  *v57 = sub_2745B4358;
  v57[1] = v56;
  return sub_274403DBC();
}

uint64_t sub_2745B2518@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DateParameterSlotView(0);
  v4 = v3 - 8;
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DateParameterView(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F20, &qword_27465CC60) + 44);
  v24 = v1;
  v9 = *(v1 + 8);
  v10 = qword_28094A100;
  v11 = *(v9 + qword_28094A100);
  v25 = *(v4 + 32);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);
  sub_27463AD0C();
  v13 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B560, &unk_27464B3C0));
  v14 = v12;
  sub_27444A6A4(v14);
  sub_27440CA78(&qword_280952DF8, &qword_28094B560, &unk_27464B3C0, &unk_274648AD8);
  v15 = sub_27463950C();
  v17 = v16;

  *v8 = v15;
  v8[1] = v17;
  v18 = *(v9 + v10);
  sub_2745B2808(v18, a1 + v23);

  sub_2745B42FC(v8);
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F28, &qword_27465CC68) + 36);
  sub_27463ACEC();
  sub_2745B4944();
  v20 = swift_allocObject();
  sub_2745B4AC0();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E20, &qword_27465CB08);
  v22 = (v19 + *(result + 36));
  *v22 = sub_2745B4B18;
  v22[1] = v20;
  return result;
}

uint64_t sub_2745B2808@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v42 = sub_27463A0FC();
  v36 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F30, &qword_27465CC70);
  v38 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v37 = &v36 - v5;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F38, &qword_27465CC78);
  MEMORY[0x28223BE20](v39);
  v41 = &v36 - v6;
  v7 = sub_274639EDC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F40, &qword_27465CC80);
  v11 = *(v40 - 8);
  *&v12 = MEMORY[0x28223BE20](v40).n128_u64[0];
  v14 = &v36 - v13;
  v15 = [a1 datePickerMode];
  v16 = sub_27463B6AC();
  v18 = v17;
  if (v16 == sub_27463B6AC() && v18 == v19)
  {
  }

  else
  {
    v21 = sub_27463C6BC();

    if ((v21 & 1) == 0)
    {
      sub_27463A0EC();
      v22 = type metadata accessor for DateParameterView(0);
      v23 = sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView, &unk_27465CBB4);
      v24 = sub_2745B41CC(&qword_280952F48, MEMORY[0x277CDE290], MEMORY[0x277CDE288]);
      v25 = v37;
      v26 = v42;
      sub_27463A77C();
      (*(v36 + 8))(v4, v26);
      v27 = v38;
      v28 = v43;
      (*(v38 + 16))(v41, v25, v43);
      swift_storeEnumTagMultiPayload();
      v29 = sub_2745B41CC(&qword_280952F50, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
      v45 = v22;
      v46 = v7;
      v47 = v23;
      v48 = v29;
      swift_getOpaqueTypeConformance2();
      v45 = v22;
      v46 = v26;
      v47 = v23;
      v48 = v24;
      swift_getOpaqueTypeConformance2();
      sub_274639DDC();
      return (*(v27 + 8))(v25, v28);
    }
  }

  sub_274639ECC();
  v31 = type metadata accessor for DateParameterView(0);
  v32 = sub_2745B41CC(&qword_280952E00, type metadata accessor for DateParameterView, &unk_27465CBB4);
  v33 = sub_2745B41CC(&qword_280952F50, MEMORY[0x277CDE068], MEMORY[0x277CDE060]);
  sub_27463A77C();
  (*(v8 + 8))(v10, v7);
  v34 = v40;
  (*(v11 + 16))(v41, v14, v40);
  swift_storeEnumTagMultiPayload();
  v45 = v31;
  v46 = v7;
  v47 = v32;
  v48 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = sub_2745B41CC(&qword_280952F48, MEMORY[0x277CDE290], MEMORY[0x277CDE288]);
  v45 = v31;
  v46 = v42;
  v47 = v32;
  v48 = v35;
  swift_getOpaqueTypeConformance2();
  sub_274639DDC();
  return (*(v11 + 8))(v14, v34);
}

void sub_2745B2E98()
{
  OUTLINED_FUNCTION_57();
  v1 = sub_274637E5C();
  v3 = [objc_allocWithZone(MEMORY[0x277D7C338]) initWithValue_];

  v2 = *(v0 + 48);
  v4 = v3;
  v2(&v4);
}

uint64_t sub_2745B2F1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952E98, &qword_27465CC08);
  MEMORY[0x28223BE20](v3 - 8);
  v85 = &v78 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EA0, &qword_27465CC10);
  MEMORY[0x28223BE20](v5 - 8);
  v84 = &v78 - v6;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EA8, &qword_27465CC18);
  MEMORY[0x28223BE20](v94);
  v97 = &v78 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EB0, &qword_27465CC20);
  MEMORY[0x28223BE20](v89);
  v90 = &v78 - v8;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EB8, &qword_27465CC28);
  MEMORY[0x28223BE20](v95);
  v96 = &v78 - v9;
  v10 = sub_274639E1C();
  MEMORY[0x28223BE20](v10 - 8);
  v88 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EC0, &qword_27465CC30);
  MEMORY[0x28223BE20](v83);
  v82 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v78 - v14;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952EC8, &qword_27465CC38);
  MEMORY[0x28223BE20](v79);
  v81 = &v78 - v15;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50, &qword_27465CB48);
  MEMORY[0x28223BE20](v99);
  v101 = &v78 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952ED0, &qword_27465CC40);
  v92 = *(v17 - 8);
  v93 = v17;
  MEMORY[0x28223BE20](v17);
  v91 = &v78 - v18;
  v19 = sub_274637E8C();
  v100 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v87 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v102 = &v78 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952ED8, &qword_27465CC48);
  MEMORY[0x28223BE20](v23);
  v25 = &v78 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E30, &qword_274654EC0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v78 - v30;
  *&v33 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v35 = &v78 - v34;
  v36 = v2;
  v37 = *(v2 + 8);
  v38 = qword_28094A100;
  v39 = [*(v37 + qword_28094A100) minimumDate];
  if (v39)
  {
    v40 = v39;
    sub_274637E6C();

    v41 = 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = 1;
  __swift_storeEnumTagSinglePayload(v35, v41, 1, v19);
  v43 = [*(v37 + v38) maximumDate];
  if (v43)
  {
    v44 = v43;
    sub_274637E6C();

    v42 = 0;
  }

  v45 = v100;
  __swift_storeEnumTagSinglePayload(v31, v42, 1, v19);
  v46 = *(v23 + 48);
  sub_274433B6C();
  sub_274433B6C();
  if (__swift_getEnumTagSinglePayload(v25, 1, v19) == 1)
  {
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v25[v46], 1, v19);
    v48 = v102;
    if (EnumTagSinglePayload == 1)
    {
      type metadata accessor for DateParameterView(0);
      sub_27463AEEC();
      sub_2745B3E08();
      v49 = v91;
      sub_27463906C();
      v51 = v92;
      v50 = v93;
      (*(v92 + 16))(v90, v49, v93);
      swift_storeEnumTagMultiPayload();
      sub_27440CA78(&qword_280952EE0, &qword_280952ED0, &qword_27465CC40, MEMORY[0x277CDD668]);
      v52 = v96;
      sub_274639DDC();
      sub_2744342DC();
      swift_storeEnumTagMultiPayload();
      sub_2745B4894();
      sub_274639DDC();
      sub_27440CB1C(v52, &qword_280952EB8, &qword_27465CC28);
      (*(v51 + 8))(v49, v50);
      v53 = &qword_280952ED8;
      v54 = &qword_27465CC48;
      v55 = v25;
      return sub_27440CB1C(v55, v53, v54);
    }

    v45[4](v102, &v25[v46], v19);
    type metadata accessor for DateParameterView(0);
    v86 = v25;
    sub_27463AEEC();
    v45[2](v85, v48, v19);
    sub_2745B3E08();
    v59 = v91;
    sub_27463909C();
    v61 = v92;
    v60 = v93;
    (*(v92 + 16))(v90, v59, v93);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0, &qword_27465CC40, MEMORY[0x277CDD668]);
    v62 = v96;
    sub_274639DDC();
    v63 = v48;
    sub_2744342DC();
    goto LABEL_12;
  }

  sub_2744342DC();
  v56 = __swift_getEnumTagSinglePayload(&v25[v46], 1, v19);
  v57 = v45[4];
  v58 = v102;
  v57(v102, v28, v19);
  v86 = v25;
  if (v56 == 1)
  {
    type metadata accessor for DateParameterView(0);
    sub_27463AEEC();
    v45[2](v84, v58, v19);
    sub_2745B3E08();
    v59 = v91;
    sub_27463908C();
    v61 = v92;
    v60 = v93;
    (*(v92 + 16))(v90, v59, v93);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0, &qword_27465CC40, MEMORY[0x277CDD668]);
    v62 = v96;
    sub_274639DDC();
    v63 = v58;
    sub_2744342DC();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    sub_2745B4894();
    sub_274639DDC();
    sub_27440CB1C(v62, &qword_280952EB8, &qword_27465CC28);
    (*(v61 + 8))(v59, v60);
    (v45[1])(v63, v19);
LABEL_15:
    v53 = &unk_280952E30;
    v54 = &qword_274654EC0;
    v55 = v86;
    return sub_27440CB1C(v55, v53, v54);
  }

  v64 = v87;
  v57(v87, &v25[v46], v19);
  type metadata accessor for DateParameterView(0);
  sub_27463AEEC();
  sub_2745B41CC(&unk_280952EF0, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  result = sub_27463B59C();
  if (result)
  {
    v66 = v45[2];
    v99 = v36;
    v67 = v80;
    v66(v80, v58, v19);
    v68 = v83;
    v66(&v67[*(v83 + 48)], v64, v19);
    v69 = v82;
    sub_2744342DC();
    v70 = *(v68 + 48);
    v71 = v81;
    v57(v81, v69, v19);
    v72 = v45[1];
    (v72)(&v69[v70], v19);
    v100 = v72;
    sub_274433B6C();
    v57(&v71[*(v79 + 36)], &v69[*(v68 + 48)], v19);
    (v72)(v69, v19);
    sub_2745B3E08();
    v73 = v91;
    sub_27463907C();
    v75 = v92;
    v74 = v93;
    (*(v92 + 16))(v90, v73, v93);
    swift_storeEnumTagMultiPayload();
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0, &qword_27465CC40, MEMORY[0x277CDD668]);
    v76 = v96;
    sub_274639DDC();
    sub_2744342DC();
    swift_storeEnumTagMultiPayload();
    sub_2745B4894();
    sub_274639DDC();
    sub_27440CB1C(v76, &qword_280952EB8, &qword_27465CC28);
    (*(v75 + 8))(v73, v74);
    v77 = v100;
    (v100)(v87, v19);
    (v77)(v102, v19);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2745B3E08()
{
  v1 = sub_274639E1C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v25 = 0;
  sub_2745B41CC(&qword_28094BAF8, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE8]);
  sub_27463C7DC();
  v8 = [*(*(v0 + 8) + qword_28094A100) datePickerMode];
  v9 = sub_27463B6AC();
  v11 = v10;
  if (v9 == sub_27463B6AC() && v11 == v12)
  {

    goto LABEL_8;
  }

  v14 = sub_27463C6BC();

  if (v14)
  {

LABEL_8:
    sub_274639E0C();
    goto LABEL_9;
  }

  v17 = sub_27463B6AC();
  v19 = v18;
  if (v17 == sub_27463B6AC() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_27463C6BC();

    if ((v22 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952F00, &qword_27465CC50);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2746486A0;
      sub_274639E0C();
      sub_274639DFC();
      v25 = v23;
      sub_2745B41CC(&qword_280949A48, MEMORY[0x277CDDFC8], MEMORY[0x277CDDFE0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952F10, &qword_27465CC58);
      sub_27440CA78(&qword_280952F18, &qword_280952F10, &qword_27465CC58, MEMORY[0x277D83970]);
      sub_27463C1EC();
      sub_2744552D0();
      return (*(v2 + 8))(v7, v1);
    }
  }

  sub_274639DFC();
LABEL_9:
  sub_27440A218(v7, v4);
  v15 = *(v2 + 8);
  v15(v4, v1);
  return (v15)(v7, v1);
}

uint64_t sub_2745B41CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2745B4260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), __n128 a4)
{
  if (!*a2)
  {
    v7 = sub_274637E8C();
    v8 = a3(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2745B42FC(uint64_t a1)
{
  v2 = type metadata accessor for DateParameterView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745B4370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_27444C34C;
  v2 = OUTLINED_FUNCTION_5_0();

  return v3(v2);
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

void sub_2745B4574(uint64_t a1)
{
  sub_274457F78(319, &qword_280952DC8, &qword_280952DD0, 0x277D7C330, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_280952DD8, &qword_280952DE0, 0x277D7C338, type metadata accessor for StoredParameterState);
    if (v3 <= 0x3F)
    {
      sub_2745B4260(319, &qword_280952DE8, MEMORY[0x277CE10B8], v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2745B46AC(uint64_t a1)
{
  sub_274457F78(319, &qword_280952DC8, &qword_280952DD0, 0x277D7C330, type metadata accessor for Parameter);
  if (v2 <= 0x3F)
  {
    sub_2745B4260(319, &unk_280952E70, MEMORY[0x277CE11F8], v1);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2745B4778()
{
  result = qword_280952E80;
  if (!qword_280952E80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952E18, &qword_27465CB00);
    sub_27440CA78(&qword_280952E88, &qword_280952DF0, &qword_27465CA18, &unk_274656A70);
    sub_27440CA78(&qword_280952E90, &unk_280952E20, &qword_27465CB08, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952E80);
  }

  return result;
}

unint64_t sub_2745B4894()
{
  result = qword_280952EE8;
  if (!qword_280952EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952EB8, &qword_27465CC28);
    sub_27440CA78(&qword_280952EE0, &qword_280952ED0, &qword_27465CC40, MEMORY[0x277CDD668]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952EE8);
  }

  return result;
}

uint64_t sub_2745B4944()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t objectdestroy_24Tm(uint64_t (*a1)(void))
{
  v2 = (a1(0) - 8);
  v3 = v1 + ((*(*v2 + 80) + 16) & ~*(*v2 + 80));

  v4 = v3 + v2[8];
  sub_274637E8C();
  OUTLINED_FUNCTION_7();
  (*(v5 + 8))(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952DA8, &qword_27465C9A8);

  return swift_deallocObject();
}

uint64_t sub_2745B4AC0()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

unint64_t sub_2745B4B98()
{
  result = qword_280952F58;
  if (!qword_280952F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952F60, &qword_27465CC88);
    sub_2745B4894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F58);
  }

  return result;
}

unint64_t sub_2745B4C1C()
{
  result = qword_280952F68;
  if (!qword_280952F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952F28, &qword_27465CC68);
    sub_27440CA78(&qword_280952F70, &unk_280952F78, &unk_27465CC90, MEMORY[0x277CE1198]);
    sub_27440CA78(&qword_280952E90, &unk_280952E20, &qword_27465CB08, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_31(uint64_t a1)
{

  return sub_27463C6BC();
}

uint64_t WFVariableFieldParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_27450A7C0();

  sub_27463950C();
  OUTLINED_FUNCTION_39();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2745B4E84;
  *(v3 + 24) = a1;
  OUTLINED_FUNCTION_39();
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  swift_retain_n();
  v1;
  sub_27463ACDC();
  sub_2745B6084();
  return sub_27463AE9C();
}

uint64_t sub_2745B4E90@<X0>(uint64_t *a1@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FA0, &qword_27465CDC0);
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - v3;
  memcpy(__dst, v1, 0x50uLL);
  v4 = __dst[0];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952FA8, &qword_27465CDC8);
  v6 = v5[14];
  *(a1 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v7 = a1 + v5[15];
  *v7 = swift_getKeyPath();
  *(v7 + 4) = 0;
  v8 = a1 + v5[16];
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  v9 = a1 + v5[17];
  *v9 = swift_getKeyPath();
  v9[40] = 0;
  v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v11 = v4;
  sub_27444A564(v11);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a1 = sub_27463950C();
  a1[1] = v12;
  v13 = [v11 localizedLabel];
  v14 = sub_27463B6AC();
  v16 = v15;

  v17 = [v11 localizedDescription];
  if (v17)
  {
    v18 = v17;
    v19 = sub_27463B6AC();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  a1[2] = v14;
  a1[3] = v16;
  a1[4] = v19;
  a1[5] = v21;
  v22 = a1 + v5[12];
  *v22 = 0;
  *(v22 + 1) = 0;
  v22[16] = 0;
  v23 = v5[11];
  sub_27463B70C("Variable Name", 13);
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v42 = a1 + v23;
  v24 = qword_28094BB00;
  v25 = sub_27463B66C();
  v26 = sub_27463B66C();

  v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

  v28 = sub_27463B6AC();
  v30 = v29;

  v46 = *&__dst[7];
  v47 = __dst[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463AD0C();
  v31 = swift_allocObject();
  memcpy((v31 + 16), __dst, 0x50uLL);
  *&v46 = v28;
  *(&v46 + 1) = v30;
  sub_2745B6130(__dst, v45);
  sub_274412BBC();
  v32 = v43;
  sub_27463B17C();
  v33 = swift_allocObject();
  memcpy((v33 + 16), __dst, 0x50uLL);
  v34 = v44;
  v35 = (v32 + *(v44 + 36));
  *v35 = sub_2745B61C8;
  v35[1] = v33;
  v35[2] = 0;
  v35[3] = 0;
  sub_2745B6130(__dst, v45);
  v36 = sub_2745B61D0();
  v37 = v42;
  MEMORY[0x277C56F80](1, v34, v36);
  sub_2745B6288(v32);
  KeyPath = swift_getKeyPath();

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FD0, &qword_27465CEB8);
  v40 = &v37[*(result + 36)];
  *v40 = KeyPath;
  v40[8] = 2;
  *(a1 + v5[13]) = 0;
  return result;
}

uint64_t sub_2745B5368(uint64_t a1)
{
  sub_274412734(0, &unk_280952FD8, 0x277D7C920);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  sub_2745B6130(a1, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  sub_27463ACEC();
  v2 = sub_2745A9480(v5[0], v5[1]);
  v3 = *(a1 + 40);
  v5[0] = v2;
  v3(v5);

  return sub_2745B62F0(a1);
}

uint64_t sub_2745B5420(uint64_t a1)
{
  (*(a1 + 24))(v5);
  v2 = v5[0];
  if (v5[0])
  {
    v3 = [v5[0] string];

    sub_27463B6AC();
  }

  *v5 = *(a1 + 56);
  v6 = *(a1 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D0C8, &qword_27464FCA0);
  return sub_27463ACFC();
}

uint64_t sub_2745B54E8()
{
  static WFVariableFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

id WFVariableFieldParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  sub_274412734(0, &qword_28094BD80, 0x277D7D7B0);
  v3 = [v1 localizedLabel];
  v4 = sub_27463B6AC();
  v6 = v5;

  v7 = sub_27444C12C(v1);
  v9 = v8;
  v10 = sub_27463B66C();
  v11 = sub_27444AEE4(v4, v6, v7, v9, v10);
  if (a1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRetain();
      v14 = [v13 string];
      v15 = sub_27463B6AC();
      v17 = v16;

      sub_274457D08(v15, v17, v11);
      swift_unknownObjectRelease();
    }
  }

  return v11;
}

id sub_2745B5650(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFVariableFieldParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_2745B5734()
{
  v1[20] = v0;
  sub_27463B9CC();
  v1[21] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v1[22] = v3;
  v1[23] = v2;

  return MEMORY[0x2822009F8](sub_2745B57CC, v3, v2);
}

uint64_t sub_2745B57CC()
{
  receiver = v0[10].receiver;
  v0[1].receiver = v0;
  v0[1].super_class = sub_2745B58E8;
  v2 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094CFA0, &qword_27464F630);
  v0[5].receiver = MEMORY[0x277D85DD0];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_2745ECED0;
  v0[6].super_class = &block_descriptor_36;
  v0[7].receiver = v2;
  v3 = type metadata accessor for VariableFieldParameterSummaryEditor();
  v0[9].receiver = receiver;
  v0[9].super_class = v3;
  objc_msgSendSuper2(v0 + 9, sel_cancelEditingWithCompletionHandler_, &v0[5]);

  return MEMORY[0x282200938](&v0[1]);
}

uint64_t sub_2745B58E8()
{
  OUTLINED_FUNCTION_79();
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);

  return MEMORY[0x2822009F8](sub_2745B59EC, v2, v1);
}

uint64_t sub_2745B59EC()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 160);

  if ([v1 textEntry])
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      [v2 resignFirstResponder];
    }

    swift_unknownObjectRelease();
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2745B5B14(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_27463B9CC();
  v2[4] = sub_27463B9BC();
  v4 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745B5BAC, v4, v3);
}

uint64_t sub_2745B5BAC()
{
  OUTLINED_FUNCTION_79();
  v1 = v0[3];
  v2 = v0[2];

  v0[5] = _Block_copy(v2);
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_27444B7CC;

  return sub_2745B5734();
}

id sub_2745B5C58(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result setAutocorrectionType_];
  }

  return result;
}

void sub_2745B5D54(void *a1)
{
  v2 = v1;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v9, sel_textEntryTextDidChange_, a1);
  if (a1)
  {
    v4 = [a1 string];
    v5 = sub_27463B6AC();
    v7 = v6;

    sub_274412734(0, &unk_280952FD8, 0x277D7C920);
    v8 = sub_2745A9480(v5, v7);
    [v2 stageState_];
  }

  else
  {
    [v2 stageState_];
  }

  *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges) = 1;
}

id sub_2745B5EB0()
{
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryDidFinish);
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges) == 1)
  {
    v1 = [v0 currentState];
    [v0 commitState_];
  }

  return [v0 completeEditing];
}

id sub_2745B5F90(void *a1, uint64_t a2, char a3)
{
  v3[OBJC_IVAR____TtC14WorkflowEditorP33_4FF4F351C433FF94A8616279ECCFBACD35VariableFieldParameterSummaryEditor_hasStagedChanges] = 0;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745B604C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2745B6084()
{
  result = qword_280952F88;
  if (!qword_280952F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952F88);
  }

  return result;
}

uint64_t objectdestroy_19Tm_0()
{

  return swift_deallocObject();
}

unint64_t sub_2745B61D0()
{
  result = qword_280952FB8;
  if (!qword_280952FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280952FA0, &qword_27465CDC0);
    sub_27440CA78(&qword_280952FC0, &qword_28094D688, &qword_27465C710, MEMORY[0x277CDF1A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280952FB8);
  }

  return result;
}

uint64_t sub_2745B6288(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952FA0, &qword_27465CDC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745B6320()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_27444C34C;

  return sub_2745B5B14(v2, v3);
}

id sub_2745B63E4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for EditorEmptyStateView();
  v2 = objc_msgSendSuper2(&v4, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_2745B6560();

  return v2;
}

void sub_2745B64A8()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_27463C56C();
  __break(1u);
}

id sub_2745B6560()
{
  v1 = *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label];
  [v1 setNumberOfLines_];
  [v1 setTextAlignment_];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  v3 = [objc_opt_self() preferredFontForTextStyle_];
  [v1 setFont_];

  return [v0 addSubview_];
}

id sub_2745B665C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorEmptyStateView();
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  return sub_2745B66DC();
}

id sub_2745B66DC()
{
  v1 = [v0 traitCollection];

  return sub_2745B6740();
}

id sub_2745B6740()
{
  [v0 safeAreaInsets];
  v2 = v1 + 38.0;
  v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor20EditorEmptyStateView_label];
  v4 = sub_2745B6884();
  sub_2745B6818(v4, v5);
  [v0 frame];
  v11 = CGRectInset(v10, 34.0, 8.0);
  width = v11.size.width;
  [v3 sizeThatFits_];

  return [v3 setFrame_];
}

void sub_2745B6818(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_27463B66C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setText_];
}

uint64_t sub_2745B6884()
{
  if (sub_2745B6980())
  {
    sub_27463B70C("Add actions from below to create a shortcut.", 44);
  }

  else
  {
    sub_27463B70C("Add actions from the right to create a shortcut.", 48);
  }

  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v0 = qword_28094BB00;
  v1 = sub_27463B66C();
  v2 = sub_27463B66C();

  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  v4 = sub_27463B6AC();
  return v4;
}

BOOL sub_2745B6980()
{
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  return v2 == 1;
}

id sub_2745B6A14(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for EditorEmptyStateView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2745B6AB8(uint64_t a1)
{
  sub_274431930();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      sub_2745B7130(319, v2);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2745B6B60(unsigned __int16 *a1, unsigned int a2, uint64_t a3, __n128 a4)
{
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_274638B1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  if (v8 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v8;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v10 + 80);
  v18 = 1;
  if (!v11)
  {
    v18 = 2;
  }

  if (!a2)
  {
    return 0;
  }

  v19 = v9;
  if (a2 <= v14)
  {
    goto LABEL_29;
  }

  v20 = v18 + *(*(v9 - 8) + 64) + ((v16 + v17 + ((v15 + 16) & ~v15)) & ~v17);
  v21 = 8 * v20;
  if (v20 > 3)
  {
    goto LABEL_14;
  }

  v23 = ((a2 - v14 + ~(-1 << v21)) >> v21) + 1;
  if (HIWORD(v23))
  {
    v22 = *(a1 + v20);
    if (v22)
    {
      goto LABEL_21;
    }

LABEL_29:
    if ((v13 & 0x80000000) == 0)
    {
      v25 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }

    v27 = (a1 + v15 + 16) & ~v15;
    if (v8 == v14)
    {

      return __swift_getEnumTagSinglePayload(v27, v8, v6);
    }

    if (v11 >= 2)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((v27 + v16 + v17) & ~v17, v11, v19);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  if (v23 > 0xFF)
  {
    v22 = *(a1 + v20);
    if (*(a1 + v20))
    {
      goto LABEL_21;
    }

    goto LABEL_29;
  }

  if (v23 < 2)
  {
    goto LABEL_29;
  }

LABEL_14:
  v22 = *(a1 + v20);
  if (!*(a1 + v20))
  {
    goto LABEL_29;
  }

LABEL_21:
  v24 = (v22 - 1) << v21;
  if (v20 > 3)
  {
    v24 = 0;
  }

  if (v20)
  {
    if (v20 > 3)
    {
      LODWORD(v20) = 4;
    }

    switch(v20)
    {
      case 2:
        LODWORD(v20) = *a1;
        break;
      case 3:
        LODWORD(v20) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v20) = *a1;
        break;
      default:
        LODWORD(v20) = *a1;
        break;
    }
  }

  return v14 + (v20 | v24) + 1;
}

void sub_2745B6DFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4, __n128 a5)
{
  v8 = *(a4 + 24);
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_274638B1C();
  v12 = 0;
  v13 = *(v11 - 8);
  v14 = *(v13 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  if (v10 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v10;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v13 + 80);
  v21 = *(*(v11 - 8) + 64);
  if (!v14)
  {
    ++v21;
  }

  v22 = v21 + ((v19 + v20 + ((v18 + 16) & ~v18)) & ~v20) + 1;
  v23 = 8 * v22;
  if (a3 > v17)
  {
    if (v22 <= 3)
    {
      v24 = ((a3 - v17 + ~(-1 << v23)) >> v23) + 1;
      if (HIWORD(v24))
      {
        v12 = 4;
      }

      else
      {
        if (v24 < 0x100)
        {
          v25 = 1;
        }

        else
        {
          v25 = 2;
        }

        if (v24 >= 2)
        {
          v12 = v25;
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

  if (v17 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_34;
        }

        return;
      case 3:
LABEL_55:
        __break(1u);
        return;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_33;
      default:
LABEL_33:
        if (!a2)
        {
          return;
        }

LABEL_34:
        if ((v16 & 0x80000000) != 0)
        {
          v30 = &a1[v18 + 16] & ~v18;
          if (v10 == v17)
          {
            v31 = a2;
            v14 = v10;
            v11 = v8;
          }

          else
          {
            if (v14 < 2)
            {
              return;
            }

            v30 = (v30 + v19 + v20) & ~v20;
            v31 = (a2 + 1);
          }

          __swift_storeEnumTagSinglePayload(v30, v31, v14, v11);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v29 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            v29 = (a2 - 1);
          }

          *a1 = v29;
        }

        break;
    }
  }

  else
  {
    v26 = ~v17 + a2;
    if (v22 < 4)
    {
      v27 = (v26 >> v23) + 1;
      if (v22)
      {
        v28 = v26 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v28;
          a1[2] = BYTE2(v28);
        }

        else if (v22 == 2)
        {
          *a1 = v28;
        }

        else
        {
          *a1 = v26;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v26;
      v27 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v22] = v27;
        break;
      case 2:
        *&a1[v22] = v27;
        break;
      case 3:
        goto LABEL_55;
      case 4:
        *&a1[v22] = v27;
        break;
      default:
        return;
    }
  }
}

void sub_2745B7130(uint64_t a1, __n128 a2)
{
  if (!qword_280953080)
  {
    sub_274638B1C();
    v2 = sub_27463C0AC();
    if (!v3)
    {
      atomic_store(v2, &qword_280953080);
    }
  }
}

void *sub_2745B71CC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_27463AB7C();
  sub_27463B0CC();
  sub_27463973C();
  *a2 = v3;
  result = memcpy((a2 + 8), __src, 0x70uLL);
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  return result;
}

BOOL sub_2745B7268(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8, &unk_27465CFB0);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v19 - v4;
  v6 = sub_274638B1C();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v19 - v14;
  sub_2745B8994(v1 + *(a1 + 56), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2745B8A04(v5);
    return 1;
  }

  else
  {
    (*(v8 + 32))(v15, v5, v6);
    sub_274638B0C();
    sub_2745B8A6C(v17);
    sub_27463B7DC();
    sub_27463B7DC();
    v18 = *(v8 + 8);
    v18(v12, v6);
    v18(v15, v6);
    return v19[1] == v19[0];
  }
}

uint64_t sub_2745B743C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v172 = a2;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getTupleTypeMetadata2();
  v5 = sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  WitnessTable = swift_getWitnessTable();
  v149 = v5;
  sub_27463AE6C();
  OUTLINED_FUNCTION_1();
  v153 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v152 = v8 - v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v151 = v11;
  v146 = *(v4 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v144 = v14;
  v177 = v15;
  v16 = sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v161 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v165 = (v19 - v20);
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_19();
  v164 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088, &qword_27465CFA0);
  *&v173 = v3;
  v24 = sub_27463965C();
  v25 = sub_27463965C();
  v26 = sub_27463965C();
  v27 = sub_27463AFDC();
  OUTLINED_FUNCTION_1();
  v156 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2();
  v155 = v30 - v31;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v154 = v33;
  v178 = v24;
  v143 = *(v24 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  v157 = &v141 - v35;
  v179 = v25;
  v147 = *(v25 - 8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v36);
  v145 = &v141 - v37;
  v180 = v26;
  v159 = *(v26 - 8);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2();
  v150 = v39 - v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_19();
  v158 = v42;
  v160 = v23;
  sub_27463AFDC();
  OUTLINED_FUNCTION_1();
  v142 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v45);
  v175 = v46;
  v176 = v27;
  v47 = sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v163 = v48;
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_2();
  v162 = v50 - v51;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  v166 = v53;
  v171 = v16;
  sub_274639DEC();
  OUTLINED_FUNCTION_1();
  v169 = v55;
  v170 = v54;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v56);
  v58 = &v141 - v57;
  v59 = v174;
  v60 = sub_2745B7268(a1);
  v61 = *(v59 + *(a1 + 60));
  v167 = v58;
  v168 = v47;
  if (v60)
  {
    if (v61)
    {
      v62 = a1;
      sub_27463A33C();
      v63 = *(a1 + 40);
      sub_27463A9FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000, &qword_27465BD40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2746486A0;
      v65 = sub_27463A35C();
      *(inited + 32) = v65;
      v66 = sub_27463A37C();
      *(inited + 33) = v66;
      sub_27463A36C();
      sub_27463A36C();
      if (sub_27463A36C() != v65)
      {
        sub_27463A36C();
      }

      sub_27463A36C();
      if (sub_27463A36C() != v66)
      {
        sub_27463A36C();
      }

      v191 = v63;
      v67 = MEMORY[0x277CDF918];
      v192 = MEMORY[0x277CDF918];
      v68 = v178;
      v69 = swift_getWitnessTable();
      v70 = v145;
      v71 = v157;
      sub_27463A9FC();
      (*(v143 + 8))(v71, v68);
      v189 = v69;
      v190 = v67;
      v72 = v179;
      v73 = swift_getWitnessTable();
      sub_27457574C(v72);
      v74 = v158;
      sub_27463A90C();
      (*(v147 + 8))(v70, v72);
      v75 = v174;
      sub_2745B71CC(v222);
      memcpy(v221, v222, sizeof(v221));
      v76 = *(v159 + 16);
      *&v173 = v63;
      v76(v150, v74, v180);
      v77 = v75[1];
      v165 = *v75;
      v174 = v77;
      v78 = sub_2745B8810();
      v79 = *(v62 + 32);
      v187 = v73;
      v188 = MEMORY[0x277CDFC60];
      v140 = swift_getWitnessTable();
      v80 = v155;
      sub_27463AFBC();
      v184 = v78;
      v185 = v79;
      v81 = v78;
      v186 = v140;
      OUTLINED_FUNCTION_2_32();
      v82 = v176;
      swift_getWitnessTable();
      v83 = v154;
      sub_2744E9688();
      v84 = *(v156 + 8);
      v84(v80, v82);
      sub_2744E9688();
      v181 = v81;
      v182 = v79;
      v174 = v79;
      v85 = MEMORY[0x277CE1410];
      v183 = MEMORY[0x277CE1410];
      swift_getWitnessTable();
      sub_27456E878();
      v84(v80, v82);
      v84(v83, v82);
      (*(v159 + 8))(v158, v180);
    }

    else
    {
      v91 = a1;
      sub_2745B71CC(v222);
      memcpy(v221, v222, sizeof(v221));
      v92 = sub_2745B8810();
      v174 = v92;
      v93 = *(a1 + 32);
      sub_27463AFAC();
      v218 = v92;
      v219 = v93;
      v220 = MEMORY[0x277CE1410];
      v165 = MEMORY[0x277CDF0A8];
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_17();
      sub_2744E9688();
      v94 = *(v142 + 8);
      v95 = OUTLINED_FUNCTION_13_17();
      v94(v95);
      OUTLINED_FUNCTION_10_30();
      sub_2744E9688();
      *&v173 = *(v91 + 40);
      v216 = v173;
      v96 = MEMORY[0x277CDF918];
      v217 = MEMORY[0x277CDF918];
      OUTLINED_FUNCTION_7_32();
      v214 = swift_getWitnessTable();
      v215 = v96;
      v212 = swift_getWitnessTable();
      v213 = MEMORY[0x277CDFC60];
      v97 = swift_getWitnessTable();
      v209 = v174;
      v174 = v93;
      v210 = v93;
      v211 = v97;
      swift_getWitnessTable();
      OUTLINED_FUNCTION_13_17();
      v85 = MEMORY[0x277CE1410];
      sub_27456E7CC();
      v98 = OUTLINED_FUNCTION_13_17();
      v94(v98);
      v99 = OUTLINED_FUNCTION_10_30();
      v94(v99);
    }

    v100 = sub_2745B8810();
    v206 = v100;
    v101 = v174;
    v207 = v174;
    v208 = v85;
    OUTLINED_FUNCTION_2_32();
    v102 = swift_getWitnessTable();
    v204 = v173;
    v103 = MEMORY[0x277CDF918];
    v205 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_6_24();
    v202 = swift_getWitnessTable();
    v203 = v103;
    v200 = swift_getWitnessTable();
    v201 = MEMORY[0x277CDFC60];
    v104 = swift_getWitnessTable();
    v197 = v100;
    v198 = v101;
    v199 = v104;
    v105 = swift_getWitnessTable();
    v195 = v102;
    v196 = v105;
    OUTLINED_FUNCTION_5_34();
    v106 = v168;
    swift_getWitnessTable();
    v107 = v166;
    sub_2744E9688();
    OUTLINED_FUNCTION_45_0();
    v108 = swift_getWitnessTable();
    v193 = v101;
    v194 = v108;
    swift_getWitnessTable();
    v109 = v85;
    v110 = v167;
    OUTLINED_FUNCTION_10_30();
    sub_27456E7CC();
    v111 = *(v163 + 8);
    v112 = OUTLINED_FUNCTION_10_30();
    v111(v112);
    v113 = v107;
    v114 = v106;
  }

  else
  {
    v141 = a1;
    if (v61)
    {
      v86 = sub_274639C6C();
      MEMORY[0x28223BE20](v86);
      v173 = *(a1 + 32);
      v87 = v152;
      sub_27463AE5C();
      OUTLINED_FUNCTION_45_0();
      v88 = v177;
      swift_getWitnessTable();
      v89 = v151;
      sub_2744E9688();
      v90 = *(v153 + 8);
      v90(v87, v88);
      sub_2744E9688();
      v174 = v173;
      sub_27456E878();
      v90(v87, v88);
      v90(v89, v88);
    }

    else
    {
      (*v59)();
      v115 = *(a1 + 32);
      v116 = v144;
      OUTLINED_FUNCTION_12_20();
      sub_2744E9688();
      v117 = *(v146 + 8);
      v118 = OUTLINED_FUNCTION_12_20();
      v117(v118);
      sub_2744E9688();
      OUTLINED_FUNCTION_45_0();
      swift_getWitnessTable();
      OUTLINED_FUNCTION_12_20();
      v174 = v115;
      sub_27456E7CC();
      v119 = OUTLINED_FUNCTION_12_20();
      v117(v119);
      (v117)(v116, v4);
    }

    OUTLINED_FUNCTION_45_0();
    v120 = swift_getWitnessTable();
    v121 = v174;
    v255 = v174;
    v256 = v120;
    v122 = v171;
    v166 = swift_getWitnessTable();
    sub_2744E9688();
    v123 = sub_2745B8810();
    v252 = v123;
    v253 = v121;
    v109 = MEMORY[0x277CE1410];
    v254 = MEMORY[0x277CE1410];
    v124 = swift_getWitnessTable();
    *&v173 = *(v141 + 40);
    v250 = v173;
    v125 = MEMORY[0x277CDF918];
    v251 = MEMORY[0x277CDF918];
    OUTLINED_FUNCTION_7_32();
    v248 = swift_getWitnessTable();
    v249 = v125;
    v246 = swift_getWitnessTable();
    v247 = MEMORY[0x277CDFC60];
    v126 = swift_getWitnessTable();
    v243 = v123;
    v244 = v121;
    v245 = v126;
    v127 = swift_getWitnessTable();
    v241 = v124;
    v242 = v127;
    swift_getWitnessTable();
    v110 = v167;
    v128 = v165;
    OUTLINED_FUNCTION_10_30();
    sub_27456E878();
    v111 = *(v161 + 8);
    (v111)(v128, v122);
    v113 = v164;
    v114 = v122;
  }

  (v111)(v113, v114);
  v129 = sub_2745B8810();
  v130 = v174;
  v238 = v129;
  v239 = v174;
  v240 = v109;
  OUTLINED_FUNCTION_2_32();
  v131 = swift_getWitnessTable();
  v236 = v173;
  v132 = MEMORY[0x277CDF918];
  v237 = MEMORY[0x277CDF918];
  OUTLINED_FUNCTION_6_24();
  v234 = swift_getWitnessTable();
  v235 = v132;
  v232 = swift_getWitnessTable();
  v233 = MEMORY[0x277CDFC60];
  v133 = swift_getWitnessTable();
  v229 = v129;
  v230 = v130;
  v231 = v133;
  v134 = swift_getWitnessTable();
  v227 = v131;
  v228 = v134;
  OUTLINED_FUNCTION_5_34();
  v135 = swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  v136 = swift_getWitnessTable();
  v225 = v130;
  v226 = v136;
  v137 = swift_getWitnessTable();
  v223 = v135;
  v224 = v137;
  v138 = v170;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v169 + 8))(v110, v138);
}

uint64_t sub_2745B855C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a5;
  v32 = a6;
  v9 = *(a3 - 1);
  MEMORY[0x28223BE20](a1);
  v33 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v29 - v21;
  v29[1] = v23;
  (*v23)(v20);
  v30 = a4;
  sub_2744E9688();
  v24 = *(v15 + 8);
  v24(v18, a2);
  v37 = a2;
  v38 = a3;
  v39 = a4;
  v25 = v31;
  v40 = v31;
  type metadata accessor for VariableConfigurationSection(0, &v37);
  sub_2744E9688();
  (*(v15 + 16))(v18, v22, a2);
  v37 = v18;
  v26 = v33;
  (*(v9 + 16))(v33, v13, a3);
  v38 = v26;
  v36[0] = a2;
  v36[1] = a3;
  v34 = v30;
  v35 = v25;
  sub_274575750(&v37, 2, v36);
  v27 = *(v9 + 8);
  v27(v13, a3);
  v24(v22, a2);
  v27(v33, a3);
  return (v24)(v18, a2);
}

unint64_t sub_2745B8810()
{
  result = qword_280953090;
  if (!qword_280953090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088, &qword_27465CFA0);
    sub_2745B889C();
    sub_2745B8920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953090);
  }

  return result;
}

unint64_t sub_2745B889C()
{
  result = qword_280953098;
  if (!qword_280953098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809530A0, &qword_27465CFA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280953098);
  }

  return result;
}

unint64_t sub_2745B8920()
{
  result = qword_280950C60;
  if (!qword_280950C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C68, &qword_274658860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C60);
  }

  return result;
}

uint64_t sub_2745B8994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8, &unk_27465CFB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2745B8A04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809530A8, &unk_27465CFB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2745B8A6C(__n128 a1)
{
  result = qword_2809530B0;
  if (!qword_2809530B0)
  {
    sub_274638B1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809530B0);
  }

  return result;
}

uint64_t sub_2745B8B74()
{
  static WFDateFieldParameter.moduleSummaryEditorClass()();

  return swift_getObjCClassFromMetadata();
}

void sub_2745B8B9C(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v6, sel_textEntryWillBegin_allowMultipleLines_, a1, a2);
  sub_2745B8E60();
  v5 = [v2 parameter];
  [v5 addEventObserver_];
}

void sub_2745B8CA0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v3, sel_textEntryTextDidChange_, a1);
  sub_2745B8E60();
}

id sub_2745B8D58()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  objc_msgSendSuper2(&v4, sel_textEntryDidFinish);
  v1 = [v0 parameter];
  [v1 removeEventObserver_];

  result = [v0 variableUIDelegate];
  if (result)
  {
    v3 = result;
    if ([result respondsToSelector_])
    {
      [v3 showParameterEditingHint_];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745B8E60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809530C0, &qword_274655D40);
  *&v3 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v18 = [v0 parameter];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v6 = [v0 currentState];
    if (v6)
    {
      v7 = v6;
      sub_27463BE7C();

      v8 = sub_2746382DC();
      v9 = 0;
    }

    else
    {
      v8 = sub_2746382DC();
      v9 = 1;
    }

    __swift_storeEnumTagSinglePayload(v5, v9, 1, v8);
    WFDateFieldParameter.hintText(for:)(v5, v11);
    v13 = v12;
    sub_274565BC8(v5);
    v14 = [v1 variableUIDelegate];
    if (v14)
    {
      v15 = v14;
      if ([v14 respondsToSelector_])
      {
        if (v13)
        {
          v16 = sub_27463B66C();
        }

        else
        {
          v16 = 0;
        }

        [v15 showParameterEditingHint_];

        swift_unknownObjectRelease();
        return;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  v10 = v18;
}

id sub_2745B90D4(void *a1, uint64_t a2, char a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  v7 = objc_msgSendSuper2(&v9, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v7;
}

id sub_2745B9184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DateFieldParameterSummaryEditor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_2745B91BC(uint64_t a1, void *a2, void *a3)
{
  v10 = MEMORY[0x277D84F90];
  v5 = sub_274453594();
  swift_beginAccess();
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](v6, a1);
      v7 = v8;
    }

    else
    {
      if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(a1 + 8 * v6 + 32);
      v8 = swift_unknownObjectRetain();
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 != *a2)
    {
      goto LABEL_11;
    }

    if (a3)
    {
      a3;
      v8 = swift_unknownObjectRelease();
LABEL_11:
      MEMORY[0x277C57F30](v8);
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      ++v6;
    }

    else
    {
      swift_unknownObjectRelease();
      ++v6;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

uint64_t sub_2745B932C()
{

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2745B9364()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_24_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  v6 = v12 - v5;
  sub_274412734(0, &qword_280953430, 0x277CBEBB8);
  v7 = [objc_opt_self() mainRunLoop];
  v8 = sub_27463C07C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
  v9 = sub_27463BF2C();

  sub_27440CB1C(v6, &qword_280953428, &qword_27465D608);
  v12[1] = v9;
  sub_27463BF1C();
  sub_2745C1FA0(&qword_280953438, 255, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v10 = sub_274638F2C();

  *(v1 + 16) = v10;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_2745B94FC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CommitState();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

Swift::Bool __swiftcall WFVariableString.copyToPasteboard()()
{
  v0 = [objc_opt_self() generalPasteboard];
  v1 = objc_opt_self();
  v2 = sub_27463822C();
  [v1 copyVariableString:v2 toPasteboard:v0];

  return 1;
}

uint64_t static WFVariableString.createFromPasteboard(options:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = objc_opt_self();
  if ([v2 clipboardContainsVariableString])
  {
    v3 = v1 >= 2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3)
  {
LABEL_11:
    v8 = sub_2746382DC();

    return __swift_storeEnumTagSinglePayload(v0, 1, 1, v8);
  }

  v4 = objc_opt_self();
  swift_unknownObjectRetain();
  v5 = [v4 generalPasteboard];
  v6 = [v2 serializedVariableStringFromPasteboard_];

  if (!v6)
  {
    sub_2745B96C4(v1);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_15_2();

  return sub_27463825C();
}

uint64_t sub_2745B96C4(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2745B9730(void *a1)
{
  v3 = *(v1 + 56);
  if (!v3)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    v4 = sub_2745B9840();
    [a1 removeVariableObserver_];

    v3 = *(v1 + 56);
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
  swift_unknownObjectRetain();
  v5 = sub_2745B9840();
  [v3 addVariableObserver_];

  swift_unknownObjectRelease();
}

uint64_t sub_2745B97E8(uint64_t a1)
{
  v2 = *(v1 + 56);
  *(v1 + 56) = a1;
  swift_unknownObjectRetain();
  sub_2745B9730(v2);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

double sub_2745B98B8@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_25_1();
  sub_274638FAC();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2745B9938(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274638FBC();
}

void sub_2745B99B4()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  if (!*(v1 + 16) || (*(v1 + 32) & 1) != 0)
  {
    goto LABEL_12;
  }

  v29 = v3;
  v30 = v5;
  v28 = *(v1 + 24);

  sub_27463896C();
  v15 = sub_27463822C();
  v16 = [v15 attributedString];

  v17 = *(v10 + 8);
  v17(v14, v8);
  v18 = [v16 mutableCopy];

  if (v18)
  {
    v19 = v7;
    sub_27463829C();
    v20 = sub_27463822C();
    v21 = [v20 attributedString];

    v17(v14, v8);
    [v18 replaceCharactersInRange:v30 withAttributedString:{v29, v21}];
    v22 = objc_allocWithZone(MEMORY[0x277D7CA28]);
    v23 = v18;
    [v22 initWithAttributedString_];
    sub_27463821C();

    sub_27463897C();
    if (!__OFADD__(v30, [v21 length]))
    {
      sub_27463898C();
      v24 = *(v1 + 72);
      if (v24)
      {
        v25 = *(v1 + 80);

        v24(v26);
        sub_274406A94(v24, v25);
      }

      *(sub_2745B9890() + 24) = 0;

      v27 = [v19 shouldDisplayEditorOnInsertionInContext_];
      if (v27)
      {
        MEMORY[0x28223BE20](v27);
        *(&v28 - 2) = v19;
        sub_27463892C();
        if (v31)
        {

LABEL_12:
          OUTLINED_FUNCTION_23();
          return;
        }

        sub_2745B9D2C();
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  __break(1u);
}

BOOL sub_2745B9C9C(void *a1, id a2)
{
  v3 = [a1 token];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = [v4 variable];

    return v5 == a2;
  }

  else
  {

    return 0;
  }
}

void sub_2745B9D2C()
{
  v5 = v0;
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  v8 = sub_2745BAF3C();
  if (v8)
  {
    v9 = v8;
    v10 = swift_allocObject();
    *(v10 + 16) = v7;
    v23[0] = v9;
    v23[1] = v4;
    v23[2] = v3;
    v23[3] = v2;
    v23[4] = v1;
    v11 = v7;
    v12 = v9;
    sub_2745B9938(v23);
    v13 = *(v5 + 40);
    if (v13 && (*(v5 + 32) & 1) == 0)
    {
      v14 = *(v5 + 24);
      v22 = v13;
      v15 = sub_27443C514();
      if (v15)
      {
        v16 = v15;
        [v15 finishEditingReturningToKeyboard_];
      }

      OUTLINED_FUNCTION_3();
      v17 = swift_allocObject();
      swift_weakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v10;
      v18[4] = v4;
      v18[5] = v3;
      v18[6] = v2;
      v18[7] = v1;
      OUTLINED_FUNCTION_3();
      v19 = swift_allocObject();
      swift_weakInit();
      objc_allocWithZone(WFVariableEditingOptions);
      v20 = v12;

      v21 = sub_2745AFA0C(v20, v14, sub_2745C4350, v18, sub_2745C4360, v19);
      sub_27443C58C(v21);
    }

    else
    {
      v22 = v12;
    }
  }
}

uint64_t sub_2745B9F20(void *a1, uint64_t a2, uint64_t a3, __n128 a4, double a5, double a6, double a7)
{
  v10 = a4.n128_u64[0];
  v13 = sub_2746382DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (!*(result + 16))
    {
    }

    sub_27463896C();
    v19 = sub_27463824C();
    (*(v14 + 8))(v16, v13);
    v20 = a1;
    sub_2745B91BC(v19, (a3 + 16), a1);

    sub_27463823C();
    sub_27463897C();
    if (a1)
    {
      v21 = v20;
      v22 = sub_2745BAF3C();
      if (v22)
      {
        v23 = v22;
        swift_beginAccess();
        v24 = *(a3 + 16);
        *(a3 + 16) = v21;
        v25 = v21;

        *&v29 = v23;
        *(&v29 + 1) = v10;
        *&v30 = a5;
        *(&v30 + 1) = a6;
        v31 = a7;
        v26 = v23;
        sub_2745B9938(&v29);

LABEL_9:
        v27 = sub_2745B9890();

        *(v27 + 24) = 1;
      }
    }

    v31 = 0.0;
    v29 = 0u;
    v30 = 0u;
    sub_2745B9938(&v29);
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_2745BA19C(char a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953458, &qword_27465D610);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953460, &qword_27465D618);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (*(result + 16))
    {

      if (a1)
      {
        sub_2745B98B8(&v15);
        if (v15)
        {
          v18 = v15;
          v19 = v16;
          v20 = v17;
          MEMORY[0x28223BE20](v11);
          *(&v14 - 2) = &v18;
          sub_2746388FC();
          if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
          {
            sub_27440CB1C(&v15, &unk_280953128, &qword_27465D178);
            sub_27440CB1C(v5, &qword_280953458, &qword_27465D610);
          }

          else
          {
            (*(v7 + 32))(v9, v5, v6);
            v12 = sub_2746388CC();
            v13 = __OFADD__(v12, 1);
            result = v12 + 1;
            if (v13)
            {
              __break(1u);
              return result;
            }

            sub_27463898C();
            sub_27440CB1C(&v15, &unk_280953128, &qword_27465D178);
            (*(v7 + 8))(v9, v6);
          }
        }
      }

      v22 = 0;
      memset(v21, 0, sizeof(v21));
      sub_2745B9938(v21);
    }
  }

  return result;
}

BOOL sub_2745BA444(void *a1, id *a2)
{
  v3 = [a1 token];
  v4 = [*a2 variable];

  return v3 == v4;
}

uint64_t sub_2745BA4A8()
{
  v8 = 0;
  v6[2] = &v8;
  v6[3] = &v7;
  v7 = MEMORY[0x277D84F90];
  sub_2745BA68C(sub_2745C4348, v6);
  v0 = *(v7 + 16);
  if (v0)
  {
    v1 = v7 + 40;
    do
    {
      v2 = sub_27463B66C();
      v3 = OUTLINED_FUNCTION_92_0();
      [v3 v4];

      v1 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_2745BA574(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = [a1 token];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = [v8 variable];

    if (v9)
    {
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();

      if (v10)
      {
        if (*a5 == 1)
        {
          sub_2745C388C(0, 0, a2, a3);
        }

        else
        {
          *a5 = 1;
        }
      }
    }
  }

  else
  {
  }
}

uint64_t sub_2745BA68C(uint64_t a1, uint64_t a2)
{
  [v2 length];
  OUTLINED_FUNCTION_39();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  OUTLINED_FUNCTION_39();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2745C42F4;
  *(v6 + 24) = v5;
  v12[4] = sub_2745C42FC;
  v12[5] = v6;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2745CDCCC;
  v12[3] = &block_descriptor_161_0;
  v7 = _Block_copy(v12);

  v8 = OUTLINED_FUNCTION_92_0();
  [v8 v9];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_2745BA80C()
{
  OUTLINED_FUNCTION_24();
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = v0;
    v5 = *(v0 + 40);
    if (v5)
    {
      v6 = v2;
      v7 = v1;
      v8 = v5;

      v9 = sub_27463895C();
      v10 = sub_27443C514();
      if (!v10)
      {
        goto LABEL_8;
      }

      v11 = v10;
      v12 = [v10 anchor];

      if (!v12)
      {
        goto LABEL_8;
      }

      v13 = [v12 variableProvider];
      v14 = *(v4 + 56);
      swift_unknownObjectRelease();
      if (!v14)
      {

        goto LABEL_9;
      }

      if (v13 != v14)
      {
        goto LABEL_7;
      }

      v15 = [v12 parameter];
      v16 = *(v4 + 48);
      if (v15)
      {
        v17 = v15;
        if (!v16)
        {

          goto LABEL_7;
        }

        v23 = sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
        v22 = v16;
        v18 = sub_27463BF7C();

        if ((v18 & 1) == 0)
        {
LABEL_7:

LABEL_8:
          v14 = 0;
LABEL_9:
          MEMORY[0x28223BE20](v10);
          v19[2] = v14;
          v19[3] = v4;
          v19[4] = v7;
          v19[5] = v9;
          v20 = v6 & 1;
          v21 = v3;
          sub_2745BA68C(sub_2745C4310, v19);

          goto LABEL_10;
        }
      }

      else if (v16)
      {
        goto LABEL_7;
      }

      v14 = [v12 variable];

      v10 = v14;
      goto LABEL_9;
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_23();
}

void sub_2745BAA04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, id a5, uint64_t a6, void *a7, void *a8, char a9)
{
  v14 = [a1 token];

  if (a5)
  {
    v15 = v14 == a5;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  v31 = [objc_opt_self() systemBlueColor];
  [a1 addObserver_];
  v17 = [a1 font];
  if (v17 && (v18 = v17, sub_274412734(0, &qword_280952AC8, 0x277D74300), v19 = a7, v20 = sub_27463BF7C(), v18, v19, (v20 & 1) != 0))
  {
    v21 = 0;
  }

  else
  {
    [a1 setFont_];
    v21 = 1;
  }

  v22 = [a1 surroundingTextFont];
  if (!v22 || (v23 = v22, sub_274412734(0, &qword_280952AC8, 0x277D74300), v24 = a8, v25 = sub_27463BF7C(), v23, v24, (v25 & 1) == 0))
  {
    [a1 setSurroundingTextFont_];
    v21 = 1;
  }

  v26 = [a1 tintColor];
  if (!v26)
  {
    v30 = v31;
    goto LABEL_18;
  }

  v27 = v26;
  sub_274412734(0, qword_28094A770, 0x277D75348);
  v28 = v31;
  v29 = sub_27463BF7C();

  if ((v29 & 1) == 0)
  {
LABEL_18:
    [a1 setTintColor_];
    v21 = 1;
  }

  if (v16 != [a1 isSelected])
  {
    [a1 setSelected_];
    v21 = 1;
  }

  if ([a1 isEmphasized] != (a9 & 1))
  {
    [a1 setEmphasized_];
LABEL_24:
    sub_27463894C();
    sub_274638F0C();

    return;
  }

  if (v21)
  {
    goto LABEL_24;
  }
}

void sub_2745BAD10()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v2 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  if (!*(v0 + 16))
  {
LABEL_8:
    OUTLINED_FUNCTION_23();
    return;
  }

  v9 = *(sub_2745B9890() + 24);

  if (v9 == 1)
  {
    sub_274638C2C();

    v10 = sub_274638D9C();
    v11 = sub_27463BBEC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = sub_27463890C();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&dword_2743F0000, v10, v11, "Committing attributed string: %@", v12, 0xCu);
      sub_27440CB1C(v13, &qword_280950E00, &qword_27464C680);
      MEMORY[0x277C5A270](v13, -1, -1);
      MEMORY[0x277C5A270](v12, -1, -1);
    }

    (*(v4 + 8))(v8, v2);
    v15 = *(v1 + 72);
    if (v15)
    {
      v16 = *(v1 + 80);

      v15(v17);
      sub_274406A94(v15, v16);
    }

    sub_2745B9890();
    OUTLINED_FUNCTION_15_19();

    *(v1 + 24) = 0;

    goto LABEL_8;
  }

  OUTLINED_FUNCTION_23();
}

id sub_2745BAF3C()
{
  v1 = v0[7];
  if (!v1)
  {
    return 0;
  }

  v2 = v0[6];
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_0();
  v4 = v3;
  v5 = v0[8];
  objc_allocWithZone(WFVariableEditingAnchor);
  v6 = v5;
  v7 = v4;
  swift_unknownObjectRetain();
  return sub_2745AFB44(v7, v1, v2, v5);
}

void sub_2745BAFEC(void *a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = sub_2746382DC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  if (a1)
  {
    if (a1 == 1)
    {
      if (v4[2])
      {

        sub_27463896C();
        v15 = sub_27463822C();
        v16 = [v15 attributedString];

        (*(v10 + 8))(v14, v8);
        v17 = [v16 string];

        v18 = sub_27463B6AC();
        v20 = v19;

        v21 = objc_opt_self();
        sub_2745C3938(v18, v20, v21);
        sub_274412734(0, &qword_280953450, 0x277CCA898);
        v22 = OUTLINED_FUNCTION_25_1();
        v24 = sub_2745A9480(v22, v23);
        [objc_allocWithZone(MEMORY[0x277D7CA28]) initWithAttributedString_];
        sub_27463821C();

        sub_27463897C();
      }
    }

    else
    {
      [a1 copy];
      sub_27463C13C();
      swift_unknownObjectRelease();
      sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
      swift_dynamicCast();
      *(sub_2745B9890() + 24) = 0;

      v33 = v4[11];
      if (v33)
      {
        v34 = v4[12];

        v35 = OUTLINED_FUNCTION_42_4();
        v33(v35);

        sub_274406A94(v33, v34);
      }

      else
      {
        OUTLINED_FUNCTION_42_4();
        sub_2745B99B4();
      }
    }
  }

  else
  {
    v25 = v4[7];
    if (v25)
    {
      v26 = v4[6];
      if (v26)
      {
        v27 = v4[5];
        if (v27)
        {
          v28 = v27;
          v29 = v26;
          swift_unknownObjectRetain();
          v30 = sub_27448DF90(v29);
          if (v30)
          {
            v31 = sub_2744896FC(*MEMORY[0x277D7D068], v30);

            v30 = v31;
          }

          v32 = swift_allocObject();
          v32[2] = v4;
          v32[3] = a2;
          v32[4] = a3;
          *&v37 = v25;
          *(&v37 + 1) = v30;
          v38 = sub_2745C4304;
          v39 = v32;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          swift_unknownObjectRetain();

          sub_27443CA58(&v37);

          swift_unknownObjectRelease();
        }
      }
    }
  }
}

void sub_2745BB350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(a2 + 88);
    if (v6)
    {
      v7 = *(a2 + 96);
      v8 = a1;
      sub_2744069F0(v6, v7);
      v6(v8, a3, a4);

      sub_274406A94(v6, v7);
    }

    else
    {
      v9 = a1;
      sub_2745B99B4();
    }
  }
}

uint64_t sub_2745BB444()
{

  swift_unknownObjectRelease();
  sub_274406A94(*(v0 + 72), *(v0 + 80));
  sub_274406A94(*(v0 + 88), *(v0 + 96));
  v1 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__autocompleter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953468, &qword_27465D740);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__syntaxHighlighter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953470, &qword_27465D748);
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__commitState;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953478, &qword_27465D750);
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__editingVariable;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953480, &qword_27465D758);
  OUTLINED_FUNCTION_7();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_2745BB5AC()
{
  sub_2745BB444();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2745BB62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2745BB878(319, &qword_280953108, a3, type metadata accessor for VariableAutocompleter, MEMORY[0x277CBCED0]);
  if (v3 <= 0x3F)
  {
    sub_2745BB878(319, &qword_280953110, 255, type metadata accessor for SyntaxHighlighter, MEMORY[0x277CBCED0]);
    if (v5 <= 0x3F)
    {
      sub_2745BB878(319, &qword_280953118, v4, type metadata accessor for CommitState, MEMORY[0x277CBCED0]);
      if (v6 <= 0x3F)
      {
        sub_2745C2124(319, &qword_280953120, &unk_280953128, &qword_27465D178, MEMORY[0x277CBCED0]);
        if (v7 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_2745BB878(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2745BB8FC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953480, &qword_27465D758);
  OUTLINED_FUNCTION_1();
  v33 = v3;
  v34 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_40_1();
  v32 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953478, &qword_27465D750);
  OUTLINED_FUNCTION_1();
  v30 = v7;
  v31 = v6;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953470, &qword_27465D748);
  OUTLINED_FUNCTION_1();
  v13 = v12;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953468, &qword_27465D740);
  OUTLINED_FUNCTION_1();
  v19 = v18;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v20);
  v22 = &v29 - v21;
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  v23 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__autocompleter;
  *&v35 = [objc_allocWithZone(type metadata accessor for VariableAutocompleter()) init];
  sub_274638F6C();
  (*(v19 + 32))(v1 + v23, v22, v17);
  v24 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__syntaxHighlighter;
  type metadata accessor for SyntaxHighlighter(0);
  swift_allocObject();
  *&v35 = sub_2745C22D8();
  sub_274638F6C();
  (*(v13 + 32))(v1 + v24, v16, v11);
  v25 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__commitState;
  type metadata accessor for CommitState();
  v26 = swift_allocObject();
  sub_2745B9364();
  *&v35 = v26;
  sub_274638F6C();
  (*(v30 + 32))(v1 + v25, v10, v31);
  v27 = OBJC_IVAR____TtC14WorkflowEditor27VariableTextEditorViewModel__editingVariable;
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953128, &qword_27465D178);
  v28 = v32;
  sub_274638F6C();
  (*(v33 + 32))(v1 + v27, v28, v34);
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745BBC64@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

void sub_2745BBCA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2)
  {

    v4 = sub_27463890C();
    MEMORY[0x28223BE20](v4);
    v5[2] = a1;
    v5[3] = v2;
    sub_2745BA68C(sub_2745C42EC, v5);
  }
}

uint64_t sub_2745BBD3C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  if (result == a5)
  {
    sub_27463894C();
    sub_274638F0C();

    *a4 = 1;
  }

  return result;
}

uint64_t sub_2745BBDFC()
{
  type metadata accessor for VariableTextEditorViewModel(0);
  v0 = swift_allocObject();
  sub_2745BB8FC();
  return v0;
}

uint64_t sub_2745BBE38()
{
  v1 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = v6 - v5;
  v8 = *(v0 + 200);
  if (*(v0 + 208) != 1)
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    OUTLINED_FUNCTION_42_4();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v3 + 8))(v7, v1);
    LOBYTE(v8) = v11;
  }

  return v8 & 1;
}

void sub_2745BBF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_24();
  v145 = v21;
  v142 = type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_1();
  v135 = v22;
  MEMORY[0x28223BE20](v23);
  v144 = v24;
  OUTLINED_FUNCTION_12_3(v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953348, &qword_27465D530);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  v27 = v120 - v26;
  v122.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953350, &qword_27465D538);
  OUTLINED_FUNCTION_1();
  v123.i64[0] = v28;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v29);
  v120[1] = v120 - v30;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953358, &qword_27465D540);
  OUTLINED_FUNCTION_1();
  v127 = v31;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v33);
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953360, &qword_27465D548);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v35);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953368, &qword_27465D550);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v37);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953370, &qword_27465D558);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v39);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953378, &qword_27465D560);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v41);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953380, &qword_27465D568);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_12_3(v43);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953388, &qword_27465D570);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_40_1();
  v141 = v45;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953390, &qword_27465D578);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_40_1();
  v143 = v47;
  v48 = v27;
  sub_2745BCAC4(v20, v27);
  v49 = *(v20 + 152);
  v139 = v20;
  v50 = *(v20 + 160);
  v51 = type metadata accessor for VariableTextEditorViewModel(0);
  v52 = sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  v148 = v49;
  v149 = v52;
  v147 = v50;
  v146 = v51;
  sub_27463920C();
  v53 = sub_2745B9840();

  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v54 = type metadata accessor for VariableAutocompleter();
  v55 = sub_2745C3BE0();
  OUTLINED_FUNCTION_2_33();
  v59 = sub_2745C1FA0(v56, v57, v58, &unk_27465D338);
  v60 = v121;
  sub_27463A58C();

  sub_27440CB1C(v48, &qword_280953348, &qword_27465D530);
  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v151 = v60;
  v152.i64[0] = v54;
  v152.i64[1] = v55;
  v153.i64[0] = v59;
  v61 = v120[2];
  swift_getOpaqueTypeConformance2();
  sub_27463A5CC();

  v62 = OUTLINED_FUNCTION_62_3();
  v63(v62);

  sub_27463920C();
  sub_2745B98B8(&v150);

  v64 = v150;
  if (v150)
  {
    v65 = v150;
  }

  sub_27463920C();
  sub_2745B98B8(&v151);

  v66.i64[0] = 0;
  v67.i64[0] = v151;
  v68 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v67, v66)).i64[0], 0);
  v123 = vandq_s8(v152, v68);
  v122 = vandq_s8(v153, v68);
  v69 = v151 == 0;

  v70 = v128;
  (*(v127 + 32))(v128, v61, v129);
  OUTLINED_FUNCTION_18_14();
  v71 = v122;
  *v72 = v123;
  v72[1] = v71;
  v72[2].i8[0] = v69;
  v72[2].i64[1] = v64;
  v73 = v139;
  sub_2745C3E08(v139, v138);
  v74 = OUTLINED_FUNCTION_28_16(&unk_288371A68);
  OUTLINED_FUNCTION_27_12(v74);
  v75 = v70;
  v76 = v131;
  sub_27445EA84(v75, v131, &qword_280953360, &qword_27465D548);
  OUTLINED_FUNCTION_18_14();
  *v77 = sub_2745C3E6C;
  v77[1] = v74;
  v77[2] = 0;
  v77[3] = 0;
  v78 = *(v73 + 64);
  v79 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v79, v80);
  v81 = OUTLINED_FUNCTION_28_16(&unk_288371A90);
  OUTLINED_FUNCTION_27_12(v81);
  v82 = v76;
  v83 = v132;
  sub_27445EA84(v82, v132, &qword_280953368, &qword_27465D550);
  OUTLINED_FUNCTION_18_14();
  *v84 = v78;
  v84[1] = sub_2745C4008;
  v84[2] = v81;
  v85 = v134;
  v86 = v134 + *(v126 + 36);
  sub_2744C68C0();
  v87 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v87, v88);
  v89 = OUTLINED_FUNCTION_28_16(&unk_288371AB8);
  OUTLINED_FUNCTION_27_12(v89);
  v90 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809533F8, &qword_27465D5B0) + 36));
  *v90 = sub_2745C4020;
  v90[1] = v89;
  sub_27445EA84(v83, v85, &qword_280953370, &qword_27465D558);
  v91 = sub_27443C514();
  v92 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v92, v93);
  v94 = OUTLINED_FUNCTION_28_16(&unk_288371AE0);
  OUTLINED_FUNCTION_27_12(v94);
  v95 = v85;
  v96 = v137;
  sub_27445EA84(v95, v137, &qword_280953378, &qword_27465D560);
  v97 = (v96 + *(v133 + 36));
  *v97 = v91;
  v97[1] = sub_2745C4038;
  v97[2] = v94;
  v98 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v98, v99);
  v100 = OUTLINED_FUNCTION_28_16(&unk_288371B08);
  OUTLINED_FUNCTION_27_12(v100);
  OUTLINED_FUNCTION_39();
  v101 = swift_allocObject();
  *(v101 + 16) = sub_2745C40B8;
  *(v101 + 24) = v100;
  v102 = v96;
  v103 = v141;
  sub_27445EA84(v102, v141, &qword_280953380, &qword_27465D568);
  OUTLINED_FUNCTION_32_11();
  *v104 = sub_27444A550;
  v104[1] = v101;

  sub_27463899C();
  v105 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v105, v106);
  v107 = OUTLINED_FUNCTION_28_16(&unk_288371B58);
  OUTLINED_FUNCTION_27_12(v107);
  OUTLINED_FUNCTION_39();
  v108 = swift_allocObject();
  *(v108 + 16) = sub_2745C4144;
  *(v108 + 24) = v107;
  v109 = v103;
  v110 = v143;
  sub_27445EA84(v109, v143, &qword_280953388, &qword_27465D570);
  OUTLINED_FUNCTION_32_11();
  *v111 = sub_2745956B4;
  v111[1] = v108;
  sub_27463920C();
  v112 = sub_2745B9890();

  v113 = *(v112 + 16);

  v114 = OUTLINED_FUNCTION_24_5();
  sub_2745C3E08(v114, v115);
  v116 = OUTLINED_FUNCTION_28_16(&unk_288371BA8);
  OUTLINED_FUNCTION_27_12(v116);
  v117 = v145;
  sub_27445EA84(v110, v145, &qword_280953390, &qword_27465D578);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953400, &unk_27465D5B8);
  *(v117 + *(v118 + 52)) = v113;
  v119 = (v117 + *(v118 + 56));
  *v119 = sub_2745C415C;
  v119[1] = v116;
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745BCAC4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809533E8, &unk_27465D5A0);
  v3 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v27 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953410, &qword_27465D5C8);
  MEMORY[0x28223BE20](v30);
  v32 = &v27 - v6;
  v7 = type metadata accessor for VariableTextEditor(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809533B8, &qword_27465D588);
  MEMORY[0x28223BE20](v31);
  v11 = &v27 - v10;
  if (*a1 != 3 && *a1)
  {

    sub_2745BCF7C();
    LODWORD(v29) = a1[24];
    v23 = *(a1 + 15);
    v24 = *(a1 + 14);
    v25 = v23;
    sub_2746387AC();
    v26 = v34;
    (*(v3 + 16))(v32, v5, v34);
    swift_storeEnumTagMultiPayload();
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8, &unk_27465D5A0, MEMORY[0x277D7D348]);
    sub_274639DDC();
    return (*(v3 + 8))(v5, v26);
  }

  else
  {

    v27 = sub_2745BCF7C();
    v28 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = *(a1 + 14);
    v13 = *(a1 + 15);
    v29 = v8;
    v14 = v12;
    v15 = v13;
    sub_2746387BC();
    KeyPath = swift_getKeyPath();
    v17 = v28;
    sub_2745C3E08(a1, v28);
    v18 = (*(v29 + 80) + 16) & ~*(v29 + 80);
    v19 = swift_allocObject();
    sub_27448E4A4(v17, v19 + v18);
    v20 = v32;
    v21 = &v11[*(v31 + 36)];
    *v21 = KeyPath;
    v21[1] = sub_2745C4248;
    v21[2] = v19;
    sub_27445EAD4(v11, v20, &qword_2809533B8, &qword_27465D588);
    swift_storeEnumTagMultiPayload();
    sub_2745C3D1C();
    sub_27440CA78(&qword_2809533E0, &unk_2809533E8, &unk_27465D5A0, MEMORY[0x277D7D348]);
    sub_274639DDC();
    return sub_27440CB1C(v11, &qword_2809533B8, &qword_27465D588);
  }
}

id sub_2745BCF7C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E998, &unk_274653160);
  inited = swift_initStackObject();
  v4 = MEMORY[0x277D740C0];
  *(inited + 16) = xmmword_2746486A0;
  v5 = *v4;
  *(inited + 32) = *v4;
  v6 = objc_opt_self();

  v7 = v5;
  v8 = [v6 wf_placeholderTextColor];
  v9 = sub_274412734(0, qword_28094A770, 0x277D75348);
  *(inited + 40) = v8;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 64) = v9;
  *(inited + 72) = v10;
  v11 = v10;
  v12 = sub_27463895C();
  *(inited + 104) = sub_274412734(0, &qword_280952AC8, 0x277D74300);
  *(inited + 80) = v12;
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key, &unk_2746473EC);
  v13 = sub_27463B4DC();
  v14 = objc_allocWithZone(MEMORY[0x277CCA898]);
  return sub_2745A9D88(v1, v2, v13);
}

uint64_t sub_2745BD114(uint64_t a1)
{
  v2 = sub_2746395EC();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_27463990C();
}

uint64_t sub_2745BD1DC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  if (v2)
  {
    if (v2 == 1)
    {
      v3 = result;
      v4 = sub_2746395EC();
      v7 = *(v4 - 8);
      (*(v7 + 8))(v3, v4);
      v5 = *MEMORY[0x277CDFA88];
      v6 = *(v7 + 104);

      return v6(v3, v5, v4);
    }

    else
    {
      type metadata accessor for WFParameterSyntaxHighlightingType(0);
      result = sub_27463C6EC();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_2745BD2E4(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2745BAFEC(v6, a2, a3, v8);
  }

  return result;
}

void sub_2745BD360(uint64_t a1, void *a2, uint64_t a3)
{
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    return;
  }

  v5 = v4;
  v9 = a2;
  v10 = [v5 token];
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = [v6 variable];

    if (v7)
    {
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_2745B9D2C();
      }

      return;
    }

    v8 = v9;
  }

  else
  {

    v8 = v10;
  }
}

uint64_t sub_2745BD4C8(uint64_t a1)
{
  v61 = type metadata accessor for VariableTextEditor(0);
  v58 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = v2;
  v60 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_27463918C();
  MEMORY[0x28223BE20](v3 - 8);
  v57 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_274639ABC();
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x28223BE20](v5);
  v65 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  v7 = sub_27463920C();
  v8 = *(a1 + 232);
  if (*(a1 + 240) == 1)
  {
    v9 = v8;
  }

  else
  {

    sub_27463BC0C();
    v10 = sub_27463A2FC();
    v11 = v65;
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27447FCE8(v8, 0);
    (*(v66 + 8))(v11, v67);
    v8 = v68;
  }

  v12 = *(v7 + 48);
  *(v7 + 48) = v8;

  v13 = sub_27463920C();
  v14 = *(a1 + 176);
  v15 = *(v13 + 40);
  *(v13 + 40) = v14;
  v16 = v14;

  v17 = sub_27463920C();
  v18 = *(a1 + 192);
  *(v17 + 16) = v18;
  v64 = v18;

  sub_27463920C();
  v19 = *(a1 + 216);
  v62 = *(a1 + 224);
  v63 = v19;
  if (v62 == 1)
  {
    v20 = swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v21 = sub_27463A2FC();
    sub_274638CEC();

    v22 = v65;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v19, 0);
    (*(v66 + 8))(v22, v67);
    v20 = v68;
  }

  sub_2745B97E8(v20);

  v23 = sub_27463920C();
  *(v23 + 24) = *(a1 + 56);
  *(v23 + 32) = 0;

  v24 = sub_27463920C();
  sub_2744C6DD8();
  if (v69 == 1)
  {
    sub_27440CB1C(&v68, &qword_28094E090, &qword_274651B80);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_27440CB1C(&v68, &qword_280950E50, &qword_274658F10);
  }

  v26 = *(v24 + 64);
  *(v24 + 64) = Strong;

  v27 = sub_27463920C();
  v28 = *(a1 + 96);
  v29 = *(v27 + 72);
  v30 = *(v27 + 80);
  *(v27 + 72) = *(a1 + 88);
  *(v27 + 80) = v28;

  sub_274406A94(v29, v30);

  v31 = sub_27463920C();
  v32 = *(a1 + 72);
  v33 = *(a1 + 80);
  v34 = *(v31 + 88);
  v35 = *(v31 + 96);
  *(v31 + 88) = v32;
  *(v31 + 96) = v33;
  sub_2744069F0(v32, v33);
  sub_274406A94(v34, v35);

  sub_27463920C();
  v36 = sub_2745B9840();

  sub_2745BEB28(v37);

  sub_27463920C();
  v38 = sub_2745B9840();

  if (v62)
  {
    v39 = swift_unknownObjectRetain();
  }

  else
  {
    v40 = v63;

    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    v42 = v65;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v40, 0);
    (*(v66 + 8))(v42, v67);
    v39 = v68;
  }

  sub_2745BEA48(v39);

  sub_27463920C();
  v43 = sub_2745B9840();

  sub_2745BEB90(*(a1 + 104));

  sub_27463920C();
  sub_2745B9868();

  sub_2745C0ACC(*(a1 + 64));

  sub_27463920C();
  sub_2745B9868();

  v44 = v57;
  sub_2744C68C0();
  sub_2745C0E34(v44);

  swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  sub_27463891C();

  v45 = swift_allocObject();
  sub_27463920C();
  swift_weakInit();

  v46 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
  v47 = v60;
  sub_2745C3E08(a1, v60);
  v48 = (*(v58 + 80) + 32) & ~*(v58 + 80);
  v49 = swift_allocObject();
  *(v49 + 16) = v45;
  *(v49 + 24) = v46;
  sub_27448E4A4(v47, v49 + v48);

  v50 = v46;
  sub_2746388EC();

  if (v62)
  {
    v51 = swift_unknownObjectRetain();
  }

  else
  {
    v52 = v63;

    sub_27463BC0C();
    v53 = sub_27463A2FC();
    sub_274638CEC();

    v54 = v65;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v52, 0);
    (*(v66 + 8))(v54, v67);
    v51 = v68;
  }

  v68 = v51;
  return sub_27463893C();
}

uint64_t sub_2745BDE28(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = sub_2745B9890();

    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t sub_2745BDE94(void *a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2745BA4A8();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2745BBE38();
    sub_2745BA80C();
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2745B9868();

    sub_2745C0F04(a1);
  }

  return result;
}

uint64_t sub_2745BDF98(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  sub_2745B9868();

  sub_2745C0ACC(v2);
}

uint64_t sub_2745BE060(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463918C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  sub_2745B9868();

  (*(v4 + 16))(v6, a1, v3);
  sub_2745C0E34(v6);
}

void sub_2745BE1C0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  v2 = sub_27463890C();
  v3 = [objc_opt_self() systemFontOfSize:14.0 weight:*MEMORY[0x277D74420]];
  sub_2745BBE38();
  sub_2745BA80C();
}

uint64_t sub_2745BE2DC(uint64_t a1)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  sub_2745BAD10();
}

void sub_2745BE380(uint64_t a1)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  v1 = sub_2745B9840();

  sub_2745BEE70();
}

uint64_t sub_2745BE440(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VariableTextEditorViewModel(0);
  sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
  sub_27463920C();
  sub_2745BAD10();
}

void sub_2745BE4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  sub_27445EAD4(a1, v10, &unk_28094A230, &qword_27464D1B0);
  if (v11)
  {
    sub_274412734(0, &qword_280953970, 0x277D7D7C8);
    if (swift_dynamicCast())
    {
      a5(v9, a2, a3, a4);
    }
  }

  else
  {
    sub_27440CB1C(v10, &unk_28094A230, &qword_27464D1B0);
  }
}

uint64_t sub_2745BE5C8(void *a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      return OUTLINED_FUNCTION_25_1();
    }

    v4 = [a1 name];
  }

  else
  {
    v1 = sub_27463B70C("Select Variable", 15);
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22(&qword_2809492C0);
    }

    OUTLINED_FUNCTION_62_3();
    v2 = sub_27463B66C();
    OUTLINED_FUNCTION_62_3();
    sub_27463B66C();
    OUTLINED_FUNCTION_19_8();

    v4 = OUTLINED_FUNCTION_34_9(v3, sel_localizedStringForKey_value_table_);
  }

  sub_27463B6AC();

  return OUTLINED_FUNCTION_25_1();
}

id sub_2745BE6B4(void *a1)
{
  if (!a1)
  {
    v1 = [objc_opt_self() clearBackground];
    v5 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v4 = OUTLINED_FUNCTION_12_21();
    return sub_27446D8F0(v4, v3, v1);
  }

  if (a1 == 1)
  {
    v1 = [objc_opt_self() clearBackground];
    v2 = objc_allocWithZone(MEMORY[0x277D7A158]);
    v3 = 0x800000027468F320;
    v4 = 0xD000000000000017;
    return sub_27446D8F0(v4, v3, v1);
  }

  return [a1 icon];
}

void *sub_2745BE78C(void *a1)
{
  if (a1 < 2)
  {
    return 0;
  }

  v1 = a1;
  v2 = a1;
  return v1;
}

BOOL sub_2745BE7C4(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
  OUTLINED_FUNCTION_62_3();
  return sub_27463BF7C() & 1;
}

uint64_t sub_2745BE848(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = 1;
    return MEMORY[0x277C58EA0](v2);
  }

  if (a2 == 1)
  {
    v2 = 2;
    return MEMORY[0x277C58EA0](v2);
  }

  MEMORY[0x277C58EA0](0);
  return sub_27463BF8C();
}

uint64_t sub_2745BE8A0(uint64_t a1)
{
  sub_27463C74C();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x277C58EA0](0);
      sub_27463BF8C();
      return sub_27463C7AC();
    }

    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x277C58EA0](v2);
  return sub_27463C7AC();
}

uint64_t sub_2745BE93C(uint64_t a1)
{
  v2 = *v1;
  sub_27463C74C();
  sub_2745BE848(v4, v2);
  return sub_27463C7AC();
}

void *sub_2745BE98C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    sub_2745BEE70();
    [a1 removeVariableObserver_];
    goto LABEL_8;
  }

  v4 = result;
  result = swift_unknownObjectRelease();
  if (a1)
  {
    if (v4 == a1)
    {
      return result;
    }

    goto LABEL_6;
  }

  sub_2745BEE70();
LABEL_8:
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    [result addVariableObserver_];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2745BEA48(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  sub_2745BE98C(Strong);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t sub_2745BEAB4(uint64_t a1)
{

  sub_2744D41F8(v2, a1);
  LOBYTE(a1) = v3;

  if ((a1 & 1) == 0)
  {

    return sub_2745BEE70();
  }

  return result;
}

uint64_t sub_2745BEB28(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes) = a1;
  sub_2745BEAB4(v2);
}

uint64_t sub_2745BEB70(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) != (result & 1))
  {
    return sub_2745BEE70();
  }

  return result;
}

uint64_t sub_2745BEB90(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus);
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) = a1;
  return sub_2745BEB70(v2);
}

uint64_t sub_2745BEBA8()
{
  if (*(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions) == 1)
  {
    sub_2745BEEEC();
  }

  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester) suggestedVariables];
  sub_274412734(0, &qword_28094BD90, 0x277D7C9F8);
  v2 = sub_27463B81C();

  v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables);
  if (v3 >> 62)
  {

    v4 = sub_27463C57C();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_27463C6CC();
    v4 = v3;
  }

  sub_27445C410(v4);

  sub_27445C410(v5);
  return v2;
}

void sub_2745BECD8(uint64_t a1, uint64_t a2)
{
  if (sub_27463B72C() >= 2)
  {
    v2 = sub_2745BEBA8();
    v3 = sub_274453594();
    for (i = 0; ; ++i)
    {
      if (v3 == i)
      {

        return;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x277C58B20](i, v2);
      }

      else
      {
        if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(v2 + 8 * i + 32);
      }

      v6 = v5;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v7 = [v5 nameIncludingPropertyName];
      sub_27463B6AC();

      sub_27463B6CC();

      sub_27463B6CC();
      LOBYTE(v7) = sub_27463B77C();

      if (v7)
      {
        sub_27463C41C();
        sub_27463C46C();
        sub_27463C47C();
        sub_27463C42C();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_2745BEE70()
{
  type metadata accessor for VariableAutocompleter();
  OUTLINED_FUNCTION_2_33();
  sub_2745C1FA0(v1, v2, v3, &unk_27465D458);
  sub_274638EFC();
  sub_274638F3C();

  *(v0 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions) = 1;
  return result;
}

id sub_2745BEEEC()
{
  v1 = v0;
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions] = 0;
  v2 = *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes];
  v35 = MEMORY[0x277D84F90];
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);

      __break(1u);
      return result;
    }

    if (v8 >= v6)
    {
      break;
    }

    v5 = *(v2 + 56 + 8 * v8);
    ++v7;
    if (v5)
    {
      v7 = v8;
      do
      {
LABEL_8:
        v34 = *(*(v2 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v5)))));
        v9 = v34;
        sub_2745BF344(&v33);

        if (v33)
        {
          MEMORY[0x277C57F30]();
          v10 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v10 >> 1)
          {
            OUTLINED_FUNCTION_0_8(v10);
            sub_27463B85C();
          }

          sub_27463B8AC();
        }

        v5 &= v5 - 1;
      }

      while (v5);
    }
  }

  v35 = sub_2745C39C4(v11);
  sub_2745C28B0(&v35);

  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_specialVariables] = v35;

  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = MEMORY[0x277D84F90];
  v14 = &selRef_maximumDate;
  if (Strong)
  {
    v15 = [Strong availableVariableNames];
    swift_unknownObjectRelease();
    v16 = sub_27463B81C();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = *(v16 + 16);
  if (v17)
  {
    v35 = v13;
    sub_27463C44C();
    v18 = (v16 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v21 = swift_unknownObjectWeakLoadStrong();
      objc_allocWithZone(MEMORY[0x277D7C9E8]);

      sub_2745C24C4(v19, v20, v21, 0);
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      sub_27463C42C();
      v18 += 2;
      --v17;
    }

    while (v17);

    v22 = v35;
    v14 = &selRef_maximumDate;
  }

  else
  {

    v22 = MEMORY[0x277D84F90];
  }

  *&v1[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables] = v22;

  v23 = *&v1[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester];
  swift_unknownObjectWeakLoadStrong();
  v24 = OUTLINED_FUNCTION_92_0();
  [v24 v25];
  swift_unknownObjectRelease();
  v26 = swift_unknownObjectWeakLoadStrong();
  if (v26)
  {
    v27 = [v26 v14[286]];
    swift_unknownObjectRelease();
    if (!v27)
    {
      sub_27463B81C();
      v27 = sub_27463B7FC();
    }
  }

  else
  {
    v27 = 0;
  }

  v28 = OUTLINED_FUNCTION_92_0();
  [v28 v29];

  v30 = swift_unknownObjectWeakLoadStrong();
  if (v30)
  {
    v31 = [v30 availableOutputActions];
    OUTLINED_FUNCTION_15_19();
    swift_unknownObjectRelease();
    if (!v1)
    {
      v1 = sub_274412734(0, &qword_28094E040, 0x277D7C098);
      sub_27463B81C();
      sub_27463B7FC();
      OUTLINED_FUNCTION_15_19();
    }
  }

  else
  {
    v1 = 0;
  }

  [v23 setOutputActions_];

  return [v23 availableVariablesDidChange];
}

id sub_2745BF344@<X0>(void *a3@<X8>)
{
  v4 = sub_27463B6AC();
  v6 = v5;
  if (v4 == sub_27463B6AC() && v6 == v7)
  {

    goto LABEL_28;
  }

  v9 = sub_27463C6BC();

  if (v9)
  {
LABEL_28:
    result = [objc_allocWithZone(MEMORY[0x277D7C158]) init];
    goto LABEL_32;
  }

  v10 = sub_27463B6AC();
  v12 = v11;
  if (v10 == sub_27463B6AC() && v12 == v13)
  {

    goto LABEL_30;
  }

  v15 = sub_27463C6BC();

  if (v15)
  {
LABEL_30:
    v35 = MEMORY[0x277D7C1E0];
LABEL_31:
    v36 = objc_allocWithZone(v35);
    result = sub_2745C2730(0);
    goto LABEL_32;
  }

  v16 = sub_27463B6AC();
  v18 = v17;
  if (v16 == sub_27463B6AC() && v18 == v19)
  {

    goto LABEL_34;
  }

  v21 = sub_27463C6BC();

  if (v21)
  {
LABEL_34:
    v35 = MEMORY[0x277D7C2D8];
    goto LABEL_31;
  }

  v22 = sub_27463B6AC();
  v24 = v23;
  if (v22 == sub_27463B6AC() && v24 == v25)
  {

    goto LABEL_36;
  }

  v27 = sub_27463C6BC();

  if (v27)
  {
LABEL_36:
    Strong = swift_unknownObjectWeakLoadStrong();
    v38 = objc_allocWithZone(MEMORY[0x277D7C888]);
    result = sub_2745C2578(Strong, 0);
    goto LABEL_32;
  }

  v28 = sub_27463B6AC();
  v30 = v29;
  if (v28 == sub_27463B6AC() && v30 == v31)
  {

    goto LABEL_38;
  }

  v33 = sub_27463C6BC();

  if (v33)
  {
LABEL_38:
    v35 = MEMORY[0x277D7C350];
    goto LABEL_31;
  }

  result = 0;
LABEL_32:
  *a3 = result;
  return result;
}

id sub_2745BF698()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_allowedVariableTypes] = MEMORY[0x277D84FA0];
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus] = 0;
  swift_weakInit();
  v1 = OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_suggester;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277D7CA40]) init];
  v2 = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_namedVariables] = MEMORY[0x277D84F90];
  *&v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_specialVariables] = v2;
  v0[OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_needsUpdateSuggestions] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for VariableAutocompleter();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2745BF798()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VariableAutocompleter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745BF858@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for VariableAutocompleter();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2745BF894@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D7D3D8];
  sub_2746389BC();
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_2745BF900(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_27463B9CC();
  v3[5] = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v5 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745BF998, v5, v4);
}

char *sub_2745BF998()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_2745BECD8(v2, v1);
  v4 = v3;
  v5 = sub_274453594();
  if (v5)
  {
    v6 = v5;
    v16 = MEMORY[0x277D84F90];
    result = sub_2744514B4(0, v5 & ~(v5 >> 63), 0);
    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v8 = 0;
    v9 = v16;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x277C58B20](v8, v4);
      }

      else
      {
        v10 = *(v4 + 8 * v8 + 32);
      }

      v11 = v10;
      v13 = *(v16 + 16);
      v12 = *(v16 + 24);
      if (v13 >= v12 >> 1)
      {
        v14 = OUTLINED_FUNCTION_0_8(v12);
        sub_2744514B4(v14, v13 + 1, 1);
      }

      ++v8;
      *(v16 + 16) = v13 + 1;
      *(v16 + 8 * v13 + 32) = v11;
    }

    while (v6 != v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v15 = v0[1];

  return v15(v9);
}

void sub_2745BFAFC()
{
  OUTLINED_FUNCTION_24();
  v1 = v0;
  v39[3] = v2;
  v39[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953300, &qword_27465D508);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = v39 - v4;
  v39[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953308, &qword_27465D510);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  v8 = v39 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953310, &qword_27465D518);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = (v39 - v10);
  v39[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280953318, &qword_27465D520);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = v39 - v13;
  v15 = sub_27463872C();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v21 = v20 - v19;
  if (v1)
  {
    if (v1 != 1)
    {
      v34 = v1;
      sub_27463871C();
      (*(v17 + 16))(v11, v21, v15);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_33();
      sub_2745C1FA0(v35, 255, v36, MEMORY[0x277D7D300]);
      sub_274639DDC();
      sub_27445EAD4(v14, v8, &unk_280953318, &qword_27465D520);
      swift_storeEnumTagMultiPayload();
      sub_2745C3A58();
      sub_2745C3B18();
      OUTLINED_FUNCTION_11_17();
      sub_274639DDC();
      v37 = OUTLINED_FUNCTION_62_3();
      sub_27440CB1C(v37, v38, &qword_27465D520);
      (*(v17 + 8))(v21, v15);
      goto LABEL_9;
    }

    v39[7] = sub_27463AC2C();
    sub_27463B70C("Plus or Minus", 13);
    if (qword_2809492C0 != -1)
    {
      OUTLINED_FUNCTION_2_22(&qword_2809492C0);
    }

    v22 = qword_28094BB00;
    OUTLINED_FUNCTION_15_2();
    v23 = sub_27463B66C();
    OUTLINED_FUNCTION_15_2();
    v24 = sub_27463B66C();

    v25 = [v22 localizedStringForKey:v23 value:v24 table:0];

    v26 = sub_27463B6AC();
    v28 = v27;

    v39[5] = v26;
    v39[6] = v28;
    sub_274412BBC();
    sub_27463A7CC();

    sub_27445EAD4(v5, v8, &qword_280953300, &qword_27465D508);
    swift_storeEnumTagMultiPayload();
    sub_2745C3A58();
    sub_2745C3B18();
    OUTLINED_FUNCTION_11_17();
    sub_274639DDC();
    v29 = v5;
    v30 = &qword_280953300;
    v31 = &qword_27465D508;
  }

  else
  {
    OUTLINED_FUNCTION_12_21();
    *v11 = sub_27463AC2C();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_33();
    sub_2745C1FA0(v32, 255, v33, MEMORY[0x277D7D300]);
    OUTLINED_FUNCTION_15_19();

    sub_274639DDC();
    sub_27445EAD4(v14, v8, &unk_280953318, &qword_27465D520);
    swift_storeEnumTagMultiPayload();
    sub_2745C3A58();
    sub_2745C3B18();
    OUTLINED_FUNCTION_11_17();
    sub_274639DDC();

    v29 = OUTLINED_FUNCTION_62_3();
    v31 = &qword_27465D520;
  }

  sub_27440CB1C(v29, v30, v31);
LABEL_9:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2745C0018()
{
  *(v1 + 16) = v0;
  sub_27463B9CC();
  *(v1 + 24) = sub_27463B9BC();
  OUTLINED_FUNCTION_19_8();
  v3 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2745C00AC, v3, v2);
}

uint64_t sub_2745C00AC()
{
  v34 = v1;
  v2 = *(v1 + 16);

  v3 = MEMORY[0x277D84F90];
  v4 = MEMORY[0x277D84F90];
  if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor21VariableAutocompleter_showPlusMinus) != 1)
  {
    goto LABEL_4;
  }

  sub_274450F00();
  v4 = v5;
  v0 = *(v5 + 16);
  v6 = *(v5 + 24);
  v7 = (v0 + 1);
  if (v0 >= v6 >> 1)
  {
    goto LABEL_28;
  }

  while (1)
  {
    *(v4 + 16) = v7;
    *(v4 + 8 * v0 + 32) = 1;
LABEL_4:

    v8 = OUTLINED_FUNCTION_15_2();
    v10 = sub_2744896FC(v8, v9);

    if (v10)
    {
      if (Strong = swift_unknownObjectWeakLoadStrong()) != 0 && (v12 = [Strong hasAvailableActionOutputVariables], swift_unknownObjectRelease(), (v12) || (, v13 = OUTLINED_FUNCTION_15_2(), v15 = sub_2744896FC(v13, v14), , v15))
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274450F00();
          v4 = v30;
        }

        v0 = *(v4 + 16);
        v16 = *(v4 + 24);
        if (v0 >= v16 >> 1)
        {
          OUTLINED_FUNCTION_0_8(v16);
          sub_274450F00();
          v4 = v31;
        }

        *(v4 + 16) = v0 + 1;
        *(v4 + 8 * v0 + 32) = 0;
      }
    }

    v17 = sub_2745BEBA8();
    v18 = sub_274453594();
    if (!v18)
    {

      goto LABEL_24;
    }

    v19 = v18;
    v33 = v3;
    v7 = &v33;
    sub_2744514B4(0, v18 & ~(v18 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_28:
    OUTLINED_FUNCTION_0_8(v6);
    sub_274450F00();
    v4 = v29;
  }

  v32 = v4;
  v20 = 0;
  v3 = v33;
  do
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v21 = MEMORY[0x277C58B20](v20, v17);
    }

    else
    {
      v21 = *(v17 + 8 * v20 + 32);
    }

    v22 = v21;
    v33 = v3;
    v24 = *(v3 + 16);
    v23 = *(v3 + 24);
    if (v24 >= v23 >> 1)
    {
      v25 = OUTLINED_FUNCTION_0_8(v23);
      sub_2744514B4(v25, v24 + 1, 1);
      v3 = v33;
    }

    ++v20;
    *(v3 + 16) = v24 + 1;
    *(v3 + 8 * v24 + 32) = v22;
  }

  while (v19 != v20);

  v4 = v32;
LABEL_24:

  v33 = v4;
  sub_27445C450(v3);
  v26 = v33;
  v27 = *(v1 + 8);

  return v27(v26);
}

uint64_t sub_2745C03A0()
{
  v0 = sub_27463B70C("Insert Variable", 15);
  if (qword_2809492C0 != -1)
  {
    OUTLINED_FUNCTION_2_22(&qword_2809492C0);
  }

  OUTLINED_FUNCTION_62_3();
  v1 = sub_27463B66C();
  OUTLINED_FUNCTION_62_3();
  sub_27463B66C();
  OUTLINED_FUNCTION_19_8();

  v3 = OUTLINED_FUNCTION_34_9(v2, sel_localizedStringForKey_value_table_);

  sub_27463B6AC();
  return OUTLINED_FUNCTION_25_1();
}

uint64_t sub_2745C0458(__n128 a1)
{
  v2 = v1;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_27463885C();
    swift_allocObject();
    type metadata accessor for VariableAutocompleter();
    OUTLINED_FUNCTION_2_33();
    sub_2745C1FA0(v4, v5, v6, &unk_27465D338);
    v7 = v2;
    Strong = sub_27463886C();
    swift_weakAssign();
  }

  return Strong;
}

uint64_t sub_2745C0520(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2745C05C4;

  return sub_2745BF900(a1, a2);
}

uint64_t sub_2745C05C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2745C06F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2745C4434;

  return sub_2745C0018();
}

uint64_t sub_2745C0784(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    type metadata accessor for SyntaxHighlighter(0);
    sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter, &unk_27465D2F0);
    sub_274638EFC();
    sub_274638F3C();
  }

  return result;
}

void sub_2745C0824(uint64_t a1)
{
  v3 = sub_27463918C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  v10 = *(v1 + 16);
  if (v10 != a1)
  {
    if (v10 == 1)
    {
      v11 = [objc_allocWithZone(WFSyntaxHighlightingPluginManager) init];
      [v11 setSyntaxHighlightingType_];
      v12 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
      swift_beginAccess();
      (*(v4 + 16))(v9, v1 + v12, v3);
      (*(v4 + 104))(v6, *MEMORY[0x277CDF3D0], v3);
      LOBYTE(v12) = sub_27463917C();
      v13 = *(v4 + 8);
      v13(v6, v3);
      v13(v9, v3);
      [v11 setSyntaxHighlightingAppearance_];
      v14 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = v11;

      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager) = 0;

      *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices) = 0;

      type metadata accessor for SyntaxHighlighter(0);
      sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter, &unk_27465D2F0);
      sub_274638EFC();
      sub_274638F3C();
    }
  }
}

void sub_2745C0ACC(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_2745C0784(a1);
  *(v1 + 16) = a1;

  sub_2745C0824(v3);
}

uint64_t sub_2745C0B14(uint64_t a1)
{
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v6, v2);
  v7 = sub_27463917C();
  result = (*(v3 + 8))(v5, v2);
  if ((v7 & 1) == 0)
  {
    type metadata accessor for SyntaxHighlighter(0);
    sub_2745C1FA0(&unk_280953440, 255, type metadata accessor for SyntaxHighlighter, &unk_27465D2F0);
    sub_274638EFC();
    sub_274638F3C();
  }

  return result;
}

void sub_2745C0C8C()
{
  v1 = sub_27463918C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v7, v0 + v9, v1);
    (*(v2 + 104))(v4, *MEMORY[0x277CDF3D0], v1);
    v10 = v8;
    v11 = sub_27463917C();
    v12 = *(v2 + 8);
    v12(v4, v1);
    v12(v7, v1);
    [v10 setSyntaxHighlightingAppearance_];
  }
}

uint64_t sub_2745C0E34(uint64_t a1)
{
  sub_2745C0B14(a1);
  v3 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  swift_beginAccess();
  v4 = sub_27463918C();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  sub_2745C0C8C();
  return (*(v5 + 8))(a1, v4);
}

void sub_2745C0F04(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (v2)
  {
    v10 = v2;
    sub_2745C12D4(a1);
    v4 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
    if (v4)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      *(v5 + 24) = a1;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_2745C42BC;
      *(v6 + 24) = v5;
      aBlock[4] = sub_2745C42C4;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2745C11FC;
      aBlock[3] = &block_descriptor_152;
      v7 = _Block_copy(aBlock);

      v8 = a1;

      [v10 highlightAllTokensWithCallback_];

      _Block_release(v7);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        __break(1u);
      }
    }

    else
    {
    }
  }
}

void sub_2745C10C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, id a6)
{
  if (*(a5 + 16) <= a1)
  {
    return;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a5 + 8 * a1 + 32);
  v7 = v6 + a2;
  if (__OFADD__(v6, a2))
  {
LABEL_9:
    __break(1u);
    return;
  }

  [a6 removeAttribute:*MEMORY[0x277D740C0] range:{v7, a3}];
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key, &unk_2746473EC);
  v10 = sub_27463B4BC();
  [a6 addAttributes:v10 range:{v7, a3}];
}

uint64_t sub_2745C11FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 32);
  type metadata accessor for Key(0);
  sub_2745C1FA0(&qword_280953420, 255, type metadata accessor for Key, &unk_2746473EC);
  v9 = sub_27463B4CC();
  v8(a2, a3, a4, v9);
}

void sub_2745C12D4(void *a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_pluginManager);
  if (!v2)
  {
    return;
  }

  v4 = v2;
  v37 = [a1 string];
  if (!v37)
  {
LABEL_63:
    __break(1u);
    return;
  }

  v5 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices;
  v6 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
  if (v6)
  {
    v7 = *(v6 + 16);
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2745C1670(a1);
  *(v1 + v5) = v8;

  v9 = *(v8 + 2);
  v10 = [v37 length];
  if (__OFSUB__(v10, 1))
  {
    goto LABEL_59;
  }

  v36 = v9;
  v11 = v9 - v7;
  v12 = sub_2745C1954(0, v10 - 1);
  v14 = v12;
  v15 = v13;
  if (v11 < 1)
  {
    if (v11 < 0)
    {
      if (v13 < 1)
      {
        [v4 didRemoveLineAtIndex_];
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if (__OFADD__(v12, 1))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = -v11;
      do
      {
        [v4 didRemoveLineAtIndex_];
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    do
    {
      [v4 didAddLineAtIndex_];
      --v11;
    }

    while (v11);
  }

  if (v15 < 0)
  {
    goto LABEL_50;
  }

LABEL_17:
  if (v15)
  {
    v17 = &v8[8 * v14 + 40];
    v35 = v15;
    v18 = v15;
    v19 = v14;
    while ((v14 & 0x8000000000000000) == 0)
    {
      v20 = *(v8 + 2);
      if (v19 >= v20)
      {
        goto LABEL_52;
      }

      v21 = *(v17 - 1);
      if (v36 - 1 == v19)
      {
        v22 = [v37 length];
      }

      else
      {
        if (v19 + 1 >= v20)
        {
          goto LABEL_57;
        }

        v22 = *v17;
      }

      if (__OFSUB__(v22, v21))
      {
        goto LABEL_53;
      }

      v23 = [v37 substringWithRange_];
      if (!v23)
      {
        sub_27463B6AC();
        v23 = sub_27463B66C();
      }

      v24 = [v4 didChangeLine:v19 string:v23];

      ++v19;
      v17 += 8;
      if (!--v18)
      {
        v15 = v35;
        v25 = v36;
        goto LABEL_31;
      }
    }

    goto LABEL_51;
  }

  v24 = 0;
  v25 = v36;
LABEL_31:
  v26 = __OFADD__(v14, v15);
  v27 = v14 + v15;
  if (v26)
  {
    goto LABEL_60;
  }

  if (v25 < v27)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v28 = &v8[8 * v27 + 40];
  v29 = v25 - 1;
  for (i = v27; v25 != i && (v24 & 1) != 0; ++i)
  {
    if (v27 < 0)
    {
      goto LABEL_54;
    }

    v31 = *(v8 + 2);
    if (i >= v31)
    {
      goto LABEL_55;
    }

    v32 = *(v28 - 1);
    if (v29 == i)
    {
      v33 = [v37 length];
    }

    else
    {
      if (i + 1 >= v31)
      {
        goto LABEL_58;
      }

      v33 = *v28;
    }

    if (__OFSUB__(v33, v32))
    {
      goto LABEL_56;
    }

    v34 = [v37 substringWithRange_];
    if (!v34)
    {
      sub_27463B6AC();
      v34 = sub_27463B66C();
      v25 = v36;
    }

    v24 = [v4 didChangeLine:i string:v34];

    v28 += 8;
  }
}

char *sub_2745C1670(void *a1)
{
  result = [a1 string];
  if (result)
  {
    v2 = result;
    if (![result length])
    {

      return MEMORY[0x277D84F90];
    }

    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84F90];
    result = [v2 length];
    v4 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      v7[4] = sub_2745C429C;
      v7[5] = v3;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 1107296256;
      v7[2] = sub_2745C1894;
      v7[3] = &block_descriptor_37;
      v5 = _Block_copy(v7);

      [v2 enumerateSubstringsInRange:0 options:v4 usingBlock:{0, v5}];

      _Block_release(v5);
      swift_beginAccess();
      v6 = *(v3 + 16);

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2745C17F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  sub_2745C27C8(sub_274450574);
  v10 = *(*(a8 + 16) + 16);
  result = sub_2745C283C(v10, sub_274450574);
  v12 = *(a8 + 16);
  *(v12 + 16) = v10 + 1;
  *(v12 + 8 * v10 + 32) = a5;
  *(a8 + 16) = v12;
  return result;
}

uint64_t sub_2745C1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = sub_27463B6AC();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);
}

uint64_t sub_2745C1954(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_lineIndices);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v3 + 16);
  if (!v4 || !(result | a2))
  {
    return 0;
  }

  v5 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
    goto LABEL_37;
  }

  v6 = __OFSUB__(v5, 1);
  v7 = v5 - 1;
  if (v6)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v8 = v4 - 1;
  if (v8)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = *(v3 + 32);
    v13 = v3 + 40;
    v14 = 1;
    v15 = 1;
    do
    {
      v16 = *(v13 + 8 * v11);
      v18 = v12 > result || v16 <= result;
      if (!v18)
      {
        v10 = v11;
      }

      v20 = v7 < v12 || v7 >= v16;
      if (!v20)
      {
        v9 = v11;
      }

      v15 &= v18;
      v14 &= v20;
      v12 = *(v13 + 8 * v11++);
    }

    while (v8 != v11);
    if (v15)
    {
      result = v8;
    }

    else
    {
      result = v10;
    }

    if (!v14)
    {
      v8 = v9;
    }
  }

  else
  {
    result = 0;
  }

  v6 = __OFSUB__(v8, result);
  v21 = v8 - result;
  if (v6)
  {
    goto LABEL_38;
  }

  if (__OFADD__(v21, 1))
  {
LABEL_39:
    __break(1u);
  }

  return result;
}

uint64_t sub_2745C1A38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditorP33_F0032956713936C6E76227416DC3D09A17SyntaxHighlighter_colorScheme;
  v2 = sub_27463918C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_2745C1AB8()
{
  v0 = sub_2745C1A38();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2745C1B14(uint64_t a1)
{
  result = sub_27463918C();
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

void sub_2745C1C18(uint64_t a1)
{
  sub_2745106C4(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for WFVariableResultType(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for WFParameterSyntaxHighlightingType(319);
      if (v3 <= 0x3F)
      {
        sub_2745C2124(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_274431930();
          if (v5 <= 0x3F)
          {
            type metadata accessor for WFTextFieldKeyboardType(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for WFTextFieldAutocapitalizationType(319);
              if (v7 <= 0x3F)
              {
                sub_2745C1F08(319);
                if (v8 <= 0x3F)
                {
                  sub_2745C1FE8(319);
                  if (v9 <= 0x3F)
                  {
                    sub_2745C2080(319);
                    if (v10 <= 0x3F)
                    {
                      sub_27453EAA0();
                      if (v11 <= 0x3F)
                      {
                        sub_2745C2124(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0, MEMORY[0x277CDF468]);
                        if (v12 <= 0x3F)
                        {
                          sub_2745C2124(319, &unk_2809532C8, &qword_28094AE30, &unk_27465D220, MEMORY[0x277CDF468]);
                          if (v13 <= 0x3F)
                          {
                            sub_2745BB878(319, &qword_280949EF8, 255, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                            if (v14 <= 0x3F)
                            {
                              sub_2745C2124(319, &unk_280951050, &qword_28094E090, &qword_274651B80, MEMORY[0x277CDF468]);
                              if (v15 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_2745C1F08(uint64_t a1)
{
  if (!qword_280953298)
  {
    type metadata accessor for VariableTextEditorViewModel(255);
    sub_2745C1FA0(&qword_2809532A0, 255, type metadata accessor for VariableTextEditorViewModel, &unk_27465D490);
    v1 = sub_27463922C();
    if (!v2)
    {
      atomic_store(v1, &qword_280953298);
    }
  }
}

uint64_t sub_2745C1FA0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_2745C1FE8(uint64_t a1)
{
  if (!qword_2809532A8)
  {
    type metadata accessor for WorkflowEditorOptions(255);
    sub_2745C1FA0(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_2809532A8);
    }
  }
}

void sub_2745C2080(uint64_t a1)
{
  if (!qword_2809532B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809532C0, &qword_27464F610);
    sub_27440CA78(&unk_28094CFF0, &qword_2809532C0, &qword_27464F610, MEMORY[0x277D7D3D0]);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_2809532B8);
    }
  }
}

void sub_2745C2124(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for VariableTextEditor.Style(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}