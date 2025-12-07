unint64_t sub_2167C6E08()
{
  result = qword_27CAB7850;
  if (!qword_27CAB7850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7850);
  }

  return result;
}

uint64_t sub_2167C6E5C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2170090F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);
  sub_2167C88FC(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_21700DA84();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_21700ED94();
    v13 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2167C704C@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v2 = type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);
  v71 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v72 = v3;
  v73 = &v57 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700DA84();
  v69 = *(v4 - 8);
  v70 = v4;
  MEMORY[0x28223BE20](v4);
  v68 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_21700DAF4();
  v63 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6D58, &unk_217014E30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v57 - v12;
  v14 = sub_217007624();
  v58 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7890, &qword_217017830);
  v59 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7898, &qword_217017838);
  v64 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v21 = &v57 - v20;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78A0, &qword_217017840);
  v62 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v61 = &v57 - v22;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78A8, &qword_217017848);
  MEMORY[0x28223BE20](v60);
  v24 = &v57 - v23;
  v74 = v1;

  sub_217007614();
  v25 = sub_2170076F4();
  sub_21700EDC4();

  v26 = sub_21700D7A4();
  if (__swift_getEnumTagSinglePayload(v10, 1, v26) == 1)
  {
    sub_2167B0250(v10);
    v27 = 1;
  }

  else
  {
    (*(*(v26 - 8) + 32))(v13, v10, v26);
    v27 = 0;
  }

  __swift_storeEnumTagSinglePayload(v13, v27, 1, v26);
  sub_21700DAE4();
  v28 = sub_2167C876C();
  sub_21700A1C4();
  (*(v63 + 8))(v7, v66);
  sub_2167B0250(v13);
  (*(v58 + 8))(v16, v14);
  v29 = v68;
  v30 = v74;
  sub_2167C6E5C(v68);
  v76 = v14;
  v77 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700A1A4();
  (*(v69 + 8))(v29, v70);
  (*(v59 + 8))(v19, v17);
  v32 = v73;
  sub_2167C87C4(v30, v73);
  v33 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v34 = swift_allocObject();
  sub_2167C8828(v32, v34 + v33);
  v76 = v17;
  v77 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v35 = v61;
  v36 = v67;
  sub_21700A894();

  (*(v64 + 8))(v21, v36);
  LOBYTE(v36) = sub_217009C94();
  v76 = 0;
  v77 = 0;
  sub_216DE0AF8();
  sub_217007F24();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  (*(v62 + 32))(v24, v35, v65);
  v45 = &v24[*(v60 + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  LOBYTE(v36) = sub_217009CA4();
  v76 = 0;
  v77 = 0;
  sub_216DE0B70();
  sub_217007F24();
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v54 = v75;
  sub_2166F9448(v24, v75);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78B0, &qword_217017850);
  v56 = v54 + *(result + 36);
  *v56 = v36;
  *(v56 + 8) = v47;
  *(v56 + 16) = v49;
  *(v56 + 24) = v51;
  *(v56 + 32) = v53;
  *(v56 + 40) = 0;
  return result;
}

uint64_t sub_2167C7818(uint64_t result)
{
  if (result)
  {
    return sub_2170076B4();
  }

  return result;
}

char *InlineBubbleTipView.init(inlineBubbleTip:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v8 = sub_217007CA4();
  __swift_project_value_buffer(v8, qword_280E73D20);
  v9 = sub_217007C84();
  v10 = sub_21700EDA4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2166A85FC(0xD000000000000016, 0x80000002170821E0, &v25);
    _os_log_impl(&dword_216679000, v9, v10, "💬 %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x21CEA1440](v12, -1, -1);
    MEMORY[0x21CEA1440](v11, -1, -1);
  }

  v13 = *(a1 + 16);
  v14 = *(v4 + 20);
  *(v7 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  swift_storeEnumTagMultiPayload();
  *v7 = v13;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7860, qword_217017748));

  *&v2[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipView_contentView] = sub_2170087C4();
  v16 = type metadata accessor for InlineBubbleTipView();
  v26.receiver = v2;
  v26.super_class = v16;
  v17 = objc_msgSendSuper2(&v26, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = OBJC_IVAR____TtC7MusicUI19InlineBubbleTipView_contentView;
  v19 = *&v17[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipView_contentView];
  v20 = v17;
  [v20 addSubview_];
  v21 = *&v17[v18];
  [v20 bounds];
  [v21 setFrame_];

  v22 = *&v17[v18];
  [v22 setAutoresizingMask_];

  return v20;
}

uint64_t type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(uint64_t a1)
{
  result = qword_27CAB7880;
  if (!qword_27CAB7880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167C7D1C(void *a1)
{
  v2 = v1;
  if (qword_280E416F8 != -1)
  {
    swift_once();
  }

  v4 = sub_217007CA4();
  __swift_project_value_buffer(v4, qword_280E73D20);
  v5 = sub_217007C84();
  v6 = sub_21700EDA4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_2166A85FC(0xD000000000000017, 0x8000000217082350, &v16);
    _os_log_impl(&dword_216679000, v5, v6, "💬 %{public}s: trying to set inlineBubbleTipCellView", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x21CEA1440](v8, -1, -1);
    MEMORY[0x21CEA1440](v7, -1, -1);
  }

  [a1 removeFromSuperview];
  v9 = *&v1[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView];
  if (v9)
  {
    v15 = v9;
    v10 = sub_217007C84();
    v11 = sub_21700EDA4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_2166A85FC(0xD000000000000017, 0x8000000217082350, &v16);
      _os_log_impl(&dword_216679000, v10, v11, "💬 %{public}s: adding inlineBubbleTipCellView", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x21CEA1440](v13, -1, -1);
      MEMORY[0x21CEA1440](v12, -1, -1);
    }

    v14 = [v2 contentView];
    [v14 addSubview_];

    [v2 setNeedsLayout];
  }
}

void sub_2167C7FC8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView);
  *(v1 + OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView) = a1;
  v2 = a1;
  sub_2167C7D1C(v3);
}

void sub_2167C8028()
{
  v0 = objc_allocWithZone(type metadata accessor for InlineBubbleTipView());

  v2 = InlineBubbleTipView.init(inlineBubbleTip:)(v1);

  sub_2167C7FC8(v2);
}

void *sub_2167C8080(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView];
  if (v3)
  {
    v4 = v3;
    [v4 setNeedsLayout];
    [v1 bounds];
    [v4 sizeThatFits_];
    [a1 frame];
    [a1 setFrame_];
    v5 = a1;
  }

  else
  {
    v6 = a1;
  }

  return a1;
}

void sub_2167C8198()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for InlineBubbleTipCell();
  objc_msgSendSuper2(&v12, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 contentView];
    [v3 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    [v2 setFrame_];
  }
}

id _s7MusicUI10BannerCellC5frameACSo6CGRectV_tcfC_0()
{
  OUTLINED_FUNCTION_4_15();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_3_13();

  return [v2 v3];
}

id InlineBubbleTipCell.init(frame:)()
{
  OUTLINED_FUNCTION_4_15();
  *(v0 + OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView) = 0;
  v5 = type metadata accessor for InlineBubbleTipCell();
  v1 = OUTLINED_FUNCTION_3_13();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id InlineBubbleTipCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id InlineBubbleTipCell.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC7MusicUI19InlineBubbleTipCell_inlineBubbleTipCellView] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for InlineBubbleTipCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_2167C8468(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2167C84E8(uint64_t a1)
{
  v2 = sub_21700DA84();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_217008D44();
}

void sub_2167C8674(uint64_t a1)
{
  sub_217007654();
  if (v1 <= 0x3F)
  {
    sub_2167C86F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2167C86F8(uint64_t a1)
{
  if (!qword_280E2B470)
  {
    sub_21700DA84();
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B470);
    }
  }
}

unint64_t sub_2167C876C()
{
  result = qword_280E48610;
  if (!qword_280E48610)
  {
    sub_217007624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E48610);
  }

  return result;
}

uint64_t sub_2167C87C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167C8828(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167C888C(uint64_t a1)
{
  type metadata accessor for InlineBubbleTipView.WrappedInlineBubbleTip(0);

  return sub_2167C7818(a1);
}

uint64_t sub_2167C88FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7858, &qword_217017740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2167C896C()
{
  result = qword_27CAB78B8;
  if (!qword_27CAB78B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB78B0, &qword_217017850);
    sub_2167C89F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB78B8);
  }

  return result;
}

unint64_t sub_2167C89F8()
{
  result = qword_27CAB78C0;
  if (!qword_27CAB78C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB78A8, &qword_217017848);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7898, &qword_217017838);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7890, &qword_217017830);
    sub_217007624();
    sub_2167C876C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB78C0);
  }

  return result;
}

uint64_t sub_2167C8B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v50 = a4;
  v54 = a3;
  v55 = a2;
  v5 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78C8, &qword_217017858);
  OUTLINED_FUNCTION_1();
  v48 = v12;
  v49 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v47 - v13;
  sub_21700E2E4();
  OUTLINED_FUNCTION_1();
  v52 = v16;
  v53 = v15;
  MEMORY[0x28223BE20](v15);
  v51 = (&v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D0, &unk_21701A800);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v47 - v19;
  v21 = sub_21700E2C4();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v47 - v28;
  if (sub_21700CDA4())
  {
    (*(v7 + 8))(v55, v5);
    sub_21700CDF4();
    OUTLINED_FUNCTION_9_0();
    (*(v30 + 8))(a1);
    return 0;
  }

  v47 = v5;
  v31 = v55;
  sub_21700CD74();
  if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
  {
    v50 = a1;
    sub_2166997CC(v20, &qword_27CAB78D0, &unk_21701A800);
    v32 = sub_21700E984();
    v33 = MEMORY[0x277D84F90];
    v35 = v51;
    v34 = v52;
    *v51 = v32;
    v35[1] = v33;
    v36 = v53;
    (*(v34 + 104))(v35, *MEMORY[0x277D22538], v53);
    sub_21700CF04();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78D8, &unk_217040210);
    v37 = v31;
    sub_21700CF44();
    (*(v48 + 8))(v14, v49);
    sub_2167C915C(v58, v56);
    if (v57)
    {
      __swift_project_boxed_opaque_existential_1(v56, v57);
      sub_2167B1EA4();
      v38 = v36;
      v39 = swift_allocError();
      (*(v34 + 16))(v40, v35, v38);
      sub_21700DC44();
      (*(v7 + 8))(v37, v47);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v41 + 8))(v50);
      sub_2166997CC(v58, &qword_27CAB78E0, qword_217017860);
      (*(v34 + 8))(v35, v38);

      __swift_destroy_boxed_opaque_existential_1Tm(v56);
    }

    else
    {
      (*(v7 + 8))(v31, v47);
      sub_21700CDF4();
      OUTLINED_FUNCTION_9_0();
      (*(v45 + 8))(v50);
      sub_2166997CC(v58, &qword_27CAB78E0, qword_217017860);
      (*(v34 + 8))(v35, v36);
      sub_2166997CC(v56, &qword_27CAB78E0, qword_217017860);
    }

    return 0;
  }

  (*(v23 + 32))(v29, v20, v21);
  (*(v23 + 16))(v26, v29, v21);
  v42 = v47;
  (*(v7 + 16))(v10, v31, v47);
  v43 = sub_21700E954();
  (*(v7 + 8))(v31, v42);
  sub_21700CDF4();
  OUTLINED_FUNCTION_9_0();
  (*(v44 + 8))(a1);
  (*(v23 + 8))(v29, v21);
  return v43;
}

uint64_t sub_2167C915C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78E0, qword_217017860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167C9230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v43 = a3;
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v32 = v6;
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getWitnessTable();
  v33 = sub_2170097A4();
  v37 = sub_2170089F4();
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v44 = &v30 - v8;
  v40 = sub_2170089F4();
  v42 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v38 = &v30 - v12;
  v34 = *(v5 + 16);
  v30 = v7;
  v34(v7, v3, a2, v11);
  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = swift_allocObject();
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  *(v14 + 16) = v16;
  *(v14 + 24) = v15;
  v31 = *(v5 + 32);
  v31(v14 + v13, v7, a2);
  WitnessTable = swift_getWitnessTable();
  sub_21700AAF4();

  v18 = v30;
  (v34)(v30, v35, a2);
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v15;
  v31(v19 + v13, v18, a2);
  v20 = MEMORY[0x277CE0790];
  v47 = WitnessTable;
  v48 = MEMORY[0x277CE0790];
  v21 = v37;
  v22 = swift_getWitnessTable();
  v23 = v36;
  v24 = v44;
  sub_21700A414();

  (*(v41 + 8))(v24, v21);
  v45 = v22;
  v46 = v20;
  v25 = v40;
  v26 = swift_getWitnessTable();
  v27 = v38;
  sub_2166C24DC(v23, v25, v26);
  v28 = *(v42 + 8);
  v28(v23, v25);
  sub_2166C24DC(v27, v25, v26);
  return (v28)(v27, v25);
}

uint64_t sub_2167C9688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ViewAppearanceLifecycleModifier(0, v11, v13, v12);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v20 - v17;
  (*(v8 + 16))(v10, a1, a3, v16);
  (*(v8 + 32))(v18, v10, a3);
  MEMORY[0x21CE9B900](v18, a2, v14, a4);
  return (*(v15 + 8))(v18, v14);
}

uint64_t sub_2167C9854(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2167C98C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_2167C9A00(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
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

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t _s5InsetVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[24])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 3;
      v2 = v3 - 3;
      if (!v4)
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

uint64_t _s5InsetVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2167C9DBC()
{
  result = qword_27CAB78E8;
  if (!qword_27CAB78E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB78F0, &qword_217017940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB78E8);
  }

  return result;
}

void *sub_2167C9E20@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>, double a3@<D4>)
{
  v5 = a1;
  v6 = sub_217008B44();
  MEMORY[0x28223BE20](v6);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (v5 == 1)
  {
    OUTLINED_FUNCTION_0_30();
    result = sub_21700AF74();
    v11 = v19;
    v12 = v20;
    v13 = v21;
  }

  else
  {
    v14 = *(v7 + 20);
    v15 = *MEMORY[0x277CE0118];
    v16 = sub_217009294();
    (*(*(v16 - 8) + 104))(v9 + v14, v15, v16);
    *v9 = a3;
    v9[1] = a3;
    OUTLINED_FUNCTION_0_30();
    sub_217008B24();
    v17 = v20;
    v18 = v19;
    v13 = v21;
    result = sub_2167CA3B0(v9);
    v12 = v17;
    v11 = v18;
  }

  *a2 = v11;
  *(a2 + 16) = v12;
  *(a2 + 32) = v13;
  return result;
}

void sub_2167C9F78(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_2167C9F68(a2, *(v2 + 8));
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
}

double sub_2167C9FAC@<D0>(uint64_t a1@<X8>)
{
  sub_2167C9E20(*v1, v5, *(v1 + 8));
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t (*sub_2167CA028(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_217007EB4();
  return sub_2167CA09C;
}

void sub_2167CA09C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2167CA0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167CA304();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_2167CA14C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167CA304();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_2167CA1B0(uint64_t a1)
{
  v2 = sub_2167CA304();

  return MEMORY[0x282133738](a1, v2);
}

unint64_t sub_2167CA1FC()
{
  result = qword_280E2AC20;
  if (!qword_280E2AC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AC20);
  }

  return result;
}

unint64_t sub_2167CA254()
{
  result = qword_280E2BF80;
  if (!qword_280E2BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF80);
  }

  return result;
}

unint64_t sub_2167CA2AC()
{
  result = qword_280E2BF78;
  if (!qword_280E2BF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF78);
  }

  return result;
}

unint64_t sub_2167CA304()
{
  result = qword_280E2BF70;
  if (!qword_280E2BF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF70);
  }

  return result;
}

unint64_t sub_2167CA35C()
{
  result = qword_280E2BF88;
  if (!qword_280E2BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2BF88);
  }

  return result;
}

uint64_t sub_2167CA3B0(uint64_t a1)
{
  v2 = sub_217008B44();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2167CA438@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for BootstrapState(0);
  sub_2166DC3F4(&qword_280E43828, type metadata accessor for BootstrapState, &unk_217050A88);

  result = sub_217008684();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = sub_2167CA4DC;
  *(a1 + 24) = 0;
  *(a1 + 32) = 257;
  return result;
}

uint64_t sub_2167CA4DC(uint64_t a1)
{
  type metadata accessor for SubscriptionStatusCoordinator();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_2166C0578(&v4);
  if (v5)
  {
    v2 = *(&v4 + 1) == 0;
    sub_21669987C(&v4, &qword_27CAC5980, &qword_217035260);
  }

  else
  {
    v2 = 1;
  }

  sub_2167CA594(v2, a1);
}

uint64_t sub_2167CA594(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78F8, &qword_217017B30);
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7900, &qword_217017B38);
  MEMORY[0x28223BE20](v7);
  v9 = (&v17 - v8);
  if (a1)
  {
    type metadata accessor for PrivacyDisclaimerAcknowledgement();
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    *v9 = v18;
    swift_storeEnumTagMultiPayload();
    sub_2167CA8E4();
    sub_2166D9530(&qword_27CAC5960, &qword_27CAB78F8, &qword_217017B30, &unk_217024E70);
    return sub_217009554();
  }

  else
  {
    v11 = type metadata accessor for SocialOnboardingNotificationSettingsPageIntent(0);
    *(&v19 + 1) = v11;
    v20 = sub_2166DC3F4(&qword_27CAB7908, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent, &unk_217065C78);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
    v13 = type metadata accessor for ReferrerInfo(0);
    __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1, 1, 1, v13);
    *(boxed_opaque_existential_1 + *(v11 + 20)) = 1;
    *(boxed_opaque_existential_1 + *(v11 + 24)) = 1;
    v21 = 0u;
    v22 = 0u;
    LOWORD(v23) = 1;

    sub_216CCC700(&v18, a2, &v21, 0, 0, v14, v15, v16, v17, v18, v19, v20, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24, v25, v26, v27, v28);
    sub_2167CA874(v6, v9);
    swift_storeEnumTagMultiPayload();
    sub_2167CA8E4();
    sub_2166D9530(&qword_27CAC5960, &qword_27CAB78F8, &qword_217017B30, &unk_217024E70);
    sub_217009554();
    return sub_21669987C(v6, &qword_27CAB78F8, &qword_217017B30);
  }
}

uint64_t sub_2167CA874(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB78F8, &qword_217017B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2167CA8E4()
{
  result = qword_27CAC5950;
  if (!qword_27CAC5950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAC5950);
  }

  return result;
}

uint64_t sub_2167CA938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(a1 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v2, a1, v11);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = *(a1 + 16);
  (*(v8 + 32))(v14 + v13, v12, a1);
  sub_216C0C748();
  sub_2167CAD28(v7, sub_2167CBC68, v14, a2);

  return sub_2166997CC(v7, &qword_27CAB7930, &qword_21701A250);
}

void sub_2167CAAF4(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = type metadata accessor for MappedSection(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2167CC348(a1, v21);
  v12 = type metadata accessor for SongDetailPageView(0, a2, a3, v11);
  v22 = *(a1 + *(v12 + 40));
  v13 = *(v12 + 36);
  sub_2167CC348(v21, &v30);
  sub_2167CC3A4(a1 + v13, v10);
  KeyPath = swift_getKeyPath();
  v24 = 0;
  v26 = MEMORY[0x277CDF310];
  v27 = &off_28291DBD0;
  v14 = swift_allocObject();
  v25 = v14;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  v16 = *v10;
  v15 = v10[1];

  sub_21700DF14();
  sub_2167CC408(v10, type metadata accessor for MappedSection);
  v28 = v16;
  v29 = v15;
  v17 = swift_getKeyPath();
  type metadata accessor for PersistentPageSectionManager();
  sub_2167CC0F0(&unk_280E32060, type metadata accessor for PersistentPageSectionManager, &unk_21704AF8C);
  v18 = sub_2170081B4();
  sub_2166A6EFC(v21, a4, &qword_27CAB79D0, &qword_217017CF8);
  a4[24] = v17;
  a4[25] = v18;
  sub_2166997CC(v21, &qword_27CAB79D0, &qword_217017CF8);
  v19 = swift_getKeyPath();
  sub_217008444();
  a4[26] = v19;
  a4[27] = v20;
}

uint64_t sub_2167CAD28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a1;
  v96 = a4;
  v6 = sub_217009124();
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7950, &qword_217017C30);
  MEMORY[0x28223BE20](v92);
  v95 = (v75 - v8);
  v85 = type metadata accessor for ToolbarProperties(0);
  MEMORY[0x28223BE20](v85);
  v84 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v75 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (v75 - v14);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7958, &qword_217017C38);
  v77 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v17 = v75 - v16;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7960, &qword_217017C40);
  v79 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v78 = v75 - v18;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7968, &qword_217017C48);
  v81 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v80 = v75 - v19;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7970, &qword_217017C50);
  v83 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v82 = v75 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7930, &qword_21701A250);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = v75 - v22;
  v24 = type metadata accessor for ToolbarConfiguration(0);
  MEMORY[0x28223BE20](v24);
  v26 = v75 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = a2;
  v104 = a3;
  sub_2166A6EFC(v89, v23, &qword_27CAB7930, &qword_21701A250);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_2166997CC(v23, &qword_27CAB7930, &qword_21701A250);
    v27 = v95;
    *v95 = a2;
    v27[1] = a3;
    swift_storeEnumTagMultiPayload();

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7978, &qword_217017C58);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980, &qword_217017C60);
    v30 = sub_2166D9530(&qword_27CAB7988, &qword_27CAB7978, &qword_217017C58, MEMORY[0x277CDF7D8]);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
    v32 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
    v33 = sub_2167CBD04();
    v99 = v32;
    v100 = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v99 = v31;
    v100 = OpaqueTypeConformance2;
    v35 = swift_getOpaqueTypeConformance2();
    v99 = v28;
    v100 = v29;
    v101 = v30;
    v102 = v35;
    v36 = swift_getOpaqueTypeConformance2();
    v37 = sub_2167B2E14();
    v38 = MEMORY[0x277D837D0];
    v99 = v90;
    v100 = MEMORY[0x277D837D0];
    v101 = v36;
    v102 = v37;
    v39 = swift_getOpaqueTypeConformance2();
    v99 = v91;
    v100 = v38;
    v101 = v39;
    v102 = v37;
    v40 = swift_getOpaqueTypeConformance2();
    v99 = v93;
    v100 = v40;
    swift_getOpaqueTypeConformance2();
    return sub_217009554();
  }

  else
  {
    v42 = sub_2167CC2DC(v23, v26, type metadata accessor for ToolbarConfiguration);
    v75[0] = v75;
    MEMORY[0x28223BE20](v42);
    v75[-2] = v26;
    v76 = v26;
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7978, &qword_217017C58);
    v89 = v43;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7980, &qword_217017C60);
    v45 = sub_2166D9530(&qword_27CAB7988, &qword_27CAB7978, &qword_217017C58, MEMORY[0x277CDF7D8]);
    v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
    v47 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
    v48 = sub_2167CBD04();
    v99 = v47;
    v100 = v48;
    v49 = swift_getOpaqueTypeConformance2();
    v99 = v46;
    v100 = v49;
    v50 = swift_getOpaqueTypeConformance2();
    v75[1] = v45;
    sub_21700AAD4();
    sub_216B53248();
    v52 = *v15;
    v51 = v15[1];
    sub_21700DF14();
    sub_2167CC408(v15, type metadata accessor for ToolbarProperties);
    if (v51)
    {
      v53 = v52;
    }

    else
    {
      v53 = 0;
    }

    if (v51)
    {
      v54 = v51;
    }

    else
    {
      v54 = 0xE000000000000000;
    }

    v97 = v53;
    v98 = v54;
    v99 = v43;
    v100 = v44;
    v101 = v45;
    v102 = v50;
    v55 = swift_getOpaqueTypeConformance2();
    v56 = sub_2167B2E14();
    v57 = v78;
    v58 = v90;
    sub_21700A5D4();

    (*(v77 + 8))(v17, v58);
    sub_216B53248();
    v60 = *(v12 + 2);
    v59 = *(v12 + 3);
    sub_21700DF14();
    sub_2167CC408(v12, type metadata accessor for ToolbarProperties);
    if (v59)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    if (v59)
    {
      v62 = v59;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    v97 = v61;
    v98 = v62;
    v99 = v58;
    v100 = MEMORY[0x277D837D0];
    v101 = v55;
    v102 = v56;
    v63 = swift_getOpaqueTypeConformance2();
    v64 = v80;
    v65 = v91;
    sub_21700A6D4();

    (*(v79 + 8))(v57, v65);
    v66 = v84;
    sub_216B53248();
    v67 = v86;
    v69 = v87;
    v68 = v88;
    (*(v87 + 16))(v86, v66 + *(v85 + 24), v88);
    sub_2167CC408(v66, type metadata accessor for ToolbarProperties);
    v99 = v65;
    v100 = MEMORY[0x277D837D0];
    v101 = v63;
    v102 = v56;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = v82;
    v72 = v93;
    sub_21700A904();
    (*(v69 + 8))(v67, v68);
    (*(v81 + 8))(v64, v72);
    v73 = v83;
    v74 = v94;
    (*(v83 + 16))(v95, v71, v94);
    swift_storeEnumTagMultiPayload();
    v99 = v72;
    v100 = v70;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    (*(v73 + 8))(v71, v74);
    return sub_2167CC408(v76, type metadata accessor for ToolbarConfiguration);
  }
}

