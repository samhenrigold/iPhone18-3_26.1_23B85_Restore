unint64_t sub_22C47A574()
{
  result = qword_28142F980;
  if (!qword_28142F980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28142F980);
  }

  return result;
}

id sub_22C47A5B8(uint64_t a1)
{
  v1 = sub_22C90A0EC();

  v2 = [swift_getObjCClassFromMetadata() bundleWithIdentifier_];

  return v2;
}

uint64_t type metadata accessor for PlannerGrammarConstants.StaticGrammarError(uint64_t a1)
{
  result = qword_27D9BC8D0;
  if (!qword_27D9BC8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PlannerGrammarConstants.readGrammar(from:)(uint64_t a1)
{
  v73 = sub_22C90046C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v69 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v63[-v9];
  v11 = sub_22C9063DC();
  sub_22C369824();
  v70 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22C369ABC();
  v72 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v63[-v17];
  v19 = sub_22C90A17C();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_22C9004AC();
  v71 = a1;
  if (v1)
  {
    v68 = v11;
    v22 = v1;
    v23 = v73;
  }

  else
  {
    v43 = v21;
    v44 = v20;
    sub_22C90A15C();
    v45 = sub_22C90A13C();
    if (v46)
    {
      v23 = v45;
      sub_22C38B120(v44, v43);
      return v23;
    }

    v66 = v44;
    v67 = v43;
    sub_22C903F7C();
    v48 = *(v4 + 16);
    v23 = v73;
    v48(v10, v71, v73);
    v49 = sub_22C9063CC();
    v50 = sub_22C90AADC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = sub_22C36FB44();
      v68 = v48;
      v52 = v51;
      v65 = sub_22C370060();
      v74 = v65;
      *v52 = 136315138;
      sub_22C369CCC();
      sub_22C47B060(v53, v54, MEMORY[0x277CC9290]);
      v64 = v50;
      v55 = sub_22C90B47C();
      v57 = v56;
      (*(v4 + 8))(v10, v73);
      v58 = sub_22C36F9F4(v55, v57, &v74);
      v23 = v73;

      *(v52 + 4) = v58;
      _os_log_impl(&dword_22C366000, v49, v64, "Failed to load plan constraining grammar: unable to decode file as utf8 string %s", v52, 0xCu);
      sub_22C36FF94(v65);
      sub_22C3699EC();
      v48 = v68;
      sub_22C3699EC();
    }

    else
    {

      (*(v4 + 8))(v10, v23);
    }

    (*(v70 + 8))(v18, v11);
    v68 = v11;
    type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
    sub_22C36A8B4();
    sub_22C47B060(v59, v60, &unk_22C914E64);
    v22 = swift_allocError();
    v61 = v71;
    v48(v62, v71, v23);
    a1 = v61;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_22C38B120(v66, v67);
  }

  v24 = v72;
  sub_22C903F7C();
  v25 = *(v4 + 16);
  v26 = v69;
  v25(v69, a1, v23);
  v27 = sub_22C9063CC();
  v28 = sub_22C90AADC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = sub_22C36FB44();
    v30 = sub_22C370060();
    v67 = v22;
    v31 = v30;
    v74 = v30;
    *v29 = 136315138;
    sub_22C369CCC();
    sub_22C47B060(v32, v33, MEMORY[0x277CC9290]);
    v34 = sub_22C90B47C();
    v35 = v26;
    v37 = v36;
    (*(v4 + 8))(v35, v73);
    v38 = sub_22C36F9F4(v34, v37, &v74);

    *(v29 + 4) = v38;
    _os_log_impl(&dword_22C366000, v27, v28, "Failed to load plan constraining grammar: unable to locate %s", v29, 0xCu);
    sub_22C36FF94(v31);
    v22 = v67;
    sub_22C3699EC();
    v23 = v73;
    sub_22C3699EC();

    (*(v70 + 8))(v72, v68);
  }

  else
  {

    (*(v4 + 8))(v26, v23);
    (*(v70 + 8))(v24, v68);
  }

  type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
  sub_22C36A8B4();
  v41 = sub_22C47B060(v39, v40, &unk_22C914E64);
  sub_22C370620(v41);
  v25(v42, v71, v23);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  return v23;
}

uint64_t sub_22C47AC7C()
{
  v1 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C47B0A8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v5 = 1;
    goto LABEL_5;
  }

  v5 = 0;
  if (EnumCaseMultiPayload == 1)
  {
    v5 = 2;
LABEL_5:
    sub_22C47B10C(v3);
  }

  return v5;
}

uint64_t sub_22C47AD30(uint64_t a1)
{
  v2 = sub_22C47B060(&qword_27D9BC8E0, type metadata accessor for PlannerGrammarConstants.StaticGrammarError, &unk_22C914E24);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C47AD9C(uint64_t a1)
{
  v2 = sub_22C47B060(&qword_27D9BC8E0, type metadata accessor for PlannerGrammarConstants.StaticGrammarError, &unk_22C914E24);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t DynamicGrammarLinkage.dynamicIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

id sub_22C47AE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_22C90A0EC();
  v7 = sub_22C90A0EC();
  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

_BYTE *sub_22C47AEF8(_BYTE *result, int a2, int a3)
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

uint64_t sub_22C47AFAC(uint64_t a1)
{
  result = sub_22C90046C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C47B060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22C47B0A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47B10C(uint64_t a1)
{
  v2 = type metadata accessor for PlannerGrammarConstants.StaticGrammarError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47B16C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v5;
}

uint64_t sub_22C47B190@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 16) = (v2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000) + 15;
  *(result + 24) = a2;
  return result;
}

void *sub_22C47B1A4(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB6A8, &qword_22C90FAB8);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v42 - v6;
  v8 = sub_22C90133C();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1;
  v10 = sub_22C90128C();
  sub_22C47CE34(&qword_27D9BB6B0, MEMORY[0x277D2A2D0]);
  v11 = sub_22C90A4DC();
  v50 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, v11 & ~(v11 >> 63), 0, v12, v13, v14, v15);
  v16 = v50;
  v49 = a1;

  v48 = v10;
  result = sub_22C90A4CC();
  if (v11 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v47 = v7;
  if (v11)
  {
    v44 = (v43 + 8);
    v46 = sub_22C47CE34(&qword_27D9BB6B8, MEMORY[0x277D2A2D8]);
    do
    {
      sub_22C90ACEC();
      result = sub_22C370B74(v5, 1, v8);
      if (result == 1)
      {
        goto LABEL_15;
      }

      v18 = sub_22C90132C();
      v20 = v19;
      (*v44)(v5, v8);
      v50 = v16;
      v26 = *(v16 + 16);
      v25 = *(v16 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_22C3B5E2C(v25 > 1, v26 + 1, 1, v21, v22, v23, v24);
        v16 = v50;
      }

      *(v16 + 16) = v26 + 1;
      v27 = v16 + 16 * v26;
      *(v27 + 32) = v18;
      *(v27 + 40) = v20;
    }

    while (--v11);
  }

  v46 = sub_22C47CE34(&qword_27D9BB6B8, MEMORY[0x277D2A2D8]);
  v28 = (v43 + 32);
  v29 = (v43 + 8);
  while (1)
  {
    v30 = v47;
    sub_22C90ACEC();
    if (sub_22C370B74(v30, 1, v8) == 1)
    {
      break;
    }

    v31 = v45;
    (*v28)(v45, v30, v8);
    v32 = sub_22C90132C();
    v34 = v33;
    (*v29)(v31, v8);
    v50 = v16;
    v40 = *(v16 + 16);
    v39 = *(v16 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_22C3B5E2C(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
      v16 = v50;
    }

    *(v16 + 16) = v40 + 1;
    v41 = v16 + 16 * v40;
    *(v41 + 32) = v32;
    *(v41 + 40) = v34;
  }

  sub_22C47CE78(v30);
  return v16;
}

unint64_t sub_22C47B6D0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  sub_22C3698E4();
  v28 = v7;
  result = MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = 0;
  v13 = *(a3 + 16);
  v29 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v13 == v12)
    {

      return v29;
    }

    if (v12 >= *(a3 + 16))
    {
      break;
    }

    v14 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v15 = *(v6 + 72);
    sub_22C47CEE0(a3 + v14 + v15 * v12, v11);
    v16 = v30(v11);
    if (v3)
    {
      sub_22C47CF44(v11);
      v25 = v29;

      return v25;
    }

    if (v16)
    {
      sub_22C47CFA0(v11, v28);
      v17 = v29;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v19 = sub_22C373310();
        sub_22C3B7238(v19, v20, v21);
        v17 = v32;
      }

      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v29 = v23 + 1;
        v27 = v23;
        sub_22C3B7238(v22 > 1, v23 + 1, 1);
        v24 = v29;
        v23 = v27;
        v17 = v32;
      }

      ++v12;
      *(v17 + 16) = v24;
      v29 = v17;
      result = sub_22C47CFA0(v28, v17 + v14 + v23 * v15);
    }

    else
    {
      result = sub_22C47CF44(v11);
      ++v12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22C47B930(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  v30 = a5;
  v35 = a1;
  v36 = a2;
  v38 = a4(0);
  v7 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  sub_22C3698E4();
  v32 = v8;
  result = MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  v13 = 0;
  v37 = *(a3 + 16);
  v34 = v7 + 16;
  v14 = (v7 + 8);
  v31 = (v7 + 32);
  v33 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v37 == v13)
    {

      return v33;
    }

    if (v13 >= *(a3 + 16))
    {
      break;
    }

    v15 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v16 = *(v7 + 72);
    v17 = a3;
    (*(v7 + 16))(v12, a3 + v15 + v16 * v13, v38);
    v18 = v35(v12);
    if (v5)
    {
      (*v14)(v12, v38);
      v26 = v33;

      return v26;
    }

    if (v18)
    {
      v29 = *v31;
      v29(v32, v12, v38);
      v19 = v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v19;
      if (isUniquelyReferenced_nonNull_native)
      {
        v21 = v19;
      }

      else
      {
        v22 = sub_22C373310();
        v30(v22);
        v21 = v39;
      }

      a3 = v17;
      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v33 = v24 + 1;
        v28 = v24;
        (v30)(v23 > 1, v24 + 1, 1);
        v25 = v33;
        v24 = v28;
        a3 = v17;
        v21 = v39;
      }

      ++v13;
      *(v21 + 16) = v25;
      v33 = v21;
      result = (v29)(v21 + v15 + v24 * v16, v32, v38);
    }

    else
    {
      result = (*v14)(v12, v38);
      ++v13;
    }
  }

  __break(1u);
  return result;
}

void *Tokenizer.tokenize(string:)()
{
  result = sub_22C90134C();
  if (!v0)
  {
    v2 = sub_22C47B1A4(result);

    return v2;
  }

  return result;
}

uint64_t QuotableStringGrammarConverter.makeGrammar(from:identifier:renderingState:)@<X0>(uint64_t isUniquelyReferenced_nonNull_native@<X0>, uint64_t a2@<X1>, int64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v91 = a3;
  v88 = a4;
  v8 = 0;
  v9 = *(isUniquelyReferenced_nonNull_native + 16);
  v10 = (isUniquelyReferenced_nonNull_native + 40);
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = &v10[2 * v8];
  while (v9 != v8)
  {
    if (v8 >= v9)
    {
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
LABEL_61:
      __break(1u);
LABEL_62:
      v78 = sub_22C373310();
      sub_22C590240(v78, v79, v80, v11);
      v11 = v81;
      goto LABEL_34;
    }

    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_55;
    }

    v6 = *(v12 - 1);
    v14 = *v12;
    v15 = HIBYTE(*v12) & 0xF;
    if ((*v12 & 0x2000000000000000) == 0)
    {
      v15 = v6 & 0xFFFFFFFFFFFFLL;
    }

    ++v8;
    v12 += 2;
    if (v15)
    {
      v90 = v4;
      v92 = v5;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v11;
      v89 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_22C373310();
        sub_22C3B5E2C(v20, v21, v22, v23, v24, v25, v26);
        v11 = v93;
      }

      v28 = *(v11 + 16);
      v27 = *(v11 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_22C3B5E2C(v27 > 1, v28 + 1, 1, v16, v17, v18, v19);
        v11 = v93;
      }

      *(v11 + 16) = v28 + 1;
      v29 = v11 + 16 * v28;
      *(v29 + 32) = v6;
      *(v29 + 40) = v14;
      v8 = v13;
      v5 = v92;
      v10 = v89;
      v4 = v90;
      goto LABEL_2;
    }
  }

  v10 = &v83;
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  sub_22C3B2880();
  v31 = v5;
  if (v5)
  {
  }

  v9 = v30;
  v87 = 0;
  v90 = a2;

  swift_getKeyPath();
  v6 = *(v9 + 16);
  v33 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
LABEL_17:
  v35 = v31;
  while (v6 != v35)
  {
    if (v35 >= *(v9 + 16))
    {
      goto LABEL_56;
    }

    v31 = v35 + 1;
    v10 = *(v9 + 8 * v35 + 32);
    v95 = v10;

    swift_getAtKeyPath();

    v36 = v94;
    v35 = v31;
    if (v94)
    {
      v11 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_22C373310();
        sub_22C590270(v42, v43, v44, v34);
        v34 = v45;
      }

      v37 = v34;
      v38 = *(v34 + 16);
      v39 = v37;
      v40 = *(v37 + 24);
      v10 = (v38 + 1);
      if (v38 >= v40 >> 1)
      {
        sub_22C590270(v40 > 1, v38 + 1, 1, v39);
        v39 = v46;
      }

      *(v39 + 16) = v10;
      v41 = v39 + 16 * v38;
      v34 = v39;
      *(v41 + 32) = v11;
      *(v41 + 40) = v36;
      goto LABEL_17;
    }
  }

  v92 = v6;

  v47 = *(v34 + 16);
  if (v47)
  {
    v93 = v33;
    sub_22C3B63F4(0, v47, 0);
    v11 = v93;
    v89 = v34;
    v48 = (v34 + 40);
    do
    {
      v50 = *(v48 - 1);
      v49 = *v48;
      v51 = swift_allocObject();
      *(v51 + 16) = v50;
      *(v51 + 24) = v49;
      v93 = v11;
      v53 = *(v11 + 16);
      v52 = *(v11 + 24);

      if (v53 >= v52 >> 1)
      {
        sub_22C3B63F4(v52 > 1, v53 + 1, 1);
        v11 = v93;
      }

      *(v11 + 16) = v53 + 1;
      *(v11 + 8 * v53 + 32) = v51 | 0x4000000000000000;
      v48 += 2;
      --v47;
    }

    while (v47);
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0xE000000000000000;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v6 = v91;
  if ((v54 & 1) == 0)
  {
    goto LABEL_62;
  }

LABEL_34:
  v56 = *(v11 + 16);
  v55 = *(v11 + 24);
  if (v56 >= v55 >> 1)
  {
    sub_22C590240(v55 > 1, v56 + 1, 1, v11);
    v11 = v82;
  }

  *(v11 + 16) = v56 + 1;
  *(v11 + 8 * v56 + 32) = v10;
  v93 = v90;
  v94 = v6;

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE800000000000000);
  v57 = v93;
  v6 = v94;
  v58 = swift_allocObject();
  *(v58 + 16) = v11;
  v89 = v58 | 0x8000000000000000;
  v59 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
  v10 = swift_allocObject();
  *(v10 + 1) = xmmword_22C90FB40;
  sub_22C36A8CC();
  v60 = swift_allocObject();
  *(v60 + 16) = 34;
  *(v60 + 24) = 0xE100000000000000;
  v10[4] = v60;
  sub_22C36A8CC();
  v61 = swift_allocObject();
  *(v61 + 16) = v57;
  *(v61 + 24) = v6;
  v10[5] = v61 | 0x4000000000000000;
  sub_22C36A8CC();
  v62 = swift_allocObject();
  *(v62 + 16) = 34;
  *(v62 + 24) = 0xE100000000000000;
  v10[6] = v62;
  *(v59 + 16) = v10;
  v84 = v59 | 0xC000000000000000;
  sub_22C3A5908(&qword_27D9BAFA8, &qword_22C914280);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_22C90F800;
  *(v63 + 32) = v57;
  *(v63 + 40) = v6;
  v83 = v63;
  *(v63 + 48) = v89;
  v86 = v58;

  swift_bridgeObjectRetain_n();

  v89 = v6;
  swift_bridgeObjectRetain_n();
  v85 = v59;

  v64 = 0;
  v65 = MEMORY[0x277D84F90];
  v66 = v92;
  while (v66 != v64)
  {
    if (v64 >= *(v9 + 16))
    {
      goto LABEL_57;
    }

    v67 = *(v9 + 8 * v64 + 32);
    v10 = *(v67 + 16);
    v6 = *(v65 + 16);
    v68 = v10 + v6;
    if (__OFADD__(v6, v10))
    {
      goto LABEL_58;
    }

    v69 = swift_isUniquelyReferenced_nonNull_native();
    if (!v69 || v68 > *(v65 + 24) >> 1)
    {
      if (v6 <= v68)
      {
        v70 = v10 + v6;
      }

      else
      {
        v70 = v6;
      }

      sub_22C5902A0(v69, v70, 1, v65);
      v65 = v71;
    }

    v66 = v92;
    if (*(v67 + 16))
    {
      if ((*(v65 + 24) >> 1) - *(v65 + 16) < v10)
      {
        goto LABEL_60;
      }

      swift_arrayInitWithCopy();

      if (v10)
      {
        v72 = *(v65 + 16);
        v73 = __OFADD__(v72, v10);
        v74 = v10 + v72;
        if (v73)
        {
          goto LABEL_61;
        }

        *(v65 + 16) = v74;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_59;
      }
    }

    ++v64;
  }

  v93 = v83;
  sub_22C3CC3D8(v65);

  v75 = v91;

  v76 = v93;
  v77 = v88;
  *v88 = v90;
  v77[1] = v75;
  v77[2] = v84;
  v77[3] = v76;
  return result;
}

uint64_t sub_22C47C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);

  MEMORY[0x2318B7850](0x746E65746E6F635FLL, 0xE90000000000005FLL);
  v10 = sub_22C90B47C();
  MEMORY[0x2318B7850](v10);

  v11 = sub_22C47C440(v8, v9, a2, a3);

  if (v5)
  {
    *a4 = v5;
  }

  else
  {
    *a5 = v11;
  }

  return result;
}

uint64_t sub_22C47C440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = v4[3];
  v11 = v4[4];
  sub_22C374168(v4, v10);
  v12 = (*(v11 + 8))(a1, a2, v10, v11);
  if (!v5)
  {
    v14 = v12;
    v15 = 0;
    v16 = *(v12 + 16);
    v17 = v12 + 40;
    v18 = MEMORY[0x277D84F90];
LABEL_4:
    v19 = (v17 + 16 * v15);
    while (v16 != v15)
    {
      if (v15 >= *(v14 + 16))
      {
        __break(1u);
LABEL_35:
        sub_22C5902A0(0, *(v10 + 16) + 1, 1, v10);
        v10 = v48;
        goto LABEL_31;
      }

      ++v15;
      v10 = *(v19 - 1);
      v20 = *v19;
      v19 += 2;
      v21 = HIBYTE(v20) & 0xF;
      if ((v20 & 0x2000000000000000) == 0)
      {
        v21 = v10 & 0xFFFFFFFFFFFFLL;
      }

      if (v21)
      {
        v52 = v17;

        v54[0] = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C3B5E2C(0, *(v18 + 16) + 1, 1, v22, v23, v24, v25);
          v18 = v54[0];
        }

        v27 = *(v18 + 16);
        v26 = *(v18 + 24);
        v28 = v27 + 1;
        v17 = v52;
        if (v27 >= v26 >> 1)
        {
          v50 = *(v18 + 16);
          v51 = v27 + 1;
          sub_22C3B5E2C(v26 > 1, v27 + 1, 1, v22, v23, v24, v25);
          v27 = v50;
          v28 = v51;
          v17 = v52;
          v18 = v54[0];
        }

        *(v18 + 16) = v28;
        v29 = v18 + 16 * v27;
        *(v29 + 32) = v10;
        *(v29 + 40) = v20;
        goto LABEL_4;
      }
    }

    v30 = MEMORY[0x277D84F90];
    v55 = MEMORY[0x277D84F90];
    v31 = *(v18 + 16);

    v32 = 0;
    v33 = (v18 + 16 * v31 + 24);
    if (v31)
    {
      while (1)
      {
        v34 = *(v18 + 16);
        v35 = v31 == v34 ? *(v18 + 16) : v32;
        v32 = v35 - 1;
        if (__OFSUB__(v35, 1))
        {
          break;
        }

        if (v31 > v34)
        {
          goto LABEL_29;
        }

        v36 = *(v33 - 1);
        v14 = *v33;
        v54[0] = v35 - 1;
        v54[1] = v36;
        v54[2] = v14;

        sub_22C47C818(&v55, v54, v18, a3, a4);

        v33 -= 2;
        if (!--v31)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }

    else
    {
LABEL_22:

      v10 = v55;
      v37 = *(v55 + 16);
      if (v37 <= 1)
      {
        return v10;
      }

      v54[0] = v30;
      sub_22C3B63F4(0, v37, 0);
      v14 = v54[0];
      v51 = v10;
      v38 = (v10 + 40);
      do
      {
        v40 = *(v38 - 1);
        v39 = *v38;
        v41 = swift_allocObject();
        *(v41 + 16) = v40;
        *(v41 + 24) = v39;
        v43 = *(v14 + 16);
        v42 = *(v14 + 24);
        v53 = v43 + 1;
        v54[0] = v14;

        if (v43 >= v42 >> 1)
        {
          sub_22C3B63F4(v42 > 1, v53, 1);
          v14 = v54[0];
        }

        *(v14 + 16) = v53;
        *(v14 + 8 * v43 + 32) = v41 | 0x4000000000000000;
        v38 += 3;
        --v37;
      }

      while (v37);
    }

    v44 = swift_allocObject();
    *(v44 + 16) = v14;
    v14 = v44 | 0x8000000000000000;

    v10 = v51;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_35;
    }

