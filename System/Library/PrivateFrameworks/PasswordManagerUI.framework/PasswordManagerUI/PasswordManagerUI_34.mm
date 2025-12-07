double sub_21CADC370(uint64_t a1)
{
  if ((*(a1 + *(type metadata accessor for PMRecentlyDeletedAccountRow(0) + 24)) & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECFE8, &unk_21CBA9A90);
    MEMORY[0x21CF14A20](&v2);
    sub_21CB84F34();
  }

  return result;
}

uint64_t sub_21CADC440(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D08, &qword_21CBC6D80);
  MEMORY[0x28223BE20](v5);
  v7 = &v12 - v6;
  *v7 = sub_21CB83074();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D10, &qword_21CBC6D88);
  sub_21CADBA8C(v2, &v7[*(v8 + 44)]);
  v7[*(v5 + 36)] = 0;
  sub_21CADC7EC(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PMRecentlyDeletedAccountRow);
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_21CADC8AC(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9, type metadata accessor for PMRecentlyDeletedAccountRow);
  sub_21CADC698();
  sub_21CB841F4();

  return sub_21C6EA794(v7, &qword_27CDF7D08, &qword_21CBC6D80);
}

double sub_21CADC638()
{
  v1 = *(type metadata accessor for PMRecentlyDeletedAccountRow(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21CADC370(v2);
}

unint64_t sub_21CADC698()
{
  result = qword_27CDF7D18;
  if (!qword_27CDF7D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7D08, &qword_21CBC6D80);
    sub_21C6EADEC(&qword_27CDF7D20, &qword_27CDF7D28, &unk_21CBC6D90, MEMORY[0x277CE1138]);
    sub_21C6EADEC(&qword_27CDEB970, &qword_27CDEB948, &unk_21CBA26E0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D18);
  }

  return result;
}

uint64_t sub_21CADC77C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PMRecentlyDeletedAccountRow(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CADBF58(v4, a1);
}

uint64_t sub_21CADC7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CADC854()
{
  result = qword_27CDEB7C8;
  if (!qword_27CDEB7C8)
  {
    type metadata accessor for PMGroupsStore(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDEB7C8);
  }

  return result;
}

uint64_t sub_21CADC8AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CADC954(uint64_t a1)
{
  v2 = sub_21CADE070();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADC990(uint64_t a1)
{
  v2 = sub_21CADE070();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADC9CC(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DA8, &qword_21CBC7000);
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - v2;
  v3 = sub_21CB85C44();
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DB0, &qword_21CBC7008);
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DB8, &qword_21CBC7010);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DC0, &qword_21CBC7018);
  v14 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v16 = &v25 - v15;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CADDF10();
  v17 = v33;
  sub_21CB864F4();
  sub_21CADDEAC(v34, v13);
  v18 = (*(v17 + 48))(v13, 2, v3);
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 0;
      sub_21CADE070();
      v19 = v35;
      sub_21CB862A4();
      (*(v25 + 8))(v10, v26);
    }

    else
    {
      v37 = 1;
      sub_21CADE01C();
      v19 = v35;
      sub_21CB862A4();
      (*(v27 + 8))(v7, v28);
    }

    return (*(v14 + 8))(v16, v19);
  }

  else
  {
    v20 = v29;
    (*(v17 + 32))(v32, v13, v3);
    v38 = 2;
    sub_21CADDF64();
    v21 = v30;
    v22 = v35;
    sub_21CB862A4();
    sub_21CADE4D8(&qword_27CDF7DC8, MEMORY[0x277D49978], MEMORY[0x277D49980]);
    v23 = v31;
    sub_21CB862C4();
    (*(v20 + 8))(v21, v23);
    (*(v17 + 8))(v32, v3);
    return (*(v14 + 8))(v16, v22);
  }
}

uint64_t sub_21CADCEFC()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CADDEAC(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    MEMORY[0x21CF15F90](v9 != 1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF15F90](2);
    sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CADD0E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D58, &qword_21CBC6FD8);
  v4 = *(v3 - 8);
  v52 = v3;
  v53 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v47 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D60, &qword_21CBC6FE0);
  v51 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v56 = &v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D68, &qword_21CBC6FE8);
  v49 = *(v7 - 8);
  v50 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v47 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D70, &unk_21CBC6FF0);
  v58 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v47 - v11;
  v13 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v47 - v17;
  v19 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_21CADDF10();
  v20 = v59;
  sub_21CB864E4();
  if (!v20)
  {
    v21 = v13;
    v47 = v15;
    v48 = v18;
    v22 = v56;
    v23 = v57;
    v59 = 0;
    v24 = v12;
    v25 = sub_21CB86294();
    v26 = *(v25 + 16);
    if (!v26 || ((v27 = *(v25 + 32), v26 == 1) ? (v28 = v27 == 3) : (v28 = 1), v28))
    {
      v29 = sub_21CB86104();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7D80, &qword_21CBCCC00);
      *v31 = v21;
      sub_21CB86264();
      sub_21CB860F4();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
      (*(v58 + 8))(v24, v10);
    }

    else
    {
      if (*(v25 + 32))
      {
        v32 = v12;
        if (v27 == 1)
        {
          v62 = 1;
          sub_21CADE01C();
          v33 = v59;
          sub_21CB86254();
          v34 = v58;
          if (!v33)
          {
            (*(v51 + 8))(v22, v23);
            (*(v34 + 8))(v12, v10);
            swift_unknownObjectRelease();
            v35 = sub_21CB85C44();
            v36 = v48;
            (*(*(v35 - 8) + 56))(v48, 2, 2, v35);
LABEL_20:
            sub_21CADDFB8(v36, v54);
            return __swift_destroy_boxed_opaque_existential_0(v60);
          }
        }

        else
        {
          v63 = 2;
          sub_21CADDF64();
          v38 = v55;
          v39 = v59;
          sub_21CB86254();
          v34 = v58;
          if (!v39)
          {
            v42 = v12;
            v43 = v38;
            v44 = sub_21CB85C44();
            sub_21CADE4D8(&qword_27CDF7D90, MEMORY[0x277D49978], MEMORY[0x277D499A0]);
            v45 = v47;
            v46 = v52;
            sub_21CB86284();
            (*(v53 + 8))(v43, v46);
            (*(v34 + 8))(v42, v10);
            swift_unknownObjectRelease();
            (*(*(v44 - 8) + 56))(v45, 0, 2, v44);
            v36 = v48;
            sub_21CADDFB8(v45, v48);
            goto LABEL_20;
          }
        }
      }

      else
      {
        v61 = 0;
        sub_21CADE070();
        v32 = v12;
        v37 = v59;
        sub_21CB86254();
        if (!v37)
        {
          (*(v49 + 8))(v9, v50);
          (*(v58 + 8))(v12, v10);
          swift_unknownObjectRelease();
          v41 = sub_21CB85C44();
          v36 = v48;
          (*(*(v41 - 8) + 56))(v48, 1, 2, v41);
          goto LABEL_20;
        }

        v34 = v58;
      }

      (*(v34 + 8))(v32, v10);
    }

    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v60);
}

uint64_t sub_21CADD7FC()
{
  v1 = 0x6F7773736150796DLL;
  if (*v0 != 1)
  {
    v1 = 0x70756F7267;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7105633;
  }
}

uint64_t sub_21CADD854@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21CADE92C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21CADD888(uint64_t a1)
{
  v2 = sub_21CADDF10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADD8C4(uint64_t a1)
{
  v2 = sub_21CADDF10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADD90C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_21CB86344();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21CADD98C(uint64_t a1)
{
  v2 = sub_21CADDF64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADD9C8(uint64_t a1)
{
  v2 = sub_21CADDF64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADDA04(uint64_t a1)
{
  v2 = sub_21CADE01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CADDA40(uint64_t a1)
{
  v2 = sub_21CADE01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CADDA80(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADDEAC(v1, v8);
  v9 = (*(v3 + 48))(v8, 2, v2);
  if (v9)
  {
    return MEMORY[0x21CF15F90](v9 != 1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x21CF15F90](2);
  sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CADDC44(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CADDEAC(v2, v9);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    MEMORY[0x21CF15F90](v10 != 1);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x21CF15F90](2);
    sub_21CADE4D8(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CADDEAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CADDF10()
{
  result = qword_27CDF7D78;
  if (!qword_27CDF7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D78);
  }

  return result;
}

unint64_t sub_21CADDF64()
{
  result = qword_27CDF7D88;
  if (!qword_27CDF7D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D88);
  }

  return result;
}

uint64_t sub_21CADDFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CADE01C()
{
  result = qword_27CDF7D98;
  if (!qword_27CDF7D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7D98);
  }

  return result;
}

unint64_t sub_21CADE070()
{
  result = qword_27CDF7DA0;
  if (!qword_27CDF7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DA0);
  }

  return result;
}

uint64_t sub_21CADE0C4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21CADE0F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DD0, &qword_21CBC7020);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v22 - v12;
  v15 = *(v14 + 56);
  sub_21CADDEAC(a1, v22 - v12);
  sub_21CADDEAC(a2, &v13[v15]);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (v17)
  {
    if (v17 == 1)
    {
      if (v16(&v13[v15], 2, v4) == 1)
      {
        goto LABEL_14;
      }

      goto LABEL_8;
    }

    if (v16(&v13[v15], 2, v4) != 2)
    {
LABEL_8:
      sub_21CADE470(v13);
      return 0;
    }
  }

  else
  {
    sub_21CADDEAC(v13, v10);
    if (v16(&v13[v15], 2, v4))
    {
      (*(v5 + 8))(v10, v4);
      goto LABEL_8;
    }

    (*(v5 + 32))(v7, &v13[v15], v4);
    sub_21CADE4D8(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v22[2] == v22[0] && v22[3] == v22[1])
    {
      v19 = *(v5 + 8);
      v19(v7, v4);

      v19(v10, v4);
    }

    else
    {
      v20 = sub_21CB86344();
      v21 = *(v5 + 8);
      v21(v7, v4);

      v21(v10, v4);
      if ((v20 & 1) == 0)
      {
        sub_21CADE520(v13);
        return 0;
      }
    }
  }

LABEL_14:
  sub_21CADE520(v13);
  return 1;
}

uint64_t sub_21CADE470(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7DD0, &qword_21CBC7020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CADE4D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CADE520(uint64_t a1)
{
  v2 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21CADE5C0()
{
  result = qword_27CDF7DD8;
  if (!qword_27CDF7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DD8);
  }

  return result;
}

unint64_t sub_21CADE618()
{
  result = qword_27CDF7DE0;
  if (!qword_27CDF7DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DE0);
  }

  return result;
}

unint64_t sub_21CADE670()
{
  result = qword_27CDF7DE8;
  if (!qword_27CDF7DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DE8);
  }

  return result;
}

unint64_t sub_21CADE6C8()
{
  result = qword_27CDF7DF0;
  if (!qword_27CDF7DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DF0);
  }

  return result;
}

unint64_t sub_21CADE720()
{
  result = qword_27CDF7DF8;
  if (!qword_27CDF7DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7DF8);
  }

  return result;
}

unint64_t sub_21CADE778()
{
  result = qword_27CDF7E00;
  if (!qword_27CDF7E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E00);
  }

  return result;
}

unint64_t sub_21CADE7D0()
{
  result = qword_27CDF7E08;
  if (!qword_27CDF7E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E08);
  }

  return result;
}

unint64_t sub_21CADE828()
{
  result = qword_27CDF7E10;
  if (!qword_27CDF7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E10);
  }

  return result;
}

unint64_t sub_21CADE880()
{
  result = qword_27CDF7E18;
  if (!qword_27CDF7E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7E18);
  }

  return result;
}

unint64_t sub_21CADE8D8()
{
  result = qword_27CDF7E20[0];
  if (!qword_27CDF7E20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CDF7E20);
  }

  return result;
}

uint64_t sub_21CADE92C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_21CB86344() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F7773736150796DLL && a2 == 0xEB00000000736472 || (sub_21CB86344() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_21CB86344();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void sub_21CADEA4C(void *a2@<X8>)
{
  swift_getKeyPath(asc_21CBC7620);
  swift_getKeyPath(byte_21CBC7750);
  sub_21CB81DB4();

  *a2 = v3;
}

uint64_t sub_21CADEACC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(asc_21CBC7620);
  swift_getKeyPath(byte_21CBC7750);

  return sub_21CB81DC4();
}

uint64_t sub_21CADEB98@<X0>(uint64_t a1@<X8>)
{
  sub_21CB82EB4();
  sub_21C96758C();
  sub_21CB82F94();
  result = type metadata accessor for PMDismissAction(0);
  v3 = (a1 + *(result + 20));
  *v3 = v4;
  v3[1] = v5;
  return result;
}

void sub_21CADEC64(uint64_t a1)
{
  type metadata accessor for PMRecentlyDeletedAccountsSource(319);
  if (v1 <= 0x3F)
  {
    sub_21CADECE8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CADECE8(uint64_t a1)
{
  if (!qword_27CDF7EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDEDBE0, &qword_21CBB8760);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7EB8);
    }
  }
}

uint64_t sub_21CADED68@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADF128();
  sub_21CAE5B5C(v1, &v8[v6[6]], type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CADF2A8();
  sub_21CB81FA4();
  v9 = v26;
  v10 = v27;
  *v8 = v25;
  *(v8 + 1) = v9;
  v8[16] = v10;
  v11 = v6[7];
  *&v8[v11] = swift_getKeyPath(asc_21CBC7478, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  swift_storeEnumTagMultiPayload();
  v12 = &v8[v6[8]];
  *v12 = swift_getKeyPath(byte_21CBC74A8);
  v12[8] = 0;
  v13 = v6[9];
  KeyPath = swift_getKeyPath(byte_21CBC74D0);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v15 = &v8[v13];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, v25);

  type metadata accessor for PMGroupsStore(0);
  sub_21C7065C0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v16 = sub_21CB82674();
  v18 = v17;

  *v15 = v16;
  v15[1] = v18;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  *(v8 + 3) = sub_21CB82674();
  *(v8 + 4) = v19;
  sub_21CB81014();
  v20 = sub_21CB81004();
  v22 = v21;
  (*(v3 + 8))(v5, v2);
  v25 = v20;
  v26 = v22;
  sub_21C7065C0(&qword_27CDF7EC8, type metadata accessor for _PMRecentlyDeletedAccountsView, &unk_21CBC7560);
  sub_21C71F3FC();
  sub_21CB842F4();

  return sub_21CAE5D7C(v8, type metadata accessor for _PMRecentlyDeletedAccountsView);
}

uint64_t sub_21CADF128()
{
  v1 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for PMRecentlyDeletedAccountsView(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  v11 = *v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7ED0, &qword_21CBC74F0);
  sub_21CB84D54();
  v7 = *(v10 + 16);

  if (!v7)
  {
    sub_21CAE5B5C(v0, v3, type metadata accessor for PMRecentlyDeletedAccountsSource);
    type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
    swift_allocObject();
    v7 = sub_21CAEBA7C(v3);
    v11 = v5;
    v12 = v6;
    sub_21CB84D54();
    *(v10 + 16) = v7;
  }

  return v7;
}

unint64_t sub_21CADF2A8()
{
  result = qword_27CDF7EC0;
  if (!qword_27CDF7EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7EC0);
  }

  return result;
}

double sub_21CADF2FC@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v43 = *(v3 - 8);
  v4 = *(v43 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F08, &qword_21CBC75F0);
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - v6;
  *v7 = sub_21CB832E4();
  *(v7 + 1) = 0;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F10, &qword_21CBC75F8);
  sub_21CADF924(&v7[*(v8 + 44)]);
  v45 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F18, &qword_21CBC7600);
  sub_21C6EADEC(&qword_27CDF7F20, &qword_27CDF7F08, &qword_21CBC75F0, MEMORY[0x277CE1198]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
  v10 = sub_21CAE5A68();
  *&v46 = v9;
  *(&v46 + 1) = v10;
  swift_getOpaqueTypeConformance2();
  v38 = a1;
  sub_21CB84894();
  sub_21C6EA794(v7, &qword_27CDF7F08, &qword_21CBC75F0);
  v11 = v1;
  LOBYTE(v9) = sub_21CAE917C();
  v42 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v12 = v40;
  sub_21CAE5B5C(v1, v40, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v43 = *(v43 + 80);
  v13 = (v43 + 16) & ~v43;
  v14 = swift_allocObject();
  v39 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE6610(v12, v14 + v13, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v15 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F48, &qword_21CBC7618) + 36);
  *v15 = v9 & 1;
  *(v15 + 8) = sub_21CAE5BC4;
  *(v15 + 16) = v14;
  *&v37 = *(v11 + 24);
  v35 = v11;
  v36 = type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  sub_21CB82684();
  swift_getKeyPath(asc_21CBC7620);
  sub_21CB82694();

  v17 = v52;
  v16 = v53;
  v18 = v54;
  v44[0] = 0;
  swift_getKeyPath(byte_21CBC7648, v44);
  v49 = v17;
  v50 = v16;
  v51 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEEBB0, &qword_21CBAAC70);
  sub_21CB84F44();

  v34 = v46;
  v33 = v47;
  v19 = v48;

  v20 = v40;
  sub_21CAE5B5C(v11, v40, v42);
  v21 = swift_allocObject();
  v22 = v39;
  sub_21CAE6610(v20, v21 + v13, v39);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F50, &qword_21CBC76A8);
  v24 = v38;
  v25 = v38 + *(v23 + 36);
  v26 = v33;
  *v25 = v34;
  *(v25 + 16) = v26;
  *(v25 + 32) = v19;
  *(v25 + 40) = &unk_21CBC76A0;
  *(v25 + 48) = v21;
  sub_21CB82684();
  swift_getKeyPath(byte_21CBC76B0);
  sub_21CB82694();

  v34 = v46;
  v27 = v47;
  v28 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F58, &qword_21CBC76D8) + 36);
  *v28 = v34;
  *(v28 + 16) = v27;
  sub_21CB82684();
  swift_getKeyPath(aP_29);
  sub_21CB82694();

  v37 = v46;
  v29 = v47;
  sub_21CAE5B5C(v35, v20, v42);
  v30 = swift_allocObject();
  sub_21CAE6610(v20, v30 + v13, v22);
  v31 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F60, &qword_21CBC7708) + 36);
  result = *&v37;
  *v31 = v37;
  *(v31 + 16) = v29;
  *(v31 + 24) = sub_21CAE5D0C;
  *(v31 + 32) = v30;
  return result;
}

uint64_t sub_21CADF924@<X0>(char *a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F70, &qword_21CBC7778);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F78, &qword_21CBC7780);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F80, &qword_21CBC7788);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v23 - v16;
  sub_21CADFC2C(&v23 - v16);
  sub_21CAE0214(v4);
  sub_21C716934(v4, v10, &qword_27CDF7F70, &qword_21CBC7778);
  (*(v2 + 56))(v10, 0, 1, v1);
  v18 = *(v12 + 16);
  v18(v14, v17, v11);
  sub_21C6EDBAC(v10, v7, &qword_27CDF7F78, &qword_21CBC7780);
  v19 = v24;
  v18(v24, v14, v11);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F88, &qword_21CBC7790);
  sub_21C6EDBAC(v7, &v19[*(v20 + 48)], &qword_27CDF7F78, &qword_21CBC7780);
  sub_21C6EA794(v10, &qword_27CDF7F78, &qword_21CBC7780);
  v21 = *(v12 + 8);
  v21(v17, v11);
  sub_21C6EA794(v7, &qword_27CDF7F78, &qword_21CBC7780);
  return (v21)(v14, v11);
}

uint64_t sub_21CADFC2C@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB1E8, &qword_21CBA13A0);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v25 - v3;
  v4 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v30 = *(v4 - 8);
  v29 = *(v30 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21CB829D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FD0, &qword_21CBC7818);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v25 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FD8, &qword_21CBC7820);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - v14;
  v35 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FE0, &qword_21CBC7828);
  sub_21C6EADEC(&qword_27CDF7FE8, &qword_27CDF7FE0, &qword_21CBC7828, MEMORY[0x277CE14C0]);
  sub_21CB83EF4();
  sub_21CB85294();
  sub_21C6EADEC(&qword_27CDF7FF0, &qword_27CDF7FD0, &qword_21CBC7818, MEMORY[0x277CDE580]);
  sub_21C7065C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v15 = v33;
  sub_21CB849C4();
  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
  v26 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v17 = v27;
  v16 = v28;
  sub_21CAE5B5C(v27, v28, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = swift_allocObject();
  sub_21CAE6610(v16, v19 + v18, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v20 = &v15[*(v34 + 36)];
  *v20 = sub_21CAE61BC;
  v20[1] = v19;
  v20[2] = 0;
  v20[3] = 0;
  type metadata accessor for PMRecentlyDeletedAccountsViewModel(0);
  sub_21C7065C0(&qword_27CDEF9F0, type metadata accessor for PMRecentlyDeletedAccountsViewModel, &unk_21CBC7CE8);
  sub_21CB82684();
  swift_getKeyPath(aH_106);
  v21 = v31;
  sub_21CB82694();

  sub_21CAE5B5C(v17, v16, v26);
  v22 = swift_allocObject();
  sub_21CAE6610(v16, v22 + v18, type metadata accessor for _PMRecentlyDeletedAccountsView);
  type metadata accessor for PMAccount(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FF8, &unk_21CBC7858);
  sub_21CAE61EC();
  sub_21C7065C0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  sub_21CAE6338();
  v23 = v33;
  sub_21CB847C4();

  sub_21C6EA794(v21, &qword_27CDEB1E8, &qword_21CBA13A0);
  return sub_21C6EA794(v23, &qword_27CDF7FD8, &qword_21CBC7820);
}

uint64_t sub_21CAE0214@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F90, &qword_21CBC7798);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = sub_21CB84FB4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_21CB84FA4();
  *v9 = sub_21CB83074();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F98, &qword_21CBC77A0);
  sub_21CAE5564(v1, &v9[*(v17 + 44)]);
  v18 = sub_21CB83CE4();
  v19 = &v9[*(v4 + 44)];
  *v19 = v18;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  v19[40] = 1;
  v20 = *(v11 + 16);
  v20(v13, v16, v10);
  sub_21C6EDBAC(v9, v6, &qword_27CDF7F90, &qword_21CBC7798);
  v20(a1, v13, v10);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FA0, &qword_21CBC77A8);
  sub_21C6EDBAC(v6, &a1[*(v21 + 48)], &qword_27CDF7F90, &qword_21CBC7798);
  sub_21C6EA794(v9, &qword_27CDF7F90, &qword_21CBC7798);
  v22 = *(v11 + 8);
  v22(v16, v10);
  sub_21C6EA794(v6, &qword_27CDF7F90, &qword_21CBC7798);
  return (v22)(v13, v10);
}

uint64_t sub_21CAE049C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F28, &qword_21CBC7608);
  MEMORY[0x28223BE20](v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7F68, &qword_21CBC7770);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F38, &qword_21CBC7610);
  v8 = sub_21C6EADEC(&qword_27CDF7F40, &qword_27CDF7F38, &qword_21CBC7610, MEMORY[0x277CDDF68]);
  v12[0] = v7;
  v12[1] = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CF13220](v2, v6, OpaqueTypeConformance2);
  sub_21C6EA794(v2, &qword_27CDF7F28, &qword_21CBC7608);
  v10 = sub_21CAE5A68();
  MEMORY[0x21CF131E0](v5, v0, v10);
  return sub_21C6EA794(v5, &qword_27CDF7F28, &qword_21CBC7608);
}

void sub_21CAE066C(_BYTE *a1)
{
  v2 = type metadata accessor for PMDismissAction(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    type metadata accessor for _PMRecentlyDeletedAccountsView(0);
    sub_21C95B584(v4);
    v5 = &v4[*(v2 + 20)];
    v6 = *v5;
    if (*v5)
    {
      v7 = *(v5 + 1);

      v6(v8);
      sub_21C71B710(v6, v7);
    }

    else
    {
      sub_21CB823A4();
    }

    sub_21CAE5D7C(v4, type metadata accessor for PMDismissAction);
  }
}

