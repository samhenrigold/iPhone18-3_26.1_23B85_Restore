uint64_t sub_21B27A4F0(uint64_t result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = result;
  v7 = a4[11];
  if (v7 <= result)
  {
LABEL_46:
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_21B34B634();
    MEMORY[0x21CEED5E0](0xD00000000000001CLL, 0x800000021B34C9F0);
    v39 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v39);

    MEMORY[0x21CEED5E0](0xD000000000000011, 0x800000021B34C9D0);
    v40 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v40);

    MEMORY[0x21CEED5E0](0x736E6D756C6F6320, 0xE90000000000002ELL);
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v8 = v5;
  v9 = a2;
  if (a2 == a3)
  {
    return result;
  }

  if (a3 < a2)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v11 = a4[8];
  v46 = v7 - 1;
  v52 = a4[12];
  v44 = a3;
  v45 = v52 + 32;
  v12 = v11 - 1;
  v43 = v11;
  v41 = result;
  while (1)
  {
    if (v9 >= a3)
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
      goto LABEL_44;
    }

    v15 = v9 * v7;
    if ((v9 * v7) >> 64 != (v9 * v7) >> 63)
    {
      goto LABEL_38;
    }

    v16 = __OFADD__(v15, v6);
    v17 = v15 + v6;
    if (v16)
    {
      goto LABEL_39;
    }

    if ((v17 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    v18 = *(v52 + 16);
    if (v17 >= v18)
    {
      goto LABEL_41;
    }

    v19 = v17 + 1;
    if (v17 + 1 >= v18)
    {
      goto LABEL_42;
    }

    v20 = *(v45 + 8 * v17);
    v21 = *(v45 + 8 * v19);
    if (v46 == v6)
    {
      if (v20 < v21)
      {
        while (1)
        {
          v22 = *(v12 + v21);
          if (v22 != 13 && v22 != 10)
          {
            break;
          }

          if (v20 >= --v21)
          {
            v21 = v20;
            break;
          }
        }
      }
    }

    else
    {
      v21 -= v20 < v21;
    }

    if (!v11)
    {
      goto LABEL_45;
    }

    v24 = v21 - v20;
    if (__OFSUB__(v21, v20))
    {
      goto LABEL_43;
    }

    v25 = (v11 + v20);
    if ((sub_21B22EBA0(v11 + v20, v21 - v20, *(a5 + 104)) & 1) == 0)
    {
      break;
    }

    v13 = 0;
    v14 = 1;
LABEL_6:
    result = sub_21B2FE174(v13, v14);
LABEL_7:
    ++v9;
    v11 = v43;
    a3 = v44;
    if (v9 == v44)
    {
      return result;
    }
  }

  sub_21B282660(v25, &v25[v24], v24, &v48);
  if ((v49 & 1) == 0)
  {
    v13 = v48;
    v14 = 0;
    goto LABEL_6;
  }

  v42 = v8;
  v26 = v7;
  v27 = sub_21B22EA68(v25, v24);
  if (v28)
  {
    v29 = sub_21B282818(v27, v28);
    v31 = v30;

    if ((v31 & 1) == 0)
    {
      result = sub_21B2FE174(v29, 0);
      v7 = v26;
      v6 = v41;
      v8 = v42;
      goto LABEL_7;
    }
  }

  v32 = *(a5 + 176);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
  v50 = v33;
  v51 = sub_21B27A8D0();
  v48 = v25;
  v49 = v24;
  v34 = __swift_project_boxed_opaque_existential_1(&v48, v33);
  if (*v34)
  {
    v35 = (v34[1] + *v34);
  }

  else
  {
    v35 = 0;
  }

  sub_21B273F78(*v34, v35, v47);
  v36 = v47[0];
  v37 = v47[1];
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  sub_21B27A934();
  swift_allocError();
  *v38 = v9;
  *(v38 + 8) = v32;
  *(v38 + 16) = 3;
  *(v38 + 24) = v36;
  *(v38 + 32) = v37;
  *(v38 + 40) = 4;
  return swift_willThrow();
}

unint64_t sub_21B27A8D0()
{
  result = qword_27CD7E820;
  if (!qword_27CD7E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E7F0, &qword_21B355E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E820);
  }

  return result;
}

unint64_t sub_21B27A934()
{
  result = qword_27CD7E828;
  if (!qword_27CD7E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E828);
  }

  return result;
}

uint64_t sub_21B27A988@<X0>(uint64_t a3@<X8>)
{
  if (sub_21B34ADA4() < *(v3 + 16))
  {
    goto LABEL_2;
  }

  sub_21B34ADE4();
  if (sub_21B34AE94() == 84 && v8 == 0xE100000000000000)
  {

LABEL_19:

    return sub_21B27AB54(a3);
  }

  v10 = sub_21B34B9F4();

  if (v10)
  {
    goto LABEL_19;
  }

LABEL_2:
  if (sub_21B34ADA4() < *(v3 + 24))
  {
LABEL_3:
    v5 = sub_21B34A834();
    v6 = *(*(v5 - 8) + 56);

    return v6(a3, 1, 1, v5);
  }

  sub_21B34ADE4();
  if (sub_21B34AE94() == 84 && v11 == 0xE100000000000000)
  {
  }

  else
  {
    v13 = sub_21B34B9F4();

    if ((v13 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return sub_21B27ADE8(a3);
}

uint64_t sub_21B27AB54@<X0>(uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  if (__OFSUB__(*(v3 + 16), 1))
  {
    __break(1u);
    return result;
  }

  sub_21B34ADE4();
  v9 = sub_21B34AE94();
  v11 = v10;
  v12 = v9 == 90 && v10 == 0xE100000000000000;
  if (v12 || (v13 = v9, (sub_21B34B9F4() & 1) != 0) || v13 == 43 && v11 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0 || v13 == 45 && v11 == 0xE100000000000000)
  {

LABEL_13:
    v14 = *v3;
    v15 = sub_21B34AC74();
    v16 = [v14 dateFromString_];

    if (v16)
    {
      sub_21B34A814();

      v17 = sub_21B34A834();
      (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    }

    else
    {
      v18 = sub_21B34A834();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }

    return sub_21B260BE8(v8, a3);
  }

  v19 = sub_21B34B9F4();

  if (v19)
  {
    goto LABEL_13;
  }

  v20 = sub_21B34A834();
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, 1, 1, v20);
}

uint64_t sub_21B27ADE8@<X0>(uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  result = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  if (__OFSUB__(*(v3 + 24), 1))
  {
    __break(1u);
    return result;
  }

  sub_21B34ADE4();
  v9 = sub_21B34AE94();
  v11 = v10;
  v12 = v9 == 90 && v10 == 0xE100000000000000;
  if (v12 || (v13 = v9, (sub_21B34B9F4() & 1) != 0) || v13 == 43 && v11 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0 || v13 == 45 && v11 == 0xE100000000000000)
  {

LABEL_13:
    v14 = *(v3 + 8);
    v15 = sub_21B34AC74();
    v16 = [v14 dateFromString_];

    if (v16)
    {
      sub_21B34A814();

      v17 = sub_21B34A834();
      (*(*(v17 - 8) + 56))(v8, 0, 1, v17);
    }

    else
    {
      v18 = sub_21B34A834();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }

    return sub_21B260BE8(v8, a3);
  }

  v19 = sub_21B34B9F4();

  if (v19)
  {
    goto LABEL_13;
  }

  v20 = sub_21B34A834();
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, 1, 1, v20);
}

uint64_t JSONType.hashValue.getter()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t sub_21B27B118()
{
  v1 = *v0;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v1);
  return sub_21B34BC24();
}

uint64_t sub_21B27B18C(uint64_t a1)
{
  v2 = *v1;
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](v2);
  return sub_21B34BC24();
}

unint64_t sub_21B27B1D4()
{
  result = qword_27CD7E830;
  if (!qword_27CD7E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E830);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CSVType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CSVType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t static ColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  return sub_21B27B4B0(a2, a3, a4, a5, sub_21B27CA48, sub_21B27CA54, 42, x8_0);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a2, 0, 0xE000000000000000, sub_21B27CA48, v13, a3, a4, x8_0, *(a5 + 8));
}

uint64_t static ColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  return sub_21B27B4B0(a2, a3, a4, a5, sub_21B27CA4C, sub_21B27CA54, 47, x8_0);
}

{
  return sub_21B27B4B0(a2, a3, a4, a5, sub_21B27CA50, sub_21B27B7CC, 47, x8_0);
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9D4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a2, 0, 0xE000000000000000, sub_21B27BFD8, v13, a3, a4, x8_0, *(*(a5 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a2, 0, 0xE000000000000000, sub_21B27C284, v13, a3, a4, x8_0, *(*(*(a5 + 16) + 8) + 8));
}

uint64_t sub_21B27B4B0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *)@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v32 = a8;
  v31 = a7;
  v30 = a2;
  v33 = a9;
  v13 = *(*(*(a4 + 8) + 8) + 8);
  v44 = a3;
  v45 = a3;
  v46 = v13;
  v47 = v13;
  v14 = sub_21B34B674();
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - v16;
  sub_21B34BA54();
  v41 = a3;
  v42 = a4;
  v43 = a5;
  v35 = a3;
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = &v40;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_21B23CCA8(v31, v34, v14, AssociatedTypeWitness, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  (*(v15 + 8))(v17, v14);
  v22 = *(a4 + 16);
  v44 = v22(a3, a4);
  v45 = v23;
  MEMORY[0x21CEED5E0](v32, 0xE100000000000000);
  v24 = v22(a3, a4);
  MEMORY[0x21CEED5E0](v24);

  v25 = v44;
  v26 = v45;
  v44 = v21;
  v27 = sub_21B34B054();
  v28 = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(v25, v26, &v44, AssociatedTypeWitness, v27, v28, v33);
}

uint64_t sub_21B27B72C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_21B27B7E4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *x8_0@<X8>, uint64_t a9)
{
  v20[2] = a7;
  v20[3] = a8;
  v20[4] = a9;
  v20[5] = a5;
  v20[6] = a6;
  v20[7] = a2;
  v14 = *(*(a8 + 8) + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = sub_21B2FCC28(sub_21B27CA04, v20, a7, AssociatedTypeWitness, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v16);
  v17 = sub_21B34B054();

  WitnessTable = swift_getWitnessTable();
  return Column.init<A>(name:contents:)(a3, a4, &v21, AssociatedTypeWitness, v17, WitnessTable, x8_0);
}

uint64_t sub_21B27B974@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  v15 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v15);

  MEMORY[0x21CEED5E0](a6, 0xE100000000000000);
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_21B27B7E4(a2, 0, 0xE000000000000000, a7, v17, a3, a4, x8_0, a5);
}

uint64_t sub_21B27BAD4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *x8_0@<X8>)
{
  v21 = 0;
  v22 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](a6, 0xE100000000000000);
  v15 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v15);

  v18 = a3;
  v19 = a4;
  v20 = a5;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, a7, v17, a3, a4, x8_0, a5);
}

uint64_t static ColumnProtocol<>.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](42, 0xE100000000000000);
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27BE80, v13, a3, a4, x8_0, *(a5 + 8));
}

uint64_t static ColumnProtocol<>./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9D4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27C12C, v13, a3, a4, x8_0, *(*(a5 + 24) + 8));
}

{
  v17 = 0;
  v18 = 0xE000000000000000;
  swift_getAssociatedTypeWitness();
  sub_21B34B9C4();
  MEMORY[0x21CEED5E0](47, 0xE100000000000000);
  v11 = (*(a4 + 16))(a3, a4);
  MEMORY[0x21CEED5E0](v11);

  v14 = a3;
  v15 = a4;
  v16 = a5;
  sub_21B27B7E4(a1, 0, 0xE000000000000000, sub_21B27C460, v13, a3, a4, x8_0, *(*(*(a5 + 16) + 8) + 8));
}

uint64_t static ColumnProtocol<>.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA70);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27CA6C);
}

uint64_t static ColumnProtocol<>.<= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA78);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27CA74);
}

uint64_t static ColumnProtocol<>.> infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27C578);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C5A8);
}

uint64_t static ColumnProtocol<>.>= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27C5D8);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C608);
}

uint64_t sub_21B27C620(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(v3 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return a3(a1, a2, AssociatedTypeWitness, v7) & 1;
}

uint64_t static ColumnProtocol<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA7C);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C6D0);
}

uint64_t static ColumnProtocol<>.!= infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_21B27C75C(a1, a2, a3, a4, a5, sub_21B27CA3C);
}

{
  return sub_21B27C848(a1, a2, a3, a4, a5, sub_21B27C994);
}

uint64_t sub_21B27C75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a4 + 8) + 8);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v12;
  v18 = v13;
  v19 = a6;
  v20 = &v11;
  v21 = a2;
  return sub_21B2FCC28(sub_21B27C9B8, v16, v12, MEMORY[0x277D839B0], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_21B27C848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(*(a4 + 8) + 8);
  v12 = a3;
  v13 = a4;
  v14 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = v12;
  v18 = v13;
  v19 = a6;
  v20 = &v11;
  v21 = a1;
  return sub_21B2FCC28(sub_21B27C9B8, v16, v12, MEMORY[0x277D839B0], MEMORY[0x277D84A98], v8, MEMORY[0x277D84AC0], v9);
}

uint64_t sub_21B27C9B8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 32))(a1, *(v2 + 48));
  *a2 = result & 1;
  return result;
}

uint64_t JSONReadingOptions.dateParsers.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t JSONReadingOptions.init()@<X0>(uint64_t *a1@<X8>)
{
  *a1 = MEMORY[0x277D84F90];

  v2 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v2 setFormatOptions_];
  v3 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  [v3 setFormatOptions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E460, &qword_21B352890);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B352080;
  v5 = swift_allocObject();
  *(v5 + 16) = v2;
  *(v4 + 32) = sub_21B27D2F4;
  *(v4 + 40) = v5;
  result = swift_allocObject();
  *(result + 16) = v3;
  *(v4 + 48) = sub_21B27D154;
  *(v4 + 56) = result;
  *a1 = v4;
  return result;
}

