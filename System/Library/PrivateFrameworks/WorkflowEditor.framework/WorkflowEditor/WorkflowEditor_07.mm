uint64_t sub_2744A5A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v6 = type metadata accessor for TagFieldHostView(0);
  MEMORY[0x28223BE20](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v15 - v10;
  sub_2744A637C(a1 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView, v8);
  sub_2744C6BF0();
  sub_2744928F4(v8);
  v12 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_2744A65C0(v11);
  }

  else
  {
    v15[1] = a2;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v12 - 8) + 8))(v11, v12);
  }

  *a3 = EnumTagSinglePayload == 1;
  return result;
}

void sub_2744A5CF8(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for TagFieldHostView(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  sub_2744A637C(v2 + OBJC_IVAR____TtCV14WorkflowEditor16TagFieldHostView11Coordinator_hostView, v8 - v7);
  v10 = *(v9 + *(v6 + 40));
  if (v10)
  {
    v11 = v10;
    sub_2744928F4(v9);
    if (a2)
    {
      v12 = a1;
    }

    else
    {
      v12 = 0;
    }

    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 0xE000000000000000;
    }

    sub_27443CE38(v12, v13);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_0_23();
    v16 = sub_2744A6334(v14, v15, &protocol conformance descriptor for WorkflowEditorOptions);
    OUTLINED_FUNCTION_2_14(v16);
    __break(1u);
  }
}

id sub_2744A5E8C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagFieldHostView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2744A5EFC(uint64_t a1)
{
  result = type metadata accessor for TagFieldHostView(319);
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

void sub_2744A5FD4(uint64_t a1)
{
  sub_274457F78(319, &qword_28094D788, &qword_28094D790, 0x277D7C948, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    sub_274457F78(319, &qword_28094D798, &unk_28094D7A0, 0x277D7C928, type metadata accessor for StoredParameterState);
    if (v2 <= 0x3F)
    {
      sub_274431978(319, &qword_280950080, &unk_28094D7B0, &unk_2746507D0);
      if (v3 <= 0x3F)
      {
        sub_274431978(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60);
        if (v4 <= 0x3F)
        {
          sub_274481024(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

id sub_2744A6144@<X0>(void *a1@<X8>)
{
  result = sub_2744A53E4();
  *a1 = result;
  return result;
}

uint64_t sub_2744A616C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744A6334(&qword_28094D7E8, type metadata accessor for TagFieldHostView, &unk_274650830);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_2744A6200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2744A6334(&qword_28094D7E8, type metadata accessor for TagFieldHostView, &unk_274650830);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_2744A6294(uint64_t a1)
{
  sub_2744A6334(&qword_28094D7E8, type metadata accessor for TagFieldHostView, &unk_274650830);
  sub_274639D9C();
  __break(1u);
}

uint64_t sub_2744A6334(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2744A637C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFieldHostView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744A63E0(void *a1)
{
  v2 = [a1 suggestedTags];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_27463B81C();

  return v3;
}

void sub_2744A6444(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setPlaceholder_];
}

uint64_t sub_2744A64A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TagFieldHostView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2744A650C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TagFieldHostView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_2744A52D8(a1, a2, v6);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2744A65C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_14(uint64_t a1)
{

  return sub_27463978C();
}

id OUTLINED_FUNCTION_4_15(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t sub_2744A66E8()
{
  sub_27463C74C();
  sub_27463C30C();
  MEMORY[0x277C58EA0](*(v0 + 40));
  return sub_27463C7AC();
}

uint64_t sub_2744A6734(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a3)
  {
    return a6 & (a1 == a4);
  }

  if (a6)
  {
    return 0;
  }

  return sub_2744F57D0(a1, a4) & (a2 == a5);
}

uint64_t sub_2744A6798(uint64_t a1)
{
  sub_27463C74C();
  sub_27463C30C();
  MEMORY[0x277C58EA0](*(v1 + 40));
  return sub_27463C7AC();
}

BOOL sub_2744A6800(uint64_t a1, uint64_t a2)
{
  if ((sub_274637EBC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for DragReorderingPlaceholder(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t sub_2744A6850(uint64_t a1)
{
  sub_274637EEC();
  sub_2744AD448(&qword_28094F940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_27463B56C();
  v2 = *(v1 + *(type metadata accessor for DragReorderingPlaceholder(0) + 20));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  return MEMORY[0x277C58ED0](*&v2);
}

uint64_t sub_2744A68F0()
{
  sub_27463C74C();
  sub_2744A6850(v1);
  return sub_27463C7AC();
}

uint64_t sub_2744A6938(uint64_t a1)
{
  sub_27463C74C();
  sub_2744A6850(v2);
  return sub_27463C7AC();
}

uint64_t sub_2744A6974@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274637EEC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_2744A69E0(uint64_t a1)
{
  v3 = (*(v1 + 56))();
  sub_2744342DC();
  if (*(&v18 + 1))
  {
    v15[0] = v17;
    v15[1] = v18;
    v16 = v19;
    sub_2744B2AC4(v15);
    sub_274430664(v15);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = a1 + 32;
    v7 = MEMORY[0x277D84F90];
    do
    {
      sub_27448E108(v6 + 40 * v5, &v17);
      v8 = 0;
      v9 = *(v3 + 16);
      for (i = v3 + 32; ; i += 40)
      {
        if (v9 == v8)
        {
          sub_274430664(&v17);
          goto LABEL_15;
        }

        if (MEMORY[0x277C58A40](i, &v17))
        {
          break;
        }

        ++v8;
      }

      sub_274430664(&v17);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274450574();
        v7 = v12;
      }

      v11 = *(v7 + 16);
      if (v11 >= *(v7 + 24) >> 1)
      {
        sub_274450574();
        v7 = v13;
      }

      *(v7 + 16) = v11 + 1;
      *(v7 + 8 * v11 + 32) = v8;
LABEL_15:
      ++v5;
    }

    while (v5 != v4);
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

uint64_t sub_2744A6BA0()
{
  v1 = (*(v0 + 56))();
  sub_2744342DC();
  if (!*(&v9 + 1) || (v6[0] = v8, v6[1] = v9, v7 = v10, v2 = sub_2744B2AC4(v6), v4 = v3, sub_274430664(v6), (v4 & 1) != 0))
  {
    v2 = *(v1 + 16);
  }

  return v2;
}

uint64_t sub_2744A6C50()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2744A6CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  OUTLINED_FUNCTION_1();
  v46 = v4;
  v50 = *(v5 + 64);
  MEMORY[0x28223BE20](v6);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v8[2];
  v10 = v8[3];
  v11 = v8[4];
  v12 = v8[5];
  v13 = v8[7];
  v42 = v8[6];
  v41 = v13;
  v66 = v9;
  v67 = v10;
  v68 = v11;
  v69 = v12;
  v70 = v42;
  v71 = v13;
  type metadata accessor for DragReorderableForEach.Item(255, &v66);
  v14 = sub_27463B92C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA20, &qword_274650FD8);
  OUTLINED_FUNCTION_22();
  v40[0] = v11;
  v45 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA28, &qword_274650FE0);
  OUTLINED_FUNCTION_22();
  v15 = sub_274639DEC();
  v49 = v15;
  OUTLINED_FUNCTION_6_0();
  v53 = v14;
  WitnessTable = swift_getWitnessTable();
  v66 = v14;
  v67 = MEMORY[0x277D84030];
  v68 = v15;
  v69 = WitnessTable;
  v70 = MEMORY[0x277D84038];
  v47 = sub_27463AF9C();
  OUTLINED_FUNCTION_1();
  v51 = v16;
  MEMORY[0x28223BE20](v17);
  v43 = v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v48 = v40 - v20;
  v66 = sub_2744A7104(a1);
  v55 = v9;
  v56 = v10;
  v57 = v11;
  v58 = v12;
  v21 = v42;
  v22 = v41;
  v59 = v42;
  v60 = v41;
  v40[1] = swift_getKeyPath();
  v23 = v46;
  v24 = v44;
  (*(v46 + 16))(v44, v2, a1);
  v25 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v26 = swift_allocObject();
  *(v26 + 2) = v9;
  *(v26 + 3) = v10;
  *(v26 + 4) = v40[0];
  *(v26 + 5) = v12;
  *(v26 + 6) = v21;
  *(v26 + 7) = v22;
  (*(v23 + 32))(&v26[v25], v24, a1);
  OUTLINED_FUNCTION_13_7();
  v29 = sub_27440CA78(v27, &qword_28094DA20, &qword_274650FD8, v28);
  v64 = v22;
  v65 = v29;
  OUTLINED_FUNCTION_10_0();
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_12_6();
  v33 = sub_27440CA78(v31, &qword_28094DA28, &qword_274650FE0, v32);
  v62 = v30;
  v63 = v33;
  OUTLINED_FUNCTION_9_0();
  v39 = swift_getWitnessTable();
  v34 = v43;
  sub_27463AF7C();
  v61 = v39;
  OUTLINED_FUNCTION_10_12();
  v35 = v47;
  swift_getWitnessTable();
  v36 = v48;
  sub_2744E9688();
  v37 = *(v51 + 8);
  v37(v34, v35);
  sub_2744E9688();
  return (v37)(v36, v35);
}

uint64_t sub_2744A7104(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E0, &qword_274650CF0);
  MEMORY[0x28223BE20](v2 - 8);
  v79 = &v75 - v3;
  v77 = type metadata accessor for DragReorderingPlaceholder(0);
  MEMORY[0x28223BE20](v77);
  v76 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_27463800C();
  v81 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v80 = &v75 - v7;
  v9 = *(a1 + 40);
  v116 = *(a1 + 16);
  v8 = v116;
  v109 = *(a1 + 24);
  v117 = v109;
  v118 = v9;
  v110 = *(a1 + 48);
  v119 = v110;
  v10 = type metadata accessor for DragReorderableForEach.Item(0, &v116);
  MEMORY[0x28223BE20](v10);
  v99 = &v75 - v11;
  v97 = v109;
  v87 = *(v109 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(*(v9 + 8) + 8);
  v14 = *(v95 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v88 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v93 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v92 = &v75 - v18;
  v94 = v19;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v106 = sub_27463C0AC();
  v90 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v105 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v104 = &v75 - v23;
  v89 = sub_27463C5BC();
  MEMORY[0x28223BE20](v89);
  v86 = &v75 - v24;
  v103 = v14;
  v108 = sub_27463C5AC();
  v85 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  *&v109 = &v75 - v25;
  v102 = sub_27463C0AC();
  v26 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v28 = &v75 - v27;
  v29 = *(v8 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v75 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v75 - v34;
  v115 = sub_27463B87C();
  v98 = a1;
  v36 = *(a1 + 72);
  v37 = v107;
  v84 = *(v107 + v36);
  sub_2744A9CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D948, &qword_274650E50);
  v38 = swift_dynamicCast();
  v83 = v29;
  if (v38)
  {
    __swift_storeEnumTagSinglePayload(v28, 0, 1, v8);
    v39 = *(v29 + 32);
    v39(v32, v28, v8);
    v39(v35, v32, v8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v8);
    (*(v26 + 8))(v28, v102);
    (*(v29 + 16))(v35, v37, v8);
  }

  v100 = v10;
  v102 = v8;
  v101 = v35;
  MEMORY[0x277C57F10](v8, v103);
  sub_27463C58C();
  v103 = v90 + 4;
  v90 = (v88 + 4);
  v89 = (v88 + 2);
  ++v88;
  ++v87;
  v86 = v110;
  v40 = v104;
  v91 = TupleTypeMetadata2;
  v41 = v99;
  while (1)
  {
    v42 = v105;
    sub_27463C59C();
    (*v103)(v40, v42, v106);
    if (__swift_getEnumTagSinglePayload(v40, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    *&v110 = *v40;
    v43 = v110;
    v44 = v92;
    v45 = v94;
    (*v90)(v92, &v40[*(TupleTypeMetadata2 + 48)], v94);
    v111 = v43;
    v46 = sub_27463BB3C();
    v47 = *v89;
    v48 = v93;
    (*v89)(v93);
    v46(&v116, 0);
    v49 = v96;
    swift_getAtKeyPath();
    v50 = *v88;
    (*v88)(v48, v45);
    v51 = *(swift_getTupleTypeMetadata2() + 48);
    v52 = v97;
    sub_27463C63C();
    *(v41 + 40) = v110;
    (v47)(v41 + v51, v44, v45);
    v40 = v104;
    swift_storeEnumTagMultiPayload();
    sub_27463B92C();
    sub_27463B8CC();
    v53 = v49;
    TupleTypeMetadata2 = v91;
    (*v87)(v53, v52);
    v50(v44, v45);
  }

  (*(v85 + 8))(v109, v108);
  v54 = sub_2744A9A44();
  if (v56 == -1)
  {
    goto LABEL_16;
  }

  v57 = v54;
  v58 = v56;
  if ((v56 & 1) == 0)
  {
    v62 = v55;
    sub_2744AD448(&qword_28094FE40, MEMORY[0x277CC9A28], MEMORY[0x277CC9A58]);
    v63 = v78;
    v64 = v82;
    sub_27463C1DC();
    v65 = *(v57 + 16);
    if (v65)
    {
      v66 = (v57 + 32);
      do
      {
        v67 = *v66++;
        v111 = v67;
        sub_27463C1AC();
        --v65;
      }

      while (v65);
    }

    v68 = v81;
    v69 = v80;
    (*(v81 + 32))(v80, v63, v64);
    v114 = v62;
    v70 = sub_27463B82C();
    result = sub_27463B8BC();
    if (result < v70)
    {
      __break(1u);
      goto LABEL_21;
    }

    v116 = v70;
    *&v117 = result;
    sub_274638ADC();
    sub_27463B92C();
    swift_getWitnessTable();
    sub_27463B5AC();
    sub_2744B04F4(v57, v62, v58);
    (*(v68 + 8))(v69, v64);
LABEL_16:
    (*(v83 + 8))(v101, v102);
    return v115;
  }

  swift_beginAccess();
  v59 = v79;
  sub_2744342DC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v77);
  v61 = v83;
  if (EnumTagSinglePayload == 1)
  {
    (*(v83 + 8))(v101, v102);
    sub_27440CB1C(v59, &qword_28094D8E0, &qword_274650CF0);
    return v115;
  }

  v72 = v76;
  sub_2744B0DBC();
  sub_2744AE94C(v72, v99);
  swift_storeEnumTagMultiPayload();
  v113 = v57;
  v73 = sub_27463B82C();
  result = sub_27463B8BC();
  v74 = v102;
  if (result >= v73)
  {
    v111 = v73;
    v112 = result;
    sub_274638ADC();
    sub_27463B92C();
    sub_27463B8DC();
    sub_2744B049C(v72, type metadata accessor for DragReorderingPlaceholder);
    (*(v61 + 8))(v101, v74);
    return v115;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2744A7ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_274637EEC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DragReorderingPlaceholder(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v3, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2744B0DBC();
    (*(v7 + 16))(v9, v12, v6);
    sub_2744AD448(&qword_28094F940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_27463C31C();
    return sub_2744B049C(v12, type metadata accessor for DragReorderingPlaceholder);
  }

  else
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v20 = *(swift_getTupleTypeMetadata2() + 48);
    v21 = *(v16 + 1);
    *a2 = *v16;
    *(a2 + 16) = v21;
    *(a2 + 32) = *(v16 + 4);
    return (*(*(AssociatedTypeWitness - 8) + 8))(&v16[v20], AssociatedTypeWitness);
  }
}

uint64_t sub_2744A81AC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = *(a1 + a2 - 32);
  v7[0] = *(a1 + a2 - 48);
  v7[1] = v4;
  v7[2] = *(a1 + a2 - 16);
  v5 = type metadata accessor for DragReorderableForEach.Item(0, v7);
  return sub_2744A7ED8(v5, a3);
}

uint64_t sub_2744A8200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v63 = a2;
  v58 = a1;
  v70 = a9;
  v15 = type metadata accessor for DragReorderingPlaceholder(0);
  MEMORY[0x28223BE20](v15 - 8);
  v57 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = *(a5 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA20, &qword_274650FD8);
  v20 = sub_27463965C();
  v56 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v55 = &v53 - v24;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v60 = a7;
  v61 = &v53 - v25;
  __src[0] = a3;
  __src[1] = a4;
  v59 = a4;
  __src[2] = a5;
  __src[3] = a6;
  __src[4] = a7;
  __src[5] = a8;
  v69 = a8;
  v26 = type metadata accessor for DragReorderableForEach.Item(0, __src);
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = (&v53 - v28);
  v65 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA28, &qword_274650FE0);
  v30 = sub_274639DEC();
  v67 = *(v30 - 8);
  v68 = v30;
  v31 = MEMORY[0x28223BE20](v30);
  v66 = &v53 - v32;
  (*(v27 + 16))(v29, v58, v26, v31);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v57;
    sub_2744B0DBC();
    v34 = sub_274639C5C();
    v81 = 0;
    v35 = v69;
    sub_2744A8AB8(a3, v59, a5, a6, v60, v69, __src);
    memcpy(v82, __src, sizeof(v82));
    memcpy(v83, __src, sizeof(v83));
    sub_2744342DC();
    sub_27440CB1C(v83, &qword_28094DA40, &qword_274651018);
    memcpy(&v80[7], v82, 0x88uLL);
    v79[0] = v34;
    LOBYTE(v79[1]) = v81;
    memcpy(&v79[1] + 1, v80, 0x8FuLL);
    v36 = sub_27440CA78(&qword_28094DA30, &qword_28094DA20, &qword_274650FD8, &unk_2746513B0);
    v77 = v35;
    v78 = v36;
    swift_getWitnessTable();
    sub_27440CA78(&qword_28094DA38, &qword_28094DA28, &qword_274650FE0, MEMORY[0x277CE1198]);
    v37 = v66;
    sub_27456E878();
    memcpy(__src, v79, 0xA0uLL);
    sub_27440CB1C(__src, &qword_28094DA28, &qword_274650FE0);
    sub_2744B049C(v33, type metadata accessor for DragReorderingPlaceholder);
  }

  else
  {
    swift_getTupleTypeMetadata2();
    v38 = v29[1];
    v79[0] = *v29;
    v79[1] = v38;
    v79[2] = v29[2];
    v39 = v19;
    v40 = v61;
    (*(v62 + 32))();
    __src[0] = a3;
    __src[1] = v59;
    __src[2] = a5;
    __src[3] = a6;
    v41 = v69;
    __src[4] = v60;
    __src[5] = v69;
    v42 = type metadata accessor for DragReorderableForEach(0, __src);
    v43 = v63;
    (*(v63 + *(v42 + 76)))(v79, v40);
    sub_274434ED4(v79, __src);
    __src[6] = *(v43 + *(v42 + 72));

    MEMORY[0x277C57160](__src, a5, v53, v41);
    sub_27440CB1C(__src, &qword_28094DA20, &qword_274650FD8);
    v44 = v39;
    v35 = v41;
    (*(v54 + 8))(v44, a5);
    v45 = sub_27440CA78(&qword_28094DA30, &qword_28094DA20, &qword_274650FD8, &unk_2746513B0);
    v71 = v41;
    v72 = v45;
    swift_getWitnessTable();
    v46 = v55;
    sub_2744E9688();
    v47 = *(v56 + 8);
    v47(v22, v20);
    sub_2744E9688();
    sub_27440CA78(&qword_28094DA38, &qword_28094DA28, &qword_274650FE0, MEMORY[0x277CE1198]);
    v37 = v66;
    sub_27456E7CC();
    v47(v22, v20);
    v47(v46, v20);
    (*(v62 + 8))(v61, AssociatedTypeWitness);
    sub_2744AE910(v79);
  }

  v48 = sub_27440CA78(&qword_28094DA30, &qword_28094DA20, &qword_274650FD8, &unk_2746513B0);
  v75 = v35;
  v76 = v48;
  WitnessTable = swift_getWitnessTable();
  v50 = sub_27440CA78(&qword_28094DA38, &qword_28094DA28, &qword_274650FE0, MEMORY[0x277CE1198]);
  v73 = WitnessTable;
  v74 = v50;
  v51 = v68;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v67 + 8))(v37, v51);
}

uint64_t sub_2744A8AB8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v19 = sub_27463AB7C();
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  type metadata accessor for DragReorderableForEach(0, &v33);
  sub_27463B0CC();
  sub_2746392FC();
  v18 = sub_27463AB7C();
  type metadata accessor for DragReorderingPlaceholder(0);
  sub_27463B0CC();
  sub_2746392FC();
  v16 = sub_27463AD3C();
  __src[0] = v18;
  __src[1] = v26;
  LOBYTE(__src[2]) = v27;
  __src[3] = v28;
  LOBYTE(__src[4]) = v29;
  __src[5] = v30;
  __src[6] = v31;
  __src[7] = v16;
  __src[8] = sub_2744A8CCC;
  __src[9] = 0;
  *a9 = v19;
  *(a9 + 8) = v20;
  *(a9 + 16) = v21;
  *(a9 + 24) = v22;
  *(a9 + 32) = v23;
  *(a9 + 40) = v24;
  *(a9 + 48) = v25;
  memcpy((a9 + 56), __src, 0x50uLL);
  v33 = v18;
  v34 = v26;
  LOBYTE(v35) = v27;
  v36 = v28;
  LOBYTE(v37) = v29;
  v38 = v30;
  v39 = v31;
  v40 = v16;
  v41 = sub_2744A8CCC;
  v42 = 0;

  sub_2744342DC();
  sub_27440CB1C(&v33, qword_28094DA48, &unk_274651020);
}

uint64_t sub_2744A8CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, double a4@<D0>)
{
  v63 = a1;
  v62 = a3;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);
  v61 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v7 = &v60 - v6;
  sub_2744AD15C();
  v65 = v7;
  sub_27463832C();
  v8 = sub_27463B4DC();
  v9 = 0;
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 64);
  v13 = (v10 + 63) >> 6;
  if (v12)
  {
LABEL_8:
    while (1)
    {
      v15 = __clz(__rbit64(v12)) | (v9 << 6);
      sub_274434ED4(*(a2 + 48) + 48 * v15, &v66);
      if (!v68)
      {
        break;
      }

      v16 = *(a2 + 56) + 32 * v15;
      v17 = *v16;
      v18 = *(v16 + 8);
      v19 = *(v16 + 16);
      v20 = *(v16 + 24);
      v73 = v66;
      v74 = v67;
      v75 = v68;
      v76 = v69;
      sub_274434ED4(&v73, &v66);
      v77.origin.x = v17;
      v77.origin.y = v18;
      v77.size.width = v19;
      v77.size.height = v20;
      MinY = CGRectGetMinY(v77);
      swift_isUniquelyReferenced_nonNull_native();
      v72[0] = v8;
      v22 = sub_274534E8C(&v66);
      if (__OFADD__(v8[2], (v23 & 1) == 0))
      {
        goto LABEL_41;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D928, &unk_274650D60);
      if (sub_27463C4CC())
      {
        v26 = sub_274534E8C(&v66);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_43;
        }

        v24 = v26;
      }

      v8 = v72[0];
      if (v25)
      {
        *(*(v72[0] + 56) + 8 * v24) = MinY;
        sub_2744AE910(&v66);
      }

      else
      {
        *(v72[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
        sub_274434ED4(&v66, v8[6] + 48 * v24);
        *(v8[7] + 8 * v24) = MinY;
        sub_2744AE910(&v66);
        v28 = v8[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_42;
        }

        v8[2] = v30;
      }

      v12 &= v12 - 1;
      sub_274434ED4(&v73, v72);
      sub_274434ED4(&v73, &v66);
      v70 = 0u;
      v71 = 0u;
      sub_27463838C();
      sub_2744AE910(&v73);
      if (!v12)
      {
        goto LABEL_4;
      }
    }

LABEL_19:

    v31 = 0;
    v32 = v63;
    v33 = v63 + 64;
    v34 = 1 << *(v63 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = v35 & *(v63 + 64);
    v37 = (v34 + 63) >> 6;
    v38 = v64;
    if (v36)
    {
LABEL_26:
      while (1)
      {
        v40 = __clz(__rbit64(v36)) | (v31 << 6);
        sub_274434ED4(*(v32 + 48) + 48 * v40, &v66);
        if (!v68)
        {
          break;
        }

        v41 = *(v32 + 56) + 32 * v40;
        v42 = *v41;
        v43 = *(v41 + 8);
        v44 = *(v41 + 16);
        v45 = *(v41 + 24);
        sub_274434ED4(&v66, &v73);
        v47 = sub_27463836C();
        if (*(v46 + 24))
        {
          v48 = v46;
          v78.origin.x = v42;
          v78.origin.y = v43;
          v78.size.width = v44;
          v78.size.height = v45;
          v49 = CGRectGetMinY(v78);
          v50 = 0.0;
          if (v8[2])
          {
            v51 = sub_274534E8C(&v66);
            if (v52)
            {
              v50 = *(v8[7] + 8 * v51);
            }
          }

          *(v48 + 48) = v49 - v50;
        }

        v47(v72, 0);
        sub_2744AE910(&v73);
        sub_274434ED4(&v66, &v73);
        v54 = sub_27463836C();
        v32 = v63;
        if (*(v53 + 24))
        {
          v79.origin.x = v42;
          v79.origin.y = v43;
          v79.size.width = v44;
          v79.size.height = v45;
          *(v53 + 56) = CGRectGetMinX(v79);
        }

        v54(v72, 0);
        sub_2744AE910(&v73);
        sub_274434ED4(&v66, &v73);
        v56 = sub_27463836C();
        if (*(v55 + 3))
        {
          v55[8] = v44;
          v55[9] = v45;
        }

        v56(v72, 0);
        v36 &= v36 - 1;
        sub_2744AE910(&v73);
        sub_2744AE910(&v66);
        if (!v36)
        {
          goto LABEL_22;
        }
      }

LABEL_38:

      v57 = v62;
      *v62 = a4;
      v58 = type metadata accessor for PseudoLayout(0);
      (*(v61 + 32))(v57 + *(v58 + 20), v65, v38);
    }

LABEL_22:
    while (1)
    {
      v39 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v39 >= v37)
      {
        goto LABEL_38;
      }

      v36 = *(v33 + 8 * v39);
      ++v31;
      if (v36)
      {
        v31 = v39;
        goto LABEL_26;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        goto LABEL_19;
      }

      v12 = *(a2 + 64 + 8 * v14);
      ++v9;
      if (v12)
      {
        v9 = v14;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_2744A933C(uint64_t a1, double a2)
{
  v5 = MEMORY[0x277D84F90];
  *(v2 + 32) = 0;
  *(v2 + 40) = v5;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 48) = v5;
  *(v2 + 72) = -1;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0;
  v6 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy;
  v7 = sub_2746393DC();
  __swift_storeEnumTagSinglePayload(v2 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeElements;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094D950, &qword_274650E80);
  sub_2744AD15C();
  OUTLINED_FUNCTION_26_5();
  *(v2 + v8) = sub_27463B4DC();
  v9 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeContentElements;
  OUTLINED_FUNCTION_26_5();
  *(v2 + v9) = sub_27463B4DC();
  v10 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholder;
  v11 = type metadata accessor for DragReorderingPlaceholder(0);
  __swift_storeEnumTagSinglePayload(v2 + v10, 1, 1, v11);
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholderAnchor) = 0;
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState) = 0;
  v12 = v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0;
  v13 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator;
  *(v2 + v13) = [objc_allocWithZone(WFActionDragFeedbackGenerator) init];
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__isDragSessionActive) = 0;
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__isDropSessionActive) = 0;
  OUTLINED_FUNCTION_26_5();
  *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements) = sub_27463B4DC();
  sub_27463810C();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_2744A94F8(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_2744F6098(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_21_6();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_2744ACB08(v8, sub_2744B0660, v9);
  }
}

uint64_t sub_2744A95D8(uint64_t a1)
{

  v4 = sub_2744F6098(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_21_6();
    *(v7 - 16) = v1;
    *(v7 - 8) = a1;
    sub_2744ACB08(v8, sub_2744B0644, v9);
  }
}

uint64_t sub_2744A9714(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result & 1;
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = v5;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    OUTLINED_FUNCTION_21_6();
    *(v8 - 16) = v4;
    *(v8 - 8) = v5;
    sub_2744ACB08(v9, a4, v10);
  }

  return result;
}

uint64_t sub_2744A97B0(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2744ACB08(KeyPath, sub_2744B0440, &v5);
}

uint64_t sub_2744A9824()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_8_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2746380DC();

  OUTLINED_FUNCTION_29_3(v0 + 40, v13);
}

uint64_t sub_2744A98E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t sub_2744A9950()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_8_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2746380DC();
}