uint64_t sub_2167CB87C()
{
  type metadata accessor for PersistentPageSectionManager();
  v0 = swift_allocObject();
  type metadata accessor for PersistentPageSectionManager.ShelfMetadata(0);
  sub_2167CB9EC();
  *(v0 + 16) = sub_21700E384();
  return v0;
}

uint64_t sub_2167CB8E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v9;
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = *(a1 + 48);
  v10 = type metadata accessor for SongDetailPageView(0, a4, a5, a4);
  sub_2167CC2DC(a2, a6 + v10[9], type metadata accessor for MappedSection);
  *(a6 + v10[10]) = a3;
  v11 = a6 + v10[11];
  *v11 = sub_2167CB87C;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  v12 = v10[12];
  *(a6 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7920, &unk_217028D10);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_2167CB9EC()
{
  result = qword_280E3F8E0[0];
  if (!qword_280E3F8E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3F8E0);
  }

  return result;
}

void sub_2167CBA40(uint64_t a1)
{
  type metadata accessor for MappedSection(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      sub_2167CBB2C(319);
      if (v3 <= 0x3F)
      {
        sub_2167CBBC0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2167CBB2C(uint64_t a1)
{
  if (!qword_280E2B3C0)
  {
    type metadata accessor for PersistentPageSectionManager();
    sub_2167CC0F0(&unk_280E32060, type metadata accessor for PersistentPageSectionManager, &unk_21704AF8C);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3C0);
    }
  }
}

void sub_2167CBBC0(uint64_t a1)
{
  if (!qword_280E2B4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7930, &qword_21701A250);
    v1 = sub_2170080E4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4A8);
    }
  }
}

void sub_2167CBC68(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(type metadata accessor for SongDetailPageView(0, v4, v5, a1) - 8);
  v7 = v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));

  sub_2167CAAF4(v7, v4, v5, a2);
}

unint64_t sub_2167CBD04()
{
  result = qword_280E2A998;
  if (!qword_280E2A998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
    sub_2167CBDD4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79A8, &qword_217017C80);
    sub_2167CBF1C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A998);
  }

  return result;
}

unint64_t sub_2167CBDD4()
{
  result = qword_280E2AAD0;
  if (!qword_280E2AAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79A0, &qword_217017C78);
    type metadata accessor for ArtistPageToolbarContent(255);
    sub_2167CC0F0(qword_280E36CB8, type metadata accessor for ArtistPageToolbarContent, &unk_21706C580);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for CuratorToolbarContent(255);
    sub_2167CC0F0(&qword_280E3AA50, type metadata accessor for CuratorToolbarContent, &unk_21703B738);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAD0);
  }

  return result;
}

unint64_t sub_2167CBF1C()
{
  result = qword_280E2A990;
  if (!qword_280E2A990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79A8, &qword_217017C80);
    sub_2167CBFA8();
    sub_2167CC138();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2A990);
  }

  return result;
}

unint64_t sub_2167CBFA8()
{
  result = qword_280E2AAC8;
  if (!qword_280E2AAC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79B0, &qword_217017C88);
    type metadata accessor for SocialProfileToolbarContent(255);
    sub_2167CC0F0(qword_280E32DC8, type metadata accessor for SocialProfileToolbarContent, &unk_2170589CC);
    swift_getOpaqueTypeConformance2();
    type metadata accessor for GenericMusicItemToolbarContent(255);
    sub_2167CC0F0(qword_280E47508, type metadata accessor for GenericMusicItemToolbarContent, &unk_217050430);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAC8);
  }

  return result;
}

uint64_t sub_2167CC0F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167CC138()
{
  result = qword_280E2AAC0;
  if (!qword_280E2AAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79B8, &unk_217017C90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79C0, &unk_21706D200);
    sub_2167CC288();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79C8, &qword_217017CA0);
    sub_2166D9530(&qword_280E2B3A0, &qword_27CAB79C8, &qword_217017CA0, MEMORY[0x277CDD7A8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AAC0);
  }

  return result;
}

unint64_t sub_2167CC288()
{
  result = qword_280E3B998[0];
  if (!qword_280E3B998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3B998);
  }

  return result;
}

uint64_t sub_2167CC2DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_50();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2167CC3A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MappedSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167CC408(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167CC45C()
{
  result = qword_27CAB79D8;
  if (!qword_27CAB79D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB79E0, qword_217017D00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7968, &qword_217017C48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7960, &qword_217017C40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7958, &qword_217017C38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7978, &qword_217017C58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7980, &qword_217017C60);
    sub_2166D9530(&qword_27CAB7988, &qword_27CAB7978, &qword_217017C58, MEMORY[0x277CDF7D8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7990, &qword_217017C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7998, &qword_217017C70);
    sub_2167CBD04();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2167B2E14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB79D8);
  }

  return result;
}

unint64_t sub_2167CC6DC()
{
  result = qword_27CAB79E8;
  if (!qword_27CAB79E8)
  {
    type metadata accessor for RemoveFromPlaylistAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB79E8);
  }

  return result;
}

uint64_t sub_2167CC734(uint64_t a1)
{
  v2 = type metadata accessor for RemoveFromPlaylistAction(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2167CCB2C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_2167CCB90(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  return sub_216ECDBF4(&unk_217017D90, v6);
}

uint64_t sub_2167CC828(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2167CC848, 0, 0);
}

uint64_t sub_2167CC848()
{
  v1 = v0[3];
  sub_21700BE44();
  v0[4] = sub_21700BE34();
  v2 = type metadata accessor for RemoveFromPlaylistAction(0);
  v3 = *(v2 + 20);
  v4 = *(v2 + 24);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_2167CC914;

  return MEMORY[0x28218A6C8](v1 + v3, v1 + v4);
}

uint64_t sub_2167CC914()
{
  OUTLINED_FUNCTION_33();
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_2167CCAC8;
  }

  else
  {

    v2 = sub_2167CCA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2167CCA2C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 16);
  v2 = *MEMORY[0x277D21CA8];
  sub_21700D2A4();
  OUTLINED_FUNCTION_34();
  (*(v3 + 104))(v1, v2);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2167CCAC8()
{
  OUTLINED_FUNCTION_33();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2167CCB2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromPlaylistAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167CCB90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveFromPlaylistAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167CCBF4(uint64_t a1)
{
  v4 = *(type metadata accessor for RemoveFromPlaylistAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2167CCCD0;

  return sub_2167CC828(a1, v1 + v5);
}

uint64_t sub_2167CCCD0()
{
  OUTLINED_FUNCTION_33();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2167CCDC0(uint64_t a1)
{
  result = sub_2167CD364(&qword_27CAB79F0, MEMORY[0x277D21CB0], &protocol conformance descriptor for ActionOutcome);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2167CCE60(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v8 = sub_21700CDB4();
  v10 = v9;
  v11 = *(v5 + 8);
  v11(v7, v4);
  if (!v10)
  {
    v8 = sub_21700E2E4();
    sub_2167CD364(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v13 = 0x4449707061;
    v13[1] = 0xE500000000000000;
    v13[2] = &type metadata for RemoveAppWithAccessIntent;
    (*(*(v8 - 8) + 104))(v13, *MEMORY[0x277D22530], v8);
    swift_willThrow();
  }

  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v12 + 8))(a2);
  v11(a1, v4);
  return v8;
}

id sub_2167CD0B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = [objc_opt_self() valueWithNewObjectInContext_];
  if (result)
  {
    v7 = result;
    sub_2166F1DCC();
    v10[3] = MEMORY[0x277D837D0];
    v10[0] = a2;
    v10[1] = a3;
    sub_21700DF14();
    v8 = a1;
    v9 = sub_2166F1E10(v10, a1);
    sub_2166F1F64(v9, 0x4449707061, 0xE500000000000000);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2167CD17C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2167CCE60(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

uint64_t sub_2167CD1B8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2167CD1F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2167CD28C(uint64_t a1)
{
  *(a1 + 8) = sub_2167CD2BC();
  result = sub_2167CD310();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2167CD2BC()
{
  result = qword_27CAB7A08;
  if (!qword_27CAB7A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7A08);
  }

  return result;
}

unint64_t sub_2167CD310()
{
  result = qword_27CAB7A10;
  if (!qword_27CAB7A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7A10);
  }

  return result;
}

uint64_t sub_2167CD364(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167CD3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v52 = a2;
  v56 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  v11 = OUTLINED_FUNCTION_2(v10);
  v53 = v12;
  v54 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  v55 = &v49 - v14;
  v50 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  v51 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
  v18 = OUTLINED_FUNCTION_36(v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  v22 = OUTLINED_FUNCTION_36(v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v49 - v23;
  v62 = 0;
  sub_21700AEA4();
  v25 = v59;
  *(a6 + 24) = v58;
  *(a6 + 32) = v25;
  sub_217007FA4();
  v26 = v59;
  v27 = v61;
  v28 = v60;
  *(a6 + 40) = v58;
  *(a6 + 48) = v26;
  *(a6 + 56) = v28;
  *(a6 + 72) = v27;
  v29 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  v58 = 0x4054000000000000;
  sub_2167CD8D8();
  sub_2170082B4();
  v30 = a6 + v29[8];
  *v30 = swift_getKeyPath();
  *(v30 + 8) = 0;
  *(a6 + v29[12]) = a3;
  v31 = *(a5 + 40);
  v57 = a3;
  v32 = v52;

  v31(a4, a5);
  v33 = type metadata accessor for Page.Footer(0);
  if (__swift_getEnumTagSinglePayload(v20, 1, v33) == 1)
  {
    sub_216699778(v20, &qword_27CAB7A28);
    v34 = 1;
  }

  else
  {
    sub_2167D1CFC(&v20[*(v33 + 20)], v24, type metadata accessor for LinkComponentModel);
    sub_2167D2978(v20, type metadata accessor for Page.Footer);
    v34 = 0;
  }

  v35 = type metadata accessor for LinkComponentModel(0);
  __swift_storeEnumTagSinglePayload(v24, v34, 1, v35);
  sub_2167C5834(v24, a6 + v29[10], &qword_27CAB7A30, &qword_217017F30);
  v36 = (*(a5 + 32))(a4, a5);
  if (v36)
  {
    v37 = v51;
    sub_216DE8DC8();

    OUTLINED_FUNCTION_50();
    (*(v38 + 8))(v32, a4);
    v39 = (v37 + *(v50 + 24));
    v40 = *v39;
    v36 = v39[1];
    sub_21700DF14();
    sub_2167D2978(v37, type metadata accessor for Page.Header);
  }

  else
  {
    OUTLINED_FUNCTION_50();
    (*(v41 + 8))(v32, a4);
    v40 = 0;
  }

  v42 = (a6 + v29[11]);
  *v42 = v40;
  v42[1] = v36;
  v43 = a6 + v29[9];
  v44 = v56;
  sub_216683A80(v56, v43, &qword_27CAB7A20, &unk_217017F20);
  v45 = v55;
  sub_2167C5834(v44, v55, &qword_27CAB7A20, &unk_217017F20);
  v46 = (*(v53 + 80) + 24) & ~*(v53 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v57;
  result = sub_2167C5834(v45, v47 + v46, &qword_27CAB7A20, &unk_217017F20);
  *a6 = sub_2167D14E4;
  *(a6 + 8) = v47;
  *(a6 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SocialOnboardingProfileCreationPageView(uint64_t a1)
{
  result = qword_280E2D878;
  if (!qword_280E2D878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2167CD8D8()
{
  result = qword_280E4A4A0;
  if (!qword_280E4A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E4A4A0);
  }

  return result;
}

void sub_2167CD92C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_216683A80(a2, &v11 - v7, &qword_27CAB7A20, &unk_217017F20);
  v9 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_216699778(v8, &qword_27CAB7A20);
  }

  else
  {
    sub_21700DF14();
    sub_2167D2978(v8, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
  }

  v10 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  type metadata accessor for SocialProfileUpdater(0);
  swift_allocObject();

  sub_216AFBA30();
}

uint64_t sub_2167CDAE4@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  sub_2167D1CFC(v1, &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialOnboardingProfileCreationPageView);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  result = sub_2167D1D58(&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a1 = sub_2167D1DBC;
  a1[1] = v10;
  return result;
}

uint64_t sub_2167CDBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v50 = a1;
  v55 = a3;
  v49 = sub_217008A64();
  v4 = *(v49 - 8);
  v48 = *(v4 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A48, &qword_217018068);
  v7 = *(v6 - 8);
  v51 = v6;
  v52 = v7;
  MEMORY[0x28223BE20](v6);
  v45 = v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A50, &qword_217018070);
  v10 = *(v9 - 8);
  v53 = v9;
  v54 = v10;
  MEMORY[0x28223BE20](v9);
  v47 = v43 - v11;
  v44 = sub_217009C64();
  v57 = a2;
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A58, &qword_217018078);
  v43[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A60, &qword_217018080);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A68, &qword_217018088);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A70, &qword_217018090);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A78, &qword_217018098);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A80, &qword_2170180A0);
  v16 = sub_2167D250C(&unk_27CAB7A88);
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AB0, &qword_2170180B8);
  v18 = sub_2167D2D50(&unk_27CAB7AB8);
  v58 = v17;
  v59 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v58 = v14;
  v59 = v15;
  *&v60 = v16;
  *(&v60 + 1) = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v58 = v13;
  v59 = v20;
  v21 = swift_getOpaqueTypeConformance2();
  v58 = v12;
  v59 = v21;
  v22 = swift_getOpaqueTypeConformance2();
  v58 = v43[0];
  v59 = v22;
  swift_getOpaqueTypeConformance2();
  v23 = v45;
  sub_217008054();
  v24 = *(a2 + 48);
  v25 = *(a2 + 72);
  v58 = *(a2 + 40);
  LOBYTE(v59) = v24;
  v60 = *(a2 + 56);
  LOBYTE(v61) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AC0, &qword_2170180C0);
  sub_217007F44();
  v58 = v63;
  LOBYTE(v59) = v64;
  v26 = v46;
  v27 = v49;
  (*(v4 + 16))(v46, v50, v49);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  (*(v4 + 32))(v29 + v28, v26, v27);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
  v31 = sub_2167D2D50(&unk_27CAB7AC8);
  v32 = sub_2167D1F74(&unk_27CAB7AD0);
  v33 = v47;
  v34 = v51;
  sub_21700AB04();

  (*(v52 + 8))(v23, v34);
  v56 = a2;
  sub_2170093B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AD8, &qword_2170180C8);
  v58 = v34;
  v59 = v30;
  *&v60 = v31;
  *(&v60 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE0, &qword_2170180D0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE8, &qword_2170180D8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AF0, &qword_2170180E0);
  v38 = sub_2167D1FE4();
  v58 = MEMORY[0x277CE1350];
  v59 = MEMORY[0x277CE1340];
  v39 = swift_getOpaqueTypeConformance2();
  v40 = sub_2167D209C();
  v58 = v35;
  v59 = v36;
  *&v60 = v37;
  *(&v60 + 1) = v38;
  v61 = v39;
  v62 = v40;
  swift_getOpaqueTypeConformance2();
  v41 = v53;
  sub_21700A444();
  return (*(v54 + 8))(v33, v41);
}

uint64_t sub_2167CE304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46[1] = a1;
  v60 = a2;
  v61 = sub_217008214();
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_217009124();
  v53 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v50 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A78, &qword_217018098);
  MEMORY[0x28223BE20](v5);
  v7 = v46 - v6;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A70, &qword_217018090);
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = v46 - v8;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A68, &qword_217018088);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = v46 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A60, &qword_217018080);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v48 = v46 - v11;
  *v7 = sub_2170093C4();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C28, &qword_2170182B0);
  sub_2167CE9A8(a1, &v7[*(v12 + 44)]);
  v13 = sub_217009C94();
  sub_217007F24();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A98, &qword_2170180A8) + 36)];
  *v22 = v13;
  *(v22 + 1) = v15;
  *(v22 + 2) = v17;
  *(v22 + 3) = v19;
  *(v22 + 4) = v21;
  v22[40] = 0;
  v23 = sub_217009C74();
  sub_217007F24();
  v24 = &v7[*(v5 + 36)];
  *v24 = v23;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A80, &qword_2170180A0);
  v30 = sub_2167D250C(&unk_27CAB7A88);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AB0, &qword_2170180B8);
  v32 = sub_2167D2D50(&unk_27CAB7AB8);
  v62 = v31;
  v63 = v32;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_21700AAD4();
  sub_216699778(v7, &qword_27CAB7A78);
  v34 = v53;
  v35 = v50;
  v36 = v56;
  (*(v53 + 104))(v50, *MEMORY[0x277CDDDC8], v56);
  v62 = v5;
  v63 = v29;
  v64 = v30;
  v65 = OpaqueTypeConformance2;
  v37 = swift_getOpaqueTypeConformance2();
  v38 = v47;
  v39 = v49;
  sub_21700A904();
  (*(v34 + 8))(v35, v36);
  (*(v51 + 8))(v9, v39);
  sub_2167CF91C();
  v62 = v39;
  v63 = v37;
  v40 = swift_getOpaqueTypeConformance2();
  v41 = v48;
  v42 = v52;
  sub_21700A8F4();
  (*(v54 + 8))(v38, v42);
  v43 = v58;
  sub_217008204();
  v62 = v42;
  v63 = v40;
  swift_getOpaqueTypeConformance2();
  v44 = v55;
  sub_21700A454();
  (*(v59 + 8))(v43, v61);
  return (*(v57 + 8))(v41, v44);
}

uint64_t sub_2167CE9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C58, L"F\n(");
  v79 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v78 = &v67 - v3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C60, L"h\n4");
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v67 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v73 = *(v74 - 1);
  MEMORY[0x28223BE20](v74);
  v9 = &v67 - v8;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C68, &unk_217018960);
  MEMORY[0x28223BE20](v71);
  v11 = &v67 - v10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C70, &qword_2170182F0);
  MEMORY[0x28223BE20](v72);
  v77 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v67 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v67 - v17;
  v75 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  v19 = *(v75 + 44);
  v76 = a1;
  v20 = (a1 + v19);
  v21 = v20[1];
  v81 = v7;
  if (v21)
  {
    v22 = *v20;
    v23 = v21;
  }

  else
  {
    *&v22 = COERCE_DOUBLE(sub_216983738(137));
    v23 = v24;
  }

  sub_21700DF14();
  v25 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  v95 = *&v22;
  v96 = v23;
  v97 = 0;
  v98 = MEMORY[0x277D84F90];
  v99 = KeyPath;
  v100 = v25;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  v27 = swift_getKeyPath();
  (*(*&v73 + 32))(v11, v9, v74);
  v28 = &v11[*(v71 + 36)];
  *v28 = v27;
  *(v28 + 1) = 0;
  v28[16] = 1;
  LOBYTE(v27) = sub_217009CA4();
  sub_217007F24();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  sub_2167C5834(v11, v15, &qword_27CAB7C68, &unk_217018960);
  v37 = &v15[*(v72 + 36)];
  *v37 = v27;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v74 = v18;
  sub_2167C5834(v15, v18, &qword_27CAB7C70, &qword_2170182F0);
  v38 = v76;
  v39 = *(v76 + 32);
  LOBYTE(v90) = *(v76 + 24);
  v91 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v41 = v95;
  v40 = v96;
  v42 = v97;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  v43 = sub_217008CF4();
  v45 = v44;
  v46 = sub_2170081B4();
  v47 = sub_217007D54();
  v95 = v41;
  v96 = v40;
  LOBYTE(v97) = v42;
  v98 = v43;
  v99 = v45;
  v100 = v47;
  v101 = v46;
  v73 = *(v38 + 40);
  LODWORD(v72) = *(v38 + 48);
  v71 = *(v38 + 56);
  v70 = *(v38 + 64);
  v69 = *(v38 + 72);
  v90 = *&v73;
  LOBYTE(v91) = v72;
  v92 = v71;
  v93 = v70;
  v94 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AC0, &qword_2170180C0);
  sub_217007F64();
  v90 = v86;
  v91 = v87;
  v92 = v88;
  LOBYTE(v93) = v89;
  v86 = 0;
  LOBYTE(v87) = 0;
  *&v68 = COERCE_DOUBLE(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C80, &unk_217018370));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
  v49 = sub_2167D2AFC();
  v50 = sub_2167D1F74(&unk_280E29D98);
  v51 = v78;
  sub_21700AA74();

  v95 = v73;
  LOBYTE(v96) = v72;
  v97 = v71;
  v98 = v70;
  LOBYTE(v99) = v69;
  sub_217007F64();
  v86 = 1;
  LOBYTE(v87) = 0;
  v95 = *&v68;
  v96 = v48;
  v97 = v49;
  v98 = v50;
  swift_getOpaqueTypeConformance2();
  v52 = v81;
  v53 = v80;
  sub_21700AA74();

  (*(v79 + 8))(v51, v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  v54 = v95;
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  v55 = v54 + *&qword_27CAB7A18 + 50.0;
  v56 = v74;
  v57 = v77;
  sub_216683A80(v74, v77, &qword_27CAB7C70, &qword_2170182F0);
  v58 = v83;
  v59 = *(v83 + 16);
  v60 = v82;
  v61 = v84;
  v59(v82, v52, v84);
  v62 = v85;
  sub_216683A80(v57, v85, &qword_27CAB7C70, &qword_2170182F0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7CA8, &qword_217018380);
  v59((v62 + *(v63 + 48)), v60, v61);
  v64 = v62 + *(v63 + 64);
  *v64 = v55;
  *(v64 + 8) = 0;
  v65 = *(v58 + 8);
  v65(v52, v61);
  sub_216699778(v56, &qword_27CAB7C70);
  v65(v60, v61);
  return sub_216699778(v57, &qword_27CAB7C70);
}

uint64_t sub_2167CF348()
{
  v0 = sub_217009684();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AB0, &qword_2170180B8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - v3;
  sub_217009634();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C30, &qword_2170182B8);
  sub_2167D2D50(&unk_27CAB7C38);
  sub_2170081F4();
  v5 = sub_2167D2D50(&unk_27CAB7AB8);
  MEMORY[0x21CE9A570](v4, v1, v5);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_2167CF528@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for DismissModalPresentationAction(0);
  a1[3] = v2;
  a1[4] = sub_2167D29D0(qword_280E30D30);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  sub_21700D234();
  v4 = boxed_opaque_existential_1 + *(v2 + 20);
  *v4 = 0;
  v4[8] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C30, &qword_2170182B8);
  v6 = v5[11];
  v7 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(a1 + v6, 1, 1, v7);
  v8 = v5[12];
  *(a1 + v8) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v9 = a1 + v5[13];
  result = swift_getKeyPath();
  *v9 = result;
  v9[40] = 0;
  a1[7] = 0;
  a1[8] = 0;
  a1[5] = sub_2167CF664;
  a1[6] = 0;
  return result;
}

uint64_t sub_2167CF664@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C40, &qword_2170182C0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - v3;
  v5 = sub_216983738(178);
  v7 = v6;
  v8 = sub_21700AC54();
  KeyPath = swift_getKeyPath();
  v14 = v5;
  v15 = v7;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v18 = KeyPath;
  v19 = v8;
  sub_217009DE4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
  v11 = sub_2167D2750();
  sub_21700A304();

  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48, &qword_2170182C8);
  v14 = v10;
  v15 = v11;
  swift_getOpaqueTypeConformance2();
  sub_2167D2A34();
  sub_21700AB44();
  return (*(v2 + 8))(v4, v1);
}

double sub_2167CF86C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_217009C84();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C40, &qword_2170182C0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C48, &qword_2170182C8) + 36);
  *v6 = v4;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_2167CF91C()
{
  v1 = sub_2170090F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SocialOnboardingProfileCreationPageView(0) + 32);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_21700ED94();
    v7 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216684F5C(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2167CFA74(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  sub_21700B3F4();
  sub_217008564();
}

uint64_t sub_2167CFAEC(uint64_t a1, uint64_t a2, char a3)
{
  sub_21700B544();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD7C0, &qword_217017FD8);
  sub_2167D1F74(&unk_280E29D98);
  return sub_217008A54();
}

uint64_t sub_2167CFBA0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE8, &qword_2170180D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AE0, &qword_2170180D0);
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  *v8 = sub_2170093B4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B28, &qword_2170180F8);
  sub_2167CFE00(a1, &v8[*(v9 + 44)]);
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v10 = &v8[*(v6 + 36)];
  *v10 = a1;
  *(v10 + 1) = v11;
  *(v10 + 2) = v12;
  *(v10 + 3) = v13;
  *(v10 + 4) = v14;
  v10[40] = 0;
  sub_21700B314();
  v15 = MEMORY[0x277CE1340];
  v16 = MEMORY[0x277CE1350];
  sub_2170092A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AF0, &qword_2170180E0);
  sub_2167D1FE4();
  v18[0] = v16;
  v18[1] = v15;
  swift_getOpaqueTypeConformance2();
  sub_2167D209C();
  sub_21700AB44();
  (*(v3 + 8))(v5, v2);
  return sub_216699778(v8, &qword_27CAB7AE0);
}

