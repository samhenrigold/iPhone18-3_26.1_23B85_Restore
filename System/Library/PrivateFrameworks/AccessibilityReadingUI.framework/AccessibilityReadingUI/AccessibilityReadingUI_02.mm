uint64_t sub_23D86EC20(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE58, &qword_23D8E1708);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v28 - v4;
  v36 = sub_23D8DBF60();
  v34 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v29 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DC250();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v32 = &v28 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v37 = *(a1 + 24);
  sub_23D8DC2A0();
  v17 = *MEMORY[0x277CE7200];
  v30 = *(v7 + 104);
  v30(v14, v17, v6);
  sub_23D8708E4(&qword_27E2EDE60, MEMORY[0x277CE7208], MEMORY[0x277CE7218]);
  sub_23D8DE980();
  sub_23D8DE980();
  if (v40 == v38 && v41 == v39)
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_23D8DED20();
  }

  v19 = *(v7 + 8);
  v19(v14, v6);
  v19(v16, v6);

  if ((v18 & 1) == 0)
  {
    v20 = v32;
    sub_23D8DC2A0();
    v21 = v31;
    v30(v31, *MEMORY[0x277CE71E8], v6);
    sub_23D8DE980();
    sub_23D8DE980();
    if (v40 == v38 && v41 == v39)
    {
      v19(v21, v6);
      v19(v20, v6);
    }

    else
    {
      v22 = sub_23D8DED20();
      v19(v21, v6);
      v19(v20, v6);

      if ((v22 & 1) == 0)
      {
        return result;
      }
    }
  }

  v24 = v35;
  sub_23D8DC230();
  v25 = v34;
  v26 = v36;
  if ((*(v34 + 48))(v24, 1, v36) == 1)
  {
    return sub_23D83C6E4(v24, &qword_27E2EDE58, &qword_23D8E1708);
  }

  v27 = v29;
  (*(v25 + 32))(v29, v24, v26);
  sub_23D8DC300();
  return (*(v25 + 8))(v27, v26);
}

uint64_t sub_23D86F0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  *a2 = sub_23D8DD560();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE680, &unk_23D8E25F8);
  v9[1] = sub_23D8DC3B0();
  swift_getKeyPath();
  sub_23D86F910(v2, v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23D86F978(v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE688, &qword_23D8E2620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE690, &qword_23D8E2628);
  sub_23D835AD0(&qword_27E2EE698, &qword_27E2EE688, &qword_23D8E2620, MEMORY[0x277D83980]);
  sub_23D86F9E0();
  sub_23D86FAC4(&qword_27E2EE6B8, &qword_27E2EE690, &qword_23D8E2628, sub_23D86FA94);
  return sub_23D8DE4C0();
}

uint64_t sub_23D86F2E8(uint64_t a1)
{
  v2 = sub_23D8DCE20();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_23D8DD360();
}

void sub_23D86F3B0(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        v9 = MEMORY[0x23EEF0DB0](v4, v1);
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_23D8DECE0();
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE7B8, &qword_23D8E27B0);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 >= 2)
  {
    v24 = v23 >> 1;
    v22 = __OFSUB__(v24, v5);
    v25 = v24 - v5;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      v3[2] = v25;
    }
  }
}

uint64_t sub_23D86F5A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE7C0, &qword_23D8E27B8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_23D8DCF90();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v9 = *(v6 + 104);
  v9(v4, *MEMORY[0x277CDF9D8], v5);
  sub_23D8708E4(&qword_27E2EDD70, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_23D8DE820();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_23D8708E4(&qword_27E2ED3F8, MEMORY[0x277CDFA28], MEMORY[0x277CDFA38]);
  v11 = sub_23D8DE800();
  sub_23D83C6E4(v4, &unk_27E2EE7C0, &qword_23D8E27B8);
  if (v11)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9(v4, *MEMORY[0x277CDF988], v5);
  result = sub_23D8DE820();
  if ((result & 1) == 0)
  {
    goto LABEL_9;
  }

  v12 = sub_23D8DE800();
  sub_23D83C6E4(v4, &unk_27E2EE7C0, &qword_23D8E27B8);
  if (v12)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v9(v4, *MEMORY[0x277CDF9A8], v5);
  result = sub_23D8DE820();
  if (result)
  {
    sub_23D8DE800();
    sub_23D83C6E4(v4, &unk_27E2EE7C0, &qword_23D8E27B8);
    return (*(v6 + 8))(v8, v5);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_23D86F910(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D86F978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextDisplayContentView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D86F9E0()
{
  result = qword_27E2EE6A0;
  if (!qword_27E2EE6A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE6A8, &qword_23D8E2630);
    sub_23D8708E4(&qword_27E2EE6B0, MEMORY[0x277CE71D8], MEMORY[0x277CE71E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE6A0);
  }

  return result;
}

uint64_t sub_23D86FAC4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23D86FB48()
{
  result = qword_27E2EE6D0;
  if (!qword_27E2EE6D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE6D8, &qword_23D8E2640);
    sub_23D835AD0(&qword_27E2EE6E0, &qword_27E2EE6E8, &qword_23D8E2648, MEMORY[0x277CDF340]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE6D0);
  }

  return result;
}

uint64_t sub_23D86FC30(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23D86FD00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C8, &qword_23D8E2050);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_23D86FDB0(uint64_t a1)
{
  sub_23D86FE4C(319);
  if (v1 <= 0x3F)
  {
    sub_23D86FEE0(319);
    if (v2 <= 0x3F)
    {
      sub_23D86FF74(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_23D86FE4C(uint64_t a1)
{
  if (!qword_27E2EE700)
  {
    sub_23D8DC9F0();
    sub_23D8708E4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    v1 = sub_23D8DCF20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EE700);
    }
  }
}

void sub_23D86FEE0(uint64_t a1)
{
  if (!qword_27E2EE708)
  {
    sub_23D8DC430();
    sub_23D8708E4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    v1 = sub_23D8DCF20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EE708);
    }
  }
}

void sub_23D86FF74(uint64_t a1)
{
  if (!qword_27E2ED608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE9E0, &qword_23D8E26D0);
    v1 = sub_23D8DCD20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED608);
    }
  }
}

uint64_t sub_23D87001C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AXRTextDisplayContentView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_23D86D034(a1, v6, a2);
}

unint64_t sub_23D8700A4()
{
  result = qword_27E2EE728;
  if (!qword_27E2EE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE720, &qword_23D8E26E8);
    sub_23D870128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE728);
  }

  return result;
}

unint64_t sub_23D870128()
{
  result = qword_27E2EE730;
  if (!qword_27E2EE730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE738, &qword_23D8E26F0);
    sub_23D835AD0(&qword_27E2EE740, &qword_27E2EE748, &qword_23D8E26F8, MEMORY[0x277CE1148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE730);
  }

  return result;
}

uint64_t sub_23D8701E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_3()
{
  v1 = (type metadata accessor for AXRTextDisplayContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DD850();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D8703F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for AXRTextDisplayContentView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_23D86DB7C(a1, a2, v8, a3);
}

uint64_t sub_23D87047C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D87050C()
{
  v1 = (type metadata accessor for AXRTextDisplayContentView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;

  v6 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B0, &qword_23D8E0DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DD850();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5 + v6, 1, v7))
    {
      (*(v8 + 8))(v5 + v6, v7);
    }
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23D87069C()
{
  v1 = *(type metadata accessor for AXRTextDisplayContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D86EC20(v0 + v2, v3);
}

uint64_t sub_23D870728(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextBlockView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D870784(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D8707F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE780, &qword_23D8E2758);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D87085C()
{
  result = qword_27E2EE7A8;
  if (!qword_27E2EE7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EE7A0, &unk_23D8E27A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE7A8);
  }

  return result;
}

uint64_t sub_23D8708E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D870938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_23D83C67C(a3, v25 - v10, &qword_27E2ED120, &qword_23D8E03E0);
  v12 = sub_23D8DEA00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23D83C6E4(v11, &qword_27E2ED120, &qword_23D8E03E0);
  }

  else
  {
    sub_23D8DE9F0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23D8DE9B0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_23D8DE890() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_23D83C6E4(a3, &qword_27E2ED120, &qword_23D8E03E0);

      return v23;
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

  sub_23D83C6E4(a3, &qword_27E2ED120, &qword_23D8E03E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

char *sub_23D870C38(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  v146 = *(v4 - 8);
  v144 = *(v146 + 64);
  MEMORY[0x28223BE20](v4);
  v145 = &v128 - v5;
  v143 = sub_23D8DD850();
  v148 = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v128 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  MEMORY[0x28223BE20](v142);
  v149 = &v128 - v7;
  v155 = sub_23D8DE750();
  v158 = *(v155 - 8);
  MEMORY[0x28223BE20](v155);
  v154 = &v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_23D8DE780();
  v156 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = &v128 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA28, &qword_23D8E2A98);
  MEMORY[0x28223BE20](v10 - 8);
  v133 = &v128 - v11;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA30, &qword_23D8E2AA0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v134 = &v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v129 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v147 = &v128 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v141 = &v128 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v128 - v20;
  v22 = sub_23D8DD3C0();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v128 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v128 - v26;
  v28 = *(v1 + 8);
  v29 = objc_allocWithZone(type metadata accessor for AXRUITextView(0));
  v30 = sub_23D874D14(v28);
  v157 = v4;
  v31 = a1;
  sub_23D8DD930();
  sub_23D8DD280();
  v32 = *(v23 + 8);
  v32(v27, v22);
  v33 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  sub_23D877C3C(v21, v30 + v33);
  swift_endAccess();
  swift_unknownObjectWeakAssign();
  v168 = *(v2 + 96);
  v34 = v2;
  v35 = *(v2 + 88);
  v167 = v35;
  v140 = v22;
  v139 = v23 + 8;
  v136 = v32;
  if (v168 == 1)
  {
    v37 = v35;
  }

  else
  {

    sub_23D8DEAB0();
    v36 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();
    sub_23D83C6E4(&v167, &qword_27E2EEA38, &qword_23D8E2AA8);
    v32(v27, v22);
    v37 = aBlock;
  }

  swift_unknownObjectWeakAssign();

  v152 = v31;
  sub_23D8DD920();
  v38 = v166;
  v130 = v2;
  v39 = *(v2 + 32);
  v132 = *(v2 + 24);
  v40 = *(v2 + 40);
  v41 = *(v2 + 48);
  v42 = *(v2 + 56);
  v131 = *(v34 + 64);
  v43 = *(v34 + 72);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v44 = v30;
  v150 = v44;
  [v44 setDelegate_];
  v45 = &v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  v46 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  v47 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8];
  *v45 = v39;
  v45[1] = v40;
  sub_23D8556B0(v46, v47);
  v48 = &v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  v50 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  v49 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback + 8];
  sub_23D83BCD8(v39, v40);
  *v48 = v41;
  v48[1] = v42;
  sub_23D8556B0(v50, v49);
  v51 = &v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  v52 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  v53 = *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck + 8];
  sub_23D83BCD8(v41, v42);
  v54 = v131;
  *v51 = v131;
  *(v51 + 1) = v43;
  sub_23D8556B0(v52, v53);
  v55 = objc_allocWithZone(MEMORY[0x277D75B80]);
  sub_23D83BCD8(v54, v43);
  v56 = [v55 initWithTarget:v38 action:sel_handleTap_];
  [v56 setDelegate_];
  [v44 addGestureRecognizer_];
  aBlock = v132;
  v57 = sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v58 = sub_23D8DEAF0();
  v165 = v58;
  v59 = sub_23D8DEAE0();
  v60 = v133;
  (*(*(v59 - 8) + 56))(v133, 1, 1, v59);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED7A0, &unk_23D8E2AB0);
  sub_23D835AD0(&qword_27E2EEA50, &qword_27E2ED7A0, &unk_23D8E2AB0, MEMORY[0x277CBCE20]);
  sub_23D8787F4();
  v61 = v134;
  sub_23D8DCBC0();
  sub_23D83C6E4(v60, &qword_27E2EEA28, &qword_23D8E2A98);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_23D835AD0(&unk_27E2EEA60, &qword_27E2EEA30, &qword_23D8E2AA0, MEMORY[0x277CBCD60]);
  v62 = v137;
  v63 = sub_23D8DCBF0();

  (*(v135 + 8))(v61, v62);
  *&v38[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription] = v63;

  v137 = v57;
  v64 = sub_23D8DEAF0();
  v65 = swift_allocObject();
  *(v65 + 16) = v38;
  v163 = sub_23D87889C;
  v164 = v65;
  aBlock = MEMORY[0x277D85DD0];
  v160 = 1107296256;
  v161 = sub_23D876358;
  v162 = &block_descriptor_1;
  v66 = _Block_copy(&aBlock);
  v67 = v38;
  v68 = v150;
  v69 = v67;

  v70 = v151;
  sub_23D8DE770();
  aBlock = MEMORY[0x277D84F90];
  v71 = sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  v73 = sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
  v74 = v154;
  v134 = v72;
  v133 = v73;
  v75 = v155;
  v135 = v71;
  sub_23D8DEBF0();
  MEMORY[0x23EEF0C50](0, v70, v74, v66);
  _Block_release(v66);

  v76 = *(v158 + 8);
  v158 += 8;
  v132 = v76;
  v76(v74, v75);
  v77 = *(v156 + 8);
  v156 += 8;
  v131 = v77;
  v77(v70, v153);

  sub_23D8759F8(*v130);
  v78 = [objc_opt_self() clearColor];
  v79 = sub_23D8DE120();
  if (v79)
  {
    v80 = v79;
    v81 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    v78 = v81;
  }

  v82 = v141;
  v83 = v140;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v85 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v86 = sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  *(inited + 40) = v78;
  v87 = *MEMORY[0x277D741F0];
  *(inited + 64) = v86;
  *(inited + 72) = v87;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 1;
  v88 = v85;
  v141 = v78;
  v89 = v87;
  sub_23D878A84(inited, &qword_27E2EEA20, &qword_23D8E2A90, &unk_27E2EEA00, &qword_23D8E2A80);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA00, &qword_23D8E2A80);
  swift_arrayDestroy();
  type metadata accessor for Key(0);
  sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key, &unk_23D8E0834);
  v90 = sub_23D8DE7C0();

  [v68 setLinkTextAttributes_];

  v91 = objc_opt_self();
  v92 = [v91 currentDevice];
  v130 = [v92 userInterfaceIdiom];

  v93 = [v91 currentDevice];
  v94 = [v93 orientation];

  IsLandscape = UIDeviceOrientationIsLandscape(v94);
  v96 = v138;
  sub_23D8DD930();
  sub_23D8DD280();
  v136(v96, v83);
  v97 = v148;
  v98 = v147;
  v99 = v143;
  (*(v148 + 104))(v147, *MEMORY[0x277CE0558], v143);
  (*(v97 + 56))(v98, 0, 1, v99);
  v100 = *(v142 + 48);
  v101 = v149;
  sub_23D83C67C(v82, v149, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v98, v101 + v100, &qword_27E2EE9E0, &qword_23D8E26D0);
  v102 = *(v97 + 48);
  if (v102(v101, 1, v99) != 1)
  {
    v104 = v129;
    sub_23D83C67C(v101, v129, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v102(v101 + v100, 1, v99) != 1)
    {
      v105 = v82;
      v106 = v104;
      v107 = v148;
      v108 = v101 + v100;
      v109 = v128;
      (*(v148 + 32))(v128, v108, v99);
      sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v110 = sub_23D8DE820();
      v111 = *(v107 + 8);
      v111(v109, v99);
      sub_23D83C6E4(v147, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v105, &qword_27E2EE9E0, &qword_23D8E26D0);
      v111(v106, v99);
      sub_23D83C6E4(v101, &qword_27E2EE9E0, &qword_23D8E26D0);
      v103 = v150;
      if ((v110 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_13;
    }

    sub_23D83C6E4(v147, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v82, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v148 + 8))(v104, v99);
LABEL_11:
    sub_23D83C6E4(v101, &qword_27E2EDDB8, &qword_23D8E26E0);
    v103 = v150;
    goto LABEL_16;
  }

  sub_23D83C6E4(v98, &qword_27E2EE9E0, &qword_23D8E26D0);
  v101 = v149;
  sub_23D83C6E4(v82, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v102(v101 + v100, 1, v99) != 1)
  {
    goto LABEL_11;
  }

  sub_23D83C6E4(v101, &qword_27E2EE9E0, &qword_23D8E26D0);
  v103 = v150;
LABEL_13:
  v112 = !IsLandscape;
  if (v130)
  {
    v112 = 1;
  }

  if (v112)
  {
    v114 = v152;
    v127 = sub_23D878248();
    [v103 setTextContainerInset_];

    goto LABEL_17;
  }

LABEL_16:

  [v103 frame];
  Width = CGRectGetWidth(v169);
  sub_23D877074(Width);
  v114 = v152;
LABEL_17:
  v115 = sub_23D8DEAF0();
  v116 = v146;
  v117 = v145;
  v118 = v157;
  (*(v146 + 16))(v145, v114, v157);
  v119 = (*(v116 + 80) + 24) & ~*(v116 + 80);
  v120 = swift_allocObject();
  *(v120 + 16) = v103;
  (*(v116 + 32))(v120 + v119, v117, v118);
  v163 = sub_23D87899C;
  v164 = v120;
  aBlock = MEMORY[0x277D85DD0];
  v160 = 1107296256;
  v161 = sub_23D876358;
  v162 = &block_descriptor_95;
  v121 = _Block_copy(&aBlock);
  v122 = v103;

  v123 = v151;
  sub_23D8DE770();
  aBlock = MEMORY[0x277D84F90];
  v124 = v154;
  v125 = v155;
  sub_23D8DEBF0();
  MEMORY[0x23EEF0C50](0, v123, v124, v121);
  _Block_release(v121);

  v132(v124, v125);
  v131(v123, v153);
  return v122;
}

void sub_23D872084(void *a1)
{
  if ([a1 delegate])
  {

    swift_unknownObjectRelease();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
    sub_23D8DD920();
    [a1 setDelegate_];
  }
}

void sub_23D872120(char *a1, uint64_t a2)
{
  v84 = sub_23D8DD850();
  v86 = *(v84 - 1);
  MEMORY[0x28223BE20](v84);
  v71 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  MEMORY[0x28223BE20](v79);
  v7 = &v71 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v72 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v71 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v17 = sub_23D8DD3C0();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v76 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  sub_23D8DD930();
  sub_23D8DD280();
  v23 = *(v18 + 8);
  v78 = v17;
  v77 = v18 + 8;
  v74 = v23;
  v23(v22, v17);
  v24 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  sub_23D877C3C(v16, &a1[v24]);
  swift_endAccess();
  sub_23D8759F8(*v2);
  v25 = *(v2 + 8);
  if (*&a1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] != v25)
  {
    *&a1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] = v25;
  }

  v26 = [objc_opt_self() clearColor];
  v27 = sub_23D8DE120();
  v85 = a2;
  if (v27)
  {
    v28 = v27;
    v29 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithCGColor_];

    v26 = v29;
  }

  v83 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EE9F0, &unk_23D8E3CA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E0D60;
  v31 = *MEMORY[0x277D740C0];
  *(inited + 32) = *MEMORY[0x277D740C0];
  v32 = sub_23D856774(0, &qword_27E2ED2A8, 0x277D75348);
  *(inited + 40) = v26;
  v33 = *MEMORY[0x277D741F0];
  *(inited + 64) = v32;
  *(inited + 72) = v33;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = 1;
  v34 = v31;
  v80 = v26;
  v35 = v33;
  v36 = sub_23D878A84(inited, &qword_27E2EEA20, &qword_23D8E2A90, &unk_27E2EEA00, &qword_23D8E2A80);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA00, &qword_23D8E2A80);
  swift_arrayDestroy();
  v37 = a1;
  v38 = [a1 linkTextAttributes];
  if (v38)
  {
    v39 = v38;
    type metadata accessor for Key(0);
    sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key, &unk_23D8E0834);
    v40 = sub_23D8DE7D0();

    sub_23D872BF8(v40);

    v41 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
    v42 = sub_23D8DE7C0();

    v43 = [v41 initWithDictionary_];

    sub_23D872BF8(v36);
    v44 = sub_23D8DE7C0();

    LOBYTE(v42) = [v43 isEqualToDictionary_];

    v73 = v37;
    if (v42)
    {
    }

    else
    {
      v45 = sub_23D8DE7C0();

      [v37 setLinkTextAttributes_];
    }

    v46 = v84;
    v47 = v83;
    v48 = objc_opt_self();
    v49 = [v48 currentDevice];
    v84 = [v49 userInterfaceIdiom];

    v50 = [v48 currentDevice];
    v51 = [v50 orientation];

    LODWORD(v83) = UIDeviceOrientationIsLandscape(v51);
    v52 = v76;
    sub_23D8DD930();
    v53 = v82;
    sub_23D8DD280();
    v74(v52, v78);
    v54 = v86;
    v55 = v81;
    (*(v86 + 104))(v81, *MEMORY[0x277CE0558], v46);
    (*(v54 + 56))(v55, 0, 1, v46);
    v56 = *(v79 + 48);
    sub_23D83C67C(v53, v47, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C67C(v55, v47 + v56, &qword_27E2EE9E0, &qword_23D8E26D0);
    v57 = *(v54 + 48);
    if (v57(v47, 1, v46) == 1)
    {
      sub_23D83C6E4(v55, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v53, &qword_27E2EE9E0, &qword_23D8E26D0);
      if (v57(v47 + v56, 1, v46) == 1)
      {
        sub_23D83C6E4(v47, &qword_27E2EE9E0, &qword_23D8E26D0);
        v58 = v73;
LABEL_16:
        v64 = v83 ^ 1;
        if (v84)
        {
          v64 = 1;
        }

        if (v64)
        {
          v66 = sub_23D878248();
          [v58 textContainerInset];
          if (vabdd_f64(v70, v66) > 0.5 || vabdd_f64(v69, v66) > 0.5 || fabs(v67) > 0.5 || fabs(v68 + -150.0) > 0.5)
          {
            [v58 setTextContainerInset_];
          }

          goto LABEL_20;
        }

LABEL_19:
        [v58 frame];
        Width = CGRectGetWidth(v87);
        sub_23D877074(Width);
LABEL_20:

        return;
      }
    }

    else
    {
      v59 = v72;
      sub_23D83C67C(v47, v72, &qword_27E2EE9E0, &qword_23D8E26D0);
      if (v57(v47 + v56, 1, v46) != 1)
      {
        v60 = v86;
        v61 = v47 + v56;
        v62 = v71;
        (*(v86 + 32))(v71, v61, v46);
        sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
        LODWORD(v79) = sub_23D8DE820();
        v63 = *(v60 + 8);
        v63(v62, v46);
        sub_23D83C6E4(v55, &qword_27E2EE9E0, &qword_23D8E26D0);
        sub_23D83C6E4(v53, &qword_27E2EE9E0, &qword_23D8E26D0);
        v63(v59, v46);
        sub_23D83C6E4(v47, &qword_27E2EE9E0, &qword_23D8E26D0);
        v58 = v73;
        if ((v79 & 1) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_16;
      }

      sub_23D83C6E4(v55, &qword_27E2EE9E0, &qword_23D8E26D0);
      sub_23D83C6E4(v53, &qword_27E2EE9E0, &qword_23D8E26D0);
      (*(v86 + 8))(v59, v46);
    }

    sub_23D83C6E4(v47, &qword_27E2EDDB8, &qword_23D8E26E0);
    v58 = v73;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_23D872BF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEA18, &qword_23D8E2A88);
    v2 = sub_23D8DECF0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_23D835A24(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for Key(0);
    v15 = v14;
    swift_dynamicCast();
    sub_23D878788((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_23D878788(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_23D878788(v30, v31);
    result = sub_23D8DEC00();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_23D878788(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_23D872EC0(uint64_t a1)
{
  v3 = sub_23D8DCAF0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED120, &qword_23D8E03E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v31 - v8;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v12 = swift_unknownObjectWeakLoadStrong();

    if (v12)
    {
      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13)
      {
        v14 = v13;
        v32 = swift_unknownObjectWeakLoadStrong();

        if (v32)
        {
          v15 = CACurrentMediaTime();
          if (a1 == 2)
          {
            if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] != 1)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (a1 != 1)
            {
LABEL_15:
              v19 = 0;
LABEL_16:
              v20 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime;
              if (v15 - *&v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime] >= 2.0)
              {
                v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = a1 == 2;
                v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = v19;
                v22 = v15;
                v23 = sub_23D8DEA00();
                (*(*(v23 - 8) + 56))(v9, 1, 1, v23);
                sub_23D8DE9D0();
                v24 = v12;
                v25 = v32;
                v26 = v1;
                v27 = v1;
                v28 = sub_23D8DE9C0();
                v29 = swift_allocObject();
                v30 = MEMORY[0x277D85700];
                v29[2] = v28;
                v29[3] = v30;
                v29[4] = v24;
                v29[5] = a1;
                v29[6] = v25;
                v29[7] = v26;
                sub_23D870938(0, 0, v9, &unk_23D8E2AE0, v29);

                *&v27[v20] = v22;
                return;
              }

              goto LABEL_17;
            }

            if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] != 1)
            {
              v19 = 1;
              goto LABEL_16;
            }
          }

LABEL_17:

          v21 = v32;

          return;
        }
      }
    }
  }

  sub_23D8DC180();
  v16 = sub_23D8DCAE0();
  v17 = sub_23D8DEA90();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_23D82C000, v16, v17, "BlockManager or AXRuntimeClient not available for content fetching", v18, 2u);
    MEMORY[0x23EEF15F0](v18, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D873270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  v7[3] = sub_23D8DE9D0();
  v7[4] = sub_23D8DE9C0();
  v10 = swift_task_alloc();
  v7[5] = v10;
  *v10 = v7;
  v10[1] = sub_23D87333C;

  return MEMORY[0x2821395A0](a5, a6);
}

