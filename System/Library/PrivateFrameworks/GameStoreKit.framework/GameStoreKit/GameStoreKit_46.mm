uint64_t sub_24EAAC9C4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226F58, &unk_24F97CCE0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  sub_24E60169C(a1, &v21 - v8, &qword_27F226F58, &unk_24F97CCE0);
  v10 = sub_24F924258();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) != 1)
  {
    return sub_24E73A8FC(v9, a2);
  }

  sub_24E601704(v9, &qword_27F226F58, &unk_24F97CCE0);
  v12 = *(v10 + 20);
  v13 = *MEMORY[0x277CE0118];
  v14 = sub_24F924B38();
  (*(*(v14 - 8) + 104))(&a2[v12], v13, v14);
  __asm { FMOV            V0.2D, #8.0 }

  *a2 = _Q0;
  sub_24E6EB910(a2, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  return sub_24E61DA68(v6, a1, &qword_27F226F58, &unk_24F97CCE0);
}

uint64_t sub_24EAACBD0@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_24F927618();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EB8, &qword_24F97CC60);
  sub_24EAAAD30(v2, a2 + *(v5 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226EC0, &qword_24F97CC68);
  *(a2 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_24EAACC38()
{
  result = qword_27F226F00;
  if (!qword_27F226F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226EF8, &qword_24F97CCA0);
    sub_24EAACCC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F00);
  }

  return result;
}

unint64_t sub_24EAACCC4()
{
  result = qword_27F226F08;
  if (!qword_27F226F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F10, &qword_24F97CCA8);
    sub_24EAACD7C();
    sub_24E602068(&qword_27F217388, &qword_27F217390, &unk_24F9454F0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F08);
  }

  return result;
}

unint64_t sub_24EAACD7C()
{
  result = qword_27F226F18;
  if (!qword_27F226F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F20, &qword_24F97CCB0);
    sub_24EAACE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F18);
  }

  return result;
}

unint64_t sub_24EAACE00()
{
  result = qword_27F226F28;
  if (!qword_27F226F28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F30, &qword_24F97CCB8);
    sub_24EAACEBC();
    sub_24EAACF48(&qword_27F226F48, MEMORY[0x277CDFC08], MEMORY[0x277CDFBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F28);
  }

  return result;
}

unint64_t sub_24EAACEBC()
{
  result = qword_27F226F38;
  if (!qword_27F226F38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226F40, &unk_24F97CCC0);
    sub_24E760430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F38);
  }

  return result;
}

uint64_t sub_24EAACF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BaseLeaderboardRowView.BackgroundConfiguration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *storeEnumTagSinglePayload for BaseLeaderboardRowView.BackgroundConfiguration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

uint64_t sub_24EAAD0FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24EAAD144(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24EAAD1A8()
{
  result = qword_27F226F98;
  if (!qword_27F226F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226EC0, &qword_24F97CC68);
    sub_24EAAD260();
    sub_24E602068(&qword_27F212A60, &qword_27F223340, &qword_24F939830, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226F98);
  }

  return result;
}

unint64_t sub_24EAAD260()
{
  result = qword_27F226FA0;
  if (!qword_27F226FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F226FA8, &qword_24F97CE18);
    sub_24E602068(&qword_27F226FB0, &qword_27F226FB8, &qword_24F97CE20, MEMORY[0x277CE11A8]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226FA0);
  }

  return result;
}

unint64_t sub_24EAAD358()
{
  result = qword_27F226FC0;
  if (!qword_27F226FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F226FC0);
  }

  return result;
}

uint64_t sub_24EAAD3D8@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v2);
  v4 = &v47 - v3;
  v5 = *v1;
  v6 = v1[1];
  v47 = v1;
  v49 = v5;
  v50 = v6;
  sub_24E600AEC();

  v7 = sub_24F925E18();
  v9 = v8;
  v11 = v10;
  v12 = sub_24F925C98();
  v14 = v13;
  v16 = v15;
  sub_24E600B40(v7, v9, v11 & 1);

  v17 = sub_24F9251C8();
  v18 = *(v2 + 36);
  v19 = *MEMORY[0x277CE13B8];
  v20 = sub_24F927748();
  (*(*(v20 - 8) + 104))(&v4[v18], v19, v20);
  *v4 = v17;
  sub_24EAAD69C();
  v21 = sub_24F925C58();
  v23 = v22;
  LOBYTE(v2) = v24;
  v26 = v25;
  sub_24E600B40(v12, v14, v16 & 1);

  sub_24EAAD700(v4);
  v49 = v21;
  v50 = v23;
  LOBYTE(v2) = v2 & 1;
  v51 = v2;
  v52 = v26;
  v27 = v48;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, v2);

  LOBYTE(v21) = sub_24F925838();
  sub_24F923318();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2177A8, &unk_24F946390) + 36);
  *v36 = v21;
  *(v36 + 8) = v29;
  *(v36 + 16) = v31;
  *(v36 + 24) = v33;
  *(v36 + 32) = v35;
  *(v36 + 40) = 0;
  LOBYTE(v21) = sub_24F925858();
  sub_24F923318();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217748, &qword_24F946300);
  v46 = v27 + *(result + 36);
  *v46 = v21;
  *(v46 + 8) = v38;
  *(v46 + 16) = v40;
  *(v46 + 24) = v42;
  *(v46 + 32) = v44;
  *(v46 + 40) = 0;
  return result;
}

unint64_t sub_24EAAD69C()
{
  result = qword_27F214428;
  if (!qword_27F214428)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213F10, &unk_24F93BE10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214428);
  }

  return result;
}

uint64_t sub_24EAAD700(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAD76C()
{
  result = qword_27F2177B0;
  if (!qword_27F2177B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217748, &qword_24F946300);
    sub_24E6AFAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2177B0);
  }

  return result;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_24EAAD834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_24EAAD87C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAD914@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0, &unk_24F97D010);
  MEMORY[0x28223BE20](v3 - 8);
  v67 = &v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v68 = (&v62 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v7);
  v9 = &v62 - v8;
  v10 = a1[1];
  v12 = a1[4];
  v11 = a1[5];
  if (v10)
  {
    v69 = *a1;
    v70 = v10;
    sub_24E600AEC();
    v63 = v11;

    v13 = sub_24F925E18();
    v15 = v14;
    v17 = v16;
    v18 = sub_24F925C98();
    v64 = v19;
    v65 = v18;
    v21 = v20;
    sub_24E600B40(v13, v15, v17 & 1);

    LODWORD(v13) = sub_24F9251C8();
    v62 = v12;
    v22 = *(v7 + 36);
    v23 = *MEMORY[0x277CE13B8];
    v24 = sub_24F927748();
    (*(*(v24 - 8) + 104))(&v9[v22], v23, v24);
    *v9 = v13;
    sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
    LOBYTE(v13) = v21;
    v25 = v64;
    v26 = v65;
    v27 = sub_24F925C58();
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_24E600B40(v26, v25, v13 & 1);

    sub_24E601704(v9, &qword_27F213F10, &unk_24F93BE10);
    v34 = v27;
    v35 = v27;
    v36 = v29;
    v37 = v29;
    v12 = v62;
    v11 = v63;
    v64 = v31 & 1;
    sub_24E5FD138(v35, v37, v31 & 1);
    v65 = v33;
  }

  else
  {
    v34 = 0;
    v36 = 0;
    v64 = 0;
    v65 = 0;
  }

  v38 = sub_24F9249A8();
  v39 = v68;
  *v68 = v38;
  v39[1] = 0x4010000000000000;
  *(v39 + 16) = 0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD8, &qword_24F97D020);
  sub_24EAADDB8(a1, v39 + *(v40 + 44));
  if (v11)
  {
    v69 = v12;
    v70 = v11;
    sub_24E600AEC();

    v41 = sub_24F925E18();
    v43 = v42;
    v45 = v44;
    v46 = sub_24F925C98();
    v48 = v47;
    v62 = v36;
    v50 = v49;
    v52 = v51;
    sub_24E600B40(v41, v43, v45 & 1);

    v53 = v50 & 1;
    v36 = v62;
    v63 = v46;
    sub_24E5FD138(v46, v48, v53);
  }

  else
  {
    v63 = 0;
    v48 = 0;
    v53 = 0;
    v52 = 0;
  }

  v54 = v67;
  sub_24EAAE35C(v68, v67);
  v56 = v65;
  v55 = v66;
  *v66 = v34;
  v55[1] = v36;
  v57 = v64;
  v55[2] = v64;
  v55[3] = v56;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE0, &qword_24F97D028);
  sub_24EAAE35C(v54, v55 + *(v58 + 48));
  v59 = (v55 + *(v58 + 64));
  sub_24E65D2B4(v34, v36, v57, v56);
  v60 = v63;
  sub_24E65D2B4(v63, v48, v53, v52);
  sub_24E65D2F8(v34, v36, v57, v56);
  sub_24E65D2F8(v60, v48, v53, v52);
  *v59 = v60;
  v59[1] = v48;
  v59[2] = v53;
  v59[3] = v52;
  sub_24EAAE3CC(v68);
  sub_24E65D2F8(v60, v48, v53, v52);
  sub_24EAAE3CC(v54);
  return sub_24E65D2F8(v34, v36, v57, v56);
}

uint64_t sub_24EAADDB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  v58 = *(v3 - 8);
  v59 = v3;
  MEMORY[0x28223BE20](v3);
  v53 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE8, &qword_24F9802A0);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v57 = &v52 - v8;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v55 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v54 = *(a1 + 48);
  v15 = *(a1 + 64);
  v52 = *(a1 + 56);
  v63 = v13;
  v64 = v14;
  sub_24E600AEC();

  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  v21 = sub_24F925C98();
  v23 = v22;
  LOBYTE(a1) = v24;
  v26 = v25;
  v27 = v20 & 1;
  v28 = v12;
  sub_24E600B40(v16, v18, v27);

  v63 = v21;
  v64 = v23;
  v65 = a1 & 1;
  v66 = v26;
  v29 = 1;
  sub_24F9268B8();
  sub_24E600B40(v21, v23, a1 & 1);

  if (v54)
  {
    v30 = v59;
    v31 = v57;
    if (v15)
    {

      v32 = sub_24F926DF8();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70);
      v34 = v53;
      v35 = (v53 + *(v33 + 36));
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
      v37 = *MEMORY[0x277CE1050];
      v38 = sub_24F926E78();
      (*(*(v38 - 8) + 104))(v35 + v36, v37, v38);
      *v35 = swift_getKeyPath();
      *v34 = v32;
      LODWORD(v32) = sub_24F9251C8();
      v39 = v34 + *(v30 + 36);
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
      v41 = *MEMORY[0x277CE13B8];
      v42 = sub_24F927748();
      (*(*(v42 - 8) + 104))(&v39[v40], v41, v42);
      *v39 = v32;
      sub_24EAAE4AC(v34, v31);
      v29 = 0;
    }
  }

  else
  {
    v30 = v59;
    v31 = v57;
  }

  (*(v58 + 56))(v31, v29, 1, v30);
  v43 = v55;
  v44 = v56;
  v45 = *(v55 + 16);
  v46 = v60;
  v45(v56, v28, v60);
  v47 = v61;
  sub_24EAAE434(v31, v61);
  v48 = v62;
  v45(v62, v44, v46);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FF0, &qword_24F97D038);
  sub_24EAAE434(v47, &v48[*(v49 + 48)]);
  sub_24E601704(v31, &qword_27F226FE8, &qword_24F9802A0);
  v50 = *(v43 + 8);
  v50(v28, v46);
  sub_24E601704(v47, &qword_27F226FE8, &qword_24F9802A0);
  return (v50)(v44, v46);
}

uint64_t sub_24EAAE2C8@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 144);
  v13[8] = *(v2 + 128);
  v14 = v4;
  v15 = *(v2 + 160);
  v16 = *(v2 + 176);
  v5 = *(v2 + 80);
  v13[4] = *(v2 + 64);
  v13[5] = v5;
  v6 = *(v2 + 112);
  v13[6] = *(v2 + 96);
  v13[7] = v6;
  v7 = *(v2 + 16);
  v13[0] = *v2;
  v13[1] = v7;
  v8 = *(v2 + 48);
  v13[2] = *(v2 + 32);
  v13[3] = v8;
  v9 = sub_24F924C98();
  v10 = *(&v14 + 1);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FC8, &qword_24F97D008);
  return sub_24EAAD914(v13, (a2 + *(v11 + 44)));
}

uint64_t sub_24EAAE35C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0, &unk_24F97D010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAE3CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FD0, &unk_24F97D010);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EAAE434(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226FE8, &qword_24F9802A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAE4AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_24EAAE570(uint64_t a1)
{
  sub_24F925A08();
  sub_24F925938();
  v1 = sub_24F9259A8();

  v2 = sub_24F925988();
  v3 = sub_24F925A18();
  v4 = sub_24F925A18();
  v5 = sub_24F925898();
  xmmword_27F39B9F0 = vdupq_n_s64(0x4044000000000000uLL);
  *&qword_27F39BA00 = xmmword_24F97D0C0;
  *&xmmword_27F39BA10 = v1;
  *(&xmmword_27F39BA10 + 1) = v2;
  *&xmmword_27F39BA20 = v3;
  *(&xmmword_27F39BA20 + 1) = v4;
  *&xmmword_27F39BA30 = v5;
  *(&xmmword_27F39BA30 + 8) = xmmword_24F97D0D0;
  result = 16.0;
  *(&xmmword_27F39BA40 + 8) = xmmword_24F97D0E0;
  qword_27F39BA58 = 0x4014000000000000;
  return result;
}

uint64_t sub_24EAAE618(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_24EAAE660(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EAAE6CC()
{
  if (qword_27F210148 != -1)
  {
    swift_once();
  }

  v2[5] = xmmword_27F39BA40;
  v2[6] = unk_27F39BA50;
  v2[0] = xmmword_27F39B9F0;
  v2[1] = *&qword_27F39BA00;
  v2[3] = xmmword_27F39BA20;
  v2[4] = xmmword_27F39BA30;
  v2[2] = xmmword_27F39BA10;
  xmmword_27F39BA60 = xmmword_27F39B9F0;
  xmmword_27F39BAA0 = xmmword_27F39BA30;
  unk_27F39BAB0 = xmmword_27F39BA40;
  qword_27F39BA70 = qword_27F39BA00;
  unk_27F39BA78 = 0x4024000000000000;
  xmmword_27F39BA80 = xmmword_27F39BA10;
  unk_27F39BA90 = xmmword_27F39BA20;
  *&xmmword_27F39BAC0 = 0x4020000000000000;
  *(&xmmword_27F39BAC0 + 1) = qword_27F39BA58;
  return sub_24E784FF8(v2, &v1);
}

uint64_t sub_24EAAE7B0(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227018, &unk_24F97D220);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  MEMORY[0x28223BE20](v5);
  v7 = (&v18 - v6);
  if (a1[1])
  {
  }

  v8 = sub_24F926DF8();
  v9 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF20, &qword_24F93CB70) + 36));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22DF30, &qword_24F958D50) + 28);
  v11 = *MEMORY[0x277CE1050];
  v12 = sub_24F926E78();
  (*(*(v12 - 8) + 104))(v9 + v10, v11, v12);
  *v9 = swift_getKeyPath();
  *v7 = v8;
  LODWORD(v8) = sub_24F9251C8();
  v13 = v7 + *(v5 + 36);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v15 = *MEMORY[0x277CE13B8];
  v16 = sub_24F927748();
  (*(*(v16 - 8) + 104))(&v13[v14], v15, v16);
  *v13 = v8;
  sub_24EAAEBD0(v7, v4);
  swift_storeEnumTagMultiPayload();
  sub_24E62A7AC();
  sub_24F924E28();
  return sub_24EAAEC40(v7);
}

uint64_t sub_24EAAEA38@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227008, &qword_24F97D210);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - v5;
  v7 = v1[7];
  v25 = v1[6];
  v26 = v7;
  v27 = *(v1 + 16);
  v8 = v1[3];
  v21 = v1[2];
  v22 = v8;
  v9 = v1[5];
  v23 = v1[4];
  v24 = v9;
  v10 = v1[1];
  v19 = *v1;
  v20 = v10;
  sub_24EAAE7B0(&v19);
  v11 = sub_24F925858();
  sub_24F923318();
  v12 = &v6[*(v4 + 44)];
  *v12 = v11;
  *(v12 + 1) = v13;
  *(v12 + 2) = v14;
  *(v12 + 3) = v15;
  *(v12 + 4) = v16;
  v12[40] = 0;
  if (v20)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  sub_24EAAEB58(v6, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227010, &qword_24F97D218);
  *(a1 + *(result + 36)) = v17;
  return result;
}

uint64_t sub_24EAAEB58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227008, &qword_24F97D210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAEBD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAAEC40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2143D8, &qword_24F97D030);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EAAECCC()
{
  result = qword_27F227020;
  if (!qword_27F227020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227010, &qword_24F97D218);
    sub_24EAAED58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227020);
  }

  return result;
}

unint64_t sub_24EAAED58()
{
  result = qword_27F227028;
  if (!qword_27F227028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227008, &qword_24F97D210);
    sub_24EAAEDE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227028);
  }

  return result;
}

unint64_t sub_24EAAEDE4()
{
  result = qword_27F227030;
  if (!qword_27F227030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227038, &qword_24F97D2C0);
    sub_24EAAEE68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227030);
  }

  return result;
}

unint64_t sub_24EAAEE68()
{
  result = qword_27F227040;
  if (!qword_27F227040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227048, &qword_24F97D2C8);
    sub_24E62A7AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227040);
  }

  return result;
}

char *CompoundAction.__allocating_init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v16 + 8))(a5, v15);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *CompoundAction.init(title:actions:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_24F91F6B8();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(v20, v16);
  sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  v29 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t CompoundAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v47 = a2;
  v42 = v4;
  v6 = *v4;
  v40 = v3;
  v41 = v6;
  v46 = sub_24F9285B8();
  v43 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v39 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - v15;
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v21 = v16;
  v22 = *(v12 + 8);
  v44 = v11;
  v22(v21, v11);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_24E601704(v10, &qword_27F2213B0, &qword_24F965EC0);
    v23 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v24 = 0x736E6F69746361;
    v25 = v41;
    v24[1] = 0xE700000000000000;
    v24[2] = v25;
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D22530], v23);
    swift_willThrow();
    v22(v45, v44);
    (*(v43 + 8))(v47, v46);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v22;
    (*(v18 + 32))(v20, v10, v17);
    v26 = type metadata accessor for Action(0);
    MEMORY[0x28223BE20](v26);
    v27 = v47;
    *(&v37 - 2) = v28;
    *(&v37 - 1) = v27;
    v29 = v40;
    v30 = sub_24F92ABB8();
    v40 = v29;
    v23 = v42;
    *(v42 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v30;
    v31 = v38;
    (*(v12 + 16))(v38, v45, v44);
    v32 = v43;
    v33 = v39;
    (*(v43 + 16))(v39, v27, v46);
    v34 = v40;
    v35 = Action.init(deserializing:using:)(v31, v33);
    if (!v34)
    {
      v23 = v35;
    }

    v41(v45, v44);
    (*(v18 + 8))(v20, v17);
    (*(v32 + 8))(v47, v46);
  }

  return v23;
}