uint64_t sub_21CAE0764(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_21CB858B4();
  v2[4] = sub_21CB858A4();
  v4 = sub_21CB85874();

  return MEMORY[0x2822009F8](sub_21CAE07FC, v4, v3);
}

uint64_t sub_21CAE07FC()
{
  v1 = *(v0 + 16);

  v2.n128_f64[0] = sub_21CAEA660(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

double sub_21CAE086C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  v4 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v5 = qword_27CDEA4C0;

  if (v5 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v4, v7);

  sub_21C833310(a1, sub_21C8C5780, v3);

  return result;
}

uint64_t sub_21CAE095C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  *&v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8018, &qword_21CBC78A0);
  *&v32 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v6 = v30 - v5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8020, &qword_21CBC78A8);
  MEMORY[0x28223BE20](v33);
  v8 = v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8028, &qword_21CBC78B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v34 = sub_21CAE0F30();
  v35 = v15;
  swift_getKeyPath(byte_21CBC78E0);
  sub_21CB81DB4();

  v16 = *(*&v38[0] + 16);

  if (v16)
  {
    swift_getKeyPath(byte_21CBC78E0);
    sub_21CB81DB4();

    v30[1] = swift_getKeyPath(byte_21CBC7900);
    sub_21CAE5B5C(a1, v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
    v17 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v18 = swift_allocObject();
    sub_21CAE6610(v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for _PMRecentlyDeletedAccountsView);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_21CAE6438;
    *(v19 + 24) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8030, &unk_21CBC7928);
    sub_21C6EADEC(&qword_27CDEFC88, &qword_27CDEFC78, &qword_21CBC7920, MEMORY[0x277D83980]);
    sub_21C7065C0(&qword_27CDEFC90, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section, &unk_21CBC7CA8);
    sub_21CAE64C0();
    sub_21CB84FD4();
    v20 = v32;
    v21 = v36;
    (*(v32 + 16))(v8, v6, v36);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FB40();
    sub_21CAE6584();
    sub_21CB83494();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    sub_21CAE1E9C(v38);
    v22 = v39;
    v31 = v38[1];
    v32 = v38[0];
    v23 = sub_21CB84B34();
    KeyPath = swift_getKeyPath(aX_77);
    v25 = v31;
    *v8 = v32;
    *(v8 + 1) = v25;
    v8[32] = v22;
    *(v8 + 5) = KeyPath;
    *(v8 + 6) = v23;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC998, &unk_21CBC1840);
    sub_21C80FB40();
    sub_21CAE6584();
    sub_21CB83494();
  }

  sub_21C787630(v14, v11);
  v26 = v37;
  v27 = v35;
  *v37 = v34;
  v26[1] = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8058, &qword_21CBC7940);
  sub_21C787630(v11, v26 + *(v28 + 48));

  sub_21C6EA794(v14, &qword_27CDF8028, &qword_21CBC78B0);
  sub_21C6EA794(v11, &qword_27CDF8028, &qword_21CBC78B0);
}

uint64_t sub_21CAE0F30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7670, &unk_21CBAA8F0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v36 - v2;
  v4 = type metadata accessor for PMSharingGroup(0);
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21CB85C44();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21CB81024();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [objc_opt_self() recentlyDeletedExpirationTimeInDays];
  v17 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  sub_21CAE5B5C(v0 + *(v17 + 24), v16, type metadata accessor for PMRecentlyDeletedAccountsSource);
  if (!(*(v8 + 48))(v16, 2, v7))
  {
    v36 = v8;
    v24 = *(v8 + 32);
    v25 = v39;
    v24(v39, v16, v7);
    sub_21CA1D444(v25, v3);
    v26 = v38;
    if ((*(v37 + 48))(v3, 1, v38) != 1)
    {
      v27 = v6;
      sub_21CAE6610(v3, v6, type metadata accessor for PMSharingGroup);
      sub_21CB81014();
      sub_21CB81004();
      (*(v11 + 8))(v13, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_21CBA15B0;
      v29 = &v6[*(v26 + 20)];
      v31 = *v29;
      v30 = *(v29 + 1);
      v32 = MEMORY[0x277D837D0];
      *(v28 + 56) = MEMORY[0x277D837D0];
      v33 = sub_21C7C0050();
      *(v28 + 64) = v33;
      *(v28 + 32) = v31;
      *(v28 + 40) = v30;
      v41 = v40;
      sub_21C8C5CE4();

      v34 = sub_21CB85EE4();
      *(v28 + 96) = v32;
      *(v28 + 104) = v33;
      *(v28 + 72) = v34;
      *(v28 + 80) = v35;
      v22 = sub_21CB85594();

      sub_21CAE5D7C(v27, type metadata accessor for PMSharingGroup);
      (*(v36 + 8))(v39, v7);
      return v22;
    }

    (*(v36 + 8))(v39, v7);
    sub_21C6EA794(v3, &qword_27CDF7670, &unk_21CBAA8F0);
  }

  sub_21CB81014();
  sub_21CB81004();
  (*(v11 + 8))(v13, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_21CBA0690;
  v41 = v40;
  sub_21C8C5CE4();
  v19 = sub_21CB85EE4();
  v21 = v20;
  *(v18 + 56) = MEMORY[0x277D837D0];
  *(v18 + 64) = sub_21C7C0050();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = sub_21CB85594();

  return v22;
}

uint64_t sub_21CAE14D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PMSharingGroup(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = a3;
  v26 = a2;
  sub_21CAE5B5C(a1, v12, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v13 = (*(v7 + 48))(v12, 2, v6);
  if (!v13)
  {
    sub_21CAE6610(v12, v9, type metadata accessor for PMSharingGroup);
    v21 = &v9[*(v6 + 20)];
    v20 = *v21;
    v19 = v21[1];

    sub_21CAE5D7C(v9, type metadata accessor for PMSharingGroup);
LABEL_7:
    v27 = v20;
    v28 = v19;
    sub_21C71F3FC();
    v15 = sub_21CB84054();
    v17 = v22 & 1;
    goto LABEL_8;
  }

  v14 = v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  if (v14 != 1)
  {
    if (qword_27CDEA498 != -1)
    {
      swift_once();
    }

    v20 = qword_27CE18748;
    v19 = qword_27CE18750;

    goto LABEL_7;
  }

LABEL_8:
  v27 = v15;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF4130, &qword_21CBB1B70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8048, &qword_21CBC7938);
  sub_21C87DED8();
  sub_21C6EADEC(&qword_27CDF8040, &qword_27CDF8048, &qword_21CBC7938, MEMORY[0x277CDE5A0]);
  return sub_21CB85034();
}

double sub_21CAE1798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CAE5B5C(a1, &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _PMRecentlyDeletedAccountsView);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CAE6610(&v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v13 = v8;
  v14 = a2;
  v11 = &v14;
  v12 = sub_21CAE6678;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8060, &qword_21CBC79C8);
  sub_21CAE6730();
  sub_21CB83F34();

  return result;
}

uint64_t sub_21CAE1924(uint64_t a1)
{
  v23 = a1;
  v26 = sub_21CB853D4();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB85404();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = sub_21CB85424();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  sub_21C8582C0();
  v24 = sub_21CB85CF4();
  sub_21CB85414();
  sub_21CB85434();
  v25 = *(v10 + 8);
  v25(v12, v9);
  sub_21CAE5B5C(v23, &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = swift_allocObject();
  sub_21CAE6610(&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for _PMRecentlyDeletedAccountsView);
  aBlock[4] = sub_21CAE6420;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21C6ECBD4;
  aBlock[3] = &block_descriptor_38;
  v18 = _Block_copy(aBlock);

  sub_21CB853E4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_21C7065C0(&qword_27CDEAF48, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE80, &qword_21CBA37F0);
  sub_21C6EADEC(&qword_27CDEAF50, &unk_27CDEBE80, &qword_21CBA37F0, MEMORY[0x277D83970]);
  v19 = v26;
  sub_21CB85F14();
  v20 = v24;
  MEMORY[0x21CF157D0](v15, v5, v2, v18);
  _Block_release(v18);

  (*(v29 + 8))(v2, v19);
  (*(v27 + 8))(v5, v28);
  return (v25)(v15, v9);
}

uint64_t sub_21CAE1E08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21CAE5B5C(a1, a3, type metadata accessor for PMAccount);
  KeyPath = swift_getKeyPath(byte_21CBC7868);
  v6 = *(a2 + 32);
  v7 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FF8, &unk_21CBC7858) + 36));
  *v7 = KeyPath;
  v7[1] = v6 | 0x4000000000000000;
}

double sub_21CAE1E9C@<D0>(uint64_t a2@<X8>)
{
  v3 = sub_21CB81024();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath(a0_55, v5);
  swift_getKeyPath(byte_21CBC79A0);
  sub_21CB81DB4();

  v8 = v31;

  v9 = HIBYTE(*(&v8 + 1)) & 0xFLL;
  if ((*(&v8 + 1) & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    sub_21CB81014();
    v10 = sub_21CB81004();
    v12 = v11;
    (*(v4 + 8))(v7, v3);
    *&v31 = v10;
    *(&v31 + 1) = v12;
    sub_21C71F3FC();
    v26 = sub_21CB84054();
    v27 = v14;
    v28 = v13 & 1;
    v29 = v15;
    v30 = 1;
  }

  else
  {
    sub_21CB81014();
    v16 = sub_21CB81004();
    v18 = v17;
    (*(v4 + 8))(v7, v3);
    *&v31 = v16;
    *(&v31 + 1) = v18;
    sub_21C71F3FC();
    v26 = sub_21CB84054();
    v27 = v19;
    v28 = v20 & 1;
    v29 = v21;
    v30 = 0;
  }

  sub_21CB83494();
  result = *&v31;
  v23 = v32;
  v24 = v33;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_21CAE20F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v49 = v6;
  v50 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PMAccount(0);
  v11 = v10 - 8;
  v45 = *(v10 - 8);
  v12 = *(v45 + 64);
  MEMORY[0x28223BE20](v10);
  v47 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for PMRecentlyDeletedAccountRow(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v15;
  sub_21CAE5B5C(a1, v15, type metadata accessor for PMAccount);
  v51 = a2;
  swift_getKeyPath(a0_55);
  swift_getKeyPath(byte_21CBC79A0);
  sub_21CB81DB4();

  v43 = v54;
  v44 = v53;
  v19 = a1;
  sub_21CAE5B5C(a1 + *(v11 + 32), v9, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAE5D7C(v9, type metadata accessor for PMAccount.Storage);
    v42 = 0;
  }

  else
  {
    v20 = *v9;
    v21 = [*v9 canUserEditSavedAccount];

    v42 = v21 ^ 1;
  }

  v22 = v51;
  v23 = sub_21CAE25F4(a1);
  v40 = v24;
  v41 = v23;
  v26 = v25;
  v27 = v50;
  sub_21CAE5B5C(v22, v50, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v28 = v47;
  sub_21CAE5B5C(v19, v47, type metadata accessor for PMAccount);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = (v49 + *(v45 + 80) + v29) & ~*(v45 + 80);
  v31 = swift_allocObject();
  sub_21CAE6610(v27, v31 + v29, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v28, v31 + v30, type metadata accessor for PMAccount);
  v32 = sub_21CAE6610(v46, v18, type metadata accessor for PMAccount);
  v33 = &v18[v16[5]];
  v34 = v43;
  *v33 = v44;
  *(v33 + 1) = v34;
  v18[v16[6]] = v42;
  v35 = &v18[v16[7]];
  v36 = v40;
  *v35 = v41;
  *(v35 + 1) = v36;
  v35[16] = v26 & 1;
  v37 = &v18[v16[8]];
  *v37 = sub_21CAE68F0;
  v37[1] = v31;
  MEMORY[0x28223BE20](v32);
  *(&v39 - 2) = v22;
  *(&v39 - 1) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8070, &qword_21CBC79D0);
  sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow, &unk_21CBC6D2C);
  sub_21CAE6840();
  sub_21CB84154();
  return sub_21CAE5D7C(v18, type metadata accessor for PMRecentlyDeletedAccountRow);
}

uint64_t sub_21CAE25F4(uint64_t a1)
{
  v2 = v1;
  v22 = a1;
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE5B5C(v2, v11, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v21 = type metadata accessor for PMAccount;
  sub_21CAE5B5C(a1, v7, type metadata accessor for PMAccount);
  sub_21CB858B4();
  v12 = sub_21CB858A4();
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = (v10 + *(v5 + 80) + v13) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D85700];
  *(v15 + 16) = v12;
  *(v15 + 24) = v16;
  sub_21CAE6610(v11, v15 + v13, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v7, v15 + v14, type metadata accessor for PMAccount);
  sub_21CAE5B5C(v24, v11, v23);
  sub_21CAE5B5C(v22, v7, v21);
  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = MEMORY[0x277D85700];
  sub_21CAE6610(v11, v18 + v13, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21CAE6610(v7, v18 + v14, type metadata accessor for PMAccount);
  sub_21CB84F64();
  return v25;
}

uint64_t sub_21CAE28C0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - v7;
  sub_21CAE5B5C(a2, &v11 - v7, type metadata accessor for PMAccount);
  v9 = type metadata accessor for PMAccount(0);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  swift_getKeyPath(aH_106);
  swift_getKeyPath(byte_21CBC7A20);
  sub_21C6EDBAC(v8, v5, &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAE2A3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8090, &unk_21CBC79D8);
  v161 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v154 = v125 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B8, &qword_21CBA3EB0);
  MEMORY[0x28223BE20](v6 - 8);
  v153 = v125 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v152 = v125 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80A0, &qword_21CBC79F8);
  MEMORY[0x28223BE20](v148);
  v11 = (v125 - v10);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80A8, &qword_21CBC7A00);
  MEMORY[0x28223BE20](v149);
  v139 = v125 - v12;
  v138 = sub_21CB84FB4();
  v142 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v137 = v125 - v15;
  v16 = type metadata accessor for PMAccount(0);
  v17 = v16 - 8;
  v146 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v163 = v18;
  v160 = v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v145 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v159 = v20;
  v162 = v125 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21CB81024();
  v158 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v157 = v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v155 = v125 - v24;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v150 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v141 = v125 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v140 = v125 - v27;
  MEMORY[0x28223BE20](v28);
  v136 = v125 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = v125 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80B0, &qword_21CBC7A08);
  MEMORY[0x28223BE20](v33 - 8);
  v151 = v125 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v168 = v125 - v36;
  v37 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v37);
  v147 = (v125 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v39);
  v41 = (v125 - v40);
  MEMORY[0x28223BE20](v42);
  v44 = (v125 - v43);
  v45 = *(v17 + 32);
  v167 = a1;
  v165 = v45;
  sub_21CAE5B5C(a1 + v45, v125 - v43, type metadata accessor for PMAccount.Storage);
  v166 = v37;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAE5D7C(v44, type metadata accessor for PMAccount.Storage);
    goto LABEL_4;
  }

  v46 = *v44;
  v47 = [*v44 canUserEditSavedAccount];

  if (v47)
  {
LABEL_4:
    v48 = v167;
    v49 = sub_21CAEFDA0(v167);
    v144 = a2;
    v143 = v4;
    v134 = v21;
    if (v49)
    {
      sub_21CAE5B5C(v48 + v165, v41, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21CAE5D7C(v41, type metadata accessor for PMAccount.Storage);
      }

      else
      {
        v51 = *v41;
        v52 = [v51 isCurrentUserOriginalContributor];

        if (v52)
        {
          v53 = v155;
          sub_21CB81014();
          v54 = v157;
          sub_21CB81014();
          v55 = sub_21CB80FF4();
          v57 = v56;
          v58 = *(v158 + 8);
          v131 = v158 + 8;
          v132 = v58;
          v58(v54, v21);
          v58(v53, v21);
          v169 = v55;
          v170 = v57;
          v133 = type metadata accessor for _PMRecentlyDeletedAccountsView;
          v59 = v162;
          sub_21CAE5B5C(v164, v162, type metadata accessor for _PMRecentlyDeletedAccountsView);
          v130 = type metadata accessor for PMAccount;
          v60 = v160;
          sub_21CAE5B5C(v48, v160, type metadata accessor for PMAccount);
          v145 = *(v145 + 80);
          v61 = (v145 + 16) & ~v145;
          v146 = *(v146 + 80);
          v128 = v61;
          v62 = (v159 + v146 + v61) & ~v146;
          v129 = v145 | v146;
          v63 = swift_allocObject();
          v127 = type metadata accessor for _PMRecentlyDeletedAccountsView;
          sub_21CAE6610(v59, v63 + v61, type metadata accessor for _PMRecentlyDeletedAccountsView);
          v126 = type metadata accessor for PMAccount;
          sub_21CAE6610(v60, v63 + v62, type metadata accessor for PMAccount);
          v125[1] = sub_21C71F3FC();
          sub_21CB84DE4();
          sub_21CB81014();
          sub_21CB81014();
          v64 = sub_21CB80FF4();
          v66 = v65;
          v67 = v54;
          v68 = v132;
          v132(v67, v21);
          v68(v53, v21);
          v169 = v64;
          v170 = v66;
          v69 = v162;
          sub_21CAE5B5C(v164, v162, v133);
          sub_21CAE5B5C(v167, v60, v130);
          v70 = swift_allocObject();
          sub_21CAE6610(v69, v70 + v128, v127);
          sub_21CAE6610(v60, v70 + v62, v126);
          v71 = v136;
          sub_21CB84DE4();
          v133 = v11;
          v72 = v137;
          sub_21CB84FA4();
          v73 = v150;
          v83 = *(v150 + 16);
          v74 = v156;
          (v83)(v140, v32, v156);
          (v83)(v141, v71, v74);
          v132 = *(v142 + 16);
          v75 = v135;
          v76 = v72;
          v77 = v138;
          (v132)(v135, v76, v138);
          v78 = v139;
          (v83)(v139, v140, v74);
          v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80C8, &qword_21CBC7A18);
          (v83)(v78 + *(v79 + 48), v141, v74);
          (v132)(v78 + *(v79 + 64), v75, v77);
          v84 = *(v142 + 8);
          v142 += 8;
          v80 = v75;
          v81 = v167;
          (v84)(v80, v77);
          v82 = *(v73 + 8);
          v82(v141, v74);
          v82(v140, v74);
          sub_21C6EDBAC(v78, v133, &qword_27CDF80A8, &qword_21CBC7A00);
          swift_storeEnumTagMultiPayload();
          sub_21C6EADEC(&qword_27CDF80B8, &qword_27CDF80A8, &qword_21CBC7A00, MEMORY[0x277CE14C0]);
          sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
          sub_21CB83494();
          sub_21C6EA794(v139, &qword_27CDF80A8, &qword_21CBC7A00);
          (v84)(v137, v138);
          v82(v136, v74);
          v82(v32, v74);
          LODWORD(v83) = v146;
          LODWORD(v84) = v145;
          goto LABEL_11;
        }
      }
    }

    v85 = v155;
    sub_21CB81014();
    v86 = v157;
    sub_21CB81014();
    v87 = sub_21CB80FF4();
    v89 = v88;
    v81 = v48;
    v90 = *(v158 + 8);
    v90(v86, v21);
    v90(v85, v21);
    v169 = v87;
    v170 = v89;
    v91 = v32;
    v92 = v162;
    sub_21CAE5B5C(v164, v162, type metadata accessor for _PMRecentlyDeletedAccountsView);
    v93 = v160;
    sub_21CAE5B5C(v48, v160, type metadata accessor for PMAccount);
    v84 = *(v145 + 80);
    v94 = (v84 + 16) & ~v84;
    v83 = *(v146 + 80);
    v95 = (v159 + v83 + v94) & ~v83;
    v96 = swift_allocObject();
    v97 = v92;
    v32 = v91;
    sub_21CAE6610(v97, v96 + v94, type metadata accessor for _PMRecentlyDeletedAccountsView);
    sub_21CAE6610(v93, v96 + v95, type metadata accessor for PMAccount);
    sub_21C71F3FC();
    sub_21CB84DE4();
    v73 = v150;
    v74 = v156;
    (*(v150 + 16))(v11, v91, v156);
    swift_storeEnumTagMultiPayload();
    sub_21C6EADEC(&qword_27CDF80B8, &qword_27CDF80A8, &qword_21CBC7A00, MEMORY[0x277CE14C0]);
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    (*(v73 + 8))(v91, v74);
LABEL_11:
    v98 = v147;
    sub_21CAE5B5C(v81 + v165, v147, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v4 = v143;
    if (EnumCaseMultiPayload == 1)
    {
      sub_21CAE5D7C(v98, type metadata accessor for PMAccount.Storage);
    }

    else
    {
      v166 = v32;
      v100 = *v98;
      v101 = [v100 isCurrentUserOriginalContributor];

      if (v101)
      {
        v102 = v155;
        sub_21CB81014();
        v103 = v157;
        sub_21CB81014();
        v104 = sub_21CB80FF4();
        v106 = v105;
        v107 = *(v158 + 8);
        v108 = v103;
        v109 = v134;
        v107(v108, v134);
        v107(v102, v109);
        v169 = v104;
        v170 = v106;
        v110 = v162;
        sub_21CAE5B5C(v164, v162, type metadata accessor for _PMRecentlyDeletedAccountsView);
        v111 = v160;
        sub_21CAE5B5C(v167, v160, type metadata accessor for PMAccount);
        v112 = (v84 + 16) & ~v84;
        v113 = (v159 + v83 + v112) & ~v83;
        v114 = swift_allocObject();
        sub_21CAE6610(v110, v114 + v112, type metadata accessor for _PMRecentlyDeletedAccountsView);
        v115 = v111;
        v74 = v156;
        sub_21CAE6610(v115, v114 + v113, type metadata accessor for PMAccount);
        sub_21C71F3FC();
        v116 = v166;
        sub_21CB84DE4();
        v117 = v152;
        (*(v73 + 32))(v152, v116, v74);
        v118 = 0;
LABEL_16:
        (*(v73 + 56))(v117, v118, 1, v74);
        v119 = v168;
        v120 = v151;
        sub_21C6EDBAC(v168, v151, &qword_27CDF80B0, &qword_21CBC7A08);
        v121 = v153;
        sub_21C6EDBAC(v117, v153, &qword_27CDEC2B8, &qword_21CBA3EB0);
        v122 = v154;
        sub_21C6EDBAC(v120, v154, &qword_27CDF80B0, &qword_21CBC7A08);
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF80C0, &qword_21CBC7A10);
        sub_21C6EDBAC(v121, v122 + *(v123 + 48), &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v117, &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v119, &qword_27CDF80B0, &qword_21CBC7A08);
        sub_21C6EA794(v121, &qword_27CDEC2B8, &qword_21CBA3EB0);
        sub_21C6EA794(v120, &qword_27CDF80B0, &qword_21CBC7A08);
        a2 = v144;
        sub_21C716934(v122, v144, &qword_27CDF8090, &unk_21CBC79D8);
        v50 = 0;
        return (*(v161 + 56))(a2, v50, 1, v4);
      }
    }

    v118 = 1;
    v117 = v152;
    goto LABEL_16;
  }

  v50 = 1;
  return (*(v161 + 56))(a2, v50, 1, v4);
}

uint64_t sub_21CAE3DE8(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v5 + v4, type metadata accessor for PMAccount);
  swift_getKeyPath(aP_29);
  swift_getKeyPath(aH_105);

  return sub_21CB81DC4();
}

double sub_21CAE3F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v8 + v7, type metadata accessor for PMAccount);
  v9 = *(v5 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v10 = qword_27CDEA4C0;

  if (v10 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v9, v12);

  sub_21C833194(v8, a3, v5);

  return result;
}

