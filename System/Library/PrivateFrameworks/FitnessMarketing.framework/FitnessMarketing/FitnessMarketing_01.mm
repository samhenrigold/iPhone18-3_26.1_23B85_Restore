unint64_t sub_20C5EC3E4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_20C5F2568(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_20C5EC6F4(v44, v42);
  v14 = *a5;
  result = sub_20C5DFFBC(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20C5F210C(v20, a4 & 1);
    result = sub_20C5DFFBC(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20C64E440();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_20C5F23C4();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_20C5EC6F4(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_20C5EC6F4(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_20C5F2568(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_20C5EC6F4(v44, v42);
        v32 = *a5;
        result = sub_20C5DFFBC(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_20C5F210C(v36, 1);
          result = sub_20C5DFFBC(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_20C5EC6F4(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_20C5EC6F4(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_20C5F2568(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_20C5EC704(v45);
  }

LABEL_27:
  __break(1u);
  return result;
}

_OWORD *sub_20C5EC6F4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_20C5EC718(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AudioLanguageEngagementSheet.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheet(0) + 20);

  return sub_20C5EC718(v3, a1);
}

uint64_t AudioLanguageEngagementSheet.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioLanguageEngagementSheet(0) + 24);

  return sub_20C5EC718(v3, a1);
}

uint64_t AudioLanguageEngagementSheet.init(callToAction:title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_20C5EC880(a1, a4);
  v7 = type metadata accessor for AudioLanguageEngagementSheet(0);
  sub_20C5EC880(a2, a4 + *(v7 + 20));
  v8 = a4 + *(v7 + 24);

  return sub_20C5EC880(a3, v8);
}

uint64_t sub_20C5EC880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5EC8F0()
{
  v1 = 0x656C746974;
  if (*v0 != 1)
  {
    v1 = 0x656C746974627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63416F546C6C6163;
  }
}

uint64_t sub_20C5EC950@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5EE014(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5EC984(uint64_t a1)
{
  v2 = sub_20C5ECBFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EC9C0(uint64_t a1)
{
  v2 = sub_20C5ECBFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioLanguageEngagementSheet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5E0, &qword_20C650FD8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5ECBFC();
  sub_20C64E500();
  v11 = 0;
  sub_20C64CE50();
  sub_20C5EE12C(&qword_27C7CE5F0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C48]);
  sub_20C64E3D0();
  if (!v1)
  {
    type metadata accessor for AudioLanguageEngagementSheet(0);
    v10 = 1;
    sub_20C64E3D0();
    v9 = 2;
    sub_20C64E3D0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C5ECBFC()
{
  result = qword_27C7CE5E8;
  if (!qword_27C7CE5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE5E8);
  }

  return result;
}

uint64_t AudioLanguageEngagementSheet.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v28 - v9;
  MEMORY[0x28223BE20](v8);
  v32 = &v28 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5F8, &qword_20C650FE0);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for AudioLanguageEngagementSheet(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_20C5ECBFC();
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v35);
  }

  v29 = v7;
  v30 = v15;
  v19 = v17;
  sub_20C64CE50();
  v38 = 0;
  sub_20C5EE12C(&qword_27C7CE600, MEMORY[0x277CC8C40], MEMORY[0x277CC8C60]);
  v20 = v32;
  v21 = v34;
  sub_20C64E350();
  v22 = v20;
  v23 = v19;
  sub_20C5EC880(v22, v19);
  v37 = 1;
  sub_20C64E350();
  v24 = v30;
  sub_20C5EC880(v10, &v23[*(v30 + 20)]);
  v36 = 2;
  v32 = v23;
  v25 = v29;
  sub_20C64E350();
  (*(v33 + 8))(v14, v21);
  v26 = v32;
  sub_20C5EC880(v25, &v32[*(v24 + 24)]);
  sub_20C5ED068(v26, v31);
  __swift_destroy_boxed_opaque_existential_1(v35);
  return sub_20C5ED0CC(v26);
}

uint64_t sub_20C5ED068(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5ED0CC(uint64_t a1)
{
  v2 = type metadata accessor for AudioLanguageEngagementSheet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AudioLanguageEngagementSheet.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C64CE50();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  v20 = v2;
  sub_20C5EC718(v2, &v19 - v14);
  v16 = *(v4 + 48);
  if (v16(v15, 1, v3) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v4 + 32))(v6, v15, v3);
    sub_20C64E4C0();
    sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_20C64E000();
    (*(v4 + 8))(v6, v3);
  }

  v17 = type metadata accessor for AudioLanguageEngagementSheet(0);
  sub_20C5EC718(v20 + *(v17 + 20), v13);
  if (v16(v13, 1, v3) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    sub_20C64E4C0();
    sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
    sub_20C64E000();
    (*(v4 + 8))(v6, v3);
  }

  sub_20C5EC718(v20 + *(v17 + 24), v10);
  if (v16(v10, 1, v3) == 1)
  {
    return sub_20C64E4C0();
  }

  (*(v4 + 32))(v6, v10, v3);
  sub_20C64E4C0();
  sub_20C5EE12C(&qword_27C7CE608, MEMORY[0x277CC8C40], MEMORY[0x277CC8C50]);
  sub_20C64E000();
  return (*(v4 + 8))(v6, v3);
}

uint64_t AudioLanguageEngagementSheet.hashValue.getter()
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5ED578()
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5ED5BC(uint64_t a1)
{
  sub_20C64E4A0();
  AudioLanguageEngagementSheet.hash(into:)(v2);
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing28AudioLanguageEngagementSheetV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CE50();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v53 = &v48 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE628, &unk_20C6511F0);
  v16 = MEMORY[0x28223BE20](v15);
  v52 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v48 - v22;
  v24 = *(v21 + 48);
  v55 = a1;
  sub_20C5EC718(a1, &v48 - v22);
  v54 = a2;
  sub_20C5EC718(a2, &v23[v24]);
  v25 = *(v5 + 48);
  if (v25(v23, 1, v4) == 1)
  {
    if (v25(&v23[v24], 1, v4) == 1)
    {
      v49 = v7;
      v50 = v5;
      sub_20C5DBFC4(v23, &qword_27C7CE2E0, &qword_20C650FD0);
      goto LABEL_8;
    }

LABEL_6:
    v26 = v23;
LABEL_21:
    sub_20C5DBFC4(v26, &qword_27C7CE628, &unk_20C6511F0);
    return 0;
  }

  sub_20C5EC718(v23, v14);
  if (v25(&v23[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v14, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v23[v24], v4);
  sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v27 = sub_20C64E010();
  v50 = v5;
  v28 = *(v5 + 8);
  v49 = v7;
  v28();
  (v28)(v14, v4);
  sub_20C5DBFC4(v23, &qword_27C7CE2E0, &qword_20C650FD0);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v29 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v30 = *(v29 + 20);
  v31 = *(v15 + 48);
  sub_20C5EC718(v55 + v30, v20);
  v32 = v54;
  sub_20C5EC718(v54 + v30, &v20[v31]);
  if (v25(v20, 1, v4) != 1)
  {
    v48 = v29;
    v33 = v53;
    sub_20C5EC718(v20, v53);
    v34 = v25(&v20[v31], 1, v4);
    v36 = v49;
    v35 = v50;
    if (v34 != 1)
    {
      (*(v50 + 32))(v49, &v20[v31], v4);
      sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
      v37 = sub_20C64E010();
      v38 = *(v35 + 8);
      v38(v36, v4);
      v38(v33, v4);
      sub_20C5DBFC4(v20, &qword_27C7CE2E0, &qword_20C650FD0);
      v29 = v48;
      if ((v37 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    (*(v50 + 8))(v33, v4);
    goto LABEL_13;
  }

  if (v25(&v20[v31], 1, v4) != 1)
  {
LABEL_13:
    v26 = v20;
    goto LABEL_21;
  }

  sub_20C5DBFC4(v20, &qword_27C7CE2E0, &qword_20C650FD0);
LABEL_15:
  v39 = *(v29 + 24);
  v40 = *(v15 + 48);
  v41 = v52;
  sub_20C5EC718(v55 + v39, v52);
  sub_20C5EC718(v32 + v39, v41 + v40);
  if (v25(v41, 1, v4) == 1)
  {
    if (v25((v41 + v40), 1, v4) == 1)
    {
      sub_20C5DBFC4(v41, &qword_27C7CE2E0, &qword_20C650FD0);
      return 1;
    }

    goto LABEL_20;
  }

  v42 = v51;
  sub_20C5EC718(v41, v51);
  if (v25((v41 + v40), 1, v4) == 1)
  {
    (*(v50 + 8))(v42, v4);
LABEL_20:
    v26 = v41;
    goto LABEL_21;
  }

  v45 = v49;
  v44 = v50;
  (*(v50 + 32))(v49, v41 + v40, v4);
  sub_20C5EE12C(&qword_27C7CE630, MEMORY[0x277CC8C40], MEMORY[0x277CC8C58]);
  v46 = sub_20C64E010();
  v47 = *(v44 + 8);
  v47(v45, v4);
  v47(v42, v4);
  sub_20C5DBFC4(v41, &qword_27C7CE2E0, &qword_20C650FD0);
  return (v46 & 1) != 0;
}

void sub_20C5EDD64(uint64_t a1)
{
  if (!qword_281106858)
  {
    sub_20C64CE50();
    v1 = sub_20C64E1F0();
    if (!v2)
    {
      atomic_store(v1, &qword_281106858);
    }
  }
}

uint64_t getEnumTagSinglePayload for AudioLanguageEngagementSheet.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AudioLanguageEngagementSheet.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20C5EDF10()
{
  result = qword_27C7CE610;
  if (!qword_27C7CE610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE610);
  }

  return result;
}

unint64_t sub_20C5EDF68()
{
  result = qword_27C7CE618;
  if (!qword_27C7CE618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE618);
  }

  return result;
}

unint64_t sub_20C5EDFC0()
{
  result = qword_27C7CE620;
  if (!qword_27C7CE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE620);
  }

  return result;
}

uint64_t sub_20C5EE014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63416F546C6C6163 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5EE12C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 MarketingButtonEnvironment.init(presentMarketingLink:performPurchase:requestRemoteBrowsingConnection:resolveAppleAccountState:resolveMarketingOffer:resolveSupportedDeviceState:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11, unint64_t a12)
{
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  a9->n128_u64[0] = &unk_20C651208;
  a9->n128_u64[1] = v20;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u64[1] = a4;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  result = a10;
  a9[4] = a10;
  a9[5].n128_u64[0] = a11;
  a9[5].n128_u64[1] = a12;
  return result;
}

uint64_t sub_20C5EE230(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE638, &unk_20C651280);
  v9 = swift_task_alloc();
  v4[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE640, &qword_20C657390);
  v10 = swift_task_alloc();
  v4[3] = v10;
  sub_20C5EE874(a2, v10, type metadata accessor for MarketingOffer);
  v11 = type metadata accessor for MarketingOffer(0);
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  sub_20C5EE874(a3, v9, type metadata accessor for MarketingActionItem);
  v12 = type metadata accessor for MarketingActionItem(0);
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v4[4] = v13;
  *v13 = v4;
  v13[1] = sub_20C5EE484;

  return v15(a1, v10, v9);
}

uint64_t sub_20C5EE484()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v5 = *v0;

  sub_20C5DBFC4(v2, &qword_27C7CE638, &unk_20C651280);
  sub_20C5DBFC4(v1, &qword_27C7CE640, &qword_20C657390);

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_20C5EE5E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_20C5EE6B4;

  return sub_20C5EE230(a1, a2, a3, v8);
}

uint64_t sub_20C5EE6B4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_20C5EE7C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_20C5EE80C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20C5EE874(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5EE8F4()
{
  if (*v0)
  {
    return 0x7469617274726F70;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t sub_20C5EE934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70616373646E616CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7469617274726F70 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C5EEA18(uint64_t a1)
{
  v2 = sub_20C5EEE30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEA54(uint64_t a1)
{
  v2 = sub_20C5EEE30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EEA90(uint64_t a1)
{
  v2 = sub_20C5EEED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEACC(uint64_t a1)
{
  v2 = sub_20C5EEED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EEB08(uint64_t a1)
{
  v2 = sub_20C5EEE84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EEB44(uint64_t a1)
{
  v2 = sub_20C5EEE84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineLayoutStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE648, &qword_20C651290);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE650, &qword_20C651298);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE658, &qword_20C6512A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EEE30();
  sub_20C64E500();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_20C5EEE84();
    v14 = v18;
    sub_20C64E3B0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_20C5EEED8();
    sub_20C64E3B0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_20C5EEE30()
{
  result = qword_27C7CE660;
  if (!qword_27C7CE660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE660);
  }

  return result;
}

unint64_t sub_20C5EEE84()
{
  result = qword_27C7CE668;
  if (!qword_27C7CE668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE668);
  }

  return result;
}

unint64_t sub_20C5EEED8()
{
  result = qword_27C7CE670;
  if (!qword_27C7CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE670);
  }

  return result;
}

uint64_t MarketingInlineLayoutStyle.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE678, &qword_20C6512A8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE680, &qword_20C6512B0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE688, &unk_20C6512B8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EEE30();
  v12 = v31;
  sub_20C64E4F0();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_20C64E3A0();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_20C5DDAF0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_20C64E290();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v22 = &type metadata for MarketingInlineLayoutStyle;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_20C5EEE84();
        sub_20C64E320();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_20C5EEED8();
        sub_20C64E320();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t MarketingInlineLayoutStyle.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C5EF490()
{
  result = qword_27C7CE690;
  if (!qword_27C7CE690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE690);
  }

  return result;
}

unint64_t sub_20C5EF528()
{
  result = qword_27C7CE698;
  if (!qword_27C7CE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE698);
  }

  return result;
}

unint64_t sub_20C5EF580()
{
  result = qword_27C7CE6A0;
  if (!qword_27C7CE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6A0);
  }

  return result;
}

unint64_t sub_20C5EF5D8()
{
  result = qword_27C7CE6A8;
  if (!qword_27C7CE6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6A8);
  }

  return result;
}

unint64_t sub_20C5EF630()
{
  result = qword_27C7CE6B0;
  if (!qword_27C7CE6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6B0);
  }

  return result;
}

unint64_t sub_20C5EF688()
{
  result = qword_27C7CE6B8;
  if (!qword_27C7CE6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6B8);
  }

  return result;
}

unint64_t sub_20C5EF6E0()
{
  result = qword_27C7CE6C0;
  if (!qword_27C7CE6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6C0);
  }

  return result;
}

unint64_t sub_20C5EF738()
{
  result = qword_27C7CE6C8;
  if (!qword_27C7CE6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6C8);
  }

  return result;
}

uint64_t sub_20C5EF79C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6570704177656976;
  }
}

uint64_t sub_20C5EF7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6570704177656976 && a2 == 0xEC00000064657261;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000020C659980 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C5EF8CC(uint64_t a1)
{
  v2 = sub_20C5EFD60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF908(uint64_t a1)
{
  v2 = sub_20C5EFD60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EF944(uint64_t a1)
{
  v2 = sub_20C5EFDB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF980(uint64_t a1)
{
  v2 = sub_20C5EFDB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5EF9BC(uint64_t a1)
{
  v2 = sub_20C5EFE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5EF9F8(uint64_t a1)
{
  v2 = sub_20C5EFE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingInlineAction.hashValue.getter(char a1)
{
  sub_20C64E4A0();
  MEMORY[0x20F301800](a1 & 1);
  return sub_20C64E4E0();
}

uint64_t MarketingInlineAction.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6D0, &qword_20C651640);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6D8, &qword_20C651648);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE6E0, &qword_20C651650);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EFD60();
  sub_20C64E500();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_20C5EFDB4();
    sub_20C64E3B0();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_20C5EFE08();
    sub_20C64E3B0();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

unint64_t sub_20C5EFD60()
{
  result = qword_281106398[0];
  if (!qword_281106398[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281106398);
  }

  return result;
}

unint64_t sub_20C5EFDB4()
{
  result = qword_27C7CE6E8;
  if (!qword_27C7CE6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6E8);
  }

  return result;
}

unint64_t sub_20C5EFE08()
{
  result = qword_281106380;
  if (!qword_281106380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106380);
  }

  return result;
}

uint64_t sub_20C5EFE78@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_20C5EFEC4(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_20C5EFEC4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE700, &qword_20C6519D8);
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE708, &qword_20C6519E0);
  v22 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE710, &qword_20C6519E8);
  v25 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5EFD60();
  v11 = v26;
  sub_20C64E4F0();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = sub_20C64E3A0();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_20C5DDAF0();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = sub_20C64E290();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
    *v19 = &type metadata for MarketingInlineAction;
    sub_20C64E330();
    sub_20C64E280();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_20C5EFDB4();
    sub_20C64E320();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_20C5EFE08();
    sub_20C64E320();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v31 & 1;
}

unint64_t sub_20C5F0384()
{
  result = qword_27C7CE6F0;
  if (!qword_27C7CE6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6F0);
  }

  return result;
}

unint64_t sub_20C5F041C()
{
  result = qword_27C7CE6F8;
  if (!qword_27C7CE6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE6F8);
  }

  return result;
}

unint64_t sub_20C5F0474()
{
  result = qword_281106370;
  if (!qword_281106370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106370);
  }

  return result;
}

unint64_t sub_20C5F04CC()
{
  result = qword_281106378;
  if (!qword_281106378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106378);
  }

  return result;
}

unint64_t sub_20C5F0524()
{
  result = qword_281106360;
  if (!qword_281106360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106360);
  }

  return result;
}

unint64_t sub_20C5F057C()
{
  result = qword_281106368;
  if (!qword_281106368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106368);
  }

  return result;
}

unint64_t sub_20C5F05D4()
{
  result = qword_281106388;
  if (!qword_281106388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106388);
  }

  return result;
}

unint64_t sub_20C5F062C()
{
  result = qword_281106390;
  if (!qword_281106390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106390);
  }

  return result;
}