uint64_t sub_2744A9A08(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = a2;
}

uint64_t sub_2744A9A44()
{
  v1 = v0;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v4 = sub_2744AD448(v2, v3, &unk_274650C4C);
  OUTLINED_FUNCTION_8_11(v4, v5, v6, v7, v8, v9, v10, v11, v14, v0);
  sub_2746380DC();

  v12 = *(v0 + 56);
  sub_2744B050C(v12, *(v1 + 64), *(v1 + 72));
  return v12;
}

uint64_t sub_2744A9AEC@<X0>(uint64_t a1@<X8>)
{
  result = sub_2744A9A44();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_2744A9B1C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  sub_2744B050C(*a1, v2, v3);
  return sub_2744A9B6C(v1, v2, v3);
}

uint64_t sub_2744A9B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  if (sub_2744ACBB0(v7, v8, v9, a1, a2, a3))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v13[2] = v3;
    v13[3] = a1;
    v13[4] = a2;
    v14 = v4;
    sub_2744ACB08(v11, sub_2744B0620, v13);
    sub_2744B04F4(a1, a2, v4);
  }

  else
  {
    *(v3 + 56) = a1;
    *(v3 + 64) = a2;
    *(v3 + 72) = v4;

    return sub_2744B04F4(v7, v8, v9);
  }
}

uint64_t sub_2744A9C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  v6 = *(a1 + 72);
  *(a1 + 72) = a4;
  sub_2744B050C(a2, a3, a4);
  return sub_2744B04F4(v4, v5, v6);
}

uint64_t sub_2744A9CF0()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_8_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2746380DC();

  OUTLINED_FUNCTION_29_3(v0 + 80, v13);
  return sub_2744342DC();
}

uint64_t sub_2744A9DEC(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_2744ACB08(KeyPath, sub_2744B0594, &v5);

  return sub_27440CB1C(a1, &qword_28094D948, &qword_274650E50);
}

uint64_t sub_2744A9E70(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_2744B05B0(a2, a1 + 80);
  return swift_endAccess();
}

uint64_t sub_2744A9EFC(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v4, v5, &unk_274650C4C);
  sub_2746380DC();

  return *(v2 + *a2);
}

uint64_t sub_2744A9F8C()
{
  v0 = *(sub_2744A9824() + 16);

  if (v0)
  {
    return 1;
  }

  v1 = *(sub_2744A9950() + 16);

  if (v1 || (sub_2744A9ED4() & 1) != 0)
  {
    return 1;
  }

  return sub_2744A9EE8();
}

BOOL sub_2744A9FF0(uint64_t a1)
{
  v2 = sub_2744A9824();
  v9 = a1;
  v3 = sub_27446EDAC(sub_2744B0544, v8, v2);

  if (v3)
  {
    return 1;
  }

  else
  {
    v5 = sub_2744A9950();
    MEMORY[0x28223BE20](v5);
    v7[2] = a1;
    v4 = sub_27446EDAC(sub_2744B209C, v7, v5);
  }

  return v4;
}

id sub_2744AA0D0(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v4, v5, &unk_274650C4C);
  sub_2746380DC();

  v12[0] = v1;
  swift_getKeyPath();
  sub_2746380FC();

  OUTLINED_FUNCTION_30_1(v1 + 40, v12);
  sub_2745C27B0(v6);
  v7 = *(*(v1 + 40) + 16);
  sub_2745C2824(v7);
  v8 = *(v1 + 40);
  *(v8 + 16) = v7 + 1;
  sub_274434ED4(a1, v8 + 48 * v7 + 32);
  *(v2 + 40) = v8;
  swift_endAccess();
  v12[0] = v2;
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();
  sub_2746380EC();

  OUTLINED_FUNCTION_29_3(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, v11);
  sub_2744342DC();
  if (v12[3])
  {
    sub_2744306B8(v12, v10);
    sub_27440CB1C(v12, &qword_28094D900, &qword_274650D18);
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    sub_2744B33C8();
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    sub_27440CB1C(v12, &qword_28094D900, &qword_274650D18);
  }

  return [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator) draggingStarted];
}

uint64_t sub_2744AA2D4()
{
  sub_2744A96C4(0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v1, v2, &unk_274650C4C);
  sub_2746380DC();

  v3 = OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_14_8(v3, v4, v5, v6, v7, v8, v9, v10, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v0);
  sub_2746380FC();

  swift_beginAccess();
  *(v0 + 40) = MEMORY[0x277D84F90];

  v11 = OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_24_4(v11, v12, v13, v14, v15, v16, v17, v18);

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_14_8(KeyPath, v20, v21, v22, v23, v24, v25, v26, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v0);
  sub_2746380DC();

  v27 = OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_14_8(v27, v28, v29, v30, v31, v32, v33, v34, v44, v45, v46, v47, v48, v49[0], v49[1], v49[2], v50[0]);
  sub_2746380FC();

  OUTLINED_FUNCTION_30_1(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D940, &qword_274650DD0);
  sub_27463B4EC();
  swift_endAccess();
  v35 = OUTLINED_FUNCTION_32_3();
  OUTLINED_FUNCTION_24_4(v35, v36, v37, v38, v39, v40, v41, v42);

  OUTLINED_FUNCTION_29_3(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, v49);
  sub_2744342DC();
  if (!v50[3])
  {
    return sub_27440CB1C(v50, &qword_28094D900, &qword_274650D18);
  }

  sub_2744306B8(v50, &v44);
  sub_27440CB1C(v50, &qword_28094D900, &qword_274650D18);
  __swift_project_boxed_opaque_existential_1(&v44, v47);
  sub_27451F220();
  return __swift_destroy_boxed_opaque_existential_1(&v44);
}

BOOL sub_2744AA4F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E0, &qword_274650CF0);
  OUTLINED_FUNCTION_53_0(v2);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v3);
  v5 = &v15[-v4 - 8];
  v6 = sub_27463B04C();
  v7 = sub_274453594();
  if (v7)
  {
    sub_2744535A4();
    if ((v6 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](0, v6);
    }

    else
    {
      v8 = *(v6 + 32);
    }

    v9 = v8;

    [v9 preferredPresentationSize];
    v11 = v10;
    sub_274637EDC();

    v12 = type metadata accessor for DragReorderingPlaceholder(0);
    *&v5[*(v12 + 20)] = v11;
    __swift_storeEnumTagSinglePayload(v5, 0, 1, v12);
    OUTLINED_FUNCTION_30_1(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholder, v15);
    sub_2744B0C7C();
    swift_endAccess();
  }

  else
  {
  }

  return v7 != 0;
}

uint64_t sub_2744AA65C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D938, &qword_274650DA0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v73 - v6;
  v8 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = (v11 - v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8, &qword_274650CF8);
  OUTLINED_FUNCTION_53_0(v13);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_3_0();
  v80 = v20 - v19;
  OUTLINED_FUNCTION_29_3(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, v88);
  sub_2744342DC();
  if (!*(&v86[1] + 1))
  {
    sub_27440CB1C(v86, &qword_28094D900, &qword_274650D18);
    return 0;
  }

  sub_2743F45D0(v86, v89);
  OUTLINED_FUNCTION_29_3(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy, v87);
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v15) == 1)
  {
    v21 = &qword_28094D8E8;
    v22 = &qword_274650CF8;
    v23 = v1;
LABEL_7:
    sub_27440CB1C(v23, v21, v22);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v89);
    return 0;
  }

  v24 = v80;
  (*(v17 + 32))(v80, v1, v15);
  sub_2744AB860(v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    (*(v17 + 8))(v24, v15);
    v21 = &qword_28094D938;
    v22 = &qword_274650DA0;
    v23 = v7;
    goto LABEL_7;
  }

  v75 = v17;
  v76 = v15;
  OUTLINED_FUNCTION_2_15();
  sub_2744B0DBC();
  v77 = a1;
  sub_27463B05C();
  v28 = sub_2744AC0A4(v12, v26, v27);
  v79 = v29;
  v78 = v30;
  v31 = ~v30;
  v32 = sub_2744A9A44();
  v35 = v34;
  if (!v31)
  {
    v36 = v78;
    if (v34 == -1)
    {
      goto LABEL_17;
    }

    v40 = OUTLINED_FUNCTION_27_4();
    v32 = sub_2744B04F4(v40, v41, v35);
    goto LABEL_16;
  }

  v36 = v78;
  if (v34 == -1 || (v37 = sub_2744A6734(v28, v79, v78 & 1, v32, v33, v34 & 1), v38 = OUTLINED_FUNCTION_27_4(), v32 = sub_2744B04F4(v38, v39, v35), (v37 & 1) == 0))
  {
LABEL_16:
    MEMORY[0x28223BE20](v32);
    *(&v73 - 6) = v89;
    *(&v73 - 5) = v28;
    *(&v73 - 4) = v79;
    *(&v73 - 24) = v36;
    *(&v73 - 2) = v2;
    sub_2744AB6A4();
  }

LABEL_17:
  sub_27463B04C();
  if (v36 == -1)
  {

    OUTLINED_FUNCTION_1_16();
    sub_2744B049C(v12, v43);
    (*(v75 + 8))(v80, v76);
    goto LABEL_8;
  }

  v42 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState);
  if (v42)
  {
    sub_2744306B8(v42 + 16, v86);
  }

  else
  {
    memset(v86, 0, 40);
  }

  sub_2744A9DEC(v86);
  __swift_project_boxed_opaque_existential_1(v89, v89[3]);
  sub_2744B3CA4();

  [*(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator) draggingItemDropped];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);
  *&v86[0] = sub_27463831C();

  sub_2744AE83C(v86);

  v44 = *&v86[0];
  if (v36)
  {

    v45 = v80;
    if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholderAnchor))
    {
      type metadata accessor for CGRect(0);

      sub_2746393EC();
      v90.origin.x = OUTLINED_FUNCTION_7_16();
      CGRectGetMidX(v90);
      v91.origin.x = OUTLINED_FUNCTION_7_16();
      CGRectGetMidY(v91);
      sub_27463B03C();
    }
  }

  else
  {
    v73 = v28;
    v74 = v12;
    v46 = 0;
    v47 = *(*&v86[0] + 16);
    v48 = *&v86[0] + 32;
    v49 = MEMORY[0x277D84F90];
    v50 = v79;
    while (v47 != v46)
    {
      if (v46 >= *(v44 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);

        __break(1u);
        return result;
      }

      sub_2744AE8A8(v48, v86);
      if (*(&v86[2] + 1) >= v50)
      {
        sub_2744AE8E0(v86);
      }

      else
      {
        memcpy(v85, v86, sizeof(v85));
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v81 = v49;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27445141C(0, *(v49 + 2) + 1, 1);
          v50 = v79;
          v49 = v81;
        }

        v53 = *(v49 + 2);
        v52 = *(v49 + 3);
        if (v53 >= v52 >> 1)
        {
          sub_27445141C(v52 > 1, v53 + 1, 1);
          v50 = v79;
          v49 = v81;
        }

        *(v49 + 2) = v53 + 1;
        memcpy(&v49[10 * v53 + 4], v85, 0x50uLL);
      }

      v48 += 80;
      ++v46;
    }

    v12 = v74;
    v54 = *v74;
    v55 = *(v49 + 2);
    if (v55)
    {
      v56 = 0;
      do
      {
        v57 = &v49[10 * v56++ + 4];
        sub_2744AE8A8(v57, v86);
        v58 = sub_2744A9824();
        v59 = *(v58 + 16);
        v60 = (v58 + 72);
        if (v59)
        {
          while ((MEMORY[0x277C58A40](v60 - 5, v86) & 1) == 0 || *v60 != *(&v86[2] + 1))
          {
            v60 += 6;
            if (!--v59)
            {
              goto LABEL_42;
            }
          }
        }

        else
        {
LABEL_42:

          v54 = v54 + *&v86[3] + *(&v86[4] + 1);
        }

        sub_2744AE8E0(v86);
      }

      while (v56 != v55);

      v12 = v74;
    }

    else
    {
    }

    v49 = sub_2744A9824();
    v61 = 0;
    v62 = *(v49 + 2);
    v63 = v49 + 4;
    v74 = v49 + 4;
LABEL_48:
    for (i = &v63[6 * v61]; v62 != v61; i += 48)
    {
      if (v61 >= *(v49 + 2))
      {
        goto LABEL_59;
      }

      *&v86[0] = v61;
      sub_274434ED4(i, v86 + 8);
      if (!*&v86[2])
      {
        break;
      }

      v81 = *(v86 + 8);
      v82 = *(&v86[1] + 1);
      v83 = v86[2];
      v84 = *&v86[3];
      if (*(sub_2744AB724() + 16))
      {
        sub_274534E8C(&v81);
        if (v65)
        {
          OUTLINED_FUNCTION_25_6();
          sub_2744AE8A8(v67 + v66 * v68, v85);
          sub_2744AE910(&v81);

          memcpy(v86, v85, 0x50uLL);
          v69 = v54 + *&v86[3];
          v70 = *(&v86[4] + 1);
          v92.origin.x = OUTLINED_FUNCTION_7_16();
          CGRectGetMidX(v92);
          v93.origin.x = OUTLINED_FUNCTION_7_16();
          CGRectGetMidY(v93);
          sub_27463B03C();
          sub_2744AE8E0(v86);
          v54 = v69 + v70;
          ++v61;
          v63 = v74;
          goto LABEL_48;
        }
      }

      sub_2744AE910(&v81);
      ++v61;
    }

    v71 = sub_2744A9824();
    sub_2744A95D8(v71);
    sub_2744B04F4(v73, v79, v78);
    v45 = v80;
  }

  OUTLINED_FUNCTION_1_16();
  sub_2744B049C(v12, v72);
  (*(v75 + 8))(v45, v76);
  __swift_destroy_boxed_opaque_existential_1(v89);
  return 1;
}

uint64_t sub_2744AAF1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2744B3508();
  sub_2744B050C(a2, a3, a4);
  return sub_2744A9B6C(a2, a3, a4);
}

uint64_t sub_2744AAFA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_27463939C();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D938, &qword_274650DA0);
  OUTLINED_FUNCTION_53_0(v11);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_3_0();
  v19 = (v18 - v17);
  if ((sub_2744A9EE8() & 1) == 0)
  {
    sub_2744A96EC(1);
  }

  sub_2744AB860(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    v41 = v4;
    v42 = a1;
    OUTLINED_FUNCTION_2_15();
    sub_2744B0DBC();
    v21 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator);
    [v21 draggingPositionUpdated];
    sub_27463B05C();
    v43 = sub_2744AC0A4(v19, v22, v23);
    v44 = v24;
    v26 = v25;
    v27 = sub_2744A9A44();
    if (v29 == -1)
    {
      if (v26 == -1)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v30 = v27;
      v31 = v28;
      v32 = v29;
      if (v26 == -1)
      {
        sub_2744B04F4(v27, v28, v29);
      }

      else
      {
        v33 = sub_2744A6734(v27, v28, v29 & 1, v43, v44, v26 & 1);
        sub_2744B04F4(v30, v31, v32);
        if (v33)
        {
          goto LABEL_13;
        }
      }
    }

    v34 = [v21 draggingItemSnapped];
    MEMORY[0x28223BE20](v34);
    v36 = v43;
    v35 = v44;
    *(&v41 - 4) = v2;
    *(&v41 - 3) = v36;
    *(&v41 - 2) = v35;
    *(&v41 - 8) = v26;
    sub_2744AB6A4();
    if (v26 != -1)
    {
LABEL_13:
      if (v26)
      {
        v37 = MEMORY[0x277CDD858];
      }

      else
      {
        v37 = MEMORY[0x277CDD860];
      }

      (*(v6 + 104))(v10, *v37, v41);
      a1 = v42;
      sub_27463927C();
      sub_2744B04F4(v43, v44, v26);
      goto LABEL_18;
    }

LABEL_15:
    (*(v6 + 104))(v10, *MEMORY[0x277CDD868], v41);
    a1 = v42;
    sub_27463927C();
LABEL_18:
    OUTLINED_FUNCTION_1_16();
    sub_2744B049C(v19, v38);
    v20 = 0;
    goto LABEL_19;
  }

  sub_27440CB1C(v14, &qword_28094D938, &qword_274650DA0);
  v20 = 1;
LABEL_19:
  v39 = sub_27463928C();
  return __swift_storeEnumTagSinglePayload(a1, v20, 1, v39);
}

uint64_t sub_2744AB30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_2744342DC();
  if (v10)
  {
    sub_2744306B8(v9, v8);
    sub_27440CB1C(v9, &qword_28094D900, &qword_274650D18);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_2744B3508();
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  else
  {
    sub_27440CB1C(v9, &qword_28094D900, &qword_274650D18);
  }

  sub_2744B050C(a2, a3, a4);
  return sub_2744A9B6C(a2, a3, a4);
}

uint64_t sub_2744AB41C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_20_6();
  sub_2746380DC();

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();
  sub_2746380FC();

  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2746380EC();
}

id sub_2744AB520(__n128 a1)
{
  sub_2744AB6A4();
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_feedbackGenerator);

  return [v2 draggingCancelled];
}

