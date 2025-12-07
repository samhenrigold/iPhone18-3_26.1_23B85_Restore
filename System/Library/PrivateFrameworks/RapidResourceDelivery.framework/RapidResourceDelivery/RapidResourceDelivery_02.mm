uint64_t sub_227EE3348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_227F2B234();
  sub_227EE3820(&qword_27D80E908, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_227F2B614())
  {
    v7 = a2;
  }

  else
  {
    v7 = a1;
  }

  return (*(*(v6 - 8) + 16))(a3, v7, v6);
}

unint64_t sub_227EE3444()
{
  result = qword_27D80E8D0;
  if (!qword_27D80E8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E8D0);
  }

  return result;
}

uint64_t sub_227EE3498(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EE3508(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_227EE3518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EE357C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000227F34060 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC0000006F666E49 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4973657461647075 && a2 == 0xEB000000006F666ELL)
  {

    return 2;
  }

  else
  {
    v5 = sub_227F2BC64();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_227EE36A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EE3730(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EE3790(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EE3820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for PersistenceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PersistenceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227EE39BC()
{
  result = qword_27D80E920;
  if (!qword_27D80E920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E920);
  }

  return result;
}

unint64_t sub_227EE3A14()
{
  result = qword_27D80E928;
  if (!qword_27D80E928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E928);
  }

  return result;
}

unint64_t sub_227EE3A6C()
{
  result = qword_27D80E930;
  if (!qword_27D80E930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E930);
  }

  return result;
}

uint64_t ResourceInfo.downloadingURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v1 + *(v6 + 32), v5, &qword_27D80E8F8, &qword_227F2F5E0);
  v7 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_227EB8430(v5, &qword_27D80E8F8, &qword_227F2F5E0);
    v8 = sub_227F2B114();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    v10 = sub_227F2B114();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v5, v10);
    sub_227EE87D8(v5, type metadata accessor for ResourceInfo.DownloadState);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }
}

uint64_t sub_227EE3D08@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v56 = a3;
  v57 = a2;
  v61 = sub_227F2B2E4();
  v52 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v51 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = *a1;
  v17 = *(a1 + 8);
  v19 = *(a1 + 16);
  v20 = *(a1 + 24);
  v59 = *(a1 + 32);
  v60 = v20;
  v54 = &v51 - v21;
  sub_227EC2180(v4, &v51 - v21, &qword_27D80E8F0, &unk_227F2F4B0);
  v22 = type metadata accessor for ResourceInfo(0);
  v23 = v4 + v22[5];
  v55 = v15;
  sub_227EC2180(v23, v15, &unk_27D80E3B0, &unk_227F2DB00);
  v24 = sub_227F2B234();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v13, v57, v24);
  v26 = *(v25 + 56);
  v27 = 1;
  v57 = v13;
  v26(v13, 0, 1, v24);
  v28 = v9;
  if (v19)
  {
    v29 = 0;
  }

  else
  {
    v29 = v17;
  }

  v30 = v4 + v22[8];
  v53 = v28;
  sub_227EC2180(v30, v28, &qword_27D80E8F8, &qword_227F2F5E0);
  v31 = v4 + v22[9];
  if (*(v31 + 8))
  {
    v33 = v60;
    v32 = v61;
    v35 = v58;
    v34 = v59;
    goto LABEL_12;
  }

  v36 = v4 + v22[7];
  v33 = v60;
  v32 = v61;
  v35 = v58;
  v34 = v59;
  if ((*(v36 + 8) & 1) != 0 || v29 != *v36)
  {
    goto LABEL_11;
  }

  v37 = *v31;
  v27 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
LABEL_11:
    v27 = 1;
  }

LABEL_12:
  v61 = v27;
  v62 = v18;
  v38 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  if (swift_dynamicCast())
  {
    (*(v52 + 8))(v35, v32);
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v33 = 0;
    v42 = 1;
  }

  else
  {
    v43 = v18;
    v39 = sub_227EE91F8(v18);
    v40 = v44;
    v41 = v45;

    v42 = v34;
  }

  v46 = v56;
  sub_227EE7808(v54, v56, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EE7808(v55, v46 + v22[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE7808(v57, v46 + v22[6], &unk_27D80E3B0, &unk_227F2DB00);
  v47 = v46 + v22[7];
  *v47 = v29;
  *(v47 + 8) = 0;
  result = sub_227EE7808(v53, v46 + v22[8], &qword_27D80E8F8, &qword_227F2F5E0);
  v49 = v46 + v22[9];
  *v49 = v61;
  *(v49 + 8) = 0;
  v50 = (v46 + v22[10]);
  *v50 = v39;
  v50[1] = v40;
  v50[2] = v41;
  v50[3] = v33;
  v50[4] = v42;
  return result;
}

double sub_227EE4184@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  sub_227EC2180(v2, &v25 - v7, &qword_27D80E8F0, &unk_227F2F4B0);
  v9 = type metadata accessor for FileInfo(0);
  v10 = (*(*(v9 - 8) + 48))(v8, 1, v9);
  sub_227EB8430(v8, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v10 == 1)
  {
    if (qword_27D80DF48 != -1)
    {
      swift_once();
    }

    v11 = sub_227F2B334();
    __swift_project_value_buffer(v11, qword_27D81B228);
    v12 = sub_227F2B304();
    v13 = sub_227F2B8E4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_227EB2000, v12, v13, "updatingUpToDateState called with nil fileInfo, we no longer have the resource that is up to date.", v14, 2u);
      MEMORY[0x22AAAD240](v14, -1, -1);
    }
  }

  sub_227EC2180(v3, a2, &qword_27D80E8F0, &unk_227F2F4B0);
  v15 = type metadata accessor for ResourceInfo(0);
  v16 = v15[5];
  v17 = sub_227F2B234();
  v18 = *(v17 - 8);
  (*(v18 + 16))(a2 + v16, a1, v17);
  (*(v18 + 56))(a2 + v16, 0, 1, v17);
  sub_227EC2180(v3 + v15[6], a2 + v15[6], &unk_27D80E3B0, &unk_227F2DB00);
  v19 = v15[8];
  v20 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v20 - 8) + 56))(a2 + v19, 1, 1, v20);
  v21 = a2 + v15[7];
  *v21 = 304;
  *(v21 + 8) = 0;
  v22 = a2 + v15[9];
  *v22 = 0;
  *(v22 + 8) = 1;
  v23 = a2 + v15[10];
  result = 0.0;
  *v23 = 0u;
  *(v23 + 16) = 0u;
  *(v23 + 32) = 1;
  return result;
}

uint64_t static ResourceInfo.DownloadState.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ResourceInfo.DownloadState(0);

  return sub_227F2B1F4();
}

uint64_t sub_227EE44DC()
{
  if (*v0)
  {
    return 0x4164657472617473;
  }

  else
  {
    return 0x525565746F6D6572;
  }
}