uint64_t sub_2167CFE00@<X0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v59[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B30, &qword_217018100);
  MEMORY[0x28223BE20](v7);
  v9 = &v59[-v8];
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B38, &qword_217018108);
  MEMORY[0x28223BE20](v62);
  v65 = &v59[-v10];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B40, &qword_217018110);
  MEMORY[0x28223BE20](v63);
  v66 = &v59[-v11];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B48, &qword_217018118);
  MEMORY[0x28223BE20](v64);
  v68 = &v59[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v61 = &v59[-v14];
  MEMORY[0x28223BE20](v15);
  v67 = &v59[-v16];
  sub_21700B3B4();
  sub_217008BB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  sub_2170082C4();
  sub_21700B3B4();
  sub_2170083C4();
  memcpy(v71, v70, 0x70uLL);
  v60 = sub_217009C94();
  sub_217007F24();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v71[160] = 0;
  sub_2167D0548(v9);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B50, &qword_217018120);
  v26 = v25[11];
  v27 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v9 + v26, 1, 1, v27);
  sub_2167D1CFC(a1, v6, type metadata accessor for SocialOnboardingProfileCreationPageView);
  v28 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v29 = swift_allocObject();
  sub_2167D1D58(v6, v29 + v28);
  v30 = v25[12];
  *(v9 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v31 = v9 + v25[13];
  *v31 = swift_getKeyPath();
  v31[40] = 0;
  v9[5] = sub_2167D23B4;
  v9[6] = v29;
  v9[7] = 0;
  v9[8] = 0;
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  v32 = 1;
  sub_2170083C4();
  v33 = (v9 + *(v7 + 36));
  v34 = v72[1];
  *v33 = v72[0];
  v33[1] = v34;
  v33[2] = v72[2];
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  v35 = sub_2170081B4();
  v36 = sub_216AFF270(v35);

  if (v36)
  {
    sub_2170081B4();
    v32 = sub_216AFF2F0();
  }

  KeyPath = swift_getKeyPath();
  v38 = swift_allocObject();
  *(v38 + 16) = v32 & 1;
  v39 = v65;
  sub_2167C5834(v9, v65, &qword_27CAB7B30, &qword_217018100);
  v40 = &v39[*(v62 + 36)];
  *v40 = KeyPath;
  v40[1] = sub_2167D2420;
  v40[2] = v38;
  LOBYTE(KeyPath) = sub_217009CA4();
  sub_217007F24();
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v48 = v47;
  v49 = v66;
  sub_2167C5834(v39, v66, &qword_27CAB7B38, &qword_217018108);
  v50 = &v49[*(v63 + 36)];
  *v50 = KeyPath;
  *(v50 + 1) = v42;
  *(v50 + 2) = v44;
  *(v50 + 3) = v46;
  *(v50 + 4) = v48;
  v50[40] = 0;
  v51 = swift_getKeyPath();
  v52 = v61;
  sub_2167C5834(v49, v61, &qword_27CAB7B40, &qword_217018110);
  v53 = &v52[*(v64 + 36)];
  *v53 = v51;
  v53[8] = 0;
  v54 = v67;
  sub_2167C5834(v52, v67, &qword_27CAB7B48, &qword_217018118);
  v55 = v68;
  sub_216683A80(v54, v68, &qword_27CAB7B48, &qword_217018118);
  v56 = v69;
  memcpy(v69, v71, 0xA0uLL);
  v56[160] = v60;
  *(v56 + 21) = v18;
  *(v56 + 22) = v20;
  *(v56 + 23) = v22;
  *(v56 + 24) = v24;
  v56[200] = 0;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B58, &qword_2170181F0);
  sub_216683A80(v55, &v56[*(v57 + 48)], &qword_27CAB7B48, &qword_217018118);
  sub_216699778(v54, &qword_27CAB7B48);
  return sub_216699778(v55, &qword_27CAB7B48);
}

uint64_t sub_2167D0548@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_21700D284();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  sub_216683A80(v1 + *(v13 + 40), v12, &qword_27CAB7A30, &qword_217017F30);
  v14 = type metadata accessor for LinkComponentModel(0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_216699778(v12, &qword_27CAB7A30);
    v33 = 0u;
    v34 = 0u;
    v35 = 0;
  }

  else
  {
    sub_216683A80(&v12[*(v14 + 24)], &v33, &qword_27CAB6DB0, &qword_217016C00);
    sub_2167D2978(v12, type metadata accessor for LinkComponentModel);
    if (*(&v34 + 1))
    {
      sub_2166A0F18(&v33, v36);
      sub_21700D234();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_217013D90;
      sub_21700D234();
      v32 = v9;
      type metadata accessor for SocialProfileUpdater(0);
      sub_2167D29D0(&qword_280E3B500);
      v31 = v3;
      sub_2170081B4();
      v16 = sub_216AFF340();
      v29 = v17;
      v30 = v16;

      v18 = sub_2170081B4();
      v19 = type metadata accessor for CheckSocialHandleAvailabilityAction(0);
      *(v15 + 56) = v19;
      *(v15 + 64) = sub_2167D29D0(&qword_27CAB7C20);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v15 + 32));
      (*(v4 + 32))(boxed_opaque_existential_1, v6, v31);
      v21 = (boxed_opaque_existential_1 + *(v19 + 20));
      v22 = v29;
      *v21 = v30;
      v21[1] = v22;
      *(boxed_opaque_existential_1 + *(v19 + 24)) = v18;
      sub_2167B7D58(v36, v15 + 72);
      v23 = sub_21700D3B4();
      v24 = MEMORY[0x277D21D10];
      a1[3] = v23;
      a1[4] = v24;
      __swift_allocate_boxed_opaque_existential_1(a1);
      sub_21700D394();
      return __swift_destroy_boxed_opaque_existential_1Tm(v36);
    }
  }

  sub_216699778(&v33, &qword_27CAB6DB0);
  v26 = type metadata accessor for DismissModalPresentationAction(0);
  a1[3] = v26;
  a1[4] = sub_2167D29D0(qword_280E30D30);
  v27 = __swift_allocate_boxed_opaque_existential_1(a1);
  result = sub_21700D234();
  v28 = v27 + *(v26 + 20);
  *v28 = 0;
  v28[8] = 1;
  return result;
}

double sub_2167D0968@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B60, &qword_2170181F8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B68, &qword_217018200);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B70, &qword_217018208);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B78, &qword_217018210);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B80, &qword_217018218);
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v18 = &v26 - v17;
  sub_2167D0E00(a1, v5);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v5, v9, &qword_27CAB7B60, &qword_2170181F8);
  memcpy(&v9[*(v7 + 44)], __src, 0x70uLL);
  LOBYTE(a1) = sub_217009C84();
  sub_2167C5834(v9, v13, &qword_27CAB7B68, &qword_217018200);
  v19 = &v13[*(v11 + 44)];
  *v19 = a1;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = sub_21700AC54();
  LOBYTE(v7) = sub_217009C84();
  sub_2167C5834(v13, v16, &qword_27CAB7B70, &qword_217018208);
  v21 = &v16[*(v14 + 36)];
  *v21 = v20;
  v21[8] = v7;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B88, &qword_217018220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B90, &qword_217018228);
  sub_2167D2428();
  sub_2167D2808();
  sub_2167D28C0();
  sub_21700AB34();
  sub_216699778(v16, &qword_27CAB7B78);
  if (qword_27CAB58C0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v22 = v28;
  (*(v26 + 32))(v28, v18, v27);
  v23 = (v22 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C10, &qword_217018270) + 36));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;
  result = v32[0];
  v23[2] = *v32;
  return result;
}

uint64_t sub_2167D0E00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C18, &qword_217018278);
  MEMORY[0x28223BE20](v6);
  v8 = (v24 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v24[0] = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D29D0(&qword_280E3B500);
  sub_2170081B4();
  v12 = sub_216AFF2F0();

  if (v12)
  {
    sub_217008294();
    v13 = v24[0];
    (*(v24[0] + 16))(v8, v11, v9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
    sub_2167D2D50(&qword_27CAB7BC8);
    sub_2167D2750();
    sub_217009554();
    return (*(v13 + 8))(v11, v9);
  }

  v15 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  sub_216683A80(a1 + *(v15 + 40), v5, &qword_27CAB7A30, &qword_217017F30);
  v16 = type metadata accessor for LinkComponentModel(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v16) == 1)
  {
    sub_216699778(v5, &qword_27CAB7A30);
LABEL_6:
    v18 = sub_216983738(168);
    v19 = v20;

    goto LABEL_7;
  }

  v17 = &v5[*(v16 + 28)];
  v18 = *v17;
  v19 = v17[1];
  sub_21700DF14();
  sub_2167D2978(v5, type metadata accessor for LinkComponentModel);
  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_7:
  v21 = sub_21700ACF4();
  KeyPath = swift_getKeyPath();
  *v8 = v18;
  v8[1] = v19;
  v23 = MEMORY[0x277D84F90];
  v8[2] = 0;
  v8[3] = v23;
  v8[4] = KeyPath;
  v8[5] = v21;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD8, &unk_217018240);
  sub_2167D2D50(&qword_27CAB7BC8);
  sub_2167D2750();
  return sub_217009554();
}

uint64_t sub_2167D120C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B88, &qword_217018220) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00, &unk_217018260) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7B78, &qword_217018210);
}

uint64_t sub_2167D12D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B90, &qword_217018228) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7B78, &qword_217018210);
}

uint64_t sub_2167D13C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7AF0, &qword_2170180E0) + 36);
  sub_21700B2E4();
  v5 = sub_217009C84();
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7B20, &qword_2170180F0) + 36)) = v5;
  return sub_216683A80(a1, a2, &qword_27CAB7AE0, &qword_2170180D0);
}

uint64_t sub_2167D1450()
{
  sub_2167D18AC();
  sub_217009104();
  return v1;
}

uint64_t sub_2167D148C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2167D1450();
  *a1 = result & 1;
  return result;
}

void sub_2167D14E4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A20, &unk_217017F20);
  OUTLINED_FUNCTION_36(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  sub_2167CD92C(v3, v4);
}

uint64_t sub_2167D1590@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_2_14();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2167D15BC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27CAB5C98 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  result = sub_2170083D4();
  *a1 = KeyPath;
  a1[1] = result;
  return result;
}

id sub_2167D1660()
{
  v0 = objc_opt_self();
  v1 = sub_21700E4D4();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  result = sub_21700F584();
  __break(1u);
  return result;
}

uint64_t sub_2167D1784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167D2DA0();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_2167D17E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2167D2DA0();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_2167D184C(uint64_t a1)
{
  sub_2167D2DA0();
  sub_217009AF4();
  __break(1u);
}

uint64_t sub_2167D1874()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAB7A18 = *&v1;
  return result;
}

unint64_t sub_2167D18AC()
{
  result = qword_280E2AC50;
  if (!qword_280E2AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2AC50);
  }

  return result;
}

void sub_2167D1938(uint64_t a1)
{
  sub_2167D1B08(319);
  if (v1 <= 0x3F)
  {
    sub_2166B37C8(319, &qword_280E2A590, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
    if (v2 <= 0x3F)
    {
      sub_2167D1B9C(319);
      if (v3 <= 0x3F)
      {
        sub_2167D1C30(319);
        if (v4 <= 0x3F)
        {
          sub_2166B37C8(319, &qword_280E2B438, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_2167D1C8C(319, qword_280E2D5A0, type metadata accessor for SocialOnboardingUserNameHandlePageLockup);
            if (v6 <= 0x3F)
            {
              sub_2167D1C8C(319, &qword_280E3EC00, type metadata accessor for LinkComponentModel);
              if (v7 <= 0x3F)
              {
                sub_2166B37C8(319, &qword_280E2A070, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for ObjectGraph(319);
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

void sub_2167D1B08(uint64_t a1)
{
  if (!qword_280E2B3E8)
  {
    type metadata accessor for SocialProfileUpdater(255);
    sub_2167D29D0(&qword_280E3B500);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B3E8);
    }
  }
}

void sub_2167D1B9C(uint64_t a1)
{
  if (!qword_280E2B4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0, &qword_217017FD8);
    sub_2167D1F74(&unk_280E29D98);
    v1 = sub_217007FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B4E0);
    }
  }
}

void sub_2167D1C30(uint64_t a1)
{
  if (!qword_280E2B378)
  {
    sub_2167CD8D8();
    v1 = sub_2170082D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B378);
    }
  }
}

void sub_2167D1C8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21700F164();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2167D1CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2167D1D58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D1DBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2167CDBE4(a1, v7, a2);
}

unint64_t sub_2167D1E40()
{
  result = qword_27CAB7A90;
  if (!qword_27CAB7A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7A98, &qword_2170180A8);
    sub_2167D2D50(&unk_27CAB7AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7A90);
  }

  return result;
}

uint64_t sub_2167D1EF8(uint64_t a1, uint64_t *a2)
{
  v5 = sub_217008A64();
  OUTLINED_FUNCTION_36(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_2167CFA74(a1, a2, v7);
}

unint64_t sub_2167D1F74(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABD7C0, &qword_217017FD8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D1FE4()
{
  result = qword_27CAB7AF8;
  if (!qword_27CAB7AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AE0, &qword_2170180D0);
    sub_2167D2D50(&unk_27CAB7B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7AF8);
  }

  return result;
}

unint64_t sub_2167D209C()
{
  result = qword_27CAB7B10;
  if (!qword_27CAB7B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7AF0, &qword_2170180E0);
    sub_2167D1FE4();
    sub_2167D2D50(&qword_27CAB7B18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7B10);
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v2 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  v3 = (v0 + ((*(*(v2 - 1) + 80) + 16) & ~*(*(v2 - 1) + 80)));
  sub_2166B8588(*v3, v3[1]);

  v4 = v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A40, &unk_217017FA0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 8))(v3 + v4);
  sub_216684F5C(*(v3 + v2[8]), *(v3 + v2[8] + 8));
  v6 = v3 + v2[9];
  v7 = type metadata accessor for SocialOnboardingUserNameHandlePageLockup(0);
  if (!OUTLINED_FUNCTION_9_1(v7))
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v6 + 2);
    v8 = *(v1 + 24);
    v9 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(&v6[v8], 1, v9))
    {
      OUTLINED_FUNCTION_50();
      (*(v10 + 8))(&v6[v8], v9);
    }
  }

  v11 = v3 + v2[10];
  v12 = type metadata accessor for LinkComponentModel(0);
  if (!OUTLINED_FUNCTION_9_1(v12))
  {
    v13 = sub_21700D7A4();
    if (!__swift_getEnumTagSinglePayload(v11, 1, v13))
    {
      OUTLINED_FUNCTION_50();
      (*(v14 + 8))(v11, v13);
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v11 + *(v1 + 20)));
    v15 = (v11 + *(v1 + 24));
    if (v15[3])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
    }
  }

  return swift_deallocObject();
}

double sub_2167D23B4@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SocialOnboardingProfileCreationPageView(0);
  OUTLINED_FUNCTION_36(v3);
  v5 = (v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80)));

  return sub_2167D0968(v5, a1);
}

unint64_t sub_2167D2428()
{
  result = qword_27CAB7B98;
  if (!qword_27CAB7B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B78, &qword_217018210);
    sub_2167D250C(&unk_27CAB7BA0);
    sub_2167D2D50(&qword_280E2A840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7B98);
  }

  return result;
}

unint64_t sub_2167D250C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2588()
{
  result = qword_27CAB7BA8;
  if (!qword_27CAB7BA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B68, &qword_217018200);
    sub_2167D2614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BA8);
  }

  return result;
}

unint64_t sub_2167D2614()
{
  result = qword_27CAB7BB0;
  if (!qword_27CAB7BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B60, &qword_2170181F8);
    sub_2167D2698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BB0);
  }

  return result;
}

unint64_t sub_2167D2698()
{
  result = qword_27CAB7BB8;
  if (!qword_27CAB7BB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BC0, &unk_217018230);
    sub_2167D2D50(&qword_27CAB7BC8);
    sub_2167D2750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BB8);
  }

  return result;
}

unint64_t sub_2167D2750()
{
  result = qword_280E2B1D8;
  if (!qword_280E2B1D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BD8, &unk_217018240);
    sub_2167C4D74();
    sub_2167D2D50(&qword_280E2A718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B1D8);
  }

  return result;
}

unint64_t sub_2167D2808()
{
  result = qword_27CAB7BF0;
  if (!qword_27CAB7BF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B88, &qword_217018220);
    sub_2167D2428();
    sub_2167D2D50(&qword_27CAB7BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7BF0);
  }

  return result;
}

unint64_t sub_2167D28C0()
{
  result = qword_27CAB7C08;
  if (!qword_27CAB7C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7B90, &qword_217018228);
    sub_2167D2428();
    sub_2167D2D50(&qword_280E2B390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C08);
  }

  return result;
}

uint64_t sub_2167D2978(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_2167D29D0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2A34()
{
  result = qword_27CAB7C50;
  if (!qword_27CAB7C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C48, &qword_2170182C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7BD8, &unk_217018240);
    sub_2167D2750();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C50);
  }

  return result;
}

unint64_t sub_2167D2AFC()
{
  result = qword_27CAB7C88;
  if (!qword_27CAB7C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7C80, &unk_217018370);
    sub_2167D2BB4();
    sub_2167D2D50(&qword_27CAB7C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C88);
  }

  return result;
}

unint64_t sub_2167D2BB4()
{
  result = qword_27CAB7C90;
  if (!qword_27CAB7C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7C90);
  }

  return result;
}

unint64_t sub_2167D2C44()
{
  result = qword_27CAB7CC0;
  if (!qword_27CAB7CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7CC8, "X");
    sub_2167D2CFC();
    sub_2167D2D50(&qword_27CAB7CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CC0);
  }

  return result;
}

unint64_t sub_2167D2CFC()
{
  result = qword_27CAB7CD0;
  if (!qword_27CAB7CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CD0);
  }

  return result;
}

unint64_t sub_2167D2D50(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_10(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_100(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_2167D2DA0()
{
  result = qword_27CAB7CE8;
  if (!qword_27CAB7CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7CE8);
  }

  return result;
}

uint64_t sub_2167D2DF4(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2167D2E48(char a1)
{
  if (a1)
  {
    return 0x657263536C6C7566;
  }

  else
  {
    return 0x7465656873;
  }
}

unint64_t sub_2167D2E88(uint64_t a1)
{
  v1 = sub_21700F5E4();

  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2167D2ED4(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2167D2F74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2167D2DF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2167D2FA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2167D2E48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2167D2FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2167D2E88(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_2167D3024@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2167D2ED4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2167D3050@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v107 = a3;
  v110 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_0();
  v100 = v5;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v98 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v88 - v9;
  sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v105 = v11;
  v106 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7();
  v102 = v13 - v12;
  sub_217006224();
  OUTLINED_FUNCTION_1();
  v94 = v15;
  v95 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v93 = v17 - v16;
  v18 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_7();
  v24 = v23 - v22;
  v109 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v111 = v25;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_1_0();
  v99 = v27;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v28);
  v97 = &v88 - v29;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v30);
  v96 = &v88 - v31;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v32);
  v34 = &v88 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v88 - v36;
  MEMORY[0x28223BE20](v38);
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v103 = v40;
  v104 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_7();
  v43 = v42 - v41;
  v112 = a1;
  sub_21700CE04();
  v44 = v110;
  (*(v20 + 16))(v24);
  v45 = v108;
  sub_21700D224();
  if (v45)
  {
    (*(v20 + 8))(v44, v18);
    return (*(v111 + 8))(v112, v109);
  }

  else
  {
    v91 = v34;
    v90 = 0;
    v92 = v20;
    v108 = v18;
    v47 = v107;
    (*(v103 + 32))(v107, v43, v104);
    sub_21700CE04();
    v48 = sub_21700CDB4();
    v50 = v49;
    v52 = v111 + 8;
    v51 = *(v111 + 8);
    v53 = v109;
    v51(v37, v109);
    if (!v50)
    {
      v54 = v93;
      sub_217006214();
      v48 = sub_2170061F4();
      v50 = v55;
      (*(v94 + 8))(v54, v95);
    }

    v56 = v105;
    v57 = type metadata accessor for OpenFinancePageAction(0);
    v58 = (v47 + *(v57 + 20));
    *v58 = v48;
    v58[1] = v50;
    v59 = v91;
    sub_21700CE04();
    v60 = v101;
    sub_21700CD34();
    v61 = v59;
    v62 = v53;
    v51(v61, v53);
    v63 = v106;
    if (__swift_getEnumTagSinglePayload(v60, 1, v106) == 1)
    {
      sub_21669987C(v60, &qword_27CABA820, &unk_217018CE0);
      sub_21700E2E4();
      sub_2167D3E54(&qword_280E2A0F8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      swift_allocError();
      *v64 = 7107189;
      v64[1] = 0xE300000000000000;
      v64[2] = v57;
      OUTLINED_FUNCTION_2_12();
      (*(v65 + 104))();
      swift_willThrow();
      (*(v92 + 8))(v110, v108);
      v51(v112, v53);
      (*(v103 + 8))(v107, v104);
    }

    else
    {
      v66 = v102;
      (*(v56 + 32))(v102, v60, v63);
      v104 = v57;
      v67 = *(v57 + 24);
      v68 = v107;
      (*(v56 + 16))(v107 + v67, v66, v63);
      type metadata accessor for OpenFinancePageAction.Kind(0);
      swift_storeEnumTagMultiPayload();
      v69 = v96;
      v70 = v112;
      sub_21700CE04();
      v71 = v98;
      sub_21700CCB4();
      v111 = v52;
      v51(v69, v62);
      v72 = sub_21700D3E4();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v72);
      v74 = v68;
      v75 = v92;
      v76 = v51;
      if (EnumTagSinglePayload == 1)
      {
        sub_21669987C(v71, &qword_27CAB7D20, &qword_217018700);
        v77 = 0;
      }

      else
      {
        v77 = sub_21700D3D4();
        OUTLINED_FUNCTION_2_12();
        (*(v78 + 8))(v71, v72);
      }

      *(v74 + *(v104 + 28)) = v77;
      v79 = v97;
      sub_21700CE04();
      v80 = v100;
      sub_21700CCB4();
      v76(v79, v109);
      v81 = __swift_getEnumTagSinglePayload(v80, 1, v72);
      v89 = v76;
      if (v81 == 1)
      {
        sub_21669987C(v80, &qword_27CAB7D20, &qword_217018700);
        v82 = 0;
      }

      else
      {
        v82 = sub_21700D3D4();
        OUTLINED_FUNCTION_2_12();
        (*(v83 + 8))(v80, v72);
      }

      v84 = v104;
      *(v74 + *(v104 + 32)) = v82;
      v85 = v99;
      sub_21700CE04();
      sub_2167D3E9C();
      sub_21700CCC4();
      (*(v75 + 8))(v110, v108);
      v86 = v109;
      v87 = v89;
      v89(v70, v109);
      v87(v85, v86);
      result = (*(v105 + 8))(v102, v106);
      *(v74 + *(v84 + 36)) = v113;
    }
  }

  return result;
}

uint64_t sub_2167D3A00()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CAB7CF0);
  __swift_project_value_buffer(v0, qword_27CAB7CF0);
  return sub_217007C94();
}

uint64_t sub_2167D3A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[3] = type metadata accessor for ProcessDeepLinkAction(0);
  v7[4] = sub_2167D3E54(&qword_27CAB7D08, type metadata accessor for ProcessDeepLinkAction, &protocol conformance descriptor for ProcessDeepLinkAction);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  sub_2167D3B48(a2, boxed_opaque_existential_1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_2167D3B48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessDeepLinkAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for OpenFinancePageAction.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for OpenFinancePageAction.PresentationStyle(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2167D3D90()
{
  result = qword_27CAB7D10;
  if (!qword_27CAB7D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D10);
  }

  return result;
}

unint64_t sub_2167D3DE8()
{
  result = qword_27CAB7D18;
  if (!qword_27CAB7D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D18);
  }

  return result;
}

uint64_t sub_2167D3E54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167D3E9C()
{
  result = qword_280E3A608[0];
  if (!qword_280E3A608[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E3A608);
  }

  return result;
}