uint64_t sub_21B27CBEC@<X0>(void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_21B34AC74();
  v6 = [a2 dateFromString_];

  if (v6)
  {
    sub_21B34A814();

    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_21B34A834();
  v9 = *(*(v8 - 8) + 56);

  return v9(a3, v7, 1, v8);
}

uint64_t JSONReadingOptions.addDateParseStrategy<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v6 + 32))(v10 + v9, v8, a2);
  v11 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v11;
  if ((result & 1) == 0)
  {
    result = sub_21B24A830(0, v11[2] + 1, 1, v11);
    v11 = result;
    *v3 = result;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    result = sub_21B24A830((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  v11[2] = v14 + 1;
  v15 = &v11[2 * v14];
  v15[4] = sub_21B27D170;
  v15[5] = v10;
  *v3 = v11;
  return result;
}

uint64_t sub_21B27CE50@<X0>(void *a4@<X8>)
{
  sub_21B34A554();
  v5 = sub_21B34A834();
  return (*(*(v5 - 8) + 56))(a4, 0, 1, v5);
}

uint64_t sub_21B27CF5C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *(a2 + 8) = sub_21B27D2E4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t JSONWritingOptions.dateFormatter.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t JSONWritingOptions.dateFormatter.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

void JSONWritingOptions.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = sub_21B27D070;
  *(a1 + 16) = 0;
}

uint64_t sub_21B27D070()
{
  v0 = sub_21B34A7F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2F99AC(v3);
  v4 = sub_21B34A794();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_21B27D1B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_21B27D200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B27D24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_21B27D294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B27D304(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 344))
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

uint64_t sub_21B27D34C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 344) = 1;
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

    *(result + 344) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21B27D3F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v20, a1, a2, &qword_27CD7E150, &unk_21B3526D0, sub_21B260114, sub_21B2FD6A0);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v20;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
    v19 = &off_282CAA128;
    v16 = v8;
    v17 = v21;
    sub_21B2339B4(&v16, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v22 = *(v2 + 64);
      v23 = v10;
      v11 = *(v2 + 104);
      v24 = *(v2 + 96);
      while (v4 < v6)
      {
        v13 = sub_21B23087C(v4, v9);
        v15 = v14;
        if (sub_21B22EBA0(v13, v14, v11))
        {
          v12 = 2;
        }

        else if (sub_21B22EBA0(v13, v15, *(v3 + 112)))
        {
          v12 = 1;
        }

        else
        {
          if ((sub_21B22EBA0(v13, v15, *(v3 + 120)) & 1) == 0)
          {

            return 0;
          }

          v12 = 0;
        }

        ++v4;
        result = sub_21B2FE46C(v12);
        if (v6 == v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v25, a1, a2, &qword_27CD7E160, &unk_21B352A10, sub_21B25FEE8, sub_21B2FDCA8);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v25;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E160, &unk_21B352A10);
    v24 = &off_282CAA128;
    v21 = v8;
    v22 = v26;
    sub_21B2339B4(&v21, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v27 = *(v2 + 64);
      v28 = v10;
      v11 = *(v2 + 104);
      v29 = *(v2 + 96);
      while (v4 < v6)
      {
        v13 = sub_21B23087C(v4, v9);
        v15 = v14;
        if (sub_21B22EBA0(v13, v14, v11))
        {
          LOBYTE(v21) = 1;
          v12 = 0x100000000;
        }

        else
        {
          if (v13)
          {
            v16 = &v13[v15];
          }

          else
          {
            v16 = 0;
          }

          sub_21B2825A4(v13, v16, v15, &v21);
          if ((v21 & 0x100000000) != 0)
          {
            v17 = sub_21B22EA68(v13, v15);
            if (!v18 || (v19 = sub_21B28271C(v17, v18), , (v19 & 0x100000000) != 0))
            {

              return 0;
            }

            LOBYTE(v21) = 0;
            v12 = v19;
          }

          else
          {
            v20 = v21;
            LOBYTE(v21) = 0;
            v12 = v20;
          }
        }

        ++v4;
        result = sub_21B2FE5E0(v12);
        if (v6 == v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D798(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v27, a1, a2, &qword_27CD7E168, &unk_21B3526C0, sub_21B25E224, sub_21B2FD590);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v27;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
    v26 = &off_282CAA128;
    v23 = v8;
    v24 = v28;
    sub_21B2339B4(&v23, v3 + 288);
    return 1;
  }

  else
  {
    if (v6 >= v4)
    {
      v9 = *(v2 + 256);
      v10 = *(v2 + 80);
      v29 = *(v2 + 64);
      v30 = v10;
      v11 = *(v2 + 104);
      v31 = *(v2 + 96);
      while (v4 < v6)
      {
        v14 = sub_21B23087C(v4, v9);
        v16 = v15;
        if (sub_21B22EBA0(v14, v15, v11))
        {
          v12 = 0;
          v13 = 1;
        }

        else
        {
          if (v14)
          {
            v17 = &v14[v16];
          }

          else
          {
            v17 = 0;
          }

          sub_21B282660(v14, v17, v16, &v23);
          if (v24)
          {
            v18 = sub_21B22EA68(v14, v16);
            if (!v19 || (v20 = sub_21B282818(v18, v19), v22 = v21, , (v22 & 1) != 0))
            {

              return 0;
            }

            v12 = v20;
          }

          else
          {
            v12 = v23;
          }

          v13 = 0;
        }

        result = sub_21B2FE174(v12, v13);
        if (v6 == ++v4)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27D988(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_21B34A834();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = sub_21B23472C(&v42, a1, a2, &qword_27CD7E140, &unk_21B3526A0, sub_21B260568, sub_21B2FD6DC);
  v17 = v16;
  result = sub_21B2348E0(v3 + 216, v3 + 288);
  if (v15 == v17)
  {
LABEL_2:
    v19 = v42;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
    v41 = &off_282CAA128;
    v38 = v19;
    v39 = v43;
    sub_21B2339B4(&v38, v3 + 288);
    return 1;
  }

  else
  {
    if (v17 >= v15)
    {
      v20 = *(v3 + 256);
      v21 = *(v3 + 80);
      v44 = *(v3 + 64);
      v45 = v21;
      v33 = (v7 + 32);
      v34 = (v7 + 48);
      v22 = *(v3 + 96);
      v36 = *(v3 + 104);
      v37 = v20;
      v46 = v22;
      v23 = (v7 + 56);
      v31 = (v7 + 8);
      v32 = (v7 + 16);
      while (v15 < v17)
      {
        v24 = sub_21B23087C(v15, v37);
        v26 = v25;
        if (sub_21B22EBA0(v24, v25, v36))
        {
          (*v23)(v14, 1, 1, v6);
          sub_21B2FDE8C(v14);
          result = sub_21B27DF7C(v14);
        }

        else
        {
          v27 = sub_21B22EA68(v24, v26);
          if (!v28)
          {

            return 0;
          }

          sub_21B2D12C4(v27, v28, v12);

          if ((*v34)(v12, 1, v6) == 1)
          {

            sub_21B27DF7C(v12);
            return 0;
          }

          v29 = v35;
          (*v33)(v35, v12, v6);
          (*v32)(v14, v29, v6);
          (*v23)(v14, 0, 1, v6);
          sub_21B2FDE8C(v14);
          sub_21B27DF7C(v14);
          result = (*v31)(v29, v6);
        }

        if (v17 == ++v15)
        {
          goto LABEL_2;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_21B27DD4C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_21B23472C(&v23, a1, a2, &qword_27CD7E148, &unk_21B352A20, sub_21B26032C, sub_21B2FDCE4);
  v6 = v5;
  result = sub_21B2348E0(v2 + 216, v2 + 288);
  if (v4 == v6)
  {
LABEL_2:
    v8 = v23;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
    v22 = &off_282CAA128;
    v19 = v8;
    v20 = v24;
    return sub_21B2339B4(&v19, v3 + 288);
  }

  if (v6 < v4)
  {
    __break(1u);
  }

  else if (v4 < v6)
  {
    v9 = *(v2 + 256);
    v10 = *(v2 + 80);
    v25 = *(v2 + 64);
    v26 = v10;
    v11 = *(v2 + 104);
    v27 = *(v2 + 96);
    do
    {
      v16 = sub_21B23087C(v4, v9);
      v18 = v17;
      if (sub_21B22EBA0(v16, v17, v11))
      {
        sub_21B2FE75C(0, 0xF000000000000000);
      }

      else
      {
        sub_21B22F054(v16, v18);

        v13 = sub_21B274464(v12);
        v15 = v14;

        sub_21B2FE75C(v13, v15);
        sub_21B234324(v13, v15);
      }

      ++v4;
    }

    while (v6 != v4);
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t sub_21B27DEF8(uint64_t a1, uint64_t a2)
{

  v2[41] = a1;
  v2[42] = a2;
  v5 = v2[39];
  v6 = v2[40];
  __swift_mutable_project_boxed_opaque_existential_1((v2 + 36), v5);
  return (*(*(v6 + 8) + 16))(a1, a2, v5);
}

uint64_t sub_21B27DF7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SummaryColumnIDs(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SummaryColumnIDs(_WORD *result, int a2, int a3)
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

unint64_t sub_21B27E1E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (*(v0 + 32))
  {
    if (v2 == 1)
    {
      v3 = *(v1 + 16);
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 1;
  }

  if (*v0 > v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + 32))
    {
      if (v2 == 1)
      {
        v4 = *(v1 + 16);
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 1;
    }

    v5 = *(v0 + 8);
    if (v5 <= v4)
    {
      return v5 - *v0;
    }
  }

  __break(1u);
  return result;
}

uint64_t DataFrameProtocol.writeCSV(to:options:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  result = DataFrameProtocol.csvRepresentation(options:)(a2, a3, a4);
  if (!v4)
  {
    v7 = result;
    v8 = v6;
    sub_21B34A754();
    return sub_21B234324(v7, v8);
  }

  return result;
}

uint64_t DataFrameProtocol.csvRepresentation(options:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_21B34AD44();
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x28223BE20](v7);
  v64 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *(a1 + 49);
  v90 = *(a1 + 33);
  v91 = v10;
  v92[0] = *(a1 + 65);
  v11 = *(a1 + 10);
  v93 = *(a1 + 11);
  *(v92 + 15) = v11;
  v12 = *(a1 + 17);
  v88 = *(a1 + 1);
  v89 = v12;
  v13 = *(a1 + 12);
  v74 = *(a1 + 13);
  v71 = *(a1 + 14);
  v72 = v13;
  (*(a3 + 24))(v75, a2, a3);
  v14 = *v75;

  v15 = *(v14 + 16);

  if (!v15)
  {
    return 0;
  }

  v82 = 0;
  v83 = 0xE000000000000000;
  v67 = v3;
  LODWORD(v73) = v9;
  if (v9)
  {
    *v75 = (*(a3 + 56))(a2, a3);
    MEMORY[0x28223BE20](*v75);
    *(&v62 - 2) = a2;
    *(&v62 - 1) = a3;
    KeyPath = swift_getKeyPath();
    *&v70 = &v62;
    v17 = MEMORY[0x28223BE20](KeyPath);
    *(&v62 - 4) = a2;
    *(&v62 - 3) = a3;
    *(&v62 - 2) = v17;
    swift_getAssociatedTypeWitness();
    v18 = sub_21B34B054();
    WitnessTable = swift_getWitnessTable();
    v20 = v67;
    v22 = sub_21B2FCC28(sub_21B28043C, (&v62 - 6), v18, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v21);
    v67 = v20;

    *v75 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
    sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
    v23 = sub_21B34AB74();
    v25 = v24;

    MEMORY[0x21CEED5E0](v23, v25);

    MEMORY[0x21CEED5E0](v93, v72);
  }

  (*(a3 + 32))(v75, a2, a3);
  v70 = *v75;
  v27 = *&v75[16];
  v26 = *&v75[24];
  v28 = *&v75[32];
  v29 = v75[40];
  v30 = *&v75[24];
  if (v75[40])
  {
    if (v75[40] == 1 && *(*&v75[24] + 16))
    {
      v30 = *(*&v75[24] + 32);
    }

    else
    {
      sub_21B2A6400();
      if (v33)
      {
        v30 = 0;
      }

      else
      {
        v30 = v32;
      }
    }
  }

  sub_21B2A6400();
  v84 = v70;
  if (v35)
  {
    v36 = 0;
  }

  else
  {
    v36 = v34;
  }

  *&v85 = v27;
  *(&v85 + 1) = v26;
  *&v86 = v28;
  BYTE8(v86) = v29;
  *&v87 = v30;
  *(&v87 + 1) = v36;
  v81[0] = v84;
  v81[1] = v85;
  v81[2] = v86;
  v81[3] = v87;
  *&v75[33] = v90;
  *&v75[49] = v91;
  *v76 = v92[0];
  *&v75[1] = v88;
  v75[0] = v73;
  *&v75[17] = v89;
  *&v76[15] = *(v92 + 15);
  v77 = v93;
  v78 = v72;
  v79 = v74;
  v80 = v71;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  v38 = sub_21B278F78(&qword_27CD7E838, &qword_27CD7E510, &unk_21B351F10, MEMORY[0x277D83588]);
  v39 = v67;
  v40 = sub_21B27EB50(v81, v75, a2, v37, a3, v38);
  if (v39)
  {

    return sub_21B2803D4(&v84);
  }

  v63 = v40;
  v67 = 0;
  result = sub_21B248FC4();
  if (result < 0)
  {
    goto LABEL_32;
  }

  v42 = v71;
  v41 = v72;
  if (result)
  {
    v43 = 0;
    v44 = *(v63 + 16);
    v68 = v63 + 64;
    v69 = v44;
    *&v70 = result;
    while (!v44)
    {
      v49 = MEMORY[0x277D84F90];
      v45 = v42;
LABEL_20:
      *v75 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E840, &qword_21B352A68);
      sub_21B278F78(&qword_27CD7E848, &qword_27CD7E840, &qword_21B352A68, MEMORY[0x277D83958]);
      v42 = v45;
      v46 = sub_21B34AB74();
      v48 = v47;

      MEMORY[0x21CEED5E0](v46, v48);

      MEMORY[0x21CEED5E0](v93, v41);
      ++v43;
      v44 = v69;
      if (v43 == v70)
      {
        goto LABEL_29;
      }
    }

    *v75 = MEMORY[0x277D84F90];
    v73 = v43;
    result = sub_21B231F10(0, v44, 0);
    v43 = v73;
    v49 = *v75;
    v50 = v68;
    v51 = v44;
    while (v43 < *(*v50 + 16))
    {
      v52 = *v50 + 16 * v43;
      v53 = *(v52 + 32);
      v54 = *(v52 + 40);
      *v75 = v49;
      v56 = *(v49 + 16);
      v55 = *(v49 + 24);

      if (v56 >= v55 >> 1)
      {
        result = sub_21B231F10((v55 > 1), v56 + 1, 1);
        v43 = v73;
        v49 = *v75;
      }

      *(v49 + 16) = v56 + 1;
      v57 = v49 + 16 * v56;
      *(v57 + 32) = v53;
      *(v57 + 40) = v54;
      v50 += 48;
      if (!--v51)
      {
        v45 = v71;
        v41 = v72;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_29:
  v58 = v64;
  sub_21B34AD34();
  v59 = sub_21B34AC94();
  v61 = v60;
  result = (*(v65 + 8))(v58, v66);
  if (v61 >> 60 != 15)
  {

    sub_21B2803D4(&v84);

    return v59;
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_21B27E9E0@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 8);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_21B27EA8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 16);

  v8 = swift_checkMetadataState();
  return v7(v4, v5, v8, AssociatedConformanceWitness);
}

uint64_t sub_21B27EB50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a2 + 80);
  v19[4] = *(a2 + 64);
  v19[5] = v11;
  v19[6] = *(a2 + 96);
  v20 = *(a2 + 112);
  v12 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v12;
  v13 = *(a2 + 48);
  v19[2] = *(a2 + 32);
  v19[3] = v13;
  (*(a5 + 24))(&v18, a3, a5);
  v14 = v18;

  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = a6;
  v17[6] = a1;
  v17[7] = v19;
  v15 = sub_21B29A070(sub_21B280628, v17, v14);

  return v15;
}

double sub_21B27EC54@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X7>, _OWORD *a7@<X8>)
{
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = *(a3 + 80);
  v21[4] = *(a3 + 64);
  v21[5] = v16;
  v21[6] = *(a3 + 96);
  v22 = *(a3 + 112);
  v17 = *(a3 + 16);
  v21[0] = *a3;
  v21[1] = v17;
  v18 = *(a3 + 48);
  v21[2] = *(a3 + 32);
  v21[3] = v18;
  (*(*(v15 + 8) + 120))(v23, a2, v21, a4, a5, v14);
  if (v7)
  {
    *a6 = v7;
  }

  else
  {
    v20 = v23[1];
    *a7 = v23[0];
    a7[1] = v20;
    result = v24[0];
    a7[2] = *v24;
  }

  return result;
}

double sub_21B27ED48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int (*a4)(char *, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v21 = (*(*(a5 + 8) + 16))(a3);
  v25 = v14;
  swift_getAssociatedTypeWitness();
  v20 = sub_21B34BD24();
  v16 = v15;
  v17 = sub_21B27EE6C(a1, a2, a3, a4, a5, a6);
  if (v7)
  {
  }

  else
  {
    sub_21B3419B8(v21, v25, v20, v16, v17, v23);
    v19 = v23[1];
    *a7 = v23[0];
    a7[1] = v19;
    result = *&v24;
    a7[2] = v24;
  }

  return result;
}

uint64_t sub_21B27EE6C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(char *, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 80);
  v55 = *(v15 + 64);
  v56 = v16;
  v57 = *(v15 + 96);
  v58 = *(v15 + 112);
  v17 = *(v15 + 16);
  v51 = *v15;
  v52 = v17;
  v18 = *(v15 + 48);
  v53 = *(v15 + 32);
  v54 = v18;
  (*(v12 + 16))(v14, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E150, &unk_21B3526D0);
  if (swift_dynamicCast())
  {
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v22 = sub_21B27F2B8(a1, &v37, a4, a6, sub_21B280490, v19, v20, v21);

LABEL_8:

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E168, &unk_21B3526C0);
  if (swift_dynamicCast())
  {
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v26 = sub_21B27F2B8(a1, &v37, a4, a6, sub_21B2804BC, v23, v24, v25);
LABEL_7:
    v22 = v26;

    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E140, &unk_21B3526A0);
  if (swift_dynamicCast())
  {
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v26 = sub_21B27F360(a1, &v37, a4, a6, v27, v28, v29, v30);
    goto LABEL_7;
  }

  v36 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E148, &unk_21B352A20);
  v32 = swift_dynamicCast();
  if (v32)
  {
    v45 = v48;
    v46 = v49;
    v47 = v50;
    v41 = v55;
    v42 = v56;
    v43 = v57;
    v44 = v58;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v40 = v54;
    v22 = sub_21B27F41C(a1, &v37, a4, v36);
  }

  else
  {
    MEMORY[0x28223BE20](v32);
    *(&v35 - 6) = a3;
    *(&v35 - 5) = a4;
    v33 = v36;
    *(&v35 - 4) = a5;
    *(&v35 - 3) = v33;
    *(&v35 - 2) = v6;
    *(&v35 - 1) = &v51;
    v22 = sub_21B23CCA8(sub_21B280468, (&v35 - 8), a4, MEMORY[0x277D837D0], MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v34);
  }

LABEL_9:
  (*(v12 + 8))(v14, a3);
  return v22;
}

uint64_t sub_21B27F2B8(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, void (*a5)(char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v9;
  v17[6] = *(a2 + 96);
  v18 = *(a2 + 112);
  v10 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v10;
  v11 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v11;
  v12 = *v8;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v12;
  v15 = *(v8 + 1);
  v16 = v17;
  return sub_21B23CCA8(a5, v14, a3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_21B27F360(uint64_t a1, __int128 *a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a2[5];
  v21 = a2[4];
  v22 = v9;
  v23 = a2[6];
  v24 = *(a2 + 14);
  v10 = a2[1];
  v18 = *a2;
  *v19 = v10;
  v11 = a2[3];
  *&v19[16] = a2[2];
  v20 = v11;
  v12 = *v8;
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v12;
  v15 = *(v8 + 1);
  v16 = &v18;
  v17 = *&v19[8];
  return sub_21B23CCA8(sub_21B280540, v14, a3, MEMORY[0x277D837D0], MEMORY[0x277D84A98], a4, MEMORY[0x277D84AC0], a8);
}

uint64_t sub_21B27F41C(uint64_t a1, uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), uint64_t a4)
{
  v7 = *(a2 + 80);
  v17[4] = *(a2 + 64);
  v17[5] = v7;
  v17[6] = *(a2 + 96);
  v18 = *(a2 + 112);
  v8 = *(a2 + 16);
  v17[0] = *a2;
  v17[1] = v8;
  v9 = *(a2 + 48);
  v17[2] = *(a2 + 32);
  v17[3] = v9;
  v10 = *v4;
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v10;
  v14 = *(v4 + 1);
  v15 = v17;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  return sub_21B23CCA8(sub_21B280578, v13, a3, MEMORY[0x277D837D0], v11, a4, MEMORY[0x277D84950], &v16);
}

uint64_t sub_21B27F504@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  v35 = a6;
  v33 = a4;
  v34 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v32 = &v31 - v18;
  v38 = *a1;
  v19 = sub_21B34B314();
  (*(v10 + 16))(v13);
  v19(v36, 0);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v20 = *(a3 + 40);
    v21 = *(a3 + 48);
  }

  else
  {
    v23 = v32;
    (*(v14 + 32))(v32, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v17, v23, AssociatedTypeWitness);
    v24 = sub_21B34AD54();
    v25 = *(a3 + 80);
    v36[4] = *(a3 + 64);
    v36[5] = v25;
    v36[6] = *(a3 + 96);
    v37 = *(a3 + 112);
    v26 = *(a3 + 16);
    v36[0] = *a3;
    v36[1] = v26;
    v27 = *(a3 + 48);
    v36[2] = *(a3 + 32);
    v36[3] = v27;
    v20 = sub_21B27F7F8(v36, v24, v28);
    v21 = v29;

    result = (*(v14 + 8))(v23, AssociatedTypeWitness);
  }

  v30 = v35;
  *v35 = v20;
  v30[1] = v21;
  return result;
}

uint64_t sub_21B27F7F8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 112);
  v15 = *(a1 + 104);
  v16 = v5;
  v14[2] = &v15;
  if (sub_21B280258(sub_21B2804E8, v14, a2, a3) & 1) != 0 || (v15 = v4, v16 = a3, v19 = 34, v20 = 0xE100000000000000, sub_21B233B24(), (sub_21B34B4F4()) || (v15 = v4, v16 = a3, v19 = 13, v20 = 0xE100000000000000, (sub_21B34B4F4()) || (v15 = v4, v16 = a3, v19 = 10, v20 = 0xE100000000000000, (sub_21B34B4F4()))
  {
    v6 = 0xE000000000000000;
    v19 = 0;
    v20 = 0xE000000000000000;
    v7 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v7 = v4 & 0xFFFFFFFFFFFFLL;
    }

    v15 = v4;
    v16 = a3;
    v17 = 0;
    v18 = v7;

    v8 = sub_21B34AE14();
    v10 = v9;
    if (v9)
    {
      v11 = v8;
      do
      {
        if (v11 == 34 && v10 == 0xE100000000000000 || (sub_21B34B9F4() & 1) != 0)
        {

          MEMORY[0x21CEED5E0](8738, 0xE200000000000000);
        }

        else
        {
          MEMORY[0x21CEED5D0](v11, v10);
        }

        v11 = sub_21B34AE14();
        v10 = v12;
      }

      while (v12);
      v10 = v19;
      v6 = v20;
    }

    v15 = 34;
    v16 = 0xE100000000000000;
    MEMORY[0x21CEED5E0](v10, v6);

    MEMORY[0x21CEED5E0](34, 0xE100000000000000);
    return v15;
  }

  else
  {
  }

  return v4;
}

uint64_t sub_21B27FA20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_11;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_11;
  }

  v9 = v8[1];
  if (v4 >= v9)
  {
LABEL_11:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  v10 = sub_21B2B18C4(v4, v8, v9);
  if (v10 == 2)
  {
    v12 = a3[5];
    v11 = a3[6];
  }

  else if (v10)
  {
    v12 = a3[7];
    v11 = a3[8];
  }

  else
  {
    v12 = a3[9];
    v11 = a3[10];
  }

  *a4 = v12;
  a4[1] = v11;
}

uint64_t sub_21B27FB20@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  v4 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v8 = *(a2 + 16);
  if (!v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = v8[1];
  if (v4 >= v9)
  {
LABEL_9:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  sub_21B2B1790(v4, v8, v9);
  if (v10)
  {
    v12 = *(a3 + 40);
    v11 = *(a3 + 48);
  }

  else
  {
    v14 = sub_21B34B0A4();
    v15 = *(a3 + 80);
    v20[4] = *(a3 + 64);
    v20[5] = v15;
    v20[6] = *(a3 + 96);
    v21 = *(a3 + 112);
    v16 = *(a3 + 16);
    v20[0] = *a3;
    v20[1] = v16;
    v17 = *(a3 + 48);
    v20[2] = *(a3 + 32);
    v20[3] = v17;
    v12 = sub_21B27F7F8(v20, v14, v18);
    v11 = v19;
  }

  *a4 = v12;
  a4[1] = v11;
  return result;
}

uint64_t sub_21B27FC64@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t (*a4)(char *)@<X5>, uint64_t *a5@<X8>)
{
  v29 = a5;
  v9 = sub_21B34A834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E100, &unk_21B352A30);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v28 - v14;
  v16 = *a1;
  if (v16 < 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v17 = *(a2 + 16);
  if (!v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v16 >= v17[1])
  {
LABEL_9:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  sub_21B2B194C(v16, v17, v15);
  if ((*(v10 + 48))(v15, 1, v9) == 1)
  {
    v19 = *(a3 + 40);
    v18 = *(a3 + 48);
  }

  else
  {
    (*(v10 + 32))(v12, v15, v9);
    v21 = a4(v12);
    v22 = *(a3 + 80);
    v30[4] = *(a3 + 64);
    v30[5] = v22;
    v30[6] = *(a3 + 96);
    v31 = *(a3 + 112);
    v23 = *(a3 + 16);
    v30[0] = *a3;
    v30[1] = v23;
    v24 = *(a3 + 48);
    v30[2] = *(a3 + 32);
    v30[3] = v24;
    v19 = sub_21B27F7F8(v30, v21, v25);
    v18 = v26;

    result = (*(v10 + 8))(v12, v9);
  }

  v27 = v29;
  *v29 = v19;
  v27[1] = v18;
  return result;
}

uint64_t sub_21B27FEF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X7>, uint64_t *a7@<X8>)
{
  v28 = a6;
  v13 = sub_21B34AD44();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = *a1;
  if (*a1 < 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  v15 = *(a4 + 16);
  if (!v15)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v14 >= v15[1])
  {
LABEL_10:
    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  sub_21B2B1AE0(v14, v15, &v27);
  v16 = *(&v27 + 1);
  if (*(&v27 + 1) >> 60 == 15)
  {
    v17 = *(a5 + 48);
    *a7 = *(a5 + 40);
    a7[1] = v17;
  }

  else
  {
    v19 = v27;
    sub_21B34AD34();
    v20 = sub_21B34ACA4();
    if (v21)
    {
      v22 = sub_21B27F7F8(a5, v20, v21);
      v24 = v23;
      sub_21B260C58(v19, v16);

      *a7 = v22;
      a7[1] = v24;
    }

    else
    {
      sub_21B2805D4();
      v25 = swift_allocError();
      *v26 = v14;
      v26[1] = a2;
      v26[2] = a3;
      v26[3] = v19;
      v26[4] = v16;
      swift_willThrow();
      *v28 = v25;
    }
  }

  return result;
}

double sub_21B280100@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

double sub_21B2801AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

uint64_t sub_21B280258(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  v13[2] = a3;
  v13[3] = a4;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v13[4] = 0;
  v13[5] = v6;

  v7 = sub_21B34AE14();
  if (v8)
  {
    v9 = v8;
    while (1)
    {
      v13[0] = v7;
      v13[1] = v9;
      v10 = a1(v13);

      if (v4 || (v10 & 1) != 0)
      {
        break;
      }

      v7 = sub_21B34AE14();
      v9 = v11;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    return 1;
  }

  else
  {
LABEL_8:

    return 0;
  }
}

double sub_21B280328@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int (*a3)(char *, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = sub_21B27ED48(a1, a2, a5, a3, WitnessTable, a4, v16);
  if (!v6)
  {
    v15 = v16[1];
    *a6 = v16[0];
    a6[1] = v15;
    result = *&v17;
    a6[2] = v17;
  }

  return result;
}

uint64_t sub_21B2803D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E510, &unk_21B351F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B2804E8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21B34B9F4() & 1;
  }
}

unint64_t sub_21B2805D4()
{
  result = qword_27CD7E850;
  if (!qword_27CD7E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E850);
  }

  return result;
}

uint64_t DataFrame.Slice.columns.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = v0[3];
    v5 = v0[4];
    v6 = *(v0 + 40);
    v21 = MEMORY[0x277D84F90];
    sub_21B254014(0, v2, 0);
    v3 = v21;
    v7 = v1 + 32;
    do
    {
      sub_21B233A74(v7, v16);
      v8 = v17;
      v9 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      (*(*(v9 + 8) + 160))(v19, v4, v5, v6, v8);
      sub_21B233960(v16);
      v21 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_21B254014((v10 > 1), v11 + 1, 1);
        v3 = v21;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 40 * v11;
      v13 = v19[0];
      v14 = v19[1];
      *(v12 + 64) = v20;
      *(v12 + 32) = v13;
      *(v12 + 48) = v14;
      v7 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t DataFrame.Slice.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

uint64_t DataFrame.Slice.base.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_21B280850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  v6 = *(a1 + 40);
  *(a2 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

uint64_t sub_21B2808D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7[0] = *a1;
  v7[1] = v1;
  v7[2] = v2;
  v7[3] = v3;
  v7[4] = v4;
  v8 = v5;

  sub_21B254074(v3, v4, v5);
  return DataFrame.Slice.rows.setter(v7);
}

uint64_t DataFrame.Slice.rows.setter(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 40);
  v7 = sub_21B2FB104(v4, v5, v6);
  v31 = *(v7 + 16);
  if (!v31)
  {

    return sub_21B23A9F4(v4, v5, v6);
  }

  v26 = v6;
  v27 = v5;
  v28 = v4;
  v8 = 0;
  v30 = v7 + 32;
  v9 = *v2;
  v35 = *(v2 + 16);
  v36 = *(v2 + 8);
  v29 = v2;
  while (1)
  {
    v10 = *(v30 + 8 * v8);
    if (*(v9 + 2))
    {
      sub_21B233A74((v9 + 32), v38);
      v11 = v39;
      v12 = v40;
      __swift_project_boxed_opaque_existential_1(v38, v39);
      v13 = *(v12 + 8);
      v33 = *(v13 + 48);

      v14 = v33(v11, v13);
      sub_21B233960(v38);
      if (v14 < 0)
      {
        goto LABEL_25;
      }

      if (v14)
      {
        v15 = 0;
        goto LABEL_11;
      }
    }

    else
    {
    }

    v14 = 0;
    v15 = 2;
LABEL_11:
    v16 = *(v3 + 16);
    if (v16 != *(v9 + 2))
    {
      goto LABEL_27;
    }

    if (v16)
    {
      break;
    }

LABEL_4:
    ++v8;

    sub_21B23A9F4(0, v14, v15);
    *v2 = v9;
    *(v2 + 8) = v36;
    *(v2 + 16) = v35;
    if (v8 == v31)
    {

      return sub_21B23A9F4(v28, v27, v26);
    }
  }

  v34 = v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_21B23A2F4(v9);
  }

  if (v16 <= *(v3 + 16))
  {
    v32 = v14;
    v17 = 0;
    v18 = 0;
    while (1)
    {
      sub_21B233A74(v3 + v17 + 32, v38);
      if (v18 >= *(v9 + 2))
      {
        break;
      }

      ++v18;
      v19 = v39;
      v20 = v40;
      v21 = __swift_project_boxed_opaque_existential_1(v38, v39);
      v37[3] = v19;
      v37[4] = *(v20 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
      (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v21, v19);
      v23 = *&v9[v17 + 56];
      v24 = *&v9[v17 + 64];
      __swift_mutable_project_boxed_opaque_existential_1(&v9[v17 + 32], v23);
      (*(v24 + 72))(v10, v10, v37, v23, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      sub_21B233960(v38);
      v17 += 40;
      if (v16 == v18)
      {

        v2 = v29;
        v14 = v32;
        v15 = v34;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
  }

  __break(1u);
LABEL_27:
  result = sub_21B34B824();
  __break(1u);
  return result;
}

void (*DataFrame.Slice.rows.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + 40);
  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  *(v4 + 24) = v8;
  *(v4 + 32) = v9;
  *(v4 + 40) = v10;

  sub_21B254074(v8, v9, v10);
  return sub_21B280E3C;
}

void sub_21B280E3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[1];
  v5 = (*a1)[2];
  v4 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = *(*a1 + 40);
  v11[0] = **a1;
  v11[1] = v3;
  v11[2] = v5;
  v11[3] = v4;
  v11[4] = v6;
  v12 = v7;
  if (a2)
  {

    sub_21B254074(v4, v6, v7);
    DataFrame.Slice.rows.setter(v11);
    v8 = v2[3];
    v9 = v2[4];
    v10 = *(v2 + 40);

    sub_21B23A9F4(v8, v9, v10);
  }

  else
  {
    DataFrame.Slice.rows.setter(v11);
  }

  free(v2);
}

uint64_t DataFrame.Slice.shape.getter()
{
  v1 = sub_21B2FB1D4(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  DataFrame.Slice.columns.getter();

  return v1;
}

uint64_t sub_21B280FB4@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_21B281000@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;
  v6 = *(v1 + 40);
  *(a1 + 40) = v6;

  return sub_21B254074(v4, v5, v6);
}

void (*sub_21B281080(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = DataFrame.Slice.rows.modify(v2);
  return sub_21B2444C0;
}

uint64_t sub_21B2810F4()
{
  v1 = sub_21B2FB1D4(*(v0 + 24), *(v0 + 32), *(v0 + 40));
  DataFrame.Slice.columns.getter();

  return v1;
}

uint64_t sub_21B281178(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  v15[0] = *v2;
  v15[1] = v6;
  v15[2] = v8;

  v11 = sub_21B23AC94(a1, a2);

  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v5 + 16))
  {
    sub_21B233A74(v5 + 40 * v11 + 32, v15);
    v13 = v16;
    v14 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(*(v14 + 8) + 160))(v7, v9, v10, v13);
    return sub_21B233960(v15);
  }

  __break(1u);
  return result;
}

void DataFrame.Slice.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v13 = v5[4];
  v14 = *(v5 + 40);
  v25 = *v5;
  *&v26 = v10;
  *(&v26 + 1) = v11;
  sub_21B254074(v12, v13, v14);

  v15 = sub_21B23AC94(a1, a2);

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v15 < *(v9 + 16))
  {
    sub_21B233A74(v9 + 40 * v15 + 32, v35);
    sub_21B3338E8(a4, a4);
    sub_21B233960(v35);
    v29 = v32;
    v30 = v33;
    v31 = v34;
    v21 = v12;
    *&v22 = v13;
    BYTE8(v22) = v14;
    v18 = type metadata accessor for Column(0, a4, v16, v17);
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v21, v18, WitnessTable, &v25);
    sub_21B23A9F4(v12, v13, v14);

    v21 = v25;
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_21B2D3BC4(&v21, x8_0);
    return;
  }

  __break(1u);
}