uint64_t sub_2744AB574()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_20_6();
  sub_2746380DC();

  swift_getKeyPath();
  OUTLINED_FUNCTION_20_6();
  sub_2746380FC();

  *(v0 + 48) = MEMORY[0x277D84F90];

  swift_getKeyPath();
  sub_2746380EC();

  sub_2744A9B6C(0, 0, 255);
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  sub_2744A9DEC(v4);
  return sub_2744A96EC(0);
}

uint64_t sub_2744AB6A4()
{
  OUTLINED_FUNCTION_57();
  MEMORY[0x277C57870](0.3, 1.0, 0.0);
  sub_27463946C();
}

uint64_t sub_2744AB724()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_24();
  v3 = sub_2744AD448(v1, v2, &unk_274650C4C);
  OUTLINED_FUNCTION_8_11(v3, v4, v5, v6, v7, v8, v9, v10, v12, v0);
  sub_2746380DC();

  OUTLINED_FUNCTION_29_3(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements, v13);
}

uint64_t sub_2744AB7F0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_2744AB860@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v68 = a1;
  v3 = type metadata accessor for PseudoLayout(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8, &qword_274650CF8);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v10 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_3_0();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_29_3(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy, v80);
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
  {
    sub_27440CB1C(v1, &qword_28094D8E8, &qword_274650CF8);
    return __swift_storeEnumTagSinglePayload(v68, 1, 1, v3);
  }

  v66 = v10;
  v67 = v3;
  v65 = v12;
  v18 = (*(v12 + 32))(v16, v1, v10);
  v19 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeElements);
  MEMORY[0x28223BE20](v18);
  v63[-2] = v16;

  v20 = sub_2744B022C(sub_2744B2084, &v63[-4], v19);

  MEMORY[0x28223BE20](v21);
  v63[-2] = v16;

  OUTLINED_FUNCTION_20_6();
  v25 = sub_2744B022C(v22, v23, v24);

  *&__dst[0] = sub_2745E0074(v25);
  sub_2744AE7D0(__dst);
  sub_274442D88(*&__dst[0], __dst);

  v64 = v16;
  if (*(&__dst[1] + 1))
  {
    MinY = CGRectGetMinY(*&__dst[3]);
    sub_2744AE910(__dst);
  }

  else
  {
    sub_27440CB1C(__dst, &qword_28094D908, &qword_274650D20);
    MinY = 0.0;
  }

  v27 = v65;
  v28 = v66;
  sub_2744A8CDC(v20, v25, v7, MinY);
  v29 = sub_2744A9824();
  v30 = *(v29 + 16);
  if (!v30)
  {

    v61 = v67;
LABEL_28:
    OUTLINED_FUNCTION_2_15();
    v62 = v68;
    sub_2744B0DBC();
    __swift_storeEnumTagSinglePayload(v62, 0, 1, v61);
    return (*(v27 + 8))(v64, v28);
  }

  v31 = *(v67 + 20);
  v72 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator___observationRegistrar;
  v69 = v31;
  v70 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator__draggingItemElements;
  v63[1] = v29;
  v32 = v29 + 32;
  while (1)
  {
    sub_274434ED4(v32, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);
    sub_27463837C();
    if (v77[3])
    {
      break;
    }

    sub_2744AE910(v78);
    sub_27440CB1C(v77, &qword_28094D910, &qword_274650D28);
LABEL_25:
    v32 += 48;
    if (!--v30)
    {

      v28 = v66;
      v61 = v67;
      v27 = v65;
      goto LABEL_28;
    }
  }

  v33 = v7;
  memcpy(__dst, v77, sizeof(__dst));
  sub_274434ED4(v78, v76);
  sub_2744AE8A8(__dst, v77);
  swift_getKeyPath();
  v74[0] = v2;
  OUTLINED_FUNCTION_0_24();
  v35 = sub_2744AD448(&qword_28094D918, v34, &unk_274650C4C);
  sub_2746380DC();

  v74[0] = v2;
  swift_getKeyPath();
  v71 = v35;
  sub_2746380FC();

  v36 = v70;
  OUTLINED_FUNCTION_30_1(v2 + v70, &v75);
  if (!v77[3])
  {
    sub_27440CB1C(v77, &qword_28094D910, &qword_274650D28);
    v45 = v36;
    v46 = sub_274534E8C(v76);
    v7 = v33;
    if (v47)
    {
      v48 = v46;
      swift_isUniquelyReferenced_nonNull_native();
      v73 = *(v2 + v36);
      *(v2 + v36) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D920, &qword_274650D58);
      OUTLINED_FUNCTION_28_5();
      sub_27463C4CC();
      v49 = v73;
      sub_2744AE910(*(v73 + 48) + 48 * v48);
      OUTLINED_FUNCTION_25_6();
      memcpy(v74, (v50 + v48 * v51), sizeof(v74));
      sub_2744AD15C();
      sub_27463C4EC();
      sub_2744AE910(v76);
      *(v2 + v45) = v49;
    }

    else
    {
      sub_2744AE910(v76);
      memset(v74, 0, sizeof(v74));
    }

    sub_27440CB1C(v74, &qword_28094D910, &qword_274650D28);
LABEL_24:
    swift_endAccess();
    v74[0] = v2;
    swift_getKeyPath();
    sub_2746380EC();

    sub_2744AE8E0(__dst);
    sub_2744AE910(v78);
    goto LABEL_25;
  }

  memcpy(v74, v77, sizeof(v74));
  swift_isUniquelyReferenced_nonNull_native();
  v37 = v36;
  v38 = *(v2 + v36);
  v73 = v38;
  *(v2 + v37) = 0x8000000000000000;
  v39 = sub_274534E8C(v76);
  if (!__OFADD__(*(v38 + 16), (v40 & 1) == 0))
  {
    v41 = v39;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D920, &qword_274650D58);
    OUTLINED_FUNCTION_28_5();
    if (sub_27463C4CC())
    {
      v43 = sub_274534E8C(v76);
      if ((v42 & 1) != (v44 & 1))
      {
        goto LABEL_31;
      }

      v41 = v43;
    }

    v52 = v73;
    if (v42)
    {
      OUTLINED_FUNCTION_25_6();
      sub_2744AEAB4(v74, v53 + v41 * v54);
    }

    else
    {
      OUTLINED_FUNCTION_30_3(v73 + 8 * (v41 >> 6));
      sub_274434ED4(v76, v55 + 48 * v41);
      OUTLINED_FUNCTION_25_6();
      memcpy((v56 + v41 * v57), v74, 0x50uLL);
      v58 = *(v52 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_30;
      }

      *(v52 + 16) = v60;
    }

    sub_2744AE910(v76);
    *(v2 + v70) = v52;
    v7 = v33;
    goto LABEL_24;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_27463C71C();
  __break(1u);

  __break(1u);
  return result;
}

BOOL sub_2744ABFF8()
{
  sub_2744342DC();
  MinY = CGRectGetMinY(v6);
  sub_2744342DC();
  v1 = MinY < CGRectGetMinY(v4);
  sub_2744AE910(&v3);
  sub_2744AE910(v5);
  return v1;
}

uint64_t sub_2744AC0A4(double *a1, double a2, double a3)
{
  v4 = v3;
  v73 = a1;
  v72 = type metadata accessor for DragReorderingPlaceholder(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v71 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E0, &qword_274650CF0);
  OUTLINED_FUNCTION_53_0(v10);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v11);
  v13 = v67 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8, &qword_274650CF8);
  OUTLINED_FUNCTION_53_0(v14);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_17_5();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  OUTLINED_FUNCTION_29_3(v3 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy, v88);
  sub_2744342DC();
  if (__swift_getEnumTagSinglePayload(v3, 1, v16) == 1)
  {
    sub_27440CB1C(v3, &qword_28094D8E8, &qword_274650CF8);
    return 0;
  }

  (*(v18 + 32))(v22, v3, v16);
  v23 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState);
  v24 = v18;
  if (!v23)
  {
    v29 = OUTLINED_FUNCTION_26_5();
    v30(v29);
    return 0;
  }

  v25 = sub_2744A9824();
  sub_274442DA8(v25, &v85);

  v68 = v22;
  v69 = v16;
  if (*(&v86 + 1))
  {
    v79 = v85;
    v80 = v86;
    v81 = v87;
    v26 = *(v3 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_activeElements);

    v27 = sub_27452F3B4(&v79, v26);

    if (v27)
    {
      type metadata accessor for CGRect(0);
      sub_2746393EC();

      sub_2744AE910(&v79);
      v28 = *(&v86 + 1);
      goto LABEL_13;
    }

    sub_2744AE910(&v79);
  }

  else
  {
    sub_27440CB1C(&v85, &qword_28094D8F0, &unk_274650D00);
  }

  OUTLINED_FUNCTION_29_3(v4 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholder, v84);
  sub_2744342DC();
  v31 = v72;
  if (__swift_getEnumTagSinglePayload(v13, 1, v72))
  {
    sub_27440CB1C(v13, &qword_28094D8E0, &qword_274650CF0);
    v28 = 0.0;
  }

  else
  {
    v32 = v71;
    sub_2744AE94C(v13, v71);
    sub_27440CB1C(v13, &qword_28094D8E0, &qword_274650CF0);
    v28 = *(v32 + *(v31 + 20));
    sub_2744B049C(v32, type metadata accessor for DragReorderingPlaceholder);
  }

LABEL_13:
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = 0;
  v33[6] = 0;
  v33[7] = 0;
  v33[5] = 1;
  v34 = *v73;
  type metadata accessor for PseudoLayout(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890, &qword_2746509F0);
  v79.n128_u64[0] = sub_27463831C();

  sub_2744AE83C(&v79);
  v73 = (v33 + 2);

  v35 = *(v79.n128_u64[0] + 16);
  v70 = v23;
  if (v35)
  {
    v36 = v33;
    v71 = v79.n128_u64[0];
    v72 = v24;
    v37 = 0;
    v38 = v79.n128_u64[0] + 32;
    v39 = v28 * 0.5;
    do
    {
      v40 = v38 + 80 * v37++;
      sub_2744AE8A8(v40, &v79);
      v34 = v34 + v82;
      v41 = v4;
      v42 = sub_2744A9824();
      v43 = *(v42 + 16);
      v44 = (v42 + 72);
      if (v43)
      {
        while ((MEMORY[0x277C58A40](v44 - 5, &v79) & 1) == 0 || *v44 != *(&v81 + 1))
        {
          v44 += 6;
          if (!--v43)
          {
            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:

        sub_274434ED4(&v79, &v85);
        v76 = v85;
        v77 = v86;
        v78 = v87;
        sub_2744AC99C(v39 + v34, a2, a3, &v76, v36);
        sub_27440CB1C(&v76, &qword_28094A4B0, &unk_27465FF40);
        v34 = v34 + v83;
      }

      sub_2744AE8E0(&v79);
      v4 = v41;
    }

    while (v37 != v35);

    v46 = v68;
    v45 = v69;
    v24 = v72;
    v33 = v36;
  }

  else
  {

    v39 = v28 * 0.5;
    v46 = v68;
    v45 = v69;
  }

  *&v81 = 0;
  v79 = 0u;
  v80 = 0u;
  sub_2744AC99C(v39 + v34, a2, a3, &v79, v33);
  sub_27440CB1C(&v79, &qword_28094A4B0, &unk_27465FF40);
  OUTLINED_FUNCTION_29_3(v73, &v75);
  sub_2744342DC();
  if (*(&v86 + 1) == 1)
  {
    v47 = OUTLINED_FUNCTION_27_4();
    v48(v47);

    sub_27440CB1C(&v85, &qword_28094D8F8, &qword_274650D10);

    return 0;
  }

  v76 = v85;
  v77 = v86;
  v78 = v87;
  v51 = *(sub_2744A9824() + 16);

  v67[1] = v33;
  if (v51)
  {
    v73 = v51;
    v52 = v46;
    v53 = sub_2744A9824();
    v54 = *(v53 + 16);
    if (v54)
    {
      v71 = v4;
      v72 = v24;
      v74[0] = MEMORY[0x277D84F90];
      sub_27445124C(0, v54, 0);
      v55 = v74[0];
      v56 = v53 + 32;
      do
      {
        sub_274434ED4(v56, &v79);
        sub_27448E108(&v79, &v85);
        sub_2744AE910(&v79);
        v74[0] = v55;
        v58 = *(v55 + 16);
        v57 = *(v55 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_27445124C((v57 > 1), v58 + 1, 1);
          v55 = v74[0];
        }

        *(v55 + 16) = v58 + 1;
        v59 = v55 + 40 * v58;
        v60 = v85;
        v61 = v86;
        *(v59 + 64) = v87;
        *(v59 + 32) = v60;
        *(v59 + 48) = v61;
        v56 += 48;
        --v54;
      }

      while (v54);

      v45 = v69;
      v4 = v71;
      v24 = v72;
    }

    else
    {

      v55 = MEMORY[0x277D84F90];
    }

    v49 = sub_2744A69E0(v55);
    v62 = v63;

    v46 = v52;
    v51 = v73;
  }

  else
  {
    v49 = sub_2744A6BA0();
    v62 = 0;
  }

  OUTLINED_FUNCTION_29_3(v4 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, v74);
  sub_2744342DC();
  if (*(&v86 + 1))
  {
    sub_2743F45D0(&v85, &v79);
    __swift_project_boxed_opaque_existential_1(&v79, *(&v80 + 1));
    v64 = sub_2744B695C(v49, v62, v51 == 0);

    sub_2744AE940(v49, v62, v51 == 0);
    sub_27440CB1C(&v76, &qword_28094A4B0, &unk_27465FF40);
    (*(v24 + 8))(v46, v45);
    __swift_destroy_boxed_opaque_existential_1(&v79);

    return v64;
  }

  else
  {

    sub_27440CB1C(&v76, &qword_28094A4B0, &unk_27465FF40);
    v65 = OUTLINED_FUNCTION_27_4();
    v66(v65);
    sub_27440CB1C(&v85, &qword_28094D900, &qword_274650D18);
  }

  return v49;
}

uint64_t sub_2744AC99C(double a1, double a2, double a3, uint64_t a4, uint64_t a5)
{
  v5 = vabdd_f64(a3, a1);
  swift_beginAccess();
  sub_2744342DC();
  if (*(&v8 + 1) == 1)
  {
    sub_27440CB1C(&v7, &qword_28094D8F8, &qword_274650D10);
    sub_2744342DC();
    v13 = v5;
    swift_beginAccess();
  }

  else
  {
    v11[0] = v7;
    v11[1] = v8;
    v12 = v9;
    v13 = v10;
    result = sub_27440CB1C(v11, &qword_28094A4B0, &unk_27465FF40);
    if (v5 >= v10)
    {
      return result;
    }

    sub_2744342DC();
    v13 = v5;
    swift_beginAccess();
  }

  return sub_2744B0C7C();
}

uint64_t sub_2744ACB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_24();
  sub_2744AD448(v3, v4, &unk_274650C4C);
  return sub_2746380CC();
}

uint64_t sub_2744ACBB0(uint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v6 = (a3 & a6) == 255;
  if (a3 != 255 && a6 != 0xFF)
  {
    if (a3)
    {
      v6 = a6 & (a1 == a4);
    }

    else if (a6)
    {
      v6 = 0;
    }

    else
    {
      v6 = sub_2744F57D0(a1, a4) & (a2 == a5);
    }
  }

  return v6 ^ 1u;
}

uint64_t sub_2744ACC30()
{

  sub_2744B04F4(*(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_27440CB1C(v0 + 80, &qword_28094D948, &qword_274650E50);
  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_geometryProxy, &qword_28094D8E8, &qword_274650CF8);

  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholder, &qword_28094D8E0, &qword_274650CF0);

  sub_27440CB1C(v0 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate, &qword_28094D900, &qword_274650D18);

  v1 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator___observationRegistrar;
  sub_27463811C();
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_2744ACD8C()
{
  sub_2744ACC30();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2744ACE0C(uint64_t a1)
{
  sub_2744ACFC0(319, &qword_28094D880, MEMORY[0x277CDF6E0]);
  if (v1 <= 0x3F)
  {
    sub_2744ACFC0(319, &qword_28094D888, type metadata accessor for DragReorderingPlaceholder);
    if (v2 <= 0x3F)
    {
      sub_27463811C();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2744ACFC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_27463C0AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2744AD07C(uint64_t a1, __n128 a2)
{
  sub_2744AD0F8(319, a2);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2744AD0F8(uint64_t a1, __n128 a2)
{
  if (!qword_28094D8A8)
  {
    sub_2744AD15C();
    v2 = sub_27463835C();
    if (!v3)
    {
      atomic_store(v2, &qword_28094D8A8);
    }
  }
}

unint64_t sub_2744AD15C()
{
  result = qword_28094D8B0;
  if (!qword_28094D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D8B0);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_2744AD1E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
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

uint64_t sub_2744AD220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744AD280(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2744AD2C0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2744AD344(uint64_t a1)
{
  result = sub_274637EEC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2744AD448(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2744AD494()
{
  result = qword_28094D8D0;
  if (!qword_28094D8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D8D0);
  }

  return result;
}

uint64_t sub_2744AD610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBE8, &qword_274651420);
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBF0, &qword_274651428);
  v9 = *(v8 - 8);
  v39 = v8;
  v40 = v9;
  MEMORY[0x28223BE20](v8);
  v32 = &v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBF8, &qword_274651430);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = &v30 - v12;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC00, &qword_274651438) - 8;
  MEMORY[0x28223BE20](v36);
  v13 = *(v2 + 56);
  v33 = &v30 - v14;
  v34 = v13;
  if (sub_2744A9FF0(v3))
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC08, &unk_274651440);
  v17 = *(*(v16 - 8) + 16);
  v31 = v7;
  v17(v7, a1, v16);
  *&v7[*(v5 + 36)] = v15;
  memset(v46, 0, 32);
  sub_2744B1DC8(v3, __src);
  v18 = swift_allocObject();
  memcpy((v18 + 16), __src, 0x50uLL);
  sub_2744B1DC8(v3, v44);
  v19 = swift_allocObject();
  memcpy((v19 + 16), v44, 0x50uLL);
  sub_2744B1DC8(v3, v43);
  v20 = swift_allocObject();
  memcpy((v20 + 16), v43, 0x50uLL);
  sub_2744B1DC8(v3, v42);
  v21 = swift_allocObject();
  memcpy((v21 + 16), v42, 0x50uLL);
  v29 = sub_2744B1E88();
  v22 = v31;
  v23 = v32;
  sub_27463A94C();

  sub_27440CB1C(v46, &unk_28094A230, &qword_27464D1B0);
  sub_27440CB1C(v22, &qword_28094DBE8, &qword_274651420);
  __src[0] = v5;
  __src[1] = v29;
  swift_getOpaqueTypeConformance2();
  v24 = v35;
  v25 = v39;
  sub_27463A89C();
  (*(v40 + 8))(v23, v25);
  v26 = v33;
  v27 = &v33[*(v36 + 44)];
  sub_274434ED4(v3, v27);
  *(v27 + 48) = v34;
  (*(v37 + 32))(v26, v24, v38);
  sub_2743FB21C();
}

id sub_2744ADAF8(uint64_t a1, uint64_t a2)
{
  v3 = sub_27463938C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x277CDD850], v3, v5);
  v8 = sub_27463937C();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    return sub_2744AA0D0(a2);
  }

  return result;
}

uint64_t sub_2744ADC58@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t *a1)@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9D8, &qword_274650F98);
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-1] - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9E0, &unk_274650FA0);
  (*(*(v9 - 8) + 16))(v8, a1, v9);
  v8[*(v6 + 36)] = 0;
  v19[3] = type metadata accessor for DragReorderingCoordinator(0);
  v19[4] = sub_2744AD448(&qword_28094D8D8, type metadata accessor for DragReorderingCoordinator, &unk_274650C68);
  v19[0] = a2;
  sub_2744B0B40();

  sub_27463A96C();
  sub_27440CB1C(v8, &qword_28094D9D8, &qword_274650F98);
  __swift_destroy_boxed_opaque_existential_1(v19);
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D9F8, &qword_274650FB0) + 36)) = a2;
  v10 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA00, &qword_274650FB8) + 36));
  *v10 = sub_2744B0C24;
  v10[1] = a2;
  v11 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA08, &qword_274650FC0) + 36));
  *v11 = sub_2744B0C48;
  v11[1] = a2;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA10, &qword_274650FC8) + 36));
  *v12 = sub_2744B0C6C;
  v12[1] = a2;
  swift_retain_n();
  v13 = sub_27463B0CC();
  v15 = v14;
  v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DA18, &qword_274650FD0) + 36));
  *v16 = sub_2744B0C74;
  v16[1] = a2;
  v16[2] = v13;
  v16[3] = v15;
}

uint64_t sub_2744ADEDC(uint64_t *a1, uint64_t a2, void *a3)
{
  *(a2 + *a3) = *a1;
}

uint64_t sub_2744ADF20(uint64_t *a1, uint64_t a2)
{
  *(a2 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_placeholderAnchor) = *a1;
}

uint64_t sub_2744ADF68@<X0>(uint64_t a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D8E8, &qword_274650CF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_2746393DC();
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  swift_beginAccess();
  sub_2744B0C7C();
  swift_endAccess();
  result = sub_27463AB7C();
  *a3 = result;
  return result;
}

uint64_t sub_2744AE0A0()
{
  sub_2744A9950();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBD8, &qword_274651418);
  sub_27440CA78(&qword_28094DBE0, &qword_28094DBD8, &qword_274651418, MEMORY[0x277CE04B0]);
  return sub_27463A76C();
}

uint64_t sub_2744AE190(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094D950, &qword_274650E80);
  sub_2744AD15C();
  result = sub_27463B4DC();
  *a2 = result;
  return result;
}

uint64_t sub_2744AE278@<X0>(void *a1@<X2>, uint64_t *a2@<X3>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  *a4 = *a2;
}

void *sub_2744AE2D0(void *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  v3 = *result;
  if (!*result)
  {
    result = a2(&v4);
    v3 = v4;
  }

  *v2 = v3;
  return result;
}

uint64_t sub_2744AE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v26 = a1;
  v27 = a3;
  swift_getWitnessTable();
  v6 = sub_274639F5C();
  type metadata accessor for CGRect(255);
  v24[0] = v7;
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  v24[1] = sub_27463A0BC();
  v10 = sub_27463965C();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  v16 = sub_2744A9F8C();
  v17 = sub_27463AD3C();
  (*(*(a2 - 8) + 16))(v30, v4, a2);
  v18 = swift_allocObject();
  *(v18 + 16) = v9;
  *(v18 + 24) = v8;
  *(v18 + 32) = v16 & 1;
  v19 = v30[1];
  *(v18 + 40) = v30[0];
  *(v18 + 56) = v19;
  *(v18 + 72) = v30[2];
  *(v18 + 88) = v31;
  WitnessTable = swift_getWitnessTable();
  sub_2744AE6E8(v9, v17, sub_2744B1938, v18, v6, v24[0], v9, WitnessTable, v8);

  v21 = swift_getWitnessTable();
  v28 = WitnessTable;
  v29 = v21;
  swift_getWitnessTable();
  sub_2744E9688();
  v22 = *(v25 + 8);
  v22(v12, v10);
  sub_2744E9688();
  return (v22)(v15, v10);
}