uint64_t sub_23D87333C()
{

  v1 = sub_23D8DE9B0();

  return MEMORY[0x2822009F8](sub_23D873478, v1, v0);
}

uint64_t sub_23D873478()
{
  v1 = *(v0 + 16);

  *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent) = 0;
  *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent) = 0;
  v2 = *(v0 + 8);

  return v2();
}

void sub_23D8734F4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_23D873D80(v2);
  }
}

void sub_23D873550(void *a1)
{
  v2 = v1;
  [a1 contentOffset];
  v4 = v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset;
  *v4 = v3;
  *(v4 + 8) = v5;
  v6 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling;
  if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling) == 1)
  {
    *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll) = 1;
    *(v1 + v6) = 0;
  }

  v7 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
  if (v7)
  {
    v8 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

    v7(v9);
    v3 = sub_23D8556B0(v7, v8);
  }

  v10 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer;
  [*(v2 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer) invalidate];
  v11 = objc_opt_self();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = sub_23D8794AC;
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_23D87DA4C;
  v16[3] = &block_descriptor_140;
  v13 = _Block_copy(v16);

  v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v13 block:3.0];
  _Block_release(v13);
  v15 = *(v2 + v10);
  *(v2 + v10) = v14;
}

void sub_23D873754(void *a1)
{
  v3 = sub_23D8DCAF0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized) == 1)
  {
    v10 = &off_278BEC000;
    if (([a1 isDragging] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
    {
      [a1 contentOffset];
      v12 = (v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset);
      v11 = vabdd_f64(v13, *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset + 8));
      if (v11 > 10.0)
      {
        [a1 contentOffset];
        *v12 = v14;
        v12[1] = v15;
        v16 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer;
        [*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer) invalidate];
        v17 = objc_opt_self();
        v18 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_23D8797F8;
        aBlock[5] = v18;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_23D87DA4C;
        aBlock[3] = &block_descriptor_136;
        v19 = _Block_copy(aBlock);

        v20 = [v17 scheduledTimerWithTimeInterval:0 repeats:v19 block:3.0];
        v21 = v19;
        v10 = &off_278BEC000;
        _Block_release(v21);
        v22 = *(v1 + v16);
        *(v1 + v16) = v20;

        v23 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
        if (v23)
        {
          v24 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

          v23(v25);
          v26 = v24;
          v10 = &off_278BEC000;
          v11 = sub_23D8556B0(v23, v26);
        }
      }
    }

    if ((*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling) & 1) != 0 || ([a1 v10[406]] & 1) != 0 || objc_msgSend(a1, sel_isDecelerating))
    {
      [a1 frame];
      v28 = v27;
      [a1 contentSize];
      v30 = v29;
      [a1 contentOffset];
      if (v30 - v28 <= 0.0)
      {
        sub_23D8DC180();
        v46 = sub_23D8DCAE0();
        v47 = sub_23D8DEA90();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&dword_23D82C000, v46, v47, "Returning early as maximumOffset <= 0", v48, 2u);
          MEMORY[0x23EEF15F0](v48, -1, -1);
        }

        (*(v4 + 8))(v9, v3);
      }

      else
      {
        if (v31 < 0.0)
        {
          v31 = 0.0;
        }

        v32 = v31 / (v30 - v28);
        v33 = (v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition);
        v34 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition);
        v35 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition + 8);
        [a1 contentOffset];
        v37 = 2;
        if (v36 > 0.0)
        {
          v38 = 1;
        }

        else
        {
          v38 = 2;
        }

        if (v36 >= v35)
        {
          v37 = 1;
        }

        if (v35 == 0.0 && v34 == 0.0)
        {
          v40 = v38;
        }

        else
        {
          v40 = v37;
        }

        [a1 contentOffset];
        *v33 = v41;
        v33[1] = v42;
        if (v32 <= 0.3 && v40 == 2)
        {
          v49 = v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold;
          if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold) != 2 || vabds_f32(*(v49 + 8), v32) > 0.05)
          {
            *v49 = 2;
            *(v49 + 8) = v32;
            sub_23D872EC0(2);
          }
        }

        else if (v32 >= 0.7 && v40 == 1)
        {
          v45 = v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold;
          if (*(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold) != 1 || vabds_f32(*(v45 + 8), v32) > 0.05)
          {
            *v45 = 1;
            *(v45 + 8) = v32;
            sub_23D872EC0(1);
          }
        }
      }
    }

    else
    {
      sub_23D8DC180();
      v50 = sub_23D8DCAE0();
      v51 = sub_23D8DEA90();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_23D82C000, v50, v51, "User didn't scroll or it wasn't a programmatic scroll - ignore it.", v52, 2u);
        MEMORY[0x23EEF15F0](v52, -1, -1);
      }

      (*(v4 + 8))(v7, v3);
    }
  }
}

void sub_23D873CAC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] = 0;
    v3 = *&Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer];
    *&Strong[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer] = 0;
  }
}

void sub_23D873D80(int64_t a1)
{
  v3 = sub_23D8DE750();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DE780();
  v48 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DE7A0();
  v49 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  if (v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] != 1 && !*&v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer])
  {
    v17 = OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling;
    v1[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling] = 1;
    if (a1 == -1)
    {
      v47 = Strong;
      [Strong contentSize];
      v33 = v32;
      [v47 bounds];
      v34 = v33 - CGRectGetHeight(v52) + 120.0;
      v35 = 0.0;
      if (v34 >= 0.0)
      {
        v35 = v34;
      }

      [v47 setContentOffset:1 animated:{0.0, v35}];
      Strong = v47;
      goto LABEL_4;
    }

    v45 = v17;
    if ((a1 & 0x8000000000000000) == 0)
    {
      v43[0] = v4;
      v47 = Strong;
      v46 = Strong;
      v18 = [v46 text];
      if (!v18)
      {
        goto LABEL_32;
      }

      v19 = v18;
      v20 = sub_23D8DE870();
      v43[1] = v21;
      v44 = v20;

      v44 = sub_23D8DE8F0();

      if (v44 > a1)
      {
        v22 = [v46 text];

        if (!v22)
        {
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v45 = sub_23D8DE870();
        v47 = v23;

        v24 = sub_23D8DE8F0();

        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        if (a1 / v25 <= 0.85)
        {
          v28 = v1;
          v37 = v46;

          [v37 scrollRangeToVisible_];
LABEL_29:
          sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
          v45 = sub_23D8DEAF0();
          sub_23D8DE790();
          sub_23D8DE7B0();
          v38 = *(v49 + 8);
          v49 += 8;
          v47 = v38;
          (v38)(v13, v10);
          v39 = swift_allocObject();
          *(v39 + 16) = v28;
          aBlock[4] = sub_23D879498;
          aBlock[5] = v39;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_23D876358;
          aBlock[3] = &block_descriptor_132;
          v44 = _Block_copy(aBlock);
          v40 = v28;

          sub_23D8DE770();
          aBlock[0] = MEMORY[0x277D84F90];
          sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
          sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
          sub_23D8DEBF0();
          v42 = v44;
          v41 = v45;
          MEMORY[0x23EEF0C20](v15, v9, v6, v44);
          _Block_release(v42);

          (*(v43[0] + 8))(v6, v3);
          (*(v48 + 8))(v9, v7);
          (v47)(v15, v10);
          return;
        }

        v26 = [v46 text];

        if (!v26)
        {
LABEL_34:
          __break(1u);
          return;
        }

        v47 = sub_23D8DE870();
        v45 = v27;

        v47 = sub_23D8DE8F0();

        if (!__OFSUB__(v47, a1))
        {
          v28 = v1;
          if (&v47[-a1] >= 100)
          {
            v29 = 100;
          }

          else
          {
            v29 = &v47[-a1];
          }

          v30 = v46;
          [v46 scrollRangeToVisible_];
          sub_23D878DDC(v30);
          if (v31 > 0.0)
          {
            [v30 contentOffset];
            [v30 setContentOffset:1 animated:?];
          }

          goto LABEL_29;
        }

        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v36 = v46;

      Strong = v47;
    }

    v1[v45] = 0;
    return;
  }

LABEL_4:
}

double sub_23D874470(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return result;
  }

  v21 = Strong;
  [v21 selectedRange];
  if (v5 >= 1)
  {
    [v21 setSelectedRange_];
LABEL_4:

    goto LABEL_5;
  }

  v7 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v1;
  v9 = *(v1 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck + 8);

  if (v7(v10))
  {
    if ([a1 state] == 3)
    {
      [a1 locationInView_];
      v11 = [v21 closestPositionToPoint_];
      if (v11)
      {
        v19 = v11;
        v20 = [objc_msgSend(v21 tokenizer)];
        swift_unknownObjectRelease();
        if (v20)
        {
          v12 = [v21 beginningOfDocument];

          v13 = [v20 start];
          v14 = [v21 offsetFromPosition:v12 toPosition:v13];

          v15 = *(v8 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback);
          if (v15)
          {
            v16 = *(v8 + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback + 8);

            v15(v14);
            sub_23D8556B0(v7, v9);
            v17 = v15;
            v18 = v16;
          }

          else
          {
            v17 = v7;
            v18 = v9;
          }

          sub_23D8556B0(v17, v18);

          v6 = v20;
        }

        else
        {

          sub_23D8556B0(v7, v9);
          v6 = v19;
        }

        goto LABEL_6;
      }
    }

    sub_23D8556B0(v7, v9);
LABEL_5:
    v6 = v21;
LABEL_6:

    return result;
  }

  return sub_23D8556B0(v7, v9);
}

id sub_23D874814()
{
  if (*&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription])
  {

    sub_23D8DCB00();
  }

  v1 = *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer];
  if (v1)
  {
    [v1 invalidate];
  }

  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXRUIContinuousTextView.Coordinator();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_23D874978()
{
  swift_unknownObjectWeakInit();
  v1 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_tapToSpeakCallback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isSpeakingCheck];
  *v3 = 0;
  v3[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_scrollToIndexSubscription] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isProgrammaticScrolling] = 0;
  v4 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastContentOffset];
  *v4 = 0;
  v4[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownTimer] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userInterruptedProgrammaticScroll] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCooldownPeriod] = 0x4008000000000000;
  v5 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastScrollPosition];
  *v5 = 0;
  v5[1] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_currentScrollDirection] = 1;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingPreviousContent] = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isFetchingNextContent] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastFetchTriggerTime] = 0;
  *&v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_fetchCooldownPeriod] = 0x4000000000000000;
  v6 = &v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_lastTriggeredThreshold];
  *v6 = 1;
  *(v6 + 2) = 0;
  v0[OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_isTextViewInitialized] = 0;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for AXRUIContinuousTextView.Coordinator();
  return objc_msgSendSuper2(&v8, sel_init);
}

id sub_23D874B0C@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(type metadata accessor for AXRUIContinuousTextView.Coordinator()) init];
  *a1 = result;
  return result;
}

uint64_t sub_23D874B8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D878A0C();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_23D874BF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23D878A0C();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_23D874C54(uint64_t a1)
{
  sub_23D878A0C();
  sub_23D8DD680();
  __break(1u);
}

uint64_t sub_23D874C7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23D874CD8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AXRScrollCoordinator();
  result = sub_23D8DCB20();
  *a2 = result;
  return result;
}

id sub_23D874D14(double a1)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v3 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  v4 = sub_23D8DD850();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth] = a1;
  v5 = [objc_allocWithZone(MEMORY[0x277D742D8]) init];
  v6 = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  [v5 addLayoutManager_];
  v7 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  [v7 setWidthTracksTextView_];
  [v6 addTextContainer_];
  v10.receiver = v1;
  v10.super_class = type metadata accessor for AXRUITextView(0);
  v8 = objc_msgSendSuper2(&v10, sel_initWithFrame_textContainer_, v7, 0.0, 0.0, 0.0, 0.0);
  sub_23D874FAC();

  return v8;
}

void sub_23D874FAC()
{
  [v0 setEditable_];
  [v0 setSelectable_];
  [v0 setAdjustsFontForContentSizeCategory_];
  v1 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  v2 = [v0 textContainer];
  [v2 setLineFragmentPadding_];

  [v0 setUserInteractionEnabled_];
  [v0 setDataDetectorTypes_];
  v3 = sub_23D8DE830();
  [v0 setAccessibilityIdentifier_];

  [v0 setDelaysContentTouches_];
  [v0 setCanCancelContentTouches_];
  v4 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_clearSelectionOnTap_];
  [v4 setDelegate_];
  [v4 setCancelsTouchesInView_];
  [v4 setNumberOfTapsRequired_];
  v32 = v4;
  [v4 setNumberOfTouchesRequired_];
  v33 = v0;
  v5 = [v0 gestureRecognizers];
  if (v5)
  {
    v6 = v5;
    sub_23D856774(0, &qword_27E2EEAB0, 0x277D75548);
    v7 = sub_23D8DE990();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_33:

      [v33 addGestureRecognizer_];
      v31 = [objc_opt_self() defaultCenter];
      [v31 addObserver:v33 selector:sel_handleOrientationChange name:*MEMORY[0x277D76878] object:0];

      return;
    }
  }

  v8 = sub_23D8DECE0();
  if (!v8)
  {
    goto LABEL_33;
  }

LABEL_4:
  v9 = 0;
  v10 = v7 & 0xC000000000000001;
  v26 = v7 + 32;
  v27 = v7 & 0xFFFFFFFFFFFFFF8;
  v11 = &off_278BEC000;
  v29 = v8;
  v30 = v7;
  v28 = v7 & 0xC000000000000001;
  while (1)
  {
    if (v10)
    {
      v12 = MEMORY[0x23EEF0DB0](v9, v7);
    }

    else
    {
      if (v9 >= *(v27 + 16))
      {
        goto LABEL_39;
      }

      v12 = *(v26 + 8 * v9);
    }

    v13 = v12;
    if (__OFADD__(v9++, 1))
    {
      break;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      [v32 v11[383]];
    }

    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    if (v15)
    {
      v16 = v15;
      v17 = v13;
      [v16 setCancelsTouchesInView_];
      [v16 setDelaysTouchesBegan_];
      [v16 setDelaysTouchesEnded_];

      v18 = [v33 gestureRecognizers];
      if (v18)
      {
        v19 = v18;
        sub_23D856774(0, &qword_27E2EEAB0, 0x277D75548);
        v20 = sub_23D8DE990();

        if (v20 >> 62)
        {
          v21 = sub_23D8DECE0();
          if (v21)
          {
LABEL_18:
            v22 = 0;
            while (1)
            {
              if ((v20 & 0xC000000000000001) != 0)
              {
                v23 = MEMORY[0x23EEF0DB0](v22, v20);
              }

              else
              {
                if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_37;
                }

                v23 = *(v20 + 8 * v22 + 32);
              }

              v24 = v23;
              v25 = v22 + 1;
              if (__OFADD__(v22, 1))
              {
                break;
              }

              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {

                v11 = &off_278BEC000;
                [v16 requireGestureRecognizerToFail_];

                v8 = v29;
                v7 = v30;
                v10 = v28;
                goto LABEL_6;
              }

              ++v22;
              if (v25 == v21)
              {
                goto LABEL_30;
              }
            }

            __break(1u);
LABEL_37:
            __break(1u);
            break;
          }
        }

        else
        {
          v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v21)
          {
            goto LABEL_18;
          }
        }

LABEL_30:

        v8 = v29;
        v7 = v30;
        v10 = v28;
        v11 = &off_278BEC000;
      }

      else
      {
      }
    }

    else
    {
    }

LABEL_6:
    if (v9 == v8)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_23D87550C()
{
  v0 = sub_23D8DE750();
  v22 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_23D8DE780();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DE7A0();
  v19 = v6;
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v17 = sub_23D8DEAF0();
  sub_23D8DE790();
  sub_23D8DE7B0();
  v18 = *(v7 + 8);
  v18(v10, v6);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_23D878CBC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D876358;
  aBlock[3] = &block_descriptor_122;
  v14 = _Block_copy(aBlock);

  sub_23D8DE770();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
  sub_23D8DEBF0();
  v15 = v17;
  MEMORY[0x23EEF0C20](v12, v5, v2, v14);
  _Block_release(v14);

  (*(v22 + 8))(v2, v0);
  (*(v20 + 8))(v5, v21);
  return (v18)(v12, v19);
}

void sub_23D8758E8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    [Strong frame];
    Width = CGRectGetWidth(v4);
    sub_23D877074(Width);
  }
}

double sub_23D8759F8(void *a1)
{
  v2 = v1;
  v35 = a1;
  v3 = sub_23D8DE750();
  v34 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_23D8DE780();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D8DE760();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = [v1 textStorage];
  v13 = [v1 attributedText];
  if (v13 && (v14 = v13, sub_23D856774(0, &qword_27E2EEAA8, 0x277CCA898), v15 = v35, v16 = sub_23D8DEB90(), v14, v15, (v16 & 1) != 0))
  {
    v17 = v36;
  }

  else
  {
    v19 = [v2 selectedRange];
    v21 = v20;
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    (*(v10 + 104))(v12, *MEMORY[0x277D851B8], v9);
    v31 = sub_23D8DEB10();
    (*(v10 + 8))(v12, v9);
    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v25 = v35;
    v24 = v36;
    v23[2] = v35;
    v23[3] = v22;
    v23[4] = v24;
    v23[5] = v19;
    v23[6] = v21;
    aBlock[4] = sub_23D878C2C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_111;
    v26 = _Block_copy(aBlock);
    v27 = v25;

    v28 = v36;
    sub_23D8DE770();
    v37 = MEMORY[0x277D84F90];
    sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    sub_23D8DEBF0();
    v29 = v31;
    MEMORY[0x23EEF0C50](0, v8, v5, v26);
    _Block_release(v26);

    (*(v34 + 8))(v5, v3);
    (*(v32 + 8))(v8, v33);
  }

  return result;
}

uint64_t sub_23D875EC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_23D8DE750();
  v26 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_23D8DE780();
  v12 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
  v24 = sub_23D8DEAF0();
  v16 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = a3;
  v18[4] = v15;
  v18[5] = a4;
  v18[6] = a5;
  aBlock[4] = sub_23D878C8C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D876358;
  aBlock[3] = &block_descriptor_118;
  v19 = _Block_copy(aBlock);
  v20 = a3;
  v21 = v15;

  sub_23D8DE770();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
  sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
  sub_23D8DEBF0();
  v22 = v24;
  MEMORY[0x23EEF0C50](0, v14, v11, v19);
  _Block_release(v19);

  (*(v26 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v25);
}

void sub_23D876244(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = [v10 layoutManager];
    [v11 setAllowsNonContiguousLayout_];

    [a2 beginEditing];
    [a2 setAttributedString_];
    [a2 endEditing];
    v12 = [a2 length];
    if (v12 >= a4)
    {
      v13 = a4;
    }

    else
    {
      v13 = 0;
    }

    if (v12 >= a4)
    {
      v14 = a5;
    }

    else
    {
      v14 = 0;
    }

    [v10 setSelectedRange_];

    [v10 invalidateIntrinsicContentSize];
  }
}