void DataFrame.Slice.subscript.getter(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + 40);
  v23 = *v3;
  *&v24 = v8;
  *(&v24 + 1) = v9;
  sub_21B254074(v10, v11, v12);

  v13 = sub_21B23AC94(v5, v6);

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v7 + 16))
  {
    sub_21B233A74(v7 + 40 * v13 + 32, v33);
    sub_21B3338E8(a2, a2);
    sub_21B233960(v33);
    v27 = v30;
    v28 = v31;
    v29 = v32;
    v19 = v10;
    *&v20 = v11;
    BYTE8(v20) = v12;
    v16 = type metadata accessor for Column(0, a2, v14, v15);
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v19, v16, WitnessTable, &v23);
    sub_21B23A9F4(v10, v11, v12);

    v19 = v23;
    v20 = v24;
    v21 = v25;
    v22 = v26;
    sub_21B2D3BC4(&v19, a3);
    return;
  }

  __break(1u);
}

void DataFrame.Slice.subscript.getter(unint64_t result@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v4 + 16) > result)
  {
    v7 = *(v4 + 24);
    v8 = *(v4 + 32);
    v9 = *(v4 + 40);
    sub_21B233A74(*v4 + 40 * result + 32, &v18);
    sub_21B254074(v7, v8, v9);
    sub_21B3338E8(a3, a3);
    sub_21B233960(&v18);
    v22 = v25;
    v23 = v26;
    v24 = v27;
    v14 = v7;
    *&v15 = v8;
    BYTE8(v15) = v9;
    v12 = type metadata accessor for Column(0, a3, v10, v11);
    WitnessTable = swift_getWitnessTable();
    sub_21B283B30(&v14, v12, WitnessTable, &v18);
    sub_21B23A9F4(v7, v8, v9);

    v14 = v18;
    v15 = v19;
    v16 = v20;
    v17 = v21;
    sub_21B2D3BC4(&v14, x8_0);
    return;
  }

  __break(1u);
}

double DataFrame.Slice.subscript.getter@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + 8);
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = *(v4 + 32);
  *a4 = *v4;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
  *(a4 + 32) = v12;
  v13 = *(v4 + 40);
  *(a4 + 40) = v13;

  sub_21B254074(v11, v12, v13);

  DataFrame.selecting<A>(columnNames:)(a1, a2, a3, &v16);

  v14 = v17;

  result = *&v16;
  *a4 = v16;
  *(a4 + 16) = v14;
  return result;
}

uint64_t DataFrame.Slice.filter<A>(on:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(char *)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = v7[1];
  v14 = v7[2];
  v31 = v7[4];
  v32 = v7[3];
  v30 = *(v7 + 40);
  v40 = *v7;
  v33 = v13;
  DataFrame.subscript.getter(a1, a2, a3, a6);
  v37 = v34;
  v38 = v35;
  v39 = v36;
  v17 = type metadata accessor for Column(0, a6, v15, v16);
  WitnessTable = swift_getWitnessTable();
  sub_21B2D2874(a4, a5, v17, WitnessTable, &v34);
  if (v8)
  {
  }

  else
  {
    v20 = v34;
    v27 = v34;
    v28 = v35;
    v29 = v14;
    v21 = v36;

    sub_21B254074(v32, v31, v30);
    v22 = sub_21B248CCC(v20, v28, v21, v32, v31, v30);
    v24 = v23;
    v26 = v25;

    result = sub_21B23A9F4(v27, v28, v21);
    *a7 = v40;
    *(a7 + 8) = v33;
    *(a7 + 16) = v29;
    *(a7 + 24) = v22;
    *(a7 + 32) = v24;
    *(a7 + 40) = v26;
  }

  return result;
}

uint64_t DataFrame.Slice.filter<A>(on:_:)@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = v5[1];
  v14 = v5[2];
  v32 = v5[3];
  v31 = v5[4];
  v30 = *(v5 + 40);
  v41 = *v5;
  v38 = v41;
  v39 = v13;
  v33 = v13;
  v34[0] = v12;
  v40 = v14;
  v34[1] = v11;

  DataFrame.subscript.getter(v34, a4);

  v38 = v35;
  v39 = v36;
  v40 = v37;
  v17 = type metadata accessor for Column(0, a4, v15, v16);
  WitnessTable = swift_getWitnessTable();
  sub_21B2D2874(a2, a3, v17, WitnessTable, &v35);
  if (v6)
  {
  }

  else
  {
    v20 = v35;
    v27 = v35;
    v28 = v36;
    v29 = v14;
    v21 = v37;

    sub_21B254074(v32, v31, v30);
    v22 = sub_21B248CCC(v20, v28, v21, v32, v31, v30);
    v24 = v23;
    v26 = v25;

    result = sub_21B23A9F4(v27, v28, v21);
    *a5 = v41;
    *(a5 + 8) = v33;
    *(a5 + 16) = v29;
    *(a5 + 24) = v22;
    *(a5 + 32) = v24;
    *(a5 + 40) = v26;
  }

  return result;
}

uint64_t DataFrame.Slice.prefix(through:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[3];
    v5 = v2[4];
    v7 = v2[1];
    v8 = v2[2];
    v9 = *v2;
    v10 = *(v2 + 40);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_21B254074(v6, v5, v10);
    sub_21B254074(v6, v5, v10);

    sub_21B23A9F4(v6, v5, v10);
    v11 = sub_21B2FB03C(v3, v6, v5, v10);
    v13 = v12;
    v15 = v14;
    result = sub_21B23A9F4(v6, v5, v10);
    *a2 = v9;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v11;
    *(a2 + 32) = v13;
    *(a2 + 40) = v15;
  }

  return result;
}

uint64_t sub_21B281D40@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  v12 = *(v3 + 40);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B254074(v10, v11, v12);
  sub_21B254074(v10, v11, v12);

  sub_21B23A9F4(v10, v11, v12);
  v13 = a2(a1, v10, v11, v12);
  v15 = v14;
  LOBYTE(a1) = v16;
  result = sub_21B23A9F4(v10, v11, v12);
  *a3 = v8;
  *(a3 + 8) = v7;
  *(a3 + 16) = v9;
  *(a3 + 24) = v13;
  *(a3 + 32) = v15;
  *(a3 + 40) = a1;
  return result;
}

uint64_t DataFrame.Slice.suffix(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_21B254074(v8, v9, v10);
  sub_21B254074(v8, v9, v10);

  sub_21B23A9F4(v8, v9, v10);
  sub_21B2A6400();
  v12 = v11;
  v14 = v13;
  sub_21B254074(v8, v9, v10);

  result = sub_21B23A9F4(v8, v9, v10);
  if (v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v16 < a1)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = __OFADD__(v16, 1);
  v18 = (v16 + 1);
  if (v17)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v19 = v18 == a1;
  if (v18 == a1)
  {
    v20 = 0;
  }

  else
  {
    v20 = a1;
  }

  if (v18 == a1)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  v22 = 2 * v19;
  v23 = sub_21B248CCC(v20, v21, 2 * v19, v8, v9, v10);
  v25 = v24;
  v27 = v26;
  result = sub_21B23A9F4(v20, v21, v22);
  *a2 = v6;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  *(a2 + 40) = v27;
  return result;
}

double DataFrame.Slice.selecting(columnNames:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  *a2 = *v2;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  v10 = *(v2 + 40);
  *(a2 + 40) = v10;

  sub_21B254074(v8, v9, v10);
  sub_21B24377C(a1, v5, v6, v7, &v13);
  v11 = v14;

  result = *&v13;
  *a2 = v13;
  *(a2 + 16) = v11;
  return result;
}

uint64_t static DataFrame.Slice.== infix(_:_:)()
{
  v0 = DataFrame.Slice.columns.getter();
  v1 = DataFrame.Slice.columns.getter();
  v2 = sub_21B247210(v0, v1);

  return v2 & 1;
}

uint64_t DataFrame.Slice.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 2);
  v4 = *(v1 + 40);
  v10 = *v1;
  v11 = v3;
  v12 = *(v1 + 24);
  v13 = v4;
  v5 = DataFrame.Slice.columns.getter();
  MEMORY[0x21CEEE3B0](*(v5 + 16));
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 32;
    do
    {
      sub_21B25EFA4(v7, v9);
      AnyColumnSlice.hash(into:)(a1);
      sub_21B25F000(v9);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  else
  {
  }
}

uint64_t DataFrame.Slice.hashValue.getter()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 40);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2822E4()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 40);
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 24);
  v8 = v2;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v4);
  return sub_21B34BC24();
}

uint64_t sub_21B28234C(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 40);
  v6 = *v1;
  v7 = v2;
  v8 = *(v1 + 24);
  v9 = v3;
  sub_21B34BBC4();
  DataFrame.Slice.hash(into:)(v5);
  return sub_21B34BC24();
}

uint64_t sub_21B2823AC()
{
  v0 = DataFrame.Slice.columns.getter();
  v1 = DataFrame.Slice.columns.getter();
  v2 = sub_21B247210(v0, v1);

  return v2 & 1;
}

unint64_t sub_21B282474()
{
  result = qword_27CD7E858;
  if (!qword_27CD7E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E858);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TabularData16_RangeSetStorageV01_E033_8A630413E119DDD252E1F6455D72654FLLOySi_G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21B2824F8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_21B282540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_21B2825A4(const char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __break(1u);
  }

  v13[0] = &a1[a3];
  v8 = a1[a3];
  a1[a3] = 0;
  v9 = strtof(a1, v13);
  if (v13[0])
  {
    v10 = v13[0] == a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v12 = v9;
  if (!v10)
  {
    v12 = 0.0;
  }

  *a4 = v12;
  *(a4 + 4) = v11;
  a1[a3] = v8;
}

void sub_21B282660(const char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    __break(1u);
  }

  v13[0] = &a1[a3];
  v8 = a1[a3];
  a1[a3] = 0;
  v9 = strtod(a1, v13);
  if (v13[0])
  {
    v10 = v13[0] == a2;
  }

  else
  {
    v10 = 0;
  }

  v11 = !v10;
  v12 = v9;
  if (!v10)
  {
    v12 = 0.0;
  }

  *a4 = v12;
  *(a4 + 8) = v11;
  a1[a3] = v8;
}

