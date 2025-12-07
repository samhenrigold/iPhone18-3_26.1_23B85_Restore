unint64_t sub_2148F8734()
{
  result = qword_27CA1BAB0;
  if (!qword_27CA1BAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAB0);
  }

  return result;
}

uint64_t sub_2148F8788@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAD8, &qword_214997DA8);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - v5;
  v6 = sub_21498E230();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAE0, &qword_214997DB0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v35 - v9;
  v11 = sub_21498E290();
  v41 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_21498E320();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DateText(0);
  if (*(v1 + *(v17 + 32)))
  {
    v18 = v17;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
    sub_21498E750();

    sub_21498E2D0();
    v19 = *(v1 + *(v18 + 24));
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        sub_21498E200();
      }

      else
      {
        if (v19 != 4)
        {
          v34 = v41;
          (*(v41 + 56))(v10, 1, 1, v11);
          sub_21498E1F0();
          if ((*(v34 + 48))(v10, 1, v11) != 1)
          {
            sub_21489DFCC(v10, &qword_27CA1BAE0, &qword_214997DB0);
          }

LABEL_13:
          v21 = *(v2 + *(v18 + 28));
          if (v21 <= 1)
          {
            v23 = v39;
            v22 = v40;
            v25 = v37;
            v24 = v38;
            v26 = v36;
            if (v21)
            {
              sub_21498E220();
            }

            else
            {
              sub_21498E1F0();
            }
          }

          else
          {
            v23 = v39;
            v22 = v40;
            v25 = v37;
            v24 = v38;
            v26 = v36;
            if (v21 == 2)
            {
              sub_21498E210();
            }

            else
            {
              if (v21 != 3)
              {
                (*(v39 + 56))(v38, 1, 1, v40);
                sub_21498E1F0();
                if ((*(v23 + 48))(v24, 1, v22) != 1)
                {
                  sub_21489DFCC(v24, &qword_27CA1BAD8, &qword_214997DA8);
                }

                goto LABEL_24;
              }

              sub_21498E200();
            }
          }

          (*(v23 + 56))(v24, 0, 1, v22);
          (*(v23 + 32))(v25, v24, v22);
LABEL_24:
          v27 = sub_21498E300();
          v29 = v28;
          (*(v23 + 8))(v25, v22);
          (*(v41 + 8))(v13, v11);
          (*(v35 + 8))(v16, v26);
          v42 = v27;
          v43 = v29;
          sub_21489CA00();
          result = sub_21498F100();
          *a1 = result;
          a1[1] = v32;
          a1[2] = v31 & 1;
          a1[3] = v33;
          return result;
        }

        sub_21498E280();
      }
    }

    else if (*(v1 + *(v18 + 24)))
    {
      if (v19 == 1)
      {
        sub_21498E220();
      }

      else
      {
        sub_21498E210();
      }
    }

    else
    {
      sub_21498E1F0();
    }

    v20 = v41;
    (*(v41 + 56))(v10, 0, 1, v11);
    (*(v20 + 32))(v13, v10, v11);
    goto LABEL_13;
  }

  sub_21498E8C0();
  sub_2148F9614(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}

uint64_t sub_2148F8D94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A848, &qword_214993160);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v35 = &v29 - v4;
  v5 = sub_21498E350();
  v6 = *(v5 - 8);
  v33 = v5;
  v34 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BAE8, &qword_214997DB8);
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  v12 = type metadata accessor for DateText(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (v15 + *(v13 + 32));
  sub_21498E8C0();
  sub_2148F9614(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);
  v39 = sub_21498ED20();
  *v16 = v39;
  v16[1] = v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148F965C();
  v18 = v40;
  sub_2149901B0();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v40 = a1;
    v31 = v12;
    v19 = v36;
    v46 = 0;
    v20 = sub_21498FF20();
    v23 = v21;
    if (!v21)
    {
      v24 = v8;
      sub_21498E340();
      v25 = sub_21498E330();
      v30 = v26;
      (*(v34 + 8))(v24, v33);
      v23 = v30;
      v20 = v25;
    }

    *v15 = v20;
    v15[1] = v23;
    v30 = v23;
    v45 = 1;
    sub_2148F96B0();
    v27 = v35;
    sub_21498FFA0();
    v28 = v31;
    (*(v19 + 32))(v15 + *(v31 + 20), v27);
    v43 = 2;
    sub_2148F9714();
    sub_21498FF40();
    *(v15 + *(v28 + 24)) = v44;
    v41 = 3;
    sub_2148F9768();
    sub_21498FF40();
    (*(v38 + 8))(v11, v9);
    *(v15 + *(v28 + 28)) = v42;
    sub_2148F97BC(v15, v32);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_2148F9820(v15);
  }
}

uint64_t sub_2148F9294(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1B8D8, type metadata accessor for DateText, &unk_214997D5C);

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_2148F9318(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText, &unk_214997D0C);

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_2148F9394(uint64_t a1)
{
  v2 = sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText, &unk_214997D0C);

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_2148F9410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F9614(&qword_27CA1BAD0, type metadata accessor for DateText, &unk_214997CD4);

  return MEMORY[0x282182160](a1, a2, v4);
}

uint64_t sub_2148F94CC(uint64_t a1, uint64_t a2)
{
  sub_2148F9614(&qword_27CA1B8D8, type metadata accessor for DateText, &unk_214997D5C);
  sub_2148F9614(&qword_27CA1BAB8, type metadata accessor for DateText, &unk_214997D0C);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2148F9614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2148F965C()
{
  result = qword_27CA1BAF0;
  if (!qword_27CA1BAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAF0);
  }

  return result;
}

unint64_t sub_2148F96B0()
{
  result = qword_27CA1A930;
  if (!qword_27CA1A930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A848, &qword_214993160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1A930);
  }

  return result;
}

unint64_t sub_2148F9714()
{
  result = qword_27CA1BAF8;
  if (!qword_27CA1BAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BAF8);
  }

  return result;
}

unint64_t sub_2148F9768()
{
  result = qword_27CA1BB00;
  if (!qword_27CA1BB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB00);
  }

  return result;
}

uint64_t sub_2148F97BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DateText(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2148F9820(uint64_t a1)
{
  v2 = type metadata accessor for DateText(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2148F987C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148F98C8(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148F9914(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148F9960()
{
  result = qword_27CA1BB08;
  if (!qword_27CA1BB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB08);
  }

  return result;
}

unint64_t sub_2148F99B4()
{
  result = qword_27CA1BB10;
  if (!qword_27CA1BB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB10);
  }

  return result;
}

unint64_t sub_2148F9A18()
{
  result = qword_27CA1BB18;
  if (!qword_27CA1BB18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB20, &qword_214997DD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB18);
  }

  return result;
}

unint64_t sub_2148F9A98()
{
  result = qword_27CA1BB28;
  if (!qword_27CA1BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB28);
  }

  return result;
}

unint64_t sub_2148F9AF0()
{
  result = qword_27CA1BB30;
  if (!qword_27CA1BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB30);
  }

  return result;
}

unint64_t sub_2148F9B48()
{
  result = qword_27CA1BB38;
  if (!qword_27CA1BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB38);
  }

  return result;
}

uint64_t sub_2148F9BA4(char a1)
{
  v2 = sub_21498F290();
  v3 = MEMORY[0x28223BE20](v2);
  switch(a1)
  {
    case 1:

      result = MEMORY[0x282133458](v3);
      break;
    case 2:

      result = MEMORY[0x282133478](v3);
      break;
    case 3:

      result = MEMORY[0x282133490](v3);
      break;
    case 4:

      result = MEMORY[0x282133498](v3);
      break;
    case 5:

      result = MEMORY[0x282133430](v3);
      break;
    case 6:

      result = sub_21498F370();
      break;
    case 7:

      result = sub_21498F2A0();
      break;
    case 8:

      result = MEMORY[0x282133438](v3);
      break;
    case 9:

      result = MEMORY[0x282133428](v3);
      break;
    case 10:

      result = MEMORY[0x2821334B0](v3);
      break;
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:

      result = MEMORY[0x282133418](v3);
      break;
    case 17:

      result = MEMORY[0x282133448](v3);
      break;
    case 18:

      result = sub_21498F2C0();
      break;
    case 19:
    case 20:
      (*(v5 + 104))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
      result = sub_21498F3B0();
      break;
    case 21:
      v6 = [objc_opt_self() magentaColor];

      result = MEMORY[0x28212FFA8](v6);
      break;
    case 22:

      result = MEMORY[0x282133480](v3);
      break;
    case 23:

      result = sub_21498F3A0();
      break;
    case 24:

      result = MEMORY[0x2821334C8](v3);
      break;
    default:

      result = MEMORY[0x2821333F8](v3);
      break;
  }

  return result;
}