uint64_t BubbleTipView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE718, &qword_20C651A00);
  sub_20C64DD00();
  *(a3 + 24) = v7;
  sub_20C64DD00();
  *(a3 + 40) = v7;
  *(a3 + 48) = *(&v7 + 1);
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t BubbleTipView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v133 = a1;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE720, &unk_20C651A08);
  MEMORY[0x28223BE20](v123);
  v124 = &v92 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CDFE0, &qword_20C64F410);
  MEMORY[0x28223BE20](v3 - 8);
  v120 = &v92 - v4;
  v5 = sub_20C64DFD0();
  v118 = *(v5 - 8);
  v119 = v5;
  MEMORY[0x28223BE20](v5);
  v117 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C64DF90();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v109 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  *&v127 = &v92 - v11;
  v110 = sub_20C64DF70();
  v107 = *(v110 - 8);
  v12 = MEMORY[0x28223BE20](v110);
  v105 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v125 = &v92 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE728, &qword_20C651A18);
  MEMORY[0x28223BE20](v15 - 8);
  v111 = &v92 - v16;
  *&v126 = sub_20C64D0F0();
  v104 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE730, &qword_20C651A20);
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  *&v128 = &v92 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE738, &qword_20C651A28);
  v114 = *(v20 - 8);
  v115 = v20;
  MEMORY[0x28223BE20](v20);
  v113 = &v92 - v21;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE740, &qword_20C651A30);
  v22 = MEMORY[0x28223BE20](v122);
  v112 = &v92 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v92 - v24;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE748, &qword_20C651A38);
  MEMORY[0x28223BE20](v132);
  v121 = &v92 - v25;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE750, &qword_20C651A40);
  MEMORY[0x28223BE20](v131);
  v130 = (&v92 - v26);
  v27 = v1[1];
  v144 = *v1;
  v145 = v27;
  v146 = v1[2];
  v147 = *(v1 + 6);
  v28 = v144;
  v29 = v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  v31 = sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
  *&v129 = *(&v28 + 1);
  v32 = v29;
  v33 = v31;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF20();

  v34 = v143;
  if (v143)
  {
    if (v143 == 1)
    {
      v136 = 0;
      v134 = 0u;
      v135 = 0u;
      v137 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
      sub_20C5F1F70();
      sub_20C64D550();
      v35 = v140;
      v36 = v141;
      v37 = v139;
      v38 = v130;
      *v130 = v138;
      v38[1] = v37;
      *(v38 + 4) = v35;
      *(v38 + 40) = v36;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
      sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
      sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
      return sub_20C64D550();
    }

    else
    {
      v99 = v8;
      v100 = v7;
      v102 = v142;
      if (v142)
      {
        v47 = *(v142 + OBJC_IVAR____TtC16FitnessMarketing21BubbleTipModelWrapper_baseModel);
      }

      else
      {
        v47 = 0;
      }

      v103 = v34;
      v48 = *(v34 + OBJC_IVAR____TtC16FitnessMarketing23BubbleTipRequestWrapper_request);
      sub_20C64D220();
      swift_getKeyPath();
      sub_20C64DF20();

      v49 = *(&v138 + 1);
      v101 = v48;
      if (v47)
      {
        v94 = v33;
        v97 = v28;
        v92 = v138;
        swift_retain_n();
        sub_20C64D0E0();
        v50 = swift_allocObject();
        v51 = v145;
        *(v50 + 16) = v144;
        *(v50 + 32) = v51;
        *(v50 + 48) = v146;
        *(v50 + 64) = v147;
        *(v50 + 72) = v47;
        sub_20C5F2084(&v144, &v138);
        v52 = sub_20C5F1F18();
        v98 = v47;

        v53 = v126;
        v93 = v52;
        sub_20C64DB30();

        (*(v104 + 8))(v18, v53);
        v54 = [v48 title];
        v96 = v32;
        v95 = v30;
        if (v54)
        {
          v55 = v54;
          v56 = sub_20C64E050();
          v104 = v57;
        }

        else
        {
          v56 = 0;
          v104 = 0xE000000000000000;
        }

        v59 = v99;
        v60 = sub_20C5EC004(v92, v49);

        v61 = v125;
        sub_20C64DF60();
        v62 = v127;
        sub_20C64DF80();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
        inited = swift_initStackObject();
        *(inited + 32) = 1701667182;
        *(inited + 16) = xmmword_20C6519F0;
        v64 = MEMORY[0x277D837D0];
        *(inited + 40) = 0xE400000000000000;
        *(inited + 48) = v56;
        *(inited + 56) = v104;
        *(inited + 72) = v64;
        strcpy((inited + 80), "impressionType");
        *(inited + 95) = -18;
        *(inited + 96) = 0x6954656C62627562;
        *(inited + 104) = 0xE900000000000070;
        *(inited + 120) = v64;
        *(inited + 128) = 0x6973736572706D69;
        v65 = MEMORY[0x277D83B88];
        *(inited + 136) = 0xEF7865646E496E6FLL;
        *(inited + 144) = -1;
        *(inited + 168) = v65;
        *(inited + 176) = 0x657079546469;
        *(inited + 216) = v64;
        *(inited + 184) = 0xE600000000000000;
        *(inited + 192) = 0x64695F737469;
        *(inited + 200) = 0xE600000000000000;
        v66 = sub_20C5F26C8(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
        swift_arrayDestroy();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v138 = v66;
        sub_20C5EC3E4(v60, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v138);

        v104 = v138;
        v68 = v100;
        (*(v59 + 16))(v109, v62, v100);
        v69 = v107;
        v70 = v61;
        v71 = v110;
        (*(v107 + 16))(v105, v70, v110);
        v72 = MEMORY[0x277D84F90];
        sub_20C5F26C8(MEMORY[0x277D84F90]);
        sub_20C5F26C8(v72);
        v73 = v111;
        sub_20C64DFA0();
        (*(v59 + 8))(v127, v68);
        (*(v69 + 8))(v125, v71);
        v74 = sub_20C64DFB0();
        (*(*(v74 - 8) + 56))(v73, 0, 1, v74);
        v75 = v117;
        sub_20C64DFC0();
        *&v138 = v126;
        *(&v138 + 1) = v93;
        swift_getOpaqueTypeConformance2();
        v76 = v113;
        v77 = v108;
        v78 = v128;
        sub_20C64D9B0();
        (*(v118 + 8))(v75, v119);
        sub_20C5DBFC4(v73, &qword_27C7CE728, &qword_20C651A18);
        (*(v106 + 8))(v78, v77);
        sub_20C64D220();
        swift_getKeyPath();
        v79 = v120;
        sub_20C64DF30();

        v80 = sub_20C64D070();
        v81 = *(v80 - 8);
        if ((*(v81 + 48))(v79, 1, v80) == 1)
        {
          sub_20C5DBFC4(v79, &qword_27C7CDFE0, &qword_20C64F410);
          v128 = 0u;
          v129 = 0u;
        }

        else
        {
          sub_20C64D050();
          v128 = v83;
          v129 = v82;
          v126 = v85;
          v127 = v84;
          (*(v81 + 8))(v79, v80);
          *&v86 = v128;
          *(&v86 + 1) = v126;
          v128 = v86;
          *&v86 = v129;
          *(&v86 + 1) = v127;
          v129 = v86;
        }

        v58 = v121;
        v87 = sub_20C64D7A0();
        v88 = v112;
        (*(v114 + 32))(v112, v76, v115);
        v89 = v88 + *(v122 + 36);
        *v89 = v87;
        v90 = v129;
        *(v89 + 24) = v128;
        *(v89 + 8) = v90;
        *(v89 + 40) = 0;
        v91 = v116;
        sub_20C5D5330(v88, v116);
        sub_20C5E574C(v91, v124, &qword_27C7CE740, &qword_20C651A30);
        swift_storeEnumTagMultiPayload();
        sub_20C5F1E18();
        sub_20C64D550();

        sub_20C5DBFC4(v91, &qword_27C7CE740, &qword_20C651A30);
      }

      else
      {

        swift_storeEnumTagMultiPayload();
        sub_20C5F1E18();
        v58 = v121;
        sub_20C64D550();
      }

      sub_20C5E574C(v58, v130, &qword_27C7CE748, &qword_20C651A38);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
      sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
      sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
      sub_20C64D550();

      return sub_20C5DBFC4(v58, &qword_27C7CE748, &qword_20C651A38);
    }
  }

  else
  {
    v40 = sub_20C64DC00();
    v41 = swift_allocObject();
    v42 = v145;
    *(v41 + 16) = v144;
    *(v41 + 32) = v42;
    *(v41 + 48) = v146;
    *(v41 + 64) = v147;
    *&v134 = v40;
    *(&v134 + 1) = sub_20C5F27F8;
    v135 = v41;
    v136 = 0;
    v137 = 0;
    sub_20C5F2084(&v144, &v138);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE768, &qword_20C656F50);
    sub_20C5F1F70();
    sub_20C64D550();
    v43 = v140;
    v44 = v141;
    v45 = v139;
    v46 = v130;
    *v130 = v138;
    v46[1] = v45;
    *(v46 + 4) = v43;
    *(v46 + 40) = v44;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE760, &unk_20C651A90);
    sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
    sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
    sub_20C64D550();
  }
}

uint64_t sub_20C5F1884(uint64_t *a1)
{
  v1 = type metadata accessor for BubbleTipAction(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
  sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5F29F4(v3);
}

void *sub_20C5F19A4(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE780, &qword_20C651BD8);
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  if (a1)
  {
    v15 = *(a2 + 40);
    v14[0] = *(a2 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE788, &qword_20C651BE0);
    result = sub_20C64DD10();
    if ((v13 & 1) == 0)
    {
      v14[0] = v15;
      LOBYTE(v13) = 1;
      sub_20C64DD20();
      sub_20C64D120();
      v9 = swift_allocObject();
      v10 = *(a2 + 16);
      *(v9 + 16) = *a2;
      *(v9 + 32) = v10;
      *(v9 + 48) = *(a2 + 32);
      *(v9 + 64) = *(a2 + 48);
      sub_20C5F2084(a2, v14);
      sub_20C5E5558(&qword_27C7CE790, &qword_27C7CE780, &qword_20C651BD8, MEMORY[0x277CBCEC8]);
      v11 = sub_20C64D170();

      (*(v5 + 8))(v8, v4);
      v14[0] = *(a2 + 24);
      v13 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE798, &qword_20C651BE8);
      return sub_20C64DD20();
    }
  }

  return result;
}

uint64_t sub_20C5F1BBC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for BubbleTipAction(0);
  result = MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + 8);
  if (v8 != 255)
  {
    v9 = *a1;
    sub_20C5F2AAC(*a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE758, &qword_20C651A48);
    sub_20C5E5558(&qword_2811057C0, &qword_27C7CE758, &qword_20C651A48, MEMORY[0x277D04410]);
    sub_20C64D220();
    if ((v8 & 1) == 0)
    {
      sub_20C5F2ADC();
      v10 = v9;
      sub_20C64D0D0();
    }

    swift_storeEnumTagMultiPayload();
    sub_20C64DF40();

    sub_20C5F29F4(v7);
    v12 = *(a2 + 5);
    v13 = v12;
    v11[15] = 0;
    v14 = *(&v12 + 1);
    sub_20C5E574C(&v14, v11, &qword_27C7CE7A0, &qword_20C651BF0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE788, &qword_20C651BE0);
    sub_20C64DD20();
    sub_20C5F2AB8(v9, v8);
    return sub_20C5DBFC4(&v13, &qword_27C7CE788, &qword_20C651BE0);
  }

  return result;
}

unint64_t sub_20C5F1E18()
{
  result = qword_281105AE8;
  if (!qword_281105AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE740, &qword_20C651A30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE730, &qword_20C651A20);
    sub_20C64D0F0();
    sub_20C5F1F18();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AE8);
  }

  return result;
}

unint64_t sub_20C5F1F18()
{
  result = qword_281105B38;
  if (!qword_281105B38)
  {
    sub_20C64D0F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105B38);
  }

  return result;
}

unint64_t sub_20C5F1F70()
{
  result = qword_281105AA0;
  if (!qword_281105AA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE768, &qword_20C656F50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105AA0);
  }

  return result;
}

uint64_t sub_20C5F1FF4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

uint64_t sub_20C5F20C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_20C5DFF60((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_20C5F210C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
  v33 = v4;
  result = sub_20C64E2F0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_20C5EC6F4(v24, v34);
      }

      else
      {
        sub_20C5DFF60(v24, v34);
      }

      sub_20C64E4A0();
      sub_20C64E090();
      result = sub_20C64E4E0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_20C5EC6F4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_20C5F23C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
  v2 = *v0;
  v3 = sub_20C64E2E0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_20C5DFF60(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_20C5EC6F4(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_20C5F2568@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20C5DFF60(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_20C5EC6F4(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_20C5DBFC4(v21, &qword_27C7CE778, &qword_20C651BD0);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_20C5F26C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5D0, &qword_20C650FB8);
    v3 = sub_20C64E300();
    v4 = a1 + 32;

    while (1)
    {
      sub_20C5E574C(v4, &v13, &qword_27C7CE5C8, &qword_20C650FB0);
      v5 = v13;
      v6 = v14;
      result = sub_20C5DFFBC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20C5EC6F4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_20C5F2844(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_20C5F28A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_20C5F2910()
{
  result = qword_281105948;
  if (!qword_281105948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE770, &unk_20C651BC0);
    sub_20C5F1FF4(&qword_281105978, &qword_27C7CE760, &unk_20C651A90, sub_20C5F1F70);
    sub_20C5F1FF4(&qword_281105980, &qword_27C7CE748, &qword_20C651A38, sub_20C5F1E18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105948);
  }

  return result;
}

uint64_t sub_20C5F29F4(uint64_t a1)
{
  v2 = type metadata accessor for BubbleTipAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroy_11Tm()
{
  sub_20C5E3044(*(v0 + 16), *(v0 + 24));

  return swift_deallocObject();
}

void sub_20C5F2AB8(id result, char a2)
{
  if (a2 != -1)
  {
    sub_20C5F2AD0(result);
  }
}

unint64_t sub_20C5F2ADC()
{
  result = qword_281105780;
  if (!qword_281105780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281105780);
  }

  return result;
}

uint64_t ImpressionMetrics.init(parentId:elementId:name:impressionType:index:idType:additionalFields:custom:)@<X0>(uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v42 = a8;
  v41 = a7;
  v40 = a6;
  v39 = a5;
  v49 = a9;
  v48 = a14;
  v43 = a11;
  v47 = sub_20C64DF70();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_20C64DF90();
  v38 = *(v44 - 8);
  v15 = v38;
  v16 = MEMORY[0x28223BE20](v44);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v37 - v19;
  sub_20C64DF80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C0, &unk_20C651AA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C6519F0;
  *(inited + 32) = 1701667182;
  v22 = MEMORY[0x277D837D0];
  v23 = v39;
  *(inited + 40) = 0xE400000000000000;
  *(inited + 48) = v23;
  *(inited + 56) = v40;
  *(inited + 72) = v22;
  strcpy((inited + 80), "impressionType");
  *(inited + 95) = -18;
  v24 = v42;
  *(inited + 96) = v41;
  *(inited + 104) = v24;
  *(inited + 120) = v22;
  *(inited + 128) = 0x6973736572706D69;
  v25 = MEMORY[0x277D83B88];
  *(inited + 136) = 0xEF7865646E496E6FLL;
  *(inited + 144) = a10;
  *(inited + 168) = v25;
  *(inited + 176) = 0x657079546469;
  *(inited + 216) = v22;
  v26 = v43;
  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v26;
  *(inited + 200) = a12;
  v27 = sub_20C5F26C8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE5C8, &qword_20C650FB0);
  swift_arrayDestroy();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = v27;
  sub_20C5EC3E4(a13, sub_20C5F20C0, 0, isUniquelyReferenced_nonNull_native, &v50);

  v29 = *(v15 + 16);
  v30 = v20;
  v31 = v44;
  v29(v18, v20, v44);
  v32 = v45;
  v33 = v48;
  v34 = v47;
  (*(v45 + 16))(v46, v48, v47);
  v35 = MEMORY[0x277D84F90];
  sub_20C5F26C8(MEMORY[0x277D84F90]);
  sub_20C5F26C8(v35);
  sub_20C64DFA0();
  (*(v32 + 8))(v33, v34);
  return (*(v38 + 8))(v30, v31);
}

uint64_t sub_20C5F2F50@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20C64CE10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7A8, &qword_20C651BF8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_20C64CEC0();
  sub_20C64CE00();

  v9 = *(v3 + 48);
  if (!v9(v8, 1, v2))
  {
    sub_20C64CDF0();
  }

  if (v9(v8, 1, v2))
  {
    v10 = sub_20C64CF10();
    (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_20C64CDE0();
    (*(v3 + 8))(v5, v2);
  }

  return sub_20C5F3150(v8);
}

uint64_t sub_20C5F3150(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7A8, &qword_20C651BF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingArtwork.init(backgroundColor:templateURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_20C5E5658(a1, a3, &qword_27C7CE7B0, &unk_20C651C00);
  v5 = type metadata accessor for MarketingArtwork(0);
  return sub_20C5E5658(a2, a3 + *(v5 + 20), &qword_27C7CF080, &qword_20C654360);
}

uint64_t sub_20C5F3294()
{
  if (*v0)
  {
    return 0x6574616C706D6574;
  }

  else
  {
    return 0x756F72676B636162;
  }
}

uint64_t sub_20C5F32E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574616C706D6574 && a2 == 0xEB000000004C5255)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C5F33CC(uint64_t a1)
{
  v2 = sub_20C5F3644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F3408(uint64_t a1)
{
  v2 = sub_20C5F3644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingArtwork.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B8, &qword_20C651C10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F3644();
  sub_20C64E500();
  v8[15] = 0;
  sub_20C64D030();
  sub_20C5F4760(&qword_27C7CE7C8, MEMORY[0x277D09D68], MEMORY[0x277D09D70]);
  sub_20C64E3D0();
  if (!v1)
  {
    type metadata accessor for MarketingArtwork(0);
    v8[14] = 1;
    sub_20C64CF10();
    sub_20C5F4760(&qword_27C7CE7D0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_20C64E3D0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_20C5F3644()
{
  result = qword_27C7CE7C0;
  if (!qword_27C7CE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE7C0);
  }

  return result;
}

uint64_t MarketingArtwork.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  MEMORY[0x28223BE20](v7 - 8);
  v23 = &v19 - v8;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7D8, &qword_20C651C18);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v19 - v9;
  v11 = type metadata accessor for MarketingArtwork(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F3644();
  sub_20C64E4F0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v14 = v13;
  v15 = v22;
  sub_20C64D030();
  v26 = 0;
  sub_20C5F4760(&qword_27C7CE7E0, MEMORY[0x277D09D68], MEMORY[0x277D09D88]);
  v16 = v23;
  v17 = v24;
  sub_20C64E350();
  sub_20C5E5658(v16, v14, &qword_27C7CE7B0, &unk_20C651C00);
  sub_20C64CF10();
  v25 = 1;
  sub_20C5F4760(&qword_27C7CE7E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  sub_20C64E350();
  (*(v15 + 8))(v10, v17);
  sub_20C5E5658(v6, v14 + *(v20 + 20), &qword_27C7CF080, &qword_20C654360);
  sub_20C5F3A48(v14, v21);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_20C5F3AAC(v14);
}

uint64_t sub_20C5F3A48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C5F3AAC(uint64_t a1)
{
  v2 = type metadata accessor for MarketingArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MarketingArtwork.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_20C64CF10();
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = sub_20C64D030();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_20C5E574C(v2, &v20 - v13, &qword_27C7CE7B0, &unk_20C651C00);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_20C64E4C0();
  }

  else
  {
    (*(v9 + 32))(v11, v14, v8);
    sub_20C64E4C0();
    sub_20C5F4760(&qword_281106828, MEMORY[0x277D09D68], MEMORY[0x277D09D78]);
    sub_20C64E000();
    (*(v9 + 8))(v11, v8);
  }

  v15 = type metadata accessor for MarketingArtwork(0);
  sub_20C5E574C(v2 + *(v15 + 20), v7, &qword_27C7CF080, &qword_20C654360);
  v17 = v22;
  v16 = v23;
  if ((*(v22 + 48))(v7, 1, v23) == 1)
  {
    return sub_20C64E4C0();
  }

  v19 = v21;
  (*(v17 + 32))(v21, v7, v16);
  sub_20C64E4C0();
  sub_20C5F4760(&qword_281106850, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_20C64E000();
  return (*(v17 + 8))(v19, v16);
}

uint64_t MarketingArtwork.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5F3F24()
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5F3F68(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingArtwork.hash(into:)(v2);
  return sub_20C64E4E0();
}

BOOL _s16FitnessMarketing0B7ArtworkV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C64CF10();
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CF080, &qword_20C654360);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v38 - v7;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE810, &qword_20C651E18);
  MEMORY[0x28223BE20](v40);
  v41 = &v38 - v8;
  v9 = sub_20C64D030();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE7B0, &unk_20C651C00);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE818, &unk_20C651E20);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v38 - v18;
  v20 = *(v17 + 56);
  v42 = a1;
  sub_20C5E574C(a1, &v38 - v18, &qword_27C7CE7B0, &unk_20C651C00);
  v43 = a2;
  sub_20C5E574C(a2, &v19[v20], &qword_27C7CE7B0, &unk_20C651C00);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_20C5E574C(v19, v15, &qword_27C7CE7B0, &unk_20C651C00);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      (*(v10 + 32))(v12, &v19[v20], v9);
      sub_20C5F4760(&qword_281106820, MEMORY[0x277D09D68], MEMORY[0x277D09D80]);
      v25 = sub_20C64E010();
      v26 = *(v10 + 8);
      v26(v12, v9);
      v26(v15, v9);
      sub_20C5DBFC4(v19, &qword_27C7CE7B0, &unk_20C651C00);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v10 + 8))(v15, v9);
LABEL_6:
    v22 = &qword_27C7CE818;
    v23 = &unk_20C651E20;
    v24 = v19;
LABEL_14:
    sub_20C5DBFC4(v24, v22, v23);
    return 0;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_20C5DBFC4(v19, &qword_27C7CE7B0, &unk_20C651C00);
LABEL_8:
  v27 = *(type metadata accessor for MarketingArtwork(0) + 20);
  v28 = v41;
  v29 = *(v40 + 48);
  sub_20C5E574C(v42 + v27, v41, &qword_27C7CF080, &qword_20C654360);
  sub_20C5E574C(v43 + v27, v28 + v29, &qword_27C7CF080, &qword_20C654360);
  v31 = v44;
  v30 = v45;
  v32 = *(v44 + 48);
  if (v32(v28, 1, v45) == 1)
  {
    if (v32(v28 + v29, 1, v30) == 1)
    {
      sub_20C5DBFC4(v28, &qword_27C7CF080, &qword_20C654360);
      return 1;
    }

    goto LABEL_13;
  }

  v33 = v39;
  sub_20C5E574C(v28, v39, &qword_27C7CF080, &qword_20C654360);
  if (v32(v28 + v29, 1, v30) == 1)
  {
    (*(v31 + 8))(v33, v30);
LABEL_13:
    v22 = &qword_27C7CE810;
    v23 = &qword_20C651E18;
    v24 = v28;
    goto LABEL_14;
  }

  v35 = v38;
  (*(v31 + 32))(v38, v28 + v29, v30);
  sub_20C5F4760(&qword_281106848, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = sub_20C64E010();
  v37 = *(v31 + 8);
  v37(v35, v30);
  v37(v33, v30);
  sub_20C5DBFC4(v28, &qword_27C7CF080, &qword_20C654360);
  return (v36 & 1) != 0;
}

unint64_t sub_20C5F465C()
{
  result = qword_27C7CE7F8;
  if (!qword_27C7CE7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE7F8);
  }

  return result;
}