unint64_t sub_21B28271C(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_21B2E1664(a1, a2);
    v10 = v9;

    a2 = v10;
    if ((v10 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_21B2825A4(v15, v15 + (HIBYTE(a2) & 0xF), HIBYTE(a2) & 0xF, &v13);
    v7 = v13;
    v8 = v14;
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21B34B6F4();
    v5 = v12;
  }

  if (v4)
  {
    v6 = &v4[v5];
  }

  else
  {
    v6 = 0;
  }

  sub_21B2825A4(v4, v6, v5, v15);
  v7 = v15[0];
  v8 = BYTE4(v15[0]);
LABEL_11:

  LOBYTE(v15[0]) = v8;
  return v7 | (v8 << 32);
}

uint64_t sub_21B282818(uint64_t a1, unint64_t a2)
{

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = sub_21B2E1664(a1, a2);
    v9 = v8;

    a2 = v9;
    if ((v9 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13[0] = a1;
    v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    sub_21B282660(v13, v13 + (HIBYTE(a2) & 0xF), HIBYTE(a2) & 0xF, &v12);
    v7 = v12;
    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_21B34B6F4();
    v5 = v11;
  }

  if (v4)
  {
    v6 = &v4[v5];
  }

  else
  {
    v6 = 0;
  }

  sub_21B282660(v4, v6, v5, v13);
  v7 = v13[0];
LABEL_11:

  return v7;
}

uint64_t sub_21B28290C@<X0>(unsigned __int8 a1@<W0>, size_t *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_21B34AD44();
  result = MEMORY[0x28223BE20](v7 - 8);
  if (a1 <= 4u)
  {
    if (a1 <= 1u)
    {
      if (a1)
      {
        v27 = *a2;
        if ((*a2 & 7) != 0)
        {
          result = sub_21B34A1CC();
LABEL_46:
          *(a3 + 24) = MEMORY[0x277D839F8];
          goto LABEL_47;
        }

LABEL_45:
        result = *v27;
        *a2 = (v27 + 1);
        goto LABEL_46;
      }

      v10 = *a2;
      if ((*a2 & 7) != 0)
      {
        result = sub_21B34A1CC();
LABEL_43:
        v27 = MEMORY[0x277D83B88];
        *(a3 + 24) = MEMORY[0x277D83B88];
        if ((result & 0x8000000000000000) == 0)
        {
LABEL_47:
          *a3 = result;
          return result;
        }

        __break(1u);
        goto LABEL_45;
      }

LABEL_42:
      result = *v10;
      *a2 = (v10 + 1);
      goto LABEL_43;
    }

    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v9 = *a2;
        if ((*a2 & 7) != 0)
        {
          v11 = sub_21B34A1CC();
          if ((v11 & 0x8000000000000000) == 0)
          {
LABEL_7:
            v12 = sub_21B24A5FC(0, v11, 0, MEMORY[0x277D84F90]);
            if (v11)
            {
              v13 = *a2;
              do
              {
                v15 = *v13++;
                v14 = v15;
                v17 = *(v12 + 2);
                v16 = *(v12 + 3);
                if (v17 >= v16 >> 1)
                {
                  v12 = sub_21B24A5FC((v16 > 1), v17 + 1, 1, v12);
                }

                *(v12 + 2) = v17 + 1;
                v18 = &v12[16 * v17];
                *(v18 + 4) = v14;
                v18[40] = 0;
                --v11;
              }

              while (v11);
              *a2 = v13;
            }

            result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7E870, &unk_21B352BC0);
            *(a3 + 24) = result;
            *a3 = v12;
            return result;
          }

          goto LABEL_41;
        }

LABEL_40:
        v29 = *v9;
        v10 = v9 + 1;
        v11 = v29;
        *a2 = v10;
        if ((v29 & 0x8000000000000000) == 0)
        {
          goto LABEL_7;
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      result = sub_21B2830FC(a2);
      if (v3)
      {
        return result;
      }

      v21 = result;
      v22 = &qword_27CD7E868;
      v23 = &qword_21B352BB8;
LABEL_30:
      result = __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
      *(a3 + 24) = result;
      *a3 = v21;
      return result;
    }

    v24 = *a2;
    if ((*a2 & 7) != 0)
    {
      v25 = sub_21B34A1CC();
      if ((v25 & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v28 = *v24;
      v9 = v24 + 1;
      v25 = v28;
      *a2 = v9;
      if ((v28 & 0x8000000000000000) == 0)
      {
LABEL_25:
        *a2 += v25;
        sub_21B34AD34();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E7F0, &qword_21B355E70);
        sub_21B28325C();
        result = sub_21B34ACB4();
        if (v26)
        {
          *(a3 + 24) = MEMORY[0x277D837D0];
          *a3 = result;
          *(a3 + 8) = v26;
          return result;
        }

        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_40;
  }

  if (a1 <= 6u)
  {
    if (a1 == 5)
    {
      result = sub_21B282CA8(a2);
      if (v3)
      {
        return result;
      }

      v21 = result;
      v22 = &qword_27CD7E860;
      v23 = &qword_21B352BB0;
      goto LABEL_30;
    }

    sub_21B239564();
    swift_allocError();
    v20 = xmmword_21B352700;
LABEL_36:
    *v19 = v20;
    *(v19 + 16) = 2;
    return swift_willThrow();
  }

  if (a1 == 7)
  {
LABEL_27:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (a1 == 8)
  {
    sub_21B239564();
    swift_allocError();
    v20 = xmmword_21B3526F0;
    goto LABEL_36;
  }

  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E330, &qword_21B351C48);
  result = sub_21B327FEC(a2, a3);
  if (v3)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

void *sub_21B282CA8(void *a1)
{
  v5 = *a1;
  if ((*a1 & 7) != 0)
  {
    v1 = a1;
    v6 = sub_21B34A1CC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    v35 = v1;
    sub_21B239564();
    swift_allocError();
    *v23 = v3;
    *(v23 + 8) = 0;
    *(v23 + 16) = 2;
    swift_willThrow();
    v1 = v35;
LABEL_34:

    return v1;
  }

  v6 = *v5;
  *a1 = v5 + 1;
  if (v6 < 0)
  {
    goto LABEL_26;
  }

LABEL_3:
  v35 = MEMORY[0x277D84F98];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E860, &qword_21B352BB0);
  sub_21B34A9E4();
  v1 = v35;
  if (!v6)
  {
    return v1;
  }

  while (1)
  {
    v3 = *(*a1)++;
    if (((v3 - 128) & 0xFFFFFF00) != 0)
    {
      break;
    }

    if ((v3 + 0x80) > 9u)
    {
      goto LABEL_27;
    }

    sub_21B28290C(v3 + 0x80, a1, v28);
    if (v2)
    {
      v35 = v1;
      goto LABEL_34;
    }

    if (!v29)
    {
      v35 = v1;
      sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
      v30 = 0u;
      v31 = 0u;
      v32 = 0;
      goto LABEL_32;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
LABEL_31:
      v35 = v1;
LABEL_32:

      sub_21B261664(&v30, &qword_27CD7E200, &unk_21B352050);
      v1 = 0x800000021B34CA70;
      sub_21B239564();
      swift_allocError();
      *v24 = 0xD000000000000021;
      *(v24 + 8) = 0x800000021B34CA70;
      *(v24 + 16) = 3;
      swift_willThrow();
      return v1;
    }

    if (!*(&v31 + 1))
    {
      goto LABEL_31;
    }

    v33[0] = v30;
    v33[1] = v31;
    v34 = v32;
    v7 = *(*a1)++;
    if (((v7 - 128) & 0xFFFFFF00) != 0)
    {
      goto LABEL_37;
    }

    if ((v7 + 0x80) > 9u)
    {
      v35 = v1;
      sub_21B239564();
      swift_allocError();
      *v25 = v7;
      *(v25 + 8) = 0;
      *(v25 + 16) = 2;
      swift_willThrow();
      v1 = v35;
      sub_21B260E14(v33);
      goto LABEL_34;
    }

    sub_21B28290C(v7 + 0x80, a1, v28);
    sub_21B260E68(v33, &v30);
    sub_21B2832C0(v28, v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = sub_21B24B560(&v30);
    v11 = v1[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_38;
    }

    v15 = v10;
    if (v1[3] < v14)
    {
      sub_21B24D62C(v14, isUniquelyReferenced_nonNull_native);
      v9 = sub_21B24B560(&v30);
      if ((v15 & 1) != (v16 & 1))
      {
        goto LABEL_40;
      }

LABEL_20:
      if (v15)
      {
        goto LABEL_5;
      }

      goto LABEL_21;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_20;
    }

    v22 = v9;
    sub_21B252D68();
    v9 = v22;
    if (v15)
    {
LABEL_5:
      sub_21B283330(v27, v1[7] + 32 * v9);
      sub_21B260E14(&v30);
      sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
      sub_21B260E14(v33);
      goto LABEL_6;
    }

LABEL_21:
    v1[(v9 >> 6) + 8] |= 1 << v9;
    v17 = v9;
    sub_21B260E68(&v30, v1[6] + 40 * v9);
    v18 = (v1[7] + 32 * v17);
    v19 = v27[1];
    *v18 = v27[0];
    v18[1] = v19;
    sub_21B260E14(&v30);
    sub_21B261664(v28, &qword_27CD7E0F8, &unk_21B3557C0);
    sub_21B260E14(v33);
    v20 = v1[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (v13)
    {
      goto LABEL_39;
    }

    v1[2] = v21;
LABEL_6:
    if (!--v6)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_21B34BA84();
  __break(1u);
  return result;
}

unint64_t sub_21B2830FC(void *a1)
{
  v3 = v2;
  v5 = *a1;
  if ((*a1 & 7) != 0)
  {
    v6 = sub_21B34A1CC();
    if ((v6 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    sub_21B239564();
    swift_allocError();
    *v12 = v3;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
LABEL_14:

    return v1;
  }

  v6 = *v5;
  *a1 = v5 + 1;
  if (v6 < 0)
  {
    goto LABEL_12;
  }

LABEL_3:
  v1 = sub_21B24A6FC(0, v6, 0, MEMORY[0x277D84F90]);
  if (!v6)
  {
    return v1;
  }

  while (1)
  {
    v3 = *(*a1)++;
    result = (v3 - 128);
    if ((result & 0xFFFFFF00) != 0)
    {
      break;
    }

    if ((v3 + 0x80) > 9u)
    {
      goto LABEL_13;
    }

    sub_21B28290C(v3 + 0x80, a1, v13);
    if (v2)
    {
      goto LABEL_14;
    }

    v9 = v1[2];
    v8 = v1[3];
    if (v9 >= v8 >> 1)
    {
      v1 = sub_21B24A6FC((v8 > 1), v9 + 1, 1, v1);
    }

    v1[2] = v9 + 1;
    v10 = &v1[4 * v9];
    v11 = v13[1];
    *(v10 + 2) = v13[0];
    *(v10 + 3) = v11;
    if (!--v6)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21B28325C()
{
  result = qword_27CD7E7F8;
  if (!qword_27CD7E7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E7F0, &qword_21B355E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7E7F8);
  }

  return result;
}

uint64_t sub_21B2832C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B283330(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B2833A0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    result = type metadata accessor for _RangeSet(319, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_21B28348C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 80);
  v10 = ((*(v8 + 64) + v9) & ~v9) + *(v8 + 64);
  v11 = 8;
  if (v10 > 8)
  {
    v11 = v10;
  }

  if (v7 <= 0xFD)
  {
    v12 = 253;
  }

  else
  {
    v12 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v9 | 7;
  v14 = v13 + *(v6 + 64);
  if (a2 <= v12)
  {
    goto LABEL_30;
  }

  v15 = v11 + (v14 & ~v13) + 1;
  v16 = 8 * v15;
  if (v15 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v16)) >> v16) + 1;
    if (HIWORD(v19))
    {
      v17 = *(a1 + v15);
      if (!v17)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 > 0xFF)
    {
      v17 = *(a1 + v15);
      if (!*(a1 + v15))
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    if (v19 < 2)
    {
LABEL_30:
      if (v7 < 0xFD)
      {
        v24 = *(((a1 + v14) & ~v13) + v11);
        if (v24 >= 3)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v23 = *(v6 + 48);

        return v23(a1, v7, v5);
      }
    }
  }

  v17 = *(a1 + v15);
  if (!*(a1 + v15))
  {
    goto LABEL_30;
  }

LABEL_17:
  v20 = (v17 - 1) << v16;
  if (v15 > 3)
  {
    v20 = 0;
  }

  if (v15)
  {
    if (v15 <= 3)
    {
      v21 = v15;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_21B2836F8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 80);
  v12 = ((*(v10 + 64) + v11) & ~v11) + *(v10 + 64);
  if (v12 <= 8)
  {
    v12 = 8;
  }

  if (v9 <= 0xFD)
  {
    v13 = 253;
  }

  else
  {
    v13 = v9;
  }

  v14 = v11 | 7;
  v15 = v14 + *(v8 + 64);
  v16 = v12 + (v15 & ~v14) + 1;
  if (a3 <= v13)
  {
    v17 = 0;
  }

  else if (v16 <= 3)
  {
    v20 = ((a3 - v13 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
    if (HIWORD(v20))
    {
      v17 = 4;
    }

    else
    {
      if (v20 < 0x100)
      {
        v21 = 1;
      }

      else
      {
        v21 = 2;
      }

      if (v20 >= 2)
      {
        v17 = v21;
      }

      else
      {
        v17 = 0;
      }
    }
  }

  else
  {
    v17 = 1;
  }

  if (v13 < a2)
  {
    v18 = ~v13 + a2;
    if (v16 < 4)
    {
      v19 = (v18 >> (8 * v16)) + 1;
      if (v12 + (v15 & ~v14) != -1)
      {
        v22 = v18 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v22;
            if (v17 > 1)
            {
LABEL_57:
              if (v17 == 2)
              {
                *&a1[v16] = v19;
              }

              else
              {
                *&a1[v16] = v19;
              }

              return;
            }
          }

          else
          {
            *a1 = v18;
            if (v17 > 1)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_54;
        }

        *a1 = v22;
        a1[2] = BYTE2(v22);
      }

      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v18;
      v19 = 1;
      if (v17 > 1)
      {
        goto LABEL_57;
      }
    }

LABEL_54:
    if (v17)
    {
      a1[v16] = v19;
    }

    return;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v16] = 0;
LABEL_32:
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  a1[v16] = 0;
  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v9 < 0xFD)
  {
    v24 = (&a1[v15] & ~v14);
    if (a2 > 0xFD)
    {
      v25 = (v12 + 1);
      v26 = -1 << (8 * (v12 + 1));
      if (v25 <= 3)
      {
        v27 = ~v26;
      }

      else
      {
        v27 = -1;
      }

      if (v25)
      {
        v28 = v27 & (a2 - 254);
        if (v25 <= 3)
        {
          v29 = v25;
        }

        else
        {
          v29 = 4;
        }

        bzero(v24, v25);
        if (v29 > 2)
        {
          if (v29 == 3)
          {
            *v24 = v28;
            v24[2] = BYTE2(v28);
          }

          else
          {
            *v24 = v28;
          }
        }

        else if (v29 == 1)
        {
          *v24 = v28;
        }

        else
        {
          *v24 = v28;
        }
      }
    }

    else
    {
      v24[v12] = -a2;
    }
  }

  else
  {
    v23 = *(v30 + 56);

    v23(a1, a2, v9, v7);
  }
}

uint64_t sub_21B283B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v5, a2);
  (*(v14 + 16))(v17, a1, v13);
  return sub_21B283D00(v19, v17, a2, v9, a4);
}

uint64_t sub_21B283D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for _DiscontiguousSlice(0, a3, a4, v9) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(*(v14 - 8) + 32);

  return v15(a5 + v10, a2, v14);
}

uint64_t sub_21B283E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  type metadata accessor for _DiscontiguousSlice.Index(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return sub_21B34AB94() & 1;
}

uint64_t sub_21B283ED0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  swift_getAssociatedTypeWitness();
  type metadata accessor for _DiscontiguousSlice.Index(0, a3, a4, v6);
  swift_getAssociatedConformanceWitness();
  return sub_21B34AC54() & 1;
}

uint64_t sub_21B283F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  v7 = *(type metadata accessor for _DiscontiguousSlice.Index(0, a3, a4, a4) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(*(AssociatedTypeWitness - 8) + 32);

  return v9(&a5[v7], a2, AssociatedTypeWitness);
}

uint64_t sub_21B284068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x21CEEE3B0](*v3);
  swift_getAssociatedTypeWitness();
  return sub_21B34AAB4();
}

uint64_t sub_21B2840E4(uint64_t a1, uint64_t a2)
{
  sub_21B34BBC4();
  sub_21B284068(v5, a1, a2);
  return sub_21B34BC24();
}

uint64_t sub_21B284158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  sub_21B284068(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B2841AC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v33 = &v29 - v8;
  v34 = v6;
  v35 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_21B34B424();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v14 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(a1 + 36);
  if (sub_21B2972F0(v16, v20, v21, v22))
  {
    v23 = v36;

    return sub_21B2844B4(a1, v23);
  }

  else
  {
    (*(v15 + 16))(v18, v3 + v19, v14);
    v26 = type metadata accessor for _RangeSetStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v25);
    sub_21B2D91CC(0, v26, v27, v12);
    (*(*(v26 - 8) + 8))(v18, v26);
    v28 = v33;
    (*(v32 + 16))(v33, v12, AssociatedTypeWitness);
    (*(v30 + 8))(v12, v31);
    return sub_21B283F9C(0, v28, v34, v35, v36);
  }
}

uint64_t sub_21B2844B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v21 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v21 - v14;
  (*(v16 + 16))(&v21 - v14, v3 + *(a1 + 36));
  v18 = type metadata accessor for _RangeSetStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  v19 = sub_21B2DBB54(v18);
  (*(*(v18 - 8) + 8))(v15, v18);
  sub_21B34B234();
  return sub_21B283F9C(v19, v10, v7, v6, a2);
}

uint64_t sub_21B28469C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v64 = a3;
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_21B34B424();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v13 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v65 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v51 - v15;
  v63 = *(AssociatedTypeWitness - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v60 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v51 - v19;
  type metadata accessor for _DiscontiguousSlice.Index(0, v7, v6, v21);
  v61 = v7;
  v62 = v6;
  v22 = v65;
  v23 = v13;
  sub_21B34B1E4();
  v56 = a2;
  v24 = *(a2 + 36);
  v25 = *(v22 + 16);
  v65 = v3;
  v58 = v24;
  v59 = v25;
  v25(v16, v3 + v24, v13);
  v26 = *a1;
  v28 = type metadata accessor for _RangeSetStorage(0, AssociatedTypeWitness, AssociatedConformanceWitness, v27);
  sub_21B2D91CC(v26, v28, v29, v11);
  v30 = *(v28 - 8);
  v57 = *(v30 + 8);
  AssociatedConformanceWitness = v30 + 8;
  v57(v16, v28);
  v31 = v68;
  v32 = sub_21B34B414();
  v33 = *(v67 + 1);
  v67 = v11;
  v55 = v33;
  result = (v33)(v11, v31);
  if (v32)
  {
    v35 = v60;
    (*(v63 + 32))(v60, v20, AssociatedTypeWitness);
    v36 = v64;
    v37 = v26;
    v38 = v35;
    return sub_21B283F9C(v37, v38, v61, v62, v36);
  }

  v52 = v20;
  v53 = AssociatedTypeWitness;
  v54 = v26 + 1;
  if (__OFADD__(v26, 1))
  {
    __break(1u);
  }

  else
  {
    v39 = v65;
    v41 = v58;
    v40 = v59;
    v59(v16, v65 + v58, v23);
    v42 = sub_21B2DBB54(v28);
    v43 = v57;
    v57(v16, v28);
    if (v54 < v42)
    {
      v40(v16, v39 + v41, v23);
      v44 = v67;
      v45 = v54;
      v46 = v43;
      sub_21B2D91CC(v54, v28, v47, v67);
      v48 = v63;
      v49 = v53;
      (*(v63 + 8))(v52, v53);
      v46(v16, v28);
      v50 = v60;
      (*(v48 + 16))(v60, v44, v49);
      v55(v44, v68);
      v36 = v64;
      v37 = v45;
      v38 = v50;
      return sub_21B283F9C(v37, v38, v61, v62, v36);
    }

    sub_21B2844B4(v56, v64);
    return (*(v63 + 8))(v52, v53);
  }

  return result;
}

uint64_t sub_21B284B54@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for _DiscontiguousSlice.Index(0, *(a2 + 16), *(a2 + 24), x3_0);
  v5 = sub_21B34B314();
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a3, v7, AssociatedTypeWitness);
  return v5(&v10, 0);
}