double sub_23D876358(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

id sub_23D87639C(uint64_t a1)
{
  v2 = v1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
    if (v6)
    {
      v7 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);

      v6(v8);
      sub_23D8556B0(v6, v7);
    }
  }

  v10.receiver = v2;
  v10.super_class = type metadata accessor for AXRUITextView(0);
  return objc_msgSendSuper2(&v10, sel_accessibilityScroll_, a1);
}

void sub_23D8765DC()
{
  v1 = v0;
  v2 = sub_23D8DBE00();
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = v2;
  sub_23D8DE870();
  sub_23D8DEC20();
  if (!*(v3 + 16) || (v4 = sub_23D877E9C(v13), (v5 & 1) == 0))
  {

    sub_23D8359D0(v13);
LABEL_10:
    v14 = 0u;
    v15 = 0u;
    goto LABEL_11;
  }

  sub_23D835A24(*(v3 + 56) + 32 * v4, &v14);
  sub_23D8359D0(v13);

  if (!*(&v15 + 1))
  {
LABEL_11:
    sub_23D83C6E4(&v14, &qword_27E2EEA98, &qword_23D8E2AD0);
    return;
  }

  sub_23D856774(0, &qword_27E2EEAA0, 0x277D750A0);
  if (swift_dynamicCast())
  {
    v6 = v13[0];
    v7 = [v13[0] accessibilityContainer];
    if (v7)
    {
      v8 = v7;
      swift_unknownObjectRelease();
      if (v8 == v1)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback);
          v11 = *(Strong + OBJC_IVAR____TtCV22AccessibilityReadingUI23AXRUIContinuousTextView11Coordinator_userScrollCallback + 8);
          v12 = Strong;
          sub_23D83BCD8(v10, v11);

          if (v10)
          {
            v10();
            sub_23D8556B0(v10, v11);
          }
        }
      }
    }
  }
}

id sub_23D8769D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for AXRUITextView(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t type metadata accessor for AXRUITextView(uint64_t a1)
{
  result = qword_27E2EE9B8;
  if (!qword_27E2EE9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23D876CBC(double a1, double a2, double a3)
{
  v5 = sub_23D8DE750();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23D8DE780();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v3 frame];
  if (vabdd_f64(a3, v14) > 0.5)
  {
    result = [v3 frame];
    if (v15 > 0.0)
    {
      sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
      v20 = sub_23D8DEAF0();
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      aBlock[4] = sub_23D878CC4;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D876358;
      aBlock[3] = &block_descriptor_126;
      v19 = _Block_copy(aBlock);

      sub_23D8DE770();
      aBlock[0] = MEMORY[0x277D84F90];
      sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
      sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
      sub_23D8DEBF0();
      v18 = v19;
      v17 = v20;
      MEMORY[0x23EEF0C50](0, v12, v8, v19);
      _Block_release(v18);

      (*(v6 + 8))(v8, v5);
      return (*(v10 + 8))(v12, v9);
    }
  }

  return result;
}

void sub_23D876FF0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [Strong window];
    if (v3)
    {

      [v2 frame];
      sub_23D877074(v4);
    }
  }
}

uint64_t sub_23D877074(double a1)
{
  v3 = sub_23D8DD850();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v41[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v41[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v44 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v41[-v13];
  v15 = objc_opt_self();
  v16 = [v15 currentDevice];
  v17 = [v16 orientation];

  IsLandscape = UIDeviceOrientationIsLandscape(v17);
  v18 = [v15 currentDevice];
  v19 = [v18 userInterfaceIdiom];

  v20 = OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_currentHorizontalSizeClass;
  swift_beginAccess();
  (*(v4 + 104))(v14, *MEMORY[0x277CE0560], v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_23D83C67C(&v1[v20], v9, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v14, &v9[v21], &qword_27E2EE9E0, &qword_23D8E26D0);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    v24 = v44;
    sub_23D83C67C(v9, v44, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v38 = v43;
      (*(v4 + 32))(v43, &v9[v21], v3);
      sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v42 = sub_23D8DE820();
      v39 = *(v4 + 8);
      v39(v38, v3);
      sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
      v39(v24, v3);
      result = sub_23D83C6E4(v9, &qword_27E2EE9E0, &qword_23D8E26D0);
      v40 = IsLandscape;
      if (v19)
      {
        v40 = 0;
      }

      if ((v42 & 1) != 0 || v40)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v4 + 8))(v24, v3);
LABEL_6:
    result = sub_23D83C6E4(v9, &qword_27E2EDDB8, &qword_23D8E26E0);
    v25 = IsLandscape;
    if (v19)
    {
      v25 = 0;
    }

    if (v25)
    {
      goto LABEL_9;
    }

LABEL_21:
    [v1 textContainerInset];
    v35 = 24.0;
    v37 = 24.0;
    v34 = v30;
    v36 = v32;
    return sub_23D8775A8(v30, v31, v32, v33, v34, v35, v36, v37);
  }

  sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v22(&v9[v21], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  result = sub_23D83C6E4(v9, &qword_27E2EE9E0, &qword_23D8E26D0);
LABEL_9:
  if (a1 <= 0.0)
  {
    return result;
  }

  v26 = *&v1[OBJC_IVAR____TtC22AccessibilityReadingUI13AXRUITextView_maxContentWidth];
  v27 = v26 >= a1 || v26 <= 0.0;
  v28 = (a1 - v26) * 0.5;
  if (v27)
  {
    v29 = 24.0;
  }

  else
  {
    v29 = v28;
  }

  [v1 textContainerInset];
  v34 = v30;
  v35 = v29;
  v36 = v32;
  v37 = v29;
  return sub_23D8775A8(v30, v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_23D8775A8(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v14 = sub_23D8DE750();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_23D8DE780();
  v19 = *(v18 - 8);
  result = MEMORY[0x28223BE20](v18);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = vabdd_f64(a4, a8);
  if (vabdd_f64(a2, a6) > 0.5 || v23 > 0.5)
  {
    v30 = result;
    sub_23D856774(0, &unk_27E2EEA40, 0x277D85C78);
    v29 = sub_23D8DEAF0();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = a5;
    *(v26 + 32) = a6;
    *(v26 + 40) = a7;
    *(v26 + 48) = a8;
    aBlock[4] = sub_23D878BD4;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D876358;
    aBlock[3] = &block_descriptor_104;
    v27 = _Block_copy(aBlock);

    sub_23D8DE770();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_23D878740(&qword_27E2EDE68, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEA70, &unk_23D8E1740);
    sub_23D835AD0(&qword_27E2EDE70, &unk_27E2EEA70, &unk_23D8E1740, MEMORY[0x277D83970]);
    sub_23D8DEBF0();
    v28 = v29;
    MEMORY[0x23EEF0C50](0, v22, v17, v27);
    _Block_release(v27);

    (*(v15 + 8))(v17, v14);
    return (*(v19 + 8))(v22, v30);
  }

  return result;
}

void sub_23D877904(uint64_t a1, double a2, double a3, double a4, double a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong setTextContainerInset_];
    [v10 invalidateIntrinsicContentSize];
  }
}

void sub_23D8779D0(uint64_t a1)
{
  sub_23D877A7C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_23D877A7C(uint64_t a1)
{
  if (!qword_27E2EE9C8)
  {
    sub_23D8DD850();
    v1 = sub_23D8DEBD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EE9C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_SiIegy_Sg_0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_23D877B24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D877B6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D877BE8()
{
  result = qword_27E2EE9D0;
  if (!qword_27E2EE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EE9D0);
  }

  return result;
}

uint64_t sub_23D877C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D877CAC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23D877DA4;

  return v6(a1);
}

uint64_t sub_23D877DA4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_23D877E9C(uint64_t a1)
{
  v2 = sub_23D8DEC00();

  return sub_23D877FDC(a1, v2);
}

unint64_t sub_23D877EE0(uint64_t a1)
{
  sub_23D8DE870();
  sub_23D8DED50();
  sub_23D8DE8C0();
  v2 = sub_23D8DED80();

  return sub_23D8780A4(a1, v2);
}

unint64_t sub_23D877F70(uint64_t a1)
{
  v1 = a1;
  sub_23D8DED50();
  sub_23D8DED70();
  v2 = sub_23D8DED80();

  return sub_23D8781A8(v1, v2);
}

unint64_t sub_23D877FDC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23D878798(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EEF0D60](v9, a1);
      sub_23D8359D0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_23D8780A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_23D8DE870();
      v8 = v7;
      if (v6 == sub_23D8DE870() && v8 == v9)
      {
        break;
      }

      v11 = sub_23D8DED20();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_23D8781A8(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

double sub_23D878248()
{
  v0 = sub_23D8DD850();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v26 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDDB8, &qword_23D8E26E0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E0, &qword_23D8E26D0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v27 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = sub_23D8DD3C0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  sub_23D8DD930();
  sub_23D8DD280();
  (*(v16 + 8))(v18, v15);
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  (*(v1 + 56))(v12, 0, 1, v0);
  v19 = *(v4 + 56);
  sub_23D83C67C(v14, v6, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C67C(v12, &v6[v19], &qword_27E2EE9E0, &qword_23D8E26D0);
  v20 = *(v1 + 48);
  if (v20(v6, 1, v0) == 1)
  {
    sub_23D83C6E4(v12, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
    if (v20(&v6[v19], 1, v0) == 1)
    {
      sub_23D83C6E4(v6, &qword_27E2EE9E0, &qword_23D8E26D0);
      return 24.0;
    }

    goto LABEL_6;
  }

  sub_23D83C67C(v6, v27, &qword_27E2EE9E0, &qword_23D8E26D0);
  if (v20(&v6[v19], 1, v0) == 1)
  {
    sub_23D83C6E4(v12, &qword_27E2EE9E0, &qword_23D8E26D0);
    sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
    (*(v1 + 8))(v27, v0);
LABEL_6:
    sub_23D83C6E4(v6, &qword_27E2EDDB8, &qword_23D8E26E0);
    return 0.0;
  }

  v22 = v26;
  (*(v1 + 32))(v26, &v6[v19], v0);
  sub_23D878740(&qword_27E2EEA10, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v23 = v27;
  v24 = sub_23D8DE820();
  v25 = *(v1 + 8);
  v25(v22, v0);
  sub_23D83C6E4(v12, &qword_27E2EE9E0, &qword_23D8E26D0);
  sub_23D83C6E4(v14, &qword_27E2EE9E0, &qword_23D8E26D0);
  v25(v23, v0);
  sub_23D83C6E4(v6, &qword_27E2EE9E0, &qword_23D8E26D0);
  result = 0.0;
  if (v24)
  {
    return 24.0;
  }

  return result;
}

uint64_t sub_23D878740(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_23D878788(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_23D8787F4()
{
  result = qword_27E2EEA58;
  if (!qword_27E2EEA58)
  {
    sub_23D856774(255, &unk_27E2EEA40, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEA58);
  }

  return result;
}

uint64_t sub_23D87885C()
{
  MEMORY[0x23EEF16A0](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D8788CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_23D87899C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE9E8, &unk_23D8E2A70);
  v1 = *(v0 + 16);

  sub_23D872084(v1);
}

unint64_t sub_23D878A0C()
{
  result = qword_27E2EEA80;
  if (!qword_27E2EEA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEA80);
  }

  return result;
}

unint64_t sub_23D878A84(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_23D8DECF0();
    v10 = a1 + 32;

    while (1)
    {
      sub_23D83C67C(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_23D877EE0(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_23D878788(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_23D878B9C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D878BE4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23D878C44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t sub_23D878CCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAC8, &unk_23D8E2B00);
  v3 = sub_23D8DECF0();
  LODWORD(v4) = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_23D877F70(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 2);
    v13 = *v7;

    result = sub_23D877F70(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

id sub_23D878DDC(void *a1)
{
  result = [a1 text];
  if (result)
  {
    v2 = result;
    sub_23D8DE870();

    sub_23D8DE8F0();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D878EA8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20[-v3];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 1;
  }

  v6 = Strong;
  [a1 locationInView_];
  v7 = [v6 closestPositionToPoint_];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 textStylingAtPosition:v7 inDirection:0];
    if (v9)
    {

      v10 = [v6 textStylingAtPosition:v8 inDirection:0];
      if (v10)
      {
        v11 = v10;
        type metadata accessor for Key(0);
        sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key, &unk_23D8E0834);
        v12 = sub_23D8DE7D0();

        if (*(v12 + 16))
        {
          v13 = sub_23D877EE0(*MEMORY[0x277D740E8]);
          if (v14)
          {
            sub_23D835A24(*(v12 + 56) + 32 * v13, v20);

            v15 = sub_23D8DBF20();
            v16 = swift_dynamicCast();
            v17 = *(v15 - 8);
            (*(v17 + 56))(v4, v16 ^ 1u, 1, v15);
            if ((*(v17 + 48))(v4, 1, v15) != 1)
            {
              sub_23D83C6E4(v4, &unk_27E2EEAB8, &qword_23D8E3C70);
              return 0;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
      }

      v19 = sub_23D8DBF20();
      (*(*(v19 - 8) + 56))(v4, 1, 1, v19);
LABEL_14:
      sub_23D83C6E4(v4, &unk_27E2EEAB8, &qword_23D8E3C70);
      return 1;
    }
  }

  return 1;
}

uint64_t sub_23D879198(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E2EEAB8, &qword_23D8E3C70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  [a1 locationInView_];
  v6 = [v1 closestPositionToPoint_];
  if (!v6)
  {
    return 1;
  }

  v7 = v6;
  v8 = [v1 textStylingAtPosition:v6 inDirection:0];
  if (v8)
  {

    v9 = [v1 textStylingAtPosition:v7 inDirection:0];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for Key(0);
      sub_23D878740(&qword_27E2ED1A0, type metadata accessor for Key, &unk_23D8E0834);
      v11 = sub_23D8DE7D0();

      if (*(v11 + 16))
      {
        v12 = sub_23D877EE0(*MEMORY[0x277D740E8]);
        if (v13)
        {
          sub_23D835A24(*(v11 + 56) + 32 * v12, v19);

          v14 = sub_23D8DBF20();
          v15 = swift_dynamicCast();
          v16 = *(v14 - 8);
          (*(v16 + 56))(v5, v15 ^ 1u, 1, v14);
          if ((*(v16 + 48))(v5, 1, v14) != 1)
          {
            sub_23D83C6E4(v5, &unk_27E2EEAB8, &qword_23D8E3C70);
            return 0;
          }

          goto LABEL_11;
        }
      }
    }

    v18 = sub_23D8DBF20();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
LABEL_11:
    sub_23D83C6E4(v5, &unk_27E2EEAB8, &qword_23D8E3C70);
    return 1;
  }

  return 1;
}

uint64_t sub_23D879460()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23D8794C8(__n128 a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

uint64_t sub_23D879518(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_23D835CB4;

  return sub_23D873270(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_23D8795EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23D879624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D836234;

  return sub_23D877CAC(a1, v4);
}

uint64_t sub_23D8796DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23D835CB4;

  return sub_23D877CAC(a1, v4);
}

uint64_t sub_23D8797FC@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_23D87985C@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_23D83C744(a1, a7, &qword_27E2ED118, "r^");
  v13 = type metadata accessor for SSRoundPipView(0, a5, a6, v12);
  v14 = (a7 + v13[9]);
  type metadata accessor for SSStore(0);
  sub_23D87D9DC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
  *v14 = sub_23D8DD140();
  v14[1] = v15;
  v16 = (a7 + v13[10]);
  result = sub_23D8DCEF0();
  *v16 = result;
  v16[1] = v18;
  v19 = a7 + v13[11];
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = 0;
  return result;
}

double sub_23D879960(__n128 a1)
{
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  result = *&qword_27E2EEAD0 / 3.0;
  *&qword_27E2F3C78 = *&qword_27E2EEAD0 / 3.0;
  return result;
}

uint64_t sub_23D8799C0(uint64_t a1)
{
  result = AXDeviceIsPad();
  v2 = 60.0;
  if (result)
  {
    v2 = 64.0;
  }

  v3 = 90.0;
  if (result)
  {
    v3 = 96.0;
  }

  qword_27E2EEAD0 = *&v2;
  *algn_27E2EEAD8 = v3;
  return result;
}

double pipSize.getter(__n128 a1)
{
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  return *&qword_27E2EEAD0;
}

uint64_t SSPipView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v105 = a2;
  v106 = sub_23D8DD530();
  v104 = *(v106 - 8);
  v5 = MEMORY[0x28223BE20](v106);
  v103 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v107 = v7;
  MEMORY[0x28223BE20](v5);
  v114 = v8;
  v102 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_23D8DE150();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v82 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D8DCCB0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v82 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  MEMORY[0x28223BE20](v86);
  v18 = &v82 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  MEMORY[0x28223BE20](v88);
  v20 = &v82 - v19;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAF0, &qword_23D8E2B20);
  MEMORY[0x28223BE20](v87);
  v90 = &v82 - v21;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAF8, &qword_23D8E2B28);
  MEMORY[0x28223BE20](v89);
  v109 = (&v82 - v22);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB00, &qword_23D8E2B30);
  MEMORY[0x28223BE20](v91);
  v85 = &v82 - v23;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB08, &qword_23D8E2B38);
  v92 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v110 = &v82 - v24;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB10, &qword_23D8E2B40);
  v95 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v93 = &v82 - v25;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB18, &qword_23D8E2B48);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v96 = &v82 - v26;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB20, &qword_23D8E2B50);
  MEMORY[0x28223BE20](v97);
  v99 = &v82 - v27;
  *v18 = sub_23D8DD560();
  *(v18 + 1) = 0;
  v18[16] = 1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB28, &qword_23D8E2B58);
  v29 = *(a1 + 24);
  v30 = &v18[*(v28 + 44)];
  v112 = *(a1 + 32);
  v113 = v29;
  sub_23D87A838(v29, v112, v30);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v31 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB30, &unk_23D8E2B60) + 36)];
  v32 = v120;
  *v31 = v119;
  *(v31 + 1) = v32;
  *(v31 + 2) = v121;
  v18[*(v86 + 36)] = 0;
  sub_23D87B454(v16);
  (*(v11 + 104))(v14, *MEMORY[0x277CDF3C0], v10);
  v33 = sub_23D8DCCA0();
  v34 = *(v11 + 8);
  v34(v14, v10);
  v34(v16, v10);
  if (v33)
  {
    (*(v83 + 104))(v82, *MEMORY[0x277CE0EE0], v84);
    v35 = sub_23D8DE280();
  }

  else
  {
    v35 = sub_23D8DE240();
  }

  v36 = v35;
  v37 = sub_23D8DD9E0();
  sub_23D83C744(v18, v20, &qword_27E2EEAE0, &qword_23D8E2B10);
  v38 = &v20[*(v88 + 36)];
  *v38 = v36;
  v38[8] = v37;
  v39 = v111;
  sub_23D87AC7C(v111, &v117);
  v40 = v117;
  v41 = v90;
  sub_23D83C744(v20, v90, &qword_27E2EEAE8, &qword_23D8E2B18);
  v42 = v41 + *(v87 + 36);
  *v42 = v40;
  *(v42 + 8) = 256;
  sub_23D8DE220();
  v43 = sub_23D8DE250();

  v44 = v41;
  v45 = v109;
  sub_23D83C744(v44, v109, &qword_27E2EEAF0, &qword_23D8E2B20);
  v46 = &v45[*(v89 + 36)];
  *v46 = v43;
  v46[1] = 0x4020000000000000;
  v46[2] = 0;
  v46[3] = 0;
  v108 = v3;
  sub_23D87B654(v39);
  sub_23D8DBF90();
  v48 = v47;

  v49 = v85;
  sub_23D83C744(v45, v85, &qword_27E2EEAF8, &qword_23D8E2B28);
  v50 = v91;
  *(v49 + *(v91 + 36)) = v48;
  v51 = v107;
  v109 = *(v107 + 16);
  v52 = v102;
  v53 = v39;
  (v109)(v102, v3, v39);
  v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v55 = swift_allocObject();
  v56 = v112;
  *(v55 + 16) = v113;
  *(v55 + 24) = v56;
  v107 = *(v51 + 32);
  v57 = v53;
  (v107)(v55 + v54, v52, v53);
  v58 = sub_23D87AFA0();
  sub_23D8DDE20();

  sub_23D83C6E4(v49, &qword_27E2EEB00, &qword_23D8E2B30);
  (v109)(v52, v108, v57);
  v59 = swift_allocObject();
  v60 = v112;
  *(v59 + 16) = v113;
  *(v59 + 24) = v60;
  (v107)(v59 + v54, v52, v57);
  v117 = v50;
  v118 = v58;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = v93;
  v63 = v94;
  v64 = v110;
  sub_23D8DDD60();

  (*(v92 + 8))(v64, v63);
  v65 = v111;
  (v109)(v52, v108, v111);
  v66 = swift_allocObject();
  v67 = v112;
  *(v66 + 16) = v113;
  *(v66 + 24) = v67;
  (v107)(v66 + v54, v52, v65);
  v117 = v63;
  v118 = OpaqueTypeConformance2;
  v68 = swift_getOpaqueTypeConformance2();
  v69 = v96;
  v70 = v98;
  sub_23D8DDD60();

  (*(v95 + 8))(v62, v70);
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v71 = 0xEC0000006C656261;
  v72 = 0x6C2E7069702E7373;
  if (qword_27E2F3C80)
  {
    v73 = qword_27E2F3C80;
    v74 = sub_23D8DE830();
    v75 = sub_23D8DE830();
    v76 = [v73 localizedStringForKey:v74 value:0 table:v75];

    v72 = sub_23D8DE870();
    v71 = v77;
  }

  v117 = v72;
  v118 = v71;
  v115 = v70;
  v116 = v68;
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v78 = v99;
  v79 = v101;
  sub_23D8DDE10();

  (*(v100 + 8))(v69, v79);
  v80 = v103;
  sub_23D8DD520();
  sub_23D8DCFF0();
  (*(v104 + 8))(v80, v106);
  return sub_23D83C6E4(v78, &qword_27E2EEB20, &qword_23D8E2B50);
}

