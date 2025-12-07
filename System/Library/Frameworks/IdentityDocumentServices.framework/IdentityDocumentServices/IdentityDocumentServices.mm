uint64_t IdentityDocumentPresentmentError.init(error:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_238A1F750();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_238A1F770();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v10, *MEMORY[0x277CFF920], v4);
  MEMORY[0x23EE6D770](a1);
  sub_238A15A90(MEMORY[0x277D84F90]);
  sub_238A1F780();
  sub_238A1F760();
  v15 = (*(v5 + 88))(v8, v4);
  if (v15 == *MEMORY[0x277CFFE18] || v15 == *MEMORY[0x277CFF998])
  {
    goto LABEL_6;
  }

  if (v15 == *MEMORY[0x277CFFA38] || v15 == *MEMORY[0x277CFFE10])
  {
    goto LABEL_12;
  }

  v17 = 1;
  if (v15 == *MEMORY[0x277CFFC60] || v15 == *MEMORY[0x277CFFBC0] || v15 == *MEMORY[0x277CFFC08])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFCF0])
  {
    goto LABEL_12;
  }

  v17 = 3;
  if (v15 == *MEMORY[0x277CFFBD8] || v15 == *MEMORY[0x277CFFBB8] || v15 == *MEMORY[0x277CFFC58] || v15 == *MEMORY[0x277CFFD80])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFC98])
  {
    goto LABEL_12;
  }

  if (v15 == *MEMORY[0x277CFFD58])
  {
LABEL_28:
    v17 = 1;
    goto LABEL_13;
  }

  v17 = 0;
  if (v15 == *MEMORY[0x277CFFAB8] || v15 == *MEMORY[0x277CFFA48])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFAA8])
  {
LABEL_6:
    v17 = 3;
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFCE8])
  {
    v17 = 2;
    goto LABEL_13;
  }

  v17 = 1;
  if (v15 == *MEMORY[0x277CFF910])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFB88])
  {
    goto LABEL_13;
  }

  v17 = 0;
  if (v15 == *MEMORY[0x277CFFB68] || v15 == *MEMORY[0x277CFFD78] || v15 == *MEMORY[0x277CFFCB0] || v15 == *MEMORY[0x277CFFAF0])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFD00])
  {
    goto LABEL_28;
  }

  v17 = 0;
  if (v15 == *MEMORY[0x277CFFCC0])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFC80])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFC38])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFD98])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFD20])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFD28])
  {
    goto LABEL_13;
  }

  v17 = 1;
  if (v15 == *MEMORY[0x277CFFDF0] || v15 == *MEMORY[0x277CFFCC8] || v15 == *MEMORY[0x277CFFDF8] || v15 == *MEMORY[0x277CFFC40])
  {
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFBF8])
  {
LABEL_12:
    v17 = 0;
    goto LABEL_13;
  }

  if (v15 == *MEMORY[0x277CFFC50])
  {
    goto LABEL_6;
  }

  if (v15 != *MEMORY[0x277CFFD30] && v15 != *MEMORY[0x277CFFBF0] && v15 != *MEMORY[0x277CFFAE8] && v15 != *MEMORY[0x277CFFCB8] && v15 != *MEMORY[0x277CFFD50] && v15 != *MEMORY[0x277CFFE08] && v15 != *MEMORY[0x277CFFDA8] && v15 != *MEMORY[0x277CFFCE0])
  {
    (*(v5 + 8))(v8, v4);
    goto LABEL_12;
  }

LABEL_13:
  v19 = sub_238A15C6C();
  if (!v20)
  {
    if (v17 > 1)
    {
      if (v17 == 2)
      {
        v19 = sub_238A1F640();
      }

      else
      {
        v19 = sub_238A1F630();
      }
    }

    else if (v17)
    {
      v19 = sub_238A1F600();
    }

    else
    {
      v19 = sub_238A1F5F0();
    }
  }

  v21 = v19;
  v22 = v20;
  MEMORY[0x23EE6D760](a1);
  result = (*(v12 + 8))(v14, v11);
  *a2 = v17;
  *(a2 + 8) = v21;
  *(a2 + 16) = v22;
  return result;
}

unint64_t sub_238A15860(uint64_t a1)
{
  sub_238A1F740();
  sub_238A15FFC(&qword_27DF499A0, MEMORY[0x277CFF900]);
  v2 = sub_238A1F900();

  return sub_238A158E4(a1, v2);
}

unint64_t sub_238A158E4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_238A1F740();
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
      sub_238A15FFC(&qword_27DF499A8, MEMORY[0x277CFF908]);
      v15 = sub_238A1F930();
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

unint64_t sub_238A15A90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49990, &qword_238A1FDD8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49998, &unk_238A1FDE0);
    v7 = sub_238A1FA30();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_238A15F74(v9, v5);
      result = sub_238A15860(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_238A1F740();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_238A15FE4(&v5[v8], v7[7] + 40 * v13);
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_238A15C6C()
{
  v0 = sub_238A1F750();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F760();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CFFC60] || v4 == *MEMORY[0x277CFFBC0])
  {
    return sub_238A1F620();
  }

  if (v4 == *MEMORY[0x277CFFC08])
  {
    return sub_238A1F6E0();
  }

  if (v4 == *MEMORY[0x277CFF910])
  {
    return sub_238A1F5C0();
  }

  if (v4 == *MEMORY[0x277CFFD00])
  {
    return sub_238A1F6C0();
  }

  if (v4 == *MEMORY[0x277CFFDF0])
  {
    return sub_238A1F6E0();
  }

  if (v4 == *MEMORY[0x277CFFCC8] || v4 == *MEMORY[0x277CFFDF8])
  {
    return sub_238A1F6B0();
  }

  if (v4 == *MEMORY[0x277CFFC40])
  {
    return sub_238A1F680();
  }

  if (v4 == *MEMORY[0x277CFFBF8])
  {
    return sub_238A1F660();
  }

  if (v4 == *MEMORY[0x277CFFC50])
  {
    return sub_238A1F690();
  }

  if (v4 == *MEMORY[0x277CFFD30])
  {
    return sub_238A1F6F0();
  }

  if (v4 == *MEMORY[0x277CFFBF0])
  {
    return sub_238A1F650();
  }

  if (v4 == *MEMORY[0x277CFFAE8])
  {
    return sub_238A1F5D0();
  }

  if (v4 == *MEMORY[0x277CFFCB8])
  {
    return sub_238A1F6A0();
  }

  if (v4 == *MEMORY[0x277CFFD50])
  {
    return sub_238A1F700();
  }

  if (v4 == *MEMORY[0x277CFFE08])
  {
    return sub_238A1F720();
  }

  if (v4 == *MEMORY[0x277CFFDA8])
  {
    return sub_238A1F610();
  }

  (*(v1 + 8))(v3, v0);
  return 0;
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