uint64_t CompoundAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t CompoundAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CompoundAction(uint64_t a1)
{
  result = qword_27F227050;
  if (!qword_27F227050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void Uber.__allocating_init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v71 = a8;
  v70 = a6;
  v72 = a5;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v10;
  v20 = swift_allocObject();
  v21 = *a1;
  v67 = *a2;
  v68 = a3;
  if (a3)
  {
    v22 = *(a3 + 16);
  }

  else
  {
    v22 = 0;
    v23 = 0;
  }

  v78 = v22;
  v79 = v23;
  v24 = a7;
  v69 = a4;
  if (a4)
  {
    v25 = *(a4 + 16);
  }

  else
  {
    v25 = 0;
    v26 = 0;
  }

  v27 = v70;
  v80 = v25;
  v81 = v26;
  v28 = *&aBackgrou_0[8 * v21 + 8];
  v82 = *&aAbove_4[8 * v21];
  v83 = v28;
  if (!v72)
  {
    v84 = 0;
    v85 = 0;
    if (v70)
    {
      goto LABEL_9;
    }

LABEL_11:
    v32 = 0;
    v34 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v72 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v29 = sub_24F91F398();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
  v84 = v29;
  v85 = v31;
  if (!v27)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, v27 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v32 = sub_24F91F398();
  v34 = v33;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v35 = v21;
  v36 = a9;
  v86 = v32;
  v87 = v34;
  if (v24)
  {
    v37 = *(v24 + 16);
  }

  else
  {
    v37 = 0;
    v38 = 0;
  }

  v88 = v37;
  v89 = v38;
  v90 = v71;
  v91 = a9;

  v39 = 0;
  v40 = MEMORY[0x277D84F90];
LABEL_16:
  if (v39 <= 7)
  {
    v41 = 7;
  }

  else
  {
    v41 = v39;
  }

  v42 = v41 + 1;
  v43 = 16 * v39 + 40;
  while (1)
  {
    if (v39 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      swift_arrayDestroy();
      v52 = sub_24F92B708();

      v73 = v52;
      sub_24F92C7F8();
      v53 = v75;
      *(v20 + 80) = v74;
      *(v20 + 96) = v53;
      *(v20 + 112) = v76;
      *(v20 + 16) = v35;
      v54 = v68;
      *(v20 + 24) = v68;
      v55 = v69;
      if (!v69)
      {

        v55 = v54;
      }

      *(v20 + 32) = v55;
      v56 = v72;
      *(v20 + 40) = v72;
      v57 = v27;
      if (!v27)
      {

        v57 = v56;
      }

      *(v20 + 48) = v57;
      *(v20 + 56) = v24;
      *(v20 + 64) = v71;
      *(v20 + 72) = v36;
      v58 = v67;
      if (v67 != 3 || (v58 = v56 != 0, v56 | v54))
      {
        *(v20 + 17) = v58;
        return;
      }

      if (v24)
      {

        v59 = ASKDeviceTypeGetCurrent();
        v60 = sub_24F92B0D8();
        v62 = v61;
        if (v60 == sub_24F92B0D8() && v62 == v63)
        {

LABEL_41:
          *(v20 + 17) = 2;
          return;
        }

        v64 = sub_24F92CE08();

        if (v64)
        {
          goto LABEL_41;
        }
      }

      sub_24E6585F8(v20 + 80);
      swift_deallocPartialClassInstance();
      return;
    }

    if (v42 == ++v39)
    {
      break;
    }

    v44 = v43 + 16;
    v45 = *&v77[v43];
    v43 += 16;
    if (v45)
    {
      v66 = v35;
      v70 = v36;
      v46 = v27;
      v47 = *(&v75 + v44);

      v48 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_24E615CF4(0, *(v40 + 2) + 1, 1, v40);
      }

      v50 = *(v40 + 2);
      v49 = *(v40 + 3);
      if (v50 >= v49 >> 1)
      {
        v40 = sub_24E615CF4((v49 > 1), v50 + 1, 1, v40);
      }

      *(v40 + 2) = v50 + 1;
      v51 = &v40[16 * v50];
      *(v51 + 4) = v47;
      *(v51 + 5) = v45;
      v24 = v48;
      v27 = v46;
      v36 = v70;
      v35 = v66;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t Uber.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Uber.init(deserializing:using:)(a1, a2);
  return v4;
}

GameStoreKit::Uber::AssetType_optional __swiftcall Uber.AssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.AssetType.rawValue.getter()
{
  v1 = 0x6F65646976;
  if (*v0 != 1)
  {
    v1 = 1852793705;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B726F77747261;
  }
}

uint64_t sub_24EAB04FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6F65646976;
  if (v2 != 1)
  {
    v4 = 1852793705;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6B726F77747261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6F65646976;
  if (*a2 != 1)
  {
    v8 = 1852793705;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B726F77747261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EAB05E8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAB0680(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAB0704()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EAB07A4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6F65646976;
  if (v2 != 1)
  {
    v5 = 1852793705;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B726F77747261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

GameStoreKit::Uber::Style_optional __swiftcall Uber.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Uber.Style.rawValue.getter()
{
  v1 = 0x656E696C6E69;
  if (*v0 != 1)
  {
    v1 = 0x756F72676B636162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65766F6261;
  }
}

uint64_t sub_24EAB08AC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v4 = 0x756F72676B636162;
    v3 = 0xEA0000000000646ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x65766F6261;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656E696C6E69;
  if (*a2 != 1)
  {
    v8 = 0x756F72676B636162;
    v7 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x65766F6261;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EAB09AC()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAB0A4C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAB0AD8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EAB0B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (v2 != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65766F6261;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void Uber.init(style:assetType:artwork:compactArtwork:video:compactVideo:iconArtwork:title:)(char *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v66 = a8;
  v67 = a5;
  v68 = a4;
  v16 = sub_24F91F4A8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v64 = *a2;
  v65 = a3;
  if (a3)
  {
    a3 = *(a3 + 16);
  }

  else
  {
    v21 = 0;
  }

  v74 = a3;
  v75 = v21;
  v22 = v67;
  if (v68)
  {
    v23 = *(v68 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v76 = v23;
  v77 = v24;
  v25 = *&aBackgrou_0[8 * v20 + 8];
  v78 = *&aAbove_4[8 * v20];
  v79 = v25;
  if (!v22)
  {
    v80 = 0;
    v81 = 0;
    if (a6)
    {
      goto LABEL_9;
    }

LABEL_11:
    v29 = 0;
    v31 = 0;
    goto LABEL_12;
  }

  (*(v17 + 16))(v19, v22 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v26 = sub_24F91F398();
  v28 = v27;
  (*(v17 + 8))(v19, v16);
  v80 = v26;
  v81 = v28;
  if (!a6)
  {
    goto LABEL_11;
  }

LABEL_9:
  (*(v17 + 16))(v19, a6 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v16);
  v29 = sub_24F91F398();
  v31 = v30;
  (*(v17 + 8))(v19, v16);
LABEL_12:
  v32 = v20;
  v82 = v29;
  v83 = v31;
  if (a7)
  {
    v33 = *(a7 + 16);
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

  v84 = v33;
  v85 = v34;
  v86 = v66;
  v87 = a9;
  v63 = a9;

  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v37 = 7;
LABEL_16:
  if (v35 > 7)
  {
    v37 = v35;
  }

  v38 = v37 + 1;
  v39 = 16 * v35 + 40;
  while (1)
  {
    if (v35 == 7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
      swift_arrayDestroy();
      v48 = sub_24F92B708();

      v69 = v48;
      sub_24F92C7F8();
      v49 = v71;
      *(v10 + 80) = v70;
      *(v10 + 96) = v49;
      *(v10 + 112) = v72;
      *(v10 + 16) = v32;
      v50 = v65;
      *(v10 + 24) = v65;
      v51 = v68;
      if (!v68)
      {

        v51 = v50;
      }

      *(v10 + 32) = v51;
      v52 = v67;
      *(v10 + 40) = v67;
      v53 = a6;
      v54 = v63;
      if (!a6)
      {

        v53 = v52;
      }

      *(v10 + 48) = v53;
      *(v10 + 56) = a7;
      *(v10 + 64) = v66;
      *(v10 + 72) = v54;
      v55 = v64;
      if (v64 != 3)
      {
        goto LABEL_40;
      }

      v55 = v52 != 0;
      if (v52 | v50)
      {
        goto LABEL_40;
      }

      if (a7)
      {

        v56 = ASKDeviceTypeGetCurrent();
        v57 = sub_24F92B0D8();
        v59 = v58;
        if (v57 == sub_24F92B0D8() && v59 == v60)
        {

LABEL_39:
          v55 = 2;
LABEL_40:
          *(v10 + 17) = v55;
          return;
        }

        v61 = sub_24F92CE08();

        if (v61)
        {
          goto LABEL_39;
        }
      }

      sub_24E6585F8(v10 + 80);
      type metadata accessor for Uber();
      swift_deallocPartialClassInstance();
      return;
    }

    if (v38 == ++v35)
    {
      break;
    }

    v40 = v39 + 16;
    v41 = *&v73[v39];
    v39 += 16;
    if (v41)
    {
      HIDWORD(v62) = v32;
      v42 = a6;
      v43 = *(&v71 + v40);

      v44 = a7;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = sub_24E615CF4(0, *(v36 + 2) + 1, 1, v36);
      }

      v46 = *(v36 + 2);
      v45 = *(v36 + 3);
      if (v46 >= v45 >> 1)
      {
        v36 = sub_24E615CF4((v45 > 1), v46 + 1, 1, v36);
      }

      *(v36 + 2) = v46 + 1;
      v47 = &v36[16 * v46];
      *(v47 + 4) = v43;
      *(v47 + 5) = v41;
      a7 = v44;
      a6 = v42;
      v32 = HIDWORD(v62);
      v37 = 7;
      goto LABEL_16;
    }
  }

  __break(1u);
}

void Uber.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v76 = sub_24F91F4A8();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  sub_24EA848B8();
  sub_24F928208();
  v12 = *(v9 + 8);
  v82 = v8;
  v81 = v9 + 8;
  v80 = v12;
  v12(v11, v8);
  v13 = a2;
  v88 = a2;
  v85 = v90;
  v14 = type metadata accessor for Artwork(0);
  sub_24F928398();
  v71 = v6;
  v15 = *(v6 + 16);
  v16 = v73;
  v15(v73, v13, v5);
  v17 = sub_24EAB2408(&qword_27F219660, 255, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v87 = v90;
  v84 = a1;
  sub_24F928398();
  v18 = v88;
  v89 = v15;
  (v15)();
  v74 = v17;
  v78 = v14;
  sub_24F929548();
  v19 = v90;
  if (!v90)
  {
  }

  v79 = v19;
  type metadata accessor for Video(0);
  sub_24F928398();
  v89(v16, v18, v5);
  sub_24EAB2408(&qword_27F221590, 255, type metadata accessor for Video, &protocol conformance descriptor for Video);
  sub_24F929548();
  v86 = v90;
  sub_24F928398();
  v83 = v5;
  v89(v16, v18, v5);
  sub_24F929548();
  v20 = v90;
  if (!v90)
  {
  }

  sub_24F928398();
  v89(v16, v88, v83);
  sub_24F929548();
  v21 = v90;
  sub_24F928398();
  v89 = sub_24F928348();
  v78 = v22;
  v80(v11, v82);
  if (v87)
  {
    v23 = *(v87 + 16);
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = v86;
  v26 = v76;
  v27 = v75;
  v94 = v23;
  v95 = v24;
  v28 = v21;
  if (v79)
  {
    v29 = *(v79 + 16);
  }

  else
  {
    v29 = 0;
    v30 = 0;
  }

  v96 = v29;
  v97 = v30;
  v31 = *&aBackgrou_0[8 * v85 + 8];
  v98 = *&aAbove_4[8 * v85];
  v99 = v31;
  if (!v25)
  {
    v100 = 0;
    v101 = 0;
    if (v20)
    {
      goto LABEL_13;
    }

LABEL_15:
    v38 = 0;
    v40 = 0;
    goto LABEL_16;
  }

  v32 = v25 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl;
  v33 = v77;
  (*(v27 + 16))(v77, v32, v26);
  v34 = sub_24F91F398();
  v36 = v35;
  (*(v27 + 8))(v33, v26);
  v100 = v34;
  v101 = v36;
  if (!v20)
  {
    goto LABEL_15;
  }

LABEL_13:
  v37 = v77;
  (*(v27 + 16))(v77, v20 + OBJC_IVAR____TtC12GameStoreKit5Video_videoUrl, v26);
  v38 = sub_24F91F398();
  v40 = v39;
  (*(v27 + 8))(v37, v26);
LABEL_16:
  v41 = v85;
  v102 = v38;
  v103 = v40;
  if (v21)
  {
    v42 = *(v21 + 16);
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v104 = v42;
  v105 = v43;
  v106 = v89;
  v107 = v78;

  v44 = 0;
  v45 = MEMORY[0x277D84F90];
  v46 = 7;
LABEL_20:
  if (v44 > 7)
  {
    v46 = v44;
  }

  v47 = v46 + 1;
  v48 = 16 * v44 + 40;
  while (v44 != 7)
  {
    if (v47 == ++v44)
    {
      __break(1u);
      return;
    }

    v49 = v48 + 16;
    v50 = *&v93[v48];
    v48 += 16;
    if (v50)
    {
      v85 = v20;
      v51 = v28;
      v52 = *(&v91 + v49);

      v53 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_24E615CF4(0, *(v45 + 2) + 1, 1, v45);
      }

      v55 = *(v45 + 2);
      v54 = *(v45 + 3);
      if (v55 >= v54 >> 1)
      {
        v45 = sub_24E615CF4((v54 > 1), v55 + 1, 1, v45);
      }

      *(v45 + 2) = v55 + 1;
      v56 = &v45[16 * v55];
      *(v56 + 4) = v52;
      *(v56 + 5) = v50;
      v41 = v53;
      v28 = v51;
      v20 = v85;
      v46 = 7;
      goto LABEL_20;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  swift_arrayDestroy();
  v57 = sub_24F92B708();

  v108 = v57;
  sub_24F92C7F8();
  v58 = v91;
  v59 = v72;
  *(v72 + 80) = v90;
  *(v59 + 96) = v58;
  *(v59 + 112) = v92;
  *(v59 + 16) = v41;
  v60 = v87;
  *(v59 + 24) = v87;
  v61 = v79;
  if (!v79)
  {

    v61 = v60;
  }

  *(v59 + 32) = v61;
  v62 = v86;
  *(v59 + 40) = v86;
  v63 = v88;
  if (!v20)
  {

    v20 = v62;
  }

  *(v59 + 48) = v20;
  *(v59 + 56) = v28;
  v64 = v78;
  *(v59 + 64) = v89;
  *(v59 + 72) = v64;
  if (v62 | v60 | v28)
  {
    if (v62 | v60)
    {
      v65 = v62 != 0;
    }

    else
    {
      v65 = 2;
    }

    (*(v71 + 8))(v63, v83);
    v80(v84, v82);
    *(v59 + 17) = v65;
  }

  else
  {
    v66 = sub_24F92AC38();
    sub_24EAB2408(&qword_27F2213B8, 255, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v68 = v67;
    v69 = type metadata accessor for Uber();
    *v68 = 0x7079547465737361;
    v68[1] = 0xE900000000000065;
    v68[2] = v69;
    v68[3] = MEMORY[0x277D84F90];
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x277D22540], v66);
    swift_willThrow();
    (*(v71 + 8))(v63, v83);
    v80(v84, v82);

    sub_24E6585F8(v59 + 80);
    swift_deallocPartialClassInstance();
  }
}

uint64_t Uber.title.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void *Uber.deinit()
{

  sub_24E6585F8(v0 + 80);
  return v0;
}

uint64_t Uber.__deallocating_deinit()
{

  sub_24E6585F8(v0 + 80);

  return swift_deallocClassInstance();
}

void sub_24EAB1E7C(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Uber();
  v7 = swift_allocObject();
  Uber.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }
}

uint64_t _s12GameStoreKit4UberC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x253052150](a1 + 80, a2 + 80) & 1) == 0)
  {
    return 0;
  }

  v4 = 0xE600000000000000;
  v5 = 0x656E696C6E69;
  if (*(a1 + 16) != 1)
  {
    v5 = 0x756F72676B636162;
    v4 = 0xEA0000000000646ELL;
  }

  if (*(a1 + 16))
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x65766F6261;
  }

  if (*(a1 + 16))
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v8 = 0xE600000000000000;
  v9 = 0x656E696C6E69;
  if (*(a2 + 16) != 1)
  {
    v9 = 0x756F72676B636162;
    v8 = 0xEA0000000000646ELL;
  }

  if (*(a2 + 16))
  {
    v10 = v9;
  }

  else
  {
    v10 = 0x65766F6261;
  }

  if (*(a2 + 16))
  {
    v11 = v8;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  if (v6 == v10 && v7 == v11)
  {
  }

  else
  {
    v12 = sub_24F92CE08();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v13 = 0xE500000000000000;
  v14 = 0x6F65646976;
  if (*(a1 + 17) != 1)
  {
    v14 = 1852793705;
    v13 = 0xE400000000000000;
  }

  if (*(a1 + 17))
  {
    v15 = v14;
  }

  else
  {
    v15 = 0x6B726F77747261;
  }

  if (*(a1 + 17))
  {
    v16 = v13;
  }

  else
  {
    v16 = 0xE700000000000000;
  }

  v17 = 0xE500000000000000;
  v18 = 0x6F65646976;
  if (*(a2 + 17) != 1)
  {
    v18 = 1852793705;
    v17 = 0xE400000000000000;
  }

  if (*(a2 + 17))
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x6B726F77747261;
  }

  if (*(a2 + 17))
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (v15 == v19 && v16 == v20)
  {
  }

  else
  {
    v21 = sub_24F92CE08();

    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = *(a1 + 24);
  v23 = *(a2 + 24);
  if (v22)
  {
    if (!v23)
    {
      return 0;
    }

    v24 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v22, v23);

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v23)
  {
    return 0;
  }

  v25 = *(a1 + 32);
  v26 = *(a2 + 32);
  if (v25)
  {
    if (!v26)
    {
      return 0;
    }

    v27 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v25, v26);

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  v28 = *(a1 + 40);
  v29 = *(a2 + 40);
  if (v28)
  {
    if (!v29)
    {
      return 0;
    }

    if ((sub_24F91F418() & 1) == 0)
    {
      goto LABEL_63;
    }

    v30 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v28 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v29 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));

    if ((v30 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v31 = *(a1 + 48);
  v32 = *(a2 + 48);
  if (!v31)
  {
    if (v32)
    {
      return 0;
    }

    goto LABEL_67;
  }

  if (!v32)
  {
    return 0;
  }

  if ((sub_24F91F418() & 1) == 0)
  {
LABEL_63:

    return 0;
  }

  v33 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(*(v31 + OBJC_IVAR____TtC12GameStoreKit5Video_preview), *(v32 + OBJC_IVAR____TtC12GameStoreKit5Video_preview));

  if ((v33 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v35 = *(a1 + 56);
  v36 = *(a2 + 56);
  if (!v35)
  {
    if (!v36)
    {
      goto LABEL_72;
    }

    return 0;
  }

  if (!v36)
  {
    return 0;
  }

  v37 = _s12GameStoreKit7ArtworkC2eeoiySbAC_ACtFZ_0(v35, v36);

  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_72:
  v38 = *(a1 + 72);
  v39 = *(a2 + 72);
  result = (v38 | v39) == 0;
  if (v38 && v39)
  {
    if (*(a1 + 64) == *(a2 + 64) && v38 == v39)
    {
      return 1;
    }

    else
    {

      return sub_24F92CE08();
    }
  }

  return result;
}

unint64_t sub_24EAB2314()
{
  result = qword_27F227060;
  if (!qword_27F227060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227060);
  }

  return result;
}

unint64_t sub_24EAB236C()
{
  result = qword_27F227068;
  if (!qword_27F227068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227068);
  }

  return result;
}

uint64_t sub_24EAB2408(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id DynamicTypeButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DynamicTypeButton.init(frame:)(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = 0;
  v9 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v10 = sub_24F922378();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v12.receiver = v4;
  v12.super_class = type metadata accessor for DynamicTypeButton(0);
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

uint64_t type metadata accessor for DynamicTypeButton(uint64_t a1)
{
  result = qword_27F227088;
  if (!qword_27F227088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *DynamicTypeButton.__allocating_init(useCase:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = [swift_getObjCClassFromMetadata() buttonWithType_];
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  (*(v7 + 16))(v4, a1, v6);
  (*(v7 + 56))(v4, 0, 1, v6);
  v8 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v9 = v5;
  sub_24E934304(v4, v5 + v8);
  swift_endAccess();
  (*((*MEMORY[0x277D85000] & *v9) + 0x108))(a1);

  (*(v7 + 8))(a1, v6);
  return v9;
}

id DynamicTypeButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DynamicTypeButton.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory) = 0;
  v1 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v2 = sub_24F922378();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  sub_24F92CA88();
  __break(1u);
}

id sub_24EAB2B60()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];
  v3 = sub_24F92B0D8();
  v5 = v4;
  if (v3 == sub_24F92B0D8() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      return v1;
    }
  }

  sub_24E69A5C4(0, &qword_27F227080, 0x277D75C80);
  v10 = sub_24F92BFA8();

  return v10;
}

void sub_24EAB2C6C(uint64_t a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x100);
  v5 = v4();
  v6 = [v5 preferredContentSizeCategory];

  v7 = *&v2[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory];
  *&v2[OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory] = v6;

  sub_24E69A5C4(0, &qword_27F217E58, 0x277D74300);
  v8 = v4();
  v9 = MEMORY[0x253051BF0](a1, v8);

  [v2 _setFont_];
}

uint64_t sub_24EAB2D88(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  sub_24E934D5C(a1, &v8 - v5);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x118))(v6);
}

uint64_t sub_24EAB2E60(uint64_t a1)
{
  v35 = a1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227098, &unk_24F97D650);
  MEMORY[0x28223BE20](v34);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = sub_24F922378();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v32 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  v33 = v1;
  sub_24E934D5C(v1 + v19, v12);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    return sub_24E601704(v12, &qword_27F222038, &unk_24F9689B0);
  }

  v30 = *(v14 + 32);
  v30(v18, v12, v13);
  v22 = *(v14 + 16);
  v31 = v18;
  v22(v9, v18, v13);
  (*(v14 + 56))(v9, 0, 1, v13);
  v23 = *(v34 + 48);
  sub_24E934D5C(v9, v3);
  sub_24E934D5C(v35, &v3[v23]);
  if (v20(v3, 1, v13) == 1)
  {
    sub_24E601704(v9, &qword_27F222038, &unk_24F9689B0);
    if (v20(&v3[v23], 1, v13) == 1)
    {
      sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
      return (*(v14 + 8))(v31, v13);
    }

    goto LABEL_8;
  }

  v24 = v6;
  sub_24E934D5C(v3, v6);
  if (v20(&v3[v23], 1, v13) == 1)
  {
    sub_24E601704(v9, &qword_27F222038, &unk_24F9689B0);
    (*(v14 + 8))(v6, v13);
LABEL_8:
    sub_24E601704(v3, &qword_27F227098, &unk_24F97D650);
LABEL_9:
    v25 = v31;
    (*((*MEMORY[0x277D85000] & *v33) + 0x108))(v31);
    return (*(v14 + 8))(v25, v13);
  }

  v26 = v32;
  v30(v32, &v3[v23], v13);
  sub_24EAB3D68();
  v27 = sub_24F92AFF8();
  v28 = *(v14 + 8);
  v28(v26, v13);
  sub_24E601704(v9, &qword_27F222038, &unk_24F9689B0);
  v28(v24, v13);
  sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
  if ((v27 & 1) == 0)
  {
    goto LABEL_9;
  }

  return (v28)(v31, v13);
}

uint64_t sub_24EAB333C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  return sub_24E934D5C(v1 + v3, a1);
}

uint64_t sub_24EAB3394(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8[-v4];
  v6 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  swift_beginAccess();
  sub_24E934D5C(v1 + v6, v5);
  swift_beginAccess();
  sub_24E934DCC(a1, v1 + v6);
  swift_endAccess();
  sub_24EAB2E60(v5);
  sub_24E601704(a1, &qword_27F222038, &unk_24F9689B0);
  return sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
}

void (*sub_24EAB3498(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCase;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  sub_24E934D5C(v1 + v9, v8);
  return sub_24EAB35B8;
}

void sub_24EAB35B8(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    sub_24E934D5C(*(*a1 + 12), v6);
    sub_24E934D5C(v7 + v4, v5);
    swift_beginAccess();
    sub_24E934DCC(v6, v7 + v4);
    swift_endAccess();
    sub_24EAB2E60(v5);
    sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
  }

  else
  {
    sub_24E934D5C(v7 + v4, v6);
    swift_beginAccess();
    sub_24E934DCC(v3, v7 + v4);
    swift_endAccess();
    sub_24EAB2E60(v6);
  }

  sub_24E601704(v6, &qword_27F222038, &unk_24F9689B0);
  sub_24E601704(v3, &qword_27F222038, &unk_24F9689B0);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t sub_24EAB36F4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222038, &unk_24F9689B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_24F922378();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DynamicTypeButton(0);
  v21.receiver = v1;
  v21.super_class = v10;
  v11 = objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v12 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x110))(v11);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_24E601704(v5, &qword_27F222038, &unk_24F9689B0);
  }

  (*(v7 + 32))(v9, v5, v6);
  v14 = [v1 traitCollection];
  v15 = [v14 preferredContentSizeCategory];

  if (!*(v1 + OBJC_IVAR____TtC12GameStoreKit17DynamicTypeButton_fontUseCaseContentSizeCategory))
  {

    goto LABEL_9;
  }

  v16 = sub_24F92B0D8();
  v18 = v17;
  if (v16 != sub_24F92B0D8() || v18 != v19)
  {
    v20 = sub_24F92CE08();

    if (v20)
    {
      return (*(v7 + 8))(v9, v6);
    }

LABEL_9:
    (*((*v12 & *v1) + 0x108))(v9);
    return (*(v7 + 8))(v9, v6);
  }

  return (*(v7 + 8))(v9, v6);
}

id DynamicTypeButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicTypeButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_24EAB3B88(uint64_t a1)
{
  sub_24E935B08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_24EAB3D68()
{
  result = qword_27F2270A0;
  if (!qword_27F2270A0)
  {
    sub_24F922378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270A0);
  }

  return result;
}