uint64_t sub_227EE451C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4164657472617473 && a2 == 0xE900000000000074)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EE45FC(uint64_t a1)
{
  v2 = sub_227EE4874();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE4638(uint64_t a1)
{
  v2 = sub_227EE4874();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.DownloadState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E938, &qword_227F2F5E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE4874();
  sub_227F2BD94();
  v8[15] = 0;
  sub_227F2B114();
  sub_227EE48C8(&qword_27D80E6A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_227F2BC14();
  if (!v1)
  {
    type metadata accessor for ResourceInfo.DownloadState(0);
    v8[14] = 1;
    sub_227F2B234();
    sub_227EE48C8(&qword_27D80E870, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_227F2BC14();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_227EE4874()
{
  result = qword_27D80E940;
  if (!qword_27D80E940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E940);
  }

  return result;
}

uint64_t sub_227EE48C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ResourceInfo.DownloadState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_227F2B234();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_227F2B114();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v25 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E948, &qword_227F2F5F0);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v19 - v7;
  v9 = type metadata accessor for ResourceInfo.DownloadState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE4874();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v9;
  v12 = v11;
  v14 = v23;
  v13 = v24;
  v30 = 0;
  sub_227EE48C8(&qword_27D80E880, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v15 = v25;
  sub_227F2BB64();
  v16 = *(v14 + 32);
  v19 = v12;
  v16(v12, v15, v27);
  v29 = 1;
  sub_227EE48C8(&qword_27D80E890, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_227F2BB64();
  (*(v26 + 8))(v8, v28);
  v17 = v19;
  (*(v21 + 32))(v19 + *(v20 + 20), v5, v13);
  sub_227EE7870(v17, v22, type metadata accessor for ResourceInfo.DownloadState);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227EE87D8(v17, type metadata accessor for ResourceInfo.DownloadState);
}

uint64_t sub_227EE4D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return sub_227F2B1F4();
}

uint64_t sub_227EE4DF0(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v29 = a4;
  v27 = a2;
  v28 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA08, &qword_227F2FDD8);
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5);
  v24 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA10, &qword_227F2FDE0);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA18, &qword_227F2FDE8);
  v21 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA20, &qword_227F2FDF0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE9000();
  v17 = v29;
  sub_227F2BD94();
  if (!(v17 >> 6))
  {
    LOBYTE(v30) = 1;
    sub_227EE90FC();
    sub_227F2BB84();
    v30 = v27;
    v31 = v28;
    v32 = v17;
    sub_227EE9150();
    v18 = v23;
    sub_227F2BC14();
    v19 = v22;
    goto LABEL_5;
  }

  if (v17 >> 6 == 1)
  {
    LOBYTE(v30) = 2;
    sub_227EE9054();
    v9 = v24;
    sub_227F2BB84();
    v30 = v27;
    v31 = v28;
    sub_227EE90A8();
    v18 = v26;
    sub_227F2BC14();
    v19 = v25;
LABEL_5:
    (*(v19 + 8))(v9, v18);
    return (*(v14 + 8))(v16, v13);
  }

  LOBYTE(v30) = 0;
  sub_227EE91A4();
  sub_227F2BB84();
  (*(v21 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_227EE5204()
{
  v1 = 0x74736566696E616DLL;
  if (*v0 != 1)
  {
    v1 = 0x656372756F736572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_227EE526C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EE92E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EE5294(uint64_t a1)
{
  v2 = sub_227EE9000();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE52D0(uint64_t a1)
{
  v2 = sub_227EE9000();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE530C(uint64_t a1)
{
  v2 = sub_227EE90FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5348(uint64_t a1)
{
  v2 = sub_227EE90FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE5384(uint64_t a1)
{
  v2 = sub_227EE9054();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE53C0(uint64_t a1)
{
  v2 = sub_227EE9054();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EE53FC(uint64_t a1)
{
  v2 = sub_227EE91A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5438(uint64_t a1)
{
  v2 = sub_227EE91A4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_227EE5474@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_227EE9404(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t sub_227EE54E4()
{
  if (*v0)
  {
    return 1734440037;
  }

  else
  {
    return 0x726F727265;
  }
}

uint64_t sub_227EE5514@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EE55EC(uint64_t a1)
{
  v2 = sub_227EE770C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE5628(uint64_t a1)
{
  v2 = sub_227EE770C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.AssetValidationFailureInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E950, &qword_227F2F5F8);
  v13 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v12 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v12[1] = *(v1 + 32);
  v12[2] = v8;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EC1C38(v6, v7, v9);
  sub_227EE770C();
  sub_227F2BD94();
  v14 = v6;
  v15 = v7;
  v16 = v9;
  v17 = 0;
  sub_227EE7760();
  v10 = v12[3];
  sub_227F2BBC4();
  sub_227EC222C(v6, v7, v9);
  if (!v10)
  {
    LOBYTE(v14) = 1;
    sub_227F2BB94();
  }

  return (*(v13 + 8))(v5, v3);
}

uint64_t ResourceInfo.AssetValidationFailureInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E968, &qword_227F2F600);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE770C();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  sub_227EE77B4();
  sub_227F2BB34();
  v9 = v17;
  v16 = v18;
  v20 = v19;
  LOBYTE(v17) = 1;
  v10 = sub_227F2BB04();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  *a2 = v9;
  *(a2 + 8) = v13;
  v14 = v20;
  *(a2 + 16) = v20;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  sub_227EC1C38(v9, v13, v14);

  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_227EC222C(v9, v13, v14);
}

double sub_227EE5A98()
{
  v0 = type metadata accessor for ResourceInfo(0);
  __swift_allocate_value_buffer(v0, qword_2813CDFF8);
  v1 = __swift_project_value_buffer(v0, qword_2813CDFF8);
  v2 = type metadata accessor for FileInfo(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[5];
  v4 = sub_227F2B234();
  v5 = *(*(v4 - 8) + 56);
  v5(v1 + v3, 1, 1, v4);
  v5(v1 + v0[6], 1, 1, v4);
  v6 = v0[8];
  v7 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = v1 + v0[7];
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + v0[9];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + v0[10];
  result = 0.0;
  *v10 = 0u;
  *(v10 + 16) = 0u;
  *(v10 + 32) = 1;
  return result;
}

__n128 ResourceInfo.init(fileInfo:lastSuccess:lastAttempt:lastAttemptStatusCode:downloadState:consecutiveFailures:assetValidationFailureInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10)
{
  v22 = *(a10 + 32);
  sub_227EE7808(a1, a9, &qword_27D80E8F0, &unk_227F2F4B0);
  v16 = type metadata accessor for ResourceInfo(0);
  sub_227EE7808(a2, a9 + v16[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EE7808(a3, a9 + v16[6], &unk_27D80E3B0, &unk_227F2DB00);
  v17 = a9 + v16[7];
  *v17 = a4;
  *(v17 + 8) = a5 & 1;
  sub_227EE7808(a6, a9 + v16[8], &qword_27D80E8F8, &qword_227F2F5E0);
  v18 = a9 + v16[9];
  *v18 = a7;
  *(v18 + 8) = a8 & 1;
  v19 = a9 + v16[10];
  result = *a10;
  v21 = *(a10 + 16);
  *v19 = *a10;
  *(v19 + 16) = v21;
  *(v19 + 32) = v22;
  return result;
}

uint64_t static ResourceInfo.initialState.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2813CDFF0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ResourceInfo(0);
  v3 = __swift_project_value_buffer(v2, qword_2813CDFF8);
  return sub_227EE7870(v3, a1, type metadata accessor for ResourceInfo);
}

void ResourceInfo.assetValidationFailureInfo.getter(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ResourceInfo(0) + 40));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  sub_227EC1BF4(v4, v5, v6, v7, v8);
}

uint64_t ResourceInfo.downloadStarted.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v1 + *(v6 + 32), v5, &qword_27D80E8F8, &qword_227F2F5E0);
  v7 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_227EB8430(v5, &qword_27D80E8F8, &qword_227F2F5E0);
    v8 = sub_227F2B234();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }

  else
  {
    v10 = *(v7 + 20);
    v11 = sub_227F2B234();
    v12 = *(v11 - 8);
    (*(v12 + 16))(a1, &v5[v10], v11);
    sub_227EE87D8(v5, type metadata accessor for ResourceInfo.DownloadState);
    return (*(v12 + 56))(a1, 0, 1, v11);
  }
}

uint64_t sub_227EE6188(char *a1)
{
  v51 = a1;
  v2 = sub_227F2B114();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  MEMORY[0x28223BE20](v6);
  v52 = v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v50 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v46 - v20;
  v22 = v1 + *(type metadata accessor for ResourceInfo(0) + 40);
  if (*(v22 + 32) == 1)
  {
    v46[0] = v5;
    v49 = v11;
    sub_227EC2180(v1, v13, &qword_27D80E8F0, &unk_227F2F4B0);
    v23 = type metadata accessor for FileInfo(0);
    v24 = *(v23 - 8);
    v47 = *(v24 + 48);
    v48 = v23;
    v46[1] = v24 + 48;
    if (v47(v13, 1) == 1)
    {
      sub_227EB8430(v13, &qword_27D80E8F0, &unk_227F2F4B0);
      v25 = *(v3 + 56);
      v25(v21, 1, 1, v2);
      (*(v3 + 16))(v19, v51, v2);
    }

    else
    {
      v27 = *(v3 + 16);
      v27(v21, v13, v2);
      sub_227EE87D8(v13, type metadata accessor for FileInfo);
      v25 = *(v3 + 56);
      v25(v21, 0, 1, v2);
      v27(v19, v51, v2);
    }

    v25(v19, 0, 1, v2);
    v28 = *(v6 + 48);
    v29 = v52;
    sub_227EC2180(v21, v52, &qword_27D80E310, &unk_227F2D990);
    sub_227EC2180(v19, v29 + v28, &qword_27D80E310, &unk_227F2D990);
    v30 = v3;
    v31 = v3;
    v32 = v29;
    v33 = *(v31 + 48);
    if (v33(v32, 1, v2) == 1)
    {
      sub_227EB8430(v19, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
      if (v33(v32 + v28, 1, v2) == 1)
      {
        sub_227EB8430(v32, &qword_27D80E310, &unk_227F2D990);
LABEL_13:
        v42 = v1;
        v43 = v49;
        sub_227EC2180(v42, v49, &qword_27D80E8F0, &unk_227F2F4B0);
        v44 = v48;
        if ((v47)(v43, 1, v48) != 1)
        {
          v26 = *(v43 + *(v44 + 24));

          sub_227EE87D8(v43, type metadata accessor for FileInfo);
          return v26;
        }

        v35 = &qword_27D80E8F0;
        v36 = &unk_227F2F4B0;
        v37 = v43;
        goto LABEL_15;
      }
    }

    else
    {
      v34 = v50;
      sub_227EC2180(v32, v50, &qword_27D80E310, &unk_227F2D990);
      if (v33(v32 + v28, 1, v2) != 1)
      {
        v38 = v46[0];
        (*(v30 + 32))(v46[0], v32 + v28, v2);
        sub_227EE48C8(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v39 = v34;
        v40 = sub_227F2B634();
        v41 = *(v30 + 8);
        v41(v38, v2);
        sub_227EB8430(v19, &qword_27D80E310, &unk_227F2D990);
        sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
        v41(v39, v2);
        sub_227EB8430(v52, &qword_27D80E310, &unk_227F2D990);
        if ((v40 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_13;
      }

      sub_227EB8430(v19, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
      (*(v30 + 8))(v34, v2);
    }

    v35 = &qword_27D80E4F8;
    v36 = &qword_227F2DE80;
    v37 = v32;
LABEL_15:
    sub_227EB8430(v37, v35, v36);
    return 0;
  }

  v26 = *(v22 + 24);

  return v26;
}

uint64_t sub_227EE6840()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x636375537473616CLL;
    if (v1 != 1)
    {
      v5 = 0x657474417473616CLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x6F666E49656C6966;
    }
  }

  else
  {
    v2 = 0xD00000000000001ALL;
    if (v1 == 5)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000015;
    if (v1 != 3)
    {
      v3 = 0x64616F6C6E776F64;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_227EE693C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EE9AE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EE6964(uint64_t a1)
{
  v2 = sub_227EE86DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EE69A0(uint64_t a1)
{
  v2 = sub_227EE86DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResourceInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E978, &qword_227F2F608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EE86DC();
  sub_227F2BD94();
  LOBYTE(v17) = 0;
  type metadata accessor for FileInfo(0);
  sub_227EE48C8(&qword_27D80E988, type metadata accessor for FileInfo, &protocol conformance descriptor for FileInfo);
  sub_227F2BBC4();
  if (!v2)
  {
    v9 = type metadata accessor for ResourceInfo(0);
    LOBYTE(v17) = 1;
    sub_227F2B234();
    sub_227EE48C8(&qword_27D80E870, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_227F2BBC4();
    LOBYTE(v17) = 2;
    sub_227F2BBC4();
    LOBYTE(v17) = 3;
    sub_227F2BBB4();
    LOBYTE(v17) = 4;
    type metadata accessor for ResourceInfo.DownloadState(0);
    sub_227EE48C8(&qword_27D80E990, type metadata accessor for ResourceInfo.DownloadState, &protocol conformance descriptor for ResourceInfo.DownloadState);
    sub_227F2BBC4();
    LOBYTE(v17) = 5;
    sub_227F2BBB4();
    v10 = (v3 + *(v9 + 40));
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v14 = v10[4];
    v17 = *v10;
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v21 = v14;
    v22 = 6;
    sub_227EC1BF4(v17, v11, v12, v13, v14);
    sub_227EE8730();
    sub_227F2BBC4();
    sub_227EC21E8(v17, v18, v19, v20, v21);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ResourceInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v11 - 8);
  v42 = &v39 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E9A0, &qword_227F2F610);
  v43 = *(v13 - 8);
  v44 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v39 - v14;
  v16 = type metadata accessor for ResourceInfo(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_227EE86DC();
  v20 = v45;
  sub_227F2BD74();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v21 = v10;
  v45 = v8;
  type metadata accessor for FileInfo(0);
  LOBYTE(v47) = 0;
  sub_227EE48C8(&qword_27D80E9A8, type metadata accessor for FileInfo, &protocol conformance descriptor for FileInfo);
  v22 = v42;
  v23 = v44;
  sub_227F2BB34();
  v24 = v18;
  sub_227EE7808(v22, v18, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F2B234();
  LOBYTE(v47) = 1;
  sub_227EE48C8(&qword_27D80E890, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_227F2BB34();
  v25 = v16;
  sub_227EE7808(v21, v24 + *(v16 + 20), &unk_27D80E3B0, &unk_227F2DB00);
  LOBYTE(v47) = 2;
  v26 = v45;
  sub_227F2BB34();
  sub_227EE7808(v26, v24 + v25[6], &unk_27D80E3B0, &unk_227F2DB00);
  LOBYTE(v47) = 3;
  v27 = sub_227F2BB24();
  v28 = v43;
  v29 = v24 + v25[7];
  *v29 = v27;
  *(v29 + 8) = v30 & 1;
  type metadata accessor for ResourceInfo.DownloadState(0);
  LOBYTE(v47) = 4;
  sub_227EE48C8(&qword_27D80E9B0, type metadata accessor for ResourceInfo.DownloadState, &protocol conformance descriptor for ResourceInfo.DownloadState);
  v31 = v41;
  sub_227F2BB34();
  sub_227EE7808(v31, v24 + v25[8], &qword_27D80E8F8, &qword_227F2F5E0);
  LOBYTE(v47) = 5;
  v32 = sub_227F2BB24();
  v33 = v24 + v25[9];
  *v33 = v32;
  *(v33 + 8) = v34 & 1;
  v50 = 6;
  sub_227EE8784();
  sub_227F2BB34();
  (*(v28 + 8))(v15, v23);
  v35 = v49;
  v36 = v24 + v25[10];
  v37 = v48;
  *v36 = v47;
  *(v36 + 16) = v37;
  *(v36 + 32) = v35;
  sub_227EE7870(v24, v40, type metadata accessor for ResourceInfo);
  __swift_destroy_boxed_opaque_existential_0(v46);
  return sub_227EE87D8(v24, type metadata accessor for ResourceInfo);
}

BOOL sub_227EE74C4(unint64_t a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, unint64_t a5, unsigned __int8 a6)
{
  if (!(a3 >> 6))
  {
    if (a6 > 0x3Fu)
    {
      return 0;
    }

    if (a3 <= 1u)
    {
      if (a3)
      {
        if (a6 != 1)
        {
          return 0;
        }

        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      if (!a6)
      {
        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      return 0;
    }

    if (a3 == 2)
    {
      if (a6 != 2)
      {
        return 0;
      }

      return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
    }

    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (a6 != 3 || a4 != 3)
        {
          return 0;
        }
      }

      else if (a6 != 3 || a4 != 2)
      {
        return 0;
      }
    }

    else
    {
      if (!(a1 | a2))
      {
        return a6 == 3 && !(a5 | a4);
      }

      if (a6 != 3 || a4 != 1)
      {
        return 0;
      }
    }

    return !a5;
  }

  if (a3 >> 6 != 1)
  {
    return (a6 & 0xC0) == 0x80 && !(a5 | a4) && a6 == 128;
  }

  if ((a6 & 0xC0) != 0x40)
  {
    return 0;
  }

  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return a5 == 1;
      }

LABEL_37:
      if (a5 >= 5)
      {
        return a1 == a4 && a2 == a5 || (sub_227F2BC64() & 1) != 0;
      }

      return 0;
    }

    return !a5;
  }

  if (a2 == 2)
  {
    return a5 == 2;
  }

  if (a2 == 3)
  {
    return a5 == 3;
  }

  if (a2 != 4)
  {
    goto LABEL_37;
  }

  return a5 == 4;
}

BOOL _s21RapidResourceDelivery0B4InfoV022AssetValidationFailureD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v2 <= 0xFB)
  {
    if (v5 > 0xFB || !sub_227EE74C4(*a1, *(a1 + 8), v2, *a2, *(a2 + 8), v5))
    {
      return 0;
    }
  }

  else if (v5 <= 0xFB)
  {
    return 0;
  }

  if (v4)
  {
    return v6 && (v3 == v7 && v4 == v6 || (sub_227F2BC64() & 1) != 0);
  }

  return !v6;
}

unint64_t sub_227EE770C()
{
  result = qword_27D80E958;
  if (!qword_27D80E958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E958);
  }

  return result;
}

unint64_t sub_227EE7760()
{
  result = qword_27D80E960;
  if (!qword_27D80E960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E960);
  }

  return result;
}

unint64_t sub_227EE77B4()
{
  result = qword_27D80E970;
  if (!qword_27D80E970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E970);
  }

  return result;
}

uint64_t sub_227EE7808(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_227EE7870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s21RapidResourceDelivery0B4InfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v105 = a2;
  v95 = type metadata accessor for ResourceInfo.DownloadState(0);
  v94 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v91 = &v89 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v4 - 8);
  v92 = &v89 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA88, &unk_227F2FE28);
  MEMORY[0x28223BE20](v93);
  v96 = &v89 - v6;
  v104 = sub_227F2B234();
  v101 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v97 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v100 = &v89 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8B0, &unk_227F2F420);
  v12 = MEMORY[0x28223BE20](v102);
  v99 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v89 - v14;
  v16 = type metadata accessor for FileInfo(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v89 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA90, &qword_227F2FE38);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v26 = &v89 - v25;
  v27 = *(v24 + 56);
  v103 = a1;
  sub_227EC2180(a1, &v89 - v25, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EC2180(v105, &v26[v27], &qword_27D80E8F0, &unk_227F2F4B0);
  v28 = *(v17 + 48);
  if (v28(v26, 1, v16) == 1)
  {
    if (v28(&v26[v27], 1, v16) == 1)
    {
      sub_227EB8430(v26, &qword_27D80E8F0, &unk_227F2F4B0);
      goto LABEL_8;
    }

LABEL_6:
    v29 = &qword_27D80EA90;
    v30 = &qword_227F2FE38;
    v31 = v26;
LABEL_20:
    sub_227EB8430(v31, v29, v30);
    return 0;
  }

  sub_227EC2180(v26, v22, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v28(&v26[v27], 1, v16) == 1)
  {
    sub_227EE87D8(v22, type metadata accessor for FileInfo);
    goto LABEL_6;
  }

  sub_227EE9D44(&v26[v27], v19, type metadata accessor for FileInfo);
  v32 = _s21RapidResourceDelivery8FileInfoV2eeoiySbAC_ACtFZ_0(v22, v19);
  sub_227EE87D8(v19, type metadata accessor for FileInfo);
  sub_227EE87D8(v22, type metadata accessor for FileInfo);
  sub_227EB8430(v26, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((v32 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v90 = type metadata accessor for ResourceInfo(0);
  v33 = v90[5];
  v34 = *(v102 + 48);
  sub_227EC2180(v103 + v33, v15, &unk_27D80E3B0, &unk_227F2DB00);
  v35 = v105;
  sub_227EC2180(v105 + v33, &v15[v34], &unk_27D80E3B0, &unk_227F2DB00);
  v36 = v101;
  v37 = *(v101 + 48);
  v38 = v104;
  if (v37(v15, 1, v104) == 1)
  {
    if (v37(&v15[v34], 1, v38) == 1)
    {
      sub_227EB8430(v15, &unk_27D80E3B0, &unk_227F2DB00);
      goto LABEL_14;
    }

LABEL_19:
    v29 = &qword_27D80E8B0;
    v30 = &unk_227F2F420;
    v31 = v15;
    goto LABEL_20;
  }

  v39 = v100;
  sub_227EC2180(v15, v100, &unk_27D80E3B0, &unk_227F2DB00);
  if (v37(&v15[v34], 1, v38) == 1)
  {
    (*(v36 + 8))(v39, v38);
    goto LABEL_19;
  }

  v40 = v98;
  (*(v36 + 32))(v98, &v15[v34], v38);
  sub_227EE48C8(&qword_27D80E8B8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v41 = sub_227F2B634();
  v38 = v104;
  v42 = v41;
  v43 = *(v36 + 8);
  v43(v40, v104);
  v43(v39, v38);
  sub_227EB8430(v15, &unk_27D80E3B0, &unk_227F2DB00);
  if ((v42 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v44 = v90[6];
  v45 = *(v102 + 48);
  v15 = v99;
  sub_227EC2180(v103 + v44, v99, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v35 + v44, &v15[v45], &unk_27D80E3B0, &unk_227F2DB00);
  if (v37(v15, 1, v38) == 1)
  {
    if (v37(&v15[v45], 1, v38) == 1)
    {
      sub_227EB8430(v15, &unk_27D80E3B0, &unk_227F2DB00);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  v46 = v97;
  sub_227EC2180(v15, v97, &unk_27D80E3B0, &unk_227F2DB00);
  if (v37(&v15[v45], 1, v38) == 1)
  {
    (*(v101 + 8))(v46, v38);
    goto LABEL_19;
  }

  v49 = v101;
  v50 = &v15[v45];
  v51 = v98;
  (*(v101 + 32))(v98, v50, v38);
  sub_227EE48C8(&qword_27D80E8B8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v52 = v46;
  v53 = sub_227F2B634();
  v54 = *(v49 + 8);
  v54(v51, v38);
  v54(v52, v38);
  sub_227EB8430(v15, &unk_27D80E3B0, &unk_227F2DB00);
  if ((v53 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v55 = v90[7];
  v56 = (v103 + v55);
  v57 = *(v103 + v55 + 8);
  v58 = (v35 + v55);
  v59 = *(v35 + v55 + 8);
  if (v57)
  {
    if (!v59)
    {
      return 0;
    }
  }

  else
  {
    if (*v56 != *v58)
    {
      LOBYTE(v59) = 1;
    }

    if (v59)
    {
      return 0;
    }
  }

  v60 = v90[8];
  v61 = *(v93 + 48);
  v62 = v96;
  sub_227EC2180(v103 + v60, v96, &qword_27D80E8F8, &qword_227F2F5E0);
  v63 = v35 + v60;
  v64 = v62;
  sub_227EC2180(v63, v62 + v61, &qword_27D80E8F8, &qword_227F2F5E0);
  v65 = *(v94 + 48);
  v66 = v95;
  if (v65(v62, 1, v95) != 1)
  {
    v72 = v92;
    sub_227EC2180(v64, v92, &qword_27D80E8F8, &qword_227F2F5E0);
    if (v65(v64 + v61, 1, v66) != 1)
    {
      v73 = v64 + v61;
      v74 = v91;
      sub_227EE9D44(v73, v91, type metadata accessor for ResourceInfo.DownloadState);
      if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
      {
        v75 = sub_227F2B1F4();
        sub_227EE87D8(v74, type metadata accessor for ResourceInfo.DownloadState);
        sub_227EE87D8(v72, type metadata accessor for ResourceInfo.DownloadState);
        sub_227EB8430(v64, &qword_27D80E8F8, &qword_227F2F5E0);
        if ((v75 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_33;
      }

      sub_227EE87D8(v74, type metadata accessor for ResourceInfo.DownloadState);
      sub_227EE87D8(v72, type metadata accessor for ResourceInfo.DownloadState);
      v29 = &qword_27D80E8F8;
      v30 = &qword_227F2F5E0;
      goto LABEL_39;
    }

    sub_227EE87D8(v72, type metadata accessor for ResourceInfo.DownloadState);
LABEL_38:
    v29 = &qword_27D80EA88;
    v30 = &unk_227F2FE28;
LABEL_39:
    v31 = v64;
    goto LABEL_20;
  }

  if (v65(v62 + v61, 1, v66) != 1)
  {
    goto LABEL_38;
  }

  sub_227EB8430(v62, &qword_27D80E8F8, &qword_227F2F5E0);
LABEL_33:
  v67 = v90[9];
  v68 = (v103 + v67);
  v69 = *(v103 + v67 + 8);
  v70 = (v35 + v67);
  v71 = *(v35 + v67 + 8);
  if (v69)
  {
    if (!v71)
    {
      return 0;
    }
  }

  else
  {
    if (*v68 != *v70)
    {
      LOBYTE(v71) = 1;
    }

    if (v71)
    {
      return 0;
    }
  }

  v76 = v90[10];
  v77 = (v103 + v76);
  v79 = *(v103 + v76);
  v78 = *(v103 + v76 + 8);
  v81 = *(v103 + v76 + 16);
  v80 = *(v103 + v76 + 24);
  v82 = *(v103 + v76 + 32);
  v83 = (v35 + v76);
  v85 = *v83;
  v84 = v83[1];
  v87 = v83[2];
  v86 = v83[3];
  v88 = v83[4];
  if (v82 == 1)
  {
    sub_227EC1BF4(*v77, v77[1], v77[2], v77[3], 1);
    if (v88 == 1)
    {
      v47 = 1;
      sub_227EC1BF4(v85, v84, v87, v86, 1);
      sub_227EC21E8(v79, v78, v81, v80, 1);
      return v47;
    }

    sub_227EC1BF4(v85, v84, v87, v86, v88);
  }

  else
  {
    v111 = v79;
    v112 = v78;
    v113 = v81;
    v114 = v80;
    v115 = v82;
    if (v88 != 1)
    {
      v106 = v85;
      v107 = v84;
      v108 = v87;
      v109 = v86;
      v110 = v88;
      LODWORD(v105) = _s21RapidResourceDelivery0B4InfoV022AssetValidationFailureD0V2eeoiySbAE_AEtFZ_0(&v111, &v106);
      v102 = v107;
      v103 = v106;
      v104 = v110;
      LODWORD(v101) = v108;
      sub_227EC1BF4(v79, v78, v81, v80, v82);
      sub_227EC1BF4(v85, v84, v87, v86, v88);
      sub_227EC1BF4(v79, v78, v81, v80, v82);
      sub_227EC222C(v103, v102, v101);

      sub_227EC222C(v111, v112, v113);

      sub_227EC21E8(v79, v78, v81, v80, v82);
      return (v105 & 1) != 0;
    }

    sub_227EC1BF4(v79, v78, v81, v80, v82);
    sub_227EC1BF4(v85, v84, v87, v86, 1);
    sub_227EC1BF4(v79, v78, v81, v80, v82);
    sub_227EC222C(v79, v78, v81);
  }

  sub_227EC21E8(v79, v78, v81, v80, v82);
  sub_227EC21E8(v85, v84, v87, v86, v88);
  return 0;
}

unint64_t sub_227EE86DC()
{
  result = qword_27D80E980;
  if (!qword_27D80E980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E980);
  }

  return result;
}

unint64_t sub_227EE8730()
{
  result = qword_27D80E998;
  if (!qword_27D80E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E998);
  }

  return result;
}

unint64_t sub_227EE8784()
{
  result = qword_27D80E9B8;
  if (!qword_27D80E9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9B8);
  }

  return result;
}

uint64_t sub_227EE87D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_227EE8860(uint64_t a1)
{
  sub_227EE89A4(319, qword_2813CD7A8, type metadata accessor for FileInfo);
  if (v1 <= 0x3F)
  {
    sub_227EE89A4(319, &qword_2813CE030, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      sub_227EC24C4(319, &qword_2813CD548, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_227EE89A4(319, qword_2813CDFB0, type metadata accessor for ResourceInfo.DownloadState);
        if (v4 <= 0x3F)
        {
          sub_227EC24C4(319, &qword_2813CE010, &type metadata for ResourceInfo.AssetValidationFailureInfo);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_227EE89A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_227F2B924();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_227EE8A20(uint64_t a1)
{
  result = sub_227F2B114();
  if (v2 <= 0x3F)
  {
    result = sub_227F2B234();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B12ManagerErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B4InfoV20AssetValidationErrorO(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1;
  v3 = v1 >> 6;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery0B4InfoV20AssetValidationErrorOSg(uint64_t a1)
{
  v1 = *(a1 + 16) & 0x3C | (*(a1 + 16) >> 6);
  v2 = v1 ^ 0x3F;
  v3 = 64 - v1;
  if (v2 >= 0x3D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EE8B00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_227EE8B5C(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t sub_227EE8BD8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 17))
  {
    return (*a1 + 62);
  }

  v3 = (*(a1 + 16) & 0x3C | (*(a1 + 16) >> 6)) ^ 0x3F;
  if (v3 >= 0x3D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_227EE8C28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 16) = 0;
    *result = a2 - 62;
    *(result + 8) = 0;
    if (a3 >= 0x3E)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 4 * (((-a2 >> 2) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_227EE8C8C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 3 | (a2 << 6);
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 16) = 0x80;
  }

  return result;
}

unint64_t sub_227EE8CEC()
{
  result = qword_27D80E9C0;
  if (!qword_27D80E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9C0);
  }

  return result;
}

unint64_t sub_227EE8D44()
{
  result = qword_27D80E9C8;
  if (!qword_27D80E9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9C8);
  }

  return result;
}

unint64_t sub_227EE8D9C()
{
  result = qword_27D80E9D0;
  if (!qword_27D80E9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9D0);
  }

  return result;
}

unint64_t sub_227EE8DF4()
{
  result = qword_27D80E9D8;
  if (!qword_27D80E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9D8);
  }

  return result;
}

unint64_t sub_227EE8E4C()
{
  result = qword_27D80E9E0;
  if (!qword_27D80E9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9E0);
  }

  return result;
}

unint64_t sub_227EE8EA4()
{
  result = qword_27D80E9E8;
  if (!qword_27D80E9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9E8);
  }

  return result;
}

unint64_t sub_227EE8EFC()
{
  result = qword_27D80E9F0;
  if (!qword_27D80E9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9F0);
  }

  return result;
}

unint64_t sub_227EE8F54()
{
  result = qword_27D80E9F8;
  if (!qword_27D80E9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E9F8);
  }

  return result;
}

unint64_t sub_227EE8FAC()
{
  result = qword_27D80EA00;
  if (!qword_27D80EA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA00);
  }

  return result;
}

unint64_t sub_227EE9000()
{
  result = qword_27D80EA28;
  if (!qword_27D80EA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA28);
  }

  return result;
}

unint64_t sub_227EE9054()
{
  result = qword_27D80EA30;
  if (!qword_27D80EA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA30);
  }

  return result;
}

unint64_t sub_227EE90A8()
{
  result = qword_27D80EA38;
  if (!qword_27D80EA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA38);
  }

  return result;
}

unint64_t sub_227EE90FC()
{
  result = qword_27D80EA40;
  if (!qword_27D80EA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA40);
  }

  return result;
}

unint64_t sub_227EE9150()
{
  result = qword_27D80EA48;
  if (!qword_27D80EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA48);
  }

  return result;
}

unint64_t sub_227EE91A4()
{
  result = qword_27D80EA50;
  if (!qword_27D80EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA50);
  }

  return result;
}

uint64_t sub_227EE91F8(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
  if (swift_dynamicCast())
  {

    v3 = v5;
  }

  else
  {

    v7 = a1;
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {

      return 0;
    }
  }

  return v3;
}

uint64_t sub_227EE92E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF726567616E614DLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

void *sub_227EE9404(void *a1)
{
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA58, &qword_227F2FDF8);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v25 - v2;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA60, &qword_227F2FE00);
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA68, &qword_227F2FE08);
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EA70, &unk_227F2FE10);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - v10;
  v12 = a1[3];
  v37 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_227EE9000();
  v14 = v31;
  sub_227F2BD74();
  if (!v14)
  {
    v31 = v5;
    v15 = v30;
    v16 = sub_227F2BB74();
    v17 = (2 * *(v16 + 16)) | 1;
    v33 = v16;
    v34 = v16 + 32;
    v35 = 0;
    v36 = v17;
    v18 = sub_227EC19A4();
    if (v18 == 3 || v35 != v36 >> 1)
    {
      v20 = sub_227F2B9E4();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
      *v22 = &type metadata for ResourceInfo.AssetValidationError;
      v13 = v11;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      if (v18 == 1)
      {
        LOBYTE(v32) = 1;
        sub_227EE90FC();
        sub_227F2BAE4();
        sub_227EE9A90();
        v19 = v25;
        sub_227F2BB64();
        (*(v28 + 8))(v4, v19);
      }

      else
      {
        LOBYTE(v32) = 2;
        sub_227EE9054();
        sub_227F2BAE4();
        sub_227EE9A3C();
        v24 = v27;
        sub_227F2BB64();
        (*(v29 + 8))(v15, v24);
      }

      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = v32;
    }

    else
    {
      LOBYTE(v32) = 0;
      sub_227EE91A4();
      sub_227F2BAE4();
      (*(v26 + 8))(v7, v31);
      (*(v9 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v37);
  return v13;
}

unint64_t sub_227EE9A3C()
{
  result = qword_27D80EA78;
  if (!qword_27D80EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA78);
  }

  return result;
}

unint64_t sub_227EE9A90()
{
  result = qword_27D80EA80;
  if (!qword_27D80EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA80);
  }

  return result;
}

uint64_t sub_227EE9AE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F666E49656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657474417473616CLL && a2 == 0xEB0000000074706DLL || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34080 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000227F340A0 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000227F340C0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_227EE9D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_227EE9DF0()
{
  result = qword_27D80EA98;
  if (!qword_27D80EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EA98);
  }

  return result;
}

unint64_t sub_227EE9E48()
{
  result = qword_27D80EAA0;
  if (!qword_27D80EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAA0);
  }

  return result;
}

unint64_t sub_227EE9EA0()
{
  result = qword_27D80EAA8;
  if (!qword_27D80EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAA8);
  }

  return result;
}

unint64_t sub_227EE9EF8()
{
  result = qword_27D80EAB0;
  if (!qword_27D80EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAB0);
  }

  return result;
}

unint64_t sub_227EE9F50()
{
  result = qword_27D80EAB8;
  if (!qword_27D80EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAB8);
  }

  return result;
}

unint64_t sub_227EE9FA8()
{
  result = qword_27D80EAC0;
  if (!qword_27D80EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAC0);
  }

  return result;
}

unint64_t sub_227EEA000()
{
  result = qword_27D80EAC8;
  if (!qword_27D80EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAC8);
  }

  return result;
}

unint64_t sub_227EEA058()
{
  result = qword_27D80EAD0;
  if (!qword_27D80EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAD0);
  }

  return result;
}

unint64_t sub_227EEA0B0()
{
  result = qword_27D80EAD8;
  if (!qword_27D80EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAD8);
  }

  return result;
}

unint64_t sub_227EEA108()
{
  result = qword_27D80EAE0;
  if (!qword_27D80EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAE0);
  }

  return result;
}

unint64_t sub_227EEA160()
{
  result = qword_27D80EAE8;
  if (!qword_27D80EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EAE8);
  }

  return result;
}

void (**sub_227EEA1D8(char *a1, uint64_t a2))(char *, uint64_t)
{
  v37 = a2;
  v33 = *v2;
  v32 = sub_227F2AFF4();
  v40 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_227F2B114();
  v34 = *(v36 - 8);
  v6 = MEMORY[0x28223BE20](v36);
  v31 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v13 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_logger;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v14 = sub_227F2B334();
  v15 = __swift_project_value_buffer(v14, qword_2813CE088);
  v16 = *(v14 - 8);
  (*(v16 + 16))(&v2[v13], v15, v14);
  v17 = v35;
  sub_227F2A3D0(v10);
  if (v17)
  {

    (*(v34 + 8))(a1, v36);
    (*(v16 + 8))(&v2[v13], v14);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v38 = 0x736A2E65726F7473;
    v39 = 0xEA00000000006E6FLL;
    v30 = *MEMORY[0x277CC91D8];
    v18 = v40;
    v29 = *(v40 + 104);
    v19 = v32;
    v29(v5);
    v28 = sub_227EB84D8();
    v35 = 0;
    sub_227F2B104();
    v20 = *(v18 + 8);
    v40 = v18 + 8;
    v33 = v20;
    v20(v5, v19);
    v21 = v34;
    v27 = *(v34 + 8);
    v22 = v10;
    v23 = v36;
    v27(v22, v36);
    v34 = *(v21 + 32);
    (v34)(&v2[OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL], v12, v23);
    v38 = 0xD000000000000010;
    v39 = 0x8000000227F34140;
    (v29)(v5, v30, v19);
    v24 = v31;
    sub_227F2B104();

    v27(a1, v23);
    v33(v5, v19);
    (v34)(&v2[OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL], v24, v23);
  }

  return v2;
}

id sub_227EEA6D4(const char *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B304();
  v3 = sub_227F2B8D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227EB2000, v2, v3, a1, v4, 2u);
    MEMORY[0x22AAAD240](v4, -1, -1);
  }

  v5 = [objc_opt_self() defaultManager];
  v6 = sub_227F2B044();
  v10[0] = 0;
  v7 = [v5 removeItemAtURL:v6 error:v10];

  if (v7)
  {
    return v10[0];
  }

  v9 = v10[0];
  sub_227F2AFC4();

  return swift_willThrow();
}