uint64_t sub_23D87A838@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = a3;
  v18 = sub_23D8DD530();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DE2D0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SSPipView(0, a1, a2, v12);
  sub_23D87AB4C(v13);
  sub_23D8DE2E0();
  (*(v9 + 104))(v11, *MEMORY[0x277CE0FE0], v8);
  v14 = sub_23D8DE300();

  (*(v9 + 8))(v11, v8);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  LOBYTE(v23[0]) = 1;
  *&v22[3] = *&v22[27];
  *&v22[11] = *&v22[35];
  *&v22[19] = *&v22[43];
  v15 = sub_23D8DE220();
  v20 = v14;
  LOWORD(v21[0]) = 1;
  *(v21 + 2) = *v22;
  *(&v21[1] + 2) = *&v22[8];
  *(&v21[2] + 2) = *&v22[16];
  *&v21[3] = *&v22[23];
  *(&v21[3] + 1) = v15;
  sub_23D8DD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED28, &unk_23D8E2CE0);
  sub_23D87D8E8();
  sub_23D8DDD70();
  (*(v5 + 8))(v7, v18);
  v23[1] = v21[0];
  v23[2] = v21[1];
  v23[3] = v21[2];
  v23[4] = v21[3];
  v23[0] = v20;
  return sub_23D83C6E4(v23, &qword_27E2EED28, &unk_23D8E2CE0);
}

uint64_t sub_23D87AB4C(uint64_t a1)
{
  v3 = 0x7061742E646E6168;
  if ([*(v1 + *(a1 + 40) + 8) speakFingerState] != 4 && objc_msgSend(*(v1 + *(a1 + 40) + 8), sel_speakFingerState) != 1)
  {
    sub_23D87D864(a1);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23D8DCB70();

    if (v5 == 2)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000015;
    }
  }

  return v3;
}

uint64_t sub_23D87AC7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_23D8DD4E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_23D8DD830();
  MEMORY[0x28223BE20](v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23D87D864(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23D8DCB70();

  if (v20[15] == 2)
  {
    if (qword_27E2ECEB8 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27E2ECEB8 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:
  (*(v5 + 104))(v7, *MEMORY[0x277CE0118], v4);
  (*(v5 + 16))(&v10[*(v8 + 20)], v7, v4);
  sub_23D8DD6E0();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  (*(v5 + 8))(v7, v4);
  *v10 = v12;
  *(v10 + 1) = v14;
  *(v10 + 2) = v16;
  *(v10 + 3) = v18;
  sub_23D87D9DC(&qword_27E2EED48, MEMORY[0x277CE0550], MEMORY[0x277CE0540]);
  result = sub_23D8DE530();
  *a2 = result;
  return result;
}

unint64_t sub_23D87AFA0()
{
  result = qword_27E2EEB38;
  if (!qword_27E2EEB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB00, &qword_23D8E2B30);
    sub_23D87B02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB38);
  }

  return result;
}

unint64_t sub_23D87B02C()
{
  result = qword_27E2EEB40;
  if (!qword_27E2EEB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAF8, &qword_23D8E2B28);
    sub_23D87B0B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB40);
  }

  return result;
}

unint64_t sub_23D87B0B8()
{
  result = qword_27E2EEB48;
  if (!qword_27E2EEB48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAF0, &qword_23D8E2B20);
    sub_23D87B170();
    sub_23D835AD0(&qword_27E2EEB88, &qword_27E2EEB90, &qword_23D8E2B88, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB48);
  }

  return result;
}

unint64_t sub_23D87B170()
{
  result = qword_27E2EEB50;
  if (!qword_27E2EEB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE8, &qword_23D8E2B18);
    sub_23D87B228();
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB50);
  }

  return result;
}

unint64_t sub_23D87B228()
{
  result = qword_27E2EEB58;
  if (!qword_27E2EEB58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE0, &qword_23D8E2B10);
    sub_23D87B2E0();
    sub_23D835AD0(&qword_27E2EEB78, &qword_27E2EEB80, &qword_23D8E2B78, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB58);
  }

  return result;
}

unint64_t sub_23D87B2E0()
{
  result = qword_27E2EEB60;
  if (!qword_27E2EEB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB30, &unk_23D8E2B60);
    sub_23D835AD0(&qword_27E2EEB68, &qword_27E2EEB70, &qword_23D8E2B70, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEB60);
  }

  return result;
}

uint64_t sub_23D87B454@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D87B654(uint64_t a1)
{
  sub_23D8DBFB0();
  sub_23D87D9DC(qword_27E2EEC90, MEMORY[0x277CE78A0], MEMORY[0x277CE7898]);

  return sub_23D8DCD40();
}

uint64_t SSRoundPipView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v79 = a2;
  v80 = sub_23D8DD530();
  v78 = *(v80 - 8);
  v5 = MEMORY[0x28223BE20](v80);
  v77 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a1;
  v7 = *(a1 - 8);
  a1 -= 8;
  v81 = v7;
  MEMORY[0x28223BE20](v5);
  v89 = v8;
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  MEMORY[0x28223BE20](v9);
  v11 = &v63 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB98, &qword_23D8E2BA8);
  MEMORY[0x28223BE20](v87);
  v13 = &v63 - v12;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBA0, &qword_23D8E2BB0);
  v67 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v88 = &v63 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBA8, &qword_23D8E2BB8);
  v69 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v63 - v15;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBB0, &qword_23D8E2BC0);
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v66 = &v63 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBB8, &qword_23D8E2BC8);
  MEMORY[0x28223BE20](v73);
  v74 = &v63 - v17;
  *v11 = sub_23D8DD560();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB28, &qword_23D8E2B58);
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  sub_23D87C2A4(v3, v20, v19, &v11[*(v18 + 44)]);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v21 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEB30, &unk_23D8E2B60) + 36)];
  v22 = v97;
  *v21 = v96;
  *(v21 + 1) = v22;
  *(v21 + 2) = v98;
  v11[*(v9 + 36)] = 0;
  v23 = sub_23D8DE5D0();
  MEMORY[0x28223BE20](v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBC0, &qword_23D8E2BD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  v24 = sub_23D87B228();
  v86 = v19;
  v25 = v24;
  v26 = sub_23D87CBB8();
  v92 = v9;
  v93 = MEMORY[0x277CE1120];
  v94 = v25;
  v95 = v26;
  swift_getOpaqueTypeConformance2();
  v82 = v20;
  sub_23D87B170();
  v27 = v13;
  sub_23D8DE0A0();
  sub_23D83C6E4(v11, &qword_27E2EEAE0, &qword_23D8E2B10);
  *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBD0, &qword_23D8E2BD8) + 36)] = 256;
  sub_23D8DE220();
  v28 = sub_23D8DE250();

  v29 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEBD8, &qword_23D8E2BE0) + 36)];
  *v29 = v28;
  v29[1] = 0x4020000000000000;
  v29[2] = 0;
  v29[3] = 0;
  v30 = v65;
  v31 = v3;
  v84 = v3;
  sub_23D87B654(v65);
  sub_23D8DBF90();
  v33 = v32;

  *(v27 + *(v87 + 36)) = v33;
  v34 = v81;
  v35 = *(v81 + 16);
  v83 = v81 + 16;
  v85 = v35;
  v36 = v72;
  v35(v72, v31, v30);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = swift_allocObject();
  v39 = v82;
  v40 = v86;
  *(v38 + 16) = v82;
  *(v38 + 24) = v40;
  v81 = *(v34 + 32);
  (v81)(v38 + v37, v36, v30);
  v64 = sub_23D87CC5C();
  sub_23D8DDE20();

  sub_23D83C6E4(v27, &qword_27E2EEB98, &qword_23D8E2BA8);
  v85(v36, v84, v30);
  v41 = swift_allocObject();
  *(v41 + 16) = v39;
  *(v41 + 24) = v40;
  (v81)(v41 + v37, v36, v30);
  v92 = v87;
  v93 = v64;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v43 = v68;
  v44 = v70;
  v45 = v88;
  sub_23D8DDD60();

  (*(v67 + 8))(v45, v44);
  v85(v36, v84, v30);
  v46 = swift_allocObject();
  v47 = v86;
  *(v46 + 16) = v82;
  *(v46 + 24) = v47;
  (v81)(v46 + v37, v36, v30);
  v92 = v44;
  v93 = OpaqueTypeConformance2;
  v48 = swift_getOpaqueTypeConformance2();
  v49 = v66;
  v50 = v71;
  sub_23D8DDD60();

  (*(v69 + 8))(v43, v50);
  v51 = v50;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v52 = 0xEC0000006C656261;
  v53 = 0x6C2E7069702E7373;
  if (qword_27E2F3C80)
  {
    v54 = qword_27E2F3C80;
    v55 = sub_23D8DE830();
    v56 = sub_23D8DE830();
    v57 = [v54 localizedStringForKey:v55 value:0 table:v56];

    v53 = sub_23D8DE870();
    v52 = v58;
  }

  v92 = v53;
  v93 = v52;
  v90 = v51;
  v91 = v48;
  swift_getOpaqueTypeConformance2();
  sub_23D83CB18();
  v59 = v74;
  v60 = v76;
  sub_23D8DDE10();

  (*(v75 + 8))(v49, v60);
  v61 = v77;
  sub_23D8DD520();
  sub_23D8DCFF0();
  (*(v78 + 8))(v61, v80);
  return sub_23D83C6E4(v59, &qword_27E2EEBB8, &qword_23D8E2BC8);
}

uint64_t sub_23D87C2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a3;
  v31 = a4;
  v6 = sub_23D8DD530();
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_23D8DCCB0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v26 - v13;
  v15 = sub_23D8DE2D0();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SSRoundPipView(0, a2, v27, v19);
  v27 = a1;
  sub_23D87C6CC(v20);
  sub_23D8DE2E0();
  (*(v16 + 104))(v18, *MEMORY[0x277CE0FE0], v15);
  v26 = sub_23D8DE300();

  (*(v16 + 8))(v18, v15);
  if (qword_27E2ECEC0 != -1)
  {
    swift_once();
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v36 = 1;
  *&v35[6] = v37;
  *&v35[22] = v38;
  *&v35[38] = v39;
  sub_23D87B454(v14);
  (*(v9 + 104))(v12, *MEMORY[0x277CDF3C0], v8);
  v21 = sub_23D8DCCA0();
  v22 = *(v9 + 8);
  v22(v12, v8);
  v22(v14, v8);
  if (v21)
  {
    v23 = sub_23D8DE240();
  }

  else
  {
    v23 = sub_23D8DE220();
  }

  v32 = v26;
  LOWORD(v33[0]) = 1;
  *(v33 + 2) = *v35;
  *(&v33[1] + 2) = *&v35[16];
  *(&v33[2] + 2) = *&v35[32];
  *&v33[3] = *&v35[46];
  *(&v33[3] + 1) = v23;
  v24 = v28;
  sub_23D8DD510();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED28, &unk_23D8E2CE0);
  sub_23D87D8E8();
  sub_23D8DDD70();
  (*(v29 + 8))(v24, v30);
  v34[2] = v33[1];
  v34[3] = v33[2];
  v34[4] = v33[3];
  v34[0] = v32;
  v34[1] = v33[0];
  return sub_23D83C6E4(v34, &qword_27E2EED28, &unk_23D8E2CE0);
}

uint64_t sub_23D87C6CC(uint64_t a1)
{
  v3 = 0x7061742E646E6168;
  if ([*(v1 + *(a1 + 40) + 8) speakFingerState] != 4 && objc_msgSend(*(v1 + *(a1 + 40) + 8), sel_speakFingerState) != 1)
  {
    return 0xD000000000000022;
  }

  return v3;
}

uint64_t sub_23D87C778()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE0, &qword_23D8E2B10);
  sub_23D87B228();
  sub_23D87CBB8();
  return sub_23D8DDCC0();
}

uint64_t sub_23D87C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a1;
  v3 = sub_23D8DE150();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D8DCCB0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_23D87B454(&v21 - v12);
  (*(v8 + 104))(v11, *MEMORY[0x277CDF3C0], v7);
  v14 = sub_23D8DCCA0();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v15(v13, v7);
  if (v14)
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0EE0], v3);
    v16 = sub_23D8DE280();
  }

  else
  {
    v16 = sub_23D8DE240();
  }

  v17 = v16;
  v18 = sub_23D8DD9E0();
  sub_23D83C67C(v22, a2, &qword_27E2EEAE0, &qword_23D8E2B10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEAE8, &qword_23D8E2B18);
  v20 = a2 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

void sub_23D87CA44(uint64_t a1, SEL *a2)
{
  v5 = [objc_opt_self() sharedInstance];
  v6 = [v5 *a2];

  if (v6 == 1)
  {
    v7 = &selRef_startNewReadAllFromGesture;
  }

  else
  {
    if (v6 != 2)
    {
      return;
    }

    v7 = &selRef_speakUnderFingerButtonPressed;
  }

  v8 = *(v2 + *(a1 + 40) + 8);
  v9 = *v7;

  [v8 v9];
}

double sub_23D87CAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23D8DE640();
  sub_23D8DCE60();

  return result;
}

double sub_23D87CB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v4 = (a4)(0, a2, a3);
  sub_23D87D864(v4);

  sub_23D86088C();

  return result;
}

unint64_t sub_23D87CBB8()
{
  result = qword_27E2EEBC8;
  if (!qword_27E2EEBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBC8);
  }

  return result;
}

unint64_t sub_23D87CC5C()
{
  result = qword_27E2EEBE0;
  if (!qword_27E2EEBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB98, &qword_23D8E2BA8);
    sub_23D87CCE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBE0);
  }

  return result;
}

unint64_t sub_23D87CCE8()
{
  result = qword_27E2EEBE8;
  if (!qword_27E2EEBE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBD8, &qword_23D8E2BE0);
    sub_23D87CD74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBE8);
  }

  return result;
}

unint64_t sub_23D87CD74()
{
  result = qword_27E2EEBF0;
  if (!qword_27E2EEBF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBD0, &qword_23D8E2BD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE0, &qword_23D8E2B10);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBC0, &qword_23D8E2BD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEAE8, &qword_23D8E2B18);
    sub_23D87B228();
    sub_23D87CBB8();
    swift_getOpaqueTypeConformance2();
    sub_23D87B170();
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EEBF8, qword_27E2EEC00, &qword_23D8E2BE8, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEBF0);
  }

  return result;
}

uint64_t objectdestroyTm_4(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *(v1 + 16), *(v1 + 24));
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_23D8DCCB0();
    (*(*(v6 - 8) + 8))(v1 + v4, v6);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  sub_23D8531A4(*(v1 + v4 + *(v2 + 44)), *(v1 + v4 + *(v2 + 44) + 8));

  return MEMORY[0x2821FE8E8](v1, v4 + v5, v3 | 7);
}

double sub_23D87D0A0(uint64_t (*a1)(void, uint64_t, uint64_t), uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(a1(0, v4, v5) - 8);
  return sub_23D87CAF8(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v4, v5, a2);
}

void sub_23D87D1E0(uint64_t a1)
{
  if (!qword_27E2ED618)
  {
    sub_23D8DCCB0();
    v1 = sub_23D8DCD20();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2ED618);
    }
  }
}

void sub_23D87D238(uint64_t a1)
{
  if (!qword_27E2EEC88)
  {
    sub_23D8DBFB0();
    sub_23D87D9DC(qword_27E2EEC90, MEMORY[0x277CE78A0], MEMORY[0x277CE7898]);
    v1 = sub_23D8DCD50();
    if (!v2)
    {
      atomic_store(v1, &qword_27E2EEC88);
    }
  }
}

void sub_23D87D2D8(uint64_t a1)
{
  sub_23D87D1E0(319);
  if (v1 <= 0x3F)
  {
    sub_23D83475C(319);
    if (v2 <= 0x3F)
    {
      sub_23D8DCF20();
      if (v3 <= 0x3F)
      {
        sub_23D87D238(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40) + 8) = (a2 - 1);
  }

  return result;
}

unint64_t sub_23D87D554()
{
  result = qword_27E2EED18;
  if (!qword_27E2EED18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB20, &qword_23D8E2B50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB10, &qword_23D8E2B40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB08, &qword_23D8E2B38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB00, &qword_23D8E2B30);
    sub_23D87AFA0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D87D9DC(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED18);
  }

  return result;
}

unint64_t sub_23D87D6C4()
{
  result = qword_27E2EED20;
  if (!qword_27E2EED20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBB8, &qword_23D8E2BC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBA8, &qword_23D8E2BB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEBA0, &qword_23D8E2BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEB98, &qword_23D8E2BA8);
    sub_23D87CC5C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_23D87D9DC(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED20);
  }

  return result;
}

uint64_t sub_23D87D864(uint64_t a1)
{
  result = *(v1 + *(a1 + 36));
  if (!result)
  {
    type metadata accessor for SSStore(0);
    sub_23D87D9DC(&qword_27E2ED008, type metadata accessor for SSStore, &unk_23D8E1DE0);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

unint64_t sub_23D87D8E8()
{
  result = qword_27E2EED30;
  if (!qword_27E2EED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED28, &unk_23D8E2CE0);
    sub_23D855C08();
    sub_23D835AD0(&qword_27E2EED38, &qword_27E2EED40, &unk_23D8E3C30, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED30);
  }

  return result;
}

uint64_t sub_23D87D9DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_23D87DA4C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t SSLeadingView.init(_:)@<X0>(uint64_t a4@<X8>)
{
  sub_23D8DE310();
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  result = sub_23D8DCEF0();
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t SSLeadingView.body.getter(uint64_t a1)
{
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = v1[3];
  v11 = *v1;
  v4 = v11;
  v12 = v3;
  v13 = v5;
  v14 = v6;
  [v3 isSpeakingOrPaused];
  v7 = swift_allocObject();
  *(v7 + 16) = *(a1 + 16);
  *(v7 + 32) = v4;
  *(v7 + 40) = v3;
  *(v7 + 48) = v5;
  *(v7 + 56) = v6;

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED50, &qword_23D8E2D70);
  sub_23D884078();
  sub_23D8DE060();

  v15[1] = v9[1];
  v15[2] = v9[2];
  v16[0] = v10[0];
  *(v16 + 9) = *(v10 + 9);
  v15[0] = v9[0];
  return sub_23D83C6E4(v15, &qword_27E2EED50, &qword_23D8E2D70);
}

__n128 sub_23D87DC90@<Q0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DE2D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  LOBYTE(v33) = *(v1 + 16);
  *(&v33 + 1) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  if (v21 == 1)
  {
    v9 = [v7 currentAppBundleId];
    if (v9)
    {
      v10 = v9;
      v11 = sub_23D8DE870();
      v13 = v12;

      v14.value._countAndFlagsBits = v11;
      v14.value._object = v13;
      iconForBundleId(_:)(v14);
      sub_23D8DE2B0();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      sub_23D8DE2B0();
    }

    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v16 = sub_23D8DE300();

    (*(v4 + 8))(v6, v3);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    *&v20[38] = v32;
    *&v20[22] = v31;
    *&v20[6] = v30;
    v24 = *v20;
    v29 = 1;
    v19 = 0;
    v21 = v16;
    v22 = 0;
    v23 = 1;
    v25 = *&v20[16];
    *v26 = *&v20[32];
    *&v26[14] = *(&v32 + 1);
    v27 = 0;
  }

  else
  {
    sub_23D8DE2C0();
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v15 = sub_23D8DE300();

    (*(v4 + 8))(v6, v3);
    sub_23D8DE5F0();
    sub_23D8DCDB0();
    *&v28[38] = v32;
    *&v28[22] = v31;
    *&v28[6] = v30;
    v24 = *v28;
    LOBYTE(v33) = 1;
    v29 = 1;
    v21 = v15;
    v22 = 0;
    v23 = 1;
    v25 = *&v28[16];
    *v26 = *&v28[32];
    *&v26[14] = *(&v32 + 1);
    v27 = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DD6B0();
  v17 = v36[0];
  *(a1 + 32) = v35;
  *(a1 + 48) = v17;
  *(a1 + 57) = *(v36 + 9);
  result = v34;
  *a1 = v33;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23D87E028(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{

  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  return swift_unknownObjectRelease();
}

uint64_t sub_23D87E0B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  return v1;
}

uint64_t SSTrailingView.recordingMagnitudes.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t SSTrailingView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23D8DE310();
  v39 = v40;
  swift_unknownObjectRetain();
  v7 = sub_23D8DCEF0();
  v9 = v8;
  v10 = sub_23D8DE9A0();
  *(v10 + 16) = 5;
  __asm { FMOV            V0.4S, #1.0 }

  *(v10 + 32) = _Q0;
  *(v10 + 48) = 1065353216;
  v41 = MEMORY[0x277D84F90];
  sub_23D883E74(0, 5, 0);
  v16 = v41;
  v17 = *(v10 + 32);
  v18 = arc4random_uniform(0x14u);
  v20 = v18 + 5;
  if (v18 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v41 + 16);
    v19 = *(v41 + 24);
    v4 = v5 + 1;
    if (v5 < v19 >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D883E74((v19 > 1), v4, 1);
  v16 = v41;
LABEL_3:
  *(v16 + 16) = v4;
  *(v16 + 4 * v5 + 32) = v17 * v20;
  v21 = *(v10 + 36);
  v22 = arc4random_uniform(0x14u);
  v24 = v22 + 5;
  if (v22 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v16 + 16);
    v23 = *(v16 + 24);
    v4 = v5 + 1;
    if (v5 < v23 >> 1)
    {
      goto LABEL_5;
    }
  }

  sub_23D883E74((v23 > 1), v4, 1);
  v16 = v41;
LABEL_5:
  *(v16 + 16) = v4;
  *(v16 + 4 * v5 + 32) = v21 * v24;
  v25 = *(v10 + 40);
  v26 = arc4random_uniform(0x14u);
  v28 = v26 + 5;
  if (v26 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v16 + 16);
    v27 = *(v16 + 24);
    v4 = v5 + 1;
    if (v5 < v27 >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_23D883E74((v27 > 1), v4, 1);
LABEL_7:
  v29 = v41;
  *(v41 + 16) = v4;
  *(v41 + 4 * v5 + 32) = v25 * v28;
  v30 = *(v10 + 44);
  v31 = arc4random_uniform(0x14u);
  v33 = v31 + 5;
  if (v31 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v41 + 16);
    v32 = *(v41 + 24);
    v4 = v5 + 1;
    if (v5 < v32 >> 1)
    {
      goto LABEL_9;
    }
  }

  sub_23D883E74((v32 > 1), v4, 1);
  v29 = v41;
LABEL_9:
  *(v29 + 16) = v4;
  *(v29 + 4 * v5 + 32) = v30 * v33;
  v34 = *(v10 + 48);
  v35 = arc4random_uniform(0x14u);
  v37 = v35 + 5;
  if (v35 >= 0xFFFFFFFB)
  {
    __break(1u);
    goto LABEL_21;
  }

  v5 = *(v29 + 16);
  v36 = *(v29 + 24);
  v4 = v5 + 1;
  if (v5 >= v36 >> 1)
  {
LABEL_21:
    sub_23D883E74((v36 > 1), v4, 1);
    v29 = v41;
  }

  *(v29 + 16) = v4;
  *(v29 + 4 * v5 + 32) = v34 * v37;
  swift_unknownObjectRelease();

  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v39;
  *(a4 + 24) = v42;
  *(a4 + 32) = v29;
  return result;
}

uint64_t SSTrailingView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v4 = *(a1 + 16);
  v21 = *(a1 + 24);
  v22 = v4;
  v6 = type metadata accessor for WaveformBarView(255, v4, v21, v5);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  v30 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v28 = v6;
  *(&v28 + 1) = v8;
  *&v29 = WitnessTable;
  *(&v29 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v10 = sub_23D8DE390();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  v17 = v2[1];
  v28 = *v2;
  v29 = v17;
  v30 = *(v2 + 4);
  v24 = v22;
  v25 = v21;
  v26 = &v28;
  sub_23D8DD420();
  sub_23D8DE380();
  swift_getWitnessTable();
  sub_23D8361EC();
  v18 = *(v11 + 8);
  v18(v14, v10);
  sub_23D8361EC();
  return (v18)(v16, v10);
}

uint64_t sub_23D87E780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a3;
  v23 = a1;
  v24 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v7 = type metadata accessor for WaveformBarView(255, a2, a3, v6);
  WitnessTable = swift_getWitnessTable();
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  v38 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  v34 = v7;
  v35 = v9;
  v36 = WitnessTable;
  v37 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v11 = sub_23D8DE390();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - v16;
  sub_23D8DD410();
  v25 = a2;
  v26 = v22;
  v27 = v23;
  sub_23D8DE380();
  v18 = swift_getWitnessTable();
  sub_23D8361EC();
  v19 = *(v12 + 8);
  v19(v15, v11);
  v31 = 0;
  v32 = 1;
  v34 = &v31;
  (*(v12 + 16))(v15, v17, v11);
  v35 = v15;
  v30[0] = MEMORY[0x277CE1180];
  v30[1] = v11;
  v28 = MEMORY[0x277CE1170];
  v29 = v18;
  sub_23D8CF87C(&v34, 2uLL, v30);
  v19(v17, v11);
  return (v19)(v15, v11);
}

uint64_t sub_23D87EABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v8 = type metadata accessor for WaveformBarView(255, a2, a3, v7);
  WitnessTable = swift_getWitnessTable();
  v25 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  v31 = v26;
  v32 = MEMORY[0x277D83A90];
  v33 = OpaqueTypeMetadata2;
  v34 = v23;
  v35 = MEMORY[0x277D83AB0];
  v9 = sub_23D8DE4E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v36 = *(a1 + 32);
  v30 = v36;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a1 + 32);
  sub_23D83C67C(&v36, &v31, &qword_27E2EED60, &qword_23D8E2D78);
  v19 = type metadata accessor for SSTrailingView(0, a2, a3, v18);
  (*(*(v19 - 8) + 16))(&v31, a1, v19);
  v31 = v8;
  v32 = MEMORY[0x277D839B0];
  v33 = WitnessTable;
  v34 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8DE4C0();
  v29 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_23D8361EC();
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_23D8361EC();
  return (v20)(v15, v9);
}