double sub_21CAE40A0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC2B0, &unk_21CBA0D70);
  v3 = *(type metadata accessor for PMAccount(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21CBA0690;
  sub_21CAE5B5C(a2, v5 + v4, type metadata accessor for PMAccount);
  v6 = sub_21C87E898(v5);
  v8 = v7;
  v10 = v9;
  swift_getKeyPath(asc_21CBC7620);
  swift_getKeyPath(byte_21CBC7750);
  v11 = sub_21CB81DA4();
  v13 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v13;
  *v13 = 0x8000000000000000;
  sub_21C8D4880(v6, v8, v10, 0, isUniquelyReferenced_nonNull_native);
  *v13 = v16;
  v11(v17, 0);

  return result;
}

uint64_t sub_21CAE424C@<X0>(uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  swift_getKeyPath(byte_21CBC7A40);
  swift_getKeyPath(asc_21CBC7A68);
  sub_21CB81DB4();

  LOBYTE(a2) = sub_21C8FFAE0(*a2, a2[1], v6);

  *a3 = a2 & 1;
  return result;
}

uint64_t sub_21CAE42F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v37 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v36 = &v35 - v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FB8, &qword_21CBC7800);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - v6;
  v7 = sub_21CB81024();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FC0, &unk_21CBC7808);
  MEMORY[0x28223BE20](v39);
  v15 = &v35 - v14;
  v16 = a1;
  v17 = sub_21CAEA250();
  LOBYTE(a1) = sub_21CAEACD8(v17);

  sub_21CB81014();
  v18 = (v8 + 8);
  sub_21CB81014();
  if (a1)
  {
    v19 = sub_21CB80FF4();
    v21 = v20;
    v22 = *v18;
    (*v18)(v10, v7);
    v23 = (v22)(v13, v7);
    v43 = v19;
    v44 = v21;
    MEMORY[0x28223BE20](v23);
    *(&v35 - 2) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1748, &qword_21CBBDF70);
    sub_21C6EADEC(&qword_27CDF1750, &qword_27CDF1748, &qword_21CBBDF70, MEMORY[0x277CE14C0]);
    sub_21C71F3FC();
    sub_21CB83F64();
    v24 = v38;
    *&v15[*(v39 + 36)] = 257;
    sub_21C6EDBAC(v15, v24, &qword_27CDF7FC0, &unk_21CBC7808);
    swift_storeEnumTagMultiPayload();
    sub_21CAE5DF4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    return sub_21C6EA794(v15, &qword_27CDF7FC0, &unk_21CBC7808);
  }

  else
  {
    v26 = sub_21CB80FF4();
    v28 = v27;
    v29 = *v18;
    (*v18)(v10, v7);
    v29(v13, v7);
    v43 = v26;
    v44 = v28;
    sub_21CAE5B5C(v16, &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRecentlyDeletedAccountsView);
    v30 = (*(v35 + 80) + 16) & ~*(v35 + 80);
    v31 = swift_allocObject();
    sub_21CAE6610(&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v31 + v30, type metadata accessor for _PMRecentlyDeletedAccountsView);
    sub_21C71F3FC();
    v32 = v36;
    sub_21CB84DE4();
    v33 = v37;
    v34 = v41;
    (*(v37 + 16))(v38, v32, v41);
    swift_storeEnumTagMultiPayload();
    sub_21CAE5DF4();
    sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
    sub_21CB83494();
    return (*(v33 + 8))(v32, v34);
  }
}

uint64_t sub_21CAE4938@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a1;
  v50 = a2;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v46 = *(v2 - 8);
  v3 = *(v46 + 8);
  MEMORY[0x28223BE20](v2 - 8);
  v43[1] = v3;
  v51 = v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21CB81024();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v49 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v48 = v43 - v15;
  MEMORY[0x28223BE20](v16);
  v47 = v43 - v17;
  MEMORY[0x28223BE20](v18);
  v52 = v43 - v19;
  sub_21CB81014();
  sub_21CB81014();
  v20 = sub_21CB80FF4();
  v22 = v21;
  v23 = *(v5 + 8);
  v44 = v4;
  v23(v7, v4);
  v23(v10, v4);
  v54 = v20;
  v55 = v22;
  v45 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  v24 = v51;
  sub_21CAE5B5C(v53, v51, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v25 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v26 = swift_allocObject();
  v46 = type metadata accessor for _PMRecentlyDeletedAccountsView;
  sub_21CAE6610(v24, v26 + v25, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v43[0] = sub_21C71F3FC();
  sub_21CB84DE4();
  sub_21CB81014();
  sub_21CB81014();
  v27 = sub_21CB80FF4();
  v29 = v28;
  v30 = v7;
  v31 = v44;
  v23(v30, v44);
  v23(v10, v31);
  v54 = v27;
  v55 = v29;
  v32 = v51;
  sub_21CAE5B5C(v53, v51, v45);
  v33 = swift_allocObject();
  sub_21CAE6610(v32, v33 + v25, v46);
  v34 = v47;
  sub_21CB84DE4();
  v35 = *(v12 + 16);
  v36 = v48;
  v37 = v52;
  v35(v48, v52, v11);
  v38 = v49;
  v35(v49, v34, v11);
  v39 = v50;
  v35(v50, v36, v11);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v35(&v39[*(v40 + 48)], v38, v11);
  v41 = *(v12 + 8);
  v41(v34, v11);
  v41(v37, v11);
  v41(v38, v11);
  return (v41)(v36, v11);
}

uint64_t sub_21CAE4EAC(uint64_t a1)
{
  sub_21CAEA250();
  swift_getKeyPath(aP_29);
  swift_getKeyPath(aH_105);

  return sub_21CB81DC4();
}

double sub_21CAE4F24(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = sub_21CAEA250();
  v5 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v8);

  sub_21C833194(v4, a2, v3);

  return result;
}

uint64_t sub_21CAE5018@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = sub_21CB81024();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  sub_21CB81014();
  sub_21CB81014();
  v16 = sub_21CB80FF4();
  v18 = v17;
  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  v20 = v15;
  v40 = v16;
  v41 = v18;
  sub_21CB81ED4();
  v21 = sub_21CB81F14();
  v22 = 1;
  (*(*(v21 - 8) + 56))(v5, 0, 1, v21);
  v23 = v34;
  sub_21CAE5B5C(v36, v34, type metadata accessor for _PMRecentlyDeletedAccountsView);
  v24 = (*(v35 + 80) + 16) & ~*(v35 + 80);
  v25 = swift_allocObject();
  sub_21CAE6610(v23, v25 + v24, type metadata accessor for _PMRecentlyDeletedAccountsView);
  sub_21C71F3FC();
  sub_21CB84DC4();
  v26 = *(sub_21CAEA250() + 16);

  if (v26)
  {
    v27 = sub_21CAEA250();
    v28 = sub_21CAEF570(v27);

    v22 = !v28;
  }

  KeyPath = swift_getKeyPath(byte_21CBC77C0);
  v30 = swift_allocObject();
  *(v30 + 16) = v22 & 1;
  v31 = v39;
  (*(v37 + 32))(v39, v20, v38);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v33 = (v31 + *(result + 36));
  *v33 = KeyPath;
  v33[1] = sub_21C87E800;
  v33[2] = v30;
  return result;
}

double sub_21CAE5468(uint64_t a1)
{
  v1 = sub_21CAEA250();
  v2 = sub_21C87E898(v1);
  v4 = v3;
  v6 = v5;
  swift_getKeyPath(asc_21CBC7620);
  swift_getKeyPath(byte_21CBC7750);
  v7 = sub_21CB81DA4();
  v9 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v9;
  *v9 = 0x8000000000000000;
  sub_21C8D4880(v2, v4, v6, 1, isUniquelyReferenced_nonNull_native);
  *v9 = v12;
  v7(v13, 0);

  return result;
}

uint64_t sub_21CAE5564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FA8, &unk_21CBC77B0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  sub_21CAE5018(&v25 - v15);
  sub_21CAE42F4(a1, v10);
  v17 = *(sub_21CAEA250() + 16);

  v18 = v17 == 0;
  KeyPath = swift_getKeyPath(byte_21CBC77C0);
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = &v10[*(v5 + 44)];
  *v21 = KeyPath;
  v21[1] = sub_21C735744;
  v21[2] = v20;
  sub_21C6EDBAC(v16, v13, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EDBAC(v10, v7, &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EDBAC(v13, a2, &qword_27CDEDA98, &unk_21CBABCB0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7FB0, &unk_21CBC77F0);
  v23 = a2 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_21C6EDBAC(v7, a2 + *(v22 + 64), &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EA794(v10, &qword_27CDF7FA8, &unk_21CBC77B0);
  sub_21C6EA794(v16, &qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C6EA794(v7, &qword_27CDF7FA8, &unk_21CBC77B0);
  return sub_21C6EA794(v13, &qword_27CDEDA98, &unk_21CBABCB0);
}

void sub_21CAE5814(uint64_t a1)
{
  sub_21CAE58F8(319);
  if (v1 <= 0x3F)
  {
    sub_21C72079C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PMRecentlyDeletedAccountsSource(319);
      if (v3 <= 0x3F)
      {
        sub_21C72044C(319);
        if (v4 <= 0x3F)
        {
          sub_21C7205C4();
          if (v5 <= 0x3F)
          {
            sub_21C70640C(319);
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

void sub_21CAE58F8(uint64_t a1)
{
  if (!qword_27CDF7EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7EF0, &qword_21CBC7530);
    sub_21CAE5968();
    v1 = sub_21CB81FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF7EE8);
    }
  }
}

unint64_t sub_21CAE5968()
{
  result = qword_27CDF7EF8;
  if (!qword_27CDF7EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7EF0, &qword_21CBC7530);
    sub_21CADF2A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7EF8);
  }

  return result;
}

unint64_t sub_21CAE5A0C()
{
  result = qword_27CDF7F00;
  if (!qword_27CDF7F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7F00);
  }

  return result;
}

unint64_t sub_21CAE5A68()
{
  result = qword_27CDF7F30;
  if (!qword_27CDF7F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F38, &qword_21CBC7610);
    sub_21C6EADEC(&qword_27CDF7F40, &qword_27CDF7F38, &qword_21CBC7610, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7F30);
  }

  return result;
}

uint64_t sub_21CAE5B5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21CAE5BC4(_BYTE *a1)
{
  type metadata accessor for _PMRecentlyDeletedAccountsView(0);

  sub_21CAE066C(a1);
}

uint64_t sub_21CAE5C34(uint64_t a1)
{
  v4 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_21C702EFC;

  return sub_21CAE0764(a1, v1 + v5);
}

double sub_21CAE5D0C(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21CAE086C(a1, v4);
}

uint64_t sub_21CAE5D7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CAE5DF4()
{
  result = qword_27CDF7FC8;
  if (!qword_27CDF7FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FC0, &unk_21CBC7808);
    sub_21C6EADEC(&qword_27CDF1740, &qword_27CDF1738, &unk_21CBB1D20, MEMORY[0x277CDE5B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF7FC8);
  }

  return result;
}

uint64_t sub_21CAE5F48(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_21CAE5FD4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8098, &unk_21CBC79E8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  type metadata accessor for PMRecentlyDeletedAccountRow(255);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
  sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow, &unk_21CBC6D2C);
  sub_21CAE6840();
  swift_getOpaqueTypeConformance2();
  sub_21C7065C0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

unint64_t sub_21CAE61EC()
{
  result = qword_27CDF8000;
  if (!qword_27CDF8000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FD8, &qword_21CBC7820);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FD0, &qword_21CBC7818);
    sub_21CB829D4();
    sub_21C6EADEC(&qword_27CDF7FF0, &qword_27CDF7FD0, &qword_21CBC7818, MEMORY[0x277CDE580]);
    sub_21C7065C0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8000);
  }

  return result;
}

unint64_t sub_21CAE6338()
{
  result = qword_27CDF8008;
  if (!qword_27CDF8008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7FF8, &unk_21CBC7858);
    sub_21C7065C0(&qword_27CDEB1D8, type metadata accessor for PMAccountDetailsView, &unk_21CBA1F18);
    sub_21C6EADEC(&qword_27CDF6C48, &qword_27CDF6C50, &unk_21CBC2A70, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8008);
  }

  return result;
}

uint64_t sub_21CAE6438(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21CAE14D4(a1, a2, v6);
}

unint64_t sub_21CAE64C0()
{
  result = qword_27CDF8038;
  if (!qword_27CDF8038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8030, &unk_21CBC7928);
    sub_21C87DED8();
    sub_21C6EADEC(&qword_27CDF8040, &qword_27CDF8048, &qword_21CBC7938, MEMORY[0x277CDE5A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8038);
  }

  return result;
}

unint64_t sub_21CAE6584()
{
  result = qword_27CDF8050;
  if (!qword_27CDF8050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8018, &qword_21CBC78A0);
    sub_21CAE64C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8050);
  }

  return result;
}

uint64_t sub_21CAE6610(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAE6690(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

unint64_t sub_21CAE6730()
{
  result = qword_27CDF8068;
  if (!qword_27CDF8068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8060, &qword_21CBC79C8);
    type metadata accessor for PMRecentlyDeletedAccountRow(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
    sub_21C7065C0(&qword_27CDF8078, type metadata accessor for PMRecentlyDeletedAccountRow, &unk_21CBC6D2C);
    sub_21CAE6840();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8068);
  }

  return result;
}

unint64_t sub_21CAE6840()
{
  result = qword_27CDF8080;
  if (!qword_27CDF8080)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8070, &qword_21CBC79D0);
    sub_21C6EADEC(&qword_27CDF8088, &qword_27CDF8090, &unk_21CBC79D8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8080);
  }

  return result;
}

uint64_t objectdestroy_126Tm_0()
{
  v1 = v0;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v6 = type metadata accessor for PMAccount(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = v4 + v5 + v7;
  v50 = *(*(v6 - 1) + 64);
  v9 = v1 + v4;

  v10 = v2[6];
  v11 = sub_21CB85C44();
  v47 = *(v11 - 8);
  v52 = *(v47 + 48);
  if (!v52(v9 + v10, 2, v11))
  {
    (*(v47 + 8))(v9 + v10, v11);
  }

  v12 = v8 & ~v7;
  v13 = v9 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() != 1 || (v14 = sub_21CB823B4(), (*(*(v14 - 8) + 8))(v13, v14), *(v13 + *(type metadata accessor for PMDismissAction(0) + 20))))
  {
  }

  sub_21C7025C4(*(v9 + v2[8]), *(v9 + v2[8] + 8));

  v48 = v12;
  v15 = v1 + v12;

  v16 = v1 + v12 + v6[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v51 = v7;
  v49 = v6;
  if (EnumCaseMultiPayload == 1)
  {

    v18 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v19 = *(v18 + 28);
    v20 = sub_21CB85B74();
    (*(*(v20 - 8) + 8))(v16 + v19, v20);

    v21 = *(v18 + 36);
    if (v52(v16 + v21, 1, v11))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v36 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v37 = v36[7];
  v38 = sub_21CB85C04();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(v16 + v37, 1, v38))
  {
    (*(v39 + 8))(v16 + v37, v38);
  }

  v40 = v36[8];
  v41 = sub_21CB85BB4();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v16 + v40, 1, v41))
  {
    (*(v42 + 8))(v16 + v40, v41);
  }

  v21 = v36[9];
  v7 = v51;
  v6 = v49;
  if (!v52(v16 + v21, 1, v11))
  {
LABEL_8:
    (*(v47 + 8))(v16 + v21, v11);
  }

LABEL_9:
  v22 = (v15 + v6[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v3;
    v46 = v1;

    v23 = type metadata accessor for PMAccount.MockData(0);
    v24 = v23[8];
    v25 = sub_21CB80DD4();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v22 + v24, 1, v25))
    {
      (*(v26 + 8))(v22 + v24, v25);
    }

    v28 = v23[12];
    if (!v27(v22 + v28, 1, v25))
    {
      (*(v26 + 8))(v22 + v28, v25);
    }

    v29 = v23[15];
    v30 = sub_21CB85BB4();
    v31 = *(v30 - 8);
    v1 = v46;
    if (!(*(v31 + 48))(v22 + v29, 1, v30))
    {
      (*(v31 + 8))(v22 + v29, v30);
    }

    v32 = v23[16];
    v33 = sub_21CB85C04();
    v34 = *(v33 - 8);
    v3 = v45;
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v23[18];
    v7 = v51;
    v6 = v49;
    if (!v52(v22 + v35, 1, v11))
    {
      (*(v47 + 8))(v22 + v35, v11);
    }
  }

  else
  {
  }

  v43 = v15 + v6[7];
  if (*(v43 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v48 + v50, v3 | v7 | 7);
}

double sub_21CAE70B0(uint64_t a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21CAE3F08(v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)), a1);
}

uint64_t sub_21CAE7190(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(type metadata accessor for PMAccount(0) - 8);
  v6 = v1 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80));

  return a1(v1 + v3, v6);
}

uint64_t sub_21CAE7288@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  v7 = (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));

  return sub_21CAE424C(v7, a1);
}

uint64_t objectdestroy_145Tm()
{
  v1 = v0;
  v2 = type metadata accessor for _PMRecentlyDeletedAccountsView(0);
  v3 = *(*(v2 - 1) + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(*(v2 - 1) + 64);
  v51 = type metadata accessor for PMAccount(0);
  v6 = *(*(v51 - 1) + 80);
  v7 = v4 + v5 + v6;
  v48 = *(*(v51 - 1) + 64);
  swift_unknownObjectRelease();
  v8 = v1 + v4;

  v9 = v2[6];
  v10 = sub_21CB85C44();
  v11 = *(v10 - 8);
  v50 = *(v11 + 48);
  if (!v50(v8 + v9, 2, v10))
  {
    (*(v11 + 8))(v8 + v9, v10);
  }

  v12 = v7 & ~v6;
  v13 = v8 + v2[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDBE8, &qword_21CBAE7D0);
  if (swift_getEnumCaseMultiPayload() != 1 || (v14 = sub_21CB823B4(), (*(*(v14 - 8) + 8))(v13, v14), *(v13 + *(type metadata accessor for PMDismissAction(0) + 20))))
  {
  }

  v49 = v6;
  sub_21C7025C4(*(v8 + v2[8]), *(v8 + v2[8] + 8));

  v47 = v12;
  v15 = v1 + v12;

  v16 = v1 + v12 + v51[5];
  type metadata accessor for PMAccount.UniqueID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v46 = v11;
  if (EnumCaseMultiPayload == 1)
  {

    v18 = type metadata accessor for PMAccount.SIWAUniqueID(0);
    v19 = *(v18 + 28);
    v20 = sub_21CB85B74();
    (*(*(v20 - 8) + 8))(v16 + v19, v20);

    v21 = *(v18 + 36);
    if (v50(v16 + v21, 1, v10))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v36 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  v37 = v36[7];
  v38 = sub_21CB85C04();
  v39 = *(v38 - 8);
  if (!(*(v39 + 48))(v16 + v37, 1, v38))
  {
    (*(v39 + 8))(v16 + v37, v38);
  }

  v40 = v36[8];
  v41 = sub_21CB85BB4();
  v42 = *(v41 - 8);
  if (!(*(v42 + 48))(v16 + v40, 1, v41))
  {
    (*(v42 + 8))(v16 + v40, v41);
  }

  v21 = v36[9];
  v11 = v46;
  if (!v50(v16 + v21, 1, v10))
  {
LABEL_8:
    (*(v11 + 8))(v16 + v21, v10);
  }

LABEL_9:
  v22 = (v15 + v51[6]);
  type metadata accessor for PMAccount.Storage(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v3;

    v23 = type metadata accessor for PMAccount.MockData(0);
    v24 = v23[8];
    v25 = sub_21CB80DD4();
    v26 = *(v25 - 8);
    v27 = *(v26 + 48);
    if (!v27(v22 + v24, 1, v25))
    {
      (*(v26 + 8))(v22 + v24, v25);
    }

    v28 = v23[12];
    if (!v27(v22 + v28, 1, v25))
    {
      (*(v26 + 8))(v22 + v28, v25);
    }

    v29 = v23[15];
    v30 = sub_21CB85BB4();
    v31 = *(v30 - 8);
    if (!(*(v31 + 48))(v22 + v29, 1, v30))
    {
      (*(v31 + 8))(v22 + v29, v30);
    }

    v32 = v23[16];
    v33 = sub_21CB85C04();
    v34 = *(v33 - 8);
    v3 = v45;
    if (!(*(v34 + 48))(v22 + v32, 1, v33))
    {
      (*(v34 + 8))(v22 + v32, v33);
    }

    v35 = v23[18];
    if (!v50(v22 + v35, 1, v10))
    {
      (*(v46 + 8))(v22 + v35, v10);
    }
  }

  else
  {
  }

  v43 = v15 + v51[7];
  if (*(v43 + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v1, v47 + v48, v3 | v49 | 7);
}

uint64_t sub_21CAE7AD0(char *a1)
{
  v3 = *(type metadata accessor for _PMRecentlyDeletedAccountsView(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for PMAccount(0) - 8);
  return sub_21CAEB94C(*a1, (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80))));
}

unint64_t sub_21CAE7BA0()
{
  result = qword_27CDF80D0;
  if (!qword_27CDF80D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F60, &qword_21CBC7708);
    sub_21CAE7C2C();
    sub_21C8C3E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80D0);
  }

  return result;
}

unint64_t sub_21CAE7C2C()
{
  result = qword_27CDF80D8;
  if (!qword_27CDF80D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F58, &qword_21CBC76D8);
    sub_21CAE7CB8();
    sub_21C8C3DF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80D8);
  }

  return result;
}

unint64_t sub_21CAE7CB8()
{
  result = qword_27CDF80E0;
  if (!qword_27CDF80E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F50, &qword_21CBC76A8);
    sub_21CAE7D44();
    sub_21C72EC3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80E0);
  }

  return result;
}

unint64_t sub_21CAE7D44()
{
  result = qword_27CDF80E8;
  if (!qword_27CDF80E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F48, &qword_21CBC7618);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F08, &qword_21CBC75F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F18, &qword_21CBC7600);
    sub_21C6EADEC(&qword_27CDF7F20, &qword_27CDF7F08, &qword_21CBC75F0, MEMORY[0x277CE1198]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF7F28, &qword_21CBC7608);
    sub_21CAE5A68();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21C6EADEC(&qword_27CDED9D0, &qword_27CDED9D8, &unk_21CBB96E0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80E8);
  }

  return result;
}

unint64_t sub_21CAE7F08()
{
  result = qword_27CDF80F0;
  if (!qword_27CDF80F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF80F0);
  }

  return result;
}

unint64_t sub_21CAE7FA0()
{
  result = qword_27CDF8108;
  if (!qword_27CDF8108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8108);
  }

  return result;
}