void sub_227EEA850(void (*a1)(void))
{
  v3 = [objc_opt_self() defaultManager];
  sub_227F2B0B4();
  v4 = sub_227F2B644();

  v5 = [v3 fileExistsAtPath_];

  if (v5)
  {
    v6 = sub_227F2B304();
    v7 = sub_227F2B8E4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_227EB2000, v6, v7, "Found unfinished transaction. Nuking the store", v8, 2u);
      MEMORY[0x22AAAD240](v8, -1, -1);
    }

    a1();
    sub_227EEA6D4("Cleaning the store");
    if (!v1)
    {
      sub_227EEA6D4("Unlocking transaction");
    }
  }
}

uint64_t sub_227EEA9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v10 = sub_227F2B304();
  v11 = sub_227F2B8D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_227EB2000, v10, v11, "Updating store files", v12, 2u);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  sub_227EDF9FC(a4, a5, a6);
  if (!v6)
  {

    v13 = sub_227F2B304();
    v14 = sub_227F2B8D4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v21 = v20;
      *v15 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v16 = sub_227F2BC24();
      v18 = sub_227ECAC40(v16, v17, &v21);

      *(v15 + 4) = v18;
      _os_log_impl(&dword_227EB2000, v13, v14, "Updating the store file %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAAD240](v20, -1, -1);
      MEMORY[0x22AAAD240](v15, -1, -1);
    }

    sub_227F2B174();
  }

  return sub_227ECD7FC(a5, a6);
}

uint64_t sub_227EEABE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_227F2B304();
  v4 = sub_227F2B8D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_227EB2000, v3, v4, "Updating store files", v5, 2u);
    MEMORY[0x22AAAD240](v5, -1, -1);
  }

  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    sub_227F2B114();
    sub_227ECE404();
    v10 = sub_227F2BC24();
    v12 = sub_227ECAC40(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_227EB2000, v6, v7, "Updating the store file %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAAD240](v9, -1, -1);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  return sub_227F2B174();
}

uint64_t sub_227EEADE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, "Updating store files", v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  result = sub_227EDD188(a4);
  if (!v4)
  {

    v10 = sub_227F2B304();
    v11 = sub_227F2B8D4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v14 = sub_227F2BC24();
      v16 = sub_227ECAC40(v14, v15, &v17);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_227EB2000, v10, v11, "Updating the store file %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAAD240](v13, -1, -1);
      MEMORY[0x22AAAD240](v12, -1, -1);
    }

    return sub_227F2B174();
  }

  return result;
}

uint64_t sub_227EEAFE0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_227EB2000, v7, v8, "Updating store files", v9, 2u);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  result = a2();
  if (!v5)
  {

    v11 = sub_227F2B304();
    v12 = sub_227F2B8D4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315138;
      sub_227F2B114();
      sub_227ECE404();
      v15 = sub_227F2BC24();
      v17 = sub_227ECAC40(v15, v16, &v18);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_227EB2000, v11, v12, "Updating the store file %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x22AAAD240](v14, -1, -1);
      MEMORY[0x22AAAD240](v13, -1, -1);
    }

    return sub_227F2B174();
  }

  return result;
}

id sub_227EEB1E0(uint64_t (*a1)(uint64_t))
{
  v3 = sub_227F2B304();
  v4 = sub_227F2B8D4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_227EB2000, v3, v4, "Starting transaction", v5, 2u);
    MEMORY[0x22AAAD240](v5, -1, -1);
  }

  v6 = sub_227F2B304();
  v7 = sub_227F2B8D4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_227EB2000, v6, v7, "Locking transaction", v8, 2u);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  v9 = sub_227F2B174();
  if (v1)
  {
    v10 = v1;
    v11 = sub_227F2B304();
    v12 = sub_227F2B8E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_227EB2000, v11, v12, "Transaction failed: %@", v13, 0xCu);
      sub_227EEBAE0(v14);
      MEMORY[0x22AAAD240](v14, -1, -1);
      MEMORY[0x22AAAD240](v13, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
    return swift_willThrow();
  }

  else
  {
    a1(v9);
    v18 = sub_227F2B304();
    v19 = sub_227F2B8D4();
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_227EB2000, v18, v19, "Finishing transaction", v21, 2u);
      MEMORY[0x22AAAD240](v21, -1, -1);
    }

    return sub_227EEA6D4("Unlocking transaction");
  }
}

uint64_t sub_227EEB4E8()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_storeFileURL;
  v4 = sub_227F2B114();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC21RapidResourceDelivery13StorageHelper_transactionFileURL, v4);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v6, v7);
}

uint64_t type metadata accessor for StorageHelper(uint64_t a1)
{
  result = qword_2813CDC60;
  if (!qword_2813CDC60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EEB648(uint64_t a1)
{
  result = sub_227F2B334();
  if (v2 <= 0x3F)
  {
    result = sub_227F2B114();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void (**sub_227EEB714@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>))(char *, uint64_t)
{
  v7 = swift_allocObject();
  result = sub_227EEA1D8(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_227EEB77C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  sub_227EE3508(a6, a7);
  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Starting transaction", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  v14 = sub_227F2B304();
  v15 = sub_227F2B8D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_227EB2000, v14, v15, "Locking transaction", v16, 2u);
    MEMORY[0x22AAAD240](v16, -1, -1);
  }

  sub_227F2B174();
  if (v7)
  {
    v17 = v7;
    v18 = sub_227F2B304();
    v19 = sub_227F2B8E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v7;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_227EB2000, v18, v19, "Transaction failed: %@", v20, 0xCu);
      sub_227EEBAE0(v21);
      MEMORY[0x22AAAD240](v21, -1, -1);
      MEMORY[0x22AAAD240](v20, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
    swift_willThrow();
  }

  else
  {
    sub_227EE3508(a6, a7);
    sub_227EEA9C4(a2, a3, a4, a5, a6, a7);
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227EB2000, v24, v25, "Finishing transaction", v26, 2u);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
  }

  sub_227EC15A8(a3, a4);
  return sub_227ECD7FC(a6, a7);
}

uint64_t sub_227EEBAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4A0, &qword_227F2DE40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227EEBB48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_227F2B304();
  v9 = sub_227F2B8D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_227EB2000, v8, v9, "Starting transaction", v10, 2u);
    MEMORY[0x22AAAD240](v10, -1, -1);
  }

  v11 = sub_227F2B304();
  v12 = sub_227F2B8D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_227EB2000, v11, v12, "Locking transaction", v13, 2u);
    MEMORY[0x22AAAD240](v13, -1, -1);
  }

  sub_227F2B174();
  if (v4)
  {
    v14 = v4;
    v15 = sub_227F2B304();
    v16 = sub_227F2B8E4();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v4;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_227EB2000, v15, v16, "Transaction failed: %@", v17, 0xCu);
      sub_227EEBAE0(v18);
      MEMORY[0x22AAAD240](v18, -1, -1);
      MEMORY[0x22AAAD240](v17, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
    swift_willThrow();
  }

  else
  {
    sub_227EEABE4(a2, a3, a4);
    v21 = sub_227F2B304();
    v22 = sub_227F2B8D4();
    if (os_log_type_enabled(v21, v22))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_227EB2000, v21, v22, "Finishing transaction", v24, 2u);
      MEMORY[0x22AAAD240](v24, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
  }
}

uint64_t sub_227EEBE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_227F2B304();
  v10 = sub_227F2B8D4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_227EB2000, v9, v10, "Starting transaction", v11, 2u);
    MEMORY[0x22AAAD240](v11, -1, -1);
  }

  v12 = sub_227F2B304();
  v13 = sub_227F2B8D4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_227EB2000, v12, v13, "Locking transaction", v14, 2u);
    MEMORY[0x22AAAD240](v14, -1, -1);
  }

  sub_227F2B174();
  if (v5)
  {
    v15 = v5;
    v16 = sub_227F2B304();
    v17 = sub_227F2B8E4();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v5;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_227EB2000, v16, v17, "Transaction failed: %@", v19, 0xCu);
      sub_227EEBAE0(v20);
      MEMORY[0x22AAAD240](v20, -1, -1);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
    swift_willThrow();
  }

  else
  {
    sub_227EEADE0(a2, a3, a4, a5);
    v23 = sub_227F2B304();
    v24 = sub_227F2B8D4();
    if (os_log_type_enabled(v23, v24))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227EB2000, v23, v24, "Finishing transaction", v26, 2u);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
  }
}

uint64_t sub_227EEC19C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_227F2B304();
  v11 = sub_227F2B8D4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_227EB2000, v10, v11, "Starting transaction", v12, 2u);
    MEMORY[0x22AAAD240](v12, -1, -1);
  }

  v13 = sub_227F2B304();
  v14 = sub_227F2B8D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_227EB2000, v13, v14, "Locking transaction", v15, 2u);
    MEMORY[0x22AAAD240](v15, -1, -1);
  }

  sub_227F2B174();
  if (v6)
  {
    v16 = v6;
    v17 = sub_227F2B304();
    v18 = sub_227F2B8E4();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v6;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_227EB2000, v17, v18, "Transaction failed: %@", v20, 0xCu);
      sub_227EEBAE0(v21);
      MEMORY[0x22AAAD240](v21, -1, -1);
      MEMORY[0x22AAAD240](v20, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
    swift_willThrow();
  }

  else
  {
    sub_227EEAFE0(a2, a3, a4, a5, a6);
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (os_log_type_enabled(v24, v25))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_227EB2000, v24, v25, "Finishing transaction", v27, 2u);
      MEMORY[0x22AAAD240](v27, -1, -1);
    }

    sub_227EEA6D4("Unlocking transaction");
  }
}

void sub_227EEC4F4()
{
  v2 = v1;
  v297[1] = *MEMORY[0x277D85DE8];
  v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF0, &qword_227F302A0);
  v248 = *(v249 - 8);
  MEMORY[0x28223BE20](v249);
  v247 = v242 - v3;
  v296 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  *&v261 = *(v296 - 8);
  v4 = MEMORY[0x28223BE20](v296);
  v269 = v242 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v274 = v242 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v268 = v242 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v281 = v242 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v280 = v242 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v276 = v242 - v15;
  MEMORY[0x28223BE20](v14);
  v266 = v242 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v17 - 8);
  v265 = (v242 - v18);
  v293 = sub_227F2B234();
  v290 = *(v293 - 8);
  v19 = MEMORY[0x28223BE20](v293);
  v257 = v242 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v273 = v242 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v285 = v242 - v24;
  MEMORY[0x28223BE20](v23);
  *&v264 = v242 - v25;
  v279 = sub_227F2AFA4();
  v292 = *(v279 - 8);
  v26 = MEMORY[0x28223BE20](v279);
  v272 = (v242 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v278 = v242 - v28;
  v29 = sub_227F2B114();
  v253 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v275 = v242 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v263 = v242 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v255 = v242 - v35;
  MEMORY[0x28223BE20](v34);
  v289 = v242 - v36;
  v37 = type metadata accessor for DirectoryCleaner(0);
  v38 = MEMORY[0x28223BE20](v37 - 8);
  v256 = v242 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v270 = v242 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v245 = v242 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v246 = v242 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = v242 - v46;
  v267 = objc_opt_self();
  v48 = [v267 defaultManager];
  v277 = v0;
  v49 = sub_227F2B044();
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E000, &qword_227F2C9D0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_227F2E510;
  v51 = *MEMORY[0x277CBE868];
  v52 = *MEMORY[0x277CBE7B0];
  *(v50 + 32) = *MEMORY[0x277CBE868];
  *(v50 + 40) = v52;
  type metadata accessor for URLResourceKey(0);
  v53 = v51;
  v287 = v52;
  v54 = sub_227F2B794();

  v297[0] = 0;
  v55 = [v48 contentsOfDirectoryAtURL:v49 includingPropertiesForKeys:v54 options:0 error:v297];

  v56 = v297[0];
  if (!v55)
  {
    v114 = v297[0];
    sub_227F2AFC4();

    swift_willThrow();
    return;
  }

  v57 = sub_227F2B7A4();
  v58 = v56;

  v59 = *(v57 + 16);
  if (v59 > 2)
  {
    v60 = v29;
    v61 = sub_227F2A014(0, v59, 0, MEMORY[0x277D84F90]);
    v62 = v61;
    v63 = *(v57 + 16);
    if (v63)
    {
      v262 = v61;
      v294 = *(v253 + 16);
      v64 = (*(v253 + 80) + 32) & ~*(v253 + 80);
      v242[1] = v57;
      v65 = (v57 + v64);
      v295 = v253 + 16;
      v283 = *(v253 + 72);
      v284 = (v253 + 8);
      v260 = (v292 + 32);
      v259 = (v290 + 6);
      v252 = (v290 + 4);
      v251 = (v290 + 2);
      v250 = (v290 + 1);
      v258 = (v292 + 8);
      *(&v66 + 1) = 2;
      v282 = xmmword_227F2C980;
      *&v66 = 136315138;
      v243 = v66;
      *&v66 = 136315394;
      v254 = v66;
      v67 = v272;
      v68 = v275;
      v69 = v289;
      do
      {
        v291 = v65;
        v292 = v63;
        (v294)(v69);
        inited = swift_initStackObject();
        *(inited + 16) = v282;
        v73 = v287;
        *(inited + 32) = v287;
        v74 = v73;
        sub_227F2AA7C(inited);
        swift_setDeallocating();
        sub_227EEE864(inited + 32, type metadata accessor for URLResourceKey);
        sub_227F2B014();
        if (v2)
        {

          if (qword_2813CD580 != -1)
          {
            swift_once();
          }

          v75 = sub_227F2B334();
          __swift_project_value_buffer(v75, qword_2813CE088);
          (v294)(v68, v69, v60);
          v76 = v2;
          v77 = sub_227F2B304();
          v78 = v68;
          v79 = sub_227F2B8E4();

          if (os_log_type_enabled(v77, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v286 = v2;
            v82 = v81;
            v271 = swift_slowAlloc();
            v297[0] = v271;
            *v80 = v254;
            sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v83 = sub_227F2BC24();
            v85 = v84;
            v86 = v78;
            v87 = *v284;
            (*v284)(v86, v60);
            v88 = sub_227ECAC40(v83, v85, v297);
            v67 = v272;

            *(v80 + 4) = v88;
            *(v80 + 12) = 2112;
            v89 = v286;
            v90 = v286;
            v91 = _swift_stdlib_bridgeErrorToNSError();
            *(v80 + 14) = v91;
            *v82 = v91;
            _os_log_impl(&dword_227EB2000, v77, v79, "unable to retrieve contentModificationDate for %s: %@", v80, 0x16u);
            sub_227EB8430(v82, &qword_27D80E4A0, &qword_227F2DE40);
            MEMORY[0x22AAAD240](v82, -1, -1);
            v92 = v271;
            __swift_destroy_boxed_opaque_existential_0(v271);
            MEMORY[0x22AAAD240](v92, -1, -1);
            MEMORY[0x22AAAD240](v80, -1, -1);

            v93 = v289;
            v87(v289, v60);
            v2 = 0;
            v68 = v275;
            v69 = v93;
          }

          else
          {

            v70 = *v284;
            (*v284)(v78, v60);
            v71 = v289;
            v70(v289, v60);
            v2 = 0;
            v68 = v78;
            v69 = v71;
          }
        }

        else
        {

          (*v260)(v278, v67, v279);
          v94 = v265;
          sub_227F2AF74();
          v95 = v293;
          if ((*v259)(v94, 1, v293) == 1)
          {
            sub_227EB8430(v94, &unk_27D80E3B0, &unk_227F2DB00);
            v96 = v255;
            if (qword_2813CD580 != -1)
            {
              swift_once();
            }

            v97 = sub_227F2B334();
            __swift_project_value_buffer(v97, qword_2813CE088);
            (v294)(v96, v289, v60);
            v98 = sub_227F2B304();
            v99 = sub_227F2B8E4();
            if (os_log_type_enabled(v98, v99))
            {
              v100 = swift_slowAlloc();
              v244 = swift_slowAlloc();
              v297[0] = v244;
              *v100 = v243;
              sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              v101 = sub_227F2BC24();
              v286 = 0;
              v103 = v102;
              v271 = *v284;
              (v271)(v96, v60);
              v104 = sub_227ECAC40(v101, v103, v297);
              v2 = v286;
              v68 = v275;

              *(v100 + 4) = v104;
              _os_log_impl(&dword_227EB2000, v98, v99, "unexpected missing contentModificationDate at %s", v100, 0xCu);
              v105 = v244;
              __swift_destroy_boxed_opaque_existential_0(v244);
              MEMORY[0x22AAAD240](v105, -1, -1);
              MEMORY[0x22AAAD240](v100, -1, -1);

              (*v258)(v278, v279);
              v69 = v289;
              (v271)(v289, v60);
            }

            else
            {

              v113 = *v284;
              (*v284)(v96, v60);
              (*v258)(v278, v279);
              v69 = v289;
              v113(v289, v60);
            }

            v67 = v272;
          }

          else
          {
            v106 = v264;
            (*v252)(v264, v94, v95);
            v107 = *(v296 + 48);
            v108 = v266;
            (v294)(v266, v69, v60);
            (*v251)(&v108[v107], v106, v95);
            v109 = v262;
            v111 = v262[2];
            v110 = v262[3];
            if (v111 >= v110 >> 1)
            {
              v109 = sub_227F2A014((v110 > 1), v111 + 1, 1, v262);
            }

            (*v250)(v264, v293);
            (*v258)(v278, v279);
            (*v284)(v69, v60);
            v109[2] = v111 + 1;
            v112 = (*(v261 + 80) + 32) & ~*(v261 + 80);
            v262 = v109;
            sub_227EEE9C4(v266, v109 + v112 + *(v261 + 72) * v111);
            v68 = v275;
          }
        }

        v65 = &v291[v283];
        v63 = v292 - 1;
      }

      while (v292 != 1);
      v286 = v2;

      v62 = v262;
    }

    else
    {
      v286 = v1;
    }

    v297[0] = v62;
    swift_getKeyPath();
    sub_227EEE97C(&qword_27D80E908, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);

    v124 = v247;
    sub_227F2AF44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB00, &unk_227F302D0);
    sub_227EEE8C4(&qword_27D80EB08, &qword_27D80EB00, &unk_227F302D0, MEMORY[0x277D83970]);
    sub_227EEE8C4(&qword_27D80EB10, &qword_27D80EAF0, &qword_227F302A0, MEMORY[0x277CC8C98]);
    v125 = v249;
    v126 = sub_227F2B764();
    (*(v248 + 8))(v124, v125);

    v127 = v126[2];
    v128 = v246;
    if (v127 < 2)
    {
      __break(1u);
    }

    else
    {
      v295 = (*(v261 + 80) + 32) & ~*(v261 + 80);
      v129 = v276;
      sub_227EEE90C(v126 + v295, v276);

      v130 = v129 + *(v296 + 48);
      v287 = v290[4];
      v288 = (v290 + 4);
      (v287)(v285, v130, v293);
      v131 = *(v253 + 8);
      v279 = v253 + 8;
      v278 = v131;
      (v131)(v129, v60);
      if (qword_2813CD580 == -1)
      {
        goto LABEL_32;
      }
    }

    swift_once();
LABEL_32:
    v132 = sub_227F2B334();
    v133 = __swift_project_value_buffer(v132, qword_2813CE088);
    sub_227EEE800(v277, v128);

    v275 = v133;
    v134 = sub_227F2B304();
    v135 = sub_227F2B8D4();

    v136 = os_log_type_enabled(v134, v135);
    v289 = v60;
    v294 = v127;
    if (v136)
    {
      v137 = swift_slowAlloc();
      v138 = swift_slowAlloc();
      v297[0] = v138;
      *v137 = 136315394;
      sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v139 = sub_227F2BC24();
      v141 = v140;
      sub_227EEE864(v128, type metadata accessor for DirectoryCleaner);
      v142 = sub_227ECAC40(v139, v141, v297);

      *(v137 + 4) = v142;
      *(v137 + 12) = 2080;
      v143 = sub_227F2B954();
      v145 = sub_227ECAC40(v143, v144, v297);

      *(v137 + 14) = v145;
      _os_log_impl(&dword_227EB2000, v134, v135, "cleaning %s: keeping %s", v137, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v138, -1, -1);
      MEMORY[0x22AAAD240](v137, -1, -1);
    }

    else
    {

      sub_227EEE864(v128, type metadata accessor for DirectoryCleaner);
    }

    v146 = v245;
    sub_227EEE800(v277, v245);

    v147 = sub_227F2B304();
    v148 = sub_227F2B8D4();

    v149 = os_log_type_enabled(v147, v148);
    v262 = v126;
    if (v149)
    {
      v150 = v294;
      v292 = ((2 * v294) | 1);
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v297[0] = v152;
      *v151 = 136315394;
      sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v153 = sub_227F2BC24();
      v155 = v154;
      sub_227EEE864(v146, type metadata accessor for DirectoryCleaner);
      v156 = sub_227ECAC40(v153, v155, v297);

      *(v151 + 4) = v156;
      *(v151 + 12) = 2080;
      v157 = sub_227F2B954();
      v159 = sub_227ECAC40(v157, v158, v297);

      *(v151 + 14) = v159;
      _os_log_impl(&dword_227EB2000, v147, v148, "cleaning %s: deleting %s", v151, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v152, -1, -1);
      MEMORY[0x22AAAD240](v151, -1, -1);

      v161 = v281;
      v162 = v293;
    }

    else
    {

      sub_227EEE864(v146, type metadata accessor for DirectoryCleaner);
      v161 = v281;
      v162 = v293;
      v150 = v294;
    }

    v163 = v270;
    v164 = v150 - 2;
    if (v150 == 2)
    {
      swift_bridgeObjectRelease_n();
      (v290[1])(v285, v162);
    }

    else
    {
      v294 = v253 + 32;
      v284 = *(v296 + 48);
      v271 = (v290 + 2);
      ++v290;
      v283 = *(v261 + 72);
      v165 = v262 + 2 * v283 + v295;
      *&v160 = 136315650;
      v261 = v160;
      *&v160 = 136315906;
      v264 = v160;
      v166 = v285;
      do
      {
        v295 = v164;
        v169 = v280;
        sub_227EEE90C(v165, v280);
        v170 = *(v296 + 48);
        v171 = v289;
        v291 = *v294;
        (v291)(v161, v169, v289);
        (v287)(v161 + v170, v284 + v169, v162);
        if (sub_227F2B1C4())
        {
          v172 = [v267 defaultManager];
          v173 = v162;
          v174 = v276;
          sub_227EEE90C(v161, v276);
          v175 = *(v296 + 48);
          v176 = sub_227F2B044();
          v292 = *v290;
          (v292)(v174 + v175, v173);
          (v278)(v174, v171);
          v297[0] = 0;
          LODWORD(v175) = [v172 removeItemAtURL:v176 error:v297];

          if (v175)
          {
            v167 = v297[0];
            v161 = v281;
            sub_227EB8430(v281, &qword_27D80EAF8, &qword_227F302A8);
            v162 = v293;
            v166 = v285;
          }

          else
          {
            v177 = v297[0];
            v178 = sub_227F2AFC4();

            swift_willThrow();
            v286 = 0;
            v179 = v256;
            sub_227EEE800(v277, v256);
            v180 = v269;
            sub_227EEE90C(v281, v269);
            v181 = v178;
            v182 = sub_227F2B304();
            v183 = sub_227F2B8E4();

            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v272 = swift_slowAlloc();
              *&v282 = swift_slowAlloc();
              v297[0] = v282;
              *v184 = v261;
              sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
              LODWORD(v266) = v183;
              v185 = sub_227F2BC24();
              v187 = v186;
              sub_227EEE864(v179, type metadata accessor for DirectoryCleaner);
              v188 = sub_227ECAC40(v185, v187, v297);

              *(v184 + 4) = v188;
              *(v184 + 12) = 2080;
              v189 = v276;
              sub_227EEE90C(v269, v276);
              v190 = *(v296 + 48);
              v191 = v263;
              (v291)(v263, v189, v171);
              v192 = v189 + v190;
              v193 = v293;
              (v292)(v192, v293);
              v194 = sub_227F2BC24();
              v196 = v195;
              (v278)(v191, v171);
              sub_227EB8430(v269, &qword_27D80EAF8, &qword_227F302A8);
              v197 = sub_227ECAC40(v194, v196, v297);
              v162 = v193;

              *(v184 + 14) = v197;
              *(v184 + 22) = 2112;
              v198 = v178;
              v199 = _swift_stdlib_bridgeErrorToNSError();
              *(v184 + 24) = v199;
              v200 = v272;
              *v272 = v199;
              _os_log_impl(&dword_227EB2000, v182, v266, "cleaning %s: failed to remove %s: %@", v184, 0x20u);
              sub_227EB8430(v200, &qword_27D80E4A0, &qword_227F2DE40);
              MEMORY[0x22AAAD240](v200, -1, -1);
              v201 = v282;
              swift_arrayDestroy();
              MEMORY[0x22AAAD240](v201, -1, -1);
              MEMORY[0x22AAAD240](v184, -1, -1);

              v161 = v281;
              sub_227EB8430(v281, &qword_27D80EAF8, &qword_227F302A8);
            }

            else
            {

              sub_227EB8430(v180, &qword_27D80EAF8, &qword_227F302A8);
              sub_227EEE864(v179, type metadata accessor for DirectoryCleaner);
              v161 = v281;
              sub_227EB8430(v281, &qword_27D80EAF8, &qword_227F302A8);
              v162 = v293;
            }

            v166 = v285;
            v163 = v270;
          }

          v168 = v295;
        }

        else
        {
          *&v282 = v165;
          sub_227EEE800(v277, v163);
          v202 = v268;
          sub_227EEE90C(v161, v268);
          v203 = v274;
          sub_227EEE90C(v161, v274);
          v204 = v273;
          (*v271)(v273, v166, v162);
          v205 = sub_227F2B304();
          v206 = sub_227F2B8E4();
          LODWORD(v272) = v206;
          if (os_log_type_enabled(v205, v206))
          {
            v207 = swift_slowAlloc();
            v266 = swift_slowAlloc();
            v297[0] = v266;
            *v207 = v264;
            sub_227EEE97C(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v265 = v205;
            v208 = v289;
            v209 = sub_227F2BC24();
            v211 = v210;
            sub_227EEE864(v163, type metadata accessor for DirectoryCleaner);
            v212 = sub_227ECAC40(v209, v211, v297);

            *(v207 + 4) = v212;
            *(v207 + 12) = 2080;
            v213 = v276;
            sub_227EEE90C(v202, v276);
            v214 = *(v296 + 48);
            v215 = v263;
            (v291)(v263, v213, v208);
            v292 = *v290;
            (v292)(v213 + v214, v293);
            v216 = sub_227F2BC24();
            v218 = v217;
            v219 = v278;
            (v278)(v215, v208);
            sub_227EB8430(v202, &qword_27D80EAF8, &qword_227F302A8);
            v220 = sub_227ECAC40(v216, v218, v297);

            *(v207 + 14) = v220;
            *(v207 + 22) = 2080;
            v221 = v274;
            sub_227EEE90C(v274, v213);
            v222 = v257;
            v223 = v293;
            (v287)(v257, v213 + *(v296 + 48), v293);
            (v219)(v213, v208);
            sub_227EEE97C(&unk_27D80E010, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
            v224 = v223;
            v225 = sub_227F2BC24();
            v226 = v273;
            v227 = v225;
            v229 = v228;
            v230 = v224;
            v231 = v292;
            (v292)(v222, v230);
            sub_227EB8430(v221, &qword_27D80EAF8, &qword_227F302A8);
            v232 = v227;
            v163 = v270;
            v233 = sub_227ECAC40(v232, v229, v297);

            *(v207 + 24) = v233;
            *(v207 + 32) = 2080;
            v234 = v293;
            v235 = sub_227F2BC24();
            v237 = v236;
            (v231)(v226, v234);
            v238 = sub_227ECAC40(v235, v237, v297);

            *(v207 + 34) = v238;
            v239 = v265;
            _os_log_impl(&dword_227EB2000, v265, v272, "cleaning %s: skipping deleting %s as %s is not older than %s", v207, 0x2Au);
            v240 = v266;
            swift_arrayDestroy();
            MEMORY[0x22AAAD240](v240, -1, -1);
            MEMORY[0x22AAAD240](v207, -1, -1);

            v161 = v281;
            sub_227EB8430(v281, &qword_27D80EAF8, &qword_227F302A8);
            v162 = v234;
          }

          else
          {

            v241 = v293;
            v292 = *v290;
            (v292)(v204, v293);
            sub_227EB8430(v203, &qword_27D80EAF8, &qword_227F302A8);
            sub_227EB8430(v202, &qword_27D80EAF8, &qword_227F302A8);
            sub_227EEE864(v163, type metadata accessor for DirectoryCleaner);
            sub_227EB8430(v161, &qword_27D80EAF8, &qword_227F302A8);
            v162 = v241;
          }

          v166 = v285;
          v168 = v295;
          v165 = v282;
        }

        v165 += v283;
        v164 = v168 - 1;
      }

      while (v164);
      swift_bridgeObjectRelease_n();
      (v292)(v166, v162);
    }

    return;
  }

  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v115 = sub_227F2B334();
  __swift_project_value_buffer(v115, qword_2813CE088);
  sub_227EEE800(v277, v47);
  v116 = sub_227F2B304();
  v117 = sub_227F2B8D4();
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v297[0] = v119;
    *v118 = 136315138;
    v120 = sub_227F2B0A4();
    v122 = v121;
    sub_227EEE864(v47, type metadata accessor for DirectoryCleaner);
    v123 = sub_227ECAC40(v120, v122, v297);

    *(v118 + 4) = v123;
    _os_log_impl(&dword_227EB2000, v116, v117, "%s has less than 2 items - no cleanup needed", v118, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v119);
    MEMORY[0x22AAAD240](v119, -1, -1);
    MEMORY[0x22AAAD240](v118, -1, -1);
  }

  else
  {

    sub_227EEE864(v47, type metadata accessor for DirectoryCleaner);
  }
}

