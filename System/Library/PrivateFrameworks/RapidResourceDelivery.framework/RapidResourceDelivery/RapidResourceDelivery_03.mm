unint64_t sub_227EFE63C()
{
  result = qword_27D80ECA0;
  if (!qword_27D80ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECA0);
  }

  return result;
}

unint64_t sub_227EFE690()
{
  result = qword_27D80ECA8;
  if (!qword_27D80ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECA8);
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

uint64_t sub_227EFE708(uint64_t a1, int a2)
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

uint64_t sub_227EFE750(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_227EFE7C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_227EFE80C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_227EFE870()
{
  result = qword_27D80ECB0;
  if (!qword_27D80ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECB0);
  }

  return result;
}

unint64_t sub_227EFE8C8()
{
  result = qword_27D80ECB8;
  if (!qword_27D80ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECB8);
  }

  return result;
}

unint64_t sub_227EFE920()
{
  result = qword_27D80ECC0;
  if (!qword_27D80ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECC0);
  }

  return result;
}

unint64_t sub_227EFE974()
{
  result = qword_27D80ECD0;
  if (!qword_27D80ECD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECD0);
  }

  return result;
}

unint64_t sub_227EFE9C8()
{
  result = qword_27D80ECE0;
  if (!qword_27D80ECE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECE0);
  }

  return result;
}

uint64_t sub_227EFEA2C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_227EFEABC(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_227EFEB80()
{
  result = qword_27D80ECE8;
  if (!qword_27D80ECE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECE8);
  }

  return result;
}

unint64_t sub_227EFEBD8()
{
  result = qword_27D80ECF0;
  if (!qword_27D80ECF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECF0);
  }

  return result;
}

unint64_t sub_227EFEC30()
{
  result = qword_27D80ECF8;
  if (!qword_27D80ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ECF8);
  }

  return result;
}

unint64_t sub_227EFEC88()
{
  result = qword_27D80ED00;
  if (!qword_27D80ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED00);
  }

  return result;
}

unint64_t sub_227EFECE0()
{
  result = qword_27D80ED08;
  if (!qword_27D80ED08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED08);
  }

  return result;
}

unint64_t sub_227EFED38()
{
  result = qword_27D80ED10;
  if (!qword_27D80ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED10);
  }

  return result;
}

uint64_t sub_227EFEDA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_227F2B274();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED18, &qword_227F31268);
  swift_allocObject();
  result = sub_227F2BE14();
  qword_27D81B1C0 = result;
  return result;
}

double sub_227EFEE84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v90 = *v2;
  v91 = v2;
  v100 = sub_227F2B4C4();
  v89 = *(v100 - 8);
  MEMORY[0x28223BE20](v100);
  v88 = v4;
  v98 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v5 - 8);
  v99 = &v80 - v6;
  v104 = sub_227F2B274();
  v97 = *(v104 - 8);
  v7 = MEMORY[0x28223BE20](v104);
  v96 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v93 = &v80 - v10;
  v85 = v11;
  MEMORY[0x28223BE20](v9);
  v102 = &v80 - v12;
  v101 = type metadata accessor for RRDResponse(0);
  MEMORY[0x28223BE20](v101);
  v82 = (&v80 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v84 = sub_227F2B474();
  v83 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v15 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RRDRequest(0);
  v87 = *(v16 - 8);
  v17 = *(v87 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v92 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v103 = &v80 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v108 = &v80 - v24;
  v25 = sub_227F2B334();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v95 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v80 - v29;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v25, qword_2813CE070);
  v105 = v26;
  v32 = *(v26 + 16);
  v107 = v25;
  v32(v30, v31, v25);
  sub_227F09940(&qword_27D80ED80, 255, type metadata accessor for RRDRequest, &unk_227F31548);
  sub_227F2B4B4();
  v80 = v32;
  v81 = a1;
  v94 = v30;
  v33 = v108;
  sub_227F09988(v23, v108, type metadata accessor for RRDRequest);
  v34 = v103;
  swift_storeEnumTagMultiPayload();
  LOBYTE(v33) = sub_227F10750(v33, v34);
  sub_227F09C50(v34, type metadata accessor for RRDRequest);
  v35 = v104;
  v36 = v92;
  v37 = v93;
  if ((v33 & 1) == 0)
  {
    goto LABEL_7;
  }

  v38 = sub_227F2B304();
  v39 = sub_227F2B8C4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_227EB2000, v38, v39, "Got config request", v40, 2u);
    MEMORY[0x22AAAD240](v40, -1, -1);
  }

  sub_227F2B464();
  v41 = sub_227F2B494();
  (*(v83 + 8))(v15, v84);
  if ((v41 & 1) == 0)
  {
    v72 = v94;
    v73 = sub_227F2B304();
    v74 = sub_227F2B8E4();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      *v75 = 0;
      _os_log_impl(&dword_227EB2000, v73, v74, "rejecting config request from unentitled peer", v75, 2u);
      v76 = v75;
      v72 = v94;
      MEMORY[0x22AAAD240](v76, -1, -1);
    }

    v77 = v82;
    *v82 = xmmword_227F303D0;
    *(v77 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    sub_227F09940(&qword_27D80ED88, 255, type metadata accessor for RRDResponse, &unk_227F31490);
    sub_227F2B4A4();
    sub_227F09C50(v77, type metadata accessor for RRDResponse);
    sub_227F09C50(v108, type metadata accessor for RRDRequest);
    (*(v105 + 8))(v72, v107);
  }

  else
  {
LABEL_7:
    v42 = v102;
    sub_227F2B264();
    v43 = v97;
    v83 = *(v97 + 16);
    (v83)(v37, v42, v35);
    sub_227F09D78(v108, v36, type metadata accessor for RRDRequest);
    v44 = sub_227F2B304();
    v45 = sub_227F2B8F4();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v109[0] = v82;
      *v46 = 136446466;
      sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v47 = sub_227F2BC24();
      v48 = v37;
      v50 = v49;
      v51 = *(v97 + 8);
      v84 = (v97 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v101 = v51;
      v51(v48, v35);
      v52 = sub_227ECAC40(v47, v50, v109);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2082;
      v53 = sub_227F0A1C4();
      v55 = v54;
      sub_227F09C50(v36, type metadata accessor for RRDRequest);
      v56 = sub_227ECAC40(v53, v55, v109);

      *(v46 + 14) = v56;
      _os_log_impl(&dword_227EB2000, v44, v45, "[%{public}s] Request: %{public}s", v46, 0x16u);
      v57 = v82;
      swift_arrayDestroy();
      MEMORY[0x22AAAD240](v57, -1, -1);
      v58 = v46;
      v43 = v97;
      MEMORY[0x22AAAD240](v58, -1, -1);
    }

    else
    {

      sub_227F09C50(v36, type metadata accessor for RRDRequest);
      v59 = *(v43 + 8);
      v84 = (v43 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v101 = v59;
      v59(v37, v35);
    }

    v60 = v81;
    sub_227F2B484();
    v61 = sub_227F2B854();
    (*(*(v61 - 8) + 56))(v99, 1, 1, v61);
    (v83)(v96, v102, v35);
    sub_227F09D78(v108, v103, type metadata accessor for RRDRequest);
    v62 = v89;
    (*(v89 + 16))(v98, v60, v100);
    v80(v95, v94, v107);
    v63 = (*(v43 + 80) + 32) & ~*(v43 + 80);
    v64 = (v85 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
    v65 = (*(v87 + 80) + v64 + 8) & ~*(v87 + 80);
    v66 = (v17 + *(v62 + 80) + v65) & ~*(v62 + 80);
    v67 = v105;
    v68 = (v88 + *(v105 + 80) + v66) & ~*(v105 + 80);
    v69 = (v86 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    *(v70 + 16) = 0;
    *(v70 + 24) = 0;
    (*(v43 + 32))(v70 + v63, v96, v104);
    *(v70 + v64) = v91;
    sub_227F09988(v103, v70 + v65, type metadata accessor for RRDRequest);
    (*(v62 + 32))(v70 + v66, v98, v100);
    v71 = v107;
    (*(v67 + 32))(v70 + v68, v95, v107);
    *(v70 + v69) = v90;

    sub_227F13F90(0, 0, v99, &unk_227F313A0, v70);

    v101(v102, v104);
    sub_227F09C50(v108, type metadata accessor for RRDRequest);
    (*(v67 + 8))(v94, v71);
  }

  v78 = v106;
  *(v106 + 32) = 0;
  result = 0.0;
  *v78 = 0u;
  v78[1] = 0u;
  return result;
}

uint64_t sub_227EFFCBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a1;
  v8[3] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  v8[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227EFFD64, 0, 0);
}

uint64_t sub_227EFFD64()
{
  if (qword_27D80DF18 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = sub_227F2B274();
  v4 = *(v3 - 8);
  v10 = *(v0 + 48);
  v11 = *(v0 + 32);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *(v5 + 16) = v11;
  *(v5 + 32) = v10;
  *(v5 + 48) = v2;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_227EFFF38;
  v7 = *(v0 + 64);
  v8 = *(v0 + 16);

  return MEMORY[0x282200908](v8, v7, &unk_227F313B0, v5, 0, 0, 0xD00000000000002ALL, 0x8000000227F343E0);
}

void sub_227EFFF38()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    sub_227EB8430(*(v2 + 64), &qword_27D80DFF8, &qword_227F31260);

    v4 = *(v3 + 8);

    v4();
  }
}

uint64_t sub_227F00080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_227F2B274();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for RRDResponse(0);
  v6[9] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[10] = v9;
  v10 = swift_task_alloc();
  v6[11] = v10;
  *v10 = v6;
  v10[1] = sub_227F001CC;

  return sub_227F005F0(v9, a3);
}

uint64_t sub_227F001CC()
{

  return MEMORY[0x2822009F8](sub_227F002C8, 0, 0);
}

uint64_t sub_227F002C8()
{
  v30 = v0;
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[4];
  sub_227F09940(&qword_27D80ED88, 255, type metadata accessor for RRDResponse, &unk_227F31490);
  sub_227F2B4A4();
  (*(v5 + 16))(v3, v6, v4);
  sub_227F09D78(v1, v2, type metadata accessor for RRDResponse);
  v7 = sub_227F2B304();
  v8 = sub_227F2B8F4();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[9];
  v10 = v0[10];
  v13 = v0[6];
  v12 = v0[7];
  v14 = v0[5];
  if (v9)
  {
    v28 = v0[10];
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v15 = 136446466;
    sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_227F2BC24();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    v19 = sub_227ECAC40(v16, v18, &v29);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_227F0E118();
    v22 = v21;
    sub_227F09C50(v11, type metadata accessor for RRDResponse);
    v23 = sub_227ECAC40(v20, v22, &v29);

    *(v15 + 14) = v23;
    _os_log_impl(&dword_227EB2000, v7, v8, "[%{public}s] Response: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v27, -1, -1);
    MEMORY[0x22AAAD240](v15, -1, -1);

    v24 = v28;
  }

  else
  {

    sub_227F09C50(v11, type metadata accessor for RRDResponse);
    (*(v13 + 8))(v12, v14);
    v24 = v10;
  }

  sub_227F09C50(v24, type metadata accessor for RRDResponse);

  v25 = v0[1];

  return v25();
}

uint64_t sub_227F005F0(uint64_t a1, uint64_t a2)
{
  v3[59] = a2;
  v3[60] = v2;
  v3[58] = a1;
  type metadata accessor for ResourceUpdatesRequest(0);
  v3[61] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v3[64] = type metadata accessor for RRDRequest(0);
  v3[65] = swift_task_alloc();
  v4 = sub_227F2B114();
  v3[66] = v4;
  v3[67] = *(v4 - 8);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F00784, v2, 0);
}

uint64_t sub_227F00784()
{
  v59 = v0;
  sub_227F09D78(v0[59], v0[65], type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (qword_2813CD578 != -1)
      {
        swift_once();
      }

      v30 = sub_227F2B334();
      __swift_project_value_buffer(v30, qword_2813CE070);

      v31 = sub_227F2B304();
      v32 = sub_227F2B8E4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v58 = v34;
        *v33 = 136315138;
        v35 = sub_227F08A48();
        v37 = sub_227ECAC40(v35, v36, &v58);

        *(v33 + 4) = v37;
        _os_log_impl(&dword_227EB2000, v31, v32, "%s used deprecated resourceUpdatesFolder RRDRequest", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x22AAAD240](v34, -1, -1);
        MEMORY[0x22AAAD240](v33, -1, -1);
      }

      (*(v0[67] + 56))(v0[63], 1, 1, v0[66]);
      v38 = swift_task_alloc();
      v0[73] = v38;
      *v38 = v0;
      v38[1] = sub_227F010A0;
      v39 = v0[71];
      v40 = v0[63];
      goto LABEL_19;
    }

    sub_227EFC98C(v45, v0 + 2);
    v50 = sub_227EFA0D0();
    v52 = v51;
    v53 = v0[58];
    sub_227F098EC((v0 + 2));

    *v53 = v50;
    v53[1] = v52;
    type metadata accessor for RRDResponse(0);
    swift_storeEnumTagMultiPayload();

    v54 = v0[1];

    return v54();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v2 = v0[70];
      v3 = v0[67];
      v4 = v0[66];
      v5 = v0[65];
      v6 = *(v3 + 32);
      v0[75] = v6;
      v0[76] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
      v6(v2, v5, v4);
      if (qword_2813CD578 != -1)
      {
        swift_once();
      }

      v7 = v0[70];
      v8 = v0[69];
      v9 = v0[67];
      v10 = v0[66];
      v11 = sub_227F2B334();
      __swift_project_value_buffer(v11, qword_2813CE070);
      v12 = *(v9 + 16);
      v12(v8, v7, v10);

      v13 = sub_227F2B304();
      v14 = sub_227F2B8E4();

      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[69];
      v17 = v0[67];
      v18 = v0[66];
      if (v15)
      {
        v19 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v58 = v56;
        *v19 = 136315394;
        v20 = sub_227F08A48();
        v57 = v12;
        v22 = sub_227ECAC40(v20, v21, &v58);

        *(v19 + 4) = v22;
        *(v19 + 12) = 2080;
        sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v23 = sub_227F2BC24();
        v25 = v24;
        log = v13;
        v26 = v14;
        v27 = *(v17 + 8);
        v27(v16, v18);
        v28 = v23;
        v12 = v57;
        v29 = sub_227ECAC40(v28, v25, &v58);

        *(v19 + 14) = v29;
        _os_log_impl(&dword_227EB2000, log, v26, "%s used deprecated resourceUpdatesFolderForAssets RRDRequest, using assets URL: %s", v19, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAAD240](v56, -1, -1);
        MEMORY[0x22AAAD240](v19, -1, -1);
      }

      else
      {

        v27 = *(v17 + 8);
        v27(v16, v18);
      }

      v0[77] = v27;
      v46 = v0[67];
      v47 = v0[66];
      v48 = v0[62];
      v12(v48, v0[70], v47);
      (*(v46 + 56))(v48, 0, 1, v47);
      v49 = swift_task_alloc();
      v0[78] = v49;
      *v49 = v0;
      v49[1] = sub_227F01320;
      v39 = v0[68];
      v40 = v0[62];
LABEL_19:

      return sub_227F02140(v39, v40);
    }

    sub_227F09988(v0[65], v0[61], type metadata accessor for ResourceUpdatesRequest);
    v41 = swift_task_alloc();
    v0[80] = v41;
    *v41 = v0;
    v41[1] = sub_227F015B8;
    v42 = v0[61];
    v43 = v0[58];

    return sub_227F03254(v43, v42);
  }
}