uint64_t sub_2744AE5FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBC0, &qword_274651400);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_274648570;
    sub_274434ED4(a3, inited + 32);
    *(inited + 80) = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094D950, &qword_274650E80);
  sub_2744AD15C();
  result = sub_27463B4DC();
  *a4 = result;
  return result;
}

uint64_t sub_2744AE6E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  v20[0] = sub_2744AE7CC(a2, a3, a4, a6, a7, a9);
  v20[1] = v16;
  v20[2] = v17;
  v18 = sub_27463A0BC();
  MEMORY[0x277C57160](v20, a5, v18, a8);
}

uint64_t sub_2744AE7D0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CAC(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2744AE9B0(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2744AE83C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274545CC4(v2, v3, v4, v5);
    v2 = v6;
  }

  v7 = *(v2 + 16);
  v9[0] = v2 + 32;
  v9[1] = v7;
  result = sub_2744AEAEC(v9);
  *a1 = v2;
  return result;
}

uint64_t sub_2744AE940(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2744AE94C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DragReorderingPlaceholder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2744AE9B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B1A8, &qword_27464AED8);
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2744AEE80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2744AEBE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2744AEAEC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_27463C65C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_27463B88C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_2744AF66C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2744AED74(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2744AEBE0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v19 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 80 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_2744342DC();
        sub_2744342DC();
        sub_2744342DC();
        MinY = CGRectGetMinY(v16);
        sub_2744342DC();
        v11 = CGRectGetMinY(v14);
        sub_2744AE910(v13);
        sub_2744AE910(v15);
        sub_27440CB1C(v17, &qword_28094B1A8, &qword_27464AED8);
        result = sub_27440CB1C(__dst, &qword_28094B1A8, &qword_27464AED8);
        if (MinY >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v9, 0x50uLL);
        memcpy(v9, v9 - 80, 0x50uLL);
        result = memcpy(v9 - 80, __dst, 0x50uLL);
        v9 -= 80;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 80;
      --v7;
      if (v4 != v19)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_2744AED74(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v16 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 80 * a3;
    v7 = result - a3;
    while (2)
    {
      v8 = v7;
      v9 = v6;
      do
      {
        sub_2744AE8A8(v9, __dst);
        sub_2744AE8A8((v9 - 80), v13);
        v10 = __dst[5];
        v11 = v14;
        sub_2744AE8E0(v13);
        result = sub_2744AE8E0(__dst);
        if (v10 >= v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v9, 0x50uLL);
        memcpy(v9, v9 - 80, 0x50uLL);
        result = memcpy(v9 - 80, __dst, 0x50uLL);
        v9 -= 80;
      }

      while (!__CFADD__(v8++, 1));
      ++v4;
      v6 += 80;
      --v7;
      if (v4 != v16)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_2744AEE80(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_94:
    v100 = *result;
    if (!*result)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_96;
    }

    goto LABEL_131;
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &qword_28094B1A8;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v9 = *a3;
      sub_2744342DC();
      sub_2744342DC();
      v10 = v107;
      v11 = sub_2744ABFF8();
      v107 = v10;
      if (v10)
      {
        sub_27440CB1C(v105, &qword_28094B1A8, &qword_27464AED8);
        sub_27440CB1C(__dst, &qword_28094B1A8, &qword_27464AED8);
LABEL_106:

        return;
      }

      v12 = v8;
      v13 = v11;
      sub_27440CB1C(v105, v7, &qword_27464AED8);
      sub_27440CB1C(__dst, v7, &qword_27464AED8);
      v14 = 80 * v12;
      v15 = v9 + 80 * v12 + 160;
      v94 = v12;
      v16 = v12 + 2;
      do
      {
        v17 = v16;
        if (++v5 >= v4)
        {
          v5 = v4;
          if (!v13)
          {
            goto LABEL_22;
          }

          goto LABEL_11;
        }

        sub_2744342DC();
        sub_2744342DC();
        sub_2744342DC();
        MinY = CGRectGetMinY(v104);
        sub_2744342DC();
        v19 = CGRectGetMinY(v102);
        sub_2744AE910(v101);
        sub_2744AE910(v103);
        sub_27440CB1C(v105, v7, &qword_27464AED8);
        sub_27440CB1C(__dst, v7, &qword_27464AED8);
        v15 += 80;
        v16 = v17 + 1;
      }

      while (((v13 ^ (MinY >= v19)) & 1) != 0);
      if (!v13)
      {
        goto LABEL_22;
      }

LABEL_11:
      v8 = v94;
      if (v5 < v94)
      {
        goto LABEL_130;
      }

      if (v94 < v5)
      {
        v20 = v6;
        if (v4 >= v17)
        {
          v21 = v17;
        }

        else
        {
          v21 = v4;
        }

        v22 = 80 * v21 - 80;
        v23 = v5;
        v24 = v94;
        do
        {
          if (v24 != --v23)
          {
            v25 = v5;
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_135;
            }

            memcpy(__dst, (v26 + v14), 0x50uLL);
            memmove((v26 + v14), (v26 + v22), 0x50uLL);
            memcpy((v26 + v22), __dst, 0x50uLL);
            v5 = v25;
          }

          ++v24;
          v22 -= 80;
          v14 += 80;
        }

        while (v24 < v23);
        v6 = v20;
LABEL_22:
        v8 = v94;
      }
    }

    v27 = a3[1];
    if (v5 < v27)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_127;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_40:
    if (v5 < v8)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v84;
    }

    v38 = *(v6 + 2);
    v37 = *(v6 + 3);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      sub_2744503AC(v37 > 1, v38 + 1, 1, v6);
      v6 = v85;
    }

    *(v6 + 2) = v39;
    v40 = v6 + 32;
    v41 = &v6[16 * v38 + 32];
    *v41 = v8;
    *(v41 + 1) = v5;
    v98 = *result;
    if (!*result)
    {
      goto LABEL_136;
    }

    if (v38)
    {
      v100 = v6;
      while (1)
      {
        v42 = v39 - 1;
        v43 = &v40[16 * v39 - 16];
        v44 = &v6[16 * v39];
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v45 = *(v6 + 4);
          v46 = *(v6 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_61:
          if (v48)
          {
            goto LABEL_113;
          }

          v60 = *v44;
          v59 = *(v44 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_116;
          }

          v64 = *(v43 + 1);
          v65 = v64 - *v43;
          if (__OFSUB__(v64, *v43))
          {
            goto LABEL_119;
          }

          if (__OFADD__(v62, v65))
          {
            goto LABEL_121;
          }

          if (v62 + v65 >= v47)
          {
            if (v47 < v65)
            {
              v42 = v39 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        if (v39 < 2)
        {
          goto LABEL_115;
        }

        v67 = *v44;
        v66 = *(v44 + 1);
        v55 = __OFSUB__(v66, v67);
        v62 = v66 - v67;
        v63 = v55;
LABEL_76:
        if (v63)
        {
          goto LABEL_118;
        }

        v69 = *v43;
        v68 = *(v43 + 1);
        v55 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v70 < v62)
        {
          goto LABEL_90;
        }

LABEL_83:
        if (v42 - 1 >= v39)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_133;
        }

        v74 = &v40[16 * v42 - 16];
        v75 = *v74;
        v76 = v42;
        v6 = &v40[16 * v42];
        v77 = *(v6 + 1);
        v78 = v107;
        sub_2744AFD10((*a3 + 80 * *v74), (*a3 + 80 * *v6), (*a3 + 80 * v77), v98);
        v107 = v78;
        if (v78)
        {
          goto LABEL_106;
        }

        if (v77 < v75)
        {
          goto LABEL_108;
        }

        v79 = v7;
        v80 = v40;
        v81 = v5;
        v82 = *(v100 + 2);
        if (v76 > v82)
        {
          goto LABEL_109;
        }

        *v74 = v75;
        *(v74 + 1) = v77;
        if (v76 >= v82)
        {
          goto LABEL_110;
        }

        v39 = v82 - 1;
        sub_274546A38(v6 + 16, v82 - 1 - v76, v6);
        v6 = v100;
        *(v100 + 2) = v82 - 1;
        v83 = v82 > 2;
        v5 = v81;
        v40 = v80;
        v7 = v79;
        if (!v83)
        {
          goto LABEL_90;
        }
      }

      v49 = &v40[16 * v39];
      v50 = *(v49 - 8);
      v51 = *(v49 - 7);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 6);
      v53 = *(v49 - 5);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = *(v44 + 1);
      v57 = v56 - *v44;
      if (__OFSUB__(v56, *v44))
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v57);
      v58 = v47 + v57;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v58 >= v52)
      {
        v72 = *v43;
        v71 = *(v43 + 1);
        v55 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v55)
        {
          goto LABEL_125;
        }

        if (v47 < v73)
        {
          v42 = v39 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_61;
    }

LABEL_90:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_94;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_128;
  }

  if (v8 + a4 >= v27)
  {
    v28 = a3[1];
  }

  else
  {
    v28 = v8 + a4;
  }

  if (v28 < v8)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    v6 = sub_274546A20(v6, a2, a3, a4);
LABEL_96:
    v86 = v6 + 16;
    v87 = *(v6 + 2);
    while (v87 >= 2)
    {
      if (!*a3)
      {
        goto LABEL_134;
      }

      v88 = v6;
      v89 = &v6[16 * v87];
      v90 = *v89;
      v6 = &v86[2 * v87];
      v91 = *(v6 + 1);
      v92 = v107;
      sub_2744AFD10((*a3 + 80 * *v89), (*a3 + 80 * *v6), (*a3 + 80 * v91), v100);
      v107 = v92;
      if (v92)
      {
        break;
      }

      if (v91 < v90)
      {
        goto LABEL_122;
      }

      if (v87 - 2 >= *v86)
      {
        goto LABEL_123;
      }

      *v89 = v90;
      *(v89 + 1) = v91;
      a2 = *v86 - v87;
      if (*v86 < v87)
      {
        goto LABEL_124;
      }

      v87 = *v86 - 1;
      sub_274546A38(v6 + 16, a2, v6);
      *v86 = v87;
      v6 = v88;
    }

    goto LABEL_106;
  }

  if (v5 == v28)
  {
    goto LABEL_40;
  }

  v100 = v6;
  v29 = *a3;
  v30 = *a3 + 80 * v5;
  v95 = v8;
  v31 = v8 - v5;
  v97 = v28;
LABEL_33:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    sub_2744342DC();
    sub_2744342DC();
    sub_2744342DC();
    v34 = CGRectGetMinY(v104);
    sub_2744342DC();
    v35 = CGRectGetMinY(v102);
    sub_2744AE910(v101);
    sub_2744AE910(v103);
    sub_27440CB1C(v105, v7, &qword_27464AED8);
    sub_27440CB1C(__dst, v7, &qword_27464AED8);
    if (v34 >= v35)
    {
LABEL_38:
      v30 += 80;
      --v31;
      if (++v5 == v97)
      {
        v5 = v97;
        v6 = v100;
        v8 = v95;
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    if (!v29)
    {
      break;
    }

    memcpy(__dst, v33, 0x50uLL);
    memcpy(v33, v33 - 80, 0x50uLL);
    memcpy(v33 - 80, __dst, 0x50uLL);
    v33 -= 80;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_38;
    }
  }

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
}

void sub_2744AF66C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v101 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_96:
    v97 = *result;
    if (!*result)
    {
      goto LABEL_137;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v93 = v8;
      v81 = (v8 + 16);
      v82 = *(v8 + 16);
      v8 = 80;
      while (v82 >= 2)
      {
        if (!*v101)
        {
          goto LABEL_134;
        }

        v83 = (v93 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = *(v85 + 1);
        sub_2744B002C((*v101 + 80 * *v83), (*v101 + 80 * *v85), (*v101 + 80 * v86), v97);
        if (v5)
        {
          break;
        }

        if (v86 < v84)
        {
          goto LABEL_122;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_123;
        }

        *v83 = v84;
        v83[1] = v86;
        a2 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_124;
        }

        v82 = *v81 - 1;
        sub_274546A38(v85 + 16, a2, v85);
        *v81 = v82;
      }

LABEL_106:

      return;
    }

LABEL_131:
    v8 = sub_274546A20(v8, a2, a3, a4);
    goto LABEL_98;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v91 = v8;
      v10 = *v101;
      sub_2744AE8A8(*v101 + 80 * v7, __dst);
      v11 = 80 * v9;
      sub_2744AE8A8(v10 + 80 * v9, v98);
      v94 = v99;
      v97 = __dst[5];
      sub_2744AE8E0(v98);
      sub_2744AE8E0(__dst);
      v8 = v10 + 80 * v9 + 160;
      v88 = v9;
      v12 = v9 + 2;
      while (1)
      {
        v13 = v12;
        if (++v7 >= v6)
        {
          break;
        }

        sub_2744AE8A8(v8, __dst);
        sub_2744AE8A8(v8 - 80, v98);
        v14 = v5;
        v15 = __dst[5];
        v16 = v99;
        sub_2744AE8E0(v98);
        sub_2744AE8E0(__dst);
        v17 = v15 < v16;
        v5 = v14;
        v18 = !v17;
        v19 = (v97 < v94) ^ v18;
        v8 += 80;
        v12 = v13 + 1;
        if ((v19 & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      v7 = v6;
LABEL_12:
      if (v97 >= v94)
      {
        v8 = v91;
        v9 = v88;
      }

      else
      {
        if (v7 < v88)
        {
          goto LABEL_128;
        }

        if (v88 >= v7)
        {
          v8 = v91;
          v9 = v88;
        }

        else
        {
          if (v6 >= v13)
          {
            v20 = v13;
          }

          else
          {
            v20 = v6;
          }

          v21 = 80 * v20 - 80;
          v22 = v7;
          v23 = v88;
          v9 = v88;
          do
          {
            if (v23 != --v22)
            {
              v24 = *v101;
              if (!*v101)
              {
                goto LABEL_135;
              }

              memcpy(__dst, (v24 + v11), 0x50uLL);
              memmove((v24 + v11), (v24 + v21), 0x50uLL);
              memcpy((v24 + v21), __dst, 0x50uLL);
            }

            ++v23;
            v21 -= 80;
            v11 += 80;
          }

          while (v23 < v22);
          v8 = v91;
        }
      }
    }

    v25 = v101[1];
    if (v7 < v25)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_127;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v7 < v9)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2744503AC(0, *(v8 + 16) + 1, 1, v8);
      v8 = v79;
    }

    v37 = *(v8 + 16);
    v36 = *(v8 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      sub_2744503AC(v36 > 1, v37 + 1, 1, v8);
      v8 = v80;
    }

    *(v8 + 16) = v38;
    v39 = v8 + 32;
    v40 = (v8 + 32 + 16 * v37);
    *v40 = v9;
    v40[1] = v7;
    v97 = *result;
    if (!*result)
    {
      goto LABEL_136;
    }

    if (v37)
    {
      v96 = v7;
      while (1)
      {
        v41 = v38 - 1;
        v42 = (v39 + 16 * (v38 - 1));
        v43 = (v8 + 16 * v38);
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v44 = *(v8 + 32);
          v45 = *(v8 + 40);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_64:
          if (v47)
          {
            goto LABEL_113;
          }

          v59 = *v43;
          v58 = v43[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_116;
          }

          v63 = v42[1];
          v64 = v63 - *v42;
          if (__OFSUB__(v63, *v42))
          {
            goto LABEL_119;
          }

          if (__OFADD__(v61, v64))
          {
            goto LABEL_121;
          }

          if (v61 + v64 >= v46)
          {
            if (v46 < v64)
            {
              v41 = v38 - 2;
            }

            goto LABEL_86;
          }

          goto LABEL_79;
        }

        if (v38 < 2)
        {
          goto LABEL_115;
        }

        v66 = *v43;
        v65 = v43[1];
        v54 = __OFSUB__(v65, v66);
        v61 = v65 - v66;
        v62 = v54;
LABEL_79:
        if (v62)
        {
          goto LABEL_118;
        }

        v68 = *v42;
        v67 = v42[1];
        v54 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v54)
        {
          goto LABEL_120;
        }

        if (v69 < v61)
        {
          goto LABEL_93;
        }

LABEL_86:
        if (v41 - 1 >= v38)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (!*v101)
        {
          goto LABEL_133;
        }

        v73 = (v39 + 16 * (v41 - 1));
        v74 = *v73;
        v75 = v41;
        v76 = v39 + 16 * v41;
        v77 = *(v76 + 8);
        sub_2744B002C((*v101 + 80 * *v73), (*v101 + 80 * *v76), (*v101 + 80 * v77), v97);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v77 < v74)
        {
          goto LABEL_108;
        }

        v5 = v39;
        v78 = v8;
        v8 = *(v8 + 16);
        if (v75 > v8)
        {
          goto LABEL_109;
        }

        *v73 = v74;
        v73[1] = v77;
        if (v75 >= v8)
        {
          goto LABEL_110;
        }

        v38 = v8 - 1;
        sub_274546A38((v76 + 16), v8 - 1 - v75, v76);
        *(v78 + 16) = v8 - 1;
        v17 = v8 > 2;
        v8 = v78;
        v39 = v5;
        v5 = 0;
        v7 = v96;
        if (!v17)
        {
          goto LABEL_93;
        }
      }

      v48 = v39 + 16 * v38;
      v49 = *(v48 - 64);
      v50 = *(v48 - 56);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_111;
      }

      v53 = *(v48 - 48);
      v52 = *(v48 - 40);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_112;
      }

      v55 = v43[1];
      v56 = v55 - *v43;
      if (__OFSUB__(v55, *v43))
      {
        goto LABEL_114;
      }

      v54 = __OFADD__(v46, v56);
      v57 = v46 + v56;
      if (v54)
      {
        goto LABEL_117;
      }

      if (v57 >= v51)
      {
        v71 = *v42;
        v70 = v42[1];
        v54 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v54)
        {
          goto LABEL_125;
        }

        if (v46 < v72)
        {
          v41 = v38 - 2;
        }

        goto LABEL_86;
      }

      goto LABEL_64;
    }

LABEL_93:
    v6 = v101[1];
    if (v7 >= v6)
    {
      goto LABEL_96;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_129;
  }

  if (v9 + a4 >= v25)
  {
    v26 = v101[1];
  }

  else
  {
    v26 = (v9 + a4);
  }

  if (v26 < v9)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v7 == v26)
  {
    goto LABEL_43;
  }

  v92 = v8;
  v95 = v5;
  v27 = *v101;
  v28 = v9;
  v29 = *v101 + 80 * v7;
  v89 = v28;
  v30 = v28 - v7;
  v97 = v26;
LABEL_36:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    sub_2744AE8A8(v32, __dst);
    sub_2744AE8A8((v32 - 80), v98);
    v33 = __dst[5];
    v34 = v99;
    sub_2744AE8E0(v98);
    sub_2744AE8E0(__dst);
    if (v33 >= v34)
    {
LABEL_41:
      ++v7;
      v29 += 80;
      --v30;
      if (v7 == v97)
      {
        v7 = v97;
        v8 = v92;
        v5 = v95;
        v9 = v89;
        goto LABEL_43;
      }

      goto LABEL_36;
    }

    if (!v27)
    {
      break;
    }

    memcpy(__dst, v32, 0x50uLL);
    memcpy(v32, v32 - 80, 0x50uLL);
    memcpy(v32 - 80, __dst, 0x50uLL);
    v32 -= 80;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_41;
    }
  }

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
}

uint64_t sub_2744AFD10(char *a1, char *a2, char *a3, char *a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 80;
  v10 = (a3 - a2) / 80;
  if (v9 < v10)
  {
    sub_2744510EC(a1, (a2 - a1) / 80, a4);
    v11 = &v5[80 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_28;
      }

      sub_2744342DC();
      sub_2744342DC();
      sub_2744342DC();
      MinY = CGRectGetMinY(v30);
      sub_2744342DC();
      v14 = CGRectGetMinY(v28);
      sub_2744AE910(v27);
      sub_2744AE910(v29);
      sub_27440CB1C(v31, &qword_28094B1A8, &qword_27464AED8);
      sub_27440CB1C(v32, &qword_28094B1A8, &qword_27464AED8);
      if (MinY >= v14)
      {
        break;
      }

      v15 = v7;
      v16 = v8 == v7;
      v7 += 80;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v8 += 80;
    }

    v15 = v5;
    v16 = v8 == v5;
    v5 += 80;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v8, v15, 0x50uLL);
    goto LABEL_13;
  }

  v33 = v4;
  sub_2744510EC(a2, (a3 - a2) / 80, a4);
  v17 = &v5[80 * v10];
LABEL_15:
  v18 = v7 - 80;
  v6 -= 80;
  for (i = v17 - 80; ; i -= 80)
  {
    v11 = i + 80;
    if (i + 80 <= v5 || v7 <= v8)
    {
      break;
    }

    sub_2744342DC();
    sub_2744342DC();
    sub_2744342DC();
    v21 = CGRectGetMinY(v30);
    sub_2744342DC();
    v22 = CGRectGetMinY(v28);
    sub_2744AE910(v27);
    sub_2744AE910(v29);
    sub_27440CB1C(v31, &qword_28094B1A8, &qword_27464AED8);
    sub_27440CB1C(v32, &qword_28094B1A8, &qword_27464AED8);
    v23 = v6 + 80;
    if (v21 < v22)
    {
      v17 = i + 80;
      v16 = v23 == v7;
      v7 -= 80;
      if (!v16)
      {
        memmove(v6, v18, 0x50uLL);
        v7 = v18;
      }

      goto LABEL_15;
    }

    if (v11 != v23)
    {
      memmove(v6, i, 0x50uLL);
    }

    v6 -= 80;
  }

LABEL_28:
  v24 = (v11 - v5) / 80;
  if (v7 != v5 || v7 >= &v5[80 * v24])
  {
    memmove(v7, v5, 80 * v24);
  }

  return 1;
}

uint64_t sub_2744B002C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 80;
  v9 = (a3 - a2) / 80;
  if (v8 < v9)
  {
    sub_2744510EC(a1, (a2 - a1) / 80, a4);
    v10 = &v4[80 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_27;
      }

      sub_2744AE8A8(v6, v27);
      sub_2744AE8A8(v4, v25);
      v12 = v28;
      v13 = v26;
      sub_2744AE8E0(v25);
      sub_2744AE8E0(v27);
      if (v12 >= v13)
      {
        break;
      }

      v14 = v6;
      v15 = v7 == v6;
      v6 += 80;
      if (!v15)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 80;
    }

    v14 = v4;
    v15 = v7 == v4;
    v4 += 80;
    if (v15)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v14, 0x50uLL);
    goto LABEL_13;
  }

  sub_2744510EC(a2, (a3 - a2) / 80, a4);
  v16 = &v4[80 * v9];