LABEL_31:
    v46 = *(v10 + 16);
    v45 = *(v10 + 24);
    if (v46 >= v45 >> 1)
    {
      sub_22C5902A0(v45 > 1, v46 + 1, 1, v10);
      v10 = v49;
    }

    *(v10 + 16) = v46 + 1;
    v47 = (v10 + 24 * v46);
    v47[4] = a3;
    v47[5] = a4;
    v47[6] = v14;
  }

  return v10;
}

double sub_22C47C7D4@<D0>(uint64_t a1@<X8>)
{
  sub_22C3A5D48();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_22C47C818(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_22C90A2BC();
  v11 = v10;
  v12 = *(*a1 + 16);
  if (v12)
  {
    v13 = *a1 + 24 * v12;
    v37 = a4;
    v14 = *(v13 + 16);
    v36 = *(v13 + 8);
    v15 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v16 = v9;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22C90F870;
    v18 = swift_allocObject();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_22C90F870;
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    *(v20 + 24) = v11;
    *(v19 + 32) = v20;
    v21 = swift_allocObject();
    *(v21 + 16) = v36;
    *(v21 + 24) = v14;
    *(v19 + 40) = v21 | 0x4000000000000000;
    *(v18 + 16) = v19;
    v22 = v18 | 0xC000000000000000;
    a4 = v37;
    *(v17 + 32) = v22;
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0xE000000000000000;
    *(v17 + 40) = v23;
    *(v15 + 16) = v17;
    v24 = v15 | 0x8000000000000000;
  }

  else if (*(a3 + 16) <= 1uLL)
  {
    v24 = swift_allocObject();
    *(v24 + 16) = v9;
    *(v24 + 24) = v11;
  }

  else
  {
    v38 = a4;
    v25 = swift_allocObject();
    sub_22C3A5908(&qword_27D9BAE20, &qword_22C91A6B0);
    v26 = v11;
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_22C90F870;
    v28 = swift_allocObject();
    *(v28 + 16) = v9;
    *(v28 + 24) = v26;
    *(v27 + 32) = v28;
    v29 = swift_allocObject();
    *(v29 + 16) = 0;
    *(v29 + 24) = 0xE000000000000000;
    *(v27 + 40) = v29;
    *(v25 + 16) = v27;
    v24 = v25 | 0x8000000000000000;
    a4 = v38;
  }

  MEMORY[0x2318B7850](95, 0xE100000000000000);
  v30 = sub_22C90B47C();
  MEMORY[0x2318B7850](v30);

  v31 = a4;

  sub_22C3D0F20();
  v32 = *(*a1 + 16);
  sub_22C3D10B4(v32);

  v34 = *a1;
  *(v34 + 16) = v32 + 1;
  v35 = (v34 + 24 * v32);
  v35[4] = v31;
  v35[5] = a5;
  v35[6] = v24;
  *a1 = v34;
  return result;
}

uint64_t sub_22C47CB14(uint64_t a1)
{
  v2 = sub_22C47CDE0();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22C47CB50(uint64_t a1)
{
  v2 = sub_22C47CDE0();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_22C47CBE8()
{
  result = qword_27D9BC8E8;
  if (!qword_27D9BC8E8)
  {
    sub_22C3AC1A0(&qword_27D9BAE30, &qword_22C914EB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8E8);
  }

  return result;
}

unint64_t sub_22C47CC4C()
{
  result = qword_27D9BC8F0;
  if (!qword_27D9BC8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QuotableStringGrammarConverter.GeneratorError(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C47CD8C()
{
  result = qword_27D9BC8F8;
  if (!qword_27D9BC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC8F8);
  }

  return result;
}

unint64_t sub_22C47CDE0()
{
  result = qword_27D9BC900;
  if (!qword_27D9BC900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC900);
  }

  return result;
}

uint64_t sub_22C47CE34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C90128C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22C47CE78(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB6A8, &qword_22C90FAB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47CEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47CF44(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C47CFA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C47D004()
{
  sub_22C906FCC();
  sub_22C369CE4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = sub_22C36A8DC(v5, v10);
  v7(v6);
  v8 = (*(v3 + 88))(v1, v0);
  if (v8 == *MEMORY[0x277D1DF10])
  {
    return 43;
  }

  if (v8 == *MEMORY[0x277D1DF18])
  {
    return 45;
  }

  if (v8 == *MEMORY[0x277D1DF08])
  {
    return 33;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C47D10C()
{
  sub_22C906D9C();
  sub_22C369CE4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = sub_22C36A8DC(v5, v10);
  v7(v6);
  v8 = (*(v3 + 88))(v1, v0);
  if (v8 == *MEMORY[0x277D1DE50])
  {
    return 61;
  }

  if (v8 == *MEMORY[0x277D1DE38])
  {
    return 43;
  }

  if (v8 == *MEMORY[0x277D1DE88])
  {
    return 15659;
  }

  if (v8 == *MEMORY[0x277D1DE80])
  {
    return 45;
  }

  if (v8 == *MEMORY[0x277D1DE18])
  {
    return 15661;
  }

  if (v8 == *MEMORY[0x277D1DE58])
  {
    return 47;
  }

  if (v8 == *MEMORY[0x277D1DE00])
  {
    return 15663;
  }

  if (v8 == *MEMORY[0x277D1DE70])
  {
    return 42;
  }

  if (v8 == *MEMORY[0x277D1DE10])
  {
    return 15658;
  }

  if (v8 == *MEMORY[0x277D1DE60])
  {
    return 94;
  }

  if (v8 == *MEMORY[0x277D1DE48])
  {
    return 15677;
  }

  if (v8 == *MEMORY[0x277D1DE78])
  {
    return 15649;
  }

  if (v8 == *MEMORY[0x277D1DE28])
  {
    return 28265;
  }

  if (v8 == *MEMORY[0x277D1DE20])
  {
    return 15678;
  }

  if (v8 == *MEMORY[0x277D1DDF8])
  {
    return 62;
  }

  if (v8 == *MEMORY[0x277D1DE08])
  {
    return 15676;
  }

  if (v8 == *MEMORY[0x277D1DE68])
  {
    return 60;
  }

  if (v8 == *MEMORY[0x277D1DE40])
  {
    return 6581857;
  }

  if (v8 == *MEMORY[0x277D1DE30])
  {
    return 29295;
  }

  result = sub_22C90B4EC();
  __break(1u);
  return result;
}

uint64_t sub_22C47D420(uint64_t a1)
{
  v2 = *(a1 + 16);
  v14 = MEMORY[0x277D84F90];
  sub_22C3B6AB4();
  if (v2)
  {
    for (i = (a1 + 72); ; i += 48)
    {
      v4 = *(i - 5);
      if (*i)
      {
        break;
      }

      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      sub_22C456C30(*(i - 5), v5, v6, v7, v8, 0);
      v9 = *(v14 + 16);
      v10 = v9 + 1;
      if (v9 >= *(v14 + 24) >> 1)
      {
        sub_22C3B6AB4();
        v10 = v9 + 1;
      }

      *(v14 + 16) = v10;
      v11 = (v14 + 40 * v9);
      v11[4] = v4;
      v11[5] = v5;
      v11[6] = v6;
      v11[7] = v7;
      v11[8] = v8;
      if (!--v2)
      {
        return v14;
      }
    }

    sub_22C3E01D8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v12 = v4;
  }

  return v14;
}

unint64_t sub_22C47D588(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v6 + 32) = v7;
  sub_22C480170(a1, a2);

  return v6 | 0x8000000000000000;
}

uint64_t sub_22C47D60C(uint64_t a1, uint64_t a2)
{
  sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22C90F870;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v5 = sub_22C3DB9B0(inited);
  swift_setDeallocating();
  sub_22C58FFB0();
  sub_22C369AEC();
  v6 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 16) = v7;
  return v6 | 0x6000000000000000;
}

uint64_t sub_22C47D6D8(uint64_t a1)
{
  v1 = sub_22C3DB9B0(a1);
  sub_22C369AEC();
  v2 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v2 + 16) = v3;
  return v2 | 0x6000000000000000;
}

uint64_t sub_22C47D738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_22C3DB9B0(a3);
  sub_22C36D2A8();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  sub_22C369AEC();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v6 + 32) = v7;
  sub_22C369AEC();
  v8 = swift_allocObject();
  sub_22C369AEC();
  v9 = swift_allocObject();
  *(v9 + 16) = v6 | 0x8000000000000000;
  *(v8 + 16) = v9;

  return v8 | 0x6000000000000000;
}

void sub_22C47D7E8()
{
  sub_22C36BA7C();
  v1 = v0;
  v134 = v2;
  v140 = v3;
  v141 = sub_22C90931C();
  sub_22C369824();
  v119 = v4;
  MEMORY[0x28223BE20](v5);
  sub_22C3698A8();
  v136 = v6;
  v7 = sub_22C3A5908(&qword_27D9BB638, &unk_22C9150C0);
  sub_22C369914(v7);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v8);
  v137 = &v109 - v9;
  sub_22C36BA0C();
  v135 = sub_22C90430C();
  sub_22C369824();
  v128 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22C3698A8();
  v130 = v12;
  sub_22C36BA0C();
  v122 = sub_22C9063DC();
  sub_22C369824();
  v121 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C3698A8();
  v120 = v15;
  sub_22C36BA0C();
  sub_22C90906C();
  sub_22C369824();
  v124 = v17;
  v125 = v16;
  MEMORY[0x28223BE20](v16);
  sub_22C3698A8();
  v123 = v18;
  v19 = sub_22C3A5908(&qword_27D9BB908, &qword_22C910960);
  sub_22C369914(v19);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v133 = &v109 - v21;
  sub_22C36BA0C();
  v22 = sub_22C9093BC();
  sub_22C369824();
  v126 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22C369ABC();
  v138 = v25 - v26;
  sub_22C369930();
  MEMORY[0x28223BE20](v27);
  sub_22C36BA58();
  v142 = v28;
  sub_22C369930();
  MEMORY[0x28223BE20](v29);
  sub_22C36BA58();
  v129 = v30;
  sub_22C369930();
  MEMORY[0x28223BE20](v31);
  v127 = &v109 - v32;
  sub_22C36BA0C();
  v33 = sub_22C90952C();
  sub_22C369824();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  sub_22C369ABC();
  v39 = (v37 - v38);
  MEMORY[0x28223BE20](v40);
  v42 = &v109 - v41;
  v43 = sub_22C90963C();
  sub_22C369824();
  v45 = v44;
  MEMORY[0x28223BE20](v46);
  sub_22C369838();
  v49 = v48 - v47;
  v50 = *(v45 + 16);
  v139 = v1;
  v50(v49, v1, v43);
  v51 = sub_22C36BA00();
  v53 = v52(v51);
  LODWORD(v1) = *MEMORY[0x277D72E08];
  v54 = sub_22C36BA00();
  v55(v54);
  if (v53 != v1)
  {
    goto LABEL_25;
  }

  sub_22C90959C();
  TypeIdentifier.withBackwardsCompatibleAttributedTypes.getter(v39);
  v56 = *(v35 + 8);
  v56(v42, v33);
  if (qword_27D9BA670 != -1)
  {
    swift_once();
  }

  sub_22C37AA60(v33, qword_27D9E3EF8);
  v57 = sub_22C90950C();
  v56(v39, v33);
  if ((v57 & 1) == 0)
  {
    goto LABEL_25;
  }

  v58 = sub_22C90914C();
  v59 = v133;
  sub_22C6053C8(v58, v133);

  if (sub_22C370B74(v59, 1, v22) == 1)
  {
    sub_22C3770B0(v59, &qword_27D9BB908, &qword_22C910960);
LABEL_25:
    sub_22C47E38C();
    sub_22C386130();
    goto LABEL_26;
  }

  v61 = v126;
  v60 = v127;
  (*(v126 + 32))(v127, v59, v22);
  v62 = *(v61 + 16);
  v63 = v129;
  v133 = v61 + 16;
  v134 = v62;
  v62(v129, v60, v22);
  v131 = *(v61 + 88);
  v132 = v61 + 88;
  if (v131(v63, v22) != *MEMORY[0x277D729E0])
  {
    v99 = *(v61 + 8);
    v99(v60, v22);
    v99(v63, v22);
    goto LABEL_25;
  }

  v64 = *(v61 + 96);
  v118 = v61 + 96;
  v117 = v64;
  v64(v63, v22);
  v65 = swift_projectBox();
  v66 = v124;
  v67 = v125;
  (*(v124 + 16))(v123, v65, v125);

  v110 = sub_22C90905C();
  v68 = *(v110 + 16);
  if (v68)
  {
    v69 = v61;
    v70 = v110 + ((*(v61 + 80) + 32) & ~*(v61 + 80));
    v140 = *(v69 + 72);
    LODWORD(v129) = *MEMORY[0x277D72A58];
    v139 = (v69 + 8);
    v116 = (v119 + 16);
    v115 = v119 + 88;
    v114 = *MEMORY[0x277D729B8];
    v113 = v119 + 8;
    v112 = v119 + 96;
    v111 = (v128 + 32);
    v119 = MEMORY[0x277D84F90];
    v71 = v135;
    v72 = v141;
    v73 = v142;
    v74 = v137;
    v75 = v138;
    while (1)
    {
      v76 = v134;
      v134(v73, v70, v22);
      v76(v75, v73, v22);
      v77 = v131(v75, v22);
      if (v77 != v129)
      {
        break;
      }

      v117(v75, v22);
      v78 = swift_projectBox();
      (*v116)(v136, v78, v72);
      v79 = sub_22C377C18();
      v81 = v80(v79);
      if (v81 != v114)
      {
        v93 = sub_22C370640();
        v94(v93);
        v95 = sub_22C377C18();
        v96(v95);

        v74 = v137;
        v75 = v138;
        goto LABEL_20;
      }

      v82 = sub_22C377C18();
      v83(v82);

      v74 = v137;
      sub_22C36BA00();
      v71 = v135;
      sub_22C90431C();
      v84 = sub_22C370640();
      v85(v84);
      v86 = sub_22C370B74(v74, 1, v71);
      v75 = v138;
      if (v86 != 1)
      {
        v87 = *v111;
        (*v111)(v130, v74, v71);
        v88 = v119;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22C5921DC();
          v88 = v97;
        }

        v119 = v88;
        v89 = *(v88 + 16);
        if (v89 >= *(v88 + 24) >> 1)
        {
          sub_22C5921DC();
          v119 = v98;
        }

        v90 = v119;
        *(v119 + 16) = v89 + 1;
        v91 = v90 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v89;
        v71 = v135;
        v87(v91, v130, v135);
        v75 = v138;
        goto LABEL_22;
      }

LABEL_21:
      sub_22C3770B0(v74, &qword_27D9BB638, &unk_22C9150C0);
LABEL_22:
      v72 = v141;
      v70 += v140;
      --v68;
      v73 = v142;
      if (!v68)
      {

        v67 = v125;
        v61 = v126;
        v66 = v124;
        v100 = v119;
        goto LABEL_28;
      }
    }

    v92 = *v139;
    (*v139)(v73, v22);
    v92(v75, v22);
LABEL_20:
    sub_22C36C640(v74, 1, 1, v71);
    goto LABEL_21;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_28:
  v101 = v120;
  sub_22C903F7C();

  v102 = sub_22C9063CC();
  v103 = sub_22C90AACC();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v143 = v105;
    *v104 = 136315138;
    v106 = MEMORY[0x2318B7AD0](v100, v135);
    v108 = sub_22C36F9F4(v106, v107, &v143);

    *(v104 + 4) = v108;
    _os_log_impl(&dword_22C366000, v102, v103, "UTTypes extracted from dynamic properties on SearchGlobalEntity: %s", v104, 0xCu);
    sub_22C36FF94(v105);
    v66 = v124;
    sub_22C3699EC();
    v67 = v125;
    sub_22C3699EC();
  }

  (*(v121 + 8))(v101, v122);
  sub_22C7F4FB4();
  sub_22C386130();
  (*(v66 + 8))(v123, v67);
  (*(v61 + 8))(v127, v22);
LABEL_26:
  sub_22C36BA00();
  sub_22C36CC48();
}

void sub_22C47E38C()
{
  sub_22C36BA7C();
  v1 = v0;
  v2 = sub_22C90430C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369ABC();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = sub_22C9095BC();
  v43[2] = v1;
  v13 = sub_22C47B5D0(sub_22C480250, v43, v12);
  v42[2] = v1;
  sub_22C3B2B00(sub_22C480270, v42, v13);
  v15 = v14;

  sub_22C7F4FB4();
  v16 = 0;
  v44 = v17;
  v45 = v18;
  v33 = *(v15 + 16);
  v34 = v15;
  v32 = v15 + 32;
  v41 = v4 + 16;
  v37 = v4;
  v19 = (v4 + 8);
LABEL_2:
  if (v16 == v33)
  {

    sub_22C36CC48();
  }

  else
  {
    if (v16 < *(v34 + 16))
    {
      v20 = (v32 + 16 * v16);
      v21 = *v20;
      v22 = v20[1];
      v38 = *(v22 + 16);
      v35 = v21;
      v36 = v16 + 1;

      v39 = v22;

      v23 = 0;
      while (1)
      {
        if (v23 == v38)
        {

          v16 = v36;
          goto LABEL_2;
        }

        v24 = *(v37 + 72);
        v25 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v23;
        v26 = *(v37 + 16);
        v26(v11, v39 + v25 + v24 * v23, v2);
        v27 = v45 + v25;
        if (v44)
        {

          sub_22C7DB73C();
          v29 = v28;

          if ((v29 & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v30 = *(v45 + 16) + 1;
          while (--v30)
          {
            v26(v8, v27, v2);
            sub_22C4802A4();
            v31 = sub_22C90A0BC();
            (*v19)(v8, v2);
            v27 += v24;
            if (v31)
            {
              goto LABEL_12;
            }
          }
        }

        sub_22C7D4BE0();
LABEL_12:
        v23 = v40 + 1;
        (*v19)(v11, v2);
      }
    }

    __break(1u);
  }
}

uint64_t sub_22C47E688(uint64_t a1, uint64_t a2)
{
  v2 = sub_22C90963C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C90964C();
  v6 = sub_22C90962C();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

void sub_22C47E774()
{
  sub_22C36BA7C();
  v0 = sub_22C90941C();
  sub_22C369824();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  sub_22C369838();
  v6 = v5 - v4;
  v7 = sub_22C90963C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v13 = v12 - v11;
  sub_22C90964C();
  v14 = sub_22C90962C();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    sub_22C90961C();
    sub_22C47E8FC();
    (*(v2 + 8))(v6, v0);
  }

  else
  {
    sub_22C7F4FB4();
  }

  sub_22C36CC48();
}

void sub_22C47E8FC()
{
  sub_22C36BA7C();
  v104 = v0;
  v108 = v1;
  v2 = sub_22C9063DC();
  sub_22C369824();
  v99 = v3;
  MEMORY[0x28223BE20](v4);
  sub_22C3698A8();
  v98 = v5;
  sub_22C36BA0C();
  v96 = sub_22C9094EC();
  sub_22C369824();
  v112 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22C3698A8();
  v111 = v8;
  sub_22C36BA0C();
  sub_22C90963C();
  sub_22C369824();
  v102 = v10;
  v103 = v9;
  MEMORY[0x28223BE20](v9);
  sub_22C3698A8();
  v101 = v11;
  sub_22C36BA0C();
  v12 = sub_22C90969C();
  sub_22C369824();
  v113 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22C369ABC();
  v110 = (v15 - v16);
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v109 = &v90 - v18;
  v19 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v20);
  v22 = &v90 - v21;
  v23 = sub_22C90941C();
  sub_22C369824();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  sub_22C369838();
  v29 = v28 - v27;
  v30 = sub_22C90952C();
  sub_22C369824();
  v32 = v31;
  MEMORY[0x28223BE20](v33);
  sub_22C369ABC();
  v95 = v34 - v35;
  sub_22C369930();
  MEMORY[0x28223BE20](v36);
  sub_22C36BA58();
  v97 = v37;
  sub_22C369930();
  MEMORY[0x28223BE20](v38);
  sub_22C36BA58();
  v100 = v39;
  sub_22C369930();
  MEMORY[0x28223BE20](v40);
  v42 = &v90 - v41;
  (*(v25 + 16))(v29, v108, v23);
  if ((*(v25 + 88))(v29, v23) != *MEMORY[0x277D72AB8])
  {
    (*(v25 + 8))(v29, v23);
    sub_22C7F4FB4();
    sub_22C386130();
LABEL_33:
    sub_22C36BA00();
    sub_22C36CC48();
    return;
  }

  (*(v25 + 96))(v29, v23);
  v43 = swift_projectBox();
  sub_22C4802FC(v43, v22);
  v44 = *&v22[*(v19 + 48)];
  v93 = v32;
  v45 = *(v32 + 32);
  v94 = v42;
  v45(v42, v22, v30);

  v46 = *(v44 + 16);
  v47 = v30;
  v92 = v2;
  if (v46)
  {
    v91 = v30;
    v108 = v113[2];
    v48 = (*(v113 + 80) + 32) & ~*(v113 + 80);
    v90 = v44;
    v49 = (v44 + v48);
    v106 = v113[9];
    v50 = (v113 + 11);
    v107 = *MEMORY[0x277D72E68];
    v51 = (v113 + 1);
    v113 += 2;
    v105 = (v113 + 10);
    v52 = MEMORY[0x277D84F90];
    while (1)
    {
      v53 = v108;
      v54 = v109;
      v108(v109, v49, v12);
      v55 = v110;
      v53(v110, v54, v12);
      v56 = (*v50)(v55, v12);
      v57 = *v51;
      if (v56 == v107)
      {
        v57(v54, v12);
        (*v105)(v55, v12);
        v58 = *v55;
      }

      else
      {
        v57(v55, v12);
        v57(v54, v12);
        v58 = MEMORY[0x277D84F90];
      }

      v59 = *(v58 + 16);
      v60 = *(v52 + 16);
      if (__OFADD__(v60, v59))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v60 + v59 > *(v52 + 24) >> 1)
      {
        sub_22C5921DC();
        v52 = v61;
      }

      if (*(v58 + 16))
      {
        v62 = (*(v52 + 24) >> 1) - *(v52 + 16);
        sub_22C90430C();
        if (v62 < v59)
        {
          goto LABEL_36;
        }

        swift_arrayInitWithCopy();

        if (v59)
        {
          v63 = *(v52 + 16);
          v64 = __OFADD__(v63, v59);
          v65 = v63 + v59;
          if (v64)
          {
            goto LABEL_37;
          }

          *(v52 + 16) = v65;
        }
      }

      else
      {

        if (v59)
        {
          goto LABEL_35;
        }
      }

      v49 += v106;
      --v46;
      v67 = v111;
      v66 = v112;
      if (!v46)
      {

        v47 = v91;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v67 = v111;
  v66 = v112;
LABEL_21:
  v69 = v101;
  v68 = v102;
  v70 = v103;
  (*(v102 + 16))(v101, v104, v103);
  v71 = (*(v68 + 88))(v69, v70);
  v72 = v94;
  v73 = v93;
  if (v71 == *MEMORY[0x277D72E10])
  {
    v74 = *(v93 + 16);
    v75 = v100;
    v74(v100, v94, v47);
    if ((*(v73 + 88))(v75, v47) == *MEMORY[0x277D72D50])
    {
      (*(v73 + 96))(v75, v47);
      v76 = swift_projectBox();
      v77 = v96;
      (*(v66 + 16))(v67, v76, v96);
      if ((*(v66 + 88))(v67, v77) == *MEMORY[0x277D72CC0])
      {
        (*(v66 + 8))(v67, v77);

LABEL_26:
        sub_22C7F4FB4();
        sub_22C386130();
        (*(v73 + 8))(v72, v47);
        goto LABEL_33;
      }

      (*(v66 + 8))(v67, v77);
    }

    else
    {

      (*(v73 + 8))(v75, v47);
    }

    v78 = v98;
    sub_22C903F7C();
    v79 = v97;
    v74(v97, v72, v47);
    v80 = sub_22C9063CC();
    v81 = sub_22C90AACC();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114 = v113;
      *v82 = 136315138;
      v74(v95, v79, v47);
      v83 = sub_22C90A1AC();
      v84 = v73;
      v85 = v78;
      v87 = v86;
      v88 = *(v84 + 8);
      v88(v79, v47);
      v89 = sub_22C36F9F4(v83, v87, &v114);

      *(v82 + 4) = v89;
      _os_log_impl(&dword_22C366000, v80, v81, "Skipping UTType extraction for non-file import: %s", v82, 0xCu);
      sub_22C36FF94(v113);
      sub_22C3699EC();
      sub_22C3699EC();

      v72 = v94;
      (*(v99 + 8))(v85, v92);
    }

    else
    {

      v88 = *(v73 + 8);
      v88(v79, v47);
      (*(v99 + 8))(v78, v92);
    }

    sub_22C7F4FB4();
    sub_22C386130();
    v88(v72, v47);
    goto LABEL_33;
  }

  if (v71 == *MEMORY[0x277D72E08])
  {
    goto LABEL_26;
  }

LABEL_38:
  sub_22C90B4EC();
  __break(1u);
}

uint64_t sub_22C47F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = sub_22C47D420(a1);
  sub_22C47F4C8(v4, a2);

  *(a2 + 40) = 0;
  return result;
}

void sub_22C47F4C8(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v4, 0);
    v6 = v27;
    v7 = (v3 + 32);
    v8 = *(v27 + 16);
    do
    {
      v10 = *v7;
      v7 += 5;
      v9 = v10;
      v11 = v8 + 1;
      v12 = *(v27 + 24);

      if (v8 >= v12 >> 1)
      {
        sub_22C3B63D4(v12 > 1, v8 + 1, 1);
      }

      *(v27 + 16) = v11;
      *(v27 + 8 * v8++ + 32) = v9;
      --v4;
    }

    while (v4);
  }

  else
  {
    v11 = *(MEMORY[0x277D84F90] + 16);
    if (!v11)
    {
      v14 = MEMORY[0x277D84F90];
LABEL_15:

      v20 = sub_22C47D738(2604, 0xE200000000000000, v14);

      sub_22C3A5908(&qword_27D9BAF00, &unk_22C912C80);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22C90FB40;
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22C90A49C();
      *(v22 + 24) = v23;
      *(inited + 32) = v22;
      *(inited + 40) = v20;
      v24 = swift_allocObject();

      *(v24 + 16) = sub_22C90A49C();
      *(v24 + 24) = v25;
      *(inited + 48) = v24;
      v26 = sub_22C47D738(10, 0xE100000000000000, inited);

      swift_setDeallocating();
      sub_22C58FFB0();
      *a2 = v26;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      return;
    }

    v6 = MEMORY[0x277D84F90];
  }

  v28 = v5;
  sub_22C3B63D4(0, v11, 0);
  v13 = 0;
  v14 = v28;
  v15 = *(v6 + 16);
  while (v15 != v13)
  {
    if (v13 >= *(v6 + 16))
    {
      goto LABEL_18;
    }

    v16 = *(v6 + 8 * v13 + 32);

    v17 = sub_22C47F7A0(v13, v16);

    v19 = *(v28 + 16);
    v18 = *(v28 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_22C3B63D4(v18 > 1, v19 + 1, 1);
    }

    *(v28 + 16) = v19 + 1;
    *(v28 + 8 * v19 + 32) = v17;
    if (v11 == ++v13)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

unint64_t sub_22C47F7A0(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xE000000000000000;
  sub_22C591324();
  v5 = v4;
  v6 = *(v4 + 16);
  if (v6 >= *(v4 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v22;
  }

  *(v5 + 16) = v6 + 1;
  *(v5 + 8 * v6 + 32) = v3;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22C90B47C();
  *(v7 + 24) = v8;
  v9 = *(v5 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v23;
  }

  *(v5 + 16) = v10;
  *(v5 + 8 * v9 + 32) = v7;
  v11 = swift_allocObject();
  *(v11 + 16) = 8250;
  *(v11 + 24) = 0xE200000000000000;
  v12 = v9 + 2;
  if ((v9 + 2) > *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v24;
  }

  *(v5 + 16) = v12;
  *(v5 + 8 * v10 + 32) = v11;
  v13 = v9 + 3;
  if ((v9 + 3) > *(v5 + 24) >> 1)
  {
    sub_22C591324();
    v5 = v25;
  }

  *(v5 + 16) = v13;
  *(v5 + 8 * v12 + 32) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0xE000000000000000;
  v15 = *(v5 + 24);

  if ((v9 + 4) > (v15 >> 1))
  {
    sub_22C591324();
    v5 = v26;
  }

  *(v5 + 16) = v9 + 4;
  *(v5 + 8 * v13 + 32) = v14;
  v16 = sub_22C3DB9B0(v5);

  v17 = swift_allocObject();
  sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v17 + 16) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = 1;
  *(v19 + 24) = 1;
  sub_22C3A5908(&qword_27D9BB768, &unk_22C912C90);
  v20 = swift_allocObject();
  *(v20 + 16) = v17 | 0x6000000000000000;
  *(v19 + 32) = v20;
  return v19 | 0xA000000000000000;
}

void sub_22C47FA7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4[0] = sub_22C47D420(a1);
  sub_22C47FB68(v4, &v3);

  *a2 = v3;
  sub_22C37274C();
  *(a2 + 40) = 0;
}

uint64_t sub_22C47FB68@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_22C3B63D4(0, v4, 0);
    v5 = v17;
    v6 = (v3 + 32);
    v7 = *(v17 + 16);
    do
    {
      v9 = *v6;
      v6 += 5;
      v8 = v9;
      v10 = *(v17 + 24);

      if (v7 >= v10 >> 1)
      {
        sub_22C3B63D4(v10 > 1, v7 + 1, 1);
      }

      *(v17 + 16) = v7 + 1;
      *(v17 + 8 * v7++ + 32) = v8;
      --v4;
    }

    while (v4);
  }

  v11 = sub_22C47D738(8236, 0xE200000000000000, v5);

  v12 = swift_allocObject();
  *(v12 + 16) = 91;
  *(v12 + 24) = 0xE100000000000000;
  v13 = sub_22C47D60C(v12, v11);

  v14 = swift_allocObject();
  *(v14 + 16) = 93;
  *(v14 + 24) = 0xE100000000000000;
  v15 = sub_22C47D60C(v13, v14);

  *a2 = v15;
  return result;
}

