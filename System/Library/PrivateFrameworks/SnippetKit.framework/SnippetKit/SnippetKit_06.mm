uint64_t FactItemStandard.init(text1:text2:text3:text4:text5:thumbnail:action:componentName:linkIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  type metadata accessor for _ProtoFactItem_Standard(0);
  OUTLINED_FUNCTION_8_8();
  sub_26A150894(v15, v16, &protocol conformance descriptor for _ProtoFactItem_Standard);
  sub_26A4249C4();

  sub_26A0E48F0(a7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(a6, &qword_28036CB00, &unk_26A426450);
  sub_26A0E48F0(a5, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a4, &qword_28036CB10, &unk_26A426460);
  sub_26A0E48F0(a3, &qword_28036CB08, &unk_26A428720);
  sub_26A0E48F0(a2, &qword_28036CB08, &unk_26A428720);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A14EAA4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v105 = a7;
  v106 = a8;
  v101 = a5;
  v102 = a6;
  v96 = a3;
  v97 = a4;
  v112 = a1;
  v13 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v13 - 8);
  v95 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v15 - 8);
  v108 = &v84 - v16;
  v107 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v107);
  v91 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v92 = &v84 - v19;
  v20 = type metadata accessor for VisualProperty(0);
  MEMORY[0x28223BE20](v20 - 8);
  v94 = &v84 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  MEMORY[0x28223BE20](v22 - 8);
  v104 = &v84 - v23;
  v103 = type metadata accessor for _ProtoVisualProperty(0);
  MEMORY[0x28223BE20](v103);
  v89 = &v84 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v90 = &v84 - v26;
  v27 = type metadata accessor for MultilineTextProperty(0);
  MEMORY[0x28223BE20](v27 - 8);
  v93 = &v84 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE0, &unk_26A4273F0);
  MEMORY[0x28223BE20](v29 - 8);
  v99 = &v84 - v30;
  v98 = type metadata accessor for _ProtoMultilineTextProperty(0);
  MEMORY[0x28223BE20](v98);
  v86 = &v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v87 = &v84 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  MEMORY[0x28223BE20](v34 - 8);
  v100 = &v84 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v84 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v84 - v40;
  v42 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v42);
  v88 = &v84 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v85 = &v84 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v84 - v47;
  MEMORY[0x28223BE20](v49);
  v50 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v50 - 8);
  v51 = a2[3];
  v52 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v51);
  (*(v52 + 8))(v51, v52);
  sub_26A1507E8();
  _ProtoFactItem_Standard.text1.setter();
  sub_26A10FD9C();
  v53 = v110;
  if (v110)
  {
    v54 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v54 + 8))(v53, v54);
    sub_26A1507E8();
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v41, 1, v42) != 1)
    {
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.text2.setter();
      sub_26A15083C(v48, type metadata accessor for _ProtoTextProperty);
      goto LABEL_6;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v41, 1, 1, v42);
  }

  sub_26A0E48F0(v41, &qword_28036C7B8, &unk_26A425BF0);
LABEL_6:
  sub_26A10FD9C();
  v55 = v110;
  if (v110)
  {
    v56 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v56 + 8))(v55, v56);
    sub_26A1507E8();
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v38, 1, v42) != 1)
    {
      v57 = v85;
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.text3.setter();
      sub_26A15083C(v57, type metadata accessor for _ProtoTextProperty);
      goto LABEL_11;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB08, &unk_26A428720);
    __swift_storeEnumTagSinglePayload(v38, 1, 1, v42);
  }

  sub_26A0E48F0(v38, &qword_28036C7B8, &unk_26A425BF0);
LABEL_11:
  sub_26A10FD9C();
  v58 = v110;
  if (v110)
  {
    v59 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v59 + 8))(v58, v59);
    v60 = v99;
    sub_26A1507E8();
    v61 = v98;
    __swift_storeEnumTagSinglePayload(v60, 0, 1, v98);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v60, 1, v61) != 1)
    {
      v62 = v87;
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.text4.setter();
      sub_26A15083C(v62, type metadata accessor for _ProtoMultilineTextProperty);
      goto LABEL_16;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB10, &unk_26A426460);
    v60 = v99;
    __swift_storeEnumTagSinglePayload(v99, 1, 1, v98);
  }

  sub_26A0E48F0(v60, &qword_28036CAE0, &unk_26A4273F0);
LABEL_16:
  sub_26A10FD9C();
  v63 = v110;
  if (v110)
  {
    v64 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v64 + 8))(v63, v64);
    v65 = v100;
    sub_26A1507E8();
    __swift_storeEnumTagSinglePayload(v65, 0, 1, v42);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v65, 1, v42) != 1)
    {
      v66 = v88;
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.text5.setter();
      sub_26A15083C(v66, type metadata accessor for _ProtoTextProperty);
      goto LABEL_21;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB08, &unk_26A428720);
    v65 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v42);
  }

  sub_26A0E48F0(v65, &qword_28036C7B8, &unk_26A425BF0);
LABEL_21:
  sub_26A10FD9C();
  v67 = v110;
  if (v110)
  {
    v68 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v68 + 8))(v67, v68);
    v69 = v104;
    sub_26A1507E8();
    v70 = v103;
    __swift_storeEnumTagSinglePayload(v69, 0, 1, v103);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v69, 1, v70) != 1)
    {
      v71 = v90;
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.thumbnail.setter();
      sub_26A15083C(v71, type metadata accessor for _ProtoVisualProperty);
      goto LABEL_26;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CB00, &unk_26A426450);
    v69 = v104;
    __swift_storeEnumTagSinglePayload(v104, 1, 1, v103);
  }

  sub_26A0E48F0(v69, &qword_28036CAE8, &unk_26A426430);
LABEL_26:
  sub_26A10FD9C();
  v72 = v110;
  if (v110)
  {
    v73 = v111;
    __swift_project_boxed_opaque_existential_1(v109, v110);
    (*(v73 + 8))(v72, v73);
    v74 = v108;
    sub_26A1507E8();
    v75 = v107;
    __swift_storeEnumTagSinglePayload(v74, 0, 1, v107);
    __swift_destroy_boxed_opaque_existential_1(v109);
    if (__swift_getEnumTagSinglePayload(v74, 1, v75) != 1)
    {
      v76 = v92;
      sub_26A1507E8();
      sub_26A1509B8();
      _ProtoFactItem_Standard.action.setter();
      sub_26A15083C(v76, type metadata accessor for _ProtoActionProperty);
      goto LABEL_31;
    }
  }

  else
  {
    sub_26A0E48F0(v109, &qword_28036CAF8, &unk_26A426D30);
    v74 = v108;
    __swift_storeEnumTagSinglePayload(v108, 1, 1, v107);
  }

  sub_26A0E48F0(v74, &off_28036C7C0, &off_26A427400);
LABEL_31:

  result = _ProtoFactItem_Standard.componentName.setter(a9, a10, v77, v78, v79);
  if (a12)
  {

    return _ProtoFactItem_Standard.linkIdentifier.setter(a11, a12, v81, v82, v83);
  }

  return result;
}

void FactItemStandard.init(text1:text2:text3:text4:text5:thumbnail:action:componentName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_76();
  v30 = v21;
  v23 = v22;
  v25 = v24;
  v31 = v26;
  OUTLINED_FUNCTION_54_2();
  sub_26A0E5D68(v27, v41);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_Standard(0);
  OUTLINED_FUNCTION_8_8();
  sub_26A150894(v28, v29, &protocol conformance descriptor for _ProtoFactItem_Standard);
  sub_26A4249C4();

  sub_26A0E48F0(v23, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v25, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v30);
  sub_26A0E48F0(v31, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v32);
  OUTLINED_FUNCTION_164_0(v33);
  __swift_destroy_boxed_opaque_existential_1(v34);
  sub_26A0E48F0(v35, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v36, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v37);
  sub_26A0E48F0(&v38, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v39);
  OUTLINED_FUNCTION_164_0(&v40);
  __swift_destroy_boxed_opaque_existential_1(v41);
  OUTLINED_FUNCTION_75();
}

void FactItemStandard.init(text1:text2:text3:text4:text5:thumbnail:action:)()
{
  OUTLINED_FUNCTION_76();
  v7 = v1;
  v8 = v0;
  v9 = v3;
  v10 = v2;
  OUTLINED_FUNCTION_54_2();
  sub_26A0E5D68(v4, v27);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  sub_26A0E5D68(v27, v20);
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_32_1();
  sub_26A10FD9C();
  sub_26A10FD9C();
  type metadata accessor for _ProtoFactItem_Standard(0);
  OUTLINED_FUNCTION_8_8();
  sub_26A150894(v5, v6, &protocol conformance descriptor for _ProtoFactItem_Standard);
  sub_26A4249C4();
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v8, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v9);
  sub_26A0E48F0(v10, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v11);
  OUTLINED_FUNCTION_164_0(v12);
  __swift_destroy_boxed_opaque_existential_1(v13);
  sub_26A0E48F0(v21, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v22, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v23);
  sub_26A0E48F0(&v24, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(&v25);
  OUTLINED_FUNCTION_164_0(&v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  sub_26A0E48F0(v14, &qword_28036CAF8, &unk_26A426D30);
  sub_26A0E48F0(v15, &qword_28036CB00, &unk_26A426450);
  OUTLINED_FUNCTION_164_0(v16);
  sub_26A0E48F0(v17, &qword_28036CB10, &unk_26A426460);
  OUTLINED_FUNCTION_164_0(v18);
  OUTLINED_FUNCTION_164_0(v19);
  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_75();
}

Swift::String __swiftcall FactItemStandard.description(redacted:)(Swift::Bool redacted)
{
  OUTLINED_FUNCTION_76();
  v86 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v5);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  v89 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB20, &unk_26A426470);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v88 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB28, &qword_26A427980);
  OUTLINED_FUNCTION_41(v11);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  v87 = &v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v14);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_56_3();
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_18();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v85 - v27;
  v29 = type metadata accessor for FactItemStandard(0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFE0, &qword_26A428730);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v33);
  v35 = &v85 - v34;
  OUTLINED_FUNCTION_20_7();
  sub_26A1509B8();
  if (v4)
  {
    _ProtoFactItem_Standard.redactedProto.getter();
  }

  else
  {
    sub_26A1509B8();
  }

  sub_26A1507E8();
  v35[*(v32 + 32)] = v4 & 1;
  OUTLINED_FUNCTION_45_2();
  v36 = MEMORY[0x277D84F90];
  *&v35[*(v32 + 28)] = MEMORY[0x277D84F90];
  v37 = type metadata accessor for _ProtoFactItem_Standard(0);
  OUTLINED_FUNCTION_142(*&v35[*(v37 + 20)] + OBJC_IVAR____TtCV10SnippetKit23_ProtoFactItem_StandardP33_6A08B4F1411A6D70BEA2E2FC900F252F13_StorageClass__text1, &v90);
  sub_26A10FD9C();
  v38 = OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_37(v38, v39, v16);
  if (v40)
  {
    *v20 = v36;
    *(v20 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v41 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
    v48 = OUTLINED_FUNCTION_107();
    OUTLINED_FUNCTION_37(v48, v49, v16);
    if (!v40)
    {
      sub_26A0E48F0(v2, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A1507E8();
  }

  sub_26A1507E8();
  v50 = type metadata accessor for TextProperty(0);
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v50);
  OUTLINED_FUNCTION_222();
  sub_26A107D8C(v28, v51 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  sub_26A0E48F0(v28, &qword_28036CB30, &qword_26A426480);
  FactItemStandard.text2.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107D8C(v25, v52 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  v53 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v53, v54, &qword_26A426480);
  FactItemStandard.text3.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107D8C(v25, v55 & 0xFFFF0000FFFFFFFFLL | 0x3300000000, 0xE500000000000000);
  v56 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v56, v57, &qword_26A426480);
  v58 = v87;
  FactItemStandard.text4.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107D64(v58, v59 & 0xFFFF0000FFFFFFFFLL | 0x3400000000, 0xE500000000000000);
  sub_26A0E48F0(v58, &qword_28036CB28, &qword_26A427980);
  FactItemStandard.text5.getter();
  OUTLINED_FUNCTION_222();
  sub_26A107D8C(v25, v60 & 0xFFFF0000FFFFFFFFLL | 0x3500000000, 0xE500000000000000);
  v61 = OUTLINED_FUNCTION_37_0();
  sub_26A0E48F0(v61, v62, &qword_26A426480);
  v63 = v88;
  FactItemStandard.thumbnail.getter();
  sub_26A107D3C(v63, 0x69616E626D756874, 0xE90000000000006CLL);
  sub_26A0E48F0(v63, &qword_28036CB20, &unk_26A426470);
  v64 = v89;
  FactItemStandard.action.getter();
  sub_26A107C38();
  sub_26A0E48F0(v64, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F7D18(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v66, v67, v68, v69, v85, v86);

  v70 = swift_getKeyPath();
  sub_26A0F86AC(v70, 0x6E6564496B6E696CLL, 0xEE00726569666974, 1, v71, v72, v73, v74, v85, v86);

  sub_26A0FED50(v75, v76, v77, v78, v79, v80, v81);
  sub_26A0E48F0(v35, &qword_28036CFE0, &qword_26A428730);
  OUTLINED_FUNCTION_175();
  OUTLINED_FUNCTION_75();
  result._object = v83;
  result._countAndFlagsBits = v82;
  return result;
}

uint64_t FactItemStandard.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoFactItem_Standard(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_7_6();
  sub_26A1509B8();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_19_8();
  sub_26A1507E8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

uint64_t FactItemStandard.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for FactItemStandard(0);
  *(inited + 64) = &protocol witness table for FactItemStandard;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_20_7();
  sub_26A1509B8();
  OUTLINED_FUNCTION_142(&off_280372D50, v3);

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A150894(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t type metadata accessor for FactItemStandard(uint64_t a1)
{
  result = qword_28036D5A0;
  if (!qword_28036D5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A1507E8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A15083C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A150894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A15094C(uint64_t a1)
{
  result = type metadata accessor for _ProtoFactItem_Standard(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A1509B8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t OUTLINED_FUNCTION_18_6()
{

  return sub_26A1507E8();
}

uint64_t OUTLINED_FUNCTION_23_11()
{

  return type metadata accessor for _ProtoFactItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_24_10()
{

  return sub_26A1507E8();
}

void OUTLINED_FUNCTION_26_8()
{

  sub_26A2C60D4();
}

uint64_t OUTLINED_FUNCTION_29_3@<X0>(uint64_t a2@<X8>)
{
  *v2 = a2;
  *(v2 + 8) = 0;

  return _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(a1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_45_2()
{

  return sub_26A15083C(v1, v0);
}

uint64_t OUTLINED_FUNCTION_49_5()
{

  return sub_26A1507E8();
}

uint64_t OUTLINED_FUNCTION_56_3()
{

  return type metadata accessor for _ProtoTextProperty(0);
}

uint64_t OUTLINED_FUNCTION_57_3()
{

  return type metadata accessor for _ProtoFactItem_Standard(0);
}

uint64_t OUTLINED_FUNCTION_59_3()
{

  return sub_26A1507E8();
}

uint64_t MapOverlay(latitude:longitude:latitudeSpan:longitudeSpan:annotationItem:)(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t *a5, double a6, double a7)
{
  v8 = *a5;
  v9 = *(a5 + 8);
  v23 = a2 & 1;
  *v17 = a6;
  *&v17[1] = a7;
  v17[2] = a1;
  v18 = a2 & 1;
  v19 = a3;
  v20 = a4 & 1;
  v21 = v8;
  v22 = v9;
  sub_26A424444();
  swift_allocObject();
  sub_26A150DEC(v8, v9);
  sub_26A424434();
  sub_26A150E00();
  v10 = sub_26A424424();
  v12 = v11;

  if (v7)
  {
    return sub_26A150E54(v17);
  }

  sub_26A150E54(v17);
  v14 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_20_8();
  sub_26A154288(v15, v16, &protocol conformance descriptor for _ProtoCustomCanvas);
  sub_26A4249C4();
  return sub_26A0E4784(v10, v12);
}

uint64_t sub_26A150DEC(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
  }

  return result;
}

unint64_t sub_26A150E00()
{
  result = qword_28036D5B0;
  if (!qword_28036D5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D5B0);
  }

  return result;
}

uint64_t MapOverlayModel.serializedData.getter()
{
  sub_26A424444();
  swift_allocObject();
  sub_26A424434();
  sub_26A150E00();
  v0 = sub_26A424424();

  return v0;
}

uint64_t sub_26A150FB0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x697461746F6E6E61 && a2 == 0xEE00776569566E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A425354();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A1510D8(char a1)
{
  if (!a1)
  {
    return 0x656475746974616CLL;
  }

  if (a1 == 1)
  {
    return 0x64757469676E6F6CLL;
  }

  return 0x697461746F6E6E61;
}

uint64_t sub_26A151148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A150FB0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A151170@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A1510D0();
  *a1 = result;
  return result;
}

uint64_t sub_26A151198(uint64_t a1)
{
  v2 = sub_26A154234();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A1511D4(uint64_t a1)
{
  v2 = sub_26A154234();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapItems.MapAnnotationItem.encode(to:)()
{
  OUTLINED_FUNCTION_34_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D5B8, &qword_26A4287F0);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(v0, v0[3]);
  v3 = sub_26A154234();
  OUTLINED_FUNCTION_30_4(&type metadata for MapItems.MapAnnotationItem.CodingKeys, v4, v3);
  OUTLINED_FUNCTION_16_6();
  if (!v1)
  {
    v5 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_22_8(v5, v6);
    type metadata accessor for MapItems.MapAnnotationItem(0);
    v7 = OUTLINED_FUNCTION_21_7();
    type metadata accessor for CustomCanvas(v7);
    OUTLINED_FUNCTION_18_7();
    v10 = sub_26A154288(v8, v9, &protocol conformance descriptor for CustomCanvas);
    OUTLINED_FUNCTION_13_7(v10);
  }

  v11 = OUTLINED_FUNCTION_35_5();
  return v12(v11);
}

uint64_t MapItems.MapAnnotationItem.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*v1 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26D65C370](*&v2);
  v3 = OUTLINED_FUNCTION_25_9(v1[1]);
  MEMORY[0x26D65C370](v3);
  type metadata accessor for MapItems.MapAnnotationItem(0);
  type metadata accessor for _ProtoCustomCanvas(0);
  OUTLINED_FUNCTION_20_8();
  sub_26A154288(v4, v5, &protocol conformance descriptor for _ProtoCustomCanvas);
  return sub_26A424B44();
}

void MapItems.MapAnnotationItem.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_5();
  v4 = OUTLINED_FUNCTION_23_12(v3);
  type metadata accessor for CustomCanvas(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D5D8, &qword_26A4287F8);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for MapItems.MapAnnotationItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29_4();
  v8 = sub_26A154234();
  OUTLINED_FUNCTION_26_9(&type metadata for MapItems.MapAnnotationItem.CodingKeys, v9, v8);
  if (!v2)
  {
    OUTLINED_FUNCTION_10_11();
    *v1 = v10;
    v11 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_24_11(v11);
    v1[1] = v12;
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_18_7();
    v15 = sub_26A154288(v13, v14, &protocol conformance descriptor for CustomCanvas);
    OUTLINED_FUNCTION_6_9(v15);
    v16 = OUTLINED_FUNCTION_9_9();
    v17(v16);
    sub_26A1542D0(v18);
    OUTLINED_FUNCTION_38_4(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A1516E8(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_45_3();
  if (*(v6 + 8) != *(v7 + 8))
  {
    return 0;
  }

  v10 = v5;
  v8 = *(v4(0) + 24);

  return v10(v3 + v8, v2 + v8);
}

uint64_t sub_26A151778(uint64_t a1)
{
  v2 = sub_26A1543A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A1517B4(uint64_t a1)
{
  v2 = sub_26A1543A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapItems.MapMarkerItem.encode(to:)()
{
  OUTLINED_FUNCTION_34_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D5E8, &qword_26A428800);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(v0, v0[3]);
  v3 = sub_26A1543A8();
  OUTLINED_FUNCTION_30_4(&type metadata for MapItems.MapMarkerItem.CodingKeys, v4, v3);
  OUTLINED_FUNCTION_16_6();
  if (!v1)
  {
    v5 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_22_8(v5, v6);
    type metadata accessor for MapItems.MapMarkerItem(0);
    v7 = OUTLINED_FUNCTION_21_7();
    type metadata accessor for Color(v7);
    OUTLINED_FUNCTION_1_13();
    v10 = sub_26A154288(v8, v9, &protocol conformance descriptor for Color);
    OUTLINED_FUNCTION_13_7(v10);
  }

  v11 = OUTLINED_FUNCTION_35_5();
  return v12(v11);
}

uint64_t sub_26A151948(uint64_t a1, void (*a2)(void))
{
  v4 = *v2;
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26D65C370](*&v4);
  v5 = OUTLINED_FUNCTION_25_9(v2[1]);
  MEMORY[0x26D65C370](v5);
  a2(0);
  type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_19_9();
  sub_26A154288(v6, v7, &protocol conformance descriptor for _ProtoColor);
  return sub_26A424B44();
}

uint64_t sub_26A151A14(uint64_t (*a1)(_BYTE *))
{
  OUTLINED_FUNCTION_4_0(a1);
  a1(v3);
  return sub_26A425554();
}

void MapItems.MapMarkerItem.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_5();
  v4 = OUTLINED_FUNCTION_23_12(v3);
  type metadata accessor for Color(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D608, &qword_26A428808);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for MapItems.MapMarkerItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29_4();
  v8 = sub_26A1543A8();
  OUTLINED_FUNCTION_26_9(&type metadata for MapItems.MapMarkerItem.CodingKeys, v9, v8);
  if (!v2)
  {
    OUTLINED_FUNCTION_10_11();
    *v1 = v10;
    v11 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_24_11(v11);
    v1[1] = v12;
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_1_13();
    v15 = sub_26A154288(v13, v14, &protocol conformance descriptor for Color);
    OUTLINED_FUNCTION_6_9(v15);
    v16 = OUTLINED_FUNCTION_9_9();
    v17(v16);
    OUTLINED_FUNCTION_17_5(v18);
    OUTLINED_FUNCTION_38_4(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_41_5();
}

uint64_t sub_26A151C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26A425504();
  a4(v6);
  return sub_26A425554();
}

uint64_t sub_26A151D5C@<X0>(double (*a2)(void)@<X1>, double *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  *a4 = a5;
  a4[1] = a6;
  v6 = a2(0);
  return sub_26A1542D0(v6);
}

uint64_t sub_26A151DDC(double a1)
{
  OUTLINED_FUNCTION_45_3();
  v4 = v2 == 0x656475746974616CLL && v3 == 0xE800000000000000;
  if (v4 || (OUTLINED_FUNCTION_37_4(0x656475746974616CLL, 0xE800000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = v2 == 0x64757469676E6F6CLL && v1 == 0xE900000000000065;
    if (v6 || (OUTLINED_FUNCTION_37_4(0x64757469676E6F6CLL, 0xE900000000000065) & 1) != 0)
    {

      return 1;
    }

    else if (v2 == 1953393012 && v1 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_37_4(1953393012, 0xE400000000000000);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A151ECC(uint64_t a1)
{
  v2 = sub_26A15441C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A151F08(uint64_t a1)
{
  v2 = sub_26A15441C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapItems.MapPinItem.encode(to:)()
{
  OUTLINED_FUNCTION_34_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D618, &qword_26A428810);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_141_0();
  OUTLINED_FUNCTION_36_5(v0, v0[3]);
  v3 = sub_26A15441C();
  OUTLINED_FUNCTION_30_4(&type metadata for MapItems.MapPinItem.CodingKeys, v4, v3);
  OUTLINED_FUNCTION_16_6();
  if (!v1)
  {
    v5 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_22_8(v5, v6);
    type metadata accessor for MapItems.MapPinItem(0);
    v7 = OUTLINED_FUNCTION_21_7();
    type metadata accessor for Color(v7);
    OUTLINED_FUNCTION_1_13();
    v10 = sub_26A154288(v8, v9, &protocol conformance descriptor for Color);
    OUTLINED_FUNCTION_13_7(v10);
  }

  v11 = OUTLINED_FUNCTION_35_5();
  return v12(v11);
}

void MapItems.MapPinItem.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_40_5();
  v4 = OUTLINED_FUNCTION_23_12(v3);
  type metadata accessor for Color(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D628, &qword_26A428818);
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for MapItems.MapPinItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_29_4();
  v8 = sub_26A15441C();
  OUTLINED_FUNCTION_26_9(&type metadata for MapItems.MapPinItem.CodingKeys, v9, v8);
  if (!v2)
  {
    OUTLINED_FUNCTION_10_11();
    *v1 = v10;
    v11 = OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_24_11(v11);
    v1[1] = v12;
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_1_13();
    v15 = sub_26A154288(v13, v14, &protocol conformance descriptor for Color);
    OUTLINED_FUNCTION_6_9(v15);
    v16 = OUTLINED_FUNCTION_9_9();
    v17(v16);
    OUTLINED_FUNCTION_17_5(v18);
    OUTLINED_FUNCTION_38_4(v19);
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  OUTLINED_FUNCTION_41_5();
}

uint64_t static MapItems.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {

      sub_26A0DC07C(v6, v2);
      goto LABEL_9;
    }

LABEL_10:
    v8 = 0;
    return v8 & 1;
  }

  if (*(a1 + 8) != 1)
  {
    if (v3 == 2)
    {

      sub_26A0DC838(v7, v2);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  if (v3 != 1)
  {
    goto LABEL_10;
  }

  sub_26A0DC7F8(v4, v2);
LABEL_9:
  v8 = v5;

  return v8 & 1;
}

uint64_t sub_26A152394(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x800000026A447770 == a2;
  if (v3 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656B72614D70616DLL && a2 == 0xED00006D65744972;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74496E695070616DLL && a2 == 0xEA00000000006D65)
    {

      return 2;
    }

    else
    {
      v8 = sub_26A425354();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_26A1524BC(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x656B72614D70616DLL;
  }

  return 0x74496E695070616DLL;
}

uint64_t sub_26A152534(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_26A425354();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_26A1525A4(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1);
  MEMORY[0x26D65C340](0);
  return sub_26A425554();
}

uint64_t sub_26A1525E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A152394(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A152610(uint64_t a1)
{
  v2 = sub_26A154470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A15264C(uint64_t a1)
{
  v2 = sub_26A154470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A1526A8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A0E86D0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26A1526D4(uint64_t a1)
{
  v2 = sub_26A1546D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A152710(uint64_t a1)
{
  v2 = sub_26A1546D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A15274C(uint64_t a1)
{
  v2 = sub_26A1545CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A152788(uint64_t a1)
{
  v2 = sub_26A1545CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26A1527C4(uint64_t a1)
{
  v2 = sub_26A1544C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A152800(uint64_t a1)
{
  v2 = sub_26A1544C4();

  return MEMORY[0x2821FE720](a1, v2);
}

void MapItems.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_5();
  a19 = v25;
  a20 = v26;
  v59 = v22;
  v27 = v21;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D630, &qword_26A428820);
  OUTLINED_FUNCTION_24();
  v55 = v31;
  v56 = v30;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v32);
  v54 = &v50 - v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D638, &qword_26A428828);
  OUTLINED_FUNCTION_24();
  v52 = v35;
  v53 = v34;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_173_0();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D640, &qword_26A428830);
  OUTLINED_FUNCTION_24();
  v51 = v38;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_113();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D648, &qword_26A428838);
  OUTLINED_FUNCTION_24();
  v41 = v40;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_141_0();
  v57 = *v27;
  v43 = *(v27 + 8);
  v44 = v29[3];
  OUTLINED_FUNCTION_36_5(v29, v44);
  sub_26A154470();
  sub_26A425594();
  v45 = (v41 + 8);
  if (v43)
  {
    if (v43 == 1)
    {
      LOBYTE(a10) = 1;
      sub_26A1545CC();
      OUTLINED_FUNCTION_31_5(&type metadata for MapItems.MapMarkerItemCodingKeys, &a10);
      a10 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D680, &qword_26A428848);
      sub_26A154620();
      v46 = v53;
      sub_26A425154();
      v47 = *(v52 + 8);
      v48 = v24;
    }

    else
    {
      LOBYTE(a10) = 2;
      sub_26A1544C4();
      v49 = v54;
      OUTLINED_FUNCTION_31_5(&type metadata for MapItems.MapPinItemCodingKeys, &a10);
      a10 = v57;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D660, &qword_26A428840);
      sub_26A154518();
      v46 = v56;
      sub_26A425154();
      v47 = *(v55 + 8);
      v48 = v49;
    }

    v47(v48, v46);
  }

  else
  {
    LOBYTE(a10) = 0;
    sub_26A1546D4();
    OUTLINED_FUNCTION_31_5(&type metadata for MapItems.MapAnnotationItemCodingKeys, &a10);
    a10 = v57;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6A0, &qword_26A428850);
    sub_26A154728();
    sub_26A425154();
    (*(v51 + 8))(v20, v37);
  }

  (*v45)(v23, v44);
  OUTLINED_FUNCTION_41_5();
}

uint64_t MapItems.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      MEMORY[0x26D65C340](1);
      OUTLINED_FUNCTION_3_11();
      v5 = type metadata accessor for MapItems.MapMarkerItem;
      v6 = type metadata accessor for MapItems.MapMarkerItem;
    }

    else
    {
      MEMORY[0x26D65C340](2);
      OUTLINED_FUNCTION_2_7();
      v5 = type metadata accessor for MapItems.MapPinItem;
      v6 = type metadata accessor for MapItems.MapPinItem;
    }

    return sub_26A154814(a1, v3, v4, v5, v6);
  }

  else
  {
    MEMORY[0x26D65C340](0);

    return sub_26A154984(a1, v3);
  }
}

uint64_t MapItems.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4_0(a1);
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x26D65C340](1);
      OUTLINED_FUNCTION_3_11();
      v5 = type metadata accessor for MapItems.MapMarkerItem;
      v6 = type metadata accessor for MapItems.MapMarkerItem;
    }

    else
    {
      MEMORY[0x26D65C340](2);
      OUTLINED_FUNCTION_2_7();
      v5 = type metadata accessor for MapItems.MapPinItem;
      v6 = type metadata accessor for MapItems.MapPinItem;
    }

    sub_26A154814(v8, v2, v4, v5, v6);
  }

  else
  {
    MEMORY[0x26D65C340](0);
    sub_26A154984(v8, v2);
  }

  return sub_26A425554();
}

void MapItems.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_40_5();
  a19 = v23;
  a20 = v24;
  v97 = v20;
  v26 = v25;
  v94 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6B8, &qword_26A428858);
  OUTLINED_FUNCTION_24();
  v92 = v29;
  v93 = v28;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v30);
  v95 = &v84[-v31];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6C0, &qword_26A428860);
  OUTLINED_FUNCTION_24();
  v90 = v32;
  v91 = v33;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v34);
  v36 = &v84[-v35];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6C8, &qword_26A428868);
  OUTLINED_FUNCTION_24();
  v89 = v37;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_173_0();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D0, &unk_26A428870);
  OUTLINED_FUNCTION_24();
  v41 = v40;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_141_0();
  v96 = v26;
  v43 = OUTLINED_FUNCTION_246();
  OUTLINED_FUNCTION_36_5(v43, v44);
  sub_26A154470();
  v45 = v97;
  sub_26A425574();
  if (v45)
  {
    goto LABEL_11;
  }

  v87 = v22;
  v88 = v36;
  v97 = v41;
  v46 = v21;
  v47 = sub_26A425074();
  sub_26A1547DC(v47, 0);
  v52 = v39;
  if (v50 == v51 >> 1)
  {
    goto LABEL_10;
  }

  v86 = 0;
  if (v50 < (v51 >> 1))
  {
    v53 = v39;
    v54 = *(v49 + v50);
    sub_26A155F98(v50 + 1, v51 >> 1, v48, v49, v50, v51);
    v56 = v55;
    v58 = v57;
    swift_unknownObjectRelease();
    if (v56 == v58 >> 1)
    {
      v85 = v54;
      if (v54)
      {
        if (v54 == 1)
        {
          LOBYTE(a10) = 1;
          v59 = sub_26A1545CC();
          OUTLINED_FUNCTION_39_5(&type metadata for MapItems.MapMarkerItemCodingKeys, &a10, v60, v61, v59);
          v62 = v94;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D680, &qword_26A428848);
          sub_26A154BFC();
          OUTLINED_FUNCTION_33_3();
          v70 = v90;
          sub_26A425054();
          swift_unknownObjectRelease();
          v74 = OUTLINED_FUNCTION_49_6();
          v75(v74, v70);
          v76 = OUTLINED_FUNCTION_12_10();
          v77(v76);
        }

        else
        {
          LOBYTE(a10) = 2;
          v67 = sub_26A1544C4();
          OUTLINED_FUNCTION_39_5(&type metadata for MapItems.MapPinItemCodingKeys, &a10, v68, v69, v67);
          v62 = v94;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D660, &qword_26A428840);
          sub_26A154B48();
          OUTLINED_FUNCTION_33_3();
          v72 = v93;
          sub_26A425054();
          v73 = v97;
          swift_unknownObjectRelease();
          v82 = OUTLINED_FUNCTION_49_6();
          v83(v82, v72);
          (*(v73 + 8))(v21, v53);
        }

        v78 = a10;
        v79 = v96;
        goto LABEL_17;
      }

      LOBYTE(a10) = 0;
      sub_26A1546D4();
      v66 = v86;
      sub_26A424FF4();
      if (!v66)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6A0, &qword_26A428850);
        sub_26A154CB0();
        OUTLINED_FUNCTION_33_3();
        sub_26A425054();
        v71 = v97;
        swift_unknownObjectRelease();
        v80 = OUTLINED_FUNCTION_48_5();
        v81(v80);
        (*(v71 + 8))(v21, v53);
        v78 = a10;
        v79 = v96;
        v62 = v94;
LABEL_17:
        *v62 = v78;
        *(v62 + 8) = v85;
        goto LABEL_12;
      }

      (*(v97 + 8))(v21, v53);
      swift_unknownObjectRelease();