uint64_t sub_2167D3F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_1_16();
  sub_2167D5768(a1, &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_2167D5540(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

  return sub_216ECDBF4(&unk_217018798, v9);
}

uint64_t sub_2167D4064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[45] = a2;
  v3[46] = a3;
  v3[44] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v3[47] = v4;
  v3[48] = *(v4 - 8);
  v3[49] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  v3[53] = type metadata accessor for PresentAlertAction(0);
  v3[54] = swift_task_alloc();
  v6 = _s6ActionVMa(0);
  v3[55] = v6;
  v3[56] = *(v6 - 8);
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v7 = sub_217006224();
  v3[59] = v7;
  v3[60] = *(v7 - 8);
  v3[61] = swift_task_alloc();
  v8 = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  v3[62] = v8;
  v9 = *(v8 - 8);
  v3[63] = v9;
  v3[64] = *(v9 + 64);
  v3[65] = swift_task_alloc();
  v10 = sub_21700D284();
  v3[66] = v10;
  v3[67] = *(v10 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v11 = sub_21700D3B4();
  v3[70] = v11;
  v3[71] = *(v11 - 8);
  v3[72] = swift_task_alloc();
  sub_21700EA34();
  v3[73] = sub_21700EA24();
  v13 = sub_21700E9B4();
  v3[74] = v13;
  v3[75] = v12;

  return MEMORY[0x2822009F8](sub_2167D43F0, v13, v12);
}

uint64_t sub_2167D43F0()
{
  v1 = *(v0 + 360) + *(*(v0 + 496) + 36);
  v2 = *(v1 + 8);
  if (v2 && (v3 = *(v1 + 16), *(v0 + 312) = *v1, *(v0 + 320) = v2, *(v0 + 328) = v3 & 1, v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0), MEMORY[0x21CE9BEE0](v4), (*(v0 + 329) & 1) == 0))
  {
    v90 = *(v0 + 576);
    v77 = *(v0 + 560);
    v78 = *(v0 + 568);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 528);
    v72 = *(v0 + 520);
    v73 = *(v0 + 504);
    v11 = *(v0 + 488);
    v10 = *(v0 + 496);
    v74 = *(v0 + 480);
    v76 = *(v0 + 472);
    v88 = *(v0 + 464);
    v79 = *(v0 + 456);
    v80 = *(v0 + 448);
    v87 = *(v0 + 440);
    v81 = *(v0 + 432);
    v82 = *(v0 + 424);
    v85 = *(v0 + 392);
    v83 = *(v0 + 384);
    v84 = *(v0 + 376);
    v12 = *(v0 + 360);
    sub_21700D234();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BE0, &unk_21701EC70);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_217013D90;
    v89 = v10;
    v14 = v12;
    v86 = v12;
    v15 = (v12 + *(v10 + 28));
    v16 = *v15;
    v17 = v15[1];
    v18 = (v14 + *(v10 + 32));
    v19 = v18[1];
    v69 = v16;
    v70 = *v18;
    sub_21700DF14();
    sub_21700DF14();
    sub_21700D234();
    v20 = type metadata accessor for RemoveItemAction(0);
    *(v13 + 56) = v20;
    *(v13 + 64) = sub_2167D5988(qword_280E40948, type metadata accessor for RemoveItemAction, &unk_217038810);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
    v68 = v9;
    (*(v8 + 16))(boxed_opaque_existential_1, v7, v9);
    *(v0 + 336) = v69;
    *(v0 + 344) = v17;
    sub_21700F364();
    (*(v8 + 8))(v7, v9);
    v22 = (boxed_opaque_existential_1 + *(v20 + 20));
    *v22 = v70;
    v22[1] = v19;
    sub_21700D234();
    v23 = (v86 + *(v89 + 20));
    v25 = *v23;
    v24 = v23[1];
    v26 = type metadata accessor for RemoveAppWithAccessAction(0);
    *(v13 + 96) = v26;
    *(v13 + 104) = sub_2167D5988(qword_280E35180, type metadata accessor for RemoveAppWithAccessAction, &unk_2170456CC);
    v27 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
    (*(v8 + 32))(v27, v7, v68);
    v28 = (v27 + *(v26 + 20));
    *v28 = v25;
    v28[1] = v24;
    sub_21700DF14();
    sub_21700D394();
    v29 = sub_216983738(43);
    v71 = v30;
    sub_21700D234();
    OUTLINED_FUNCTION_1_16();
    sub_2167D5768(v86, v72, v31);
    v32 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v33 = swift_allocObject();
    sub_2167D5540(v72, v33 + v32);
    v34 = sub_21700D2C4();
    v35 = MEMORY[0x277D21CB8];
    *(v0 + 72) = v34;
    *(v0 + 80) = v35;
    __swift_allocate_boxed_opaque_existential_1((v0 + 48));
    sub_21700D2B4();
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36 = *(v74 + 8);
    v36(v11, v76);
    *(v0 + 16) = v33;
    *(v0 + 24) = v32;
    *(v0 + 32) = v29;
    *(v0 + 40) = v71;
    sub_2167ADC3C(v0 + 16, v88);
    v37 = *(v87 + 20);
    sub_217007EF4();
    v75 = sub_217007F04();
    __swift_storeEnumTagSinglePayload(v88 + v37, 0, 1, v75);
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36(v11, v76);
    v38 = (v88 + *(v87 + 24));
    *v38 = v37;
    v38[1] = v32;
    sub_216983738(230);
    OUTLINED_FUNCTION_7_12();
    v39 = MEMORY[0x277D21D10];
    *(v0 + 144) = v77;
    *(v0 + 152) = v39;
    v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 120));
    (*(v78 + 16))(v40, v90, v77);
    sub_217006214();
    v41 = sub_2170061F4();
    v43 = v42;
    v36(v11, v76);
    *(v0 + 88) = v41;
    *(v0 + 96) = v43;
    *(v0 + 104) = v37;
    *(v0 + 112) = v32;
    sub_2167ADC3C(v0 + 88, v79);
    v44 = *(v87 + 20);
    sub_217007ED4();
    __swift_storeEnumTagSinglePayload(v79 + v44, 0, 1, v75);
    sub_217006214();
    sub_2170061F4();
    OUTLINED_FUNCTION_7_12();
    v36(v11, v76);
    v45 = (v79 + *(v87 + 24));
    *v45 = v44;
    v45[1] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7518, &unk_2170187B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_217013DA0;
    v47 = (v86 + *(v89 + 24));
    v49 = *v47;
    v48 = v47[1];
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_2167C6E08();
    *(inited + 32) = v49;
    *(inited + 40) = v48;
    sub_21700DF14();
    v50 = sub_216983808(24, inited);
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAC0130, &unk_21702B8D0);
    v53 = *(v80 + 72);
    v54 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_217013D90;
    v56 = v55 + v54;
    sub_2167D5768(v88, v56, _s6ActionVMa);
    sub_2167D5768(v79, v56 + v53, _s6ActionVMa);
    v57 = sub_216983738(294);
    sub_216933384(v50, v52, v55, v57, v58, (v0 + 232));
    sub_21700D234();
    v59 = v81 + *(v82 + 20);
    v60 = *(v0 + 232);
    v61 = *(v0 + 248);
    *(v59 + 32) = *(v0 + 264);
    *v59 = v60;
    *(v59 + 16) = v61;
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    *(v0 + 296) = v82;
    *(v0 + 304) = sub_2167D5988(qword_280E3EB18, type metadata accessor for PresentAlertAction, &unk_21703EA34);
    v62 = __swift_allocate_boxed_opaque_existential_1((v0 + 272));
    sub_2167D5768(v81, v62, type metadata accessor for PresentAlertAction);
    (*(v83 + 104))(v85, *MEMORY[0x277D21E18], v84);
    v63 = swift_task_alloc();
    *(v0 + 608) = v63;
    *v63 = v0;
    v63[1] = sub_2167D4C60;
    v64 = *(v0 + 392);
    v65 = *(v0 + 400);
    v66 = *(v0 + 368);
    v67 = *(v0 + 352);

    return MEMORY[0x28217F468](v67, v0 + 272, v64, v66, v65);
  }

  else
  {

    sub_2167D56B0();
    swift_allocError();
    swift_willThrow();
    OUTLINED_FUNCTION_3_29();

    OUTLINED_FUNCTION_3();

    return v5();
  }
}

uint64_t sub_2167D4C60()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  (*(v2[48] + 8))(v2[49], v2[47]);
  if (v0)
  {
    v3 = v2[75];
    v4 = v2[74];
    v5 = sub_2167D4F34;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 34);
    v3 = v2[75];
    v4 = v2[74];
    v5 = sub_2167D4DB4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2167D4DB4()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[57];
  v5 = v0[58];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_0_31();
  sub_2167D57C8(v6, v10);
  sub_2167D57C8(v4, _s6ActionVMa);
  sub_2167ADC98((v0 + 11));
  sub_2167D57C8(v5, _s6ActionVMa);
  sub_2167ADC98((v0 + 2));
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_2167D4F34()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v5 = v0[57];
  v4 = v0[58];
  v6 = v0[54];
  v8 = v0[51];
  v7 = v0[52];
  v9 = v0[50];

  (*(v8 + 8))(v7, v9);
  OUTLINED_FUNCTION_0_31();
  sub_2167D57C8(v6, v10);
  sub_2167D57C8(v5, _s6ActionVMa);
  sub_2167ADC98((v0 + 11));
  sub_2167D57C8(v4, _s6ActionVMa);
  sub_2167ADC98((v0 + 2));
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  OUTLINED_FUNCTION_3_29();

  OUTLINED_FUNCTION_3();

  return v11();
}

uint64_t sub_2167D50AC(uint64_t a1)
{
  v16 = a1;
  v1 = sub_21700B5A4();
  v18 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_21700B5E4();
  v4 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2166AF2EC();
  v11 = sub_21700EE84();
  sub_2167D5768(v16, v10, type metadata accessor for PromptRemoveAppWithAccessAction);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v13 = swift_allocObject();
  sub_2167D5540(v10, v13 + v12);
  aBlock[4] = sub_2167D5928;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2169F0990;
  aBlock[3] = &block_descriptor;
  v14 = _Block_copy(aBlock);
  sub_21700B5C4();
  aBlock[7] = MEMORY[0x277D84F90];
  sub_2167D5988(&qword_280E2A480, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABC970, &unk_2170187C0);
  sub_2167D59D0();
  sub_21700F214();
  MEMORY[0x21CE9FCB0](0, v6, v3, v14);
  _Block_release(v14);

  (*(v18 + 8))(v3, v1);
  (*(v4 + 8))(v6, v17);
}

uint64_t sub_2167D540C(uint64_t a1)
{
  result = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  if (*(a1 + *(result + 36) + 8))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
    sub_21700B0D4();
  }

  return result;
}

uint64_t sub_2167D54B4()
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t sub_2167D54FC(uint64_t a1)
{
  sub_21700F8F4();
  MEMORY[0x21CEA0720](0);
  return sub_21700F944();
}

uint64_t sub_2167D5540(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptRemoveAppWithAccessAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D55A4(uint64_t a1)
{
  v4 = *(type metadata accessor for PromptRemoveAppWithAccessAction(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2167AF644;

  return sub_2167D4064(a1, v1 + v5, v6);
}

unint64_t sub_2167D56B0()
{
  result = qword_27CAB7D28;
  if (!qword_27CAB7D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D28);
  }

  return result;
}

uint64_t sub_2167D5768(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167D57C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_3Tm_0()
{
  type metadata accessor for PromptRemoveAppWithAccessAction(0);
  OUTLINED_FUNCTION_117();
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));
  sub_21700D284();
  OUTLINED_FUNCTION_34();
  (*(v4 + 8))(v3);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_4_2();
  if (*(v3 + *(v0 + 44) + 8))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2167D5928()
{
  v1 = *(type metadata accessor for PromptRemoveAppWithAccessAction(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2167D540C(v2);
}

uint64_t sub_2167D5988(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2167D59D0()
{
  result = qword_280E29E50;
  if (!qword_280E29E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CABC970, &unk_2170187C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E29E50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InlineUpsell.AssetName(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for PromptRemoveAppWithAccessActionImplementation.PromptRemoveAppWithAccessError(_BYTE *result, int a2, int a3)
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

unint64_t sub_2167D5B34()
{
  result = qword_27CAB7D30;
  if (!qword_27CAB7D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D30);
  }

  return result;
}

uint64_t sub_2167D5B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v48 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A38, &unk_217017F60);
  v12 = OUTLINED_FUNCTION_36(v11);
  MEMORY[0x28223BE20](v12);
  v44 = &v41 - v13;
  v42 = type metadata accessor for Page.Header(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v14);
  v43 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A28, &unk_2170352A0);
  v17 = OUTLINED_FUNCTION_36(v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  v21 = OUTLINED_FUNCTION_36(v20);
  MEMORY[0x28223BE20](v21);
  v23 = &v41 - v22;
  v24 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  *(a6 + v24[8]) = a3;
  v25 = *(a5 + 40);
  v45 = a3;

  v46 = a4;
  v47 = a2;
  v25(a4, a5);
  v26 = type metadata accessor for Page.Footer(0);
  if (__swift_getEnumTagSinglePayload(v19, 1, v26) == 1)
  {
    sub_216699778(v19, &qword_27CAB7A28);
    v27 = 1;
  }

  else
  {
    sub_2167D9130(&v19[*(v26 + 20)], v23, type metadata accessor for LinkComponentModel);
    sub_2167D97D0(v19, type metadata accessor for Page.Footer);
    v27 = 0;
  }

  v28 = type metadata accessor for LinkComponentModel(0);
  __swift_storeEnumTagSinglePayload(v23, v27, 1, v28);
  sub_2167D5FC4(v23, a6 + v24[6]);
  v29 = v46;
  v30 = v47;
  v31 = (*(a5 + 32))(v46, a5);
  if (v31)
  {
    v32 = v43;
    sub_216DE8DC8();

    v33 = (v32 + *(v42 + 24));
    v34 = *v33;
    v31 = v33[1];
    sub_21700DF14();
    sub_2167D97D0(v32, type metadata accessor for Page.Header);
  }

  else
  {
    v34 = 0;
  }

  v35 = (a6 + v24[7]);
  *v35 = v34;
  v35[1] = v31;
  v36 = v48;
  sub_2167D9130(v48, a6 + v24[5], type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  v37 = type metadata accessor for SocialProfileEditorHeaderLockup(0);
  __swift_storeEnumTagSinglePayload(v44, 1, 1, v37);
  type metadata accessor for SocialProfileUpdater(0);
  swift_allocObject();
  sub_216AFBA30();
  v39 = v38;
  sub_216AFF53C(*(v36 + 41));
  sub_216AFF564(*(v36 + 42));
  (*(*(v29 - 8) + 8))(v30, v29);
  result = sub_2167D97D0(v36, type metadata accessor for SocialOnboardingPrivacySettingsPageLockup);
  *a6 = sub_2167D8C58;
  *(a6 + 8) = v39;
  *(a6 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for SocialOnboardingPrivacySettingsPageView(uint64_t a1)
{
  result = qword_280E2D920;
  if (!qword_280E2D920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2167D5FC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D6034(uint64_t a1)
{
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D40, &qword_217018918);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D48, &qword_217018920);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D50, &qword_217018928);
  sub_2167D8E28();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_217008054();
}

uint64_t sub_2167D613C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v3 = sub_217008214();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D50, &qword_217018928);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D48, &qword_217018920);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - v12;
  *v9 = sub_2170093C4();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D70, &qword_217018938);
  sub_2167D63D8(a1, &v9[*(v14 + 44)]);
  LOBYTE(a1) = sub_217009C74();
  sub_217007F24();
  v15 = &v9[*(v7 + 36)];
  *v15 = a1;
  *(v15 + 1) = v16;
  *(v15 + 2) = v17;
  *(v15 + 3) = v18;
  *(v15 + 4) = v19;
  v15[40] = 0;
  v20 = sub_2167D8E28();
  sub_21700A8C4();
  sub_216699778(v9, &qword_27CAB7D50);
  sub_217008204();
  v22[2] = v7;
  v22[3] = v20;
  swift_getOpaqueTypeConformance2();
  sub_21700A454();
  (*(v4 + 8))(v6, v3);
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_2167D63D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v164 = a2;
  v3 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  v4 = v3 - 8;
  v153 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v154 = v5;
  v155 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v152 = &v122[-v7];
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D78, &unk_217018940);
  MEMORY[0x28223BE20](v156);
  v163 = &v122[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v122[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D80, &unk_2170234D0);
  v161 = *(v12 - 8);
  v162 = v12;
  MEMORY[0x28223BE20](v12);
  v160 = &v122[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v173 = &v122[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D88, &unk_217018950);
  v157 = *(v16 - 8);
  v158 = v16;
  MEMORY[0x28223BE20](v16);
  v170 = &v122[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v20 = &v122[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7640, &unk_2170182E0);
  v166 = *(v21 - 8);
  v167 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v122[-v22];
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C68, &unk_217018960);
  MEMORY[0x28223BE20](v151);
  v25 = &v122[-v24];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C70, &qword_2170182F0);
  MEMORY[0x28223BE20](v165);
  v169 = &v122[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v27);
  v29 = &v122[-v28];
  MEMORY[0x28223BE20](v30);
  v31 = *(v4 + 36);
  v168 = a1;
  v32 = (a1 + v31);
  v33 = v32[1];
  v159 = v11;
  v171 = &v122[-v34];
  v172 = v20;
  if (v33)
  {
    v35 = *v32;
    v36 = v33;
  }

  else
  {
    v35 = sub_216983738(48);
    v36 = v37;
  }

  sub_21700DF14();
  v38 = sub_217009D34();
  KeyPath = swift_getKeyPath();
  v191[0] = v35;
  v191[1] = v36;
  v191[2] = 0;
  v191[3] = MEMORY[0x277D84F90];
  v191[4] = KeyPath;
  v191[5] = v38;
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7660, &qword_2170189A0);
  sub_2167C4CBC();
  sub_21700A304();

  v40 = swift_getKeyPath();
  (*(v166 + 32))(v25, v23, v167);
  v41 = &v25[*(v151 + 36)];
  *v41 = v40;
  *(v41 + 1) = 0;
  v41[16] = 1;
  LOBYTE(v40) = sub_217009CA4();
  sub_217007F24();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  sub_2167C5834(v25, v29, &qword_27CAB7C68, &unk_217018960);
  v50 = &v29[*(v165 + 36)];
  *v50 = v40;
  *(v50 + 1) = v43;
  *(v50 + 2) = v45;
  *(v50 + 3) = v47;
  *(v50 + 4) = v49;
  v50[40] = 0;
  sub_2167C5834(v29, v171, &qword_27CAB7C70, &qword_2170182F0);
  v51 = type metadata accessor for SocialProfileUpdater(0);
  v52 = sub_2167D8D54();
  v53 = sub_217008CF4();
  v150 = v54;
  v151 = v53;
  v55 = *v168;
  v56 = *(v168 + 16);
  v166 = *(v168 + 8);
  v167 = v55;
  LODWORD(v165) = v56;
  v149 = sub_2170081B4();
  v148 = sub_217007D54();
  v147 = sub_217009CA4();
  sub_217007F24();
  v145 = v58;
  v146 = v57;
  v143 = v60;
  v144 = v59;
  LOBYTE(v191[0]) = 0;
  v61 = sub_216983738(131);
  v141 = v62;
  v142 = v61;
  v140 = sub_217009E94();
  v138 = swift_getKeyPath();
  v139 = sub_21700AD34();
  v137 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  v135 = swift_getKeyPath();
  v136 = sub_217009CA4();
  sub_217007F24();
  v133 = v64;
  v134 = v63;
  v131 = v66;
  v132 = v65;
  v195[112] = 0;
  sub_2170081C4();
  swift_getKeyPath();
  sub_2170086A4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D90, &qword_217018A60);
  sub_2167D8FF8(&qword_27CAB7D98, &qword_27CAB7D90, &qword_217018A60, sub_2167D8EE0);
  sub_21700B044();
  v128 = sub_217009CA4();
  sub_217007F24();
  v126 = v68;
  v127 = v67;
  v124 = v70;
  v125 = v69;
  v191[3] = &unk_28293ACF8;
  v71 = sub_2167D8F98();
  v191[4] = v71;
  sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  v191[3] = &unk_28293ACF8;
  v191[4] = v71;
  sub_217006724();
  __swift_destroy_boxed_opaque_existential_1Tm(v191);
  v130 = v51;
  sub_2170081C4();
  swift_getKeyPath();
  v129 = v52;
  sub_2170086A4();

  MEMORY[0x28223BE20](v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DC8, &qword_217018AA0);
  sub_2167D8FF8(&qword_27CAB7DD0, &qword_27CAB7DC8, &qword_217018AA0, sub_2167D9078);
  sub_21700B044();
  v123 = sub_217009CA4();
  sub_217007F24();
  v74 = v73;
  v76 = v75;
  v78 = v77;
  v80 = v79;
  v81 = v159;
  v82 = v168;
  sub_2167D7EFC(v159);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DF8, &qword_217018AB8);
  v84 = v83[11];
  v85 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v81 + v84, 1, 1, v85);
  v86 = v152;
  sub_2167D9130(v82, v152, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
  v87 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v88 = swift_allocObject();
  sub_2167D918C(v86, v88 + v87);
  v89 = v82;
  v90 = v155;
  sub_2167D9130(v89, v155, type metadata accessor for SocialOnboardingPrivacySettingsPageView);
  v91 = swift_allocObject();
  sub_2167D918C(v90, v91 + v87);
  v92 = v83[12];
  *(v81 + v92) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v93 = v81 + v83[13];
  *v93 = swift_getKeyPath();
  v93[40] = 0;
  v81[5] = sub_2167D91F0;
  v81[6] = v88;
  v81[7] = sub_2167D925C;
  v81[8] = v91;
  if (qword_27CAB58D0 != -1)
  {
    swift_once();
  }

  sub_21700B3B4();
  sub_2170083C4();
  v94 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E00, &qword_217018B28) + 36));
  v95 = v197;
  *v94 = v196;
  v94[1] = v95;
  v94[2] = v198;
  sub_2170081B4();
  v96 = sub_216AFF2F0();

  v97 = swift_getKeyPath();
  v98 = swift_allocObject();
  *(v98 + 16) = v96 & 1;
  v99 = (v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E08, &qword_217018B60) + 36));
  *v99 = v97;
  v99[1] = sub_2167D2420;
  v99[2] = v98;
  LOBYTE(v97) = sub_217009CA4();
  sub_217007F24();
  v101 = v100;
  v103 = v102;
  v105 = v104;
  v107 = v106;
  v108 = v81 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E10, &qword_217018B68) + 36);
  *v108 = v97;
  *(v108 + 1) = v101;
  *(v108 + 2) = v103;
  *(v108 + 3) = v105;
  *(v108 + 4) = v107;
  v108[40] = 0;
  v109 = swift_getKeyPath();
  v110 = v81 + *(v156 + 36);
  *v110 = v109;
  v110[8] = 0;
  v111 = v169;
  sub_216683A80(v171, v169, &qword_27CAB7C70, &qword_2170182F0);
  v189[0] = v151;
  v189[1] = v150;
  v189[2] = v148;
  v189[3] = v149;
  LOBYTE(v189[4]) = v147;
  v189[5] = v146;
  v189[6] = v145;
  v189[7] = v144;
  v189[8] = v143;
  LOBYTE(v189[9]) = 0;
  v190[0] = v111;
  v190[2] = v189;
  v188[0] = v142;
  v188[1] = v141;
  v188[2] = 0;
  v188[3] = MEMORY[0x277D84F90];
  v188[4] = v138;
  v188[5] = v140;
  v188[6] = v137;
  v188[7] = v139;
  memcpy(&v188[8], v195, 0x70uLL);
  v188[22] = v135;
  LOBYTE(v188[23]) = 0;
  *(&v188[23] + 1) = *v194;
  HIDWORD(v188[23]) = *&v194[3];
  LOBYTE(v188[24]) = v136;
  *(&v188[24] + 1) = *v193;
  HIDWORD(v188[24]) = *&v193[3];
  v188[25] = v134;
  v188[26] = v133;
  v188[27] = v132;
  v188[28] = v131;
  LOBYTE(v188[29]) = 0;
  v190[3] = v188;
  v113 = v157;
  v112 = v158;
  v114 = v170;
  (*(v157 + 16))();
  v182 = v128;
  v183 = v127;
  v184 = v126;
  v185 = v125;
  v186 = v124;
  v187 = 0;
  v190[4] = v114;
  v190[5] = &v182;
  v115 = v160;
  v116 = v161;
  v117 = v162;
  (*(v161 + 16))(v160, v173, v162);
  v176 = v123;
  v177 = v74;
  v178 = v76;
  v179 = v78;
  v180 = v80;
  v181 = 0;
  v190[6] = v115;
  v190[7] = &v176;
  v174 = 0;
  v175 = 1;
  v190[8] = &v174;
  v118 = v163;
  sub_216683A80(v81, v163, &qword_27CAB7D78, &unk_217018940);
  v190[9] = v118;
  sub_2168AA4BC(v190);
  sub_216699778(v81, &qword_27CAB7D78);
  v119 = *(v116 + 8);
  v119(v173, v117);
  v120 = *(v113 + 8);
  v120(v172, v112);
  sub_216699778(v171, &qword_27CAB7C70);
  sub_216699778(v118, &qword_27CAB7D78);
  v119(v115, v117);
  v120(v170, v112);
  memcpy(v191, v188, 0xE9uLL);
  sub_216699778(v191, &qword_27CAB7E18);
  memcpy(v192, v189, 0x49uLL);
  sub_216699778(v192, &qword_27CAB7E20);
  return sub_216699778(v169, &qword_27CAB7C70);
}

uint64_t sub_2167D7324@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_2170093B4();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EE8, &qword_217018C50);
  sub_2167D741C(a2 + *(v3 + 44));
  v4 = sub_217009CD4();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DA8, &qword_217018A68) + 36);
  *v13 = v4;
  *(v13 + 8) = v6;
  *(v13 + 16) = v8;
  *(v13 + 24) = v10;
  *(v13 + 32) = v12;
  *(v13 + 40) = 0;
  v14 = sub_217009CA4();
  sub_217007F24();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D90, &qword_217018A60);
  v24 = a2 + *(result + 36);
  *v24 = v14;
  *(v24 + 8) = v16;
  *(v24 + 16) = v18;
  *(v24 + 24) = v20;
  *(v24 + 32) = v22;
  *(v24 + 40) = 0;
  return result;
}