void sub_21CAE8024(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMAccount(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_21CAEFBD8(a3 + v14 + v15 * v12, v11, type metadata accessor for PMAccount);
      v16 = a1(v11);
      if (v3)
      {
        sub_21CAEFC40(v11, type metadata accessor for PMAccount);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_21CAEFD1C(v11, v23, type metadata accessor for PMAccount);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21C7B0C4C((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_21CAEFD1C(v23, v13 + v14 + v19 * v15, type metadata accessor for PMAccount);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_21CAEFC40(v11, type metadata accessor for PMAccount);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_21CAE82B0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMGeneratedPassword(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_21CAEFBD8(a3 + v14 + v15 * v12, v11, type metadata accessor for PMGeneratedPassword);
      v16 = a1(v11);
      if (v3)
      {
        sub_21CAEFC40(v11, type metadata accessor for PMGeneratedPassword);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_21CAEFD1C(v11, v23, type metadata accessor for PMGeneratedPassword);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0B84(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21C7B0B84((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_21CAEFD1C(v23, v13 + v14 + v19 * v15, type metadata accessor for PMGeneratedPassword);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_21CAEFC40(v11, type metadata accessor for PMGeneratedPassword);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

void sub_21CAE853C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for PMSharingGroup(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v20 - v10;
  v22 = *(a3 + 16);
  if (v22)
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    v20[1] = a2;
    v21 = a3;
    v20[0] = a1;
    while (v12 < *(a3 + 16))
    {
      v14 = (*(v24 + 80) + 32) & ~*(v24 + 80);
      v15 = *(v24 + 72);
      sub_21CAEFBD8(a3 + v14 + v15 * v12, v11, type metadata accessor for PMSharingGroup);
      v16 = a1(v11);
      if (v3)
      {
        sub_21CAEFC40(v11, type metadata accessor for PMSharingGroup);

        goto LABEL_15;
      }

      if (v16)
      {
        sub_21CAEFD1C(v11, v23, type metadata accessor for PMSharingGroup);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1188(0, *(v13 + 16) + 1, 1);
          v13 = v25;
        }

        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_21C7B1188((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        *(v13 + 16) = v19 + 1;
        sub_21CAEFD1C(v23, v13 + v14 + v19 * v15, type metadata accessor for PMSharingGroup);
        a3 = v21;
        a1 = v20[0];
      }

      else
      {
        sub_21CAEFC40(v11, type metadata accessor for PMSharingGroup);
      }

      if (v22 == ++v12)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
  }
}

uint64_t sub_21CAE87DC(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_20);
  swift_getKeyPath(a8_44);

  sub_21CB81DC4();
  swift_getKeyPath(aX_20);
  swift_getKeyPath(a8_44);
  sub_21CB81DB4();
}

uint64_t sub_21CAE88C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath(asc_21CBC7E70);
  swift_getKeyPath(byte_21CBC7E98);

  sub_21CB81DC4();
  swift_getKeyPath(asc_21CBC7E70);
  swift_getKeyPath(byte_21CBC7E98);
  sub_21CB81DB4();

  sub_21CAFB8DC(v2);
}

uint64_t sub_21CAE8994(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21CA4F1E0(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_21CAE8A88(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21CA4F420(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDED260, &qword_21CBA1C60);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8B8C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_21CB85FA4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_21CB85FA4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_21CB64B78();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_21C950314(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8CD4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8E18(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21CA4F7F8(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE8F10(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_21CA4F2EC(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_21CAE902C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v12 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

BOOL sub_21CAE917C()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAEFBD8(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v7, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
      v10 = qword_27CDEA4C0;

      if (v10 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v9, v22);

      swift_getKeyPath(byte_21CBC7FE0);
      swift_getKeyPath(byte_21CBC8008);
    }

    else
    {
      v18 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
      v19 = qword_27CDEA4C0;

      if (v19 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      sub_21C7072A8(v18, v22);

      swift_getKeyPath(aX_20);
      swift_getKeyPath(a8_44);
    }

    sub_21CB81DB4();

    v17 = *(v22 + 16);
    goto LABEL_15;
  }

  (*(v2 + 32))(v4, v7, v1);
  v11 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v12 = qword_27CDEA4C0;

  if (v12 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v11, v22);

  swift_getKeyPath(asc_21CBC7E70);
  swift_getKeyPath(byte_21CBC7E98);
  sub_21CB81DB4();

  v13 = v22;
  if (*(v22 + 16))
  {
    v14 = sub_21CB10A54(v4);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);

      (*(v2 + 8))(v4, v1);
      v17 = *(v16 + 16);
LABEL_15:

      return v17 == 0;
    }
  }

  (*(v2 + 8))(v4, v1);
  return 1;
}

void *sub_21CAE9588()
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v2 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v26 - v4;
  *&v7 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v9 = &v26 - v8;
  swift_getKeyPath(asc_21CBC7F90, v7);
  swift_getKeyPath(asc_21CBC7FB8);
  sub_21CB81DB4();

  v10 = *(v29 + 16);
  if (!v10)
  {

    return MEMORY[0x277D84F90];
  }

  v11 = v29 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
  v12 = *(v0 + 72);
  v26 = v29;
  v27 = v12;
  v13 = MEMORY[0x277D84F90];
  while (1)
  {
    sub_21C6EDBAC(v11, v9, &qword_27CDEAFF0, &qword_21CBA0D60);
    sub_21C6EDBAC(v9, v5, &qword_27CDEAFF0, &qword_21CBA0D60);
    v15 = *(v28 + 48);
    v16 = *&v5[v15];
    sub_21CAEFD1C(v5, v2, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    *&v2[v15] = v16;

    sub_21C6EA794(v2, &qword_27CDEAFF0, &qword_21CBA0D60);
    result = sub_21C6EA794(v9, &qword_27CDEAFF0, &qword_21CBA0D60);
    v17 = *(v16 + 16);
    v18 = v13[2];
    v19 = v18 + v17;
    if (__OFADD__(v18, v17))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v19 <= v13[3] >> 1)
    {
      if (*(v16 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v18 <= v19)
      {
        v21 = v18 + v17;
      }

      else
      {
        v21 = v18;
      }

      v13 = sub_21CA4F1B8(isUniquelyReferenced_nonNull_native, v21, 1, v13);
      if (*(v16 + 16))
      {
LABEL_14:
        v22 = (v13[3] >> 1) - v13[2];
        result = type metadata accessor for PMAccount(0);
        if (v22 < v17)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v17)
        {
          v23 = v13[2];
          v24 = __OFADD__(v23, v17);
          v25 = v23 + v17;
          if (v24)
          {
            goto LABEL_24;
          }

          v13[2] = v25;
        }

        goto LABEL_4;
      }
    }

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_4:
    v11 += v27;
    if (!--v10)
    {

      return v13;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_21CAE98BC()
{
  swift_getKeyPath(aX_78);
  swift_getKeyPath(aX_79);
  sub_21CB81DB4();

  return v1;
}

void sub_21CAE9930(void *a2@<X8>)
{
  swift_getKeyPath(aX_78);
  swift_getKeyPath(aX_79);
  sub_21CB81DB4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21CAE99B0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(aX_78);
  swift_getKeyPath(aX_79);

  sub_21CB81DC4();
  return sub_21CAECED8(0, 0, 0);
}

uint64_t sub_21CAE9A98(uint64_t a1)
{
  swift_getKeyPath(a0_22);
  swift_getKeyPath(byte_21CBC7D48);
  sub_21CB81DB4();

  swift_getKeyPath(a0_22);
  swift_getKeyPath(byte_21CBC7D48);

  sub_21CB81DC4();
  swift_getKeyPath(a0_22);
  swift_getKeyPath(byte_21CBC7D48);
  sub_21CB81DB4();

  v3 = sub_21C7A2154(v6, a1);

  if ((v3 & 1) == 0)
  {
    v5 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
    swift_getKeyPath(a0_22);
    swift_getKeyPath(byte_21CBC7D48);

    sub_21CB81DB4();

    v5(a1);
  }

  return result;
}

uint64_t sub_21CAE9C44()
{
  v0 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v30 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81E8, &qword_21CBC8198);
  MEMORY[0x28223BE20](v33);
  v4 = &v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v32 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81F0, &unk_21CBC81A0);
  MEMORY[0x28223BE20](v8 - 8);
  v31 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v29 - v15;
  swift_getKeyPath(byte_21CBC7F00, v14);
  swift_getKeyPath(byte_21CBC7F28);
  sub_21CB81DB4();

  v17 = *(v34 + 16);

  if (v17 == 1)
  {
    swift_getKeyPath(byte_21CBC7F00);
    swift_getKeyPath(byte_21CBC7F28);
    sub_21CB81DB4();

    if (*(v34 + 16))
    {
      sub_21C6EDBAC(v34 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v7, &qword_27CDEAFF0, &qword_21CBA0D60);

      sub_21CAEFD1C(v7, v16, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      v18 = 0;
    }

    else
    {

      v18 = 1;
    }

    v20 = *(v1 + 56);
    v20(v16, v18, 1, v0);
    v21 = type metadata accessor for PMSharingGroup(0);
    (*(*(v21 - 8) + 56))(v12, 2, 2, v21);
    v20(v12, 0, 1, v0);
    v22 = *(v33 + 48);
    sub_21C6EDBAC(v16, v4, &qword_27CDF81F0, &unk_21CBC81A0);
    sub_21C6EDBAC(v12, &v4[v22], &qword_27CDF81F0, &unk_21CBC81A0);
    v23 = *(v1 + 48);
    if (v23(v4, 1, v0) == 1)
    {
      sub_21C6EA794(v12, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
      if (v23(&v4[v22], 1, v0) == 1)
      {
        sub_21C6EA794(v4, &qword_27CDF81F0, &unk_21CBC81A0);
        v19 = 1;
        return v19 & 1;
      }
    }

    else
    {
      v24 = v31;
      sub_21C6EDBAC(v4, v31, &qword_27CDF81F0, &unk_21CBC81A0);
      if (v23(&v4[v22], 1, v0) != 1)
      {
        v25 = &v4[v22];
        v26 = v24;
        v27 = v30;
        sub_21CAEFD1C(v25, v30, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        v19 = sub_21CAEF10C(v26, v27);
        sub_21CAEFC40(v27, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        sub_21C6EA794(v12, &qword_27CDF81F0, &unk_21CBC81A0);
        sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
        sub_21CAEFC40(v26, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
        sub_21C6EA794(v4, &qword_27CDF81F0, &unk_21CBC81A0);
        return v19 & 1;
      }

      sub_21C6EA794(v12, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21C6EA794(v16, &qword_27CDF81F0, &unk_21CBC81A0);
      sub_21CAEFC40(v24, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    }

    sub_21C6EA794(v4, &qword_27CDF81E8, &qword_21CBC8198);
    v19 = 0;
    return v19 & 1;
  }

  v19 = 0;
  return v19 & 1;
}

uint64_t sub_21CAEA250()
{
  v1 = type metadata accessor for PMAccount(0);
  v29 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v25 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = (&v25 - v4);
  v30 = v0;
  KeyPath = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    sub_21CB86544();
    sub_21C7072A8(KeyPath, v31);

    swift_getKeyPath(byte_21CBC7FE0);
    KeyPath = swift_getKeyPath(byte_21CBC8008);
    sub_21CB81DB4();

    v8 = v31;
    v28 = *(v31 + 16);
    if (!v28)
    {
      break;
    }

    v9 = 0;
    v26 = MEMORY[0x277D84F90];
    v27 = v31;
    while (v9 < *(v8 + 16))
    {
      v10 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v11 = *(v29 + 72);
      sub_21CAEFBD8(v8 + v10 + v11 * v9, v5, type metadata accessor for PMAccount);
      swift_getKeyPath(a0_22);
      KeyPath = swift_getKeyPath(byte_21CBC7D48);
      sub_21CB81DB4();

      v12 = v31;
      if (*(v31 + 16) && (KeyPath = *v5, v13 = v5[1], sub_21CB86484(), sub_21CB854C4(), v14 = sub_21CB864D4(), v15 = -1 << *(v12 + 32), v16 = v14 & ~v15, ((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(v12 + 48) + 16 * v16);
          v19 = *v18 == KeyPath && v18[1] == v13;
          if (v19 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v12 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21CAEFD1C(v5, v25, type metadata accessor for PMAccount);
        v20 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v20 + 16) + 1, 1);
          v20 = v32;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        KeyPath = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          sub_21C7B0C4C((v22 > 1), v23 + 1, 1);
          v20 = v32;
        }

        *(v20 + 16) = KeyPath;
        v26 = v20;
        sub_21CAEFD1C(v25, v20 + v10 + v23 * v11, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_4:

        sub_21CAEFC40(v5, type metadata accessor for PMAccount);
      }

      ++v9;
      v8 = v27;
      if (v9 == v28)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

  v26 = MEMORY[0x277D84F90];
LABEL_23:

  return v26;
}

double sub_21CAEA660(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for PMAccount(0) - 8;
  MEMORY[0x28223BE20](v4);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1;
  v9 = *(a1 + 16);
  if (v9)
  {
    v19 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
    v10 = v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v20 = *(v6 + 72);
    do
    {
      sub_21CAEFBD8(v10, v8, type metadata accessor for PMAccount);
      v11 = *v8;
      v12 = v8[1];
      swift_getKeyPath(a0_22);
      swift_getKeyPath(byte_21CBC7D48);
      sub_21CB81DB4();

      sub_21CB4BAE4(v11, v12);

      v13 = v22;
      swift_getKeyPath(a0_22);
      swift_getKeyPath(byte_21CBC7D48);
      sub_21CB81DB4();

      v14 = v21;
      swift_getKeyPath(a0_22);
      swift_getKeyPath(byte_21CBC7D48);
      v21 = v13;

      sub_21CB81DC4();
      swift_getKeyPath(a0_22);
      swift_getKeyPath(byte_21CBC7D48);
      sub_21CB81DB4();

      LOBYTE(v12) = sub_21C7A2154(v14, v21);

      if ((v12 & 1) == 0)
      {
        v15 = *v19;
        swift_getKeyPath(a0_22);
        swift_getKeyPath(byte_21CBC7D48);

        sub_21CB81DB4();

        v15(v21);
      }

      v5 = sub_21CAEFC40(v8, type metadata accessor for PMAccount);
      v10 += v20;
      --v9;
    }

    while (v9);
  }

  MEMORY[0x28223BE20](v5);
  v16 = v18;
  *(&v18 - 2) = v2;
  *(&v18 - 1) = v16;
  sub_21CB85254();
  sub_21CB82524();

  return result;
}

void *sub_21CAEA9F8(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount(0);
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v24 - v5);
  result = sub_21CAE9588();
  v28 = result[2];
  if (v28)
  {
    v8 = 0;
    v9 = a1 + 56;
    v26 = MEMORY[0x277D84F90];
    v27 = result;
    while (v8 < result[2])
    {
      v10 = (*(v29 + 80) + 32) & ~*(v29 + 80);
      v11 = *(v29 + 72);
      sub_21CAEFBD8(result + v10 + v11 * v8, v6, type metadata accessor for PMAccount);
      if (*(a1 + 16) && (v12 = *v6, v13 = v6[1], sub_21CB86484(), sub_21CB854C4(), v14 = sub_21CB864D4(), v15 = -1 << *(a1 + 32), v16 = v14 & ~v15, ((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0))
      {
        v17 = ~v15;
        while (1)
        {
          v18 = (*(a1 + 48) + 16 * v16);
          v19 = *v18 == v12 && v18[1] == v13;
          if (v19 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v16 = (v16 + 1) & v17;
          if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_21CAEFD1C(v6, v25, type metadata accessor for PMAccount);
        v20 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B0C4C(0, *(v20 + 16) + 1, 1);
          v20 = v30;
        }

        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_21C7B0C4C((v22 > 1), v23 + 1, 1);
          v20 = v30;
        }

        *(v20 + 16) = v23 + 1;
        v26 = v20;
        sub_21CAEFD1C(v25, v20 + v10 + v23 * v11, type metadata accessor for PMAccount);
      }

      else
      {
LABEL_3:
        sub_21CAEFC40(v6, type metadata accessor for PMAccount);
      }

      ++v8;
      result = v27;
      if (v8 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
LABEL_22:

    return v26;
  }

  return result;
}

uint64_t sub_21CAEACD8(uint64_t a1)
{
  v68 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v68);
  v67 = &v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v77);
  v4 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v7 = (&v60 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v64 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v65 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v60 - v16;
  MEMORY[0x28223BE20](v18);
  v73 = &v60 - v19;
  v20 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v20);
  v75 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  v27 = *(a1 + 16);
  if (!v27)
  {
    return 0;
  }

  v62 = v10;
  v66 = v4;
  v60 = v23;
  v28 = *(v23 + 24);
  v71 = v27;
  v72 = v28;
  v29 = *(v24 + 80);
  v76 = *(v24 + 72);
  v74 = a1 + ((v29 + 32) & ~v29);
  v30 = v74;
  v31 = v27;
  v69 = &v60 - v25;
  v70 = v7;
  while (1)
  {
    v78 = v30;
    v79 = v31;
    sub_21CAEFBD8(v30, v26, type metadata accessor for PMAccount);
    sub_21CAEFBD8(&v26[v72], v7, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAEFC40(v26, type metadata accessor for PMAccount);
      v32 = v67;
      sub_21CAEFD1C(v7, v67, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v32 + *(v68 + 72), v17, &unk_27CDF20B0, &unk_21CBA0090);
      v33 = type metadata accessor for PMAccount.MockData;
      v34 = v32;
    }

    else
    {
      v35 = *v7;
      sub_21CB85B94();

      v33 = type metadata accessor for PMAccount;
      v34 = v26;
    }

    sub_21CAEFC40(v34, v33);
    v36 = v17;
    v37 = v73;
    sub_21C716934(v17, v73, &unk_27CDF20B0, &unk_21CBA0090);
    v38 = sub_21CB85C44();
    v39 = *(v38 - 8);
    v40 = *(v39 + 48);
    v41 = v40(v37, 1, v38);
    sub_21C6EA794(v37, &unk_27CDF20B0, &unk_21CBA0090);
    if (v41 != 1)
    {
      break;
    }

    v30 = v78 + v76;
    v31 = v79 - 1;
    v17 = v36;
    v26 = v69;
    v7 = v70;
    if (v79 == 1)
    {
      return 0;
    }
  }

  v42 = *(v60 + 24);
  v78 = (v39 + 56);
  v79 = v42;
  v73 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v43 = v66;
  v44 = v64;
  v45 = v74;
  v46 = v40;
  v61 = v40;
  while (1)
  {
    v47 = v75;
    sub_21CAEFBD8(v45, v75, type metadata accessor for PMAccount);
    sub_21CAEFBD8(v47 + v79, v43, type metadata accessor for PMAccount.Storage);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v74 = v45;
    if (EnumCaseMultiPayload == 1)
    {
      v49 = v67;
      sub_21CAEFD1C(v43, v67, type metadata accessor for PMAccount.MockData);
      sub_21C6EDBAC(v49 + *(v68 + 72), v44, &unk_27CDF20B0, &unk_21CBA0090);
      sub_21CAEFC40(v49, type metadata accessor for PMAccount.MockData);
    }

    else
    {
      v50 = *v66;
      sub_21CB85B94();

      v43 = v66;
    }

    v51 = v65;
    sub_21C716934(v44, v65, &unk_27CDF20B0, &unk_21CBA0090);
    if (v46(v51, 1, v38) != 1)
    {
      break;
    }

    sub_21CAEFC40(v75, type metadata accessor for PMAccount);
    sub_21C6EA794(v51, &unk_27CDF20B0, &unk_21CBA0090);
LABEL_11:
    v45 = v74 + v76;
    if (!--v71)
    {
      return 1;
    }
  }

  sub_21C6EA794(v51, &unk_27CDF20B0, &unk_21CBA0090);
  v52 = *(v63 + v73);
  v53 = qword_27CDEA4C0;

  if (v53 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  v54 = sub_21C7072A8(v52, v80);

  v55 = v62;
  (*v78)(v62, 1, 1, v38);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v56 = *(v54 + 24);
    ObjectType = swift_getObjectType();
    v58 = v75;
    LOBYTE(v56) = (*(v56 + 160))(v75, v55, ObjectType, v56);

    swift_unknownObjectRelease();
    sub_21C6EA794(v55, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CAEFC40(v58, type metadata accessor for PMAccount);
    v43 = v66;
    v44 = v64;
    v46 = v61;
    if ((v56 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_11;
  }

  sub_21C6EA794(v55, &unk_27CDF20B0, &unk_21CBA0090);
  sub_21CAEFC40(v75, type metadata accessor for PMAccount);
  return 0;
}

uint64_t sub_21CAEB488()
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v0 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v2 = v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v29 = v27 - v4;
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = v27 - v7;
  swift_getKeyPath(byte_21CBC7F00, v6);
  swift_getKeyPath(byte_21CBC7F28);
  sub_21CB81DB4();

  v9 = v33;
  v11 = v9[2];
  if (v11)
  {
    v31 = KeyPath;
    v33 = MEMORY[0x277D84F90];
    sub_21C7B1288(0, v11, 0);
    v12 = v33;
    v13 = v9 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v14 = *(v0 + 72);
    v27[1] = v9;
    v28 = v14;
    do
    {
      sub_21C6EDBAC(v13, v8, &qword_27CDEAFF0, &qword_21CBA0D60);
      v15 = v29;
      sub_21C6EDBAC(v8, v29, &qword_27CDEAFF0, &qword_21CBA0D60);
      v16 = *(v30 + 48);
      v17 = *(v15 + v16);
      sub_21CAEFD1C(v15, v2, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      *&v2[v16] = v17;
      swift_getAtKeyPath();
      sub_21C6EA794(v2, &qword_27CDEAFF0, &qword_21CBA0D60);
      sub_21C6EA794(v8, &qword_27CDEAFF0, &qword_21CBA0D60);
      v18 = v32;
      v33 = v12;
      v20 = v12[2];
      v19 = v12[3];
      if (v20 >= v19 >> 1)
      {
        sub_21C7B1288((v19 > 1), v20 + 1, 1);
        v12 = v33;
      }

      v12[2] = v20 + 1;
      v12[v20 + 4] = v18;
      v13 += v28;
      --v11;
    }

    while (v11);

    v22 = v12[2];
    if (v22)
    {
LABEL_7:
      v23 = 0;
      v24 = v12 + 4;
      while (1)
      {
        v25 = *v24++;
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        if (!--v22)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return result;
    }
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
    v22 = *(MEMORY[0x277D84F90] + 16);
    if (v22)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

double sub_21CAEB7A0(uint64_t *a1)
{
  swift_getKeyPath(byte_21CBC8050);
  sub_21CB81DB4();

  return result;
}

uint64_t sub_21CAEB81C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - v7;
  sub_21C6EDBAC(a1, &v10 - v7, &unk_27CDEBE60, &unk_21CB9FF40);
  swift_getKeyPath(byte_21CBC8050);
  sub_21C6EDBAC(v8, v5, &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v8, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAEB94C(char a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (a1)
  {
    swift_getKeyPath(a0_22);
    swift_getKeyPath(byte_21CBC7D48);

    sub_21CB81DB4();

    v6 = v7;
    sub_21CA94078(&v7, v2, v3);

    v4 = v6;
  }

  else
  {
    swift_getKeyPath(a0_22);
    swift_getKeyPath(byte_21CBC7D48);
    sub_21CB81DB4();

    sub_21CB4BAE4(v2, v3);

    v4 = v7;
  }

  return sub_21CAE9A98(v4);
}

uint64_t sub_21CAEBA7C(uint64_t a1)
{
  v82 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x28223BE20](v2);
  v79 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  v77 = *(v4 - 8);
  v78 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v56 - v5;
  v6 = sub_21CB85114();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6);
  v73 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v56 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x28223BE20](v10);
  v69 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  v67 = *(v12 - 8);
  v68 = v12;
  MEMORY[0x28223BE20](v12);
  v66 = &v56 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81C8, &unk_21CBC7DC0);
  v64 = *(v14 - 8);
  v65 = v14;
  MEMORY[0x28223BE20](v14);
  v63 = &v56 - v15;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - v16;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D0, &qword_21CBC7DD0);
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v56 = &v56 - v17;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v57);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v56 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D8, &qword_21CBC7DD8);
  v24 = *(v23 - 8);
  *&v25 = MEMORY[0x28223BE20](v23).n128_u64[0];
  v27 = &v56 - v26;
  *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_subscriptions) = MEMORY[0x277D84FA0];
  v28 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  *(v1 + v28) = swift_getKeyPath(byte_21CBC7DE0, v25);
  v29 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore;
  *(v1 + v29) = swift_getKeyPath(aP_110);
  v30 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__allSections;
  v31 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEFC78, &qword_21CBC7920);
  sub_21CB81D74();
  v32 = *(v24 + 32);
  v32(v1 + v30, v27, v23);
  v33 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__listedSections;
  v83 = v31;
  sub_21CB81D74();
  v32(v1 + v33, v27, v23);
  v34 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountForPresentedDetailsSheet;
  v35 = type metadata accessor for PMAccount(0);
  (*(*(v35 - 8) + 56))(v22, 1, 1, v35);
  sub_21C6EDBAC(v22, v19, &unk_27CDEBE60, &unk_21CB9FF40);
  v36 = v56;
  sub_21CB81D74();
  sub_21C6EA794(v22, &unk_27CDEBE60, &unk_21CB9FF40);
  (*(v58 + 32))(v1 + v34, v36, v59);
  v37 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsThatFailedToRecover;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0138, &qword_21CBC0840);
  v38 = v60;
  sub_21CB81D74();
  (*(v61 + 32))(v1 + v37, v38, v62);
  v39 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__deleteAccountsAlertConfiguration;
  v83 = sub_21CB12414(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81A8, &qword_21CBC7C70);
  v40 = v63;
  sub_21CB81D74();
  (*(v64 + 32))(v1 + v39, v40, v65);
  v41 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__recoverToMyPasswordsAlertConfiguration;
  v83 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  v42 = v66;
  sub_21CB81D74();
  (*(v67 + 32))(v1 + v41, v42, v68);
  v43 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__searchText;
  v83 = 0;
  v84 = 0xE000000000000000;
  v44 = v69;
  sub_21CB81D74();
  (*(v70 + 32))(v1 + v43, v44, v71);
  v45 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__editMode;
  v46 = v74;
  v47 = v75;
  v48 = v72;
  (*(v74 + 104))(v72, *MEMORY[0x277CDF0D8], v75);
  v49 = v46;
  (*(v46 + 16))(v73, v48, v47);
  v50 = v76;
  sub_21CB81D74();
  (*(v49 + 8))(v48, v47);
  (*(v77 + 32))(v1 + v45, v50, v78);
  v51 = (v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_selectionUpdated);
  *v51 = nullsub_1;
  v51[1] = 0;
  v52 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__selectedAccountIDs;
  v83 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  v53 = v79;
  sub_21CB81D74();
  (*(v80 + 32))(v1 + v52, v53, v81);
  v54 = v82;
  sub_21CAEFBD8(v82, v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, type metadata accessor for PMRecentlyDeletedAccountsSource);
  sub_21CAEC454();
  sub_21CAEFC40(v54, type metadata accessor for PMRecentlyDeletedAccountsSource);
  return v1;
}

double sub_21CAEC454()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC60, &unk_21CBA00B0);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v20 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD70, &unk_21CBA5720);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEABF8, &unk_21CBAB590);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v12 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v13 = qword_27CDEA4C0;

  if (v13 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v12, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC08, &qword_27CDEABF8, &unk_21CBAB590);
  sub_21CB81E04();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v14 = *(v1 + v11);

  sub_21CB86544();
  sub_21C7072A8(v14, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD78, &qword_21CBA5730);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDECD80, &qword_27CDECD70, &unk_21CBA5720);
  v15 = v21;
  sub_21CB81E04();

  (*(v20 + 8))(v6, v15);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v16 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore);

  sub_21CB86544();
  sub_21C7073E8(v16, v25);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC68, &qword_21CBBD620);
  v17 = v22;
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21C71B7B0(&qword_27CDEAC70, &qword_27CDEAC60, &unk_21CBA00B0);
  v18 = v24;
  sub_21CB81E04();

  (*(v23 + 8))(v17, v18);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return result;
}

uint64_t sub_21CAECA38(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for PMSharingGroup(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_21CAEFBD8(v2, v9, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v10 = (*(v4 + 48))(v9, 2, v3);
  if (v10)
  {
    return MEMORY[0x21CF15F90](v10 != 1);
  }

  sub_21CAEFD1C(v9, v6, type metadata accessor for PMSharingGroup);
  MEMORY[0x21CF15F90](2);
  sub_21CB85C44();
  sub_21CAEFCA0(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  sub_21CB854C4();
  v11 = *&v6[*(v3 + 24)];
  MEMORY[0x21CF15F90](*(v11 + 16));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 32);
    do
    {
      v15 = v13[2];
      v16 = *v13;
      v27 = v13[1];
      v28 = v15;
      v26 = v16;
      v17 = v13[3];
      v18 = v13[4];
      v19 = v13[6];
      v31 = v13[5];
      v32 = v19;
      v29 = v17;
      v30 = v18;
      if (*(&v16 + 1))
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v26, v25);
        sub_21CB854C4();
        if (*(&v27 + 1))
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_21CB864A4();
        sub_21C7A33F0(&v26, v25);
        if (*(&v27 + 1))
        {
LABEL_9:
          sub_21CB864A4();
          sub_21CB854C4();
          goto LABEL_12;
        }
      }

      sub_21CB864A4();
LABEL_12:
      sub_21CB854C4();
      sub_21CB854C4();
      sub_21CB854C4();
      v20 = v32;
      v21 = BYTE2(v31);
      v22 = BYTE1(v31);
      sub_21CB864A4();
      MEMORY[0x21CF15F90](v22);
      MEMORY[0x21CF15F90](v21);
      if (v20)
      {
        sub_21CB864A4();
        sub_21CB854C4();
        v23 = *(&v32 + 1);
        if (!*(&v32 + 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        sub_21CB864A4();
        v23 = *(&v32 + 1);
        if (!*(&v32 + 1))
        {
LABEL_16:
          sub_21CB864A4();
          goto LABEL_6;
        }
      }

      sub_21CB864A4();
      v14 = v23;
      sub_21CB85DE4();

LABEL_6:
      sub_21C7A344C(&v26);
      v13 += 7;
      --v12;
    }

    while (v12);
  }

  sub_21CB854C4();
  return sub_21CAEFC40(v6, type metadata accessor for PMSharingGroup);
}

uint64_t sub_21CAECE2C()
{
  sub_21CB86484();
  sub_21CAECA38(v1);
  return sub_21CB864D4();
}

uint64_t sub_21CAECE70(uint64_t a1)
{
  sub_21CB86484();
  sub_21CAECA38(v2);
  return sub_21CB864D4();
}

uint64_t sub_21CAECED8(unint64_t a1, char *a2, uint64_t a3)
{
  v4 = v3;
  sub_21CAED650();
  sub_21CAEDA98();
  if (a1)
  {
    v8 = a1;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v13 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v14 = qword_27CDEA4C0;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v13, v29);

    swift_getKeyPath(asc_21CBC7E70);
    swift_getKeyPath(byte_21CBC7E98);
    sub_21CB81DB4();

    v9 = v29;
    if (a3)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v11 = *(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v12 = qword_27CDEA4C0;

  if (v12 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v11, v29);

  swift_getKeyPath(aX_20);
  swift_getKeyPath(a8_44);
  sub_21CB81DB4();

  v8 = v29;
  if (!a2)
  {
    goto LABEL_8;
  }

LABEL_3:

  v9 = a2;
  if (a3)
  {
LABEL_4:

    v10 = a3;
    goto LABEL_14;
  }

LABEL_11:
  v15 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__groupsStore);
  v16 = qword_27CDEA4C0;

  if (v16 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7073E8(v15, v29);

  swift_getKeyPath(byte_21CBC7EB8);
  sub_21CB81DB4();

  v10 = v29;
LABEL_14:

  v17 = sub_21CAEDD80(v8, v9, v10);
  swift_getKeyPath(byte_21CBC7F00);
  swift_getKeyPath(byte_21CBC7F28);
  v30 = v17;

  sub_21CB81DC4();
  swift_getKeyPath(aX_78);
  swift_getKeyPath(aX_79);
  sub_21CB81DB4();

  v18 = (v31 >> 56) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v18 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = *(v4 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v20 = qword_27CDEA4C0;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    v21 = sub_21C7072A8(v19, v30);

    swift_getKeyPath(aX_78);
    swift_getKeyPath(aX_79);
    sub_21CB81DB4();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = *(v21 + 24);
      ObjectType = swift_getObjectType();
      v25 = (*(v23 + 48))(ObjectType, v23);
      swift_unknownObjectRelease();
      Strong = [v25 associatedDomainsManager];
    }

    matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v8, v30, v31, Strong);

    v27 = sub_21CAEF784(v9, v4);

    sub_21CAEDD80(matched, v27, v10);

    swift_getKeyPath(asc_21CBC7F90);
    swift_getKeyPath(asc_21CBC7FB8);
  }

  else
  {

    swift_getKeyPath(byte_21CBC7F00);
    swift_getKeyPath(byte_21CBC7F28);
    sub_21CB81DB4();

    swift_getKeyPath(asc_21CBC7F90);
    swift_getKeyPath(asc_21CBC7FB8);
  }

  return sub_21CB81DC4();
}

void sub_21CAED510(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v4 = qword_27CDEA4C0;

  if (v4 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v3, v5);

  sub_21C8329EC(a2);
}

uint64_t sub_21CAED5D4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath(byte_21CBC8078);
  swift_getKeyPath(aH_107);

  return sub_21CB81DC4();
}

uint64_t sub_21CAED650()
{
  v1 = v0;
  v2 = type metadata accessor for PMAccount(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDEBE60, &unk_21CB9FF40);
  MEMORY[0x28223BE20](v6 - 8);
  v24[0] = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = v24 - v16;
  swift_getKeyPath(byte_21CBC8050);
  sub_21CB81DB4();

  sub_21C6EDBAC(v13, v10, &unk_27CDEBE60, &unk_21CB9FF40);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
    (*(v3 + 56))(v17, 1, 1, v2);
  }

  else
  {
    sub_21CAEFD1C(v10, v5, type metadata accessor for PMAccount);
    v18 = *(v1 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
    v19 = qword_27CDEA4C0;

    if (v19 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    sub_21C7072A8(v18, v25[0]);

    swift_getKeyPath(byte_21CBC7FE0);
    swift_getKeyPath(byte_21CBC8008);
    sub_21CB81DB4();

    v21 = v25[0];
    v22 = v5[1];
    v25[0] = *v5;
    v25[1] = v22;
    MEMORY[0x28223BE20](v20);
    v24[-2] = v25;

    sub_21C968D04(sub_21C7AE738, v21, v17);

    sub_21CAEFC40(v5, type metadata accessor for PMAccount);
    sub_21C6EA794(v13, &unk_27CDEBE60, &unk_21CB9FF40);
  }

  swift_getKeyPath(byte_21CBC8050);
  sub_21C6EDBAC(v17, v24[0], &unk_27CDEBE60, &unk_21CB9FF40);

  sub_21CB81DC4();
  return sub_21C6EA794(v17, &unk_27CDEBE60, &unk_21CB9FF40);
}

uint64_t sub_21CAEDA98()
{
  v1 = type metadata accessor for PMAccount(0);
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x28223BE20](v1 - 8).n128_u64[0];
  v5 = (&v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath(a0_22, v3);
  swift_getKeyPath(byte_21CBC7D48);
  sub_21CB81DB4();

  v6 = v24;
  v7 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState);
  v8 = qword_27CDEA4C0;

  if (v8 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v7, v24);

  swift_getKeyPath(byte_21CBC7FE0);
  swift_getKeyPath(byte_21CBC8008);
  sub_21CB81DB4();

  v9 = v24;
  v10 = *(v24 + 16);
  if (v10)
  {
    v22 = v6;
    v23 = v0;
    v24 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v10, 0);
    v11 = v24;
    v12 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v13 = *(v2 + 72);
    do
    {
      sub_21CAEFBD8(v12, v5, type metadata accessor for PMAccount);
      v14 = *v5;
      v15 = v5[1];

      sub_21CAEFC40(v5, type metadata accessor for PMAccount);
      v24 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_21C7B0C0C((v16 > 1), v17 + 1, 1);
        v11 = v24;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      v12 += v13;
      --v10;
    }

    while (v10);

    v6 = v22;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v19 = sub_21CAEED74(v11, v6);

  return sub_21CAE9A98(v19);
}

char *sub_21CAEDD80(uint64_t a1, char *a2, uint64_t a3)
{
  v85 = a1;
  v86 = a3;
  v92 = a2;
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for PMSharingGroup(0);
  v87 = *(v93 - 8);
  MEMORY[0x28223BE20](v93);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v85 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFF0, &qword_21CBA0D60);
  v14 = *(v13 - 8);
  v97 = v13;
  v98 = v14;
  MEMORY[0x28223BE20](v13);
  v96 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v94 = &v85 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v85 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v85 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v85 - v25;
  v27 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAEFBD8(v3 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, v29, type metadata accessor for PMRecentlyDeletedAccountsSource);
  v30 = v5[6](v29, 2, v4);
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = v86;
      v32 = *(v86 + 16);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE8, &qword_21CBA0D58);
      v33 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v91 = *(v98 + 72);
      v34 = swift_allocObject();
      *(v34 + 16) = xmmword_21CBA0690;
      v95 = v34;
      v90 = v33;
      v35 = v34 + v33;
      v36 = *(v97 + 48);
      v37 = v87;
      v38 = *(v87 + 56);
      if (v32)
      {
        v88 = *(v87 + 56);
        v89 = v87 + 56;
        v38(v35, 2, 2, v93);
        *(v35 + v36) = v85;
        v99 = MEMORY[0x277D84F90];

        sub_21C7B1248(0, v32, 0);
        v39 = v99;
        v40 = v31 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v87 = *(v37 + 72);
        v41 = v92;
        do
        {
          sub_21CAEFBD8(v40, v12, type metadata accessor for PMSharingGroup);
          sub_21CAEFBD8(v12, v26, type metadata accessor for PMSharingGroup);
          (v88)(v26, 0, 2, v93);
          if (*(v41 + 2))
          {
            v42 = sub_21CB10A54(v12);
            v43 = v97;
            if (v44)
            {
              v45 = *(*(v41 + 7) + 8 * v42);
            }

            else
            {
              v45 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v45 = MEMORY[0x277D84F90];
            v43 = v97;
          }

          v46 = *(v43 + 48);
          sub_21CAEFC40(v12, type metadata accessor for PMSharingGroup);
          *&v26[v46] = v45;
          v99 = v39;
          v48 = *(v39 + 16);
          v47 = *(v39 + 24);
          if (v48 >= v47 >> 1)
          {
            sub_21C7B1248((v47 > 1), v48 + 1, 1);
            v39 = v99;
          }

          *(v39 + 16) = v48 + 1;
          sub_21C716934(v26, &v90[v39 + v48 * v91], &qword_27CDEAFF0, &qword_21CBA0D60);
          v40 += v87;
          --v32;
          v41 = v92;
        }

        while (v32);
        v99 = v95;
        sub_21CAE902C(v39, sub_21CA4F7D4, &qword_27CDEAFF0, &qword_21CBA0D60);
        result = v99;
      }

      else
      {
        v38(v35, 1, 2, v93);
        *(v35 + v36) = v85;

        result = v95;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAFE8, &qword_21CBA0D58);
      v68 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_21CBA0690;
      v70 = v69 + v68;
      v71 = *(v97 + 48);
      (*(v87 + 56))(v70, 2, 2, v93);
      *(v70 + v71) = v85;

      result = v69;
    }
  }

  else
  {
    v95 = v9;
    v49 = v5[4](v7, v29, v4);
    MEMORY[0x28223BE20](v49);
    v90 = v7;
    *(&v85 - 2) = v7;
    v50 = v86;

    sub_21CAE853C(sub_21CAEFBB8, (&v85 - 4), v50);
    v52 = v51;
    v53 = *(v51 + 16);
    if (v53)
    {
      v88 = v5;
      v89 = v4;
      v99 = MEMORY[0x277D84F90];
      sub_21C7B1248(0, v53, 0);
      v54 = v99;
      v55 = *(v87 + 80);
      v86 = v52;
      v56 = v52 + ((v55 + 32) & ~v55);
      v91 = *(v87 + 72);
      v57 = (v87 + 56);
      v58 = v92;
      do
      {
        v59 = v95;
        sub_21CAEFBD8(v56, v95, type metadata accessor for PMSharingGroup);
        sub_21CAEFBD8(v59, v23, type metadata accessor for PMSharingGroup);
        (*v57)(v23, 0, 2, v93);
        v60 = v97;
        if (*(v58 + 2) && (v61 = sub_21CB10A54(v59), (v62 & 1) != 0))
        {
          v63 = *(*(v58 + 7) + 8 * v61);
        }

        else
        {
          v63 = MEMORY[0x277D84F90];
        }

        v64 = *(v60 + 48);
        sub_21CAEFC40(v59, type metadata accessor for PMSharingGroup);
        *&v23[v64] = v63;
        v65 = v54;
        v99 = v54;
        v67 = *(v54 + 16);
        v66 = *(v54 + 24);
        if (v67 >= v66 >> 1)
        {
          sub_21C7B1248((v66 > 1), v67 + 1, 1);
          v65 = v99;
        }

        *(v65 + 16) = v67 + 1;
        v54 = v65;
        sub_21C716934(v23, v65 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v67, &qword_27CDEAFF0, &qword_21CBA0D60);
        v56 += v91;
        --v53;
      }

      while (v53);

      v5 = v88;
      v4 = v89;
    }

    else
    {

      v54 = MEMORY[0x277D84F90];
    }

    (v5[1])(v90, v4);
    result = v54;
  }

  v93 = *(result + 2);
  if (v93)
  {
    v73 = 0;
    v74 = MEMORY[0x277D84F90];
    v75 = v97;
    v92 = v20;
    v95 = result;
    while (v73 < *(result + 2))
    {
      v76 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v77 = *(v98 + 72);
      sub_21C6EDBAC(&result[v76 + v77 * v73], v20, &qword_27CDEAFF0, &qword_21CBA0D60);
      v78 = v20;
      v79 = v20;
      v80 = v94;
      sub_21C6EDBAC(v78, v94, &qword_27CDEAFF0, &qword_21CBA0D60);
      v81 = *(*(v80 + *(v75 + 48)) + 16);

      sub_21CAEFC40(v80, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
      if (v81)
      {
        sub_21C716934(v79, v96, &qword_27CDEAFF0, &qword_21CBA0D60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v99 = v74;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1248(0, *(v74 + 16) + 1, 1);
          v74 = v99;
        }

        v84 = *(v74 + 16);
        v83 = *(v74 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_21C7B1248((v83 > 1), v84 + 1, 1);
          v74 = v99;
        }

        *(v74 + 16) = v84 + 1;
        sub_21C716934(v96, v74 + v76 + v84 * v77, &qword_27CDEAFF0, &qword_21CBA0D60);
        v75 = v97;
        v20 = v92;
      }

      else
      {
        sub_21C6EA794(v79, &qword_27CDEAFF0, &qword_21CBA0D60);
        v20 = v79;
      }

      ++v73;
      result = v95;
      if (v93 == v73)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
  }

  else
  {
    v74 = MEMORY[0x277D84F90];
LABEL_40:

    return v74;
  }

  return result;
}

uint64_t sub_21CAEE764()
{
  sub_21CB85C44();
  sub_21CAEFCA0(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_21CB86344();
  }

  return v1 & 1;
}

double sub_21CAEE854(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CAECED8(v2, 0, 0);
  }

  return result;
}

double sub_21CAEE8BC(char **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CAECED8(0, v2, 0);
  }

  return result;
}

double sub_21CAEE924(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CAECED8(0, 0, v2);
  }

  return result;
}

uint64_t sub_21CAEE98C()
{
  sub_21CAEFC40(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel_source, type metadata accessor for PMRecentlyDeletedAccountsSource);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__allSections;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D8, &qword_21CBC7DD8);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__listedSections, v2);
  v4 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountForPresentedDetailsSheet;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81D0, &qword_21CBC7DD0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsThatFailedToRecover;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64B8, &qword_21CBC0C68);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__deleteAccountsAlertConfiguration;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81C8, &unk_21CBC7DC0);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__recoverToMyPasswordsAlertConfiguration;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF64C0, &qword_21CBC0C70);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__searchText;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v14 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__editMode;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD68, &qword_21CBA56A0);
  (*(*(v15 - 8) + 8))(v0 + v14, v15);

  v16 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__selectedAccountIDs;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v17 - 8) + 8))(v0 + v16, v17);
  return v0;
}