uint64_t sub_21B284C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v4 = *(a2 + 16);
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v75 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = v6;
  v7 = *(v6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v68 = (&v56 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v56 - v19;
  v69 = v4;
  v74 = v7;
  v21 = type metadata accessor for _DiscontiguousSlice.Index(0, v4, v7, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v64 = sub_21B34B424();
  v62 = *(v64 - 8);
  v28 = MEMORY[0x28223BE20](v64);
  v59 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v60 = &v56 - v30;
  v31 = *(v22 + 16);
  v31(v27, a1, v21);
  v32 = *(v21 + 36);
  swift_getWitnessTable();
  v33 = sub_21B34B424();
  v31(v25, a1 + *(v33 + 36), v21);
  v34 = *(v21 + 36);
  v35 = AssociatedTypeWitness;
  v70 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v37 = *(AssociatedTypeWitness - 8);
    v38 = *(v37 + 32);
    v39 = &v27[v32];
    v40 = v58;
    v38(v58, v39, AssociatedTypeWitness);
    v41 = TupleTypeMetadata2;
    v38(&v40[*(TupleTypeMetadata2 + 48)], &v25[v34], AssociatedTypeWitness);
    v42 = v63;
    v43 = v61;
    (*(v63 + 16))(v61, v40, v41);
    v57 = *(v41 + 48);
    v44 = v60;
    v38(v60, v43, v35);
    v45 = *(v37 + 8);
    v45(&v43[v57], v35);
    (*(v42 + 32))(v43, v40, v41);
    v46 = v64;
    v38(&v44[*(v64 + 36)], &v43[*(v41 + 48)], v35);
    v45(v43, v35);
    v47 = v72;
    v48 = v71;
    (*(v71 + 16))(v66, v78 + *(v73 + 36), v72);
    v49 = v62;
    v50 = v59;
    (*(v62 + 16))(v59, v44, v46);
    v51 = v67;
    sub_21B297EA4(v50, v35, v70, v67, v52);
    v53 = v68;
    sub_21B297438(v51, v47, v68);
    (*(v48 + 8))(v51, v47);
    (*(v49 + 8))(v44, v46);
    v54 = v75;
    v55 = v69;
    (*(v76 + 16))(v75, v78, v69);
    return sub_21B283D00(v54, v53, v55, v74, v77);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21B2852E8(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B2853B8(v6, a2, a3);
  return sub_21B285370;
}

void sub_21B285370(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_21B2853B8(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v6 = *(AssociatedTypeWitness - 8);
  a1[1] = v6;
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(*(v6 + 64));
  }

  a1[2] = v7;
  sub_21B284B54(a3, v7, v8);
  return sub_21B2854A4;
}

void sub_21B2854A4(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_21B285500(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = v4;
  v36 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = sub_21B34B424();
  MEMORY[0x28223BE20](v34);
  v8 = &v31 - v7;
  v10 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v15 = type metadata accessor for _RangeSetStorage(255, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  swift_getWitnessTable();
  v16 = sub_21B34B7D4();
  v32 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - v17;
  v19 = *(a1 + 36);
  v20 = *(v11 + 16);
  v37 = v1;
  v20(v13, v1 + v19, v10);
  (*(*(v15 - 8) + 32))(v18, v13, v15);
  v33 = v16;
  v21 = *(v16 + 36);
  *&v18[v21] = 0;
  v23 = 0;
  if (sub_21B2DBB54(v15))
  {
    v24 = 0;
    v25 = *(v34 + 36);
    v34 = AssociatedTypeWitness - 8;
    while (1)
    {
      sub_21B2D91CC(v24, v15, v22, v8);
      v38 = v24;
      swift_getWitnessTable();
      sub_21B34B164();
      v26 = sub_21B34B224();
      v27 = *(*(AssociatedTypeWitness - 8) + 8);
      v27(&v8[v25], AssociatedTypeWitness);
      result = (v27)(v8, AssociatedTypeWitness);
      v29 = __OFADD__(v23, v26);
      v23 += v26;
      if (v29)
      {
        break;
      }

      v30 = sub_21B2DBB54(v15);
      v24 = *&v18[v21];
      if (v24 == v30)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    (*(v32 + 8))(v18, v33);
    return v23;
  }

  return result;
}

uint64_t sub_21B285888@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  type metadata accessor for _DiscontiguousSlice.Index(255, *(a1 + 16), *(a1 + 24), a3);
  v4 = sub_21B34B474();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 1, 1, v4);
}

uint64_t sub_21B28599C(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for _DiscontiguousSlice.Index(0, *(a2 + 16), *(a2 + 24), a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v11 - v8);
  (*(v7 + 32))(&v11 - v8, a1, v6);
  sub_21B28469C(v9, a2, a1);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_21B285A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v2, a1);
  swift_getWitnessTable();
  v5 = sub_21B34B7D4();
  sub_21B2841AC(a1, (a2 + *(v5 + 36)));
  v6 = *(v8 + 8);

  return v6(v2, a1);
}

uint64_t sub_21B285B90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B285BEC(uint64_t a1)
{
  v3 = sub_21B287660(v1, *(a1 + 16), *(a1 + 24));
  (*(*(a1 - 8) + 8))(v1, a1);
  return v3;
}

uint64_t sub_21B285C80@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t x3_0@<X3>)
{
  type metadata accessor for _DiscontiguousSlice.Index(0, *(a2 + 16), *(a3 + 8), x3_0);
  v6 = sub_21B34B314();
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v8, AssociatedTypeWitness);
  return v6(&v11, 0);
}

uint64_t sub_21B285D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77 = a3;
  v73 = a2;
  v4 = *(a2 + 16);
  v76 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v75 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v67 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v66 = &v56 - v15;
  MEMORY[0x28223BE20](v14);
  v68 = (&v56 - v16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v63 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v61 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v58 = &v56 - v19;
  v69 = v4;
  v74 = v7;
  v21 = type metadata accessor for _DiscontiguousSlice.Index(0, v4, v7, v20);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v56 - v26;
  v64 = sub_21B34B424();
  v62 = *(v64 - 8);
  v28 = MEMORY[0x28223BE20](v64);
  v59 = &v56 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v60 = &v56 - v30;
  v31 = *(v22 + 16);
  v31(v27, a1, v21);
  v32 = *(v21 + 36);
  swift_getWitnessTable();
  v33 = sub_21B34B424();
  v31(v25, a1 + *(v33 + 36), v21);
  v34 = *(v21 + 36);
  v35 = AssociatedTypeWitness;
  v70 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v37 = *(AssociatedTypeWitness - 8);
    v38 = *(v37 + 32);
    v39 = &v27[v32];
    v40 = v58;
    v38(v58, v39, AssociatedTypeWitness);
    v41 = TupleTypeMetadata2;
    v38(&v40[*(TupleTypeMetadata2 + 48)], &v25[v34], AssociatedTypeWitness);
    v42 = v63;
    v43 = v61;
    (*(v63 + 16))(v61, v40, v41);
    v57 = *(v41 + 48);
    v44 = v60;
    v38(v60, v43, v35);
    v45 = *(v37 + 8);
    v45(&v43[v57], v35);
    (*(v42 + 32))(v43, v40, v41);
    v46 = v64;
    v38(&v44[*(v64 + 36)], &v43[*(v41 + 48)], v35);
    v45(v43, v35);
    v47 = v72;
    v48 = v71;
    (*(v71 + 16))(v66, v78 + *(v73 + 36), v72);
    v49 = v62;
    v50 = v59;
    (*(v62 + 16))(v59, v44, v46);
    v51 = v67;
    sub_21B297EA4(v50, v35, v70, v67, v52);
    v53 = v68;
    sub_21B297438(v51, v47, v68);
    (*(v48 + 8))(v51, v47);
    (*(v49 + 8))(v44, v46);
    v54 = v75;
    v55 = v69;
    (*(v76 + 16))(v75, v78, v69);
    return sub_21B283D00(v54, v53, v55, v74, v77);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B286410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  sub_21B287AF8(a1, a2, a3, v7);
  v9 = type metadata accessor for _DiscontiguousSlice.Index(0, *(a3 + 16), *(v7 + 8), v8);
  (*(*(v9 - 8) + 8))(a2, v9);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(*(AssociatedTypeWitness - 8) + 8);

  return v11(a1, AssociatedTypeWitness);
}

void (*sub_21B2864F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x50uLL);
  }

  v10 = v9;
  *a1 = v9;
  *v9 = v4;
  v9[1] = a3;
  v11 = *(a4 - 8);
  v9[2] = v11;
  v12 = *(v11 + 8);
  v13 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[3] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v10[4] = v15;
  v16 = *(v15 + 64);
  if (v8)
  {
    v10[5] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v10[5] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v19 = v17;
  v10[6] = v17;
  v20 = type metadata accessor for _DiscontiguousSlice.Index(0, v13, v12, v18);
  v10[7] = v20;
  v21 = *(v20 - 8);
  v22 = v21;
  v10[8] = v21;
  if (v8)
  {
    v23 = swift_coroFrameAlloc();
  }

  else
  {
    v23 = malloc(*(v21 + 64));
  }

  v10[9] = v23;
  (*(v22 + 16))();
  sub_21B285C80(a3, v11, v19, v24);
  return sub_21B2866E0;
}

void sub_21B2866E0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[8];
  v3 = (*a1)[9];
  v5 = (*a1)[6];
  v12 = (*a1)[7];
  v7 = (*a1)[4];
  v6 = (*a1)[5];
  v9 = (*a1)[2];
  v8 = (*a1)[3];
  v10 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))(v2[5], v5, v2[3]);
    sub_21B287AF8(v6, v3, v10, v9);
    (*(v4 + 8))(v3, v12);
    v11 = *(v7 + 8);
    v11(v6, v8);
    v11(v5, v8);
  }

  else
  {
    sub_21B287AF8(v5, v3, v2[1], v2[2]);
    (*(v4 + 8))(v3, v12);
    (*(v7 + 8))(v5, v8);
  }

  free(v3);
  free(v5);
  free(v6);

  free(v2);
}

uint64_t sub_21B286830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  sub_21B287CCC(a1, a2, a3, v7);
  type metadata accessor for _DiscontiguousSlice.Index(255, *(a3 + 16), *(v7 + 8), v8);
  swift_getWitnessTable();
  v9 = sub_21B34B424();
  (*(*(v9 - 8) + 8))(a2, v9);
  v10 = *(*(a3 - 8) + 8);

  return v10(a1, a3);
}

void (*sub_21B286920(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x48uLL);
  }

  v11 = v10;
  *a1 = v10;
  *v10 = v4;
  v10[1] = a3;
  v12 = *(a4 - 8);
  v10[2] = v12;
  v13 = *(a3 - 8);
  v10[3] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v10[4] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v10[4] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v17 = v15;
  v11[5] = v15;
  type metadata accessor for _DiscontiguousSlice.Index(255, *(a3 + 16), *(v12 + 8), v16);
  swift_getWitnessTable();
  v18 = sub_21B34B424();
  v11[6] = v18;
  v19 = *(v18 - 8);
  v20 = v19;
  v11[7] = v19;
  if (v9)
  {
    v21 = swift_coroFrameAlloc();
  }

  else
  {
    v21 = malloc(*(v19 + 64));
  }

  v11[8] = v21;
  (*(v20 + 16))();
  sub_21B285D60(a2, a3, v17);
  return sub_21B286B10;
}