uint64_t sub_24EAB3DE4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_24EAB3EB4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GamesHeroCarousel(uint64_t a1)
{
  result = qword_27F2270A8;
  if (!qword_27F2270A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EAB3FB0(uint64_t a1)
{
  sub_24EAB40D4(319, &qword_27F21BF38, sub_24E735CA0, &type metadata for ComponentKinds, MEMORY[0x277D21F10]);
  if (v1 <= 0x3F)
  {
    sub_24EAB40D4(319, &qword_27F2270B8, sub_24EAB413C, &type metadata for AutoScrollConfiguration, MEMORY[0x277D21958]);
    if (v2 <= 0x3F)
    {
      sub_24E61C7D0(319);
      if (v3 <= 0x3F)
      {
        sub_24E61C938(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24EAB40D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_24EAB413C()
{
  result = qword_27F2270C0;
  if (!qword_27F2270C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270C0);
  }

  return result;
}

uint64_t sub_24EAB4190@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2270F8, &unk_24F97D938);
  v7 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GamesHeroCarousel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EAB4EFC();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v23 = v12;
  v24 = v7;
  v22 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21BE90, &qword_24F9538B0);
  v30 = 0;
  sub_24E602068(&qword_27F21BEF0, &qword_27F21BE90, &qword_24F9538B0, MEMORY[0x277D21F30]);
  v14 = v26;
  sub_24F92CC68();
  v15 = v23;
  v21 = *v28;
  *v23 = *v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227108, &qword_24F97D948);
  v30 = 1;
  sub_24E602068(&qword_27F227110, &qword_27F227108, &qword_24F97D948, MEMORY[0x277D21968]);
  sub_24F92CC68();
  v16 = v24;
  v17 = *&v28[24];
  *(v15 + 8) = v28[0];
  *(v15 + 16) = *&v28[8];
  *(v15 + 32) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  v30 = 2;
  sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
  sub_24F92CC68();
  v18 = *&v28[16];
  *(v15 + 40) = *v28;
  *(v15 + 56) = v18;
  *(v15 + 72) = v29;
  sub_24F929608();
  v28[0] = 3;
  sub_24EAB4F50(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
  v19 = v22;
  sub_24F92CC18();
  (*(v16 + 8))(v9, v14);
  sub_24E65E0D4(v19, v15 + *(v10 + 28));
  sub_24EAB4F98(v15, v25);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24EAB4FFC(v15, type metadata accessor for GamesHeroCarousel);
}

unint64_t sub_24EAB4640()
{
  v1 = 0x736D657469;
  v2 = 25705;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_24EAB46B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EAB525C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EAB46D8(uint64_t a1)
{
  v2 = sub_24EAB4EFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAB4714(uint64_t a1)
{
  v2 = sub_24EAB4EFC();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24EAB4750@<D0>(uint64_t a1@<X8>)
{
  sub_24E60169C(v1 + 40, v5, &qword_27F213F18, &qword_24F93BE20);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

unint64_t sub_24EAB4870()
{
  result = qword_27F2270D0;
  if (!qword_27F2270D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270D0);
  }

  return result;
}

uint64_t sub_24EAB48C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = sub_24F929B38();
  v6 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for HeroCarouselView(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2270E8, &qword_24F97D840);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v33[-v15];
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v34 = *v3;
    v18 = a1[2];
    v19 = a1[3];
    v38 = 0;
    v37 = v13;
    sub_24F926F28();
    *(v11 + 1) = v39;
    v38 = 0;
    sub_24F926F28();
    v20 = *(&v39 + 1);
    *(v11 + 4) = v39;
    *(v11 + 5) = v20;
    type metadata accessor for HeroPageControlProgressCoordinator(0);
    v35 = a2;
    swift_allocObject();
    v38 = sub_24F7130F0();
    sub_24F926F28();
    v21 = *(&v39 + 1);
    *(v11 + 6) = v39;
    *(v11 + 7) = v21;
    v22 = v9[9];
    *&v11[v22] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v23 = v9[10];
    *&v11[v23] = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v24 = &v11[v9[11]];
    *v24 = swift_getKeyPath();
    v24[8] = 0;
    v25 = &v11[v9[12]];
    *v25 = swift_getKeyPath();
    *(v25 + 1) = 0;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v25[32] = 0;
    v26 = &v11[v9[13]];
    *v26 = swift_getKeyPath();
    v26[8] = 0;
    v27 = &v11[v9[14]];
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24EAB4F50(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v27 = sub_24F9243D8();
    v27[1] = v28;
    *v11 = v17;
    v11[8] = v34;
    v29 = &v11[v9[15]];
    *v29 = *(v17 + 16) > 1uLL;
    *(v29 + 1) = v18;
    *(v29 + 2) = v19;
    type metadata accessor for GamesHeroCarousel(0);

    sub_24F929B28();
    sub_24EAB4F50(&qword_27F2270F0, type metadata accessor for HeroCarouselView, &unk_24F97B818);
    sub_24F925E88();
    (*(v6 + 8))(v8, v36);
    sub_24EAB4FFC(v11, type metadata accessor for HeroCarouselView);
    v30 = v35;
    (*(v37 + 32))(v35, v16, v12);
    return (*(v37 + 56))(v30, 0, 1, v12);
  }

  else
  {
    v32 = *(v13 + 56);

    return v32(a2, 1, 1, v12, v14);
  }
}

unint64_t sub_24EAB4DD8()
{
  result = qword_27F2270D8;
  if (!qword_27F2270D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2270D8);
  }

  return result;
}

unint64_t sub_24EAB4EFC()
{
  result = qword_27F227100;
  if (!qword_27F227100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227100);
  }

  return result;
}

uint64_t sub_24EAB4F50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAB4F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GamesHeroCarousel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAB4FFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAB5070()
{
  result = qword_27F227118;
  if (!qword_27F227118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227120, &qword_24F97D960);
    type metadata accessor for HeroCarouselView(255);
    sub_24EAB4F50(&qword_27F2270F0, type metadata accessor for HeroCarouselView, &unk_24F97B818);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227118);
  }

  return result;
}

unint64_t sub_24EAB5158()
{
  result = qword_27F227128;
  if (!qword_27F227128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227128);
  }

  return result;
}

unint64_t sub_24EAB51B0()
{
  result = qword_27F227130;
  if (!qword_27F227130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227130);
  }

  return result;
}

unint64_t sub_24EAB5208()
{
  result = qword_27F227138;
  if (!qword_27F227138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227138);
  }

  return result;
}

uint64_t sub_24EAB525C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736D657469 && a2 == 0xE500000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000024FA51B50 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t FlowAction.destination.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v11 = *(v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v4 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v10[4] = &protocol witness table for FlowAction;
  v5 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v10[3] = v3;
  v10[0] = v1;
  v6 = (v1 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v1 + v4, &v11, v1 + v5, v10, v8, v7, a1);
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v10);
}

uint64_t static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v247 = a6;
  v248 = a5;
  v269 = a4;
  v270 = a2;
  v265 = a1;
  v266 = a3;
  v271 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v263 = *(v7 - 8);
  v264 = v7;
  MEMORY[0x28223BE20](v7);
  v246 = &v237 - v8;
  v240 = type metadata accessor for ArcadePageUrls(0);
  MEMORY[0x28223BE20](v240);
  v241 = &v237 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x28223BE20](v262);
  v261 = &v237 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v11 - 8);
  v245 = &v237 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v258 = &v237 - v14;
  MEMORY[0x28223BE20](v15);
  v257 = &v237 - v16;
  MEMORY[0x28223BE20](v17);
  v256 = &v237 - v18;
  MEMORY[0x28223BE20](v19);
  v255 = &v237 - v20;
  MEMORY[0x28223BE20](v21);
  v254 = &v237 - v22;
  MEMORY[0x28223BE20](v23);
  v253 = &v237 - v24;
  MEMORY[0x28223BE20](v25);
  v252 = &v237 - v26;
  MEMORY[0x28223BE20](v27);
  v251 = &v237 - v28;
  MEMORY[0x28223BE20](v29);
  v250 = &v237 - v30;
  v31 = sub_24F91F4A8();
  v32 = *(v31 - 8);
  v267 = v31;
  v268 = v32;
  MEMORY[0x28223BE20](v31);
  v249 = &v237 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v237 - v35;
  MEMORY[0x28223BE20](v37);
  v243 = &v237 - v38;
  MEMORY[0x28223BE20](v39);
  v259 = &v237 - v40;
  MEMORY[0x28223BE20](v41);
  v43 = &v237 - v42;
  MEMORY[0x28223BE20](v44);
  v244 = &v237 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v237 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v237 - v50;
  MEMORY[0x28223BE20](v52);
  v238 = &v237 - v53;
  MEMORY[0x28223BE20](v54);
  v239 = &v237 - v55;
  MEMORY[0x28223BE20](v56);
  v58 = &v237 - v57;
  MEMORY[0x28223BE20](v59);
  v242 = &v237 - v60;
  MEMORY[0x28223BE20](v61);
  v63 = &v237 - v62;
  MEMORY[0x28223BE20](v64);
  v260 = &v237 - v65;
  MEMORY[0x28223BE20](v66);
  v68 = &v237 - v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70);
  MEMORY[0x28223BE20](v69 - 8);
  MEMORY[0x28223BE20](v70);
  MEMORY[0x28223BE20](v71);
  v73 = &v237 - v72;
  MEMORY[0x28223BE20](v74);
  v78 = &v237 - v77;
  switch(*v270)
  {
    case 0:
    case 0x23:
    case 0x35:
      type metadata accessor for FlowAction.Destination(0);

      return swift_storeEnumTagMultiPayload();
    case 1:
      v138 = v256;
      sub_24E60169C(v266, v256, &qword_27F228530, &unk_24F93C6E0);
      v139 = v267;
      v140 = v268;
      if ((*(v268 + 48))(v138, 1, v267) == 1)
      {
        goto LABEL_38;
      }

      v141 = v259;
      (*(v140 + 32))(v259, v138, v139);
      sub_24E65864C(v265, &v282);
      v142 = *(v140 + 16);
      v143 = v260;
      v142(v260, v141, v139);
      v144 = v261;
      sub_24E65864C(&v282, v261);
      v142((v144 + *(v262 + 20)), v143, v139);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      v145 = v246;
      sub_24F929188();
      v146 = *(v140 + 8);
      v268 = v140 + 8;
      v270 = v146;
      v146(v143, v139);
      sub_24E6585F8(&v282);
      v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158, &qword_24F97DA88);
      v148 = (v271 + *(v147 + 64));
      v149 = v263;
      v150 = v264;
      (*(v263 + 16))(v271, v145, v264);
      v151 = *(v269 + 3);
      v152 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v151);
      v153 = type metadata accessor for ShelfBasedProductPage(0);
      (*(v152 + 8))(v153, sub_24EAB9DC0, 0, v153, v151, v152);
      (*(v149 + 8))(v145, v150);
      v270(v259, v267);
      v154 = v247;
      *v148 = v248;
      v148[1] = v154;
      type metadata accessor for FlowAction.Destination(0);
      swift_storeEnumTagMultiPayload();
      return swift_unknownObjectRetain();
    case 2:
      v126 = v254;
      sub_24E60169C(v266, v254, &qword_27F228530, &unk_24F93C6E0);
      v127 = v267;
      v128 = v268;
      if ((*(v268 + 48))(v126, 1, v267) == 1)
      {
        sub_24E601704(v126, &qword_27F228530, &unk_24F93C6E0);
        goto LABEL_69;
      }

      v214 = *(v128 + 32);
      v215 = v244;
      v214(v244, v126, v127);
      v216 = *(v269 + 3);
      v217 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v216);
      v218 = type metadata accessor for DynamicUIRequestInfo();
      (*(v217 + 8))(&v282, v218, sub_24EAB9DC0, 0, v218, v216, v217);
      v219 = v282;
      v220 = v271;
      if (v282)
      {
        v214(v271, v215, v127);
        *(v220 + *(type metadata accessor for DynamicUIIntent(0) + 20)) = v219;
        type metadata accessor for FlowAction.Destination(0);
        return swift_storeEnumTagMultiPayload();
      }

      (*(v128 + 8))(v215, v127);
      goto LABEL_69;
    case 3:
      v171 = v258;
      sub_24E60169C(v266, v258, &qword_27F228530, &unk_24F93C6E0);
      v172 = v267;
      v173 = v268;
      if ((*(v268 + 48))(v171, 1, v267) == 1)
      {
        goto LABEL_40;
      }

      v174 = *(v173 + 32);
      v174(v36, v171, v172);
      v174(v271, v36, v172);
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0xC:
      v138 = v257;
      sub_24E60169C(v266, v257, &qword_27F228530, &unk_24F93C6E0);
      v187 = v267;
      v188 = v268;
      if ((*(v268 + 48))(v138, 1, v267) == 1)
      {
        goto LABEL_38;
      }

      v224 = *(v188 + 32);
      v225 = v243;
      v224(v243, v138, v187);
      v226 = v271;
      sub_24E65864C(v265, v271);
      v227 = type metadata accessor for TodayPageIntent(0);
      v224(&v226[v227[5]], v225, v187);
      *&v226[v227[6]] = MEMORY[0x277D84F90];
      v226[v227[7]] = 0;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0xD:
      v129 = v253;
      sub_24E60169C(v266, v253, &qword_27F228530, &unk_24F93C6E0);
      v130 = v267;
      v131 = v268;
      if ((*(v268 + 48))(v129, 1, v267) == 1)
      {
        v132 = &qword_27F228530;
        v133 = &unk_24F93C6E0;
        v134 = v129;
        goto LABEL_63;
      }

      v221 = *(v131 + 32);
      v221(v48, v129, v130);
      v222 = v271;
      sub_24E65864C(v265, v271);
      v223 = type metadata accessor for ArticlePageIntent(0);
      v221(&v222[*(v223 + 20)], v48, v130);
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0xE:
      v156 = *(v269 + 3);
      v157 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v156);
      v158 = sub_24E69A5C4(0, &qword_27F227150, 0x277CEE4E8);
      (*(v157 + 8))(&v282, v158, sub_24EAB9DC0, 0, v158, v156, v157);
      *v271 = v282;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x11:
      v159 = *(v269 + 3);
      v160 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v159);
      v161 = type metadata accessor for ReviewsPage(0);
      (*(v160 + 8))(&v282, v161, sub_24EAB9DC0, 0, v161, v159, v160);
      v93 = v282;
      if (v282)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x12:
      v191 = v251;
      sub_24E60169C(v266, v251, &qword_27F228530, &unk_24F93C6E0);
      v192 = v267;
      v193 = v268;
      if ((*(v268 + 48))(v191, 1, v267) == 1)
      {
        sub_24E601704(v191, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        v229 = *(v193 + 32);
        v229(v63, v191, v192);
        v229(v271, v63, v192);
      }

      goto LABEL_69;
    case 0x13:
      v171 = v255;
      sub_24E60169C(v266, v255, &qword_27F228530, &unk_24F93C6E0);
      v189 = v267;
      v190 = v268;
      if ((*(v268 + 48))(v171, 1, v267) == 1)
      {
LABEL_40:
        v132 = &qword_27F228530;
        v133 = &unk_24F93C6E0;
        v134 = v171;
        goto LABEL_63;
      }

      v228 = *(v190 + 32);
      v228(v43, v171, v189);
      v228(v271, v43, v189);
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x18:
      v90 = *(v269 + 3);
      v91 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v90);
      v92 = type metadata accessor for Review(0);
      (*(v91 + 8))(&v282, v92, sub_24EAB9DC0, 0, v92, v90, v91);
      v93 = v282;
      if (v282)
      {
        goto LABEL_28;
      }

      goto LABEL_69;
    case 0x19:
      v135 = *(v269 + 3);
      v136 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v135);
      v137 = type metadata accessor for EditorsChoice(0);
      (*(v136 + 8))(&v282, v137, sub_24EAB9DC0, 0, v137, v135, v136);
      v93 = v282;
      if (!v282)
      {
        goto LABEL_69;
      }

LABEL_28:
      *v271 = v93;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x1A:
      v94 = *(v269 + 3);
      v95 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v94);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227168, &qword_24F9F8CA0);
      (*(v95 + 8))(&v282, v96, sub_24EAB9DC0, 0, v96, v94, v95);
      v97 = v282;
      if (!v282)
      {
        goto LABEL_69;
      }

      if (*(v282 + 16) && (v98 = sub_24E76D758(2), (v99 & 1) != 0))
      {
        v101 = v267;
        v100 = v268;
        v102 = *(v268 + 72);
        v103 = *(v268 + 16);
        v103(v58, *(v97 + 56) + v102 * v98, v267);
        v104 = *(v100 + 32);
        v105 = v242;
        v106 = v58;
        v107 = v101;
        v104(v242, v106, v101);
        if (*(v97 + 16))
        {
          v108 = sub_24E76D758(1);
          if (v109)
          {
            v110 = *(v97 + 56) + v108 * v102;
            v111 = v238;
            v103(v238, v110, v101);

            v112 = v239;
            v104(v239, v111, v107);
            v113 = v241;
            v104(v241, v105, v107);
            v114 = *(v268 + 56);
            v114(v113, 0, 1, v107);
            v115 = *(v240 + 20);
            v104((v113 + v115), v112, v107);
            v114(v113 + v115, 0, 1, v107);
            sub_24EAB97A8(v113, v271, type metadata accessor for ArcadePageUrls);
            type metadata accessor for FlowAction.Destination(0);
            return swift_storeEnumTagMultiPayload();
          }
        }

        (*(v268 + 8))(v105, v101);
      }

      else
      {
      }

      goto LABEL_69;
    case 0x1C:
      v85 = *(v269 + 3);
      v86 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v85);
      v87 = type metadata accessor for MarketingItemRequestInfo();
      (*(v86 + 8))(&v282, v87, sub_24EAB9DC0, 0, v87, v85, v86);
      v88 = v282;
      if (!v282)
      {
        goto LABEL_69;
      }

      v89 = v271;
      sub_24E65864C(v265, v271);
      *(v89 + 5) = v88;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x1D:
      v138 = v252;
      sub_24E60169C(v266, v252, &qword_27F228530, &unk_24F93C6E0);
      v162 = v267;
      v163 = v268;
      if ((*(v268 + 48))(v138, 1, v267) != 1)
      {
        v164 = *(v163 + 32);
        v164(v51, v138, v162);
        v165 = *(v269 + 3);
        v166 = *(v269 + 4);
        __swift_project_boxed_opaque_existential_1(v269, v165);
        v167 = type metadata accessor for ArcadeSeeAllGamesPage(0);
        (*(v166 + 8))(&v282, v167, sub_24EAB9DC0, 0, v167, v165, v166);
        v168 = v282;
        v169 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227160, &qword_24F97DA90) + 48);
        v170 = v271;
        *v271 = v168;
        v164(&v170[v169], v51, v162);
        type metadata accessor for FlowAction.Destination(0);
        return swift_storeEnumTagMultiPayload();
      }

LABEL_38:
      v132 = &qword_27F228530;
      v133 = &unk_24F93C6E0;
      v134 = v138;
      goto LABEL_63;
    case 0x25:
      v201 = *(v269 + 3);
      v202 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v201);
      v203 = type metadata accessor for GameCenterPlayerProfileAction(0);
      (*(v202 + 8))(&v282, v203, sub_24EAB9DC0, 0, v203, v201, v202);
      if (!v282)
      {
        goto LABEL_69;
      }

      v205 = *(v282 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId);
      v204 = *(v282 + OBJC_IVAR____TtC12GameStoreKit29GameCenterPlayerProfileAction_playerId + 8);

      v206 = v271;
      if (!v204)
      {
        goto LABEL_69;
      }

      *v271 = v205;
      *(v206 + 1) = v204;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x28:
      v194 = *(v269 + 3);
      v195 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v194);
      v196 = type metadata accessor for ShareSheetAction(0);
      (*(v195 + 8))(&v282, v196, sub_24EAB9DC0, 0, v196, v194, v195);
      if (!v282)
      {
        goto LABEL_69;
      }

      v197 = *(v282 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_data);
      v198 = *(v282 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_activities);
      v199 = *(v282 + OBJC_IVAR____TtC12GameStoreKit16ShareSheetAction_shareSheetStyle);

      v200 = v271;
      *v271 = v197;
      *(v200 + 1) = v198;
      *(v200 + 16) = v199;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x2C:
      v79 = v250;
      sub_24E60169C(v266, v250, &qword_27F228530, &unk_24F93C6E0);
      v80 = v267;
      v81 = v268;
      if ((*(v268 + 48))(v79, 1, v267) == 1)
      {
        sub_24E601704(v79, &qword_27F228530, &unk_24F93C6E0);
        v82 = 1;
      }

      else
      {
        (*(v81 + 32))(v68, v79, v80);
        sub_24E65864C(v265, &v282);
        v207 = *(v81 + 16);
        v208 = v260;
        v207(v260, v68, v80);
        v209 = v261;
        sub_24E65864C(&v282, v261);
        v207((v209 + *(v262 + 20)), v208, v80);
        sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
        sub_24F929188();
        v210 = *(v81 + 8);
        v210(v208, v80);
        sub_24E6585F8(&v282);
        v210(v68, v80);
        v82 = 0;
      }

      (*(v263 + 56))(v73, v82, 1, v264);
      sub_24EAB9588(v73, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);
      sub_24E60169C(v78, v271, &qword_27F227140, &qword_24F97DA70);
      v211 = *(v269 + 3);
      v212 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v211);
      v213 = type metadata accessor for GenericPage(0);
      (*(v212 + 8))(v213, sub_24EAB9DC0, 0, v213, v211, v212);
      sub_24E601704(v78, &qword_27F227140, &qword_24F97DA70);
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    case 0x31:
      v116 = *(v269 + 3);
      v117 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v116);
      (*(v117 + 8))(&v272, &type metadata for Annotation, sub_24EAB9DC0, 0, &type metadata for Annotation, v116, v117);
      if (*(&v272 + 1))
      {
        v288 = v278;
        v289 = v279;
        v290 = v280;
        v291 = v281;
        v118 = v274;
        v284 = v274;
        v285 = v275;
        v286 = v276;
        v287 = v277;
        v282 = v272;
        v283 = v273;
        v119 = v279;
        v120 = v280;
        v121 = v271;
        v271[6] = v278;
        v121[7] = v119;
        v121[8] = v120;
        *(v121 + 18) = v291;
        v122 = v285;
        v123 = v286;
        v121[2] = v118;
        v121[3] = v122;
        v124 = v287;
        v121[4] = v123;
        v121[5] = v124;
        v125 = v283;
        *v121 = v282;
        v121[1] = v125;
        type metadata accessor for FlowAction.Destination(0);
        return swift_storeEnumTagMultiPayload();
      }

      v132 = &qword_27F2147D8;
      v133 = &unk_24F93D950;
      goto LABEL_62;
    case 0x36:
      v83 = *(v269 + 3);
      v84 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v83);
      (*(v84 + 8))(&v272, MEMORY[0x277D84F70] + 8, sub_24EAB9DC0, 0, MEMORY[0x277D84F70] + 8, v83, v84);
      if (*(&v273 + 1))
      {
        sub_24E612B0C(&v272, &v282);
        sub_24E612B0C(&v282, v271);
        type metadata accessor for FlowAction.Destination(0);
      }

      else
      {
        v132 = &qword_27F2129B0;
        v133 = &unk_24F945320;
LABEL_62:
        v134 = &v272;
LABEL_63:
        sub_24E601704(v134, v132, v133);
LABEL_69:
        type metadata accessor for FlowAction.Destination(0);
      }

      return swift_storeEnumTagMultiPayload();
    default:
      v270 = v76;
      v175 = v75;
      v176 = *(v269 + 3);
      v177 = *(v269 + 4);
      __swift_project_boxed_opaque_existential_1(v269, v176);
      v178 = type metadata accessor for GenericPage(0);
      (*(v177 + 8))(&v282, v178, sub_24EAB9DC0, 0, v178, v176, v177);
      v179 = v282;
      v180 = v267;
      v181 = v268;
      v182 = *(v268 + 48);
      v183 = v266;
      if (v182(v266, 1, v267) == 1 && !v179)
      {
        goto LABEL_69;
      }

      v269 = *(v263 + 56);
      v269(v175, 1, 1, v264);
      v184 = v245;
      sub_24E60169C(v183, v245, &qword_27F228530, &unk_24F93C6E0);
      v185 = v182(v184, 1, v180);
      v186 = v271;
      if (v185 == 1)
      {
        sub_24E601704(v184, &qword_27F228530, &unk_24F93C6E0);
      }

      else
      {
        v230 = v249;
        (*(v181 + 32))(v249, v184, v180);
        sub_24E65864C(v265, &v282);
        v231 = *(v181 + 16);
        v232 = v260;
        v231(v260, v230, v180);
        v266 = v179;
        v233 = v261;
        sub_24E65864C(&v282, v261);
        v231((v233 + *(v262 + 20)), v232, v180);
        sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
        v234 = v270;
        v179 = v266;
        sub_24F929188();
        v235 = *(v181 + 8);
        v235(v232, v180);
        sub_24E6585F8(&v282);
        v235(v249, v180);
        v186 = v271;
        sub_24E601704(v175, &qword_27F227140, &qword_24F97DA70);
        v269(v234, 0, 1, v264);
        sub_24EAB9588(v234, v175);
      }

      v236 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78) + 48);
      sub_24EAB9588(v175, v186);
      *(v186 + v236) = v179;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
  }
}

