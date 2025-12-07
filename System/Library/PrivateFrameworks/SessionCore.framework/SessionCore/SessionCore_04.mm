uint64_t sub_22CF4C0C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22D01659C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + 72);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x277D85200], v7);
  v13 = v12;
  LOBYTE(v12) = sub_22D0165BC();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v15 = sub_22CF4ACD8(1);
    if (*(v15 + 16) && (v16 = sub_22CEEC698(a1, a2), (v17 & 1) != 0))
    {
      v18 = *(*(v15 + 56) + v16);

      v19 = sub_22D01626C();
      if (v18 == 1)
      {
        v20 = MEMORY[0x277D4D678];
      }

      else
      {
        v20 = MEMORY[0x277D4D670];
      }

      return (*(*(v19 - 8) + 104))(a3, *v20, v19);
    }

    else
    {

      v21 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v22 = sub_22CEE8CD0(a1, a2, 0);
      if (v22 && (v26 = v22, v27 = [v22 supportsLiveActivitiesFrequentUpdates], v26, (v27 & 1) != 0))
      {
        v23 = MEMORY[0x277D4D678];
      }

      else
      {
        v23 = MEMORY[0x277D4D670];
      }

      v24 = *v23;
      v25 = sub_22D01626C();
      return (*(*(v25 - 8) + 104))(a3, v24, v25);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4C320@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a3;
  v41 = a1;
  v4 = sub_22D0161DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01626C();
  v42 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9, v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v37 - v15;
  v17 = sub_22D01619C();
  sub_22CF4C0C8(v17, v18, v16);

  if (qword_28143DAB8 != -1)
  {
    swift_once();
  }

  v19 = sub_22D01637C();
  __swift_project_value_buffer(v19, qword_281444338);
  (*(v5 + 16))(v8, a2, v4);
  v20 = v42;
  (*(v42 + 16))(v13, v16, v9);
  v21 = sub_22D01636C();
  v22 = sub_22D01690C();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v38 = v9;
    v24 = v23;
    v40 = swift_slowAlloc();
    v44 = v40;
    *v24 = 136380931;
    v39 = v22;
    v25 = sub_22D01619C();
    v41 = v16;
    v27 = v26;
    (*(v5 + 8))(v8, v4);
    v28 = sub_22CEEE31C(v25, v27, &v44);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    sub_22CF4D918(&qword_27D9F25E8, 255, MEMORY[0x277D4D688], MEMORY[0x277D4D690]);
    v29 = v38;
    v30 = sub_22D016DEC();
    v32 = v31;
    (*(v20 + 8))(v13, v29);
    v33 = sub_22CEEE31C(v30, v32, &v44);
    v16 = v41;

    *(v24 + 14) = v33;
    _os_log_impl(&dword_22CEE1000, v21, v39, "AuthorizationManager thinks %{private}s should have level %{public}s, privacy: .public)", v24, 0x16u);
    v34 = v40;
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v34, -1, -1);
    MEMORY[0x2318C6860](v24, -1, -1);
  }

  else
  {

    (*(v20 + 8))(v13, v9);
    (*(v5 + 8))(v8, v4);
    v29 = v9;
  }

  v35 = v43;
  (*(v20 + 32))(v43, v16, v29);
  return (*(v20 + 56))(v35, 0, 1, v29);
}

uint64_t sub_22CF4C7F8@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D018A00;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000022D01DE00;
  v3 = sub_22CF4ACD8(0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F0, &qword_22D018B48);
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x800000022D01DE20;
  *(inited + 96) = sub_22CF4ACD8(1);
  *(inited + 120) = v4;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000022D01DE40;
  v5 = sub_22CEE9A08(0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
  *(inited + 144) = v5;
  *(inited + 168) = v6;
  *(inited + 176) = 0xD00000000000001DLL;
  *(inited + 184) = 0x800000022D01DE60;
  v7 = sub_22CEE9A08(1);
  *(inited + 216) = v6;
  *(inited + 192) = v7;
  v8 = sub_22CF11C44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
  result = swift_arrayDestroy();
  *a1 = v8;
  return result;
}

uint64_t sub_22CF4C998()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v1;
}

uint64_t sub_22CF4CA70(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2318C5DE0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22D016B7C();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void sub_22CF4CB98(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2600, &qword_22D018B60);
  MEMORY[0x28223BE20](v25, v6);
  v8 = &v24 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v27 = a3;

  v14 = 0;
  while (v12)
  {
    v28 = v4;
LABEL_10:
    v16 = __clz(__rbit64(v12)) | (v14 << 6);
    v17 = v27;
    v18 = *(v27 + 48);
    v19 = sub_22D01534C();
    (*(*(v19 - 8) + 16))(v8, v18 + *(*(v19 - 8) + 72) * v16, v19);
    v20 = *(v17 + 56);
    v21 = type metadata accessor for Assertion(0);
    sub_22CF07CF8(v20 + *(*(v21 - 8) + 72) * v16, &v8[*(v25 + 48)], type metadata accessor for Assertion);
    v22 = v28;
    v23 = v26(v8);
    v4 = v22;
    sub_22CEEC3D8(v8, &qword_27D9F2600, &qword_22D018B60);
    if (!v22)
    {
      v12 &= v12 - 1;
      if ((v23 & 1) == 0)
      {
        continue;
      }
    }

LABEL_12:

    return;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_12;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v28 = v4;
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_22CF4CDBC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v23 = a1;
  v24 = sub_22D01534C();
  MEMORY[0x28223BE20](v24, v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3 + 56;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 56);
  v13 = (v10 + 63) >> 6;
  v21 = v6 + 16;
  v22 = v6;
  v20 = (v6 + 8);
  v25 = a3;

  v14 = 0;
  while (v12)
  {
    v15 = v24;
LABEL_11:
    (*(v22 + 16))(v8, *(v25 + 48) + *(v22 + 72) * (__clz(__rbit64(v12)) | (v14 << 6)), v15);
    v17 = v23(v8);
    if (v3)
    {
      (*v20)(v8, v15);

      return;
    }

    v18 = v17;
    v12 &= v12 - 1;
    (*v20)(v8, v15);
    if (v18)
    {
LABEL_13:

      return;
    }
  }

  v15 = v24;
  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      goto LABEL_13;
    }

    v12 = *(v9 + 8 * v16);
    ++v14;
    if (v12)
    {
      v14 = v16;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_22CF4CFD4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = sub_22D014EFC();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
LABEL_9:
    sub_22CF07CF8(*(a3 + 56) + *(v17 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v8, MEMORY[0x277CB9790]);
    v15 = v18(v8);
    sub_22CF07DC8(v8);
    if (!v3)
    {
      v11 &= v11 - 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(a3 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22CF4D1A4(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D016DFC() & 1;
  }
}

uint64_t sub_22CF4D234(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF4D2CC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D016DFC() & 1;
  }
}

unint64_t sub_22CF4D3D4()
{
  result = qword_28143D8F8;
  if (!qword_28143D8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28143D8F8);
  }

  return result;
}

unint64_t sub_22CF4D43C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22CF4ACD8(*(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_22CF4D4B0(uint64_t a1)
{
  v2 = sub_22D01439C();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2658, &qword_22D018BD8);
    v11 = sub_22D016C3C();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_22CF4D918(&qword_28143F700, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      v18 = sub_22D01661C();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v7, *(v11 + 48) + v20 * v16, v2);
          sub_22CF4D918(&qword_27D9F2660, 255, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
          v25 = sub_22D01665C();
          v26 = *v17;
          (*v17)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_22CF4D7D8@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_22D014F9C();
  sub_22CF4BE24(v3, v4, a2);
}

uint64_t sub_22CF4D830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2608, &qword_22D018B68);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CF4D918(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_22CF4D9D8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  __swift_allocate_value_buffer(v0, qword_281442EE8);
  v1 = __swift_project_value_buffer(v0, qword_281442EE8);
  sub_22CF4DA30(v1);
}

void sub_22CF4DA30(uint64_t a1@<X8>)
{
  v55[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D0141BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v53 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v55[0] = 0;
  v13 = [v12 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v55];

  v14 = v55[0];
  if (v13)
  {
    sub_22D0141AC();
    v15 = v14;

    sub_22D01419C();
    v16 = [v11 defaultManager];
    v17 = sub_22D01418C();
    v55[0] = 0;
    v18 = [v16 createDirectoryAtURL:v17 withIntermediateDirectories:1 attributes:0 error:v55];

    if (v18)
    {
      v19 = *(v3 + 8);
      v20 = v55[0];
      v19(v10, v2);
      (*(v3 + 32))(a1, v7, v2);
      (*(v3 + 56))(a1, 0, 1, v2);
      return;
    }

    v23 = v55[0];
    v22 = sub_22D01416C();

    swift_willThrow();
    v24 = *(v3 + 8);
    v24(v7, v2);
    v24(v10, v2);
  }

  else
  {
    v21 = v55[0];
    v22 = sub_22D01416C();

    swift_willThrow();
  }

  v55[0] = v22;
  v25 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
  sub_22CEE82F8(0, &qword_27D9F2720, 0x277CCA9B8);
  if (swift_dynamicCast())
  {

    v26 = v53[5];
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v27 = sub_22D01637C();
    __swift_project_value_buffer(v27, qword_2814443C0);
    v28 = v26;
    v29 = sub_22D01636C();
    v30 = sub_22D0168FC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136446722;
      v33 = [v28 domain];
      v34 = sub_22D01667C();
      v53[0] = a1;
      v36 = v35;

      v37 = sub_22CEEE31C(v34, v36, &v54);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2050;
      v38 = [v28 code];

      *(v31 + 14) = v38;
      *(v31 + 22) = 2082;
      v39 = [v28 localizedDescription];
      v40 = sub_22D01667C();
      v42 = v41;

      v43 = sub_22CEEE31C(v40, v42, &v54);

      *(v31 + 24) = v43;
      _os_log_impl(&dword_22CEE1000, v29, v30, "Couldn't access path: (%{public}s: %{public}ld): %{public}s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v32, -1, -1);
      MEMORY[0x2318C6860](v31, -1, -1);

      (*(v3 + 56))(v53[0], 1, 1, v2);
    }

    else
    {

      (*(v3 + 56))(a1, 1, 1, v2);
    }
  }

  else
  {

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v44 = sub_22D01637C();
    __swift_project_value_buffer(v44, qword_2814443C0);
    v45 = v22;
    v46 = sub_22D01636C();
    v47 = sub_22D0168FC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v55[0] = v49;
      *v48 = 136446210;
      swift_getErrorValue();
      v50 = sub_22D016E2C();
      v52 = sub_22CEEE31C(v50, v51, v55);

      *(v48 + 4) = v52;
      _os_log_impl(&dword_22CEE1000, v46, v47, "Couldn't access path: %{public}s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x2318C6860](v49, -1, -1);
      MEMORY[0x2318C6860](v48, -1, -1);
    }

    else
    {
    }

    (*(v3 + 56))(a1, 1, 1, v2);
  }
}

void *sub_22CF4E0F0(uint64_t a1)
{
  v2 = v1;
  v31[1] = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2718, &qword_22D018FC8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v31 - v6;
  v8 = sub_22D01443C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  v2[12] = v13;
  sub_22D01446C();
  (*(v9 + 16))(v12, a1, v8);
  if (qword_281442158 != -1)
  {
    swift_once();
  }

  v15 = sub_22D0144FC();
  v16 = __swift_project_value_buffer(v15, qword_281442160);
  v17 = *(v15 - 8);
  (*(v17 + 16))(v7, v16, v15);
  (*(v17 + 56))(v7, 0, 1, v15);
  v18 = v31[3];
  v19 = sub_22D01445C();
  if (v18)
  {
    (*(v9 + 8))(a1, v8);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v19;
    (*(v9 + 8))(a1, v8);
    v2[2] = v20;
    type metadata accessor for ActivityDatabase.PushSubscriptionStore();
    v21 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[3] = v21;
    type metadata accessor for ActivityDatabase.PushTokenStore();
    v22 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[4] = v22;
    type metadata accessor for ActivityDatabase.PublicTokenStore();
    v23 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[5] = v23;
    type metadata accessor for ActivityDatabase.PushBudgetStore();
    v24 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[6] = v24;
    type metadata accessor for ActivityDatabase.ActivityStore();
    v25 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[7] = v25;
    type metadata accessor for ActivityDatabase.SyncEngineRecordMetadataStore();
    v26 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[8] = v26;
    type metadata accessor for ActivityDatabase.SyncEnginePairedDeviceIdentifierStore();
    v27 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[9] = v27;
    type metadata accessor for ActivityDatabase.SyncEngineRecordIDSyncDateStore();
    v28 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[10] = v28;
    type metadata accessor for ActivityDatabase.AssertionStore();
    v29 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v2[11] = v29;
  }

  return v2;
}

void *sub_22CF4E584()
{
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();
  swift_weakAssign();

  sub_22D01441C();

  return v0;
}

uint64_t sub_22CF4E6A8()
{
  sub_22CF4E584();

  return swift_deallocClassInstance();
}

uint64_t sub_22CF4E700()
{
  v0 = sub_22D0144FC();
  __swift_allocate_value_buffer(v0, qword_281442160);
  __swift_project_value_buffer(v0, qword_281442160);
  return sub_22D0144EC();
}

uint64_t sub_22CF4E758(uint64_t *a1)
{
  v2 = sub_22D0144BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v47 = sub_22D0144DC();
  v43 = *(v47 - 8);
  v5 = MEMORY[0x28223BE20](v47, v4);
  v45 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v53 = &v41 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v54 = &v41 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v55 = &v41 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v50 = &v41 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v51 = &v41 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v52 = &v41 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v49 = &v41 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v44 = &v41 - v29;
  v48 = *a1;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243);
  sub_22D01448C();
  MEMORY[0x2318C3600]();
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001BLL, 0x800000022D01EC10);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C4C41455220, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01EC30);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01EC30);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01EBF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  v42 = " REAL NOT NULL,\n    ";
  MEMORY[0x2318C3600](0xD000000000000024, 0x800000022D01EC80);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C5458455420, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  v41 = "    PRIMARY KEY (";
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C4C41455220, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01ECD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EC60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000024, v42 | 0x8000000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01ECF0);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000021, 0x800000022D01ED20);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x5420455441455243, 0xED000020454C4241);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A2C424F4C4220, 0xEB00000000202020);
  sub_22D01448C();
  v30 = v45;
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EBD0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, v41 | 0x8000000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01ECB0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01ED50);
  v31 = v44;
  sub_22D01448C();
  MEMORY[0x2318C3600](992545321, 0xE400000000000000);
  sub_22D0144CC();
  v32 = v46;
  sub_22D01444C();
  if (v32)
  {
    v33 = v49;
    v35 = v51;
    v34 = v52;
    v36 = v50;
  }

  else
  {

    v33 = v49;
    sub_22D01444C();

    v34 = v52;
    sub_22D01444C();
    v36 = v50;
    v35 = v51;

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();

    sub_22D01444C();
  }

  v37 = *(v43 + 8);
  v38 = v30;
  v39 = v47;
  v37(v38, v47);
  v37(v53, v39);
  v37(v54, v39);
  v37(v55, v39);
  v37(v36, v39);
  v37(v35, v39);
  v37(v34, v39);
  v37(v33, v39);
  return (v37)(v31, v39);
}

char *sub_22CF4F824()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5B04C(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF4FBA8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22D0162DC();
  v59 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v61 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D015B6C();
  v57 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v58 = (&v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v67 = sub_22D015C8C();
  v9 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v10);
  v60 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D0161DC();
  v13 = *(v12 - 8);
  v62 = v12;
  v63 = v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v46 - v19;
  sub_22D01451C();
  if (!v66)
  {
    goto LABEL_40;
  }

  v64 = a1;
  sub_22D01451C();
  if (v66)
  {
    goto LABEL_14;
  }

  v56 = v1;
  v21 = v65;
  sub_22D01451C();
  if (v66 == 1)
  {
    goto LABEL_14;
  }

  v50 = v17;
  v51 = v6;
  v48 = v65;
  sub_22D01451C();
  v49 = v65;
  v55 = v66;
  sub_22D01451C();
  v52 = v65;
  v53 = v20;
  v54 = v66;
  sub_22D0161BC();
  sub_22D01451C();
  v22 = v66;
  v46 = v65;
  if (v21 == 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = 2;
  }

  if (v21)
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  sub_22D01451C();
  v25 = v65;
  if (v66 & 1 | (v65 > 2))
  {
    v25 = 3;
  }

  if (v24 == 2)
  {
    (*(v63 + 8))(v53, v62);

LABEL_14:

    v26 = 1;
    a1 = v64;
LABEL_41:
    v40 = v67;
    return (*(v9 + 56))(a1, v26, 1, v40);
  }

  v27 = v53;
  v47 = v22;
  v28 = v55;
  if ((v24 & 1) == 0)
  {
    if (v66 & 1 | (v65 > 2))
    {
      (*(v63 + 8))(v53, v62);

LABEL_20:

      goto LABEL_14;
    }

    v33 = v62;
    v32 = v63;
    if (v25)
    {
      v35 = v50;
      v34 = v51;
      if (v25 != 1)
      {
        if (!v47 || !v54)
        {
          (*(v63 + 8))(v53, v62);

          goto LABEL_14;
        }

        if (!v55)
        {
          (*(v63 + 8))(v53, v62);
          goto LABEL_20;
        }

        (*(v63 + 16))(v50, v53, v62);
        v41 = v57;
        v42 = v58;
        v43 = v54;
        *v58 = v52;
        v42[1] = v43;
        v44 = v47;
        v42[2] = v46;
        v42[3] = v44;
        (*(v41 + 104))(v42, *MEMORY[0x277D4D558], v34);
        sub_22D015B2C();
        sub_22D015C0C();
        v31 = v60;
        sub_22D015BEC();
        a1 = v64;
LABEL_30:
        v29 = v67;
        goto LABEL_31;
      }

      a1 = v64;
      if (v54 && v28)
      {
        LODWORD(v59) = v48 == 1;
        (*(v32 + 16))(v35, v27, v33);
        v36 = v57;
        v37 = v58;
        v38 = v54;
        *v58 = v52;
        v37[1] = v38;
        v39 = *MEMORY[0x277D4D550];
LABEL_29:
        (*(v36 + 104))(v37, v39, v34);
        sub_22D015B2C();
        sub_22D015C0C();
        v31 = v60;
        sub_22D015BEC();
        goto LABEL_30;
      }

      (*(v32 + 8))(v27, v33);
    }

    else
    {

      a1 = v64;
      v34 = v51;
      if (v28)
      {
        LODWORD(v59) = v48 == 1;
        (*(v32 + 16))(v50, v27, v33);
        v39 = *MEMORY[0x277D4D560];
        v36 = v57;
        v37 = v58;
        goto LABEL_29;
      }

      (*(v32 + 8))(v27, v33);
    }

LABEL_40:
    v26 = 1;
    goto LABEL_41;
  }

  a1 = v64;
  v29 = v67;
  if (v54)
  {
    v30 = v61;
    sub_22D015B2C();
    v31 = v60;
    sub_22D015B1C();

    (*(v59 + 8))(v30, v3);
    v33 = v62;
    v32 = v63;
LABEL_31:
    (*(v32 + 8))(v27, v33);
    (*(v9 + 32))(a1, v31, v29);
    v40 = v29;
    v26 = 0;
    return (*(v9 + 56))(a1, v26, 1, v40);
  }

  (*(v63 + 8))(v27, v62);
  v26 = 1;
  v40 = v29;
  return (*(v9 + 56))(a1, v26, 1, v40);
}