uint64_t type metadata accessor for DirectoryCleaner(uint64_t a1)
{
  result = qword_2813CDB40;
  if (!qword_2813CDB40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227EEE800(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DirectoryCleaner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEE864(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EEE8C4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_227EEE90C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEE97C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227EEE9C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EAF8, &qword_227F302A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EEEA5C@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v31 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v27 = sub_227F2AFF4();
  v7 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227F2B114();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v27 - v17;
  v19 = sub_227F2B644();
  v20 = [v31 containerURLForSecurityApplicationGroupIdentifier_];

  if (v20)
  {
    sub_227F2B084();

    (*(v11 + 32))(v18, v16, v10);
    (*(v7 + 104))(v9, *MEMORY[0x277CC91C0], v27);
    (*(v11 + 16))(v6, v18, v10);
    (*(v11 + 56))(v6, 0, 1, v10);
    v21 = v30;
    sub_227F2B0E4();
    v23 = v28;
    v22 = v29;
    sub_227F2A3D0(v28);
    if (v22)
    {
      v24 = *(v11 + 8);
      v24(v21, v10);
      return (v24)(v18, v10);
    }

    else
    {
      v25 = *(v11 + 8);
      v25(v23, v10);
      sub_227F2A660();
      return (v25)(v18, v10);
    }
  }

  else
  {
    sub_227EEEDBC();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_227EEEDBC()
{
  result = qword_27D80EB18;
  if (!qword_27D80EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB18);
  }

  return result;
}

unint64_t sub_227EEEE24()
{
  result = qword_27D80EB20;
  if (!qword_27D80EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB20);
  }

  return result;
}

uint64_t sub_227EEEE78(__int16 a1)
{
  sub_227F2B9A4();

  strcpy(v7, "hasManifest ");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  if (a1)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (a1)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x22AAAC3E0](v2, v3);

  MEMORY[0x22AAAC3E0](0xD000000000000010, 0x8000000227F34210);
  if ((a1 & 0x100) != 0)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if ((a1 & 0x100) != 0)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x22AAAC3E0](v4, v5);

  return v7[0];
}

uint64_t sub_227EEEF74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v25 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v25 - v11;
  v13 = a1 + *(type metadata accessor for PersistenceState(0) + 20);
  v14 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(v13 + *(v14 + 32), v9, &qword_27D80E8F8, &qword_227F2F5E0);
  v15 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v15 - 8) + 48))(v9, 1, v15) == 1)
  {
    sub_227EB8430(v9, &qword_27D80E8F8, &qword_227F2F5E0);
    v16 = sub_227F2B114();
    v17 = *(v16 - 8);
    v18 = *(v17 + 56);
    v18(v12, 1, 1, v16);
    sub_227EC2180(v13, v6, &qword_27D80E8F0, &unk_227F2F4B0);
    v19 = type metadata accessor for FileInfo(0);
    if ((*(*(v19 - 8) + 48))(v6, 1, v19) == 1)
    {
      sub_227EB8430(v6, &qword_27D80E8F0, &unk_227F2F4B0);
      v20 = 1;
    }

    else
    {
      (*(v17 + 16))(a2, v6, v16);
      sub_227EF9E90(v6, type metadata accessor for FileInfo);
      v20 = 0;
    }

    v18(a2, v20, 1, v16);
    result = (*(v17 + 48))(v12, 1, v16);
    if (result != 1)
    {
      return sub_227EB8430(v12, &qword_27D80E310, &unk_227F2D990);
    }
  }

  else
  {
    v21 = sub_227F2B114();
    v22 = *(v21 - 8);
    (*(v22 + 16))(v12, v9, v21);
    sub_227EF9E90(v9, type metadata accessor for ResourceInfo.DownloadState);
    v23 = *(v22 + 56);
    v23(v12, 0, 1, v21);
    (*(v22 + 32))(a2, v12, v21);
    return (v23)(a2, 0, 1, v21);
  }

  return result;
}

void sub_227EEF390(unint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v121 = a4;
  v120 = a3;
  v140 = a2;
  v129 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v7 - 8);
  v113 = &v105 - v8;
  v116 = sub_227F2AFF4();
  v130 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v115 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DirectoryCleaner(0);
  v107 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v110 = &v105 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v109 = &v105 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v117 = &v105 - v16;
  v108 = v17;
  MEMORY[0x28223BE20](v15);
  v131 = &v105 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v105 - v20;
  v138 = sub_227F2B114();
  v22 = *(v138 - 8);
  v23 = MEMORY[0x28223BE20](v138);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v112 = &v105 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v111 = &v105 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v119 = &v105 - v31;
  MEMORY[0x28223BE20](v30);
  v136 = &v105 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v105 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v105 - v37;
  v39 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
  if (qword_2813CD580 != -1)
  {
    swift_once();
  }

  v137 = a1;
  v40 = sub_227F2B334();
  v41 = __swift_project_value_buffer(v40, qword_2813CE088);
  v126 = *(v40 - 8);
  v42 = *(v126 + 2);
  v127 = v40;
  v128 = v39;
  v42(v4 + v39, v41, v40);
  v43 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v139 = v5;
  v44 = type metadata accessor for PersistenceState(0);
  v45 = __swift_project_value_buffer(v44, qword_2813CE108);
  v43->_os_unfair_lock_opaque = 0;
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB90, &qword_227F30490);
  bzero(v43 + v46, *(*(v47 - 8) + 64));
  v133 = v46;
  v134 = v43;
  sub_227EF9CA4(v45, v43 + v46, type metadata accessor for PersistenceState);
  v48 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  v49 = type metadata accessor for Manifest(0);
  (*(*(v49 - 8) + 56))(v38, 1, 1, v49);
  *v48 = 0;
  v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB98, &qword_227F30498);
  bzero(v48 + v50, *(*(v51 - 8) + 64));
  v125 = v48;
  v124 = v50;
  sub_227EE7808(v38, v48 + v50, &qword_27D80EB28, &qword_227F30440);
  v52 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  v53 = type metadata accessor for Configuration(0);
  (*(*(v53 - 8) + 56))(v35, 1, 1, v53);
  v52->_os_unfair_lock_opaque = 0;
  v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460) + 28);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EBA0, &qword_227F304A0);
  bzero(v52 + v54, *(*(v55 - 8) + 64));
  v135 = v54;
  sub_227EE7808(v35, v52 + v54, &qword_27D80EB30, &qword_227F30448);
  v56 = v137;
  v122 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings;
  *(v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) = v137;
  v144 = v4;
  v123 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock;
  sub_227ECDA1C(v140, v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock);
  sub_227EC2180(v56 + OBJC_IVAR____TtC21RapidResourceDelivery8Settings_persistenceFolderURL, v21, &qword_27D80E310, &unk_227F2D990);
  v57 = *(v22 + 48);
  v58 = v138;
  v59 = v57(v21, 1, v138);
  v132 = v22;
  if (v59 == 1)
  {
    v60 = objc_opt_self();

    v61 = [v60 defaultManager];
    v62 = v139;
    sub_227EEEA5C(v61, v136);
    if (v62)
    {

      __swift_destroy_boxed_opaque_existential_0(v140);
      v58 = v138;
      if (v57(v21, 1, v138) != 1)
      {
        sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
      }

      v63 = 0;
      v64 = v134;
      goto LABEL_16;
    }

    v106 = v25;
    v139 = 0;

    v58 = v138;
    v66 = v57(v21, 1, v138);
    v114 = v52;
    if (v66 != 1)
    {
      sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
    }

    v22 = v132;
    v65 = v136;
    v56 = v137;
  }

  else
  {
    v114 = v52;
    v106 = v25;
    v65 = v136;
    (*(v22 + 32))(v136, v21, v58);
  }

  v67 = *(v22 + 16);
  v118 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v67(v144 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL, v65, v58);
  v68 = v119;
  v67(v119, v65, v58);
  v69 = v121;
  v70 = v22;
  v71 = *(v121 + 24);
  v72 = v120;
  v143[3] = v120;
  v143[4] = v121;
  __swift_allocate_boxed_opaque_existential_1(v143);

  v73 = v139;
  v71(v68, v56, v72, v69);
  if (!v73)
  {
    sub_227ECDA1C(v143, v144 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper);
    v141 = 7368052;
    v142 = 0xE300000000000000;
    v75 = *MEMORY[0x277CC91C0];
    v139 = 0;
    v76 = v130;
    v78 = v130 + 104;
    v77 = *(v130 + 104);
    v79 = v115;
    v80 = v116;
    v77(v115, v75, v116);
    v81 = sub_227EB84D8();
    sub_227F2B104();
    v82 = *(v76 + 8);
    v82(v79, v80);
    v141 = 0x6568636163;
    v142 = 0xE500000000000000;
    LODWORD(v127) = v75;
    v128 = v78;
    v126 = v77;
    v77(v79, v75, v80);
    v83 = v117;
    v129 = v81;
    sub_227F2B104();
    v125 = v82;
    v130 = v76 + 8;
    v82(v79, v80);
    v84 = v113;
    sub_227F2B834();
    v85 = sub_227F2B854();
    (*(*(v85 - 8) + 56))(v84, 0, 1, v85);
    v86 = v109;
    sub_227EF9CA4(v131, v109, type metadata accessor for DirectoryCleaner);
    v87 = v110;
    sub_227EF9CA4(v83, v110, type metadata accessor for DirectoryCleaner);
    v88 = *(v107 + 80);
    v89 = (v88 + 32) & ~v88;
    v90 = (v108 + v88 + v89) & ~v88;
    v91 = swift_allocObject();
    *(v91 + 16) = 0;
    *(v91 + 24) = 0;
    sub_227EF9D0C(v86, v91 + v89, type metadata accessor for DirectoryCleaner);
    sub_227EF9D0C(v87, v91 + v90, type metadata accessor for DirectoryCleaner);
    sub_227EF07DC(0, 0, v84, &unk_227F304B0, v91);

    sub_227EB8430(v84, &qword_27D80EB88, &qword_227F312D0);
    v92 = v114;
    os_unfair_lock_lock(v114);
    v93 = v139;
    sub_227EF0A9C(v92 + v135, v144);
    os_unfair_lock_unlock(v92);
    if (v93)
    {
      __break(1u);
    }

    else
    {
      v141 = 7368052;
      v142 = 0xE300000000000000;
      v94 = v115;
      v95 = v116;
      v126(v115, v127, v116);
      v96 = v112;
      sub_227F2B104();
      v125(v94, v95);
      v97 = v111;
      sub_227F2A3D0(v111);
      v98 = *(v132 + 8);
      v99 = v96;
      v100 = v138;
      v98(v99, v138);
      v139 = v98;
      v98(v97, v100);
      v101 = v134;
      os_unfair_lock_lock(v134);
      v141 = 0x6568636163;
      v142 = 0xE500000000000000;
      v126(v94, v127, v95);
      v102 = v106;
      sub_227F2B104();
      v125(v94, v95);

      v104 = v138;
      v103 = v139;
      v139(v102, v138);
      os_unfair_lock_unlock(v101);

      __swift_destroy_boxed_opaque_existential_0(v140);
      sub_227EF9E90(v117, type metadata accessor for DirectoryCleaner);
      sub_227EF9E90(v131, type metadata accessor for DirectoryCleaner);
      v103(v136, v104);
      __swift_destroy_boxed_opaque_existential_0(v143);
    }

    return;
  }

  __swift_destroy_boxed_opaque_existential_0(v140);
  (*(v70 + 8))(v65, v58);
  __swift_deallocate_boxed_opaque_existential_1(v143);
  v63 = 1;
  v64 = v134;
  v52 = v114;
LABEL_16:
  v74 = v144;
  (*(v126 + 1))(v144 + v128, v127);

  if (v63)
  {
    (*(v132 + 8))(v74 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL, v58);
  }

  __swift_destroy_boxed_opaque_existential_0((v74 + v123));
  sub_227EF9E90(v64 + v133, type metadata accessor for PersistenceState);
  sub_227EB8430(v125 + v124, &qword_27D80EB28, &qword_227F30440);
  sub_227EB8430(v52 + v135, &qword_27D80EB30, &qword_227F30448);
  swift_deallocPartialClassInstance();
}

uint64_t sub_227EF04C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_227EF04E8, 0, 0);
}

uint64_t sub_227EF04E8()
{
  sub_227EEC4F4();
  sub_227EEC4F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227EF07DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_227EC2180(a3, v25 - v10, &qword_27D80EB88, &qword_227F312D0);
  v12 = sub_227F2B854();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_227EB8430(v11, &qword_27D80EB88, &qword_227F312D0);
  }

  else
  {
    sub_227F2B844();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_227F2B7B4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_227F2B6E4() + 32;
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

void sub_227EF0A9C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v43 = type metadata accessor for Configuration(0);
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = v35 - v5;
  v6 = sub_227F2AFF4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227F2B114();
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v44 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v45 = v35 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = v35 - v16;

  v18 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v53 = 0x6E6F736A2E647272;
  v54 = 0xE800000000000000;
  v19 = *(v7 + 104);
  v46 = *MEMORY[0x277CC91D0];
  v19(v9);
  v20 = sub_227EB84D8();
  v47 = v18;
  v48 = a2;
  sub_227F2B104();
  v21 = *(v7 + 8);
  v49 = v6;
  v21(v9, v6);
  v22 = v50;
  v23 = sub_227F2B054();
  if (v22)
  {

    (*(v52 + 8))(v17, v51);
  }

  else
  {
    v24 = v23;
    v37 = v7 + 104;
    v38 = v21;
    v50 = v19;
    v25 = v49;
    v26 = v52 + 8;
    v36 = *(v52 + 8);
    v36(v17, v51);
    if (v24)
    {
      v52 = v26;
      v53 = 0x6E6F736A2E647272;
      v54 = 0xE800000000000000;
      (v50)(v9, v46, v25);
      v35[0] = v20;
      sub_227F2B104();
      v38(v9, v25);
      v27 = sub_227F2B124();
      v29 = v28;
      sub_227F2AE24();
      swift_allocObject();
      sub_227F2AE14();
      sub_227EF9EF0(&qword_27D80EBA8, type metadata accessor for Configuration, &unk_227F2E29C);
      v30 = v42;
      v31 = v43;
      sub_227F2AE04();
      v35[1] = 0;
      sub_227EC15A8(v27, v29);

      v32 = v41;
      sub_227EB8430(v41, &qword_27D80EB30, &qword_227F30448);
      v36(v45, v51);
      v33 = v30;
      v34 = v39;
      sub_227EF9D0C(v33, v39, type metadata accessor for Configuration);
      (*(v40 + 56))(v34, 0, 1, v31);
      sub_227EE7808(v34, v32, &qword_27D80EB30, &qword_227F30448);
    }
  }
}