unint64_t sub_20C5F46B4()
{
  result = qword_27C7CE800;
  if (!qword_27C7CE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE800);
  }

  return result;
}

unint64_t sub_20C5F470C()
{
  result = qword_27C7CE808;
  if (!qword_27C7CE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE808);
  }

  return result;
}

uint64_t sub_20C5F4760(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C5F47BC(uint64_t a1)
{
  v2 = sub_20C5F52EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F47F8(uint64_t a1)
{
  v2 = sub_20C5F52EC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_20C5F4834()
{
  v1 = *v0;
  v2 = 0x6D6574496F6ELL;
  v3 = 0xD000000000000012;
  if (v1 != 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0xD000000000000010;
  if (v1 != 1)
  {
    v4 = 0x6C6572726F436F6ELL;
  }

  if (*v0)
  {
    v2 = v4;
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

uint64_t sub_20C5F4908@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5F6294(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5F4930(uint64_t a1)
{
  v2 = sub_20C5F51F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F496C(uint64_t a1)
{
  v2 = sub_20C5F51F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F49A8(uint64_t a1)
{
  v2 = sub_20C5F5298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F49E4(uint64_t a1)
{
  v2 = sub_20C5F5298();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4A20(uint64_t a1)
{
  v2 = sub_20C5F5244();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4A5C(uint64_t a1)
{
  v2 = sub_20C5F5244();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4A98(uint64_t a1)
{
  v2 = sub_20C5F5340();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4AD4(uint64_t a1)
{
  v2 = sub_20C5F5340();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4B10(uint64_t a1)
{
  v2 = sub_20C5F53E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4B4C(uint64_t a1)
{
  v2 = sub_20C5F53E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F4B88(uint64_t a1)
{
  v2 = sub_20C5F5394();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F4BC4(uint64_t a1)
{
  v2 = sub_20C5F5394();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingItemError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE820, &qword_20C651E30);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE828, &qword_20C651E38);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x28223BE20](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE830, &qword_20C651E40);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE838, &qword_20C651E48);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE840, &qword_20C651E50);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE848, &qword_20C651E58);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE850, &qword_20C651E60);
  v16 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F51F0();
  sub_20C64E500();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_20C5F52EC();
      v21 = v33;
      v22 = v42;
      sub_20C64E3B0();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_20C5F5298();
      v21 = v36;
      v22 = v42;
      sub_20C64E3B0();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_20C5F5244();
      v21 = v39;
      v22 = v42;
      sub_20C64E3B0();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_20C5F5394();
      v21 = v27;
      v22 = v42;
      sub_20C64E3B0();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_20C5F5340();
      v21 = v30;
      v22 = v42;
      sub_20C64E3B0();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_20C5F53E8();
  v22 = v42;
  sub_20C64E3B0();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_20C5F51F0()
{
  result = qword_27C7CE858;
  if (!qword_27C7CE858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE858);
  }

  return result;
}

unint64_t sub_20C5F5244()
{
  result = qword_27C7CE860;
  if (!qword_27C7CE860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE860);
  }

  return result;
}

unint64_t sub_20C5F5298()
{
  result = qword_27C7CE868;
  if (!qword_27C7CE868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE868);
  }

  return result;
}

unint64_t sub_20C5F52EC()
{
  result = qword_27C7CE870;
  if (!qword_27C7CE870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE870);
  }

  return result;
}

unint64_t sub_20C5F5340()
{
  result = qword_27C7CE878;
  if (!qword_27C7CE878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE878);
  }

  return result;
}

unint64_t sub_20C5F5394()
{
  result = qword_27C7CE880;
  if (!qword_27C7CE880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE880);
  }

  return result;
}

unint64_t sub_20C5F53E8()
{
  result = qword_27C7CE888;
  if (!qword_27C7CE888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE888);
  }

  return result;
}

uint64_t MarketingItemError.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE890, &qword_20C651E68);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE898, &qword_20C651E70);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x28223BE20](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8A0, &qword_20C651E78);
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8A8, &qword_20C651E80);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8B0, &qword_20C651E88);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8B8, &qword_20C651E90);
  v40 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE8C0, &unk_20C651E98);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_20C5F51F0();
  v22 = v56;
  sub_20C64E4F0();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_20C64E3A0();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_20C5DDAF8();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_20C64E290();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v36 = &type metadata for MarketingItemError;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_20C5F52EC();
          sub_20C64E320();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_20C5F5298();
          sub_20C64E320();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_20C5F5244();
          sub_20C64E320();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_20C5F5394();
            v31 = v56;
            sub_20C64E320();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_20C5F5340();
            v31 = v51;
            sub_20C64E320();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_20C5F53E8();
          sub_20C64E320();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v57);
}

uint64_t MarketingItemError.hashValue.getter()
{
  v1 = *v0;
  sub_20C64E4A0();
  MEMORY[0x20F301800](v1);
  return sub_20C64E4E0();
}

unint64_t sub_20C5F5C98()
{
  result = qword_27C7CE8C8;
  if (!qword_27C7CE8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8C8);
  }

  return result;
}

unint64_t sub_20C5F5D70()
{
  result = qword_27C7CE8D0;
  if (!qword_27C7CE8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8D0);
  }

  return result;
}

unint64_t sub_20C5F5DC8()
{
  result = qword_27C7CE8D8;
  if (!qword_27C7CE8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8D8);
  }

  return result;
}

unint64_t sub_20C5F5E20()
{
  result = qword_27C7CE8E0;
  if (!qword_27C7CE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8E0);
  }

  return result;
}

unint64_t sub_20C5F5E78()
{
  result = qword_27C7CE8E8;
  if (!qword_27C7CE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8E8);
  }

  return result;
}

unint64_t sub_20C5F5ED0()
{
  result = qword_27C7CE8F0;
  if (!qword_27C7CE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8F0);
  }

  return result;
}

unint64_t sub_20C5F5F28()
{
  result = qword_27C7CE8F8;
  if (!qword_27C7CE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE8F8);
  }

  return result;
}

unint64_t sub_20C5F5F80()
{
  result = qword_27C7CE900;
  if (!qword_27C7CE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE900);
  }

  return result;
}

unint64_t sub_20C5F5FD8()
{
  result = qword_27C7CE908;
  if (!qword_27C7CE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE908);
  }

  return result;
}

unint64_t sub_20C5F6030()
{
  result = qword_27C7CE910;
  if (!qword_27C7CE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE910);
  }

  return result;
}

unint64_t sub_20C5F6088()
{
  result = qword_27C7CE918;
  if (!qword_27C7CE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE918);
  }

  return result;
}

unint64_t sub_20C5F60E0()
{
  result = qword_27C7CE920;
  if (!qword_27C7CE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE920);
  }

  return result;
}

unint64_t sub_20C5F6138()
{
  result = qword_27C7CE928;
  if (!qword_27C7CE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE928);
  }

  return result;
}

unint64_t sub_20C5F6190()
{
  result = qword_27C7CE930;
  if (!qword_27C7CE930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE930);
  }

  return result;
}

unint64_t sub_20C5F61E8()
{
  result = qword_27C7CE938;
  if (!qword_27C7CE938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE938);
  }

  return result;
}

unint64_t sub_20C5F6240()
{
  result = qword_27C7CE940;
  if (!qword_27C7CE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE940);
  }

  return result;
}

uint64_t sub_20C5F6294(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000;
  if (v4 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000020C6599A0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6572726F436F6ELL && a2 == 0xEF44496E6F697461 || (sub_20C64E430() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000020C6599C0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C6599E0 == a2 || (sub_20C64E430() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x800000020C659A00 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5F64A4()
{
  v0 = sub_20C64D160();
  __swift_allocate_value_buffer(v0, qword_27C7DD450);
  __swift_project_value_buffer(v0, qword_27C7DD450);
  return sub_20C64D150();
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_20C5F65BC(uint64_t a1, uint64_t a2)
{
  v83 = sub_20C64CF10();
  v4 = *(v83 - 8);
  v5 = MEMORY[0x28223BE20](v83);
  v79 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v77 = &v69 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v8 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v78 = &v69 - v9;
  v87 = type metadata accessor for MarketingAction(0);
  v10 = MEMORY[0x28223BE20](v87);
  v80 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v82 = &v69 - v13;
  MEMORY[0x28223BE20](v12);
  v85 = &v69 - v14;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  MEMORY[0x28223BE20](v86);
  v16 = &v69 - v15;
  v84 = type metadata accessor for MarketingActionItem(0);
  v17 = MEMORY[0x28223BE20](v84);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v22 = &v69 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a2 + v24;
  v26 = a1 + v24;
  v74 = (v4 + 32);
  v75 = (v4 + 8);
  v69 = (v8 + 32);
  v70 = (v8 + 8);
  v76 = *(v20 + 72);
  v73 = v19;
  while (1)
  {
    sub_20C5F93A4(v26, v22, type metadata accessor for MarketingActionItem);
    sub_20C5F93A4(v25, v19, type metadata accessor for MarketingActionItem);
    v29 = *(v86 + 48);
    sub_20C5F93A4(v22, v16, type metadata accessor for MarketingAction);
    sub_20C5F93A4(v19, &v16[v29], type metadata accessor for MarketingAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v37 = v85;
      sub_20C5F93A4(v16, v85, type metadata accessor for MarketingAction);
      if (swift_getEnumCaseMultiPayload())
      {
        (*v70)(v37, v81);
        goto LABEL_43;
      }

      v38 = v78;
      v39 = v81;
      (*v69)(v78, &v16[v29], v81);
      sub_20C5F94D4(0, &qword_281105788, 0x277CEE438);
      LODWORD(v72) = sub_20C64D0A0();
      v40 = *v70;
      v19 = v73;
      (*v70)(v38, v39);
      v40(v85, v39);
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_20C5F93A4(v16, v82, type metadata accessor for MarketingAction);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*v75)(v82, v83);
        goto LABEL_43;
      }

      v31 = v82;
      v32 = v83;
      v33 = v77;
      (*v74)(v77, &v16[v29], v83);
      LODWORD(v72) = sub_20C64CEE0();
      v34 = *v75;
      v35 = v33;
      v36 = v31;
      v19 = v73;
      (*v75)(v35, v32);
      v34(v36, v32);
LABEL_13:
      sub_20C5F9474(v16, type metadata accessor for MarketingAction);
      v41 = v84;
      if ((v72 & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_17;
    }

    v42 = v80;
    sub_20C5F93A4(v16, v80, type metadata accessor for MarketingAction);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      break;
    }

    v43 = *v74;
    v44 = v25;
    v45 = v79;
    v72 = v26;
    v46 = v42;
    v47 = v83;
    v43(v79, &v16[v29], v83);
    v71 = sub_20C64CEE0();
    v48 = *v75;
    v49 = v45;
    v25 = v44;
    (*v75)(v49, v47);
    v50 = v46;
    v26 = v72;
    v48(v50, v47);
    sub_20C5F9474(v16, type metadata accessor for MarketingAction);
    v41 = v84;
    if ((v71 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_17:
    v51 = v41[5];
    v52 = &v22[v51];
    v53 = *&v22[v51 + 8];
    v54 = &v19[v51];
    v55 = *(v54 + 1);
    if (v53)
    {
      if (!v55 || (*v52 != *v54 || v53 != v55) && (sub_20C64E430() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v55)
    {
      goto LABEL_44;
    }

    v56 = v41[6];
    v57 = &v22[v56];
    v58 = *&v22[v56 + 8];
    v59 = &v19[v56];
    v60 = *(v59 + 1);
    if (v58)
    {
      if (!v60 || (*v57 != *v59 || v58 != v60) && (sub_20C64E430() & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (v60)
    {
      goto LABEL_44;
    }

    v61 = v41[7];
    v62 = v22[v61];
    v63 = v22[v61];
    v64 = v19[v61];
    if (v62 < 0)
    {
      if ((v64 & 0x80) == 0 || ((v64 ^ v63) & 0x7F) != 0)
      {
        goto LABEL_44;
      }
    }

    else if (v63 != v64)
    {
      goto LABEL_44;
    }

    v65 = v41[8];
    v66 = *&v22[v65];
    v67 = *&v22[v65 + 8];
    v68 = &v19[v65];
    if (v66 == *v68 && v67 == *(v68 + 1))
    {
      sub_20C5F9474(v19, type metadata accessor for MarketingActionItem);
      sub_20C5F9474(v22, type metadata accessor for MarketingActionItem);
    }

    else
    {
      v27 = sub_20C64E430();
      sub_20C5F9474(v19, type metadata accessor for MarketingActionItem);
      sub_20C5F9474(v22, type metadata accessor for MarketingActionItem);
      if ((v27 & 1) == 0)
      {
        return 0;
      }
    }

    v25 += v76;
    v26 += v76;
    result = 1;
    if (!--v23)
    {
      return result;
    }
  }

  (*v75)(v42, v83);
LABEL_43:
  sub_20C5F940C(v16);
LABEL_44:
  sub_20C5F9474(v19, type metadata accessor for MarketingActionItem);
  sub_20C5F9474(v22, type metadata accessor for MarketingActionItem);
  return 0;
}

uint64_t sub_20C5F6E10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *i;
      v6 = *v3;
      if (v5 < 0)
      {
        if ((v6 & 0x80000000) == 0)
        {
          return 0;
        }
      }

      else if (v6 < 0)
      {
        return 0;
      }

      if (*(v3 - 2) != *(i - 2))
      {
        break;
      }

      if (v5)
      {
        if ((v6 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((v6 & 1) != 0 || *(i - 1) != *(v3 - 1))
        {
          return result;
        }
      }

      v3 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_20C5F6EA8()
{
  if (*v0)
  {
    return 0x726564616568;
  }

  else
  {
    return 0x4163696D616E7964;
  }
}

uint64_t sub_20C5F6EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4163696D616E7964 && a2 == 0xED00006E6F697463;
  if (v6 || (sub_20C64E430() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726564616568 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_20C64E430();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_20C5F6FCC(uint64_t a1)
{
  v2 = sub_20C5F8A38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7008(uint64_t a1)
{
  v2 = sub_20C5F8A38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F705C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5F70E4(uint64_t a1)
{
  v2 = sub_20C5F8B34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7120(uint64_t a1)
{
  v2 = sub_20C5F8B34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5F7170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D657469 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5F71F4(uint64_t a1)
{
  v2 = sub_20C5F8A8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5F7230(uint64_t a1)
{
  v2 = sub_20C5F8A8C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t static MarketingOfferTemplate.makeHeaderUpsellTemplate(from:platform:)@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a1;
  LODWORD(v5) = 2 * (a2 == 3);
  v6 = [a1 rawValues];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE948, &unk_20C655040);
  v7 = sub_20C64DFF0();

  if (!*(v7 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_20C5DFFBC(0x7475626972747461, 0xEA00000000007365);
  if ((v9 & 1) == 0)
  {
    goto LABEL_16;
  }

  v10 = *(*(v7 + 56) + 8 * v8);
  swift_unknownObjectRetain();

  v55[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEF50, &qword_20C650FC8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_16;
  }

  v11 = sub_20C5DFFBC(0x79616C70736964, 0xE700000000000000);
  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C5DFF60(*(v53 + 56) + 32 * v11, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (!*(v53 + 16))
  {
    goto LABEL_16;
  }

  v13 = sub_20C5DFFBC(0xD000000000000012, 0x800000020C659A40);
  if ((v14 & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_20C5DFF60(*(v53 + 56) + 32 * v13, v55);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  if (*(v53 + 16) && (v15 = sub_20C5DFFBC(0xD000000000000010, 0x800000020C659A60), (v16 & 1) != 0))
  {
    sub_20C5DFF60(*(v53 + 56) + 32 * v15, v55);

    if (swift_dynamicCast())
    {
      if (v53 != 0x65736C6166 || v54 != 0xE500000000000000)
      {
        goto LABEL_53;
      }

      LODWORD(v5) = 1;
    }
  }

  else
  {
LABEL_16:
  }

  while (1)
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE950, &unk_20C652590);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_20C650FA0;
    v52 = v5;
    *(v17 + 32) = v5;
    *(v17 + 40) = 1;
    *(v17 + 48) = 0x80;
    v18 = [v3 itemActions];
    v51 = a3;
    if (!v18)
    {
      result = sub_20C5F7834(MEMORY[0x277D84F90]);
      v26 = v25;
      v21 = v27;
      v29 = v28;
      goto LABEL_30;
    }

    v19 = v18;
    v3 = sub_20C5F94D4(0, &qword_281105768, 0x277CEE530);
    v20 = sub_20C64E110();

    if (!(v20 >> 62))
    {
      v5 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v21 = v5 != 0;
      if (v5 >= v21)
      {
        goto LABEL_20;
      }

      goto LABEL_52;
    }

    result = sub_20C64E2C0();
    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_56;
    }

    v5 = result;
    v21 = result != 0;
    if (sub_20C64E2C0() >= v21)
    {
      break;
    }

LABEL_52:
    __break(1u);
LABEL_53:
    v50 = sub_20C64E430();

    if (v50)
    {
      LODWORD(v5) = 1;
    }
  }

  if (sub_20C64E2C0() < v5)
  {
    __break(1u);
    goto LABEL_52;
  }

LABEL_20:
  if ((v20 & 0xC000000000000001) != 0)
  {

    if (v5 >= 2)
    {
      v22 = v21;
      do
      {
        v23 = v22 + 1;
        sub_20C64E260();
        v22 = v23;
      }

      while (v5 != v23);
    }
  }

  else
  {
  }

  if (v20 >> 62)
  {
    sub_20C64E2D0();
    v26 = v30;
    v21 = v31;
    v29 = v32;
  }

  else
  {
    v26 = (v20 & 0xFFFFFFFFFFFFFF8) + 32;
    v29 = 2 * v5;
  }

LABEL_30:
  v33 = (v29 >> 1) - v21;
  if (v29 >> 1 == v21)
  {
LABEL_31:
    result = swift_unknownObjectRelease();
    *v51 = v17;
    *(v51 + 8) = 1;
    return result;
  }

  if ((v29 >> 1) > v21)
  {
    v34 = (v26 + 8 * v21);
    while (1)
    {
      v41 = *v34;
      v42 = [v41 type];
      if (!v42)
      {
        break;
      }

      v43 = v42;
      v44 = sub_20C64E050();
      v46 = v45;
      if (v44 == sub_20C64E050() && v46 == v47)
      {
      }

      else
      {
        v49 = sub_20C64E430();

        if ((v49 & 1) == 0)
        {
          break;
        }
      }

      v38 = *(v17 + 16);
      v37 = *(v17 + 24);
      v39 = v38 + 1;
      v35 = 0x80;
      if (v38 >= v37 >> 1)
      {
        v36 = v52;
LABEL_47:
        v17 = sub_20C5F8450((v37 > 1), v39, 1, v17);
        goto LABEL_35;
      }

      v36 = v52;
LABEL_35:

      *(v17 + 16) = v39;
      v40 = v17 + 24 * v38;
      *(v40 + 32) = v36;
      *(v40 + 40) = 1;
      *(v40 + 48) = v35;
      ++v34;
      if (!--v33)
      {
        goto LABEL_31;
      }
    }

    v35 = 0;
    v36 = 0;
    v38 = *(v17 + 16);
    v37 = *(v17 + 24);
    v39 = v38 + 1;
    if (v38 >= v37 >> 1)
    {
      goto LABEL_47;
    }

    goto LABEL_35;
  }

  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void *sub_20C5F7834(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_20C64E2C0();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_20C5F89B0(v3, 0);
  sub_20C5F8CFC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t MarketingOfferTemplate.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE958, &qword_20C6525A0);
  v18 = *(v3 - 8);
  v19 = v3;
  MEMORY[0x28223BE20](v3);
  v17 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE960, &qword_20C6525A8);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE968, &qword_20C6525B0);
  v8 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v10 = &v16 - v9;
  v20 = *v1;
  v11 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5F8A38();
  sub_20C64E500();
  if (v11)
  {
    v25 = 1;
    sub_20C5F8A8C();
    v12 = v17;
    v13 = v21;
    sub_20C64E3B0();
    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE980, &qword_20C6525B8);
    sub_20C5F8BDC(&qword_27C7CE988, sub_20C5F8AE0, MEMORY[0x277D83948]);
    v14 = v19;
    sub_20C64E410();
    (*(v18 + 8))(v12, v14);
  }

  else
  {
    v24 = 0;
    sub_20C5F8B34();
    v13 = v21;
    sub_20C64E3B0();
    v23 = v20;
    sub_20C5F8B88();
    sub_20C64E410();
    (*(v16 + 8))(v7, v5);
  }

  return (*(v8 + 8))(v10, v13);
}

uint64_t MarketingOfferTemplate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9A8, &qword_20C6525C0);
  v4 = *(v3 - 8);
  v33 = v3;
  v34 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9B0, &qword_20C6525C8);
  v32 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE9B8, &unk_20C6525D0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v30[-v12];
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_20C5F8A38();
  v15 = v36;
  sub_20C64E4F0();
  if (!v15)
  {
    v16 = v35;
    v36 = v11;
    v17 = sub_20C64E3A0();
    v18 = (2 * *(v17 + 16)) | 1;
    v38 = v17;
    v39 = v17 + 32;
    v40 = 0;
    v41 = v18;
    v19 = sub_20C5DDAF0();
    if (v19 == 2 || v40 != v41 >> 1)
    {
      v22 = sub_20C64E290();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v24 = &type metadata for MarketingOfferTemplate;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = v19;
      if (v19)
      {
        LOBYTE(v42) = 1;
        sub_20C5F8A8C();
        v20 = v6;
        sub_20C64E320();
        v21 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE980, &qword_20C6525B8);
        sub_20C5F8BDC(&qword_27C7CE9C0, sub_20C5F8C54, MEMORY[0x277D83978]);
        v28 = v33;
        sub_20C64E390();
        (*(v34 + 8))(v20, v28);
        (*(v21 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v29 = v42;
      }

      else
      {
        LOBYTE(v42) = 0;
        sub_20C5F8B34();
        v26 = v9;
        sub_20C64E320();
        v27 = v36;
        sub_20C5F8CA8();
        sub_20C64E390();
        (*(v32 + 8))(v26, v7);
        (*(v27 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v29 = v42;
      }

      *v16 = v29;
      *(v16 + 8) = v31 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t MarketingOfferTemplate.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x20F301800](1);

    return sub_20C5E8328(a1, v3);
  }

  else
  {
    MEMORY[0x20F301800](0);
    return MEMORY[0x20F301800](v3);
  }
}

uint64_t MarketingOfferTemplate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v4, v1);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v1);
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C5F82E4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_20C64E4A0();
  if (v2)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v4, v1);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v1);
  }

  return sub_20C64E4E0();
}

uint64_t sub_20C5F835C(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 8))
  {
    MEMORY[0x20F301800](1);

    return sub_20C5E8328(a1, v3);
  }

  else
  {
    MEMORY[0x20F301800](0);
    return MEMORY[0x20F301800](v3);
  }
}

uint64_t sub_20C5F83D8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_20C64E4A0();
  if (v3)
  {
    MEMORY[0x20F301800](1);
    sub_20C5E8328(v5, v2);
  }

  else
  {
    MEMORY[0x20F301800](0);
    MEMORY[0x20F301800](v2);
  }

  return sub_20C64E4E0();
}

char *sub_20C5F8450(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE950, &unk_20C652590);
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
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_20C5F8560(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA28, &qword_20C652A90);
  v10 = *(type metadata accessor for MarketingActionItem(0) - 8);
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
  v15 = *(type metadata accessor for MarketingActionItem(0) - 8);
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

void *sub_20C5F87C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_20C5F89B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA80, &unk_20C652AE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_20C5F8A38()
{
  result = qword_27C7CE970;
  if (!qword_27C7CE970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE970);
  }

  return result;
}

unint64_t sub_20C5F8A8C()
{
  result = qword_27C7CE978;
  if (!qword_27C7CE978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE978);
  }

  return result;
}

unint64_t sub_20C5F8AE0()
{
  result = qword_27C7CE990;
  if (!qword_27C7CE990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE990);
  }

  return result;
}

unint64_t sub_20C5F8B34()
{
  result = qword_27C7CE998;
  if (!qword_27C7CE998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE998);
  }

  return result;
}

unint64_t sub_20C5F8B88()
{
  result = qword_27C7CE9A0;
  if (!qword_27C7CE9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9A0);
  }

  return result;
}

uint64_t sub_20C5F8BDC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE980, &qword_20C6525B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_20C5F8C54()
{
  result = qword_27C7CE9C8;
  if (!qword_27C7CE9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9C8);
  }

  return result;
}

unint64_t sub_20C5F8CA8()
{
  result = qword_27C7CE9D0;
  if (!qword_27C7CE9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9D0);
  }

  return result;
}

uint64_t sub_20C5F8CFC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_20C64E2C0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_20C64E2C0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_20C5F9340();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA70, &qword_20C652AD8);
            v9 = sub_20C6188E0(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_20C5F94D4(0, &qword_281105768, 0x277CEE530);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL _s16FitnessMarketing0B13OfferTemplateO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3)
  {
    v6 = *a1;
    if (*(a2 + 8))
    {
      v7 = sub_20C5F6E10(v6, *a2);
      sub_20C5F9328(v4, 1);
      sub_20C5F9328(v2, 1);
      sub_20C5F9334(v2, 1);
      sub_20C5F9334(v4, 1);
      return v7 & 1;
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    sub_20C5F9334(*a1, 0);
    sub_20C5F9334(v4, 0);
    return v4 == v2;
  }

  sub_20C5F9328(v4, v5);
  sub_20C5F9334(v2, v3);
  sub_20C5F9334(v4, v5);
  return 0;
}

unint64_t sub_20C5F8F6C()
{
  result = qword_27C7CE9D8;
  if (!qword_27C7CE9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9D8);
  }

  return result;
}