LABEL_11:
      v79 = v96;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v79);
      OUTLINED_FUNCTION_41_5();
      return;
    }

    v52 = v53;
LABEL_10:
    v63 = sub_26A424F34();
    swift_allocError();
    v65 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D6D8, &qword_26A42F120);
    *v65 = &type metadata for MapItems;
    sub_26A425004();
    sub_26A424F24();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v97 + 8))(v46, v52);
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_26A153518(uint64_t a1)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  v6 = v2;
  sub_26A425504();
  MapItems.hash(into:)(v4);
  return sub_26A425554();
}

uint64_t MapOverlayModel.annotationItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  v3 = *(v1 + 56);
  *(a1 + 8) = v3;
  return sub_26A150DEC(v2, v3);
}

BOOL static MapOverlayModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v29 = v2;
  v30 = v3;
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a2 + 24);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if (v7 != 255)
  {
    v27 = *(a1 + 48);
    v28 = v7;
    if (v11 != 255)
    {
      v25 = v10;
      v26 = v11;
      v12 = OUTLINED_FUNCTION_175();
      sub_26A150DEC(v12, v13);
      sub_26A150DEC(v10, v11);
      v14 = OUTLINED_FUNCTION_175();
      sub_26A150DEC(v14, v15);
      v16 = static MapItems.== infix(_:_:)(&v27, &v25);

      v17 = OUTLINED_FUNCTION_175();
      sub_26A154D64(v17, v18);
      return (v16 & 1) != 0;
    }

    v19 = OUTLINED_FUNCTION_175();
    sub_26A150DEC(v19, v20);
    sub_26A150DEC(v10, 255);
    v21 = OUTLINED_FUNCTION_175();
    sub_26A150DEC(v21, v22);

LABEL_25:
    v23 = OUTLINED_FUNCTION_175();
    sub_26A154D64(v23, v24);
    sub_26A154D64(v10, v11);
    return 0;
  }

  sub_26A150DEC(*(a1 + 48), 255);
  if (v11 != 255)
  {
    sub_26A150DEC(v10, v11);
    goto LABEL_25;
  }

  sub_26A150DEC(v10, 255);
  sub_26A154D64(v6, 255);
  return 1;
}

uint64_t sub_26A153740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v3 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_26A425354() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656475746974616CLL && a2 == 0xEC0000006E617053;
      if (v7 || (sub_26A425354() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x64757469676E6F6CLL && a2 == 0xED00006E61705365;
        if (v8 || (sub_26A425354() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x697461746F6E6E61 && a2 == 0xEE006D6574496E6FLL)
        {

          return 4;
        }

        else
        {
          v10 = sub_26A425354();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_26A1538FC(char a1)
{
  result = 0x656475746974616CLL;
  switch(a1)
  {
    case 1:
    case 3:
      result = 0x64757469676E6F6CLL;
      break;
    case 4:
      result = 0x697461746F6E6E61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_26A1539A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A153740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A1539CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A1538F4();
  *a1 = result;
  return result;
}

uint64_t sub_26A1539F4(uint64_t a1)
{
  v2 = sub_26A154D78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A153A30(uint64_t a1)
{
  v2 = sub_26A154D78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapOverlayModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D710, &qword_26A428880);
  OUTLINED_FUNCTION_24();
  v6 = v5;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_44_6();
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A154D78();
  sub_26A425594();
  sub_26A425134();
  if (!v11)
  {
    OUTLINED_FUNCTION_5_8();
    OUTLINED_FUNCTION_47_3();
    sub_26A425134();
    OUTLINED_FUNCTION_28_3();
    OUTLINED_FUNCTION_47_3();
    sub_26A4250E4();
    OUTLINED_FUNCTION_47_3();
    sub_26A4250E4();
    sub_26A150DEC(v8, v9);
    sub_26A154DCC();
    OUTLINED_FUNCTION_47_3();
    sub_26A4250F4();
    sub_26A154D64(v8, v9);
  }

  return (*(v6 + 8))(v2, v4);
}

uint64_t MapOverlayModel.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26D65C370](*&v1);
  if (v2 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v2;
  }

  MEMORY[0x26D65C370](*&v9);
  if (v4 == 1)
  {
    sub_26A425524();
    if (!v6)
    {
LABEL_8:
      sub_26A425524();
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v5;
      }

      else
      {
        v10 = 0;
      }

      MEMORY[0x26D65C370](v10);
      goto LABEL_17;
    }
  }

  else
  {
    sub_26A425524();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = v3;
    }

    else
    {
      v11 = 0;
    }

    MEMORY[0x26D65C370](v11);
    if (!v6)
    {
      goto LABEL_8;
    }
  }

  sub_26A425524();
LABEL_17:
  if (v8 == 255)
  {
    return sub_26A425524();
  }

  sub_26A425524();
  if (v8)
  {
    if (v8 == 1)
    {
      MEMORY[0x26D65C340](1);

      OUTLINED_FUNCTION_3_11();
      v13 = OUTLINED_FUNCTION_246();
      sub_26A154814(v13, v14, v15, v16, v17);
      v18 = v7;
      v19 = 1;
    }

    else
    {
      MEMORY[0x26D65C340](2);

      OUTLINED_FUNCTION_2_7();
      v22 = OUTLINED_FUNCTION_246();
      sub_26A154814(v22, v23, v24, v25, v26);
      v18 = v7;
      v19 = 2;
    }
  }

  else
  {
    MEMORY[0x26D65C340](0);

    v20 = OUTLINED_FUNCTION_246();
    sub_26A154984(v20, v21);
    v18 = v7;
    v19 = 0;
  }

  return sub_26A154D64(v18, v19);
}

uint64_t MapOverlayModel.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_4_0(a1);
  MapOverlayModel.hash(into:)();
  return sub_26A425554();
}

uint64_t MapOverlayModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D728, &qword_26A428888);
  OUTLINED_FUNCTION_24();
  v7 = v6;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  OUTLINED_FUNCTION_36_5(a1, a1[3]);
  sub_26A154D78();
  sub_26A425574();
  if (!v2)
  {
    LOBYTE(v25) = 0;
    OUTLINED_FUNCTION_11_9();
    sub_26A425044();
    v12 = v11;
    LOBYTE(v25) = 1;
    OUTLINED_FUNCTION_11_9();
    sub_26A425044();
    v14 = v13;
    LOBYTE(v25) = 2;
    OUTLINED_FUNCTION_11_9();
    v15 = sub_26A425014();
    v28 = v16 & 1;
    LOBYTE(v25) = 3;
    OUTLINED_FUNCTION_11_9();
    v18 = sub_26A425014();
    v27 = v19 & 1;
    v29 = 4;
    sub_26A154E20();
    sub_26A425024();
    (*(v7 + 8))(v10, v5);
    v20 = v25;
    v21 = v26;
    v22 = v28;
    v23 = v27;
    *a2 = v12;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = v22;
    *(a2 + 32) = v18;
    *(a2 + 40) = v23;
    *(a2 + 48) = v20;
    *(a2 + 56) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A15410C(uint64_t a1)
{
  sub_26A425504();
  MapOverlayModel.hash(into:)();
  return sub_26A425554();
}

double MapOverlayModel.init(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26A4243D4();
  swift_allocObject();
  sub_26A4243C4();
  sub_26A154E74();
  sub_26A4243B4();
  sub_26A0E4784(a1, a2);

  if (!v3)
  {
    *a3 = v8;
    a3[1] = v9;
    a3[2] = *v10;
    result = *&v10[9];
    *(a3 + 41) = *&v10[9];
  }

  return result;
}

unint64_t sub_26A154234()
{
  result = qword_28036D5C0;
  if (!qword_28036D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D5C0);
  }

  return result;
}

uint64_t sub_26A154288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1542D0(double a1)
{
  OUTLINED_FUNCTION_45_3();
  v3(0);
  OUTLINED_FUNCTION_12();
  (*(v4 + 32))(v1, v2);
  return v1;
}

uint64_t sub_26A15434C(double a1)
{
  OUTLINED_FUNCTION_45_3();
  v3(0);
  OUTLINED_FUNCTION_12();
  (*(v4 + 16))(v1, v2);
  return v1;
}

unint64_t sub_26A1543A8()
{
  result = qword_28036D5F0;
  if (!qword_28036D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D5F0);
  }

  return result;
}

unint64_t sub_26A15441C()
{
  result = qword_28036D620;
  if (!qword_28036D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D620);
  }

  return result;
}

unint64_t sub_26A154470()
{
  result = qword_28036D650;
  if (!qword_28036D650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D650);
  }

  return result;
}

unint64_t sub_26A1544C4()
{
  result = qword_28036D658;
  if (!qword_28036D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D658);
  }

  return result;
}

unint64_t sub_26A154518()
{
  result = qword_28036D668;
  if (!qword_28036D668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D660, &qword_26A428840);
    sub_26A154288(&qword_28036D670, type metadata accessor for MapItems.MapPinItem, &protocol conformance descriptor for MapItems.MapPinItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D668);
  }

  return result;
}

unint64_t sub_26A1545CC()
{
  result = qword_28036D678;
  if (!qword_28036D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D678);
  }

  return result;
}

unint64_t sub_26A154620()
{
  result = qword_28036D688;
  if (!qword_28036D688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D680, &qword_26A428848);
    sub_26A154288(&qword_28036D690, type metadata accessor for MapItems.MapMarkerItem, &protocol conformance descriptor for MapItems.MapMarkerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D688);
  }

  return result;
}

unint64_t sub_26A1546D4()
{
  result = qword_28036D698;
  if (!qword_28036D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D698);
  }

  return result;
}