uint64_t sub_2167D741C@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB8, &qword_217018C20);
  v2 = v1 - 8;
  MEMORY[0x28223BE20](v1);
  v4 = &v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC0, &qword_217018C28);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v45 = sub_216983738(57);
  v46 = v14;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  sub_21700A304();

  v15 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v17 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC8, &qword_217018C30) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = swift_getKeyPath();
  v19 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED0, &qword_217018C38) + 36)];
  *v19 = v18;
  *(v19 + 1) = 0;
  v19[16] = 1;
  v20 = swift_getKeyPath();
  v21 = &v4[*(v2 + 44)];
  *v21 = v20;
  v21[8] = 0;
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167C5834(v4, v10, &qword_27CAB7EB8, &qword_217018C20);
  memcpy(&v10[*(v6 + 44)], v61, 0x70uLL);
  v38 = v13;
  sub_2167C5834(v10, v13, &qword_27CAB7EC0, &qword_217018C28);
  v22 = sub_216983738(58);
  v24 = v23;
  v41 = sub_217009E94();
  v25 = swift_getKeyPath();
  v40 = sub_21700AD14();
  v26 = swift_getKeyPath();
  v37 = v26;
  v27 = swift_getKeyPath();
  LOBYTE(v45) = 1;
  v39 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v60[5], __src, 0x70uLL);
  v28 = v43;
  sub_216683A80(v13, v43, &qword_27CAB7EC0, &qword_217018C28);
  v29 = v42;
  sub_216683A80(v28, v42, &qword_27CAB7EC0, &qword_217018C28);
  v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EF0, &qword_217018C58) + 48);
  v44[0] = v22;
  v44[1] = v24;
  v44[2] = 0;
  v44[3] = MEMORY[0x277D84F90];
  v44[4] = v25;
  v31 = v25;
  v32 = v41;
  v44[5] = v41;
  v44[6] = v26;
  v33 = v39;
  v34 = v40;
  v44[7] = v40;
  v44[8] = v27;
  v44[9] = 0;
  LOBYTE(v44[10]) = 1;
  v44[11] = v39;
  LOWORD(v44[12]) = 0;
  BYTE2(v44[12]) = 1;
  memcpy(&v44[12] + 3, v60, 0x75uLL);
  memcpy((v29 + v30), v44, 0xD8uLL);
  sub_216683A80(v44, &v45, &qword_27CAB7EF8, &qword_217018C60);
  sub_216699778(v38, &qword_27CAB7EC0);
  v45 = v22;
  v46 = v24;
  v47 = 0;
  v48 = MEMORY[0x277D84F90];
  v49 = v31;
  v50 = v32;
  v51 = v37;
  v52 = v34;
  v53 = v27;
  v54 = 0;
  v55 = 1;
  v56 = v33;
  v57 = 0;
  v58 = 1;
  memcpy(v59, v60, sizeof(v59));
  sub_216699778(&v45, &qword_27CAB7EF8);
  return sub_216699778(v43, &qword_27CAB7EC0);
}

uint64_t sub_2167D7904@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *a3 = sub_2170093B4();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB0, &qword_217018C18);
  sub_2167D7A14(a1, v3, a3 + *(v6 + 44));
  LOBYTE(v3) = sub_217009CD4();
  sub_217007F24();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DE0, &qword_217018AA8) + 36);
  *v15 = v3;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  LOBYTE(v3) = sub_217009CA4();
  sub_217007F24();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7DC8, &qword_217018AA0);
  v25 = a3 + *(result + 36);
  *v25 = v3;
  *(v25 + 8) = v17;
  *(v25 + 16) = v19;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23;
  *(v25 + 40) = 0;
  return result;
}

uint64_t sub_2167D7A14@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v44) = a2;
  v3 = a1;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EB8, &qword_217018C20);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC0, &qword_217018C28);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v46 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v48 = sub_216983738(v3);
  v49 = v17;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  sub_217009D94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7668, &unk_2170174F0);
  sub_2167C4D74();
  sub_21700A304();

  v18 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v20 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EC8, &qword_217018C30) + 36)];
  *v20 = KeyPath;
  v20[1] = v18;
  v21 = swift_getKeyPath();
  v22 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED0, &qword_217018C38) + 36)];
  *v22 = v21;
  *(v22 + 1) = 0;
  v22[16] = 1;
  v23 = swift_getKeyPath();
  v24 = &v7[*(v5 + 44)];
  *v24 = v23;
  v24[8] = 0;
  sub_21700B3C4();
  sub_217008BB4();
  sub_2167C5834(v7, v13, &qword_27CAB7EB8, &qword_217018C20);
  memcpy(&v13[*(v9 + 44)], v63, 0x70uLL);
  v25 = v16;
  v40 = v16;
  sub_2167C5834(v13, v16, &qword_27CAB7EC0, &qword_217018C28);
  v26 = sub_216983738(v44);
  v44 = v27;
  v43 = sub_217009E94();
  v28 = swift_getKeyPath();
  v42 = sub_21700AD14();
  v29 = swift_getKeyPath();
  v39 = v29;
  v30 = swift_getKeyPath();
  LOBYTE(v48) = 1;
  v41 = swift_getKeyPath();
  sub_21700B3C4();
  sub_217008BB4();
  memcpy(&v62[7], __src, 0x70uLL);
  v31 = v46;
  sub_216683A80(v25, v46, &qword_27CAB7EC0, &qword_217018C28);
  v32 = v45;
  sub_216683A80(v31, v45, &qword_27CAB7EC0, &qword_217018C28);
  v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7ED8, &qword_217018C40) + 48);
  v35 = v43;
  v34 = v44;
  v47[0] = v26;
  v47[1] = v44;
  v47[2] = 0;
  v47[3] = MEMORY[0x277D84F90];
  v47[4] = v28;
  v47[5] = v43;
  v47[6] = v29;
  v37 = v41;
  v36 = v42;
  v47[7] = v42;
  v47[8] = v30;
  v47[9] = 0;
  LOBYTE(v47[10]) = 1;
  v47[11] = v41;
  LOBYTE(v47[12]) = 0;
  memcpy(&v47[12] + 1, v62, 0x77uLL);
  memcpy((v32 + v33), v47, 0xD8uLL);
  sub_216683A80(v47, &v48, &qword_27CAB7EE0, &qword_217018C48);
  sub_216699778(v40, &qword_27CAB7EC0);
  v48 = v26;
  v49 = v34;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v52 = v28;
  v53 = v35;
  v54 = v39;
  v55 = v36;
  v56 = v30;
  v57 = 0;
  v58 = 1;
  v59 = v37;
  v60 = 0;
  memcpy(v61, v62, sizeof(v61));
  sub_216699778(&v48, &qword_27CAB7EE0);
  return sub_216699778(v46, &qword_27CAB7EC0);
}

uint64_t sub_2167D7EFC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  if (*(v1 + *(v6 + 20) + 80) == 1)
  {
    sub_216683A80(v1 + *(v6 + 24), v5, &qword_27CAB7A30, &qword_217017F30);
    v7 = type metadata accessor for LinkComponentModel(0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
    {
      result = sub_216699778(v5, &qword_27CAB7A30);
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0;
    }

    else
    {
      sub_216683A80(&v5[*(v7 + 24)], a1, &qword_27CAB6DB0, &qword_217016C00);
      return sub_2167D97D0(v5, type metadata accessor for LinkComponentModel);
    }
  }

  else
  {
    type metadata accessor for SocialProfileUpdater(0);
    sub_2167D8D54();
    sub_2170081B4();
    v9 = sub_21700D3B4();
    v10 = MEMORY[0x277D21D10];
    *(a1 + 24) = v9;
    *(a1 + 32) = v10;
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_216AFDE5C();
  }

  return result;
}

uint64_t sub_2167D80C4@<X0>(uint64_t a2@<X8>)
{
  v20[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E28, &qword_217018BB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v20 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E30, &qword_217018BB8);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E38, &qword_217018BC0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E40, &qword_217018BC8);
  MEMORY[0x28223BE20](v13);
  v15 = v20 - v14;
  sub_2167D841C(v4);
  sub_21700B3B4();
  sub_217008BB4();
  sub_2167C5834(v4, v8, &qword_27CAB7E28, &qword_217018BB0);
  memcpy(&v8[*(v6 + 44)], __src, 0x70uLL);
  LOBYTE(v4) = sub_217009C84();
  sub_2167C5834(v8, v12, &qword_27CAB7E30, &qword_217018BB8);
  v16 = &v12[*(v10 + 44)];
  *v16 = v4;
  *(v16 + 8) = 0u;
  *(v16 + 24) = 0u;
  v16[40] = 1;
  v17 = sub_21700AC54();
  LOBYTE(v4) = sub_217009C84();
  sub_2167C5834(v12, v15, &qword_27CAB7E38, &qword_217018BC0);
  v18 = &v15[*(v13 + 36)];
  *v18 = v17;
  v18[8] = v4;
  sub_21700B314();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48, &unk_217018BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50, &qword_21704B320);
  sub_2167D92B8();
  sub_2167D9660();
  sub_2167D9718();
  sub_21700AB34();
  return sub_216699778(v15, &qword_27CAB7E40);
}

uint64_t sub_2167D841C@<X0>(uint64_t a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA0, &qword_217018C00);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v26 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7EA8, &unk_217018C08);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7BD0, &unk_217026510);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D8D54();
  sub_2170081B4();
  v10 = sub_216AFF2F0();

  if (v10)
  {
    sub_217008294();
    (*(v7 + 16))(v5, v9, v6);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88, &unk_217018BF0);
    v12 = sub_2167D95A8();
    *&v34[0] = v11;
    *(&v34[0] + 1) = v12;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v7 + 8))(v9, v6);
  }

  else
  {
    v14 = sub_2167D8870();
    v16 = v15;
    v17 = sub_21700ACF4();
    KeyPath = swift_getKeyPath();
    v19 = sub_217009D54();
    v20 = swift_getKeyPath();
    *&v30 = v14;
    *(&v30 + 1) = v16;
    *&v31 = 0;
    *(&v31 + 1) = MEMORY[0x277D84F90];
    *&v32 = KeyPath;
    *(&v32 + 1) = v17;
    *&v33 = v20;
    *(&v33 + 1) = v19;
    sub_217009DE4();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E88, &unk_217018BF0);
    v22 = sub_2167D95A8();
    v23 = v26;
    sub_21700A304();
    v34[0] = v30;
    v34[1] = v31;
    v34[2] = v32;
    v34[3] = v33;
    sub_216699778(v34, &qword_27CAB7E88);
    v24 = v27;
    v25 = v29;
    (*(v27 + 16))(v5, v23, v29);
    swift_storeEnumTagMultiPayload();
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    *&v30 = v21;
    *(&v30 + 1) = v22;
    swift_getOpaqueTypeConformance2();
    sub_217009554();
    return (*(v24 + 8))(v23, v25);
  }
}

uint64_t sub_2167D8870()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  v4 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  sub_216683A80(v0 + *(v4 + 24), v3, &qword_27CAB7A30, &qword_217017F30);
  v5 = type metadata accessor for LinkComponentModel(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v5) == 1)
  {
    sub_216699778(v3, &qword_27CAB7A30);
  }

  else
  {
    v6 = &v3[*(v5 + 28)];
    v7 = *v6;
    v8 = *(v6 + 1);
    sub_21700DF14();
    sub_2167D97D0(v3, type metadata accessor for LinkComponentModel);
    if (v8)
    {
      return v7;
    }
  }

  if (*(v0 + *(v4 + 20) + 80))
  {
    v9 = 168;
  }

  else
  {
    v9 = 90;
  }

  return sub_216983738(v9);
}

uint64_t sub_2167D89BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E48, &unk_217018BD0) + 36);
  v5 = *MEMORY[0x277CE0118];
  v6 = sub_217009294();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  *(v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C00, &unk_217018260) + 36)) = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7E40, &qword_217018BC8);
}

uint64_t sub_2167D8A88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7E50, &qword_21704B320) + 36));
  v5 = *(sub_217008B44() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_217009294();
  (*(*(v7 - 8) + 104))(&v4[v5], v6, v7);
  __asm { FMOV            V0.2D, #8.0 }

  *v4 = _Q0;
  *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7438, &qword_21701A4C0) + 36)] = 256;
  return sub_216683A80(a1, a2, &qword_27CAB7E40, &qword_217018BC8);
}

uint64_t sub_2167D8B70(uint64_t *a1)
{
  type metadata accessor for SocialProfileUpdater(0);
  sub_2167D8D54();
  sub_2170081B4();
  sub_216AFF304(1);

  sub_2170081B4();
  sub_216AFD94C();
}

uint64_t sub_2167D8C20()
{
  result = sub_21700B304();
  v1 = 50.0;
  if (result)
  {
    v1 = 48.0;
  }

  qword_27CAB7D38 = *&v1;
  return result;
}

void sub_2167D8C88(uint64_t a1)
{
  sub_2167D1B08(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SocialOnboardingPrivacySettingsPageLockup(319);
    if (v2 <= 0x3F)
    {
      sub_2167D8DAC(319);
      if (v3 <= 0x3F)
      {
        sub_216688154();
        if (v4 <= 0x3F)
        {
          type metadata accessor for ObjectGraph(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_2167D8D54()
{
  result = qword_280E3B500;
  if (!qword_280E3B500)
  {
    type metadata accessor for SocialProfileUpdater(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E3B500);
  }

  return result;
}

void sub_2167D8DAC(uint64_t a1)
{
  if (!qword_280E3EC00)
  {
    type metadata accessor for LinkComponentModel(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E3EC00);
    }
  }
}

unint64_t sub_2167D8E28()
{
  result = qword_27CAB7D58;
  if (!qword_27CAB7D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7D50, &qword_217018928);
    sub_21669E098(&qword_27CAB7D60, &unk_27CAB7D68, &unk_217018930, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7D58);
  }

  return result;
}

unint64_t sub_2167D8EE0()
{
  result = qword_27CAB7DA0;
  if (!qword_27CAB7DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7DA8, &qword_217018A68);
    sub_21669E098(&qword_27CAB7DB0, &unk_27CAB7DB8, &unk_217018A70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DA0);
  }

  return result;
}

unint64_t sub_2167D8F98()
{
  result = qword_27CAB7DC0;
  if (!qword_27CAB7DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DC0);
  }

  return result;
}

uint64_t sub_2167D8FF8(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2167D9078()
{
  result = qword_27CAB7DD8;
  if (!qword_27CAB7DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7DE0, &qword_217018AA8);
    sub_21669E098(&qword_27CAB7DE8, &unk_27CAB7DF0, &unk_217018AB0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7DD8);
  }

  return result;
}

uint64_t sub_2167D9130(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2167D918C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167D91F0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  OUTLINED_FUNCTION_36(v2);

  return sub_2167D80C4(a1);
}

uint64_t sub_2167D925C()
{
  v1 = type metadata accessor for SocialOnboardingPrivacySettingsPageView(0);
  OUTLINED_FUNCTION_36(v1);
  v3 = (v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return sub_2167D8B70(v3);
}

unint64_t sub_2167D92B8()
{
  result = qword_27CAB7E58;
  if (!qword_27CAB7E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E40, &qword_217018BC8);
    sub_2167D8FF8(&qword_27CAB7E60, &qword_27CAB7E38, &qword_217018BC0, sub_2167D939C);
    sub_21669E098(&qword_280E2A840, &qword_27CAB7BE8, &qword_217019E70, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E58);
  }

  return result;
}

unint64_t sub_2167D939C()
{
  result = qword_27CAB7E68;
  if (!qword_27CAB7E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E30, &qword_217018BB8);
    sub_2167D9428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E68);
  }

  return result;
}

unint64_t sub_2167D9428()
{
  result = qword_27CAB7E70;
  if (!qword_27CAB7E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E28, &qword_217018BB0);
    sub_2167D94AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E70);
  }

  return result;
}

unint64_t sub_2167D94AC()
{
  result = qword_27CAB7E78;
  if (!qword_27CAB7E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E80, &unk_217018BE0);
    sub_21669E098(&qword_27CAB7BC8, &qword_27CAB7BD0, &unk_217026510, MEMORY[0x277CDD7F8]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88, &unk_217018BF0);
    sub_2167D95A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E78);
  }

  return result;
}

unint64_t sub_2167D95A8()
{
  result = qword_280E2B000;
  if (!qword_280E2B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E88, &unk_217018BF0);
    sub_2167D2750();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E2B000);
  }

  return result;
}

unint64_t sub_2167D9660()
{
  result = qword_27CAB7E90;
  if (!qword_27CAB7E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E48, &unk_217018BD0);
    sub_2167D92B8();
    sub_21669E098(&qword_27CAB7BF8, &qword_27CAB7C00, &unk_217018260, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E90);
  }

  return result;
}

unint64_t sub_2167D9718()
{
  result = qword_27CAB7E98;
  if (!qword_27CAB7E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB7E50, &qword_21704B320);
    sub_2167D92B8();
    sub_21669E098(&qword_280E2B390, &qword_27CAB7438, &qword_21701A4C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB7E98);
  }

  return result;
}

uint64_t sub_2167D97D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

void *sub_2167D985C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  type metadata accessor for UserSocialProfileCoordinator(0);
  sub_21700D4B4();
  v10 = v14;
  if (!v14)
  {

LABEL_6:
    swift_deallocPartialClassInstance();
    return 0;
  }

  type metadata accessor for SocialGraphController(0);
  sub_21700D4B4();
  v11 = v14;
  if (!v14)
  {

    goto LABEL_6;
  }

  *(v2 + 16) = a1;
  type metadata accessor for ObjectGraph(0);

  sub_21700E094();

  (*(v6 + 32))(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_actionDispatcher, v9, v4);
  *(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator) = v10;
  *(v2 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_socialGraphController) = v11;
  return v2;
}

uint64_t sub_2167D9A44()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF0, &unk_2170152D0);
  v1 = OUTLINED_FUNCTION_36(v0);
  MEMORY[0x28223BE20](v1);
  v2 = OUTLINED_FUNCTION_4_17();
  sub_2167D9B94(v2, v3, v4, v5);
  v6 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v7 = OUTLINED_FUNCTION_4_17();
  sub_2167DA7DC(v7, v8, v9, v10);
  v11 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v12 = OUTLINED_FUNCTION_4_17();
  sub_2167DCBE4(v12, v13, v14, v15);
  v16 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  v17 = OUTLINED_FUNCTION_4_17();
  sub_2167DD8D8(v17, v18, v19, v20);
  v21 = sub_21678C1C4();
  OUTLINED_FUNCTION_7_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6DF8, &unk_217029FC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217018C90;
  *(inited + 32) = v6;
  *(inited + 40) = v11;
  *(inited + 48) = v16;
  *(inited + 56) = v21;
  v23 = sub_2167A2998(inited);
  swift_setDeallocating();
  sub_2169FAC94();
  return v23;
}