uint64_t FlowAction.tabRole.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v10 = (&v19 - v9);
  v11 = _UISolariumEnabled();
  v12 = OBJC_IVAR____TtC12GameStoreKit6Action_id;
  LOBYTE(v20) = *(v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page);
  v21[4] = &protocol witness table for FlowAction;
  v13 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl;
  v21[3] = v4;
  v21[0] = v2;
  v14 = (v2 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  swift_unknownObjectRetain();

  static FlowAction.Destination.from(id:page:url:dataProvider:appStateController:)(v2 + v12, &v20, v2 + v13, v21, v16, v15, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v21);
  if (swift_getEnumCaseMultiPayload() != 27)
  {
    goto LABEL_7;
  }

  sub_24EAB9610(v10, v7);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v7);
LABEL_7:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return sub_24EAB9700(v10, type metadata accessor for FlowAction.Destination);
  }

  v17 = v20;
  if (((v17 >> 59) & 0x1E | (v17 >> 2) & 1) == 3 && (sub_24E60169C((v20 & 0xFFFFFFFFFFFFFFBLL) + 16, v21, &qword_27F227170, &qword_24F97DA98), sub_24E601704(v21, &qword_27F227178, &qword_24F97DAA0), v11))
  {
    *(a1 + 24) = sub_24F927328();
    *(a1 + 32) = sub_24EAB9760(&qword_27F227180, MEMORY[0x277CDF0C0], MEMORY[0x277D7EE90]);
    __swift_allocate_boxed_opaque_existential_1(a1);
    sub_24F927318();
    sub_24EAB9674(v17);
  }

  else
  {
    sub_24EAB9674(v17);
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  __swift_destroy_boxed_opaque_existential_1(v7);
  return sub_24EAB9700(v10, type metadata accessor for FlowAction.Destination);
}

