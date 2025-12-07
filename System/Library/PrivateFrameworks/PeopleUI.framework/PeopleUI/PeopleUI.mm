uint64_t sub_25E203A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25E203AC4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25E203B78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E203B98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_25E203C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E217124();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 80);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25E203CE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E217124();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 80) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25E203DA4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t get_enum_tag_for_layout_string_8PeopleUI11BadgeStatus_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25E203DD4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25E203E1C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25E203ED8()
{
  v1 = *v0;
  sub_25E217654();
  MEMORY[0x25F8AF560]((v1 & 1) == 0);
  return sub_25E217674();
}

uint64_t sub_25E203F58(uint64_t a1)
{
  v2 = *v1;
  sub_25E217654();
  MEMORY[0x25F8AF560]((v2 & 1) == 0);
  return sub_25E217674();
}

void *sub_25E203FA0@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_25E203FD4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E216D24();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t MetricTemplateView.init(dragRefresh:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0720, &qword_25E217B70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  *&v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0728, &qword_25E217B78);
  v6 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v8 = &v34 - v7;
  v9 = sub_25E216D04();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v36 = sub_25E216FE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0730, &unk_25E217B80);
  sub_25E217394();
  v16 = v38;
  *(a2 + 8) = v37;
  *(a2 + 16) = v16;
  v17 = type metadata accessor for MetricTemplateView(0);
  sub_25E216CF4();
  (*(v10 + 16))(v13, v15, v9);
  sub_25E217394();
  (*(v10 + 8))(v15, v9);
  v18 = v17[7];
  *(a2 + v18) = _s6People19MessagePersonStatusV0A2UIE14iconForeground05SwiftE05ColorVvg_0();
  v19 = v17[8];
  *(a2 + v19) = sub_25E2172F4();
  v20 = v17[9];
  sub_25E2044E0();
  sub_25E216F24();
  sub_25E216CA4();
  (*(v6 + 8))(v8, v34);
  v21 = [objc_opt_self() mainRunLoop];
  v22 = sub_25E217594();
  (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
  v23 = sub_25E217584();

  sub_25E20C1A8(v5, &qword_27FCE0720, &qword_25E217B70);
  v37 = v23;
  sub_25E217574();
  sub_25E20BEA8(&qword_27FCE0740, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
  v24 = sub_25E217144();

  *(a2 + v20) = v24;
  v25 = v17[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
  v26 = swift_allocObject();
  v34 = xmmword_25E217B60;
  *(v26 + 16) = xmmword_25E217B60;
  *(v26 + 32) = sub_25E216F04();
  *(v26 + 40) = v27;
  *(v26 + 48) = sub_25E216F14();
  *(v26 + 56) = v28;
  *(a2 + v25) = v26;
  v29 = v17[11];
  v30 = swift_allocObject();
  *(v30 + 16) = v34;
  *(v30 + 32) = sub_25E216FB4();
  *(v30 + 40) = v31;
  result = sub_25E216FC4();
  *(v30 + 48) = result;
  *(v30 + 56) = v33;
  *(a2 + v29) = v30;
  *a2 = v35;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25E2044E0()
{
  result = qword_27FCE0738;
  if (!qword_27FCE0738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE0738);
  }

  return result;
}

uint64_t sub_25E20452C()
{
  v45 = sub_25E216DB4();
  v40 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v38 = &v34 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  MEMORY[0x28223BE20](v1 - 8);
  v42 = &v34 - v2;
  v37 = sub_25E216D04();
  v3 = *(v37 - 8);
  v4 = MEMORY[0x28223BE20](v37);
  v47 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - v6;
  v8 = sub_25E216DC4();
  v35 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0918, &qword_25E217EB0);
  v15 = *(v3 + 72);
  v36 = v3;
  v16 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v43 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25E217B60;
  v44 = v17;
  v18 = v17 + v16;
  sub_25E216DA4();
  sub_25E216CF4();
  v41 = v18;
  sub_25E216D74();
  v19 = *(v3 + 8);
  v20 = v37;
  v19(v7, v37);
  v21 = *(v9 + 8);
  v34 = v9 + 8;
  v21(v14, v8);
  v46 = v12;
  sub_25E216DA4();
  sub_25E216DA4();
  v22 = v40;
  v23 = v38;
  v24 = v45;
  (*(v40 + 104))(v38, *MEMORY[0x277CC9968], v45);
  sub_25E216CF4();
  v25 = v42;
  sub_25E216D94();
  v39 = v19;
  v19(v7, v20);
  v26 = v23;
  v27 = v24;
  v28 = v36;
  v29 = v35;
  (*(v22 + 8))(v26, v27);
  v21(v14, v29);
  v30 = *(v28 + 48);
  if (v30(v25, 1, v20) == 1)
  {
    v31 = v47;
    sub_25E216CF4();
    if (v30(v25, 1, v20) != 1)
    {
      sub_25E20C1A8(v25, &qword_27FCE0880, &qword_25E217E40);
    }
  }

  else
  {
    v31 = v47;
    (*(v28 + 32))(v47, v25, v20);
  }

  v32 = v46;
  sub_25E216D74();
  v39(v31, v20);
  v21(v32, v29);
  return v44;
}

uint64_t sub_25E2049BC()
{
  v26 = sub_25E216DC4();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ActionPoint(0);
  v24 = *(v4 - 8);
  v25 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  v9 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  v10 = *(v0 + *(type metadata accessor for MetricTemplateView(0) + 40));
  v28 = v0;
  v29 = &v31;
  result = sub_25E2052B8(sub_25E20C3A4, v27, v10);
  v12 = v31;
  v22 = *(v31 + 16);
  if (v22)
  {
    v13 = 0;
    v21 = v31;
    while (v13 < *(v12 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_25E20C224(v12 + v14 + v15 * v13, v8, type metadata accessor for ActionPoint);
      sub_25E216DA4();
      v16 = sub_25E216D84();
      (*(v1 + 8))(v3, v26);
      if (v16)
      {
        sub_25E20C28C(v8, v23, type metadata accessor for ActionPoint);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210EE4(0, *(v9 + 16) + 1, 1);
          v9 = v30;
        }

        v19 = *(v9 + 16);
        v18 = *(v9 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_25E210EE4((v18 > 1), v19 + 1, 1);
          v9 = v30;
        }

        *(v9 + 16) = v19 + 1;
        result = sub_25E20C28C(v23, v9 + v14 + v19 * v15, type metadata accessor for ActionPoint);
        v12 = v21;
      }

      else
      {
        result = sub_25E20C3C0(v8, type metadata accessor for ActionPoint);
      }

      if (v22 == ++v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v20 = *(v9 + 16);

    if (!v20)
    {

      return 0;
    }

    return v9;
  }

  return result;
}

void (*sub_25E204D00(uint64_t *a1, uint64_t a2, uint64_t a3))(void *)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a2 + *(type metadata accessor for MetricTemplateView(0) + 44));
  v9[2] = a2;
  v9[3] = v5;
  v9[4] = v6;
  v9[5] = a3;
  return sub_25E2052B8(sub_25E20C420, v9, v7);
}

uint64_t sub_25E204D7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v56 = type metadata accessor for ActionPoint(0);
  v54 = *(v56 - 8);
  v9 = MEMORY[0x28223BE20](v56);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v53 = &v48 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v48 - v13;
  v15 = sub_25E216D04();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v49 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v55 = &v48 - v19;
  v50 = a3;
  v51 = a4;
  v20 = sub_25E216FA4();
  v22 = v21;
  v23 = *(a2 + 16);
  v57 = *(a2 + 8);
  v58 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v24 = v60;
  if (!*(v60 + 16))
  {

    goto LABEL_10;
  }

  v48 = a5;
  v25 = sub_25E2112B8(v20, v22);
  v27 = v26;

  if ((v27 & 1) == 0)
  {
LABEL_10:

    (*(v16 + 56))(v14, 1, 1, v15);
    return sub_25E20C1A8(v14, &qword_27FCE0880, &qword_25E217E40);
  }

  sub_25E20C044(*(v24 + 56) + 32 * v25, v59);

  v28 = swift_dynamicCast();
  (*(v16 + 56))(v14, v28 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_25E20C1A8(v14, &qword_27FCE0880, &qword_25E217E40);
  }

  v29 = v55;
  (*(v16 + 32))(v55, v14, v15);
  v30 = *(v16 + 16);
  v31 = v49;
  v30(v49, v29, v15);
  v32 = v52;
  sub_25E216D14();
  v33 = v56;
  v34 = (v32 + *(v56 + 20));
  v35 = v51;
  *v34 = v50;
  v34[1] = v35;
  v30((v32 + *(v33 + 24)), v31, v15);
  v59[0] = sub_25E217474();
  v59[1] = v36;
  v57 = 0x656E696C656D6974;
  v58 = 0xE800000000000000;
  sub_25E20BFD0(v59[0], v36, v37);

  v38 = sub_25E2175B4();
  v39 = *(v16 + 8);
  v39(v31, v15);

  *(v32 + *(v56 + 28)) = (v38 & 1) == 0;
  v40 = v53;
  sub_25E20C28C(v32, v53, type metadata accessor for ActionPoint);
  v41 = v48;
  v42 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v41 = v42;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_25E20E4BC(0, v42[2] + 1, 1, v42);
    *v41 = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    *v41 = sub_25E20E4BC((v44 > 1), v45 + 1, 1, v42);
  }

  v39(v55, v15);
  v46 = *v41;
  *(v46 + 16) = v45 + 1;
  return sub_25E20C28C(v40, v46 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v45, type metadata accessor for ActionPoint);
}

void (*sub_25E2052B8(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_25E20534C()
{
  v29 = sub_25E216DC4();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SignalPoint(0);
  v27 = *(v4 - 8);
  v28 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v26 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  v10 = MEMORY[0x277D84F90];
  v34 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x25F8AEED0](v7);
  v31 = v0;
  v32 = &v34;
  sub_25E2052B8(sub_25E20C208, v30, v11);

  v13 = v34;
  v14 = *(v34 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (v1 + 8);
    v24 = *(v34 + 16);
    v25 = v34;
    while (v15 < *(v13 + 16))
    {
      v17 = (*(v27 + 80) + 32) & ~*(v27 + 80);
      v18 = *(v27 + 72);
      sub_25E20C224(v13 + v17 + v18 * v15, v9, type metadata accessor for SignalPoint);
      sub_25E216DA4();
      v19 = sub_25E216D84();
      (*v16)(v3, v29);
      if (v19)
      {
        sub_25E20C28C(v9, v26, type metadata accessor for SignalPoint);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210F28(0, *(v10 + 16) + 1, 1);
          v10 = v33;
        }

        v22 = *(v10 + 16);
        v21 = *(v10 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_25E210F28((v21 > 1), v22 + 1, 1);
          v10 = v33;
        }

        *(v10 + 16) = v22 + 1;
        result = sub_25E20C28C(v26, v10 + v17 + v22 * v18, type metadata accessor for SignalPoint);
        v14 = v24;
        v13 = v25;
      }

      else
      {
        result = sub_25E20C3C0(v9, type metadata accessor for SignalPoint);
      }

      if (v14 == ++v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v23 = *(v10 + 16);

    if (!v23)
    {

      return 0;
    }

    return v10;
  }

  return result;
}

uint64_t sub_25E20568C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_25E216D04();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x28223BE20](v7);
  v54 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for SignalPoint(0);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0910, &qword_25E217EA8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = sub_25E217004();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v47 = v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[1];
  v19 = *a1;
  v20 = *(a2 + 16);
  v58 = *(a2 + 8);
  v59 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v21 = v61;
  if (!*(v61 + 16) || (v22 = sub_25E2112B8(v19, v18), (v23 & 1) == 0))
  {

    (*(v16 + 56))(v14, 1, 1, v15);
    return sub_25E20C1A8(v14, &qword_27FCE0910, &qword_25E217EA8);
  }

  v52 = v18;
  sub_25E20C044(*(v21 + 56) + 32 * v22, v60);

  v24 = swift_dynamicCast();
  (*(v16 + 56))(v14, v24 ^ 1u, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_25E20C1A8(v14, &qword_27FCE0910, &qword_25E217EA8);
  }

  (*(v16 + 32))(v47, v14, v15);
  v25 = sub_25E216FF4();
  v26 = *(v25 + 16);
  if (v26)
  {
    v51 = v19;
    v43 = v16;
    v44 = v15;
    v45 = a3;
    v46 = v3;
    v60[0] = MEMORY[0x277D84F90];
    sub_25E210F28(0, v26, 0);
    v27 = v60[0];
    v50 = *(v57 + 16);
    v28 = (*(v57 + 80) + 32) & ~*(v57 + 80);
    v42[1] = v25;
    v29 = v25 + v28;
    v30 = *(v57 + 72);
    v57 += 16;
    v48 = (v57 - 8);
    v49 = v30;
    do
    {
      v31 = v11;
      v32 = v54;
      v33 = v56;
      v34 = v50;
      v50(v54, v29, v56);
      v35 = v55;
      v34(v31 + *(v55 + 24), v32, v33);
      v36 = v52;

      sub_25E216D14();
      v37 = v32;
      v11 = v31;
      (*v48)(v37, v33);
      v38 = (v31 + *(v35 + 20));
      *v38 = v51;
      v38[1] = v36;
      v60[0] = v27;
      v40 = *(v27 + 16);
      v39 = *(v27 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_25E210F28((v39 > 1), v40 + 1, 1);
        v27 = v60[0];
      }

      *(v27 + 16) = v40 + 1;
      sub_25E20C28C(v31, v27 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40, type metadata accessor for SignalPoint);
      v29 += v49;
      --v26;
    }

    while (v26);

    v16 = v43;
    v15 = v44;
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
  }

  sub_25E205BA8(v27);
  return (*(v16 + 8))(v47, v15);
}