void sub_22C47FCDC()
{
  sub_22C36BA7C();
  v39 = v0;
  v40 = v1;
  sub_22C9063DC();
  sub_22C369824();
  v35 = v3;
  v36 = v2;
  MEMORY[0x28223BE20](v2);
  sub_22C3698A8();
  v34 = v4;
  v5 = sub_22C3A5908(&qword_27D9BC908, &qword_22C915090);
  sub_22C369914(v5);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v6);
  v37 = &v33 - v7;
  sub_22C36BA0C();
  v8 = sub_22C9096EC();
  v9 = *(v8 - 8);
  v10 = v9;
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  v13 = v12 - v11;
  v14 = sub_22C90977C();
  sub_22C369824();
  v38 = v15;
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  sub_22C3A5908(&qword_27D9BC910, &qword_22C915098);
  v20 = *(v9 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22C90F870;
  v23 = v22 + v21;
  v24 = *(v10 + 104);
  v24(v23, *MEMORY[0x277D730B0], v8);
  v24(v23 + v20, *MEMORY[0x277D730B8], v8);
  v25 = v38;
  sub_22C908DDC();
  sub_22C90970C();
  (*(v25 + 8))(v19, v14);
  v41[2] = v13;
  LOBYTE(v19) = sub_22C5EC5CC(sub_22C480184, v41, v22);
  swift_setDeallocating();
  sub_22C58FF98();
  (*(v10 + 8))(v13, v8);
  if ((v19 & 1) == 0)
  {
    v26 = v40;
    v27 = v37;
    sub_22C908E3C();
    if (sub_22C370B74(v27, 1, v14) != 1)
    {
      (*(v25 + 32))(v26, v27, v14);
      goto LABEL_8;
    }

    sub_22C3770B0(v27, &qword_27D9BC908, &qword_22C915090);
    v28 = v34;
    sub_22C903F7C();
    v29 = sub_22C9063CC();
    v30 = sub_22C90AACC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v42 = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_22C36F9F4(0xD000000000000011, 0x800000022C930B40, &v42);
      _os_log_impl(&dword_22C366000, v29, v30, "%s Falling back on using sourceContainer for the tool rendering", v31, 0xCu);
      sub_22C36FF94(v32);
      sub_22C3699EC();
      sub_22C3699EC();
    }

    (*(v35 + 8))(v28, v36);
  }

  sub_22C908DDC();
LABEL_8:
  sub_22C36CC48();
}

uint64_t sub_22C48010C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;
  v3 = type metadata accessor for SegmentedPrompt.Segment(0);
  sub_22C369914(v3);
  return a1;
}

uint64_t sub_22C480170(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

uint64_t type metadata accessor for DirectionalTypedValue(uint64_t a1)
{
  result = qword_27D9BC918;
  if (!qword_27D9BC918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4801F0(uint64_t a1)
{
  result = sub_22C9093BC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22C480270(void *a1@<X8>)
{
  sub_22C47E774();
  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_22C4802A4()
{
  result = qword_27D9BC808;
  if (!qword_27D9BC808)
  {
    sub_22C90430C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC808);
  }

  return result;
}

uint64_t sub_22C4802FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BC928, &qword_22C927720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22C480370(_BYTE *result, unsigned int a2, unsigned int a3)
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

BOOL sub_22C480448(unint64_t *a1, unint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a2[1];
  v7 = a2[2];
  v6 = a2[3];
  if ((sub_22C48819C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    v26 = sub_22C480748();
    sub_22C456C94(v26, v27, v28);
    if (!v7)
    {
      sub_22C377C2C();
      v48 = sub_22C480748();
      sub_22C456D48(v48, v49, v50);
      return 1;
    }

    v29 = sub_22C37331C();
    sub_22C456C94(v29, v30, v31);
    goto LABEL_10;
  }

  if (!v7)
  {
    v32 = sub_22C36A908();
    sub_22C456C94(v32, v33, v34);
    sub_22C377C2C();
    v35 = sub_22C36A908();
    sub_22C456C94(v35, v36, v37);

LABEL_10:
    v38 = sub_22C36A908();
    sub_22C456D48(v38, v39, v40);
    v41 = sub_22C37331C();
LABEL_12:
    sub_22C456D48(v41, v42, v43);
    return 0;
  }

  v52[0] = v2;
  v52[1] = v4;
  v52[2] = v3;
  v51[0] = v5;
  v51[1] = v7;
  v51[2] = v6;
  v8 = sub_22C36A908();
  sub_22C456C94(v8, v9, v10);
  v11 = sub_22C37331C();
  sub_22C456C94(v11, v12, v13);
  v14 = sub_22C36A908();
  sub_22C456C94(v14, v15, v16);

  v17 = static BNFGrammarRule.== infix(_:_:)(v52, v51);

  if ((v17 & 1) == 0)
  {
    v44 = sub_22C37331C();
    sub_22C456D48(v44, v45, v46);

    v41 = sub_22C36A908();
    goto LABEL_12;
  }

  sub_22C46D2C8();
  v19 = v18;
  v20 = sub_22C37331C();
  sub_22C456D48(v20, v21, v22);

  v23 = sub_22C36A908();
  sub_22C456D48(v23, v24, v25);
  return (v19 & 1) != 0;
}

unint64_t sub_22C480614()
{
  result = qword_27D9BC930;
  if (!qword_27D9BC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC930);
  }

  return result;
}

uint64_t sub_22C480674(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_22C48068C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22C4806E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *static RenderingState.clean.getter()
{
  v0 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_22C906D3C();
  sub_22C36C640(v2, 1, 1, v3);
  swift_allocObject();
  return sub_22C480800(v2);
}

void *sub_22C480800(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_22C909F0C();
  v5 = MEMORY[0x277D84FA0];
  v1[2] = v4;
  v1[3] = v5;
  type metadata accessor for LSDeveloperType(0);
  v1[4] = sub_22C909F0C();
  v1[5] = v3;
  sub_22C480B10(a1, v1 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime14RenderingState_datetimeContext);
  return v1;
}

uint64_t RenderingState.deinit()
{

  sub_22C4808E8(v0 + OBJC_IVAR____TtC30IntelligenceFlowPlannerRuntime14RenderingState_datetimeContext);
  return v0;
}

uint64_t sub_22C4808E8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t RenderingState.__deallocating_deinit()
{
  RenderingState.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RenderingState(uint64_t a1)
{
  result = qword_27D9BC938;
  if (!qword_27D9BC938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4809FC(uint64_t a1)
{
  sub_22C480AB8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22C480AB8(uint64_t a1)
{
  if (!qword_27D9BC948)
  {
    sub_22C906D3C();
    v1 = sub_22C90AC6C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BC948);
    }
  }
}

uint64_t sub_22C480B10(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB760, &unk_22C90FE70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static FullPlannerRenderableToolName.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((a2[4] & 1) == 0)
    {
      if (v3 != v8 || v2 != v7)
      {
        v14 = sub_22C90B4FC();
        v52 = sub_22C373330();
        sub_22C480D88(v52, v53, v54, v55, 0);
        v56 = sub_22C36A91C();
        sub_22C480D88(v56, v57, v58, v59, 0);
        v60 = sub_22C36A91C();
        sub_22C43627C(v60, v61, v62, v63, 0);
        v27 = sub_22C373330();
        v31 = 0;
        goto LABEL_22;
      }

      sub_22C4823A8();
      sub_22C480D88(v64, v65, v66, v67, v68);
      v69 = sub_22C36A91C();
      sub_22C480D88(v69, v70, v71, v72, 0);
      v73 = sub_22C36A91C();
      sub_22C43627C(v73, v74, v75, v76, 0);
      sub_22C4823A8();
      sub_22C43627C(v77, v78, v79, v80, v81);
      return 1;
    }

    goto LABEL_14;
  }

  if ((a2[4] & 1) == 0)
  {
LABEL_14:
    v32 = sub_22C373330();
    sub_22C480D88(v32, v33, v34, v35, v11);
    v36 = sub_22C36A91C();
    sub_22C480D88(v36, v37, v38, v39, v6);
    v40 = sub_22C36A91C();
    sub_22C43627C(v40, v41, v42, v43, v6);
    v44 = sub_22C373330();
    v48 = v11;
LABEL_15:
    sub_22C43627C(v44, v45, v46, v47, v48);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (sub_22C90B4FC() & 1) == 0)
  {
    v100 = sub_22C373330();
    sub_22C480D88(v100, v101, v102, v103, 1);
    v104 = sub_22C36A91C();
    sub_22C480D88(v104, v105, v106, v107, 1);
    v108 = sub_22C36A91C();
    sub_22C43627C(v108, v109, v110, v111, 1);
    v44 = sub_22C373330();
    v48 = 1;
    goto LABEL_15;
  }

  if (v5 == v10 && v4 == v9)
  {
    v49 = 1;
    v82 = sub_22C38B8B4();
    sub_22C480D88(v82, v83, v84, v85, v86);
    v87 = sub_22C36A91C();
    sub_22C480D88(v87, v88, v89, v90, 1);
    v91 = sub_22C36A91C();
    sub_22C43627C(v91, v92, v93, v94, 1);
    v95 = sub_22C38B8B4();
    sub_22C43627C(v95, v96, v97, v98, v99);
    return v49;
  }

  sub_22C4823A8();
  v14 = sub_22C90B4FC();
  v15 = sub_22C373330();
  sub_22C480D88(v15, v16, v17, v18, 1);
  v19 = sub_22C36A91C();
  sub_22C480D88(v19, v20, v21, v22, 1);
  v23 = sub_22C36A91C();
  sub_22C43627C(v23, v24, v25, v26, 1);
  v27 = sub_22C373330();
  v31 = 1;
LABEL_22:
  sub_22C43627C(v27, v28, v29, v30, v31);
  return v14 & 1;
}

uint64_t sub_22C480D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_22C480DC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E6C6F6F74 && a2 == 0xE800000000000000;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72506D6574737973 && a2 == 0xEE006C6F636F746FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C480E98(char a1)
{
  if (a1)
  {
    return 0x72506D6574737973;
  }

  else
  {
    return 0x656D614E6C6F6F74;
  }
}

uint64_t sub_22C480EDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F636F746F7270 && a2 == 0xEC000000656D614ELL;
  if (v4 || (sub_22C90B4FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C90B4FC();

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

uint64_t sub_22C480FA8(char a1)
{
  if (a1)
  {
    return 0x656D614E707061;
  }

  else
  {
    return 0x6C6F636F746F7270;
  }
}

uint64_t sub_22C481008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C480DC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C481030(uint64_t a1)
{
  v2 = sub_22C4814E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C48106C(uint64_t a1)
{
  v2 = sub_22C4814E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C4810A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_22C90B62C();
  a4(v8, v6);
  return sub_22C90B66C();
}

uint64_t sub_22C4810FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22C480EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22C481124(uint64_t a1)
{
  v2 = sub_22C481534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C481160(uint64_t a1)
{
  v2 = sub_22C481534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22C48119C(uint64_t a1)
{
  v2 = sub_22C481588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22C4811D8(uint64_t a1)
{
  v2 = sub_22C481588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FullPlannerRenderableToolName.encode(to:)(void *a1)
{
  sub_22C3A5908(&qword_27D9BC950, &qword_22C9153C0);
  sub_22C369824();
  v26 = v4;
  v27 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v25 = v23 - v6;
  v7 = sub_22C3A5908(&qword_27D9BC958, &qword_22C9153C8);
  sub_22C369824();
  v24 = v8;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v31 = sub_22C3A5908(&qword_27D9BC960, &qword_22C9153D0);
  sub_22C369824();
  v13 = v12;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  v16 = v23 - v15;
  v17 = *v1;
  v28 = v1[1];
  v29 = v17;
  v18 = v1[2];
  v23[0] = v1[3];
  v23[1] = v18;
  v19 = *(v1 + 32);
  sub_22C374168(a1, a1[3]);
  sub_22C4814E0();
  sub_22C90B6CC();
  if (v19)
  {
    v33 = 1;
    sub_22C481534();
    v11 = v25;
    sub_22C36BC64(&type metadata for FullPlannerRenderableToolName.SystemProtocolCodingKeys, &v33);
    v32[2] = 0;
    v7 = v27;
    v20 = v30;
    sub_22C90B3CC();
    if (!v20)
    {
      v32[1] = 1;
      sub_22C90B3CC();
    }

    v21 = v26;
  }

  else
  {
    v32[0] = 0;
    sub_22C481588();
    sub_22C36BC64(&type metadata for FullPlannerRenderableToolName.ToolNameCodingKeys, v32);
    sub_22C90B3CC();
    v21 = v24;
  }

  (*(v21 + 8))(v11, v7);
  return (*(v13 + 8))(v16, v19);
}

unint64_t sub_22C4814E0()
{
  result = qword_27D9BC968;
  if (!qword_27D9BC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC968);
  }

  return result;
}

unint64_t sub_22C481534()
{
  result = qword_27D9BC970;
  if (!qword_27D9BC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC970);
  }

  return result;
}

unint64_t sub_22C481588()
{
  result = qword_27D9BC978;
  if (!qword_27D9BC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC978);
  }

  return result;
}

uint64_t FullPlannerRenderableToolName.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x2318B8B10](1);
    sub_22C37275C();
    sub_22C909FFC();
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C37275C();
  }

  return sub_22C909FFC();
}

uint64_t FullPlannerRenderableToolName.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_22C90B62C();
  if (v1)
  {
    MEMORY[0x2318B8B10](1);
    sub_22C37275C();
    sub_22C909FFC();
  }

  else
  {
    MEMORY[0x2318B8B10](0);
    sub_22C37275C();
  }

  sub_22C909FFC();
  return sub_22C90B66C();
}

uint64_t FullPlannerRenderableToolName.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  sub_22C3A5908(&qword_27D9BC980, &qword_22C9153D8);
  sub_22C369824();
  v60 = v4;
  v61 = v3;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v5);
  v7 = &v55 - v6;
  v8 = sub_22C3A5908(&qword_27D9BC988, &qword_22C9153E0);
  sub_22C369824();
  v59 = v9;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v10);
  v12 = &v55 - v11;
  v13 = sub_22C3A5908(&qword_27D9BC990, &unk_22C9153E8);
  sub_22C369824();
  v15 = v14;
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = a1[3];
  v63 = a1;
  sub_22C374168(a1, v19);
  sub_22C4814E0();
  v20 = v64;
  sub_22C90B6BC();
  if (v20)
  {
    return sub_22C36FF94(v63);
  }

  v57 = v8;
  v58 = v12;
  v21 = v7;
  v64 = v15;
  v22 = v62;
  v23 = v18;
  sub_22C90B34C();
  result = sub_22C3E1F24();
  if (v26 == v27 >> 1)
  {
    goto LABEL_7;
  }

  v56 = 0;
  if (v26 >= (v27 >> 1))
  {
    __break(1u);
    return result;
  }

  v28 = *(v25 + v26);
  v29 = sub_22C3E1F20();
  v31 = v30;
  v33 = v32;
  swift_unknownObjectRelease();
  if (v31 != v33 >> 1)
  {
LABEL_7:
    v35 = sub_22C90AFBC();
    swift_allocError();
    v37 = v36;
    sub_22C3A5908(&qword_27D9BB268, &unk_22C9104B0);
    *v37 = &type metadata for FullPlannerRenderableToolName;
    sub_22C90B25C();
    sub_22C90AFAC();
    (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v64 + 8))(v23, v13);
    return sub_22C36FF94(v63);
  }

  v65 = v28;
  if (v28)
  {
    v67 = 1;
    sub_22C481534();
    v34 = v21;
    sub_22C38862C(&type metadata for FullPlannerRenderableToolName.SystemProtocolCodingKeys, &v67);
    v39 = v22;
    v66[2] = 0;
    v56 = sub_22C90B2DC();
    v58 = v29;
    v59 = v43;
    v66[1] = 1;
    v44 = sub_22C90B2DC();
    v45 = (v60 + 8);
    v49 = v44;
    v51 = v50;
    swift_unknownObjectRelease();
    (*v45)(v34, v61);
    v52 = sub_22C377C4C();
    v53(v52);
  }

  else
  {
    v66[0] = 0;
    sub_22C481588();
    v38 = v58;
    sub_22C38862C(&type metadata for FullPlannerRenderableToolName.ToolNameCodingKeys, v66);
    v39 = v22;
    v40 = v57;
    v41 = sub_22C90B2DC();
    v42 = (v59 + 8);
    v56 = v41;
    v59 = v46;
    swift_unknownObjectRelease();
    (*v42)(v38, v40);
    v47 = sub_22C377C4C();
    v48(v47);
    v49 = 0;
    v51 = 0;
  }

  v54 = v59;
  *v39 = v56;
  *(v39 + 8) = v54;
  *(v39 + 16) = v49;
  *(v39 + 24) = v51;
  *(v39 + 32) = v65;
  return sub_22C36FF94(v63);
}

uint64_t sub_22C481D34(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_22C90B62C();
  FullPlannerRenderableToolName.hash(into:)(v5);
  return sub_22C90B66C();
}

uint64_t sub_22C481D88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a3 + 32);
  v8 = *(a3 + 40);
  v9 = *(a3 + 16);
  v11[0] = *a3;
  v11[1] = v9;
  v12 = v7;
  v13 = v8;
  return (*(a7 + 16))(a1, a2, 0, v11, a4, a5, a6);
}