unint64_t FlowAction.Destination.destinationIdentifier.getter()
{
  v1 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAB9610(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x746E756F636361;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6956626557736D61;
      break;
    case 2:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000010;
      break;
    case 3:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656C6369747261;
      break;
    case 4:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656461637261;
      break;
    case 5:

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227160, &qword_24F97DA90) + 48);
      v8 = sub_24F91F4A8();
      (*(*(v8 - 8) + 8))(&v3[v7], v8);
      result = 0xD000000000000011;
      break;
    case 6:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x5563696D616E7964;
      break;
    case 7:
    case 18:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000013;
      break;
    case 8:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x656D656761676E65;
      break;
    case 9:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x65636E616E6966;
      break;
    case 10:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0xD000000000000017;
      break;
    case 11:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x41636972656E6567;
      break;
    case 12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);

      sub_24E601704(v3, &qword_27F227140, &qword_24F97DA70);
      result = 0x676E6970756F7267;
      break;
    case 13:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6E6974656B72616DLL;
      break;
    case 14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);

      sub_24E601704(v3, &qword_27F227140, &qword_24F97DA70);
      result = 1701273968;
      break;
    case 15:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6563614665676170;
      break;
    case 16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);

      sub_24E601704(v3, &qword_27F227140, &qword_24F97DA70);
      result = 0x4479636176697270;
      break;
    case 17:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158, &qword_24F97DA88);

      swift_unknownObjectRelease();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
      (*(*(v9 - 8) + 8))(v3, v9);
      result = 0x746375646F7270;
      break;
    case 19:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6573616863727570;
      break;
    case 20:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6F4374726F706572;
      break;
    case 21:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6544776569766572;
      break;
    case 22:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73776569766572;
      break;
    case 23:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6568536572616873;
      break;
    case 24:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x6472614374786574;
      break;
    case 25:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x7961646F74;
      break;
    case 26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227188, &unk_24F97DAA8);

      v6 = sub_24F91F4A8();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x7665526574697277;
      break;
    case 27:
      sub_24EAB9700(v3, type metadata accessor for FlowAction.Destination);
      result = 0x73656D6167;
      break;
    case 28:
      return result;
    case 29:
      result = 0xD000000000000013;
      break;
    case 30:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0x686372616573;
      break;
    case 32:
      result = 0x6E776F6E6B6E75;
      break;
    case 33:
      result = 0x75506E6564646968;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);

      sub_24E601704(v3, &qword_27F227140, &qword_24F97DA70);
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t FlowAction.Destination.automationIdentifier.getter()
{
  v1 = type metadata accessor for ClosedGenericPageIntent(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for FlowAction.Destination(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAB9610(v0, v12);
  if (swift_getEnumCaseMultiPayload() == 12)
  {
    v13 = 0x676E6970756F7267;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);

    sub_24EAB9588(v12, v9);
    sub_24E60169C(v9, v6, &qword_27F227140, &qword_24F97DA70);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
    v15 = *(v14 - 8);
    if ((*(v15 + 48))(v6, 1, v14) == 1)
    {
      sub_24E601704(v9, &qword_27F227140, &qword_24F97DA70);
      sub_24E601704(v6, &qword_27F227140, &qword_24F97DA70);
    }

    else
    {
      sub_24F929168();
      sub_24E65864C(v3, v20);
      sub_24EAB9700(v3, type metadata accessor for ClosedGenericPageIntent);
      (*(v15 + 8))(v6, v14);
      v22[0] = v20[0];
      v22[1] = v20[1];
      v23 = v21;
      strcpy(v20, "groupingView=");
      HIWORD(v20[0]) = -4864;
      v17 = sub_24F92C7A8();
      MEMORY[0x253050C20](v17);

      v13 = *&v20[0];
      sub_24E6585F8(v22);
      sub_24E601704(v9, &qword_27F227140, &qword_24F97DA70);
    }
  }

  else
  {
    *&v22[0] = FlowAction.Destination.destinationIdentifier.getter();
    *(&v22[0] + 1) = v16;
    MEMORY[0x253050C20](2003134806, 0xE400000000000000);
    v13 = *&v22[0];
    sub_24EAB9700(v12, type metadata accessor for FlowAction.Destination);
  }

  return v13;
}

uint64_t FlowAction.Destination.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v156 = a2;
  v151 = a3;
  v4 = type metadata accessor for DynamicUIIntent(0);
  MEMORY[0x28223BE20](v4 - 8);
  v135 = v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222A78, &unk_24F96B6B0);
  v144 = *(v6 - 8);
  v145 = v6;
  MEMORY[0x28223BE20](v6);
  v140 = v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v143 = v131 - v9;
  MEMORY[0x28223BE20](v10);
  v148 = v131 - v11;
  v12 = type metadata accessor for ArticlePageIntent(0);
  MEMORY[0x28223BE20](v12 - 8);
  v150 = (v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v153 = sub_24F9285B8();
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v134 = v131 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v137 = v131 - v16;
  MEMORY[0x28223BE20](v17);
  v139 = v131 - v18;
  MEMORY[0x28223BE20](v19);
  v142 = v131 - v20;
  MEMORY[0x28223BE20](v21);
  v147 = v131 - v22;
  MEMORY[0x28223BE20](v23);
  v149 = v131 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = v131 - v26;
  v28 = type metadata accessor for TodayPageIntent(0);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_24F928388();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v133 = v131 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v136 = v131 - v35;
  MEMORY[0x28223BE20](v36);
  v138 = v131 - v37;
  MEMORY[0x28223BE20](v38);
  v141 = v131 - v39;
  MEMORY[0x28223BE20](v40);
  v146 = v131 - v41;
  MEMORY[0x28223BE20](v42);
  v44 = v131 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v131 - v46;
  MEMORY[0x28223BE20](v48);
  v50 = v131 - v49;
  v158 = a1;
  sub_24F928398();
  v51 = sub_24F928348();
  v53 = v52;
  v55 = *(v32 + 8);
  v54 = v32 + 8;
  v56 = v50;
  v57 = v31;
  v58 = v55;
  v55(v56, v57);
  if (!v53)
  {
    v66 = sub_24F92AC38();
    sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    v132 = v58;
    v67 = swift_allocError();
    v69 = v68;
    v70 = type metadata accessor for FlowAction.Destination(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213BA0, &qword_24F97AD70);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_24F93DE60;
    *(v71 + 32) = swift_allocError();
    *v72 = 1701869940;
    v72[1] = 0xE400000000000000;
    v72[2] = v70;
    v73 = *(*(v66 - 8) + 104);
    v73(v72, *MEMORY[0x277D22530], v66);
    *v69 = v70;
    v69[1] = v71;
    v73(v69, *MEMORY[0x277D22538], v66);
    v154 = v67;
    swift_willThrow();
    (*(v155 + 8))(v156, v153);
    return v132(v158, v57);
  }

  v152 = v57;
  v59 = v153;
  if (v51 == 0x7961646F74 && v53 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {
    v60 = v58;

    v61 = v158;
    sub_24F928398();
    v63 = v155;
    v62 = v156;
    (*(v155 + 16))(v27, v156, v59);
    v64 = v154;
    TodayPageIntent.init(deserializing:using:)(v47, v27, v30);
    v154 = v64;
    if (v64)
    {
      (*(v63 + 8))(v62, v59);
      return v60(v61, v152);
    }

    (*(v63 + 8))(v62, v59);
    v60(v61, v152);
    sub_24EAB97A8(v30, v151, type metadata accessor for TodayPageIntent);
    type metadata accessor for FlowAction.Destination(0);
    return swift_storeEnumTagMultiPayload();
  }

  v74 = v59;
  if ((v51 != 0x656C6369747261 || v53 != 0xE700000000000000) && (sub_24F92CE08() & 1) == 0)
  {
    v131[1] = v54;
    if (v51 == 0x676E6970756F7267 && v53 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      sub_24F928398();
      v81 = v155;
      v82 = v156;
      (*(v155 + 16))(v147, v156, v59);
      type metadata accessor for ClosedGenericPageIntent(0);
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      v83 = v148;
      v84 = v154;
      sub_24F929178();
      v154 = v84;
      if (v84)
      {
        (*(v81 + 8))(v82, v59);
        return v58(v158, v152);
      }

      (*(v81 + 8))(v82, v59);
      v58(v158, v152);
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);
      v86 = v83;
      v87 = *(v85 + 48);
      v89 = v144;
      v88 = v145;
      v90 = v151;
      (*(v144 + 32))(v151, v86, v145);
      (*(v89 + 56))(v90, 0, 1, v88);
      *(v90 + v87) = 0;
      type metadata accessor for FlowAction.Destination(0);
      return swift_storeEnumTagMultiPayload();
    }

    v132 = v58;
    if (v51 == 1701273968 && v53 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
    {

      v91 = v158;
      sub_24F928398();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v142, v156, v59);
      type metadata accessor for ClosedGenericPageIntent(0);
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      v94 = v143;
      v95 = v154;
      sub_24F929178();
      v154 = v95;
      if (!v95)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227148, &unk_24F97DA78);
        v97 = v94;
        v98 = *(v96 + 48);
        v100 = v144;
        v99 = v145;
        v101 = v151;
        (*(v144 + 32))(v151, v97, v145);
        (*(v100 + 56))(v101, 0, 1, v99);
        *(v101 + v98) = 0;
        type metadata accessor for FlowAction.Destination(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      if ((v51 != 0x746375646F7270 || v53 != 0xE700000000000000) && (sub_24F92CE08() & 1) == 0)
      {
        if (v51 == 0x686372616573 && v53 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
        {
          v109 = sub_24F92AC38();
          sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
          v110 = swift_allocError();
          v111 = v58;
          v113 = v112;
          v114 = type metadata accessor for FlowAction.Destination(0);
          *v113 = v51;
          v113[1] = v53;
          v113[2] = v114;
          (*(*(v109 - 8) + 104))(v113, *MEMORY[0x277D22520], v109);
          v154 = v110;
          swift_willThrow();
          (*(v155 + 8))(v156, v59);
        }

        else
        {
          v111 = v58;
          if (v51 == 0x6E6974656B72616DLL && v53 == 0xED00006D65744967 || (sub_24F92CE08() & 1) != 0)
          {

            v115 = v136;
            v116 = v158;
            sub_24F928398();
            v118 = v155;
            v117 = v156;
            v119 = v137;
            (*(v155 + 16))(v137, v156, v59);
            v120 = v154;
            MarketingIntent.init(deserializing:using:)(v115, v119, v157);
            v154 = v120;
            if (v120)
            {
              (*(v118 + 8))(v117, v59);
              return v111(v116, v152);
            }

            (*(v118 + 8))(v117, v59);
            v111(v116, v152);
            v121 = v157[1];
            v122 = v151;
            *v151 = v157[0];
            v122[1] = v121;
            v122[2] = v157[2];
            type metadata accessor for FlowAction.Destination(0);
            return swift_storeEnumTagMultiPayload();
          }

          if (v51 == 0x5563696D616E7964 && v53 == 0xE900000000000049 || (sub_24F92CE08() & 1) != 0)
          {

            v123 = v133;
            sub_24F928398();
            v124 = v134;
            (*(v155 + 16))(v134, v156, v59);
            v125 = v154;
            DynamicUIIntent.init(deserializing:using:)(v123, v124, v135);
            v154 = v125;
            if (!v125)
            {
              (*(v155 + 8))(v156, v59);
              v58(v158, v152);
              sub_24EAB97A8(v135, v151, type metadata accessor for DynamicUIIntent);
              type metadata accessor for FlowAction.Destination(0);
              return swift_storeEnumTagMultiPayload();
            }
          }

          else
          {
            v126 = sub_24F92AC38();
            sub_24EAB9760(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
            v127 = swift_allocError();
            v129 = v128;
            v130 = type metadata accessor for FlowAction.Destination(0);
            *v129 = v51;
            v129[1] = v53;
            v129[2] = v130;
            (*(*(v126 - 8) + 104))(v129, *MEMORY[0x277D22520], v126);
            v154 = v127;
            swift_willThrow();
          }

          (*(v155 + 8))(v156, v59);
        }

        return v111(v158, v152);
      }

      v91 = v158;
      sub_24F928398();
      v93 = v155;
      v92 = v156;
      (*(v155 + 16))(v139, v156, v59);
      type metadata accessor for ClosedGenericPageIntent(0);
      sub_24EAB9760(&qword_27F227190, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      sub_24EAB9760(&qword_27F222A80, type metadata accessor for ClosedGenericPageIntent, &protocol conformance descriptor for ClosedGenericPageIntent);
      v102 = v140;
      v103 = v154;
      sub_24F929178();
      v154 = v103;
      if (!v103)
      {
        (*(v93 + 8))(v92, v59);
        v132(v91, v152);
        v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227158, &qword_24F97DA88);
        v105 = v102;
        v106 = *(v104 + 48);
        v107 = v151;
        v108 = (v151 + *(v104 + 64));
        (*(v144 + 32))(v151, v105, v145);
        *(v107 + v106) = 0;
        type metadata accessor for FlowAction.Destination(0);
        *v108 = 0;
        v108[1] = 0;
        return swift_storeEnumTagMultiPayload();
      }
    }

    (*(v93 + 8))(v92, v59);
    return v132(v91, v152);
  }

  v75 = v158;
  sub_24F928398();
  v77 = v155;
  v76 = v156;
  v78 = v149;
  (*(v155 + 16))(v149, v156, v74);
  v79 = v150;
  v80 = v154;
  ArticlePageIntent.init(deserializing:using:)(v44, v78, v150);
  v154 = v80;
  if (!v80)
  {
    (*(v77 + 8))(v76, v74);
    v58(v75, v152);
    sub_24EAB97A8(v79, v151, type metadata accessor for ArticlePageIntent);
    type metadata accessor for FlowAction.Destination(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v77 + 8))(v76, v74);
  return v58(v75, v152);
}

uint64_t type metadata accessor for FlowAction.Destination(uint64_t a1)
{
  result = qword_27F227198;
  if (!qword_27F227198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAB9588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227140, &qword_24F97DA70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAB9610(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction.Destination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24EAB9674(unint64_t a1)
{
  switch((a1 >> 59) & 0x1E | (a1 >> 2) & 1)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24EAB9700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EAB9760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAB97A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_24EAB9810(uint64_t a1)
{
  sub_24EAB9A28(319);
  if (v1 <= 0x3F)
  {
    sub_24F91F4A8();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ArticlePageIntent(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ArcadePageUrls(319);
        if (v4 <= 0x3F)
        {
          sub_24EAB9AB0(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for DynamicUIIntent(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for EditorsChoice(319);
              if (v7 <= 0x3F)
              {
                sub_24E69A5C4(319, &qword_27F2271C8, 0x277CEE4C8);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for PageFacetsPresenter();
                  if (v9 <= 0x3F)
                  {
                    sub_24EAB9B30(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for ProductMediaGalleryPage(319);
                      if (v11 <= 0x3F)
                      {
                        sub_24EAB9BDC(319);
                        if (v12 <= 0x3F)
                        {
                          sub_24EAB9C44(319);
                          if (v13 <= 0x3F)
                          {
                            type metadata accessor for Review(319);
                            if (v14 <= 0x3F)
                            {
                              type metadata accessor for ReviewsPage(319);
                              if (v15 <= 0x3F)
                              {
                                sub_24EAB9CC0(319);
                                if (v16 <= 0x3F)
                                {
                                  type metadata accessor for TextCard();
                                  if (v17 <= 0x3F)
                                  {
                                    type metadata accessor for TodayPageIntent(319);
                                    if (v18 <= 0x3F)
                                    {
                                      sub_24EAB9D44(319);
                                      if (v19 <= 0x3F)
                                      {
                                        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

void sub_24EAB9A28(uint64_t a1)
{
  if (!qword_27F2271A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227140, &qword_24F97DA70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271B0, &qword_24F97DB08);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271A8);
    }
  }
}

void sub_24EAB9AB0(uint64_t a1)
{
  if (!qword_27F2271B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271C0, &qword_24F97DB10);
    sub_24F91F4A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271B8);
    }
  }
}

void sub_24EAB9B30(uint64_t a1)
{
  if (!qword_27F2271D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222A78, &unk_24F96B6B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271D8, &qword_24F97DB18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271E0, &qword_24F97DB20);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F2271D0);
    }
  }
}

void sub_24EAB9BDC(uint64_t a1)
{
  if (!qword_27F2271E8)
  {
    sub_24E69A5C4(255, &qword_27F227150, 0x277CEE4E8);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2271E8);
    }
  }
}

void sub_24EAB9C44(uint64_t a1)
{
  if (!qword_27F2271F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2271F8, &qword_24F97DB28);
    type metadata accessor for HttpTemplateAction(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F2271F0);
    }
  }
}

void sub_24EAB9CC0(uint64_t a1)
{
  if (!qword_27F227200)
  {
    type metadata accessor for ShareSheetData(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227208, &qword_24F97DB30);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F227200);
    }
  }
}

void sub_24EAB9D44(uint64_t a1)
{
  if (!qword_27F227210)
  {
    sub_24F91F4A8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F227210);
    }
  }
}

GameStoreKit::SearchResultType_optional __swiftcall SearchResultType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SearchResultType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 0x746E657645707061;
  if (v1 != 6)
  {
    v3 = 0x6553646564697567;
  }

  v4 = 0x656C646E7562;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6169726F74696465;
  if (v1 != 2)
  {
    v5 = 0x7275507070416E69;
  }

  if (*v0)
  {
    v2 = 0x747265766461;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_24EAB9F64(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  v5 = 0xE800000000000000;
  v6 = 0x746E657645707061;
  if (v2 != 6)
  {
    v6 = 0x6553646564697567;
    v5 = 0xEC00000068637261;
  }

  v7 = 0xE600000000000000;
  v8 = 0x656C646E7562;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000024FA42070;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE90000000000006CLL;
  v10 = 0x6169726F74696465;
  if (v2 != 2)
  {
    v10 = 0x7275507070416E69;
    v9 = 0xED00006573616863;
  }

  if (*v1)
  {
    v4 = 0x747265766461;
    v3 = 0xE600000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t SearchResult.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  SearchResult.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t SearchResult.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v58 = sub_24F9285B8();
  v52 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v49 = &v48 - v8;
  v9 = sub_24F91F6B8();
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F928388();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v50 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v48 - v19;
  *(v3 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity) = 0;
  v53 = a1;
  sub_24F928398();
  v21 = sub_24F928348();
  v64 = a2;
  if (v22)
  {
    v59 = v21;
    v60 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    v55[1](v11, v9);
    v59 = v23;
    v60 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v13 + 8);
  v27 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (v26)(v20, v12);
  v28 = v62;
  *(v3 + 24) = v61;
  *(v3 + 40) = v28;
  *(v3 + 56) = v63;
  v29 = type metadata accessor for Action(0);
  v30 = v53;
  sub_24F928398();
  v31 = static Action.tryToMakeInstance(byDeserializing:using:)(v17, v64);
  (v26)(v17, v12);
  v55 = v26;
  v56 = v12;
  v54 = v27;
  if (v31)
  {
    v32 = sub_24EABB894(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v29 = 0;
    v32 = 0;
  }

  *(v3 + 64) = v31;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  *(v3 + 88) = v29;
  *(v3 + 96) = v32;
  sub_24F929608();
  v33 = v30;
  sub_24F928398();
  v34 = v52;
  v48 = *(v52 + 16);
  v48(v57, v64, v58);
  v35 = v49;
  sub_24F929548();
  v36 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics;
  sub_24E65E0D4(v35, v3 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics);
  v37 = v50;
  sub_24F928398();
  sub_24EABA7D4();
  v38 = v51;
  sub_24F928218();
  v51 = v38;
  if (v38)
  {
    (*(v34 + 8))(v64, v58);
    v40 = v55;
    v39 = v56;
    (v55)(v33, v56);
    (v40)(v37, v39);
    sub_24E6585F8(v3 + 24);
    sub_24E601704(v3 + 64, qword_27F21B590, &unk_24F93BE30);
    sub_24E601704(v3 + v36, &qword_27F213E68, &unk_24F93BC80);

    type metadata accessor for SearchResult(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v41 = v55;
    v42 = v56;
    (v55)(v37, v56);
    *(v3 + 17) = v61;
    sub_24F928398();
    sub_24EABA874();
    sub_24F928208();
    (v41)(v17, v42);
    *(v3 + 16) = v61;
    type metadata accessor for SearchAdOpportunity();
    sub_24F928398();
    v43 = v58;
    v44 = v64;
    v48(v57, v64, v58);
    sub_24EABB894(&qword_27F227228, type metadata accessor for SearchAdOpportunity, &protocol conformance descriptor for SearchAdOpportunity);
    sub_24F929548();
    (*(v34 + 8))(v44, v43);
    (v55)(v33, v56);
    v45 = v59;
    v46 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
    swift_beginAccess();
    *(v3 + v46) = v45;
  }

  return v3;
}

unint64_t sub_24EABA7D4()
{
  result = qword_27F227218;
  if (!qword_27F227218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227218);
  }

  return result;
}

uint64_t type metadata accessor for SearchResult(uint64_t a1)
{
  result = qword_27F227240;
  if (!qword_27F227240)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24EABA874()
{
  result = qword_27F227220;
  if (!qword_27F227220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227220);
  }

  return result;
}

char *static SearchResult.makeInstance(byDeserializing:using:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EABA7D4();
  sub_24F928218();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
  v11[0] = v11[1];
  return sub_24EABB1CC(v11, a1, a2);
}

char *sub_24EABAA2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  sub_24F928398();
  sub_24EABA7D4();
  sub_24F928218();
  if (v3)
  {

    (*(v8 + 8))(v10, v7);
    result = 0;
  }

  else
  {
    (*(v8 + 8))(v10, v7);
    v13[0] = v13[1];
    result = sub_24EABB1CC(v13, a1, a2);
  }

  *a3 = result;
  return result;
}

double sub_24EABAC38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_24EABACE8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t SearchResult.deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return v0;
}

uint64_t SearchResult.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 24);
  sub_24E601704(v0 + 64, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit12SearchResult_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);

  return swift_deallocClassInstance();
}

uint64_t sub_24EABAEE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 136))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s12GameStoreKit12SearchResultC18tryToMakeInstances15byDeserializing5usingSayACGSg9JetEngine9JSONArrayVSg_AI11JSONContextVtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14[-v5];
  v7 = sub_24F92AC28();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_24E60169C(a1, v6, &qword_27F2213B0, &qword_24F965EC0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_24E601704(v6, &qword_27F2213B0, &qword_24F965EC0);
    return 0;
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = sub_24F92ABF8();
  if (v11)
  {
    (*(v8 + 8))(v10, v7);
    return 0;
  }

  MEMORY[0x28223BE20](v11);
  *&v14[-16] = a2;
  type metadata accessor for SearchResult(0);
  v13 = sub_24F92ABB8();
  (*(v8 + 8))(v10, v7);
  return v13;
}

char *sub_24EABB1CC(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v70 = a2;
  v71 = a3;
  v69 = a1;
  v3 = sub_24F9285B8();
  v4 = *(v3 - 8);
  v72 = v3;
  v73 = v4;
  MEMORY[0x28223BE20](v3);
  v68 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v67 = &v60 - v7;
  MEMORY[0x28223BE20](v8);
  v66 = &v60 - v9;
  MEMORY[0x28223BE20](v10);
  v65 = &v60 - v11;
  MEMORY[0x28223BE20](v12);
  v63 = &v60 - v13;
  MEMORY[0x28223BE20](v14);
  v62 = &v60 - v15;
  MEMORY[0x28223BE20](v16);
  v64 = &v60 - v17;
  MEMORY[0x28223BE20](v18);
  v61 = &v60 - v19;
  v20 = sub_24F928388();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v60 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v60 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v60 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = &v60 - v34;
  MEMORY[0x28223BE20](v36);
  v38 = &v60 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v60 - v40;
  v45 = MEMORY[0x28223BE20](v42);
  v46 = (&v60 - v44);
  v47 = *v69;
  if (v47 > 3)
  {
    if (*v69 > 5u)
    {
      if (v47 == 6)
      {
        v53 = v43;
        type metadata accessor for AppEventSearchResult(0);
        (*(v21 + 16))(v26, v70, v53);
        v54 = v67;
        (*(v73 + 16))(v67, v71, v72);
        return AppEventSearchResult.__allocating_init(deserializing:using:)(v26, v54);
      }

      else
      {
        (*(v21 + 16))(v23, v70, v45);
        v59 = v68;
        (*(v73 + 16))(v68, v71, v72);
        return sub_24F889600(v23, v59);
      }
    }

    else if (v47 == 4)
    {
      (*(v21 + 16))(v32, v70, v45);
      v50 = v65;
      (*(v73 + 16))(v65, v71, v72);
      return sub_24EE81274(v32, v50);
    }

    else
    {
      v56 = v43;
      type metadata accessor for LockupCollectionSearchResult(0);
      (*(v21 + 16))(v29, v70, v56);
      v57 = v66;
      (*(v73 + 16))(v66, v71, v72);
      return LockupCollectionSearchResult.__allocating_init(deserializing:using:)(v29, v57);
    }
  }

  else if (*v69 > 1u)
  {
    if (v47 == 2)
    {
      v51 = v43;
      type metadata accessor for EditorialSearchResult(0);
      (*(v21 + 16))(v38, v70, v51);
      v52 = v62;
      (*(v73 + 16))(v62, v71, v72);
      return EditorialSearchResult.__allocating_init(deserializing:using:)(v38, v52);
    }

    else
    {
      (*(v21 + 16))(v35, v70, v45);
      v58 = v63;
      (*(v73 + 16))(v63, v71, v72);
      return sub_24F0A236C(v35, v58);
    }
  }

  else if (*v69)
  {
    (*(v21 + 16))(v41, v70, v45);
    v55 = v64;
    (*(v73 + 16))(v64, v71, v72);
    type metadata accessor for AdvertsSearchResult(0);
    swift_allocObject();
    return AdvertsSearchResult.init(deserializing:using:)(v41, v55);
  }

  else
  {
    (*(v21 + 16))(&v60 - v44, v70, v45);
    v48 = v61;
    (*(v73 + 16))(v61, v71, v72);
    return sub_24F134150(v46, v48);
  }
}

unint64_t sub_24EABB7F8()
{
  result = qword_27F227230;
  if (!qword_27F227230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227230);
  }

  return result;
}

uint64_t sub_24EABB894(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EABB8DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit12SearchResult_searchAdOpportunity;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_24EABB954(uint64_t a1)
{
  sub_24E61C938(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

const char *Feature.iOS.feature.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = "todayWidget";
    v8 = "arcade_choose_your_favorites_brick_Future";
    v9 = "arcade_see_all_games_uplift_navigation_bar_Future";
    if (v1 != 3)
    {
      v9 = "arcade_see_all_games_uplift_ribbon_bar_Future";
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = "today_tab_largest_ax_support";
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = "mini_today_cards_product";
    v3 = "mini_today_cards_grouping";
    if (v1 != 9)
    {
      v3 = "mini_today_cards_article";
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = "arcade_see_all_games_menu_uplift";
    v5 = "arcade_hero_video_page_timer";
    if (v1 != 6)
    {
      v5 = "app_genome_2025A";
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t Feature.iOS.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_24F92CB88();

  v6 = 11;
  if (v4 < 0xB)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

unint64_t Feature.iOS.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6469577961646F74;
    v7 = 0xD000000000000029;
    v8 = 0xD000000000000031;
    if (v1 != 3)
    {
      v8 = 0xD00000000000002DLL;
    }

    if (v1 != 2)
    {
      v7 = v8;
    }

    if (*v0)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000018;
    v3 = 0xD000000000000019;
    if (v1 != 9)
    {
      v3 = 0xD000000000000018;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000010;
    if (v1 == 6)
    {
      v4 = 0xD00000000000001CLL;
    }

    if (v1 == 5)
    {
      v4 = 0xD000000000000020;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_24EABBDE0()
{
  result = qword_27F227250;
  if (!qword_27F227250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227250);
  }

  return result;
}

uint64_t sub_24EABBE34()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203148(v3, v1);
  return sub_24F92D0B8();
}

uint64_t sub_24EABBE84()
{
  v1 = *v0;
  sub_24F92D068();
  sub_24F203148(v3, v1);
  return sub_24F92D0B8();
}

unint64_t sub_24EABBED4@<X0>(unint64_t *a1@<X8>)
{
  result = Feature.iOS.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

GameStoreKit::StringCharacteristics __swiftcall StringCharacteristics.init(byAnalyzing:)(Swift::String_optional byAnalyzing)
{
  object = byAnalyzing.value._object;
  countAndFlagsBits = byAnalyzing.value._countAndFlagsBits;
  v4 = v1;
  v5 = sub_24F91EAA8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (object)
  {
    v28 = v4;
    v30 = countAndFlagsBits;
    v31 = object;
    sub_24F91EA78();
    v10 = sub_24E600AEC();
    sub_24F92C508();
    v12 = v11;
    v13 = *(v6 + 8);
    v13(v9, v5);
    v14 = (v12 & 1) == 0;
    v30 = countAndFlagsBits;
    v31 = object;
    if (qword_27F2104D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v5, qword_27F22C288);
    sub_24F92C508();
    if ((v15 & 1) == 0)
    {
      v14 |= 8uLL;
    }

    v30 = countAndFlagsBits;
    v31 = object;
    sub_24F91EA18();
    v29 = v10;
    v16 = v14;
    sub_24F92C508();
    v18 = v17;
    v13(v9, v5);
    if ((v18 & 1) == 0 || (v30 = countAndFlagsBits, v31 = object, sub_24F91EA48(), sub_24F92C508(), v20 = v19, v13(v9, v5), (v20 & 1) == 0))
    {
      v16 = v14 | 2;
    }

    v21 = HIBYTE(object) & 0xF;
    if ((object & 0x2000000000000000) == 0)
    {
      v21 = countAndFlagsBits;
    }

    v22 = 7;
    if (((object >> 60) & ((countAndFlagsBits & 0x800000000000000) == 0)) != 0)
    {
      v22 = 11;
    }

    v23 = v22 | (v21 << 16);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v30 = countAndFlagsBits;
    v31 = object;
    v32 = 15;
    v33 = v23;
    v25 = swift_allocObject();
    v25[2] = countAndFlagsBits;
    v25[3] = object;
    v25[4] = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227258, &unk_24F97DF90);
    sub_24E602068(&qword_27F227260, &qword_27F227258, &unk_24F97DF90, MEMORY[0x277D83D30]);
    sub_24F92C548();

    swift_beginAccess();
    LODWORD(v23) = *(v24 + 16);

    v26 = v16 | 4;
    if (!v23)
    {
      v26 = v16;
    }

    v4 = v28;
  }

  else
  {
    v26 = 0;
  }

  *v4 = v26;
  return result;
}

uint64_t StringCharacteristics.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_24E615CF4(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_24E615CF4((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000014;
  *(v5 + 5) = 0x800000024FA51C20;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_24E615CF4(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_24E615CF4((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000013;
    *(v8 + 5) = 0x800000024FA51C00;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2285F0, &qword_24F93B070);
  sub_24E602068(&qword_27F23E240, &unk_27F2285F0, &qword_24F93B070, MEMORY[0x277D83958]);
  v9 = sub_24F92AF68();
  v11 = v10;

  MEMORY[0x253050C20](v9, v11);

  MEMORY[0x253050C20](93, 0xE100000000000000);
  return 91;
}

uint64_t sub_24EABC510()
{

  return swift_deallocObject();
}

uint64_t sub_24EABC550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v9 = *(v7 + 32);
  result = sub_24F92B318();
  if (result >= 9)
  {
    result = swift_beginAccess();
    *(v9 + 16) = 1;
    *a7 = 1;
  }

  return result;
}

unint64_t sub_24EABC5C0()
{
  result = qword_27F227268;
  if (!qword_27F227268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227268);
  }

  return result;
}

unint64_t sub_24EABC618()
{
  result = qword_27F227270;
  if (!qword_27F227270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227270);
  }

  return result;
}

unint64_t sub_24EABC670()
{
  result = qword_27F227278;
  if (!qword_27F227278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227278);
  }

  return result;
}

unint64_t sub_24EABC6C8()
{
  result = qword_27F227280;
  if (!qword_27F227280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227280);
  }

  return result;
}

uint64_t sub_24EABC7A0@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a3;
  LODWORD(v355) = a1;
  v358 = a6;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v335);
  v319 = &v253 - v10;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227290, &qword_24F97E208);
  MEMORY[0x28223BE20](v333);
  v334 = &v253 - v11;
  v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227298, &qword_24F97E210);
  MEMORY[0x28223BE20](v344);
  v336 = &v253 - v12;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FD8, &qword_24F94D938);
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v273 = &v253 - v13;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FE0, &qword_24F94D940);
  MEMORY[0x28223BE20](v332);
  v289 = &v253 - v14;
  v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A0, &qword_24F97E218);
  MEMORY[0x28223BE20](v317);
  v286 = (&v253 - v15);
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272A8, &qword_24F97E220);
  MEMORY[0x28223BE20](v341);
  v343 = &v253 - v16;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272B0, &qword_24F97E228);
  MEMORY[0x28223BE20](v314);
  v316 = &v253 - v17;
  v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272B8, &qword_24F97E230);
  MEMORY[0x28223BE20](v342);
  v318 = &v253 - v18;
  v348 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272C0, &qword_24F97E238);
  MEMORY[0x28223BE20](v348);
  v20 = &v253 - v19;
  v315 = type metadata accessor for DefaultCardTitleView(0);
  MEMORY[0x28223BE20](v315);
  v307 = &v253 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v323 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v323);
  v305 = &v253 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v321 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272C8, &qword_24F97E240);
  MEMORY[0x28223BE20](v321);
  v322 = &v253 - v23;
  v338 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272D0, &qword_24F97E248);
  MEMORY[0x28223BE20](v338);
  v324 = &v253 - v24;
  v304 = type metadata accessor for HeroCardGameHeadingView(0);
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v268 = &v253 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219E50, &unk_24F94D9F0);
  MEMORY[0x28223BE20](v320);
  v306 = &v253 - v26;
  v272 = sub_24F924B38();
  v266 = *(v272 - 8);
  MEMORY[0x28223BE20](v272);
  v265 = &v253 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = sub_24F921AF8();
  v269 = *(v270 - 8);
  MEMORY[0x28223BE20](v270);
  v267 = &v253 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C20, &unk_24F93E780);
  v292 = *(v293 - 8);
  MEMORY[0x28223BE20](v293);
  v271 = &v253 - v29;
  v312 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272D8, &qword_24F97E250);
  MEMORY[0x28223BE20](v312);
  v294 = &v253 - v30;
  v308 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E0, &unk_24F97E258);
  MEMORY[0x28223BE20](v308);
  v310 = &v253 - v31;
  v279 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v278 = *(v279 - 8);
  MEMORY[0x28223BE20](v279);
  v258 = &v253 - v32;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272E8, &qword_24FA2DD10);
  MEMORY[0x28223BE20](v309);
  v280 = &v253 - v33;
  v345 = sub_24F9289E8();
  v346 = *(v345 - 8);
  MEMORY[0x28223BE20](v345);
  v262 = &v253 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v263 = &v253 - v36;
  MEMORY[0x28223BE20](v37);
  v264 = &v253 - v38;
  MEMORY[0x28223BE20](v39);
  v257 = &v253 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v41 - 8);
  v276 = &v253 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v277 = &v253 - v44;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272F0, &qword_24F97E268);
  MEMORY[0x28223BE20](v329);
  v311 = &v253 - v45;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2272F8, &qword_24F97E270);
  MEMORY[0x28223BE20](v350);
  v352 = &v253 - v46;
  v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227300, &qword_24F97E278);
  MEMORY[0x28223BE20](v339);
  v337 = &v253 - v47;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227308, &qword_24F97E280);
  MEMORY[0x28223BE20](v326);
  v327 = &v253 - v48;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227310, &qword_24F97E288);
  MEMORY[0x28223BE20](v340);
  v328 = &v253 - v49;
  v351 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227318, &qword_24F97E290);
  MEMORY[0x28223BE20](v351);
  v51 = &v253 - v50;
  v302 = type metadata accessor for ActivityCardVisualView(0);
  MEMORY[0x28223BE20](v302);
  v281 = (&v253 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227320, &qword_24F97E298);
  MEMORY[0x28223BE20](v299);
  v300 = &v253 - v53;
  v297 = type metadata accessor for CardCompactAvatarView(0);
  v285 = *(v297 - 8);
  MEMORY[0x28223BE20](v297);
  v261 = &v253 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227328, &unk_24F97E2A0);
  MEMORY[0x28223BE20](v55 - 8);
  v275 = &v253 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v284 = &v253 - v58;
  v296 = type metadata accessor for PlayerAvatar(0);
  v295 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v256 = &v253 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v260 = (&v253 - v61);
  MEMORY[0x28223BE20](v62);
  v282 = (&v253 - v63);
  MEMORY[0x28223BE20](v64);
  v259 = &v253 - v65;
  v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EA10, &qword_24F95D6E0);
  MEMORY[0x28223BE20](v298);
  v283 = &v253 - v66;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227330, &qword_24F97E2B0);
  MEMORY[0x28223BE20](v325);
  v301 = &v253 - v67;
  v354 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227338, &unk_24F97E2B8);
  v68 = *(v354 - 8);
  MEMORY[0x28223BE20](v354);
  v349 = &v253 - v69;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v70 - 8);
  v291 = &v253 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v72);
  v290 = &v253 - v73;
  MEMORY[0x28223BE20](v74);
  v274 = &v253 - v75;
  MEMORY[0x28223BE20](v76);
  v78 = &v253 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v79 - 8);
  v81 = &v253 - v80;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v82 - 8);
  v84 = &v253 - v83;
  v313 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v313);
  v357 = &v253 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v356) = v8;
  v331 = a4;
  sub_24EAC009C(a2, v8, a4, v357);
  v330 = a5;
  sub_24EAC0600(a2, v84);
  v86 = type metadata accessor for ActivityInviteCard(0);
  v87 = a2 + *(v86 + 32);
  v88 = type metadata accessor for CommonCardAttributes(0);
  v89 = *(v87 + *(v88 + 36));
  v353 = v87;
  v347 = v88;
  if (v89)
  {
    v90 = 1;
    v91 = a2;
  }

  else
  {
    sub_24E60169C(v87 + *(v88 + 32), v81, &qword_27F213FB8, &unk_24F93C010);
    v92 = type metadata accessor for GSKVideo(0);
    v90 = 1;
    v93 = v20;
    v94 = (*(*(v92 - 8) + 48))(v81, 1, v92);
    v95 = v81;
    v91 = a2;
    sub_24E601704(v95, &qword_27F213FB8, &unk_24F93C010);
    _ZF = v94 == 1;
    v20 = v93;
    if (_ZF)
    {
      sub_24E60169C(v353 + v347[7], v78, &qword_27F213FB0, &qword_24F93E6B0);
      v90 = (*(v346 + 48))(v78, 1, v345) != 1;
      v91 = a2;
      v20 = v93;
      sub_24E601704(v78, &qword_27F213FB0, &qword_24F93E6B0);
    }
  }

  v97 = v355;
  v98 = v356;
  if (sub_24EAC1F64(v355, v91, v356))
  {
    if (v97 > 5u)
    {
      if (v97 <= 7u)
      {
        if (v97 != 6)
        {
          if (v97 == 7)
          {
            v99 = v307;
            sub_24EAC2710(v353, v307, type metadata accessor for CommonCardAttributes);
            v100 = v315;
            sub_24EAC2710(v357, v99 + *(v315 + 20), type metadata accessor for CardLayoutMetrics);
            *(v99 + *(v100 + 24)) = v98;
            sub_24EAC2710(v99, v316, type metadata accessor for DefaultCardTitleView);
            swift_storeEnumTagMultiPayload();
            sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
            sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
            v101 = v318;
            sub_24F924E28();
            sub_24E60169C(v101, v343, &qword_27F2272B8, &qword_24F97E230);
            swift_storeEnumTagMultiPayload();
            sub_24EAC207C();
            sub_24EAC2164();
            sub_24F924E28();
            sub_24E601704(v101, &qword_27F2272B8, &qword_24F97E230);
            sub_24E60169C(v20, v352, &qword_27F2272C0, &qword_24F97E238);
            swift_storeEnumTagMultiPayload();
            sub_24EAC2248();
            sub_24EAC25BC();
            v102 = v349;
            sub_24F924E28();
            sub_24E601704(v20, &qword_27F2272C0, &qword_24F97E238);
            v103 = type metadata accessor for DefaultCardTitleView;
            v104 = v99;
LABEL_23:
            sub_24EAC27E0(v104, v103);
            v106 = v354;
LABEL_69:
            sub_24E601704(v84, &qword_27F2190D8, &unk_24F94BD70);
            sub_24EAC27E0(v357, type metadata accessor for CardLayoutMetrics);
            sub_24E6009C8(v102, v358, &qword_27F227338, &unk_24F97E2B8);
            v105 = 0;
            return (*(v68 + 56))(v358, v105, 1, v106);
          }

          goto LABEL_64;
        }

        if (v98 > 2u && v98 == 3)
        {

LABEL_60:
          v210 = sub_24F924C98();
          v211 = v286;
          *v286 = v210;
          *(v211 + 8) = 0x4000000000000000;
          *(v211 + 16) = 0;
          v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A0, &qword_24F9D1EF0);
          sub_24EAC0F70(v91, v98, v331, v211 + *(v212 + 44));
          sub_24E60169C(v211, v316, &qword_27F2272A0, &qword_24F97E218);
          swift_storeEnumTagMultiPayload();
          sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
          sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
          v213 = v318;
          sub_24F924E28();
          sub_24E60169C(v213, v343, &qword_27F2272B8, &qword_24F97E230);
          swift_storeEnumTagMultiPayload();
          sub_24EAC207C();
          sub_24EAC2164();
          sub_24F924E28();
          sub_24E601704(v213, &qword_27F2272B8, &qword_24F97E230);
          sub_24E60169C(v20, v352, &qword_27F2272C0, &qword_24F97E238);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2248();
          sub_24EAC25BC();
          v102 = v349;
          v106 = v354;
          sub_24F924E28();
          sub_24E601704(v20, &qword_27F2272C0, &qword_24F97E238);
          v214 = v211;
          v215 = &qword_27F2272A0;
          v216 = &qword_24F97E218;
LABEL_65:
          sub_24E601704(v214, v215, v216);
          goto LABEL_69;
        }

        v209 = sub_24F92CE08();

        v98 = v356;
        if (v209)
        {
          goto LABEL_60;
        }

LABEL_64:
        v249 = v319;
        sub_24E9239A8(v355, v91, v98, v331, v330, v319);
        sub_24E60169C(v249, v334, &qword_27F214A20, &unk_24F94D670);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
        sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v250 = v336;
        sub_24F924E28();
        sub_24E60169C(v250, v343, &qword_27F227298, &qword_24F97E210);
        swift_storeEnumTagMultiPayload();
        sub_24EAC207C();
        sub_24EAC2164();
        sub_24F924E28();
        sub_24E601704(v250, &qword_27F227298, &qword_24F97E210);
        sub_24E60169C(v20, v352, &qword_27F2272C0, &qword_24F97E238);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2248();
        sub_24EAC25BC();
        v102 = v349;
        v106 = v354;
        sub_24F924E28();
        sub_24E601704(v20, &qword_27F2272C0, &qword_24F97E238);
        v214 = v249;
        v215 = &qword_27F214A20;
        v216 = &unk_24F94D670;
        goto LABEL_65;
      }

      if (v97 != 8)
      {
        if (v97 == 11)
        {
          v117 = v305;
          sub_24EAC0AC4(v98, v90, v84, v305);
          sub_24EAC2710(v117, v322, type metadata accessor for CardContentBackgroundStyle);
          swift_storeEnumTagMultiPayload();
          sub_24E7179AC();
          sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
          v118 = v324;
          sub_24F924E28();
          sub_24E60169C(v118, v337, &qword_27F2272D0, &qword_24F97E248);
          swift_storeEnumTagMultiPayload();
          sub_24EAC22D4();
          sub_24EAC2500();
          sub_24F924E28();
          sub_24E601704(v118, &qword_27F2272D0, &qword_24F97E248);
          sub_24E60169C(v51, v352, &qword_27F227318, &qword_24F97E290);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2248();
          sub_24EAC25BC();
          v102 = v349;
          sub_24F924E28();
          sub_24E601704(v51, &qword_27F227318, &qword_24F97E290);
          v103 = type metadata accessor for CardContentBackgroundStyle;
          v104 = v117;
          goto LABEL_23;
        }

        goto LABEL_64;
      }

      v121 = v353;
      if (v98)
      {
        v217 = sub_24F92CE08();

        v98 = v356;
        if ((v217 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      else
      {
      }

      v254 = v84;
      v255 = v68;
      v218 = (v121 + v347[15]);
      v219 = v218[1];
      if (v219)
      {
        *&v359 = *v218;
        *(&v359 + 1) = v219;
        sub_24E600AEC();

        v220 = sub_24F925E18();
        v222 = v221;
        v224 = v223;
        sub_24F925A08();
        v225 = sub_24F925C98();
        v226 = v20;
        v228 = v227;
        v230 = v229;
        v232 = v231;

        sub_24E600B40(v220, v222, v224 & 1);

        *&v359 = v225;
        *(&v359 + 1) = v228;
        LOBYTE(v360) = v230 & 1;
        *(&v360 + 1) = v232;
        v233 = v273;
        sub_24F9268B8();
        v234 = v228;
        v20 = v226;
        sub_24E600B40(v225, v234, v230 & 1);

        LODWORD(v220) = sub_24F9251C8();
        *(v233 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)) = v220;
        v235 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0) + 36);
        v236 = *MEMORY[0x277CE13B8];
        v237 = sub_24F927748();
        (*(*(v237 - 8) + 104))(v233 + v235, v236, v237);
        v238 = *(v357 + *(v313 + 112));
        KeyPath = swift_getKeyPath();
        v240 = v233 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219FF8, &unk_24F987C20) + 36);
        *v240 = KeyPath;
        *(v240 + 8) = v238;
        *(v240 + 16) = 0;
        LOBYTE(KeyPath) = sub_24F925818();
        sub_24F923318();
        v241 = v288;
        v242 = v233 + *(v288 + 36);
        *v242 = KeyPath;
        *(v242 + 8) = v243;
        *(v242 + 16) = v244;
        *(v242 + 24) = v245;
        *(v242 + 32) = v246;
        *(v242 + 40) = 0;
        v247 = v289;
        sub_24E6009C8(v233, v289, &qword_27F219FD8, &qword_24F94D938);
        v248 = 0;
      }

      else
      {
        v248 = 1;
        v247 = v289;
        v241 = v288;
      }

      (*(v287 + 56))(v247, v248, 1, v241);
      v139 = &qword_27F219FE0;
      v140 = &qword_24F94D940;
      sub_24E60169C(v247, v334, &qword_27F219FE0, &qword_24F94D940);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
      sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v251 = v336;
      sub_24F924E28();
      sub_24E60169C(v251, v343, &qword_27F227298, &qword_24F97E210);
      swift_storeEnumTagMultiPayload();
      sub_24EAC207C();
      sub_24EAC2164();
      sub_24F924E28();
      sub_24E601704(v251, &qword_27F227298, &qword_24F97E210);
      sub_24E60169C(v20, v352, &qword_27F2272C0, &qword_24F97E238);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v349;
      sub_24F924E28();
      sub_24E601704(v20, &qword_27F2272C0, &qword_24F97E238);
      v142 = v247;