LABEL_15:
  v17 = v6 - 80;
  while (1)
  {
    v5 -= 80;
    v16 -= 80;
    v10 = v16 + 80;
    if (v16 + 80 <= v4 || v6 <= v7)
    {
      break;
    }

    sub_2744AE8A8(v16, v27);
    sub_2744AE8A8((v6 - 80), v25);
    v19 = v28;
    v20 = v26;
    sub_2744AE8E0(v25);
    sub_2744AE8E0(v27);
    v21 = v5 + 80;
    if (v19 < v20)
    {
      v16 += 80;
      v15 = v21 == v6;
      v6 -= 80;
      if (!v15)
      {
        memmove(v5, v17, 0x50uLL);
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != v21)
    {
      memmove(v5, v16, 0x50uLL);
    }
  }

LABEL_27:
  v22 = (v10 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v22])
  {
    memmove(v6, v4, 80 * v22);
  }

  return 1;
}

void *sub_2744B022C(void (*a1)(_OWORD *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D930, &qword_274650D70);
  result = sub_27463C5EC();
  v6 = result;
  v7 = 0;
  v30 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      sub_274434ED4(*(v30 + 48) + 48 * v18, v35);
      v36 = *(*(v30 + 56) + 8 * v18);
      v32 = v35[0];
      v33 = v35[1];
      v34 = v35[2];

      a1(v31, &v36);
      if (v3)
      {
        break;
      }

      v6 = v28;
      *(v27 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (v28[6] + 48 * v18);
      v20 = v32;
      v21 = v34;
      v19[1] = v33;
      v19[2] = v21;
      *v19 = v20;
      v22 = (v28[7] + 32 * v18);
      v23 = v31[1];
      *v22 = v31[0];
      v22[1] = v23;
      v24 = v28[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_17;
      }

      v28[2] = v26;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    sub_2744AE910(&v32);

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B049C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2744B04F4(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2744AE940(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744B050C(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_2744B0524(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_2744B0524(uint64_t result, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return v3;
}

uint64_t sub_2744B05B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D948, &qword_274650E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_2744B0694(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    v1 = sub_27463C7CC();
    if (v3 <= 0x3F)
    {
      v1 = type metadata accessor for DragReorderingCoordinator(319);
      if (v4 <= 0x3F)
      {
        v1 = sub_274431930();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

uint64_t sub_2744B0790(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744B08DC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_2744B0B40()
{
  result = qword_28094D9E8;
  if (!qword_28094D9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9D8, &qword_274650F98);
    sub_27440CA78(&qword_28094D9F0, &qword_28094D9E0, &unk_274650FA0, MEMORY[0x277CE04B0]);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D9E8);
  }

  return result;
}

uint64_t sub_2744B0C7C()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return v0;
}

uint64_t sub_2744B0CEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  v15[0] = v2[2];
  v5 = v15[0];
  v15[1] = v6;
  v15[2] = v7;
  v15[3] = v8;
  v15[4] = v9;
  v15[5] = v10;
  v11 = type metadata accessor for DragReorderableForEach(0, v15);
  OUTLINED_FUNCTION_53_0(v11);
  v13 = v2 + ((*(v12 + 80) + 64) & ~*(v12 + 80));

  return sub_2744A8200(a1, v13, v5, v6, v7, v8, v9, v10, a2);
}

uint64_t sub_2744B0DBC()
{
  OUTLINED_FUNCTION_57();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_5_0();
  v3(v2);
  return v0;
}

uint64_t sub_2744B0E54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744B0E90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2744B0ED0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2744B0F3C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DragReorderingPlaceholder(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744B0FF4(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = ((*(v4 + 80) + 48) & ~*(v4 + 80)) + *(v4 + 64);
  v6 = ((*(*(sub_274637EEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_23:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_23;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    switch(v8)
    {
      case 2:
        LODWORD(v8) = *a1;
        break;
      case 3:
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v8) = *a1;
        break;
      default:
        LODWORD(v8) = *a1;
        break;
    }
  }

  return (v8 | v13) + 255;
}

void sub_2744B11C8(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = ((*(v6 + 80) + 48) & ~*(v6 + 80)) + *(v6 + 64);
  v8 = ((*(*(sub_274637EEC() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else if (v9 <= 3)
  {
    v14 = ((a3 + ~(-1 << v10) - 254) >> v10) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    if (v9 < 4)
    {
      v13 = (v12 >> v10) + 1;
      if (v8 != -1)
      {
        v16 = v12 & ~(-1 << v10);
        bzero(a1, v9);
        if (v9 == 3)
        {
          *a1 = v16;
          a1[2] = BYTE2(v16);
        }

        else if (v9 == 2)
        {
          *a1 = v16;
        }

        else
        {
          *a1 = v12;
        }
      }
    }

    else
    {
      bzero(a1, v8 + 1);
      *a1 = v12;
      v13 = 1;
    }

    switch(v11)
    {
      case 1:
        a1[v9] = v13;
        break;
      case 2:
        *&a1[v9] = v13;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v9] = v13;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v9] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v9] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v8] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_2744B141C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_2744B145C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_2744B14C0()
{
  result = qword_28094DB50;
  if (!qword_28094DB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA18, &qword_274650FD0);
    sub_2744B1578();
    sub_27440CA78(&qword_28094DBB0, &qword_28094DBB8, &qword_2746511F8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB50);
  }

  return result;
}

unint64_t sub_2744B1578()
{
  result = qword_28094DB58;
  if (!qword_28094DB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA10, &qword_274650FC8);
    sub_2744B1630();
    sub_27440CA78(&qword_28094DBA0, &qword_28094DBA8, &qword_2746511F0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB58);
  }

  return result;
}

unint64_t sub_2744B1630()
{
  result = qword_28094DB60;
  if (!qword_28094DB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA08, &qword_274650FC0);
    sub_2744B16E8();
    sub_27440CA78(&qword_28094DB90, &qword_28094DB98, &qword_2746511E8, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB60);
  }

  return result;
}

unint64_t sub_2744B16E8()
{
  result = qword_28094DB68;
  if (!qword_28094DB68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA00, &qword_274650FB8);
    sub_2744B17A0();
    sub_27440CA78(&qword_28094DB80, &qword_28094DB88, &qword_2746511E0, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB68);
  }

  return result;
}

unint64_t sub_2744B17A0()
{
  result = qword_28094DB70;
  if (!qword_28094DB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9F8, &qword_274650FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D9D8, &qword_274650F98);
    sub_2744B0B40();
    swift_getOpaqueTypeConformance2();
    sub_2744B1868();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB70);
  }

  return result;
}

unint64_t sub_2744B1868()
{
  result = qword_28094DB78;
  if (!qword_28094DB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DB78);
  }

  return result;
}

uint64_t sub_2744B1948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_274434ED4(a2, a1);
}

uint64_t sub_2744B198C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2744B1948(a2, a1, *(a1 + 48));
  *(a2 + 48) = result;
  return result;
}

uint64_t sub_2744B19C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_2744B1A34(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_2744B1A34(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_2744B1C30(a1, a2, a3, v37);
  v33 = v37[0];
  v34 = v37[1];
  v35 = v37[2];
  v36 = v38;

  while (1)
  {
    sub_2744B1C6C(&v29);
    if (!*(&v30 + 1))
    {
      sub_274406A24(v33);
    }

    v26 = v29;
    v27 = v30;
    v28 = v31;
    v7 = v32;
    v8 = *a5;
    v10 = sub_274534E8C(&v26);
    v11 = *(v8 + 16);
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (*(v8 + 24) >= v13)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DBC8, &qword_274651408);
        sub_27463C4DC();
      }
    }

    else
    {
      sub_274431278(v13, a4 & 1);
      v15 = sub_274534E8C(&v26);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_17;
      }

      v10 = v15;
    }

    v17 = *a5;
    if (v14)
    {
      sub_2744AE910(&v26);
      *(*(v17 + 56) + 8 * v10) = v7;
    }

    else
    {
      OUTLINED_FUNCTION_30_3(v17 + 8 * (v10 >> 6));
      v19 = (v18 + 48 * v10);
      v20 = v26;
      v21 = v28;
      v19[1] = v27;
      v19[2] = v21;
      *v19 = v20;
      *(*(v17 + 56) + 8 * v10) = v7;
      v22 = *(v17 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_16;
      }

      *(v17 + 16) = v24;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_2744B1C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

void sub_2744B1C6C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    sub_274434ED4(*(v3 + 48) + 48 * (__clz(__rbit64(v7)) | (v8 << 6)), &v17);
    v15 = v18;
    v16 = v17;
    v11 = v19;
    v10 = v20;

    v13 = v15;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (*(&v13 + 1))
    {
      v14 = v1[5];
      v18 = v13;
      v17 = v16;
      v19 = v11;
      v20 = v10;
      v21 = v12;
      v14(&v17);
      sub_27440CB1C(&v17, &qword_28094DBD0, &qword_274651410);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v9 = 0;
        v13 = 0uLL;
        v16 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t objectdestroy_160Tm()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

unint64_t sub_2744B1E88()
{
  result = qword_28094DC10;
  if (!qword_28094DC10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBE8, &qword_274651420);
    sub_27440CA78(&qword_28094DC18, &qword_28094DC08, &unk_274651440, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DC10);
  }

  return result;
}

unint64_t sub_2744B1F40()
{
  result = qword_28094DC20;
  if (!qword_28094DC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC00, &qword_274651438);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBF0, &qword_274651428);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DBE8, &qword_274651420);
    sub_2744B1E88();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_27440CA78(&qword_28094DC28, &unk_28094DC30, &qword_274651450, &unk_2746513B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DC20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_17_5()
{

  return sub_2746393DC();
}

uint64_t OUTLINED_FUNCTION_24_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{

  return sub_2746380EC();
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return swift_getKeyPath();
}

void sub_2744B2260()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  v4 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CD90, &unk_27464E5E0);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v3, v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E138, &qword_274651C18);
  sub_274412C20(v1[1], v3 + v6[12], &unk_28094C9F0, &unk_274651C20);
  sub_274412C20(v1[2], v3 + v6[16], &unk_28094C9F0, &unk_274651C20);
  sub_274412C20(v1[3], v3 + v6[20], &qword_28094C9E8, &unk_27464E5D0);
  sub_274412C20(v1[4], v3 + v6[24], &unk_28094E140, &unk_27464E5C0);
  v7 = sub_27463AF6C();
  OUTLINED_FUNCTION_7();
  v9 = *(v8 + 16);
  OUTLINED_FUNCTION_20_6();
  v9();
  sub_274412C20(v1[6], v3 + v6[32], &unk_28094C9D0, &qword_27464E5B8);
  (v9)(v3 + v6[36], v1[7], v7);
  sub_274412C20(v1[8], v3 + v6[40], &qword_28094E150, &qword_27464E5B0);
  OUTLINED_FUNCTION_56_0();
}

void sub_2744B2408()
{
  OUTLINED_FUNCTION_55_1();
  v1 = v0;
  v3 = v2;
  sub_274412C20(*v0, v2, &qword_28094E050, &qword_274650280);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E058, &qword_274651B38);
  v5 = sub_27463AF6C();
  OUTLINED_FUNCTION_7();
  v7 = *(v6 + 16);
  OUTLINED_FUNCTION_20_6();
  v7();
  sub_274412C20(v1[2], v3 + v4[16], &unk_28094E060, &unk_274651B40);
  sub_274412C20(v1[3], v3 + v4[20], &qword_28094D2C8, &unk_274650270);
  (v7)(v3 + v4[24], v1[4], v5);
  sub_274412C20(v1[5], v3 + v4[28], &qword_28094E070, &unk_274651B50);
  OUTLINED_FUNCTION_56_0();
}

uint64_t sub_2744B2528@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = *v2;
  v3 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = v2[4];
  LOBYTE(v2) = *(v2 + 40);
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v14 = v8[4];
  v15 = *v9;
  v16 = *(v8 + 40);
  v20 = *(v9 + 8);
  LOBYTE(v8) = *(*a1 + 8);
  *a2 = **a1;
  *(a2 + 8) = v8;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  *(a2 + 48) = v7;
  *(a2 + 56) = v2;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v14;
  *(a2 + 104) = v16;
  *(a2 + 112) = v15;
  *(a2 + 120) = v20;
  sub_27440B094(v4, v3, v5);

  v17 = OUTLINED_FUNCTION_24_5();

  return sub_2744C8580(v17, v18, v12, v13, v14);
}

id sub_2744B2618@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_274412C20(*a1, a2, &qword_28094DED8, &qword_274651860);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF08, &qword_274651980);
  v5 = v4[12];
  v6 = a1[1];
  memcpy(__dst, v6, 0x61uLL);
  memmove((a2 + v5), v6, 0x61uLL);
  sub_274412C20(a1[2], a2 + v4[16], &qword_28094DEC0, &qword_274651848);
  v7 = a2 + v4[20];
  v9 = a1[3];
  v8 = a1[4];
  v10 = *(v9 + 16);
  *v17 = *v9;
  *v7 = *v9;
  *(v7 + 16) = v10;
  sub_274412C20(v8, a2 + v4[24], &unk_28094DEB0, &qword_274651838);
  v11 = a2 + v4[28];
  v12 = a1[5];
  v13 = *(v12 + 16);
  v16 = *v12;
  *v11 = *v12;
  *(v11 + 16) = v13;
  sub_274412C20(__dst, v18, &unk_28094DEF0, &unk_2746518E0);
  v14 = v16;

  return v17[0];
}

uint64_t sub_2744B2774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = *(*a1 + 24);
  v5 = *(*a1 + 16);
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[3];
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *v11;
  v14 = *(v11 + 8);
  v16 = *(v11 + 24);
  v15 = *(v11 + 16);
  v18 = *(v12 + 8);
  v19 = *v12;
  v20 = *(v12 + 24);
  v21 = *(v12 + 16);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v13;
  *(a2 + 72) = v14;
  *(a2 + 80) = v15;
  *(a2 + 88) = v16;
  *(a2 + 96) = v19;
  *(a2 + 104) = v18;
  *(a2 + 112) = v21;
  *(a2 + 120) = v20;
  sub_27440B094(v4, v3, v5);

  sub_274483EE8(v7, v8, v9, v10);
  sub_27440B094(v13, v14, v15);

  sub_27440B094(v19, v18, v21);
}

uint64_t sub_2744B288C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = *(*a1 + 8);
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *v7;
  v10 = v7[1];
  v12 = v7[3];
  v11 = *(v7 + 16);
  v13 = *v8;
  v17 = *(v8 + 8);
  *a2 = **a1;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v9;
  *(a2 + 48) = v10;
  *(a2 + 56) = v11;
  *(a2 + 64) = v12;
  *(a2 + 72) = v13;
  *(a2 + 80) = v17;

  v14 = OUTLINED_FUNCTION_24_5();
  sub_27440B094(v14, v15, v11);
}

void sub_2744B29A0()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8(v6);
  OUTLINED_FUNCTION_59_1();
  while (1)
  {
    if (v0 == v1)
    {
LABEL_11:
      OUTLINED_FUNCTION_23();
      return;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x277C58B20](v1, v7);
      goto LABEL_6;
    }

    if (v1 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v9 = *(v7 + 8 * v1 + 32);
LABEL_6:
    v10 = v9;
    sub_274412734(0, v5, v3);
    v11 = sub_27463BF7C();

    if (v11)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2744B2AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  v4 = *(v3 + 16);
  for (i = v3 + 32; ; i += 40)
  {
    if (v4 == v2)
    {
      return 0;
    }

    if (MEMORY[0x277C58A40](i, v1))
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_2744B2B2C()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v4(v2);
  OUTLINED_FUNCTION_59_1();
  while (1)
  {
    if (v0 == v1)
    {
LABEL_11:
      OUTLINED_FUNCTION_23();
      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_24_5();
      MEMORY[0x277C58B20](v8);
      goto LABEL_6;
    }

    if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

LABEL_6:
    v5 = sub_274599D28();
    v6 = sub_274599D28();

    if (v5 == v6)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v1++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_2744B2C20(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_45_2();
  type metadata accessor for WorkflowEditorOptions(v2);
  OUTLINED_FUNCTION_2_16();
  sub_2744C9840(v3, v4);
  OUTLINED_FUNCTION_21_2();
  *(v1 + 32) = sub_27463979C();
  *(v1 + 40) = v5;
  sub_27444A444();
  sub_2746390FC();
  *(v1 + 72) = swift_getKeyPath();
  *(v1 + 80) = 0;
  v6 = type metadata accessor for WorkflowView(0);
  type metadata accessor for DragReorderingCoordinator(0);
  sub_27463B15C();
  v7 = v6[10];
  *(v1 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[11];
  v9 = [objc_opt_self() systemShortcutsUserDefaults];
  *(v1 + v8) = sub_27463902C();
  v10 = (v1 + v6[12]);
  sub_27463883C();
  swift_allocObject();
  sub_27463882C();
  sub_27463ACDC();
  *v10 = v16;
  v10[1] = v17;
  type metadata accessor for ActionList(0);
  sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);

  *v1 = sub_27463950C();
  *(v1 + 8) = v11;
  type metadata accessor for WorkflowSelectionCoordinator(0);
  sub_2744C9840(&qword_28094DC88, type metadata accessor for WorkflowSelectionCoordinator);

  OUTLINED_FUNCTION_20_6();
  v12 = sub_27463950C();
  v14 = v13;

  *(v1 + 16) = v12;
  *(v1 + 24) = v14;
  return result;
}

BOOL sub_2744B2E8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  return v2 == v1;
}

void *sub_2744B2F30()
{
  sub_2744C899C();

  return sub_274639ACC();
}

uint64_t sub_2744B2F78(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_24_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_48_2();
  sub_274412C20(a1, v1, &unk_28094D7C0, &unk_274651B60);
  sub_2744C899C();
  sub_274639ADC();
  return sub_2744C9C24(a1, &unk_28094D7C0);
}

uint64_t *sub_2744B302C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v2[5] = v10;
  v2[6] = sub_2744CA97C(&qword_28094DF10, &qword_28094C9E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  (*(v6 + 16))(boxed_opaque_existential_1, a1, v5);
  v12 = *(v6 + 32);
  v12(v9, a1, v5);
  v13 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v12((v14 + v13), v9, v5);
  *(v14 + ((v7 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  v2[7] = sub_2744C76B8;
  v2[8] = v14;
  return v2;
}

void *sub_2744B31D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  result = sub_27463BAEC();
  v4 = *(&v16[0] + 1);
  v3 = *&v16[0];
  if (*&v16[0] == *(&v16[0] + 1))
  {
    return MEMORY[0x277D84F90];
  }

  if (*(&v16[0] + 1) < *&v16[0])
  {
    __break(1u);
  }

  else if (*&v16[0] < *(&v16[0] + 1))
  {
    v5 = MEMORY[0x277D84F90];
    do
    {
      v21 = v3;
      v6 = sub_27463BB3C();
      v8 = v7[1];
      v18 = *v7;
      v19 = v8;
      v20 = *(v7 + 1);
      v9 = v8;
      v6(v16, 0);
      swift_getAtKeyPath();

      v18 = v22;
      sub_27444A444();
      sub_27463C31C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2744504A4();
        v5 = v14;
      }

      v10 = *(v5 + 16);
      if (v10 >= *(v5 + 24) >> 1)
      {
        sub_2744504A4();
        v5 = v15;
      }

      ++v3;
      *(v5 + 16) = v10 + 1;
      v11 = v5 + 40 * v10;
      v12 = v16[0];
      v13 = v16[1];
      *(v11 + 64) = v17;
      *(v11 + 32) = v12;
      *(v11 + 48) = v13;
    }

    while (v4 != v3);
    return v5;
  }

  __break(1u);
  return result;
}

void sub_2744B33C8()
{
  OUTLINED_FUNCTION_55_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_48_2();
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_15_2();
  sub_274638FAC();

  sub_27463839C();
  (*(v3 + 8))(v0, v1);
  v5 = v6;
  sub_27451DF10(MEMORY[0x277D84FA0]);
  sub_27451F32C(&v6);

  OUTLINED_FUNCTION_56_0();
}

void sub_2744B3508()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  v78 = v3;
  v5 = v4;
  v6 = ~v1;
  v7 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v75 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  if (!v6 || (v2 & 1) != 0)
  {
    sub_27451F220();
LABEL_4:
    OUTLINED_FUNCTION_23();
    return;
  }

  v73 = v7;
  v74 = v5;
  v71 = v12;
  v72 = v15;
  v25 = *(v0 + 16);
  v26 = &v70 - v24;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  v27 = sub_2746382EC();
  v28 = *(v18 + 8);
  v29 = OUTLINED_FUNCTION_35_2();
  v28(v29);
  swift_getKeyPath();
  swift_getKeyPath();
  v77 = v25;
  sub_274638FAC();

  v30 = sub_27463834C();
  v76 = v26;
  v31 = OUTLINED_FUNCTION_35_2();
  v79 = v18 + 8;
  v28(v31);
  if (v30 >= v27)
  {
    v32 = v28;
    v33 = v78;
    if (v27 > v78 || v30 < v78)
    {
      goto LABEL_4;
    }

    v35 = [*(v77 + 24) actions];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    OUTLINED_FUNCTION_21_2();
    v36 = sub_27463B81C();

    v84 = v36;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    OUTLINED_FUNCTION_17_6();
    sub_2744CA97C(v37, v38);
    OUTLINED_FUNCTION_34_3();
    sub_27463BACC();
    OUTLINED_FUNCTION_34_3();
    sub_27463BB0C();
    v39 = sub_27463BAFC();
    v40 = OUTLINED_FUNCTION_35_2();
    v32(v40);
    if (v39 <= v33)
    {
      v70 = sub_274453594();
    }

    else
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274638FAC();

      sub_27463839C();
      v41 = OUTLINED_FUNCTION_35_2();
      v32(v41);
      v70 = v81;
    }

    v78 = v32;
    v42 = *(v74 + 16);
    v43 = MEMORY[0x277D84F90];
    if (!v42)
    {
LABEL_27:
      v51 = v43[2];
      if (v51)
      {
        v83 = MEMORY[0x277D84F90];
        sub_27445126C(0, v51, 0);
        v52 = 32;
        v53 = v83;
        do
        {
          swift_getKeyPath();
          swift_getKeyPath();
          sub_274638FAC();

          sub_27463839C();
          v54 = OUTLINED_FUNCTION_35_2();
          v78(v54);
          v55 = v81;

          v83 = v53;
          v57 = v53[2];
          v56 = v53[3];
          if (v57 >= v56 >> 1)
          {
            sub_27445126C((v56 > 1), v57 + 1, 1);
            v53 = v83;
          }

          v53[2] = v57 + 1;
          v53[v57 + 4] = v55;
          v52 += 8;
          --v51;
        }

        while (v51);
      }

      else
      {

        v53 = MEMORY[0x277D84F90];
      }

      sub_2744C9840(&qword_28094FE40, MEMORY[0x277CC9A28]);
      v58 = v71;
      v59 = v73;
      sub_27463C1DC();
      v60 = v53[2];
      v61 = v75;
      if (v60)
      {
        v62 = v53 + 4;
        do
        {
          v63 = *v62++;
          v83 = v63;
          sub_27463C1AC();
          --v60;
        }

        while (v60);
      }

      v64 = v72;
      (*(v61 + 32))(v72, v58, v59);
      v65 = OUTLINED_FUNCTION_5_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      OUTLINED_FUNCTION_7_1();
      sub_2744CA97C(v67, v68);
      sub_27463B5AC();
      (*(v61 + 8))(v64, v59);
      sub_27463BDCC();
      v69 = sub_274588EFC();
      sub_27451F424();

      goto LABEL_4;
    }

    v44 = (v74 + 32);
    while (1)
    {
      v46 = *v44++;
      v45 = v46;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274638FAC();

      OUTLINED_FUNCTION_34_3();
      sub_27463BACC();
      OUTLINED_FUNCTION_34_3();
      sub_27463BB0C();
      (v78)(v22, v16);
      if (v82 < v83)
      {
        break;
      }

      if (v45 >= v83 && v45 < v82)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v80 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_27445126C(0, v43[2] + 1, 1);
          v43 = v80;
        }

        v50 = v43[2];
        v49 = v43[3];
        if (v50 >= v49 >> 1)
        {
          sub_27445126C((v49 > 1), v50 + 1, 1);
          v43 = v80;
        }

        v43[2] = v50 + 1;
        v43[v50 + 4] = v45;
      }

      if (!--v42)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2744B3CA4()
{
  OUTLINED_FUNCTION_24();
  v2 = v0;
  v68 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  OUTLINED_FUNCTION_53_0(v8);
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v61 - v10;
  sub_27463B1EC();
  OUTLINED_FUNCTION_1();
  v66 = v13;
  v67 = v12;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3_0();
  v64 = v15 - v14;
  v65 = sub_27463B21C();
  OUTLINED_FUNCTION_1();
  v63 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v62 = v19 - v18;
  v20 = sub_27463B1FC();
  OUTLINED_FUNCTION_1();
  v61 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_18();
  v23 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_3_0();
  v29 = v28 - v27;
  if (v5)
  {
    v30 = [*(*(v2 + 16) + 24) actionTree];
    sub_2744B6B1C();
    v32 = [v30 validIndexForInsertingActionAtIndex_];

    v33 = *(v2 + 24) + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
LABEL_15:
      OUTLINED_FUNCTION_23();
      return;
    }

    v35 = Strong;
    v36 = *(v33 + 8);
    v37 = v68;
    if (sub_274453594())
    {
      sub_2744535A4();
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x277C58B20](0, v37);
      }

      else
      {
        v38 = *(v37 + 32);
      }

      v39 = v38;
      sub_274412734(0, &qword_28094E040, 0x277D7C098);
      if ([v39 canLoadObjectOfClass_])
      {
        sub_274412734(0, &qword_28094AF90, 0x277D85C78);
        (*(v61 + 104))(v1, *MEMORY[0x277D851C8], v20);
        v68 = sub_27463BD0C();
        v40 = OUTLINED_FUNCTION_24_5();
        v41(v40);
        v42 = swift_allocObject();
        v42[2] = v39;
        v42[3] = v35;
        v42[4] = v36;
        v42[5] = v32;
        v70[4] = sub_2744C8908;
        v70[5] = v42;
        v70[0] = MEMORY[0x277D85DD0];
        v70[1] = 1107296256;
        v70[2] = sub_27443E0E8;
        v70[3] = &block_descriptor_15;
        v43 = _Block_copy(v70);
        v44 = v39;
        swift_unknownObjectRetain();
        v45 = v62;
        sub_27463B20C();
        v69 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_21_7();
        sub_2744C9840(v46, v47);
        v48 = OUTLINED_FUNCTION_35_2();
        __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
        OUTLINED_FUNCTION_20_7();
        sub_2744CA97C(v50, &unk_28094AFA0);
        v51 = v64;
        v52 = v67;
        sub_27463C1EC();
        v53 = v68;
        MEMORY[0x277C58440](0, v45, v51, v43);
        _Block_release(v43);
        swift_unknownObjectRelease();

        (*(v66 + 8))(v51, v52);
        (*(v63 + 8))(v45, v65);

LABEL_14:
        sub_27451F220();
        goto LABEL_15;
      }
    }

    v57 = sub_27463B9FC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v57);
    sub_27463B9CC();
    swift_unknownObjectRetain();

    v58 = sub_27463B9BC();
    v59 = swift_allocObject();
    v60 = MEMORY[0x277D85700];
    v59[2] = v58;
    v59[3] = v60;
    v59[4] = v2;
    v59[5] = v37;
    v59[6] = v35;
    v59[7] = v36;
    v59[8] = v32;
    sub_274512004();

    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  if (*(v7 + 16) == 1)
  {
    sub_2744B6B1C();
    sub_2744B6B1C();
    v54 = [*(*(v2 + 16) + 24) actionTree];
    sub_27463BD7C();

    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      v55 = OUTLINED_FUNCTION_34_3();
      v56(v55);
      swift_unknownObjectRelease();
    }

    (*(v25 + 8))(v29, v23);
    goto LABEL_14;
  }

  sub_27463C56C();
  __break(1u);
}