uint64_t sub_238A15F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49990, &qword_238A1FDD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A15FE4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_238A15FFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_238A1F740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_238A16040(uint64_t a1)
{
  v2 = sub_238A1F7A0();
  v58 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v57 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  v4 = MEMORY[0x28223BE20](v71);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v70 = &v53 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B8, &qword_238A1FE10);
  v8 = MEMORY[0x28223BE20](v69);
  v64 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v72 = &v53 - v10;
  v11 = sub_238A1F490();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v53 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v53 - v19;
  sub_238A1F5A0();
  sub_238A1F540();
  sub_238A1F560();
  v68 = sub_238A16734();
  result = sub_238A1F920();
  if ((result & 1) == 0)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v54 = a1;
  v56 = v2;
  v67 = v20;
  v22 = *(v12 + 32);
  v23 = v70;
  v62 = v18;
  v22(v70, v18, v11);
  v24 = v71;
  v25 = v23 + *(v71 + 48);
  v63 = v15;
  v22(v25, v15, v11);
  sub_238A1678C(v23, v6);
  v66 = *(v24 + 48);
  v26 = v72;
  v22(v72, v6, v11);
  v27 = *(v12 + 8);
  v27(&v6[v66], v11);
  sub_238A167FC(v23, v6);
  v28 = *(v24 + 48);
  v55 = *(v69 + 36);
  v59 = v12 + 32;
  v60 = v22;
  v22((v26 + v55), &v6[v28], v11);
  v61 = v6;
  v65 = v27;
  v66 = v12 + 8;
  v27(v6, v11);
  v29 = v67;
  if (sub_238A1F920())
  {
    v30 = v72;
    v31 = sub_238A1F910();
    sub_238A17D1C(v30, &qword_27DF499B8, &qword_238A1FE10);
    if (v31)
    {
      v65(v29, v11);
      return sub_238A168C0();
    }
  }

  else
  {
    sub_238A17D1C(v72, &qword_27DF499B8, &qword_238A1FE10);
  }

  v32 = v62;
  sub_238A1F560();
  v33 = v63;
  sub_238A1F550();
  result = sub_238A1F920();
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v34 = v70;
  v35 = v60;
  v60(v70, v32, v11);
  v36 = v71;
  v35(v34 + *(v71 + 48), v33, v11);
  v37 = v61;
  sub_238A1678C(v34, v61);
  v38 = *(v36 + 48);
  v39 = v64;
  v35(v64, v37, v11);
  v40 = v65;
  v65((v37 + v38), v11);
  v41 = v34;
  v42 = v67;
  sub_238A167FC(v41, v37);
  v43 = *(v36 + 48);
  v72 = *(v69 + 36);
  v35(v39 + v72, (v37 + v43), v11);
  v40(v37, v11);
  if (sub_238A1F920())
  {
    v44 = sub_238A1F910();
    sub_238A17D1C(v39, &qword_27DF499B8, &qword_238A1FE10);
    v40(v42, v11);
    if (v44)
    {
      return sub_238A16CF8(v54);
    }
  }

  else
  {
    sub_238A17D1C(v39, &qword_27DF499B8, &qword_238A1FE10);
    v40(v42, v11);
  }

  v45 = v57;
  sub_238A1F470();
  v46 = sub_238A1F790();
  v47 = sub_238A1F9E0();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&dword_238A14000, v46, v47, "Encountered a presentment request with an unknown version", v48, 2u);
    MEMORY[0x23EE6D820](v48, -1, -1);
  }

  (*(v58 + 8))(v45, v56);
  v49 = sub_238A1F670();
  v51 = v50;
  sub_238A1686C();
  swift_allocError();
  *v52 = 1;
  *(v52 + 8) = v49;
  *(v52 + 16) = v51;
  return swift_willThrow();
}

unint64_t sub_238A16734()
{
  result = qword_27DF499C0;
  if (!qword_27DF499C0)
  {
    sub_238A1F490();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF499C0);
  }

  return result;
}

uint64_t sub_238A1678C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A167FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499B0, &qword_238A1FE08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_238A1686C()
{
  result = qword_27DF499C8;
  if (!qword_27DF499C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF499C8);
  }

  return result;
}

char *sub_238A168C0()
{
  v35 = sub_238A1F4C0();
  v0 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v2 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238A1F7A0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F470();
  v7 = sub_238A1F790();
  v8 = sub_238A1F9E0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238A14000, v7, v8, "Parsing first edition presentment request", v9, 2u);
    MEMORY[0x23EE6D820](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v10 = sub_238A1F530();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v41 = MEMORY[0x277D84F90];
    v13 = v10;
    result = sub_238A187C4(0, v11, 0);
    v15 = 0;
    v16 = v41;
    *&v38 = v13 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    v36 = v0 + 8;
    v37 = (v0 + 16);
    v17 = v35;
    while (v15 < *(v13 + 16))
    {
      (*(v0 + 16))(v2, v38 + *(v0 + 72) * v15, v17);
      sub_238A17154(&v39);
      result = (*(v0 + 8))(v2, v17);
      v18 = v39;
      v19 = v40;
      v41 = v16;
      v21 = v16[2];
      v20 = v16[3];
      if (v21 >= v20 >> 1)
      {
        v34 = v40;
        result = sub_238A187C4((v20 > 1), v21 + 1, 1);
        v19 = v34;
        v17 = v35;
        v16 = v41;
      }

      ++v15;
      v16[2] = v21 + 1;
      v22 = &v16[3 * v21];
      v22[4] = v18;
      *(v22 + 5) = v19;
      if (v11 == v15)
      {

        v12 = MEMORY[0x277D84F90];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D0, &unk_238A1FEF0);
    v23 = swift_allocObject();
    v38 = xmmword_238A1FDF0;
    *(v23 + 16) = xmmword_238A1FDF0;
    v24 = v16[2];
    if (v24)
    {
      v37 = v23;
      v39 = v12;
      sub_238A1878C(0, v24, 0);
      v25 = v39;
      v26 = v16 + 6;
      do
      {
        v28 = *(v26 - 2);
        v27 = *(v26 - 1);
        v29 = *v26;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D8, &qword_238A1FE18);
        v30 = swift_allocObject();
        *(v30 + 16) = v38;
        *(v30 + 32) = v28;
        *(v30 + 40) = v27;
        *(v30 + 48) = v29;
        v39 = v25;
        v31 = *(v25 + 16);
        v32 = *(v25 + 24);

        if (v31 >= v32 >> 1)
        {
          sub_238A1878C((v32 > 1), v31 + 1, 1);
          v25 = v39;
        }

        *(v25 + 16) = v31 + 1;
        *(v25 + 8 * v31 + 32) = v30;
        v26 += 3;
        --v24;
      }

      while (v24);

      result = v37;
    }

    else
    {
      v33 = v23;

      result = v33;
      v25 = MEMORY[0x277D84F90];
    }

    *(result + 4) = v25;
    result[40] = 1;
  }

  return result;
}

uint64_t sub_238A16CF8(uint64_t a1)
{
  v37 = a1;
  v1 = sub_238A1F510();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499F8, &qword_238A1FE38);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_238A1F7A0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - v12;
  sub_238A1F470();
  v14 = sub_238A1F790();
  v15 = sub_238A1F9E0();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v7;
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_238A14000, v14, v15, "Parsing second edition presentment request", v17, 2u);
    v18 = v17;
    v7 = v16;
    MEMORY[0x23EE6D820](v18, -1, -1);
  }

  v19 = *(v8 + 8);
  v19(v13, v7);
  sub_238A1F520();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A00, &qword_238A1FE40);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v6, 1, v20) == 1)
  {
    sub_238A17D1C(v6, &qword_27DF499F8, &qword_238A1FE38);
  }

  else
  {
    sub_238A1F480();
    (*(v21 + 8))(v6, v20);
    v22 = sub_238A1F500();
    v23 = (*(v35 + 8))(v3, v36);
    if (v22)
    {
      MEMORY[0x28223BE20](v23);
      *(&v34 - 2) = v37;
      v24 = sub_238A175E8(sub_238A17D7C, (&v34 - 4), v22);

      return v24;
    }
  }

  sub_238A1F470();
  v25 = sub_238A1F790();
  v26 = sub_238A1F9E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = v7;
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_238A14000, v25, v26, "Encountered a second edition presentment request without any use cases", v28, 2u);
    v29 = v28;
    v7 = v27;
    MEMORY[0x23EE6D820](v29, -1, -1);
  }

  v19(v11, v7);
  v30 = sub_238A1F610();
  v24 = v31;
  sub_238A1686C();
  swift_allocError();
  *v32 = 1;
  *(v32 + 8) = v30;
  *(v32 + 16) = v24;
  swift_willThrow();
  return v24;
}