uint64_t sub_2167D9B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v86 = a3;
  v100 = a2;
  v103 = sub_2170075A4();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v99 = v7;
  v101 = &v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OpenSocialProfileEditAction(0);
  v97 = *(v8 - 8);
  v9 = *(v97 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v98 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v96 = &v83 - v11;
  v95 = sub_21700CFB4();
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_217005EF4();
  v85 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v83 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_21700D704();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v105 = &v83 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v83 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = &v83 - v23;
  v89 = sub_21700D284();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = v4;
  v25 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if (v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] != 1)
  {
    goto LABEL_19;
  }

  v26 = (a1 + *(type metadata accessor for SocialProfileDescriptor(0) + 24));
  v27 = v26[1];
  if (!v27)
  {
    goto LABEL_19;
  }

  v28 = *v26;
  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {
LABEL_19:
    v44 = type metadata accessor for MenuAction(0);
    v45 = a4;
    goto LABEL_20;
  }

  v84 = a4;
  v30 = sub_216F0706C();
  if (sub_216F07FB4(v30) == 1718379891 && v31 == 0xE400000000000000)
  {
    goto LABEL_23;
  }

  v33 = sub_21700F7D4();

  if (v33)
  {
    goto LABEL_24;
  }

  v34 = *&v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v35 = *(v34 + 16);
  v36 = v25;
  os_unfair_lock_lock(v35);
  v37 = *&v36[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v38 = *(v34 + 16);
  v39 = v37;
  os_unfair_lock_unlock(v38);

  if (!v37)
  {
    goto LABEL_18;
  }

  v40 = sub_2167DEA8C(v39);
  if (!v41)
  {
    goto LABEL_18;
  }

  if (v28 == v40 && v27 == v41)
  {
LABEL_23:

    goto LABEL_24;
  }

  v43 = sub_21700F7D4();

  if ((v43 & 1) == 0)
  {
LABEL_18:
    v44 = type metadata accessor for MenuAction(0);
    v45 = v84;
LABEL_20:

    return __swift_storeEnumTagSinglePayload(v45, 1, 1, v44);
  }

LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v48 = (v86 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v49 = v48[1];
  v50 = MEMORY[0x277D837D0];
  *(inited + 48) = *v48;
  *(inited + 56) = v49;
  *(inited + 72) = v50;
  *(inited + 80) = 1684957547;
  *(inited + 120) = v50;
  *(inited + 88) = 0xE400000000000000;
  strcpy((inited + 96), "socialProfile");
  *(inited + 110) = -4864;
  sub_21700DF14();
  v51 = sub_21700E384();
  v52 = v104;
  __swift_storeEnumTagSinglePayload(v104, 1, 1, v13);
  sub_21700D6F4();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v109 = v51;
  sub_2166EF9C4(&v109, v108);
  v53 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v53;
  sub_2166EF9D4();
  v54 = v107;
  v110 = v50;
  *&v109 = 0x7463656C6573;
  *(&v109 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v109, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v54;
  sub_2166EF9D4();
  v55 = v107;
  v110 = v50;
  *&v109 = 0xD000000000000010;
  *(&v109 + 1) = 0x80000002170801D0;
  sub_2166EF9C4(&v109, v108);
  swift_isUniquelyReferenced_nonNull_native();
  v107 = v55;
  sub_2166EF9D4();
  v56 = v107;
  sub_2167DE934(v52, v21);
  if (__swift_getEnumTagSinglePayload(v21, 1, v13) == 1)
  {
    sub_2166997CC(v21, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v57 = v85;
    (*(v85 + 32))(v15, v21, v13);
    v58 = sub_217005DE4();
    v110 = v50;
    *&v109 = v58;
    *(&v109 + 1) = v59;
    sub_2166EF9C4(&v109, v108);
    swift_isUniquelyReferenced_nonNull_native();
    v107 = v56;
    sub_2166EF9D4();
    v56 = v107;
    (*(v57 + 8))(v15, v13);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v60 = sub_21700CF84();
  v61 = __swift_project_value_buffer(v60, qword_280E73DB0);
  v62 = v93;
  MEMORY[0x21CE9DD70](0xD000000000000011, 0x8000000217082580, 0x6E6F74747562, 0xE600000000000000, v56, v61);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v63 = v94;
  v64 = (*(v94 + 80) + 32) & ~*(v94 + 80);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_217013DA0;
  v66 = v65 + v64;
  v67 = v95;
  (*(v63 + 16))(v66, v62, v95);
  v68 = v91;
  v69 = v105;
  v70 = v92;
  (*(v91 + 16))(v90, v105, v92);
  v71 = v87;
  sub_21700D244();
  (*(v63 + 8))(v62, v67);
  (*(v68 + 8))(v69, v70);
  sub_2166997CC(v104, &qword_27CABA820, &unk_217018CE0);
  v72 = v96;
  (*(v88 + 32))(v96, v71, v89);
  type metadata accessor for MenuActionType(0);
  v73 = v84;
  swift_storeEnumTagMultiPayload();
  v74 = v98;
  sub_2167DEF84(v72, v98, type metadata accessor for OpenSocialProfileEditAction);
  v75 = v102;
  v76 = v101;
  v77 = v103;
  (*(v102 + 16))(v101, v100, v103);
  v78 = (*(v97 + 80) + 24) & ~*(v97 + 80);
  v79 = (v9 + *(v75 + 80) + v78) & ~*(v75 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = v106;
  sub_2167DEF84(v74, v80 + v78, type metadata accessor for OpenSocialProfileEditAction);
  (*(v75 + 32))(v80 + v79, v76, v77);
  v81 = type metadata accessor for MenuAction(0);
  v82 = (v73 + *(v81 + 20));
  *v82 = sub_2167DEFE0;
  v82[1] = v80;
  __swift_storeEnumTagSinglePayload(v73, 0, 1, v81);
}

uint64_t sub_2167DA7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v296 = a3;
  v310 = a4;
  v282 = type metadata accessor for UnblockUserAction(0);
  v286 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v288 = &v247 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = v8;
  MEMORY[0x28223BE20](v9);
  v283 = (&v247 - v10);
  v277 = type metadata accessor for FollowUserAction(0);
  v263 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v285 = &v247 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = v11;
  MEMORY[0x28223BE20](v12);
  v279 = (&v247 - v13);
  v275 = type metadata accessor for CancelFollowUserRequestAction(0);
  v278 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v281 = &v247 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = v14;
  MEMORY[0x28223BE20](v15);
  v276 = (&v247 - v16);
  v301 = sub_2170075A4();
  v17 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v309 = v18;
  v19 = &v247 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for UnfollowUserAction(0);
  v272 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v274 = &v247 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v273 = v20;
  MEMORY[0x28223BE20](v21);
  v271 = &v247 - v22;
  v308 = sub_21700CFB4();
  v307 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v306 = &v247 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v298 = sub_217005EF4();
  v295 = *(v298 - 8);
  MEMORY[0x28223BE20](v298);
  v258 = &v247 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v257 = &v247 - v26;
  MEMORY[0x28223BE20](v27);
  v256 = &v247 - v28;
  MEMORY[0x28223BE20](v29);
  v255 = &v247 - v30;
  v305 = sub_21700D704();
  v304 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v269 = &v247 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v294 = &v247 - v33;
  MEMORY[0x28223BE20](v34);
  v293 = &v247 - v35;
  MEMORY[0x28223BE20](v36);
  v300 = &v247 - v37;
  MEMORY[0x28223BE20](v38);
  v268 = &v247 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v40 - 8);
  v262 = &v247 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v292 = &v247 - v43;
  MEMORY[0x28223BE20](v44);
  v261 = &v247 - v45;
  MEMORY[0x28223BE20](v46);
  v291 = &v247 - v47;
  MEMORY[0x28223BE20](v48);
  v260 = &v247 - v49;
  MEMORY[0x28223BE20](v50);
  v290 = &v247 - v51;
  MEMORY[0x28223BE20](v52);
  v259 = &v247 - v53;
  MEMORY[0x28223BE20](v54);
  v289 = &v247 - v55;
  v303 = sub_21700D284();
  v302 = *(v303 - 8);
  MEMORY[0x28223BE20](v303);
  v267 = &v247 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v266 = &v247 - v58;
  MEMORY[0x28223BE20](v59);
  v265 = &v247 - v60;
  MEMORY[0x28223BE20](v61);
  v264 = &v247 - v62;
  v63 = type metadata accessor for SocialProfileDescriptor(0);
  v64 = (a1 + v63[5]);
  v65 = *v64;
  v66 = v64[1];
  sub_21700DF14();
  v299 = v65;
  v67 = sub_216F0706C();
  v68 = v67;
  v297 = v5;
  v69 = *(v5 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if ((v69[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] & 1) == 0)
  {
    if (sub_216F07FB4(v67) == 0x64656B636F6C62 && v70 == 0xE700000000000000)
    {
    }

    else
    {
      v72 = sub_21700F7D4();

      if ((v72 & 1) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  if (*(a1 + v63[9]) != 1)
  {
LABEL_24:

    v105 = type metadata accessor for MenuAction(0);
    v106 = v310;

    return __swift_storeEnumTagSinglePayload(v106, 1, 1, v105);
  }

  v252 = a2;
  v253 = v19;
  v254 = v17;
  v73 = (a1 + v63[6]);
  v74 = v73[1];
  if (!v74)
  {
    goto LABEL_21;
  }

  v75 = *v73;
  v76 = HIBYTE(v74) & 0xF;
  v250 = v75;
  v77 = v75 & 0xFFFFFFFFFFFFLL;
  if ((v74 & 0x2000000000000000) == 0)
  {
    v76 = v77;
  }

  if (!v76)
  {
    goto LABEL_21;
  }

  v78 = v63;
  v79 = v66;
  v80 = a1;
  v81 = *&v69[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
  v82 = *(v81 + 16);
  v83 = v69;
  os_unfair_lock_lock(v82);
  v84 = *&v83[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
  v85 = *(v81 + 16);
  a1 = v80;
  v66 = v79;
  v63 = v78;
  v86 = v84;
  os_unfair_lock_unlock(v85);

  if (!v84)
  {
    goto LABEL_21;
  }

  v87 = sub_2167DEA8C(v86);
  if (!v88)
  {
    goto LABEL_21;
  }

  if (v250 == v87 && v74 == v88)
  {

    goto LABEL_51;
  }

  v90 = sub_21700F7D4();

  if (v90)
  {
LABEL_51:
    v246 = type metadata accessor for MenuAction(0);
    __swift_storeEnumTagSinglePayload(v310, 1, 1, v246);
  }

LABEL_21:
  v251 = v66;
  switch(v68)
  {
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      v91 = swift_allocObject();
      *(v91 + 16) = xmmword_217013D90;
      *(v91 + 32) = 0x4E6E6F6974636573;
      *(v91 + 40) = 0xEB00000000656D61;
      v92 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v93 = v92[1];
      v94 = MEMORY[0x277D837D0];
      *(v91 + 48) = *v92;
      *(v91 + 56) = v93;
      *(v91 + 72) = v94;
      *(v91 + 80) = 1684957547;
      *(v91 + 120) = v94;
      *(v91 + 88) = 0xE400000000000000;
      strcpy((v91 + 96), "socialProfile");
      *(v91 + 110) = -4864;
      sub_21700DF14();
      v95 = sub_21700E384();
      v96 = v289;
      v97 = v298;
      __swift_storeEnumTagSinglePayload(v289, 1, 1, v298);
      v98 = v268;
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      *&v313 = v95;
      sub_2166EF9C4(&v313, &v312);
      v99 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v99;
      sub_2166EF9D4();
      v100 = v311;
      v314 = v94;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v100;
      sub_2166EF9D4();
      v101 = v311;
      v102 = v259;
      sub_2167DE934(v96, v259);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v102, 1, v97);
      v104 = v254;
      if (EnumTagSinglePayload == 1)
      {
        sub_2166997CC(v102, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v199 = v295;
        v200 = v255;
        (*(v295 + 32))(v255, v102, v97);
        v201 = sub_217005DE4();
        v314 = v94;
        *&v313 = v201;
        *(&v313 + 1) = v202;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v101;
        sub_2166EF9D4();
        v101 = v311;
        (*(v199 + 8))(v200, v97);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v203 = sub_21700CF84();
      v204 = __swift_project_value_buffer(v203, qword_280E73DB0);
      v205 = v306;
      MEMORY[0x21CE9DD70](0x6E556C6169636F73, 0xEE00776F6C6C6F66, 0x6E6F74747562, 0xE600000000000000, v101, v204);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v206 = v307;
      v207 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v208 = swift_allocObject();
      *(v208 + 16) = xmmword_217013DA0;
      v209 = v208 + v207;
      v210 = v308;
      (*(v206 + 16))(v209, v205, v308);
      v211 = v304;
      v212 = v305;
      (*(v304 + 16))(v300, v98, v305);
      v213 = v264;
      sub_21700D244();
      (*(v206 + 8))(v205, v210);
      (*(v211 + 8))(v98, v212);
      sub_2166997CC(v289, &qword_27CABA820, &unk_217018CE0);
      v214 = v271;
      v215 = &v271[*(v270 + 20)];
      v216 = v251;
      *v215 = v299;
      *(v215 + 1) = v216;
      (*(v302 + 32))(v214, v213, v303);
      type metadata accessor for MenuActionType(0);
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v217 = v274;
      sub_2167DEF84(v214, v274, type metadata accessor for UnfollowUserAction);
      v218 = v253;
      v219 = v301;
      (*(v104 + 16))(v253, v252, v301);
      v220 = (*(v272 + 80) + 24) & ~*(v272 + 80);
      v221 = (v273 + *(v104 + 80) + v220) & ~*(v104 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v217, v173 + v220, type metadata accessor for UnfollowUserAction);
      (*(v104 + 32))(v173 + v221, v218, v219);
      v174 = type metadata accessor for MenuAction(0);
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEE9C;
      break;
    case 1:
      v135 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_217013D90;
      *(v136 + 32) = 0x4E6E6F6974636573;
      *(v136 + 40) = 0xEB00000000656D61;
      v137 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v138 = v137[1];
      v139 = MEMORY[0x277D837D0];
      *(v136 + 48) = *v137;
      *(v136 + 56) = v138;
      *(v136 + 72) = v139;
      *(v136 + 80) = 1684957547;
      *(v136 + 120) = v139;
      *(v136 + 88) = 0xE400000000000000;
      strcpy((v136 + 96), "socialProfile");
      *(v136 + 110) = -4864;
      sub_21700DF14();
      v140 = sub_21700E384();
      v141 = v291;
      v142 = v298;
      __swift_storeEnumTagSinglePayload(v291, 1, 1, v298);
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      *&v313 = v140;
      sub_2166EF9C4(&v313, &v312);
      v143 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v143;
      sub_2166EF9D4();
      v144 = v311;
      v314 = v139;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v144;
      sub_2166EF9D4();
      v145 = v311;
      v146 = v261;
      sub_2167DE934(v141, v261);
      v147 = __swift_getEnumTagSinglePayload(v146, 1, v142);
      v148 = v254;
      v249 = v63;
      v248 = v135;
      if (v147 == 1)
      {
        sub_2166997CC(v146, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v222 = v295;
        v223 = v257;
        (*(v295 + 32))(v257, v146, v142);
        v224 = sub_217005DE4();
        v314 = v139;
        *&v313 = v224;
        *(&v313 + 1) = v225;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v145;
        sub_2166EF9D4();
        v145 = v311;
        (*(v222 + 8))(v223, v142);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v226 = sub_21700CF84();
      v227 = __swift_project_value_buffer(v226, qword_280E73DB0);
      v228 = v306;
      MEMORY[0x21CE9DD70](0x6F466C6169636F73, 0xEC000000776F6C6CLL, 0x6E6F74747562, 0xE600000000000000, v145, v227);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v229 = v307;
      v230 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v231 = swift_allocObject();
      *(v231 + 16) = xmmword_217013DA0;
      v232 = v231 + v230;
      v233 = v308;
      (*(v229 + 16))(v232, v228, v308);
      v234 = v304;
      v235 = v294;
      v236 = v305;
      (*(v304 + 16))(v300, v294, v305);
      v237 = v266;
      sub_21700D244();
      (*(v229 + 8))(v228, v233);
      (*(v234 + 8))(v235, v236);
      sub_2166997CC(v291, &qword_27CABA820, &unk_217018CE0);
      v238 = *(v248 + v249[10]);
      v239 = v279;
      v240 = v251;
      *v279 = v299;
      *(v239 + 8) = v240;
      (*(v302 + 32))(v239 + *(v277 + 24), v237, v303);
      *(v239 + 16) = v238;
      type metadata accessor for MenuActionType(0);
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v241 = v285;
      sub_2167DEF84(v239, v285, type metadata accessor for FollowUserAction);
      v242 = v253;
      v243 = v301;
      (*(v148 + 16))(v253, v252, v301);
      v244 = (*(v263 + 80) + 24) & ~*(v263 + 80);
      v245 = (v284 + *(v148 + 80) + v244) & ~*(v148 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v241, v173 + v244, type metadata accessor for FollowUserAction);
      (*(v148 + 32))(v173 + v245, v242, v243);
      v174 = type metadata accessor for MenuAction(0);
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DECCC;
      break;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      v108 = swift_allocObject();
      *(v108 + 16) = xmmword_217013D90;
      *(v108 + 32) = 0x4E6E6F6974636573;
      *(v108 + 40) = 0xEB00000000656D61;
      v109 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v110 = v109[1];
      v111 = MEMORY[0x277D837D0];
      *(v108 + 48) = *v109;
      *(v108 + 56) = v110;
      *(v108 + 72) = v111;
      *(v108 + 80) = 1684957547;
      *(v108 + 120) = v111;
      *(v108 + 88) = 0xE400000000000000;
      strcpy((v108 + 96), "socialProfile");
      *(v108 + 110) = -4864;
      sub_21700DF14();
      v112 = sub_21700E384();
      v113 = v290;
      v114 = v298;
      __swift_storeEnumTagSinglePayload(v290, 1, 1, v298);
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      *&v313 = v112;
      sub_2166EF9C4(&v313, &v312);
      v115 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v115;
      sub_2166EF9D4();
      v116 = v311;
      v314 = v111;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v116;
      sub_2166EF9D4();
      v117 = v311;
      v118 = v260;
      sub_2167DE934(v113, v260);
      v119 = __swift_getEnumTagSinglePayload(v118, 1, v114);
      v120 = v254;
      if (v119 == 1)
      {
        sub_2166997CC(v118, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v149 = v295;
        v150 = v256;
        (*(v295 + 32))(v256, v118, v114);
        v151 = sub_217005DE4();
        v314 = v111;
        *&v313 = v151;
        *(&v313 + 1) = v152;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v117;
        sub_2166EF9D4();
        v117 = v311;
        (*(v149 + 8))(v150, v114);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v153 = sub_21700CF84();
      v154 = __swift_project_value_buffer(v153, qword_280E73DB0);
      v155 = v306;
      MEMORY[0x21CE9DD70](0xD000000000000012, 0x8000000217082560, 0x6E6F74747562, 0xE600000000000000, v117, v154);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v156 = v307;
      v157 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v158 = swift_allocObject();
      *(v158 + 16) = xmmword_217013DA0;
      v159 = v158 + v157;
      v160 = v308;
      (*(v156 + 16))(v159, v155, v308);
      v161 = v304;
      v162 = v293;
      v163 = v305;
      (*(v304 + 16))(v300, v293, v305);
      v164 = v265;
      sub_21700D244();
      (*(v156 + 8))(v155, v160);
      (*(v161 + 8))(v162, v163);
      sub_2166997CC(v290, &qword_27CABA820, &unk_217018CE0);
      v165 = v276;
      v166 = v251;
      *v276 = v299;
      *(v165 + 8) = v166;
      (*(v302 + 32))(v165 + *(v275 + 20), v164, v303);
      type metadata accessor for MenuActionType(0);
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v168 = v281;
      sub_2167DEF84(v165, v281, type metadata accessor for CancelFollowUserRequestAction);
      v169 = v253;
      v170 = v301;
      (*(v120 + 16))(v253, v252, v301);
      v171 = (*(v278 + 80) + 24) & ~*(v278 + 80);
      v172 = (v280 + *(v120 + 80) + v171) & ~*(v120 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v168, v173 + v171, type metadata accessor for CancelFollowUserRequestAction);
      (*(v120 + 32))(v173 + v172, v169, v170);
      v174 = type metadata accessor for MenuAction(0);
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEDB4;
      break;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_217013D90;
      *(inited + 32) = 0x4E6E6F6974636573;
      *(inited + 40) = 0xEB00000000656D61;
      v122 = (v296 + *(type metadata accessor for MenuConfiguration(0) + 36));
      v123 = v122[1];
      v124 = MEMORY[0x277D837D0];
      *(inited + 48) = *v122;
      *(inited + 56) = v123;
      *(inited + 72) = v124;
      *(inited + 80) = 1684957547;
      *(inited + 120) = v124;
      *(inited + 88) = 0xE400000000000000;
      strcpy((inited + 96), "socialProfile");
      *(inited + 110) = -4864;
      sub_21700DF14();
      v125 = sub_21700E384();
      v126 = v292;
      v127 = v298;
      __swift_storeEnumTagSinglePayload(v292, 1, 1, v298);
      v128 = v269;
      sub_21700D6F4();
      v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
      *&v313 = v125;
      sub_2166EF9C4(&v313, &v312);
      v129 = MEMORY[0x277D84F98];
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v129;
      sub_2166EF9D4();
      v130 = v311;
      v314 = v124;
      *&v313 = 0x7463656C6573;
      *(&v313 + 1) = 0xE600000000000000;
      sub_2166EF9C4(&v313, &v312);
      swift_isUniquelyReferenced_nonNull_native();
      v311 = v130;
      sub_2166EF9D4();
      v131 = v311;
      v132 = v262;
      sub_2167DE934(v126, v262);
      v133 = __swift_getEnumTagSinglePayload(v132, 1, v127);
      v134 = v254;
      if (v133 == 1)
      {
        sub_2166997CC(v132, &qword_27CABA820, &unk_217018CE0);
      }

      else
      {
        v177 = v295;
        v178 = v258;
        (*(v295 + 32))(v258, v132, v127);
        v179 = sub_217005DE4();
        v314 = v124;
        *&v313 = v179;
        *(&v313 + 1) = v180;
        sub_2166EF9C4(&v313, &v312);
        swift_isUniquelyReferenced_nonNull_native();
        v311 = v131;
        sub_2166EF9D4();
        v131 = v311;
        (*(v177 + 8))(v178, v127);
      }

      if (qword_280E46040 != -1)
      {
        swift_once();
      }

      v181 = sub_21700CF84();
      v182 = __swift_project_value_buffer(v181, qword_280E73DB0);
      v183 = v306;
      MEMORY[0x21CE9DD70](0x6E556C6169636F73, 0xED00006B636F6C62, 0x6E6F74747562, 0xE600000000000000, v131, v182);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
      v184 = v307;
      v185 = (*(v307 + 80) + 32) & ~*(v307 + 80);
      v186 = swift_allocObject();
      *(v186 + 16) = xmmword_217013DA0;
      v187 = v186 + v185;
      v188 = v308;
      (*(v184 + 16))(v187, v183, v308);
      v189 = v304;
      v190 = v305;
      (*(v304 + 16))(v300, v128, v305);
      v191 = v267;
      sub_21700D244();
      (*(v184 + 8))(v183, v188);
      (*(v189 + 8))(v128, v190);
      sub_2166997CC(v292, &qword_27CABA820, &unk_217018CE0);
      v192 = v283;
      v193 = v251;
      *v283 = v299;
      *(v192 + 8) = v193;
      (*(v302 + 32))(v192 + *(v282 + 20), v191, v303);
      type metadata accessor for MenuActionType(0);
      v167 = v310;
      swift_storeEnumTagMultiPayload();
      v194 = v288;
      sub_2167DEF84(v192, v288, type metadata accessor for UnblockUserAction);
      v195 = v253;
      v196 = v301;
      (*(v134 + 16))(v253, v252, v301);
      v197 = (*(v286 + 80) + 24) & ~*(v286 + 80);
      v198 = (v287 + *(v134 + 80) + v197) & ~*(v134 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = v297;
      sub_2167DEF84(v194, v173 + v197, type metadata accessor for UnblockUserAction);
      (*(v134 + 32))(v173 + v198, v195, v196);
      v174 = type metadata accessor for MenuAction(0);
      v175 = (v167 + *(v174 + 20));
      v176 = sub_2167DEBE4;
      break;
    default:
      goto LABEL_51;
  }

  *v175 = v176;
  v175[1] = v173;
  __swift_storeEnumTagSinglePayload(v167, 0, 1, v174);
}

uint64_t sub_2167DCBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v95 = a3;
  v108 = a2;
  v8 = sub_2170075A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v107 = v10;
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PromptBlockUserAction(0);
  v104 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v106 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = v11;
  MEMORY[0x28223BE20](v12);
  v103 = (&v89 - v13);
  v114 = sub_21700CFB4();
  v101 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_217005EF4();
  v93 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_21700D704();
  v99 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v98 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v112 = &v89 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v94 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v116 = &v89 - v22;
  v97 = sub_21700D284();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v111 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SocialProfileDescriptor(0);
  v25 = a1;
  v26 = (a1 + *(v24 + 24));
  v27 = *v26;
  v28 = v26[1];
  if (!sub_216E1A4B8(*v26, v28))
  {
    v115 = v9;
    v91 = v8;
    v37 = a4;
    v38 = v5;
    v39 = *(v5 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
    v40 = *&v39[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock];
    v41 = *(v40 + 16);
    v42 = v39;
    os_unfair_lock_lock(v41);
    v43 = *&v42[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile];
    v44 = *(v40 + 16);
    v45 = v43;
    os_unfair_lock_unlock(v44);

    if (v43)
    {
      v46 = sub_2167DEA8C(v45);
      a4 = v37;
      v5 = v38;
      if (v28)
      {
        v8 = v91;
        v9 = v115;
        if (v47)
        {
          if (v27 == v46 && v28 == v47)
          {
            goto LABEL_18;
          }

          v49 = sub_21700F7D4();

          if (v49)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
        v8 = v91;
        v9 = v115;
        if (!v47)
        {
          goto LABEL_19;
        }
      }
    }

    else
    {
      a4 = v37;
      v5 = v38;
      v8 = v91;
      v9 = v115;
      if (!v28)
      {
        goto LABEL_19;
      }
    }
  }

  v29 = (v25 + *(v24 + 20));
  v30 = *v29;
  v31 = v29[1];
  sub_21700DF14();
  v32 = sub_216F0706C();
  if (sub_216F07FB4(v32) == 1718379891 && v33 == 0xE400000000000000)
  {
    goto LABEL_17;
  }

  v35 = v5;
  v36 = sub_21700F7D4();

  if (v36)
  {
    goto LABEL_18;
  }

  if (sub_216F07FB4(v32) == 0x64656B636F6C62 && v52 == 0xE700000000000000)
  {
LABEL_17:

LABEL_18:

LABEL_19:
    v50 = type metadata accessor for MenuAction(0);

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v50);
  }

  v54 = sub_21700F7D4();

  if (v54)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013D90;
  *(inited + 32) = 0x4E6E6F6974636573;
  *(inited + 40) = 0xEB00000000656D61;
  v56 = (v95 + *(type metadata accessor for MenuConfiguration(0) + 36));
  v57 = v56[1];
  v58 = MEMORY[0x277D837D0];
  *(inited + 48) = *v56;
  *(inited + 56) = v57;
  *(inited + 72) = v58;
  *(inited + 80) = 1684957547;
  *(inited + 120) = v58;
  *(inited + 88) = 0xE400000000000000;
  strcpy((inited + 96), "socialProfile");
  *(inited + 110) = -4864;
  sub_21700DF14();
  v59 = sub_21700E384();
  v60 = v110;
  __swift_storeEnumTagSinglePayload(v116, 1, 1, v110);
  sub_21700D6F4();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  *&v119 = v59;
  sub_2166EF9C4(&v119, v118);
  v61 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v61;
  sub_2166EF9D4();
  v62 = v117;
  v120 = v58;
  *&v119 = 0x7463656C6573;
  *(&v119 + 1) = 0xE600000000000000;
  sub_2166EF9C4(&v119, v118);
  swift_isUniquelyReferenced_nonNull_native();
  v117 = v62;
  sub_2166EF9D4();
  v63 = v117;
  v64 = v94;
  sub_2167DE934(v116, v94);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, v60);
  v90 = v35;
  if (EnumTagSinglePayload == 1)
  {
    sub_2166997CC(v64, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    v66 = v93;
    v67 = v60;
    v68 = v92;
    (*(v93 + 32))(v92, v64, v67);
    v69 = sub_217005DE4();
    v120 = MEMORY[0x277D837D0];
    *&v119 = v69;
    *(&v119 + 1) = v70;
    sub_2166EF9C4(&v119, v118);
    swift_isUniquelyReferenced_nonNull_native();
    v117 = v63;
    sub_2166EF9D4();
    v63 = v117;
    (*(v66 + 8))(v68, v110);
  }

  v115 = v9;
  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v71 = sub_21700CF84();
  v72 = __swift_project_value_buffer(v71, qword_280E73DB0);
  v73 = v113;
  MEMORY[0x21CE9DD70](0x6C426C6169636F73, 0xEB000000006B636FLL, 0x6E6F74747562, 0xE600000000000000, v63, v72);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v74 = v101;
  v75 = (*(v101 + 80) + 32) & ~*(v101 + 80);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_217013DA0;
  (*(v74 + 16))(v76 + v75, v73, v114);
  v77 = v99;
  v78 = v112;
  v79 = v100;
  (*(v99 + 16))(v98, v112, v100);
  sub_21700D244();
  (*(v74 + 8))(v113, v114);
  (*(v77 + 8))(v78, v79);
  sub_2166997CC(v116, &qword_27CABA820, &unk_217018CE0);
  v80 = v103;
  *v103 = v30;
  *(v80 + 8) = v31;
  (*(v96 + 32))(v80 + *(v102 + 20), v111, v97);
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  v81 = v106;
  sub_2167DEF84(v80, v106, type metadata accessor for PromptBlockUserAction);
  v82 = v115;
  v83 = v109;
  (*(v115 + 16))(v109, v108, v8);
  v84 = (*(v104 + 80) + 24) & ~*(v104 + 80);
  v85 = (v105 + *(v82 + 80) + v84) & ~*(v82 + 80);
  v86 = swift_allocObject();
  *(v86 + 16) = v90;
  sub_2167DEF84(v81, v86 + v84, type metadata accessor for PromptBlockUserAction);
  (*(v82 + 32))(v86 + v85, v83, v8);
  v87 = type metadata accessor for MenuAction(0);
  v88 = (a4 + *(v87 + 20));
  *v88 = sub_2167DEAFC;
  v88[1] = v86;
  __swift_storeEnumTagSinglePayload(a4, 0, 1, v87);
}

uint64_t sub_2167DD8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v108 = a3;
  v8 = sub_2170075A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v121 = v10;
  v11 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for RemoveFollowerAction(0);
  v119 = *(v117 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v117);
  v120 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v118 = (&v100 - v14);
  v116 = sub_21700CFB4();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v125 = (&v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_217005EF4();
  v106 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = &v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_21700D704();
  v113 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v112 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v124 = &v100 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v20 - 8);
  v107 = &v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v123 = &v100 - v23;
  v111 = sub_21700D284();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v122 = &v100 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_userSocialProfileCoordinator);
  if (v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_isUserOnboarded] == 1)
  {
    v26 = type metadata accessor for SocialProfileDescriptor(0);
    if (*(a1 + *(v26 + 36)) == 1)
    {
      v27 = v26;
      v101 = a2;
      v102 = v11;
      v103 = v9;
      v104 = v8;
      v28 = (a1 + *(v26 + 24));
      v29 = v28[1];
      if (!v29)
      {
        goto LABEL_14;
      }

      v30 = *v28;
      v31 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v31 = v30 & 0xFFFFFFFFFFFFLL;
      }

      if (!v31 || (v100 = a4, v32 = *&v25[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator_lock], v33 = *(v32 + 16), v34 = v25, os_unfair_lock_lock(v33), v35 = *&v34[OBJC_IVAR____TtC7MusicUI28UserSocialProfileCoordinator__userSocialProfile], v36 = *(v32 + 16), v37 = v35, v38 = v36, a4 = v100, os_unfair_lock_unlock(v38), v34, !v35) || (v39 = sub_2167DEA8C(v37), !v40))
      {
LABEL_14:
        v43 = (a1 + *(v27 + 20));
        v45 = *v43;
        v44 = v43[1];
        v46 = v4;
        v47 = *(v4 + OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_socialGraphController);
        sub_21700DF14();
        v48 = sub_216F0706C();
        if (sub_216F07FB4(v48) == 1718379891 && v49 == 0xE400000000000000)
        {
        }

        else
        {
          v51 = sub_21700F7D4();

          if ((v51 & 1) == 0)
          {
            v52 = *(v47 + 32);
            v53 = *(v52 + 16);
            sub_21700DF14();

            os_unfair_lock_lock(v53);
            v54 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_followersProfileIDs;
            swift_beginAccess();
            v55 = *(v47 + v54);
            sub_21700DF14();
            v56 = sub_216CE11AC(v45, v44, v55);

            if (v56)
            {
              v57 = OBJC_IVAR____TtC7MusicUI21SocialGraphController_removedFollowersProfileIDs;
              swift_beginAccess();
              v58 = *(v47 + v57);
              sub_21700DF14();
              v59 = sub_216CE11AC(v45, v44, v58);

              os_unfair_lock_unlock(*(v52 + 16));

              if ((v59 & 1) == 0)
              {
                v100 = v44;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_217013D90;
                *(inited + 32) = 0x4E6E6F6974636573;
                *(inited + 40) = 0xEB00000000656D61;
                v61 = (v108 + *(type metadata accessor for MenuConfiguration(0) + 36));
                v62 = v61[1];
                v63 = MEMORY[0x277D837D0];
                *(inited + 48) = *v61;
                *(inited + 56) = v62;
                *(inited + 72) = v63;
                *(inited + 80) = 1684957547;
                *(inited + 120) = v63;
                *(inited + 88) = 0xE400000000000000;
                strcpy((inited + 96), "socialProfile");
                *(inited + 110) = -4864;
                sub_21700DF14();
                v64 = sub_21700E384();
                v65 = v123;
                v66 = v109;
                __swift_storeEnumTagSinglePayload(v123, 1, 1, v109);
                sub_21700D6F4();
                v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
                *&v128 = v64;
                sub_2166EF9C4(&v128, &v127);
                v67 = MEMORY[0x277D84F98];
                swift_isUniquelyReferenced_nonNull_native();
                v126 = v67;
                sub_2166EF9D4();
                v68 = v126;
                v129 = v63;
                *&v128 = 0x7463656C6573;
                *(&v128 + 1) = 0xE600000000000000;
                sub_2166EF9C4(&v128, &v127);
                swift_isUniquelyReferenced_nonNull_native();
                v126 = v68;
                sub_2166EF9D4();
                v69 = v126;
                v70 = v107;
                sub_2167DE934(v65, v107);
                if (__swift_getEnumTagSinglePayload(v70, 1, v66) == 1)
                {
                  sub_2166997CC(v70, &qword_27CABA820, &unk_217018CE0);
                }

                else
                {
                  v74 = v106;
                  v75 = v105;
                  (*(v106 + 32))(v105, v70, v66);
                  v76 = sub_217005DE4();
                  v129 = v63;
                  *&v128 = v76;
                  *(&v128 + 1) = v77;
                  sub_2166EF9C4(&v128, &v127);
                  swift_isUniquelyReferenced_nonNull_native();
                  v126 = v69;
                  sub_2166EF9D4();
                  v69 = v126;
                  (*(v74 + 8))(v75, v66);
                }

                v109 = v45;
                if (qword_280E46040 != -1)
                {
                  swift_once();
                }

                v78 = sub_21700CF84();
                v79 = __swift_project_value_buffer(v78, qword_280E73DB0);
                v80 = v125;
                MEMORY[0x21CE9DD70](0xD000000000000014, 0x8000000217082540, 0x6E6F74747562, 0xE600000000000000, v69, v79);

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
                v81 = v115;
                v82 = (*(v115 + 80) + 32) & ~*(v115 + 80);
                v83 = swift_allocObject();
                *(v83 + 16) = xmmword_217013DA0;
                v84 = v83 + v82;
                v85 = v116;
                (*(v81 + 16))(v84, v80, v116);
                v86 = v113;
                v87 = v124;
                v88 = v114;
                (*(v113 + 16))(v112, v124, v114);
                sub_21700D244();
                (*(v81 + 8))(v125, v85);
                (*(v86 + 8))(v87, v88);
                sub_2166997CC(v123, &qword_27CABA820, &unk_217018CE0);
                v89 = v118;
                v90 = v100;
                *v118 = v109;
                *(v89 + 8) = v90;
                (*(v110 + 32))(v89 + *(v117 + 20), v122, v111);
                type metadata accessor for MenuActionType(0);
                swift_storeEnumTagMultiPayload();
                v125 = type metadata accessor for RemoveFollowerAction;
                v91 = v120;
                sub_2167DEF84(v89, v120, type metadata accessor for RemoveFollowerAction);
                v92 = v103;
                v93 = v102;
                v94 = v104;
                (*(v103 + 16))(v102, v101, v104);
                v95 = (*(v119 + 80) + 24) & ~*(v119 + 80);
                v96 = (v12 + *(v92 + 80) + v95) & ~*(v92 + 80);
                v97 = swift_allocObject();
                *(v97 + 16) = v46;
                sub_2167DEF84(v91, v97 + v95, v125);
                (*(v92 + 32))(v97 + v96, v93, v94);
                v98 = type metadata accessor for MenuAction(0);
                v99 = (a4 + *(v98 + 20));
                *v99 = sub_2167DE9A4;
                v99[1] = v97;
                __swift_storeEnumTagSinglePayload(a4, 0, 1, v98);
              }
            }

            else
            {
              os_unfair_lock_unlock(*(v52 + 16));
            }
          }
        }

        v71 = type metadata accessor for MenuAction(0);
        return __swift_storeEnumTagSinglePayload(a4, 1, 1, v71);
      }

      if (v30 == v39 && v29 == v40)
      {
      }

      else
      {
        v42 = sub_21700F7D4();

        if ((v42 & 1) == 0)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v73 = type metadata accessor for MenuAction(0);

  return __swift_storeEnumTagSinglePayload(a4, 1, 1, v73);
}

uint64_t sub_2167DE658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v13[3] = a4(0);
  v13[4] = sub_2167DF0C8(a5, a6, a7);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_2167DF110(a2, boxed_opaque_existential_1, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  sub_21700D594();

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

uint64_t sub_2167DE72C()
{

  v1 = OBJC_IVAR____TtC7MusicUI31SocialProfileMenuActionProvider_actionDispatcher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_9_0();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_2167DE7B4()
{
  sub_2167DE72C();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for SocialProfileMenuActionProvider(uint64_t a1)
{
  result = qword_280E2FD08;
  if (!qword_280E2FD08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2167DE860(uint64_t a1)
{
  sub_216692BBC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2167DE934(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2167DE9A4()
{
  v0 = type metadata accessor for RemoveFollowerAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for RemoveFollowerAction, qword_280E3BA38, type metadata accessor for RemoveFollowerAction, &unk_217019DD8);
}

uint64_t sub_2167DEA8C(void *a1)
{
  v2 = [a1 handle];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_21700E514();

  return v3;
}

uint64_t sub_2167DEAFC()
{
  v0 = type metadata accessor for PromptBlockUserAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for PromptBlockUserAction, qword_280E39F40, type metadata accessor for PromptBlockUserAction, &unk_21706DC98);
}

uint64_t sub_2167DEBE4()
{
  v0 = type metadata accessor for UnblockUserAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for UnblockUserAction, qword_280E3F590, type metadata accessor for UnblockUserAction, &unk_217025C54);
}

uint64_t sub_2167DECCC()
{
  v0 = type metadata accessor for FollowUserAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for FollowUserAction, qword_280E412C0, type metadata accessor for FollowUserAction, &unk_217047504);
}

uint64_t sub_2167DEDB4()
{
  v0 = type metadata accessor for CancelFollowUserRequestAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for CancelFollowUserRequestAction, &qword_27CAB7F10, type metadata accessor for CancelFollowUserRequestAction, &unk_2170470B0);
}

uint64_t sub_2167DEE9C()
{
  v0 = type metadata accessor for UnfollowUserAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for UnfollowUserAction, qword_280E3E4B8, type metadata accessor for UnfollowUserAction, &unk_217020034);
}

uint64_t sub_2167DEF84(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2167DEFE0()
{
  v0 = type metadata accessor for OpenSocialProfileEditAction(0);
  OUTLINED_FUNCTION_2(v0);
  v1 = sub_2170075A4();
  OUTLINED_FUNCTION_36(v1);
  v2 = OUTLINED_FUNCTION_0_32();
  return OUTLINED_FUNCTION_9_18(v2, v3, type metadata accessor for OpenSocialProfileEditAction, &qword_27CAB7F18, type metadata accessor for OpenSocialProfileEditAction, &unk_21704EE0C);
}

uint64_t sub_2167DF0C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2167DF110(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2167DF17C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = sub_21700EA34();
  v2[4] = sub_21700EA24();
  v4 = *(type metadata accessor for AddRecentSearchMusicItemAction(0) + 20);
  v7 = (*MEMORY[0x277D2A698] + MEMORY[0x277D2A698]);
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_2167DF260;

  return v7(a2 + v4);
}

uint64_t sub_2167DF260()
{
  *(*v1 + 48) = v0;

  v3 = sub_21700E9B4();
  if (v0)
  {
    v4 = sub_2167DF46C;
  }

  else
  {
    v4 = sub_2167DF3BC;
  }

  return MEMORY[0x2822009F8](v4, v3, v2);
}

uint64_t sub_2167DF3BC()
{
  v1 = *(v0 + 16);

  v2 = *MEMORY[0x277D21CA8];
  v3 = sub_21700D2A4();
  (*(*(v3 - 8) + 104))(v1, v2, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2167DF46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2167DF4D0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2166DFAC0;

  return sub_2167DF17C(a1, a2);
}

unint64_t sub_2167DF580(uint64_t a1)
{
  result = sub_2167B3CE8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2167DF5AC()
{
  result = qword_280E47F78;
  if (!qword_280E47F78)
  {
    type metadata accessor for AddRecentSearchMusicItemAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E47F78);
  }

  return result;
}

uint64_t sub_2167DF650@<X0>(uint64_t a1@<X8>)
{
  v723 = a1;
  v692 = sub_217006F54();
  OUTLINED_FUNCTION_1();
  v662 = v1;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_6_0();
  v690 = v3;
  v684 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F20, &qword_217018E38);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_105();
  v686 = v5;
  v708 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F28, &qword_217018E40);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_105();
  v687 = v7;
  v8 = OUTLINED_FUNCTION_4_1();
  v659 = type metadata accessor for ReportAConcern(v8);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_6_0();
  v650 = v10;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F30, &qword_217018E48);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v661 = v12;
  v13 = OUTLINED_FUNCTION_4_1();
  v14 = type metadata accessor for ReportableMusicItem(v13);
  v15 = OUTLINED_FUNCTION_36(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_6_0();
  v691 = v16;
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F38, &qword_217018E50);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v707 = v18;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F40, &qword_217018E58);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_105();
  v682 = v20;
  v706 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F48, &qword_217018E60);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_105();
  v685 = v22;
  v713 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F50, &qword_217018E68);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_105();
  v709 = v24;
  v688 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F58, &unk_217018E70);
  OUTLINED_FUNCTION_1();
  v660 = v25;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_105();
  v681 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CAB6AF0, &unk_21701D840);
  OUTLINED_FUNCTION_36(v28);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_105();
  v680 = v30;
  v689 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F60, &unk_217018E80);
  OUTLINED_FUNCTION_1();
  v658 = v31;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_105();
  v678 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
  OUTLINED_FUNCTION_36(v34);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v676 = v36;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F68, &qword_217018E90);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_105();
  v674 = v38;
  v701 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F70, &qword_217018E98);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_105();
  v679 = v40;
  OUTLINED_FUNCTION_4_1();
  sub_21700C924();
  OUTLINED_FUNCTION_1();
  v703 = v42;
  v704 = v41;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_1_0();
  v672 = v43;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_47_1();
  v677 = v45;
  OUTLINED_FUNCTION_4_1();
  sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v699 = v47;
  v700 = v46;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v671 = v48;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_47_1();
  v673 = v50;
  v710 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F78, &qword_217018EA0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_105();
  v712 = v52;
  v696 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F80, &qword_217018EA8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_105();
  v697 = v54;
  v711 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F88, &qword_217018EB0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_105();
  v702 = v56;
  v717 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F90, &qword_217018EB8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_105();
  v714 = v58;
  OUTLINED_FUNCTION_4_1();
  v665 = sub_217007324();
  OUTLINED_FUNCTION_1();
  v657 = v59;
  v61 = *(v60 + 64);
  MEMORY[0x28223BE20](v62);
  v653 = &v649 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_47_1();
  v664 = v64;
  OUTLINED_FUNCTION_4_1();
  sub_2170073D4();
  OUTLINED_FUNCTION_1();
  v669 = v66;
  v670 = v65;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  v668 = v67;
  OUTLINED_FUNCTION_4_1();
  v698 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v693 = v68;
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v71);
  v666 = &v649 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v74 = &v649 - v73;
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_47_1();
  v663 = v76;
  v77 = OUTLINED_FUNCTION_4_1();
  v78 = type metadata accessor for GoToArtistContext(v77);
  v79 = OUTLINED_FUNCTION_2(v78);
  v652 = v80;
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v79);
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_47_1();
  v655 = v84;
  v85 = OUTLINED_FUNCTION_4_1();
  v695 = type metadata accessor for ContentDescriptor(v85);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v86);
  OUTLINED_FUNCTION_1_0();
  v656 = v87;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v88);
  v654 = &v649 - v89;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v90);
  OUTLINED_FUNCTION_47_1();
  v694 = v91;
  v92 = OUTLINED_FUNCTION_4_1();
  v719 = type metadata accessor for FlowActionPageView(v92);
  OUTLINED_FUNCTION_1();
  v651 = v93;
  v95 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v720 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7F98, &qword_217018EC0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_105();
  v722 = v98;
  v715 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FA0, &qword_217018EC8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v99);
  OUTLINED_FUNCTION_105();
  v716 = v100;
  v721 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FA8, &qword_217018ED0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v101);
  OUTLINED_FUNCTION_105();
  v718 = v102;
  v103 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for FlowAction.Destination(v103);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v104);
  v106 = &v649 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for FlowAction(0);
  sub_2167E70B8(v724 + *(v107 + 20), v106);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      OUTLINED_FUNCTION_48_6();
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v108, v109, v110, v111);

      sub_216EB0ED4(v728 + 8);
      OUTLINED_FUNCTION_68_1();
      v112 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v112);
      *&v728[4] = sub_2167E7308;
      OUTLINED_FUNCTION_54_8(v113);
      v729 = 0;
      v734[80] = 0;
      v114 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v114, v115);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8040, &qword_217018F50);
      sub_2166B5298();
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v116, v117, v118);
      v119 = OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6(v119, v120);
      OUTLINED_FUNCTION_35_8();
      v735 = 0;
      v734[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038, &qword_217018F48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048, &qword_217018F58);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v736 = 0;
      v732 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v74, v722, &qword_27CAB7FA8, &qword_217018ED0);
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      sub_2166CE064(v728);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v121, v122, v123);
      goto LABEL_36;
    case 1u:
      OUTLINED_FUNCTION_48_6();
      v387 = OUTLINED_FUNCTION_79_6();
      sub_216683A80(v387, v388, v389, &unk_217013E10);
      v390 = OUTLINED_FUNCTION_7_4();
      sub_2167E70B8(v390, v391);
      v392 = (*(v651 + 80) + 56) & ~*(v651 + 80);
      v393 = swift_allocObject();
      v394 = *&v734[16];
      *(v393 + 16) = *v734;
      *(v393 + 32) = v394;
      *(v393 + 48) = *&v734[32];
      sub_2167E7110(&v649 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0), v393 + v392);
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v395, v396, &unk_217050A88);

      OUTLINED_FUNCTION_73_4();
      v397 = sub_217008684();
      v729 = 1;
      OUTLINED_FUNCTION_82_4(v397, v398);
      *&v734[34] = v728[0];
      *&v734[16] = sub_2167E6C8C;
      *&v734[24] = v393;
      *&v734[32] = 257;
      *&v734[50] = v728[1];
      *&v734[64] = *(&v728[1] + 14);
      v734[80] = v399;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8040, &qword_217018F50);
      sub_2166B5298();
      OUTLINED_FUNCTION_73_4();
      sub_2167E68E4(v400, v401, v402);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v735 = 0;
      v734[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038, &qword_217018F48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048, &qword_217018F58);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_73_4();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v736 = 0;
      v732 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_73_4();
      sub_217009554();
      memcpy(v716, v734, 0x53uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      v403 = v718;
      sub_217009554();
      v404 = v722;
      sub_216683A80(v403, v722, &qword_27CAB7FA8, &qword_217018ED0);
      OUTLINED_FUNCTION_57_6(v404);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      sub_217009554();

      v405 = OUTLINED_FUNCTION_7_4();
      sub_2166997CC(v405, v406, &qword_217018ED0);
      v407 = v725;
      v408 = &qword_27CAB6AB8;
      v409 = &unk_217013E10;
      return sub_2166997CC(v407, v408, v409);
    case 2u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80F0, &unk_217019010);
      v236 = v694;
      sub_2167E7110(v106, v694);
      OUTLINED_FUNCTION_42();
      sub_2167E389C(v237, v238, v239);

      memcpy(v728, v734, sizeof(v728));
      memcpy(v734, v728, 0x50uLL);
      v735 = 0;
      v734[80] = 0;
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v240, v241, v242, v243);
      v244 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v244, v245);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8058, &qword_217018F68);
      sub_2167E626C();
      sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058, &qword_217018F68);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v736 = 1;
      v734[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038, &qword_217018F48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048, &qword_217018F58);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v725[0]) = 0;
      v732 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v246, v247, v248);
      v249 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v249, v250, v251);
      v252 = type metadata accessor for ContentDescriptor;
      goto LABEL_14;
    case 3u:
      sub_2167E7220(v106, type metadata accessor for FlowAction.Destination);
      LOBYTE(v733[0]) = 0;
      v731 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050, &qword_217018F60);
      sub_2167E626C();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      memcpy(v697, v734, 0x51uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088, &qword_217018F98);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v383, v384, v385, v386);
      goto LABEL_51;
    case 5u:
      v236 = v655;
      sub_2167E7110(v106, v655);
      OUTLINED_FUNCTION_12_13();
      sub_2167E70B8(v236, &v649 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
      v253 = (*(v652 + 80) + 16) & ~*(v652 + 80);
      v254 = swift_allocObject();
      sub_2167E7110(&v649 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0), v254 + v253);
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v255, v256, &unk_217050A88);

      v257 = sub_217008684();
      v735 = 1;
      OUTLINED_FUNCTION_82_4(v257, v258);
      *&v734[34] = v728[0];
      *&v734[16] = sub_2167E6C60;
      *&v734[24] = v254;
      *&v734[32] = 257;
      *&v734[50] = v728[1];
      *&v734[64] = *(&v728[1] + 14);
      v734[80] = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050, &qword_217018F60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8058, &qword_217018F68);
      sub_2167E626C();
      sub_2167E68E4(&qword_280E3AB40, &qword_27CAB8058, &qword_217018F68);
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v736 = 1;
      v734[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8038, &qword_217018F48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8048, &qword_217018F58);
      sub_2167E6124();
      sub_2167E61C8();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v725[0]) = 0;
      v732 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v259 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v259, v260, v261);
      v252 = type metadata accessor for GoToArtistContext;