uint64_t sub_21CAEECA4()
{
  sub_21CAEE98C();

  return swift_deallocClassInstance();
}

unint64_t *sub_21CAEED74(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_21CAEEF14(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_21CAEFCE8(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x21CF16D90](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_21CAEEF14(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_21CB86484();

          sub_21CB854C4();
          v13 = sub_21CB864D4();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_21CB86344() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_21CAA1B00(v25, a2, v24, a4);
}

uint64_t sub_21CAEF10C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PMSharingGroup(0);
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF81E0, &qword_21CBC8070);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v28 - v12;
  v15 = *(v14 + 56);
  sub_21CAEFBD8(a1, v28 - v12, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  sub_21CAEFBD8(a2, &v13[v15], type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
  v16 = *(v5 + 48);
  v17 = v16(v13, 2, v4);
  if (!v17)
  {
    sub_21CAEFBD8(v13, v10, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    if (v16(&v13[v15], 2, v4))
    {
      sub_21CAEFC40(v10, type metadata accessor for PMSharingGroup);
      goto LABEL_9;
    }

    sub_21CAEFD1C(&v13[v15], v7, type metadata accessor for PMSharingGroup);
    sub_21CB85C44();
    sub_21CAEFCA0(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
    sub_21CB857F4();
    sub_21CB857F4();
    if (v28[2] == v28[0] && v28[3] == v28[1])
    {
    }

    else
    {
      v19 = sub_21CB86344();

      if ((v19 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v20 = v4[5];
    v21 = *&v10[v20];
    v22 = *&v10[v20 + 8];
    v23 = &v7[v20];
    if (v21 == *v23 && v22 == *(v23 + 1) || (sub_21CB86344()) && (sub_21C967680(*&v10[v4[6]], *&v7[v4[6]]))
    {
      if (v24 = v4[7], v25 = *&v10[v24], v26 = *&v10[v24 + 8], v27 = &v7[v24], v25 == *v27) && v26 == *(v27 + 1) || (sub_21CB86344())
      {
        sub_21CAEFC40(v7, type metadata accessor for PMSharingGroup);
        sub_21CAEFC40(v10, type metadata accessor for PMSharingGroup);
        goto LABEL_8;
      }
    }

LABEL_23:
    sub_21CAEFC40(v7, type metadata accessor for PMSharingGroup);
    sub_21CAEFC40(v10, type metadata accessor for PMSharingGroup);
    sub_21CAEFC40(v13, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    return 0;
  }

  if (v17 == 1)
  {
    if (v16(&v13[v15], 2, v4) != 1)
    {
      goto LABEL_9;
    }

LABEL_8:
    sub_21CAEFC40(v13, type metadata accessor for PMRecentlyDeletedAccountsViewModel.Section);
    return 1;
  }

  if (v16(&v13[v15], 2, v4) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_21C6EA794(v13, &qword_27CDF81E0, &qword_21CBC8070);
  return 0;
}

BOOL sub_21CAEF570(uint64_t a1)
{
  v16 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v16);
  v3 = (&v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for PMAccount(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  v9 = a1;
  v10 = *(a1 + 16);
  do
  {
    v11 = v8;
    if (v10 == v8)
    {
      break;
    }

    sub_21CAEFBD8(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, v7, type metadata accessor for PMAccount);
    sub_21CAEFBD8(&v7[*(v4 + 24)], v3, type metadata accessor for PMAccount.Storage);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_21CAEFC40(v3, type metadata accessor for PMAccount.Storage);
      sub_21CAEFC40(v7, type metadata accessor for PMAccount);
      return v10 == v11;
    }

    ++v8;
    v12 = *v3;
    v13 = [*v3 isCurrentUserOriginalContributor];

    sub_21CAEFC40(v7, type metadata accessor for PMAccount);
  }

  while ((v13 & 1) != 0);
  return v10 == v11;
}

uint64_t sub_21CAEF784(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF89C0, &qword_21CBADDB8);
  result = sub_21CB86204();
  v11 = result;
  v12 = 0;
  v59 = a1;
  v15 = *(a1 + 64);
  v14 = a1 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v49 = (v16 + 63) >> 6;
  v50 = a2;
  v52 = v5 + 16;
  v53 = OBJC_IVAR____TtC17PasswordManagerUI34PMRecentlyDeletedAccountsViewModel__accountsState;
  v57 = v5;
  v58 = v4;
  v65 = v5 + 32;
  v51 = result + 64;
  v54 = result;
  v56 = v7;
  if (v18)
  {
    while (1)
    {
      v19 = a2;
      v20 = __clz(__rbit64(v18));
      v60 = (v18 - 1) & v18;
LABEL_10:
      v23 = v20 | (v12 << 6);
      v24 = v59;
      v25 = *(v59 + 48);
      v26 = v57;
      v27 = *(v57 + 16);
      v61 = *(v57 + 72) * v23;
      v28 = v55;
      v27(v55, v25 + v61, v4);
      v29 = *(v24 + 56);
      v62 = v23;
      v30 = *(v29 + 8 * v23);
      v31 = *(v26 + 32);
      v31(v7, v28, v4);
      v32 = v19;
      v33 = v30;
      v34 = *(v32 + v53);
      v35 = qword_27CDEA4C0;

      if (v35 != -1)
      {
        swift_once();
      }

      sub_21CB86544();
      v36 = sub_21C7072A8(v34, v63);

      swift_getKeyPath(aX_78);
      swift_getKeyPath(aX_79);
      sub_21CB81DB4();

      v38 = v63;
      v37 = v64;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v40 = *(v36 + 24);
        ObjectType = swift_getObjectType();
        v42 = (*(v40 + 48))(ObjectType, v40);
        swift_unknownObjectRelease();
        Strong = [v42 associatedDomainsManager];
      }

      matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v33, v38, v37, Strong);

      v44 = v62;
      *(v51 + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v62;
      v11 = v54;
      v7 = v56;
      v4 = v58;
      result = (v31)(*(v54 + 48) + v61, v56, v58);
      *(*(v11 + 56) + 8 * v44) = matched;
      v45 = *(v11 + 16);
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      *(v11 + 16) = v47;
      a2 = v50;
      v18 = v60;
      if (!v60)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v49)
      {
        return v11;
      }

      v22 = *(v14 + 8 * v12);
      ++v21;
      if (v22)
      {
        v19 = a2;
        v20 = __clz(__rbit64(v22));
        v60 = (v22 - 1) & v22;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21CAEFBD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAEFC40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAEFCA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_21CAEFCE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_21CAEEF14(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_21CAEFD1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_21CAEFDA0(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.MockData(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  v14 = type metadata accessor for PMAccount(0);
  sub_21CAEFBD8(a1 + *(v14 + 24), v7, type metadata accessor for PMAccount.Storage);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_21CAEFD1C(v7, v4, type metadata accessor for PMAccount.MockData);
    sub_21C6EDBAC(&v4[*(v2 + 72)], v10, &unk_27CDF20B0, &unk_21CBA0090);
    sub_21CAEFC40(v4, type metadata accessor for PMAccount.MockData);
  }

  else
  {
    v15 = *v7;
    sub_21CB85B94();
  }

  sub_21C716934(v10, v13, &unk_27CDF20B0, &unk_21CBA0090);
  v16 = sub_21CB85C44();
  v17 = (*(*(v16 - 8) + 48))(v13, 1, v16) != 1;
  sub_21C6EA794(v13, &unk_27CDF20B0, &unk_21CBA0090);
  return v17;
}

uint64_t type metadata accessor for PMRecentlyDeletedRow(uint64_t a1)
{
  result = qword_27CDF81F8;
  if (!qword_27CDF81F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAF0088(uint64_t a1)
{
  type metadata accessor for PMRecentlyDeletedAccountsSource(319);
  if (v1 <= 0x3F)
  {
    sub_21C705CFC(319);
    if (v2 <= 0x3F)
    {
      sub_21CAF0124();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CAF0124()
{
  if (!qword_27CDF5208)
  {
    v0 = sub_21CB82074();
    if (!v1)
    {
      atomic_store(v0, &qword_27CDF5208);
    }
  }
}

uint64_t sub_21CAF0190@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v3 = sub_21CB83124();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED670, &qword_21CBA7280);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D00, &qword_21CBC2E40);
  v9 = *(v8 - 8);
  v34 = v8;
  v35 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED680, &unk_21CBA7290);
  sub_21C830C8C();
  sub_21CB84C84();
  KeyPath = swift_getKeyPath(byte_21CBC8218);
  LOBYTE(v39) = 0;
  v12 = sub_21C830DF8();
  v13 = sub_21C830EB0();
  sub_21CB840E4();

  (*(v5 + 8))(v7, v4);
  v14 = sub_21CAF0914();
  sub_21CB83114();
  sub_21CB83104();
  KeyPath = v14;
  sub_21CB830E4();
  sub_21CB83104();
  sub_21CB83144();
  v15 = sub_21CB84034();
  v17 = v16;
  KeyPath = v4;
  v39 = &type metadata for PMAccountsListNavigationCellLabelStyle;
  LOBYTE(v4) = v18 & 1;
  v40 = v12;
  v41 = v13;
  swift_getOpaqueTypeConformance2();
  v19 = v36;
  v20 = v34;
  sub_21CB84774();
  sub_21C74A72C(v15, v17, v4);

  LOBYTE(v15) = sub_21CB83D34();
  sub_21CB81F24();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  (*(v35 + 8))(v11, v20);
  v29 = v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D08, &unk_21CBC8240) + 36);
  *v29 = v15;
  *(v29 + 8) = v22;
  *(v29 + 16) = v24;
  *(v29 + 24) = v26;
  *(v29 + 32) = v28;
  *(v29 + 40) = 0;
  v30 = swift_getKeyPath(byte_21CBC8218);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6D10, &unk_21CBC2EC0);
  v32 = v19 + *(result + 36);
  *v32 = v30;
  *(v32 + 8) = 0;
  return result;
}

uint64_t sub_21CAF05B4@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

double sub_21CAF06E0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21CB82F84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for PMRecentlyDeletedRow(0) + 24);
  v9 = *v8;
  if (*(v8 + 8) != 1)
  {

    sub_21CB85B04();
    v12 = sub_21CB83C94();
    sub_21CB81C14();

    sub_21CB82F74();
    swift_getAtKeyPath();
    sub_21C7025C4(v9, 0);
    (*(v5 + 8))(v7, v4);
    if ((v19 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17[0] = sub_21CB84BB4();
    memset(&v17[1], 0, 32);
    v18 = 1;
    goto LABEL_6;
  }

  if (v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_21CB84BB4();
  v11 = sub_21CB84A84();
  v17[0] = v10;
  v17[1] = v11;
  *&v17[2] = vdupq_n_s64(0x4040000000000000uLL);
  v17[4] = 0x4018000000000000;
  v18 = 0;
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED698, &unk_21CBB8140);
  sub_21C830D18();
  sub_21CB83494();
  result = *&v19;
  v14 = v20;
  v15 = v21;
  v16 = v22;
  *a2 = v19;
  *(a2 + 16) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

uint64_t sub_21CAF0914()
{
  v1 = sub_21CB85C44();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMRecentlyDeletedAccountsSource(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CADDEAC(v0, v7);
  v8 = (*(v2 + 48))(v7, 2, v1);
  if (v8)
  {
    if (v8 == 1)
    {
      type metadata accessor for PMRecentlyDeletedRow(0);
      swift_getKeyPath(asc_21CBC82E0);
      swift_getKeyPath(byte_21CBC8308);
    }

    else
    {
      type metadata accessor for PMRecentlyDeletedRow(0);
      swift_getKeyPath(asc_21CBC8298);
      swift_getKeyPath(asc_21CBC82C0);
    }

    sub_21CB81DB4();

    v14 = *(v17 + 16);
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    type metadata accessor for PMRecentlyDeletedRow(0);
    swift_getKeyPath(aX_80);
    swift_getKeyPath(aX_81);
    sub_21CB81DB4();

    v9 = v17;
    if (*(v17 + 16) && (v10 = sub_21CB10A54(v4), (v11 & 1) != 0))
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      v13 = *(v2 + 8);

      v13(v4, v1);

      v14 = *(v12 + 16);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
      return 0;
    }
  }

  return v14;
}

id sub_21CAF0CB4(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [ObjCClassFromMetadata alertTitleForRecoveringSavedAccountToMyPasswords_];
  if (result)
  {
    v4 = result;
    v5 = [ObjCClassFromMetadata alertMessageForRecoveringSavedAccountToMyPasswords_];
    if (v5)
    {
      v6 = v5;
      sub_21CB855C4();

      v7 = sub_21CB85584();
      swift_bridgeObjectRelease_n();
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v4 second:v7];

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21CAF0DF0(unint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v95 = v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v96 = v87 - v6;
  MEMORY[0x28223BE20](v7);
  v97 = v87 - v8;
  MEMORY[0x28223BE20](v9);
  v98 = v87 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = v87 - v12;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = v87 - v16;
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19 != 1)
  {
    v93 = v87 - v16;
    v94 = v13;
    v91 = v3;
    v92 = v15;
    while (1)
    {
      v23 = 0;
      v99 = 0;
      v3 = 0;
      v13 = &property descriptor for static PMMiniPasswordsIsMenuBarExtra.defaultValue;
      while (1)
      {
        if (v19 == v23)
        {
          if (v3 == 1)
          {
            v27 = v93;
            if (v99 == 1)
            {
              sub_21CB81014();
              sub_21CB81004();
              (*(v91 + 8))(v27, v92);
              return;
            }

            if (v99 >= 1)
            {
              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v90 = sub_21CB81034();
              v39 = *(v90 - 8);
              v40 = (*(v39 + 80) + 32) & ~*(v39 + 80);
              v41 = swift_allocObject();
              v42 = v98;
              sub_21CB81014();
              v43 = v97;
              sub_21CB81014();
              v44 = v96;
              sub_21CB81014();
              v45 = v95;
              sub_21CB81014();
              sub_21CB80FE4();
              v46 = *(v91 + 8);
              v47 = v45;
              v48 = v92;
              v46(v47, v92);
              v46(v44, v48);
              v46(v43, v48);
              v46(v42, v48);
              swift_setDeallocating();
              (*(v39 + 8))(v41 + v40, v90);
              swift_deallocClassInstance();
              sub_21CB81004();
              v46(v94, v48);
              v46(v27, v48);
              goto LABEL_32;
            }

LABEL_36:
            sub_21CB81014();
            sub_21CB81014();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
            v99 = sub_21CB81034();
            v73 = *(v99 - 8);
            v93 = ((*(v73 + 80) + 32) & ~*(v73 + 80));
            v74 = swift_allocObject();
            v75 = v98;
            sub_21CB81014();
            v76 = v97;
            sub_21CB81014();
            v77 = v96;
            sub_21CB81014();
            v78 = v95;
            sub_21CB81014();
            sub_21CB80FE4();
            v79 = *(v91 + 8);
            v80 = v78;
            v81 = v27;
            v82 = v92;
            v79(v80, v92);
            v79(v77, v82);
            v79(v76, v82);
            v79(v75, v82);
            swift_setDeallocating();
            (*(v73 + 8))(&v93[v74], v99);
            swift_deallocClassInstance();
            sub_21CB81004();
            v79(v94, v82);
            v79(v81, v82);
LABEL_37:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
            v83 = swift_allocObject();
            v84 = MEMORY[0x277D83B88];
            *(v83 + 16) = xmmword_21CBA0690;
            v85 = MEMORY[0x277D83C10];
            *(v83 + 56) = v84;
            *(v83 + 64) = v85;
            *(v83 + 32) = v3;
            sub_21CB85594();
          }

          else
          {
            v27 = v93;
            if (v3 < 1)
            {
              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v90 = sub_21CB81034();
              v49 = *(v90 - 8);
              v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
              v51 = swift_allocObject();
              v52 = v98;
              sub_21CB81014();
              v53 = v97;
              sub_21CB81014();
              v54 = v96;
              sub_21CB81014();
              v55 = v95;
              sub_21CB81014();
              sub_21CB80FE4();
              v56 = *(v91 + 8);
              v57 = v55;
              v58 = v92;
              v56(v57, v92);
              v56(v54, v58);
              v56(v53, v58);
              v56(v52, v58);
              swift_setDeallocating();
              (*(v49 + 8))(v51 + v50, v90);
              swift_deallocClassInstance();
              sub_21CB81004();
              v56(v94, v58);
              v56(v27, v58);
LABEL_32:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v59 = swift_allocObject();
              v60 = MEMORY[0x277D83B88];
              *(v59 + 16) = xmmword_21CBA0690;
              v61 = MEMORY[0x277D83C10];
              *(v59 + 56) = v60;
              *(v59 + 64) = v61;
              *(v59 + 32) = v99;
            }

            else
            {
              if (v99 == 1)
              {
                sub_21CB81014();
                sub_21CB81014();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
                v99 = sub_21CB81034();
                v28 = *(v99 - 8);
                v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
                v30 = swift_allocObject();
                v31 = v98;
                sub_21CB81014();
                v32 = v97;
                sub_21CB81014();
                v33 = v96;
                sub_21CB81014();
                v34 = v95;
                sub_21CB81014();
                sub_21CB80FE4();
                v93 = v27;
                v35 = *(v91 + 8);
                v36 = v34;
                v37 = v92;
                v35(v36, v92);
                v35(v33, v37);
                v35(v32, v37);
                v35(v31, v37);
                swift_setDeallocating();
                (*(v28 + 8))(v30 + v29, v99);
                swift_deallocClassInstance();
                v38 = v93;
                sub_21CB81004();
                v35(v94, v37);
                v35(v38, v37);
                goto LABEL_37;
              }

              if (v99 < 1)
              {
                goto LABEL_36;
              }

              sub_21CB81014();
              sub_21CB81014();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB298, &unk_21CBA1650);
              v89 = sub_21CB81034();
              v62 = *(v89 - 8);
              v87[1] = *(v62 + 72);
              v63 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v88 = swift_allocObject();
              v90 = v88 + v63;
              v64 = v98;
              sub_21CB81014();
              v65 = v97;
              sub_21CB81014();
              v66 = v96;
              sub_21CB81014();
              v67 = v95;
              sub_21CB81014();
              sub_21CB80FE4();
              v68 = v92;
              v69 = *(v91 + 8);
              v69(v67, v92);
              v69(v66, v68);
              v69(v65, v68);
              v69(v64, v68);
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB81014();
              sub_21CB80FE4();
              v69(v67, v68);
              v69(v66, v68);
              v69(v65, v68);
              v69(v64, v68);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              sub_21CB81004();
              v69(v94, v68);
              v69(v27, v68);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
              v70 = swift_allocObject();
              *(v70 + 16) = xmmword_21CBA15B0;
              v71 = MEMORY[0x277D83B88];
              v72 = MEMORY[0x277D83C10];
              *(v70 + 56) = MEMORY[0x277D83B88];
              *(v70 + 64) = v72;
              *(v70 + 32) = v3;
              *(v70 + 96) = v71;
              *(v70 + 104) = v72;
              *(v70 + 72) = v99;
            }

            sub_21CB85594();
          }

          return;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x21CF15BD0](v23, a1, v17);
        }

        else
        {
          if (v23 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_40;
          }

          v15 = *(a1 + 8 * v23 + 32);
        }

        v25 = v15;
        v18 = (v23 + 1);
        if (__OFADD__(v23, 1))
        {
          break;
        }

        v15 = [v15 credentialTypes];
        if ((v15 & 2) != 0)
        {
          v26 = __OFADD__(v3++, 1);
          if (v26)
          {
            goto LABEL_41;
          }
        }

        v24 = [v25 credentialTypes];

        ++v23;
        if (v24)
        {
          v23 = v18;
          v26 = __OFADD__(v99++, 1);
          if (v26)
          {
            goto LABEL_46;
          }
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      v86 = v15;
      if (sub_21CB85FA4() == 1)
      {
        break;
      }

      v93 = v18;
      v94 = v13;
      v91 = v3;
      v92 = v86;
      v15 = sub_21CB85FA4();
      v19 = v15;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v20 = MEMORY[0x21CF15BD0](0, a1, v17);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = *(a1 + 32);
LABEL_6:
    v21 = v20;
    v22 = [swift_getObjCClassFromMetadata() alertTitleForRecoveringSavedAccountToMyPasswords_];

    sub_21CB855C4();
    return;
  }

  __break(1u);
LABEL_46:
  __break(1u);
}

void sub_21CAF1F24(unint64_t a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v57 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8220, &unk_21CBC8510);
  MEMORY[0x28223BE20](v5 - 8);
  v59 = &v53 - v6;
  v58 = _s24AccountContainerIdentityOMa(0);
  v62 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v53 - v9;
  MEMORY[0x28223BE20](v10);
  v71 = &v53 - v11;
  MEMORY[0x28223BE20](v12);
  v72 = &v53 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v53 - v15;
  v73 = sub_21CB85C44();
  v17 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v20);
  v67 = &v53 - v22;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  v74 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v74 != 1)
  {
    v75 = MEMORY[0x277D84FA0];
    while (1)
    {
      v55 = v3;
      v56 = v2;
      if (v74)
      {
        v53 = v19;
        v26 = 0;
        v19 = (a1 & 0xC000000000000001);
        v27 = a1 & 0xFFFFFFFFFFFFFF8;
        v64 = (v17 + 16);
        v65 = (v17 + 32);
        v68 = (v17 + 56);
        v69 = (v17 + 48);
        v54 = v17;
        v63 = (v17 + 8);
        v70 = a1;
        v66 = a1 & 0xFFFFFFFFFFFFFF8;
        v17 = v67;
        while (1)
        {
          if (v19)
          {
            v30 = MEMORY[0x21CF15BD0](v26, a1, v21);
          }

          else
          {
            if (v26 >= *(v27 + 16))
            {
              goto LABEL_46;
            }

            v30 = *(a1 + 8 * v26 + 32);
          }

          v2 = v30;
          v3 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            break;
          }

          sub_21CB85B94();
          v31 = v73;
          if ((*v69)(v16, 1, v73) == 1)
          {
            sub_21C6EA794(v16, &unk_27CDF20B0, &unk_21CBA0090);
            v28 = v71;
            (*v68)(v71, 1, 1, v31);
            v29 = v72;
            sub_21CA963C8(v72, v28);

            sub_21CAF3188(v29);
          }

          else
          {
            (*v65)(v17, v16, v31);
            v32 = v16;
            v33 = v19;
            v34 = v71;
            (*v64)(v71, v17, v31);
            (*v68)(v34, 0, 1, v31);
            v35 = v72;
            v36 = v34;
            v19 = v33;
            v16 = v32;
            v27 = v66;
            sub_21CA963C8(v72, v36);

            sub_21CAF3188(v35);
            (*v63)(v17, v31);
          }

          ++v26;
          a1 = v70;
          if (v3 == v74)
          {
            v37 = v75;
            v3 = v55;
            v2 = v56;
            v17 = v54;
            v19 = v53;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v37 = MEMORY[0x277D84FA0];
LABEL_22:
        v38 = v73;
        a1 = v59;
        if (*(v37 + 16) == 1)
        {
          sub_21C7C6F14(v37, v59);
          if ((*(v62 + 48))(a1, 1, v58) == 1)
          {
            sub_21C6EA794(a1, &qword_27CDF8220, &unk_21CBC8510);
          }

          else if ((*(v17 + 48))(a1, 1, v38) == 1)
          {
            sub_21CAF3188(a1);
          }

          else
          {
            (*(v17 + 32))(v19, a1, v38);
            v39 = [objc_opt_self() sharedProvider];
            a1 = sub_21CB85D84();

            if (a1)
            {
              v40 = [a1 displayName];

              if (v40)
              {

                v41 = sub_21CB855C4();
                v43 = v42;

                v44 = v3;
                v45 = v57;
                sub_21CB81014();
                sub_21CB81004();
                (*(v44 + 8))(v45, v2);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
                v46 = swift_allocObject();
                *(v46 + 16) = xmmword_21CBA0690;
                *(v46 + 56) = MEMORY[0x277D837D0];
                *(v46 + 64) = sub_21C7C0050();
                *(v46 + 32) = v41;
                *(v46 + 40) = v43;
                sub_21CB85594();

                (*(v17 + 8))(v19, v38);
                return;
              }
            }

            (*(v17 + 8))(v19, v38);
          }
        }

        v47 = 1 << *(v37 + 32);
        v48 = -1;
        if (v47 < 64)
        {
          v48 = ~(-1 << v47);
        }

        v49 = v48 & *(v37 + 56);
        v3 = (v47 + 63) >> 6;
        v16 = (v17 + 48);

        v2 = 0;
        v17 = v60;
        v19 = v61;
        while (v49)
        {
          v50 = v2;
LABEL_40:
          v51 = __clz(__rbit64(v49));
          v49 &= v49 - 1;
          sub_21CAF31E4(*(v37 + 48) + *(v62 + 72) * (v51 | (v50 << 6)), v17);
          sub_21CAF31E4(v17, v19);
          a1 = (*v16)(v19, 1, v38);
          sub_21CAF3188(v19);
          sub_21CAF3188(v17);
          if (a1 != 1)
          {

            v52 = v57;
            sub_21CB81014();
            sub_21CB81004();
            (*(v55 + 8))(v52, v56);
            return;
          }
        }

        while (1)
        {
          v50 = v2 + 1;
          if (__OFADD__(v2, 1))
          {
            break;
          }

          if (v50 >= v3)
          {

            return;
          }

          v49 = *(v37 + 56 + 8 * v50);
          v2 = (v2 + 1);
          if (v49)
          {
            v2 = v50;
            goto LABEL_40;
          }
        }

        __break(1u);
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (sub_21CB85FA4() == 1)
      {
        break;
      }

      v75 = MEMORY[0x277D84FA0];
      v74 = sub_21CB85FA4();
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x21CF15BD0](0, a1, v21);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v23 = *(a1 + 32);
  }

  v24 = v23;
  v25 = [swift_getObjCClassFromMetadata() alertMessageForRecoveringSavedAccountToMyPasswords_];

  if (v25)
  {
    sub_21CB855C4();
  }
}

void sub_21CAF2954(uint64_t a1)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_21C6E8F4C(0, &qword_27CDF76E0, 0x277D49B20);
  v2 = sub_21CB85814();
  v3 = [ObjCClassFromMetadata alertTitleForRecoveringSavedAccountsToMyPasswords_];

  if (v3)
  {
    v4 = sub_21CB85814();
    v5 = [ObjCClassFromMetadata alertMessageForRecoveringSavedAccountsToMyPasswords_];

    if (v5)
    {
      sub_21CB855C4();

      v5 = sub_21CB85584();
      swift_bridgeObjectRelease_n();
    }

    [objc_allocWithZone(MEMORY[0x277D49A80]) initWithFirst:v3 second:v5];
  }

  else
  {
    __break(1u);
  }
}

PMRecoverToMyPasswordsAlertStrings __swiftcall PMRecoverToMyPasswordsAlertStrings.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t _s24AccountContainerIdentityOMa(uint64_t a1)
{
  result = qword_27CDF8228;
  if (!qword_27CDF8228)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21CAF2C10()
{
  v1 = v0;
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s24AccountContainerIdentityOMa(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CAF31E4(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x21CF15F90](1);
    sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v3 + 8))(v5, v2);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CAF2DEC(uint64_t a1)
{
  v2 = sub_21CB85C44();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAF31E4(v1, v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x21CF15F90](0);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x21CF15F90](1);
  sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
  sub_21CB85494();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_21CAF2FA4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21CB85C44();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB86484();
  sub_21CAF31E4(v2, v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x21CF15F90](0);
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x21CF15F90](1);
    sub_21CAF3B34(&qword_27CDF8950, MEMORY[0x277D49978], MEMORY[0x277D49988]);
    sub_21CB85494();
    (*(v4 + 8))(v6, v3);
  }

  return sub_21CB864D4();
}

uint64_t sub_21CAF3188(uint64_t a1)
{
  v2 = _s24AccountContainerIdentityOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CAF31E4(uint64_t a1, uint64_t a2)
{
  v4 = _s24AccountContainerIdentityOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAF3248(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CB85C44();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s24AccountContainerIdentityOMa(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF7260, &qword_21CBC4718);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v21 - v12;
  v15 = *(v14 + 56);
  sub_21CAF31E4(a1, v21 - v12);
  sub_21CAF31E4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_21CAF31E4(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_21C6EA794(v13, &qword_27CDF7260, &qword_21CBC4718);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_21CAF3B34(&qword_27CDECD58, MEMORY[0x277D49978], MEMORY[0x277D49998]);
  sub_21CB857F4();
  sub_21CB857F4();
  if (v21[2] == v21[0] && v21[3] == v21[1])
  {
    v18 = *(v5 + 8);
    v18(v7, v4);

    v18(v10, v4);
  }

  else
  {
    v19 = sub_21CB86344();
    v20 = *(v5 + 8);
    v20(v7, v4);

    v20(v10, v4);
    if ((v19 & 1) == 0)
    {
      sub_21CAF3188(v13);
      return 0;
    }
  }

LABEL_12:
  sub_21CAF3188(v13);
  return 1;
}

uint64_t sub_21CAF35AC(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 credentialTypes];
  sub_21CB81014();
  v7 = sub_21CB81004();
  (*(v3 + 8))(v6, v2);
  return v7;
}

uint64_t sub_21CAF3718(void *a1)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CDF20B0, &unk_21CBA0090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_21CB85C44();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB85B94();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21C6EA794(v8, &unk_27CDF20B0, &unk_21CBA0090);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = [objc_opt_self() sharedProvider];
    v14 = sub_21CB85D84();

    if (v14)
    {
      v15 = [v14 displayName];

      if (v15)
      {
        v16 = sub_21CB855C4();
        v18 = v17;

        [a1 credentialTypes];
        sub_21CB81014();
        sub_21CB81004();
        (*(v3 + 8))(v5, v2);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB290, &qword_21CBA15C0);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_21CBA0690;
        *(v19 + 56) = MEMORY[0x277D837D0];
        *(v19 + 64) = sub_21C7C0050();
        *(v19 + 32) = v16;
        *(v19 + 40) = v18;
        v20 = sub_21CB85594();

        (*(v10 + 8))(v12, v9);
        return v20;
      }
    }

    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

uint64_t sub_21CAF3B34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21CAF3BA8(uint64_t a1)
{
  v2 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PMAccount(0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v6 + 24);
    v14 = *(v7 + 72);
    do
    {
      sub_21C80EABC(v12, v9, type metadata accessor for PMAccount);
      sub_21C80EABC(&v9[v13], v4, type metadata accessor for PMAccount.Storage);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_21C7190C0(v4, type metadata accessor for PMAccount.Storage);
        sub_21C7190C0(v9, type metadata accessor for PMAccount);
      }

      else
      {
        v15 = sub_21C7190C0(v9, type metadata accessor for PMAccount);
        MEMORY[0x21CF15300](v15);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21CB85834();
        }

        sub_21CB85854();
        v10 = v18;
      }

      v12 += v14;
      --v11;
    }

    while (v11);
  }

  return v10;
}

uint64_t sub_21CAF3DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = a1;
  v44 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8240, &qword_21CBC86B8);
  MEMORY[0x28223BE20](v41);
  v42 = &v37 - v4;
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v46 = *v2;
  v47 = v5;
  v48 = v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8248, &unk_21CBC86C0);
  MEMORY[0x21CF14A20](&v50);
  v8 = v50;
  if (v50)
  {
    v9 = objc_opt_self();
    sub_21CAF3BA8(v8);

    sub_21C897E98();
    v10 = sub_21CB85814();

    v11 = [v9 alertTitleForRecoveringSavedAccountsToMyPasswords_];

    v38 = sub_21CB855C4();
    v39 = v12;
  }

  else
  {
    v38 = 63;
    v39 = 0xE100000000000000;
  }

  v49 = v6;
  v50 = v7;
  sub_21CB858B4();
  sub_21C74C770(&v49, &v46);

  sub_21CAF4850(&v50, &v46);

  v13 = sub_21CB858A4();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = *(v3 + 1);
  *(v14 + 32) = *v3;
  *(v14 + 48) = v16;
  *(v14 + 64) = v3[4];
  sub_21C74C770(&v49, &v46);

  sub_21CAF4850(&v50, &v46);

  v17 = sub_21CB858A4();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v15;
  v19 = *(v3 + 1);
  *(v18 + 32) = *v3;
  *(v18 + 48) = v19;
  *(v18 + 64) = v3[4];
  sub_21CB84F64();
  v21 = v46;
  v20 = v47;
  v22 = v48;
  v46 = v6;
  v47 = v5;
  v48 = v7;
  MEMORY[0x21CF14A20](&v45, v40);
  v23 = v45;
  v24 = swift_allocObject();
  v25 = *(v3 + 1);
  *(v24 + 16) = *v3;
  *(v24 + 32) = v25;
  *(v24 + 48) = v3[4];
  KeyPath = swift_getKeyPath(aP_111);
  v27 = v42;
  v28 = &v42[*(v41 + 36)];
  *v28 = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEC000, &qword_21CBA27F0);
  swift_storeEnumTagMultiPayload();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8250, &qword_21CBC8700);
  *(v28 + v29[18]) = v23;
  v30 = (v28 + v29[15]);
  v31 = v39;
  *v30 = v38;
  v30[1] = v31;
  v32 = v28 + v29[16];
  *v32 = v21;
  *(v32 + 1) = v20;
  v32[16] = v22;
  *(v28 + v29[17]) = 0;
  *(v28 + v29[19]) = 2;
  v33 = (v28 + v29[20]);
  *v33 = sub_21CAF4928;
  v33[1] = v24;
  v34 = (v28 + v29[21]);
  *v34 = sub_21CAF46B8;
  v34[1] = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8258, &qword_21CBC8708);
  (*(*(v35 - 8) + 16))(v27, v43, v35);
  sub_21CAF4930(v27, v44);
  sub_21C74C770(&v49, &v46);

  sub_21CAF4850(&v50, &v46);
}

uint64_t sub_21CAF41F4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v51 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE38, &unk_21CBA3770);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v44 - v6;
  v8 = sub_21CB81024();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  v47 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v49 = v44 - v15;
  MEMORY[0x28223BE20](v16);
  v48 = v44 - v17;
  MEMORY[0x28223BE20](v18);
  v19 = *a1;
  v45 = v44 - v20;
  v46 = v19;
  sub_21CB81014();
  v21 = sub_21CB81004();
  v23 = v22;
  v24 = *(v9 + 8);
  v44[1] = v9 + 8;
  v24(v11, v8);
  v53 = v21;
  v54 = v23;
  sub_21CB81EF4();
  v25 = sub_21CB81F14();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  sub_21C71F3FC();
  sub_21CB84DC4();
  sub_21CB81014();
  v26 = sub_21CB81004();
  v28 = v27;
  v24(v11, v8);
  v53 = v26;
  v54 = v28;
  v29 = *a2;
  v55 = a2[2];
  v56 = v29;
  v30 = swift_allocObject();
  v31 = *(a2 + 1);
  *(v30 + 16) = *a2;
  *(v30 + 32) = v31;
  v32 = v46;
  *(v30 + 48) = a2[4];
  *(v30 + 56) = v32;
  sub_21C74C770(&v56, v52);

  sub_21CAF4850(&v55, v52);

  v33 = v48;
  sub_21CB84DE4();
  v34 = v47;
  v35 = *(v47 + 16);
  v36 = v49;
  v37 = v45;
  v35(v49, v45, v12);
  v38 = v50;
  v39 = v33;
  v35(v50, v33, v12);
  v40 = v51;
  v35(v51, v36, v12);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF0168, &qword_21CBB1D30);
  v35(&v40[*(v41 + 48)], v38, v12);
  v42 = *(v34 + 8);
  v42(v39, v12);
  v42(v37, v12);
  v42(v38, v12);
  return (v42)(v36, v12);
}

