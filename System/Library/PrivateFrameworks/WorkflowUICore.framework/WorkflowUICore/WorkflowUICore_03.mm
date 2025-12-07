double sub_274B27664@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *EnvironmentValues.textEditingObserver.getter()
{
  sub_274B276C0();

  return sub_274BF37A4();
}

unint64_t sub_274B276C0()
{
  result = qword_28098AF50;
  if (!qword_28098AF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098AF50);
  }

  return result;
}

uint64_t EnvironmentValues.textEditingObserver.setter(uint64_t a1)
{
  sub_274AD8D30(a1, v3, &qword_28098AF58, &qword_274BFD558);
  sub_274B276C0();
  sub_274BF37B4();
  return sub_274AFA708(a1, &qword_28098AF58, &qword_274BFD558);
}

void (*EnvironmentValues.textEditingObserver.modify(void *a1))(char **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x88uLL);
  *a1 = v3;
  v3[15] = v1;
  v3[16] = sub_274B276C0();
  sub_274BF37A4();
  return sub_274B27878;
}

void sub_274B27878(char **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    OUTLINED_FUNCTION_34();
    sub_274AD8D30(v2 + 40, v2 + 80, &qword_28098AF58, &qword_274BFD558);
    sub_274BF37B4();
    OUTLINED_FUNCTION_20();
    sub_274AFA708(v3, v4, v5);
  }

  else
  {
    OUTLINED_FUNCTION_34();
    sub_274BF37B4();
  }

  OUTLINED_FUNCTION_20();
  sub_274AFA708(v6, v7, v8);

  free(v2);
}

id sub_274B27950(char a1)
{
  result = [v1 isScrollEnabled];
  if (result && *(v1 + qword_28098B178) != (a1 & 1))
  {

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_274B279D4(char a1)
{
  v2 = *(v1 + qword_28098B178);
  *(v1 + qword_28098B178) = a1;
  return sub_274B27950(v2);
}

uint64_t sub_274B279EC@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_28098B180;
  swift_beginAccess();
  return sub_274AD8D30(v1 + v3, a1, &qword_28098AF58, &qword_274BFD558);
}

uint64_t sub_274B27A54(uint64_t a1)
{
  v3 = qword_28098B180;
  swift_beginAccess();
  sub_274B29F14(a1, v1 + v3);
  return swift_endAccess();
}

id sub_274B27AB4(void *a1, double a2, double a3, double a4, double a5)
{
  v11 = *v5;
  v12 = *MEMORY[0x277D85000];
  *(v5 + qword_28098B178) = 1;
  v13 = v5 + qword_28098B180;
  *v13 = 0u;
  *(v13 + 1) = 0u;
  *(v13 + 4) = 0;
  *(v5 + qword_28098B188) = 0;
  swift_weakInit();
  v15 = type metadata accessor for UIKitTextView(0, *((v12 & v11) + 0x50), *((v12 & v11) + 0x58), v14);
  v23.receiver = v5;
  v23.super_class = v15;
  v16 = objc_msgSendSuper2(&v23, sel_initWithFrame_textContainer_, a1, a2, a3, a4, a5);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  v20 = *MEMORY[0x277D741D8];
  v21 = [v18 textStorage];
  [v19 addObserver:v18 selector:sel_processedEditing name:v20 object:v21];

  return v18;
}

void sub_274B27CC0()
{
  *(v0 + qword_28098B178) = 1;
  v1 = v0 + qword_28098B180;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v0 + qword_28098B188) = 0;
  swift_weakInit();
  sub_274BF5AC4();
  __break(1u);
}

uint64_t sub_274B27D9C(void *a1)
{
  v1 = a1;
  v6 = sub_274B27DD0(v5, v1, v2, v3, v4);

  return v6 & 1;
}

id sub_274B27DD0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UIKitTextView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v8.receiver = v5;
  v8.super_class = v6;
  return objc_msgSendSuper2(&v8, sel_isScrollEnabled);
}

void sub_274B27E40(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v7 = a1;
  sub_274B27E94(v3, v6, v7, v4, v5);
}

id sub_274B27E94(char a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for UIKitTextView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v11.receiver = v5;
  v11.super_class = v7;
  v8 = objc_msgSendSuper2(&v11, sel_isScrollEnabled);
  v10.receiver = v5;
  v10.super_class = v7;
  objc_msgSendSuper2(&v10, sel_setScrollEnabled_, a1 & 1);
  return sub_274B27F40(v8);
}

id sub_274B27F40(char a1)
{
  v2 = a1 & 1;
  result = [v1 isScrollEnabled];
  if (result != v2)
  {

    return [v1 invalidateIntrinsicContentSize];
  }

  return result;
}

id sub_274B27FA0()
{
  result = [v0 isScrollEnabled];
  if (result && *(v0 + qword_28098B178) == 1)
  {

    return [v0 invalidateIntrinsicContentSize];
  }

  return result;
}

void sub_274B28000(void *a1)
{
  v1 = a1;
  sub_274B27FA0();
}

id sub_274B28048()
{
  v1 = [v0 textStorage];

  return v1;
}

id sub_274B28080()
{
  v1 = [v0 layoutManager];

  return v1;
}

double sub_274B280C8(uint64_t a1)
{
  *(v1 + qword_28098B188) = a1;

  return result;
}

double sub_274B280F0(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

double sub_274B28138(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for UIKitTextView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v10.receiver = v5;
  v10.super_class = v7;
  objc_msgSendSuper2(&v10, sel_willMoveToWindow_, a1);
  result = sub_274B280B8();
  if (a1)
  {
    if (!v8)
    {
      return result;
    }

    sub_274BA2180(0xD000000000000014, 0x8000000274BFD690, 0x656C6269736956, 0xE700000000000000);
  }

  else
  {
    if (!v8)
    {
      return result;
    }

    sub_274BA21C8(0xD000000000000014, 0x8000000274BFD690, 0x656C6269736956, 0xE700000000000000);
  }

  return result;
}

void sub_274B28238(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = a1;
  sub_274B28138(a3, v8, v9, v6, v7);
}

id sub_274B282A4()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  if (*(v0 + qword_28098B188))
  {

    sub_274BA2180(0xD000000000000014, 0x8000000274BFD690, 0x74696E696544, 0xE600000000000000);
  }

  sub_274B28A98();
  v3 = type metadata accessor for UIKitTextView(0, *(v1 + 80), *(v1 + 88), v2);
  v5.receiver = v0;
  v5.super_class = v3;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_274B283A8(uint64_t a1)
{
  sub_274AFA708(a1 + qword_28098B180, &qword_28098AF58, &qword_274BFD558);

  return swift_weakDestroy();
}

void sub_274B2845C(uint64_t a1, uint64_t (*a2)(id), SEL *a3)
{
  v6 = v3;
  OUTLINED_FUNCTION_18_1();
  v9 = v8;
  if (!sub_274B280E0() || (v10 = a2([v3 selectedRange]), , (v10 & 1) == 0))
  {
    sub_274AD8D30(a1, v22, &qword_28098B300, &qword_274BFDB20);
    v12 = v23;
    if (v23)
    {
      __swift_project_boxed_opaque_existential_1(v22, v23);
      OUTLINED_FUNCTION_0_5();
      v14 = v13;
      MEMORY[0x28223BE20](v15);
      OUTLINED_FUNCTION_4();
      v18 = v17 - v16;
      (*(v14 + 16))(v17 - v16);
      v19 = sub_274BF5C04();
      (*(v14 + 8))(v18, v12);
      __swift_destroy_boxed_opaque_existential_0(v22);
    }

    else
    {
      v19 = 0;
    }

    v20 = type metadata accessor for UIKitTextView(0, *(v9 + 80), *(v9 + 88), v11);
    v21.receiver = v6;
    v21.super_class = v20;
    objc_msgSendSuper2(&v21, *a3, v19);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_274B28664(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), SEL *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_274B2845C(v11, a4, a5);

  return sub_274AFA708(v11, &qword_28098B300, &qword_274BFDB20);
}

id sub_274B286FC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UIKitTextView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v17.receiver = v5;
  v17.super_class = v6;
  v7 = objc_msgSendSuper2(&v17, sel_becomeFirstResponder);
  if (v7)
  {
    sub_274B28B0C();
    v8 = [objc_opt_self() defaultCenter];
    [v8 addObserver:v5 selector:sel_scrollToVisible name:*MEMORY[0x277D76BA8] object:0];
  }

  if (*(v5 + qword_28098B178) == 1)
  {
    sub_274B279EC(v15);
    if (v16)
    {
      sub_274B1875C(v15, v12);
      sub_274AFA708(v15, &qword_28098AF58, &qword_274BFD558);
      v9 = v13;
      v10 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v10 + 8))(v9, v10);
      __swift_destroy_boxed_opaque_existential_0(v12);
    }

    else
    {
      sub_274AFA708(v15, &qword_28098AF58, &qword_274BFD558);
    }
  }

  return v7;
}

uint64_t sub_274B28878(void *a1)
{
  v1 = a1;
  v6 = sub_274B286FC(v5, v1, v2, v3, v4);

  return v6 & 1;
}

id sub_274B288AC(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for UIKitTextView(0, *((*MEMORY[0x277D85000] & *v5) + 0x50), *((*MEMORY[0x277D85000] & *v5) + 0x58), a5);
  v16.receiver = v5;
  v16.super_class = v6;
  v7 = objc_msgSendSuper2(&v16, sel_resignFirstResponder);
  sub_274B28A98();
  if (sub_274B280E0())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20, &qword_274BFDB50);
    sub_274AFA930(qword_28098B360, &qword_28098DE20, &qword_274BFDB50, MEMORY[0x277CBCE18]);
    sub_274BF2D14();
  }

  sub_274B279EC(v14);
  if (v15)
  {
    sub_274B1875C(v14, v11);
    sub_274AFA708(v14, &qword_28098AF58, &qword_274BFD558);
    v8 = v12;
    v9 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    (*(v9 + 16))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    sub_274AFA708(v14, &qword_28098AF58, &qword_274BFD558);
  }

  return v7;
}

uint64_t sub_274B28A64(void *a1)
{
  v1 = a1;
  v6 = sub_274B288AC(v5, v1, v2, v3, v4);

  return v6 & 1;
}

void sub_274B28A98()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76BA8] object:0];
}

void sub_274B28B0C()
{
  v1 = [v0 superview];
  if (v1)
  {
    v5 = v1;
    v2 = sub_274B28C10();
    if (v2)
    {
      v3 = v2;
      [v0 frame];
      [v5 convertRect:v3 toCoordinateSpace:?];
      [v3 scrollRectToVisible:1 animated:?];

      v4 = v3;
    }

    else
    {
      v4 = v5;
    }
  }
}

void sub_274B28BC8(void *a1)
{
  v1 = a1;
  sub_274B28B0C();
}

void *sub_274B28C10()
{
  v1 = [v0 superview];
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (v2)
    {
      v3 = v2;
      if ([v2 isScrollEnabled])
      {
        break;
      }
    }

    v4 = [v1 superview];

    v1 = v4;
    if (!v4)
    {
      return 0;
    }
  }

  return v3;
}

double sub_274B28D48@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

double sub_274B28D5C@<D0>(uint64_t a1@<X8>)
{
  sub_274B28D48(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_274B28DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_274B29418();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

double EnvironmentValues.overrideTextFieldEdgeInsets.getter@<D0>(uint64_t a1@<X8>)
{
  sub_274B28E58();
  sub_274BF37A4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

unint64_t sub_274B28E58()
{
  result = qword_28098AF60[0];
  if (!qword_28098AF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098AF60);
  }

  return result;
}

double sub_274B28EAC@<D0>(uint64_t a1@<X8>)
{
  EnvironmentValues.overrideTextFieldEdgeInsets.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*EnvironmentValues.overrideTextFieldEdgeInsets.modify(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  *(v3 + 11) = sub_274B28E58();
  sub_274BF37A4();
  v4 = v3[72];
  v5 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v5;
  v3[32] = v4;
  return sub_274B28FF0;
}

void sub_274B28FF0(char **a1)
{
  v1 = *a1;
  v2 = (*a1)[32];
  v3 = *(*a1 + 1);
  *(v1 + 40) = *v1;
  *(v1 + 56) = v3;
  *(v1 + 72) = v2;
  sub_274BF37B4();

  free(v1);
}

uint64_t sub_274B29094(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B290DC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_274B2911C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B292D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore19TextEditingObserver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274B2934C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 177))
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

uint64_t sub_274B2938C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *(result + 176) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 177) = 1;
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

    *(result + 177) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274B29418()
{
  result = qword_28098B298;
  if (!qword_28098B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B2A0, qword_274BFDB00);
    sub_274B2949C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B298);
  }

  return result;
}

unint64_t sub_274B2949C()
{
  result = qword_28098B2A8;
  if (!qword_28098B2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2A8);
  }

  return result;
}

double sub_274B294F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_274B294FC()
{
  result = qword_28098B2B0;
  if (!qword_28098B2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2B0);
  }

  return result;
}

unint64_t sub_274B29550()
{
  result = qword_28098DE10;
  if (!qword_28098DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE10);
  }

  return result;
}

void sub_274B295B0(uint64_t result, void *a2)
{
  if (a2 != 2)
  {
    sub_274B295C0(result, a2);
  }
}

void sub_274B295C0(uint64_t a1, void *a2)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_274B295D0()
{
  result = qword_28098B2D0;
  if (!qword_28098B2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2D0);
  }

  return result;
}

unint64_t sub_274B29624()
{
  result = qword_28098B2D8;
  if (!qword_28098B2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B2D8);
  }

  return result;
}

double block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_274B296C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = sub_274BDA830(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B330, &qword_274BFDB38);
    sub_274BF5A74();

    sub_274B29EBC((*(v9 + 56) + 32 * v7), a3);
    sub_274BF5A84();
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_274B297A8(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  sub_274BDA978(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B348, &qword_274BFDB48);
  OUTLINED_FUNCTION_33(v6);
  OUTLINED_FUNCTION_30();
  sub_274AD8430(0, &unk_28098B350, 0x277D79FC8);
  OUTLINED_FUNCTION_9_8();
  sub_274B29ECC(v7, v8, &unk_274BF95C0);
  OUTLINED_FUNCTION_20();
  sub_274BF5A84();
  *v3 = v2;
  return v4;
}

uint64_t sub_274B29880(uint64_t a1)
{
  v3 = v1;
  v4 = *v1;
  sub_274BDA978(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_27();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B338, &qword_274BFDB40);
  OUTLINED_FUNCTION_33(v6);
  OUTLINED_FUNCTION_30();
  sub_274BF4D24();
  OUTLINED_FUNCTION_9_8();
  sub_274B29ECC(v7, v8, &unk_274BF95C0);
  OUTLINED_FUNCTION_20();
  sub_274BF5A84();
  *v3 = v2;
  return v4;
}

uint64_t sub_274B29948(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_274BF5834();
  }

  else
  {
    return sub_274BF5804();
  }
}