void *sub_238A17154@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v70 = sub_238A1F4F0();
  v1 = *(v70 - 8);
  v2 = MEMORY[0x28223BE20](v70);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499E0, &qword_238A1FE20);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  sub_238A1F4B0();
  sub_238A1F480();
  v14 = *(v8 + 8);
  v14(v13, v7);
  v15 = sub_238A1F4E0();
  v61 = v16;
  v62 = v15;
  v17 = *(v1 + 8);
  v18 = v6;
  v19 = v70;
  v17(v18, v70);
  sub_238A1F4B0();
  sub_238A1F480();
  v14(v11, v7);
  v20 = sub_238A1F4D0();
  v17(v4, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499E8, &qword_238A1FE28);
  result = sub_238A1FA20();
  v22 = result;
  v23 = 0;
  v24 = *(v20 + 64);
  v64 = v20 + 64;
  v66 = result;
  v67 = v20;
  v25 = 1 << *(v20 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & v24;
  v28 = (v25 + 63) >> 6;
  v65 = result + 8;
  if (v27)
  {
    while (1)
    {
      v29 = __clz(__rbit64(v27));
      v68 = (v27 - 1) & v27;
LABEL_11:
      v32 = v29 | (v23 << 6);
      v33 = *(v67 + 56);
      v34 = (*(v67 + 48) + 16 * v32);
      v36 = *v34;
      v35 = v34[1];
      v69 = v36;
      v70 = v35;
      v37 = *(v33 + 8 * v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499F0, &qword_238A1FE30);
      result = sub_238A1FA20();
      v38 = result;
      v39 = 0;
      v40 = 1 << *(v37 + 32);
      v41 = v40 < 64 ? ~(-1 << v40) : -1;
      v42 = v41 & *(v37 + 64);
      v43 = (v40 + 63) >> 6;
      v44 = result + 8;
      if (v42)
      {
        break;
      }

LABEL_16:
      v46 = v39;
      while (1)
      {
        v39 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        if (v39 >= v43)
        {
          break;
        }

        v47 = *(v37 + 64 + 8 * v39);
        ++v46;
        if (v47)
        {
          v45 = __clz(__rbit64(v47));
          v42 = (v47 - 1) & v47;
          goto LABEL_21;
        }
      }

      v22 = v66;
      *(v65 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      v56 = (v22[6] + 16 * v32);
      result = v70;
      *v56 = v69;
      v56[1] = result;
      *(v22[7] + 8 * v32) = v38;
      v57 = v22[2];
      v54 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v54)
      {
        goto LABEL_31;
      }

      v22[2] = v58;

      v27 = v68;
      if (!v68)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v45 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
LABEL_21:
      v48 = v45 | (v39 << 6);
      v49 = (*(v37 + 48) + 16 * v48);
      v50 = *(*(v37 + 56) + v48);
      v51 = *v49;
      result = v49[1];
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v52 = (v38[6] + 16 * v48);
      *v52 = v51;
      v52[1] = result;
      *(v38[7] + v48) = v50;
      v53 = v38[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        break;
      }

      v38[2] = v55;

      if (!v42)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v28)
      {

        v59 = v63;
        v60 = v61;
        *v63 = v62;
        v59[1] = v60;
        v59[2] = v22;
        return result;
      }

      v31 = *(v64 + 8 * v23);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v68 = (v31 - 1) & v31;
        goto LABEL_11;
      }
    }

LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_238A175E8(void (*a1)(uint64_t *__return_ptr, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v20 = MEMORY[0x277D84F90];
    sub_238A187E4(0, v4, 0);
    v5 = v20;
    v7 = *(sub_238A1F590() - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    while (1)
    {
      a1(&v18, v8, &v17);
      if (v3)
      {
        break;
      }

      v10 = v18;
      v11 = v19;
      v20 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_238A187E4((v12 > 1), v13 + 1, 1);
        v5 = v20;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 16 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      v8 += v9;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_238A17750(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v17 = MEMORY[0x277D84F90];
    sub_238A1878C(0, v5, 0);
    v6 = v17;
    for (i = (a3 + 32); ; ++i)
    {
      v15 = *i;

      a1(&v16, &v15, &v14);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v10 = v16;
      v17 = v6;
      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_238A1878C((v11 > 1), v12 + 1, 1);
        v6 = v17;
      }

      *(v6 + 16) = v12 + 1;
      *(v6 + 8 * v12 + 32) = v10;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

uint64_t sub_238A17880(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v21 = MEMORY[0x277D84F90];
    sub_238A187C4(0, v4, 0);
    v5 = v21;
    v8 = (a3 + 32);
    while (1)
    {
      v9 = *v8++;
      v18 = v9;
      a1(&v19, &v18, &v17);
      if (v3)
      {
        break;
      }

      v10 = v19;
      v11 = v20;
      v21 = v5;
      v13 = *(v5 + 16);
      v12 = *(v5 + 24);
      if (v13 >= v12 >> 1)
      {
        v16 = v20;
        sub_238A187C4((v12 > 1), v13 + 1, 1);
        v11 = v16;
        v5 = v21;
      }

      *(v5 + 16) = v13 + 1;
      v14 = v5 + 24 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v11;
      if (!--v4)
      {
        return v5;
      }
    }
  }

  return v5;
}

uint64_t sub_238A179A8@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = sub_238A1F570();
  v10[2] = a1;
  v8 = sub_238A17750(sub_238A17D9C, v10, v7);

  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_238A1F580();
    *a3 = v8;
    *(a3 + 8) = result & 1;
  }

  return result;
}

uint64_t sub_238A17A54@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X8>)
{
  v24 = a2;
  v22 = a3;
  v23 = sub_238A1F7A0();
  v4 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238A1F4C0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(sub_238A1F530() + 16);

  if ((v11 & 0x8000000000000000) != 0 || v11 >= v12)
  {
    sub_238A1F470();
    v14 = sub_238A1F790();
    v15 = sub_238A1F9E0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v11;
      _os_log_impl(&dword_238A14000, v14, v15, "Raw request validator received a document request index %ld that does not refer to a document request.", v16, 0xCu);
      MEMORY[0x23EE6D820](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v23);
    v17 = sub_238A1F710();
    v19 = v18;
    sub_238A1686C();
    v20 = swift_allocError();
    *v21 = 1;
    *(v21 + 8) = v17;
    *(v21 + 16) = v19;
    result = swift_willThrow();
    *v24 = v20;
  }

  else
  {
    result = sub_238A1F530();
    if (v11 >= *(result + 16))
    {
      __break(1u);
    }

    else
    {
      (*(v8 + 16))(v10, result + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, v7);

      sub_238A17154(v22);
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_238A17D1C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_238A17D9C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v9[2] = *(v3 + 16);
  result = sub_238A17880(sub_238A17E04, v9, v7);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_238A17E24()
{
  v0 = sub_238A1F870();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238A1F880();
  v4 = (*(v1 + 88))(v3, v0);
  if (v4 == *MEMORY[0x277CFF1D0])
  {
    goto LABEL_2;
  }

  if (v4 == *MEMORY[0x277CFF1C8])
  {
    v5 = 1;
  }

  else if (v4 == *MEMORY[0x277CFF1B8])
  {
    v5 = 3;
  }

  else
  {
    if (v4 != *MEMORY[0x277CFF1C0])
    {
      (*(v1 + 8))(v3, v0);
LABEL_2:
      v5 = 0;
      goto LABEL_9;
    }

    v5 = 2;
  }

LABEL_9:
  LOBYTE(v13) = v5;
  v6 = sub_238A1F950();
  v13 = v6;
  v14 = v7;
  v8 = sub_238A1F860();
  if (!v9)
  {
    return v6;
  }

  v11 = 10272;
  v12 = 0xE200000000000000;
  MEMORY[0x23EE6D460](v8);

  MEMORY[0x23EE6D460](41, 0xE100000000000000);
  MEMORY[0x23EE6D460](v11, v12);

  return v13;
}

uint64_t IdentityDocumentWebPresentmentRawRequestValidator.validateISO18013MobileDocumentRequest(_:origin:)@<X0>(uint64_t a2@<X1>, char *a3@<X2>, uint64_t *a4@<X8>)
{
  v60 = a2;
  v55 = a3;
  v52 = a4;
  v4 = sub_238A1F7A0();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238A1F5B0();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A08, &unk_238A1FE50);
  v53 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v51 - v10;
  v12 = sub_238A1F460();
  v56 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v51 - v16;
  sub_238A1F3F0();
  swift_allocObject();
  sub_238A1F3E0();
  sub_238A186CC();
  v18 = v61;
  sub_238A1F3D0();
  if (v18)
  {

    v19 = sub_238A1F6D0();
    v21 = v20;
    sub_238A1686C();
    v22 = swift_allocError();
    *v23 = 1;
    *(v23 + 8) = v19;
    *(v23 + 16) = v21;
    swift_willThrow();
    MEMORY[0x23EE6D760](v18);
    v65 = v22;
    MEMORY[0x23EE6D770](v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
    if (swift_dynamicCast())
    {
      MEMORY[0x23EE6D760](v22);
      v28 = v62;
      v29 = v63;
      v30 = v64;
      sub_238A1686C();
      swift_allocError();
      *v31 = v28;
      *(v31 + 8) = v29;
      *(v31 + 16) = v30;
      swift_willThrow();
      v32 = v65;
    }

    else
    {
      MEMORY[0x23EE6D760](v65);
      sub_238A1F470();
      MEMORY[0x23EE6D770](v22);
      v33 = sub_238A1F790();
      v34 = sub_238A1F9D0();
      MEMORY[0x23EE6D760](v22);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        MEMORY[0x23EE6D770](v22);
        v37 = _swift_stdlib_bridgeErrorToNSError();
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&dword_238A14000, v33, v34, "IdentityDocumentWebPresentmentRawRequestValidator validateISO18013MobileDocumentRequest received internal error %@. Mapping to IdentityDocumentPresentmentError error", v35, 0xCu);
        sub_238A18724(v36);
        MEMORY[0x23EE6D820](v36, -1, -1);
        MEMORY[0x23EE6D820](v35, -1, -1);
      }

      (*(v57 + 8))(v59, v58);
      sub_238A1686C();
      swift_allocError();
      v39 = v38;
      MEMORY[0x23EE6D770](v22);
      IdentityDocumentPresentmentError.init(error:)(v22, v39);
      swift_willThrow();
      v32 = v22;
    }

    return MEMORY[0x23EE6D760](v32);
  }

  else
  {
    v60 = v9;
    v61 = v6;

    v24 = v56;
    (*(v56 + 32))(v17, v15, v12);
    v25 = sub_238A1F730();
    v55 = v17;
    sub_238A1F450();
    v26 = v8;
    v27 = v60;
    sub_238A1F4A0();
    (*(v53 + 8))(v11, v27);
    v41 = sub_238A16040(v26);
    v42 = v55;
    (*(v54 + 8))(v26, v61);
    v43 = *(v25 + 16);
    if (v43)
    {
      v61 = v41;
      v62 = MEMORY[0x277D84F90];
      sub_238A18804(0, v43, 0);
      v44 = 32;
      v45 = v62;
      do
      {

        v47 = MEMORY[0x23EE6D4A0](v46);
        v62 = v45;
        v49 = *(v45 + 16);
        v48 = *(v45 + 24);
        if (v49 >= v48 >> 1)
        {
          v60 = v47;
          sub_238A18804((v48 > 1), v49 + 1, 1);
          v47 = v60;
          v45 = v62;
        }

        *(v45 + 16) = v49 + 1;
        *(v45 + 8 * v49 + 32) = v47;
        v44 += 8;
        --v43;
      }

      while (v43);
      (*(v56 + 8))(v42, v12);

      v41 = v61;
    }

    else
    {

      result = (*(v24 + 8))(v42, v12);
      v45 = MEMORY[0x277D84F90];
    }

    v50 = v52;
    *v52 = v41;
    v50[1] = v45;
  }

  return result;
}

unint64_t sub_238A186CC()
{
  result = qword_27DF49A10;
  if (!qword_27DF49A10)
  {
    sub_238A1F460();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A10);
  }

  return result;
}

uint64_t sub_238A18724(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A20, &unk_238A1FE60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_238A1878C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A18B6C(a1, a2, a3, *v3, &qword_27DF49A40, &unk_238A1FEE0, &type metadata for ISO18013MobileDocumentRequest.DocumentRequestSet);
  *v3 = result;
  return result;
}

char *sub_238A187C4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A18940(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A187E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A18A60(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A18804(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A18B6C(a1, a2, a3, *v3, &qword_27DF49A38, &qword_238A1FED8, &type metadata for ISO18013MobileDocumentRequest.RequestAuthentication);
  *v3 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for IdentityDocumentWebPresentmentRawRequestValidator(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IdentityDocumentWebPresentmentRawRequestValidator(_WORD *result, int a2, int a3)
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

void *sub_238A18920(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238A18C78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_238A18940(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D8, &qword_238A1FE18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_238A18A60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF499D0, &unk_238A1FEF0);
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

char *sub_238A18B6C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_238A18C78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A28, &qword_238A1FEC8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A30, &qword_238A1FED0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest::PresentmentRequest __swiftcall ISO18013MobileDocumentRequest.PresentmentRequest.init(documentRequestSets:isMandatory:)(IdentityDocumentServices::ISO18013MobileDocumentRequest::PresentmentRequest documentRequestSets, Swift::Bool isMandatory)
{
  *v2 = documentRequestSets.documentRequestSets._rawValue;
  *(v2 + 8) = isMandatory;
  documentRequestSets.isMandatory = isMandatory;
  return documentRequestSets;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest::DocumentRequest __swiftcall ISO18013MobileDocumentRequest.DocumentRequest.init(documentType:namespaces:)(Swift::String documentType, Swift::OpaquePointer namespaces)
{
  *v2 = documentType;
  *(v2 + 16) = namespaces;
  result.documentType = documentType;
  result.namespaces = namespaces;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.RequestAuthentication.init(authenticationCertificateChain:)@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x23EE6D4A0]();
  *a1 = result;
  return result;
}

IdentityDocumentServices::ISO18013MobileDocumentRequest __swiftcall ISO18013MobileDocumentRequest.init(presentmentRequests:requestAuthentications:)(Swift::OpaquePointer presentmentRequests, Swift::OpaquePointer requestAuthentications)
{
  v2->_rawValue = presentmentRequests._rawValue;
  v2[1]._rawValue = requestAuthentications._rawValue;
  result.requestAuthentications = requestAuthentications;
  result.presentmentRequests = presentmentRequests;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.presentmentRequests.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.requestAuthentications.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.RequestAuthentication.authenticationCertificateChain.setter()
{
  v1 = MEMORY[0x23EE6D4A0]();

  *v0 = v1;
  return result;
}

uint64_t (*ISO18013MobileDocumentRequest.RequestAuthentication.authenticationCertificateChain.modify(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_238A1F990();
  return sub_238A18F4C;
}

uint64_t sub_238A18F4C(void *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    v4 = MEMORY[0x23EE6D4A0](v3);

    *v2 = v4;
  }

  else
  {
    v6 = MEMORY[0x23EE6D4A0](*a1);

    *v2 = v6;
  }

  return result;
}

uint64_t ISO18013MobileDocumentRequest.PresentmentRequest.documentRequestSets.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequestSet.requests.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.documentType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.documentType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ISO18013MobileDocumentRequest.DocumentRequest.namespaces.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_238A191B4@<X0>(uint64_t *a2@<X8>)
{
  result = sub_238A1F990();
  *a2 = result;
  return result;
}

uint64_t sub_238A191E0(void *a1, uint64_t *a2)
{

  result = MEMORY[0x23EE6D4A0](v3);
  *a2 = result;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_238A19228(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_238A19270(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_238A192F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_238A1933C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238A1938C(uint64_t *a1, int a2)
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

uint64_t sub_238A193D4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238A19434(uint64_t a1, int a2)
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

uint64_t sub_238A1947C(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ISO18013MobileDocumentRequest.ElementInfo(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ISO18013MobileDocumentRequest.ElementInfo(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t ISO18013MobileDocumentResponse.responseData.getter()
{
  v1 = *v0;
  sub_238A19674(*v0, *(v0 + 8));
  return v1;
}

void sub_238A19674(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return;
    }
  }
}

uint64_t ISO18013MobileDocumentResponse.init(responseData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
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

uint64_t sub_238A196EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_238A19740(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

IdentityDocumentServices::IdentityDocumentPresentmentError __swiftcall IdentityDocumentPresentmentError.init(code:debugDescription:)(IdentityDocumentServices::IdentityDocumentPresentmentError::Code code, Swift::String_optional debugDescription)
{
  v3 = *code;
  if (!debugDescription.value._object)
  {
    v4 = v2;
    if (*code <= 1u)
    {
      if (*code)
      {
        *&code = sub_238A1F600();
      }

      else
      {
        *&code = sub_238A1F5F0();
      }

      goto LABEL_11;
    }

    if (v3 != 2)
    {
      if (v3 == 3)
      {
        *&code = sub_238A1F630();
      }

      else
      {
        *&code = sub_238A1F5E0();
      }

LABEL_11:
      debugDescription.value._object = v5;
      debugDescription.value._countAndFlagsBits = code;
      v2 = v4;
      goto LABEL_12;
    }

    *&code = sub_238A1F640();
    v2 = v4;
    debugDescription.value._object = v6;
    debugDescription.value._countAndFlagsBits = code;
  }

LABEL_12:
  *v2 = v3;
  *(v2 + 8) = debugDescription;
  result.debugDescription = debugDescription.value;
  result.code = code;
  return result;
}

IdentityDocumentServices::IdentityDocumentPresentmentError::Code_optional __swiftcall IdentityDocumentPresentmentError.Code.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238A19854()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

uint64_t sub_238A198C8(uint64_t a1)
{
  v2 = *v1;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v2);
  return sub_238A1FAA0();
}

uint64_t IdentityDocumentPresentmentError.debugDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t static IdentityDocumentPresentmentError.Code.~= infix(_:_:)(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  MEMORY[0x23EE6D770](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  result = swift_dynamicCast();
  if (result)
  {

    return v2 == v4;
  }

  return result;
}

unint64_t sub_238A19A34()
{
  result = qword_27DF49A48;
  if (!qword_27DF49A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A48);
  }

  return result;
}

uint64_t sub_238A19A8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238A19AD4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IdentityDocumentPresentmentError.Code(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IdentityDocumentPresentmentError.Code(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t IdentityDocumentWebPresentmentRawRequest.RequestType.hashValue.getter()
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t sub_238A19D00()
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t sub_238A19D6C(uint64_t a1)
{
  sub_238A1FA80();
  MEMORY[0x23EE6D590](0);
  return sub_238A1FAA0();
}

uint64_t IdentityDocumentWebPresentmentRawRequest.requestData.getter()
{
  v1 = *v0;
  sub_238A19674(*v0, *(v0 + 8));
  return v1;
}

uint64_t IdentityDocumentWebPresentmentRawRequest.requestData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_238A19E40(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_238A19E40(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_238A19EC0()
{
  result = qword_27DF49A50;
  if (!qword_27DF49A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A50);
  }

  return result;
}

uint64_t IdentityDocumentProviderRegistrationStore.RegistrationError.hashValue.getter()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

unint64_t sub_238A19FC8()
{
  result = qword_27DF49A58;
  if (!qword_27DF49A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A58);
  }

  return result;
}

unint64_t sub_238A1A020()
{
  result = qword_27DF49A60;
  if (!qword_27DF49A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A60);
  }

  return result;
}

uint64_t _s14descr284B596F1O17RegistrationErrorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr284B596F1O17RegistrationErrorOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_238A1A1C4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_238A1F8A0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_238A1F7A0();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1A2F8, v1, 0);
}

uint64_t sub_238A1A2F8(uint64_t a1)
{
  v16 = v1;
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[11];
  v6 = v1[8];
  v7 = v1[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_238A1DCFC(0x737574617473, 0xE600000000000000, &v15);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s called", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EE6D820](v9, -1, -1);
    MEMORY[0x23EE6D820](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[12] = v10;
  v14 = (*MEMORY[0x277CFF1F8] + MEMORY[0x277CFF1F8]);
  v11 = swift_task_alloc();
  v1[13] = v11;
  *v11 = v1;
  v11[1] = sub_238A1A4AC;
  v12 = v1[7];

  return v14(v12);
}

uint64_t sub_238A1A4AC()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_238A1A724;
  }

  else
  {
    v4 = sub_238A1A5D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_238A1A5D8()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v3 + 32))(v1, *(v0 + 56), v2);
  v4 = (*(v3 + 88))(v1, v2);
  if (v4 == *MEMORY[0x277CFF1D8])
  {
    v5 = 0;
  }

  else if (v4 == *MEMORY[0x277CFF1F0])
  {
    v5 = 1;
  }

  else if (v4 == *MEMORY[0x277CFF1E8])
  {
    v5 = 2;
  }

  else
  {
    if (v4 != *MEMORY[0x277CFF1E0])
    {
      (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    }

    v5 = 3;
  }

  **(v0 + 16) = v5;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_238A1A724(uint64_t a1)
{
  v18 = v1;
  v2 = *(v1 + 112);
  sub_238A1F470();
  MEMORY[0x23EE6D770](v2);
  v3 = sub_238A1F790();
  v4 = sub_238A1F9C0();
  MEMORY[0x23EE6D760](v2);
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v1 + 112);
  v7 = *(v1 + 96);
  v8 = *(v1 + 80);
  v9 = *(v1 + 64);
  if (v5)
  {
    v16 = *(v1 + 96);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_238A1DCFC(0x737574617473, 0xE600000000000000, &v17);
    *(v10 + 12) = 2112;
    MEMORY[0x23EE6D770](v6);
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_238A14000, v3, v4, "IdentityDocumentProviderRegistrationStore %s failed with error %@", v10, 0x16u);
    sub_238A17D1C(v11, &qword_27DF49A20, &unk_238A1FE60);
    MEMORY[0x23EE6D820](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6D820](v12, -1, -1);
    MEMORY[0x23EE6D820](v10, -1, -1);

    MEMORY[0x23EE6D760](v6);
    v16(v8, v9);
  }

  else
  {
    MEMORY[0x23EE6D760](*(v1 + 112));

    v7(v8, v9);
  }

  **(v1 + 16) = 3;

  v14 = *(v1 + 8);

  return v14();
}

uint64_t sub_238A1A960()
{
  v1[3] = v0;
  v2 = sub_238A1F870();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8);
  v1[7] = swift_task_alloc();
  v3 = sub_238A1F890();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  v1[12] = swift_task_alloc();
  v4 = type metadata accessor for MobileDocumentRegistration(0);
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_238A1F800();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v6 = sub_238A1F8F0();
  v1[19] = v6;
  v1[20] = *(v6 - 8);
  v1[21] = swift_task_alloc();
  v7 = sub_238A1F7A0();
  v1[22] = v7;
  v1[23] = *(v7 - 8);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1AC80, v0, 0);
}

uint64_t sub_238A1AC80(uint64_t a1)
{
  v16 = v1;
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[26];
  v6 = v1[22];
  v7 = v1[23];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_238A1DCFC(0x6172747369676572, 0xED0000736E6F6974, &v15);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s called", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EE6D820](v9, -1, -1);
    MEMORY[0x23EE6D820](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v1[27] = v10;
  v14 = (*MEMORY[0x277CFF1B0] + MEMORY[0x277CFF1B0]);
  v11 = swift_task_alloc();
  v1[28] = v11;
  *v11 = v1;
  v11[1] = sub_238A1AE44;
  v12 = v1[21];

  return v14(v12);
}

uint64_t sub_238A1AE44()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_238A1B40C;
  }

  else
  {
    v4 = sub_238A1AF70;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_238A1AF70()
{
  v53 = v0;
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_238A1F8E0();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v0[17];
    v44 = v0[14];
    v45 = v0[15];
    v7 = *(v6 + 16);
    v6 += 16;
    v42 = v7;
    v43 = v0[13];
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v40 = (v6 - 8);
    v41 = *(v6 + 56);
    v9 = MEMORY[0x277D84F90];
    v46 = v0;
    do
    {
      v10 = v0[18];
      v12 = v0[15];
      v11 = v0[16];
      v13 = v0[12];
      v42(v10, v8, v11);
      v14 = sub_238A1F7C0();
      v47 = v15;
      v49 = v14;
      v16 = sub_238A1F7F0();
      v17 = v9;
      v18 = sub_238A1F7E0();
      v20 = v19;
      sub_238A1F7D0();
      (*v40)(v10, v11);
      v21 = *(v43 + 28);
      v22 = sub_238A1F440();
      (*(*(v22 - 8) + 56))(v12 + v21, 1, 1, v22);
      *v12 = v49;
      v45[1] = v47;
      v45[2] = v16;
      v45[3] = v18;
      v45[4] = v20;
      v9 = v17;
      sub_238A1DE14(v13, v12 + v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_238A1DB24(0, v17[2] + 1, 1, v17);
      }

      v24 = v9[2];
      v23 = v9[3];
      v0 = v46;
      if (v24 >= v23 >> 1)
      {
        v9 = sub_238A1DB24((v23 > 1), v24 + 1, 1, v9);
      }

      v25 = v46[15];
      v9[2] = v24 + 1;
      sub_238A1DE84(v25, v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v24);
      v8 += v41;
      --v5;
    }

    while (v5);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  sub_238A1F470();

  v26 = sub_238A1F790();
  v27 = sub_238A1F9C0();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v0[27];
  v30 = v0[25];
  v31 = v0[22];
  if (v28)
  {
    v50 = v0[27];
    v32 = v0[13];
    v48 = v0[25];
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v52 = v34;
    *v33 = 136315394;
    *(v33 + 4) = sub_238A1DCFC(0x6172747369676572, 0xED0000736E6F6974, &v52);
    *(v33 + 12) = 2080;
    v35 = MEMORY[0x23EE6D480](v9, v32);
    v37 = sub_238A1DCFC(v35, v36, &v52);

    *(v33 + 14) = v37;
    _os_log_impl(&dword_238A14000, v26, v27, "IdentityDocumentProviderRegistrationStore %s returning %s", v33, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v34, -1, -1);
    MEMORY[0x23EE6D820](v33, -1, -1);

    v50(v48, v31);
  }

  else
  {

    v29(v30, v31);
  }

  v51 = sub_238A1B8B0(v9);

  v38 = v0[1];

  return v38(v51);
}

uint64_t sub_238A1B40C()
{
  v49 = v0;
  v0[2] = v0[29];
  v1 = v0[9];
  MEMORY[0x23EE6D770]();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v5 = v0[10];
    v4 = v0[11];
    v6 = v0[8];
    v7 = v0[9];
    v8 = v0[7];
    v3(v8, 0, 1, v6);
    (*(v7 + 32))(v4, v8, v6);
    sub_238A1F470();
    (*(v7 + 16))(v5, v4, v6);
    v9 = sub_238A1F790();
    v10 = sub_238A1F9D0();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v0[27];
    v13 = v0[24];
    v14 = v0[22];
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];
    if (v11)
    {
      v18 = swift_slowAlloc();
      v47 = v13;
      v19 = swift_slowAlloc();
      v48 = v19;
      *v18 = 136446210;
      v45 = v14;
      v46 = v12;
      v20 = sub_238A17E24();
      v22 = v21;
      v44 = v10;
      v23 = *(v16 + 8);
      v23(v15, v17);
      v24 = sub_238A1DCFC(v20, v22, &v48);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_238A14000, v9, v44, "An error occurred while fetching registrations: %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EE6D820](v19, -1, -1);
      v25 = v18;
      v26 = v23;
      MEMORY[0x23EE6D820](v25, -1, -1);

      v46(v47, v45);
    }

    else
    {

      v26 = *(v16 + 8);
      v26(v15, v17);
      v12(v13, v14);
    }

    v30 = v0[5];
    v31 = v0[6];
    v32 = v0[4];
    sub_238A1A020();
    swift_allocError();
    v34 = v33;
    sub_238A1F880();
    v35 = (*(v30 + 88))(v31, v32);
    if (v35 == *MEMORY[0x277CFF1D0])
    {
      *v34 = 0;
    }

    else if (v35 == *MEMORY[0x277CFF1C8])
    {
      *v34 = 1;
    }

    else if (v35 == *MEMORY[0x277CFF1B8])
    {
      *v34 = 3;
    }

    else if (v35 == *MEMORY[0x277CFF1C0])
    {
      *v34 = 2;
    }

    else
    {
      v37 = v0[5];
      v36 = v0[6];
      v38 = v0[4];
      *v34 = 0;
      (*(v37 + 8))(v36, v38);
    }

    v39 = v0[29];
    v40 = v0[11];
    v41 = v0[8];
    swift_willThrow();
    MEMORY[0x23EE6D760](v39);
    v26(v40, v41);
  }

  else
  {
    v27 = v0[29];
    v28 = v0[7];
    v3(v28, 1, 1, v0[8]);
    sub_238A17D1C(v28, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v27);
  }

  v42 = v0[1];

  return v42();
}

uint64_t sub_238A1B8B0(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v17 = MEMORY[0x277D84F90];
    sub_238A18920(0, v6, 0);
    v7 = v17;
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    do
    {
      sub_238A1EBC8(v8, v5);
      v17 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_238A18920((v10 > 1), v11 + 1, 1);
        v7 = v17;
      }

      v15 = v2;
      v16 = &protocol witness table for MobileDocumentRegistration;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_238A1EBC8(v5, boxed_opaque_existential_1);
      *(v7 + 16) = v11 + 1;
      sub_238A15FE4(&v14, v7 + 40 * v11 + 32);
      sub_238A1DFBC(v5);
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t IdentityDocumentProviderRegistrationStore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_238A1F8B0();
  v2[3] = sub_238A1F8D0();
  v2[4] = MEMORY[0x277CFF208];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_238A1F8C0();
  *(v0 + 112) = sub_238A1F850();
  return v0;
}

uint64_t IdentityDocumentProviderRegistrationStore.init()()
{
  swift_defaultActor_initialize();
  sub_238A1F8B0();
  v2[3] = sub_238A1F8D0();
  v2[4] = MEMORY[0x277CFF208];
  __swift_allocate_boxed_opaque_existential_1(v2);
  sub_238A1F8C0();
  *(v0 + 112) = sub_238A1F850();
  return v0;
}

uint64_t sub_238A1BB30(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v5 = sub_238A1F870();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8);
  v3[9] = swift_task_alloc();
  v6 = sub_238A1F890();
  v3[10] = v6;
  v3[11] = *(v6 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v7 = sub_238A1F840();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  v3[17] = swift_task_alloc();
  v8 = sub_238A1F800();
  v3[18] = v8;
  v3[19] = *(v8 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A78, &unk_238A20608);
  v3[22] = swift_task_alloc();
  v9 = type metadata accessor for MobileDocumentRegistration(0);
  v3[23] = v9;
  v3[24] = *(v9 - 8);
  v3[25] = swift_task_alloc();
  v3[26] = *(a2 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v10 = sub_238A1F7A0();
  v3[30] = v10;
  v3[31] = *(v10 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1BF18, v2, 0);
}

uint64_t sub_238A1BF18(uint64_t a1)
{
  v56 = v1;
  v2 = v1[29];
  v3 = v1[26];
  v5 = v1[3];
  v4 = v1[4];
  sub_238A1F470();
  v6 = *(v3 + 16);
  v6(v2, v5, v4);
  v7 = sub_238A1F790();
  v8 = sub_238A1F9C0();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[35];
  v12 = v1[30];
  v11 = v1[31];
  v13 = v1[29];
  if (v9)
  {
    v50 = v1[30];
    v52 = v1[35];
    v14 = v1[28];
    v15 = v1[26];
    v16 = v1[4];
    v53 = v6;
    v17 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v55[0] = v48;
    *v17 = 136315394;
    *(v17 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, v55);
    *(v17 + 12) = 2080;
    v53(v14, v13, v16);
    v18 = sub_238A1F940();
    v46 = v8;
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_238A1DCFC(v18, v20, v55);

    *(v17 + 14) = v21;
    _os_log_impl(&dword_238A14000, v7, v46, "IdentityDocumentProviderRegistrationStore %s called with registration %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v48, -1, -1);
    v22 = v17;
    v6 = v53;
    MEMORY[0x23EE6D820](v22, -1, -1);

    v23 = *(v11 + 8);
    v23(v52, v50);
  }

  else
  {
    v24 = v1[26];
    v25 = v1[4];

    (*(v24 + 8))(v13, v25);
    v23 = *(v11 + 8);
    v23(v10, v12);
  }

  v1[36] = v23;
  v26 = v1[24];
  v6(v1[27], v1[3], v1[4]);
  v27 = swift_dynamicCast();
  v28 = *(v26 + 56);
  v30 = v1[22];
  v29 = v1[23];
  if (v27)
  {
    v31 = v1[25];
    v47 = v1[21];
    v49 = v1[20];
    v32 = v1[19];
    v33 = v1[17];
    v51 = v1[18];
    v28(v30, 0, 1, v29);
    sub_238A1DE84(v30, v31);
    sub_238A1DF4C(v31 + *(v29 + 28), v33);

    sub_238A1F7B0();
    (*(v32 + 16))(v49, v47, v51);
    sub_238A1F830();
    v54 = (*MEMORY[0x277CFF200] + MEMORY[0x277CFF200]);
    v34 = swift_task_alloc();
    v1[37] = v34;
    *v34 = v1;
    v34[1] = sub_238A1C540;
    v35 = v1[16];

    return v54(v35);
  }

  else
  {
    v28(v1[22], 1, 1, v1[23]);
    sub_238A17D1C(v30, &qword_27DF49A78, &unk_238A20608);
    sub_238A1F470();
    v37 = sub_238A1F790();
    v38 = sub_238A1F9C0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v1[33];
    v41 = v1[30];
    if (v39)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v55[0] = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, v55);
      _os_log_impl(&dword_238A14000, v37, v38, "IdentityDocumentProviderRegistrationStore %s failed to cast registration to MobileDocumentRegistration. Throwing invalidRequest error", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x23EE6D820](v43, -1, -1);
      MEMORY[0x23EE6D820](v42, -1, -1);
    }

    v23(v40, v41);
    sub_238A1A020();
    swift_allocError();
    *v44 = 1;
    swift_willThrow();

    v45 = v1[1];

    return v45();
  }
}

uint64_t sub_238A1C540()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_238A1C950;
  }

  else
  {
    v4 = sub_238A1C66C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_238A1C66C(uint64_t a1)
{
  v23 = v1;
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[30];
  v6 = v1[25];
  v7 = v1[21];
  v8 = v1[19];
  v20 = v1[36];
  v21 = v1[18];
  v9 = v1[15];
  v18 = v1[34];
  v19 = v1[16];
  v10 = v1[14];
  if (v4)
  {
    v17 = v1[25];
    v11 = swift_slowAlloc();
    v16 = v7;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_238A1DCFC(0xD000000000000013, 0x8000000238A207F0, &v22);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s finished successfully", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6D820](v12, -1, -1);
    MEMORY[0x23EE6D820](v11, -1, -1);

    v20(v18, v5);
    (*(v9 + 8))(v19, v10);
    (*(v8 + 8))(v16, v21);
    v13 = v17;
  }

  else
  {

    v20(v18, v5);
    (*(v9 + 8))(v19, v10);
    (*(v8 + 8))(v7, v21);
    v13 = v6;
  }

  sub_238A1DFBC(v13);

  v14 = v1[1];

  return v14();
}

uint64_t sub_238A1C950()
{
  v54 = v0;
  v1 = v0[38];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v5 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v4 + 8))(v2, v3);
  v0[2] = v1;
  MEMORY[0x23EE6D770](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v6 = swift_dynamicCast();
  v7 = *(v5 + 56);
  if (v6)
  {
    v9 = v0[12];
    v8 = v0[13];
    v10 = v0[10];
    v11 = v0[11];
    v12 = v0[9];
    v7(v12, 0, 1, v10);
    (*(v11 + 32))(v8, v12, v10);
    sub_238A1F470();
    (*(v11 + 16))(v9, v8, v10);
    v13 = sub_238A1F790();
    v14 = sub_238A1F9D0();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[36];
    v17 = v0[32];
    v18 = v0[30];
    v20 = v0[11];
    v19 = v0[12];
    v21 = v0[10];
    if (v15)
    {
      v52 = v0[32];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v53 = v23;
      *v22 = 136446210;
      v50 = v18;
      v51 = v16;
      v24 = sub_238A17E24();
      v26 = v25;
      v49 = v14;
      v27 = *(v20 + 8);
      v27(v19, v21);
      v28 = sub_238A1DCFC(v24, v26, &v53);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_238A14000, v13, v49, "An error occurred while adding a registration: %{public}s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v29 = v23;
      v30 = v27;
      MEMORY[0x23EE6D820](v29, -1, -1);
      MEMORY[0x23EE6D820](v22, -1, -1);

      v51(v52, v50);
    }

    else
    {

      v30 = *(v20 + 8);
      v30(v19, v21);
      v16(v17, v18);
    }

    v35 = v0[7];
    v36 = v0[8];
    v37 = v0[6];
    sub_238A1A020();
    swift_allocError();
    v39 = v38;
    sub_238A1F880();
    v40 = (*(v35 + 88))(v36, v37);
    if (v40 == *MEMORY[0x277CFF1D0])
    {
      *v39 = 0;
    }

    else if (v40 == *MEMORY[0x277CFF1C8])
    {
      *v39 = 1;
    }

    else if (v40 == *MEMORY[0x277CFF1B8])
    {
      *v39 = 3;
    }

    else if (v40 == *MEMORY[0x277CFF1C0])
    {
      *v39 = 2;
    }

    else
    {
      v42 = v0[7];
      v41 = v0[8];
      v43 = v0[6];
      *v39 = 0;
      (*(v42 + 8))(v41, v43);
    }

    v44 = v0[38];
    v32 = v0[25];
    v45 = v0[13];
    v46 = v0[10];
    swift_willThrow();
    MEMORY[0x23EE6D760](v44);
    v30(v45, v46);
  }

  else
  {
    v31 = v0[38];
    v32 = v0[25];
    v33 = v0[9];
    v7(v33, 1, 1, v0[10]);
    sub_238A17D1C(v33, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v31);
  }

  sub_238A1DFBC(v32);

  v47 = v0[1];

  return v47();
}

uint64_t sub_238A1CE84(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_238A1F870();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A68, &qword_238A205E8);
  v3[9] = swift_task_alloc();
  v5 = sub_238A1F890();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v6 = sub_238A1F820();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();
  v7 = sub_238A1F7A0();
  v3[17] = v7;
  v3[18] = *(v7 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238A1D0B8, v2, 0);
}

uint64_t sub_238A1D0B8(uint64_t a1)
{
  v18 = v1;
  sub_238A1F470();

  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[21];
  v6 = v1[17];
  v7 = v1[18];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_238A1DCFC(0xD00000000000002ALL, 0x8000000238A20810, &v17);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_238A1DCFC(v9, v8, &v17);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s called with documentIdentifier %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EE6D820](v11, -1, -1);
    MEMORY[0x23EE6D820](v10, -1, -1);
  }

  v12 = *(v7 + 8);
  v12(v5, v6);
  v1[22] = v12;

  sub_238A1F810();
  v16 = (*MEMORY[0x277CFF1A8] + MEMORY[0x277CFF1A8]);
  v13 = swift_task_alloc();
  v1[23] = v13;
  *v13 = v1;
  v13[1] = sub_238A1D2E0;
  v14 = v1[16];

  return v16(v14);
}

uint64_t sub_238A1D2E0()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_238A1D620;
  }

  else
  {
    v4 = sub_238A1D40C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_238A1D40C(uint64_t a1)
{
  v18 = v1;
  sub_238A1F470();
  v2 = sub_238A1F790();
  v3 = sub_238A1F9C0();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  v6 = v1[20];
  v7 = v1[17];
  v9 = v1[15];
  v8 = v1[16];
  v10 = v1[14];
  if (v4)
  {
    v16 = v1[16];
    v11 = swift_slowAlloc();
    v15 = v5;
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_238A1DCFC(0xD00000000000002ALL, 0x8000000238A20810, &v17);
    _os_log_impl(&dword_238A14000, v2, v3, "IdentityDocumentProviderRegistrationStore %s finished successfully", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23EE6D820](v12, -1, -1);
    MEMORY[0x23EE6D820](v11, -1, -1);

    v15(v6, v7);
    (*(v9 + 8))(v16, v10);
  }

  else
  {

    v5(v6, v7);
    (*(v9 + 8))(v8, v10);
  }

  v13 = v1[1];

  return v13();
}

uint64_t sub_238A1D620()
{
  v49 = v0;
  v1 = v0[24];
  v2 = v0[11];
  (*(v0[15] + 8))(v0[16], v0[14]);
  v0[2] = v1;
  MEMORY[0x23EE6D770](v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A18, &qword_238A20150);
  v3 = swift_dynamicCast();
  v4 = *(v2 + 56);
  if (v3)
  {
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = v0[9];
    v4(v9, 0, 1, v7);
    (*(v8 + 32))(v5, v9, v7);
    sub_238A1F470();
    (*(v8 + 16))(v6, v5, v7);
    v10 = sub_238A1F790();
    v11 = sub_238A1F9D0();
    v12 = os_log_type_enabled(v10, v11);
    v13 = v0[22];
    v14 = v0[19];
    v15 = v0[17];
    v17 = v0[11];
    v16 = v0[12];
    v18 = v0[10];
    if (v12)
    {
      v47 = v0[19];
      v19 = swift_slowAlloc();
      v46 = v15;
      v20 = swift_slowAlloc();
      v48 = v20;
      *v19 = 136446210;
      v45 = v13;
      v21 = sub_238A17E24();
      v23 = v22;
      v24 = v18;
      v25 = *(v17 + 8);
      v25(v16, v24);
      v26 = sub_238A1DCFC(v21, v23, &v48);

      *(v19 + 4) = v26;
      _os_log_impl(&dword_238A14000, v10, v11, "An error occurred while removing a registration: %{public}s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x23EE6D820](v20, -1, -1);
      MEMORY[0x23EE6D820](v19, -1, -1);

      v45(v47, v46);
    }

    else
    {

      v30 = v18;
      v25 = *(v17 + 8);
      v25(v16, v30);
      v13(v14, v15);
    }

    v32 = v0[7];
    v31 = v0[8];
    v33 = v0[6];
    sub_238A1A020();
    swift_allocError();
    v35 = v34;
    sub_238A1F880();
    v36 = (*(v32 + 88))(v31, v33);
    if (v36 == *MEMORY[0x277CFF1D0])
    {
      *v35 = 0;
    }

    else if (v36 == *MEMORY[0x277CFF1C8])
    {
      *v35 = 1;
    }

    else if (v36 == *MEMORY[0x277CFF1B8])
    {
      *v35 = 3;
    }

    else if (v36 == *MEMORY[0x277CFF1C0])
    {
      *v35 = 2;
    }

    else
    {
      v38 = v0[7];
      v37 = v0[8];
      v39 = v0[6];
      *v35 = 0;
      (*(v38 + 8))(v37, v39);
    }

    v40 = v0[24];
    v41 = v0[13];
    v42 = v0[10];
    swift_willThrow();
    MEMORY[0x23EE6D760](v40);
    v25(v41, v42);
  }

  else
  {
    v27 = v0[24];
    v28 = v0[9];
    v4(v28, 1, 1, v0[10]);
    sub_238A17D1C(v28, &qword_27DF49A68, &qword_238A205E8);
    sub_238A1A020();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    MEMORY[0x23EE6D760](v27);
  }

  v43 = v0[1];

  return v43();
}

uint64_t IdentityDocumentProviderRegistrationStore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t IdentityDocumentProviderRegistrationStore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_238A1DB24(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A80, &qword_238A206B0);
  v10 = *(type metadata accessor for MobileDocumentRegistration(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for MobileDocumentRegistration(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_238A1DCFC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_238A1E6EC(v11, 0, 0, 1, a1, a2);
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
    sub_238A1EC2C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_238A1DE14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1DE84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
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

uint64_t sub_238A1DF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1DFBC(uint64_t a1)
{
  v2 = type metadata accessor for MobileDocumentRegistration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.status.getter(uint64_t a1)
{
  v6 = (*(*v1 + 96) + **(*v1 + 96));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238A1E178;

  return v6(a1);
}

uint64_t sub_238A1E178()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.registrations.getter()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_238A1E37C;

  return v4();
}

uint64_t sub_238A1E37C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.addRegistration<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 120) + **(*v3 + 120));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_238A1E178;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of IdentityDocumentProviderRegistrationStore.removeRegistration(forDocumentIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_238A1EC88;

  return v8(a1, a2);
}

unint64_t sub_238A1E6EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_238A1E7F8(a5, a6);
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
    result = sub_238A1FA10();
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

void *sub_238A1E7F8(uint64_t a1, unint64_t a2)
{
  v3 = sub_238A1E844(a1, a2);
  sub_238A1E974(&unk_284B59738);
  return v3;
}

void *sub_238A1E844(uint64_t a1, unint64_t a2)
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

  v6 = sub_238A1EA60(v5, 0);
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

  result = sub_238A1FA10();
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
        v10 = sub_238A1F970();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_238A1EA60(v10, 0);
        result = sub_238A1FA00();
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

uint64_t sub_238A1E974(uint64_t result)
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

  result = sub_238A1EAD4(result, v11, 1, v3);
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

void *sub_238A1EA60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A88, &qword_238A206B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_238A1EAD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A88, &qword_238A206B8);
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

uint64_t sub_238A1EBC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentRegistration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238A1EC2C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t IdentityDocumentProviderRegistrationStore.Status.hashValue.getter()
{
  v1 = *v0;
  sub_238A1FA80();
  MEMORY[0x23EE6D590](v1);
  return sub_238A1FAA0();
}

unint64_t sub_238A1ED18()
{
  result = qword_27DF49A90;
  if (!qword_27DF49A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF49A90);
  }

  return result;
}

uint64_t MobileDocumentRegistration.init(mobileDocumentType:supportedAuthorityKeyIdentifiers:documentIdentifier:invalidationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = *(type metadata accessor for MobileDocumentRegistration(0) + 28);
  v15 = sub_238A1F440();
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  *(a7 + 3) = a4;
  *(a7 + 4) = a5;

  return sub_238A1DE14(a6, &a7[v14]);
}

uint64_t type metadata accessor for MobileDocumentRegistration(uint64_t a1)
{
  result = qword_27DF49A98;
  if (!qword_27DF49A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileDocumentRegistration.mobileDocumentType.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MobileDocumentRegistration.mobileDocumentType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MobileDocumentRegistration.supportedAuthorityKeyIdentifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t MobileDocumentRegistration.documentIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentRegistration.documentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t MobileDocumentRegistration.invalidationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration(0) + 28);

  return sub_238A1DF4C(v3, a1);
}

uint64_t MobileDocumentRegistration.invalidationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MobileDocumentRegistration(0) + 28);

  return sub_238A1DE14(a1, v3);
}

uint64_t sub_238A1F0D0()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_238A1F114(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238A1F1E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF49A70, qword_238A205F0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_238A1F294(uint64_t a1)
{
  sub_238A1F328();
  if (v1 <= 0x3F)
  {
    sub_238A1F378(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_238A1F328()
{
  if (!qword_27DF49AA8)
  {
    v0 = sub_238A1F9B0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DF49AA8);
    }
  }
}

void sub_238A1F378(uint64_t a1)
{
  if (!qword_27DF49AB0)
  {
    sub_238A1F440();
    v1 = sub_238A1F9F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF49AB0);
    }
  }
}