uint64_t sub_21CAF46B8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = objc_opt_self();
  sub_21CAF3BA8(v3);
  sub_21C897E98();
  v5 = sub_21CB85814();

  v6 = [v4 alertMessageForRecoveringSavedAccountsToMyPasswords_];

  if (v6)
  {
    sub_21CB855C4();

    sub_21C71F3FC();
    result = sub_21CB84054();
    v11 = v10 & 1;
  }

  else
  {
    result = 0;
    v8 = 0;
    v11 = 0;
    v9 = 0;
  }

  *a2 = result;
  a2[1] = v8;
  a2[2] = v11;
  a2[3] = v9;
  return result;
}

void *sub_21CAF47A0@<X0>(__int128 *a1@<X2>, BOOL *a2@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8248, &unk_21CBC86C0);
  result = MEMORY[0x21CF14A20](&v6, v3);
  v5 = v6;
  if (v6)
  {
  }

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_21CAF4850(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF6440, &qword_21CBC0848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21CAF4930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8240, &qword_21CBC86B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21CAF49CC()
{
  result = qword_27CDF8260;
  if (!qword_27CDF8260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8240, &qword_21CBC86B8);
    sub_21C6EADEC(&qword_27CDF8268, &qword_27CDF8258, &qword_21CBC8708, MEMORY[0x277CE04B0]);
    sub_21C6EADEC(qword_27CDF8270, &qword_27CDF8250, &qword_21CBC8700, &unk_21CBAA4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8260);
  }

  return result;
}