unint64_t sub_26A154728()
{
  result = qword_28036D6A8;
  if (!qword_28036D6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D6A0, &qword_26A428850);
    sub_26A154288(&qword_28036D6B0, type metadata accessor for MapItems.MapAnnotationItem, &protocol conformance descriptor for MapItems.MapAnnotationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D6A8);
  }

  return result;
}

void sub_26A1547DC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_27_8();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_26A154814(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void (*a5)(void))
{
  a3(0);
  OUTLINED_FUNCTION_24();
  v9 = v8;
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_141_0();
  v11 = *(a2 + 16);
  result = MEMORY[0x26D65C340](v11);
  if (v11)
  {
    v14 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    do
    {
      sub_26A15434C(v13);
      v16 = OUTLINED_FUNCTION_25_9(*v5);
      MEMORY[0x26D65C370](v16);
      v17 = OUTLINED_FUNCTION_25_9(v5[1]);
      MEMORY[0x26D65C370](v17);
      type metadata accessor for _ProtoColor(0);
      OUTLINED_FUNCTION_19_9();
      sub_26A154288(&qword_28036D600, v18, &protocol conformance descriptor for _ProtoColor);
      sub_26A424B44();
      result = sub_26A156014(v5, a5);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_26A154984(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for MapItems.MapAnnotationItem(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 16);
  result = MEMORY[0x26D65C340](v8, v5);
  if (v8)
  {
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_26A15434C(v10);
      v13 = *v7;
      if (*v7 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x26D65C370](*&v13);
      v14 = v7[1];
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x26D65C370](*&v14);
      type metadata accessor for _ProtoCustomCanvas(0);
      sub_26A154288(&qword_28036D5D0, type metadata accessor for _ProtoCustomCanvas, &protocol conformance descriptor for _ProtoCustomCanvas);
      sub_26A424B44();
      result = sub_26A156014(v7, type metadata accessor for MapItems.MapAnnotationItem);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

unint64_t sub_26A154B48()
{
  result = qword_28036D6E0;
  if (!qword_28036D6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D660, &qword_26A428840);
    sub_26A154288(&qword_28036D6E8, type metadata accessor for MapItems.MapPinItem, &protocol conformance descriptor for MapItems.MapPinItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D6E0);
  }

  return result;
}

unint64_t sub_26A154BFC()
{
  result = qword_28036D6F0;
  if (!qword_28036D6F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D680, &qword_26A428848);
    sub_26A154288(&qword_28036D6F8, type metadata accessor for MapItems.MapMarkerItem, &protocol conformance descriptor for MapItems.MapMarkerItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D6F0);
  }

  return result;
}

unint64_t sub_26A154CB0()
{
  result = qword_28036D700;
  if (!qword_28036D700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28036D6A0, &qword_26A428850);
    sub_26A154288(&qword_28036D708, type metadata accessor for MapItems.MapAnnotationItem, &protocol conformance descriptor for MapItems.MapAnnotationItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D700);
  }

  return result;
}

uint64_t sub_26A154D64(uint64_t result, char a2)
{
  if (a2 != -1)
  {
  }

  return v2;
}

unint64_t sub_26A154D78()
{
  result = qword_28036D718;
  if (!qword_28036D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D718);
  }

  return result;
}

unint64_t sub_26A154DCC()
{
  result = qword_28036D720;
  if (!qword_28036D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D720);
  }

  return result;
}

unint64_t sub_26A154E20()
{
  result = qword_28036D730;
  if (!qword_28036D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D730);
  }

  return result;
}

unint64_t sub_26A154E74()
{
  result = qword_28036D738;
  if (!qword_28036D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D738);
  }

  return result;
}

unint64_t sub_26A154FA4()
{
  result = qword_28036D758;
  if (!qword_28036D758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D758);
  }

  return result;
}

unint64_t sub_26A154FFC()
{
  result = qword_28036D760;
  if (!qword_28036D760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D760);
  }

  return result;
}

uint64_t sub_26A15505C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_26A15509C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = *(a3 + 24);
  v7 = a4(0);

  return __swift_getEnumTagSinglePayload(a1 + v6, a2, v7);
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = *(a4 + 24);
  v8 = (a5)(0, a2, a3);

  return __swift_storeEnumTagSinglePayload(a1 + v7, a2, a2, v8);
}

uint64_t sub_26A15523C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SnippetKit8MapItemsOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 2)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26A1552EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 57))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 56);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26A155330(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = ~a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapOverlayModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MapOverlayModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_26A155528(_BYTE *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ButtonRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_26A15567C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26A15575C()
{
  result = qword_28036D798;
  if (!qword_28036D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D798);
  }

  return result;
}

unint64_t sub_26A1557B4()
{
  result = qword_28036D7A0;
  if (!qword_28036D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7A0);
  }

  return result;
}

unint64_t sub_26A15580C()
{
  result = qword_28036D7A8;
  if (!qword_28036D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7A8);
  }

  return result;
}

unint64_t sub_26A155864()
{
  result = qword_28036D7B0;
  if (!qword_28036D7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7B0);
  }

  return result;
}

unint64_t sub_26A1558BC()
{
  result = qword_28036D7B8;
  if (!qword_28036D7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7B8);
  }

  return result;
}

unint64_t sub_26A155914()
{
  result = qword_28036D7C0;
  if (!qword_28036D7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7C0);
  }

  return result;
}

unint64_t sub_26A15596C()
{
  result = qword_28036D7C8;
  if (!qword_28036D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7C8);
  }

  return result;
}

unint64_t sub_26A1559C4()
{
  result = qword_28036D7D0;
  if (!qword_28036D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7D0);
  }

  return result;
}

unint64_t sub_26A155A1C()
{
  result = qword_28036D7D8;
  if (!qword_28036D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7D8);
  }

  return result;
}

unint64_t sub_26A155A74()
{
  result = qword_28036D7E0;
  if (!qword_28036D7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7E0);
  }

  return result;
}

unint64_t sub_26A155ACC()
{
  result = qword_28036D7E8;
  if (!qword_28036D7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7E8);
  }

  return result;
}

unint64_t sub_26A155B24()
{
  result = qword_28036D7F0;
  if (!qword_28036D7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7F0);
  }

  return result;
}

unint64_t sub_26A155B7C()
{
  result = qword_28036D7F8;
  if (!qword_28036D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D7F8);
  }

  return result;
}

unint64_t sub_26A155BD4()
{
  result = qword_28036D800;
  if (!qword_28036D800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D800);
  }

  return result;
}

unint64_t sub_26A155C2C()
{
  result = qword_28036D808;
  if (!qword_28036D808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D808);
  }

  return result;
}

unint64_t sub_26A155C84()
{
  result = qword_28036D810;
  if (!qword_28036D810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D810);
  }

  return result;
}

unint64_t sub_26A155CDC()
{
  result = qword_28036D818;
  if (!qword_28036D818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D818);
  }

  return result;
}

unint64_t sub_26A155D34()
{
  result = qword_28036D820;
  if (!qword_28036D820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D820);
  }

  return result;
}

unint64_t sub_26A155D8C()
{
  result = qword_28036D828;
  if (!qword_28036D828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D828);
  }

  return result;
}

unint64_t sub_26A155DE4()
{
  result = qword_28036D830;
  if (!qword_28036D830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D830);
  }

  return result;
}

unint64_t sub_26A155E3C()
{
  result = qword_28036D838;
  if (!qword_28036D838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D838);
  }

  return result;
}

unint64_t sub_26A155E94()
{
  result = qword_28036D840;
  if (!qword_28036D840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D840);
  }

  return result;
}

unint64_t sub_26A155EEC()
{
  result = qword_28036D848;
  if (!qword_28036D848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D848);
  }

  return result;
}

unint64_t sub_26A155F44()
{
  result = qword_28036D850;
  if (!qword_28036D850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D850);
  }

  return result;
}

uint64_t sub_26A155F98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26A156014(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_6_9(uint64_t a1)
{

  return sub_26A425054();
}

uint64_t OUTLINED_FUNCTION_10_11()
{
  *(v1 - 120) = v0;
  *(v1 - 65) = 0;

  return sub_26A425044();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t a1)
{

  return sub_26A425154();
}

uint64_t OUTLINED_FUNCTION_16_6()
{
  *(v0 - 65) = 0;

  return sub_26A425134();
}

uint64_t OUTLINED_FUNCTION_17_5(double a1)
{

  return sub_26A1542D0(a1);
}

uint64_t OUTLINED_FUNCTION_22_8(uint64_t a1, double a2)
{

  return sub_26A425134();
}

uint64_t OUTLINED_FUNCTION_24_11(uint64_t a1)
{

  return sub_26A425044();
}

double OUTLINED_FUNCTION_25_9(double result)
{
  if (result == 0.0)
  {
    return v1;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425574();
}

void *OUTLINED_FUNCTION_29_4()
{
  v2 = v0[3];
  *(v1 - 88) = v0;
  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

uint64_t OUTLINED_FUNCTION_30_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26A425594();
}

uint64_t OUTLINED_FUNCTION_31_5(uint64_t a1, uint64_t a2)
{

  return sub_26A4250A4();
}

uint64_t OUTLINED_FUNCTION_37_4(uint64_t a1, uint64_t a2)
{

  return sub_26A425354();
}

uint64_t OUTLINED_FUNCTION_38_4(double a1)
{

  return sub_26A1542D0(a1);
}

uint64_t OUTLINED_FUNCTION_39_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_26A424FF4();
}

uint64_t StatusIndicatorInProgress.text.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18();
  v8 = v7 - v6;
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_15(v4);
  if (v9)
  {
    *v8 = MEMORY[0x277D84F90];
    *(v8 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v10 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
    OUTLINED_FUNCTION_15(v4);
    if (!v9)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A157D30();
  }

  return sub_26A157D30();
}

uint64_t StatusIndicatorInProgress.showIndicator.getter()
{
  v0 = type metadata accessor for _ProtoOptionalBool(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_18();
  v4 = (v3 - v2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  sub_26A10FD9C();
  v13 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v0);
  sub_26A0E48F0(v12, &qword_28036D198, &qword_26A432940);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    OUTLINED_FUNCTION_15(v9);
    if (v15)
    {
      *v4 = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_15(v9);
      if (!v15)
      {
        sub_26A0E48F0(v9, &qword_28036D198, &qword_26A432940);
      }
    }

    else
    {
      sub_26A157D30();
    }

    v13 = *v4;
    sub_26A158148(v4, type metadata accessor for _ProtoOptionalBool);
  }

  return v13;
}

uint64_t StatusIndicatorInProgress.action.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - v12;
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v24;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v17, v18, v1) == 1)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v19 = OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v19, v20, v1) != 1)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A157D30();
    }

    sub_26A157D30();
    v14 = 0;
  }

  v21 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v21);
}

uint64_t sub_26A156AB0@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_2_8();
  sub_26A157CDC();
  v60 = type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v34, v35, v14) == 1)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v42, v43, v14) != 1)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A157D30();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A158148(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A157D30();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 32);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    if (__swift_getEnumTagSinglePayload(v50, 1, v33) == 1)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      if (__swift_getEnumTagSinglePayload(v50, 1, v33) != 1)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A157D30();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A158148(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A157D30();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t StatusIndicatorInProgress.init(text:componentName:showIndicator:action:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  OUTLINED_FUNCTION_0_19();
  sub_26A158024(v7, v8, &protocol conformance descriptor for _ProtoStatusIndicator_InProgress);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  sub_26A0E48F0(a5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A1570A8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v41 = a6;
  v40 = a5;
  v38 = a4;
  v39 = a3;
  v8 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v8 - 8);
  v36[3] = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v10 - 8);
  v42 = v36 - v11;
  v43 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v43);
  v36[2] = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v36[1] = v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D198, &qword_26A432940);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v36 - v16;
  v37 = type metadata accessor for _ProtoOptionalBool(0);
  MEMORY[0x28223BE20](v37);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v20);
  v21 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v21 - 8);
  v22 = a2[3];
  v23 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v22);
  (*(v23 + 8))(v22, v23);
  sub_26A157D30();
  v24 = type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  v25 = v24[6];
  sub_26A0E48F0(a1 + v25, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A157D30();
  v26 = v20;
  v27 = v37;
  __swift_storeEnumTagSinglePayload(a1 + v25, 0, 1, v26);
  v28 = v38;

  *a1 = v39;
  a1[1] = v28;
  v29 = v24[7];
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    if (__swift_getEnumTagSinglePayload(v17, 1, v27) != 1)
    {
      sub_26A0E48F0(v17, &qword_28036D198, &qword_26A432940);
    }
  }

  else
  {
    sub_26A157D30();
  }

  *v19 = v40 & 1;
  sub_26A0E48F0(a1 + v29, &qword_28036D198, &qword_26A432940);
  sub_26A157D30();
  __swift_storeEnumTagSinglePayload(a1 + v29, 0, 1, v27);
  sub_26A10FD9C();
  v30 = v45;
  if (v45)
  {
    v31 = v46;
    __swift_project_boxed_opaque_existential_1(v44, v45);
    (*(v31 + 8))(v30, v31);
    v32 = v42;
    sub_26A157D30();
    v33 = v43;
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v43);
    __swift_destroy_boxed_opaque_existential_1(v44);
    if (__swift_getEnumTagSinglePayload(v32, 1, v33) != 1)
    {
      sub_26A157D30();
      sub_26A157D30();
      v34 = v24[8];
      sub_26A0E48F0(a1 + v34, &off_28036C7C0, &off_26A427400);
      sub_26A157D30();
      return __swift_storeEnumTagSinglePayload(a1 + v34, 0, 1, v33);
    }
  }

  else
  {
    sub_26A0E48F0(v44, &qword_28036CAF8, &unk_26A426D30);
    v32 = v42;
    __swift_storeEnumTagSinglePayload(v42, 1, 1, v43);
  }

  return sub_26A0E48F0(v32, &off_28036C7C0, &off_26A427400);
}

uint64_t StatusIndicatorInProgress.init(text:componentName:showIndicator:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v8);
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_0_19();
  sub_26A158024(v4, v5, &protocol conformance descriptor for _ProtoStatusIndicator_InProgress);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t StatusIndicatorInProgress.init(text:componentName:)(void *a1, uint64_t a2, uint64_t a3)
{
  sub_26A0E5D68(a1, v8);
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_19();
  sub_26A158024(v4, v5, &protocol conformance descriptor for _ProtoStatusIndicator_InProgress);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t StatusIndicatorInProgress.init(text:)(void *a1)
{
  sub_26A0E5D68(a1, v6);
  type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_0_19();
  sub_26A158024(v2, v3, &protocol conformance descriptor for _ProtoStatusIndicator_InProgress);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v5, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v6);
}

Swift::String __swiftcall StatusIndicatorInProgress.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v42 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v42 - v8;
  v10 = type metadata accessor for StatusIndicatorInProgress(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD8, &unk_26A426C00);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v42 - v20;
  OUTLINED_FUNCTION_4_14();
  sub_26A157CDC();
  if (redacted)
  {
    sub_26A156AB0(v14);
  }

  else
  {
    sub_26A157CDC();
  }

  sub_26A157D30();
  v21[*(v18 + 32)] = redacted;
  sub_26A158148(v17, type metadata accessor for StatusIndicatorInProgress);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  StatusIndicatorInProgress.text.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A1053FC(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  KeyPath = swift_getKeyPath();
  sub_26A0F78B8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v42[0], v42[1]);

  v31 = StatusIndicatorInProgress.showIndicator.getter();
  sub_26A1460A4(v31 & 1, 0x69646E49776F6873, 0xED0000726F746163, 0);
  StatusIndicatorInProgress.action.getter(v5);
  sub_26A1052F8();
  v32 = sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  sub_26A0FBA74(v32, v33, v34, v35, v36, v37, v38);
  sub_26A0E48F0(v21, &qword_28036CFD8, &unk_26A426C00);
  v39 = OUTLINED_FUNCTION_175();
  result._object = v40;
  result._countAndFlagsBits = v39;
  return result;
}

uint64_t type metadata accessor for StatusIndicatorInProgress(uint64_t a1)
{
  result = qword_28036D860;
  if (!qword_28036D860)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A157CDC()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A157D30()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A157D84@<X0>(uint64_t *a1@<X8>)
{
  result = StatusIndicatorInProgress.componentName.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StatusIndicatorInProgress.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoStatusIndicator_InProgress(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_2_8();
  sub_26A157CDC();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_9();
  sub_26A157D30();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t StatusIndicatorInProgress.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for StatusIndicatorInProgress(0);
  *(inited + 64) = &protocol witness table for StatusIndicatorInProgress;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_4_14();
  sub_26A157CDC();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A158024(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  OUTLINED_FUNCTION_30_3();
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A158024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A1580DC(uint64_t a1)
{
  result = type metadata accessor for _ProtoStatusIndicator_InProgress(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26A158148(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_18_8()
{

  return type metadata accessor for _ProtoStatusIndicator_InProgress(0);
}

uint64_t MapPlaceCard(from:with:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A424444();
  sub_26A0E45C0(a1, a2);
  sub_26A0E6E84();
  sub_26A1F5544(v12);
  (*(v9 + 8))(v12, v7);
  v18[1] = a1;
  v18[2] = a2;
  v18[3] = a3;
  sub_26A158488();
  v13 = sub_26A424424();
  v15 = v14;

  if (v3)
  {
    return sub_26A0E4784(a1, a2);
  }

  sub_26A0E4784(a1, a2);
  v17 = type metadata accessor for _ProtoCustomCanvas(0);
  MEMORY[0x28223BE20](v17);
  strcpy(&v18[-10], "SystemPlugin");
  BYTE5(v18[-9]) = 0;
  HIWORD(v18[-9]) = -5120;
  strcpy(&v18[-8], "MapsPlaceCard");
  HIWORD(v18[-7]) = -4864;
  v18[-6] = v13;
  v18[-5] = v15;
  v18[-4] = 0;
  v18[-3] = 0xE000000000000000;
  LOWORD(v18[-2]) = 0;
  BYTE2(v18[-2]) = 0;
  sub_26A158CE8();
  sub_26A4249C4();
  return sub_26A0E4784(v13, v15);
}

unint64_t sub_26A158488()
{
  result = qword_28036D870;
  if (!qword_28036D870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D870);
  }

  return result;
}

uint64_t MapPlaceCardModel.init(encodedMapItem:configOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t MapPlaceCardModel.serializedData.getter()
{
  v1 = sub_26A424404();
  OUTLINED_FUNCTION_24();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = *v0;
  v7 = *(v0 + 16);
  sub_26A424444();
  sub_26A0E6E84();
  sub_26A1F5544(v6);
  (*(v3 + 8))(v6, v1);
  *&v10[3] = *v10;
  v10[5] = v7;
  sub_26A158488();
  v8 = sub_26A424424();

  return v8;
}

uint64_t MapPlaceCardModel.mapItem.getter()
{
  v1 = *v0;
  sub_26A0E45C0(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_26A158654(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D65744970616DLL && a2 == 0xE700000000000000;
  if (v4 || (sub_26A425354() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F6769666E6F63 && a2 == 0xED0000736E6F6974)
  {

    return 1;
  }

  else
  {
    v7 = sub_26A425354();

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

uint64_t sub_26A15872C(char a1)
{
  sub_26A425504();
  MEMORY[0x26D65C340](a1 & 1);
  return sub_26A425554();
}

uint64_t sub_26A158774(char a1)
{
  if (a1)
  {
    return 0x704F6769666E6F63;
  }

  else
  {
    return 0x6D65744970616DLL;
  }
}

uint64_t sub_26A1587C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26A158654(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26A1587F0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26A158724();
  *a1 = result;
  return result;
}

uint64_t sub_26A158818(uint64_t a1)
{
  v2 = sub_26A158D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26A158854(uint64_t a1)
{
  v2 = sub_26A158D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MapPlaceCardModel.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D878, &qword_26A429740);
  OUTLINED_FUNCTION_24();
  v13 = v5;
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A0E45C0(v9, v10);
  sub_26A158D40();
  sub_26A425594();
  v14 = v9;
  v15 = v10;
  v16 = 0;
  sub_26A0E70D4();
  sub_26A425154();
  sub_26A0E4784(v14, v15);
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_26A425164();
  }

  return (*(v13 + 8))(v8, v4);
}

uint64_t MapPlaceCardModel.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D888, &qword_26A429748);
  OUTLINED_FUNCTION_24();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26A158D40();
  sub_26A425574();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = 0;
  sub_26A0E718C();
  sub_26A425054();
  v12 = v15[0];
  v11 = v15[1];
  LOBYTE(v15[0]) = 1;
  v13 = sub_26A425064();
  (*(v7 + 8))(v10, v5);
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  sub_26A0E45C0(v12, v11);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_26A0E4784(v12, v11);
}

double MapPlaceCardModel.init(_:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_26A4243D4();
  swift_allocObject();
  sub_26A4243C4();
  sub_26A158D94();
  sub_26A4243B4();
  sub_26A0E4784(a1, a2);

  if (!v3)
  {
    result = *&v8;
    *a3 = v8;
    *(a3 + 16) = v9;
  }

  return result;
}

unint64_t sub_26A158CE8()
{
  result = qword_28036C950;
  if (!qword_28036C950)
  {
    type metadata accessor for _ProtoCustomCanvas(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036C950);
  }

  return result;
}

unint64_t sub_26A158D40()
{
  result = qword_28036D880;
  if (!qword_28036D880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D880);
  }

  return result;
}

unint64_t sub_26A158D94()
{
  result = qword_28036D890;
  if (!qword_28036D890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D890);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26A158E18(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
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

uint64_t sub_26A158E64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MapPlaceCardModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MapPlaceCardModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26A15902C()
{
  result = qword_28036D898;
  if (!qword_28036D898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D898);
  }

  return result;
}

unint64_t sub_26A159084()
{
  result = qword_28036D8A0;
  if (!qword_28036D8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D8A0);
  }

  return result;
}

unint64_t sub_26A1590DC()
{
  result = qword_28036D8A8;
  if (!qword_28036D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D8A8);
  }

  return result;
}

uint64_t ImageElement.SymbolRenderingMode.description.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 0x6F7268636F6E6F6DLL;
      break;
    case 2:
      result = 0x6C6F6369746C756DLL;
      break;
    case 3:
      result = 0x657474656C6170;
      break;
    case 4:
      result = 0x6863726172656968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t ImageElement.SymbolRenderingMode.hashValue.getter()
{
  v1 = *v0;
  sub_26A425504();
  MEMORY[0x26D65C340](v1);
  return sub_26A425554();
}

unint64_t sub_26A159268()
{
  result = qword_28036D8B0;
  if (!qword_28036D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28036D8B0);
  }

  return result;
}

_BYTE *_s19SymbolRenderingModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t _ProtoSlider.identifier.getter()
{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();

  return OUTLINED_FUNCTION_175();
}

uint64_t _ProtoSlider.identifier.setter()
{
  v3 = v1;
  OUTLINED_FUNCTION_47_1();
  v4 = *(type metadata accessor for _ProtoSlider(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v7 = OUTLINED_FUNCTION_5_3();
    v6 = sub_26A15B28C(v7);
    *(v3 + v4) = v6;
  }

  OUTLINED_FUNCTION_26_10((v6 + 2), v9);
  v6[2] = v2;
  v6[3] = v0;
}

void (*_ProtoSlider.identifier.modify())()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_12();
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return sub_26A159574;
}

void sub_26A159574()
{
  OUTLINED_FUNCTION_47_4();
  if (v3)
  {

    OUTLINED_FUNCTION_125();
    _ProtoSlider.identifier.setter();
  }

  else
  {
    v4 = *(v0 + 72);
    v5 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v0 + 72);
      v9 = *(v0 + 64);
      OUTLINED_FUNCTION_4_15();
      v10 = OUTLINED_FUNCTION_5_3();
      v7 = sub_26A15B28C(v10);
      *(v9 + v8) = v7;
    }

    OUTLINED_FUNCTION_26_10((v7 + 2), v0 + 24);
    v7[2] = v2;
    v7[3] = v1;
  }

  free(v0);
}

double _ProtoSlider.minimum.getter()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  return *(v2 + 32);
}

uint64_t _ProtoSlider.minimum.setter()
{
  v4 = OUTLINED_FUNCTION_62_2();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v6 = OUTLINED_FUNCTION_5_3();
    v5 = sub_26A15B28C(v6);
    *(v0 + v2) = v5;
  }

  result = OUTLINED_FUNCTION_26_10((v5 + 4), v8);
  v5[4] = v3;
  return result;
}

void (*_ProtoSlider.minimum.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_12();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  *(v1 + 72) = *(v4 + 32);
  return sub_26A159740;
}

void sub_26A159740(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_29_5(a1);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_4_15();
    v10 = OUTLINED_FUNCTION_5_3();
    v7 = sub_26A15B28C(v10);
    *(v9 + v8) = v7;
  }

  v11 = 48;
  if (v3)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_26_10((v7 + 4), v1 + v11);
  v7[4] = v5;

  free(v1);
}

double _ProtoSlider.maximum.getter()
{
  OUTLINED_FUNCTION_3_12();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  return *(v2 + 40);
}

uint64_t _ProtoSlider.maximum.setter()
{
  v4 = OUTLINED_FUNCTION_62_2();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v6 = OUTLINED_FUNCTION_5_3();
    v5 = sub_26A15B28C(v6);
    *(v0 + v2) = v5;
  }

  result = OUTLINED_FUNCTION_26_10((v5 + 5), v8);
  v5[5] = v3;
  return result;
}