void sub_22CF5042C(uint64_t a1)
{
  v81 = a1;
  v2 = sub_22D0161DC();
  v67 = *(v2 - 8);
  v68 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v66 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D0144BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22D0144DC();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v69 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_22D015B6C();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v10);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22D015B8C();
  v13 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v14);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22D015B9C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_37;
  }

  v22 = sub_22D01440C();

  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  sub_22D015BDC();
  v23 = (*(v18 + 88))(v21, v17);
  v24 = *MEMORY[0x277D4D548];
  v65 = v23;
  if (v23 == v24)
  {
    (*(v18 + 8))(v21, v17);
    v64 = 0;
    v25 = 3;
  }

  else
  {
    if (v23 != *MEMORY[0x277D4D568])
    {
      goto LABEL_33;
    }

    (*(v18 + 96))(v21, v17);
    v26 = v61;
    (*(v13 + 32))(v16, v21, v61);
    v27 = sub_22D015B7C();
    sub_22D015B5C();
    v28 = v62;
    v29 = v63;
    v30 = (*(v62 + 88))(v12, v63);
    v31 = *MEMORY[0x277D4D550];
    v64 = v27;
    if (v30 == v31)
    {
      (*(v13 + 8))(v16, v26);
      (*(v28 + 8))(v12, v29);
      v25 = 1;
    }

    else if (v30 == *MEMORY[0x277D4D558])
    {
      (*(v13 + 8))(v16, v26);
      (*(v28 + 8))(v12, v29);
      v25 = 2;
    }

    else
    {
      if (v30 != *MEMORY[0x277D4D560])
      {
        goto LABEL_33;
      }

      (*(v13 + 8))(v16, v26);
      v25 = 0;
    }
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v32 = sub_22D015C3C();
  v33 = MEMORY[0x277D837D0];
  v34 = MEMORY[0x277D4D6C8];
  v79 = MEMORY[0x277D837D0];
  v80 = MEMORY[0x277D4D6C8];
  v77 = v32;
  v78 = v35;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v36 = sub_22D015C2C();
  if (v37)
  {
    v38 = v33;
    *(&v75 + 1) = v33;
    v76 = v34;
    *&v74 = v36;
    *(&v74 + 1) = v37;
    sub_22CEF44D4(&v74, &v77);
  }

  else
  {
    v38 = v33;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v39 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v79 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v80 = MEMORY[0x277D4D6D8];
    v77 = v39;
    if (*(&v75 + 1))
    {
      sub_22CEEC3D8(&v74, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  v64 &= 1u;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v40 = sub_22D015BBC();
  v63 = v25;
  v42 = v24;
  if (v41)
  {
    *(&v75 + 1) = v38;
    v76 = MEMORY[0x277D4D6C8];
    *&v74 = v40;
    *(&v74 + 1) = v41;
    sub_22CEF44D4(&v74, &v77);
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v43 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v79 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v80 = MEMORY[0x277D4D6D8];
    v77 = v43;
    if (*(&v75 + 1))
    {
      sub_22CEEC3D8(&v74, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v44 = v66;
  sub_22D015C5C();
  v45 = sub_22D0161CC();
  v47 = v46;
  (*(v67 + 8))(v44, v68);
  v79 = v38;
  v48 = MEMORY[0x277D4D6C8];
  v80 = MEMORY[0x277D4D6C8];
  v77 = v45;
  v78 = v47;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v49 = sub_22D015C6C();
  if (v50)
  {
    *(&v75 + 1) = v38;
    v76 = v48;
    *&v74 = v49;
    *(&v74 + 1) = v50;
    sub_22CEF44D4(&v74, &v77);
    v51 = v42;
    v52 = v64;
  }

  else
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v53 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v79 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v80 = MEMORY[0x277D4D6D8];
    v77 = v53;
    v51 = v42;
    v52 = v64;
    if (*(&v75 + 1))
    {
      sub_22CEEC3D8(&v74, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  v54 = v65;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v55 = MEMORY[0x277D84A28];
  v56 = MEMORY[0x277D4D6E0];
  v79 = MEMORY[0x277D84A28];
  v80 = MEMORY[0x277D4D6E0];
  v77 = v52;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v79 = v55;
  v80 = v56;
  v77 = v54 == v51;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  if (v54 == v51)
  {
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
    v57 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v79 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v80 = MEMORY[0x277D4D6D8];
    v77 = v57;
    if (*(&v75 + 1))
    {
      sub_22CEEC3D8(&v74, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    *(&v75 + 1) = v55;
    v76 = v56;
    *&v74 = v63;
    sub_22CEF44D4(&v74, &v77);
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v77);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  v58 = v69;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_37:
    while (1)
    {
LABEL_33:
      sub_22D016CFC();
      __break(1u);
    }
  }

  v59 = v73;
  sub_22D01444C();
  if (v59)
  {
    (*(v70 + 8))(v58, v71);
  }

  else
  {

    (*(v70 + 8))(v58, v71);
  }
}

char *sub_22CF51040()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01EB10);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A4E4F0ALL, 0xE800000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](2112800, 0xE300000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](46, 0xE100000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5B344(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF51468()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v20 - v3;
  v5 = sub_22D0144BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v28 = sub_22D0144DC();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  v11 = sub_22D01440C();

  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x4920545245534E49, 0xEC000000204F544ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v12 = sub_22D015E4C();
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D4D6C8];
  v24 = v12;
  v25 = v13;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_22D015E5C();
  v26 = MEMORY[0x277CC9318];
  v27 = MEMORY[0x277D4D6C0];
  v24 = v14;
  v25 = v15;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D015E2C();
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v4, 1, v16) == 1)
  {
    sub_22CEEC3D8(v4, &qword_27D9F2648, &unk_22D018BC0);
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    v18 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v26 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v27 = MEMORY[0x277D4D6D8];
    v24 = v18;
    if (*(&v22 + 1))
    {
      sub_22CEEC3D8(&v21, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    sub_22D01421C();
    *(&v22 + 1) = MEMORY[0x277D839F8];
    v23 = MEMORY[0x277D4D6D0];
    *&v21 = v19;
    (*(v17 + 8))(v4, v16);
    sub_22CEF44D4(&v21, &v24);
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x4F43204E4F0A290ALL, 0xEF285443494C464ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EA40);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_13;
  }

  sub_22D01444C();
  if (v0)
  {
    (*(v7 + 8))(v10, v28);
  }

  else
  {

    (*(v7 + 8))(v10, v28);
  }
}

void sub_22CF51A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v18 = a1;
  v5 = sub_22D0144BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22D0144DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v12 = sub_22D01440C();

  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01EA60);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x200A45524548570ALL, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000019, 0x800000022D01EA80);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000012, 0x800000022D01EAA0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000013, 0x800000022D01EAE0);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v13 = MEMORY[0x277D837D0];
  v14 = MEMORY[0x277D4D6C8];
  v21 = MEMORY[0x277D837D0];
  v22 = MEMORY[0x277D4D6C8];
  v19 = v18;
  v20 = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  MEMORY[0x2318C3600](0x2020200A444E4120, 0xED00002020202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v15 = sub_22D0161CC();
  v21 = v13;
  v22 = v14;
  v19 = v15;
  v20 = v16;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v19);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  sub_22D01444C();
  if (v3)
  {
    (*(v8 + 8))(v11, v7);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }
}

char *sub_22CF51E8C()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5BA18(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF52168()
{
  v2 = sub_22D0144BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v9 = sub_22D01440C();

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15[1] = v0;
  v20 = v4;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x4920545245534E49, 0xEC000000204F544ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v10 = sub_22D015FBC();
  v18 = MEMORY[0x277D837D0];
  v19 = MEMORY[0x277D4D6C8];
  v16 = v10;
  v17 = v11;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_22D015FCC();
  v18 = MEMORY[0x277CC9318];
  v19 = MEMORY[0x277D4D6C0];
  v16 = v12;
  v17 = v13;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v16);
  MEMORY[0x2318C3600](0x4F43204E4F0A290ALL, 0xEF285443494C464ELL);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000014, 0x800000022D01EA40);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  sub_22D01444C();
  v14 = v20;
  if (v1)
  {
    (*(v5 + 8))(v8, v20);
  }

  else
  {

    (*(v5 + 8))(v8, v14);
  }
}

char *sub_22CF5255C()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5BD74(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF528E0@<X0>(uint64_t a1@<X8>)
{
  v56 = a1;
  v47 = sub_22D01621C();
  v44 = *(v47 - 8);
  v3 = MEMORY[0x28223BE20](v47, v2);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v46 = &v37 - v6;
  v52 = sub_22D01626C();
  v45 = *(v52 - 8);
  v8 = MEMORY[0x28223BE20](v52, v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v37 - v12;
  v14 = sub_22D01430C();
  v50 = *(v14 - 8);
  v51 = v14;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v37 - v20;
  v22 = sub_22D0161DC();
  v48 = *(v22 - 8);
  v49 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v37 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v37 - v28;
  sub_22D01451C();
  if (v55)
  {
    v53 = v1;
    v42 = v54;
    sub_22D01451C();
    if (!v55)
    {
LABEL_11:

LABEL_12:
      v30 = 1;
      goto LABEL_13;
    }

    v41 = v54;
    sub_22D01451C();
    if (v55 & 1) != 0 || (v40 = v54, sub_22D01451C(), v55 == 1) || (v39 = v54, sub_22D01451C(), (v55) || (sub_22D01451C(), (v55) || (v38 = v54, sub_22D01451C(), (v55) || (sub_22D01451C(), (v55))
    {

      goto LABEL_11;
    }

    v33 = v54;
    sub_22D0161BC();
    sub_22D01420C();
    if (v38 >= 3)
    {

      (*(v50 + 8))(v21, v51);
      (*(v48 + 8))(v29, v49);
      goto LABEL_12;
    }

    (*(v45 + 104))(v13, **(&unk_2787486E0 + v38), v52);
    if (v40)
    {
      if (v40 != 1)
      {

        (*(v45 + 8))(v13, v52);
        (*(v50 + 8))(v21, v51);
        (*(v48 + 8))(v29, v49);
        v30 = 1;
        goto LABEL_13;
      }

      v41 = v33;
      v34 = MEMORY[0x277D4D660];
    }

    else
    {
      v41 = v33;
      v34 = MEMORY[0x277D4D668];
    }

    v35 = v44;
    (*(v44 + 104))(v46, *v34, v47);
    (*(v48 + 16))(v26, v29, v49);
    (*(v35 + 16))(v43, v46, v47);
    (*(v50 + 16))(v18, v21, v51);
    v36 = v45;
    (*(v45 + 16))(v10, v13, v52);
    sub_22D01628C();
    (*(v44 + 8))(v46, v47);
    (*(v36 + 8))(v13, v52);
    (*(v50 + 8))(v21, v51);
    (*(v48 + 8))(v29, v49);
    v30 = 0;
  }

  else
  {
    v30 = 1;
  }

LABEL_13:
  v31 = sub_22D0162BC();
  return (*(*(v31 - 8) + 56))(v56, v30, 1, v31);
}

void sub_22CF5302C(uint64_t a1)
{
  v58 = a1;
  v2 = sub_22D0161DC();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v55 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D0144BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v7 = sub_22D0144DC();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v59 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01621C();
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v52 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01626C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01430C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v23 = sub_22D01440C();

  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_22D0162AC();
  sub_22D01421C();
  v25 = v24;
  (*(v19 + 8))(v22, v18);
  v26 = sub_22D01620C();
  sub_22D01627C();
  v27 = (*(v14 + 88))(v17, v13);
  if (v27 == *MEMORY[0x277D4D680])
  {
    v28 = 0;
  }

  else if (v27 == *MEMORY[0x277D4D670])
  {
    v28 = 1;
  }

  else
  {
    if (v27 != *MEMORY[0x277D4D678])
    {
      goto LABEL_18;
    }

    v28 = 2;
  }

  v29 = v52;
  sub_22D01622C();
  v30 = (*(v53 + 88))(v29, v54);
  v31 = *MEMORY[0x277D4D660];
  v50 = v28;
  v51 = v26;
  if (v30 == v31)
  {
    v32 = 1;
    goto LABEL_13;
  }

  if (v30 != *MEMORY[0x277D4D668])
  {
LABEL_18:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v32 = 0;
LABEL_13:
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v33 = sub_22D01624C();
  v34 = MEMORY[0x277D837D0];
  v35 = MEMORY[0x277D4D6C8];
  v66 = MEMORY[0x277D837D0];
  v67 = MEMORY[0x277D4D6C8];
  v64 = v33;
  v65 = v36;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v37 = v55;
  sub_22D01629C();
  v38 = sub_22D0161CC();
  v40 = v39;
  (*(v56 + 8))(v37, v57);
  v66 = v34;
  v67 = v35;
  v64 = v38;
  v65 = v40;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v41 = MEMORY[0x277D84A28];
  v42 = MEMORY[0x277D4D6E0];
  v66 = MEMORY[0x277D84A28];
  v67 = MEMORY[0x277D4D6E0];
  v64 = v32;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v43 = MEMORY[0x277D839F8];
  v44 = MEMORY[0x277D4D6D0];
  v66 = MEMORY[0x277D839F8];
  v67 = MEMORY[0x277D4D6D0];
  v64 = v25;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v66 = v41;
  v67 = v42;
  v64 = v51;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v66 = v41;
  v67 = v42;
  v64 = v50;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01625C();
  v66 = v43;
  v67 = v44;
  v64 = v45;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v46 = sub_22D0161FC();
  v66 = v41;
  v67 = v42;
  v64 = v46;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v64);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  v47 = v59;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v48 = v63;
  sub_22D01444C();
  if (v48)
  {
    (*(v60 + 8))(v47, v61);
  }

  else
  {

    (*(v60 + 8))(v47, v61);
  }
}

void *sub_22CF5391C()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5C06C(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF53D40@<X0>(uint64_t a1@<X8>)
{
  v162 = a1;
  v141 = sub_22D0149AC();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141, v2);
  v142 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D014EFC();
  v138 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v139 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for Activity(0);
  v7 = *(v165 - 8);
  MEMORY[0x28223BE20](v165, v8);
  v144 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_22D0146BC();
  v143 = *(v151 - 8);
  v11 = MEMORY[0x28223BE20](v151, v10);
  v148 = &v106 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v150 = &v106 - v14;
  v15 = sub_22D01495C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v147 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v154 = &v106 - v22;
  v152 = sub_22D01502C();
  v149 = *(v152 - 8);
  v24 = MEMORY[0x28223BE20](v152, v23);
  v146 = &v106 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v153 = &v106 - v27;
  v157 = sub_22D014E2C();
  v155 = *(v157 - 8);
  v29 = MEMORY[0x28223BE20](v157, v28);
  v145 = &v106 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v156 = &v106 - v32;
  v33 = sub_22D01430C();
  v158 = *(v33 - 8);
  v159 = v33;
  v35 = MEMORY[0x28223BE20](v33, v34);
  v37 = &v106 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v35, v38);
  v41 = &v106 - v40;
  v43 = MEMORY[0x28223BE20](v39, v42);
  v45 = &v106 - v44;
  v47 = MEMORY[0x28223BE20](v43, v46);
  v160 = &v106 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v161 = &v106 - v50;
  sub_22D01451C();
  v51 = v164;
  if (!v164)
  {
    goto LABEL_16;
  }

  v137 = v163;
  sub_22D01451C();
  if (v164)
  {
    goto LABEL_15;
  }

  sub_22D01451C();
  if (v164)
  {
    goto LABEL_15;
  }

  sub_22D01451C();
  if (v164 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v133 = v37;
  v136 = v164;
  v52 = v163;
  sub_22D01451C();
  if (!v164)
  {
    v56 = v52;
    goto LABEL_14;
  }

  v134 = v164;
  v135 = v52;
  v131 = v163;
  sub_22D01451C();
  v53 = v164;
  if (v164 >> 60 == 15)
  {
LABEL_12:

    v56 = v135;
LABEL_14:
    sub_22CEEEF0C(v56, v136);
LABEL_15:

LABEL_16:
    v57 = 1;
    return (*(v7 + 56))(v162, v57, 1, v165);
  }

  v132 = v163;
  sub_22D01451C();
  if (v164 >> 60 == 15)
  {
    goto LABEL_10;
  }

  v130 = v164;
  v129 = v163;
  sub_22D01451C();
  if (v164 >> 60 == 15)
  {
    sub_22CEEEF0C(v129, v130);
LABEL_10:
    v54 = v132;
    v55 = v53;
LABEL_11:
    sub_22CEEEF0C(v54, v55);
    goto LABEL_12;
  }

  v128 = v164;
  v127 = v53;
  v59 = v163;
  sub_22D01451C();
  if (v164 >> 60 == 15)
  {
    v60 = v59;
LABEL_26:
    sub_22CEEEF0C(v60, v128);
    sub_22CEEEF0C(v129, v130);
    v54 = v132;
    v55 = v127;
    goto LABEL_11;
  }

  v125 = v164;
  v126 = v59;
  v61 = v163;
  sub_22D01451C();
  if (!v164)
  {
    sub_22CEEEF0C(v61, v125);
    v60 = v126;
    goto LABEL_26;
  }

  v121 = v164;
  v123 = v61;
  v119 = v163;
  v120 = sub_22D01408C();
  swift_allocObject();
  v124 = sub_22D01407C();
  sub_22D01451C();
  v62 = v163;
  v122 = v164;
  if (!v164)
  {
    v62 = 0;
  }

  v118 = v62;
  sub_22D01420C();
  sub_22D01420C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CF5DB48(&qword_28143D950, &unk_28143F6C8, MEMORY[0x277CB9368], MEMORY[0x277D83978]);
  v63 = v126;
  sub_22D01406C();
  if (v1)
  {

    sub_22CEEEF0C(v135, v136);

    sub_22CEEEF0C(v132, v127);
    sub_22CEEEF0C(v129, v130);
    sub_22CEEEF0C(v63, v128);
    sub_22CEEEF0C(v123, v125);

    v64 = v159;
    v65 = *(v158 + 1);
    v65(v160, v159);
    v65(v161, v64);
    v66 = v1;
LABEL_29:

    goto LABEL_16;
  }

  v117 = v163;
  sub_22CF5E870(&qword_28143F660, MEMORY[0x277CB9678], MEMORY[0x277CB9688]);
  sub_22D01406C();
  v116 = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5DBE4();
  v68 = v127;
  v115 = v67;
  v69 = v116;
  sub_22D01406C();
  if (v69)
  {
    v70 = v161;

    sub_22CEEEF0C(v135, v136);

    sub_22CEEEF0C(v132, v68);
    sub_22CEEEF0C(v129, v130);
    sub_22CEEEF0C(v126, v128);
    sub_22CEEEF0C(v123, v125);

    (*(v155 + 8))(v156, v157);
    v71 = v159;
    v72 = *(v158 + 1);
    v72(v160, v159);
    v72(v70, v71);
    v66 = v69;
    goto LABEL_29;
  }

  v116 = v163;
  sub_22D01406C();
  v115 = 0;
  v114 = v163;
  sub_22D014F8C();
  sub_22D01451C();
  v73 = v164;
  v74 = sub_22D016D4C();

  if (v73)
  {
    v75 = 1;
  }

  else
  {
    sub_22D01420C();
    sub_22D01492C();
    (*(v158 + 1))(v45, v159);
    sub_22D01485C();
    v75 = 0;
  }

  v76 = sub_22D01486C();
  v77 = *(v76 - 8);
  v78 = *(v77 + 56);
  v113 = v76;
  v112 = v78;
  v111 = v77 + 56;
  (v78)(v154, v75, 1);
  sub_22D01451C();
  v119 = v163;
  v134 = v164;
  swift_allocObject();
  v79 = sub_22D01407C();
  sub_22CF5E870(&qword_28143F6F0, MEMORY[0x277CB9250], MEMORY[0x277CB9260]);
  v121 = v79;
  v80 = v115;
  sub_22D01406C();
  v131 = v80;
  if (v80)
  {

    sub_22CEEEF0C(v135, v136);
    sub_22CEEEF0C(v132, v127);
    sub_22CEEEF0C(v129, v130);
    sub_22CEEEF0C(v126, v128);
    sub_22CEEEF0C(v123, v125);

    sub_22CEEC3D8(v154, &qword_27D9F26E0, &unk_22D018F80);
    (*(v149 + 8))(v153, v152);
    (*(v155 + 8))(v156, v157);
    v81 = v159;
    v82 = *(v158 + 1);
    v82(v160, v159);
    v82(v161, v81);
    v66 = v131;
    goto LABEL_29;
  }

  LODWORD(v120) = v74 == 1;
  v108 = *(v155 + 16);
  v108(v145, v156, v157);
  v107 = *(v149 + 16);
  v107(v146, v153, v152);
  v83 = *(v143 + 16);
  v110 = v143 + 16;
  v115 = v83;
  v83(v148, v150, v151);
  v84 = v159;
  v85 = *(v158 + 2);
  v85(v41, v160, v159);
  v85(v133, v161, v84);
  sub_22CEEB6DC(v154, v147, &qword_27D9F26E0, &unk_22D018F80);
  v86 = v165;
  v109 = *(v165 + 60);
  v87 = v144;
  v112(&v144[v109], 1, 1, v113);
  *v87 = v137;
  v87[1] = v51;
  v88 = (v87 + v86[13]);
  v89 = v122;
  *v88 = v118;
  v88[1] = v89;
  v108(v87 + v86[5], v145, v157);
  v107(v87 + v86[6], v146, v152);
  *(v87 + v86[9]) = v117;
  *(v87 + v86[7]) = v116;
  *(v87 + v86[8]) = v114;
  v115(v87 + v86[14], v148, v151);
  v90 = v159;
  v85(v87 + v86[10], v41, v159);
  v85(v87 + v86[11], v133, v90);
  *(v87 + v86[12]) = v120;

  sub_22CF0A6BC(v147, v87 + v109);
  if (v134)
  {

    sub_22CEEEF0C(v135, v136);
    sub_22CEEEF0C(v132, v127);
    sub_22CEEEF0C(v129, v130);
    sub_22CEEEF0C(v126, v128);
    sub_22CEEEF0C(v123, v125);
  }

  else
  {
    (*(v140 + 104))(v142, *MEMORY[0x277CB94E0], v141);
    if (*(v116 + 16) && (v91 = sub_22CEFF728(v142), (v92 & 1) != 0))
    {
      v93 = v139;
      sub_22CF0A598(*(v116 + 56) + *(v138 + 72) * v91, v139);
      (*(v140 + 8))(v142, v141);

      v119 = sub_22CF0A190();
      v134 = v94;
      sub_22CEEEF0C(v135, v136);
      sub_22CEEEF0C(v132, v127);
      sub_22CEEEF0C(v129, v130);
      sub_22CEEEF0C(v126, v128);
      sub_22CEEEF0C(v123, v125);

      sub_22CF07DC8(v93);
    }

    else
    {

      sub_22CEEEF0C(v135, v136);
      sub_22CEEEF0C(v132, v127);
      sub_22CEEEF0C(v129, v130);
      sub_22CEEEF0C(v126, v128);
      sub_22CEEEF0C(v123, v125);

      (*(v140 + 8))(v142, v141);
      v119 = 0;
      v134 = 0;
    }
  }

  sub_22CEEC3D8(v147, &qword_27D9F26E0, &unk_22D018F80);
  v95 = v159;
  v96 = *(v158 + 1);
  v158 = v96;
  v96(v133, v159);
  v96(v41, v95);
  v97 = *(v143 + 8);
  v98 = v151;
  v97(v148, v151);
  v149 = *(v149 + 8);
  (v149)(v146, v152);
  v99 = *(v155 + 8);
  v100 = v157;
  v99(v145, v157);
  v97(v150, v98);
  sub_22CEEC3D8(v154, &qword_27D9F26E0, &unk_22D018F80);
  (v149)(v153, v152);
  v99(v156, v100);
  v101 = v159;
  v102 = v158;
  v158(v160, v159);
  v102(v161, v101);
  v103 = v144;
  v104 = &v144[*(v165 + 64)];
  v105 = v134;
  *v104 = v119;
  v104[1] = v105;
  sub_22CF5DAE0(v103, v162, type metadata accessor for Activity);
  v57 = 0;
  return (*(v7 + 56))(v162, v57, 1, v165);
}

void sub_22CF55644(void *a1)
{
  v132 = a1;
  v3 = sub_22D01471C();
  v118 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v97 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0144BC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v124 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0144DC();
  v122 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v120 = &v97 - v16;
  v17 = sub_22D01495C();
  v115 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v21 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v114 = &v97 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v26 = MEMORY[0x28223BE20](v24 - 8, v25);
  v121 = &v97 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v123 = &v97 - v29;
  v119 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_30;
  }

  v30 = sub_22D01440C();

  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_30:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v113 = v17;
  v116 = v6;
  v117 = v3;
  sub_22D0140BC();
  swift_allocObject();
  v31 = sub_22D0140AC();
  v32 = type metadata accessor for Activity(0);
  sub_22D014E2C();
  sub_22CF5E870(&qword_2814439A8, MEMORY[0x277CB9678], MEMORY[0x277CB9680]);
  v33 = v132;
  v34 = sub_22D01409C();
  if (v2)
  {

    return;
  }

  v111 = v34;
  v112 = v35;
  v128 = *(v33 + v32[9]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E8, &qword_22D018F90);
  sub_22CF5DB48(&qword_28143FA58, &qword_2814439E8, MEMORY[0x277CB9358], MEMORY[0x277D83948]);
  v109 = sub_22D01409C();
  v110 = v36;
  v108 = v13;
  v107 = v10;

  v128 = *(v33 + v32[7]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F0, &qword_22D018F98);
  sub_22CF5D9F4();
  v105 = sub_22D01409C();
  v106 = v37;

  v128 = *(v33 + v32[8]);

  v38 = sub_22D01409C();
  v40 = v39;

  sub_22D0146BC();
  sub_22CF5E870(&qword_28143F6F8, MEMORY[0x277CB9250], MEMORY[0x277CB9258]);
  v41 = sub_22D01409C();
  v43 = v42;
  v101 = v41;
  v104 = v38;
  v103 = v40;
  v99 = v31;
  v44 = (v33 + v32[13]);
  v45 = v44[1];
  v98 = *v44;
  v46 = v33 + v32[15];
  v47 = v120;
  sub_22CEEB6DC(v46, v120, &qword_27D9F26E0, &unk_22D018F80);
  v48 = sub_22D01486C();
  v49 = *(v48 - 8);
  v50 = (*(v49 + 48))(v47, 1, v48);
  v51 = v45;

  v52 = v32;
  v102 = v43;
  v100 = 0;
  if (v50 == 1)
  {
    sub_22CEEC3D8(v47, &qword_27D9F26E0, &unk_22D018F80);
    v53 = 1;
    v54 = v123;
  }

  else
  {
    sub_22D01484C();
    (*(v49 + 8))(v47, v48);
    v55 = v115;
    v56 = v114;
    v57 = v113;
    (*(v115 + 32))(v114, v21, v113);
    v54 = v123;
    sub_22D01491C();
    (*(v55 + 8))(v56, v57);
    v53 = 0;
  }

  v58 = sub_22D01430C();
  v59 = *(v58 - 8);
  (*(v59 + 56))(v54, v53, 1, v58);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E7B0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20202020200A2820, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001CLL, 0x800000022D01E7E0);
  v61 = *v132;
  v60 = v132[1];
  v62 = MEMORY[0x277D837D0];
  v63 = MEMORY[0x277D4D6C8];
  v130 = MEMORY[0x277D837D0];
  v131 = MEMORY[0x277D4D6C8];
  v128 = v61;
  v129 = v60;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v120 = v58;
  v115 = v59;
  if (v51)
  {
    v64 = v62;
    *(&v126 + 1) = v62;
    v127 = v63;
    *&v125 = v98;
    *(&v125 + 1) = v51;
    sub_22CEF44D4(&v125, &v128);
  }

  else
  {
    v64 = v62;
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v65 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v130 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v131 = MEMORY[0x277D4D6D8];
    v128 = v65;
    if (*(&v126 + 1))
    {
      sub_22CEEC3D8(&v125, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01421C();
  v66 = MEMORY[0x277D839F8];
  v67 = MEMORY[0x277D4D6D0];
  v130 = MEMORY[0x277D839F8];
  v131 = MEMORY[0x277D4D6D0];
  v128 = v68;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01421C();
  v130 = v66;
  v131 = v67;
  v128 = v69;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v70 = MEMORY[0x277CC9318];
  v71 = v52;
  v72 = MEMORY[0x277D4D6C0];
  v130 = MEMORY[0x277CC9318];
  v131 = MEMORY[0x277D4D6C0];
  v128 = v111;
  v129 = v112;
  sub_22CEEC970(v111, v112);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v73 = v71;
  v74 = sub_22D014F9C();
  v75 = v64;
  v130 = v64;
  v131 = MEMORY[0x277D4D6C8];
  v128 = v74;
  v129 = v76;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v130 = v70;
  v131 = v72;
  v128 = v105;
  v129 = v106;
  sub_22CEEC970(v105, v106);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v130 = v70;
  v131 = v72;
  v128 = v104;
  v129 = v103;
  sub_22CEEC970(v104, v103);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v130 = v70;
  v131 = v72;
  v128 = v109;
  v129 = v110;
  sub_22CEEC970(v109, v110);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v130 = v70;
  v131 = v72;
  v128 = v101;
  v129 = v102;
  sub_22CEEC970(v101, v102);
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v77 = v121;
  sub_22CEEB6DC(v123, v121, &qword_27D9F2648, &unk_22D018BC0);
  v78 = v115;
  v79 = v120;
  if ((*(v115 + 48))(v77, 1, v120) == 1)
  {
    sub_22CEEC3D8(v77, &qword_27D9F2648, &unk_22D018BC0);
    v125 = 0u;
    v126 = 0u;
    v127 = 0;
    v80 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v130 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v131 = MEMORY[0x277D4D6D8];
    v128 = v80;
    v81 = v108;
    v82 = v118;
    if (*(&v126 + 1))
    {
      sub_22CEEC3D8(&v125, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  else
  {
    sub_22D01421C();
    *(&v126 + 1) = MEMORY[0x277D839F8];
    v127 = v67;
    *&v125 = v83;
    (*(v78 + 8))(v77, v79);
    sub_22CEF44D4(&v125, &v128);
    v81 = v108;
    v82 = v118;
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v84 = *(v132 + v73[12]) == 0;
  v85 = 6910049;
  if (*(v132 + v73[12]))
  {
    v85 = 1752397168;
  }

  v86 = 0xE300000000000000;
  v130 = v75;
  v87 = MEMORY[0x277D4D6C8];
  v131 = MEMORY[0x277D4D6C8];
  if (!v84)
  {
    v86 = 0xE400000000000000;
  }

  v128 = v85;
  v129 = v86;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v88 = v116;
  sub_22CF0D3A8(v116);
  v89 = sub_22D0146EC();
  v91 = v90;
  (*(v82 + 8))(v88, v117);
  if (v91)
  {
    *(&v126 + 1) = v75;
    v127 = v87;
    *&v125 = v89;
    *(&v125 + 1) = v91;
    sub_22CEF44D4(&v125, &v128);
    v92 = v100;
  }

  else
  {
    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v93 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
    v130 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
    v131 = MEMORY[0x277D4D6D8];
    v128 = v93;
    v92 = v100;
    if (*(&v126 + 1))
    {
      sub_22CEEC3D8(&v125, &qword_27D9F2688, &unk_22D018F50);
    }
  }

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v128);
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01E800);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01E820);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_30;
  }

  sub_22D01444C();
  v94 = (v122 + 8);
  v95 = v107;
  v96 = v104;

  if (!v92)
  {
  }

  sub_22CEE7524(v101, v102);
  sub_22CEE7524(v109, v110);
  sub_22CEE7524(v96, v103);
  sub_22CEE7524(v105, v106);
  sub_22CEE7524(v111, v112);
  (*v94)(v81, v95);
  sub_22CEEC3D8(v123, &qword_27D9F2648, &unk_22D018BC0);
}

char *sub_22CF56C04()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5C36C(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF56F2C(uint64_t a1)
{
  v41 = a1;
  v3 = sub_22D01430C();
  v40 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v39 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D0157AC();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0144BC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_22D0144DC();
  v43 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v42 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v1;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  v15 = sub_22D01440C();

  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v36 = v12;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E7B0);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20202020200A2820, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD00000000000001CLL, 0x800000022D01E7E0);
  v35 = v3;
  sub_22D01573C();
  *&v16 = COERCE_DOUBLE(sub_22D01578C());
  v18 = v17;
  v19 = *(v6 + 8);
  v20 = v37;
  v19(v9, v37);
  v21 = MEMORY[0x277D4D6C8];
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D4D6C8];
  v44 = *&v16;
  v45 = v18;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01573C();
  *&v22 = COERCE_DOUBLE(sub_22D01579C());
  v24 = v23;
  v19(v9, v20);
  v46 = MEMORY[0x277D837D0];
  v47 = v21;
  v44 = *&v22;
  v45 = v24;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v25 = v39;
  sub_22D01571C();
  sub_22D01421C();
  v27 = v26;
  (*(v40 + 8))(v25, v35);
  v28 = MEMORY[0x277D839F8];
  v29 = MEMORY[0x277D4D6D0];
  v46 = MEMORY[0x277D839F8];
  v47 = MEMORY[0x277D4D6D0];
  v44 = v27;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  v30 = sub_22D01574C();
  v31 = 0.0;
  if (v30)
  {
    v31 = 1.0;
  }

  v46 = v28;
  v47 = v29;
  v44 = v31;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v44);
  MEMORY[0x2318C3600](0xD000000000000017, 0x800000022D01E800);
  sub_22D01448C();
  MEMORY[0x2318C3600](8236, 0xE200000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000018, 0x800000022D01E820);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2020202020200A2CLL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x756C637865203D20, 0xEC0000002E646564);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  v32 = v42;
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_10;
  }

  sub_22D01444C();
  v33 = v36;
  if (v2)
  {
    (*(v43 + 8))(v32, v36);
  }

  else
  {

    (*(v43 + 8))(v32, v33);
  }
}

uint64_t sub_22CF576CC()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5C9D8(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF57980(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D0144BC();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v6 = sub_22D0144DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v11 = sub_22D01440C();

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = MEMORY[0x277D4D6C8];
  v14[0] = a1;
  v14[1] = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v12 = v14[6];
  sub_22D01444C();
  if (v12)
  {
    (*(v7 + 8))(v10, v6);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

void (**sub_22CF57C9C())(uint64_t, char *, uint64_t)
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5CBE0(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

void sub_22CF57FC4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = a3;
  v5 = sub_22D0144BC();
  MEMORY[0x28223BE20](v5 - 8, v6);
  v28 = sub_22D0144DC();
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v11 = sub_22D01440C();

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v21 = v7;
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
  v12 = MEMORY[0x277D837D0];
  v13 = MEMORY[0x277D4D6C8];
  v26 = MEMORY[0x277D837D0];
  v27 = MEMORY[0x277D4D6C8];
  v24 = v22;
  v25 = a2;

  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v14 = sub_22D01578C();
  v26 = v12;
  v27 = v13;
  v24 = v14;
  v25 = v15;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  v16 = sub_22D01579C();
  v26 = v12;
  v27 = v13;
  v24 = v16;
  v25 = v17;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01421C();
  v26 = MEMORY[0x277D839F8];
  v27 = MEMORY[0x277D4D6D0];
  v24 = v18;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v24);
  MEMORY[0x2318C3600](3877130, 0xE300000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  sub_22D01444C();
  v19 = v21;
  if (v3)
  {
    (*(v21 + 8))(v10, v28);
  }

  else
  {

    (*(v19 + 8))(v10, v28);
  }
}

void sub_22CF58424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22D0144BC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v22 = sub_22D0144DC();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v9 = sub_22D01440C();

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v10 = sub_22D01578C();
  v11 = MEMORY[0x277D837D0];
  v12 = MEMORY[0x277D4D6C8];
  v20 = MEMORY[0x277D837D0];
  v21 = MEMORY[0x277D4D6C8];
  v18 = v10;
  v19 = v13;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  MEMORY[0x2318C3600](0x20444E410ALL, 0xE500000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v14 = sub_22D01579C();
  v20 = v11;
  v21 = v12;
  v18 = v14;
  v19 = v15;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(&v18);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v16 = v17;
  sub_22D01444C();
  if (v16)
  {
    (*(v5 + 8))(v8, v22);
  }

  else
  {

    (*(v5 + 8))(v8, v22);
  }
}

void *sub_22CF58758()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0144AC();
  MEMORY[0x2318C3600](0x200A5443454C4553, 0xEB00000000202020);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x20200A4D4F52460ALL, 0xEA00000000002020);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = sub_22D01444C();
    if (v0)
    {
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v11 = v10;

      v9 = sub_22CF5D6F4(v11);
      (*(v4 + 8))(v7, v3);
    }

    return v9;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF58ABC@<X0>(char *a1@<X8>)
{
  v163 = a1;
  v1 = sub_22D01430C();
  v151 = *(v1 - 8);
  v152 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v154 = v133 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v150 = v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v133 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v149 = v133 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A8, &qword_22D018F60);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v133 - v16;
  v18 = sub_22D01555C();
  v156 = *(v18 - 8);
  v157 = v18;
  v20 = MEMORY[0x28223BE20](v18, v19);
  v153 = v133 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v155 = v133 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B0, &qword_22D018F68);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = v133 - v26;
  v28 = sub_22D0154EC();
  v29 = *(v28 - 8);
  v159 = v28;
  v160 = v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v148 = v133 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v158 = v133 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26B8, &qword_22D018F70);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = v133 - v37;
  v39 = sub_22D01534C();
  v161 = *(v39 - 8);
  v162 = v39;
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = v133 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41, v44);
  v46 = v133 - v45;
  sub_22D01451C();
  v47 = v166;
  if (!v166)
  {
    goto LABEL_10;
  }

  v147 = v165;
  sub_22D01451C();
  if (v166 >> 60 == 15)
  {
LABEL_9:

LABEL_10:
    v51 = type metadata accessor for Assertion(0);
    return (*(*(v51 - 8) + 56))(v163, 1, 1, v51);
  }

  v143 = v46;
  v146 = v166;
  v48 = v165;
  sub_22D01451C();
  if (!v166)
  {
    v50 = v48;
    goto LABEL_8;
  }

  v144 = v166;
  v145 = v48;
  v49 = v165;
  sub_22D01451C();
  if ((v166 & 1) != 0 || (sub_22D01451C(), v166 >> 60 == 15))
  {

    v50 = v145;
LABEL_8:
    sub_22CEEEF0C(v50, v146);
    goto LABEL_9;
  }

  v140 = v49;
  v142 = v166;
  v141 = v165;
  sub_22D01451C();
  v139 = v165;
  v138 = v166;

  sub_22D01535C();
  v54 = v161;
  v53 = v162;
  if ((*(v161 + 48))(v38, 1, v162) == 1)
  {

    sub_22CEEC3D8(v38, &qword_27D9F26B8, &qword_22D018F70);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v55 = sub_22D01637C();
    __swift_project_value_buffer(v55, qword_2814443C0);

    v56 = sub_22D01636C();
    v57 = sub_22D0168EC();

    v58 = os_log_type_enabled(v56, v57);
    v59 = v145;
    if (v58)
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v165 = v61;
      *v60 = 136446210;
      v62 = sub_22CEEE31C(v147, v47, &v165);

      *(v60 + 4) = v62;
      _os_log_impl(&dword_22CEE1000, v56, v57, "Unable to parse assertion identifier: %{public}s", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v61);
      MEMORY[0x2318C6860](v61, -1, -1);
      MEMORY[0x2318C6860](v60, -1, -1);
      sub_22CEEEF0C(v59, v146);
      sub_22CEEEF0C(v141, v142);
    }

    else
    {
      sub_22CEEEF0C(v145, v146);
      sub_22CEEEF0C(v141, v142);
    }

    goto LABEL_10;
  }

  v63 = v54 + 32;
  v137 = *(v54 + 32);
  v137(v143, v38, v53);
  sub_22D01408C();
  swift_allocObject();
  v64 = sub_22D01407C();
  sub_22CF5E870(&qword_27D9F26C0, MEMORY[0x277D4D4B8], MEMORY[0x277D4D4C8]);
  v65 = v159;
  v66 = v145;
  v67 = v164;
  sub_22D01406C();
  v147 = v64;
  if (v67)
  {

    (*(v160 + 56))(v27, 1, 1, v65);
    sub_22CEEC3D8(v27, &qword_27D9F26B0, &qword_22D018F68);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v68 = sub_22D01637C();
    __swift_project_value_buffer(v68, qword_2814443C0);
    v69 = v146;
    sub_22CEEC970(v66, v146);
    v70 = sub_22D01636C();
    v71 = sub_22D0168EC();
    sub_22CEEEF0C(v66, v69);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v165 = v73;
      *v72 = 136446210;
      sub_22CEEC970(v66, v69);
      v74 = sub_22D0141CC();
      v76 = v75;
      sub_22CEEEF0C(v66, v69);
      v77 = sub_22CEEE31C(v74, v76, &v165);

      *(v72 + 4) = v77;
      _os_log_impl(&dword_22CEE1000, v70, v71, "Unable to parse attribute: %{public}s", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x2318C6860](v73, -1, -1);
      MEMORY[0x2318C6860](v72, -1, -1);

      sub_22CEEEF0C(v141, v142);
      sub_22CEEEF0C(v66, v69);
    }

    else
    {
      sub_22CEEEF0C(v66, v69);
      sub_22CEEEF0C(v141, v142);
    }

    goto LABEL_34;
  }

  v136 = v63;
  v78 = v160;
  v79 = *(v160 + 56);
  v164 = 0;
  v79(v27, 0, 1, v65);
  v82 = *(v78 + 32);
  v81 = v78 + 32;
  v80 = v82;
  v82(v158, v27, v65);
  sub_22CF5E870(&qword_27D9F26C8, MEMORY[0x277D4D4E0], MEMORY[0x277D4D4F0]);
  v83 = v157;
  v84 = v164;
  sub_22D01406C();
  if (v84)
  {

    (*(v156 + 56))(v17, 1, 1, v83);
    sub_22CEEC3D8(v17, &qword_27D9F26A8, &qword_22D018F60);
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v85 = sub_22D01637C();
    __swift_project_value_buffer(v85, qword_2814443C0);
    v86 = v141;
    v87 = v142;
    sub_22CEEC970(v141, v142);
    v88 = sub_22D01636C();
    v89 = sub_22D0168EC();
    sub_22CEEEF0C(v86, v87);
    v90 = os_log_type_enabled(v88, v89);
    v91 = v145;
    if (v90)
    {
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v165 = v93;
      *v92 = 136446210;
      sub_22CEEC970(v86, v87);
      v94 = sub_22D0141CC();
      v95 = v86;
      v97 = v96;
      sub_22CEEEF0C(v95, v87);
      v98 = sub_22CEEE31C(v94, v97, &v165);

      *(v92 + 4) = v98;
      _os_log_impl(&dword_22CEE1000, v88, v89, "Unable to parse target: %{public}s", v92, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v93);
      MEMORY[0x2318C6860](v93, -1, -1);
      MEMORY[0x2318C6860](v92, -1, -1);

      sub_22CEEEF0C(v95, v87);
      sub_22CEEEF0C(v91, v146);
LABEL_28:
      (*(v160 + 8))(v158, v159);
LABEL_34:
      (*(v161 + 8))(v143, v162);
      v108 = type metadata accessor for Assertion(0);
      return (*(*(v108 - 8) + 56))(v163, 1, 1, v108);
    }

    sub_22CEEEF0C(v86, v87);
    sub_22CEEEF0C(v91, v146);
    goto LABEL_33;
  }

  v133[0] = v80;
  v133[1] = v81;
  v164 = 0;
  v99 = v156;
  (*(v156 + 56))(v17, 0, 1, v83);
  v100 = *(v99 + 32);
  v135 = v99 + 32;
  v134 = v100;
  v100(v155, v17, v83);
  sub_22D01451C();
  v102 = v165;
  v101 = v166;
  v103 = sub_22D01539C();
  v104 = v103;
  if (v101 >> 60 == 15)
  {
    v105 = v149;
    (*(*(v103 - 8) + 56))(v149, 1, 1, v103);
    v106 = v162;
    v107 = v137;
  }

  else
  {
    sub_22CEEC970(v102, v101);
    sub_22CF5E870(&qword_27D9F26D0, MEMORY[0x277D4D478], MEMORY[0x277D4D488]);
    v109 = v164;
    sub_22D01406C();
    v164 = v109;
    v107 = v137;
    if (v109)
    {

      if (qword_28143FB00 != -1)
      {
        swift_once();
      }

      v110 = sub_22D01637C();
      __swift_project_value_buffer(v110, qword_2814443C0);
      sub_22CEEC970(v102, v101);
      v111 = sub_22D01636C();
      v112 = sub_22D0168EC();
      sub_22CEEEF0C(v102, v101);
      v113 = os_log_type_enabled(v111, v112);
      v114 = v145;
      if (v113)
      {
        v115 = swift_slowAlloc();
        v116 = swift_slowAlloc();
        v165 = v116;
        *v115 = 136446210;
        sub_22CEEC970(v102, v101);
        v117 = v102;
        v118 = sub_22D0141CC();
        v120 = v119;
        sub_22CEEEF0C(v117, v101);
        v121 = sub_22CEEE31C(v118, v120, &v165);

        *(v115 + 4) = v121;
        _os_log_impl(&dword_22CEE1000, v111, v112, "Unable to parse invalidation state: %{public}s", v115, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        MEMORY[0x2318C6860](v116, -1, -1);
        MEMORY[0x2318C6860](v115, -1, -1);

        sub_22CEEEF0C(v117, v101);
        sub_22CEEEF0C(v117, v101);
        sub_22CEEEF0C(v141, v142);
        sub_22CEEEF0C(v114, v146);
        (*(v156 + 8))(v155, v157);
        goto LABEL_28;
      }

      sub_22CEEEF0C(v102, v101);
      sub_22CEEEF0C(v102, v101);
      sub_22CEEEF0C(v141, v142);
      sub_22CEEEF0C(v114, v146);
      (*(v156 + 8))(v155, v157);
LABEL_33:
      (*(v160 + 8))(v158, v65);
      goto LABEL_34;
    }

    sub_22CEEEF0C(v102, v101);
    (*(*(v104 - 8) + 56))(v11, 0, 1, v104);
    v122 = v11;
    v105 = v149;
    sub_22CEF0368(v122, v149, &qword_27D9F2680, &qword_22D019670);
    v106 = v162;
  }

  sub_22D01420C();

  sub_22CEEEF0C(v102, v101);
  sub_22CEEEF0C(v141, v142);
  sub_22CEEEF0C(v145, v146);
  v107(v43, v143, v106);
  v134(v153, v155, v157);
  v123 = v148;
  v124 = v159;
  v125 = v133[0];
  (v133[0])(v148, v158, v159);
  v126 = v106;
  v127 = v150;
  sub_22CEF0368(v105, v150, &qword_27D9F2680, &qword_22D019670);
  v128 = v163;
  v137(v163, v43, v126);
  v129 = type metadata accessor for Assertion(0);
  v125(&v128[v129[5]], v123, v124);
  sub_22CEF0368(v127, &v128[v129[6]], &qword_27D9F2680, &qword_22D019670);
  v130 = &v128[v129[7]];
  v131 = v144;
  *v130 = v140;
  v130[1] = v131;
  (*(v151 + 32))(&v128[v129[8]], v154, v152);
  v132 = &v128[v129[9]];
  *v132 = v139;
  v132[8] = v138;
  v134(&v128[v129[10]], v153, v157);
  return (*(*(v129 - 1) + 56))(v128, 0, 1, v129);
}