uint64_t sub_227F010A0()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  v3 = *(v2 + 504);
  v4 = *(v2 + 480);
  sub_227EB8430(v3, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {
    v5 = sub_227F017D4;
  }

  else
  {
    v5 = sub_227F011F8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227F011F8()
{
  v1 = v0[67];
  v2 = v0[72];
  v3 = v0[66];
  v4 = v0[58];
  (*(v1 + 32))(v2, v0[71], v3);
  sub_227F030B0(v4);
  (*(v1 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227F01320()
{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 496);
  v4 = *(v2 + 480);
  sub_227EB8430(v3, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {
    v5 = sub_227F01AE4;
  }

  else
  {
    v5 = sub_227F01478;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_227F01478()
{
  (*(v0 + 616))(*(v0 + 560), *(v0 + 528));
  v1 = *(v0 + 576);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 464);
  (*(v0 + 600))(v1, *(v0 + 544), v3);
  sub_227F030B0(v4);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_227F015B8()
{
  v2 = *v1;
  *(*v1 + 648) = v0;

  v3 = *(v2 + 480);
  if (v0)
  {
    v4 = sub_227F01E14;
  }

  else
  {
    v4 = sub_227F016E4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_227F016E4()
{
  sub_227F09C50(*(v0 + 488), type metadata accessor for ResourceUpdatesRequest);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F017D4()
{
  v21 = v0;
  v1 = v0[74];
  swift_getErrorValue();
  sub_227EBAEA0(v0[55], v19);
  v2 = v19[0];
  v3 = v19[1];
  v4 = v20;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);

  sub_227EC1714(v2, v3, v4);
  v6 = sub_227F2B304();
  v7 = sub_227F2B8E4();

  sub_227EC172C(v2, v3, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v8 = 136446466;
    v10 = sub_227F08A48();
    v12 = sub_227ECAC40(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v13 = v2;
    *(v13 + 8) = v3;
    *(v13 + 16) = v4;
    sub_227EC1714(v2, v3, v4);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_227EB2000, v6, v7, "%{public}s Request failed: %{public}@", v8, 0x16u);
    sub_227EB8430(v9, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAAD240](v18, -1, -1);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[58];
  *v15 = v2;
  *(v15 + 8) = v3;
  *(v15 + 16) = v4;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();

  v16 = v0[1];

  return v16();
}

uint64_t sub_227F01AE4()
{
  v21 = v0;
  (*(v0 + 616))(*(v0 + 560), *(v0 + 528));
  v1 = *(v0 + 632);
  swift_getErrorValue();
  sub_227EBAEA0(*(v0 + 440), v19);
  v2 = v19[0];
  v3 = v19[1];
  v4 = v20;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);

  sub_227EC1714(v2, v3, v4);
  v6 = sub_227F2B304();
  v7 = sub_227F2B8E4();

  sub_227EC172C(v2, v3, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v8 = 136446466;
    v10 = sub_227F08A48();
    v12 = sub_227ECAC40(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v13 = v2;
    *(v13 + 8) = v3;
    *(v13 + 16) = v4;
    sub_227EC1714(v2, v3, v4);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_227EB2000, v6, v7, "%{public}s Request failed: %{public}@", v8, 0x16u);
    sub_227EB8430(v9, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAAD240](v18, -1, -1);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 464);
  *v15 = v2;
  *(v15 + 8) = v3;
  *(v15 + 16) = v4;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227F01E14()
{
  v21 = v0;
  sub_227F09C50(v0[61], type metadata accessor for ResourceUpdatesRequest);
  v1 = v0[81];
  swift_getErrorValue();
  sub_227EBAEA0(v0[55], v19);
  v2 = v19[0];
  v3 = v19[1];
  v4 = v20;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);

  sub_227EC1714(v2, v3, v4);
  v6 = sub_227F2B304();
  v7 = sub_227F2B8E4();

  sub_227EC172C(v2, v3, v4);
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19[0] = v18;
    *v8 = 136446466;
    v10 = sub_227F08A48();
    v12 = sub_227ECAC40(v10, v11, v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2114;
    sub_227EBFEF4();
    swift_allocError();
    *v13 = v2;
    *(v13 + 8) = v3;
    *(v13 + 16) = v4;
    sub_227EC1714(v2, v3, v4);
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v14;
    *v9 = v14;
    _os_log_impl(&dword_227EB2000, v6, v7, "%{public}s Request failed: %{public}@", v8, 0x16u);
    sub_227EB8430(v9, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAAD240](v18, -1, -1);
    MEMORY[0x22AAAD240](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[58];
  *v15 = v2;
  *(v15 + 8) = v3;
  *(v15 + 16) = v4;
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();

  v16 = v0[1];

  return v16();
}

uint64_t sub_227F02140(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_227F2B2E4();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v5 = sub_227F2BA34();
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_227F2BA54();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F02310, v2, 0);
}

uint64_t sub_227F02310(uint64_t a1, uint64_t a2)
{
  v4 = v2[9];
  v3 = v2[10];
  v2[24] = sub_227F09940(&qword_27D80ED30, a2, type metadata accessor for RRDPeerHandler, &unk_227F31230);
  v5 = swift_task_alloc();
  v2[25] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  if (v3)
  {
    swift_getObjectType();
    v6 = sub_227F2B7B4();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v2[26] = v6;
  v2[27] = v8;

  return MEMORY[0x2822009F8](sub_227F023F4, v6, v8);
}

uint64_t sub_227F023F4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 152);
  v3 = *(v0 + 160);
  v5 = *(v0 + 136);
  v6 = *(v0 + 144);
  sub_227F2BA44();
  sub_227F2BA14();
  sub_227F2BA24();
  v7 = *(v6 + 8);
  *(v0 + 224) = v7;
  *(v0 + 232) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v8 = swift_allocObject();
  *(v0 + 240) = v8;
  *(v8 + 16) = &unk_227F31318;
  *(v8 + 24) = v1;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  v10 = swift_task_alloc();
  *(v0 + 248) = v10;
  v10[2] = &unk_227F31328;
  v10[3] = v8;
  v10[4] = v3;
  v10[5] = v0 + 16;
  v10[6] = v2;
  v11 = swift_task_alloc();
  *(v0 + 256) = v11;
  *v11 = v0;
  v11[1] = sub_227F025D0;
  v12 = *(v0 + 128);

  return MEMORY[0x282200600](v12, v9);
}

uint64_t sub_227F025D0()
{
  v1 = *v0;

  v2 = *(v1 + 216);
  v3 = *(v1 + 208);

  return MEMORY[0x2822009F8](sub_227F02714, v3, v2);
}

uint64_t sub_227F02714()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  sub_227EC2180(v0[16], v0[15], &qword_27D80ED60, &qword_227F31308);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v6 = v0[28];
  v8 = v0[22];
  v7 = v0[23];
  v9 = v0[20];
  v10 = v0[21];
  if (EnumCaseMultiPayload == 1)
  {
    v12 = v0[16];
    v11 = v0[17];
    v13 = v0[10];
    v14 = *v0[15];
    v0[33] = v14;
    v0[5] = v14;
    v0[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
    swift_willThrowTypedImpl();
    sub_227EB8430(v12, &qword_27D80ED60, &qword_227F31308);
    v6(v9, v11);
    (*(v8 + 8))(v7, v10);

    v2 = sub_227F029AC;
    v3 = v13;
    v4 = 0;

    return MEMORY[0x2822009F8](v2, v3, v4);
  }

  v20 = v0[17];
  v15 = v0[15];
  v16 = v0[8];
  sub_227EB8430(v0[16], &qword_27D80ED60, &qword_227F31308);
  v17 = sub_227F2B114();
  (*(*(v17 - 8) + 32))(v16, v15, v17);
  v6(v9, v20);
  (*(v8 + 8))(v7, v10);

  v18 = v0[1];

  return v18();
}

uint64_t sub_227F029AC()
{
  v1 = *(v0 + 264);
  *(v0 + 48) = v1;
  v2 = v1;
  v3 = v1;
  if (swift_dynamicCast())
  {
  }

  else
  {
    *(v0 + 56) = *(v0 + 264);
    if (!swift_dynamicCast())
    {
      goto LABEL_10;
    }

    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  if (qword_2813CD570 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 264);
  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE058);
  v6 = v4;
  v7 = sub_227F2B304();
  v8 = sub_227F2B8E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_227EB2000, v7, v8, "Error fetching resource updates: %@", v10, 0xCu);
    sub_227EB8430(v11, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v11, -1, -1);
    MEMORY[0x22AAAD240](v10, -1, -1);
  }

  v14 = *(v0 + 264);

  sub_227EBFEF4();
  swift_allocError();
  *v15 = xmmword_227F30400;
  *(v15 + 16) = 2;
  swift_willThrow();

LABEL_10:

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227F02C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  type metadata accessor for ContainerizableURL(0);
  v3[5] = swift_task_alloc();
  v4 = sub_227F2B114();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = type metadata accessor for FileInfo(0);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F02D6C, 0, 0);
}

uint64_t sub_227F02D6C()
{
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_227F02E0C;
  v2 = v0[10];
  v3 = v0[4];

  return sub_227F14290(v2, v3);
}

uint64_t sub_227F02E0C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_227F03034;
  }

  else
  {
    v2 = sub_227F02F20;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F02F20()
{
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  sub_227F09D78(v1 + *(v0[9] + 20), v5, type metadata accessor for ContainerizableURL);
  sub_227F09C50(v1, type metadata accessor for FileInfo);
  (*(v3 + 32))(v2, v5, v4);
  sub_227F2B064();
  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_227F03034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F030B0@<X0>(void *a1@<X8>)
{
  v2 = objc_allocWithZone(MEMORY[0x277CCAC90]);
  v3 = sub_227F2B044();
  v4 = [v2 initWithURL:v3 readonly:1];

  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);
  v6 = v4;
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_227EB2000, v7, v8, "Made security scoped wrapper: %@", v9, 0xCu);
    sub_227EB8430(v10, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v10, -1, -1);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  *a1 = v6;
  type metadata accessor for RRDResponse(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_227F03254(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_227F2B2E4();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_227F2B454();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for ContainerizableURL(0);
  v3[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED20, &qword_227F31270);
  v3[19] = swift_task_alloc();
  v6 = type metadata accessor for ResourceUpdatesResponse(0);
  v3[20] = v6;
  v3[21] = *(v6 - 8);
  v3[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  v3[24] = swift_task_alloc();
  v7 = type metadata accessor for Manifest(0);
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  type metadata accessor for ResourceInfo(0);
  v3[28] = swift_task_alloc();
  v3[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v8 = sub_227F2BA34();
  v3[32] = v8;
  v3[33] = *(v8 - 8);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v9 = sub_227F2BA54();
  v3[36] = v9;
  v3[37] = *(v9 - 8);
  v3[38] = swift_task_alloc();
  v10 = type metadata accessor for FileInfo(0);
  v3[39] = v10;
  v3[40] = *(v10 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v11 = sub_227F2B114();
  v3[44] = v11;
  v3[45] = *(v11 - 8);
  v3[46] = swift_task_alloc();
  v3[47] = swift_task_alloc();
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F0372C, v2, 0);
}

uint64_t sub_227F0372C()
{
  v1 = v0[49];
  v2 = v0[44];
  v3 = v0[45];
  v4 = v0[10];
  v5 = v0[11];
  v6 = *(v3 + 16);
  v0[50] = v6;
  v0[51] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v0[52] = sub_227F09940(&qword_27D80ED30, v7, type metadata accessor for RRDPeerHandler, &unk_227F31230);
  v8 = swift_task_alloc();
  v0[53] = v8;
  *(v8 + 16) = v5;
  *(v8 + 24) = v1;
  if (v5)
  {
    swift_getObjectType();
    v9 = sub_227F2B7B4();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  v0[54] = v9;
  v0[55] = v11;

  return MEMORY[0x2822009F8](sub_227F03838, v9, v11);
}

uint64_t sub_227F03838()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 304);
  v4 = *(v0 + 272);
  v3 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);
  sub_227F2BA44();
  sub_227F2BA14();
  sub_227F2BA24();
  v7 = *(v6 + 8);
  *(v0 + 448) = v7;
  *(v0 + 456) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  v8 = swift_allocObject();
  *(v0 + 464) = v8;
  *(v8 + 16) = &unk_227F31288;
  *(v8 + 24) = v1;
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;
  *(v0 + 32) = 1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  v10 = swift_task_alloc();
  *(v0 + 472) = v10;
  v10[2] = &unk_227F31298;
  v10[3] = v8;
  v10[4] = v3;
  v10[5] = v0 + 16;
  v10[6] = v2;
  v11 = swift_task_alloc();
  *(v0 + 480) = v11;
  *v11 = v0;
  v11[1] = sub_227F03A14;
  v12 = *(v0 + 248);

  return MEMORY[0x282200600](v12, v9);
}

uint64_t sub_227F03A14()
{
  v1 = *v0;

  v2 = *(v1 + 440);
  v3 = *(v1 + 432);

  return MEMORY[0x2822009F8](sub_227F03B58, v3, v2);
}

uint64_t sub_227F03B58()
{
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    sub_227EC2180(v0[31], v0[30], &qword_27D80ED28, &qword_227F31278);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v6 = v0[56];
    if (EnumCaseMultiPayload == 1)
    {
      v8 = v0[37];
      v7 = v0[38];
      v10 = v0[35];
      v9 = v0[36];
      v12 = v0[31];
      v11 = v0[32];
      v13 = v0[11];
      v14 = *v0[30];
      v0[61] = v14;
      v0[5] = v14;
      v0[62] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E378, &qword_227F2FE20);
      swift_willThrowTypedImpl();
      sub_227EB8430(v12, &qword_27D80ED28, &qword_227F31278);
      v6(v10, v11);
      (*(v8 + 8))(v7, v9);

      v2 = sub_227F04C4C;
      v3 = v13;
    }

    else
    {
      v15 = v0[42];
      v16 = v0[37];
      v17 = v0[38];
      v19 = v0[35];
      v18 = v0[36];
      v20 = v0[32];
      v21 = v0[30];
      v23 = v0[11];
      sub_227EB8430(v0[31], &qword_27D80ED28, &qword_227F31278);
      sub_227F09988(v21, v15, type metadata accessor for FileInfo);
      v6(v19, v20);
      (*(v16 + 8))(v17, v18);

      v2 = sub_227F03D74;
      v3 = v23;
    }

    v4 = 0;
  }

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_227F03D74()
{
  v118 = v0;
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[11];
  sub_227F09988(v0[42], v0[43], type metadata accessor for FileInfo);
  v4 = *(*(v3 + 112) + 32);
  v5 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);

  os_unfair_lock_lock(v5);
  v6 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v7 = type metadata accessor for PersistenceState(0);
  sub_227F09D78(v6 + *(v7 + 20), v1, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v5);
  os_unfair_lock_lock(v5);
  v8 = (v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v8 + *(v9 + 28), v6, v0 + 8, v2);
  v10 = v0[25];
  v11 = v0[26];
  v12 = v0[24];
  os_unfair_lock_unlock(v8);
  os_unfair_lock_unlock(v5);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    v13 = v0[24];
    v14 = &qword_27D80EB28;
    v15 = &qword_227F30440;
LABEL_3:
    sub_227EB8430(v13, v14, v15);
    if (qword_2813CD578 != -1)
    {
      swift_once();
    }

    v16 = sub_227F2B334();
    __swift_project_value_buffer(v16, qword_2813CE070);
    v17 = sub_227F2B304();
    v18 = sub_227F2B8E4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_227EB2000, v17, v18, "Missing manifest.", v19, 2u);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    v20 = v0[43];
    v21 = v0[28];

    sub_227EBFEF4();
    swift_allocError();
    *v22 = xmmword_227F311A0;
    *(v22 + 16) = 2;
    swift_willThrow();

    goto LABEL_8;
  }

  v25 = v0[39];
  v26 = v0[40];
  v27 = v0[28];
  v28 = v0[23];
  sub_227F09988(v0[24], v0[27], type metadata accessor for Manifest);
  sub_227EC2180(v27, v28, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v26 + 48))(v28, 1, v25) == 1)
  {
    v29 = v0[23];
    sub_227F09C50(v0[27], type metadata accessor for Manifest);
    v14 = &qword_27D80E8F0;
    v15 = &unk_227F2F4B0;
    v13 = v29;
    goto LABEL_3;
  }

  v30 = v0[27];
  v31 = sub_227F09988(v0[23], v0[41], type metadata accessor for FileInfo);
  if (*(v30 + 16) != 1)
  {
    if (qword_2813CD578 != -1)
    {
      swift_once();
    }

    v47 = sub_227F2B334();
    __swift_project_value_buffer(v47, qword_2813CE070);
    v48 = sub_227F2B304();
    v49 = sub_227F2B8E4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_227EB2000, v48, v49, "Manifest is unsupported.", v50, 2u);
      MEMORY[0x22AAAD240](v50, -1, -1);
    }

    v20 = v0[43];
    v51 = v0[41];
    v52 = v0[27];
    v21 = v0[28];

    sub_227EBFEF4();
    swift_allocError();
    *v53 = xmmword_227F303E0;
    *(v53 + 16) = 2;
    swift_willThrow();

    sub_227F09C50(v51, type metadata accessor for FileInfo);
    v54 = v52;
    goto LABEL_22;
  }

  v32 = v0[43];
  v33 = v0[27];
  v34 = v0[20];
  v35 = v0[21];
  v36 = v0[19];
  v37 = v0[10];
  sub_227F052E0(v31, v33, v0[41], v32);
  v38 = type metadata accessor for ResourceUpdatesRequest(0);
  sub_227F0598C(v33, v32, *(v37 + *(v38 + 20) + 8), *(v37 + *(v38 + 20) + 16), *(v37 + *(v38 + 20) + 24), v36);
  if ((*(v35 + 48))(v36, 1, v34) == 1)
  {
    v114 = v0[50];
    v40 = v0[47];
    v39 = v0[48];
    v41 = v0[44];
    v42 = v0[45];
    v43 = v0[43];
    v44 = v0[39];
    v45 = v0[18];
    sub_227EB8430(v0[19], &qword_27D80ED20, &qword_227F31270);
    sub_227F09D78(v43 + *(v44 + 20), v45, type metadata accessor for ContainerizableURL);
    (*(v42 + 32))(v39, v45, v41);
    sub_227EC14F8();
    v114(v40, v39, v41);
    v46 = sub_227F05188(v40);
    v64 = qword_2813CD578;
    v65 = v46;
    v66 = v65;
    if (v64 != -1)
    {
      swift_once();
    }

    v67 = v0[50];
    v68 = v0[48];
    v69 = v0[46];
    v70 = v0[44];
    v71 = sub_227F2B334();
    __swift_project_value_buffer(v71, qword_2813CE070);
    v67(v69, v68, v70);
    v72 = sub_227F2B304();
    v73 = sub_227F2B8D4();
    v74 = os_log_type_enabled(v72, v73);
    v76 = v0[45];
    v75 = v0[46];
    v77 = v0[44];
    if (v74)
    {
      v111 = v66;
      v78 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v117 = v108;
      *v78 = 136315138;
      sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v79 = sub_227F2BC24();
      v81 = v80;
      v115 = *(v76 + 8);
      v115(v75, v77);
      v82 = sub_227ECAC40(v79, v81, &v117);

      *(v78 + 4) = v82;
      _os_log_impl(&dword_227EB2000, v72, v73, "Opened FileHandle to %s", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v108);
      MEMORY[0x22AAAD240](v108, -1, -1);
      v83 = v78;
      v66 = v111;
      MEMORY[0x22AAAD240](v83, -1, -1);
    }

    else
    {

      v115 = *(v76 + 8);
      v115(v75, v77);
    }

    if (xpc_fd_create([v66 fileDescriptor]))
    {
      v84 = v0[48];
      v102 = v0[44];
      v104 = v0[41];
      v105 = v0[28];
      v116 = v0[27];
      v85 = v0[16];
      v106 = v0[17];
      v107 = v0[43];
      v109 = v0[15];
      v112 = v0[25];
      v86 = v0[9];
      sub_227F2B444();

      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
      v103 = *(v87 + 48);
      v88 = (v86 + *(v87 + 64));
      v89 = sub_227F2B024();
      v91 = v90;

      v115(v84, v102);
      sub_227F09C50(v104, type metadata accessor for FileInfo);
      sub_227F09C50(v105, type metadata accessor for ResourceInfo);
      sub_227F09C50(v107, type metadata accessor for FileInfo);
      *v86 = v89;
      v86[1] = v91;
      (*(v85 + 32))(v86 + v103, v106, v109);
      v92 = (v116 + *(v112 + 36));
      v93 = *v92;
      v94 = v92[1];

      sub_227F09C50(v116, type metadata accessor for Manifest);
      *v88 = v93;
      v88[1] = v94;
      (*(*(v87 - 8) + 56))(v86, 0, 2, v87);
      type metadata accessor for RRDResponse(0);
      swift_storeEnumTagMultiPayload();
      v63 = v115;
      goto LABEL_24;
    }

    v113 = v66;

    v95 = sub_227F2B304();
    v96 = sub_227F2B8E4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      _os_log_impl(&dword_227EB2000, v95, v96, "Couldn't send file handle to client.", v97, 2u);
      MEMORY[0x22AAAD240](v97, -1, -1);
    }

    v98 = v0[48];
    v99 = v0[44];
    v20 = v0[43];
    v100 = v0[41];
    v21 = v0[28];
    v110 = v0[27];

    sub_227EBFEF4();
    swift_allocError();
    *v101 = xmmword_227F2CBE0;
    *(v101 + 16) = 2;
    swift_willThrow();

    v115(v98, v99);
    sub_227F09C50(v100, type metadata accessor for FileInfo);
    v54 = v110;
LABEL_22:
    sub_227F09C50(v54, type metadata accessor for Manifest);
LABEL_8:
    sub_227F09C50(v21, type metadata accessor for ResourceInfo);
    sub_227F09C50(v20, type metadata accessor for FileInfo);
    (*(v0[45] + 8))(v0[49], v0[44]);

    v23 = v0[1];
    goto LABEL_9;
  }

  v55 = v0[45];
  v56 = v0[43];
  v57 = v0[41];
  v59 = v0[27];
  v58 = v0[28];
  v60 = v0[22];
  v61 = v0[19];
  v62 = v0[9];

  sub_227F09C50(v57, type metadata accessor for FileInfo);
  sub_227F09C50(v59, type metadata accessor for Manifest);
  sub_227F09C50(v58, type metadata accessor for ResourceInfo);
  sub_227F09C50(v56, type metadata accessor for FileInfo);
  sub_227F09988(v61, v60, type metadata accessor for ResourceUpdatesResponse);
  sub_227F09988(v60, v62, type metadata accessor for ResourceUpdatesResponse);
  type metadata accessor for RRDResponse(0);
  swift_storeEnumTagMultiPayload();
  v63 = *(v55 + 8);
LABEL_24:
  v63(v0[49], v0[44]);

  v23 = v0[1];
LABEL_9:

  return v23();
}

uint64_t sub_227F04C4C()
{
  v1 = *(v0 + 488);
  *(v0 + 48) = v1;
  v2 = v1;
  v3 = v1;
  if (swift_dynamicCast())
  {
  }

  else
  {
    *(v0 + 56) = *(v0 + 488);
    if (!swift_dynamicCast())
    {
      goto LABEL_10;
    }

    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
  }

  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v4 = *(v0 + 488);
  v5 = sub_227F2B334();
  __swift_project_value_buffer(v5, qword_2813CE070);
  v6 = v4;
  v7 = sub_227F2B304();
  v8 = sub_227F2B8E4();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 488);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    v12 = v9;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v13;
    *v11 = v13;
    _os_log_impl(&dword_227EB2000, v7, v8, "Error fetching resource updates: %@", v10, 0xCu);
    sub_227EB8430(v11, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v11, -1, -1);
    MEMORY[0x22AAAD240](v10, -1, -1);
  }

  v14 = *(v0 + 488);

  sub_227EBFEF4();
  swift_allocError();
  *v15 = xmmword_227F30400;
  *(v15 + 16) = 2;
  swift_willThrow();

LABEL_10:
  (*(*(v0 + 360) + 8))(*(v0 + 392), *(v0 + 352));

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_227F04FD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227F04FF4, 0, 0);
}

uint64_t sub_227F04FF4()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_227F05094;
  v2 = v0[4];
  v3 = v0[2];

  return sub_227F15758(v3, v2);
}

uint64_t sub_227F05094()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