unint64_t sub_22C481DEC()
{
  result = qword_27D9BC998;
  if (!qword_27D9BC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC998);
  }

  return result;
}

uint64_t sub_22C481E40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t sub_22C481E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FullPlannerRenderableToolName.ToolNameCodingKeys(_BYTE *result, int a2, int a3)
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

_BYTE *sub_22C481FA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C482080()
{
  result = qword_27D9BC9A0;
  if (!qword_27D9BC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9A0);
  }

  return result;
}

unint64_t sub_22C4820D8()
{
  result = qword_27D9BC9A8;
  if (!qword_27D9BC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9A8);
  }

  return result;
}

unint64_t sub_22C482130()
{
  result = qword_27D9BC9B0;
  if (!qword_27D9BC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9B0);
  }

  return result;
}

unint64_t sub_22C482188()
{
  result = qword_27D9BC9B8;
  if (!qword_27D9BC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9B8);
  }

  return result;
}

unint64_t sub_22C4821E0()
{
  result = qword_27D9BC9C0;
  if (!qword_27D9BC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9C0);
  }

  return result;
}

unint64_t sub_22C482238()
{
  result = qword_27D9BC9C8;
  if (!qword_27D9BC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9C8);
  }

  return result;
}

unint64_t sub_22C482290()
{
  result = qword_27D9BC9D0;
  if (!qword_27D9BC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9D0);
  }

  return result;
}

unint64_t sub_22C4822E8()
{
  result = qword_27D9BC9D8;
  if (!qword_27D9BC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9D8);
  }

  return result;
}

unint64_t sub_22C482340()
{
  result = qword_27D9BC9E0;
  if (!qword_27D9BC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BC9E0);
  }

  return result;
}

uint64_t sub_22C4823C0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_22C482400(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22C4824A0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_22C4824E0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t type metadata accessor for RenderableTool(uint64_t a1)
{
  result = qword_27D9BC9E8;
  if (!qword_27D9BC9E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C48258C(uint64_t a1)
{
  sub_22C482600(319);
  if (v1 <= 0x3F)
  {
    sub_22C482674(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22C482600(uint64_t a1)
{
  if (!qword_27D9BC9F8)
  {
    sub_22C9036EC();
    sub_22C9037DC();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BC9F8);
    }
  }
}

void sub_22C482674(uint64_t a1)
{
  if (!qword_27D9BCA00)
  {
    sub_22C3AC1A0(&qword_27D9BCA08, &qword_22C916008);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27D9BCA00);
    }
  }
}

uint64_t sub_22C4826EC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22C9036EC();
  sub_22C369824();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  v10 = v9 - v8;
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  sub_22C43786C(v2, v13 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C483C8C(v14);
    v15 = sub_22C908EAC();
    return sub_22C36C640(a1, 1, 1, v15);
  }

  else
  {
    v17 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v6 + 32))(v10, v14, v4);
    sub_22C9036BC();
    (*(v6 + 8))(v10, v4);
    sub_22C9037DC();
    sub_22C36985C();
    return (*(v18 + 8))(v14 + v17);
  }
}

uint64_t sub_22C48289C()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3EC8);
  sub_22C483D60();
  sub_22C380498();
  swift_allocObject();
  sub_22C483D48();
  sub_22C372768(v1, v2);
  sub_22C36BBA8();
  v4 = *(v3 + 104);

  return v4(qword_27D9E3EC8);
}

uint64_t sub_22C482970()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3EF8);
  sub_22C483D60();
  sub_22C380498();
  swift_allocObject();
  sub_22C483D48();
  sub_22C372768(v1, v2);
  sub_22C36BBA8();
  v4 = *(v3 + 104);

  return v4(qword_27D9E3EF8);
}

uint64_t sub_22C482A18()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3F10);
  v1 = sub_22C37AA60(v0, qword_27D9E3F10);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000015;
  v2[5] = 0x800000022C92EBD0;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22C482AF4()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, qword_27D9E3F28);
  v1 = sub_22C37AA60(v0, qword_27D9E3F28);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022C92EB40;
  v2[4] = 0xD000000000000013;
  v2[5] = 0x800000022C930C80;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22C482C28(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22C90952C();
  sub_22C3F0160(v7, a2);
  v8 = sub_22C37AA60(v7, a2);
  sub_22C380498();
  v9 = swift_allocObject();
  v10 = sub_22C38864C(v9, "com.apple.omniSearch.SearchToolExtension");
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *v8 = v10;
  sub_22C36BBA8();
  v12 = *(v11 + 104);

  return v12(v8);
}

void sub_22C482CE4()
{
  sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
  sub_22C90952C();
  sub_22C369824();
  v1 = v0;
  v3 = *(v2 + 72);
  v4 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22C915D70;
  v6 = v5 + v4;
  if (qword_27D9BA660 != -1)
  {
    v5 = swift_once();
  }

  sub_22C377C58(v5, qword_27D9E3EC8);
  v7 = *(v1 + 16);
  v8 = v7(v6);
  if (qword_27D9BA668 != -1)
  {
    v8 = swift_once();
  }

  sub_22C377C58(v8, qword_27D9E3EE0);
  v9 = v7(v6 + v3);
  if (qword_27D9BA670 != -1)
  {
    v9 = swift_once();
  }

  sub_22C377C58(v9, qword_27D9E3EF8);
  v10 = v7(v6 + 2 * v3);
  if (qword_27D9BA678 != -1)
  {
    v10 = swift_once();
  }

  sub_22C377C58(v10, qword_27D9E3F10);
  v11 = v7(v6 + 3 * v3);
  if (qword_27D9BA680 != -1)
  {
    v11 = swift_once();
  }

  sub_22C377C58(v11, qword_27D9E3F28);
  v12 = v7(v6 + 4 * v3);
  if (qword_27D9BA688 != -1)
  {
    v12 = swift_once();
  }

  sub_22C377C58(v12, qword_27D9E3F40);
  v13 = v7(v6 + 5 * v3);
  if (qword_27D9BA690 != -1)
  {
    v13 = swift_once();
  }

  sub_22C377C58(v13, qword_27D9E3F58);
  v7(v6 + 6 * v3);
  sub_22C3AD9E8();
  qword_27D9E3F70 = v14;
}

uint64_t sub_22C483004@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_22C90033C();
  sub_22C369824();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  sub_22C380498();
  v9 = swift_allocObject();
  sub_22C38864C(v9, "com.apple.omniSearch.SearchToolExtension");
  sub_22C8FFDDC();
  sub_22C90032C();
  (*(v4 + 8))(v8, v2);
  while (1)
  {
    v10 = sub_22C90A3AC();
    if (!v11)
    {
      break;
    }

    v12 = v10;
    v13 = v11;
    if ((sub_22C909FAC() & 1) == 0)
    {
      MEMORY[0x2318B7840](v12, v13);
    }
  }

  MEMORY[0x2318B7850](0, 0xE000000000000000);

  MEMORY[0x2318B7850](0x797469746E45, 0xE600000000000000);
  *(v9 + 32) = 0;
  *(v9 + 40) = 0xE000000000000000;
  *a1 = v9;
  v14 = *MEMORY[0x277D72D28];
  sub_22C90952C();
  sub_22C36985C();
  return (*(v15 + 104))(a1, v14);
}

uint64_t sub_22C4831E8()
{
  result = sub_22C3AD928(&unk_283FAF2E0);
  qword_27D9E3F78 = result;
  return result;
}

uint64_t sub_22C483210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = MEMORY[0x277D84F90];
  sub_22C3B5E2C(0, 1, 0, a4, a5, a6, a7);
  v11 = v16;
  v13 = *(v16 + 16);
  v12 = *(v16 + 24);
  if (v13 >= v12 >> 1)
  {
    sub_22C3B5E2C(v12 > 1, v13 + 1, 1, v7, v8, v9, v10);
    v11 = v16;
  }

  *(v11 + 16) = v13 + 1;
  v14 = v11 + 16 * v13;
  strcpy((v14 + 32), "search_in_app");
  *(v14 + 46) = -4864;
  result = sub_22C3AD928(v11);
  qword_27D9E3F80 = result;
  return result;
}

uint64_t sub_22C4832C8()
{
  v0 = sub_22C90952C();
  sub_22C3F0160(v0, &qword_27D9E3F88);
  sub_22C483D60();
  sub_22C380498();
  v1 = swift_allocObject();
  v1[2] = sub_22C90849C();
  v1[3] = v2;
  v1[4] = sub_22C9081DC();
  v1[5] = v3;
  qword_27D9E3F88 = v1;
  sub_22C36BBA8();
  v5 = *(v4 + 104);

  return v5(&qword_27D9E3F88);
}

uint64_t sub_22C483378()
{
  sub_22C387054((v0 + 40));
  v1 = sub_22C36BC88();
  v2(v1);
  sub_22C387054(v9);
  v3 = sub_22C36BC88();
  v4(v3);
  sub_22C387054(v8);
  v5 = sub_22C36BC88();
  v6(v5);
  sub_22C36FF94(v8);
  return sub_22C36FF94(v9);
}

BOOL sub_22C483418(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C9037DC();
  sub_22C369824();
  v49 = v5;
  v7 = MEMORY[0x28223BE20](v6);
  v47 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v48 = &v46 - v9;
  v50 = sub_22C9036EC();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  v15 = (v14 - v13);
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v46 - v20;
  v22 = sub_22C3A5908(&qword_27D9BCA18, &unk_22C916080);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v46 - v24;
  v26 = &v46 + *(v23 + 56) - v24;
  sub_22C43786C(a1, &v46 - v24);
  sub_22C43786C(a2, v26);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C43786C(v25, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C46E2C8();
      v28 = v27;

LABEL_11:
      sub_22C483C8C(v25);
      return v28;
    }

    goto LABEL_7;
  }

  sub_22C43786C(v25, v21);
  v29 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v49 + 8))(&v21[v29], v4);
    (*(v11 + 8))(v21, v50);
LABEL_7:
    sub_22C483C24(v25);
    return 0;
  }

  v30 = *(v11 + 32);
  v46 = v11;
  v31 = v50;
  v30(v15, v26, v50);
  v32 = v49;
  v33 = *(v49 + 32);
  v33(v48, &v21[v29], v4);
  v34 = &v26[v29];
  v35 = v47;
  v33(v47, v34, v4);
  v36 = v31;
  v37 = v46;
  v38 = sub_22C9036DC();
  v39 = *(v37 + 8);
  v39(v21, v36);
  if (v38)
  {
    sub_22C483D30();
    sub_22C483CE8(v40, v41, MEMORY[0x277D1ED68]);
    v42 = v48;
    sub_22C90A56C();
    sub_22C90A56C();
    v43 = *(v32 + 8);
    v43(v35, v4);
    v43(v42, v4);
    v39(v15, v50);
    v28 = v52 == v51;
    goto LABEL_11;
  }

  v45 = *(v32 + 8);
  v45(v35, v4);
  v45(v48, v4);
  v39(v15, v36);
  sub_22C483C8C(v25);
  return 0;
}