void sub_22CF59EEC(uint64_t a1)
{
  v66 = a1;
  v3 = sub_22D0144BC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0144DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2680, &qword_22D019670);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v47 - v13;
  v57 = v1;
  if (swift_weakLoadStrong())
  {
    v15 = sub_22D01440C();

    if (v15)
    {
      v55 = v10;
      v56 = v7;
      sub_22D0140BC();
      swift_allocObject();
      v16 = sub_22D0140AC();
      v17 = type metadata accessor for Assertion(0);
      sub_22D0154EC();
      sub_22CF5E870(&qword_28143FB90, MEMORY[0x277D4D4B8], MEMORY[0x277D4D4C0]);
      v18 = v66;
      v19 = sub_22D01409C();
      if (v2)
      {

        return;
      }

      v52 = v16;
      v53 = v19;
      v50 = v6;
      v51 = v17;
      v54 = v20;
      sub_22CEEB6DC(v18 + *(v17 + 24), v14, &qword_27D9F2680, &qword_22D019670);
      v21 = sub_22D01539C();
      v22 = (*(*(v21 - 8) + 48))(v14, 1, v21);
      sub_22CEEC3D8(v14, &qword_27D9F2680, &qword_22D019670);
      if (v22 == 1)
      {
        v23 = 0;
        v24 = 0xF000000000000000;
      }

      else
      {
        sub_22CF5AF98();
        v23 = sub_22D01409C();
        v24 = v25;
      }

      sub_22D01555C();
      sub_22CF5E870(&qword_28143FB88, MEMORY[0x277D4D4E0], MEMORY[0x277D4D4E8]);
      v48 = sub_22D01409C();
      v49 = v26;
      sub_22D0144AC();
      MEMORY[0x2318C3600](0x204543414C504552, 0xED0000204F544E49);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2820, 0xE700000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01448C();
      MEMORY[0x2318C3600](0xD000000000000010, 0x800000022D01E6F0);
      v27 = sub_22D0152FC();
      v64 = MEMORY[0x277D837D0];
      v65 = MEMORY[0x277D4D6C8];
      v62 = v27;
      v63 = v28;
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v29 = MEMORY[0x277CC9318];
      v30 = MEMORY[0x277D4D6C0];
      v64 = MEMORY[0x277CC9318];
      v65 = MEMORY[0x277D4D6C0];
      v62 = v53;
      v63 = v54;
      sub_22CEEC970(v53, v54);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      if (v24 >> 60 == 15)
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v31 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        v64 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
        v65 = MEMORY[0x277D4D6D8];
        v62 = v31;
        if (*(&v60 + 1))
        {
          sub_22CEEC3D8(&v59, &qword_27D9F2688, &unk_22D018F50);
        }
      }

      else
      {
        *(&v60 + 1) = v29;
        v61 = v30;
        *&v59 = v23;
        *(&v59 + 1) = v24;
        sub_22CEF44D4(&v59, &v62);
      }

      v47 = v23;
      sub_22CF460B8(v23, v24);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v32 = v51;
      v33 = v66;
      v34 = (v66 + *(v51 + 28));
      v36 = *v34;
      v35 = v34[1];
      v64 = MEMORY[0x277D837D0];
      v65 = MEMORY[0x277D4D6C8];
      v62 = v36;
      v63 = v35;

      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      sub_22D01421C();
      v37 = MEMORY[0x277D839F8];
      v38 = MEMORY[0x277D4D6D0];
      v64 = MEMORY[0x277D839F8];
      v65 = MEMORY[0x277D4D6D0];
      v62 = v39;
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v64 = MEMORY[0x277CC9318];
      v65 = MEMORY[0x277D4D6C0];
      v62 = v48;
      v63 = v49;
      sub_22CEEC970(v48, v49);
      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](0x202020200A2CLL, 0xE600000000000000);
      v40 = v33 + *(v32 + 36);
      if (*(v40 + 8))
      {
        v61 = 0;
        v59 = 0u;
        v60 = 0u;
        v41 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
        v64 = sub_22CEE82F8(0, &qword_28143F9E0, 0x277CBEB68);
        v65 = MEMORY[0x277D4D6D8];
        v62 = v41;
        v43 = v55;
        v42 = v56;
        if (*(&v60 + 1))
        {
          sub_22CEEC3D8(&v59, &qword_27D9F2688, &unk_22D018F50);
        }
      }

      else
      {
        v44 = *v40;
        *(&v60 + 1) = v37;
        v61 = v38;
        *&v59 = v44;
        sub_22CEF44D4(&v59, &v62);
        v43 = v55;
        v42 = v56;
      }

      sub_22D01447C();
      __swift_destroy_boxed_opaque_existential_1Tm(&v62);
      MEMORY[0x2318C3600](3877130, 0xE300000000000000);
      sub_22D0144CC();
      Strong = swift_weakLoadStrong();
      v46 = v47;
      if (Strong)
      {
        sub_22D01444C();

        sub_22CEE7524(v48, v49);
        sub_22CEEEF0C(v46, v24);
        sub_22CEE7524(v53, v54);
        (*(v42 + 8))(v43, v50);
        return;
      }
    }

    else
    {
      __break(1u);
    }
  }

  sub_22D016CFC();
  __break(1u);
}