id sub_227F05188(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_227F2B044();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_227F2B114();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_227F2AFC4();

    swift_willThrow();
    v9 = sub_227F2B114();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

void sub_227F052E0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v66 = a2;
  v6 = type metadata accessor for ContainerizableURL(0);
  MEMORY[0x28223BE20](v6 - 8);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_227F2B114();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v63 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for Manifest(0);
  MEMORY[0x28223BE20](v61);
  v10 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for FileInfo(0);
  v11 = MEMORY[0x28223BE20](v62);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v57 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v57 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - v20;
  if (qword_2813CD578 != -1)
  {
    swift_once();
  }

  v22 = sub_227F2B334();
  __swift_project_value_buffer(v22, qword_2813CE070);
  sub_227F09D78(a3, v21, type metadata accessor for FileInfo);
  sub_227F09D78(v66, v10, type metadata accessor for Manifest);
  sub_227F09D78(a4, v19, type metadata accessor for FileInfo);
  sub_227F09D78(a4, v16, type metadata accessor for FileInfo);
  sub_227F09D78(a4, v13, type metadata accessor for FileInfo);

  v23 = sub_227F2B304();
  v24 = sub_227F2B8F4();

  if (os_log_type_enabled(v23, v24))
  {
    v59 = v24;
    v60 = v23;
    v66 = v13;
    v25 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v68 = v58;
    *v25 = 136447490;
    v26 = sub_227F08A48();
    v28 = sub_227ECAC40(v26, v27, &v68);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    sub_227F09940(&qword_27D80E008, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v29 = sub_227F2BC24();
    v31 = v30;
    sub_227F09C50(v21, type metadata accessor for FileInfo);
    v32 = sub_227ECAC40(v29, v31, &v68);

    *(v25 + 14) = v32;
    *(v25 + 22) = 2082;
    v33 = &v10[*(v61 + 36)];
    v34 = *v33;
    v35 = v33[1];

    sub_227F09C50(v10, type metadata accessor for Manifest);
    v36 = sub_227ECAC40(v34, v35, &v68);

    *(v25 + 24) = v36;
    *(v25 + 32) = 2082;
    v37 = sub_227F2BC24();
    v39 = v38;
    sub_227F09C50(v19, type metadata accessor for FileInfo);
    v40 = sub_227ECAC40(v37, v39, &v68);

    *(v25 + 34) = v40;
    *(v25 + 42) = 2082;
    v41 = v62;
    v42 = &v16[*(v62 + 32)];
    if (v42[1])
    {
      v43 = *v42;
      v44 = v42[1];
    }

    else
    {
      v44 = 0xE700000000000000;
      v43 = 0x676E697373696DLL;
    }

    sub_227F09C50(v16, type metadata accessor for FileInfo);
    v45 = sub_227ECAC40(v43, v44, &v68);

    *(v25 + 44) = v45;
    *(v25 + 52) = 2080;
    v46 = v66;
    v47 = v64;
    sub_227F09D78(&v66[*(v41 + 20)], v64, type metadata accessor for ContainerizableURL);
    v48 = v65;
    v49 = v63;
    v50 = v67;
    (*(v65 + 32))(v63, v47, v67);
    v51 = sub_227F2BC24();
    v53 = v52;
    (*(v48 + 8))(v49, v50);
    sub_227F09C50(v46, type metadata accessor for FileInfo);
    v54 = sub_227ECAC40(v51, v53, &v68);

    *(v25 + 54) = v54;
    v55 = v60;
    _os_log_impl(&dword_227EB2000, v60, v59, "%{public}s Response context: Manifest (URL: %{public}s, digest: %{public}s), Updates (URL: %{public}s, digest: %{public}s, path: %s)", v25, 0x3Eu);
    v56 = v58;
    swift_arrayDestroy();
    MEMORY[0x22AAAD240](v56, -1, -1);
    MEMORY[0x22AAAD240](v25, -1, -1);
  }

  else
  {

    sub_227F09C50(v13, type metadata accessor for FileInfo);
    sub_227F09C50(v16, type metadata accessor for FileInfo);
    sub_227F09C50(v19, type metadata accessor for FileInfo);
    sub_227F09C50(v10, type metadata accessor for Manifest);
    sub_227F09C50(v21, type metadata accessor for FileInfo);
  }
}

uint64_t sub_227F0598C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v11 = (a2 + *(type metadata accessor for FileInfo(0) + 32));
  v12 = v11[1];
  if (!v12)
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v22 = sub_227F2B334();
    __swift_project_value_buffer(v22, qword_2813CE058);
    v23 = sub_227F2B304();
    v24 = sub_227F2B8D4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_227EB2000, v23, v24, "Upgrading from a store with no updates digest.", v25, 2u);
      MEMORY[0x22AAAD240](v25, -1, -1);
    }

    goto LABEL_23;
  }

  if (!a3 || (*v11 == a4 ? (v13 = v12 == a5) : (v13 = 0), !v13 && (sub_227F2BC64() & 1) == 0))
  {
LABEL_23:
    v26 = 1;
    goto LABEL_30;
  }

  v14 = (a1 + *(type metadata accessor for Manifest(0) + 36));
  v15 = *v14 == a4 && v14[1] == a5;
  if (v15 || (sub_227F2BC64() & 1) != 0)
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v16 = sub_227F2B334();
    __swift_project_value_buffer(v16, qword_2813CE058);

    v17 = sub_227F2B304();
    v18 = sub_227F2B8F4();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_227ECAC40(a4, a5, &v36);
      _os_log_impl(&dword_227EB2000, v17, v18, "Updates cached are still current. (digest: %s)", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x22AAAD240](v20, -1, -1);
      MEMORY[0x22AAAD240](v19, -1, -1);
    }

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
    (*(*(v21 - 8) + 56))(a6, 1, 2, v21);
  }

  else
  {
    if (qword_2813CD570 != -1)
    {
      swift_once();
    }

    v27 = sub_227F2B334();
    __swift_project_value_buffer(v27, qword_2813CE058);

    v28 = sub_227F2B304();
    v29 = sub_227F2B8F4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v36 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_227ECAC40(a4, a5, &v36);
      _os_log_impl(&dword_227EB2000, v28, v29, "Updates cached are not the latest, but we're still in the grace period window. (digest: %s)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAAD240](v31, -1, -1);
      MEMORY[0x22AAAD240](v30, -1, -1);
    }

    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
    (*(*(v32 - 8) + 56))(a6, 2, 2, v32);
  }

  v26 = 0;
LABEL_30:
  v33 = type metadata accessor for ResourceUpdatesResponse(0);
  v34 = *(*(v33 - 8) + 56);

  return v34(a6, v26, 1, v33);
}

uint64_t sub_227F05E04()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227F05E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RRDPeerHandler();

  return MEMORY[0x282200168](a1, v5, a3);
}

uint64_t sub_227F05EDC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227ED03CC;

  return v6(a1);
}

uint64_t sub_227F05FD4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227EFA0C4;

  return v6(a1);
}

uint64_t sub_227F060CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v17;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED70, &qword_227F31350);
  *(v8 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED78, &qword_227F31358);
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = sub_227F2BA54();
  *(v8 + 136) = v11;
  v12 = *(v11 - 8);
  *(v8 + 144) = v12;
  *(v8 + 152) = *(v12 + 64);
  *(v8 + 160) = swift_task_alloc();
  v13 = sub_227F2BA34();
  *(v8 + 168) = v13;
  v14 = *(v13 - 8);
  *(v8 + 176) = v14;
  *(v8 + 184) = *(v14 + 64);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F06350, 0, 0);
}

uint64_t sub_227F06350()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 144);
  v24 = *(v0 + 136);
  v23 = *(v0 + 72);
  v18 = *(v0 + 224);
  v28 = *(v0 + 64);
  v27 = *(v0 + 56);
  v4 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v5 = sub_227F2B854();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v20;
  v7[5] = v4;

  sub_227F07C78(v1, &unk_227F31368, v7, &unk_283B50D40, &qword_27D80ED68, &qword_227F31330, &unk_227F31388);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v21, v17, v3);
  (*(v22 + 16))(v25, v23, v24);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v22 + 80) + v9 + 17) & ~*(v22 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v8, v21, v3);
  v12 = v11 + v9;
  *v12 = v27;
  *(v12 + 8) = v28;
  *(v12 + 16) = v18 & 1;
  (*(v22 + 32))(v11 + v10, v25, v24);
  sub_227F07C78(v1, &unk_227F31378, v11, &unk_283B50D40, &qword_27D80ED68, &qword_227F31330, &unk_227F31388);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  *(v0 + 208) = *v19;
  sub_227F2B804();
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_227F066C8;
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);

  return MEMORY[0x2822002E8](v14, 0, 0, v15);
}

uint64_t sub_227F066C8()
{

  return MEMORY[0x2822009F8](sub_227F067C4, 0, 0);
}

uint64_t sub_227F067C4()
{
  v1 = v0[13];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    return sub_227F2BA74();
  }

  sub_227EE7808(v1, v0[12], &qword_27D80ED68, &qword_227F31330);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = v0[12];
      v5 = v0[2];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_227EE7808(v4, v5, &qword_27D80ED60, &qword_227F31308);
LABEL_10:
      sub_227F2B824();

      v13 = v0[1];

      return v13();
    }

    v11 = v0[12];
    v12 = v0[2];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[2];
    sub_227F09110();
    v10 = swift_allocError();
    (*(v7 + 8))(v6, v8);
    *v9 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
    goto LABEL_9;
  }

  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_227F066C8;
  v15 = v0[13];
  v16 = v0[14];

  return MEMORY[0x2822002E8](v15, 0, 0, v16);
}

uint64_t sub_227F06ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = a8;
  *(v8 + 64) = a7;
  *(v8 + 72) = v17;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED40, &qword_227F312C0);
  *(v8 + 104) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED48, &qword_227F312C8);
  *(v8 + 112) = v10;
  *(v8 + 120) = *(v10 - 8);
  *(v8 + 128) = swift_task_alloc();
  v11 = sub_227F2BA54();
  *(v8 + 136) = v11;
  v12 = *(v11 - 8);
  *(v8 + 144) = v12;
  *(v8 + 152) = *(v12 + 64);
  *(v8 + 160) = swift_task_alloc();
  v13 = sub_227F2BA34();
  *(v8 + 168) = v13;
  v14 = *(v13 - 8);
  *(v8 + 176) = v14;
  *(v8 + 184) = *(v14 + 64);
  *(v8 + 192) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  *(v8 + 200) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F06D50, 0, 0);
}

uint64_t sub_227F06D50()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 168);
  v25 = *(v0 + 160);
  v26 = *(v0 + 184);
  v21 = *(v0 + 192);
  v22 = *(v0 + 144);
  v24 = *(v0 + 136);
  v23 = *(v0 + 72);
  v18 = *(v0 + 224);
  v28 = *(v0 + 64);
  v27 = *(v0 + 56);
  v4 = *(v0 + 40);
  v17 = *(v0 + 48);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v5 = sub_227F2B854();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v20;
  v7[5] = v4;

  sub_227F07C78(v1, &unk_227F312E0, v7, &unk_283B50CA0, &qword_27D80ED38, &qword_227F312A0, &unk_227F31300);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v21, v17, v3);
  (*(v22 + 16))(v25, v23, v24);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v26 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (*(v22 + 80) + v9 + 17) & ~*(v22 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v2 + 32))(v11 + v8, v21, v3);
  v12 = v11 + v9;
  *v12 = v27;
  *(v12 + 8) = v28;
  *(v12 + 16) = v18 & 1;
  (*(v22 + 32))(v11 + v10, v25, v24);
  sub_227F07C78(v1, &unk_227F312F0, v11, &unk_283B50CA0, &qword_27D80ED38, &qword_227F312A0, &unk_227F31300);
  sub_227EB8430(v1, &qword_27D80EB88, &qword_227F312D0);
  *(v0 + 208) = *v19;
  sub_227F2B804();
  v13 = swift_task_alloc();
  *(v0 + 216) = v13;
  *v13 = v0;
  v13[1] = sub_227F070C8;
  v14 = *(v0 + 104);
  v15 = *(v0 + 112);

  return MEMORY[0x2822002E8](v14, 0, 0, v15);
}

uint64_t sub_227F070C8()
{

  return MEMORY[0x2822009F8](sub_227F071C4, 0, 0);
}

uint64_t sub_227F071C4()
{
  v1 = v0[13];
  if ((*(v0[11] + 48))(v1, 1, v0[10]) == 1)
  {
    return sub_227F2BA74();
  }

  sub_227EE7808(v1, v0[12], &qword_27D80ED38, &qword_227F312A0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = v0[12];
      v5 = v0[2];
      (*(v0[15] + 8))(v0[16], v0[14]);
      sub_227EE7808(v4, v5, &qword_27D80ED28, &qword_227F31278);
LABEL_10:
      sub_227F2B824();

      v13 = v0[1];

      return v13();
    }

    v11 = v0[12];
    v12 = v0[2];
    (*(v0[15] + 8))(v0[16], v0[14]);
    *v12 = *v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
LABEL_9:
    swift_storeEnumTagMultiPayload();
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    v9 = v0[2];
    sub_227F09110();
    v10 = swift_allocError();
    (*(v7 + 8))(v6, v8);
    *v9 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
    goto LABEL_9;
  }

  v14 = swift_task_alloc();
  v0[27] = v14;
  *v14 = v0;
  v14[1] = sub_227F070C8;
  v15 = v0[13];
  v16 = v0[14];

  return MEMORY[0x2822002E8](v15, 0, 0, v16);
}

uint64_t sub_227F074CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  v6 = sub_227F2B114();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v4[6] = v8;
  *v8 = v4;
  v8[1] = sub_227F0762C;

  return v10(v7);
}

uint64_t sub_227F0762C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_227F07804;
  }

  else
  {
    v2 = sub_227F07740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F07740()
{
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F07804()
{
  **(v0 + 16) = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED60, &qword_227F31308);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F078B8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = a1;
  type metadata accessor for FileInfo(0);
  v6 = swift_task_alloc();
  v4[3] = v6;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_227F079E8;

  return v9(v6);
}

uint64_t sub_227F079E8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_227F07BC4;
  }

  else
  {
    v2 = sub_227F07AFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F07AFC()
{
  sub_227F09988(v0[3], v0[2], type metadata accessor for FileInfo);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F07BC4()
{
  **(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED28, &qword_227F31278);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F07C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v26[0] = a7;
  v10 = v7;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v26 - v15;
  sub_227EC2180(a1, v26 - v15, &qword_27D80EB88, &qword_227F312D0);
  v17 = sub_227F2B854();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_227EB8430(v16, &qword_27D80EB88, &qword_227F312D0);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = sub_227F2B7B4();
      v21 = v20;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_227F2B844();
    (*(v18 + 8))(v16, v17);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  v21 = 0;
LABEL_6:
  v22 = *v10;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v24 = (v21 | v19);
  if (v21 | v19)
  {
    v27[0] = 0;
    v27[1] = 0;
    v24 = v27;
    v27[2] = v19;
    v27[3] = v21;
  }

  v26[1] = 1;
  v26[2] = v24;
  v26[3] = v22;
  swift_task_create();
}

uint64_t sub_227F07E98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227F07F90;

  return v6(a1);
}

uint64_t sub_227F07F90()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_227F08088(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_227F09DE0;

  return v6(a1);
}

uint64_t sub_227F08180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_227ED03CC;

  return sub_227F060CC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_227F08278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  v9 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v9;
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  v11 = sub_227F2BA54();
  v12 = sub_227F09940(&qword_27D80ED58, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v10 = v6;
  v10[1] = sub_227F08394;

  return MEMORY[0x282200488](a4, v6 + 16, a6, v11, v12);
}

uint64_t sub_227F08394()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_227F08528;
  }

  else
  {
    v2 = sub_227F084A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F084A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F08528()
{
  v1 = sub_227F2B864();
  v2 = *(v0 + 56);
  if (v1)
  {
  }

  else
  {
    **(v0 + 40) = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED68, &qword_227F31330);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227F085E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_227EFA0C4;

  return sub_227F06ACC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_227F086DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a1;
  v9 = *(a5 + 16);
  *(v6 + 16) = *a5;
  *(v6 + 32) = v9;
  v10 = swift_task_alloc();
  *(v6 + 48) = v10;
  v11 = sub_227F2BA54();
  v12 = sub_227F09940(&qword_27D80ED58, 255, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  *v10 = v6;
  v10[1] = sub_227F087F8;

  return MEMORY[0x282200488](a4, v6 + 16, a6, v11, v12);
}

uint64_t sub_227F087F8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_227F0898C;
  }

  else
  {
    v2 = sub_227F0890C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F0890C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F0898C()
{
  v1 = sub_227F2B864();
  v2 = *(v0 + 56);
  if (v1)
  {
  }

  else
  {
    **(v0 + 40) = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80ED38, &qword_227F312A0);
  swift_storeEnumTagMultiPayload();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227F08A48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80DFF8, &qword_227F31260);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v10 - v1;
  v3 = sub_227F2B274();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D80DF18 != -1)
  {
    swift_once();
  }

  sub_227F2BE24();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_227EB8430(v2, &qword_27D80DFF8, &qword_227F31260);
    return 0x676E697373696D5BLL;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v10[0] = 91;
    v10[1] = 0xE100000000000000;
    sub_227F09940(&qword_27D80E5E8, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v8 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v8);

    MEMORY[0x22AAAC3E0](93, 0xE100000000000000);
    v7 = v10[0];
    (*(v4 + 8))(v6, v3);
  }

  return v7;
}

uint64_t sub_227F08C94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227EFA0C4;

  return sub_227F04FD0(a1, v5, v4);
}

uint64_t sub_227F08D40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return sub_227F05FD4(a1, v4);
}

uint64_t sub_227F08DF8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_227EFA0C4;

  return sub_227F085E4(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_227F08EDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227EFA0C4;

  return sub_227F078B8(a1, v4, v5, v6);
}

uint64_t sub_227F08F9C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2BA34() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227F2BA54() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_227EFA0C4;

  return sub_227F086DC(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

unint64_t sub_227F09110()
{
  result = qword_27D80ED50;
  if (!qword_27D80ED50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80ED50);
  }

  return result;
}

uint64_t sub_227F09164(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return sub_227F08088(a1, v4);
}

uint64_t sub_227F0921C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_227ED03CC;

  return sub_227F02C4C(a1, v5, v4);
}

uint64_t sub_227F092C8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return sub_227F05EDC(a1, v4);
}