void sub_274B299A8(uint64_t a1, uint64_t a2, char a3)
{
  v5 = v3;
  v7 = a2;
  v8 = a1;
  v9 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (v9 < 0)
      {
        v10 = *v5;
      }

      else
      {
        v10 = v9 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x277C65120](a1, a2, v10);
      sub_274AD8430(0, &qword_28098B318, off_279EF2E58);

      swift_dynamicCast();
      sub_274B93648(v10, v18);

      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v5;
  if (a3)
  {
    sub_274AD8430(0, &qword_28098B318, off_279EF2E58);
    if (sub_274BF5854() == *(v13 + 36))
    {
      sub_274BF5864();
      swift_dynamicCast();
      v4 = v18;
      v14 = sub_274BF5614();
      v15 = ~(-1 << *(v13 + 32));
      while (1)
      {
        v8 = v14 & v15;
        if (((*(v13 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v16 = *(*(v13 + 48) + 8 * v8);
        v17 = sub_274BF5624();

        if (v17)
        {
          goto LABEL_18;
        }

        v14 = v8 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (v8 < 0 || 1 << *(v13 + 32) <= v8)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(v13 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(v13 + 36) != v7)
  {
    __break(1u);
LABEL_18:
  }

  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_274B929AC();
  }

  sub_274B937BC(v8, v12);
  *v5 = v13;
}

void sub_274B29C0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for Key(0);
  sub_274B29ECC(&qword_280989580, type metadata accessor for Key, &unk_274BF957C);
  v7 = sub_274BF4DE4();

  [a4 setAttributes:v7 range:{a2, a3}];
}

double sub_274B29CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a3 + 24))(a2, a3);
  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = v11;
  v13 = (*(a3 + 32))(a2, a3);
  if (!v13)
  {

LABEL_5:
    v25 = 0u;
    v26 = 0u;
    v19 = 1;
    goto LABEL_6;
  }

  v14 = v13;
  sub_274B2390C(v12, v13);
  v25 = v16;
  v26 = v15;
  v23 = v18;
  v24 = v17;

  v19 = 0;
  *&v20 = v25;
  *(&v20 + 1) = v23;
  v25 = v20;
  *&v20 = v26;
  *(&v20 + 1) = v24;
  v26 = v20;
LABEL_6:
  (*(v7 + 8))(v10, a2);
  v22 = v25;
  result = *&v26;
  *a4 = v26;
  *(a4 + 16) = v22;
  *(a4 + 32) = v19;
  return result;
}

uint64_t sub_274B29EB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

_OWORD *sub_274B29EBC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_274B29ECC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274B29F14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF58, &qword_274BFD558);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_274B29F84(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_13_3()
{

  return sub_274BF3CE4();
}

double OUTLINED_FUNCTION_37()
{

  return result;
}

uint64_t type metadata accessor for LLMAttributionView(uint64_t a1)
{
  result = qword_28098B450;
  if (!qword_28098B450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B2A188(uint64_t a1)
{
  sub_274BF1A24();
  if (v1 <= 0x3F)
  {
    sub_274BF1A54();
    if (v2 <= 0x3F)
    {
      type metadata accessor for WFAskLLMFeedbackPresenter(319);
      if (v3 <= 0x3F)
      {
        sub_274B0B928(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_274B2A258(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_274B2A298(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B2A310@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  sub_274BF3454();
  OUTLINED_FUNCTION_1();
  v44 = v3;
  v45 = v4;
  MEMORY[0x28223BE20](v3);
  v43 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_274BF3344();
  OUTLINED_FUNCTION_1();
  v38 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4A0, &qword_274BFDD70);
  OUTLINED_FUNCTION_1();
  v36 = v11;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v35 - v13;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4A8, &qword_274BFDD78);
  OUTLINED_FUNCTION_1();
  v42 = v15;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B0, &qword_274BFDD80);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  v35 = &v35 - v20;
  v39 = v2;
  v48 = v2;
  v47 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B4B8, &qword_274BFDD88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE80, &qword_274BFDD90);
  sub_274B2C574();
  sub_274AFA930(&qword_28098AE88, &qword_28098AE80, &qword_274BFDD90, MEMORY[0x277CE14C0]);
  sub_274BF4064();
  sub_274BF3334();
  v21 = sub_274AFA930(&qword_28098B4D8, &qword_28098B4A0, &qword_274BFDD70, MEMORY[0x277CDE5B0]);
  v22 = sub_274B2C6A8(&qword_28098B4E0, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
  v23 = v37;
  sub_274BF44F4();
  (*(v38 + 8))(v9, v23);
  (*(v36 + 8))(v14, v10);
  v24 = v43;
  sub_274BF3444();
  v51 = v10;
  v52 = v23;
  v53 = v21;
  v54 = v22;
  swift_getOpaqueTypeConformance2();
  sub_274B2C6A8(&qword_28098AE20, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v25 = v35;
  v26 = v40;
  v27 = v44;
  sub_274BF41D4();
  (*(v45 + 8))(v24, v27);
  (*(v42 + 8))(v18, v26);
  KeyPath = swift_getKeyPath();
  v29 = v25 + *(v41 + 36);
  *v29 = KeyPath;
  *(v29 + 8) = 2;
  v30 = (v39 + *(type metadata accessor for LLMAttributionView(0) + 28));
  v32 = *v30;
  v31 = v30[1];
  v49 = v32;
  v50 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A300, &qword_274BFBA98);
  sub_274BF47A4();
  v33 = v53;
  sub_274B2C770();
  sub_274BF4144();

  return sub_274AE8718(v25);
}

uint64_t sub_274B2A88C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v52 = a2;
  v3 = type metadata accessor for LLMAttributionView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AE98, &qword_274BFD3D8);
  v51 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v44 - v11;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v53 = &v44 - v14;
  sub_274BF4FE4("Feedback", 8, v13);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v15 = qword_28098C7C0;
  v47 = qword_28098C7C0;
  v16 = sub_274BF4F04();
  v17 = sub_274BF4F04();

  v18 = [v15 localizedStringForKey:v16 value:v17 table:0];

  v19 = sub_274BF4F44();
  v21 = v20;

  sub_274B2C974(a1, &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v23 = swift_allocObject();
  v24 = sub_274B2C500(&v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v46 = v5;
  v54 = v19;
  v55 = v21;
  MEMORY[0x28223BE20](v24);
  v44 = a1;
  *(&v44 - 4) = &v54;
  *(&v44 - 3) = 0xD000000000000016;
  *(&v44 - 2) = 0x8000000274C09FD0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEA8, &qword_274BFD3E0);
  sub_274AFA930(&qword_28098AEB0, &qword_28098AEA8, &qword_274BFD3E0, MEMORY[0x277CDEFF0]);
  sub_274BF47C4();

  sub_274BF4FE4("About", 5);
  v25 = sub_274BF4F04();
  v26 = sub_274BF4F04();

  v27 = [v47 localizedStringForKey:v25 value:v26 table:0];

  v28 = sub_274BF4F44();
  v30 = v29;

  v31 = v45;
  sub_274B2C974(v44, v45);
  v32 = swift_allocObject();
  v33 = sub_274B2C500(v31, v32 + v22);
  v54 = v28;
  v55 = v30;
  MEMORY[0x28223BE20](v33);
  *(&v44 - 4) = &v54;
  *(&v44 - 3) = 0x7269632E6F666E69;
  *(&v44 - 2) = 0xEB00000000656C63;
  v34 = v48;
  sub_274BF47C4();

  v35 = v51;
  v36 = *(v51 + 16);
  v37 = v49;
  v38 = v53;
  v36(v49, v53, v6);
  v39 = v50;
  v36(v50, v34, v6);
  v40 = v52;
  v36(v52, v37, v6);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AEB8, &qword_274BFD3E8);
  v36(&v40[*(v41 + 48)], v39, v6);
  v42 = *(v35 + 8);
  v42(v34, v6);
  v42(v38, v6);
  v42(v39, v6);
  return (v42)(v37, v6);
}

void sub_274B2AE94(uint64_t a1)
{
  v1 = sub_274BF1F54();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() sharedContext];
  type metadata accessor for LLMAttributionView(0);
  sub_274BF1A04();
  v6 = sub_274BF1ED4();
  (*(v2 + 8))(v4, v1);
  [v5 openURL_];
}

uint64_t sub_274B2AFBC@<X0>(uint64_t a1@<X8>, unint64_t a2@<X0>)
{
  sub_274B2B02C(a2, v9);
  v3 = v9[0];
  v4 = v9[1];
  v5 = v10;
  v6 = v11;
  v7 = sub_274BF3FD4();
  result = swift_getKeyPath();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = result;
  *(a1 + 40) = v7;
  return result;
}

uint64_t sub_274B2B02C@<X0>(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v103 = a2;
  v3 = sub_274BF32F4();
  v104 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LLMAttributionView(0);
  v102 = a1;
  sub_274BF19E4();
  sub_274BF4704();
  v6 = sub_274BF4114();
  v8 = v7;
  v10 = v9;
  sub_274BF3F14();
  v11 = sub_274BF4074();
  v13 = v12;
  v15 = v14;
  sub_274AFA1D0(v6, v8, v10 & 1);

  sub_274BF32E4();
  v16 = v3;
  v17 = sub_274BF40A4();
  v19 = v18;
  v21 = v20;
  sub_274AFA1D0(v11, v13, v15 & 1);

  v22 = *(v104 + 8);
  v104 += 8;
  v101 = v22;
  v22(v5, v16);
  sub_274BF38A4();
  v23 = sub_274BF40E4();
  v25 = v24;
  LOBYTE(v11) = v26;
  v98 = sub_274BF40B4();
  v97 = v27;
  v95 = v28;
  v96 = v29;
  sub_274AFA1D0(v23, v25, v11 & 1);

  sub_274AFA1D0(v17, v19, v21 & 1);

  v105 = sub_274B2B7D8(v102);
  v106 = v30;
  v102 = sub_274ADDF6C();
  v31 = sub_274BF4104();
  v33 = v32;
  LOBYTE(v11) = v34;
  sub_274BF3F34();
  v35 = sub_274BF4074();
  v37 = v36;
  LOBYTE(v25) = v38;
  sub_274AFA1D0(v31, v33, v11 & 1);

  sub_274BF32E4();
  v39 = sub_274BF40A4();
  v41 = v40;
  LOBYTE(v33) = v42;
  sub_274AFA1D0(v35, v37, v25 & 1);

  v101(v5, v16);
  LOBYTE(v37) = v95;
  v43 = v98;
  v44 = v97;
  v100 = sub_274BF40B4();
  v46 = v45;
  LOBYTE(v17) = v47;
  v99 = v48;
  sub_274AFA1D0(v39, v41, v33 & 1);

  sub_274AFA1D0(v43, v44, v37 & 1);

  sub_274BF38A4();
  v49 = sub_274BF40E4();
  v51 = v50;
  LOBYTE(v39) = v52;
  sub_274BF3F14();
  v53 = sub_274BF4074();
  v55 = v54;
  LOBYTE(v37) = v56;
  sub_274AFA1D0(v49, v51, v39 & 1);

  LODWORD(v105) = sub_274BF3B94();
  v57 = sub_274BF40A4();
  v59 = v58;
  LOBYTE(v39) = v60;
  sub_274AFA1D0(v53, v55, v37 & 1);

  v61 = v100;
  v62 = sub_274BF40B4();
  v64 = v63;
  LODWORD(v101) = v65;
  v104 = v66;
  sub_274AFA1D0(v57, v59, v39 & 1);

  sub_274AFA1D0(v61, v46, v17 & 1);

  sub_274BF4FE4("Check important info for mistakes.", 34);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v67 = qword_28098C7C0;
  v68 = sub_274BF4F04();
  v69 = sub_274BF4F04();

  v70 = [v67 localizedStringForKey:v68 value:v69 table:0];

  v71 = sub_274BF4F44();
  v73 = v72;

  v105 = v71;
  v106 = v73;
  v74 = sub_274BF4104();
  v76 = v75;
  LOBYTE(v73) = v77;
  sub_274BF3F14();
  v78 = sub_274BF4074();
  v80 = v79;
  v82 = v81;
  sub_274AFA1D0(v74, v76, v73 & 1);

  LODWORD(v105) = sub_274BF3B94();
  v83 = sub_274BF40A4();
  v85 = v84;
  LOBYTE(v73) = v86;
  sub_274AFA1D0(v78, v80, v82 & 1);

  v87 = v101;
  v100 = sub_274BF40B4();
  v89 = v88;
  LOBYTE(v78) = v90;
  v102 = v91;
  sub_274AFA1D0(v83, v85, v73 & 1);

  sub_274AFA1D0(v62, v64, v87 & 1);

  v93 = v103;
  *v103 = v100;
  v93[1] = v89;
  *(v93 + 16) = v78 & 1;
  v93[3] = v102;
  return result;
}

uint64_t sub_274B2B7D8(uint64_t a1)
{
  v2 = sub_274BF1A24();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  v8 = *MEMORY[0x277CFC140];
  (*(v3 + 8))(v6, v2);
  if (v7 != v8)
  {
    return sub_274BF19F4();
  }

  type metadata accessor for LLMAttributionView(0);
  result = sub_274BF1A44();
  if (!v10)
  {
    result = sub_274BF1A34();
    if (!v11)
    {
      return sub_274BF19F4();
    }
  }

  return result;
}

uint64_t sub_274B2B940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v41 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B460, &qword_274BFDD28);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B468, &qword_274BFDD30);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = sub_274BF1A24();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  v18 = *(v2 + 16);
  v42[0] = *v2;
  v42[1] = v18;
  v42[2] = *(v2 + 32);
  v43 = *(v2 + 48);
  if ((BYTE8(v42[0]) & 1) != 0 || (v19 = *&v42[0], objc_opt_self(), (v20 = swift_dynamicCastObjCClass()) == 0))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470, &qword_274BFDD38);
    OUTLINED_FUNCTION_0_2();
    (*(v31 + 16))(v5, v40, v30);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_3_2();
    sub_274AFA930(v32, v33, v34, v35);
    OUTLINED_FUNCTION_2_15();
    sub_274AFA930(v36, &qword_28098B470, &qword_274BFDD38, v37);
    OUTLINED_FUNCTION_5_7();
    return sub_274BF3A64();
  }

  else
  {
    v21 = v20;
    v39 = v19;
    v22 = [v21 response];
    v23 = [v22 responseDataModel];

    sub_274BF1A74();
    (*(v11 + 32))(v17, v14, v9);
    *v8 = sub_274BF38F4();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B488, &unk_274BFDD40);
    sub_274B2BD04(v42, v17, &v8[*(v24 + 44)]);
    sub_274B01968(v8, v5, &qword_28098B468, &qword_274BFDD30);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470, &qword_274BFDD38);
    OUTLINED_FUNCTION_3_2();
    sub_274AFA930(v25, &qword_28098B468, &qword_274BFDD30, v26);
    OUTLINED_FUNCTION_2_15();
    sub_274AFA930(v27, &qword_28098B470, &qword_274BFDD38, v28);
    OUTLINED_FUNCTION_5_7();
    sub_274BF3A64();
    sub_274AFA708(v8, &qword_28098B468, &qword_274BFDD30);
    return (*(v11 + 8))(v17, v9);
  }
}

uint64_t sub_274B2BD04@<X0>(void **a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v69 = a2;
  v84 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A248, &unk_274BFBA30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v65 - v5;
  v7 = sub_274BF1A24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v65 - v11;
  v72 = type metadata accessor for LLMAttributionView(0);
  MEMORY[0x28223BE20](v72);
  v73 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB28, &unk_274BFDD50);
  MEMORY[0x28223BE20](v74);
  v77 = &v65 - v14;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AB30, &qword_274BFCE60);
  MEMORY[0x28223BE20](v83);
  v76 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v75 = &v65 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B490, &qword_274BFDD60);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v79 = &v65 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B470, &qword_274BFDD38);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v82 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v26);
  v80 = &v65 - v28;
  v81 = v24;
  v78 = *(v24 + 16);
  v78(v27);
  v70 = a1;
  v29 = *a1;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  v31 = 1;
  if (v30)
  {
    v32 = v30;
    v68 = v20;
    v67 = v8;
    v33 = *(v8 + 16);
    v33(v12, v69, v7);
    v34 = v33;
    v65 = v33;
    v69 = v29;
    v35 = [v32 response];
    v36 = [v35 responseDataModel];

    v66 = sub_274BF1A64();
    v37 = [objc_allocWithZone(sub_274BF1A54()) init];
    v38 = v73;
    v34(v73, v12, v7);
    v39 = v72;
    *(v38 + *(v72 + 20)) = v37;
    v40 = sub_274BF25F4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v40);
    v41 = objc_allocWithZone(sub_274BF4D84());
    v42 = sub_274BF4D74();
    v43 = (v38 + *(v39 + 28));
    v85 = v42;
    v44 = v42;
    sub_274BF4774();
    v45 = __src[1];
    *v43 = __src[0];
    v43[1] = v45;
    v46 = v71;
    v65(v71, v12, v7);
    v20 = v68;
    v47 = objc_allocWithZone(type metadata accessor for WFAskLLMFeedbackPresenter(0));
    v48 = WFAskLLMFeedbackPresenter.init(model:conversation:controller:wasBlockedBySafety:viewControllerForPresentation:)(v46, v66, v44, 0, 0);
    (*(v67 + 8))(v12, v7);
    *(v38 + *(v39 + 24)) = v48;
    sub_274BF4AA4();
    sub_274BF34A4();
    v49 = v77;
    sub_274B2C500(v38, v77);
    memcpy((v49 + *(v74 + 36)), __src, 0x70uLL);
    LOBYTE(v48) = sub_274BF3E44();

    v50 = v76;
    sub_274B16ED0(v49, v76, &qword_28098AB28, &unk_274BFDD50);
    v51 = v83;
    v52 = v50 + *(v83 + 36);
    *v52 = v48;
    v53 = *(v70 + 3);
    *(v52 + 24) = *(v70 + 5);
    *(v52 + 8) = v53;
    *(v52 + 40) = 0;
    v54 = v50;
    v55 = v75;
    sub_274B16ED0(v54, v75, &qword_28098AB30, &qword_274BFCE60);
    v56 = v79;
    sub_274B16ED0(v55, v79, &qword_28098AB30, &qword_274BFCE60);
    v31 = 0;
    v57 = v51;
  }

  else
  {
    v57 = v83;
    v56 = v79;
  }

  __swift_storeEnumTagSinglePayload(v56, v31, 1, v57);
  v58 = v82;
  v59 = v80;
  v60 = v78;
  (v78)(v82, v80, v23);
  sub_274B01968(v56, v20, &qword_28098B490, &qword_274BFDD60);
  v61 = v84;
  (v60)(v84, v58, v23);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B498, &qword_274BFDD68);
  sub_274B01968(v20, v61 + *(v62 + 48), &qword_28098B490, &qword_274BFDD60);
  sub_274AFA708(v56, &qword_28098B490, &qword_274BFDD60);
  v63 = *(v81 + 8);
  v63(v59, v23);
  sub_274AFA708(v20, &qword_28098B490, &qword_274BFDD60);
  return (v63)(v58, v23);
}

uint64_t sub_274B2C500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMAttributionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274B2C574()
{
  result = qword_28098B4C0;
  if (!qword_28098B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B8, &qword_274BFDD88);
    sub_274B2C62C();
    sub_274AFA930(&qword_2815A2F98, &qword_280989D90, &qword_274BFB000, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4C0);
  }

  return result;
}

unint64_t sub_274B2C62C()
{
  result = qword_28098B4C8;
  if (!qword_28098B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4D0, &unk_274BFDD98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4C8);
  }

  return result;
}

uint64_t sub_274B2C6A8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_274B2C6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274ADDF6C();

  return sub_274BF4754();
}

unint64_t sub_274B2C770()
{
  result = qword_28098B4E8;
  if (!qword_28098B4E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4B0, &qword_274BFDD80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4A8, &qword_274BFDD78);
    sub_274BF3454();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B4A0, &qword_274BFDD70);
    sub_274BF3344();
    sub_274AFA930(&qword_28098B4D8, &qword_28098B4A0, &qword_274BFDD70, MEMORY[0x277CDE5B0]);
    sub_274B2C6A8(&qword_28098B4E0, MEMORY[0x277CDD9E0], MEMORY[0x277CDD9D8]);
    swift_getOpaqueTypeConformance2();
    sub_274B2C6A8(&qword_28098AE20, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_28098B4F0, &qword_28098B4F8, &qword_274BFDDE0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B4E8);
  }

  return result;
}

uint64_t sub_274B2C974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMAttributionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_4()
{
  v1 = (type metadata accessor for LLMAttributionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  sub_274BF1A24();
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(v2);

  return swift_deallocObject();
}

uint64_t sub_274B2CB2C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for LLMAttributionView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_274B2CBA0()
{
  result = qword_28098B500;
  if (!qword_28098B500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B508, &qword_274BFDE20);
    sub_274AFA930(&qword_28098B478, &qword_28098B468, &qword_274BFDD30, MEMORY[0x277CE1198]);
    sub_274AFA930(&qword_28098B480, &qword_28098B470, &qword_274BFDD38, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B500);
  }

  return result;
}

void sub_274B2CC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3A54();
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v18);
  v19 = OUTLINED_FUNCTION_78();
  v20(v19);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_72();
}

void *sub_274B2CD3C(void *(*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a3;
  }

  v6 = a3;
  result = a1(&v7, &v6);
  if (!v4)
  {
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t TopHitIconMask.hashValue.getter()
{
  v1 = *v0;
  sub_274BF5CD4();
  MEMORY[0x277C65580](v1);
  return sub_274BF5D44();
}

void sub_274B2CE88()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510, &qword_274BFDE80);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_7_2();
  sub_274B32834(v1, v2, &qword_28098B510, &qword_274BFDE80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF38E4();
    OUTLINED_FUNCTION_2();
    (*(v5 + 32))(v0, v2);
  }

  else
  {
    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49(v6, &dword_274AD4000, v7, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v8 = OUTLINED_FUNCTION_56();
    v9(v8);
  }

  OUTLINED_FUNCTION_55();
}

void sub_274B2D01C()
{
  OUTLINED_FUNCTION_58();
  v5 = v4;
  OUTLINED_FUNCTION_68();
  v6 = sub_274BF3774();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_2();
  sub_274B32834(v1 + *(v5 + 36), v3, &qword_28098A7C0, &unk_274BFF8F0);
  OUTLINED_FUNCTION_81();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_2();
    (*(v11 + 32))(v0, v3);
  }

  else
  {
    sub_274BF54A4();
    v12 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    OUTLINED_FUNCTION_56();
    swift_getAtKeyPath();

    (*(v8 + 8))(v2, v6);
  }

  OUTLINED_FUNCTION_55();
}

uint64_t TopHitView.topHitViewColorScheme.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  sub_274BF2934();
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_274B2D2F4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v25 = a1;
  v4 = sub_274BF22F4();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_274BF29E4();
  v7 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF29C4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274BF22D4();
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B580, &qword_274BFE318) + 48);
  *v13 = a2;
  v15 = *MEMORY[0x277D7D5B8];
  v16 = sub_274BF28D4();
  (*(*(v16 - 8) + 104))(v13 + v14, v15, v16);
  (*(v11 + 104))(v13, *MEMORY[0x277D7D698], v10);
  (*(v7 + 104))(v9, *MEMORY[0x277D7D6D0], v24);
  v17 = v25;
  sub_274BF2A04();
  sub_274BF2304();
  sub_274BF22E4();
  v19 = v18;
  v21 = v20;
  (*(v26 + 8))(v6, v27);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B748, &qword_274BFE670);
  v23 = (v17 + *(result + 36));
  *v23 = v19;
  v23[1] = v21;
  return result;
}

uint64_t sub_274B2D5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274AE3C84();
  v7 = type metadata accessor for TopHitView(0, a2, a3, v6);
  return sub_274B2D1CC(v5, v7);
}

uint64_t TopHitView<>.init(icon:iconMask:badges:name:colorScheme:tapHandler:)@<X0>(void *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v16 = *a2;
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B510, &qword_274BFDE80);
  OUTLINED_FUNCTION_67();
  swift_storeEnumTagMultiPayload();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B530, &qword_274BFDED8);
  v18 = v17[9];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  swift_storeEnumTagMultiPayload();
  v19 = (a9 + v17[10]);
  sub_274AE3C84();
  sub_274BF4774();
  v20 = v29[1];
  *v19 = v29[0];
  v19[1] = v20;
  *(a9 + v17[11]) = a1;
  if (v16 == 2)
  {
    v21 = a1;
    static TopHitIconMask.default(for:)(v29);

    LOBYTE(v16) = v29[0];
  }

  else
  {
    LOBYTE(v29[0]) = v16 & 1;
  }

  *(a9 + v17[12]) = v16 & 1;
  *(a9 + v17[13]) = a3;
  v22 = (a9 + v17[14]);
  *v22 = a4;
  v22[1] = a5;
  v23 = v17[15];
  sub_274BF2934();
  OUTLINED_FUNCTION_2();
  result = (*(v24 + 32))(a9 + v23, a6);
  v26 = (a9 + v17[16]);
  *v26 = j__CGSizeMake;
  v26[1] = 0;
  v27 = (a9 + v17[17]);
  *v27 = a7;
  v27[1] = a8;
  *(a9 + v17[18]) = 0;
  return result;
}

uint64_t TopHitCollectionView.style.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  sub_274BF2994();
  OUTLINED_FUNCTION_0_2();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

__n128 TopHitCollectionView.layout.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

uint64_t sub_274B2D930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a6;
  v36 = a4;
  v44 = a2;
  v46 = a1;
  v47 = a7;
  v45 = sub_274BF3484();
  MEMORY[0x28223BE20](v45);
  v48 = (&v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_274BF57D4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = v12;
  v70 = AssociatedTypeWitness;
  v71 = a4;
  v72 = WitnessTable;
  v73 = AssociatedConformanceWitness;
  sub_274BF4964();
  v68 = a6;
  v38 = swift_getWitnessTable();
  sub_274BF4B14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B550, &qword_274BFDF20);
  sub_274AD766C(&qword_2815A30F8, &qword_28098B550, &qword_274BFDF20);
  sub_274BF31C4();
  sub_274BF3A74();
  v37 = sub_274BF46B4();
  v39 = sub_274BF33D4();
  v40 = sub_274BF33D4();
  v41 = sub_274BF33D4();
  v43 = sub_274BF33D4();
  v42 = sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538, &qword_274BFDF08);
  sub_274BF33D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540, &qword_274BFDF10);
  v16 = sub_274BF33D4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v35 - v21;
  v69 = a3;
  v70 = v36;
  v71 = a5;
  v72 = v35;
  type metadata accessor for TopHitCollectionView(0, &v69);
  sub_274AE3164(v48);
  v23 = swift_getWitnessTable();
  v66 = sub_274AD766C(&qword_2815A30F0, &qword_28098B550, &qword_274BFDF20);
  v67 = v38;
  v24 = swift_getWitnessTable();
  v64 = v23;
  v65 = v24;
  v63 = swift_getWitnessTable();
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CDF918];
  v61 = v25;
  v62 = MEMORY[0x277CDF918];
  v59 = swift_getWitnessTable();
  v60 = v26;
  v57 = swift_getWitnessTable();
  v58 = v26;
  v55 = swift_getWitnessTable();
  v56 = v26;
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF900];
  v27 = swift_getWitnessTable();
  v28 = sub_274AD766C(&qword_2815A2FF8, &qword_28098B538, &qword_274BFDF08);
  v51 = v27;
  v52 = v28;
  v29 = swift_getWitnessTable();
  sub_274AD9EF0(&qword_2815A3020, MEMORY[0x277CDFC08]);
  v30 = v48;
  sub_274BF44C4();
  sub_274AE2EFC(v30, MEMORY[0x277CDFC08]);
  v31 = sub_274AD766C(&qword_2815A3100, &qword_28098B540, &qword_274BFDF10);
  v49 = v29;
  v50 = v31;
  v32 = swift_getWitnessTable();
  sub_274ADB48C(v19, v16, v32);
  v33 = *(v17 + 8);
  v33(v19, v16);
  sub_274ADB48C(v22, v16, v32);
  return (v33)(v22, v16);
}