void sub_21B286B10(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 56);
  v3 = *(*a1 + 64);
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v8 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v9 = *(*a1 + 8);
  v10 = *(*a1 + 16);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 32), v5, v9);
    sub_21B287CCC(v7, v3, v9, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_21B287CCC(*(*a1 + 40), v3, v9, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_21B286CB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v66 = a1;
  v55 = a4;
  v56 = a3;
  v7 = *(a3 + 8);
  v8 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v58 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v52 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = v50 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v57 = sub_21B34B424();
  v64 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v62 = AssociatedConformanceWitness;
  v63 = v50 - v14;
  v16 = type metadata accessor for _RangeSet(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  v60 = *(v16 - 8);
  v61 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = v50 - v17;
  v20 = type metadata accessor for _DiscontiguousSlice.Index(0, v8, v7, v19);
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = v50 - v22;
  v65 = a2;
  v24 = a2;
  v25 = v5;
  sub_21B2841AC(v24, v50 - v22);
  LOBYTE(AssociatedConformanceWitness) = sub_21B283ED0(v66, v23, v8, v7);
  v26 = *(v21 + 8);
  result = v26(v23, v20);
  if (AssociatedConformanceWitness)
  {
    __break(1u);
  }

  else
  {
    v28 = v25;
    sub_21B2844B4(v65, v23);
    v53 = v7;
    v54 = v8;
    v29 = sub_21B283ED0(v66, v23, v8, v7);
    result = v26(v23, v20);
    v31 = v58;
    v30 = v59;
    v32 = v57;
    if ((v29 & 1) == 0)
    {
      v50[1] = *(v20 + 36);
      v51 = v25;
      (*(v60 + 16))(v18, v25 + *(v65 + 36), v61);
      v33 = *v66;
      v35 = v32;
      v36 = type metadata accessor for _RangeSetStorage(0, AssociatedTypeWitness, v62, v34);
      v37 = v63;
      v50[0] = v33;
      sub_21B2D91CC(v33, v36, v38, v63);
      v39 = *(*(v36 - 8) + 8);
      v40 = v36;
      v32 = v35;
      v39(v18, v40);
      (*(v31 + 16))(v30, v37, AssociatedTypeWitness);
      (*(v64 + 8))(v37, v35);
      v41 = sub_21B34AC54();
      result = (*(v31 + 8))(v30, AssociatedTypeWitness);
      v28 = v51;
      if ((v41 & 1) == 0)
      {
        v49 = v54;
        sub_21B34AB24();
        v42 = v50[0];
        return sub_21B283F9C(v42, v30, v49, v53, v55);
      }
    }

    v42 = *v66 - 1;
    if (!__OFSUB__(*v66, 1))
    {
      (*(v60 + 16))(v18, v28 + *(v65 + 36), v61);
      v44 = v32;
      v45 = type metadata accessor for _RangeSetStorage(0, AssociatedTypeWitness, v62, v43);
      v46 = v63;
      sub_21B2D91CC(v42, v45, v47, v63);
      (*(*(v45 - 8) + 8))(v18, v45);
      v48 = v52;
      (*(v31 + 16))(v52, v46 + *(v44 + 36), AssociatedTypeWitness);
      (*(v64 + 8))(v46, v44);
      v49 = v54;
      sub_21B34AB24();
      (*(v31 + 8))(v48, AssociatedTypeWitness);
      return sub_21B283F9C(v42, v30, v49, v53, v55);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B287274(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  v7 = type metadata accessor for _DiscontiguousSlice.Index(0, *(a2 + 16), *(v6 + 8), a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v12 - v9);
  (*(v8 + 32))(&v12 - v9, a1, v7);
  sub_21B286CB8(v10, a2, v6, a1);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_21B2874B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v13 = a5(0, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = a6(a1, a2 + *(v13 + 36), AssociatedTypeWitness, AssociatedConformanceWitness);
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B287594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_21B34B424();
  result = sub_21B34ABB4();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_21B287660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = sub_21B34B424();
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v28 - v8;
  v31 = type metadata accessor for _RangeSet(0, v5, AssociatedConformanceWitness, v9);
  v10 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v12 = &v28 - v11;
  v14 = type metadata accessor for _RangeSetStorage(255, v5, AssociatedConformanceWitness, v13);
  swift_getWitnessTable();
  v15 = sub_21B34B7D4();
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v18 = swift_getAssociatedTypeWitness();
  v19 = sub_21B34AFD4();
  v32 = v18;
  v37 = MEMORY[0x21CEEDF10](v19, v18);
  v21 = type metadata accessor for _DiscontiguousSlice(0, a2, a3, v20);
  (*(v10 + 16))(v12, v35 + *(v21 + 36), v31);
  (*(*(v14 - 8) + 32))(v17, v12, v14);
  v30 = v15;
  v22 = *(v15 + 36);
  *&v17[v22] = 0;
  if (sub_21B2DBB54(v14))
  {
    v24 = 0;
    v31 = (v28 + 8);
    do
    {
      v25 = v33;
      sub_21B2D91CC(v24, v14, v23, v33);
      v36 = v24;
      swift_getWitnessTable();
      sub_21B34B164();
      sub_21B34B304();
      (*v31)(v25, v7);
      sub_21B34B784();
      swift_getAssociatedConformanceWitness();
      sub_21B34B754();
      v26 = sub_21B2DBB54(v14);
      v24 = *&v17[v22];
    }

    while (v24 != v26);
  }

  (*(v29 + 8))(v17, v30);
  return v37;
}

uint64_t sub_21B287AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a1;
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v18 - v9;
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - v13;
  v16 = type metadata accessor for _DiscontiguousSlice.Index(0, v6, v5, v15);
  (*(v12 + 16))(v14, a2 + *(v16 + 36), v11);
  (*(v8 + 16))(v10, v18, AssociatedTypeWitness);
  return sub_21B34AC44();
}

uint64_t sub_21B287CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v120 = a2;
  v112 = a1;
  v110 = a4;
  v5 = *(a4 + 8);
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v109 = &v88 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v107 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v108 = &v88 - v10;
  WitnessTable = swift_getWitnessTable();
  v113 = a3;
  v117 = WitnessTable;
  v12 = sub_21B34AAF4();
  v118 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v100 = &v88 - v13;
  swift_getWitnessTable();
  v125 = v12;
  v105 = sub_21B34B7D4();
  v101 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v15 = &v88 - v14;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v98 = type metadata accessor for _RangeSet(0, v9, AssociatedConformanceWitness, v17);
  v106 = *(v98 - 8);
  v18 = MEMORY[0x28223BE20](v98);
  v97 = (&v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v18);
  v95 = &v88 - v21;
  MEMORY[0x28223BE20](v20);
  v99 = (&v88 - v22);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v92 = *(TupleTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v93 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v91 = &v88 - v25;
  v123 = v5;
  v124 = v6;
  v27 = type metadata accessor for _DiscontiguousSlice.Index(0, v6, v5, v26);
  v28 = *(v27 - 8);
  v29 = MEMORY[0x28223BE20](v27);
  v126 = &v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v121 = &v88 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v88 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v88 - v36;
  v104 = sub_21B34B424();
  v103 = *(v104 - 8);
  v38 = MEMORY[0x28223BE20](v104);
  v90 = &v88 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v102 = &v88 - v40;
  v115 = v28;
  v41 = *(v28 + 16);
  v42 = v120;
  v41(v37, v120, v27);
  v43 = *(v27 + 36);
  v122 = v37;
  v44 = &v37[v43];
  swift_getWitnessTable();
  v45 = v42 + *(sub_21B34B424() + 36);
  v119 = v41;
  v120 = v28 + 16;
  v41(v35, v45, v27);
  v96 = v27;
  v46 = &v35[*(v27 + 36)];
  v111 = v9;
  v116 = AssociatedConformanceWitness;
  result = sub_21B34ABB4();
  if (result)
  {
    v89 = v15;
    v48 = v107;
    v49 = v107[4];
    v50 = v91;
    v51 = v111;
    v49(v91, v44, v111);
    v52 = TupleTypeMetadata2;
    v49(&v50[*(TupleTypeMetadata2 + 48)], v46, v51);
    v53 = v92;
    v54 = v93;
    (*(v92 + 16))(v93, v50, v52);
    v88 = *(v52 + 48);
    v55 = v102;
    v49(v102, v54, v51);
    v56 = v48[1];
    v56(&v54[v88], v51);
    (*(v53 + 32))(v54, v50, v52);
    v57 = v104;
    v49(&v55[*(v104 + 36)], &v54[*(v52 + 48)], v51);
    v56(v54, v51);
    v58 = v106;
    v59 = v98;
    (*(v106 + 16))(v95, v114 + *(v113 + 36), v98);
    v60 = v90;
    (*(v103 + 16))(v90, v55, v57);
    v61 = v97;
    sub_21B297EA4(v60, v51, v116, v97, v62);
    v63 = v99;
    sub_21B297438(v61, v59, v99);
    v64 = *(v58 + 8);
    v65 = v59;
    v106 = v58 + 8;
    v97 = v64;
    (v64)(v61, v59);
    v66 = v100;
    sub_21B34B2E4();
    v67 = v118;
    v68 = v89;
    v69 = v125;
    (*(v118 + 16))(v89, v66, v125);
    v70 = *(v105 + 36);
    sub_21B34AAC4();
    (*(v67 + 8))(v66, v69);
    v71 = v122;
    v72 = v68;
    sub_21B34AAD4();
    LOBYTE(v68) = sub_21B283ED0(&v68[v70], v71, v124, v123);
    v73 = v96;
    v117 = *(v115 + 8);
    v118 = v115 + 8;
    v117(v71, v96);
    v74 = v63;
    v75 = v73;
    v76 = v126;
    if ((v68 & 1) == 0)
    {
      v115 += 32;
      v116 = v70;
      v107 += 2;
      do
      {
        v85 = v121;
        v119(v121, &v72[v70], v75);
        sub_21B34AAE4();
        (*v115)(v76, v85, v75);
        v86 = *(v75 + 36);
        if (sub_21B297FB8(&v76[v86], v65))
        {
          (*v107)(v108, &v76[v86], v111);
          sub_21B285C80(v113, v110, v109, v87);
          v76 = v126;
          sub_21B34AC44();
        }

        v77 = v76;
        v78 = v117;
        v79 = v74;
        v80 = v65;
        v117(v77, v75);
        v81 = v122;
        sub_21B34AAD4();
        v82 = v116;
        v83 = sub_21B283ED0(&v72[v116], v81, v124, v123);
        v84 = v81;
        v70 = v82;
        v78(v84, v75);
        v65 = v80;
        v74 = v79;
        v76 = v126;
      }

      while ((v83 & 1) == 0);
    }

    (*(v101 + 8))(v72, v105);
    (v97)(v74, v65);
    return (*(v103 + 8))(v102, v104);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B288834(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B2888C4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v7)
  {
LABEL_23:
    v14 = *(v6 + 48);

    return v14((a1 + v8 + 8) & ~v8);
  }

  v9 = ((v8 + 8) & ~v8) + *(*(AssociatedTypeWitness - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v12 = ((a2 - v7 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v12 < 2)
    {
LABEL_22:
      if (v7)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_22;
  }

LABEL_11:
  v13 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v13 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v13) + 1;
}

void sub_21B288A74(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  v10 = ((v9 + 8) & ~v9) + *(v7 + 64);
  if (a3 <= v8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 - v8 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
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

  if (v8 < a2)
  {
    v12 = ~v8 + a2;
    if (v10 < 4)
    {
      v13 = (v12 >> (8 * v10)) + 1;
      if (v10)
      {
        v16 = v12 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v16;
            if (v11 > 1)
            {
LABEL_39:
              if (v11 == 2)
              {
                *&a1[v10] = v13;
              }

              else
              {
                *&a1[v10] = v13;
              }

              return;
            }
          }

          else
          {
            *a1 = v12;
            if (v11 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v16;
        a1[2] = BYTE2(v16);
      }

      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v11)
    {
      a1[v10] = v13;
    }

    return;
  }

  if (v11 > 1)
  {
    if (v11 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v10] = 0;
  }

  else if (v11)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v17 = *(v7 + 56);

  v17(&a1[v9 + 8] & ~v9, a2);
}

uint64_t Column.eraseToAnyColumn()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = v7;
  sub_21B334E3C(v9, *(a1 + 16), a2, a3, a4);
}

uint64_t Column.init<A>(name:contents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  return sub_21B289468(a1, a2, a3, a4, a5, a6, sub_21B32C8B8, a7);
}

{
  return sub_21B289468(a1, a2, a3, a4, a5, a6, sub_21B32CE08, a7);
}

uint64_t Column.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

unint64_t sub_21B288DA4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = a4;
  v32 = a3;
  v9 = *(a4 - 1);
  MEMORY[0x28223BE20](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v31 - v13;
  v15 = sub_21B34B1D4();
  if (__OFSUB__(v32, a2))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    v6 = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_19;
  }

  if (v15 != v32 - a2)
  {
    v28 = v32 - a2;
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_21B34B634();

    v33 = 0xD000000000000017;
    v34 = 0x800000021B34CB60;
    v36 = sub_21B34B1D4();
    v29 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v29);

    MEMORY[0x21CEED5E0](0x756C6F6320202020, 0xEC000000203A6E6DLL);
    v36 = v28;
    v30 = sub_21B34B944();
    MEMORY[0x21CEED5E0](v30);

    result = sub_21B34B824();
    __break(1u);
    return result;
  }

  (*(v9 + 16))(v11, a1, v6);
  sub_21B34AEC4();
  swift_getAssociatedConformanceWitness();
  a5 = 0;
  v6 = MEMORY[0x277D84F90];
  v16 = 1;
  while (1)
  {
    sub_21B34B4D4();
    v18 = v33;
    if (v33 == 2)
    {
      break;
    }

    if (v33)
    {
      if (v16)
      {
        a5 = a2;
      }
    }

    else if ((v16 & 1) == 0)
    {
      if (a2 < a5)
      {
        goto LABEL_27;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
      }

      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        v6 = sub_21B2356AC((v19 > 1), v20 + 1, 1, v6);
      }

      *(v6 + 2) = v20 + 1;
      v21 = &v6[16 * v20];
      *(v21 + 4) = a5;
      *(v21 + 5) = a2;
      a5 = 0;
    }

    v16 = v18 ^ 1;
    if (__OFADD__(a2++, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  (*(v31 + 8))(v14, AssociatedTypeWitness);
  if (v16)
  {
    goto LABEL_22;
  }

  if (a2 < a5)
  {
    goto LABEL_29;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_19:
  v23 = *(v6 + 2);
  v22 = *(v6 + 3);
  if (v23 >= v22 >> 1)
  {
    v6 = sub_21B2356AC((v22 > 1), v23 + 1, 1, v6);
  }

  *(v6 + 2) = v23 + 1;
  v24 = &v6[16 * v23];
  *(v24 + 4) = a5;
  *(v24 + 5) = a2;
LABEL_22:
  v33 = 0;
  v34 = 0;
  v35 = 2;
  v25 = *(v6 + 2);
  if (v25)
  {
    v26 = (v6 + 40);
    do
    {
      sub_21B28DFBC(*(v26 - 1), *v26);
      v26 += 2;
      --v25;
    }

    while (v25);
  }

  return v33;
}

void Column.init(name:capacity:)(uint64_t a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  sub_21B34B474();
  v8 = sub_21B34AFD4();
  v9 = sub_21B32CC60(v8, a4);

  a5[2] = v9;
  v12 = type metadata accessor for PackedOptionalsArray(0, a4, v10, v11);
  sub_21B328D9C(a3, v12, v13, v14);
}

uint64_t Column.append(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *(v3 - 8);
  (*(v8 + 16))(&v13 - v6, a1, v3);
  (*(v8 + 56))(v7, 0, 1, v3);
  v11 = type metadata accessor for PackedOptionalsArray(0, v3, v9, v10);
  sub_21B328DA8(v7, v11);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21B289468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t)@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  v11 = a7(a3, a4, a5, a6);
  result = (*(*(a5 - 8) + 8))(a3, a5);
  a8[2] = v11;
  return result;
}

uint64_t Column.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B289D54(a1, a2, a3, a4, sub_21B328E58);
}

{
  return sub_21B289D54(a1, a2, a3, a4, sub_21B329278);
}

uint64_t Column.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t Column.prototype.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  nullsub_14();
  v5 = v4;
  v7 = v6;
  a2[3] = type metadata accessor for ColumnPrototype(0, v3, v8, v9);
  a2[4] = &off_282CA94D8;
  *a2 = v5;
  a2[1] = v7;
}

void Column.init(_:capacity:)(void *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = a1[1];
  *a4 = *a1;
  a4[1] = v7;
  sub_21B34B474();
  v8 = sub_21B34AFD4();
  v9 = sub_21B32CC60(v8, a3);

  a4[2] = v9;
  v12 = type metadata accessor for PackedOptionalsArray(0, a3, v10, v11);
  sub_21B328D9C(a2, v12, v13, v14);
}

uint64_t Column.init<A>(_:contents:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  return sub_21B2896D4(a1, a2, a3, a4, a5, sub_21B32C8B8, a6);
}

{
  return sub_21B2896D4(a1, a2, a3, a4, a5, sub_21B32CE08, a6);
}

uint64_t sub_21B2896D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t)@<X5>, void *a7@<X8>)
{
  v10 = a1[1];
  *a7 = *a1;
  a7[1] = v10;
  v11 = a6(a2, a3, a4, a5);
  result = (*(*(a4 - 8) + 8))(a2, a4);
  a7[2] = v11;
  return result;
}

uint64_t Column.init(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  v11 = a1[4];
  v12 = type metadata accessor for ColumnSlice(0, a2, a4, a5);
  *a3 = ColumnSlice.name.getter(v12);
  a3[1] = v13;
  v17[0] = v7;
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  v17[4] = v11;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_21B32C8B8(v17, a2, v12, WitnessTable);

  a3[2] = v15;
  return result;
}

uint64_t sub_21B28982C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = sub_21B34B474();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  (*(*(v1 - 8) + 56))(&v10 - v4, 1, 1, v1);
  v8 = type metadata accessor for PackedOptionalsArray(0, v1, v6, v7);
  sub_21B328DA8(v5, v8);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21B289944(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26 - v10;
  v12 = *(v3 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B2832C0(a1, &v26);
  if (v27)
  {
    sub_21B261720(&v26, &v28);
    sub_21B2616C4(&v28, &v26);
    v15 = swift_dynamicCast();
    v16 = *(v12 + 56);
    if (v15)
    {
      v16(v11, 0, 1, v3);
      (*(v12 + 32))(v14, v11, v3);
      (*(v12 + 16))(v8, v14, v3);
      v16(v8, 0, 1, v3);
      v19 = type metadata accessor for PackedOptionalsArray(0, v3, v17, v18);
      sub_21B328DA8(v8, v19);
      (*(v5 + 8))(v8, v4);
      (*(v12 + 8))(v14, v3);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    }

    else
    {
      v16(v11, 1, 1, v3);
      (*(v5 + 8))(v11, v4);
      *&v26 = 0;
      *(&v26 + 1) = 0xE000000000000000;
      sub_21B34B634();
      MEMORY[0x21CEED5E0](0xD00000000000001DLL, 0x800000021B34CB20);
      __swift_project_boxed_opaque_existential_1(&v28, v29);
      swift_getDynamicType();
      v24 = sub_21B34BD24();
      MEMORY[0x21CEED5E0](v24);

      MEMORY[0x21CEED5E0](0xD000000000000013, 0x800000021B34CB40);
      v25 = sub_21B34BD24();
      MEMORY[0x21CEED5E0](v25);

      result = sub_21B34B824();
      __break(1u);
    }
  }

  else
  {
    sub_21B28EEB4(&v26);
    (*(v12 + 56))(v8, 1, 1, v3);
    v23 = type metadata accessor for PackedOptionalsArray(0, v3, v21, v22);
    sub_21B328DA8(v8, v23);
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

Swift::Void __swiftcall Column.remove(at:)(Swift::Int at)
{
  v3 = *(v1 + 16);
  v4 = sub_21B34B474();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - v6;
  v10 = type metadata accessor for PackedOptionalsArray(0, v3, v8, v9);
  sub_21B329774(at, v10, v7);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_21B289ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v14 = *v6;
  v13 = v6[1];
  v15 = v6[2];
  v16 = *(a3 + 16);

  result = a5(a1, a2, v15, v16, a4);
  if (v7)
  {
  }

  *a6 = v14;
  a6[1] = v13;
  a6[2] = result;
  return result;
}

uint64_t Column.transform(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_21B289FC4(a1, a2, a3, sub_21B329E78);
}

{
  return sub_21B289FC4(a1, a2, a3, sub_21B32A064);
}

void Column.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v36 = a2;
  v32 = *(a3 + 16);
  v33 = a4;
  v7 = sub_21B34B474();
  v34 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v30 - v8;
  v59 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_21B34B474();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v30 - v12);
  v15 = *v4;
  v14 = v4[1];
  v16 = v4[2];
  v56 = 0;
  v57 = 0;
  v58 = 2;
  *&v48 = v15;
  *(&v48 + 1) = v14;
  v49 = v16;
  swift_getWitnessTable();
  sub_21B34B194();
  v51 = v52;
  *&v30 = v15;
  *(&v30 + 1) = v14;
  v44 = v15;
  v45 = v14;
  v31 = v16;
  v46 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v18 = sub_21B28EBB0(&qword_27CD7E980, MEMORY[0x277D83D28]);
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v48 = v42;
  v49 = *&v43[0];
  v50 = *(v43 + 8);
  *&v40 = v17;
  *(&v40 + 1) = a3;
  v44 = v17;
  v45 = a3;
  v38 = WitnessTable;
  v39 = v18;
  v46 = v18;
  v47 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v37 = TupleTypeMetadata2 - 8;
  v20 = (v34 + 32);
  for (i = (v34 + 8); ; (*i)(v41, v59))
  {
    v42 = v40;
    *&v43[0] = v39;
    *(&v43[0] + 1) = v38;
    v22 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      v42 = v53;
      v43[0] = v54;
      v43[1] = v55[0];
      *(&v43[1] + 9) = *(v55 + 9);
      (*(*(v22 - 8) + 8))(&v42, v22);
      v48 = v30;
      v49 = v31;
      v28 = v56;
      v27 = v57;
      v29 = v58;

      sub_21B2D3D88(&v48, v28, v27, v29, v32, v33);
      return;
    }

    v23 = *v13;
    v24 = v41;
    (*v20)(v41, v13 + *(TupleTypeMetadata2 + 48), v59);
    v25 = v35(v24);
    if (v5)
    {
      (*i)(v41, v59);
      v42 = v53;
      v43[0] = v54;
      v43[1] = v55[0];
      *(&v43[1] + 9) = *(v55 + 9);
      (*(*(v22 - 8) + 8))(&v42, v22);
      sub_21B23A9F4(v56, v57, v58);
      return;
    }

    if ((v25 & 1) == 0)
    {
      continue;
    }

    v26 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v26 < v23)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v23, v26);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_21B28A490(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_21B34B9F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_21B34B9F4();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_21B28A594(char a1)
{
  sub_21B34BBC4();
  MEMORY[0x21CEEE3B0](a1 & 1);
  return sub_21B34BC24();
}

uint64_t sub_21B28A5DC(char a1)
{
  if (a1)
  {
    return 0x73746E656D656C65;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21B28A63C(uint64_t a1)
{
  sub_21B34BBC4();
  sub_21B28A56C(v3, *v1);
  return sub_21B34BC24();
}

uint64_t sub_21B28A694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B28A490(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21B28A6CC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_21B285BE4();
  *a1 = result;
  return result;
}

uint64_t sub_21B28A6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_21B28A74C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void (*sub_21B28A7A0(uint64_t *a1))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Column.name.modify();
  return sub_21B28A810;
}

void *sub_21B28A814@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

Swift::Int __swiftcall Column.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

void *sub_21B28A83C(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t sub_21B28A864@<X0>(uint64_t *a1@<X8>)
{
  result = Column.endIndex.getter();
  *a1 = result;
  return result;
}

void (*sub_21B28A89C(uint64_t **a1, uint64_t *a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_21B28A924(v6, *a2, a3);
  return sub_21B285370;
}

void (*sub_21B28A924(uint64_t *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  *a1 = v6;
  v7 = *(v6 - 8);
  a1[1] = v7;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  a1[2] = v8;
  sub_21B32A29C(a2, v5, v8);
  return sub_21B2854A4;
}

double Column.subscript.getter@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = *(a3 + 16);

  return ColumnSlice.init(base:bounds:)(a2, v6, x8_0);
}

void *sub_21B28AA88()
{
  swift_getWitnessTable();

  return sub_21B34B194();
}

Swift::Int __swiftcall Column.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

__n128 sub_21B28AB0C@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

uint64_t sub_21B28AB24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_21B28AB78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_21B2DBAB0(v1, a1, WitnessTable);

  return v4;
}

void *sub_21B28AC30@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for Column(0, *(a2 + a3 - 8), a3, a4);
  return Column.subscript.getter(v6, v7, x8_0);
}

uint64_t Column.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B28E8DC(a1, a2, a3, a4);
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = *(a3 + 16);
  v8[2] = v10;
  v11 = sub_21B34B474();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  sub_21B32A29C(a2, v10, v14);
  return sub_21B28AE44;
}

void sub_21B28AE44(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[5], v6, v7);
    v13 = type metadata accessor for PackedOptionalsArray(0, v9, v11, v12);
    sub_21B32CCD4(v5, v10, v13);
    v14 = *(v8 + 8);
    v14(v5, v7);
    v14(v6, v7);
  }

  else
  {
    v15 = type metadata accessor for PackedOptionalsArray(0, v9, a3, a4);
    sub_21B32CCD4(v6, v10, v15);
    (*(v8 + 8))(v6, v7);
  }

  free(v6);
  free(v5);

  free(v4);
}

double sub_21B28AF5C@<D0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t *a5@<X0>)
{
  v6 = *(a1 + a2 - 8);
  v7 = a1[1];
  v14 = *a5;
  v15 = *(a5 + 1);
  v8 = type metadata accessor for Column(0, v6, a2, a3);
  Column.subscript.getter(v7, v8, &v11);
  v9 = v12;
  *a4 = v11;
  *(a4 + 16) = v9;
  result = *&v13;
  *(a4 + 24) = v13;
  return result;
}

uint64_t sub_21B28AFE4(__int128 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v12 = *a1;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v10 = type metadata accessor for Column(0, v4, a3, a4);

  return Column.subscript.setter(&v12, v5, v6, v10);
}

uint64_t Column.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v16 = *a1;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v9 = *(a4 + 16);
  v10 = type metadata accessor for PackedOptionalsArray(0, v9, a3, a4);
  v13 = type metadata accessor for ColumnSlice(0, v9, v11, v12);
  WitnessTable = swift_getWitnessTable();
  sub_21B32A38C(a2, a3, &v16, v10, v13, WitnessTable);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x48uLL);
  }

  *a1 = v9;
  v9[7] = a4;
  v9[8] = v4;
  v9[5] = a2;
  v9[6] = a3;
  Column.subscript.getter(a3, a4, v9);
  return sub_21B28B1F4;
}

void sub_21B28B1F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = v2[7];
  v9 = v2[5];
  v8 = v2[6];
  v10 = v2[4];
  *&v11 = v4;
  *(&v11 + 1) = v3;
  v12 = v6;
  v13 = v5;
  v14 = v10;
  if (a2)
  {

    Column.subscript.setter(&v11, v9, v8, v7);
  }

  else
  {
    Column.subscript.setter(&v11, v9, v8, v7);
  }

  free(v2);
}

double sub_21B28B2B8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v18 = *v5;
  v19 = *(v5 + 1);
  v10 = a1;
  *&v11 = a2;
  BYTE8(v11) = a3;
  WitnessTable = swift_getWitnessTable();
  sub_21B283B30(&v10, a4, WitnessTable, &v14);
  v10 = v14;
  v11 = v15;
  v12 = v16;
  v13 = v17;
  *&result = sub_21B2D3BC4(&v10, a5).n128_u64[0];
  return result;
}