uint64_t sub_227F09380(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_227ED03CC;

  return sub_227F08180(a1, a2, v6, v7, v8, v9);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_227F094A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_227EFA0C4;

  return sub_227F074CC(a1, v4, v5, v6);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_227F2BA34();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = sub_227F2BA54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 17) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_227F096C0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_227F2BA34() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227F2BA54() - 8);
  v9 = (v7 + *(v8 + 80) + 17) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_227EFA0C4;

  return sub_227F08278(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_227F09834(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_227EFA0C4;

  return sub_227F07E98(a1, v4);
}

uint64_t sub_227F09940(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_227F09988(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227F099F0(uint64_t a1)
{
  v3 = *(sub_227F2B274() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(type metadata accessor for RRDRequest(0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_227F2B4C4() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_227F2B334() - 8);
  v13 = (v10 + v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = *(v1 + v5);
  v17 = swift_task_alloc();
  *(v2 + 16) = v17;
  *v17 = v2;
  v17[1] = sub_227EFA0C4;

  return sub_227EFFCBC(a1, v14, v15, v1 + v4, v16, v1 + v7, v1 + v10, v1 + v13);
}

uint64_t sub_227F09C50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F09CB0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_227EFA0C4;

  return sub_227F00080(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_227F09D78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_227F09E2C(uint64_t a1)
{
  sub_227F2B114();
  if (v1 <= 0x3F)
  {
    sub_227F09EB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227F09EB0()
{
  if (!qword_27D80EDA0)
  {
    v0 = sub_227F2B924();
    if (!v1)
    {
      atomic_store(v0, &qword_27D80EDA0);
    }
  }
}

uint64_t sub_227F09F58(uint64_t a1)
{
  sub_227F09FB0(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_227F09FB0(uint64_t a1)
{
  if (!qword_27D80EDB8)
  {
    sub_227F2B454();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27D80EDB8);
    }
  }
}

uint64_t sub_227F0A040(uint64_t a1)
{
  result = sub_227F2B114();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ResourceUpdatesRequest(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_227F0A0D4(uint64_t a1)
{
  sub_227F0A15C(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ResourceUpdatesResponse(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_227F0A15C(uint64_t a1)
{
  if (!qword_27D80EDE0)
  {
    v2 = sub_227EB7BD0(255, &qword_27D80EDE8, 0x277CCAC90);
    v5 = type metadata accessor for SecureCodingCodableBridge(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27D80EDE0);
    }
  }
}

uint64_t sub_227F0A1C4()
{
  v1 = type metadata accessor for ResourceUpdatesRequest(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227F2B114();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for RRDRequest(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v0, v10, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000016;
    }

    else
    {
      return 0x666E6F4364616572;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_227F0FC7C(v10, v3, type metadata accessor for ResourceUpdatesRequest);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_227F2B9A4();

    v27 = 0xD000000000000011;
    v28 = 0x8000000227F34470;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_227F2B9A4();

    v25 = 0xD000000000000012;
    v26 = 0x8000000227F34430;
    sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v14);

    MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F34450);
    v15 = &v3[*(v1 + 20)];
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v21 = *v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    sub_227F101AC(v21, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF00, &qword_227F31868);
    v19 = sub_227F2B6C4();
    MEMORY[0x22AAAC3E0](v19);

    MEMORY[0x22AAAC3E0](v25, v26);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v13 = v27;
    sub_227F1152C(v3, type metadata accessor for ResourceUpdatesRequest);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_227F2B9A4();

    v21 = 0xD000000000000020;
    v22 = 0x8000000227F34490;
    sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v12 = sub_227F2BC24();
    MEMORY[0x22AAAC3E0](v12);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    v13 = v21;
    (*(v5 + 8))(v7, v4);
  }

  return v13;
}

uint64_t sub_227F0A5FC(void *a1)
{
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE08, &qword_227F317F8);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v39 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE10, &qword_227F31800);
  v44 = *(v3 - 8);
  v45 = v3;
  MEMORY[0x28223BE20](v3);
  v42 = &v32 - v4;
  v38 = type metadata accessor for ResourceUpdatesRequest(0);
  MEMORY[0x28223BE20](v38);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE18, &qword_227F31808);
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v32 - v7;
  v8 = sub_227F2B114();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE20, &qword_227F31810);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for RRDRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE28, &qword_227F31818);
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FA30();
  sub_227F2BD94();
  sub_227F0FEDC(v46, v16, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = 0;
      sub_227F0FB80();
      v26 = v48;
      sub_227F2BB84();
      (*(v32 + 8))(v13, v11);
    }

    else
    {
      v52 = 3;
      sub_227F0FA84();
      v31 = v39;
      v26 = v48;
      sub_227F2BB84();
      (*(v41 + 8))(v31, v43);
    }

    return (*(v47 + 8))(v19, v26);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v27 = v40;
      sub_227F0FC7C(v16, v40, type metadata accessor for ResourceUpdatesRequest);
      v51 = 2;
      sub_227F0FAD8();
      v28 = v42;
      v24 = v48;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80EE48, type metadata accessor for ResourceUpdatesRequest, &unk_227F31758);
      v29 = v45;
      sub_227F2BC14();
      (*(v44 + 8))(v28, v29);
      sub_227F1152C(v27, type metadata accessor for ResourceUpdatesRequest);
    }

    else
    {
      v22 = v34;
      v21 = v35;
      (*(v34 + 32))(v10, v16, v35);
      v50 = 1;
      sub_227F0FB2C();
      v23 = v33;
      v24 = v48;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80E6A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
      v25 = v37;
      sub_227F2BC14();
      (*(v36 + 8))(v23, v25);
      (*(v22 + 8))(v10, v21);
    }

    return (*(v47 + 8))(v19, v24);
  }
}

uint64_t sub_227F0AD08(uint64_t a1)
{
  v2 = type metadata accessor for ResourceUpdatesRequest(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_227F2B114();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RRDRequest(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v1, v11, type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = 0;
    }

    else
    {
      v14 = 3;
    }

    return MEMORY[0x22AAAC9F0](v14);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_227F0FC7C(v11, v4, type metadata accessor for ResourceUpdatesRequest);
    MEMORY[0x22AAAC9F0](2);
    sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_227F2B604();
    if (*&v4[*(v2 + 20) + 8])
    {
      sub_227F2BD34();
      sub_227F2B704();
      sub_227F2B704();
    }

    else
    {
      sub_227F2BD34();
    }

    return sub_227F1152C(v4, type metadata accessor for ResourceUpdatesRequest);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    MEMORY[0x22AAAC9F0](1);
    sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    sub_227F2B604();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_227F0B028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF98, &qword_227F318C8);
  v56 = *(v3 - 8);
  v57 = v3;
  MEMORY[0x28223BE20](v3);
  v63 = &v49 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFA0, &qword_227F318D0);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  v62 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFA8, &qword_227F318D8);
  v9 = *(v8 - 8);
  v54 = v8;
  v55 = v9;
  MEMORY[0x28223BE20](v8);
  v61 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFB0, &qword_227F318E0);
  v52 = *(v11 - 8);
  v53 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFB8, &qword_227F318E8);
  v65 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v15 = &v49 - v14;
  v16 = type metadata accessor for RRDRequest(0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v49 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v49 - v23;
  v25 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_227F0FA30();
  v26 = v66;
  sub_227F2BD74();
  if (!v26)
  {
    v49 = v22;
    v50 = v19;
    v27 = v61;
    v28 = v62;
    v51 = v24;
    v66 = v16;
    v29 = v63;
    v30 = v64;
    v31 = v60;
    v32 = sub_227F2BB74();
    v33 = (2 * *(v32 + 16)) | 1;
    v68 = v32;
    v69 = v32 + 32;
    v70 = 0;
    v71 = v33;
    v34 = sub_227EC19A8();
    if (v34 != 4 && v70 == v71 >> 1)
    {
      if (v34 > 1u)
      {
        v40 = v65;
        if (v34 != 2)
        {
          v72 = 3;
          sub_227F0FA84();
          sub_227F2BAE4();
          (*(v56 + 8))(v29, v57);
          (*(v40 + 8))(v15, v31);
          swift_unknownObjectRelease();
          v35 = v51;
          goto LABEL_13;
        }

        v72 = 2;
        sub_227F0FAD8();
        v41 = v28;
        sub_227F2BAE4();
        type metadata accessor for ResourceUpdatesRequest(0);
        sub_227F0F9E8(&qword_27D80EFC0, type metadata accessor for ResourceUpdatesRequest, &unk_227F31780);
        v42 = v50;
        v43 = v58;
        sub_227F2BB64();
        (*(v59 + 8))(v41, v43);
        (*(v40 + 8))(v15, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v42;
      }

      else
      {
        if (!v34)
        {
          v72 = 0;
          sub_227F0FB80();
          sub_227F2BAE4();
          (*(v52 + 8))(v13, v53);
          (*(v65 + 8))(v15, v31);
          swift_unknownObjectRelease();
          v35 = v51;
LABEL_13:
          swift_storeEnumTagMultiPayload();
LABEL_15:
          sub_227F0FC7C(v35, v30, type metadata accessor for RRDRequest);
          return __swift_destroy_boxed_opaque_existential_0(v67);
        }

        v72 = 1;
        sub_227F0FB2C();
        v44 = v27;
        sub_227F2BAE4();
        sub_227F2B114();
        sub_227F0F9E8(&qword_27D80E880, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        v45 = v49;
        v46 = v44;
        v47 = v54;
        sub_227F2BB64();
        (*(v55 + 8))(v46, v47);
        (*(v65 + 8))(v15, v31);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v48 = v45;
      }

      v35 = v51;
      sub_227F0FC7C(v48, v51, type metadata accessor for RRDRequest);
      goto LABEL_15;
    }

    v36 = sub_227F2B9E4();
    swift_allocError();
    v38 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
    *v38 = v66;
    sub_227F2BAF4();
    sub_227F2B9D4();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D84160], v36);
    swift_willThrow();
    (*(v65 + 8))(v15, v31);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

unint64_t sub_227F0B8F4()
{
  v1 = 0x656372756F736572;
  if (*v0 != 2)
  {
    v1 = 0x666E6F4364616572;
  }

  v2 = 0xD000000000000015;
  if (*v0)
  {
    v2 = 0xD00000000000001ELL;
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

uint64_t sub_227F0B984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227F11020(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227F0B9AC(uint64_t a1)
{
  v2 = sub_227F0FA30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0B9E8(uint64_t a1)
{
  v2 = sub_227F0FA30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BA24(uint64_t a1)
{
  v2 = sub_227F0FA84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BA60(uint64_t a1)
{
  v2 = sub_227F0FA84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BA9C(uint64_t a1)
{
  v2 = sub_227F0FAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BAD8(uint64_t a1)
{
  v2 = sub_227F0FAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BB14(uint64_t a1)
{
  v2 = sub_227F0FB80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BB50(uint64_t a1)
{
  v2 = sub_227F0FB80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BB8C(uint64_t a1)
{
  v2 = sub_227F0FB2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BBC8(uint64_t a1)
{
  v2 = sub_227F0FB2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BC34()
{
  sub_227F2BD14();
  sub_227F0AD08(v1);
  return sub_227F2BD44();
}

uint64_t sub_227F0BC78(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F0AD08(v2);
  return sub_227F2BD44();
}

uint64_t sub_227F0BCBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF18, &qword_227F31878);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F11388();
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

uint64_t sub_227F0BE50()
{
  if (*v0)
  {
    return 0x747365676964;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_227F0BE80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000)
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

uint64_t sub_227F0BF58(uint64_t a1)
{
  v2 = sub_227F11388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0BF94(uint64_t a1)
{
  v2 = sub_227F11388();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0BFD0@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_227F111A4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_227F0C020()
{
  sub_227F2BD14();
  sub_227F2B704();
  sub_227F2B704();
  return sub_227F2BD44();
}

uint64_t sub_227F0C088(uint64_t a1)
{
  sub_227F2B704();

  return sub_227F2B704();
}

uint64_t sub_227F0C0D8(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F2B704();
  sub_227F2B704();
  return sub_227F2BD44();
}

uint64_t sub_227F0C13C(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_227F2BC64(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_227F2BC64();
    }
  }

  return result;
}

uint64_t sub_227F0C1E0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_227F2B9A4();

  MEMORY[0x22AAAC3E0](v1, v2);
  MEMORY[0x22AAAC3E0](0x747365676964202CLL, 0xEA0000000000203ALL);
  MEMORY[0x22AAAC3E0](v3, v4);
  MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
  return 0x203A656D616E28;
}

unint64_t sub_227F0C2A4()
{
  sub_227F2B9A4();

  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80E008, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
  v1 = sub_227F2BC24();
  MEMORY[0x22AAAC3E0](v1);

  MEMORY[0x22AAAC3E0](0xD000000000000012, 0x8000000227F34450);
  v2 = (v0 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20));
  sub_227F101AC(*v2, v2[1], v2[2], v2[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF00, &qword_227F31868);
  v3 = sub_227F2B6C4();
  MEMORY[0x22AAAC3E0](v3);

  return 0xD000000000000012;
}

uint64_t sub_227F0C3EC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEE8, &qword_227F31860);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FE34();
  sub_227F2BD94();
  LOBYTE(v13) = 0;
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80E6A0, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  sub_227F2BC14();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for ResourceUpdatesRequest(0) + 20));
    v10 = v9[1];
    v13 = *v9;
    v14 = v10;
    v12[15] = 1;
    sub_227F0FF44();
    sub_227F2BBC4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_227F0C5C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v29 = sub_227F2B114();
  v26 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EED0, &qword_227F31858);
  v7 = *(v6 - 8);
  v27 = v6;
  v28 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for ResourceUpdatesRequest(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FE34();
  sub_227F2BD74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = v10;
  v13 = v12;
  v14 = v26;
  LOBYTE(v30) = 0;
  sub_227F0F9E8(&qword_27D80E880, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
  v15 = v29;
  v16 = v27;
  sub_227F2BB64();
  v17 = *(v14 + 32);
  v23 = v13;
  v17(v13, v5, v15);
  v32 = 1;
  sub_227F0FE88();
  sub_227F2BB34();
  (*(v28 + 8))(v9, v16);
  v18 = v23;
  v19 = (v23 + *(v24 + 20));
  v20 = v31;
  *v19 = v30;
  v19[1] = v20;
  sub_227F0FEDC(v18, v25, type metadata accessor for ResourceUpdatesRequest);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227F1152C(v18, type metadata accessor for ResourceUpdatesRequest);
}

uint64_t sub_227F0C94C(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF68, &qword_227F318A0);
  v30 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - v2;
  v3 = sub_227F2B454();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF70, &qword_227F318A8);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF78, &qword_227F318B0);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF80, &qword_227F318B8);
  v37 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = &v28 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F113DC();
  sub_227F2BD94();
  sub_227F0FEDC(v36, v13, type metadata accessor for ResourceUpdatesResponse);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v17 = (*(*(v16 - 8) + 48))(v13, 2, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      v40 = 0;
      sub_227F114D8();
      v18 = v39;
      sub_227F2BB84();
      (*(v28 + 8))(v10, v8);
    }

    else
    {
      v41 = 1;
      sub_227F11484();
      v18 = v39;
      sub_227F2BB84();
      (*(v29 + 8))(v7, v5);
    }
  }

  else
  {
    v19 = *(v16 + 48);
    v36 = *&v13[*(v16 + 64)];
    v20 = v31;
    v21 = v32;
    (*(v31 + 32))(v33, &v13[v19], v32);
    v45 = 2;
    sub_227F11430();
    v18 = v39;
    sub_227F2BB84();
    v44 = 0;
    v22 = v38;
    sub_227F2BBD4();
    v23 = v21;
    v24 = v20;

    if (v22)
    {

      (*(v30 + 8))(v34, v35);
      (*(v20 + 8))(v33, v23);
    }

    else
    {
      v43 = 1;
      sub_227F0F9E8(&qword_27D80EF88, MEMORY[0x277D855F8], MEMORY[0x277D85600]);
      v26 = v33;
      sub_227F2BC14();
      v42 = 2;
      sub_227F2BBD4();
      v27 = v30;
      v18 = v39;

      (*(v27 + 8))(v34, v35);
      (*(v24 + 8))(v26, v23);
    }
  }

  return (*(v37 + 8))(v15, v18);
}

uint64_t sub_227F0D014@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF20, &qword_227F31880);
  v59 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v52 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF28, &qword_227F31888);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v61 = &v52 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF30, &qword_227F31890);
  v60 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v7 = &v52 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF38, &qword_227F31898);
  v65 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - v9;
  v11 = type metadata accessor for ResourceUpdatesResponse(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  v17 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_227F113DC();
  v18 = v66;
  sub_227F2BD74();
  if (!v18)
  {
    v66 = v11;
    v20 = v60;
    v19 = v61;
    v53 = v14;
    v54 = v16;
    v55 = 0;
    v22 = v62;
    v21 = v63;
    v23 = v64;
    v24 = sub_227F2BB74();
    v25 = (2 * *(v24 + 16)) | 1;
    v68 = v24;
    v69 = v24 + 32;
    v70 = 0;
    v71 = v25;
    v26 = sub_227EC19A4();
    if (v26 == 3 || v70 != v71 >> 1)
    {
      v30 = sub_227F2B9E4();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
      *v32 = v66;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
      swift_willThrow();
    }

    else if (v26)
    {
      if (v26 == 1)
      {
        v72 = 1;
        sub_227F11484();
        v27 = v55;
        sub_227F2BAE4();
        if (!v27)
        {
          (*(v57 + 8))(v19, v58);
          (*(v65 + 8))(v10, v8);
          swift_unknownObjectRelease();
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
          v29 = v54;
          (*(*(v28 - 8) + 56))(v54, 2, 2, v28);
LABEL_13:
          sub_227F0FC7C(v29, v23, type metadata accessor for ResourceUpdatesResponse);
          return __swift_destroy_boxed_opaque_existential_0(v67);
        }
      }

      else
      {
        v72 = 2;
        sub_227F11430();
        v36 = v55;
        sub_227F2BAE4();
        if (!v36)
        {
          v66 = v10;
          v72 = 0;
          v37 = v21;
          v38 = sub_227F2BB44();
          v40 = v39;
          v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
          v61 = v40;
          v41 = *(v60 + 48);
          v42 = v53;
          *v53 = v38;
          v42[1] = v40;
          v43 = v41;
          sub_227F2B454();
          v44 = v22;
          v72 = 1;
          sub_227F0F9E8(&qword_27D80EF50, MEMORY[0x277D855F8], MEMORY[0x277D85618]);
          sub_227F2BB64();
          v58 = v43;
          v45 = v60;
          v72 = 2;
          v46 = sub_227F2BB44();
          v55 = 0;
          v47 = v46;
          v49 = v48;
          v50 = (v42 + *(v45 + 64));
          (*(v59 + 8))(v44, v37);
          (*(v65 + 8))(v66, v8);
          swift_unknownObjectRelease();
          *v50 = v47;
          v50[1] = v49;
          v51 = v53;
          (*(*(v45 - 8) + 56))(v53, 0, 2, v45);
          v29 = v54;
          sub_227F0FC7C(v51, v54, type metadata accessor for ResourceUpdatesResponse);
          goto LABEL_13;
        }
      }
    }

    else
    {
      v72 = 0;
      sub_227F114D8();
      v34 = v55;
      sub_227F2BAE4();
      if (!v34)
      {
        (*(v20 + 8))(v7, v56);
        (*(v65 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
        v29 = v54;
        (*(*(v35 - 8) + 56))(v54, 1, 2, v35);
        goto LABEL_13;
      }
    }

    (*(v65 + 8))(v10, v8);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

uint64_t sub_227F0D938()
{
  if (*v0)
  {
    return 0x6946646568636163;
  }

  else
  {
    return 0x6F46737465737361;
  }
}

uint64_t sub_227F0D98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F46737465737361 && a2 == 0xEF4C52557265646CLL;
  if (v6 || (sub_227F2BC64() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6946646568636163 && a2 == 0xEE006F666E49656CLL)
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

uint64_t sub_227F0DA78(uint64_t a1)
{
  v2 = sub_227F0FE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DAB4(uint64_t a1)
{
  v2 = sub_227F0FE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DB20(uint64_t a1)
{
  sub_227F2BD14();
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_227F2B604();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_227F2BD34();
    sub_227F2B704();
    sub_227F2B704();
  }

  else
  {
    sub_227F2BD34();
  }

  return sub_227F2BD44();
}

uint64_t sub_227F0DC10(uint64_t a1, uint64_t a2)
{
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_227F2B604();
  if (!*(v2 + *(a2 + 20) + 8))
  {
    return sub_227F2BD34();
  }

  sub_227F2BD34();
  sub_227F2B704();

  return sub_227F2B704();
}

uint64_t sub_227F0DD04(uint64_t a1, uint64_t a2)
{
  sub_227F2BD14();
  sub_227F2B114();
  sub_227F0F9E8(&qword_27D80EEF8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_227F2B604();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_227F2BD34();
    sub_227F2B704();
    sub_227F2B704();
  }

  else
  {
    sub_227F2BD34();
  }

  return sub_227F2BD44();
}

uint64_t sub_227F0DDF8(uint64_t a1)
{
  v2 = sub_227F11484();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DE34(uint64_t a1)
{
  v2 = sub_227F11484();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DE70()
{
  v1 = 0x646568636163;
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
    return 0x6669646F4D746F6ELL;
  }
}

uint64_t sub_227F0DED0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227F12650(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227F0DEF8(uint64_t a1)
{
  v2 = sub_227F113DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DF34(uint64_t a1)
{
  v2 = sub_227F113DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DF70(uint64_t a1)
{
  v2 = sub_227F114D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0DFAC(uint64_t a1)
{
  v2 = sub_227F114D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0DFE8()
{
  v1 = 0x646E6148656C6966;
  if (*v0 != 1)
  {
    v1 = 0x747365676964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D614E656C6966;
  }
}

uint64_t sub_227F0E044@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227F12768(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227F0E06C(uint64_t a1)
{
  v2 = sub_227F11430();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0E0A8(uint64_t a1)
{
  v2 = sub_227F11430();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227F0E118()
{
  v1 = v0;
  v2 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RRDResponse(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227F0FEDC(v1, v7, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_227F0FC7C(v7, v4, type metadata accessor for ResourceUpdatesResponse);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_227F2B9A4();
      MEMORY[0x22AAAC3E0](0xD000000000000011, 0x8000000227F34470);
      sub_227F2BA64();
      MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
      v13 = v21;
      sub_227F1152C(v4, type metadata accessor for ResourceUpdatesResponse);
      return v13;
    }

    else
    {
      sub_227F1152C(v7, type metadata accessor for RRDResponse);
      return 0xD000000000000015;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = *v7;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_227F2B9A4();

    v21 = 0xD000000000000017;
    v22 = 0x8000000227F34500;
    v15 = v14;
    v16 = [v15 description];
    v17 = sub_227F2B674();
    v19 = v18;

    MEMORY[0x22AAAC3E0](v17, v19);

    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    return v21;
  }

  else
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[16];
    v24 = 0;
    v25 = 0xE000000000000000;
    MEMORY[0x22AAAC3E0](0x28726F7272652ELL, 0xE700000000000000);
    v21 = v9;
    v22 = v10;
    v23 = v11;
    sub_227F2BA64();
    sub_227EC172C(v9, v10, v11);
    MEMORY[0x22AAAC3E0](41, 0xE100000000000000);
    return v24;
  }
}

void sub_227F0E430(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFD0, &qword_227F318F8);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v42 = &v33 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFD8, &qword_227F31900);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v39 = &v33 - v5;
  v37 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFE0, &qword_227F31908);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFE8, &qword_227F31910);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for RRDResponse(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFF0, &qword_227F31918);
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F0FBD4();
  sub_227F2BD94();
  sub_227F0FEDC(v45, v15, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v24 = v38;
      sub_227F0FC7C(v15, v38, type metadata accessor for ResourceUpdatesResponse);
      LOBYTE(v48) = 2;
      sub_227F0FCE4();
      v25 = v39;
      v26 = v47;
      sub_227F2BB84();
      sub_227F0F9E8(&qword_27D80EFF8, type metadata accessor for ResourceUpdatesResponse, &unk_227F31598);
      v27 = v41;
      sub_227F2BC14();
      (*(v40 + 8))(v25, v27);
      sub_227F1152C(v24, type metadata accessor for ResourceUpdatesResponse);
    }

    else
    {
      LOBYTE(v48) = 3;
      sub_227F0FC28();
      v31 = v42;
      v26 = v47;
      sub_227F2BB84();
      v32 = v44;
      sub_227F2BBD4();

      (*(v43 + 8))(v31, v32);
    }

    (*(v46 + 8))(v18, v26);
  }

  else if (EnumCaseMultiPayload)
  {
    v28 = *v15;
    LOBYTE(v48) = 1;
    sub_227F0FD38();
    v29 = v47;
    sub_227F2BB84();
    v48 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEB0, &qword_227F31850);
    sub_227F1158C(&qword_27D80F000, "ih0Zl&");
    v30 = v36;
    sub_227F2BC14();
    (*(v35 + 8))(v9, v30);
    (*(v46 + 8))(v18, v29);
  }

  else
  {
    v20 = *v15;
    v21 = *(v15 + 1);
    v22 = v15[16];
    LOBYTE(v48) = 0;
    sub_227F0FD8C();
    v23 = v47;
    sub_227F2BB84();
    v48 = v20;
    v49 = v21;
    v50 = v22;
    sub_227F115DC();
    sub_227F2BC14();
    (*(v34 + 8))(v12, v10);
    (*(v46 + 8))(v18, v23);
    sub_227EC172C(v20, v21, v22);
  }
}

uint64_t sub_227F0EB4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE60, &qword_227F31820);
  v72 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v63 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE68, &qword_227F31828);
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v76 = &v63 - v5;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE70, &qword_227F31830);
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v75 = &v63 - v6;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE78, &qword_227F31838);
  v69 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v78 = &v63 - v7;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EE80, &unk_227F31840);
  v83 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v9 = &v63 - v8;
  v77 = type metadata accessor for RRDResponse(0);
  v10 = MEMORY[0x28223BE20](v77);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v63 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v63 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v63 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v63 - v22;
  v24 = a1[3];
  v91 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_227F0FBD4();
  v25 = v84;
  sub_227F2BD74();
  if (!v25)
  {
    v63 = v21;
    v64 = v12;
    v65 = v18;
    v66 = v15;
    v26 = v78;
    v28 = v80;
    v27 = v81;
    v67 = v23;
    v29 = v82;
    v30 = v79;
    v84 = v9;
    v31 = sub_227F2BB74();
    v32 = (2 * *(v31 + 16)) | 1;
    v87 = v31;
    v88 = v31 + 32;
    v89 = 0;
    v90 = v32;
    v33 = sub_227EC19A8();
    v34 = v30;
    if (v33 == 4 || v89 != v90 >> 1)
    {
      v41 = sub_227F2B9E4();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E1F8, &qword_227F2CCF0);
      *v43 = v77;
      v44 = v84;
      sub_227F2BAF4();
      sub_227F2B9D4();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x277D84160], v41);
      swift_willThrow();
      (*(v83 + 8))(v44, v34);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33 > 1u)
      {
        v46 = v83;
        if (v33 == 2)
        {
          LOBYTE(v85) = 2;
          sub_227F0FCE4();
          v47 = v84;
          sub_227F2BAE4();
          type metadata accessor for ResourceUpdatesResponse(0);
          sub_227F0F9E8(&qword_27D80EEA0, type metadata accessor for ResourceUpdatesResponse, &unk_227F315C0);
          v48 = v66;
          v49 = v74;
          v50 = v76;
          sub_227F2BB64();
          (*(v73 + 8))(v50, v49);
          (*(v46 + 8))(v47, v30);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v57 = v48;
        }

        else
        {
          LOBYTE(v85) = 3;
          sub_227F0FC28();
          sub_227F2BAE4();
          v54 = v27;
          v55 = sub_227F2BB44();
          v78 = v56;
          v60 = v55;
          (*(v72 + 8))(v28, v54);
          (*(v46 + 8))(v84, v30);
          swift_unknownObjectRelease();
          v61 = v64;
          v62 = v78;
          *v64 = v60;
          v61[1] = v62;
          swift_storeEnumTagMultiPayload();
          v57 = v61;
        }

        v59 = v67;
        sub_227F0FC7C(v57, v67, type metadata accessor for RRDResponse);
        v35 = v29;
      }

      else
      {
        v35 = v29;
        v36 = v83;
        if (v33)
        {
          LOBYTE(v85) = 1;
          sub_227F0FD38();
          v51 = v84;
          sub_227F2BAE4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EEB0, &qword_227F31850);
          sub_227F1158C(&qword_27D80EEB8, "ql0ZD&");
          v52 = v70;
          v53 = v75;
          sub_227F2BB64();
          (*(v71 + 8))(v53, v52);
          (*(v36 + 8))(v51, v30);
          swift_unknownObjectRelease();
          v40 = v65;
          *v65 = v85;
        }

        else
        {
          LOBYTE(v85) = 0;
          sub_227F0FD8C();
          v37 = v84;
          sub_227F2BAE4();
          sub_227F0FDE0();
          v38 = v68;
          sub_227F2BB64();
          (*(v69 + 8))(v26, v38);
          (*(v36 + 8))(v37, v34);
          swift_unknownObjectRelease();
          v39 = v86;
          v40 = v63;
          *v63 = v85;
          *(v40 + 16) = v39;
        }

        swift_storeEnumTagMultiPayload();
        v58 = v40;
        v59 = v67;
        sub_227F0FC7C(v58, v67, type metadata accessor for RRDResponse);
      }

      sub_227F0FC7C(v59, v35, type metadata accessor for RRDResponse);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v91);
}

unint64_t sub_227F0F5B4()
{
  v1 = 0x726F727265;
  v2 = 0x656372756F736572;
  if (*v0 != 2)
  {
    v2 = 0x657A6974696E6173;
  }

  if (*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_227F0F648@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227F12884(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227F0F670(uint64_t a1)
{
  v2 = sub_227F0FBD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F6AC(uint64_t a1)
{
  v2 = sub_227F0FBD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F6E8(uint64_t a1)
{
  v2 = sub_227F0FD8C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F724(uint64_t a1)
{
  v2 = sub_227F0FD8C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F760(uint64_t a1)
{
  v2 = sub_227F0FCE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F79C(uint64_t a1)
{
  v2 = sub_227F0FCE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F7D8(uint64_t a1)
{
  v2 = sub_227F0FD38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F814(uint64_t a1)
{
  v2 = sub_227F0FD38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F0F850(uint64_t a1)
{
  v2 = sub_227F0FC28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F0F88C(uint64_t a1)
{
  v2 = sub_227F0FC28();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_227F0F94C()
{
  result = qword_27D80EDF8;
  if (!qword_27D80EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EDF8);
  }

  return result;
}

uint64_t sub_227F0F9E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_227F0FA30()
{
  result = qword_27D80EE30;
  if (!qword_27D80EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE30);
  }

  return result;
}

unint64_t sub_227F0FA84()
{
  result = qword_27D80EE38;
  if (!qword_27D80EE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE38);
  }

  return result;
}

unint64_t sub_227F0FAD8()
{
  result = qword_27D80EE40;
  if (!qword_27D80EE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE40);
  }

  return result;
}

unint64_t sub_227F0FB2C()
{
  result = qword_27D80EE50;
  if (!qword_27D80EE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE50);
  }

  return result;
}

unint64_t sub_227F0FB80()
{
  result = qword_27D80EE58;
  if (!qword_27D80EE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE58);
  }

  return result;
}

unint64_t sub_227F0FBD4()
{
  result = qword_27D80EE88;
  if (!qword_27D80EE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE88);
  }

  return result;
}

unint64_t sub_227F0FC28()
{
  result = qword_27D80EE90;
  if (!qword_27D80EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE90);
  }

  return result;
}

uint64_t sub_227F0FC7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_227F0FCE4()
{
  result = qword_27D80EE98;
  if (!qword_27D80EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EE98);
  }

  return result;
}

unint64_t sub_227F0FD38()
{
  result = qword_27D80EEA8;
  if (!qword_27D80EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEA8);
  }

  return result;
}

unint64_t sub_227F0FD8C()
{
  result = qword_27D80EEC0;
  if (!qword_27D80EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEC0);
  }

  return result;
}

unint64_t sub_227F0FDE0()
{
  result = qword_27D80EEC8;
  if (!qword_27D80EEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEC8);
  }

  return result;
}

unint64_t sub_227F0FE34()
{
  result = qword_27D80EED8;
  if (!qword_27D80EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EED8);
  }

  return result;
}

unint64_t sub_227F0FE88()
{
  result = qword_27D80EEE0;
  if (!qword_27D80EEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEE0);
  }

  return result;
}

uint64_t sub_227F0FEDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_227F0FF44()
{
  result = qword_27D80EEF0;
  if (!qword_27D80EEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EEF0);
  }

  return result;
}

BOOL sub_227F0FF98(uint64_t a1, uint64_t a2)
{
  if ((_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for ResourceUpdatesRequest(0) + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 16);
  v7 = *(a1 + v4 + 24);
  v9 = (a2 + v4);
  v11 = *v9;
  v10 = v9[1];
  v13 = v9[2];
  v12 = v9[3];
  if (!v5)
  {
    if (!v10)
    {
      return 1;
    }

    goto LABEL_16;
  }

  if (!v10)
  {
LABEL_16:
    sub_227F101AC(*v9, v9[1], v9[2], v9[3]);
    sub_227F101AC(v6, v5, v8, v7);
    sub_227F101F0(v6, v5, v8, v7);
    v17 = v11;
    v18 = v10;
    v19 = v13;
    v20 = v12;
LABEL_17:
    sub_227F101F0(v17, v18, v19, v20);
    return 0;
  }

  v14 = v6 == v11 && v5 == v10;
  if (!v14 && (sub_227F2BC64() & 1) == 0)
  {
    sub_227F101AC(v11, v10, v13, v12);
    sub_227F101AC(v6, v5, v8, v7);

    v17 = v6;
    v18 = v5;
    v19 = v8;
    v20 = v7;
    goto LABEL_17;
  }

  if (v8 != v13 || v7 != v12)
  {
    v16 = sub_227F2BC64();
    sub_227F101AC(v11, v10, v13, v12);
    sub_227F101AC(v6, v5, v8, v7);

    sub_227F101F0(v6, v5, v8, v7);
    return (v16 & 1) != 0;
  }

  sub_227F101AC(v11, v10, v8, v7);
  sub_227F101AC(v6, v5, v8, v7);

  sub_227F101F0(v6, v5, v8, v7);
  return 1;
}

void sub_227F101AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_227F101F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t sub_227F10234(uint64_t a1, uint64_t a2)
{
  v4 = sub_227F2B454();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v45 - v9;
  v11 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF90, &qword_227F318C0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v45 - v16;
  v18 = (&v45 + *(v15 + 56) - v16);
  sub_227F0FEDC(a1, &v45 - v16, type metadata accessor for ResourceUpdatesResponse);
  sub_227F0FEDC(a2, v18, type metadata accessor for ResourceUpdatesResponse);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E320, &qword_227F2D9A0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v17, 2, v19);
  if (!v21)
  {
    v48 = v8;
    v49 = v10;
    v51 = v4;
    v52 = v5;
    sub_227F0FEDC(v17, v13, type metadata accessor for ResourceUpdatesResponse);
    v22 = *(v13 + 1);
    v47 = *v13;
    v50 = v22;
    v23 = *(v19 + 48);
    v24 = *(v19 + 64);
    v26 = *&v13[v24];
    v25 = *&v13[v24 + 8];
    if (v20(v18, 2, v19))
    {

      (*(v52 + 8))(&v13[v23], v51);
      goto LABEL_9;
    }

    v28 = *v18;
    v29 = v18[1];
    v45 = *(v18 + v24);
    v46 = v26;
    v30 = *(v18 + v24 + 8);
    v31 = *(v52 + 32);
    v32 = &v13[v23];
    v33 = v51;
    v31(v49, v32, v51);
    v31(v48, v18 + v23, v33);
    if (v47 == v28 && v50 == v29)
    {

      v36 = v25;
    }

    else
    {
      v35 = sub_227F2BC64();

      v36 = v25;
      if ((v35 & 1) == 0)
      {

        v37 = *(v52 + 8);
        v37(v48, v33);
        v37(v49, v33);
        goto LABEL_26;
      }
    }

    v38 = v48;
    v39 = v49;
    if (sub_227F2B424())
    {
      if (v46 == v45 && v36 == v30)
      {

        v44 = *(v52 + 8);
        v44(v38, v33);
        v44(v39, v33);
        goto LABEL_8;
      }

      v41 = sub_227F2BC64();

      v42 = *(v52 + 8);
      v42(v38, v33);
      v42(v39, v33);
      if (v41)
      {
LABEL_8:
        sub_227F1152C(v17, type metadata accessor for ResourceUpdatesResponse);
        return 1;
      }
    }

    else
    {

      v43 = *(v52 + 8);
      v43(v38, v33);
      v43(v39, v33);
    }

LABEL_26:
    sub_227F1152C(v17, type metadata accessor for ResourceUpdatesResponse);
    return 0;
  }

  if (v21 == 1)
  {
    if (v20(v18, 2, v19) != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v20(v18, 2, v19) == 2)
  {
    goto LABEL_8;
  }

LABEL_9:
  sub_227EB8430(v17, &qword_27D80EF90, &qword_227F318C0);
  return 0;
}

uint64_t sub_227F10750(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceUpdatesRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v27 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227F2B114();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RRDRequest(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EFC8, &qword_227F318F0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v27 - v17;
  v19 = *(v16 + 56);
  sub_227F0FEDC(a1, &v27 - v17, type metadata accessor for RRDRequest);
  sub_227F0FEDC(a2, &v18[v19], type metadata accessor for RRDRequest);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_227F0FEDC(v18, v12, type metadata accessor for RRDRequest);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_227F1152C(v12, type metadata accessor for ResourceUpdatesRequest);
        goto LABEL_13;
      }

      v21 = &v18[v19];
      v22 = v27;
      sub_227F0FC7C(v21, v27, type metadata accessor for ResourceUpdatesRequest);
      v23 = sub_227F0FF98(v12, v22);
      sub_227F1152C(v22, type metadata accessor for ResourceUpdatesRequest);
      sub_227F1152C(v12, type metadata accessor for ResourceUpdatesRequest);
    }

    else
    {
      sub_227F0FEDC(v18, v14, type metadata accessor for RRDRequest);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v28 + 8))(v14, v6);
LABEL_13:
        sub_227EB8430(v18, &qword_27D80EFC8, &qword_227F318F0);
        v23 = 0;
        return v23 & 1;
      }

      v24 = v28;
      (*(v28 + 32))(v8, &v18[v19], v6);
      v23 = _s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0();
      v25 = *(v24 + 8);
      v25(v8, v6);
      v25(v14, v6);
    }

    sub_227F1152C(v18, type metadata accessor for RRDRequest);
    return v23 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_13;
  }

  sub_227F1152C(v18, type metadata accessor for RRDRequest);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_227F10B60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ResourceUpdatesResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v41 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RRDResponse(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v40 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F010, &qword_227F31920);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v40 - v20;
  v22 = &v40 + *(v19 + 56) - v20;
  sub_227F0FEDC(a1, &v40 - v20, type metadata accessor for RRDResponse);
  sub_227F0FEDC(a2, v22, type metadata accessor for RRDResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_227F0FEDC(v21, v15, type metadata accessor for RRDResponse);
      v30 = *v15;
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_20;
      }

      v31 = *v22;
      sub_227EB7BD0(0, &qword_27D80F018, 0x277D82BB8);
      v29 = sub_227F2B914();
    }

    else
    {
      sub_227F0FEDC(v21, v17, type metadata accessor for RRDResponse);
      v25 = *v17;
      v24 = *(v17 + 1);
      v26 = v17[16];
      if (swift_getEnumCaseMultiPayload())
      {
        sub_227EC172C(v25, v24, v26);
LABEL_20:
        sub_227EB8430(v21, &qword_27D80F010, &qword_227F31920);
        goto LABEL_21;
      }

      v36 = *v22;
      v37 = *(v22 + 1);
      v38 = v22[16];
      v44[0] = v25;
      v44[1] = v24;
      v45 = v26;
      v42[0] = v36;
      v42[1] = v37;
      v43 = v38;
      v29 = _s21RapidResourceDelivery15RRDServiceErrorO2eeoiySbAC_ACtFZ_0(v44, v42);
      sub_227EC172C(v36, v37, v38);
      sub_227EC172C(v25, v24, v26);
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_227F0FEDC(v21, v12, type metadata accessor for RRDResponse);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_227F1152C(v12, type metadata accessor for ResourceUpdatesResponse);
      goto LABEL_20;
    }

    v27 = v22;
    v28 = v41;
    sub_227F0FC7C(v27, v41, type metadata accessor for ResourceUpdatesResponse);
    v29 = sub_227F10234(v12, v28);
    sub_227F1152C(v28, type metadata accessor for ResourceUpdatesResponse);
    sub_227F1152C(v12, type metadata accessor for ResourceUpdatesResponse);
