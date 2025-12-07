void sub_22C4B7478(uint64_t a1, void (*a2)(void *__return_ptr, void), uint64_t a3)
{
  v4 = v3;
  v66 = a3;
  v7 = type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition(0);
  v65 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v64 = &v60 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - v12;
  v14 = 0;
  v15 = MEMORY[0x277D84F90];
  v84 = 0;
  v85 = MEMORY[0x277D84F90];
  v67 = *(a1 + 16);
  v71 = &v60 - v12;
  v62 = a1;
  v61 = a2;
  while (1)
  {
    if (v14 == v67)
    {

      return;
    }

    if (v14 >= *(a1 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v16 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v17 = *(v65 + 72);
    v75 = v14;
    v74 = v17;
    sub_22C4B7E50(a1 + v16 + v17 * v14, v13);
    a2(&v81, v13);
    if (v4)
    {

      sub_22C4B7EA8(v13, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
      return;
    }

    v72 = v16;
    v18 = v83;
    v88 = v83;
    v86 = v81;
    v87 = v82;
    v19 = v84;
    v20 = v85;
    v21 = *(v85 + 16);
    v73 = v15;
    if (v84)
    {

      sub_22C7DB47C(&v86, v20 + 32, v21, (v19 + 16));
      v23 = v22;
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_34;
    }

    if (v21)
    {
      break;
    }

LABEL_34:
    sub_22C7D4904(&v86);
    v42 = v73;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22C3B67F0(0, *(v42 + 16) + 1, 1);
      v42 = v89;
    }

    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_22C3B67F0(v44 > 1, v45 + 1, 1);
      v42 = v89;
    }

    *(v42 + 16) = v45 + 1;
    v46 = v42 + 32;
    *(v42 + 32 + 8 * v45) = MEMORY[0x277D84F90];
    sub_22C4B7E50(v13, v68);
    v47 = *(v42 + 32 + 8 * v45);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 32 + 8 * v45) = v47;
    if ((v48 & 1) == 0)
    {
      sub_22C59161C();
      v47 = v56;
      *(v46 + 8 * v45) = v56;
    }

    v49 = *(v47 + 16);
    v50 = v49 + 1;
    if (v49 >= *(v47 + 24) >> 1)
    {
      sub_22C59161C();
      v47 = v57;
      *(v46 + 8 * v45) = v57;
    }

    v51 = &v90;
LABEL_57:
    v55 = *(v51 - 32);
    v14 = v75 + 1;
    *(v47 + 16) = v50;
    sub_22C4B86BC(v55, v47 + v72 + v49 * v74);
    sub_22C43627C(v81, *(&v81 + 1), v82, *(&v82 + 1), v83);
    v13 = v71;
    sub_22C4B7EA8(v71, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition);
    v15 = v42;
  }

  v63 = 0;
  v23 = 0;
  v26 = v81;
  v27 = (v85 + 64);
  v78 = v82;
  v79 = *(&v81 + 1);
  v77 = *(&v82 + 1);
  v70 = v81;
  v69 = v83;
  v76 = v21;
  while (1)
  {
    v29 = *(v27 - 4);
    v28 = *(v27 - 3);
    v31 = *(v27 - 2);
    v30 = *(v27 - 1);
    v32 = *v27;
    if (*v27)
    {
      break;
    }

    if (v88)
    {
LABEL_23:
      sub_22C4B87A4(&v86, v80);
LABEL_24:
      sub_22C480D88(v29, v28, v31, v30, v32);
      sub_22C43627C(v29, v28, v31, v30, v32);
      sub_22C43627C(v26, v79, v78, v77, v18);
      goto LABEL_31;
    }

    if (v29 == v86 && v28 == *(&v86 + 1))
    {
      sub_22C4B87A4(&v86, v80);
      v4 = v63;
      a1 = v62;
      goto LABEL_46;
    }

    v36 = sub_22C90B4FC();
    sub_22C4B87A4(&v86, v80);
    sub_22C480D88(v29, v28, v31, v30, 0);
    sub_22C43627C(v29, v28, v31, v30, 0);
    v37 = v26;
    v39 = v78;
    v38 = v79;
    v40 = v77;
LABEL_30:
    sub_22C43627C(v37, v38, v39, v40, v18);
    if (v36)
    {
      v4 = v63;
      a1 = v62;
      goto LABEL_47;
    }

LABEL_31:
    ++v23;
    v27 += 40;
    if (v76 == v23)
    {
      v4 = v63;
      a1 = v62;
      a2 = v61;
      v13 = v71;
      goto LABEL_34;
    }
  }

  if ((v88 & 1) == 0)
  {
    goto LABEL_23;
  }

  v33 = v87;
  v34 = v29 == v86 && v28 == *(&v86 + 1);
  if (!v34 && (sub_22C90B4FC() & 1) == 0)
  {
    sub_22C4B87A4(&v86, v80);
    v18 = v69;
    v26 = v70;
    goto LABEL_24;
  }

  if (v31 != v33 || v30 != *(&v33 + 1))
  {
    v36 = sub_22C90B4FC();
    sub_22C4B87A4(&v86, v80);
    sub_22C480D88(v29, v28, v31, v30, 1);
    sub_22C43627C(v29, v28, v31, v30, 1);
    v26 = v70;
    v37 = v70;
    v39 = v78;
    v38 = v79;
    v40 = v77;
    v18 = v69;
    goto LABEL_30;
  }

  sub_22C4B87A4(&v86, v80);
  v4 = v63;
  a1 = v62;
  v18 = v69;
LABEL_46:
  sub_22C480D88(v29, v28, v31, v30, v32);
  sub_22C43627C(v29, v28, v31, v30, v32);
  sub_22C43627C(v70, v79, v78, v77, v18);
LABEL_47:
  a2 = v61;
  v13 = v71;
LABEL_48:
  v42 = v73;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22C56C1C4();
    v42 = v52;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v23 < *(v42 + 16))
  {
    v53 = v42 + 32;
    sub_22C4B7E50(v13, v64);
    v47 = *(v42 + 32 + 8 * v23);
    v54 = swift_isUniquelyReferenced_nonNull_native();
    *(v42 + 32 + 8 * v23) = v47;
    if ((v54 & 1) == 0)
    {
      sub_22C59161C();
      v47 = v58;
      *(v53 + 8 * v23) = v58;
    }

    v49 = *(v47 + 16);
    v50 = v49 + 1;
    if (v49 >= *(v47 + 24) >> 1)
    {
      sub_22C59161C();
      v47 = v59;
      *(v53 + 8 * v23) = v59;
    }

    v51 = &v88;
    goto LABEL_57;
  }

LABEL_62:
  __break(1u);
}

unint64_t sub_22C4B7C64()
{
  result = qword_27D9BD188;
  if (!qword_27D9BD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD188);
  }

  return result;
}

unint64_t sub_22C4B7CB8()
{
  result = qword_27D9BD190;
  if (!qword_27D9BD190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD190);
  }

  return result;
}

unint64_t sub_22C4B7D0C()
{
  result = qword_27D9BD1A0;
  if (!qword_27D9BD1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD1A0);
  }

  return result;
}

uint64_t sub_22C4B7D60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22C3AC1A0(&qword_27D9BAF98, &qword_22C90D838);
    sub_22C4B1ACC(a2, type metadata accessor for FetchedTools.AttributedRetrievedToolDefinition, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22C4B7DFC()
{
  result = qword_27D9BD1F8;
  if (!qword_27D9BD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD1F8);
  }

  return result;
}

uint64_t sub_22C4B7E50(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C4B7EA8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4B7F48(uint64_t a1)
{
  result = sub_22C4B7FCC();
  if (v2 <= 0x3F)
  {
    result = sub_22C908AEC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22C4B7FCC()
{
  result = qword_281434258[0];
  if (!qword_281434258[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_281434258);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FetchedTools.AttributedRetrievedToolDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FetchedTools.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22C4B81F0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22C4B82A0()
{
  result = qword_27D9BD228;
  if (!qword_27D9BD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD228);
  }

  return result;
}

unint64_t sub_22C4B82F8()
{
  result = qword_27D9BD230;
  if (!qword_27D9BD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD230);
  }

  return result;
}

unint64_t sub_22C4B8350()
{
  result = qword_27D9BD238;
  if (!qword_27D9BD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD238);
  }

  return result;
}

unint64_t sub_22C4B83A8()
{
  result = qword_27D9BD240;
  if (!qword_27D9BD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD240);
  }

  return result;
}

unint64_t sub_22C4B8400()
{
  result = qword_27D9BD248;
  if (!qword_27D9BD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD248);
  }

  return result;
}

unint64_t sub_22C4B8458()
{
  result = qword_27D9BD250;
  if (!qword_27D9BD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD250);
  }

  return result;
}

unint64_t sub_22C4B84B0()
{
  result = qword_27D9BD258;
  if (!qword_27D9BD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD258);
  }

  return result;
}

unint64_t sub_22C4B8508()
{
  result = qword_27D9BD260;
  if (!qword_27D9BD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD260);
  }

  return result;
}

unint64_t sub_22C4B8560()
{
  result = qword_27D9BD268;
  if (!qword_27D9BD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD268);
  }

  return result;
}

unint64_t sub_22C4B85B8()
{
  result = qword_27D9BD270;
  if (!qword_27D9BD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD270);
  }

  return result;
}

unint64_t sub_22C4B8610()
{
  result = qword_27D9BD278;
  if (!qword_27D9BD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD278);
  }

  return result;
}

unint64_t sub_22C4B8668()
{
  result = qword_27D9BD280;
  if (!qword_27D9BD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD280);
  }

  return result;
}

uint64_t sub_22C4B86BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22C369A48();
  v4(v3);
  sub_22C36985C();
  v5 = sub_22C36BA00();
  v6(v5);
  return a2;
}

uint64_t sub_22C4B8714(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BD288, &qword_22C917EB8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4B878C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_22C43627C(result, a2, a3, a4, a5 & 1);
  }

  return result;
}

void sub_22C4B8820(int a1@<W8>)
{
  *(v2 - 200) = a1;
  v3 = *(v2 - 216);
  *(v2 - 216) = v3 + 8;
  *(v2 - 208) = v3 + 104;
  *(v2 - 120) = v1;
  *(v2 - 224) = v1 - 8;
}