uint64_t sub_21B28B360(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  LODWORD(v54) = a4;
  v8 = *(a5 + 16);
  v55 = sub_21B34B474();
  v50 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v51 = &v48 - v9;
  v52 = a2;
  v11 = *a1;
  v10 = a1[1];
  v13 = a1[2];
  v12 = a1[3];
  v14 = a1[4];
  LODWORD(a1) = *(a1 + 40);
  v53 = a3;
  v15 = sub_21B2FB1D4(a2, a3, v54);
  v56 = v8;
  *&v57 = v11;
  *&v77 = v11;
  *(&v77 + 1) = v10;
  v16 = v10;
  v17 = v14;
  *&v78 = v13;
  *(&v78 + 1) = v12;
  v18 = v12;
  v58 = v17;
  *&v79 = v17;
  v59 = a1;
  BYTE8(v79) = a1;
  v21 = type metadata accessor for DiscontiguousColumnSlice(0, v8, v19, v20);
  if (v15 == DiscontiguousColumnSlice.count.getter(v21, v22, v23, v24))
  {
    v26 = v52;
    v25 = v53;
    v27 = v54;
    v28 = sub_21B2FB104(v52, v53, v54);
    sub_21B23A9F4(v26, v25, v27);
    v76 = v28;
    v70 = v57;
    v71 = v16;
    *(&v57 + 1) = v16;
    v72 = v13;
    v73 = v18;
    v29 = v18;
    v74 = v58;
    v75 = v59;
    swift_getWitnessTable();
    sub_21B34B2E4();
    v65 = v77;
    v66 = v78;
    v67 = v79;
    v68 = v80;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E760, &unk_21B352380);
    v31 = sub_21B34AAF4();
    v32 = sub_21B28EE50();
    WitnessTable = swift_getWitnessTable();
    sub_21B34BA54();
    v82[0] = v65;
    v82[1] = v66;
    v82[2] = v67;
    v82[3] = v68;
    (*(*(v31 - 8) + 8))(v82, v31);

    v67 = v62;
    v68 = v63;
    v69 = *&v64[0];
    v65 = v60;
    v66 = v61;
    *&v77 = v30;
    *(&v77 + 1) = v31;
    *&v78 = v32;
    *(&v78 + 1) = WitnessTable;
    sub_21B34B674();
    sub_21B34B644();
    *&v60 = v30;
    *(&v60 + 1) = v31;
    v34 = v31;
    v48 = WitnessTable;
    v49 = v32;
    *&v61 = v32;
    *(&v61 + 1) = WitnessTable;
    v35 = sub_21B34B664();
    sub_21B34B654();
    v36 = v29;
    if ((v66 & 1) == 0)
    {
      v53 = v29;
      v54 = v13;
      v52 = v30;
      v37 = *(&v65 + 1);
      v38 = v65;
      v39 = v49;
      v40 = (v50 + 8);
      v41 = v21;
      v42 = v51;
      v43 = v48;
      do
      {
        v60 = v57;
        *&v61 = v54;
        *(&v61 + 1) = v53;
        *&v62 = v58;
        BYTE8(v62) = v59;
        DiscontiguousColumnSlice.subscript.getter(v37, v41, v42);
        v46 = type metadata accessor for PackedOptionalsArray(0, v56, v44, v45);
        sub_21B32CCD4(v42, v38, v46);
        (*v40)(v42, v55);
        *&v60 = v52;
        *(&v60 + 1) = v34;
        *&v61 = v39;
        *(&v61 + 1) = v43;
        v35 = sub_21B34B664();
        sub_21B34B654();
        v37 = *(&v65 + 1);
        v38 = v65;
      }

      while (v66 != 1);
      v36 = v53;
    }

    v62 = v79;
    v63 = v80;
    v64[0] = v81[0];
    *(v64 + 9) = *(v81 + 9);
    v60 = v77;
    v61 = v78;
    (*(*(v35 - 8) + 8))(&v60, v35);

    return sub_21B23A9F4(v36, v58, v59);
  }

  else
  {
    result = sub_21B34B824();
    __break(1u);
  }

  return result;
}

double Column.subscript.getter@<D0>(uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  return Column.subscript.getter(v8, a2, x8_0);
}

double sub_21B28B898@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, uint64_t *a5@<X0>)
{
  v6 = *(a1 + a2 - 24);
  v13 = *a5;
  v14 = *(a5 + 1);
  v7 = type metadata accessor for Column(0, v6, a2, a3);
  Column.subscript.getter(v7, &v10);
  v8 = v11;
  *a4 = v10;
  *(a4 + 16) = v8;
  result = *&v12;
  *(a4 + 24) = v12;
  return result;
}

uint64_t sub_21B28B92C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 24);
  v6 = *(a3 + a4 - 16);
  v7 = *(a3 + a4 - 8);
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 4);
  v13 = *a1;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  v11 = type metadata accessor for Column(0, v5, a3, a4);

  return sub_21B28E928(&v13, a3, v11, v6, v7);
}

uint64_t Column.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21B28E928(a1, a2, a3, a4, a5);
  v7 = *(*(a4 - 8) + 8);

  return v7(a2, a4);
}

void (*Column.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t *a1, char a2)
{
  v10 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(0x58uLL);
  }

  v12 = v11;
  *a1 = v11;
  v11[7] = a5;
  v11[8] = v5;
  v11[5] = a3;
  v11[6] = a4;
  v13 = *(a4 - 8);
  v14 = v13;
  v11[9] = v13;
  if (v10)
  {
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v15 = malloc(*(v13 + 64));
  }

  *(v12 + 80) = v15;
  (*(v14 + 16))();
  Column.subscript.getter(a3, v12);
  return sub_21B28BB60;
}

void sub_21B28BB60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 56);
  v7 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  if (a2)
  {
    v9 = v2[2];
    v8 = v2[3];
    v10 = v2[4];
    v11 = *v2;
    v12 = v9;
    v13 = v8;
    v14 = v10;

    sub_21B28E928(&v11, v3, v7, v6, v5);
    (*(v4 + 8))(v3, v6);
  }

  else
  {
    sub_21B28E928(*a1, v3, v7, v6, v5);
    (*(v4 + 8))(v3, v6);
  }

  free(v3);

  free(v2);
}

uint64_t Column.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_21B32D340();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = sub_21B288DA4(a1, 0, result, a3, a4);
    v13 = v12;
    v15 = v14;
    sub_21B28B2B8(v11, v12, v14, a2, a5);

    return sub_21B23A9F4(v11, v13, v15);
  }

  return result;
}

uint64_t Column.withContiguousMutableStorageIfAvailable<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_21B28BDA8(a1, a2, a3, a4, sub_21B32A5DC);
}

{
  return sub_21B28BDA8(a1, a2, a3, a4, sub_21B32A6C8);
}

uint64_t sub_21B28BE40(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_21B28E8DC(a1, *a2, a3, a4);
  v5 = sub_21B34B474();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1, v5);
}

void (*sub_21B28BEBC(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Column.subscript.modify(v6, *a2, a3);
  return sub_21B28EF30;
}

void (*sub_21B28BF54(void *a1, uint64_t *a2, uint64_t a3))(void *)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Column.subscript.modify(v6, *a2, a2[1], a3);
  return sub_21B28EF30;
}

uint64_t static Column<A>.== infix(_:_:)(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = a2[2];
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    v7 = a3;
    v8 = a4;
    v9 = sub_21B34B9F4();
    a3 = v7;
    a4 = v8;
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  return sub_21B32A764(v4, v5, a3, a4);
}

void Column<A>.distinct()(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  WitnessTable = a2;
  v40 = *(a1 + 16);
  v41 = a3;
  v5 = sub_21B34B474();
  v46 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v44 = &v38 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v13 = sub_21B34B474();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (&v38 - v14);
  v16 = *v3;
  v17 = v3[1];
  v18 = v3[2];
  v64 = WitnessTable;
  WitnessTable = swift_getWitnessTable();
  v65 = sub_21B34A994();
  v61 = 0;
  v62 = 0;
  v63 = 2;
  *&v58 = v16;
  *(&v58 + 1) = v17;
  *&v59 = v18;
  swift_getWitnessTable();
  sub_21B34B194();
  v56 = v57;
  *&v38 = v16;
  *(&v38 + 1) = v17;
  *&v53 = v16;
  *(&v53 + 1) = v17;
  v39 = v18;
  v54 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v20 = sub_21B28EBB0(&qword_27CD7E980, MEMORY[0x277D83D28]);
  v21 = swift_getWitnessTable();
  sub_21B34BA54();
  v53 = v51;
  v54 = *&v52[0];
  v55 = *(v52 + 8);
  *&v58 = v19;
  *(&v58 + 1) = a1;
  v49 = a1;
  v22 = v20;
  *&v59 = v20;
  *(&v59 + 1) = v21;
  sub_21B34B674();
  sub_21B34B644();
  v47 = (v46 + 4);
  v48 = TupleTypeMetadata2 - 8;
  v42 = (v46 + 2);
  v43 = v21;
  ++v46;
  while (1)
  {
    while (1)
    {
      *&v51 = v19;
      *(&v51 + 1) = v49;
      *&v52[0] = v22;
      *(&v52[0] + 1) = v21;
      v23 = sub_21B34B664();
      sub_21B34B654();
      if ((*(*(TupleTypeMetadata2 - 8) + 48))(v15, 1, TupleTypeMetadata2) == 1)
      {
        v51 = v58;
        v52[0] = v59;
        v52[1] = v60[0];
        *(&v52[1] + 9) = *(v60 + 9);
        (*(*(v23 - 8) + 8))(&v51, v23);

        v53 = v38;
        v54 = v39;
        v35 = v61;
        v36 = v62;
        v37 = v63;

        sub_21B2D3D88(&v53, v35, v36, v37, v40, v41);
        return;
      }

      v24 = *v15;
      (*v47)(v11, v15 + *(TupleTypeMetadata2 + 48), v5);
      if ((sub_21B34B114() & 1) == 0)
      {
        break;
      }

      (*v46)(v11, v5);
    }

    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 < v24)
    {
      goto LABEL_10;
    }

    sub_21B28DFBC(v24, v25);
    (*v42)(v45, v11, v5);
    sub_21B34B124();
    v26 = v15;
    v27 = v22;
    v28 = v5;
    v29 = v11;
    v30 = TupleTypeMetadata2;
    v31 = v19;
    v32 = v44;
    sub_21B34B104();
    v33 = *v46;
    v34 = v32;
    v19 = v31;
    TupleTypeMetadata2 = v30;
    v11 = v29;
    v5 = v28;
    v22 = v27;
    v15 = v26;
    v21 = v43;
    (*v46)(v34, v5);
    v33(v11, v5);
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t Column<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  sub_21B34AD94();
  v8 = *(a2 + 16);

  return sub_21B32B9D4(a1, v7, v8, a3);
}

uint64_t Column<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  sub_21B34BBC4();
  sub_21B34AD94();
  sub_21B32B9D4(v7, v5, *(a1 + 16), a2);
  return sub_21B34BC24();
}

uint64_t sub_21B28C738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_21B34BBC4();
  Column<A>.hash(into:)(v6, a2, v4);
  return sub_21B34BC24();
}

uint64_t sub_21B28C78C(void *a1, uint64_t a2)
{
  sub_21B233A10(a1, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    v24 = v29;
    v25 = v30;
    v6 = type metadata accessor for PackedOptionalsArray(0, *(a2 + 16), v4, v5);
    WitnessTable = swift_getWitnessTable();
    sub_21B328E58(&v24, v6, a2, WitnessTable);
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  v8 = *(a2 + 16);
  v9 = type metadata accessor for ColumnSlice(0, v8, v4, v5);
  if (swift_dynamicCast())
  {
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v12 = type metadata accessor for PackedOptionalsArray(0, v8, v10, v11);
    v13 = swift_getWitnessTable();
    sub_21B328E58(&v24, v12, v9, v13);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DiscontiguousColumnSlice(0, v8, v10, v11);
  if (swift_dynamicCast())
  {
    v17 = v31;
    v18 = v32;
    v19 = v33;
    v24 = v29;
    v25 = v30;
    v26 = v31;
    v27 = v32;
    v28 = v33;
    v20 = type metadata accessor for PackedOptionalsArray(0, v8, v15, v16);
    v21 = swift_getWitnessTable();
    sub_21B328E58(&v24, v20, v14, v21);

    sub_21B23A9F4(v17, v18, v19);
    return __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  sub_21B34B634();

  *&v29 = 0xD000000000000014;
  *(&v29 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v23 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v23);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28CA68(void *a1, uint64_t a2)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v8[3] = v3;
  v8[4] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v8);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  sub_21B28C78C(v8, a2);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t sub_21B28CB08(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_21B34B474();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  sub_21B233A10(a2, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a1, v6, v10);
    v15 = type metadata accessor for PackedOptionalsArray(0, v6, v13, v14);
    sub_21B328DA8(v10, v15);
LABEL_5:

LABEL_8:
    (*(v8 + 8))(v10, v7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v43);
  }

  v16 = type metadata accessor for ColumnSlice(0, v6, v11, v12);
  if (swift_dynamicCast())
  {
    v33 = v38;
    v34 = v39;
    v35 = v40;
    v36 = v41;
    ColumnSlice.subscript.getter(a1, v16);
    v21 = type metadata accessor for PackedOptionalsArray(0, v6, v19, v20);
    sub_21B328DA8(v10, v21);
    goto LABEL_5;
  }

  v32 = v3;
  v22 = type metadata accessor for DiscontiguousColumnSlice(0, v6, v17, v18);
  if (swift_dynamicCast())
  {
    v23 = v40;
    v31 = v41;
    v30 = v42;
    v33 = v38;
    v34 = v39;
    v35 = v40;
    v36 = v41;
    v37 = v42;
    DiscontiguousColumnSlice.subscript.getter(a1, v22, v10);
    v26 = type metadata accessor for PackedOptionalsArray(0, v6, v24, v25);
    sub_21B328DA8(v10, v26);

    sub_21B23A9F4(v23, v31, v30);
    goto LABEL_8;
  }

  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v38 = 0xD000000000000014;
  *(&v38 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v28 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v28);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28CE54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  sub_21B233A10(a2, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a1, v8, v12);
    v17 = type metadata accessor for PackedOptionalsArray(0, v8, v15, v16);
    sub_21B32A918(v12, a3, v17);
LABEL_5:

LABEL_8:
    (*(v10 + 8))(v12, v9);
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  v18 = type metadata accessor for ColumnSlice(0, v8, v13, v14);
  v19 = swift_dynamicCast();
  v35 = v4;
  if (v19)
  {
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    ColumnSlice.subscript.getter(a1, v18);
    v24 = type metadata accessor for PackedOptionalsArray(0, v8, v22, v23);
    sub_21B32A918(v12, a3, v24);
    goto LABEL_5;
  }

  v34 = a3;
  v25 = type metadata accessor for DiscontiguousColumnSlice(0, v8, v20, v21);
  if (swift_dynamicCast())
  {
    v33 = v43;
    v26 = v44;
    HIDWORD(v32) = v45;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v40 = v45;
    DiscontiguousColumnSlice.subscript.getter(a1, v25, v12);
    v29 = type metadata accessor for PackedOptionalsArray(0, v8, v27, v28);
    sub_21B32A918(v12, v34, v29);

    sub_21B23A9F4(v33, v26, SBYTE4(v32));
    goto LABEL_8;
  }

  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v41 = 0xD000000000000014;
  *(&v41 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  swift_getDynamicType();
  v31 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v31);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28D1B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v9 = sub_21B34B474();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  sub_21B233A10(a3, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CD7EA28, &qword_21B353430);
  if (swift_dynamicCast())
  {
    sub_21B32A29C(a2, v8, v12);
    v17 = type metadata accessor for PackedOptionalsArray(0, v8, v15, v16);
    sub_21B32CCD4(v12, a1, v17);
    (*(v10 + 8))(v12, v9);
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  v18 = type metadata accessor for ColumnSlice(0, v8, v13, v14);
  v19 = swift_dynamicCast();
  v35 = v4;
  if (v19)
  {
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    ColumnSlice.subscript.getter(a2, v18);
    v24 = type metadata accessor for PackedOptionalsArray(0, v8, v22, v23);
    sub_21B32CCD4(v12, a1, v24);
    (*(v10 + 8))(v12, v9);
    goto LABEL_5;
  }

  v34 = a1;
  v25 = type metadata accessor for DiscontiguousColumnSlice(0, v8, v20, v21);
  if (swift_dynamicCast())
  {
    v33 = v43;
    v26 = v44;
    HIDWORD(v32) = v45;
    v36 = v41;
    v37 = v42;
    v38 = v43;
    v39 = v44;
    v40 = v45;
    DiscontiguousColumnSlice.subscript.getter(a2, v25, v12);
    v29 = type metadata accessor for PackedOptionalsArray(0, v8, v27, v28);
    sub_21B32CCD4(v12, v34, v29);
    (*(v10 + 8))(v12, v9);

    sub_21B23A9F4(v33, v26, SBYTE4(v32));
    return __swift_destroy_boxed_opaque_existential_1Tm(v46);
  }

  *&v41 = 0;
  *(&v41 + 1) = 0xE000000000000000;
  sub_21B34B634();

  *&v41 = 0xD000000000000014;
  *(&v41 + 1) = 0x800000021B34CB00;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  swift_getDynamicType();
  v31 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v31);

  result = sub_21B34B824();
  __break(1u);
  return result;
}

uint64_t sub_21B28D53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  sub_21B32A29C(a1, v5, &v13 - v8);
  v10 = *(v5 - 8);
  if ((*(v10 + 48))(v9, 1, v5) == 1)
  {
    result = (*(v7 + 8))(v9, v6);
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *(a3 + 24) = v5;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    return (*(v10 + 32))(boxed_opaque_existential_1, v9, v5);
  }

  return result;
}

uint64_t sub_21B28D6A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_21B34B474();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  sub_21B2832C0(a2, &v17);
  if (v18)
  {
    sub_21B261720(&v17, v19);
    sub_21B2616C4(v19, &v17);
    swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v9, 0, 1, v5);
    v12 = type metadata accessor for PackedOptionalsArray(0, v5, v10, v11);
    sub_21B32CCD4(v9, a1, v12);
    (*(v7 + 8))(v9, v6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  else
  {
    sub_21B28EEB4(&v17);
    (*(*(v5 - 8) + 56))(v9, 1, 1, v5);
    v16 = type metadata accessor for PackedOptionalsArray(0, v5, v14, v15);
    sub_21B32CCD4(v9, a1, v16);
    return (*(v7 + 8))(v9, v6);
  }
}

double sub_21B28D8A4@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t x3_0@<X3>)
{
  a4[3] = type metadata accessor for ColumnSlice(0, *(a3 + 16), a3, x3_0);
  a4[4] = &off_282CAA478;
  v8 = swift_allocObject();
  *a4 = v8;
  return Column.subscript.getter(a2, a3, v8 + 16);
}

uint64_t sub_21B28D940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_21B233A10(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E718, &qword_21B352338);
  type metadata accessor for ColumnSlice(0, *(a4 + 16), v7, v8);
  swift_dynamicCast();
  v10 = v13;
  v11 = v14;
  v12 = v15;
  return Column.subscript.setter(&v10, a1, a2, a4);
}

double sub_21B28D9F4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = a3;
  a5[3] = type metadata accessor for DiscontiguousColumnSlice(0, *(a4 + 16), a3, a4);
  a5[4] = &off_282CAB618;
  v10 = swift_allocObject();
  *a5 = v10;
  return sub_21B28B2B8(a1, a2, v6, a4, v10 + 16);
}