uint64_t sub_274B2DFE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a10@<D1>)
{
  v78 = a3;
  v80 = a2;
  v93 = a1;
  v89 = a8;
  v87 = sub_274BF3484();
  MEMORY[0x28223BE20](v87);
  v88 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_274BF3B54();
  MEMORY[0x28223BE20](v16 - 8);
  v68 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_274BF51A4();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v100 = v18;
  v101 = AssociatedTypeWitness;
  v102 = a5;
  v103 = WitnessTable;
  v104 = AssociatedConformanceWitness;
  sub_274BF4964();
  v99[27] = a7;
  v65 = swift_getWitnessTable();
  v66 = sub_274BF2EA4();
  v70 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v92 = &v62 - v22;
  v71 = sub_274BF33D4();
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v67 = &v62 - v23;
  v73 = sub_274BF33D4();
  v76 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v69 = &v62 - v24;
  v74 = sub_274BF33D4();
  v82 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v62 - v25;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B538, &qword_274BFDF08);
  v81 = sub_274BF33D4();
  v85 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v77 = &v62 - v26;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B540, &qword_274BFDF10);
  v84 = sub_274BF33D4();
  v86 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v79 = &v62 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v83 = &v62 - v29;
  v62 = sub_274BF37F4();
  v90 = a7;
  v91 = a4;
  v99[10] = a4;
  v99[11] = a5;
  v30 = a5;
  v31 = a6;
  v99[12] = a6;
  v99[13] = a7;
  v32 = a7;
  v33 = v93;
  v99[14] = v93;
  sub_274ADC748();
  sub_274BF2E94();
  v99[2] = a4;
  v99[3] = v30;
  v34 = v30;
  v63 = v30;
  v64 = v31;
  v99[4] = v31;
  v99[5] = v32;
  v99[6] = v33;
  *&v99[7] = a10;
  sub_274B2CD3C(sub_274B323B8, v99, v80, v78 & 1);
  sub_274BF4AA4();
  v60 = v66;
  v61 = swift_getWitnessTable();
  v35 = v67;
  v36 = v92;
  sub_274BF43F4();
  (*(v70 + 8))(v36, v60);
  sub_274BF3E34();
  v100 = v91;
  v101 = v34;
  v102 = v31;
  v103 = v90;
  v92 = type metadata accessor for TopHitCollectionView(0, &v100);
  sub_274BF2954();
  v99[24] = v61;
  v99[25] = MEMORY[0x277CDFC60];
  v37 = v71;
  v38 = swift_getWitnessTable();
  v39 = v69;
  sub_274BF4464();
  (*(v75 + 8))(v35, v37);
  sub_274BF3EA4();
  v40 = v93;
  sub_274BF2944();
  v41 = MEMORY[0x277CDF918];
  v99[22] = v38;
  v99[23] = MEMORY[0x277CDF918];
  v42 = v73;
  v43 = swift_getWitnessTable();
  v44 = v72;
  sub_274BF4464();
  (*(v76 + 8))(v39, v42);
  v94 = v91;
  v95 = v63;
  v96 = v64;
  v97 = v90;
  v98 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B558, &qword_274BFDF28);
  v99[20] = v43;
  v99[21] = v41;
  v45 = v74;
  v46 = swift_getWitnessTable();
  v47 = sub_274AD9EF0(&qword_2815A3020, MEMORY[0x277CDFC08]);
  v100 = v87;
  v101 = v47;
  swift_getOpaqueTypeConformance2();
  sub_274BF4A94();
  v48 = v77;
  sub_274BF4194();
  (*(v82 + 8))(v44, v45);
  v49 = v88;
  sub_274AE3164(v88);
  v50 = sub_274AD766C(&qword_2815A2FF8, &qword_28098B538, &qword_274BFDF08);
  v99[18] = v46;
  v99[19] = v50;
  v51 = v81;
  v52 = swift_getWitnessTable();
  v53 = v79;
  sub_274BF44C4();
  sub_274AE2EFC(v49, MEMORY[0x277CDFC08]);
  (*(v85 + 8))(v48, v51);
  v54 = sub_274AD766C(&qword_2815A3100, &qword_28098B540, &qword_274BFDF10);
  v99[16] = v52;
  v99[17] = v54;
  v55 = v84;
  v56 = swift_getWitnessTable();
  v57 = v83;
  sub_274ADB48C(v53, v55, v56);
  v58 = *(v86 + 8);
  v58(v53, v55);
  sub_274ADB48C(v57, v55, v56);
  return (v58)(v57, v55);
}

uint64_t sub_274B2EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v39 = a1;
  v40 = a5;
  v41 = a6;
  v43 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v32 = a4;
  v8 = type metadata accessor for TopHitCollectionView(0, &v43);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v34 = &v30 - v10;
  v11 = sub_274BF51A4();
  v37 = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = AssociatedTypeWitness;
  WitnessTable = swift_getWitnessTable();
  v35 = WitnessTable;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v11;
  v44 = AssociatedTypeWitness;
  v45 = a3;
  v46 = WitnessTable;
  v47 = AssociatedConformanceWitness;
  v15 = sub_274BF4964();
  v38 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v33 = &v30 - v20;
  v31 = v8;
  v43 = *(v39 + *(v8 + 60));
  v21 = v34;
  (*(v9 + 16))(v34, v19);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = a2;
  *(v23 + 3) = a3;
  v24 = v31;
  v25 = v40;
  *(v23 + 4) = v32;
  *(v23 + 5) = v25;
  (*(v9 + 32))(&v23[v22], v21, v24);

  sub_274BF4954();
  v42 = v25;
  v26 = swift_getWitnessTable();
  v27 = v33;
  sub_274ADB48C(v17, v15, v26);
  v28 = *(v38 + 8);
  v28(v17, v15);
  sub_274ADB48C(v27, v15, v26);
  return (v28)(v27, v15);
}

double sub_274B2ED74@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>, double a7@<D0>)
{
  v9 = *a1;
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  type metadata accessor for TopHitCollectionView(0, v12);
  sub_274BF2954();
  result = v9 - (v10 + a7 + v10 + a7);
  *a6 = result;
  return result;
}

void sub_274B2EDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_10_3();
  sub_274BF3484();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4();
  v12 = (v11 - v10);
  v15 = v8;
  v16 = v7;
  v17 = v6;
  v18 = v5;
  type metadata accessor for TopHitCollectionView(0, &v15);
  sub_274AE3164(v12);
  OUTLINED_FUNCTION_26_0();
  sub_274AD9EF0(v13, v14);
  sub_274BF4764();
  sub_274AE2EFC(v12, MEMORY[0x277CDFC08]);
  OUTLINED_FUNCTION_72();
}

uint64_t sub_274B2EEE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6C8, &qword_274BFE4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BFA880;
  v1 = sub_274BF3E24();
  *(inited + 32) = v1;
  v2 = sub_274BF3E04();
  *(inited + 33) = v2;
  v3 = sub_274BF3E14();
  sub_274BF3E14();
  if (sub_274BF3E14() != v1)
  {
    v3 = sub_274BF3E14();
  }

  sub_274BF3E14();
  if (sub_274BF3E14() != v2)
  {
    return sub_274BF3E14();
  }

  return v3;
}

uint64_t (*sub_274B2EFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a5;
  v11 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v11;
  *(v10 + 80) = *(a1 + 32);
  return sub_274B32334;
}

uint64_t sub_274B2F040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  sub_274BF57D4();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  v9 = sub_274BF4964();
  v10 = sub_274B32344();
  WitnessTable = swift_getWitnessTable();
  return sub_274B2F194(a1, a2, &type metadata for TopHitRowLayout, v9, v10, WitnessTable, x8_0);
}

uint64_t sub_274B2F194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_274BF3024();
  v17 = MEMORY[0x28223BE20](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_274BF3034();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_274BF31D4();
}

double sub_274B2F33C@<D0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v7 = *a1;
  v10[0] = a2;
  v10[1] = a3;
  v10[2] = a4;
  v10[3] = a5;
  type metadata accessor for TopHitCollectionView(0, v10);
  sub_274BF2954();
  result = v7 - (v8 + v8);
  *a6 = result;
  return result;
}

uint64_t sub_274B2F3B0()
{
  sub_274AF62D0();
  v0 = MEMORY[0x277D84F90];
  sub_274BF4E14();
  return v0;
}

void sub_274B2F408(double a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    v2 = *(v1 + 24);
    if (v2 > a1)
    {
      v3 = floor((v2 - a1) / (*v1 + a1));
      if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v3 > -9.22337204e18)
      {
        if (v3 < 9.22337204e18)
        {
          if (!__OFADD__(v3, 1))
          {
            return;
          }

LABEL_12:
          __break(1u);
          return;
        }

LABEL_11:
        __break(1u);
        goto LABEL_12;
      }

      __break(1u);
      goto LABEL_11;
    }
  }
}

uint64_t sub_274B2F4BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t (**a5)(uint64_t *, void (**)(void), uint64_t), double *a6)
{
  v80 = sub_274BF3184();
  v10 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = (&v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v79 = (&v73 - v13);
  MEMORY[0x28223BE20](v14);
  v77 = (&v73 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678, &qword_274BFE480);
  MEMORY[0x28223BE20](v16);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v73 - v20;
  if ((a2 & 1) != 0 || (a1 & 0x7FFFFFFFFFFFFFFFLL) == 0x7FF0000000000000)
  {
    v22 = a6[2];
    if (v22 == 0.0)
    {
      v23 = sub_274BF3214();
      (*(*(v23 - 8) + 16))(v18, a5, v23);
      v24 = *(v16 + 36);
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      v76 = a5;
      sub_274BF5344();
      v77 = (v10 + 16);
      v25 = (v10 + 8);
      v79 = a6;
      v26 = v78;
      v27 = v80;
      while (1)
      {
        sub_274BF5374();
        if (*&v18[v24] == v81[0])
        {
          break;
        }

        v28 = sub_274BF5414();
        (*v77)(v26);
        v28(v81, 0);
        sub_274BF5384();
        sub_274BF3464();
        LOBYTE(v81[0]) = v29 & 1;
        v82 = v30 & 1;
        sub_274BF3154();
        v32 = v31;
        v34 = v33;
        (*v25)(v26, v27);
        v35 = *a6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_274BBAF30(0, *(v35 + 16) + 1, 1, v35);
          v35 = v40;
        }

        v37 = *(v35 + 16);
        v36 = *(v35 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_274BBAF30(v36 > 1, v37 + 1, 1, v35);
          v35 = v41;
        }

        *(v35 + 16) = v37 + 1;
        v38 = v35 + 16 * v37;
        *(v38 + 32) = v32;
        *(v38 + 40) = v34;
        a6 = v79;
        *v79 = v35;
        if (v22 <= v34)
        {
          v22 = v34;
        }

        v39 = a6[1];
        if (v39 <= v32)
        {
          v39 = v32;
        }

        a6[1] = v39;
        a6[2] = v22;
      }

      sub_274AFA708(v18, &qword_28098B678, &qword_274BFE480);
    }

    if (*(v74 + 32))
    {
      sub_274BF3214();
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      sub_274BF5344();
      sub_274BF5374();
      result = sub_274BF5364();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_274B2F408(a6[1]);
      sub_274BF3214();
      sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
      sub_274BF5344();
      sub_274BF5374();
      result = sub_274BF5364();
      if (__OFSUB__(result, 1))
      {
        goto LABEL_48;
      }
    }

    sub_274BF5344();
    sub_274BF5374();
    return sub_274BF5364();
  }

  result = sub_274B069D8(*(a6 + 3), *&a1);
  if (v43)
  {
    v44 = sub_274B2FDF0(*&a1, 68.0, *v74);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v81 = a6[3];
    result = sub_274B3174C(v44, isUniquelyReferenced_nonNull_native, *&a1);
    a6[3] = *v81;
  }

  else
  {
    v44 = result;
  }

  v46 = v44 - 1;
  if (__OFSUB__(v44, 1))
  {
    goto LABEL_49;
  }

  v47 = a6[1];
  if (v46 <= 1)
  {
    v46 = 1;
  }

  v48 = (*&a1 - v47 * v44) / v46;
  v49 = sub_274BF3214();
  (*(*(v49 - 8) + 16))(v21, a5, v49);
  v50 = *(v16 + 36);
  sub_274AD9EF0(&qword_2815A30E0, MEMORY[0x277CDF7F8]);
  sub_274BF5344();
  v78 = (v10 + 16);
  v75 = (v10 + 8);
  v76 = (v10 + 32);
  v51 = 0.0;
  v52 = 1;
  v53 = 0.0;
  for (i = 0.0; ; i = i + v48 + v47)
  {
    sub_274BF5374();
    if (*&v21[v50] == v81[0])
    {
      return sub_274AFA708(v21, &qword_28098B678, &qword_274BFE480);
    }

    v55 = sub_274BF5414();
    v56 = v77;
    v57 = v80;
    (*v78)(v77);
    v55(v81, 0);
    sub_274BF5384();
    result = (*v76)(v79, v56, v57);
    if (i + v47 <= *&a1)
    {
      goto LABEL_33;
    }

    if (__OFADD__(v52++, 1))
    {
      break;
    }

    v59 = v51 + v53;
    if (*(v74 + 16) < v52)
    {
      (*v75)(v79, v80, i + v47);
      return sub_274AFA708(v21, &qword_28098B678, &qword_274BFE480);
    }

    v51 = v59 + *(v74 + 8);
    i = 0.0;
    v53 = 0.0;
LABEL_33:
    sub_274BF3464();
    LOBYTE(v81[0]) = v60 & 1;
    v82 = v61 & 1;
    sub_274BF3154();
    v63 = v62;
    v65 = v64;
    v66 = *a6;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBAF30(0, *(v66 + 16) + 1, 1, v66);
      v66 = v71;
    }

    v68 = *(v66 + 16);
    v67 = *(v66 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_274BBAF30(v67 > 1, v68 + 1, 1, v66);
      v66 = v72;
    }

    (*v75)(v79, v80);
    *(v66 + 16) = v68 + 1;
    v69 = v66 + 16 * v68;
    *(v69 + 32) = v63;
    *(v69 + 40) = v65;
    *a6 = v66;
    if (v47 <= v63)
    {
      v47 = v63;
    }

    v70 = a6[2];
    if (v70 <= v65)
    {
      v70 = v65;
    }

    a6[1] = v47;
    a6[2] = v70;
    if (v53 <= v65)
    {
      v53 = v65;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_274B2FDF0(double a1, double a2, double a3)
{
  v3 = (a1 + a3) / (a2 + a3);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_274B2FE44(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v94 = a3;
  v95 = a4;
  v93 = a2;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B658, &qword_274BFE460);
  MEMORY[0x28223BE20](v97);
  v14 = &v76 - v13;
  v96 = sub_274BF3184();
  v15 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v84 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v82 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B660, &qword_274BFE468);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v76 - v23);
  v83 = sub_274BF3214();
  v25 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v92 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B668, &qword_274BFE470);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v76 - v28;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B670, &qword_274BFE478);
  MEMORY[0x28223BE20](v88);
  v31 = &v76 - v30;
  if (sub_274BDF648())
  {
    return;
  }

  v81 = v21;
  v33 = *(a10 + 8);
  v32 = *(a10 + 16);
  v100.origin.x = a1;
  v100.origin.y = v93;
  v100.size.width = v94;
  v100.size.height = v95;
  Width = CGRectGetWidth(v100);
  v35 = sub_274B069D8(*(a10 + 24), Width);
  if (v36)
  {
    sub_274B2F408(v33);
    v38 = v37;
    v101.origin.x = a1;
    v39 = v93;
    v40 = v94;
    v101.origin.y = v93;
    v101.size.width = v94;
    v41 = v95;
    v101.size.height = v95;
    v42 = CGRectGetWidth(v101);
    v43 = sub_274B2FDF0(v42, v33, v38);
    v102.origin.x = a1;
    v102.origin.y = v39;
    v102.size.width = v40;
    v102.size.height = v41;
    v44 = CGRectGetWidth(v102);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99[0] = *(a10 + 24);
    sub_274B3174C(v43, isUniquelyReferenced_nonNull_native, v44);
    *(a10 + 24) = v99[0];
  }

  else
  {
    v43 = v35;
  }

  v103.origin.x = a1;
  v103.origin.y = v93;
  v103.size.width = v94;
  v103.size.height = v95;
  v46 = CGRectGetWidth(v103);
  v47 = v43 - 1;
  if (__OFSUB__(v43, 1))
  {
    goto LABEL_32;
  }

  v90 = v32;
  v80 = v14;
  v85 = a10;
  v48 = v46 - v33 * v43;
  if (v47 <= 1)
  {
    v47 = 1;
  }

  v49 = v48 / v47;
  v104.origin.x = a1;
  v104.origin.y = v93;
  v104.size.width = v94;
  v104.size.height = v95;
  MinY = CGRectGetMinY(v104);
  v51 = v83;
  (*(v25 + 16))(v29, a9, v83);
  (*(v25 + 32))(v92, v29, v51);
  v52 = MEMORY[0x277CDF7F8];
  sub_274AD9EF0(&qword_2815A30E8, MEMORY[0x277CDF7F8]);
  sub_274BF50E4();
  v77 = *(v88 + 36);
  *&v31[v77] = 0;
  v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B678, &qword_274BFE480) + 36);
  sub_274AD9EF0(&qword_2815A30E0, v52);
  v54 = 0;
  v79 = (v15 + 16);
  v55 = (v15 + 32);
  v88 = *&v33;
  v87 = (v15 + 8);
  v56 = v53;
  v86 = v33 + v49;
  v57 = 0.0;
  v92 = 1;
  v58 = MinY;
  v59 = 0.0;
  v60 = v84;
  v61 = v81;
  v89 = v33;
  v76 = v24;
  v78 = v55;
  while (1)
  {
    sub_274BF5374();
    v62 = v90;
    if (*&v31[v56] == v99[0])
    {
      v63 = 1;
      goto LABEL_13;
    }

    v64 = sub_274BF5414();
    v65 = v82;
    v66 = v96;
    v67 = v97;
    (*v79)(v82);
    v64(v99, 0);
    v55 = v78;
    sub_274BF5384();
    v68 = *(v67 + 48);
    v69 = v80;
    *v80 = v54;
    (*v55)(v69 + v68, v65, v66);
    v70 = __OFADD__(v54++, 1);
    if (v70)
    {
      break;
    }

    *&v31[v77] = v54;
    v61 = v81;
    sub_274B31858(v69, v81, &qword_28098B658, &qword_274BFE460);
    v63 = 0;
    v60 = v84;
    v24 = v76;
LABEL_13:
    v71 = v97;
    __swift_storeEnumTagSinglePayload(v61, v63, 1, v97);
    sub_274B31858(v61, v24, &qword_28098B660, &qword_274BFE468);
    if (__swift_getEnumTagSinglePayload(v24, 1, v71) == 1)
    {
      sub_274AFA708(v31, &qword_28098B670, &qword_274BFE478);
      return;
    }

    v72 = *v24;
    (*v55)(v60, v24 + *(v97 + 48), v96);
    v105.origin.x = a1;
    v105.origin.y = v93;
    v105.size.width = v94;
    v105.size.height = v95;
    if (CGRectGetWidth(v105) < v33 + v59)
    {
      v70 = __OFADD__(v92++, 1);
      if (v70)
      {
        goto LABEL_31;
      }

      MinY = MinY + v57 + *(v91 + 8);
      v59 = 0.0;
      v58 = MinY;
      v57 = 0.0;
    }

    v73 = v62;
    if ((v72 & 0x8000000000000000) == 0)
    {
      v73 = v62;
      if (v72 < *(*v85 + 16))
      {
        v73 = *(*v85 + 16 * v72 + 40);
      }
    }

    if (v57 <= v73)
    {
      v57 = v73;
    }

    v74 = *(v91 + 16);
    if (v74 >= v92)
    {
      v75 = v58;
    }

    else
    {
      v75 = v62 + MinY;
    }

    if (v74 < v92)
    {
      MinY = v62 + MinY;
    }

    v106.origin.x = a1;
    v106.origin.y = v93;
    v106.size.width = v94;
    v106.size.height = v95;
    CGRectGetMinX(v106);
    sub_274BF4B74();
    LOBYTE(v99[0]) = 0;
    v98 = 0;
    v58 = v75;
    sub_274BF3164();
    (*v87)(v60, v96);
    v59 = v86 + v59;
    v33 = v89;
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_274B306D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274B2F3B0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t (*sub_274B308B0(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_274BF2DD4();
  return sub_274B30924;
}

void sub_274B30924(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void sub_274B309E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_58();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v26);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = OUTLINED_FUNCTION_78();
  sub_274B32834(v33, v34, v28, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24(0);
    OUTLINED_FUNCTION_2();
    (*(v35 + 32))(v20, v32);
  }

  else
  {
    sub_274BF54A4();
    v36 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49(v36, &dword_274AD4000, v37, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v38 = OUTLINED_FUNCTION_56();
    v39(v38);
  }

  OUTLINED_FUNCTION_55();
}

void sub_274B30B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_68();
  sub_274BF3774();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_71();
  sub_274B32834(v7, v14, &qword_28098B688, &unk_274BFE490);
  if (v16 == 1)
  {
    v9 = v14[1];
    *v6 = v14[0];
    *(v6 + 16) = v9;
    *(v6 + 32) = v15;
  }

  else
  {
    sub_274BF54A4();
    v10 = sub_274BF3DF4();
    OUTLINED_FUNCTION_49(v10, &dword_274AD4000, v11, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.");

    sub_274BF3764();
    OUTLINED_FUNCTION_73_0();

    v12 = OUTLINED_FUNCTION_56();
    v13(v12);
  }

  OUTLINED_FUNCTION_72();
}

unint64_t sub_274B30CE0()
{
  result = qword_28098B560;
  if (!qword_28098B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B560);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TopHitViewMetrics(_BYTE *result, int a2, int a3)
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

uint64_t sub_274B30E30(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_274B30E60(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 25))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 24) & 0x7E | (*(a1 + 24) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_274B30EA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_274B30F20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_274B30F40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 33) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TopHitButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TopHitButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

unint64_t sub_274B31104()
{
  result = qword_28098B578;
  if (!qword_28098B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B578);
  }

  return result;
}

unint64_t sub_274B31158()
{
  result = qword_2815A3060;
  if (!qword_2815A3060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B5E8, &qword_274BFE3B0);
    sub_274AE5394();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3060);
  }

  return result;
}

unint64_t sub_274B311E4()
{
  result = qword_2815A3038;
  if (!qword_2815A3038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B638, &qword_274BFE438);
    sub_274AE4EBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3038);
  }

  return result;
}

unint64_t sub_274B31270()
{
  result = qword_2815A3078;
  if (!qword_2815A3078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B628, &qword_274BFE428);
    sub_274AE4F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3078);
  }

  return result;
}