void sub_2744B43B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v12[4] = sub_2744C892C;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2744B4A6C;
  v12[3] = &block_descriptor_161;
  v10 = _Block_copy(v12);
  swift_unknownObjectRetain();

  v11 = [a1 loadObjectOfClass:ObjCClassFromMetadata completionHandler:v10];
  _Block_release(v10);
}

uint64_t sub_2744B44D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a5;
  v38 = a3;
  v7 = sub_274638DAC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27463B1EC();
  v40 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_27463B21C();
  v39 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 && (objc_opt_self(), (v17 = swift_dynamicCastObjCClass()) != 0))
  {
    v18 = v17;
    sub_274412734(0, &qword_28094AF90, 0x277D85C78);
    swift_unknownObjectRetain();
    v35 = sub_27463BCEC();
    v19 = swift_allocObject();
    v21 = v36;
    v20 = v37;
    v19[2] = v38;
    v19[3] = v21;
    v19[4] = v18;
    v19[5] = v20;
    aBlock[4] = sub_2744C8984;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_27443E0E8;
    aBlock[3] = &block_descriptor_167;
    v22 = _Block_copy(aBlock);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();

    sub_27463B20C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2744C9840(&qword_28094E100, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
    sub_2744CA97C(&qword_28094E110, &unk_28094AFA0);
    sub_27463C1EC();
    v23 = v35;
    MEMORY[0x277C58440](0, v16, v13, v22);
    _Block_release(v22);
    swift_unknownObjectRelease();

    (*(v40 + 8))(v13, v11);
    return (*(v39 + 8))(v16, v14);
  }

  else
  {
    v25 = v7;
    sub_274638C2C();
    v26 = a2;
    v27 = sub_274638D9C();
    v28 = sub_27463BBFC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      aBlock[0] = v30;
      *v29 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v31 = sub_27463C72C();
        v33 = v32;
      }

      else
      {
        v31 = 0;
        v33 = 0xE000000000000000;
      }

      v34 = sub_2745E7980(v31, v33, aBlock);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2743F0000, v27, v28, "Unable to decode action from item provider: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x277C5A270](v30, -1, -1);
      MEMORY[0x277C5A270](v29, -1, -1);
    }

    return (*(v8 + 8))(v10, v25);
  }
}

void sub_2744B49D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = [a3 copyForDuplicating];
  (*(a2 + 24))(v8, a4, ObjectType, a2);
}

uint64_t sub_2744B4A6C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2744B4AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[9] = a6;
  v9 = sub_27463B1EC();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();
  v10 = sub_27463B21C();
  v8[15] = v10;
  v8[16] = *(v10 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = sub_27463B9CC();
  v8[19] = sub_27463B9BC();
  v11 = swift_task_alloc();
  v8[20] = v11;
  *v11 = v8;
  v11[1] = sub_2744B4C58;

  return sub_2744B5044();
}

uint64_t sub_2744B4C58()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;
  *(v4 + 168) = v3;

  v6 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_2744B4D8C, v6, v5);
}

uint64_t sub_2744B4D8C()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  v3 = *(v0 + 112);
  v15 = *(v0 + 128);
  v16 = *(v0 + 120);
  v4 = *(v0 + 96);
  v14 = *(v0 + 104);
  v5 = *(v0 + 88);
  v17 = *(v0 + 72);

  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v13 = sub_27463BCEC();
  v6 = swift_allocObject();
  *(v6 + 16) = v17;
  *(v6 + 32) = v1;
  *(v6 + 40) = v5;
  *(v0 + 48) = sub_2744C8990;
  *(v0 + 56) = v6;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_27443E0E8;
  *(v0 + 40) = &block_descriptor_173;
  v7 = _Block_copy((v0 + 16));
  swift_unknownObjectRetain();
  sub_27463B20C();
  *(v0 + 64) = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_21_7();
  sub_2744C9840(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  OUTLINED_FUNCTION_20_7();
  sub_2744CA97C(v10, &unk_28094AFA0);
  sub_27463C1EC();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x277C58440]();
  _Block_release(v7);

  (*(v14 + 8))(v3, v4);
  (*(v15 + 8))(v2, v16);

  OUTLINED_FUNCTION_92();

  return v11();
}

uint64_t sub_2744B5044()
{
  OUTLINED_FUNCTION_79();
  v0[3] = v1;
  v0[4] = sub_27463B9CC();
  v0[5] = sub_27463B9BC();
  v3 = sub_27463B96C();
  v0[6] = v3;
  v0[7] = v2;

  return MEMORY[0x2822009F8](sub_2744B50DC, v3, v2);
}

uint64_t sub_2744B50DC()
{
  v3 = v2[3];
  v10 = MEMORY[0x277D84F90];
  sub_274453594();
  OUTLINED_FUNCTION_59_1();
  while (v0 != v1)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x277C58B20](v1, v2[3]);
    }

    else
    {
      if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v4 = *(v3 + 32 + 8 * v1);
    }

    v5 = v4;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return MEMORY[0x282200600](v4);
    }

    sub_274637E2C();
    sub_2744C9840(&unk_28094E0A0, MEMORY[0x277CC9260]);
    if (sub_27463BC3C())
    {
      sub_27463C41C();
      sub_27463C46C();
      sub_27463C47C();
      v4 = sub_27463C42C();
    }

    else
    {
    }

    ++v1;
  }

  v2[8] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  v2[9] = sub_27463B9BC();
  v6 = swift_task_alloc();
  v2[10] = v6;
  *(v6 + 16) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0B0, &qword_274651BA8);
  v7 = swift_task_alloc();
  v2[11] = v7;
  *v7 = v2;
  v7[1] = sub_2744B531C;
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x282200600](v4);
}

uint64_t sub_2744B531C()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 56);
  v5 = *(v1 + 48);

  return MEMORY[0x2822009F8](sub_2744B5498, v5, v4);
}

uint64_t sub_2744B5498()
{
  OUTLINED_FUNCTION_79();

  if (*(*(v0 + 16) + 16))
  {
    v1 = sub_2744B64B4(*(v0 + 16));

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
    OUTLINED_FUNCTION_68_0();
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_274648560;
    *(v2 + 32) = v1;
  }

  else
  {

    v2 = MEMORY[0x277D84F90];
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2744B5554(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  v3[13] = swift_task_alloc();
  v4 = sub_274637E2C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0D0, &qword_274651BB8);
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0D8, &unk_274651BC0);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480, &qword_27464D1D0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = sub_27463B9CC();
  v3[25] = sub_27463B9BC();
  v7 = sub_27463B96C();
  v3[26] = v7;
  v3[27] = v6;

  return MEMORY[0x2822009F8](sub_2744B577C, v7, v6);
}

uint64_t sub_2744B577C()
{
  v1 = *(v0 + 88);
  v2 = sub_274453594();
  v5 = 0;
  v28 = v1 & 0xC000000000000001;
  v29 = v2;
  v26 = v1 + 32;
  v27 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v29 != v5)
  {
    if (v28)
    {
      v2 = MEMORY[0x277C58B20](v5, *(v0 + 88));
    }

    else
    {
      if (v5 >= *(v27 + 16))
      {
        goto LABEL_22;
      }

      v2 = *(v26 + 8 * v5);
    }

    v6 = v2;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      return MEMORY[0x2822002E8](v2, v3, v4);
    }

    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = sub_27463B9FC();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v9);
    OUTLINED_FUNCTION_68_0();
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;
    sub_274412C20(v7, v8, &unk_28094A480, &qword_27464D1D0);
    LODWORD(v7) = __swift_getEnumTagSinglePayload(v8, 1, v9);
    v11 = v6;
    v12 = *(v0 + 176);
    if (v7 == 1)
    {
      v13 = OUTLINED_FUNCTION_35_2();
      sub_2744C9C24(v13, v14);
    }

    else
    {
      sub_27463B9EC();
      OUTLINED_FUNCTION_25_0();
      (*(v15 + 8))(v12, v9);
    }

    if (v10[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v16 = sub_27463B96C();
      v18 = v17;
      swift_unknownObjectRelease();
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = **(v0 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = &unk_274651BD8;
    *(v20 + 24) = v10;

    if (v18 | v16)
    {
      v21 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v16;
      *(v0 + 40) = v18;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 184);
    *(v0 + 48) = 1;
    *(v0 + 56) = v21;
    *(v0 + 64) = v19;
    swift_task_create();

    v2 = sub_2744C9C24(v22, &unk_28094A480);
    ++v5;
  }

  sub_27463B99C();
  *(v0 + 224) = MEMORY[0x277D84F90];
  v23 = sub_27463B9BC();
  *(v0 + 232) = v23;
  v24 = swift_task_alloc();
  *(v0 + 240) = v24;
  *v24 = v0;
  v2 = OUTLINED_FUNCTION_15_5(v24);
  v4 = MEMORY[0x277D85700];
  v3 = v23;

  return MEMORY[0x2822002E8](v2, v3, v4);
}

uint64_t sub_2744B5ACC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v3 = v2;

  v4 = *(v1 + 216);
  v5 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_2744B5C04, v5, v4);
}

uint64_t sub_2744B5C04()
{
  if (__swift_getEnumTagSinglePayload(v0[18], 1, v0[12]) == 1)
  {
    v1 = v0[28];
    v2 = v0[9];
    (*(v0[20] + 8))(v0[21], v0[19]);

    *v2 = v1;

    OUTLINED_FUNCTION_92();
    OUTLINED_FUNCTION_72_0();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[13];
  v5 = v0[14];
  v7 = OUTLINED_FUNCTION_25_1();
  sub_27441277C(v7, v8, v9, v10);
  if (__swift_getEnumTagSinglePayload(v6, 1, v5) == 1)
  {
    sub_2744C9C24(v0[13], &qword_280949E10);
  }

  else
  {
    v11 = *(v0[15] + 32);
    v11(v0[17], v0[13], v0[14]);
    v12 = OUTLINED_FUNCTION_4_3();
    v13(v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = v0[28];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_274450708(0, *(v15 + 16) + 1, 1, v0[28]);
      v15 = v26;
    }

    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_274450708(v16 > 1, v17 + 1, 1, v15);
      v15 = v27;
    }

    v18 = v0[16];
    v19 = v0[14];
    v20 = v0[15];
    (*(v20 + 8))(v0[17], v19);
    *(v15 + 16) = v17 + 1;
    v11(v15 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v18, v19);
    v0[28] = v15;
  }

  v0[29] = sub_27463B9BC();
  v21 = swift_task_alloc();
  v0[30] = v21;
  *v21 = v0;
  OUTLINED_FUNCTION_15_5(v21);
  OUTLINED_FUNCTION_72_0();

  return MEMORY[0x2822002E8](v22, v23, v24);
}

uint64_t sub_2744B5EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_2744B5EDC, 0, 0);
}

uint64_t sub_2744B5EDC()
{
  OUTLINED_FUNCTION_42_1();
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  *v3 = v0;
  v3[1] = sub_2744B5FE0;
  v5 = v0[2];

  return MEMORY[0x2822007B8](v5, 0, 0, 0xD000000000000011, 0x800000027468AC10, sub_2744C87B4, v2, v4);
}

uint64_t sub_2744B5FE0()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_28_2();
  v1 = *v0;
  OUTLINED_FUNCTION_13_4();
  *v2 = v1;

  OUTLINED_FUNCTION_92();

  return v3();
}

uint64_t sub_2744B60DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8, &qword_274651BF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  sub_274637E2C();
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_2744C9840(&unk_28094E0A0, MEMORY[0x277CC9260]);
}

uint64_t sub_2744B6274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0F0, &qword_274651BF8);
  MEMORY[0x28223BE20](v2);
  v4 = &v6 - v3;
  sub_274412C20(a1, &v6 - v3, &qword_280949E10, &unk_274648610);
  swift_storeEnumTagMultiPayload();
  sub_2744B634C(v4);
  return sub_2744C9C24(v4, &unk_28094E0F0);
}

uint64_t sub_2744B634C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E0F0, &qword_274651BF8);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_274412C20(a1, &v9 - v6, &unk_28094E0F0, &qword_274651BF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8, &qword_274651BF0);
    return sub_27463B97C();
  }

  else
  {
    sub_27441277C(v7, v4, &qword_280949E10, &unk_274648610);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8, &qword_274651BF0);
    return sub_27463B98C();
  }
}