unint64_t sub_20C5F9010()
{
  result = qword_27C7CE9E0;
  if (!qword_27C7CE9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9E0);
  }

  return result;
}

unint64_t sub_20C5F9068()
{
  result = qword_27C7CE9E8;
  if (!qword_27C7CE9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9E8);
  }

  return result;
}

unint64_t sub_20C5F90C0()
{
  result = qword_27C7CE9F0;
  if (!qword_27C7CE9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9F0);
  }

  return result;
}

unint64_t sub_20C5F9118()
{
  result = qword_27C7CE9F8;
  if (!qword_27C7CE9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CE9F8);
  }

  return result;
}

unint64_t sub_20C5F9170()
{
  result = qword_27C7CEA00;
  if (!qword_27C7CEA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA00);
  }

  return result;
}

unint64_t sub_20C5F91C8()
{
  result = qword_27C7CEA08;
  if (!qword_27C7CEA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA08);
  }

  return result;
}

unint64_t sub_20C5F9220()
{
  result = qword_27C7CEA10;
  if (!qword_27C7CEA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA10);
  }

  return result;
}

unint64_t sub_20C5F9278()
{
  result = qword_27C7CEA18;
  if (!qword_27C7CEA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA18);
  }

  return result;
}

unint64_t sub_20C5F92D0()
{
  result = qword_27C7CEA20;
  if (!qword_27C7CEA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA20);
  }

  return result;
}

uint64_t sub_20C5F9328(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t sub_20C5F9334(uint64_t result, char a2)
{
  if (a2)
  {
  }

  return v2;
}

unint64_t sub_20C5F9340()
{
  result = qword_27C7CEA78;
  if (!qword_27C7CEA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA70, &qword_20C652AD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEA78);
  }

  return result;
}

uint64_t sub_20C5F93A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20C5F940C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20C5F9474(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5F94D4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t MarketingOfferTemplateParserType.makeParser(template:)(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  type metadata accessor for MarketingOfferTemplateDefaultParser();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_20C5F9328(v1, v2);
  return v3;
}

uint64_t TVAudioLanguageEngagementSheetView.init(store:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  *a3 = sub_20C5E0270;
  *(a3 + 8) = result;
  *(a3 + 16) = 0;
  return result;
}

uint64_t TVAudioLanguageEngagementSheetView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA90, &qword_20C652B00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA98, &qword_20C652B08);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAA0, &qword_20C652B10);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = *v1;
  v14 = *(v1 + 8);
  v15 = *(v1 + 16);
  sub_20C5F984C(*v1, v14, v15, v4);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v4, v8, &qword_27C7CEA90, &qword_20C652B00);
  v16 = &v8[*(v6 + 44)];
  v17 = v30;
  *(v16 + 4) = v29;
  *(v16 + 5) = v17;
  *(v16 + 6) = v31;
  v18 = v26;
  *v16 = v25;
  *(v16 + 1) = v18;
  v19 = v28;
  *(v16 + 2) = v27;
  *(v16 + 3) = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v13;
  *(v20 + 24) = v14;
  *(v20 + 32) = v15;
  sub_20C5E5658(v8, v12, &qword_27C7CEA98, &qword_20C652B08);
  v21 = &v12[*(v10 + 44)];
  *v21 = sub_20C5FC5D8;
  v21[1] = v20;
  v21[2] = 0;
  v21[3] = 0;
  sub_20C5E5658(v12, v24, &qword_27C7CEAA0, &qword_20C652B10);
  return sub_20C5E3070(v13, v14);
}

uint64_t sub_20C5F984C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v54 = a4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB10, &unk_20C652C40);
  MEMORY[0x28223BE20](v52);
  v51 = &v42 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE210, &qword_20C64FF40);
  v49 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v48 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE0F8, &qword_20C64FC10);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for AudioLanguageEngagementSheet(0);
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v44 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v42 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  v45 = a3;
  v46 = a1;
  v47 = a2;
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_10;
  }

  if (!EnumCaseMultiPayload)
  {
    v18 = v50;
    sub_20C5E5138(v11, v50);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v11, &qword_27C7CE0F8, &qword_20C64FC10);
LABEL_10:
    v39 = v48;
    sub_20C64D240();
    v40 = v49;
    v41 = v53;
    (*(v49 + 16))(v51, v39, v53);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAD8, &qword_20C652C18);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
    sub_20C5FC880();
    sub_20C64D550();
    return (*(v40 + 8))(v39, v41);
  }

  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE248, &qword_20C64FF90) + 48);
  v18 = v50;
  sub_20C5E5138(v11, v50);
  v19 = sub_20C64CF30();
  (*(*(v19 - 8) + 8))(&v11[v17], v19);
LABEL_6:
  v20 = v51;
  v21 = v44;
  sub_20C5ED068(v18, v44);
  v22 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v23 = swift_allocObject();
  sub_20C5E5138(v21, v23 + v22);
  v24 = v23 + ((v13 + v22 + 7) & 0xFFFFFFFFFFFFFFF8);
  v25 = v46;
  v26 = v47;
  *v24 = v46;
  *(v24 + 8) = v26;
  *(v24 + 16) = v45 & 1;
  sub_20C5E3070(v25, v26);
  v27 = sub_20C64DDE0();
  v29 = v28;
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v30 = qword_281109B60;
  v31 = sub_20C64DCE0();
  sub_20C64DBF0();
  v32 = sub_20C64DC20();

  v33 = sub_20C64D7A0();
  v34 = sub_20C64D2F0();
  v35 = sub_20C64D7A0();
  *&v56 = v31;
  *(&v56 + 1) = v32;
  LOBYTE(v57) = v33;
  v58 = 0;
  LOWORD(v59) = 257;
  *(&v59 + 1) = v34;
  LOBYTE(v60) = v35;
  *(&v60 + 1) = v27;
  v61 = v29;
  v74 = v29;
  v72 = v59;
  v73 = v60;
  v70 = v56;
  v71 = v57;
  v62[0] = v31;
  v62[1] = v32;
  v63 = v33;
  v64 = 0;
  v65 = 257;
  v66 = v34;
  v67 = v35;
  v68 = v27;
  v69 = v29;
  sub_20C5E574C(&v56, &v55, &qword_27C7CEB08, &unk_20C652C30);
  sub_20C5DBFC4(v62, &qword_27C7CEB08, &unk_20C652C30);
  *v20 = sub_20C5FC9E8;
  *(v20 + 1) = v23;
  v36 = v73;
  *(v20 + 3) = v72;
  *(v20 + 4) = v36;
  *(v20 + 10) = v74;
  v37 = v71;
  *(v20 + 1) = v70;
  *(v20 + 2) = v37;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEAD8, &qword_20C652C18);
  sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
  sub_20C5FC880();
  sub_20C64D550();
  return sub_20C5FCA9C(v50, type metadata accessor for AudioLanguageEngagementSheet);
}

__n128 sub_20C5F9EE0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(void, void, void)@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB18, &qword_20C652C78);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - v11;
  *v12 = sub_20C64D4D0();
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB20, &qword_20C652C80);
  sub_20C5FA060(a1, a2, a3, a4 & 1, &v12[*(v13 + 44)]);
  sub_20C64DE00();
  sub_20C64D330();
  sub_20C5E5658(v12, a5, &qword_27C7CEB18, &qword_20C652C78);
  v14 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB28, &qword_20C652C88) + 36);
  v15 = v18[5];
  *(v14 + 64) = v18[4];
  *(v14 + 80) = v15;
  *(v14 + 96) = v18[6];
  v16 = v18[1];
  *v14 = v18[0];
  *(v14 + 16) = v16;
  result = v18[3];
  *(v14 + 32) = v18[2];
  *(v14 + 48) = result;
  return result;
}