uint64_t sub_274B312FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  v15(v12);
  sub_274ADB48C(v10, a4, a6);
  v16 = *(v8 + 8);
  v16(v10, a4);
  sub_274ADB48C(v14, a4, a6);
  return (v16)(v14, a4);
}

_OWORD *sub_274B31430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  sub_274BDA830(v11, v9);
  OUTLINED_FUNCTION_1_12();
  if (v15)
  {
    __break(1u);
LABEL_14:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B330, &qword_274BFDB38);
  if (OUTLINED_FUNCTION_38_0(v16))
  {
    v17 = OUTLINED_FUNCTION_24();
    sub_274BDA830(v17, v18);
    OUTLINED_FUNCTION_11_3();
    if (!v20)
    {
      goto LABEL_14;
    }

    v8 = v19;
  }

  v21 = *v6;
  if (v7)
  {
    __swift_destroy_boxed_opaque_existential_0((v21[7] + 32 * v8));
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_72();

    return sub_274B29EBC(v22, v23);
  }

  else
  {
    sub_274B3205C(v8, v12, v10, v14, v21);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B3153C(uint64_t a1, void *a2)
{
  sub_274BDA8A8();
  OUTLINED_FUNCTION_1_12();
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = v4;
  v8 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B770, &qword_274BFE698);
  if ((OUTLINED_FUNCTION_83(v9) & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_274BDA8A8();
  if ((v8 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_274AD8430(0, &unk_2815A2F10, 0x277D75DA8);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v7 = v10;
LABEL_5:
  v12 = *v2;
  if (v8)
  {
    v13 = v12[7];
    v14 = *(v13 + 8 * v7);
    *(v13 + 8 * v7) = a1;
  }

  else
  {
    sub_274B320C8(v7, a2, a1, v12);

    v15 = a2;
  }
}

uint64_t sub_274B3165C(uint64_t a1, double a2)
{
  sub_274BDA8E8(a1);
  OUTLINED_FUNCTION_1_12();
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v5;
  v9 = v6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B768, &qword_274BFE690);
  result = OUTLINED_FUNCTION_83(v10);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274BDA8E8(a1);
  if ((v9 & 1) != (v12 & 1))
  {
LABEL_11:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v8 = result;
LABEL_5:
  v13 = *v2;
  if (v9)
  {
    *(v13[7] + 8 * v8) = a2;
  }

  else
  {

    return sub_274B3210C(v8, a1, v13, a2);
  }

  return result;
}

uint64_t sub_274B3174C(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_274BDA92C(a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B680, &qword_274BFE488);
  result = sub_274BF5A74();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_274BDA92C(a3);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_274B32150(v10, a1, v14, a3);
  }

  return result;
}

uint64_t sub_274B31858(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

unint64_t sub_274B318A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  v8 = v7;
  v10 = v9;
  sub_274BDA8E8(v7);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B0, &unk_274BFE4C0);
  if ((OUTLINED_FUNCTION_50(v16) & 1) == 0)
  {
    goto LABEL_5;
  }

  v17 = sub_274BDA8E8(v8);
  if ((v15 & 1) != (v18 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v14 = v17;
LABEL_5:
  if (v15)
  {
    *(*(*v6 + 56) + 8 * v14) = v10;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    OUTLINED_FUNCTION_72();

    return sub_274B32194(v21, v22, v23, v24);
  }
}

uint64_t sub_274B3199C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_274BDA830(a5, a6);
  OUTLINED_FUNCTION_1_12();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6B8, &qword_274C00000);
  if ((sub_274BF5A74() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_274BDA830(a5, a6);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  if (v17)
  {
    v20 = *(*v7 + 56) + 32 * v16;
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = a3;
    *(v20 + 24) = a4 & 1;
    *(v20 + 25) = HIBYTE(a4) & 1;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_66();
    sub_274B321CC(v22, v23, a6, a1, a2, a3, v24, v25);
  }
}

void sub_274B31B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61(v9, v10);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for WFGlyphCharacter(0);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B348, &qword_274BFDB48);
  if (OUTLINED_FUNCTION_50(v16))
  {
    sub_274BDA978(v7);
    OUTLINED_FUNCTION_11_3();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v8;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v6;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    sub_274B3222C(v14, v7, v6, v19);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B31BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_61(v9, v10);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
LABEL_12:
    type metadata accessor for WFGlyphCharacter(0);
    sub_274BF5C44();
    __break(1u);
    return;
  }

  v14 = v11;
  v15 = v12;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B338, &qword_274BFDB40);
  if (OUTLINED_FUNCTION_50(v16))
  {
    sub_274BDA978(v7);
    OUTLINED_FUNCTION_11_3();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  v19 = *v8;
  if (v15)
  {
    *(*(v19 + 56) + 8 * v14) = v6;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    sub_274B3222C(v14, v7, v6, v19);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B31CBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v10, v11, v12);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
LABEL_14:
    sub_274BF5C44();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6A8, &qword_274BFE4B8);
  if (OUTLINED_FUNCTION_38_0(v14))
  {
    v15 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v15, v16);
    OUTLINED_FUNCTION_11_3();
    if (!v18)
    {
      goto LABEL_14;
    }

    v9 = v17;
  }

  if (v8)
  {
    *(*(*v7 + 56) + 8 * v9) = v6;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v20 = OUTLINED_FUNCTION_41();
    sub_274B32264(v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_72();
  }
}

void sub_274B31D94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v10, v11, v12);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
LABEL_12:
    sub_274BF5C44();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_79();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B6A0, &qword_274BFE4B0);
  if (OUTLINED_FUNCTION_38_0(v14))
  {
    v15 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v15, v16);
    OUTLINED_FUNCTION_11_3();
    if (!v18)
    {
      goto LABEL_12;
    }

    v9 = v17;
  }

  if (v8)
  {
    *(*(*v7 + 56) + 8 * v9) = v6;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_41();
    sub_274B32264(v19, v20, v21, v22, v23);
    OUTLINED_FUNCTION_72();
  }
}

uint64_t sub_274B31E58()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BDA830(v3, v1);
  OUTLINED_FUNCTION_1_12();
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B690, &qword_274BFE4A0);
  if ((sub_274BF5A74() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_274BDA830(v4, v2);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  if (v13)
  {
    v16 = (*(*v0 + 56) + 16 * v12);
    *v16 = v8;
    v16[1] = v6;
    OUTLINED_FUNCTION_55();
  }

  else
  {
    v19 = OUTLINED_FUNCTION_78();
    sub_274B322AC(v19, v20, v2, v8, v6, v21);
    OUTLINED_FUNCTION_55();
  }
}

uint64_t sub_274B31F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_12_4(v10, v11, v12);
  OUTLINED_FUNCTION_1_12();
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_274BF5C44();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_79();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B698, &qword_274BFE4A8);
  if (OUTLINED_FUNCTION_38_0(v14))
  {
    v15 = OUTLINED_FUNCTION_57();
    sub_274BDA830(v15, v16);
    OUTLINED_FUNCTION_11_3();
    if (!v18)
    {
      goto LABEL_14;
    }

    v9 = v17;
  }

  if (v8)
  {
    *(*(*v7 + 56) + 8 * v9) = v6;
    OUTLINED_FUNCTION_72();
  }

  else
  {
    v21 = OUTLINED_FUNCTION_41();
    sub_274B32264(v21, v22, v23, v24, v25);
    OUTLINED_FUNCTION_72();
  }
}

_OWORD *sub_274B3205C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_274B29EBC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t sub_274B320C8(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
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

unint64_t sub_274B3210C(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a2;
  *(a3[7] + 8 * result) = a4;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_274B32150(unint64_t result, uint64_t a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  *(a3[6] + 8 * result) = a4;
  *(a3[7] + 8 * result) = a2;
  v4 = a3[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v6;
  }

  return result;
}

unint64_t sub_274B32194(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  *(v7 + 8 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_274B321CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7 & 1;
  *(v9 + 25) = HIBYTE(a7) & 1;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

unint64_t sub_274B3222C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_84(a1, a2, a3, a4);
  *(v7 + 2 * result) = v6;
  *(*(v5 + 56) + 8 * result) = v8;
  v9 = *(v5 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v11;
  }

  return result;
}

unint64_t sub_274B32264(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
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

unint64_t sub_274B322AC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

unint64_t sub_274B32344()
{
  result = qword_28098B6C0;
  if (!qword_28098B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B6C0);
  }

  return result;
}

uint64_t objectdestroyTm_5()
{
  v2 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v2;
  type metadata accessor for TopHitCollectionView(0, v10);
  OUTLINED_FUNCTION_1_1();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A7C0, &unk_274BFF8F0);
  OUTLINED_FUNCTION_67();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274BF2F04();
    OUTLINED_FUNCTION_0_2();
    (*(v6 + 8))(v1 + v4);
  }

  else
  {
  }

  sub_274AEF5C0(*(v5 + v0[13]), *(v5 + v0[13] + 8));
  v7 = v0[14];
  sub_274BF2994();
  OUTLINED_FUNCTION_0_2();
  (*(v8 + 8))(v5 + v7);

  return swift_deallocObject();
}

uint64_t sub_274B32574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(uint64_t))
{
  a5(0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_2();
  v9 = OUTLINED_FUNCTION_24();
  v10(v9);
  return a6(v6);
}

uint64_t sub_274B32628()
{
  OUTLINED_FUNCTION_53_0();
  type metadata accessor for TopHitView(v0, v1, v2, v3);
  OUTLINED_FUNCTION_53_0();

  return sub_274B2D5E4(v4, v5, v6);
}

unint64_t sub_274B326A4()
{
  result = qword_2815A3048;
  if (!qword_2815A3048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B6D8, &qword_274BFE4E0);
    sub_274AE4B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A3048);
  }

  return result;
}

unint64_t sub_274B327A8()
{
  result = qword_2815A2FD0;
  if (!qword_2815A2FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B780, &qword_274BFE710);
    sub_274AE09B4();
    sub_274AE3010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2815A2FD0);
  }

  return result;
}

uint64_t sub_274B32834(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_8(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_13_4@<X0>(unint64_t a1@<X8>)
{
  if (a1 >= 0xFFFFFFFF)
  {
    LODWORD(a1) = -1;
  }

  return (a1 + 1);
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_62()
{

  return sub_274BF3A64();
}

void *OUTLINED_FUNCTION_73_0()
{

  return swift_getAtKeyPath();
}

uint64_t OUTLINED_FUNCTION_83(uint64_t a1)
{

  return sub_274BF5A74();
}

void *sub_274B32B00@<X0>(void **a1@<X0>, char a2@<W3>, void *a3@<X8>)
{
  v5 = *a1;
  WFImageSizeFromFile();
  v7 = v6;
  v9 = v8;
  if (a2)
  {
    v10 = sub_274B32F18(v5);
    sub_274BF4A94();
    sub_274BF34A4();
    __dst[0] = 0;
    memcpy(&v18[6], __src, 0x70uLL);
    *v17 = v10;
    *&v17[8] = v7 / v9;
    v17[16] = 0;
    v17[17] = 0;
    memcpy(&v17[18], v18, 0x76uLL);
    *&v17[136] = 0;
    sub_274B34A64(v17);
  }

  else
  {
    v11 = sub_274BF38F4();
    v16[0] = 1;
    sub_274B32D64(v5, v19, v7, v9);
    memcpy(__dst, v19, 0xA1uLL);
    memcpy(__src, v19, 0xA1uLL);
    sub_274B066B4(__dst, v17, &qword_28098B838, &qword_274BFE918);
    sub_274B0671C(__src, &qword_28098B838, &qword_274BFE918);
    memcpy(&v13[7], __dst, 0xA1uLL);
    *v17 = v11;
    *&v17[8] = 0;
    v17[16] = v16[0];
    memcpy(&v17[17], v13, 0xA8uLL);
    sub_274B34C94(v17);
  }

  memcpy(v16, v17, sizeof(v16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7E0, &qword_274BFE8F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B7E8, &qword_274BFE8F8);
  sub_274AFA930(&qword_28098B7F0, &qword_28098B7E0, &qword_274BFE8F0, MEMORY[0x277CE1198]);
  sub_274B34A70();
  sub_274BF3A64();
  return memcpy(a3, v19, 0xBAuLL);
}

uint64_t sub_274B32D64@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v7 = sub_274B32F18(a1);
  sub_274BF4A94();
  sub_274BF34A4();
  v18 = 0;
  v11[144] = 0;
  v13[0] = v7;
  v8 = a3 / a4;
  memcpy(&v13[1], __src, 0x70uLL);
  *&v13[15] = v8;
  LOWORD(v13[16]) = 256;
  memcpy(&v11[7], v13, 0x82uLL);
  v10[136] = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  memcpy((a2 + 9), v11, 0x89uLL);
  *(a2 + 152) = 0;
  *(a2 + 160) = 0;
  v14 = v7;
  memcpy(v15, __src, sizeof(v15));
  v16 = v8;
  v17 = 256;
  sub_274B066B4(v13, v10, &qword_28098B840, &qword_274BFE920);
  return sub_274B0671C(&v14, &qword_28098B840, &qword_274BFE920);
}

id sub_274B32F18(void *a1)
{
  v2 = sub_274B34C9C(a1);
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2;
  }

  if (v3 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
  }

  v6 = sub_274BF1F74();
  v7 = WFUIImageWithAnimatedGIFData();

  if (v7)
  {
    sub_274AF58B0(v4, v5);
  }

  else
  {
    sub_274AD8430(0, &unk_28098EFB0, 0x277D755B8);
    v7 = sub_274B32FDC();
  }

  return v7;
}

id sub_274B32FDC()
{
  OUTLINED_FUNCTION_16_2();
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_4_8();
  v1 = sub_274BF1F74();
  v2 = [v0 initWithData_];

  v3 = OUTLINED_FUNCTION_4_8();
  sub_274AF58B0(v3, v4);
  return v2;
}

id sub_274B33048()
{
  type metadata accessor for CustomImageView();
  v0 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v0 setContentMode_];
  return v0;
}

uint64_t sub_274B330B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B35224();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274B33118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274B35224();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274B3317C(uint64_t a1)
{
  sub_274B35224();
  sub_274BF3A24();
  __break(1u);
}

id sub_274B331D4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithImage_, a1);

  return v3;
}

id sub_274B33258(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for CustomImageView();
  v5 = objc_msgSendSuper2(&v7, sel_initWithImage_highlightedImage_, a1, a2);

  return v5;
}

id sub_274B33308(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for CustomImageView();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_274B33394(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CustomImageView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_274B33428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CustomImageView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274B334D0(unint64_t *a1, void *a2)
{
  sub_274AD8430(0, a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v3;
}

uint64_t sub_274B33594(uint64_t a1, char a2, unint64_t *a3, void *a4)
{
  sub_274AD8430(0, a3, a4);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

void sub_274B33628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B858, 0x277CBFC40);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B858, 0x277CBFC40);
    v37 = *(v25 + 24);
    if (v37 && (v38 = objc_opt_self(), OUTLINED_FUNCTION_17_3(v38)))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v39);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v40;
      a12 = &block_descriptor_82;
      _Block_copy(&a9);
      v41 = OUTLINED_FUNCTION_29_1();
      v42 = v28;
      OUTLINED_FUNCTION_28_1();
      v43 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v43, v44);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v45 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v46);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v47;
      a12 = &block_descriptor_76;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v48 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v48, v49);
      v50 = v45;
      v51 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        v52 = objc_opt_self();
        v51 = OUTLINED_FUNCTION_17_3(v52);
        v53 = v51;
        if (v51)
        {
          v51 = v37;
        }
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_14_1(v51, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B3380C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B7D0, 0x277CFC3C8);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B7D0, 0x277CFC3C8);
    v37 = *(v25 + 24);
    if (v37 && (v38 = objc_opt_self(), OUTLINED_FUNCTION_17_3(v38)))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v39);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v40;
      a12 = &block_descriptor_9;
      _Block_copy(&a9);
      v41 = OUTLINED_FUNCTION_29_1();
      v42 = v28;
      OUTLINED_FUNCTION_28_1();
      v43 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v43, v44);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v45 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v46);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v47;
      a12 = &block_descriptor_4;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v48 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v48, v49);
      v50 = v45;
      v51 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        v52 = objc_opt_self();
        v51 = OUTLINED_FUNCTION_17_3(v52);
        v53 = v51;
        if (v51)
        {
          v51 = v37;
        }
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_14_1(v51, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B339F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B848, 0x277CCACA8);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B848, 0x277CCACA8);
    v37 = *(v25 + 24);
    if (v37 && (v38 = objc_opt_self(), OUTLINED_FUNCTION_17_3(v38)))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v39);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v40;
      a12 = &block_descriptor_34_0;
      _Block_copy(&a9);
      v41 = OUTLINED_FUNCTION_29_1();
      v42 = v28;
      OUTLINED_FUNCTION_28_1();
      v43 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v43, v44);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v45 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v46);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v47;
      a12 = &block_descriptor_28;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v48 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v48, v49);
      v50 = v45;
      v51 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        v52 = objc_opt_self();
        v51 = OUTLINED_FUNCTION_17_3(v52);
        v53 = v51;
        if (v51)
        {
          v51 = v37;
        }
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_14_1(v51, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B33BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&unk_28098EFB0, 0x277D755B8);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &unk_28098EFB0, 0x277D755B8);
    v37 = *(v25 + 24);
    if (v37 && (v38 = objc_opt_self(), OUTLINED_FUNCTION_17_3(v38)))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v39);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v40;
      a12 = &block_descriptor_106;
      _Block_copy(&a9);
      v41 = OUTLINED_FUNCTION_29_1();
      v42 = v28;
      OUTLINED_FUNCTION_28_1();
      v43 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v43, v44);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v45 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v46);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v47;
      a12 = &block_descriptor_100;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v48 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v48, v49);
      v50 = v45;
      v51 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        v52 = objc_opt_self();
        v51 = OUTLINED_FUNCTION_17_3(v52);
        v53 = v51;
        if (v51)
        {
          v51 = v37;
        }
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_14_1(v51, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

void sub_274B33DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v29;
  a24 = v30;
  OUTLINED_FUNCTION_16_2();
  sub_274B334D0(&qword_28098B850, 0x277CD97A8);
  OUTLINED_FUNCTION_19_3();
  if (v33)
  {
    OUTLINED_FUNCTION_27_1(v31, v32, &qword_28098B850, 0x277CD97A8);
    v37 = *(v25 + 24);
    if (v37 && (v38 = objc_opt_self(), OUTLINED_FUNCTION_17_3(v38)))
    {
      OUTLINED_FUNCTION_21_1();
      OUTLINED_FUNCTION_7_10();
      v39 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v39);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_2_16();
      a11 = v40;
      a12 = &block_descriptor_58;
      _Block_copy(&a9);
      v41 = OUTLINED_FUNCTION_29_1();
      v42 = v28;
      OUTLINED_FUNCTION_28_1();
      v43 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v43, v44);

      OUTLINED_FUNCTION_26_1([v26 objectClass], sel_getObjectRepresentation_forClass_);
      _Block_release(v27);
    }

    else
    {
      v45 = *(v25 + 16);
      OUTLINED_FUNCTION_7_10();
      v46 = swift_allocObject();
      OUTLINED_FUNCTION_9_9(v46);
      OUTLINED_FUNCTION_0_13();
      OUTLINED_FUNCTION_1_13();
      a11 = v47;
      a12 = &block_descriptor_52;
      _Block_copy(&a9);
      OUTLINED_FUNCTION_15_3();
      v48 = OUTLINED_FUNCTION_4_8();
      sub_274ADDED0(v48, v49);
      v50 = v45;
      v51 = OUTLINED_FUNCTION_30_1();
      if (v37)
      {
        v52 = objc_opt_self();
        v51 = OUTLINED_FUNCTION_17_3(v52);
        v53 = v51;
        if (v51)
        {
          v51 = v37;
        }
      }

      else
      {
        v53 = 0;
      }

      OUTLINED_FUNCTION_14_1(v51, sel_getFileRepresentation_forType_);

      _Block_release(v26);
    }

    OUTLINED_FUNCTION_13_5();
  }

  else
  {
    OUTLINED_FUNCTION_13_5();

    sub_274AE8EFC(v34, v35);
  }
}

uint64_t sub_274B33F9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v36 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  v35 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4();
  v26 = v25 - v24;
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  v34 = sub_274BF5504();
  sub_274B066B4(a1, v38, &qword_28098B300, &qword_274BFDB20);
  v27 = swift_allocObject();
  v28 = v38[1];
  *(v27 + 16) = v38[0];
  *(v27 + 32) = v28;
  *(v27 + 48) = a5;
  *(v27 + 56) = a4;
  *(v27 + 64) = a6;
  *(v27 + 72) = a7;
  aBlock[4] = a9;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6();
  aBlock[2] = v29;
  aBlock[3] = a10;
  v30 = _Block_copy(aBlock);

  v31 = a4;
  sub_274ADDED0(a6, a7);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  OUTLINED_FUNCTION_8_8(&qword_280989F98);
  OUTLINED_FUNCTION_31_1();
  sub_274BF57F4();
  v32 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v32);
  _Block_release(v30);

  (*(v36 + 8))(v20, v15);
  return (*(v22 + 8))(v26, v35);
}

void sub_274B34244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_10_4();
  sub_274B066B4(v28, &a11, &qword_28098B300, &qword_274BFDB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300, &qword_274BFDB20);
  v29 = OUTLINED_FUNCTION_11_0();
  v32 = sub_274AD8430(v29, v30, v31);
  if (OUTLINED_FUNCTION_24_2(v32, v33) && a10)
  {
    v34 = a10;
    OUTLINED_FUNCTION_25_1(a10, 0);

    if (!v24)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v25)
  {
    v35 = v25;
    v36 = v25;
  }

  else
  {
    sub_274B349FC();
    v36 = swift_allocError();
    LOBYTE(a11) = 1;
  }

  OUTLINED_FUNCTION_25_1(v36, 1);
  if (v24)
  {
LABEL_9:
    v24();
  }

LABEL_10:
  OUTLINED_FUNCTION_13_5();
}