id sub_2744B64B4(uint64_t a1)
{
  v2 = sub_274637E2C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v42 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v39 - v7;
  v9 = MEMORY[0x277D84F90];
  v43 = MEMORY[0x277D84F90];
  v10 = *(a1 + 16);
  v39 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v40 = *(v11 + 56);
    v41 = v12;
    v14 = (v11 - 8);
    do
    {
      v15 = v41;
      (v41)(v8, v13, v2, v6);
      v16 = v9;
      v17 = v42;
      v18 = v11;
      v15(v42, v8, v2);
      v19 = objc_allocWithZone(MEMORY[0x277D7C428]);
      v20 = v17;
      v9 = v16;
      v21 = sub_27452D658(v20, 0, 0);
      v22 = (*v14)(v8, v2);
      if (v21)
      {
        MEMORY[0x277C57F30](v22);
        if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_27463B85C();
        }

        sub_27463B8AC();
        v9 = v43;
      }

      v13 += v40;
      --v10;
      v11 = v18;
    }

    while (v10);
  }

  v42 = "com.apple.shortcuts.action";
  v43 = MEMORY[0x277D84F90];
  v23 = sub_274453594();
  v24 = 0;
  while (v23 != v24)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x277C58B20](v24, v9);
    }

    else
    {
      if (v24 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v25 = *(v9 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v28 = [objc_allocWithZone(MEMORY[0x277D7C410]) initWithValue_];

    ++v24;
    if (v28)
    {
      MEMORY[0x277C57F30]();
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v39 = v43;
      v24 = v27;
    }
  }

  v29 = v39;
  if (!(v39 >> 62))
  {

    sub_27463C6CC();
    v30 = v29;
    goto LABEL_21;
  }

LABEL_25:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v30 = sub_27463C57C();

LABEL_21:
  sub_274412734(0, &qword_28094E0C0, 0x277D7C678);
  v31 = sub_274467468(v30);
  v32 = [objc_opt_self() sharedRegistry];
  v33 = sub_27463B66C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0C8, &qword_274651BB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  v43 = 0x656C69464657;
  v44 = 0xE600000000000000;
  sub_27463C31C();
  result = [v31 serializedRepresentation];
  if (result)
  {
    v36 = result;

    *(inited + 96) = swift_getObjectType();
    *(inited + 72) = v36;
    v37 = sub_27463B4DC();
    v38 = sub_2744F51D0(v33, v37, v32);

    return v38;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B695C(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a1;
  if (a3)
  {
    sub_2744B69F4();
    return v4;
  }

  else if (*(a1 + 16) == 1)
  {

    sub_2744B69F4();
  }

  else
  {
    return 0;
  }

  return v3;
}

void sub_2744B69F4()
{
  OUTLINED_FUNCTION_55_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_27463BDAC();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  v11 = v10 - v9;
  v12 = [*(*(v0 + 16) + 24) actionTree];
  v13 = v12;
  if (v4)
  {
    [v12 validIndexForInsertingActionAtIndex_];
  }

  else
  {
    sub_27463BD7C();

    sub_27463BD9C();
    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_56_0();
}

void sub_2744B6B1C()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v5);
  v6 = *(v0 + 16);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  OUTLINED_FUNCTION_17_6();
  sub_2744CA97C(v7, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  v8 = sub_27463BAFC();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_25_1();
  v9(v10);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((v2 & 0x8000000000000000) == 0)
    {
      if (v8 <= v2)
      {
        v12 = [*(v6 + 24) actions];
        sub_274412734(0, &qword_28094E040, 0x277D7C098);
        sub_27463B81C();

        sub_274453594();
      }

      else
      {
        swift_getKeyPath();
        swift_getKeyPath();
        sub_274638FAC();

        sub_27463839C();
        v11 = OUTLINED_FUNCTION_25_1();
        v9(v11);
      }
    }

    OUTLINED_FUNCTION_23();
  }
}

uint64_t sub_2744B6D74()
{

  return v0;
}

uint64_t sub_2744B6DBC()
{
  sub_2744B6D74();

  return MEMORY[0x2821FE8D8](v0);
}

void sub_2744B6E5C(uint64_t a1)
{
  sub_2744B703C(319);
  if (v1 <= 0x3F)
  {
    sub_2744B70D0(319);
    if (v2 <= 0x3F)
    {
      sub_274481024(319);
      if (v3 <= 0x3F)
      {
        sub_2744B7164(319);
        if (v4 <= 0x3F)
        {
          sub_274458288(319, &qword_28094DCB0, &qword_28094DCB8, &unk_2746514F0);
          if (v5 <= 0x3F)
          {
            sub_2744C8D34(319, &qword_28094DCC0, type metadata accessor for DragReorderingCoordinator, MEMORY[0x277CE1438]);
            if (v6 <= 0x3F)
            {
              sub_274458288(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0);
              if (v7 <= 0x3F)
              {
                sub_2744C9F7C(319, &qword_28094DCC8, MEMORY[0x277D839B0], MEMORY[0x277CDD630]);
                if (v8 <= 0x3F)
                {
                  sub_2744C8D34(319, &unk_28094DCD0, MEMORY[0x277D7D3B8], MEMORY[0x277CE10B8]);
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

void sub_2744B703C(uint64_t a1)
{
  if (!qword_28094DC70)
  {
    type metadata accessor for ActionList(255);
    sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094DC70);
    }
  }
}

void sub_2744B70D0(uint64_t a1)
{
  if (!qword_28094DC80)
  {
    type metadata accessor for WorkflowSelectionCoordinator(255);
    sub_2744C9840(&qword_28094DC88, type metadata accessor for WorkflowSelectionCoordinator);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094DC80);
    }
  }
}

void sub_2744B7164(uint64_t a1)
{
  if (!qword_28094DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC98, &qword_27465F150);
    sub_2744B71D4();
    v1 = sub_27463910C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094DC90);
    }
  }
}

unint64_t sub_2744B71D4()
{
  result = qword_28094DCA0;
  if (!qword_28094DCA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DC98, &qword_27465F150);
    sub_27444A444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094DCA0);
  }

  return result;
}

uint64_t sub_2744B7258@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WorkflowViewReorderingDelegate();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

uint64_t sub_2744B7294@<X0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v2 = OUTLINED_FUNCTION_6_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_9_8();
  sub_2744C9158();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_8_12();
  result = sub_2744C7648();
  *a1 = sub_2744C5BF4;
  a1[1] = v3;
  return result;
}

uint64_t sub_2744B7380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a1;
  v91 = a3;
  v4 = sub_27463969C();
  v109 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v106 = v5;
  v89 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_2746391CC();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v90 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkflowView(0);
  v8 = v7 - 8;
  v102 = *(v7 - 8);
  v98 = *(v102 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DCF0, &qword_2746515D8);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v76 - v13;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DCF8, &qword_2746515E0);
  MEMORY[0x28223BE20](v99);
  v81 = &v76 - v15;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD00, &qword_2746515E8);
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v100 = &v76 - v16;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD08, &qword_2746515F0);
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v101 = &v76 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD10, &qword_2746515F8);
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v76 - v18;
  *v14 = sub_274639C5C();
  *(v14 + 1) = 0;
  v14[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD18, &qword_274651600);
  sub_2744B7FE8(a2, &v14[*(v19 + 44)]);
  v20 = type metadata accessor for WorkflowEditorOptions(0);
  v96 = sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v97 = v20;
  v21 = sub_27463979C();
  v23 = v22;
  v24 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD20, &qword_274651608) + 36)];
  *v24 = v21;
  v24[1] = v23;
  KeyPath = swift_getKeyPath();
  v26 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD28, &qword_274651638) + 36)];
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD30, &qword_274651640) + 28);
  v103 = *(v109 + 16);
  v104 = v109 + 16;
  v103(v26 + v27, v108, v4);
  v95 = v4;
  __swift_storeEnumTagSinglePayload(v26 + v27, 0, 1, v4);
  *v26 = KeyPath;
  v28 = a2;
  v29 = swift_getKeyPath();
  v30 = (a2 + *(v8 + 56));
  v32 = *v30;
  v31 = v30[1];
  v111 = v32;
  v112 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD38, &qword_274651678);
  sub_27463ACEC();
  v33 = v110;
  v34 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD40, &qword_274651680) + 36)];
  *v34 = v29;
  v34[1] = v33;
  sub_2744C9158();
  v35 = *(v102 + 80);
  v36 = (v35 + 16) & ~v35;
  v37 = v98 + v36;
  v38 = v35 | 7;
  v39 = swift_allocObject();
  sub_2744C7648();
  v40 = &v14[*(v12 + 44)];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v40 + 2) = sub_2744C5E1C;
  *(v40 + 3) = v39;
  v41 = *(v28 + 32);
  if (v41)
  {
    v42 = v41;
    v43 = sub_27443D564();

    v97 = type metadata accessor for WorkflowView;
    v92 = v10;
    sub_2744C9158();
    v94 = v38;
    v44 = swift_allocObject();
    v98 = type metadata accessor for WorkflowView;
    sub_2744C7648();
    v96 = v36;
    v45 = v81;
    sub_27441277C(v14, v81, &qword_28094DCF0, &qword_2746515D8);
    v46 = v45 + *(v99 + 36);
    *v46 = v43 & 1;
    *(v46 + 8) = sub_2744C5E34;
    *(v46 + 16) = v44;
    OpaqueTypeConformance2 = v37;
    v47 = v90;
    sub_2746391DC();
    v48 = v89;
    v49 = v95;
    v103(v89, v108, v95);
    v80 = v28;
    v50 = *(v109 + 80);
    v51 = v109;
    v79 = (v50 + 16) & ~v50;
    v52 = swift_allocObject();
    v102 = *(v51 + 32);
    v109 = v51 + 32;
    v53 = v48;
    (v102)(v52 + ((v50 + 16) & ~v50), v48, v49);
    v76 = sub_2744C5EA0();
    sub_27463A97C();

    v54 = v49;
    v55 = *(v105 + 8);
    v105 += 8;
    v78 = v55;
    v55(v47, v107);
    sub_2744C9C24(v45, &qword_28094DCF8);
    sub_2746391DC();
    sub_2744C9158();
    v56 = v103;
    v103(v53, v108, v49);
    v93 = v50;
    v57 = (OpaqueTypeConformance2 + v50) & ~v50;
    v81 = v57;
    v58 = swift_allocObject();
    sub_2744C7648();
    (v102)(v58 + v57, v53, v54);
    v111 = v99;
    v112 = v76;
    v99 = MEMORY[0x277CDEEA8];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v59 = v100;
    v60 = v83;
    sub_27463A97C();

    v61 = v78;
    v78(v47, v107);
    (*(v82 + 8))(v59, v60);
    sub_2746391DC();
    v62 = v53;
    v63 = v53;
    v64 = v95;
    v56(v63, v108, v95);
    v65 = v79;
    v66 = swift_allocObject();
    v67 = v62;
    (v102)(v66 + v65, v62, v64);
    v111 = v60;
    v112 = OpaqueTypeConformance2;
    v100 = swift_getOpaqueTypeConformance2();
    v68 = v85;
    v69 = v86;
    v70 = v101;
    sub_27463A97C();

    v61(v47, v107);
    (*(v84 + 8))(v70, v69);
    sub_2746391DC();
    sub_2744C9158();
    v71 = v64;
    v103(v67, v108, v64);
    v72 = v81;
    v73 = swift_allocObject();
    sub_2744C7648();
    (v102)(v73 + v72, v67, v71);
    v111 = v69;
    v112 = v100;
    swift_getOpaqueTypeConformance2();
    v74 = v88;
    sub_27463A97C();

    v61(v47, v107);
    return (*(v87 + 8))(v68, v74);
  }

  else
  {
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

void sub_2744B7FE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDB0, &qword_2746516A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-v9];
  v11 = *(a1 + 32);
  if (v11)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v12 = v11;
    sub_274638FAC();

    if (v20[15])
    {
      v13 = 0;
      v14 = 1;
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      v14 = sub_27463979C();
      v13 = v15;
      v16 = v14;
    }

    sub_2744B82A0();
    v17 = *(v5 + 16);
    v17(v7, v10, v4);
    *a2 = v14;
    a2[1] = v13;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDB8, &qword_2746516F0);
    v17(a2 + *(v18 + 48), v7, v4);
    sub_2744C664C(v14);
    sub_2744C665C(v14);
    v19 = *(v5 + 8);
    v19(v10, v4);
    v19(v7, v4);
    sub_2744C665C(v14);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_2744B82A0()
{
  OUTLINED_FUNCTION_24();
  v77 = v1;
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v63 = v3;
  v64 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  v76 = type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_1();
  v67 = v7;
  MEMORY[0x28223BE20](v8);
  v78 = v9;
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDC0, &qword_2746516F8);
  OUTLINED_FUNCTION_1();
  v12 = v11;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v63 - v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDC8, &qword_274651700);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v17);
  v70 = &v63 - v18;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDD0, &qword_274651708);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_40_1();
  v69 = v20;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDD8, &qword_274651710);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_40_1();
  v72 = v22;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDE0, &qword_274651718);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_40_1();
  v73 = v24;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDE8, &qword_274651720);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_40_1();
  v74 = v26;
  v27 = *(v0 + 32);
  if (v27)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v28 = v27;
    sub_274638FAC();

    v29 = v81;
    OUTLINED_FUNCTION_9_8();
    sub_2744C9158();
    v67 = v0;
    v30 = swift_allocObject();
    OUTLINED_FUNCTION_8_12();
    sub_2744C7648();
    LOBYTE(v81) = v29;
    v82 = sub_2744C666C;
    v83 = v30;
    sub_27463A18C();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DDF0, &unk_274651770);
    v32 = sub_2744CA97C(&qword_28094DDF8, &qword_28094DDF0);
    sub_27463A82C();
    (*(v63 + 8))(v6, v64);

    v81 = v31;
    v82 = v32;
    swift_getOpaqueTypeConformance2();
    sub_27463A86C();
    (*(v12 + 8))(v15, v10);
    sub_27463B70C("Shortcut Editor", 15);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v33 = qword_28094BB00;
    v34 = sub_27463B66C();
    v35 = sub_27463B66C();

    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = sub_27463B6AC();
    v39 = v38;

    v81 = v37;
    v82 = v39;
    sub_274412BBC();
    v40 = v70;
    sub_2746395FC();

    v41 = OUTLINED_FUNCTION_15_2();
    sub_2744C9C24(v41, v42);
    v43 = v69;
    v44 = (v69 + *(v65 + 36));
    *v44 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
    swift_storeEnumTagMultiPayload();
    v45 = type metadata accessor for VariableEditorModifier(0);
    v46 = (v44 + v45[5]);
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v47, v48);
    *v46 = sub_27463979C();
    v46[1] = v49;
    v50 = v45[6];
    *(v44 + v50) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
    swift_storeEnumTagMultiPayload();
    v51 = (v44 + v45[7]);
    v80 = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE00, &unk_2746517B0);
    sub_27463ACDC();
    v52 = v82;
    *v51 = v81;
    v51[1] = v52;
    sub_27441277C(v40, v43, &qword_28094DDC8, &qword_274651700);
    v53 = v72;
    sub_27441277C(v43, v72, &qword_28094DDD0, &qword_274651708);
    *(v53 + *(v68 + 36)) = 0;
    OUTLINED_FUNCTION_9_8();
    sub_2744C9158();
    v54 = swift_allocObject();
    OUTLINED_FUNCTION_8_12();
    sub_2744C7648();
    v55 = v53;
    v56 = v73;
    sub_27441277C(v55, v73, &qword_28094DDD8, &qword_274651710);
    v57 = (v56 + *(v71 + 36));
    *v57 = sub_2744C7060;
    v57[1] = v54;
    v57[2] = 0;
    v57[3] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
    sub_27463B16C();
    v58 = v81;
    v59 = v56;
    v60 = v74;
    sub_27441277C(v59, v74, &qword_28094DDE0, &qword_274651718);
    *(v60 + *(v75 + 36)) = v58;
    sub_2744C70E4();
    sub_27463A55C();
    sub_2744C9C24(v60, &qword_28094DDE8);
    OUTLINED_FUNCTION_23();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v61, v62);
    OUTLINED_FUNCTION_7_1();
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744B8B34()
{
  type metadata accessor for WorkflowView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DD38, &qword_274651678);
  sub_27463ACEC();
  sub_27463881C();
}

void sub_2744B8BA4(_BYTE *result, uint64_t a2)
{
  if (*result == 1)
  {
    sub_2744B8BCC();
  }
}

void sub_2744B8BCC()
{
  v0 = [objc_opt_self() sharedContext];
  v1 = [v0 applicationOrNil];

  if (v1)
  {
    [v1 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

uint64_t sub_2744B8C80()
{
  OUTLINED_FUNCTION_50_2();
  v0 = sub_2746391AC();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3_0();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x277CDD768], v0);
  sub_2746391BC();
  return (*(v2 + 8))(v6, v0);
}

uint64_t sub_2744B8D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2746391AC();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = *(a2 + 32);
  if (v11)
  {
    v12 = v11;
    sub_27443B240(1);

    (*(v6 + 104))(v10, *MEMORY[0x277CDD760], v4);
    sub_2746391BC();
    return (*(v6 + 8))(v10, v4);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    OUTLINED_FUNCTION_2_16();
    sub_2744C9840(v14, v15);
    OUTLINED_FUNCTION_7_1();
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744B8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v111 = a2;
  v110 = sub_274639FEC();
  v108 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v92 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0);
  MEMORY[0x28223BE20](v102);
  v109 = &v91 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  MEMORY[0x28223BE20](v8 - 8);
  v93 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v106 = &v91 - v11;
  MEMORY[0x28223BE20](v12);
  v107 = &v91 - v13;
  v14 = sub_274639F2C();
  MEMORY[0x28223BE20](v14);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE50, &qword_2746517C8);
  v15 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v17 = &v91 - v16;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE58, &qword_2746517D0);
  MEMORY[0x28223BE20](v97);
  v19 = &v91 - v18;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE60, &qword_2746517D8);
  MEMORY[0x28223BE20](v96);
  v99 = &v91 - v20;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE68, &qword_2746517E0);
  MEMORY[0x28223BE20](v98);
  v101 = &v91 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE70, &qword_2746517E8);
  MEMORY[0x28223BE20](v100);
  v112 = &v91 - v22;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE78, &qword_2746517F0);
  MEMORY[0x28223BE20](v104);
  v105 = &v91 - v23;
  v24 = *(a1 + 32);
  if (v24)
  {
    v25 = objc_opt_self();
    v26 = v24;
    v95 = v25;
    [v25 _readableWidth];
    v28 = a3 + -16.0;
    if (v27 < a3 + -16.0)
    {
      v28 = v27;
    }

    if (a3 <= 0.0)
    {
      v29 = v27;
    }

    else
    {
      v29 = v28;
    }

    v30 = OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_canvasWidth;
    swift_beginAccess();
    *&v26[v30] = v29;

    MEMORY[0x28223BE20](v31);
    v103 = a1;
    sub_274639C5C();
    LODWORD(__src[0]) = 0;
    sub_2744C9840(&qword_28094DE80, MEMORY[0x277CE0428]);
    sub_27463C7DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE88, &qword_2746517F8);
    sub_2744CA97C(&qword_28094DE90, &qword_28094DE88);
    sub_27463912C();
    sub_2744CA97C(&qword_28094DE98, &qword_28094DE50);
    v32 = v94;
    sub_27463A86C();
    (*(v15 + 8))(v17, v32);
    sub_27463B70C("Actions", 7);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v33 = qword_28094BB00;
    v34 = sub_27463B66C();
    v35 = sub_27463B66C();

    v36 = [v33 localizedStringForKey:v34 value:v35 table:0];

    v37 = sub_27463B6AC();
    v39 = v38;

    __src[0] = v37;
    __src[1] = v39;
    sub_274412BBC();
    v40 = v99;
    sub_2746395FC();

    sub_2744C9C24(v19, &qword_28094DE58);
    v41 = (v40 + *(v96 + 36));
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    *v41 = sub_27463979C();
    v41[1] = v42;
    v43 = type metadata accessor for ScrollToRunningActionModifier(0);
    v44 = v43[5];
    *(v41 + v44) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
    swift_storeEnumTagMultiPayload();
    v45 = v41 + v43[6];
    *v45 = swift_getKeyPath();
    v45[8] = 0;
    *(v41 + v43[7]) = 0x3FC999999999999ALL;
    [v95 _readableWidth];
    sub_27463B0CC();
    v46 = v108;
    v47 = v107;
    v48 = v106;
    sub_27463973C();
    v49 = v101;
    sub_27441277C(v40, v101, &qword_28094DE60, &qword_2746517D8);
    memcpy((v49 + *(v98 + 36)), __src, 0x70uLL);
    LOBYTE(v43) = sub_27463A31C();
    sub_2746390AC();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v49;
    v59 = v112;
    sub_27441277C(v58, v112, &qword_28094DE68, &qword_2746517E0);
    v60 = v59 + *(v100 + 36);
    *v60 = v43;
    *(v60 + 8) = v51;
    *(v60 + 16) = v53;
    *(v60 + 24) = v55;
    *(v60 + 32) = v57;
    *(v60 + 40) = 0;
    v61 = sub_27463A34C();
    type metadata accessor for WorkflowView(0);
    sub_2744C6930();
    v62 = v110;
    (*(v46 + 104))(v48, *MEMORY[0x277CE0558], v110);
    __swift_storeEnumTagSinglePayload(v48, 0, 1, v62);
    v63 = *(v102 + 48);
    v64 = v109;
    sub_274412C20(v47, v109, &qword_28094A610, &qword_2746493F0);
    sub_274412C20(v48, v64 + v63, &qword_28094A610, &qword_2746493F0);
    if (__swift_getEnumTagSinglePayload(v64, 1, v62) == 1)
    {
      sub_2744C9C24(v48, &qword_28094A610);
      sub_2744C9C24(v47, &qword_28094A610);
      if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v62) == 1)
      {
        sub_2744C9C24(v64, &qword_28094A610);
LABEL_16:
        sub_2746390AC();
        v69 = v68;
        v71 = v70;
        v73 = v72;
        v75 = v74;
        v76 = v105;
        sub_27441277C(v112, v105, &qword_28094DE70, &qword_2746517E8);
        v77 = v76 + *(v104 + 36);
        *v77 = v61;
        *(v77 + 8) = v69;
        *(v77 + 16) = v71;
        *(v77 + 24) = v73;
        *(v77 + 32) = v75;
        *(v77 + 40) = 0;
        v78 = sub_27463A33C();
        sub_2746390AC();
        v80 = v79;
        v82 = v81;
        v84 = v83;
        v86 = v85;
        v87 = v76;
        v88 = v111;
        sub_27441277C(v87, v111, &qword_28094DE78, &qword_2746517F0);
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DEA0, &qword_274651830);
        v90 = v88 + *(result + 36);
        *v90 = v78;
        *(v90 + 8) = v80;
        *(v90 + 16) = v82;
        *(v90 + 24) = v84;
        *(v90 + 32) = v86;
        *(v90 + 40) = 0;
        return result;
      }
    }

    else
    {
      v65 = v93;
      sub_274412C20(v64, v93, &qword_28094A610, &qword_2746493F0);
      if (__swift_getEnumTagSinglePayload(v64 + v63, 1, v62) != 1)
      {
        v66 = v92;
        (*(v46 + 32))(v92, v64 + v63, v62);
        sub_2744C9840(&unk_28094BC90, MEMORY[0x277CE0570]);
        sub_27463B5BC();
        v67 = *(v46 + 8);
        v67(v66, v62);
        sub_2744C9C24(v48, &qword_28094A610);
        sub_2744C9C24(v47, &qword_28094A610);
        v67(v65, v62);
        sub_2744C9C24(v64, &qword_28094A610);
        goto LABEL_16;
      }

      sub_2744C9C24(v48, &qword_28094A610);
      sub_2744C9C24(v47, &qword_28094A610);
      (*(v46 + 8))(v65, v62);
    }

    sub_2744C9C24(v64, &unk_28094BC50);
    goto LABEL_16;
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744B9CC4@<X0>(char *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v135 = a2;
  v147 = type metadata accessor for WorkflowView(0);
  v141 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v142 = v7;
  v143 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DEB0, &qword_274651838);
  MEMORY[0x28223BE20](v144);
  v134 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v121 - v10;
  *&v139 = type metadata accessor for EmptyStateView(0);
  MEMORY[0x28223BE20](v139);
  v123 = (&v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0, &qword_274651840);
  v151 = *(v13 - 8);
  v152 = v13;
  MEMORY[0x28223BE20](v13);
  v140 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v145 = &v121 - v16;
  MEMORY[0x28223BE20](v17);
  v138 = &v121 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEC0, &qword_274651848);
  MEMORY[0x28223BE20](v19 - 8);
  v133 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v121 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEC8, &qword_274651850);
  MEMORY[0x28223BE20](v24);
  v26 = &v121 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DED0, &qword_274651858);
  MEMORY[0x28223BE20](v27);
  v29 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v32 = &v121 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DED8, &qword_274651860);
  MEMORY[0x28223BE20](v33 - 8);
  v132 = &v121 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v149 = a1;
  v150 = &v121 - v36;
  v37 = *(a1 + 4);
  if (!v37)
  {
    goto LABEL_18;
  }

  v38 = v37;
  v39 = sub_27443AC4C();

  v146 = v11;
  if ((v39 & 1) != 0 && (v40 = sub_27451D93C()) != 0)
  {
    v41 = v40;
    v148 = v41;
    LODWORD(v137) = sub_27463A33C();
    sub_2746390AC();
    v43 = v42;
    v45 = v44;
    v47 = v46;
    v49 = v48;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v155[0]) = 0;

    sub_2745212EC(v41);

    sub_27446F35C(v32);
    *&v32[*(v27 + 36)] = 0x4000000000000000;
    v50 = __dst[0];
    v51 = v23;
    v52 = v155[0];
    sub_274412C20(v32, v29, &qword_28094DED0, &qword_274651858);
    *v26 = 0;
    v26[8] = v50;
    v26[16] = v137;
    *(v26 + 3) = v43;
    *(v26 + 4) = v45;
    *(v26 + 5) = v47;
    *(v26 + 6) = v49;
    v26[56] = v52;
    v23 = v51;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF00, &qword_274651978);
    sub_274412C20(v29, &v26[*(v53 + 48)], &qword_28094DED0, &qword_274651858);

    sub_2744C9C24(v32, &qword_28094DED0);
    sub_2744C9C24(v29, &qword_28094DED0);
    v54 = v150;
    sub_27441277C(v26, v150, &qword_28094DEC8, &qword_274651850);
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v24);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v150, 1, 1, v24);
    v148 = 0;
  }

  v55 = v38;
  v56 = sub_27443AF38();

  v57 = v149;
  if (v56)
  {
    v58 = sub_27463A33C();
    sub_2746390AC();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v66 = v65;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v155[0]) = 0;
    KeyPath = swift_getKeyPath();
    v68 = swift_allocObject();
    v68[2] = v56;
    v129 = LOBYTE(__dst[0]);
    v127 = v58;
    v128 = LOBYTE(v155[0]);
    LOBYTE(v156[0]) = 0;
    LOBYTE(v154[0]) = 0;
    v124 = 0;
    v126 = 0;
    sub_2744C76A4(sub_2744C769C, v68, 0);
    j__swift_retain_0(KeyPath);
    v125 = sub_2744C769C;
    v130 = v68;
    sub_27445429C(sub_2744C769C, v68, 0);
    v131 = KeyPath;
    j__swift_release(KeyPath);
  }

  else
  {
    v128 = 0;
    v129 = 0;
    v127 = 0;
    v130 = 0;
    v131 = 0;
    v126 = 0;
    v60 = 0;
    v62 = 0;
    v64 = 0;
    v124 = 255;
    v125 = 0;
    v66 = 0;
  }

  v69 = *(v57 + 1);
  swift_getKeyPath();
  swift_getKeyPath();
  v70 = v138;
  sub_274638FAC();

  v71 = sub_2744B2E8C();
  v137 = *(v151 + 1);
  v138 = v151 + 8;
  v137(v70, v152);
  if (v71)
  {
    v72 = v55;
    v73 = sub_27443A95C();

    if (v73)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
      sub_27463B16C();
      v74 = sub_2744A9A44();
      v76 = v75;
      v78 = v77;
      v79 = ~v77;

      if (!v79)
      {
        type metadata accessor for WorkflowEditorOptions(0);
        sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
        v116 = sub_27463979C();
        v117 = v123;
        *v123 = v116;
        v117[1] = v118;
        v117[2] = swift_getKeyPath();
        *(v117 + 24) = 0;
        v81 = v139;
        v119 = *(v139 + 24);
        *(v117 + v119) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
        swift_storeEnumTagMultiPayload();
        v120 = *(v81 + 28);
        *(v117 + v120) = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
        swift_storeEnumTagMultiPayload();
        sub_2744C7648();
        v80 = 0;
        goto LABEL_14;
      }

      sub_2744B04F4(v74, v76, v78);
    }
  }

  v80 = 1;
  v81 = v139;