uint64_t sub_23D87EE2C@<X0>(float *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = type metadata accessor for WaveformBarView(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  *&v42 = v9;
  *(&v42 + 1) = MEMORY[0x277D839B0];
  *&v43 = WitnessTable;
  *(&v43 + 1) = MEMORY[0x277D839C8];
  v33 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *a1;
  v18 = type metadata accessor for SSTrailingView(0, a3, a4, v17);
  v19 = a2[1];
  v42 = *a2;
  v43 = v19;
  *&v44 = *(a2 + 4);
  swift_unknownObjectRetain();
  v20 = sub_23D87E0B8();
  sub_23D87F1F4(1, v20, v22, v21 & 1, &v37, v16);
  v36 = [*(a2 + 1) isSpeaking];
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = a2[1];
  *(v23 + 32) = *a2;
  *(v23 + 48) = v24;
  *(v23 + 64) = *(a2 + 4);
  (*(*(v18 - 8) + 16))(&v42, a2, v18);
  v25 = swift_checkMetadataState();
  v26 = MEMORY[0x277D839B0];
  v27 = WitnessTable;
  v28 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  v44 = v39;
  v45 = v40;
  v46[0] = v41[0];
  *(v46 + 9) = *(v41 + 9);
  v42 = v37;
  v43 = v38;
  (*(*(v25 - 8) + 8))(&v42, v25);
  *&v37 = v25;
  *(&v37 + 1) = v26;
  *&v38 = v27;
  *(&v38 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v29 = *(v34 + 8);
  v29(v13, OpaqueTypeMetadata2);
  sub_23D8361EC();
  return (v29)(v15, OpaqueTypeMetadata2);
}

uint64_t sub_23D87F1F4@<X0>(char a1@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a8@<X8>, float a9@<S0>)
{
  sub_23D8DE310();
  v14 = sub_23D883540(0);
  v16 = v15;
  if (a1)
  {
    v17 = 2.0;
  }

  else
  {
    v17 = 3.0;
  }

  if (a1)
  {
    v18 = 20.0;
  }

  else
  {
    v18 = 25.0;
  }

  result = sub_23D8DCEF0();
  *a8 = a9;
  *(a8 + 4) = a1;
  *(a8 + 8) = v17;
  *(a8 + 16) = v18;
  *(a8 + 24) = v22;
  *(a8 + 32) = v23;
  *(a8 + 40) = v14;
  *(a8 + 48) = v16;
  *(a8 + 56) = result;
  *(a8 + 64) = v20;
  *(a8 + 72) = a3;
  *(a8 + 80) = a4;
  *(a8 + 88) = a5;
  return result;
}

double sub_23D87F2F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v12 = *(a3 + 16);
  v7 = *(a3 + 24);
  v8 = type metadata accessor for SSTrailingView(0, a4, a5, a4);
  (*(*(v8 - 8) + 16))(v10, a3, v8);
  v10[0] = v12;
  v11 = v7;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_23D87F3D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE340();
  return v1;
}

uint64_t SSCustomView.recordingMagnitudes.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t SSCustomView.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_23D8DE310();
  v44 = v46;
  sub_23D8DE310();
  v6 = v48;
  v45 = v46;
  swift_unknownObjectRetain();
  v7 = sub_23D8DCEF0();
  v9 = v8;
  v10 = sub_23D8DE9A0();
  *(v10 + 16) = 6;
  __asm { FMOV            V0.4S, #1.0 }

  *(v10 + 32) = _Q0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v10 + 48) = _Q0;
  v47 = MEMORY[0x277D84F90];
  sub_23D883E74(0, 6, 0);
  v16 = v47;
  v17 = *(v10 + 32);
  v18 = arc4random_uniform(0x14u);
  v20 = v18 + 5;
  if (v18 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v43 = v48;
    v4 = *(v47 + 16);
    v19 = *(v47 + 24);
    v6 = v4 + 1;
    if (v4 < v19 >> 1)
    {
      goto LABEL_3;
    }
  }

  sub_23D883E74((v19 > 1), v6, 1);
  v16 = v47;
LABEL_3:
  *(v16 + 16) = v6;
  *(v16 + 4 * v4 + 32) = v17 * v20;
  v21 = *(v10 + 36);
  v22 = arc4random_uniform(0x14u);
  v24 = v22 + 5;
  if (v22 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v4 = *(v16 + 16);
    v23 = *(v16 + 24);
    v6 = v4 + 1;
    if (v4 < v23 >> 1)
    {
      goto LABEL_5;
    }
  }

  sub_23D883E74((v23 > 1), v6, 1);
  v16 = v47;
LABEL_5:
  *(v16 + 16) = v6;
  *(v16 + 4 * v4 + 32) = v21 * v24;
  v25 = *(v10 + 40);
  v26 = arc4random_uniform(0x14u);
  v28 = v26 + 5;
  if (v26 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v24 = *(v16 + 16);
    v27 = *(v16 + 24);
    v6 = v24 + 1;
    if (v24 < v27 >> 1)
    {
      goto LABEL_7;
    }
  }

  sub_23D883E74((v27 > 1), v6, 1);
LABEL_7:
  v29 = v47;
  *(v47 + 16) = v6;
  *(v47 + 4 * v24 + 32) = v25 * v28;
  v30 = *(v10 + 44);
  v31 = arc4random_uniform(0x14u);
  v33 = v31 + 5;
  if (v31 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v47 + 16);
    v32 = *(v47 + 24);
    v6 = v28 + 1;
    if (v28 < v32 >> 1)
    {
      goto LABEL_9;
    }
  }

  sub_23D883E74((v32 > 1), v6, 1);
  v29 = v47;
LABEL_9:
  *(v29 + 16) = v6;
  *(v29 + 4 * v28 + 32) = v30 * v33;
  v34 = *(v10 + 48);
  v35 = arc4random_uniform(0x14u);
  v37 = v35 + 5;
  if (v35 >= 0xFFFFFFFB)
  {
    __break(1u);
  }

  else
  {
    v28 = *(v29 + 16);
    v36 = *(v29 + 24);
    v6 = v28 + 1;
    if (v28 < v36 >> 1)
    {
      goto LABEL_11;
    }
  }

  sub_23D883E74((v36 > 1), v6, 1);
  v29 = v47;
LABEL_11:
  *(v29 + 16) = v6;
  *(v29 + 4 * v28 + 32) = v34 * v37;
  v38 = *(v10 + 52);
  v39 = arc4random_uniform(0x14u);
  v41 = v39 + 5;
  if (v39 >= 0xFFFFFFFB)
  {
    __break(1u);
    goto LABEL_25;
  }

  v37 = *(v29 + 16);
  v40 = *(v29 + 24);
  v6 = v37 + 1;
  if (v37 >= v40 >> 1)
  {
LABEL_25:
    sub_23D883E74((v40 > 1), v6, 1);
  }

  *(v47 + 16) = v6;
  *(v47 + 4 * v37 + 32) = v38 * v41;
  swift_unknownObjectRelease();

  *a4 = v7;
  *(a4 + 8) = v9;
  *(a4 + 16) = v44;
  *(a4 + 24) = v48;
  *(a4 + 32) = v45;
  *(a4 + 40) = v43;
  *(a4 + 48) = v47;
  return result;
}

uint64_t SSCustomView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  v42 = MEMORY[0x277CE0BD8];
  v43 = MEMORY[0x277CE1180];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v36 = a1;
  v3 = *(a1 + 24);
  v34 = *(a1 + 16);
  v33 = v3;
  v5 = type metadata accessor for WaveformBarView(255, v34, v3, v4);
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D839B0];
  v8 = MEMORY[0x277D839C8];
  v9 = MEMORY[0x277CE0E30];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  *&v49 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v47 = v5;
  *(&v47 + 1) = v7;
  *&v48 = WitnessTable;
  *(&v48 + 1) = v8;
  v10 = v8;
  v31[1] = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v44 = sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
  swift_getTupleTypeMetadata3();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v11 = sub_23D8DE410();
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  v31[0] = swift_getWitnessTable();
  *&v47 = v11;
  *(&v47 + 1) = v7;
  *&v48 = v31[0];
  *(&v48 + 1) = v10;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v15 = *(OpaqueTypeMetadata2 - 8);
  v16 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v31 - v19;
  v21 = v35[1];
  v47 = *v35;
  v48 = v21;
  v49 = v35[2];
  v50 = *(v35 + 6);
  v22 = v34;
  v23 = v33;
  v38 = v34;
  v39 = v33;
  v40 = &v47;
  sub_23D8DD560();
  sub_23D8DE400();
  v45 = [*(&v47 + 1) isSpeakingOrPaused];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  v25 = v48;
  *(v24 + 32) = v47;
  *(v24 + 48) = v25;
  *(v24 + 64) = v49;
  *(v24 + 80) = v50;
  (*(*(v36 - 8) + 16))(&v41, &v47);
  v26 = MEMORY[0x277D839B0];
  v27 = v31[0];
  v28 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  (*(v32 + 8))(v13, v11);
  v41 = v11;
  v42 = v26;
  v43 = v27;
  v44 = v28;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v29 = *(v15 + 8);
  v29(v18, OpaqueTypeMetadata2);
  sub_23D8361EC();
  return (v29)(v20, OpaqueTypeMetadata2);
}

uint64_t sub_23D87FDF4@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v64 = a3;
  v63 = a2;
  v66 = a1;
  v70 = a4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E2EED78, &qword_23D8E2D88);
  v6 = MEMORY[0x28223BE20](v68);
  v69 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = (&v57 - v8);
  v84 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  v85 = MEMORY[0x277CE0BD8];
  v86 = MEMORY[0x277CE1180];
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v11 = type metadata accessor for WaveformBarView(255, a2, a3, v10);
  WitnessTable = swift_getWitnessTable();
  v13 = MEMORY[0x277D839B0];
  *&v88 = v11;
  *(&v88 + 1) = MEMORY[0x277D839B0];
  v14 = MEMORY[0x277D839C8];
  *&v89 = WitnessTable;
  *(&v89 + 1) = MEMORY[0x277D839C8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v16 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  *&v88 = v9;
  *(&v88 + 1) = MEMORY[0x277D83A90];
  *&v89 = OpaqueTypeMetadata2;
  *(&v89 + 1) = v16;
  *&v90 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v88 = v11;
  *(&v88 + 1) = v13;
  *&v89 = WitnessTable;
  *(&v89 + 1) = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v87 = sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  v17 = sub_23D8DE390();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v57 - v19;
  v21 = sub_23D8DD020();
  v61 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v23 = &v57 - v22;
  v60 = sub_23D8DD020();
  v62 = *(v60 - 8);
  v24 = MEMORY[0x28223BE20](v60);
  v65 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v58 = &v57 - v27;
  MEMORY[0x28223BE20](v26);
  v59 = &v57 - v28;
  v29 = v63;
  v71 = v63;
  v30 = v64;
  v72 = v64;
  v31 = v66;
  v73 = v66;
  sub_23D8DD420();
  sub_23D8DE380();
  sub_23D8DDA00();
  v32 = swift_getWitnessTable();
  sub_23D8DE030();
  (*(v18 + 8))(v20, v17);
  LOBYTE(v20) = *(v31 + 16);
  v33 = *(v31 + 3);
  v34 = v31;
  v36 = type metadata accessor for SSCustomView(0, v29, v30, v35);
  LOBYTE(v88) = v20 & 1;
  *(&v88 + 1) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  v81 = v32;
  v82 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v38 = v58;
  sub_23D8DE020();
  (*(v61 + 8))(v23, v21);
  v79 = v37;
  v80 = MEMORY[0x277CDF900];
  v39 = v60;
  v64 = swift_getWitnessTable();
  v40 = v59;
  sub_23D8361EC();
  v41 = v62;
  v42 = *(v62 + 8);
  v42(v38, v39);
  v43 = sub_23D8DD420();
  v44 = v67;
  *v67 = v43;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF000, &qword_23D8E3110) + 44);
  v46 = v34[1];
  v88 = *v34;
  v89 = v46;
  v90 = v34[2];
  v91 = *(v34 + 6);
  sub_23D881328(v36, v44 + v45);
  LOBYTE(v34) = sub_23D8DDA00();
  sub_23D8DCC20();
  v47 = v68;
  v48 = v44 + *(v68 + 36);
  *v48 = v34;
  *(v48 + 8) = v49;
  *(v48 + 16) = v50;
  *(v48 + 24) = v51;
  *(v48 + 32) = v52;
  *(v48 + 40) = 0;
  v77 = 0;
  v78 = 1;
  *&v88 = &v77;
  v53 = *(v41 + 16);
  v54 = v65;
  v53(v65, v40, v39);
  *(&v88 + 1) = v54;
  v55 = v69;
  sub_23D83C67C(v44, v69, qword_27E2EED78, &qword_23D8E2D88);
  *&v89 = v55;
  v84 = MEMORY[0x277CE1180];
  v85 = v39;
  v86 = v47;
  v74 = MEMORY[0x277CE1170];
  v75 = v64;
  v76 = sub_23D884EEC();
  sub_23D8CF87C(&v88, 3uLL, &v84);
  sub_23D83C6E4(v44, qword_27E2EED78, &qword_23D8E2D88);
  v42(v40, v39);
  sub_23D83C6E4(v55, qword_27E2EED78, &qword_23D8E2D88);
  return (v42)(v54, v39);
}

uint64_t sub_23D880630@<X0>(uint64_t a1@<X1>, void (*a2)(_BYTE *, uint64_t)@<X2>, uint64_t a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v32 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v6 = type metadata accessor for WaveformBarView(255, a1, a2, v5);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  *&v57 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v55 = v6;
  *(&v55 + 1) = v8;
  *&v56 = WitnessTable;
  *(&v56 + 1) = v9;
  v52[6] = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  v10 = sub_23D8DD020();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v26[-v15];
  v18 = type metadata accessor for SSCustomView(0, v30, v31, v17);
  sub_23D880AF8(v53);
  sub_23D880D1C(&v55);
  v28 = *(&v55 + 1);
  v19 = v55;
  v27 = v56;
  v20 = *(&v56 + 1);
  sub_23D880F50(v18, v14);
  v52[4] = swift_getWitnessTable();
  v52[5] = MEMORY[0x277CDF918];
  v21 = swift_getWitnessTable();
  v29 = v16;
  v30 = v21;
  v22 = v16;
  sub_23D8361EC();
  v31 = *(v11 + 8);
  v31(v14, v10);
  v48 = v53[4];
  v49 = v53[5];
  v50 = v53[6];
  v51 = v54;
  v44 = v53[0];
  v45 = v53[1];
  v46 = v53[2];
  v47 = v53[3];
  v23 = v28;
  v40 = v19;
  v41 = v28;
  LOBYTE(v6) = v27;
  v42 = v27;
  v43 = v20;
  v52[0] = &v44;
  v52[1] = &v40;
  v38 = 0;
  v39 = 1;
  v52[2] = &v38;
  (*(v11 + 16))(v14, v22, v10);
  v52[3] = v14;
  sub_23D83C67C(v53, &v55, &qword_27E2EED70, &qword_23D8E2D80);
  sub_23D834028(v19, v23, v6);

  v37[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EED70, &qword_23D8E2D80);
  v37[1] = MEMORY[0x277CE0BD8];
  v37[2] = MEMORY[0x277CE1180];
  v37[3] = v10;
  v33 = sub_23D8853E8();
  v34 = MEMORY[0x277CE0BC8];
  v35 = MEMORY[0x277CE1170];
  v36 = v30;
  sub_23D8CF87C(v52, 4uLL, v37);
  sub_23D83CB6C(v19, v23, v6);

  sub_23D83C6E4(v53, &qword_27E2EED70, &qword_23D8E2D80);
  v24 = v31;
  v31(v29, v10);
  v24(v14, v10);
  sub_23D83CB6C(v40, v41, v42);

  v59 = v48;
  v60 = v49;
  v61 = v50;
  v62 = v51;
  v55 = v44;
  v56 = v45;
  v57 = v46;
  v58 = v47;
  return sub_23D83C6E4(&v55, &qword_27E2EED70, &qword_23D8E2D80);
}

void sub_23D880AF8(uint64_t a1@<X8>)
{
  v3 = sub_23D8DE2D0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  v7 = [*(v1 + 8) currentAppBundleId];
  if (v7)
  {
    v8 = v7;
    v9 = sub_23D8DE870();
    v11 = v10;

    v12.value._countAndFlagsBits = v9;
    v12.value._object = v11;
    iconForBundleId(_:)(v12);
    sub_23D8DE2B0();
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    sub_23D8DE2B0();
  }

  (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
  v13 = sub_23D8DE300();

  (*(v4 + 8))(v6, v3);
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v22 = 1;
  *&v21[6] = v23;
  *&v21[22] = v24;
  *&v21[38] = v25;
  v14 = sub_23D8DDA10();
  sub_23D8DCC20();
  v15 = *&v21[16];
  *(a1 + 18) = *v21;
  *a1 = v13;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 34) = v15;
  *(a1 + 50) = *&v21[32];
  *(a1 + 64) = *&v21[46];
  *(a1 + 72) = v14;
  *(a1 + 80) = v16;
  *(a1 + 88) = v17;
  *(a1 + 96) = v18;
  *(a1 + 104) = v19;
  *(a1 + 112) = 0;
}

uint64_t sub_23D880D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(v1 + 8) currentAppTitle];
  if (v3)
  {
    v4 = v3;
    sub_23D8DE870();
LABEL_7:

    goto LABEL_8;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v5 = qword_27E2F3C80;
    v6 = sub_23D8DE830();
    v7 = sub_23D8DE830();
    v4 = [v5 localizedStringForKey:v6 value:0 table:v7];

    sub_23D8DE870();
    goto LABEL_7;
  }

LABEL_8:
  sub_23D8DE960();
  sub_23D83CB18();
  v8 = sub_23D8DDCB0();
  v10 = v9;
  v12 = v11;
  sub_23D8DDB50();
  v13 = sub_23D8DDC40();
  v15 = v14;
  v17 = v16;

  sub_23D83CB6C(v8, v10, v12 & 1);

  v18 = sub_23D8DDC20();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  sub_23D83CB6C(v13, v15, v17 & 1);

  *a1 = v18;
  *(a1 + 8) = v20;
  *(a1 + 16) = v22 & 1;
  *(a1 + 24) = v24;
  return result;
}

uint64_t sub_23D880F50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v4 = *(a1 + 16);
  v26 = *(a1 + 24);
  v27 = v4;
  v6 = type metadata accessor for WaveformBarView(255, v4, v26, v5);
  WitnessTable = swift_getWitnessTable();
  v8 = MEMORY[0x277D839B0];
  v9 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  *&v37 = MEMORY[0x277D83AB0];
  sub_23D8DE4E0();
  *&v35 = v6;
  *(&v35 + 1) = v8;
  *&v36 = WitnessTable;
  *(&v36 + 1) = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  v10 = sub_23D8DE390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v14 = sub_23D8DD020();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v25 - v19;
  v21 = v2[1];
  v35 = *v2;
  v36 = v21;
  v37 = v2[2];
  v38 = *(v2 + 6);
  sub_23D8DD410();
  v29 = v27;
  v30 = v26;
  v31 = &v35;
  sub_23D8DE380();
  sub_23D8DDA30();
  v22 = swift_getWitnessTable();
  sub_23D8DE030();
  (*(v11 + 8))(v13, v10);
  v32 = v22;
  v33 = MEMORY[0x277CDF918];
  swift_getWitnessTable();
  sub_23D8361EC();
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_23D8361EC();
  return (v23)(v20, v14);
}