uint64_t sub_20C5FA060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, void)@<X2>, int a4@<W3>, _OWORD *a5@<X8>)
{
  v248 = a4;
  v249 = a3;
  v247 = a1;
  v223 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB30, &qword_20C652C90);
  v224 = *(v6 - 8);
  v225 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v245 = &v196 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v244 = &v196 - v9;
  v10 = sub_20C64D5E0();
  v236 = *(v10 - 8);
  v237 = v10;
  MEMORY[0x28223BE20](v10);
  v235 = &v196 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C64DBE0();
  v203 = *(v12 - 8);
  v204 = v12;
  MEMORY[0x28223BE20](v12);
  v202 = &v196 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_20C64DC80();
  v234 = *(v243 - 8);
  v14 = MEMORY[0x28223BE20](v243);
  v201 = &v196 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v233 = &v196 - v16;
  v241 = sub_20C64D490();
  v230 = *(v241 - 8);
  MEMORY[0x28223BE20](v241);
  v228 = &v196 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB38, &qword_20C652C98);
  v227 = *(v229 - 8);
  MEMORY[0x28223BE20](v229);
  v226 = &v196 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB40, &qword_20C652CA0);
  v231 = *(v19 - 8);
  v232 = v19;
  MEMORY[0x28223BE20](v19);
  v240 = &v196 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB48, &qword_20C652CA8);
  v220 = *(v21 - 8);
  v221 = v21;
  MEMORY[0x28223BE20](v21);
  v200 = &v196 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB50, &qword_20C652CB0);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v222 = &v196 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v250 = &v196 - v26;
  v27 = sub_20C64D880();
  v215 = *(v27 - 8);
  v216 = v27;
  MEMORY[0x28223BE20](v27);
  v213 = &v196 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_20C64CFB0();
  v211 = *(v29 - 8);
  v212 = v29;
  MEMORY[0x28223BE20](v29);
  v210 = &v196 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_20C64CFE0();
  v208 = *(v31 - 8);
  v209 = v31;
  MEMORY[0x28223BE20](v31);
  v207 = &v196 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE2E0, &qword_20C650FD0);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v218 = &v196 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v206 = &v196 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v196 - v38;
  v40 = sub_20C64CE50();
  v41 = *(v40 - 8);
  v42 = MEMORY[0x28223BE20](v40);
  v219 = &v196 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v214 = &v196 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v48 = &v196 - v47;
  MEMORY[0x28223BE20](v46);
  v50 = &v196 - v49;
  v205 = type metadata accessor for AudioLanguageEngagementSheet(0);
  sub_20C5E574C(v247 + *(v205 + 20), v39, &qword_27C7CE2E0, &qword_20C650FD0);
  v238 = *(v41 + 48);
  v51 = v238(v39, 1, v40);
  v242 = a2;
  v239 = v41;
  v246 = v40;
  v217 = v41 + 48;
  v199 = v48;
  if (v51 == 1)
  {
    v52 = v41;
    sub_20C5DBFC4(v39, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5D57D8(&v299);
  }

  else
  {
    v53 = *(v41 + 32);
    v198 = v50;
    v53(v50, v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
    sub_20C64D220();
    swift_getKeyPath();
    v54 = v207;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v55 = v210;
    sub_20C64DF30();

    sub_20C644E78(v55, v48);
    (*(v211 + 8))(v55, v212);
    (*(v208 + 8))(v54, v209);
    v56 = sub_20C64D960();
    v58 = v57;
    v60 = v59;
    sub_20C64D820();
    sub_20C64D810();

    v62 = v215;
    v61 = v216;
    v63 = v213;
    (*(v215 + 104))(v213, *MEMORY[0x277CE0A10], v216);
    sub_20C64D8A0();

    (*(v62 + 8))(v63, v61);
    v64 = sub_20C64D950();
    v66 = v65;
    LOBYTE(v63) = v67;

    sub_20C5E56C0(v56, v58, v60 & 1);

    *&v299 = sub_20C64DC10();
    v197 = sub_20C64D940();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v74 = v63 & 1;
    v75 = v239;
    sub_20C5E56C0(v64, v66, v74);

    KeyPath = swift_getKeyPath();
    sub_20C64DE00();
    sub_20C64D330();
    *(&v251[3] + 7) = v298[5];
    *(&v251[4] + 7) = v298[6];
    *(&v251[5] + 7) = v298[7];
    *(&v251[6] + 7) = v298[8];
    *(v251 + 7) = v298[2];
    *(&v251[1] + 7) = v298[3];
    LOBYTE(v66) = v71 & 1;
    LOBYTE(v280[0]) = v71 & 1;
    *(&v251[2] + 7) = v298[4];
    v77 = sub_20C64D7C0();
    sub_20C64D1A0();
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v85 = v84;
    v52 = v75;
    (*(v75 + 8))(v198, v246);
    *(&v296[4] + 9) = v251[4];
    *(&v296[5] + 9) = v251[5];
    *(&v296[6] + 9) = v251[6];
    *(v296 + 9) = v251[0];
    *(&v296[1] + 9) = v251[1];
    *(&v296[2] + 9) = v251[2];
    LOBYTE(v282) = 0;
    *&v294 = v197;
    *(&v294 + 1) = v69;
    LOBYTE(v295) = v66;
    *(&v295 + 1) = v73;
    *&v296[0] = KeyPath;
    BYTE8(v296[0]) = 1;
    *(&v296[7] + 1) = *(&v251[6] + 15);
    *(&v296[3] + 9) = v251[3];
    LOBYTE(v297) = v77;
    v40 = v246;
    *(&v297 + 1) = v79;
    *&v298[0] = v81;
    *(&v298[0] + 1) = v83;
    *&v298[1] = v85;
    BYTE8(v298[1]) = 0;
    nullsub_1();
    v308 = v296[7];
    v309 = v297;
    v310[0] = v298[0];
    *(v310 + 9) = *(v298 + 9);
    v305 = v296[4];
    v306 = v296[5];
    v307 = v296[6];
    v301 = v296[0];
    v302 = v296[1];
    v303 = v296[2];
    v304 = v296[3];
    v299 = v294;
    v300 = v295;
  }

  v86 = v206;
  sub_20C5E574C(v247 + *(v205 + 24), v206, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v238(v86, 1, v40) == 1)
  {
    sub_20C5DBFC4(v86, &qword_27C7CE2E0, &qword_20C650FD0);
    sub_20C5D57D8(&v294);
  }

  else
  {
    (*(v52 + 32))(v214, v86, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
    sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
    sub_20C64D220();
    swift_getKeyPath();
    v87 = v207;
    sub_20C64DF30();

    sub_20C64D220();
    swift_getKeyPath();
    v88 = v210;
    sub_20C64DF30();

    sub_20C644E78(v88, v199);
    (*(v211 + 8))(v88, v212);
    (*(v208 + 8))(v87, v209);
    v89 = sub_20C64D960();
    v91 = v90;
    v93 = v92;
    sub_20C64D800();
    v95 = v215;
    v94 = v216;
    v96 = v213;
    (*(v215 + 104))(v213, *MEMORY[0x277CE0A10], v216);
    sub_20C64D8A0();

    (*(v95 + 8))(v96, v94);
    v97 = sub_20C64D950();
    v99 = v98;
    LOBYTE(v95) = v100;

    sub_20C5E56C0(v89, v91, v93 & 1);

    LODWORD(v294) = sub_20C64D5C0();
    v101 = sub_20C64D940();
    v103 = v102;
    v105 = v104;
    v107 = v106;
    sub_20C5E56C0(v97, v99, v95 & 1);

    v108 = swift_getKeyPath();
    v109 = sub_20C64D5C0();
    sub_20C64DE00();
    sub_20C64D330();
    LOBYTE(v99) = v105 & 1;
    LOBYTE(v278[0]) = v105 & 1;
    v110 = sub_20C64D7C0();
    sub_20C64D1A0();
    v112 = v111;
    v114 = v113;
    v116 = v115;
    v118 = v117;
    (*(v239 + 8))(v214, v246);
    LOBYTE(v280[0]) = 0;
    *&v282 = v101;
    *(&v282 + 1) = v103;
    LOBYTE(v283) = v99;
    *(&v283 + 1) = v107;
    *&v284 = v108;
    BYTE8(v284) = 1;
    HIDWORD(v284) = v109;
    v289 = *(&v251[11] + 8);
    v290 = *(&v251[12] + 8);
    v291 = *(&v251[13] + 8);
    v285 = *(&v251[7] + 8);
    v286 = *(&v251[8] + 8);
    v287 = *(&v251[9] + 8);
    v288 = *(&v251[10] + 8);
    LOBYTE(v292) = v110;
    *(&v292 + 1) = v112;
    *&v293[0] = v114;
    *(&v293[0] + 1) = v116;
    *&v293[1] = v118;
    BYTE8(v293[1]) = 0;
    nullsub_1();
    v297 = v292;
    v298[0] = v293[0];
    *(v298 + 9) = *(v293 + 9);
    v296[4] = v288;
    v296[5] = v289;
    v296[6] = v290;
    v296[7] = v291;
    v296[0] = v284;
    v296[1] = v285;
    v296[2] = v286;
    v296[3] = v287;
    v40 = v246;
    v294 = v282;
    v295 = v283;
  }

  v119 = v250;
  v120 = v241;
  v121 = v218;
  sub_20C5E574C(v247, v218, &qword_27C7CE2E0, &qword_20C650FD0);
  if (v238(v121, 1, v40) == 1)
  {
    sub_20C5DBFC4(v121, &qword_27C7CE2E0, &qword_20C650FD0);
    (*(v220 + 56))(v119, 1, 1, v221);
    v122 = v249;
    v123 = v242;
    v124 = v248;
    v125 = v226;
  }

  else
  {
    (*(v239 + 32))();
    v126 = swift_allocObject();
    v127 = v242;
    v128 = v249;
    *(v126 + 16) = v242;
    *(v126 + 24) = v128;
    *(v126 + 32) = v248 & 1;
    v195 = MEMORY[0x28223BE20](v127);
    sub_20C5E3070(v195, v129);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE308, &qword_20C650040);
    sub_20C5E541C();
    v130 = v226;
    sub_20C64DD40();
    v131 = v228;
    sub_20C64D480();
    v247 = sub_20C5E5558(&qword_27C7CEB58, &qword_27C7CEB38, &qword_20C652C98, MEMORY[0x277CDF028]);
    v132 = sub_20C5FCB2C(&qword_281105998, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
    v133 = v229;
    sub_20C64DA40();
    (*(v230 + 8))(v131, v120);
    (*(v227 + 8))(v130, v133);
    v134 = v201;
    sub_20C64DC60();
    (*(v203 + 104))(v202, *MEMORY[0x277CE0EE0], v204);
    sub_20C64DC30();
    v135 = v233;
    sub_20C64DC50();

    v136 = v120;
    v238 = *(v234 + 8);
    (v238)(v134, v243);
    v137 = v235;
    sub_20C64D5D0();
    *&v282 = v133;
    *(&v282 + 1) = v136;
    *&v283 = v247;
    *(&v283 + 1) = v132;
    v122 = v249;
    swift_getOpaqueTypeConformance2();
    sub_20C5FCB2C(&qword_27C7CE320, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
    v138 = v200;
    v139 = v232;
    v140 = v237;
    v141 = v240;
    sub_20C64DA60();
    v142 = v140;
    v123 = v242;
    (*(v236 + 8))(v137, v142);
    v143 = v135;
    v124 = v248;
    (v238)(v143, v243);
    (*(v231 + 8))(v141, v139);
    LOBYTE(v141) = sub_20C64D7C0();
    sub_20C64D1A0();
    v144 = v221;
    v145 = &v138[*(v221 + 36)];
    *v145 = v141;
    *(v145 + 1) = v146;
    *(v145 + 2) = v147;
    *(v145 + 3) = v148;
    *(v145 + 4) = v149;
    v145[40] = 0;
    v150 = v138;
    v125 = v226;
    v151 = v250;
    sub_20C5E5658(v150, v250, &qword_27C7CEB48, &qword_20C652CA8);
    (*(v220 + 56))(v151, 0, 1, v144);
    (*(v239 + 8))(v219, v246);
  }

  v152 = swift_allocObject();
  *(v152 + 16) = v123;
  *(v152 + 24) = v122;
  *(v152 + 32) = v124 & 1;
  MEMORY[0x28223BE20](v152);
  sub_20C5E3070(v123, v122);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE308, &qword_20C650040);
  sub_20C5E541C();
  sub_20C64DD40();
  v153 = v228;
  sub_20C64D480();
  v154 = sub_20C5E5558(&qword_27C7CEB58, &qword_27C7CEB38, &qword_20C652C98, MEMORY[0x277CDF028]);
  v155 = sub_20C5FCB2C(&qword_281105998, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  v156 = v240;
  v157 = v241;
  v158 = v229;
  sub_20C64DA40();
  (*(v230 + 8))(v153, v157);
  (*(v227 + 8))(v125, v158);
  v159 = v233;
  sub_20C64DC60();
  v160 = v235;
  sub_20C64D5D0();
  *&v282 = v158;
  *(&v282 + 1) = v157;
  *&v283 = v154;
  *(&v283 + 1) = v155;
  swift_getOpaqueTypeConformance2();
  sub_20C5FCB2C(&qword_27C7CE320, MEMORY[0x277CE0638], MEMORY[0x277CE0628]);
  v161 = v244;
  v162 = v232;
  v163 = v237;
  sub_20C64DA60();
  (*(v236 + 8))(v160, v163);
  (*(v234 + 8))(v159, v243);
  (*(v231 + 8))(v156, v162);
  v273 = v308;
  v274 = v309;
  v275[0] = v310[0];
  *(v275 + 9) = *(v310 + 9);
  v270 = v305;
  v271 = v306;
  v272 = v307;
  v266 = v301;
  v267 = v302;
  v268 = v303;
  v269 = v304;
  v264 = v299;
  v265 = v300;
  v261 = v296[7];
  v262 = v297;
  v263[0] = v298[0];
  *(v263 + 9) = *(v298 + 9);
  v258 = v296[4];
  v259 = v296[5];
  v260 = v296[6];
  v254 = v296[0];
  v255 = v296[1];
  v256 = v296[2];
  v257 = v296[3];
  v252 = v294;
  v253 = v295;
  v164 = v222;
  sub_20C5D57FC(v250, v222);
  v165 = v224;
  v166 = v225;
  v249 = *(v224 + 16);
  v249(v245, v161, v225);
  v167 = v273;
  v168 = v272;
  v276[9] = v273;
  v276[10] = v274;
  v277[0] = v275[0];
  *(v277 + 9) = *(v275 + 9);
  v169 = v269;
  v276[6] = v270;
  v170 = v270;
  v276[7] = v271;
  v171 = v271;
  v276[8] = v272;
  v172 = v265;
  v276[2] = v266;
  v173 = v266;
  v276[3] = v267;
  v174 = v267;
  v276[4] = v268;
  v175 = v268;
  v276[5] = v269;
  v276[0] = v264;
  v176 = v264;
  v276[1] = v265;
  v177 = v275[0];
  v178 = v223;
  v223[10] = v274;
  v178[11] = v177;
  *(v178 + 185) = *(v275 + 9);
  v178[6] = v170;
  v178[7] = v171;
  v178[8] = v168;
  v178[9] = v167;
  v178[2] = v173;
  v178[3] = v174;
  v178[4] = v175;
  v178[5] = v169;
  *v178 = v176;
  v178[1] = v172;
  v180 = v260;
  v278[9] = v261;
  v179 = v261;
  v278[10] = v262;
  v279[0] = v263[0];
  *(v279 + 9) = *(v263 + 9);
  v181 = v257;
  v278[6] = v258;
  v182 = v258;
  v278[7] = v259;
  v183 = v259;
  v278[8] = v260;
  v184 = v253;
  v278[2] = v254;
  v185 = v254;
  v278[3] = v255;
  v186 = v255;
  v278[4] = v256;
  v187 = v256;
  v278[5] = v257;
  v278[0] = v252;
  v188 = v252;
  v278[1] = v253;
  v189 = v263[0];
  v178[23] = v262;
  v178[24] = v189;
  *(v178 + 393) = *(v263 + 9);
  v178[19] = v182;
  v178[20] = v183;
  v178[21] = v180;
  v178[22] = v179;
  v178[15] = v185;
  v178[16] = v186;
  v178[17] = v187;
  v178[18] = v181;
  v178[13] = v188;
  v178[14] = v184;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB60, &qword_20C652CB8);
  sub_20C5D57FC(v164, v178 + *(v190 + 64));
  v191 = v178 + *(v190 + 80);
  v192 = v245;
  v249(v191, v245, v166);
  sub_20C5E574C(v276, &v282, &qword_27C7CEB68, &qword_20C652CC0);
  sub_20C5E574C(v278, &v282, &qword_27C7CEB70, &qword_20C652CC8);
  v193 = *(v165 + 8);
  v193(v244, v166);
  sub_20C5D586C(v250);
  v193(v192, v166);
  sub_20C5D586C(v164);
  v280[9] = v261;
  v280[10] = v262;
  v281[0] = v263[0];
  *(v281 + 9) = *(v263 + 9);
  v280[6] = v258;
  v280[7] = v259;
  v280[8] = v260;
  v280[2] = v254;
  v280[3] = v255;
  v280[4] = v256;
  v280[5] = v257;
  v280[0] = v252;
  v280[1] = v253;
  sub_20C5DBFC4(v280, &qword_27C7CEB70, &qword_20C652CC8);
  v292 = v274;
  v293[0] = v275[0];
  *(v293 + 9) = *(v275 + 9);
  v288 = v270;
  v289 = v271;
  v290 = v272;
  v291 = v273;
  v284 = v266;
  v285 = v267;
  v286 = v268;
  v287 = v269;
  v282 = v264;
  v283 = v265;
  return sub_20C5DBFC4(&v282, &qword_27C7CEB68, &qword_20C652CC0);
}

__n128 sub_20C5FBC3C@<Q0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v33 = a3;
  v38 = a1;
  v6 = sub_20C64D880();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v39 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20C64CFB0();
  v36 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_20C64CFE0();
  v34 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C64CE50();
  MEMORY[0x28223BE20](v12 - 8);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C644E78(v9, v32);
  (*(v36 + 8))(v9, v37);
  (*(v34 + 8))(v11, v35);
  v14 = sub_20C64D960();
  v16 = v15;
  v18 = v17;
  sub_20C64D800();
  v20 = v39;
  v19 = v40;
  v21 = v41;
  (*(v40 + 104))(v39, *MEMORY[0x277CE0A10], v41);
  sub_20C64D8A0();

  (*(v19 + 8))(v20, v21);
  v22 = sub_20C64D950();
  v24 = v23;
  LOBYTE(v19) = v25;
  v27 = v26;

  sub_20C5E56C0(v14, v16, v18 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  *a5 = v22;
  *(a5 + 8) = v24;
  *(a5 + 16) = v19 & 1;
  *(a5 + 24) = v27;
  v28 = v47;
  *(a5 + 96) = v46;
  *(a5 + 112) = v28;
  *(a5 + 128) = v48;
  v29 = v43;
  *(a5 + 32) = v42;
  *(a5 + 48) = v29;
  result = v45;
  *(a5 + 64) = v44;
  *(a5 + 80) = result;
  return result;
}

uint64_t sub_20C5FC0F0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v4 = type metadata accessor for AudioLanguageEngagementSheetAction(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_storeEnumTagMultiPayload();
  sub_20C64DF40();

  return sub_20C5FCA9C(v6, type metadata accessor for AudioLanguageEngagementSheetAction);
}

__n128 sub_20C5FC22C@<Q0>(uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v27[1] = a3;
  v28 = a2;
  v29 = sub_20C64D880();
  v5 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_20C64E030();
  MEMORY[0x28223BE20](v9 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v10 = qword_281109B60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE228, &qword_20C64FF50);
  sub_20C5E5558(&qword_27C7CE230, &qword_27C7CE228, &qword_20C64FF50, MEMORY[0x277D04410]);
  sub_20C64D220();
  swift_getKeyPath();
  sub_20C64DF30();

  v11 = sub_20C64D8D0();
  v13 = v12;
  v15 = v14;
  sub_20C64D800();
  v16 = v29;
  (*(v5 + 104))(v7, *MEMORY[0x277CE0A10], v29);
  sub_20C64D8A0();

  (*(v5 + 8))(v7, v16);
  v17 = sub_20C64D950();
  v19 = v18;
  v21 = v20;
  v23 = v22;

  sub_20C5E56C0(v11, v13, v15 & 1);

  sub_20C64DE00();
  sub_20C64D330();
  *a4 = v17;
  *(a4 + 8) = v19;
  *(a4 + 16) = v21 & 1;
  *(a4 + 24) = v23;
  v24 = v35;
  *(a4 + 96) = v34;
  *(a4 + 112) = v24;
  *(a4 + 128) = v36;
  v25 = v31;
  *(a4 + 32) = v30;
  *(a4 + 48) = v25;
  result = v33;
  *(a4 + 64) = v32;
  *(a4 + 80) = result;
  return result;
}

unint64_t sub_20C5FC62C()
{
  result = qword_27C7CEAA8;
  if (!qword_27C7CEAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAA0, &qword_20C652B10);
    sub_20C5FC6B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAA8);
  }

  return result;
}

unint64_t sub_20C5FC6B8()
{
  result = qword_27C7CEAB0;
  if (!qword_27C7CEAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA98, &qword_20C652B08);
    sub_20C5FC744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAB0);
  }

  return result;
}

unint64_t sub_20C5FC744()
{
  result = qword_27C7CEAB8;
  if (!qword_27C7CEAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEA90, &qword_20C652B00);
    sub_20C5FC7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAB8);
  }

  return result;
}

unint64_t sub_20C5FC7C8()
{
  result = qword_27C7CEAC0;
  if (!qword_27C7CEAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAC8, &unk_20C652C08);
    sub_20C5E5558(&qword_27C7CE208, &qword_27C7CE210, &qword_20C64FF40, MEMORY[0x277CDD7F8]);
    sub_20C5FC880();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAC0);
  }

  return result;
}

unint64_t sub_20C5FC880()
{
  result = qword_27C7CEAD0;
  if (!qword_27C7CEAD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAD8, &qword_20C652C18);
    sub_20C5FC938();
    sub_20C5E5558(&qword_27C7CEB00, &qword_27C7CEB08, &unk_20C652C30, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAD0);
  }

  return result;
}

unint64_t sub_20C5FC938()
{
  result = qword_27C7CEAE0;
  if (!qword_27C7CEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEAE8, &qword_20C652C20);
    sub_20C5E5558(&qword_27C7CEAF0, &qword_27C7CEAF8, &qword_20C652C28, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEAE0);
  }

  return result;
}

double sub_20C5FC9E8@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AudioLanguageEngagementSheet(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);

  *&result = sub_20C5F9EE0(v1 + v4, v6, v7, v8, a1).n128_u64[0];
  return result;
}

uint64_t sub_20C5FCA9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C5FCB2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_20C5FCBA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_20C64D3F0();
  *a1 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_16FitnessMarketing0B5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_20C5FCC34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20C5FCC9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_20C5FCCF0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_20C5FCD30@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20C64CF10();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v53 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = type metadata accessor for MarketingAction(0);
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 type];
  if (v19)
  {
    v20 = v19;
    v52 = v5;
    v54 = a2;
    v21 = sub_20C64E050();
    v23 = v22;
    if (v21 == sub_20C64E050() && v23 == v24)
    {
    }

    else
    {
      v51 = v4;
      v26 = sub_20C64E430();

      if ((v26 & 1) == 0)
      {
        v27 = sub_20C64E050();
        v29 = v28;
        if (v27 == sub_20C64E050() && v29 == v30)
        {

          goto LABEL_15;
        }

        v33 = sub_20C64E430();

        if (v33)
        {
LABEL_15:
          v34 = [a1 url];
          if (v34)
          {
            v35 = v34;
            sub_20C64CEF0();

            v36 = v51;
            v37 = *(v52 + 32);
            v37(v15, v13, v51);
            v37(v18, v15, v36);
            goto LABEL_13;
          }

          goto LABEL_24;
        }

        v38 = sub_20C64E050();
        v40 = v39;
        if (v38 == sub_20C64E050() && v40 == v41)
        {

          goto LABEL_21;
        }

        v42 = sub_20C64E430();

        if (v42)
        {
LABEL_21:
          v43 = [a1 url];
          if (v43)
          {
            v44 = v53;
            v45 = v43;
            sub_20C64CEF0();

            v46 = v51;
            v47 = *(v52 + 32);
            v47(v10, v44, v51);
            v47(v18, v10, v46);
            goto LABEL_13;
          }

LABEL_24:
          v48 = a1;
          a1 = v20;
          goto LABEL_25;
        }

LABEL_23:
        v48 = v20;
LABEL_25:

        a2 = v54;
        goto LABEL_26;
      }
    }

    if ([a1 buyParams])
    {
      sub_20C5D42EC();
      sub_20C64D0D0();

LABEL_13:
      swift_storeEnumTagMultiPayload();
      v31 = v54;
      sub_20C5D95DC(v18, v54);
      return (*(v55 + 56))(v31, 0, 1, v16);
    }

    goto LABEL_23;
  }

LABEL_26:

  v49 = *(v55 + 56);

  return v49(a2, 1, 1, v16);
}