uint64_t sub_25E205BA8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_25E20E4E4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for SignalPoint(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25E205CD4()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  v1 = MEMORY[0x25F8AEED0]();
  v6 = v0;
  v7 = &v8;
  sub_25E2052B8(sub_25E20C18C, &v5, v1);

  v2 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v2 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    v3 = sub_25E217494();
  }

  else
  {

    return 0x2064657461647055;
  }

  return v3;
}

uint64_t sub_25E205D9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v58 = sub_25E216DC4();
  v52 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_25E216D04();
  v59 = *(v50 - 8);
  v8 = MEMORY[0x28223BE20](v50);
  v56 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0910, &qword_25E217EA8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v41 - v12;
  v14 = sub_25E217004();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  v20 = *(a2 + 16);
  v60 = *(a2 + 8);
  v61 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v21 = v64;
  if (!*(v64 + 16) || (v22 = sub_25E2112B8(v19, v18), (v23 & 1) == 0))
  {

    (*(v15 + 56))(v13, 1, 1, v14);
    return sub_25E20C1A8(v13, &qword_27FCE0910, &qword_25E217EA8);
  }

  sub_25E20C044(*(v21 + 56) + 32 * v22, &v62);

  v24 = swift_dynamicCast();
  (*(v15 + 56))(v13, v24 ^ 1u, 1, v14);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    return sub_25E20C1A8(v13, &qword_27FCE0910, &qword_25E217EA8);
  }

  v42 = v18;
  v43 = a3;
  v46 = v14;
  v47 = v3;
  v45 = v15;
  (*(v15 + 32))(v17, v13, v14);
  v44 = v17;
  result = sub_25E216FF4();
  v55 = *(result + 16);
  if (v55)
  {
    v26 = 0;
    ++v52;
    v53 = v59 + 16;
    v48 = (v59 + 8);
    v51 = (v59 + 32);
    v27 = MEMORY[0x277D84F90];
    v29 = v49;
    v28 = v50;
    v54 = v19;
    while (v26 < *(result + 16))
    {
      v30 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v31 = result;
      v32 = *(v59 + 72);
      (*(v59 + 16))(v29, result + v30 + v32 * v26, v28);
      v33 = v57;
      sub_25E216DA4();
      v34 = sub_25E216D84();
      (*v52)(v33, v58);
      if (v34)
      {
        v35 = *v51;
        (*v51)(v56, v29, v28);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_25E210F6C(0, *(v27 + 16) + 1, 1);
          v27 = v62;
        }

        v38 = *(v27 + 16);
        v37 = *(v27 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_25E210F6C((v37 > 1), v38 + 1, 1);
          v27 = v62;
        }

        *(v27 + 16) = v38 + 1;
        v28 = v50;
        v35((v27 + v30 + v38 * v32), v56, v50);
        v29 = v49;
      }

      else
      {
        (*v48)(v29, v28);
      }

      ++v26;
      v19 = v54;
      result = v31;
      if (v55 == v26)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_18:

    if (*(v27 + 16))
    {
      v62 = v19;
      v63 = v42;

      MEMORY[0x25F8AF3C0](8250, 0xE200000000000000);
      v39 = *(v27 + 16);

      v60 = v39;
      v40 = sub_25E217624();
      MEMORY[0x25F8AF3C0](v40);

      MEMORY[0x25F8AF3C0](10, 0xE100000000000000);
      MEMORY[0x25F8AF3C0](v62, v63);

      return (*(v45 + 8))(v44, v46);
    }

    else
    {
      (*(v45 + 8))(v44, v46);
    }
  }

  return result;
}

uint64_t sub_25E2063B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_25E216D04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E20C0A0(a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_25E20C1A8(v4, &qword_27FCE0880, &qword_25E217E40);
    return 0x6E776F6E6B6E55;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v10 setTimeStyle_];
    [v10 setDateStyle_];
    v11 = sub_25E216CE4();
    v12 = [v10 stringFromDate_];

    v13 = sub_25E217454();
    (*(v6 + 8))(v8, v5);
    return v13;
  }
}

uint64_t sub_25E2065DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_25E216FA4();
  v10 = v9;
  v11 = *(v4 + 16);
  v23 = *(v4 + 8);
  v24 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  v12 = v22;
  if (!*(v22 + 16))
  {

    goto LABEL_5;
  }

  v13 = sub_25E2112B8(v8, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
LABEL_5:

    v18 = sub_25E216D04();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
    goto LABEL_6;
  }

  sub_25E20C044(*(v12 + 56) + 32 * v13, v25);

  v16 = sub_25E216D04();
  v17 = swift_dynamicCast();
  (*(*(v16 - 8) + 56))(v7, v17 ^ 1u, 1, v16);
LABEL_6:
  v19 = sub_25E2063B4(v7);
  sub_25E20C1A8(v7, &qword_27FCE0880, &qword_25E217E40);
  return v19;
}

unint64_t sub_25E2067E0()
{
  v0 = sub_25E216F04();
  v2 = v1;
  v3 = sub_25E216FB4();
  v5 = sub_25E2065DC(v0, v2, v3, v4);
  v7 = v6;

  v8 = sub_25E216F14();
  v10 = v9;
  v11 = sub_25E216FB4();
  v13 = sub_25E2065DC(v8, v10, v11, v12);
  v15 = v14;

  v16 = sub_25E216F04();
  v18 = v17;
  v19 = sub_25E216FC4();
  v31 = sub_25E2065DC(v16, v18, v19, v20);
  v22 = v21;

  v23 = sub_25E216F14();
  v25 = v24;
  v26 = sub_25E216FC4();
  v32 = sub_25E2065DC(v23, v25, v26, v27);
  v29 = v28;

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v5, v7);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);
  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v13, v15);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD000000000000019, 0x800000025E218850);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v31, v22);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD00000000000001FLL, 0x800000025E218870);

  sub_25E2175D4();

  MEMORY[0x25F8AF3C0](v32, v29);

  MEMORY[0x25F8AF3C0](10, 0xE100000000000000);

  MEMORY[0x25F8AF3C0](0xD000000000000021, 0x800000025E218890);

  return 0xD000000000000017;
}

uint64_t sub_25E206B54(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  a1();
  a2();
  v4 = sub_25E216FA4();
  v6 = v5;

  v7 = *(v2 + 16);
  v13[0] = *(v2 + 8);
  v13[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173A4();
  if (!*(v12 + 16))
  {

    goto LABEL_6;
  }

  v8 = sub_25E2112B8(v4, v6);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_6:

    return 0;
  }

  sub_25E20C044(*(v12 + 56) + 32 * v8, v13);

  if (swift_dynamicCast())
  {
    return v12;
  }

  return 0;
}

uint64_t sub_25E206C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0800, &qword_25E217DF0);
  v66 = *(v64 - 8);
  v3 = MEMORY[0x28223BE20](v64);
  v63 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0808, &qword_25E217DF8);
  v65 = *(v51 - 8);
  v7 = MEMORY[0x28223BE20](v51);
  v59 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v43 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0810, &qword_25E217E00);
  v60 = *(v62 - 8);
  v11 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0818, &qword_25E217E08);
  v57 = *(v56 - 8);
  v15 = MEMORY[0x28223BE20](v56);
  v58 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v55 = &v43 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v54 = &v43 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v43 - v21;
  v71 = a1;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0820, &qword_25E217E10);
  v23 = MEMORY[0x277CE14C0];
  sub_25E20C35C(&qword_27FCE0828, &qword_27FCE0820, &qword_25E217E10, MEMORY[0x277CE14C0]);
  v50 = v22;
  sub_25E2173D4();
  v70 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0830, &qword_25E217E18);
  sub_25E20BF00();
  v49 = v14;
  sub_25E2173D4();
  v69 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0850, &qword_25E217E28);
  sub_25E20C35C(&qword_27FCE0858, &qword_27FCE0850, &qword_25E217E28, v23);
  v48 = v10;
  sub_25E2173D4();
  v68 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0860, &qword_25E217E30);
  sub_25E20C35C(&qword_27FCE0868, &qword_27FCE0860, &qword_25E217E30, v23);
  v47 = v6;
  sub_25E2173D4();
  v67 = a1;
  v24 = v54;
  sub_25E2173D4();
  v53 = *(v57 + 16);
  v25 = v55;
  v53(v55, v22, v56);
  v46 = *(v60 + 16);
  v46(v61, v14, v62);
  v45 = *(v65 + 16);
  v26 = v59;
  v27 = v51;
  v45(v59, v10, v51);
  v44 = *(v66 + 16);
  v44(v63, v6, v64);
  v28 = v24;
  v29 = v56;
  v30 = v53;
  v53(v58, v28, v56);
  v31 = v52;
  v30(v52, v25, v29);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0870, &qword_25E217E38);
  v46((v31 + v32[12]), v61, v62);
  v33 = v26;
  v34 = v27;
  v45((v31 + v32[16]), v33, v27);
  v35 = v64;
  v44((v31 + v32[20]), v63, v64);
  v36 = v58;
  v53((v31 + v32[24]), v58, v29);
  v37 = *(v57 + 8);
  v37(v54, v29);
  v38 = *(v66 + 8);
  v66 += 8;
  v38(v47, v35);
  v39 = *(v65 + 8);
  v65 += 8;
  v39(v48, v34);
  v40 = *(v60 + 8);
  v41 = v62;
  v40(v49, v62);
  v37(v50, v29);
  v37(v36, v29);
  v38(v63, v64);
  v39(v59, v34);
  v40(v61, v41);
  return (v37)(v55, v29);
}

uint64_t sub_25E207508@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v33 - v3;
  v5 = sub_25E2171F4();
  v34 = v6;
  v35 = v5;
  HIDWORD(v33) = v7;
  v36 = v8;
  type metadata accessor for MetricTemplateView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173A4();
  v9 = sub_25E216D04();
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  v10 = sub_25E2063B4(v4);
  v12 = v11;
  sub_25E20C1A8(v4, &qword_27FCE0880, &qword_25E217E40);
  v38 = 0x203A646564616F4CLL;
  v39 = 0xE800000000000000;
  MEMORY[0x25F8AF3C0](v10, v12);

  sub_25E20BFD0(v13, v14, v15);
  v16 = sub_25E217224();
  v18 = v17;
  v20 = v19;
  sub_25E217194();
  v21 = sub_25E217204();
  v23 = v22;
  v25 = v24;
  v27 = v26;

  sub_25E20C024(v16, v18, v20 & 1);

  v28 = BYTE4(v33) & 1;
  v37 = BYTE4(v33) & 1;
  LOBYTE(v38) = BYTE4(v33) & 1;
  v40 = v25 & 1;
  v30 = v34;
  v29 = v35;
  *a1 = v35;
  *(a1 + 8) = v30;
  *(a1 + 16) = v28;
  *(a1 + 24) = v36;
  *(a1 + 32) = v21;
  *(a1 + 40) = v23;
  *(a1 + 48) = v25 & 1;
  *(a1 + 56) = v27;
  v31 = v29;
  sub_25E20C034(v29, v30, v28);

  sub_25E20C034(v21, v23, v25 & 1);

  sub_25E20C024(v21, v23, v25 & 1);

  sub_25E20C024(v31, v30, v37);
}

__n128 sub_25E2077AC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0848, &qword_25E217E20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12[-v6];
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0988, &qword_25E217F08);
  sub_25E20C448();
  sub_25E216E24();
  sub_25E2173E4();
  sub_25E217154();
  (*(v5 + 32))(a2, v7, v4);
  v8 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0830, &qword_25E217E18) + 36);
  v9 = v19;
  *(v8 + 64) = v18;
  *(v8 + 80) = v9;
  *(v8 + 96) = v20;
  v10 = v15;
  *v8 = v14;
  *(v8 + 16) = v10;
  result = v17;
  *(v8 + 32) = v16;
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_25E20795C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v56 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0998, &qword_25E217F10);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_25E216E54();
  v63 = *(v4 - 8);
  v64 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A0, &qword_25E217F18);
  v54 = *(v52 - 8);
  v7 = MEMORY[0x28223BE20](v52);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = &v44 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v62 = &v44 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v60 = (&v44 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v51 = &v44 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v44 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v59 = &v44 - v20;
  MEMORY[0x28223BE20](v19);
  v50 = &v44 - v21;
  sub_25E217164();
  v65 = 0xD000000000000010;
  v66 = 0x800000025E2188E0;
  sub_25E216E14();

  sub_25E217164();
  v46 = MEMORY[0x277D39ED8];
  v49 = MEMORY[0x277D39F50];
  v22 = v58;
  v65 = sub_25E206B54(MEMORY[0x277D39ED8], MEMORY[0x277D39F50]);
  sub_25E216E14();

  v23 = v6;
  sub_25E216E44();
  v24 = type metadata accessor for MetricTemplateView(0);
  v48 = *(v22 + *(v24 + 28));
  v65 = v48;

  v25 = v64;
  sub_25E216E04();
  v57 = *(v63 + 8);
  v63 += 8;
  v57(v23, v25);
  sub_25E217164();
  v65 = 0xD000000000000011;
  v66 = 0x800000025E218900;
  sub_25E216E14();

  sub_25E217164();
  v47 = MEMORY[0x277D39F58];
  v65 = sub_25E206B54(v46, MEMORY[0x277D39F58]);
  sub_25E216E14();

  sub_25E216E44();
  v46 = *(v22 + *(v24 + 32));
  v65 = v46;

  v26 = v64;
  v44 = v23;
  sub_25E216E04();
  v27 = v57;
  v57(v23, v26);
  sub_25E217164();
  v65 = 0xD000000000000012;
  v66 = 0x800000025E218920;
  sub_25E216E14();

  sub_25E217164();
  v45 = MEMORY[0x277D39EE0];
  v65 = sub_25E206B54(MEMORY[0x277D39EE0], v49);
  sub_25E216E14();

  v28 = v44;
  sub_25E216E44();
  v65 = v48;
  v29 = v64;
  sub_25E216E04();

  v27(v28, v29);
  sub_25E217164();
  v65 = 0xD000000000000013;
  v66 = 0x800000025E218940;
  sub_25E216E14();

  sub_25E217164();
  v65 = sub_25E206B54(v45, v47);
  sub_25E216E14();

  sub_25E216E44();
  v65 = v46;
  v30 = v51;
  v31 = v64;
  sub_25E216E04();

  v57(v28, v31);
  v32 = v54;
  v33 = *(v54 + 16);
  v34 = v60;
  v35 = v50;
  v36 = v52;
  v33(v60, v50, v52);
  v65 = v34;
  v37 = v62;
  v38 = v59;
  v33(v62, v59, v36);
  v66 = v37;
  v39 = v53;
  v40 = v61;
  v33(v53, v61, v36);
  v67 = v39;
  v41 = v55;
  v33(v55, v30, v36);
  v68 = v41;
  sub_25E208440(&v65, v56);
  v42 = *(v32 + 8);
  v42(v30, v36);
  v42(v40, v36);
  v42(v38, v36);
  v42(v35, v36);
  v42(v41, v36);
  v42(v39, v36);
  v42(v62, v36);
  return (v42)(v60, v36);
}