BOOL sub_227EF1234()
{
  v1 = (v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450);
  v2 = *(*(v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) + 16);
  v3 = sub_227F2B644();
  v4 = [v2 integerForKey_];

  v5 = v4;
  if (v4 <= 0)
  {
    v5 = 604800.0;
  }

  v6 = sub_227EDBFDC((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v5);
  os_unfair_lock_unlock(v1);
  return v6;
}

void sub_227EF1314(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v40 = a3;
  v39 = type metadata accessor for Manifest(0);
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v38 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v38 - v16;
  v18 = (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v18 + *(v19 + 28), a1, &v41, v15);
  if (v3)
  {
    v20 = v41;
    os_unfair_lock_unlock(v18);
    v21 = v20;
    v22 = sub_227F2B304();
    v23 = sub_227F2B8E4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      v26 = v20;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 4) = v27;
      *v25 = v27;
      _os_log_impl(&dword_227EB2000, v22, v23, "Error reading manifest: %@", v24, 0xCu);
      sub_227EB8430(v25, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v25, -1, -1);
      MEMORY[0x22AAAD240](v24, -1, -1);
    }

    else
    {
    }

    v28 = 0;
  }

  else
  {
    v38[1] = 0;
    os_unfair_lock_unlock(v18);
    sub_227EE7808(v15, v17, &qword_27D80EB28, &qword_227F30440);
    sub_227EC2180(v17, v12, &qword_27D80EB28, &qword_227F30440);
    v29 = v39;
    if ((*(v6 + 48))(v12, 1, v39) == 1)
    {
      sub_227EB8430(v12, &qword_27D80EB28, &qword_227F30440);
      v30 = sub_227F2B304();
      v31 = sub_227F2B8D4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_227EB2000, v30, v31, "No manifest present, can't use cached updates.", v32, 2u);
        MEMORY[0x22AAAD240](v32, -1, -1);
      }

      sub_227EB8430(v17, &qword_27D80EB28, &qword_227F30440);
      v28 = 0;
    }

    else
    {
      sub_227EF9D0C(v12, v8, type metadata accessor for Manifest);
      v33 = *(*(a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_settings) + 16);
      v34 = sub_227F2B644();
      v35 = [v33 integerForKey_];

      v36 = v35;
      if (v35 <= 0)
      {
        v36 = 604800.0;
      }

      v37 = sub_227EDC30C((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v36, *&v8[*(v29 + 28)]);
      sub_227EF9E90(v8, type metadata accessor for Manifest);
      sub_227EB8430(v17, &qword_27D80EB28, &qword_227F30440);
      v28 = v37;
    }
  }

  *v40 = v28;
}

void sub_227EF17E0()
{
  v1 = v0;
  v171 = type metadata accessor for PersistenceState(0);
  MEMORY[0x28223BE20](v171);
  v157 = &v157 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v3 - 8);
  v161 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v5 - 8);
  v170 = &v157 - v6;
  v7 = type metadata accessor for ResourceInfo(0);
  MEMORY[0x28223BE20](v7 - 8);
  v168 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for FileInfo(0);
  v167 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v162 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227F2B114();
  v186 = *(v10 - 8);
  v187 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v160 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v166 = &v157 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v164 = &v157 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v177 = &v157 - v18;
  MEMORY[0x28223BE20](v17);
  v163 = &v157 - v19;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  MEMORY[0x28223BE20](v179);
  v21 = &v157 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v159 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v165 = &v157 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v158 = &v157 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v172 = &v157 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v157 - v32;
  MEMORY[0x28223BE20](v31);
  v181 = &v157 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v176 = &v157 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v157 - v38;
  v40 = MEMORY[0x28223BE20](v37);
  v42 = &v157 - v41;
  MEMORY[0x28223BE20](v40);
  v44 = &v157 - v43;
  sub_227F282D8(v42);
  v45 = type metadata accessor for Configuration(0);
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  v48 = v47(v42, 1, v45);
  v185 = v1;
  if (v48 == 1)
  {
    v49 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v49 + *(v50 + 28), v44, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v49);
    if (v47(v42, 1, v45) != 1)
    {
      sub_227EB8430(v42, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v42, v44, type metadata accessor for Configuration);
    (*(v46 + 56))(v44, 0, 1, v45);
  }

  v184 = v44;
  sub_227EC2180(v44, v39, &qword_27D80EB30, &qword_227F30448);
  v175 = v47;
  if (v47(v39, 1, v45) == 1)
  {
    sub_227EB8430(v39, &qword_27D80EB30, &qword_227F30448);
    v51 = 1;
    v53 = v186;
    v52 = v187;
    v54 = v185;
    v55 = v181;
    v56 = v182;
  }

  else
  {
    v53 = v186;
    v52 = v187;
    v55 = v181;
    (*(v186 + 16))(v181, v39, v187);
    sub_227EF9E90(v39, type metadata accessor for Configuration);
    v51 = 0;
    v54 = v185;
    v56 = v182;
  }

  v174 = v45;
  (*(v53 + 56))(v55, v51, 1, v52);
  v57 = (v54 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v57);
  v178 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v58 = v183;
  sub_227EEEF74(v178, v56);
  v183 = v58;
  if (v58)
  {
    os_unfair_lock_unlock(v57);
    __break(1u);
    goto LABEL_59;
  }

  v180 = v57;
  os_unfair_lock_unlock(v57);
  v59 = *(v179 + 48);
  sub_227EC2180(v55, v21, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v56, &v21[v59], &qword_27D80E310, &unk_227F2D990);
  v60 = *(v53 + 48);
  v61 = v60(v21, 1, v52);
  v179 = v60;
  v173 = v53 + 48;
  if (v61 != 1)
  {
    v65 = v172;
    sub_227EC2180(v21, v172, &qword_27D80E310, &unk_227F2D990);
    v66 = v60(&v21[v59], 1, v52);
    v67 = v52;
    v63 = v185;
    if (v66 != 1)
    {
      v101 = v186;
      v102 = v163;
      (*(v186 + 32))(v163, &v21[v59], v67);
      sub_227EF9EF0(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v103 = sub_227F2B634();
      v104 = *(v101 + 8);
      v104(v102, v187);
      sub_227EB8430(v182, &qword_27D80E310, &unk_227F2D990);
      sub_227EB8430(v181, &qword_27D80E310, &unk_227F2D990);
      v104(v65, v187);
      v63 = v185;
      sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
      v64 = v184;
      v52 = v180;
      if (v103)
      {
        goto LABEL_29;
      }

      goto LABEL_15;
    }

    sub_227EB8430(v182, &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v181, &qword_27D80E310, &unk_227F2D990);
    (*(v186 + 8))(v65, v52);
LABEL_14:
    sub_227EB8430(v21, &qword_27D80E4F8, &qword_227F2DE80);
    v64 = v184;
    v52 = v180;
LABEL_15:
    v68 = v176;
    sub_227EC2180(v64, v176, &qword_27D80EB30, &qword_227F30448);
    if (v175(v68, 1, v174) != 1)
    {
      v83 = v186;
      v82 = v187;
      v84 = *(v186 + 16);
      v85 = v164;
      (v84)(v164, v68, v187);
      sub_227EF9E90(v68, type metadata accessor for Configuration);
      v86 = v177;
      (*(v83 + 32))(v177, v85, v82);
      v185 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
      v87 = sub_227F2B304();
      v88 = sub_227F2B8F4();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_227EB2000, v87, v88, "Resetting the manifest as configuration change is detected", v89, 2u);
        MEMORY[0x22AAAD240](v89, -1, -1);
      }

      v90 = sub_227F2B304();
      v91 = sub_227F2B8F4();

      if (os_log_type_enabled(v90, v91))
      {
        v182 = v84;
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v188 = v93;
        *v92 = 136315138;
        v94 = v180;
        os_unfair_lock_lock(v180);
        v95 = v158;
        v96 = v183;
        sub_227EEEF74(v178, v158);
        v183 = v96;
        v97 = v94;
        if (v96)
        {
LABEL_60:
          os_unfair_lock_unlock(v97);
          __break(1u);
          return;
        }

        os_unfair_lock_unlock(v94);
        v98 = v187;
        if ((v179)(v95, 1, v187) == 1)
        {
          v99 = 0x676E697373696DLL;
          sub_227EB8430(v95, &qword_27D80E310, &unk_227F2D990);
          v100 = 0xE700000000000000;
        }

        else
        {
          v99 = sub_227F2B004();
          v129 = v95;
          v100 = v130;
          (*(v186 + 8))(v129, v98);
        }

        v86 = v177;
        v131 = sub_227ECAC40(v99, v100, &v188);

        *(v92 + 4) = v131;
        _os_log_impl(&dword_227EB2000, v90, v91, "Configured manifest URL was: %s", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x22AAAD240](v93, -1, -1);
        MEMORY[0x22AAAD240](v92, -1, -1);

        v83 = v186;
        v84 = v182;
      }

      else
      {
      }

      v132 = v166;
      v133 = v86;
      v134 = v187;
      (v84)(v166, v133, v187);
      v135 = sub_227F2B304();
      v136 = sub_227F2B8F4();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = v132;
        v138 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v188 = v139;
        *v138 = 136446210;
        sub_227EF9EF0(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v140 = sub_227F2BC24();
        v142 = v141;
        v143 = v137;
        v144 = *(v186 + 8);
        v144(v143, v134);
        v145 = sub_227ECAC40(v140, v142, &v188);

        *(v138 + 4) = v145;
        _os_log_impl(&dword_227EB2000, v135, v136, "Configured manifest URL now: %{public}s", v138, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x22AAAD240](v139, -1, -1);
        MEMORY[0x22AAAD240](v138, -1, -1);
      }

      else
      {

        v144 = *(v83 + 8);
        v146 = (v144)(v132, v134);
      }

      MEMORY[0x28223BE20](v146);
      v147 = v177;
      *(&v157 - 4) = v177;
      *(&v157 - 3) = v63;
      *(&v157 - 2) = 0;
      *(&v157 - 1) = 0;
      sub_227EF2ED0(sub_227EF9570);
      sub_227EB8430(v184, &qword_27D80EB30, &qword_227F30448);
      v144(v147, v187);
      return;
    }

    sub_227EB8430(v68, &qword_27D80EB30, &qword_227F30448);
    v69 = sub_227F2B304();
    v70 = sub_227F2B8F4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_227EB2000, v69, v70, "Resetting the manifest to the initial state", v71, 2u);
      MEMORY[0x22AAAD240](v71, -1, -1);
    }

    v72 = sub_227F2B304();
    v73 = sub_227F2B8F4();

    v74 = os_log_type_enabled(v72, v73);
    v75 = v165;
    if (!v74)
    {
LABEL_43:

      sub_227EF304C(v128, v63);
      sub_227EB8430(v64, &qword_27D80EB30, &qword_227F30448);
      return;
    }

    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v188 = v77;
    *v76 = 136315138;
    os_unfair_lock_lock(v52);
    v78 = v183;
    sub_227EEEF74(v178, v75);
    v183 = v78;
    if (!v78)
    {
      os_unfair_lock_unlock(v52);
      v79 = v187;
      if ((v179)(v75, 1, v187) == 1)
      {
        v80 = 0x676E697373696DLL;
        sub_227EB8430(v75, &qword_27D80E310, &unk_227F2D990);
        v81 = 0xE700000000000000;
      }

      else
      {
        v80 = sub_227F2B004();
        v81 = v126;
        (*(v186 + 8))(v75, v79);
      }

      v64 = v184;
      v127 = sub_227ECAC40(v80, v81, &v188);

      *(v76 + 4) = v127;
      _os_log_impl(&dword_227EB2000, v72, v73, "Configured manifest URL was: %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v77);
      MEMORY[0x22AAAD240](v77, -1, -1);
      MEMORY[0x22AAAD240](v76, -1, -1);
      goto LABEL_43;
    }

LABEL_59:
    v97 = v52;
    goto LABEL_60;
  }

  sub_227EB8430(v56, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v55, &qword_27D80E310, &unk_227F2D990);
  v62 = (v179)(&v21[v59], 1, v52);
  v63 = v185;
  if (v62 != 1)
  {
    goto LABEL_14;
  }

  sub_227EB8430(v21, &qword_27D80E310, &unk_227F2D990);
  v64 = v184;
  v52 = v180;
LABEL_29:
  os_unfair_lock_lock(v52);
  v105 = v171;
  v106 = v178;
  v107 = v168;
  sub_227EF9CA4(v178 + *(v171 + 20), v168, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v52);
  v108 = v170;
  sub_227EC2180(v107, v170, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EF9E90(v107, type metadata accessor for ResourceInfo);
  v109 = v169;
  if ((*(v167 + 48))(v108, 1, v169) == 1)
  {
    sub_227EB8430(v108, &qword_27D80E8F0, &unk_227F2F4B0);
    os_unfair_lock_lock(v52);
    v110 = v159;
    v111 = v183;
    sub_227EEEF74(v106, v159);
    if (!v111)
    {
      os_unfair_lock_unlock(v52);
      v112 = (v179)(v110, 1, v187);
      sub_227EB8430(v110, &qword_27D80E310, &unk_227F2D990);
      v113 = sub_227F2B304();
      v114 = sub_227F2B8C4();
      v115 = os_log_type_enabled(v113, v114);
      if (v112 == 1)
      {
        if (v115)
        {
          v116 = swift_slowAlloc();
          *v116 = 0;
          _os_log_impl(&dword_227EB2000, v113, v114, "Manifest was never initialized", v116, 2u);
          MEMORY[0x22AAAD240](v116, -1, -1);
        }

        sub_227EB8430(v64, &qword_27D80EB30, &qword_227F30448);
        return;
      }

      if (v115)
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_227EB2000, v113, v114, "Manifest is not downloaded, but state is valid", v124, 2u);
        MEMORY[0x22AAAD240](v124, -1, -1);
      }

      v125 = v64;
LABEL_52:
      sub_227EB8430(v125, &qword_27D80EB30, &qword_227F30448);
      return;
    }

    goto LABEL_59;
  }

  v117 = v162;
  sub_227EF9D0C(v108, v162, type metadata accessor for FileInfo);

  v118 = v161;
  sub_227EF9CA4(v117 + *(v109 + 20), v161, type metadata accessor for ContainerizableURL);
  v119 = v186;
  v120 = v187;
  v121 = v160;
  (*(v186 + 32))(v160, v118, v187);
  v122 = v183;
  v123 = sub_227F2B054();
  if (v122)
  {

    (*(v119 + 8))(v121, v120);
  }

  else
  {
    v148 = v123;
    (*(v119 + 8))(v121, v120);
    if (v148)
    {
      sub_227EF9E90(v117, type metadata accessor for FileInfo);
      v125 = v184;
      goto LABEL_52;
    }
  }

  v149 = sub_227F2B304();
  v150 = sub_227F2B8F4();
  if (os_log_type_enabled(v149, v150))
  {
    v151 = swift_slowAlloc();
    *v151 = 0;
    _os_log_impl(&dword_227EB2000, v149, v150, "Resetting to the factory defaults because manifest file disappeared", v151, 2u);
    MEMORY[0x22AAAD240](v151, -1, -1);
  }

  os_unfair_lock_lock(v52);
  v152 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  v153 = v184;
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v154 = __swift_project_value_buffer(v105, qword_2813CE108);
  v155 = v157;
  v156 = v178;
  sub_227EDDE44((v63 + v152), v154, v178, v157);
  sub_227EE3518(v155, v156);
  sub_227EDEF80(v117, (v63 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v63 + v152), 0, 0);
  os_unfair_lock_unlock(v52);
  sub_227EF9E90(v117, type metadata accessor for FileInfo);
  sub_227EB8430(v153, &qword_27D80EB30, &qword_227F30448);
}

uint64_t sub_227EF2ED0(void (*a1)(uint64_t *__return_ptr, char *))
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v8 = sub_227EF3B38(v6 + v7);
  *(v4 + 16) = v8 & 1;
  *(v4 + 17) = HIBYTE(v8) & 1;
  a1(&v11, v6 + v7);
  v9 = sub_227EF3B38(v6 + v7);
  *(v5 + 16) = v9 & 1;
  *(v5 + 17) = HIBYTE(v9) & 1;
  if (!v2)
  {
    v1 = v11;
  }

  os_unfair_lock_unlock(v6);
  sub_227EF3D7C(v4, v5);

  return v1;
}

uint64_t sub_227EF304C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PersistenceState(0);
  MEMORY[0x28223BE20](v4);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v11 = sub_227EF3B38(v9 + v10);
  *(v7 + 16) = v11 & 1;
  *(v7 + 17) = HIBYTE(v11) & 1;
  v12 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  if (qword_2813CDAE0 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, qword_2813CE108);
  v14 = v17[1];
  sub_227EDDE44((a2 + v12), v13, v9 + v10, v6);
  if (!v14)
  {
    sub_227EE3518(v6, v9 + v10);
  }

  v15 = sub_227EF3B38(v9 + v10);
  *(v8 + 16) = v15 & 1;
  *(v8 + 17) = HIBYTE(v15) & 1;
  os_unfair_lock_unlock(v9);
  sub_227EF3D7C(v7, v8);
}

uint64_t sub_227EF3220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v10 = sub_227EF3B38(v8 + v9);
  *(v6 + 16) = v10 & 1;
  *(v6 + 17) = HIBYTE(v10) & 1;
  v11 = *(a2 + 16);
  v14[0] = *a2;
  v14[1] = v11;
  v15 = *(a2 + 32);
  sub_227EE1E9C(v14, (a3 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (a3 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v12 = sub_227EF3B38(v8 + v9);
  *(v7 + 16) = v12 & 1;
  *(v7 + 17) = HIBYTE(v12) & 1;
  os_unfair_lock_unlock(v8);
  sub_227EF3D7C(v6, v7);

  sub_227EF9968(a2);
}

uint64_t sub_227EF3388(void (*a1)(char *))
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = sub_227EF3B38(v5 + v6);
  *(v3 + 16) = v7 & 1;
  *(v3 + 17) = HIBYTE(v7) & 1;
  a1(v5 + v6);
  v8 = sub_227EF3B38(v5 + v6);
  *(v4 + 16) = v8 & 1;
  *(v4 + 17) = HIBYTE(v8) & 1;
  os_unfair_lock_unlock(v5);
  sub_227EF3D7C(v3, v4);
}

uint64_t sub_227EF34BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a3;
  v56 = a2;
  v6 = type metadata accessor for Manifest(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v47 - v12;
  v54 = sub_227F2B114();
  v58 = *(v54 - 8);
  v14 = MEMORY[0x28223BE20](v54);
  v55 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  MEMORY[0x28223BE20](v16);
  v57 = &v47 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v49 = &v47 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v47 - v23;
  v50 = a1;
  v25 = v6;
  v26 = v7;
  sub_227EC2180(a1, &v47 - v23, &qword_27D80EB28, &qword_227F30440);
  if ((*(v7 + 48))(v24, 1, v25) == 1)
  {
    v48 = a4;
    sub_227EB8430(v24, &qword_27D80EB28, &qword_227F30440);
    v27 = type metadata accessor for PersistenceState(0);
    sub_227EC2180(v56 + *(v27 + 20), v13, &qword_27D80E8F0, &unk_227F2F4B0);
    v28 = type metadata accessor for FileInfo(0);
    if ((*(*(v28 - 8) + 48))(v13, 1, v28) == 1)
    {
      sub_227EB8430(v13, &qword_27D80E8F0, &unk_227F2F4B0);
      return (*(v7 + 56))(v48, 1, 1, v25);
    }

    else
    {
      v30 = v53;
      sub_227EF9CA4(&v13[*(v28 + 20)], v53, type metadata accessor for ContainerizableURL);
      v31 = v58;
      v32 = *(v58 + 32);
      v33 = v54;
      v32(v18, v30, v54);
      sub_227EF9E90(v13, type metadata accessor for FileInfo);
      v34 = v57;
      v32(v57, v18, v33);
      v35 = v55;
      (*(v31 + 16))(v55, v34, v33);
      sub_227F2AE24();
      swift_allocObject();
      sub_227F2AE14();
      v36 = v59;
      v37 = sub_227F2B124();
      v39 = v48;
      if (v36)
      {

        v43 = *(v58 + 8);
        v43(v35, v33);
        result = (v43)(v57, v33);
        *v52 = v36;
      }

      else
      {
        v40 = v37;
        v41 = v38;
        sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest, &unk_227F2E580);
        v42 = v51;
        sub_227F2AE04();

        sub_227EC15A8(v40, v41);
        v44 = v50;
        sub_227EB8430(v50, &qword_27D80EB28, &qword_227F30440);
        v45 = *(v58 + 8);
        v45(v55, v33);
        v45(v57, v33);
        v46 = v49;
        sub_227EF9D0C(v42, v49, type metadata accessor for Manifest);
        (*(v26 + 56))(v46, 0, 1, v25);
        sub_227EE7808(v46, v44, &qword_27D80EB28, &qword_227F30440);
        return sub_227EC2180(v44, v39, &qword_27D80EB28, &qword_227F30440);
      }
    }
  }

  else
  {
    sub_227EF9D0C(v24, a4, type metadata accessor for Manifest);
    return (*(v7 + 56))(a4, 0, 1, v25);
  }

  return result;
}

uint64_t sub_227EF3B38(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v9 + *(v10 + 28), a1, &v18, v8);
  os_unfair_lock_unlock(v9);
  sub_227EC2180(v8, v6, &qword_27D80EB28, &qword_227F30440);
  v11 = type metadata accessor for Manifest(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v6, 1, v11) == 1)
  {
    sub_227EB8430(v6, &qword_27D80EB28, &qword_227F30440);
    v13 = 2;
  }

  else
  {
    v13 = v6[16];
    sub_227EF9E90(v6, type metadata accessor for Manifest);
  }

  v14 = v12(v8, 1, v11);
  sub_227EB8430(v8, &qword_27D80EB28, &qword_227F30440);
  if (((v13 != 2) ^ v13))
  {
    v15 = 256;
  }

  else
  {
    v15 = 0;
  }

  if (v14 == 1)
  {
    return v15;
  }

  else
  {
    return v15 + 1;
  }
}

void sub_227EF3D7C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  swift_beginAccess();
  if (v4 != *(a2 + 16) || ((v5 ^ *(a2 + 17)) & 1) != 0)
  {

    v6 = sub_227F2B304();
    v7 = sub_227F2B8F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315394;
      swift_beginAccess();
      if (*(a1 + 17))
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      v11 = sub_227EEEE78(v10 | *(a1 + 16));
      v13 = sub_227ECAC40(v11, v12, &v19);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2080;
      swift_beginAccess();
      if (*(a2 + 17))
      {
        v14 = 256;
      }

      else
      {
        v14 = 0;
      }

      v15 = sub_227EEEE78(v14 | *(a2 + 16));
      v17 = sub_227ECAC40(v15, v16, &v19);

      *(v8 + 14) = v17;
      _os_log_impl(&dword_227EB2000, v6, v7, "Post availability change notification, stateBefore: %s, stateAfter: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v9, -1, -1);
      MEMORY[0x22AAAD240](v8, -1, -1);
    }

    v18 = [objc_opt_self() defaultCenter];
    if (qword_2813CD520 != -1)
    {
      swift_once();
    }

    [v18 postNotificationName:qword_2813CD528 object:0];
  }
}