uint64_t sub_23D881328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE590, &qword_23D8E2380);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v47 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v56 = &v45 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v53 = &v45 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v55 = &v45 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v52 = &v45 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v45 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE580, &qword_23D8E2370);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v51 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v54 = &v45 - v24;
  v26 = *(v2 + 8);
  v27 = *(v2 + 16);
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v30 = *(v2 + 40);
  v31 = *(v2 + 48);
  v69 = *v2;
  v25 = v69;
  v70 = v26;
  LOBYTE(v71) = v27;
  v72 = v28;
  LOBYTE(v73) = v29;
  v74 = v30;
  v75 = v31;
  sub_23D8822D4(a1, &v45 - v24);
  v69 = v25;
  v70 = v26;
  LOBYTE(v71) = v27;
  v72 = v28;
  LOBYTE(v73) = v29;
  v74 = v30;
  v75 = v31;
  v32 = v20;
  v50 = v20;
  v33 = a1;
  v34 = a1;
  v35 = MEMORY[0x277CE09F0];
  sub_23D882608(v33, sub_23D8850E8, sub_23D8850F8, MEMORY[0x277CE09F0], v32);
  v69 = v25;
  v70 = v26;
  LOBYTE(v71) = v27;
  v72 = v28;
  LOBYTE(v73) = v29;
  v74 = v30;
  v75 = v31;
  sub_23D882608(v34, sub_23D885058, sub_23D8850DC, MEMORY[0x277CE0978], v52);
  v69 = v25;
  v70 = v26;
  LOBYTE(v71) = v27;
  v72 = v28;
  LOBYTE(v73) = v29;
  v74 = v30;
  v75 = v31;
  sub_23D882608(v34, sub_23D885010, sub_23D885020, v35, v55);
  v69 = v25;
  v70 = v26;
  LOBYTE(v71) = v27;
  v72 = v28;
  LOBYTE(v73) = v29;
  v74 = v30;
  v75 = v31;
  v36 = v46;
  sub_23D882934(v34, v46);
  v67 = 0;
  v68 = 1;
  v69 = &v67;
  v37 = v51;
  sub_23D83C67C(v54, v51, &qword_27E2EE580, &qword_23D8E2370);
  v65 = 0;
  v66 = 1;
  v70 = v37;
  v71 = &v65;
  v38 = v53;
  sub_23D83C67C(v50, v53, &qword_27E2EE588, &qword_23D8E2378);
  v63 = 0;
  v64 = 1;
  v72 = v38;
  v73 = &v63;
  v39 = v52;
  v40 = v56;
  sub_23D83C67C(v52, v56, &qword_27E2EE588, &qword_23D8E2378);
  v61 = 0;
  v62 = 1;
  v74 = v40;
  v75 = &v61;
  v41 = v55;
  v42 = v47;
  sub_23D83C67C(v55, v47, &qword_27E2EE588, &qword_23D8E2378);
  v59 = 0;
  v60 = 1;
  v76 = v42;
  v77 = &v59;
  v43 = v48;
  sub_23D83C67C(v36, v48, &qword_27E2EE590, &qword_23D8E2380);
  v57 = 0;
  v58 = 1;
  v78 = v43;
  v79 = &v57;
  sub_23D862760(&v69, v49);
  sub_23D83C6E4(v36, &qword_27E2EE590, &qword_23D8E2380);
  sub_23D83C6E4(v41, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v39, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v50, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v54, &qword_27E2EE580, &qword_23D8E2370);
  sub_23D83C6E4(v43, &qword_27E2EE590, &qword_23D8E2380);
  sub_23D83C6E4(v42, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v56, &qword_27E2EE588, &qword_23D8E2378);
  sub_23D83C6E4(v53, &qword_27E2EE588, &qword_23D8E2378);
  return sub_23D83C6E4(v51, &qword_27E2EE580, &qword_23D8E2370);
}

double sub_23D881930(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_23D8DE640();
  sub_23D8DCE60();

  return result;
}

double sub_23D8819A8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v11 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for SSCustomView(0, a3, a4, a4);
  (*(*(v7 - 8) + 16))(v9, a1, v7);
  v9[0] = v11;
  v10 = v6;
  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_23D881AA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  v8 = type metadata accessor for WaveformBarView(255, a2, a3, v7);
  WitnessTable = swift_getWitnessTable();
  v25 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v23 = sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  v30 = v26;
  v31 = MEMORY[0x277D83A90];
  v32 = OpaqueTypeMetadata2;
  v33 = v23;
  v34 = MEMORY[0x277D83AB0];
  v9 = sub_23D8DE4E0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v35 = *(a1 + 48);
  v36 = v35;
  swift_getKeyPath();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = *(a1 + 16);
  *(v16 + 32) = *a1;
  *(v16 + 48) = v17;
  *(v16 + 64) = *(a1 + 32);
  *(v16 + 80) = *(a1 + 48);
  sub_23D83C67C(&v36, &v30, &qword_27E2EED60, &qword_23D8E2D78);
  v19 = type metadata accessor for SSCustomView(0, a2, a3, v18);
  (*(*(v19 - 8) + 16))(&v30, a1, v19);
  v30 = v8;
  v31 = MEMORY[0x277D839B0];
  v32 = WitnessTable;
  v33 = MEMORY[0x277D839C8];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_23D8DE4C0();
  v29 = OpaqueTypeConformance2;
  swift_getWitnessTable();
  sub_23D8361EC();
  v20 = *(v10 + 8);
  v20(v13, v9);
  sub_23D8361EC();
  return (v20)(v15, v9);
}

uint64_t sub_23D881E14@<X0>(float *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v9 = type metadata accessor for WaveformBarView(255, a3, a4, a4);
  WitnessTable = swift_getWitnessTable();
  *&v42 = v9;
  *(&v42 + 1) = MEMORY[0x277D839B0];
  *&v43 = WitnessTable;
  *(&v43 + 1) = MEMORY[0x277D839C8];
  v33 = MEMORY[0x277CE0E30];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = *a1;
  v18 = type metadata accessor for SSCustomView(0, a3, a4, v17);
  v19 = a2[1];
  v42 = *a2;
  v43 = v19;
  v44 = a2[2];
  *&v45 = *(a2 + 6);
  swift_unknownObjectRetain();
  v20 = sub_23D87F3D4();
  sub_23D87F1F4(0, v20, v22, v21 & 1, &v37, v16);
  v36 = [*(a2 + 1) isSpeaking];
  v23 = swift_allocObject();
  *(v23 + 16) = a3;
  *(v23 + 24) = a4;
  v24 = a2[1];
  *(v23 + 32) = *a2;
  *(v23 + 48) = v24;
  *(v23 + 64) = a2[2];
  *(v23 + 80) = *(a2 + 6);
  (*(*(v18 - 8) + 16))(&v42, a2, v18);
  v25 = swift_checkMetadataState();
  v26 = MEMORY[0x277D839B0];
  v27 = WitnessTable;
  v28 = MEMORY[0x277D839C8];
  sub_23D8DE060();

  v44 = v39;
  v45 = v40;
  v46[0] = v41[0];
  *(v46 + 9) = *(v41 + 9);
  v42 = v37;
  v43 = v38;
  (*(*(v25 - 8) + 8))(&v42, v25);
  *&v37 = v25;
  *(&v37 + 1) = v26;
  *&v38 = v27;
  *(&v38 + 1) = v28;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v29 = *(v34 + 8);
  v29(v13, OpaqueTypeMetadata2);
  sub_23D8361EC();
  return (v29)(v15, OpaqueTypeMetadata2);
}

double sub_23D8821EC(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a2;
  v12 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = type metadata accessor for SSCustomView(0, a4, a5, a4);
  (*(*(v8 - 8) + 16))(v10, a3, v8);
  v10[0] = v12;
  v11 = v7;
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE330();

  swift_unknownObjectRelease();

  return result;
}

uint64_t sub_23D8822D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF038, &qword_23D8E3168);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23[-v11];
  v13 = *(v2 + 16);
  v28[0] = *v2;
  v28[1] = v13;
  v28[2] = *(v2 + 32);
  v29 = *(v2 + 48);
  v14 = swift_allocObject();
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v17 = *(v2 + 16);
  *(v14 + 32) = *v2;
  *(v14 + 48) = v17;
  *(v14 + 64) = *(v2 + 32);
  *(v14 + 80) = *(v2 + 48);
  v24 = v15;
  v25 = v16;
  v26 = v28;
  (*(*(a1 - 8) + 16))(v27, v28, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF040, &qword_23D8E3170);
  sub_23D88514C();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF090, &qword_27E2EF038, &qword_23D8E3168, MEMORY[0x277CDF028]);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v18 = sub_23D8DE260();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF098, qword_23D8E3198) + 36)) = v18;
  sub_23D8DDB60();
  sub_23D8DDAC0();
  v19 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE580, &qword_23D8E2370);
  v22 = (a2 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  return result;
}

uint64_t sub_23D882608@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v27[2] = a4;
  v28 = a5;
  v27[1] = a3;
  v9 = sub_23D8DD080();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF020, &qword_23D8E3128);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v27 - v15;
  v17 = *(v6 + 16);
  v33[0] = *v6;
  v33[1] = v17;
  v33[2] = *(v6 + 32);
  v34 = *(v6 + 48);
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  *(v18 + 16) = v19;
  *(v18 + 24) = v20;
  v21 = *(v6 + 16);
  *(v18 + 32) = *v6;
  *(v18 + 48) = v21;
  *(v18 + 64) = *(v6 + 32);
  *(v18 + 80) = *(v6 + 48);
  v29 = v19;
  v30 = v20;
  v31 = v33;
  (*(*(a1 - 8) + 16))(v32, v33, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF028, &qword_27E2EF020, &qword_23D8E3128, MEMORY[0x277CDF028]);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v10 + 8))(v12, v9);
  (*(v14 + 8))(v16, v13);
  v22 = sub_23D8DE260();
  *(a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF030, &qword_23D8E3130) + 36)) = v22;
  v28();
  sub_23D8DDAC0();
  v23 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378);
  v26 = (a6 + *(result + 36));
  *v26 = KeyPath;
  v26[1] = v23;
  return result;
}

double sub_23D882934@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_23D8DD080();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF020, &qword_23D8E3128);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20[-v11];
  v13 = *(v2 + 16);
  v23[0] = *v2;
  v23[1] = v13;
  v23[2] = *(v2 + 32);
  v24 = *(v2 + 48);
  v21 = *(a1 + 16);
  v22 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDE10, &qword_23D8E16C8);
  sub_23D855C08();
  sub_23D8DE360();
  sub_23D8DD070();
  sub_23D835AD0(&qword_27E2EF028, &qword_27E2EF020, &qword_23D8E3128, MEMORY[0x277CDF028]);
  sub_23D884FB0();
  sub_23D8DDD10();
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v14 = sub_23D8DE260();
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF030, &qword_23D8E3130) + 36)) = v14;
  sub_23D8DDB50();
  sub_23D8DDAC0();
  v15 = sub_23D8DDB70();

  KeyPath = swift_getKeyPath();
  v17 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE588, &qword_23D8E2378) + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  LOBYTE(KeyPath) = sub_23D8DDA30();
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE590, &qword_23D8E2380) + 36);
  *v18 = KeyPath;
  result = 0.0;
  *(v18 + 8) = 0u;
  *(v18 + 24) = 0u;
  *(v18 + 40) = 1;
  return result;
}

double sub_23D882C3C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  [*(a1 + 8) speakingRateAsMultiplier];
  *&v7 = v7;
  v27[0] = localizedNameFor(speed:)(*&v7);
  sub_23D83CB18();
  v8 = sub_23D8DDCB0();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_23D8DDAB0();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  v16 = sub_23D8DDB30();
  sub_23D83C6E4(v6, &qword_27E2ED4F8, &qword_23D8E0C40);
  KeyPath = swift_getKeyPath();
  v26 = v12 & 1;
  v25 = 1;
  *&v21 = v8;
  *(&v21 + 1) = v10;
  LOBYTE(v22) = v12 & 1;
  *(&v22 + 1) = v14;
  *&v23 = 0;
  WORD4(v23) = 1;
  *&v24 = KeyPath;
  *(&v24 + 1) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF060, &qword_23D8E3180);
  sub_23D8852A0();
  sub_23D8DDF80();
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = v23;
  v27[3] = v24;
  sub_23D83C6E4(v27, &qword_27E2EF060, &qword_23D8E3180);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF058, &qword_23D8E3178) + 36)) = 257;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF040, &qword_23D8E3170) + 36));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  result = *&v23;
  v18[2] = v23;
  return result;
}

double sub_23D882E8C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  [*(a1 + 8) isSpeaking];
  sub_23D8DE2C0();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_23D8DE300();

  (*(v5 + 8))(v7, v4);
  v9 = *(a1 + 24);
  v10 = *(a1 + 16) & 1;
  LOBYTE(v15) = v10;
  *(&v15 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v15) = v10;
  *(&v15 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v14[6] = v15;
  *&v14[22] = v16;
  *&v14[38] = v17;
  v11 = *&v14[16];
  *(a2 + 18) = *v14;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v11;
  result = *&v14[32];
  *(a2 + 50) = *&v14[32];
  *(a2 + 64) = *&v14[46];
  return result;
}

double sub_23D8830E8@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = sub_23D8DE2D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_23D8DE2C0();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0FE0], v6);
  v10 = sub_23D8DE300();

  (*(v7 + 8))(v9, v6);
  v11 = *(a1 + 24);
  v12 = *(a1 + 16) & 1;
  LOBYTE(v17) = v12;
  *(&v17 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v17) = v12;
  *(&v17 + 1) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v16[6] = v17;
  *&v16[22] = v18;
  *&v16[38] = v19;
  v13 = *&v16[16];
  *(a4 + 18) = *v16;
  *a4 = v10;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  *(a4 + 34) = v13;
  result = *&v16[32];
  *(a4 + 50) = *&v16[32];
  *(a4 + 64) = *&v16[46];
  return result;
}

double sub_23D88330C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23D8DE2D0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 6];
  sub_23D8DE2C0();
  (*(v5 + 104))(v7, *MEMORY[0x277CE0FE0], v4);
  v8 = sub_23D8DE300();

  (*(v5 + 8))(v7, v4);
  v9 = *(a1 + 24);
  v10 = *(a1 + 16) & 1;
  LOBYTE(v15) = v10;
  *(&v15 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  LOBYTE(v15) = v10;
  *(&v15 + 1) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0D8, &unk_23D8E03B0);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  *&v14[6] = v15;
  *&v14[22] = v16;
  *&v14[38] = v17;
  v11 = *&v14[16];
  *(a2 + 18) = *v14;
  *a2 = v8;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 34) = v11;
  result = *&v14[32];
  *(a2 + 50) = *&v14[32];
  *(a2 + 64) = *&v14[46];
  return result;
}

uint64_t sub_23D883540(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5C0, &qword_23D8E0DF0);
  sub_23D8DE310();
  return v2;
}

uint64_t sub_23D883588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43[1] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF80, &qword_23D8E30B8);
  MEMORY[0x28223BE20](v5);
  v7 = v43 - v6;
  v8 = *(v2 + 8);
  v9 = *(sub_23D8DD090() + 20);
  v10 = *MEMORY[0x277CE0118];
  v11 = sub_23D8DD4E0();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  *v7 = v8;
  *(v7 + 1) = v8;
  v12 = [objc_opt_self() systemDarkOrangeColor];
  sub_23D8DE130();
  v13 = sub_23D8DE540();
  v15 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF88, &qword_23D8E30C0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_23D8E0D60;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;

  sub_23D8DE1F0();
  *(v16 + 48) = sub_23D8DE540();
  *(v16 + 56) = v17;
  sub_23D8DE700();
  sub_23D8DE6F0();
  sub_23D8DE550();
  sub_23D8DCE90();

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF90, &qword_23D8E30C8);
  v19 = &v7[*(v18 + 52)];
  v20 = v47;
  *v19 = v46;
  *(v19 + 1) = v20;
  *(v19 + 4) = v48;
  *&v7[*(v18 + 56)] = 256;
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEF98, &qword_23D8E30D0) + 36)];
  v22 = v49[1];
  *v21 = v49[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v49[2];
  v23 = sub_23D8DE5F0();
  v25 = v24;
  v26 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFA0, &qword_23D8E30D8) + 36)];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFA8, &qword_23D8E30E0);
  v28 = *(a1 + 16);
  v29 = *(a1 + 24);
  sub_23D883A44(v3, v26 + *(v27 + 36));
  *v26 = v23;
  v26[1] = v25;
  v30 = sub_23D8DE670();
  v44 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  v31 = v50[0];
  v32 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFB0, &qword_23D8E30E8) + 36)];
  *v32 = v30;
  v32[1] = v31;
  v33 = swift_allocObject();
  *(v33 + 16) = v28;
  *(v33 + 24) = v29;
  v34 = *(v3 + 48);
  *(v33 + 64) = *(v3 + 32);
  *(v33 + 80) = v34;
  *(v33 + 96) = *(v3 + 64);
  *(v33 + 105) = *(v3 + 73);
  v35 = *(v3 + 16);
  *(v33 + 32) = *v3;
  *(v33 + 48) = v35;
  v36 = &v7[*(v5 + 36)];
  *v36 = sub_23D884B20;
  v36[1] = v33;
  v36[2] = 0;
  v36[3] = 0;
  v37 = *(*(a1 - 8) + 16);
  v37(&v44, v3, a1);
  v44 = *(v3 + 72);
  v45 = *(v3 + 88);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED798, &unk_23D8E11A0);
  MEMORY[0x23EEF05A0](v50, v38);
  v39 = swift_allocObject();
  *(v39 + 16) = v28;
  *(v39 + 24) = v29;
  v40 = *(v3 + 48);
  *(v39 + 64) = *(v3 + 32);
  *(v39 + 80) = v40;
  *(v39 + 96) = *(v3 + 64);
  *(v39 + 105) = *(v3 + 73);
  v41 = *(v3 + 16);
  *(v39 + 32) = *v3;
  *(v39 + 48) = v41;
  v37(&v44, v3, a1);
  sub_23D884B84();
  sub_23D8DE060();

  return sub_23D83C6E4(v7, &qword_27E2EEF80, &qword_23D8E30B8);
}

double sub_23D883A44@<D0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(sub_23D8DD090() + 20);
  v6 = *MEMORY[0x277CE0118];
  v7 = sub_23D8DD4E0();
  (*(*(v7 - 8) + 104))(&a2[v5], v6, v7);
  *a2 = v4;
  *(a2 + 1) = v4;
  v10 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
  sub_23D8DE320();
  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v8 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EEFF8, &unk_23D8E3100) + 36)];
  *v8 = v10;
  *(v8 + 1) = v11;
  result = *&v12;
  *(v8 + 2) = v12;
  return result;
}

uint64_t sub_23D883B5C(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*a2 == 1)
  {
    v8 = objc_opt_self();
    v9 = swift_allocObject();
    *(v9 + 16) = a4;
    *(v9 + 24) = a5;
    v10 = *(a3 + 48);
    *(v9 + 64) = *(a3 + 32);
    *(v9 + 80) = v10;
    *(v9 + 96) = *(a3 + 64);
    *(v9 + 105) = *(a3 + 73);
    v11 = *(a3 + 16);
    *(v9 + 32) = *a3;
    *(v9 + 48) = v11;
    aBlock[4] = sub_23D884E98;
    aBlock[5] = v9;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_23D87DA4C;
    aBlock[3] = &block_descriptor_2;
    v12 = _Block_copy(aBlock);
    v14 = type metadata accessor for WaveformBarView(0, a4, a5, v13);
    (*(*(v14 - 8) + 16))(v20, a3, v14);

    v15 = [v8 scheduledTimerWithTimeInterval:1 repeats:v12 block:0.15];
    _Block_release(v12);
    v20[0] = *(a3 + 40);
    aBlock[0] = v15;
    v16 = &qword_27E2EDBE0;
    v17 = &qword_23D8E1538;
  }

  else
  {
    v20[0] = *(a3 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDBE0, &qword_23D8E1538);
    sub_23D8DE320();
    [aBlock[0] invalidate];

    v18 = *(a3 + 8);
    v20[0] = *(a3 + 24);
    aBlock[0] = v18;
    v16 = &qword_27E2ED0E0;
    v17 = &qword_23D8E1700;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  return sub_23D8DE330();
}

void sub_23D883D70(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  if (v3 > v2)
  {
    __break(1u);
  }

  else if (COERCE__INT64(fabs(v2 - v3)) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_23D883F98(0x20000000000001uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED0E0, &qword_23D8E1700);
    sub_23D8DE330();
    return;
  }

  __break(1u);
}

char *sub_23D883E74(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23D883E94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23D883E94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0A8, &unk_23D8E31D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_23D883F98(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x23EEF1600](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x23EEF1600](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D884024(__n128 a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, 64, 7);
}

unint64_t sub_23D884078()
{
  result = qword_27E2EED58;
  if (!qword_27E2EED58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED50, &qword_23D8E2D70);
    sub_23D855C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EED58);
  }

  return result;
}