uint64_t sub_22C4838A8(uint64_t a1)
{
  v3 = sub_22C9037DC();
  sub_22C369824();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v9 = v8 - v7;
  v10 = sub_22C9036EC();
  sub_22C369824();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v16 = v15 - v14;
  type metadata accessor for RenderableTool(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = (v19 - v18);
  sub_22C43786C(v1, v19 - v18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v20;
    MEMORY[0x2318B8B10](1);
    MEMORY[0x2318B8B10](0);
    sub_22C472124(a1, v21);
  }

  else
  {
    v23 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
    (*(v12 + 32))(v16, v20, v10);
    (*(v5 + 32))(v9, v20 + v23, v3);
    MEMORY[0x2318B8B10](0);
    sub_22C483CE8(&qword_281435770, MEMORY[0x277D1ED00], MEMORY[0x277D1ED10]);
    sub_22C909F8C();
    sub_22C483D30();
    sub_22C483CE8(v24, v25, MEMORY[0x277D1ED58]);
    sub_22C909F8C();
    (*(v5 + 8))(v9, v3);
    return (*(v12 + 8))(v16, v10);
  }
}

uint64_t sub_22C483B54()
{
  sub_22C90B62C();
  sub_22C4838A8(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C483B9C(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4838A8(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C483C24(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BCA18, &unk_22C916080);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C483C8C(uint64_t a1)
{
  v2 = type metadata accessor for RenderableTool(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C483CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C483DA0(uint64_t a1)
{
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(319);
  if (v1 <= 0x3F)
  {
    sub_22C483E78(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PromptTreeIdentifier.ContextSubItem(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PromptTreeIdentifier.TurnChange(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C483E78(uint64_t a1)
{
  if (!qword_27D9BCA30)
  {
    v2 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(255);
    v3 = sub_22C48409C(&qword_27D9BCA38, type metadata accessor for PromptTreeIdentifier.TranscriptReference, &unk_22C9165EC);
    v5 = type metadata accessor for PromptTreeIdentifier.Enriched(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D9BCA30);
    }
  }
}

uint64_t sub_22C483FAC(uint64_t a1)
{
  result = sub_22C90069C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C48409C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C4840E4(uint64_t a1)
{
  if (!qword_27D9BCA60)
  {
    sub_22C90430C();
    v1 = sub_22C90A68C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BCA60);
    }
  }
}

uint64_t sub_22C4841A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_22C48425C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_27D9BCA78)
  {
    v4 = type metadata accessor for PromptTree(0, MEMORY[0x277D84A98], &off_2818B3340, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_27D9BCA78);
    }
  }
}

__n128 sub_22C4842B4(uint64_t a1, uint64_t a2)
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

uint64_t sub_22C4842D0(uint64_t a1, int a2)
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

uint64_t sub_22C484310(uint64_t result, int a2, int a3)
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

uint64_t sub_22C48436C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C4843E4(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *(((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_22C370B74(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_22C484520(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              *v17 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v17[1] = (a2 - 1);
            }
          }

          else
          {

            sub_22C36C640(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_22C484738(uint64_t a1)
{
  result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(319);
  if (v2 <= 0x3F)
  {
    result = sub_22C902D0C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4847BC(uint64_t a1)
{
  result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C484870(uint64_t a1)
{
  result = sub_22C902D0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C484904(uint64_t a1)
{
  v1 = sub_22C902D0C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_22C48495C()
{
  sub_22C36BA7C();
  v57 = v1;
  v58 = v4;
  v5 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  v53 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - v10;
  v11 = sub_22C36BA0C();
  v51 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v11);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v55 = (v13 - v14);
  MEMORY[0x28223BE20](v15);
  v54 = (&v51 - v16);
  sub_22C36BA0C();
  v17 = sub_22C902D0C();
  sub_22C369824();
  v56 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v22 = (v20 - v21);
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v26);
  sub_22C369ABC();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v31);
  v33 = &v51 - v32;
  v34 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C3721C8();
  sub_22C36FC5C();
  sub_22C48A668(v57, v0);
  sub_22C48A668(v58, v0 + v3);
  sub_22C37BD98();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v37 = sub_22C36D39C();
      sub_22C48A668(v37, v38);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v39 = v2;
        v40 = v54;
        sub_22C48A058(v39, v54);
        v41 = v55;
        sub_22C48A058(v0 + v3, v55);
        if (sub_22C48819C(*v40, *v41))
        {
          sub_22C46D610();
          if (v42)
          {
            sub_22C90962C();
          }
        }

        goto LABEL_13;
      }
    }

    else
    {
      sub_22C48A668(v0, v29);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22C48A058(v29, v52);
        sub_22C48A058(v0 + v3, v53);
        sub_22C36EBF0();
        sub_22C485EC4();
        sub_22C48AEF0();
LABEL_13:
        sub_22C48A004();
        sub_22C48A004();
LABEL_15:
        sub_22C48A004();
        goto LABEL_16;
      }
    }

    sub_22C48A004();
  }

  else
  {
    v43 = v56;
    sub_22C377C74();
    v44 = sub_22C36BAFC();
    sub_22C48A668(v44, v45);
    if (!swift_getEnumCaseMultiPayload())
    {
      v46 = *(v43 + 32);
      v46(v25, v33, v17);
      v46(v22, (v0 + v3), v17);
      sub_22C484E80();
      sub_22C3ADC38();
      v48 = v47;
      sub_22C484E80();
      sub_22C3ADC38();
      sub_22C805D60(v49, v48);

      v50 = *(v43 + 8);
      v50(v22, v17);
      v50(v25, v17);

      goto LABEL_15;
    }

    (*(v43 + 8))(v33, v17);
  }

  sub_22C36DD28(v0, &qword_27D9BCBA0, &unk_22C9166D0);
LABEL_16:
  sub_22C36CC48();
}

void sub_22C484E80()
{
  v1 = sub_22C902C4C();
  v2 = *(v1 - 8);
  v134 = v1;
  v135 = v2;
  MEMORY[0x28223BE20](v1);
  v133 = v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22C902CDC();
  v130 = *(v4 - 8);
  v131 = v4;
  MEMORY[0x28223BE20](v4);
  v129 = v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C901FAC();
  v136 = *(v6 - 8);
  v137 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22C902D0C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v132 = v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v127 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v127 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v127 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = v127 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = v127 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v127 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = v127 - v31;
  v33 = v0;
  v35 = v34;
  v138 = *(v10 + 16);
  v139 = v10 + 16;
  v138(v24, v33, v34);
  v36 = (*(v10 + 88))(v24, v35);
  if (v36 == *MEMORY[0x277D1D7C8])
  {
    (*(v10 + 8))(v24, v35);
    return;
  }

  if (v36 == *MEMORY[0x277D1D798])
  {
    (*(v10 + 96))(v24, v35);
    v37 = swift_projectBox();
    v39 = v136;
    v38 = v137;
    (*(v136 + 16))(v8, v37, v137);
    sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
    v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_22C90F800;
    (*(v39 + 32))(v41 + v40, v8, v38);
    goto LABEL_6;
  }

  if (v36 == *MEMORY[0x277D1D7E8])
  {
    (*(v10 + 96))(v24, v35);
    v42 = *v24;
    v24 = *(*v24 + 16);
    v43 = *(v42 + 3);
    v44 = v42[32];
    if (((1 << v44) & 0xCF) != 0)
    {
      goto LABEL_6;
    }

    v134 = v24;
    if (v44 != 4)
    {
      v133 = v42;
      v75 = *(v24 + 8);
      v131 = v24 + 64;
      v76 = 1 << v24[32];
      v77 = -1;
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      v30 = v77 & v75;
      sub_22C4403D8(v24, v43, 5);
      v132 = v43;
      sub_22C4403D8(v24, v43, 5);
      v78 = (v76 + 63) >> 6;
      v135 = v10 + 8;

      v15 = 0;
      v27 = MEMORY[0x277D84F90];
      v128 = v35;
      while (v30)
      {
LABEL_41:
        v138(v18, *(v24 + 7) + *(v10 + 72) * (__clz(__rbit64(v30)) | (v15 << 6)), v35);
        v80 = v35;
        v81 = sub_22C484E80();
        (*(v10 + 8))(v18, v80);
        v82 = *(v81 + 16);
        v32 = *(v27 + 2);
        if (__OFADD__(v32, v82))
        {
          goto LABEL_113;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || (v32 + v82) > *(v27 + 3) >> 1)
        {
          sub_22C59298C();
          v27 = v83;
        }

        v24 = v134;
        v30 &= v30 - 1;
        if (*(v81 + 16))
        {
          if ((*(v27 + 3) >> 1) - *(v27 + 2) < v82)
          {
            goto LABEL_115;
          }

          swift_arrayInitWithCopy();

          v35 = v128;
          if (v82)
          {
            v84 = *(v27 + 2);
            v70 = __OFADD__(v84, v82);
            v85 = v84 + v82;
            if (v70)
            {
              goto LABEL_116;
            }

            *(v27 + 2) = v85;
          }
        }

        else
        {

          v35 = v128;
          if (v82)
          {
            __break(1u);
            goto LABEL_52;
          }
        }
      }

      while (1)
      {
        v79 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_108;
        }

        if (v79 >= v78)
        {
          break;
        }

        v30 = *&v131[8 * v79];
        ++v15;
        if (v30)
        {
          v15 = v79;
          goto LABEL_41;
        }
      }

      v87 = v132;
      sub_22C4242E4(v24, v132, 5);
      v72 = v24;
      v73 = v87;
      v74 = 5;
LABEL_55:
      sub_22C4242E4(v72, v73, v74);
      goto LABEL_6;
    }

    v60 = *(v24 + 2);
    if (!v60)
    {
LABEL_6:

      return;
    }

    v132 = v43;
    v133 = v42;
    v61 = &v24[(*(v10 + 80) + 32) & ~*(v10 + 80)];
    v135 = *(v10 + 72);
    v62 = (v10 + 8);

    v63 = MEMORY[0x277D84F90];
    while (1)
    {
      v138(v21, v61, v35);
      v64 = sub_22C484E80();
      v65 = v35;
      (*v62)(v21, v35);
      v66 = *(v64 + 16);
      v67 = *(v63 + 16);
      if (__OFADD__(v67, v66))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v67 + v66 > *(v63 + 24) >> 1)
      {
        sub_22C59298C();
        v63 = v68;
      }

      if (*(v64 + 16))
      {
        if ((*(v63 + 24) >> 1) - *(v63 + 16) < v66)
        {
          goto LABEL_110;
        }

        swift_arrayInitWithCopy();

        if (v66)
        {
          v69 = *(v63 + 16);
          v70 = __OFADD__(v69, v66);
          v71 = v69 + v66;
          if (v70)
          {
            goto LABEL_112;
          }

          *(v63 + 16) = v71;
        }
      }

      else
      {

        if (v66)
        {
          goto LABEL_109;
        }
      }

      v61 += v135;
      --v60;
      v35 = v65;
      if (!v60)
      {
        v72 = v134;
        v73 = v132;
        v74 = 4;
        goto LABEL_55;
      }
    }

LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v36 == *MEMORY[0x277D1D7E0])
  {
    (*(v10 + 96))(v24, v35);
    v45 = v35;
    v46 = sub_22C3A5908(&qword_27D9BC330, &qword_22C9126C8);
    v47 = swift_projectBox();
    v48 = *(v46 + 48);
    v35 = v45;
    v49 = v47 + v48;
LABEL_32:
    v138(v32, v49, v35);

    sub_22C484E80();
    (*(v10 + 8))(v32, v35);
    return;
  }

  if (v36 == *MEMORY[0x277D1D7D8])
  {
    (*(v10 + 96))(v24, v35);
    v50 = sub_22C3A5908(&qword_27D9BC168, &unk_22C9123C0);
    v51 = v35;
    v52 = swift_projectBox();
    v53 = v52 + *(v50 + 48);
    v54 = (v50 + 64);
LABEL_14:
    v55 = *v54;
    v56 = v138;
    v138(v30, v53, v51);
    v56(v27, v52 + v55, v51);

    v57 = sub_22C484E80();
    v58 = *(v10 + 8);
    v58(v30, v51);
    v59 = sub_22C484E80();
    v58(v27, v51);
    v140 = v57;
    sub_22C3CE2FC(v59);
    return;
  }

  if (v36 == *MEMORY[0x277D1D7B8])
  {
LABEL_31:
    (*(v10 + 96))(v24, v35);
    v49 = swift_projectBox();
    goto LABEL_32;
  }

LABEL_52:
  if (v36 == *MEMORY[0x277D1D7D0])
  {
    (*(v10 + 96))(v24, v35);
    v86 = sub_22C3A5908(&qword_27D9BC208, &unk_22C912400);
    v51 = v35;
    v52 = swift_projectBox();
    v54 = (v86 + 48);
    v53 = v52;
    goto LABEL_14;
  }

  if (v36 == *MEMORY[0x277D1D7C0])
  {
    v88 = *(v10 + 96);
    v128 = v35;
    v88(v24);
    v89 = *v24;
    v90 = sub_22C3A5908(&qword_27D9BC198, &unk_22C916710);
    v132 = v89;
    v91 = *(swift_projectBox() + *(v90 + 48));
    v24 = (v91 + 64);
    v92 = 1 << *(v91 + 32);
    v93 = -1;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    v32 = v93 & *(v91 + 64);
    v94 = (v92 + 63) >> 6;
    v134 = (v10 + 8);
    v135 = v91;
    swift_bridgeObjectRetain_n();
    v95 = 0;
    v27 = MEMORY[0x277D84F90];
    v133 = v24;
    while (v32)
    {
      v96 = v128;
LABEL_67:
      v138(v15, *(v135 + 56) + *(v10 + 72) * (__clz(__rbit64(v32)) | (v95 << 6)), v96);
      v35 = sub_22C484E80();
      (*(v10 + 8))(v15, v96);
      v98 = *(v35 + 16);
      v99 = *(v27 + 2);
      if (__OFADD__(v99, v98))
      {
        goto LABEL_117;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v99 + v98 > *(v27 + 3) >> 1)
      {
        sub_22C59298C();
        v27 = v100;
      }

      v24 = v133;
      v32 &= v32 - 1;
      if (*(v35 + 16))
      {
        if ((*(v27 + 3) >> 1) - *(v27 + 2) < v98)
        {
          goto LABEL_118;
        }

        swift_arrayInitWithCopy();

        if (v98)
        {
          v101 = *(v27 + 2);
          v70 = __OFADD__(v101, v98);
          v102 = v101 + v98;
          if (v70)
          {
            goto LABEL_120;
          }

          *(v27 + 2) = v102;
        }
      }

      else
      {

        if (v98)
        {
          __break(1u);
          goto LABEL_78;
        }
      }
    }

    v96 = v128;
    while (1)
    {
      v97 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v97 >= v94)
      {
LABEL_98:

        return;
      }

      v32 = *&v24[8 * v97];
      ++v95;
      if (v32)
      {
        v95 = v97;
        goto LABEL_67;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    goto LABEL_114;
  }

LABEL_78:
  if (v36 != *MEMORY[0x277D1D7B0])
  {
    if (v36 != *MEMORY[0x277D1D7F0] && v36 != *MEMORY[0x277D1D7A0])
    {
      if (v36 != *MEMORY[0x277D1D7F8] && v36 != *MEMORY[0x277D1D7A8])
      {
        sub_22C90B4EC();
        __break(1u);
LABEL_106:

        v140 = v127[0];
        sub_22C3CE2FC(v27);
        (*(v130 + 8))(v129, v131);
      }

      return;
    }

    goto LABEL_31;
  }

  v104 = *(v10 + 96);
  v103 = v10 + 96;
  v128 = v35;
  v104(v24, v35);
  v127[1] = *v24;
  v105 = swift_projectBox();
  (*(v130 + 16))(v129, v105, v131);
  sub_22C3A5908(&qword_27D9BAC28, &unk_22C911F40);
  v106 = (*(v136 + 80) + 32) & ~*(v136 + 80);
  v127[3] = *(v136 + 72);
  v107 = swift_allocObject();
  *(v107 + 16) = xmmword_22C90F800;
  v127[0] = v107;
  v127[2] = v106;
  sub_22C902CCC();
  v108 = sub_22C902CAC();
  v109 = v108 + 64;
  v110 = 1 << *(v108 + 32);
  v111 = -1;
  if (v110 < 64)
  {
    v111 = ~(-1 << v110);
  }

  v112 = v111 & *(v108 + 64);
  v113 = (v110 + 63) >> 6;
  v138 = (v135 + 16);
  v139 = v108;
  v136 = v103 - 88;
  v127[4] = v135 + 8;

  v114 = 0;
  v27 = MEMORY[0x277D84F90];
  v115 = v132;
  while (v112)
  {
LABEL_87:
    v117 = v134;
    v118 = v135;
    v119 = v133;
    (*(v135 + 16))(v133, *(v139 + 56) + *(v135 + 72) * (__clz(__rbit64(v112)) | (v114 << 6)), v134);
    sub_22C902C1C();
    v120 = sub_22C484E80();
    (*v136)(v115, v128);
    (*(v118 + 8))(v119, v117);
    v121 = *(v120 + 16);
    v122 = *(v27 + 2);
    if (__OFADD__(v122, v121))
    {
      goto LABEL_119;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v122 + v121 > *(v27 + 3) >> 1)
    {
      sub_22C59298C();
      v27 = v123;
    }

    v112 &= v112 - 1;
    if (*(v120 + 16))
    {
      if ((*(v27 + 3) >> 1) - *(v27 + 2) < v121)
      {
        goto LABEL_121;
      }

      swift_arrayInitWithCopy();

      if (v121)
      {
        v124 = *(v27 + 2);
        v70 = __OFADD__(v124, v121);
        v125 = v124 + v121;
        if (v70)
        {
          goto LABEL_122;
        }

        *(v27 + 2) = v125;
      }
    }

    else
    {

      if (v121)
      {
        __break(1u);
        goto LABEL_98;
      }
    }
  }

  while (1)
  {
    v116 = v114 + 1;
    if (__OFADD__(v114, 1))
    {
      break;
    }

    if (v116 >= v113)
    {
      goto LABEL_106;
    }

    v112 = *(v109 + 8 * v116);
    ++v114;
    if (v112)
    {
      v114 = v116;
      goto LABEL_87;
    }
  }

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
}

uint64_t sub_22C485E54()
{
  sub_22C36986C();
  if ((sub_22C48819C(*v0, *v1) & 1) == 0)
  {
    return 0;
  }

  sub_22C46D610();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  v3 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C386C70(*(v3 + 24));

  return sub_22C90962C();
}

uint64_t sub_22C485EC4()
{
  sub_22C36986C();
  v4 = *v3;
  switch(*v2)
  {
    case 3:
      if (v4 == 3)
      {
        goto LABEL_14;
      }

      return 0;
    case 4:
      if (v4 != 4)
      {
        return 0;
      }

      goto LABEL_14;
    case 5:
      if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_14;
    case 6:
      if (v4 != 6)
      {
        return 0;
      }

      goto LABEL_14;
    default:
      if (*v2 != v4 || (v4 - 7) >= 0xFFFFFFFC)
      {
        return 0;
      }

LABEL_14:
      v6 = v1[1] == v0[1] && v1[2] == v0[2];
      if (!v6 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v7 = v1[3] == v0[3] && v1[4] == v0[4];
      if (!v7 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v8 = v1[5] == v0[5] && v1[6] == v0[6];
      if (!v8 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }

      v9 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
      sub_22C386C70(*(v9 + 32));

      return sub_22C90067C();
  }
}

void sub_22C485FE8()
{
  sub_22C36BA7C();
  v41 = v2;
  v4 = v3;
  v5 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  v38 = v8 - v7;
  v9 = sub_22C36BA0C();
  v37[1] = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v9);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  sub_22C369838();
  v39 = (v12 - v11);
  sub_22C36BA0C();
  v13 = sub_22C902D0C();
  sub_22C369824();
  v40 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v19);
  sub_22C369ABC();
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (v37 - v22);
  MEMORY[0x28223BE20](v21);
  v25 = v37 - v24;
  v26 = sub_22C3A5908(&qword_27D9BCBA0, &unk_22C9166D0);
  sub_22C369914(v26);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v27);
  sub_22C3721C8();
  sub_22C36FC5C();
  sub_22C48A668(v4, v0);
  sub_22C48A668(v41, v0 + v1);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = v40;
    sub_22C377C74();
    v32 = sub_22C36BA00();
    sub_22C48A668(v32, v33);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v31 + 8))(v25, v13);
LABEL_15:
      sub_22C36DD28(v0, &qword_27D9BCBA0, &unk_22C9166D0);
      goto LABEL_19;
    }

    (*(v31 + 32))(v18, v0 + v1, v13);
    sub_22C902CFC();
    v36 = *(v31 + 8);
    v36(v18, v13);
    v36(v25, v13);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C377C74();
    v34 = sub_22C36BAFC();
    sub_22C48A668(v34, v35);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_22C48AEA8();
      goto LABEL_14;
    }

    sub_22C38B8CC();
    sub_22C48A058(v0 + v1, v38);
    sub_22C37335C();
    sub_22C485EC4();
    sub_22C48A004();
    sub_22C37EF10();
    sub_22C48A004();
LABEL_18:
    sub_22C387074();
    sub_22C48A004();
    goto LABEL_19;
  }

  sub_22C377C74();
  sub_22C48A668(v0, v23);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_22C48AE90();
LABEL_14:
    sub_22C48A004();
    goto LABEL_15;
  }

  sub_22C36BC98();
  v29 = v39;
  sub_22C48A058(v0 + v1, v39);
  if (sub_22C48819C(*v23, *v29))
  {
    sub_22C46D610();
    if (v30)
    {
      sub_22C90962C();
    }
  }

  sub_22C385588();
  sub_22C48A004();
  sub_22C48A004();
  sub_22C387074();
  sub_22C48A004();
LABEL_19:
  sub_22C36CC48();
}

void sub_22C48640C()
{
  sub_22C36BA7C();
  v4 = sub_22C3704C4();
  type metadata accessor for PromptTreeIdentifier.TurnChange(v4);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C371770();
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v6);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C37BDA4();
  v8 = sub_22C902D0C();
  sub_22C369824();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  v14 = v13 - v12;
  type metadata accessor for PromptTreeIdentifier.Label(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v15);
  sub_22C369838();
  v18 = v17 - v16;
  sub_22C377C74();
  sub_22C48A668(v1, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22C36BC98();
      sub_22C48A058(v18, v3);
      sub_22C48AF94();
      sub_22C48A9B4(v0, *v3);
      sub_22C471960(v0, *(v3 + 8));
      sub_22C90963C();
      sub_22C388664();
      sub_22C48409C(v20, v21, MEMORY[0x277D72E20]);
      sub_22C36BAFC();
      sub_22C909F8C();
      sub_22C48AE90();
    }

    else
    {
      sub_22C38B8CC();
      sub_22C48A058(v18, v2);
      MEMORY[0x2318B8B10](2);
      v24 = *v2;
      if ((v24 - 3) >= 4u)
      {
        sub_22C48AF94();
      }

      else
      {
        v24 = qword_22C9167B8[(v24 - 3)];
      }

      MEMORY[0x2318B8B10](v24);
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C90069C();
      sub_22C48AED8();
      sub_22C48409C(v25, v26, MEMORY[0x277CC9600]);
      sub_22C37BD98();
      sub_22C909F8C();
      sub_22C48AEA8();
    }

    sub_22C48A004();
  }

  else
  {
    (*(v10 + 32))(v14, v18, v8);
    MEMORY[0x2318B8B10](0);
    sub_22C373344();
    sub_22C48409C(v22, v23, MEMORY[0x277D1D808]);
    sub_22C909F8C();
    (*(v10 + 8))(v14, v8);
  }

  sub_22C36CC48();
}

void sub_22C486784()
{
  sub_22C36BA7C();
  v4 = v3;
  v5 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C375E48();
  v7 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  sub_22C369838();
  v46 = v9 - v8;
  sub_22C36BA0C();
  v42 = sub_22C902D0C();
  sub_22C369824();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C37BDA4();
  v13 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C369914(v13);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v14);
  sub_22C3721C8();
  v15 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  v19 = v18 - v17;
  type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v20);
  sub_22C369838();
  v23 = v22 - v21;
  sub_22C36A930();
  sub_22C48A668(v1, v23);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C48A6F0(v23, v0);
      sub_22C48A668(v0, v19);
      sub_22C36DD28(v0, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_12;
    case 2u:
      v24 = *(v23 + 48);
      v49 = v24;
      v25 = *(v23 + 32);
      v48[1] = *(v23 + 16);
      v48[2] = v25;
      v48[0] = *v23;
      v26 = *(v24 + 16);
      if (v26)
      {
        v47 = MEMORY[0x277D84F90];
        sub_22C3B69C4(0, v26, 0);
        v27 = v47;
        v28 = v24 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
        v45 = *(v43 + 72);
        v44 = *MEMORY[0x277D1D798];
        v29 = v42;
        do
        {
          sub_22C48A668(v28, v46);
          v30 = sub_22C901FAC();
          v31 = swift_allocBox();
          (*(*(v30 - 8) + 32))(v32, v46, v30);
          *v2 = v31;
          (*(v11 + 104))(v2, v44, v29);
          v33 = v29;
          v35 = *(v47 + 16);
          v34 = *(v47 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_22C3B69C4(v34 > 1, v35 + 1, 1);
          }

          *(v47 + 16) = v35 + 1;
          (*(v11 + 32))(v47 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v35, v2, v33);
          v28 += v45;
          --v26;
          v29 = v33;
        }

        while (v26);
        sub_22C48A6C0(v48);
      }

      else
      {
        sub_22C48A6C0(v48);
        v27 = MEMORY[0x277D84F90];
        v29 = v42;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = v27;
      *(v41 + 24) = 0;
      *(v41 + 32) = 4;
      *v4 = v41;
      (*(v11 + 104))(v4, *MEMORY[0x277D1D7E8], v29);
      goto LABEL_16;
    case 3u:
      sub_22C379FEC();
      sub_22C48A058(v23, v1);
      v36 = sub_22C901FAC();
      v37 = swift_allocBox();
      v38 = v5;
      v39 = v37;
      (*(*(v36 - 8) + 16))(v40, v1 + *(v38 + 20), v36);
      sub_22C38A8D8();
      sub_22C48A004();
      *v4 = v39;
      (*(v11 + 104))(v4, *MEMORY[0x277D1D798], v42);
      goto LABEL_16;
    case 4u:
      sub_22C36BC98();
      sub_22C48A058(v23, v4);
      sub_22C48AFAC();
      goto LABEL_17;
    case 5u:
      sub_22C38B8CC();
      sub_22C48A058(v23, v4);
      sub_22C48AFAC();
      goto LABEL_17;
    default:
      sub_22C376664();
      sub_22C48A058(v23, v19);
LABEL_12:
      (*(v11 + 16))(v4, v19 + *(v15 + 20), v42);
      sub_22C369CFC();
      sub_22C48A004();
LABEL_16:
      sub_22C48AFAC();
LABEL_17:
      swift_storeEnumTagMultiPayload();
      sub_22C36CC48();
      return;
  }
}