LABEL_68:
      sub_24E601704(v142, v139, v140);
      v106 = v354;
      v68 = v255;
      v84 = v254;
      goto LABEL_69;
    }

    v107 = v353;
    if (v97 != 2)
    {
      if (v97 == 3)
      {
        v122 = v98;
        v123 = v346;
        v124 = (v346 + 48);
        v255 = v68;
        v254 = v84;
        v253 = v51;
        if (v122)
        {
          v125 = v290;
          sub_24E60169C(v353 + v347[10], v290, &qword_27F213FB0, &qword_24F93E6B0);
          v126 = v345;
          if ((*v124)(v125, 1, v345) == 1)
          {
            sub_24E601704(v125, &qword_27F213FB0, &qword_24F93E6B0);
            v127 = v294;
            (*(v292 + 56))(v294, 1, 1, v293);
          }

          else
          {
            v143 = v346;
            v144 = v264;
            (*(v346 + 32))(v264, v125, v126);
            v145 = v263;
            sub_24F9289C8();
            LODWORD(v356) = *MEMORY[0x277CE0118];
            v146 = v266;
            v355 = *(v266 + 104);
            v147 = v265;
            v148 = v272;
            v355(v265);
            v149 = v267;
            sub_24F9219A8();
            (*(v146 + 8))(v147, v148);
            sub_24EAC26C8(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
            sub_24EAC26C8(&qword_27F214C30, MEMORY[0x277D7EBE8], MEMORY[0x277D7EBE0]);
            v150 = v271;
            v151 = v270;
            sub_24F925ED8();
            (*(v269 + 8))(v149, v151);
            v152 = *(v143 + 8);
            v152(v145, v126);
            v153 = sub_24F927618();
            v155 = v154;
            v152(v144, v126);
            v156 = v293;
            v157 = (v150 + *(v293 + 36));
            v158 = sub_24F924258();
            (v355)(v157 + *(v158 + 20), v356, v148);
            __asm { FMOV            V0.2D, #8.0 }

            *v157 = _Q0;
            v163 = (v357 + *(v313 + 128));
            v164 = *v163;
            v165 = v163[1];
            v166 = v163[2];
            v167 = v163[3];
            v168 = (v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1C8, &unk_24F97E300) + 36));
            *v168 = v167;
            v168[1] = v166;
            v168[2] = v164;
            v168[3] = v165;
            v169 = (v157 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C40, &unk_24F94FFE0) + 36));
            *v169 = v153;
            v169[1] = v155;
            v127 = v294;
            sub_24E6009C8(v150, v294, &qword_27F214C20, &unk_24F93E780);
            (*(v292 + 56))(v127, 0, 1, v156);
          }

          v170 = v327;
          sub_24E60169C(v127, v310, &qword_27F2272D8, &qword_24F97E250);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
          sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &qword_24F97E250, sub_24E63CC18);
          v171 = v311;
          sub_24F924E28();
          sub_24E601704(v127, &qword_27F2272D8, &qword_24F97E250);
        }

        else
        {
          v356 = v86;
          v128 = v274;
          sub_24E60169C(v91 + *(v86 + 36), v274, &qword_27F213FB0, &qword_24F93E6B0);
          v129 = v345;
          if ((*v124)(v128, 1, v345) == 1)
          {
            sub_24E601704(v128, &qword_27F213FB0, &qword_24F93E6B0);
            v130 = type metadata accessor for PlayerAvatar.Overlay(0);
            v131 = v276;
            (*(*(v130 - 8) + 56))(v276, 1, 1, v130);
          }

          else
          {
            v172 = *(v123 + 32);
            v173 = v257;
            v172(v257, v128, v129);
            v174 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1E0, &unk_24F94DAF0) + 48);
            v175 = v276;
            v172(v276, v173, v129);
            v131 = v175;
            *&v175[v174] = 0xC024000000000000;
            v176 = type metadata accessor for PlayerAvatar.Overlay(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v176 - 8) + 56))(v175, 0, 1, v176);
          }

          v177 = v279;
          v178 = v278;
          v179 = v277;
          v180 = v295;
          v181 = v275;
          sub_24E6009C8(v131, v277, &qword_27F22DF80, &unk_24F942E50);
          sub_24E60169C(v91 + *(v356 + 44), v181, &qword_27F227328, &unk_24F97E2A0);
          v182 = v296;
          if ((*(v180 + 48))(v181, 1, v296) == 1)
          {
            sub_24E601704(v181, &qword_27F227328, &unk_24F97E2A0);
            v183 = 1;
            v170 = v327;
            v184 = v280;
          }

          else
          {
            v185 = v256;
            sub_24EAC2778(v181, v256, type metadata accessor for PlayerAvatar);
            v186 = v282;
            sub_24EAC2710(v185, v282, type metadata accessor for PlayerAvatar);
            sub_24EAC2650(v179, v186 + *(v182 + 20));
            LOBYTE(v359) = 7;
            v187 = v258;
            sub_24F8319B8(v186, &v359, v258);
            sub_24F927618();
            sub_24F9238C8();
            sub_24EAC27E0(v185, type metadata accessor for PlayerAvatar);
            v188 = (v187 + *(v177 + 36));
            v189 = v360;
            *v188 = v359;
            v188[1] = v189;
            v188[2] = v361;
            v184 = v280;
            sub_24E6009C8(v187, v280, &qword_27F2233D0, &qword_24F958810);
            v183 = 0;
            v170 = v327;
          }

          (*(v178 + 56))(v184, v183, 1, v177);
          sub_24E60169C(v184, v310, &qword_27F2272E8, &qword_24FA2DD10);
          swift_storeEnumTagMultiPayload();
          sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
          sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &qword_24F97E250, sub_24E63CC18);
          v171 = v311;
          sub_24F924E28();
          sub_24E601704(v184, &qword_27F2272E8, &qword_24FA2DD10);
          sub_24E601704(v179, &qword_27F22DF80, &unk_24F942E50);
        }

        v139 = &qword_27F2272F0;
        v140 = &qword_24F97E268;
        sub_24E60169C(v171, v170, &qword_27F2272F0, &qword_24F97E268);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2360();
        sub_24EAC241C();
        v190 = v328;
        sub_24F924E28();
        sub_24E60169C(v190, v337, &qword_27F227310, &qword_24F97E288);
        swift_storeEnumTagMultiPayload();
        sub_24EAC22D4();
        sub_24EAC2500();
        v191 = v253;
        sub_24F924E28();
        sub_24E601704(v190, &qword_27F227310, &qword_24F97E288);
        sub_24E60169C(v191, v352, &qword_27F227318, &qword_24F97E290);
        swift_storeEnumTagMultiPayload();
        sub_24EAC2248();
        sub_24EAC25BC();
        v102 = v349;
        sub_24F924E28();
        sub_24E601704(v191, &qword_27F227318, &qword_24F97E290);
        v142 = v171;
        goto LABEL_68;
      }

      if (v97 != 4)
      {
        goto LABEL_64;
      }

      v108 = (v353 + v347[11]);
      v109 = v108[1];
      v255 = v68;
      v254 = v84;
      if (v109)
      {
        v110 = *v108;
        v111 = v91 + *(v86 + 36);
        v112 = v291;
        sub_24E60169C(v111, v291, &qword_27F213FB0, &qword_24F93E6B0);
        v113 = v346;
        v114 = v345;
        if ((*(v346 + 48))(v112, 1, v345) != 1)
        {
          v115 = v51;
          v132 = v112;
          v133 = v114;
          v134 = *(v113 + 32);
          v135 = v262;
          v134(v262, v132, v133);
          v136 = v268;
          v134(v268, v135, v133);
          v137 = v304;
          v138 = (v136 + *(v304 + 20));
          *v138 = v110;
          v138[1] = v109;
          v116 = v306;
          sub_24EAC2778(v136, v306, type metadata accessor for HeroCardGameHeadingView);
          (*(v303 + 56))(v116, 0, 1, v137);

          goto LABEL_40;
        }

        sub_24E601704(v112, &qword_27F213FB0, &qword_24F93E6B0);
      }

      v115 = v51;
      v116 = v306;
      (*(v303 + 56))(v306, 1, 1, v304);
LABEL_40:
      v139 = &qword_27F219E50;
      v140 = &unk_24F94D9F0;
      sub_24E60169C(v116, v322, &qword_27F219E50, &unk_24F94D9F0);
      swift_storeEnumTagMultiPayload();
      sub_24E7179AC();
      sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
      v141 = v324;
      sub_24F924E28();
      sub_24E60169C(v141, v337, &qword_27F2272D0, &qword_24F97E248);
      swift_storeEnumTagMultiPayload();
      sub_24EAC22D4();
      sub_24EAC2500();
      sub_24F924E28();
      sub_24E601704(v141, &qword_27F2272D0, &qword_24F97E248);
      sub_24E60169C(v115, v352, &qword_27F227318, &qword_24F97E290);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v349;
      sub_24F924E28();
      sub_24E601704(v115, &qword_27F227318, &qword_24F97E290);
      v142 = v116;
      goto LABEL_68;
    }

    v119 = v86;
    v255 = v68;
    v254 = v84;
    if (v98 > 2u)
    {
      v120 = v297;
    }

    else
    {
      v120 = v297;
      if (v98 == 1)
      {

        goto LABEL_53;
      }
    }

    v192 = sub_24F92CE08();

    if ((v192 & 1) == 0)
    {
      v196 = v51;
      v197 = v302;
      v198 = v281;
      sub_24EAC2710(v107, v281 + *(v302 + 24), type metadata accessor for CommonCardAttributes);
      *v198 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
      swift_storeEnumTagMultiPayload();
      v199 = v198 + *(v197 + 20);
      type metadata accessor for CardSafeArea(0);
      sub_24EAC26C8(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      *v199 = sub_24F923598();
      v199[8] = v200 & 1;
      *(v198 + *(v197 + 28)) = v356;
      sub_24EAC2710(v198, v300, type metadata accessor for ActivityCardVisualView);
      swift_storeEnumTagMultiPayload();
      sub_24E81828C();
      sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
      v201 = v301;
      sub_24F924E28();
      sub_24EAC27E0(v198, type metadata accessor for ActivityCardVisualView);
LABEL_58:
      v139 = &qword_27F227330;
      v140 = &qword_24F97E2B0;
      sub_24E60169C(v201, v327, &qword_27F227330, &qword_24F97E2B0);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2360();
      sub_24EAC241C();
      v208 = v328;
      sub_24F924E28();
      sub_24E60169C(v208, v337, &qword_27F227310, &qword_24F97E288);
      swift_storeEnumTagMultiPayload();
      sub_24EAC22D4();
      sub_24EAC2500();
      sub_24F924E28();
      sub_24E601704(v208, &qword_27F227310, &qword_24F97E288);
      sub_24E60169C(v196, v352, &qword_27F227318, &qword_24F97E290);
      swift_storeEnumTagMultiPayload();
      sub_24EAC2248();
      sub_24EAC25BC();
      v102 = v349;
      sub_24F924E28();
      sub_24E601704(v196, &qword_27F227318, &qword_24F97E290);
      v142 = v201;
      goto LABEL_68;
    }

LABEL_53:
    v193 = v284;
    sub_24E60169C(v91 + *(v119 + 44), v284, &qword_27F227328, &unk_24F97E2A0);
    if ((*(v295 + 48))(v193, 1, v296) == 1)
    {
      sub_24E601704(v193, &qword_27F227328, &unk_24F97E2A0);
      v194 = 1;
      v195 = v283;
    }

    else
    {
      v202 = v259;
      sub_24EAC2778(v193, v259, type metadata accessor for PlayerAvatar);
      v203 = v282;
      sub_24EAC2710(v202, v282, type metadata accessor for PlayerAvatar);
      v204 = v261;
      v205 = &v261[*(v120 + 20)];
      type metadata accessor for CardSafeArea(0);
      sub_24EAC26C8(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
      *v205 = sub_24F923598();
      v205[8] = v206 & 1;
      v207 = v260;
      sub_24EAC2710(v203, v260, type metadata accessor for PlayerAvatar);
      LOBYTE(v359) = 7;
      sub_24F8319B8(v207, &v359, v204);
      sub_24EAC27E0(v203, type metadata accessor for PlayerAvatar);
      sub_24EAC27E0(v202, type metadata accessor for PlayerAvatar);
      v195 = v283;
      sub_24EAC2778(v204, v283, type metadata accessor for CardCompactAvatarView);
      v194 = 0;
    }

    v196 = v51;
    (*(v285 + 56))(v195, v194, 1, v120);
    sub_24E60169C(v195, v300, &qword_27F21EA10, &qword_24F95D6E0);
    swift_storeEnumTagMultiPayload();
    sub_24E81828C();
    sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
    v201 = v301;
    sub_24F924E28();
    sub_24E601704(v195, &qword_27F21EA10, &qword_24F95D6E0);
    goto LABEL_58;
  }

  sub_24E601704(v84, &qword_27F2190D8, &unk_24F94BD70);
  sub_24EAC27E0(v357, type metadata accessor for CardLayoutMetrics);
  v105 = 1;
  v106 = v354;
  return (*(v68 + 56))(v358, v105, 1, v106);
}

void sub_24EAC009C(uint64_t a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_24F9259C8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      sub_24F4E9558(a3, v14);
      v16 = 0;
LABEL_22:
      sub_24EAC2778(v14, a4, type metadata accessor for CardLayoutMetrics);
      *(a4 + v12[17]) = v16;
      v18 = v12[30];
      v19 = 26.0;
      goto LABEL_23;
    }

    if (a2 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v12, qword_27F39E610);
      sub_24EAC2710(v15, v14, type metadata accessor for CardLayoutMetrics);
      v16 = 0;
      goto LABEL_22;
    }

    if (qword_27F211308 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39E658;
    goto LABEL_20;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      sub_24F4E9E44(a3, v14);
LABEL_21:
      v16 = 1;
      goto LABEL_22;
    }

    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v20 = qword_27F39E628;
LABEL_20:
    v21 = __swift_project_value_buffer(v12, v20);
    sub_24EAC2710(v21, v14, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (qword_27F211300 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_27F39E640);
  sub_24EAC2710(v17, v14, type metadata accessor for CardLayoutMetrics);
  sub_24EAC2778(v14, a4, type metadata accessor for CardLayoutMetrics);
  *(a4 + v12[17]) = 1;
  v18 = v12[30];
  v19 = *(a4 + v18);
LABEL_23:
  *(a4 + v18) = v19;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v28 = xmmword_27F254460;
  v22 = qword_27F254470;
  v23 = qword_27F254478;
  v24 = a4 + v12[32];

  *v24 = v28;
  *(v24 + 16) = v22;
  *(v24 + 24) = v23;
  if (*(a1 + *(type metadata accessor for ActivityInviteCard(0) + 48)) == 1)
  {
    if (a2 == 3)
    {

      *(a4 + v12[13]) = 1;
      goto LABEL_33;
    }

    v25 = sub_24F92CE08();
  }

  else
  {
    v25 = 0;
  }

  *(a4 + v12[13]) = v25 & 1;
  if (((1 << a2) & 0x36) != 0)
  {
LABEL_34:
    v27 = v12[20];

    goto LABEL_35;
  }

  if (a2)
  {
LABEL_33:
    *(a4 + v12[16]) = 0x4024000000000000;
    goto LABEL_34;
  }

  sub_24F925898();
  sub_24F9258E8();

  (*(v9 + 104))(v11, *MEMORY[0x277CE0A10], v8);
  v26 = sub_24F9259F8();

  (*(v9 + 8))(v11, v8);
  v27 = v12[20];
LABEL_35:

  *(a4 + v27) = v26;
}

