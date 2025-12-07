uint64_t sub_25F439C7C(uint64_t a1)
{
  result = sub_25F4A25E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t sub_25F439D34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439D7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_25F439E2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 136);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439E74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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
      *(result + 136) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_25F439F18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F439F60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F43A0D4()
{
  result = qword_27FD6E7D0;
  if (!qword_27FD6E7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7D0);
  }

  return result;
}

unint64_t sub_25F43A12C()
{
  result = qword_27FD6E7D8;
  if (!qword_27FD6E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7D8);
  }

  return result;
}

unint64_t sub_25F43A184()
{
  result = qword_27FD6E7E0;
  if (!qword_27FD6E7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7E0);
  }

  return result;
}

unint64_t sub_25F43A1DC()
{
  result = qword_27FD6E7E8;
  if (!qword_27FD6E7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7E8);
  }

  return result;
}

unint64_t sub_25F43A234()
{
  result = qword_27FD6E7F0;
  if (!qword_27FD6E7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7F0);
  }

  return result;
}

unint64_t sub_25F43A28C()
{
  result = qword_27FD6E7F8;
  if (!qword_27FD6E7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E7F8);
  }

  return result;
}

unint64_t sub_25F43A2E4()
{
  result = qword_27FD6E800;
  if (!qword_27FD6E800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E800);
  }

  return result;
}

unint64_t sub_25F43A33C()
{
  result = qword_27FD6E808;
  if (!qword_27FD6E808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E808);
  }

  return result;
}

unint64_t sub_25F43A394()
{
  result = qword_27FD6E810;
  if (!qword_27FD6E810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E810);
  }

  return result;
}

unint64_t sub_25F43A3EC()
{
  result = qword_27FD6E818;
  if (!qword_27FD6E818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E818);
  }

  return result;
}

unint64_t sub_25F43A444()
{
  result = qword_27FD6E820;
  if (!qword_27FD6E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E820);
  }

  return result;
}

unint64_t sub_25F43A49C()
{
  result = qword_27FD6E828;
  if (!qword_27FD6E828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E828);
  }

  return result;
}

unint64_t sub_25F43A4F4()
{
  result = qword_27FD6E830;
  if (!qword_27FD6E830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E830);
  }

  return result;
}

unint64_t sub_25F43A54C()
{
  result = qword_27FD6E838;
  if (!qword_27FD6E838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E838);
  }

  return result;
}

unint64_t sub_25F43A5A4()
{
  result = qword_27FD6E840;
  if (!qword_27FD6E840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E840);
  }

  return result;
}

unint64_t sub_25F43A5FC()
{
  result = qword_27FD6E848;
  if (!qword_27FD6E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E848);
  }

  return result;
}

unint64_t sub_25F43A650()
{
  result = qword_27FD6E850;
  if (!qword_27FD6E850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E850);
  }

  return result;
}

unint64_t sub_25F43A6A4()
{
  result = qword_27FD6E858;
  if (!qword_27FD6E858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E858);
  }

  return result;
}

unint64_t sub_25F43A6F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A744(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A790(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A7DC(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A828(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A874(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A8C0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F43A90C()
{
  result = qword_27FD6E860;
  if (!qword_27FD6E860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E860);
  }

  return result;
}

unint64_t sub_25F43AA08()
{
  result = qword_27FD6E888;
  if (!qword_27FD6E888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6E888);
  }

  return result;
}

uint64_t sub_25F43AAE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  v8 = sub_25F4A25E0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v44);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F4A2AE0();
  v13 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2AC0();
  sub_25F404B8C(v3, &v48, &qword_27FD6E930, &qword_25F4AB208);

  v16 = sub_25F4A2AD0();
  v17 = sub_25F4A3000();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v42 = v7;
    v19 = v18;
    v20 = swift_slowAlloc();
    v41 = v8;
    v21 = v20;
    v47 = v20;
    *v19 = 136446466;
    v39 = v12;
    v40 = v9;
    v22 = a2;
    v23 = *v3;
    v24 = v3[1];

    sub_25F3F21F4(v3, &qword_27FD6E930, &qword_25F4AB208);
    v25 = sub_25F41272C(v23, v24, &v47);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;
    v48 = v46;
    v49 = v22;

    v26 = sub_25F4A2C30();
    v28 = sub_25F41272C(v26, v27, &v47);
    a2 = v22;
    v12 = v39;

    *(v19 + 14) = v28;
    v9 = v40;
    _os_log_impl(&dword_25F3DE000, v16, v17, "%{public}s sending one-way message: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    v29 = v21;
    v8 = v41;
    MEMORY[0x25F8DE250](v29, -1, -1);
    v30 = v19;
    v7 = v42;
    MEMORY[0x25F8DE250](v30, -1, -1);
  }

  else
  {
    sub_25F3F21F4(v3, &qword_27FD6E930, &qword_25F4AB208);
  }

  v31 = (*(v13 + 8))(v15, v43);
  v32 = v45;
  v48 = v46;
  v49 = a2;
  if (v3[5])
  {
    MEMORY[0x28223BE20](v31);
    *(&v38 - 4) = v34;
    *(&v38 - 3) = v33;
    *(&v38 - 2) = &v48;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v9 + 32))(v12, v32, v8);
  swift_storeEnumTagMultiPayload();
  v35 = v3[2];
  v36 = type metadata accessor for TransportReply(0);
  (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
  v35(v12, v7);
  sub_25F3F21F4(v7, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F440ACC(v12, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F43AFDC(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v22 = a1;
  v2 = type metadata accessor for TransportReply(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F4A2A70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E940, &qword_25F4AB220);
  v10 = v9 - 8;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v21 - v14);
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  v16 = sub_25F4A2F70();
  (*(v6 + 8))(v8, v5);
  *v15 = v16;
  sub_25F4A2A80();
  sub_25F404B8C(v15, v13, &qword_27FD6E940, &qword_25F4AB220);

  sub_25F43B7F4(v8, &v13[*(v10 + 56)], v4);
  sub_25F43B2D0(v22, v23, v4);
  sub_25F440ACC(v4, type metadata accessor for TransportReply);
  sub_25F428728(v15, v13, &qword_27FD6E940, &qword_25F4AB220);
  v17 = *v13;
  v18 = *(v10 + 56);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  (*(*(v19 - 8) + 8))(&v13[v18], v19);
  return v17;
}

uint64_t sub_25F43B2D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v47 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB0, &qword_25F4AB200);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39 - v8;
  v10 = sub_25F4A25E0();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for LazyPropertyList(0);
  MEMORY[0x28223BE20](v44);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_25F4A2AE0();
  v14 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F4A2AC0();
  sub_25F404B8C(v4, &v49, &qword_27FD6E930, &qword_25F4AB208);

  v17 = sub_25F4A2AD0();
  v18 = sub_25F4A3000();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v41 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v40 = v10;
    v22 = v21;
    v48 = v21;
    *v20 = 136446466;
    v42 = v9;
    v39 = v13;
    v23 = a2;
    v25 = *v4;
    v24 = v4[1];

    sub_25F3F21F4(v4, &qword_27FD6E930, &qword_25F4AB208);
    v26 = sub_25F41272C(v25, v24, &v48);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2082;
    v49 = v47;
    v50 = v23;

    v27 = sub_25F4A2C30();
    v29 = sub_25F41272C(v27, v28, &v48);
    a2 = v23;
    v13 = v39;

    *(v20 + 14) = v29;
    v9 = v42;
    _os_log_impl(&dword_25F3DE000, v17, v18, "%{public}s sending two-way message: %{public}s", v20, 0x16u);
    swift_arrayDestroy();
    v30 = v22;
    v10 = v40;
    MEMORY[0x25F8DE250](v30, -1, -1);
    v31 = v20;
    a3 = v41;
    MEMORY[0x25F8DE250](v31, -1, -1);
  }

  else
  {
    sub_25F3F21F4(v4, &qword_27FD6E930, &qword_25F4AB208);
  }

  v32 = (*(v14 + 8))(v16, v43);
  v49 = v47;
  v50 = a2;
  v33 = v45;
  if (v4[5])
  {
    MEMORY[0x28223BE20](v32);
    *(&v39 - 4) = v35;
    *(&v39 - 3) = v34;
    *(&v39 - 2) = &v49;
    sub_25F4A25C0();
  }

  else
  {
    sub_25F4A2940();
  }

  (*(v46 + 32))(v13, v33, v10);
  swift_storeEnumTagMultiPayload();
  v36 = v4[2];
  sub_25F440780(a3, v9, type metadata accessor for TransportReply);
  v37 = type metadata accessor for TransportReply(0);
  (*(*(v37 - 8) + 56))(v9, 0, 1, v37);
  v36(v13, v9);
  sub_25F3F21F4(v9, &qword_27FD6DEB0, &qword_25F4AB200);
  return sub_25F440ACC(v13, type metadata accessor for LazyPropertyList);
}

uint64_t sub_25F43B7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a1;
  v30 = a3;
  v5 = sub_25F4A2910();
  MEMORY[0x28223BE20](v5 - 8);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = sub_25F4A2A70();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E950, &qword_25F4AB230);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v16 = &v23 - v15;
  (*(v12 + 16))(v14, a1, v11);
  v17 = *(v8 + 16);
  v24 = v7;
  v17(v10, a2, v7);
  v18 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v19 = swift_allocObject();
  (*(v8 + 32))(v19 + v18, v10, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  sub_25F4A2430();
  sub_25F4A2420();
  sub_25F4A2A80();
  type metadata accessor for LazyPropertyList(0);
  v20 = v27;
  sub_25F4A2490();
  (*(v8 + 8))(v25, v24);
  v21 = *(v12 + 8);
  v21(v26, v11);
  v21(v14, v11);
  return (*(v29 + 8))(v16, v20);
}

uint64_t sub_25F43BBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_25F404B8C(a1, &v11 - v5, &qword_27FD6E988, &qword_25F4AB258);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v8 = *(v7 - 8);
  v9 = 1;
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_25F428728(v6, a2, &qword_27FD6E990, &qword_25F4AB260);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

uint64_t sub_25F43BD40(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v48 = type metadata accessor for AsyncMessageStream.Event(0);
  MEMORY[0x28223BE20](v48);
  v46 = (v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D428, &qword_25F4A41D8);
  v61 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v47 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  v6 = *(v5 - 8);
  v58 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v40 - v7;
  v9 = *(a2 + 16);
  v45 = *(a2 + 8);
  v56 = v9;
  v60 = type metadata accessor for AsyncMessageStream(0);
  v64 = v60;
  v50 = type metadata accessor for AsyncMessageStream;
  v10 = sub_25F440A1C(&qword_27FD6D440, type metadata accessor for AsyncMessageStream, &protocol conformance descriptor for AsyncMessageStream);
  v65 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v63);
  v44 = a2;
  sub_25F440780(a2, boxed_opaque_existential_1, type metadata accessor for AsyncMessageStream);
  v53 = *(v6 + 16);
  v54 = v6 + 16;
  v12 = v59;
  v53(v8, v59, v5);
  v57 = *(v6 + 80);
  v13 = (v57 + 16) & ~v57;
  v14 = swift_allocObject();
  v52 = *(v6 + 32);
  v15 = v5;
  v52(v14 + v13, v8, v5);
  sub_25F412F74(v63, v62);
  v16 = swift_allocObject();
  v55 = v16;
  *(v16 + 16) = sub_25F440B40;
  *(v16 + 24) = v14;
  sub_25F412FDC(v62, v16 + 32);
  v17 = v56;

  __swift_destroy_boxed_opaque_existential_1(v63);
  v64 = v60;
  v65 = v10;
  v18 = __swift_allocate_boxed_opaque_existential_1(v63);
  sub_25F440780(a2, v18, type metadata accessor for AsyncMessageStream);
  v19 = v8;
  v20 = v53;
  v53(v8, v12, v15);
  v51 = v13;
  v21 = swift_allocObject();
  v22 = v8;
  v23 = v52;
  v43 = v6 + 32;
  v52(v21 + v13, v22, v15);
  sub_25F412F74(v63, v62);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_25F44080C;
  *(v24 + 24) = v21;
  sub_25F412FDC(v62, v24 + 32);
  __swift_destroy_boxed_opaque_existential_1(v63);
  v25 = swift_allocObject();
  *(v25 + 2) = v45;
  *(v25 + 3) = v17;
  v26 = v55;
  *(v25 + 4) = sub_25F440800;
  *(v25 + 5) = v26;
  *(v25 + 6) = sub_25F4408DC;
  *(v25 + 7) = v24;
  v40[1] = v24;
  v41 = v19;
  v42 = v15;
  v20(v19, v59, v15);
  v27 = v51;
  v28 = swift_allocObject();
  v29 = v28 + v27;
  v30 = v28;
  v23(v29, v19, v15);
  v31 = v46;
  *v46 = sub_25F440948;
  v31[1] = v30;
  v45 = v30;
  swift_storeEnumTagMultiPayload();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  v32 = v47;
  sub_25F4A2EE0();
  v33 = *(v61 + 8);
  v61 += 8;
  v34 = v49;
  v33(v32, v49);
  *v31 = sub_25F440940;
  v31[1] = v25;
  swift_storeEnumTagMultiPayload();

  sub_25F4A2EE0();

  v33(v32, v34);
  v35 = v41;
  v36 = v42;
  v53(v41, v59, v42);
  v37 = v51;
  v38 = swift_allocObject();
  v52(v38 + v37, v35, v36);
  sub_25F440A1C(&qword_27FD6D450, v50, &protocol conformance descriptor for AsyncMessageStream);
  sub_25F4A2930();
}

uint64_t sub_25F43C410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v13 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C0, &qword_25F4AB2A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  sub_25F404B8C(a1, v4, &qword_27FD6E990, &qword_25F4AB260);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  (*(*(v9 - 8) + 56))(v4, 0, 1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  sub_25F4A2EE0();
  v10 = (*(v6 + 88))(v8, v5);
  LODWORD(v4) = *MEMORY[0x277D85748];
  result = (*(v6 + 8))(v8, v5);
  if (v10 == v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C8, qword_25F4AB2B8);
    sub_25F3F2708(qword_27FD6E9D0, &qword_27FD6E9C8, qword_25F4AB2B8, &unk_25F4A7A28);
    swift_allocError();
    sub_25F404B8C(a1, v12, &qword_27FD6E990, &qword_25F4AB260);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25F43C684()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9C0, &qword_25F4AB2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);
  sub_25F4A2EE0();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F43C80C(uint64_t a1, void *a2)
{
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v26[-1] - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26[-1] - v12;
  result = LazyPropertyList.propertyList.getter(&v26[-1] - v12);
  if (!v2)
  {
    v15 = v5;
    v27 = 0;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v18 = (*(v17 + 40))(v16, v17);
    if (v19)
    {
      v20 = v18;
      v21 = v19;
      (*(v15 + 16))(v11, v13, v4);
      v26[3] = MEMORY[0x277D837D0];
      v26[4] = MEMORY[0x277D405A0];
      v26[0] = v20;
      v26[1] = v21;
      v22 = v27;
      sub_25F4A2530();
      v23 = *(v15 + 8);
      v23(v11, v4);
      v23(v13, v4);
      if (v22)
      {
        return __swift_destroy_boxed_opaque_existential_1(v26);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_1(v26);
        return v26[5];
      }
    }

    else
    {
      (*(v15 + 16))(v8, v13, v4);
      v24 = v27;
      sub_25F4A2950();
      if (v24)
      {
        return (*(v15 + 8))(v13, v4);
      }

      else
      {
        (*(v15 + 8))(v13, v4);
        return v26[0];
      }
    }
  }

  return result;
}