LABEL_14:
  __swift_storeEnumTagSinglePayload(v23, v80, 1, v81);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  v82 = sub_27463979C();
  v122 = v83;
  v123 = v82;
  v84 = *(v57 + 8);
  v155[0] = *(v57 + 3);
  *&v155[1] = v84;
  v85 = v55;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DEE0, &qword_2746518B0);
  sub_2746390DC();
  v139 = __dst[0];
  v86 = *&__dst[1];
  v87 = *(v57 + 3);
  v88 = type metadata accessor for WorkflowViewReorderingDelegate();
  v89 = swift_allocObject();
  *(v89 + 16) = v69;
  *(v89 + 24) = v85;
  *(v89 + 32) = v139;
  *(v89 + 48) = v86;
  *(v89 + 56) = v87;
  swift_getKeyPath();
  swift_getKeyPath();
  v136 = v69;

  v90 = v145;
  sub_274638FAC();

  v91 = swift_getKeyPath();
  *(&__dst[1] + 1) = v88;
  *&__dst[2] = &off_288367870;
  *&__dst[0] = v89;
  v147 = v89;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
  sub_27463B16C();
  v92 = *&v155[0];
  sub_2744C9158();
  v93 = (*(v141 + 80) + 16) & ~*(v141 + 80);
  v149 = v23;
  v94 = (v142 + v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_2744C7648();
  v96 = (v95 + v94);
  *v96 = a3;
  v96[1] = a4;
  v97 = v152;
  v98 = *(v151 + 2);
  v99 = v146;
  v98(v146, v90, v152);
  v100 = v144;
  *(v99 + *(v144 + 68)) = v91;
  *(v99 + *(v100 + 72)) = v92;
  v101 = (v99 + *(v100 + 76));
  *v101 = sub_2744C753C;
  v101[1] = v95;
  v102 = v140;
  v98(v140, v90, v97);
  type metadata accessor for DragReorderableViewState();
  swift_allocObject();

  v103 = sub_2744B302C(v102, v91);
  v104 = v137;
  v137(v90, v97);
  *(v92 + OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_viewState) = v103;

  sub_2743F45D0(__dst, v155);
  v105 = OBJC_IVAR____TtC14WorkflowEditor25DragReorderingCoordinator_delegate;
  swift_beginAccess();
  sub_2744C75D8(v155, v92 + v105);
  swift_endAccess();

  type metadata accessor for WorkflowEditorResults(0);
  sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
  v106 = sub_27463979C();
  v151 = v107;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274638FAC();

  sub_2744CA97C(&qword_28094DEE8, &qword_28094C9E0);
  sub_27463BACC();
  sub_27463BB0C();
  v108 = sub_27463BAFC();
  v104(v90, v97);
  if (!__OFSUB__(0, v108))
  {
    v109 = -v108;
    v110 = v150;
    v111 = v132;
    sub_274412C20(v150, v132, &qword_28094DED8, &qword_274651860);
    *&v155[0] = 0;
    *(&v155[0] + 1) = v129;
    *&v155[1] = v127;
    *(&v155[1] + 1) = v60;
    *&v155[2] = v62;
    *(&v155[2] + 1) = v64;
    *&v155[3] = v66;
    *(&v155[3] + 1) = v128;
    *&v155[4] = v125;
    *(&v155[4] + 1) = v130;
    *&v155[5] = v124;
    *(&v155[5] + 1) = v131;
    LOBYTE(v155[6]) = v126;
    v156[0] = v111;
    v156[1] = v155;
    v112 = v149;
    v113 = v133;
    sub_274412C20(v149, v133, &qword_28094DEC0, &qword_274651848);
    v154[0] = v123;
    v154[1] = v122;
    v154[2] = 0x3FF0000000000000;
    v156[2] = v113;
    v156[3] = v154;
    v114 = v134;
    sub_274412C20(v99, v134, &unk_28094DEB0, &qword_274651838);
    v153[0] = v106;
    v153[1] = v151;
    v153[2] = *&v109;
    v156[4] = v114;
    v156[5] = v153;
    sub_2744B2618(v156, v135);

    sub_2744C9C24(v99, &unk_28094DEB0);
    sub_2744C9C24(v112, &qword_28094DEC0);
    sub_2744C9C24(v110, &qword_28094DED8);

    sub_2744C9C24(v114, &unk_28094DEB0);
    sub_2744C9C24(v113, &qword_28094DEC0);
    memcpy(__dst, v155, 0x61uLL);
    sub_2744C9C24(__dst, &unk_28094DEF0);
    return sub_2744C9C24(v111, &qword_28094DED8);
  }

  __break(1u);
LABEL_18:
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_2744BAC3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v9 = *a2;
  v10 = a2[2];
  v11 = a2[3];
  v12 = a2[1];
  *a4 = sub_274639C5C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF18, &qword_274651988);
  sub_2744BADDC(v12, a3, v12, v10, v11, (a4 + *(v13 + 44)), v9, a1);
  v14 = objc_opt_self();
  v15 = v12;
  [v14 _readableWidth];
  v17 = v16;
  type metadata accessor for ActionList(0);
  sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);

  v18 = sub_27463950C();
  v20 = v19;

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF20, &qword_274651990);
  v22 = a4 + *(result + 36);
  *v22 = v15;
  *(v22 + 8) = v10;
  *(v22 + 16) = v11;
  *(v22 + 24) = a5;
  *(v22 + 32) = v17;
  *(v22 + 40) = v18;
  *(v22 + 48) = v20;
  if (__OFSUB__(0, v10))
  {
    __break(1u);
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF28, &qword_274651998);
    *(a4 + *(result + 36)) = -v10;
  }

  return result;
}

void sub_2744BADDC(void *a1@<X1>, uint64_t a2@<X4>, void *a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, void *a6@<X8>, uint64_t a7, uint64_t a8)
{
  v184 = a4;
  v185 = a5;
  v177 = a6;
  v152 = sub_2746396BC();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152);
  v150 = v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF30, &qword_2746519A0);
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v146 = v143 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF38, &qword_2746519A8);
  MEMORY[0x28223BE20](v175);
  v147 = v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF40, &qword_2746519B0);
  MEMORY[0x28223BE20](v14 - 8);
  v176 = v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v182 = v143 - v17;
  v168 = type metadata accessor for WorkflowView(0);
  v18 = *(v168 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v168);
  v145 = v143 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v180 = v143 - v21;
  MEMORY[0x28223BE20](v22);
  v179 = v143 - v23;
  MEMORY[0x28223BE20](v24);
  v158 = type metadata accessor for ActionView(0);
  MEMORY[0x28223BE20](v158);
  v26 = v143 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v163 = v143 - v28;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF48, &qword_2746519B8);
  MEMORY[0x28223BE20](v160);
  v162 = v143 - v29;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF50, &qword_2746519C0);
  MEMORY[0x28223BE20](v161);
  v167 = v143 - v30;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF58, &unk_2746519C8);
  MEMORY[0x28223BE20](v164);
  v174 = v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v165 = v143 - v33;
  MEMORY[0x28223BE20](v34);
  v181 = v143 - v35;
  v36 = *(a2 + 8);
  v37 = type metadata accessor for ActionList(0);
  v38 = sub_2744C9840(&qword_28094AFC8, type metadata accessor for ActionList);
  swift_retain_n();
  v39 = a1;
  v171 = v37;
  v172 = v39;
  v169 = v38;
  v170 = sub_27463950C();
  v173 = v40;
  v166 = v36;
  v41 = a3;

  v42 = v41;
  v153 = v41;
  v156 = sub_2745212EC(v41);

  v43 = a2;
  sub_2744C9158();
  v44 = *(v18 + 80);
  v157 = (v19 + 7);
  v45 = (v19 + 7 + ((v44 + 16) & ~v44)) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  sub_2744C7648();
  v155 = v46;
  v47 = (v46 + v45);
  v48 = v184;
  v49 = v185;
  *v47 = v42;
  v47[1] = v48;
  v47[2] = v49;
  sub_2744C9158();
  v178 = v44;
  v50 = swift_allocObject();
  v154 = v50;
  v143[1] = (v44 + 16) & ~v44;
  v51 = v153;
  sub_2744C7648();
  v144 = v45;
  v52 = (v50 + v45);
  *v52 = v51;
  v52[1] = v48;
  v52[2] = v49;
  v183 = v43;
  if (*(v43 + 32))
  {
    v159 = a8;
    v53 = v178;
    v54 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v55 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_2744C9158();
    v56 = (v157 + ((v53 + 24) & ~v53)) & 0xFFFFFFFFFFFFFFF8;
    v57 = swift_allocObject();
    *(v57 + 16) = v55;
    sub_2744C7648();
    *(v57 + v56) = v54;
    *&v188 = v51;
    *(&v188 + 1) = v184;
    v189 = v185;
    v157 = v51;

    v58 = sub_2744BC5E4(&v188);
    v60 = v59;
    v62 = v61;
    v180 = type metadata accessor for WorkflowEditorOptions(0);
    v179 = sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    *(v26 + 11) = sub_27463979C();
    *(v26 + 12) = v63;
    type metadata accessor for WorkflowEditorResults(0);
    sub_2744C9840(&unk_28094C450, type metadata accessor for WorkflowEditorResults);
    *(v26 + 13) = sub_27463979C();
    *(v26 + 14) = v64;
    LOBYTE(v186) = 0;
    sub_27463ACDC();
    v65 = *(&v188 + 1);
    v26[120] = v188;
    *(v26 + 16) = v65;
    LOBYTE(v186) = 0;
    sub_27463ACDC();
    v66 = *(&v188 + 1);
    v26[136] = v188;
    *(v26 + 18) = v66;
    v186 = 0;
    v187 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DF60, &qword_27464D6E0);
    sub_27463ACDC();
    v67 = v189;
    *(v26 + 152) = v188;
    *(v26 + 21) = v67;
    *(v26 + 22) = swift_getKeyPath();
    v26[184] = 0;
    *(v26 + 24) = swift_getKeyPath();
    v26[200] = 0;
    *(v26 + 26) = swift_getKeyPath();
    v26[216] = 0;
    v68 = v158;
    v69 = *(v158 + 80);
    *&v26[v69] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
    swift_storeEnumTagMultiPayload();
    *&v26[*(v68 + 84)] = xmmword_27464D540;
    *&v26[*(v68 + 88)] = 0x4018000000000000;
    type metadata accessor for ActionViewModel();
    sub_2744C9840(&qword_28094C460, type metadata accessor for ActionViewModel);
    v70 = v156;
    *v26 = sub_27463950C();
    *(v26 + 1) = v71;
    v72 = v155;
    *(v26 + 2) = sub_2744C7A6C;
    *(v26 + 3) = v72;
    v73 = v154;
    *(v26 + 4) = sub_2744C7C04;
    *(v26 + 5) = v73;
    *(v26 + 6) = sub_2744C7C90;
    *(v26 + 7) = v57;
    *(v26 + 8) = v58;
    *(v26 + 9) = v60;
    v26[80] = v62;
    v26[81] = 0;
    v74 = *&v70[OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action];

    objc_opt_self();
    LOBYTE(v68) = swift_dynamicCastObjCClass() != 0;

    v26[82] = 2 * v68;
    v26[83] = 0;
    v158 = type metadata accessor for ActionView;
    sub_2744C7648();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF70, &qword_274651A40);
    sub_27463977C();
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_2746486A0;
    sub_27463976C();
    sub_27463975C();
    *&v188 = v75;
    v76 = v162;
    v77 = &v162[*(v160 + 36)];
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF78, &qword_274651A48);
    sub_2744C9840(&qword_28094DF80, MEMORY[0x277CDFC90]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF88, &qword_274651A50);
    sub_2744CA97C(&qword_28094DF90, &qword_28094DF88);
    sub_27463C1EC();
    v79 = *(sub_27463970C() + 20);
    v80 = *MEMORY[0x277CE0118];
    v81 = sub_274639BFC();
    (*(*(v81 - 8) + 104))(&v77->i8[v79], v80, v81);
    *v77 = vdupq_n_s64(0x403B800000000000uLL);
    v77->i8[*(v78 + 36)] = 0;
    sub_2744C7648();
    KeyPath = swift_getKeyPath();
    v83 = v167;
    sub_27441277C(v76, v167, &qword_28094DF48, &qword_2746519B8);
    v84 = v83 + *(v161 + 36);
    v85 = v157;
    v86 = v184;
    v87 = v185;
    *v84 = v157;
    *(v84 + 8) = v86;
    v88 = v166;
    *(v84 + 16) = v87;
    *(v84 + 24) = v88;
    *(v84 + 32) = KeyPath;
    *(v84 + 40) = 0;

    v89 = v85;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58, &unk_2746514C8);
    sub_27463B16C();
    v90 = v188;
    v91 = v165;
    v92 = &v165[*(v164 + 36)];
    sub_274434ED4(v159, v92);
    *(v92 + 48) = v89;
    *(v92 + 56) = v90;
    LOBYTE(v186) = 0;

    sub_27463ACDC();
    v93 = *(&v188 + 1);
    *(v92 + 64) = v188;
    *(v92 + 72) = v93;
    v94 = sub_27463979C();
    v96 = v95;

    *(v92 + 80) = v94;
    *(v92 + 88) = v96;
    *(v92 + 96) = swift_getKeyPath();
    *(v92 + 104) = 0;
    sub_27441277C(v83, v91, &qword_28094DF50, &qword_2746519C0);
    v97 = v91;
    v98 = v89;
    v99 = v181;
    sub_27441277C(v97, v181, &qword_28094DF58, &unk_2746519C8);
    *&v188 = v98;
    *(&v188 + 1) = v86;
    v189 = v87;
    v100 = sub_27451F0C0(&v188);
    v168 = v98;
    if (v100)
    {
      v101 = v184;
      *&v188 = v98;
      *(&v188 + 1) = v184;
      v102 = v98;
      v103 = v185;
      v189 = v185;
      v104 = sub_27451FB98(&v188);
      sub_2744C9158();
      v105 = v144;
      v106 = swift_allocObject();
      v107 = sub_2744C7648();
      v108 = (v106 + v105);
      *v108 = v102;
      v108[1] = v101;
      v108[2] = v103;
      MEMORY[0x28223BE20](v107);
      v143[-2] = v104;
      v109 = v102;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DFA0, &qword_274651A88);
      sub_2744C7DC8();
      v110 = v146;
      sub_27463AD5C();
      v111 = v150;
      sub_2746396AC();
      sub_2744CA97C(&unk_28094E020, &qword_28094DF30);
      sub_2744C9840(&qword_280949470, MEMORY[0x277CDDB18]);
      v112 = v147;
      v113 = v149;
      v114 = v152;
      sub_27463A69C();
      (*(v151 + 8))(v111, v114);
      (*(v148 + 8))(v110, v113);
      LOBYTE(v104) = sub_27463A32C();
      sub_2746390AC();
      v115 = v175;
      v116 = v112 + *(v175 + 36);
      *v116 = v104;
      *(v116 + 8) = v117;
      *(v116 + 16) = v118;
      *(v116 + 24) = v119;
      *(v116 + 32) = v120;
      *(v116 + 40) = 0;
      v121 = v182;
      sub_27441277C(v112, v182, &qword_28094DF38, &qword_2746519A8);
      v122 = 0;
    }

    else
    {
      v122 = 1;
      v121 = v182;
      v115 = v175;
    }

    __swift_storeEnumTagSinglePayload(v121, v122, 1, v115);
    v123 = sub_27463979C();
    v185 = v124;
    v184 = sub_27463950C();
    v126 = v125;
    v127 = v174;
    sub_274412C20(v99, v174, &qword_28094DF58, &unk_2746519C8);
    v128 = v121;
    v129 = v176;
    sub_274412C20(v128, v176, &qword_28094DF40, &qword_2746519B0);
    v130 = v177;
    v132 = v172;
    v131 = v173;
    v133 = v170;
    *v177 = v172;
    v130[1] = v133;
    v130[2] = v131;
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DF98, &qword_274651A80);
    sub_274412C20(v127, v130 + v134[12], &qword_28094DF58, &unk_2746519C8);
    sub_274412C20(v129, v130 + v134[16], &qword_28094DF40, &qword_2746519B0);
    v135 = (v130 + v134[20]);
    v136 = v185;
    *v135 = v123;
    v135[1] = v136;
    v137 = v168;
    v138 = v184;
    v135[2] = v168;
    v135[3] = v138;
    v135[4] = v126;
    v135[5] = 0xBFF0000000000000;
    v139 = v123;
    v140 = v137;

    v141 = v132;

    sub_2744C9C24(v182, &qword_28094DF40);
    sub_2744C9C24(v181, &qword_28094DF58);

    sub_2744C9C24(v129, &qword_28094DF40);
    sub_2744C9C24(v127, &qword_28094DF58);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    v142 = v51;
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_2744BC13C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v4 = v2 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_274648560;
      *(v8 + 32) = a2;
      v11 = 0;
      v9 = *(v6 + 8);
      v10 = a2;
      v9(v8, &v11, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744BC290(uint64_t a1, void *a2)
{
  v4 = [*(a2[1] + 24) actions];
  sub_274412734(0, &qword_28094E040, 0x277D7C098);
  sub_27463B81C();

  sub_2744B29A0();
  v6 = v5;
  LOBYTE(v4) = v7;

  if ((v4 & 1) == 0)
  {
    v9 = a2[4];
    if (v9)
    {
      v10 = v9 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate;
      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 32))(a1, v6, ObjectType, v11);
        return swift_unknownObjectRelease();
      }
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744C9840(&qword_28094A730, type metadata accessor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  return result;
}

void sub_2744BC434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = [*(*(a3 + 8) + 24) actions];
    sub_274412734(0, &qword_28094E040, 0x277D7C098);
    sub_27463B81C();

    sub_2744B29A0();
    v10 = v9;
    v12 = v11;

    if ((v12 & 1) == 0 && (swift_beginAccess(), (v13 = swift_unknownObjectWeakLoadStrong()) != 0) && (v14 = v13, v15 = v13 + OBJC_IVAR____TtC14WorkflowEditor21WorkflowEditorOptions_editorDelegate, swift_beginAccess(), v16 = swift_unknownObjectWeakLoadStrong(), v17 = *(v15 + 8), v14, v16))
    {
      v18 = __OFADD__(v10, 1);
      v19 = v10 + 1;
      if (v18)
      {
        __break(1u);
      }

      else
      {
        ObjectType = swift_getObjectType();
        (*(v17 + 32))(a1, v19, ObjectType, v17);

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_2744BC5E4(uint64_t a1)
{
  v2 = type metadata accessor for WorkflowView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v20[0] = *a1;
  v20[1] = v6;
  v20[2] = v7;
  if (!sub_27451F01C(v20))
  {
    return 0;
  }

  sub_2744C9158();
  sub_27463B9CC();
  v19 = v5;
  v18 = v7;
  v8 = sub_27463B9BC();
  v9 = (v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D85700];
  *(v10 + 16) = v8;
  *(v10 + 24) = v11;
  sub_2744C7648();
  v12 = (v10 + v9);
  *v12 = v19;
  v12[1] = v6;
  v12[2] = v18;
  sub_2744C9158();
  v13 = v19;
  v14 = sub_27463B9BC();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = MEMORY[0x277D85700];
  sub_2744C7648();
  v16 = (v15 + v9);
  *v16 = v13;
  v16[1] = v6;
  v16[2] = v18;
  sub_27463AF0C();
  return v20[0];
}

uint64_t sub_2744BC830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  sub_27463B13C();
  sub_27463946C();
}

double sub_2744BC8A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = sub_274639B2C();
  sub_2744BCA88(a1, v36);
  v33 = v36[1];
  v34 = v36[0];
  v4 = v37;
  v32 = v38;
  v40 = 1;
  v39 = v37;
  v31 = sub_27463A31C();
  sub_2746390AC();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(v41[0]) = 0;
  v13 = sub_27463A38C();
  sub_2746390AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  LOBYTE(v36[0]) = 0;
  v30 = sub_27463A44C();
  KeyPath = swift_getKeyPath();
  v23 = sub_27463ABCC();
  v24 = swift_getKeyPath();
  v25 = sub_27463B0CC();
  v27 = v26;
  sub_27463AB6C();
  v28 = sub_27463ABAC();

  *a2 = v35;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = v34;
  *(a2 + 32) = v33;
  *(a2 + 40) = v4;
  *(a2 + 48) = v32;
  *(a2 + 64) = v31;
  *(a2 + 72) = v6;
  *(a2 + 80) = v8;
  *(a2 + 88) = v10;
  *(a2 + 96) = v12;
  *(a2 + 104) = 0;
  *(a2 + 112) = v13;
  *(a2 + 113) = v36[0];
  *(a2 + 116) = *(v36 + 3);
  *(a2 + 120) = v15;
  *(a2 + 128) = v17;
  *(a2 + 136) = v19;
  *(a2 + 144) = v21;
  *(a2 + 152) = 0;
  *(a2 + 156) = *(v41 + 3);
  *(a2 + 153) = v41[0];
  *(a2 + 160) = KeyPath;
  *(a2 + 168) = v30;
  *(a2 + 176) = v24;
  *(a2 + 184) = v23;
  *(a2 + 192) = sub_2744BCD38;
  *(a2 + 200) = 0;
  *(a2 + 208) = v25;
  *(a2 + 216) = v27;
  *(a2 + 224) = v28;
  result = 4.0;
  *(a2 + 232) = xmmword_274651470;
  *(a2 + 248) = 0x4010000000000000;
  return result;
}