uint64_t sub_227EF3FF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v79 = a4;
  v83 = a3;
  v87 = a1;
  v5 = sub_227F2AFF4();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x28223BE20](v5);
  v71 = &v69[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_227F2B114();
  v75 = *(v7 - 8);
  v76 = v7;
  MEMORY[0x28223BE20](v7);
  v72 = &v69[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Configuration(0);
  v10 = *(v9 - 1);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v69[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v69[-v14];
  MEMORY[0x28223BE20](v13);
  v78 = &v69[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v69[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v85 = &v69[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v69[-v24];
  MEMORY[0x28223BE20](v23);
  v27 = &v69[-v26];
  v86 = a2;
  sub_227EF9CA4(a2, &v69[-v26], type metadata accessor for Configuration);
  v80 = *(v10 + 56);
  v81 = v10 + 56;
  v80(v27, 0, 1, v9);
  sub_227EC2180(v87, v25, &qword_27D80EB30, &qword_227F30448);
  v28 = *(v17 + 56);
  sub_227EC2180(v27, v19, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v25, &v19[v28], &qword_27D80EB30, &qword_227F30448);
  v29 = *(v10 + 48);
  if (v29(v19, 1, v9) == 1)
  {
    sub_227EB8430(v25, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v27, &qword_27D80EB30, &qword_227F30448);
    v30 = v29(&v19[v28], 1, v9);
    v31 = v84;
    if (v30 == 1)
    {
      return sub_227EB8430(v19, &qword_27D80EB30, &qword_227F30448);
    }

    goto LABEL_6;
  }

  sub_227EC2180(v19, v85, &qword_27D80EB30, &qword_227F30448);
  if (v29(&v19[v28], 1, v9) == 1)
  {
    sub_227EB8430(v25, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v27, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v85, type metadata accessor for Configuration);
    v31 = v84;
LABEL_6:
    v33 = &qword_27D80EB50;
    v34 = &qword_227F30470;
    v35 = v19;
    goto LABEL_7;
  }

  v61 = v78;
  sub_227EF9D0C(&v19[v28], v78, type metadata accessor for Configuration);
  v62 = _s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0();
  v31 = v84;
  if (v62)
  {
    v63 = MEMORY[0x22AAAC210]();
    v65 = v64;
    v66 = MEMORY[0x22AAAC210]();
    v68 = v67;
    v70 = sub_227ED43A4(v63, v65, v66, v67);
    sub_227EC15A8(v66, v68);
    sub_227EC15A8(v63, v65);
    sub_227EF9E90(v78, type metadata accessor for Configuration);
    sub_227EB8430(v25, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v27, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v85, type metadata accessor for Configuration);
    result = sub_227EB8430(v19, &qword_27D80EB30, &qword_227F30448);
    if (v70)
    {
      return result;
    }

    goto LABEL_8;
  }

  sub_227EF9E90(v61, type metadata accessor for Configuration);
  sub_227EB8430(v25, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v27, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v85, type metadata accessor for Configuration);
  v35 = v19;
  v33 = &qword_27D80EB30;
  v34 = &qword_227F30448;
LABEL_7:
  sub_227EB8430(v35, v33, v34);
LABEL_8:
  sub_227EB8430(v87, &qword_27D80EB30, &qword_227F30448);
  v36 = v82;
  sub_227EF9CA4(v86, v82, type metadata accessor for Configuration);
  v37 = sub_227F2B304();
  v38 = sub_227F2B8F4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v84 = swift_slowAlloc();
    v85 = v9;
    v89 = v84;
    *v39 = 136315138;
    v40 = v77;
    sub_227EF9CA4(v36, v77, type metadata accessor for Configuration);
    v88[0] = 0;
    v88[1] = 0xE000000000000000;
    sub_227F2B9A4();

    strcpy(v88, "(manifestURL: ");
    HIBYTE(v88[1]) = -18;
    v41 = sub_227F2B004();
    LODWORD(v78) = v38;
    MEMORY[0x22AAAC3E0](v41);

    MEMORY[0x22AAAC3E0](0x63696C627570202CLL, 0xED0000203A79654BLL);
    v42 = sub_227F2B554();
    v44 = v43;
    v45 = v36;
    v46 = sub_227F2B154();
    v48 = v47;
    sub_227EC15A8(v42, v44);
    MEMORY[0x22AAAC3E0](v46, v48);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v49 = v88[0];
    v50 = v88[1];
    sub_227EF9E90(v40, type metadata accessor for Configuration);
    sub_227EF9E90(v45, type metadata accessor for Configuration);
    v51 = sub_227ECAC40(v49, v50, &v89);

    *(v39 + 4) = v51;
    _os_log_impl(&dword_227EB2000, v37, v78, "New RRD configuration %s", v39, 0xCu);
    v52 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    v9 = v85;
    MEMORY[0x22AAAD240](v52, -1, -1);
    MEMORY[0x22AAAD240](v39, -1, -1);
  }

  else
  {

    sub_227EF9E90(v36, type metadata accessor for Configuration);
  }

  v53 = v87;
  sub_227EF9CA4(v86, v87, type metadata accessor for Configuration);
  v80(v53, 0, 1, v9);
  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  sub_227EF9EF0(&qword_27D80EB58, type metadata accessor for Configuration, &unk_227F2E274);
  v54 = sub_227F2AE84();
  v56 = v55;

  if (v31)
  {
    *v79 = v31;
  }

  else
  {
    strcpy(v88, "rrd.json");
    BYTE1(v88[1]) = 0;
    WORD1(v88[1]) = 0;
    HIDWORD(v88[1]) = -402653184;
    v58 = v73;
    v57 = v74;
    v59 = v71;
    (*(v73 + 104))(v71, *MEMORY[0x277CC91D0], v74);
    sub_227EB84D8();
    v60 = v72;
    sub_227F2B104();
    (*(v58 + 8))(v59, v57);
    sub_227F2B174();
    (*(v75 + 8))(v60, v76);
    return sub_227EC15A8(v54, v56);
  }

  return result;
}

uint64_t sub_227EF4A78(uint64_t a1)
{
  v120 = a1;
  v2 = type metadata accessor for Configuration(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v103 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v112 = v8;
  v113 = &v101 - v7;
  MEMORY[0x28223BE20](v6);
  v107 = &v101 - v9;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  v10 = MEMORY[0x28223BE20](v119);
  v106 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v115 = &v101 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v104 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v109 = &v101 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v108 = &v101 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v110 = &v101 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v101 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v114 = &v101 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v101 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v101 - v30;
  sub_227F282D8(v29);
  v32 = *(v3 + 48);
  v33 = v32(v29, 1, v2);
  v122 = v32;
  v121 = v3 + 48;
  v116 = v1;
  v118 = v31;
  if (v33 == 1)
  {
    v34 = (v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v34 + *(v35 + 28), v31, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v34);
    v36 = v32(v29, 1, v2);
    v37 = v2;
    if (v36 != 1)
    {
      sub_227EB8430(v29, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v29, v31, type metadata accessor for Configuration);
    (*(v3 + 56))(v31, 0, 1, v2);
    v37 = v2;
  }

  sub_227F282D8(v24);
  v38 = v122;
  v39 = v122(v24, 1, v37);
  v40 = v114;
  if (v39 == 1)
  {
    sub_227EF9CA4(v120, v114, type metadata accessor for Configuration);
    v41 = v38(v24, 1, v37);
    v42 = v118;
    if (v41 != 1)
    {
      sub_227EB8430(v24, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EF9D0C(v24, v114, type metadata accessor for Configuration);
    v42 = v118;
  }

  v111 = v3;
  v105 = *(v3 + 56);
  v105(v40, 0, 1, v37);
  v43 = *(v119 + 48);
  v44 = v115;
  sub_227EC2180(v42, v115, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v40, v44 + v43, &qword_27D80EB30, &qword_227F30448);
  v45 = v122;
  if (v122(v44, 1, v37) == 1)
  {
    sub_227EB8430(v40, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v42, &qword_27D80EB30, &qword_227F30448);
    if (v122((v44 + v43), 1, v37) == 1)
    {
      sub_227EB8430(v44, &qword_27D80EB30, &qword_227F30448);
      v46 = v116;
      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v57 = v110;
  sub_227EC2180(v44, v110, &qword_27D80EB30, &qword_227F30448);
  if (v45(v44 + v43, 1, v37) == 1)
  {
    sub_227EB8430(v40, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v42, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v57, type metadata accessor for Configuration);
LABEL_17:
    v58 = &qword_27D80EB50;
    v59 = &qword_227F30470;
    v60 = v44;
LABEL_18:
    sub_227EB8430(v60, v58, v59);
    v46 = v116;
LABEL_19:
    v61 = v120;
    v62 = v113;
    sub_227EF9CA4(v120, v113, type metadata accessor for Configuration);
    v63 = (*(v111 + 80) + 24) & ~*(v111 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v46;
    v65 = sub_227EF9D0C(v62, v64 + v63, type metadata accessor for Configuration);
    MEMORY[0x28223BE20](v65);
    *(&v101 - 4) = v61;
    *(&v101 - 3) = v46;
    *(&v101 - 2) = sub_227EF9590;
    *(&v101 - 1) = v64;

    v66 = v117;
    v67 = sub_227EF2ED0(sub_227EFA0AC);
    v68 = v66;
    if (!v66)
    {
      v69 = v67;

      return v69;
    }

    goto LABEL_31;
  }

  v71 = v107;
  sub_227EF9D0C(v44 + v43, v107, type metadata accessor for Configuration);
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    sub_227EF9E90(v71, type metadata accessor for Configuration);
    sub_227EB8430(v40, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v118, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v57, type metadata accessor for Configuration);
    v60 = v44;
    v58 = &qword_27D80EB30;
    v59 = &qword_227F30448;
    goto LABEL_18;
  }

  v72 = MEMORY[0x22AAAC210]();
  v101 = v73;
  v74 = MEMORY[0x22AAAC210]();
  v76 = v75;
  v77 = v101;
  v102 = sub_227ED43A4(v72, v101, v74, v75);
  sub_227EC15A8(v74, v76);
  sub_227EC15A8(v72, v77);
  sub_227EF9E90(v107, type metadata accessor for Configuration);
  sub_227EB8430(v40, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v118, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v110, type metadata accessor for Configuration);
  sub_227EB8430(v44, &qword_27D80EB30, &qword_227F30448);
  v46 = v116;
  if (!v102)
  {
    goto LABEL_19;
  }

LABEL_12:
  v118 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  os_unfair_lock_lock((v46 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v47 = (v46 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  os_unfair_lock_lock((v46 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  v49 = v108;
  sub_227EC2180(v47 + *(v48 + 28), v108, &qword_27D80EB30, &qword_227F30448);
  v50 = v47;
  v51 = v49;
  os_unfair_lock_unlock(v50);
  v52 = v109;
  sub_227EF9CA4(v120, v109, type metadata accessor for Configuration);
  v105(v52, 0, 1, v37);
  v53 = *(v119 + 48);
  v54 = v49;
  v55 = v106;
  sub_227EC2180(v54, v106, &qword_27D80EB30, &qword_227F30448);
  sub_227EC2180(v52, v55 + v53, &qword_27D80EB30, &qword_227F30448);
  v56 = v122;
  if (v122(v55, 1, v37) == 1)
  {
    sub_227EB8430(v52, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v51, &qword_27D80EB30, &qword_227F30448);
    if (v56(v55 + v53, 1, v37) == 1)
    {
      sub_227EB8430(v55, &qword_27D80EB30, &qword_227F30448);
LABEL_37:
      os_unfair_lock_unlock(&v118[v46]);
      return 1;
    }

    goto LABEL_27;
  }

  v78 = v104;
  sub_227EC2180(v55, v104, &qword_27D80EB30, &qword_227F30448);
  if (v56(v55 + v53, 1, v37) == 1)
  {
    sub_227EB8430(v109, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v51, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v78, type metadata accessor for Configuration);
LABEL_27:
    v79 = &qword_27D80EB50;
    v80 = &qword_227F30470;
    v81 = v55;
    goto LABEL_28;
  }

  v92 = v103;
  sub_227EF9D0C(v55 + v53, v103, type metadata accessor for Configuration);
  if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
  {
    v93 = MEMORY[0x22AAAC210]();
    v95 = v94;
    v96 = MEMORY[0x22AAAC210]();
    v98 = v97;
    v99 = v55;
    v100 = sub_227ED43A4(v93, v95, v96, v97);
    sub_227EC15A8(v96, v98);
    sub_227EC15A8(v93, v95);
    sub_227EF9E90(v92, type metadata accessor for Configuration);
    sub_227EB8430(v109, &qword_27D80EB30, &qword_227F30448);
    sub_227EB8430(v108, &qword_27D80EB30, &qword_227F30448);
    sub_227EF9E90(v78, type metadata accessor for Configuration);
    sub_227EB8430(v99, &qword_27D80EB30, &qword_227F30448);
    v68 = v117;
    if (v100)
    {
      goto LABEL_37;
    }

    goto LABEL_29;
  }

  sub_227EF9E90(v92, type metadata accessor for Configuration);
  sub_227EB8430(v109, &qword_27D80EB30, &qword_227F30448);
  sub_227EB8430(v108, &qword_27D80EB30, &qword_227F30448);
  sub_227EF9E90(v78, type metadata accessor for Configuration);
  v81 = v55;
  v79 = &qword_27D80EB30;
  v80 = &qword_227F30448;
LABEL_28:
  sub_227EB8430(v81, v79, v80);
  v68 = v117;
LABEL_29:
  v82 = __swift_project_boxed_opaque_existential_1((v46 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper), *(v46 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper + 24));
  MEMORY[0x28223BE20](v82);
  v83 = v120;
  *(&v101 - 2) = v46;
  *(&v101 - 1) = v83;
  sub_227EEB1E0(sub_227EF95F8);
  if (!v68)
  {
    goto LABEL_37;
  }

  os_unfair_lock_unlock(&v118[v46]);
LABEL_31:
  v84 = v68;
  v85 = sub_227F2B304();
  v86 = sub_227F2B8E4();

  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    v88 = swift_slowAlloc();
    *v87 = 138412290;
    v89 = v68;
    v90 = _swift_stdlib_bridgeErrorToNSError();
    *(v87 + 4) = v90;
    *v88 = v90;
    _os_log_impl(&dword_227EB2000, v85, v86, "Error applying configuration: %@. Reseting to the initial state.", v87, 0xCu);
    sub_227EB8430(v88, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v88, -1, -1);
    MEMORY[0x22AAAD240](v87, -1, -1);
  }

  sub_227EF304C(v91, v46);
  return swift_willThrow();
}

void sub_227EF58AC(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
  os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  sub_227EF3FF8(v4 + *(v5 + 28), a2, a1, &v6);
  os_unfair_lock_unlock(v4);
}

uint64_t sub_227EF5944@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, uint64_t a4@<X4>, char *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  result = sub_227EDEF80(a1, (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper), a3, a4);
  if (!v5)
  {
    v15 = result;
    if (result != 1)
    {
      v16 = type metadata accessor for Manifest(0);
      (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
      v17 = (a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock((a2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
      sub_227EB8430(v17 + v18, &qword_27D80EB28, &qword_227F30440);
      sub_227EC2180(v13, v17 + v18, &qword_27D80EB28, &qword_227F30440);
      os_unfair_lock_unlock(v17);
      result = sub_227EB8430(v13, &qword_27D80EB28, &qword_227F30440);
      v15 = 2;
    }

    *a5 = v15;
  }

  return result;
}

void sub_227EF5AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v148 = a3;
  v142 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v6 - 8);
  v121 = &v113 - v7;
  v124 = sub_227F2AFF4();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v122 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_227F2B524();
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v132 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_227F2B5A4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v113 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_227F2B504();
  v131 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v130 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v136 = &v113 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v138 = &v113 - v15;
  v137 = type metadata accessor for Configuration(0);
  v135 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v133 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v113 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_227F2B114();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v113 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v113 - v25;
  v27 = type metadata accessor for Manifest(0);
  v120 = *(v27 - 8);
  v28 = MEMORY[0x28223BE20](v27);
  v139 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v113 - v30;
  v140 = type metadata accessor for FileInfo(0);
  v141 = a2;
  sub_227EF9CA4(a2 + *(v140 + 20), v19, type metadata accessor for ContainerizableURL);
  (*(v21 + 32))(v26, v19, v20);
  sub_227F2AE24();
  swift_allocObject();
  sub_227F2AE14();
  v32 = sub_227F2B124();
  if (v3)
  {
    (*(v21 + 8))(v26, v20);

    v34 = v148;
LABEL_3:
    v35 = v141;
LABEL_5:
    v40 = (v35 + *(v140 + 24));
    v41 = *v40;
    v42 = v40[1];
    aBlock = v4;
    LOBYTE(v144) = 1;
    v145 = v41;
    v146 = v42;
    v43 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock;
    v44 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
    v45 = v4;

    sub_227EE1E9C(&aBlock, (v34 + v43), (v34 + v44));

    swift_willThrow();
    return;
  }

  v36 = v32;
  v116 = v24;
  v119 = v20;
  v118 = v31;
  v37 = v33;
  sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest, &unk_227F2E580);
  v38 = v139;
  v39 = v37;
  sub_227F2AE04();
  v117 = 0;
  v115 = v27;
  v46 = (v21 + 8);
  v114 = *(v21 + 8);
  v114(v26, v119);
  sub_227EC15A8(v36, v39);

  sub_227EF9D0C(v38, v118, type metadata accessor for Manifest);
  v34 = v148;
  v47 = v136;
  sub_227F282D8(v136);
  v48 = v135;
  v49 = *(v135 + 48);
  v50 = v137;
  if (v49(v47, 1, v137) == 1)
  {
    v51 = (v34 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v34 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    v53 = v47;
    v54 = v138;
    sub_227EC2180(v51 + *(v52 + 28), v138, &qword_27D80EB30, &qword_227F30448);
    v55 = v51;
    v56 = v54;
    os_unfair_lock_unlock(v55);
    v57 = v49(v53, 1, v50);
    v58 = v134;
    if (v57 != 1)
    {
      sub_227EB8430(v53, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    v56 = v138;
    sub_227EF9D0C(v47, v138, type metadata accessor for Configuration);
    (*(v48 + 56))(v56, 0, 1, v50);
    v58 = v134;
  }

  if (v49(v56, 1, v50) == 1)
  {
    sub_227EB8430(v56, &qword_27D80EB30, &qword_227F30448);
    v59 = sub_227F2B304();
    v60 = sub_227F2B8E4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_227EB2000, v59, v60, "CONFIGURATION IS MISSING!", v61, 2u);
      MEMORY[0x22AAAD240](v61, -1, -1);
    }

    sub_227ED687C();
    v4 = swift_allocError();
    *v62 = xmmword_227F303F0;
    *(v62 + 16) = 0;
    swift_willThrow();
    sub_227EF9E90(v118, type metadata accessor for Manifest);
    goto LABEL_3;
  }

  v63 = v133;
  sub_227EF9D0C(v56, v133, type metadata accessor for Configuration);
  v64 = v118;
  if (!*&v118[*(v115 + 40) + 8])
  {
    sub_227ED687C();
    v4 = swift_allocError();
    *v69 = 0;
    *(v69 + 8) = 0;
    *(v69 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v63, type metadata accessor for Configuration);
    goto LABEL_21;
  }

  v139 = v46;
  v65 = *(v50 + 20);
  v66 = sub_227F2B134();
  if (v67 >> 60 == 15)
  {
    sub_227ED687C();
    v4 = swift_allocError();
    *v68 = xmmword_227F303E0;
    *(v68 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v63, type metadata accessor for Configuration);
    v64 = v118;
LABEL_21:
    sub_227EF9E90(v64, type metadata accessor for Manifest);
    goto LABEL_3;
  }

  v70 = v66;
  v71 = v67;
  v72 = v117;
  v73 = sub_227ED5E00();
  if (v72)
  {
    sub_227EF9E90(v63, type metadata accessor for Configuration);
    sub_227EC1650(v70, v71);
    v34 = v148;
    v64 = v118;
    v4 = v72;
    goto LABEL_21;
  }

  v135 = v65;
  v136 = v70;
  v75 = v73;
  v76 = v74;
  sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v77 = v127;
  v78 = v129;
  sub_227F2B4F4();
  sub_227ED3E74(v75, v76);
  sub_227EF96A8(v75, v76, v77);
  v137 = v75;
  v138 = v76;
  v79 = v75;
  v80 = v136;
  sub_227EC15A8(v79, v76);
  v81 = v130;
  sub_227F2B4E4();
  (*(v128 + 8))(v77, v78);
  *&aBlock = v80;
  *(&aBlock + 1) = v71;
  sub_227ED3E74(v80, v71);
  sub_227EC15FC();
  v82 = v132;
  sub_227F2B514();
  sub_227EF9EF0(&qword_27D80EB60, MEMORY[0x277CC5290], MEMORY[0x277CC5288]);
  v83 = v133;
  v84 = sub_227F2B534();
  sub_227EC15A8(v137, v138);
  sub_227EC1650(v80, v71);
  (*(v125 + 8))(v82, v126);
  (*(v131 + 8))(v81, v58);
  if ((v84 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB68, &qword_227F30478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227F2C980;
    *(inited + 32) = 0x707954726F727265;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = sub_227F2B934();
    v93 = sub_227ECCC4C(inited);
    swift_setDeallocating();
    sub_227EB8430(inited + 32, &qword_27D80EB70, &unk_227F30480);
    if (qword_27D80DF40 != -1)
    {
      swift_once();
    }

    v94 = sub_227F2B334();
    __swift_project_value_buffer(v94, qword_27D81B210);

    v95 = sub_227F2B304();
    v96 = sub_227F2B8D4();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&aBlock = v98;
      *v97 = 136315138;
      sub_227EF99DC();
      v99 = sub_227F2B5E4();
      v101 = sub_227ECAC40(v99, v100, &aBlock);

      *(v97 + 4) = v101;
      _os_log_impl(&dword_227EB2000, v95, v96, "reportValidationError: %s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x22AAAD240](v98, -1, -1);
      MEMORY[0x22AAAD240](v97, -1, -1);
    }

    v34 = v148;
    v102 = v118;
    sub_227EF9390(v93);
    v104 = v103;

    v105 = sub_227F2B644();
    v106 = swift_allocObject();
    *(v106 + 16) = v104;
    v146 = sub_227EF99BC;
    v147 = v106;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v144 = sub_227F1FCD8;
    v145 = &block_descriptor_0;
    v107 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v107);

    sub_227ED687C();
    v4 = swift_allocError();
    *v108 = xmmword_227F303D0;
    *(v108 + 16) = 3;
    swift_willThrow();
    sub_227EF9E90(v133, type metadata accessor for Configuration);
    sub_227EF9E90(v102, type metadata accessor for Manifest);
    v35 = v141;
    goto LABEL_5;
  }

  v85 = v83;
  strcpy(&aBlock, "manifest.json");
  HIWORD(aBlock) = -4864;
  v86 = v123;
  v87 = v122;
  v88 = v124;
  (*(v123 + 104))(v122, *MEMORY[0x277CC91D0], v124);
  sub_227EB84D8();
  v89 = v148;
  v90 = v116;
  sub_227F2B104();
  (*(v86 + 8))(v87, v88);
  sub_227EE03E8(v141, v90, (v89 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), (v89 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v91 = v118;
  v114(v90, v119);
  v109 = v121;
  sub_227EF9CA4(v91, v121, type metadata accessor for Manifest);
  (*(v120 + 56))(v109, 0, 1, v115);
  v110 = (v89 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v89 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v111 = v85;
  v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0) + 28);
  sub_227EB8430(v110 + v112, &qword_27D80EB28, &qword_227F30440);
  sub_227EC2180(v109, v110 + v112, &qword_27D80EB28, &qword_227F30440);
  os_unfair_lock_unlock(v110);
  sub_227EB8430(v109, &qword_27D80EB28, &qword_227F30440);
  sub_227EF9E90(v111, type metadata accessor for Configuration);
  sub_227EF9E90(v91, type metadata accessor for Manifest);
}

uint64_t sub_227EF6E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v274 = a6;
  v240 = a5;
  v239 = a4;
  v276 = a3;
  v277 = a2;
  v286 = a1;
  v233 = a7;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  MEMORY[0x28223BE20](v7 - 8);
  v243 = &v222 - v8;
  v275 = type metadata accessor for PersistenceState(0);
  v9 = MEMORY[0x28223BE20](v275);
  v244 = &v222 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v241 = &v222 - v11;
  v260 = sub_227F2B234();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v262 = &v222 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_227F2B274();
  v247 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v246 = &v222 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_227F2AFF4();
  v250 = *(v257 - 1);
  MEMORY[0x28223BE20](v257);
  v249 = &v222 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FileInfo(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v237 = &v222 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v264 = &v222 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v222 - v21;
  v253 = sub_227F2B5A4();
  v252 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v251 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_227F2B504();
  v255 = *(v256 - 1);
  MEMORY[0x28223BE20](v256);
  v254 = &v222 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for Manifest(0);
  v25 = MEMORY[0x28223BE20](v270);
  v269 = &v222 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v267 = &v222 - v27;
  v28 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v28 - 8);
  v273 = &v222 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v235 = &v222 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v222 - v33;
  v35 = sub_227F2B114();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v232 = &v222 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v245 = &v222 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v261 = &v222 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v263 = &v222 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v258 = &v222 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v242 = &v222 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v266 = &v222 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v53 = &v222 - v52;
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v222 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = &v222 - v57;
  v236 = v286 + *(v275 + 20);
  sub_227EC2180(v236, v34, &qword_27D80E8F0, &unk_227F2F4B0);
  v238 = v16;
  v60 = *(v16 + 48);
  v59 = v16 + 48;
  v234 = v60;
  if (v60(v34, 1, v15) == 1)
  {
    sub_227EB8430(v34, &qword_27D80E8F0, &unk_227F2F4B0);
    sub_227EF9A28();
    v61 = swift_allocError();
    *v62 = 0xD00000000000002BLL;
    v62[1] = 0x8000000227F34290;
    swift_willThrow();
    v63 = qword_2813CDFF8 + 8;
    v65 = v276;
    v64 = v277;
    v66 = v15;
LABEL_6:
    v81 = (v64 + *(v66 + 24));
    v82 = *v81;
    v83 = v81[1];
    aBlock = v61;
    v279 = 0;
    LOBYTE(v280) = 1;
    v281 = v82;
    v282 = v83;
    v84 = v63[25];
    v85 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
    v86 = v61;

    sub_227EE2F04(&aBlock, (v65 + v84), (v65 + v85));

    result = swift_willThrow();
    *v274 = v61;
    return result;
  }

  v231 = v22;
  v230 = v59;
  v265 = v15;
  v67 = v273;
  sub_227EF9CA4(&v34[*(v15 + 20)], v273, type metadata accessor for ContainerizableURL);
  v69 = v36 + 32;
  v68 = *(v36 + 32);
  v68(v56, v67, v35);
  sub_227EF9E90(v34, type metadata accessor for FileInfo);
  v68(v58, v56, v35);
  v271 = v36;
  v72 = *(v36 + 16);
  v71 = v36 + 16;
  v70 = v72;
  (v72)(v53, v58, v35);
  sub_227F2AE24();
  swift_allocObject();
  v268 = sub_227F2AE14();
  v73 = v272;
  v74 = sub_227F2B124();
  if (v73)
  {

    v61 = v73;
    v66 = v265;
    v80 = *(v271 + 8);
    v80(v53, v35);
    v80(v58, v35);
    v65 = v276;
    v64 = v277;
    v63 = &qword_2813CDFF8[1];
    goto LABEL_6;
  }

  v76 = v75;
  v272 = v58;
  v226 = v70;
  v227 = v71;
  v228 = v68;
  v229 = v69;
  v77 = v74;
  sub_227EF9EF0(&qword_27D80E910, type metadata accessor for Manifest, &unk_227F2E580);
  v78 = v269;
  v79 = v270;
  sub_227F2AE04();
  v225 = *(v271 + 8);
  v271 += 8;
  v225(v53, v35);
  sub_227EC15A8(v77, v76);

  v88 = v78;
  v89 = v267;
  sub_227EF9D0C(v88, v267, type metadata accessor for Manifest);
  v90 = (v89 + v79[9]);
  v91 = *v90;
  v270 = v90[1];
  v92 = v277 + v265[5];
  v93 = v273;
  sub_227EF9CA4(v92, v273, type metadata accessor for ContainerizableURL);
  v228(v266, v93, v35);
  v94 = sub_227F2B124();
  v223 = v91;
  v222 = v92;
  v224 = v35;
  v96 = v94;
  v97 = v95;
  sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  v98 = v251;
  v99 = v253;
  sub_227F2B4F4();
  sub_227ED3E74(v96, v97);
  sub_227EF96A8(v96, v97, v98);
  sub_227EC15A8(v96, v97);
  v100 = v254;
  sub_227F2B4E4();
  (*(v252 + 8))(v98, v99);
  v101 = v256;
  v281 = v256;
  v282 = sub_227EF9EF0(&qword_27D80E338, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  v102 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
  v103 = v255;
  (*(v255 + 16))(v102, v100, v101);
  __swift_project_boxed_opaque_existential_1(&aBlock, v281);
  sub_227F2AF34();
  v253 = 0;
  (*(v103 + 8))(v100, v101);
  v104 = v284;
  v105 = v285;
  __swift_destroy_boxed_opaque_existential_0(&aBlock);
  v269 = sub_227F2B154();
  v107 = v106;
  sub_227EC15A8(v104, v105);
  v108 = v96;
  v64 = v277;
  sub_227EC15A8(v108, v97);
  v225(v266, v224);
  v109 = v231;
  sub_227EF9CA4(v64, v231, type metadata accessor for FileInfo);

  v65 = v276;
  v110 = sub_227F2B304();
  v111 = sub_227F2B8D4();

  v112 = os_log_type_enabled(v110, v111);
  v268 = v107;
  if (v112)
  {
    v113 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    LODWORD(v256) = v111;
    v266 = v114;
    aBlock = v114;
    *v113 = 136315650;
    v115 = v223;
    *(v113 + 4) = sub_227ECAC40(v223, v270, &aBlock);
    *(v113 + 12) = 2080;
    *(v113 + 14) = sub_227ECAC40(v269, v107, &aBlock);
    *(v113 + 22) = 2048;
    v116 = v273;
    sub_227EF9CA4(v109 + v265[5], v273, type metadata accessor for ContainerizableURL);
    v117 = v242;
    v118 = v116;
    v119 = v224;
    v228(v242, v118, v224);
    v120 = sub_227F2A850();
    v122 = v121;
    v225(v117, v119);
    if (v122)
    {
      v123 = 0;
    }

    else
    {
      v123 = v120;
    }

    sub_227EF9E90(v109, type metadata accessor for FileInfo);
    *(v113 + 24) = v123;
    _os_log_impl(&dword_227EB2000, v110, v256, "Expected digest: %s actual: %s updateData size: %ld", v113, 0x20u);
    v124 = v266;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v124, -1, -1);
    v125 = v113;
    v64 = v277;
    MEMORY[0x22AAAD240](v125, -1, -1);

    v126 = v264;
  }

  else
  {
    sub_227EF9E90(v109, type metadata accessor for FileInfo);

    v126 = v264;
    v115 = v223;
  }

  v127 = v269;
  v128 = v226;
  v129 = v268;
  if ((v269 != v115 || v268 != v270) && (sub_227F2BC64() & 1) == 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB68, &qword_227F30478);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227F2C980;
    *(inited + 32) = 0x707954726F727265;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = sub_227F2B934();
    v195 = sub_227ECCC4C(inited);
    swift_setDeallocating();
    sub_227EB8430(inited + 32, &qword_27D80EB70, &unk_227F30480);
    if (qword_27D80DF40 != -1)
    {
      swift_once();
    }

    v196 = sub_227F2B334();
    __swift_project_value_buffer(v196, qword_27D81B210);

    v197 = sub_227F2B304();
    v198 = sub_227F2B8D4();

    if (os_log_type_enabled(v197, v198))
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      aBlock = v200;
      *v199 = 136315138;
      sub_227EF99DC();
      v201 = sub_227F2B5E4();
      v203 = sub_227ECAC40(v201, v202, &aBlock);

      *(v199 + 4) = v203;
      _os_log_impl(&dword_227EB2000, v197, v198, "reportValidationError: %s", v199, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v200);
      v204 = v200;
      v64 = v277;
      MEMORY[0x22AAAD240](v204, -1, -1);
      MEMORY[0x22AAAD240](v199, -1, -1);
    }

    sub_227EF9390(v195);
    v206 = v205;

    v207 = sub_227F2B644();
    v208 = swift_allocObject();
    *(v208 + 16) = v206;
    v282 = sub_227EFA0C8;
    v283 = v208;
    aBlock = MEMORY[0x277D85DD0];
    v279 = 1107296256;
    v280 = sub_227F1FCD8;
    v281 = &block_descriptor_26;
    v209 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v209);

    sub_227ED687C();
    v61 = swift_allocError();
    *v210 = xmmword_227F30400;
    *(v210 + 16) = 3;
    swift_willThrow();
    v225(v272, v224);
    sub_227EF9E90(v267, type metadata accessor for Manifest);
    v66 = v265;
    v63 = qword_2813CDFF8 + 8;
    goto LABEL_6;
  }

  v130 = v224;
  v128(v126, v64);
  v131 = v273;
  sub_227EF9CA4(v222, v273, type metadata accessor for ContainerizableURL);
  v132 = v265;
  v228((v126 + v265[5]), v131, v130);
  v133 = (v64 + v132[6]);
  v134 = *v133;
  v135 = v133[1];
  v136 = *(v64 + v132[7]);
  v137 = v132[9];
  v254 = v126 + v137;
  sub_227EC2180(v64 + v137, v126 + v137, &unk_27D80E3B0, &unk_227F2DB00);
  v138 = (v126 + v132[6]);
  v255 = v134;
  *v138 = v134;
  v138[1] = v135;
  v139 = v132[7];
  v256 = v136;
  *(v126 + v139) = v136;
  v140 = (v126 + v132[8]);
  *v140 = v127;
  v140[1] = v129;
  aBlock = 0x6568636163;
  v279 = 0xE500000000000000;
  v141 = *MEMORY[0x277CC91C0];
  v142 = v250;
  v270 = *(v250 + 13);
  v251 = v250 + 104;
  v143 = v249;
  v144 = v257;
  (v270)(v249, v141, v257);
  v145 = sub_227EB84D8();
  v266 = v135;

  sub_227F2B104();
  v146 = *(v142 + 1);
  (v146)(v143, v144);
  v147 = v246;
  sub_227F2B264();
  v148 = sub_227F2B254();
  v150 = v149;
  (*(v247 + 8))(v147, v248);
  aBlock = v148;
  v279 = v150;
  LODWORD(v248) = *MEMORY[0x277CC91D8];
  (v270)(v143);
  v151 = v258;
  v252 = v145;
  v152 = v263;
  sub_227F2B104();
  v250 = v146;
  (v146)(v143, v144);

  v153 = v225;
  v225(v152, v224);
  v263 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper;
  v154 = *(v276 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock + 24);
  v155 = *(v276 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock + 32);
  __swift_project_boxed_opaque_existential_1((v276 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock), v154);
  v156 = *(v155 + 8);
  v157 = v262;
  v158 = v155;
  v159 = v151;
  v156(v154, v158);
  v160 = v245;
  v161 = v253;
  sub_227F2A3D0(v245);
  v61 = v161;
  if (v161)
  {
    (*(v259 + 8))(v157, v260);
    v162 = v224;
    v153(v159, v224);
    v65 = v276;
    v64 = v277;
    v63 = qword_2813CDFF8 + 8;
    v163 = v153;
    v66 = v265;
    v163(v272, v162);
    sub_227EF9E90(v264, type metadata accessor for FileInfo);
    sub_227EF9E90(v267, type metadata accessor for Manifest);
    goto LABEL_6;
  }

  aBlock = v239;
  v279 = v240;
  v164 = v257;
  (v270)(v143, v248, v257);
  sub_227F2B104();
  (v250)(v143, v164);
  v165 = v224;
  v153(v160, v224);
  v166 = v259;
  v167 = *(v259 + 56);
  v253 = v259 + 56;
  v257 = v167;
  (v167)(v243, 1, 1, v260);
  v168 = v275;
  v169 = v244;
  sub_227EF9CA4(v236, &v244[*(v275 + 20)], type metadata accessor for ResourceInfo);
  v270 = (v286 + *(v168 + 24));
  v170 = v237;
  v171 = v226;
  (v226)(v237, v264, v165);
  v172 = v265;
  v171(v170 + v265[5], v261, v165);
  sub_227EC2180(v254, v170 + v172[9], &unk_27D80E3B0, &unk_227F2DB00);
  v173 = (v170 + v172[6]);
  v174 = v266;
  *v173 = v255;
  v173[1] = v174;
  v175 = v256;
  *(v170 + v172[7]) = v256;
  v176 = (v170 + v172[8]);
  v177 = v268;
  *v176 = v269;
  v176[1] = v177;
  v178 = &v169[*(v168 + 24)];
  sub_227EF9D0C(v170, v178, type metadata accessor for FileInfo);
  (*(v238 + 56))(v178, 0, 1, v172);
  v179 = type metadata accessor for ResourceInfo(0);
  v180 = v179[5];
  v181 = v260;
  (*(v166 + 16))(v178 + v180, v262, v260);
  v182 = v257;
  (v257)(v178 + v180, 0, 1, v181);
  sub_227EC2180(v270 + v179[6], v178 + v179[6], &unk_27D80E3B0, &unk_227F2DB00);
  v183 = v179[8];
  v184 = type metadata accessor for ResourceInfo.DownloadState(0);
  (*(*(v184 - 8) + 56))(v178 + v183, 1, 1, v184);
  v185 = v178 + v179[7];
  *v185 = v175;
  *(v185 + 8) = 0;
  v186 = v178 + v179[9];
  *v186 = 0;
  *(v186 + 8) = 1;
  v187 = v179[10];
  v188 = v244;
  v189 = v178 + v187;
  *v189 = 0u;
  *(v189 + 16) = 0u;
  *(v189 + 32) = 1;
  v182(v188, 1, 1, v181);
  v190 = v286;

  v191 = sub_227EE3498(v243, v188);
  MEMORY[0x28223BE20](v191);
  v192 = v264;
  *(&v222 - 4) = v190;
  *(&v222 - 3) = v192;
  *(&v222 - 2) = v261;
  v65 = v276;
  v193 = v241;
  sub_227EDE1BC(&v263[v276], sub_227EF9A7C, (&v222 - 6), v241);
  (*(v259 + 8))(v262, v181);
  v211 = v224;
  v212 = v225;
  v225(v258, v224);
  sub_227EF9E90(v188, type metadata accessor for PersistenceState);
  sub_227EE3518(v193, v190);
  v212(v261, v211);
  sub_227EF9E90(v264, type metadata accessor for FileInfo);
  v213 = v235;
  sub_227EC2180(v270, v235, &qword_27D80E8F0, &unk_227F2F4B0);
  v214 = v265;
  v215 = v234(v213, 1, v265);
  v64 = v277;
  if (v215 == 1)
  {
    sub_227EB8430(v213, &qword_27D80E8F0, &unk_227F2F4B0);
    v66 = v214;
    sub_227EF9A28();
    v61 = swift_allocError();
    *v216 = 0xD00000000000001DLL;
    v216[1] = 0x8000000227F342C0;
    swift_willThrow();
    v225(v272, v211);
    sub_227EF9E90(v267, type metadata accessor for Manifest);
    v63 = qword_2813CDFF8 + 8;
    goto LABEL_6;
  }

  v225(v272, v211);
  v217 = v213 + v214[5];
  v218 = v273;
  sub_227EF9CA4(v217, v273, type metadata accessor for ContainerizableURL);
  v219 = v211;
  v220 = v232;
  v221 = v228;
  v228(v232, v218, v219);
  sub_227EF9E90(v213, type metadata accessor for FileInfo);
  sub_227EF9E90(v267, type metadata accessor for Manifest);
  return v221(v233, v220, v219);
}

uint64_t sub_227EF8F0C()
{
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_persistenceFolderURL;
  v4 = sub_227F2B114();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_clock));
  v5 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450);
  sub_227EF9E90(v5 + *(v6 + 28), type metadata accessor for PersistenceState);
  v7 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EB8430(v7 + *(v8 + 28), &qword_27D80EB28, &qword_227F30440);
  v9 = v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
  sub_227EB8430(v9 + *(v10 + 28), &qword_27D80EB30, &qword_227F30448);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_storageHelper));
  v11 = *(*v0 + 48);
  v12 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v11, v12);
}

uint64_t type metadata accessor for PersistenceManager(uint64_t a1)
{
  result = qword_2813CD8D0;
  if (!qword_2813CD8D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_227EF9124(uint64_t a1)
{
  sub_227F2B334();
  if (v1 <= 0x3F)
  {
    sub_227F2B114();
    if (v2 <= 0x3F)
    {
      sub_227EF92E4(319);
      if (v3 <= 0x3F)
      {
        sub_227EF933C(319, &qword_2813CE018, &qword_27D80EB28, &qword_227F30440);
        if (v4 <= 0x3F)
        {
          sub_227EF933C(319, &qword_2813CE028, &qword_27D80EB30, &qword_227F30448);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_227EF92E4(uint64_t a1)
{
  if (!qword_2813CE020)
  {
    type metadata accessor for PersistenceState(255);
    v1 = sub_227F2B2F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2813CE020);
    }
  }
}

void sub_227EF933C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_227F2B2F4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_227EF9390(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E470, &qword_227F2DE20);
    v2 = sub_227F2BAB4();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_227ECA808(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

_BYTE *sub_227EF9614@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_227EF9A9C(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_227EF9B54(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_227EF9BD0(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_227EF96A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_227F2B5A4();
      sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_227F2B4D4();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_227EF9888(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_227EF9888(v5, v6);
  }

  sub_227F2B5A4();
  sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_227F2B4D4();
}

uint64_t sub_227EF9888(uint64_t a1, uint64_t a2)
{
  result = sub_227F2AEF4();
  if (!result || (result = sub_227F2AF14(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_227F2AF04();
      sub_227F2B5A4();
      sub_227EF9EF0(&qword_27D80E348, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_227F2B4D4();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_227EF99DC()
{
  result = qword_27D80EB78;
  if (!qword_27D80EB78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D80EB78);
  }

  return result;
}

unint64_t sub_227EF9A28()
{
  result = qword_27D80EB80;
  if (!qword_27D80EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EB80);
  }

  return result;
}

uint64_t sub_227EF9A9C(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_227EF9B54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_227F2AF24();
  swift_allocObject();
  result = sub_227F2AEE4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_227F2B144();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_227EF9BD0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_227F2AF24();
  swift_allocObject();
  result = sub_227F2AEE4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x22AAAD240);
  }

  return result;
}

uint64_t sub_227EF9CA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EF9D0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EF9D74(uint64_t a1)
{
  v4 = *(type metadata accessor for DirectoryCleaner(0) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = (*(v4 + 64) + v5 + v6) & ~v5;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_227ED03CC;

  return sub_227EF04C8(a1, v8, v9, v1 + v6, v1 + v7);
}

uint64_t sub_227EF9E90(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227EF9EF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227EF9F38(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return sub_227F07E98(a1, v4);
}

uint64_t sub_227EF9FF0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227ED03CC;

  return sub_227F07E98(a1, v4);
}

uint64_t sub_227EFA0D0()
{
  v0 = sub_227F2B6B4();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_227F2AE64();
  MEMORY[0x28223BE20](v1);
  sub_227F2AEA4();
  swift_allocObject();
  sub_227F2AE94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6A8, &qword_227F2E5C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_227F304E0;
  sub_227F2AE44();
  sub_227F2AE34();
  sub_227F2AE54();
  v13[0] = v2;
  sub_227EFA358();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E6B8, &qword_227F2E5C8);
  sub_227ED6C20();
  sub_227F2B964();
  sub_227F2AE74();
  memcpy(v13, v12, 0x1A0uLL);
  sub_227EFA3B0();
  v3 = v13[54];
  v4 = sub_227F2AE84();
  if (v3)
  {
  }

  v7 = v4;
  v8 = v5;
  sub_227F2B6A4();
  v9 = sub_227F2B694();
  v11 = v10;
  sub_227EC15A8(v7, v8);

  if (v11)
  {
    return v9;
  }

  else
  {
    return 32123;
  }
}

unint64_t sub_227EFA358()
{
  result = qword_27D80E6B0;
  if (!qword_27D80E6B0)
  {
    sub_227F2AE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80E6B0);
  }

  return result;
}

unint64_t sub_227EFA3B0()
{
  result = qword_27D80EBB0;
  if (!qword_27D80EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBB0);
  }

  return result;
}

uint64_t sub_227EFA404(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC00, &qword_227F309A8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE040();
  sub_227F2BD94();
  v14 = 0;
  sub_227F2BBD4();
  if (!v5)
  {
    v13 = 1;
    sub_227F2BBD4();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_227EFA598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74736566696E616DLL && a2 == 0xEC0000006C72755FLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B5F63696C627570 && a2 == 0xEA00000000007965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EFA680(uint64_t a1)
{
  v2 = sub_227EFE040();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFA6BC(uint64_t a1)
{
  v2 = sub_227EFE040();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFA718(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ECC8, &qword_227F30F58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE974();
  sub_227F2BD94();
  v8[15] = 0;
  sub_227F2BBD4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_227F2BB94();
  v8[13] = 2;
  sub_227F2BBD4();
  v8[12] = 3;
  sub_227F2BC04();
  v8[11] = 4;
  sub_227F2BB94();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227EFA8F8()
{
  v1 = *v0;
  v2 = 0x525565746F6D6572;
  v3 = 0x4C5255656C6966;
  v4 = 0x6F43737574617473;
  if (v1 != 3)
  {
    v4 = 1734440037;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x747365676964;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EFA990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EFD934(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EFA9B8(uint64_t a1)
{
  v2 = sub_227EFE974();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFA9F4(uint64_t a1)
{
  v2 = sub_227EFE974();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFAA48(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ECD8, &qword_227F30F60);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE9C8();
  sub_227F2BD94();
  v11[15] = 0;
  sub_227F2BBD4();
  if (!v4)
  {
    v11[14] = 1;
    sub_227F2BBF4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_227EFABE4(uint64_t a1)
{
  v2 = sub_227EFE9C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFAC20(uint64_t a1)
{
  v2 = sub_227EFE9C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFAC7C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC88, &qword_227F30D78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE5E8();
  sub_227F2BD94();
  LOBYTE(v19) = 0;
  sub_227F2BBA4();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v10 = *(v3 + 64);
    v25 = *(v3 + 48);
    v26 = v10;
    v11 = *(v3 + 32);
    v24[0] = *(v3 + 16);
    v24[1] = v11;
    v20 = v9;
    v21 = v25;
    v22 = *(v3 + 64);
    v27 = *(v3 + 80);
    v23 = *(v3 + 80);
    v19 = v24[0];
    v18 = 1;
    sub_227EC2180(v24, v16, &qword_27D80EC98, &qword_227F30D80);
    sub_227EFE63C();
    sub_227F2BBC4();
    v16[2] = v21;
    v16[3] = v22;
    v17 = v23;
    v16[0] = v19;
    v16[1] = v20;
    sub_227EB8430(v16, &qword_27D80EC98, &qword_227F30D80);
    LOBYTE(v14) = 2;
    sub_227F2BBB4();
    LOBYTE(v14) = 3;
    sub_227F2BBA4();
    v14 = *(v3 + 120);
    v15 = *(v3 + 136);
    v13[15] = 4;
    sub_227EFE690();
    sub_227F2BBC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_227EFAF64(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC10, &qword_227F309B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE094();
  sub_227F2BD94();
  v9 = v3[5];
  v10 = v3[7];
  v59 = v3[6];
  v60 = v10;
  v11 = v3[7];
  v61 = v3[8];
  v12 = v3[1];
  v13 = v3[3];
  v55 = v3[2];
  v56 = v13;
  v14 = v3[3];
  v15 = v3[5];
  v57 = v3[4];
  v58 = v15;
  v16 = v3[1];
  v54[0] = *v3;
  v54[1] = v16;
  v43 = v59;
  v44 = v11;
  v45 = v3[8];
  v39 = v55;
  v40 = v14;
  v41 = v57;
  v42 = v9;
  v37 = v54[0];
  v38 = v12;
  v63 = 0;
  sub_227EC2180(v54, v36, &qword_27D80EC20, &qword_227F309B8);
  sub_227EFE0E8();
  sub_227F2BBC4();
  v36[6] = v43;
  v36[7] = v44;
  v36[8] = v45;
  v36[2] = v39;
  v36[3] = v40;
  v36[4] = v41;
  v36[5] = v42;
  v36[0] = v37;
  v36[1] = v38;
  sub_227EB8430(v36, &qword_27D80EC20, &qword_227F309B8);
  if (!v2)
  {
    v18 = v3[14];
    v19 = v3[16];
    v51 = v3[15];
    v52 = v19;
    v20 = v3[16];
    v53 = v3[17];
    v21 = v3[10];
    v22 = v3[12];
    v47 = v3[11];
    v48 = v22;
    v23 = v3[12];
    v24 = v3[14];
    v49 = v3[13];
    v50 = v24;
    v25 = v3[10];
    v46[0] = v3[9];
    v46[1] = v25;
    v33 = v51;
    v34 = v20;
    v35 = v3[17];
    v29 = v47;
    v30 = v23;
    v31 = v49;
    v32 = v18;
    v27 = v46[0];
    v28 = v21;
    v62 = 1;
    sub_227EC2180(v46, v26, &qword_27D80EC20, &qword_227F309B8);
    sub_227F2BBC4();
    v26[6] = v33;
    v26[7] = v34;
    v26[8] = v35;
    v26[2] = v29;
    v26[3] = v30;
    v26[4] = v31;
    v26[5] = v32;
    v26[0] = v27;
    v26[1] = v28;
    sub_227EB8430(v26, &qword_27D80EC20, &qword_227F309B8);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_227EFB2AC()
{
  v1 = *v0;
  v2 = 0x657474417473616CLL;
  v3 = 0xD000000000000015;
  v4 = 0x636375537473616CLL;
  if (v1 != 3)
  {
    v4 = 0x64616F6C6E776F64;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F666E49656C6966;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_227EFB368@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EFDAF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EFB390(uint64_t a1)
{
  v2 = sub_227EFE5E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB3CC(uint64_t a1)
{
  v2 = sub_227EFE5E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB420()
{
  if (*v0)
  {
    return 0x74736566696E616DLL;
  }

  else
  {
    return 0x4973657461647075;
  }
}

uint64_t sub_227EFB46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4973657461647075 && a2 == 0xEB000000006F666ELL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736566696E616DLL && a2 == 0xEC0000006F666E49)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_227F2BC64();

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

uint64_t sub_227EFB550(uint64_t a1)
{
  v2 = sub_227EFE094();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB58C(uint64_t a1)
{
  v2 = sub_227EFE094();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB5E0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EC30, &qword_227F309C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFE13C();
  sub_227F2BD94();
  v8[15] = 0;
  sub_227F2BBD4();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_227F2BBB4();
  v8[13] = 2;
  sub_227F2BC04();
  v8[12] = 3;
  sub_227F2BB94();
  v8[11] = 4;
  sub_227F2BBE4();
  v8[10] = 5;
  sub_227F2BB94();
  v8[9] = 6;
  sub_227F2BBD4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_227EFB804()
{
  v1 = *v0;
  v2 = 0x747365676964;
  v3 = 0x5F64657461647075;
  if (v1 != 5)
  {
    v3 = 0x5F73657461647075;
  }

  v4 = 0x727574616E676973;
  if (v1 != 3)
  {
    v4 = 0x6574726F70707573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6574616D69747365;
  if (v1 != 1)
  {
    v5 = 0xD000000000000014;
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

uint64_t sub_227EFB904@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EFDCB8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EFB92C(uint64_t a1)
{
  v2 = sub_227EFE13C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFB968(uint64_t a1)
{
  v2 = sub_227EFE13C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFB9BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EBB8, &qword_227F306A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227EFD3E4();
  sub_227F2BD94();
  v9 = v3[1];
  v25[0] = *v3;
  v25[1] = v9;
  v24[0] = 0;
  sub_227EFD438();
  sub_227F2BBC4();
  if (!v2)
  {
    memcpy(v31, v3 + 2, 0x120uLL);
    memcpy(v25, v3 + 2, sizeof(v25));
    v31[311] = 1;
    sub_227EFD48C(v31, v24);
    sub_227EFD4C4();
    sub_227F2BC14();
    memcpy(v24, v25, sizeof(v24));
    sub_227EFD518(v24);
    v10 = v3[23];
    v11 = v3[21];
    v27 = v3[22];
    v28 = v10;
    v12 = v3[23];
    v13 = v3[25];
    v29 = v3[24];
    v30 = v13;
    v14 = v3[21];
    v26[0] = v3[20];
    v26[1] = v14;
    v20 = v27;
    v21 = v12;
    v15 = v3[25];
    v22 = v29;
    v23 = v15;
    v18 = v26[0];
    v19 = v11;
    v31[310] = 2;
    sub_227EC2180(v26, v17, &qword_27D80EBD8, &qword_227F306A8);
    sub_227EFD548();
    sub_227F2BBC4();
    v17[2] = v20;
    v17[3] = v21;
    v17[4] = v22;
    v17[5] = v23;
    v17[0] = v18;
    v17[1] = v19;
    sub_227EB8430(v17, &qword_27D80EBD8, &qword_227F306A8);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_227EFBC7C()
{
  v1 = 0x65726F7473;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6574617473;
  }
}

uint64_t sub_227EFBCD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227EFDF28(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227EFBCFC(uint64_t a1)
{
  v2 = sub_227EFD3E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227EFBD38(uint64_t a1)
{
  v2 = sub_227EFD3E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227EFBD8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227F2B114();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v13 = type metadata accessor for FileInfo(0);
  v14 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  sub_227EC2180(a1, v12, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_227EB8430(v39, &qword_27D80E8F0, &unk_227F2F4B0);
    result = sub_227EB8430(v12, &qword_27D80E8F0, &unk_227F2F4B0);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    sub_227EFD15C(v12, v16, type metadata accessor for FileInfo);
    v27 = sub_227F2B004();
    v35 = v28;
    v36 = v27;
    v29 = &v16[v13[8]];
    v20 = *v29;
    v21 = v29[1];
    sub_227EFD1C4(&v16[v13[5]], v6, type metadata accessor for ContainerizableURL);
    v31 = v37;
    v30 = v38;
    (*(v37 + 32))(v9, v6, v38);

    v22 = sub_227F2AFE4();
    v23 = v32;
    sub_227EB8430(v39, &qword_27D80E8F0, &unk_227F2F4B0);
    (*(v31 + 8))(v9, v30);
    v33 = v13[6];
    v24 = *&v16[v13[7]];
    v25 = *&v16[v33];
    v26 = *&v16[v33 + 8];

    result = sub_227EFD22C(v16, type metadata accessor for FileInfo);
    v19 = v35;
    v18 = v36;
  }

  *a2 = v18;
  a2[1] = v19;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v22;
  a2[5] = v23;
  a2[6] = v24;
  a2[7] = v25;
  a2[8] = v26;
  return result;
}

double sub_227EFC0FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = type metadata accessor for ResourceInfo.DownloadState(0);
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v47 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v47 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v47 - v16;
  v18 = type metadata accessor for ResourceInfo(0);
  v19 = v18[6];
  v53 = a1;
  sub_227EC2180(a1 + v19, v17, &unk_27D80E3B0, &unk_227F2DB00);
  v20 = sub_227F2B234();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(v17, 1, v20);
  if (v23 == 1)
  {
    sub_227EB8430(v17, &unk_27D80E3B0, &unk_227F2DB00);
    v24 = 0;
  }

  else
  {
    sub_227F2B184();
    v24 = v25;
    (*(v21 + 8))(v17, v20);
  }

  v57 = v23 == 1;
  v26 = v53;
  sub_227EC2180(v53, v11, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EFBD8C(v11, v58);
  *&v56[55] = v58[3];
  *&v56[39] = v58[2];
  *&v56[23] = v58[1];
  *&v56[71] = v59;
  *&v56[7] = v58[0];
  v27 = v26 + v18[7];
  v48 = *v27;
  v55 = *(v27 + 8);
  sub_227EC2180(v26 + v18[5], v15, &unk_27D80E3B0, &unk_227F2DB00);
  v28 = v22(v15, 1, v20);
  if (v28 == 1)
  {
    sub_227EB8430(v15, &unk_27D80E3B0, &unk_227F2DB00);
    v29 = 0;
  }

  else
  {
    sub_227F2B184();
    v29 = v30;
    (*(v21 + 8))(v15, v20);
  }

  v31 = v52;
  v32 = v49;
  v54 = v28 == 1;
  v33 = v53;
  v34 = v53 + v18[8];
  v35 = v51;
  sub_227EC2180(v34, v51, &qword_27D80E8F8, &qword_227F2F5E0);
  sub_227EC2180(v35, v32, &qword_27D80E8F8, &qword_227F2F5E0);
  if ((*(v50 + 48))(v32, 1, v31) == 1)
  {
    sub_227EFD22C(v33, type metadata accessor for ResourceInfo);
    sub_227EB8430(v35, &qword_27D80E8F8, &qword_227F2F5E0);
    sub_227EB8430(v32, &qword_27D80E8F8, &qword_227F2F5E0);
    v36 = 0;
    v37 = 0;
    v38 = 0;
  }

  else
  {
    v39 = v47;
    sub_227EFD15C(v32, v47, type metadata accessor for ResourceInfo.DownloadState);
    v36 = sub_227F2B004();
    v37 = v40;
    sub_227F2B184();
    v38 = v41;
    sub_227EFD22C(v33, type metadata accessor for ResourceInfo);
    sub_227EFD22C(v39, type metadata accessor for ResourceInfo.DownloadState);
    sub_227EB8430(v35, &qword_27D80E8F8, &qword_227F2F5E0);
  }

  *a2 = v24;
  v42 = *v56;
  *(a2 + 25) = *&v56[16];
  v43 = *&v56[48];
  *(a2 + 41) = *&v56[32];
  *(a2 + 57) = v43;
  result = *&v56[63];
  *(a2 + 72) = *&v56[63];
  v45 = v55;
  v46 = v54;
  *(a2 + 8) = v57;
  *(a2 + 9) = v42;
  *(a2 + 88) = v48;
  *(a2 + 96) = v45;
  *(a2 + 104) = v29;
  *(a2 + 112) = v46;
  *(a2 + 120) = v36;
  *(a2 + 128) = v37;
  *(a2 + 136) = v38;
  return result;
}

uint64_t sub_227EFC6F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for Manifest(0);
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227EC2180(a1, v6, &qword_27D80EB28, &qword_227F30440);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_227EB8430(a1, &qword_27D80EB28, &qword_227F30440);
    result = sub_227EB8430(v6, &qword_27D80EB28, &qword_227F30440);
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
  }

  else
  {
    sub_227EFD15C(v6, v10, type metadata accessor for Manifest);
    v24 = &v10[v7[9]];
    v25 = *v24;
    v13 = *(v24 + 1);
    v26 = &v10[v7[8]];
    v32 = *v26;
    v33 = v25;
    v34 = v26[8];
    v30 = a1;
    v31 = *&v10[v7[7]];
    v27 = &v10[v7[10]];
    v16 = *v27;
    v17 = *(v27 + 1);
    v22 = v10[16];
    v18 = *v10;
    v19 = *(v10 + 1);

    v20 = sub_227F2B004();
    v21 = v28;
    sub_227EB8430(v30, &qword_27D80EB28, &qword_227F30440);
    result = sub_227EFD22C(v10, type metadata accessor for Manifest);
    v15 = v31;
    v14 = v32;
    v12 = v33;
    v23 = v34;
  }

  *a2 = v12;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v23;
  a2[4] = v15;
  a2[5] = v16;
  a2[6] = v17;
  a2[7] = v22;
  a2[8] = v18;
  a2[9] = v19;
  a2[10] = v20;
  a2[11] = v21;
  return result;
}

double sub_227EFC98C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v74 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = &v60 - v7;
  MEMORY[0x28223BE20](v6);
  v73 = &v60 - v8;
  v9 = type metadata accessor for ResourceInfo(0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v66 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v72 = &v60 - v13;
  MEMORY[0x28223BE20](v12);
  v71 = &v60 - v14;
  v15 = type metadata accessor for Configuration(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v61 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v60 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v60 - v25;
  sub_227F282D8(v24);
  v27 = *(v16 + 48);
  v28 = v27(v24, 1, v15);
  v69 = a1;
  if (v28 == 1)
  {
    v29 = (a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((a1 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v29 + *(v30 + 28), v26, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v29);
    if (v27(v24, 1, v15) != 1)
    {
      sub_227EB8430(v24, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227EFD15C(v24, v26, type metadata accessor for Configuration);
    (*(v16 + 56))(v26, 0, 1, v15);
  }

  sub_227EC2180(v26, v21, &qword_27D80EB30, &qword_227F30448);
  v31 = v27(v21, 1, v15);
  v68 = v26;
  if (v31 == 1)
  {
    sub_227EB8430(v21, &qword_27D80EB30, &qword_227F30448);
    v64 = 0;
    v65 = 0;
    v62 = 0;
    v63 = 0;
  }

  else
  {
    v32 = v61;
    sub_227EFD15C(v21, v61, type metadata accessor for Configuration);
    v33 = sub_227F2B004();
    v64 = v34;
    v65 = v33;
    v35 = sub_227F2B554();
    v37 = v36;
    v38 = sub_227F2B154();
    v62 = v39;
    v63 = v38;
    sub_227EC15A8(v35, v37);
    sub_227EFD22C(v32, type metadata accessor for Configuration);
  }

  v41 = v71;
  v40 = v72;
  v42 = v69;
  v43 = (v69 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v69 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v44 = v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v45 = type metadata accessor for PersistenceState(0);
  sub_227EFD1C4(v44 + *(v45 + 20), v41, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v43);
  os_unfair_lock_lock(v43);
  sub_227EFD1C4(v44 + *(v45 + 24), v40, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v43);
  v46 = v66;
  sub_227EFD1C4(v40, v66, type metadata accessor for ResourceInfo);
  sub_227EFC0FC(v46, v76);
  nullsub_1();
  sub_227EFD1C4(v41, v46, type metadata accessor for ResourceInfo);
  sub_227EFC0FC(v46, v77);
  nullsub_1();
  v78[6] = v76[6];
  v78[7] = v76[7];
  v78[2] = v76[2];
  v78[3] = v76[3];
  v78[4] = v76[4];
  v78[5] = v76[5];
  v78[0] = v76[0];
  v78[1] = v76[1];
  v78[14] = v77[5];
  v78[15] = v77[6];
  v78[16] = v77[7];
  v78[17] = v77[8];
  v78[10] = v77[1];
  v78[11] = v77[2];
  v78[12] = v77[3];
  v78[13] = v77[4];
  v78[8] = v76[8];
  v78[9] = v77[0];
  os_unfair_lock_lock(v43);
  v47 = (v42 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v42 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  v49 = v70;
  sub_227EF34BC(v47 + *(v48 + 28), v44, v75, v70);
  os_unfair_lock_unlock(v47);
  os_unfair_lock_unlock(v43);
  v50 = v49;
  v51 = v73;
  sub_227EFD0EC(v50, v73);
  v52 = v74;
  sub_227EC2180(v51, v74, &qword_27D80EB28, &qword_227F30440);
  sub_227EFC6F4(v52, v75);
  sub_227EB8430(v51, &qword_27D80EB28, &qword_227F30440);
  sub_227EFD22C(v40, type metadata accessor for ResourceInfo);
  sub_227EFD22C(v41, type metadata accessor for ResourceInfo);
  sub_227EB8430(v68, &qword_27D80EB30, &qword_227F30448);
  v53 = v67;
  v54 = v64;
  *v67 = v65;
  v53[1] = v54;
  v55 = v62;
  v53[2] = v63;
  v53[3] = v55;
  memcpy(v53 + 4, v78, 0x120uLL);
  v56 = v75[3];
  *(v53 + 22) = v75[2];
  *(v53 + 23) = v56;
  v57 = v75[5];
  *(v53 + 24) = v75[4];
  *(v53 + 25) = v57;
  result = *v75;
  v59 = v75[1];
  *(v53 + 20) = v75[0];
  *(v53 + 21) = v59;
  return result;
}

uint64_t sub_227EFD0EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227EFD15C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EFD1C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227EFD22C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_21RapidResourceDelivery22SanitizedStateSnapshotV9StoreInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_227EFD2B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 416))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_227EFD314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 408) = 0;
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
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 416) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_227EFD3E4()
{
  result = qword_27D80EBC0;
  if (!qword_27D80EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBC0);
  }

  return result;
}

unint64_t sub_227EFD438()
{
  result = qword_27D80EBC8;
  if (!qword_27D80EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBC8);
  }

  return result;
}

unint64_t sub_227EFD4C4()
{
  result = qword_27D80EBD0;
  if (!qword_27D80EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBD0);
  }

  return result;
}

unint64_t sub_227EFD548()
{
  result = qword_27D80EBE0;
  if (!qword_27D80EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBE0);
  }

  return result;
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

uint64_t sub_227EFD5C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_227EFD610(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_227EFD680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 288))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_227EFD6E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 280) = 0;
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
    *(result + 264) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_227EFD794(uint64_t a1, int a2)
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

uint64_t sub_227EFD7DC(uint64_t result, int a2, int a3)
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

unint64_t sub_227EFD830()
{
  result = qword_27D80EBE8;
  if (!qword_27D80EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBE8);
  }

  return result;
}

unint64_t sub_227EFD888()
{
  result = qword_27D80EBF0;
  if (!qword_27D80EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBF0);
  }

  return result;
}

unint64_t sub_227EFD8E0()
{
  result = qword_27D80EBF8;
  if (!qword_27D80EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EBF8);
  }

  return result;
}

uint64_t sub_227EFD934(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x525565746F6D6572 && a2 == 0xE90000000000004CLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F43737574617473 && a2 == 0xEA00000000006564 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_227EFDAF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657474417473616CLL && a2 == 0xEB0000000074706DLL;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F666E49656C6966 && a2 == 0xE800000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34080 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636375537473616CLL && a2 == 0xEB00000000737365 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_227EFDCB8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x747365676964 && a2 == 0xE600000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574616D69747365 && a2 == 0xEE00657A69735F64 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000227F33760 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065 || (sub_227F2BC64() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064 || (sub_227F2BC64() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x5F64657461647075 && a2 == 0xEA00000000007461 || (sub_227F2BC64() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5F73657461647075 && a2 == 0xEB000000006C7275)
  {

    return 6;
  }

  else
  {
    v6 = sub_227F2BC64();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_227EFDF28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F7473 && a2 == 0xE500000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000227F342E0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_227F2BC64();

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

unint64_t sub_227EFE040()
{
  result = qword_27D80EC08;
  if (!qword_27D80EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC08);
  }

  return result;
}

unint64_t sub_227EFE094()
{
  result = qword_27D80EC18;
  if (!qword_27D80EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC18);
  }

  return result;
}

unint64_t sub_227EFE0E8()
{
  result = qword_27D80EC28;
  if (!qword_27D80EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC28);
  }

  return result;
}

unint64_t sub_227EFE13C()
{
  result = qword_27D80EC38;
  if (!qword_27D80EC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC38);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_227EFE1EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
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

uint64_t sub_227EFE248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_227EFE2D4()
{
  result = qword_27D80EC40;
  if (!qword_27D80EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC40);
  }

  return result;
}

unint64_t sub_227EFE32C()
{
  result = qword_27D80EC48;
  if (!qword_27D80EC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC48);
  }

  return result;
}

unint64_t sub_227EFE384()
{
  result = qword_27D80EC50;
  if (!qword_27D80EC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC50);
  }

  return result;
}

unint64_t sub_227EFE3DC()
{
  result = qword_27D80EC58;
  if (!qword_27D80EC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC58);
  }

  return result;
}

unint64_t sub_227EFE434()
{
  result = qword_27D80EC60;
  if (!qword_27D80EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC60);
  }

  return result;
}

unint64_t sub_227EFE48C()
{
  result = qword_27D80EC68;
  if (!qword_27D80EC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC68);
  }

  return result;
}

unint64_t sub_227EFE4E4()
{
  result = qword_27D80EC70;
  if (!qword_27D80EC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC70);
  }

  return result;
}

unint64_t sub_227EFE53C()
{
  result = qword_27D80EC78;
  if (!qword_27D80EC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC78);
  }

  return result;
}

unint64_t sub_227EFE594()
{
  result = qword_27D80EC80;
  if (!qword_27D80EC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC80);
  }

  return result;
}

unint64_t sub_227EFE5E8()
{
  result = qword_27D80EC90;
  if (!qword_27D80EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EC90);
  }

  return result;
}