uint64_t sub_25F43CACC(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, void *a4)
{
  v7 = sub_25F4A2AE0();
  MEMORY[0x28223BE20](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  MEMORY[0x28223BE20](v8);
  v10 = (&v13 - v9);
  *v10 = sub_25F43C80C(a1, a4);
  v10[1] = v11;
  swift_storeEnumTagMultiPayload();
  a2(v10);
  return sub_25F3F21F4(v10, &qword_27FD6E990, &qword_25F4AB260);
}

uint64_t sub_25F43CD54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v17[1] = a4;
  v18 = a3;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v20);
  v8 = sub_25F4A2A70();
  v21 = *(v8 - 8);
  v22 = v8;
  MEMORY[0x28223BE20](v8);
  v19 = sub_25F4A2AE0();
  MEMORY[0x28223BE20](v19);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  MEMORY[0x28223BE20](v9);
  v11 = (v17 - v10);
  v12 = sub_25F43C80C(a1, a5);
  v14 = v13;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B0, &unk_25F4AB290) + 48);
  *v11 = v12;
  v11[1] = v14;
  sub_25F440780(a2, v11 + v15, type metadata accessor for TransportReply);
  swift_storeEnumTagMultiPayload();
  v18(v11);
  return sub_25F3F21F4(v11, &qword_27FD6E990, &qword_25F4AB260);
}

uint64_t SampleStreamAgent.__allocating_init(messageStream:description:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v8 = swift_allocObject();
  SampleStreamAgent.init(messageStream:description:offset:)(a1, a2, a3, a4);
  return v8;
}

uint64_t SampleStreamAgent.init(messageStream:description:offset:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v10 = type metadata accessor for MessageStream(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  *(v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages) = &unk_2871762A0;
  *(v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies) = &unk_287176330;
  sub_25F440780(a1, v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);
  v17 = (v5 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description);
  *v17 = a2;
  v17[1] = a3;
  sub_25F43D5E0(1953066601, 0xE400000000000000);

  sub_25F43EAF0(sub_25F43DC1C, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E8E0, &qword_25F4AB158);
  v18 = sub_25F4A2EA0();
  (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
  sub_25F440780(a1, v13, type metadata accessor for MessageStream);
  v19 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v20 = swift_allocObject();
  sub_25F440A64(v13, v20 + v19, type metadata accessor for MessageStream);
  sub_25F4A2A40();

  v21 = swift_allocObject();
  *(v21 + 16) = v5;
  *(v21 + 24) = a4;

  sub_25F4A2A20();

  sub_25F440A1C(&qword_27FD6E8E8, type metadata accessor for MessageStream, &protocol conformance descriptor for MessageStream);

  sub_25F4A25F0();

  sub_25F440ACC(a1, type metadata accessor for MessageStream);
  return v5;
}

uint64_t sub_25F43D5E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_25F4A2AE0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA__0();

  v10 = sub_25F4A2AD0();
  v11 = _s19PreviewsMessagingOS14TransportReplyV13loggingResult6logger5level3forAC2os6LoggerV_So0K11_log_type_taSStFfA0__0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136315394;
    *(v12 + 4) = sub_25F41272C(*(v3 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description), *(v3 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_description + 8), &v16);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_25F41272C(a1, a2, &v16);
    _os_log_impl(&dword_25F3DE000, v10, v11, "StreamAgent[%s]: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8DE250](v13, -1, -1);
    MEMORY[0x25F8DE250](v12, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_25F43D7D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v5 = sub_25F4A2120();
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E998, &qword_25F4AB278);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MessageStream.Responder(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v16 = a1[1];
  sub_25F404B8C(a2, v10, &qword_27FD6E998, &qword_25F4AB278);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_25F3F21F4(v10, &qword_27FD6E998, &qword_25F4AB278);
    v34[0] = 0;
    v34[1] = 0xE000000000000000;
    sub_25F4A30F0();

    v34[0] = 0xD000000000000015;
    v34[1] = 0x800000025F4B7EF0;
    MEMORY[0x25F8DD480](v15, v16);
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F43D5E0(v34[0], v34[1]);
  }

  sub_25F440A64(v10, v14, type metadata accessor for MessageStream.Responder);
  v18 = *(v33 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_replies);
  result = *(v18 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  result = sub_25F43FDB4(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v18 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v19 = v15;
  v20 = v18 + 16 * result;
  v22 = *(v20 + 32);
  v21 = *(v20 + 40);
  v34[0] = 45;
  v34[1] = 0xE100000000000000;

  sub_25F4A2110();
  sub_25F440A1C(&qword_27FD6E928, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v23 = v14;
  v24 = v32;
  v25 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v25);

  (*(v31 + 8))(v7, v24);
  v26 = v34[0];
  v27 = v34[1];
  v34[0] = v22;
  v34[1] = v21;

  MEMORY[0x25F8DD480](v26, v27);

  v29 = v34[0];
  v28 = v34[1];
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_25F4A30F0();

  strcpy(v34, "got message '");
  HIWORD(v34[1]) = -4864;
  MEMORY[0x25F8DD480](v19, v16);
  MEMORY[0x25F8DD480](0x206C6C6977202C27, 0xEF2720796C706572);
  MEMORY[0x25F8DD480](v29, v28);
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  sub_25F43D5E0(v34[0], v34[1]);

  sub_25F43DC24(v29, v28);

  return sub_25F440ACC(v23, type metadata accessor for MessageStream.Responder);
}

uint64_t sub_25F43DC24(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F4A25E0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DEB8, &unk_25F4A8D20);
  MEMORY[0x28223BE20](v8);
  v10 = v15 - v9;
  v15[0] = sub_25F4A2A70();
  v11 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = a1;
  v15[3] = a2;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  sub_25F3F2708(&qword_27FD6E958, &qword_27FD6E938, &unk_25F4AB210, &unk_25F4B4524);
  sub_25F4A2940();
  (*(v5 + 32))(v10, v7, v4);
  type metadata accessor for LazyPropertyList(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD6DDA0, qword_25F4A7150);
  sub_25F4A2410();
  sub_25F3F21F4(v10, &qword_27FD6DEB8, &unk_25F4A8D20);
  return (*(v11 + 8))(v13, v15[0]);
}

uint64_t sub_25F43DEE4(uint64_t *a1, double a2)
{
  v4 = *a1;
  v7 = *(a1 + 3);
  v5 = a1[5];
  sub_25F43D5E0(0x646E657320746F67, 0xEA00000000007265);
  v8 = v4;
  v9 = *(a1 + 1);
  v10 = v7;
  v11 = v5;
  return sub_25F43DF74(&v8, a2);
}

uint64_t sub_25F43DF74(__int128 *a1, double a2)
{
  v3 = sub_25F4A2AF0();
  v27 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F4A2B10();
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F4A2B30();
  v24 = v8;
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - v13;
  v15 = a1[1];
  v30 = *a1;
  v31 = v15;
  v32 = a1[2];
  sub_25F43FFC8();
  v22 = sub_25F4A3050();
  sub_25F4A2B20();
  sub_25F4A2B40();
  v23 = *(v9 + 8);
  v23(v12, v8);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v18 = v31;
  *(v17 + 24) = v30;
  *(v17 + 16) = v16;
  *(v17 + 40) = v18;
  *(v17 + 56) = v32;
  aBlock[4] = sub_25F44009C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F43E9CC;
  aBlock[3] = &block_descriptor;
  v19 = _Block_copy(aBlock);
  sub_25F404B8C(&v30, v28, &qword_27FD6E908, &qword_25F4AB1E0);

  sub_25F4A2B00();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_25F440A1C(&qword_27FD6E910, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E918, &qword_25F4AB1E8);
  sub_25F3F2708(&qword_27FD6E920, &qword_27FD6E918, &qword_25F4AB1E8, MEMORY[0x277D83970]);
  sub_25F4A30A0();
  v20 = v22;
  MEMORY[0x25F8DD850](v14, v7, v5, v19);
  _Block_release(v19);

  (*(v27 + 8))(v5, v3);
  (*(v25 + 8))(v7, v26);
  return (v23)(v14, v24);
}

uint64_t SampleStreamAgent.deinit()
{
  sub_25F43D5E0(0x74696E696564, 0xE600000000000000);
  sub_25F440ACC(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);

  return v0;
}

uint64_t SampleStreamAgent.__deallocating_deinit()
{
  sub_25F43D5E0(0x74696E696564, 0xE600000000000000);
  sub_25F440ACC(v0 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messageStream, type metadata accessor for MessageStream);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_25F43E528(uint64_t a1, __int128 *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = a2[1];
    v6 = *a2;
    v7 = v3;
    v8 = a2[2];
    sub_25F43E5E8(&v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a2[1];
    v6 = *a2;
    v7 = v5;
    v8 = a2[2];
    sub_25F43DF74(&v6, 20.0);
  }

  return result;
}

unint64_t sub_25F43E5E8(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = sub_25F4A2120();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[1];
  v27 = *a1;
  v28 = v11;
  v29 = a1[2];
  v12 = *(v2 + OBJC_IVAR____TtC19PreviewsMessagingOS17SampleStreamAgent_messages);
  result = *(v12 + 16);
  if (!result)
  {
    goto LABEL_10;
  }

  result = sub_25F43FDB4(result);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (result >= *(v12 + 16))
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = v12 + 16 * result;
  v16 = *(v14 + 32);
  v15 = *(v14 + 40);
  v25 = 45;
  v26 = 0xE100000000000000;

  sub_25F4A2110();
  sub_25F440A1C(&qword_27FD6E928, MEMORY[0x277D403A8], MEMORY[0x277D403C0]);
  v17 = sub_25F4A3210();
  MEMORY[0x25F8DD480](v17);

  (*(v8 + 8))(v10, v7);
  v18 = v25;
  v19 = v26;
  v25 = v16;
  v26 = v15;

  MEMORY[0x25F8DD480](v18, v19);

  v21 = v25;
  v20 = v26;
  v25 = 0;
  MEMORY[0x25F8DE260](&v25, 8);
  if ((v25 & 0x20000) != 0)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_25F4A30F0();

    v25 = 0xD000000000000011;
    v26 = 0x800000025F4B7E90;
    MEMORY[0x25F8DD480](v21, v20);
    MEMORY[0x25F8DD480](0x7220687469772027, 0xEC000000796C7065);
    sub_25F43D5E0(v25, v26);

    v22 = sub_25F43AFDC(v21, v20);

    v23 = sub_25F4A2EA0();
    (*(*(v23 - 8) + 56))(v6, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = sub_25F4400C0;
    v24[5] = v2;
    v24[6] = v22;
    sub_25F494FEC(0, 0, v6, &unk_25F4AB1F8, v24);
  }

  else
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_25F4A30F0();

    v25 = 0xD000000000000019;
    v26 = 0x800000025F4B7EB0;
    MEMORY[0x25F8DD480](v21, v20);
    MEMORY[0x25F8DD480](39, 0xE100000000000000);
    sub_25F43D5E0(v25, v26);

    sub_25F43AAE8(v21, v20);
  }
}

uint64_t sub_25F43E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_25F43EA10(uint64_t *a1)
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000012, 0x800000025F4B7ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E968, &qword_25F4AB238);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](39, 0xE100000000000000);
  sub_25F43D5E0(0, 0xE000000000000000);
}

uint64_t sub_25F43EAF0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D9F0, &qword_25F4A5250);
  MEMORY[0x28223BE20](v3 - 8);
  v29 = &v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E970, &qword_25F4AB240);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E978, &qword_25F4AB248);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  v12 = *(v28 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v28);
  v15 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v32 = v2 + *(type metadata accessor for MessageStream(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E988, &qword_25F4AB258);
  (*(v5 + 104))(v7, *MEMORY[0x277D85778], v27);
  sub_25F4A2F60();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  sub_25F4A2F20();
  (*(v9 + 8))(v11, v8);
  v18 = sub_25F4A2EA0();
  v19 = v29;
  (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
  v20 = v28;
  (*(v12 + 16))(v15, v17, v28);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v12 + 32))(v22 + v21, v15, v20);
  v23 = (v22 + ((v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v31;
  *v23 = v30;
  v23[1] = v24;

  sub_25F494FEC(0, 0, v19, &unk_25F4AB270, v22);

  return (*(v12 + 8))(v17, v20);
}

uint64_t sub_25F43EF10(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25F43EF30, 0, 0);
}

uint64_t sub_25F43EF30()
{
  v1 = v0[3];
  v2 = v1 + *(type metadata accessor for MessageStream(0) + 20);
  v0[4] = *(v2 + 8);
  v0[5] = *(v2 + 16);
  v3 = sub_25F440A1C(&qword_27FD6D440, type metadata accessor for AsyncMessageStream, &protocol conformance descriptor for AsyncMessageStream);
  v4 = *(v3 + 32);
  v5 = type metadata accessor for AsyncMessageStream(0);

  v8 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_25F43F0B8;

  return v8(v5, v3);
}

uint64_t sub_25F43F0B8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 56) = v2;

  if (v2)
  {
    v7 = sub_25F43F224;
  }

  else
  {
    *(v6 + 64) = a2;
    *(v6 + 72) = a1;
    v7 = sub_25F43F1EC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F43F1EC()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  v3 = *(v0 + 64);
  *v2 = *(v0 + 32);
  *(v2 + 8) = v1;
  *(v2 + 16) = vextq_s8(v3, v3, 8uLL);
  *(v2 + 32) = xmmword_25F4AB140;
  return (*(v0 + 8))();
}

uint64_t sub_25F43F224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F43F288()
{
  v1 = (type metadata accessor for MessageStream(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];

  v6 = *(type metadata accessor for AsyncMessageStream(0) + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D430, &qword_25F4A41E0);
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F43F3B4(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageStream(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F3F30B0;

  return sub_25F43EF10(a1, v1 + v5);
}

uint64_t sub_25F43F490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  type metadata accessor for TransportReply(0);
  v6[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E998, &qword_25F4AB278);
  v6[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E990, &qword_25F4AB260);
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9A0, &qword_25F4AB280);
  v6[14] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9A8, &qword_25F4AB288);
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F43F664, 0, 0);
}

uint64_t sub_25F43F664()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  sub_25F4A2F10();
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_25F43F72C;
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

uint64_t sub_25F43F72C()
{

  return MEMORY[0x2822009F8](sub_25F43F828, 0, 0);
}

uint64_t sub_25F43F828()
{
  v1 = v0[14];
  if ((*(v0[12] + 48))(v1, 1, v0[11]) == 1)
  {
    (*(v0[16] + 8))(v0[17], v0[15]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_25F428728(v1, v0[13], &qword_27FD6E990, &qword_25F4AB260);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = v0[13];
    v6 = v0[10];
    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[9];
      v8 = v0[7];
      v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B0, &unk_25F4AB290) + 48);
      v10 = v5[1];
      v0[2] = *v5;
      v0[3] = v10;
      sub_25F440A64(v5 + v9, v7, type metadata accessor for TransportReply);
      sub_25F440780(v7, v6, type metadata accessor for TransportReply);
      v11 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
      v8(v0 + 2, v6);
      sub_25F3F21F4(v6, &qword_27FD6E998, &qword_25F4AB278);
      sub_25F440ACC(v7, type metadata accessor for TransportReply);
    }

    else
    {
      v12 = v0[7];
      v13 = v5[1];
      v0[4] = *v5;
      v0[5] = v13;
      v14 = type metadata accessor for MessageStream.Responder(0);
      (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
      v12(v0 + 4, v6);
      sub_25F3F21F4(v6, &qword_27FD6E998, &qword_25F4AB278);
    }

    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_25F43F72C;
    v16 = v0[14];
    v17 = v0[15];

    return MEMORY[0x2822003E8](v16, 0, 0, v17);
  }
}

uint64_t sub_25F43FB34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a4;
  v6[9] = a5;
  v8 = swift_task_alloc();
  v6[10] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D538, &unk_25F4A7590);
  *v8 = v6;
  v8[1] = sub_25F43FC1C;
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200440](v6 + 5, a6, v9, v10, v11);
}

uint64_t sub_25F43FC1C()
{

  return MEMORY[0x2822009F8](sub_25F43FD18, 0, 0);
}

uint64_t sub_25F43FD18()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  if (v4)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 48);
  }

  *(v0 + 16) = v2;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4;
  v1(v0 + 16);
  sub_25F4401DC(v2, v3, v4);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_25F43FDB4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x25F8DE260](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x25F8DE260](&v3, 8);
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