LABEL_14:
      v262 = v252;
      v263 = v236;
      goto LABEL_59;
    case 6u:
      v314 = v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80E8, &unk_21701D6A0) + 48)];
      v315 = v693;
      v316 = *(v693 + 32);
      v317 = v663;
      v318 = OUTLINED_FUNCTION_46_1();
      v319 = v698;
      v316(v318);
      OUTLINED_FUNCTION_12_13();
      v320 = v317;
      v321 = v319;
      (*(v315 + 16))(v74, v320, v319);
      v322 = (*(v315 + 80) + 16) & ~*(v315 + 80);
      v323 = v322 + v70;
      v324 = swift_allocObject();
      v325 = v324 + v322;
      v326 = v324;
      (v316)(v325, v74, v321);
      *(v326 + v323) = v314;
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v327, v328, &unk_217050A88);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v329 = sub_217008684();
      v735 = 0;
      OUTLINED_FUNCTION_82_4(v329, v330);
      *&v734[34] = v728[0];
      *&v734[16] = sub_2167E6BD0;
      *&v734[24] = v326;
      OUTLINED_FUNCTION_62_1(*v728, v728[1]);
      v734[80] = 0;

      OUTLINED_FUNCTION_74_4();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v331, v332, v333);
      sub_2166B5298();
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v736 = 0;
      v734[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068, &qword_217018F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078, &qword_217018F88);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v725[0]) = 1;
      v732 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v334 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v334, v335, v336);
      return (*(v315 + 8))(v663, v698);
    case 7u:
      v410 = OUTLINED_FUNCTION_46_1();
      v411(v410);
      sub_21700BF44();
      if (!v412)
      {
        sub_21700BFF4();
      }

      v413 = v412;
      v414 = v722;
      v734[0] = 1;
      v415 = *(v695 + 24);
      v416 = sub_217005EF4();
      v417 = v694;
      OUTLINED_FUNCTION_88(v694 + v415, v418, v419, v416);
      OUTLINED_FUNCTION_47_6(19);
      *(v417 + 112) = 1;
      v420 = type metadata accessor for SongDetailPageIntent(0);
      v726 = v420;
      v727 = sub_2166B4AF8(&qword_27CAB80E0, type metadata accessor for SongDetailPageIntent, &unk_21702A5D8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v725);
      OUTLINED_FUNCTION_38_5(boxed_opaque_existential_1);
      v422 = *(v420 + 20);
      v423 = type metadata accessor for ReferrerInfo(0);
      OUTLINED_FUNCTION_88(v413 + v422, v424, v425, v423);
      v426 = OUTLINED_FUNCTION_79_6();
      sub_216683A80(v426, v427, v428, &unk_217013E10);

      sub_216EB0ED4(v728 + 8);
      OUTLINED_FUNCTION_68_1();
      v429 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v429);
      *&v728[4] = sub_2167E7308;
      OUTLINED_FUNCTION_54_8(v430);
      v729 = 1;
      v734[80] = 1;
      v431 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v431, v432);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8070, &qword_217018F80);
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v433, v434, v435);
      sub_2166B5298();
      OUTLINED_FUNCTION_50_6();
      sub_217009554();
      OUTLINED_FUNCTION_35_8();
      v735 = 0;
      v734[81] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068, &qword_217018F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078, &qword_217018F88);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v736 = 1;
      v732 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      v436 = v718;
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v436, v414, &qword_27CAB7FA8, &qword_217018ED0);
      OUTLINED_FUNCTION_57_6(v414);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_30_4(v414);
      sub_2166CE064(v728);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v437, v438, v439);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v417, v440);
      (*(v693 + 8))(v666, v698);
      v407 = v725;
      v408 = &qword_27CAB6AB8;
      goto LABEL_37;
    case 8u:
      v441 = OUTLINED_FUNCTION_46_1();
      v442(v441);
      sub_2170073C4();
      if (!v443)
      {
        sub_217007374();
      }

      v444 = v443;
      v445 = v722;
      v734[0] = 1;
      v446 = *(v695 + 24);
      v447 = sub_217005EF4();
      v448 = v694;
      OUTLINED_FUNCTION_88(v694 + v446, v449, v450, v447);
      OUTLINED_FUNCTION_47_6(20);
      *(v448 + 112) = 1;
      v451 = type metadata accessor for TVEpisodeDetailPageIntent(0);
      v726 = v451;
      v727 = sub_2166B4AF8(&qword_27CAB80D8, type metadata accessor for TVEpisodeDetailPageIntent, &unk_21707048C);
      v452 = __swift_allocate_boxed_opaque_existential_1(v725);
      OUTLINED_FUNCTION_38_5(v452);
      v453 = *(v451 + 20);
      v454 = type metadata accessor for ReferrerInfo(0);
      OUTLINED_FUNCTION_88(v444 + v453, v455, v456, v454);
      OUTLINED_FUNCTION_79_6();
      OUTLINED_FUNCTION_60_0();
      sub_216683A80(v457, v458, v459, v460);

      sub_216EB0ED4(v728 + 8);
      OUTLINED_FUNCTION_68_1();
      v461 = swift_allocObject();
      OUTLINED_FUNCTION_19_14(v461);
      *&v728[4] = sub_2167E6BC8;
      OUTLINED_FUNCTION_54_8(v462);
      v729 = 0;
      v734[80] = 0;
      v463 = OUTLINED_FUNCTION_85_2();
      sub_2166CBFB4(v463, v464);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8080, &qword_217018F90);
      sub_2166B5298();
      OUTLINED_FUNCTION_36_4();
      sub_2167E68E4(v465, v466, v467);
      v468 = OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6(v468, v469);
      OUTLINED_FUNCTION_35_8();
      v735 = 1;
      v734[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068, &qword_217018F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078, &qword_217018F88);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      v736 = 1;
      v732 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_27_8();
      sub_217009554();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      v470 = v718;
      OUTLINED_FUNCTION_58_3();
      sub_216683A80(v470, v445, &qword_27CAB7FA8, &qword_217018ED0);
      OUTLINED_FUNCTION_57_6(v445);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4(v445);
      sub_2166CE064(v728);
      OUTLINED_FUNCTION_36_4();
      sub_2166997CC(v471, v472, v473);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v448, v474);
      (*(v669 + 8))(v668, v670);
LABEL_36:
      v407 = v725;
      v408 = &qword_27CAB6AB8;