uint64_t sub_20C5FD250@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736D61726170 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5FD2D4(uint64_t a1)
{
  v2 = sub_20C5FEDD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD310(uint64_t a1)
{
  v2 = sub_20C5FEDD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD358(uint64_t a1)
{
  v2 = sub_20C5FED84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD394(uint64_t a1)
{
  v2 = sub_20C5FED84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD3D0()
{
  v1 = 0x4C72656972726163;
  if (*v0 != 1)
  {
    v1 = 1802398060;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7959906;
  }
}

uint64_t sub_20C5FD424@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_20C5FF3BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_20C5FD44C(uint64_t a1)
{
  v2 = sub_20C5FECDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD488(uint64_t a1)
{
  v2 = sub_20C5FECDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_20C5FD4C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_20C64E430();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_20C5FD544(uint64_t a1)
{
  v2 = sub_20C5FED30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_20C5FD580(uint64_t a1)
{
  v2 = sub_20C5FED30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MarketingAction.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB78, &qword_20C652DE0);
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v43 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB80, &qword_20C652DE8);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - v5;
  v6 = sub_20C64CF10();
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v38 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v39 = &v34 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB88, &unk_20C652DF0);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v35 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEB90, &qword_20C652E00);
  v49 = *(v19 - 8);
  v50 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v34 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_20C5FECDC();
  sub_20C64E500();
  sub_20C5DFB04(v48, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v24 = v46;
    v23 = v47;
    if (EnumCaseMultiPayload == 1)
    {
      v25 = v39;
      (*(v46 + 32))(v39, v18, v47);
      v52 = 1;
      sub_20C5FED84();
      v26 = v40;
      v27 = v50;
      sub_20C64E3B0();
      sub_20C5FEEC4(&qword_27C7CE7D0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v28 = v42;
      sub_20C64E410();
      v29 = v41;
    }

    else
    {
      v25 = v38;
      (*(v46 + 32))(v38, v18, v47);
      v53 = 2;
      sub_20C5FED30();
      v26 = v43;
      v27 = v50;
      sub_20C64E3B0();
      sub_20C5FEEC4(&qword_27C7CE7D0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v28 = v45;
      sub_20C64E410();
      v29 = v44;
    }

    (*(v29 + 8))(v26, v28);
    (*(v24 + 8))(v25, v23);
    return (*(v49 + 8))(v21, v27);
  }

  else
  {
    v30 = v35;
    (*(v35 + 32))(v15, v18, v13);
    v51 = 0;
    sub_20C5FEDD8();
    v31 = v50;
    sub_20C64E3B0();
    sub_20C5FEE2C(&qword_27C7CEBB8, MEMORY[0x277D0A8A0]);
    v32 = v37;
    sub_20C64E410();
    (*(v36 + 8))(v12, v32);
    (*(v30 + 8))(v15, v13);
    return (*(v49 + 8))(v21, v31);
  }
}

uint64_t MarketingAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBC0, &qword_20C652E08);
  v62 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v63 = &v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBC8, &qword_20C652E10);
  v5 = *(v4 - 8);
  v60 = v4;
  v61 = v5;
  MEMORY[0x28223BE20](v4);
  v65 = &v54 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBD0, &qword_20C652E18);
  v8 = *(v7 - 8);
  v57 = v7;
  v58 = v8;
  MEMORY[0x28223BE20](v7);
  v64 = &v54 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEBD8, &unk_20C652E20);
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v54 - v11;
  v13 = type metadata accessor for MarketingAction(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v54 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v54 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v54 - v23;
  v25 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_20C5FECDC();
  v26 = v69;
  sub_20C64E4F0();
  if (!v26)
  {
    v55 = v19;
    v56 = v16;
    v27 = v22;
    v28 = v64;
    v29 = v65;
    v69 = v24;
    v30 = v66;
    v31 = v68;
    v32 = sub_20C64E3A0();
    v33 = (2 * *(v32 + 16)) | 1;
    v71 = v32;
    v72 = v32 + 32;
    v73 = 0;
    v74 = v33;
    v34 = sub_20C5DDAF4();
    if (v34 == 3 || v73 != v74 >> 1)
    {
      v38 = sub_20C64E290();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE088, &qword_20C64F6A0);
      *v40 = v13;
      sub_20C64E330();
      sub_20C64E280();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v67 + 8))(v12, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        v35 = v13;
        if (v34 == 1)
        {
          v75 = 1;
          sub_20C5FED84();
          v36 = v29;
          sub_20C64E320();
          v37 = v69;
          v49 = v30;
          v64 = v35;
          sub_20C64CF10();
          sub_20C5FEEC4(&qword_27C7CE7E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
          v50 = v55;
          v51 = v60;
          sub_20C64E390();
          v52 = v67;
          (*(v61 + 8))(v36, v51);
          (*(v52 + 8))(v12, v68);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v50;
        }

        else
        {
          v75 = 2;
          sub_20C5FED30();
          v45 = v31;
          sub_20C64E320();
          v37 = v69;
          v49 = v30;
          sub_20C64CF10();
          sub_20C5FEEC4(&qword_27C7CE7E8, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
          v46 = v56;
          v47 = v59;
          v48 = v63;
          sub_20C64E390();
          v64 = v35;
          (*(v62 + 8))(v48, v47);
          (*(v67 + 8))(v12, v45);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v53 = v46;
        }
      }

      else
      {
        v75 = 0;
        sub_20C5FEDD8();
        v42 = v31;
        sub_20C64E320();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
        sub_20C5FEE2C(&qword_27C7CEBE0, MEMORY[0x277D0A8B0]);
        v65 = v27;
        v43 = v57;
        sub_20C64E390();
        (*(v58 + 8))(v28, v43);
        (*(v67 + 8))(v12, v42);
        swift_unknownObjectRelease();
        v44 = v65;
        swift_storeEnumTagMultiPayload();
        v49 = v30;
        v37 = v69;
        v53 = v44;
      }

      sub_20C5D95DC(v53, v37);
      sub_20C5D95DC(v37, v49);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v70);
}

uint64_t MarketingAction.hash(into:)(uint64_t a1)
{
  v2 = sub_20C64CF10();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for MarketingAction(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C5DFB04(v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v5, v12, v2);
      v14 = 1;
    }

    else
    {
      (*(v3 + 32))(v5, v12, v2);
      v14 = 2;
    }

    MEMORY[0x20F301800](v14);
    sub_20C5FEEC4(&qword_281106850, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_20C64E000();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    MEMORY[0x20F301800](0);
    sub_20C5FEE2C(&qword_281105B68, MEMORY[0x277D0A8A8]);
    sub_20C64E000();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t MarketingAction.hashValue.getter()
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5FE814()
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)(v1);
  return sub_20C64E4E0();
}

uint64_t sub_20C5FE858(uint64_t a1)
{
  sub_20C64E4A0();
  MarketingAction.hash(into:)(v2);
  return sub_20C64E4E0();
}

uint64_t _s16FitnessMarketing0B6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v40 = a1;
  v41 = a2;
  v39 = sub_20C64CF10();
  v2 = *(v39 - 8);
  v3 = MEMORY[0x28223BE20](v39);
  v37 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE1A0, " 7");
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for MarketingAction(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v36 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEA88, &unk_20C652AF0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v22 = &v36 - v21;
  v23 = *(v20 + 56);
  sub_20C5DFB04(v40, &v36 - v21);
  sub_20C5DFB04(v41, &v22[v23]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_20C5DFB04(v22, v16);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v25 = v39;
        (*(v2 + 32))(v6, &v22[v23], v39);
        v26 = sub_20C64CEE0();
        v27 = *(v2 + 8);
        v27(v6, v25);
        v27(v16, v25);
LABEL_15:
        sub_20C5DFB68(v22);
        return v26 & 1;
      }

      v32 = *(v2 + 8);
      v33 = v16;
    }

    else
    {
      sub_20C5DFB04(v22, v13);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = v37;
        v30 = v39;
        (*(v2 + 32))(v37, &v22[v23], v39);
        v26 = sub_20C64CEE0();
        v31 = *(v2 + 8);
        v31(v29, v30);
        v31(v13, v30);
        goto LABEL_15;
      }

      v32 = *(v2 + 8);
      v33 = v13;
    }

    v32(v33, v39);
  }

  else
  {
    v28 = v38;
    sub_20C5DFB04(v22, v18);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v28 + 32))(v9, &v22[v23], v7);
      sub_20C5D42EC();
      v26 = sub_20C64D0A0();
      v34 = *(v28 + 8);
      v34(v9, v7);
      v34(v18, v7);
      goto LABEL_15;
    }

    (*(v28 + 8))(v18, v7);
  }

  sub_20C5F940C(v22);
  v26 = 0;
  return v26 & 1;
}

unint64_t sub_20C5FECDC()
{
  result = qword_27C7CEB98;
  if (!qword_27C7CEB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEB98);
  }

  return result;
}

unint64_t sub_20C5FED30()
{
  result = qword_27C7CEBA0;
  if (!qword_27C7CEBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBA0);
  }

  return result;
}

unint64_t sub_20C5FED84()
{
  result = qword_27C7CEBA8;
  if (!qword_27C7CEBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBA8);
  }

  return result;
}

unint64_t sub_20C5FEDD8()
{
  result = qword_27C7CEBB0;
  if (!qword_27C7CEBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBB0);
  }

  return result;
}

uint64_t sub_20C5FEE2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CE1A0, " 7");
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C5FEEC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_20C5FEFA0()
{
  result = qword_27C7CEBF0;
  if (!qword_27C7CEBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBF0);
  }

  return result;
}

unint64_t sub_20C5FEFF8()
{
  result = qword_27C7CEBF8;
  if (!qword_27C7CEBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEBF8);
  }

  return result;
}

unint64_t sub_20C5FF050()
{
  result = qword_27C7CEC00;
  if (!qword_27C7CEC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC00);
  }

  return result;
}

unint64_t sub_20C5FF0A8()
{
  result = qword_27C7CEC08;
  if (!qword_27C7CEC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC08);
  }

  return result;
}

unint64_t sub_20C5FF100()
{
  result = qword_27C7CEC10;
  if (!qword_27C7CEC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC10);
  }

  return result;
}

unint64_t sub_20C5FF158()
{
  result = qword_27C7CEC18;
  if (!qword_27C7CEC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC18);
  }

  return result;
}

unint64_t sub_20C5FF1B0()
{
  result = qword_27C7CEC20;
  if (!qword_27C7CEC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC20);
  }

  return result;
}

unint64_t sub_20C5FF208()
{
  result = qword_27C7CEC28;
  if (!qword_27C7CEC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC28);
  }

  return result;
}

unint64_t sub_20C5FF260()
{
  result = qword_27C7CEC30;
  if (!qword_27C7CEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC30);
  }

  return result;
}

unint64_t sub_20C5FF2B8()
{
  result = qword_27C7CEC38;
  if (!qword_27C7CEC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC38);
  }

  return result;
}

unint64_t sub_20C5FF310()
{
  result = qword_27C7CEC40;
  if (!qword_27C7CEC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC40);
  }

  return result;
}

unint64_t sub_20C5FF368()
{
  result = qword_27C7CEC48;
  if (!qword_27C7CEC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7CEC48);
  }

  return result;
}

uint64_t sub_20C5FF3BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7959906 && a2 == 0xE300000000000000;
  if (v3 || (sub_20C64E430() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4C72656972726163 && a2 == 0xEB000000006B6E69 || (sub_20C64E430() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1802398060 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_20C64E430();

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

uint64_t sub_20C5FF514()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECB8, qword_20C653458);
  sub_20C5E5558(&qword_2811057D0, &qword_27C7CECB8, qword_20C653458, MEMORY[0x277D04410]);

  return sub_20C64D220();
}

uint64_t sub_20C5FF5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  return sub_20C64CFF0();
}

uint64_t (*sub_20C5FF678(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  sub_20C64D010();
  sub_20C64D000();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = *(a1 + 24);
  *(v3 + 40) = *(a1 + 40);
  *(v3 + 48) = v5;
  return sub_20C605F30;
}

uint64_t sub_20C5FF738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  type metadata accessor for MarketingActionItem(255);
  type metadata accessor for MarketingOffer(255);
  swift_getFunctionTypeMetadata();
  return sub_20C64CFF0();
}

uint64_t (*sub_20C5FF820(uint64_t a1))(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v2 = *(a1 + 24);
  *&v5 = type metadata accessor for MarketingActionItem(255);
  *(&v5 + 1) = type metadata accessor for MarketingOffer(255);
  swift_getFunctionTypeMetadata();
  sub_20C64D010();
  sub_20C64D000();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  return sub_20C605E08;
}

double sub_20C5FF8FC()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return dbl_20C653620[v1];
}

uint64_t MarketingButton.init(store:style:handoffViewBuilder:marketingActionItemViewBuilder:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a3;
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *a9 = sub_20C5E0270;
  *(a9 + 8) = v19;
  *(a9 + 16) = 0;
  *(a9 + 17) = v18;
  v23[0] = a8;
  v23[1] = a10;
  v23[2] = a11;
  v23[3] = a12;
  type metadata accessor for MarketingButton(0, v23);

  sub_20C5FF5B4(a4, a5, a8, a10, a11, a12);
  sub_20C5FF738(a6, a7, a8, a10, a11, a12);
}

uint64_t sub_20C5FFA94(uint64_t a1)
{
  v3 = sub_20C64D310();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13[-v9];
  v11 = *(a1 + 32);
  v14 = *(a1 + 16);
  v15 = v11;
  v16 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520, MEMORY[0x277CDEFF0]);
  sub_20C64DD40();
  sub_20C64D300();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  sub_20C64DBB0();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_20C5FFCEC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v36 = *(a1 - 8);
  v51 = *(v36 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v43 = v4;
  v45 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v50 = &v33 - v5;
  *&v48 = a1 + 24;
  *&v47 = a1 + 40;
  v34 = *(a1 + 16);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v6 = sub_20C64D2E0();
  v7 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  v41 = v7;
  v61 = *(a1 + 32);
  v8 = v61;
  v62 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  v59 = WitnessTable;
  v60 = v10;
  v38 = v6;
  v39 = swift_getWitnessTable();
  v55 = v4;
  v56 = v6;
  v57 = v7;
  v58 = v39;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v42 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v35 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v40 = &v33 - v13;
  v14 = v36;
  v33 = *(v36 + 16);
  v15 = v49;
  v16 = v37;
  v33(v49, v37, a1);
  v17 = (*(v14 + 80) + 48) & ~*(v14 + 80);
  v18 = swift_allocObject();
  *&v19 = v34;
  *(&v19 + 1) = *v48;
  v48 = v19;
  *&v20 = v8;
  *(&v20 + 1) = *v47;
  v47 = v20;
  *(v18 + 16) = v19;
  *(v18 + 32) = v20;
  v36 = *(v14 + 32);
  (v36)(v18 + v17, v15, a1);
  v52 = v48;
  v53 = v47;
  v54 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520, MEMORY[0x277CDEFF0]);
  sub_20C64DD40();
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF50();

  v21 = v49;
  v33(v49, v16, a1);
  v22 = swift_allocObject();
  v23 = v47;
  *(v22 + 16) = v48;
  *(v22 + 32) = v23;
  (v36)(v22 + v17, v21, a1);
  swift_checkMetadataState();
  v24 = v35;
  v25 = v43;
  v26 = v50;
  sub_20C64DAC0();

  (*(v45 + 8))(v26, v25);
  v27 = v42;
  v28 = *(v42 + 16);
  v29 = v40;
  v30 = OpaqueTypeMetadata2;
  v28(v40, v24, OpaqueTypeMetadata2);
  v31 = *(v27 + 8);
  v31(v24, v30);
  v28(v46, v29, v30);
  return (v31)(v29, v30);
}

uint64_t sub_20C60037C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v39 = a3;
  v40 = a5;
  v38 = a4;
  v47 = a6;
  v52[0] = a2;
  v52[1] = a3;
  v52[2] = a4;
  v52[3] = a5;
  v8 = type metadata accessor for MarketingButton(0, v52);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - v11;
  v43 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_20C64D2E0();
  v46 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v37 = &v37 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v16 = sub_20C64D2E0();
  v45 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v41 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v44 = &v37 - v19;
  sub_20C5FF678(v8);
  v21 = v20;
  (*(v9 + 16))(v12, a1, v8);
  v22 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v23 = swift_allocObject();
  v25 = v38;
  v24 = v39;
  *(v23 + 2) = a2;
  *(v23 + 3) = v24;
  v26 = v40;
  *(v23 + 4) = v25;
  *(v23 + 5) = v26;
  (*(v9 + 32))(&v23[v22], v12, v8);
  sub_20C605B68(sub_20C605F28, v23, *(v21 + 48));

  sub_20C64DE00();
  v27 = v37;
  sub_20C64DB50();
  (*(v43 + 8))(v14, a2);
  v52[0] = sub_20C64DBF0();
  sub_20C64D7A0();
  v50 = v25;
  v51 = MEMORY[0x277CDFC60];
  v28 = v42;
  WitnessTable = swift_getWitnessTable();
  v30 = v41;
  sub_20C64DA10();

  (*(v46 + 8))(v27, v28);
  v31 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  v48 = WitnessTable;
  v49 = v31;
  swift_getWitnessTable();
  v33 = v44;
  v32 = v45;
  v34 = *(v45 + 16);
  v34(v44, v30, v16);
  v35 = *(v32 + 8);
  v35(v30, v16);
  v34(v47, v33, v16);
  return (v35)(v33, v16);
}

uint64_t sub_20C600888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for MarketingButtonAction(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  v16[2] = a4;
  v16[3] = a5;
  type metadata accessor for MarketingButton(0, v16);
  sub_20C5FF514();
  v14 = type metadata accessor for MarketingActionItem(0);
  (*(*(v14 - 8) + 56))(v13, a6, 6, v14);
  sub_20C64DF40();

  return sub_20C605568(v13, type metadata accessor for MarketingButtonAction);
}

uint64_t sub_20C6009AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE8, &qword_20C653570);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v32 - v5;
  v6 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v6 - 8);
  v34 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C64E030();
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v33 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v38 = *(v13 - 8);
  v39 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v32 - v14;
  (*(v11 + 16))(v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v16 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v17 = swift_allocObject();
  v19 = a1[2];
  v18 = a1[3];
  *(v17 + 2) = v19;
  *(v17 + 3) = v18;
  v20 = a1[4];
  v21 = a1[5];
  *(v17 + 4) = v20;
  *(v17 + 5) = v21;
  (*(v11 + 32))(&v17[v16], v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v35 = v19;
  v41 = v19;
  v42 = v18;
  v43 = v20;
  v44 = v21;
  v45 = v32[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520, MEMORY[0x277CDEFF0]);
  v36 = v15;
  sub_20C64DD40();
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v22 = qword_281109B60;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v23 = sub_20C64E080();
  v34 = v24;
  v49 = v23;
  v50 = v24;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF50();

  v32[3] = v46;
  v32[2] = v47;
  LODWORD(v33) = v48;
  sub_20C5FF514();
  swift_getKeyPath();
  v25 = v37;
  sub_20C64DF30();

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v27 = (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
  v32[1] = v32;
  v28 = MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC78, &qword_20C6533A8);
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  sub_20C602C18();
  sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
  v29 = v39;
  v30 = v36;
  sub_20C64DB40();

  sub_20C5DBFC4(v25, &qword_27C7CECE8, &qword_20C653570);

  return (*(v38 + 8))(v30, v29);
}

uint64_t sub_20C601074@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a8@<X8>, uint64_t a9)
{
  v14 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_20C64E030();
  MEMORY[0x28223BE20](v15 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v16 = qword_281109B60;
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  type metadata accessor for MarketingButton(0, &v22);
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v22 = sub_20C64E080();
  v23 = v17;
  sub_20C602C18();
  result = sub_20C64D970();
  *a8 = result;
  *(a8 + 8) = v19;
  *(a8 + 16) = v20 & 1;
  *(a8 + 24) = v21;
  return result;
}

uint64_t sub_20C601248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v90 = a5;
  v91 = a6;
  v83 = a1;
  v89 = a7;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  MEMORY[0x28223BE20](v82);
  v81 = &v67 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF0, &qword_20C6535B8);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v88 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v87 = &v67 - v16;
  v98[0] = a3;
  v98[1] = a4;
  v98[2] = a5;
  v98[3] = a6;
  v17 = type metadata accessor for MarketingButton(0, v98);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v67 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECF8, &qword_20C6535C0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v67 - v23;
  v80 = &v67 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC60, &qword_20C653390);
  v85 = *(v25 - 8);
  v86 = v25;
  v26 = MEMORY[0x28223BE20](v25);
  v84 = &v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v92 = &v67 - v28;
  sub_20C64D180();
  v29 = sub_20C64D190();
  (*(*(v29 - 8) + 56))(v24, 0, 1, v29);
  v30 = *(v18 + 16);
  v71 = v18 + 16;
  v70 = v30;
  v30(v21, a2, v17);
  v31 = *(v18 + 80);
  v32 = (v31 + 48) & ~v31;
  v74 = v19;
  v69 = v31;
  v33 = swift_allocObject();
  *(v33 + 2) = a3;
  *(v33 + 3) = a4;
  v34 = a4;
  v36 = v90;
  v35 = v91;
  *(v33 + 4) = v90;
  *(v33 + 5) = v35;
  v37 = *(v18 + 32);
  v72 = v32;
  v73 = v21;
  v76 = v17;
  v75 = v18 + 32;
  v68 = v37;
  v37(&v33[v32], v21, v17);
  v77 = a3;
  v93 = a3;
  v94 = v34;
  v38 = v81;
  v78 = v34;
  v95 = v36;
  v96 = v35;
  v79 = a2;
  v97 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECE0, &qword_20C653520);
  v40 = sub_20C5E5558(&qword_281105850, &qword_27C7CECE0, &qword_20C653520, MEMORY[0x277CDEFF0]);
  sub_20C64DD30();
  sub_20C5E574C(v83, v38, &qword_27C7CEC80, &unk_20C6533B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v38)
    {
      goto LABEL_7;
    }