uint64_t sub_25E208440@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A8, &qword_25E217F20);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09A0, &qword_25E217F18);
  sub_25E216E54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v9(v6, *a1, v7);
  v10 = v4[14];
  v9(&v6[v10], a1[1], v7);
  v11 = v4[18];
  v9(&v6[v11], a1[2], v7);
  v12 = v4[22];
  v9(&v6[v12], a1[3], v7);
  v13 = *(v8 + 32);
  v14 = v17;
  v13(v17, v6, v7);
  v13(v14 + v4[14], &v6[v10], v7);
  v13(v14 + v4[18], &v6[v11], v7);
  return (v13)(v14 + v4[22], &v6[v12], v7);
}

uint64_t sub_25E20860C@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0890, &qword_25E217E50);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v66 - v2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0930, &qword_25E217EC8);
  v4 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v6 = &v66 - v5;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0938, &qword_25E217ED0);
  v7 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v9 = &v66 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0940, &qword_25E217ED8);
  v10 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v12 = &v66 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0948, &qword_25E217EE0);
  MEMORY[0x28223BE20](v71);
  v14 = &v66 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0950, &qword_25E217EE8);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v79 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v78 = &v66 - v18;
  v19 = sub_25E2171F4();
  v75 = v20;
  v76 = v19;
  v73 = v21;
  v77 = v22;
  v23 = sub_25E2049BC();
  if (v23)
  {
    v82 = v23;
    v68 = v12;
    v69 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0968, &qword_25E217EF8);
    v70 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D8, &qword_25E217E90);
    sub_25E20C35C(&qword_27FCE0970, &qword_27FCE0968, &qword_25E217EF8, MEMORY[0x277D83980]);
    v83 = sub_25E216E74();
    v84 = MEMORY[0x277D837D0];
    v85 = MEMORY[0x277CBB468];
    v86 = MEMORY[0x277CBB570];
    swift_getOpaqueTypeConformance2();
    sub_25E20BEA8(&qword_27FCE0978, type metadata accessor for ActionPoint, &unk_25E217D78);
    sub_25E216E34();
    v83 = sub_25E20452C();
    v24 = sub_25E216E84();
    (*(*(v24 - 8) + 56))(v3, 1, 1, v24);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08F8, &qword_25E217E98);
    v26 = sub_25E20C35C(&qword_27FCE0958, &qword_27FCE0930, &qword_25E217EC8, MEMORY[0x277CBB3F8]);
    v27 = sub_25E20C110();
    v67 = v9;
    v28 = v72;
    sub_25E217244();
    sub_25E20C1A8(v3, &qword_27FCE0890, &qword_25E217E50);

    (*(v4 + 8))(v6, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0980, &qword_25E217F00);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_25E217B60;
    *(v29 + 32) = sub_25E216F04();
    *(v29 + 40) = v30;
    *(v29 + 48) = _s6People22MissedCallPersonStatusV0A2UIE14iconForeground05SwiftF05ColorVvg_0();
    *(v29 + 56) = sub_25E216F14();
    *(v29 + 64) = v31;
    *(v29 + 72) = sub_25E217334();
    v83 = v28;
    v84 = v25;
    v85 = v26;
    v86 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = MEMORY[0x277CE0F78];
    v34 = MEMORY[0x277CE0F60];
    v35 = v68;
    v36 = v74;
    v37 = MEMORY[0x277D837D0];
    v38 = MEMORY[0x277CBB570];
    v39 = v67;
    sub_25E217254();

    (*(v69 + 8))(v39, v36);
    v40 = v70;
    v41 = v80;
    (*(v70 + 16))(v14, v35, v80);
    swift_storeEnumTagMultiPayload();
    v83 = v36;
    v84 = v37;
    v85 = v33;
    v86 = OpaqueTypeConformance2;
    v87 = v38;
    v88 = v34;
    swift_getOpaqueTypeConformance2();
    v42 = v78;
    sub_25E217174();
    (*(v40 + 8))(v35, v41);
  }

  else
  {
    sub_25E217164();
    v43 = sub_25E217214();
    v45 = v44;
    v47 = v46;
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v48 = sub_25E217204();
    v50 = v49;
    v52 = v51;
    v54 = v53;

    sub_25E20C024(v43, v45, v47 & 1);

    *v14 = v48;
    *(v14 + 1) = v50;
    v14[16] = v52 & 1;
    *(v14 + 3) = v54;
    swift_storeEnumTagMultiPayload();
    v55 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE08F8, &qword_25E217E98);
    v56 = sub_25E20C35C(&qword_27FCE0958, &qword_27FCE0930, &qword_25E217EC8, MEMORY[0x277CBB3F8]);
    v57 = sub_25E20C110();
    v83 = v72;
    v84 = v55;
    v85 = v56;
    v86 = v57;
    v58 = swift_getOpaqueTypeConformance2();
    v83 = v74;
    v84 = MEMORY[0x277D837D0];
    v85 = MEMORY[0x277CE0F78];
    v86 = v58;
    v87 = MEMORY[0x277CBB570];
    v88 = MEMORY[0x277CE0F60];
    swift_getOpaqueTypeConformance2();
    v42 = v78;
    sub_25E217174();
  }

  v59 = v79;
  sub_25E20C2F4(v42, v79, &qword_27FCE0950, &qword_25E217EE8);
  v60 = v81;
  v62 = v75;
  v61 = v76;
  *v81 = v76;
  v60[1] = v62;
  v63 = v73 & 1;
  *(v60 + 16) = v73 & 1;
  v60[3] = v77;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0960, &qword_25E217EF0);
  sub_25E20C2F4(v59, v60 + *(v64 + 48), &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C034(v61, v62, v63);

  sub_25E20C1A8(v42, &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C1A8(v59, &qword_27FCE0950, &qword_25E217EE8);
  sub_25E20C024(v61, v62, v63);
}

uint64_t sub_25E208F90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  v26 = *(v28 - 8);
  v3 = MEMORY[0x28223BE20](v28);
  v25 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v22 = v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0928, &qword_25E217EC0);
  MEMORY[0x28223BE20](v6 - 8);
  v20[1] = v20 - v7;
  v8 = sub_25E216E74();
  v9 = *(v8 - 8);
  v23 = v8;
  v24 = v9;
  MEMORY[0x28223BE20](v8);
  v21 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217164();
  v11 = type metadata accessor for ActionPoint(0);
  sub_25E216D04();
  sub_25E216E14();

  sub_25E217164();
  v12 = 0x656E696C656D6954;
  if (*(a1 + *(v11 + 28)))
  {
    v12 = 0x74736575716552;
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE800000000000000;
  }

  v29 = v12;
  v30 = v13;
  sub_25E216E14();

  v14 = v21;
  sub_25E216E64();
  sub_25E217164();
  v15 = (a1 + *(v11 + 20));
  v16 = v15[1];
  v29 = *v15;
  v30 = v16;

  v17 = v25;
  sub_25E216E14();

  v18 = v23;
  sub_25E216DF4();
  (*(v26 + 8))(v17, v28);
  return (*(v24 + 8))(v14, v18);
}

uint64_t sub_25E20934C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0888, &qword_25E217E48);
  MEMORY[0x28223BE20](v96);
  v4 = &v79 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0890, &qword_25E217E50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v79 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0898, &qword_25E217E58);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v79 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08A0, &qword_25E217E60);
  v82 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v79 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08A8, &qword_25E217E68);
  v84 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v83 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v79 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08B0, &qword_25E217E70);
  MEMORY[0x28223BE20](v88);
  v89 = (&v79 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08B8, &qword_25E217E78);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v95 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v94 = &v79 - v24;
  v25 = sub_25E2171F4();
  v91 = v26;
  v92 = v25;
  v90 = v27;
  v93 = v28;
  v29 = sub_25E20534C();
  if (v29)
  {
    v102 = v29;
    v87 = v15;
    v81 = a1;
    v80 = v12;
    v85 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D0, &qword_25E217E88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08D8, &qword_25E217E90);
    v86 = v4;
    sub_25E20C35C(&qword_27FCE08E0, &qword_27FCE08D0, &qword_25E217E88, MEMORY[0x277D83980]);
    v98 = sub_25E216E74();
    v99 = MEMORY[0x277D837D0];
    v100 = MEMORY[0x277CBB468];
    v101 = MEMORY[0x277CBB570];
    swift_getOpaqueTypeConformance2();
    sub_25E20BEA8(&qword_27FCE08E8, type metadata accessor for SignalPoint, &unk_25E217DB0);
    sub_25E216E34();
    v30 = sub_25E20C35C(&qword_27FCE08F0, &qword_27FCE0898, &qword_25E217E58, MEMORY[0x277CBB3F8]);
    sub_25E217234();
    (*(v9 + 8))(v11, v8);
    v102 = sub_25E20452C();
    v31 = sub_25E216E84();
    (*(*(v31 - 8) + 56))(v7, 1, 1, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08F8, &qword_25E217E98);
    v98 = v8;
    v99 = v30;
    swift_getOpaqueTypeConformance2();
    sub_25E20C110();
    v32 = v80;
    sub_25E217244();
    sub_25E20C1A8(v7, &qword_27FCE0890, &qword_25E217E50);

    (*(v82 + 8))(v14, v32);
    v98 = sub_25E205CD4();
    v99 = v33;
    sub_25E20BFD0(v98, v33, v34);
    v35 = sub_25E217224();
    v37 = v36;
    v39 = v38;
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v40 = sub_25E217204();
    v42 = v41;
    v44 = v43;

    sub_25E20C024(v35, v37, v39 & 1);

    sub_25E217344();
    v45 = sub_25E2171E4();
    v47 = v46;
    LOBYTE(v32) = v48;

    sub_25E20C024(v40, v42, v44 & 1);

    v49 = sub_25E2171F4();
    v51 = v50;
    LOBYTE(v42) = v52;
    v54 = v53;
    sub_25E20C024(v45, v47, v32 & 1);

    v55 = v84;
    v56 = *(v84 + 16);
    v57 = v83;
    v58 = v87;
    v56(v83, v85, v87);
    v59 = v86;
    v56(v86, v57, v58);
    v60 = v59 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0908, &qword_25E217EA0) + 48);
    *v60 = v49;
    *(v60 + 8) = v51;
    LOBYTE(v42) = v42 & 1;
    *(v60 + 16) = v42;
    *(v60 + 24) = v54;
    sub_25E20C034(v49, v51, v42);

    sub_25E20C034(v49, v51, v42);

    sub_25E20C024(v49, v51, v42);

    v61 = *(v55 + 8);
    v62 = v87;
    v61(v57, v87);
    sub_25E20C2F4(v59, v89, &qword_27FCE0888, &qword_25E217E48);
    swift_storeEnumTagMultiPayload();
    sub_25E20C35C(&qword_27FCE08C0, &qword_27FCE0888, &qword_25E217E48, MEMORY[0x277CE14C0]);
    v63 = v94;
    sub_25E217174();
    sub_25E20C024(v49, v51, v42);

    sub_25E20C1A8(v86, &qword_27FCE0888, &qword_25E217E48);
    v61(v85, v62);
  }

  else
  {
    _s6People22MissedCallPersonStatusV0A2UIE12iconFontSize05SwiftF00H0Vvg_0();
    v64 = sub_25E217204();
    v66 = v65;
    v68 = v67;
    v70 = v69;

    v71 = v89;
    *v89 = v64;
    v71[1] = v66;
    *(v71 + 16) = v68 & 1;
    v71[3] = v70;
    swift_storeEnumTagMultiPayload();
    sub_25E20C35C(&qword_27FCE08C0, &qword_27FCE0888, &qword_25E217E48, MEMORY[0x277CE14C0]);
    v63 = v94;
    sub_25E217174();
  }

  v72 = v95;
  sub_25E20C2F4(v63, v95, &qword_27FCE08B8, &qword_25E217E78);
  v74 = v91;
  v73 = v92;
  v75 = v97;
  *v97 = v92;
  v75[1] = v74;
  v76 = v90 & 1;
  *(v75 + 16) = v90 & 1;
  v75[3] = v93;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE08C8, &qword_25E217E80);
  sub_25E20C2F4(v72, v75 + *(v77 + 48), &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C034(v73, v74, v76);

  sub_25E20C1A8(v63, &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C1A8(v72, &qword_27FCE08B8, &qword_25E217E78);
  sub_25E20C024(v73, v74, v76);
}

uint64_t sub_25E209DFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0920, &qword_25E217EB8);
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0928, &qword_25E217EC0);
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_25E216E74();
  v7 = *(v6 - 8);
  v17 = v6;
  v18 = v7;
  MEMORY[0x28223BE20](v6);
  v16 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217164();
  v9 = type metadata accessor for SignalPoint(0);
  sub_25E216D04();
  sub_25E216E14();

  sub_25E217164();
  v10 = (a1 + *(v9 + 20));
  v11 = v10[1];
  v22 = *v10;
  v12 = v22;
  v23 = v11;
  swift_bridgeObjectRetain_n();
  sub_25E216E14();

  v13 = v16;
  sub_25E216E64();
  sub_25E217164();
  v22 = v12;
  v23 = v11;
  sub_25E216E14();

  v14 = v17;
  sub_25E216DF4();
  (*(v19 + 8))(v4, v21);
  return (*(v18 + 8))(v13, v14);
}