uint64_t sub_25F43FE40()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t type metadata accessor for SampleStreamAgent(uint64_t a1)
{
  result = qword_27FD6E8F0;
  if (!qword_27FD6E8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F43FEF4(uint64_t a1)
{
  result = type metadata accessor for MessageStream(319);
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

unint64_t sub_25F43FFC8()
{
  result = qword_27FD6E900;
  if (!qword_27FD6E900)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD6E900);
  }

  return result;
}

uint64_t sub_25F440014()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25F44004C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F4400C8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F440110(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F3FAD34;

  return sub_25F43FB34(a1, v4, v5, v6, v7, v8);
}

void sub_25F4401DC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_25F4401EC(void *a1, void *a2)
{
  v4 = v2[2];
  v3 = v2[3];
  v5 = v2[4];
  v6 = v5[1];
  *a2 = *v5;
  a2[1] = v6;
  *a1 = v4;
  a1[1] = v3;
}

uint64_t sub_25F440238(uint64_t a1, __int128 *a2)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v5) = *(a2 + 16);
  v8 = *a2;
  v9 = v5;
  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);
  sub_25F3F2708(&qword_27FD6E960, &qword_27FD6E948, &qword_25F4AB228, MEMORY[0x277D405D8]);
  sub_25F4A2660();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25F4403BC(uint64_t a1, __int128 *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E948, &qword_25F4AB228);

  return sub_25F440238(a1, a2);
}

uint64_t sub_25F440448@<X0>(void *a1@<X8>)
{
  v3 = sub_25F4A25E0();
  MEMORY[0x28223BE20](v3 - 8);
  result = LazyPropertyList.propertyList.getter(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E938, &unk_25F4AB210);
    sub_25F3F2708(&qword_27FD6E958, &qword_27FD6E938, &unk_25F4AB210, &unk_25F4B4524);
    result = sub_25F4A2950();
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_25F440558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F440640(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E980, &qword_25F4AB250) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F3F30B0;

  return sub_25F43F490(a1, v7, v8, v1 + v6, v10, v11);
}

uint64_t sub_25F440780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_34Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F4408E8()
{

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F440948()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6E9B8, &qword_25F4AB2A0);

  return sub_25F43C684();
}

uint64_t sub_25F440A1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F440A64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F440ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F440BC0(void *a1, void *a2)
{
  v4 = sub_25F4A2710();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25F4A2A70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[10] || a2[10])
  {
    sub_25F4A2A80();
    sub_25F4A2720();
    (*(v9 + 8))(v11, v8);
    v12 = a1[2];
    swift_getObjectType();
    v17 = v12;
    swift_unknownObjectRetain();
    sub_25F4A2700();
    sub_25F4A2690();
    v13 = *(v5 + 8);
    v13(v7, v4);
    swift_unknownObjectRelease();
    v14 = a2[2];
    swift_getObjectType();
    v17 = v14;
    swift_unknownObjectRetain();
    sub_25F4A2700();
    sub_25F4A2690();
    v13(v7, v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25F441250(a2);
    return sub_25F441250(a1);
  }
}

void *sub_25F440E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = swift_allocObject();
  result[9] = a8;
  result[10] = 0;
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  result[8] = a7;
  return result;
}

uint64_t sub_25F440F18(uint64_t a1)
{
  v3 = sub_25F4A2A70();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 80);
  if (v7)
  {
    v8 = *(v7 + 48);

    v8(a1, v7);
  }

  else
  {
    sub_25F4A2A80();
    sub_25F4A2720();
    return (*(v4 + 8))(v6, v3);
  }
}

void *sub_25F441088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = 0;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  v8[6] = a5;
  v8[7] = a6;
  v8[8] = a7;
  return v8;
}

uint64_t sub_25F4410A4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 32);

    MEMORY[0x25F8DD480](v2, v1);
    MEMORY[0x25F8DD480](8231, 0xE200000000000000);

    v3 = 39;
    v4 = 0xE100000000000000;
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  MEMORY[0x25F8DD480](v3, v4);

  MEMORY[0x25F8DD480](0x203D20657069705BLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EA58, &unk_25F4AB3B8);
  sub_25F4A3140();
  MEMORY[0x25F8DD480](93, 0xE100000000000000);

  MEMORY[0x25F8DD480](0, 0xE000000000000000);

  return 0x6E6F6974636E754ALL;
}

uint64_t sub_25F441250(uint64_t a1)
{
  *(v1 + 80) = a1;

  v3 = *(v1 + 64);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);

  v3(v4, v5, v1);
  swift_getObjectType();
  swift_unknownObjectRetain();

  sub_25F4A28F0();
  swift_unknownObjectRelease();
}

void *sub_25F44131C()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_25F44135C()
{
  sub_25F44131C();

  return MEMORY[0x2821FE8D8](v0, 88, 7);
}

uint64_t ServiceMessage.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ServiceMessage.identifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t ServiceMessage.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ServiceMessage(0) + 20);

  return sub_25F4414B8(v3, a1);
}

uint64_t sub_25F4414B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceMessage.Content(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ServiceMessage.content.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ServiceMessage(0) + 20);

  return sub_25F441580(a1, v3);
}

uint64_t sub_25F441580(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServiceMessage.Content(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ServiceMessage.description.getter()
{
  sub_25F4A30F0();
  MEMORY[0x25F8DD480](0xD000000000000010, 0x800000025F4B8060);
  if (v0[1])
  {
    v1 = *v0;
    v2 = v0[1];
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 11565;
  }

  MEMORY[0x25F8DD480](v1, v2);

  MEMORY[0x25F8DD480](8250, 0xE200000000000000);
  ServiceMessage.messageType.getter();
  sub_25F4A3140();
  MEMORY[0x25F8DD480](62, 0xE100000000000000);
  return 0;
}

uint64_t ServiceMessage.messageType.getter()
{
  v1 = type metadata accessor for ServiceMessage.Content(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ServiceMessage(0);
  sub_25F4414B8(v0 + *(v4 + 20), v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 3;
      break;
    case 2:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 4;
      break;
    case 3:
      result = 5;
      break;
    case 4:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 6;
      break;
    case 5:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 7;
      break;
    case 6:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 8;
      break;
    case 7:
      result = 9;
      break;
    case 8:
      result = 10;
      break;
    case 9:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 11;
      break;
    case 10:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 12;
      break;
    case 11:
      sub_25F442334(v3, type metadata accessor for ServiceMessage.Content);
      result = 13;
      break;
    case 12:
      return result;
    default:
      result = 1;
      break;
  }

  return result;
}

uint64_t ServiceMessage.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v66 = a1;
  updated = type metadata accessor for ShellUpdatePayload(0);
  MEMORY[0x28223BE20](updated);
  v4 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ForwardPayload(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_25F4A25E0();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v62 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v61 = &v61 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v61 - v16;
  v18 = type metadata accessor for ServiceMessage.Content(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for ServiceMessage(0) + 20);
  v65 = v1;
  sub_25F4414B8(v1 + v21, v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v39 = *(v20 + 7);
      v40 = *(v20 + 5);
      v87 = *(v20 + 6);
      v88 = v39;
      v41 = *(v20 + 7);
      v89 = *(v20 + 8);
      v42 = *(v20 + 3);
      v43 = *(v20 + 1);
      v83 = *(v20 + 2);
      v84 = v42;
      v44 = *(v20 + 3);
      v45 = *(v20 + 5);
      v85 = *(v20 + 4);
      v86 = v45;
      v46 = *(v20 + 1);
      v81 = *v20;
      v82 = v46;
      v47 = *(v20 + 168);
      v91 = *(v20 + 152);
      v92 = v47;
      v48 = *(v20 + 200);
      v93 = *(v20 + 184);
      v94 = v48;
      v77 = v87;
      v78 = v41;
      v79 = *(v20 + 8);
      v73 = v83;
      v74 = v44;
      v75 = v85;
      v76 = v40;
      v90 = v20[144];
      v80 = v20[144];
      v71 = v81;
      v72 = v43;
      sub_25F442498();
      v49 = v61;
      sub_25F4A2940();
      sub_25F4424EC(&v81);
      v67 = v91;
      v68 = v92;
      v69 = v93;
      v70 = v94;
      sub_25F44251C();
      v50 = v62;
      sub_25F4A2940();
      sub_25F442570(&v91);
      sub_25F4A2550();
      v51 = *(v63 + 8);
      v52 = v50;
      v53 = v64;
      v51(v52, v64);
      v51(v49, v53);
      goto LABEL_17;
    case 2u:
      v28 = *(v20 + 1);
      v29 = *(v20 + 2);
      v30 = *(v20 + 3);
      v31 = *(v20 + 4);
      v32 = *(v20 + 5);
      *&v81 = *v20;
      *(&v81 + 1) = v28;
      *&v82 = v29;
      *(&v82 + 1) = v30;
      *&v83 = v31;
      *(&v83 + 1) = v32;
      sub_25F442444();
      sub_25F4A2940();

      goto LABEL_16;
    case 3u:
    case 7u:
    case 8u:
      v22 = v20[32];
      v23 = *(v20 + 1);
      v81 = *v20;
      v82 = v23;
      LOBYTE(v83) = v22;
      sub_25F44228C();
      sub_25F4A2940();
      goto LABEL_17;
    case 4u:
      sub_25F442394(v20, v7, type metadata accessor for ForwardPayload);
      sub_25F4423FC(&qword_27FD6EAB0, type metadata accessor for ForwardPayload, &protocol conformance descriptor for ForwardPayload);
      sub_25F4A2940();
      sub_25F442334(v7, type metadata accessor for ForwardPayload);
      goto LABEL_17;
    case 5u:
      sub_25F442394(v20, v4, type metadata accessor for ShellUpdatePayload);
      sub_25F4423FC(&qword_27FD6EAA8, type metadata accessor for ShellUpdatePayload, &protocol conformance descriptor for ShellUpdatePayload);
      sub_25F4A2940();
      sub_25F442334(v4, type metadata accessor for ShellUpdatePayload);
      goto LABEL_17;
    case 6u:
      v57 = *(v20 + 1);
      v58 = *(v20 + 2);
      v59 = *(v20 + 3);
      LODWORD(v81) = *v20;
      *(&v81 + 1) = v57;
      *&v82 = v58;
      *(&v82 + 1) = v59;
      sub_25F4422E0();
      goto LABEL_15;
    case 9u:
      v26 = *(v20 + 1);
      v27 = v20[16];
      *&v81 = *v20;
      *(&v81 + 1) = v26;
      LOBYTE(v82) = v27;
      sub_25F442238();
LABEL_15:
      sub_25F4A2940();
      goto LABEL_16;
    case 0xAu:
      v54 = *(v20 + 1);
      v55 = *(v20 + 2);
      v56 = *(v20 + 3);
      *&v81 = *v20;
      *(&v81 + 1) = v54;
      *&v82 = v55;
      *(&v82 + 1) = v56;
      sub_25F4421E4();
      sub_25F4A2940();

      goto LABEL_16;
    case 0xBu:
      v24 = *(v20 + 1);
      v25 = *(v20 + 2);
      *&v81 = *v20;
      *(&v81 + 1) = v24;
      *&v82 = v25;
      sub_25F44213C();
      sub_25F4A2940();

LABEL_16:

      goto LABEL_17;
    case 0xCu:
      _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
LABEL_17:
      v38 = v65;
      break;
    default:
      v33 = *v20;
      v34 = v66;
      if (v33 == 2)
      {
        v36 = v63;
        v35 = v64;
        (*(v63 + 56))(v10, 1, 1, v64);
        _s19PreviewsMessagingOS24CanvasControlDescriptionV9ModifiersV17propertyListValue0a10FoundationC008PropertyI0Vvg_0();
        v37 = (*(v36 + 48))(v10, 1, v35);
        v38 = v65;
        if (v37 != 1)
        {
          sub_25F3F21F4(v10, &qword_27FD6DAA0, &qword_25F4A5550);
        }
      }

      else
      {
        LOBYTE(v81) = v33 & 1;
        sub_25F4425A0();
        sub_25F4A2940();
        v36 = v63;
        v35 = v64;
        (*(v63 + 56))(v10, 0, 1, v64);
        (*(v36 + 32))(v17, v10, v35);
        v38 = v65;
      }

      (*(v36 + 32))(v34, v17, v35);
      break;
  }

  v71 = *v38;
  *(&v82 + 1) = &type metadata for ServiceMessage.PayloadKey;
  *&v83 = sub_25F442190();
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(&v81);
}

unint64_t sub_25F44213C()
{
  result = qword_27FD6EA78;
  if (!qword_27FD6EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA78);
  }

  return result;
}

unint64_t sub_25F442190()
{
  result = qword_27FD6EA80;
  if (!qword_27FD6EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA80);
  }

  return result;
}

unint64_t sub_25F4421E4()
{
  result = qword_27FD6EA88;
  if (!qword_27FD6EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA88);
  }

  return result;
}

unint64_t sub_25F442238()
{
  result = qword_27FD6EA90;
  if (!qword_27FD6EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA90);
  }

  return result;
}

unint64_t sub_25F44228C()
{
  result = qword_27FD6EA98;
  if (!qword_27FD6EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EA98);
  }

  return result;
}

unint64_t sub_25F4422E0()
{
  result = qword_27FD6EAA0;
  if (!qword_27FD6EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAA0);
  }

  return result;
}

uint64_t sub_25F442334(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F442394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F4423FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F442444()
{
  result = qword_27FD6EAB8;
  if (!qword_27FD6EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAB8);
  }

  return result;
}

unint64_t sub_25F442498()
{
  result = qword_27FD6EAC0;
  if (!qword_27FD6EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAC0);
  }

  return result;
}

unint64_t sub_25F44251C()
{
  result = qword_27FD6EAC8;
  if (!qword_27FD6EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAC8);
  }

  return result;
}

unint64_t sub_25F4425A0()
{
  result = qword_27FD6EAD0;
  if (!qword_27FD6EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAD0);
  }

  return result;
}

uint64_t sub_25F4425F4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x64616F6C796170;
  }

  else
  {
    v3 = 0x546567617373656DLL;
  }

  if (v2)
  {
    v4 = 0xEB00000000657079;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x64616F6C796170;
  }

  else
  {
    v5 = 0x546567617373656DLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB00000000657079;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F4426A4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F442730(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4427A8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44283C(uint64_t *a1@<X8>)
{
  v2 = 0x546567617373656DLL;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xEB00000000657079;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F442884()
{
  if (*v0)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 0x546567617373656DLL;
  }
}

uint64_t sub_25F4428C8()
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F44293C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();
  return sub_25F4A3350();
}

uint64_t sub_25F442A14()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18[-v1];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6ED98, &qword_25F4AD588);
  v4 = v3 - 8;
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = ServiceMessage.messageType.getter();
  v11 = *(v4 + 56);
  *v9 = 1;
  ServiceMessage.payload.getter(&v9[v11]);
  v18[15] = 0;
  v18[14] = v10;
  sub_25F404B8C(v9, v7, &qword_27FD6ED98, &qword_25F4AD588);
  v12 = *v7;
  v13 = *(v4 + 56);
  v14 = sub_25F4A25E0();
  v15 = *(v14 - 8);
  (*(v15 + 32))(v2, &v7[v13], v14);
  (*(v15 + 56))(v2, 0, 1, v14);
  v18[13] = v12;
  sub_25F442E0C();
  sub_25F442E60();
  v16 = sub_25F4A28D0();
  sub_25F3F21F4(v2, &qword_27FD6DAA0, &qword_25F4A5550);
  sub_25F3F21F4(v9, &qword_27FD6ED98, &qword_25F4AD588);
  return v16;
}

uint64_t ServiceMessage.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &type metadata for ServiceMessage.Key;
  v9 = sub_25F442E0C();
  v15 = v9;
  LOBYTE(v13[0]) = 0;
  sub_25F442E60();
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v10 = v16;
    v14 = &type metadata for ServiceMessage.Key;
    v15 = v9;
    LOBYTE(v13[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v13);
    ServiceMessage.init(messageType:payload:)(v10, v8, a2);
    return (*(v6 + 8))(a1, v5);
  }
}

unint64_t sub_25F442E0C()
{
  result = qword_27FD6EAD8;
  if (!qword_27FD6EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAD8);
  }

  return result;
}

unint64_t sub_25F442E60()
{
  result = qword_27FD6EAE0;
  if (!qword_27FD6EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAE0);
  }

  return result;
}