void sub_22C486D10()
{
  sub_22C36BA7C();
  v4 = v3;
  v6 = v5;
  v7 = sub_22C902D0C();
  sub_22C369824();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C371770();
  v12 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v11);
  v13 = sub_22C369914(v12);
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  sub_22C3881C0();
  v14 = sub_22C3A5908(&qword_27D9BCBC0, &qword_22C9166F8);
  sub_22C369914(v14);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C375E48();
  v17 = *(v16 + 56);
  sub_22C48A668(v6, v0);
  sub_22C48A668(v4, v0 + v17);
  switch(sub_22C370B74(v0, 3, v7))
  {
    case 1u:
      if (sub_22C48AF40() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 2u:
      if (sub_22C48AF40() == 2)
      {
        goto LABEL_5;
      }

      goto LABEL_7;
    case 3u:
      if (sub_22C48AF40() != 3)
      {
        goto LABEL_7;
      }

LABEL_5:
      sub_22C374B00();
      sub_22C48A004();
      break;
    default:
      sub_22C37B5B0();
      sub_22C48A668(v0, v2);
      if (sub_22C48AF40())
      {
        v18 = sub_22C371530();
        v19(v18);
LABEL_7:
        sub_22C36DD28(v0, &qword_27D9BCBC0, &qword_22C9166F8);
      }

      else
      {
        (*(v9 + 32))(v1, v0 + v17, v7);
        sub_22C902CFC();
        v20 = *(v9 + 8);
        v21 = sub_22C36A724();
        v20(v21);
        v22 = sub_22C371530();
        v20(v22);
        sub_22C374B00();
        sub_22C48A004();
      }

      break;
  }

  sub_22C36CC48();
}

uint64_t sub_22C486F70()
{
  sub_22C369A48();
  v1 = sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  v3 = sub_22C371770();
  v4 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(v3);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C37B5B0();
  v6 = sub_22C36EBF0();
  sub_22C48A668(v6, v7);
  switch(sub_22C370B74(v0, 3, v1))
  {
    case 1u:
      v15 = 0;
      goto LABEL_6;
    case 2u:
      v15 = 1;
      goto LABEL_6;
    case 3u:
      v15 = 2;
LABEL_6:
      result = MEMORY[0x2318B8B10](v15);
      break;
    default:
      v8 = sub_22C37335C();
      v9(v8);
      MEMORY[0x2318B8B10](3);
      sub_22C373344();
      sub_22C48409C(v10, v11, MEMORY[0x277D1D808]);
      sub_22C374404();
      sub_22C909F8C();
      v12 = sub_22C36A724();
      result = v13(v12);
      break;
  }

  return result;
}

void sub_22C4870F8()
{
  sub_22C36BA7C();
  v3 = v2;
  v5 = v4;
  v6 = sub_22C902D0C();
  sub_22C369824();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C371770();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v9);
  sub_22C36985C();
  MEMORY[0x28223BE20](v10);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v11);
  v13 = (&v30 - v12);
  v14 = sub_22C3A5908(&qword_27D9BCBC8, &unk_22C916700);
  sub_22C369914(v14);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v15);
  sub_22C3721C8();
  v17 = (v0 + *(v16 + 56));
  sub_22C48A668(v5, v0);
  sub_22C48A668(v3, v17);
  sub_22C36D39C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22C3773E0();
    sub_22C48A668(v0, v13);
    v26 = *v13;
    v25 = v13[1];
    sub_22C3819EC();
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v26 != *v17 || v25 != v17[1])
      {
        sub_22C37EF10();
        sub_22C90B4FC();
      }

      goto LABEL_18;
    }

LABEL_10:
    sub_22C36DD28(v0, &qword_27D9BCBC8, &unk_22C916700);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22C3819EC();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
LABEL_18:
      sub_22C372780();
      sub_22C48A004();
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  sub_22C3773E0();
  v19 = sub_22C37BD98();
  sub_22C48A668(v19, v20);
  sub_22C3819EC();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = sub_22C38674C();
    v28(v27);
    goto LABEL_10;
  }

  v21 = v31;
  (*(v31 + 32))(v1, v17, v6);
  sub_22C902CFC();
  v22 = *(v21 + 8);
  v23 = sub_22C37EF10();
  v22(v23);
  v24 = sub_22C38674C();
  v22(v24);
  sub_22C372780();
  sub_22C48A004();
LABEL_19:
  sub_22C36CC48();
}

uint64_t sub_22C4873DC()
{
  sub_22C369A48();
  sub_22C902D0C();
  sub_22C369824();
  MEMORY[0x28223BE20](v0);
  v1 = sub_22C371770();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v1);
  sub_22C36985C();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C3881C0();
  sub_22C3773E0();
  v3 = sub_22C36EBF0();
  sub_22C48A668(v3, v4);
  v5 = sub_22C48AF5C();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = sub_22C37335C();
      v7(v6);
      MEMORY[0x2318B8B10](2);
      sub_22C373344();
      sub_22C48409C(v8, v9, MEMORY[0x277D1D808]);
      sub_22C374404();
      sub_22C909F8C();
      v10 = sub_22C36A724();
      return v11(v10);
    }

    else
    {
      return MEMORY[0x2318B8B10](0);
    }
  }

  else
  {
    MEMORY[0x2318B8B10](1);
    sub_22C36BBCC();
    sub_22C909FFC();
  }
}

void sub_22C487560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22C36BA7C();
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(0);
  v28 = sub_22C369914(v27);
  MEMORY[0x28223BE20](v28);
  sub_22C369838();
  sub_22C375E48();
  v29 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v30 = sub_22C369914(v29);
  MEMORY[0x28223BE20](v30);
  v31 = sub_22C371770();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v31);
  sub_22C36985C();
  MEMORY[0x28223BE20](v32);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v33);
  v34 = sub_22C3A5908(&qword_27D9BCBB8, &qword_22C9166F0);
  sub_22C369914(v34);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v35);
  sub_22C3721C8();
  v37 = *(v36 + 56);
  sub_22C48A668(v26, v20);
  sub_22C48A668(v24, v20 + v37);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C382F90();
    v38 = sub_22C37BD98();
    sub_22C48A668(v38, v39);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_22C48AF08();
      sub_22C48A058(v20 + v37, v21);
      sub_22C38674C();
      sub_22C4870F8();
      sub_22C48A004();
LABEL_9:
      sub_22C48A004();
      sub_22C48A004();
      goto LABEL_10;
    }

    sub_22C372780();
  }

  else
  {
    sub_22C382F90();
    v40 = sub_22C36D39C();
    sub_22C48A668(v40, v41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_22C379878();
      sub_22C48A058(v20 + v37, v22);
      sub_22C486D10();
      sub_22C48A004();
      goto LABEL_9;
    }

    sub_22C374B00();
  }

  sub_22C48A004();
  sub_22C36DD28(v20, &qword_27D9BCBB8, &qword_22C9166F0);
LABEL_10:
  sub_22C36CC48();
}

uint64_t sub_22C487808()
{
  v3 = sub_22C369A48();
  v4 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Local(v3);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v8 = v7 - v6;
  v9 = type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category.Global(0);
  v10 = sub_22C369914(v9);
  MEMORY[0x28223BE20](v10);
  v11 = sub_22C371770();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference.Category(v11);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369838();
  sub_22C37BDA4();
  sub_22C382F90();
  sub_22C48A668(v0, v2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C48AF08();
    sub_22C48A058(v2, v8);
    MEMORY[0x2318B8B10](1);
    sub_22C4873DC();
    sub_22C372780();
  }

  else
  {
    sub_22C379878();
    sub_22C48A058(v2, v1);
    MEMORY[0x2318B8B10](0);
    sub_22C374404();
    sub_22C486F70();
    sub_22C374B00();
  }

  return sub_22C48A004();
}

uint64_t sub_22C4879B0()
{
  sub_22C487808();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C902D0C();
  sub_22C373344();
  sub_22C48409C(v0, v1, MEMORY[0x277D1D808]);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C487A28()
{
  sub_22C37B5C8();
  sub_22C487808();
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C902D0C();
  sub_22C373344();
  v2 = sub_22C48409C(v0, v1, MEMORY[0x277D1D808]);
  sub_22C48AF20(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C487AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_22C90A0BC() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for PromptTreeIdentifier.Enriched(0, a3, a4, v8) + 36);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  if (v10 == *v12 && v11 == v12[1])
  {
    return 1;
  }

  return sub_22C90B4FC();
}

uint64_t sub_22C487B48(uint64_t a1, uint64_t a2)
{
  sub_22C909F8C();

  return sub_22C909FFC();
}

uint64_t sub_22C487BA0(uint64_t a1)
{
  sub_22C37B5C8();
  sub_22C487B48(v3, a1);
  return sub_22C90B66C();
}

uint64_t sub_22C487BE0()
{
  sub_22C36986C();
  if ((sub_22C901F6C() & 1) != 0 && (v2 = type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0), *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20))))
  {
    v3 = *(v1 + *(v2 + 24)) ^ *(v0 + *(v2 + 24)) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_22C487C44()
{
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v0, v1, MEMORY[0x277D1C348]);
  sub_22C37335C();
  sub_22C909F8C();
  type metadata accessor for PromptTreeIdentifier.ContextGroupReference.TranscriptContextItem(0);
  sub_22C90B64C();
  return sub_22C90B64C();
}

uint64_t sub_22C487E98(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C487808();
  sub_22C902D0C();
  sub_22C373344();
  v3 = sub_22C48409C(v1, v2, MEMORY[0x277D1D808]);
  sub_22C48AF20(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C487F24(uint64_t a1, uint64_t a2)
{
  sub_22C90B62C();
  sub_22C487B48(v4, a2);
  return sub_22C90B66C();
}

uint64_t sub_22C487FDC()
{
  sub_22C36986C();
  sub_22C374168(v3, v3[3]);
  sub_22C36A948();
  MEMORY[0x28223BE20](v4);
  sub_22C369838();
  sub_22C3881C0();
  (*(v5 + 16))(v2);
  sub_22C48A760();
  sub_22C90AECC();
  v6 = sub_22C37BD98();
  sub_22C374168(v6, v7);
  sub_22C36A948();
  MEMORY[0x28223BE20](v8);
  sub_22C369838();
  (*(v11 + 16))(v10 - v9);
  sub_22C90AECC();
  v12 = MEMORY[0x2318B8380](v22, v21);
  sub_22C48A7B4(v21);
  sub_22C48A7B4(v22);
  if (v12 & 1) != 0 && (sub_22C48819C(*(v1 + 40), *(v0 + 40)))
  {
    sub_22C46D424(*(v1 + 48), *(v0 + 48), v13, v14, v15, v16, v17, v18, v21[0], v21[1], v21[2], v21[3], v21[4], v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6]);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_22C48819C(unint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for PromptTreeIdentifier(0);
  v6 = sub_22C369914(v5);
  MEMORY[0x28223BE20](v6);
  sub_22C369ABC();
  MEMORY[0x28223BE20](v7);
  v9 = &v43[-v8];
  v10 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C369ABC();
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v12);
  v14 = &v43[-v13];
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_30;
      }

      v34 = swift_projectBox();
      v35 = swift_projectBox();
      sub_22C48A668(v34, v14);
      sub_22C48A668(v35, v2);
      sub_22C485FE8();
      v30 = v36;
      sub_22C48A004();
      goto LABEL_20;
    case 2uLL:
      v19 = sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      v20 = swift_projectBox();
      if (a2 >> 61 != 2)
      {
        goto LABEL_30;
      }

      v21 = v20;
      v22 = *(v19 + 48);
      v23 = *(v20 + v22);
      v24 = *(swift_projectBox() + v22);
      sub_22C48A668(v21, v9);
      v25 = sub_22C37EF10();
      sub_22C48A668(v25, v26);

      sub_22C36BA00();
      sub_22C488E5C();
      if ((v27 & 1) == 0)
      {

        sub_22C48A004();
        sub_22C36BAFC();
        sub_22C48A004();
        goto LABEL_30;
      }

      sub_22C36CA70(v23 + 16, v44);
      v28 = *(v23 + 16);
      sub_22C36CA70(v24 + 16, v43);
      v29 = *(v24 + 16);

      v30 = sub_22C48819C(v28, v29);

      sub_22C48A004();
      sub_22C37BD98();
LABEL_20:
      sub_22C48A004();
      return v30 & 1;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_30;
      }

      sub_22C48AF74();

      v31 = sub_22C37170C();
      v33 = sub_22C48A26C(v31, v32);

      return v33 & 1;
    case 4uLL:
      if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_30;
      }

      v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      goto LABEL_40;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_30;
      }

      v37 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      v38 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v39 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18))
      {
        switch(v37)
        {
          case 1:
            v40 = v38 == 1;
            break;
          case 2:
            v40 = v38 == 2;
            break;
          case 3:
            v40 = v38 == 3;
            break;
          case 4:
            v40 = v38 == 4;
            break;
          case 5:
            v40 = v38 == 5;
            break;
          case 6:
            if (v38 <= 5)
            {
              v39 = 0;
            }

            if (v39 == 1)
            {
              goto LABEL_40;
            }

            goto LABEL_30;
          default:
            v40 = v38 == 0;
            break;
        }

        if (!v40)
        {
          LOBYTE(v39) = 0;
        }

        if (v39)
        {
          goto LABEL_40;
        }

LABEL_30:
        v30 = 0;
        return v30 & 1;
      }

      if (v37 != v38)
      {
        LOBYTE(v39) = 1;
      }

      if (v39)
      {
        goto LABEL_30;
      }

LABEL_40:
      sub_22C36CA70(v17 + 16, v44);
      sub_22C36CA70(v18 + 16, v43);

      v41 = sub_22C36BA00();
      v30 = sub_22C48819C(v41, v42);

      return v30 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_30;
      }

      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
      {
        v30 = 1;
        return v30 & 1;
      }

      return sub_22C90B4FC();
  }
}

uint64_t sub_22C48865C(unint64_t a1, unint64_t a2)
{
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 != 1)
      {
        goto LABEL_31;
      }

      return sub_22C90B5DC();
    case 2uLL:
      if (a2 >> 61 != 2)
      {
        goto LABEL_31;
      }

      v5 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      if (sub_22C90B5DC())
      {
        sub_22C36CA70(v5 + 16, v21);
        sub_22C36CA70(v6 + 16, v20);

        v7 = sub_22C37335C();
        v9 = sub_22C48865C(v7, v8);

        goto LABEL_43;
      }

      goto LABEL_31;
    case 3uLL:
      if (a2 >> 61 != 3)
      {
        goto LABEL_31;
      }

      sub_22C48AF74();

      v10 = sub_22C37170C();
      v12 = sub_22C48A2AC(v10, v11);

      return v12 & 1;
    case 4uLL:
      if (a2 >> 61 != 4 || *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_31;
      }

      v4 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_22C36CA70(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) + 16, v21);
      sub_22C36CA70(v4 + 16, v20);
      goto LABEL_42;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_31;
      }

      v13 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v16 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
      if ((*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) & 1) == 0)
      {
        if (v13 != v14)
        {
          LOBYTE(v15) = 1;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_31:
        v9 = 0;
        return v9 & 1;
      }

      switch(v13)
      {
        case 1:
          v17 = v14 == 1;
          break;
        case 2:
          v17 = v14 == 2;
          break;
        case 3:
          v17 = v14 == 3;
          break;
        case 4:
          v17 = v14 == 4;
          break;
        case 5:
          v17 = v14 == 5;
          break;
        case 6:
          if (v14 <= 5)
          {
            v15 = 0;
          }

          if (v15 == 1)
          {
            goto LABEL_41;
          }

          goto LABEL_31;
        default:
          v17 = v14 == 0;
          break;
      }

      if (!v17)
      {
        LOBYTE(v15) = 0;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_41:
      sub_22C36CA70(*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x20) + 16, v21);
      sub_22C36CA70(v16 + 16, v20);
LABEL_42:

      v18 = sub_22C37170C();
      v9 = sub_22C48865C(v18, v19);

LABEL_43:

      return v9 & 1;
    default:
      if (a2 >> 61)
      {
        goto LABEL_31;
      }

      if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
      {
        v9 = 1;
        return v9 & 1;
      }

      return sub_22C90B4FC();
  }
}

void sub_22C488960(uint64_t a1)
{
  v4 = sub_22C37EF10();
  sub_22C374168(v4, v5);
  sub_22C36A948();
  MEMORY[0x28223BE20](v6);
  sub_22C369838();
  sub_22C3881C0();
  (*(v7 + 16))(v2);
  sub_22C48A760();
  sub_22C90AECC();
  sub_22C90AEBC();
  sub_22C48A7B4(v8);
  sub_22C48A9B4(a1, *(v1 + 40));
  sub_22C4719E8();
}

uint64_t sub_22C488A5C()
{
  sub_22C37B5C8();
  sub_22C488960(v1);
  return sub_22C90B66C();
}