LABEL_23:
    sub_227F1152C(v21, type metadata accessor for RRDResponse);
    return v29 & 1;
  }

  sub_227F0FEDC(v21, v9, type metadata accessor for RRDResponse);
  v33 = *v9;
  v32 = v9[1];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    goto LABEL_20;
  }

  if (v33 == *v22 && v32 == *(v22 + 1))
  {

    goto LABEL_25;
  }

  v35 = sub_227F2BC64();

  if (v35)
  {
LABEL_25:
    sub_227F1152C(v21, type metadata accessor for RRDResponse);
    v29 = 1;
    return v29 & 1;
  }

  sub_227F1152C(v21, type metadata accessor for RRDResponse);
LABEL_21:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_227F11020(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x8000000227F34520 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000227F34540 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF73657461647055 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666E6F4364616572 && a2 == 0xEA00000000006769)
  {

    return 3;
  }

  else
  {
    v5 = sub_227F2BC64();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_227F111A4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EF08, &qword_227F31870);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F11388();
  sub_227F2BD74();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_227F2BB44();
    v10 = 1;
    sub_227F2BB44();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t sub_227F11388()
{
  result = qword_27D80EF10;
  if (!qword_27D80EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF10);
  }

  return result;
}

unint64_t sub_227F113DC()
{
  result = qword_27D80EF40;
  if (!qword_27D80EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF40);
  }

  return result;
}

unint64_t sub_227F11430()
{
  result = qword_27D80EF48;
  if (!qword_27D80EF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF48);
  }

  return result;
}

unint64_t sub_227F11484()
{
  result = qword_27D80EF58;
  if (!qword_27D80EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF58);
  }

  return result;
}

unint64_t sub_227F114D8()
{
  result = qword_27D80EF60;
  if (!qword_27D80EF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80EF60);
  }

  return result;
}

uint64_t sub_227F1152C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227F1158C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D80EEB0, &qword_227F31850);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_227F115DC()
{
  result = qword_27D80F008;
  if (!qword_27D80F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F008);
  }

  return result;
}

unint64_t sub_227F11734()
{
  result = qword_27D80F020;
  if (!qword_27D80F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F020);
  }

  return result;
}

unint64_t sub_227F1178C()
{
  result = qword_27D80F028;
  if (!qword_27D80F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F028);
  }

  return result;
}

unint64_t sub_227F117E4()
{
  result = qword_27D80F030;
  if (!qword_27D80F030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F030);
  }

  return result;
}

unint64_t sub_227F1183C()
{
  result = qword_27D80F038;
  if (!qword_27D80F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F038);
  }

  return result;
}

unint64_t sub_227F11894()
{
  result = qword_27D80F040;
  if (!qword_27D80F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F040);
  }

  return result;
}

unint64_t sub_227F118EC()
{
  result = qword_27D80F048;
  if (!qword_27D80F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F048);
  }

  return result;
}

unint64_t sub_227F11944()
{
  result = qword_27D80F050;
  if (!qword_27D80F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F050);
  }

  return result;
}

unint64_t sub_227F1199C()
{
  result = qword_27D80F058;
  if (!qword_27D80F058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F058);
  }

  return result;
}

unint64_t sub_227F119F4()
{
  result = qword_27D80F060;
  if (!qword_27D80F060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F060);
  }

  return result;
}

unint64_t sub_227F11A4C()
{
  result = qword_27D80F068;
  if (!qword_27D80F068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F068);
  }

  return result;
}

unint64_t sub_227F11AA4()
{
  result = qword_27D80F070;
  if (!qword_27D80F070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F070);
  }

  return result;
}

unint64_t sub_227F11AFC()
{
  result = qword_27D80F078;
  if (!qword_27D80F078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F078);
  }

  return result;
}

unint64_t sub_227F11B54()
{
  result = qword_27D80F080;
  if (!qword_27D80F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F080);
  }

  return result;
}

unint64_t sub_227F11BAC()
{
  result = qword_27D80F088;
  if (!qword_27D80F088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F088);
  }

  return result;
}

unint64_t sub_227F11C04()
{
  result = qword_27D80F090;
  if (!qword_27D80F090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F090);
  }

  return result;
}

unint64_t sub_227F11C5C()
{
  result = qword_27D80F098;
  if (!qword_27D80F098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F098);
  }

  return result;
}

unint64_t sub_227F11CB4()
{
  result = qword_27D80F0A0;
  if (!qword_27D80F0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0A0);
  }

  return result;
}

unint64_t sub_227F11D0C()
{
  result = qword_27D80F0A8;
  if (!qword_27D80F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0A8);
  }

  return result;
}

unint64_t sub_227F11D64()
{
  result = qword_27D80F0B0;
  if (!qword_27D80F0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0B0);
  }

  return result;
}

unint64_t sub_227F11DBC()
{
  result = qword_27D80F0B8;
  if (!qword_27D80F0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0B8);
  }

  return result;
}

unint64_t sub_227F11E14()
{
  result = qword_27D80F0C0;
  if (!qword_27D80F0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0C0);
  }

  return result;
}

unint64_t sub_227F11E6C()
{
  result = qword_27D80F0C8;
  if (!qword_27D80F0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0C8);
  }

  return result;
}

unint64_t sub_227F11EC4()
{
  result = qword_27D80F0D0;
  if (!qword_27D80F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0D0);
  }

  return result;
}

unint64_t sub_227F11F1C()
{
  result = qword_27D80F0D8;
  if (!qword_27D80F0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0D8);
  }

  return result;
}

unint64_t sub_227F11F74()
{
  result = qword_27D80F0E0;
  if (!qword_27D80F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0E0);
  }

  return result;
}

unint64_t sub_227F11FCC()
{
  result = qword_27D80F0E8;
  if (!qword_27D80F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0E8);
  }

  return result;
}

unint64_t sub_227F12024()
{
  result = qword_27D80F0F0;
  if (!qword_27D80F0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0F0);
  }

  return result;
}

unint64_t sub_227F1207C()
{
  result = qword_27D80F0F8;
  if (!qword_27D80F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F0F8);
  }

  return result;
}

unint64_t sub_227F120D4()
{
  result = qword_27D80F100;
  if (!qword_27D80F100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F100);
  }

  return result;
}

unint64_t sub_227F1212C()
{
  result = qword_27D80F108;
  if (!qword_27D80F108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F108);
  }

  return result;
}

unint64_t sub_227F12184()
{
  result = qword_27D80F110;
  if (!qword_27D80F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F110);
  }

  return result;
}

unint64_t sub_227F121DC()
{
  result = qword_27D80F118;
  if (!qword_27D80F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F118);
  }

  return result;
}

unint64_t sub_227F12234()
{
  result = qword_27D80F120;
  if (!qword_27D80F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F120);
  }

  return result;
}

unint64_t sub_227F1228C()
{
  result = qword_27D80F128;
  if (!qword_27D80F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F128);
  }

  return result;
}

unint64_t sub_227F122E4()
{
  result = qword_27D80F130;
  if (!qword_27D80F130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F130);
  }

  return result;
}

unint64_t sub_227F1233C()
{
  result = qword_27D80F138;
  if (!qword_27D80F138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F138);
  }

  return result;
}

unint64_t sub_227F12394()
{
  result = qword_27D80F140;
  if (!qword_27D80F140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F140);
  }

  return result;
}

unint64_t sub_227F123EC()
{
  result = qword_27D80F148;
  if (!qword_27D80F148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F148);
  }

  return result;
}

unint64_t sub_227F12444()
{
  result = qword_27D80F150;
  if (!qword_27D80F150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F150);
  }

  return result;
}

unint64_t sub_227F1249C()
{
  result = qword_27D80F158;
  if (!qword_27D80F158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F158);
  }

  return result;
}

unint64_t sub_227F124F4()
{
  result = qword_27D80F160;
  if (!qword_27D80F160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F160);
  }

  return result;
}