uint64_t ServiceMessage.init(messageType:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v143 = a1;
  v148 = a3;
  v4 = sub_25F4A25E0();
  v149 = *(v4 - 8);
  v150 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v136 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v147 = &v121 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v146 = &v121 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v145 = &v121 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v144 = &v121 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v139 = &v121 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v134 = &v121 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v121 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v142 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v138 = &v121 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v121 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v141 = &v121 - v28;
  MEMORY[0x28223BE20](v27);
  v140 = &v121 - v29;
  v137 = type metadata accessor for ServiceMessage.Content(0);
  v30 = MEMORY[0x28223BE20](v137);
  v132 = (&v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v30);
  v131 = (&v121 - v33);
  v34 = MEMORY[0x28223BE20](v32);
  v130 = (&v121 - v35);
  v36 = MEMORY[0x28223BE20](v34);
  v129 = (&v121 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v128 = (&v121 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v42 = &v121 - v41;
  v43 = MEMORY[0x28223BE20](v40);
  v45 = &v121 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = &v121 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = &v121 - v50;
  v52 = MEMORY[0x28223BE20](v49);
  v54 = &v121 - v53;
  v55 = MEMORY[0x28223BE20](v52);
  v57 = &v121 - v56;
  MEMORY[0x28223BE20](v55);
  v59 = &v121 - v58;
  *(&v151[1] + 1) = &type metadata for ServiceMessage.PayloadKey;
  *&v152 = sub_25F442190();
  v60 = v180;
  sub_25F4A2580();
  v180 = v60;
  if (v60)
  {
    (*(v149 + 8))(a2, v150);
    return __swift_destroy_boxed_opaque_existential_1(v151);
  }

  else
  {
    v122 = v54;
    v123 = v51;
    v125 = v59;
    v126 = v48;
    v124 = v42;
    v127 = v45;
    v63 = v138;
    v62 = v139;
    v121 = v57;
    v65 = v148;
    v64 = v149;
    v66 = v143;
    __swift_destroy_boxed_opaque_existential_1(v151);
    v67 = *(&v170 + 1);
    *v65 = v170;
    v65[1] = v67;
    switch(v66)
    {
      case 1:
        v91 = a2;
        v92 = v150;
        (*(v64 + 16))(v140, a2, v150);
        sub_25F4425A0();
        v93 = v180;
        sub_25F4A2950();
        if (v93)
        {

          v94 = 2;
        }

        else
        {
          v94 = v151[0];
        }

        v109 = v148;
        v110 = v125;
        (*(v64 + 8))(v91, v92);
        *v110 = v94;
        swift_storeEnumTagMultiPayload();
        v111 = type metadata accessor for ServiceMessage(0);
        return sub_25F442394(v110, v109 + *(v111 + 20), type metadata accessor for ServiceMessage.Content);
      case 2:
      case 3:
        v68 = v64;
        v69 = *(v64 + 16);
        v70 = v150;
        v69(v141, a2, v150);
        sub_25F442498();
        v71 = v180;
        sub_25F4A2950();
        if (v71)
        {
          goto LABEL_18;
        }

        v166 = v176;
        v167 = v177;
        v168 = v178;
        v169 = v179;
        v162 = v172;
        v163 = v173;
        v164 = v174;
        v165 = v175;
        v160 = v170;
        v161 = v171;
        v69(v133, a2, v70);
        sub_25F44251C();
        sub_25F4A2950();
        (*(v68 + 8))(a2, v70);
        *(v159 + 8) = v159[5];
        *(&v159[1] + 8) = v159[6];
        *(&v159[2] + 8) = v159[7];
        *(&v159[3] + 8) = v159[8];
        v156 = v166;
        v157 = v167;
        v158 = v168;
        LOBYTE(v159[0]) = v169;
        v152 = v162;
        v153 = v163;
        v154 = v164;
        v155 = v165;
        v151[0] = v160;
        v151[1] = v161;
        v114 = v159[2];
        v79 = v121;
        *(v121 + 10) = v159[1];
        *(v79 + 176) = v114;
        *(v79 + 192) = v159[3];
        *(v79 + 208) = *&v159[4];
        v115 = v157;
        *(v79 + 96) = v156;
        *(v79 + 112) = v115;
        v116 = v159[0];
        *(v79 + 128) = v158;
        *(v79 + 144) = v116;
        v117 = v153;
        *(v79 + 32) = v152;
        *(v79 + 48) = v117;
        v118 = v155;
        *(v79 + 64) = v154;
        *(v79 + 80) = v118;
        v119 = v151[1];
        *v79 = v151[0];
        *(v79 + 16) = v119;
        goto LABEL_36;
      case 4:
        v72 = v64;
        v80 = *(v64 + 16);
        v81 = v63;
        v74 = a2;
        v75 = v150;
        v80(v81, a2, v150);
        sub_25F442444();
        v82 = v180;
        sub_25F4A2950();
        if (v82)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v83 = v151[1];
        v79 = v122;
        *v122 = v151[0];
        *(v79 + 16) = v83;
        *(v79 + 32) = v152;
        goto LABEL_36;
      case 5:
        v72 = v64;
        v96 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v96(v142, a2, v150);
        sub_25F44228C();
        v97 = v180;
        sub_25F4A2950();
        if (v97)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v98 = v152;
        v99 = v151[1];
        v79 = v123;
        *v123 = v151[0];
        *(v79 + 16) = v99;
        *(v79 + 32) = v98;
        goto LABEL_36;
      case 6:
        type metadata accessor for ForwardPayload(0);
        v70 = v150;
        (*(v64 + 16))(v135, a2, v150);
        sub_25F4423FC(&qword_27FD6EAB0, type metadata accessor for ForwardPayload, &protocol conformance descriptor for ForwardPayload);
        v79 = v126;
        v102 = v180;
        sub_25F4A2950();
        if (!v102)
        {
          goto LABEL_33;
        }

        (*(v64 + 8))(a2, v70);
        goto LABEL_25;
      case 7:
        type metadata accessor for ShellUpdatePayload(0);
        v68 = v64;
        v70 = v150;
        (*(v64 + 16))(v134, a2, v150);
        sub_25F4423FC(&qword_27FD6EAA8, type metadata accessor for ShellUpdatePayload, &protocol conformance descriptor for ShellUpdatePayload);
        v79 = v127;
        v95 = v180;
        sub_25F4A2950();
        if (!v95)
        {
LABEL_33:
          (*(v64 + 8))(a2, v70);
          goto LABEL_36;
        }

LABEL_18:
        (*(v68 + 8))(a2, v70);
LABEL_25:

        break;
      case 8:
        v72 = v64;
        v107 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v107(v62, a2, v150);
        sub_25F4422E0();
        v108 = v180;
        sub_25F4A2950();
        if (v108)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v112 = *(v151 + 8);
        v113 = *(&v151[1] + 1);
        v79 = v124;
        *v124 = v151[0];
        *(v79 + 8) = v112;
        *(v79 + 24) = v113;
        goto LABEL_36;
      case 9:
        v72 = v64;
        v87 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v87(v144, a2, v150);
        sub_25F44228C();
        v88 = v180;
        sub_25F4A2950();
        if (v88)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v89 = v152;
        v90 = v151[1];
        v79 = v128;
        *v128 = v151[0];
        *(v79 + 16) = v90;
        *(v79 + 32) = v89;
        goto LABEL_36;
      case 10:
        v72 = v64;
        v103 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v103(v145, a2, v150);
        sub_25F44228C();
        v104 = v180;
        sub_25F4A2950();
        if (v104)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v105 = v152;
        v106 = v151[1];
        v79 = v129;
        *v129 = v151[0];
        *(v79 + 16) = v106;
        *(v79 + 32) = v105;
        goto LABEL_36;
      case 11:
        v72 = v64;
        v73 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v73(v146, a2, v150);
        sub_25F442238();
        v76 = v180;
        sub_25F4A2950();
        if (v76)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v77 = *(&v151[0] + 1);
        v78 = v151[1];
        v79 = v130;
        *v130 = *&v151[0];
        *(v79 + 8) = v77;
        *(v79 + 16) = v78;
        goto LABEL_36;
      case 12:
        v72 = v64;
        v84 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v84(v147, a2, v150);
        sub_25F4421E4();
        v85 = v180;
        sub_25F4A2950();
        if (v85)
        {
          goto LABEL_29;
        }

        (*(v72 + 8))(a2, v75);
        v86 = *(&v151[0] + 1);
        v79 = v131;
        *v131 = *&v151[0];
        *(v79 + 8) = v86;
        *(v79 + 16) = v151[1];
        goto LABEL_36;
      case 13:
        v72 = v64;
        v100 = *(v64 + 16);
        v74 = a2;
        v75 = v150;
        v100(v136, a2, v150);
        sub_25F44213C();
        v101 = v180;
        sub_25F4A2950();
        if (v101)
        {
LABEL_29:
          (*(v72 + 8))(v74, v75);
        }

        else
        {
          (*(v72 + 8))(a2, v75);
          v79 = v132;
          *v132 = *&v151[0];
          *(v79 + 8) = *(v151 + 8);
LABEL_36:
          swift_storeEnumTagMultiPayload();
          v120 = type metadata accessor for ServiceMessage(0);
          result = sub_25F442394(v79, v148 + *(v120 + 20), type metadata accessor for ServiceMessage.Content);
        }

        break;
      default:
        (*(v64 + 8))(a2, v150);
        type metadata accessor for ServiceMessage(0);
        return swift_storeEnumTagMultiPayload();
    }
  }

  return result;
}

uint64_t ServiceMessage.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_25F44F2F0();
  a2[1] = v4;
  v5 = type metadata accessor for ServiceMessage(0);
  return sub_25F442394(a1, a2 + *(v5 + 20), type metadata accessor for ServiceMessage.Content);
}

unint64_t ServiceMessage.MessageType.rawValue.getter(char a1)
{
  result = 1735289200;
  switch(a1)
  {
    case 1:
      result = 0x696C696261706163;
      break;
    case 2:
      result = 0x68636E75616CLL;
      break;
    case 3:
      result = 0x68636E75616C6572;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7463656E6E6F63;
      break;
    case 6:
      result = 0x64726177726F66;
      break;
    case 7:
      result = 0x657461647075;
      break;
    case 8:
      result = 0x70556C65636E6163;
      break;
    case 9:
      result = 1886352499;
      break;
    case 10:
      result = 1819044203;
      break;
    case 11:
      result = 0x6567727570;
      break;
    case 12:
      result = 0x73746E6169726176;
      break;
    case 13:
      result = 0x4F746E65746E6F63;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_25F444084@<X0>(Swift::String *a1@<X0>, PreviewsMessagingOS::ServiceMessage::MessageType_optional *a2@<X8>)
{
  result = _s19PreviewsMessagingOS14ServiceMessageV0E4TypeO8rawValueAESgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

unint64_t sub_25F4440B4@<X0>(unint64_t *a1@<X8>)
{
  result = ServiceMessage.MessageType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F4440E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F45205C();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4441A4()
{
  result = sub_25F4A2A90();
  qword_27FD6EA60 = result;
  return result;
}

void *sub_25F4441DC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = (*result)++;
  *a2 = v2;
  return result;
}

PreviewsMessagingOS::OSCapabilities __swiftcall OSCapabilities.init(supportsExecutionPoints:supportsPreviewVariants:supportsContentOverrides:supportsScreenshotRequests:supportsNSPreviewHostableMacPreviews:supportsNSPreviewHostableCatalystPreviews:supportsPerUpdateMessageStreams:supportsRegistryPreviews:supportsExternalRegistries:supportsUpdateCancelation:jitCapabilities:)(Swift::Bool supportsExecutionPoints, Swift::Bool supportsPreviewVariants, Swift::Bool supportsContentOverrides, Swift::Bool supportsScreenshotRequests, Swift::Bool supportsNSPreviewHostableMacPreviews, Swift::Bool supportsNSPreviewHostableCatalystPreviews, Swift::Bool supportsPerUpdateMessageStreams, Swift::Bool supportsRegistryPreviews, Swift::Bool supportsExternalRegistries, Swift::Bool supportsUpdateCancelation, PreviewsMessagingOS::JITCapabilities jitCapabilities)
{
  *v11 = supportsExecutionPoints;
  v11[1] = supportsPreviewVariants;
  v11[2] = supportsContentOverrides;
  v11[3] = supportsScreenshotRequests;
  v11[4] = supportsNSPreviewHostableMacPreviews;
  v11[5] = supportsNSPreviewHostableCatalystPreviews;
  v11[6] = supportsPerUpdateMessageStreams;
  v11[7] = supportsRegistryPreviews;
  v11[8] = supportsExternalRegistries;
  v11[9] = supportsUpdateCancelation;
  v11[10] = jitCapabilities.supportsJITLinking;
  v11[11] = jitCapabilities.supportsLoadCommands;
  result.supportsExternalRegistries = supportsPreviewVariants;
  result.supportsExecutionPoints = supportsExecutionPoints;
  return result;
}

uint64_t static OSCapabilities.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD6D380 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_27FD6EA68;
  *(a1 + 8) = dword_27FD6EA70;
  return result;
}

uint64_t OSCapabilities.jitCapabilities.getter()
{
  if (*(v0 + 11))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  return v1 | *(v0 + 10);
}

uint64_t OSCapabilities.jitCapabilities.setter(uint64_t result)
{
  *(v1 + 10) = result & 1;
  *(v1 + 11) = BYTE1(result) & 1;
  return result;
}

unint64_t sub_25F4444EC(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v4 = 0xD00000000000001ALL;
    if (a1 != 3)
    {
      v4 = 0xD000000000000024;
    }

    if (a1 == 2)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = v4;
    }

    if (a1 <= 1u)
    {
      return 0xD000000000000017;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x626170614374696ALL;
    if (a1 == 9)
    {
      v1 = 0xD000000000000019;
    }

    if (a1 == 8)
    {
      v1 = 0xD00000000000001ALL;
    }

    if (a1 == 6)
    {
      v2 = 0xD00000000000001FLL;
    }

    else
    {
      v2 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v2 = 0xD000000000000029;
    }

    if (a1 <= 7u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_25F4446C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F44FC00(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F4446F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F4444EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F444784()
{
  sub_25F4521AC();
  sub_25F452200();
  return sub_25F4A2840();
}

uint64_t OSCapabilities.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_27FD6D380 != -1)
  {
    swift_once();
  }

  v19 = qword_27FD6EA68;
  v20 = dword_27FD6EA70;
  KeyPath = swift_getKeyPath();
  sub_25F444CA8(KeyPath, a1, 0);
  if (v2)
  {
    v16 = sub_25F4A25E0();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  else
  {

    v6 = swift_getKeyPath();
    sub_25F444CA8(v6, a1, 1);

    v7 = swift_getKeyPath();
    sub_25F444CA8(v7, a1, 2);

    v8 = swift_getKeyPath();
    sub_25F444CA8(v8, a1, 3);

    v9 = swift_getKeyPath();
    sub_25F444CA8(v9, a1, 4);

    v10 = swift_getKeyPath();
    sub_25F444CA8(v10, a1, 5);

    v11 = swift_getKeyPath();
    sub_25F444CA8(v11, a1, 6);

    v12 = swift_getKeyPath();
    sub_25F444CA8(v12, a1, 7);

    v13 = swift_getKeyPath();
    sub_25F444CA8(v13, a1, 8);

    v14 = swift_getKeyPath();
    sub_25F444CA8(v14, a1, 9);

    v15 = swift_getKeyPath();
    sub_25F444D64(v15, a1, 10);
    v17 = sub_25F4A25E0();
    (*(*(v17 - 8) + 8))(a1, v17);

    *a2 = v19;
    *(a2 + 8) = v20;
  }

  return result;
}

uint64_t sub_25F444CA8(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for OSCapabilities.Key;
  v6[4] = sub_25F4521AC();
  LOBYTE(v6[0]) = a3;
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOBYTE(v6[0]) = v7 & 1;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t sub_25F444D64(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for OSCapabilities.Key;
  v6[4] = sub_25F4521AC();
  LOBYTE(v6[0]) = a3;
  sub_25F452200();
  sub_25F4A2580();
  result = __swift_destroy_boxed_opaque_existential_1(v6);
  if (!v3 && v7 != 2)
  {
    LOWORD(v6[0]) = v7 & 0x101;
    return swift_setAtWritableKeyPath();
  }

  return result;
}

uint64_t AgentDescriptor.idAcrossRelaunches.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AgentDescriptor.idAcrossRelaunches.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentDescriptor.bundle.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v4 = v1[4];
  v3 = v1[5];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v3;
}

__n128 AgentDescriptor.bundle.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  v1[2].n128_u64[1] = v3;
  return result;
}

void __swiftcall AgentDescriptor.init(idAcrossRelaunches:bundle:)(PreviewsMessagingOS::AgentDescriptor *__return_ptr retstr, Swift::String idAcrossRelaunches, PreviewsMessagingOS::AgentDescriptor::Bundle bundle)
{
  v3 = *bundle.bundleID._countAndFlagsBits;
  v4 = *(bundle.bundleID._countAndFlagsBits + 8);
  retstr->idAcrossRelaunches = idAcrossRelaunches;
  retstr->bundle.bundleID._countAndFlagsBits = v3;
  retstr->bundle.bundleID._object = v4;
  retstr->bundle.path = *(bundle.bundleID._countAndFlagsBits + 16);
}

uint64_t sub_25F445004(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C646E7562;
  }

  else
  {
    v3 = 0xD000000000000012;
  }

  if (v2)
  {
    v4 = 0x800000025F4B64A0;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C646E7562;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0x800000025F4B64A0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F4450AC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F445130(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F4451A0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44522C(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B64A0;
  v3 = 0xD000000000000012;
  if (*v1)
  {
    v3 = 0x656C646E7562;
    v2 = 0xE600000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F44526C()
{
  if (*v0)
  {
    return 0x656C646E7562;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t AgentDescriptor.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v11 = *v0;
  v12 = v5;
  v13 = v0[2];
  v8 = &v11;
  sub_25F4A25A0();
  v9 = v12;
  v10 = v13;
  sub_25F44F534();
  sub_25F4A2940();
  sub_25F4A2540();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_25F4453D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 2);
  v13[0] = *(a1 + 1);
  v13[1] = v3;
  v12 = 0;
  v10 = v1;
  v11 = v2;
  v9 = 1;
  v7 = v13[0];
  v8 = v3;

  sub_25F4520E8(v13, v6);
  sub_25F44F588();
  sub_25F44F534();
  v4 = sub_25F4A28D0();
  sub_25F403404(v7, *(&v7 + 1), v8, *(&v8 + 1));

  return v4;
}

void AgentDescriptor.init(propertyListValue:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v18 + 1) = &type metadata for AgentDescriptor.Key;
  v9 = sub_25F44F588();
  v19 = v9;
  LOBYTE(v17[0]) = 0;
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v2)
  {
    (*(v6 + 16))(v8, a1, v5);
    sub_25F44F534();
    sub_25F4A2950();
    (*(v6 + 8))(a1, v5);

    v10 = 0;
    v11 = v17[0];
    v12 = v17[1];
    v13 = 0xE000000000000000;
    v14 = v18;
  }

  else
  {
    v15[0] = v20;
    v22 = v21;
    *(&v18 + 1) = &type metadata for AgentDescriptor.Key;
    v19 = v9;
    LOBYTE(v17[0]) = 1;
    sub_25F44F534();
    sub_25F4A2530();
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v11 = v15[1];
    v12 = v15[2];
    v14 = v16;
    v10 = v15[0];
    v13 = v22;
  }

  *a2 = v10;
  *(a2 + 8) = v13;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
}

uint64_t static AgentDescriptor.Bundle.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25F4A3270() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AgentDescriptor.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_25F4A2C60();
  sub_25F4A2C60();
  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t AgentDescriptor.hashValue.getter()
{
  v1 = *(v0 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4458F0()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v11 = *v0;
  v12 = v5;
  v13 = v0[2];
  v8 = &v11;
  sub_25F4A25A0();
  v9 = v12;
  v10 = v13;
  sub_25F44F534();
  sub_25F4A2940();
  sub_25F4A2540();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_25F445A38()
{
  v1 = *(v0 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F445AE0(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_25F4A2C60();
  sub_25F4A2C60();
  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F445B7C(uint64_t a1)
{
  v2 = *(v1 + 40);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t AgentDescriptor.bundleID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AgentDescriptor.path.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AgentDescriptor.description.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](58, 0xE100000000000000);

  if (v4)
  {
    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v4);
  }

  MEMORY[0x25F8DD480](v2, v1);

  return 0;
}

uint64_t sub_25F445D40()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  MEMORY[0x25F8DD480](*v0, v0[1]);
  MEMORY[0x25F8DD480](58, 0xE100000000000000);

  if (v4)
  {
    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v4);
  }

  MEMORY[0x25F8DD480](v2, v1);

  return 0;
}

uint64_t AgentDescriptor.Bundle.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AgentDescriptor.Bundle.bundleID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t AgentDescriptor.Bundle.path.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AgentDescriptor.Bundle.path.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

PreviewsMessagingOS::AgentDescriptor::Bundle __swiftcall AgentDescriptor.Bundle.init(bundleID:path:)(Swift::String bundleID, Swift::String_optional path)
{
  v2->value = bundleID;
  v2[1] = path;
  result.path = path;
  result.bundleID = bundleID;
  return result;
}

uint64_t sub_25F445F18(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1752457584;
  if (v2 != 1)
  {
    v4 = 0x696D697263736964;
    v3 = 0xEC000000746E616ELL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1752457584;
  if (*a2 != 1)
  {
    v8 = 0x696D697263736964;
    v7 = 0xEC000000746E616ELL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44601C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4460C0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F446150(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F4461F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F44FC4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F446220(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE400000000000000;
  v5 = 1752457584;
  if (v2 != 1)
  {
    v5 = 0x696D697263736964;
    v4 = 0xEC000000746E616ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x4449656C646E7562;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F446280()
{
  v1 = 1752457584;
  if (*v0 != 1)
  {
    v1 = 0x696D697263736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_25F4462DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x42646E4168746170;
  }

  else
  {
    v3 = 0x4449656C646E7562;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEF4449656C646E75;
  }

  if (*a2)
  {
    v5 = 0x42646E4168746170;
  }

  else
  {
    v5 = 0x4449656C646E7562;
  }

  if (*a2)
  {
    v6 = 0xEF4449656C646E75;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F446390()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F446420(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44649C(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F446534(uint64_t *a1@<X8>)
{
  v2 = 0x4449656C646E7562;
  if (*v1)
  {
    v2 = 0x42646E4168746170;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEF4449656C646E75;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F446580(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F452324();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F44665C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F44F5E8();
  sub_25F452158();
  return sub_25F4A28C0();
}

uint64_t AgentDescriptor.Bundle.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for AgentDescriptor.Bundle.Key;
  v5 = sub_25F44F5E8();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for AgentDescriptor.Bundle.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11;
  }

  return result;
}

uint64_t AgentDescriptor.Bundle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25F4A2C60();
  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t AgentDescriptor.Bundle.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F4469DC()
{
  v1 = *(v0 + 24);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v1)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F446A68(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25F4A2C60();
  if (!v2)
  {
    return sub_25F4A3320();
  }

  sub_25F4A3320();

  return sub_25F4A2C60();
}

uint64_t sub_25F446AE4(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_25F4A3300();
  sub_25F4A2C60();
  sub_25F4A3320();
  if (v2)
  {
    sub_25F4A2C60();
  }

  return sub_25F4A3350();
}

uint64_t sub_25F446B6C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_25F4A3270(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_25F4A3270() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t AgentDescriptor.Bundle.fileURL.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 24))
  {

    sub_25F4A1FF0();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_25F4A2040();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t AgentDescriptor.Bundle.description.getter()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v2);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t AgentDescriptor.Bundle.missingPathError.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  a1[3] = &type metadata for AgentDescriptor.Bundle.MissingPathError;
  a1[4] = sub_25F44F63C();
  *a1 = v4;
  a1[1] = v3;
}

unint64_t sub_25F446DB4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F4A30F0();

  MEMORY[0x25F8DD480](v1, v2);
  return 0xD000000000000011;
}

uint64_t sub_25F446E30(uint64_t a1)
{
  v2 = sub_25F44F63C();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F446E6C(uint64_t a1)
{
  v2 = sub_25F44F63C();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F446EA8()
{
  v1 = *v0;
  v2 = v0[3];
  if (v2)
  {
    v3 = v0[2];
    v5 = *v0;

    MEMORY[0x25F8DD480](58, 0xE100000000000000);
    MEMORY[0x25F8DD480](v3, v2);
    return v5;
  }

  else
  {
  }

  return v1;
}

uint64_t PreviewAgentRole.description.getter()
{
  v1 = 0x20676E696E6E7552;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657250;
  }
}

PreviewsMessagingOS::PreviewAgentRole_optional __swiftcall PreviewAgentRole.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PreviewAgentRole.rawValue.getter()
{
  v1 = 0x41676E696E6E7572;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747865;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657270;
  }
}

uint64_t sub_25F447050(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x41676E696E6E7572;
  v4 = 0xEA00000000007070;
  if (v2 != 1)
  {
    v3 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7377656976657270;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x41676E696E6E7572;
  v8 = 0xEA00000000007070;
  if (*a2 != 1)
  {
    v7 = 0x6C616E7265747865;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7377656976657270;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44715C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F447204(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F447298(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F447348(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007070;
  v5 = 0x41676E696E6E7572;
  if (v2 != 1)
  {
    v5 = 0x6C616E7265747865;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7377656976657270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F4473AC()
{
  v1 = 0x20676E696E6E7552;
  if (*v0 != 1)
  {
    v1 = 0x6C616E7265747845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7377656976657250;
  }
}

uint64_t sub_25F447410(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451F40();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t PreviewAgentBootstrapMode.description.getter(char a1)
{
  if (a1)
  {
    return 0x636578452054494ALL;
  }

  else
  {
    return 0x6E6942206C6C7546;
  }
}

PreviewsMessagingOS::PreviewAgentBootstrapMode_optional __swiftcall PreviewAgentBootstrapMode.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_25F4A3170();

  if (v1 == 1)
  {
    v2.value = PreviewsMessagingOS_PreviewAgentBootstrapMode_jitExecutor;
  }

  else
  {
    v2.value = PreviewsMessagingOS_PreviewAgentBootstrapMode_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t PreviewAgentBootstrapMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x756365784574696ALL;
  }

  else
  {
    return 0x616E69426C6C7566;
  }
}

uint64_t sub_25F4475B4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x756365784574696ALL;
  }

  else
  {
    v3 = 0x616E69426C6C7566;
  }

  if (v2)
  {
    v4 = 0xEA00000000007972;
  }

  else
  {
    v4 = 0xEB00000000726F74;
  }

  if (*a2)
  {
    v5 = 0x756365784574696ALL;
  }

  else
  {
    v5 = 0x616E69426C6C7566;
  }

  if (*a2)
  {
    v6 = 0xEB00000000726F74;
  }

  else
  {
    v6 = 0xEA00000000007972;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F447668()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4476F8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F447774(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44780C(uint64_t *a1@<X8>)
{
  v2 = 0x616E69426C6C7566;
  if (*v1)
  {
    v2 = 0x756365784574696ALL;
  }

  v3 = 0xEA00000000007972;
  if (*v1)
  {
    v3 = 0xEB00000000726F74;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F447858()
{
  if (*v0)
  {
    return 0x636578452054494ALL;
  }

  else
  {
    return 0x6E6942206C6C7546;
  }
}

uint64_t sub_25F4478A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451EEC();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

PreviewsMessagingOS::CapabilitiesPayload __swiftcall CapabilitiesPayload.init()()
{
  v1 = v0;
  result.isRunningInXTP = sub_25F4A2A10();
  *v1 = result.isRunningInXTP;
  return result;
}

uint64_t LaunchPayload.workspaceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LaunchPayload.workspaceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t LaunchPayload.agentDescriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v5 = v1[7];
  *a1 = v1[2];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 LaunchPayload.agentDescriptor.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *(v1 + 16) = v6;
  *(v1 + 32) = v5;
  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  return result;
}

uint64_t LaunchPayload.environment.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t LaunchPayload.arguments.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

double LaunchPayload.binaryType.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 92);
  *a1 = result;
  return result;
}

double LaunchPayload.binaryType.setter(double *a1)
{
  result = *a1;
  *(v1 + 92) = *a1;
  return result;
}

uint64_t LaunchPayload.targetDescriptions.setter(uint64_t a1)
{

  *(v1 + 104) = a1;
  return result;
}

__n128 LaunchPayload.hostAuditToken.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  result = *(v1 + 112);
  v4 = *(v1 + 128);
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

__n128 LaunchPayload.hostAuditToken.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = v3;
  *(v1 + 144) = *(a1 + 32);
  return result;
}

__n128 LaunchPayload.init(workspaceID:agentDescriptor:agentRole:agentBootstrapMode:environment:arguments:processType:binaryType:targetDescriptions:hostAuditToken:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, void *a10, uint64_t a11, uint64_t a12)
{
  v12 = *a3;
  v13 = *(a3 + 2);
  v14 = *(a3 + 3);
  v15 = *a4;
  v16 = *a8;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v12;
  *(a9 + 32) = v13;
  *(a9 + 40) = v14;
  *(a9 + 48) = a3[2];
  *(a9 + 64) = v15;
  *(a9 + 65) = a5 & 1;
  *(a9 + 72) = a6;
  *(a9 + 80) = a7;
  *(a9 + 88) = v16;
  *(a9 + 92) = *a10;
  *(a9 + 104) = a11;
  result = *a12;
  v18 = *(a12 + 16);
  *(a9 + 112) = *a12;
  *(a9 + 128) = v18;
  *(a9 + 144) = *(a12 + 32);
  return result;
}

unint64_t sub_25F447DB4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636170736B726F77;
    v7 = 0x6C6F52746E656761;
    v8 = 0xD000000000000012;
    if (a1 != 3)
    {
      v8 = 0x6D6E6F7269766E65;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656449746E656761;
    }

    if (a1 <= 1u)
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
    v1 = 0xD000000000000012;
    v2 = 0x736544746E656761;
    if (a1 != 9)
    {
      v2 = 0x6964754174736F68;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x746E656D75677261;
    v4 = 0x54737365636F7270;
    if (a1 != 6)
    {
      v4 = 0x79547972616E6962;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25F447F7C(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = *a2;
  v7 = a5(*a1);
  v9 = v8;
  if (v7 == a5(v6) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_25F4A3270();
  }

  return v12 & 1;
}

uint64_t sub_25F448028(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *v3;
  sub_25F4A3300();
  a3(v5);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4480AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  (a4)(*v4, a2, a3);
  sub_25F4A2C60();
}

uint64_t sub_25F44811C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = *v4;
  sub_25F4A3300();
  a4(v6);
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F448184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F44FC98(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F4481B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F447DB4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F448258(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(a1 + 2);
  v45[0] = *(a1 + 1);
  v45[1] = v3;
  v46 = *(a1 + 3);
  v47[0] = v3;
  v47[1] = v46;
  v4 = *(a1 + 64);
  v5 = *(a1 + 65);
  v6 = a1[9];
  v7 = a1[10];
  v8 = *(a1 + 88);
  v9 = *(a1 + 92);
  v10 = a1[13];
  v11 = *(a1 + 144);
  v44 = 0;
  v42 = v2;
  v43 = v1;
  v41 = 1;
  v39 = v3;
  v40 = v46;
  v38 = 9;
  v35 = v45[0];
  v36 = v3;
  v37 = v46;
  v34 = 2;
  v33 = v4;
  v32 = 3;
  v31 = v5;
  v30 = 4;
  v29 = v6;
  v28 = 5;
  v27 = v7;
  v26 = 6;
  v25 = v8;
  v24 = 7;
  v22 = v9;
  v23 = 0;
  v21 = 8;
  v20 = v10;
  v19 = 10;
  v12 = *(a1 + 8);
  v16 = *(a1 + 7);
  v17 = v12;
  v18 = v11 & 1;

  sub_25F452120(v45, v15);
  sub_25F4520E8(v47, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
  type metadata accessor for audit_token_t(0);
  sub_25F44F698();
  sub_25F44F534();
  sub_25F44F6EC();
  sub_25F44F740();
  sub_25F44F794();
  sub_25F44F7E8();
  sub_25F41A91C();
  sub_25F44F870();
  sub_25F44F8C4();
  sub_25F4502D8(&qword_27FD6DA08, &qword_27FD6DA00, &qword_25F4A5350, sub_25F3FC25C);
  v13 = sub_25F4A2840();
  sub_25F3E4814(v35, *(&v35 + 1), v36, *(&v36 + 1), v37, *(&v37 + 1));
  sub_25F403404(v39, *(&v39 + 1), v40, *(&v40 + 1));

  return v13;
}

uint64_t LaunchPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(&v29 + 1) = &type metadata for LaunchPayload.Key;
  v5 = sub_25F44F698();
  v30 = v5;
  LOBYTE(v28) = 9;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(&v28);
    *(&v29 + 1) = &type metadata for LaunchPayload.Key;
    v30 = v5;
    LOBYTE(v28) = 1;
    sub_25F4A2530();
  }

  __swift_destroy_boxed_opaque_existential_1(&v28);
  v6 = v31[1];
  v7 = v32;
  v20 = v31[2];
  v21 = v31[0];
  v8 = v34;
  v19 = v33;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 0;
  sub_25F4A2530();
  v18 = v7;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 2;
  sub_25F44F740();
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (v28 == 3)
  {
    v9 = 0;
  }

  else
  {
    v9 = v28;
  }

  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 3;
  sub_25F44F794();
  sub_25F4A2580();
  v17 = v9;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v10 = v28;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  sub_25F44F7E8();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6D5D8, &unk_25F4AB530);
  sub_25F41A91C();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 6;
  sub_25F44F870();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 7;
  sub_25F44F8C4();
  sub_25F4A2530();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DA00, &qword_25F4A5350);
  sub_25F4502D8(&qword_27FD6DA08, &qword_27FD6DA00, &qword_25F4A5350, sub_25F3FC25C);
  sub_25F4A2580();
  __swift_destroy_boxed_opaque_existential_1(v31);
  v11 = v28;
  if (!v28)
  {
    v11 = MEMORY[0x277D84F90];
  }

  v16 = v11;
  v32 = &type metadata for LaunchPayload.Key;
  v33 = v5;
  LOBYTE(v31[0]) = 10;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2580();
  v12 = sub_25F4A25E0();
  (*(*(v12 - 8) + 8))(a1, v12);
  result = __swift_destroy_boxed_opaque_existential_1(v31);
  v14 = v30;
  *a2 = v26;
  *(a2 + 8) = v27;
  *(a2 + 16) = v21;
  *(a2 + 24) = v6;
  *(a2 + 32) = v20;
  *(a2 + 40) = v18;
  *(a2 + 48) = v19;
  *(a2 + 56) = v8;
  *(a2 + 64) = v17;
  *(a2 + 65) = v10 & 1;
  *(a2 + 72) = v25;
  *(a2 + 80) = v24;
  *(a2 + 88) = v23;
  *(a2 + 92) = v22;
  *(a2 + 104) = v16;
  v15 = v29;
  *(a2 + 112) = v28;
  *(a2 + 128) = v15;
  *(a2 + 144) = v14;
  return result;
}

uint64_t BinaryType.init(cpuType:cpuSubtype:)@<X0>(uint64_t result@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

double static BinaryType.unspecified.getter@<D0>(void *a1@<X8>)
{
  result = NAN;
  *a1 = -1;
  return result;
}

uint64_t sub_25F448E9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7974627553757063;
  }

  else
  {
    v3 = 0x65707954757063;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEA00000000006570;
  }

  if (*a2)
  {
    v5 = 0x7974627553757063;
  }

  else
  {
    v5 = 0x65707954757063;
  }

  if (*a2)
  {
    v6 = 0xEA00000000006570;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F448F48()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F448FD0(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F449044(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4490D4(uint64_t *a1@<X8>)
{
  v2 = 0x65707954757063;
  if (*v1)
  {
    v2 = 0x7974627553757063;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEA00000000006570;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F449118()
{
  if (*v0)
  {
    return 0x7974627553757063;
  }

  else
  {
    return 0x65707954757063;
  }
}

uint64_t BinaryType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v12 = &type metadata for BinaryType.Key;
  v5 = sub_25F44F920();
  v13 = v5;
  LOBYTE(v11[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v11);
    v6 = v14;
    v12 = &type metadata for BinaryType.Key;
    v13 = v5;
    LOBYTE(v11[0]) = 1;
    sub_25F4A2530();
    v8 = sub_25F4A25E0();
    (*(*(v8 - 8) + 8))(a1, v8);
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v6;
    a2[1] = v10;
  }

  return result;
}

PreviewsMessagingOS::ProcessType_optional __swiftcall ProcessType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F4A3170();

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

uint64_t ProcessType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x746163696C707061;
  }
}

uint64_t sub_25F449478(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v3 = 0x746163696C707061;
  }

  if (v2)
  {
    v4 = 0xEB000000006E6F69;
  }

  else
  {
    v4 = 0x800000025F4B65C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0x746163696C707061;
  }

  if (*a2)
  {
    v6 = 0x800000025F4B65C0;
  }

  else
  {
    v6 = 0xEB000000006E6F69;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44952C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F4495BC(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F449638(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F4496D0(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B65C0;
  v3 = 0x746163696C707061;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v2 = 0xEB000000006E6F69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F44971C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451E98();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F4497E0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574616C756D6973;
  }

  else
  {
    v3 = 0x746C7561666564;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x6574616C756D6973;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44988C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F449914(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F449988(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F449A18(uint64_t *a1@<X8>)
{
  v2 = 0x746C7561666564;
  if (*v1)
  {
    v2 = 0x6574616C756D6973;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F449A5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451DA4();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t DeviceType.propertyListValue.getter()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;
  v6 = v0[3];
  v16 = v0[2];
  v17 = v6;
  v9 = &v14;
  sub_25F44F98C();
  sub_25F44F9E0();
  result = sub_25F4A25C0();
  if (*(&v14 + 1))
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v10 = v14;
    sub_25F44FA34();
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t DeviceType.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  v18[3] = &type metadata for DeviceType.Key;
  v18[4] = sub_25F44F98C();
  sub_25F44F9E0();
  sub_25F4A2580();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  if (v19 == 2)
  {
    (*(v6 + 16))(v11, a1, v5);
    sub_25F44FA34();
    sub_25F4A2950();
  }

  else
  {
    if ((v19 & 1) == 0)
    {
      result = (*(v6 + 8))(a1, v5);
      v13 = 0uLL;
      v14 = 0uLL;
      v15 = 0uLL;
      v16 = 0uLL;
      goto LABEL_9;
    }

    (*(v6 + 16))(v9, a1, v5);
    sub_25F44FA34();
    sub_25F4A2950();
  }

  result = (*(v6 + 8))(a1, v5);
  v13 = v17[0];
  v14 = v17[1];
  v15 = v17[2];
  v16 = v17[3];
LABEL_9:
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  return result;
}

uint64_t static DeviceType.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t DeviceType.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x25F8DDB20](1);
  }

  MEMORY[0x25F8DDB20](2);

  return sub_25F4A2C60();
}

uint64_t DeviceType.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_25F4A3300();
  if (v1)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A0EC()
{
  v1 = sub_25F4A25E0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[1];
  v14 = *v0;
  v15 = v5;
  v6 = v0[3];
  v16 = v0[2];
  v17 = v6;
  v9 = &v14;
  sub_25F44F98C();
  sub_25F44F9E0();
  result = sub_25F4A25C0();
  if (*(&v14 + 1))
  {
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v10 = v14;
    sub_25F44FA34();
    sub_25F4A2940();
    sub_25F4A2540();
    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_25F44A270()
{
  v1 = *(v0 + 8);
  sub_25F4A3300();
  if (v1)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A2E0(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x25F8DDB20](1);
  }

  MEMORY[0x25F8DDB20](2);

  return sub_25F4A2C60();
}

uint64_t sub_25F44A358(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_25F4A3300();
  if (v2)
  {
    MEMORY[0x25F8DDB20](2);
    sub_25F4A2C60();
  }

  else
  {
    MEMORY[0x25F8DDB20](1);
  }

  return sub_25F4A3350();
}

uint64_t sub_25F44A3C4(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (!v3)
  {
    return v4 == 0;
  }

  if (!v4)
  {
    return 0;
  }

  if (*a1 == *a2 && v3 == v4)
  {
    return 1;
  }

  else
  {
    return sub_25F4A3270();
  }
}

uint64_t SimulatorDevicePayload.deviceIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SimulatorDevicePayload.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SimulatorDevicePayload.deviceEnvironment.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t SimulatorDevicePayload.frameBufferMaskPath.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SimulatorDevicePayload.frameBufferMaskPath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SimulatorDevicePayload.init(deviceIdentifier:displaySize:displayScale:deviceEnvironment:maskPath:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>, double a8@<D1>, double a9@<D2>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a7;
  *(a6 + 24) = a8;
  *(a6 + 32) = a9;
  *(a6 + 40) = a3;
  *(a6 + 48) = a4;
  *(a6 + 56) = a5;
  return result;
}

uint64_t sub_25F44A5F8()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44A6E8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44A7C4(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F44A8B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F44FCE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F44A8E0(unint64_t *a1@<X8>)
{
  v2 = 0x5379616C70736964;
  v3 = *v1;
  v4 = 0xEB00000000657A69;
  v5 = 0xEC000000656C6163;
  v6 = 0x800000025F4B6620;
  v7 = 0xD000000000000013;
  if (v3 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x800000025F4B6640;
  }

  if (v3 == 2)
  {
    v7 = 0x5379616C70736964;
  }

  else
  {
    v5 = v6;
  }

  if (!*v1)
  {
    v2 = 0xD000000000000010;
    v4 = 0x800000025F4B65F0;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v2 = v7;
    v8 = v5;
  }

  *a1 = v2;
  a1[1] = v8;
}

unint64_t sub_25F44A98C()
{
  v1 = 0x5379616C70736964;
  v2 = *v0;
  v3 = 0xD000000000000013;
  if (v2 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v2 == 2)
  {
    v3 = 0x5379616C70736964;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F44AA84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[4];
  v4 = a1[5];
  v11 = *(a1 + 3);
  v22 = 0;
  v21[0] = v1;
  v21[1] = v2;
  v20 = 1;
  v18 = *(a1 + 1);
  v19 = 0;
  v17 = 2;
  v15 = v3;
  v16 = 0;
  v14 = 3;
  v13 = v4;
  v12 = 4;
  type metadata accessor for CGSize(0);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
  v8 = sub_25F44FA90();
  v9 = sub_25F44F7E8();
  return sub_25F4A28A0(&v22, v21, &v20, &v18, &v17, &v15, &v14, &v13, &v12, &v11, &type metadata for SimulatorDevicePayload.Key, MEMORY[0x277D837D0], &type metadata for SimulatorDevicePayload.Key, v6, &type metadata for SimulatorDevicePayload.Key, MEMORY[0x277D85048], &type metadata for SimulatorDevicePayload.Key, v7, &type metadata for SimulatorDevicePayload.Key, MEMORY[0x277D837D0], v8, MEMORY[0x277D405B0], v8, MEMORY[0x277D40618], v8, MEMORY[0x277D40390], v8, v9, v8, MEMORY[0x277D405B0]);
}

uint64_t SimulatorDevicePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = &type metadata for SimulatorDevicePayload.Key;
  v5 = sub_25F44FA90();
  v18 = v5;
  LOBYTE(v16[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v19;
    v7 = v20;
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 1;
    type metadata accessor for CGSize(0);
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v9 = v21;
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EB28, &qword_25F4AB528);
    sub_25F44F7E8();
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v16);
    v17 = &type metadata for SimulatorDevicePayload.Key;
    v18 = v5;
    LOBYTE(v16[0]) = 4;
    sub_25F4A2580();
    v11 = sub_25F4A25E0();
    (*(*(v11 - 8) + 8))(a1, v11);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
    *(a2 + 32) = v9;
    *(a2 + 40) = v13;
    *(a2 + 48) = v12;
  }

  return result;
}

uint64_t PrepareToRelaunchPayload.agentDescriptor.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

__n128 PrepareToRelaunchPayload.agentDescriptor.setter(__int128 *a1)
{
  v5 = a1[1];
  v6 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);

  result = v5;
  *v1 = v6;
  *(v1 + 16) = v5;
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

void __swiftcall PrepareToRelaunchPayload.init(agentDescriptor:)(PreviewsMessagingOS::PrepareToRelaunchPayload *__return_ptr retstr, PreviewsMessagingOS::AgentDescriptor *agentDescriptor)
{
  countAndFlagsBits = agentDescriptor->bundle.bundleID._countAndFlagsBits;
  object = agentDescriptor->bundle.bundleID._object;
  retstr->agentDescriptor.idAcrossRelaunches = agentDescriptor->idAcrossRelaunches;
  retstr->agentDescriptor.bundle.bundleID._countAndFlagsBits = countAndFlagsBits;
  retstr->agentDescriptor.bundle.bundleID._object = object;
  retstr->agentDescriptor.bundle.path = agentDescriptor->bundle.path;
}

uint64_t sub_25F44AFFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736544746E656761;
  }

  else
  {
    v3 = 0x656449746E656761;
  }

  if (v2)
  {
    v4 = 0xEF7265696669746ELL;
  }

  else
  {
    v4 = 0xEF726F7470697263;
  }

  if (*a2)
  {
    v5 = 0x736544746E656761;
  }

  else
  {
    v5 = 0x656449746E656761;
  }

  if (*a2)
  {
    v6 = 0xEF726F7470697263;
  }

  else
  {
    v6 = 0xEF7265696669746ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44B0BC()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44B158(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44B1E0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44B284(uint64_t *a1@<X8>)
{
  v2 = 0x656449746E656761;
  if (*v1)
  {
    v2 = 0x736544746E656761;
  }

  v3 = 0xEF7265696669746ELL;
  if (*v1)
  {
    v3 = 0xEF726F7470697263;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44B2DC()
{
  if (*v0)
  {
    return 0x736544746E656761;
  }

  else
  {
    return 0x656449746E656761;
  }
}

uint64_t sub_25F44B380(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  v21[0] = a1[2];
  v21[1] = v3;
  v21[2] = v4;
  v21[3] = v5;
  v20 = 0;
  v16 = v21[0];
  v17 = v3;
  v18 = v4;
  v19 = v5;
  v15 = 1;
  v9 = v1;
  v10 = v2;
  v11 = v21[0];
  v12 = v3;
  v13 = v4;
  v14 = v5;
  sub_25F4520B0(a1, v8);
  sub_25F4520E8(v21, v8);
  sub_25F44FAEC();
  sub_25F44F534();
  sub_25F44F6EC();
  v6 = sub_25F4A28D0();
  sub_25F3E4814(v9, v10, v11, v12, v13, v14);
  sub_25F403404(v16, v17, v18, v19);
  return v6;
}

uint64_t PrepareToRelaunchPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = &type metadata for PrepareToRelaunchPayload.Key;
  v5 = sub_25F44FAEC();
  v15 = v5;
  LOBYTE(v13[0]) = 1;
  sub_25F44F6EC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v14 = &type metadata for PrepareToRelaunchPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 0;
    sub_25F4A2530();
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);
  }

  else
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
  }

  result = __swift_destroy_boxed_opaque_existential_1(v13);
  v9 = v17;
  v10 = v18;
  v11 = v19;
  v12 = v20;
  *a2 = v16;
  *(a2 + 8) = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  return result;
}

uint64_t sub_25F44B684(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 6580592;
  }

  else
  {
    v3 = 0x6B6F547469647561;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 6580592;
  }

  else
  {
    v5 = 0x6B6F547469647561;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44B728()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44B7A8(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44B814(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44B89C(uint64_t *a1@<X8>)
{
  v2 = 6580592;
  if (!*v1)
  {
    v2 = 0x6B6F547469647561;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44B8D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F451DF8();
  v5 = MEMORY[0x277D405A8];

  return MEMORY[0x2821A0A68](a1, a2, v4, v5);
}

uint64_t sub_25F44B99C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6B6F547469647561;
  v4 = 0xEA00000000006E65;
  if (v2 != 1)
  {
    v3 = 6580592;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x696D697263736964;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEC000000746E616ELL;
  }

  v7 = 0x6B6F547469647561;
  v8 = 0xEA00000000006E65;
  if (*a2 != 1)
  {
    v7 = 6580592;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x696D697263736964;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC000000746E616ELL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25F4A3270();
  }

  return v11 & 1;
}

uint64_t sub_25F44BA9C()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44BB44(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44BBD8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

unint64_t sub_25F44BC7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F44FD30(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F44BCAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC000000746E616ELL;
  v4 = 0xEA00000000006E65;
  v5 = 0x6B6F547469647561;
  if (v2 != 1)
  {
    v5 = 6580592;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x696D697263736964;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_25F44BD10()
{
  v1 = 0x6B6F547469647561;
  if (*v0 != 1)
  {
    v1 = 6580592;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696D697263736964;
  }
}

uint64_t ProcessID.propertyListValue.getter()
{
  v1 = sub_25F44FB58();
  sub_25F44FBAC();
  sub_25F4A25C0();
  if ((*(v0 + 32) & 1) == 0)
  {
    v4 = &type metadata for ProcessID.Key;
    v5 = v1;
    LOBYTE(v3[0]) = 1;
    type metadata accessor for audit_token_t(0);
    sub_25F4A2520();
    __swift_destroy_boxed_opaque_existential_1(v3);
    sub_25F4A2FF0();
  }

  v4 = &type metadata for ProcessID.Key;
  v5 = v1;
  LOBYTE(v3[0]) = 2;
  sub_25F4A2520();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t ProcessID.pid.getter()
{
  result = *v0;
  if ((*(v0 + 32) & 1) == 0)
  {
    return sub_25F4A2FF0();
  }

  return result;
}

double ProcessID.init(propertyListValue:)@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_25F44FD7C(a2, v6);
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

double sub_25F44BF80@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_25F44FD7C(a2, v6);
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

uint64_t ForwardPayload.messagePayload.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ForwardPayload(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ForwardPayload.messagePayload.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ForwardPayload(0) + 20);
  v4 = sub_25F4A25E0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ForwardPayload.pid.setter(int a1)
{
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t ForwardPayload.contentDomain.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ForwardPayload(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ForwardPayload.contentDomain.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t ForwardPayload.previewInterfaceOrientation.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ForwardPayload(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t ForwardPayload.previewInterfaceOrientation.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ForwardPayload(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t ForwardPayload.sceneIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for ForwardPayload(0) + 36));

  return v1;
}

uint64_t ForwardPayload.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for ForwardPayload(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t ForwardPayload.init(messageType:messagePayload:pid:contentDomain:previewInterfaceOrientation:sceneIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  v13 = *a5;
  v14 = type metadata accessor for ForwardPayload(0);
  v15 = v14[7];
  a8[v15] = 3;
  v16 = v14[8];
  a8[v16] = 4;
  v17 = &a8[v14[9]];
  *a8 = v11;
  v18 = v14[5];
  v19 = sub_25F4A25E0();
  result = (*(*(v19 - 8) + 32))(&a8[v18], a2, v19);
  *&a8[v14[6]] = a3;
  a8[v15] = v12;
  a8[v16] = v13;
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t sub_25F44C500(uint64_t a1)
{
  sub_25F4A2C60();
}

unint64_t sub_25F44C618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F451E4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_25F44C648(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000657079;
  v4 = 0x546567617373656DLL;
  v5 = 0xD000000000000012;
  v6 = 0x800000025F4B6670;
  v7 = 0x800000025F4B6690;
  v8 = 0xD00000000000001BLL;
  if (v2 != 4)
  {
    v8 = 0x656449656E656373;
    v7 = 0xEF7265696669746ELL;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xEE0064616F6C7961;
  v10 = 0x506567617373656DLL;
  if (v2 != 1)
  {
    v10 = 6580592;
    v9 = 0xE300000000000000;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_25F44C728()
{
  v1 = *v0;
  v2 = 0x546567617373656DLL;
  v3 = 0xD000000000000012;
  v4 = 0xD00000000000001BLL;
  if (v1 != 4)
  {
    v4 = 0x656449656E656373;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x506567617373656DLL;
  if (v1 != 1)
  {
    v5 = 6580592;
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

uint64_t sub_25F44C840(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DAA0, &qword_25F4A5550);
  MEMORY[0x28223BE20](v2 - 8);
  v27 = &v25 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6ED78, &unk_25F4AD578);
  v5 = v4 - 8;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v25 - v9;
  v11 = *a1;
  v12 = *(v5 + 56);
  *(&v25 - v9) = 1;
  v13 = type metadata accessor for ForwardPayload(0);
  v14 = v13[5];
  v15 = sub_25F4A25E0();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v10[v12], &a1[v14], v15);
  LODWORD(v12) = *&a1[v13[6]];
  LOBYTE(v14) = a1[v13[7]];
  v17 = v13[9];
  LOBYTE(v13) = a1[v13[8]];
  v18 = &a1[v17];
  v19 = *&a1[v17];
  v26 = *(v18 + 1);
  v40 = 0;
  v39 = v11;
  sub_25F404B8C(v10, v8, &qword_27FD6ED78, &unk_25F4AD578);
  v20 = *v8;
  v21 = &v8[*(v5 + 56)];
  v22 = v27;
  (*(v16 + 32))(v27, v21, v15);
  (*(v16 + 56))(v22, 0, 1, v15);
  v38 = v20;
  v37 = 2;
  v35 = v12;
  v36 = 0;
  v34 = 3;
  v33 = v14;
  v32 = 4;
  v31 = v13;
  v30 = 5;
  v28 = v19;
  v29 = v26;
  sub_25F450014();
  sub_25F450068();
  sub_25F4500BC();
  sub_25F43AA08();
  v23 = sub_25F4A2890();
  sub_25F3F21F4(v22, &qword_27FD6DAA0, &qword_25F4A5550);
  sub_25F3F21F4(v10, &qword_27FD6ED78, &unk_25F4AD578);
  return v23;
}

uint64_t ForwardPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_25F4A25E0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = &type metadata for ForwardPayload.Key;
  v9 = sub_25F450014();
  v28 = v9;
  LOBYTE(v26[0]) = 0;
  sub_25F450068();
  sub_25F4A2530();
  if (v2)
  {
    (*(v6 + 8))(a1, v5);
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
    v10 = v31;
    v27 = &type metadata for ForwardPayload.Key;
    v28 = v9;
    LOBYTE(v26[0]) = 1;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v26);
    v27 = &type metadata for ForwardPayload.Key;
    v28 = v9;
    LOBYTE(v26[0]) = 2;
    sub_25F4A2530();
    __swift_destroy_boxed_opaque_existential_1(v26);
    v23 = v29;
    v27 = &type metadata for ForwardPayload.Key;
    v28 = v9;
    LOBYTE(v26[0]) = 3;
    sub_25F4500BC();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v26);
    v22 = v30;
    v27 = &type metadata for ForwardPayload.Key;
    v28 = v9;
    LOBYTE(v26[0]) = 4;
    sub_25F43AA08();
    sub_25F4A2580();
    __swift_destroy_boxed_opaque_existential_1(v26);
    v21 = v24;
    v27 = &type metadata for ForwardPayload.Key;
    v28 = v9;
    LOBYTE(v26[0]) = 5;
    sub_25F4A2580();
    v12 = v21;
    if (v21 == 4)
    {
      v12 = 0;
    }

    v21 = v12;
    (*(v6 + 8))(a1, v5);
    __swift_destroy_boxed_opaque_existential_1(v26);
    v19 = v25;
    v20 = v24;
    v13 = type metadata accessor for ForwardPayload(0);
    v18 = v13[7];
    a2[v18] = 3;
    v14 = v13[8];
    a2[v14] = 4;
    v15 = &a2[v13[9]];
    *a2 = v10;
    result = (*(v6 + 32))(&a2[v13[5]], v8, v5);
    *&a2[v13[6]] = v23;
    v16 = v21;
    a2[v18] = v22;
    a2[v14] = v16;
    v17 = v19;
    *v15 = v20;
    v15[1] = v17;
  }

  return result;
}

uint64_t PurgePayload.workspaceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PurgePayload.workspaceID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

PreviewsMessagingOS::PurgePayload __swiftcall PurgePayload.init(workspaceID:killAgents:)(PreviewsMessagingOS::PurgePayload workspaceID, Swift::Bool killAgents)
{
  *v2 = workspaceID.workspaceID;
  *(v2 + 16) = killAgents;
  workspaceID.killAgents = killAgents;
  return workspaceID;
}

uint64_t sub_25F44D010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6567416C6C696BLL;
  }

  else
  {
    v3 = 0x636170736B726F77;
  }

  if (v2)
  {
    v4 = 0xEB00000000444965;
  }

  else
  {
    v4 = 0xEA00000000007374;
  }

  if (*a2)
  {
    v5 = 0x6E6567416C6C696BLL;
  }

  else
  {
    v5 = 0x636170736B726F77;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007374;
  }

  else
  {
    v6 = 0xEB00000000444965;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44D0C4()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44D154(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44D1D0(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44D268(uint64_t *a1@<X8>)
{
  v2 = 0x636170736B726F77;
  if (*v1)
  {
    v2 = 0x6E6567416C6C696BLL;
  }

  v3 = 0xEB00000000444965;
  if (*v1)
  {
    v3 = 0xEA00000000007374;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44D2B4()
{
  if (*v0)
  {
    return 0x6E6567416C6C696BLL;
  }

  else
  {
    return 0x636170736B726F77;
  }
}

uint64_t PurgePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = &type metadata for PurgePayload.Key;
  v5 = sub_25F45011C();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for PurgePayload.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    v11 = v17;
    *a2 = v8;
    *(a2 + 8) = v7;
    *(a2 + 16) = v11 & 1;
  }

  return result;
}

uint64_t RequestPreviewVariantsPayload.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RequestPreviewVariantsPayload.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RequestPreviewVariantsPayload.contentOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t RequestPreviewVariantsPayload.contentOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

void __swiftcall RequestPreviewVariantsPayload.init(contentCategory:contentOverride:)(PreviewsMessagingOS::RequestPreviewVariantsPayload *__return_ptr retstr, PreviewsMessagingOS::ContentCategory contentCategory, PreviewsMessagingOS::ContentOverride_optional contentOverride)
{
  v4 = *(contentCategory.rawValue._countAndFlagsBits + 8);
  v5 = *contentCategory.rawValue._object;
  v6 = *(contentCategory.rawValue._object + 1);
  retstr->contentCategory.rawValue._countAndFlagsBits = *contentCategory.rawValue._countAndFlagsBits;
  retstr->contentCategory.rawValue._object = v4;

  retstr->contentOverride.value.rawValue._countAndFlagsBits = v5;
  retstr->contentOverride.value.rawValue._object = v6;
}

uint64_t sub_25F44D6C4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4F746E65746E6F63;
  }

  else
  {
    v3 = 0x43746E65746E6F63;
  }

  if (v2)
  {
    v4 = 0xEF79726F67657461;
  }

  else
  {
    v4 = 0xEF65646972726576;
  }

  if (*a2)
  {
    v5 = 0x4F746E65746E6F63;
  }

  else
  {
    v5 = 0x43746E65746E6F63;
  }

  if (*a2)
  {
    v6 = 0xEF65646972726576;
  }

  else
  {
    v6 = 0xEF79726F67657461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44D784()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44D820(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44D8A8(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44D94C(uint64_t *a1@<X8>)
{
  v2 = 0x43746E65746E6F63;
  if (*v1)
  {
    v2 = 0x4F746E65746E6F63;
  }

  v3 = 0xEF79726F67657461;
  if (*v1)
  {
    v3 = 0xEF65646972726576;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_25F44D9A4()
{
  if (*v0)
  {
    return 0x4F746E65746E6F63;
  }

  else
  {
    return 0x43746E65746E6F63;
  }
}

uint64_t sub_25F44DA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25F45017C();
  sub_25F406680();
  sub_25F4066D4();

  v4 = sub_25F4A28D0();

  return v4;
}

uint64_t RequestPreviewVariantsPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = &type metadata for RequestPreviewVariantsPayload.Key;
  v5 = sub_25F45017C();
  v15 = v5;
  LOBYTE(v13[0]) = 0;
  sub_25F406680();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
    v8 = v16;
    v7 = v17;
    v14 = &type metadata for RequestPreviewVariantsPayload.Key;
    v15 = v5;
    LOBYTE(v13[0]) = 1;
    sub_25F4066D4();
    sub_25F4A2580();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    __swift_destroy_boxed_opaque_existential_1(v13);

    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
    a2[3] = v12;
  }

  return result;
}

uint64_t PreviewVariantsPayload.groups.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PreviewVariantsPayload.propertyListValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4501D0();
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  return sub_25F4A25C0();
}

uint64_t PreviewVariantsPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewVariantsPayload.Key;
  v7[4] = sub_25F4501D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t sub_25F44DFF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4501D0();
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  return sub_25F4A25C0();
}

uint64_t sub_25F44E0BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v7[3] = &type metadata for PreviewVariantsPayload.Key;
  v7[4] = sub_25F4501D0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBB0, &qword_25F4AB540);
  sub_25F4502D8(&qword_27FD6EBC0, &qword_27FD6EBB0, &qword_25F4AB540, sub_25F450224);
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v7[5];
  }

  return result;
}

uint64_t RequestContentOverridePayload.contentCategory.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t RequestContentOverridePayload.contentCategory.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t RequestContentOverridePayload.requestedOverrides.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

PreviewsMessagingOS::RequestContentOverridePayload __swiftcall RequestContentOverridePayload.init(contentCategory:requestedOverrides:)(PreviewsMessagingOS::ContentCategory contentCategory, Swift::OpaquePointer requestedOverrides)
{
  v3 = *(contentCategory.rawValue._countAndFlagsBits + 8);
  *v2 = *contentCategory.rawValue._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = contentCategory.rawValue._object;
  result.contentCategory = contentCategory;
  result.requestedOverrides = requestedOverrides;
  return result;
}

uint64_t sub_25F44E2C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0x43746E65746E6F63;
  }

  if (v2)
  {
    v4 = 0xEF79726F67657461;
  }

  else
  {
    v4 = 0x800000025F4B66C0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000012;
  }

  else
  {
    v5 = 0x43746E65746E6F63;
  }

  if (*a2)
  {
    v6 = 0x800000025F4B66C0;
  }

  else
  {
    v6 = 0xEF79726F67657461;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F4A3270();
  }

  return v8 & 1;
}

uint64_t sub_25F44E380()
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

uint64_t sub_25F44E414(uint64_t a1)
{
  sub_25F4A2C60();
}

uint64_t sub_25F44E494(uint64_t a1)
{
  sub_25F4A3300();
  sub_25F4A2C60();

  return sub_25F4A3350();
}

void sub_25F44E530(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F4B66C0;
  v3 = 0x43746E65746E6F63;
  if (*v1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xEF79726F67657461;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F44E580()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x43746E65746E6F63;
  }
}

uint64_t sub_25F44E614(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBD8, &qword_25F4AB548);
  sub_25F450284();
  sub_25F406680();
  sub_25F4502D8(&qword_27FD6EBE0, &qword_27FD6EBD8, &qword_25F4AB548, sub_25F4066D4);
  v3 = sub_25F4A28D0();

  return v3;
}

uint64_t RequestContentOverridePayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v13 = &type metadata for RequestContentOverridePayload.Key;
  v5 = sub_25F450284();
  v14 = v5;
  LOBYTE(v12[0]) = 0;
  sub_25F406680();
  sub_25F4A2530();
  if (v2)
  {
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
    v8 = v15;
    v7 = v16;
    v13 = &type metadata for RequestContentOverridePayload.Key;
    v14 = v5;
    LOBYTE(v12[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6EBD8, &qword_25F4AB548);
    sub_25F4502D8(&qword_27FD6EBE0, &qword_27FD6EBD8, &qword_25F4AB548, sub_25F4066D4);
    sub_25F4A2530();
    v10 = sub_25F4A25E0();
    (*(*(v10 - 8) + 8))(a1, v10);
    result = __swift_destroy_boxed_opaque_existential_1(v12);
    *a2 = v8;
    a2[1] = v7;
    a2[2] = v11;
  }

  return result;
}

uint64_t ContentOverridePayload.contentOverride.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t ContentOverridePayload.contentOverride.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

PreviewsMessagingOS::ContentOverridePayload __swiftcall ContentOverridePayload.init(contentOverride:)(PreviewsMessagingOS::ContentOverride_optional contentOverride)
{
  v2 = v1;
  v3 = *contentOverride.value.rawValue._countAndFlagsBits;
  v4 = *(contentOverride.value.rawValue._countAndFlagsBits + 8);

  *v2 = v3;
  v2[1] = v4;
  result.contentOverride.value.rawValue._object = v6;
  result.contentOverride.value.rawValue._countAndFlagsBits = v5;
  result.contentOverride.is_nil = v7;
  return result;
}

uint64_t ContentOverridePayload.propertyListValue.getter()
{
  sub_25F450354();
  sub_25F4066D4();
  return sub_25F4A25C0();
}

double ContentOverridePayload.init(propertyListValue:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for ContentOverridePayload.Key;
  v7[4] = sub_25F450354();
  sub_25F4066D4();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F44EC10()
{
  sub_25F450354();
  sub_25F4066D4();
  return sub_25F4A25C0();
}

double sub_25F44EC84@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v7[3] = &type metadata for ContentOverridePayload.Key;
  v7[4] = sub_25F450354();
  sub_25F4066D4();
  sub_25F4A2580();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    result = *&v8;
    *a2 = v8;
  }

  return result;
}

uint64_t CapabilitiesPayload.init(propertyListValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for CapabilitiesPayload.Key;
  v7[4] = sub_25F4503B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_25F44F038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v7[3] = &type metadata for CapabilitiesPayload.Key;
  v7[4] = sub_25F4503B4();
  sub_25F4A2530();
  v5 = sub_25F4A25E0();
  (*(*(v5 - 8) + 8))(a1, v5);
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t _s19PreviewsMessagingOS14OSCapabilitiesV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0 && ((a1[3] ^ a2[3]) & 1) == 0 && ((a1[4] ^ a2[4]) & 1) == 0 && ((a1[5] ^ a2[5]) & 1) == 0 && ((a1[6] ^ a2[6]) & 1) == 0 && ((a1[7] ^ a2[7]) & 1) == 0 && ((a1[8] ^ a2[8]) & 1) == 0 && ((a1[9] ^ a2[9]) & 1) == 0)
  {
    v2 = (a2[10] ^ a1[10] | a2[11] ^ a1[11]) ^ 1;
  }

  return v2 & 1;
}

uint64_t _s19PreviewsMessagingOS15AgentDescriptorV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if (*a1 == *a2 && a1[1] == a2[1] || (v10 = sub_25F4A3270(), result = 0, (v10 & 1) != 0))
  {
    if (v2 == v6 && v4 == v7 || (sub_25F4A3270() & 1) != 0)
    {
      if (v5)
      {
        if (v8 && (v3 == v9 && v5 == v8 || (sub_25F4A3270() & 1) != 0))
        {
          return 1;
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_25F44F2F0()
{
  v0 = sub_25F4A2A70();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FD6D378 != -1)
  {
    swift_once();
  }

  v5[2] = qword_27FD6EA60;

  sub_25F4A2A80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD6DC90, &unk_25F4A6630);
  sub_25F3F2708(&qword_27FD6DC98, &qword_27FD6DC90, &unk_25F4A6630, MEMORY[0x277D40588]);
  sub_25F4A29B0();
  (*(v1 + 8))(v3, v0);

  return sub_25F4A3210();
}

unint64_t _s19PreviewsMessagingOS14ServiceMessageV0E4TypeO8rawValueAESgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F44F534()
{
  result = qword_27FD6EAE8;
  if (!qword_27FD6EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAE8);
  }

  return result;
}

unint64_t sub_25F44F588()
{
  result = qword_27FD6EAF0;
  if (!qword_27FD6EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAF0);
  }

  return result;
}

unint64_t sub_25F44F5E8()
{
  result = qword_27FD6EAF8;
  if (!qword_27FD6EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EAF8);
  }

  return result;
}

unint64_t sub_25F44F63C()
{
  result = qword_27FD6EB00;
  if (!qword_27FD6EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB00);
  }

  return result;
}

unint64_t sub_25F44F698()
{
  result = qword_27FD6EB08;
  if (!qword_27FD6EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB08);
  }

  return result;
}

unint64_t sub_25F44F6EC()
{
  result = qword_27FD6EB10;
  if (!qword_27FD6EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB10);
  }

  return result;
}

unint64_t sub_25F44F740()
{
  result = qword_27FD6EB18;
  if (!qword_27FD6EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB18);
  }

  return result;
}

unint64_t sub_25F44F794()
{
  result = qword_27FD6EB20;
  if (!qword_27FD6EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB20);
  }

  return result;
}

unint64_t sub_25F44F7E8()
{
  result = qword_27FD6EB30;
  if (!qword_27FD6EB30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD6EB28, &qword_25F4AB528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB30);
  }

  return result;
}

unint64_t sub_25F44F870()
{
  result = qword_27FD6EB38;
  if (!qword_27FD6EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB38);
  }

  return result;
}

unint64_t sub_25F44F8C4()
{
  result = qword_27FD6EB40;
  if (!qword_27FD6EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB40);
  }

  return result;
}

unint64_t sub_25F44F920()
{
  result = qword_27FD6EB48;
  if (!qword_27FD6EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB48);
  }

  return result;
}

unint64_t sub_25F44F98C()
{
  result = qword_27FD6EB50;
  if (!qword_27FD6EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB50);
  }

  return result;
}

unint64_t sub_25F44F9E0()
{
  result = qword_27FD6EB58;
  if (!qword_27FD6EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB58);
  }

  return result;
}

unint64_t sub_25F44FA34()
{
  result = qword_27FD6EB60;
  if (!qword_27FD6EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB60);
  }

  return result;
}

unint64_t sub_25F44FA90()
{
  result = qword_27FD6EB68;
  if (!qword_27FD6EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB68);
  }

  return result;
}

unint64_t sub_25F44FAEC()
{
  result = qword_27FD6EB70;
  if (!qword_27FD6EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB70);
  }

  return result;
}

_BYTE *sub_25F44FB40(_BYTE *result, _BYTE *a2)
{
  v3 = *(v2 + 16);
  *result = 0;
  *a2 = *(v3 + 32) & 1;
  return result;
}

unint64_t sub_25F44FB58()
{
  result = qword_27FD6EB78;
  if (!qword_27FD6EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB78);
  }

  return result;
}

unint64_t sub_25F44FBAC()
{
  result = qword_27FD6EB80;
  if (!qword_27FD6EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB80);
  }

  return result;
}

unint64_t sub_25F44FC00(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F44FC4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F44FC98(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F44FCE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25F44FD30(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F4A3170();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F44FD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v18 = &type metadata for ProcessID.Key;
  v5 = sub_25F44FB58();
  v19 = v5;
  LOBYTE(v17[0]) = 0;
  sub_25F44FBAC();
  sub_25F4A2530();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v17);
    v18 = &type metadata for ProcessID.Key;
    v19 = v5;
    LOBYTE(v17[0]) = 2;
    sub_25F4A2530();
    v7 = sub_25F4A25E0();
    (*(*(v7 - 8) + 8))(a1, v7);

LABEL_6:
    result = __swift_destroy_boxed_opaque_existential_1(v17);
    v13 = 0;
    v11 = v14;
    v12 = 0uLL;
    v10 = 1;
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v17);
  if (v14)
  {
    v18 = &type metadata for ProcessID.Key;
    v19 = v5;
    LOBYTE(v17[0]) = 2;
    sub_25F4A2530();
    v6 = sub_25F4A25E0();
    (*(*(v6 - 8) + 8))(a1, v6);
    goto LABEL_6;
  }

  v18 = &type metadata for ProcessID.Key;
  v19 = v5;
  LOBYTE(v17[0]) = 1;
  type metadata accessor for audit_token_t(0);
  sub_25F4A2530();
  v8 = sub_25F4A25E0();
  (*(*(v8 - 8) + 8))(a1, v8);
  result = __swift_destroy_boxed_opaque_existential_1(v17);
  v10 = 0;
  v11 = v14;
  v12 = v15;
  v13 = v16;
LABEL_7:
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v10;
  return result;
}

unint64_t sub_25F450014()
{
  result = qword_27FD6EB88;
  if (!qword_27FD6EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB88);
  }

  return result;
}

unint64_t sub_25F450068()
{
  result = qword_27FD6EB90;
  if (!qword_27FD6EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB90);
  }

  return result;
}

unint64_t sub_25F4500BC()
{
  result = qword_27FD6EB98;
  if (!qword_27FD6EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EB98);
  }

  return result;
}

unint64_t sub_25F45011C()
{
  result = qword_27FD6EBA0;
  if (!qword_27FD6EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBA0);
  }

  return result;
}

unint64_t sub_25F45017C()
{
  result = qword_27FD6EBA8;
  if (!qword_27FD6EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBA8);
  }

  return result;
}

unint64_t sub_25F4501D0()
{
  result = qword_27FD6EBB8;
  if (!qword_27FD6EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBB8);
  }

  return result;
}

unint64_t sub_25F450224()
{
  result = qword_27FD6EBC8;
  if (!qword_27FD6EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBC8);
  }

  return result;
}

unint64_t sub_25F450284()
{
  result = qword_27FD6EBD0;
  if (!qword_27FD6EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBD0);
  }

  return result;
}

uint64_t sub_25F4502D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_25F450354()
{
  result = qword_27FD6EBE8;
  if (!qword_27FD6EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBE8);
  }

  return result;
}

unint64_t sub_25F4503B4()
{
  result = qword_27FD6EBF0;
  if (!qword_27FD6EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBF0);
  }

  return result;
}

unint64_t sub_25F45040C()
{
  result = qword_27FD6EBF8;
  if (!qword_27FD6EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EBF8);
  }

  return result;
}

unint64_t sub_25F450464()
{
  result = qword_27FD6EC00;
  if (!qword_27FD6EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC00);
  }

  return result;
}