void (*_ProtoSlider.maximum.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 80) = v0;
  OUTLINED_FUNCTION_3_12();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  *(v1 + 72) = *(v4 + 40);
  return sub_26A1598EC;
}

void sub_26A1598EC(uint64_t a1)
{
  v6 = OUTLINED_FUNCTION_29_5(a1);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_4_15();
    v10 = OUTLINED_FUNCTION_5_3();
    v7 = sub_26A15B28C(v10);
    *(v9 + v8) = v7;
  }

  v11 = 48;
  if (v3)
  {
    v11 = 24;
  }

  OUTLINED_FUNCTION_26_10((v7 + 5), v1 + v11);
  v7[5] = v5;

  free(v1);
}

void _ProtoSlider.step.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_54_3(v5);
  v7 = type metadata accessor for _ProtoOptionalDouble(v6);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_57_4();
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    *v11 = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A0E48F0(v5, &qword_28036D8D8, &qword_26A429A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A15B680();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A159B7C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - v6;
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoOptionalDouble(0);
  v9 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v9, v10, v8);
  if (!v11)
  {
    return sub_26A15B680();
  }

  *v1 = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v12 = OUTLINED_FUNCTION_71();
  result = OUTLINED_FUNCTION_37(v12, v13, v8);
  if (!v11)
  {
    return sub_26A0E48F0(v7, &qword_28036D8D8, &qword_26A429A50);
  }

  return result;
}

uint64_t sub_26A159CB0()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for _ProtoSlider(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v6 = OUTLINED_FUNCTION_5_3();
    *(v0 + v5) = sub_26A15B28C(v6);
  }

  OUTLINED_FUNCTION_125();
  sub_26A15B680();
  v7 = type metadata accessor for _ProtoOptionalDouble(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSlider.initialValue.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_54_3(v5);
  v7 = type metadata accessor for _ProtoOptionalDouble(v6);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  *(v0 + 48) = v11;
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_57_4();
  v12 = OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_37(v12, v13, v7);
  if (v14)
  {
    *v11 = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v15 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v15, v16, v7);
    if (!v14)
    {
      sub_26A0E48F0(v5, &qword_28036D8D8, &qword_26A429A50);
    }
  }

  else
  {
    OUTLINED_FUNCTION_125();
    sub_26A15B680();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A159F7C()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  OUTLINED_FUNCTION_47_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v10 = v3(0);
  OUTLINED_FUNCTION_37(v9, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_26A0E48F0(v9, v1, v0);
  return v12;
}

uint64_t sub_26A15A080(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  OUTLINED_FUNCTION_47_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v10 = *(type metadata accessor for _ProtoSlider(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v11 = OUTLINED_FUNCTION_5_3();
    *(v4 + v10) = sub_26A15B28C(v11);
  }

  a3(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

uint64_t _ProtoSlider.invocationPayload.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_246();
  sub_26A0E45C0(v1, v2);
  return OUTLINED_FUNCTION_246();
}

uint64_t _ProtoSlider.invocationPayload.setter()
{
  v3 = v1;
  OUTLINED_FUNCTION_47_1();
  v4 = *(type metadata accessor for _ProtoSlider(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v7 = OUTLINED_FUNCTION_5_3();
    v6 = sub_26A15B28C(v7);
    *(v3 + v4) = v6;
  }

  v8 = (v6 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_26_10(v8, v12);
  v9 = *v8;
  v10 = v8[1];
  *v8 = v2;
  v8[1] = v0;
  return sub_26A0E4784(v9, v10);
}

void (*_ProtoSlider.invocationPayload.modify())()
{
  OUTLINED_FUNCTION_49_7();
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_43_4(v2) + 64) = v0;
  OUTLINED_FUNCTION_3_12();
  *(v1 + 72) = v3;
  v4 = (*(v0 + v3) + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  *(v1 + 48) = *v4;
  *(v1 + 56) = v6;
  sub_26A0E45C0(v5, v6);
  return sub_26A15A330;
}

void sub_26A15A330()
{
  OUTLINED_FUNCTION_47_4();
  if (v3)
  {
    v4 = OUTLINED_FUNCTION_125();
    sub_26A0E45C0(v4, v5);
    OUTLINED_FUNCTION_125();
    _ProtoSlider.invocationPayload.setter();
    v6 = *(v0 + 48);
    v7 = *(v0 + 56);
  }

  else
  {
    v8 = *(v0 + 72);
    v9 = *(v0 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v9 + v8);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v0 + 72);
      v13 = *(v0 + 64);
      OUTLINED_FUNCTION_4_15();
      v14 = OUTLINED_FUNCTION_5_3();
      v11 = sub_26A15B28C(v14);
      *(v13 + v12) = v11;
    }

    v15 = (v11 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
    OUTLINED_FUNCTION_26_10(v15, v0 + 24);
    v6 = *v15;
    v7 = v15[1];
    *v15 = v2;
    v15[1] = v1;
  }

  sub_26A0E4784(v6, v7);

  free(v0);
}

void _ProtoSlider.leadingThumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_54_3(v5);
  v7 = type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v0 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_167_0();
  sub_26A10FD9C();
  v11 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A15B680();
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A15A62C()
{
  OUTLINED_FUNCTION_19_0();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_104();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  v8 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_37(v7, 1, v8);
  if (!v9)
  {
    return sub_26A15B680();
  }

  *v1 = MEMORY[0x277D84F90];
  *(v1 + 8) = 0;
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v10 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  result = OUTLINED_FUNCTION_37(v7, 1, v8);
  if (!v9)
  {
    return sub_26A0E48F0(v7, &qword_28036CAE8, &unk_26A426430);
  }

  return result;
}

uint64_t sub_26A15A79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_41(v8);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - v10;
  sub_26A15B6D4();
  return a7(v11);
}

uint64_t sub_26A15A844()
{
  OUTLINED_FUNCTION_19_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for _ProtoSlider(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_15();
    v6 = OUTLINED_FUNCTION_5_3();
    *(v0 + v5) = sub_26A15B28C(v6);
  }

  OUTLINED_FUNCTION_125();
  sub_26A15B680();
  v7 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  return swift_endAccess();
}

void _ProtoSlider.trailingThumbnail.modify()
{
  OUTLINED_FUNCTION_76();
  v1 = OUTLINED_FUNCTION_48_6();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_0(v2);
  v3 = OUTLINED_FUNCTION_142_0();
  OUTLINED_FUNCTION_41(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_54_3(v5);
  v7 = type metadata accessor for _ProtoVisualProperty(v6);
  OUTLINED_FUNCTION_12();
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_51_3(v9);
  *(v0 + 48) = __swift_coroFrameAllocStub(v10);
  OUTLINED_FUNCTION_3_12();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_167_0();
  sub_26A10FD9C();
  v11 = OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_37(v11, v12, v7);
  if (v13)
  {
    OUTLINED_FUNCTION_22_2(MEMORY[0x277D84F90]);
    v14 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = OUTLINED_FUNCTION_72();
    OUTLINED_FUNCTION_37(v21, v22, v7);
    if (!v13)
    {
      sub_26A0E48F0(v5, &qword_28036CAE8, &unk_26A426430);
    }
  }

  else
  {
    sub_26A15B680();
  }

  OUTLINED_FUNCTION_75();
}

void sub_26A15AB20(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_26A15B6D4();
    a3(v6);
    v9 = OUTLINED_FUNCTION_104();
    sub_26A15B728(v9, v10);
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t _ProtoSlider.unknownFields.getter()
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_175();

  return v1(v0);
}

uint64_t _ProtoSlider.unknownFields.setter()
{
  sub_26A424794();
  OUTLINED_FUNCTION_12();
  v0 = OUTLINED_FUNCTION_246();

  return v1(v0);
}

uint64_t _ProtoSlider.init()@<X0>(uint64_t a2@<X8>)
{
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v3 = *(type metadata accessor for _ProtoSlider(0) + 20);
  if (qword_28036C050 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_28036D8D0;
}

uint64_t sub_26A15AD9C()
{
  v0 = sub_26A424AC4();
  __swift_allocate_value_buffer(v0, qword_28036D8B8);
  __swift_project_value_buffer(v0, qword_28036D8B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C938, &qword_26A42DDA0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C940, &unk_26A425EE0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26A429A40;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "identifier";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21870];
  v7 = sub_26A424A94();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "minimum";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "maximum";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "step";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "initial_value";
  *(v15 + 1) = 13;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "invocation_payload";
  *(v17 + 1) = 18;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "leading_thumbnail";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "trailing_thumbnail";
  *(v21 + 1) = 18;
  v21[16] = 2;
  v8();
  return sub_26A424AA4();
}

uint64_t static _ProtoSlider._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28036C048 != -1)
  {
    swift_once();
  }

  v2 = sub_26A424AC4();
  v3 = __swift_project_value_buffer(v2, qword_28036D8B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *sub_26A15B18C()
{
  OUTLINED_FUNCTION_4_15();
  result = sub_26A15B1BC();
  qword_28036D8D0 = result;
  return result;
}

void *sub_26A15B1BC()
{
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  v0[4] = 0;
  v0[5] = 0;
  v1 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__step;
  v2 = type metadata accessor for _ProtoOptionalDouble(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__initialValue, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload) = xmmword_26A426400;
  v3 = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail;
  v4 = type metadata accessor for _ProtoVisualProperty(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail, 1, 1, v4);
  return v0;
}

void *sub_26A15B28C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v35[5] = v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_173_0();
  v1[2] = 0;
  v1[5] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v35[1] = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__step;
  v8 = type metadata accessor for _ProtoOptionalDouble(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  v35[2] = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__initialValue;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v8);
  v15 = (v1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  *(v1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload) = xmmword_26A426400;
  v35[3] = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail;
  v16 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v35[4] = OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v23 = a1[2];
  v24 = a1[3];
  OUTLINED_FUNCTION_26_10((v1 + 2), v39);
  v1[2] = v23;
  v1[3] = v24;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v25 = a1[4];
  OUTLINED_FUNCTION_26_10((v1 + 4), v38);
  v1[4] = v25;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v26 = a1[5];
  OUTLINED_FUNCTION_26_10((v1 + 5), &v37);
  v1[5] = v26;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();

  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_4();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_4();
  sub_26A10CF40();
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v29 = *v27;
  v28 = v27[1];
  OUTLINED_FUNCTION_26_10(v15, &v36);
  v30 = *v15;
  v31 = v15[1];
  *v15 = v29;
  v15[1] = v28;
  v32 = OUTLINED_FUNCTION_125();
  sub_26A0E45C0(v32, v33);
  sub_26A0E4784(v30, v31);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  sub_26A10CF40();
  swift_endAccess();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_4();
  sub_26A10FD9C();

  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  OUTLINED_FUNCTION_52_4();
  sub_26A10CF40();
  swift_endAccess();
  return v1;
}

uint64_t sub_26A15B680()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A15B6D4()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A15B728(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26A15B780()
{

  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__step, &qword_28036D8D8, &qword_26A429A50);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__initialValue, &qword_28036D8D8, &qword_26A429A50);
  sub_26A0E4784(*(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload), *(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload + 8));
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail, &qword_28036CAE8, &unk_26A426430);
  sub_26A0E48F0(v0 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail, &qword_28036CAE8, &unk_26A426430);
  return v0;
}

uint64_t sub_26A15B844()
{
  v0 = sub_26A15B780();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t _ProtoSlider.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for _ProtoSlider(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoSlider._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_5_3();
    v10 = sub_26A15B28C(v11);
    *(v4 + v8) = v10;
  }

  return sub_26A15B938(v10, a1, a2, a3);
}

uint64_t sub_26A15B938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_26A424834();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_26A15BAB8(a2, a1);
        continue;
      case 2:
        sub_26A15BB3C(a2, a1, a3, a4);
        continue;
      case 3:
        sub_26A15BBC0(a2, a1, a3, a4);
        continue;
      case 4:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__step;
        goto LABEL_8;
      case 5:
        v11 = a2;
        v12 = a1;
        v13 = a3;
        v14 = a4;
        v15 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__initialValue;
LABEL_8:
        sub_26A15BC44(v11, v12, v13, v14, v15);
        continue;
      case 6:
        sub_26A15BCEC(a2, a1);
        continue;
      case 7:
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail;
        goto LABEL_13;
      case 8:
        v16 = a2;
        v17 = a1;
        v18 = a3;
        v19 = a4;
        v20 = &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail;
LABEL_13:
        sub_26A15BD78(v16, v17, v18, v19, v20);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_26A15BAB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A424924();
  return swift_endAccess();
}

uint64_t sub_26A15BB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26A424904();
  return swift_endAccess();
}

uint64_t sub_26A15BBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_26A424904();
  return swift_endAccess();
}

uint64_t sub_26A15BC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  type metadata accessor for _ProtoOptionalDouble(0);
  OUTLINED_FUNCTION_13_8();
  v7 = sub_26A15D224(v5, v6, &protocol conformance descriptor for _ProtoOptionalDouble);
  OUTLINED_FUNCTION_23_9(v7);
  return swift_endAccess();
}

uint64_t sub_26A15BCEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26A4248C4();
  return swift_endAccess();
}

uint64_t sub_26A15BD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_21_8();
  swift_beginAccess();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_11_10();
  v7 = sub_26A15D224(v5, v6, &protocol conformance descriptor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_23_9(v7);
  return swift_endAccess();
}

uint64_t _ProtoSlider.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for _ProtoSlider(0);
  result = sub_26A15BE8C(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_26A424774();
  }

  return result;
}

uint64_t sub_26A15BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(a1 + 24);
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (, sub_26A424A64(), result = , !v4))
  {
    swift_beginAccess();
    if (*(a1 + 32) == 0.0 || (result = sub_26A424A54(), !v4))
    {
      swift_beginAccess();
      if (*(a1 + 40) == 0.0 || (result = sub_26A424A54(), !v4))
      {
        result = sub_26A15C0D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__step, 4);
        if (!v4)
        {
          sub_26A15C0D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__initialValue, 5);
          v12 = a1 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload;
          swift_beginAccess();
          if (!sub_26A13BEE8(*v12, *(v12 + 8)))
          {
            v14 = *v12;
            v13 = *(v12 + 8);
            sub_26A0E45C0(v14, v13);
            sub_26A424A14();
            sub_26A0E4784(v14, v13);
          }

          sub_26A15C244(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__leadingThumbnail, 7);
          return sub_26A15C244(a1, a2, a3, a4, &OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__trailingThumbnail, 8);
        }
      }
    }
  }

  return result;
}

uint64_t sub_26A15C0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_27_9(a1, a2, a3, a4, a5, a6);
  v7 = OUTLINED_FUNCTION_37_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for _ProtoOptionalDouble(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_122_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036D8D8, &qword_26A429A50);
  }

  sub_26A15B680();
  OUTLINED_FUNCTION_13_8();
  v21 = sub_26A15D224(v19, v20, &protocol conformance descriptor for _ProtoOptionalDouble);
  OUTLINED_FUNCTION_32_6(v21);
  return sub_26A15B728(v14, type metadata accessor for _ProtoOptionalDouble);
}

uint64_t sub_26A15C244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_27_9(a1, a2, a3, a4, a5, a6);
  v7 = OUTLINED_FUNCTION_37_5();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_173_0();
  type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_59_4();
  OUTLINED_FUNCTION_122_0();
  if (__swift_getEnumTagSinglePayload(v15, v16, v17) == 1)
  {
    return sub_26A0E48F0(v6, &qword_28036CAE8, &unk_26A426430);
  }

  sub_26A15B680();
  OUTLINED_FUNCTION_11_10();
  v21 = sub_26A15D224(v19, v20, &protocol conformance descriptor for _ProtoVisualProperty);
  OUTLINED_FUNCTION_32_6(v21);
  return sub_26A15B728(v14, type metadata accessor for _ProtoVisualProperty);
}

uint64_t static _ProtoSlider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_12();
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_26A15C47C(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_9();
  sub_26A15D224(v8, v9, MEMORY[0x277D216D0]);
  OUTLINED_FUNCTION_246();
  return sub_26A424B64() & 1;
}