uint64_t sub_25E20A158@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E2171F4();
  v22 = v3;
  v23 = v2;
  v21 = v4;
  v24 = v5;
  v25 = sub_25E2067E0();
  sub_25E20BFD0(v25, v6, v7);
  v8 = sub_25E217224();
  v10 = v9;
  v12 = v11;
  sub_25E217194();
  v13 = sub_25E217204();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_25E20C024(v8, v10, v12 & 1);

  *a1 = v23;
  *(a1 + 8) = v22;
  *(a1 + 16) = v21 & 1;
  *(a1 + 24) = v24;
  *(a1 + 32) = v13;
  *(a1 + 40) = v15;
  *(a1 + 48) = v17 & 1;
  *(a1 + 56) = v19;
  sub_25E20C034(v23, v22, v21 & 1);

  sub_25E20C034(v13, v15, v17 & 1);

  sub_25E20C024(v13, v15, v17 & 1);

  sub_25E20C024(v23, v22, v21 & 1);
}

uint64_t sub_25E20A2F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_25E216D04();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  v10 = sub_25E216FE4();
  v11 = *(a2 + 16);
  v13[2] = *(a2 + 8);
  v13[3] = v11;
  v13[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173B4();
  sub_25E216CF4();
  type metadata accessor for MetricTemplateView(0);
  (*(v4 + 16))(v7, v9, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173B4();
  return (*(v4 + 8))(v9, v3);
}

uint64_t sub_25E20A464(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_25E216D04();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_25E217544();
  v1[10] = sub_25E217534();
  v4 = sub_25E217524();

  return MEMORY[0x2822009F8](sub_25E20C59C, v4, v3);
}

uint64_t MetricTemplateView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0750, &qword_25E217B90);
  MEMORY[0x28223BE20](v49);
  v50 = &v38 - v3;
  v4 = type metadata accessor for MetricTemplateView(0);
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v5;
  v7 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0758, &qword_25E217B98);
  MEMORY[0x28223BE20](v8);
  v10 = &v38 - v9;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0760, &qword_25E217BA0);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v44 = &v38 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0768, &qword_25E217BA8);
  v42 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v41 = &v38 - v12;
  v46 = &v38;
  v13 = *v2;
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0770, &qword_25E217BB0);
  sub_25E20C35C(&qword_27FCE0778, &qword_27FCE0770, &qword_25E217BB0, MEMORY[0x277CE14C0]);
  sub_25E2171D4();
  if (v13 == 1)
  {
    v39 = *&v2[*(v4 + 36)];
    v14 = v39;
    sub_25E20C224(v2, v7, type metadata accessor for MetricTemplateView);
    v15 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v40 = v6;
    v16 = swift_allocObject();
    sub_25E20C28C(v7, v16 + v15, type metadata accessor for MetricTemplateView);
    *&v10[*(v8 + 52)] = v14;
    v17 = &v10[*(v8 + 56)];
    *v17 = sub_25E20C5A8;
    *(v17 + 1) = v16;
    sub_25E20C224(v2, v7, type metadata accessor for MetricTemplateView);
    v18 = swift_allocObject();
    sub_25E20C28C(v7, v18 + v15, type metadata accessor for MetricTemplateView);
    v19 = sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98, MEMORY[0x277CDDB50]);

    v20 = v44;
    sub_25E217284();

    sub_25E20C1A8(v10, &qword_27FCE0758, &qword_25E217B98);
    sub_25E20C224(v2, v7, type metadata accessor for MetricTemplateView);
    v21 = swift_allocObject();
    sub_25E20C28C(v7, v21 + v15, type metadata accessor for MetricTemplateView);
    v53 = v8;
    v54 = v19;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v23 = v41;
    v24 = v48;
    sub_25E217284();

    (*(v45 + 8))(v20, v24);
    v25 = v42;
    v26 = v47;
    (*(v42 + 16))(v50, v23, v47);
    swift_storeEnumTagMultiPayload();
    v53 = v24;
    v54 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_25E217174();
    return (*(v25 + 8))(v23, v26);
  }

  else
  {
    v28 = *&v2[*(v4 + 36)];
    sub_25E20C224(v2, v7, type metadata accessor for MetricTemplateView);
    v29 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v30 = swift_allocObject();
    sub_25E20C28C(v7, v30 + v29, type metadata accessor for MetricTemplateView);
    *&v10[*(v8 + 52)] = v28;
    v31 = &v10[*(v8 + 56)];
    *v31 = sub_25E20AD74;
    *(v31 + 1) = v30;
    sub_25E20C224(v2, v7, type metadata accessor for MetricTemplateView);
    v32 = swift_allocObject();
    sub_25E20C28C(v7, v32 + v29, type metadata accessor for MetricTemplateView);
    v33 = sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98, MEMORY[0x277CDDB50]);

    v34 = v44;
    sub_25E217284();

    sub_25E20C1A8(v10, &qword_27FCE0758, &qword_25E217B98);
    v35 = v45;
    v36 = v48;
    (*(v45 + 16))(v50, v34, v48);
    swift_storeEnumTagMultiPayload();
    v53 = v8;
    v54 = v33;
    v37 = swift_getOpaqueTypeConformance2();
    v53 = v36;
    v54 = v37;
    swift_getOpaqueTypeConformance2();
    sub_25E217174();
    return (*(v35 + 8))(v34, v36);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = (type metadata accessor for MetricTemplateView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[8];
  v6 = sub_25E216D04();
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25E20AED0()
{
  v2 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E20C598;

  return sub_25E20A464(v0 + v3);
}

uint64_t sub_25E20AF9C(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_25E20A2F0(a1, v4);
}

uint64_t sub_25E20B00C(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_25E216D04();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_25E217544();
  v1[10] = sub_25E217534();
  v4 = sub_25E217524();

  return MEMORY[0x2822009F8](sub_25E20B10C, v4, v3);
}

uint64_t sub_25E20B10C()
{
  v1 = v0[9];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  v6 = sub_25E216FE4();
  v7 = *(v5 + 16);
  v0[2] = *(v5 + 8);
  v0[3] = v7;
  v0[4] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE07F8, &qword_25E217DE8);
  sub_25E2173B4();
  sub_25E216CF4();
  type metadata accessor for MetricTemplateView(0);
  (*(v3 + 16))(v2, v1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0780, &qword_25E217BB8);
  sub_25E2173B4();
  (*(v3 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25E20B248()
{
  v2 = *(type metadata accessor for MetricTemplateView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25E20B314;

  return sub_25E20B00C(v0 + v3);
}

uint64_t sub_25E20B314()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_25E20B474(uint64_t a1)
{
  sub_25E20B56C(319);
  if (v1 <= 0x3F)
  {
    sub_25E20B5D0(319);
    if (v2 <= 0x3F)
    {
      sub_25E20B628(319);
      if (v3 <= 0x3F)
      {
        sub_25E20C544(319, &qword_27FCE07B8, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25E20B56C(uint64_t a1)
{
  if (!qword_27FCE07A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0730, &unk_25E217B80);
    v1 = sub_25E2173C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCE07A0);
    }
  }
}

void sub_25E20B5D0(uint64_t a1)
{
  if (!qword_27FCE07A8)
  {
    sub_25E216D04();
    v1 = sub_25E2173C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCE07A8);
    }
  }
}

void sub_25E20B628(uint64_t a1)
{
  if (!qword_27FCE07B0)
  {
    sub_25E217574();
    sub_25E20BEA8(&qword_27FCE0740, MEMORY[0x277CC9DF0], MEMORY[0x277CC9DE8]);
    v1 = sub_25E217134();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCE07B0);
    }
  }
}

unint64_t sub_25E20B6BC()
{
  result = qword_27FCE07C0;
  if (!qword_27FCE07C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE07C8, &qword_25E217C68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0760, &qword_25E217BA0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0758, &qword_25E217B98);
    sub_25E20C35C(&qword_27FCE0788, &qword_27FCE0758, &qword_25E217B98, MEMORY[0x277CDDB50]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE07C0);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E20B830(uint64_t a1, int a2)
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

uint64_t sub_25E20B850(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_25E20B8EC(uint64_t a1)
{
  result = sub_25E216D24();
  if (v2 <= 0x3F)
  {
    result = sub_25E216D04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_40Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E216D24();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_25E216D04();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_41Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25E216D24();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_25E216D04();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25E20BC10(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E20BC48(uint64_t a1)
{
  result = sub_25E216D24();
  if (v2 <= 0x3F)
  {
    result = sub_25E216D04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActionPoint.Action(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActionPoint.Action(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25E20BE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FCE07F0;
  if (!qword_27FCE07F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE07F0);
  }

  return result;
}

uint64_t sub_25E20BEA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25E20BF00()
{
  result = qword_27FCE0838;
  if (!qword_27FCE0838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0830, &qword_25E217E18);
    sub_25E20C35C(&qword_27FCE0840, &qword_27FCE0848, &qword_25E217E20, MEMORY[0x277CBB3F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0838);
  }

  return result;
}

unint64_t sub_25E20BFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FCE0878;
  if (!qword_27FCE0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0878);
  }

  return result;
}

uint64_t sub_25E20C024(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25E20C034(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25E20C044(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25E20C0A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0880, &qword_25E217E40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E20C110()
{
  result = qword_27FCE0900;
  if (!qword_27FCE0900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE08F8, &qword_25E217E98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0900);
  }

  return result;
}

uint64_t sub_25E20C1A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25E20C224(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E20C28C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25E20C2F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25E20C35C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E20C3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25E20C448()
{
  result = qword_27FCE0990;
  if (!qword_27FCE0990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0988, &qword_25E217F08);
    sub_25E216E54();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0990);
  }

  return result;
}

void sub_25E20C544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t ContactImage.avatarLuminance.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t ContactImage.avatarSaturation.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

int64x2_t ContactImage.init(contactImageData:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = 1;
  v24 = 1;
  v6 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_25E20CB2C(a1, a2);
  sub_25E20CB2C(a1, a2);
  v7 = sub_25E216CC4();
  v8 = [v6 initWithData_];

  sub_25E20CB80(a1, a2);
  if (v8)
  {
    v9 = sub_25E217364();
    sub_25E20CB80(a1, a2);
  }

  else
  {
    sub_25E20CB80(a1, a2);
    v9 = 0;
  }

  v10 = objc_allocWithZone(MEMORY[0x277D755B8]);
  sub_25E20CB2C(a1, a2);
  v11 = sub_25E216CC4();
  v12 = [v10 initWithData_];

  v13 = sub_25E20CB80(a1, a2);
  if (v12)
  {
    v14 = MEMORY[0x25F8AF630](v13);
    v26.origin.x = 0.3;
    v26.origin.y = 0.9;
    v26.size.width = 0.4;
    v26.size.height = 0.05;
    isa = UIImage.crop(relativeTo:)(v26).super.isa;
    v16 = UIImage.resize(to:)(__PAIR128__(0x4059000000000000, 0x4059000000000000)).super.isa;
    [(objc_class *)v16 _calculateStatistics];
    v17 = v23;

    v18 = vmulq_f64(v22, xmmword_25E217F60);
    v19 = v21 * 0.2126 + v18.f64[0] + v18.f64[1];
    v25 = 0;
    v24 = 0;
    objc_autoreleasePoolPop(v14);
  }

  else
  {
    v17 = 0;
    v19 = 0.0;
  }

  sub_25E20CB80(a1, a2);
  *a3 = v9;
  *(a3 + 8) = v19;
  *(a3 + 16) = v25;
  *(a3 + 24) = v17;
  *(a3 + 32) = v24;
  *(a3 + 40) = xmmword_25E217F70;
  *(a3 + 56) = xmmword_25E217F80;
  result = vdupq_n_s64(0x4059000000000000uLL);
  *(a3 + 72) = result;
  return result;
}

void *_s6People22ContactFetcherProtocolP0A2UIE03getB9ImageData3for4size6locale10Foundation0H0VSgSo9CNContactCSg_So6CGSizeVAD06LocaleD0_ptF_0(void *result, void *a2, double a3, double a4)
{
  if (result)
  {
    v7 = result;
    v8 = objc_allocWithZone(MEMORY[0x277CBDBD0]);
    v9 = v7;
    v10 = [v8 init];
    v11 = a2[3];
    v12 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v11);
    v13 = (*(v12 + 8))(v11, v12);
    v15 = v14;
    sub_25E20CD10(a2, v31);
    if (v15)
    {
      v16 = v32;
      v17 = v33;
      __swift_project_boxed_opaque_existential_1(v31, v32);
      v18 = (*(v17 + 16))(v13, v15, v16, v17);

      __swift_destroy_boxed_opaque_existential_1(v31);
      v19 = v18 == 2;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v31);
      v19 = 0;
    }

    v20 = objc_opt_self();
    v21 = [objc_opt_self() mainScreen];
    [v21 scale];
    v23 = v22;

    v24 = [v20 scopeWithPointSize:v19 scale:0 rightToLeft:0 style:a3 backgroundStyle:{a4, v23}];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE09B0, &qword_25E217FE0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_25E217F90;
    *(v25 + 32) = v9;
    sub_25E20CDC0();
    v26 = v9;
    v27 = sub_25E217514();

    v28 = [v10 avatarImageForContacts:v27 scope:v24];

    v29 = UIImagePNGRepresentation(v28);
    if (v29)
    {
      v30 = sub_25E216CD4();

      swift_unknownObjectRelease();
      return v30;
    }

    else
    {

      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25E20CB2C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_25E20CB80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_25E20CBF8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 88))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25E20CC54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_25E20CD10(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

unint64_t sub_25E20CDC0()
{
  result = qword_27FCE09B8;
  if (!qword_27FCE09B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE09B8);
  }

  return result;
}

uint64_t sub_25E20CF70()
{
  result = _s6People24AvailabilityPersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE09E0 = result;
  return result;
}

uint64_t sub_25E20CFB4(uint64_t a1)
{
  result = _s6People19MessagePersonStatusV0A2UIE14iconForeground05SwiftE05ColorVvg_0();
  qword_27FCE09E8 = result;
  return result;
}

uint64_t sub_25E20D03C()
{
  result = sub_25E217324();
  qword_27FCE09F8 = result;
  return result;
}

uint64_t sub_25E20D21C()
{
  result = _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE0A30 = result;
  return result;
}

uint64_t sub_25E20D260()
{
  result = _s6People24AvailabilityPersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  qword_27FCE0A38 = result;
  return result;
}

uint64_t sub_25E20D474(double a1, double a2, double a3, uint64_t a4, uint64_t *a5)
{
  v6 = sub_25E2172A4();
  MEMORY[0x28223BE20](v6);
  (*(v8 + 104))(&v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_25E217354();
  *a5 = result;
  return result;
}

uint64_t sub_25E20D58C(void *a1, uint64_t *a2)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25E20D5FC()
{
  v0 = sub_25E217414();
  __swift_allocate_value_buffer(v0, qword_27FCE0A78);
  __swift_project_value_buffer(v0, qword_27FCE0A78);
  return sub_25E217404();
}

uint64_t static PeopleWidgetConstants.minimumTimelineRelevance.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FCE0718 != -1)
  {
    swift_once();
  }

  v2 = sub_25E217414();
  v3 = __swift_project_value_buffer(v2, qword_27FCE0A78);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25E20D740()
{
  sub_25E216EA4();
  v0 = sub_25E216E94();
  static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)(MEMORY[0x277D84F90], v0, qword_27FCE0A90);
}

uint64_t static PeopleWidgetConstants.defaultStatusForDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_281560FB8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_25E20D80C(qword_27FCE0A90, v2);
}

uint64_t getEnumTagSinglePayload for PeopleWidgetConstants(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PeopleWidgetConstants(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double ContactFetcherProtocol.contactImage(for:locale:)@<D0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = _s6People22ContactFetcherProtocolP0A2UIE03getB9ImageData3for4size6locale10Foundation0H0VSgSo9CNContactCSg_So6CGSizeVAD06LocaleD0_ptF_0(a1, a2, 86.0, 86.0);
  if (v5 >> 60 == 15)
  {
    *a3 = 1;
    result = 0.0;
    *(a3 + 8) = 0u;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0u;
    *(a3 + 72) = 0u;
  }

  else
  {
    ContactImage.init(contactImageData:)(v4, v5, v9);
    v7 = v9[3];
    *(a3 + 32) = v9[2];
    *(a3 + 48) = v7;
    *(a3 + 64) = v9[4];
    *(a3 + 80) = v10;
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    *(a3 + 16) = v8;
  }

  return result;
}

NSLocaleLanguageDirection __swiftcall Locale.characterDirection(forLanguage:)(Swift::String forLanguage)
{
  v1 = sub_25E216D64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25E216D44();
  v5 = sub_25E216D54();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_25E20DB44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25E216D64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_25E216D44();
  v6 = sub_25E216D54();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t PersonInfo.person.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25E217124();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PersonInfo.contactImage.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for PersonInfo(0) + 20));
  v4 = v3[2];
  v6 = v3[4];
  v15 = v3[3];
  v5 = v15;
  v16 = v6;
  v17 = *(v3 + 10);
  v7 = v17;
  v9 = *v3;
  v13 = v3[1];
  v8 = v13;
  v14 = v4;
  v12 = v9;
  *(a1 + 32) = v4;
  *(a1 + 48) = v5;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *a1 = v9;
  *(a1 + 16) = v8;
  return sub_25E20C2F4(&v12, v11, &qword_27FCE0AE8, &qword_25E218128);
}

uint64_t type metadata accessor for PersonInfo(uint64_t a1)
{
  result = qword_281561020;
  if (!qword_281561020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PersonInfo.statusForDisplay.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PersonInfo(0) + 24);

  return sub_25E20D80C(v3, a1);
}

uint64_t PersonInfo.init(person:contactImage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E217124();
  v15 = *(v6 - 8);
  (*(v15 + 16))(a3, a1, v6);
  v7 = type metadata accessor for PersonInfo(0);
  v8 = a3 + *(v7 + 20);
  v9 = *(a2 + 48);
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = v9;
  *(v8 + 64) = *(a2 + 64);
  *(v8 + 80) = *(a2 + 80);
  v10 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v10;
  v11 = sub_25E217114();
  sub_25E216EA4();
  v12 = sub_25E216E94();
  static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)(v11, v12, a3 + *(v7 + 24));

  v13 = *(v15 + 8);

  return v13(a1, v6);
}

uint64_t PersonInfo.textForLabel.getter()
{
  v17 = sub_25E2170E4();
  v18 = v1;
  v2 = type metadata accessor for PersonInfo(0);
  sub_25E20C2F4(v0 + *(v2 + 24) + 40, v15, &qword_27FCE0AF0, &qword_25E218130);
  if (v16)
  {
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v19 = sub_25E216F44();
    v20 = v3;
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    sub_25E20C1A8(v15, &qword_27FCE0AF0, &qword_25E218130);
    v19 = 0;
    v20 = 0;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v6 = &v18 + 2 * v4;
  while (++v4 != 3)
  {
    v7 = v6 + 2;
    v8 = *v6;
    v6 += 2;
    if (v8)
    {
      v9 = *(v7 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_25E20E70C(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_25E20E70C((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      v12 = &v5[16 * v11];
      *(v12 + 4) = v9;
      *(v12 + 5) = v8;
      goto LABEL_5;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0AF8, &qword_25E218138);
  swift_arrayDestroy();
  v15[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B00, &qword_25E2182B0);
  sub_25E20E818();
  v13 = sub_25E217434();

  return v13;
}

uint64_t static PersonInfo.urlForPerson(personInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25E217124();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B10, &qword_25E218140);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B18, &qword_25E218148);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  sub_25E20C2F4(a1, v10, &qword_27FCE0B10, &qword_25E218140);
  v17 = type metadata accessor for PersonInfo(0);
  if ((*(*(v17 - 8) + 48))(v10, 1, v17) == 1)
  {
    sub_25E20C1A8(v10, &qword_27FCE0B10, &qword_25E218140);
    v18 = sub_25E216CB4();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_25E20E87C(v10);
    sub_25E2170F4();
    (*(v5 + 8))(v7, v4);
    v18 = sub_25E216CB4();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v16, 1, v18) != 1)
    {
      return (*(v19 + 32))(a2, v16, v18);
    }
  }

  sub_25E217104();
  sub_25E216CB4();
  v20 = *(v18 - 8);
  v21 = *(v20 + 48);
  result = v21(v14, 1, v18);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(a2, v14, v18);
    result = v21(v16, 1, v18);
    if (result != 1)
    {
      return sub_25E20C1A8(v16, &qword_27FCE0B18, &qword_25E218148);
    }
  }

  return result;
}

void *sub_25E20E50C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25E20E70C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25E20E818()
{
  result = qword_27FCE0B08;
  if (!qword_27FCE0B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0B00, &qword_25E2182B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0B08);
  }

  return result;
}

uint64_t sub_25E20E87C(uint64_t a1)
{
  v2 = type metadata accessor for PersonInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25E20E928(uint64_t a1)
{
  sub_25E217124();
  if (v1 <= 0x3F)
  {
    sub_25E20E9B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25E20E9B4()
{
  if (!qword_281560F80)
  {
    v0 = sub_25E2175A4();
    if (!v1)
    {
      atomic_store(v0, &qword_281560F80);
    }
  }
}

void *sub_25E20EA2C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t static StatusCompatiblePicker.statusForDisplay(from:featureFlags:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_25E216F34();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E20F1A8(a1, a2, v53);
  sub_25E20C2F4(v53, &v47, &qword_27FCE0B50, &unk_25E2181C0);
  if (v48)
  {
    sub_25E203DA4(&v47, v50);
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_25E216F64();
    v10 = v51;
    v11 = v52;
    v12 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v48 = v10;
    v49 = *(v11 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v12, v10);
    sub_25E203DA4(&v47, v44);
    v14 = MEMORY[0x277D84F98];
    LOBYTE(v12) = swift_isUniquelyReferenced_nonNull_native();
    v43 = v14;
    v15 = v45;
    v16 = v46;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    MEMORY[0x28223BE20](v17);
    v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v19);
    sub_25E211C70(v19, v9, v12, &v43, v15, v16);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v21 = v43;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_25E20C1A8(&v47, &qword_27FCE0B50, &unk_25E2181C0);
    v21 = MEMORY[0x277D84F98];
  }

  sub_25E20C2F4(v54 + 8, &v47, &qword_27FCE0AF0, &qword_25E218130);
  if (v48)
  {
    sub_25E203DA4(&v47, v50);
    __swift_project_boxed_opaque_existential_1(v50, v51);
    sub_25E216F64();
    v22 = v51;
    v23 = v52;
    v24 = __swift_project_boxed_opaque_existential_1(v50, v51);
    v48 = v22;
    v49 = *(v23 + 8);
    v25 = __swift_allocate_boxed_opaque_existential_1(&v47);
    (*(*(v22 - 8) + 16))(v25, v24, v22);
    sub_25E203DA4(&v47, v44);
    LOBYTE(v22) = swift_isUniquelyReferenced_nonNull_native();
    v43 = v21;
    v26 = v45;
    v27 = v46;
    v28 = __swift_mutable_project_boxed_opaque_existential_1(v44, v45);
    MEMORY[0x28223BE20](v28);
    v30 = &v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v31 + 16))(v30);
    sub_25E211C70(v30, v9, v22, &v43, v26, v27);
    (*(v7 + 8))(v9, v6);
    __swift_destroy_boxed_opaque_existential_1(v44);
    v21 = v43;
    __swift_destroy_boxed_opaque_existential_1(v50);
  }

  else
  {
    sub_25E20C1A8(&v47, &qword_27FCE0AF0, &qword_25E218130);
  }

  v32 = 1 << *(v21 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v21 + 64);
  v35 = (v32 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v34; result = __swift_destroy_boxed_opaque_existential_1(v50))
  {
    v38 = i;
LABEL_15:
    v39 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    sub_25E20CD10(*(v21 + 56) + 40 * (v39 | (v38 << 6)), v50);
    sub_25E216EF4();
    sub_25E216EE4();
  }

  while (1)
  {
    v38 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v38 >= v35)
    {

      v40 = v54[1];
      *(a3 + 32) = v54[0];
      *(a3 + 48) = v40;
      *(a3 + 64) = v54[2];
      *(a3 + 80) = v55;
      v41 = v53[1];
      *a3 = v53[0];
      *(a3 + 16) = v41;
    }

    v34 = *(v21 + 64 + 8 * v38);
    ++i;
    if (v34)
    {
      i = v38;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

__n128 PersonStatusSet.init(badge:text:additionalBadges:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v4;
  result = *a2;
  v6 = *(a2 + 16);
  *(a4 + 40) = *a2;
  *(a4 + 32) = *(a1 + 32);
  *(a4 + 56) = v6;
  *(a4 + 72) = *(a2 + 32);
  *(a4 + 80) = a3;
  return result;
}

uint64_t sub_25E20F1A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v110 = sub_25E216F34();
  v6 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25E216DE4();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = &v93 - v13;
  v104 = sub_25E216EB4();
  v106 = *(v104 - 8);
  result = MEMORY[0x28223BE20](v104);
  v105 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = *(a1 + 16);
  if (!v102)
  {
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 80) = MEMORY[0x277D84F90];
    return result;
  }

  v103 = a2;
  v95 = v6;
  v98 = v9;
  v99 = v8;
  v101 = a3;
  v97 = a1 + 32;
  sub_25E20CD10(a1 + 32, v130);
  v16 = &v127;
  v17 = sub_25E20CD10(v130, v128);
  MEMORY[0x28223BE20](v17);
  *(&v93 - 2) = v130;
  sub_25E210224(sub_25E212138, a1, v129);
  v96 = 0;
  sub_25E20C2F4(v128, &v124, &qword_27FCE0B70, &unk_25E218290);
  v118 = v124;
  v119 = v125;
  v120 = v126;
  if (*(&v125 + 1))
  {
    sub_25E203DA4(&v118, &v121);
    v18 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_65:
      v18 = sub_25E20E6E8(0, v18[2] + 1, 1, v18);
    }

    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_25E20E6E8((v19 > 1), v20 + 1, 1, v18);
    }

    v18[2] = v20 + 1;
    sub_25E203DA4(&v121, &v18[5 * v20 + 4]);
  }

  else
  {
    sub_25E20C1A8(&v118, &qword_27FCE0B70, &unk_25E218290);
    v18 = MEMORY[0x277D84F90];
  }

  sub_25E20C2F4((v16 + 72), &v124, &qword_27FCE0B70, &unk_25E218290);
  v118 = v124;
  v119 = v125;
  v120 = v126;
  v94 = v12;
  if (*(&v125 + 1))
  {
    sub_25E203DA4(&v118, &v121);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_25E20E6E8(0, v18[2] + 1, 1, v18);
    }

    v22 = v18[2];
    v21 = v18[3];
    if (v22 >= v21 >> 1)
    {
      v18 = sub_25E20E6E8((v21 > 1), v22 + 1, 1, v18);
    }

    v18[2] = v22 + 1;
    sub_25E203DA4(&v121, &v18[5 * v22 + 4]);
  }

  else
  {
    sub_25E20C1A8(&v118, &qword_27FCE0B70, &unk_25E218290);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B70, &unk_25E218290);
  swift_arrayDestroy();
  v23 = v18[2];
  v111 = v18;
  v112 = v23;
  if (!v23)
  {
LABEL_25:
    v124 = 0u;
    v125 = 0u;
    v126 = 0;
    v40 = v104;
    v41 = v106;
    goto LABEL_26;
  }

  v12 = 0;
  v24 = &qword_27FCE0B28;
  v25 = &qword_25E2181A0;
  v26 = &qword_27FCE0B38;
  v27 = &qword_25E2182A0;
  v28 = (v18 + 4);
  while (1)
  {
    if (v12 >= v18[2])
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    sub_25E20CD10(v28, &v124);
    sub_25E20CD10(&v124, &v115);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
    if (swift_dynamicCast())
    {
      break;
    }

    v120 = 0;
    v118 = 0u;
    v119 = 0u;
    sub_25E20C1A8(&v118, &qword_27FCE0B50, &unk_25E2181C0);
LABEL_19:
    ++v12;
    __swift_destroy_boxed_opaque_existential_1(&v124);
    v28 += 40;
    if (v112 == v12)
    {
      goto LABEL_25;
    }
  }

  v107 = v16;
  v108 = v29;
  v16 = v27;
  v30 = v26;
  v31 = v25;
  v32 = v24;
  v33 = *(&v119 + 1);
  v34 = v120;
  __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
  v35 = *(v34 + 48);
  v36 = v33;
  v37 = v34;
  v24 = v32;
  v25 = v31;
  v26 = v30;
  v27 = v16;
  v18 = v111;
  v38 = v35(v36, v37);
  __swift_destroy_boxed_opaque_existential_1(&v118);
  if (!v38)
  {
    goto LABEL_19;
  }

  sub_25E203DA4(&v124, &v121);
  v39 = swift_dynamicCast();
  v40 = v104;
  v41 = v106;
  if ((v39 & 1) == 0)
  {
    v126 = 0;
    v124 = 0u;
    v125 = 0u;
  }

LABEL_26:
  sub_25E20C2F4(&v124, &v118, &qword_27FCE0B50, &unk_25E2181C0);
  v42 = MEMORY[0x277D39EA8];
  if (*(&v119 + 1))
  {
    sub_25E203DA4(&v118, &v121);
    v43 = *v42;
    v44 = v105;
    v108 = *(v41 + 104);
    v108(v105, v43, v40);
    v45 = sub_25E217084();
    (*(v41 + 8))(v44, v40);
    if ((v45 & 1) == 0)
    {
      goto LABEL_30;
    }

    v46 = v100;
    sub_25E216EC4();
    sub_25E20CD10(&v121, &v118);
    v47 = sub_25E216DD4();
    v48 = sub_25E217554();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      *&v115 = v107;
      *v49 = 136315138;
      v93 = v47;
      __swift_project_boxed_opaque_existential_1(&v118, *(&v119 + 1));
      v50 = v109;
      sub_25E216F64();
      sub_25E212158(&qword_27FCE0B80, MEMORY[0x277D39EF8]);
      v51 = v110;
      v52 = sub_25E217624();
      v54 = v53;
      v55 = v51;
      v40 = v104;
      (*(v95 + 8))(v50, v55);
      __swift_destroy_boxed_opaque_existential_1(&v118);
      v56 = sub_25E21093C(v52, v54, &v115);

      *(v49 + 4) = v56;
      v57 = v93;
      _os_log_impl(&dword_25E202000, v93, v48, "Primary badge: %s", v49, 0xCu);
      v58 = v107;
      __swift_destroy_boxed_opaque_existential_1(v107);
      MEMORY[0x25F8AF9A0](v58, -1, -1);
      MEMORY[0x25F8AF9A0](v49, -1, -1);

      (*(v98 + 8))(v46, v99);
LABEL_30:
      v59 = &v121;
    }

    else
    {

      (*(v98 + 8))(v46, v99);
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v59 = &v118;
    }

    __swift_destroy_boxed_opaque_existential_1(v59);
    v60 = v108;
  }

  else
  {
    sub_25E20C1A8(&v118, &qword_27FCE0B50, &unk_25E2181C0);
    v43 = *v42;
    v60 = *(v41 + 104);
  }

  v61 = MEMORY[0x277D84F90];
  v114 = MEMORY[0x277D84F90];
  v12 = v105;
  v60(v105, v43, v40);
  v62 = sub_25E217084();
  (*(v106 + 8))(v12, v40);
  v18 = v61;
  v63 = v111;
  if (v62)
  {
    v64 = 0;
    v65 = v102;
    v66 = v97;
    do
    {
      v16 = (v64 + 1);
      if (__OFADD__(v64, 1))
      {
        __break(1u);
        goto LABEL_63;
      }

      sub_25E2102DC(v66, &v124, &v114);
      ++v64;
      v66 += 40;
    }

    while (v16 != v65);
    v18 = v114;
    v67 = v114[2];
    if (v67)
    {
      *&v118 = MEMORY[0x277D84F90];
      sub_25E210FB0(0, v67, 0);
      v68 = v118;
      v108 = v18;
      v69 = (v18 + 4);
      v70 = (v95 + 8);
      do
      {
        sub_25E20CD10(v69, &v121);
        __swift_project_boxed_opaque_existential_1(&v121, *(&v122 + 1));
        v71 = v109;
        sub_25E216F64();
        sub_25E212158(&qword_27FCE0B80, MEMORY[0x277D39EF8]);
        v72 = v110;
        v73 = sub_25E217624();
        v75 = v74;
        (*v70)(v71, v72);
        __swift_destroy_boxed_opaque_existential_1(&v121);
        *&v118 = v68;
        v77 = *(v68 + 16);
        v76 = *(v68 + 24);
        if (v77 >= v76 >> 1)
        {
          sub_25E210FB0((v76 > 1), v77 + 1, 1);
          v68 = v118;
        }

        *(v68 + 16) = v77 + 1;
        v78 = v68 + 16 * v77;
        *(v78 + 32) = v73;
        *(v78 + 40) = v75;
        v69 += 40;
        --v67;
      }

      while (v67);
      *&v121 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B00, &qword_25E2182B0);
      sub_25E20E818();
      v79 = sub_25E217434();
      v81 = v80;

      v82 = v94;
      sub_25E216EC4();

      v83 = sub_25E216DD4();
      v84 = sub_25E217554();

      v85 = os_log_type_enabled(v83, v84);
      v63 = v111;
      if (v85)
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        *&v121 = v87;
        *v86 = 136315138;
        v88 = sub_25E21093C(v79, v81, &v121);

        *(v86 + 4) = v88;
        _os_log_impl(&dword_25E202000, v83, v84, "Other badges: %s", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v87);
        MEMORY[0x25F8AF9A0](v87, -1, -1);
        MEMORY[0x25F8AF9A0](v86, -1, -1);
      }

      else
      {
      }

      (*(v98 + 8))(v82, v99);
      v18 = v108;
    }
  }

  if (v112)
  {
    v108 = v18;
    v16 = 0;
    v18 = &qword_27FCE0B78;
    v12 = (v63 + 4);
    while (v16 < v63[2])
    {
      sub_25E20CD10(v12, &v121);
      sub_25E20CD10(&v121, &v113);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B28, &qword_25E2181A0);
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B78, &qword_25E2182A8);
      if (swift_dynamicCast())
      {
        v110 = v89;
        __swift_project_boxed_opaque_existential_1(&v115, *(&v116 + 1));
        sub_25E216F44();
        __swift_destroy_boxed_opaque_existential_1(&v115);
      }

      else
      {
        v117 = 0;
        v115 = 0u;
        v116 = 0u;
        sub_25E20C1A8(&v115, &qword_27FCE0AF0, &qword_25E218130);
      }

      sub_25E2174B4();
      v91 = v90;

      if (v91)
      {

        sub_25E203DA4(&v121, &v118);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v123 = 0;
          v121 = 0u;
          v122 = 0u;
        }

        v92 = v101;
        v18 = v108;
        goto LABEL_61;
      }

      ++v16;
      __swift_destroy_boxed_opaque_existential_1(&v121);
      v12 += 40;
      v63 = v111;
      if (v112 == v16)
      {

        v18 = v108;
        goto LABEL_57;
      }
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