void sub_22CF5A80C()
{
  v1 = sub_22D0144BC();
  MEMORY[0x28223BE20](v1 - 8, v2);
  v3 = sub_22D0144DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v8 = sub_22D01440C();

  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](0x2045524548570ALL, 0xE700000000000000);
  sub_22D01448C();
  MEMORY[0x2318C3600](542329120, 0xE400000000000000);
  v9 = sub_22D0152FC();
  v12[3] = MEMORY[0x277D837D0];
  v12[4] = MEMORY[0x277D4D6C8];
  v12[0] = v9;
  v12[1] = v10;
  sub_22D01447C();
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  sub_22D01444C();
  if (v0)
  {
    (*(v4 + 8))(v7, v3);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

void sub_22CF5AB04(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D0144BC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_22D0144DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!swift_weakLoadStrong())
  {
    goto LABEL_9;
  }

  v9 = sub_22D01440C();

  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22D0144AC();
  MEMORY[0x2318C3600](0x46204554454C4544, 0xEC000000204D4F52);
  sub_22D01448C();
  MEMORY[0x2318C3600](59, 0xE100000000000000);
  sub_22D0144CC();
  if (!swift_weakLoadStrong())
  {
LABEL_9:
    sub_22D016CFC();
    __break(1u);
    return;
  }

  v10 = v11[1];
  sub_22D01444C();
  if (v10)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_22CF5AD64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v12 - v2;
  v4 = sub_22D0141BC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281442EE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_281442EE8);
  sub_22CEEB6DC(v9, v3, &qword_27D9F2708, &qword_22D018FC0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_22CEEC3D8(v3, &qword_27D9F2708, &qword_22D018FC0);
    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
    v10 = sub_22CF5E3B0(v8, 4);
    result = (*(v5 + 8))(v8, v4);
    qword_2814444F8 = v10;
  }

  return result;
}