unint64_t sub_25F4504BC()
{
  result = qword_27FD6EC08;
  if (!qword_27FD6EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC08);
  }

  return result;
}

unint64_t sub_25F450514()
{
  result = qword_27FD6EC10;
  if (!qword_27FD6EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC10);
  }

  return result;
}

unint64_t sub_25F45056C()
{
  result = qword_27FD6EC18;
  if (!qword_27FD6EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC18);
  }

  return result;
}

unint64_t sub_25F4505C4()
{
  result = qword_27FD6EC20;
  if (!qword_27FD6EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC20);
  }

  return result;
}

unint64_t sub_25F45061C()
{
  result = qword_27FD6EC28;
  if (!qword_27FD6EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC28);
  }

  return result;
}

uint64_t sub_25F450694(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = type metadata accessor for ServiceMessage.Content(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_25F450760(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = type metadata accessor for ServiceMessage.Content(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F450804(uint64_t a1)
{
  sub_25F4512DC(319, &qword_27FD6EC40, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ServiceMessage.Content(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t getEnumTagSinglePayload for ServiceMessage.MessageType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceMessage.MessageType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25F4509E8(uint64_t a1)
{
  sub_25F4512DC(319, &qword_27FD6EC58, &type metadata for CapabilitiesPayload);
  if (v1 <= 0x3F)
  {
    sub_25F450AD4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ForwardPayload(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for ShellUpdatePayload(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_25F450AD4()
{
  if (!qword_27FD6EC60)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27FD6EC60);
    }
  }
}

uint64_t __swift_memcpy12_1(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OSCapabilities(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[12])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OSCapabilities(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapabilitiesPayload(unsigned __int8 *a1, unsigned int a2)
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

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F450D1C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_25F450D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19PreviewsMessagingOS10DeviceTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F450E20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F450E70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

double sub_25F450ECC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 56) = 0;
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ProcessID(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy33_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ProcessID(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProcessID(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F45103C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F4A25E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }
}

uint64_t sub_25F451120(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F4A25E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = a2;
  }

  return result;
}

void sub_25F4511E0(uint64_t a1)
{
  sub_25F4A25E0();
  if (v1 <= 0x3F)
  {
    sub_25F4512DC(319, &qword_27FD6EC78, &type metadata for PreviewContentDomain);
    if (v2 <= 0x3F)
    {
      sub_25F4512DC(319, &qword_27FD6EC80, &type metadata for PreviewTraits.Orientation);
      if (v3 <= 0x3F)
      {
        sub_25F4512DC(319, &qword_27FD6EC40, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25F4512DC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_25F4A3060();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_25F451328(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25F451370(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F4513E0(uint64_t a1, int a2)
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

uint64_t sub_25F451428(uint64_t result, int a2, int a3)
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

unint64_t sub_25F4515D4()
{
  result = qword_27FD6EC88;
  if (!qword_27FD6EC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC88);
  }

  return result;
}

unint64_t sub_25F45162C()
{
  result = qword_27FD6EC90;
  if (!qword_27FD6EC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC90);
  }

  return result;
}

unint64_t sub_25F451684()
{
  result = qword_27FD6EC98;
  if (!qword_27FD6EC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6EC98);
  }

  return result;
}

unint64_t sub_25F4516DC()
{
  result = qword_27FD6ECA0;
  if (!qword_27FD6ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECA0);
  }

  return result;
}

unint64_t sub_25F451734()
{
  result = qword_27FD6ECA8;
  if (!qword_27FD6ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECA8);
  }

  return result;
}

unint64_t sub_25F45178C()
{
  result = qword_27FD6ECB0;
  if (!qword_27FD6ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECB0);
  }

  return result;
}

unint64_t sub_25F4517E4()
{
  result = qword_27FD6ECB8;
  if (!qword_27FD6ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECB8);
  }

  return result;
}

unint64_t sub_25F45183C()
{
  result = qword_27FD6ECC0;
  if (!qword_27FD6ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECC0);
  }

  return result;
}

unint64_t sub_25F451894()
{
  result = qword_27FD6ECC8;
  if (!qword_27FD6ECC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECC8);
  }

  return result;
}

unint64_t sub_25F4518EC()
{
  result = qword_27FD6ECD0;
  if (!qword_27FD6ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECD0);
  }

  return result;
}

unint64_t sub_25F451944()
{
  result = qword_27FD6ECD8;
  if (!qword_27FD6ECD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECD8);
  }

  return result;
}

unint64_t sub_25F45199C()
{
  result = qword_27FD6ECE0;
  if (!qword_27FD6ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECE0);
  }

  return result;
}

unint64_t sub_25F4519F4()
{
  result = qword_27FD6ECE8;
  if (!qword_27FD6ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECE8);
  }

  return result;
}

unint64_t sub_25F451A4C()
{
  result = qword_27FD6ECF0;
  if (!qword_27FD6ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECF0);
  }

  return result;
}

unint64_t sub_25F451AA4()
{
  result = qword_27FD6ECF8;
  if (!qword_27FD6ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ECF8);
  }

  return result;
}

unint64_t sub_25F451AFC()
{
  result = qword_27FD6ED00;
  if (!qword_27FD6ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED00);
  }

  return result;
}

unint64_t sub_25F451B54()
{
  result = qword_27FD6ED08;
  if (!qword_27FD6ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED08);
  }

  return result;
}

unint64_t sub_25F451BAC()
{
  result = qword_27FD6ED10;
  if (!qword_27FD6ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED10);
  }

  return result;
}

unint64_t sub_25F451C04()
{
  result = qword_27FD6ED18;
  if (!qword_27FD6ED18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED18);
  }

  return result;
}

unint64_t sub_25F451CA0()
{
  result = qword_27FD6ED30;
  if (!qword_27FD6ED30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED30);
  }

  return result;
}

unint64_t sub_25F451CF8()
{
  result = qword_27FD6ED38;
  if (!qword_27FD6ED38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED38);
  }

  return result;
}

unint64_t sub_25F451D50()
{
  result = qword_27FD6ED40;
  if (!qword_27FD6ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED40);
  }

  return result;
}

unint64_t sub_25F451DA4()
{
  result = qword_27FD6ED48;
  if (!qword_27FD6ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED48);
  }

  return result;
}

unint64_t sub_25F451DF8()
{
  result = qword_27FD6ED50;
  if (!qword_27FD6ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD6ED50);
  }

  return result;
}