uint64_t sub_2148F9F30()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148F9FF8(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148FA0AC(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148FA170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148FD43C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148FA1A0(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x656C746974;
  v4 = 0xEA00000000006465;
  v5 = 0x6C62617369447369;
  if (*v1 != 2)
  {
    v5 = 0x736E6F69746361;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6964616F4C7369;
    v2 = 0xE900000000000067;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2148FA224()
{
  v1 = 0x656C746974;
  v2 = 0x6C62617369447369;
  if (*v0 != 2)
  {
    v2 = 0x736E6F69746361;
  }

  if (*v0)
  {
    v1 = 0x6E6964616F4C7369;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FA2A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148FD43C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148FA2CC(uint64_t a1)
{
  v2 = sub_2148FE600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FA308(uint64_t a1)
{
  v2 = sub_2148FE600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FA344@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v49 = sub_21498E890();
  v44 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v46 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v47 = &v42 - v7;
  v8 = sub_21498E900();
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v51 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC08, &unk_214998240);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for OBKLiftUIButton(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FE600();
  v16 = v53;
  sub_2149901B0();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v50;
  v53 = a1;
  v42 = v15;
  v43 = v13;
  LOBYTE(v54) = 0;
  sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v18 = v51;
  sub_21498FFA0();
  v20 = *(v17 + 32);
  v21 = v42;
  v51 = v8;
  v20(v42, v18, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
  LOBYTE(v54) = 1;
  sub_2148FE654();
  v22 = v47;
  sub_21498FF40();
  v23 = v43;
  sub_2148B4C68(v22, v21 + *(v43 + 20), &qword_27CA1AC78, qword_214999F40);
  LOBYTE(v54) = 2;
  v24 = v46;
  v47 = 0;
  sub_21498FF40();
  v25 = v21;
  sub_2148B4C68(v24, v21 + *(v23 + 24), &qword_27CA1AC78, qword_214999F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A5F0, &qword_21499B770);
  LOBYTE(v54) = 3;
  sub_2148AAA9C();
  sub_21498FFA0();
  v26 = v12;
  v27 = v52;
  v28 = v53;
  v47 = v26;
  v29 = v56;
  v30 = *(v56 + 16);
  if (v30)
  {
    v46 = v10;
    v55 = MEMORY[0x277D84F90];
    sub_2148A9BD8(0, v30, 0);
    v31 = v55;
    v32 = v44 + 16;
    v33 = *(v44 + 16);
    v34 = *(v44 + 80);
    v44 = v29;
    v35 = v29 + ((v34 + 32) & ~v34);
    v50 = *(v32 + 56);
    v51 = v33;
    v36 = (v32 - 8);
    v37 = v49;
    do
    {
      v38 = v48;
      v39 = v32;
      (v51)(v48, v35, v37);
      sub_21498E880();
      v37 = v49;
      (*v36)(v38, v49);
      v55 = v31;
      v41 = *(v31 + 16);
      v40 = *(v31 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_2148A9BD8((v40 > 1), v41 + 1, 1);
        v37 = v49;
        v31 = v55;
      }

      *(v31 + 16) = v41 + 1;
      sub_2148970B8(&v54, v31 + 40 * v41 + 32);
      v35 += v50;
      --v30;
      v32 = v39;
    }

    while (v30);
    (*(v52 + 8))(v47, v46);

    v25 = v42;
    v28 = v53;
  }

  else
  {

    (*(v27 + 8))(v47, v10);
    v31 = MEMORY[0x277D84F90];
  }

  *(v25 + *(v43 + 28)) = v31;
  sub_2148FE918(v25, v45, type metadata accessor for OBKLiftUIButton);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_2148FE980(v25, type metadata accessor for OBKLiftUIButton);
}

uint64_t sub_2148FAADC()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FAB98(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148FAC40(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148FACF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148FD488(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148FAD28(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x4449656C646E7562;
  v4 = 0xE500000000000000;
  v5 = 0x656C797473;
  if (*v1 != 2)
  {
    v5 = 0x726F4D6E7261656CLL;
    v4 = 0xE900000000000065;
  }

  if (*v1)
  {
    v3 = 1954047348;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2148FADA0()
{
  v1 = 0x4449656C646E7562;
  v2 = 0x656C797473;
  if (*v0 != 2)
  {
    v2 = 0x726F4D6E7261656CLL;
  }

  if (*v0)
  {
    v1 = 1954047348;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FAE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148FD488(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148FAE3C(uint64_t a1)
{
  v2 = sub_2148FE700();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FAE78(uint64_t a1)
{
  v2 = sub_2148FE700();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FAEB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v48 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = v47 - v7;
  MEMORY[0x28223BE20](v6);
  v56 = v47 - v8;
  v53 = sub_21498E900();
  v55 = *(v53 - 8);
  v9 = MEMORY[0x28223BE20](v53);
  v51 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v47 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v47 - v14;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC20, &qword_214998250);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v17 = v47 - v16;
  v18 = type metadata accessor for OBKLiftUICaption(0);
  MEMORY[0x28223BE20](v18);
  v20 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FE700();
  v21 = v57;
  sub_2149901B0();
  if (!v21)
  {
    v47[0] = v15;
    v47[1] = v18;
    v57 = v20;
    v63 = 0;
    sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v22 = v52;
    v23 = v53;
    sub_21498FF40();
    v24 = v22;
    v25 = v55;
    if ((*(v55 + 48))(v56, 1, v23) == 1)
    {
      v26 = v13;
      v27 = v24;
      sub_21489DFCC(v56, &qword_27CA1A800, &unk_214993100);
      v62 = 1;
      v28 = v17;
      sub_21498FFA0();
      v29 = v51;
      type metadata accessor for OBButtonTrayCaptionStyle(0);
      v30 = v27;
      v61 = 2;
      sub_2148FE6B8(&qword_27CA1BC30, type metadata accessor for OBButtonTrayCaptionStyle, &protocol conformance descriptor for OBButtonTrayCaptionStyle);
      sub_21498FF40();
      v52 = v58;
      LODWORD(v56) = v59;
      v60 = 3;
      v31 = v49;
      sub_21498FF40();
      (*(v54 + 8))(v28, v30);
      v37 = v31;
      v38 = v48;
      sub_2148B4C68(v37, v48, &qword_27CA1A800, &unk_214993100);
      v39 = v55;
      if ((*(v55 + 48))(v38, 1, v23) == 1)
      {
        sub_21489DFCC(v38, &qword_27CA1A800, &unk_214993100);
        v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD90, &unk_2149940B0);
        v34 = v57;
        v41 = &v57[*(v40 + 48)];
        (*(v39 + 32))(v57, v26, v23);
        *v41 = v52;
        v41[8] = v56;
      }

      else
      {
        v42 = *(v39 + 32);
        v42(v29, v38, v23);
        v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD38, &qword_214994070);
        v34 = v57;
        v44 = &v57[*(v43 + 48)];
        v45 = *(v43 + 64);
        v42(v57, v26, v23);
        v46 = v51;
        *v44 = v52;
        v44[8] = v56;
        v42((v34 + v45), v46, v23);
      }
    }

    else
    {
      (*(v54 + 8))(v17, v24);
      v32 = *(v25 + 32);
      v33 = v47[0];
      v32(v47[0], v56, v23);
      v34 = v57;
      v32(v57, v33, v23);
    }

    v35 = v50;
    swift_storeEnumTagMultiPayload();
    sub_2148FE7A8(v34, v35, type metadata accessor for OBKLiftUICaption);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2148FB5DC@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2148FD4D4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2148FB614()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FB6D0(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148FB778(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148FB830@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148FD768(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148FB860(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1818326372;
  v4 = 0xD000000000000014;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000014;
    v2 = 0x80000002149A0900;
  }

  v5 = 0x80000002149A08C0;
  if (*v1)
  {
    v4 = 0xD000000000000016;
    v5 = 0x80000002149A08E0;
  }

  if (*v1 <= 1u)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2148FB8D8()
{
  v1 = 1818326372;
  v2 = 0xD000000000000014;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2148FB94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148FD768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148FB974(uint64_t a1)
{
  v2 = sub_2148FDCD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FB9B0(uint64_t a1)
{
  v2 = sub_2148FDCD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FBA04@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2148FD7B4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2148FBA3C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FBAFC(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148FBBA8(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_2148FBC64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148FEE40(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148FBC94(unint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x736D657469;
  v4 = 0xE800000000000000;
  v5 = 0x736E6F6974636573;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x80000002149A0930;
  }

  if (*v1)
  {
    v3 = 0x6D6F74737563;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2148FBD10()
{
  v1 = 0x736D657469;
  v2 = 0x736E6F6974636573;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6D6F74737563;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FBD88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148FEE40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148FBDB0(uint64_t a1)
{
  v2 = sub_2148FE754();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FBDEC(uint64_t a1)
{
  v2 = sub_2148FE754();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FBE28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC78, qword_214999F40);
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v45 - v4;
  v50 = sub_21498E6A0();
  v49 = *(v50 - 8);
  v5 = MEMORY[0x28223BE20](v50);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC38, &unk_214998258);
  v52 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for OBKLiftUIContent(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2148FE754();
  v17 = v53;
  sub_2149901B0();
  if (!v17)
  {
    v46 = v9;
    v45 = v7;
    v19 = v50;
    v47 = v15;
    v53 = v13;
    v20 = v51;
    v21 = v12;
    v22 = sub_21498FFB0();
    if (*(v22 + 16))
    {
      v23 = *(v22 + 32);

      if (v23 > 1)
      {
        if (v23 == 2)
        {
          v34 = 0;
          v35 = 1;
          v36 = 0xE800000000000000;
        }

        else
        {
          v35 = 0;
          v34 = 0;
          v36 = 0x80000002149A0930;
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_14;
        }

        v35 = 0;
        v34 = 1;
        v36 = 0xE600000000000000;
      }

      if (sub_214990080())
      {
LABEL_14:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC48, &qword_214998268);
        v55 = 0;
        sub_2148FE810();
        sub_21498FFA0();
        (*(v52 + 8))(v21, v10);
        v37 = v47;
        *v47 = v56;
LABEL_20:
        swift_storeEnumTagMultiPayload();
        sub_2148FE7A8(v37, v20, type metadata accessor for OBKLiftUIContent);
        return __swift_destroy_boxed_opaque_existential_1(v54);
      }

      v38 = v34 ^ 1;
      if (v36 != 0xE600000000000000)
      {
        v38 = 1;
      }

      if (v38 & 1) == 0 || (sub_214990080())
      {

        LOBYTE(v56) = 1;
        sub_2148FE6B8(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
        v39 = v46;
        sub_21498FFA0();
        (*(v52 + 8))(v21, v10);
        v37 = v47;
        (*(v49 + 32))(v47, v39, v19);
        goto LABEL_20;
      }

      v40 = v35 ^ 1;
      if (v36 != 0xE800000000000000)
      {
        v40 = 1;
      }

      if ((v40 & 1) == 0)
      {

        v41 = v45;
LABEL_26:
        LOBYTE(v56) = 2;
        sub_2148FE6B8(&qword_27CA1B770, MEMORY[0x277D231A8], MEMORY[0x277D231B0]);
        sub_21498FFA0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AD30, &unk_214997FD0);
        LOBYTE(v56) = 3;
        sub_2148FE654();
        v43 = v48;
        sub_21498FF40();
        (*(v52 + 8))(v21, v10);
        v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1AC70, &unk_214993FF0) + 48);
        v37 = v47;
        (*(v49 + 32))(v47, v41, v19);
        sub_2148B4C68(v43, v37 + v44, &qword_27CA1AC78, qword_214999F40);
        goto LABEL_20;
      }

      v42 = sub_214990080();

      v41 = v45;
      if (v42)
      {
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      v25 = v21;
      *(inited + 32) = sub_21498F870();
      v27 = inited + 32;
      v29 = 0x80000002149A2220;
      v28 = v10;
      *(inited + 72) = MEMORY[0x277D837D0];
      v30 = 0xD000000000000012;
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      v25 = v12;
      *(inited + 32) = sub_21498F870();
      v27 = inited + 32;
      v28 = v10;
      v29 = 0x80000002149A22B0;
      *(inited + 72) = MEMORY[0x277D837D0];
      v30 = 0xD000000000000010;
    }

    *(inited + 40) = v26;
    *(inited + 48) = v30;
    *(inited + 56) = v29;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(v27, &qword_27CA1A4C8, &unk_214992030);
    v31 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v32 = sub_21498F840();
    v33 = sub_21498F7D0();

    [v31 initWithDomain:v32 code:-1 userInfo:v33];

    swift_willThrow();
    (*(v52 + 8))(v25, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_2148FC75C(uint64_t a1)
{
  sub_21498F900();
}

unint64_t sub_2148FC83C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2148FEE8C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2148FC86C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xE500000000000000;
  v6 = 0x6567616D69;
  v7 = 0xE600000000000000;
  v8 = 0x6C6F626D7973;
  if (v2 != 4)
  {
    v8 = 0x726F6C6F63;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE500000000000000;
  v10 = 0x656C746974;
  if (v2 != 1)
  {
    v10 = 0x65546C6961746564;
    v9 = 0xEA00000000007478;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_2148FC914()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6567616D69;
  v4 = 0x6C6F626D7973;
  if (v1 != 4)
  {
    v4 = 0x726F6C6F63;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x65546C6961746564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2148FC9B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2148FEE8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2148FC9EC(uint64_t a1)
{
  v2 = sub_2148FE8C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FCA28(uint64_t a1)
{
  v2 = sub_2148FE8C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2148FCA64@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v71 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A800, &unk_214993100);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v70 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v63 - v7;
  MEMORY[0x28223BE20](v6);
  v72 = &v63 - v8;
  v9 = sub_21498E900();
  v75 = *(v9 - 8);
  v76 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v67 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v68 = &v63 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v74 = &v63 - v15;
  MEMORY[0x28223BE20](v14);
  v77 = &v63 - v16;
  v17 = sub_21498E350();
  v73 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BC60, &qword_214998270);
  v78 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = (&v63 - v21);
  v23 = type metadata accessor for OBKLiftUIContentItem(0);
  MEMORY[0x28223BE20](v23);
  v25 = (&v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = a1[3];
  v80 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_2148FE8C4();
  v27 = v79;
  sub_2149901B0();
  if (v27)
  {
    return __swift_destroy_boxed_opaque_existential_1(v80);
  }

  v79 = v17;
  v28 = v77;
  v66 = v25;
  v86 = 0;
  v29 = sub_21498FF20();
  v31 = v22;
  if (!v30)
  {
    sub_21498E340();
    v33 = sub_21498E330();
    v35 = v34;
    v73[1](v19, v79);
    v30 = v35;
    v29 = v33;
    v31 = v22;
  }

  v36 = v66;
  *v66 = v29;
  v36[1] = v30;
  v85 = 1;
  v37 = sub_2148FE6B8(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
  v38 = v36;
  v39 = v28;
  v40 = v76;
  sub_21498FFA0();
  v41 = v31;
  v42 = v39;
  v43 = *(v75 + 32);
  v43(v38 + *(v23 + 20), v42, v40);
  v84 = 2;
  v44 = v74;
  sub_21498FFA0();
  v79 = v23;
  v43(v66 + *(v23 + 24), v44, v40);
  v83 = 4;
  v45 = v72;
  v77 = 0;
  sub_21498FF40();
  v64 = v43;
  v65 = v37;
  v73 = v41;
  v74 = v20;
  v46 = v40;
  v47 = *(v75 + 48);
  if (v47(v45, 1, v46) == 1)
  {
    sub_21489DFCC(v45, &qword_27CA1A800, &unk_214993100);
    v82 = 3;
    v48 = v69;
    sub_21498FF40();
    if (v47(v48, 1, v46) == 1)
    {
      sub_21489DFCC(v48, &qword_27CA1A800, &unk_214993100);
      v59 = *(v79 + 28);
      v60 = type metadata accessor for OBKLiftUIContentItemImage(0);
      v54 = v66;
      (*(*(v60 - 8) + 56))(v66 + v59, 1, 1, v60);
      goto LABEL_10;
    }

    v61 = v67;
    v62 = v64;
    v64(v67, v48, v46);
    v51 = *(v79 + 28);
    v52 = v66;
    v62(v66 + v51, v61, v46);
    v53 = type metadata accessor for OBKLiftUIContentItemImage(0);
  }

  else
  {
    v49 = v68;
    v50 = v64;
    v64(v68, v45, v46);
    v51 = *(v79 + 28);
    v52 = v66;
    v50(v66 + v51, v49, v46);
    v53 = type metadata accessor for OBKLiftUIContentItemImage(0);
  }

  swift_storeEnumTagMultiPayload();
  v54 = v52;
  (*(*(v53 - 8) + 56))(v52 + v51, 0, 1, v53);
LABEL_10:
  v55 = v74;
  v81 = 5;
  v56 = v70;
  v57 = v73;
  sub_21498FF40();
  v58 = v71;
  (*(v78 + 8))(v57, v55);
  sub_2148B4C68(v56, v54 + *(v79 + 32), &qword_27CA1A800, &unk_214993100);
  sub_2148FE918(v54, v58, type metadata accessor for OBKLiftUIContentItem);
  __swift_destroy_boxed_opaque_existential_1(v80);
  return sub_2148FE980(v54, type metadata accessor for OBKLiftUIContentItem);
}

unint64_t sub_2148FD3E8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2149900C0();

  if (v2 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FD43C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FD488(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FD4D4(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    v4 = sub_214990090();
    v7 = v4;
    v8 = v5;
    v9 = v4 == 1802658148 && v5 == 0xE400000000000000;
    if (v9 || (sub_214990080() & 1) != 0)
    {

      v3 = 2;
LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v15);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v3;
    }

    if (v7 == 0x746867696CLL && v8 == 0xE500000000000000)
    {

LABEL_17:
      v3 = 1;
      goto LABEL_12;
    }

    v10 = sub_214990080();

    if (v10)
    {
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_214991720;
    *(inited + 32) = sub_21498F870();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v12;
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x80000002149A2220;
    sub_2148E0B1C(inited);
    swift_setDeallocating();
    sub_21489DFCC(inited + 32, &qword_27CA1A4C8, &unk_214992030);
    v3 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v13 = sub_21498F840();
    v14 = sub_21498F7D0();

    [v3 initWithDomain:v13 code:-1 userInfo:v14];

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

unint64_t sub_2148FD768(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FD7B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BB40, &qword_214997FA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FDCD0();
  sub_2149901B0();
  if (!v1)
  {
    v8 = sub_21498FFB0();
    if (!*(v8 + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_214991720;
      *(inited + 32) = sub_21498F870();
      v14 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v15;
      *(inited + 48) = 0x662079656B206F6ELL;
      v16 = 0xEC000000646E756FLL;
LABEL_7:
      *(inited + 56) = v16;
      sub_2148E0B1C(inited);
      swift_setDeallocating();
      sub_21489DFCC(v14, &qword_27CA1A4C8, &unk_214992030);
      v7 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v17 = sub_21498F840();
      v18 = sub_21498F7D0();

      [v7 initWithDomain:v17 code:-1 userInfo:v18];

      swift_willThrow();
      (*(v4 + 8))(v6, v3);
      goto LABEL_22;
    }

    v9 = *(v8 + 32);

    if (v9 > 1)
    {
      if (v9 != 2)
      {
        v12 = 0;
        v11 = 0xE400000000000000;
        v27 = 1;
        goto LABEL_13;
      }

      v10 = "belowHeaderNormalWidth";
    }

    else
    {
      v10 = "leID";
      if (v9)
      {
        v27 = 0;
        v11 = 0x80000002149A08E0;
        v12 = 1;
LABEL_13:
        v19 = 0;
LABEL_14:
        if (sub_214990080())
        {
          goto LABEL_15;
        }

        if (0x80000002149A08E0 == v11)
        {
          v20 = v12;
        }

        else
        {
          v20 = 0;
        }

        if (v20 & 1) != 0 || (sub_214990080())
        {
          (*(v4 + 8))(v6, v3);

          v7 = 2;
          goto LABEL_22;
        }

        if (0x80000002149A0900 == v11)
        {
          v22 = v19;
        }

        else
        {
          v22 = 0;
        }

        if (v22 & 1) != 0 || (sub_214990080())
        {
          (*(v4 + 8))(v6, v3);

          v7 = 3;
          goto LABEL_22;
        }

        v23 = v27 ^ 1;
        if (v11 != 0xE400000000000000)
        {
          v23 = 1;
        }

        if ((v23 & 1) == 0)
        {

LABEL_34:
          (*(v4 + 8))(v6, v3);
          v7 = 4;
          goto LABEL_22;
        }

        v24 = sub_214990080();

        if (v24)
        {
          goto LABEL_34;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A640, &unk_21499A680);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_214991720;
        *(inited + 32) = sub_21498F870();
        v14 = inited + 32;
        v16 = 0x80000002149A2220;
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v25;
        *(inited + 48) = 0xD000000000000012;
        goto LABEL_7;
      }
    }

    v11 = v10 | 0x8000000000000000;
    if (0x80000002149A08C0 == (v10 | 0x8000000000000000))
    {
LABEL_15:
      (*(v4 + 8))(v6, v3);

      v7 = 1;
      goto LABEL_22;
    }

    v27 = 0;
    v12 = 0;
    v19 = 1;
    goto LABEL_14;
  }

LABEL_22:
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_2148FDCD0()
{
  result = qword_27CA1BB48;
  if (!qword_27CA1BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BB48);
  }

  return result;
}

void sub_2148FDD7C(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2148FDE70(319, &qword_27CA1BB60, &qword_27CA1AD30, &unk_214997FD0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2148FDE70(319, &qword_27CA1BB68, &qword_27CA1A5C0, &qword_214992520, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2148FDE70(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

void sub_2148FDEF4(uint64_t a1)
{
  sub_2148FE4AC(319, &qword_27CA1BB80, MEMORY[0x277D23340]);
  if (v1 <= 0x3F)
  {
    sub_2148FDF98(319);
    if (v2 <= 0x3F)
    {
      sub_2148FE018(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2148FDF98(uint64_t a1)
{
  if (!qword_27CA1BB88)
  {
    sub_21498E900();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB90, &qword_214997FF8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1BB88);
    }
  }
}

void sub_2148FE018(uint64_t a1)
{
  if (!qword_27CA1BB98)
  {
    sub_21498E900();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BB90, &qword_214997FF8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27CA1BB98);
    }
  }
}

void sub_2148FE0BC(uint64_t a1)
{
  sub_2148FE160();
  if (v1 <= 0x3F)
  {
    sub_2148FE4AC(319, &qword_27CA1AC28, MEMORY[0x277D231A8]);
    if (v2 <= 0x3F)
    {
      sub_2148FE1F8(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_2148FE160()
{
  if (!qword_27CA1BBB0)
  {
    sub_2148FE3AC(0, &qword_27CA1BBB8, type metadata accessor for OBKLiftUIContentItem, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BBB0);
    }
  }
}

void sub_2148FE1F8(uint64_t a1)
{
  if (!qword_27CA1BBC0)
  {
    sub_21498E6A0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AC78, qword_214999F40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CA1BBC0);
    }
  }
}

void sub_2148FE2A0(uint64_t a1)
{
  sub_21498E900();
  if (v1 <= 0x3F)
  {
    sub_2148FE3AC(319, &qword_27CA1BBD8, type metadata accessor for OBKLiftUIContentItemImage, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_2148FE3AC(319, &qword_27CA1A828, MEMORY[0x277D23340], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2148FE3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2148FE430(uint64_t a1)
{
  sub_2148FE4AC(319, &qword_27CA1AC20, MEMORY[0x277D23340]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_2148FE4AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2148FE4FC()
{
  result = qword_27CA1BBF0;
  if (!qword_27CA1BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BBF0);
  }

  return result;
}

unint64_t sub_2148FE554()
{
  result = qword_27CA1BBF8;
  if (!qword_27CA1BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BBF8);
  }

  return result;
}

unint64_t sub_2148FE5AC()
{
  result = qword_27CA1BC00;
  if (!qword_27CA1BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC00);
  }

  return result;
}

unint64_t sub_2148FE600()
{
  result = qword_27CA1BC10;
  if (!qword_27CA1BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC10);
  }

  return result;
}

unint64_t sub_2148FE654()
{
  result = qword_27CA1BC18;
  if (!qword_27CA1BC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD30, &unk_214997FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC18);
  }

  return result;
}

uint64_t sub_2148FE6B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2148FE700()
{
  result = qword_27CA1BC28;
  if (!qword_27CA1BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC28);
  }

  return result;
}

unint64_t sub_2148FE754()
{
  result = qword_27CA1BC40;
  if (!qword_27CA1BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC40);
  }

  return result;
}

uint64_t sub_2148FE7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2148FE810()
{
  result = qword_27CA1BC50;
  if (!qword_27CA1BC50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BC48, &qword_214998268);
    sub_2148FE6B8(&qword_27CA1BC58, type metadata accessor for OBKLiftUIContentItem, &unk_21499805C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC50);
  }

  return result;
}

unint64_t sub_2148FE8C4()
{
  result = qword_27CA1BC68;
  if (!qword_27CA1BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC68);
  }

  return result;
}

uint64_t sub_2148FE918(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2148FE980(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_2148FEA24()
{
  result = qword_27CA1BC70;
  if (!qword_27CA1BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC70);
  }

  return result;
}

unint64_t sub_2148FEA7C()
{
  result = qword_27CA1BC78;
  if (!qword_27CA1BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC78);
  }

  return result;
}

unint64_t sub_2148FEAD4()
{
  result = qword_27CA1BC80;
  if (!qword_27CA1BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC80);
  }

  return result;
}

unint64_t sub_2148FEB2C()
{
  result = qword_27CA1BC88;
  if (!qword_27CA1BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC88);
  }

  return result;
}

unint64_t sub_2148FEB84()
{
  result = qword_27CA1BC90;
  if (!qword_27CA1BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC90);
  }

  return result;
}

unint64_t sub_2148FEBDC()
{
  result = qword_27CA1BC98;
  if (!qword_27CA1BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BC98);
  }

  return result;
}

unint64_t sub_2148FEC34()
{
  result = qword_27CA1BCA0;
  if (!qword_27CA1BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCA0);
  }

  return result;
}

unint64_t sub_2148FEC8C()
{
  result = qword_27CA1BCA8;
  if (!qword_27CA1BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCA8);
  }

  return result;
}

unint64_t sub_2148FECE4()
{
  result = qword_27CA1BCB0;
  if (!qword_27CA1BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCB0);
  }

  return result;
}

unint64_t sub_2148FED3C()
{
  result = qword_27CA1BCB8;
  if (!qword_27CA1BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCB8);
  }

  return result;
}

unint64_t sub_2148FED94()
{
  result = qword_27CA1BCC0;
  if (!qword_27CA1BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCC0);
  }

  return result;
}

unint64_t sub_2148FEDEC()
{
  result = qword_27CA1BCC8;
  if (!qword_27CA1BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCC8);
  }

  return result;
}

unint64_t sub_2148FEE40(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2148FEE8C(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2148FEEE4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6D614E746E657665;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x80000002149A0950;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6D614E746E657665;
  }

  if (*a2)
  {
    v6 = 0x80000002149A0950;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_214990080();
  }

  return v8 & 1;
}

uint64_t sub_2148FEF94()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FF020(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2148FF098(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_2148FF120@<X0>(char *a2@<X8>)
{
  v3 = sub_21498FEF0();

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

void sub_2148FF180(unint64_t *a1@<X8>)
{
  v2 = 0x80000002149A0950;
  v3 = 0x6D614E746E657665;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xE900000000000065;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2148FF1C8()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6D614E746E657665;
  }
}

uint64_t sub_2148FF20C@<X0>(char *a3@<X8>)
{
  v4 = sub_21498FEF0();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2148FF270(uint64_t a1)
{
  v2 = sub_2148FFE60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2148FF2AC(uint64_t a1)
{
  v2 = sub_2148FFE60();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_2148FF2E8(uint64_t a1, uint64_t a2)
{
  v2 = [objc_opt_self() defaultCenter];
  v3 = sub_21498F840();
  [v2 postNotificationName:v3 object:0];
}

uint64_t *sub_2148FF3D0(void *a1)
{
  v3 = v1;
  v5 = *v1;
  v19 = sub_21498E900();
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v18 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BCF0, &qword_2149988A8);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v15 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2148FFE60();
  sub_2149901B0();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v5;
    v16 = v7;
    v10 = v17;
    v22 = 0;
    sub_2148FFEB4(&qword_27CA1A2C0, MEMORY[0x277D23340], MEMORY[0x277D23348]);
    v12 = v18;
    v11 = v19;
    sub_21498FFA0();
    (*(v10 + 32))(v1 + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_eventName, v12, v11);
    v21 = 1;
    v14 = sub_21498FF30();
    (*(v16 + 8))(v9, v20);
    *(v3 + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_postToMainThread) = (v14 == 2) | v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_2148FF728()
{
  v1 = OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_eventName;
  v2 = sub_21498E900();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SendNotificationAction(uint64_t a1)
{
  result = qword_27CA1BCD0;
  if (!qword_27CA1BCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2148FF818(uint64_t a1)
{
  result = sub_21498E900();
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

uint64_t sub_2148FF8B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_214899138;

  return sub_2148FFB70(a1);
}

uint64_t *sub_2148FFA88@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = sub_2148FF3D0(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_2148FFB70(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](sub_2148FFB90, 0, 0);
}

uint64_t sub_2148FFB90()
{
  v1 = sub_21498E8F0();
  v3 = v2;
  v4 = v1;
  if (*(v0[9] + OBJC_IVAR____TtC19iCloudMailAssistant22SendNotificationAction_postToMainThread) == 1)
  {
    sub_2148FFDCC();
    v5 = sub_21498FC20();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_2148FFE18;
    *(v7 + 24) = v6;
    v0[6] = sub_2148FFE20;
    v0[7] = v7;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2148FF3A8;
    v0[5] = &block_descriptor_2;
    v8 = _Block_copy(v0 + 2);

    dispatch_sync(v5, v8);

    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if ((v5 & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = [objc_opt_self() defaultCenter];
  v10 = sub_21498F840();

  [v9 postNotificationName:v10 object:0];

LABEL_5:
  v11 = v0[1];

  return v11();
}

unint64_t sub_2148FFDCC()
{
  result = qword_281190CC0;
  if (!qword_281190CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281190CC0);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2148FFE60()
{
  result = qword_27CA1BCF8;
  if (!qword_27CA1BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BCF8);
  }

  return result;
}

uint64_t sub_2148FFEB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2148FFF10()
{
  result = qword_27CA1BD00;
  if (!qword_27CA1BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD00);
  }

  return result;
}

unint64_t sub_2148FFF68()
{
  result = qword_27CA1BD08;
  if (!qword_27CA1BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD08);
  }

  return result;
}

unint64_t sub_2148FFFC0()
{
  result = qword_27CA1BD10;
  if (!qword_27CA1BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD10);
  }

  return result;
}

uint64_t sub_214900014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21490005C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_2149000B4@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = sub_21498EE00();
        v7 = MEMORY[0x277CDDDA0];
        a2[3] = v6;
        a2[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_21498EDF0();
      }

      else
      {
        v12 = sub_21498ECB0();
        v13 = MEMORY[0x277CDDA00];
        a2[3] = v12;
        a2[4] = v13;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_21498ECA0();
      }
    }

    else
    {
      v10 = sub_21498EE30();
      v11 = MEMORY[0x277CDDE48];
      a2[3] = v10;
      a2[4] = v11;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498EE20();
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = sub_21498EF20();
      v9 = MEMORY[0x277CDE370];
      a2[3] = v8;
      a2[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498EF10();
    }

    else
    {
      v16 = sub_21498ED00();
      v17 = MEMORY[0x277CDDB70];
      a2[3] = v16;
      a2[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_21498ECF0();
    }
  }

  else if (a1 == 3)
  {
    v3 = sub_21498EE60();
    v4 = MEMORY[0x277CDDE88];
    a2[3] = v3;
    a2[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_21498EE50();
  }

  else
  {
    v14 = sub_21498EEB0();
    v15 = MEMORY[0x277CDE058];
    a2[3] = v14;
    a2[4] = v15;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_21498EEA0();
  }
}

uint64_t sub_214900230(uint64_t a1)
{
  sub_21498F900();
}

unint64_t sub_214900344@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214900858(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214900374(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6974616D6F747561;
  v4 = 0xEE006B6E694C6E6FLL;
  v5 = 0x697461676976616ELL;
  if (v2 != 5)
  {
    v5 = 0x6C65656877;
    v4 = 0xE500000000000000;
  }

  v6 = 0xE700000000000000;
  v7 = 0x657474656C6170;
  if (v2 != 3)
  {
    v7 = 0x65746E656D676573;
    v6 = 0xE900000000000064;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v9 = 1970169197;
    v8 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xE900000000000063;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_2149004B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_214900748();
    sub_2149900A0();
    sub_2149000B4(v7, v9);
    __swift_destroy_boxed_opaque_existential_1(v8);
    v5 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2149005A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v6.val[0].f64[0]);
  v6.val[1] = *(v2 + 24);
  __swift_project_boxed_opaque_existential_1(v2, *&v6.val[1].f64[0]);
  v4 = v7;
  v8 = v6;
  vst2q_f64(v4, v8);
  a2[3] = swift_getOpaqueTypeMetadata2();
  v9 = v6;
  vst2q_f64(v7, v9);
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21498F190();
}

unint64_t sub_2149006F4()
{
  result = qword_27CA1BD18;
  if (!qword_27CA1BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD18);
  }

  return result;
}

unint64_t sub_214900748()
{
  result = qword_27CA1BD20;
  if (!qword_27CA1BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD20);
  }

  return result;
}

unint64_t sub_2149007B0()
{
  result = qword_27CA1BD28;
  if (!qword_27CA1BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD28);
  }

  return result;
}

unint64_t sub_214900804()
{
  result = qword_27CA1BD30;
  if (!qword_27CA1BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD30);
  }

  return result;
}

unint64_t sub_214900858(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2149008A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2149008EC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_214900944()
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_214900998(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();
  return sub_214990190();
}

uint64_t sub_2149009DC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_21498FEF0();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_214900A4C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_21498FEF0();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_214900AA4(uint64_t a1)
{
  v2 = sub_214901680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214900AE0(uint64_t a1)
{
  v2 = sub_214901680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214900B1C@<X0>(uint64_t a1@<X8>)
{
  v17 = *v1;
  v18 = *(v1 + 2);
  v10 = *v1;
  v11 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD58, &qword_214998D28);
  sub_21498F430();
  v9 = v13;
  v3 = v14;
  v4 = BYTE8(v14);
  v13 = v17;
  *&v14 = v18;
  sub_21498F410();
  sub_21498F4E0();
  sub_21498EC00();
  LOBYTE(v10) = BYTE8(v14);
  *&v12[7] = v17;
  *&v12[23] = v14;
  *&v12[39] = v15;
  v16 = *(v1 + 24);
  v5 = swift_allocObject();
  v6 = v1[1];
  *(v5 + 16) = *v1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(v1 + 4);
  *a1 = v9;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v7 = *&v12[16];
  *(a1 + 25) = *v12;
  *(a1 + 41) = v7;
  *(a1 + 57) = *&v12[32];
  *(a1 + 72) = *&v12[47];
  *(a1 + 80) = sub_214901094;
  *(a1 + 88) = v5;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  sub_21490109C(&v17, &v10);
  return sub_21490110C(&v16, &v10);
}

uint64_t sub_214900D08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2148F0B10();

  return MEMORY[0x282182170](a1, v4, a2);
}

uint64_t sub_214900D5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_214900F3C();

  return MEMORY[0x282182168](a1, a2, v4);
}

uint64_t sub_214900DA8(uint64_t a1)
{
  v2 = sub_214900F3C();

  return MEMORY[0x2821822F0](a1, v2);
}

uint64_t sub_214900DF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_214901040();

  return MEMORY[0x282182160](a1, a2, v4);
}

double sub_214900E4C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2149013BC(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_214900E94()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_214900EE0(uint64_t a1, uint64_t a2)
{
  sub_2148F0B10();
  sub_214900F3C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_214900F3C()
{
  result = qword_27CA1BD38;
  if (!qword_27CA1BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD38);
  }

  return result;
}

unint64_t sub_214900F94()
{
  result = qword_27CA1BD40;
  if (!qword_27CA1BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD40);
  }

  return result;
}

unint64_t sub_214900FEC()
{
  result = qword_27CA1BD48;
  if (!qword_27CA1BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD48);
  }

  return result;
}

unint64_t sub_214901040()
{
  result = qword_27CA1BD50;
  if (!qword_27CA1BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD50);
  }

  return result;
}

uint64_t sub_21490109C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD58, &qword_214998D28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_214901168()
{
  v0 = objc_opt_self();
  v1 = sub_21498F840();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  v4 = objc_allocWithZone(MEMORY[0x277D37670]);

  return [v4 init];
}

id sub_214901218(void *a1)
{
  result = [a1 view];
  if (result)
  {
    v2 = result;
    [result intrinsicContentSize];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BDB8, &unk_214998FB0);
    return sub_21498F480();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2149012CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214901A0C();

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_214901330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_214901A0C();

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_214901394(uint64_t a1)
{
  sub_214901A0C();
  sub_21498EF90();
  __break(1u);
}

uint64_t sub_2149013BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v37 = sub_21498E350();
  v27 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v30 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD60, &qword_214998D30);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v6 = &v21 - v5;
  v32 = 0;
  v33 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BD68, &qword_214998D38);
  sub_21498F400();
  v7 = v34;
  v8 = v35;
  v9 = v36;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214901680();
  sub_2149901B0();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = v8;
    v25 = v7;
    v26 = v9;
    v11 = v29;
    v10 = v30;
    v12 = v37;
    v13 = v31;
    v14 = sub_21498FF20();
    if (v15)
    {
      v22 = v14;
      v23 = v15;
    }

    else
    {
      sub_21498E340();
      v22 = sub_21498E330();
      v23 = v17;
      (*(v27 + 8))(v10, v12);
    }

    (*(v11 + 8))(v6, v13);
    v18 = v28;
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    *v18 = v25;
    *(v18 + 8) = v24;
    v20 = v22;
    v19 = v23;
    *(v18 + 16) = v26;
    *(v18 + 24) = v20;
    *(v18 + 32) = v19;
  }

  return result;
}

unint64_t sub_214901680()
{
  result = qword_27CA1BD70;
  if (!qword_27CA1BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD70);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_2149016F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_214901740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214901794()
{
  result = qword_27CA1BD78;
  if (!qword_27CA1BD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BD80, &qword_214998D98);
    sub_214901820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD78);
  }

  return result;
}

unint64_t sub_214901820()
{
  result = qword_27CA1BD88;
  if (!qword_27CA1BD88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BD90, &qword_214998DA0);
    sub_2149018AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD88);
  }

  return result;
}

unint64_t sub_2149018AC()
{
  result = qword_27CA1BD98;
  if (!qword_27CA1BD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BD98);
  }

  return result;
}

unint64_t sub_214901908()
{
  result = qword_27CA1BDA0;
  if (!qword_27CA1BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDA0);
  }

  return result;
}

unint64_t sub_214901960()
{
  result = qword_27CA1BDA8;
  if (!qword_27CA1BDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDA8);
  }

  return result;
}

unint64_t sub_2149019B8()
{
  result = qword_27CA1BDB0;
  if (!qword_27CA1BDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDB0);
  }

  return result;
}

unint64_t sub_214901A0C()
{
  result = qword_27CA1BDC0;
  if (!qword_27CA1BDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BDC0);
  }

  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19F90 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BDD8;
  v2 = unk_27CA1BDE0;
  v3 = qword_27CA1BDE8;
  *a1 = xmmword_27CA1BDC8;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901AEC()
{
  *&result = 1754372;
  xmmword_27CA1BDC8 = xmmword_214998FC0;
  qword_27CA1BDD8 = 0x80000002149A2380;
  unk_27CA1BDE0 = 7105601;
  qword_27CA1BDE8 = 0xE300000000000000;
  return result;
}

double sub_214901B28()
{
  *&result = 1754386;
  xmmword_27CA1BDF0 = xmmword_214998FD0;
  qword_27CA1BE00 = 0x80000002149A2380;
  unk_27CA1BE08 = 5459817;
  qword_27CA1BE10 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesiOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19F98 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE00;
  v2 = unk_27CA1BE08;
  v3 = qword_27CA1BE10;
  *a1 = xmmword_27CA1BDF0;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901BF0()
{
  *&result = 1754384;
  xmmword_27CA1BE18 = xmmword_214998FE0;
  qword_27CA1BE28 = 0x80000002149A2380;
  unk_27CA1BE30 = 0x534F63616DLL;
  qword_27CA1BE38 = 0xE500000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.mailICloudFeaturesMacOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FA0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE28;
  v2 = unk_27CA1BE30;
  v3 = qword_27CA1BE38;
  *a1 = xmmword_27CA1BE18;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901CBC()
{
  *&result = 1607989;
  xmmword_27CA1BE40 = xmmword_214998FF0;
  qword_27CA1BE50 = 0x80000002149A2360;
  unk_27CA1BE58 = 7105601;
  qword_27CA1BE60 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FA8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE50;
  v2 = unk_27CA1BE58;
  v3 = qword_27CA1BE60;
  *a1 = xmmword_27CA1BE40;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901D84()
{
  *&result = 1607993;
  xmmword_27CA1BE68 = xmmword_214999000;
  qword_27CA1BE78 = 0x80000002149A2360;
  unk_27CA1BE80 = 5459817;
  qword_27CA1BE88 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsiOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FB0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BE78;
  v2 = unk_27CA1BE80;
  v3 = qword_27CA1BE88;
  *a1 = xmmword_27CA1BE68;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901E4C()
{
  *&result = 1607997;
  xmmword_27CA1BE90 = xmmword_214999010;
  qword_27CA1BEA0 = 0x80000002149A2360;
  unk_27CA1BEA8 = 0x534F63616DLL;
  qword_27CA1BEB0 = 0xE500000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.iCloudMailSettingsMacOS.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FB8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BEA0;
  v2 = unk_27CA1BEA8;
  v3 = qword_27CA1BEB0;
  *a1 = xmmword_27CA1BE90;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

double sub_214901F18()
{
  *&result = 1608704;
  xmmword_27CA1BEB8 = xmmword_214999020;
  qword_27CA1BEC8 = 0x80000002149A2340;
  unk_27CA1BED0 = 7105601;
  qword_27CA1BED8 = 0xE300000000000000;
  return result;
}

uint64_t static TapToRadarDraft.Component.liftUIAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA19FC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27CA1BEC8;
  v2 = unk_27CA1BED0;
  v3 = qword_27CA1BED8;
  *a1 = xmmword_27CA1BEB8;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

id sub_214901FE0(uint64_t a1)
{

  v1 = sub_21498F840();

  return v1;
}

id sub_214902064()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenericRequestAPIRequest(uint64_t a1)
{
  result = qword_27CA1BEF0;
  if (!qword_27CA1BEF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConsentStatus.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149901A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_214990090();
  v6 = sub_21498FEF0();

  if (v6 >= 4)
  {
    v7 = 3;
  }

  else
  {
    v7 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v7;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

iCloudMailAssistant::ConsentStatus_optional __swiftcall ConsentStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_21498FEF0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ConsentStatus.rawValue.getter()
{
  v1 = 0x6564696365646E55;
  v2 = 0x64656E696C636544;
  if (*v0 != 2)
  {
    v2 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    v1 = 0x6465747065636341;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214902338()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_214902400(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_2149024B4(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

void sub_214902584(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E55;
  v4 = 0xE800000000000000;
  v5 = 0x64656E696C636544;
  if (*v1 != 2)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x6465747065636341;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_214902680(char a1)
{
  result = 1936746868;
  switch(a1)
  {
    case 1:
      result = 0x7370695465746164;
      break;
    case 2:
      result = 0x696D736944706974;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000021;
      break;
    case 5:
      result = 0x53746E65736E6F63;
      break;
    case 6:
      result = 0xD000000000000016;
      break;
    case 7:
      result = 0x6C75526B636F6C62;
      break;
    case 8:
      result = 0x6974616D6F747561;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x4A70756E61656C63;
      break;
    case 11:
      result = 0x6554737574617473;
      break;
    case 12:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214902844@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214904D44(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214902878(uint64_t a1)
{
  v2 = sub_2149040A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2149028B4(uint64_t a1)
{
  v2 = sub_2149040A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MailCleanupState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF00, &unk_2149990A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2149040A0();
  sub_2149901C0();
  v14 = *v3;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
  sub_2149040F4();
  sub_214990040();
  if (!v2)
  {
    v9 = type metadata accessor for MailCleanupState(0);
    LOBYTE(v14) = 1;
    sub_21498E320();
    sub_21490524C(&qword_2811926F8, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_21498FFE0();
    v14 = *(v3 + v9[6]);
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF08, &unk_2149990B0);
    sub_214904218(&qword_281190D28, qword_281191AE0, &protocol conformance descriptor for MATipDismissal, MEMORY[0x277D83948]);
    sub_214990040();
    LOBYTE(v14) = 3;
    sub_21498FFD0();
    LOBYTE(v14) = 4;
    sub_21498FFD0();
    LOBYTE(v14) = *(v3 + v9[9]);
    v13 = 5;
    sub_2149042B4();
    sub_21498FFE0();
    LOBYTE(v14) = 6;
    sub_21498FFE0();
    v14 = *(v3 + v9[11]);
    v13 = 7;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    v12[1] = sub_214904308();
    v12[2] = v10;
    sub_214990040();
    v14 = *(v3 + v9[12]);
    v13 = 8;
    sub_214990040();
    LOBYTE(v14) = 9;
    sub_21498FFE0();
    v14 = *(v3 + v9[14]);
    v13 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_21490438C();
    sub_214990040();
    LOBYTE(v14) = 11;
    sub_21498FFC0();
    LOBYTE(v14) = 12;
    sub_21498FFE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MailCleanupState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v43 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v44 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v47 = &v39 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v51 = &v39 - v8;
  MEMORY[0x28223BE20](v7);
  v56 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF18, &qword_2149990D0);
  v11 = *(v10 - 8);
  v57 = v10;
  v58 = v11;
  MEMORY[0x28223BE20](v10);
  v62 = &v39 - v12;
  v13 = type metadata accessor for MailCleanupState(0);
  v14 = (v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D84F90];
  *v16 = MEMORY[0x277D84F90];
  v18 = v14[7];
  v19 = sub_21498E320();
  v20 = *(*(v19 - 8) + 56);
  v55 = v18;
  v20(&v16[v18], 1, 1, v19);
  v54 = v14[8];
  *&v16[v54] = v17;
  v53 = v14[9];
  v16[v53] = 2;
  v52 = v14[10];
  v16[v52] = 2;
  v21 = v14[11];
  v16[v21] = 3;
  v49 = v14[12];
  v50 = v21;
  v20(&v16[v49], 1, 1, v19);
  v48 = v14[13];
  *&v16[v48] = v17;
  v46 = v14[14];
  *&v16[v46] = v17;
  v45 = v14[15];
  v20(&v16[v45], 1, 1, v19);
  v22 = v14[16];
  *&v16[v22] = v17;
  v23 = &v16[v14[17]];
  *v23 = 0;
  v23[1] = 0;
  v24 = v14[18];
  v61 = v16;
  v20(&v16[v24], 1, 1, v19);
  v25 = v59;
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_2149040A0();
  v26 = v60;
  sub_2149901B0();
  if (v26)
  {
    v38 = v61;
  }

  else
  {
    v28 = v55;
    v27 = v56;
    v42 = v22;
    v41 = v23;
    v60 = v19;
    v40 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B270, &qword_214994F00);
    v63 = 0;
    sub_214904464();
    sub_21498FFA0();
    v30 = v61;
    *v61 = v64;
    LOBYTE(v64) = 1;
    v31 = sub_21490524C(&qword_2811926E0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_21498FF40();
    v39 = v31;
    sub_2148BC688(v27, v30 + v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF08, &unk_2149990B0);
    v63 = 2;
    sub_214904218(&qword_281190D20, &qword_281191AD8, &protocol conformance descriptor for MATipDismissal, MEMORY[0x277D83978]);
    sub_21498FFA0();
    *(v30 + v54) = v64;
    LOBYTE(v64) = 3;
    *(v30 + v53) = sub_21498FF30();
    LOBYTE(v64) = 4;
    *(v30 + v52) = sub_21498FF30();
    v63 = 5;
    sub_21490453C();
    sub_21498FF40();
    v32 = v51;
    *(v30 + v50) = v64;
    LOBYTE(v64) = 6;
    sub_21498FF40();
    sub_2148BC688(v32, v30 + v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A368, &qword_214991810);
    v63 = 7;
    sub_214904590();
    sub_21498FFA0();
    *(v30 + v48) = v64;
    v63 = 8;
    sub_21498FFA0();
    *(v30 + v46) = v64;
    LOBYTE(v64) = 9;
    sub_21498FF40();
    sub_2148BC688(v47, v61 + v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF10, &unk_2149990C0);
    v63 = 10;
    sub_214904614();
    sub_21498FFA0();
    *(v61 + v42) = v64;
    LOBYTE(v64) = 11;
    v33 = sub_21498FF20();
    v34 = v41;
    *v41 = v33;
    v34[1] = v35;
    LOBYTE(v64) = 12;
    v36 = v57;
    v37 = v62;
    sub_21498FF40();
    (*(v58 + 8))(v37, v36);
    v38 = v61;
    sub_2148BC688(v44, v61 + v40);
    sub_2149046EC(v38, v43);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_2148E5E04(v38);
}

BOOL _s19iCloudMailAssistant0B12CleanupStateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_21498E320();
  v101 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v100 = &v89[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v89[-v11];
  v13 = MEMORY[0x28223BE20](v10);
  v98 = &v89[-v14];
  MEMORY[0x28223BE20](v13);
  v16 = &v89[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF30, qword_2149993B8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v89[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v89[-v22];
  v24 = MEMORY[0x28223BE20](v21);
  v99 = &v89[-v25];
  MEMORY[0x28223BE20](v24);
  v27 = &v89[-v26];
  if ((sub_21497A984(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v93 = v12;
  v94 = v23;
  v92 = v20;
  v28 = type metadata accessor for MailCleanupState(0);
  v29 = a1;
  v30 = a2;
  v96 = v29;
  v97 = v28;
  v31 = *(v28 + 20);
  v95 = v17;
  v32 = *(v17 + 48);
  sub_2149051DC(v29 + v31, v27);
  v33 = v30 + v31;
  v34 = v30;
  sub_2149051DC(v33, &v27[v32]);
  v35 = v101;
  v37 = (v101 + 6);
  v36 = v101[6];
  if ((v36)(v27, 1, v4) == 1)
  {
    if ((v36)(&v27[v32], 1, v4) == 1)
    {
      v91 = v9;
      sub_21489DFCC(v27, &qword_27CA1ABA0, &qword_214993E20);
      goto LABEL_10;
    }

LABEL_7:
    v38 = v27;
    goto LABEL_8;
  }

  sub_2149051DC(v27, v16);
  if ((v36)(&v27[v32], 1, v4) == 1)
  {
    (v35[1])(v16, v4);
    goto LABEL_7;
  }

  v91 = v9;
  v39 = v37;
  v40 = v100;
  (v35[4])(v100, &v27[v32], v4);
  sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v41 = sub_21498F830();
  v42 = v40;
  v37 = v39;
  v43 = v35;
  v44 = v35[1];
  v44(v42, v4);
  v44(v16, v4);
  v35 = v43;
  v34 = v30;
  sub_21489DFCC(v27, &qword_27CA1ABA0, &qword_214993E20);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v46 = v96;
  v45 = v97;
  if ((sub_21497AAB0(*(v96 + v97[6]), *(v34 + v97[6])) & 1) == 0)
  {
    return 0;
  }

  v47 = v45[7];
  v48 = *(v46 + v47);
  v49 = *(v34 + v47);
  if (v48 == 2)
  {
    if (v49 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v49 == 2 || ((v49 ^ v48) & 1) != 0)
    {
      return result;
    }
  }

  v51 = v45[8];
  v52 = *(v46 + v51);
  v53 = *(v34 + v51);
  if (v52 == 2)
  {
    if (v53 != 2)
    {
      return 0;
    }

LABEL_21:
    v54 = v45[9];
    v55 = *(v46 + v54);
    v56 = *(v34 + v54);
    if (v55 == 4)
    {
      if (v56 != 4)
      {
        return 0;
      }
    }

    else if (v56 == 4 || (sub_214959884(v55, v56) & 1) == 0)
    {
      return 0;
    }

    v57 = v45[10];
    v58 = *(v95 + 48);
    v59 = v99;
    sub_2149051DC(v46 + v57, v99);
    sub_2149051DC(v34 + v57, v59 + v58);
    if ((v36)(v59, 1, v4) == 1)
    {
      if ((v36)(v59 + v58, 1, v4) != 1)
      {
        goto LABEL_31;
      }

      sub_21489DFCC(v59, &qword_27CA1ABA0, &qword_214993E20);
    }

    else
    {
      v60 = v98;
      sub_2149051DC(v59, v98);
      if ((v36)(v59 + v58, 1, v4) == 1)
      {
        goto LABEL_30;
      }

      v61 = v35[4];
      v101 = v37;
      v62 = v100;
      v61(v100, v59 + v58, v4);
      sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v90 = sub_21498F830();
      v63 = v35[1];
      v63(v62, v4);
      v63(v60, v4);
      v45 = v97;
      sub_21489DFCC(v59, &qword_27CA1ABA0, &qword_214993E20);
      if ((v90 & 1) == 0)
      {
        return 0;
      }
    }

    if ((sub_21497AC70(*(v46 + v45[11]), *(v34 + v45[11])) & 1) == 0 || (sub_21497AC70(*(v46 + v45[12]), *(v34 + v45[12])) & 1) == 0)
    {
      return 0;
    }

    v101 = v36;
    v64 = v45[13];
    v59 = v94;
    v65 = *(v95 + 48);
    sub_2149051DC(v46 + v64, v94);
    v66 = v34 + v64;
    v67 = v101;
    sub_2149051DC(v66, v59 + v65);
    if (v67(v59, 1, v4) == 1)
    {
      if (v67(v59 + v65, 1, v4) == 1)
      {
        sub_21489DFCC(v59, &qword_27CA1ABA0, &qword_214993E20);
LABEL_40:
        if ((sub_21497AFCC(*(v46 + v45[14]), *(v34 + v45[14])) & 1) == 0)
        {
          return 0;
        }

        v72 = v45[15];
        v73 = (v46 + v72);
        v74 = *(v46 + v72 + 8);
        v75 = (v34 + v72);
        v76 = v75[1];
        if (v74)
        {
          v77 = v100;
          if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_214990080() & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          v77 = v100;
          if (v76)
          {
            return 0;
          }
        }

        v78 = v97[16];
        v79 = *(v95 + 48);
        v80 = v92;
        sub_2149051DC(v46 + v78, v92);
        sub_2149051DC(v34 + v78, v80 + v79);
        v81 = v101;
        if ((v101)(v80, 1, v4) == 1)
        {
          if (v81(v80 + v79, 1, v4) == 1)
          {
            sub_21489DFCC(v92, &qword_27CA1ABA0, &qword_214993E20);
            return 1;
          }
        }

        else
        {
          sub_2149051DC(v80, v91);
          if (v81(v80 + v79, 1, v4) != 1)
          {
            v82 = v35;
            v83 = v35[4];
            v84 = v92;
            v85 = v77;
            v83(v77, &v92[v79], v4);
            sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
            v86 = v91;
            v87 = sub_21498F830();
            v88 = v82[1];
            v88(v85, v4);
            v88(v86, v4);
            sub_21489DFCC(v84, &qword_27CA1ABA0, &qword_214993E20);
            return (v87 & 1) != 0;
          }

          (v35[1])(v91, v4);
        }

        v38 = v92;
LABEL_8:
        sub_21489DFCC(v38, &qword_27CA1BF30, qword_2149993B8);
        return 0;
      }

LABEL_31:
      v38 = v59;
      goto LABEL_8;
    }

    v60 = v93;
    sub_2149051DC(v59, v93);
    if (v67(v59 + v65, 1, v4) != 1)
    {
      v68 = v100;
      (v35[4])(v100, v59 + v65, v4);
      sub_21490524C(&qword_2811926E8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      LODWORD(v99) = sub_21498F830();
      v69 = v60;
      v70 = v35[1];
      v71 = v68;
      v45 = v97;
      v70(v71, v4);
      v70(v69, v4);
      sub_21489DFCC(v59, &qword_27CA1ABA0, &qword_214993E20);
      if ((v99 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_40;
    }

LABEL_30:
    (v35[1])(v60, v4);
    goto LABEL_31;
  }

  result = 0;
  if (v53 != 2 && ((v53 ^ v52) & 1) == 0)
  {
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_2149040A0()
{
  result = qword_281192060;
  if (!qword_281192060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192060);
  }

  return result;
}

unint64_t sub_2149040F4()
{
  result = qword_281190D10;
  if (!qword_281190D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B270, &qword_214994F00);
    sub_214904178();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D10);
  }

  return result;
}

unint64_t sub_214904178()
{
  result = qword_281190FB8;
  if (!qword_281190FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FB8);
  }

  return result;
}

uint64_t type metadata accessor for MailCleanupState(uint64_t a1)
{
  result = qword_281192030;
  if (!qword_281192030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214904218(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF08, &unk_2149990B0);
    sub_21490524C(a2, type metadata accessor for MATipDismissal, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2149042B4()
{
  result = qword_281191C48;
  if (!qword_281191C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C48);
  }

  return result;
}

unint64_t sub_214904308()
{
  result = qword_281190D58;
  if (!qword_281190D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D58);
  }

  return result;
}

unint64_t sub_21490438C()
{
  result = qword_281190D40;
  if (!qword_281190D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904410();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D40);
  }

  return result;
}

unint64_t sub_214904410()
{
  result = qword_281191C58;
  if (!qword_281191C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C58);
  }

  return result;
}

unint64_t sub_214904464()
{
  result = qword_281190D08;
  if (!qword_281190D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1B270, &qword_214994F00);
    sub_2149044E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D08);
  }

  return result;
}

unint64_t sub_2149044E8()
{
  result = qword_281190FB0;
  if (!qword_281190FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190FB0);
  }

  return result;
}

unint64_t sub_21490453C()
{
  result = qword_281191C38;
  if (!qword_281191C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C38);
  }

  return result;
}

unint64_t sub_214904590()
{
  result = qword_281190D50;
  if (!qword_281190D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1A368, &qword_214991810);
    sub_21489C8E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D50);
  }

  return result;
}

unint64_t sub_214904614()
{
  result = qword_281190D38;
  if (!qword_281190D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1BF10, &unk_2149990C0);
    sub_214904698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281190D38);
  }

  return result;
}

unint64_t sub_214904698()
{
  result = qword_281191C50;
  if (!qword_281191C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C50);
  }

  return result;
}

uint64_t sub_2149046EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MailCleanupState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214904754()
{
  result = qword_27CA1BF20;
  if (!qword_27CA1BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF20);
  }

  return result;
}

void sub_2149047E0(uint64_t a1)
{
  sub_214904A9C(319, &qword_281190D18, &type metadata for MATip, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_214904A38(319, &qword_2811926D8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_214904A38(319, &qword_281190D30, type metadata accessor for MATipDismissal, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_214904A9C(319, &qword_281190CD8, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_214904A9C(319, &qword_281191C30, &type metadata for ConsentStatus, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_214904A9C(319, &qword_281190D60, &type metadata for UnifiedRule, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_214904A9C(319, &qword_281190D48, &type metadata for BulkActionJob, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_214904A9C(319, &qword_281190D68, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
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

void sub_214904A38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_214904A9C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for MailCleanupState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MailCleanupState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214904C40()
{
  result = qword_27CA1BF28;
  if (!qword_27CA1BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF28);
  }

  return result;
}

unint64_t sub_214904C98()
{
  result = qword_281192050;
  if (!qword_281192050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192050);
  }

  return result;
}

unint64_t sub_214904CF0()
{
  result = qword_281192058;
  if (!qword_281192058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281192058);
  }

  return result;
}

uint64_t sub_214904D44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1936746868 && a2 == 0xE400000000000000;
  if (v3 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7370695465746164 && a2 == 0xEF64656863746546 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696D736944706974 && a2 == 0xED0000736C617373 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002149A23E0 == a2 || (sub_214990080() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000021 && 0x80000002149A2400 == a2 || (sub_214990080() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x53746E65736E6F63 && a2 == 0xED00007375746174 || (sub_214990080() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002149A2430 == a2 || (sub_214990080() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C75526B636F6C62 && a2 == 0xEA00000000007365 || (sub_214990080() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xEF73656C75526E6FLL || (sub_214990080() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002149A2450 == a2 || (sub_214990080() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4A70756E61656C63 && a2 == 0xEB0000000073626FLL || (sub_214990080() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6554737574617473 && a2 == 0xEA00000000007478 || (sub_214990080() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000022 && 0x80000002149A2470 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_214905188()
{
  result = qword_281191C40;
  if (!qword_281191C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281191C40);
  }

  return result;
}

uint64_t sub_2149051DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1ABA0, &qword_214993E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21490524C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HTTPRequestKey.init(httpMethod:urlString:body:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t HTTPRequestKey.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_21489B6F8(v2, v3);
  sub_21498F900();
  result = sub_21498F900();
  if (v3 >> 60 != 15)
  {
    sub_21498E1E0();

    return sub_21489B8F0(v2, v3);
  }

  return result;
}

uint64_t HTTPRequestKey.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_214990160();
  sub_21489B6F8(v1, v2);
  sub_21498F900();
  sub_21498F900();
  if (v2 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v1, v2);
  }

  return sub_214990190();
}

uint64_t sub_21490540C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_214990160();
  sub_21489B6F8(v1, v2);
  sub_21498F900();
  sub_21498F900();
  if (v2 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v1, v2);
  }

  return sub_214990190();
}

uint64_t sub_2149054B4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_21489B6F8(v2, v3);
  sub_21498F900();
  result = sub_21498F900();
  if (v3 >> 60 != 15)
  {
    sub_21498E1E0();

    return sub_21489B8F0(v2, v3);
  }

  return result;
}

uint64_t sub_214905570(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  sub_214990160();
  sub_21489B6F8(v2, v3);
  sub_21498F900();
  sub_21498F900();
  if (v3 >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489B8F0(v2, v3);
  }

  return sub_214990190();
}

unint64_t sub_214905618()
{
  type metadata accessor for RequestDeduplicator();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  result = sub_2148E255C(v1);
  *(v0 + 120) = result;
  qword_27CA1BF38 = v0;
  return result;
}

uint64_t RequestDeduplicator.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  *(v0 + 120) = sub_2148E255C(v1);
  return v0;
}

uint64_t static RequestDeduplicator.shared.getter()
{
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }
}

uint64_t RequestDeduplicator.init()()
{
  swift_defaultActor_initialize();
  v1 = MEMORY[0x277D84F90];
  *(v0 + 112) = sub_2148E2548(MEMORY[0x277D84F90]);
  *(v0 + 120) = sub_2148E255C(v1);
  return v0;
}

uint64_t sub_214905770(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 216) = a3;
  *(v4 + 224) = v3;
  *(v4 + 208) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  *(v4 + 232) = swift_task_alloc();
  v6 = sub_21498E690();
  *(v4 + 240) = v6;
  *(v4 + 248) = *(v6 - 8);
  *(v4 + 256) = swift_task_alloc();
  v7 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_214905880, v3, 0);
}

uint64_t sub_214905880()
{
  v39 = v0;
  v1 = v0[28];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_2149080EC(v0 + 2);
  if ((v4 & 1) == 0)
  {

LABEL_8:
    v24 = v0[29];
    v26 = v0[26];
    v25 = v0[27];
    v27 = sub_21498FAE0();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v28[5] = v25;

    v29 = MEMORY[0x277D84F78];
    v5 = sub_214906288(0, 0, v24, &unk_2149993D8, v28, MEMORY[0x277D84F78] + 8);
    v0[36] = v5;
    swift_beginAccess();
    sub_2149091B4((v0 + 2), (v0 + 8));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v1 + 112);
    *(v1 + 112) = 0x8000000000000000;
    sub_214908B9C(v5, v0 + 2, isUniquelyReferenced_nonNull_native, sub_214985AB0, sub_2149564CC);
    sub_2149091EC((v0 + 2));
    *(v1 + 112) = v38;
    swift_endAccess();
    v31 = swift_task_alloc();
    v0[37] = v31;
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    *v31 = v0;
    v31[1] = sub_214905ECC;
    v33 = MEMORY[0x277D84950];
    v34 = v29 + 8;
    goto LABEL_11;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v0[33] = v5;

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v7 = v0[31];
  v6 = v0[32];
  v8 = v0[30];
  v9 = __swift_project_value_buffer(v8, qword_281194E18);
  (*(v7 + 16))(v6, v9, v8);
  sub_2149091B4((v0 + 2), (v0 + 14));
  v10 = sub_21498E670();
  v11 = sub_21498FBD0();
  sub_2149091EC((v0 + 2));
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[31];
  v14 = v0[32];
  v15 = v0[30];
  if (v12)
  {
    v37 = v0[32];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v38 = v17;
    *v16 = 136315394;
    v18 = v0[2];
    v19 = v0[3];

    v20 = sub_2149079F4(v18, v19, &v38);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = v0[4];
    v22 = v0[5];

    v23 = sub_2149079F4(v21, v22, &v38);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_21488E000, v10, v11, "RequestDeduplicator: Deduplicating void request for key: %s %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);

    (*(v13 + 8))(v37, v15);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v35 = swift_task_alloc();
  v0[34] = v35;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  *v35 = v0;
  v35[1] = sub_214905D28;
  v33 = MEMORY[0x277D84950];
  v34 = MEMORY[0x277D84F78] + 8;
LABEL_11:

  return MEMORY[0x282200430](v32, v5, v34, v32, v33);
}

uint64_t sub_214905D28()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_214906080;
  }

  else
  {
    v4 = sub_214905E54;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214905E54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214905ECC()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 224);
  if (v0)
  {
    v4 = sub_214906100;
  }

  else
  {
    v4 = sub_214905FF8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214905FF8()
{
  sub_214906534(v0[28], v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214906080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214906100()
{
  sub_214906534(v0[28], v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214906190(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_214899138;

  return v7();
}

uint64_t sub_214906288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_2148AA824(a3, v23 - v10, &qword_27CA1B6D0, &qword_2149916C0);
  v12 = sub_21498FAE0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_21489DFCC(v11, &qword_27CA1B6D0, &qword_2149916C0);
  }

  else
  {
    sub_21498FAD0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_21498FA50();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_21498F8F0() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_21489DFCC(a3, &qword_27CA1B6D0, &qword_2149916C0);

      return v21;
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

  sub_21489DFCC(a3, &qword_27CA1B6D0, &qword_2149916C0);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_214906534(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = sub_2149080EC(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 112);
    *(a1 + 112) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214985AB0();
    }

    v9 = *(v8 + 48) + 48 * v6;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    sub_21489B8F0(v10, v11);

    sub_214985EC0();
    *(a1 + 112) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_214906618(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 248) = a3;
  *(v4 + 256) = v3;
  *(v4 + 240) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B6D0, &qword_2149916C0);
  *(v4 + 264) = swift_task_alloc();
  v6 = sub_21498E690();
  *(v4 + 272) = v6;
  *(v4 + 280) = *(v6 - 8);
  *(v4 + 288) = swift_task_alloc();
  v7 = a1[1];
  *(v4 + 16) = *a1;
  *(v4 + 32) = v7;
  *(v4 + 48) = a1[2];

  return MEMORY[0x2822009F8](sub_214906728, v3, 0);
}

uint64_t sub_214906728()
{
  v42 = v0;
  v1 = v0[32];
  swift_beginAccess();
  v2 = *(v1 + 120);
  if (!*(v2 + 16))
  {
    goto LABEL_8;
  }

  v3 = sub_2149080EC(v0 + 2);
  if ((v4 & 1) == 0)
  {

LABEL_8:
    v24 = v0[33];
    v26 = v0[30];
    v25 = v0[31];
    v27 = sub_21498FAE0();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v26;
    v28[5] = v25;

    v29 = MEMORY[0x277CC9318];
    v30 = sub_214906288(0, 0, v24, &unk_2149993F8, v28, MEMORY[0x277CC9318]);
    v0[40] = v30;
    swift_beginAccess();
    sub_2149091B4((v0 + 2), (v0 + 8));

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v1 + 120);
    *(v1 + 120) = 0x8000000000000000;
    sub_214908B9C(v30, v0 + 2, isUniquelyReferenced_nonNull_native, sub_214985AC4, sub_2149564E0);
    sub_2149091EC((v0 + 2));
    *(v1 + 120) = v41;
    swift_endAccess();
    v32 = swift_task_alloc();
    v0[41] = v32;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
    *v32 = v0;
    v32[1] = sub_214906D98;
    v34 = MEMORY[0x277D84950];
    v35 = v0 + 26;
    v36 = v30;
    v37 = v29;
    goto LABEL_11;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  v0[37] = v5;

  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[34];
  v9 = __swift_project_value_buffer(v8, qword_281194E18);
  (*(v7 + 16))(v6, v9, v8);
  sub_2149091B4((v0 + 2), (v0 + 14));
  v10 = sub_21498E670();
  v11 = sub_21498FBD0();
  sub_2149091EC((v0 + 2));
  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[35];
  v14 = v0[36];
  v15 = v0[34];
  if (v12)
  {
    v40 = v0[36];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v41 = v17;
    *v16 = 136315394;
    v18 = v0[2];
    v19 = v0[3];

    v20 = sub_2149079F4(v18, v19, &v41);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = v0[4];
    v22 = v0[5];

    v23 = sub_2149079F4(v21, v22, &v41);

    *(v16 + 14) = v23;
    _os_log_impl(&dword_21488E000, v10, v11, "RequestDeduplicator: Deduplicating data request for key: %s %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v16, -1, -1);

    (*(v13 + 8))(v40, v15);
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v38 = swift_task_alloc();
  v0[38] = v38;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  *v38 = v0;
  v38[1] = sub_214906BE0;
  v37 = MEMORY[0x277CC9318];
  v34 = MEMORY[0x277D84950];
  v35 = v0 + 28;
  v36 = v5;
LABEL_11:

  return MEMORY[0x282200430](v35, v36, v37, v33, v34);
}

uint64_t sub_214906BE0()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_214906F60;
  }

  else
  {
    v4 = sub_214906D0C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214906D0C()
{

  v2 = v0[28];
  v1 = v0[29];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_214906D98()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_214906FD8;
  }

  else
  {
    v4 = sub_214906EC4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_214906EC4()
{
  v1 = v0[26];
  v2 = v0[27];
  sub_2149072D0(v0[32], v0 + 2);

  v3 = v0[1];

  return v3(v1, v2);
}

uint64_t sub_214906F60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214906FD8()
{
  sub_2149072D0(v0[32], v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_214907060(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_21490714C;

  return v7();
}

uint64_t sub_21490714C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;

  if (v2)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v6 + 32) = a2;
    *(v6 + 40) = a1;

    return MEMORY[0x2822009F8](sub_2149072A8, 0, 0);
  }
}

uint64_t sub_2149072D0(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = sub_2149080EC(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(a1 + 120);
    *(a1 + 120) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_214985AC4();
    }

    v9 = *(v8 + 48) + 48 * v6;
    v10 = *(v9 + 32);
    v11 = *(v9 + 40);

    sub_21489B8F0(v10, v11);

    sub_214985EC0();
    *(a1 + 120) = v8;
  }

  return swift_endAccess();
}

uint64_t sub_2149073B4()
{
  swift_beginAccess();
  v1 = MEMORY[0x277D84F98];
  *(v0 + 112) = MEMORY[0x277D84F98];

  swift_beginAccess();
  *(v0 + 120) = v1;
}

uint64_t RequestDeduplicator.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t RequestDeduplicator.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_21490750C()
{
  if (qword_27CA19FC8 != -1)
  {
    swift_once();
  }
}

uint64_t sub_214907568(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RequestDeduplicator();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t sub_2149075A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_21498E040();
    if (v10)
    {
      v11 = sub_21498E060();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_21498E050();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_21498E040();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_21498E060();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_21498E050();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2149077D0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_214908D30(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_21489B4F8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2149075A0(v13, a3, a4, &v12);
  v10 = v4;
  sub_21489B4F8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

_BYTE **sub_214907988(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_214907998(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2149079F4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2149079F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_214907AC0(v11, 0, 0, 1, a1, a2);
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
    sub_21489E614(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_214907AC0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_214907BCC(a5, a6);
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
    result = sub_21498FE30();
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

void *sub_214907BCC(uint64_t a1, unint64_t a2)
{
  v3 = sub_214907C18(a1, a2);
  sub_214907D48(&unk_2826C3CB8);
  return v3;
}

void *sub_214907C18(uint64_t a1, unint64_t a2)
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

  v6 = sub_214907E34(v5, 0);
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

  result = sub_21498FE30();
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
        v10 = sub_21498F940();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_214907E34(v10, 0);
        result = sub_21498FDF0();
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

uint64_t sub_214907D48(uint64_t result)
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

  result = sub_214907EA8(result, v11, 1, v3);
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

void *sub_214907E34(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF50, &qword_214999608);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_214907EA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BF50, &qword_214999608);
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

unint64_t sub_214907F9C(uint64_t a1, uint64_t a2)
{
  sub_214990160();
  sub_21498F900();
  v4 = sub_214990190();

  return sub_2149081D0(a1, a2, v4);
}

unint64_t sub_214908014(uint64_t a1)
{
  v2 = sub_21498FD90();

  return sub_214908288(a1, v2);
}

unint64_t sub_214908058(uint64_t a1)
{
  sub_21498F870();
  sub_214990160();
  sub_21498F900();
  v2 = sub_214990190();

  return sub_214908350(a1, v2);
}

unint64_t sub_2149080EC(uint64_t *a1)
{
  sub_214990160();
  v5 = *(a1 + 2);
  sub_2148AA824(&v5, v4, &qword_27CA1A2F8, &unk_214999610);
  sub_21498F900();
  sub_21498F900();
  if (*(&v5 + 1) >> 60 != 15)
  {
    sub_21498E1E0();
    sub_21489DFCC(&v5, &qword_27CA1A2F8, &unk_214999610);
  }

  v2 = sub_214990190();
  return sub_214908454(a1, v2);
}

unint64_t sub_2149081D0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_214990080())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_214908288(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2148A411C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216058E30](v9, a1);
      sub_21489E5C0(v9);
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

unint64_t sub_214908350(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_21498F870();
      v8 = v7;
      if (v6 == sub_21498F870() && v8 == v9)
      {
        break;
      }

      v11 = sub_214990080();

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

unint64_t sub_214908454(uint64_t *a1, uint64_t a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if (((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v44 = v2 + 64;
  v46 = ~v4;
  v7 = *a1;
  v47 = a1[1];
  v45 = *a1;
  while (1)
  {
    v10 = (*(v2 + 48) + 48 * v5);
    v12 = v10[2];
    v11 = v10[3];
    v14 = v10[4];
    v13 = v10[5];
    v15 = *v10 == v7 && v10[1] == v47;
    if (!v15 && (sub_214990080() & 1) == 0)
    {
      goto LABEL_7;
    }

    v16 = v12 == a1[2] && v11 == a1[3];
    if (!v16 && (sub_214990080() & 1) == 0)
    {
      goto LABEL_7;
    }

    v50 = *(a1 + 2);
    v17 = *(&v50 + 1);
    v18 = v50;
    if (v13 >> 60 == 15)
    {
      if (*(&v50 + 1) >> 60 == 15)
      {
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);
        goto LABEL_80;
      }

      goto LABEL_4;
    }

    if (*(&v50 + 1) >> 60 != 15)
    {
      break;
    }

LABEL_4:
    sub_21489B6F8(v14, v13);
    sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);
    sub_21489B8F0(v14, v13);
    v8 = v18;
    v9 = v17;
LABEL_5:
    sub_21489B8F0(v8, v9);
LABEL_6:
    v7 = v45;
LABEL_7:
    v5 = (v5 + 1) & v46;
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  v19 = v13 >> 62;
  v20 = *(&v50 + 1) >> 62;
  if (v13 >> 62 == 3)
  {
    if (v14)
    {
      v21 = 0;
    }

    else
    {
      v21 = v13 == 0xC000000000000000;
    }

    v22 = 0;
    v23 = v21 && *(&v50 + 1) >> 62 == 3;
    if (v23 && v50 == __PAIR128__(0xC000000000000000, 0))
    {
      sub_21489B6F8(0, 0xC000000000000000);
      sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);
      sub_21489B8F0(0, 0xC000000000000000);
      v14 = 0;
      goto LABEL_80;
    }

LABEL_40:
    if (v20 <= 1)
    {
      goto LABEL_41;
    }

LABEL_34:
    if (v20 == 2)
    {
      v25 = *(v50 + 16);
      v24 = *(v50 + 24);
      v26 = __OFSUB__(v24, v25);
      v27 = v24 - v25;
      if (v26)
      {
        goto LABEL_83;
      }

      goto LABEL_43;
    }

    if (!v22)
    {
      goto LABEL_79;
    }

LABEL_53:
    sub_21489B6F8(v14, v13);
    sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);
    sub_21489B8F0(v18, v17);
    v8 = v14;
    v9 = v13;
    goto LABEL_5;
  }

  if (v19 <= 1)
  {
    if (v19)
    {
      LODWORD(v22) = HIDWORD(v14) - v14;
      if (__OFSUB__(HIDWORD(v14), v14))
      {
        goto LABEL_84;
      }

      v22 = v22;
      if (v20 <= 1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v22 = BYTE6(v13);
      if (v20 <= 1)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_34;
  }

  if (v19 == 2)
  {
    v29 = *(v14 + 16);
    v28 = *(v14 + 24);
    v26 = __OFSUB__(v28, v29);
    v22 = v28 - v29;
    if (v26)
    {
      goto LABEL_85;
    }

    goto LABEL_40;
  }

  v22 = 0;
  if (v20 > 1)
  {
    goto LABEL_34;
  }

LABEL_41:
  if (!v20)
  {
    v27 = BYTE14(v50);
LABEL_43:
    if (v22 == v27)
    {
      goto LABEL_49;
    }

    goto LABEL_53;
  }

  if (__OFSUB__(DWORD1(v50), v50))
  {
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
  }

  if (v22 != DWORD1(v50) - v50)
  {
    goto LABEL_53;
  }

LABEL_49:
  if (v22 >= 1)
  {
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        memset(v48, 0, 14);
        sub_21489B6F8(v14, v13);
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);

        sub_21489B6F8(v14, v13);
        goto LABEL_69;
      }

      v42 = *(v14 + 16);
      v43 = v2;
      v41 = *(v14 + 24);
      sub_21489B6F8(v14, v13);
      sub_21489B6F8(v14, v13);
      sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);

      sub_21489B6F8(v14, v13);
      v30 = sub_21498E040();
      if (v30)
      {
        v31 = v30;
        v32 = sub_21498E060();
        v33 = v42;
        if (__OFSUB__(v42, v32))
        {
          goto LABEL_88;
        }

        v40 = v42 - v32 + v31;
      }

      else
      {
        v40 = 0;
        v33 = v42;
      }

      if (__OFSUB__(v41, v33))
      {
        goto LABEL_87;
      }

      sub_21498E050();
      v36 = v40;
    }

    else
    {
      if (!v19)
      {
        v48[0] = v14;
        LOWORD(v48[1]) = v13;
        BYTE2(v48[1]) = BYTE2(v13);
        BYTE3(v48[1]) = BYTE3(v13);
        BYTE4(v48[1]) = BYTE4(v13);
        BYTE5(v48[1]) = BYTE5(v13);
        sub_21489B6F8(v14, v13);
        sub_21489B6F8(v14, v13);
        sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);

        sub_21489B6F8(v14, v13);
LABEL_69:
        sub_2149075A0(v48, v18, v17, v49);

        sub_21489B8F0(v14, v13);
        sub_21489B8F0(v14, v13);
        sub_21489B8F0(v18, v17);
        v37 = v49[0];
        sub_21489B8F0(v14, v13);
        if (v37)
        {
          return v5;
        }

LABEL_76:
        v3 = v44;
        goto LABEL_6;
      }

      v43 = v2;
      if (v14 >> 32 < v14)
      {
        goto LABEL_86;
      }

      sub_21489B6F8(v14, v13);
      sub_21489B6F8(v14, v13);
      sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);

      sub_21489B6F8(v14, v13);
      v34 = sub_21498E040();
      if (v34)
      {
        v35 = sub_21498E060();
        if (__OFSUB__(v14, v35))
        {
          goto LABEL_89;
        }

        v34 += v14 - v35;
      }

      sub_21498E050();
      v36 = v34;
    }

    sub_2149075A0(v36, v18, v17, v49);

    sub_21489B8F0(v14, v13);
    sub_21489B8F0(v14, v13);
    sub_21489B8F0(v18, v17);
    v38 = v49[0];
    sub_21489B8F0(v14, v13);
    if (v38)
    {
      return v5;
    }

    v2 = v43;
    goto LABEL_76;
  }

LABEL_79:
  sub_21489B6F8(v14, v13);
  sub_2148AA824(&v50, v49, &qword_27CA1A2F8, &unk_214999610);
  sub_21489B8F0(v18, v17);
LABEL_80:
  sub_21489B8F0(v14, v13);
  return v5;
}

uint64_t sub_214908B9C(uint64_t a1, uint64_t *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v12 = *v5;
  v13 = sub_2149080EC(a2);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 < v18 || (a3 & 1) != 0)
    {
      a5(v18, a3 & 1);
      v13 = sub_2149080EC(a2);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_16:
        result = sub_2149900F0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      a4();
      v13 = v21;
    }
  }

  v23 = *v8;
  if ((v19 & 1) == 0)
  {
    v23[(v13 >> 6) + 8] |= 1 << v13;
    v25 = (v23[6] + 48 * v13);
    v26 = *a2;
    v27 = *(a2 + 2);
    v25[1] = *(a2 + 1);
    v25[2] = v27;
    *v25 = v26;
    *(v23[7] + 8 * v13) = a1;
    v28 = v23[2];
    v17 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v17)
    {
      v23[2] = v29;
      return sub_2149091B4(a2, &v30);
    }

    goto LABEL_15;
  }

  *(v23[7] + 8 * v13) = a1;
}

uint64_t sub_214908D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_21498E040();
  v11 = result;
  if (result)
  {
    result = sub_21498E060();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_21498E050();
  sub_2149075A0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_214908DE8(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_21489B70C(a3, a4);
          return sub_2149077D0(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s19iCloudMailAssistant14HTTPRequestKeyV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_214990080() & 1) == 0 || (v2 != v6 || v4 != v7) && (sub_214990080() & 1) == 0)
  {
    return 0;
  }

  if (v5 >> 60 == 15)
  {
    if (v8 >> 60 == 15)
    {
      sub_21489B6F8(v3, v5);
      sub_21489B6F8(v9, v8);
      sub_21489B8F0(v3, v5);
      return 1;
    }

    goto LABEL_11;
  }

  if (v8 >> 60 == 15)
  {
LABEL_11:
    sub_21489B6F8(v3, v5);
    sub_21489B6F8(v9, v8);
    sub_21489B8F0(v3, v5);
    sub_21489B8F0(v9, v8);
    return 0;
  }

  sub_21489B6F8(v3, v5);
  sub_21489B6F8(v9, v8);
  sub_21489B6F8(v3, v5);
  sub_21489B6F8(v9, v8);
  v11 = sub_214908DE8(v3, v5, v9, v8);
  sub_21489B8F0(v9, v8);
  sub_21489B8F0(v9, v8);
  sub_21489B8F0(v3, v5);
  sub_21489B8F0(v3, v5);
  return v11;
}

uint64_t sub_2149090F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899964;

  return sub_214906190(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21490925C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_214899138;

  return sub_214907060(a1, v4, v5, v6);
}

unint64_t sub_214909320()
{
  result = qword_27CA1BF40;
  if (!qword_27CA1BF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF40);
  }

  return result;
}

unint64_t sub_214909378(uint64_t a1, uint64_t a2)
{
  result = qword_27CA1BF48;
  if (!qword_27CA1BF48)
  {
    type metadata accessor for RequestDeduplicator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1BF48);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_21490942C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_214909474(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t dispatch thunk of RequestDeduplicator.performRequest(requestKey:operation:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_214899964;

  return v10(a1, a2, a3);
}

{
  v10 = (*(*v3 + 168) + **(*v3 + 168));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_21490976C;

  return v10(a1, a2, a3);
}

uint64_t sub_21490976C(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_2149098E4()
{
  sub_2148AA930();
  sub_21498EDD0();
  return v1;
}

uint64_t sub_214909920(void *a1)
{
  v3 = type metadata accessor for MARemoteViewOfflineView(0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = (&v31 - v7);
  v35 = a1;
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A4D0, &qword_2149993E0);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;

    if ((v11 & 1) == 0 && !v10)
    {
      v12 = v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry;
      v13 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
      v14 = *(v12 + 8);
      *v8 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
      swift_storeEnumTagMultiPayload();
      v15 = (v8 + *(v3 + 20));
      *v15 = v13;
      v15[1] = v14;
      sub_21490D884(v8, v6, type metadata accessor for MARemoteViewOfflineView);
      sub_21490D9F8(v13, v14);
      sub_21490D27C(&qword_27CA1C098, type metadata accessor for MARemoteViewOfflineView, &unk_21499CE70);
      v16 = sub_21498F470();
      sub_21490DA08(v8);
      v17 = v35;
LABEL_12:

      return v16;
    }
  }

  v32 = a1;
  v18 = a1;
  sub_214899B90(0, &qword_281190CA8, 0x277CCA9B8);
  if (swift_dynamicCast())
  {
    v19 = v35;
    v20 = [v35 domain];
    v21 = sub_21498F870();
    v23 = v22;

    if (v21 == sub_21498F870() && v23 == v24)
    {
    }

    else
    {
      v25 = sub_214990080();

      if ((v25 & 1) == 0)
      {
LABEL_13:

        goto LABEL_14;
      }
    }

    if ([v19 code] == -1009)
    {
      v26 = v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry;
      v27 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry);
      v28 = *(v26 + 8);
      *v8 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C090, &qword_2149999A0);
      swift_storeEnumTagMultiPayload();
      v29 = (v8 + *(v3 + 20));
      *v29 = v27;
      v29[1] = v28;
      sub_21490D884(v8, v6, type metadata accessor for MARemoteViewOfflineView);
      sub_21490D9F8(v27, v28);
      sub_21490D27C(&qword_27CA1C098, type metadata accessor for MARemoteViewOfflineView, &unk_21499CE70);
      v16 = sub_21498F470();

      sub_21490DA08(v8);
      v17 = v32;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

LABEL_14:

  return 0;
}

uint64_t sub_214909CE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v60 = a3;
  v68 = a2;
  v6 = sub_21498E610();
  v62 = *(v6 - 8);
  v63 = v6;
  MEMORY[0x28223BE20](v6);
  v61 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v64 = sub_21498E600();
  v67 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v66 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54[-v10];
  v12 = sub_21498E5D0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v65 = &v54[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v54[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v54[-v19];
  v21 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  swift_beginAccess();
  sub_2148AA824(v4 + v21, v11, &qword_27CA1A320, &unk_2149916D0);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_21489DFCC(v11, &qword_27CA1A320, &unk_2149916D0);
  }

  (*(v13 + 32))(v20, v11, v12);
  v70[0] = a1;
  v70[1] = v68;
  strcpy(v69, "/encodedview/");
  v69[7] = -4864;
  sub_2148A4020();
  sub_2148A4074();
  if ((sub_21498F800() & 1) == 0)
  {
    return (*(v13 + 8))(v20, v12);
  }

  v56 = a1;
  v23 = *(v13 + 16);
  v58 = v12;
  v59 = v20;
  v23(v18, v20, v12);
  sub_21498E650();
  swift_allocObject();
  sub_21498E640();
  if (qword_281190DA8 != -1)
  {
    swift_once();
  }

  v24 = v64;
  v25 = __swift_project_value_buffer(v64, qword_281194E30);
  v26 = v66;
  v27 = v67;
  (*(v67 + 16))(v66, v25, v24);
  v57 = *(v4 + 16);
  v28 = *(v4 + 32);
  sub_21490D9A4();

  sub_21490A414();
  sub_214895734(v29, v30);
  v31 = sub_21498E5F0();
  v32 = v65;
  sub_21498E630();
  v55 = sub_21498FC70();
  result = sub_21498FCE0();
  if ((result & 1) == 0)
  {

    v38 = *(v13 + 8);
    v39 = v58;
    v38(v32, v58);
    (*(v27 + 8))(v26, v24);
    return (v38)(v59, v39);
  }

  v33 = v24;
  if (v28)
  {
    if (!(v57 >> 32))
    {
      v36 = v62;
      v35 = v63;
      v37 = v61;
      if ((v57 & 0xFFFFF800) == 0xD800)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      result = v68;
      if (v57 >> 16 <= 0x10)
      {

        v34 = v70;
        goto LABEL_16;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = v57;
  if (!v57)
  {
    __break(1u);
    goto LABEL_21;
  }

  v36 = v62;
  v35 = v63;
  v37 = v61;
LABEL_16:
  v40 = v33;

  sub_21498E660();

  if ((*(v36 + 88))(v37, v35) == *MEMORY[0x277D85B00])
  {
    v41 = 0;
    v42 = 0;
    v43 = "[Error] Interval already ended";
  }

  else
  {
    (*(v36 + 8))(v37, v35);
    v43 = "%s urlPath=%{signpost.telemetry:string1,public}s success=%{signpost.telemetry:number1,public}ld";
    v42 = 2;
    v41 = 3;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v70[0] = v45;
  *v44 = v42;
  *(v44 + 1) = v41;
  *(v44 + 2) = 2080;
  v46 = sub_21498FE10();
  v48 = sub_2149079F4(v46, v47, v70);

  *(v44 + 4) = v48;
  *(v44 + 12) = 2082;
  *(v44 + 14) = sub_2149079F4(v56, v68, v70);
  *(v44 + 22) = 2050;
  *(v44 + 24) = v60 & 1;
  v49 = v65;
  v50 = sub_21498E5C0();
  _os_signpost_emit_with_name_impl(&dword_21488E000, v31, v55, v50, v34, v43, v44, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x216059AC0](v45, -1, -1);
  MEMORY[0x216059AC0](v44, -1, -1);

  v51 = *(v13 + 8);
  v52 = v49;
  v53 = v58;
  v51(v52, v58);
  (*(v67 + 8))(v66, v40);
  return (v51)(v59, v53);
}

uint64_t sub_21490A484(uint64_t a1, unint64_t a2)
{
  v4 = sub_21498E690();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214909CE0(a1, a2, 1);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_281194E18);
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_21498E670();
  v10 = sub_21498FBD0();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2149079F4(a1, a2, &v15);
    _os_log_impl(&dword_21488E000, v9, v10, "[MARemoteViewDelegate] Finished loading RemoteContentView: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x216059AC0](v12, -1, -1);
    MEMORY[0x216059AC0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21490A698(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_21498E690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214909CE0(a1, a2, 0);
  if (qword_281190DA0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_281194E18);
  (*(v7 + 16))(v9, v10, v6);

  v11 = a3;
  v12 = sub_21498E670();
  v13 = sub_21498FBD0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v21 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22 = v17;
    *v15 = 136315394;
    *(v15 + 4) = sub_2149079F4(v21, a2, &v22);
    *(v15 + 12) = 2112;
    v18 = a3;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v19;
    *v16 = v19;
    _os_log_impl(&dword_21488E000, v12, v13, "[MARemoteViewDelegate] Error loading RemoteContentView: %s Error: %@", v15, 0x16u);
    sub_21489DFCC(v16, &qword_27CA1A8F8, &unk_2149938A0);
    MEMORY[0x216059AC0](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x216059AC0](v17, -1, -1);
    MEMORY[0x216059AC0](v15, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21490A91C()
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C078, &unk_214999960);
  MEMORY[0x28223BE20](v48);
  v47 = &v38 - v1;
  v46 = sub_21498E600();
  v49 = *(v46 - 8);
  v2 = MEMORY[0x28223BE20](v46);
  v44 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - v4;
  v6 = sub_21498E5D0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A320, &unk_2149916D0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v18 = OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID;
  swift_beginAccess();
  v42 = v0;
  sub_2148AA824(v0 + v18, v17, &qword_27CA1A320, &unk_2149916D0);
  v45 = v7;
  v19 = *(v7 + 48);
  v41 = v6;
  LODWORD(v7) = v19(v17, 1, v6);
  sub_21489DFCC(v17, &qword_27CA1A320, &unk_2149916D0);
  if (v7 == 1)
  {
    v40 = v10;
    v20 = v49;
    if (qword_281190DA8 != -1)
    {
      swift_once();
    }

    v21 = v46;
    v22 = __swift_project_value_buffer(v46, qword_281194E30);
    v23 = *(v20 + 16);
    v23(v5, v22, v21);
    sub_21498E5F0();
    v24 = v43;
    sub_21498E5B0();
    v25 = *(v20 + 8);
    v49 = v20 + 8;
    v39 = v25;
    v25(v5, v21);
    v26 = v45;
    v27 = v41;
    v38 = *(v45 + 16);
    v38(v15, v24, v41);
    (*(v26 + 56))(v15, 0, 1, v27);
    v28 = v42;
    swift_beginAccess();
    sub_21489B818(v15, v28 + v18);
    swift_endAccess();
    v29 = v44;
    v23(v44, v22, v21);
    v30 = sub_21498E5F0();
    v31 = sub_21498FC80();
    if (sub_21498FCE0())
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = sub_21498E5C0();
      _os_signpost_emit_with_name_impl(&dword_21488E000, v30, v31, v33, "LoadRemoteView", "", v32, 2u);
      MEMORY[0x216059AC0](v32, -1, -1);
    }

    v38(v40, v24, v27);
    sub_21498E650();
    swift_allocObject();
    sub_21498E640();

    v39(v29, v46);
    (*(v45 + 8))(v24, v27);
  }

  v34 = v47;
  sub_21498EBC0();
  v50 = 0;
  sub_21498F400();
  v35 = v52;
  v36 = &v34[*(v48 + 36)];
  *v36 = v51;
  *(v36 + 1) = v35;
  *(v36 + 2) = 0x4000000000000000;
  sub_21490D8EC();
  return sub_21498F470();
}

uint64_t sub_21490AE74()
{
  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_signpostID, &qword_27CA1A320, &unk_2149916D0);
  sub_214895734(*(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry), *(v0 + OBJC_IVAR____TtC19iCloudMailAssistant20MARemoteViewDelegate_onRetry + 8));

  return swift_deallocClassInstance();
}

void sub_21490AF24(uint64_t a1)
{
  sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_21490B008()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_21490B07C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

uint64_t sub_21490B0F0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  return v1;
}

id sub_21490B164(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a2;
  v47 = a4;
  v45 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v7 - 8);
  v44 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C008, &qword_214999808);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - v11;
  v13 = sub_21498E350();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21498E340();
  v17 = sub_21498E330();
  v19 = v18;
  v20 = *(v14 + 8);
  v42 = v14 + 8;
  v43 = v13;
  v21 = v13;
  v22 = v45;
  v41 = v20;
  v20(v16, v21);
  *(v5 + 16) = v17;
  *(v5 + 24) = v19;
  v23 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__retryTrigger;
  *&v50 = 0;
  sub_21498E9F0();
  (*(v10 + 32))(v5 + v23, v12, v9);
  v24 = v46;
  *(v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount) = a1;
  sub_2148AA824(v24, v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source, &qword_27CA1A328, &unk_2149933A0);
  swift_beginAccess();
  *&v48 = v22;
  sub_21498E8C0();
  v25 = a1;

  sub_21498E9F0();
  swift_endAccess();
  result = [v25 accountStore];
  if (result)
  {
    v27 = result;
    v28 = v44;
    sub_2148AA824(v24, v44, &qword_27CA1A328, &unk_2149933A0);
    type metadata accessor for MALiftUIDataSource(0);
    swift_allocObject();
    v29 = v25;

    v30 = sub_2149236D0(v27, v29, v28, v22);
    v31 = sub_21490D27C(&qword_27CA1C010, type metadata accessor for MALiftUIDataSource, &unk_21499A620);
    swift_beginAccess();
    *&v48 = v30;
    *(&v48 + 1) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1BFB8, &qword_2149996D0);
    sub_21498E9F0();
    swift_endAccess();
    v32 = v47;
    sub_2148AA824(v47, &v48, &qword_27CA1C018, &qword_214999810);
    if (v49)
    {

      sub_21489DFCC(v32, &qword_27CA1C018, &qword_214999810);
      sub_21489DFCC(v24, &qword_27CA1A328, &unk_2149933A0);
      sub_2148AAE3C(&v48, &v50);
LABEL_7:
      sub_2148AAE3C(&v50, v5 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository);
      return v5;
    }

    result = [v29 accountStore];
    if (result)
    {
      v33 = result;
      v34 = type metadata accessor for MARepositoryDefault();
      v35 = swift_allocObject();
      v36 = v29;
      sub_21498E340();
      v37 = sub_21498E330();
      v39 = v38;
      v41(v16, v43);
      v35[2] = v37;
      v35[3] = v39;
      v35[4] = v33;
      v35[5] = v36;
      v51 = v34;
      v52 = &off_2826CB168;

      *&v50 = v35;
      sub_21489DFCC(v47, &qword_27CA1C018, &qword_214999810);
      sub_21489DFCC(v24, &qword_27CA1A328, &unk_2149933A0);
      if (v49)
      {
        sub_21489DFCC(&v48, &qword_27CA1C018, &qword_214999810);
      }

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id sub_21490B684()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v24 - v3;
  v5 = sub_21498E510();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A330, &qword_2149916E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (v24 - v10);
  sub_21498E8C0();
  swift_allocObject();
  v12 = sub_21498E8B0();
  v13 = swift_allocObject();
  (*(v6 + 104))(v8, *MEMORY[0x277D245A0], v5);
  v14 = sub_21498E500();
  (*(v6 + 8))(v8, v5);
  *(v13 + 16) = v14 & 1;
  *v11 = v13;
  v15 = *MEMORY[0x277D23258];
  v16 = sub_21498E7C0();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v11, v15, v16);
  (*(v17 + 56))(v11, 0, 1, v16);
  sub_21498E8E0();
  swift_getKeyPath();
  swift_getKeyPath();
  v24[0] = v12;

  sub_21498EA20();
  v18 = *(v1 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_appleAccount);
  result = [v18 accountStore];
  if (result)
  {
    v20 = result;
    sub_2148AA824(v1 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source, v4, &qword_27CA1A328, &unk_2149933A0);
    type metadata accessor for MALiftUIDataSource(0);
    swift_allocObject();

    v21 = sub_2149236D0(v20, v18, v4, v12);
    v22 = sub_21490D27C(&qword_27CA1C010, type metadata accessor for MALiftUIDataSource, &unk_21499A620);
    swift_getKeyPath();
    swift_getKeyPath();
    v24[0] = v21;
    v24[1] = v22;

    sub_21498EA20();
    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_21498EA00();
    if (!__OFADD__(*v23, 1))
    {
      ++*v23;
      (result)(v24, 0);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21490BAE0()
{

  v1 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__dataSource;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C068, &qword_214999950);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_repository));

  sub_21489DFCC(v0 + OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel_source, &qword_27CA1A328, &unk_2149933A0);
  v3 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__retryTrigger;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C008, &qword_214999808);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC19iCloudMailAssistant17MARemoteViewModel__remoteStateStore;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C070, &qword_214999958);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

void sub_21490BC90(uint64_t a1)
{
  sub_21490C198(319, &qword_27CA1BFB0, &qword_27CA1BFB8, &qword_2149996D0, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_21490BED0(319, &qword_27CA1BFC0, type metadata accessor for MALiftUISource, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_21490BE80();
      if (v3 <= 0x3F)
      {
        sub_21490BED0(319, &qword_27CA1BFD0, MEMORY[0x277D23330], MEMORY[0x277CBCED0]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_21490BE80()
{
  if (!qword_27CA1BFC8)
  {
    v0 = sub_21498EA30();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1BFC8);
    }
  }
}

void sub_21490BED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21490BF7C(uint64_t a1)
{
  type metadata accessor for MALiftUISource(319);
  if (v1 <= 0x3F)
  {
    sub_21490C104(319);
    if (v2 <= 0x3F)
    {
      sub_21490C198(319, &qword_27CA1BFF8, &qword_27CA1C000, &qword_214999708, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for MARemoteViewDelegate(319);
        if (v4 <= 0x3F)
        {
          sub_214899B90(319, &qword_27CA1A310, 0x277CB8F48);
          if (v5 <= 0x3F)
          {
            sub_214899B90(319, &qword_27CA1A308, 0x277CB8F30);
            if (v6 <= 0x3F)
            {
              sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
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

void sub_21490C104(uint64_t a1)
{
  if (!qword_27CA1BFE8)
  {
    type metadata accessor for MARemoteViewModel(255);
    sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel, &unk_214999760);
    v1 = sub_21498EBA0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1BFE8);
    }
  }
}

void sub_21490C198(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_21490C218(uint64_t *a1, uint64_t *a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_214990080();
  }
}

uint64_t sub_21490C244@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for MARemoteViewModel(0);
  result = sub_21498E9D0();
  *a2 = result;
  return result;
}

uint64_t sub_21490C2AC@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v2 = type metadata accessor for MARemoteView(0);
  v47 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = v3;
  v49 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21498E950();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C020, &qword_214999818);
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C028, &qword_214999820);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v43 - v12;
  sub_21490C8C0(v7);
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v14 = qword_27CA31008;
  sub_21490D27C(&qword_27CA1C030, MEMORY[0x277D23388], MEMORY[0x277D23378]);
  v15 = v14;
  MEMORY[0x2160581D0]();

  (*(v5 + 8))(v7, v4);
  v16 = v1 + *(v2 + 24);
  v17 = *(v16 + 8);
  v18 = *(v16 + 16);
  type metadata accessor for MARemoteViewModel(0);
  v43[0] = v1;
  sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel, &unk_214999760);
  v43[1] = v17;
  v44 = v18;
  v19 = sub_21498EB80();
  KeyPath = swift_getKeyPath();
  v21 = &v10[*(v8 + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  sub_21498EB80();
  swift_getKeyPath();
  v22 = v2;
  swift_getKeyPath();
  sub_21498EA10();

  v23 = v51[0];
  v24 = v51[1];
  v25 = sub_21490D49C();
  MEMORY[0x2160581C0](v23, v24, v8, v25);
  swift_unknownObjectRelease();
  sub_214895454(v10);
  v26 = *(v22 + 32);
  v27 = v43[0];
  v28 = *(v43[0] + v26);
  v29 = sub_21490D27C(&qword_27CA1C050, type metadata accessor for MARemoteViewDelegate, &unk_2149997C0);
  v51[0] = v8;
  v51[1] = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = v50;
  v32 = v28;
  v33 = v46;
  MEMORY[0x2160581B0](v32, v29, v46, OpaqueTypeConformance2);
  (*(v45 + 8))(v13, v33);
  v34 = v49;
  sub_21490D884(v27, v49, type metadata accessor for MARemoteView);
  v35 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v36 = swift_allocObject();
  sub_21490D5B4(v34, v36 + v35);
  v37 = (v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C058, &qword_2149998A8) + 36));
  *v37 = 0;
  v37[1] = 0;
  v37[2] = sub_21490D618;
  v37[3] = v36;
  strcpy(v51, "MARemoteView-");
  HIWORD(v51[1]) = -4864;
  sub_21498EB80();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v38 = sub_214990050();
  MEMORY[0x2160589C0](v38);

  v39 = v51[0];
  v40 = v51[1];
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C060, &qword_2149998F8);
  v42 = (v31 + *(result + 52));
  *v42 = v39;
  v42[1] = v40;
  return result;
}

uint64_t sub_21490C8C0@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = sub_21498E1B0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v22 - v7;
  v9 = type metadata accessor for MALiftUISource(0);
  MEMORY[0x28223BE20](v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MARemoteView(0);
  sub_21490D884(v1 + *(v12 + 20), v11, type metadata accessor for MALiftUISource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = v1[1];
      v26 = *v1;
      v27 = v14;

      MEMORY[0x2160589C0](45, 0xE100000000000000);
      type metadata accessor for MARemoteViewModel(0);
      sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel, &unk_214999760);
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v15 = sub_214990050();
      MEMORY[0x2160589C0](v15);

      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      sub_21498E870();
      swift_allocObject();
      sub_21498E860();
      return sub_21498E940();
    }

    else
    {
      v20 = v1[1];
      v26 = *v1;
      v27 = v20;

      MEMORY[0x2160589C0](45, 0xE100000000000000);
      type metadata accessor for MARemoteViewModel(0);
      sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel, &unk_214999760);
      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      v21 = sub_214990050();
      MEMORY[0x2160589C0](v21);

      sub_21498EB80();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_21498EA10();

      sub_21498E870();
      swift_allocObject();
      sub_21498E860();
      return sub_21498E930();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1B1C8, &qword_214994C20);

    (*(v3 + 32))(v8, v11, v2);
    v17 = v1[1];
    v26 = *v1;
    v27 = v17;

    MEMORY[0x2160589C0](45, 0xE100000000000000);
    v18 = v1 + *(v12 + 24);
    v24 = *v18;
    v23 = v18[16];
    type metadata accessor for MARemoteViewModel(0);
    sub_21490D27C(&qword_27CA1BFF0, type metadata accessor for MARemoteViewModel, &unk_214999760);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    v19 = sub_214990050();
    MEMORY[0x2160589C0](v19);

    v22[1] = v27;
    (*(v3 + 16))(v6, v8, v2);
    sub_21498EB80();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_21498EA10();

    sub_21498E870();
    swift_allocObject();
    sub_21498E860();
    sub_21498E920();
    return (*(v3 + 8))(v8, v2);
  }
}

void sub_21490D00C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1A328, &unk_2149933A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v9 - v1;
  v3 = [objc_opt_self() defaultStore];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 aa_primaryAppleAccount];

    if (v5)
    {
      v6 = type metadata accessor for MALiftUISource(0);
      (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
      sub_21498E8C0();
      swift_allocObject();
      v7 = sub_21498E8B0();
      type metadata accessor for MARemoteViewModel(0);
      memset(v9, 0, sizeof(v9));
      v10 = 0;
      v8 = swift_allocObject();
      sub_21490B164(v5, v2, v7, v9);
      qword_27CA1BF58 = v8;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21490D178@<X0>(void *a1@<X8>)
{
  if (qword_27CA19FD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27CA1BF58;
}

uint64_t sub_21490D1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21490D27C(&qword_27CA1A5B0, type metadata accessor for MARemoteViewModel, &unk_214999798);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t sub_21490D27C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21490D2C4@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v4;
  return result;
}

uint64_t sub_21490D344(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

double sub_21490D3C0@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_21490D440(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  ObjectType = swift_getObjectType();
  v5 = swift_unknownObjectRetain();

  return sub_21490D804(v5, v3, ObjectType, v2);
}

unint64_t sub_21490D49C()
{
  result = qword_27CA1C038;
  if (!qword_27CA1C038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C020, &qword_214999818);
    sub_21498E950();
    sub_21490D27C(&qword_27CA1C030, MEMORY[0x277D23388], MEMORY[0x277D23378]);
    swift_getOpaqueTypeConformance2();
    sub_2148B4C20(&qword_27CA1C040, &qword_27CA1C048, &unk_214999898, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C038);
  }

  return result;
}

uint64_t sub_21490D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MARemoteView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21490D618()
{
  v1 = type metadata accessor for MARemoteView(0);
  v3 = *(v1 - 8);
  result = v1 - 8;
  v4 = (v0 + *(result + 36) + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  if (*v4)
  {
    return (*v4)();
  }

  return result;
}

uint64_t sub_21490D68C@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  *a2 = v4;
  return result;
}

uint64_t sub_21490D70C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21490D804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21498EA20();
}

uint64_t sub_21490D884(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21490D8EC()
{
  result = qword_27CA1C080;
  if (!qword_27CA1C080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1C078, &unk_214999960);
    sub_2148B4C20(&qword_27CA1A8E0, &qword_27CA1A8E8, &qword_2149933C8, MEMORY[0x277CDD7F8]);
    sub_2148B490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C080);
  }

  return result;
}

unint64_t sub_21490D9A4()
{
  result = qword_27CA1C088;
  if (!qword_27CA1C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C088);
  }

  return result;
}

uint64_t sub_21490D9F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21490DA08(uint64_t a1)
{
  v2 = type metadata accessor for MARemoteViewOfflineView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_21490DAAC(uint64_t a1)
{
  sub_21490BED0(319, &qword_27CA1BF80, MEMORY[0x277D85AD8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21490DB7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21498F160();
}

unint64_t sub_21490DC34()
{
  result = qword_27CA1C0B8;
  if (!qword_27CA1C0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0B8);
  }

  return result;
}

uint64_t sub_21490DC98(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v13 = a5;
  v14 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C0C0, &qword_214999B90);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21490E0B4();
  sub_2149901C0();
  v20 = 0;
  sub_214990000();
  if (!v5)
  {
    v11 = BYTE1(v14);
    v19 = v14;
    v18 = 1;
    sub_21490E108();
    sub_214990040();
    v17 = v11;
    v16 = 2;
    sub_21490E15C();
    sub_214990040();
    v15 = 3;
    sub_214990030();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21490DE98()
{
  v1 = 0x6449626F6ALL;
  v2 = 0x737574617473;
  if (*v0 != 2)
  {
    v2 = 0x547364726F636572;
  }

  if (*v0)
  {
    v1 = 0x6E6F69746361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21490DF14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21490E9D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21490DF3C(uint64_t a1)
{
  v2 = sub_21490E0B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21490DF78(uint64_t a1)
{
  v2 = sub_21490E0B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21490DFB4(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = a1[3];
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 24);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_214990080()) && (sub_214958458(v2, v5))
  {
    return sub_2149582BC(v3, v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21490E054@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_21490EB30(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

unint64_t sub_21490E0B4()
{
  result = qword_27CA1C0C8;
  if (!qword_27CA1C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0C8);
  }

  return result;
}

unint64_t sub_21490E108()
{
  result = qword_27CA1C0D0;
  if (!qword_27CA1C0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0D0);
  }

  return result;
}

unint64_t sub_21490E15C()
{
  result = qword_27CA1C0D8;
  if (!qword_27CA1C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0D8);
  }

  return result;
}

uint64_t sub_21490E1BC()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E28C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21490E348(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_21490E414@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21490F0D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21490E444(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1163284301;
  v4 = 0xED0000455A49524FLL;
  v5 = 0x47455441435F4552;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000018;
    v4 = 0x80000002149A09E0;
  }

  if (*v1)
  {
    v3 = 0x4145525F4B52414DLL;
    v2 = 0xE900000000000044;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21490E58C()
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

uint64_t sub_21490E67C(uint64_t a1)
{
  sub_21498F900();
}

uint64_t sub_21490E758(uint64_t a1)
{
  sub_214990160();
  sub_21498F900();

  return sub_214990190();
}

unint64_t sub_21490E844@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21490F120(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21490E874(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x474E49444E4550;
  v5 = 0xE500000000000000;
  v6 = 0x524F525245;
  v7 = 0x454C54544F524854;
  if (v2 != 3)
  {
    v7 = 0x4554454C504D4F43;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE900000000000044;
  }

  if (*v1)
  {
    v4 = 0x52474F52505F4E49;
    v3 = 0xEB00000000535345;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_21490E9D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449626F6ALL && a2 == 0xE500000000000000;
  if (v4 || (sub_214990080() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F69746361 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_214990080() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x547364726F636572 && a2 == 0xEE0064656863756FLL)
  {

    return 3;
  }

  else
  {
    v6 = sub_214990080();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_21490EB30(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C0E0, &qword_214999B98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21490E0B4();
  sub_2149901B0();
  if (!v1)
  {
    v14 = 0;
    v7 = sub_21498FF60();
    v13 = 1;
    sub_21490ED9C();
    sub_21498FFA0();
    v11 = 2;
    sub_21490EDF0();
    sub_21498FFA0();
    v9[3] = v12;
    v10 = 3;
    sub_21498FF90();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_21490ED9C()
{
  result = qword_27CA1C0E8;
  if (!qword_27CA1C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0E8);
  }

  return result;
}

unint64_t sub_21490EDF0()
{
  result = qword_27CA1C0F0;
  if (!qword_27CA1C0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0F0);
  }

  return result;
}

unint64_t sub_21490EE78()
{
  result = qword_27CA1C0F8;
  if (!qword_27CA1C0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C0F8);
  }

  return result;
}

unint64_t sub_21490EED0()
{
  result = qword_27CA1C100;
  if (!qword_27CA1C100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C100);
  }

  return result;
}

unint64_t sub_21490EF28()
{
  result = qword_27CA1C108;
  if (!qword_27CA1C108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C108);
  }

  return result;
}

unint64_t sub_21490EF80()
{
  result = qword_27CA1C110;
  if (!qword_27CA1C110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C110);
  }

  return result;
}

unint64_t sub_21490EFD8()
{
  result = qword_27CA1C118;
  if (!qword_27CA1C118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C118);
  }

  return result;
}

unint64_t sub_21490F02C()
{
  result = qword_27CA1C120;
  if (!qword_27CA1C120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C120);
  }

  return result;
}

unint64_t sub_21490F080()
{
  result = qword_27CA1C128;
  if (!qword_27CA1C128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA1C128);
  }

  return result;
}

unint64_t sub_21490F0D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21490F120(uint64_t a1, uint64_t a2)
{
  v2 = sub_21498FEF0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

id sub_21490F16C(void *a1)
{
  v1 = a1;
  sub_21498E130();

  v2 = sub_21498F840();

  return v2;
}

uint64_t sub_21490F1E4()
{
  v1 = qword_27CA1C130;
  v2 = sub_21498E1B0();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id sub_21490F24C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MALiftUIRequest(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21490F284(uint64_t a1)
{
  v2 = qword_27CA1C130;
  v3 = sub_21498E1B0();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1 + v2, v3);
}

uint64_t type metadata accessor for MALiftUIRequest(uint64_t a1)
{
  result = qword_27CA1C138;
  if (!qword_27CA1C138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21490F33C(uint64_t a1)
{
  result = sub_21498E1B0();
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

void sub_21490F42C(uint64_t a1)
{
  sub_21490F5F0(319);
  if (v1 <= 0x3F)
  {
    sub_21498E6A0();
    if (v2 <= 0x3F)
    {
      sub_21490F730(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_21490F654(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
        if (v4 <= 0x3F)
        {
          sub_21490F654(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
          if (v5 <= 0x3F)
          {
            sub_21490F730(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21490F5F0(uint64_t a1)
{
  if (!qword_27CA1BB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA1AD30, &unk_214997FD0);
    v1 = sub_21498FCF0();
    if (!v2)
    {
      atomic_store(v1, &qword_27CA1BB60);
    }
  }
}

void sub_21490F654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_21490F6E8(a4, a5, MEMORY[0x277D233A0]);
    v8 = sub_21498ED30();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21490F6E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21490F730(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *(a1 + 8);
    if (v6 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a2)
    {
      v12 = v10;
      v13 = *(v11 + 48);
      v14 = a1 + *(a3 + 20);

      return v13(v14, a2, v12);
    }

    else
    {
      v15 = sub_21498E6A0();
      v16 = *(*(v15 - 8) + 48);
      v17 = a1 + *(a3 + 24);

      return v16(v17, a2, v15);
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v11 = *(v10 - 8);
    if (*(v11 + 84) == a3)
    {
      v12 = v10;
      v13 = *(v11 + 56);
      v14 = v7 + *(a4 + 20);

      return v13(v14, a2, a2, v12);
    }

    else
    {
      v15 = sub_21498E6A0();
      v16 = *(*(v15 - 8) + 56);
      v17 = v7 + *(a4 + 24);

      return v16(v17, a2, a2, v15);
    }
  }

  return result;
}

void sub_21490FA2C(uint64_t a1)
{
  sub_21490FC08();
  if (v1 <= 0x3F)
  {
    sub_21498E6A0();
    if (v2 <= 0x3F)
    {
      sub_21490F730(319, &qword_27CA1B648, MEMORY[0x277D232D0], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_21490F654(319, &qword_27CA1AC00, MEMORY[0x277D232E8], &qword_27CA1AC08, MEMORY[0x277D232E8]);
        if (v4 <= 0x3F)
        {
          sub_21490F654(319, &qword_27CA1B660, MEMORY[0x277D23330], &qword_27CA1A858, MEMORY[0x277D23330]);
          if (v5 <= 0x3F)
          {
            sub_21490F730(319, &qword_27CA1A860, type metadata accessor for MARemoteViewModel, MEMORY[0x277CDF468]);
            if (v6 <= 0x3F)
            {
              sub_21490FC60();
              if (v7 <= 0x3F)
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

void sub_21490FC08()
{
  if (!qword_27CA1C168)
  {
    v0 = sub_21498E770();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1C168);
    }
  }
}

void sub_21490FC60()
{
  if (!qword_27CA1C170)
  {
    v0 = sub_21498F440();
    if (!v1)
    {
      atomic_store(v0, &qword_27CA1C170);
    }
  }
}

uint64_t sub_21490FCC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - v4;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  MEMORY[0x28223BE20](v36);
  v7 = &v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C240, &qword_21499A238);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x28223BE20](v8);
  v35 = &v35 - v9;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C218, &unk_21499A220);
  MEMORY[0x28223BE20](v39);
  v11 = &v35 - v10;
  v12 = type metadata accessor for MANavigationLinkView(0);
  v13 = *(a1 + *(v12 + 40));
  if (!v13)
  {
    sub_21498E8C0();
    v33 = &qword_27CA1A858;
    v34 = MEMORY[0x277D23330];
LABEL_8:
    sub_21490F6E8(v33, v34, MEMORY[0x277D233A0]);
    result = sub_21498ED10();
    __break(1u);
    return result;
  }

  v14 = v12;
  v15 = *(v12 + 28);
  sub_21498E8C0();
  sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

  v16 = sub_21498E9C0();
  v17 = sub_21498E6A0();
  (*(*(v17 - 8) + 16))(v5, a1 + v15, v17);
  v18 = &v5[*(v3 + 36)];
  *v18 = v16;
  v18[1] = v13;
  v19 = *(a1 + *(v14 + 36));
  if (!v19)
  {
    sub_21498E870();
    v33 = &qword_27CA1AC08;
    v34 = MEMORY[0x277D232E8];
    goto LABEL_8;
  }

  sub_21498E870();
  sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

  v20 = sub_21498E9C0();
  sub_2148B4C68(v5, v7, &qword_27CA1C1E8, &qword_21499A208);
  v21 = &v7[*(v36 + 36)];
  *v21 = v20;
  v21[1] = v19;
  if (qword_27CA19F88 != -1)
  {
    swift_once();
  }

  v22 = qword_27CA31008;
  sub_214913900();
  v23 = v22;
  v24 = v35;
  MEMORY[0x2160581D0]();

  sub_21489DFCC(v7, &qword_27CA1C1D0, &qword_21499A200);
  v25 = sub_214911534(type metadata accessor for MANavigationLinkView);
  KeyPath = swift_getKeyPath();
  (*(v37 + 32))(v11, v24, v38);
  v27 = v39;
  v28 = &v11[*(v39 + 36)];
  *v28 = KeyPath;
  v28[1] = v25;
  sub_214911534(type metadata accessor for MANavigationLinkView);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21498EA10();

  v29 = v41;
  v30 = v42;
  v31 = sub_214913B68();
  MEMORY[0x2160581A0](v29, v30, v27, v31);
  swift_unknownObjectRelease();
  return sub_214895A50(v11);
}

uint64_t sub_2149101E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for MANavigationLinkView(0);
  v27[0] = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v27[1] = v4;
  v28 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1E8, &qword_21499A208);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C1D0, &qword_21499A200);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = *(a1 + v3[10]);
  if (v11)
  {
    v12 = v3[6];
    sub_21498E8C0();
    sub_21490F6E8(&qword_27CA1A858, MEMORY[0x277D23330], MEMORY[0x277D233A0]);

    v13 = sub_21498E9C0();
    v14 = sub_21498E6A0();
    (*(*(v14 - 8) + 16))(v7, a1 + v12, v14);
    v15 = &v7[*(v5 + 36)];
    *v15 = v13;
    v15[1] = v11;
    v16 = *(a1 + v3[9]);
    if (v16)
    {
      sub_21498E870();
      sub_21490F6E8(&qword_27CA1AC08, MEMORY[0x277D232E8], MEMORY[0x277D233A0]);

      v17 = sub_21498E9C0();
      sub_2148B4C68(v7, v10, &qword_27CA1C1E8, &qword_21499A208);
      v18 = &v10[*(v8 + 36)];
      *v18 = v17;
      v18[1] = v16;
      v19 = v28;
      sub_214914048(a1, v28, type metadata accessor for MANavigationLinkView);
      v20 = (*(v27[0] + 80) + 16) & ~*(v27[0] + 80);
      v21 = swift_allocObject();
      sub_2149140B0(v19, v21 + v20, type metadata accessor for MANavigationLinkView);
      v22 = v29;
      sub_2148B4C68(v10, v29, &qword_27CA1C1D0, &qword_21499A200);
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA1C278, &qword_21499A2D0);
      v24 = (v22 + *(result + 36));
      *v24 = sub_214914118;
      v24[1] = v21;
      v24[2] = 0;
      v24[3] = 0;
      return result;
    }

    sub_21498E870();
    v25 = &qword_27CA1AC08;
    v26 = MEMORY[0x277D232E8];
  }

  else
  {
    sub_21498E8C0();
    v25 = &qword_27CA1A858;
    v26 = MEMORY[0x277D23330];
  }

  sub_21490F6E8(v25, v26, MEMORY[0x277D233A0]);
  result = sub_21498ED10();
  __break(1u);
  return result;
}