unint64_t sub_227F1254C()
{
  result = qword_27D80F168;
  if (!qword_27D80F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F168);
  }

  return result;
}

unint64_t sub_227F125A4()
{
  result = qword_27D80F170;
  if (!qword_27D80F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F170);
  }

  return result;
}

unint64_t sub_227F125FC()
{
  result = qword_27D80F178;
  if (!qword_27D80F178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F178);
  }

  return result;
}

uint64_t sub_227F12650(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6669646F4D746F6ELL && a2 == 0xEB00000000646569;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646568636163 && a2 == 0xE600000000000000 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xE800000000000000)
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

uint64_t sub_227F12768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E6148656C6966 && a2 == 0xEA0000000000656CLL || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000)
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

uint64_t sub_227F12884(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F727265 && a2 == 0xE500000000000000;
  if (v4 || (sub_227F2BC64() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000227F34520 == a2 || (sub_227F2BC64() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F736572 && a2 == 0xEF73657461647055 || (sub_227F2BC64() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A6974696E6173 && a2 == 0xEF6769666E6F4364)
  {

    return 3;
  }

  else
  {
    v6 = sub_227F2BC64();

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

uint64_t RRDServiceServer.deinit()
{
  RRDServiceServer.invalidate()();
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener + 8, &qword_27D80F180, &unk_227F32940);

  return v0;
}

uint64_t RRDServiceServer.__deallocating_deinit()
{
  RRDServiceServer.invalidate()();
  v1 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v2 = sub_227F2B334();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_227EB8430(v0 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener + 8, &qword_27D80F180, &unk_227F32940);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_227F12BE8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment + 16);
  type metadata accessor for RRDPeerHandler();
  v4 = swift_allocObject();

  result = swift_defaultActor_initialize();
  *(v4 + 112) = v3;
  *a2 = v4;
  return result;
}

void static RRDServiceServer.start()()
{
  if (qword_2813CDA30 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE0F0);
  sub_227F12CE8(&qword_2813CE0F8, &v0);
  os_unfair_lock_unlock(&dword_2813CE0F0);
}

void sub_227F12CE8(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    return;
  }

  if (qword_2813CDBA8 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_2813CE158);
  sub_227F25378(&qword_2813CE160, v17);
  if (v2)
  {
    os_unfair_lock_unlock(&dword_2813CE158);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(&dword_2813CE158);
  v5 = v17[0];
  if (!v17[0])
  {
    sub_227F13468();
    v16 = swift_allocError();
    swift_willThrow();
    v15 = v16;
LABEL_11:
    *a2 = v15;
    return;
  }

  v6 = v17[1];
  v7 = v17[2];
  type metadata accessor for RRDServiceServer(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_logger;
  v10 = qword_2813CD578;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = sub_227F2B334();
  v12 = __swift_project_value_buffer(v11, qword_2813CE070);
  (*(*(v11 - 8) + 16))(v8 + v9, v12, v11);
  v13 = v8 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener;
  *v13 = 0;
  *(v13 + 8) = 0;
  v14 = (v8 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_environment);
  *v14 = v5;
  v14[1] = v6;
  v14[2] = v7;
  *a1 = v8;
  RRDServiceServer.start()();

  if (v15)
  {
    goto LABEL_11;
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RRDServiceServer.start()()
{
  v2 = v0;
  v3 = sub_227F2B3C4();
  MEMORY[0x28223BE20](v3 - 8);
  sub_227F1654C();
  if (v1)
  {
    v4 = v1;
    v5 = sub_227F2B304();
    v6 = sub_227F2B8E4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_227EB2000, v5, v6, "Failed to start resource manager: %@", v7, 0xCu);
      sub_227EB8430(v8, &qword_27D80E4A0, &qword_227F2DE40);
      MEMORY[0x22AAAD240](v8, -1, -1);
      MEMORY[0x22AAAD240](v7, -1, -1);
    }

    else
    {
    }
  }

  v11 = v2 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener;
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery16RRDServiceServer_listener));

  sub_227F2B3B4();
  sub_227F2B3F4();
  swift_allocObject();
  v12 = sub_227F2B3E4();

  *(v11 + 8) = v12;
  v13 = sub_227F2B304();
  v14 = sub_227F2B8D4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_227EB2000, v13, v14, "XPC service started", v15, 2u);
    MEMORY[0x22AAAD240](v15, -1, -1);
  }

  os_unfair_lock_unlock(v11);
}

uint64_t sub_227F131C8(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RRDPeerHandler();
  sub_227F13410();
  return sub_227F2B3D4();
}

void sub_227F1323C(const char *a1)
{
  oslog = sub_227F2B304();
  v2 = sub_227F2B8D4();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_227EB2000, oslog, v2, a1, v3, 2u);
    MEMORY[0x22AAAD240](v3, -1, -1);
  }
}

uint64_t type metadata accessor for RRDServiceServer(uint64_t a1)
{
  result = qword_2813CDA20;
  if (!qword_2813CDA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227F1334C(uint64_t a1)
{
  result = sub_227F2B334();
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

unint64_t sub_227F13410()
{
  result = qword_27D80F190;
  if (!qword_27D80F190)
  {
    type metadata accessor for RRDPeerHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F190);
  }

  return result;
}

unint64_t sub_227F13468()
{
  result = qword_27D80F198;
  if (!qword_27D80F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D80F198);
  }

  return result;
}

uint64_t sub_227F134EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1A0, &unk_227F329F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_227F2B2A4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_227F2B284();
  v8 = sub_227F2B294();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];

  v9 = sub_227F2B644();
  [v7 setDateFormat_];

  sub_227F2B2B4();
  v10 = sub_227F2B2D4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v2, 1, v10) != 1)
  {
    v12 = sub_227F2B2C4();
    (*(v11 + 8))(v2, v10);
  }

  [v7 setTimeZone_];

  v13 = sub_227F2B1B4();
  v14 = [v7 stringFromDate_];

  v15 = sub_227F2B674();
  return v15;
}

uint64_t Duration.jittered(by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_227F2BDA4();
  v8 = v7;
  v9 = sub_227F2BDA4();
  v11 = v10;
  result = sub_227F2BDA4();
  if (v9 >= result)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  v15 = result - v14;
  if (result >= v14)
  {
    v16 = v13;
    if (v15 == -1)
    {
      goto LABEL_12;
    }

    result = sub_227F13A80(v15 + 1);
    v17 = result + v14;
    v18 = __OFADD__(v6, result + v14);
    v6 += result + v14;
    if (v18)
    {
LABEL_14:
      __break(1u);
    }

    else
    {
      while (v17)
      {
        if (v11 >= v16)
        {
          v11 = 0;
        }

        v19 = v16 - v11;
        if (v16 >= v11)
        {
          goto LABEL_25;
        }

        __break(1u);
LABEL_12:
        v23 = 0;
        result = MEMORY[0x22AAAD250](&v23, 8);
        v17 = v23;
        v18 = __OFADD__(v6, v23);
        v6 += v23;
        if (v18)
        {
          goto LABEL_14;
        }
      }
    }

    if (v16 <= v11)
    {
      v20 = v11;
    }

    else
    {
      v20 = v16;
    }

    if (v16 >= v11)
    {
      v21 = v11;
    }

    else
    {
      v21 = v16;
    }

    if (v21 >= v20)
    {
      v11 = 0;
    }

    else
    {
      v11 = v21;
    }

    v22 = v20 < v11;
    v19 = v20 - v11;
    if (v22)
    {
      goto LABEL_32;
    }

LABEL_25:
    if (v19 == -1)
    {
      v23 = 0;
      result = MEMORY[0x22AAAD250](&v23, 8);
      if (!__OFADD__(v8, v23))
      {
        return sub_227F2BDC4();
      }
    }

    else
    {
      result = sub_227F13A80(v19 + 1);
      if (!__OFADD__(v8, result + v11))
      {
        return sub_227F2BDC4();
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

{
  v6 = sub_227F2BDA4();
  v8 = v7;
  v9 = sub_227F2BDA4();
  v11 = v10;
  result = sub_227F2BDA4();
  if (v9 >= result)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  if (result >= v14)
  {
    v15 = v13;
    if (v14 != result)
    {
      v16 = __OFSUB__(result--, 1);
      if (v16)
      {
        goto LABEL_40;
      }
    }

    if (result - v14 == -1)
    {
      v23 = 0;
      result = MEMORY[0x22AAAD250](&v23, 8);
      v17 = v23;
      if (!__OFADD__(v6, v23))
      {
LABEL_9:
        if (v17)
        {
          if (v11 >= v15)
          {
            v11 = 0;
          }

          if (v15 < v11)
          {
            goto LABEL_39;
          }

          if (v11 != v15)
          {
            v16 = __OFSUB__(v15--, 1);
            if (v16)
            {
              goto LABEL_42;
            }
          }

          if (v15 - v11 != -1)
          {
            result = sub_227F13A80(v15 - v11 + 1);
            v18 = result + v11;
            goto LABEL_35;
          }

          goto LABEL_34;
        }

LABEL_20:
        if (v15 <= v11)
        {
          v19 = v11;
        }

        else
        {
          v19 = v15;
        }

        if (v15 >= v11)
        {
          v20 = v11;
        }

        else
        {
          v20 = v15;
        }

        if (v20 >= v19)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        if (v19 < v21)
        {
          goto LABEL_41;
        }

        if (v21 != v19)
        {
          v16 = __OFSUB__(v19--, 1);
          if (v16)
          {
            goto LABEL_43;
          }
        }

        v22 = v19 - v21;
        if (v22 != -1)
        {
          result = sub_227F13A80(v22 + 1);
          v18 = result + v21;
          goto LABEL_35;
        }

LABEL_34:
        v23 = 0;
        result = MEMORY[0x22AAAD250](&v23, 8);
        v18 = v23;
LABEL_35:
        if (!__OFADD__(v8, v18))
        {
          return sub_227F2BDC4();
        }

        goto LABEL_38;
      }
    }

    else
    {
      result = sub_227F13A80(result - v14 + 1);
      v17 = result + v14;
      if (!__OFADD__(v6, result + v14))
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

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
  return result;
}

unint64_t sub_227F13A80(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x22AAAD250](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x22AAAD250](&v3, 8);
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

id sub_227F13B0C(uint64_t a1)
{
  v3 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_227F2B054();
  if (v2)
  {
  }

  else if (v4)
  {
    v5 = sub_227F2B044();
    v14[0] = 0;
    v6 = [v3 removeItemAtURL:v5 error:v14];

    v7 = v14[0];
    if (!v6)
    {
      goto LABEL_8;
    }

    v8 = v14[0];
  }

  v9 = sub_227F2B044();
  v10 = sub_227F2B044();
  v14[0] = 0;
  v11 = [v3 copyItemAtURL:v9 toURL:v10 error:v14];

  v7 = v14[0];
  if (v11)
  {
    return v14[0];
  }

LABEL_8:
  v13 = v7;
  sub_227F2AFC4();

  return swift_willThrow();
}

void sub_227F13C50(uint64_t a1)
{
  v2 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = sub_227F2B044();
  v5 = sub_227F2B044();
  v14[0] = 0;
  v6 = [v2 moveItemAtURL:v4 toURL:v5 error:v14];

  if (v6)
  {
    v7 = v14[0];
  }

  else
  {
    v8 = v14[0];
    v9 = sub_227F2AFC4();

    swift_willThrow();
    sub_227F13B0C(a1);
    v10 = sub_227F2B044();
    v14[0] = 0;
    v11 = [v2 removeItemAtURL:v10 error:v14];

    if (v11)
    {
      v12 = v14[0];
    }

    else
    {
      v13 = v14[0];
      sub_227F2AFC4();

      swift_willThrow();
    }
  }
}

uint64_t sub_227F13F18(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_227F2B334();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_227F2B314();
}

uint64_t sub_227F13F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

      sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);

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

  sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);
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

uint64_t sub_227F14290(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for FileInfo(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for ResourceInfo(0);
  v3[11] = swift_task_alloc();
  v5 = sub_227F2B334();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F14450, 0, 0);
}

uint64_t sub_227F14450()
{
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v3, qword_2813CDE98);
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_227F14550;
  v6 = v0[3];

  return sub_227F18DB0(v6);
}

uint64_t sub_227F14550(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_227F1532C;
  }

  else
  {
    *(v4 + 200) = a1 & 1;
    v5 = sub_227F1467C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_227F1467C(uint64_t a1)
{
  v38 = v1;
  if (*(v1 + 200) == 1)
  {
    v2 = sub_227F2B304();
    v3 = sub_227F2B8D4();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_227EB2000, v2, v3, "Fetching updates because the manifest has changed.", v4, 2u);
      MEMORY[0x22AAAD240](v4, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 136) = v5;
    *v5 = v1;
    v6 = sub_227F14C6C;
LABEL_15:
    v5[1] = v6;
    v27 = *(v1 + 16);

    sub_227F1E770(v27);
    return;
  }

  v7 = *(v1 + 88);
  v9 = *(v1 + 56);
  v8 = *(v1 + 64);
  v10 = *(v1 + 48);
  v11 = *(*(v1 + 32) + 32);
  v12 = (v11 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v11 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v13 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v14 = type metadata accessor for PersistenceState(0);
  sub_227F246A0(v13 + *(v14 + 24), v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v12);
  sub_227EC2180(v7, v10, &qword_27D80E8F0, &unk_227F2F4B0);
  if ((*(v8 + 48))(v10, 1, v9) == 1)
  {
    sub_227EB8430(*(v1 + 48), &qword_27D80E8F0, &unk_227F2F4B0);
    v15 = sub_227F2B304();
    v16 = sub_227F2B8D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_227EB2000, v15, v16, "Fetching updates because we have none cached.", v17, 2u);
      MEMORY[0x22AAAD240](v17, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 184) = v5;
    *v5 = v1;
    v6 = sub_227F15148;
    goto LABEL_15;
  }

  v19 = *(v1 + 80);
  v18 = *(v1 + 88);
  v20 = *(v1 + 40);
  sub_227F1FDAC(*(v1 + 48), *(v1 + 72), type metadata accessor for FileInfo);
  sub_227EC2180(v18 + *(v19 + 32), v20, &qword_27D80E8F8, &qword_227F2F5E0);
  v21 = type metadata accessor for ResourceInfo.DownloadState(0);
  v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
  sub_227EB8430(v20, &qword_27D80E8F8, &qword_227F2F5E0);
  if (v22 != 1)
  {
    v24 = sub_227F2B304();
    v25 = sub_227F2B8D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_227EB2000, v24, v25, "Fetching updates because new updates are downloading.", v26, 2u);
      MEMORY[0x22AAAD240](v26, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 168) = v5;
    *v5 = v1;
    v6 = sub_227F15034;
    goto LABEL_15;
  }

  v23 = *(v1 + 128);
  os_unfair_lock_lock(v12);
  sub_227EF1314(v13, v11, &v37);
  os_unfair_lock_unlock(v12);
  if (v23)
  {
    return;
  }

  v28 = *(v1 + 112);
  if (!v37)
  {
    v34 = sub_227F2B304();
    v35 = sub_227F2B8D4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_227EB2000, v34, v35, "Fetching updates because cached ones are out of date.", v36, 2u);
      MEMORY[0x22AAAD240](v36, -1, -1);
    }

    v5 = swift_task_alloc();
    *(v1 + 152) = v5;
    *v5 = v1;
    v6 = sub_227F14E30;
    goto LABEL_15;
  }

  v29 = *(v1 + 96);
  v30 = *(v1 + 104);
  v31 = *(v1 + 72);
  v32 = *(v1 + 16);
  sub_227F1FE14(*(v1 + 88), type metadata accessor for ResourceInfo);
  (*(v30 + 8))(v28, v29);
  sub_227F1FDAC(v31, v32, type metadata accessor for FileInfo);

  v33 = *(v1 + 8);

  v33();
}

uint64_t sub_227F14C6C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_227F153E4;
  }

  else
  {
    v2 = sub_227F14D80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F14D80()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F14E30()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_227F15664;
  }

  else
  {
    v2 = sub_227F14F44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F14F44()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v4, type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_227F15034()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_227F15570;
  }

  else
  {
    v2 = sub_227F25250;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F15148()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_227F1549C;
  }

  else
  {
    v2 = sub_227F1525C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F1525C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_227F1532C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F153E4()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F1549C()
{
  sub_227F1FE14(v0[11], type metadata accessor for ResourceInfo);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227F15570()
{
  v1 = v0[11];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227F15664()
{
  v1 = v0[11];
  sub_227F1FE14(v0[9], type metadata accessor for FileInfo);
  sub_227F1FE14(v1, type metadata accessor for ResourceInfo);
  (*(v0[13] + 8))(v0[14], v0[12]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_227F15758(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v3[5] = swift_task_alloc();
  type metadata accessor for ResourceInfo(0);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for FileInfo(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F158C4, 0, 0);
}

uint64_t sub_227F158C4()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_227F2B114();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v5(v1, v2, v3);
  v6 = *(v4 + 56);
  v6(v1, 0, 1, v3);
  sub_227F19370(v1);
  sub_227EB8430(v1, &qword_27D80E310, &unk_227F2D990);
  v7 = v0[10];
  v5(v7, v0[3], v3);
  v6(v7, 0, 1, v3);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_227F15ACC;
  v9 = v0[10];

  return sub_227F1B70C(v9);
}

uint64_t sub_227F15ACC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  sub_227EB8430(v4, &qword_27D80E310, &unk_227F2D990);
  if (v1)
  {
    v5 = sub_227F16368;
  }

  else
  {
    v5 = sub_227F15C10;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_227F15C10()
{
  v20 = v0;
  v1 = v0[14];
  v2 = *(v0[4] + 32);
  v3 = (v2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v2 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v4 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  sub_227EF1314(v4, v2, v19);
  os_unfair_lock_unlock(v3);
  if (v1)
  {
    return;
  }

  if ((v19[0] & 1) == 0)
  {
    goto LABEL_5;
  }

  v5 = v0[7];
  v6 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  os_unfair_lock_lock(v3);
  v9 = type metadata accessor for PersistenceState(0);
  sub_227F246A0(v4 + *(v9 + 24), v7, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v3);
  sub_227EC2180(v7, v8, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227F1FE14(v7, type metadata accessor for ResourceInfo);
  if ((*(v6 + 48))(v8, 1, v5) == 1)
  {
    sub_227EB8430(v0[5], &qword_27D80E8F0, &unk_227F2F4B0);
LABEL_5:
    if (sub_227EF1234())
    {
      v10 = swift_task_alloc();
      v0[17] = v10;
      *v10 = v0;
      v10[1] = sub_227F161B8;
      v11 = v0[2];

      sub_227F1E770(v11);
    }

    else
    {
      v12 = swift_task_alloc();
      v0[15] = v12;
      *v12 = v0;
      v12[1] = sub_227F16044;

      sub_227F1CA98();
    }

    return;
  }

  sub_227F1FDAC(v0[5], v0[9], type metadata accessor for FileInfo);
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v13 = sub_227F2B334();
  __swift_project_value_buffer(v13, qword_2813CDE98);
  v14 = sub_227F2B304();
  v15 = sub_227F2B8D4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v19[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_227ECAC40(0xD000000000000020, 0x8000000227F34640, v19);
    _os_log_impl(&dword_227EB2000, v14, v15, "%s: Using cached updates.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AAAD240](v17, -1, -1);
    MEMORY[0x22AAAD240](v16, -1, -1);
  }

  sub_227F1FDAC(v0[9], v0[2], type metadata accessor for FileInfo);

  v18 = v0[1];

  v18();
}

uint64_t sub_227F16044()
{
  v2 = *v1;
  v2[16] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227F16404, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[17] = v3;
    *v3 = v2;
    v3[1] = sub_227F161B8;
    v4 = v2[2];

    return sub_227F1E770(v4);
  }
}

uint64_t sub_227F161B8()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_227F164A8;
  }

  else
  {
    v2 = sub_227F162CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227F162CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F16368()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F16404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F164A8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_227F1654C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14[-1] - v4;
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v6 = sub_227F2B334();
  __swift_project_value_buffer(v6, qword_2813CDE98);
  v7 = sub_227F2B304();
  v8 = sub_227F2B8D4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_227EB2000, v7, v8, "ResourceManager started", v9, 2u);
    MEMORY[0x22AAAD240](v9, -1, -1);
  }

  v10 = sub_227F2B114();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_227F19370(v5);
  sub_227EB8430(v5, &qword_27D80E310, &unk_227F2D990);
  if (!v1)
  {
    v11 = *(v2 + 24);
    v12 = (v11 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession);
    os_unfair_lock_lock((v11 + OBJC_IVAR____TtC21RapidResourceDelivery15DownloadManager__urlSession));
    sub_227EC3D44(&v12[2], v11, v14);
    __swift_destroy_boxed_opaque_existential_0(v14);
    os_unfair_lock_unlock(v12);
  }
}

uint64_t sub_227F16750(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1A8, &qword_227F32C10);
  v41 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v40 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1B0, &qword_227F32C18);
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1B8, &qword_227F32C20);
  v35 = *(v7 - 8);
  v36 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1C0, &qword_227F32C28);
  v32 = *(v9 - 8);
  v33 = v9;
  MEMORY[0x28223BE20](v9);
  v31 = &v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1C8, &qword_227F32C30);
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1D0, &qword_227F32C38);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80F1D8, &qword_227F32C40);
  v45 = *(v18 - 8);
  v46 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_227F24A08();
  v21 = v47;
  sub_227F2BD94();
  if (v21 > 1)
  {
    switch(v21)
    {
      case 2:
        v50 = 2;
        sub_227F24B58();
        v22 = v31;
        v23 = v46;
        sub_227F2BB84();
        v25 = v32;
        v24 = v33;
        goto LABEL_11;
      case 3:
        v51 = 3;
        sub_227F24B04();
        v22 = v34;
        v23 = v46;
        sub_227F2BB84();
        v25 = v35;
        v24 = v36;
        goto LABEL_11;
      case 4:
        v52 = 4;
        sub_227F24AB0();
        v22 = v37;
        v23 = v46;
        sub_227F2BB84();
        v25 = v38;
        v24 = v39;
LABEL_11:
        (*(v25 + 8))(v22, v24);
        return (*(v45 + 8))(v20, v23);
    }

LABEL_15:
    v53 = 5;
    sub_227F24A5C();
    v28 = v40;
    v29 = v46;
    sub_227F2BB84();
    v30 = v43;
    sub_227F2BBD4();
    (*(v41 + 8))(v28, v30);
    return (*(v45 + 8))(v20, v29);
  }

  v26 = v44;
  if (!v21)
  {
    v48 = 0;
    sub_227F24C00();
    v23 = v46;
    sub_227F2BB84();
    (*(v15 + 8))(v17, v14);
    return (*(v45 + 8))(v20, v23);
  }

  if (v21 != 1)
  {
    goto LABEL_15;
  }

  v49 = 1;
  sub_227F24BAC();
  v23 = v46;
  sub_227F2BB84();
  (*(v26 + 8))(v13, v11);
  return (*(v45 + 8))(v20, v23);
}