LABEL_57:
  v121 = 0u;
  v122 = 0u;
  v123 = 0;
  v92 = v101;
LABEL_61:
  sub_25E20C2F4(&v124, v92, &qword_27FCE0B50, &unk_25E2181C0);
  sub_25E20C2F4(&v121, v92 + 40, &qword_27FCE0AF0, &qword_25E218130);
  *(v92 + 80) = v18;
  sub_25E20C1A8(&v121, &qword_27FCE0AF0, &qword_25E218130);
  sub_25E20C1A8(&v124, &qword_27FCE0B50, &unk_25E2181C0);
  return __swift_destroy_boxed_opaque_existential_1(v130);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25E20FFE8(void *a1, void *a2)
{
  v4 = sub_25E216F34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v8 = sub_25E216F54();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25E216F64();
  LOBYTE(a2) = sub_25E21012C(v7, v8);

  (*(v5 + 8))(v7, v4);
  return a2 & 1;
}

BOOL sub_25E21012C(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_25E216F34();
    ++v2;
    sub_25E212158(&qword_27FCE0B68, MEMORY[0x277D39EF0]);
  }

  while ((sub_25E217444() & 1) == 0);
  return v3 != v4;
}

uint64_t (*sub_25E210224@<X0>(uint64_t (*result)(__int128 *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>))(__int128 *)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_25E20CD10(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_1(v9);
      }

      if (v8)
      {
        return sub_25E203DA4(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_1(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_25E2102DC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v41 = a2;
  v6 = sub_25E216F34();
  v49 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B90, &qword_25E2182C8);
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B98, &unk_25E2182D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v40 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  sub_25E20CD10(a1, &v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B28, &qword_25E2181A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B38, &qword_25E2182A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v43 = 0;
    memset(v42, 0, sizeof(v42));
    return sub_25E20C1A8(v42, &qword_27FCE0B50, &unk_25E2181C0);
  }

  v37 = v8;
  v39 = a3;
  sub_25E203DA4(v42, v46);
  v20 = v47;
  v21 = v48;
  __swift_project_boxed_opaque_existential_1(v46, v47);
  if ((*(v21 + 48))(v20, v21))
  {
    v38 = v3;

    __swift_project_boxed_opaque_existential_1(v46, v47);
    sub_25E216F64();
    v22 = *(v49 + 56);
    v22(v19, 0, 1, v6);
    sub_25E20C2F4(v41, &v44, &qword_27FCE0B50, &unk_25E2181C0);
    if (v45)
    {
      __swift_project_boxed_opaque_existential_1(&v44, v45);
      sub_25E216F64();
      v22(v17, 0, 1, v6);
      __swift_destroy_boxed_opaque_existential_1(&v44);
    }

    else
    {
      sub_25E20C1A8(&v44, &qword_27FCE0B50, &unk_25E2181C0);
      v22(v17, 1, 1, v6);
    }

    v24 = *(v9 + 48);
    sub_25E20C2F4(v19, v11, &qword_27FCE0B98, &unk_25E2182D0);
    sub_25E20C2F4(v17, &v11[v24], &qword_27FCE0B98, &unk_25E2182D0);
    v25 = *(v49 + 48);
    if (v25(v11, 1, v6) == 1)
    {
      sub_25E20C1A8(v17, &qword_27FCE0B98, &unk_25E2182D0);
      sub_25E20C1A8(v19, &qword_27FCE0B98, &unk_25E2182D0);
      if (v25(&v11[v24], 1, v6) == 1)
      {
        sub_25E20C1A8(v11, &qword_27FCE0B98, &unk_25E2182D0);
        return __swift_destroy_boxed_opaque_existential_1(v46);
      }
    }

    else
    {
      v26 = v40;
      sub_25E20C2F4(v11, v40, &qword_27FCE0B98, &unk_25E2182D0);
      if (v25(&v11[v24], 1, v6) != 1)
      {
        v32 = v49;
        v33 = &v11[v24];
        v34 = v37;
        (*(v49 + 32))(v37, v33, v6);
        sub_25E212158(&qword_27FCE0B68, MEMORY[0x277D39EF0]);
        LODWORD(v41) = sub_25E217444();
        v35 = *(v32 + 8);
        v35(v34, v6);
        sub_25E20C1A8(v17, &qword_27FCE0B98, &unk_25E2182D0);
        sub_25E20C1A8(v19, &qword_27FCE0B98, &unk_25E2182D0);
        v35(v26, v6);
        sub_25E20C1A8(v11, &qword_27FCE0B98, &unk_25E2182D0);
        v27 = v39;
        if (v41)
        {
          return __swift_destroy_boxed_opaque_existential_1(v46);
        }

LABEL_13:
        v28 = *v27;
        if (*(*v27 + 16) <= 1uLL)
        {
          sub_25E20CD10(v46, &v44);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v27 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v28 = sub_25E20EA08(0, v28[2] + 1, 1, v28);
            *v27 = v28;
          }

          v31 = v28[2];
          v30 = v28[3];
          if (v31 >= v30 >> 1)
          {
            v28 = sub_25E20EA08((v30 > 1), v31 + 1, 1, v28);
            *v27 = v28;
          }

          v28[2] = v31 + 1;
          sub_25E203DA4(&v44, &v28[5 * v31 + 4]);
        }

        return __swift_destroy_boxed_opaque_existential_1(v46);
      }

      sub_25E20C1A8(v17, &qword_27FCE0B98, &unk_25E2182D0);
      sub_25E20C1A8(v19, &qword_27FCE0B98, &unk_25E2182D0);
      (*(v49 + 8))(v26, v6);
    }

    sub_25E20C1A8(v11, &qword_27FCE0B90, &qword_25E2182C8);
    v27 = v39;
    goto LABEL_13;
  }

  return __swift_destroy_boxed_opaque_existential_1(v46);
}

unint64_t sub_25E21093C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25E210A08(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_25E20C044(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25E210A08(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25E210B14(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25E2175E4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25E210B14(uint64_t a1, unint64_t a2)
{
  v3 = sub_25E210B60(a1, a2);
  sub_25E210C90(&unk_286FEDE98);
  return v3;
}

void *sub_25E210B60(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25E210D7C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_25E2175E4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_25E2174D4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25E210D7C(v10, 0);
        result = sub_25E2175C4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_25E210C90(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_25E210DF0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_25E210D7C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B88, &qword_25E2182B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25E210DF0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B88, &qword_25E2182B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_25E210EE4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0B48, &qword_25E2181B0, type metadata accessor for ActionPoint);
  *v3 = result;
  return result;
}

void *sub_25E210F28(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0B40, &qword_25E2182E0, type metadata accessor for SignalPoint);
  *v3 = result;
  return result;
}

void *sub_25E210F6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E210FD0(a1, a2, a3, *v3, &qword_27FCE0918, &qword_25E217EB0, MEMORY[0x277CC9578]);
  *v3 = result;
  return result;
}

char *sub_25E210FB0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25E2111AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25E210FD0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_25E2111AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0748, &qword_25E2182C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_25E2112B8(uint64_t a1, uint64_t a2)
{
  sub_25E217654();
  sub_25E217484();
  v4 = sub_25E217674();

  return sub_25E2113B4(a1, a2, v4);
}

unint64_t sub_25E211330(uint64_t a1)
{
  sub_25E216F34();
  sub_25E212158(&qword_27FCE0B60, MEMORY[0x277D39EE8]);
  v2 = sub_25E217424();

  return sub_25E21146C(a1, v2);
}

unint64_t sub_25E2113B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25E217634())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E21146C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_25E216F34();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_25E212158(&qword_27FCE0B68, MEMORY[0x277D39EF0]);
      v15 = sub_25E217444();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_25E211618(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25E216F34();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B58, &qword_25E218288);
  v38 = v4;
  result = sub_25E217604();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_25E203DA4((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_25E20CD10(*(v9 + 56) + 40 * v23, v43);
      }

      sub_25E212158(&qword_27FCE0B60, MEMORY[0x277D39EE8]);
      result = sub_25E217424();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_25E203DA4(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

void *sub_25E2119E8()
{
  v1 = v0;
  v29 = sub_25E216F34();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0B58, &qword_25E218288);
  v3 = *v0;
  v4 = sub_25E2175F4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_25E20CD10(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_25E203DA4(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_25E211C70(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_25E216F34();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a5;
  v37 = a6;
  v34 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a1, a5);
  v17 = *a4;
  v19 = sub_25E211330(a2);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a3 & 1) != 0)
  {
LABEL_7:
    v25 = *a4;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      __swift_destroy_boxed_opaque_existential_1(v26);
      return sub_25E203DA4(&v35, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a3 & 1) == 0)
  {
    sub_25E2119E8();
    goto LABEL_7;
  }

  sub_25E211618(v22, a3 & 1);
  v28 = sub_25E211330(a2);
  if ((v23 & 1) != (v29 & 1))
  {
LABEL_14:
    result = sub_25E217644();
    __break(1u);
    return result;
  }

  v19 = v28;
  v25 = *a4;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v15, a2, v12);
  v30 = __swift_mutable_project_boxed_opaque_existential_1(&v35, v36);
  MEMORY[0x28223BE20](v30);
  v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v33 + 16))(v32);
  sub_25E21202C(v19, v15, v32, v25, a5, v34);
  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_25E211F70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25E211FB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E21202C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_25E216F34();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_25E203DA4(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_25E212158(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25E216F34();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

UIImage __swiftcall UIImage.crop(relativeTo:)(__C::CGRect relativeTo)
{
  height = relativeTo.size.height;
  width = relativeTo.size.width;
  y = relativeTo.origin.y;
  x = relativeTo.origin.x;
  [v1 size];
  v7 = v6;
  v9 = v8;
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  v10 = CGRectGetWidth(v23);
  v24.origin.x = x;
  v24.origin.y = y;
  v24.size.width = width;
  v24.size.height = height;
  v11 = CGRectGetHeight(v24);
  CGAffineTransformMakeScale(&v21, v10, v11);
  v22.width = v7;
  v22.height = v9;
  v12 = CGSizeApplyAffineTransform(v22, &v21);
  sub_25E212678();
  v13 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v1 scale];
  [v13 setScale_];
  v14 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v13 format:{v12.width, v12.height}];

  v15 = swift_allocObject();
  v15[2] = x;
  v15[3] = y;
  v15[4] = width;
  v15[5] = height;
  *(v15 + 6) = v1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_25E21275C;
  *(v16 + 24) = v15;
  *&v21.tx = sub_25E21276C;
  *&v21.ty = v16;
  *&v21.a = MEMORY[0x277D85DD0];
  *&v21.b = 1107296256;
  *&v21.c = sub_25E212794;
  *&v21.d = &block_descriptor;
  v17 = _Block_copy(&v21);
  v18 = v1;

  v19 = [v14 imageWithActions_];

  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if ((v14 & 1) == 0)
  {
    return v19;
  }

  __break(1u);
  return result;
}

UIImage __swiftcall UIImage.resize(to:)(CGSize to)
{
  height = to.height;
  width = to.width;
  sub_25E212678();
  v4 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v1 scale];
  [v4 setScale_];
  v5 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v4 format:{width, height}];

  v6 = swift_allocObject();
  *(v6 + 2) = v1;
  v6[3] = width;
  v6[4] = height;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_25E2127F8;
  *(v7 + 24) = v6;
  v12[4] = sub_25E21281C;
  v12[5] = v7;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25E212794;
  v12[3] = &block_descriptor_13;
  v8 = _Block_copy(v12);
  v9 = v1;

  v10 = [v5 imageWithActions_];

  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return v10;
  }

  __break(1u);
  return result;
}