uint64_t sub_24EAC0600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_24F9289E8();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for GSKVideo(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + *(type metadata accessor for ActivityInviteCard(0) + 32);
  v16 = type metadata accessor for CommonCardAttributes(0);
  sub_24E60169C(v15 + *(v16 + 32), v10, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_24E601704(v10, &qword_27F213FB8, &unk_24F93C010);
    sub_24E60169C(v15 + *(v16 + 28), v5, &qword_27F213FB0, &qword_24F93E6B0);
    v17 = v35;
    if ((*(v35 + 48))(v5, 1, v6) == 1)
    {
      sub_24E601704(v5, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_14:
      v30 = type metadata accessor for ColorGroup(0);
      return (*(*(v30 - 8) + 56))(v36, 1, 1, v30);
    }

    v24 = v34;
    (*(v17 + 32))(v34, v5, v6);
    v25 = sub_24F9289A8();
    if (!v25)
    {
      (*(v17 + 8))(v24, v6);
      goto LABEL_14;
    }

    v26 = qword_27F20FEE0;
    v27 = v25;
    if (v26 != -1)
    {
      v32 = v27;
      swift_once();
      v27 = v32;
    }

    v28 = v27;
    v29 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v29);

    return (*(v17 + 8))(v24, v6);
  }

  else
  {
    sub_24EAC2778(v10, v14, type metadata accessor for GSKVideo);
    v18 = sub_24F9289A8();
    if (!v18)
    {
      sub_24EAC27E0(v14, type metadata accessor for GSKVideo);
      goto LABEL_14;
    }

    v19 = qword_27F20FEE0;
    v20 = v18;
    if (v19 != -1)
    {
      v31 = v20;
      swift_once();
      v20 = v31;
    }

    v21 = v20;
    v22 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v22);

    return sub_24EAC27E0(v14, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24EAC0AC4@<X0>(unsigned __int8 a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ColorGroup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 2u)
  {
    if (a1 == 3)
    {

      v26 = 3;
LABEL_17:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      (*(*(v28 - 8) + 56))(v17, v26, 5, v28);
      if ((a2 & 1) == 0)
      {
        return sub_24EAC2778(v17, a4, type metadata accessor for CardContentBackgroundStyle);
      }

      sub_24EAC27E0(v17, type metadata accessor for CardContentBackgroundStyle);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
      return (*(*(v29 - 8) + 56))(a4, 5, 5, v29);
    }

    if (a1 == 4)
    {
      sub_24E60169C(a3, v10, &qword_27F2190D8, &unk_24F94BD70);
      if ((*(v12 + 48))(v10, 1, v11) == 1)
      {
        sub_24E601704(v10, &qword_27F2190D8, &unk_24F94BD70);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        return (*(*(v23 - 8) + 56))(a4, 1, 5, v23);
      }

      else
      {
        sub_24EAC2778(v10, v14, type metadata accessor for ColorGroup);
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        v31 = *(v30 + 48);
        sub_24EAC2778(v14, a4, type metadata accessor for ColorGroup);
        (*(v12 + 56))(a4, 0, 1, v11);
        *(a4 + v31) = 1;
        return (*(*(v30 - 8) + 56))(a4, 0, 5, v30);
      }
    }

LABEL_9:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
    v19 = *(*(v25 - 8) + 56);
    v20 = v25;
    v21 = a4;
    v22 = 1;
    goto LABEL_10;
  }

  if (!a1)
  {
    goto LABEL_9;
  }

  if (a1 != 1)
  {
    v27 = sub_24F92CE08();

    if (v27)
    {
      v26 = 3;
    }

    else
    {
      v26 = 1;
    }

    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
  v19 = *(*(v18 - 8) + 56);
  v20 = v18;
  v21 = a4;
  v22 = 2;
LABEL_10:

  return v19(v21, v22, 5, v20);
}

uint64_t sub_24EAC0F70@<X0>(uint64_t a1@<X0>, int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v110 = a3;
  v112 = a2;
  v137 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221BD8, &unk_24F967D00);
  MEMORY[0x28223BE20](v135);
  v136 = &v106 - v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DC0, &unk_24F9D1E50);
  MEMORY[0x28223BE20](v133);
  v134 = &v106 - v6;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221DA8, &unk_24F97E340);
  MEMORY[0x28223BE20](v126);
  v129 = &v106 - v7;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221D98, &qword_24F9D1E60);
  MEMORY[0x28223BE20](v118);
  v120 = &v106 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BB8, &unk_24F93E750);
  MEMORY[0x28223BE20](v123);
  v122 = &v106 - v9;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B20, &unk_24F94FF90);
  MEMORY[0x28223BE20](v128);
  v127 = &v106 - v10;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B10, &unk_24F93E700);
  MEMORY[0x28223BE20](v132);
  v131 = &v106 - v11;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B98, &unk_24F93E740);
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v111 = &v106 - v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B88, &unk_24F94FFC0);
  MEMORY[0x28223BE20](v117);
  v124 = &v106 - v13;
  v138 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v138);
  v114 = (&v106 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v141 = &v106 - v16;
  v113 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v113);
  v18 = &v106 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v119 = &v106 - v22;
  MEMORY[0x28223BE20](v23);
  v125 = &v106 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A1A8, &qword_24F94DAB0);
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v106 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273A8, &qword_24F97E350);
  MEMORY[0x28223BE20](v29 - 8);
  v121 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v106 - v32;
  v34 = type metadata accessor for ActivityInviteCard(0);
  v35 = (a1 + *(v34 + 40));
  v36 = v35[1];
  v37 = MEMORY[0x277CE13B8];
  v139 = v33;
  v140 = v18;
  if (v36)
  {
    v142 = *v35;
    v143 = v36;
    sub_24E600AEC();

    v38 = sub_24F925E18();
    v40 = v39;
    v42 = v41;
    v108 = v26;
    sub_24F925A08();
    v43 = sub_24F925C98();
    v107 = v25;
    v44 = v43;
    v46 = v45;
    v109 = a1;
    v48 = v47;
    v106 = v49;

    sub_24E600B40(v38, v40, v42 & 1);

    v142 = v44;
    v143 = v46;
    v50 = v48 & 1;
    a1 = v109;
    v144 = v50;
    v145 = v106;
    sub_24F9268B8();
    v37 = MEMORY[0x277CE13B8];
    v51 = v50;
    v52 = v139;
    sub_24E600B40(v44, v46, v51);

    LODWORD(v38) = sub_24F9251C8();
    *&v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217358, &qword_24F9D1F60) + 36)] = v38;
    v53 = v107;
    v54 = *(v107 + 36);
    v55 = *v37;
    v56 = sub_24F927748();
    v57 = &v28[v54];
    v18 = v140;
    (*(*(v56 - 8) + 104))(v57, v55, v56);
    sub_24E6009C8(v28, v52, &qword_27F21A1A8, &qword_24F94DAB0);
    (*(v108 + 56))(v52, 0, 1, v53);
  }

  else
  {
    (*(v26 + 56))(v33, 1, 1, v25);
  }

  sub_24EAC2710(a1 + *(v34 + 32), v18, type metadata accessor for CommonCardAttributes);
  if (v112 > 2u)
  {
    v58 = v141;
    v59 = v138;
    v60 = v114;
    if (v112 == 3)
    {
      sub_24F4E9558(v110, v114);
      goto LABEL_24;
    }

    if (v112 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v61 = qword_27F39E658;
    }

LABEL_23:
    v62 = __swift_project_value_buffer(v59, v61);
    sub_24EAC2710(v62, v60, type metadata accessor for CardLayoutMetrics);
    goto LABEL_24;
  }

  v58 = v141;
  v59 = v138;
  v60 = v114;
  if (!v112)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E640;
    goto LABEL_23;
  }

  if (v112 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v61 = qword_27F39E628;
    goto LABEL_23;
  }

  sub_24F4E9E44(v110, v114);
LABEL_24:
  sub_24EAC2778(v60, v58, type metadata accessor for CardLayoutMetrics);
  v63 = &v18[*(v113 + 52)];
  v64 = *(v63 + 1);
  if (!v64)
  {
    goto LABEL_29;
  }

  v65 = *v63;
  v66 = HIBYTE(v64) & 0xF;
  if ((v64 & 0x2000000000000000) == 0)
  {
    v66 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v66)
  {
    v142 = v65;
    v143 = v64;
    sub_24E600AEC();

    v67 = sub_24F925E18();
    v69 = v68;
    v71 = v70;
    v72 = sub_24F925C98();
    v74 = v73;
    v76 = v75;
    sub_24E600B40(v67, v69, v71 & 1);

    LODWORD(v142) = sub_24F9251C8();
    v77 = sub_24F925C58();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    sub_24E600B40(v72, v74, v76 & 1);

    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BA8, &unk_24F94DA80) + 36);
    v85 = *v37;
    v86 = sub_24F927748();
    v87 = v111;
    (*(*(v86 - 8) + 104))(&v111[v84], v85, v86);
    *v87 = v77;
    *(v87 + 8) = v79;
    *(v87 + 16) = v81 & 1;
    *(v87 + 24) = v83;
    v88 = *(v58 + *(v138 + 104));
    KeyPath = swift_getKeyPath();
    v90 = v116;
    v91 = v87 + *(v116 + 36);
    *v91 = KeyPath;
    *(v91 + 8) = v88;
    *(v91 + 16) = 0;
    v92 = v124;
    sub_24E6009C8(v87, v124, &qword_27F214B98, &unk_24F93E740);
    v93 = 0;
  }

  else
  {
LABEL_29:
    v93 = 1;
    v92 = v124;
    v90 = v116;
  }

  (*(v115 + 56))(v92, v93, 1, v90);
  sub_24E60169C(v92, v120, &qword_27F214B88, &unk_24F94FFC0);
  swift_storeEnumTagMultiPayload();
  sub_24EAC2884(&qword_27F214B80, &qword_27F214B88, &unk_24F94FFC0, sub_24E63C774);
  v94 = v122;
  sub_24F924E28();
  sub_24E60169C(v94, v129, &qword_27F214BB8, &unk_24F93E750);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B30, &unk_24F93E710);
  sub_24E63C434();
  sub_24E63C8B0();
  v95 = v127;
  sub_24F924E28();
  sub_24E601704(v94, &qword_27F214BB8, &unk_24F93E750);
  sub_24E60169C(v95, v134, &qword_27F214B20, &unk_24F94FF90);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214BC8, &unk_24F94DA90);
  sub_24E63C3A8();
  sub_24E63C960();
  v96 = v131;
  sub_24F924E28();
  sub_24E601704(v95, &qword_27F214B20, &unk_24F94FF90);
  sub_24E60169C(v96, v136, &qword_27F214B10, &unk_24F93E700);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214C50, &unk_24F93E790);
  sub_24E63C31C();
  sub_24E63CD80();
  v97 = v119;
  sub_24F924E28();
  sub_24E601704(v96, &qword_27F214B10, &unk_24F93E700);
  sub_24E601704(v92, &qword_27F214B88, &unk_24F94FFC0);
  sub_24EAC27E0(v140, type metadata accessor for CommonCardAttributes);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214B00, &unk_24F94FF80);
  (*(*(v98 - 8) + 56))(v97, 0, 1, v98);
  v99 = v125;
  sub_24E6009C8(v97, v125, &qword_27F214A20, &unk_24F94D670);
  sub_24EAC27E0(v141, type metadata accessor for CardLayoutMetrics);
  v100 = v139;
  v101 = v121;
  sub_24E60169C(v139, v121, &qword_27F2273A8, &qword_24F97E350);
  v102 = v130;
  sub_24E60169C(v99, v130, &qword_27F214A20, &unk_24F94D670);
  v103 = v137;
  sub_24E60169C(v101, v137, &qword_27F2273A8, &qword_24F97E350);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273B0, &qword_24F97E358);
  sub_24E60169C(v102, v103 + *(v104 + 48), &qword_27F214A20, &unk_24F94D670);
  sub_24E601704(v99, &qword_27F214A20, &unk_24F94D670);
  sub_24E601704(v100, &qword_27F2273A8, &qword_24F97E350);
  sub_24E601704(v102, &qword_27F214A20, &unk_24F94D670);
  return sub_24E601704(v101, &qword_27F2273A8, &qword_24F97E350);
}

uint64_t sub_24EAC1F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 == 4)
  {
    if (a3 < 4u || a3 == 4)
    {
      v4 = sub_24F92CE08();

      return v4 & 1;
    }

    else
    {

      return 1;
    }
  }

  else
  {

    return sub_24E92D030(a1, a2, a3);
  }
}

unint64_t sub_24EAC207C()
{
  result = qword_27F227340;
  if (!qword_27F227340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272B8, &qword_24F97E230);
    sub_24EAC26C8(&qword_27F214BE0, type metadata accessor for DefaultCardTitleView, &unk_24FA04808);
    sub_24E602068(&qword_27F227348, &qword_27F2272A0, &qword_24F97E218, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227340);
  }

  return result;
}

unint64_t sub_24EAC2164()
{
  result = qword_27F227350;
  if (!qword_27F227350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227298, &qword_24F97E210);
    sub_24EAC2884(&qword_27F21A1B0, &qword_27F219FE0, &qword_24F94D940, sub_24E72627C);
    sub_24EAC2884(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227350);
  }

  return result;
}

unint64_t sub_24EAC2248()
{
  result = qword_27F227358;
  if (!qword_27F227358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227318, &qword_24F97E290);
    sub_24EAC22D4();
    sub_24EAC2500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227358);
  }

  return result;
}

unint64_t sub_24EAC22D4()
{
  result = qword_27F227360;
  if (!qword_27F227360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227310, &qword_24F97E288);
    sub_24EAC2360();
    sub_24EAC241C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227360);
  }

  return result;
}

unint64_t sub_24EAC2360()
{
  result = qword_27F227368;
  if (!qword_27F227368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227330, &qword_24F97E2B0);
    sub_24E81828C();
    sub_24EAC26C8(&qword_27F227370, type metadata accessor for ActivityCardVisualView, &unk_24F9A9788);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227368);
  }

  return result;
}

unint64_t sub_24EAC241C()
{
  result = qword_27F227378;
  if (!qword_27F227378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272F0, &qword_24F97E268);
    sub_24EAC2884(&qword_27F227380, &qword_27F2272E8, &qword_24FA2DD10, sub_24E680290);
    sub_24EAC2884(&qword_27F227388, &qword_27F2272D8, &qword_24F97E250, sub_24E63CC18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227378);
  }

  return result;
}

unint64_t sub_24EAC2500()
{
  result = qword_27F227390;
  if (!qword_27F227390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272D0, &qword_24F97E248);
    sub_24E7179AC();
    sub_24EAC26C8(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227390);
  }

  return result;
}

unint64_t sub_24EAC25BC()
{
  result = qword_27F227398;
  if (!qword_27F227398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2272C0, &qword_24F97E238);
    sub_24EAC207C();
    sub_24EAC2164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227398);
  }

  return result;
}

uint64_t sub_24EAC2650(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC26C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EAC2710(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC2778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC27E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EAC2884(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_24EAC2900()
{
  result = qword_27F2273C8;
  if (!qword_27F2273C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227338, &unk_24F97E2B8);
    sub_24EAC2248();
    sub_24EAC25BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273C8);
  }

  return result;
}

uint64_t ScreenshotsLockup.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v25[0] = a1;
  v27 = sub_24F9285B8();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v28 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v25 - v7;
  v9 = sub_24F928388();
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x28223BE20](v9);
  v26 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v12 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2273D0, &qword_24F97E370);
  sub_24F928398();
  v29 = v4;
  v13 = *(v4 + 16);
  v14 = a2;
  v15 = a2;
  v16 = v27;
  v13(v8, v15, v27);
  sub_24EAC2CBC();
  sub_24F929548();
  v17 = v32;
  v18 = v25[1];
  swift_beginAccess();
  *(v18 + v12) = v17;
  v19 = v16;
  v20 = v25[0];

  v21 = v26;
  (*(v30 + 16))(v26, v20, v31);
  v22 = v28;
  v13(v28, v14, v19);
  v23 = Lockup.init(deserializing:using:)(v21, v22);
  (*(v29 + 8))(v14, v19);
  (*(v30 + 8))(v20, v31);
  return v23;
}

unint64_t sub_24EAC2CBC()
{
  result = qword_27F2273D8;
  if (!qword_27F2273D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2273D0, &qword_24F97E370);
    sub_24EAC2D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273D8);
  }

  return result;
}

unint64_t sub_24EAC2D40()
{
  result = qword_27F2273E0;
  if (!qword_27F2273E0)
  {
    type metadata accessor for Screenshots();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2273E0);
  }

  return result;
}

uint64_t ScreenshotsLockup.__allocating_init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v86 = a25;
  v87 = a26;
  v85 = a24;
  v83 = a27;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v30 = sub_24F91F6B8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v59 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v59 - v35;
  v37 = swift_allocObject();
  v38 = a1[1];
  v61 = *a1;
  v60 = v38;
  v39 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v37 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v37 + v39) = a29;
  v94 = 0;
  memset(v93, 0, sizeof(v93));
  sub_24E60169C(a28, v36, &qword_27F213E68, &unk_24F93BC80);
  *(v37 + 424) = 4;
  sub_24E60169C(v93, &v90, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v91 + 1))
  {
    v40 = v91;
    *(v37 + 448) = v90;
    *(v37 + 464) = v40;
    *(v37 + 480) = v92;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v31 + 8))(v33, v30);
    v88 = v41;
    v89 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E60169C(v36, v37 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v44 = v60;
  *(v37 + 16) = v61;
  *(v37 + 24) = v44;
  v45 = v69;
  *(v37 + 32) = v68;
  *(v37 + 40) = v45;
  *(v37 + 48) = v71;
  *(v37 + 56) = 0;
  v46 = v65;
  *(v37 + 64) = v64;
  *(v37 + 72) = v46;
  v47 = v76;
  *(v37 + 80) = v75;
  *(v37 + 88) = v47;
  v48 = v78;
  *(v37 + 96) = v77;
  *(v37 + 104) = v48;
  v49 = v63;
  *(v37 + 112) = v62;
  *(v37 + 120) = v49;
  *(v37 + 128) = 0;
  *(v37 + 136) = 2;
  v50 = v67;
  *(v37 + 144) = v66;
  *(v37 + 152) = v50;
  v51 = v72;
  *(v37 + 192) = v70;
  *(v37 + 200) = v51;
  v52 = v74;
  *(v37 + 208) = v73;
  *(v37 + 216) = v52;
  *(v37 + 376) = 0u;
  *(v37 + 392) = 0u;
  *(v37 + 408) = 0x8000;
  *(v37 + 360) = v83;
  *(v37 + 416) = 0;
  *(v37 + 432) = MEMORY[0x277D84FA0];
  v53 = v82;
  *(v37 + 160) = v80;
  *(v37 + 168) = v53;
  v54 = v79;
  *(v37 + 176) = v84;
  *(v37 + 184) = v54;
  v56 = v85;
  v55 = v86;
  *(v37 + 224) = v81;
  *(v37 + 232) = v56;
  *(v37 + 240) = v55;
  *(v37 + 248) = 0;
  v57 = v87;
  *(v37 + 256) = 0;
  *(v37 + 264) = v57;
  *(v37 + 272) = 0u;
  *(v37 + 288) = 0u;
  *(v37 + 304) = 0u;
  *(v37 + 320) = 0u;
  *(v37 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v36, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v93, &qword_27F235830, &qword_24F93B8C0);
  *(v37 + 344) = MEMORY[0x277D84F90];
  *(v37 + 352) = 0;
  *(v37 + 440) = 0;
  *(v37 + 368) = 0;
  return v37;
}

uint64_t ScreenshotsLockup.init(adamId:bundleId:icon:heading:title:subtitle:developerTagline:editorialTagline:editorialDescription:shortEditorialDescription:ordinal:rating:ratingCount:buttonAction:offerDisplayProperties:clickAction:contextMenuData:impressionMetrics:screenshots:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v30 = v29;
  v78 = a8;
  v77 = a7;
  v76 = a6;
  v75 = a5;
  v71 = a4;
  v69 = a3;
  v68 = a2;
  v83 = a27;
  v87 = a26;
  v86 = a25;
  v85 = a24;
  v84 = a23;
  v82 = a22;
  v80 = a21;
  v65 = a20;
  v64 = a19;
  v81 = a18;
  v74 = a17;
  v73 = a16;
  v72 = a15;
  v70 = a14;
  v79 = a13;
  v67 = a12;
  v66 = a11;
  v63 = a10;
  v62 = a9;
  v32 = sub_24F91F6B8();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v59 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v59 - v37;
  v39 = a1[1];
  v61 = *a1;
  v60 = v39;
  v40 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  *(v30 + OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots) = 0;
  swift_beginAccess();
  *(v30 + v40) = a29;
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  sub_24E60169C(a28, v38, &qword_27F213E68, &unk_24F93BC80);
  *(v30 + 424) = 4;
  sub_24E60169C(v96, &v90, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v91 + 1))
  {
    v93 = v90;
    v94 = v91;
    v95 = v92;
  }

  else
  {
    sub_24F91F6A8();
    v41 = sub_24F91F668();
    v43 = v42;
    (*(v33 + 8))(v35, v32);
    v88 = v41;
    v89 = v43;
    sub_24F92C7F8();
    sub_24E601704(&v90, &qword_27F235830, &qword_24F93B8C0);
  }

  v44 = v94;
  *(v30 + 448) = v93;
  *(v30 + 464) = v44;
  *(v30 + 480) = v95;
  sub_24E60169C(v38, v30 + OBJC_IVAR____TtC12GameStoreKit6Lockup_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v45 = v60;
  *(v30 + 16) = v61;
  *(v30 + 24) = v45;
  v46 = v69;
  *(v30 + 32) = v68;
  *(v30 + 40) = v46;
  *(v30 + 48) = v71;
  *(v30 + 56) = 0;
  v47 = v65;
  *(v30 + 64) = v64;
  *(v30 + 72) = v47;
  v48 = v76;
  *(v30 + 80) = v75;
  *(v30 + 88) = v48;
  v49 = v78;
  *(v30 + 96) = v77;
  *(v30 + 104) = v49;
  v50 = v63;
  *(v30 + 112) = v62;
  *(v30 + 120) = v50;
  *(v30 + 128) = 0;
  *(v30 + 136) = 2;
  v51 = v67;
  *(v30 + 144) = v66;
  *(v30 + 152) = v51;
  v52 = v72;
  *(v30 + 192) = v70;
  *(v30 + 200) = v52;
  v53 = v74;
  *(v30 + 208) = v73;
  *(v30 + 216) = v53;
  *(v30 + 376) = 0u;
  *(v30 + 392) = 0u;
  *(v30 + 408) = 0x8000;
  *(v30 + 360) = v83;
  *(v30 + 416) = 0;
  *(v30 + 432) = MEMORY[0x277D84FA0];
  v54 = v82;
  *(v30 + 160) = v80;
  *(v30 + 168) = v54;
  v55 = v79;
  *(v30 + 176) = v84;
  *(v30 + 184) = v55;
  v56 = v85;
  *(v30 + 224) = v81;
  *(v30 + 232) = v56;
  *(v30 + 240) = v86;
  *(v30 + 248) = 0;
  v57 = v87;
  *(v30 + 256) = 0;
  *(v30 + 264) = v57;
  *(v30 + 272) = 0u;
  *(v30 + 288) = 0u;
  *(v30 + 304) = 0u;
  *(v30 + 320) = 0u;
  *(v30 + 336) = 0;
  sub_24E601704(a28, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v38, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v96, &qword_27F235830, &qword_24F93B8C0);
  *(v30 + 344) = MEMORY[0x277D84F90];
  *(v30 + 352) = 0;
  *(v30 + 440) = 0;
  *(v30 + 368) = 0;
  return v30;
}

uint64_t sub_24EAC37C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double sub_24EAC3828()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_24EAC3870(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t ScreenshotsLockup.deinit()
{
  v0 = Lockup.deinit();

  return v0;
}

uint64_t ScreenshotsLockup.__deallocating_deinit()
{
  Lockup.deinit();

  return swift_deallocClassInstance();
}

double sub_24EAC3A18@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC12GameStoreKit17ScreenshotsLockup_screenshots;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t type metadata accessor for ScreenshotsLockup(uint64_t a1)
{
  result = qword_27F2273E8;
  if (!qword_27F2273E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC3CA8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EAC3D44@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

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

void sub_24EAC3DA4(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (!*v1)
  {
    v2 = 0x746E65636572;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_24EAC3DE8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EAC3E60(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EAC3EC4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24EAC3FE8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 1701667182;
  if (!*v2)
  {
    v5 = 0x746E65636572;
  }

  v6 = 0xE600000000000000;
  if (*v2)
  {
    v6 = 0xE400000000000000;
  }

  v10 = v5;
  v11 = v6;
  v7 = sub_24F92CF68();
  v8 = [objc_opt_self() valueWithObject:v7 inContext:{a1, v10, v11}];
  swift_unknownObjectRelease();
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214928, &unk_24F93DFD0);
  result = sub_24E6360E0();
  a2[4] = result;
  *a2 = v8;
  return result;
}

uint64_t sub_24EAC40C0()
{
  swift_getKeyPath();
  sub_24EAC45B0();
  sub_24F91FD88();

  return *(v0 + 24);
}

void sub_24EAC4130(char a1)
{
  if (*(v1 + 24))
  {
    v3 = 1701667182;
  }

  else
  {
    v3 = 0x746E65636572;
  }

  if (*(v1 + 24))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (a1)
  {
    v5 = 1701667182;
  }

  else
  {
    v5 = 0x746E65636572;
  }

  if (a1)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = sub_24F92CE08();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_24EAC45B0();
      sub_24F91FD78();

      return;
    }
  }

  *(v1 + 24) = a1 & 1;
  sub_24F9280C8();
}

uint64_t sub_24EAC429C()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit28FriendsPlayingOptionProvider___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FriendsPlayingOptionProvider(uint64_t a1)
{
  result = qword_27F227400;
  if (!qword_27F227400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EAC4394(uint64_t a1)
{
  result = sub_24F91FDC8();
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

unint64_t sub_24EAC4450()
{
  result = qword_27F227410;
  if (!qword_27F227410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227410);
  }

  return result;
}

unint64_t sub_24EAC44A8()
{
  result = qword_27F227418;
  if (!qword_27F227418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227420, qword_24F97E540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227418);
  }

  return result;
}

unint64_t sub_24EAC450C()
{
  result = qword_27F227428;
  if (!qword_27F227428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227428);
  }

  return result;
}

unint64_t sub_24EAC45B0()
{
  result = qword_27F227430;
  if (!qword_27F227430)
  {
    type metadata accessor for FriendsPlayingOptionProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227430);
  }

  return result;
}

unint64_t sub_24EAC4620()
{
  result = qword_27F227438;
  if (!qword_27F227438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227438);
  }

  return result;
}