LABEL_9:
    v50 = v73;
    v51 = v79;
    v52 = v76;
    v70(v73, v79, v76);
    v53 = v72;
    v54 = swift_allocObject();
    v83 = v40;
    v55 = v77;
    v56 = v78;
    *(v54 + 2) = v77;
    *(v54 + 3) = v56;
    v57 = v90;
    v82 = v39;
    v58 = v91;
    *(v54 + 4) = v90;
    *(v54 + 5) = v58;
    v59 = v68(&v54[v53], v50, v52);
    MEMORY[0x28223BE20](v59);
    *(&v67 - 6) = v55;
    *(&v67 - 5) = v56;
    *(&v67 - 4) = v57;
    *(&v67 - 3) = v58;
    *(&v67 - 2) = v51;
    v49 = v84;
    sub_20C64DD40();
    v48 = v85;
    v46 = v86;
    v47 = v87;
    (*(v85 + 32))(v87, v49, v86);
    v45 = 0;
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v38, &qword_27C7CEC80, &unk_20C6533B0);
    goto LABEL_9;
  }

  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
  v43 = *v38;
  v44 = sub_20C64CF30();
  (*(*(v44 - 8) + 8))(&v38[v42], v44);
  if ((v43 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v45 = 1;
  v46 = v86;
  v47 = v87;
  v49 = v84;
  v48 = v85;
LABEL_10:
  (*(v48 + 56))(v47, v45, 1, v46);
  v60 = *(v48 + 16);
  v61 = v92;
  v60(v49, v92, v46);
  v62 = v88;
  sub_20C5E574C(v47, v88, &qword_27C7CECF0, &qword_20C6535B8);
  v63 = v89;
  v60(v89, v49, v46);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED00, &qword_20C6535C8);
  sub_20C5E574C(v62, &v63[*(v64 + 48)], &qword_27C7CECF0, &qword_20C6535B8);
  sub_20C5DBFC4(v47, &qword_27C7CECF0, &qword_20C6535B8);
  v65 = *(v48 + 8);
  v65(v61, v46);
  sub_20C5DBFC4(v62, &qword_27C7CECF0, &qword_20C6535B8);
  return (v65)(v49, v46);
}

uint64_t sub_20C6019F8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C64E030();
  MEMORY[0x28223BE20](v11 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  v17[0] = a1;
  v17[1] = a2;
  v17[2] = a3;
  v17[3] = a4;
  type metadata accessor for MarketingButton(0, v17);
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64D8D0();
  *a5 = result;
  *(a5 + 8) = v14;
  *(a5 + 16) = v15 & 1;
  *(a5 + 24) = v16;
  return result;
}

uint64_t sub_20C601B9C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C64E030();
  MEMORY[0x28223BE20](v11 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  type metadata accessor for MarketingButton(0, v15);
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64E080();
  *a5 = result;
  *(a5 + 8) = v14;
  *(a5 + 16) = 0;
  *(a5 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_20C601D60@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v10 = sub_20C64CFE0();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_20C64E030();
  MEMORY[0x28223BE20](v11 - 8);
  sub_20C64E020();
  if (qword_281105760 != -1)
  {
    swift_once();
  }

  v12 = qword_281109B60;
  v15[0] = a1;
  v15[1] = a2;
  v15[2] = a3;
  v15[3] = a4;
  type metadata accessor for MarketingButton(0, v15);
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  result = sub_20C64E080();
  *a5 = result;
  *(a5 + 8) = v14;
  *(a5 + 16) = 0;
  *(a5 + 24) = MEMORY[0x277D84F90];
  return result;
}

BOOL sub_20C601F20()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return v1 > 2u;
}

uint64_t sub_20C601F80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - v4;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  sub_20C6063A8(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v3;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED08, &qword_20C6535D0) + 48);
      v8 = *v3;
      v9 = sub_20C64CF30();
      (*(*(v9 - 8) + 8))(&v3[v7], v9);
      return v8;
    }

    sub_20C5DBFC4(v3, &qword_27C7CEC80, &unk_20C6533B0);
  }

  return 0;
}

BOOL sub_20C60210C()
{
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  return v2 == 1 && (sub_20C601F80() & 1) != 0 || !sub_20C601F20();
}

uint64_t MarketingButton.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v85 = a2;
  v83 = *(a1 - 1);
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](a1);
  v82 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC50, &qword_20C653380);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v5 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388, MEMORY[0x277D83980]);
  v104 = v4;
  v105 = MEMORY[0x277D837D0];
  v107 = v5;
  v108 = MEMORY[0x277D837E0];
  *&v80 = a1[3];
  v106 = v80;
  sub_20C64DD90();
  *&v79 = a1[5];
  v117 = v79;
  swift_getWitnessTable();
  v74 = sub_20C64DD60();
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  v77 = a1[2];
  v78 = a1;
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v7 = sub_20C64D2E0();
  v8 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  v76 = a1[4];
  v115 = v76;
  v116 = MEMORY[0x277CDFC60];
  v86 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v10 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  v113 = WitnessTable;
  v114 = v10;
  v11 = swift_getWitnessTable();
  v104 = v6;
  v105 = v7;
  v106 = v8;
  v107 = v11;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  v12 = sub_20C64D560();
  v104 = v6;
  v105 = v7;
  v106 = v8;
  v107 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v16 = sub_20C602C18();
  v17 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
  v104 = v6;
  v105 = MEMORY[0x277D837D0];
  v106 = v14;
  v107 = MEMORY[0x277CE0BD8];
  v108 = v15;
  v109 = v8;
  v110 = v16;
  v111 = v17;
  v112 = MEMORY[0x277CE0BC8];
  v18 = swift_getOpaqueTypeConformance2();
  v102 = OpaqueTypeConformance2;
  v103 = v18;
  v71 = MEMORY[0x277CE0340];
  v19 = swift_getWitnessTable();
  v20 = sub_20C602C6C();
  v104 = v12;
  v105 = &type metadata for MarketingPlainButtonStyle;
  v106 = v19;
  v107 = v20;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v21 = sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v22 = sub_20C64D2E0();
  v104 = v12;
  v105 = &type metadata for MarketingPlainButtonStyle;
  v106 = v19;
  v107 = v20;
  v23 = swift_getOpaqueTypeConformance2();
  v100 = v19;
  v101 = v23;
  v99 = swift_getWitnessTable();
  v72 = MEMORY[0x277CE0FB0];
  v24 = swift_getWitnessTable();
  v25 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700, MEMORY[0x277CE0868]);
  v97 = v24;
  v98 = v25;
  OpaqueTypeMetadata2 = v22;
  v68 = swift_getWitnessTable();
  v26 = MEMORY[0x277CE1350];
  v104 = v21;
  v105 = MEMORY[0x277CE1350];
  v106 = v22;
  v107 = v24;
  v108 = MEMORY[0x277CE1340];
  v109 = v68;
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v67 = sub_20C64D560();
  v69 = sub_20C64DCA0();
  v75 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v73 = &v65 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v30 = sub_20C602CC0();
  v31 = sub_20C602E88();
  v104 = v28;
  v105 = v26;
  v106 = v29;
  v107 = v30;
  v32 = MEMORY[0x277CE1340];
  v108 = MEMORY[0x277CE1340];
  v109 = v31;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = swift_getWitnessTable();
  v104 = v21;
  v105 = v26;
  v106 = OpaqueTypeMetadata2;
  v107 = v24;
  v108 = v32;
  v109 = v68;
  v35 = swift_getOpaqueTypeConformance2();
  v95 = v34;
  v96 = v35;
  v36 = swift_getWitnessTable();
  v93 = v33;
  v94 = v36;
  v92 = swift_getWitnessTable();
  v37 = v69;
  v38 = swift_getWitnessTable();
  v104 = v37;
  v105 = v38;
  v39 = v37;
  v66 = v38;
  v72 = MEMORY[0x277D09E70];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v41 = &v65 - v40;
  v42 = sub_20C64D2E0();
  v43 = *(v42 - 8);
  v44 = MEMORY[0x28223BE20](v42);
  v68 = &v65 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v71 = &v65 - v46;
  *&v48 = v76;
  *&v47 = v77;
  *(&v47 + 1) = v80;
  *(&v48 + 1) = v79;
  v79 = v48;
  v80 = v47;
  v87 = v47;
  v88 = v48;
  v49 = v81;
  v89 = v81;
  v50 = v73;
  sub_20C64DC90();
  sub_20C64D9A0();
  v51 = v39;
  (*(v75 + 8))(v50, v39);
  v53 = v82;
  v52 = v83;
  v54 = v78;
  (*(v83 + 16))(v82, v49, v78);
  v55 = (*(v52 + 80) + 48) & ~*(v52 + 80);
  v56 = swift_allocObject();
  v57 = v79;
  *(v56 + 16) = v80;
  *(v56 + 32) = v57;
  (*(v52 + 32))(v56 + v55, v53, v54);
  v104 = v51;
  v105 = v66;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v68;
  v60 = OpaqueTypeMetadata2;
  sub_20C64DBA0();

  (*(v74 + 8))(v41, v60);
  v90 = v58;
  v91 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  v61 = *(v43 + 16);
  v62 = v71;
  v61(v71, v59, v42);
  v63 = *(v43 + 8);
  v63(v59, v42);
  v61(v85, v62, v42);
  return (v63)(v62, v42);
}

unint64_t sub_20C602C18()
{
  result = qword_2811057B8;
  if (!qword_2811057B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811057B8);
  }

  return result;
}

unint64_t sub_20C602C6C()
{
  result = qword_281106278;
  if (!qword_281106278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281106278);
  }

  return result;
}

unint64_t sub_20C602CC0()
{
  result = qword_281105878;
  if (!qword_281105878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC90, &qword_20C6533C0);
    sub_20C602D44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105878);
  }

  return result;
}

unint64_t sub_20C602D44()
{
  result = qword_281105970;
  if (!qword_281105970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECA0, &qword_20C6533D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECA8, &qword_20C6533D8);
    sub_20C602C6C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105970);
  }

  return result;
}

unint64_t sub_20C602E88()
{
  result = qword_281105A98;
  if (!qword_281105A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
    sub_20C602CC0();
    sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281105A98);
  }

  return result;
}

uint64_t sub_20C602F40@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v166 = a5;
  v165 = a4;
  v164 = a3;
  v163 = a2;
  v154 = a1;
  v160 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  sub_20C64D2E0();
  sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  v198 = a4;
  v199 = MEMORY[0x277CDFC60];
  v167 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v197 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC70, &qword_20C6533A0);
  v7 = sub_20C64D560();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v193 = sub_20C602C18();
  v194 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
  v195 = MEMORY[0x277CE0BC8];
  v185 = OpaqueTypeConformance2;
  v186 = swift_getOpaqueTypeConformance2();
  v9 = swift_getWitnessTable();
  sub_20C602C6C();
  swift_getOpaqueTypeMetadata2();
  sub_20C64D560();
  v10 = sub_20C64DCA0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC88, &qword_20C653700);
  v11 = sub_20C64D2E0();
  v148 = v7;
  v147 = v9;
  v183 = v9;
  v184 = swift_getOpaqueTypeConformance2();
  v182 = swift_getWitnessTable();
  v180 = swift_getWitnessTable();
  v181 = sub_20C5E5558(&qword_2811058A0, &qword_27C7CEC88, &qword_20C653700, MEMORY[0x277CE0868]);
  v12 = swift_getWitnessTable();
  v169 = v10;
  v187 = v10;
  v188 = MEMORY[0x277CE1350];
  v162 = v11;
  v189 = v11;
  v190 = v180;
  v168 = v180;
  v191 = MEMORY[0x277CE1340];
  v192 = v12;
  v161 = v12;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v146 = *(OpaqueTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v145 = &v135 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v144 = &v135 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v18 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388, MEMORY[0x277D83980]);
  v187 = v17;
  v19 = v164;
  v188 = MEMORY[0x277D837D0];
  v189 = v164;
  v190 = v18;
  v191 = MEMORY[0x277D837E0];
  v20 = sub_20C64DD90();
  v21 = v166;
  v179 = v166;
  v22 = swift_getWitnessTable();
  v141 = v20;
  v140 = v22;
  v23 = sub_20C64DD60();
  v142 = *(v23 - 8);
  v24 = MEMORY[0x28223BE20](v23);
  v143 = &v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v138 = &v135 - v27;
  MEMORY[0x28223BE20](v26);
  v139 = &v135 - v28;
  v167 = v29;
  v151 = OpaqueTypeMetadata2;
  v30 = sub_20C64D560();
  v150 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v149 = &v135 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v153 = (&v135 - v33);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC90, &qword_20C6533C0);
  MEMORY[0x28223BE20](v155);
  v35 = &v135 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC50, &qword_20C653380);
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v152 = &v135 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC0, &qword_20C653470);
  MEMORY[0x28223BE20](v39);
  v41 = &v135 - v40;
  v42 = type metadata accessor for MarketingOffer(0);
  MEMORY[0x28223BE20](v42 - 8);
  v44 = &v135 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v36;
  v159 = sub_20C64D560();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v157 = &v135 - v45;
  v187 = v163;
  v188 = v19;
  v189 = v165;
  v190 = v21;
  type metadata accessor for MarketingButton(0, &v187);
  v46 = v154;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    goto LABEL_13;
  }

  if (!EnumCaseMultiPayload)
  {
    v49 = v44;
    sub_20C6054D4(v41, v44);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_20C5DBFC4(v41, &qword_27C7CECC0, &qword_20C653470);
LABEL_13:
    v75 = *(v46 + 17);
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    v77 = MEMORY[0x277CE1340];
    v153 = v37;
    v78 = v30;
    v151 = &v135;
    MEMORY[0x28223BE20](v76);
    v79 = v164;
    *(&v135 - 6) = v163;
    *(&v135 - 5) = v79;
    v80 = v166;
    *(&v135 - 4) = v165;
    *(&v135 - 3) = v80;
    sub_20C60562C(v75, sub_20C6055D8, v81, v35);
    sub_20C64DDC0();
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC98, &qword_20C6533C8);
    v83 = sub_20C602CC0();
    v84 = sub_20C602E88();
    v133 = v84;
    v85 = v152;
    v86 = v155;
    v74 = MEMORY[0x277CE1350];
    sub_20C64DBC0();
    sub_20C5D6348(v35);
    v187 = v86;
    v188 = v74;
    v189 = v82;
    v190 = v83;
    v191 = v77;
    v192 = v84;
    v87 = v77;
    v88 = swift_getOpaqueTypeConformance2();
    v89 = swift_getWitnessTable();
    v187 = v169;
    v188 = v74;
    v90 = v162;
    v189 = v162;
    v190 = v168;
    v91 = v161;
    v191 = v87;
    v192 = v161;
    v92 = swift_getOpaqueTypeConformance2();
    v170 = v89;
    v171 = v92;
    v93 = swift_getWitnessTable();
    v94 = v157;
    v95 = v156;
    sub_20C62E798(v85, v156, v78, v88, v93);
    v153[1](v85, v95);
    goto LABEL_17;
  }

  v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECC8, &qword_20C6534D8) + 48);
  v49 = v44;
  sub_20C6054D4(v41, v44);
  v50 = sub_20C64CF30();
  (*(*(v50 - 8) + 8))(&v41[v48], v50);
LABEL_6:
  v51 = v162;
  v52 = sub_20C60210C();
  v53 = v168;
  v54 = v161;
  v55 = MEMORY[0x277CE1350];
  v137 = v30;
  v136 = v49;
  if (v52)
  {
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    if (v187)
    {
      v56 = v169;
      if (v187 == 1)
      {
        sub_20C64D4D0();
      }

      else
      {
        sub_20C64D4F0();
      }
    }

    else
    {
      sub_20C64D4E0();
      v56 = v169;
    }

    sub_20C5FF8FC();
    MEMORY[0x28223BE20](v96);
    v97 = v164;
    *(&v135 - 6) = v163;
    *(&v135 - 5) = v97;
    v98 = v166;
    *(&v135 - 4) = v165;
    *(&v135 - 3) = v98;
    v133 = v49;
    v134 = v46;
    v99 = v138;
    sub_20C64DD50();
    v100 = v167;
    v166 = swift_getWitnessTable();
    v101 = v142;
    v102 = *(v142 + 16);
    v103 = v139;
    v102(v139, v99, v100);
    v104 = *(v101 + 8);
    v104(v99, v100);
    v105 = v143;
    v102(v143, v103, v100);
    v187 = v56;
    v74 = MEMORY[0x277CE1350];
    v66 = v162;
    v188 = MEMORY[0x277CE1350];
    v189 = v162;
    v106 = v168;
    v190 = v168;
    v191 = MEMORY[0x277CE1340];
    v192 = v54;
    v107 = swift_getOpaqueTypeConformance2();
    v72 = v153;
    sub_20C62E798(v105, v100, v151, v166, v107);
    v108 = v105;
    v53 = v106;
    v104(v108, v100);
    v104(v103, v100);
  }

  else
  {
    LOBYTE(v187) = *(v46 + 17);
    sub_20C5FF514();
    swift_getKeyPath();
    sub_20C64DF30();

    v58 = v178;
    MEMORY[0x28223BE20](v57);
    v59 = v164;
    *(&v135 - 6) = v163;
    *(&v135 - 5) = v59;
    v60 = v166;
    *(&v135 - 4) = v165;
    *(&v135 - 3) = v60;
    v133 = v46;
    v61 = swift_checkMetadataState();
    v62 = v55;
    v63 = v145;
    sub_20C61CD08(v58, sub_20C605538, (&v135 - 8), v61, v147, v145);
    v187 = v169;
    v188 = v62;
    v189 = v51;
    v190 = v53;
    v191 = MEMORY[0x277CE1340];
    v192 = v54;
    v166 = swift_getOpaqueTypeConformance2();
    v64 = v146;
    v65 = *(v146 + 16);
    v66 = v51;
    v67 = v144;
    v68 = v151;
    v65(v144, v63, v151);
    v69 = *(v64 + 8);
    v69(v63, v68);
    v65(v63, v67, v68);
    v70 = v167;
    v71 = swift_getWitnessTable();
    v72 = v153;
    sub_20C62E890(v63, v70, v68, v71, v166);
    v69(v63, v68);
    v73 = v68;
    v54 = v161;
    v69(v67, v73);
    v74 = MEMORY[0x277CE1350];
  }

  v109 = swift_getWitnessTable();
  v187 = v169;
  v188 = v74;
  v189 = v66;
  v190 = v53;
  v110 = MEMORY[0x277CE1340];
  v191 = MEMORY[0x277CE1340];
  v192 = v54;
  v111 = swift_getOpaqueTypeConformance2();
  v176 = v109;
  v177 = v111;
  v112 = v137;
  v113 = swift_getWitnessTable();
  v114 = v150;
  v115 = v149;
  (*(v150 + 16))(v149, v72, v112);
  v116 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v117 = sub_20C602CC0();
  v118 = sub_20C602E88();
  v86 = v155;
  v187 = v155;
  v188 = v74;
  v189 = v116;
  v190 = v117;
  v191 = v110;
  v192 = v118;
  v119 = swift_getOpaqueTypeConformance2();
  v94 = v157;
  sub_20C62E890(v115, v156, v112, v119, v113);
  v120 = *(v114 + 8);
  v120(v115, v112);
  v90 = v162;
  v120(v153, v112);
  v91 = v161;
  sub_20C605568(v136, type metadata accessor for MarketingOffer);
LABEL_17:
  v121 = v160;
  v122 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC98, &qword_20C6533C8);
  v123 = sub_20C602CC0();
  v124 = sub_20C602E88();
  v187 = v86;
  v188 = v74;
  v189 = v122;
  v190 = v123;
  v125 = MEMORY[0x277CE1340];
  v191 = MEMORY[0x277CE1340];
  v192 = v124;
  v126 = swift_getOpaqueTypeConformance2();
  v127 = swift_getWitnessTable();
  v187 = v169;
  v188 = v74;
  v189 = v90;
  v190 = v168;
  v191 = v125;
  v192 = v91;
  v128 = swift_getOpaqueTypeConformance2();
  v174 = v127;
  v175 = v128;
  v129 = swift_getWitnessTable();
  v172 = v126;
  v173 = v129;
  v130 = v159;
  swift_getWitnessTable();
  v131 = v158;
  (*(v158 + 16))(v121, v94, v130);
  return (*(v131 + 8))(v94, v130);
}