UIGraphicsImageRendererFormat __swiftcall UIImage.renderingFormat()()
{
  sub_25E212678();
  v1 = [swift_getObjCClassFromMetadata() defaultFormat];
  [v0 scale];
  [v1 setScale_];
  return v1;
}

unint64_t sub_25E212678()
{
  result = qword_27FCE0BA0;
  if (!qword_27FCE0BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCE0BA0);
  }

  return result;
}

id sub_25E2126C4(int a1, id a2, double a3, double a4)
{
  [a2 size];
  v8 = -(v7 * a3);
  [a2 size];
  CGAffineTransformMakeTranslation(&v12, v8, -(v9 * a4));
  v13.x = 0.0;
  v13.y = 0.0;
  v10 = CGPointApplyAffineTransform(v13, &v12);
  return [a2 drawAtPoint_];
}

void sub_25E212794(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t WidgetFamily.chsFamily.getter()
{
  v1 = v0;
  v2 = sub_25E2173F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CE3B68])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277CE3B70])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277CE3B60])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277CE3B88])
  {
    return 4;
  }

  if (v6 != *MEMORY[0x277CE3B90])
  {
    if (v6 != *MEMORY[0x277CE3B98] && v6 != *MEMORY[0x277CE3B80])
    {
      (*(v3 + 8))(v5, v2);
    }

    return 1;
  }

  return 10;
}