void sub_274B34334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_18_3();
  a23 = v26;
  a24 = v27;
  OUTLINED_FUNCTION_10_4();
  sub_274B066B4(v28, &a11, &qword_28098B300, &qword_274BFDB20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B300, &qword_274BFDB20);
  v29 = OUTLINED_FUNCTION_11_0();
  v32 = sub_274AD8430(v29, v30, v31);
  if (OUTLINED_FUNCTION_24_2(v32, v33))
  {
    v34 = a10;
    OUTLINED_FUNCTION_25_1(a10, 0);

    if (!v24)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v25)
  {
    v35 = v25;
    v36 = v25;
  }

  else
  {
    sub_274B349FC();
    v36 = swift_allocError();
    LOBYTE(a11) = 1;
  }

  OUTLINED_FUNCTION_25_1(v36, 1);
  if (v24)
  {
LABEL_8:
    v24();
  }

LABEL_9:
  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_274B34420(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (!a2)
  {
    memset(v14, 0, sizeof(v14));
    if (a3)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  ObjectType = swift_getObjectType();
  *&v12 = a2;
  sub_274B29EBC(&v12, v14);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_274BF4F44();
  v5 = v9;
LABEL_6:

  swift_unknownObjectRetain();
  v10 = a4;
  v7(v14, v8, v5, a4);

  return sub_274B0671C(v14, &qword_28098B300, &qword_274BFDB20);
}

uint64_t sub_274B34508(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v34 = v21;
  v35 = v20;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4();
  v24 = v23 - v22;
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  v33 = sub_274BF5504();
  v25 = swift_allocObject();
  v25[2] = a1;
  v25[3] = a3;
  v25[4] = a2;
  v25[5] = a4;
  v25[6] = a5;
  aBlock[4] = a7;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_6();
  aBlock[2] = v26;
  aBlock[3] = a8;
  v27 = _Block_copy(aBlock);
  v28 = a1;

  v29 = a2;
  sub_274ADDED0(a4, a5);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  OUTLINED_FUNCTION_8_8(&qword_280989F98);
  OUTLINED_FUNCTION_31_1();
  sub_274BF57F4();
  v30 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v30);
  _Block_release(v27);

  (*(v36 + 8))(v19, v14);
  return (*(v34 + 8))(v24, v35);
}

uint64_t sub_274B347C8()
{
  OUTLINED_FUNCTION_10_4();
  v3 = v2;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = v5;
    v8 = 0;
  }

  else
  {
    if (v1)
    {
      v9 = v1;
      v7 = v1;
    }

    else
    {
      sub_274B349FC();
      v7 = swift_allocError();
    }

    v8 = 1;
  }

  result = OUTLINED_FUNCTION_25_1(v7, v8);
  if (v0)
  {
    return v0(result);
  }

  return result;
}

void sub_274B34890(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

double block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

unint64_t sub_274B349A4()
{
  result = qword_280989F88;
  if (!qword_280989F88)
  {
    sub_274BF4C94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280989F88);
  }

  return result;
}

unint64_t sub_274B349FC()
{
  result = qword_28098B7D8;
  if (!qword_28098B7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B7D8);
  }

  return result;
}

unint64_t sub_274B34A70()
{
  result = qword_28098B7F8;
  if (!qword_28098B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B7E8, &qword_274BFE8F8);
    sub_274B34B28();
    sub_274AFA930(&qword_28098B828, &qword_28098B830, &qword_274BFE910, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B7F8);
  }

  return result;
}

unint64_t sub_274B34B28()
{
  result = qword_28098B800;
  if (!qword_28098B800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B808, &qword_274BFE900);
    sub_274B34BB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B800);
  }

  return result;
}

unint64_t sub_274B34BB4()
{
  result = qword_28098B810;
  if (!qword_28098B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B818, &qword_274BFE908);
    sub_274B34C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B810);
  }

  return result;
}

unint64_t sub_274B34C40()
{
  result = qword_28098B820;
  if (!qword_28098B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B820);
  }

  return result;
}

uint64_t sub_274B34C9C(void *a1)
{
  v1 = [a1 mappedData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_274BF1F84();

  return v3;
}

uint64_t objectdestroy_2Tm()
{

  if (*(v0 + 24))
  {
  }

  OUTLINED_FUNCTION_7_10();

  return swift_deallocObject();
}

uint64_t objectdestroy_11Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_17Tm_0()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B3516C(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t sub_274B351C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_274B35224()
{
  result = qword_28098B870;
  if (!qword_28098B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098B870);
  }

  return result;
}

void *OUTLINED_FUNCTION_9_9(void *result)
{
  result[2] = v2;
  result[3] = v3;
  result[4] = v1;
  return result;
}

uint64_t sub_274B35344@<X0>(uint64_t a1@<X8>)
{
  v2 = dlopen(0, 1);
  if (v2)
  {
    v3 = v2;
    v4 = dlsym(v2, "_mh_execute_header");
    if (v4 && (v5 = v4 + 8, (v6 = v4[4]) != 0))
    {
      while (*v5 != 27)
      {
        v5 = (v5 + v5[1]);
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_274BF2144();
      v7 = sub_274BF2164();
      v8 = a1;
      v9 = 0;
    }

    else
    {
LABEL_6:
      v7 = sub_274BF2164();
      v8 = a1;
      v9 = 1;
    }

    __swift_storeEnumTagSinglePayload(v8, v9, 1, v7);

    return dlclose(v3);
  }

  else
  {
    v10 = sub_274BF2164();

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v10);
  }
}

uint64_t DebugMenuView.init(database:close:onShare:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a4;
  v41 = a5;
  v38 = a2;
  v39 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  if (qword_2815A36B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for LogStreamManager(0);
  sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager, &protocol conformance descriptor for LogStreamManager);

  OUTLINED_FUNCTION_4_9();
  *a6 = sub_274BF3264();
  *(a6 + 8) = v14;
  if (qword_2815A3300 != -1)
  {
    swift_once();
  }

  v15 = qword_2815A3308;
  type metadata accessor for DebugStatusBarManager();
  sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager, &protocol conformance descriptor for DebugStatusBarManager);
  v16 = v15;
  OUTLINED_FUNCTION_4_9();
  *(a6 + 16) = sub_274BF3264();
  *(a6 + 24) = v17;
  if (qword_2815A32D8 != -1)
  {
    swift_once();
  }

  type metadata accessor for AttributeGraphProfiler(0);
  sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler, &protocol conformance descriptor for AttributeGraphProfiler);

  *(a6 + 32) = sub_274BF3264();
  *(a6 + 40) = v18;
  *(a6 + 48) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v19 = objc_opt_self();
  *(a6 + 56) = OUTLINED_FUNCTION_0_14([v19 systemShortcutsUserDefaults]);
  *(a6 + 64) = OUTLINED_FUNCTION_2_17();
  *(a6 + 72) = OUTLINED_FUNCTION_2_17();
  *(a6 + 80) = OUTLINED_FUNCTION_2_17();
  *(a6 + 88) = OUTLINED_FUNCTION_8_9();
  *(a6 + 96) = OUTLINED_FUNCTION_2_17();
  *(a6 + 104) = OUTLINED_FUNCTION_2_17();
  *(a6 + 112) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v20 = OUTLINED_FUNCTION_1_14();
  *(a6 + 120) = OUTLINED_FUNCTION_0_14(v20);
  sub_274BF4F44();
  v21 = OUTLINED_FUNCTION_1_14();
  *(a6 + 128) = OUTLINED_FUNCTION_0_14(v21);
  *(a6 + 136) = OUTLINED_FUNCTION_8_9();
  *(a6 + 144) = OUTLINED_FUNCTION_2_17();
  sub_274BF4F44();
  v22 = [v19 workflowUserDefaults];
  OUTLINED_FUNCTION_4_9();
  *(a6 + 152) = sub_274BF2DF4();
  sub_274BF4F44();
  v23 = [v19 syncShortcutsUserDefaults];
  OUTLINED_FUNCTION_4_9();
  *(a6 + 160) = sub_274BF2DF4();
  sub_274BF4F44();
  v24 = OUTLINED_FUNCTION_1_14();
  *(a6 + 168) = OUTLINED_FUNCTION_0_14(v24);
  sub_274BF4F44();
  v25 = OUTLINED_FUNCTION_1_14();
  *(a6 + 176) = OUTLINED_FUNCTION_0_14(v25);
  sub_274BF4F44();
  v26 = OUTLINED_FUNCTION_1_14();
  *(a6 + 184) = OUTLINED_FUNCTION_0_14(v26);
  v42 = 0;
  OUTLINED_FUNCTION_11_4();
  v27 = v44;
  *(a6 + 192) = v43;
  *(a6 + 200) = v27;
  v42 = 0;
  OUTLINED_FUNCTION_11_4();
  v28 = v44;
  *(a6 + 208) = v43;
  *(a6 + 216) = v28;
  v42 = 0;
  OUTLINED_FUNCTION_11_4();
  v29 = v44;
  *(a6 + 224) = v43;
  *(a6 + 232) = v29;
  v30 = type metadata accessor for DebugMenuView(0);
  v31 = sub_274BF1F54();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v31);
  sub_274B01968(v13, v10, &qword_28098EEE0, &qword_274BFA930);
  sub_274BF4774();
  sub_274AFA708(v13, &qword_28098EEE0, &qword_274BFA930);
  result = sub_274B35344(a6 + v30[30]);
  *(a6 + v30[29]) = a1;
  v33 = (a6 + v30[31]);
  v34 = v39;
  *v33 = v38;
  v33[1] = v34;
  v35 = (a6 + v30[32]);
  v36 = v41;
  *v35 = v40;
  v35[1] = v36;
  return result;
}

uint64_t DebugMenuView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v24 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B898, &qword_274BFEA50);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A0, &qword_274BFEA58);
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  v25 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A8, &qword_274BFEA60);
  sub_274AFA930(&qword_28098B8B0, &qword_28098B8A8, &qword_274BFEA60, MEMORY[0x277CE14C0]);
  sub_274BF4034();
  sub_274BF38A4();
  OUTLINED_FUNCTION_3_3();
  sub_274AFA930(v14, &qword_28098B898, &qword_274BFEA50, v15);
  sub_274BF42B4();

  (*(v5 + 8))(v8, v3);
  v16 = (v2 + *(type metadata accessor for DebugMenuView(0) + 124));
  v17 = *v16;
  v18 = v16[1];
  if (*v16)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v17;
    *(v19 + 24) = v18;
    v20 = sub_274B32730;
  }

  else
  {
    v20 = CGSizeMake;
    v19 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  sub_274ADDED0(v17, v18);
  sub_274B40768(sub_274B41304, v21, v24);

  return (*(v10 + 8))(v13, v23);
}

uint64_t sub_274B35D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C0, &unk_274C03C80);
  v159 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v147 = v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v146 = v121 - v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C8, &qword_274BFEBE8);
  v166 = *(v145 - 8);
  MEMORY[0x28223BE20](v145);
  v144 = v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v156 = v121 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D0, &unk_274C03C70);
  v165 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v142 = v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v150 = v121 - v11;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D8, &qword_274BFEBF0);
  v164 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v141 = v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v158 = v121 - v14;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E0, &unk_274C03C60);
  v163 = *(v157 - 8);
  MEMORY[0x28223BE20](v157);
  v138 = v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v154 = v121 - v17;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E8, &qword_274BFEBF8);
  v162 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v132 = v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v153 = v121 - v20;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F0, &unk_274C03C50);
  v139 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = v121 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v134 = v121 - v23;
  MEMORY[0x28223BE20](v24);
  v129 = v121 - v25;
  MEMORY[0x28223BE20](v26);
  v122 = v121 - v27;
  MEMORY[0x28223BE20](v28);
  v151 = v121 - v29;
  MEMORY[0x28223BE20](v30);
  v149 = v121 - v31;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F8, &qword_274BFEC00);
  v161 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v128 = v121 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v124 = v121 - v34;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA00, &unk_274C03C40);
  v160 = *(v136 - 8);
  MEMORY[0x28223BE20](v136);
  v126 = v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v127 = v121 - v37;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA08, &qword_274C03C30);
  v131 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v125 = v121 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v130 = v121 - v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA10, &qword_274BFEC08);
  v41 = MEMORY[0x277CE14C0];
  sub_274AFA930(&qword_28098BA18, &qword_28098BA10, &qword_274BFEC08, MEMORY[0x277CE14C0]);
  sub_274BF49C4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v42;
  LOBYTE(v180) = v43 & 1;
  v181 = v44;
  v177 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA20, &qword_274BFEC10);
  sub_274AFA930(&qword_28098BA28, &qword_28098BA20, &qword_274BFEC10, v41);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v45;
  LOBYTE(v180) = v46 & 1;
  v181 = v47;
  v176 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA30, &qword_274BFEC18);
  sub_274AFA930(&qword_28098BA38, &qword_28098BA30, &qword_274BFEC18, v41);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v48;
  LOBYTE(v180) = v49 & 1;
  v181 = v50;
  sub_274BF38A4();
  v190 = sub_274BF40E4();
  v191 = v51;
  v192 = v52 & 1;
  v193 = v53;
  v175 = a1;
  v121[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  v121[2] = sub_274AFA930(&qword_28098BA48, &qword_28098BA40, &qword_274BFEC20, MEMORY[0x277CDF068]);
  sub_274BF49B4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v54;
  LOBYTE(v180) = v55 & 1;
  v181 = v56;
  v174 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA50, &qword_274BFEC28);
  sub_274AFA930(&qword_28098BA58, &qword_28098BA50, &qword_274BFEC28, v41);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v57;
  LOBYTE(v180) = v58 & 1;
  v181 = v59;
  v173 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA60, &qword_274BFEC30);
  sub_274AFA930(&qword_28098BA68, &qword_28098BA60, &qword_274BFEC30, MEMORY[0x277CDD938]);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v60;
  LOBYTE(v180) = v61 & 1;
  v181 = v62;
  v172 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA70, &qword_274BFEC38);
  sub_274AFA930(&qword_28098BA78, &qword_28098BA70, &qword_274BFEC38, v41);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v63;
  LOBYTE(v180) = v64 & 1;
  v181 = v65;
  v171 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA80, &qword_274BFEC40);
  sub_274AFA930(&qword_28098BA88, &qword_28098BA80, &qword_274BFEC40, v41);
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v66;
  LOBYTE(v180) = v67 & 1;
  v181 = v68;
  v170 = a1;
  sub_274BF49A4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v69;
  LOBYTE(v180) = v70 & 1;
  v181 = v71;
  sub_274BF38A4();
  v190 = sub_274BF40E4();
  v191 = v72;
  v192 = v73 & 1;
  v193 = v74;
  v169 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA90, &qword_274BFEC48);
  sub_274AFA930(&qword_28098BA98, &qword_28098BA90, &qword_274BFEC48, v41);
  sub_274BF49B4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v75;
  LOBYTE(v180) = v76 & 1;
  v181 = v77;
  sub_274BF38A4();
  v190 = sub_274BF40E4();
  v191 = v78;
  v192 = v79 & 1;
  v193 = v80;
  v168 = a1;
  sub_274BF49B4();
  sub_274BF38A4();
  v178 = sub_274BF40E4();
  v179 = v81;
  LOBYTE(v180) = v82 & 1;
  v181 = v83;
  sub_274BF38A4();
  v190 = sub_274BF40E4();
  v191 = v84;
  v192 = v85 & 1;
  v193 = v86;
  v167 = a1;
  v87 = v122;
  sub_274BF49B4();
  v88 = v125;
  (*(v131 + 16))(v125, v130, v133);
  v178 = v88;
  v89 = v126;
  (*(v160 + 16))(v126, v127, v136);
  v179 = v89;
  v90 = v128;
  (*(v161 + 16))(v128, v124, v140);
  v180 = v90;
  v91 = *(v139 + 16);
  v92 = v129;
  v91(v129, v149, v137);
  v181 = v92;
  v93 = v132;
  (*(v162 + 16))(v132, v153, v143);
  v182 = v93;
  v94 = v138;
  (*(v163 + 16))(v138, v154, v157);
  v183 = v94;
  v95 = v141;
  (*(v164 + 16))(v141, v158, v152);
  v184 = v95;
  v96 = v142;
  (*(v165 + 16))(v142, v150, v155);
  v185 = v96;
  v97 = v144;
  v98 = v145;
  (*(v166 + 16))(v144, v156, v145);
  v186 = v97;
  v99 = v159;
  v101 = v146;
  v100 = v147;
  v102 = v148;
  (*(v159 + 16))(v147, v146, v148);
  v187 = v100;
  v103 = v134;
  v104 = v137;
  v91(v134, v151, v137);
  v188 = v103;
  v105 = v135;
  v91(v135, v87, v104);
  v189 = v105;
  sub_274BA10B4();
  v106 = *(v139 + 8);
  v106(v87, v104);
  v106(v151, v104);
  v107 = *(v99 + 8);
  v159 = v99 + 8;
  v151 = v107;
  (v107)(v101, v102);
  v108 = *(v166 + 8);
  v166 += 8;
  v146 = v108;
  (v108)(v156, v98);
  v109 = *(v165 + 8);
  v165 += 8;
  v156 = v109;
  (v109)(v150, v155);
  v110 = *(v164 + 8);
  v164 += 8;
  v150 = v110;
  (v110)(v158, v152);
  v111 = *(v163 + 8);
  v163 += 8;
  v158 = v111;
  (v111)(v154, v157);
  v112 = *(v162 + 8);
  v162 += 8;
  v154 = v112;
  v113 = v143;
  (v112)(v153, v143);
  v106(v149, v104);
  v114 = *(v161 + 8);
  v161 += 8;
  v153 = v114;
  v115 = v140;
  (v114)(v124, v140);
  v116 = *(v160 + 8);
  v160 += 8;
  v149 = v116;
  v117 = v136;
  (v116)(v127, v136);
  v118 = *(v131 + 8);
  v119 = v133;
  v118(v130, v133);
  v106(v135, v104);
  v106(v134, v104);
  (v151)(v147, v148);
  (v146)(v144, v145);
  (v156)(v142, v155);
  (v150)(v141, v152);
  (v158)(v138, v157);
  (v154)(v132, v113);
  v106(v129, v104);
  (v153)(v128, v115);
  (v149)(v126, v117);
  return (v118)(v125, v119);
}

uint64_t sub_274B37354@<X0>(char *a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8, &qword_274BFB0F0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v31 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v31 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  sub_274BF38A4();
  v32 = v18;
  sub_274BF47E4();
  sub_274BF38A4();
  v19 = v15;
  sub_274BF47E4();
  sub_274BF38A4();
  v20 = v12;
  sub_274BF47E4();
  v21 = *(v2 + 16);
  v22 = v9;
  v31 = v9;
  v21(v9, v18, v1);
  v23 = v6;
  v24 = v19;
  v21(v6, v19, v1);
  v25 = v33;
  v26 = v20;
  v21(v33, v20, v1);
  v27 = v34;
  v21(v34, v22, v1);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD28, &unk_274BFEE80);
  v21(&v27[*(v28 + 48)], v23, v1);
  v21(&v27[*(v28 + 64)], v25, v1);
  v29 = *(v2 + 8);
  v29(v26, v1);
  v29(v24, v1);
  v29(v32, v1);
  v29(v25, v1);
  v29(v23, v1);
  return (v29)(v31, v1);
}

void sub_274B376F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

void sub_274B37824()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

void sub_274B37958()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() sharedContext];
  sub_274BF1F34();
  v4 = sub_274BF1F54();
  if (__swift_getEnumTagSinglePayload(v2, 1, v4) == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = sub_274BF1ED4();
    (*(*(v4 - 8) + 8))(v2, v4);
    [v3 openURL_];
  }
}

uint64_t sub_274B37A8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_274BF3804();
  LOBYTE(v17[0]) = 1;
  sub_274B37CAC(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v13, __src, sizeof(v13));
  sub_274B01968(__dst, v15, &qword_28098BAD0, &qword_274C024B0);
  sub_274AFA708(v13, &qword_28098BAD0, &qword_274C024B0);
  memcpy(&v11[7], __dst, 0x50uLL);
  v6 = v17[0];
  v7 = sub_274BF3904();
  __src[0] = 1;
  sub_274B37F34(a1, v14);
  *&v10[7] = v14[0];
  *&v10[23] = v14[1];
  *&v10[39] = v14[2];
  *&v10[55] = v14[3];
  LOBYTE(a1) = __src[0];
  v15[0] = v5;
  v15[1] = 0;
  LOBYTE(v15[2]) = v6;
  memcpy(&v15[2] + 1, v11, 0x57uLL);
  memcpy(v9, v15, 0x68uLL);
  v16[0] = v7;
  v16[1] = 0;
  LOBYTE(v16[2]) = __src[0];
  memcpy(&v16[2] + 1, v10, 0x47uLL);
  memcpy(&v9[104], v16, 0x58uLL);
  memcpy(a2, v9, 0xC0uLL);
  v17[0] = v7;
  v17[1] = 0;
  v18 = a1;
  memcpy(v19, v10, sizeof(v19));
  sub_274B01968(v15, __src, &qword_28098BB18, &qword_274C05C20);
  sub_274B01968(v16, __src, &qword_28098BAA8, &qword_274C031E0);
  sub_274AFA708(v17, &qword_28098BAA8, &qword_274C031E0);
  *__src = v5;
  *&__src[8] = 0;
  __src[16] = v6;
  memcpy(&__src[17], v11, 0x57uLL);
  return sub_274AFA708(__src, &qword_28098BB18, &qword_274C05C20);
}

uint64_t sub_274B37CAC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  LOWORD(v23) = 256;
  v2 = sub_274BF40E4();
  v25 = v3;
  v26 = v2;
  HIDWORD(v23) = v4;
  v27 = v5;
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_274B4262C(v6);
  if (!v7)
  {
    v30 = 0u;
    v31 = 0u;
    goto LABEL_6;
  }

  sub_274B0691C(0x656C646E75424643, 0xEF6E6F6973726556, v7, &v30);

  if (!*(&v31 + 1))
  {
LABEL_6:
    sub_274AFA708(&v30, &qword_28098B300, &qword_274BFDB20);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v8 = 0xE900000000000064;
    v9 = 0x6E756F4620746F4ELL;
    goto LABEL_8;
  }

  v9 = v28;
  v8 = v29;