unint64_t sub_22CF5AF98()
{
  result = qword_27D9F2690;
  if (!qword_27D9F2690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2680, &qword_22D019670);
    sub_22CF5E870(&qword_27D9F2698, MEMORY[0x277D4D478], MEMORY[0x277D4D480]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2690);
  }

  return result;
}

char *sub_22CF5B04C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2700, &unk_22D01AEA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_22D015C8C();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v29 = &v26 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_22D01450C() - 8);
  v32 = (v9 + 48);
  v18 = (v9 + 32);
  v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v31 = *(v17 + 72);
  v20 = MEMORY[0x277D84F90];
  v27 = v13;
  v28 = v9;
  do
  {
    sub_22CF4FBA8(v7);
    if ((*v32)(v7, 1, v8) == 1)
    {
      sub_22CEEC3D8(v7, &qword_27D9F2700, &unk_22D01AEA0);
    }

    else
    {
      v30 = v2;
      v21 = *v18;
      v22 = v29;
      (*v18)(v29, v7, v8);
      v21(v13, v22, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22CFCE218(0, *(v20 + 2) + 1, 1, v20);
      }

      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_22CFCE218((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v13 = v27;
      v21(&v20[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24], v27, v8);
      v2 = v30;
    }

    v19 += v31;
    --v16;
  }

  while (v16);
  return v20;
}

char *sub_22CF5B344(uint64_t a1)
{
  v2 = sub_22D0161DC();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v49 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v43 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v43 - v14;
  v16 = sub_22D015E7C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v63 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v52 = &v43 - v22;
  v23 = sub_22D01450C();
  MEMORY[0x28223BE20](v23, v24);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(a1 + 16);
  if (v28)
  {
    v44 = v11;
    v30 = *(v25 + 16);
    v29 = v25 + 16;
    v31 = v17;
    v32 = a1 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
    v61 = (v31 + 56);
    v62 = v30;
    v59 = *(v29 + 56);
    v60 = (v29 - 8);
    v51 = v31;
    v57 = (v31 + 32);
    v58 = (v31 + 48);
    v66 = MEMORY[0x277D84F90];
    v53 = v29;
    v54 = v23;
    v56 = v16;
    while (1)
    {
      v62(v27, v32, v23);
      sub_22D01451C();
      if (v65)
      {
        v55 = v64;
        sub_22D01451C();
        if (v65)
        {
          v50 = v64;
          sub_22D01451C();
          if (v65)
          {
            sub_22D01451C();
            if (v65 >> 60 != 15)
            {
              v47 = v64;
              v48 = v65;
              sub_22D01451C();
              if (v65)
              {
                v46 = 1;
                v34 = v44;
              }

              else
              {
                v34 = v44;
                sub_22D01420C();
                v46 = 0;
              }

              v35 = sub_22D01430C();
              (*(*(v35 - 8) + 56))(v34, v46, 1, v35);
              sub_22D0161BC();
              sub_22CEEB6DC(v34, v45, &qword_27D9F2648, &unk_22D018BC0);
              sub_22D015E3C();
              sub_22CEEC3D8(v34, &qword_27D9F2648, &unk_22D018BC0);
              v33 = 0;
              v23 = v54;
              goto LABEL_18;
            }
          }

          else
          {
          }
        }

        v33 = 1;
        v23 = v54;
      }

      else
      {
        v33 = 1;
      }

LABEL_18:
      v36 = v56;
      (*v61)(v15, v33, 1, v56);
      (*v60)(v27, v23);
      if ((*v58)(v15, 1, v36) == 1)
      {
        sub_22CEEC3D8(v15, &unk_27D9F3630, &unk_22D018FB0);
      }

      else
      {
        v37 = *v57;
        v38 = v52;
        (*v57)(v52, v15, v36);
        v37(v63, v38, v36);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_22CFCE240(0, *(v66 + 2) + 1, 1, v66);
        }

        v40 = *(v66 + 2);
        v39 = *(v66 + 3);
        if (v40 >= v39 >> 1)
        {
          v66 = sub_22CFCE240((v39 > 1), v40 + 1, 1, v66);
        }

        v41 = v66;
        *(v66 + 2) = v40 + 1;
        v37(&v41[((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v40], v63, v36);
      }

      v32 += v59;
      if (!--v28)
      {
        return v66;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

char *sub_22CF5BA18(uint64_t a1)
{
  v2 = sub_22D015FDC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v27 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v30 = v25 - v8;
  v9 = sub_22D01450C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (v14)
  {
    v16 = *(v10 + 16);
    v15 = v10 + 16;
    v33 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v31 = *(v15 + 56);
    v29 = v2;
    v18 = (v15 - 8);
    v26 = v3;
    v28 = (v3 + 32);
    v19 = MEMORY[0x277D84F90];
    v25[1] = v15;
    v16(v13, v17, v9);
    while (1)
    {
      sub_22D01451C();
      if (!v32)
      {
        goto LABEL_4;
      }

      sub_22D01451C();
      if (v32 >> 60 == 15)
      {
        break;
      }

      v20 = v27;
      sub_22D015FAC();
      (*v18)(v13, v9);
      v21 = *v28;
      (*v28)(v30, v20, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22CFCE268(0, *(v19 + 2) + 1, 1, v19);
      }

      v23 = *(v19 + 2);
      v22 = *(v19 + 3);
      if (v23 >= v22 >> 1)
      {
        v19 = sub_22CFCE268((v22 > 1), v23 + 1, 1, v19);
      }

      *(v19 + 2) = v23 + 1;
      v21(&v19[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23], v30, v29);
LABEL_5:
      v17 += v31;
      if (!--v14)
      {
        return v19;
      }

      v33(v13, v17, v9);
    }

LABEL_4:
    (*v18)(v13, v9);
    goto LABEL_5;
  }

  return MEMORY[0x277D84F90];
}

char *sub_22CF5BD74(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26F8, qword_22D01D230);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v26 - v6;
  v8 = sub_22D0162BC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v29 = &v26 - v15;
  v16 = *(a1 + 16);
  if (!v16)
  {
    return MEMORY[0x277D84F90];
  }

  v17 = *(sub_22D01450C() - 8);
  v32 = (v9 + 48);
  v18 = (v9 + 32);
  v19 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v31 = *(v17 + 72);
  v20 = MEMORY[0x277D84F90];
  v27 = v13;
  v28 = v9;
  do
  {
    sub_22CF528E0(v7);
    if ((*v32)(v7, 1, v8) == 1)
    {
      sub_22CEEC3D8(v7, &qword_27D9F26F8, qword_22D01D230);
    }

    else
    {
      v30 = v2;
      v21 = *v18;
      v22 = v29;
      (*v18)(v29, v7, v8);
      v21(v13, v22, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22CFCE290(0, *(v20 + 2) + 1, 1, v20);
      }

      v24 = *(v20 + 2);
      v23 = *(v20 + 3);
      if (v24 >= v23 >> 1)
      {
        v20 = sub_22CFCE290((v23 > 1), v24 + 1, 1, v20);
      }

      *(v20 + 2) = v24 + 1;
      v13 = v27;
      v21(&v20[((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24], v27, v8);
      v2 = v30;
    }

    v19 += v31;
    --v16;
  }

  while (v16);
  return v20;
}

void *sub_22CF5C06C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Activity(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v27 = &v25 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_22D01450C() - 8);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v18;
  do
  {
    sub_22CF53D40(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22CEEC3D8(v7, &qword_27D9F3810, &unk_22D018FA0);
    }

    else
    {
      v28 = v2;
      v20 = v8;
      v21 = v27;
      sub_22CF5DAE0(v7, v27, type metadata accessor for Activity);
      sub_22CF5DAE0(v21, v29, type metadata accessor for Activity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22CFCE2B8(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_22CFCE2B8((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_22CF5DAE0(v29, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, type metadata accessor for Activity);
      v8 = v20;
      v2 = v28;
      v18 = v26;
    }

    v17 += v18;
    --v15;
  }

  while (v15);
  return v19;
}

char *sub_22CF5C36C(uint64_t a1)
{
  v53 = sub_22D0157AC();
  v2 = *(v53 - 8);
  v4 = MEMORY[0x28223BE20](v53, v3);
  v52 = &v42[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4, v6);
  v51 = &v42[-v7];
  v50 = sub_22D01430C();
  v8 = *(v50 - 8);
  v10 = MEMORY[0x28223BE20](v50, v9);
  v49 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10, v12);
  v58 = &v42[-v13];
  v14 = sub_22D01575C();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v57 = &v42[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17, v19);
  v56 = &v42[-v20];
  v60 = sub_22D01450C();
  v21 = *(v60 - 8);
  MEMORY[0x28223BE20](v60, v22);
  v24 = &v42[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = *(a1 + 16);
  if (!v25)
  {
    return MEMORY[0x277D84F90];
  }

  v27 = *(v21 + 16);
  v26 = v21 + 16;
  v66 = v27;
  v28 = a1 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
  v63 = *(v26 + 56);
  v45 = (v8 + 16);
  v46 = (v2 + 16);
  v44 = (v2 + 8);
  v43 = (v8 + 8);
  v62 = (v26 - 8);
  v47 = v15;
  v55 = (v15 + 32);
  v59 = MEMORY[0x277D84F90];
  v29 = v60;
  v48 = v14;
  v61 = v26;
  v27(v24, v28, v60);
  while (1)
  {
    sub_22D01451C();
    if (v65)
    {
      sub_22D01451C();
      if (v65)
      {
        sub_22D01451C();
        if (v65 & 1) != 0 || (v30 = v64, sub_22D01451C(), (v65))
        {

          v29 = v60;
          (*v62)(v24, v60);
        }

        else
        {
          sub_22D01420C();
          v31 = v51;
          sub_22D01577C();
          v54 = v30 == 1;
          v32 = v53;
          (*v46)(v52, v31, v53);
          v33 = v50;
          v34 = v58;
          (*v45)(v49, v58, v50);
          sub_22D01572C();
          v35 = v31;
          v36 = v48;
          (*v44)(v35, v32);
          (*v43)(v34, v33);
          (*v62)(v24, v60);
          v37 = *v55;
          (*v55)(v56, v57, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_22CFCE2E0(0, *(v59 + 2) + 1, 1, v59);
          }

          v39 = *(v59 + 2);
          v38 = *(v59 + 3);
          if (v39 >= v38 >> 1)
          {
            v59 = sub_22CFCE2E0((v38 > 1), v39 + 1, 1, v59);
          }

          v40 = v59;
          *(v59 + 2) = v39 + 1;
          v37(&v40[((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v39], v56, v36);
          v29 = v60;
        }
      }

      else
      {

        (*v62)(v24, v29);
      }
    }

    else
    {
      (*v62)(v24, v29);
    }

    v28 += v63;
    if (!--v25)
    {
      break;
    }

    v66(v24, v28, v29);
  }

  return v59;
}

uint64_t sub_22CF5C9D8(uint64_t a1)
{
  v25 = sub_22D01450C();
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = *(v2 + 16);
    v7 = v2 + 16;
    v9 = a1 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v21 = *(v7 + 56);
    v22 = v8;
    v10 = (v7 - 8);
    v11 = MEMORY[0x277D84F90];
    v20[1] = v7;
    do
    {
      v13 = v25;
      v22(v5, v9, v25);
      sub_22D01451C();
      (*v10)(v5, v13);
      v14 = v24;
      if (v24)
      {
        v15 = v23;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22CFCE000(0, *(v11 + 2) + 1, 1, v11);
        }

        v17 = *(v11 + 2);
        v16 = *(v11 + 3);
        if (v17 >= v16 >> 1)
        {
          v11 = sub_22CFCE000((v16 > 1), v17 + 1, 1, v11);
        }

        *(v11 + 2) = v17 + 1;
        v12 = &v11[16 * v17];
        *(v12 + 4) = v15;
        *(v12 + 5) = v14;
      }

      v9 += v21;
      --v6;
    }

    while (v6);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v18 = sub_22CF7BDC4(v11);

  return v18;
}

void (**sub_22CF5CBE0(uint64_t a1))(uint64_t, char *, uint64_t)
{
  v110 = sub_22D01430C();
  v97 = *(v110 - 8);
  v3 = MEMORY[0x28223BE20](v110, v2);
  v103 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v85 - v6;
  v107 = sub_22D0157AC();
  v87 = *(v107 - 8);
  v9 = MEMORY[0x28223BE20](v107, v8);
  v104 = v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v86 = v85 - v12;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26D8, &qword_22D018F78);
  v98 = *(v91 - 8);
  v14 = MEMORY[0x28223BE20](v91, v13);
  v90 = (v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14, v16);
  v93 = v85 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v96 = (v85 - v20);
  v21 = sub_22D01450C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a1 + 16);
  v99 = v7;
  if (v26)
  {
    v28 = *(v22 + 16);
    v27 = v22 + 16;
    v29 = a1 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v105 = *(v27 + 56);
    v106 = v28;
    v102 = (v27 - 8);
    v100 = MEMORY[0x277D84F90];
    v95 = v27;
    v28(v25, v29, v21);
    while (1)
    {
      sub_22D01451C();
      v30 = v109;
      if (!v109)
      {
        (*v102)(v25, v21);
        goto LABEL_4;
      }

      v101 = v108;
      sub_22D01451C();
      if (!v109)
      {
        (*v102)(v25, v21);

        goto LABEL_4;
      }

      v94 = v108;
      sub_22D01451C();
      if (!v109)
      {
        break;
      }

      v31 = v108;
      sub_22D01451C();
      if (v109)
      {
        (*v102)(v25, v21);

LABEL_13:

        v7 = v99;
        goto LABEL_4;
      }

      v92 = v31;
      v32 = v21;
      v33 = v90;
      sub_22D01420C();
      sub_22D01577C();
      (*v102)(v25, v32);
      *v33 = v101;
      v33[1] = v30;
      sub_22CEF0368(v33, v93, &qword_27D9F26D8, &qword_22D018F78);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v7 = v99;
        v34 = v100;
      }

      else
      {
        v34 = sub_22CFCE308(0, v100[2] + 1, 1, v100);
        v7 = v99;
      }

      v36 = v34[2];
      v35 = v34[3];
      if (v36 >= v35 >> 1)
      {
        v34 = sub_22CFCE308((v35 > 1), v36 + 1, 1, v34);
      }

      v34[2] = v36 + 1;
      v37 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v100 = v34;
      sub_22CEF0368(v93, v34 + v37 + *(v98 + 72) * v36, &qword_27D9F26D8, &qword_22D018F78);
      v21 = v32;
LABEL_4:
      v29 += v105;
      if (!--v26)
      {
        goto LABEL_21;
      }

      v106(v25, v29, v21);
    }

    (*v102)(v25, v21);
    goto LABEL_13;
  }

  v100 = MEMORY[0x277D84F90];
LABEL_21:
  v38 = v100;
  v95 = v100[2];
  if (!v95)
  {
    v41 = MEMORY[0x277D84F98];
LABEL_52:

    return v41;
  }

  v39 = 0;
  v40 = *(v91 + 48);
  v93 = *(v91 + 64);
  v94 = v40;
  v92 = v100 + ((*(v98 + 80) + 32) & ~*(v98 + 80));
  v102 = (v97 + 32);
  v101 = (v87 + 16);
  v90 = (v97 + 16);
  v91 = v87 + 32;
  v89 = (v87 + 8);
  v85[2] = v97 + 40;
  v88 = (v97 + 8);
  v41 = MEMORY[0x277D84F98];
  v42 = v86;
  while (v39 < v38[2])
  {
    v44 = v96;
    sub_22CEEB6DC(&v92[*(v98 + 72) * v39], v96, &qword_27D9F26D8, &qword_22D018F78);
    v46 = *v44;
    v45 = v44[1];
    (*v91)(v42, &v94[v44], v107);
    v47 = *v102;
    (*v102)(v7, v44 + v93, v110);
    v48 = v41[2];
    v105 = v46;
    v106 = v45;
    if (v48 && (v49 = sub_22CEEC698(v46, v45), (v50 & 1) != 0))
    {
      v51 = *(v41[7] + v49);
    }

    else
    {
      v51 = MEMORY[0x277D84F98];
    }

    v52 = *v101;
    v53 = v104;
    (*v101)(v104, v42, v107);
    (*v90)(v103, v7, v110);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v108 = v51;
    v56 = sub_22CFB6184(v53);
    v57 = v51[2];
    v58 = (v55 & 1) == 0;
    v59 = v57 + v58;
    if (__OFADD__(v57, v58))
    {
      goto LABEL_54;
    }

    v60 = v55;
    if (v51[3] >= v59)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v63 = v108;
        if (v55)
        {
          goto LABEL_38;
        }
      }

      else
      {
        sub_22CFB6E00();
        v63 = v108;
        if (v60)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      sub_22CFB9BA0(v59, isUniquelyReferenced_nonNull_native);
      v61 = sub_22CFB6184(v104);
      if ((v60 & 1) != (v62 & 1))
      {
        goto LABEL_59;
      }

      v56 = v61;
      v63 = v108;
      if (v60)
      {
LABEL_38:
        (*(v97 + 40))(v63[7] + *(v97 + 72) * v56, v103, v110);
        v67 = *v89;
        (*v89)(v104, v107);
        goto LABEL_39;
      }
    }

    v63[(v56 >> 6) + 8] = (v63[(v56 >> 6) + 8] | (1 << v56));
    v64 = v87;
    v65 = v104;
    v66 = v107;
    v52(v63[6] + *(v87 + 72) * v56, v104, v107);
    v47(v63[7] + *(v97 + 72) * v56, v103, v110);
    v67 = *(v64 + 8);
    v67(v65, v66);
    v68 = v63[2];
    v69 = __OFADD__(v68, 1);
    v70 = (v68 + 1);
    if (v69)
    {
      goto LABEL_56;
    }

    v63[2] = v70;
    v42 = v86;
LABEL_39:

    v71 = swift_isUniquelyReferenced_nonNull_native();
    v108 = v41;
    v72 = sub_22CEEC698(v105, v106);
    v74 = v41[2];
    v75 = (v73 & 1) == 0;
    v69 = __OFADD__(v74, v75);
    v76 = v74 + v75;
    if (v69)
    {
      goto LABEL_55;
    }

    v77 = v73;
    if (v41[3] < v76)
    {
      sub_22CFB9B8C(v76, v71);
      v72 = sub_22CEEC698(v105, v106);
      if ((v77 & 1) != (v78 & 1))
      {
        goto LABEL_58;
      }

LABEL_44:
      v7 = v99;
      if (v77)
      {
        goto LABEL_23;
      }

      goto LABEL_45;
    }

    if (v71)
    {
      goto LABEL_44;
    }

    v83 = v72;
    sub_22CFB6DEC();
    v72 = v83;
    v7 = v99;
    if (v77)
    {
LABEL_23:
      v43 = v72;

      v41 = v108;
      *(v108[7] + v43) = v63;

      (*v88)(v7, v110);
      v67(v42, v107);
      goto LABEL_24;
    }

LABEL_45:
    v41 = v108;
    v108[(v72 >> 6) + 8] = (v108[(v72 >> 6) + 8] | (1 << v72));
    v79 = (v41[6] + 16 * v72);
    v80 = v106;
    *v79 = v105;
    v79[1] = v80;
    *(v41[7] + v72) = v63;
    (*v88)(v7, v110);
    v67(v42, v107);
    v81 = v41[2];
    v69 = __OFADD__(v81, 1);
    v82 = (v81 + 1);
    if (v69)
    {
      goto LABEL_57;
    }

    v41[2] = v82;
LABEL_24:
    ++v39;

    v38 = v100;
    if (v95 == v39)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  sub_22D016E1C();
  __break(1u);
LABEL_59:
  result = sub_22D016E1C();
  __break(1u);
  return result;
}

void *sub_22CF5D6F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v25 - v6;
  v8 = type metadata accessor for Assertion(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v29 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v27 = &v25 - v14;
  v15 = *(a1 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = *(sub_22D01450C() - 8);
  v17 = a1 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v18 = *(v16 + 72);
  v19 = MEMORY[0x277D84F90];
  v26 = v18;
  do
  {
    sub_22CF58ABC(v7);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_22CEEC3D8(v7, &qword_27D9F26A0, &qword_22D019700);
    }

    else
    {
      v28 = v2;
      v20 = v8;
      v21 = v27;
      sub_22CF5DAE0(v7, v27, type metadata accessor for Assertion);
      sub_22CF5DAE0(v21, v29, type metadata accessor for Assertion);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22CFCDFD8(0, v19[2] + 1, 1, v19);
      }

      v23 = v19[2];
      v22 = v19[3];
      if (v23 >= v22 >> 1)
      {
        v19 = sub_22CFCDFD8((v22 > 1), v23 + 1, 1, v19);
      }

      v19[2] = v23 + 1;
      sub_22CF5DAE0(v29, v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v23, type metadata accessor for Assertion);
      v8 = v20;
      v2 = v28;
      v18 = v26;
    }

    v17 += v18;
    --v15;
  }

  while (v15);
  return v19;
}

unint64_t sub_22CF5D9F4()
{
  result = qword_28143D978;
  if (!qword_28143D978)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26F0, &qword_22D018F98);
    sub_22CF5E870(&qword_28143F6B8, MEMORY[0x277CB9500], MEMORY[0x277CB9508]);
    sub_22CF5E870(&qword_281443998, MEMORY[0x277CB9790], MEMORY[0x277CB9798]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D978);
  }

  return result;
}

uint64_t sub_22CF5DAE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22CF5DB48(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26E8, &qword_22D018F90);
    sub_22CF5E870(a2, MEMORY[0x277CB9350], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CF5DBE4()
{
  result = qword_28143D970;
  if (!qword_28143D970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F26F0, &qword_22D018F98);
    sub_22CF5E870(&qword_28143F6A0, MEMORY[0x277CB9500], MEMORY[0x277CB9528]);
    sub_22CF5E870(&qword_28143F650, MEMORY[0x277CB9790], MEMORY[0x277CB97A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28143D970);
  }

  return result;
}

void sub_22CF5DCD0(uint64_t a1)
{
  v73[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22D0141BC();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v71 = v64 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v64 - v12;
  v70 = objc_opt_self();
  v14 = [v70 defaultManager];
  v15 = sub_22D01418C();
  v73[0] = 0;
  v16 = [v14 contentsOfDirectoryAtURL:v15 includingPropertiesForKeys:0 options:0 error:v73];

  v17 = v73[0];
  if (v16)
  {
    v18 = sub_22D0167DC();
    v19 = v17;

    v21 = *(v18 + 16);
    if (v21)
    {
      v22 = v2;
      v25 = *(v3 + 16);
      v24 = v3 + 16;
      v23 = v25;
      v26 = *(v24 + 64);
      v64[1] = v18;
      v27 = v18 + ((v26 + 32) & ~v26);
      v67 = *(v24 + 56);
      v72 = (v24 - 8);
      *&v20 = 136446210;
      v65 = v20;
      v28 = v71;
      v66 = v24;
      v68 = v25;
      v69 = v13;
      v25(v13, v27, v22);
      while (1)
      {
        if (qword_28143FB00 != -1)
        {
          swift_once();
        }

        v30 = sub_22D01637C();
        __swift_project_value_buffer(v30, qword_2814443C0);
        v23(v28, v13, v22);
        v31 = sub_22D01636C();
        v32 = sub_22D01690C();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = v22;
          v35 = swift_slowAlloc();
          v73[0] = v35;
          *v33 = v65;
          sub_22CF5E870(&qword_27D9F2710, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v36 = sub_22D016DEC();
          v38 = v37;
          v39 = *v72;
          (*v72)(v71, v34);
          v40 = sub_22CEEE31C(v36, v38, v73);

          *(v33 + 4) = v40;
          _os_log_impl(&dword_22CEE1000, v31, v32, "Removing %{public}s", v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v35);
          v41 = v35;
          v22 = v34;
          MEMORY[0x2318C6860](v41, -1, -1);
          v42 = v33;
          v28 = v71;
          MEMORY[0x2318C6860](v42, -1, -1);
        }

        else
        {

          v39 = *v72;
          (*v72)(v28, v22);
        }

        v43 = [v70 defaultManager];
        v13 = v69;
        v44 = sub_22D01418C();
        v73[0] = 0;
        v45 = [v43 removeItemAtURL:v44 error:v73];

        if (v45)
        {
          v29 = v73[0];
        }

        else
        {
          v46 = v73[0];
          v47 = sub_22D01416C();

          swift_willThrow();
        }

        v39(v13, v22);
        v23 = v68;
        v27 += v67;
        if (!--v21)
        {
          break;
        }

        v68(v13, v27, v22);
      }
    }
  }

  else
  {
    v48 = v73[0];
    v49 = sub_22D01416C();

    swift_willThrow();
    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v50 = sub_22D01637C();
    __swift_project_value_buffer(v50, qword_2814443C0);
    (*(v3 + 16))(v7, a1, v2);
    v51 = v49;
    v52 = sub_22D01636C();
    v53 = sub_22D01690C();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v3;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v73[0] = v56;
      *v55 = 136446466;
      sub_22CF5E870(&qword_27D9F2710, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v57 = sub_22D016DEC();
      v59 = v58;
      (*(v54 + 8))(v7, v2);
      v60 = sub_22CEEE31C(v57, v59, v73);

      *(v55 + 4) = v60;
      *(v55 + 12) = 2082;
      swift_getErrorValue();
      v61 = sub_22D016E2C();
      v63 = sub_22CEEE31C(v61, v62, v73);

      *(v55 + 14) = v63;
      _os_log_impl(&dword_22CEE1000, v52, v53, "Unable to clean up %{public}s: %{public}s", v55, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v56, -1, -1);
      MEMORY[0x2318C6860](v55, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }
  }
}

uint64_t sub_22CF5E3B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01443C();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v27 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D0141BC();
  v9 = MEMORY[0x28223BE20](v7, v8);
  v26 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9, v11);
  v16 = v19 - v14;
  if (a2 < 1)
  {
    __break(1u);
  }

  else
  {
    v24 = (v13 + 16);
    v25 = "subscriptionType";
    v23 = (v13 + 8);
    *&v15 = 136446210;
    v19[1] = v15;
    *&v15 = 136315138;
    v19[0] = v15;
    v20 = a1;
    v21 = v19 - v14;
    v22 = v7;
    sub_22D01419C();
    (*v24)(v26, v16, v7);
    v17 = v27;
    sub_22D01442C();
    type metadata accessor for ActivityDatabase();
    v18 = swift_allocObject();
    sub_22CF4E0F0(v17);
    (*v23)(v16, v7);
    return v18;
  }

  return result;
}

uint64_t sub_22CF5E870(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22CF5E9A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v34 = MEMORY[0x277D84F90];
    sub_22CF4414C(0, v2, 0);
    v3 = v34;
    v4 = a1 + 64;
    v5 = sub_22D016AEC();
    v6 = 0;
    v7 = *(a1 + 36);
    v29 = v2;
    v30 = v7;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v9 = v5 >> 6;
      if ((*(v4 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v7 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v31 = v6;
      v10 = *(*(a1 + 56) + 8 * v5);
      sub_22CF65598();
      v11 = v10;
      v12 = sub_22D016ABC();
      v32 = v13;
      v33 = v12;
      v14 = [v11 description];
      v15 = sub_22D01667C();
      v17 = v16;

      v18 = v3;
      v35 = v3;
      v19 = *(v3 + 16);
      v20 = *(v18 + 24);
      if (v19 >= v20 >> 1)
      {
        sub_22CF4414C((v20 > 1), v19 + 1, 1);
        v18 = v35;
      }

      *(v18 + 16) = v19 + 1;
      v21 = (v18 + 48 * v19);
      v21[4] = v33;
      v21[5] = v32;
      v21[6] = v15;
      v21[7] = v17;
      v21[9] = MEMORY[0x277D837D0];
      v8 = 1 << *(a1 + 32);
      if (v5 >= v8)
      {
        goto LABEL_24;
      }

      v4 = a1 + 64;
      v22 = *(a1 + 64 + 8 * v9);
      if ((v22 & (1 << v5)) == 0)
      {
        goto LABEL_25;
      }

      v3 = v18;
      v7 = v30;
      if (v30 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v5 & 0x3F));
      if (v23)
      {
        v8 = __clz(__rbit64(v23)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v9 << 6;
        v25 = v9 + 1;
        v26 = (a1 + 72 + 8 * v9);
        while (v25 < (v8 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_22CF44CF8(v5, v30, 0);
            v8 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v5, v30, 0);
      }

LABEL_4:
      v6 = v31 + 1;
      v5 = v8;
      if (v31 + 1 == v29)
      {
        return;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_22CF5EC5C()
{

  return swift_deallocClassInstance();
}

void sub_22CF5ECD8(uint64_t a1)
{
  v2 = v1;
  if (qword_28143FB08 != -1)
  {
    swift_once();
  }

  v4 = sub_22D01637C();
  __swift_project_value_buffer(v4, qword_2814443D8);

  v5 = sub_22D01636C();
  v6 = sub_22D01690C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136380675;
    v9 = sub_22D01686C();
    v11 = sub_22CEEE31C(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_22CEE1000, v5, v6, "Monitoring new bundle identifiers: %{private}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2318C6860](v8, -1, -1);
    MEMORY[0x2318C6860](v7, -1, -1);
  }

  v12 = *(v2[6] + 16);
  os_unfair_lock_lock(v12);
  sub_22CF5EE78(a1, v2);

  os_unfair_lock_unlock(v12);
}

void sub_22CF5EE78(uint64_t a1, void *a2)
{
  v4 = a2[3];
  if (*(a1 + 16) <= *(v4 + 16) >> 3)
  {

    sub_22CF627A8(a1);
    v5 = v4;
  }

  else
  {

    v5 = sub_22CF62C50(a1, v4);
  }

  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 56);
  swift_beginAccess();
  v9 = 0;
  v10 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_14:
    v12 = (*(v5 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v8)))));
    v14 = *v12;
    v13 = v12[1];
    v15 = a2[4];
    v16 = *(v15 + 16);

    if (v16)
    {

      v17 = sub_22CEEC698(v14, v13);
      if (v18)
      {
        v19 = *(*(v15 + 56) + 4 * v17);

        swift_beginAccess();
        v20 = sub_22CEE637C(v19);
        if (v21)
        {
          v22 = v20;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v24 = a2[5];
          a2[5] = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_22CFB72BC();
          }

          sub_22CFBD6BC(v22, v24);
          a2[5] = v24;
        }

        swift_endAccess();
      }

      else
      {
      }
    }

    swift_beginAccess();
    v25 = sub_22CEEC698(v14, v13);
    v27 = v26;

    if (v27)
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v29 = a2[4];
      a2[4] = 0x8000000000000000;
      if (!v28)
      {
        sub_22CFB7154();
      }

      sub_22CFBD50C(v25, v29);
      a2[4] = v29;
    }

    v8 &= v8 - 1;
    swift_endAccess();
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      a2[3] = a1;

      sub_22CF5F120();
      return;
    }

    v8 = *(v5 + 56 + 8 * v11);
    ++v9;
    if (v8)
    {
      v9 = v11;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_22CF5F120()
{
  v1 = *(v0 + 48);
  os_unfair_lock_assert_owner(*(v1 + 16));
  os_unfair_lock_assert_owner(*(v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2730, &unk_22D0196E0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22D018FE0;

  v3 = sub_22D01684C();

  v4 = [objc_opt_self() predicateMatchingBundleIdentifiers_];

  *(v2 + 32) = v4;
  v7 = *(v0 + 16);
  if (v7)
  {
    v0 = swift_allocObject();
    *(v0 + 16) = v2;
    v2 = swift_allocObject();
    *(v2 + 16) = sub_22CF65518;
    *(v2 + 24) = v0;
    v20 = sub_22CF656A0;
    v21 = v2;
    aBlock = MEMORY[0x277D85DD0];
    v17 = 1107296256;
    v18 = sub_22CEE5AA0;
    v19 = &block_descriptor_26;
    v8 = _Block_copy(&aBlock);
    v9 = v7;

    [v9 updateConfiguration_];

    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if ((v8 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  MEMORY[0x28223BE20](v5, v6);
  v15[2] = v2;
  v15[3] = v0;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_22CF65510;
  *(v10 + 24) = v15;
  v20 = sub_22CEE5B24;
  v21 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_22CEE5AA0;
  v19 = &block_descriptor_1;
  v11 = _Block_copy(&aBlock);
  v12 = objc_opt_self();

  v13 = [v12 monitorWithConfiguration_];
  _Block_release(v11);

  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
  }

  else
  {
    v14 = *(v0 + 16);
    *(v0 + 16) = v13;
  }
}

void sub_22CF5F490(void *a1, uint64_t a2)
{
  sub_22CEE82F8(0, &unk_28143F9E8, 0x277D46FA0);
  v3 = sub_22D0167CC();
  [a1 setPredicates_];
}

void sub_22CF5F50C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  [v4 setValues_];
  [a1 setStateDescriptor_];
  sub_22CEE82F8(0, &unk_28143F9E8, 0x277D46FA0);
  v5 = sub_22D0167CC();
  [a1 setPredicates_];

  [a1 setServiceClass_];
  v6 = swift_allocObject();
  swift_weakInit();
  v8[4] = sub_22CF65520;
  v8[5] = v6;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22CF5F960;
  v8[3] = &block_descriptor_32;
  v7 = _Block_copy(v8);

  [a1 setUpdateHandler_];
  _Block_release(v7);
}

double sub_22CF5F688(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CF5F6FC(a3, a2);
  }

  return result;
}

void sub_22CF5F6FC(void *a1, id a2)
{
  v3 = v2;
  v5 = [a2 bundle];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 identifier];

    if (v7)
    {
      v8 = sub_22D01667C();
      v10 = v9;

      if (qword_28143FB08 != -1)
      {
        swift_once();
      }

      v11 = sub_22D01637C();
      __swift_project_value_buffer(v11, qword_2814443D8);

      v12 = a1;
      v13 = sub_22D01636C();
      v14 = sub_22D01690C();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21 = v16;
        *v15 = 136380931;
        *(v15 + 4) = sub_22CEEE31C(v8, v10, &v21);
        *(v15 + 12) = 2082;
        [v12 state];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2798, &qword_22D019088);
        v17 = sub_22D01669C();
        v19 = sub_22CEEE31C(v17, v18, &v21);

        *(v15 + 14) = v19;
        _os_log_impl(&dword_22CEE1000, v13, v14, "Received state update for %{private}s with state %{public}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v16, -1, -1);
        MEMORY[0x2318C6860](v15, -1, -1);
      }

      v20 = *(*(v3 + 48) + 16);
      os_unfair_lock_lock(v20);
      sub_22CF5FA00(v12, v3, v8, v10);

      os_unfair_lock_unlock(v20);
    }
  }
}

void sub_22CF5F960(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

void sub_22CF5FA00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 state];
  if (v8 && (v9 = v8, v10 = [v8 taskState], v9, v10 - 2 <= 2))
  {
    v11 = [a1 state];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 process];

      if (v13)
      {
        v14 = [v13 pid];

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(a2 + 32);
        *(a2 + 32) = 0x8000000000000000;
        sub_22CFBEBF8(v14, a3, a4, isUniquelyReferenced_nonNull_native);
        *(a2 + 32) = v21;
        swift_endAccess();
        v16 = [a1 state];
        swift_beginAccess();
        sub_22CFB3198(v16, v14);
LABEL_9:
        swift_endAccess();
      }
    }
  }

  else
  {
    swift_beginAccess();
    v17 = *(a2 + 32);
    if (!*(v17 + 16))
    {
      return;
    }

    v18 = sub_22CEEC698(a3, a4);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 4 * v18);

      swift_beginAccess();

      sub_22CFB31AC(0x100000000, a3, a4);
      swift_endAccess();
      swift_beginAccess();
      sub_22CFB3198(0, v20);
      goto LABEL_9;
    }
  }
}

uint64_t sub_22CF5FC38()
{
  v1 = *(*(v0 + 48) + 16);
  os_unfair_lock_lock(v1);
  swift_beginAccess();

  sub_22CF5E9A8(v2);
  v4 = v3;

  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
    v5 = sub_22D016D3C();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  v9 = v5;

  sub_22CF623EC(v6, 1, &v9);

  v7 = v9;
  os_unfair_lock_unlock(v1);
  return v7;
}

uint64_t sub_22CF5FEC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_22D016C2C();
    v21 = v8;
    sub_22D016B3C();
    if (sub_22D016BAC())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          a6(v15 + 1);
        }

        v8 = v21;
        result = sub_22D016A5C();
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (sub_22D016BAC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v8;
}