uint64_t WidgetFamily.analyticSize.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25E2173F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277CE3B68])
  {
    v9 = MEMORY[0x277D39EC0];
LABEL_7:
    v10 = *v9;
    v11 = sub_25E216ED4();
    v12 = *(*(v11 - 8) + 104);
    v13 = a1;
    v14 = v10;
    return v12(v13, v14, v11);
  }

  if (v8 == *MEMORY[0x277CE3B70])
  {
    v9 = MEMORY[0x277D39EC8];
    goto LABEL_7;
  }

  if (v8 == *MEMORY[0x277CE3B60])
  {
    v9 = MEMORY[0x277D39EB8];
    goto LABEL_7;
  }

  v16 = *MEMORY[0x277CE3B88];
  v17 = v8;
  v11 = sub_25E216ED4();
  v12 = *(*(v11 - 8) + 104);
  if (v17 != v16)
  {
    v12(a1, *MEMORY[0x277D39EC0], v11);
    return (*(v5 + 8))(v7, v4);
  }

  v14 = *MEMORY[0x277D39ED0];
  v13 = a1;
  return v12(v13, v14, v11);
}

uint64_t PositionInLockScreenCircularAccessory.description.getter()
{
  if (*v0)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

PeopleUI::PositionInLockScreenCircularAccessory_optional __swiftcall PositionInLockScreenCircularAccessory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E217614();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25E212CB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7468676972;
  }

  else
  {
    v3 = 1952867692;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7468676972;
  }

  else
  {
    v5 = 1952867692;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E217634();
  }

  return v8 & 1;
}

uint64_t sub_25E212D50()
{
  sub_25E217654();
  sub_25E217484();

  return sub_25E217674();
}

uint64_t sub_25E212DC8(uint64_t a1)
{
  sub_25E217484();
}

uint64_t sub_25E212E2C(uint64_t a1)
{
  sub_25E217654();
  sub_25E217484();

  return sub_25E217674();
}

uint64_t sub_25E212EA0@<X0>(char *a2@<X8>)
{
  v3 = sub_25E217614();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25E212F00(uint64_t *a1@<X8>)
{
  v2 = 1952867692;
  if (*v1)
  {
    v2 = 0x7468676972;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25E212FE4()
{
  if (*v0)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t AvailabilityPersonStatus.accessibilityText.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  sub_25E2170C4();
  (*(v1 + 104))(v4, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68], MEMORY[0x277D39F70]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = *(v1 + 8);
    v7(v4, v0);
    v7(v6, v0);

    return 0x4420746F4E206F44;
  }

  v8 = sub_25E217634();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);

  if (v8)
  {
    return 0x4420746F4E206F44;
  }

  return 0;
}

uint64_t AvailabilityPersonStatus.icon.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  sub_25E2170C4();
  (*(v1 + 104))(v4, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68], MEMORY[0x277D39F70]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = *(v1 + 8);
    v7(v4, v0);
    v7(v6, v0);

    return sub_25E217374();
  }

  v8 = sub_25E217634();
  v9 = *(v1 + 8);
  v9(v4, v0);
  v9(v6, v0);

  if (v8)
  {
    return sub_25E217374();
  }

  return 0;
}

uint64_t AvailabilityPersonStatus.iconBackground.getter()
{
  v0 = sub_25E217014();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  sub_25E2170C4();
  (*(v1 + 104))(v4, *MEMORY[0x277D39F60], v0);
  sub_25E216A3C(&qword_27FCE0BA8, MEMORY[0x277D39F68], MEMORY[0x277D39F70]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v12[2] == v12[0] && v12[3] == v12[1])
  {
    v7 = *(v1 + 8);
    v7(v4, v0);
    v7(v6, v0);
  }

  else
  {
    v8 = sub_25E217634();
    v9 = *(v1 + 8);
    v9(v4, v0);
    v9(v6, v0);

    if ((v8 & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_25E218300;
      *(v10 + 32) = sub_25E2172E4();
      return v10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25E217B60;
  if (qword_27FCE0668 != -1)
  {
    swift_once();
  }

  *(v10 + 32) = qword_27FCE09C8;

  *(v10 + 40) = _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  return v10;
}

uint64_t AskToBuyRequestPersonStatus.icon.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 != *MEMORY[0x277D3A068] && v4 != *MEMORY[0x277D3A070] && v4 != *MEMORY[0x277D3A078] && v4 != *MEMORY[0x277D3A060])
  {
    (*(v1 + 8))(v3, v0);
  }

  return sub_25E217384();
}

uint64_t AskToBuyRequestPersonStatus.iconBackground.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D3A068])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25E217B60;
    if (qword_27FCE0698 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = qword_27FCE09F8;
    v6 = qword_27FCE06A0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = qword_27FCE0A00;
LABEL_24:
    *(v5 + 40) = v7;
    goto LABEL_25;
  }

  if (v4 == *MEMORY[0x277D3A070])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25E217B60;
    if (qword_27FCE06A8 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = qword_27FCE0A08;
    v8 = qword_27FCE06B0;

    if (v8 != -1)
    {
      swift_once();
    }

    v7 = qword_27FCE0A10;
    goto LABEL_24;
  }

  if (v4 == *MEMORY[0x277D3A078])
  {
LABEL_19:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_25E217B60;
    if (qword_27FCE0688 != -1)
    {
      swift_once();
    }

    *(v5 + 32) = qword_27FCE09E8;
    v10 = qword_27FCE0690;

    if (v10 != -1)
    {
      swift_once();
    }

    v7 = qword_27FCE09F0;
    goto LABEL_24;
  }

  if (v4 != *MEMORY[0x277D3A060])
  {
    (*(v1 + 8))(v3, v0);
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E217B60;
  if (qword_27FCE06F0 != -1)
  {
    swift_once();
  }

  v9 = qword_27FCE0A50;
  *(v5 + 32) = qword_27FCE0A50;
  *(v5 + 40) = v9;

LABEL_25:

  return v5;
}