BOOL sub_26A15C47C(uint64_t a1, uint64_t a2)
{
  v118 = type metadata accessor for _ProtoVisualProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  v115 = v6 - v5;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D190, &unk_26A427130);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  v9 = &v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v117 = &v112 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CAE8, &unk_26A426430);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8();
  v114 = v14;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v15);
  v124 = &v112 - v16;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v17);
  v116 = &v112 - v18;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v19);
  v120 = &v112 - v20;
  v126 = type metadata accessor for _ProtoOptionalDouble(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_8();
  v121 = v22;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v23);
  v25 = (&v112 - v24);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D958, &qword_26A429C38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_8();
  v123 = v27;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v28);
  v30 = &v112 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D8D8, &qword_26A429A50);
  v32 = OUTLINED_FUNCTION_41(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8();
  v122 = v33;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v34);
  v125 = &v112 - v35;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v36);
  v38 = (&v112 - v37);
  MEMORY[0x28223BE20](v39);
  v41 = &v112 - v40;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v42 = *(a1 + 16);
  v43 = *(a1 + 24);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v44 = v42 == *(a2 + 16) && v43 == *(a2 + 24);
  if (!v44 && (sub_26A425354() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v45 = *(a1 + 32);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  if (v45 != *(a2 + 32))
  {
    return 0;
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v46 = *(a1 + 40);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  if (v46 != *(a2 + 40))
  {
    return 0;
  }

  v113 = v9;
  v128 = a2;
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_46_4();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v47 = *(v127 + 48);
  OUTLINED_FUNCTION_46_4();
  sub_26A10FD9C();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_46_4();
  sub_26A10FD9C();
  v48 = v126;
  OUTLINED_FUNCTION_37(v30, 1, v126);
  if (v44)
  {

    sub_26A0E48F0(v41, &qword_28036D8D8, &qword_26A429A50);
    OUTLINED_FUNCTION_37(&v30[v47], 1, v48);
    if (v44)
    {
      sub_26A0E48F0(v30, &qword_28036D8D8, &qword_26A429A50);
      goto LABEL_19;
    }

LABEL_16:
    v50 = &qword_28036D958;
    v51 = &qword_26A429C38;
    v52 = v30;
LABEL_43:
    sub_26A0E48F0(v52, v50, v51);
    goto LABEL_44;
  }

  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(&v30[v47], 1, v48);
  if (v49)
  {

    sub_26A0E48F0(v41, &qword_28036D8D8, &qword_26A429A50);
    OUTLINED_FUNCTION_16_7();
    goto LABEL_16;
  }

  sub_26A15B680();
  if (*v38 != *v25)
  {

    sub_26A15B728(v25, type metadata accessor for _ProtoOptionalDouble);
    sub_26A0E48F0(v41, &qword_28036D8D8, &qword_26A429A50);
    OUTLINED_FUNCTION_60_2();
    v52 = v30;
    v50 = &qword_28036D8D8;
    v51 = &qword_26A429A50;
    goto LABEL_43;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_9();
  sub_26A15D224(v53, v54, MEMORY[0x277D216D0]);

  OUTLINED_FUNCTION_46_4();
  v55 = sub_26A424B64();
  sub_26A15B728(v25, type metadata accessor for _ProtoOptionalDouble);
  sub_26A0E48F0(v41, &qword_28036D8D8, &qword_26A429A50);
  v48 = v126;
  sub_26A15B728(v38, type metadata accessor for _ProtoOptionalDouble);
  sub_26A0E48F0(v30, &qword_28036D8D8, &qword_26A429A50);
  if ((v55 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_19:
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v56 = v125;
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v57 = *(v127 + 48);
  v58 = v123;
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_37(v58, 1, v48);
  if (v44)
  {
    sub_26A0E48F0(v56, &qword_28036D8D8, &qword_26A429A50);
    OUTLINED_FUNCTION_37(v58 + v57, 1, v48);
    v59 = v124;
    if (v44)
    {
      sub_26A0E48F0(v58, &qword_28036D8D8, &qword_26A429A50);
      goto LABEL_31;
    }

    goto LABEL_27;
  }

  v60 = v122;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v58 + v57, 1, v48);
  v59 = v124;
  if (v61)
  {
    sub_26A0E48F0(v125, &qword_28036D8D8, &qword_26A429A50);
    OUTLINED_FUNCTION_16_7();
LABEL_27:
    v50 = &qword_28036D958;
    v51 = &qword_26A429C38;
    v52 = v58;
    goto LABEL_43;
  }

  v62 = v121;
  sub_26A15B680();
  if (*v60 != *v62)
  {
    sub_26A15B728(v62, type metadata accessor for _ProtoOptionalDouble);
    OUTLINED_FUNCTION_167_0();
    sub_26A0E48F0(v81, v82, v83);
    OUTLINED_FUNCTION_60_2();
    OUTLINED_FUNCTION_167_0();
    sub_26A0E48F0(v84, v85, v86);
    goto LABEL_44;
  }

  sub_26A424794();
  OUTLINED_FUNCTION_2_9();
  sub_26A15D224(v63, v64, MEMORY[0x277D216D0]);
  v65 = sub_26A424B64();
  sub_26A15B728(v62, type metadata accessor for _ProtoOptionalDouble);
  sub_26A0E48F0(v125, &qword_28036D8D8, &qword_26A429A50);
  sub_26A15B728(v60, type metadata accessor for _ProtoOptionalDouble);
  sub_26A0E48F0(v58, &qword_28036D8D8, &qword_26A429A50);
  if ((v65 & 1) == 0)
  {
LABEL_44:

    return 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v66 = (v128 + OBJC_IVAR____TtCV10SnippetKit12_ProtoSliderP33_29BEE0BA4CDEBE8D801D91DD4B42411813_StorageClass__invocationPayload);
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v68 = *v66;
  v67 = v66[1];
  v69 = OUTLINED_FUNCTION_37_5();
  sub_26A0E45C0(v69, v70);
  sub_26A0E45C0(v68, v67);
  v71 = OUTLINED_FUNCTION_37_5();
  v72 = MEMORY[0x26D65B4F0](v71);
  sub_26A0E4784(v68, v67);
  v73 = OUTLINED_FUNCTION_37_5();
  sub_26A0E4784(v73, v74);
  if ((v72 & 1) == 0)
  {
    goto LABEL_44;
  }

  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v75 = v120;
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  v76 = v117;
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_37(v76, 1, v118);
  if (v44)
  {
    sub_26A0E48F0(v75, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_37(v77, v78, v79);
    v80 = v113;
    if (v44)
    {
      sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  v87 = v116;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_37(v88, v89, v90);
  v80 = v113;
  if (v91)
  {
    sub_26A0E48F0(v120, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_10_12();
    sub_26A15B728(v87, v92);
LABEL_42:
    v50 = &qword_28036D190;
    v51 = &unk_26A427130;
    v52 = v76;
    goto LABEL_43;
  }

  v94 = v115;
  sub_26A15B680();
  v95 = static _ProtoVisualProperty.== infix(_:_:)(v87, v94);
  sub_26A15B728(v94, type metadata accessor for _ProtoVisualProperty);
  sub_26A0E48F0(v120, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_60_2();
  sub_26A0E48F0(v76, &qword_28036CAE8, &unk_26A426430);
  if ((v95 & 1) == 0)
  {
    goto LABEL_44;
  }

LABEL_47:
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_23_13();
  OUTLINED_FUNCTION_86_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_37(v96, v97, v98);
  if (!v44)
  {
    v102 = v114;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_122_0();
    OUTLINED_FUNCTION_37(v103, v104, v105);
    if (!v106)
    {
      v108 = v115;
      sub_26A15B680();
      v109 = OUTLINED_FUNCTION_104();
      v111 = static _ProtoVisualProperty.== infix(_:_:)(v109, v110);

      sub_26A15B728(v108, type metadata accessor for _ProtoVisualProperty);
      sub_26A0E48F0(v59, &qword_28036CAE8, &unk_26A426430);
      OUTLINED_FUNCTION_60_2();
      sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
      return (v111 & 1) != 0;
    }

    sub_26A0E48F0(v59, &qword_28036CAE8, &unk_26A426430);
    OUTLINED_FUNCTION_10_12();
    sub_26A15B728(v102, v107);
LABEL_55:
    sub_26A0E48F0(v80, &qword_28036D190, &unk_26A427130);
    return 0;
  }

  sub_26A0E48F0(v59, &qword_28036CAE8, &unk_26A426430);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_37(v99, v100, v101);
  if (!v44)
  {
    goto LABEL_55;
  }

  sub_26A0E48F0(v80, &qword_28036CAE8, &unk_26A426430);
  return 1;
}

uint64_t _ProtoSlider.hashValue.getter()
{
  sub_26A425504();
  type metadata accessor for _ProtoSlider(0);
  sub_26A15D224(&qword_28036D908, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);
  sub_26A424B44();
  return sub_26A425554();
}

uint64_t sub_26A15D224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A15D310(uint64_t a1, uint64_t a2)
{
  v4 = sub_26A15D224(&qword_28036D950, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_26A15D420(uint64_t a1)
{
  v2 = sub_26A15D224(&qword_28036D918, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_26A15D4D8(uint64_t a1, uint64_t a2)
{
  sub_26A15D224(&qword_28036D918, type metadata accessor for _ProtoSlider, &protocol conformance descriptor for _ProtoSlider);

  return sub_26A4249B4();
}

uint64_t sub_26A15D580(uint64_t a1)
{
  result = sub_26A424794();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for _ProtoSlider._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_26A15D60C(uint64_t a1)
{
  sub_26A15D734(319, &qword_28036D948, type metadata accessor for _ProtoOptionalDouble);
  if (v1 <= 0x3F)
  {
    sub_26A15D734(319, &qword_28036D178, type metadata accessor for _ProtoVisualProperty);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26A15D734(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_26A424E44();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4_15()
{
  type metadata accessor for _ProtoSlider._StorageClass(0);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_16_7()
{

  return sub_26A15B728(v0, type metadata accessor for _ProtoOptionalDouble);
}

uint64_t OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_27_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 - 120) = a6;
  *(v6 - 112) = a3;
  *(v6 - 72) = a4;
}

uint64_t OUTLINED_FUNCTION_29_5(uint64_t a1)
{

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_32_6(uint64_t a1)
{

  return sub_26A424A84();
}

uint64_t OUTLINED_FUNCTION_35_6()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_57_4()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_59_4()
{

  return sub_26A10FD9C();
}

uint64_t OUTLINED_FUNCTION_60_2()
{

  return sub_26A15B728(v1, v0);
}

uint64_t OUTLINED_FUNCTION_62_2()
{
  type metadata accessor for _ProtoSlider(0);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t SecondaryHeaderEmphasized.text1.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  OUTLINED_FUNCTION_41(v1);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - v3;
  v5 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v9 = v8 - v7;
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  sub_26A10FD9C();
  OUTLINED_FUNCTION_37(v4, 1, v5);
  if (v10)
  {
    *v9 = MEMORY[0x277D84F90];
    *(v9 + 8) = 0;
    _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
    v11 = type metadata accessor for _ProtoActionProperty(0);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    OUTLINED_FUNCTION_37(v4, 1, v5);
    if (!v10)
    {
      sub_26A0E48F0(v4, &qword_28036C7B8, &unk_26A425BF0);
    }
  }

  else
  {
    sub_26A15EDA8();
  }

  return sub_26A15EDA8();
}

uint64_t SecondaryHeaderEmphasized.action.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  v5 = (v4 - v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_17();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  sub_26A10FD9C();
  v14 = 1;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v1);
  v16 = v25;
  sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (EnumTagSinglePayload != 1)
  {
    sub_26A10FD9C();
    v17 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v17, v18, v1);
    if (v19)
    {
      *v5 = MEMORY[0x277D84F90];
      v5[1] = 0;
      v5[2] = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      v20 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v20, v21, v1);
      if (!v19)
      {
        sub_26A0E48F0(v10, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      sub_26A15EDA8();
    }

    sub_26A15EDA8();
    v14 = 0;
  }

  v22 = type metadata accessor for ActionProperty(0);
  return __swift_storeEnumTagSinglePayload(v16, v14, 1, v22);
}

uint64_t _ProtoSecondaryHeader_Emphasized.redactedProto.getter@<X0>(uint64_t a1@<X8>)
{
  v59 = type metadata accessor for _ProtoActionProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_17();
  v58 = (v3 - v4);
  MEMORY[0x28223BE20](v5);
  v57 = (&v55 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v56 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v55 - v12;
  v14 = type metadata accessor for _ProtoTextProperty(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v55 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v55 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C7B8, &unk_26A425BF0);
  v22 = OUTLINED_FUNCTION_41(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_17();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v55 - v27;
  OUTLINED_FUNCTION_0_20();
  sub_26A15ED54();
  v60 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  v29 = *(v60 + 24);
  sub_26A10FD9C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v14);
  sub_26A0E48F0(v28, &qword_28036C7B8, &unk_26A425BF0);
  v31 = MEMORY[0x277D84F90];
  v32 = EnumTagSinglePayload == 1;
  v33 = v59;
  if (!v32)
  {
    sub_26A10FD9C();
    v34 = OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_37(v34, v35, v14);
    if (v32)
    {
      *v20 = v31;
      *(v20 + 4) = 0;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
      OUTLINED_FUNCTION_92();
      __swift_storeEnumTagSinglePayload(v39, v40, v41, v33);
      v42 = OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_37(v42, v43, v14);
      if (!v32)
      {
        sub_26A0E48F0(v25, &qword_28036C7B8, &unk_26A425BF0);
      }
    }

    else
    {
      sub_26A15EDA8();
    }

    _ProtoTextProperty.redactedProto.getter();
    sub_26A15EDFC(v20, type metadata accessor for _ProtoTextProperty);
    sub_26A0E48F0(a1 + v29, &qword_28036C7B8, &unk_26A425BF0);
    sub_26A15EDA8();
    OUTLINED_FUNCTION_126_0();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v14);
  }

  v47 = *(v60 + 28);
  sub_26A10FD9C();
  v48 = __swift_getEnumTagSinglePayload(v13, 1, v33);
  result = sub_26A0E48F0(v13, &off_28036C7C0, &off_26A427400);
  if (v48 != 1)
  {
    v50 = v56;
    sub_26A10FD9C();
    OUTLINED_FUNCTION_37(v50, 1, v33);
    if (v32)
    {
      v51 = v57;
      *v57 = v31;
      *(v51 + 8) = 0;
      *(v51 + 16) = 0xE000000000000000;
      _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
      OUTLINED_FUNCTION_37(v50, 1, v33);
      if (!v32)
      {
        sub_26A0E48F0(v50, &off_28036C7C0, &off_26A427400);
      }
    }

    else
    {
      v51 = v57;
      sub_26A15EDA8();
    }

    _s10SnippetKit14ActionPropertyV13redactedProtoAA01_fcD0Vvg_0(v58);
    sub_26A15EDFC(v51, type metadata accessor for _ProtoActionProperty);
    sub_26A0E48F0(a1 + v47, &off_28036C7C0, &off_26A427400);
    sub_26A15EDA8();
    OUTLINED_FUNCTION_126_0();
    return __swift_storeEnumTagSinglePayload(v52, v53, v54, v33);
  }

  return result;
}

uint64_t SecondaryHeaderEmphasized.init(text1:action:componentName:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  OUTLINED_FUNCTION_4_16();
  sub_26A15F0CC(v6, v7, &protocol conformance descriptor for _ProtoSecondaryHeader_Emphasized);
  sub_26A4249C4();

  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_26A15E4BC(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v27[3] = a5;
  v9 = type metadata accessor for ActionProperty(0);
  MEMORY[0x28223BE20](v9 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_28036C7C0, &off_26A427400);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v27 - v11;
  v28 = type metadata accessor for _ProtoActionProperty(0);
  MEMORY[0x28223BE20](v28);
  v27[2] = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v27[1] = v27 - v15;
  v16 = type metadata accessor for _ProtoTextProperty(0);
  MEMORY[0x28223BE20](v16);
  v17 = type metadata accessor for TextProperty(0);
  MEMORY[0x28223BE20](v17 - 8);

  *a1 = a2;
  a1[1] = a3;
  v18 = a4[3];
  v19 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v18);
  (*(v19 + 8))(v18, v19);
  sub_26A15EDA8();
  v20 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  v21 = *(v20 + 24);
  sub_26A0E48F0(a1 + v21, &qword_28036C7B8, &unk_26A425BF0);
  sub_26A15EDA8();
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v16);
  sub_26A10FD9C();
  v22 = v30;
  if (v30)
  {
    v23 = v31;
    __swift_project_boxed_opaque_existential_1(v29, v30);
    (*(v23 + 8))(v22, v23);
    sub_26A15EDA8();
    v24 = v28;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v28);
    __swift_destroy_boxed_opaque_existential_1(v29);
    if (__swift_getEnumTagSinglePayload(v12, 1, v24) != 1)
    {
      sub_26A15EDA8();
      sub_26A15EDA8();
      v25 = *(v20 + 28);
      sub_26A0E48F0(a1 + v25, &off_28036C7C0, &off_26A427400);
      sub_26A15EDA8();
      return __swift_storeEnumTagSinglePayload(a1 + v25, 0, 1, v24);
    }
  }

  else
  {
    sub_26A0E48F0(v29, &qword_28036CAF8, &unk_26A426D30);
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v28);
  }

  return sub_26A0E48F0(v12, &off_28036C7C0, &off_26A427400);
}

uint64_t SecondaryHeaderEmphasized.init(text1:action:)(void *a1, uint64_t a2)
{
  sub_26A0E5D68(a1, v8);
  sub_26A10FD9C();
  type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  OUTLINED_FUNCTION_4_16();
  sub_26A15F0CC(v4, v5, &protocol conformance descriptor for _ProtoSecondaryHeader_Emphasized);
  sub_26A4249C4();
  sub_26A0E48F0(a2, &qword_28036CAF8, &unk_26A426D30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_26A0E48F0(v7, &qword_28036CAF8, &unk_26A426D30);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

Swift::String __swiftcall SecondaryHeaderEmphasized.description(redacted:)(Swift::Bool redacted)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB18, &unk_26A427670);
  OUTLINED_FUNCTION_41(v2);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v3);
  v5 = v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB30, &qword_26A426480);
  OUTLINED_FUNCTION_41(v6);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v7);
  v9 = v41 - v8;
  v10 = type metadata accessor for SecondaryHeaderEmphasized(0);
  v11 = OUTLINED_FUNCTION_41(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFD0, &qword_26A426BF8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v19);
  v21 = v41 - v20;
  OUTLINED_FUNCTION_3_13();
  sub_26A15ED54();
  if (redacted)
  {
    _ProtoSecondaryHeader_Emphasized.redactedProto.getter(v14);
  }

  else
  {
    sub_26A15ED54();
  }

  sub_26A15EDA8();
  v21[*(v18 + 32)] = redacted;
  sub_26A15EDFC(v17, type metadata accessor for SecondaryHeaderEmphasized);
  *&v21[*(v18 + 28)] = MEMORY[0x277D84F90];
  SecondaryHeaderEmphasized.text1.getter();
  type metadata accessor for TextProperty(0);
  OUTLINED_FUNCTION_126_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_26A105DAC(v9);
  sub_26A0E48F0(v9, &qword_28036CB30, &qword_26A426480);
  SecondaryHeaderEmphasized.action.getter(v5);
  sub_26A105CA8();
  sub_26A0E48F0(v5, &qword_28036CB18, &unk_26A427670);
  KeyPath = swift_getKeyPath();
  sub_26A0F79F8(KeyPath, 0x6E656E6F706D6F63, 0xED0000656D614E74, 1, v27, v28, v29, v30, v41[0], v41[1]);

  sub_26A0FC8FC(v31, v32, v33, v34, v35, v36, v37);
  sub_26A0E48F0(v21, &qword_28036CFD0, &qword_26A426BF8);
  v38 = OUTLINED_FUNCTION_175();
  result._object = v39;
  result._countAndFlagsBits = v38;
  return result;
}

uint64_t type metadata accessor for SecondaryHeaderEmphasized(uint64_t a1)
{
  result = qword_28036D970;
  if (!qword_28036D970)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26A15ED54()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A15EDA8()
{
  OUTLINED_FUNCTION_131_0();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_175();
  v3(v2);
  return v0;
}

uint64_t sub_26A15EDFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SecondaryHeaderEmphasized.componentProto.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18();
  v4 = type metadata accessor for _ProtoResponse.Component.OneOf_Value(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  type metadata accessor for _ProtoResponse.Component(0);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  type metadata accessor for _ProtoSeparators(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_0_20();
  sub_26A15ED54();
  sub_26A0E48F0(a1, &qword_28036C828, &unk_26A4276D0);
  OUTLINED_FUNCTION_5_10();
  sub_26A15EDA8();
  OUTLINED_FUNCTION_175();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v4);
}

uint64_t SecondaryHeaderEmphasized.asSection()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CB40, &qword_26A426510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26A426410;
  *(inited + 56) = type metadata accessor for SecondaryHeaderEmphasized(0);
  *(inited + 64) = &protocol witness table for SecondaryHeaderEmphasized;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_3_13();
  sub_26A15ED54();
  swift_beginAccess();

  sub_26A10BF5C(v1);
  type metadata accessor for _ProtoResponse.Section(0);
  sub_26A15F0CC(&qword_28036CB48, type metadata accessor for _ProtoResponse.Section, &protocol conformance descriptor for _ProtoResponse.Section);
  sub_26A4249C4();

  swift_setDeallocating();
  return sub_26A10C358();
}

uint64_t sub_26A15F0CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26A15F184(uint64_t a1)
{
  result = type metadata accessor for _ProtoSecondaryHeader_Emphasized(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return type metadata accessor for _ProtoSecondaryHeader_Emphasized(0);
}

void ImageElement.sources.getter()
{
  OUTLINED_FUNCTION_76();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  v3 = OUTLINED_FUNCTION_41(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v4);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D988, &qword_26A429CD0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_72_1();
  v9 = type metadata accessor for ImageElement.Source(0);
  OUTLINED_FUNCTION_24();
  v33 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_17();
  v34 = v12 - v13;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48();
  v32 = v15;
  v16 = 0;
  v17 = *v0;
  v18 = *(*v0 + 16);
  v35 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v18 == v16)
    {
      OUTLINED_FUNCTION_75();
      return;
    }

    if (v16 >= *(v17 + 16))
    {
      break;
    }

    v19 = type metadata accessor for _ProtoImageElement.Source(0);
    sub_26A168F7C();
    v20 = OUTLINED_FUNCTION_8_4();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    sub_26A10FD9C();
    sub_26A15F678();
    sub_26A0E48F0(v6, &qword_28036D980, &qword_26A432970);
    OUTLINED_FUNCTION_37(v1, 1, v9);
    if (v23)
    {
      sub_26A0E48F0(v1, &qword_28036D988, &qword_26A429CD0);
      ++v16;
    }

    else
    {
      v31 = type metadata accessor for ImageElement.Source;
      sub_26A168FD0();
      sub_26A168FD0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26A1688A8(0, *(v35 + 16) + 1, 1, v35, sub_26A41C294, type metadata accessor for ImageElement.Source, type metadata accessor for ImageElement.Source);
        v35 = v28;
      }

      v26 = *(v35 + 16);
      v25 = *(v35 + 24);
      v27 = (v26 + 1);
      if (v26 >= v25 >> 1)
      {
        v31 = (v26 + 1);
        sub_26A1688A8(v25 > 1, v26 + 1, 1, v35, sub_26A41C294, type metadata accessor for ImageElement.Source, type metadata accessor for ImageElement.Source);
        v27 = v31;
        v35 = v29;
      }

      ++v16;
      *(v35 + 16) = v27;
      OUTLINED_FUNCTION_22_9();
      sub_26A168FD0();
    }
  }

  __break(1u);
}

void sub_26A15F678()
{
  OUTLINED_FUNCTION_76();
  v4 = v3;
  v110 = v5;
  v6 = type metadata accessor for _ProtoImageElement.AppIcon(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v104 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v9);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_42();
  v105 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v12);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_42();
  v14 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoImageElement.Symbol(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v106 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  OUTLINED_FUNCTION_41(v19);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_82_2();
  v103 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v101 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_11();
  v100 = v23;
  v24 = OUTLINED_FUNCTION_45();
  v25 = type metadata accessor for _ProtoImageElement.Url(v24);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_17();
  v102 = v27 - v28;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_48();
  v107 = v30;
  v31 = OUTLINED_FUNCTION_45();
  v32 = type metadata accessor for _ProtoImageElement.Bundle(v31);
  v33 = OUTLINED_FUNCTION_41(v32);
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_18();
  v36 = (v35 - v34);
  v37 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v38 = OUTLINED_FUNCTION_41(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  v41 = (v40 - v39);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D980, &qword_26A432970);
  OUTLINED_FUNCTION_41(v42);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_62_3();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  OUTLINED_FUNCTION_41(v44);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v45);
  v46 = OUTLINED_FUNCTION_61_3();
  v109 = type metadata accessor for ImageElement.Source(v46);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_11();
  v108 = v48;
  sub_26A10FD9C();
  v49 = type metadata accessor for _ProtoImageElement.Source(0);
  OUTLINED_FUNCTION_37(v0, 1, v49);
  if (v63)
  {
    OUTLINED_FUNCTION_40_7();
    sub_26A0E48F0(v50, v51, v52);
    v53 = OUTLINED_FUNCTION_133();
    sub_26A0E48F0(v53, v54, &qword_26A432970);
    type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
    v55 = 1;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  }

  else
  {
    OUTLINED_FUNCTION_86_0();
    swift_beginAccess();
    sub_26A10FD9C();
    sub_26A169024(v0, type metadata accessor for _ProtoImageElement.Source);
    type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_37(v60, v61, v62);
    if (v63)
    {
      sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
    }

    else
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          OUTLINED_FUNCTION_4_17();
          sub_26A168FD0();
          v89 = *v36;
          v88 = v36[1];
          v91 = v36[2];
          v90 = v36[3];

          OUTLINED_FUNCTION_32_7();
          sub_26A169024(v36, v92);
          *v108 = v89;
          *(v108 + 1) = v88;
          *(v108 + 2) = v91;
          *(v108 + 3) = v90;
          goto LABEL_26;
        case 2:
          sub_26A168FD0();
          v74 = *(v107 + *(v25 + 20));
          OUTLINED_FUNCTION_86_0();
          swift_beginAccess();

          OUTLINED_FUNCTION_175();
          sub_26A424604();

          OUTLINED_FUNCTION_37(v2, 1, v103);
          if (!v63)
          {
            (*(v101 + 32))(v100, v2, v103);
            v93 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8) + 64);
            (*(v101 + 16))(v108, v100, v103);
            OUTLINED_FUNCTION_86_0();
            swift_beginAccess();
            sub_26A10FD9C();
            sub_26A161ACC();
            v94 = (v74 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode);
            OUTLINED_FUNCTION_86_0();
            swift_beginAccess();
            v95 = *(v94 + 8);
            v111 = *v94;
            v112 = v95;
            sub_26A40C1A8(&v111, &v108[v93]);
            sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
            (*(v101 + 8))(v100, v103);
            sub_26A169024(v107, type metadata accessor for _ProtoImageElement.Url);
LABEL_26:
            v65 = v109;
            v64 = v110;
LABEL_27:
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_22_9();
            OUTLINED_FUNCTION_100();
            sub_26A168FD0();
            v55 = 0;
            goto LABEL_9;
          }

          sub_26A0E48F0(v2, &qword_28036D500, &qword_26A435570);
          v75 = v4;
          if (qword_28036C5A0 != -1)
          {
            swift_once();
          }

          v76 = sub_26A424AE4();
          __swift_project_value_buffer(v76, qword_2803A8950);
          sub_26A168F7C();
          v77 = sub_26A424AD4();
          v78 = sub_26A424E04();
          if (os_log_type_enabled(v77, v78))
          {
            v79 = swift_slowAlloc();
            v80 = swift_slowAlloc();
            v113 = v80;
            *v79 = 136315138;
            OUTLINED_FUNCTION_86_0();
            swift_beginAccess();

            sub_26A169024(v102, type metadata accessor for _ProtoImageElement.Url);
            v81 = OUTLINED_FUNCTION_124();
            v84 = sub_26A0E8788(v81, v82, v83);

            *(v79 + 4) = v84;
            _os_log_impl(&dword_26A0B8000, v77, v78, "Value supplied is not a valid URL: %s", v79, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v80);
            MEMORY[0x26D65C950](v80, -1, -1);
            MEMORY[0x26D65C950](v79, -1, -1);

            sub_26A0E48F0(v75, &qword_28036D980, &qword_26A432970);
          }

          else
          {

            sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
            sub_26A169024(v102, type metadata accessor for _ProtoImageElement.Url);
          }

          v85 = v107;
          v86 = type metadata accessor for _ProtoImageElement.Url;
LABEL_30:
          sub_26A169024(v85, v86);
          break;
        case 3:
          sub_26A168FD0();
          sub_26A10FD9C();
          v87 = type metadata accessor for _ProtoColor(0);
          OUTLINED_FUNCTION_37(v105, 1, v87);
          if (v63)
          {
            sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
            sub_26A0E48F0(v105, &qword_28036CCD8, &unk_26A432950);
          }

          else
          {
            sub_26A0E48F0(v105, &qword_28036CCD8, &unk_26A432950);
            _ProtoImageElement.Symbol.tintColor.getter();
            sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          }

          v65 = v109;
          v64 = v110;
          v96 = type metadata accessor for Color(0);
          OUTLINED_FUNCTION_87_2(v96);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
          v98 = *v106;
          v97 = v106[1];

          OUTLINED_FUNCTION_30_5();
          sub_26A169024(v106, v99);
          *v108 = v98;
          *(v108 + 1) = v97;
          sub_26A16907C();
          goto LABEL_27;
        case 4:
          sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          OUTLINED_FUNCTION_27_10();
          sub_26A168FD0();
          v73 = *v104;
          v72 = v104[1];

          sub_26A169024(v104, type metadata accessor for _ProtoImageElement.AppIcon);
          *v108 = v73;
          *(v108 + 1) = v72;
          goto LABEL_26;
        case 5:
          sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          sub_26A168FD0();
          goto LABEL_26;
        case 6:
          sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          OUTLINED_FUNCTION_31_6();
          v85 = v1;
          goto LABEL_30;
        default:
          sub_26A0E48F0(v4, &qword_28036D980, &qword_26A432970);
          OUTLINED_FUNCTION_8_9();
          sub_26A168FD0();
          v67 = *v41;
          v68 = v41[1];
          v69 = OUTLINED_FUNCTION_175();
          sub_26A0E45C0(v69, v70);
          OUTLINED_FUNCTION_29_6();
          sub_26A169024(v41, v71);
          *v108 = v67;
          *(v108 + 1) = v68;
          goto LABEL_26;
      }
    }

    v55 = 1;
  }

  v65 = v109;
  v64 = v110;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v64, v55, 1, v65);
  OUTLINED_FUNCTION_75();
}

uint64_t ImageElement.init<A>(_:idioms:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_24_12();
  v4 = sub_26A1690D0(v2, v3, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_65_2(v4, v5, v6, v4, v7, v8, v9, v10, v14);

  v11 = OUTLINED_FUNCTION_100();
  return v12(v11);
}

uint64_t sub_26A1602EC(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v18 = a3;
  v4 = type metadata accessor for _ProtoImageElement.Source(0) - 8;
  MEMORY[0x28223BE20](v4);
  v5 = type metadata accessor for ImageElement.Source(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  v21 = MEMORY[0x277D84F90];
  sub_26A10D200(0, v9, 0);
  v10 = v21;
  if (v9)
  {
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_26A168F7C();
      sub_26A160618();
      sub_26A169024(v8, type metadata accessor for ImageElement.Source);
      v21 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_26A10D200(v12 > 1, v13 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v13 + 1;
      sub_26A168FD0();
      v11 += v20;
      --v9;
    }

    while (v9);
  }

  v14 = v19;

  *v14 = v10;

  v16 = sub_26A419264(v15);

  v14[1] = v16;
  return result;
}

uint64_t sub_26A160558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for _ProtoImageElement.Source(0);
  v10 = sub_26A409784(sub_26A161308, 0, a4, v8, MEMORY[0x277D84A98], a5, MEMORY[0x277D84AC0], v9);

  *a1 = v10;

  v12 = sub_26A419264(v11);

  a1[1] = v12;
  return result;
}

void sub_26A160618()
{
  OUTLINED_FUNCTION_76();
  v147 = v0;
  v3 = v2;
  v4 = type metadata accessor for _ProtoImageElement.Contact(0);
  v5 = OUTLINED_FUNCTION_41(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_11();
  v143 = v6;
  v7 = OUTLINED_FUNCTION_45();
  v8 = type metadata accessor for ImageElement.Contact(v7);
  v9 = OUTLINED_FUNCTION_41(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11();
  v136 = v10;
  v11 = OUTLINED_FUNCTION_45();
  v135[1] = type metadata accessor for _ProtoImageElement.AppIcon(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11();
  v141 = v13;
  v14 = OUTLINED_FUNCTION_45();
  v135[0] = type metadata accessor for _ProtoImageElement.Symbol(v14);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_11();
  v140 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v17);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_42();
  v142 = v19;
  v20 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoImageElement.Url(v20);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_11();
  v135[2] = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  OUTLINED_FUNCTION_41(v23);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_42();
  v138 = v25;
  OUTLINED_FUNCTION_45();
  v139 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v137 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_11();
  v144 = v28;
  v29 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoImageElement.Bundle(v29);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036C910, &unk_26A425EC0);
  v32 = OUTLINED_FUNCTION_41(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_17();
  v148 = v33 - v34;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v35);
  v37 = v135 - v36;
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  type metadata accessor for ImageElement.Source(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_18();
  v42 = (v41 - v40);
  _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
  v43 = type metadata accessor for _ProtoImageElement.Source(0);
  v44 = *(v43 + 20);
  if (qword_28157A098 != -1)
  {
    v134 = *(v43 + 20);
    swift_once();
    v44 = v134;
  }

  v145 = v44;
  v146 = v3;
  *(v3 + v44) = qword_28157A0A0;
  OUTLINED_FUNCTION_11_11();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v91 = v42[1];
      v92 = v42[3];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v135[-4] = v93;
      v135[-3] = v91;
      v135[-2] = v94;
      v135[-1] = v92;
      OUTLINED_FUNCTION_35_7();
      sub_26A1690D0(v95, v96, &protocol conformance descriptor for _ProtoImageElement.Bundle);

      sub_26A4249C4();

      v98 = v145;
      v97 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v99 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v99);
        sub_26A244A48();
        *(v97 + v98) = v100;
      }

      OUTLINED_FUNCTION_4_17();
      sub_26A168FD0();
      v60 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
      goto LABEL_19;
    case 2:
      v61 = *(v42 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8) + 64));
      v62 = v137;
      v63 = v144;
      v64 = OUTLINED_FUNCTION_133();
      v65 = v139;
      v66(v64);
      v67 = v138;
      v68 = sub_26A16907C();
      MEMORY[0x28223BE20](v68);
      v135[-4] = v63;
      v135[-3] = v67;
      LOBYTE(v135[-2]) = v61;
      sub_26A1690D0(qword_28157A2B0, type metadata accessor for _ProtoImageElement.Url, &protocol conformance descriptor for _ProtoImageElement.Url);

      sub_26A4249C4();
      v70 = v145;
      v69 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v71);
        sub_26A244A48();
        *(v69 + v70) = v72;
      }

      OUTLINED_FUNCTION_103();
      sub_26A168FD0();
      v73 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      v74 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
      swift_beginAccess();
      sub_26A10CF40();
      swift_endAccess();
      sub_26A0E48F0(v67, &qword_28036D9A0, &qword_26A429CE0);
      (*(v62 + 8))(v144, v65);
      goto LABEL_32;
    case 3:
      v78 = *v42;
      v77 = v42[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      v79 = v142;
      v80 = sub_26A16907C();
      MEMORY[0x28223BE20](v80);
      v135[-4] = v78;
      v135[-3] = v77;
      v135[-2] = v79;
      OUTLINED_FUNCTION_25_10();
      sub_26A1690D0(v81, v82, &protocol conformance descriptor for _ProtoImageElement.Symbol);

      OUTLINED_FUNCTION_88_2(sub_26A16963C, &v135[-6]);

      v84 = v145;
      v83 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v85 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v85);
        sub_26A244A48();
        *(v83 + v84) = v86;
      }

      OUTLINED_FUNCTION_23_14();
      sub_26A168FD0();
      v87 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v88, v89, v90, v87);
      OUTLINED_FUNCTION_56_4();
      sub_26A10CF40();
      swift_endAccess();
      sub_26A0E48F0(v79, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_32;
    case 4:
      v54 = v42[1];
      MEMORY[0x28223BE20](EnumCaseMultiPayload);
      v135[-2] = v55;
      v135[-1] = v54;
      sub_26A1690D0(qword_281579DA8, type metadata accessor for _ProtoImageElement.AppIcon, &protocol conformance descriptor for _ProtoImageElement.AppIcon);

      OUTLINED_FUNCTION_88_2(sub_26A1695A8, &v135[-4]);

      v57 = v145;
      v56 = v146;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v58);
        sub_26A244A48();
        *(v56 + v57) = v59;
      }

      OUTLINED_FUNCTION_27_10();
      sub_26A168FD0();
      v60 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_39_7();