uint64_t sub_20C604418@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v46 = a6;
  v48 = a3;
  v49 = a5;
  v50 = a2;
  v51 = a7;
  v12 = type metadata accessor for MarketingOffer(0);
  v47 = *(v12 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v44 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a3;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v14 = type metadata accessor for MarketingButton(0, &v53);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v42 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC58, &qword_20C653388);
  v20 = sub_20C5E5558(&qword_281105790, &qword_27C7CEC58, &qword_20C653388, MEMORY[0x277D83980]);
  v53 = v19;
  v54 = MEMORY[0x277D837D0];
  v55 = a4;
  v56 = v20;
  v21 = a4;
  v42[1] = a4;
  v57 = MEMORY[0x277D837E0];
  v22 = sub_20C64DD90();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v43 = v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v45 = v42 - v26;
  v27 = a1;
  v42[2] = *a1;
  v28 = v18;
  v29 = v18;
  v30 = v14;
  (*(v15 + 16))(v28, v50, v14);
  v31 = v44;
  sub_20C605C38(v27, v44);
  v32 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v33 = (v16 + *(v47 + 80) + v32) & ~*(v47 + 80);
  v34 = swift_allocObject();
  v35 = v49;
  *(v34 + 2) = v48;
  *(v34 + 3) = v21;
  v36 = v46;
  *(v34 + 4) = v35;
  *(v34 + 5) = v36;
  (*(v15 + 32))(&v34[v32], v29, v30);
  sub_20C6054D4(v31, &v34[v33]);
  type metadata accessor for MarketingActionItem(0);
  sub_20C605DC4(&qword_2811067F0, &protocol conformance descriptor for MarketingActionItem);
  sub_20C605DC4(&qword_2811067E0, &protocol conformance descriptor for MarketingActionItem);

  v37 = v43;
  sub_20C64DD80();
  v52 = v36;
  swift_getWitnessTable();
  v38 = *(v23 + 16);
  v39 = v45;
  v38(v45, v37, v22);
  v40 = *(v23 + 8);
  v40(v37, v22);
  v38(v51, v39, v22);
  return (v40)(v39, v22);
}

uint64_t sub_20C604868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X5>, char *a5@<X8>)
{
  v25 = a2;
  v26 = a3;
  v27 = a5;
  v7 = *(a4 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v24 - v11;
  v34 = v13;
  v35 = v14;
  v36 = v15;
  v37 = v16;
  v17 = type metadata accessor for MarketingButton(0, &v34);
  sub_20C5FF820(v17);
  v19 = v18;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v29[0] = v34;
  v30 = v35;
  v31 = v36;
  v32 = v37;
  v33 = v38;
  sub_20C5FF514();
  swift_getKeyPath();
  sub_20C64DF30();

  v20 = *(v19 + 48);
  v40 = a1;
  v39 = v28;
  v20(v25, v26, &v40, v29, &v39);

  v21 = *(v7 + 16);
  v21(v12, v10, a4);
  v22 = *(v7 + 8);
  v22(v10, a4);
  v21(v27, v12, a4);
  return (v22)(v12, a4);
}

uint64_t sub_20C604A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a5;
  OpaqueTypeConformance2 = a3;
  v58 = a2;
  v59 = a1;
  v67 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC70, &qword_20C6533A0);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v56 = &v56 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
  sub_20C64D2E0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC68, &qword_20C653398);
  v10 = sub_20C64D2E0();
  v11 = v9;
  v12 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
  v83 = a4;
  v84 = MEMORY[0x277CDFC60];
  WitnessTable = swift_getWitnessTable();
  v14 = sub_20C5E5558(&qword_2811058E8, &qword_27C7CEC68, &qword_20C653398, MEMORY[0x277CE0728]);
  v81 = WitnessTable;
  v82 = v14;
  v15 = swift_getWitnessTable();
  v72 = v11;
  v73 = v10;
  v68 = v10;
  v69 = v12;
  v74 = v12;
  v75 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v17 = *(OpaqueTypeMetadata2 - 8);
  v18 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v56 - v21;
  v66 = v7;
  v23 = sub_20C64D560();
  v64 = *(v23 - 8);
  v65 = v23;
  MEMORY[0x28223BE20](v23);
  v63 = &v56 - v24;
  v72 = v58;
  v73 = OpaqueTypeConformance2;
  v74 = a4;
  v75 = v61;
  v25 = type metadata accessor for MarketingButton(0, &v72);
  v26 = sub_20C601F80();
  v62 = v15;
  if (v26)
  {
    sub_20C5FFCEC(v25, v20);
    v27 = v69;
    v72 = v11;
    v73 = v68;
    v74 = v69;
    v75 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v28 = *(v17 + 16);
    v28(v22, v20, OpaqueTypeMetadata2);
    v61 = v11;
    v29 = *(v17 + 8);
    v29(v20, OpaqueTypeMetadata2);
    v28(v20, v22, OpaqueTypeMetadata2);
    v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
    v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    v32 = sub_20C602C18();
    v33 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
    v72 = v61;
    v73 = MEMORY[0x277D837D0];
    v74 = v30;
    v75 = MEMORY[0x277CE0BD8];
    v76 = v31;
    v77 = v27;
    v78 = v32;
    v79 = v33;
    v80 = MEMORY[0x277CE0BC8];
    v34 = swift_getOpaqueTypeConformance2();
    v35 = v63;
    sub_20C62E798(v20, OpaqueTypeMetadata2, v66, OpaqueTypeConformance2, v34);
    v29(v20, OpaqueTypeMetadata2);
    v29(v22, OpaqueTypeMetadata2);
    v11 = v61;
  }

  else
  {
    v36 = v56;
    sub_20C6009AC(v25, v56);
    v37 = v69;
    v72 = v11;
    v73 = v68;
    v74 = v69;
    v75 = v15;
    v38 = swift_getOpaqueTypeConformance2();
    v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
    v40 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
    v41 = sub_20C602C18();
    v42 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
    v72 = v11;
    v73 = MEMORY[0x277D837D0];
    v74 = v39;
    v75 = MEMORY[0x277CE0BD8];
    v76 = v40;
    v77 = v37;
    v78 = v41;
    v79 = v42;
    v80 = MEMORY[0x277CE0BC8];
    v43 = swift_getOpaqueTypeConformance2();
    v35 = v63;
    v44 = OpaqueTypeMetadata2;
    v45 = v66;
    sub_20C62E890(v36, v44, v66, v38, v43);
    (*(v57 + 8))(v36, v45);
  }

  v46 = v69;
  v72 = v11;
  v73 = v68;
  v74 = v69;
  v75 = v62;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC78, &qword_20C6533A8);
  v49 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC80, &unk_20C6533B0);
  v50 = sub_20C602C18();
  v51 = sub_20C5E5558(&qword_2811057F8, &qword_27C7CEC78, &qword_20C6533A8, MEMORY[0x277CE14C0]);
  v72 = v11;
  v73 = MEMORY[0x277D837D0];
  v74 = v48;
  v75 = MEMORY[0x277CE0BD8];
  v76 = v49;
  v77 = v46;
  v78 = v50;
  v79 = v51;
  v80 = MEMORY[0x277CE0BC8];
  v52 = swift_getOpaqueTypeConformance2();
  v70 = v47;
  v71 = v52;
  v53 = v65;
  swift_getWitnessTable();
  v54 = v64;
  (*(v64 + 16))(v67, v35, v53);
  return (*(v54 + 8))(v35, v53);
}

void sub_20C6052D4(uint64_t a1)
{
  sub_20C605430(319);
  if (v1 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
    swift_getFunctionTypeMetadata1();
    sub_20C64D010();
    if (v2 <= 0x3F)
    {
      type metadata accessor for MarketingActionItem(255);
      type metadata accessor for MarketingOffer(255);
      swift_getFunctionTypeMetadata();
      sub_20C64D010();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_20C605430(uint64_t a1)
{
  if (!qword_281105B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB8, qword_20C653458);
    sub_20C5E5558(&qword_2811057D0, &qword_27C7CECB8, qword_20C653458, MEMORY[0x277D04410]);
    v1 = sub_20C64D230();
    if (!v2)
    {
      atomic_store(v1, &qword_281105B28);
    }
  }
}

uint64_t sub_20C6054D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingOffer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C605568(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20C6055D8()
{
  v1 = *(v0 + 32);
  v4[0] = *(v0 + 16);
  v4[1] = v1;
  v2 = type metadata accessor for MarketingButton(0, v4);
  return sub_20C5FFA94(v2);
}

uint64_t sub_20C60562C@<X0>(char a1@<W0>, void (*a2)(uint64_t)@<X1>, char a3@<W3>, uint64_t a4@<X8>)
{
  v28[1] = a4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECD0, &qword_20C653510);
  v28[0] = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = v28 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECD8, &qword_20C653518);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CECA8, &qword_20C6533D8);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v28 - v15;
  a2(v14);
  if (a1)
  {
    v34 = a3;
    v17 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    v18 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
    v30 = v17;
    v31 = v18;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v20 = sub_20C602C6C();
    sub_20C64DA40();
    (*(v13 + 8))(v16, v12);
    v21 = v28[0];
    v22 = v29;
    (*(v28[0] + 16))(v11, v8, v29);
    swift_storeEnumTagMultiPayload();
    v30 = v12;
    v31 = &type metadata for MarketingPlainButtonStyle;
    v32 = OpaqueTypeConformance2;
    v33 = v20;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v21 + 8))(v8, v22);
  }

  else
  {
    (*(v13 + 16))(v11, v16, v12);
    swift_storeEnumTagMultiPayload();
    v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CEC60, &qword_20C653390);
    v25 = sub_20C5E5558(&qword_281105820, &qword_27C7CEC60, &qword_20C653390, MEMORY[0x277CDF028]);
    v30 = v24;
    v31 = v25;
    v26 = swift_getOpaqueTypeConformance2();
    v27 = sub_20C602C6C();
    v30 = v12;
    v31 = &type metadata for MarketingPlainButtonStyle;
    v32 = v26;
    v33 = v27;
    swift_getOpaqueTypeConformance2();
    sub_20C64D550();
    return (*(v13 + 8))(v16, v12);
  }
}

uint64_t sub_20C605A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC98, &qword_20C6533C8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC88, &qword_20C653700);
  sub_20C64D350();
  *v4 = swift_getKeyPath();

  return sub_20C5D63B8(a1, a2);
}

uint64_t sub_20C605AD0(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_20C606458, v5);
}

uint64_t sub_20C605B68(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_20C605F40;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_20C605C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingOffer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20C605C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v16[0] = v3[2];
  v16[1] = v7;
  v16[2] = v8;
  v16[3] = v9;
  v10 = *(type metadata accessor for MarketingButton(0, v16) - 8);
  v11 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for MarketingOffer(0) - 8);
  v14 = v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80));

  return sub_20C604868(a1, a2, v14, v7, a3);
}

uint64_t sub_20C605DC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MarketingActionItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20C605E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = *(v5 + 48);
  v9 = a3;
  v8 = a5;
  return v6(a1, a2, &v9, a4, &v8);
}

uint64_t sub_20C605E7C@<X0>(char *a1@<X8>)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for MarketingButton(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_20C60037C(v8, v3, v4, v5, v6, a1);
}

uint64_t objectdestroy_6Tm()
{
  v1 = *(v0 + 40);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = v1;
  v2 = (type metadata accessor for MarketingButton(0, &v9) - 8);
  v3 = (v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80)));
  sub_20C5E3044(*v3, v3[1]);
  v4 = v2[16];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C7CECB0, &qword_20C6533E0);
  swift_getFunctionTypeMetadata1();
  v5 = sub_20C64D010();
  (*(*(v5 - 8) + 8))(v3 + v4, v5);
  v6 = v2[17];
  v9 = type metadata accessor for MarketingActionItem(255);
  *&v10 = type metadata accessor for MarketingOffer(255);
  *(&v10 + 1) = MEMORY[0x277D83B88];
  v11 = &type metadata for MarketingButtonLayout;
  v12 = &type metadata for MarketingPlatform;
  swift_getFunctionTypeMetadata();
  v7 = sub_20C64D010();
  (*(*(v7 - 8) + 8))(v3 + v6, v7);
  return swift_deallocObject();
}

uint64_t sub_20C606210(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9[0] = v1[2];
  v3 = v9[0];
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  v7 = *(type metadata accessor for MarketingButton(0, v9) - 8);
  return sub_20C600888(v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80)), v3, v4, v5, v6, a1);
}

uint64_t sub_20C6063A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEC80, &unk_20C6533B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for MarketingRoundButtonStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[17])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketingRoundButtonStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_20C60651C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v100 = a4;
  v101 = a3;
  LODWORD(v107) = a2;
  v108 = a1;
  v106 = a5;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDF8, &qword_20C6537B8);
  MEMORY[0x28223BE20](v91);
  v90 = &v88 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDF0, &qword_20C6537B0);
  v6 = MEMORY[0x28223BE20](v105);
  v92 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v88 - v8;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE08, &qword_20C653828);
  MEMORY[0x28223BE20](v102);
  v104 = &v88 - v10;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE10, &qword_20C653830);
  MEMORY[0x28223BE20](v97);
  v12 = &v88 - v11;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED90, &qword_20C653748);
  MEMORY[0x28223BE20](v103);
  v98 = &v88 - v13;
  v99 = sub_20C64D880();
  v14 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v16 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CE290, &unk_20C655580);
  MEMORY[0x28223BE20](v17);
  v19 = &v88 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC8, &unk_20C653780);
  MEMORY[0x28223BE20](v20);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDB0, &qword_20C653768);
  MEMORY[0x28223BE20](v23);
  v25 = &v88 - v24;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDA8, &qword_20C653760);
  MEMORY[0x28223BE20](v93);
  v95 = &v88 - v26;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDA0, &qword_20C653758);
  MEMORY[0x28223BE20](v94);
  v96 = &v88 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CED98, &qword_20C653750);
  v29 = MEMORY[0x28223BE20](v28);
  v30 = MEMORY[0x28223BE20](v29);
  if (v107 >= 2u)
  {
    v72 = v91;
    v73 = v90;
    if (v107 == 3)
    {
      sub_20C64D720();
      KeyPath = swift_getKeyPath();
      v75 = (v73 + *(v20 + 36));
      *v75 = KeyPath;
      v75[1] = 0x3FE6666666666666;
      v76 = swift_getKeyPath();
      v77 = v73 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEE00, &qword_20C6537C0) + 36);
      *v77 = v76;
      *(v77 + 8) = 1;
      *(v77 + 16) = 0;
      sub_20C64D800();
      sub_20C64D830();
      sub_20C64D870();

      v78 = v99;
      (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v99);
      v79 = sub_20C64D8A0();

      (*(v14 + 8))(v16, v78);
      v80 = swift_getKeyPath();
      v81 = (v73 + *(v72 + 36));
      *v81 = v80;
      v81[1] = v79;
      sub_20C64DE00();
      v82 = v9;
      v83 = v92;
      sub_20C64D330();
      sub_20C5E5658(v73, v83, &qword_27C7CEDF8, &qword_20C6537B8);
      v84 = (v83 + *(v105 + 36));
      v85 = v114;
      v84[4] = v113;
      v84[5] = v85;
      v84[6] = v115;
      v86 = v110;
      *v84 = v109;
      v84[1] = v86;
      v87 = v112;
      v84[2] = v111;
      v84[3] = v87;
      sub_20C5E5658(v83, v82, &qword_27C7CEDF0, &qword_20C6537B0);
      sub_20C60986C(v82, v104);
      swift_storeEnumTagMultiPayload();
      sub_20C608E80(&qword_281105900, &qword_27C7CED90, &qword_20C653748, sub_20C608F04);
      sub_20C609454();
      sub_20C64D550();
      return sub_20C5DBFC4(v82, &qword_27C7CEDF0, &qword_20C6537B0);
    }
  }

  else
  {
    v89 = v23;
    v90 = v32;
    v91 = v30;
    v92 = &v88 - v31;
    v107 = v12;
    sub_20C64D720();
    v33 = swift_getKeyPath();
    v34 = &v22[*(v20 + 36)];
    *v34 = v33;
    v34[1] = 0x3FE6666666666666;
    v35 = *MEMORY[0x277CDFA10];
    v36 = sub_20C64D2B0();
    (*(*(v36 - 8) + 104))(v19, v35, v36);
    sub_20C6098DC(&qword_281105B08, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    if (sub_20C64E010())
    {
      sub_20C60936C();
      sub_20C5E5558(&qword_281105758, &qword_27C7CE290, &unk_20C655580, MEMORY[0x277D84470]);
      sub_20C64DAB0();
      sub_20C5DBFC4(v19, &qword_27C7CE290, &unk_20C655580);
      sub_20C5DBFC4(v22, &qword_27C7CEDC8, &unk_20C653780);
      sub_20C64D800();
      sub_20C64D840();
      sub_20C64D870();

      v37 = v99;
      (*(v14 + 104))(v16, *MEMORY[0x277CE0A10], v99);
      v38 = sub_20C64D8A0();

      (*(v14 + 8))(v16, v37);
      v39 = swift_getKeyPath();
      v40 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDC0, &unk_20C655570) + 36)];
      *v40 = v39;
      v40[1] = v38;
      v41 = swift_getKeyPath();
      v42 = &v25[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7CEDB8, &unk_20C653770) + 36)];
      *v42 = v41;
      *(v42 + 1) = 2;
      v42[16] = 0;
      *&v25[*(v89 + 36)] = sub_20C64DBF0();
      sub_20C64DE00();
      sub_20C64D330();
      v43 = v95;
      sub_20C5E5658(v25, v95, &qword_27C7CEDB0, &qword_20C653768);
      v44 = (v43 + *(v93 + 36));
      v45 = v114;
      v44[4] = v113;
      v44[5] = v45;
      v44[6] = v115;
      v46 = v110;
      *v44 = v109;
      v44[1] = v46;
      v47 = v112;
      v44[2] = v111;
      v44[3] = v47;
      LOBYTE(v41) = sub_20C64D7E0();
      sub_20C64D1A0();
      v49 = v48;
      v51 = v50;
      v53 = v52;
      v55 = v54;
      v56 = v43;
      v57 = v96;
      sub_20C5E5658(v56, v96, &qword_27C7CEDA8, &qword_20C653760);
      v58 = v57 + *(v94 + 36);
      *v58 = v41;
      *(v58 + 8) = v49;
      *(v58 + 16) = v51;
      *(v58 + 24) = v53;
      *(v58 + 32) = v55;
      *(v58 + 40) = 0;
      LOBYTE(v41) = sub_20C64D790();
      sub_20C64D1A0();
      v60 = v59;
      v62 = v61;
      v64 = v63;
      v66 = v65;
      v67 = v90;
      sub_20C5E5658(v57, v90, &qword_27C7CEDA0, &qword_20C653758);
      v68 = v67 + *(v91 + 36);
      *v68 = v41;
      *(v68 + 8) = v60;
      *(v68 + 16) = v62;
      *(v68 + 24) = v64;
      *(v68 + 32) = v66;
      *(v68 + 40) = 0;
      v69 = v92;
      sub_20C5E5658(v67, v92, &qword_27C7CED98, &qword_20C653750);
      sub_20C5E574C(v69, v107, &qword_27C7CED98, &qword_20C653750);
      swift_storeEnumTagMultiPayload();
      sub_20C608F04();
      v70 = v98;
      sub_20C64D550();
      sub_20C5E574C(v70, v104, &qword_27C7CED90, &qword_20C653748);
      swift_storeEnumTagMultiPayload();
      sub_20C608E80(&qword_281105900, &qword_27C7CED90, &qword_20C653748, sub_20C608F04);
      sub_20C609454();
      sub_20C64D550();
      sub_20C5DBFC4(v70, &qword_27C7CED90, &qword_20C653748);
      return sub_20C5DBFC4(v69, &qword_27C7CED98, &qword_20C653750);
    }

    __break(1u);
  }

  result = sub_20C64E2B0();
  __break(1u);
  return result;
}