uint64_t sub_21B28DAC0(uint64_t a1)
{
  v1 = __OFADD__(a1, 1);
  result = a1 + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21B28DAD0(uint64_t a1)
{
  v1 = __OFSUB__(a1, 1);
  result = a1 - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t Column<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = *(a2 + 16);
  v16 = a3;
  type metadata accessor for Column.CodingKeys(255, v15, a3, a4);
  swift_getWitnessTable();
  v6 = sub_21B34B904();
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v17 = *v4;
  v14 = v4[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC94();
  LOBYTE(v22) = 0;
  v9 = v19;
  sub_21B34B8E4();
  if (v9)
  {
    return (*(v18 + 8))(v8, v6);
  }

  v13 = v18;
  v22 = v14;
  v21 = 1;
  type metadata accessor for PackedOptionalsArray(0, v15, v10, v11);
  v20 = v16;
  swift_getWitnessTable();
  sub_21B34B8F4();
  return (*(v13 + 8))(v8, v6);
}

uint64_t Column<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v22 = a4;
  v23 = a3;
  type metadata accessor for Column.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v24 = sub_21B34B8D4();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21B34BC74();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v8;
  v13 = v22;
  v12 = v23;
  LOBYTE(v27) = 0;
  v14 = sub_21B34B8B4();
  v16 = v15;
  v21 = v14;
  type metadata accessor for PackedOptionalsArray(0, a2, v17, v18);
  v26 = 1;
  v25 = v12;
  swift_getWitnessTable();
  sub_21B34B8C4();
  (*(v11 + 8))(v10, v24);
  v19 = v27;
  *v13 = v21;
  v13[1] = v16;
  v13[2] = v19;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_21B28DFBC(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  v4 = result;
  v6 = *v2;
  v5 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (*(v2 + 16) && (v7 != 1 || !*(v6 + 16)))
  {
    goto LABEL_11;
  }

  result = sub_21B2A6400();
  if (v9)
  {
LABEL_50:
    __break(1u);
    return result;
  }

  if (v8 > v4)
  {
    v10 = v6;
    if (v7)
    {
      if (!*(v6 + 16))
      {
        goto LABEL_42;
      }

      v10 = *(v6 + 32);
    }

    if (v10 > a2)
    {
LABEL_11:
      result = 0;
      v11 = 0;
LABEL_12:
      v12 = v4;
      v13 = a2;
LABEL_13:

      return sub_21B28E6D0(result, v11, v12, v13);
    }

    result = sub_21B28E16C(v4, a2, v6, v5, v7);
    if (result == v11)
    {
      v11 = result;
      goto LABEL_12;
    }

    if (v7)
    {
      if ((result & 0x8000000000000000) != 0)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v14 = *(v6 + 16);
      if (result >= v14)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      if (*(v6 + 32 + 16 * result) >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = *(v6 + 32 + 16 * result);
      }

      v15 = v11 - 1;
      if (__OFSUB__(v11, 1))
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      if ((v15 & 0x8000000000000000) != 0)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      if (v15 >= v14)
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v5 = *(v6 + 32 + 16 * v15 + 8);
    }

    else
    {
      if (result)
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (__OFSUB__(v11, 1))
      {
        goto LABEL_43;
      }

      if (v6 >= v4)
      {
        v12 = v4;
      }

      else
      {
        v12 = v6;
      }

      if (v11 != 1)
      {
        goto LABEL_49;
      }
    }

    if (v5 <= a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = v5;
    }

    if (v13 >= v12)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  return sub_21B248A60(v4, a2);
}

unint64_t sub_21B28E16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a1 == a2)
  {
    goto LABEL_73;
  }

  if (a5 && (a5 != 1 || !*(a3 + 16)))
  {
    goto LABEL_78;
  }

  result = sub_21B2A6400();
  if (v12)
  {
    goto LABEL_80;
  }

  if (v11 < a1)
  {
    goto LABEL_74;
  }

  if (a5)
  {
    v13 = *(a3 + 16);
    if (!v13)
    {
      goto LABEL_77;
    }

    if (*(a3 + 32) > a2)
    {
      goto LABEL_75;
    }
  }

  else
  {
    if (a3 > a2)
    {
      goto LABEL_75;
    }

    v13 = 1;
  }

  v14 = 0;
  do
  {
    v15 = v13 >> 1;
    v16 = v14 + (v13 >> 1);
    if (__OFADD__(v14, v13 >> 1))
    {
      goto LABEL_64;
    }

    if (a5)
    {
      if (v16 > *(a3 + 16))
      {
        goto LABEL_65;
      }
    }

    else if (v16 > 1)
    {
      goto LABEL_65;
    }

    if (!a5)
    {
      if (v16)
      {
        goto LABEL_68;
      }

      if (a4 >= a1)
      {
        goto LABEL_14;
      }

LABEL_27:
      if (a5)
      {
        if (v16 >= *(a3 + 16))
        {
          goto LABEL_82;
        }
      }

      else if (v16)
      {
        goto LABEL_82;
      }

      v14 = v16 + 1;
      v15 = v13 + ~v15;
      goto LABEL_14;
    }

    if (a5 != 1)
    {
      goto LABEL_81;
    }

    if (v16 >= *(a3 + 16))
    {
      goto LABEL_69;
    }

    if (*(a3 + 32 + 16 * v16 + 8) < a1)
    {
      goto LABEL_27;
    }

LABEL_14:
    v13 = v15;
  }

  while (v15 > 0);
  if (!a5)
  {
    if (v14 > 1)
    {
      goto LABEL_79;
    }

    v17 = 1;
    if (v14 < 0)
    {
      goto LABEL_63;
    }

LABEL_35:
    result = sub_21B27E1E4();
    if (result < 1)
    {
      return v14;
    }

    v18 = v14;
    while (1)
    {
      v19 = result >> 1;
      v20 = v18 + (result >> 1);
      if (__OFADD__(v18, result >> 1))
      {
        goto LABEL_66;
      }

      if (a5)
      {
        if (a5 == 1)
        {
          v21 = *(a3 + 16);
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 1;
      }

      if (v20 >= v17 || v20 < v14 || v20 > v21)
      {
        goto LABEL_67;
      }

      if (a5)
      {
        break;
      }

      if (v20)
      {
        goto LABEL_71;
      }

      if (a3 <= a2)
      {
        goto LABEL_54;
      }

LABEL_37:
      result = v19;
      if (v19 <= 0)
      {
        if (v18 < v14)
        {
          goto LABEL_76;
        }

        return v14;
      }
    }

    if (a5 != 1)
    {
      goto LABEL_81;
    }

    if (v20 >= *(a3 + 16))
    {
      goto LABEL_70;
    }

    if (*(a3 + 32 + 16 * v20) > a2)
    {
      goto LABEL_37;
    }

LABEL_54:
    if (a5)
    {
      if (v20 >= *(a3 + 16))
      {
        goto LABEL_83;
      }
    }

    else if (v20)
    {
      goto LABEL_83;
    }

    v18 = v20 + 1;
    v19 = result + ~v19;
    goto LABEL_37;
  }

  v17 = *(a3 + 16);
  if (v17 >= v14)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_21B34B824();
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
  return result;
}

uint64_t sub_21B28E49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5, uint64_t a6)
{
  v7 = v6;
  if (!v6[16])
  {
    if (a1 == a2)
    {
      v26 = *v6;
      if (a1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_21B351EA0;
        *(v22 + 32) = v26;
        v27 = v22;
        result = sub_21B270698(a3, a4, a5, a6);
        *v6 = v27;
        goto LABEL_19;
      }

      v6 = sub_21B264038(a3, a4, a5, a6);
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        goto LABEL_21;
      }

      goto LABEL_29;
    }

LABEL_18:
    result = sub_21B264038(a3, a4, a5, a6);
    *v6 = result;
    goto LABEL_19;
  }

  if (v6[16] != 1)
  {
    goto LABEL_18;
  }

  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v12 = *v6;
  v6 = *(*v6 + 16);
  if (v6 < a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = __OFSUB__(2, v13);
  v15 = 2 - v13;
  if (!v14)
  {
    v16 = &v6[v15];
    if (!__OFADD__(v6, v15))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v16 > *(v12 + 3) >> 1)
      {
        if (v6 <= v16)
        {
          v20 = v16;
        }

        else
        {
          v20 = v6;
        }

        v12 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v20, 1, v12);
      }

      result = sub_21B25CE1C(a1, a2, 2, a3, a4, a5, a6);
      *v7 = v12;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  result = sub_21B2356AC(0, *(v6 + 2) + 1, 1, v6);
  v6 = result;
LABEL_21:
  v23 = v26;
  v25 = *(v6 + 2);
  v24 = *(v6 + 3);
  if (v25 >= v24 >> 1)
  {
    result = sub_21B2356AC((v24 > 1), v25 + 1, 1, v6);
    v23 = v26;
    v6 = result;
  }

  *(v6 + 2) = v25 + 1;
  *&v6[16 * v25 + 32] = v23;
  *v7 = v6;
LABEL_19:
  *(v7 + 1) = 0;
  v7[16] = 1;
  return result;
}

uint64_t sub_21B28E6D0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (!v4[16])
  {
    if (a1 == a2)
    {
      v22 = *v4;
      if (!a1)
      {
        v4 = sub_21B263FC0(a3, a4);
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
LABEL_21:
          v19 = v22;
          v21 = *(v4 + 2);
          v20 = *(v4 + 3);
          if (v21 >= v20 >> 1)
          {
            result = sub_21B2356AC((v20 > 1), v21 + 1, 1, v4);
            v19 = v22;
            v4 = result;
          }

          *(v4 + 2) = v21 + 1;
          *&v4[16 * v21 + 32] = v19;
          *v5 = v4;
          goto LABEL_19;
        }

LABEL_29:
        result = sub_21B2356AC(0, *(v4 + 2) + 1, 1, v4);
        v4 = result;
        goto LABEL_21;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E190, &qword_21B351AC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_21B351EA0;
      *(v18 + 32) = v22;
      v23 = v18;
      result = sub_21B2705F8(a3, a4);
      *v4 = v23;
LABEL_19:
      *(v5 + 1) = 0;
      v5[16] = 1;
      return result;
    }

LABEL_18:
    result = sub_21B263FC0(a3, a4);
    *v4 = result;
    goto LABEL_19;
  }

  if (v4[16] != 1)
  {
    goto LABEL_18;
  }

  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v8 = *v4;
  v4 = *(*v4 + 16);
  if (v4 < a2)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v12 = &v4[v11];
  if (__OFADD__(v4, v11))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v12 > *(v8 + 3) >> 1)
  {
    if (v4 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v4;
    }

    v8 = sub_21B2356AC(isUniquelyReferenced_nonNull_native, v16, 1, v8);
  }

  result = sub_21B25CD54(a1, a2, 1, a3, a4);
  *v5 = v8;
  *(v5 + 1) = 0;
  v5[16] = 1;
  return result;
}

uint64_t sub_21B28E928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getWitnessTable();
  sub_21B34AF64();
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v11 = *a1;
  v12 = v7;
  v13 = v8;
  v14 = v9;

  Column.subscript.setter(&v11, v15, v16, a3);
}

uint64_t sub_21B28EA20(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B28EA5C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_21B28EBB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E978, &qword_21B353910);
    sub_21B25DE24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Order(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Order(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B28EE50()
{
  result = qword_27CD7EA20;
  if (!qword_27CD7EA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD7E760, &unk_21B352380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD7EA20);
  }

  return result;
}

uint64_t sub_21B28EEB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E0F8, &unk_21B3557C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ColumnID.name.getter()
{
  v0 = sub_21B233AD0();

  return v0;
}

uint64_t ColumnID.init(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ColumnID.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ColumnID.description.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_21B34B634();

  MEMORY[0x21CEED5E0](v2, v3);
  MEMORY[0x21CEED5E0](8236, 0xE200000000000000);
  v4 = sub_21B34BD24();
  MEMORY[0x21CEED5E0](v4);

  MEMORY[0x21CEED5E0](41, 0xE100000000000000);
  return 0x44496E6D756C6F43;
}

uint64_t sub_21B28F0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t getEnumTagSinglePayload for ProcessedRows(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ProcessedRows(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

Swift::Bool __swiftcall ColumnSlice.isNil(at:)(Swift::Int at)
{
  v6 = *(v4 + 2);
  v12 = *v4;
  v13 = v6;
  v14 = *(v4 + 24);
  v7 = *(v1 + 16);
  type metadata accessor for Column(255, v7, v2, v3);
  swift_getWitnessTable();
  v8 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](v11, v8);
  v9 = v11[2];

  LOBYTE(at) = sub_21B32A318(at, v9, v7);

  return at & 1;
}

uint64_t ColumnSlice.name.getter(uint64_t a1)
{
  v4 = *(v1 + 2);
  v3 = *(v1 + 3);
  v5 = *(v1 + 4);
  v12 = *v1;
  v13 = v4;
  v14 = v3;
  v15 = v5;

  type metadata accessor for Column(255, *(a1 + 16), v6, v7);
  swift_getWitnessTable();
  v8 = sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v11, v8);

  v9 = sub_21B233AD0();

  return v9;
}

double ColumnSlice.init(base:bounds:)@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Column(0, a4, a3, a4);
  swift_getWitnessTable();
  sub_21B34BAE4();
  *a5 = v7;
  *(a5 + 16) = v8;
  result = *&v9;
  *(a5 + 24) = v9;
  return result;
}

uint64_t ColumnSlice.subscript.getter(uint64_t a1, uint64_t a2)
{

  type metadata accessor for Column(255, *(a2 + 16), v3, v4);
  swift_getWitnessTable();
  sub_21B34BB44();
  swift_getWitnessTable();
  sub_21B34BB64();
}

uint64_t ColumnSlice.slice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 16) = v3;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
}

__n128 ColumnSlice.slice.setter(__int128 *a1)
{
  v5 = *a1;
  v3 = *(a1 + 2);

  *v1 = v5;
  *(v1 + 16) = v3;
  result = *(a1 + 24);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_21B28F544@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for ColumnSlice(0, *(a1 + a2 - 8), a2, a4);
  result = ColumnSlice.name.getter(v5);
  *a3 = result;
  a3[1] = v7;
  return result;
}

uint64_t sub_21B28F5A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ColumnSlice(0, *(a3 + a4 - 8), a3, a4);

  return ColumnSlice.name.setter(v4, v5, v6, v7);
}

uint64_t ColumnSlice.name.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Column(255, *(a3 + 16), a3, a4);

  swift_getWitnessTable();
  sub_21B34BB44();
  MEMORY[0x21CEEE2D0](&v13);

  Column.name.setter(a1, a2);
  v10 = *v4;
  v11 = *(v4 + 2);
  v12 = *(v4 + 24);

  sub_21B34BAD4();

  sub_21B34AAC4();

  if (v8 < v9)
  {
    __break(1u);
  }

  else
  {
    sub_21B34BAE4();

    *v4 = v10;
    *(v4 + 2) = v11;
    *(v4 + 24) = v12;
  }

  return result;
}

uint64_t (*ColumnSlice.name.modify(uint64_t *a1, uint64_t a2))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  a1[2] = a2;
  a1[3] = v2;
  *a1 = ColumnSlice.name.getter(a2);
  a1[1] = v4;
  return sub_21B28F840;
}

uint64_t sub_21B28F840(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return ColumnSlice.name.setter(*a1, v4, v6, a4);
  }

  ColumnSlice.name.setter(v5, v4, v6, v7);
}

uint64_t ColumnSlice.prototype.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  ColumnSlice.name.getter(a1);
  v4 = *(a1 + 16);
  nullsub_14();
  v6 = v5;
  v8 = v7;
  result = type metadata accessor for ColumnPrototype(0, v4, v9, v10);
  a2[3] = result;
  a2[4] = &off_282CA94D8;
  *a2 = v6;
  a2[1] = v8;
  return result;
}

__n128 ColumnSlice.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  return result;
}

uint64_t ColumnSlice.init(_:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Column(0, a2, a3, a4);
  result = Column.count.getter();
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;

    ColumnSlice.init(base:bounds:)(v8, a2, a5);
  }

  return result;
}

uint64_t ColumnSlice.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = v6;
  v13 = ColumnSlice.name.getter(a3);
  v15 = v14;
  v17 = *(v5 + 2);
  v16 = *(v5 + 3);
  v18 = *(v5 + 4);
  v35 = *v5;
  v36 = v17;
  v37 = v16;
  v38 = v18;
  v31 = *(a3 + 16);
  v32 = a4;
  v33 = a1;
  v34 = a2;

  type metadata accessor for Column(255, v31, v19, v20);
  swift_getWitnessTable();
  v21 = sub_21B34BB44();
  v22 = sub_21B34B474();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E4C8, &unk_21B3553F0);
  WitnessTable = swift_getWitnessTable();
  v25 = sub_21B2FCC28(sub_21B293134, &v30, v21, v22, v23, WitnessTable, MEMORY[0x277D84950], &v39);
  if (v7)
  {
  }

  else
  {
    v27 = v25;

    *&v35 = v27;
    v28 = sub_21B34B054();
    v29 = swift_getWitnessTable();
    return Column.init<A>(name:contents:)(v13, v15, &v35, a4, v28, v29, a5);
  }
}

uint64_t sub_21B28FC04(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  result = a2(a1);
  if (v6)
  {
    *a6 = v6;
  }

  return result;
}

void ColumnSlice.filter(_:)(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v40 = a1;
  v41 = a2;
  v35 = *(a3 + 16);
  v36 = a4;
  v7 = sub_21B34B474();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v32 - v8;
  v67 = v9;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = sub_21B34B474();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v32 - v12);
  v14 = *v4;
  v38 = v4[1];
  v39 = v14;
  v15 = v4[2];
  v16 = v4[3];
  v17 = v4[4];
  v64 = 0;
  v65 = 0;
  v66 = 2;
  *&v51 = v14;
  *(&v51 + 1) = v38;
  *&v52 = v15;
  *(&v52 + 1) = v16;
  v53 = v17;
  swift_getWitnessTable();
  sub_21B34B194();
  v59 = *v47;
  v55 = v39;
  *&v56 = v38;
  v33 = v16;
  v34 = v15;
  *(&v56 + 1) = v15;
  v57 = v16;
  v32 = v17;
  v58 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD7E978, &qword_21B353910);
  v19 = sub_21B28EBB0(&qword_27CD7E980, MEMORY[0x277D83D28]);
  WitnessTable = swift_getWitnessTable();
  sub_21B34BA54();
  v51 = v48;
  v52 = v49;
  v53 = *&v50[0];
  v54 = *(v50 + 8);
  *&v45 = v18;
  *(&v45 + 1) = a3;
  v55 = v18;
  *&v56 = a3;
  v43 = WitnessTable;
  v44 = v19;
  *(&v56 + 1) = v19;
  v57 = WitnessTable;
  sub_21B34B674();
  sub_21B34B644();
  v42 = TupleTypeMetadata2 - 8;
  v21 = (v37 + 32);
  for (i = (v37 + 8); ; (*i)(v46, v67))
  {
    v48 = v45;
    *&v49 = v44;
    *(&v49 + 1) = v43;
    v23 = sub_21B34B664();
    sub_21B34B654();
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v13, 1, TupleTypeMetadata2) == 1)
    {
      v50[0] = v62;
      v50[1] = v63[0];
      *(&v50[1] + 9) = *(v63 + 9);
      v48 = v60;
      v49 = v61;
      (*(*(v23 - 8) + 8))(&v48, v23);
      *&v51 = v39;
      *(&v51 + 1) = v38;
      *&v52 = v34;
      *(&v52 + 1) = v33;
      v53 = v32;
      v28 = v35;
      type metadata accessor for Column(255, v35, v29, v30);
      swift_getWitnessTable();
      v31 = sub_21B34BB44();
      MEMORY[0x21CEEE2D0](&v55, v31);
      v47[0] = v55;
      *&v47[1] = v56;
      sub_21B2D3D88(v47, v64, v65, v66, v28, v36);
      return;
    }

    v24 = *v13;
    v25 = v46;
    (*v21)(v46, v13 + *(TupleTypeMetadata2 + 48), v67);
    v26 = v40(v25);
    if (v5)
    {
      (*i)(v46, v67);
      v50[0] = v62;
      v50[1] = v63[0];
      *(&v50[1] + 9) = *(v63 + 9);
      v48 = v60;
      v49 = v61;
      (*(*(v23 - 8) + 8))(&v48, v23);
      sub_21B23A9F4(v64, v65, v66);
      return;
    }

    if ((v26 & 1) == 0)
    {
      continue;
    }

    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 < v24)
    {
      goto LABEL_12;
    }

    sub_21B28DFBC(v24, v27);
  }

  __break(1u);
LABEL_12:
  __break(1u);
}