LABEL_8:
  *&v30 = v9;
  *(&v30 + 1) = v8;
  sub_274ADDF6C();
  v10 = sub_274BF4104();
  v12 = v11;
  v14 = v13;
  sub_274BF4654();
  v15 = sub_274BF4094();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_274AFA1D0(v10, v12, v14 & 1);

  LOBYTE(v30) = v24 & 1;
  *a1 = v26;
  *(a1 + 8) = v25;
  *(a1 + 16) = v24 & 1;
  *(a1 + 24) = v27;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v15;
  *(a1 + 56) = v17;
  *(a1 + 64) = v19 & 1;
  *(a1 + 72) = v21;
  sub_274AF396C(v26, v25, v24 & 1);

  sub_274AF396C(v15, v17, v19 & 1);

  sub_274AFA1D0(v15, v17, v19 & 1);

  sub_274AFA1D0(v26, v25, v30);
}

uint64_t sub_274B37F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C8, &qword_274BFEAC8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  sub_274BF38A4();
  v7 = sub_274BF40E4();
  v38 = v8;
  v39 = v7;
  HIDWORD(v37) = v9;
  v40 = v10;
  v11 = type metadata accessor for DebugMenuView(0);
  sub_274B01968(a1 + *(v11 + 120), v6, &qword_28098B8C8, &qword_274BFEAC8);
  v12 = sub_274BF2164();
  if (__swift_getEnumTagSinglePayload(v6, 1, v12) == 1)
  {
    sub_274AFA708(v6, &qword_28098B8C8, &qword_274BFEAC8);
    v13 = 0xE900000000000064;
    v14 = 0x6E756F6620746F4ELL;
  }

  else
  {
    v14 = sub_274BF2124();
    v13 = v15;
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  v42 = v14;
  v43 = v13;
  sub_274ADDF6C();
  v16 = sub_274BF4104();
  v18 = v17;
  v20 = v19;
  sub_274BF4654();
  v21 = sub_274BF4094();
  v23 = v22;
  v25 = v24;

  sub_274AFA1D0(v16, v18, v20 & 1);

  sub_274BF3FB4();
  v26 = sub_274BF40D4();
  v28 = v27;
  v30 = v29;
  v32 = v31;

  sub_274AFA1D0(v21, v23, v25 & 1);

  v33 = BYTE4(v37) & 1;
  v41 = BYTE4(v37) & 1;
  LOBYTE(v42) = BYTE4(v37) & 1;
  v44 = v30 & 1;
  v35 = v38;
  v34 = v39;
  *a2 = v39;
  *(a2 + 8) = v35;
  *(a2 + 16) = v33;
  *(a2 + 24) = v40;
  *(a2 + 32) = v26;
  *(a2 + 40) = v28;
  *(a2 + 48) = v30 & 1;
  *(a2 + 56) = v32;
  sub_274AF396C(v34, v35, v33);

  sub_274AF396C(v26, v28, v30 & 1);

  sub_274AFA1D0(v26, v28, v30 & 1);

  sub_274AFA1D0(v34, v35, v41);
}

uint64_t sub_274B38238@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCC8, &qword_274BFEDB0);
  MEMORY[0x28223BE20](v66);
  v63 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCD0, &qword_274BFEDB8);
  v58 = *(v4 - 8);
  v59 = v4;
  MEMORY[0x28223BE20](v4);
  v57 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = v54 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCD8, &qword_274BFEDC0);
  MEMORY[0x28223BE20](v8 - 8);
  v67 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v64 = v54 - v11;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v70 = v54 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v54 - v16;
  sub_274BF38A4();
  v18 = type metadata accessor for LogStreamManager(0);
  sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager, &protocol conformance descriptor for LogStreamManager);
  v56 = v18;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  v62 = v17;
  sub_274BF4884();
  if (sub_274B9E610())
  {
    v55 = sub_274BF38A4();
    v54[1] = v19;
    v20 = a1;
    type metadata accessor for DebugStatusBarManager();
    sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager, &protocol conformance descriptor for DebugStatusBarManager);
    v21 = sub_274BF3274();
    swift_getKeyPath();
    sub_274BF3284();

    v22 = v70;
    sub_274BF4884();

    v23 = sub_274BF3264();
    v25 = v24;
    v75[0] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE8, &qword_274C04630);
    v26 = sub_274BF4774();
    v27 = v71;
    v28 = v72;
    v71 = v23;
    v72 = v25;
    v73 = v27;
    v74 = v28;
    MEMORY[0x28223BE20](v26);
    v54[-2] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCF0, &qword_274BFEE20);
    sub_274AFA930(&qword_28098BCF8, &qword_28098BCF0, &qword_274BFEE20, MEMORY[0x277CE1138]);
    sub_274B4247C();
    v29 = v61;
    sub_274BF3244();
    v30 = v65;
    v31 = *(v65 + 16);
    v32 = v60;
    v31(v60, v22, v69);
    v33 = v57;
    v34 = v58;
    v55 = *(v58 + 16);
    v56 = v31;
    v35 = v29;
    v36 = v59;
    v55(v57, v35, v59);
    v37 = v63;
    v38 = v32;
    v39 = v69;
    v31(v63, v38, v69);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD08, &qword_274BFEE28);
    v55((v37 + *(v40 + 48)), v33, v36);
    v41 = *(v34 + 8);
    v41(v61, v36);
    v42 = *(v30 + 8);
    v43 = v39;
    v42(v70, v39);
    v41(v33, v36);
    v44 = v56;
    v42(v60, v43);
    v45 = v64;
    sub_274B16ED0(v63, v64, &qword_28098BCC8, &qword_274BFEDB0);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v66);
    v46 = v70;
    v47 = v43;
  }

  else
  {
    v45 = v64;
    __swift_storeEnumTagSinglePayload(v64, 1, 1, v66);
    v30 = v65;
    v44 = *(v65 + 16);
    v47 = v69;
    v46 = v70;
  }

  v48 = v62;
  v44(v46, v62, v47);
  v49 = v67;
  sub_274B01968(v45, v67, &qword_28098BCD8, &qword_274BFEDC0);
  v50 = v68;
  v44(v68, v46, v47);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE0, &qword_274BFEDF0);
  sub_274B01968(v49, &v50[*(v51 + 48)], &qword_28098BCD8, &qword_274BFEDC0);
  sub_274AFA708(v45, &qword_28098BCD8, &qword_274BFEDC0);
  v52 = *(v30 + 8);
  v52(v48, v47);
  sub_274AFA708(v49, &qword_28098BCD8, &qword_274BFEDC0);
  return (v52)(v46, v47);
}

void *sub_274B38A00@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_274BF3804();
  v10 = 1;
  sub_274B38ADC(__src);
  memcpy(__dst, __src, 0x53uLL);
  memcpy(v12, __src, 0x53uLL);
  sub_274B01968(__dst, v7, &qword_28098BD10, &qword_274BFEE30);
  sub_274AFA708(v12, &qword_28098BD10, &qword_274BFEE30);
  memcpy(&v9[7], __dst, 0x53uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x5AuLL);
}

uint64_t sub_274B38ADC@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_274BF3894();
  MEMORY[0x28223BE20](v3 - 8);
  MEMORY[0x28223BE20](v4);
  sub_274BF38A4();
  v37 = sub_274BF40E4();
  v38 = v5;
  v7 = v6;
  v9 = v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  switch(v44)
  {
    case 1:
      sub_274BF3884();
      sub_274BF3874();
      *&v39 = v43;
      sub_274BF3854();
      sub_274BF3874();
      sub_274BF38B4();
      sub_274BF40E4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      goto LABEL_7;
    case 2:
      sub_274B03D34(v43, 2);
      sub_274BF3884();
      sub_274BF3874();
      sub_274B9DB00();
      sub_274BF3854();
      sub_274BF3874();
      *&v39 = sub_274B9DF14();
      sub_274BF3854();
      sub_274BF3874();
      sub_274BF38B4();
      v11 = sub_274BF40E4();
      v13 = v12;
      v15 = v14 & 1;
      sub_274AF396C(v11, v12, v14 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274AFA1D0(v11, v13, v15);

LABEL_7:
      v21 = v39;
      v22 = v40;
      v23 = v41;
      v24 = v42;
      goto LABEL_10;
    case 3:
      v35 = v9;
      sub_274BF38A4();
      v16 = sub_274BF40E4();
      v18 = v17;
      v20 = v19 & 1;
      sub_274AF396C(v16, v17, v19 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      v25 = v16;
      v26 = v18;
      v27 = v20;
      goto LABEL_9;
    default:
      v35 = v9;
      sub_274BF3884();
      sub_274BF3874();
      if (v43)
      {
        swift_getErrorValue();
        v10 = v43;
        sub_274BF5C54();
        sub_274B03D34(v43, 0);
      }

      sub_274BF3864();

      sub_274BF3874();
      sub_274BF38B4();
      v28 = sub_274BF40E4();
      v30 = v29;
      v32 = v31 & 1;
      sub_274AF396C(v28, v29, v31 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
      sub_274AFA28C();
      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274B03D34(v43, 0);
      v25 = v28;
      v26 = v30;
      v27 = v32;
LABEL_9:
      sub_274AFA1D0(v25, v26, v27);

      v21 = v39;
      v22 = v40;
      v23 = v41;
      v24 = v42;
      v9 = v35;
LABEL_10:
      v34 = v21;
      v36 = v22;
      *a2 = v37;
      *(a2 + 8) = v7;
      *(a2 + 16) = v9 & 1;
      *(a2 + 24) = v38;
      *(a2 + 32) = 0;
      *(a2 + 40) = 1;
      *(a2 + 48) = v21;
      *(a2 + 64) = v22;
      *(a2 + 80) = v23;
      *(a2 + 82) = v24;
      sub_274AF396C(v37, v7, v9 & 1);

      sub_274B42554(v34, *(&v34 + 1), v36, *(&v36 + 1), v23, v24);
      sub_274B425C0(v34, *(&v34 + 1), v36, *(&v36 + 1), v23, v24);
      sub_274AFA1D0(v37, v7, v9 & 1);
  }
}

uint64_t sub_274B39470(uint64_t a1)
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B39508@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v146 = a2;
  v147 = sub_274BF2BB4();
  v138 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v137 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668, &unk_274C07120);
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v136 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v134 = &v126 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB90, &qword_274BFED08);
  v139 = *(v8 - 8);
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  v158 = &v126 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB98, &qword_274BFED10);
  v144 = *(v10 - 8);
  v145 = v10;
  MEMORY[0x28223BE20](v10);
  v143 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v166 = &v126 - v13;
  v14 = sub_274BF1F54();
  v129 = *(v14 - 8);
  v130 = v14;
  MEMORY[0x28223BE20](v14);
  v127 = &v126 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v126 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA0, &unk_274C03D10);
  MEMORY[0x28223BE20](v18 - 8);
  v142 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v163 = &v126 - v21;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8, &qword_274BFB0F0);
  v169 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v153 = &v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v131 = &v126 - v24;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA8, &qword_274BFED18);
  v141 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v161 = &v126 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v157 = &v126 - v27;
  v28 = type metadata accessor for DebugMenuView(0);
  v29 = v28 - 8;
  v152 = *(v28 - 8);
  v30 = *(v152 + 64);
  MEMORY[0x28223BE20](v28);
  v167 = v30;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB0, &unk_274C03D00);
  v175 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v165 = &v126 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v170 = (&v126 - v33);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB8, &qword_274BFED20);
  v174 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v162 = &v126 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v126 - v36;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBC0, &qword_274BFED28);
  v160 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v159 = &v126 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v41 = &v126 - v40;
  *&v218[0] = *(a1 + *(v29 + 124));
  v177 = a1;
  v42 = *&v218[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9B8, &qword_274BFEBB0);
  v196 = MEMORY[0x277CE0BD8];
  v197 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  sub_274B41FE4();
  v155 = v41;
  sub_274BF3244();
  v196 = v42;
  v176 = a1;
  sub_274B42040();
  v156 = v37;
  sub_274BF3244();
  sub_274B3AE48(v208, [v42 sortedVisibleFolders], 0x737265646C6F46, 0xE700000000000000);
  v43 = sub_274BF38A4();
  v150 = v44;
  v151 = v43;
  v149 = v45;
  v168 = (&v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274B419C4(a1, v168);
  v46 = *(v152 + 80);
  v47 = (v46 + 16) & ~v46;
  v48 = swift_allocObject();
  sub_274B41A28(&v126 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0), v48 + v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBD8, &qword_274BFED30);
  sub_274AFA930(&qword_28098BBE0, &qword_28098BBD8, &qword_274BFED30, MEMORY[0x277CE14C0]);
  v49 = a1;
  sub_274BF3364();
  sub_274B3B024(v210, [v42 sortedRunEventsWithSource_], 0x6E657645206E7552, 0xEA00000000007374);
  sub_274B3B200(v212, [v42 allConfiguredTriggers], 0x7372656767697254, 0xE800000000000000);
  sub_274B3B3DC(v214, [v42 allSortedTriggerEvents], 0x2072656767697254, 0xEE0073746E657645);
  sub_274B3B5B8(v216, [v42 allShortcutSuggestions], 0xD000000000000014, 0x8000000274C0ADA0);
  sub_274B3B794(v218, [v42 allShortcutBookmarks], 0xD000000000000012, 0x8000000274C0ADC0);
  v50 = v168;
  sub_274B419C4(a1, v168);
  v151 = v46;
  v51 = swift_allocObject();
  v152 = v47;
  sub_274B41A28(v50, v51 + v47);
  v52 = v131;
  sub_274BF47C4();
  v132 = objc_opt_self();
  [v132 isSyncEnabled];
  sub_274BF38A4();
  v53 = sub_274BF40E4();
  v55 = v54;
  LOBYTE(a1) = v56;
  v57 = *(v49 + 224);
  v150 = v49;
  v58 = *(v49 + 232);
  LOBYTE(v193) = v57;
  *(&v193 + 1) = v58;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720, &qword_274BFC700);
  sub_274BF47A4();
  v149 = sub_274AFA930(&qword_280989EA0, &qword_280989EA8, &qword_274BFB0F0, MEMORY[0x277CDF028]);
  v59 = v154;
  sub_274BF4304();

  sub_274AFA1D0(v53, v55, a1 & 1);

  v60 = *(v169 + 8);
  v169 += 8;
  v131 = v60;
  (v60)(v52, v59);
  v61 = [objc_opt_self() defaultDatabase];
  v62 = [v61 exportableURL];

  if (v62)
  {
    v63 = v128;
    sub_274BF1F04();

    v65 = v129;
    v64 = v130;
    (*(v129 + 16))(v127, v63, v130);
    v66 = v163;
    sub_274BF4B44();
    (*(v65 + 8))(v63, v64);
    v67 = 0;
  }

  else
  {
    v66 = v163;
    v67 = 1;
  }

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBE8, &unk_274C09490);
  __swift_storeEnumTagSinglePayload(v66, v67, 1, v68);
  v69 = v150;
  v70 = v168;
  sub_274B419C4(v150, v168);
  v71 = v152;
  v72 = swift_allocObject();
  sub_274B41A28(v70, v72 + v71);
  sub_274BF47C4();
  v73 = *(v69 + 200);
  LOBYTE(v193) = *(v69 + 192);
  *(&v193 + 1) = v73;
  sub_274BF47A4();
  LODWORD(v130) = v198;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF0, &qword_274BFED38);
  v74 = (*(v133 + 80) + 32) & ~*(v133 + 80);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_274BF8D80;
  v76 = v147;
  if (qword_2809893A0 != -1)
  {
    swift_once();
  }

  v77 = __swift_project_value_buffer(v135, qword_28098B878);
  sub_274B01968(v77, v75 + v74, qword_28098A668, &unk_274C07120);
  v78 = v134;
  sub_274B01968(v75 + v74, v134, qword_28098A668, &unk_274C07120);
  v79 = v136;
  sub_274B16ED0(v78, v136, qword_28098A668, &unk_274C07120);
  if (__swift_getEnumTagSinglePayload(v79, 1, v76) == 1)
  {
    sub_274AFA708(v79, qword_28098A668, &unk_274C07120);
  }

  else
  {
    v80 = *(v138 + 32);
    v80(v137, v79, v76);
    v81 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274BBB01C();
      v81 = v124;
    }

    v82 = *(v81 + 16);
    if (v82 >= *(v81 + 24) >> 1)
    {
      sub_274BBB01C();
      v81 = v125;
    }

    *(v81 + 16) = v82 + 1;
    v80((v81 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + *(v138 + 72) * v82), v137, v147);
  }

  swift_setDeallocating();
  sub_274BCB9C4();
  v83 = v150;
  v84 = v168;
  sub_274B419C4(v150, v168);
  v85 = v152;
  v86 = swift_allocObject();
  sub_274B41A28(v84, v86 + v85);
  v87 = v153;
  v88 = v154;
  sub_274BF4244();

  (v131)(v87, v88);
  [v132 isSyncEnabled];
  sub_274BF38A4();
  v89 = sub_274BF40E4();
  v91 = v90;
  v93 = v92;
  v169 = v94;
  v95 = *(v83 + 216);
  LOBYTE(v193) = *(v83 + 208);
  *(&v193 + 1) = v95;
  v96 = sub_274BF47A4();
  v168 = &v126;
  MEMORY[0x28223BE20](v96);
  v196 = v88;
  v197 = v149;
  swift_getOpaqueTypeConformance2();
  v97 = v140;
  v98 = v158;
  sub_274BF4304();

  sub_274AFA1D0(v89, v91, v93 & 1);

  (*(v139 + 8))(v98, v97);
  v99 = v159;
  (*(v160 + 16))(v159, v155, v171);
  v196 = v99;
  v100 = v162;
  (*(v174 + 16))();
  v193 = v208[0];
  v194 = v208[1];
  v195 = v209;
  v197 = v100;
  v198 = &v193;
  v101 = v165;
  (*(v175 + 16))();
  v190 = v210[0];
  v191 = v210[1];
  v192 = v211;
  v199 = v101;
  v200 = &v190;
  v187 = v212[0];
  v188 = v212[1];
  v189 = v213;
  v184 = v214[0];
  v185 = v214[1];
  v186 = v215;
  v201 = &v187;
  v202 = &v184;
  v181 = v216[0];
  v182 = v216[1];
  v183 = v217;
  v178 = v218[0];
  v179 = v218[1];
  v180 = v219;
  v203 = &v181;
  v204 = &v178;
  v102 = v141;
  v103 = v161;
  v104 = v157;
  (*(v141 + 16))(v161, v157, v164);
  v205 = v103;
  v105 = v163;
  v106 = v142;
  sub_274B01968(v163, v142, &qword_28098BBA0, &unk_274C03D10);
  v206 = v106;
  v107 = v143;
  v108 = v144;
  v109 = v166;
  v110 = v145;
  (*(v144 + 16))(v143, v166, v145);
  v207 = v107;
  v111 = sub_274BA13E0();
  v112 = *(v108 + 8);
  v112(v109, v110, v111);
  sub_274AFA708(v105, &qword_28098BBA0, &unk_274C03D10);
  v113 = *(v102 + 8);
  v114 = v164;
  v113(v104, v164);
  v115 = *(v175 + 8);
  v175 += 8;
  v168 = v115;
  (v115)(v170, v173);
  v116 = *(v174 + 8);
  v174 += 8;
  v170 = v116;
  v116(v156, v172);
  v169 = *(v160 + 8);
  (v169)(v155, v171);
  (v112)(v107, v110);
  sub_274AFA708(v106, &qword_28098BBA0, &unk_274C03D10);
  v113(v161, v114);
  v117 = v179;

  v118 = v182;

  v119 = v185;

  v120 = v188;

  v121 = v191;

  (v168)(v165, v173);
  v122 = v194;

  v170(v162, v172);
  return (v169)(v159, v171);
}

uint64_t sub_274B3ABE0(uint64_t a1)
{
  sub_274BF38A4();
  LOWORD(v9) = 256;
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5 & 1;
  v7 = [*(a1 + *(type metadata accessor for DebugMenuView(0) + 116)) activeObjectObservers];
  sub_274BF5144();

  sub_274BF43D4();
  sub_274AFA1D0(v2, v4, v6);
}

uint64_t sub_274B3AD0C(uint64_t a1)
{
  sub_274BF38A4();
  LOWORD(v9) = 256;
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5 & 1;
  v7 = [*(a1 + *(type metadata accessor for DebugMenuView(0) + 116)) activeResults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCC0, &qword_274BFEDA8);
  sub_274BF5144();

  sub_274B22B94();

  sub_274BF43D4();
  sub_274AFA1D0(v2, v4, v6);
}

void sub_274B3AE48(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BCA0, 0x277D7A1C0);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCA8, &qword_274BFED98);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BCB8, &qword_274BFEDA0);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BCB0, &qword_28098BCA8, &qword_274BFED98, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B024(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC80, 0x277D7CAB8);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC88, &qword_274BFED88);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC98, &qword_274BFED90);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC90, &qword_28098BC88, &qword_274BFED88, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B200(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC60, 0x277D7C288);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC68, &qword_274BFED78);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC78, &qword_274BFED80);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC70, &qword_28098BC68, &qword_274BFED78, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B3DC(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC40, 0x277D7C980);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC48, &qword_274BFED68);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC58, &qword_274BFED70);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC50, &qword_28098BC48, &qword_274BFED68, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B5B8(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC20, 0x277D7C890);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC28, &qword_274BFED58);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC38, &qword_274BFED60);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC30, &qword_28098BC28, &qword_274BFED58, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B794(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>)
{
  v6 = [a2 database];
  if (v6)
  {
    v7 = v6;
    v8 = a2;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BC00, 0x277D7C878);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BC08, &qword_274BFED48);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BC18, &qword_274BFED50);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a2;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BC10, &qword_28098BC08, &qword_274BFED48, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a1 = a3;
    a1[1] = a4;
    a1[2] = v7;
    a1[3] = v17;
    a1[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3B970(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BB68, 0x277D7CAA8);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB70, &qword_274BFECF8);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BB80, &qword_274BFED00);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BB78, &qword_28098BB70, &qword_274BFECF8, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