LABEL_19:
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v101, v102, v103, v60);
      OUTLINED_FUNCTION_56_4();
      goto LABEL_30;
    case 5:
      v104 = v136;
      sub_26A168FD0();
      sub_26A168F7C();

      v106 = v145;
      v105 = v146;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        sub_26A169024(v104, type metadata accessor for ImageElement.Contact);
      }

      else
      {
        v126 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v126);

        sub_26A244A48();
        v128 = v127;
        OUTLINED_FUNCTION_33_4();
        sub_26A169024(v104, v129);

        *(v105 + v106) = v128;
      }

      sub_26A168FD0();
      v130 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      swift_storeEnumTagMultiPayload();
      v131 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v130);
      OUTLINED_FUNCTION_56_4();
LABEL_30:
      sub_26A10CF40();
      goto LABEL_31;
    default:
      v46 = *v42;
      v47 = v42[1];
      OUTLINED_FUNCTION_86_0();
      swift_beginAccess();
      sub_26A10FD9C();
      v48 = type metadata accessor for _ProtoImageElement.Source.OneOf_Value(0);
      OUTLINED_FUNCTION_76_1();
      OUTLINED_FUNCTION_37(v49, v50, v51);
      if (v52)
      {

        sub_26A0E48F0(v37, &qword_28036C910, &unk_26A425EC0);
        v53 = v146;
LABEL_24:
        *v1 = xmmword_26A426400;
        *(v1 + 16) = 0;
        *(v1 + 24) = 1;
        *(v1 + 32) = xmmword_26A426400;
        *(v1 + 48) = xmmword_26A426400;
        _s10SnippetKit11_ProtoTableV14AutoColumnSizeVAEycfC_0();
        type metadata accessor for _ProtoImageElement.AspectRatio(0);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
        v113 = type metadata accessor for _ProtoOptionalBool(0);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v114, v115, v116, v113);
        OUTLINED_FUNCTION_92();
        __swift_storeEnumTagSinglePayload(v117, v118, v119, v113);
        goto LABEL_25;
      }

      v107 = swift_getEnumCaseMultiPayload();
      v53 = v146;
      if (v107)
      {

        OUTLINED_FUNCTION_31_6();
        sub_26A169024(v37, v108);
        goto LABEL_24;
      }

      sub_26A168FD0();

LABEL_25:
      sub_26A0E4784(*v1, *(v1 + 8));
      *v1 = v46;
      *(v1 + 8) = v47;
      v120 = v145;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = type metadata accessor for _ProtoImageElement.Source._StorageClass(0);
        OUTLINED_FUNCTION_188_0(v121);
        sub_26A244A48();
        *(v53 + v120) = v122;
      }

      OUTLINED_FUNCTION_100();
      sub_26A168FD0();
      swift_storeEnumTagMultiPayload();
      v123 = OUTLINED_FUNCTION_8_4();
      __swift_storeEnumTagSinglePayload(v123, v124, v125, v48);
      swift_beginAccess();
      sub_26A10CF40();
LABEL_31:
      swift_endAccess();
LABEL_32:
      OUTLINED_FUNCTION_75();
      return;
  }
}

uint64_t ImageElement.init(_:idioms:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for _ProtoImageElement(0);
  OUTLINED_FUNCTION_24_12();
  v4 = sub_26A1690D0(v2, v3, &protocol conformance descriptor for _ProtoImageElement);
  OUTLINED_FUNCTION_65_2(v4, v5, v6, v4, v7, v8, v9, v10, v12);
}

uint64_t sub_26A1613D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036E418, &qword_26A42A858);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ImageElement.LoadingImage(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26A4245E4();
  _ProtoImageElement.Url.source.setter();
  sub_26A10FD9C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_26A0E48F0(v10, &qword_28036D9A0, &qword_26A429CE0);
  }

  else
  {
    sub_26A168FD0();
    sub_26A161658();
    v14 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v14);
    _ProtoImageElement.Url.loadingImage.setter();
    sub_26A169024(v13, type metadata accessor for ImageElement.LoadingImage);
  }

  v15 = *(type metadata accessor for _ProtoImageElement.Url(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a1 + v15);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for _ProtoImageElement.Url._StorageClass(0);
    swift_allocObject();
    v17 = sub_26A24E76C(v17);
    *(a1 + v15) = v17;
  }

  v18 = v21 & 1;
  v19 = v17 + OBJC_IVAR____TtCVV10SnippetKit18_ProtoImageElement3UrlP33_4A8BE84811D3620BBC1FF2AFACC92F8B13_StorageClass__contentMode;
  result = swift_beginAccess();
  *v19 = v18;
  *(v19 + 8) = 1;
  return result;
}

void sub_26A161658()
{
  OUTLINED_FUNCTION_76();
  v22[0] = v1;
  type metadata accessor for _ProtoImageElement.Symbol(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v3);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  type metadata accessor for _ProtoImageElement.Bundle(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  type metadata accessor for _ProtoImageElement.DataMessage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18();
  type metadata accessor for ImageElement.LoadingImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_10_13();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v0;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v18 = v0[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      v19 = sub_26A16907C();
      MEMORY[0x28223BE20](v19);
      v22[-4] = v11;
      v22[-3] = v18;
      v22[-2] = v6;
      OUTLINED_FUNCTION_25_10();
      sub_26A1690D0(v20, v21, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      OUTLINED_FUNCTION_20_10();
      sub_26A4249C4();

      OUTLINED_FUNCTION_23_14();
      sub_26A168FD0();
      type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
      swift_storeEnumTagMultiPayload();
      sub_26A0E48F0(v6, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_7;
    }

    v12 = v0[1];
    v13 = v0[3];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v22[-4] = v11;
    v22[-3] = v12;
    v22[-2] = v14;
    v22[-1] = v13;
    OUTLINED_FUNCTION_35_7();
    sub_26A1690D0(v15, v16, &protocol conformance descriptor for _ProtoImageElement.Bundle);
    OUTLINED_FUNCTION_236();
    sub_26A4249C4();

    OUTLINED_FUNCTION_4_17();
    sub_26A168FD0();
    type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  }

  else
  {
    v17 = v0[1];
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v22[-2] = v11;
    v22[-1] = v17;
    sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
    sub_26A4249C4();
    sub_26A0E4784(v11, v17);
    OUTLINED_FUNCTION_8_9();
    sub_26A168FD0();
    type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  }

  swift_storeEnumTagMultiPayload();
LABEL_7:
  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A161A7C(void *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  a1[1] = a3;
  return result;
}

void sub_26A161ACC()
{
  OUTLINED_FUNCTION_76();
  v5 = v4;
  v51 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CCD8, &unk_26A432950);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v50 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v10);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_42();
  v12 = OUTLINED_FUNCTION_45();
  type metadata accessor for _ProtoImageElement.Symbol(v12);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18();
  v14 = OUTLINED_FUNCTION_61_3();
  v15 = type metadata accessor for _ProtoImageElement.Bundle(v14);
  v16 = OUTLINED_FUNCTION_41(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();
  v17 = type metadata accessor for _ProtoImageElement.DataMessage(0);
  v18 = OUTLINED_FUNCTION_41(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18();
  v21 = (v20 - v19);
  v22 = OUTLINED_FUNCTION_103();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
  OUTLINED_FUNCTION_41(v24);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_72_1();
  v26 = type metadata accessor for ImageElement.LoadingImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  sub_26A10FD9C();
  v28 = type metadata accessor for _ProtoImageElement.Url.OneOf_LoadingImage(0);
  OUTLINED_FUNCTION_37(v2, 1, v28);
  if (v29)
  {
    sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
    v30 = 1;
    v31 = v51;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
        OUTLINED_FUNCTION_4_17();
        sub_26A168FD0();
        v34 = *v3;
        v33 = v3[1];
        v36 = v3[2];
        v35 = v3[3];

        OUTLINED_FUNCTION_32_7();
        sub_26A169024(v3, v37);
        *v1 = v34;
        v1[1] = v33;
        v1[2] = v36;
        v1[3] = v35;
      }

      else
      {
        sub_26A168FD0();
        sub_26A10FD9C();
        v41 = type metadata accessor for _ProtoColor(0);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v50, 1, v41);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v43, v44, v45);
        if (EnumTagSinglePayload != 1)
        {
          _ProtoImageElement.Symbol.tintColor.getter();
        }

        sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
        v46 = type metadata accessor for Color(0);
        OUTLINED_FUNCTION_87_2(v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
        v48 = *v0;
        v47 = v0[1];

        OUTLINED_FUNCTION_30_5();
        sub_26A169024(v0, v49);
        *v1 = v48;
        v1[1] = v47;
        sub_26A16907C();
      }

      v31 = v51;
    }

    else
    {
      sub_26A0E48F0(v5, &qword_28036E418, &qword_26A42A858);
      OUTLINED_FUNCTION_8_9();
      sub_26A168FD0();
      v38 = *v21;
      v39 = v21[1];
      sub_26A0E45C0(*v21, v39);
      OUTLINED_FUNCTION_29_6();
      sub_26A169024(v21, v40);
      *v1 = v38;
      v1[1] = v39;
      v31 = v51;
    }

    swift_storeEnumTagMultiPayload();
    sub_26A168FD0();
    v30 = 0;
  }

  __swift_storeEnumTagSinglePayload(v31, v30, 1, v26);
  OUTLINED_FUNCTION_75();
}