uint64_t sub_22C488A94()
{
  sub_22C36986C();
  if ((sub_22C48865C(*v2, *v3) & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C386C70(*(v4 + 20));
  if ((sub_22C901F6C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(v1 + v5);
  v7 = *(v0 + v5);

  return sub_22C48819C(v6, v7);
}

uint64_t sub_22C488B18(uint64_t a1)
{
  sub_22C48A828(a1, *v1);
  v3 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v4, v5, MEMORY[0x277D1C348]);
  sub_22C909F8C();
  v6 = *(v1 + *(v3 + 24));

  return sub_22C48A9B4(a1, v6);
}

uint64_t sub_22C488BC4()
{
  sub_22C37B5C8();
  sub_22C48A828(v5, *v0);
  v1 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C901FAC();
  sub_22C48AEC0();
  sub_22C48409C(v2, v3, MEMORY[0x277D1C348]);
  sub_22C909F8C();
  sub_22C48A9B4(v5, *(v0 + *(v1 + 24)));
  return sub_22C90B66C();
}

uint64_t sub_22C488C70(uint64_t a1)
{
  sub_22C48A9B4(a1, *v1);
  sub_22C471960(a1, *(v1 + 8));
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C90963C();
  sub_22C388664();
  sub_22C48409C(v3, v4, MEMORY[0x277D72E20]);
  sub_22C36BAFC();
  return sub_22C909F8C();
}

uint64_t sub_22C488CF8()
{
  sub_22C37B5C8();
  sub_22C48A9B4(v5, *v0);
  sub_22C471960(v5, *(v0 + 8));
  type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(0);
  sub_22C90963C();
  sub_22C388664();
  v3 = sub_22C48409C(v1, v2, MEMORY[0x277D72E20]);
  sub_22C48AF20(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C488D88(uint64_t a1)
{
  v2 = *v1;
  if ((v2 - 3) >= 4u)
  {
    sub_22C48AF94();
  }

  else
  {
    v2 = qword_22C9167B8[(v2 - 3)];
  }

  MEMORY[0x2318B8B10](v2);
  sub_22C909FFC();
  sub_22C909FFC();
  sub_22C909FFC();
  type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C90069C();
  sub_22C48AED8();
  sub_22C48409C(v3, v4, MEMORY[0x277CC9600]);
  sub_22C37BD98();
  return sub_22C909F8C();
}

void sub_22C488E5C()
{
  sub_22C36BA7C();
  v90 = v2;
  v91 = v3;
  v4 = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  v5 = sub_22C369914(v4);
  MEMORY[0x28223BE20](v5);
  sub_22C369838();
  v88 = v7 - v6;
  v8 = sub_22C36BA0C();
  v82 = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v89 = (v11 - v10);
  v12 = sub_22C36BA0C();
  v84 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(v12);
  sub_22C36985C();
  MEMORY[0x28223BE20](v13);
  sub_22C369838();
  v87 = (v15 - v14);
  v81 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v16);
  v86 = &v80 - v17;
  v18 = sub_22C36BA0C();
  v85 = type metadata accessor for PromptTreeIdentifier.TranscriptReference(v18);
  sub_22C36985C();
  MEMORY[0x28223BE20](v19);
  sub_22C369838();
  v83 = v21 - v20;
  v22 = sub_22C36BA0C();
  type metadata accessor for PromptTreeIdentifier(v22);
  sub_22C36985C();
  MEMORY[0x28223BE20](v23);
  sub_22C369ABC();
  v26 = v24 - v25;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = (&v80 - v29);
  v31 = MEMORY[0x28223BE20](v28);
  v33 = (&v80 - v32);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v80 - v35;
  MEMORY[0x28223BE20](v34);
  sub_22C37EBC0();
  MEMORY[0x28223BE20](v37);
  v38 = sub_22C3A5908(&qword_27D9BCBB0, &qword_22C9166E8);
  sub_22C369914(v38);
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v39);
  sub_22C3721C8();
  v41 = v0 + *(v40 + 56);
  sub_22C48A668(v90, v0);
  sub_22C48A668(v91, v41);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C36A930();
      v51 = sub_22C36D39C();
      sub_22C48A668(v51, v52);
      if (sub_22C48AF5C() != 1)
      {
        sub_22C36DD28(v1, &qword_27D9BCBA8, &qword_22C9166E0);
        goto LABEL_33;
      }

      v53 = v41;
      v54 = v86;
      sub_22C48A6F0(v53, v86);
      v55 = sub_22C36EBF0();
      sub_22C487560(v55, v56, v57, v58, v59, v60, v61, v62, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
      if (v63 & 1) != 0 && (sub_22C902CFC())
      {
        v64 = *(v81 + 36);
        v65 = *(v1 + v64);
        v66 = *(v1 + v64 + 8);
        v67 = (v54 + v64);
        if (v65 != *v67 || v66 != v67[1])
        {
          sub_22C90B4FC();
        }
      }

      v69 = sub_22C371530();
      sub_22C36DD28(v69, v70, &qword_22C9166E0);
      sub_22C36DD28(v1, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_37;
    case 2u:
      sub_22C36A930();
      sub_22C48A668(v0, v36);
      if (sub_22C48AF5C() == 2)
      {
        v49 = *(v41 + 16);
        v92[0] = *v41;
        v92[1] = v49;
        v92[2] = *(v41 + 32);
        v93 = *(v41 + 48);
        sub_22C487FDC();
        sub_22C48A6C0(v92);
        sub_22C48A6C0(v36);
        sub_22C48AE78();
        goto LABEL_42;
      }

      sub_22C48A6C0(v36);
      goto LABEL_33;
    case 3u:
      sub_22C36A930();
      sub_22C48A668(v0, v33);
      if (sub_22C48AF5C() != 3)
      {
        sub_22C38A8D8();
        goto LABEL_32;
      }

      sub_22C379FEC();
      v50 = v87;
      sub_22C48A058(v41, v87);
      if (sub_22C48865C(*v33, *v50) & 1) != 0 && (sub_22C901F6C())
      {
        sub_22C48819C(*(v33 + *(v84 + 24)), *(v50 + *(v84 + 24)));
      }

      sub_22C370164();
      sub_22C48A004();
      goto LABEL_41;
    case 4u:
      sub_22C36A930();
      v44 = sub_22C36BA00();
      sub_22C48A668(v44, v45);
      if (sub_22C48AF5C() != 4)
      {
        sub_22C48AE90();
        goto LABEL_32;
      }

      sub_22C36BC98();
      v46 = v41;
      v47 = v89;
      sub_22C48A058(v46, v89);
      if (sub_22C48819C(*v30, *v47))
      {
        sub_22C46D610();
        if (v48)
        {
          sub_22C90962C();
        }
      }

      sub_22C37B9E0();
      sub_22C48A004();
      sub_22C36BBCC();
      sub_22C48A004();
LABEL_37:
      sub_22C48AE78();
      goto LABEL_42;
    case 5u:
      sub_22C36A930();
      sub_22C48A668(v0, v26);
      if (sub_22C48AF5C() == 5)
      {
        sub_22C38B8CC();
        sub_22C48A058(v41, v88);
        sub_22C485EC4();
        sub_22C48AEF0();
        sub_22C48A004();
        sub_22C48A004();
        sub_22C48AE78();
        goto LABEL_42;
      }

      sub_22C48AEA8();
      goto LABEL_32;
    default:
      sub_22C36A930();
      v42 = sub_22C36BAFC();
      sub_22C48A668(v42, v43);
      if (sub_22C48AF5C())
      {
        sub_22C369CFC();
LABEL_32:
        sub_22C48A004();
LABEL_33:
        sub_22C36DD28(v0, &qword_27D9BCBB0, &qword_22C9166E8);
      }

      else
      {
        sub_22C376664();
        sub_22C48A058(v41, v83);
        v71 = sub_22C37335C();
        sub_22C487560(v71, v72, v73, v74, v75, v76, v77, v78, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91);
        if (v79)
        {
          sub_22C902CFC();
        }

        sub_22C369CFC();
        sub_22C48A004();
        sub_22C369CFC();
LABEL_41:
        sub_22C48A004();
        sub_22C48AE78();
LABEL_42:
        sub_22C48A004();
      }

      sub_22C36CC48();
      return;
  }
}

void sub_22C489574()
{
  sub_22C36BA7C();
  v40 = v4;
  v41 = v0;
  v39[2] = type metadata accessor for PromptTreeIdentifier.TurnChange(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v5);
  v6 = sub_22C371770();
  v39[1] = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(v6);
  sub_22C36985C();
  MEMORY[0x28223BE20](v7);
  sub_22C369838();
  sub_22C37BDA4();
  v8 = type metadata accessor for PromptTreeIdentifier.ContextSubItem(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = (v11 - v10);
  sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  sub_22C36985C();
  sub_22C36D5A8();
  MEMORY[0x28223BE20](v13);
  v15 = v39 - v14;
  type metadata accessor for PromptTreeIdentifier.TranscriptReference(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v16);
  sub_22C369838();
  sub_22C3881C0();
  type metadata accessor for PromptTreeIdentifier(0);
  sub_22C36985C();
  MEMORY[0x28223BE20](v17);
  sub_22C369838();
  v20 = v19 - v18;
  sub_22C36A930();
  sub_22C48A668(v41, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22C48A6F0(v20, v15);
      sub_22C48AFCC();
      sub_22C487808();
      sub_22C902D0C();
      sub_22C373344();
      sub_22C48409C(v34, v35, MEMORY[0x277D1D808]);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C909FFC();
      sub_22C36DD28(v15, &qword_27D9BCBA8, &qword_22C9166E0);
      goto LABEL_12;
    case 2u:
      v27 = *(v20 + 16);
      v43 = *v20;
      v44 = v27;
      v45 = *(v20 + 32);
      v46 = *(v20 + 48);
      v28 = v40;
      v29 = v40;
      MEMORY[0x2318B8B10](2);
      sub_22C374168(&v43, *(&v44 + 1));
      sub_22C36A948();
      MEMORY[0x28223BE20](v30);
      sub_22C369838();
      sub_22C375E48();
      (*(v31 + 16))(v29);
      sub_22C48A760();
      sub_22C90AECC();
      sub_22C90AEBC();
      sub_22C48A7B4(&v42);
      sub_22C48A9B4(v28, *(&v45 + 1));
      sub_22C4719E8();
      sub_22C48A6C0(&v43);
      goto LABEL_12;
    case 3u:
      sub_22C379FEC();
      sub_22C48A058(v20, v12);
      sub_22C48AFCC();
      sub_22C48A828(v1, *v12);
      sub_22C901FAC();
      sub_22C48AEC0();
      sub_22C48409C(v32, v33, MEMORY[0x277D1C348]);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C48A9B4(v1, *(v12 + *(v8 + 24)));
      sub_22C38A8D8();
      goto LABEL_11;
    case 4u:
      sub_22C36BC98();
      v23 = sub_22C3819EC();
      sub_22C48A058(v23, v24);
      sub_22C48AFCC();
      sub_22C48A9B4(v1, *v3);
      sub_22C471960(v1, *(v3 + 8));
      sub_22C90963C();
      sub_22C388664();
      sub_22C48409C(v25, v26, MEMORY[0x277D72E20]);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C48AE90();
      goto LABEL_11;
    case 5u:
      sub_22C38B8CC();
      sub_22C48A058(v20, v1);
      MEMORY[0x2318B8B10](5);
      v36 = *v1;
      if ((v36 - 3) >= 4u)
      {
        MEMORY[0x2318B8B10](1);
      }

      else
      {
        v36 = qword_22C9167B8[(v36 - 3)];
      }

      MEMORY[0x2318B8B10](v36);
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C909FFC();
      sub_22C90069C();
      sub_22C48AED8();
      sub_22C48409C(v37, v38, MEMORY[0x277CC9600]);
      sub_22C371530();
      sub_22C909F8C();
      sub_22C48AEA8();
      goto LABEL_11;
    default:
      sub_22C376664();
      sub_22C48A058(v20, v2);
      sub_22C48AFCC();
      sub_22C487808();
      sub_22C902D0C();
      sub_22C373344();
      sub_22C48409C(v21, v22, MEMORY[0x277D1D808]);
      sub_22C36A724();
      sub_22C909F8C();
      sub_22C369CFC();
LABEL_11:
      sub_22C48A004();
LABEL_12:
      sub_22C36CC48();
      return;
  }
}

uint64_t sub_22C489B38(uint64_t (*a1)(_BYTE *))
{
  sub_22C37B5C8();
  a1(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C489B80(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C488960(v2);
  return sub_22C90B66C();
}

unint64_t sub_22C489BC4()
{
  result = qword_27D9BCB58;
  if (!qword_27D9BCB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCB58);
  }

  return result;
}

uint64_t sub_22C489DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

uint64_t sub_22C489F0C(uint64_t a1)
{
  result = sub_22C48409C(&qword_27D9BCB90, type metadata accessor for PromptTreeIdentifier, &unk_22C9165AC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C489F64(uint64_t a1)
{
  result = sub_22C48409C(&qword_27D9BC4A0, type metadata accessor for PromptTreeIdentifier.Label, &unk_22C916664);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22C48A004()
{
  v1 = sub_22C3704C4();
  v2(v1);
  sub_22C36985C();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_22C48A058(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C48A0B0@<X0>(uint64_t *a1@<X8>)
{
  sub_22C90069C();
  sub_22C369824();
  MEMORY[0x28223BE20](v2);
  sub_22C369838();
  sub_22C375E48();
  v3 = swift_allocObject();
  sub_22C90068C();
  v4 = sub_22C90065C();
  v6 = v5;
  v7 = sub_22C37170C();
  v8(v7);
  *(v3 + 16) = v4;
  *(v3 + 24) = v6;
  *(v3 + 32) = 3;
  *a1 = v3;
  v9 = *MEMORY[0x277D1D7E8];
  sub_22C902D0C();
  sub_22C36985C();
  return (*(v10 + 104))(a1, v9);
}

uint64_t sub_22C48A20C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22C36CA70(v2 + 16, v6);

  v4 = sub_22C37EF10();
  a2(v4);
}

uint64_t sub_22C48A2EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  if (a1 < 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v24 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v25 = a2 & 0x7FFFFFFFFFFFFFFFLL;
    v26 = *(v25 + 24);
    if (v24)
    {
      if (v24 == 1)
      {
        if (v26 != 1)
        {
          return 0;
        }
      }

      else if (v24 == 2)
      {
        if (v26 != 2)
        {
          return 0;
        }
      }

      else
      {
        if (v26 < 3)
        {
          return 0;
        }

        v27 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *(v25 + 16) && v24 == v26;
        if (!v27 && (sub_22C90B4FC() & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v26)
    {
      return 0;
    }

    v28 = sub_22C36BAFC();
    v29 = a5(v28);

    return v29 & 1;
  }

  if (a2 < 0)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  v9 = a3(v7);
  result = a3(v8);
  if (v9 != result)
  {
    return 0;
  }

  if (!v9)
  {
    return 1;
  }

  v11 = v7 & 0xFFFFFFFFFFFFFF8;
  v12 = (v7 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v7 < 0)
  {
    v11 = v7;
  }

  if (v7 >> 62)
  {
    v12 = v11;
  }

  v13 = v8 & 0xFFFFFFFFFFFFFF8;
  v14 = (v8 & 0xFFFFFFFFFFFFFF8) + 32;
  if (v8 < 0)
  {
    v13 = v8;
  }

  if (v8 >> 62)
  {
    v14 = v13;
  }

  if (v12 == v14)
  {
    return 1;
  }

  if ((v9 & 0x8000000000000000) == 0)
  {

    for (i = 4; ; ++i)
    {
      v16 = i - 4;
      v17 = i - 3;
      if (__OFADD__(i - 4, 1))
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x2318B8460](i - 4, v7);
        v18 = result;
      }

      else
      {
        if (v16 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v18 = *(v7 + 8 * i);
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x2318B8460](i - 4, v8);
      }

      else
      {
        if (v16 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v19 = *(v8 + 8 * i);
      }

      sub_22C36CA70(v18 + 16, v32);
      v20 = *(v18 + 16);
      sub_22C36CA70(v19 + 16, v31);
      v21 = *(v19 + 16);

      v22 = a4(v20, v21);

      if ((v22 & 1) == 0)
      {

        return 0;
      }

      if (v17 == v9)
      {

        return 1;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22C48A608(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{

  v5 = sub_22C38674C();
  sub_22C48AC18(v5, v6, a2, a3);
}

uint64_t sub_22C48A668(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C48A6F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BCBA8, &qword_22C9166E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_22C48A760()
{
  result = qword_27D9BCBD0;
  if (!qword_27D9BCBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BCBD0);
  }

  return result;
}

uint64_t sub_22C48A828(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 61)
  {
    case 1uLL:
      MEMORY[0x2318B8B10](1);

      return sub_22C90B5EC();
    case 2uLL:
      MEMORY[0x2318B8B10](2);

      sub_22C90B5EC();
      v6 = sub_22C37F11C();
      sub_22C48A20C(v6, v7);
      goto LABEL_8;
    case 3uLL:
      MEMORY[0x2318B8B10](3);

      sub_22C48A5B0(a1);
LABEL_8:

    case 4uLL:
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v4 = sub_22C37F11C();
      goto LABEL_15;
    case 5uLL:
      v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](5);
      v9 = sub_22C36BBCC();
      sub_22C48D778(v9, v10, v8);
      v4 = sub_22C37F11C();
LABEL_15:
      result = sub_22C48A20C(v4, v5);
      break;
    default:
      MEMORY[0x2318B8B10](0);

      sub_22C36BBCC();
      sub_22C909FFC();

      break;
  }

  return result;
}

uint64_t sub_22C48A9B4(uint64_t a1, unint64_t a2)
{
  v6 = sub_22C3704C4();
  v7 = type metadata accessor for PromptTreeIdentifier(v6);
  v8 = sub_22C369914(v7);
  MEMORY[0x28223BE20](v8);
  v9 = sub_22C371770();
  v10 = type metadata accessor for PromptTreeIdentifier.Label(v9);
  v11 = sub_22C369914(v10);
  MEMORY[0x28223BE20](v11);
  sub_22C369838();
  sub_22C3881C0();
  switch(a2 >> 61)
  {
    case 1uLL:
      swift_projectBox();
      sub_22C377C74();
      sub_22C48A668(v18, v4);
      sub_22C48AF94();
      sub_22C48640C();
      sub_22C387074();
      return sub_22C48A004();
    case 2uLL:
      sub_22C3A5908(&qword_27D9BC420, &qword_22C919300);
      swift_projectBox();
      sub_22C36A930();
      sub_22C48A668(v15, v3);
      MEMORY[0x2318B8B10](2);

      sub_22C489574();
      v16 = sub_22C37FD3C();
      sub_22C48A20C(v16, v17);

      sub_22C48AE78();
      return sub_22C48A004();
    case 3uLL:
      MEMORY[0x2318B8B10](3);

      sub_22C48A5DC(v2);

    case 4uLL:
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v13 = sub_22C37FD3C();
      goto LABEL_13;
    case 5uLL:
      v19 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](5);
      v20 = sub_22C36BAFC();
      sub_22C48D778(v20, v21, v19);
      v13 = sub_22C37FD3C();
LABEL_13:
      result = sub_22C48A20C(v13, v14);
      break;
    default:
      MEMORY[0x2318B8B10](0);

      sub_22C36BAFC();
      sub_22C909FFC();

      break;
  }

  return result;
}

uint64_t sub_22C48AC18(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    MEMORY[0x2318B8B10](1);
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
      }

      else
      {
        if (v8 != 2)
        {
          MEMORY[0x2318B8B10](2);
          sub_22C909FFC();
          goto LABEL_13;
        }

        v9 = 3;
      }
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x2318B8B10](v9);
LABEL_13:
    v10 = sub_22C374404();
    return a4(v10);
  }

  MEMORY[0x2318B8B10](0);

  v5 = sub_22C36BBCC();
  a3(v5);
}

uint64_t sub_22C48AD04(uint64_t a1)
{
  result = sub_22C902D0C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptTreeIdentifier.TypeIdentifierReference(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PromptTreeIdentifier.TurnChange(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22C48ADB4(uint64_t a1)
{
  result = sub_22C901FAC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22C48AF20(uint64_t a1, ...)
{

  return sub_22C909F8C();
}

uint64_t sub_22C48AF40()
{

  return sub_22C370B74(v1 + v2, 3, v0);
}

uint64_t sub_22C48AF5C()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22C48AF74()
{
}

void sub_22C48AF94()
{

  JUMPOUT(0x2318B8B10);
}

void sub_22C48AFCC()
{

  JUMPOUT(0x2318B8B10);
}

unint64_t sub_22C48AFE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C902D0C();
  v97 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v91 - v8;
  v10 = type metadata accessor for PromptTreeIdentifier.Label(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (v91 - v15);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v91 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v91 - v20;
  if (!*(a2 + 16) || (v22 = sub_22C62832C(a1), (v23 & 1) == 0))
  {
    sub_22C48B76C(a1, v21);
    if (swift_getEnumCaseMultiPayload())
    {
LABEL_5:
      v25 = v21;
LABEL_6:
      sub_22C48B7D0(v25);
      return 0xF000000000000007;
    }

    v96 = a2;
    sub_22C48B76C(v21, v19);
    v27 = v97;
    v28 = sub_22C369D14();
    v30 = v29(v28);
    v31 = v30;
    if (v30 == *MEMORY[0x277D1D7E8])
    {
      v32 = sub_22C369D14();
      v33(v32);
      v34 = *v19;
      if (*(*v19 + 32) != 4)
      {

        goto LABEL_5;
      }

      v91[1] = *v19;
      v92 = v21;
      v36 = *(v34 + 16);
      v35 = *(v34 + 24);
      v95 = swift_allocBox();
      v38 = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = v36;
      *(v39 + 24) = v35;
      *(v39 + 32) = 4;
      *v38 = v39;
      v40 = *(v27 + 104);
      v41 = v38;
      v42 = v36;
      v40(v41, v31, v4);
      *v16 = v95;
      v40(v16, *MEMORY[0x277D1D7A0], v4);
      swift_storeEnumTagMultiPayload();

      v24 = sub_22C605458(v16, v96);
      sub_22C48B7D0(v16);
      if ((v24 & 0xF000000000000007) == 0xD000000000000007)
      {
        v43 = *(v36 + 16);
        v44 = v92;
        if (v43)
        {
          v45 = *(v97 + 16);
          v46 = *(v97 + 80);
          v91[0] = v42;
          v47 = (v42 + ((v46 + 32) & ~v46));
          v93 = *(v97 + 72);
          v94 = v45;
          v48 = (v97 + 8);
          v95 = MEMORY[0x277D84F90];
          v97 += 16;
          do
          {
            v49 = v94;
            v94(v9, v47, v4);
            v49(v13, v9, v4);
            swift_storeEnumTagMultiPayload();
            v50 = sub_22C48AFE4(v13, v96);
            sub_22C48B7D0(v13);
            (*v48)(v9, v4);
            if ((~v50 & 0xF000000000000007) != 0)
            {
              v51 = v95;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22C591324();
                v51 = v55;
              }

              v53 = *(v51 + 16);
              v52 = *(v51 + 24);
              v95 = v51;
              if (v53 >= v52 >> 1)
              {
                sub_22C36A958(v52);
                sub_22C591324();
                v95 = v56;
              }

              v54 = v95;
              *(v95 + 16) = v53 + 1;
              *(v54 + 8 * v53 + 32) = v50;
              v44 = v92;
            }

            v47 += v93;
            --v43;
          }

          while (v43);
          v66 = *(v91[0] + 16);
          v67 = v95;
        }

        else
        {
          v66 = 0;
          v67 = MEMORY[0x277D84F90];
        }

        if (*(v67 + 16) != v66)
        {

          v25 = v44;
          goto LABEL_6;
        }

        v68 = v67;
        v69 = swift_allocObject();
        *(v69 + 16) = 91;
        *(v69 + 24) = 0xE100000000000000;
        sub_22C591324();
        v71 = v70;
        v73 = *(v70 + 16);
        v72 = *(v70 + 24);
        if (v73 >= v72 >> 1)
        {
          sub_22C36A958(v72);
          sub_22C591324();
          v71 = v88;
        }

        *(v71 + 16) = v73 + 1;
        *(v71 + 8 * v73 + 32) = v69;
        v74 = sub_22C3DB9B0(v68);

        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_22C912A90;
        sub_22C3A5908(&qword_27D9BB770, qword_22C90FE80);
        sub_22C369AEC();
        v76 = swift_allocObject();
        *(v76 + 16) = v74;
        *(v75 + 32) = v76;
        sub_22C369AEC();
        v77 = swift_allocObject();
        sub_22C369AEC();
        v78 = swift_allocObject();
        *(v78 + 16) = v75 | 0x8000000000000000;
        *(v77 + 16) = v78;
        v79 = v77 | 0x6000000000000000;
        v80 = *(v71 + 16);
        v81 = v80 + 1;
        if (v80 >= *(v71 + 24) >> 1)
        {
          sub_22C591324();
          v71 = v89;
        }

        *(v71 + 16) = v81;
        *(v71 + 8 * v80 + 32) = v79;
        v82 = swift_allocObject();
        *(v82 + 16) = 93;
        *(v82 + 24) = 0xE100000000000000;
        v83 = *(v71 + 24);
        v84 = v80 + 2;
        if (v84 > (v83 >> 1))
        {
          sub_22C36A958(v83);
          sub_22C591324();
          v71 = v90;
        }

        *(v71 + 16) = v84;
        *(v71 + 8 * v81 + 32) = v82;
        v85 = sub_22C3DB9B0(v71);

        sub_22C369AEC();
        v86 = swift_allocObject();

        sub_22C369AEC();
        v87 = swift_allocObject();
        *(v87 + 16) = v85;
        *(v86 + 16) = v87;
        v24 = v86 | 0x6000000000000000;
      }

      else
      {
      }

      v63 = v92;
    }

    else
    {
      if (v30 != *MEMORY[0x277D1D7A0])
      {
        v64 = sub_22C369D14();
        v65(v64);
        goto LABEL_5;
      }

      v57 = v97;
      v58 = sub_22C369D14();
      v59(v58);
      v60 = swift_projectBox();
      v61 = v21;
      v62 = *(v57 + 16);
      v62(v7, v60, v4);
      v62(v13, v7, v4);
      swift_storeEnumTagMultiPayload();
      v24 = sub_22C48AFE4(v13, v96);
      sub_22C48B7D0(v13);
      (*(v57 + 8))(v7, v4);

      v63 = v61;
    }

    sub_22C48B7D0(v63);
    return v24;
  }

  v24 = *(*(a2 + 56) + 8 * v22);
  sub_22C454710(v24);
  return v24;
}

uint64_t sub_22C48B76C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C48B7D0(uint64_t a1)
{
  v2 = type metadata accessor for PromptTreeIdentifier.Label(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C48B850(uint64_t a1)
{
  sub_22C371798();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_22C48B87C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4 >> 62;
  if (v5)
  {
    if (v5 != 1)
    {
      return result;
    }

    *v4 = 0x8000000000000000;
    _s3BoxCMa_0(0, *(result + 16), *(result + 24), a4);
    if (sub_22C90B4BC())
    {

      sub_22C48B9B8();
    }
  }

  else
  {
    *v4 = 0x8000000000000000;
    _s3BoxCMa(0, *(result + 16), *(result + 24), a4);
    if (sub_22C90B4BC())
    {

      sub_22C48B934();
    }
  }
}

uint64_t sub_22C48B934()
{
  sub_22C369D20();
  sub_22C369D20();
  v1 = sub_22C490608();
  swift_beginAccess();
  *(v0 + 16) = v1;
}

uint64_t sub_22C48B9B8()
{
  sub_22C369D20();
  v2 = *(v1 + 80);
  sub_22C369D20();
  v4 = *(v3 + 88);
  type metadata accessor for PromptTree(0, v2, v4, v5);
  v6 = sub_22C909E9C();
  v7 = sub_22C490324(v6, v2, v4);

  *(v0 + 16) = v7;
}

uint64_t sub_22C48BA54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      type metadata accessor for EitherBox(0, a2, a3, a4);
      return sub_22C90A63C();
    }

    v7 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v9 = sub_22C48BCCC(v7, a2, a3, v8);
  }

  else
  {
    swift_beginAccess();
    v10 = *(a1 + 16);

    v9 = sub_22C48BB2C(v10, a2, a3, v11);
  }

  return v9;
}

uint64_t sub_22C48BB2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  switch(a1 >> 61)
  {
    case 2uLL:
      _s3BoxCMa(255, a2, a3, a4);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v11 = (swift_projectBox() + *(TupleTypeMetadata2 + 48));
      goto LABEL_9;
    case 3uLL:
      v7 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      type metadata accessor for EitherBox(255, a2, a3, a4);
      sub_22C90B48C();
      swift_allocObject();

      v8 = sub_22C90A60C();
      *v9 = v7 | 0x4000000000000000;
      goto LABEL_10;
    case 4uLL:
      v11 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 24);
      goto LABEL_9;
    case 5uLL:
      v11 = ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 32);
LABEL_9:
      v12 = *v11;
      type metadata accessor for EitherBox(255, a2, a3, a4);
      sub_22C90B48C();
      swift_allocObject();

      v8 = sub_22C90A60C();
      *v13 = v12;
LABEL_10:
      sub_22C90A68C();
      result = v8;
      break;
    default:
      type metadata accessor for EitherBox(0, a2, a3, a4);

      result = sub_22C90A63C();
      break;
  }

  return result;
}

uint64_t sub_22C48BCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < 0)
  {
    v13 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    type metadata accessor for EitherBox(255, a2, a3, a4);
    sub_22C90B48C();
    swift_allocObject();
    v12 = sub_22C90A60C();
    *v14 = v13 | 0x4000000000000000;
    sub_22C90A68C();
  }

  else
  {
    v16[5] = *(a1 + 16);
    MEMORY[0x28223BE20](a1);
    v16[2] = a2;
    v16[3] = a3;
    _s3BoxCMa(255, a2, a3, v6);
    v7 = sub_22C90A68C();
    v9 = type metadata accessor for EitherBox(0, a2, a3, v8);

    WitnessTable = swift_getWitnessTable();
    v12 = sub_22C48FF50(sub_22C48C570, v16, v7, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  }

  return v12;
}

uint64_t sub_22C48BE48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(a1 + 16);
  swift_beginAccess();
  v6 = *(a2 + 16);
  v8 = *(v2 + 80);
  v7 = *(v2 + 88);

  sub_22C48C930(v5, v6, v8, v7);
  LOBYTE(v7) = v9;

  return v7 & 1;
}

uint64_t sub_22C48BEEC(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = *(v3 + 80);
  v6 = *(v3 + 88);

  sub_22C48D068(a1, v4, v5, v6);
}

uint64_t sub_22C48BF8C()
{
  sub_22C369D20();
  sub_22C369D20();
  sub_22C37178C();
  sub_22C48BA54(v1, v2, v3, v4);

  sub_22C48B934();
  sub_22C37178C();
  v9 = type metadata accessor for EitherBox(v5, v6, v7, v8);
  sub_22C90A68C();
  while (1)
  {
    sub_22C48C6B8();
    sub_22C36A96C();
    sub_22C38B8E4();
    if ((~v21 & 0xF000000000000007) == 0)
    {
      break;
    }

    sub_22C37178C();
    sub_22C48BA54(v10, v11, v12, v13);
    sub_22C48C558(v21);
    v14 = sub_22C373368();
    sub_22C36BCB0(v14, v15, v16);
    sub_22C48B87C(v9, v17, v18, v19);
  }

  return v0;
}

uint64_t sub_22C48C0A8()
{
  sub_22C48BF8C();
  sub_22C371798();

  return swift_deallocClassInstance();
}

uint64_t sub_22C48C1B4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 88);

  sub_22C37178C();
  LOBYTE(v3) = sub_22C48CE88(v4, v5, v6, v3);

  return v3 & 1;
}

uint64_t sub_22C48C21C()
{
  sub_22C369D20();
  sub_22C369D20();
  v1 = *(v0 + 88);

  sub_22C37178C();
  sub_22C48D4C8(v2, v3, v4, v1);
}

uint64_t sub_22C48C298()
{
  sub_22C369D20();
  sub_22C369D20();
  sub_22C37178C();
  sub_22C48BA54(v1, v2, v3, v4);

  sub_22C48B9B8();
  sub_22C37178C();
  v9 = type metadata accessor for EitherBox(v5, v6, v7, v8);
  sub_22C90A68C();
  while (1)
  {
    sub_22C48C6B8();
    sub_22C36A96C();
    sub_22C38B8E4();
    if ((~v21 & 0xF000000000000007) == 0)
    {
      break;
    }

    sub_22C37178C();
    sub_22C48BA54(v10, v11, v12, v13);
    sub_22C48C558(v21);
    v14 = sub_22C373368();
    sub_22C36BCB0(v14, v15, v16);
    sub_22C48B87C(v9, v17, v18, v19);
  }

  return v0;
}

uint64_t sub_22C48C3B4()
{
  sub_22C48C298();
  sub_22C371798();

  return swift_deallocClassInstance();
}

uint64_t sub_22C48C3F8(uint64_t (*a1)(_BYTE *))
{
  sub_22C90B62C();
  a1(v3);
  return sub_22C90B66C();
}

uint64_t sub_22C48C4B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_22C90B62C();
  a4(v6);
  return sub_22C90B66C();
}

uint64_t sub_22C48C558(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_22C48C590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_22C48C5CC(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_22C48C5E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_22C48C63C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_22C48C68C(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_22C48C6B8()
{

  return swift_getWitnessTable();
}

uint64_t sub_22C48C6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C48C728(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 8))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
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

uint64_t sub_22C48C77C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22C48C808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_22C48C850(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 8))
    {
      v2 = *a1 + 122;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7A)
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

uint64_t sub_22C48C8A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_22C48C930(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A948();
  v53 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v50 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v24 = &v50 - v23;
  switch(a1 >> 61)
  {
    case 1uLL:
      if (a2 >> 61 == 1)
      {
        v39 = swift_projectBox();
        v40 = swift_projectBox();
        v41 = *(v17 + 16);
        v41(v24, v39, AssociatedTypeWitness);
        v41(v21, v40, AssociatedTypeWitness);
        swift_getAssociatedConformanceWitness();
        sub_22C90A0BC();
        v42 = *(v17 + 8);
        v42(v21, AssociatedTypeWitness);
        v42(v24, AssociatedTypeWitness);
      }

      goto LABEL_29;
    case 2uLL:
      v27 = _s3BoxCMa(255, a3, a4, v22);
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v29 = swift_projectBox();
      if (a2 >> 61 == 2)
      {
        v30 = v29;
        v31 = *(TupleTypeMetadata2 + 48);
        v51 = *(v29 + v31);
        v52 = v27;
        v32 = swift_projectBox();
        v33 = *(v32 + v31);
        v34 = v53;
        v35 = *(v53 + 16);
        v35(v14, v30, a3);
        v35(v12, v32, a3);

        sub_22C37335C();
        if (sub_22C90A0BC())
        {
          sub_22C48BE48(v51, v33);

          v36 = *(v34 + 8);
          v36(v12, a3);
          v36(v14, a3);
        }

        else
        {

          v47 = *(v34 + 8);
          v47(v12, a3);
          v47(v14, a3);
        }
      }

      goto LABEL_29;
    case 3uLL:
      if (a2 >> 61 == 3)
      {
        _s3BoxCMa_0(0, a3, a4, v22);

        v37 = sub_22C37335C();
        sub_22C48C1B4(v37, v38);
      }

      goto LABEL_29;
    case 4uLL:
      if (a2 >> 61 == 4 && *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))
      {
        goto LABEL_38;
      }

      goto LABEL_29;
    case 5uLL:
      if (a2 >> 61 != 5)
      {
        goto LABEL_29;
      }

      v43 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v44 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v45 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (*((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18) == 1)
      {
        switch(v43)
        {
          case 1:
            v46 = v44 == 1;
            goto LABEL_35;
          case 2:
            v46 = v44 == 2;
            goto LABEL_35;
          case 3:
            v46 = v44 == 3;
            goto LABEL_35;
          case 4:
            v46 = v44 == 4;
            goto LABEL_35;
          case 5:
            v46 = v44 == 5;
            goto LABEL_35;
          case 6:
            if (v44 <= 5)
            {
              v45 = 0;
            }

            if (v45 == 1)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
          default:
            v46 = v44 == 0;
LABEL_35:
            if (!v46)
            {
              LOBYTE(v45) = 0;
            }

            if (v45)
            {
              goto LABEL_38;
            }

            goto LABEL_29;
        }
      }

      if (v43 != v44)
      {
        LOBYTE(v45) = 1;
      }

      if (v45)
      {
        goto LABEL_29;
      }

LABEL_38:
      _s3BoxCMa(0, a3, a4, v22);
      v48 = sub_22C37335C();
      sub_22C48BE48(v48, v49);
      goto LABEL_29;
    default:
      if (a2 >> 61 || (*(a1 + 16) == *(a2 + 16) ? (v25 = *(a1 + 24) == *(a2 + 24)) : (v25 = 0), v25))
      {
LABEL_29:
        sub_22C36CC48();
      }

      else
      {
        sub_22C36CC48();

        sub_22C90B4FC();
      }

      return;
  }
}

uint64_t sub_22C48CE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      _s3BoxCMa(0, a3, a4, a4);

      swift_getWitnessTable();
      sub_22C37335C();
      v7 = sub_22C90A6AC();

      return v7 & 1;
    }

    return 0;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v9 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v10 = a2 & 0x7FFFFFFFFFFFFFFFLL;
  v11 = *(v10 + 24);
  if (v9)
  {
    if (v9 == 1)
    {
      if (v11 != 1)
      {
        return 0;
      }
    }

    else if (v9 == 2)
    {
      if (v11 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (v11 < 3)
      {
        return 0;
      }

      v12 = *((a1 & 0x7FFFFFFFFFFFFFFFLL) + 0x10) == *(v10 + 16) && v9 == v11;
      if (!v12 && (sub_22C90B4FC() & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v11)
  {
    return 0;
  }

  _s3BoxCMa_0(0, a3, a4, v11);
  v13 = sub_22C37335C();
  return sub_22C48C1B4(v13, v14) & 1;
}

uint64_t sub_22C48CFBC(uint64_t a1, char a2, unint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        if ((a4 & 1) == 0 || a3 != 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 2:
        if ((a4 & 1) == 0 || a3 != 2)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 3:
        if ((a4 & 1) == 0 || a3 != 3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 4:
        if ((a4 & 1) == 0 || a3 != 4)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 5:
        if ((a4 & 1) == 0 || a3 != 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      case 6:
        if ((a4 & 1) == 0 || a3 <= 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
      default:
        if ((a4 & 1) == 0 || a3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        break;
    }

    return 1;
  }

  else if (a4)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  else
  {
    return a1 == a3;
  }
}

void sub_22C48D068(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22C36A948();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22C36A948();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v29 - v16;
  switch(a2 >> 61)
  {
    case 1uLL:
      v26 = swift_projectBox();
      (*(v14 + 16))(v17, v26, AssociatedTypeWitness);
      MEMORY[0x2318B8B10](1);
      swift_getAssociatedConformanceWitness();
      sub_22C909F8C();
      (*(v14 + 8))(v17, AssociatedTypeWitness);
      goto LABEL_13;
    case 2uLL:
      sub_22C37178C();
      _s3BoxCMa(v20, v21, v22, v23);
      swift_getTupleTypeMetadata2();
      v24 = swift_projectBox();
      (*(v8 + 16))(v11, v24, a3);
      MEMORY[0x2318B8B10](2);

      sub_22C37178C();
      sub_22C909F8C();
      sub_22C48BEEC(a1);

      (*(v8 + 8))(v11, a3);
      goto LABEL_13;
    case 3uLL:
      MEMORY[0x2318B8B10](3);

      sub_22C48C21C();
      sub_22C36CC48();

      return;
    case 4uLL:
      MEMORY[0x2318B8B10](4);
      sub_22C90B64C();
      v19 = a1;
      goto LABEL_12;
    case 5uLL:
      v27 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v28 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      MEMORY[0x2318B8B10](5);
      sub_22C48D778(a1, v27, v28);
      v19 = a1;
LABEL_12:
      sub_22C48BEEC(v19);
LABEL_13:
      sub_22C36CC48();
      break;
    default:
      MEMORY[0x2318B8B10](0);

      sub_22C37178C();
      sub_22C909FFC();
      sub_22C36CC48();

      break;
  }
}

uint64_t sub_22C48D46C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (!a4)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    case 1:
      if (a4 == 1)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
    case 2:
      if (a4 == 2)
      {
        return 1;
      }

      return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (a4 < 3)
  {
    return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
  }

  if (a1 != a3 || a2 != a4)
  {
    return sub_22C90B4FC();
  }

  return 1;
}

uint64_t sub_22C48D4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    v8 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    MEMORY[0x2318B8B10](1);
    if (v8)
    {
      if (v8 == 1)
      {
        v9 = 1;
      }

      else
      {
        if (v8 != 2)
        {
          MEMORY[0x2318B8B10](2);
          sub_22C37178C();
          sub_22C909FFC();
          return sub_22C48C21C();
        }

        v9 = 3;
      }
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x2318B8B10](v9);
    return sub_22C48C21C();
  }

  MEMORY[0x2318B8B10](0);
  _s3BoxCMa(0, a3, a4, v6);

  swift_getWitnessTable();
  sub_22C90A69C();
}

uint64_t sub_22C48D5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  sub_22C90B62C();
  a4(v9, a1, a2, a3);
  return sub_22C90B66C();
}

uint64_t sub_22C48D644(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    switch(a1)
    {
      case 1:
        v4 = 2;
        if ((a4 & 1) != 0 && a3 == 1)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      case 2:
        v4 = 3;
        if ((a4 & 1) == 0 || a3 != 2)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 3:
        v4 = 4;
        if ((a4 & 1) == 0 || a3 != 3)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 4:
        v4 = 5;
        if ((a4 & 1) == 0 || a3 != 4)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 5:
        v4 = 6;
        if ((a4 & 1) == 0 || a3 != 5)
        {
          goto LABEL_27;
        }

        return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
      case 6:
        v4 = 7;
        if ((a4 & 1) != 0 && a3 > 5)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

        goto LABEL_27;
      default:
        v4 = 1;
        if ((a4 & 1) != 0 && !a3)
        {
          return _s30IntelligenceFlowPlannerRuntime14StepResolutionO15toEventPayloads22omittingResponseEventsSay0abC7Support7SessionO0H0V7PayloadOGSb_tFfA__0();
        }

LABEL_27:
        if (a4)
        {
          goto LABEL_28;
        }

        v6 = 0;
        break;
    }
  }

  else
  {
    if ((a4 & 1) == 0)
    {
      return a1 < a3;
    }

    v4 = 0;
LABEL_28:
    v6 = 1;
    switch(a3)
    {
      case 1:
        v6 = 2;
        break;
      case 2:
        v6 = 3;
        break;
      case 3:
        v6 = 4;
        break;
      case 4:
        v6 = 5;
        break;
      case 5:
        v6 = 6;
        break;
      case 6:
        v6 = 7;
        break;
      default:
        return v4 < v6;
    }
  }

  return v4 < v6;
}

uint64_t sub_22C48D778(uint64_t a1, uint64_t a2, char a3)
{
  v3 = a2;
  if (a3)
  {
    v3 = a2 + 1;
  }

  else
  {
    MEMORY[0x2318B8B10](0);
  }

  return MEMORY[0x2318B8B10](v3);
}

uint64_t sub_22C48D7B8(uint64_t a1, char a2)
{
  sub_22C90B62C();
  sub_22C48D778(v5, a1, a2 & 1);
  return sub_22C90B66C();
}

uint64_t sub_22C48D808(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a2)
  {
    case 0:
      if (a4)
      {
        v4 = 0;
        goto LABEL_12;
      }

      return 0;
    case 1:
      if (a4 != 1)
      {
        v4 = 1;
        goto LABEL_12;
      }

      return 0;
    case 2:
      if (a4 != 2)
      {
        v4 = 3;
LABEL_12:
        if (a4 > 2)
        {
          v5 = 2;
        }

        else
        {
          v5 = qword_22C916EA0[a4];
        }

        return v4 < v5;
      }

      return 0;
  }

  if (a4 < 3)
  {
    v4 = 2;
    goto LABEL_12;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  sub_22C38B908();
  if (sub_22C90B4FC())
  {
    return 0;
  }

  sub_22C38B908();

  return sub_22C90B4FC();
}