void sub_21CAF4B50(uint64_t a1)
{
  if (!qword_27CDF8308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF3CF0, &qword_21CBC8760);
    v1 = sub_21CB84D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8308);
    }
  }
}

uint64_t sub_21CAF4BD0()
{
  v1 = type metadata accessor for PMSharingGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for PMRemoveDuplicateAccountsList(0) + 24));
  v5 = *v4;
  v6 = v4[1];
  v11 = *v4;
  v12 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8318, &unk_21CBC87F0);
  sub_21CB84D54();
  v7 = *(v10 + 16);

  if (!v7)
  {
    sub_21CAF73B4(v0, v3, type metadata accessor for PMSharingGroup);
    type metadata accessor for PMRemoveDuplicateAccountsListModel(0);
    swift_allocObject();
    v7 = sub_21CAF8444(v3);
    v11 = v5;
    v12 = v6;
    sub_21CB84D54();
    *(v10 + 16) = v7;
  }

  return v7;
}

uint64_t sub_21CAF4D2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21CAF4BD0();
  v5 = (v2 + *(a1 + 20));
  v7 = *v5;
  v6 = v5[1];
  v8 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) + 24);
  *(a2 + v8) = swift_getKeyPath(byte_21CBC87B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE480, &qword_21CBA13D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for PMRemoveDuplicateAccountsListModel(0);
  sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel, &unk_21CBC8B88);

  result = sub_21CB82674();
  a2[2] = result;
  a2[3] = v10;
  *a2 = v7;
  a2[1] = v6;
  return result;
}

uint64_t sub_21CAF4E38@<X0>(uint64_t a1@<X8>)
{
  v79 = a1;
  v76 = sub_21CB83554();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21CB83584();
  v77 = *(v3 - 8);
  v78 = v3;
  MEMORY[0x28223BE20](v3);
  v73 = &v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21CB829D4();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_21CB82FD4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21CB85114();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8340, &qword_21CBC8870);
  MEMORY[0x28223BE20](v54);
  v13 = &v52 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8348, &qword_21CBC8878);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v52 = &v52 - v14;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8350, &qword_21CBC8880);
  v65 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v55 = &v52 - v15;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8358, &qword_21CBC8888);
  v67 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v58 = &v52 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8360, &qword_21CBC8890);
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v81 = &v52 - v17;
  v18 = *(v1 + 24);
  v63 = *(v1 + 16);
  v80 = v18;
  v53 = v1;
  v62 = type metadata accessor for PMRemoveDuplicateAccountsListModel(0);
  v60 = sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel, &unk_21CBC8B88);
  sub_21CB82684();
  sub_21CB82694();

  v83 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8368, &qword_21CBC88C0);
  sub_21CAF711C();
  v19 = MEMORY[0x277D837D0];
  sub_21CB83F14();
  KeyPath = swift_getKeyPath(byte_21CBC88D0);
  v21 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8388, &qword_21CBC8900) + 36)];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED938, &qword_21CBA7D60) + 28);
  (*(v9 + 104))(v11, *MEMORY[0x277CDF0D0], v8);
  sub_21CB84F74();
  (*(v9 + 8))(v11, v8);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDED038, &unk_21CBA6000);
  (*(*(v23 - 8) + 56))(v21 + v22, 0, 1, v23);
  *v21 = KeyPath;
  v24 = v56;
  v25 = v57;
  (*(v56 + 104))(v7, *MEMORY[0x277CDDDC0], v57);
  v26 = sub_21CAF71CC();
  v27 = v52;
  v28 = v54;
  sub_21CB84684();
  (*(v24 + 8))(v7, v25);
  sub_21CAF7334(v13);
  swift_getKeyPath(asc_21CBC8910);
  sub_21CB81DB4();

  v29 = *(v88 + 16);

  v88 = sub_21C7C56AC(v29);
  v89 = v30;
  v84 = v28;
  v85 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v32 = sub_21C71F3FC();
  v33 = v55;
  v34 = v59;
  sub_21CB842F4();

  (*(v61 + 8))(v27, v34);
  v35 = v68;
  sub_21CB85294();
  v88 = v34;
  v89 = v19;
  v90 = OpaqueTypeConformance2;
  v91 = v32;
  v36 = swift_getOpaqueTypeConformance2();
  v37 = sub_21CAF70B0(&qword_27CDED1A0, MEMORY[0x277CDDAB8], MEMORY[0x277CDDAA8]);
  v38 = v58;
  v39 = v64;
  v40 = v70;
  v41 = v33;
  sub_21CB849C4();
  v42 = v40;
  (*(v71 + 8))(v35, v40);
  (*(v65 + 8))(v41, v39);
  v82 = v53;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83B0, &qword_21CBC8930);
  v88 = v39;
  v89 = v42;
  v90 = v36;
  v91 = v37;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_21C6EADEC(&qword_27CDF83B8, &qword_27CDF83B0, &qword_21CBC8930, MEMORY[0x277CDDF68]);
  v46 = v66;
  sub_21CB84894();
  (*(v67 + 8))(v38, v46);
  sub_21CB82684();
  swift_getKeyPath(asc_21CBC8938);
  sub_21CB82694();

  v47 = v74;
  sub_21CB83544();
  v48 = v73;
  sub_21CB83534();
  (*(v75 + 8))(v47, v76);
  v84 = v46;
  v85 = v43;
  v86 = v44;
  v87 = v45;
  swift_getOpaqueTypeConformance2();
  v49 = v69;
  v50 = v81;
  sub_21CB84114();

  (*(v77 + 8))(v48, v78);
  return (*(v72 + 8))(v50, v49);
}

uint64_t sub_21CAF5A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83C0, &unk_21CBC8960);
  MEMORY[0x28223BE20](v19);
  v17 = &v17 - v3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA88, &qword_21CBAEF10);
  v4 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v6 = &v17 - v5;
  v7 = sub_21CB83604();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA80, &unk_21CBA81E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  sub_21CB835C4();
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBE40, &unk_21CBA8200);
  sub_21C6EADEC(&qword_27CDEBE50, &qword_27CDEBE40, &unk_21CBA8200, MEMORY[0x277CDF028]);
  sub_21CB82194();
  sub_21CB835D4();
  v21 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  sub_21C844588();
  sub_21CB82194();
  v12 = *(v19 + 48);
  v13 = v17;
  (*(v9 + 16))(v17, v11, v8);
  v14 = &v13[v12];
  v15 = v18;
  (*(v4 + 16))(v14, v6, v18);
  sub_21CB83394();
  (*(v4 + 8))(v6, v15);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21CAF5DA0(uint64_t a1)
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = sub_21CB81024();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v9 = sub_21CB81004();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v15[0] = v9;
  v15[1] = v11;
  sub_21CAF73B4(a1, v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v12 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v13 = swift_allocObject();
  sub_21CAF7708(v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21C71F3FC();
  return sub_21CB84DE4();
}

uint64_t sub_21CAF5FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  sub_21CAF73B4(a1, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v7 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = swift_allocObject();
  sub_21CAF7708(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21CB84DA4();
  swift_getKeyPath(asc_21CBC8910);
  sub_21CB81DB4();

  v9 = *(v14[1] + 16);

  LOBYTE(v6) = v9 == 0;
  KeyPath = swift_getKeyPath(byte_21CBC8970);
  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEDA98, &unk_21CBABCB0);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = sub_21C735744;
  v13[2] = v11;
  return result;
}

uint64_t sub_21CAF61D0(uint64_t (**a1)(uint64_t))
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF1D50, &qword_21CBA0C00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_21CB858E4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_21CAF73B4(a1, v5, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21CB858B4();
  v10 = sub_21CB858A4();
  v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v10;
  *(v12 + 24) = v13;
  sub_21CAF7708(v5, v12 + v11, type metadata accessor for _PMRemoveDuplicateAccountsList);
  sub_21C98B308(0, 0, v8, &unk_21CBC89B0, v12);

  return (*a1)(v14);
}

uint64_t sub_21CAF63BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_21CB858B4();
  v4[3] = sub_21CB858A4();
  v6 = sub_21CB85874();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_21CAF6454, v6, v5);
}

uint64_t sub_21CAF6454()
{
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_21C7F0710;

  return sub_21CAF77AC();
}

uint64_t sub_21CAF64E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21CB81024();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CB81014();
  v6 = sub_21CB81004();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v13[0] = v6;
  v13[1] = v8;
  sub_21C71F3FC();
  result = sub_21CB84054();
  *a1 = result;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11 & 1;
  *(a1 + 24) = v12;
  return result;
}

uint64_t sub_21CAF660C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83C8, &qword_21CBC89B8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v21[-v9];
  v11 = objc_opt_self();
  type metadata accessor for PMSharingGroup(0);

  v12 = sub_21CB85584();

  v13 = [v11 descriptionForRemovingDuplicateCredentialsInGroup_];

  v14 = sub_21CB855C4();
  v16 = v15;

  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83D0, &qword_21CBC89C0);
  sub_21CAF75D8();
  sub_21CB85054();
  v17 = *(v5 + 16);
  v17(v7, v10, v4);
  *a2 = v14;
  a2[1] = v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83F0, &qword_21CBC89D0);
  v17(a2 + *(v18 + 48), v7, v4);
  v19 = *(v5 + 8);

  v19(v10, v4);
  v19(v7, v4);
}

uint64_t sub_21CAF6864(uint64_t a1)
{
  v2 = type metadata accessor for _PMRemoveDuplicateAccountsList(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  *&v5 = MEMORY[0x28223BE20](v2 - 8).n128_u64[0];
  swift_getKeyPath(byte_21CBC89D8, v5);
  swift_getKeyPath(byte_21CBC8A00);
  sub_21CB81DB4();

  sub_21CAF73B4(a1, &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _PMRemoveDuplicateAccountsList);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_21CAF7708(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _PMRemoveDuplicateAccountsList);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83E8, &qword_21CBC89C8);
  sub_21C6EADEC(&unk_27CDEC2D0, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83980]);
  sub_21C6EADEC(&qword_27CDF83E0, &qword_27CDF83E8, &qword_21CBC89C8, MEMORY[0x277CE1138]);
  sub_21CAF70B0(&qword_27CDEB2C8, type metadata accessor for PMAccount, &protocol conformance descriptor for PMAccount);
  return sub_21CB84FF4();
}

double sub_21CAF6ADC@<D0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *a3 = sub_21CB83074();
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF83F8, &qword_21CBC8A28);
  *&result = sub_21CAF6B44(a1, a3 + *(v5 + 44)).n128_u64[0];
  return result;
}

__n128 sub_21CAF6B44@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for PMAccountRow(0);
  MEMORY[0x28223BE20](v5);
  v7 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CAF73B4(a1, v7, type metadata accessor for PMAccount);
  swift_getKeyPath(asc_21CBC8938);
  swift_getKeyPath(aH_108);
  sub_21CB81DB4();

  v8 = v29[0];
  v9 = sub_21CB837E4();
  v10 = &v7[v5[7]];
  v11 = MEMORY[0x277CE04E8];
  *(v10 + 3) = MEMORY[0x277CE04F8];
  *(v10 + 4) = v11;
  *v10 = v9;
  v12 = v5[9];
  KeyPath = swift_getKeyPath(aP_112);
  if (qword_27CDEA4C0 != -1)
  {
    swift_once();
  }

  v14 = &v7[v12];
  sub_21CB86544();
  sub_21C7073E8(KeyPath, *&v29[0]);

  type metadata accessor for PMGroupsStore(0);
  sub_21CAF70B0(&qword_27CDEB7C8, type metadata accessor for PMGroupsStore, &protocol conformance descriptor for PMGroupsStore);
  v15 = sub_21CB82674();
  v17 = v16;

  *v14 = v15;
  v14[1] = v17;
  v18 = &v7[v5[10]];
  *v18 = swift_getKeyPath(a8_45);
  v18[8] = 0;
  v19 = &v7[v5[11]];
  *v19 = swift_getKeyPath(byte_21CBC8A98);
  v19[8] = 0;
  v20 = v5[12];
  *&v7[v20] = swift_getKeyPath(byte_21CBC8AC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEB998, &qword_21CBA2700);
  swift_storeEnumTagMultiPayload();
  v21 = v5[13];
  *&v7[v21] = swift_getKeyPath(byte_21CBC8B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC90, &qword_21CBA5D20);
  swift_storeEnumTagMultiPayload();
  v22 = v5[14];
  *&v7[v22] = swift_getKeyPath(byte_21CBC8B38);
  v23 = &v7[v5[5]];
  *v23 = 0;
  *(v23 + 1) = 0;
  v24 = &v7[v5[6]];
  *v24 = 0;
  *(v24 + 1) = 0;
  *&v7[v5[8]] = v8;
  [objc_opt_self() isPasswordsAppInstalled];
  sub_21CB85224();
  sub_21CB82AC4();
  sub_21CAF7708(v7, a3, type metadata accessor for PMAccountRow);
  v25 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEBC70, &qword_21CBAD0C0) + 36);
  v26 = v29[5];
  *(v25 + 64) = v29[4];
  *(v25 + 80) = v26;
  *(v25 + 96) = v29[6];
  v27 = v29[1];
  *v25 = v29[0];
  *(v25 + 16) = v27;
  result = v29[3];
  *(v25 + 32) = v29[2];
  *(v25 + 48) = result;
  return result;
}

uint64_t sub_21CAF6F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
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

void sub_21CAF701C(uint64_t a1)
{
  if (!qword_27CDF8330)
  {
    type metadata accessor for PMRemoveDuplicateAccountsListModel(255);
    sub_21CAF70B0(&qword_27CDF8310, type metadata accessor for PMRemoveDuplicateAccountsListModel, &unk_21CBC8B88);
    v1 = sub_21CB826A4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CDF8330);
    }
  }
}

uint64_t sub_21CAF70B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21CAF711C()
{
  result = qword_27CDF8370;
  if (!qword_27CDF8370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8368, &qword_21CBC88C0);
    sub_21C6EADEC(&qword_27CDF8378, &qword_27CDF8380, &qword_21CBC88C8, MEMORY[0x277CE14C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8370);
  }

  return result;
}

unint64_t sub_21CAF71CC()
{
  result = qword_27CDF8390;
  if (!qword_27CDF8390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8340, &qword_21CBC8870);
    sub_21CAF7250();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8390);
  }

  return result;
}

unint64_t sub_21CAF7250()
{
  result = qword_27CDF8398;
  if (!qword_27CDF8398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF8388, &qword_21CBC8900);
    sub_21C6EADEC(&qword_27CDF83A0, &qword_27CDF83A8, &qword_21CBC8908, MEMORY[0x277CDE5A0]);
    sub_21C6EADEC(&qword_27CDED970, &qword_27CDED938, &qword_21CBA7D60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF8398);
  }

  return result;
}

uint64_t sub_21CAF7334(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8340, &qword_21CBC8870);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21CAF73B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF741C()
{
  v1 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return sub_21CAF61D0(v2);
}

uint64_t sub_21CAF747C(uint64_t a1)
{
  v4 = *(type metadata accessor for _PMRemoveDuplicateAccountsList(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21C702EFC;

  return sub_21CAF63BC(a1, v6, v7, v1 + v5);
}

unint64_t sub_21CAF75D8()
{
  result = qword_27CDF83D8;
  if (!qword_27CDF83D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CDF83D0, &qword_21CBC89C0);
    sub_21C6EADEC(&qword_27CDF83E0, &qword_27CDF83E8, &qword_21CBC89C8, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CDF83D8);
  }

  return result;
}

double sub_21CAF7688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for _PMRemoveDuplicateAccountsList(0);

  return sub_21CAF6ADC(a1, a2);
}