void static ImageElement.Source.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v197 = v4;
  v198 = v5;
  v6 = type metadata accessor for ImageElement.Contact(0);
  v7 = OUTLINED_FUNCTION_41(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_11();
  v190 = v8;
  v9 = OUTLINED_FUNCTION_45();
  v187 = type metadata accessor for Color(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_11();
  v180 = v11;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_42();
  v188 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v15 = OUTLINED_FUNCTION_41(v14);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_17();
  v182 = v16 - v17;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v18);
  v191 = &v178 - v19;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_48();
  v193 = v21;
  v22 = OUTLINED_FUNCTION_45();
  v184 = type metadata accessor for ImageElement.LoadingImage(v22);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_11();
  v179 = v24;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D998, &qword_26A429CD8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_42();
  v185 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v28 = OUTLINED_FUNCTION_41(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_17();
  v181 = v29 - v30;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v31);
  v189 = &v178 - v32;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_48();
  v192 = v34;
  OUTLINED_FUNCTION_45();
  sub_26A424614();
  OUTLINED_FUNCTION_24();
  v195 = v36;
  v196 = v35;
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_11();
  v194 = v37;
  v38 = OUTLINED_FUNCTION_45();
  type metadata accessor for ImageElement.Source(v38);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v40);
  v42 = (&v178 - v41);
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x28223BE20](v45);
  v47 = (&v178 - v46);
  MEMORY[0x28223BE20](v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A8, &qword_26A429CE8);
  OUTLINED_FUNCTION_41(v49);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_62_3();
  v52 = (v0 + *(v51 + 56));
  sub_26A168F7C();
  sub_26A168F7C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_26A168F7C();
      v98 = *v47;
      v97 = v47[1];
      v100 = v47[2];
      v99 = v47[3];
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_37;
      }

      v86 = v0;
      v102 = v52[2];
      v101 = v52[3];
      if (v98 == *v52 && v97 == v52[1])
      {
      }

      else
      {
        v104 = sub_26A425354();

        if ((v104 & 1) == 0)
        {

          goto LABEL_63;
        }
      }

      if (v100 == v102 && v99 == v101)
      {
      }

      else
      {
        v133 = OUTLINED_FUNCTION_86_2(v100);

        if ((v133 & 1) == 0)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_65;
    case 2u:
      v63 = v0;
      sub_26A168F7C();
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8);
      v65 = *(v64 + 48);
      v66 = *(v64 + 64);
      v67 = *(v3 + v66);
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_26A0E48F0(v3 + v65, &qword_28036D9A0, &qword_26A429CE0);
        (*(v195 + 8))(v3, v196);
        v0 = v63;
        goto LABEL_39;
      }

      LODWORD(v198) = v67;
      LODWORD(v197) = *(v52 + v66);
      v68 = v195;
      v69 = OUTLINED_FUNCTION_103();
      v70 = v196;
      v71(v69);
      sub_26A16907C();
      sub_26A16907C();
      v72 = sub_26A4245F4();
      v73 = *(v68 + 8);
      v73(v3, v70);
      if (v72)
      {
        v74 = *(v183 + 48);
        v75 = v185;
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        v76 = v184;
        OUTLINED_FUNCTION_37(v75, 1, v184);
        if (v60)
        {
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v77, v78, v79);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v80, v81, v82);
          v73(v194, v196);
          OUTLINED_FUNCTION_37(v75 + v74, 1, v76);
          if (v60)
          {
            sub_26A0E48F0(v75, &qword_28036D9A0, &qword_26A429CE0);
LABEL_76:
            OUTLINED_FUNCTION_9_10();
            sub_26A169024(v63, v177);
            goto LABEL_72;
          }
        }

        else
        {
          v143 = v181;
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v75 + v74, 1, v76);
          if (!v144)
          {
            v163 = v179;
            sub_26A168FD0();
            OUTLINED_FUNCTION_133();
            static ImageElement.LoadingImage.== infix(_:_:)();
            v165 = v164;
            sub_26A169024(v163, type metadata accessor for ImageElement.LoadingImage);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v166, v167, v168);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v169, v170, v171);
            v73(v194, v196);
            v172 = OUTLINED_FUNCTION_175();
            sub_26A169024(v172, v173);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v174, v175, v176);
            if (v165)
            {
              goto LABEL_76;
            }

LABEL_70:
            v62 = v63;
            goto LABEL_71;
          }

          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v145, v146, v147);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v148, v149, v150);
          v73(v194, v196);
          OUTLINED_FUNCTION_3_14();
          sub_26A169024(v143, v151);
        }

        sub_26A0E48F0(v75, &qword_28036D998, &qword_26A429CD8);
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_20_10();
      sub_26A0E48F0(v116, v117, v118);
      OUTLINED_FUNCTION_20_10();
      sub_26A0E48F0(v119, v120, v121);
      v122 = OUTLINED_FUNCTION_53_4();
      (v73)(v122);
      goto LABEL_70;
    case 3u:
      sub_26A168F7C();
      v84 = *v2;
      v83 = v2[1];
      v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v86 = v0;
        v88 = *v52;
        v87 = v52[1];
        sub_26A16907C();
        sub_26A16907C();
        if (v84 == v88 && v83 == v87)
        {
        }

        else
        {
          OUTLINED_FUNCTION_39_7();
          v90 = sub_26A425354();

          if ((v90 & 1) == 0)
          {
            OUTLINED_FUNCTION_20_10();
            sub_26A0E48F0(v91, v92, v93);
            OUTLINED_FUNCTION_20_10();
LABEL_62:
            sub_26A0E48F0(v94, v95, v96);
LABEL_63:
            v62 = v86;
            goto LABEL_71;
          }
        }

        v123 = *(v186 + 48);
        v124 = v188;
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        OUTLINED_FUNCTION_59_5();
        sub_26A10FD9C();
        v125 = v187;
        OUTLINED_FUNCTION_37(v124, 1, v187);
        if (v60)
        {
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v126, v127, v128);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v129, v130, v131);
          OUTLINED_FUNCTION_37(v124 + v123, 1, v125);
          if (v60)
          {
            sub_26A0E48F0(v124, &qword_28036CBA0, &qword_26A4265B0);
LABEL_65:
            v62 = v86;
LABEL_71:
            sub_26A169024(v62, type metadata accessor for ImageElement.Source);
            goto LABEL_72;
          }
        }

        else
        {
          v134 = v182;
          sub_26A10FD9C();
          OUTLINED_FUNCTION_37(v124 + v123, 1, v125);
          if (!v135)
          {
            v152 = v180;
            sub_26A168FD0();
            v153 = static _ProtoColor.== infix(_:_:)();
            sub_26A169024(v152, type metadata accessor for Color);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v154, v155, v156);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v157, v158, v159);
            sub_26A169024(v134, type metadata accessor for Color);
            OUTLINED_FUNCTION_40_7();
            sub_26A0E48F0(v160, v161, v162);
            if ((v153 & 1) == 0)
            {
              goto LABEL_63;
            }

            goto LABEL_65;
          }

          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v136, v137, v138);
          OUTLINED_FUNCTION_20_10();
          sub_26A0E48F0(v139, v140, v141);
          OUTLINED_FUNCTION_0_21();
          sub_26A169024(v134, v142);
        }

        v95 = &qword_28036D990;
        v96 = &qword_26A43DEE0;
        v94 = v124;
        goto LABEL_62;
      }

      sub_26A0E48F0(v2 + v85, &qword_28036CBA0, &qword_26A4265B0);
LABEL_37:

LABEL_39:
      sub_26A0E48F0(v0, &qword_28036D9A8, &qword_26A429CE8);
LABEL_72:
      OUTLINED_FUNCTION_75();
      return;
    case 4u:
      sub_26A168F7C();
      v56 = *v42;
      v55 = v42[1];
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_37;
      }

      v57 = v0;
      v58 = *v52;
      v59 = v52[1];
      v60 = v56 == v58 && v55 == v59;
      if (v60)
      {
      }

      else
      {
        OUTLINED_FUNCTION_39_7();
        v61 = sub_26A425354();

        if ((v61 & 1) == 0)
        {
          v62 = v57;
          goto LABEL_71;
        }
      }

      v62 = v57;
      goto LABEL_71;
    case 5u:
      OUTLINED_FUNCTION_133();
      sub_26A168F7C();
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v105 = v190;
        sub_26A168FD0();
        OUTLINED_FUNCTION_115();
        static _ProtoImageElement.Contact.== infix(_:_:)();
        sub_26A169024(v105, type metadata accessor for ImageElement.Contact);
        v106 = OUTLINED_FUNCTION_48_1();
        sub_26A169024(v106, v107);
        OUTLINED_FUNCTION_9_10();
        v109 = v0;
        goto LABEL_41;
      }

      sub_26A169024(v1, type metadata accessor for ImageElement.Contact);
      goto LABEL_39;
    default:
      sub_26A168F7C();
      OUTLINED_FUNCTION_53_4();
      if (swift_getEnumCaseMultiPayload())
      {
        v53 = OUTLINED_FUNCTION_115();
        sub_26A0E4784(v53, v54);
        goto LABEL_39;
      }

      v110 = v0;
      v111 = *v52;
      v112 = v52[1];
      v113 = OUTLINED_FUNCTION_115();
      MEMORY[0x26D65B4F0](v113);
      sub_26A0E4784(v111, v112);
      v114 = OUTLINED_FUNCTION_115();
      sub_26A0E4784(v114, v115);
      OUTLINED_FUNCTION_9_10();
      v109 = v110;
LABEL_41:
      sub_26A169024(v109, v108);
      goto LABEL_72;
  }
}

uint64_t sub_26A16334C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  *a1 = a2;
  a1[1] = a3;

  a1[2] = a4;
  a1[3] = a5;
  return result;
}

uint64_t sub_26A1633C4(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = type metadata accessor for _ProtoColor(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_82_2();

  *a1 = a2;
  a1[1] = a3;
  sub_26A10FD9C();
  OUTLINED_FUNCTION_76_1();
  if (__swift_getEnumTagSinglePayload(v12, v13, v14) == 1)
  {
    return sub_26A0E48F0(v10, &qword_28036CBA0, &qword_26A4265B0);
  }

  sub_26A168FD0();
  sub_26A168FD0();
  v16 = type metadata accessor for _ProtoImageElement.Symbol(0);
  sub_26A0E48F0(a1 + *(v16 + 48), &qword_28036CCD8, &unk_26A432950);
  sub_26A168FD0();
  OUTLINED_FUNCTION_126_0();
  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v21);
}

void static ImageElement.LoadingImage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_76();
  v86 = type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_11();
  v84 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D990, &qword_26A43DEE0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v87 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v8 = OUTLINED_FUNCTION_41(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_17();
  v85 = v9 - v10;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v11);
  v88 = &v84 - v12;
  OUTLINED_FUNCTION_40();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_48();
  v89 = v14;
  v15 = OUTLINED_FUNCTION_45();
  type metadata accessor for ImageElement.LoadingImage(v15);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v17);
  v19 = (&v84 - v18);
  MEMORY[0x28223BE20](v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9C8, &qword_26A429D00);
  OUTLINED_FUNCTION_41(v21);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_62_3();
  v24 = (v0 + *(v23 + 56));
  sub_26A168F7C();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_175();
      sub_26A168F7C();
      v27 = *v19;
      v26 = v19[1];
      v29 = v19[2];
      v28 = v19[3];
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v31 = v24[2];
        v30 = v24[3];
        v32 = v27 == *v24 && v26 == v24[1];
        if (v32)
        {
        }

        else
        {
          v33 = sub_26A425354();

          if ((v33 & 1) == 0)
          {
LABEL_9:

LABEL_42:
            sub_26A169024(v0, type metadata accessor for ImageElement.LoadingImage);
            goto LABEL_43;
          }
        }

        if (v29 != v31 || v28 != v30)
        {
          OUTLINED_FUNCTION_86_2(v29);
        }

        goto LABEL_9;
      }

      goto LABEL_21;
    }

    OUTLINED_FUNCTION_133();
    sub_26A168F7C();
    v36 = *v1;
    v37 = v1[1];
    v38 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0) + 48);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_26A0E48F0(v1 + v38, &qword_28036CBA0, &qword_26A4265B0);
LABEL_21:

      goto LABEL_22;
    }

    v40 = *v24;
    v39 = v24[1];
    sub_26A16907C();
    sub_26A16907C();
    if (v36 == v40 && v37 == v39)
    {
    }

    else
    {
      v42 = sub_26A425354();

      if ((v42 & 1) == 0)
      {
        OUTLINED_FUNCTION_236();
        sub_26A0E48F0(v43, v44, v45);
        OUTLINED_FUNCTION_236();
        goto LABEL_41;
      }
    }

    v56 = *(v4 + 48);
    v57 = v87;
    sub_26A10FD9C();
    sub_26A10FD9C();
    v58 = v86;
    OUTLINED_FUNCTION_37(v57, 1, v86);
    if (v32)
    {
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v59, v60, v61);
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v62, v63, v64);
      OUTLINED_FUNCTION_37(v57 + v56, 1, v58);
      if (v32)
      {
        sub_26A0E48F0(v57, &qword_28036CBA0, &qword_26A4265B0);
        goto LABEL_42;
      }
    }

    else
    {
      v65 = v85;
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v57 + v56, 1, v58);
      if (!v66)
      {
        v74 = v84;
        sub_26A168FD0();
        static _ProtoColor.== infix(_:_:)();
        sub_26A169024(v74, type metadata accessor for Color);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v75, v76, v77);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v78, v79, v80);
        sub_26A169024(v65, type metadata accessor for Color);
        OUTLINED_FUNCTION_69_2();
        sub_26A0E48F0(v81, v82, v83);
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v67, v68, v69);
      OUTLINED_FUNCTION_236();
      sub_26A0E48F0(v70, v71, v72);
      OUTLINED_FUNCTION_0_21();
      sub_26A169024(v65, v73);
    }

    v47 = &qword_28036D990;
    v48 = &qword_26A43DEE0;
    v46 = v57;
LABEL_41:
    sub_26A0E48F0(v46, v47, v48);
    goto LABEL_42;
  }

  sub_26A168F7C();
  if (!swift_getEnumCaseMultiPayload())
  {
    v50 = *v24;
    v49 = v24[1];
    v51 = OUTLINED_FUNCTION_78_1();
    MEMORY[0x26D65B4F0](v51);
    sub_26A0E4784(v50, v49);
    v52 = OUTLINED_FUNCTION_78_1();
    sub_26A0E4784(v52, v53);
    OUTLINED_FUNCTION_3_14();
    sub_26A169024(v0, v54);
    goto LABEL_43;
  }

  v34 = OUTLINED_FUNCTION_78_1();
  sub_26A0E4784(v34, v35);
LABEL_22:
  sub_26A0E48F0(v0, &qword_28036D9C8, &qword_26A429D00);
LABEL_43:
  OUTLINED_FUNCTION_75();
}

void ImageElement.LoadingImage.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_76();
  a19 = v22;
  a20 = v23;
  v24 = type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_18();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v30 = OUTLINED_FUNCTION_41(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  type metadata accessor for ImageElement.LoadingImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_10_13();
  OUTLINED_FUNCTION_124();
  sub_26A168F7C();
  OUTLINED_FUNCTION_22_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v36 = *v21;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      MEMORY[0x26D65C340](1);
      sub_26A424C04();

      OUTLINED_FUNCTION_40_7();
      sub_26A424C04();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      sub_26A16907C();
      MEMORY[0x26D65C340](2);
      sub_26A424C04();

      OUTLINED_FUNCTION_115();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v20, 1, v24);
      if (v38)
      {
        sub_26A425524();
      }

      else
      {
        sub_26A168FD0();
        sub_26A425524();
        type metadata accessor for _ProtoColor(0);
        OUTLINED_FUNCTION_34_6();
        sub_26A1690D0(v39, v40, &protocol conformance descriptor for _ProtoColor);
        sub_26A424B44();
        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v28, v41);
      }

      sub_26A0E48F0(v33, &qword_28036CBA0, &qword_26A4265B0);
    }
  }

  else
  {
    v37 = v21[1];
    MEMORY[0x26D65C340](0);
    sub_26A4246E4();
    sub_26A0E4784(v36, v37);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A163F74(uint64_t (*a1)(void *))
{
  sub_26A425504();
  a1(v3);
  return sub_26A425554();
}

uint64_t sub_26A163FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_26A425504();
  a4(v6);
  return sub_26A425554();
}

void ImageElement.Source.description.getter()
{
  OUTLINED_FUNCTION_76();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9D0, &qword_26A432980);
  OUTLINED_FUNCTION_41(v4);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_42();
  v93 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D518, &qword_26A4283D0);
  OUTLINED_FUNCTION_41(v7);
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_42();
  v96 = v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CFC0, &qword_26A426BE8);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_39();
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_61_3();
  v12 = type metadata accessor for ImageElement.Contact(v11);
  v13 = OUTLINED_FUNCTION_41(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_17();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_48();
  v95 = v18;
  v19 = OUTLINED_FUNCTION_45();
  v91 = type metadata accessor for Color(v19);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_11();
  v90 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v23 = OUTLINED_FUNCTION_41(v22);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_85();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_48();
  v94 = v25;
  v26 = OUTLINED_FUNCTION_45();
  v27 = type metadata accessor for ImageElement.LoadingImage(v26);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_11();
  v89 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  v31 = OUTLINED_FUNCTION_41(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_63_2();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_48();
  v97 = v33;
  OUTLINED_FUNCTION_45();
  v34 = sub_26A424614();
  OUTLINED_FUNCTION_24();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_11();
  v39 = v38;
  v40 = OUTLINED_FUNCTION_45();
  type metadata accessor for ImageElement.Source(v40);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_11_11();
  sub_26A168F7C();
  OUTLINED_FUNCTION_124();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v60 = v2[2];
      v61 = v2[3];
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_38_5();
      v62 = OUTLINED_FUNCTION_133();
      MEMORY[0x26D65BA70](v62);

      OUTLINED_FUNCTION_54_4();
      MEMORY[0x26D65BA70](v60, v61);
      goto LABEL_17;
    case 2u:
      v48 = *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8) + 64));
      v49 = v39;
      (*(v36 + 32))(v39, v2, v34);
      OUTLINED_FUNCTION_59_5();
      sub_26A16907C();
      OUTLINED_FUNCTION_59_5();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v3, 1, v27);
      if (v50)
      {
        sub_26A0E48F0(v3, &qword_28036D9A0, &qword_26A429CE0);
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_66_0(v51);
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0xD000000000000010, 0x800000026A447900);
        if (v48)
        {
          v52 = 1819044198;
        }

        else
        {
          v52 = 7629158;
        }

        if (v48)
        {
          v53 = 0xE400000000000000;
        }

        else
        {
          v53 = 0xE300000000000000;
        }

        MEMORY[0x26D65BA70](v52, v53);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        v54 = OUTLINED_FUNCTION_100();
      }

      else
      {
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_66_0(v83);
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0xD000000000000011, 0x800000026A447920);
        ImageElement.LoadingImage.description.getter();
        OUTLINED_FUNCTION_90_1();

        MEMORY[0x26D65BA70](0x6E65746E6F63202CLL, 0xEF203A65646F4D74);
        if (v48)
        {
          v84 = 1819044198;
        }

        else
        {
          v84 = 7629158;
        }

        if (v48)
        {
          v85 = 0xE400000000000000;
        }

        else
        {
          v85 = 0xE300000000000000;
        }

        MEMORY[0x26D65BA70](v84, v85);

        MEMORY[0x26D65BA70](41, 0xE100000000000000);
        OUTLINED_FUNCTION_3_14();
        sub_26A169024(v89, v86);
        v55 = &qword_28036D9A0;
        v54 = v97;
      }

      sub_26A0E48F0(v54, v55, &qword_26A429CE0);
      (*(v36 + 8))(v49, v34);
      break;
    case 3u:
      v56 = *v2;
      v57 = v2[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      sub_26A16907C();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v1, 1, v91);
      if (v50)
      {
        v58 = OUTLINED_FUNCTION_115();
        sub_26A0E48F0(v58, v59, &qword_26A4265B0);
        OUTLINED_FUNCTION_58_5();
        MEMORY[0x26D65BA70](v56, v57);

        OUTLINED_FUNCTION_89_0();
      }

      else
      {
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        OUTLINED_FUNCTION_58_5();
        MEMORY[0x26D65BA70](v56, v57);

        OUTLINED_FUNCTION_55_4();
        Color.description(redacted:)(0);
        OUTLINED_FUNCTION_90_1();

        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v90, v87);
      }

      sub_26A0E48F0(v94, &qword_28036CBA0, &qword_26A4265B0);
      break;
    case 4u:
      v46 = *v2;
      v47 = v2[1];
      v99 = 0x286E6F6349707061;
      v100 = 0xE900000000000022;
      MEMORY[0x26D65BA70](v46, v47);