unint64_t sub_22CF600B0(uint64_t a1, uint64_t a2)
{
  sub_22D016A5C();
  result = sub_22D016B1C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_22CF60134()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2728, qword_22D019070);
  v2 = *v0;
  v3 = sub_22D016C0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CF60308()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  v2 = *v0;
  v3 = sub_22D016C0C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 40 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        LOBYTE(v18) = *(v18 + 32);
        v23 = *(v4 + 48) + v17;
        *v23 = v20;
        *(v23 + 8) = v19;
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        *(v23 + 32) = v18;
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
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
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
LABEL_19:

    *v1 = v4;
  }
}

void sub_22CF604A8(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_22D016C0C();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    v15 = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || v15 >= v12 + 56 + 8 * v16)
    {
      memmove(v15, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    v30 = v8 + 16;
    while (v21)
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
      (*(v8 + 32))(*(v14 + 48) + v26, v11, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }
}

void sub_22CF60730(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22D016C0C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

uint64_t sub_22CF608AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22D01534C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22CF65648(qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
  v31 = a1;
  v11 = sub_22D01661C();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_22CF65648(&qword_28143FBA8, MEMORY[0x277D4D450], MEMORY[0x277D4D460]);
      v19 = sub_22D01665C();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF604A8(MEMORY[0x277D4D450], &qword_27D9F27B8, &qword_22D0190A8);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_22CF61F50(v13, MEMORY[0x277D4D450], qword_28143FBB0, MEMORY[0x277D4D450], MEMORY[0x277D4D458]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22CF60BF8(void *a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, id))
{
  v7 = *v5;
  if ((*v5 & 0xC000000000000001) != 0)
  {
    if (v7 < 0)
    {
      v9 = *v5;
    }

    else
    {
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = a1;
    v11 = sub_22D016BBC();

    if (v11)
    {
      v12 = a5(v9, v10);

      return v12;
    }

    return 0;
  }

  v15 = v5;
  a2(0);
  v16 = sub_22D016A5C();
  v17 = -1 << *(v7 + 32);
  v18 = v16 & ~v17;
  if (((*(v7 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
  {
    return 0;
  }

  v19 = ~v17;
  while (1)
  {
    v20 = *(*(v7 + 48) + 8 * v18);
    v21 = sub_22D016A6C();

    if (v21)
    {
      break;
    }

    v18 = (v18 + 1) & v19;
    if (((*(v7 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v15;
  v26 = *v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60730(a3, a4);
    v23 = v26;
  }

  v24 = *(*(v23 + 48) + 8 * v18);
  sub_22CF6224C(v18);
  result = v24;
  *v15 = v26;
  return result;
}

void sub_22CF60D9C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = *(a1 + 32);
  v10 = *v3;
  sub_22D016EAC();
  sub_22D0166DC();
  v33 = v7;
  sub_22D0166DC();
  v32 = v9;
  MEMORY[0x2318C6020](v9);
  v11 = sub_22D016ECC();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_21;
  }

  v30 = v3;
  v31 = a2;
  v14 = ~v12;
  v15 = *(v10 + 48);
  while (1)
  {
    v16 = v15 + 40 * v13;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    v19 = *(v16 + 32);
    v20 = *v16 == v5 && *(v16 + 8) == v6;
    if (!v20 && (sub_22D016DFC() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v17 != v33 || v18 != v8)
    {
      break;
    }

    if (v32 == v19)
    {
      goto LABEL_16;
    }

LABEL_4:
    v13 = (v13 + 1) & v14;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      a2 = v31;
      goto LABEL_21;
    }
  }

  if (sub_22D016DFC() & 1) == 0 || ((v32 ^ v19))
  {
    goto LABEL_4;
  }

LABEL_16:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v30;
  v34 = *v30;
  a2 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_22CF60308();
    v23 = v34;
  }

  v24 = *(v23 + 48) + 40 * v13;
  v25 = *v24;
  v26 = *(v24 + 8);
  v27 = *(v24 + 16);
  v28 = *(v24 + 24);
  v29 = *(v24 + 32);
  sub_22CF61CFC(v13);
  *v30 = v34;
LABEL_21:
  *a2 = v25;
  *(a2 + 8) = v26;
  *(a2 + 16) = v27;
  *(a2 + 24) = v28;
  *(a2 + 32) = v29;
}

uint64_t sub_22CF60FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22D015E7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
  v31 = a1;
  v11 = sub_22D01661C();
  v29 = v10 + 56;
  v30 = v10;
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v9, *(v30 + 48) + v18 * v13, v5);
      sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
      v19 = sub_22D01665C();
      (*(v16 - 8))(v9, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22CF604A8(MEMORY[0x277D4D5D8], &qword_27D9F27F8, qword_22D0190F0);
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_22CF61F50(v13, MEMORY[0x277D4D5D8], &qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_22CF6139C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27E0, &unk_22D0190D0, type metadata accessor for Client, sub_22CF7729C);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for Client(0);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF6152C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27D8, &qword_22D0190C8, _s11SessionCore6ClientCMa_0, sub_22CF77968);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_0();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF616BC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27D0, &qword_22D0190C0, _s11SessionCore6ClientCMa_1, sub_22CF77F80);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_1();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF6184C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27C8, &qword_22D0190B8, type metadata accessor for PushFrequentUpdatesObservationClient, sub_22CF77F94);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for PushFrequentUpdatesObservationClient();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF619DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27C0, &qword_22D0190B0, _s11SessionCore6ClientCMa_3, sub_22CF77FA8);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    _s11SessionCore6ClientCMa_3();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22CF61B6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_22D016B7C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_22CF5FEC0(v5, v4, &qword_27D9F27B0, &qword_22D0190A0, type metadata accessor for AuthorizationServiceClient, sub_22CF77FBC);
  v15 = v6;

  v7 = sub_22D016A5C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    type metadata accessor for AuthorizationServiceClient();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_22D016A6C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_22CF6224C(v9);
  result = sub_22D016A6C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22CF61CFC(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v24 = v3;
      v25 = v4;
      do
      {
        v10 = 40 * v6;
        v11 = *(*(v3 + 48) + 40 * v6 + 32);
        v12 = v2;
        v13 = v9;
        sub_22D016EAC();

        sub_22D0166DC();
        sub_22D0166DC();
        MEMORY[0x2318C6020](v11);
        v14 = sub_22D016ECC();

        v9 = v13;
        v2 = v12;
        v15 = v14 & v7;
        if (v12 >= v9)
        {
          if (v15 < v9)
          {
            v3 = v24;
          }

          else
          {
            v3 = v24;
            if (v12 >= v15)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          v3 = v24;
          if (v15 >= v9 || v12 >= v15)
          {
LABEL_12:
            v16 = *(v3 + 48);
            v17 = v16 + 40 * v12;
            v18 = (v16 + v10);
            if (40 * v12 < v10 || v17 >= v18 + 40 || v12 != v6)
            {
              v19 = *v18;
              v20 = v18[1];
              *(v17 + 32) = *(v18 + 4);
              *v17 = v19;
              *(v17 + 16) = v20;
              v2 = v6;
            }
          }
        }

        v6 = (v6 + 1) & v7;
        v4 = v25;
      }

      while (((*(v25 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v21 = *(v3 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v23;
    ++*(v3 + 36);
  }
}

void sub_22CF61F50(int64_t a1, uint64_t (*a2)(void), unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  v42 = a4;
  v43 = a5;
  v41 = a3;
  v7 = a2(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v37 - v10;
  v12 = *v5;
  v13 = *v5 + 56;
  v14 = -1 << *(*v5 + 32);
  v15 = (a1 + 1) & ~v14;
  if (((1 << v15) & *(v13 + 8 * (v15 >> 6))) != 0)
  {
    v16 = ~v14;

    v17 = sub_22D016AFC();
    if ((*(v13 + 8 * (v15 >> 6)) & (1 << v15)) != 0)
    {
      v39 = (v17 + 1) & v16;
      v38 = *(v8 + 16);
      v44 = *(v8 + 72);
      v40 = v8 + 16;
      v18 = (v8 + 8);
      v19 = v12;
      v20 = v16;
      while (1)
      {
        v21 = v13;
        v22 = v44 * v15;
        v23 = v20;
        v38(v11, *(v19 + 48) + v44 * v15, v7);
        v24 = v19;
        sub_22CF65648(v41, v42, v43);
        v25 = sub_22D01661C();
        (*v18)(v11, v7);
        v20 = v23;
        v26 = v25 & v23;
        if (a1 >= v39)
        {
          if (v26 < v39 || a1 < v26)
          {
LABEL_4:
            v19 = v24;
            goto LABEL_5;
          }
        }

        else if (v26 < v39 && a1 < v26)
        {
          goto LABEL_4;
        }

        v19 = v24;
        v29 = *(v24 + 48);
        v30 = v44 * a1;
        v31 = v29 + v44 * a1;
        v32 = v29 + v22 + v44;
        if (v44 * a1 < v22 || v31 >= v32)
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_24:
          v20 = v23;
          a1 = v15;
          goto LABEL_5;
        }

        a1 = v15;
        if (v30 != v22)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_24;
        }

LABEL_5:
        v15 = (v15 + 1) & v20;
        v13 = v21;
        if (((*(v21 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {

          goto LABEL_28;
        }
      }
    }

    v19 = v12;
LABEL_28:
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v13 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v19 = v12;
  }

  v34 = *(v19 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v36;
    ++*(v19 + 36);
  }
}

void sub_22CF6224C(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_22D016AFC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_22D016A5C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }
}

void sub_22CF623EC(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_22CF65528(a1 + 32, &v44);
  v8 = v44;
  v7 = v45;
  v42 = v44;
  v43 = v45;
  sub_22CF1D288(v46, v41);
  v9 = *a3;
  v10 = sub_22CEEC698(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_22CFBA2E8(v15, a2 & 1);
    v10 = sub_22CEEC698(v8, v7);
    if ((v16 & 1) != (v17 & 1))
    {
LABEL_5:
      sub_22D016E1C();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v20 = v10;
  sub_22CFB72D0();
  v10 = v20;
  if (v16)
  {
LABEL_9:
    v18 = swift_allocError();
    swift_willThrow();
    v47 = v18;
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v41);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v8;
  v22[1] = v7;
  sub_22CF1D288(v41, (v21[7] + 32 * v10));
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (!v14)
  {
    v21[2] = v24;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v25 = a1 + 80;
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      sub_22CF65528(v25, &v44);
      v28 = v44;
      v27 = v45;
      v42 = v44;
      v43 = v45;
      sub_22CF1D288(v46, v41);
      v29 = *a3;
      v30 = sub_22CEEC698(v28, v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v14 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v14)
      {
        goto LABEL_23;
      }

      v35 = v31;
      if (v29[3] < v34)
      {
        sub_22CFBA2E8(v34, 1);
        v30 = sub_22CEEC698(v28, v27);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v35)
      {
        goto LABEL_9;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v28;
      v38[1] = v27;
      sub_22CF1D288(v41, (v37[7] + 32 * v30));
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v26;
      v37[2] = v40;
      v25 += 48;
      if (v4 == v26)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_22D016C6C();
  MEMORY[0x2318C5860](0xD00000000000001BLL, 0x800000022D01D9D0);
  sub_22D016CEC();
  MEMORY[0x2318C5860](39, 0xE100000000000000);
  sub_22D016CFC();
  __break(1u);
}

void sub_22CF627A8(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_22CF3C4B0(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

void sub_22CF628D4(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    while (v6)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = *(a1 + 48) + 40 * (v10 | (v9 << 6));
      v16 = *(v11 + 32);
      v12 = *(v11 + 16);
      v15[0] = *v11;
      v15[1] = v12;
      v17 = v15[0];
      v18 = v12;
      sub_22CF655EC(&v17, v13);
      sub_22CF655EC(&v18, v13);
      sub_22CF60D9C(v15, v14);
      sub_22CEEC3D8(v14, &qword_27D9F27F0, &unk_22D0190E0);
      sub_22CEE5804(&v17);
      sub_22CEE5804(&v18);
    }

    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_22CF62A34(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v19 - v5;
  v7 = sub_22D015E7C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v12 = 1 << *(a1 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a1 + 56);
    v15 = (v12 + 63) >> 6;
    v19[0] = v8 + 8;
    v19[1] = v8 + 16;

    v16 = 0;
    while (v14)
    {
      v17 = v16;
LABEL_10:
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      (*(v8 + 16))(v11, *(a1 + 48) + *(v8 + 72) * (v18 | (v17 << 6)), v7);
      sub_22CF60FD8(v11, v6);
      (*(v8 + 8))(v11, v7);
      sub_22CEEC3D8(v6, &unk_27D9F3630, &unk_22D018FB0);
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return;
      }

      v14 = *(a1 + 56 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22CF62C50(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_22D016EAC();

    sub_22D0166DC();
    v23 = sub_22D016ECC();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_22D016DFC() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v30 = *(v5 + 32);
  v55 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v55;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28, v29);
    v2 = &v54 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v57 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v27;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = sub_22CF64FC4(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v27 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v61 = v27;
            v40 = (v39 + ((v27 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            sub_22D016EAC();

            sub_22D0166DC();
            v42 = sub_22D016ECC();
            v43 = -1 << *(v5 + 32);
            v8 = v42 & ~v43;
            v2 = v8 >> 6;
            v44 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v45 = (*(v5 + 48) + 16 * v8);
          if (*v45 != v41 || v45[1] != v4)
          {
            v47 = ~v43;
            while ((sub_22D016DFC() & 1) == 0)
            {
              v8 = (v8 + 1) & v47;
              v2 = v8 >> 6;
              v44 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v48 = (*(v5 + 48) + 16 * v8);
              if (*v48 == v41 && v48[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v35 = v59[v2];
          v59[v2] = v35 & ~v44;
          v26 = (v35 & v44) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v50 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v51 = swift_slowAlloc();
  memcpy(v51, v62, v50);
  v52 = v54;
  v53 = sub_22CF64364(v51, v55, v5, v2, v63);

  if (!v52)
  {

    MEMORY[0x2318C6860](v51, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_22CEE57FC(v13);
    return v5;
  }

  result = MEMORY[0x2318C6860](v51, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22CF631C0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v83 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v62 = 0;
  v10 = a1 + 56;
  v9 = *(a1 + 56);
  v11 = -1 << *(a1 + 32);
  v67 = ~v11;
  if (-v11 < 64)
  {
    v12 = ~(-1 << -v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & v9;
  v14 = (63 - v11) >> 6;
  v77 = (a2 + 56);

  v17 = 0;
  v69 = v10;
  v68 = v14;
  v71 = v8;
  v70 = v15;
  while (1)
  {
    if (v13)
    {
      goto LABEL_13;
    }

    v18 = v17;
    do
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_64;
      }

      if (v19 >= v14)
      {
LABEL_61:
        sub_22CEE57FC(v15);
        return v8;
      }

      v13 = *(v10 + 8 * v19);
      ++v18;
    }

    while (!v13);
    v17 = v19;
LABEL_13:
    v20 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v72 = v17;
    v21 = *(v15 + 48) + 40 * (v20 | (v17 << 6));
    v5 = *v21;
    v22 = *(v21 + 8);
    v2 = *(v21 + 16);
    v23 = *(v21 + 24);
    v3 = *(v21 + 32);
    sub_22D016EAC();

    sub_22D0166DC();
    v74 = v2;
    v75 = v23;
    sub_22D0166DC();
    v73 = v3;
    MEMORY[0x2318C6020](v3);
    v24 = sub_22D016ECC();
    v25 = -1 << *(v8 + 32);
    v10 = v24 & ~v25;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if (((1 << v10) & v77[v10 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v8 = v71;
    v15 = v70;
    v10 = v69;
    v17 = v72;
    v14 = v68;
  }

  v76 = ~v25;
  v3 = *(v71 + 48);
  while (1)
  {
    v26 = v3 + 40 * v10;
    v27 = *(v26 + 16);
    v2 = *(v26 + 24);
    v4 = *(v26 + 32);
    v28 = *v26 == v5 && *(v26 + 8) == v22;
    if (!v28 && (sub_22D016DFC() & 1) == 0)
    {
      goto LABEL_16;
    }

    if (v27 != v74 || v2 != v75)
    {
      break;
    }

    if (v73 == v4)
    {
      goto LABEL_28;
    }

LABEL_16:
    v10 = (v10 + 1) & v76;
    v6 = v10 >> 6;
    v7 = 1 << v10;
    if ((v77[v10 >> 6] & (1 << v10)) == 0)
    {
      goto LABEL_6;
    }
  }

  if (sub_22D016DFC() & 1) == 0 || ((v73 ^ v4))
  {
    goto LABEL_16;
  }

LABEL_28:
  v5 = v72;
  v80 = v67;
  v81 = v72;
  v82 = v13;
  v4 = v69;
  v2 = v70;
  v79[0] = v70;
  v79[1] = v69;

  v3 = v71;
  v32 = *(v71 + 32);
  v63 = ((1 << v32) + 63) >> 6;
  v16 = 8 * v63;
  if ((v32 & 0x3Fu) > 0xD)
  {
    goto LABEL_65;
  }

  while (1)
  {
    v64 = &v61;
    MEMORY[0x28223BE20](v30, v31);
    v34 = &v61 - ((v33 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v34, v77, v33);
    v35 = *&v34[8 * v6] & ~v7;
    v66 = v34;
    *&v34[8 * v6] = v35;
    v36 = *(v3 + 16) - 1;
    v37 = v68;
LABEL_30:
    v65 = v36;
LABEL_32:
    while (2)
    {
      if (v13)
      {
        v38 = v71;
LABEL_39:
        v41 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v72 = v5;
        v42 = *(v2 + 48) + 40 * (v41 | (v5 << 6));
        v3 = *v42;
        v43 = *(v42 + 8);
        v45 = *(v42 + 16);
        v44 = *(v42 + 24);
        v46 = *(v42 + 32);
        sub_22D016EAC();

        sub_22D0166DC();
        v74 = v45;
        v75 = v44;
        sub_22D0166DC();
        v10 = v78;
        v73 = v46;
        MEMORY[0x2318C6020](v46);
        v47 = sub_22D016ECC();
        v48 = -1 << *(v38 + 32);
        v49 = v47 & ~v48;
        v6 = v49 >> 6;
        v50 = 1 << v49;
        if (((1 << v49) & v77[v49 >> 6]) == 0)
        {
LABEL_31:

          v2 = v70;
          v4 = v69;
          v5 = v72;
          v37 = v68;
          continue;
        }

        v76 = ~v48;
        v7 = *(v38 + 48);
        while (1)
        {
          v51 = v7 + 40 * v49;
          v52 = *(v51 + 16);
          v10 = *(v51 + 24);
          v53 = *(v51 + 32);
          v54 = *v51 == v3 && *(v51 + 8) == v43;
          if (v54 || (sub_22D016DFC() & 1) != 0)
          {
            if (v52 == v74 && v10 == v75)
            {
              if (v73 == v53)
              {
                goto LABEL_54;
              }
            }

            else if ((sub_22D016DFC() & 1) != 0 && ((v73 ^ v53) & 1) == 0)
            {
LABEL_54:

              v56 = v66[v6];
              v66[v6] = v56 & ~v50;
              v28 = (v56 & v50) == 0;
              v2 = v70;
              v4 = v69;
              v5 = v72;
              v37 = v68;
              if (!v28)
              {
                v36 = v65 - 1;
                if (__OFSUB__(v65, 1))
                {
                  __break(1u);
                }

                if (v65 == 1)
                {

                  v8 = MEMORY[0x277D84FA0];
                  goto LABEL_60;
                }

                goto LABEL_30;
              }

              goto LABEL_32;
            }
          }

          v49 = (v49 + 1) & v76;
          v6 = v49 >> 6;
          v50 = 1 << v49;
          if ((v77[v49 >> 6] & (1 << v49)) == 0)
          {
            goto LABEL_31;
          }
        }
      }

      break;
    }

    v39 = v5;
    v38 = v71;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v37)
      {
        v8 = sub_22CF64D2C(v66, v63, v65, v71);
        goto LABEL_60;
      }

      v13 = *(v4 + 8 * v40);
      ++v39;
      if (v13)
      {
        v5 = v40;
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    v58 = v16;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v59 = swift_slowAlloc();
  memcpy(v59, v77, v58);
  v60 = v62;
  v8 = sub_22CF6459C(v59, v63, v3, v10, v79);

  if (!v60)
  {

    MEMORY[0x2318C6860](v59, -1, -1);
    v2 = v79[0];
    v67 = v80;
LABEL_60:
    v15 = v2;
    goto LABEL_61;
  }

  result = MEMORY[0x2318C6860](v59, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_22CF63900(uint64_t a1, uint64_t a2)
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = (&v71 - v11);
  v13 = sub_22D015E7C();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v91 = (&v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = (&v71 - v19);
  MEMORY[0x28223BE20](v18, v21);
  v86 = (&v71 - v23);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v72 = v12;
  v74 = v9;
  v25 = a1 + 56;
  v24 = *(a1 + 56);
  v26 = -1 << *(a1 + 32);
  v85 = ~v26;
  if (-v26 < 64)
  {
    v27 = ~(-1 << -v26);
  }

  else
  {
    v27 = -1;
  }

  v93 = (v27 & v24);
  v78 = (63 - v26) >> 6;
  v92 = v22 + 16;
  v83 = (v22 + 48);
  v84 = (v22 + 56);
  v82 = (v22 + 32);
  v88 = (a2 + 56);
  v73 = v22;
  v94 = (v22 + 8);

  v29 = 0;
  v75 = a1;
  for (i = a1 + 56; ; v25 = i)
  {
    v30 = v93;
    v31 = v29;
    if (v93)
    {
LABEL_14:
      v2 = (v30 - 1) & v30;
      v35 = v72;
      (*(v73 + 16))(v72, *(a1 + 48) + *(v73 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
      v36 = 0;
      v33 = v31;
    }

    else
    {
      v32 = v78 <= (v29 + 1) ? v29 + 1 : v78;
      v33 = v32 - 1;
      v34 = v29;
      while (1)
      {
        v31 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_58;
        }

        if (v31 >= v78)
        {
          break;
        }

        v30 = *(v25 + 8 * v31);
        ++v34;
        if (v30)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v36 = 1;
      v35 = v72;
    }

    v80 = *v84;
    v80(v35, v36, 1, v13);
    v95 = a1;
    v96 = v25;
    v97 = v85;
    v98 = v33;
    v99 = v2;
    v79 = *v83;
    if (v79(v35, 1, v13) == 1)
    {
      sub_22CEEC3D8(v35, &unk_27D9F3630, &unk_22D018FB0);
      v65 = a1;
      goto LABEL_53;
    }

    v77 = *v82;
    v77(v86, v35, v13);
    v76 = sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
    v37 = sub_22D01661C();
    v38 = -1 << *(a2 + 32);
    v29 = v37 & ~v38;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) != 0)
    {
      break;
    }

    (*v94)(v86, v13);
LABEL_22:
    v29 = v33;
    v93 = v2;
  }

  v71 = v94 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v87 = ~v38;
  v39 = *(v73 + 72);
  v89 = *(v73 + 16);
  v90 = v39;
  while (1)
  {
    v89(v20, *(a2 + 48) + v90 * v29, v13);
    v40 = sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
    v41 = sub_22D01665C();
    v93 = *v94;
    v93(v20, v13);
    if (v41)
    {
      break;
    }

    v29 = (v29 + 1) & v87;
    v31 = v29 >> 6;
    v25 = 1 << v29;
    if (((1 << v29) & v88[v29 >> 6]) == 0)
    {
      a1 = v75;
      v93(v86, v13);
      goto LABEL_22;
    }
  }

  v87 = v40;
  v42 = (v93)(v86, v13);
  v44 = *(a2 + 32);
  v71 = ((1 << v44) + 63) >> 6;
  v28 = 8 * v71;
  a1 = v75;
  if ((v44 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v72 = &v71;
    MEMORY[0x28223BE20](v42, v43);
    v46 = &v71 - ((v45 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v46, v88, v45);
    v47 = *&v46[8 * v31] & ~v25;
    v48 = *(a2 + 16);
    v86 = v46;
    *&v46[8 * v31] = v47;
    v49 = v48 - 1;
    v29 = v74;
    v50 = i;
    v51 = v78;
LABEL_26:
    v73 = v49;
    while (v2)
    {
      v52 = v33;
LABEL_38:
      v55 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v89(v29, *(a1 + 48) + (v55 | (v52 << 6)) * v90, v13);
      v56 = 0;
LABEL_39:
      v80(v29, v56, 1, v13);
      v95 = a1;
      v96 = v50;
      v97 = v85;
      v98 = v33;
      v99 = v2;
      if (v79(v29, 1, v13) == 1)
      {
        sub_22CEEC3D8(v29, &unk_27D9F3630, &unk_22D018FB0);
        a2 = sub_22CF651E8(v86, v71, v73, a2);
        goto LABEL_52;
      }

      v77(v91, v29, v13);
      v57 = sub_22D01661C();
      v58 = a2;
      v59 = -1 << *(a2 + 32);
      v60 = v57 & ~v59;
      v31 = v60 >> 6;
      v25 = 1 << v60;
      if (((1 << v60) & v88[v60 >> 6]) != 0)
      {
        v89(v20, *(v58 + 48) + v60 * v90, v13);
        v61 = sub_22D01665C();
        v93(v20, v13);
        if ((v61 & 1) == 0)
        {
          v62 = ~v59;
          do
          {
            v60 = (v60 + 1) & v62;
            v31 = v60 >> 6;
            v25 = 1 << v60;
            if (((1 << v60) & v88[v60 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v89(v20, *(v58 + 48) + v60 * v90, v13);
            v63 = sub_22D01665C();
            v93(v20, v13);
          }

          while ((v63 & 1) == 0);
        }

        v93(v91, v13);
        v64 = v86[v31];
        v86[v31] = v64 & ~v25;
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
        if ((v64 & v25) != 0)
        {
          v49 = v73 - 1;
          if (__OFSUB__(v73, 1))
          {
            __break(1u);
          }

          if (v73 == 1)
          {

            a2 = MEMORY[0x277D84FA0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v93(v91, v13);
        a2 = v58;
        a1 = v75;
        v29 = v74;
        v50 = i;
        v51 = v78;
      }
    }

    if (v51 <= (v33 + 1))
    {
      v53 = v33 + 1;
    }

    else
    {
      v53 = v51;
    }

    v54 = v53 - 1;
    while (1)
    {
      v52 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v52 >= v51)
      {
        v2 = 0;
        v56 = 1;
        v33 = v54;
        goto LABEL_39;
      }

      v2 = *(v50 + 8 * v52);
      ++v33;
      if (v2)
      {
        v33 = v52;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v67 = v28;

    v86 = a2;
    v68 = v67;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v69 = v86;

      a2 = v69;
      continue;
    }

    break;
  }

  v70 = swift_slowAlloc();
  memcpy(v70, v88, v68);
  a2 = sub_22CF64858(v70, v71, v86, v29, &v95);

  MEMORY[0x2318C6860](v70, -1, -1);
LABEL_52:
  v65 = v95;
LABEL_53:
  sub_22CEE57FC(v65);
  return a2;
}

unint64_t *sub_22CF64364(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_22CF64FC4(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_22D016EAC();

        sub_22D0166DC();
        v19 = sub_22D016ECC();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_22D016DFC() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

unint64_t *sub_22CF6459C(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a3;
  v6 = *(a3 + 16);
  v35 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v7 = v6 - 1;
  v42 = a3 + 56;
  v36 = a5;
LABEL_2:
  v34 = v7;
LABEL_4:
  while (2)
  {
    v8 = a5[3];
    v9 = a5[4];
    if (v9)
    {
      v10 = a5[3];
LABEL_10:
      v13 = *(*a5 + 48) + 40 * (__clz(__rbit64(v9)) | (v10 << 6));
      v14 = *v13;
      v15 = *(v13 + 8);
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = *(v13 + 32);
      a5[3] = v10;
      a5[4] = (v9 - 1) & v9;
      sub_22D016EAC();

      sub_22D0166DC();
      v39 = v17;
      v40 = v16;
      sub_22D0166DC();
      v38 = v18;
      MEMORY[0x2318C6020](v18);
      v19 = sub_22D016ECC();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = 1 << v21;
      if (((1 << v21) & *(v42 + 8 * (v21 >> 6))) == 0)
      {
LABEL_3:

        a5 = v36;
        v5 = a3;
        continue;
      }

      v41 = ~v20;
      v24 = *(v5 + 48);
      while (1)
      {
        v25 = v24 + 40 * v21;
        v26 = *(v25 + 16);
        v27 = *(v25 + 24);
        v28 = *(v25 + 32);
        v29 = *v25 == v14 && *(v25 + 8) == v15;
        if (v29 || (sub_22D016DFC() & 1) != 0)
        {
          if (v26 == v39 && v27 == v40)
          {
            if (v38 == v28)
            {
              goto LABEL_25;
            }
          }

          else if ((sub_22D016DFC() & 1) != 0 && ((v38 ^ v28) & 1) == 0)
          {
LABEL_25:

            a5 = v36;
            v31 = v35[v22];
            v35[v22] = v31 & ~v23;
            v5 = a3;
            if ((v31 & v23) != 0)
            {
              v7 = v34 - 1;
              if (__OFSUB__(v34, 1))
              {
LABEL_34:
                __break(1u);
                return result;
              }

              if (v34 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        v21 = (v21 + 1) & v41;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if ((*(v42 + 8 * (v21 >> 6)) & (1 << v21)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v11 = (a5[2] + 64) >> 6;
  v12 = a5[3];
  while (1)
  {
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v10 >= v11)
    {
      break;
    }

    v9 = *(a5[1] + 8 * v10);
    ++v12;
    if (v9)
    {
      goto LABEL_10;
    }
  }

  if (v11 <= v8 + 1)
  {
    v32 = v8 + 1;
  }

  else
  {
    v32 = (a5[2] + 64) >> 6;
  }

  a5[3] = v32 - 1;
  a5[4] = 0;

  return sub_22CF64D2C(v35, a2, v34, v5);
}

uint64_t sub_22CF64858(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v50 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3630, &unk_22D018FB0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v49 - v11;
  v13 = sub_22D015E7C();
  v15 = MEMORY[0x28223BE20](v13, v14);
  v60 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v15, v17);
  v66 = &v49 - v19;
  v20 = *(a3 + 16);
  v21 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v22 = *(a1 + v21);
  v52 = a1;
  v53 = v12;
  *(a1 + v21) = v22 & ((-1 << a4) - 1);
  v23 = v20 - 1;
  v63 = v24 + 16;
  v64 = a3;
  v57 = (v24 + 48);
  v58 = (v24 + 56);
  v56 = (v24 + 32);
  v62 = a3 + 56;
  v59 = v24;
  v65 = (v24 + 8);
  v54 = a5;
  while (2)
  {
    v51 = v23;
    do
    {
      while (1)
      {
        v26 = *a5;
        v27 = a5[1];
        v29 = a5[2];
        v28 = a5[3];
        v30 = a5[4];
        if (!v30)
        {
          v32 = (v29 + 64) >> 6;
          if (v32 <= v28 + 1)
          {
            v33 = v28 + 1;
          }

          else
          {
            v33 = (v29 + 64) >> 6;
          }

          v34 = v33 - 1;
          while (1)
          {
            v31 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              break;
            }

            if (v31 >= v32)
            {
              v35 = 0;
              v36 = 1;
              goto LABEL_15;
            }

            v30 = *(v27 + 8 * v31);
            ++v28;
            if (v30)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v31 = a5[3];
LABEL_14:
        v35 = (v30 - 1) & v30;
        (*(v59 + 16))(v12, *(v26 + 48) + *(v59 + 72) * (__clz(__rbit64(v30)) | (v31 << 6)), v13);
        v36 = 0;
        v34 = v31;
LABEL_15:
        (*v58)(v12, v36, 1, v13);
        *a5 = v26;
        a5[1] = v27;
        a5[2] = v29;
        a5[3] = v34;
        a5[4] = v35;
        if ((*v57)(v12, 1, v13) == 1)
        {
          sub_22CEEC3D8(v12, &unk_27D9F3630, &unk_22D018FB0);
          v48 = v64;

          return sub_22CF651E8(v52, v50, v51, v48);
        }

        (*v56)(v66, v12, v13);
        v37 = v64;
        sub_22CF65648(&qword_28143DAD8, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E0]);
        v38 = sub_22D01661C();
        v39 = -1 << *(v37 + 32);
        v40 = v38 & ~v39;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) != 0)
        {
          break;
        }

        v25 = *v65;
LABEL_4:
        result = (v25)(v66, v13);
      }

      v55 = v65 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v61 = ~v39;
      v43 = *(v59 + 72);
      v44 = *(v59 + 16);
      while (1)
      {
        v45 = v60;
        v44(v60, *(v64 + 48) + v43 * v40, v13);
        sub_22CF65648(&qword_28143FB80, MEMORY[0x277D4D5D8], MEMORY[0x277D4D5E8]);
        v46 = sub_22D01665C();
        v25 = *v65;
        (*v65)(v45, v13);
        if (v46)
        {
          break;
        }

        v40 = (v40 + 1) & v61;
        v41 = v40 >> 6;
        v42 = 1 << v40;
        if (((1 << v40) & *(v62 + 8 * (v40 >> 6))) == 0)
        {
          v12 = v53;
          a5 = v54;
          goto LABEL_4;
        }
      }

      result = (v25)(v66, v13);
      v12 = v53;
      v47 = v52[v41];
      v52[v41] = v47 & ~v42;
      a5 = v54;
    }

    while ((v47 & v42) == 0);
    v23 = v51 - 1;
    if (__OFSUB__(v51, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v51 != 1)
    {
      continue;
    }

    return MEMORY[0x277D84FA0];
  }
}

uint64_t sub_22CF64D2C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v8 = MEMORY[0x277D84FA0];
LABEL_6:

    return v8;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A8, &qword_22D019098);
  result = sub_22D016C3C();
  v8 = result;
  if (a2 < 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a1;
  }

  v10 = 0;
  v11 = result + 56;
  v34 = v4;
  while (v9)
  {
    v12 = v8;
    v13 = __clz(__rbit64(v9));
    v35 = (v9 - 1) & v9;
LABEL_17:
    v16 = *(v4 + 48) + 40 * (v13 | (v10 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v20 = *(v16 + 16);
    v19 = *(v16 + 24);
    v21 = *(v16 + 32);
    v22 = v12;
    sub_22D016EAC();

    v36 = v17;
    sub_22D0166DC();
    sub_22D0166DC();
    MEMORY[0x2318C6020](v21);
    result = sub_22D016ECC();
    v8 = v22;
    v23 = -1 << *(v22 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v11 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v11 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v22 + 48) + 40 * v26;
    *v31 = v36;
    *(v31 + 8) = v18;
    *(v31 + 16) = v20;
    *(v31 + 24) = v19;
    *(v31 + 32) = v21;
    ++*(v22 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v34;
    v9 = v35;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v10;
  while (1)
  {
    v10 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v10 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v10];
    ++v14;
    if (v15)
    {
      v12 = v8;
      v13 = __clz(__rbit64(v15));
      v35 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}