void sub_274B3BB4C(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X8>)
{
  v6 = [a1 database];
  if (v6)
  {
    v7 = v6;
    v8 = a1;
    v9 = sub_274BF4AD4();
    v10 = [v8 descriptors];
    sub_274AD8430(0, &qword_28098BB48, 0x277D79EF0);
    v11 = sub_274BF5144();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB50, &qword_274BFECE8);
    swift_allocObject();

    v12 = sub_274B411B4(v11, v9, &qword_28098BB60, &qword_274BFECF0);
    v13 = *(*v12 + 104);
    swift_beginAccess();
    v14 = *(v12 + v13);
    *(v12 + v13) = a1;
    v15 = v8;

    v16 = v15;
    [v16 registerObserver_];

    sub_274AFA930(&qword_28098BB58, &qword_28098BB50, &qword_274BFECE8, &protocol conformance descriptor for DatabaseResult<A>);
    v17 = sub_274BF3264();
    v19 = v18;

    *a4 = a2;
    a4[1] = a3;
    a4[2] = v7;
    a4[3] = v17;
    a4[4] = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_274B3BD28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for DebugMenuView(0) + 116));
  v4 = [objc_allocWithZone(MEMORY[0x277D7A1F8]) initWithLocation_];
  v5 = [v3 sortedWorkflowsWithQuery_];

  sub_274B3B970(v5, 7105601, 0xE300000000000000, v26);
  sub_274B3B970([v3 sortedVisibleWorkflowsByName], 0xD000000000000012, 0x8000000274C0B080, v28);
  sub_274B3B970([v3 recentlyRunShortcuts], 0x796C746E65636552, 0xEC0000006E755220, v30);
  sub_274B3B970([v3 recentlyModifiedShortcuts], 0xD000000000000011, 0x8000000274C0B0A0, v32);
  sub_274B3B970([v3 invisibleWorkflows], 0x6C62697369766E49, 0xE900000000000065, v12);
  v22 = v26[0];
  v23 = v26[1];
  v21 = v29;
  v19 = v28[0];
  v20 = v28[1];
  v24 = v27;
  v25[0] = &v22;
  v16 = v30[0];
  v17 = v30[1];
  v18 = v31;
  v13 = v32[0];
  v14 = v32[1];
  v15 = v33;
  v25[1] = &v19;
  v25[2] = &v16;
  v25[3] = &v13;
  v25[4] = v12;
  sub_274BA172C(v25, a2);
  v6 = v12[2];

  v7 = v14;

  v8 = v17;

  v9 = v20;

  v10 = v23;
}

uint64_t sub_274B3C034()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF8, &qword_274BFED40);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  sub_274BF38A4();
  sub_274BF2E34();
  v3 = sub_274BF2E44();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v3);
  return sub_274BF47D4();
}

uint64_t sub_274B3C1EC(uint64_t a1, char a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v14[-v10];
  v12 = *(a3 + 216);
  v14[16] = *(a3 + 208);
  v15 = v12;
  v14[15] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A720, &qword_274BFC700);
  result = sub_274BF4794();
  if ((a2 & 1) == 0)
  {
    sub_274BC7474(a1, v11);
    type metadata accessor for DebugMenuView(0);
    sub_274B01968(v11, v8, &qword_28098EEE0, &qword_274BFA930);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);
    sub_274BF4794();
    return sub_274AFA708(v11, &qword_28098EEE0, &qword_274BFA930);
  }

  return result;
}

uint64_t sub_274B3C34C(uint64_t a1)
{
  v2 = type metadata accessor for DebugMenuView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBF8, &qword_274BFED40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_274BF38A4();
  sub_274BF2E34();
  v8 = sub_274BF2E44();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_274B419C4(a1, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_274B41A28(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  return sub_274BF47D4();
}

uint64_t sub_274B3C510()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14[-v1];
  v3 = sub_274BF1F54();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for DebugMenuView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);
  sub_274BF4784();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    return sub_274AFA708(v2, &qword_28098EEE0, &qword_274BFA930);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultDatabase];
  v9 = sub_274BF1ED4();
  v15[0] = 0;
  v10 = [v8 replaceWithFileAtURL:v9 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  else
  {
    v12 = v15[0];
    v13 = sub_274BF1E74();

    swift_willThrow();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_274B3C760(uint64_t a1)
{
  sub_274BF2514();
  sub_274BF24E4();
  v2 = (a1 + *(type metadata accessor for DebugMenuView(0) + 128));
  v3 = *v2;
  v4 = v2[1];
  sub_274ADDED0(*v2, v4);
  sub_274BAEB90(v3, v4, v6);
  sub_274B41F88();
  return sub_274BF3244();
}

uint64_t sub_274B3C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAD8, &qword_274BFECB8);
  v62 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v61 = &v58 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAE0, &unk_274C03CC0);
  MEMORY[0x28223BE20](v4 - 8);
  v77 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v71 = &v58 - v7;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAE8, &qword_274BFECC0);
  v60 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v59 = &v58 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF0, &qword_274BFECC8);
  MEMORY[0x28223BE20](v9 - 8);
  v76 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v80 = &v58 - v12;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  v70 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v79 = &v58 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF8, &unk_274C03CB0);
  v69 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v78 = &v58 - v18;
  v19 = sub_274BF3804();
  v84[0] = 1;
  sub_274B3D734(v115);
  memcpy(v121, v115, sizeof(v121));
  memcpy(v122, v115, sizeof(v122));
  sub_274B01968(v121, v103, &qword_28098BAD0, &qword_274C024B0);
  sub_274AFA708(v122, &qword_28098BAD0, &qword_274C024B0);
  memcpy(v115 + 7, v121, 0x50uLL);
  __src[0] = v19;
  __src[1] = 0;
  LOBYTE(__src[2]) = v84[0];
  memcpy(&__src[2] + 1, v115, 0x57uLL);
  v20 = *(a1 + *(type metadata accessor for DebugMenuView(0) + 116));
  v21 = [v20 shortcutsWithOutOfSyncWalrusStatus];
  v22 = [v20 collectionsWithOutOfSyncWalrusStatus];
  v66 = v21;
  v23 = [v21 count];
  v65 = v22;
  if (v23)
  {
    v24 = [v22 count] == 0;
  }

  else
  {
    v24 = 1;
  }

  v25 = sub_274BF3804();
  v84[0] = 1;
  sub_274B3D8D4(v24, v115);
  memcpy(v110, v115, 0x51uLL);
  memcpy(v111, v115, 0x51uLL);
  sub_274B01968(v110, v103, &qword_28098BB00, &qword_274BFECD0);
  sub_274AFA708(v111, &qword_28098BB00, &qword_274BFECD0);
  memcpy(v115 + 7, v110, 0x51uLL);
  v112[0] = v25;
  v112[1] = 0;
  LOBYTE(v112[2]) = v84[0];
  memcpy(&v112[2] + 1, v115, 0x58uLL);
  v26 = sub_274BF3804();
  v84[0] = 1;
  v63 = a1;
  sub_274B3DBB0(v115);
  memcpy(v113, v115, 0x52uLL);
  memcpy(v114, v115, 0x52uLL);
  sub_274B01968(v113, v103, &qword_28098BB08, &qword_274BFECD8);
  sub_274AFA708(v114, &qword_28098BB08, &qword_274BFECD8);
  memcpy(v103 + 7, v113, 0x52uLL);
  v115[0] = v26;
  v115[1] = 0;
  LOBYTE(v115[2]) = v84[0];
  memcpy(&v115[2] + 1, v103, 0x59uLL);
  if (v24)
  {
    v27 = 0;
    v28 = 0;
    v29 = 0uLL;
    memset(v109, 0, 48);
  }

  else
  {
    sub_274B3B970([v20 shortcutsWithOutOfSyncWalrusStatus], 0x100000000000001ELL, 0x8000000274C0ACA0, v116);
    sub_274B3BB4C([v20 collectionsWithOutOfSyncWalrusStatus], 0x1000000000000020, 0x8000000274C0ACC0, &v117);
    v30 = v116[0];
    v31 = v116[1];
    v32 = v116[2];
    v33 = v116[3];
    v34 = v116[4];
    v35 = v117;
    v58 = v118;
    v27 = v119;
    v28 = v120;

    v36 = v32;

    v29 = v58;
    *&v109[0] = v30;
    *(&v109[0] + 1) = v31;
    *&v109[1] = v36;
    *(&v109[1] + 1) = v33;
    *&v109[2] = v34;
    *(&v109[2] + 1) = v35;
  }

  v37 = v71;
  v109[3] = v29;
  *&v109[4] = v27;
  *(&v109[4] + 1) = v28;
  [v20 coherenceSyncEnabled];
  [objc_opt_self() addEligibleShortcutToWatchFolderEnabled];
  v38 = sub_274BF3804();
  v39 = 1;
  v104[0] = 1;
  sub_274B3E038(v103);
  memcpy(v106, v103, sizeof(v106));
  memcpy(v107, v103, sizeof(v107));
  sub_274B01968(v106, v84, &qword_28098BAD0, &qword_274C024B0);
  sub_274AFA708(v107, &qword_28098BAD0, &qword_274C024B0);
  memcpy(v103 + 7, v106, 0x50uLL);
  v108[0] = v38;
  v108[1] = 0;
  LOBYTE(v108[2]) = v104[0];
  memcpy(&v108[2] + 1, v103, 0x57uLL);
  v40 = [v20 latestLibrary];
  v103[0] = v40;
  sub_274B41DC4();
  v71 = v40;
  sub_274BF3244();
  sub_274BF38A4();
  sub_274BF2E24();
  sub_274BF4884();
  sub_274BF2E04();
  v41 = v64;
  if (LOBYTE(v103[0]) == 1)
  {
    v103[0] = sub_274BE8CA4;
    v103[1] = 0;
    LOBYTE(v103[2]) = 0;
    sub_274B41E6C();
    v42 = v59;
    sub_274BF3244();
    (*(v60 + 32))(v80, v42, v41);
    v39 = 0;
  }

  __swift_storeEnumTagSinglePayload(v80, v39, 1, v41);
  sub_274BF2E04();
  v43 = 1;
  v44 = v67;
  if (LOBYTE(v103[0]) == 1)
  {
    v103[0] = sub_274BE8CA4;
    v103[1] = 0;
    LOBYTE(v103[2]) = 0;
    sub_274B41E18();
    v45 = v61;
    sub_274BF3244();
    (*(v62 + 32))(v37, v45, v44);
    v43 = 0;
  }

  __swift_storeEnumTagSinglePayload(v37, v43, 1, v44);
  v46 = sub_274BF3804();
  v104[0] = 1;
  sub_274B3E2EC(v103);
  memcpy(v97, v103, sizeof(v97));
  memcpy(v98, v103, sizeof(v98));
  sub_274B01968(v97, v84, &qword_28098BAD0, &qword_274C024B0);
  sub_274AFA708(v98, &qword_28098BAD0, &qword_274C024B0);
  memcpy(v103 + 7, v97, 0x50uLL);
  v99[0] = v46;
  v99[1] = 0;
  LOBYTE(v99[2]) = v104[0];
  memcpy(&v99[2] + 1, v103, 0x57uLL);
  memcpy(v86, __src, sizeof(v86));
  v87 = v86;
  memcpy(v85, v112, 0x69uLL);
  v88 = v85;
  memcpy(v84, v115, 0x6AuLL);
  v89 = v84;
  memcpy(v83, v109, sizeof(v83));
  v90 = v83;
  memcpy(v82, v108, sizeof(v82));
  v91 = v82;
  v47 = v69;
  v48 = v72;
  (*(v69 + 16))(v72, v78, v73);
  v92 = v48;
  v49 = v70;
  v50 = v74;
  (*(v70 + 16))(v74, v79, v75);
  v93 = v50;
  v51 = v76;
  sub_274B01968(v80, v76, &qword_28098BAF0, &qword_274BFECC8);
  v94 = v51;
  v52 = v77;
  sub_274B01968(v37, v77, &qword_28098BAE0, &unk_274C03CC0);
  v95 = v52;
  memcpy(v81, v99, sizeof(v81));
  v96 = v81;
  sub_274BA186C();
  sub_274B01968(__src, v103, &qword_28098BB18, &qword_274C05C20);
  sub_274B01968(v112, v103, &qword_28098BB20, &unk_274C03CD0);
  sub_274B01968(v115, v103, &qword_28098BB28, &qword_274BFECE0);
  sub_274B01968(v109, v103, &qword_28098BB30, &unk_274C03CE0);
  sub_274B01968(v108, v103, &qword_28098BB18, &qword_274C05C20);
  sub_274B01968(v99, v103, &qword_28098BB18, &qword_274C05C20);

  sub_274AFA708(v108, &qword_28098BB18, &qword_274C05C20);
  sub_274AFA708(v109, &qword_28098BB30, &unk_274C03CE0);
  sub_274AFA708(v115, &qword_28098BB28, &qword_274BFECE0);
  sub_274AFA708(v112, &qword_28098BB20, &unk_274C03CD0);
  sub_274AFA708(__src, &qword_28098BB18, &qword_274C05C20);

  sub_274AFA708(v99, &qword_28098BB18, &qword_274C05C20);
  sub_274AFA708(v37, &qword_28098BAE0, &unk_274C03CC0);
  sub_274AFA708(v80, &qword_28098BAF0, &qword_274BFECC8);
  v53 = *(v49 + 8);
  v54 = v75;
  v53(v79, v75);
  v55 = *(v47 + 8);
  v56 = v73;
  v55(v78, v73);
  memcpy(v100, v81, sizeof(v100));
  sub_274AFA708(v100, &qword_28098BB18, &qword_274C05C20);
  sub_274AFA708(v77, &qword_28098BAE0, &unk_274C03CC0);
  sub_274AFA708(v76, &qword_28098BAF0, &qword_274BFECC8);
  v53(v74, v54);
  v55(v72, v56);
  memcpy(v101, v82, sizeof(v101));
  sub_274AFA708(v101, &qword_28098BB18, &qword_274C05C20);
  memcpy(v102, v83, sizeof(v102));
  sub_274AFA708(v102, &qword_28098BB30, &unk_274C03CE0);
  memcpy(v103, v84, 0x6AuLL);
  sub_274AFA708(v103, &qword_28098BB28, &qword_274BFECE0);
  memcpy(v104, v85, 0x69uLL);
  sub_274AFA708(v104, &qword_28098BB20, &unk_274C03CD0);
  memcpy(v105, v86, sizeof(v105));
  return sub_274AFA708(v105, &qword_28098BB18, &qword_274C05C20);
}

uint64_t sub_274B3D734@<X0>(uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v3 = sub_274BF40E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_274BF2E04();
  sub_274BF38A4();
  v10 = sub_274BF40E4();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v14 & 1;
  *(a2 + 72) = v16;
  sub_274AF396C(v3, v5, v13);

  sub_274AF396C(v10, v12, v15);

  sub_274AFA1D0(v10, v12, v15);

  sub_274AFA1D0(v3, v5, v18);
}

uint64_t sub_274B3D8D4@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v4 = sub_274BF40E4();
  v20 = v5;
  v21 = v4;
  v19 = v6;
  v22 = v7;
  sub_274BF38A4();
  if (a1)
  {
    v8 = sub_274BF40E4();
    v10 = v9;
    v12 = v11;
    sub_274BF45F4();
    sub_274BF4094();

    sub_274AFA1D0(v8, v10, v12 & 1);
  }

  else
  {
    v13 = sub_274BF40E4();
    v15 = v14;
    v17 = v16;
    sub_274BF45A4();
    sub_274BF4094();

    sub_274AFA1D0(v13, v15, v17 & 1);
  }

  sub_274BF3A64();
  *a2 = v21;
  *(a2 + 8) = v20;
  *(a2 + 16) = v19 & 1;
  *(a2 + 24) = v22;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v23;
  *(a2 + 64) = v24;
  *(a2 + 80) = v25;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AFA1F0(v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_274AFA23C(v23, *(&v23 + 1), v24, *(&v24 + 1));
  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3DBB0@<X0>(uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v3 = sub_274BF40E4();
  v24 = v4;
  v25 = v3;
  v23 = v5;
  v26 = v6;
  sub_274BF2E04();
  if (v27 == 1)
  {
    sub_274BF38A4();
    v7 = sub_274BF40E4();
    v9 = v8;
    v11 = v10;
    sub_274BF4614();
    v12 = sub_274BF4094();
    v14 = v13;
    v16 = v15;

    sub_274AFA1D0(v7, v9, v11 & 1);

    sub_274AF396C(v12, v14, v16 & 1);

    sub_274BF3A64();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
    sub_274AFA28C();
    sub_274BF3A64();
    sub_274AFA1D0(v12, v14, v16 & 1);
  }

  else
  {
    sub_274BF2E04();
    sub_274BF38A4();
    v17 = sub_274BF40E4();
    v19 = v18;
    v21 = v20;
    sub_274BF4654();
    sub_274BF4094();

    sub_274AFA1D0(v17, v19, v21 & 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
    sub_274AFA28C();
    sub_274BF3A64();
  }

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v23 & 1;
  *(a2 + 24) = v26;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v27;
  *(a2 + 64) = v28;
  *(a2 + 80) = v29;
  *(a2 + 81) = v30;
  sub_274AF396C(v25, v24, v23 & 1);

  sub_274B41EC0(v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
  sub_274B41F24(v27, *(&v27 + 1), v28, *(&v28 + 1), v29, v30);
  sub_274AFA1D0(v25, v24, v23 & 1);
}

uint64_t sub_274B3E038@<X0>(uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v3 = sub_274BF40E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_274BF38A4();
  v10 = sub_274BF40E4();
  v12 = v11;
  v14 = v13 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13 & 1;
  *(a2 + 72) = v15;
  sub_274AF396C(v3, v5, v7 & 1);

  sub_274AF396C(v10, v12, v14);

  sub_274AFA1D0(v10, v12, v14);

  sub_274AFA1D0(v3, v5, v7 & 1);
}

uint64_t sub_274B3E1CC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  result = sub_274BF40E4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_274B3E28C@<X0>(uint64_t a3@<X8>)
{
  sub_274BF38A4();
  result = sub_274BF40E4();
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_274B3E2EC@<X0>(uint64_t a2@<X8>)
{
  sub_274BF38A4();
  v3 = sub_274BF40E4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_274BF38A4();
  v10 = sub_274BF40E4();
  v12 = v11;
  v14 = v13 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7 & 1;
  *(a2 + 24) = v9;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v13 & 1;
  *(a2 + 72) = v15;
  sub_274AF396C(v3, v5, v7 & 1);

  sub_274AF396C(v10, v12, v14);

  sub_274AFA1D0(v10, v12, v14);

  sub_274AFA1D0(v3, v5, v7 & 1);
}

uint64_t sub_274B3E480@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v3 - 8);
  v84 = &v70 - v4;
  v85 = sub_274BF1F54();
  v72 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v71 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DebugMenuView(0);
  v75 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v77 = v7;
  v78 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989EA8, &qword_274BFB0F0);
  v79 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v76 = &v70 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAC0, &qword_274BFEC60);
  MEMORY[0x28223BE20](v9 - 8);
  v88 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v70 - v12;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  v89 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v87 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v70 - v15;
  MEMORY[0x28223BE20](v16);
  v100 = &v70 - v17;
  MEMORY[0x28223BE20](v18);
  v99 = &v70 - v19;
  MEMORY[0x28223BE20](v20);
  v98 = &v70 - v21;
  MEMORY[0x28223BE20](v22);
  v97 = &v70 - v23;
  MEMORY[0x28223BE20](v24);
  v94 = &v70 - v25;
  MEMORY[0x28223BE20](v26);
  v96 = &v70 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v70 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v70 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v70 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v70 - v38;
  sub_274BF38A4();
  sub_274BF2E24();
  v91 = v39;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v92 = v36;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v93 = v33;
  sub_274BF4884();
  sub_274BF38A4();
  sub_274BF2E24();
  v95 = v30;
  sub_274BF4884();
  sub_274BF38A4();
  v40 = a1[4];
  v41 = type metadata accessor for AttributeGraphProfiler(0);
  sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler, &protocol conformance descriptor for AttributeGraphProfiler);
  v80 = v41;
  v81 = v40;
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  sub_274BF4884();
  if (sub_274AF6FB8())
  {
    sub_274BF38A4();
    v42 = v78;
    sub_274B419C4(a1, v78);
    v43 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v44 = swift_allocObject();
    sub_274B41A28(v42, v44 + v43);
    v45 = v76;
    sub_274BF47E4();
    v47 = v82;
    v46 = v83;
    (*(v79 + 32))(v82, v45, v83);
    v48 = 0;
    v49 = v47;
    v50 = v46;
  }

  else
  {
    v48 = 1;
    v49 = v82;
    v50 = v83;
  }

  v51 = v49;
  __swift_storeEnumTagSinglePayload(v49, v48, 1, v50);
  sub_274BF38A4();
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  sub_274BF4884();
  v52 = v84;
  sub_274AF7864(v84);
  v53 = v85;
  if (__swift_getEnumTagSinglePayload(v52, 1, v85) == 1)
  {
    sub_274AFA708(v52, &qword_28098EEE0, &qword_274BFA930);
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
  }

  else
  {
    v55 = v71;
    v54 = v72;
    (*(v72 + 32))(v71, v52, v53);
    v84 = sub_274BF3804();
    v104 = 1;
    sub_274B3F284(v103);
    memcpy(v105, v103, 0x50uLL);
    memcpy(__dst, v103, 0x50uLL);
    sub_274B01968(v105, &v102, &qword_28098BAD0, &qword_274C024B0);
    sub_274AFA708(__dst, &qword_28098BAD0, &qword_274C024B0);
    v82 = v105[1];
    v83 = v105[0];
    v80 = v105[3];
    v81 = v105[2];
    v78 = v105[5];
    v79 = v105[4];
    v76 = v105[7];
    v77 = v105[6];
    v74 = v105[9];
    v75 = v105[8];
    v73 = v104;
    (*(v54 + 8))(v55, v53);
  }

  v56 = v89;
  v57 = *(v89 + 16);
  v58 = v97;
  v59 = v86;
  v57(v97, v91, v86);
  v103[0] = v58;
  v60 = v98;
  v57(v98, v92, v59);
  v103[1] = v60;
  v61 = v99;
  v57(v99, v93, v59);
  v103[2] = v61;
  v62 = v100;
  v57(v100, v95, v59);
  v103[3] = v62;
  v63 = v101;
  v64 = v96;
  v57(v101, v96, v59);
  v103[4] = v63;
  v65 = v88;
  sub_274B01968(v51, v88, &qword_28098BAC0, &qword_274BFEC60);
  v103[5] = v65;
  v66 = v87;
  v67 = v94;
  v57(v87, v94, v59);
  v105[0] = v84;
  v105[1] = 0;
  v105[2] = v73;
  v105[3] = v83;
  v105[4] = v82;
  v105[5] = v81;
  v105[6] = v80;
  v105[7] = v79;
  v105[8] = v78;
  v105[9] = v77;
  v105[10] = v76;
  v105[11] = v75;
  v105[12] = v74;
  v103[6] = v66;
  v103[7] = v105;
  sub_274BA1AB8(v103, v90);
  v68 = *(v56 + 8);
  v68(v67, v59);
  sub_274AFA708(v51, &qword_28098BAC0, &qword_274BFEC60);
  v68(v64, v59);
  v68(v95, v59);
  v68(v93, v59);
  v68(v92, v59);
  v68(v91, v59);
  memcpy(__dst, v105, 0x68uLL);
  sub_274AFA708(__dst, &qword_28098BAC8, &qword_274C03CA0);
  v68(v66, v59);
  sub_274AFA708(v65, &qword_28098BAC0, &qword_274BFEC60);
  v68(v101, v59);
  v68(v100, v59);
  v68(v99, v59);
  v68(v98, v59);
  return (v68)(v97, v59);
}