unint64_t sub_227F16DAC()
{
  v1 = *v0;
  v2 = 0x6566696E614D6F6ELL;
  v3 = 0x6574616470556F6ELL;
  v4 = 0xD000000000000020;
  if (v1 != 4)
  {
    v4 = 0x7272456369676F6CLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000013;
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

uint64_t sub_227F16E90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_227F205A4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_227F16EB8(uint64_t a1)
{
  v2 = sub_227F24A08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16EF4(uint64_t a1)
{
  v2 = sub_227F24A08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F16F30(uint64_t a1)
{
  v2 = sub_227F24AB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16F6C(uint64_t a1)
{
  v2 = sub_227F24AB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F16FA8(uint64_t a1)
{
  v2 = sub_227F24A5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F16FE4(uint64_t a1)
{
  v2 = sub_227F24A5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17020(uint64_t a1)
{
  v2 = sub_227F24BAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F1705C(uint64_t a1)
{
  v2 = sub_227F24BAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17098(uint64_t a1)
{
  v2 = sub_227F24C00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F170D4(uint64_t a1)
{
  v2 = sub_227F24C00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17110(uint64_t a1)
{
  v2 = sub_227F24B04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F1714C(uint64_t a1)
{
  v2 = sub_227F24B04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17188(uint64_t a1)
{
  v2 = sub_227F24B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_227F171C4(uint64_t a1)
{
  v2 = sub_227F24B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_227F17200(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return sub_227F2BC64();
}

char *sub_227F172A8@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_227F207C4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_227F172F0()
{
  v0 = sub_227F2B334();
  __swift_allocate_value_buffer(v0, qword_2813CDE98);
  v1 = __swift_project_value_buffer(v0, qword_2813CDE98);
  if (qword_2813CD570 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_2813CE058);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_227F173B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Schedule(0);
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v9 = sub_227F2B114();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v7[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v7[16] = swift_task_alloc();
  v7[17] = swift_task_alloc();
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v7[22] = swift_task_alloc();
  v7[23] = swift_task_alloc();
  v7[24] = swift_task_alloc();
  v7[25] = type metadata accessor for ResourceInfo(0);
  v7[26] = swift_task_alloc();
  v7[27] = type metadata accessor for DownloadConfiguration(0);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F176B4, 0, 0);
}

uint64_t sub_227F176B4()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 40);
  v6 = (*(v0 + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v6);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v8 = type metadata accessor for PersistenceState(0);
  sub_227F246A0(v6 + v7 + *(v8 + 24), v1, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v6);
  v9 = (v5 + *(type metadata accessor for Manifest(0) + 32));
  v86 = *v9;
  v85 = *(v9 + 8);
  sub_227EC2180(v1 + *(v2 + 24), v3, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v1, v4, &qword_27D80E8F0, &unk_227F2F4B0);
  v10 = type metadata accessor for FileInfo(0);
  v11 = *(*(v10 - 8) + 48);
  LODWORD(v2) = v11(v4, 1, v10);
  sub_227EB8430(v4, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v2 == 1)
  {
    v12 = *(v0 + 184);
    v13 = sub_227F2B234();
    (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  }

  else
  {
    sub_227EC2180(*(v0 + 208) + *(*(v0 + 200) + 20), *(v0 + 184), &unk_27D80E3B0, &unk_227F2DB00);
  }

  v14 = *(v0 + 160);
  sub_227EC2180(*(v0 + 208), v14, &qword_27D80E8F0, &unk_227F2F4B0);
  v82 = v11;
  v83 = v10;
  v15 = v11(v14, 1, v10);
  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 88);
  v19 = *(v0 + 96);
  if (v15 == 1)
  {
    sub_227EB8430(v16, &qword_27D80E8F0, &unk_227F2F4B0);
    v20 = *(v19 + 56);
    v20(v17, 1, 1, v18);
    v21 = *(v19 + 16);
  }

  else
  {
    v22 = *(v19 + 16);
    v22(v17, v16, v18);
    sub_227F1FE14(v16, type metadata accessor for FileInfo);
    v20 = *(v19 + 56);
    v20(v17, 0, 1, v18);
    v21 = v22;
  }

  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  v27 = *(v0 + 88);
  v28 = *(v0 + 96);
  v21(v24, *(v0 + 24), v27);
  v20(v24, 0, 1, v27);
  v29 = *(v26 + 48);
  sub_227EC2180(v23, v25, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v24, v25 + v29, &qword_27D80E310, &unk_227F2D990);
  v30 = *(v28 + 48);
  if (v30(v25, 1, v27) == 1)
  {
    v31 = *(v0 + 144);
    v32 = *(v0 + 88);
    sub_227EB8430(*(v0 + 136), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v31, &qword_27D80E310, &unk_227F2D990);
    if (v30(v25 + v29, 1, v32) == 1)
    {
      sub_227EB8430(*(v0 + 120), &qword_27D80E310, &unk_227F2D990);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v33 = *(v0 + 88);
  sub_227EC2180(*(v0 + 120), *(v0 + 128), &qword_27D80E310, &unk_227F2D990);
  v34 = v30(v25 + v29, 1, v33);
  v36 = *(v0 + 136);
  v35 = *(v0 + 144);
  v37 = *(v0 + 128);
  if (v34 == 1)
  {
    v38 = *(v0 + 88);
    v39 = *(v0 + 96);
    sub_227EB8430(*(v0 + 136), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v35, &qword_27D80E310, &unk_227F2D990);
    (*(v39 + 8))(v37, v38);
LABEL_12:
    sub_227EB8430(*(v0 + 120), &qword_27D80E4F8, &qword_227F2DE80);
LABEL_13:
    v40 = *(v0 + 176);
LABEL_17:
    v49 = sub_227F2B234();
    (*(*(v49 - 8) + 56))(v40, 1, 1, v49);
    goto LABEL_18;
  }

  v79 = *(v0 + 120);
  v41 = *(v0 + 96);
  v42 = *(v0 + 104);
  v43 = *(v0 + 88);
  (*(v41 + 32))(v42, v25 + v29, v43);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v44 = sub_227F2B634();
  v45 = *(v41 + 8);
  v45(v42, v43);
  sub_227EB8430(v36, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v35, &qword_27D80E310, &unk_227F2D990);
  v45(v37, v43);
  sub_227EB8430(v79, &qword_27D80E310, &unk_227F2D990);
  if ((v44 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_15:
  v46 = *(v0 + 152);
  sub_227EC2180(*(v0 + 208), v46, &qword_27D80E8F0, &unk_227F2F4B0);
  v47 = v82(v46, 1, v83);
  v40 = *(v0 + 176);
  v48 = *(v0 + 152);
  if (v47 == 1)
  {
    sub_227EB8430(v48, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_17;
  }

  v78 = *(v0 + 152);
  sub_227EC2180(v48 + *(v83 + 36), *(v0 + 176), &unk_27D80E3B0, &unk_227F2DB00);
  sub_227F1FE14(v78, type metadata accessor for FileInfo);
LABEL_18:
  v51 = *(v0 + 216);
  v50 = *(v0 + 224);
  v53 = *(v0 + 184);
  v52 = *(v0 + 192);
  v54 = *(v0 + 80);
  v84 = *(v0 + 72);
  v55 = *(v0 + 48);
  v56 = *(v0 + 56);
  v81 = *(v0 + 176);
  v57 = sub_227EE6188(*(v0 + 24));
  v80 = v58;
  (*(v56 + 56))(v54, 1, 1, v55);
  *v50 = 0;
  sub_227EC2180(v52, v50 + v51[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v53, v50 + v51[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v81, v50 + v51[7], &unk_27D80E3B0, &unk_227F2DB00);
  v59 = (v50 + v51[8]);
  *v59 = v57;
  v59[1] = v80;
  v60 = v50 + v51[9];
  *v60 = v86;
  v60[8] = v85;
  v61 = v50 + v51[10];
  *v61 = 0;
  v61[8] = 1;
  v62 = v50 + v51[11];
  *v62 = 0u;
  *(v62 + 1) = 0u;
  *(v62 + 4) = 1;
  sub_227EC2180(v54, v84, &qword_27D80E360, &unk_227F32A90);
  v63 = *(v56 + 48);
  v64 = v63(v84, 1, v55);
  v65 = *(v0 + 208);
  v67 = *(v0 + 184);
  v66 = *(v0 + 192);
  v68 = *(v0 + 176);
  v69 = *(v0 + 72);
  v70 = *(v0 + 80);
  v71 = *(v0 + 64);
  if (v64 == 1)
  {
    v87 = *(v0 + 48);
    sub_227F26898(v67, v66, 0, v71, 0.0);
    sub_227EB8430(v70, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v68, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v67, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v66, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v65, type metadata accessor for ResourceInfo);
    sub_227EC21E8(0, 0, 0, 0, 1);
    if (v63(v69, 1, v87) != 1)
    {
      sub_227EB8430(*(v0 + 72), &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(*(v0 + 80), &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v68, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v67, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v66, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FE14(v65, type metadata accessor for ResourceInfo);
    sub_227F1FDAC(v69, v71, type metadata accessor for Schedule);
  }

  v72 = *(v0 + 224);
  v73 = *(v0 + 232);
  sub_227F1FDAC(*(v0 + 64), v72 + *(*(v0 + 216) + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v72, v73, type metadata accessor for DownloadConfiguration);
  v74 = swift_task_alloc();
  *(v0 + 240) = v74;
  *v74 = v0;
  v74[1] = sub_227F180E8;
  v75 = *(v0 + 232);
  v76 = *(v0 + 24);

  return DownloadManager.download(_:config:)(v76, v75);
}

uint64_t sub_227F180E8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 248) = v1;

  v5 = *(v3 + 232);
  if (v1)
  {
    sub_227F1FE14(*(v3 + 232), type metadata accessor for DownloadConfiguration);

    return MEMORY[0x2822009F8](sub_227F18370, 0, 0);
  }

  else
  {

    sub_227F1FE14(v5, type metadata accessor for DownloadConfiguration);

    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_227F18370()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227F184A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_227EC2180(a3, v22 - v9, &qword_27D80EB88, &qword_227F312D0);
  v11 = sub_227F2B854();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_227EB8430(v10, &qword_27D80EB88, &qword_227F312D0);
  }

  else
  {
    sub_227F2B844();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_227F2B7B4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_227F2B6E4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_227EB8430(a3, &qword_27D80EB88, &qword_227F312D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_227F18754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F187F0, 0, 0);
}

uint64_t sub_227F187F0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227F18884;

  return sub_227EC42E8();
}

uint64_t sub_227F18884()
{

  return MEMORY[0x2822009F8](sub_227F18980, 0, 0);
}

uint64_t sub_227F18980(uint64_t a1)
{
  v2 = sub_227F2B304();
  v3 = sub_227F2B8C4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_227EB2000, v2, v3, "Eagerly fetching new manifest after restart.", v4, 2u);
    MEMORY[0x22AAAD240](v4, -1, -1);
  }

  v5 = *(v1 + 32);

  v6 = sub_227F2B114();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_task_alloc();
  *(v1 + 48) = v7;
  *v7 = v1;
  v7[1] = sub_227F18AD4;
  v8 = *(v1 + 32);

  return sub_227F18DB0(v8);
}

uint64_t sub_227F18AD4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 56) = v0;

  sub_227EB8430(v2, &qword_27D80E310, &unk_227F2D990);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227F18C48, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_227F18C48()
{
  v1 = *(v0 + 56);
  v2 = v1;
  v3 = sub_227F2B304();
  v4 = sub_227F2B8E4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 56);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_227EB2000, v3, v4, "Failed to eagerly fetch resources after restart: %@", v7, 0xCu);
    sub_227EB8430(v8, &qword_27D80E4A0, &qword_227F2DE40);
    MEMORY[0x22AAAD240](v8, -1, -1);
    MEMORY[0x22AAAD240](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_227F18DB0(uint64_t a1)
{
  *(v2 + 16) = v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_227F18E48;

  return sub_227F1B70C(a1);
}

uint64_t sub_227F18E48(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227F18F80, 0, 0);
  }
}

uint64_t sub_227F18F80()
{
  v1 = (v0[4] + OBJC_IVAR____TtC21RapidResourceDelivery12DownloadTask_downloadTask);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 24))(v2, v3) == 3 || !sub_227EF1234())
  {
    v10 = swift_task_alloc();
    v0[5] = v10;
    *v10 = v0;
    v10[1] = sub_227F19174;

    return sub_227F1CA98();
  }

  else
  {
    if (qword_2813CDE90 != -1)
    {
      swift_once();
    }

    v4 = sub_227F2B334();
    __swift_project_value_buffer(v4, qword_2813CDE98);
    v5 = sub_227F2B304();
    v6 = sub_227F2B8D4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_227EB2000, v5, v6, "Existing manifest is good to use. Getting it back", v7, 2u);
      MEMORY[0x22AAAD240](v7, -1, -1);
    }

    v8 = v0[1];

    return v8(0);
  }
}

uint64_t sub_227F19174(char a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {
    v5 = sub_227F19308;
  }

  else
  {
    *(v4 + 56) = a1 & 1;
    v5 = sub_227F192A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227F192A0()
{

  v1 = *(v0 + 56);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_227F19308()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_227F19370(uint64_t a1)
{
  v106 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v2 - 8);
  v98 = &v88 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v4 - 8);
  v90 = &v88 - v5;
  v6 = sub_227F2AFF4();
  v101 = *(v6 - 8);
  v102 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Configuration(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v92 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v89 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v91 = &v88 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v88 - v16;
  v18 = sub_227F2B114();
  v19 = *(v18 - 8);
  v108 = v18;
  v109 = v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v88 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v103 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v107 = &v88 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v30 = &v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v32 = &v88 - v31;
  v33 = sub_227F2B334();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x28223BE20](v33);
  v96 = v36;
  v97 = &v88 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v38 = &v88 - v37;
  if (qword_2813CDE90 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v33, qword_2813CDE98);
  v111 = v38;
  v112 = v34;
  v40 = *(v34 + 16);
  v94 = v39;
  v95 = v34 + 16;
  v115 = v33;
  v93 = v40;
  (v40)(v38);
  v99 = v1;
  v41 = *(v1 + 32);
  sub_227F282D8(v30);
  v42 = *(v9 + 48);
  if (v42(v30, 1, v8) == 1)
  {
    v43 = (v41 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
    os_unfair_lock_lock((v41 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
    sub_227EC2180(v43 + *(v44 + 28), v32, &qword_27D80EB30, &qword_227F30448);
    os_unfair_lock_unlock(v43);
    if (v42(v30, 1, v8) != 1)
    {
      sub_227EB8430(v30, &qword_27D80EB30, &qword_227F30448);
    }
  }

  else
  {
    sub_227F1FDAC(v30, v32, type metadata accessor for Configuration);
    (*(v9 + 56))(v32, 0, 1, v8);
  }

  v45 = v42(v32, 1, v8);
  sub_227EB8430(v32, &qword_27D80EB30, &qword_227F30448);
  if (v45 != 1)
  {
    goto LABEL_10;
  }

  sub_227EC2180(v106, v17, &qword_27D80E310, &unk_227F2D990);
  v46 = v108;
  v47 = v109;
  if ((*(v109 + 48))(v17, 1, v108) == 1)
  {
    sub_227EB8430(v17, &qword_27D80E310, &unk_227F2D990);
LABEL_10:
    v48 = v110;
    goto LABEL_14;
  }

  v106 = v41;
  v49 = v107;
  (*(v47 + 32))(v107, v17, v46);
  v50 = v103;
  (*(v47 + 16))(v103, v49, v46);
  v113 = 0x6E6F736A2E647272;
  v114 = 0xE800000000000000;
  v51 = v100;
  v52 = v101;
  v53 = v102;
  (*(v101 + 104))(v100, *MEMORY[0x277CC91D8], v102);
  sub_227EB84D8();
  v54 = v105;
  sub_227F2B104();
  (*(v52 + 8))(v51, v53);
  v55 = v104;
  sub_227F2AFD4();
  v56 = v110;
  v57 = sub_227F2B124();
  if (v56)
  {

    v59 = *(v47 + 8);
    v59(v55, v46);
    v59(v54, v46);
    v59(v50, v46);
    v59(v107, v46);
    v48 = 0;
LABEL_14:
    sub_227EF17E0();
    if (v48)
    {
      v64 = v115;
      v66 = v111;
      v65 = v112;
    }

    else
    {
      v67 = v63;
      v66 = v111;
      v68 = sub_227F2B304();
      v64 = v115;
      v65 = v112;
      if (v67 > 1)
      {
        v71 = sub_227F2B8F4();
        if (os_log_type_enabled(v68, v71))
        {
          v72 = swift_slowAlloc();
          *v72 = 0;
          _os_log_impl(&dword_227EB2000, v68, v71, "Manifest was re-configured, restarting ResourceManager.", v72, 2u);
          MEMORY[0x22AAAD240](v72, -1, -1);
        }

        v73 = sub_227F2B854();
        v74 = v98;
        (*(*(v73 - 8) + 56))(v98, 1, 1, v73);
        v75 = v97;
        v93(v97, v94, v64);
        v76 = (*(v65 + 80) + 40) & ~*(v65 + 80);
        v77 = swift_allocObject();
        *(v77 + 2) = 0;
        *(v77 + 3) = 0;
        *(v77 + 4) = v99;
        (*(v65 + 32))(&v77[v76], v75, v64);

        sub_227F13F90(0, 0, v74, &unk_227F32AA8, v77);
      }

      else
      {
        v69 = sub_227F2B8D4();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&dword_227EB2000, v68, v69, "Configuration unchanged.", v70, 2u);
          MEMORY[0x22AAAD240](v70, -1, -1);
        }
      }
    }

    return (*(v65 + 8))(v66, v64);
  }

  v60 = v57;
  v61 = v58;
  sub_227F2AE24();
  swift_allocObject();
  sub_227F2AE14();
  sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration, &unk_227F2E29C);
  v62 = v92;
  sub_227F2AE04();
  sub_227EC15A8(v60, v61);

  v79 = v46;
  v80 = *(v109 + 8);
  v80(v104, v79);
  v80(v105, v79);
  v80(v50, v79);
  v81 = v89;
  sub_227F1FDAC(v62, v89, type metadata accessor for Configuration);
  v82 = v91;
  sub_227F1FDAC(v81, v91, type metadata accessor for Configuration);
  v66 = v111;
  v83 = sub_227F2B304();
  v84 = sub_227F2B8F4();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 0;
    _os_log_impl(&dword_227EB2000, v83, v84, "No config found. Adopting config in client-provided assets folder.", v85, 2u);
    v86 = v85;
    v82 = v91;
    MEMORY[0x22AAAD240](v86, -1, -1);
  }

  v87 = v90;
  sub_227F1A024(v82, v90);
  v64 = v115;
  v65 = v112;
  sub_227EB8430(v87, &qword_27D80EB28, &qword_227F30440);
  sub_227F1FE14(v82, type metadata accessor for Configuration);
  v80(v107, v108);
  return (*(v65 + 8))(v66, v64);
}

void sub_227F1A024(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v24 = a2;
  v6 = sub_227F2B334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB88, &qword_227F312D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v23 - v10;
  v12 = *(v2 + 32);
  v13 = sub_227EF4A78(a1);
  if (!v3)
  {
    if (v13 > 1u)
    {
      v23 = 0;
      if (qword_2813CDE90 != -1)
      {
        swift_once();
      }

      v18 = __swift_project_value_buffer(v6, qword_2813CDE98);
      v19 = sub_227F2B854();
      (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
      (*(v7 + 16))(&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v6);
      v20 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v21 = swift_allocObject();
      *(v21 + 2) = 0;
      *(v21 + 3) = 0;
      *(v21 + 4) = v4;
      (*(v7 + 32))(&v21[v20], &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

      sub_227F13F90(0, 0, v11, &unk_227F32AE0, v21);

      v22 = type metadata accessor for Manifest(0);
      (*(*(v22 - 8) + 56))(v24, 1, 1, v22);
    }

    else
    {
      v14 = (v12 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
      os_unfair_lock_lock((v12 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
      v16 = (v12 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
      os_unfair_lock_lock(v16);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
      sub_227EF34BC(v16 + *(v17 + 28), v14 + v15, &v25, v24);
      os_unfair_lock_unlock(v16);
      os_unfair_lock_unlock(v14);
    }
  }
}

void sub_227F1A374(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB28, &qword_227F30440);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = *(v1 + 32);
  v8 = (v7 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state));
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v10 = (v7 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest);
  os_unfair_lock_lock((v7 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager__manifest));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB40, &unk_227F304F0);
  sub_227EF34BC(v10 + *(v11 + 28), v8 + v9, &v15, v6);
  if (v2)
  {
    os_unfair_lock_unlock(v10);
    os_unfair_lock_unlock(v8);
  }

  else
  {
    os_unfair_lock_unlock(v10);
    os_unfair_lock_unlock(v8);
    v12 = type metadata accessor for Manifest(0);
    if ((*(*(v12 - 8) + 48))(v6, 1, v12) == 1)
    {
      sub_227EB8430(v6, &qword_27D80EB28, &qword_227F30440);
      sub_227EF9A28();
      swift_allocError();
      *v13 = xmmword_227F2CC00;
      swift_willThrow();
    }

    else
    {
      sub_227F1FDAC(v6, a1, type metadata accessor for Manifest);
    }
  }
}

uint64_t sub_227F1A564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v141 = a2;
  v136 = a3;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB50, &qword_227F30470);
  MEMORY[0x28223BE20](v127);
  v130 = &v117 - v4;
  v125 = sub_227F2AFF4();
  v124 = *(v125 - 1);
  MEMORY[0x28223BE20](v125);
  v123 = &v117 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB30, &qword_227F30448);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v122 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v126 = &v117 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v129 = &v117 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v137 = &v117 - v14;
  MEMORY[0x28223BE20](v13);
  v138 = &v117 - v15;
  v143 = type metadata accessor for Configuration(0);
  v134 = *(v143 - 8);
  v16 = MEMORY[0x28223BE20](v143);
  v120 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v121 = &v117 - v19;
  MEMORY[0x28223BE20](v18);
  v135 = &v117 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v117 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F8, &qword_227F2F5E0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v117 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v140 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v117 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v117 - v33;
  v35 = sub_227F2B114();
  v36 = *(v35 - 8);
  v37 = MEMORY[0x28223BE20](v35);
  v128 = &v117 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v131 = &v117 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v132 = &v117 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v142 = &v117 - v44;
  MEMORY[0x28223BE20](v43);
  v146 = &v117 - v45;
  v46 = type metadata accessor for ResourceInfo(0);
  sub_227EC2180(a1 + *(v46 + 32), v26, &qword_27D80E8F8, &qword_227F2F5E0);
  v47 = type metadata accessor for ResourceInfo.DownloadState(0);
  if ((*(*(v47 - 8) + 48))(v26, 1, v47) == 1)
  {
    sub_227EB8430(v26, &qword_27D80E8F8, &qword_227F2F5E0);
    v48 = *(v36 + 56);
    v48(v32, 1, 1, v35);
    sub_227EC2180(a1, v23, &qword_27D80E8F0, &unk_227F2F4B0);
    v49 = type metadata accessor for FileInfo(0);
    if ((*(*(v49 - 8) + 48))(v23, 1, v49) == 1)
    {
      sub_227EB8430(v23, &qword_27D80E8F0, &unk_227F2F4B0);
      v50 = 1;
    }

    else
    {
      (*(v36 + 16))(v34, v23, v35);
      sub_227F1FE14(v23, type metadata accessor for FileInfo);
      v50 = 0;
    }

    v48(v34, v50, 1, v35);
    v52 = *(v36 + 48);
    if (v52(v32, 1, v35) != 1)
    {
      sub_227EB8430(v32, &qword_27D80E310, &unk_227F2D990);
    }

    v53 = v52(v34, 1, v35);
  }

  else
  {
    (*(v36 + 16))(v32, v26, v35);
    sub_227F1FE14(v26, type metadata accessor for ResourceInfo.DownloadState);
    v51 = *(v36 + 56);
    v51(v32, 0, 1, v35);
    (*(v36 + 32))(v34, v32, v35);
    v51(v34, 0, 1, v35);
    v52 = *(v36 + 48);
    v53 = v52(v34, 1, v35);
  }

  if (v53 == 1)
  {
    sub_227EB8430(v34, &qword_27D80E310, &unk_227F2D990);
    sub_227EF9A28();
    swift_allocError();
    *v54 = 0;
    v54[1] = 0;
    return swift_willThrow();
  }

  v56 = v36 + 32;
  v57 = *(v36 + 32);
  v57(v146, v34, v35);
  v58 = v140;
  sub_227EC2180(v141, v140, &qword_27D80E310, &unk_227F2D990);
  if (v52(v58, 1, v35) == 1)
  {
    sub_227EB8430(v58, &qword_27D80E310, &unk_227F2D990);
    return (v57)(v136, v146, v35);
  }

  v59 = v142;
  v57(v142, v58, v35);
  v60 = v133;
  v61 = v138;
  sub_227F282D8(v138);
  v62 = v134;
  v140 = *(v134 + 48);
  v141 = v134 + 48;
  v63 = (v140)(v61, 1, v143);
  v119 = v35;
  if (v63 != 1)
  {
    v117 = v36 + 32;
    v125 = v57;
    v71 = v135;
    sub_227F1FDAC(v61, v135, type metadata accessor for Configuration);
    v72 = v137;
    goto LABEL_17;
  }

  (*(v36 + 16))(v132, v59, v35);
  v144 = 0x6E6F736A2E647272;
  v145 = 0xE800000000000000;
  v64 = v124;
  v65 = v123;
  v66 = v125;
  (*(v124 + 104))(v123, *MEMORY[0x277CC91D8], v125);
  sub_227EB84D8();
  sub_227F2B104();
  (*(v64 + 8))(v65, v66);
  v67 = v128;
  sub_227F2AFD4();
  v68 = v139;
  v69 = sub_227F2B124();
  if (!v68)
  {
    v98 = v69;
    v99 = v70;
    v125 = v57;
    v118 = v36;
    sub_227F2AE24();
    swift_allocObject();
    sub_227F2AE14();
    sub_227F1FD64(&qword_27D80EBA8, type metadata accessor for Configuration, &unk_227F2E29C);
    v100 = v121;
    v101 = v143;
    sub_227F2AE04();
    v139 = 0;
    sub_227EC15A8(v98, v99);

    v36 = v118;
    v113 = *(v118 + 8);
    v114 = v119;
    v113(v128, v119);
    v113(v131, v114);
    v113(v132, v114);
    v71 = v135;
    sub_227F1FDAC(v100, v135, type metadata accessor for Configuration);
    v115 = v138;
    v116 = (v140)(v138, 1, v101);
    v117 = v56;
    if (v116 != 1)
    {
      sub_227EB8430(v115, &qword_27D80EB30, &qword_227F30448);
    }

    v72 = v137;
    v62 = v134;
LABEL_17:
    sub_227F246A0(v71, v72, type metadata accessor for Configuration);
    v73 = *(v62 + 56);
    v74 = v143;
    v73(v72, 0, 1, v143);
    v75 = *(v60 + 32);
    v76 = v126;
    sub_227F282D8(v126);
    v77 = v74;
    v78 = v140;
    v79 = (v140)(v76, 1, v74);
    v118 = v36;
    if (v79 == 1)
    {
      v80 = (v75 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration);
      os_unfair_lock_lock((v75 + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_configuration));
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB48, &unk_227F30460);
      v82 = v129;
      sub_227EC2180(v80 + *(v81 + 28), v129, &qword_27D80EB30, &qword_227F30448);
      os_unfair_lock_unlock(v80);
      v83 = v82;
      if (v78(v76, 1, v77) != 1)
      {
        sub_227EB8430(v76, &qword_27D80EB30, &qword_227F30448);
      }
    }

    else
    {
      v83 = v129;
      sub_227F1FDAC(v76, v129, type metadata accessor for Configuration);
      v73(v83, 0, 1, v77);
    }

    v84 = *(v127 + 48);
    v85 = v137;
    v86 = v130;
    sub_227EC2180(v137, v130, &qword_27D80EB30, &qword_227F30448);
    sub_227EC2180(v83, v86 + v84, &qword_27D80EB30, &qword_227F30448);
    v87 = v140;
    if ((v140)(v86, 1, v77) == 1)
    {
      sub_227EB8430(v83, &qword_27D80EB30, &qword_227F30448);
      v88 = v130;
      sub_227EB8430(v85, &qword_27D80EB30, &qword_227F30448);
      if (v87(v88 + v84, 1, v77) == 1)
      {
        sub_227EB8430(v88, &qword_27D80EB30, &qword_227F30448);
        v89 = v118;
LABEL_24:
        sub_227F1FE14(v135, type metadata accessor for Configuration);
        v90 = v119;
        (*(v89 + 8))(v142, v119);
        return (v125)(v136, v146, v90);
      }
    }

    else
    {
      v91 = v122;
      sub_227EC2180(v86, v122, &qword_27D80EB30, &qword_227F30448);
      if (v87(v86 + v84, 1, v77) != 1)
      {
        v105 = v120;
        sub_227F1FDAC(v86 + v84, v120, type metadata accessor for Configuration);
        if (_s21RapidResourceDelivery18ContainerizableURLV2eeoiySbAC_ACtFZ_0())
        {
          v106 = MEMORY[0x22AAAC210]();
          v108 = v107;
          v109 = MEMORY[0x22AAAC210]();
          v111 = v110;
          v112 = sub_227ED43A4(v106, v108, v109, v110);
          sub_227EC15A8(v109, v111);
          sub_227EC15A8(v106, v108);
          sub_227F1FE14(v105, type metadata accessor for Configuration);
          sub_227EB8430(v129, &qword_27D80EB30, &qword_227F30448);
          sub_227EB8430(v137, &qword_27D80EB30, &qword_227F30448);
          sub_227F1FE14(v91, type metadata accessor for Configuration);
          sub_227EB8430(v86, &qword_27D80EB30, &qword_227F30448);
          v89 = v118;
          if (v112)
          {
            goto LABEL_24;
          }

LABEL_29:
          sub_227EF9A28();
          swift_allocError();
          *v95 = xmmword_227F32A00;
          swift_willThrow();
          sub_227F1FE14(v135, type metadata accessor for Configuration);
          v96 = *(v89 + 8);
          v97 = v119;
          v96(v142, v119);
          return (v96)(v146, v97);
        }

        sub_227F1FE14(v105, type metadata accessor for Configuration);
        sub_227EB8430(v129, &qword_27D80EB30, &qword_227F30448);
        sub_227EB8430(v137, &qword_27D80EB30, &qword_227F30448);
        sub_227F1FE14(v91, type metadata accessor for Configuration);
        v94 = v86;
        v92 = &qword_27D80EB30;
        v93 = &qword_227F30448;
LABEL_28:
        sub_227EB8430(v94, v92, v93);
        v89 = v118;
        goto LABEL_29;
      }

      sub_227EB8430(v129, &qword_27D80EB30, &qword_227F30448);
      v88 = v130;
      sub_227EB8430(v137, &qword_27D80EB30, &qword_227F30448);
      sub_227F1FE14(v91, type metadata accessor for Configuration);
    }

    v92 = &qword_27D80EB50;
    v93 = &qword_227F30470;
    v94 = v88;
    goto LABEL_28;
  }

  v102 = *(v36 + 8);
  v103 = v119;
  v102(v67, v119);
  v102(v131, v103);
  v102(v132, v103);
  v102(v142, v103);
  v102(v146, v103);
  v104 = v138;
  result = (v140)(v138, 1, v143);
  if (result != 1)
  {
    return sub_227EB8430(v104, &qword_27D80EB30, &qword_227F30448);
  }

  return result;
}

uint64_t sub_227F1B70C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for Schedule(0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E360, &unk_227F32A90);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E4F8, &qword_227F2DE80);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E310, &unk_227F2D990);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D80E3B0, &unk_227F2DB00);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80E8F0, &unk_227F2F4B0);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = type metadata accessor for DownloadConfiguration(0);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v4 = sub_227F2B114();
  v2[24] = v4;
  v2[25] = *(v4 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = type metadata accessor for ResourceInfo(0);
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227F1BA1C, 0, 0);
}

uint64_t sub_227F1BA1C()
{
  sub_227F19370(*(v0 + 16));
  v1 = *(v0 + 232);
  v2 = *(v0 + 216);
  v3 = *(v0 + 16);
  v4 = (*(*(v0 + 24) + 32) + OBJC_IVAR____TtC21RapidResourceDelivery18PersistenceManager_state);
  os_unfair_lock_lock(v4);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D80EB38, &unk_227F30450) + 28);
  v6 = type metadata accessor for PersistenceState(0);
  sub_227F246A0(v4 + v5 + *(v6 + 20), v1, type metadata accessor for ResourceInfo);
  os_unfair_lock_unlock(v4);
  sub_227F1A564(v1, v3, v2);
  v7 = *(*(v0 + 24) + 16);
  v8 = *(v7 + 16);
  v9 = sub_227F2B644();
  [v8 doubleForKey_];
  v11 = v10;

  if (v11 <= 0.0)
  {
    v11 = *(v7 + 40);
  }

  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  v14 = *(v0 + 152);
  v15 = *(v0 + 160);
  v16 = *(v0 + 128);
  sub_227EC2180(v13, v15, &qword_27D80E8F0, &unk_227F2F4B0);
  v17 = type metadata accessor for FileInfo(0);
  v18 = *(*(v17 - 8) + 48);
  if (v18(v15, 1, v17) == 1)
  {
    v11 = 0.0;
  }

  sub_227EB8430(v15, &qword_27D80E8F0, &unk_227F2F4B0);
  sub_227EC2180(v13 + *(v12 + 24), v16, &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v13, v14, &qword_27D80E8F0, &unk_227F2F4B0);
  v19 = v18(v14, 1, v17);
  sub_227EB8430(v14, &qword_27D80E8F0, &unk_227F2F4B0);
  if (v19 == 1)
  {
    v20 = *(v0 + 120);
    v21 = sub_227F2B234();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  }

  else
  {
    sub_227EC2180(*(v0 + 232) + *(*(v0 + 224) + 20), *(v0 + 120), &unk_27D80E3B0, &unk_227F2DB00);
  }

  v22 = *(v0 + 144);
  sub_227EC2180(*(v0 + 232), v22, &qword_27D80E8F0, &unk_227F2F4B0);
  v89 = v18;
  v91 = v17;
  v23 = v18(v22, 1, v17);
  v25 = *(v0 + 192);
  v24 = *(v0 + 200);
  v26 = *(v0 + 144);
  v27 = *(v0 + 104);
  if (v23 == 1)
  {
    sub_227EB8430(*(v0 + 144), &qword_27D80E8F0, &unk_227F2F4B0);
    v28 = *(v24 + 56);
    v28(v27, 1, 1, v25);
    v29 = *(v24 + 16);
  }

  else
  {
    v30 = *(v24 + 16);
    v30(*(v0 + 104), *(v0 + 144), *(v0 + 192));
    sub_227F1FE14(v26, type metadata accessor for FileInfo);
    v28 = *(v24 + 56);
    v28(v27, 0, 1, v25);
    v29 = v30;
  }

  v32 = *(v0 + 192);
  v31 = *(v0 + 200);
  v34 = *(v0 + 96);
  v33 = *(v0 + 104);
  v36 = *(v0 + 72);
  v35 = *(v0 + 80);
  v29(v34, *(v0 + 216), v32);
  v28(v34, 0, 1, v32);
  v37 = *(v36 + 48);
  sub_227EC2180(v33, v35, &qword_27D80E310, &unk_227F2D990);
  sub_227EC2180(v34, v35 + v37, &qword_27D80E310, &unk_227F2D990);
  v38 = *(v31 + 48);
  v39 = v38(v35, 1, v32);
  v40 = *(v0 + 192);
  if (v39 == 1)
  {
    v41 = *(v0 + 104);
    sub_227EB8430(*(v0 + 96), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v41, &qword_27D80E310, &unk_227F2D990);
    if (v38(v35 + v37, 1, v40) == 1)
    {
      sub_227EB8430(*(v0 + 80), &qword_27D80E310, &unk_227F2D990);
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  sub_227EC2180(*(v0 + 80), *(v0 + 88), &qword_27D80E310, &unk_227F2D990);
  if (v38(v35 + v37, 1, v40) == 1)
  {
    v42 = *(v0 + 192);
    v43 = *(v0 + 200);
    v44 = *(v0 + 104);
    v45 = *(v0 + 88);
    sub_227EB8430(*(v0 + 96), &qword_27D80E310, &unk_227F2D990);
    sub_227EB8430(v44, &qword_27D80E310, &unk_227F2D990);
    (*(v43 + 8))(v45, v42);
LABEL_16:
    sub_227EB8430(*(v0 + 80), &qword_27D80E4F8, &qword_227F2DE80);
LABEL_17:
    v46 = *(v0 + 112);
LABEL_21:
    v57 = sub_227F2B234();
    (*(*(v57 - 8) + 56))(v46, 1, 1, v57);
    goto LABEL_22;
  }

  v48 = *(v0 + 200);
  v47 = *(v0 + 208);
  v49 = *(v0 + 192);
  v50 = *(v0 + 96);
  v51 = *(v0 + 88);
  v86 = *(v0 + 104);
  v87 = *(v0 + 80);
  (*(v48 + 32))(v47, v35 + v37, v49);
  sub_227F1FD64(&qword_27D80E508, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v52 = sub_227F2B634();
  v53 = *(v48 + 8);
  v53(v47, v49);
  sub_227EB8430(v50, &qword_27D80E310, &unk_227F2D990);
  sub_227EB8430(v86, &qword_27D80E310, &unk_227F2D990);
  v53(v51, v49);
  sub_227EB8430(v87, &qword_27D80E310, &unk_227F2D990);
  if ((v52 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v54 = *(v0 + 136);
  sub_227EC2180(*(v0 + 232), v54, &qword_27D80E8F0, &unk_227F2F4B0);
  v55 = v89(v54, 1, v91);
  v56 = *(v0 + 136);
  v46 = *(v0 + 112);
  if (v55 == 1)
  {
    sub_227EB8430(v56, &qword_27D80E8F0, &unk_227F2F4B0);
    goto LABEL_21;
  }

  v85 = *(v0 + 136);
  sub_227EC2180(v56 + *(v91 + 36), *(v0 + 112), &unk_27D80E3B0, &unk_227F2DB00);
  sub_227F1FE14(v85, type metadata accessor for FileInfo);
LABEL_22:
  v59 = *(v0 + 168);
  v58 = *(v0 + 176);
  v61 = *(v0 + 120);
  v60 = *(v0 + 128);
  v62 = *(v0 + 64);
  v92 = *(v0 + 56);
  v63 = *(v0 + 32);
  v64 = *(v0 + 40);
  v90 = *(v0 + 112);
  v65 = sub_227EE6188(*(v0 + 216));
  v88 = v66;
  (*(v64 + 56))(v62, 1, 1, v63);
  *v58 = v11;
  sub_227EC2180(v60, v58 + v59[5], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v61, v58 + v59[6], &unk_27D80E3B0, &unk_227F2DB00);
  sub_227EC2180(v90, v58 + v59[7], &unk_27D80E3B0, &unk_227F2DB00);
  v67 = (v58 + v59[8]);
  *v67 = v65;
  v67[1] = v88;
  v68 = v58 + v59[9];
  *v68 = 1024;
  v68[8] = 0;
  v69 = v58 + v59[10];
  *v69 = 0;
  v69[8] = 1;
  v70 = v58 + v59[11];
  *v70 = 0u;
  *(v70 + 1) = 0u;
  *(v70 + 4) = 1;
  sub_227EC2180(v62, v92, &qword_27D80E360, &unk_227F32A90);
  v71 = *(v64 + 48);
  v72 = v71(v92, 1, v63);
  v74 = *(v0 + 120);
  v73 = *(v0 + 128);
  v75 = *(v0 + 112);
  v76 = *(v0 + 56);
  v77 = *(v0 + 64);
  v78 = *(v0 + 48);
  if (v72 == 1)
  {
    v93 = *(v0 + 32);
    sub_227F26898(v74, v73, 0, v78, v11);
    sub_227EB8430(v77, &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v75, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v74, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v73, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EC21E8(0, 0, 0, 0, 1);
    if (v71(v76, 1, v93) != 1)
    {
      sub_227EB8430(*(v0 + 56), &qword_27D80E360, &unk_227F32A90);
    }
  }

  else
  {
    sub_227EB8430(*(v0 + 64), &qword_27D80E360, &unk_227F32A90);
    sub_227EB8430(v75, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v74, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227EB8430(v73, &unk_27D80E3B0, &unk_227F2DB00);
    sub_227F1FDAC(v76, v78, type metadata accessor for Schedule);
  }

  v79 = *(v0 + 176);
  v80 = *(v0 + 184);
  sub_227F1FDAC(*(v0 + 48), v79 + *(*(v0 + 168) + 48), type metadata accessor for Schedule);
  sub_227F1FDAC(v79, v80, type metadata accessor for DownloadConfiguration);
  v81 = swift_task_alloc();
  *(v0 + 240) = v81;
  *v81 = v0;
  v81[1] = sub_227F1C60C;
  v82 = *(v0 + 216);
  v83 = *(v0 + 184);

  return DownloadManager.download(_:config:)(v82, v83);
}