uint64_t sub_21CAF7708(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF77AC()
{
  v1[5] = v0;
  v1[6] = *(type metadata accessor for PMAccount(0) - 8);
  v1[7] = swift_task_alloc();
  v1[8] = sub_21CB858B4();
  v1[9] = sub_21CB858A4();
  v3 = sub_21CB85874();
  v1[10] = v3;
  v1[11] = v2;

  return MEMORY[0x2822009F8](sub_21CAF78A0, v3, v2);
}

uint64_t sub_21CAF78A0()
{
  swift_getKeyPath(aH_42);
  swift_getKeyPath(aH_109);
  sub_21CB81DB4();

  v1 = *(v0 + 16);
  *(v0 + 96) = v1;
  v2 = *(v1 + 16);
  *(v0 + 104) = v2;
  if (v2)
  {
    v3 = *(v0 + 48);
    *(v0 + 112) = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState;
    *(v0 + 176) = *(v3 + 80);
    *(v0 + 120) = 0;
    if (*(v1 + 16))
    {
      v4 = 0;
      while (1)
      {
        v5 = *(v0 + 56);
        sub_21CAF9744(v1 + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(*(v0 + 48) + 72) * v4, v5, type metadata accessor for PMAccount);
        swift_getKeyPath(a0_23);
        swift_getKeyPath(byte_21CBC8C60);
        sub_21CB81DB4();

        v6 = *(v0 + 24);
        if (*(v6 + 16))
        {
          v7 = *v5;
          v8 = v5[1];
          sub_21CB86484();
          sub_21CB854C4();
          v9 = sub_21CB864D4();
          v10 = -1 << *(v6 + 32);
          v11 = v9 & ~v10;
          if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
          {
            break;
          }
        }

LABEL_13:

        v15 = *(v0 + 104);
        v16 = *(v0 + 120) + 1;
        sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
        if (v16 == v15)
        {
          goto LABEL_21;
        }

        v4 = *(v0 + 120) + 1;
        *(v0 + 120) = v4;
        v1 = *(v0 + 96);
        if (v4 >= *(v1 + 16))
        {
          goto LABEL_15;
        }
      }

      v12 = ~v10;
      while (1)
      {
        v13 = (*(v6 + 48) + 16 * v11);
        v14 = *v13 == v7 && v13[1] == v8;
        if (v14 || (sub_21CB86344() & 1) != 0)
        {
          break;
        }

        v11 = (v11 + 1) & v12;
        if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {
          goto LABEL_13;
        }
      }
    }

    else
    {
LABEL_15:
      __break(1u);
    }

    v17 = *(v0 + 112);
    v18 = *(v0 + 40);

    v19 = *(v18 + v17);
    v20 = qword_27CDEA4C0;

    if (v20 != -1)
    {
      swift_once();
    }

    sub_21CB86544();
    *(v0 + 128) = sub_21C7072A8(v19, *(v0 + 32));

    *(v0 + 136) = sub_21CB858A4();
    v22 = sub_21CB85874();
    *(v0 + 144) = v22;
    *(v0 + 152) = v21;

    return MEMORY[0x2822009F8](sub_21CAF7C34, v22, v21);
  }

  else
  {
LABEL_21:

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_21CAF7C34()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = *(v0[16] + 24);
    ObjectType = swift_getObjectType();
    v9 = (*(v2 + 96) + **(v2 + 96));
    v4 = swift_task_alloc();
    v0[21] = v4;
    *v4 = v0;
    v4[1] = sub_21CAF7DBC;
    v5 = v0[7];

    return v9(3, v5, ObjectType, v2);
  }

  else
  {

    v7 = v0[10];
    v8 = v0[11];

    return MEMORY[0x2822009F8](sub_21CAF7F6C, v7, v8);
  }
}

uint64_t sub_21CAF7DBC()
{
  v1 = *v0;

  swift_unknownObjectRelease();
  v2 = *(v1 + 152);
  v3 = *(v1 + 144);

  return MEMORY[0x2822009F8](sub_21CAF7F00, v3, v2);
}

uint64_t sub_21CAF7F00()
{

  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return MEMORY[0x2822009F8](sub_21CAF7F6C, v1, v2);
}

uint64_t sub_21CAF7F6C()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 120) + 1;
  sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
  if (v2 == v1)
  {
LABEL_2:

    v3 = *(v0 + 8);

    return v3();
  }

  v5 = a0_23;
  while (1)
  {
    v8 = *(v0 + 120) + 1;
    *(v0 + 120) = v8;
    v9 = *(v0 + 96);
    if (v8 >= *(v9 + 16))
    {
      __break(1u);
LABEL_23:
      swift_once();
      goto LABEL_19;
    }

    v10 = *(v0 + 56);
    sub_21CAF9744(v9 + ((*(v0 + 176) + 32) & ~*(v0 + 176)) + *(*(v0 + 48) + 72) * v8, v10, type metadata accessor for PMAccount);
    swift_getKeyPath(a0_23);
    swift_getKeyPath(byte_21CBC8C60);
    sub_21CB81DB4();

    v11 = *(v0 + 24);
    if (*(v11 + 16))
    {
      v12 = *v10;
      v13 = v10[1];
      sub_21CB86484();
      sub_21CB854C4();
      v14 = sub_21CB864D4();
      v15 = -1 << *(v11 + 32);
      v16 = v14 & ~v15;
      if ((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        break;
      }
    }

LABEL_6:

    v6 = *(v0 + 104);
    v7 = *(v0 + 120) + 1;
    sub_21CAF9814(*(v0 + 56), type metadata accessor for PMAccount);
    if (v7 == v6)
    {
      goto LABEL_2;
    }
  }

  v17 = ~v15;
  while (1)
  {
    v18 = (*(v11 + 48) + 16 * v16);
    v19 = *v18 == v12 && v18[1] == v13;
    if (v19 || (sub_21CB86344() & 1) != 0)
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v11 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v20 = *(v0 + 112);
  v21 = *(v0 + 40);

  v5 = *(v21 + v20);
  v22 = qword_27CDEA4C0;

  if (v22 != -1)
  {
    goto LABEL_23;
  }

LABEL_19:
  sub_21CB86544();
  *(v0 + 128) = sub_21C7072A8(v5, *(v0 + 32));

  *(v0 + 136) = sub_21CB858A4();
  v24 = sub_21CB85874();
  *(v0 + 144) = v24;
  *(v0 + 152) = v23;

  return MEMORY[0x2822009F8](sub_21CAF7C34, v24, v23);
}

uint64_t sub_21CAF82B4()
{
  swift_getKeyPath(byte_21CBC8CD0);
  swift_getKeyPath(byte_21CBC8CF8);
  sub_21CB81DB4();

  return v1;
}

void sub_21CAF8328(void *a2@<X8>)
{
  swift_getKeyPath(byte_21CBC8CD0);
  swift_getKeyPath(byte_21CBC8CF8);
  sub_21CB81DB4();

  *a2 = v3;
  a2[1] = v4;
}

uint64_t sub_21CAF83A8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath(byte_21CBC8CD0);
  swift_getKeyPath(byte_21CBC8CF8);

  sub_21CB81DC4();
  return sub_21CAF8C5C();
}

uint64_t sub_21CAF8444(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v3 = type metadata accessor for PMAccount(0);
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  v9 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v36 - v15;
  v17 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState;
  *(v2 + v17) = swift_getKeyPath(byte_21CBC8BC8, v14);
  v18 = MEMORY[0x277D84FA0];
  *(v2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_subscriptions) = MEMORY[0x277D84FA0];
  v19 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__duplicateAccounts;
  v42 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21CB81D74();
  (*(v13 + 32))(v2 + v19, v16, v12);
  v20 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__selectedAccounts;
  v42 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD30, &unk_21CBA5590);
  sub_21CB81D74();
  (*(v9 + 32))(v2 + v20, v11, v38);
  v21 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__searchText;
  v42 = 0;
  v43 = 0xE000000000000000;
  sub_21CB81D74();
  (*(v39 + 32))(v2 + v21, v8, v40);
  sub_21CAF9744(v41, v2 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_group, type metadata accessor for PMSharingGroup);
  v22 = sub_21CAF8970();
  swift_getKeyPath(aH_42, v22);
  swift_getKeyPath(aH_109);
  sub_21CB81DB4();

  v23 = v42;
  v24 = *(v42 + 16);
  if (v24)
  {
    v42 = MEMORY[0x277D84F90];
    sub_21C7B0C0C(0, v24, 0);
    v25 = v42;
    v26 = *(v37 + 80);
    v40 = v23;
    v27 = v23 + ((v26 + 32) & ~v26);
    v28 = *(v37 + 72);
    do
    {
      sub_21CAF9744(v27, v5, type metadata accessor for PMAccount);
      v30 = *v5;
      v29 = v5[1];

      sub_21CAF9814(v5, type metadata accessor for PMAccount);
      v42 = v25;
      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_21C7B0C0C((v31 > 1), v32 + 1, 1);
        v25 = v42;
      }

      *(v25 + 16) = v32 + 1;
      v33 = v25 + 16 * v32;
      *(v33 + 32) = v30;
      *(v33 + 40) = v29;
      v27 += v28;
      --v24;
    }

    while (v24);
  }

  else
  {

    v25 = MEMORY[0x277D84F90];
  }

  v34 = sub_21CB009AC(v25);

  swift_getKeyPath(a0_23);
  swift_getKeyPath(byte_21CBC8C60);
  v42 = v34;

  sub_21CB81DC4();
  sub_21CAF9814(v41, type metadata accessor for PMSharingGroup);
  return v2;
}

double sub_21CAF8970()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDF8438, &qword_21CBC8C80);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState);
  v6 = qword_27CDEA4C0;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C7072A8(v5, v8[1]);

  swift_getKeyPath(byte_21CBC8C88);
  sub_21CB81DB4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAED8, &unk_21CBA0730);
  sub_21C6EADEC(&qword_27CDF8440, &qword_27CDEAED8, &unk_21CBA0730, MEMORY[0x277D83970]);
  sub_21CB857D4();

  swift_allocObject();
  swift_weakInit();
  sub_21C6EADEC(&qword_27CDF8448, &qword_27CDF8438, &qword_21CBC8C80, MEMORY[0x277CBCD18]);
  sub_21CB81E04();

  (*(v2 + 8))(v4, v1);
  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  return result;
}

uint64_t sub_21CAF8C5C()
{
  v1 = type metadata accessor for PMAccount.SIWAUniqueID(0);
  MEMORY[0x28223BE20](v1 - 8);
  v48 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for PMAccount.CombinedUniqueID(0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for PMAccount.UniqueID(0);
  MEMORY[0x28223BE20](v54);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for PMAccount.Storage(0);
  MEMORY[0x28223BE20](v53);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for PMAccount(0);
  v52 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() sharedStore];
  v46 = v0;
  sub_21CB85B64();
  v12 = sub_21CB85584();

  v13 = [v11 duplicateAccountsWithGroupID_];

  sub_21C897E98();
  v14 = sub_21CB85824();

  if (v14 >> 62)
  {
    v15 = sub_21CB85FA4();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_16:

    v12 = MEMORY[0x277D84F90];
    goto LABEL_17;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_3:
  v55 = MEMORY[0x277D84F90];
  sub_21C7B0C4C(0, v15 & ~(v15 >> 63), 0);
  if (v15 < 0)
  {
    __break(1u);
LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  v16 = 0;
  v12 = v55;
  v49 = v14 & 0xC000000000000001;
  v50 = v15;
  do
  {
    if (v49)
    {
      v17 = MEMORY[0x21CF15BD0](v16, v14);
    }

    else
    {
      v17 = *(v14 + 8 * v16 + 32);
    }

    v18 = v17;
    *v7 = v17;
    swift_storeEnumTagMultiPayload();
    v19 = &v10[v8[7]];
    *v19 = 0u;
    *(v19 + 1) = 0u;
    sub_21CAF9744(v7, &v10[v8[6]], type metadata accessor for PMAccount.Storage);
    v20 = v8[5];
    v21 = v18;
    sub_21C7C8A3C(&v10[v20]);
    v22 = v51;
    sub_21CAF9744(&v10[v20], v51, type metadata accessor for PMAccount.UniqueID);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v23 = v48;
      sub_21CAF97AC(v22, v48, type metadata accessor for PMAccount.SIWAUniqueID);
      v24 = sub_21C7CE99C();
      v26 = v25;

      v27 = type metadata accessor for PMAccount.SIWAUniqueID;
    }

    else
    {
      v23 = v47;
      sub_21CAF97AC(v22, v47, type metadata accessor for PMAccount.CombinedUniqueID);
      v24 = sub_21C7CE408();
      v26 = v28;

      v27 = type metadata accessor for PMAccount.CombinedUniqueID;
    }

    sub_21CAF9814(v23, v27);
    sub_21CAF9814(v7, type metadata accessor for PMAccount.Storage);
    *v10 = v24;
    *(v10 + 1) = v26;
    v55 = v12;
    v30 = v12[2];
    v29 = v12[3];
    if (v30 >= v29 >> 1)
    {
      sub_21C7B0C4C((v29 > 1), v30 + 1, 1);
      v12 = v55;
    }

    ++v16;
    v12[2] = v30 + 1;
    sub_21CAF97AC(v10, v12 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v30, type metadata accessor for PMAccount);
  }

  while (v50 != v16);

LABEL_17:
  swift_getKeyPath(byte_21CBC8CD0);
  swift_getKeyPath(byte_21CBC8CF8);
  v31 = v46;
  sub_21CB81DB4();

  v33 = v55;
  v32 = v56;

  v34 = (v32 >> 56) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v34 = v33 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {
    swift_getKeyPath(aH_42);
    swift_getKeyPath(aH_109);
    v55 = v12;
    goto LABEL_25;
  }

  v15 = *(v31 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__accountsState);
  v35 = qword_27CDEA4C0;

  if (v35 != -1)
  {
    goto LABEL_27;
  }

LABEL_21:
  sub_21CB86544();
  v36 = sub_21C7072A8(v15, v55);

  swift_getKeyPath(byte_21CBC8CD0);
  swift_getKeyPath(byte_21CBC8CF8);
  sub_21CB81DB4();

  v38 = v55;
  v37 = v56;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v40 = *(v36 + 24);
    ObjectType = swift_getObjectType();
    v42 = (*(v40 + 48))(ObjectType, v40);
    swift_unknownObjectRelease();
    Strong = [v42 associatedDomainsManager];
  }

  matched = _s17PasswordManagerUI15PMAccountsStateC6filter8accounts10searchText017associatedDomainsB0SayAA9PMAccountVGAE_SDySS10SafariCore26WBSSavedAccountSearchMatchCG0H7ResultstAJ_SSSo021WBSAutoFillAssociatedkB0CSgtFZ_0(v12, v38, v37, Strong);

  swift_getKeyPath(aH_42);
  swift_getKeyPath(aH_109);
  v55 = matched;
LABEL_25:

  return sub_21CB81DC4();
}

double sub_21CAF9380(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CAF8C5C();
  }

  return result;
}

uint64_t sub_21CAF93D8()
{
  sub_21CAF9814(v0 + OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel_group, type metadata accessor for PMSharingGroup);

  v1 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__duplicateAccounts;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAC00, &qword_21CB9FF10);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__selectedAccounts;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDECD60, &unk_21CBC7DB0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC17PasswordManagerUI34PMRemoveDuplicateAccountsListModel__searchText;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEAF20, &qword_21CBA07A0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PMRemoveDuplicateAccountsListModel(uint64_t a1)
{
  result = qword_27CDF8428;
  if (!qword_27CDF8428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21CAF95B0(uint64_t a1)
{
  type metadata accessor for PMSharingGroup(319);
  if (v1 <= 0x3F)
  {
    sub_21C6EA5CC(319, &qword_27CDEAED0, &qword_27CDEAED8, &unk_21CBA0730);
    if (v2 <= 0x3F)
    {
      sub_21C6EA5CC(319, &qword_27CDECD28, &qword_27CDECD30, &unk_21CBA5590);
      if (v3 <= 0x3F)
      {
        sub_21C7135A4();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_21CAF9744(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF97AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21CAF9814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21CAF9874()
{
  v0 = sub_21CB80BE4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = WBSOngoingSharingInvitationFallbackURL();
  sub_21CB80B94();

  v5 = [objc_allocWithZone(MEMORY[0x277CD46E8]) init];
  v6 = objc_opt_self();
  v7 = *MEMORY[0x277D49C98];
  sub_21CB85B64();
  v8 = sub_21CB85584();

  v9 = [v6 resourceSpecifierEncodedKey:v7 value:v8];

  if (!v9)
  {
    sub_21CB855C4();
    v9 = sub_21CB85584();
  }

  [v5 setUrlParameters_];

  type metadata accessor for PMSharingGroup(0);
  v10 = sub_21CB85584();
  [v5 setGroupName_];

  v11 = [objc_allocWithZone(MEMORY[0x277CD46C8]) init];
  v12 = sub_21CB80B74();
  [v11 setURL_];

  [v11 setSpecialization_];
  v13 = [v11 dataRepresentation];
  v14 = sub_21CB80C84();

  (*(v1 + 8))(v3, v0);
  return v14;
}

uint64_t sub_21CAF9AE0()
{
  swift_getKeyPath(byte_21CBC8E30);
  v3 = v0;
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  v1 = *(v0 + 32);
  sub_21C8D7854(v1, *(v3 + 40));
  return v1;
}

uint64_t sub_21CAF9B98(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 32);
  *(a1 + 32) = a2;
  v4 = *(a1 + 40);
  *(a1 + 40) = a3;
  sub_21C8D7854(a2, a3);
  return sub_21C989C08(v3, v4);
}

uint64_t sub_21CAF9BEC()
{
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  swift_beginAccess();
}

uint64_t sub_21CAF9CA4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_21CAF9D64(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_21C7A230C(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    MEMORY[0x28223BE20](KeyPath);
    sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
    sub_21CB810C4();
  }
}

double sub_21CAF9EAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE660, &unk_21CBC3820);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  v6 = *(v0 + 56);
  v7 = qword_27CDEA4C0;

  if (v7 != -1)
  {
    swift_once();
  }

  sub_21CB86544();
  sub_21C746438(v6, v10);

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDEE668, &qword_21CBAA0F0);
  sub_21CB81D84();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_21CA8C180();
  sub_21CB81E04();

  (*(v3 + 8))(v5, v2);
  v10 = v1;
  sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
  sub_21CB810D4();

  v10 = v1;
  sub_21CB810F4();

  swift_beginAccess();
  sub_21CB81CB4();
  swift_endAccess();

  v10 = v1;
  sub_21CB810E4();

  return result;
}

double sub_21CAFA198(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_21CAFA2EC();
  }

  return result;
}

uint64_t sub_21CAFA1F0()
{

  sub_21C989C08(*(v0 + 32), *(v0 + 40));

  v1 = OBJC_IVAR____TtC17PasswordManagerUI26PMMultipleWiFiDetailsModel___observationRegistrar;
  v2 = sub_21CB81114();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_21CAFA2EC()
{
  v1 = v0;
  v2 = type metadata accessor for PMWiFiNetwork(0);
  v49 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v44 = (v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = (v43 - v5);
  MEMORY[0x28223BE20](v7);
  v45 = v43 - v8;
  MEMORY[0x28223BE20](v9);
  v51 = (v43 - v10);
  KeyPath = *(v0 + 56);
  v12 = qword_27CDEA4C0;

  if (v12 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v43[1] = qword_27CE18778;
    sub_21CB86544();
    sub_21C746438(KeyPath, v52);

    swift_getKeyPath(byte_21CBC8E80);
    KeyPath = swift_getKeyPath(byte_21CBC8EA8);
    sub_21CB81DB4();

    v13 = v52;
    v48 = *(v52 + 16);
    if (!v48)
    {
      break;
    }

    v14 = 0;
    v46 = MEMORY[0x277D84F90];
    v47 = v52;
    while (v14 < *(v13 + 16))
    {
      v15 = v6;
      v16 = *(v49 + 72);
      v50 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      sub_21C84BF7C(v13 + v50 + v16 * v14, v51);
      v17 = v1;
      v18 = *(v1 + 16);
      if (*(v18 + 16) && (v19 = *v51, KeyPath = v51[1], sub_21CB86484(), sub_21CB854C4(), v20 = sub_21CB864D4(), v21 = -1 << *(v18 + 32), v22 = v20 & ~v21, ((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) != 0))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v18 + 48) + 16 * v22);
          v25 = *v24 == v19 && v24[1] == KeyPath;
          if (v25 || (sub_21CB86344() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v18 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        sub_21C6F0E30(v51, v45);
        v26 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v53 = v26;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_21C7B1204(0, *(v26 + 16) + 1, 1);
          v26 = v53;
        }

        v1 = v17;
        v6 = v15;
        v29 = *(v26 + 16);
        v28 = *(v26 + 24);
        KeyPath = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_21C7B1204((v28 > 1), v29 + 1, 1);
          v26 = v53;
        }

        *(v26 + 16) = KeyPath;
        v46 = v26;
        sub_21C6F0E30(v45, v26 + v50 + v29 * v16);
      }

      else
      {
LABEL_4:
        sub_21C864EF0(v51);
        v1 = v17;
        v6 = v15;
      }

      ++v14;
      v13 = v47;
      if (v14 == v48)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v46 = MEMORY[0x277D84F90];
LABEL_23:

  v30 = *(v46 + 16);
  if (v30)
  {
    if (v30 == 1)
    {
      sub_21C84BF7C(v46 + ((*(v49 + 80) + 32) & ~*(v49 + 80)), v6);

      swift_getKeyPath(byte_21CBC8E30);
      v52 = v1;
      sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
      sub_21CB810D4();

      if (*(v1 + 40) == 1 && (v31 = *(v1 + 32), swift_getKeyPath(asc_21CBC8EE8), v52 = v31, sub_21CAFABA0(&qword_27CDEB9B0, type metadata accessor for PMWiFiDetailsModel, &unk_21CBB4D48), , sub_21CB810D4(), , v32 = OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network, swift_beginAccess(), v33 = v44, sub_21C84BF7C(v31 + v32, v44), LOBYTE(v32) = _s17PasswordManagerUI13PMWiFiNetworkV2eeoiySbAC_ACtFZ_0(v33, v6), sub_21C989C08(v31, 1), sub_21C864EF0(v33), (v32 & 1) != 0))
      {
        sub_21C864EF0(v6);
      }

      else
      {
        v39 = v44;
        sub_21C84BF7C(v6, v44);
        type metadata accessor for PMWiFiDetailsModel(0);
        v40 = swift_allocObject();
        *(v40 + 16) = swift_getKeyPath(aX_82);
        v41 = (v40 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__forgetNetworkAlertConfiguration);
        v41[1] = 0;
        v41[2] = 0;
        *v41 = 0;
        *(v40 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__showQRCode) = 0;
        sub_21CB81104();
        sub_21C6F0E30(v39, v40 + OBJC_IVAR____TtC17PasswordManagerUI18PMWiFiDetailsModel__network);
        v42 = swift_getKeyPath(byte_21CBC8E30);
        MEMORY[0x28223BE20](v42);
        v43[-4] = v1;
        v43[-3] = v40;
        LOBYTE(v43[-2]) = 1;
        v53 = v1;
        sub_21CB810C4();

        sub_21C864EF0(v6);
      }
    }

    else
    {
      v37 = swift_getKeyPath(byte_21CBC8E30);
      MEMORY[0x28223BE20](v37);
      v38 = v46;
      v43[-4] = v1;
      v43[-3] = v38;
      LOBYTE(v43[-2]) = 2;
      v52 = v1;
      sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
      sub_21CB810C4();
    }
  }

  else
  {

    v34 = *(v1 + 56);

    sub_21CB86544();
    sub_21C746438(v34, v52);

    swift_getKeyPath(byte_21CBC8E80);
    swift_getKeyPath(byte_21CBC8EA8);
    sub_21CB81DB4();

    v35 = *(v52 + 16);

    v36 = swift_getKeyPath(byte_21CBC8E30);
    MEMORY[0x28223BE20](v36);
    v43[-4] = v1;
    v43[-3] = v35 == 0;
    LOBYTE(v43[-2]) = 0;
    v52 = v1;
    sub_21CAFABA0(&qword_27CDEFE88, type metadata accessor for PMMultipleWiFiDetailsModel, &unk_21CBC8E10);
    sub_21CB810C4();
  }
}