uint64_t sub_23D884208(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_23D884244(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D88428C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D8842E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23D884334(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D88437C(uint64_t result, int a2, int a3)
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

uint64_t sub_23D8843DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_23D884434(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D88447C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_23D884508(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  type metadata accessor for WaveformBarView(255, v1, v2, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  sub_23D8DE4E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  swift_getTupleTypeMetadata2();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  return swift_getWitnessTable();
}

uint64_t sub_23D8846FC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED60, &qword_23D8E2D78);
  type metadata accessor for WaveformBarView(255, v1, v2, v3);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_23D835AD0(&qword_27E2EED68, &qword_27E2EED60, &qword_23D8E2D78, MEMORY[0x277D83980]);
  sub_23D8DE4E0();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  swift_getTupleTypeMetadata();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE390();
  sub_23D8DD020();
  sub_23D8DD020();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
  swift_getTupleTypeMetadata3();
  sub_23D8DE6D0();
  swift_getWitnessTable();
  sub_23D8DE410();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_23D8849D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_23D884A38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D884A80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23D884B84()
{
  result = qword_27E2EEFB8;
  if (!qword_27E2EEFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEF80, &qword_23D8E30B8);
    sub_23D884C10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFB8);
  }

  return result;
}

unint64_t sub_23D884C10()
{
  result = qword_27E2EEFC0;
  if (!qword_27E2EEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEFB0, &qword_23D8E30E8);
    sub_23D884CC8();
    sub_23D835AD0(&qword_27E2EEFE8, &qword_27E2EEFF0, &unk_23D8E30F0, MEMORY[0x277CE01A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFC0);
  }

  return result;
}

unint64_t sub_23D884CC8()
{
  result = qword_27E2EEFC8;
  if (!qword_27E2EEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEFA0, &qword_23D8E30D8);
    sub_23D884D80();
    sub_23D835AD0(&qword_27E2EEFE0, &qword_27E2EEFA8, &qword_23D8E30E0, MEMORY[0x277CE03E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFC8);
  }

  return result;
}

unint64_t sub_23D884D80()
{
  result = qword_27E2EEFD0;
  if (!qword_27E2EEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EEF98, &qword_23D8E30D0);
    sub_23D835AD0(&qword_27E2EEFD8, &qword_27E2EEF90, &qword_23D8E30C8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EEFD0);
  }

  return result;
}

uint64_t objectdestroy_24Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23D884EEC()
{
  result = qword_27E2EF008;
  if (!qword_27E2EF008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27E2EED78, &qword_23D8E2D88);
    sub_23D835AD0(&qword_27E2EF010, &qword_27E2EF018, &unk_23D8E3118, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF008);
  }

  return result;
}

unint64_t sub_23D884FB0()
{
  result = qword_27E2ED4F0;
  if (!qword_27E2ED4F0)
  {
    sub_23D8DD080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2ED4F0);
  }

  return result;
}

id sub_23D885058()
{
  v1 = *(v0 + 40);
  if ([v1 isSpeaking])
  {
    v2 = sel_pauseButtonPressed;
    v3 = v1;
  }

  else
  {
    v2 = sel_playButtonPressedForBundleID_sceneID_rootAccessibilityElementIdentifier_;
    v3 = v1;
  }

  return [v3 v2];
}

unint64_t sub_23D88514C()
{
  result = qword_27E2EF048;
  if (!qword_27E2EF048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF040, &qword_23D8E3170);
    sub_23D8851D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF048);
  }

  return result;
}

unint64_t sub_23D8851D8()
{
  result = qword_27E2EF050;
  if (!qword_27E2EF050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF058, &qword_23D8E3178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF060, &qword_23D8E3180);
    sub_23D8852A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF050);
  }

  return result;
}

unint64_t sub_23D8852A0()
{
  result = qword_27E2EF068;
  if (!qword_27E2EF068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF060, &qword_23D8E3180);
    sub_23D885378(&qword_27E2EF070, &qword_27E2EF078, &qword_23D8E3188);
    sub_23D835AD0(&qword_27E2EF080, &qword_27E2EF088, &qword_23D8E3190, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF068);
  }

  return result;
}

uint64_t sub_23D885378(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_23D8853E8()
{
  result = qword_27E2EF0A0;
  if (!qword_27E2EF0A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EED70, &qword_23D8E2D80);
    sub_23D855C08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF0A0);
  }

  return result;
}

uint64_t objectdestroy_2Tm(__n128 a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, 88, 7);
}

uint64_t objectdestroy_54Tm(__n128 a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, 72, 7);
}

uint64_t get_witness_table_22AccessibilityReadingUI15AXRUIObservableRzlqd0__05SwiftC04ViewHD3_AcDPACE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAC19_ConditionalContentVyAC08ModifiedL0VyALyAC5ImageVAC18_AspectRatioLayoutVGAC06_FrameQ0VGATG_SbQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t get_enum_tag_for_layout_string_Ieg_SgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D885640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_23D88569C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_23D885728@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = sub_23D8DD770();
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_23D8DCCB0();
  v6 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C0, &qword_23D8E32E8);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v48 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C8, &qword_23D8E32F0);
  MEMORY[0x28223BE20](v50);
  v14 = v48 - v13;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0D0, &qword_23D8E32F8);
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = v48 - v15;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0D8, &qword_23D8E3300);
  MEMORY[0x28223BE20](v52);
  v17 = v48 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0E0, &qword_23D8E3308);
  v18 = MEMORY[0x28223BE20](v59);
  v49 = v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v58 = v48 - v20;
  v21 = *a1;
  v62 = a1[1];
  v63 = v21;
  v22 = *(a1 + 4);
  v48[1] = *(a1 + 5);
  v23 = swift_allocObject();
  v24 = a1[1];
  v23[1] = *a1;
  v23[2] = v24;
  v23[3] = a1[2];
  sub_23D83C67C(&v63, v61, &qword_27E2EF0E8, &qword_23D8E3310);
  sub_23D83C67C(&v62, v61, &qword_27E2EF0F0, &qword_23D8E3318);
  sub_23D855A1C();

  sub_23D8DE360();
  v25 = sub_23D8DE230();
  v26 = sub_23D8DD9E0();
  v27 = &v12[*(v10 + 44)];
  *v27 = v25;
  v27[8] = v26;
  if (v22)
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v28 = sub_23D8DEB80();
    v29 = sub_23D8DEB70();

    v30 = MEMORY[0x277CDF3D0];
    if ((v29 & 1) == 0)
    {
      v30 = MEMORY[0x277CDF3C0];
    }

    v31 = v54;
    (*(v6 + 104))(v8, *v30, v54);
    KeyPath = swift_getKeyPath();
    v33 = &v14[*(v50 + 36)];
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED570, &qword_23D8E0D00);
    (*(v6 + 32))(v33 + *(v34 + 28), v8, v31);
    *v33 = KeyPath;
    sub_23D886460(v12, v14);
    sub_23D8DD760();
    sub_23D8864D0();
    sub_23D8868D4(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    v35 = v51;
    v36 = v57;
    sub_23D8DDD10();
    (*(v56 + 8))(v5, v36);
    sub_23D88666C(v14);
    v37 = &v17[*(v52 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDCF0, &qword_23D8E1608);
    sub_23D8DD0E0();
    *v37 = 0;
    (*(v53 + 32))(v17, v35, v55);
    sub_23D8866D4();
    v38 = v49;
    sub_23D8DDEE0();
    sub_23D83C6E4(v17, &qword_27E2EF0D8, &qword_23D8E3300);
    v39 = 0x800000023D8E6850;
    if (qword_27E2ECEC8 != -1)
    {
      swift_once();
    }

    v40 = 0xD000000000000010;
    if (qword_27E2F3C80)
    {
      v41 = qword_27E2F3C80;
      v42 = sub_23D8DE830();
      v43 = sub_23D8DE830();
      v44 = [v41 localizedStringForKey:v42 value:0 table:v43];

      v40 = sub_23D8DE870();
      v39 = v45;
    }

    v61[0] = v40;
    v61[1] = v39;
    sub_23D83CB18();
    v46 = v58;
    sub_23D8DCFD0();

    sub_23D83C6E4(v38, &qword_27E2EF0E0, &qword_23D8E3308);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EDC98, &qword_23D8E15E0);
    sub_23D886818();
    sub_23D835AD0(&qword_27E2EDCF8, &qword_27E2EDC98, &qword_23D8E15E0, MEMORY[0x277CE1198]);
    sub_23D8DDF70();
    return sub_23D83C6E4(v46, &qword_27E2EF0E0, &qword_23D8E3308);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D8868D4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D885F74(void (**a1)(uint64_t))
{
  v2 = a1[2];
  if (v2)
  {
    v3 = v2;
    sub_23D8DC3D0();

    v4 = *a1;
    if (*a1 >= 2)
    {
      v5 = a1[1];
      v6 = sub_23D83BCD8(*a1, v5);
      v4(v6);

      sub_23D88691C(v4, v5);
    }
  }

  else
  {
    sub_23D8DC430();
    sub_23D8868D4(&unk_27E2F0420, MEMORY[0x277CE7230], MEMORY[0x277CE7228]);
    sub_23D8DD120();
    __break(1u);
  }
}

__n128 sub_23D886060@<Q0>(__n128 *a1@<X8>)
{
  sub_23D8DC9F0();
  sub_23D8868D4(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
  v2 = sub_23D8DD140();
  v4 = v3;
  sub_23D8DE310();
  sub_23D8DE310();
  result = v6;
  *a1 = v6;
  a1[1].n128_u64[0] = v7;
  a1[1].n128_u16[4] = 1;
  a1[2].n128_u64[0] = v2;
  a1[2].n128_u64[1] = v4;
  a1[3].n128_u8[0] = v6.n128_u8[0];
  a1[3].n128_u64[1] = v6.n128_u64[1];
  return result;
}

__n128 sub_23D886158@<Q0>(__n128 *a2@<X8>)
{
  v3 = sub_23D8DD560();
  sub_23D8861C4(&v8);
  v4 = v8;
  v5 = v10;
  v6 = v11;
  result = v9;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = 0;
  a2[1].n128_u8[0] = 1;
  a2[1].n128_u64[1] = v4;
  a2[2] = result;
  a2[3].n128_u8[0] = v5;
  a2[3].n128_u64[1] = v6;
  return result;
}

uint64_t sub_23D8861C4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_23D8DE2C0();
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v3 = qword_27E2F3C80;
    v4 = sub_23D8DE830();
    v5 = sub_23D8DE830();
    v6 = [v3 localizedStringForKey:v4 value:0 table:v5];

    sub_23D8DE870();
  }

  sub_23D83CB18();
  v7 = sub_23D8DDCB0();
  v9 = v8;
  *a1 = v2;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  v11 = v10 & 1;
  *(a1 + 24) = v10 & 1;
  *(a1 + 32) = v12;

  sub_23D834028(v7, v9, v11);

  sub_23D83CB6C(v7, v9, v11);
}

uint64_t sub_23D886368@<X0>(uint64_t a2@<X8>)
{
  v4 = v2[1];
  v8[0] = *v2;
  v8[1] = v4;
  v8[2] = v2[2];
  *a2 = sub_23D8DD560();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0B0, &qword_23D8E32D8) + 44);
  *v5 = sub_23D8DD420();
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0B8, &qword_23D8E32E0);
  return sub_23D885728(v8, v5 + *(v6 + 44));
}

uint64_t sub_23D8863FC()
{
  if (*(v0 + 16) >= 2uLL)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_23D886460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C0, &qword_23D8E32E8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23D8864D0()
{
  result = qword_27E2EF0F8;
  if (!qword_27E2EF0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C8, &qword_23D8E32F0);
    sub_23D886588();
    sub_23D835AD0(qword_27E2ED678, &qword_27E2ED570, &qword_23D8E0D00, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF0F8);
  }

  return result;
}

unint64_t sub_23D886588()
{
  result = qword_27E2EF100;
  if (!qword_27E2EF100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C0, &qword_23D8E32E8);
    sub_23D835AD0(&qword_27E2EF108, &qword_27E2EF110, &unk_23D8E3358, MEMORY[0x277CDF028]);
    sub_23D835AD0(&qword_27E2ED8B0, &qword_27E2ED8B8, &qword_23D8E2B80, MEMORY[0x277CE0728]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF100);
  }

  return result;
}

uint64_t sub_23D88666C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EF0C8, &qword_23D8E32F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23D8866D4()
{
  result = qword_27E2EF118;
  if (!qword_27E2EF118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0D8, &qword_23D8E3300);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0C8, &qword_23D8E32F0);
    sub_23D8DD770();
    sub_23D8864D0();
    sub_23D8868D4(&qword_27E2ED300, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_23D835AD0(&qword_27E2EDCE8, &qword_27E2EDCF0, &qword_23D8E1608, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF118);
  }

  return result;
}

unint64_t sub_23D886818()
{
  result = qword_27E2EF120;
  if (!qword_27E2EF120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2EF0E0, &qword_23D8E3308);
    sub_23D8866D4();
    sub_23D8868D4(&qword_27E2ED4D8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2EF120);
  }

  return result;
}

uint64_t sub_23D8868D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_23D88691C(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
    return sub_23D8797C4(a1, a2);
  }

  return result;
}