unint64_t sub_24EAC4674(unint64_t a1, char a2)
{
  LOBYTE(v2) = a2;
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      v13 = MEMORY[0x277D84F90];
      v6 = qword_24F97E760[v2];
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (v4)
      {
        result = sub_24F92C738();
        v4 = result;
      }

      else
      {
        v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v4)
      {
        goto LABEL_28;
      }

      v9 = 0;
      v10 = v3 + 32;
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      while (v9 % v4 < v11)
      {
        v3 = *(v10 + 8 * (v9 % v4));

        MEMORY[0x253050F00](v12);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_24F92B5E8();
        }

        ++v9;
        v2 = &v13;
        sub_24F92B638();
        if (v6 == v9)
        {
          return v13;
        }
      }

      __break(1u);
LABEL_24:
      result = sub_24F92C738();
      if (!result)
      {
        goto LABEL_25;
      }
    }

    if (v4)
    {
      result = sub_24F92C738();
      v7 = result;
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!v7)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      return result;
    }

    v8 = 0;
    do
    {
      MEMORY[0x253052270](v8 % v7, v3);
      MEMORY[0x253050F00]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_24F92B5E8();
      }

      ++v8;
      sub_24F92B638();
    }

    while (v6 != v8);
    return v13;
  }

  else
  {
LABEL_25:
  }

  return v3;
}

uint64_t sub_24EAC4868(unint64_t a1)
{
  if (a1 <= 4)
  {
    v1 = 0x302010004uLL >> (8 * a1);
  }

  else
  {
    v1 = 4;
  }

  if (a1 >= 1)
  {
    return v1;
  }

  else
  {
    return 5;
  }
}

unint64_t sub_24EAC48AC()
{
  result = qword_27F227440;
  if (!qword_27F227440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227440);
  }

  return result;
}

BOOL CornerStyle.apply(withRadius:to:)(void *a1, double a2)
{
  v5 = *v2;
  v6 = sel__setCornerRadius_;
  if (v5)
  {
    v6 = sel__setContinuousCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setContinuousCornerRadius_];
  }

  else
  {
    [a1 v6];
  }

  v7 = sel__setContinuousCornerRadius_;
  if (v5)
  {
    v7 = sel__setCornerRadius_;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a2;
  }

  if (a2 < COERCE_DOUBLE(1))
  {
    [a1 _setCornerRadius_];
  }

  else
  {
    [a1 v7];
  }

  v9 = [a1 layer];
  [v9 setAllowsEdgeAntialiasing_];

  return a2 >= COERCE_DOUBLE(1);
}

uint64_t sub_24EAC4A6C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsMediaPreview(0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[8];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[9];

  return v15(v16, a2, v14);
}

uint64_t sub_24EAC4C04(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = type metadata accessor for GameDetailsMediaPreview(0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[9];

  return v15(v16, a2, a2, v14);
}

void sub_24EAC4DA8(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24EAC4F64(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24EAC4F64(319, &qword_27F227460, type metadata accessor for GameDetailsMediaItem, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for GameDetailsMediaPreview(319);
          if (v5 <= 0x3F)
          {
            sub_24EAC4F64(319, &qword_27F227468, type metadata accessor for GameDetailsSummaryCard, MEMORY[0x277D83D88]);
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

uint64_t sub_24EAC4F1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24EAC4F64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_24EAC4FC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = &v30 - v4;
  v33 = type metadata accessor for GameDetailsMediaPreview(0);
  MEMORY[0x28223BE20](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227488, &unk_24F97EA10);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - v11;
  v13 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v39 = v15 + 40;
  sub_24E61DA68(&v42, (v15 + 40), qword_27F21B590, &unk_24F93BE30);
  v38 = v13;
  v16 = *(v13 + 24);
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v40 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24EAC7570();
  v36 = v12;
  v20 = v37;
  sub_24F92D108();
  if (v20)
  {
    v21 = v39;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v22 = v40;
    sub_24E601704(v21, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v15[v22], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v37 = v9;
    v30 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v45 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v24 = v43;
    *v15 = v42;
    *(v15 + 1) = v24;
    *(v15 + 4) = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v45 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v25 = v38;
    sub_24E61DA68(&v42, v39, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v42) = 2;
    sub_24EAC4F1C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v26 = v37;
    sub_24F92CC18();
    v27 = v34;
    sub_24E61DA68(v26, &v15[v40], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498, &qword_24F97EA20);
    v45 = 3;
    sub_24EAC7624();
    sub_24F92CC68();
    *&v15[v25[7]] = v42;
    LOBYTE(v42) = 4;
    sub_24EAC4F1C(&qword_27F2274B0, type metadata accessor for GameDetailsMediaPreview, &unk_24F93C9B8);
    v28 = v30;
    sub_24F92CC68();
    sub_24EAC76D8(v28, &v15[v25[8]], type metadata accessor for GameDetailsMediaPreview);
    type metadata accessor for GameDetailsSummaryCard(0);
    LOBYTE(v42) = 5;
    sub_24EAC4F1C(&qword_27F2274B8, type metadata accessor for GameDetailsSummaryCard, &unk_24F9CDE38);
    v29 = v32;
    sub_24F92CC18();
    (*(v27 + 8))(v36, v35);
    sub_24EAC7740(v29, &v15[v25[9]]);
    sub_24EAC7508(v15, v31, type metadata accessor for GameDetailsMediaPreviewCard);
    __swift_destroy_boxed_opaque_existential_1(v41);
    return sub_24EAC75C4(v15, type metadata accessor for GameDetailsMediaPreviewCard);
  }
}

uint64_t sub_24EAC5740()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x657449616964656DLL;
  v4 = 0x657250616964656DLL;
  if (v1 != 4)
  {
    v4 = 0x7972616D6D7573;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t sub_24EAC57FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EAC7B9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EAC5824(uint64_t a1)
{
  v2 = sub_24EAC7570();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EAC5860(uint64_t a1)
{
  v2 = sub_24EAC7570();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EAC5904()
{
  result = qword_27F227470;
  if (!qword_27F227470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227470);
  }

  return result;
}

uint64_t sub_24EAC5958(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_24F924848();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F922348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GameDetailsMediaItem(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a1 + *(type metadata accessor for GameDetailsMediaPreviewCard(0) + 28));
  if (!*(v17 + 16) || (sub_24EAC7508(v17 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v16, type metadata accessor for GameDetailsMediaItem), _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0(), sub_24EAC75C4(v16, type metadata accessor for GameDetailsMediaItem), sub_24F9222C8(), v19 = v18, sub_24F922338(), v21 = v20, (*(v10 + 8))(v12, v9), v19 >= v21))
  {
    if (a3)
    {
      v23 = *&a2;
    }

    else
    {

      sub_24F92BDC8();
      v24 = sub_24F9257A8();
      sub_24F921FD8();

      sub_24F924838();
      swift_getAtKeyPath();
      sub_24E62A5EC(a2, 0);
      (*(v30 + 8))(v8, v31);
      v23 = v32;
    }

    v25 = sub_24E6B00B4(v23);
    if (v25 > 6u)
    {
      return 3;
    }

    v26 = &unk_24F97EE00;
    return v26[v25];
  }

  if (a3)
  {
    v22 = *&a2;
  }

  else
  {

    sub_24F92BDC8();
    v28 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(a2, 0);
    (*(v30 + 8))(v8, v31);
    v22 = v32;
  }

  v25 = sub_24E6B00B4(v22);
  if (v25 < 7u)
  {
    v26 = &unk_24F97EDC8;
    return v26[v25];
  }

  return 5;
}

uint64_t sub_24EAC5D2C@<X0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v8 = sub_24F924848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24EAC7508(a1, v14, type metadata accessor for GameDetailsMediaPreviewCard);
  if (a3)
  {
    v15 = a2;
  }

  else
  {

    sub_24F92BDC8();
    v16 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(*&a2, 0);
    (*(v9 + 8))(v11, v8);
    v15 = v23;
  }

  v17 = sub_24E6B00B4(v15) < 4u;
  v18 = sub_24EAC5958(a1, *&a2, a3 & 1);
  v22[1] = 0;
  sub_24F926F28();
  v19 = v24;
  *a4 = v23;
  a4[1] = v19;
  v20 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  result = sub_24EAC76D8(v14, a4 + v20[5], type metadata accessor for GameDetailsMediaPreviewCard);
  *(a4 + v20[6]) = v17;
  *(a4 + v20[7]) = v18;
  return result;
}

uint64_t sub_24EAC5F7C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2274F0, &qword_24F97EBB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2274F8, &qword_24F97EBB8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227500, &qword_24F97EBC0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - v8;
  if (*(v0 + *(type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0) + 24)))
  {
    *v3 = sub_24F924C88();
    *(v3 + 1) = 0x4034000000000000;
    v3[16] = 0;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227508, &qword_24F97EBC8);
    sub_24EAC6944(v0, &v3[*(v10 + 44)]);
    sub_24E60169C(v3, v6, &qword_27F2274F0, &qword_24F97EBB0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F227510, &qword_27F227500, &qword_24F97EBC0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0, &qword_24F97EBB0, MEMORY[0x277CE1198]);
    sub_24F924E28();
    v11 = v3;
    v12 = &qword_27F2274F0;
    v13 = &qword_24F97EBB0;
  }

  else
  {
    *v9 = sub_24F9249A8();
    *(v9 + 1) = 0x4028000000000000;
    v9[16] = 0;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227520, &qword_24F97EBD0);
    sub_24EAC62AC(v0, &v9[*(v14 + 44)]);
    sub_24E60169C(v9, v6, &qword_27F227500, &qword_24F97EBC0);
    swift_storeEnumTagMultiPayload();
    sub_24E602068(&qword_27F227510, &qword_27F227500, &qword_24F97EBC0, MEMORY[0x277CE1138]);
    sub_24E602068(&qword_27F227518, &qword_27F2274F0, &qword_24F97EBB0, MEMORY[0x277CE1198]);
    sub_24F924E28();
    v11 = v9;
    v12 = &qword_27F227500;
    v13 = &qword_24F97EBC0;
  }

  return sub_24E601704(v11, v12, v13);
}

uint64_t sub_24EAC62AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227528, &qword_24F97EBD8);
  v4 = *(v3 - 8);
  v53 = v3;
  v54 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v45 - v7;
  v49 = type metadata accessor for GameDetailsSummaryCard(0);
  v9 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227530, &qword_24F97EBE0);
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v50 = &v45 - v14;
  v15 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  v16 = v15 - 8;
  v17 = *(v15 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227538, &qword_24F97EBE8);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v51 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v45 - v23;
  v25 = a1 + *(v16 + 28);
  v26 = *(a1 + *(v16 + 36));
  sub_24EAC7508(v25, &v45 - v23, type metadata accessor for GameDetailsMediaPreviewCard);
  *&v24[*(type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0) + 20)] = v26;
  v47 = a1;
  sub_24EAC7508(a1, &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard);
  v27 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v28 = swift_allocObject();
  sub_24EAC76D8(&v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard);
  v29 = &v24[*(v20 + 44)];
  *v29 = sub_24E7BC238;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_24EAC81F8;
  *(v29 + 3) = v28;
  v30 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  sub_24E60169C(&v25[*(v30 + 36)], v8, &qword_27F227448, &unk_24F97E890);
  if ((*(v9 + 48))(v8, 1, v49) == 1)
  {
    sub_24E601704(v8, &qword_27F227448, &unk_24F97E890);
    v31 = 1;
    v32 = v53;
    v33 = v50;
  }

  else
  {
    v34 = v46;
    sub_24EAC76D8(v8, v46, type metadata accessor for GameDetailsSummaryCard);
    *&v56 = 0;
    BYTE8(v56) = 1;
    *&v57 = 0x7FF0000000000000;
    BYTE8(v57) = 0;
    sub_24EAC8268();
    v35 = v48;
    sub_24F921D38();
    v36 = v47[1];
    *&v56 = *v47;
    *(&v56 + 1) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21A6F0, &unk_24F95ACB0);
    sub_24F926F38();
    sub_24F927618();
    sub_24F9238C8();
    sub_24EAC75C4(v34, type metadata accessor for GameDetailsSummaryCard);
    v37 = v53;
    v38 = (v35 + *(v53 + 36));
    v39 = v57;
    *v38 = v56;
    v38[1] = v39;
    v38[2] = v58;
    v33 = v50;
    sub_24EAC82BC(v35, v50);
    v31 = 0;
    v32 = v37;
  }

  (*(v54 + 56))(v33, v31, 1, v32);
  v40 = v51;
  sub_24E60169C(v24, v51, &qword_27F227538, &qword_24F97EBE8);
  v41 = v52;
  sub_24E60169C(v33, v52, &qword_27F227530, &qword_24F97EBE0);
  v42 = v55;
  sub_24E60169C(v40, v55, &qword_27F227538, &qword_24F97EBE8);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227540, &unk_24F97EBF0);
  sub_24E60169C(v41, v42 + *(v43 + 48), &qword_27F227530, &qword_24F97EBE0);
  sub_24E601704(v33, &qword_27F227530, &qword_24F97EBE0);
  sub_24E601704(v24, &qword_27F227538, &qword_24F97EBE8);
  sub_24E601704(v41, &qword_27F227530, &qword_24F97EBE0);
  return sub_24E601704(v40, &qword_27F227538, &qword_24F97EBE8);
}

uint64_t sub_24EAC6944@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227550, &qword_24F97EC00);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = type metadata accessor for GameDetailsSummaryCard(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227558, &qword_24F97EC08);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v39 - v22;
  v24 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0);
  v25 = a1 + *(v24 + 20);
  v26 = *(a1 + *(v24 + 28));
  sub_24EAC7508(v25, v23, type metadata accessor for GameDetailsMediaPreviewCard);
  *&v23[*(v18 + 28)] = v26;
  v27 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  sub_24E60169C(v25 + *(v27 + 36), v7, &qword_27F227448, &unk_24F97E890);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F227448, &unk_24F97E890);
    v28 = 1;
    v30 = v42;
    v29 = v43;
  }

  else
  {
    v31 = v40;
    sub_24EAC76D8(v7, v40, type metadata accessor for GameDetailsSummaryCard);
    v45 = 4;
    v46 = 0;
    v47 = 0;
    v48 = 1;
    sub_24EAC8268();
    v32 = v41;
    sub_24F921D38();
    sub_24EAC75C4(v31, type metadata accessor for GameDetailsSummaryCard);
    v33 = v42;
    v34 = v32;
    v35 = v43;
    (*(v42 + 32))(v16, v34, v43);
    v28 = 0;
    v29 = v35;
    v30 = v33;
  }

  (*(v30 + 56))(v16, v28, 1, v29);
  sub_24EAC7508(v23, v20, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  sub_24E60169C(v16, v13, &qword_27F227558, &qword_24F97EC08);
  v36 = v44;
  sub_24EAC7508(v20, v44, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227560, &qword_24F97EC10);
  sub_24E60169C(v13, v36 + *(v37 + 48), &qword_27F227558, &qword_24F97EC08);
  sub_24E601704(v16, &qword_27F227558, &qword_24F97EC08);
  sub_24EAC75C4(v23, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
  sub_24E601704(v13, &qword_27F227558, &qword_24F97EC08);
  return sub_24EAC75C4(v20, type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard);
}

uint64_t sub_24EAC6E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227598, &qword_24F97ECC0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v31 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v10 = *(a1 + *(v31 + 28));
  v11 = type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaItemCard(0);
  v13 = sub_24E6B7C8C(*(a1 + *(v11 + 20)), v10);
  v15 = v14;
  v17 = v16;
  if ((v16 & 1) == 0)
  {
    v18 = v12;

    v19 = v18;
LABEL_3:
    sub_24E6B8B3C(v13, v19, v15, v17);
    v21 = v20;
    v22 = v32;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v30 = v12;
  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v23 = swift_dynamicCastClass();
  if (!v23)
  {
    swift_unknownObjectRelease();
    v23 = MEMORY[0x277D84F90];
  }

  v24 = *(v23 + 16);

  if (__OFSUB__(v17 >> 1, v15))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v24 != (v17 >> 1) - v15)
  {
LABEL_13:
    swift_unknownObjectRelease();
    v19 = v30;
    goto LABEL_3;
  }

  v21 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v22 = v32;
  if (!v21)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  v34 = 0;
  sub_24E62A190();
  sub_24F921D38();

  v25 = *(v4 + 16);
  v25(v6, v9, v3);
  *v22 = v21;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275A0, &qword_24F97ECF0);
  v25(v22 + *(v26 + 48), v6, v3);
  v27 = *(v4 + 8);

  v27(v9, v3);
  v27(v6, v3);
}

double sub_24EAC70CC@<D0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F924C98();
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227588, &qword_24F97EC80);
  sub_24EAC6E00(v2, (a2 + *(v4 + 44)));
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227590, &qword_24F97EC88) + 36);
  v6 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v7 = type metadata accessor for GradientBackground(0);
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  result = 26.0;
  *(v5 + 16) = xmmword_24F93CFD0;
  *(v5 + 32) = 0x4030000000000000;
  *(v5 + 40) = 256;
  return result;
}

uint64_t sub_24EAC7218@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275C0, &qword_24F97ED80);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498, &qword_24F97EA20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2275C8, &qword_24F97EDB0);
  sub_24E602068(&qword_27F2275D0, &qword_27F227498, &qword_24F97EA20, MEMORY[0x277D83980]);
  sub_24E6207C4();
  swift_getOpaqueTypeConformance2();
  return sub_24F927228();
}

uint64_t sub_24EAC7380(uint64_t a1)
{
  sub_24E62AB1C(*v1, *(v1 + 8));
  sub_24EAC5904();
  return sub_24F9218E8();
}

unint64_t sub_24EAC742C()
{
  result = qword_27F227480;
  if (!qword_27F227480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227480);
  }

  return result;
}

uint64_t sub_24EAC7508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24EAC7570()
{
  result = qword_27F227490;
  if (!qword_27F227490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227490);
  }

  return result;
}

uint64_t sub_24EAC75C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EAC7624()
{
  result = qword_27F2274A0;
  if (!qword_27F2274A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227498, &qword_24F97EA20);
    sub_24EAC4F1C(&qword_27F2274A8, type metadata accessor for GameDetailsMediaItem, &unk_24F93C198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274A0);
  }

  return result;
}

uint64_t sub_24EAC76D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EAC7740(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227448, &unk_24F97E890);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EAC77D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for GameDetailsMediaPreviewCard(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EAC78A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for GameDetailsMediaPreviewCard(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EAC7944(uint64_t a1)
{
  sub_24EAC79E0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GameDetailsMediaPreviewCard(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EAC79E0()
{
  if (!qword_27F236310)
  {
    v0 = sub_24F926F68();
    if (!v1)
    {
      atomic_store(v0, &qword_27F236310);
    }
  }
}

unint64_t sub_24EAC7A98()
{
  result = qword_27F2274D8;
  if (!qword_27F2274D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274D8);
  }

  return result;
}

unint64_t sub_24EAC7AF0()
{
  result = qword_27F2274E0;
  if (!qword_27F2274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274E0);
  }

  return result;
}

unint64_t sub_24EAC7B48()
{
  result = qword_27F2274E8;
  if (!qword_27F2274E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2274E8);
  }

  return result;
}

uint64_t sub_24EAC7B9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657449616964656DLL && a2 == 0xEA0000000000736DLL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657250616964656DLL && a2 == 0xEC00000077656976 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_24EAC7DC0()
{
  v1 = (type metadata accessor for GameDetailsMediaPreviewCardComponent.MediaPreviewCard(0) - 8);
  v22 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v2 = (v0 + v22 + v1[7]);
  __swift_destroy_boxed_opaque_existential_1(v2);
  if (*(v2 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 5);
  }

  v3 = type metadata accessor for GameDetailsMediaPreviewCard(0);
  v4 = v3[6];
  v5 = sub_24F929608();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(&v2[v4], 1, v5))
  {
    (*(v6 + 8))(&v2[v4], v5);
  }

  v8 = &v2[v3[8]];
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (*(v8 + 8))
  {
    __swift_destroy_boxed_opaque_existential_1(v8 + 5);
  }

  v9 = *(type metadata accessor for GameDetailsMediaPreview(0) + 24);
  if (!v7(&v8[v9], 1, v5))
  {
    (*(v6 + 8))(&v8[v9], v5);
  }

  v10 = &v2[v3[9]];
  v11 = type metadata accessor for GameDetailsSummaryCard(0);
  if (!(*(*(v11 - 1) + 48))(v10, 1, v11))
  {
    __swift_destroy_boxed_opaque_existential_1(v10);
    if (*(v10 + 8))
    {
      __swift_destroy_boxed_opaque_existential_1(v10 + 5);
    }

    v12 = v11[6];
    if (!v7(&v10[v12], 1, v5))
    {
      (*(v6 + 8))(&v10[v12], v5);
    }

    v13 = &v10[v11[7]];
    __swift_destroy_boxed_opaque_existential_1(v13);
    if (*(v13 + 8))
    {
      __swift_destroy_boxed_opaque_existential_1(v13 + 5);
    }

    v14 = *(type metadata accessor for GameDetailsSummary(0) + 24);
    if (!v7(&v13[v14], 1, v5))
    {
      (*(v6 + 8))(&v13[v14], v5);
    }

    v15 = &v10[v11[8]];
    v16 = type metadata accessor for GameDetailsDeveloper(0);
    if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
    {
      __swift_destroy_boxed_opaque_existential_1(v15);
      if (*(v15 + 8))
      {
        __swift_destroy_boxed_opaque_existential_1(v15 + 5);
      }

      v17 = *(v16 + 24);
      if (!v7(&v15[v17], 1, v5))
      {
        (*(v6 + 8))(&v15[v17], v5);
      }

      v18 = *(v16 + 32);
      v19 = sub_24F9289E8();
      v20 = *(v19 - 8);
      if (!(*(v20 + 48))(&v15[v18], 1, v19))
      {
        (*(v20 + 8))(&v15[v18], v19);
      }
    }
  }

  return swift_deallocObject();
}