LABEL_37:
      v409 = &unk_217013E10;
      return sub_2166997CC(v407, v408, v409);
    case 9u:
      v543 = v657;
      v544 = *(v657 + 32);
      v545 = v664;
      v546 = v665;
      v544(v664, v106, v665);
      OUTLINED_FUNCTION_12_13();
      v547 = v653;
      (*(v543 + 16))(v653, v545, v546);
      v548 = (*(v543 + 80) + 16) & ~*(v543 + 80);
      v549 = swift_allocObject();
      v544(v549 + v548, v547, v546);
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v550, v551, &unk_217050A88);

      OUTLINED_FUNCTION_82_2();
      v552 = sub_217008684();
      v735 = 1;
      OUTLINED_FUNCTION_82_4(v552, v553);
      *&v734[34] = v728[0];
      *&v734[16] = sub_2167E6B9C;
      *&v734[24] = v549;
      OUTLINED_FUNCTION_62_1(*v728, v728[1]);
      v734[80] = 1;

      OUTLINED_FUNCTION_74_4();
      sub_2166B5298();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v554, v555, v556);
      v557 = OUTLINED_FUNCTION_50_6();
      OUTLINED_FUNCTION_53_6(v557, v558);
      OUTLINED_FUNCTION_35_8();
      v736 = 1;
      v734[81] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8068, &qword_217018F78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8078, &qword_217018F88);
      sub_2167E637C();
      sub_2167E6420();
      OUTLINED_FUNCTION_17_14();
      OUTLINED_FUNCTION_82_2();
      sub_217009554();
      OUTLINED_FUNCTION_37_5();
      LOBYTE(v725[0]) = 1;
      v732 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8030, &qword_217018F40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8060, &qword_217018F70);
      sub_2167E6098();
      sub_2167E62F0();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_24_10();
      OUTLINED_FUNCTION_40_6();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v559 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v559, v560, v561);
      return (*(v543 + 8))(v664, v665);
    case 0xCu:
      v529 = v662;
      v530 = OUTLINED_FUNCTION_46_1();
      v531(v530);
      OUTLINED_FUNCTION_12_13();
      sub_2167E4A98(*(v533 + v532), v734);
      if (v734[33])
      {
        v534 = 256;
      }

      else
      {
        v534 = 0;
      }

      *(v730 + 8) = *&v734[8];
      *&v730[0] = *v734;
      *(&v730[1] + 1) = *&v734[24];
      LOWORD(v730[2]) = v534 | v734[32];
      BYTE2(v730[2]) = 1;
      v724 = *&v734[8];

      OUTLINED_FUNCTION_74_4();
      v535 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v535, v536);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v537, v538, v539);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB18);
      v540 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4(v540);
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v541);
      BYTE3(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8, &qword_217018F10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000, &qword_217018F18);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v542);
      BYTE4(v730[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8, &qword_217018F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0, &qword_217018F08);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

      return (*(v529 + 8))(v690, v692);
    case 0xDu:
      v193 = &v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80D0, &qword_21701D6B0) + 48)];
      v195 = *v193;
      v194 = v193[1];
      v196 = OUTLINED_FUNCTION_46_1();
      v197(v196);
      v198 = sub_21700C0B4();
      if (!v199)
      {
        v198 = sub_21700C164();
      }

      v200 = v198;
      v201 = v199;
      v202 = OUTLINED_FUNCTION_86_4();
      v203 = v654;
      OUTLINED_FUNCTION_88(&v106[v654], v204, v205, v202);
      OUTLINED_FUNCTION_52_4(4);
      *(v203 + 88) = v200;
      *(v203 + 96) = v201;
      *(v203 + 104) = 0;
      if (v194)
      {
        v206 = v195;
      }

      else
      {
        v206 = 0;
      }

      *(v203 + 112) = 1;
      sub_2167E389C(v206, v194, __src);

      memcpy(v733, __src, 0x50uLL);
      LOBYTE(v728[0]) = 1;
      memcpy(v730, __src, sizeof(v730));
      v731 = 1;
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v207, v208, v209, v210);
      v211 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v211, v212);
      sub_2167E626C();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      memcpy(v697, v734, 0x51uLL);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088, &qword_217018F98);
      sub_2167E65DC();
      sub_2167E6668();
      OUTLINED_FUNCTION_64_5();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v213, v214, v215, v216);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_72_4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v217, v218, v219);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v220, v221, v222, v223);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v224, v225, v226);
      v227 = v722;
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v228, v229, v230, v231);
      OUTLINED_FUNCTION_57_6(v227);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4(v227);
      sub_2166997CC(v733, &qword_27CAB8050, &qword_217018F60);
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v232, v233, v234);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v203, v235);
      v191 = *(v699 + 8);
      v192 = v673;
      goto LABEL_17;
    case 0xEu:
      v337 = &v106[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C8, &unk_217019000) + 48)];
      v339 = *v337;
      v338 = v337[1];
      v340 = OUTLINED_FUNCTION_46_1();
      v341(v340);
      v342 = sub_21700C764();
      if (!v343)
      {
        v342 = sub_21700C7C4();
      }

      v344 = v342;
      v345 = v343;
      v346 = OUTLINED_FUNCTION_86_4();
      v347 = v656;
      OUTLINED_FUNCTION_88(&v106[v656], v348, v349, v346);
      OUTLINED_FUNCTION_52_4(14);
      *(v347 + 88) = v344;
      *(v347 + 96) = v345;
      *(v347 + 104) = 0;
      if (v338)
      {
        v350 = v339;
      }

      else
      {
        v350 = 0;
      }

      *(v347 + 112) = 1;
      sub_2167E389C(v350, v338, v734);

      memcpy(v730, v734, sizeof(v730));
      memcpy(v674, v734, 0x50uLL);
      swift_storeEnumTagMultiPayload();
      sub_216683A80(v730, v733, &qword_27CAB8050, &qword_217018F60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050, &qword_217018F60);
      sub_2167E626C();
      v351 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090, &qword_217018FA0);
      v352 = sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090, &qword_217018FA0);
      v733[0] = v351;
      v733[1] = v352;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_64_5();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v353, v354, v355, v356);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088, &qword_217018F98);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v357, v358, v359);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v360, v361, v362, v363);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_72_4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v364, v365, v366);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v367, v368, v369, v370);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v371, v372, v373);
      v374 = v722;
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v375, v376, v377, v378);
      OUTLINED_FUNCTION_57_6(v374);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_30_4(v374);
      sub_2166997CC(v730, &qword_27CAB8050, &qword_217018F60);
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v379, v380, v381);
      OUTLINED_FUNCTION_4_18();
      sub_2167E7220(v347, v382);
      v191 = *(v703 + 8);
      v192 = v677;
      goto LABEL_26;
    case 0x10u:
      v275 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80C0, &unk_217036050) + 48);
      v276 = OUTLINED_FUNCTION_46_1();
      v277(v276);
      sub_2167C5834(&v106[v275], v676, &qword_27CAB6AE8, qword_217014050);
      OUTLINED_FUNCTION_12_13();
      v278 = v678;
      v279 = OUTLINED_FUNCTION_64_5();
      sub_2167E3F24(v279, v280, v281, v282);
      v283 = v658;
      v284 = v689;
      (*(v658 + 16))(v674, v278, v689);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8050, &qword_217018F60);
      sub_2167E626C();
      v285 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB8090, &qword_217018FA0);
      v286 = sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090, &qword_217018FA0);
      *v734 = v285;
      *&v734[8] = v286;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v287, v288, v289, v290);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8088, &qword_217018F98);
      sub_2167E65DC();
      sub_2167E6668();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v291, v292, v293);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v294, v295, v296, v297);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v298, v299, v300);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v301, v302, v303, v304);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v305, v306, v307);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      v308 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v308, v309, v310);
      (*(v283 + 8))(v678, v284);
      sub_2166997CC(v676, &qword_27CAB6AE8, qword_217014050);
      v191 = *(v699 + 8);
      v192 = v671;
LABEL_17:
      v311 = v700;
      return v191(v192, v311);
    case 0x11u:
      v149 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B8, &unk_217018FF0) + 48);
      v150 = OUTLINED_FUNCTION_46_1();
      v151(v150);
      sub_2167C5834(&v106[v149], v680, qword_27CAB6AF0, &unk_21701D840);
      OUTLINED_FUNCTION_12_13();
      v152 = v681;
      v153 = OUTLINED_FUNCTION_64_5();
      sub_2167E4474(v153, v154, v155, v156);
      v157 = v660;
      v158 = v688;
      (*(v660 + 16))(v682, v152, v688);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_74_4();
      v159 = OUTLINED_FUNCTION_54_3();
      v161 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v159, v160);
      v162 = OUTLINED_FUNCTION_77_3(&qword_280E3AB58);
      *v734 = v161;
      *&v734[8] = v162;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v163, v164, v165);
      v166 = OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_53_6(v166, v158);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v167, v168, v169, v170);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      OUTLINED_FUNCTION_67_4();
      v171 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v171, v172, v173);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v174, v175, v176, v177);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v178, v179, v180);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v181, v182, v183, v184);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v185, v186, v187);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      v188 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v188, v189, v190);
      (*(v157 + 8))(v681, v158);
      sub_2166997CC(v680, qword_27CAB6AF0, &unk_21701D840);
      v191 = *(v703 + 8);
      v192 = v672;
LABEL_26:
      v311 = v704;
      return v191(v192, v311);
    case 0x14u:
      v475 = v691;
      sub_2167E7110(v106, v691);
      sub_216B29C5C();
      if (v477 == -1)
      {
        v490 = 1;
        v489 = v661;
        v487 = v659;
      }

      else
      {
        v478 = v476;
        sub_216B29D34();
        sub_216B2A098();
        v479 = OUTLINED_FUNCTION_110();
        type metadata accessor for ReportAConcernPresenter(v479);
        swift_allocObject();
        OUTLINED_FUNCTION_54_3();
        OUTLINED_FUNCTION_60_0();
        v485 = sub_2169C3904(v480, v481, v482, v483, v478, v484, v475);
        v486 = v650;
        *v650 = sub_2167D8C58;
        *(v486 + 8) = v485;
        *(v486 + 16) = 0;
        v487 = v659;
        v488 = *(v659 + 20);
        *(v486 + v488) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB80B0, &unk_217033950);
        swift_storeEnumTagMultiPayload();
        v489 = v661;
        sub_2167E7110(v486, v661);
        v490 = 0;
      }

      __swift_storeEnumTagSinglePayload(v489, v490, 1, v487);
      sub_216683A80(v489, v686, &qword_27CAB7F30, &qword_217018E48);
      swift_storeEnumTagMultiPayload();
      sub_2167E69C4();
      sub_2167E6A78();
      sub_217009554();
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v621, v622, v623, v624);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v625, v626, v627);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v628, v629, v630, v631);
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v632, v633, v634);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v635, v636, v637, v638);
      OUTLINED_FUNCTION_46_1();
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      sub_217009554();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v639, v640, v641);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v642, v643, v644, v645);
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v646, v647, v648);
      sub_2166997CC(v489, &qword_27CAB7F30, &qword_217018E48);
      v262 = type metadata accessor for ReportableMusicItem;
      v263 = v691;
      goto LABEL_59;
    case 0x16u:
      v491 = *(v106 + 4);
      v492 = *(v106 + 5);
      OUTLINED_FUNCTION_12_13();
      v493 = swift_allocObject();
      v494 = *(v106 + 1);
      *(v493 + 16) = *v106;
      *(v493 + 32) = v494;
      *(v493 + 48) = v491;
      *(v493 + 56) = v492;
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v495, v496, &unk_217050A88);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v497 = sub_217008684();
      v498 = v682;
      *v682 = v497;
      v498[1] = v499;
      v498[2] = sub_2167E6B8C;
      v498[3] = v493;
      *(v498 + 16) = 257;
      swift_storeEnumTagMultiPayload();

      OUTLINED_FUNCTION_74_4();
      v500 = OUTLINED_FUNCTION_54_3();
      v502 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v500, v501);
      v503 = OUTLINED_FUNCTION_77_3(&qword_280E3AB58);
      *v734 = v502;
      *&v734[8] = v503;
      OUTLINED_FUNCTION_3_30();
      swift_getOpaqueTypeConformance2();
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v504, v505, v506);
      v507 = OUTLINED_FUNCTION_83_4();
      OUTLINED_FUNCTION_53_6(v507, v688);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v508, v509, v510, v511);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      OUTLINED_FUNCTION_67_4();
      v512 = OUTLINED_FUNCTION_15_8();
      sub_2166997CC(v512, v513, v514);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v515, v516, v517, v518);
      OUTLINED_FUNCTION_69_4();
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v519, v520, v521);
      OUTLINED_FUNCTION_23_5();
      sub_216683A80(v522, v523, v524, v525);
      OUTLINED_FUNCTION_63_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_16_15();
      OUTLINED_FUNCTION_41_6();
      OUTLINED_FUNCTION_82_2();
      sub_2166997CC(v526, v527, v528);
      OUTLINED_FUNCTION_14_10();
      OUTLINED_FUNCTION_34_10();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_9_19();

      v407 = OUTLINED_FUNCTION_15_8();
      return sub_2166997CC(v407, v408, v409);
    case 0x17u:
      *v686 = *v106;
      swift_storeEnumTagMultiPayload();
      sub_2167E69C4();
      sub_2167E6A78();
      sub_217009554();
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v588, v589, v590, v591);
      swift_storeEnumTagMultiPayload();
      sub_2167E67E4();
      sub_2167E6938();
      sub_217009554();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v592, v593, v594);
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v595, v596, v597, v598);
LABEL_51:
      swift_storeEnumTagMultiPayload();
      sub_2167E6550();
      sub_2167E6758();
      sub_217009554();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v599, v600, v601);
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v602, v603, v604, v605);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8028, &qword_217018F38);
      sub_2167E600C();
      sub_2167E64C4();
      OUTLINED_FUNCTION_33_9();
      OUTLINED_FUNCTION_42();
      sub_2166997CC(v606, v607, v608);
      v609 = v722;
      OUTLINED_FUNCTION_49_2();
      sub_216683A80(v610, v611, v612, v613);
      OUTLINED_FUNCTION_57_6(v609);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_42();
      return sub_2166997CC(v407, v408, v409);
    case 0x19u:
      OUTLINED_FUNCTION_12_13();
      v573 = swift_allocObject();
      memcpy((v573 + 16), v106, 0x88uLL);
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v574, v575, &unk_217050A88);
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_82_2();
      v576 = sub_217008684();
      v578 = OUTLINED_FUNCTION_80_3(v576, v577);
      *&v730[1] = sub_2167E6B60;
      *(&v730[1] + 1) = v573;
      OUTLINED_FUNCTION_55_6(v578, v579);

      OUTLINED_FUNCTION_74_4();
      v580 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v580, v581);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v582, v583, v584);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB18);
      v585 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4(v585);
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v586);
      BYTE3(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8, &qword_217018F10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000, &qword_217018F18);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v587);
      BYTE4(v730[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8, &qword_217018F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0, &qword_217018F08);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

      goto LABEL_56;
    case 0x1Au:
      v124 = *v106;
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v125, v126, &unk_217050A88);
      OUTLINED_FUNCTION_90_1();

      OUTLINED_FUNCTION_82_2();
      v127 = sub_217008684();
      v129 = OUTLINED_FUNCTION_80_3(v127, v128);
      *&v730[1] = sub_2167E6B58;
      *(&v730[1] + 1) = v124;
      OUTLINED_FUNCTION_55_6(v129, v130);

      OUTLINED_FUNCTION_74_4();
      v131 = OUTLINED_FUNCTION_54_3();
      __swift_instantiateConcreteTypeFromMangledNameV2(v131, v132);
      OUTLINED_FUNCTION_82_2();
      sub_2167E68E4(v133, v134, v135);
      OUTLINED_FUNCTION_77_3(&qword_280E3AB48);
      v136 = OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_76_4(v136);
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v137);
      BYTE3(v730[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0, &qword_217018EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8, &qword_217018EE8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v138);
      BYTE4(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8, &qword_217018F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0, &qword_217018F08);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_7_14();
      OUTLINED_FUNCTION_18_9();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_22_17();

    case 0x1Cu:
      OUTLINED_FUNCTION_12_13();
      *&v730[0] = *(v313 + v312);
      BYTE8(v730[0]) = 0;
      goto LABEL_54;
    case 0x1Du:
      OUTLINED_FUNCTION_12_13();
      *&v730[0] = *(v615 + v614);
      BYTE8(v730[0]) = 1;
LABEL_54:
      sub_2167E5D90();
      sub_2167E5DE4();
      swift_retain_n();
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      *&v730[0] = *v734;
      *(&v730[0] + 1) = v734[8];
      memset(&v730[1], 0, 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF8, &qword_217018F10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8000, &qword_217018F18);
      sub_2167E5D04();
      sub_2167E5E38();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v616);
      BYTE4(v730[2]) = 0;
      goto LABEL_55;
    case 0x1Fu:
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v140, v141, &unk_217050A88);

      OUTLINED_FUNCTION_51();
      v142 = sub_217008684();
      OUTLINED_FUNCTION_80_3(v142, v143);
      *&v730[1] = sub_2167E5108;
      *(&v730[1] + 1) = 0;
      LOWORD(v730[2]) = 257;
      BYTE2(v730[2]) = 1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FD0, &qword_217018EF0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FD8, &qword_217018EF8);
      OUTLINED_FUNCTION_51();
      sub_2167E68E4(v144, v145, v146);
      sub_2167E68E4(&qword_280E3AB48, &qword_27CAB7FD8, &qword_217018EF8);
      OUTLINED_FUNCTION_8_12();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v147);
      BYTE3(v730[2]) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0, &qword_217018EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8, &qword_217018EE8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v148);
      BYTE4(v730[2]) = 1;
      goto LABEL_55;
    case 0x20u:
      OUTLINED_FUNCTION_12_13();
      type metadata accessor for BootstrapState(0);
      OUTLINED_FUNCTION_0_33();
      sub_2166B4AF8(v264, v265, &unk_217050A88);

      OUTLINED_FUNCTION_51();
      v266 = sub_217008684();
      v268 = OUTLINED_FUNCTION_80_3(v266, v267);
      *&v730[1] = sub_2167E5140;
      *(&v730[1] + 1) = 0;
      OUTLINED_FUNCTION_55_6(v268, v269);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FB0, &qword_217018ED8);
      OUTLINED_FUNCTION_51();
      sub_2167E68E4(v270, v271, v272);
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v273);
      BYTE3(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0, &qword_217018EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8, &qword_217018EE8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v274);
      BYTE4(v730[2]) = 1;
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8, &qword_217018F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0, &qword_217018F08);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_23_5();
      sub_217009554();
      v617 = *&v734[32];
      v618 = v734[36];
      v619 = *&v734[16];
      v620 = v722;
      *v722 = *v734;
      v620[1] = v619;
      *(v620 + 8) = v617;
      *(v620 + 36) = v618;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_60_0();
      sub_217009554();
LABEL_56:

      break;
    default:
      memset(v730, 0, 34);
      BYTE2(v730[2]) = 1;
      v562 = OUTLINED_FUNCTION_7_4();
      __swift_instantiateConcreteTypeFromMangledNameV2(v562, v563);
      OUTLINED_FUNCTION_42();
      sub_2167E68E4(v564, v565, v566);
      OUTLINED_FUNCTION_25_6();
      sub_217009554();
      OUTLINED_FUNCTION_13_10();
      OUTLINED_FUNCTION_10_9(v567);
      BYTE3(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC0, &qword_217018EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FC8, &qword_217018EE8);
      sub_2167E5B18();
      sub_2167E5BD4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_42();
      sub_217009554();
      OUTLINED_FUNCTION_1_17();
      OUTLINED_FUNCTION_11_14(v568);
      BYTE4(v730[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FE8, &qword_217018F00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7FF0, &qword_217018F08);
      sub_2167E5C78();
      sub_2167E5EF4();
      OUTLINED_FUNCTION_8_12();
      OUTLINED_FUNCTION_42();
      sub_217009554();
      v569 = *&v734[32];
      v570 = v734[36];
      v571 = *&v734[16];
      v572 = v722;
      *v722 = *v734;
      v572[1] = v571;
      *(v572 + 8) = v569;
      *(v572 + 36) = v570;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8020, &qword_217018F30);
      sub_2167E5F80();
      sub_2167E6ACC();
      OUTLINED_FUNCTION_31_12();
      OUTLINED_FUNCTION_49_2();
      sub_217009554();
      v262 = type metadata accessor for FlowAction.Destination;
      v263 = v106;
LABEL_59:
      result = sub_2167E7220(v263, v262);
      break;
  }

  return result;
}

uint64_t sub_2167E389C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = type metadata accessor for FlowAction(0);
  sub_216B6FAAC(a1, a2, v4 + *(v8 + 36), &v24);
  if (*(&v25 + 1))
  {
    v27[0] = v24;
    v27[1] = v25;
    v28 = v26;
    v9 = *(v4 + *(type metadata accessor for FlowActionPageView(0) + 20));
    OUTLINED_FUNCTION_27_8();
    sub_216683A80(v10, v11, v12, v13);

    sub_216EB0ED4(v29);
    sub_2166997CC(v27, &qword_27CAB6AB8, &unk_217013E10);
    v19 = v29[1];
    v20 = v29[0];
    v14 = v30;
    OUTLINED_FUNCTION_68_1();
    result = swift_allocObject();
    *(result + 16) = v21;
    *(result + 32) = v22;
    v17 = v19;
    v16 = v20;
    *(result + 48) = v23;
    v18 = sub_2167E7308;
  }

  else
  {
    sub_2166997CC(&v24, &qword_27CAB8140, &qword_217019068);
    v9 = 0;
    v18 = 0;
    result = 0;
    v14 = 0;
    v16 = 0uLL;
    v17 = 0uLL;
  }

  *a3 = v9;
  *(a3 + 8) = v16;
  *(a3 + 24) = v17;
  *(a3 + 40) = v14;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = v18;
  *(a3 + 72) = result;
  return result;
}

double sub_2167E3A0C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8108, &qword_217019030);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v15 - v10;
  sub_2167E70B8(a2, a3);
  *(a3 + *(type metadata accessor for GoToArtistViewModel(0) + 20)) = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8110, &qword_217019038);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v11, v8, &qword_27CAB8108, &qword_217019030);

  sub_21700AEA4();
  sub_2166997CC(v11, &qword_27CAB8108, &qword_217019030);
  v13 = *(v12 + 40);
  v15[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_21700AEA4();
  result = *&v16;
  *(a3 + v13) = v16;
  return result;
}

double sub_2167E3BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8120, &qword_217019048);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v14 = sub_21700C084();
  (*(*(v14 - 8) + 16))(a4, a2, v14);
  v15 = type metadata accessor for GoToAlbumViewModel(0);
  *(a4 + *(v15 + 20)) = a3;
  *(a4 + *(v15 + 24)) = a1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8128, &qword_217019050);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v13, v10, &qword_27CAB8120, &qword_217019048);

  sub_21700AEA4();
  sub_2166997CC(v13, &qword_27CAB8120, &qword_217019048);
  v17 = *(v16 + 40);
  v19[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_21700AEA4();
  result = *&v20;
  *(a4 + v17) = v20;
  return result;
}

double sub_2167E3D6C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8130, &qword_217019058);
  MEMORY[0x28223BE20](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v16 - v10;
  v12 = sub_217007324();
  (*(*(v12 - 8) + 16))(a3, a2, v12);
  *(a3 + *(type metadata accessor for GoToTVShowViewModel(0) + 20)) = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8138, &qword_217019060);
  swift_storeEnumTagMultiPayload();
  sub_216683A80(v11, v8, &qword_27CAB8130, &qword_217019058);

  sub_21700AEA4();
  sub_2166997CC(v11, &qword_27CAB8130, &qword_217019058);
  v14 = *(v13 + 40);
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8118, &qword_217019040);
  sub_21700AEA4();
  result = *&v17;
  *(a3 + v14) = v17;
  return result;
}

uint64_t sub_2167E3F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v43 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6AE8, qword_217014050);
  v39 = *(v4 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = &v32 - v5;
  v35 = sub_21700C1E4();
  v6 = *(v35 - 8);
  v36 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8148, &qword_217019070);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_21700DA84();
  v33 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_21700DA74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_217013DA0;
  v21 = MEMORY[0x277D837D0];
  *(inited + 32) = 1701273968;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 72) = v21;
  strcpy((inited + 48), "albumLibrary");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v44 = sub_21700E384();
  sub_21700DA44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
  sub_21700DA24();
  (*(v10 + 8))(v12, v9);

  v22 = *(v14 + 8);
  v32 = v14 + 8;
  v34 = v22;
  v22(v16, v13);
  v23 = v8;
  v24 = v8;
  v25 = v35;
  (*(v6 + 16))(v24, v38, v35);
  v26 = v37;
  sub_216683A80(v41, v37, &qword_27CAB6AE8, qword_217014050);
  v27 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v28 = (v36 + *(v39 + 80) + v27) & ~*(v39 + 80);
  v29 = swift_allocObject();
  (*(v6 + 32))(v29 + v27, v23, v25);
  sub_2167C5834(v26, v29 + v28, &qword_27CAB6AE8, qword_217014050);
  type metadata accessor for BootstrapState(0);
  sub_2166B4AF8(&qword_280E43828, type metadata accessor for BootstrapState, &unk_217050A88);

  v44 = sub_217008684();
  v45 = v30;
  v46 = sub_2167E6D04;
  v47 = v29;
  v48 = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8090, &qword_217018FA0);
  sub_2167E68E4(&qword_280E3AB60, &qword_27CAB8090, &qword_217018FA0);
  sub_21700A1A4();

  return v34(v19, v33);
}