uint64_t sub_23D886984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_23D886AC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED118, "r^");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED110, &unk_23D8E03D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t type metadata accessor for AXRTextColorSelectionView(uint64_t a1)
{
  result = qword_27E2EF138;
  if (!qword_27E2EF138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D886C50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_23D8DD3C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  MEMORY[0x28223BE20](v8);
  v10 = &v14 - v9;
  sub_23D83C67C(v2, &v14 - v9, &qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCCB0();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_23D886E50@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_23D8DD3C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for AXRTextColorSelectionView(0);
  sub_23D83C67C(v1 + *(v10 + 20), v9, &qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_23D8DCF90();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_23D8DEAB0();
    v13 = sub_23D8DD990();
    sub_23D8DCAD0();

    sub_23D8DD3B0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_23D887058()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23D8E23D0;
  *(inited + 32) = sub_23D8DE220();
  *(inited + 40) = sub_23D8DE1B0();
  *(inited + 48) = sub_23D8DE1C0();
  *(inited + 56) = sub_23D8DE1D0();
  *(inited + 64) = sub_23D8DE240();
  v5 = v0;
  v2 = sub_23D8A5668(sub_23D8890B4, &v4, inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v2 & 1;
}

uint64_t sub_23D887128(uint64_t *a1, uint64_t a2)
{
  sub_23D86C2EC();

  sub_23D8DE2A0();
  if (*(a2 + *(type metadata accessor for AXRTextColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC810();

    if (!v3)
    {
      sub_23D8DE220();
    }

    sub_23D8DE2A0();
    v4 = sub_23D8DE180();

    return v4 & 1;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D887288@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5D8, &unk_23D8E24C0);
  v3 = *(v32 - 8);
  v4 = MEMORY[0x28223BE20](v32);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E0, &unk_23D8E3410);
  v31 = *(v9 - 8);
  v10 = v31;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5E8, &unk_23D8E24D0);
  sub_23D86BE68();
  v30 = v15;
  sub_23D8DE520();
  v34 = a1;
  type metadata accessor for AXRCustomizationColorButton(0);
  sub_23D86BF20(&qword_27E2EE608, type metadata accessor for AXRCustomizationColorButton, &unk_23D8E17FC);
  v16 = v8;
  v28 = v8;
  sub_23D8DE520();
  v17 = *(v10 + 16);
  v29 = v9;
  v17(v13, v15, v9);
  v18 = *(v3 + 16);
  v19 = v16;
  v20 = v32;
  v18(v6, v19, v32);
  v21 = v33;
  v17(v33, v13, v9);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE610, &qword_23D8E24E0);
  v23 = v6;
  v18(&v21[*(v22 + 48)], v6, v20);
  v24 = *(v3 + 8);
  v24(v28, v20);
  v25 = *(v31 + 8);
  v26 = v29;
  v25(v30, v29);
  v24(v23, v20);
  return (v25)(v13, v26);
}

uint64_t sub_23D8875D8(uint64_t a1)
{
  v2 = type metadata accessor for AXRTextColorSelectionView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE618, &unk_23D8E3490);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_23D8E23D0;
  *(v5 + 32) = sub_23D8DE220();
  *(v5 + 40) = sub_23D8DE1B0();
  *(v5 + 48) = sub_23D8DE1C0();
  *(v5 + 56) = sub_23D8DE1D0();
  *(v5 + 64) = sub_23D8DE240();
  v9[1] = v5;
  swift_getKeyPath();
  sub_23D888D50(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_23D888DB8(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE628, &unk_23D8E2570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE600, &unk_23D8E3420);
  sub_23D835AD0(&qword_27E2EE630, &qword_27E2EE628, &unk_23D8E2570, MEMORY[0x277D83980]);
  sub_23D86C2EC();
  sub_23D835AD0(&qword_27E2EE5F8, &qword_27E2EE600, &unk_23D8E3420, MEMORY[0x277CDF028]);
  return sub_23D8DE4C0();
}

double sub_23D887818(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = *a1;
  v7 = v16;
  sub_23D86C2EC();

  v8 = sub_23D8DE2A0();
  sub_23D888D50(a2, &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  sub_23D888DB8(&v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  v13 = v7;
  v14 = a2;
  v15 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE638, &unk_23D8E34C0);
  sub_23D835AD0(&qword_27E2EE640, &qword_27E2EE638, &unk_23D8E34C0, MEMORY[0x277CE1138]);
  sub_23D8DE360();

  return result;
}

uint64_t sub_23D8879F4(uint64_t a1, uint64_t a2)
{
  v3 = sub_23D8DC510();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + *(type metadata accessor for AXRTextColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC820();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D887B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_23D8DD420();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE648, &unk_23D8E2580);
  return sub_23D887C04(a1, a2, a3, a4 + *(v8 + 44));
}

uint64_t sub_23D887C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v92 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE650, &unk_23D8E34D0);
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v82 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE658, &unk_23D8E2590);
  v9 = MEMORY[0x28223BE20](v90);
  v96 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v89 = &v82 - v12;
  MEMORY[0x28223BE20](v11);
  v95 = &v82 - v13;
  v14 = sub_23D8DCCB0();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v84 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v82 - v17;
  v18 = sub_23D8DCF90();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8380E8();
  sub_23D8DEB40();
  v104 = sub_23D8DE130();
  sub_23D8DCD60();
  v22 = v151;
  v98 = v153;
  v99 = v152;
  v23 = v154;
  v97 = v155;
  v24 = v156;
  v25 = sub_23D8DE5F0();
  v102 = v26;
  v103 = v25;
  v27 = sub_23D8DE5F0();
  v100 = v28;
  v101 = v27;
  v106 = a1;

  v105 = a2;
  sub_23D886E50(v21);
  v29 = sub_23D8DCF80();
  v30 = *(v19 + 8);
  v30(v21, v18);
  if (v29)
  {
    v31 = [objc_opt_self() mainScreen];
    [v31 bounds];
  }

  sub_23D886E50(v21);
  v32 = sub_23D8DCF80();
  v30(v21, v18);
  if (v32)
  {
    v33 = [objc_opt_self() mainScreen];
    [v33 &selRef_scrollViewWillBeginDragging_];
  }

  sub_23D8DE5F0();
  sub_23D8DCDB0();
  v88 = sub_23D8DDA30();
  sub_23D8DCC20();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v149 = 0;
  v120 = sub_23D8DE1A0();
  v121 = v42;
  sub_23D83CB18();
  v83 = sub_23D8DDCB0();
  v44 = v43;
  v46 = v45;
  v85 = v47;
  v48 = v82;
  sub_23D886C50(v82);
  v49 = v86;
  v50 = v87;
  v51 = v84;
  (*(v86 + 104))(v84, *MEMORY[0x277CDF3C0], v87);
  v52 = sub_23D8DCCA0();
  v53 = *(v49 + 8);
  v53(v51, v50);
  v53(v48, v50);
  if (v52)
  {
    v54 = sub_23D8DE240();
  }

  else
  {
    v54 = sub_23D8DE220();
  }

  v55 = v91;
  v120 = v54;
  v56 = v83;
  v84 = sub_23D8DDC10();
  v87 = v57;
  v59 = v58;
  v61 = v60;
  sub_23D83CB6C(v56, v44, v46 & 1);

  v120 = sub_23D8DE2C0();
  sub_23D8DDF80();

  if (*(v105 + *(type metadata accessor for AXRTextColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v62 = sub_23D8DC810();

    v91 = v61;
    LODWORD(v86) = v59;
    v63 = v84;
    if (!v62)
    {
      v62 = sub_23D8DE220();
    }

    v120 = v62;
    sub_23D86C2EC();
    sub_23D8DE2A0();
    v64 = sub_23D8DE180();

    if (v64)
    {
      v65 = 1.0;
    }

    else
    {
      v65 = 0.0;
    }

    v66 = v89;
    (*(v93 + 32))(v89, v55, v94);
    *(v66 + *(v90 + 36)) = v65;
    v67 = v95;
    sub_23D86C79C(v66, v95);
    v107 = v146;
    v108 = v147;
    v109 = v148;
    v68 = v96;
    sub_23D86C80C(v67, v96);
    *&v110 = v106;
    WORD4(v110) = 256;
    *(&v110 + 10) = v159;
    HIWORD(v110) = v160;
    *&v111 = v22;
    *(&v111 + 1) = __PAIR64__(v98, v99);
    *&v112 = v23;
    *(&v112 + 1) = v97;
    *&v113 = v24;
    *(&v113 + 1) = v104;
    LOWORD(v114) = 256;
    *(&v114 + 2) = v157;
    WORD3(v114) = v158;
    *(&v114 + 1) = v103;
    *&v115 = v102;
    *(&v115 + 1) = v101;
    *&v116[0] = v100;
    *(v116 + 8) = v146;
    *(&v116[2] + 8) = v148;
    *(&v116[1] + 8) = v147;
    v69 = v88;
    BYTE8(v116[3]) = v88;
    *(&v116[3] + 9) = *v150;
    HIDWORD(v116[3]) = *&v150[3];
    *&v117 = v35;
    *(&v117 + 1) = v37;
    *&v118 = v39;
    *(&v118 + 1) = v41;
    v119 = 0;
    v70 = v116[3];
    v71 = v117;
    v72 = v118;
    *(a4 + 192) = 0;
    *(a4 + 160) = v71;
    *(a4 + 176) = v72;
    v73 = v110;
    v74 = v111;
    v75 = v113;
    *(a4 + 32) = v112;
    *(a4 + 48) = v75;
    v76 = v114;
    *a4 = v73;
    *(a4 + 16) = v74;
    v77 = v116[1];
    *(a4 + 128) = v116[2];
    *(a4 + 144) = v70;
    v78 = v115;
    *(a4 + 96) = v116[0];
    *(a4 + 112) = v77;
    *(a4 + 64) = v76;
    *(a4 + 80) = v78;
    v79 = v87;
    *(a4 + 200) = v63;
    *(a4 + 208) = v79;
    LOBYTE(v66) = v86 & 1;
    *(a4 + 216) = v86 & 1;
    *(a4 + 224) = v91;
    *(a4 + 232) = 0;
    *(a4 + 240) = 1;
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE660, &unk_23D8E34E0);
    sub_23D86C80C(v68, a4 + *(v80 + 80));
    sub_23D83C67C(&v110, &v120, &qword_27E2EE668, &qword_23D8E25A0);
    sub_23D834028(v63, v79, v66);

    sub_23D86C87C(v67);
    sub_23D86C87C(v68);
    sub_23D83CB6C(v63, v79, v66);

    v120 = v106;
    LOWORD(v121) = 256;
    *(&v121 + 2) = v159;
    HIWORD(v121) = v160;
    v122 = v22;
    v123 = v99;
    v124 = v98;
    v125 = v23;
    v126 = v97;
    v127 = v24;
    v128 = v104;
    v129 = 256;
    v130 = v157;
    v131 = v158;
    v132 = v103;
    v133 = v102;
    v134 = v101;
    v135 = v100;
    v136 = v107;
    v137 = v108;
    v138 = v109;
    v139 = v69;
    *v140 = *v150;
    *&v140[3] = *&v150[3];
    v141 = v35;
    v142 = v37;
    v143 = v39;
    v144 = v41;
    v145 = 0;
    return sub_23D86C8E4(&v120);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void *sub_23D8885CC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for AXRTextColorSelectionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = 0x800000023D8E6230;
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  v8 = 0xD000000000000010;
  if (qword_27E2F3C80)
  {
    v9 = qword_27E2F3C80;
    v10 = sub_23D8DE830();
    v11 = sub_23D8DE830();
    v12 = v5;
    v13 = [v9 localizedStringForKey:v10 value:0 table:v11];

    v8 = sub_23D8DE870();
    v7 = v14;

    v5 = v12;
  }

  v35 = v8;
  v36 = v7;
  LODWORD(v34) = sub_23D887058();
  if (*(a1 + *(v4 + 24)))
  {
    sub_23D8380E8();

    sub_23D8DC960();

    sub_23D8DC7E0();

    v15 = sub_23D8DEB80();
    v33 = sub_23D8DEB70();

    sub_23D888D50(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    sub_23D8DE9D0();
    v16 = sub_23D8DE9C0();
    v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v18 = swift_allocObject();
    v19 = MEMORY[0x277D85700];
    *(v18 + 16) = v16;
    *(v18 + 24) = v19;
    sub_23D888DB8(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v18 + v17);
    sub_23D888D50(a1, &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v20 = sub_23D8DE9C0();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = v19;
    sub_23D888DB8(&v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v21 + v17);
    sub_23D8DE480();
    v22 = v40;
    LOBYTE(v17) = v34 & 1;
    v23 = v33 & 1;
    v34 = v41;
    *a2 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
    swift_storeEnumTagMultiPayload();
    KeyPath = swift_getKeyPath();
    v25 = type metadata accessor for AXRCustomizationColorButton(0);
    *(a2 + v25[5]) = KeyPath;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
    swift_storeEnumTagMultiPayload();
    v26 = (a2 + v25[6]);
    v27 = v36;
    *v26 = v35;
    v26[1] = v27;
    *(a2 + v25[7]) = v17;
    *(a2 + v25[8]) = v23;
    *(a2 + v25[9]) = 0;
    v28 = a2 + v25[10];
    *v28 = v22;
    *(v28 + 8) = v34;
    v29 = a2 + v25[11];
    v37 = 0;
    result = sub_23D8DE310();
    v31 = v39;
    *v29 = v38;
    *(v29 + 1) = v31;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

void sub_23D888A14(uint64_t a1@<X2>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for AXRTextColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    v3 = sub_23D8DC810();

    if (!v3)
    {
      v3 = sub_23D8DE1F0();
    }

    *a2 = v3;
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    sub_23D8DD120();
    __break(1u);
  }
}

uint64_t sub_23D888AF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23D8DC510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a4 + *(type metadata accessor for AXRTextColorSelectionView(0) + 24)))
  {

    sub_23D8DC960();

    sub_23D8DC820();

    sub_23D8DC970();
    sub_23D8DC950();

    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    sub_23D8DC9F0();
    sub_23D86BF20(&qword_27E2ED238, MEMORY[0x277CE73F8], MEMORY[0x277CE73F0]);
    result = sub_23D8DD120();
    __break(1u);
  }

  return result;
}

uint64_t sub_23D888C94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE5C0, &unk_23D8E3400);
  sub_23D835AD0(&qword_27E2EE5C8, &qword_27E2EE5C0, &unk_23D8E3400, MEMORY[0x277CE14C0]);
  return sub_23D8DDBC0();
}

uint64_t sub_23D888D50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23D888DB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AXRTextColorSelectionView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_23D888E1C(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  sub_23D888A14(v4, a1);
}

uint64_t objectdestroyTm_5()
{
  v1 = type metadata accessor for AXRTextColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23D889030(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView(0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_23D888AF0(a1, v4, v5, v6);
}

uint64_t sub_23D8890D4()
{
  v1 = type metadata accessor for AXRTextColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_23D88926C(uint64_t *a1)
{
  v3 = *(type metadata accessor for AXRTextColorSelectionView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_23D887818(a1, v4);
}

uint64_t sub_23D8892EC()
{
  v1 = type metadata accessor for AXRTextColorSelectionView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED5B8, &unk_23D8E1860);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_23D8DCCB0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED308, &qword_23D8E0A70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_23D8DCF90();
    (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_23D889498()
{
  v1 = *(type metadata accessor for AXRTextColorSelectionView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_23D8879F4(v0 + v2, v3);
}

uint64_t sub_23D889578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23D8DD6A0();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_23D8DD6B0();
}

uint64_t sub_23D889670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_23D8DD6A0();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_23D8DD6B0();
}

uint64_t String.localized.getter(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v4 = qword_27E2F3C80;
    v5 = sub_23D8DE830();
    v6 = sub_23D8DE830();
    v7 = [v4 localizedStringForKey:v5 value:0 table:v6];

    a1 = sub_23D8DE870();
  }

  else
  {
  }

  return a1;
}

Swift::String __swiftcall Double.timeDisplayString()()
{
  if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v0 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v0 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto _$sSd22AccessibilityReadingUIE17timeDisplayStringSSyF;
  }

  v1 = ((((34953 * (v0 % 3600)) >> 16) >> 5) + (((v0 % 3600 + ((-30583 * (v0 % 3600)) >> 16)) & 0x8000) >> 15));
  v2 = v0 % 60;
  if (v0 < 3600)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_23D8E0D60;
    v8 = MEMORY[0x277D83B88];
    v9 = MEMORY[0x277D83C10];
    *(v7 + 56) = MEMORY[0x277D83B88];
    *(v7 + 64) = v9;
    *(v7 + 32) = v1;
    *(v7 + 96) = v8;
    *(v7 + 104) = v9;
    *(v7 + 72) = v2;
  }

  else
  {
    v3 = v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_23D8E34F0;
    v5 = MEMORY[0x277D83B88];
    v6 = MEMORY[0x277D83C10];
    *(v4 + 56) = MEMORY[0x277D83B88];
    *(v4 + 64) = v6;
    *(v4 + 32) = v3 / 0xE10;
    *(v4 + 96) = v5;
    *(v4 + 104) = v6;
    *(v4 + 72) = v1;
    *(v4 + 136) = v5;
    *(v4 + 144) = v6;
    *(v4 + 112) = v2;
  }

  v10 = sub_23D8DE880();
_$sSd22AccessibilityReadingUIE17timeDisplayStringSSyF:
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t blockFont(forModel:isHeader:headingLevel:)(char *a1, char a2, void (*a3)(char *, id), int a4)
{
  LODWORD(v81) = a4;
  v76 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v83 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v75 = &v75 - v9;
  v10 = sub_23D8DCF90();
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x28223BE20](v10);
  v78 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D8DCA70();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v75 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v82 = &v75 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v75 - v25;
  v27 = sub_23D8DDBB0();
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  MEMORY[0x28223BE20](v31);
  v84 = v33;
  if (a2)
  {
    v83 = a1;
    v35 = *MEMORY[0x277D76A20];
    v36 = *MEMORY[0x277CE0A80];
    v37 = *(v33 + 104);
    v77 = &v75 - v32;
    v37();
    if (v81)
    {
      v38 = v35;
      v39 = 22.0;
    }

    else if (v76 == 2)
    {
      v81 = v27;
      v76 = *(v84 + 8);
      v38 = v35;
      v59 = v77;
      v76(v77, v81);
      v27 = v81;
      (v37)(v59, v36, v81);
      v39 = 22.0;
    }

    else if (v76 == 1)
    {
      v46 = *(v84 + 8);
      v81 = *MEMORY[0x277D769A8];
      v47 = v77;
      v46(v77, v27);
      v48 = v47;
      v38 = v81;
      (v37)(v48, *MEMORY[0x277CE0A50], v27);
      v39 = 34.0;
    }

    else
    {
      v60 = *(v84 + 8);
      v81 = *MEMORY[0x277D76988];
      v61 = v77;
      v60(v77, v27);
      v62 = v61;
      v38 = v81;
      (v37)(v62, *MEMORY[0x277CE0AC0], v27);
      v39 = 17.0;
    }

    sub_23D8DC840();
    sub_23D8DCA40();
    sub_23D88A61C();
    sub_23D8DE980();
    sub_23D8DE980();
    if (v87 == v85 && v88 == v86)
    {
      v63 = 1;
    }

    else
    {
      v63 = sub_23D8DED20();
    }

    v64 = *(v13 + 8);
    v64(v24, v12);
    v64(v26, v12);

    if (v63)
    {
      if (sub_23D8DC6A0())
      {
        v65 = v78;
        sub_23D8DC720();
        v45 = sub_23D8DDA80();

        (*(v79 + 8))(v65, v80);
        (*(v84 + 8))(v77, v27);
        return v45;
      }

      v71 = sub_23D8DDAB0();
      v72 = v75;
      (*(*(v71 - 8) + 56))(v75, 1, 1, v71);
      sub_23D8DDAD0();
      v70 = v77;
      v45 = sub_23D8DDB40();

      sub_23D88A674(v72);
    }

    else
    {
      v66 = v82;
      sub_23D8DC840();
      v67 = sub_23D8DCA30();
      v69 = v68;
      v64(v66, v12);
      v70 = v77;
      MEMORY[0x23EEEFC60](v67, v69, v77, v39);

      v45 = sub_23D8DDA90();
    }

    (*(v84 + 8))(v70, v27);
    return v45;
  }

  v77 = v34;
  v81 = v27;
  sub_23D8DC840();
  sub_23D8DCA40();
  sub_23D88A61C();
  sub_23D8DE980();
  sub_23D8DE980();
  if (v87 == v85 && v88 == v86)
  {
    v40 = 1;
  }

  else
  {
    v40 = sub_23D8DED20();
  }

  v41 = *(v13 + 8);
  v41(v16, v12);
  v41(v19, v12);

  if (v40)
  {
    v42 = sub_23D8DC6A0();
    v43 = v81;
    if (v42)
    {
      sub_23D8DC860();
      v44 = v78;
      sub_23D8DC720();
      v45 = sub_23D8DDA80();
      (*(v79 + 8))(v44, v80);
    }

    else
    {
      (*(v84 + 104))(v77, *MEMORY[0x277CE0A68], v81);
      v54 = sub_23D8DDAB0();
      v55 = v83;
      (*(*(v54 - 8) + 56))(v83, 1, 1, v54);
      if (sub_23D8DC860())
      {
        sub_23D8DDAD0();
      }

      else
      {
        sub_23D8DDAF0();
      }

      v74 = v77;
      v45 = sub_23D8DDB40();
      sub_23D88A674(v55);
      (*(v84 + 8))(v74, v43);
    }
  }

  else
  {
    v49 = sub_23D8DC860();
    v50 = v82;
    sub_23D8DC840();
    v51 = v81;
    if (v49)
    {
      v52 = sub_23D8DCA50();
    }

    else
    {
      v52 = sub_23D8DCA60();
    }

    v56 = v52;
    v57 = v53;
    v41(v50, v12);
    v58 = v84;
    (*(v84 + 104))(v30, *MEMORY[0x277CE0A68], v51);
    v45 = MEMORY[0x23EEEFC60](v56, v57, v30, 17.0);

    (*(v58 + 8))(v30, v51);
  }

  return v45;
}

Swift::String __swiftcall localizedNameFor(speed:)(Swift::Float speed)
{
  if (qword_27E2ECED0 != -1)
  {
    swift_once();
  }

  v1 = qword_27E2EF148;
  v2 = sub_23D8DEA30();
  v3 = [v1 stringForObjectValue_];

  if (v3)
  {
    v4 = sub_23D8DE870();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  if (qword_27E2ECEC8 != -1)
  {
    swift_once();
  }

  if (qword_27E2F3C80)
  {
    v7 = qword_27E2F3C80;
    v8 = sub_23D8DE830();
    v9 = sub_23D8DE830();
    v10 = [v7 localizedStringForKey:v8 value:0 table:v9];

    sub_23D8DE870();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2EE250, &qword_23D8E2360);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_23D8E0890;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_23D8605B0();
  v12 = 3157553;
  if (v6)
  {
    v12 = v4;
  }

  v13 = 0xE300000000000000;
  if (v6)
  {
    v13 = v6;
  }

  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_23D8DE840();
  v16 = v15;

  v17 = v14;
  v18 = v16;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void sub_23D88A5AC()
{
  v0 = sub_23D8DE830();
  v1 = [objc_opt_self() bundleWithIdentifier_];

  qword_27E2F3C80 = v1;
}

unint64_t sub_23D88A61C()
{
  result = qword_27E2EF150[0];
  if (!qword_27E2EF150[0])
  {
    sub_23D8DCA70();
    result = swift_getWitnessTable();
    atomic_store(result, qword_27E2EF150);
  }

  return result;
}

uint64_t sub_23D88A674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2ED4F8, &qword_23D8E0C40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Binding<A>.init(_:deselectTo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v34 = a4;
  v40 = a5;
  v41 = a2;
  v38 = *(a3 - 8);
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](a1);
  v37 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_23D8DE490();
  v9 = *(v30 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v30);
  v12 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - v13;
  v15 = *(v9 + 16);
  v35 = a1;
  v15(&v30 - v13, a1);
  v16 = *(v9 + 80);
  v36 = v9;
  v17 = (v16 + 48) & ~v16;
  v31 = v17 + v10;
  v33 = v16 | 7;
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  v32 = *(v9 + 32);
  v19 = v14;
  v20 = v30;
  v32(&v18[v17], v19, v30);
  v21 = a1;
  v22 = v20;
  (v15)(v12, v21, v20);
  v24 = v37;
  v23 = v38;
  (*(v38 + 16))(v37, v41, a3);
  v25 = v23;
  v26 = (v31 + *(v23 + 80)) & ~*(v23 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v34;
  *(v27 + 4) = a3;
  *(v27 + 5) = v28;
  v32(&v27[v17], v12, v22);
  (*(v25 + 32))(&v27[v26], v24, a3);
  sub_23D8DE480();
  (*(v25 + 8))(v41, a3);
  return (*(v36 + 8))(v35, v22);
}

uint64_t sub_23D88A9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a6 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_23D8DE490();
  MEMORY[0x23EEF05A0]();
  v16 = sub_23D8DE820();
  (*(v10 + 8))(v13, a6);
  if (v16)
  {
    v17 = a5;
  }

  else
  {
    v17 = a1;
  }

  (*(v10 + 16))(v15, v17, a6);
  return sub_23D8DE460();
}

uint64_t View.if<A>(_:transform:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, void (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v35 = a1;
  v39 = a7;
  v40 = a6;
  v32[1] = a3;
  v33 = a2;
  v38 = a8;
  v34 = *(a4 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v32 - v14;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v32 - v21;
  v23 = sub_23D8DD6C0();
  v37 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v26 = v32 - v25;
  if (v35(v24))
  {
    v33(v36);
    v27 = v39;
    sub_23D8361EC();
    v28 = *(v17 + 8);
    v28(v20, a5);
    sub_23D8361EC();
    sub_23D889578(v20, a5, a4, v27, v40);
    v28(v20, a5);
    v28(v22, a5);
  }

  else
  {
    v29 = v40;
    sub_23D8361EC();
    sub_23D8361EC();
    sub_23D889670(v12, a5, a4, v39, v29);
    v30 = *(v34 + 8);
    v30(v12, a4);
    v30(v15, a4);
  }

  v41 = v39;
  v42 = v40;
  swift_getWitnessTable();
  sub_23D8361EC();
  return (*(v37 + 8))(v26, v23);
}

void sub_23D88AEE4(void *a1)
{
  v2 = [a1 view];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 view];
    if (v4)
    {
      v5 = v4;
      [v4 frame];
      v7 = v6;
      v9 = v8;
      v11 = v10;
      v13 = v12;

      v16.origin.x = v7;
      v16.origin.y = v9;
      v16.size.width = v11;
      v16.size.height = v13;
      Height = CGRectGetHeight(v16);
      CGAffineTransformMakeTranslation(&v15, 0.0, Height);
      [v3 setTransform_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_23D88AFD0(int a1, id a2)
{
  result = [a2 view];
  if (result)
  {
    v4 = result;
    [result removeFromSuperview];

    return [a2 removeFromParentViewController];
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D88B040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a4;
  v35 = a3;
  v34 = a2;
  v37 = a1;
  v38 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  v9 = sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  sub_23D8DD6C0();
  WitnessTable = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = a6;
  swift_getWitnessTable();
  v11 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  sub_23D8DD4F0();
  v12 = sub_23D8DD020();
  v13 = swift_getOpaqueTypeConformance2();
  v57 = v11;
  v58 = swift_getWitnessTable();
  v14 = v11;
  v15 = swift_getWitnessTable();
  v49 = v9;
  v50 = MEMORY[0x277CE1350];
  v51 = OpaqueTypeMetadata2;
  v52 = v12;
  v53 = v11;
  v54 = MEMORY[0x277CE1340];
  v55 = v13;
  v56 = v15;
  v16 = v13;
  v30 = v15;
  v32 = MEMORY[0x277CE0E60];
  v17 = swift_getOpaqueTypeMetadata2();
  v33 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v29 - v21;
  sub_23D8DE5D0();
  v44 = a5;
  v45 = a6;
  v46 = v34;
  v47 = v35;
  v48 = v36;
  v39 = a5;
  v40 = a6;
  v41 = v34;
  v42 = v35;
  v43 = v36;
  v23 = swift_checkMetadataState();
  v24 = swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v26 = MEMORY[0x277CE1350];
  sub_23D8DE0A0();
  v49 = v23;
  v50 = v26;
  v51 = v24;
  v52 = v25;
  v53 = v14;
  v54 = MEMORY[0x277CE1340];
  v55 = v16;
  v56 = v30;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v27 = *(v33 + 8);
  v27(v20, v17);
  sub_23D8361EC();
  return (v27)(v22, v17);
}

uint64_t sub_23D88B4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = a4;
  v26 = a3;
  v28 = a1;
  v29 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  v10 = sub_23D8DD7F0();
  swift_getOpaqueTypeMetadata2();
  v11 = sub_23D8DD6C0();
  v25[0] = swift_getWitnessTable();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = a6;
  WitnessTable = swift_getWitnessTable();
  v35 = v10;
  v36 = v11;
  v37 = v25[0];
  v38 = WitnessTable;
  v25[1] = MEMORY[0x277CDEE48];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v25 - v18;
  v30 = a5;
  v31 = a6;
  v32 = a2;
  v33 = v26;
  v34 = v27;
  sub_23D8DD560();
  v20 = swift_checkMetadataState();
  v21 = swift_checkMetadataState();
  v22 = v25[0];
  sub_23D8DDFC0();
  v35 = v20;
  v36 = v21;
  v37 = v22;
  v38 = WitnessTable;
  swift_getOpaqueTypeConformance2();
  sub_23D8361EC();
  v23 = *(v14 + 8);
  v23(v17, OpaqueTypeMetadata2);
  sub_23D8361EC();
  return (v23)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_23D88B7D8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a3;
  v28 = a6;
  v27 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &OpaqueTypeMetadata2 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v12;
  v40 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = sub_23D8DD6C0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &OpaqueTypeMetadata2 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &OpaqueTypeMetadata2 - v20;
  a1(v19);
  v32 = a4;
  v33 = a5;
  v34 = a1;
  v35 = a2;
  v36 = v26;
  v30 = a4;
  v31 = a5;
  v39 = a4;
  v40 = a5;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.if<A>(_:transform:)(sub_23D88C5C8, sub_23D88C5D0, v29, a4, OpaqueTypeMetadata2, a5, OpaqueTypeConformance2, v18);
  (*(v27 + 8))(v11, a4);
  v37 = OpaqueTypeConformance2;
  v38 = a5;
  swift_getWitnessTable();
  sub_23D8361EC();
  v23 = *(v15 + 8);
  v23(v18, v14);
  sub_23D8361EC();
  return (v23)(v21, v14);
}

uint64_t sub_23D88BA8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_23D8DD550();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D8DD540();
  sub_23D8DDD50();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23D88BB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a4;
  v24 = a1;
  v25 = a7;
  type metadata accessor for BottomPocketModifier(255, a5, a6, a4);
  swift_getWitnessTable();
  sub_23D8DD7F0();
  sub_23D8DD4F0();
  v11 = sub_23D8DD020();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v22[-v16];
  v26 = a5;
  v27 = a6;
  v28 = a2;
  v29 = a3;
  v30 = v23;
  sub_23D8DD560();
  WitnessTable = swift_getWitnessTable();
  sub_23D8DDD90();
  v18 = swift_getWitnessTable();
  v31 = WitnessTable;
  v32 = v18;
  swift_getWitnessTable();
  sub_23D8361EC();
  v19 = *(v12 + 8);
  v19(v15, v11);
  sub_23D8361EC();
  return (v19)(v17, v11);
}

uint64_t sub_23D88BDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v14 - v10;
  v9();
  sub_23D8361EC();
  v12 = *(v5 + 8);
  v12(v8, a4);
  sub_23D8361EC();
  return (v12)(v11, a4);
}

id sub_23D88BF34()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v0 setMinimumFractionDigits_];
  [v0 setMaximumFractionDigits_];
  result = [v0 setNumberStyle_];
  qword_27E2EF148 = v0;
  return result;
}

uint64_t sub_23D88BFAC()
{
  v1 = *(v0 + 32);
  v2 = (sub_23D8DE490() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*v2 + 64);
  swift_unknownObjectRelease();

  (*(*(v1 - 8) + 8))(v0 + v4 + v2[10], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23D88C114()
{
  v1 = *(v0 + 32);
  v2 = (sub_23D8DE490() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v1 - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + *(*v2 + 64) + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v3 | v6;
  swift_unknownObjectRelease();

  v10 = v2[10];
  v11 = *(v5 + 8);
  v11(v0 + v4 + v10, v1);
  v11(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v9 | 7);
}