uint64_t AskToBuyRequestPersonStatus.iconShadow.getter()
{
  sub_25E215FEC();
}

double AskToBuyRequestPersonStatus.iconOffset.getter()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D3A068])
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0.0;
}

uint64_t sub_25E213E50()
{
  sub_25E215FEC();
}

double sub_25E213E78()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D3A068])
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0.0;
}

uint64_t sub_25E213FC4(void (*a1)(uint64_t), void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v24[0] = a3;
  v24[1] = a4;
  v6 = sub_25E216EB4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25E216F94();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v24 - v16;
  a1(v15);
  v18 = (*(v11 + 88))(v17, v10);
  if (v18 == *MEMORY[0x277D39F28])
  {
    a2(v18, v19);
    (*(v7 + 104))(v9, *MEMORY[0x277D39EB0], v6);
    v20 = sub_25E217084();

    (*(v7 + 8))(v9, v6);
    if (v20)
    {
      return 0;
    }

    else
    {
      return sub_25E2174A4();
    }
  }

  else
  {
    (a1)(v18, v19);
    sub_25E216F84();
    v22 = *(v11 + 8);
    v22(v14, v10);
    v23 = sub_25E2174A4();

    v22(v17, v10);
    return v23;
  }
}

uint64_t ScreenTimeRequestPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0680 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE09E0;
  v1 = qword_27FCE0678;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE09D8;

  return v0;
}

uint64_t sub_25E21435C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0680 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE09E0;
  v1 = qword_27FCE0678;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE09D8;

  return v0;
}

uint64_t ChildStatePersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06D8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A38;
  v1 = qword_27FCE06E0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A40;

  return v0;
}

uint64_t ChildStatePersonStatus.iconFontSize.getter()
{
  _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
  v0 = sub_25E217184();

  return v0;
}

uint64_t sub_25E214604()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06D8 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A38;
  v1 = qword_27FCE06E0;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A40;

  return v0;
}

uint64_t sub_25E21471C()
{
  _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
  v0 = sub_25E217184();

  return v0;
}

uint64_t LocationPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A20;
  v1 = qword_27FCE06B8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A18;

  return v0;
}

uint64_t LocationPersonStatus.icon.getter()
{
  v0 = sub_25E216EB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217094();
  (*(v1 + 104))(v3, *MEMORY[0x277D39EA0], v0);
  v4 = sub_25E217084();

  (*(v1 + 8))(v3, v0);
  result = 0;
  if (v4)
  {
    return sub_25E217374();
  }

  return result;
}

uint64_t sub_25E214A24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE06C0 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A20;
  v1 = qword_27FCE06B8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A18;

  return v0;
}

uint64_t sub_25E214B3C()
{
  v0 = sub_25E216EB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217094();
  (*(v1 + 104))(v3, *MEMORY[0x277D39EA0], v0);
  v4 = sub_25E217084();

  (*(v1 + 8))(v3, v0);
  result = 0;
  if (v4)
  {
    return sub_25E217374();
  }

  return result;
}

uint64_t MotionPersonStatus.accessibilityText.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D39F18])
  {
    v5 = 1852732786;
  }

  else if (v4 == *MEMORY[0x277D39F10])
  {
    v5 = 1818458467;
  }

  else if (v4 == *MEMORY[0x277D39F00])
  {
    v5 = 1986622052;
  }

  else
  {
    if (v4 != *MEMORY[0x277D39F20])
    {
      (*(v1 + 8))(v3, v0);
      return 0;
    }

    v5 = 1802264951;
  }

  return v5 | 0x676E6900000000;
}

uint64_t MotionPersonStatus.icon.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D39F18])
  {
    return sub_25E217384();
  }

  if (v4 == *MEMORY[0x277D39F10] || v4 == *MEMORY[0x277D39F00] || v4 == *MEMORY[0x277D39F20] || v4 == *MEMORY[0x277D39F08])
  {
    return sub_25E217374();
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

uint64_t MotionPersonStatus.iconBackground.getter()
{
  if (MotionPersonStatus.icon.getter())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_25E217B60;
    if (qword_27FCE0670 != -1)
    {
      swift_once();
    }

    *(v0 + 32) = qword_27FCE09D0;

    *(v0 + 40) = sub_25E2172D4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
    v0 = swift_allocObject();
    *(v0 + 16) = xmmword_25E218300;
    *(v0 + 32) = sub_25E2172E4();
  }

  return v0;
}

uint64_t MotionPersonStatus.iconForeground.getter()
{
  if (MotionPersonStatus.icon.getter())
  {

    return _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  }

  else
  {

    return sub_25E2172E4();
  }
}

uint64_t MotionPersonStatus.iconFontSize.getter()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 10.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    sub_25E2171C4();
    v2 = sub_25E217184();
  }

  else
  {
    _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
    v2 = sub_25E217184();
  }

  return v2;
}

uint64_t MotionPersonStatus.iconForLockScreenCircularAccessory.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  v4 = (*(v1 + 88))(v3, v0);
  v5 = v4 == *MEMORY[0x277D39F18] || v4 == *MEMORY[0x277D39F10];
  if (v5 || v4 == *MEMORY[0x277D39F00])
  {
    return sub_25E217374();
  }

  if (v4 == *MEMORY[0x277D39F20] || v4 == *MEMORY[0x277D39F08])
  {
    return sub_25E217374();
  }

  (*(v1 + 8))(v3, v0);
  return 0;
}

double MotionPersonStatus.iconOffset.getter()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D39F18])
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0.0;
}

uint64_t sub_25E215410()
{
  if (MotionPersonStatus.icon.getter())
  {

    return _s6People19MessagePersonStatusV0A2UIE10iconShadow05SwiftE05ColorVvg_0();
  }

  else
  {

    return sub_25E2172E4();
  }
}

uint64_t sub_25E21547C()
{
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, 10.0, 0);
  if (UIFontForLanguage)
  {
    v1 = UIFontForLanguage;
    sub_25E2171C4();
    v2 = sub_25E217184();
  }

  else
  {
    _s6People19MessagePersonStatusV0A2UIE12iconFontSize05SwiftE00G0Vvg_0();
    v2 = sub_25E217184();
  }

  return v2;
}

double sub_25E2154F4()
{
  v0 = sub_25E216F74();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217024();
  if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277D39F18])
  {
    (*(v1 + 8))(v3, v0);
  }

  return 0.0;
}

uint64_t MissedCallPersonStatus.localizedDisplayString.getter()
{
  v0 = sub_25E217034();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v11 - v5;
  sub_25E2170B4();
  (*(v1 + 104))(v4, *MEMORY[0x277D39F88], v0);
  sub_25E216A3C(&qword_27FCE0BB8, MEMORY[0x277D39F90], MEMORY[0x277D39F98]);
  sub_25E2174E4();
  sub_25E2174E4();
  if (v11[2] == v11[0] && v11[3] == v11[1])
  {
    v7 = *(v1 + 8);
    v7(v4, v0);
    v7(v6, v0);
  }

  else
  {
    sub_25E217634();
    v8 = *(v1 + 8);
    v8(v4, v0);
    v8(v6, v0);
  }

  v9 = sub_25E2174A4();

  return v9;
}

uint64_t MissedCallPersonStatus.iconBackground.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0700 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A60;
  v1 = qword_27FCE06F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A58;

  return v0;
}

uint64_t sub_25E2159A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25E217B60;
  if (qword_27FCE0700 != -1)
  {
    swift_once();
  }

  *(v0 + 32) = qword_27FCE0A60;
  v1 = qword_27FCE06F8;

  if (v1 != -1)
  {
    swift_once();
  }

  *(v0 + 40) = qword_27FCE0A58;

  return v0;
}

uint64_t MessagePersonStatus.icon.getter()
{
  if (sub_25E217044() < 1)
  {
    return 0;
  }

  else
  {
    return sub_25E217374();
  }
}

uint64_t MessagePersonStatus.localizedDisplayString.getter()
{
  result = sub_25E217044();
  if (result)
  {
    return sub_25E2174A4();
  }

  return result;
}

uint64_t sub_25E215B78()
{
  result = sub_25E217044();
  if (result)
  {
    return sub_25E2174A4();
  }

  return result;
}

uint64_t sub_25E215BE0()
{
  if (sub_25E217044() < 1)
  {
    return 0;
  }

  else
  {
    return sub_25E217374();
  }
}

uint64_t sub_25E215C5C(uint64_t (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25E218300;
  *(v2 + 32) = a1();
  return v2;
}

uint64_t CalendarPersonStatus.localizedDisplayString.getter()
{
  v0 = sub_25E217054();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E217064();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D39FB8] || v4 == *MEMORY[0x277D39FC0])
  {
    goto LABEL_6;
  }

  if (v4 != *MEMORY[0x277D39FB0])
  {
    (*(v1 + 8))(v3, v0);
LABEL_6:
    sub_25E2174A4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BC0, &qword_25E218328);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_25E218300;
    v7 = _s6People20LocationPersonStatusV0A2UIE22localizedDisplayStringSSvg_0();
    v9 = v8;
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_25E216208(v7, v8, v10);
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    v5 = sub_25E217464();

    return v5;
  }

  return _s6People20LocationPersonStatusV0A2UIE22localizedDisplayStringSSvg_0();
}

uint64_t sub_25E215EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCE0BB0, &qword_25E218320);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25E218300;
  *(v4 + 32) = a3();
  return v4;
}

uint64_t sub_25E215F70(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25E215FEC()
{
  v0 = sub_25E217564();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E2170D4();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277D3A068])
  {
    if (qword_27FCE0698 != -1)
    {
      swift_once();
    }

    v5 = &qword_27FCE09F8;
    return *v5;
  }

  if (v4 == *MEMORY[0x277D3A070])
  {
    if (qword_27FCE06A8 != -1)
    {
      swift_once();
    }

    v5 = &qword_27FCE0A08;
    return *v5;
  }

  if (v4 != *MEMORY[0x277D3A078])
  {
    if (v4 == *MEMORY[0x277D3A060])
    {
      if (qword_27FCE06F0 != -1)
      {
        swift_once();
      }

      v5 = &qword_27FCE0A50;
      return *v5;
    }

    (*(v1 + 8))(v3, v0);
  }

  if (qword_27FCE0688 != -1)
  {
    swift_once();
  }

  v5 = &qword_27FCE09E8;
  return *v5;
}

unint64_t sub_25E216208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FCE0BC8;
  if (!qword_27FCE0BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BC8);
  }

  return result;
}

unint64_t sub_25E216260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FCE0BD0;
  if (!qword_27FCE0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BD0);
  }

  return result;
}

unint64_t sub_25E2162B8()
{
  result = qword_27FCE0BD8;
  if (!qword_27FCE0BD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCE0BE0, &qword_25E218448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0BD8);
  }

  return result;
}

uint64_t sub_25E21631C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BE8, MEMORY[0x277D3A010], &protocol conformance descriptor for AvailabilityPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216374(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BF0, MEMORY[0x277D3A010], MEMORY[0x277D3A008]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2163CC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0BF8, MEMORY[0x277D3A030], &protocol conformance descriptor for AskToBuyRequestPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21646C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C00, MEMORY[0x277D3A030], MEMORY[0x277D3A028]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2164C4(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C08, MEMORY[0x277D3A050], &protocol conformance descriptor for ScreenTimeRequestPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216564(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C10, MEMORY[0x277D3A050], MEMORY[0x277D3A048]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2165BC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C18, MEMORY[0x277D39FF0], MEMORY[0x277D39FE8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21665C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C20, MEMORY[0x277D39FE0], &protocol conformance descriptor for LocationPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2166FC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C28, MEMORY[0x277D39FE0], MEMORY[0x277D39FD8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216754(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C30, MEMORY[0x277D39F80], &protocol conformance descriptor for MotionPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2167AC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C38, MEMORY[0x277D39F80], MEMORY[0x277D39F78]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216804(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C40, MEMORY[0x277D3A000], &protocol conformance descriptor for MissedCallPersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2168A4(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C48, MEMORY[0x277D3A000], MEMORY[0x277D39FF8]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E2168FC(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C50, MEMORY[0x277D39FA8], &protocol conformance descriptor for MessagePersonStatus);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E21699C(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C58, MEMORY[0x277D39FA8], MEMORY[0x277D39FA0]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25E216A3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25E216A84(uint64_t a1)
{
  result = sub_25E216A3C(&qword_27FCE0C60, MEMORY[0x277D39FD0], MEMORY[0x277D39FC8]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25E216BB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27FCE0C68;
  if (!qword_27FCE0C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCE0C68);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x282111538](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGSize CGSizeApplyAffineTransform(CGSize size, CGAffineTransform *t)
{
  MEMORY[0x282111698](t, size, *&size.height);
  result.height = v3;
  result.width = v2;
  return result;
}