void *sub_22C4B8858@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void (*a3)(void *__return_ptr, void, void, void, void)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v163 = a3;
  v152 = a5;
  v162 = sub_22C90941C();
  sub_22C369824();
  v150 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v151 = v11 - v10;
  v161 = sub_22C3A5908(&qword_27D9BC398, &qword_22C912AC8);
  sub_22C36985C();
  MEMORY[0x28223BE20](v12);
  sub_22C369ABC();
  v160 = (v13 - v14);
  sub_22C369930();
  MEMORY[0x28223BE20](v15);
  v159 = (&v126 - v16);
  sub_22C369930();
  MEMORY[0x28223BE20](v17);
  v158 = (&v126 - v18);
  sub_22C369930();
  MEMORY[0x28223BE20](v19);
  v157 = &v126 - v20;
  v166 = sub_22C90981C();
  sub_22C369824();
  v180 = v21;
  MEMORY[0x28223BE20](v22);
  sub_22C369ABC();
  v156 = v23 - v24;
  sub_22C369930();
  MEMORY[0x28223BE20](v25);
  v146 = &v126 - v26;
  v27 = sub_22C3A5908(&qword_27D9BC1E8, &qword_22C9123B0);
  MEMORY[0x28223BE20](v27 - 8);
  sub_22C369ABC();
  v30 = v28 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v126 - v32;
  v34 = sub_22C908EAC();
  sub_22C369824();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22C369838();
  v40 = v39 - v38;
  v165 = a1;
  sub_22C4826EC(v33);
  v41 = sub_22C370B74(v33, 1, v34);
  v147 = v34;
  if (v41 == 1)
  {
    sub_22C36DD28(v33, &qword_27D9BC1E8, &qword_22C9123B0);
  }

  else
  {
    (*(v36 + 32))(v40, v33, v34);
    sub_22C4B93B0(v40, a2, a4);
    (*(v36 + 8))(v40, v34);
  }

  v42 = a2[8];
  v43 = a2[9];
  sub_22C374168(a2 + 5, v42);
  v44 = v164;
  result = (*(v43 + 16))(v177, v165, v163, a4, v42, v43);
  if (!v44)
  {
    v164 = a4;
    v173 = v177[0];
    v174 = v177[1];
    v175 = v178;
    v176 = v179;
    if (BYTE8(v178) == 1)
    {
LABEL_6:
      sub_22C3E022C(&v173);
      v46 = type metadata accessor for _PromptToolData(0);
      v47 = v152;
      v48 = 1;
      return sub_22C36C640(v47, v48, 1, v46);
    }

    v132 = v36;
    v133 = v30;
    v137 = *(&v173 + 1);
    v49 = v173;
    v138 = 0;
    v50 = v174;
    v51 = v175;
    v52 = a2[8];
    v53 = a2[9];
    sub_22C374168(a2 + 5, v52);
    v163 = *(v53 + 32);
    v148 = v49;
    v54 = v137;

    v135 = v50;
    v136 = v51;
    v149 = *(&v50 + 1);
    sub_22C456C94(v54, v50, *(&v50 + 1));
    v55 = v138;
    (v163)(&v169, v165, v164, v52, v53);
    if (v55)
    {
      sub_22C456CE4(v148, v54, v135, v149, v136, 0);
      return sub_22C3E022C(&v173);
    }

    else
    {
      v168[0] = v169;
      v168[1] = v170;
      v168[2] = v171;
      v168[3] = v172;
      v56 = v169;
      v57 = v170;
      v58 = v171;
      v59 = BYTE8(v171);
      sub_22C456C30(v169, *(&v169 + 1), v170, *(&v170 + 1), v171, SBYTE8(v171));
      sub_22C3E022C(v168);
      if (v59 == 1)
      {
        sub_22C456CE4(v148, v137, v135, v149, v136, 0);
        goto LABEL_6;
      }

      v127 = v58;
      v128 = *(&v57 + 1);
      v129 = v57;
      v130 = *(&v56 + 1);
      v131 = v56;
      v138 = 0;
      v145 = v176;
      v60 = *(v176 + 16);
      v61 = MEMORY[0x277D84F90];
      v62 = v148;
      v63 = v149;
      if (!v60)
      {
        v99 = MEMORY[0x277D84F90];
LABEL_34:
        v167 = v61;
        v100 = *(v99 + 16);
        if (v100)
        {
          v163 = *(v180 + 16);
          v164 = v99;
          v101 = v99 + ((*(v180 + 80) + 32) & ~*(v180 + 80));
          v102 = *(v180 + 72);
          v160 = (v150 + 8);
          v161 = v102;
          v180 += 16;
          v103 = (v180 - 8);
          v104 = v151;
          v105 = v146;
          do
          {
            v106 = v166;
            v107 = (v163)(v105, v101, v166);
            MEMORY[0x2318B6CE0](v107);
            sub_22C9093DC();
            (*v160)(v104, v162);
            (*v103)(v105, v106);
            sub_22C3CD230();
            v101 += v161;
            --v100;
          }

          while (v100);

          v62 = v148;
          v63 = v149;
        }

        else
        {
        }

        v108 = v133;
        sub_22C4826EC(v133);
        v109 = v147;
        v110 = sub_22C370B74(v108, 1, v147);
        v111 = v151;
        if (v110 == 1)
        {
          sub_22C36DD28(v108, &qword_27D9BC1E8, &qword_22C9123B0);
          v112 = MEMORY[0x277D84FA0];
        }

        else
        {
          MEMORY[0x2318B6290]();
          (*(v132 + 8))(v108, v109);
          v112 = sub_22C9093DC();
          (*(v150 + 8))(v111, v162);
        }

        v180 = *(&v176 + 1);

        swift_retain_n();
        sub_22C3AD9E8();
        sub_22C7B539C(v112, v113);
        v114 = v165;
        sub_22C4B94EC(v165);
        sub_22C7B53C8();
        v166 = v115;
        v164 = type metadata accessor for _PromptToolData(0);
        v116 = v62;
        v117 = v152;
        v118 = v152 + *(v164 + 32);
        sub_22C4B9B30(v114, v118, type metadata accessor for RenderableTool);
        v119 = type metadata accessor for _PromptMapper._ToolPromptMap(0);
        *(v118 + *(v119 + 20)) = v145;
        *(v118 + *(v119 + 24)) = v116;

        v121 = v136;
        v120 = v137;
        v122 = v135;
        sub_22C456C94(v137, v135, v63);
        v123 = v131;
        sub_22C456CE4(v131, v130, v129, v128, v127, 0);
        sub_22C456CE4(v116, v120, v122, v63, v121, 0);
        sub_22C3E022C(&v173);
        *v117 = v123;
        v117[1] = v116;
        v124 = v166;
        v117[2] = v180;
        v117[3] = v124;
        v46 = v164;
        v125 = (v117 + *(v164 + 36));
        *v125 = v120;
        v125[1] = v122;
        v125[2] = v63;
        v125[3] = v121;
        v47 = v117;
        v48 = 0;
        return sub_22C36C640(v47, v48, 1, v46);
      }

      v167 = MEMORY[0x277D84F90];
      sub_22C3B6FA0(0, v60, 0);
      v164 = v167;
      result = sub_22C6339F8();
      v66 = result;
      v67 = v145;
      v68 = 0;
      v69 = v145 + 64;
      v141 = v180 + 32;
      v142 = (v180 + 16);
      v139 = v60;
      v140 = v64;
      v134 = v145 + 72;
      v143 = v145 + 64;
      while ((v66 & 0x8000000000000000) == 0 && v66 < 1 << *(v67 + 32))
      {
        if ((*(v69 + 8 * (v66 >> 6)) & (1 << v66)) == 0)
        {
          goto LABEL_44;
        }

        if (*(v67 + 36) != v64)
        {
          goto LABEL_45;
        }

        v154 = v64;
        v155 = 1 << v66;
        v163 = v66 >> 6;
        v144 = v65;
        v153 = v68;
        v70 = v161;
        v71 = *(v161 + 48);
        v72 = *(v67 + 56);
        v73 = (*(v67 + 48) + 16 * v66);
        v75 = *v73;
        v74 = v73[1];
        v76 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
        v77 = v157;
        sub_22C4B9B30(v72 + *(*(v76 - 8) + 72) * v66, &v157[v71], type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap);
        v78 = v158;
        *v158 = v75;
        *(v78 + 8) = v74;
        sub_22C4B9ACC(&v77[v71], v78 + *(v70 + 48));
        v79 = v159;
        sub_22C3E8FB4(v78, v159, &qword_27D9BC398, &qword_22C912AC8);
        v80 = v79[1];
        v81 = *(v70 + 48);
        v82 = v160;
        *v160 = *v79;
        *(v82 + 8) = v80;
        sub_22C4B9ACC(v79 + v81, v82 + v81);
        v83 = v82 + v81;
        v84 = v166;
        v85 = v156;
        (*v142)(v156, v83, v166);

        sub_22C36DD28(v82, &qword_27D9BC398, &qword_22C912AC8);
        sub_22C36DD28(v78, &qword_27D9BC398, &qword_22C912AC8);
        v86 = v164;
        v167 = v164;
        v88 = *(v164 + 16);
        v87 = *(v164 + 24);
        if (v88 >= v87 >> 1)
        {
          sub_22C3B6FA0(v87 > 1, v88 + 1, 1);
          v86 = v167;
        }

        *(v86 + 16) = v88 + 1;
        v89 = (*(v180 + 80) + 32) & ~*(v180 + 80);
        v164 = v86;
        result = (*(v180 + 32))(v86 + v89 + *(v180 + 72) * v88, v85, v84);
        v67 = v145;
        v90 = 1 << *(v145 + 32);
        v69 = v143;
        if (v66 >= v90)
        {
          goto LABEL_46;
        }

        v91 = *(v143 + 8 * v163);
        if ((v91 & v155) == 0)
        {
          goto LABEL_47;
        }

        if (*(v145 + 36) != v154)
        {
          goto LABEL_48;
        }

        v92 = v91 & (-2 << (v66 & 0x3F));
        if (v92)
        {
          v90 = __clz(__rbit64(v92)) | v66 & 0x7FFFFFFFFFFFFFC0;
          v63 = v149;
          v93 = v139;
        }

        else
        {
          v94 = v163 << 6;
          v95 = v163 + 1;
          v96 = (v134 + 8 * v163);
          v63 = v149;
          v93 = v139;
          while (v95 < (v90 + 63) >> 6)
          {
            v98 = *v96++;
            v97 = v98;
            v94 += 64;
            ++v95;
            if (v98)
            {
              result = sub_22C3A5038(v66, v154, v144 & 1);
              v67 = v145;
              v90 = __clz(__rbit64(v97)) + v94;
              goto LABEL_31;
            }
          }

          result = sub_22C3A5038(v66, v154, v144 & 1);
          v67 = v145;
        }

LABEL_31:
        v65 = 0;
        v68 = v153 + 1;
        v66 = v90;
        v64 = v140;
        v62 = v148;
        if (v153 + 1 == v93)
        {
          v99 = v164;
          v61 = MEMORY[0x277D84F90];
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_22C4B93B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = sub_22C90977C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22C374168(a2, a2[3]);
  sub_22C47FCDC();
  v9 = sub_22C9096FC();
  v13 = v8;
  sub_22C4FB170(v9, v10, sub_22C436434, v12, a3);

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22C4B94EC(uint64_t a1)
{
  v2 = type metadata accessor for RenderableTool(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22C908EAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4B9B30(a1, v4, type metadata accessor for RenderableTool);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_22C483C8C(v4);
    return MEMORY[0x277D84F90];
  }

  v9 = *(sub_22C3A5908(&qword_27D9BB818, qword_22C910430) + 48);
  v10 = sub_22C9036EC();
  v11 = *(v10 - 8);
  if ((*(v11 + 88))(v4, v10) != *MEMORY[0x277D1ECD0])
  {
    v16 = sub_22C9037DC();
    (*(*(v16 - 8) + 8))(&v4[v9], v16);
    (*(v11 + 8))(v4, v10);
    return MEMORY[0x277D84F90];
  }

  (*(v11 + 96))(v4, v10);
  (*(v6 + 32))(v8, v4, v5);
  v12 = sub_22C9037DC();
  (*(*(v12 - 8) + 8))(&v4[v9], v12);
  if (sub_22C908E7C() == 0x73656D5F646E6573 && v13 == 0xEC00000065676173)
  {
  }

  else
  {
    v15 = sub_22C90B4FC();

    if ((v15 & 1) == 0)
    {
      (*(v6 + 8))(v8, v5);
      return MEMORY[0x277D84F90];
    }
  }

  sub_22C3A5908(&qword_27D9BAFB0, &qword_22C90D850);
  v19 = sub_22C90952C();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22C90F800;
  if (qword_27D9BA6B0 != -1)
  {
    swift_once();
  }

  v22 = sub_22C37AA60(v19, &qword_27D9E3F88);
  (*(v20 + 16))(v17 + v21, v22, v19);
  (*(v6 + 8))(v8, v5);
  return v17;
}

uint64_t sub_22C4B9900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v22 = a3;
  v23 = a4;
  v6 = sub_22C90941C();
  sub_22C369824();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  sub_22C369838();
  v12 = v11 - v10;
  v13 = sub_22C3A5908(&qword_27D9BB050, &unk_22C90D8F0);
  v14 = v13 - 8;
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  v17 = sub_22C3E8FB4(a1, &v22 - v15, &qword_27D9BB050, &unk_22C90D8F0);
  v18 = *(v14 + 56);
  MEMORY[0x2318B6CE0](v17);
  sub_22C90981C();
  sub_22C36985C();
  (*(v19 + 8))(&v16[v18]);
  LOBYTE(v18) = sub_22C4F6864(a2, v22);
  (*(v8 + 8))(v12, v6);
  sub_22C908EAC();
  sub_22C36985C();
  result = (*(v20 + 8))(v16);
  *v23 = v18;
  return result;
}

uint64_t sub_22C4B9ACC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PromptMapper._ToolPromptMap._ParameterPromptMap(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4B9B30(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4B9B90(uint64_t a1)
{
  v159 = sub_22C9063DC();
  sub_22C369824();
  v172 = v2;
  MEMORY[0x28223BE20](v3);
  sub_22C3698A8();
  v164 = v4;
  v176 = sub_22C9093BC();
  v170 = *(v176 - 8);
  MEMORY[0x28223BE20](v176 - 8);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v5);
  sub_22C36BA64();
  v175 = v6;
  v158 = sub_22C90919C();
  sub_22C369824();
  v171 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22C3698A8();
  sub_22C36D234(v9);
  v10 = sub_22C3A5908(&qword_27D9BD2B0, &unk_22C917EE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v122 - v11;
  v13 = type metadata accessor for DynamicEnumeration.Case(0);
  sub_22C369824();
  v125 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v16);
  sub_22C36BA64();
  sub_22C36D234(v17);
  v18 = sub_22C9084CC();
  sub_22C369824();
  v20 = v19;
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v122 - v25;
  sub_22C903E2C();
  sub_22C369824();
  v173 = v28;
  v174 = v27;
  MEMORY[0x28223BE20](v27);
  sub_22C3698E4();
  v162 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22C36BA64();
  sub_22C36D234(v31);
  v32 = sub_22C3A5908(&qword_27D9BD2B8, &qword_22C9204B0);
  MEMORY[0x28223BE20](v32 - 8);
  sub_22C36D234(&v122 - v33);
  v130 = type metadata accessor for DynamicEnumeration(0);
  sub_22C369824();
  v129 = v34;
  MEMORY[0x28223BE20](v35);
  sub_22C3698A8();
  sub_22C36D234(v36);
  v145 = sub_22C90941C();
  sub_22C369824();
  v38 = v37;
  MEMORY[0x28223BE20](v39);
  sub_22C3698E4();
  sub_22C3698D4();
  MEMORY[0x28223BE20](v40);
  sub_22C3698D4();
  MEMORY[0x28223BE20](v41);
  sub_22C36BA64();
  sub_22C36D234(v42);
  v43 = v26;
  v44 = v13;
  v45 = v18;
  v46 = sub_22C4BAA14(a1);
  sub_22C3A5908(&qword_27D9BD2C0, &unk_22C917EF0);
  result = sub_22C90B1CC();
  v49 = result;
  v50 = 0;
  v51 = v46[8];
  v123 = v46 + 8;
  v134 = v46;
  v52 = 1 << *(v46 + 32);
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & v51;
  v122 = (v52 + 63) >> 6;
  v131 = v38 + 16;
  v133 = v38;
  v143 = v38 + 32;
  v168 = (v20 + 8);
  ++v173;
  v163 = v20;
  v149 = v20 + 16;
  v161 = (v170 + 88);
  v160 = *MEMORY[0x277D72A38];
  v155 = v170 + 8;
  v154 = v172 + 8;
  v153 = v170 + 96;
  v152 = (v171 + 16);
  v151 = v171 + 8;
  v126 = result + 64;
  *&v48 = 136315394;
  v148 = v48;
  v169 = v24;
  v171 = v43;
  v127 = result;
  v156 = v12;
  v165 = v44;
  v147 = v18;
  while (1)
  {
    v55 = v135;
    if (!v54)
    {
      break;
    }

    v136 = (v54 - 1) & v54;
    v137 = v50;
    v56 = __clz(__rbit64(v54)) | (v50 << 6);
LABEL_11:
    v60 = v134;
    v61 = v134[6];
    v62 = v133;
    v63 = *(v133 + 16);
    v139 = *(v133 + 72) * v56;
    v64 = v132;
    v65 = v145;
    v66 = v56;
    v63(v132, v61 + v139, v145);
    v67 = v60[7];
    v140 = v66;
    v68 = *(v67 + 8 * v66);
    v138 = *(v62 + 32);
    v138(v144, v64, v65);
    sub_22C58B098(v68, v55);
    result = sub_22C370B74(v55, 1, v45);
    if (result == 1)
    {
      goto LABEL_34;
    }

    v69 = v150;
    sub_22C9084AC();
    v166 = *v168;
    v166(v55, v45);
    sub_22C903E1C();
    v172 = *v173;
    result = (v172)(v69, v174);
    v70 = 0;
    v170 = *(v68 + 16);
    v146 = MEMORY[0x277D84F90];
    v71 = v169;
    v72 = v149;
    v167 = v68;
    while (v170 != v70)
    {
      if (v70 >= *(v68 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v73 = *(v163 + 16);
      v73(v43, v68 + ((*(v163 + 80) + 32) & ~*(v163 + 80)) + *(v163 + 72) * v70, v45);
      v74 = v72;
      v75 = v162;
      sub_22C9084AC();
      v76 = v175;
      sub_22C903E0C();
      (v172)(v75, v174);
      v77 = (*v161)(v76, v176);
      if (v77 == v160)
      {
        sub_22C36BA4C();
        v78(v175, v176);
        v79 = swift_projectBox();
        v80 = *v152;
        v81 = v45;
        v82 = v157;
        v83 = v158;
        (*v152)(v157, v79, v158);

        v80(v12, v82, v83);
        v84 = v165;
        sub_22C9068FC();
        sub_22C36BA4C();
        v85 = v82;
        v45 = v81;
        v86 = v83;
        v43 = v171;
        v87(v85, v86);
        v88 = 0;
        v72 = v74;
        v68 = v167;
        v89 = v166;
      }

      else
      {
        sub_22C36BA4C();
        v90(v175, v176);
        sub_22C903F7C();
        v73(v71, v43, v45);
        v91 = sub_22C9063CC();
        v92 = v45;
        v93 = sub_22C90AADC();
        if (os_log_type_enabled(v91, v93))
        {
          v94 = v92;
          v95 = swift_slowAlloc();
          v96 = swift_slowAlloc();
          v177 = v96;
          *v95 = v148;
          *(v95 + 4) = sub_22C36F9F4(0x6F72662874696E69, 0xEB00000000293A6DLL, &v177);
          *(v95 + 12) = 2080;
          v97 = v71;
          v98 = v150;
          sub_22C9084AC();
          sub_22C903E0C();
          (v172)(v98, v174);
          v99 = sub_22C90A1AC();
          v101 = v100;
          v102 = v94;
          v103 = v166;
          v166(v97, v102);
          v104 = sub_22C36F9F4(v99, v101, &v177);
          v105 = v164;
          v43 = v171;

          *(v95 + 14) = v104;
          _os_log_impl(&dword_22C366000, v91, v93, "%s Found a non-entity TypedValue in a DynamicEnumerationEntityStatement: %s", v95, 0x16u);
          swift_arrayDestroy();
          v106 = v96;
          v72 = v149;
          MEMORY[0x2318B9880](v106, -1, -1);
          MEMORY[0x2318B9880](v95, -1, -1);

          sub_22C36BA4C();
          v89 = v103;
          v107(v105, v159);
          v88 = 1;
          v12 = v156;
          v84 = v165;
          v45 = v147;
        }

        else
        {
          v72 = v74;

          v89 = v166;
          v166(v71, v92);
          sub_22C36BA4C();
          v108(v164, v159);
          v88 = 1;
          v12 = v156;
          v45 = v92;
          v84 = v165;
        }

        v68 = v167;
      }

      sub_22C36C640(v12, v88, 1, v84);
      v89(v43, v45);
      if (sub_22C370B74(v12, 1, v84) == 1)
      {
        result = sub_22C4BB104(v12);
        ++v70;
        v71 = v169;
      }

      else
      {
        v109 = v124;
        sub_22C4BB16C(v12, v124, type metadata accessor for DynamicEnumeration.Case);
        sub_22C4BB16C(v109, v141, type metadata accessor for DynamicEnumeration.Case);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v169;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22C591874();
          v146 = v113;
        }

        v111 = *(v146 + 16);
        if (v111 >= *(v146 + 24) >> 1)
        {
          sub_22C591874();
          v146 = v114;
        }

        ++v70;
        v112 = v146;
        *(v146 + 16) = v111 + 1;
        result = sub_22C4BB16C(v141, v112 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v111, type metadata accessor for DynamicEnumeration.Case);
      }
    }

    v115 = v128;
    v116 = v145;
    v117 = v138;
    v138(v128, v142, v145);
    *(v115 + *(v130 + 20)) = v146;
    v118 = v140;
    *(v126 + ((v140 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v140;
    v49 = v127;
    v117(*(v127 + 48) + v139, v144, v116);
    result = sub_22C4BB16C(v115, *(v49 + 56) + *(v129 + 72) * v118, type metadata accessor for DynamicEnumeration);
    v119 = *(v49 + 16);
    v120 = __OFADD__(v119, 1);
    v121 = v119 + 1;
    if (v120)
    {
      goto LABEL_33;
    }

    *(v49 + 16) = v121;
    v50 = v137;
    v54 = v136;
  }

  v57 = v50;
  while (1)
  {
    v58 = v57 + 1;
    if (__OFADD__(v57, 1))
    {
      break;
    }

    if (v58 >= v122)
    {

      return v49;
    }

    v59 = v123[v58];
    ++v57;
    if (v59)
    {
      v136 = (v59 - 1) & v59;
      v137 = v58;
      v56 = __clz(__rbit64(v59)) | (v58 << 6);
      goto LABEL_11;
    }
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void *sub_22C4BAA14(uint64_t a1)
{
  v49 = sub_22C903E2C();
  v2 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22C90941C();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v54 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22C9084CC();
  v6 = MEMORY[0x28223BE20](v53);
  v43 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v36 - v8;
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  v45 = (v2 + 8);
  v46 = v12 + 16;
  v47 = v12;
  v50 = v11;
  v51 = (v12 + 32);
  v39 = v4 + 32;
  v40 = v4;
  v38 = (v4 + 8);
  v37 = xmmword_22C90F800;
  v41 = a1;
  while (1)
  {
    if (v50 == v9)
    {

      return v10;
    }

    if (v9 >= *(a1 + 16))
    {
      break;
    }

    v13 = (*(v47 + 80) + 32) & ~*(v47 + 80);
    v14 = *(v47 + 72);
    (*(v47 + 16))(v52, a1 + v13 + v14 * v9, v53);
    v15 = v48;
    sub_22C9084AC();
    sub_22C903E1C();
    (*v45)(v15, v49);
    sub_22C6284D4();
    v18 = v17;
    v19 = v10[2];
    v20 = (v16 & 1) == 0;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v21 = v16;
    if (v10[3] < v19 + v20)
    {
      sub_22C88CD3C();
      v10 = v55;
      sub_22C6284D4();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_21;
      }

      v18 = v22;
    }

    if (v21)
    {
      (*v38)(v54, v44);
      v24 = v10[7];
      v25 = *v51;
      (*v51)(v43, v52, v53);
      v26 = *(v24 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v18) = v26;
      v42 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22C5917AC();
        v26 = v33;
        *(v24 + 8 * v18) = v33;
      }

      v28 = *(v26 + 16);
      if (v28 >= *(v26 + 24) >> 1)
      {
        sub_22C5917AC();
        v26 = v34;
        *(v24 + 8 * v18) = v34;
      }

      *(v26 + 16) = v28 + 1;
      v42((v26 + v13 + v28 * v14), v43, v53);
      a1 = v41;
    }

    else
    {
      sub_22C3A5908(&qword_27D9BAC88, &unk_22C91DAD0);
      v29 = swift_allocObject();
      *(v29 + 16) = v37;
      (*v51)((v29 + v13), v52, v53);
      v10[(v18 >> 6) + 8] |= 1 << v18;
      (*(v40 + 32))(v10[6] + *(v40 + 72) * v18, v54, v44);
      *(v10[7] + 8 * v18) = v29;
      v30 = v10[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v10[2] = v32;
    }

    ++v9;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_22C90B54C();
  __break(1u);
  return result;
}

uint64_t sub_22C4BAEE0(uint64_t a1)
{
  sub_22C48A9B4(a1, v1[1]);
  v3 = *v1;

  return sub_22C48A9B4(a1, v3);
}

uint64_t sub_22C4BAF20(unint64_t *a1, unint64_t *a2)
{
  if ((sub_22C48819C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];

  return sub_22C48819C(v4, v5);
}

uint64_t sub_22C4BAF7C()
{
  sub_22C90B62C();
  sub_22C48A9B4(v2, v0[1]);
  sub_22C48A9B4(v2, *v0);
  return sub_22C90B66C();
}

uint64_t sub_22C4BAFD4(uint64_t a1)
{
  sub_22C90B62C();
  sub_22C4BAEE0(v2);
  return sub_22C90B66C();
}

uint64_t sub_22C4BB014@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (sub_22C6284D4(), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(a2 + 56);
    v9 = type metadata accessor for DynamicEnumeration(0);
    sub_22C4BB364(v8 + *(*(v9 - 8) + 72) * v7, a3);
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = type metadata accessor for DynamicEnumeration(0);
    v10 = a3;
    v11 = 1;
  }

  return sub_22C36C640(v10, v11, 1, v12);
}

uint64_t sub_22C4BB104(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD2B0, &unk_22C917EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4BB16C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22C4BB228(uint64_t a1)
{
  if (!qword_27D9BD2D8)
  {
    type metadata accessor for DynamicEnumeration.Case(255);
    v1 = sub_22C90A68C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD2D8);
    }
  }
}

uint64_t sub_22C4BB2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4BB364(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicEnumeration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22C4BB420(uint64_t a1)
{
  sub_22C45924C(319);
  if (v1 <= 0x3F)
  {
    sub_22C4BB4EC(319);
    if (v2 <= 0x3F)
    {
      sub_22C4BB550(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for _PromptMapper._ToolPromptMap(319);
        if (v4 <= 0x3F)
        {
          sub_22C4BB62C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22C4BB4EC(uint64_t a1)
{
  if (!qword_27D9BD300)
  {
    sub_22C3AC1A0(&qword_27D9BAF08, &qword_22C90D7B0);
    v1 = sub_22C90A68C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD300);
    }
  }
}

void sub_22C4BB550(uint64_t a1)
{
  if (!qword_27D9BD308)
  {
    sub_22C90952C();
    sub_22C4BB5E4(&qword_28142FA80, MEMORY[0x277D72D58], MEMORY[0x277D72D68]);
    v1 = sub_22C90A8FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27D9BD308);
    }
  }
}

uint64_t sub_22C4BB5E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22C4BB62C()
{
  if (!qword_27D9BD310)
  {
    v0 = sub_22C90AC6C();
    if (!v1)
    {
      atomic_store(v0, &qword_27D9BD310);
    }
  }
}

uint64_t sub_22C4BB6C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0x6168706C41;
  *(a2 + 1) = 0xE500000000000000;
  v4 = _s15AlphaComponentsVMa(0);
  v5.n128_f64[0] = sub_22C387108(v4[11]);
  sub_22C373428(*(v6 + 48), v5);
  sub_22C373428(*(v7 + 52), v8);
  sub_22C373428(*(v9 + 56), v10);
  sub_22C373428(*(v11 + 60), v12);
  *(v13 + 40) = -1;
  bzero(&a2[*(v14 + 64)], 0x110uLL);
  bzero(&a2[v4[17]], 0x190uLL);
  v15.n128_f64[0] = sub_22C387108(v4[18]);
  *(v16 + 40) = -1;
  sub_22C373428(v4[19], v15);
  sub_22C373428(v4[20], v17);
  *(v18 + 40) = -1;
  sub_22C373428(v4[21], v19);
  *(v20 + 40) = -1;
  sub_22C373428(v4[22], v21);
  *(v22 + 40) = -1;
  sub_22C373428(v4[23], v23);
  *(v24 + 40) = -1;
  sub_22C373428(v4[24], v25);
  *(v26 + 40) = -1;
  sub_22C373428(v4[25], v27);
  *(v28 + 40) = -1;
  v29 = v4[5];
  sub_22C90077C();
  sub_22C36985C();
  (*(v30 + 16))(&a2[v29], a1);
  v31 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v4[6]] = *(a1 + v31[5]);
  sub_22C3E8FB4(a1 + v31[6], &a2[v4[7]], &qword_27D9BB730, &unk_22C90FE30);
  sub_22C3E8FB4(a1 + v31[7], &a2[v4[8]], &qword_27D9BB728, &qword_22C911230);
  v32 = (a1 + v31[8]);
  v33 = *v32;
  v34 = v32[1];
  v35 = &a2[v4[9]];
  *v35 = v33;
  *(v35 + 1) = v34;
  sub_22C369DCC();
  sub_22C4BF520(a1 + v36, &a2[v37], v38);

  return sub_22C4BF580(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15AlphaComponentsVMa(uint64_t a1)
{
  result = qword_27D9BD320;
  if (!qword_27D9BD320)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4BB930(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C9071BC();
    if (v2 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v3 <= 0x3F)
      {
        sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
        if (v4 <= 0x3F)
        {
          sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for FullPlannerPreferences(319);
            if (v6 <= 0x3F)
            {
              sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
              if (v7 <= 0x3F)
              {
                sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                if (v8 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                  if (v9 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                    if (v10 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD368, &qword_27D9BD370, &qword_22C918220);
                      if (v11 <= 0x3F)
                      {
                        sub_22C430E9C(319, &qword_281434970, &type metadata for PromptRenderer);
                        if (v12 <= 0x3F)
                        {
                          sub_22C430E9C(319, &qword_281434B98, &type metadata for EventParsers);
                          if (v13 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                            if (v14 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_2814335D0, &qword_27D9BD380, &qword_22C918228);
                              if (v15 <= 0x3F)
                              {
                                sub_22C4BBD84(319, &qword_28142F938, &qword_27D9BD388, &unk_22C9182D0);
                                if (v16 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                          if (v21 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_22C4BBD30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22C4BBD84(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_22C3AC1A0(a3, a4);
    v5 = sub_22C90AC6C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22C4BBDE4()
{
  v2 = sub_22C3727F4();
  v3 = _s15AlphaComponentsVMa(v2);
  v4 = *(v3 + 44);
  sub_22C3E8FB4(v1 + v4, &v10, &qword_27D9BD3D0, &unk_22C918320);
  if (v11)
  {
    return sub_22C36C730(&v10, v0);
  }

  sub_22C36DD28(&v10, &qword_27D9BD3D0, &unk_22C918320);
  v6 = *(v3 + 40);
  v0[3] = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[4] = &off_283FB8878;
  v7 = sub_22C36D548(v0);
  sub_22C9006AC();
  sub_22C369DCC();
  sub_22C4BF520(v1 + v6, v7 + v8, v9);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(v0, v1 + v4);
}

uint64_t sub_22C4BBEF4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15AlphaComponentsVMa(0) + 48);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v1_0;
  a1[4] = &off_283FB8858;
  *a1 = swift_allocObject();
  sub_22C4BBDE4();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4BBFDC@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s15AlphaComponentsVMa(0) + 52);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD3E0, &unk_22C918720);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD3E0, &unk_22C918720);
  *(a1 + 24) = &type metadata for DynamicEnumerationCaseRenderer_v1_0;
  *(a1 + 32) = &off_283FB8E40;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4BC0A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15AlphaComponentsVMa(0) + 56);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD3F8, &unk_22C918340);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD3F8, &unk_22C918340);
  a1[3] = type metadata accessor for ToolRenderer_v1_0(0);
  a1[4] = &off_283FB9200;
  sub_22C36D548(a1);
  sub_22C90718C();
  sub_22C4BC1AC();
  sub_22C36DD28(v1 + v3, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v1 + v3);
}

void *sub_22C4BC1AC()
{
  v1 = sub_22C3727F4();
  v2 = _s15AlphaComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4BCDBC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4BC244()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15AlphaComponentsVMa(v2) + 60);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4BCD48(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4BC340@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v83 = a3;
  v4 = sub_22C9063DC();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v6 = MEMORY[0x28223BE20](v78);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v71 - v8;
  v9 = type metadata accessor for FullPlannerPreferences(0);
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v22 = sub_22C90046C();
  v89 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v76 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v77 = _s15AlphaComponentsVMa(0);
  v27 = *(v77 + 40);
  v85 = a1;
  sub_22C4BF520(a1 + v27, v18, type metadata accessor for FullPlannerPreferences);
  v28 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v82 = v18;
  sub_22C4BF580(v18, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v29 = swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v86 = v29;
    return result;
  }

  v32 = *(v89 + 32);
  v71 = v22;
  v32(v26, v21, v22);
  v33 = v85;
  sub_22C4BF520(v85 + v27, v16, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4BF580(v16, type metadata accessor for FullPlannerPreferences);
  v35 = v87;
  v34 = v88;
  v36 = v87 == 0x6E65476E656B6F74 && v88 == 0xEE00726F74617265;
  v37 = v27;
  if (v36 || (sub_22C90B4FC() & 1) != 0)
  {
    v76 = v26;

    v38 = v89;
    v39 = v77;
    v40 = v81;
    sub_22C3E8FB4(v33 + *(v77 + 32), v81, &qword_27D9BB728, &qword_22C911230);
    v41 = *(v39 + 20);
    v42 = v78;
    v43 = *(v78 + 20);
    v44 = sub_22C90077C();
    (*(*(v44 - 8) + 16))(v40 + v43, v33 + v41, v44);
    v45 = v82;
    sub_22C4BF520(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4BF580(v45, type metadata accessor for FullPlannerPreferences);
    *(v40 + *(v42 + 24)) = v87;
    v46 = v80;
    sub_22C4BF520(v40, v80, type metadata accessor for FullPlannerGMSClientConfiguration);
    v47 = v33 + v37;
    v48 = v79;
    sub_22C4BF520(v47, v79, type metadata accessor for FullPlannerPreferences);
    v49 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v50 = v83;
    v83[3] = v49;
    v50[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370, &unk_22C911600);
    v51 = sub_22C36D548(v50);
    v52 = v84;
    sub_22C4D0D18(v46, v48, v51);
    v29 = v52;
    if (v52)
    {
      sub_22C4BF580(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v38 + 8))(v76, v71);
      result = sub_22C4BF5D8(v50);
      goto LABEL_10;
    }

    sub_22C4BF580(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
    v53 = v71;
    v26 = v76;
  }

  else
  {
    v81 = v28;
    v54 = v35 == 0x65696C4370747468 && v34 == 0xEA0000000000746ELL;
    v38 = v89;
    if (v54)
    {
    }

    else
    {
      v55 = sub_22C90B4FC();

      if ((v55 & 1) == 0)
      {
        v56 = v72;
        sub_22C903F7C();
        v57 = sub_22C9063CC();
        v58 = sub_22C90AADC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = v26;
          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v60;
          v26 = v59;
          MEMORY[0x2318B9880](v61, -1, -1);
        }

        (*(v73 + 8))(v56, v74);
        sub_22C3DD0D8();
        v29 = swift_allocError();
        *v62 = 0;
        v62[1] = 0;
        swift_willThrow();
        result = (*(v38 + 8))(v26, v71);
        goto LABEL_10;
      }
    }

    v53 = v71;
    (*(v38 + 16))(v76, v26, v71);
    v63 = v82;
    sub_22C4BF520(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C901EDC();
    sub_22C4BF580(v63, type metadata accessor for FullPlannerPreferences);
    v64 = v87;
    v65 = v88;
    v66 = v33 + v37;
    v67 = v75;
    sub_22C4BF520(v66, v75, type metadata accessor for FullPlannerPreferences);
    v68 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v69 = v83;
    v83[3] = v68;
    v69[4] = &off_2818B22B8;
    v70 = sub_22C36D548(v69);
    sub_22C3F5190(v76, v64, v65, v67, v70);
  }

  return (*(v38 + 8))(v26, v53);
}

uint64_t sub_22C4BCC28@<X0>(uint64_t a1@<X8>)
{
  sub_22C4BDD88();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4BDF94();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4BCD48@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4BCDBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v108 = a2;
  v101 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0(0);
  MEMORY[0x28223BE20](v101);
  v100 = (&v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  MEMORY[0x28223BE20](v99);
  v98 = (&v86 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  MEMORY[0x28223BE20](v97);
  v105 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v96);
  v104 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v90);
  v107 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  MEMORY[0x28223BE20](v106);
  v9 = (&v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = 0;
  memset(v130, 0, sizeof(v130));
  v12[3] = &type metadata for EnumerationCaseDefinitionRenderer_v1_0;
  v12[4] = &off_283FB8E80;
  v12[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v12[9] = &off_283FB8EC8;
  v13 = v12;
  v12[5] = swift_allocObject();
  v14 = v13;
  sub_22C4BBDE4();
  v15 = v10[6];
  v16 = _s15AlphaComponentsVMa(0);
  v17 = v16[6];

  sub_22C90718C();

  v18 = sub_22C908AEC();
  sub_22C36C640(v13 + v15, 0, 1, v18);
  v19 = v10[7];
  v20 = v16[5];
  v88 = v16;
  v21 = sub_22C90077C();
  (*(*(v21 - 8) + 16))(v14 + v19, a1 + v20, v21);
  sub_22C36C640(v14 + v19, 0, 1, v21);
  v22 = v16[10];
  v102 = v14;
  v103 = v22;
  v23 = v14 + v10[8];
  v87 = type metadata accessor for FullPlannerPreferences;
  sub_22C4BF520(a1 + v22, v23, type metadata accessor for FullPlannerPreferences);
  v24 = type metadata accessor for TypeIdentifierRenderer_v1_0(0);
  v25 = v108;
  v108[32] = v24;
  v25[33] = &off_283FB8E20;
  v26 = v24;
  v27 = sub_22C36D548(v25 + 29);
  v27[3] = v10;
  v27[4] = &off_283FB8E68;
  v28 = v27;
  v29 = sub_22C36D548(v27);
  sub_22C4BF520(v14, v29, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  v28[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v28[9] = &off_283FB8FE0;
  v30 = swift_allocObject();
  v28[5] = v30;
  sub_22C4BECC0(v130, v30 + 16);
  v31 = a1;
  sub_22C4BBDE4();
  v89 = v17;

  sub_22C90718C();

  v126[3] = v26;
  v93 = v26;
  v126[4] = &off_283FB8E20;
  v32 = sub_22C36D548(v126);
  v91 = v28;
  v92 = type metadata accessor for TypeIdentifierRenderer_v1_0;
  sub_22C4BF520(v28, v32, type metadata accessor for TypeIdentifierRenderer_v1_0);
  v127 = 0u;
  v128 = 0u;
  v129 = 0;
  v125[3] = v26;
  v125[4] = &off_283FB8E20;
  v33 = sub_22C36D548(v125);
  sub_22C4BF520(v28, v33, type metadata accessor for TypeIdentifierRenderer_v1_0);
  sub_22C4BBFDC(v9);
  v34 = v9;
  v9[8] = &type metadata for StaticTypeInstanceRenderer_v1_0;
  v9[9] = &off_283FB8E00;
  v35 = swift_allocObject();
  v9[5] = v35;
  sub_22C4BED1C(v126, v35 + 16);
  v36 = v106;
  v37 = v9 + *(v106 + 24);
  v94 = v9;
  sub_22C4BF520(a1 + v103, v37, type metadata accessor for FullPlannerPreferences);

  v38 = v107;
  sub_22C90718C();

  v39 = v90;
  v40 = (v38 + *(v90 + 20));
  v40[3] = &type metadata for StaticTypeInstanceRenderer_v1_0;
  v40[4] = &off_283FB8E00;
  v41 = swift_allocObject();
  *v40 = v41;
  sub_22C4BED1C(v126, v41 + 16);
  v42 = (v38 + *(v39 + 24));
  v42[3] = v36;
  v42[4] = &off_283FB8E50;
  v43 = sub_22C36D548(v42);
  v95 = type metadata accessor for DynamicEnumerationRenderer_v1_0;
  sub_22C4BF520(v34, v43, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  v121[3] = v39;
  v121[4] = &off_283FB8F90;
  v44 = sub_22C36D548(v121);
  sub_22C4BF520(v38, v44, type metadata accessor for TypeInstanceRenderer_v1_0);
  v122 = 0u;
  v123 = 0u;
  v124 = 0;
  v45 = v31;
  v46 = v31 + v88[7];
  v47 = v104;
  sub_22C3E8FB4(v46, v104, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4BBDE4();
  v48 = v105;
  *(v105 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v48 + 32) = &off_283FB8ED8;
  v49 = swift_allocObject();
  *v48 = v49;
  sub_22C4BEDC0(v121, v49 + 16);
  *(v48 + 64) = &type metadata for ToolNameRenderer_v1_0;
  *(v48 + 72) = &off_283FB8858;
  v50 = swift_allocObject();
  *(v48 + 40) = v50;
  sub_22C4BEE1C(v120, v50 + 16);
  *(v48 + 80) = 0u;
  *(v48 + 96) = 0u;
  *(v48 + 112) = 0;
  v51 = v96;
  *(v48 + 144) = v96;
  *(v48 + 152) = &off_283FB8F70;
  v52 = sub_22C36D548((v48 + 120));
  sub_22C4BF520(v47, v52, type metadata accessor for ToolDescriptionProvider_v1_0);
  v53 = v97;
  v54 = v103;
  v55 = v48 + *(v97 + 32);
  v56 = v87;
  sub_22C4BF520(v45 + v103, v55, v87);
  v57 = v98;
  *v98 = 0u;
  v57[1] = 0u;
  *(v57 + 4) = 0;
  *(v57 + 8) = v51;
  *(v57 + 9) = &off_283FB8F70;
  v58 = v57;
  v59 = sub_22C36D548(v57 + 5);
  sub_22C4BF520(v47, v59, type metadata accessor for ToolDescriptionProvider_v1_0);
  v60 = v99;
  v61 = v45 + v54;
  v62 = v58;
  sub_22C4BF520(v61, v58 + *(v99 + 24), v56);
  v119[3] = v53;
  v63 = v53;
  v119[4] = &off_283FB8F40;
  v64 = sub_22C36D548(v119);
  v65 = v105;
  sub_22C4BF520(v105, v64, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4BBDE4();
  v118[3] = &type metadata for ToolNameRenderer_v1_0;
  v118[4] = &off_283FB8858;
  v118[0] = swift_allocObject();
  sub_22C4BEE1C(v120, v118[0] + 16);
  v66 = v100;
  v100[3] = v63;
  v66[4] = &off_283FB8F40;
  v67 = sub_22C36D548(v66);
  sub_22C4BF520(v65, v67, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v66[8] = v60;
  v66[9] = &off_283FB8E98;
  v68 = sub_22C36D548(v66 + 5);
  sub_22C4BF520(v58, v68, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v66[13] = &type metadata for EntitySetterRenderer_v1_0;
  v66[14] = &off_283FB8F18;
  v69 = swift_allocObject();
  v66[10] = v69;
  sub_22C4BEE78(v119, v69 + 16);
  v66[18] = &type metadata for UIControlRenderer_v2_0;
  v66[19] = &off_283FB9700;
  v70 = swift_allocObject();
  v66[15] = v70;
  sub_22C4BEED4(v118, v70 + 16);
  v71 = v101;

  sub_22C90718C();

  v72 = v93;
  v117[3] = v93;
  v117[4] = &off_283FB8E20;
  v73 = sub_22C36D548(v117);
  v75 = v91;
  v74 = v92;
  sub_22C4BF520(v91, v73, v92);
  v116[3] = v72;
  v116[4] = &off_283FB8E20;
  v76 = sub_22C36D548(v116);
  sub_22C4BF520(v75, v76, v74);
  v116[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v116[9] = &off_283FB8FC0;
  v116[13] = &type metadata for INPersonRenderer_v1_0;
  v116[14] = &off_283FB8FB0;
  v112[3] = v72;
  v112[4] = &off_283FB8E20;
  v77 = sub_22C36D548(v112);
  sub_22C4BF520(v75, v77, v74);
  v114 = &type metadata for PrimitiveValueRenderer_v1_0;
  v115 = &off_283FB8EB8;
  v113 = swift_allocObject();
  sub_22C4BEF30(v116, v113 + 16);
  sub_22C4BEF8C(v112, v111);
  sub_22C4BEFE8(v125, v110);
  sub_22C4BF044(v117, v109);
  v78 = sub_22C4D656C(v111, v110, v109);
  v79 = v108;
  sub_22C4BBDE4();
  v79[8] = v71;
  v79[9] = &off_283FB8DD8;
  v80 = sub_22C36D548(v79 + 5);
  sub_22C4BF520(v66, v80, type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0);
  v79[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v79[14] = &off_283FB8ED8;
  v81 = swift_allocObject();
  v79[10] = v81;
  sub_22C4BEDC0(v121, v81 + 16);
  v79[18] = &type metadata for ToolNameRenderer_v1_0;
  v79[19] = &off_283FB8858;
  v82 = swift_allocObject();
  v79[15] = v82;
  sub_22C4BEE1C(v120, v82 + 16);
  v79[27] = v106;
  v79[28] = &off_283FB8E50;
  v83 = sub_22C36D548(v79 + 24);
  v84 = v94;
  sub_22C4BF520(v94, v83, v95);

  sub_22C4BF0A0(v112);
  sub_22C4BF0F4(v116);
  sub_22C4BF148(v117);
  sub_22C4BF580(v66, type metadata accessor for RenderableToolDefinitionPromptRenderer_v1_0);
  sub_22C4BF19C(v118);
  sub_22C4BF1F0(v119);
  sub_22C4BF580(v62, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4BF580(v65, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4BF244(v120);
  sub_22C4BF580(v104, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v121);
  sub_22C4BF580(v107, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4BF580(v84, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  sub_22C4BF2EC(v125);
  sub_22C4BF340(v126);
  sub_22C4BF580(v102, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  result = sub_22C4BF394(v130);
  v79[20] = v78;
  v79[21] = &off_283FB87B0;
  v79[22] = v78;
  v79[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4BDA34()
{
  v1 = sub_22C3727F4();
  v2 = _s15AlphaComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v20[0]);
  if (v20[13])
  {
    return memcpy(v0, v20, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v20[0]);
  sub_22C36BD58();
  sub_22C4BDACC(v17);
  sub_22C3717CC();
  v18 = sub_22C37280C();
  return sub_22C4BF3E8(v18, v19);
}

double sub_22C4BDACC@<D0>(uint64_t a2@<X8>)
{
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v3 = swift_allocObject();
  *(a2 + 80) = v3;
  *(v3 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v3 + 48) = &off_283FB8638;
  _s15AlphaComponentsVMa(0);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v4 = swift_allocObject();
  *(a2 + 120) = v4;
  v4[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v4[6] = &off_283FB84F8;
  sub_22C36D548(v4 + 2);

  sub_22C90718C();

  v5 = type metadata accessor for ExpressionParser_v1_0(0);
  v4[10] = v5;
  v4[11] = &off_283FB8460;
  v6 = sub_22C36D548(v4 + 7);

  sub_22C90718C();

  sub_22C4BC1AC();
  sub_22C378A4C(&v11, v6 + v5[6]);
  sub_22C3DF2E8(&v10);
  sub_22C4BBDE4();
  v7 = v6 + v5[8];
  *(v7 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v7 + 4) = &off_283FB8298;
  v8 = v6 + v5[9];
  *(v8 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v8 + 4) = &off_283FB8588;
  sub_22C4BC0A4((v6 + v5[10]));
  sub_22C4BBFDC(v6 + v5[11]);
  *v6 = 0;
  v4[15] = &type metadata for RenderingArbiter_v1_0;
  v4[16] = &off_283FB8588;
  *(a2 + 184) = type metadata accessor for StatementResultParser_v1_0(0);
  *(a2 + 192) = &off_283FB86D8;
  sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4BC1AC();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4BC1AC();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4BDD88()
{
  v1 = sub_22C3727F4();
  v2 = _s15AlphaComponentsVMa(v1);
  sub_22C3870F0(v2, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4BDE28(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4BDE28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s15AlphaComponentsVMa(0);
  v5 = type metadata accessor for ConversationParser_v1_0(0);
  a2[3] = v5;
  a2[4] = &off_283FB83D0;
  v6 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4BDA34();
  sub_22C4BC1AC();
  v7 = (v6 + v5[7]);
  v7[3] = type metadata accessor for ToolFetcher(0);
  v7[4] = &off_283FB6BE0;
  v8 = sub_22C36D548(v7);
  sub_22C4BBEF4(v8);

  sub_22C90718C();

  sub_22C4BC0A4((v6 + v5[8]));
  v9 = v6 + v5[9];
  *(v9 + 3) = &type metadata for StubGrammarGenerator;
  *(v9 + 4) = &off_283FB5308;
  result = sub_22C4BF520(a1 + *(v4 + 40), v6 + v5[12], type metadata accessor for FullPlannerPreferences);
  *(v6 + v5[10]) = 0;
  *(v6 + v5[11]) = 1;
  return result;
}

uint64_t sub_22C4BDF94()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15AlphaComponentsVMa(v2) + 76);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v6 = *v3;
    v7 = v4;
    v8 = *(v3 + 32);
  }

  if (*(&v7 + 1))
  {
    return sub_22C36C730(&v6, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  return sub_22C378A4C(v0, v3);
}

void sub_22C4BE038()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15AlphaComponentsVMa(v2) + 80);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4BCC28(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4BE120()
{
  v2 = sub_22C3727F4();
  v3 = *(_s15AlphaComponentsVMa(v2) + 84);
  sub_22C3E8FB4(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

void sub_22C4BE22C()
{
  v1 = sub_22C3727F4();
  v2 = _s15AlphaComponentsVMa(v1);
  sub_22C3870F0(v2, v3, &qword_27D9BD3C8, &unk_22C9186B0, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4BE2CC(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4BE2CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21[-1] - v5;
  sub_22C4BC1AC();
  sub_22C4BBDE4();
  v7 = _s15AlphaComponentsVMa(0);
  v8 = *(a1 + v7[6]);
  v9 = v7[10];
  v10 = (a1 + v7[9]);
  v12 = *v10;
  v11 = v10[1];
  v13 = type metadata accessor for PromptMapperResolver(0);
  a2[3] = v13;
  a2[4] = &off_283FB3CE0;
  v14 = sub_22C36D548(a2);
  sub_22C4BF520(a1 + v9, v14 + *(v13 + 36), type metadata accessor for FullPlannerPreferences);
  sub_22C42F0B8(v22, v14);
  *(v14 + 17) = 0u;
  *(v14 + 18) = 0u;
  sub_22C378A4C(v21, (v14 + 38));
  v15 = sub_22C90A75C();
  sub_22C36C640(v6, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v8;

  sub_22C580C40();
  v18 = v17;
  sub_22C36FF94(v21);
  result = sub_22C3DF2E8(v22);
  v14[43] = v18;
  v14[44] = v12;
  v14[45] = v11;
  return result;
}

void sub_22C4BE48C()
{
  v0 = sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BCD48(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4BE53C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4BE120();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4BE22C();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15AlphaComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4BE690()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = *(_s15AlphaComponentsVMa(0) + 96);
  result = sub_22C3E8FB4(v1 + v6, &v12, &qword_27D9BD420, &unk_22C918740);
  if (v13[24] == 255)
  {
    sub_22C36DD28(&v12, &qword_27D9BD420, &unk_22C918740);
    sub_22C369DCC();
    sub_22C4BF520(v1 + v9, v5, v10);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v11 = swift_allocObject();
    *v0 = v11;
    sub_22C50B704(v5, v11 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v6, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v6, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v8 = *v13;
    *v0 = v12;
    *(v0 + 16) = v8;
    *(v0 + 25) = *&v13[9];
  }

  return result;
}

void sub_22C4BE7F8()
{
  v0 = sub_22C3727F4();
  v1 = _s15AlphaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BCD48(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4BE8A8@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4BE038();
  if (v26)
  {
    v4 = v23;
    v22[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v23, v27);
  sub_22C4BC244();
  if (v26)
  {
    v4 = v23;
    v21[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v27;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v23, v22);
  sub_22C4BE48C();
  if (v26)
  {
    v4 = v23;
    *&v20[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    goto LABEL_7;
  }

  sub_22C36C730(&v23, v21);
  sub_22C4BE690();
  if (v26)
  {
    v4 = v23;
    v17[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    sub_22C36FF94(v27);
    v6 = v21;
    goto LABEL_8;
  }

  sub_22C36C730(&v23, v20);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = swift_allocObject();
  v9 = sub_22C36D1E4(v21, v21[3]);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v24 = &type metadata for PostInferenceHandler;
  v25 = &off_283FB3BA0;
  *&v23 = swift_allocObject();
  memcpy((v23 + 16), v11, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v13 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v8 + v13) = sub_22C36E65C(1);
  sub_22C378A4C(v27, v8 + 16);
  sub_22C378A4C(v22, v8 + 56);
  sub_22C378A4C(v8 + 56, v17);
  v14 = v18;
  v15 = v19;
  sub_22C374168(v17, v18);
  (*(v15 + 16))(v14, v15);
  sub_22C36FF94(v22);
  sub_22C36FF94(v27);
  sub_22C36FF94(v17);
  sub_22C36C730(&v23, v8 + 96);
  sub_22C36C730(v20, v8 + qword_27D9BDFC8);
  result = sub_22C36FF94(v21);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v8;
  return result;
}

uint64_t sub_22C4BEC78()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22C4BED78()
{
  sub_22C36FF94(v0 + 2);
  if (v0[10])
  {
    sub_22C36FF94(v0 + 7);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C4BF444()
{
  sub_22C36FF94(v0 + 2);
  sub_22C36FF94(v0 + 7);
  sub_22C36FF94(v0 + 12);

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

unint64_t sub_22C4BF48C()
{
  result = qword_281434F60;
  if (!qword_281434F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281434F60);
  }

  return result;
}

uint64_t sub_22C4BF4E0()
{
  if (*(v0 + 40))
  {
    sub_22C36FF94((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_22C4BF520(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4BF580(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4BF5D8(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x2318B9880);
  }

  return result;
}

uint64_t sub_22C4BF628@<X0>(uint64_t a1@<X8>)
{
  sub_22C4C2330();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4C253C();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4BF748@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4BF7BC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x6F76617242;
  *(a2 + 1) = 0xE500000000000000;
  v7 = _s15BravoComponentsVMa(0);
  v8.n128_f64[0] = sub_22C388F74(v7[12]);
  sub_22C369DE4(*(v9 + 52), v8);
  sub_22C369DE4(*(v10 + 56), v11);
  sub_22C369DE4(*(v12 + 60), v13);
  sub_22C369DE4(*(v14 + 64), v15);
  *(v16 + 40) = -1;
  bzero(&a2[*(v17 + 68)], 0x110uLL);
  bzero(&a2[v7[18]], 0x190uLL);
  v18.n128_f64[0] = sub_22C388F74(v7[19]);
  *(v19 + 40) = -1;
  sub_22C369DE4(v7[20], v18);
  sub_22C369DE4(v7[21], v20);
  *(v21 + 40) = -1;
  sub_22C369DE4(v7[22], v22);
  *(v23 + 40) = -1;
  sub_22C369DE4(v7[23], v24);
  *(v25 + 40) = -1;
  sub_22C369DE4(v7[24], v26);
  *(v27 + 40) = -1;
  sub_22C369DE4(v7[25], v28);
  *(v29 + 40) = -1;
  sub_22C369DE4(v7[26], v30);
  *(v31 + 40) = -1;
  v32 = *(v5 + 16);
  v32(&a2[v7[5]], a1, v4);
  v33 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v7[6]] = *(a1 + v33[5]);
  sub_22C3E8FB4(a1 + v33[6], &a2[v7[7]], &qword_27D9BB730, &unk_22C90FE30);
  v34 = a1 + v33[10];
  type metadata accessor for FullPlannerPreferences(0);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v50 == 1)
  {
    v49 = 0;
    v35 = v48;
    v32(v48, a1, v4);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v49, v35, &v50);
    v44 = v50;
    v45 = v51;
    v46 = v52;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v45 = 0uLL;
  }

  v36 = &a2[v7[8]];
  *v36 = v44;
  *(v36 + 8) = v45;
  *(v36 + 3) = v46;
  v36[32] = 0;
  sub_22C3E8FB4(a1 + v33[7], &a2[v7[9]], &qword_27D9BB728, &qword_22C911230);
  v37 = (a1 + v33[8]);
  v38 = *v37;
  v39 = v37[1];
  v40 = &a2[v7[10]];
  *v40 = v38;
  *(v40 + 1) = v39;
  sub_22C369DF4();
  sub_22C4C3618(v34, &a2[v41], v42);

  return sub_22C4C3678(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15BravoComponentsVMa(uint64_t a1)
{
  result = qword_27D9BD440;
  if (!qword_27D9BD440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22C4BFB60(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C9071BC();
    if (v2 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v3 <= 0x3F)
      {
        sub_22C4BFF78(319);
        if (v4 <= 0x3F)
        {
          sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v5 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences(319);
              if (v7 <= 0x3F)
              {
                sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                if (v8 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                  if (v9 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                    if (v10 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                      if (v11 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD368, &qword_27D9BD370, &qword_22C918220);
                        if (v12 <= 0x3F)
                        {
                          sub_22C430E9C(319, &qword_281434970, &type metadata for PromptRenderer);
                          if (v13 <= 0x3F)
                          {
                            sub_22C430E9C(319, &qword_281434B98, &type metadata for EventParsers);
                            if (v14 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                              if (v15 <= 0x3F)
                              {
                                sub_22C4BBD84(319, &qword_2814335D0, &qword_27D9BD380, &qword_22C918228);
                                if (v16 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F938, &qword_27D9BD388, &unk_22C9182D0);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                            if (v22 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_22C4BFF78(uint64_t a1)
{
  if (!qword_28142F910)
  {
    sub_22C3AC1A0(qword_27D9BD450, &qword_22C918260);
    sub_22C3AC1A0(&qword_27D9BB188, &qword_22C90FE40);
    v1 = sub_22C90B6AC();
    if (!v2)
    {
      atomic_store(v1, &qword_28142F910);
    }
  }
}

uint64_t sub_22C4C0000@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s15BravoComponentsVMa(0);
  v4 = *(v3 + 48);
  sub_22C3E8FB4(v1 + v4, &v9, &qword_27D9BD3D0, &unk_22C918320);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3D0, &unk_22C918320);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for AppNameRenderer_v1_0(0);
  a1[3] = v7;
  a1[4] = &off_283FB8878;
  v8 = sub_22C36D548(a1);
  sub_22C9006AC();
  sub_22C4C3618(v1 + v6, v8 + *(v7 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C0124@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15BravoComponentsVMa(0) + 52);
  sub_22C3E8FB4(v1 + v3, &v6, &qword_27D9BD400, &unk_22C918710);
  if (v7)
  {
    return sub_22C36C730(&v6, a1);
  }

  sub_22C36DD28(&v6, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  v5 = swift_allocObject();
  *a1 = v5;
  sub_22C4C0000((v5 + 16));
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C020C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(_s15BravoComponentsVMa(0) + 56);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD3E0, &unk_22C918720);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD3E0, &unk_22C918720);
  *(a1 + 24) = &type metadata for DynamicEnumerationCaseRenderer_v1_0;
  *(a1 + 32) = &off_283FB8E40;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C02D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15BravoComponentsVMa(0) + 60);
  sub_22C3E8FB4(v1 + v3, &v9, &qword_27D9BD3F8, &unk_22C918340);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3F8, &unk_22C918340);
  v5 = type metadata accessor for ToolRenderer_v2_0(0);
  a1[3] = v5;
  a1[4] = &off_283FB9988;
  v6 = sub_22C36D548(a1);
  sub_22C90718C();
  sub_22C4C0440();
  v7 = (v6 + *(v5 + 24));
  v7[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v7[4] = &off_283FB9200;
  sub_22C36D548(v7);
  sub_22C90718C();
  sub_22C4C0440();
  v8 = v6 + *(v5 + 28);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v1 + v3);
}

void *sub_22C4C0440()
{
  v1 = sub_22C3727F4();
  v2 = _s15BravoComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C0EBC(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C04D8()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15BravoComponentsVMa(v2) + 64);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4C05D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v83 = a3;
  v4 = sub_22C9063DC();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v6 = MEMORY[0x28223BE20](v78);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v71 - v8;
  v9 = type metadata accessor for FullPlannerPreferences(0);
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v22 = sub_22C90046C();
  v89 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v76 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v77 = _s15BravoComponentsVMa(0);
  v27 = *(v77 + 44);
  v85 = a1;
  sub_22C4C3618(a1 + v27, v18, type metadata accessor for FullPlannerPreferences);
  v28 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v82 = v18;
  sub_22C4C3678(v18, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v29 = swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v86 = v29;
    return result;
  }

  v32 = *(v89 + 32);
  v71 = v22;
  v32(v26, v21, v22);
  v33 = v85;
  sub_22C4C3618(v85 + v27, v16, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4C3678(v16, type metadata accessor for FullPlannerPreferences);
  v35 = v87;
  v34 = v88;
  v36 = v87 == 0x6E65476E656B6F74 && v88 == 0xEE00726F74617265;
  v37 = v27;
  if (v36 || (sub_22C90B4FC() & 1) != 0)
  {
    v76 = v26;

    v38 = v89;
    v39 = v77;
    v40 = v81;
    sub_22C3E8FB4(v33 + *(v77 + 36), v81, &qword_27D9BB728, &qword_22C911230);
    v41 = *(v39 + 20);
    v42 = v78;
    v43 = *(v78 + 20);
    v44 = sub_22C90077C();
    (*(*(v44 - 8) + 16))(v40 + v43, v33 + v41, v44);
    v45 = v82;
    sub_22C4C3618(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4C3678(v45, type metadata accessor for FullPlannerPreferences);
    *(v40 + *(v42 + 24)) = v87;
    v46 = v80;
    sub_22C4C3618(v40, v80, type metadata accessor for FullPlannerGMSClientConfiguration);
    v47 = v33 + v37;
    v48 = v79;
    sub_22C4C3618(v47, v79, type metadata accessor for FullPlannerPreferences);
    v49 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v50 = v83;
    v83[3] = v49;
    v50[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370, &unk_22C911600);
    v51 = sub_22C36D548(v50);
    v52 = v84;
    sub_22C4D0D18(v46, v48, v51);
    v29 = v52;
    if (v52)
    {
      sub_22C4C3678(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v38 + 8))(v76, v71);
      result = sub_22C4BF5D8(v50);
      goto LABEL_10;
    }

    sub_22C4C3678(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
    v53 = v71;
    v26 = v76;
  }

  else
  {
    v81 = v28;
    v54 = v35 == 0x65696C4370747468 && v34 == 0xEA0000000000746ELL;
    v38 = v89;
    if (v54)
    {
    }

    else
    {
      v55 = sub_22C90B4FC();

      if ((v55 & 1) == 0)
      {
        v56 = v72;
        sub_22C903F7C();
        v57 = sub_22C9063CC();
        v58 = sub_22C90AADC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = v26;
          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v60;
          v26 = v59;
          MEMORY[0x2318B9880](v61, -1, -1);
        }

        (*(v73 + 8))(v56, v74);
        sub_22C3DD0D8();
        v29 = swift_allocError();
        *v62 = 0;
        v62[1] = 0;
        swift_willThrow();
        result = (*(v38 + 8))(v26, v71);
        goto LABEL_10;
      }
    }

    v53 = v71;
    (*(v38 + 16))(v76, v26, v71);
    v63 = v82;
    sub_22C4C3618(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C901EDC();
    sub_22C4C3678(v63, type metadata accessor for FullPlannerPreferences);
    v64 = v87;
    v65 = v88;
    v66 = v33 + v37;
    v67 = v75;
    sub_22C4C3618(v66, v75, type metadata accessor for FullPlannerPreferences);
    v68 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v69 = v83;
    v83[3] = v68;
    v69[4] = &off_2818B22B8;
    v70 = sub_22C36D548(v69);
    sub_22C3F5190(v76, v64, v65, v67, v70);
  }

  return (*(v38 + 8))(v26, v53);
}

uint64_t sub_22C4C0EBC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v119 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) - 8;
  v4 = MEMORY[0x28223BE20](v119);
  v120 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v118 = (&v103 - v6);
  v133 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  MEMORY[0x28223BE20](v133);
  v111 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v115 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  MEMORY[0x28223BE20](v115);
  v132 = (&v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v113 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  MEMORY[0x28223BE20](v113);
  v131 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v112);
  v130 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v110);
  v129 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  MEMORY[0x28223BE20](v128);
  v127 = (&v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = (type metadata accessor for EntityValuePromptRenderer_v2_0(0) - 8);
  v13 = MEMORY[0x28223BE20](v109);
  v116 = &v103 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v126 = (&v103 - v15);
  v105 = type metadata accessor for FullPlannerPreferences(0) - 8;
  v16 = MEMORY[0x28223BE20](v105);
  v106 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v104 = &v103 - v18;
  v19 = type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v165 = 0;
  memset(v164, 0, sizeof(v164));
  v21[3] = &type metadata for EnumerationCaseDefinitionRenderer_v1_0;
  v21[4] = &off_283FB8E80;
  v21[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v21[9] = &off_283FB8EC8;
  v22 = v21;
  v23 = swift_allocObject();
  v22[5] = v23;
  v24 = v22;
  sub_22C4C0000((v23 + 16));
  v25 = v19[6];
  v26 = _s15BravoComponentsVMa(0);
  v123 = v26[6];

  sub_22C90718C();

  v27 = sub_22C908AEC();
  sub_22C36C640(v22 + v25, 0, 1, v27);
  v28 = v19[7];
  v29 = v26[5];
  v108 = v26;
  v30 = sub_22C90077C();
  (*(*(v30 - 8) + 16))(v24 + v28, a1 + v29, v30);
  sub_22C36C640(v24 + v28, 0, 1, v30);
  v31 = v26[11];
  v32 = v19[8];
  v134 = type metadata accessor for FullPlannerPreferences;
  v33 = v31;
  v117 = v24;
  sub_22C4C3618(a1 + v31, v24 + v32, type metadata accessor for FullPlannerPreferences);
  v34 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v114 = a2;
  a2[32] = v34;
  a2[33] = &off_283FB96A0;
  v35 = v34;
  v36 = sub_22C36D548(a2 + 29);
  v36[3] = v19;
  v36[4] = &off_283FB8E68;
  v37 = sub_22C36D548(v36);
  sub_22C4C3618(v24, v37, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  v36[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v36[9] = &off_283FB8FE0;
  v38 = swift_allocObject();
  v36[5] = v38;
  sub_22C4BECC0(v164, v38 + 16);
  v36[13] = &type metadata for UTTypeRenderer_v1_0;
  v36[14] = &off_283FB8FD0;
  sub_22C4C0000(v36 + 15);
  v36[24] = 0;
  *(v36 + 10) = 0u;
  *(v36 + 11) = 0u;

  sub_22C90718C();

  v160[3] = v35;
  v160[4] = &off_283FB9688;
  v39 = sub_22C36D548(v160);
  sub_22C4C3618(v36, v39, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v161 = 0u;
  v162 = 0u;
  v163 = 0;
  v159[3] = v35;
  v125 = v35;
  v159[4] = &off_283FB96A0;
  v40 = sub_22C36D548(v159);
  v124 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C3618(v36, v40, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v159[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v159[9] = &off_283FB8FC0;
  v159[13] = &type metadata for INPersonRenderer_v1_0;
  v159[14] = &off_283FB8FB0;
  v155[3] = v35;
  v155[4] = &off_283FB96A0;
  v41 = sub_22C36D548(v155);
  v107 = v36;
  sub_22C4C3618(v36, v41, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v157 = &type metadata for PrimitiveValueRenderer_v1_0;
  v158 = &off_283FB8EB8;
  v156 = swift_allocObject();
  sub_22C4BEF30(v159, v156 + 16);
  v42 = v33;
  v121 = a1;
  v122 = v33;
  v43 = a1 + v33;
  v44 = v104;
  v45 = v134;
  sub_22C4C3618(v43, v104, v134);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4C3678(v44, type metadata accessor for FullPlannerPreferences);
  v46 = v148[0];
  v47 = a1 + v42;
  v48 = v106;
  sub_22C4C3618(v47, v106, v45);
  sub_22C901EDC();
  sub_22C4C3678(v48, type metadata accessor for FullPlannerPreferences);
  v49 = v148[0];
  v153 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v154 = &off_283FB9738;
  v152 = swift_allocObject();
  sub_22C4C32E8(v155, v152 + 16);
  v148[1] = 0;
  v148[0] = 0;
  v148[2] = v46;
  v149 = 0;
  v150 = v49;
  v151 = 0;
  v50 = v126;
  v126[3] = v125;
  v50[4] = &off_283FB9688;
  v51 = v50;
  v52 = sub_22C36D548(v50);
  sub_22C4C3618(v36, v52, v124);
  v51[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v51[9] = &off_283FB9728;
  v53 = swift_allocObject();
  v51[5] = v53;
  sub_22C4C3344(v148, v53 + 16);
  v54 = v121;

  sub_22C90718C();

  v55 = v127;
  sub_22C4C020C(v127);
  v55[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v55[9] = &off_283FB9668;
  v56 = swift_allocObject();
  v55[5] = v56;
  sub_22C4C33A0(v160, v56 + 16);
  v57 = v128;
  sub_22C4C3618(v54 + v122, v55 + *(v128 + 24), v134);

  v58 = v129;
  sub_22C90718C();

  v59 = v110;
  v60 = (v58 + *(v110 + 20));
  v60[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v60[4] = &off_283FB9668;
  v61 = swift_allocObject();
  *v60 = v61;
  sub_22C4C33A0(v160, v61 + 16);
  v62 = (v58 + *(v59 + 24));
  v62[3] = v57;
  v62[4] = &off_283FB8E50;
  v63 = sub_22C36D548(v62);
  v109 = type metadata accessor for DynamicEnumerationRenderer_v1_0;
  sub_22C4C3618(v55, v63, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  v144[3] = v59;
  v144[4] = &off_283FB8F90;
  v64 = sub_22C36D548(v144);
  sub_22C4C3618(v58, v64, type metadata accessor for TypeInstanceRenderer_v1_0);
  v145 = 0u;
  v146 = 0u;
  v147 = 0;
  v65 = v54;
  v66 = v130;
  sub_22C3E8FB4(v54 + v108[7], v130, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4C0000(v143);
  v67 = v131;
  *(v131 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v67 + 32) = &off_283FB8ED8;
  v68 = swift_allocObject();
  *v67 = v68;
  sub_22C4BEDC0(v144, v68 + 16);
  *(v67 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v67 + 72) = &off_283FB9968;
  v69 = swift_allocObject();
  *(v67 + 40) = v69;
  sub_22C4C33FC(v143, v69 + 16);
  *(v67 + 80) = 0u;
  *(v67 + 96) = 0u;
  *(v67 + 112) = 0;
  v70 = v112;
  *(v67 + 144) = v112;
  *(v67 + 152) = &off_283FB8F70;
  v71 = sub_22C36D548((v67 + 120));
  sub_22C4C3618(v66, v71, type metadata accessor for ToolDescriptionProvider_v1_0);
  v72 = v113;
  v73 = v122;
  v74 = v134;
  sub_22C4C3618(v65 + v122, v67 + *(v113 + 32), v134);
  v75 = v132;
  *v132 = 0u;
  v75[1] = 0u;
  *(v75 + 4) = 0;
  *(v75 + 8) = v70;
  *(v75 + 9) = &off_283FB8F70;
  v76 = sub_22C36D548(v75 + 5);
  sub_22C4C3618(v66, v76, type metadata accessor for ToolDescriptionProvider_v1_0);
  v77 = v115;
  sub_22C4C3618(v65 + v73, v75 + *(v115 + 24), v74);
  v141[3] = v72;
  v141[4] = &off_283FB8F40;
  v78 = sub_22C36D548(v141);
  sub_22C4C3618(v67, v78, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C0000(v142);
  v140[3] = &type metadata for ToolNameRenderer_v2_0;
  v140[4] = &off_283FB9968;
  v140[0] = swift_allocObject();
  sub_22C4C33FC(v143, v140[0] + 16);
  v79 = v111;
  v111[3] = v72;
  v79[4] = &off_283FB8F40;
  v80 = sub_22C36D548(v79);
  sub_22C4C3618(v67, v80, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v79[8] = v77;
  v79[9] = &off_283FB8E98;
  v81 = sub_22C36D548(v79 + 5);
  sub_22C4C3618(v75, v81, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v79[13] = &type metadata for EntitySetterRenderer_v1_0;
  v79[14] = &off_283FB8F18;
  v82 = swift_allocObject();
  v79[10] = v82;
  sub_22C4BEE78(v141, v82 + 16);
  v79[18] = &type metadata for UIControlRenderer_v2_0;
  v79[19] = &off_283FB9700;
  v83 = swift_allocObject();
  v79[15] = v83;
  sub_22C4BEED4(v140, v83 + 16);
  v79[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v79[24] = &off_283FB96C0;
  v84 = swift_allocObject();
  v79[20] = v84;
  v84[5] = &type metadata for ToolNameRenderer_v2_0;
  v84[6] = &off_283FB9968;
  v85 = swift_allocObject();
  v84[2] = v85;
  sub_22C4C33FC(v143, v85 + 16);

  sub_22C90718C();

  v86 = v118;
  v87 = v125;
  v118[3] = v125;
  v86[4] = &off_283FB9688;
  v88 = sub_22C36D548(v86);
  v89 = v107;
  v90 = v124;
  sub_22C4C3618(v107, v88, v124);
  v86[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v86[9] = &off_283FB9718;

  sub_22C90718C();

  v136[3] = v87;
  v136[4] = &off_283FB96A0;
  v91 = sub_22C36D548(v136);
  sub_22C4C3618(v89, v91, v90);
  v138 = &type metadata for PrimitiveValueRenderer_v1_0;
  v139 = &off_283FB8EB8;
  v137 = swift_allocObject();
  sub_22C4BEF30(v159, v137 + 16);
  sub_22C4BEF8C(v136, v135);
  v92 = v126;
  v93 = v116;
  sub_22C4C3618(v126, v116, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v94 = v120;
  sub_22C4C3618(v86, v120, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v95 = sub_22C4D6614(v135, v93, v94);
  v96 = v114;
  sub_22C4C0000(v114);
  v96[8] = v133;
  v96[9] = &off_283FB9640;
  v97 = sub_22C36D548(v96 + 5);
  sub_22C4C3618(v79, v97, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v96[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v96[14] = &off_283FB8ED8;
  v98 = swift_allocObject();
  v96[10] = v98;
  sub_22C4BEDC0(v144, v98 + 16);
  v96[18] = &type metadata for ToolNameRenderer_v2_0;
  v96[19] = &off_283FB9968;
  v99 = swift_allocObject();
  v96[15] = v99;
  sub_22C4C33FC(v143, v99 + 16);
  v96[27] = v128;
  v96[28] = &off_283FB8E50;
  v100 = sub_22C36D548(v96 + 24);
  v101 = v127;
  sub_22C4C3618(v127, v100, v109);

  sub_22C4BF0A0(v136);
  sub_22C4C3678(v86, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4C3678(v79, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v140);
  sub_22C4BF1F0(v141);
  sub_22C4C3678(v132, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4C3678(v131, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v143);
  sub_22C4C3678(v130, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v144);
  sub_22C4C3678(v129, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4C3678(v101, type metadata accessor for DynamicEnumerationRenderer_v1_0);
  sub_22C4C3678(v92, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v148);
  sub_22C4C3534(v155);
  sub_22C4BF0F4(v159);
  sub_22C4C3588(v160);
  sub_22C4C3678(v117, type metadata accessor for EnumerationDefinitionPromptRenderer_v1_0);
  result = sub_22C4BF394(v164);
  v96[20] = v95;
  v96[21] = &off_283FB87B0;
  v96[22] = v95;
  v96[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4C1F9C()
{
  v1 = sub_22C3727F4();
  v2 = _s15BravoComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v20[0]);
  if (v20[13])
  {
    return memcpy(v0, v20, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v20[0]);
  sub_22C36BD58();
  sub_22C4C2034(v17);
  sub_22C3717CC();
  v18 = sub_22C37280C();
  return sub_22C4BF3E8(v18, v19);
}

double sub_22C4C2034@<D0>(uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v3 = swift_allocObject();
  *(a2 + 40) = v3;
  sub_22C4C0440();
  *(v3 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v4 = swift_allocObject();
  *(a2 + 80) = v4;
  *(v4 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v4 + 48) = &off_283FB8638;
  _s15BravoComponentsVMa(0);
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v5 = swift_allocObject();
  *(a2 + 120) = v5;
  v5[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v5[6] = &off_283FB84F8;
  sub_22C36D548(v5 + 2);

  sub_22C90718C();

  v6 = type metadata accessor for ExpressionParser_v1_0(0);
  v5[10] = v6;
  v5[11] = &off_283FB8460;
  v7 = sub_22C36D548(v5 + 7);

  sub_22C90718C();

  sub_22C4C0440();
  sub_22C378A4C(&v12, v7 + v6[6]);
  sub_22C3DF2E8(v11);
  sub_22C4C0000((v7 + v6[7]));
  v8 = v7 + v6[8];
  *(v8 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v8 + 4) = &off_283FB8298;
  v9 = v7 + v6[9];
  *(v9 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v9 + 4) = &off_283FB8588;
  sub_22C4C02D4((v7 + v6[10]));
  sub_22C4C020C(v7 + v6[11]);
  *v7 = 1;
  v5[15] = &type metadata for RenderingArbiter_v1_0;
  v5[16] = &off_283FB8588;
  *(a2 + 184) = type metadata accessor for StatementResultParser_v1_0(0);
  *(a2 + 192) = &off_283FB86D8;
  sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4C0440();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4C0440();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4C2330()
{
  v1 = sub_22C3727F4();
  v2 = _s15BravoComponentsVMa(v1);
  sub_22C3870F0(v2, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4C23D0(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C23D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s15BravoComponentsVMa(0);
  v5 = type metadata accessor for ConversationParser_v1_0(0);
  a2[3] = v5;
  a2[4] = &off_283FB83D0;
  v6 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4C1F9C();
  sub_22C4C0440();
  v7 = (v6 + v5[7]);
  v7[3] = type metadata accessor for ToolFetcher(0);
  v7[4] = &off_283FB6BE0;
  v8 = sub_22C36D548(v7);
  sub_22C4C0124(v8);

  sub_22C90718C();

  sub_22C4C02D4((v6 + v5[8]));
  v9 = v6 + v5[9];
  *(v9 + 3) = &type metadata for StubGrammarGenerator;
  *(v9 + 4) = &off_283FB5308;
  result = sub_22C4C3618(a1 + *(v4 + 44), v6 + v5[12], type metadata accessor for FullPlannerPreferences);
  *(v6 + v5[10]) = 0;
  *(v6 + v5[11]) = 1;
  return result;
}

uint64_t sub_22C4C253C()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15BravoComponentsVMa(v2) + 80);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v6 = *v3;
    v7 = v4;
    v8 = *(v3 + 32);
  }

  if (*(&v7 + 1))
  {
    return sub_22C36C730(&v6, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  return sub_22C378A4C(v0, v3);
}

void sub_22C4C25E0()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15BravoComponentsVMa(v2) + 84);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4BF628(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4C26C8()
{
  v2 = sub_22C3727F4();
  v3 = *(_s15BravoComponentsVMa(v2) + 88);
  sub_22C3E8FB4(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

void sub_22C4C27D4()
{
  v0 = sub_22C3727F4();
  v1 = _s15BravoComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C2884@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_22C4C0440();
  v9 = _s15BravoComponentsVMa(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  if (*(v10 + 32))
  {
    v34[0] = *v10;
    v12 = v11;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v35);
    *a2 = v11;
  }

  else
  {
    v14 = v9;
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v30 = *(v10 + 24);
    v31 = v15;
    sub_22C42B564(v11, v16);
    sub_22C4C0000(v34);
    v33 = *(a1 + v14[6]);
    v17 = v14[11];
    v18 = (a1 + v14[10]);
    v20 = *v18;
    v19 = v18[1];
    v36 = v20;
    v32 = v19;
    v21 = type metadata accessor for PromptMapperResolver(0);
    a3[3] = v21;
    a3[4] = &off_283FB3CE0;
    v22 = sub_22C36D548(a3);
    sub_22C4C3618(a1 + v17, v22 + *(v21 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v35, v22);
    v22[34] = v11;
    v22[35] = v16;
    v23 = v30;
    v22[36] = v31;
    v22[37] = v23;
    sub_22C378A4C(v34, (v22 + 38));
    v24 = sub_22C90A75C();
    sub_22C36C640(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v32;
    v25[4] = v33;

    sub_22C580C40();
    v28 = v27;
    sub_22C36FF94(v34);
    result = sub_22C3DF2E8(v35);
    v29 = v36;
    v22[43] = v28;
    v22[44] = v29;
    v22[45] = v26;
  }

  return result;
}

void sub_22C4C2AE4()
{
  v0 = sub_22C3727F4();
  v1 = _s15BravoComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C2B94@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4C26C8();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4C27D4();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15BravoComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4C2CE8()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = *(_s15BravoComponentsVMa(0) + 100);
  result = sub_22C3E8FB4(v1 + v6, &v12, &qword_27D9BD420, &unk_22C918740);
  if (v13[24] == 255)
  {
    sub_22C36DD28(&v12, &qword_27D9BD420, &unk_22C918740);
    sub_22C369DF4();
    sub_22C4C3618(v1 + v9, v5, v10);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v11 = swift_allocObject();
    *v0 = v11;
    sub_22C50B704(v5, v11 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v6, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v6, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v8 = *v13;
    *v0 = v12;
    *(v0 + 16) = v8;
    *(v0 + 25) = *&v13[9];
  }

  return result;
}

void sub_22C4C2E50()
{
  v0 = sub_22C3727F4();
  v1 = _s15BravoComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4BF748(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C2F00@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4C25E0();
  if (v26)
  {
    v4 = v23;
    v22[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v23, v27);
  sub_22C4C04D8();
  if (v26)
  {
    v4 = v23;
    v21[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v27;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v23, v22);
  sub_22C4C2AE4();
  if (v26)
  {
    v4 = v23;
    *&v20[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    goto LABEL_7;
  }

  sub_22C36C730(&v23, v21);
  sub_22C4C2CE8();
  if (v26)
  {
    v4 = v23;
    v17[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    sub_22C36FF94(v27);
    v6 = v21;
    goto LABEL_8;
  }

  sub_22C36C730(&v23, v20);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = swift_allocObject();
  v9 = sub_22C36D1E4(v21, v21[3]);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v24 = &type metadata for PostInferenceHandler;
  v25 = &off_283FB3BA0;
  *&v23 = swift_allocObject();
  memcpy((v23 + 16), v11, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v13 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v8 + v13) = sub_22C36E65C(1);
  sub_22C378A4C(v27, v8 + 16);
  sub_22C378A4C(v22, v8 + 56);
  sub_22C378A4C(v8 + 56, v17);
  v14 = v18;
  v15 = v19;
  sub_22C374168(v17, v18);
  (*(v15 + 16))(v14, v15);
  sub_22C36FF94(v22);
  sub_22C36FF94(v27);
  sub_22C36FF94(v17);
  sub_22C36C730(&v23, v8 + 96);
  sub_22C36C730(v20, v8 + qword_27D9BDFC8);
  result = sub_22C36FF94(v21);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v8;
  return result;
}

uint64_t sub_22C4C3458()
{
  sub_22C4C36D0();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22C4C35DC()
{
  sub_22C4C36D0();
  sub_22C36FF94((v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_22C4C3618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4C3678(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4C36D0()
{
  sub_22C36FF94((v0 + 16));

  return sub_22C36FF94((v0 + 56));
}

uint64_t sub_22C4C36FC@<X0>(uint64_t a1@<X8>)
{
  sub_22C4C61B8();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD438, &qword_22C918248);
    v5 = sub_22C3D32C8(&qword_281434CF0, &qword_27D9BD438, &qword_22C918248, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4C63C4();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4C381C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4C3890@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C90077C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v48 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x65696C72616843;
  *(a2 + 1) = 0xE700000000000000;
  v7 = _s17CharlieComponentsVMa(0);
  v8.n128_f64[0] = sub_22C388F74(v7[12]);
  sub_22C369DE4(*(v9 + 52), v8);
  sub_22C369DE4(*(v10 + 56), v11);
  sub_22C369DE4(*(v12 + 60), v13);
  sub_22C369DE4(*(v14 + 64), v15);
  *(v16 + 40) = -1;
  bzero(&a2[*(v17 + 68)], 0x110uLL);
  bzero(&a2[v7[18]], 0x190uLL);
  v18.n128_f64[0] = sub_22C388F74(v7[19]);
  *(v19 + 40) = -1;
  sub_22C369DE4(v7[20], v18);
  sub_22C369DE4(v7[21], v20);
  *(v21 + 40) = -1;
  sub_22C369DE4(v7[22], v22);
  *(v23 + 40) = -1;
  sub_22C369DE4(v7[23], v24);
  *(v25 + 40) = -1;
  sub_22C369DE4(v7[24], v26);
  *(v27 + 40) = -1;
  sub_22C369DE4(v7[25], v28);
  *(v29 + 40) = -1;
  sub_22C369DE4(v7[26], v30);
  *(v31 + 40) = -1;
  v32 = *(v5 + 16);
  v32(&a2[v7[5]], a1, v4);
  v33 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v7[6]] = *(a1 + v33[5]);
  sub_22C3E8FB4(a1 + v33[6], &a2[v7[7]], &qword_27D9BB730, &unk_22C90FE30);
  v34 = a1 + v33[10];
  type metadata accessor for FullPlannerPreferences(0);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  if (v50 == 1)
  {
    v49 = 0;
    v35 = v48;
    v32(v48, a1, v4);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v49, v35, &v50);
    v44 = v50;
    v45 = v51;
    v46 = v52;
  }

  else
  {
    v44 = 0;
    v46 = 0;
    v45 = 0uLL;
  }

  v36 = &a2[v7[8]];
  *v36 = v44;
  *(v36 + 8) = v45;
  *(v36 + 3) = v46;
  v36[32] = 0;
  sub_22C3E8FB4(a1 + v33[7], &a2[v7[9]], &qword_27D9BB728, &qword_22C911230);
  v37 = (a1 + v33[8]);
  v38 = *v37;
  v39 = v37[1];
  v40 = &a2[v7[10]];
  *v40 = v38;
  *(v40 + 1) = v39;
  sub_22C369E0C();
  sub_22C4C7170(v34, &a2[v41], v42);

  return sub_22C4C71D0(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s17CharlieComponentsVMa(uint64_t a1)
{
  result = qword_2814352F8;
  if (!qword_2814352F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4C3C38@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s17CharlieComponentsVMa(0);
  v4 = *(v3 + 48);
  sub_22C3E8FB4(v1 + v4, &v9, &qword_27D9BD3D0, &unk_22C918320);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3D0, &unk_22C918320);
  v6 = *(v3 + 44);
  v7 = type metadata accessor for AppNameRenderer_v1_0(0);
  a1[3] = v7;
  a1[4] = &off_283FB8878;
  v8 = sub_22C36D548(a1);
  sub_22C9006AC();
  sub_22C4C7170(v1 + v6, v8 + *(v7 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3D0, &unk_22C918320);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C3D5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s17CharlieComponentsVMa(0) + 52);
  sub_22C3E8FB4(v1 + v3, &v6, &qword_27D9BD400, &unk_22C918710);
  if (v7)
  {
    return sub_22C36C730(&v6, a1);
  }

  sub_22C36DD28(&v6, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  v5 = swift_allocObject();
  *a1 = v5;
  sub_22C4C3C38((v5 + 16));
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C3E44@<X0>(uint64_t *a1@<X8>)
{
  v3 = _s17CharlieComponentsVMa(0);
  v4 = *(v3 + 56);
  sub_22C3E8FB4(v1 + v4, &v8, &qword_27D9BD3E0, &unk_22C918720);
  if (v9)
  {
    return sub_22C36C730(&v8, a1);
  }

  sub_22C36DD28(&v8, &qword_27D9BD3E0, &unk_22C918720);
  v6 = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  a1[3] = v6;
  a1[4] = &off_283FB9A30;
  v7 = sub_22C36D548(a1);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[4] = 0;
  sub_22C4C7170(v1 + *(v3 + 44), v7 + *(v6 + 20), type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v1 + v4, &qword_27D9BD3E0, &unk_22C918720);
  return sub_22C378A4C(a1, v1 + v4);
}

uint64_t sub_22C4C3F5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s17CharlieComponentsVMa(0) + 60);
  sub_22C3E8FB4(v1 + v3, &v9, &qword_27D9BD3F8, &unk_22C918340);
  if (v10)
  {
    return sub_22C36C730(&v9, a1);
  }

  sub_22C36DD28(&v9, &qword_27D9BD3F8, &unk_22C918340);
  v5 = type metadata accessor for ToolRenderer_v2_0(0);
  a1[3] = v5;
  a1[4] = &off_283FB9988;
  v6 = sub_22C36D548(a1);
  sub_22C90718C();
  sub_22C4C40C8();
  v7 = (v6 + *(v5 + 24));
  v7[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v7[4] = &off_283FB9200;
  sub_22C36D548(v7);
  sub_22C90718C();
  sub_22C4C40C8();
  v8 = v6 + *(v5 + 28);
  *(v8 + 4) = 0;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  sub_22C36DD28(v1 + v3, &qword_27D9BD3F8, &unk_22C918340);
  return sub_22C378A4C(a1, v1 + v3);
}

void *sub_22C4C40C8()
{
  v1 = sub_22C3727F4();
  v2 = _s17CharlieComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C4B44(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C4160()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17CharlieComponentsVMa(v2) + 64);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4C425C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v86 = a2;
  v83 = a3;
  v4 = sub_22C9063DC();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v6 = MEMORY[0x28223BE20](v78);
  v80 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v71 - v8;
  v9 = type metadata accessor for FullPlannerPreferences(0);
  v10 = MEMORY[0x28223BE20](v9);
  v75 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v71 - v17;
  v19 = sub_22C3A5908(&qword_27D9BB138, &qword_22C90DB70);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - v20;
  v22 = sub_22C90046C();
  v89 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v76 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v71 - v25;
  v77 = _s17CharlieComponentsVMa(0);
  v27 = *(v77 + 44);
  v85 = a1;
  sub_22C4C7170(a1 + v27, v18, type metadata accessor for FullPlannerPreferences);
  v28 = sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  v82 = v18;
  sub_22C4C71D0(v18, type metadata accessor for FullPlannerPreferences);
  sub_22C90041C();

  if (sub_22C370B74(v21, 1, v22) == 1)
  {
    sub_22C36DD28(v21, &qword_27D9BB138, &qword_22C90DB70);
    sub_22C3DD0D8();
    v29 = swift_allocError();
    *v30 = 0xD000000000000019;
    v30[1] = 0x800000022C930EA0;
    result = swift_willThrow();
LABEL_10:
    *v86 = v29;
    return result;
  }

  v32 = *(v89 + 32);
  v71 = v22;
  v32(v26, v21, v22);
  v33 = v85;
  sub_22C4C7170(v85 + v27, v16, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4C71D0(v16, type metadata accessor for FullPlannerPreferences);
  v35 = v87;
  v34 = v88;
  v36 = v87 == 0x6E65476E656B6F74 && v88 == 0xEE00726F74617265;
  v37 = v27;
  if (v36 || (sub_22C90B4FC() & 1) != 0)
  {
    v76 = v26;

    v38 = v89;
    v39 = v77;
    v40 = v81;
    sub_22C3E8FB4(v33 + *(v77 + 36), v81, &qword_27D9BB728, &qword_22C911230);
    v41 = *(v39 + 20);
    v42 = v78;
    v43 = *(v78 + 20);
    v44 = sub_22C90077C();
    (*(*(v44 - 8) + 16))(v40 + v43, v33 + v41, v44);
    v45 = v82;
    sub_22C4C7170(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
    sub_22C901EDC();
    sub_22C4C71D0(v45, type metadata accessor for FullPlannerPreferences);
    *(v40 + *(v42 + 24)) = v87;
    v46 = v80;
    sub_22C4C7170(v40, v80, type metadata accessor for FullPlannerGMSClientConfiguration);
    v47 = v33 + v37;
    v48 = v79;
    sub_22C4C7170(v47, v79, type metadata accessor for FullPlannerPreferences);
    v49 = sub_22C3A5908(&qword_27D9BD428, &unk_22C918370);
    v50 = v83;
    v83[3] = v49;
    v50[4] = sub_22C3D32C8(&qword_27D9BD430, &qword_27D9BD428, &unk_22C918370, &unk_22C911600);
    v51 = sub_22C36D548(v50);
    v52 = v84;
    sub_22C4D0D18(v46, v48, v51);
    v29 = v52;
    if (v52)
    {
      sub_22C4C71D0(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
      (*(v38 + 8))(v76, v71);
      result = sub_22C4BF5D8(v50);
      goto LABEL_10;
    }

    sub_22C4C71D0(v40, type metadata accessor for FullPlannerGMSClientConfiguration);
    v53 = v71;
    v26 = v76;
  }

  else
  {
    v81 = v28;
    v54 = v35 == 0x65696C4370747468 && v34 == 0xEA0000000000746ELL;
    v38 = v89;
    if (v54)
    {
    }

    else
    {
      v55 = sub_22C90B4FC();

      if ((v55 & 1) == 0)
      {
        v56 = v72;
        sub_22C903F7C();
        v57 = sub_22C9063CC();
        v58 = sub_22C90AADC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = v26;
          v60 = swift_slowAlloc();
          *v60 = 0;
          v61 = v60;
          v26 = v59;
          MEMORY[0x2318B9880](v61, -1, -1);
        }

        (*(v73 + 8))(v56, v74);
        sub_22C3DD0D8();
        v29 = swift_allocError();
        *v62 = 0;
        v62[1] = 0;
        swift_willThrow();
        result = (*(v38 + 8))(v26, v71);
        goto LABEL_10;
      }
    }

    v53 = v71;
    (*(v38 + 16))(v76, v26, v71);
    v63 = v82;
    sub_22C4C7170(v33 + v37, v82, type metadata accessor for FullPlannerPreferences);
    sub_22C901EDC();
    sub_22C4C71D0(v63, type metadata accessor for FullPlannerPreferences);
    v64 = v87;
    v65 = v88;
    v66 = v33 + v37;
    v67 = v75;
    sub_22C4C7170(v66, v75, type metadata accessor for FullPlannerPreferences);
    v68 = type metadata accessor for FullPlannerHTTPClientInterface(0);
    v69 = v83;
    v83[3] = v68;
    v69[4] = &off_2818B22B8;
    v70 = sub_22C36D548(v69);
    sub_22C3F5190(v76, v64, v65, v67, v70);
  }

  return (*(v38 + 8))(v26, v53);
}

uint64_t sub_22C4C4B44@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v141 = a2;
  v130 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) - 8;
  v3 = MEMORY[0x28223BE20](v130);
  v131 = &v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v128 = (&v114 - v5);
  v143 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  MEMORY[0x28223BE20](v143);
  v122 = (&v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  MEMORY[0x28223BE20](v125);
  v142 = (&v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  MEMORY[0x28223BE20](v124);
  v140 = &v114 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v123);
  v139 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v121);
  v138 = &v114 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  MEMORY[0x28223BE20](v137);
  v136 = (&v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = (type metadata accessor for EntityValuePromptRenderer_v2_0(0) - 8);
  v12 = MEMORY[0x28223BE20](v120);
  v127 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = (&v114 - v14);
  v117 = type metadata accessor for FullPlannerPreferences(0) - 8;
  v15 = MEMORY[0x28223BE20](v117);
  v118 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v114 - v17;
  v18 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = 0;
  memset(v175, 0, sizeof(v175));
  v24 = _s17CharlieComponentsVMa(0);
  *(v23 + 4) = 0;
  *v23 = 0u;
  *(v23 + 1) = 0u;
  v25 = *(v24 + 44);
  v26 = v24;
  v119 = v24;
  v27 = *(v21 + 20);
  v28 = v25;
  v144 = type metadata accessor for FullPlannerPreferences;
  v145 = v25;
  v129 = v23;
  sub_22C4C7170(a1 + v25, &v23[v27], type metadata accessor for FullPlannerPreferences);
  *(v20 + 3) = v21;
  *(v20 + 4) = &off_283FB9A58;
  v29 = sub_22C36D548(v20);
  sub_22C4C7170(v23, v29, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  *(v20 + 8) = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  *(v20 + 9) = &off_283FB8EC8;
  v30 = swift_allocObject();
  *(v20 + 5) = v30;
  sub_22C4C3C38((v30 + 16));
  *(v20 + 14) = 0;
  *(v20 + 5) = 0u;
  *(v20 + 6) = 0u;
  v31 = v20;
  v132 = *(v26 + 24);

  sub_22C90718C();

  v32 = *(v26 + 20);
  v33 = *(v18 + 32);
  v34 = sub_22C90077C();
  (*(*(v34 - 8) + 16))(v31 + v33, a1 + v32, v34);
  v35 = v31 + *(v18 + 36);
  v36 = v31;
  v126 = v31;
  sub_22C4C7170(a1 + v28, v35, type metadata accessor for FullPlannerPreferences);
  v37 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v38 = v141;
  v141[32] = v37;
  v38[33] = &off_283FB96A0;
  v39 = v37;
  v40 = sub_22C36D548(v38 + 29);
  v40[3] = v18;
  v40[4] = &off_283FB9A40;
  v41 = sub_22C36D548(v40);
  sub_22C4C7170(v36, v41, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v40[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v40[9] = &off_283FB8FE0;
  v42 = swift_allocObject();
  v40[5] = v42;
  sub_22C4BECC0(v175, v42 + 16);
  v40[13] = &type metadata for UTTypeRenderer_v1_0;
  v40[14] = &off_283FB8FD0;
  v43 = a1;
  sub_22C4C3C38(v40 + 15);
  v40[24] = 0;
  *(v40 + 10) = 0u;
  *(v40 + 11) = 0u;

  sub_22C90718C();

  v171[3] = v39;
  v171[4] = &off_283FB9688;
  v44 = sub_22C36D548(v171);
  sub_22C4C7170(v40, v44, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v172 = 0u;
  v173 = 0u;
  v174 = 0;
  v170[3] = v39;
  v134 = v39;
  v170[4] = &off_283FB96A0;
  v45 = sub_22C36D548(v170);
  v133 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C7170(v40, v45, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v170[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v170[9] = &off_283FB8FC0;
  v170[13] = &type metadata for INPersonRenderer_v1_0;
  v170[14] = &off_283FB8FB0;
  v166[3] = v39;
  v166[4] = &off_283FB96A0;
  v46 = sub_22C36D548(v166);
  v115 = v40;
  sub_22C4C7170(v40, v46, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v168 = &type metadata for PrimitiveValueRenderer_v1_0;
  v169 = &off_283FB8EB8;
  v167 = swift_allocObject();
  sub_22C4BEF30(v170, v167 + 16);
  v47 = v145;
  v48 = a1 + v145;
  v49 = v116;
  v50 = v144;
  sub_22C4C7170(v48, v116, v144);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4C71D0(v49, type metadata accessor for FullPlannerPreferences);
  v51 = v159[0];
  v52 = v43 + v47;
  v53 = v118;
  sub_22C4C7170(v52, v118, v50);
  sub_22C901EDC();
  sub_22C4C71D0(v53, type metadata accessor for FullPlannerPreferences);
  v54 = v159[0];
  v164 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v165 = &off_283FB9738;
  v163 = swift_allocObject();
  sub_22C4C32E8(v166, v163 + 16);
  v159[1] = 0;
  v159[0] = 0;
  v159[2] = v51;
  v160 = 0;
  v161 = v54;
  v162 = 0;
  v55 = v135;
  v135[3] = v134;
  v55[4] = &off_283FB9688;
  v56 = v55;
  v57 = sub_22C36D548(v55);
  sub_22C4C7170(v40, v57, v133);
  v56[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v56[9] = &off_283FB9728;
  v58 = swift_allocObject();
  v56[5] = v58;
  sub_22C4C3344(v159, v58 + 16);

  sub_22C90718C();

  v59 = v136;
  sub_22C4C3E44(v136);
  v59[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v59[9] = &off_283FB9668;
  v60 = swift_allocObject();
  v59[5] = v60;
  sub_22C4C33A0(v171, v60 + 16);
  v61 = v137;
  v62 = (v59 + *(v137 + 24));
  sub_22C4C3E44(v62);
  v62[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v62[9] = &off_283FB9668;
  v63 = swift_allocObject();
  v62[5] = v63;
  sub_22C4C33A0(v171, v63 + 16);
  v64 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v65 = v145;
  v66 = v62 + *(v64 + 24);
  v67 = v144;
  sub_22C4C7170(v43 + v145, v66, v144);
  v68 = v59 + *(v61 + 28);
  *(v68 + 4) = 0;
  *v68 = 0u;
  *(v68 + 1) = 0u;
  sub_22C4C7170(v43 + v65, v59 + *(v61 + 32), v67);

  v69 = v138;
  sub_22C90718C();

  v70 = v121;
  v71 = (v69 + *(v121 + 20));
  v71[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v71[4] = &off_283FB9668;
  v72 = swift_allocObject();
  *v71 = v72;
  sub_22C4C33A0(v171, v72 + 16);
  v73 = (v69 + *(v70 + 24));
  v73[3] = v61;
  v73[4] = &off_283FB9A18;
  v74 = sub_22C36D548(v73);
  v120 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4C7170(v59, v74, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v155[3] = v70;
  v155[4] = &off_283FB8F90;
  v75 = sub_22C36D548(v155);
  sub_22C4C7170(v69, v75, type metadata accessor for TypeInstanceRenderer_v1_0);
  v156 = 0u;
  v157 = 0u;
  v158 = 0;
  v76 = v139;
  sub_22C3E8FB4(v43 + *(v119 + 28), v139, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4C3C38(v154);
  v77 = v140;
  *(v140 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v77 + 32) = &off_283FB8ED8;
  v78 = swift_allocObject();
  *v77 = v78;
  sub_22C4BEDC0(v155, v78 + 16);
  *(v77 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v77 + 72) = &off_283FB9968;
  v79 = swift_allocObject();
  *(v77 + 40) = v79;
  sub_22C4C33FC(v154, v79 + 16);
  *(v77 + 80) = 0u;
  *(v77 + 96) = 0u;
  *(v77 + 112) = 0;
  v80 = v123;
  *(v77 + 144) = v123;
  *(v77 + 152) = &off_283FB8F70;
  v81 = sub_22C36D548((v77 + 120));
  sub_22C4C7170(v76, v81, type metadata accessor for ToolDescriptionProvider_v1_0);
  v82 = v124;
  v83 = v144;
  v84 = v145;
  sub_22C4C7170(v43 + v145, v77 + *(v124 + 32), v144);
  v85 = v142;
  *v142 = 0u;
  v85[1] = 0u;
  *(v85 + 4) = 0;
  *(v85 + 8) = v80;
  *(v85 + 9) = &off_283FB8F70;
  v86 = v85;
  v87 = sub_22C36D548(v85 + 5);
  sub_22C4C7170(v76, v87, type metadata accessor for ToolDescriptionProvider_v1_0);
  v88 = v125;
  sub_22C4C7170(v43 + v84, v86 + *(v125 + 24), v83);
  v152[3] = v82;
  v152[4] = &off_283FB8F40;
  v89 = sub_22C36D548(v152);
  sub_22C4C7170(v77, v89, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C3C38(v153);
  v151[3] = &type metadata for ToolNameRenderer_v2_0;
  v151[4] = &off_283FB9968;
  v151[0] = swift_allocObject();
  sub_22C4C33FC(v154, v151[0] + 16);
  v90 = v122;
  v122[3] = v82;
  v90[4] = &off_283FB8F40;
  v91 = sub_22C36D548(v90);
  sub_22C4C7170(v77, v91, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v90[8] = v88;
  v90[9] = &off_283FB8E98;
  v92 = sub_22C36D548(v90 + 5);
  sub_22C4C7170(v86, v92, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v90[13] = &type metadata for EntitySetterRenderer_v1_0;
  v90[14] = &off_283FB8F18;
  v93 = swift_allocObject();
  v90[10] = v93;
  sub_22C4BEE78(v152, v93 + 16);
  v90[18] = &type metadata for UIControlRenderer_v2_0;
  v90[19] = &off_283FB9700;
  v94 = swift_allocObject();
  v90[15] = v94;
  sub_22C4BEED4(v151, v94 + 16);
  v90[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v90[24] = &off_283FB96C0;
  v95 = swift_allocObject();
  v90[20] = v95;
  v95[5] = &type metadata for ToolNameRenderer_v2_0;
  v95[6] = &off_283FB9968;
  v96 = swift_allocObject();
  v95[2] = v96;
  sub_22C4C33FC(v154, v96 + 16);

  sub_22C90718C();

  v97 = v128;
  v98 = v134;
  v128[3] = v134;
  v97[4] = &off_283FB9688;
  v99 = sub_22C36D548(v97);
  v100 = v115;
  v101 = v133;
  sub_22C4C7170(v115, v99, v133);
  v97[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v97[9] = &off_283FB9718;

  sub_22C90718C();

  v147[3] = v98;
  v147[4] = &off_283FB96A0;
  v102 = sub_22C36D548(v147);
  sub_22C4C7170(v100, v102, v101);
  v149 = &type metadata for PrimitiveValueRenderer_v1_0;
  v150 = &off_283FB8EB8;
  v148 = swift_allocObject();
  sub_22C4BEF30(v170, v148 + 16);
  sub_22C4BEF8C(v147, v146);
  v103 = v135;
  v104 = v127;
  sub_22C4C7170(v135, v127, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v105 = v131;
  sub_22C4C7170(v97, v131, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v106 = sub_22C4D6614(v146, v104, v105);
  v107 = v141;
  sub_22C4C3C38(v141);
  v107[8] = v143;
  v107[9] = &off_283FB9640;
  v108 = sub_22C36D548(v107 + 5);
  sub_22C4C7170(v90, v108, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v107[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v107[14] = &off_283FB8ED8;
  v109 = swift_allocObject();
  v107[10] = v109;
  sub_22C4BEDC0(v155, v109 + 16);
  v107[18] = &type metadata for ToolNameRenderer_v2_0;
  v107[19] = &off_283FB9968;
  v110 = swift_allocObject();
  v107[15] = v110;
  sub_22C4C33FC(v154, v110 + 16);
  v107[27] = v137;
  v107[28] = &off_283FB9A18;
  v111 = sub_22C36D548(v107 + 24);
  v112 = v136;
  sub_22C4C7170(v136, v111, v120);

  sub_22C4BF0A0(v147);
  sub_22C4C71D0(v97, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4C71D0(v90, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v151);
  sub_22C4BF1F0(v152);
  sub_22C4C71D0(v142, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4C71D0(v140, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v154);
  sub_22C4C71D0(v139, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v155);
  sub_22C4C71D0(v138, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4C71D0(v112, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4C71D0(v103, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v159);
  sub_22C4C3534(v166);
  sub_22C4BF0F4(v170);
  sub_22C4C3588(v171);
  sub_22C4C71D0(v126, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4C71D0(v129, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  result = sub_22C4BF394(v175);
  v107[20] = v106;
  v107[21] = &off_283FB87B0;
  v107[22] = v106;
  v107[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4C5D1C()
{
  v1 = sub_22C3727F4();
  v2 = _s17CharlieComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C5DB4(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4C5DB4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = _s17CharlieComponentsVMa(0);
  v8 = type metadata accessor for SpanEventPromptGenerator_v3_0(0);
  *(a2 + 24) = v8;
  *(a2 + 32) = &off_283FB9B38;
  v9 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4C40C8();
  sub_22C4C7170(a1 + *(v7 + 44), v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4C71D0(v6, type metadata accessor for FullPlannerPreferences);
  *(v9 + *(v8 + 24)) = v19[0];
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v10 = swift_allocObject();
  *(a2 + 40) = v10;
  sub_22C4C40C8();
  *(v10 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v11 = swift_allocObject();
  *(a2 + 80) = v11;
  *(v11 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v11 + 48) = &off_283FB8638;
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v12 = swift_allocObject();
  *(a2 + 120) = v12;
  v12[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v12[6] = &off_283FB84F8;
  sub_22C36D548(v12 + 2);

  sub_22C90718C();

  v13 = type metadata accessor for ExpressionParser_v1_0(0);
  v12[10] = v13;
  v12[11] = &off_283FB8460;
  v14 = sub_22C36D548(v12 + 7);

  sub_22C90718C();

  sub_22C4C40C8();
  sub_22C378A4C(&v20, v14 + v13[6]);
  sub_22C3DF2E8(v19);
  sub_22C4C3C38((v14 + v13[7]));
  v15 = v14 + v13[8];
  *(v15 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v15 + 4) = &off_283FB8298;
  v16 = v14 + v13[9];
  *(v16 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v16 + 4) = &off_283FB8588;
  sub_22C4C3F5C((v14 + v13[10]));
  sub_22C4C3E44((v14 + v13[11]));
  *v14 = 1;
  v12[15] = &type metadata for RenderingArbiter_v1_0;
  v12[16] = &off_283FB8588;
  *(a2 + 184) = type metadata accessor for StatementResultParser_v1_0(0);
  *(a2 + 192) = &off_283FB86D8;
  sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4C40C8();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4C40C8();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4C61B8()
{
  v1 = sub_22C3727F4();
  v2 = _s17CharlieComponentsVMa(v1);
  sub_22C3870F0(v2, v3, &qword_27D9BD3F0, &qword_22C918240, v4, v5, v6, v7, v23);
  sub_22C372800();
  if (v16)
  {
    sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v23);
    v17 = sub_22C36BD58();
    sub_22C4C6258(v17, v18);
    *(v0 + 40) = 0;
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C6258@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s17CharlieComponentsVMa(0);
  v5 = type metadata accessor for ConversationParser_v1_0(0);
  a2[3] = v5;
  a2[4] = &off_283FB83D0;
  v6 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4C5D1C();
  sub_22C4C40C8();
  v7 = (v6 + v5[7]);
  v7[3] = type metadata accessor for ToolFetcher(0);
  v7[4] = &off_283FB6BE0;
  v8 = sub_22C36D548(v7);
  sub_22C4C3D5C(v8);

  sub_22C90718C();

  sub_22C4C3F5C((v6 + v5[8]));
  v9 = v6 + v5[9];
  *(v9 + 3) = &type metadata for StubGrammarGenerator;
  *(v9 + 4) = &off_283FB5308;
  result = sub_22C4C7170(a1 + *(v4 + 44), v6 + v5[12], type metadata accessor for FullPlannerPreferences);
  *(v6 + v5[10]) = 0;
  *(v6 + v5[11]) = 1;
  return result;
}

uint64_t sub_22C4C63C4()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17CharlieComponentsVMa(v2) + 80);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v6 = *v3;
    v7 = v4;
    v8 = *(v3 + 32);
  }

  if (*(&v7 + 1))
  {
    return sub_22C36C730(&v6, v0);
  }

  *(v0 + 24) = &unk_283FB3DF8;
  *(v0 + 32) = &off_2818B2580;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  return sub_22C378A4C(v0, v3);
}

void sub_22C4C6468()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s17CharlieComponentsVMa(v2) + 84);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4C36FC(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4C6550()
{
  v2 = sub_22C3727F4();
  v3 = *(_s17CharlieComponentsVMa(v2) + 88);
  sub_22C3E8FB4(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

void sub_22C4C665C()
{
  v0 = sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C670C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_22C4C40C8();
  v9 = _s17CharlieComponentsVMa(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  if (*(v10 + 32))
  {
    v34[0] = *v10;
    v12 = v11;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v35);
    *a2 = v11;
  }

  else
  {
    v14 = v9;
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v30 = *(v10 + 24);
    v31 = v15;
    sub_22C42B564(v11, v16);
    sub_22C4C3C38(v34);
    v33 = *(a1 + v14[6]);
    v17 = v14[11];
    v18 = (a1 + v14[10]);
    v20 = *v18;
    v19 = v18[1];
    v36 = v20;
    v32 = v19;
    v21 = type metadata accessor for PromptMapperResolver(0);
    a3[3] = v21;
    a3[4] = &off_283FB3CE0;
    v22 = sub_22C36D548(a3);
    sub_22C4C7170(a1 + v17, v22 + *(v21 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v35, v22);
    v22[34] = v11;
    v22[35] = v16;
    v23 = v30;
    v22[36] = v31;
    v22[37] = v23;
    sub_22C378A4C(v34, (v22 + 38));
    v24 = sub_22C90A75C();
    sub_22C36C640(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v32;
    v25[4] = v33;

    sub_22C580C40();
    v28 = v27;
    sub_22C36FF94(v34);
    result = sub_22C3DF2E8(v35);
    v29 = v36;
    v22[43] = v28;
    v22[44] = v29;
    v22[45] = v26;
  }

  return result;
}

void sub_22C4C696C()
{
  v0 = sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C6A1C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4C6550();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4C665C();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s17CharlieComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4C6B70()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = *(_s17CharlieComponentsVMa(0) + 100);
  result = sub_22C3E8FB4(v1 + v6, &v12, &qword_27D9BD420, &unk_22C918740);
  if (v13[24] == 255)
  {
    sub_22C36DD28(&v12, &qword_27D9BD420, &unk_22C918740);
    sub_22C369E0C();
    sub_22C4C7170(v1 + v9, v5, v10);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v11 = swift_allocObject();
    *v0 = v11;
    sub_22C50B704(v5, v11 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v6, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v6, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v8 = *v13;
    *v0 = v12;
    *(v0 + 16) = v8;
    *(v0 + 25) = *&v13[9];
  }

  return result;
}

void sub_22C4C6CD8()
{
  v0 = sub_22C3727F4();
  v1 = _s17CharlieComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C381C(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4C6D88@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4C6468();
  if (v26)
  {
    v4 = v23;
    v22[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v23, v27);
  sub_22C4C4160();
  if (v26)
  {
    v4 = v23;
    v21[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v27;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v23, v22);
  sub_22C4C696C();
  if (v26)
  {
    v4 = v23;
    *&v20[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    goto LABEL_7;
  }

  sub_22C36C730(&v23, v21);
  sub_22C4C6B70();
  if (v26)
  {
    v4 = v23;
    v17[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    sub_22C36FF94(v27);
    v6 = v21;
    goto LABEL_8;
  }

  sub_22C36C730(&v23, v20);
  v7 = sub_22C3A5908(&qword_27D9BD418, &unk_22C918360);
  v8 = swift_allocObject();
  v9 = sub_22C36D1E4(v21, v21[3]);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v24 = &type metadata for PostInferenceHandler;
  v25 = &off_283FB3BA0;
  *&v23 = swift_allocObject();
  memcpy((v23 + 16), v11, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v13 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v8 + v13) = sub_22C36E65C(1);
  sub_22C378A4C(v27, v8 + 16);
  sub_22C378A4C(v22, v8 + 56);
  sub_22C378A4C(v8 + 56, v17);
  v14 = v18;
  v15 = v19;
  sub_22C374168(v17, v18);
  (*(v15 + 16))(v14, v15);
  sub_22C36FF94(v22);
  sub_22C36FF94(v27);
  sub_22C36FF94(v17);
  sub_22C36C730(&v23, v8 + 96);
  sub_22C36C730(v20, v8 + qword_27D9BDFC8);
  result = sub_22C36FF94(v21);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v8;
  return result;
}

uint64_t sub_22C4C7170(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22C36985C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22C4C71D0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4C7290()
{
  sub_22C4C7270();

  return swift_deallocClassInstance();
}

uint64_t *sub_22C4C7324()
{
  sub_22C4C75A8(v0 + 16);
  v1 = *(*v0 + 96);
  v2 = sub_22C90AC6C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_22C4C73D4()
{
  sub_22C4C7324();

  return swift_deallocClassInstance();
}

uint64_t sub_22C4C742C()
{
}

uint64_t sub_22C4C745C()
{
  sub_22C4C7270();

  return v0;
}

uint64_t sub_22C4C7488()
{
  sub_22C4C745C();

  return swift_deallocClassInstance();
}

uint64_t sub_22C4C74D4(uint64_t a1)
{
  result = sub_22C90AC6C();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_22C4C75A8(uint64_t a1)
{
  v2 = sub_22C3A5908(&qword_27D9BD5D8, &qword_22C918510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22C4C7610@<X0>(uint64_t a1@<X8>)
{
  sub_22C4CA888();
  if (v7)
  {
    v2 = v6;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(&v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4CACFC();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4C7730@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4C77A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v59 - v5);
  v7 = sub_22C90077C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v60 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0x61746C6544;
  a2[1] = 0xE500000000000000;
  v10 = _s15DeltaComponentsVMa(0);
  v11.n128_f64[0] = sub_22C388F74(v10[13]);
  sub_22C369DE4(*(v12 + 56), v11);
  sub_22C369DE4(*(v13 + 60), v14);
  sub_22C369DE4(*(v15 + 64), v16);
  sub_22C369DE4(*(v17 + 68), v18);
  sub_22C369DE4(*(v19 + 72), v20);
  *(v21 + 40) = -1;
  bzero(a2 + *(v22 + 76), 0x110uLL);
  bzero(a2 + v10[20], 0x190uLL);
  v23.n128_f64[0] = sub_22C388F74(v10[21]);
  *(v24 + 40) = -1;
  sub_22C369DE4(v10[22], v23);
  sub_22C369DE4(v10[23], v25);
  *(v26 + 40) = -1;
  sub_22C369DE4(v10[24], v27);
  *(v28 + 40) = -1;
  sub_22C369DE4(v10[25], v29);
  *(v30 + 40) = -1;
  sub_22C369DE4(v10[26], v31);
  *(v32 + 40) = -1;
  sub_22C369DE4(v10[27], v33);
  *(v34 + 40) = -1;
  sub_22C369DE4(v10[28], v35);
  *(v36 + 40) = -1;
  v37 = *(v8 + 16);
  v38 = a2 + v10[5];
  v61 = v7;
  v37(v38, a1, v7);
  v39 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *(a2 + v10[6]) = *(a1 + v39[5]);
  sub_22C3E8FB4(a1 + v39[6], a2 + v10[7], &qword_27D9BB730, &unk_22C90FE30);
  v40 = a1 + v39[10];
  type metadata accessor for FullPlannerPreferences(0);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v62 = v40;
  sub_22C901EDC();
  if (v64 == 1)
  {
    v63 = 0;
    v41 = v60;
    v37(v60, a1, v61);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v63, v41, &v64);
    v56 = v64;
    v57 = v65;
    v58 = v66;
  }

  else
  {
    v56 = 0;
    v58 = 0;
    v57 = 0uLL;
  }

  v42 = a2 + v10[8];
  *v42 = v56;
  *(v42 + 8) = v57;
  *(v42 + 3) = v58;
  v42[32] = 0;
  sub_22C3E8FB4(a1 + v39[7], a2 + v10[9], &qword_27D9BB728, &qword_22C911230);
  v43 = (a1 + v39[8]);
  v44 = *v43;
  v45 = v43[1];
  v46 = (a2 + v10[10]);
  *v46 = v44;
  v46[1] = v45;
  sub_22C3E8FB4(a1 + v39[9], v6, &qword_27D9BB720, &unk_22C90FE20);
  v47 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v6, 1, v47) == 1)
  {

    sub_22C36DD28(v6, &qword_27D9BB720, &unk_22C90FE20);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0x3000000000000007;
  }

  else
  {
    v48 = *v6;
    v49 = v6[1];
    v51 = v6[2];
    v50 = v6[3];

    sub_22C4C7C38(v48, v49, v51);
    sub_22C4CBAC0(v6, type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration);
  }

  v52 = (a2 + v10[12]);
  *v52 = v48;
  v52[1] = v49;
  v52[2] = v51;
  v52[3] = v50;
  sub_22C369E0C();
  sub_22C4C7170(v62, a2 + v53, v54);
  return sub_22C4CBAC0(a1, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s15DeltaComponentsVMa(uint64_t a1)
{
  result = qword_27D9BD5E0;
  if (!qword_27D9BD5E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4C7C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000007) != 0)
  {
    return sub_22C472434(a1, a2, a3);
  }

  return a1;
}

void sub_22C4C7C78(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C9071BC();
    if (v2 <= 0x3F)
    {
      sub_22C4BBD30(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v3 <= 0x3F)
      {
        sub_22C4BFF78(319);
        if (v4 <= 0x3F)
        {
          sub_22C4BBD30(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v5 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences(319);
              if (v7 <= 0x3F)
              {
                sub_22C430E9C(319, &qword_27D9BD5F0, &type metadata for PromptGrammar.GrammarPieceContent);
                if (v8 <= 0x3F)
                {
                  sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                  if (v9 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                    if (v10 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD5F8, &qword_27D9BD600, &qword_22C918528);
                      if (v11 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                        if (v12 <= 0x3F)
                        {
                          sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                          if (v13 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_28142F948, &qword_27D9BD608, qword_22C918610);
                            if (v14 <= 0x3F)
                            {
                              sub_22C430E9C(319, &qword_281434970, &type metadata for PromptRenderer);
                              if (v15 <= 0x3F)
                              {
                                sub_22C430E9C(319, &qword_281434B98, &type metadata for EventParsers);
                                if (v16 <= 0x3F)
                                {
                                  sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, qword_2814335D8, &qword_27D9BD610, &unk_22C918650);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, &qword_28142F940, &qword_27D9BD618, &qword_22C918530);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                                if (v24 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22C4C80F4()
{
  result = qword_27D9BD620;
  if (!qword_27D9BD620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9BD620);
  }

  return result;
}

uint64_t sub_22C4C8148()
{
  v2 = sub_22C3727F4();
  v3 = _s15DeltaComponentsVMa(v2);
  v4 = *(v3 + 52);
  v5 = sub_22C3E8FB4(v1 + v4, &v19, &qword_27D9BD3D0, &unk_22C918320);
  if (v20)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  }

  sub_22C36D798(&v19);
  v14 = *(v3 + 44);
  v0[3] = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  sub_22C369E0C();
  sub_22C4C7170(v1 + v14, v15 + v16, v17);
  sub_22C36D798(v1 + v4);
  return sub_22C378A4C(v0, v1 + v4);
}

uint64_t sub_22C4C8240@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s15DeltaComponentsVMa(0) + 56);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v2_0;
  a1[4] = &off_283FB9968;
  *a1 = swift_allocObject();
  sub_22C4C8148();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4C8328()
{
  v2 = sub_22C3727F4();
  v3 = _s15DeltaComponentsVMa(v2);
  v4 = sub_22C3E8FB4(v1 + *(v3 + 60), &v16, &qword_27D9BD628, &unk_22C91A390);
  if (v17)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v15, v16);
  }

  sub_22C36DD28(&v16, &qword_27D9BD628, &unk_22C91A390);
  *(v0 + 24) = &unk_283FB9C10;
  *(v0 + 32) = &off_283FB9DC8;
  sub_22C3717CC();
  v13 = sub_22C37280C();
  return sub_22C378A4C(v13, v14);
}

uint64_t sub_22C4C83D4()
{
  v2 = sub_22C3727F4();
  v3 = *(_s15DeltaComponentsVMa(v2) + 64);
  v4 = sub_22C3E8FB4(v1 + v3, &v18, &qword_27D9BD3E0, &unk_22C918720);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v0[3] = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[4] = &off_283FB9A30;
  v13 = sub_22C36D548(v0);
  sub_22C4C8328();
  sub_22C369E0C();
  sub_22C4C7170(v1 + v14, v13 + v15, v16);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4C84BC()
{
  v2 = sub_22C3727F4();
  v3 = *(_s15DeltaComponentsVMa(v2) + 68);
  v4 = sub_22C3E8FB4(v1 + v3, &v18, &qword_27D9BD3F8, &unk_22C918340);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v13 = type metadata accessor for ToolRenderer_v2_0(0);
  v0[3] = v13;
  v0[4] = &off_283FB9988;
  v14 = sub_22C36D548(v0);
  sub_22C90718C();
  sub_22C4C8614();
  v15 = (v14 + *(v13 + 24));
  v15[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v15[4] = &off_283FB9200;
  sub_22C36D548(v15);
  sub_22C90718C();
  sub_22C4C8614();
  v16 = v14 + *(v13 + 28);
  *(v16 + 3) = &unk_283FB9BD0;
  *(v16 + 4) = &off_283FB9DA0;
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

void *sub_22C4C8614()
{
  v1 = sub_22C3727F4();
  v2 = _s15DeltaComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4C91D0(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4C86AC()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15DeltaComponentsVMa(v2) + 72);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4C87A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = sub_22C9063DC();
  v75 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v72 - v8;
  v9 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - v12;
  v78 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  MEMORY[0x28223BE20](v78);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v15 = MEMORY[0x28223BE20](v14);
  v77 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v89 = &v72 - v19;
  v20 = type metadata accessor for FullPlannerPreferences(0);
  v21 = MEMORY[0x28223BE20](v20);
  v76 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v72 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = _s15DeltaComponentsVMa(0);
  v31 = v30[11];
  sub_22C4C7170(a1 + v31, v29, type metadata accessor for FullPlannerPreferences);
  v85 = v20;
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4CBAC0(v29, type metadata accessor for FullPlannerPreferences);
  v32 = v90[0];
  if (*&v90[0] != 0x6E65476E656B6F74 || *(&v90[0] + 1) != 0xEE00726F74617265)
  {
    v73 = v4;
    v34 = v88;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v32 == 0x65696C4370747468 && *(&v32 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v64 = sub_22C90B4FC();

        if ((v64 & 1) == 0)
        {
          sub_22C903F7C();
          v65 = sub_22C9063CC();
          v66 = sub_22C90AADC();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = v34;
            v68 = swift_slowAlloc();
            *v68 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v65, v66, v69, v68, 2u);
            v70 = v68;
            v34 = v67;
            MEMORY[0x2318B9880](v70, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v7 = v74;
      sub_22C903F7C();
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v34;
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v75 + 8))(v7, v73);
      sub_22C3DD0D8();
      v52 = swift_allocError();
      *v71 = 0;
      v71[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v35 = a1 + v30[9];
  v36 = a1;
  v37 = v89;
  sub_22C3E8FB4(v35, v89, &qword_27D9BB728, &qword_22C911230);
  v38 = v30[5];
  v84 = v14;
  v39 = *(v14 + 5);
  v40 = sub_22C90077C();
  (*(*(v40 - 8) + 16))(v37 + v39, v36 + v38, v40);
  sub_22C4C7170(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4CBAC0(v27, type metadata accessor for FullPlannerPreferences);
  *(v37 + *(v84 + 6)) = v90[0];
  v41 = v36;
  sub_22C4C7170(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4CBAC0(v27, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v90[0]) == 1)
  {
    v42 = v82;
    sub_22C4C7170(v89, v82, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4C7170(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v91);
    sub_22C4CBAC0(v27, type metadata accessor for FullPlannerPreferences);
    LODWORD(v85) = v91;
    v43 = v36 + v31;
    v44 = v79;
    sub_22C4C7170(v43, v79, type metadata accessor for FullPlannerPreferences);
    v45 = v87;
    v46 = v78;
    v87[3] = v78;
    v45[4] = &off_2818B22E0;
    v84 = sub_22C36D548(v45);
    v47 = *(v46 + 24);
    v48 = v81;
    sub_22C901ADC();
    v49 = sub_22C901AEC();
    sub_22C36C640(v48, 0, 1, v49);
    sub_22C3E8FB4(v48, v80, &qword_27D9BD638, &unk_22C92C240);
    v50 = v83;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v48, &qword_27D9BD638, &unk_22C92C240);
    v51 = v86;
    sub_22C3EECF8(v42, 2, v44, v90);
    v52 = v51;
    v53 = v89;
    if (!v51)
    {
      sub_22C4CBAC0(v44, type metadata accessor for FullPlannerPreferences);
      sub_22C4CBAC0(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v90, v50);
      *(v50 + 40) = v85;
      sub_22C4CBB18(v50, v84);
      return sub_22C4CBAC0(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4CBAC0(v44, type metadata accessor for FullPlannerPreferences);
    sub_22C4CBAC0(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4CBAC0(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    v54 = sub_22C901B3C();
    (*(*(v54 - 8) + 8))(v50 + v47, v54);
    result = sub_22C4BF5D8(v45);
    v34 = v88;
  }

  else
  {
    v56 = v89;
    v57 = v77;
    sub_22C4C7170(v89, v77, type metadata accessor for FullPlannerGMSClientConfiguration);
    v58 = v76;
    sub_22C4C7170(v41 + v31, v76, type metadata accessor for FullPlannerPreferences);
    v59 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v60 = v87;
    v87[3] = v59;
    v60[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560, &unk_22C911600);
    v61 = sub_22C36D548(v60);
    v62 = v86;
    sub_22C4D0D40(v57, v58, v61);
    v52 = v62;
    result = sub_22C4CBAC0(v56, type metadata accessor for FullPlannerGMSClientConfiguration);
    v34 = v88;
    if (!v62)
    {
      return result;
    }

    result = sub_22C4BF5D8(v60);
  }

LABEL_24:
  *v34 = v52;
  return result;
}

uint64_t sub_22C4C91D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v141 = a2;
  v130 = type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) - 8;
  v3 = MEMORY[0x28223BE20](v130);
  v131 = &v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v128 = (&v113 - v5);
  v143 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0(0);
  MEMORY[0x28223BE20](v143);
  v122 = (&v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0(0);
  MEMORY[0x28223BE20](v125);
  v142 = (&v113 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v124 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  MEMORY[0x28223BE20](v124);
  v140 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v123);
  v139 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v121);
  v138 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  MEMORY[0x28223BE20](v137);
  v136 = (&v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v120 = (type metadata accessor for EntityValuePromptRenderer_v2_0(0) - 8);
  v12 = MEMORY[0x28223BE20](v120);
  v127 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v135 = (&v113 - v14);
  v117 = type metadata accessor for FullPlannerPreferences(0) - 8;
  v15 = MEMORY[0x28223BE20](v117);
  v118 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v113 - v17;
  v18 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v113 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = &unk_283FB9D88;
  v169 = &off_283FB9E30;
  v167[0] = 1;
  *(v23 + 3) = &unk_283FB9BF0;
  *(v23 + 4) = &off_283FB9DB0;
  v24 = _s15DeltaComponentsVMa(0);
  v25 = *(v24 + 44);
  v26 = v24;
  v27 = &v23[*(v21 + 20)];
  v129 = v23;
  v132 = type metadata accessor for FullPlannerPreferences;
  sub_22C4C7170(a1 + v25, v27, type metadata accessor for FullPlannerPreferences);
  v20[3] = v21;
  v20[4] = &off_283FB9A58;
  v28 = sub_22C36D548(v20);
  sub_22C4C7170(v23, v28, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v20[8] = &type metadata for Hack_EnumerationDefinition_TypeReferenceRenderer_v1_0;
  v20[9] = &off_283FB8EC8;
  v20[5] = swift_allocObject();
  sub_22C4C8148();
  v20[13] = &unk_283FB9BF0;
  v20[14] = &off_283FB9DB0;
  v119 = v26;
  v144 = *(v26 + 24);

  sub_22C90718C();

  v29 = *(v26 + 20);
  v30 = *(v18 + 32);
  v31 = sub_22C90077C();
  (*(*(v31 - 8) + 16))(v20 + v30, a1 + v29, v31);
  v32 = v25;
  v33 = v20 + *(v18 + 36);
  v126 = v20;
  sub_22C4C7170(a1 + v25, v33, type metadata accessor for FullPlannerPreferences);
  v34 = type metadata accessor for TypeIdentifierRenderer_v2_0(0);
  v35 = v141;
  v141[32] = v34;
  v35[33] = &off_283FB96A0;
  v36 = v34;
  v37 = sub_22C36D548(v35 + 29);
  v37[3] = v18;
  v37[4] = &off_283FB9A40;
  v38 = sub_22C36D548(v37);
  sub_22C4C7170(v20, v38, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v37[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v37[9] = &off_283FB8FE0;
  v39 = swift_allocObject();
  v37[5] = v39;
  sub_22C4BECC0(v167, v39 + 16);
  v37[13] = &type metadata for UTTypeRenderer_v1_0;
  v37[14] = &off_283FB8FD0;
  sub_22C4C8148();
  v37[23] = &unk_283FB9D10;
  v37[24] = &off_283FB9E20;

  sub_22C90718C();

  v166[3] = v36;
  v166[4] = &off_283FB9688;
  v40 = sub_22C36D548(v166);
  sub_22C4C7170(v37, v40, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v166[8] = &unk_283FB9CF0;
  v166[9] = &off_283FB9E10;
  v165[3] = v36;
  v134 = v36;
  v165[4] = &off_283FB96A0;
  v41 = sub_22C36D548(v165);
  v133 = type metadata accessor for TypeIdentifierRenderer_v2_0;
  sub_22C4C7170(v37, v41, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v165[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v165[9] = &off_283FB8FC0;
  v165[13] = &type metadata for INPersonRenderer_v1_0;
  v165[14] = &off_283FB8FB0;
  v161[3] = v36;
  v161[4] = &off_283FB96A0;
  v42 = sub_22C36D548(v161);
  v115 = v37;
  sub_22C4C7170(v37, v42, type metadata accessor for TypeIdentifierRenderer_v2_0);
  v163 = &type metadata for PrimitiveValueRenderer_v1_0;
  v164 = &off_283FB8EB8;
  v162 = swift_allocObject();
  sub_22C4BEF30(v165, v162 + 16);
  v43 = v32;
  v114 = v32;
  v44 = a1 + v32;
  v45 = v116;
  v46 = v132;
  sub_22C4C7170(v44, v116, v132);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4CBAC0(v45, type metadata accessor for FullPlannerPreferences);
  v47 = v154[0];
  v48 = a1 + v43;
  v49 = v118;
  sub_22C4C7170(v48, v118, v46);
  sub_22C901EDC();
  sub_22C4CBAC0(v49, type metadata accessor for FullPlannerPreferences);
  v50 = v154[0];
  v159 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v160 = &off_283FB9738;
  v158 = swift_allocObject();
  sub_22C4C32E8(v161, v158 + 16);
  v154[1] = 0;
  v154[0] = 0;
  v154[2] = v47;
  v155 = 0;
  v156 = v50;
  v157 = 0;
  v51 = v135;
  v135[3] = v134;
  v51[4] = &off_283FB9688;
  v52 = v51;
  v53 = sub_22C36D548(v51);
  sub_22C4C7170(v37, v53, v133);
  v52[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v52[9] = &off_283FB9728;
  v54 = swift_allocObject();
  v52[5] = v54;
  sub_22C4C3344(v154, v54 + 16);

  sub_22C90718C();

  v55 = v136;
  sub_22C4C83D4();
  v55[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v55[9] = &off_283FB9668;
  v56 = swift_allocObject();
  v55[5] = v56;
  sub_22C4C33A0(v166, v56 + 16);
  v57 = v137;
  v58 = (v55 + *(v137 + 24));
  sub_22C4C83D4();
  v58[8] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v58[9] = &off_283FB9668;
  v59 = swift_allocObject();
  v58[5] = v59;
  sub_22C4C33A0(v166, v59 + 16);
  v60 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v61 = v114;
  v62 = v132;
  sub_22C4C7170(a1 + v114, v58 + *(v60 + 24), v132);
  sub_22C4C8328();
  sub_22C4C7170(a1 + v61, v55 + *(v57 + 32), v62);

  v63 = v138;
  sub_22C90718C();

  v64 = v121;
  v65 = (v63 + *(v121 + 20));
  v65[3] = &type metadata for StaticTypeInstanceRenderer_v2_0;
  v65[4] = &off_283FB9668;
  v66 = swift_allocObject();
  *v65 = v66;
  sub_22C4C33A0(v166, v66 + 16);
  v67 = (v63 + *(v64 + 24));
  v67[3] = v57;
  v67[4] = &off_283FB9A18;
  v68 = sub_22C36D548(v67);
  v120 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4C7170(v55, v68, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v153[3] = v64;
  v153[4] = &off_283FB8F90;
  v69 = sub_22C36D548(v153);
  sub_22C4C7170(v63, v69, type metadata accessor for TypeInstanceRenderer_v1_0);
  v153[8] = &unk_283FB9CD0;
  v153[9] = &off_283FB9E00;
  v70 = v139;
  sub_22C3E8FB4(a1 + *(v119 + 28), v139, &qword_27D9BB730, &unk_22C90FE30);
  v71 = a1;
  sub_22C4C8148();
  v72 = v140;
  *(v140 + 24) = &type metadata for ParameterDefinitionRenderer_v1_0;
  *(v72 + 32) = &off_283FB8ED8;
  v73 = swift_allocObject();
  *v72 = v73;
  sub_22C4BEDC0(v153, v73 + 16);
  *(v72 + 64) = &type metadata for ToolNameRenderer_v2_0;
  *(v72 + 72) = &off_283FB9968;
  v74 = swift_allocObject();
  *(v72 + 40) = v74;
  sub_22C4C33FC(v152, v74 + 16);
  *(v72 + 104) = &unk_283FB9C88;
  *(v72 + 112) = &off_283FB9DE0;
  *(v72 + 80) = 1;
  v75 = v123;
  *(v72 + 144) = v123;
  *(v72 + 152) = &off_283FB8F70;
  v76 = v72;
  v77 = sub_22C36D548((v72 + 120));
  sub_22C4C7170(v70, v77, type metadata accessor for ToolDescriptionProvider_v1_0);
  v78 = v124;
  v79 = v61;
  v80 = v71 + v61;
  v81 = v71;
  v82 = v62;
  sub_22C4C7170(v80, v76 + *(v124 + 32), v62);
  v83 = v142;
  v142[3] = &unk_283FB9CB0;
  v83[4] = &off_283FB9DF0;
  v83[8] = v75;
  v83[9] = &off_283FB8F70;
  v84 = v83;
  v85 = sub_22C36D548(v83 + 5);
  sub_22C4C7170(v70, v85, type metadata accessor for ToolDescriptionProvider_v1_0);
  v86 = v125;
  v87 = *(v125 + 24);
  v113 = v81;
  sub_22C4C7170(v81 + v79, v84 + v87, v82);
  v151[3] = v78;
  v151[4] = &off_283FB8F40;
  v88 = sub_22C36D548(v151);
  sub_22C4C7170(v76, v88, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C8148();
  v150[3] = &type metadata for ToolNameRenderer_v2_0;
  v150[4] = &off_283FB9968;
  v150[0] = swift_allocObject();
  sub_22C4C33FC(v152, v150[0] + 16);
  v89 = v122;
  v122[3] = v78;
  v89[4] = &off_283FB8F40;
  v90 = sub_22C36D548(v89);
  sub_22C4C7170(v76, v90, type metadata accessor for ToolDefinitionRenderer_v1_0);
  v89[8] = v86;
  v89[9] = &off_283FB8E98;
  v91 = sub_22C36D548(v89 + 5);
  sub_22C4C7170(v84, v91, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  v89[13] = &type metadata for EntitySetterRenderer_v1_0;
  v89[14] = &off_283FB8F18;
  v92 = swift_allocObject();
  v89[10] = v92;
  sub_22C4BEE78(v151, v92 + 16);
  v89[18] = &type metadata for UIControlRenderer_v2_0;
  v89[19] = &off_283FB9700;
  v93 = swift_allocObject();
  v89[15] = v93;
  sub_22C4BEED4(v150, v93 + 16);
  v89[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v89[24] = &off_283FB96C0;
  v94 = swift_allocObject();
  v89[20] = v94;
  v94[5] = &type metadata for ToolNameRenderer_v2_0;
  v94[6] = &off_283FB9968;
  v95 = swift_allocObject();
  v94[2] = v95;
  sub_22C4C33FC(v152, v95 + 16);

  sub_22C90718C();

  v96 = v128;
  v97 = v134;
  v128[3] = v134;
  v96[4] = &off_283FB9688;
  v98 = sub_22C36D548(v96);
  v99 = v115;
  v100 = v133;
  sub_22C4C7170(v115, v98, v133);
  v96[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v96[9] = &off_283FB9718;

  sub_22C90718C();

  v146[3] = v97;
  v146[4] = &off_283FB96A0;
  v101 = sub_22C36D548(v146);
  sub_22C4C7170(v99, v101, v100);
  v148 = &type metadata for PrimitiveValueRenderer_v1_0;
  v149 = &off_283FB8EB8;
  v147 = swift_allocObject();
  sub_22C4BEF30(v165, v147 + 16);
  sub_22C4BEF8C(v146, v145);
  v102 = v135;
  v103 = v127;
  sub_22C4C7170(v135, v127, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v104 = v131;
  sub_22C4C7170(v96, v131, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v105 = sub_22C4D6614(v145, v103, v104);
  v106 = v141;
  sub_22C4C8148();
  v106[8] = v143;
  v106[9] = &off_283FB9640;
  v107 = sub_22C36D548(v106 + 5);
  sub_22C4C7170(v89, v107, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  v106[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v106[14] = &off_283FB8ED8;
  v108 = swift_allocObject();
  v106[10] = v108;
  sub_22C4BEDC0(v153, v108 + 16);
  v106[18] = &type metadata for ToolNameRenderer_v2_0;
  v106[19] = &off_283FB9968;
  v109 = swift_allocObject();
  v106[15] = v109;
  sub_22C4C33FC(v152, v109 + 16);
  v106[27] = v137;
  v106[28] = &off_283FB9A18;
  v110 = sub_22C36D548(v106 + 24);
  v111 = v136;
  sub_22C4C7170(v136, v110, v120);

  sub_22C4BF0A0(v146);
  sub_22C4CBAC0(v96, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4CBAC0(v89, type metadata accessor for RenderableToolDefinitionPromptRenderer_v2_0);
  sub_22C4BF19C(v150);
  sub_22C4BF1F0(v151);
  sub_22C4CBAC0(v142, type metadata accessor for AssistantSchemaIdentifierRenderer_v1_0);
  sub_22C4CBAC0(v140, type metadata accessor for ToolDefinitionRenderer_v1_0);
  sub_22C4C348C(v152);
  sub_22C4CBAC0(v139, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4BF298(v153);
  sub_22C4CBAC0(v138, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4CBAC0(v111, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4CBAC0(v102, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v154);
  sub_22C4C3534(v161);
  sub_22C4BF0F4(v165);
  sub_22C4C3588(v166);
  sub_22C4CBAC0(v126, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4CBAC0(v129, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  result = sub_22C4BF394(v167);
  v106[20] = v105;
  v106[21] = &off_283FB87B0;
  v106[22] = v105;
  v106[23] = &off_283FB87B0;
  return result;
}

void *sub_22C4CA3EC()
{
  v1 = sub_22C3727F4();
  v2 = _s15DeltaComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CA484(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4CA484@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = _s15DeltaComponentsVMa(0);
  v8 = type metadata accessor for SpanEventPromptGenerator_v3_0(0);
  *(a2 + 24) = v8;
  *(a2 + 32) = &off_283FB9B38;
  v9 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4C8614();
  sub_22C4C7170(a1 + *(v7 + 44), v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4CBAC0(v6, type metadata accessor for FullPlannerPreferences);
  *(v9 + *(v8 + 24)) = v19[0];
  *(a2 + 64) = &type metadata for ContextEventPromptGenerator_v2_0;
  *(a2 + 72) = &off_283FB9310;
  v10 = swift_allocObject();
  *(a2 + 40) = v10;
  sub_22C4C8614();
  *(v10 + 288) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v11 = swift_allocObject();
  *(a2 + 80) = v11;
  *(v11 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v11 + 48) = &off_283FB8638;
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v12 = swift_allocObject();
  *(a2 + 120) = v12;
  v12[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v12[6] = &off_283FB84F8;
  sub_22C36D548(v12 + 2);

  sub_22C90718C();

  v13 = type metadata accessor for ExpressionParser_v1_0(0);
  v12[10] = v13;
  v12[11] = &off_283FB8460;
  v14 = sub_22C36D548(v12 + 7);

  sub_22C90718C();

  sub_22C4C8614();
  sub_22C378A4C(&v20, v14 + v13[6]);
  sub_22C3DF2E8(v19);
  sub_22C4C8148();
  v15 = v14 + v13[8];
  *(v15 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v15 + 4) = &off_283FB8298;
  v16 = v14 + v13[9];
  *(v16 + 3) = &type metadata for RenderingArbiter_v1_0;
  *(v16 + 4) = &off_283FB8588;
  sub_22C4C84BC();
  sub_22C4C83D4();
  *v14 = 1;
  v12[15] = &type metadata for RenderingArbiter_v1_0;
  v12[16] = &off_283FB8588;
  *(a2 + 184) = type metadata accessor for StatementResultParser_v1_0(0);
  *(a2 + 192) = &off_283FB86D8;
  sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4C8614();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4C8614();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

void sub_22C4CA888()
{
  v0 = sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3F0, &qword_22C918240, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4CA938@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v31 = a3;
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22C90077C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22C4C84BC();
  sub_22C4C8614();
  v11 = _s15DeltaComponentsVMa(0);
  v12 = v11[5];
  v29 = v11[6];
  v13 = *(a1 + v29);
  v34 = v8;
  v14 = *(v8 + 16);
  v42 = v7;
  v14(v10, a1 + v12, v7);
  v15 = v11[11];
  v16 = (a1 + v11[12]);
  v17 = v16[1];
  v19 = v16[2];
  v20 = v16[3];
  v35 = *v16;
  v18 = v35;
  v36 = v17;
  v37 = v19;
  v38 = v20;
  v30 = v15;
  sub_22C4C7170(a1 + v15, v6, type metadata accessor for FullPlannerPreferences);

  sub_22C4C7C38(v18, v17, v19);
  v21 = v33;
  sub_22C5349F8(v39, v13, v10, &v35, v41);

  sub_22C4CBAC0(v6, type metadata accessor for FullPlannerPreferences);
  sub_22C4CBAA8(v35, v36, v37);
  (*(v34 + 8))(v10, v42);
  sub_22C3DF2E8(v39);
  if (v21)
  {
    result = sub_22C36FF94(v40);
    *v32 = v21;
  }

  else
  {
    sub_22C36FF94(v40);
    v23 = type metadata accessor for ConversationParser_v1_0(0);
    v24 = v31;
    v31[3] = v23;
    v24[4] = &off_283FB83D0;
    v25 = sub_22C36D548(v24);

    sub_22C90718C();

    sub_22C4CA3EC();
    sub_22C4C8614();
    v26 = (v25 + v23[7]);
    v26[3] = type metadata accessor for ToolFetcher(0);
    v26[4] = &off_283FB6BE0;
    v27 = sub_22C36D548(v26);
    sub_22C4C8240(v27);

    sub_22C90718C();

    sub_22C4C84BC();
    sub_22C36C730(v41, v25 + v23[9]);
    result = sub_22C4C7170(a1 + v30, v25 + v23[12], type metadata accessor for FullPlannerPreferences);
    *(v25 + v23[10]) = 0;
    *(v25 + v23[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4CACFC()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15DeltaComponentsVMa(v2) + 88);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v6 = *v3;
    v7 = v4;
    v8 = *(v3 + 32);
  }

  if (*(&v7 + 1))
  {
    return sub_22C36C730(&v6, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  return sub_22C378A4C(v0, v3);
}

void sub_22C4CADA0()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s15DeltaComponentsVMa(v2) + 92);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4C7610(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4CAE88()
{
  v2 = sub_22C3727F4();
  v3 = *(_s15DeltaComponentsVMa(v2) + 96);
  sub_22C3E8FB4(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

void sub_22C4CAF94()
{
  v0 = sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C8, &unk_22C9186B0, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4CB044@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_22C4C8614();
  v9 = _s15DeltaComponentsVMa(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  if (*(v10 + 32))
  {
    v34[0] = *v10;
    v12 = v11;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v35);
    *a2 = v11;
  }

  else
  {
    v14 = v9;
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v30 = *(v10 + 24);
    v31 = v15;
    sub_22C42B564(v11, v16);
    sub_22C4C8148();
    v33 = *(a1 + v14[6]);
    v17 = v14[11];
    v18 = (a1 + v14[10]);
    v20 = *v18;
    v19 = v18[1];
    v36 = v20;
    v32 = v19;
    v21 = type metadata accessor for PromptMapperResolver(0);
    a3[3] = v21;
    a3[4] = &off_283FB3CE0;
    v22 = sub_22C36D548(a3);
    sub_22C4C7170(a1 + v17, v22 + *(v21 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v35, v22);
    v22[34] = v11;
    v22[35] = v16;
    v23 = v30;
    v22[36] = v31;
    v22[37] = v23;
    sub_22C378A4C(v34, (v22 + 38));
    v24 = sub_22C90A75C();
    sub_22C36C640(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v32;
    v25[4] = v33;

    sub_22C580C40();
    v28 = v27;
    sub_22C36FF94(v34);
    result = sub_22C3DF2E8(v35);
    v29 = v36;
    v22[43] = v28;
    v22[44] = v29;
    v22[45] = v26;
  }

  return result;
}

void sub_22C4CB2A4()
{
  v0 = sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD3C0, &unk_22C918310, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4CB354@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_22C4CAE88();
  if (v12)
  {
    v6 = *&v11[0];
    *&v10[0] = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_5:
    *a2 = v6;
    return result;
  }

  sub_22C36C730(v11, v13);
  sub_22C4CAF94();
  if (v12)
  {
    v6 = *&v11[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C36FF94(v13);
    goto LABEL_5;
  }

  sub_22C36C730(v11, v10);
  v8 = *(a1 + *(_s15DeltaComponentsVMa(0) + 24));
  a3[3] = &type metadata for PostInferenceHandler;
  a3[4] = &off_283FB3BA0;
  v9 = swift_allocObject();
  *a3 = v9;
  sub_22C36C730(v13, v9 + 16);
  sub_22C36C730(v10, v9 + 56);
  *(v9 + 96) = v8;
}

uint64_t sub_22C4CB4A8()
{
  v2 = sub_22C3727F4();
  v3 = type metadata accessor for FullPlannerPreferences(v2);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  v6 = *(_s15DeltaComponentsVMa(0) + 108);
  result = sub_22C3E8FB4(v1 + v6, &v12, &qword_27D9BD420, &unk_22C918740);
  if (v13[24] == 255)
  {
    sub_22C36DD28(&v12, &qword_27D9BD420, &unk_22C918740);
    sub_22C369E0C();
    sub_22C4C7170(v1 + v9, v5, v10);
    *(v0 + 24) = &type metadata for RuleBasedPlanGenerator_v1_0;
    *(v0 + 32) = &off_283FB91F0;
    v11 = swift_allocObject();
    *v0 = v11;
    sub_22C50B704(v5, v11 + 16);
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v6, &qword_27D9BD420, &unk_22C918740);
    return sub_22C3E8FB4(v0, v1 + v6, &qword_27D9BD3B0, &unk_22C9182F0);
  }

  else
  {
    v8 = *v13;
    *v0 = v12;
    *(v0 + 16) = v8;
    *(v0 + 25) = *&v13[9];
  }

  return result;
}

void sub_22C4CB610()
{
  v0 = sub_22C3727F4();
  v1 = _s15DeltaComponentsVMa(v0);
  sub_22C3870F0(v1, v2, &qword_27D9BD410, &unk_22C918730, v3, v4, v5, v6, v23);
  sub_22C372800();
  if (v15)
  {
    sub_22C36BD3C(v7, v8, v9, v10, v11, v12, v13, v14, v23);
    v16 = sub_22C36BD58();
    sub_22C4C7730(v16, v17, v18);
    sub_22C3717CC();
    v19 = sub_22C37280C();
    sub_22C3E8FB4(v19, v20, v21, v22);
  }

  else
  {
    sub_22C36AA20(v7, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26);
  }
}

uint64_t sub_22C4CB6C0@<X0>(void *a1@<X1>, uint64_t *a2@<X8>)
{
  sub_22C4CADA0();
  if (v26)
  {
    v4 = v23;
    v22[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
LABEL_9:
    *a1 = v4;
    return result;
  }

  sub_22C36C730(&v23, v27);
  sub_22C4C86AC();
  if (v26)
  {
    v4 = v23;
    v21[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
LABEL_7:
    v6 = v27;
LABEL_8:
    result = sub_22C36FF94(v6);
    goto LABEL_9;
  }

  sub_22C36C730(&v23, v22);
  sub_22C4CB2A4();
  if (v26)
  {
    v4 = v23;
    *&v20[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    goto LABEL_7;
  }

  sub_22C36C730(&v23, v21);
  sub_22C4CB4A8();
  if (v26)
  {
    v4 = v23;
    v17[0] = v23;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    sub_22C36FF94(v22);
    sub_22C36FF94(v27);
    v6 = v21;
    goto LABEL_8;
  }

  sub_22C36C730(&v23, v20);
  v7 = sub_22C3A5908(&qword_27D9BD630, &qword_22C918558);
  v8 = swift_allocObject();
  v9 = sub_22C36D1E4(v21, v21[3]);
  MEMORY[0x28223BE20](v9);
  v11 = &v17[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v24 = &type metadata for PostInferenceHandler;
  v25 = &off_283FB3BA0;
  *&v23 = swift_allocObject();
  memcpy((v23 + 16), v11, 0x58uLL);
  sub_22C4BF48C();
  sub_22C90271C();
  v13 = qword_27D9BDFC0;
  type metadata accessor for TrialManager();
  swift_allocObject();
  *(v8 + v13) = sub_22C36E65C(1);
  sub_22C378A4C(v27, v8 + 16);
  sub_22C378A4C(v22, v8 + 56);
  sub_22C378A4C(v8 + 56, v17);
  v14 = v18;
  v15 = v19;
  sub_22C374168(v17, v18);
  (*(v15 + 16))(v14, v15);
  sub_22C36FF94(v22);
  sub_22C36FF94(v27);
  sub_22C36FF94(v17);
  sub_22C36C730(&v23, v8 + 96);
  sub_22C36C730(v20, v8 + qword_27D9BDFC8);
  result = sub_22C36FF94(v21);
  a2[3] = v7;
  a2[4] = &off_283FBBC08;
  *a2 = v8;
  return result;
}

uint64_t sub_22C4CBAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((~a3 & 0x3000000000000007) != 0)
  {
    return sub_22C472480(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_22C4CBAC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22C36985C();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22C4CBB18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22C4CBB7C@<X0>(uint64_t a1@<X8>)
{
  sub_22C4CF688(v6);
  if (v7)
  {
    v2 = *&v6[0];
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    result = swift_willThrowTypedImpl();
    *(a1 + 40) = 1;
  }

  else
  {
    sub_22C36C730(v6, v8);
    v4 = sub_22C3A5908(&qword_27D9BD648, &qword_22C918760);
    v5 = sub_22C3D32C8(qword_281434CF8, &qword_27D9BD648, &qword_22C918760, &unk_22C91B818);
    v2 = swift_allocObject();
    sub_22C4CFC84();
    *(v2 + 16) = 0;
    result = sub_22C36C730(v8, v2 + 24);
    v9 = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    *(a1 + 40) = 0;
  }

  *a1 = v2;
  return result;
}

double sub_22C4CBC9C@<D0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t, uint64_t *)@<X1>, _OWORD *a3@<X8>)
{
  a2(&v7, a1, &v6);
  v8[24] = 0;
  v4 = *v8;
  *a3 = v7;
  a3[1] = v4;
  result = *&v8[9];
  *(a3 + 25) = *&v8[9];
  return result;
}

uint64_t sub_22C4CBD10@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  MEMORY[0x28223BE20](v4 - 8);
  v75 = &v70 - v5;
  v6 = sub_22C3A5908(&qword_27D9BB720, &unk_22C90FE20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v73 = (&v70 - v9);
  v10 = sub_22C90077C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v72 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 1869112133;
  *(a2 + 1) = 0xE400000000000000;
  v13 = _s14EchoComponentsVMa(0);
  v14.n128_f64[0] = sub_22C38711C(&a2[v13[14]]);
  sub_22C369DE4(*(v15 + 60), v14);
  sub_22C369DE4(*(v16 + 64), v17);
  sub_22C369DE4(*(v18 + 68), v19);
  sub_22C369DE4(*(v20 + 72), v21);
  sub_22C369DE4(*(v22 + 76), v23);
  sub_22C369DE4(*(v24 + 80), v25);
  *(v26 + 40) = -1;
  bzero(&a2[*(v27 + 84)], 0x110uLL);
  bzero(&a2[v13[22]], 0x190uLL);
  v28.n128_f64[0] = sub_22C38711C(&a2[v13[23]]);
  *(v29 + 40) = -1;
  sub_22C369DE4(v13[24], v28);
  sub_22C369DE4(v13[25], v30);
  *(v31 + 40) = -1;
  sub_22C369DE4(v13[26], v32);
  *(v33 + 40) = -1;
  sub_22C369DE4(v13[27], v34);
  *(v35 + 40) = -1;
  sub_22C369DE4(v13[28], v36);
  *(v37 + 40) = -1;
  sub_22C369DE4(v13[29], v38);
  *(v39 + 40) = -1;
  sub_22C369DE4(v13[30], v40);
  *(v41 + 40) = -1;
  v42 = *(v11 + 16);
  v42(&a2[v13[5]], a1, v10);
  v43 = type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters(0);
  *&a2[v13[6]] = *&a1[v43[5]];
  sub_22C3E8FB4(&a1[v43[6]], &a2[v13[7]], &qword_27D9BB730, &unk_22C90FE30);
  v44 = &a1[v43[10]];
  type metadata accessor for FullPlannerPreferences(0);

  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  v71 = v44;
  sub_22C901EDC();
  if (v77 == 1)
  {
    v76 = 0;
    v45 = v72;
    v42(v72, a1, v10);
    StringExprsAreQuotesRequirement.init(aligner:locale:)(&v76, v45, &v77);
    v67 = v77;
    v68 = v78;
    v69 = v79;
  }

  else
  {
    v67 = 0;
    v69 = 0;
    v68 = 0uLL;
  }

  v46 = &a2[v13[8]];
  *v46 = v67;
  *(v46 + 8) = v68;
  *(v46 + 3) = v69;
  v46[32] = 0;
  sub_22C3E8FB4(&a1[v43[7]], &a2[v13[9]], &qword_27D9BB728, &qword_22C911230);
  v47 = &a1[v43[8]];
  v48 = *v47;
  v49 = *(v47 + 1);
  v50 = &a2[v13[10]];
  *v50 = v48;
  *(v50 + 1) = v49;
  v51 = v43[9];
  v72 = a1;
  v52 = v73;
  sub_22C3E8FB4(&a1[v51], v73, &qword_27D9BB720, &unk_22C90FE20);
  v53 = type metadata accessor for FullPlannerVersionHandler.GrammarConfiguration(0);
  if (sub_22C370B74(v52, 1, v53) == 1)
  {

    sub_22C36DD28(v52, &qword_27D9BB720, &unk_22C90FE20);
    v54 = 0;
    v55 = 0;
    v56 = 0;
    v57 = 0x3000000000000007;
  }

  else
  {
    v54 = *v52;
    v55 = v52[1];
    v57 = v52[2];
    v56 = v52[3];

    sub_22C4C7C38(v54, v55, v57);
    sub_22C3717E8();
  }

  v58 = &a2[v13[12]];
  *v58 = v54;
  *(v58 + 1) = v55;
  *(v58 + 2) = v57;
  *(v58 + 3) = v56;
  v59 = v72;
  v60 = v74;
  sub_22C3E8FB4(&v72[v51], v74, &qword_27D9BB720, &unk_22C90FE20);
  if (sub_22C370B74(v60, 1, v53) == 1)
  {
    sub_22C36DD28(v60, &qword_27D9BB720, &unk_22C90FE20);
    v61 = type metadata accessor for GrammarToolDefinitionBundle(0);
    v62 = v75;
    sub_22C36C640(v75, 1, 1, v61);
  }

  else
  {
    v63 = v60 + *(v53 + 20);
    v62 = v75;
    sub_22C3E8FB4(v63, v75, &qword_27D9BB738, &unk_22C9185A0);
    sub_22C3717E8();
  }

  sub_22C4CC2D0(v62, &a2[v13[13]]);
  sub_22C36AA34();
  sub_22C4D0C60(v71, &a2[v64], v65);
  return sub_22C4D0CC0(v59, type metadata accessor for FullPlannerVersionHandler.GenericInitialisationParameters);
}

uint64_t _s14EchoComponentsVMa(uint64_t a1)
{
  result = qword_2814353F0;
  if (!qword_2814353F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22C4CC2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22C4CC368(uint64_t a1)
{
  sub_22C90077C();
  if (v1 <= 0x3F)
  {
    sub_22C9071BC();
    if (v2 <= 0x3F)
    {
      sub_22C4CC818(319, &qword_28142FAD0, MEMORY[0x277D1DD30]);
      if (v3 <= 0x3F)
      {
        sub_22C4BFF78(319);
        if (v4 <= 0x3F)
        {
          sub_22C4CC818(319, &qword_28142FAA0, MEMORY[0x277D1E600]);
          if (v5 <= 0x3F)
          {
            sub_22C430E9C(319, &qword_28142FA20, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for FullPlannerPreferences(319);
              if (v7 <= 0x3F)
              {
                sub_22C430E9C(319, &qword_27D9BD5F0, &type metadata for PromptGrammar.GrammarPieceContent);
                if (v8 <= 0x3F)
                {
                  sub_22C4CC818(319, &qword_27D9BD650, type metadata accessor for GrammarToolDefinitionBundle);
                  if (v9 <= 0x3F)
                  {
                    sub_22C4BBD84(319, &qword_281434510, &qword_27D9BD330, &qword_22C918218);
                    if (v10 <= 0x3F)
                    {
                      sub_22C4BBD84(319, &qword_27D9BD338, &qword_27D9BD340, &unk_22C9182A0);
                      if (v11 <= 0x3F)
                      {
                        sub_22C4BBD84(319, &qword_27D9BD5F8, &qword_27D9BD600, &qword_22C918528);
                        if (v12 <= 0x3F)
                        {
                          sub_22C4BBD84(319, &qword_27D9BD348, &qword_27D9BD350, &unk_22C9185D0);
                          if (v13 <= 0x3F)
                          {
                            sub_22C4BBD84(319, &qword_27D9BD358, &qword_27D9BD360, &unk_22C9182B0);
                            if (v14 <= 0x3F)
                            {
                              sub_22C4BBD84(319, &qword_28142F948, &qword_27D9BD608, qword_22C918610);
                              if (v15 <= 0x3F)
                              {
                                sub_22C430E9C(319, &qword_281434970, &type metadata for PromptRenderer);
                                if (v16 <= 0x3F)
                                {
                                  sub_22C430E9C(319, &qword_281434B98, &type metadata for EventParsers);
                                  if (v17 <= 0x3F)
                                  {
                                    sub_22C4BBD84(319, &qword_28142F928, &qword_27D9BD378, &unk_22C9182C0);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_22C4BBD84(319, qword_2814335D8, &qword_27D9BD610, &unk_22C918650);
                                      if (v19 <= 0x3F)
                                      {
                                        sub_22C4BBD84(319, &qword_28142F940, &qword_27D9BD618, &qword_22C918530);
                                        if (v20 <= 0x3F)
                                        {
                                          sub_22C4BBD84(319, &qword_28142F950, &qword_27D9BD390, &unk_22C918660);
                                          if (v21 <= 0x3F)
                                          {
                                            sub_22C4BBD84(319, &qword_28142F918, &qword_27D9BD398, &unk_22C9182E0);
                                            if (v22 <= 0x3F)
                                            {
                                              sub_22C4BBD84(319, &qword_28142F920, &qword_27D9BD3A0, &unk_22C918670);
                                              if (v23 <= 0x3F)
                                              {
                                                sub_22C4BBD84(319, &qword_27D9BD3A8, &qword_27D9BD3B0, &unk_22C9182F0);
                                                if (v24 <= 0x3F)
                                                {
                                                  sub_22C4BBD84(319, &qword_28142F930, &qword_27D9BD3B8, &qword_22C918680);
                                                  if (v25 <= 0x3F)
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

void sub_22C4CC818(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22C90AC6C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22C4CC86C()
{
  v2 = sub_22C3727F4();
  v3 = _s14EchoComponentsVMa(v2);
  v4 = *(v3 + 56);
  v5 = sub_22C3E8FB4(v1 + v4, &v19, &qword_27D9BD3D0, &unk_22C918320);
  if (v20)
  {
    return sub_22C36D7B0(v5, v6, v7, v8, v9, v10, v11, v12, v18, v19);
  }

  sub_22C36D798(&v19);
  v14 = *(v3 + 44);
  v0[3] = type metadata accessor for AppNameRenderer_v1_0(0);
  v0[4] = &off_283FB8878;
  v15 = sub_22C36D548(v0);
  sub_22C9006AC();
  sub_22C36AA34();
  sub_22C4D0C60(v1 + v14, v15 + v16, v17);
  sub_22C36D798(v1 + v4);
  return sub_22C378A4C(v0, v1 + v4);
}

uint64_t sub_22C4CC964@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(_s14EchoComponentsVMa(0) + 60);
  sub_22C3E8FB4(v1 + v3, &v5, &qword_27D9BD400, &unk_22C918710);
  if (v6)
  {
    return sub_22C36C730(&v5, a1);
  }

  sub_22C36DD28(&v5, &qword_27D9BD400, &unk_22C918710);
  a1[3] = &type metadata for ToolNameRenderer_v5_0;
  a1[4] = &off_283FBAD00;
  *a1 = swift_allocObject();
  sub_22C4CC86C();
  sub_22C36DD28(v1 + v3, &qword_27D9BD400, &unk_22C918710);
  return sub_22C378A4C(a1, v1 + v3);
}

uint64_t sub_22C4CCB94()
{
  v2 = sub_22C3727F4();
  v3 = *(_s14EchoComponentsVMa(v2) + 72);
  v4 = sub_22C3E8FB4(v1 + v3, &v18, &qword_27D9BD3E0, &unk_22C918720);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v0[3] = type metadata accessor for DynamicEnumerationCaseRenderer_v3_0(0);
  v0[4] = &off_283FB9A30;
  v13 = sub_22C36D548(v0);
  sub_22C4CCAF0(v13);
  sub_22C36AA34();
  sub_22C4D0C60(v1 + v14, v13 + v15, v16);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

uint64_t sub_22C4CCC7C()
{
  v2 = sub_22C3727F4();
  v3 = *(_s14EchoComponentsVMa(v2) + 76);
  v4 = sub_22C3E8FB4(v1 + v3, &v18, &qword_27D9BD3F8, &unk_22C918340);
  if (v19)
  {
    return sub_22C36D7B0(v4, v5, v6, v7, v8, v9, v10, v11, v17, v18);
  }

  sub_22C36D798(&v18);
  v13 = type metadata accessor for ToolRenderer_v5_0(0);
  v0[3] = v13;
  v0[4] = &off_283FBAD20;
  v14 = sub_22C36D548(v0);
  sub_22C90718C();
  sub_22C4CCDE0();
  v15 = (v14 + v13[6]);
  v15[3] = type metadata accessor for ToolRenderer_v1_0(0);
  v15[4] = &off_283FB9200;
  sub_22C36D548(v15);
  sub_22C90718C();
  sub_22C4CCDE0();
  v16 = v14 + v13[7];
  *(v16 + 3) = &unk_283FB9BD0;
  *(v16 + 4) = &off_283FB9DA0;
  sub_22C38711C(v14 + v13[8]);
  sub_22C36D798(v1 + v3);
  return sub_22C378A4C(v0, v1 + v3);
}

void *sub_22C4CCDE0()
{
  v1 = sub_22C3727F4();
  v2 = _s14EchoComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD3D8, &unk_22C9186D0, v4, v5, v6, v7, v21[0]);
  if (v21[3])
  {
    return memcpy(v0, v21, 0x110uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CD99C(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C42F0B8(v19, v20);
}

void sub_22C4CCE78()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s14EchoComponentsVMa(v2) + 80);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v22[0] = v6;
    v24 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v22);
    v24 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    v16 = sub_22C36BD58();
    sub_22C4CBC9C(v16, v17, v18);
    sub_22C36D78C();
    if (!v5)
    {
      if (v19)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v20 = *v0;
      v21 = v20;
      *v3 = v20;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v22[0], v22[1], v23, v24);
  }
}

uint64_t sub_22C4CCF74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v87 = a3;
  v88 = a2;
  v4 = sub_22C9063DC();
  v75 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v74 = &v72 - v8;
  v9 = sub_22C3A5908(&qword_27D9BD638, &unk_22C92C240);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = &v72 - v12;
  v78 = type metadata accessor for FullPlannerTokenGeneratorConstrainedDecodingInterface(0);
  MEMORY[0x28223BE20](v78);
  v83 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FullPlannerGMSClientConfiguration(0);
  v15 = MEMORY[0x28223BE20](v14);
  v77 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v82 = &v72 - v18;
  MEMORY[0x28223BE20](v17);
  v89 = &v72 - v19;
  v20 = type metadata accessor for FullPlannerPreferences(0);
  v21 = MEMORY[0x28223BE20](v20);
  v76 = &v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v79 = &v72 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v72 - v28;
  v30 = _s14EchoComponentsVMa(0);
  v31 = v30[11];
  sub_22C4D0C60(a1 + v31, v29, type metadata accessor for FullPlannerPreferences);
  v85 = v20;
  sub_22C3A5908(&qword_27D9BB8A8, &unk_22C918750);
  sub_22C901EDC();
  sub_22C4D0CC0(v29, type metadata accessor for FullPlannerPreferences);
  v32 = v90[0];
  if (*&v90[0] != 0x6E65476E656B6F74 || *(&v90[0] + 1) != 0xEE00726F74617265)
  {
    v73 = v4;
    v34 = v88;
    if ((sub_22C90B4FC() & 1) == 0)
    {
      if (v32 == 0x65696C4370747468 && *(&v32 + 1) == 0xEA0000000000746ELL)
      {
      }

      else
      {
        v64 = sub_22C90B4FC();

        if ((v64 & 1) == 0)
        {
          sub_22C903F7C();
          v65 = sub_22C9063CC();
          v66 = sub_22C90AADC();
          if (os_log_type_enabled(v65, v66))
          {
            v67 = v34;
            v68 = swift_slowAlloc();
            *v68 = 0;
LABEL_22:
            _os_log_impl(&dword_22C366000, v65, v66, v69, v68, 2u);
            v70 = v68;
            v34 = v67;
            MEMORY[0x2318B9880](v70, -1, -1);
            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      v7 = v74;
      sub_22C903F7C();
      v65 = sub_22C9063CC();
      v66 = sub_22C90AADC();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v34;
        v68 = swift_slowAlloc();
        *v68 = 0;
        v69 = "HTTPClient not supported";
        goto LABEL_22;
      }

LABEL_23:

      (*(v75 + 8))(v7, v73);
      sub_22C3DD0D8();
      v52 = swift_allocError();
      *v71 = 0;
      v71[1] = 0;
      result = swift_willThrow();
      goto LABEL_24;
    }
  }

  v35 = a1 + v30[9];
  v36 = a1;
  v37 = v89;
  sub_22C3E8FB4(v35, v89, &qword_27D9BB728, &qword_22C911230);
  v38 = v30[5];
  v84 = v14;
  v39 = *(v14 + 5);
  v40 = sub_22C90077C();
  (*(*(v40 - 8) + 16))(v37 + v39, v36 + v38, v40);
  sub_22C4D0C60(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  sub_22C4D0CC0(v27, type metadata accessor for FullPlannerPreferences);
  *(v37 + *(v84 + 6)) = v90[0];
  v41 = v36;
  sub_22C4D0C60(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
  sub_22C901EDC();
  sub_22C4D0CC0(v27, type metadata accessor for FullPlannerPreferences);
  if (LOBYTE(v90[0]) == 1)
  {
    v42 = v82;
    sub_22C4D0C60(v89, v82, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D0C60(v36 + v31, v27, type metadata accessor for FullPlannerPreferences);
    static PromptGrammarGenerationMode.configuration(from:)(&v91);
    sub_22C4D0CC0(v27, type metadata accessor for FullPlannerPreferences);
    LODWORD(v85) = v91;
    v43 = v36 + v31;
    v44 = v79;
    sub_22C4D0C60(v43, v79, type metadata accessor for FullPlannerPreferences);
    v45 = v87;
    v46 = v78;
    v87[3] = v78;
    v45[4] = &off_2818B22E0;
    v84 = sub_22C36D548(v45);
    v47 = *(v46 + 24);
    v48 = v81;
    sub_22C901ADC();
    v49 = sub_22C901AEC();
    sub_22C36C640(v48, 0, 1, v49);
    sub_22C3E8FB4(v48, v80, &qword_27D9BD638, &unk_22C92C240);
    v50 = v83;
    sub_22C901B2C();
    sub_22C901B1C();
    sub_22C901AFC();
    sub_22C901B0C();
    sub_22C36DD28(v48, &qword_27D9BD638, &unk_22C92C240);
    v51 = v86;
    sub_22C3EECF8(v42, 2, v44, v90);
    v52 = v51;
    v53 = v89;
    if (!v51)
    {
      sub_22C4D0CC0(v44, type metadata accessor for FullPlannerPreferences);
      sub_22C4D0CC0(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
      sub_22C36C730(v90, v50);
      *(v50 + 40) = v85;
      sub_22C4CBB18(v50, v84);
      return sub_22C4D0CC0(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    }

    sub_22C4D0CC0(v44, type metadata accessor for FullPlannerPreferences);
    sub_22C4D0CC0(v42, type metadata accessor for FullPlannerGMSClientConfiguration);
    sub_22C4D0CC0(v53, type metadata accessor for FullPlannerGMSClientConfiguration);
    v54 = sub_22C901B3C();
    (*(*(v54 - 8) + 8))(v50 + v47, v54);
    result = sub_22C4BF5D8(v45);
    v34 = v88;
  }

  else
  {
    v56 = v89;
    v57 = v77;
    sub_22C4D0C60(v89, v77, type metadata accessor for FullPlannerGMSClientConfiguration);
    v58 = v76;
    sub_22C4D0C60(v41 + v31, v76, type metadata accessor for FullPlannerPreferences);
    v59 = sub_22C3A5908(&qword_27D9BD640, &qword_22C918560);
    v60 = v87;
    v87[3] = v59;
    v60[4] = sub_22C3D32C8(qword_281434E40, &qword_27D9BD640, &qword_22C918560, &unk_22C911600);
    v61 = sub_22C36D548(v60);
    v62 = v86;
    sub_22C4D0D40(v57, v58, v61);
    v52 = v62;
    result = sub_22C4D0CC0(v56, type metadata accessor for FullPlannerGMSClientConfiguration);
    v34 = v88;
    if (!v62)
    {
      return result;
    }

    result = sub_22C4BF5D8(v60);
  }

LABEL_24:
  *v34 = v52;
  return result;
}

uint64_t sub_22C4CD99C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v183 = a2;
  v169 = type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0(0);
  MEMORY[0x28223BE20](v169);
  v167 = (&v151 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v162 = type metadata accessor for ToolDefinitionRenderer_v5_0(0);
  MEMORY[0x28223BE20](v162);
  v161 = (&v151 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0(0);
  MEMORY[0x28223BE20](v160);
  v182 = (&v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0(0);
  MEMORY[0x28223BE20](v181);
  v186 = (&v151 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v180 = type metadata accessor for ToolDescriptionProvider_v1_0(0);
  MEMORY[0x28223BE20](v180);
  v185 = &v151 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for TypeInstanceRenderer_v1_0(0);
  MEMORY[0x28223BE20](v159);
  v179 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for DynamicEnumerationRenderer_v3_0(0);
  MEMORY[0x28223BE20](v176);
  v175 = (&v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v157 = (type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0(0) - 8);
  v10 = MEMORY[0x28223BE20](v157);
  v168 = &v151 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = (&v151 - v12);
  v156 = type metadata accessor for EntityValuePromptRenderer_v2_0(0) - 8;
  v13 = MEMORY[0x28223BE20](v156);
  v166 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v174 = (&v151 - v15);
  v153 = type metadata accessor for FullPlannerPreferences(0) - 8;
  v16 = MEMORY[0x28223BE20](v153);
  v154 = &v151 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v152 = &v151 - v18;
  v178 = type metadata accessor for PrimitiveValueRenderer_v2_0(0);
  MEMORY[0x28223BE20](v178);
  v177 = (&v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = (type metadata accessor for TypeIdentifierRenderer_v2_0(0) - 8);
  MEMORY[0x28223BE20](v172);
  v21 = (&v151 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v171 = type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0(0);
  MEMORY[0x28223BE20](v171);
  v23 = (&v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0(0);
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = &unk_283FB9D88;
  v211 = &off_283FB9E30;
  v209[0] = 1;
  sub_22C4CCA4C(v25);
  v28 = _s14EchoComponentsVMa(0);
  v29 = *(v28 + 44);
  v30 = v28;
  v31 = *(v24 + 20);
  v165 = v27;
  v188 = type metadata accessor for FullPlannerPreferences;
  v189 = v29;
  sub_22C4D0C60(a1 + v29, &v27[v31], type metadata accessor for FullPlannerPreferences);
  v23[3] = v24;
  v23[4] = &off_283FB9A58;
  v32 = sub_22C36D548(v23);
  sub_22C4D0C60(v27, v32, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  v33 = *(v30 + 24);
  v155 = v30;
  v34 = v33;
  v35 = v23;
  v23[8] = type metadata accessor for Hack_EnumerationDefinition_TypeReferenceRenderer_v5_0(0);
  v23[9] = &off_283FBAC08;
  sub_22C36D548(v23 + 5);

  sub_22C90718C();

  v36 = sub_22C4CC86C();
  sub_22C4CCA4C(v36);
  v37 = v34;
  v38 = v171;

  sub_22C90718C();

  v39 = *(v30 + 20);
  v40 = *(v38 + 8);
  v41 = sub_22C90077C();
  (*(*(v41 - 8) + 16))(v35 + v40, a1 + v39, v41);
  sub_22C4D0C60(a1 + v189, v35 + *(v38 + 9), type metadata accessor for FullPlannerPreferences);
  v21[3] = v38;
  v21[4] = &off_283FB9A40;
  v42 = sub_22C36D548(v21);
  v163 = v35;
  sub_22C4D0C60(v35, v42, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v21[8] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v21[9] = &off_283FB8FE0;
  v43 = swift_allocObject();
  v21[5] = v43;
  sub_22C4BECC0(v209, v43 + 16);
  v21[13] = &type metadata for UTTypeRenderer_v1_0;
  v21[14] = &off_283FB8FD0;
  sub_22C4CC86C();
  v21[23] = &unk_283FB9D10;
  v21[24] = &off_283FB9E20;
  v184 = v37;

  v44 = v21;
  v164 = v21;
  sub_22C90718C();

  v187 = a1;
  v45 = type metadata accessor for TypeIdentifierRenderer_v5_0(0);
  v46 = v183;
  v183[32] = v45;
  v46[33] = &off_283FBABE8;
  v47 = sub_22C36D548(v46 + 29);

  sub_22C90718C();

  sub_22C4D0C60(v44, v47 + v45[5], type metadata accessor for TypeIdentifierRenderer_v2_0);
  v48 = (v47 + v45[6]);
  v48[3] = v38;
  v48[4] = &off_283FB9A40;
  v49 = sub_22C36D548(v48);
  sub_22C4D0C60(v35, v49, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  v50 = (v47 + v45[7]);
  v50[3] = &type metadata for PrimitiveTypeIdentifierRenderer_v1_0;
  v50[4] = &off_283FB8FE0;
  v51 = swift_allocObject();
  *v50 = v51;
  sub_22C4BECC0(v209, v51 + 16);
  v52 = v45;
  v53 = v47 + v45[8];
  *(v53 + 3) = &type metadata for UTTypeRenderer_v1_0;
  *(v53 + 4) = &off_283FB8FD0;
  sub_22C4CC86C();
  v54 = v47 + v45[10];
  *(v54 + 3) = &unk_283FB9D10;
  *(v54 + 4) = &off_283FB9E20;
  v208[3] = v45;
  v208[4] = &off_283FBABD0;
  v55 = sub_22C36D548(v208);
  sub_22C4D0C60(v47, v55, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v208[8] = &unk_283FB9CF0;
  v208[9] = &off_283FB9E10;
  v207[3] = v45;
  v207[4] = &off_283FBABE8;
  v56 = sub_22C36D548(v207);
  sub_22C4D0C60(v47, v56, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v207[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v207[9] = &off_283FB8FC0;
  v207[13] = &type metadata for INPersonRenderer_v1_0;
  v207[14] = &off_283FB8FB0;
  v57 = v177;
  v177[3] = v45;
  v57[4] = &off_283FBABE8;
  v170 = v45;
  v58 = sub_22C36D548(v57);
  v171 = type metadata accessor for TypeIdentifierRenderer_v5_0;
  v172 = v47;
  sub_22C4D0C60(v47, v58, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v57[8] = &type metadata for CLPlacemarkPromptRenderer_v1_0;
  v57[9] = &off_283FB8FC0;
  v57[13] = &type metadata for INPersonRenderer_v1_0;
  v57[14] = &off_283FB8FB0;
  sub_22C4BEF30(v207, (v57 + 15));
  v59 = v178;
  v60 = v188;
  v61 = v189;
  v62 = v187;
  sub_22C4D0C60(v187 + v189, v57 + *(v178 + 32), v188);
  v205[3] = v52;
  v205[4] = &off_283FBABE8;
  v63 = sub_22C36D548(v205);
  sub_22C4D0C60(v47, v63, type metadata accessor for TypeIdentifierRenderer_v5_0);
  v206[3] = v59;
  v206[4] = &off_283FB9748;
  v64 = sub_22C36D548(v206);
  v158 = type metadata accessor for PrimitiveValueRenderer_v2_0;
  sub_22C4D0C60(v57, v64, type metadata accessor for PrimitiveValueRenderer_v2_0);
  v65 = v61;
  v66 = v62 + v61;
  v67 = v152;
  v68 = v60;
  sub_22C4D0C60(v66, v152, v60);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D0CC0(v67, type metadata accessor for FullPlannerPreferences);
  v69 = v198[0];
  v70 = v154;
  sub_22C4D0C60(v62 + v65, v154, v68);
  sub_22C901EDC();
  sub_22C4D0CC0(v70, type metadata accessor for FullPlannerPreferences);
  v71 = v198[0];
  v203 = &type metadata for StrippedTypedValueRenderer_v2_0;
  v204 = &off_283FB9738;
  v202 = swift_allocObject();
  sub_22C4C32E8(v205, v202 + 16);
  v198[1] = 0;
  v198[0] = 0;
  v198[2] = v69;
  v199 = 0;
  v200 = v71;
  v201 = 0;
  v72 = v174;
  v73 = v170;
  v174[3] = v170;
  v72[4] = &off_283FBABD0;
  v74 = v72;
  v75 = sub_22C36D548(v72);
  v77 = v171;
  v76 = v172;
  sub_22C4D0C60(v172, v75, v171);
  v74[8] = &type metadata for StrippedEntityValuePromptRenderer_v2_0;
  v74[9] = &off_283FB9728;
  v78 = swift_allocObject();
  v74[5] = v78;
  sub_22C4C3344(v198, v78 + 16);
  v79 = v187;

  sub_22C90718C();

  v80 = v173;
  v173[3] = v73;
  v80[4] = &off_283FBABD0;
  v81 = v80;
  v82 = sub_22C36D548(v80);
  sub_22C4D0C60(v76, v82, v77);
  v81[8] = &type metadata for StrippedEntityIdentifierValuePromptRenderer_v2_0;
  v81[9] = &off_283FB9718;

  sub_22C90718C();

  v83 = v175;
  sub_22C4CCB94();
  v83[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v83[9] = &off_283FBABB0;
  v84 = v83;
  v85 = swift_allocObject();
  v83[5] = v85;
  sub_22C4D0A18(v208, v85 + 16);
  v86 = v176;
  v87 = (v83 + *(v176 + 24));
  v88 = v84;
  sub_22C4CCB94();
  v87[8] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v87[9] = &off_283FBABB0;
  v89 = swift_allocObject();
  v87[5] = v89;
  sub_22C4D0A18(v208, v89 + 16);
  v90 = type metadata accessor for DynamicEnumerationRenderer_v1_0(0);
  v92 = v188;
  v91 = v189;
  v93 = sub_22C4D0C60(v79 + v189, v87 + *(v90 + 24), v188);
  sub_22C4CCAF0(v93);
  sub_22C4D0C60(v79 + v91, v84 + *(v86 + 32), v92);

  v94 = v179;
  sub_22C90718C();

  v95 = v159;
  v96 = (v94 + *(v159 + 5));
  v96[3] = &type metadata for StaticTypeInstanceRenderer_v5_0;
  v96[4] = &off_283FBABB0;
  v97 = swift_allocObject();
  *v96 = v97;
  sub_22C4D0A18(v208, v97 + 16);
  v98 = (v94 + *(v95 + 6));
  v98[3] = v86;
  v98[4] = &off_283FB9A18;
  v99 = sub_22C36D548(v98);
  v157 = type metadata accessor for DynamicEnumerationRenderer_v3_0;
  sub_22C4D0C60(v88, v99, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  v197[3] = v95;
  v197[4] = &off_283FB8F90;
  v100 = sub_22C36D548(v197);
  sub_22C4D0C60(v94, v100, type metadata accessor for TypeInstanceRenderer_v1_0);
  v197[8] = &unk_283FB9CD0;
  v197[9] = &off_283FB9E00;
  v101 = v185;
  sub_22C3E8FB4(v79 + *(v155 + 28), v185, &qword_27D9BB730, &unk_22C90FE30);
  sub_22C4CC86C();
  v102 = v186;
  v186[3] = &type metadata for ToolNameRenderer_v5_0;
  v102[4] = &off_283FBAD00;
  v103 = swift_allocObject();
  *v102 = v103;
  sub_22C4D0A74(v196, v103 + 16);
  v102[8] = &unk_283FB9CB0;
  v102[9] = &off_283FB9DF0;
  v104 = v180;
  v102[13] = v180;
  v102[14] = &off_283FB8F70;
  v105 = sub_22C36D548(v102 + 10);
  v159 = type metadata accessor for ToolDescriptionProvider_v1_0;
  sub_22C4D0C60(v101, v105, type metadata accessor for ToolDescriptionProvider_v1_0);
  v106 = v181;

  sub_22C90718C();

  v107 = v188;
  sub_22C4D0C60(v79 + v189, v102 + *(v106 + 32), v188);
  v108 = v182;
  v182[3] = v104;
  v108[4] = &off_283FB8F70;
  v109 = sub_22C36D548(v108);
  sub_22C4D0C60(v101, v109, type metadata accessor for ToolDescriptionProvider_v1_0);
  v110 = v160;

  sub_22C90718C();

  v111 = (v108 + v110[6]);
  v111[3] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v111[4] = &off_283FB8ED8;
  v112 = swift_allocObject();
  *v111 = v112;
  sub_22C4BEDC0(v197, v112 + 16);
  v113 = (v108 + v110[7]);
  v113[3] = &type metadata for ToolNameRenderer_v5_0;
  v113[4] = &off_283FBAD00;
  v114 = swift_allocObject();
  *v113 = v114;
  sub_22C4D0A74(v196, v114 + 16);
  v115 = v108 + v110[8];
  *(v115 + 3) = &unk_283FB9C88;
  *(v115 + 4) = &off_283FB9DE0;
  *v115 = 1;
  sub_22C4D0C60(v79 + v189, v108 + v110[9], v107);
  v116 = v161;
  v117 = v162;
  v118 = (v161 + *(v162 + 40));
  v119 = type metadata accessor for ToolDefinitionRenderer_v1_0(0);
  v118[3] = v119;
  v118[4] = &off_283FB8F40;
  v120 = sub_22C36D548(v118);
  v120[3] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v120[4] = &off_283FB8ED8;
  v121 = swift_allocObject();
  *v120 = v121;
  sub_22C4BEDC0(v197, v121 + 16);
  v120[8] = &type metadata for ToolNameRenderer_v5_0;
  v120[9] = &off_283FBAD00;
  v122 = swift_allocObject();
  v120[5] = v122;
  sub_22C4D0A74(v196, v122 + 16);
  v120[13] = &unk_283FB9C88;
  v120[14] = &off_283FB9DE0;
  *(v120 + 80) = 1;
  v120[18] = v180;
  v120[19] = &off_283FB8F70;
  v123 = sub_22C36D548(v120 + 15);
  sub_22C4D0C60(v185, v123, v159);
  v116[23] = v110;
  v116[24] = &off_283FBAB18;
  v124 = sub_22C36D548(v116 + 20);
  sub_22C4D0C60(v108, v124, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0);
  v125 = v187;

  sub_22C90718C();

  sub_22C4D0C60(v125 + v189, v120 + *(v119 + 32), v188);
  sub_22C378A4C(v120, v116);
  sub_22C378A4C((v120 + 5), (v116 + 5));
  sub_22C3E8FB4((v120 + 10), (v116 + 10), &qword_27D9BD658, &qword_22C9186E0);
  sub_22C378A4C((v120 + 15), (v116 + 15));
  v195[3] = v117;
  v195[4] = &off_283FBAB80;
  v126 = sub_22C36D548(v195);
  sub_22C4D0C60(v116, v126, type metadata accessor for ToolDefinitionRenderer_v5_0);
  sub_22C4CC86C();
  v194[3] = &type metadata for ToolNameRenderer_v5_0;
  v194[4] = &off_283FBAD00;
  v194[0] = swift_allocObject();
  sub_22C4D0A74(v196, v194[0] + 16);
  v127 = v167;
  v167[3] = v117;
  v127[4] = &off_283FBAB80;
  v128 = sub_22C36D548(v127);
  sub_22C4D0C60(v116, v128, type metadata accessor for ToolDefinitionRenderer_v5_0);
  v127[8] = v181;
  v127[9] = &off_283FBAB60;
  v129 = sub_22C36D548(v127 + 5);
  sub_22C4D0C60(v186, v129, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  v127[13] = &type metadata for EntitySetterRenderer_v1_0;
  v127[14] = &off_283FB8F18;
  v130 = swift_allocObject();
  v127[10] = v130;
  sub_22C4BEE78(v195, v130 + 16);
  v127[18] = &type metadata for UIControlRenderer_v2_0;
  v127[19] = &off_283FB9700;
  v131 = swift_allocObject();
  v127[15] = v131;
  sub_22C4BEED4(v194, v131 + 16);
  v127[23] = &type metadata for SystemToolProtocolRenderer_v2_0;
  v127[24] = &off_283FB96C0;
  v132 = swift_allocObject();
  v127[20] = v132;
  v132[5] = &type metadata for ToolNameRenderer_v5_0;
  v132[6] = &off_283FBAD00;
  v133 = swift_allocObject();
  v132[2] = v133;
  sub_22C4D0A74(v196, v133 + 16);
  v134 = v169;

  sub_22C90718C();

  v192[3] = v170;
  v192[4] = &off_283FBABE8;
  v135 = sub_22C36D548(v192);
  sub_22C4D0C60(v172, v135, v171);
  v193[3] = v178;
  v193[4] = &off_283FB9748;
  v136 = sub_22C36D548(v193);
  v137 = v177;
  sub_22C4D0C60(v177, v136, v158);
  sub_22C4BEF8C(v192, v190);
  v138 = v174;
  v139 = v166;
  sub_22C4D0C60(v174, v166, type metadata accessor for EntityValuePromptRenderer_v2_0);
  v140 = v173;
  v141 = v168;
  sub_22C4D0C60(v173, v168, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  v189 = sub_22C4D6614(v190, v139, v141);
  type metadata accessor for StrippedDirectionalTypedValuePromptRenderer_v5_0();
  v142 = swift_allocObject();
  sub_22C4C32E8(v205, v191);
  sub_22C4C3344(v198, v190);
  v188 = sub_22C4D69B4(v191, v190, v142);
  v143 = v183;
  sub_22C4CC86C();
  v143[8] = v134;
  v143[9] = &off_283FBAB38;
  v144 = sub_22C36D548(v143 + 5);
  sub_22C4D0C60(v127, v144, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  v143[13] = &type metadata for ParameterDefinitionRenderer_v1_0;
  v143[14] = &off_283FB8ED8;
  v145 = swift_allocObject();
  v143[10] = v145;
  sub_22C4BEDC0(v197, v145 + 16);
  v143[18] = &type metadata for ToolNameRenderer_v5_0;
  v143[19] = &off_283FBAD00;
  v146 = swift_allocObject();
  v143[15] = v146;
  sub_22C4D0A74(v196, v146 + 16);
  v143[27] = v176;
  v143[28] = &off_283FB9A18;
  v147 = sub_22C36D548(v143 + 24);
  v148 = v175;
  sub_22C4D0C60(v175, v147, v157);
  sub_22C4D0B10(v196);
  sub_22C4D0CC0(v185, type metadata accessor for ToolDescriptionProvider_v1_0);
  sub_22C4D0CC0(v165, type metadata accessor for EnumerationCaseDefinitionRenderer_v3_0);
  sub_22C4BF0A0(v192);
  sub_22C4D0CC0(v127, type metadata accessor for RenderableToolDefinitionPromptRenderer_v5_0);
  sub_22C4BF19C(v194);
  sub_22C4BF1F0(v195);
  sub_22C4D0CC0(v182, type metadata accessor for AssistantToolSchemaDefinitionRenderer_v5_0);
  sub_22C4D0CC0(v186, type metadata accessor for AssistantSchemaIdentifierRenderer_v5_0);
  sub_22C4BF298(v197);
  sub_22C4D0CC0(v179, type metadata accessor for TypeInstanceRenderer_v1_0);
  sub_22C4D0CC0(v148, type metadata accessor for DynamicEnumerationRenderer_v3_0);
  sub_22C4D0CC0(v140, type metadata accessor for EntityIdentifierValuePromptRenderer_v2_0);
  sub_22C4D0CC0(v138, type metadata accessor for EntityValuePromptRenderer_v2_0);
  sub_22C4C34E0(v198);
  sub_22C4C3534(v205);
  sub_22C4D0CC0(v137, type metadata accessor for PrimitiveValueRenderer_v2_0);
  sub_22C4BF0F4(v207);
  sub_22C4D0B64(v208);
  sub_22C4D0CC0(v164, type metadata accessor for TypeIdentifierRenderer_v2_0);
  sub_22C4D0CC0(v163, type metadata accessor for EnumerationDefinitionPromptRenderer_v3_0);
  sub_22C4BF394(v209);
  result = sub_22C4D0CC0(v116, type metadata accessor for ToolDefinitionRenderer_v5_0);
  v150 = v188;
  v143[20] = v189;
  v143[21] = &off_283FB87B0;
  v143[22] = v150;
  v143[23] = &off_283FBAAE0;
  return result;
}

void *sub_22C4CF120()
{
  v1 = sub_22C3727F4();
  v2 = _s14EchoComponentsVMa(v1);
  v8 = sub_22C3870F0(v2, v3, &qword_27D9BD408, &unk_22C918350, v4, v5, v6, v7, v21[0]);
  if (v21[13])
  {
    return memcpy(v0, v21, 0x190uLL);
  }

  sub_22C36BD3C(v8, v9, v10, v11, v12, v13, v14, v15, v21[0]);
  v17 = sub_22C36BD58();
  sub_22C4CF1B8(v17, v18);
  sub_22C3717CC();
  v19 = sub_22C37280C();
  return sub_22C4BF3E8(v19, v20);
}

double sub_22C4CF1B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s14EchoComponentsVMa(0);
  v26 = *(v7 + 24);
  v8 = type metadata accessor for SpanEventPromptGenerator_v4_0(0);
  *(a2 + 24) = v8;
  *(a2 + 32) = &off_283FBA3F0;
  v9 = sub_22C36D548(a2);

  sub_22C90718C();

  sub_22C4CCDE0();
  v10 = *(v7 + 44);
  sub_22C4D0C60(a1 + v10, v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BBC18, &unk_22C912380);
  sub_22C901EDC();
  v25 = type metadata accessor for FullPlannerPreferences;
  sub_22C4D0CC0(v6, type metadata accessor for FullPlannerPreferences);
  *(v9 + *(v8 + 24)) = v27[0];
  v11 = type metadata accessor for ContextEventPromptGenerator_v5_0(0);
  *(a2 + 64) = v11;
  *(a2 + 72) = &off_283FBA978;
  v12 = sub_22C36D548((a2 + 40));
  sub_22C4CCDE0();
  sub_22C4D0C60(a1 + v10, v6, type metadata accessor for FullPlannerPreferences);
  sub_22C3A5908(&qword_27D9BC1D0, &qword_22C912390);
  sub_22C901EDC();
  sub_22C4D0CC0(v6, v25);
  v13 = v27[0];
  v12[37] = &type metadata for ContextReferenceReducer_v5;
  v12[38] = sub_22C4D0C0C();
  v12[34] = v13;
  sub_22C4D0C60(a1 + v10, v12 + *(v11 + 28), type metadata accessor for FullPlannerPreferences);
  *(v12 + 312) = 1;
  *(a2 + 104) = &type metadata for RequestParser_v1_0;
  *(a2 + 112) = &off_283FB8648;
  v14 = swift_allocObject();
  *(a2 + 80) = v14;
  *(v14 + 40) = &type metadata for SystemPromptResolutionParser_v1_0;
  *(v14 + 48) = &off_283FB8638;
  *(a2 + 144) = &type metadata for PlanParser_v1_0;
  *(a2 + 152) = &off_283FB8508;
  v15 = swift_allocObject();
  *(a2 + 120) = v15;
  v15[5] = type metadata accessor for ProgramStatementParser_v1_0(0);
  v15[6] = &off_283FB84F8;
  sub_22C36D548(v15 + 2);

  sub_22C90718C();

  v16 = type metadata accessor for ExpressionParser_v1_0(0);
  v15[10] = v16;
  v15[11] = &off_283FB8460;
  v17 = sub_22C36D548(v15 + 7);

  sub_22C90718C();

  sub_22C4CCDE0();
  sub_22C378A4C(&v28, v17 + v16[6]);
  sub_22C3DF2E8(v27);
  sub_22C4CC86C();
  v18 = v17 + v16[8];
  *(v18 + 3) = &type metadata for BuiltinNameRenderer_v1_0;
  *(v18 + 4) = &off_283FB8298;
  v19 = v17 + v16[9];
  *(v19 + 3) = &type metadata for RenderingArbiter_v5_0;
  *(v19 + 4) = &off_283FBA498;
  sub_22C4CCC7C();
  sub_22C4CCB94();
  *v17 = 1;
  v15[15] = &type metadata for RenderingArbiter_v5_0;
  v15[16] = &off_283FBA498;
  v20 = type metadata accessor for StatementResultParser_v2_0(0);
  *(a2 + 184) = v20;
  *(a2 + 192) = &off_283FB97F8;
  v21 = sub_22C36D548((a2 + 160));

  sub_22C90718C();

  sub_22C4CCDE0();
  v22 = (v21 + *(v20 + 24));
  v22[3] = type metadata accessor for StatementResultParser_v1_0(0);
  v22[4] = &off_283FB86D8;
  sub_22C36D548(v22);

  sub_22C90718C();

  sub_22C4CCDE0();
  *(a2 + 224) = &type metadata for ActionResponseParser_v1_0;
  *(a2 + 232) = &off_283FB4150;
  *(a2 + 264) = &type metadata for SystemResponseParser_v1_0;
  *(a2 + 272) = &off_283FB4140;
  *(a2 + 304) = type metadata accessor for ExternalAgentOutcomeParser_v1_0(0);
  *(a2 + 312) = &off_283FB4130;
  sub_22C36D548((a2 + 280));

  sub_22C90718C();

  sub_22C4CCDE0();
  result = 0.0;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 320) = 0u;
  return result;
}

uint64_t sub_22C4CF730@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v39 = a2;
  v4 = type metadata accessor for FullPlannerPreferences(0);
  MEMORY[0x28223BE20](v4 - 8);
  v42 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22C3A5908(&qword_27D9BB738, &unk_22C9185A0);
  MEMORY[0x28223BE20](v6 - 8);
  v41 = &v36 - v7;
  v8 = sub_22C90077C();
  v60 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v10;
  v11 = sub_22C908AEC();
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s14EchoComponentsVMa(0);
  v15 = v14[6];

  v45 = v13;
  sub_22C90718C();

  sub_22C4CF120();
  sub_22C4CCDE0();
  v56 = type metadata accessor for ToolFetcher(0);
  v57 = &off_283FB6BE0;
  v16 = sub_22C36D548(&v55);
  sub_22C4CC964(v16);

  sub_22C90718C();

  sub_22C4CCC7C();
  sub_22C4CCDE0();
  v17 = *(a1 + v15);
  v18 = *(v60 + 16);
  v19 = a1 + v14[5];
  v44 = v8;
  v18(v10, v19, v8);
  v20 = v14[13];
  v21 = (a1 + v14[12]);
  v23 = v21[1];
  v25 = v21[2];
  v24 = v21[3];
  v48 = *v21;
  v22 = v48;
  v49 = v23;
  v50 = v25;
  v51 = v24;
  v26 = v41;
  sub_22C3E8FB4(a1 + v20, v41, &qword_27D9BB738, &unk_22C9185A0);
  v27 = v14[11];
  v28 = v26;
  v37 = v27;
  v29 = v42;
  sub_22C4D0C60(a1 + v27, v42, type metadata accessor for FullPlannerPreferences);

  v30 = v40;
  sub_22C4C7C38(v22, v23, v25);
  v31 = v43;
  sub_22C53A7F4(v52, v17, v30, &v48, v28, v29, v53);

  sub_22C4D0CC0(v29, type metadata accessor for FullPlannerPreferences);
  sub_22C36DD28(v28, &qword_27D9BB738, &unk_22C9185A0);
  sub_22C4CBAA8(v48, v49, v50);
  (*(v60 + 8))(v30, v44);
  sub_22C3DF2E8(v52);
  if (v31)
  {
    sub_22C36FF94(v54);
    sub_22C3DF2E8(v58);
    sub_22C4D0BB8(v59);
    (*(v46 + 8))(v45, v47);
    result = sub_22C36FF94(&v55);
    *v39 = v31;
  }

  else
  {
    v33 = type metadata accessor for ConversationParser_v1_0(0);
    v34 = v38;
    v38[3] = v33;
    v34[4] = &off_283FB83D0;
    v35 = sub_22C36D548(v34);
    sub_22C4D0C60(a1 + v37, v35 + v33[12], type metadata accessor for FullPlannerPreferences);
    (*(v46 + 32))(v35, v45, v47);
    memcpy(v35 + v33[5], v59, 0x190uLL);
    memcpy(v35 + v33[6], v58, 0x110uLL);
    sub_22C36C730(&v55, v35 + v33[7]);
    sub_22C36C730(v54, v35 + v33[8]);
    result = sub_22C36C730(v53, v35 + v33[9]);
    *(v35 + v33[10]) = 0;
    *(v35 + v33[11]) = 1;
  }

  return result;
}

uint64_t sub_22C4CFC84()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s14EchoComponentsVMa(v2) + 96);
  if (*(v3 + 24))
  {
    sub_22C378A4C(v3, &v6);
  }

  else
  {
    v4 = *(v3 + 16);
    v6 = *v3;
    v7 = v4;
    v8 = *(v3 + 32);
  }

  if (*(&v7 + 1))
  {
    return sub_22C36C730(&v6, v0);
  }

  *(v0 + 24) = &unk_283FB3E18;
  *(v0 + 32) = &off_2818B2598;
  if (*(v3 + 24))
  {
    sub_22C36FF94(v3);
  }

  return sub_22C378A4C(v0, v3);
}

void sub_22C4CFD28()
{
  v2 = sub_22C3727F4();
  v3 = v1 + *(_s14EchoComponentsVMa(v2) + 100);
  sub_22C36D78C();
  if (v5)
  {
    sub_22C370678();
  }

  else if (v4)
  {
    v6 = *v3;
    v7 = *v3;
    *&v20[0] = v6;
    v22 = 1;
  }

  else
  {
    sub_22C378A4C(v3, v20);
    v22 = 0;
  }

  sub_22C372800();
  if (v5)
  {
    sub_22C36BD58();
    sub_22C4CBB7C(v16);
    sub_22C36D78C();
    if (!v5)
    {
      if (v17)
      {
      }

      else
      {
        sub_22C36FF94(v3);
      }
    }

    if (*(v0 + 40))
    {
      v18 = *v0;
      v19 = v18;
      *v3 = v18;
      *(v3 + 40) = 1;
    }

    else
    {
      sub_22C378A4C(v0, v3);
      *(v3 + 40) = 0;
    }
  }

  else
  {
    sub_22C36AA20(v8, v9, v10, v11, v12, v13, v14, v15, v20[0], v20[1], v21, v22);
  }
}

void sub_22C4CFE10()
{
  v2 = sub_22C3727F4();
  v3 = *(_s14EchoComponentsVMa(v2) + 104);
  sub_22C3E8FB4(v1 + v3, v15, &qword_27D9BD3E8, &unk_22C918330);
  sub_22C372800();
  if (v12)
  {
    sub_22C36DD28(v15, &qword_27D9BD3E8, &unk_22C918330);
    if (qword_2814335C0 != -1)
    {
      swift_once();
    }

    v14 = sub_22C4D630C(v13);
    *(v0 + 24) = &type metadata for FullPlannerResponseParser_v1_0;
    *(v0 + 32) = &off_283FB3970;
    *v0 = v14;
    *(v0 + 40) = 0;
    sub_22C36DD28(v1 + v3, &qword_27D9BD3E8, &unk_22C918330);
    sub_22C3E8FB4(v0, v1 + v3, &qword_27D9BD390, &unk_22C918660);
  }

  else
  {
    sub_22C36AA20(v4, v5, v6, v7, v8, v9, v10, v11, v15[0], v15[1], v16, v17);
  }
}

uint64_t sub_22C4CFFC4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22C3A5908(&qword_27D9BBB48, &qword_22C910F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v30 - v7;
  sub_22C4CCDE0();
  v9 = _s14EchoComponentsVMa(0);
  v10 = a1 + *(v9 + 32);
  v11 = *v10;
  if (*(v10 + 32))
  {
    v34[0] = *v10;
    v12 = v11;
    sub_22C3A5908(&qword_27D9BB188, &qword_22C90FE40);
    swift_willThrowTypedImpl();
    result = sub_22C3DF2E8(v35);
    *a2 = v11;
  }

  else
  {
    v14 = v9;
    v16 = *(v10 + 8);
    v15 = *(v10 + 16);
    v30 = *(v10 + 24);
    v31 = v15;
    sub_22C42B564(v11, v16);
    sub_22C4CC86C();
    v33 = *(a1 + v14[6]);
    v17 = v14[11];
    v18 = (a1 + v14[10]);
    v20 = *v18;
    v19 = v18[1];
    v36 = v20;
    v32 = v19;
    v21 = type metadata accessor for PromptMapperResolver(0);
    a3[3] = v21;
    a3[4] = &off_283FB3CE0;
    v22 = sub_22C36D548(a3);
    sub_22C4D0C60(a1 + v17, v22 + *(v21 + 36), type metadata accessor for FullPlannerPreferences);
    sub_22C42F0B8(v35, v22);
    v22[34] = v11;
    v22[35] = v16;
    v23 = v30;
    v22[36] = v31;
    v22[37] = v23;
    sub_22C378A4C(v34, (v22 + 38));
    v24 = sub_22C90A75C();
    sub_22C36C640(v8, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v32;
    v25[4] = v33;

    sub_22C580C40();
    v28 = v27;
    sub_22C36FF94(v34);
    result = sub_22C3DF2E8(v35);
    v29 = v36;
    v22[43] = v28;
    v22[44] = v29;
    v22[45] = v26;
  }

  return result;
}