LABEL_17:

      OUTLINED_FUNCTION_89_0();
      break;
    case 5u:
      sub_26A168FD0();
      sub_26A168F7C();
      OUTLINED_FUNCTION_236();
      sub_26A168F7C();
      *(v0 + *(v92 + 32)) = 0;
      sub_26A169024(v16, type metadata accessor for ImageElement.Contact);
      *(v0 + *(v92 + 28)) = MEMORY[0x277D84F90];
      sub_26A10FD9C();
      sub_26A41DBFC(v93, v96);
      type metadata accessor for ImageElement.Contact.Content(0);
      OUTLINED_FUNCTION_126_0();
      __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
      OUTLINED_FUNCTION_86_0();
      sub_26A1471B0(v67, v68, v69, v70);
      sub_26A0E48F0(v96, &qword_28036D518, &qword_26A4283D0);
      v71 = v0 + *(type metadata accessor for _ProtoImageElement.Contact(0) + 20);
      v72 = *v71;
      LOBYTE(v71) = *(v71 + 8);
      v99 = v72;
      LOBYTE(v100) = v71;
      sub_26A217A84(&v99, &v98);
      sub_26A147108(v98, 0x7974536567616D69, 0xEA0000000000656CLL, 0, v73, v74);
      sub_26A1027A4(v75, v76, v77, v78, v79, v80, v81, v82, v88, v89, v90, v91, v92);
      sub_26A0E48F0(v0, &qword_28036CFC0, &qword_26A426BE8);
      sub_26A169024(v95, type metadata accessor for ImageElement.Contact);
      break;
    default:
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_49_8();
      v42 = OUTLINED_FUNCTION_133();
      v98 = MEMORY[0x26D65B520](v42);
      v43 = sub_26A4251B4();
      MEMORY[0x26D65BA70](v43);

      OUTLINED_FUNCTION_67_2();
      v44 = OUTLINED_FUNCTION_133();
      sub_26A0E4784(v44, v45);
      break;
  }

  OUTLINED_FUNCTION_133();
  OUTLINED_FUNCTION_75();
}

void ImageElement.LoadingImage.description.getter()
{
  OUTLINED_FUNCTION_76();
  v3 = type metadata accessor for Color(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  v6 = OUTLINED_FUNCTION_41(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_64_1();
  MEMORY[0x28223BE20](v7);
  v9 = v26 - v8;
  type metadata accessor for ImageElement.LoadingImage(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_10_13();
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v2;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v13 = v2[2];
      v14 = v2[3];
      OUTLINED_FUNCTION_13_9();
      sub_26A424EF4();

      OUTLINED_FUNCTION_38_5();
      v15 = OUTLINED_FUNCTION_48_1();
      MEMORY[0x26D65BA70](v15);

      OUTLINED_FUNCTION_54_4();
      MEMORY[0x26D65BA70](v13, v14);

      OUTLINED_FUNCTION_89_0();
    }

    else
    {
      v20 = v2[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      sub_26A16907C();
      sub_26A10FD9C();
      OUTLINED_FUNCTION_37(v1, 1, v3);
      if (v21)
      {
        v22 = OUTLINED_FUNCTION_103();
        sub_26A0E48F0(v22, v23, &qword_26A4265B0);
        v27 = 0x22286C6F626D7973;
        v28 = 0xE800000000000000;
        MEMORY[0x26D65BA70](v12, v20);

        OUTLINED_FUNCTION_89_0();
      }

      else
      {
        OUTLINED_FUNCTION_103();
        sub_26A168FD0();
        OUTLINED_FUNCTION_13_9();
        sub_26A424EF4();

        v27 = 0x22286C6F626D7973;
        v28 = 0xE800000000000000;
        MEMORY[0x26D65BA70](v12, v20);

        OUTLINED_FUNCTION_55_4();
        countAndFlagsBits = Color.description(redacted:)(0)._countAndFlagsBits;
        MEMORY[0x26D65BA70](countAndFlagsBits);

        OUTLINED_FUNCTION_0_21();
        sub_26A169024(v0, v25);
      }

      sub_26A0E48F0(v9, &qword_28036CBA0, &qword_26A4265B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_13_9();
    sub_26A424EF4();

    OUTLINED_FUNCTION_49_8();
    v16 = OUTLINED_FUNCTION_48_1();
    v26[1] = MEMORY[0x26D65B520](v16);
    v17 = sub_26A4251B4();
    MEMORY[0x26D65BA70](v17);

    OUTLINED_FUNCTION_67_2();
    v18 = OUTLINED_FUNCTION_48_1();
    sub_26A0E4784(v18, v19);
  }

  OUTLINED_FUNCTION_75();
}

void Array<A>.sources(for:)()
{
  OUTLINED_FUNCTION_76();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for ImageElement(0) - 8;
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v35 - v7);
  v9 = v35 - v8;
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v18 = v35 - v17;
  v19 = *(v1 + 16);
  if (v19)
  {
    v37 = v15;
    v38 = v13;
    v35[0] = v12;
    v35[1] = v16;
    v20 = *v3;
    v21 = *(v3 + 8);
    v22 = v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v23 = *(v14 + 72);
    v35[2] = v22;
    v36 = v19;
    do
    {
      sub_26A168F7C();
      v24 = *(v9 + 1);
      if (v24[2])
      {
      }

      else
      {
        v24 = &unk_287B01748;
      }

      v25 = sub_26A165034(v20, v21, v24);

      if (v25)
      {
        sub_26A168FD0();
LABEL_20:
        sub_26A168FD0();
        ImageElement.sources.getter();
        OUTLINED_FUNCTION_26_11();
        sub_26A169024(v18, v34);
        goto LABEL_21;
      }

      sub_26A169024(v9, type metadata accessor for ImageElement);
      v22 += v23;
      --v19;
    }

    while (v19);
    v26 = 0;
    v28 = v36;
    v27 = v37;
    do
    {
      sub_26A168F7C();
      if (*(*(v27 + 8) + 16))
      {
      }

      else
      {
        v29 = &unk_287B01778;
      }

      ++v26;
      v30 = v29[2] + 1;
      v31 = 4;
      while (--v30)
      {
        v32 = v29[v31];
        v31 += 2;
        if (!v32)
        {

          sub_26A168FD0();
          v18 = v35[0];
          goto LABEL_20;
        }
      }

      OUTLINED_FUNCTION_26_11();
      sub_26A169024(v27, v33);
    }

    while (v26 != v28);
  }

LABEL_21:
  OUTLINED_FUNCTION_75();
}

BOOL sub_26A165034(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = (a3 + 32);
  while (v3)
  {
    v5 = *v4;
    if (a2)
    {
      switch(a1)
      {
        case 1:
          if (v5 != 1)
          {
            goto LABEL_8;
          }

          break;
        case 2:
          if (v5 != 2)
          {
            goto LABEL_8;
          }

          break;
        case 3:
          if (v5 != 3)
          {
            goto LABEL_8;
          }

          break;
        case 4:
          if (v5 != 4)
          {
            goto LABEL_8;
          }

          break;
        case 5:
          if (v5 != 5)
          {
            goto LABEL_8;
          }

          break;
        case 6:
          if (v5 != 6)
          {
            goto LABEL_8;
          }

          break;
        case 7:
          if (v5 != 7)
          {
            goto LABEL_8;
          }

          break;
        case 8:
          if (v5 != 8)
          {
            goto LABEL_8;
          }

          break;
        default:
          if (v5)
          {
            goto LABEL_8;
          }

          break;
      }

      return v3 != 0;
    }

    if (v5 == a1)
    {
      return v3 != 0;
    }

LABEL_8:
    v4 += 2;
    --v3;
  }

  return v3 != 0;
}

void Array<A>.asSourceTypes()()
{
  OUTLINED_FUNCTION_76();
  v2 = v1;
  v3 = type metadata accessor for ImageElement.SourceType(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_44_6();
  v4 = *(v2 + 16);
  if (v4)
  {
    v10 = MEMORY[0x277D84F90];
    sub_26A10D65C(0, v4, 0);
    v5 = *(type metadata accessor for ImageElement.Source(0) - 8);
    v6 = (v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v7 = *(v5 + 72);
    do
    {
      sub_26A1652A4(v6, v0);
      v9 = *(v10 + 16);
      v8 = *(v10 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_26A10D65C(v8 > 1, v9 + 1, 1);
      }

      *(v10 + 16) = v9 + 1;
      sub_26A168FD0();
      v6 = (v6 + v7);
      --v4;
    }

    while (v4);
  }

  OUTLINED_FUNCTION_75();
}

uint64_t sub_26A1652A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a2;
  v121 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D500, &qword_26A435570);
  MEMORY[0x28223BE20](v2 - 8);
  v104 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v99 - v5;
  MEMORY[0x28223BE20](v7);
  v112 = &v99 - v8;
  v103 = type metadata accessor for ImageElement.LoadingImage(0);
  MEMORY[0x28223BE20](v103);
  v102 = (&v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4F8, &qword_26A4283C0);
  MEMORY[0x28223BE20](v10 - 8);
  v113 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v110 = &v99 - v13;
  MEMORY[0x28223BE20](v14);
  v111 = &v99 - v15;
  MEMORY[0x28223BE20](v16);
  v114 = &v99 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9A0, &qword_26A429CE0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v109 = &v99 - v22;
  v116 = sub_26A424614();
  v119 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v118 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v106 = &v99 - v25;
  MEMORY[0x28223BE20](v26);
  v107 = &v99 - v27;
  MEMORY[0x28223BE20](v28);
  v115 = &v99 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v99 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v99 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v99 - v37;
  MEMORY[0x28223BE20](v39);
  v117 = &v99 - v40;
  MEMORY[0x28223BE20](v41);
  v108 = &v99 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  MEMORY[0x28223BE20](v43 - 8);
  v105 = &v99 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = &v99 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = &v99 - v49;
  v51 = type metadata accessor for ImageElement.Source(0);
  MEMORY[0x28223BE20](v51);
  v53 = (&v99 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A168F7C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v93 = *v53;
      v92 = v53[1];
      v95 = v53[2];
      v94 = v53[3];
      v96 = type metadata accessor for ImageElement.AspectRatio(0);
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v96);
      sub_26A10FD9C();
      v97 = type metadata accessor for _ProtoImageElement.Bundle(0);
      v121 = &v99;
      MEMORY[0x28223BE20](v97);
      *(&v99 - 8) = v93;
      *(&v99 - 7) = v92;
      *(&v99 - 6) = 0;
      *(&v99 - 5) = 0;
      *(&v99 - 4) = v95;
      *(&v99 - 3) = v94;
      *(&v99 - 8) = 512;
      *(&v99 - 14) = 2;
      *(&v99 - 1) = v47;
      sub_26A1690D0(&qword_28036E3F0, type metadata accessor for _ProtoImageElement.Bundle, &protocol conformance descriptor for _ProtoImageElement.Bundle);
      sub_26A4249C4();

      sub_26A0E48F0(v50, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v47, &qword_28036CBB8, &qword_26A4265C8);
      goto LABEL_11;
    case 2u:
      v101 = v6;
      LODWORD(v121) = *(v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B8, &qword_26A429CF8) + 64));
      (v119[4])(v115, v53, v116);
      sub_26A16907C();
      sub_26A10FD9C();
      v61 = 1;
      if (__swift_getEnumTagSinglePayload(v20, 1, v103) == 1)
      {
        goto LABEL_7;
      }

      v62 = v102;
      sub_26A168FD0();
      v63 = v122;
      sub_26A166384(v114);
      if (v63)
      {
        result = sub_26A169024(v62, type metadata accessor for ImageElement.LoadingImage);
        __break(1u);
      }

      else
      {
        sub_26A169024(v62, type metadata accessor for ImageElement.LoadingImage);
        v61 = 0;
        v122 = 0;
LABEL_7:
        v64 = type metadata accessor for ImageElement.SourceType.LoadingImage(0);
        __swift_storeEnumTagSinglePayload(v114, v61, 1, v64);
        v66 = (v119 + 2);
        v65 = v119[2];
        v67 = v107;
        v68 = v116;
        v65(v107, v115, v116);
        sub_26A10FD9C();
        v69 = type metadata accessor for ImageElement.AspectRatio(0);
        v100 = v50;
        __swift_storeEnumTagSinglePayload(v50, 1, 1, v69);
        v70 = v106;
        v103 = v66;
        v65(v106, v67, v68);
        v102 = v65;
        __swift_storeEnumTagSinglePayload(v112, 1, 1, v68);
        sub_26A10FD9C();
        sub_26A10FD9C();
        v71 = type metadata accessor for Color(0);
        v72 = v108;
        __swift_storeEnumTagSinglePayload(v108, 1, 1, v71);
        v65(v118, v70, v68);
        v73 = v101;
        sub_26A10FD9C();
        v74 = v113;
        sub_26A10FD9C();
        v75 = v105;
        sub_26A10FD9C();
        v76 = v117;
        sub_26A10FD9C();
        v77 = type metadata accessor for _ProtoImageElement.Url(0);
        MEMORY[0x28223BE20](v77);
        *(&v99 - 8) = v118;
        *(&v99 - 7) = v73;
        *(&v99 - 6) = v74;
        *(&v99 - 40) = v121;
        *(&v99 - 39) = 0;
        *(&v99 - 4) = v75;
        *(&v99 - 12) = 514;
        *(&v99 - 22) = 0;
        *(&v99 - 2) = v76;
        *(&v99 - 8) = 0;
        *(&v99 - 1) = 0;
        v121 = type metadata accessor for ImageElement.Url(0);
        sub_26A1690D0(qword_28157A2B0, type metadata accessor for _ProtoImageElement.Url, &protocol conformance descriptor for _ProtoImageElement.Url);
        v78 = v120;
        sub_26A4249C4();
        sub_26A0E48F0(v72, &qword_28036CBA0, &qword_26A4265B0);
        sub_26A0E48F0(v47, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v110, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v112, &qword_28036D500, &qword_26A435570);
        v80 = v119 + 1;
        v79 = v119[1];
        v81 = v116;
        v79(v106, v116);
        sub_26A0E48F0(v100, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v111, &qword_28036D4F8, &qword_26A4283C0);
        v79(v107, v81);
        v119 = v80;
        sub_26A0E48F0(v114, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v109, &qword_28036D9A0, &qword_26A429CE0);
        v79(v115, v81);
        v82 = v118;
        v83 = v102;
        v102(v78, v118, v81);
        v84 = v78 + *(v121 + 5);
        v83(v84, v82, v81);
        v85 = v101;
        sub_26A10FD9C();
        v86 = type metadata accessor for RFImage.Url(0);
        __swift_storeEnumTagSinglePayload(v84 + *(v86 + 20), 1, 1, v81);
        sub_26A10CF40();
        sub_26A0E48F0(v117, &qword_28036CBA0, &qword_26A4265B0);
        sub_26A0E48F0(v105, &qword_28036CBB8, &qword_26A4265C8);
        sub_26A0E48F0(v113, &qword_28036D4F8, &qword_26A4283C0);
        sub_26A0E48F0(v85, &qword_28036D500, &qword_26A435570);
        v79(v118, v81);
LABEL_11:
        type metadata accessor for ImageElement.SourceType(0);
        return swift_storeEnumTagMultiPayload();
      }

      return result;
    case 3u:
      v87 = v53[1];
      v121 = *v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      v88 = v108;
      sub_26A16907C();
      v89 = v117;
      sub_26A10FD9C();
      sub_26A10FD9C();
      sub_26A10FD9C();
      v90 = type metadata accessor for ImageElement.Background(0);
      __swift_storeEnumTagSinglePayload(v32, 1, 1, v90);
      v91 = type metadata accessor for _ProtoImageElement.Symbol(0);
      v119 = &v99;
      MEMORY[0x28223BE20](v91);
      *(&v99 - 8) = v121;
      *(&v99 - 7) = v87;
      *(&v99 - 6) = 0;
      *(&v99 - 5) = 0;
      *(&v99 - 4) = v35;
      *(&v99 - 12) = 0;
      *(&v99 - 2) = v32;
      sub_26A1690D0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      sub_26A4249C4();

      sub_26A0E48F0(v38, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v89, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v88, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v32, &qword_28036D4D0, &qword_26A428230);
      sub_26A0E48F0(v35, &qword_28036CBA0, &qword_26A4265B0);
      goto LABEL_11;
    case 4u:
      v59 = *v53;
      v58 = v53[1];
      v60 = type metadata accessor for _ProtoImageElement.AppIcon(0);
      MEMORY[0x28223BE20](v60);
      *(&v99 - 4) = v59;
      *(&v99 - 3) = v58;
      *(&v99 - 16) = 0;
      sub_26A1690D0(qword_281579DA8, type metadata accessor for _ProtoImageElement.AppIcon, &protocol conformance descriptor for _ProtoImageElement.AppIcon);
      sub_26A4249C4();

      goto LABEL_11;
    case 5u:
      sub_26A168FD0();
      goto LABEL_11;
    default:
      v54 = *v53;
      v55 = v53[1];
      v56 = type metadata accessor for ImageElement.AspectRatio(0);
      __swift_storeEnumTagSinglePayload(v50, 1, 1, v56);
      sub_26A10FD9C();
      v57 = type metadata accessor for _ProtoImageElement.DataMessage(0);
      v121 = &v99;
      MEMORY[0x28223BE20](v57);
      *(&v99 - 6) = v54;
      *(&v99 - 5) = v55;
      *(&v99 - 2) = xmmword_26A427140;
      *(&v99 - 8) = 512;
      *(&v99 - 14) = 2;
      *(&v99 - 1) = v47;
      sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
      sub_26A4249C4();
      sub_26A0E4784(v54, v55);
      sub_26A0E48F0(v50, &qword_28036CBB8, &qword_26A4265C8);
      sub_26A0E48F0(v47, &qword_28036CBB8, &qword_26A4265C8);
      goto LABEL_11;
  }
}

uint64_t sub_26A166384@<X0>(uint64_t a2@<X8>)
{
  v49 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D4D0, &qword_26A428230);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v46 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBA0, &qword_26A4265B0);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v46 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v46 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036CBB8, &qword_26A4265C8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v46 - v20;
  v22 = type metadata accessor for ImageElement.LoadingImage(0);
  MEMORY[0x28223BE20](v22);
  v24 = (&v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_26A168F7C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v26 = *v24;
  v48 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v27 = v24[1];
      v28 = v24[2];
      v29 = v24[3];
      v30 = type metadata accessor for ImageElement.AspectRatio(0);
      __swift_storeEnumTagSinglePayload(v21, 1, 1, v30);
      v31 = &qword_26A4265C8;
      sub_26A10FD9C();
      v32 = type metadata accessor for _ProtoImageElement.Bundle(0);
      MEMORY[0x28223BE20](v32);
      *(&v46 - 8) = v33;
      *(&v46 - 7) = v27;
      *(&v46 - 6) = 0;
      *(&v46 - 5) = 0;
      *(&v46 - 4) = v28;
      *(&v46 - 3) = v29;
      *(&v46 - 8) = 512;
      *(&v46 - 14) = 2;
      *(&v46 - 1) = v18;
      sub_26A1690D0(&qword_28036E3F0, type metadata accessor for _ProtoImageElement.Bundle, &protocol conformance descriptor for _ProtoImageElement.Bundle);
      sub_26A4249C4();

      sub_26A0E48F0(v21, &qword_28036CBB8, &qword_26A4265C8);
      v34 = v18;
      v35 = &qword_28036CBB8;
    }

    else
    {
      v40 = v24[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28036D9B0, &qword_26A429CF0);
      sub_26A16907C();
      sub_26A10FD9C();
      sub_26A10FD9C();
      v41 = v47;
      sub_26A10FD9C();
      v42 = type metadata accessor for ImageElement.Background(0);
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v42);
      v43 = type metadata accessor for _ProtoImageElement.Symbol(0);
      v46 = &v46;
      MEMORY[0x28223BE20](v43);
      *(&v46 - 8) = v26;
      *(&v46 - 7) = v40;
      *(&v46 - 6) = 0;
      *(&v46 - 5) = 0;
      *(&v46 - 4) = v41;
      *(&v46 - 12) = 0;
      *(&v46 - 2) = v4;
      sub_26A1690D0(qword_281579E68, type metadata accessor for _ProtoImageElement.Symbol, &protocol conformance descriptor for _ProtoImageElement.Symbol);
      sub_26A4249C4();

      v44 = v9;
      v31 = &qword_26A4265B0;
      sub_26A0E48F0(v44, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v12, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v15, &qword_28036CBA0, &qword_26A4265B0);
      sub_26A0E48F0(v4, &qword_28036D4D0, &qword_26A428230);
      v34 = v41;
      v35 = &qword_28036CBA0;
    }

    v39 = v31;
  }

  else
  {
    v36 = v24[1];
    v37 = type metadata accessor for ImageElement.AspectRatio(0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v37);
    sub_26A10FD9C();
    v38 = type metadata accessor for _ProtoImageElement.DataMessage(0);
    MEMORY[0x28223BE20](v38);
    *(&v46 - 6) = v26;
    *(&v46 - 5) = v36;
    *(&v46 - 2) = xmmword_26A427140;
    *(&v46 - 8) = 512;
    *(&v46 - 14) = 2;
    *(&v46 - 1) = v18;
    sub_26A1690D0(&qword_28036D1A8, type metadata accessor for _ProtoImageElement.DataMessage, &protocol conformance descriptor for _ProtoImageElement.DataMessage);
    sub_26A4249C4();
    sub_26A0E4784(v26, v36);
    sub_26A0E48F0(v21, &qword_28036CBB8, &qword_26A4265C8);
    v34 = v18;
    v35 = &qword_28036CBB8;
    v39 = &qword_26A4265C8;
  }

  sub_26A0E48F0(v34, v35, v39);
  type metadata accessor for ImageElement.SourceType.LoadingImage(0);
  return swift_storeEnumTagMultiPayload();
}