uint64_t sub_274B3F0EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_274BF1F54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274AF83DC(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    return sub_274AFA708(v4, &qword_28098EEE0, &qword_274BFA930);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = (a1 + *(type metadata accessor for DebugMenuView(0) + 128));
  if (*v10)
  {
    (*v10)(v8);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274B3F284@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_274BF1E94();
  sub_274ADDF6C();
  v9 = sub_274BF4104();
  v11 = v10;
  v12 = v6 & 1;
  v17 = v6 & 1;
  v14 = v13 & 1;
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v12;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = v9;
  *(a1 + 56) = v10;
  *(a1 + 64) = v13 & 1;
  *(a1 + 72) = v15;
  sub_274AF396C(v2, v4, v12);

  sub_274AF396C(v9, v11, v14);

  sub_274AFA1D0(v9, v11, v14);

  sub_274AFA1D0(v2, v4, v17);
}

uint64_t sub_274B3F3E4(uint64_t a1)
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B3F480@<X0>(char *a2@<X8>)
{
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA0, &qword_274BFEC50);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v43 = &v38 - v5;
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - v7;
  MEMORY[0x28223BE20](v8);
  v41 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v40 = &v38 - v11;
  MEMORY[0x28223BE20](v12);
  v48 = &v38 - v13;
  MEMORY[0x28223BE20](v14);
  v47 = &v38 - v15;
  MEMORY[0x28223BE20](v16);
  v46 = &v38 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  MEMORY[0x28223BE20](v21);
  v49 = &v38 - v22;
  sub_274BF2E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAA8, &qword_274C031E0);
  sub_274AFA930(&qword_28098BAB0, &qword_28098BAA8, &qword_274C031E0, MEMORY[0x277CE1198]);
  sub_274BF4864();
  sub_274B3FC30();
  v23 = v20;
  v39 = v20;
  sub_274BF4864();
  sub_274BF2E24();
  v24 = v46;
  sub_274BF4864();
  sub_274BF2E24();
  v25 = v47;
  sub_274BF4864();
  sub_274BF2E24();
  v26 = v48;
  sub_274BF4864();
  v27 = *(v50 + 16);
  v28 = v40;
  v27(v40, v49, v2);
  v29 = v41;
  v27(v41, v23, v2);
  v30 = v42;
  v27(v42, v24, v2);
  v31 = v43;
  v27(v43, v25, v2);
  v32 = v44;
  v27(v44, v26, v2);
  v33 = v45;
  v34 = v28;
  v27(v45, v28, v2);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAB8, &qword_274BFEC58);
  v27(&v33[v35[12]], v29, v2);
  v27(&v33[v35[16]], v30, v2);
  v27(&v33[v35[20]], v31, v2);
  v27(&v33[v35[24]], v32, v2);
  v36 = *(v50 + 8);
  v36(v48, v2);
  v36(v47, v2);
  v36(v46, v2);
  v36(v39, v2);
  v36(v49, v2);
  v36(v32, v2);
  v36(v31, v2);
  v36(v30, v2);
  v36(v29, v2);
  return (v36)(v34, v2);
}

uint64_t sub_274B3FA5C@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3FC30()
{
  v1 = type metadata accessor for DebugMenuView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_274B419C4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_274BF51E4();
  v4 = sub_274BF51D4();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_274B41A28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_274B419C4(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_274BF51D4();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_274B41A28(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5);
  sub_274BF48F4();
  return v11[1];
}

uint64_t sub_274B3FDE0@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B3FFCC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B401AC@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

void *sub_274B40394@<X0>(void (*a1)(_OWORD *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3904();
  a1(v7);
  *&v6[7] = v7[0];
  *&v6[23] = v7[1];
  *&v6[39] = v7[2];
  *&v6[55] = v7[3];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return memcpy((a2 + 17), v6, 0x47uLL);
}

uint64_t sub_274B40418@<X0>(uint64_t a1@<X8>)
{
  sub_274BF38A4();
  v2 = sub_274BF40E4();
  v20 = v3;
  v21 = v2;
  v19 = v4;
  v22 = v5;
  sub_274BF38A4();
  v6 = sub_274BF40E4();
  v8 = v7;
  v10 = v9;
  sub_274BF4654();
  v11 = sub_274BF4094();
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_274AFA1D0(v6, v8, v10 & 1);

  *a1 = v21;
  *(a1 + 8) = v20;
  *(a1 + 16) = v19 & 1;
  *(a1 + 24) = v22;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13;
  *(a1 + 48) = v15 & 1;
  *(a1 + 56) = v17;
  sub_274AF396C(v21, v20, v19 & 1);

  sub_274AF396C(v11, v13, v15 & 1);

  sub_274AFA1D0(v11, v13, v15 & 1);

  sub_274AFA1D0(v21, v20, v19 & 1);
}

uint64_t sub_274B405E8(uint64_t a1)
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B40680(uint64_t a1)
{
  sub_274BF38A4();
  sub_274BF2E24();
  return sub_274BF4884();
}

uint64_t sub_274B40768@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a2;
  v25 = a1;
  v28 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B928, &qword_274BFEAF0);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = sub_274BF3B44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B920, &qword_274BFEAE8);
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v12 = &v21 - v11;
  sub_274BF3B34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8A0, &qword_274BFEA58);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B898, &qword_274BFEA50);
  v15 = sub_274AFA930(&qword_28098B8B8, &qword_28098B898, &qword_274BFEA50, MEMORY[0x277CDE5A0]);
  v29 = v14;
  v30 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v17 = MEMORY[0x277CDE0D0];
  sub_274BF44E4();
  (*(v8 + 8))(v10, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AF10, &unk_274BFD430);
  sub_274B22A1C();
  sub_274BF47C4();
  v29 = v13;
  v30 = v7;
  v31 = OpaqueTypeConformance2;
  v32 = v17;
  swift_getOpaqueTypeConformance2();
  sub_274AFA930(qword_28098B930, &qword_28098B928, &qword_274BFEAF0, MEMORY[0x277CDF028]);
  v18 = v22;
  v19 = v26;
  sub_274BF4314();
  (*(v27 + 8))(v6, v19);
  return (*(v24 + 8))(v12, v18);
}

void *sub_274B40B0C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_274BF2E04();
  *a2 = v4;
  return result;
}

uint64_t sub_274B40BB8@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_274BF46D4();
  v4 = sub_274BF4654();
  result = swift_getKeyPath();
  *a1 = v3;
  a1[1] = result;
  a1[2] = v4;
  return result;
}

uint64_t sub_274B40C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v21 = a2;
  v19 = *(a1 + 16);
  type metadata accessor for DebugDatabaseView(255, v19, a3, a4);
  swift_getWitnessTable();
  sub_274ADDF6C();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098B9B8, &qword_274BFEBB0);
  v25 = OpaqueTypeMetadata2;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v27 = swift_getOpaqueTypeConformance2();
  v6 = sub_274BF3254();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = a1;
  v14 = v20;
  sub_274B40EEC(v13);
  v22 = v19;
  v23 = v14;
  sub_274BF3244();
  WitnessTable = swift_getWitnessTable();
  sub_274ADB48C(v9, v6, WitnessTable);
  v16 = *(v7 + 8);
  v16(v9, v6);
  sub_274ADB48C(v12, v6, WitnessTable);
  return (v16)(v12, v6);
}

void sub_274B40EEC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);

  v7 = sub_274B95A84(v3, v4);
  type metadata accessor for DebugDatabaseView(0, *(a1 + 16), v5, v6);
  swift_getWitnessTable();
  sub_274ADDF6C();
  sub_274BF42C4();
}

uint64_t sub_274B40FC0(uint64_t *a1, uint64_t a2)
{
  sub_274ADDF6C();

  v3 = sub_274BF4104();
  v5 = v4;
  v7 = v6 & 1;
  type metadata accessor for DatabaseRowView(0, a2, v6, v8);

  DatabaseResult.count.getter();

  sub_274BF43D4();
  sub_274AFA1D0(v3, v5, v7);
}

uint64_t sub_274B410EC(__n128 a1)
{
  v1 = sub_274BF2BB4();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28098A668, &unk_274C07120);
  __swift_allocate_value_buffer(v2, qword_28098B878);
  __swift_project_value_buffer(v2, qword_28098B878);
  sub_274BF2B64();
  return sub_274BF2B24();
}

void *sub_274B411B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *(v4 + *(*v4 + 104)) = 0;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_274BF2D24();
  swift_endAccess();
  v4[2] = a2;
  return v4;
}

uint64_t sub_274B41268(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for DebugMenuView(uint64_t a1)
{
  result = qword_28098B8D0;
  if (!qword_28098B8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274B41370(uint64_t a1)
{
  sub_274B41578(319);
  if (v1 <= 0x3F)
  {
    sub_274B4160C(319);
    if (v2 <= 0x3F)
    {
      sub_274B416A0(319);
      if (v3 <= 0x3F)
      {
        sub_274B41734(319, &qword_28098B8F8, MEMORY[0x277CDD630]);
        if (v4 <= 0x3F)
        {
          sub_274B41734(319, &qword_28098B900, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_274B417E0(319, &qword_28098B908, &qword_28098EEE0, &qword_274BFA930, MEMORY[0x277CE10B8]);
            if (v6 <= 0x3F)
            {
              sub_274AD8430(319, &qword_28098B910, 0x277D7C2F0);
              if (v7 <= 0x3F)
              {
                sub_274B41788(319);
                if (v8 <= 0x3F)
                {
                  sub_274B417E0(319, &qword_2815A2E70, &qword_28098B570, qword_274BFE0F0, MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
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

void sub_274B41578(uint64_t a1)
{
  if (!qword_28098B8E0)
  {
    type metadata accessor for LogStreamManager(255);
    sub_274B41268(&qword_28098B890, type metadata accessor for LogStreamManager, &protocol conformance descriptor for LogStreamManager);
    v1 = sub_274BF3294();
    if (!v2)
    {
      atomic_store(v1, &qword_28098B8E0);
    }
  }
}

void sub_274B4160C(uint64_t a1)
{
  if (!qword_28098B8E8)
  {
    type metadata accessor for DebugStatusBarManager();
    sub_274B41268(&qword_280989FD8, type metadata accessor for DebugStatusBarManager, &protocol conformance descriptor for DebugStatusBarManager);
    v1 = sub_274BF3294();
    if (!v2)
    {
      atomic_store(v1, &qword_28098B8E8);
    }
  }
}

void sub_274B416A0(uint64_t a1)
{
  if (!qword_28098B8F0)
  {
    type metadata accessor for AttributeGraphProfiler(255);
    sub_274B41268(&qword_280989A28, type metadata accessor for AttributeGraphProfiler, &protocol conformance descriptor for AttributeGraphProfiler);
    v1 = sub_274BF3294();
    if (!v2)
    {
      atomic_store(v1, &qword_28098B8F0);
    }
  }
}

void sub_274B41734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_274B41788(uint64_t a1)
{
  if (!qword_28098B918)
  {
    sub_274BF2164();
    v1 = sub_274BF5724();
    if (!v2)
    {
      atomic_store(v1, &qword_28098B918);
    }
  }
}

void sub_274B417E0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_274B41844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274B41880(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_274B418C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_274B419C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274B41A28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMenuView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_274B41A8C@<X0>(_BYTE *a1@<X8>)
{
  v2 = type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_7_1(v2);

  return sub_274B40B0C(a1);
}

uint64_t objectdestroy_17Tm_1()
{
  type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_1_1();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;

  v6 = v1 + v4 + v0[28];
  v7 = sub_274BF1F54();
  if (!OUTLINED_FUNCTION_16_3(v7))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v8 + 8))(v6, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);

  v9 = v0[30];
  v10 = sub_274BF2164();
  if (!OUTLINED_FUNCTION_14_2(v10))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v11 + 8))(v5 + v9, v6);
  }

  OUTLINED_FUNCTION_13_6();
  if (v12)
  {
  }

  OUTLINED_FUNCTION_13_6();
  if (v13)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B41D3C(char *a1)
{
  v3 = type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return sub_274B40B50(a1, v5, v6, v7);
}

unint64_t sub_274B41DC4()
{
  result = qword_28098BB10;
  if (!qword_28098BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB10);
  }

  return result;
}

unint64_t sub_274B41E18()
{
  result = qword_28098BB38;
  if (!qword_28098BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB38);
  }

  return result;
}

unint64_t sub_274B41E6C()
{
  result = qword_28098BB40;
  if (!qword_28098BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB40);
  }

  return result;
}

uint64_t sub_274B41EC0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AF396C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274AFA1F0(a1, a2, a3, a4);
  }
}

uint64_t sub_274B41F24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AFA1D0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274AFA23C(a1, a2, a3, a4);
  }
}

unint64_t sub_274B41F88()
{
  result = qword_28098BB88;
  if (!qword_28098BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BB88);
  }

  return result;
}

unint64_t sub_274B41FE4()
{
  result = qword_28098BBC8;
  if (!qword_28098BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BBC8);
  }

  return result;
}

unint64_t sub_274B42040()
{
  result = qword_28098BBD0;
  if (!qword_28098BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BBD0);
  }

  return result;
}

uint64_t sub_274B42094@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_7_1(v3);
  v5 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return sub_274B3BD28(v5, a1);
}

uint64_t sub_274B42130(uint64_t a1, char a2)
{
  v5 = type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_7_1(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_274B3C1EC(a1, a2 & 1, v7);
}

uint64_t objectdestroy_31Tm()
{
  type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_1_1();
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  v5 = v4 + v0[28];
  v6 = sub_274BF1F54();
  if (!OUTLINED_FUNCTION_16_3(v6))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v7 + 8))(v5, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B8C0, &qword_274BFEAC0);

  v8 = v0[30];
  v9 = sub_274BF2164();
  if (!OUTLINED_FUNCTION_14_2(v9))
  {
    OUTLINED_FUNCTION_6_9();
    (*(v10 + 8))(v4 + v8, v5);
  }

  OUTLINED_FUNCTION_13_6();
  if (v11)
  {
  }

  OUTLINED_FUNCTION_13_6();
  if (v12)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274B42404(uint64_t (*a1)(uint64_t))
{
  v2 = type metadata accessor for DebugMenuView(0);
  OUTLINED_FUNCTION_7_1(v2);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a1(v4);
}

unint64_t sub_274B4247C()
{
  result = qword_28098BD00;
  if (!qword_28098BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD00);
  }

  return result;
}

unint64_t sub_274B424D0()
{
  result = qword_28098BD20;
  if (!qword_28098BD20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BD18, &unk_274C04800);
    sub_274AFA28C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD20);
  }

  return result;
}

uint64_t sub_274B42554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AF396C(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274B425B8(a1, a2, a3, a4);
  }
}

uint64_t sub_274B425C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
    sub_274AFA1D0(a1, a2, a3 & 1);
  }

  else
  {

    return sub_274B42624(a1, a2, a3, a4);
  }
}

uint64_t sub_274B4262C(void *a1)
{
  v2 = [a1 infoDictionary];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_274BF4DF4();

  return v3;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t onMainThreadInlineOrAsync(closure:)(uint64_t (*a1)(void), uint64_t a2)
{
  v4 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    return a1();
  }

  sub_274B0F2B4();
  v17 = sub_274BF5504();
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_5;
  v18 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B349A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274B03DB4();
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v15, v9, v18);
  _Block_release(v18);

  (*(v6 + 8))(v9, v4);
  return (*(v12 + 8))(v15, v10);
}

double block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

char *WFParameter.arraySizeRange(for:)(uint64_t a1)
{
  v2 = [v1 arraySizeRangeForCHSWidgetFamily_];
  v4 = v3;
  result = sub_274BF1A84();
  if (v2 == result || v4 < 1)
  {
    return 0;
  }

  if (__OFSUB__(&v2[v4], 1))
  {
    __break(1u);
  }

  else if (&v2[v4 - 1] >= v2)
  {
    return v2;
  }

  __break(1u);
  return result;
}

uint64_t WFURLContentItem.preview(configuration:)()
{
  sub_274B42A5C();
  v1 = v0;
  return sub_274BF48B4();
}

unint64_t sub_274B42A5C()
{
  result = qword_28098BD30;
  if (!qword_28098BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD30);
  }

  return result;
}

uint64_t WFURLContentItem.primaryAction.getter@<X0>(uint64_t a1@<X8>)
{
  sub_274BF4FE4("Open", 4);
  if (qword_2809893B8 != -1)
  {
    swift_once();
  }

  v3 = qword_28098C7C0;
  v4 = sub_274BF4F04();
  v5 = sub_274BF4F04();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_274BF4F44();
  v9 = v8;

  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  v11 = v1;
  sub_274BF2154();
  v12 = type metadata accessor for ContentItemPreview.Action(0);
  v13 = (a1 + v12[5]);
  *v13 = v7;
  v13[1] = v9;
  v14 = (a1 + v12[6]);
  *v14 = 0x697261666173;
  v14[1] = 0xE600000000000000;
  v15 = (a1 + v12[7]);
  *v15 = sub_274B43418;
  v15[1] = v10;

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v12);
}

void sub_274B42C30(void *a1)
{
  v2 = sub_274BF1F54();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedContext];
  v7 = [a1 URL];
  sub_274BF1F04();

  v8 = sub_274BF1ED4();
  (*(v3 + 8))(v5, v2);
  [v6 openURL_];
}

uint64_t sub_274B42DB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274BF3804();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD38, &qword_274BFEF48);
  return sub_274B42E10(a1, (a2 + *(v5 + 44)));
}

uint64_t sub_274B42E10@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v37 = a2;
  v3 = sub_274BF3C04();
  v36 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_274BF1D34();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD40, &qword_274BFEF50);
  MEMORY[0x28223BE20](v35);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD48, &qword_274BFEF58);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v34 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v33 = &v32 - v15;
  sub_274B4319C(a1, v8);
  v16 = sub_274BF40F4();
  v18 = v17;
  v38 = v16;
  v39 = v17;
  v20 = v19 & 1;
  v40 = v19 & 1;
  v41 = v21;
  sub_274BF3BF4();
  sub_274BF4274();
  (*(v36 + 8))(v5, v3);
  sub_274AFA1D0(v16, v18, v20);

  KeyPath = swift_getKeyPath();
  v23 = &v10[*(v35 + 36)];
  *v23 = KeyPath;
  v23[8] = 0;
  sub_274BF3F14();
  sub_274B434A0();
  v24 = v33;
  sub_274BF41A4();
  sub_274AE95AC(v10);
  v25 = *(v12 + 16);
  v26 = v34;
  v27 = v24;
  v25(v34, v24, v11);
  v28 = v37;
  v25(v37, v26, v11);
  v29 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD58, &unk_274BFEF98) + 48)];
  *v29 = 0;
  v29[8] = 1;
  v30 = *(v12 + 8);
  v30(v27, v11);
  return (v30)(v26, v11);
}

uint64_t sub_274B4319C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = sub_274BF1DA4();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_274BF1F54();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x28223BE20](v10).n128_u64[0];
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 URL];
  sub_274BF1F04();

  sub_274BF1E94();
  (*(v11 + 8))(v14, v10);
  sub_274BF1D94();
  sub_274BF1D44();
  v16 = [a1 URL];
  sub_274BF1F04();

  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_274B4359C(v8, v5);
  sub_274B4360C();
  sub_274BF1D54();
  sub_274B43660(v8);
  v18[1] = sub_274BF45B4();
  sub_274B436C8();
  return sub_274BF1D54();
}

uint64_t sub_274B4344C@<X0>(_BYTE *a2@<X8>)
{
  result = sub_274BF3684();
  *a2 = result;
  return result;
}

unint64_t sub_274B434A0()
{
  result = qword_28098BD50;
  if (!qword_28098BD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BD40, &qword_274BFEF50);
    sub_274BF3C04();
    swift_getOpaqueTypeConformance2();
    sub_274AFA930(&qword_2815A2FA0, &qword_28098B700, &qword_274BFEF90, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098BD50);
  }

  return result;
}

uint64_t sub_274B4359C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}