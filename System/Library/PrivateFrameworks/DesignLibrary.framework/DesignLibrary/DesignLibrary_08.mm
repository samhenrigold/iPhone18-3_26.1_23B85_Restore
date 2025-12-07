uint64_t sub_18AF31A94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF10, &qword_18AFD9A30);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_18AE83A40(a1, &v5 - v3, &qword_1EA99AF10, &qword_18AFD9A30);
  return sub_18AFCC2E4();
}

uint64_t sub_18AF31B3C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEE0, &qword_18AFD99D0);
  v18 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v18 - v2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEE8, &qword_18AFD99D8);
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEF0, &qword_18AFD99E0);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v18 - v6;
  v25 = sub_18AFCCD74();
  v29 = sub_18AFCCD64();
  v8 = MEMORY[0x1E69815C0];
  v9 = MEMORY[0x1E6981568];
  sub_18AFCBAB4();

  v10 = sub_18AFCCD64();
  v28 = v9;
  v29 = v10;
  v25 = v8;
  v26 = v8;
  v27 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_18AFCBAB4();

  (*(v18 + 8))(v3, v1);
  v12 = sub_18AFCCD64();
  v28 = v9;
  v29 = v12;
  v25 = v1;
  v26 = v8;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v13 = v19;
  sub_18AFCBAB4();

  (*(v21 + 8))(v5, v13);
  v14 = type metadata accessor for MacWindowControlElement(0);
  v15 = v24;
  if (*(v23 + *(v14 + 44)) - 3 >= 2)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = 1.0;
  }

  (*(v20 + 32))(v24, v7, v22);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AEF8, &qword_18AFD99E8);
  *(v15 + *(result + 36)) = v16;
  return result;
}

uint64_t sub_18AF31ECC@<X0>(uint64_t *a2@<X8>)
{
  *a2 = sub_18AFCDB44();
  a2[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AE98, &qword_18AFD9988);
  return sub_18AF30894(v2, a2 + *(v5 + 44));
}

uint64_t sub_18AF31F18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E697DBA8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  if (v10 == v11)
  {
    v12 = sub_18AFCCF54();
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50) + 36);
    v14 = *MEMORY[0x1E6981DB8];
    v15 = sub_18AFCDBC4();
    result = (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
    *a1 = v12;
  }

  else
  {
    v17 = sub_18AFCCF54();
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50) + 36);
    v19 = *MEMORY[0x1E6981DA0];
    v20 = sub_18AFCDBC4();
    (*(*(v20 - 8) + 104))(a1 + v18, v19, v20);
    *a1 = v17;
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18AF321C8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_18AFCCCF4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  v10 = (*(v7 + 88))(v9, v6);
  v11 = *MEMORY[0x1E697DBA8];
  (*(v3 + 104))(v5, *MEMORY[0x1E69814D8], v2);
  if (v10 == v11)
  {
    result = sub_18AFCCF54();
    *a1 = result;
  }

  else
  {
    *a1 = sub_18AFCCF54();
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_18AF323AC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_18AFCC5A4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - v9;
  v11 = *v1;
  v12 = v11 >> 5;
  if (v11 >> 5 == 2)
  {
    if ((v11 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_5:
    if (v11)
    {
LABEL_23:
      if ((v11 & 1) == 0)
      {
        sub_18AF32F98();
        goto LABEL_26;
      }

LABEL_25:
      sub_18AF32F44();
      goto LABEL_26;
    }

LABEL_17:
    sub_18AF32FEC();
    goto LABEL_26;
  }

  if (v12 != 3)
  {
    if (v1[1])
    {
      if (v1[1] == 1)
      {
LABEL_9:
        if (v11 >> 5 > 2 || v12 < 2)
        {
          goto LABEL_17;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v13 = v8;
      v14 = sub_18AFCC274();
      v8 = v13;
      if ((v14 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    if (v12 != 2)
    {
      v15 = v8;
      sub_18AFCC404();
      sub_18AFCC594();
      v16 = sub_18AFCC584();
      v17 = *(v4 + 8);
      v17(v6, v15);
      v17(v10, v15);
      if (v16)
      {
        v19[1] = sub_18AFCCCD4();
        goto LABEL_26;
      }

      if (v11 >> 5 <= 1)
      {
        if (!v12)
        {
          goto LABEL_16;
        }
      }

      else if (v11 == 128)
      {
        sub_18AF32E9C();
        goto LABEL_26;
      }

      sub_18AF32E48();
      goto LABEL_26;
    }

    goto LABEL_23;
  }

  if (v11)
  {
    goto LABEL_25;
  }

LABEL_16:
  sub_18AF32EF0();
LABEL_26:
  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

uint64_t sub_18AF3261C(uint64_t a1)
{
  v60 = a1;
  v2 = sub_18AFCC474();
  v58 = *(v2 - 8);
  v59 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCBB34();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v48 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v48 - v10;
  v11 = sub_18AFCC5C4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_18AFCC5A4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = &v48 - v25;
  v27 = *v1;
  v28 = v27 >> 5;
  if (v27 >> 5 == 3 || v28 == 2)
  {
    goto LABEL_10;
  }

  v29 = v1[1];
  if (!v28 && (v27 & 1) != 0)
  {
LABEL_21:
    if (v1[1])
    {
      v43 = v29 != 1;
    }

    else
    {
      v50 = v23;
      v43 = sub_18AFCC274();
      v23 = v50;
    }

    v52 = (v27 & 0xC0) == 64;
    v51 = v6;
    if ((v27 & 0xC0) == 0x40 || (v49 = v43, v50 = v23, sub_18AFCC404(), sub_18AFCC594(), v48 = sub_18AFCC584(), v44 = *(v19 + 8), v45 = v21, v46 = v50, v44(v45, v50), v44(v26, v46), LOBYTE(v43) = v49, (v48 & 1) == 0))
    {
      if (v43)
      {
        v35 = v60;
        v31 = v52;
LABEL_15:
        sub_18AFCC2F4();
        (*(v12 + 104))(v14, *MEMORY[0x1E697F608], v11);
        v36 = sub_18AFCBB24();
        v37 = *(v12 + 8);
        v37(v14, v11);
        v37(v17, v11);
        if ((v36 & 1) == 0)
        {
          v34 = v57;
          v33 = v58;
          v32 = v59;
          (*(v58 + 16))(v57, v35, v59);
          (*(v54 + 104))(v56, *MEMORY[0x1E697DBB8], v55);
          sub_18AFCC214();
          if ((v31 & 1) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_19;
        }

LABEL_16:
        v38 = v53;
        sub_18AFCC204();
        v40 = v54;
        v39 = v55;
        if ((*(v54 + 88))(v38, v55) == *MEMORY[0x1E697DBA8])
        {
          v41 = sub_18AFCCD64();
        }

        else
        {
          v41 = sub_18AFCCD94();

          (*(v40 + 8))(v38, v39);
        }

        return v41;
      }
    }

    else
    {
      v47 = sub_18AFCCCD4();
      v31 = v47;
      if (v43)
      {
        v35 = v60;
        if (v47)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

      v52 = 0;
    }

LABEL_12:
    v32 = v59;
    v34 = v57;
    v33 = v58;
    (*(v58 + 16))(v57, v60, v59, v24);
    sub_18AFCC204();
    sub_18AFCC214();
    if (!v52)
    {
      goto LABEL_24;
    }

LABEL_19:
    if ((v27 & 1) == 0)
    {
      v42 = sub_18AFCCD94();
LABEL_25:
      v41 = v42;

      (*(v33 + 8))(v34, v32);
      return v41;
    }

    sub_18AFCC204();
    sub_18AFCC214();
LABEL_24:
    sub_18AFCCE64();
    sub_18AFCCDC4();

    v42 = sub_18AFCCF64();
    goto LABEL_25;
  }

  if (v29 > 1)
  {
    if (v28 == 3)
    {
LABEL_10:
      v31 = 1;
      v51 = v6;
      if (v27)
      {
        v52 = 1;
        goto LABEL_12;
      }

      v35 = v60;
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  return sub_18AFCCD74();
}

uint64_t sub_18AF32C84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_18AF3261C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18AF32CAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF330D8();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32CD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF334D4();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32CFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF338CC();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32D24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18AF33CCC();
  *a1 = result;
  return result;
}

uint64_t sub_18AF32D4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AF18, &qword_18AFD9A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF32DBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_18AFCBB54();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18AF32E48()
{
  result = qword_1EA99AF60;
  if (!qword_1EA99AF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF60);
  }

  return result;
}

unint64_t sub_18AF32E9C()
{
  result = qword_1EA99AF68;
  if (!qword_1EA99AF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF68);
  }

  return result;
}

unint64_t sub_18AF32EF0()
{
  result = qword_1EA99AF70;
  if (!qword_1EA99AF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF70);
  }

  return result;
}

unint64_t sub_18AF32F44()
{
  result = qword_1EA99AF78;
  if (!qword_1EA99AF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF78);
  }

  return result;
}

unint64_t sub_18AF32F98()
{
  result = qword_1EA99AF80;
  if (!qword_1EA99AF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF80);
  }

  return result;
}

unint64_t sub_18AF32FEC()
{
  result = qword_1EA99AF88;
  if (!qword_1EA99AF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF88);
  }

  return result;
}

uint64_t sub_18AF330D8()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768, &qword_18AFD2100);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF334D4()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768, &qword_18AFD2100);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF338CC()
{
  v18 = sub_18AFCCCF4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8] && (*(v7 + 88))(&v5[v14], v6) == *MEMORY[0x1E697F608])
    {
      goto LABEL_6;
    }

LABEL_7:
    (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
    v16 = sub_18AFCCF44();
    sub_18AE7BA80(v5, &qword_1EA998768, &qword_18AFD2100);
    return v16;
  }

  if ((*(v7 + 88))(&v5[v14], v6) != *MEMORY[0x1E697F608])
  {
    goto LABEL_7;
  }

LABEL_6:
  (*(v0 + 104))(v19, *MEMORY[0x1E69814D8], v18);
  v16 = sub_18AFCCF44();
  (*(v11 + 8))(v5, v10);
  return v16;
}

uint64_t sub_18AF33CCC()
{
  v20 = sub_18AFCCCF4();
  v0 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v21 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998768, &qword_18AFD2100);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = sub_18AFCC5C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18AFCBB34();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCC204();
  sub_18AFCC2F4();
  v14 = *(v3 + 56);
  (*(v11 + 32))(v5, v13, v10);
  (*(v7 + 32))(&v5[v14], v9, v6);
  v15 = (*(v11 + 88))(v5, v10);
  if (v15 != *MEMORY[0x1E697DBB8])
  {
    if (v15 == *MEMORY[0x1E697DBA8])
    {
      v17 = (*(v7 + 88))(&v5[v14], v6);
      if (v17 == *MEMORY[0x1E697F600] || v17 == *MEMORY[0x1E697F608])
      {
        goto LABEL_8;
      }
    }

LABEL_9:
    (*(v7 + 8))(&v5[v14], v6);
    goto LABEL_10;
  }

  v16 = (*(v7 + 88))(&v5[v14], v6);
  if (v16 != *MEMORY[0x1E697F600])
  {
    if (v16 == *MEMORY[0x1E697F608])
    {
LABEL_8:
      (*(v0 + 104))(v21, *MEMORY[0x1E69814D8], v20);
      v18 = sub_18AFCCF44();
      (*(v11 + 8))(v5, v10);
      return v18;
    }

    goto LABEL_9;
  }

LABEL_10:
  (*(v11 + 8))(v5, v10);
  (*(v0 + 104))(v21, *MEMORY[0x1E69814D8], v20);
  return sub_18AFCCF44();
}

uint64_t sub_18AF341A4@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_18AFCBF04();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  if (v11 == 2)
  {
    if (sub_18AFCC274())
    {
      sub_18AEFC240();
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v11 != 1 || (sub_18AFCC274() & 1) == 0)
  {
LABEL_10:
    if (v10 == 1)
    {
      v15[1] = sub_18AFCC6E4();
    }

    else if (v12)
    {
      v15[2] = sub_18AFCC6C4();
    }

    else
    {
      v15[3] = sub_18AFCC6F4();
    }

    goto LABEL_15;
  }

  sub_18AFCBEF4();
  if (v10 == 1)
  {
    v13 = 0.3;
  }

  else
  {
    v13 = 1.0;
  }

  (*(v4 + 32))(v9, v6, v3);
  *&v9[*(v7 + 36)] = v13;
  sub_18AF34588();
LABEL_15:
  result = sub_18AFCBCD4();
  *a1 = result;
  return result;
}

void sub_18AF343D8(uint64_t a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  *(a1 + 2) = v2;
}

uint64_t getEnumTagSinglePayload for MacButtonBaseForegroundStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for MacButtonBaseForegroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_18AF34588()
{
  result = qword_1EA99AF90;
  if (!qword_1EA99AF90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A738, &qword_18AFD85A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AF90);
  }

  return result;
}

uint64_t type metadata accessor for MacCircularProgressIndicator(uint64_t a1)
{
  result = qword_1EA99AF98;
  if (!qword_1EA99AF98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF34660(uint64_t a1)
{
  result = sub_18AFCBB54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_18AF346F8@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFA8, &qword_18AFDA200);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v26 - v10);
  *v11 = sub_18AFCDB44();
  v11[1] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFB0, &qword_18AFDA208);
  sub_18AF34998(v2, v11 + *(v13 + 44));
  v14 = sub_18AFCC854();
  v15 = type metadata accessor for MacCircularProgressIndicator(0);
  sub_18AFCBAA4();
  v16 = v11 + *(v9 + 44);
  *v16 = v14;
  *(v16 + 1) = v17;
  *(v16 + 2) = v18;
  *(v16 + 3) = v19;
  *(v16 + 4) = v20;
  v16[40] = 0;
  (*(v5 + 16))(v7, v2 + *(v15 + 20), v4);
  v21 = (*(v5 + 88))(v7, v4);
  v22 = v21 == *MEMORY[0x1E697DC08] || v21 == *MEMORY[0x1E697DC20];
  if (!v22 && v21 != *MEMORY[0x1E697DC28] && v21 != *MEMORY[0x1E697DC10] && v21 != *MEMORY[0x1E697DC00])
  {
    (*(v5 + 8))(v7, v4);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AF34EC4(v11, a1);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFB8, &qword_18AFDA210) + 36));
  v24 = v26[1];
  *v23 = v26[0];
  v23[1] = v24;
  result = *&v27;
  v23[2] = v27;
  return result;
}

void sub_18AF34998(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = sub_18AFCCCF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0, &qword_18AFDA218);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v45 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC8, &qword_18AFDA220);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v45 - v13);
  sub_18AFCDF14();
  v47 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_18AFCC6B4();
  (*(v4 + 104))(v6, *MEMORY[0x1E69814D8], v3);
  sub_18AFCCF44();
  sub_18AFCBB84();

  *v9 = v15;
  type metadata accessor for MacCircularProgressIndicator(0);
  sub_18AFCBB94();
  v16 = v75;
  v17 = v77;
  v18 = v78;
  v19 = v79;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFD0, &qword_18AFDA228);
  sub_18AE83A40(v9, v14 + *(v20 + 52), &qword_1EA99AFC0, &qword_18AFDA218);
  v21 = v76;
  *v14 = v16;
  v14[1] = v21;
  v14[2] = v17;
  v14[3] = v18;
  v14[4] = v19;
  *(v14 + *(v20 + 56)) = 256;
  v22 = sub_18AFCDB44();
  v24 = v23;
  sub_18AE7BA80(v9, &qword_1EA99AFC0, &qword_18AFDA218);
  v25 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFD8, &qword_18AFDA230) + 36));
  *v25 = v22;
  v25[1] = v24;
  v26 = *a1;
  v27 = sub_18AFCCD34();
  sub_18AFCBB94();
  v28 = sub_18AFCDB44();
  v30 = v29;
  sub_18AFCDD04();
  v32 = v31;
  v34 = v33;
  v35 = sub_18AFCDBB4();
  v36 = v48;
  sub_18AE83A40(v14, v48, &qword_1EA99AFC8, &qword_18AFDA220);
  v37 = v46;
  sub_18AE83A40(v36, v46, &qword_1EA99AFC8, &qword_18AFDA220);
  v38 = (v37 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFE0, &qword_18AFDA238) + 48));
  *&v54[0] = 0;
  *(&v54[0] + 1) = v26;
  v54[1] = v49;
  v54[2] = v50;
  *&v55 = v51;
  *(&v55 + 1) = v27;
  LOWORD(v56) = 256;
  *(&v56 + 2) = v52;
  WORD3(v56) = v53;
  *(&v56 + 1) = v28;
  *&v57 = v30;
  *(&v57 + 1) = 0xBFF921FB54442D18;
  *&v58 = v32;
  *(&v58 + 1) = v34;
  *&v59 = v35;
  *(&v59 + 1) = v26;
  v39 = v54[0];
  v40 = v49;
  v41 = v55;
  v38[2] = v50;
  v38[3] = v41;
  *v38 = v39;
  v38[1] = v40;
  v42 = v56;
  v43 = v57;
  v44 = v59;
  v38[6] = v58;
  v38[7] = v44;
  v38[4] = v42;
  v38[5] = v43;
  sub_18AE83A40(v54, v60, &qword_1EA99AFE8, &qword_18AFDA240);
  sub_18AE7BA80(v14, &qword_1EA99AFC8, &qword_18AFDA220);
  v60[0] = 0;
  v60[1] = v26;
  v61 = v49;
  v62 = v50;
  v63 = v51;
  v64 = v27;
  v65 = 256;
  v66 = v52;
  v67 = v53;
  v68 = v28;
  v69 = v30;
  v70 = 0xBFF921FB54442D18;
  v71 = v32;
  v72 = v34;
  v73 = v35;
  v74 = v26;
  sub_18AE7BA80(v60, &qword_1EA99AFE8, &qword_18AFDA240);
  sub_18AE7BA80(v36, &qword_1EA99AFC8, &qword_18AFDA220);
}

uint64_t sub_18AF34EC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFA8, &qword_18AFDA200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18AF34F34()
{
  result = qword_1EA99AFF0;
  if (!qword_1EA99AFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AFB8, &qword_18AFDA210);
    sub_18AF34FC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AFF0);
  }

  return result;
}

unint64_t sub_18AF34FC0()
{
  result = qword_1EA99AFF8;
  if (!qword_1EA99AFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99AFA8, &qword_18AFDA200);
    sub_18AF3504C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99AFF8);
  }

  return result;
}

unint64_t sub_18AF3504C()
{
  result = qword_1EA99B000;
  if (!qword_1EA99B000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA99B008, &qword_18AFDA248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B000);
  }

  return result;
}

void sub_18AF350C0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AEB31C4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_18AF35164(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_27;
  }

  v8 = ((v6 + 10) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (*&a1[v8])
      {
        goto LABEL_20;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (v13)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_27;
  }

  if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_27:
    if (v5 >= 0xFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = a1[v6 + 2];
    if (v17 >= 2)
    {
      return ((v17 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_20:
  v14 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v15 = *a1;
  }

  else
  {
    v14 = 0;
    v15 = *a1;
  }

  return v7 + (v15 | v14) + 1;
}

void sub_18AF352B4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 10) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0xFE)
      {
        a1[v9 + 2] = a2 + 1;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 10) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_18AF354C0(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v12);
  (*(v8 + 16))(v10, a1, a4);
  return sub_18AFCBB04();
}

uint64_t sub_18AF35654@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v25 = a7;
  v26 = a6;
  v27 = a2;
  v24 = a1;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v21 = &v24 - v20;
  sub_18AFCDBE4();
  (*(v15 + 16))(v18, v24, a4);
  (*(v11 + 16))(v13, v7, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_18AF38180(v21, v18, v27 & 0x101, v13, AssociatedTypeWitness, a4, a3, AssociatedConformanceWitness, v25, v26, *(a5 + 8));
}

uint64_t sub_18AF35894@<X0>(uint64_t *a1@<X8>)
{
  v20 = a1;
  v1 = sub_18AFCBB34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = sub_18AFCDBC4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCCDB4();
  sub_18AFCCDA4();

  sub_18AFCC344();
  v12 = sub_18AFCCDA4();

  sub_18AFCC204();
  (*(v2 + 104))(v4, *MEMORY[0x1E697DBB8], v1);
  v13 = sub_18AFCBB24();
  v14 = *(v2 + 8);
  v14(v4, v1);
  v14(v7, v1);
  v15 = MEMORY[0x1E6981DA0];
  if ((v13 & 1) == 0)
  {
    v15 = MEMORY[0x1E6981DB8];
  }

  (*(v9 + 104))(v11, *v15, v8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9998E8, &unk_18AFD9F50);
  v17 = v20;
  result = (*(v9 + 32))(v20 + *(v16 + 36), v11, v8);
  *v17 = v12;
  return result;
}

uint64_t sub_18AF35B60@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a2;
  v44 = a5;
  v8 = *(a4 + 8);
  v45 = a3;
  v46 = MEMORY[0x1E697FE80];
  v47 = v8;
  v48 = MEMORY[0x1E697FE70];
  v9 = sub_18AFCBB14();
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33[-v10];
  v12 = sub_18AF380C4();
  WitnessTable = swift_getWitnessTable();
  v45 = a3;
  v46 = &type metadata for SeximalShapeStyle;
  v47 = v9;
  v48 = v8;
  v35 = v12;
  v49 = v12;
  v50 = WitnessTable;
  v14 = sub_18AFCBCE4();
  v42 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v33[-v15];
  v16 = swift_getWitnessTable();
  v45 = a3;
  v46 = MEMORY[0x1E697E0B8];
  v47 = v14;
  v48 = v8;
  v49 = MEMORY[0x1E697E0A8];
  v50 = v16;
  v17 = sub_18AFCBCE4();
  v40 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v36 = &v33[-v18];
  v19 = sub_18AF38070();
  v20 = swift_getWitnessTable();
  v45 = a3;
  v46 = &type metadata for DisplayBordersStyle;
  v47 = v17;
  v48 = a4;
  v43 = a4;
  v38 = v19;
  v49 = v19;
  v50 = v20;
  v21 = type metadata accessor for PositionStrokeShapeView(0, &v45);
  v39 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33[-v22];
  v24 = *a1;
  if (v34)
  {
    v25 = sub_18AFCC6B4();
  }

  else
  {
    v25 = sub_18AFCC6D4();
  }

  LODWORD(v45) = v25;
  sub_18AF354C0(&v45, 256, a3, MEMORY[0x1E697FE80], v8, MEMORY[0x1E697FE70]);
  v26 = swift_getWitnessTable();
  v27 = v41;
  sub_18AF35654(v26, 256, v9, &type metadata for SeximalShapeStyle, v26, v35, v41);
  (*(v37 + 8))(v11, v9);
  if (v24 >= 3)
  {
    if (v24 == 3)
    {
      v28 = sub_18AFCC6B4();
    }

    else
    {
      v28 = sub_18AFCC6E4();
    }

    LODWORD(v45) = v28;
  }

  else
  {
    v45 = sub_18AFCCD74();
  }

  v45 = sub_18AFCBCD4();
  v29 = swift_getWitnessTable();
  v30 = v36;
  sub_18AF35654(&v45, 256, v14, MEMORY[0x1E697E0B8], v29, MEMORY[0x1E697E0A8], v36);

  (*(v42 + 8))(v27, v14);
  v31 = swift_getWitnessTable();
  sub_18AFC8988(v31, 0, 1, v17, &type metadata for DisplayBordersStyle, v31, v38, v43, v23);
  (*(v40 + 8))(v30, v17);
  swift_getWitnessTable();
  sub_18AFCCBE4();
  return (*(v39 + 8))(v23, v21);
}

uint64_t sub_18AF360A0@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a1;
  v92 = a4;
  LODWORD(v89) = a2;
  v90 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v65 - v8;
  v76 = sub_18AFCBF04();
  v83 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a4 + 8);
  v93 = a3;
  v94 = v12;
  v95 = v11;
  v96 = MEMORY[0x1E697E558];
  v13 = sub_18AFCBB14();
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9998B0, &unk_18AFDA330);
  v73 = v15;
  v16 = MEMORY[0x1E697F5B8];
  v17 = sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0, &unk_18AFDA330, MEMORY[0x1E697F5B8]);
  v72 = v17;
  WitnessTable = swift_getWitnessTable();
  v93 = a3;
  v94 = v15;
  v95 = v13;
  v96 = v11;
  v97 = v17;
  v98 = WitnessTable;
  v19 = sub_18AFCBCE4();
  v77 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v69 = &v65 - v20;
  v21 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738, &qword_18AFD85A0, v16);
  v22 = swift_getWitnessTable();
  v93 = a3;
  v94 = v7;
  v66 = v7;
  v95 = v19;
  v96 = v11;
  v97 = v21;
  v98 = v22;
  v23 = v21;
  v67 = v21;
  v24 = sub_18AFCBCE4();
  v70 = v24;
  v74 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v68 = &v65 - v25;
  v26 = swift_getWitnessTable();
  v93 = a3;
  v94 = v7;
  v95 = v24;
  v96 = v11;
  v97 = v23;
  v98 = v26;
  v27 = sub_18AFCBCE4();
  v88 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = swift_getWitnessTable();
  v93 = a3;
  v94 = MEMORY[0x1E697E0B8];
  v81 = v27;
  v95 = v27;
  v96 = v11;
  v97 = MEMORY[0x1E697E0A8];
  v98 = v30;
  v31 = sub_18AFCBCE4();
  v87 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v86 = &v65 - v32;
  v33 = sub_18AF38070();
  v34 = swift_getWitnessTable();
  v93 = a3;
  v94 = &type metadata for DisplayBordersStyle;
  v79 = v31;
  v95 = v31;
  v96 = v92;
  v80 = v33;
  v97 = v33;
  v98 = v34;
  v84 = type metadata accessor for PositionStrokeShapeView(0, &v93);
  v82 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v78 = &v65 - v35;
  LODWORD(v91) = *v91;
  v36 = v75;
  sub_18AFCBEF4();
  v37 = v71;
  v38 = v76;
  sub_18AF354C0(v36, 256, a3, v76, v11, MEMORY[0x1E697E558]);
  (*(v83 + 8))(v36, v38);
  v39 = sub_18AFCC6B4();
  v40 = 0.0;
  if (v89)
  {
    v40 = 1.0;
  }

  v93 = __PAIR64__(LODWORD(v40), v39);
  v41 = swift_getWitnessTable();
  v42 = v69;
  sub_18AF35654(&v93, 256, v13, v73, v41, v72, v69);
  (*(v85 + 8))(v37, v13);
  v43 = v9;
  sub_18AFCBEF4();
  v44 = v66;
  *&v9[*(v66 + 36)] = 1056964608;
  v45 = v19;
  v46 = swift_getWitnessTable();
  v47 = v68;
  v48 = v67;
  sub_18AF35654(v43, 256, v45, v44, v46, v67, v68);
  sub_18AF38118(v43);
  (*(v77 + 8))(v42, v45);
  sub_18AFCBEF4();
  *(v43 + *(v44 + 36)) = 1056964608;
  v49 = v70;
  v50 = swift_getWitnessTable();
  v89 = v29;
  sub_18AF35654(v43, 256, v49, v44, v50, v48, v29);
  sub_18AF38118(v43);
  (*(v74 + 8))(v47, v49);
  if (v91 >= 3)
  {
    if (v91 == 3)
    {
      v51 = sub_18AFCC6B4();
    }

    else
    {
      v51 = sub_18AFCC6E4();
    }

    LODWORD(v93) = v51;
  }

  else
  {
    v93 = sub_18AFCCD74();
  }

  v52 = sub_18AFCBCD4();
  v53 = v92;
  v55 = v87;
  v54 = v88;
  v56 = v81;
  v57 = v79;
  v93 = v52;
  v58 = swift_getWitnessTable();
  v59 = v86;
  v60 = v89;
  sub_18AF35654(&v93, 256, v56, MEMORY[0x1E697E0B8], v58, MEMORY[0x1E697E0A8], v86);

  (*(v54 + 8))(v60, v56);
  v61 = swift_getWitnessTable();
  v62 = v78;
  sub_18AFC8988(v61, 0, 1, v57, &type metadata for DisplayBordersStyle, v61, v80, v53, v78);
  (*(v55 + 8))(v59, v57);
  v63 = v84;
  swift_getWitnessTable();
  sub_18AFCCBE4();
  return (*(v82 + 8))(v62, v63);
}

uint64_t sub_18AF36A20@<X0>(unsigned __int8 *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a4;
  v62 = a5;
  v60 = a2;
  v57 = a1;
  v55 = sub_18AFCBF04();
  v7 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v47 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = *(a4 + 8);
  v20 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738, &qword_18AFD85A0, MEMORY[0x1E697F5B8]);
  v63 = a3;
  v64 = v12;
  v65 = v19;
  v66 = v20;
  v21 = sub_18AFCBB14();
  v54 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  WitnessTable = swift_getWitnessTable();
  v63 = a3;
  v64 = v12;
  v48 = a3;
  v65 = v21;
  v66 = v19;
  v67 = v20;
  v68 = WitnessTable;
  v25 = sub_18AFCBCE4();
  v53 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v50 = &v47 - v26;
  v27 = swift_getWitnessTable();
  v63 = a3;
  v64 = v12;
  v65 = v25;
  v66 = v19;
  v67 = v20;
  v68 = v27;
  v51 = sub_18AFCBCE4();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v49 = &v47 - v28;
  v29 = *v57;
  v57 = (v29 - 3);
  sub_18AFCBEF4();
  if (v29 == 1)
  {
    v30 = 0.025;
  }

  else
  {
    v30 = 0.05;
  }

  v31 = *(v7 + 32);
  v32 = v11;
  v33 = v55;
  v31(v18, v32, v55);
  *&v18[*(v12 + 36)] = v30;
  sub_18AF354C0(v18, 256, v48, v12, v19, v20);
  sub_18AF38118(v18);
  v34 = v58;
  sub_18AFCBEF4();
  if (v60)
  {
    v35 = 0.1;
  }

  else
  {
    v35 = 0.0;
  }

  v36 = v56;
  v31(v56, v34, v33);
  *(v36 + *(v12 + 36)) = v35;
  v37 = swift_getWitnessTable();
  v38 = v50;
  sub_18AF35654(v36, 256, v21, v12, v37, v20, v50);
  sub_18AF38118(v36);
  (*(v54 + 8))(v23, v21);
  v39 = v59;
  sub_18AFCBEF4();
  if (v57 >= 2)
  {
    v40 = 0.0;
  }

  else
  {
    v40 = 0.1;
  }

  *(v39 + *(v12 + 36)) = v40;
  v41 = swift_getWitnessTable();
  v42 = v49;
  sub_18AF35654(v39, 256, v25, v12, v41, v20, v49);
  sub_18AF38118(v39);
  (*(v53 + 8))(v38, v25);
  v43 = v51;
  v44 = swift_getWitnessTable();
  v45 = sub_18AF38070();
  sub_18AFC8988(v45, 0, 1, v43, &type metadata for DisplayBordersStyle, v44, v45, v61, v62);
  return (*(v52 + 8))(v42, v43);
}

uint64_t sub_18AF37020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v118 = a1;
  v117 = a2;
  v2 = *(a1 + 16);
  v4 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99A738, &qword_18AFD85A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9998B0, &unk_18AFDA330);
  sub_18AFCBF04();
  v122 = *(a1 + 24);
  v5 = *(v122 + 1);
  sub_18AFCBB14();
  v6 = MEMORY[0x1E697F5B8];
  sub_18AE95F54(&qword_1EA9998B8, &qword_1EA9998B0, &unk_18AFDA330, MEMORY[0x1E697F5B8]);
  v125 = MEMORY[0x1E697DB78];
  swift_getWitnessTable();
  sub_18AFCBCE4();
  v7 = sub_18AE95F54(&qword_1EA99AF90, &qword_1EA99A738, &qword_18AFD85A0, v6);
  swift_getWitnessTable();
  sub_18AFCBCE4();
  swift_getWitnessTable();
  sub_18AFCBCE4();
  swift_getWitnessTable();
  v8 = sub_18AFCBCE4();
  v124 = sub_18AF38070();
  v133 = v2;
  v134 = &type metadata for DisplayBordersStyle;
  v9 = v122;
  v135 = v8;
  v136 = v122;
  v137 = v124;
  WitnessTable = swift_getWitnessTable();
  v127 = type metadata accessor for PositionStrokeShapeView(255, &v133);
  v128 = sub_18AFCC044();
  v105 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128 - 8);
  v104 = &v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v103 - v12;
  v133 = v2;
  v134 = v4;
  v135 = v5;
  v136 = v7;
  v13 = sub_18AFCBB14();
  v14 = swift_getWitnessTable();
  v133 = v2;
  v134 = v4;
  v135 = v13;
  v136 = v5;
  v137 = v7;
  WitnessTable = v14;
  v15 = sub_18AFCBCE4();
  v16 = swift_getWitnessTable();
  v133 = v2;
  v134 = v4;
  v135 = v15;
  v136 = v5;
  v137 = v7;
  WitnessTable = v16;
  v17 = sub_18AFCBCE4();
  v18 = swift_getWitnessTable();
  v133 = v2;
  v134 = &type metadata for DisplayBordersStyle;
  v135 = v17;
  v136 = v9;
  v19 = v9;
  v20 = v124;
  v137 = v124;
  WitnessTable = v18;
  v21 = type metadata accessor for PositionStrokeShapeView(0, &v133);
  v108 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v103 - v24;
  v133 = v2;
  v134 = MEMORY[0x1E697FE80];
  v135 = v5;
  v136 = MEMORY[0x1E697FE70];
  v25 = sub_18AFCBB14();
  v26 = sub_18AF380C4();
  v27 = swift_getWitnessTable();
  v133 = v2;
  v134 = &type metadata for SeximalShapeStyle;
  v135 = v25;
  v136 = v5;
  v137 = v26;
  WitnessTable = v27;
  v28 = sub_18AFCBCE4();
  v29 = swift_getWitnessTable();
  v133 = v2;
  v134 = MEMORY[0x1E697E0B8];
  v135 = v28;
  v136 = v5;
  v137 = MEMORY[0x1E697E0A8];
  WitnessTable = v29;
  v30 = sub_18AFCBCE4();
  v31 = swift_getWitnessTable();
  v133 = v2;
  v134 = &type metadata for DisplayBordersStyle;
  v135 = v30;
  v136 = v19;
  v137 = v20;
  WitnessTable = v31;
  v121 = type metadata accessor for PositionStrokeShapeView(255, &v133);
  v32 = sub_18AFCC044();
  v126 = v21;
  v33 = sub_18AFCC624();
  v113 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v112 = &v103 - v34;
  v125 = v32;
  v111 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v120 = &v103 - v38;
  v39 = sub_18AFCC474();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v103 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = v33;
  v124 = sub_18AFCC624();
  v43 = sub_18AFCE074();
  v115 = *(v43 - 8);
  v116 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v103 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v49 = v119;
  v114 = &v103 - v50;
  v51 = v47[10];
  v52 = *(v119 + v51);
  v53 = MEMORY[0x1E697E5C0];
  if (!*(v119 + v51))
  {
    goto LABEL_4;
  }

  v54 = v119 + v47[12];
  v55 = *v54;
  if (*(v54 + 8) == 1)
  {
    if ((v55 & 1) == 0)
    {
LABEL_4:
      v109 = v45;
      LOBYTE(v133) = *(v49 + v47[9]);
      v56 = v53;
      v57 = v110;
      sub_18AF35B60(&v133, *(v49 + v47[11]), v2, v122, v110);
      v132[6] = swift_getWitnessTable();
      v132[7] = v56;
      v119 = MEMORY[0x1E697E858];
      v58 = v125;
      v59 = swift_getWitnessTable();
      sub_18AEADA5C();
      v122 = *(v111 + 8);
      v122(v57, v58);
      sub_18AEADA5C();
      v60 = swift_getWitnessTable();
      v61 = v112;
      sub_18AEB5268(v57, v58);
      v132[4] = v59;
      v132[5] = v60;
      v62 = v109;
      v63 = v123;
      v64 = swift_getWitnessTable();
      v132[2] = swift_getWitnessTable();
      v132[3] = v56;
      v65 = swift_getWitnessTable();
      sub_18AEB5268(v61, v63);
      (*(v113 + 8))(v61, v63);
      v66 = v122;
      v122(v57, v58);
      v66(v120, v58);
      v45 = v62;
      (*(*(v124 - 8) + 56))(v62, 0, 1, v124);
      v132[0] = v64;
      v67 = v132;
      goto LABEL_5;
    }
  }

  else
  {

    sub_18AFCE024();
    v78 = v45;
    v79 = sub_18AFCC7D4();
    v53 = MEMORY[0x1E697E5C0];
    sub_18AFCBA64();

    v45 = v78;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AEB264C(v55, 0);
    (*(v40 + 8))(v42, v39);
    v47 = v118;
    v49 = v119;
    if ((v133 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (v52 == 2)
  {
    LOBYTE(v133) = *(v49 + v47[9]);
    v92 = v104;
    sub_18AF360A0(&v133, *(v49 + v47[11]), v2, v122, v104);
    v130[6] = swift_getWitnessTable();
    v130[7] = v53;
    v93 = v53;
    v94 = v128;
    v65 = swift_getWitnessTable();
    sub_18AEADA5C();
    v122 = *(v105 + 8);
    v122(v92, v94);
    sub_18AEADA5C();
    v130[4] = swift_getWitnessTable();
    v130[5] = v93;
    v95 = swift_getWitnessTable();
    v96 = swift_getWitnessTable();
    v130[2] = v95;
    v130[3] = v96;
    v97 = v123;
    v98 = swift_getWitnessTable();
    sub_18AEB5360(v92, v97, v94);
    v99 = v122;
    v122(v92, v94);
    v99(v107, v94);
    (*(*(v124 - 8) + 56))(v45, 0, 1, v124);
    v130[0] = v98;
    v67 = v130;
  }

  else
  {
    v80 = v53;
    if (v52 == 1)
    {
      LOBYTE(v133) = *(v49 + v47[9]);
      v81 = v103;
      sub_18AF36A20(&v133, *(v49 + v47[11]), v2, v122, v103);
      v120 = &unk_18AFE35F0;
      v82 = v126;
      v83 = swift_getWitnessTable();
      sub_18AEADA5C();
      v84 = *(v108 + 8);
      v108 += 8;
      v122 = v84;
      v84(v81, v82);
      sub_18AEADA5C();
      v129[6] = swift_getWitnessTable();
      v129[7] = v80;
      v85 = v80;
      v86 = v125;
      v87 = swift_getWitnessTable();
      v88 = v112;
      sub_18AEB5360(v81, v86, v82);
      v129[4] = v87;
      v129[5] = v83;
      v89 = v123;
      v90 = swift_getWitnessTable();
      v129[2] = swift_getWitnessTable();
      v129[3] = v85;
      v65 = swift_getWitnessTable();
      sub_18AEB5268(v88, v89);
      (*(v113 + 8))(v88, v89);
      v91 = v122;
      v122(v81, v82);
      v91(v106, v82);
      (*(*(v124 - 8) + 56))(v45, 0, 1, v124);
      v129[0] = v90;
      v67 = v129;
    }

    else
    {
      (*(*(v124 - 8) + 56))(v45, 1, 1, v124, v48);
      v131[6] = swift_getWitnessTable();
      v131[7] = v53;
      v100 = swift_getWitnessTable();
      v101 = swift_getWitnessTable();
      v131[4] = v100;
      v131[5] = v101;
      v102 = swift_getWitnessTable();
      v131[2] = swift_getWitnessTable();
      v131[3] = v53;
      v65 = swift_getWitnessTable();
      v131[0] = v102;
      v67 = v131;
    }
  }

LABEL_5:
  v67[1] = v65;
  swift_getWitnessTable();
  v68 = v114;
  sub_18AF1FC5C(v45, v114);
  v69 = *(v115 + 8);
  v70 = v45;
  v71 = v116;
  v69(v70, v116);
  v131[15] = swift_getWitnessTable();
  v72 = MEMORY[0x1E697E5C0];
  v131[16] = MEMORY[0x1E697E5C0];
  v73 = swift_getWitnessTable();
  v74 = swift_getWitnessTable();
  v131[13] = v73;
  v131[14] = v74;
  v75 = swift_getWitnessTable();
  v131[11] = swift_getWitnessTable();
  v131[12] = v72;
  v76 = swift_getWitnessTable();
  v131[9] = v75;
  v131[10] = v76;
  v131[8] = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_18AEADA5C();
  return (v69)(v68, v71);
}

unint64_t sub_18AF38070()
{
  result = qword_1EA99B090;
  if (!qword_1EA99B090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B090);
  }

  return result;
}

unint64_t sub_18AF380C4()
{
  result = qword_1EA99B098[0];
  if (!qword_1EA99B098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99B098);
  }

  return result;
}

uint64_t sub_18AF38118(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A738, &qword_18AFD85A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF38180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v37 = a4;
  v36 = a3;
  v33 = a2;
  v34 = a7;
  v40 = a9;
  v41 = a1;
  v14 = *(a7 - 8);
  v38 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_18AFCC5F4();
  MEMORY[0x1EEE9AC00](v39);
  v35 = &v31 - v16;
  v31 = *(a6 - 8);
  v17 = v31;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a5;
  v44 = a6;
  v45 = a8;
  v46 = a10;
  v32 = sub_18AFCBB14();
  v25 = MEMORY[0x1EEE9AC00](v32);
  (*(v21 + 16))(v24, v41, a5, v25);
  v26 = *(v17 + 16);
  v27 = v33;
  v26(v20, v33, a6);
  sub_18AFCBB04();
  v28 = v37;
  v29 = v34;
  (*(v14 + 16))(v42, v37, v34);
  sub_18AFCDB44();
  (*(v14 + 8))(v28, v29);
  (*(v31 + 8))(v27, a6);
  (*(v21 + 8))(v41, a5);
  sub_18AFCC5E4();
  return sub_18AFCC034();
}

void sub_18AF384FC(void *a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        sub_18AEB1A48(319, &qword_1EA997C28, &type metadata for ControlContext);
        if (v4 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
          if (v5 <= 0x3F)
          {
            sub_18AEDCEE0(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
            if (v6 <= 0x3F)
            {
              sub_18AEDCEE0(319, &qword_1EA998418, MEMORY[0x1E697F610]);
              if (v7 <= 0x3F)
              {
                sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
                if (v8 <= 0x3F)
                {
                  sub_18AEB1A48(319, &qword_1EA997C48, &type metadata for ButtonBorderShape);
                  if (v9 <= 0x3F)
                  {
                    sub_18AEDCEE0(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
                    if (v10 <= 0x3F)
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
  }
}

uint64_t sub_18AF386F0(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v37 = a3[2];
  v4 = *(v37 - 8);
  v5 = *(v4 + 84);
  v6 = *(a3[3] - 8);
  v7 = *(v6 + 84);
  v36 = v7;
  if (v5 > v7)
  {
    v7 = *(v4 + 84);
  }

  v8 = *(a3[4] - 8);
  v35 = *(v8 + 84);
  if (v7 <= v35)
  {
    v7 = *(v8 + 84);
  }

  if (v7 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v7;
  }

  v40 = *(sub_18AFCBB34() - 8);
  v10 = *(v40 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v41 = v10;
  v38 = *(sub_18AFCC5C4() - 8);
  v11 = *(v38 + 64);
  if (v11 <= 8)
  {
    v11 = 8;
  }

  v39 = v11;
  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v8 + 80);
  v18 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  v19 = *(v6 + 64) + v17;
  if (a2 <= v9)
  {
    goto LABEL_37;
  }

  v20 = *(v40 + 80) & 0xF8 | 7;
  v21 = (v20 + ((v18 + ((v19 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20;
  v22 = *(v38 + 80) & 0xF8 | 7;
  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v13 + ((v23 + ((v39 + ((v41 + v22 + v21 + 1) & ~v22) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  v25 = 8 * v24;
  if (v24 > 3)
  {
    goto LABEL_18;
  }

  v28 = ((a2 - v9 + ~(-1 << v25)) >> v25) + 1;
  if (HIWORD(v28))
  {
    v26 = *(a1 + v24);
    if (v26)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v28 <= 0xFF)
    {
      if (v28 < 2)
      {
        goto LABEL_37;
      }

LABEL_18:
      v26 = *(a1 + v24);
      if (!*(a1 + v24))
      {
        goto LABEL_37;
      }

LABEL_26:
      v29 = (v26 - 1) << v25;
      if (v24 > 3)
      {
        v29 = 0;
      }

      if (v24)
      {
        if (v24 > 3)
        {
          LODWORD(v24) = 4;
        }

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            LODWORD(v24) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v24) = *a1;
          }
        }

        else if (v24 == 1)
        {
          LODWORD(v24) = *a1;
        }

        else
        {
          LODWORD(v24) = *a1;
        }
      }

      return v9 + (v24 | v29) + 1;
    }

    v26 = *(a1 + v24);
    if (*(a1 + v24))
    {
      goto LABEL_26;
    }
  }

LABEL_37:
  v30 = (a1 + v14 + 1) & ~v14;
  if (v5 != v9)
  {
    v32 = (v30 + v15 + v16) & ~v16;
    if (v36 == v9)
    {
      v33 = *(v6 + 48);
    }

    else
    {
      v32 = (v19 + v32) & ~v17;
      if (v35 != v9)
      {
        v34 = *(((v18 + v32 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
        if (v34 > 1)
        {
          return (v34 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v33 = *(v8 + 48);
    }

    return v33(v32);
  }

  v31 = *(v4 + 48);

  return v31(v30, v5, v37);
}

void sub_18AF38BF4(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v5 = *(v4 + 84);
  v6 = *(a4[3] - 8);
  v40 = v6;
  v38 = v5;
  v37 = *(v6 + 84);
  if (v5 <= v37)
  {
    v5 = *(v6 + 84);
  }

  v7 = *(a4[4] - 8);
  v39 = v7;
  v36 = *(v7 + 84);
  if (v5 <= v36)
  {
    v5 = *(v7 + 84);
  }

  if (v5 <= 0xFE)
  {
    v5 = 254;
  }

  v42 = v5;
  v8 = *(sub_18AFCBB34() - 8);
  v9 = *(v8 + 64);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v41 = v9;
  v10 = *(sub_18AFCC5C4() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v4 + 80);
  v15 = *(v4 + 64);
  v16 = *(v6 + 80);
  v17 = *(v7 + 80);
  v18 = *(v6 + 64) + v17;
  v19 = *(v7 + 64);
  v20 = *(v8 + 80) & 0xF8 | 7;
  v21 = (v20 + ((v19 + ((v18 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16)) & ~v17) + 23) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v20;
  v22 = *(v10 + 80) & 0xF8 | 7;
  v23 = *(v12 + 80) & 0xF8 | 7;
  v24 = v13 + ((v23 + ((v11 + ((v41 + v22 + v21 + 1) & ~v22) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v23) + 1;
  if (a3 <= v42)
  {
    v27 = 0;
    v25 = a1;
    v26 = a2;
  }

  else
  {
    v25 = a1;
    v26 = a2;
    if (v24 <= 3)
    {
      v30 = ((a3 - v42 + ~(-1 << (8 * v24))) >> (8 * v24)) + 1;
      if (HIWORD(v30))
      {
        v27 = 4;
      }

      else
      {
        if (v30 < 0x100)
        {
          v31 = 1;
        }

        else
        {
          v31 = 2;
        }

        if (v30 >= 2)
        {
          v27 = v31;
        }

        else
        {
          v27 = 0;
        }
      }
    }

    else
    {
      v27 = 1;
    }
  }

  if (v42 >= v26)
  {
    if (v27 > 1)
    {
      if (v27 != 2)
      {
        *&v25[v24] = 0;
        if (!v26)
        {
          return;
        }

        goto LABEL_42;
      }

      *&v25[v24] = 0;
    }

    else if (v27)
    {
      v25[v24] = 0;
      if (!v26)
      {
        return;
      }

      goto LABEL_42;
    }

    if (!v26)
    {
      return;
    }

LABEL_42:
    v33 = &v25[v14 + 1] & ~v14;
    if (v38 == v42)
    {
      v34 = *(v4 + 56);
    }

    else
    {
      v33 = (v33 + v15 + v16) & ~v16;
      if (v37 == v42)
      {
        v34 = *(v40 + 56);
      }

      else
      {
        v33 = (v18 + v33) & ~v17;
        if (v36 != v42)
        {
          v35 = (v19 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
          if (v26 > 0xFE)
          {
            *(v35 + 8) = 0;
            *v35 = v26 - 255;
          }

          else
          {
            *(v35 + 8) = -v26;
          }

          return;
        }

        v34 = *(v39 + 56);
      }
    }

    v34(v33);
    return;
  }

  v28 = ~v42 + v26;
  if (v24 < 4)
  {
    v29 = (v28 >> (8 * v24)) + 1;
    if (v24)
    {
      v32 = v28 & ~(-1 << (8 * v24));
      bzero(v25, v24);
      if (v24 != 3)
      {
        if (v24 == 2)
        {
          *v25 = v32;
          if (v27 > 1)
          {
LABEL_62:
            if (v27 == 2)
            {
              *&v25[v24] = v29;
            }

            else
            {
              *&v25[v24] = v29;
            }

            return;
          }
        }

        else
        {
          *v25 = v28;
          if (v27 > 1)
          {
            goto LABEL_62;
          }
        }

        goto LABEL_59;
      }

      *v25 = v32;
      v25[2] = BYTE2(v32);
    }

    if (v27 > 1)
    {
      goto LABEL_62;
    }
  }

  else
  {
    bzero(v25, v24);
    *v25 = v28;
    v29 = 1;
    if (v27 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v27)
  {
    v25[v24] = v29;
  }
}

uint64_t sub_18AF391F8@<X0>(_BYTE *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t)@<X3>, void (*a4)(uint64_t)@<X5>, uint64_t a5@<X7>, _BYTE *a6@<X8>, __int128 a7, __int128 a8, uint64_t a9)
{
  *a6 = *a1;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v13 = type metadata accessor for MacEngineeringSearchField(0, &v24);
  v14 = a2();
  v15 = a3(v14);
  a4(v15);
  v16 = &a6[v13[20]];
  *v16 = swift_getKeyPath();
  v16[8] = 0;
  v17 = &a6[v13[21]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = v13[22];
  *&a6[v18] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v19 = v13[23];
  *&a6[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v20 = &a6[v13[24]];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v21 = &a6[v13[25]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v13[26];
  *&a6[v22] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AF393D0(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[8];
  }

  return v8 & 1;
}

unint64_t sub_18AF39520(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 3) & 1;
}

unint64_t sub_18AF39670(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 80);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 1) & 1;
}

uint64_t sub_18AF397C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_18AFCC474();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_18AE83A40(v2 + *(a1 + 104), v9, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = v4;
    v15 = v22;
  }

  else
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    v15 = v22;
    (*(v22 + 8))(v6, v4);
    v14 = v4;
  }

  v17 = v2 + *(v23 + 100);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v25 = *v17;
  }

  else
  {

    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v18, 0);
    (*(v15 + 8))(v6, v14);
    LOBYTE(v18) = v25;
  }

  v20 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  *(v20 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_18AF39B1C(uint64_t a1)
{
  if (sub_18AF393D0(a1) & 1) != 0 || (sub_18AF39670(a1))
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_18AF39520(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_18AF39B68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v75 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v71 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_18AFCC474();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v88 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = a1[3];
  v125 = sub_18AFCC044();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  v107 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  sub_18AFCC044();
  v6 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v126 = sub_18AFCBDC4();
  v127 = MEMORY[0x1E6981840];
  v128 = a1[4];
  v7 = v128;
  swift_getTupleTypeMetadata();
  sub_18AFCDBF4();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_18AFCD134();
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v77 = &v71 - v9;
  v80 = sub_18AFCC044();
  v81 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v78 = &v71 - v10;
  v11 = sub_18AFCC044();
  v86 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v103 = &v71 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v6);
  v89 = sub_18AFCBDC4();
  v87 = v11;
  v13 = sub_18AFCC624();
  v93 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v92 = &v71 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B120, &qword_18AFDA3C8);
  v94 = v13;
  v15 = sub_18AFCC044();
  v97 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v95 = &v71 - v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B128, &qword_18AFDA3D0);
  v99 = v15;
  v101 = sub_18AFCC044();
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v96 = &v71 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v98 = &v71 - v19;
  sub_18AFCC4D4();
  v20 = v7;
  v104 = v7;
  *&v21 = v7;
  v106 = a1;
  v22 = a1[6];
  v76 = a1[5];
  v23 = v76;
  *(&v21 + 1) = v76;
  v24 = v107;
  *&v25 = v107;
  v26 = v105;
  *(&v25 + 1) = v105;
  v83 = v25;
  v108 = v25;
  v84 = v21;
  v109 = v21;
  v27 = a1[7];
  v110 = v22;
  v111 = v27;
  v28 = v85;
  v112 = v85;
  v29 = v77;
  sub_18AFCD124();
  sub_18AFCC884();
  v30 = v24;
  v31 = v26;
  sub_18AF3B884(v28, v30, v26, v20, v23, v22, v27);
  v32 = swift_getWitnessTable();
  v33 = v78;
  sub_18AFCCC24();
  (*(v82 + 8))(v29, v8);
  sub_18AFCC8A4();
  v34 = v76;
  v82 = v27;
  sub_18AF3BA28(v28, v107, v31, v104, v76, v22, v27);
  v123 = v32;
  v124 = MEMORY[0x1E697E5D8];
  v35 = v80;
  WitnessTable = swift_getWitnessTable();
  sub_18AFCCC24();
  (*(v81 + 8))(v33, v35);
  v36 = v28 + *(v106 + 21);
  v37 = *v36;
  v38 = *(v36 + 8);
  if (v38 == 1)
  {
    v39 = *v36;
    v40 = v91;
    v41 = v90;
    v42 = v88;
  }

  else
  {

    sub_18AFCE024();
    v43 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v42 = v88;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v37, 0);
    v41 = v90;
    v40 = v91;
    (*(v90 + 8))(v42, v91);
    LOBYTE(v39) = v125;
  }

  v44 = qword_18AFDA5A0[v39];
  if (!v38)
  {

    sub_18AFCE024();
    v45 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v37, 0);
    (*(v41 + 8))(v42, v40);
    LOBYTE(v37) = v125;
  }

  v46 = dbl_18AFDA5E0[v37];
  v47 = v82;
  *&v48 = v46 + sub_18AF3BBE4(v28, v107, v105, v104, v34, v22, v82);
  v121 = WitnessTable;
  v122 = MEMORY[0x1E697E5D8];
  v49 = v87;
  v50 = swift_getWitnessTable();
  v51 = v92;
  v52 = v48;
  v53 = v103;
  sub_18AFC2B18(v44, 0, v52, 0, v49, v50, v92);
  v54 = (*(v86 + 8))(v53, v49);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v84;
  *(&v71 - 4) = v83;
  *(&v71 - 3) = v55;
  *(&v71 - 4) = v22;
  *(&v71 - 3) = v47;
  *(&v71 - 2) = v28;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B130, &qword_18AFDA3D8);
  v119 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  v120 = v50;
  v117 = swift_getWitnessTable();
  v118 = v50;
  v56 = v94;
  v57 = swift_getWitnessTable();
  sub_18AF3D1FC();
  v58 = v95;
  sub_18AFCCA64();
  (*(v93 + 8))(v51, v56);
  v59 = v106;
  if (sub_18AF393D0(v106))
  {
    v60 = *MEMORY[0x1E697F468];
    v61 = sub_18AFCC534();
    (*(*(v61 - 8) + 104))(v72, v60, v61);
    sub_18AF3D46C(&qword_1EA998A48, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  }

  else
  {
    sub_18AF397C0(v59, v73);
    sub_18AF3D46C(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape, &unk_18AFE2288);
  }

  v125 = sub_18AFCD4E4();
  v62 = sub_18AE95F54(&qword_1EA99B188, &qword_1EA99B120, &qword_18AFDA3C8, MEMORY[0x1E697F940]);
  v115 = v57;
  v116 = v62;
  v63 = v99;
  v64 = swift_getWitnessTable();
  sub_18AF3D418();
  v65 = v96;
  sub_18AFCCAC4();

  (*(v97 + 8))(v58, v63);
  v66 = sub_18AE95F54(&qword_1EA99B198, &qword_1EA99B128, &qword_18AFDA3D0, MEMORY[0x1E697FD58]);
  v113 = v64;
  v114 = v66;
  v67 = v101;
  swift_getWitnessTable();
  v68 = v98;
  sub_18AEADA5C();
  v69 = *(v100 + 8);
  v69(v65, v67);
  sub_18AEADA5C();
  return (v69)(v68, v67);
}

uint64_t sub_18AF3AA78@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v99 = a7;
  v73 = a1;
  v91 = a8;
  v93 = *(a4 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v92 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v90 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998930, &qword_18AFD35E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v69 - v17;
  v71 = sub_18AFCC474();
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v69 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998938, &unk_18AFD2F80);
  v19 = sub_18AFCC044();
  v80 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v79 = &v69 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v81 = v19;
  v89 = sub_18AFCBDC4();
  v82 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v97 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v78 = &v69 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v86 = &v69 - v25;
  v26 = a3;
  v27 = sub_18AFCC044();
  v94 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v98 = &v69 - v31;
  v113 = a2;
  v114 = a3;
  v115 = a4;
  v116 = a5;
  v32 = a6;
  v33 = v99;
  v117 = a6;
  v118 = v99;
  v72 = type metadata accessor for MacEngineeringSearchField(0, &v113);
  v88 = *(v72 + 72);
  sub_18AFCC8A4();
  v34 = v73;
  v84 = a2;
  v96 = a4;
  v87 = a5;
  sub_18AF3B520(v73, a2, v26, a4, a5, v32, v33);
  v85 = v26;
  sub_18AFCCC24();
  v83 = v32;
  v111 = v32;
  v112 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_18AEADA5C();
  v35 = *(v94 + 8);
  v95 = v29;
  v88 = v27;
  v36 = v72;
  v76 = v94 + 8;
  v75 = v35;
  v35(v29, v27);
  v37 = v34;
  v38 = v34 + *(v36 + 84);
  v39 = *v38;
  if (*(v38 + 8) != 1)
  {

    sub_18AFCE024();
    v40 = sub_18AFCC7D4();
    sub_18AFCBA64();

    v41 = v69;
    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v39, 0);
    (*(v70 + 8))(v41, v71);
  }

  v42 = sub_18AFCC8F4();
  v43 = v77;
  (*(*(v42 - 8) + 56))(v77, 1, 1, v42);
  sub_18AFCC954();
  sub_18AE7BA80(v43, &qword_1EA998930, &qword_18AFD35E0);
  v44 = v79;
  v45 = v84;
  v46 = v87;
  sub_18AFCCBA4();

  v47 = sub_18AF3B6DC(v37, v45, v85, v96, v46, v83, v99);
  v48 = sub_18AE95F54(&qword_1EA998950, &qword_1EA998938, &unk_18AFD2F80, MEMORY[0x1E6980A18]);
  v109 = v46;
  v110 = v48;
  v49 = v81;
  v50 = swift_getWitnessTable();
  v51 = v78;
  sub_18AFC385C(1, 0, v49, v50, 2.0, v47, v78);
  (*(v80 + 8))(v44, v49);
  v107 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v108 = v50;
  v52 = v89;
  v53 = swift_getWitnessTable();
  v54 = v86;
  sub_18AEADA5C();
  v55 = v82;
  v87 = *(v82 + 8);
  (v87)(v51, v52);
  v56 = v90;
  v57 = v96;
  sub_18AEADA5C();
  v58 = v95;
  v59 = v88;
  (*(v94 + 16))(v95, v98, v88);
  v113 = v58;
  v60 = v97;
  v61 = v54;
  (*(v55 + 16))();
  v105 = 0;
  v106 = 1;
  v114 = v60;
  v115 = &v105;
  v62 = v93;
  v63 = v92;
  (*(v93 + 16))(v92, v56, v57);
  v116 = v63;
  v104[0] = v59;
  v104[1] = v52;
  v104[2] = MEMORY[0x1E6981840];
  v104[3] = v57;
  v100 = WitnessTable;
  v101 = v53;
  v102 = MEMORY[0x1E6981838];
  v103 = v99;
  sub_18AEB70B8(&v113, 4uLL, v104);
  v64 = *(v62 + 8);
  v64(v56, v57);
  v65 = v61;
  v66 = v87;
  (v87)(v65, v52);
  v67 = v75;
  v75(v98, v59);
  v64(v63, v57);
  (v66)(v97, v52);
  return v67(v95, v59);
}

uint64_t sub_18AF3B520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField(0, v22) + 84);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v19) = v22[0];
  }

  if ((v19 - 2) > 2u)
  {
    return 0x3FF0000000000000;
  }

  else
  {
    return qword_18AFDA660[(v19 - 2)];
  }
}

double sub_18AF3B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField(0, v23) + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
  }

  else
  {

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
  }

  result = 4.0;
  if (!v20)
  {
    return 2.0;
  }

  return result;
}

uint64_t sub_18AF3B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = a2;
  v22[1] = a3;
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = a6;
  v22[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField(0, v22) + 84);
  v19 = *v18;
  if (*(v18 + 8) != 1)
  {

    sub_18AFCE024();
    v20 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    LOBYTE(v19) = v22[0];
  }

  return qword_18AFDA678[v19];
}

uint64_t sub_18AF3BA28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField(0, v23) + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
    if (v19 > 4u)
    {
      return 0x3FF0000000000000;
    }
  }

  else
  {

    sub_18AFCE024();
    v22 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
    if (LOBYTE(v23[0]) > 4u)
    {
      return 0x3FF0000000000000;
    }
  }

  return qword_18AFDA6B8[v20];
}

double sub_18AF3BBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a2;
  v23[1] = a3;
  v23[2] = a4;
  v23[3] = a5;
  v23[4] = a6;
  v23[5] = a7;
  v18 = a1 + *(type metadata accessor for MacEngineeringSearchField(0, v23) + 84);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    v20 = *v18;
  }

  else
  {

    sub_18AFCE024();
    v21 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v19, 0);
    (*(v15 + 8))(v17, v14);
    v20 = LOBYTE(v23[0]);
  }

  result = 0.0;
  if (!v20)
  {
    return 1.0;
  }

  return result;
}

uint64_t sub_18AF3BD8C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v116 = a6;
  v117 = a7;
  v120 = a8;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1A0, &qword_18AFDA408);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v93 - v15;
  v96 = sub_18AFCC474();
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_18AFCBB34();
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v98 = (&v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v97 = (&v93 - v19);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B178, &unk_18AFDA3F8);
  MEMORY[0x1EEE9AC00](v115);
  v100 = &v93 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v93 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v93 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v93 - v26;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1A8, &qword_18AFDA410);
  MEMORY[0x1EEE9AC00](v112);
  v114 = &v93 - v27;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B0, &qword_18AFDA418);
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v93 - v28;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B158, &qword_18AFDA3E8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v93 - v29;
  v30 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v93 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v93 - v37;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B168, &qword_18AFDA3F0);
  MEMORY[0x1EEE9AC00](v108);
  v40 = &v93 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B148, &qword_18AFDA3E0);
  v118 = *(v41 - 8);
  v119 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v93 - v42;
  *&v121 = a2;
  *(&v121 + 1) = a3;
  *&v122 = a4;
  *(&v122 + 1) = a5;
  v123 = v116;
  v124 = v117;
  v44 = type metadata accessor for MacEngineeringSearchField(0, &v121);
  if (sub_18AF393D0(v44))
  {
    v45 = 1;
    v46 = v120;
  }

  else
  {
    if (sub_18AF39670(v44))
    {
      sub_18AF397C0(v44, v38);
      sub_18AF3CC84(*a1, v40);
      sub_18AF3D4B4(v38);
      v47 = &qword_1EA99B168;
      v48 = &qword_18AFDA3F0;
      sub_18AE83A40(v40, v110, &qword_1EA99B168, &qword_18AFDA3F0);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168, &qword_18AFDA3F0, &unk_18AFE35F0);
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178, &unk_18AFDA3F8, &unk_18AFE35F0);
      v49 = v111;
      sub_18AFCC614();
      sub_18AE83A40(v49, v114, &qword_1EA99B158, &qword_18AFDA3E8);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AFCC614();
      sub_18AE7BA80(v49, &qword_1EA99B158, &qword_18AFDA3E8);
      v50 = v40;
    }

    else if (sub_18AF39B1C(v44))
    {
      sub_18AF397C0(v44, v35);
      v51 = *a1;
      v52 = v97;
      sub_18AED2E48(v97);
      v53 = &a1[*(v44 + 96)];
      v54 = *v53;
      if (v53[8] != 1)
      {

        sub_18AFCE024();
        v55 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v56 = v94;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v54, 0);
        (*(v95 + 8))(v56, v96);
        LOBYTE(v54) = v121;
      }

      v57 = v102;
      v58 = sub_18AEF3BD4(v52, v51);
      v59 = v105;
      v60 = v57 + *(v105 + 84);
      sub_18AF3D510(v35, v60, type metadata accessor for ResolvedSearchFieldBorderShape);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B8, &unk_18AFDA420);
      *(v60 + *(v61 + 52)) = v58;
      *(v60 + *(v61 + 56)) = 256;
      v62 = sub_18AEF3D90(v54 & 1, v52);
      sub_18AFCBB94();
      sub_18AF3D510(v60, v57, type metadata accessor for ResolvedSearchFieldBorderShape);
      *(v57 + v59[18]) = v62;
      *(v57 + v59[17]) = 2;
      v63 = v57 + v59[19];
      v64 = v126;
      *v63 = v125;
      *(v63 + 16) = v64;
      *(v63 + 32) = v127;
      *(v57 + v59[20]) = 1;
      if (v54)
      {
        sub_18AFCCDB4();
        v65 = sub_18AFCCDA4();
      }

      else
      {
        v65 = sub_18AFCCD74();
      }

      sub_18AFCBB94();
      (*(v106 + 8))(v52, v107);
      sub_18AF3D4B4(v35);
      v81 = v99;
      sub_18AF3D510(v57, v99, type metadata accessor for ResolvedSearchFieldBorderShape);
      v82 = v115;
      sub_18AE9A768(v57, v81 + *(v115 + 84), &qword_1EA99B1A0, &qword_18AFDA408);
      *(v81 + v82[18]) = v65;
      *(v81 + v82[17]) = 2;
      v83 = v81 + v82[19];
      v84 = v122;
      *v83 = v121;
      *(v83 + 16) = v84;
      *(v83 + 32) = v123;
      *(v81 + v82[20]) = 1;
      v47 = &qword_1EA99B178;
      v48 = &unk_18AFDA3F8;
      v85 = v104;
      sub_18AE9A768(v81, v104, &qword_1EA99B178, &unk_18AFDA3F8);
      sub_18AE83A40(v85, v110, &qword_1EA99B178, &unk_18AFDA3F8);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168, &qword_18AFDA3F0, &unk_18AFE35F0);
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178, &unk_18AFDA3F8, &unk_18AFE35F0);
      v86 = v111;
      sub_18AFCC614();
      sub_18AE83A40(v86, v114, &qword_1EA99B158, &qword_18AFDA3E8);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AFCC614();
      sub_18AE7BA80(v86, &qword_1EA99B158, &qword_18AFDA3E8);
      v50 = v85;
    }

    else
    {
      sub_18AF397C0(v44, v32);
      v66 = *a1;
      v67 = v98;
      sub_18AED2E48(v98);
      v68 = &a1[*(v44 + 96)];
      v69 = *v68;
      if (v68[8] != 1)
      {

        sub_18AFCE024();
        v70 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v71 = v94;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v69, 0);
        (*(v95 + 8))(v71, v96);
        LOBYTE(v69) = v121;
      }

      v72 = v103;
      v73 = sub_18AEF3BD4(v67, v66);
      v74 = v105;
      v75 = v72 + *(v105 + 84);
      sub_18AF3D510(v32, v75, type metadata accessor for ResolvedSearchFieldBorderShape);
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1B8, &unk_18AFDA420);
      *(v75 + *(v76 + 52)) = v73;
      *(v75 + *(v76 + 56)) = 256;
      v77 = sub_18AEF3D90(v69 & 1, v67);
      sub_18AFCBB94();
      sub_18AF3D510(v75, v72, type metadata accessor for ResolvedSearchFieldBorderShape);
      *(v72 + v74[18]) = v77;
      *(v72 + v74[17]) = 2;
      v78 = v72 + v74[19];
      v79 = v126;
      *v78 = v125;
      *(v78 + 16) = v79;
      *(v78 + 32) = v127;
      *(v72 + v74[20]) = 1;
      if (v69)
      {
        sub_18AFCCDB4();
        v80 = sub_18AFCCDA4();
      }

      else
      {
        v80 = sub_18AFCCD74();
      }

      sub_18AFCBB94();
      (*(v106 + 8))(v67, v107);
      sub_18AF3D4B4(v32);
      v87 = v100;
      sub_18AF3D510(v72, v100, type metadata accessor for ResolvedSearchFieldBorderShape);
      v88 = v115;
      sub_18AE9A768(v72, v87 + *(v115 + 84), &qword_1EA99B1A0, &qword_18AFDA408);
      *(v87 + v88[18]) = v80;
      *(v87 + v88[17]) = 2;
      v89 = v87 + v88[19];
      v90 = v122;
      *v89 = v121;
      *(v89 + 16) = v90;
      *(v89 + 32) = v123;
      *(v87 + v88[20]) = 1;
      v47 = &qword_1EA99B178;
      v48 = &unk_18AFDA3F8;
      v91 = v101;
      sub_18AE9A768(v87, v101, &qword_1EA99B178, &unk_18AFDA3F8);
      sub_18AE83A40(v91, v114, &qword_1EA99B178, &unk_18AFDA3F8);
      swift_storeEnumTagMultiPayload();
      sub_18AF3D338();
      sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178, &unk_18AFDA3F8, &unk_18AFE35F0);
      sub_18AFCC614();
      v50 = v91;
    }

    sub_18AE7BA80(v50, v47, v48);
    v46 = v120;
    sub_18AE9A768(v43, v120, &qword_1EA99B148, &qword_18AFDA3E0);
    v45 = 0;
  }

  return (*(v118 + 56))(v46, v45, 1, v119);
}

double sub_18AF3CC84@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0, &qword_18AFDA218);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1C0, &unk_18AFDA430);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (v4 == 1)
  {
    v14 = sub_18AFCC6D4();
  }

  else
  {
    v14 = sub_18AFCC6B4();
  }

  v15 = v14;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v7 = v15;
  sub_18AE9A768(v7, v10, &qword_1EA99AFC0, &qword_18AFDA218);
  sub_18AF3D510(v2, v13, type metadata accessor for ResolvedSearchFieldBorderShape);
  sub_18AE9A768(v10, &v13[*(v11 + 52)], &qword_1EA99AFC0, &qword_18AFDA218);
  *&v13[*(v11 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF3D510(v13, a2, type metadata accessor for ResolvedSearchFieldBorderShape);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B168, &qword_18AFDA3F0);
  sub_18AE9A768(v13, a2 + v16[21], &qword_1EA99B1C0, &unk_18AFDA430);
  *(a2 + v16[17]) = 0;
  v17 = a2 + v16[19];
  result = *&v21;
  v19 = v22;
  *v17 = v21;
  *(v17 + 16) = v19;
  *(v17 + 32) = v23;
  *(a2 + v16[20]) = 1;
  return result;
}

double sub_18AF3CF18@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v4 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AFC0, &qword_18AFDA218);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B1C8, &unk_18AFDA440);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (v4 == 1)
  {
    v14 = sub_18AFCC6D4();
  }

  else
  {
    v14 = sub_18AFCC6B4();
  }

  v15 = v14;
  sub_18AFCCD64();
  sub_18AFCCDA4();

  sub_18AFCBB74();

  *v7 = v15;
  sub_18AE9A768(v7, v10, &qword_1EA99AFC0, &qword_18AFDA218);
  sub_18AF3D510(v2, v13, type metadata accessor for ResolvedTextFieldBorderShape);
  sub_18AE9A768(v10, &v13[*(v11 + 52)], &qword_1EA99AFC0, &qword_18AFDA218);
  *&v13[*(v11 + 56)] = 256;
  sub_18AFCBB94();
  sub_18AF3D510(v13, a2, type metadata accessor for ResolvedTextFieldBorderShape);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99B1D0, &unk_18AFDAC40);
  sub_18AE9A768(v13, a2 + v16[21], &qword_1EA99B1C8, &unk_18AFDA440);
  *(a2 + v16[17]) = 0;
  v17 = a2 + v16[19];
  result = *&v21;
  v19 = v22;
  *v17 = v21;
  *(v17 + 16) = v19;
  *(v17 + 32) = v23;
  *(a2 + v16[20]) = 1;
  return result;
}

unint64_t sub_18AF3D1FC()
{
  result = qword_1EA99B138;
  if (!qword_1EA99B138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B130, &qword_18AFDA3D8);
    sub_18AF3D280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B138);
  }

  return result;
}

unint64_t sub_18AF3D280()
{
  result = qword_1EA99B140;
  if (!qword_1EA99B140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B148, &qword_18AFDA3E0);
    sub_18AF3D338();
    sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178, &unk_18AFDA3F8, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B140);
  }

  return result;
}

unint64_t sub_18AF3D338()
{
  result = qword_1EA99B150;
  if (!qword_1EA99B150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B158, &qword_18AFDA3E8);
    sub_18AE95F54(&qword_1EA99B160, &qword_1EA99B168, &qword_18AFDA3F0, &unk_18AFE35F0);
    sub_18AE95F54(&qword_1EA99B170, &qword_1EA99B178, &unk_18AFDA3F8, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B150);
  }

  return result;
}

unint64_t sub_18AF3D418()
{
  result = qword_1EA99B190;
  if (!qword_1EA99B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B190);
  }

  return result;
}

uint64_t sub_18AF3D46C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AF3D4B4(uint64_t a1)
{
  v2 = type metadata accessor for ResolvedSearchFieldBorderShape(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AF3D510(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_18AF3D578(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_18AECE088(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
      if (v3 <= 0x3F)
      {
        sub_18AECE088(319, &qword_1EA998418, MEMORY[0x1E697F610]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_18AF3D688(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v33 = *(a3 + 16);
  v4 = *(v33 - 8);
  v32 = *(a3 + 24);
  v5 = *(v4 + 84);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  if (v7 <= v5)
  {
    v8 = *(v4 + 84);
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB34() - 8);
  v10 = *(v9 + 64);
  if (v10 <= 8)
  {
    v10 = 8;
  }

  v34 = v10;
  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v11 = *(sub_18AFCC5C4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v6 + 80);
  v14 = *(v6 + 64);
  if (!a2)
  {
    return 0;
  }

  v15 = *(v4 + 64) + v13;
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = a1;
  if (v8 >= a2)
  {
    goto LABEL_38;
  }

  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((((v12 + ((v34 + v18 + ((v14 + v16 + (v15 & ~v13)) & ~v16) + 1) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 <= 1)
  {
    if (!v22)
    {
      goto LABEL_38;
    }

    v23 = a1[v19];
    if (!a1[v19])
    {
      goto LABEL_38;
    }

LABEL_31:
    v25 = v19 > 3;
    if (v19 <= 3)
    {
      v26 = (v23 - 1) << (8 * v19);
    }

    else
    {
      v26 = 0;
    }

    if (v25)
    {
      v31 = *a1;
    }

    else
    {
      v31 = *a1;
    }

    return v8 + (v31 | v26) + 1;
  }

  if (v22 == 2)
  {
    v23 = *&a1[v19];
    if (*&a1[v19])
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = *&a1[v19];
    if (v23)
    {
      goto LABEL_31;
    }
  }

LABEL_38:
  if (v5 == v8)
  {
    v27 = v33;
    v28 = *(v4 + 48);
    v29 = v5;
  }

  else
  {
    v17 = (&a1[v15] & ~v13);
    if (v7 != v8)
    {
      v30 = *((&v17[v14 + v16] & ~v16) + v34);
      if (v30 >= 2)
      {
        return (v30 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v28 = *(v6 + 48);
    v29 = v7;
    v27 = v32;
  }

  return v28(v17, v29, v27);
}

void sub_18AF3D9C0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v37 = *(a4 + 16);
  v5 = *(v37 - 8);
  v36 = v5;
  v6 = *(v5 + 84);
  v34 = *(a4 + 24);
  v7 = *(v34 - 8);
  v35 = *(v7 + 84);
  if (v35 <= v6)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v9 = *(sub_18AFCBB34() - 8);
  if (*(v9 + 64) <= 8uLL)
  {
    v10 = 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v11 = *(sub_18AFCC5C4() - 8);
  if (*(v11 + 64) <= 8uLL)
  {
    v12 = 8;
  }

  else
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v7 + 80);
  v14 = *(v5 + 64) + v13;
  v15 = *(v7 + 64);
  v16 = *(v9 + 80) & 0xF8 | 7;
  v17 = v10 + 1;
  v18 = *(v11 + 80) & 0xF8 | 7;
  v19 = ((((v12 + ((v10 + 1 + v18 + ((v15 + v16 + (v14 & ~v13)) & ~v16)) & ~v18) + 8) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v8 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

LABEL_43:
        if (v6 == v8)
        {
          v25 = v37;
          v26 = *(v36 + 56);
          v27 = a1;
          v28 = a2;
          v29 = v6;
        }

        else
        {
          v27 = (&a1[v14] & ~v13);
          v29 = v35;
          if (v35 != v8)
          {
            v30 = (&v27[v15 + v16] & ~v16);
            if (a2 > 0xFE)
            {
              if (v17 <= 3)
              {
                v31 = ~(-1 << (8 * v17));
              }

              else
              {
                v31 = -1;
              }

              if (v10 != -1)
              {
                v32 = v31 & (a2 - 255);
                if (v17 <= 3)
                {
                  v33 = v10 + 1;
                }

                else
                {
                  v33 = 4;
                }

                bzero(v30, v17);
                if (v33 > 2)
                {
                  if (v33 == 3)
                  {
                    *v30 = v32;
                    v30[2] = BYTE2(v32);
                  }

                  else
                  {
                    *v30 = v32;
                  }
                }

                else if (v33 == 1)
                {
                  *v30 = v32;
                }

                else
                {
                  *v30 = v32;
                }
              }
            }

            else
            {
              v30[v10] = -a2;
            }

            return;
          }

          v26 = *(v7 + 56);
          v28 = a2;
          v25 = v34;
        }

        v26(v27, v28, v29, v25);
        return;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_43;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_43;
  }

  v23 = ~v8 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_31:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_31;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

__n128 sub_18AF3DE10@<Q0>(uint64_t a1@<X0>, char a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9)
{
  v27[0] = a5;
  v27[1] = a6;
  v27[2] = a8;
  v27[3] = a9;
  v14 = type metadata accessor for MacGladeGroupBox(0, v27);
  v15 = v14[14];
  *(a7 + v15) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  swift_storeEnumTagMultiPayload();
  v16 = v14[15];
  *(a7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  v17 = swift_storeEnumTagMultiPayload();
  v18 = (a7 + v14[16]);
  __asm { FMOV            V0.2D, #5.0 }

  *v18 = _Q0;
  v18[1] = _Q0;
  *(a7 + v14[17]) = 0x4018000000000000;
  v24 = a4(v17);
  a3(v24);
  *(a7 + v14[18]) = a2;
  if ((*(a1 + 32) & 1) == 0)
  {
    result = *a1;
    v26 = *(a1 + 16);
    *v18 = *a1;
    v18[1] = v26;
  }

  return result;
}

uint64_t sub_18AF3DF50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v70 = a2;
  v68 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[3];
  v7 = sub_18AFCC044();
  *&v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990D8, &qword_18AFD42C0);
  v52 = sub_18AFCC044();
  v57 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v11 = &v50 - v10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B258, &qword_18AFDA760);
  v56 = sub_18AFCC044();
  v60 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = &v50 - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B260, &qword_18AFDA768);
  v59 = sub_18AFCC044();
  v63 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v55 = &v50 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9990E0, &unk_18AFDA770);
  v62 = sub_18AFCC044();
  v66 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v58 = &v50 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA997EC8, &qword_18AFCFDE8);
  v65 = sub_18AFCC044();
  v67 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v64 = &v50 - v17;
  v18 = a1[5];
  sub_18AFCCC14();
  v89 = v18;
  v90 = MEMORY[0x1E697E5D8];
  WitnessTable = swift_getWitnessTable();
  sub_18AEE1FFC();
  sub_18AFCCC74();
  (*(v54 + 8))(v9, v7);
  v51 = a1;
  *&v20 = a1[2];
  *(&v20 + 1) = v6;
  v54 = v20;
  *&v21 = a1[4];
  *(&v21 + 1) = v18;
  v50 = v21;
  v74 = v20;
  v75 = v21;
  v76 = v3;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B268, &qword_18AFDA780);
  v22 = sub_18AE95F54(&qword_1EA999118, &qword_1EA9990D8, &qword_18AFD42C0, MEMORY[0x1E697DDB0]);
  v87 = WitnessTable;
  v88 = v22;
  v23 = v52;
  v24 = swift_getWitnessTable();
  sub_18AF3EE50();
  v25 = v53;
  sub_18AFCCBF4();
  (*(v57 + 8))(v11, v23);
  v72 = v50;
  v71 = v54;
  v73 = v3;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B288, &qword_18AFDA790);
  v26 = sub_18AE95F54(&qword_1EA99B290, &qword_1EA99B258, &qword_18AFDA760, MEMORY[0x1E697EC18]);
  v85 = v24;
  v86 = v26;
  v27 = v56;
  v28 = swift_getWitnessTable();
  sub_18AF3EF10();
  v29 = v55;
  sub_18AFCCA64();
  (*(v60 + 8))(v25, v27);
  v30 = *(v3 + *(v51 + 17));
  v31 = *(v68 + 20);
  v32 = *MEMORY[0x1E697F468];
  v33 = sub_18AFCC534();
  v34 = v69;
  (*(*(v33 - 8) + 104))(&v69[v31], v32, v33);
  *v34 = v30;
  v34[1] = v30;
  v35 = sub_18AE95F54(qword_1EA99B2B0, &qword_1EA99B260, &qword_18AFDA768, MEMORY[0x1E697F940]);
  v83 = v28;
  v84 = v35;
  v36 = v59;
  v37 = swift_getWitnessTable();
  sub_18AEE2050(v38);
  v39 = v58;
  sub_18AFCCB24();
  sub_18AEE20A8(v34, v40);
  (*(v63 + 8))(v29, v36);
  swift_getKeyPath();
  v81 = v30;
  v82 = 0;
  v41 = sub_18AE95F54(qword_1EA999128, &qword_1EA9990E0, &unk_18AFDA770, MEMORY[0x1E6980CF8]);
  v79 = v37;
  v80 = v41;
  v42 = v62;
  v43 = swift_getWitnessTable();
  v44 = v61;
  sub_18AFCCAA4();

  (*(v66 + 8))(v39, v42);
  v45 = sub_18AE95F54(qword_1EA997ED0, &qword_1EA997EC8, &qword_18AFCFDE8, MEMORY[0x1E6980A18]);
  v77 = v43;
  v78 = v45;
  v46 = v65;
  swift_getWitnessTable();
  v47 = v64;
  sub_18AEADA5C();
  v48 = *(v67 + 8);
  v48(v44, v46);
  sub_18AEADA5C();
  return (v48)(v47, v46);
}

uint64_t sub_18AF3E918@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_18AFCC5C4();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v36 - v16);
  v18 = sub_18AFCBB34();
  v43 = *(v18 - 8);
  v44 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = a2;
  v46 = a3;
  v47 = a4;
  v48 = a5;
  result = type metadata accessor for MacGladeGroupBox(0, &v45);
  if (*(a1 + *(result + 72)) > 1u)
  {
    v31 = 0;
    v26 = 0;
    v27 = 0;
    v35 = 0;
    v34 = 0;
    v28 = 0;
    v30 = 0;
    v33 = 0;
    v25 = 0;
    v32 = 0uLL;
  }

  else
  {
    sub_18AED2E48(v20);
    sub_18AED2E70(v17);
    v41 = sub_18AFCCD74();
    v40 = sub_18AF46A38(v20, v17);
    v22 = v42;
    (*(v42 + 16))(v14, v17, v12);
    v23 = (*(v22 + 88))(v14, v12);
    if (v23 != *MEMORY[0x1E697F600] && v23 != *MEMORY[0x1E697F608])
    {
      (*(v22 + 8))(v14, v12, 1.0);
    }

    sub_18AFCBB94();
    *&v24 = v45;
    v39 = v24;
    *&v24 = v45 * 0.5;
    v38 = v24;
    v25 = v46;
    v37 = v47;
    v26 = v48;
    v27 = v49;
    v28 = sub_18AFCDB44();
    v30 = v29;
    (*(v22 + 8))(v17, v12);
    result = (*(v43 + 8))(v20, v44);
    *&v32 = v38;
    v31 = v37;
    *(&v32 + 1) = v39;
    v33 = 256;
    v35 = v40;
    v34 = v41;
  }

  *a6 = v32;
  *(a6 + 16) = v25;
  *(a6 + 24) = v31;
  *(a6 + 32) = v26;
  *(a6 + 40) = v27;
  *(a6 + 48) = v35;
  *(a6 + 56) = v33;
  *(a6 + 64) = v34;
  *(a6 + 72) = v33;
  *(a6 + 80) = v28;
  *(a6 + 88) = v30;
  return result;
}

uint64_t sub_18AF3EC4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v23 = a6;
  v22 = sub_18AFCC5C4();
  v11 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v13 = (&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_18AFCBB34();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24[0] = a2;
  v24[1] = a3;
  v24[2] = a4;
  v24[3] = a5;
  result = type metadata accessor for MacGladeGroupBox(0, v24);
  if (*(a1 + *(result + 72)) > 1u)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    sub_18AED2E48(v17);
    sub_18AED2E70(v13);
    v19 = sub_18AF46A20(v17, v13);
    (*(v11 + 8))(v13, v22);
    result = (*(v15 + 8))(v17, v14);
    v20 = 256;
  }

  v21 = v23;
  *v23 = v19;
  *(v21 + 4) = v20;
  return result;
}

unint64_t sub_18AF3EE50()
{
  result = qword_1EA99B270;
  if (!qword_1EA99B270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B268, &qword_18AFDA780);
    sub_18AE95F54(&qword_1EA99B278, &qword_1EA99B280, &qword_18AFDA788, MEMORY[0x1E697FCF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B270);
  }

  return result;
}

unint64_t sub_18AF3EF10()
{
  result = qword_1EA99B298;
  if (!qword_1EA99B298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B288, &qword_18AFDA790);
    sub_18AE95F54(&qword_1EA99B2A0, &qword_1EA99B2A8, &qword_18AFDA798, MEMORY[0x1E697DB78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B298);
  }

  return result;
}

void sub_18AF3EFC0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AEB316C(319);
    if (v2 <= 0x3F)
    {
      sub_18AEB31C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18AF3F08C(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(sub_18AFCBB54() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = ((v10 + ((((v11 + 4) & ~v11) + *(v6 + 64) + v12) & ~v12) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v8 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_33;
      }
    }

LABEL_26:
    v19 = v13 > 3;
    if (v13 <= 3)
    {
      v20 = (v17 - 1) << (8 * v13);
    }

    else
    {
      v20 = 0;
    }

    if (v19)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }

    return v8 + (v23 | v20) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  if (v7 > 0xFE)
  {
    v22 = *(v6 + 48);

    return v22(&a1[v11 + 4] & ~v11, v7, v5);
  }

  else
  {
    v21 = a1[1];
    if (v21 >= 2)
    {
      return v21 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void sub_18AF3F2C8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v22 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_18AFCBB54() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((v12 + ((((v13 + 4) & ~v13) + *(v8 + 64) + v14) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 >= a3)
  {
    v18 = 0;
    if (v10 >= a2)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if (v10 >= a2)
    {
LABEL_19:
      if (v18 > 1)
      {
        if (v18 != 2)
        {
          *&a1[v15] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_34;
        }

        *&a1[v15] = 0;
      }

      else if (v18)
      {
        a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      if (!a2)
      {
        return;
      }

LABEL_34:
      if (v9 > 0xFE)
      {
        v21 = *(v22 + 56);

        v21(&a1[v13 + 4] & ~v13, a2, v9, v7);
      }

      else
      {
        a1[1] = a2 + 1;
      }

      return;
    }
  }

  v19 = ~v10 + a2;
  bzero(a1, v15);
  if (v15 <= 3)
  {
    v20 = (v19 >> 8) + 1;
  }

  else
  {
    v20 = 1;
  }

  if (v15 <= 3)
  {
    *a1 = v19;
    if (v18 > 1)
    {
LABEL_29:
      if (v18 == 2)
      {
        *&a1[v15] = v20;
      }

      else
      {
        *&a1[v15] = v20;
      }

      return;
    }
  }

  else
  {
    *a1 = v19;
    if (v18 > 1)
    {
      goto LABEL_29;
    }
  }

  if (v18)
  {
    a1[v15] = v20;
  }
}

uint64_t sub_18AF3F59C@<X0>(_BYTE *a1@<X0>, char a2@<W1>, char *a3@<X2>, char *a4@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>)
{
  v10 = *a3;
  v11 = *a4;
  *a8 = *a1;
  a8[1] = a2 & 1;
  a8[2] = v10;
  a8[3] = v11;
  v12 = type metadata accessor for MacLabeledCheckboxAndRadioPositioned(0, a6, a7, a4);
  a5();
  v13 = *(v12 + 52);
  *&a8[v13] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v14 = &a8[*(v12 + 56)];
  result = swift_getKeyPath();
  *v14 = result;
  v14[8] = 0;
  return result;
}

uint64_t sub_18AF3F664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v180 = a3;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = type metadata accessor for MacLabeledCheckboxAndRadioBelow(0, v7, v6, a2);
  v156 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v165 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v147 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v147 - v13;
  v15 = type metadata accessor for MacLabeledCheckboxAndRadioAbove(255, v7, v6, v14);
  v182 = v8;
  v16 = sub_18AFCC624();
  v169 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v147 - v17;
  v178 = v15;
  v155 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v163 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v147 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v162 = &v147 - v23;
  v25 = type metadata accessor for MacLabeledCheckboxAndRadioTrailing(0, v7, v6, v24);
  v154 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v159 = &v147 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v151 = &v147 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v158 = &v147 - v30;
  v171 = v7;
  v172 = v6;
  v32 = type metadata accessor for MacLabeledCheckboxAndRadio(255, v7, v6, v31);
  v177 = v25;
  v33 = sub_18AFCC624();
  v167 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v166 = &v147 - v34;
  v161 = sub_18AFCC474();
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v147 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_18AFCBB54();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = (&v147 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = (&v147 - v40);
  MEMORY[0x1EEE9AC00](v42);
  v44 = (&v147 - v43);
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v147 - v46);
  v181 = v32;
  v150 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v149 = &v147 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v147 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v147 - v54;
  v176 = v33;
  v179 = v16;
  v175 = sub_18AFCC624();
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v173 = &v147 - v56;
  v57 = *v4;
  v170 = v4[3];
  v58 = v4[1];
  if (v57 > 1)
  {
    if (v57 == 2)
    {
      v78 = v4[1];
      v205 = v4[2];
      sub_18AED2C20(v41);
      v79 = &v4[*(a1 + 56)];
      v80 = *v79;
      if (v79[8] != 1)
      {

        sub_18AFCE024();
        v81 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v82 = v157;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AEB264C(v80, 0);
        (*(v160 + 8))(v82, v161);
      }

      v83 = v176;
      v84 = sub_18AFC66C0();
      MEMORY[0x1EEE9AC00](v84);
      v85 = v171;
      v86 = v172;
      *(&v147 - 4) = v171;
      *(&v147 - 3) = v86;
      *(&v147 - 2) = v4;
      v87 = v152;
      sub_18AEE3C38(v170, v78, &v205, v88, sub_18AF40CA8, v85, v86, v152);
      v89 = v178;
      WitnessTable = swift_getWitnessTable();
      sub_18AEADA5C();
      v176 = *(v155 + 8);
      v176(v87, v89);
      v91 = v163;
      sub_18AEADA5C();
      v92 = swift_getWitnessTable();
      v93 = v168;
      sub_18AEB5268(v91, v89);
      v94 = swift_getWitnessTable();
      v95 = swift_getWitnessTable();
      v193 = v94;
      v194 = v95;
      swift_getWitnessTable();
      v191 = WitnessTable;
      v192 = v92;
      v96 = v179;
      swift_getWitnessTable();
      v97 = v173;
      sub_18AEB5360(v93, v83, v96);
      (*(v169 + 8))(v93, v96);
      v98 = v176;
      v176(v163, v89);
      v98(v162, v89);
    }

    else
    {
      v205 = v4[2];
      sub_18AED2C20(v38);
      v119 = &v4[*(a1 + 56)];
      v120 = *v119;
      if (v119[8] != 1)
      {

        sub_18AFCE024();
        v121 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v122 = v157;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AEB264C(v120, 0);
        (*(v160 + 8))(v122, v161);
      }

      v123 = sub_18AFC66C0();
      MEMORY[0x1EEE9AC00](v123);
      v124 = v171;
      v125 = v172;
      *(&v147 - 4) = v171;
      *(&v147 - 3) = v125;
      *(&v147 - 2) = v4;
      v126 = v153;
      sub_18AEE4778(v170, v58, &v205, v127, sub_18AF40CA8, v124, v125, v153);
      v128 = v182;
      v129 = swift_getWitnessTable();
      sub_18AEADA5C();
      v172 = *(v156 + 8);
      v172(v126, v128);
      v130 = v165;
      sub_18AEADA5C();
      v131 = v178;
      v132 = swift_getWitnessTable();
      v133 = v168;
      sub_18AEB5360(v130, v131, v128);
      v134 = swift_getWitnessTable();
      v135 = swift_getWitnessTable();
      v203 = v134;
      v204 = v135;
      v136 = v176;
      swift_getWitnessTable();
      v201 = v132;
      v202 = v129;
      v137 = v179;
      swift_getWitnessTable();
      v97 = v173;
      sub_18AEB5360(v133, v136, v137);
      (*(v169 + 8))(v133, v137);
      v138 = v172;
      v172(v165, v128);
      v138(v164, v128);
    }

    v76 = v97;
  }

  else if (v57)
  {
    v99 = v4[1];
    v205 = v4[2];
    sub_18AED2C20(v44);
    v100 = &v4[*(a1 + 56)];
    v101 = *v100;
    v102 = v176;
    if (v100[8] != 1)
    {

      sub_18AFCE024();
      v103 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v104 = v157;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v101, 0);
      (*(v160 + 8))(v104, v161);
    }

    v105 = v177;
    v106 = v181;
    v76 = v173;
    v107 = sub_18AFC66C0();
    MEMORY[0x1EEE9AC00](v107);
    v108 = v171;
    v109 = v172;
    *(&v147 - 4) = v171;
    *(&v147 - 3) = v109;
    *(&v147 - 2) = v4;
    v110 = v151;
    sub_18AEE52B8(v170, v99, &v205, v111, sub_18AF40C88, v108, v109, v151);
    v112 = swift_getWitnessTable();
    sub_18AEADA5C();
    v177 = *(v154 + 8);
    v177(v110, v105);
    v113 = v159;
    sub_18AEADA5C();
    v114 = swift_getWitnessTable();
    v115 = v166;
    sub_18AEB5360(v113, v106, v105);
    v189 = v114;
    v190 = v112;
    swift_getWitnessTable();
    v116 = swift_getWitnessTable();
    v117 = swift_getWitnessTable();
    v187 = v116;
    v188 = v117;
    swift_getWitnessTable();
    sub_18AEB5268(v115, v102);
    (*(v167 + 8))(v115, v102);
    v118 = v177;
    v177(v159, v105);
    v118(v158, v105);
  }

  else
  {
    v205 = v4[2];
    sub_18AED2C20(v47);
    v59 = &v4[*(a1 + 56)];
    v60 = *v59;
    if (v59[8] != 1)
    {

      sub_18AFCE024();
      v61 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v62 = v157;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AEB264C(v60, 0);
      (*(v160 + 8))(v62, v161);
    }

    v63 = sub_18AFC66C0();
    MEMORY[0x1EEE9AC00](v63);
    v64 = v171;
    v65 = v172;
    *(&v147 - 4) = v171;
    *(&v147 - 3) = v65;
    *(&v147 - 2) = v4;
    sub_18AEE2BD4(v170, v58, &v205, v66, sub_18AF40CA8, v64, v65, v52);
    v67 = v181;
    v68 = swift_getWitnessTable();
    v148 = v55;
    sub_18AEADA5C();
    v172 = *(v150 + 8);
    v172(v52, v67);
    v69 = v149;
    sub_18AEADA5C();
    v70 = swift_getWitnessTable();
    v71 = v166;
    sub_18AEB5268(v69, v67);
    v185 = v68;
    v186 = v70;
    v72 = v176;
    swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v74 = swift_getWitnessTable();
    v183 = v73;
    v184 = v74;
    swift_getWitnessTable();
    v75 = v173;
    sub_18AEB5268(v71, v72);
    (*(v167 + 8))(v71, v72);
    v76 = v75;
    v77 = v172;
    v172(v69, v67);
    v77(v148, v67);
  }

  v139 = swift_getWitnessTable();
  v140 = swift_getWitnessTable();
  v199 = v139;
  v200 = v140;
  v141 = swift_getWitnessTable();
  v142 = swift_getWitnessTable();
  v143 = swift_getWitnessTable();
  v197 = v142;
  v198 = v143;
  v144 = swift_getWitnessTable();
  v195 = v141;
  v196 = v144;
  v145 = v175;
  swift_getWitnessTable();
  sub_18AEADA5C();
  return (*(v174 + 8))(v76, v145);
}

uint64_t sub_18AF40B8C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MacLabeledCheckboxAndRadioPositioned(0, v6, v7, v8);
  sub_18AEADA5C();
  sub_18AEADA5C();
  return (*(v3 + 8))(v5, a2);
}

uint64_t type metadata accessor for MacLinearProgressIndicator(uint64_t a1)
{
  result = qword_1EA99B338;
  if (!qword_1EA99B338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AF40D20(uint64_t a1)
{
  result = sub_18AFCBB54();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_18AF40DB8@<D0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t *a3@<X8>)
{
  sub_18AFCDF14();
  sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a3 = sub_18AFCDB44();
  a3[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B348, &unk_18AFDA990);
  sub_18AF40E8C(a2, a1, a3 + *(v8 + 44));

  return result;
}

void sub_18AF40E8C(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v79 = a3;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B350, &qword_18AFDAB60);
  MEMORY[0x1EEE9AC00](v67);
  v75 = &v57[-v4];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B358, &qword_18AFDA9A0);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v57[-v5];
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B360, &qword_18AFDA9A8);
  MEMORY[0x1EEE9AC00](v74);
  v78 = &v57[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v57[-v8];
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v57[-v10];
  v80 = sub_18AFCBB54();
  v11 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v64 = &v57[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68, &qword_18AFD86F0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v57[-v17];
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F70, &qword_18AFD3EB0);
  MEMORY[0x1EEE9AC00](v63);
  v71 = &v57[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v57[-v21];
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v57[-v24];
  sub_18AFCDF14();
  v68 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *MEMORY[0x1E697F468];
  v26 = sub_18AFCC534();
  v27 = *(*(v26 - 8) + 104);
  v62 = v25;
  v61 = v27;
  v27(v18, v25, v26);
  *&v18[*(v16 + 52)] = sub_18AFCC6B4();
  *&v18[*(v16 + 56)] = 256;
  v28 = *(type metadata accessor for MacLinearProgressIndicator(0) + 20);
  v29 = *(v11 + 16);
  v70 = a1;
  v59 = v28;
  v30 = a1 + v28;
  v31 = v80;
  v60 = v29;
  v29(v15, v30, v80);
  v65 = v11;
  v32 = *(v11 + 88);
  v33 = v32(v15, v31);
  v34 = *MEMORY[0x1E697DC28];
  v35 = *MEMORY[0x1E697DC10];
  v58 = *MEMORY[0x1E697DC10];
  if (v33 != v34 && v33 != v35)
  {
    (*(v65 + 8))(v15, v80);
  }

  sub_18AFCDB44();
  sub_18AFCBCC4();
  sub_18AE9A768(v18, v22, &qword_1EA998F68, &qword_18AFD86F0);
  v36 = &v22[*(v63 + 36)];
  v37 = v82;
  *v36 = v81;
  v36[1] = v37;
  v36[2] = v83;
  v38 = v66;
  sub_18AE9A768(v22, v66, &qword_1EA998F70, &qword_18AFD3EB0);
  v39 = v75;
  v61(v75, v62, v26);
  v40 = sub_18AFCCD34();
  v41 = v67;
  *(v39 + *(v67 + 52)) = v40;
  *(v39 + *(v41 + 56)) = 256;
  sub_18AFCBD04();
  v42 = *v70;
  v43 = v64;
  v44 = v80;
  v60(v64, v70 + v59, v80);
  v45 = v32(v43, v44);
  if (v45 != v34 && v45 != v58)
  {
    (*(v65 + 8))(v43, v80);
  }

  sub_18AFCDB54();
  sub_18AFCBCC4();
  v46 = v76;
  sub_18AE9A768(v39, v76, &qword_1EA99B350, &qword_18AFDAB60);
  v47 = &v46[*(v73 + 36)];
  v48 = v85;
  *v47 = v84;
  v47[1] = v48;
  v47[2] = v86;
  v49 = sub_18AFCDBB4();
  v50 = v72;
  sub_18AE9A768(v46, v72, &qword_1EA99B358, &qword_18AFDA9A0);
  v51 = &v50[*(v74 + 36)];
  *v51 = v49;
  v51[1] = v42;
  v52 = v77;
  sub_18AE9A768(v50, v77, &qword_1EA99B360, &qword_18AFDA9A8);
  v53 = v71;
  sub_18AE83A40(v38, v71, &qword_1EA998F70, &qword_18AFD3EB0);
  v54 = v78;
  sub_18AE83A40(v52, v78, &qword_1EA99B360, &qword_18AFDA9A8);
  v55 = v79;
  sub_18AE83A40(v53, v79, &qword_1EA998F70, &qword_18AFD3EB0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B368, &qword_18AFDA9B0);
  sub_18AE83A40(v54, v55 + *(v56 + 48), &qword_1EA99B360, &qword_18AFDA9A8);
  sub_18AE7BA80(v52, &qword_1EA99B360, &qword_18AFDA9A8);
  sub_18AE7BA80(v38, &qword_1EA998F70, &qword_18AFD3EB0);
  sub_18AE7BA80(v54, &qword_1EA99B360, &qword_18AFDA9A8);
  sub_18AE7BA80(v53, &qword_1EA998F70, &qword_18AFD3EB0);
}

uint64_t sub_18AF4169C@<X0>(uint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  sub_18AF41788(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_18AF417EC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_18AF41850;
  a2[1] = v7;
  return result;
}

uint64_t sub_18AF41788(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacLinearProgressIndicator(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF417EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacLinearProgressIndicator(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_18AF41850@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for MacLinearProgressIndicator(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_18AF40DB8(a1, v6, a2);
}

unint64_t sub_18AF418D0()
{
  result = qword_1EA99B370;
  if (!qword_1EA99B370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B378, &qword_18AFDA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B370);
  }

  return result;
}

void sub_18AF41960(uint64_t a1@<X8>)
{
  v130 = a1;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8, &qword_18AFDAAC8);
  MEMORY[0x1EEE9AC00](v148);
  v132 = &v124 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v131 = &v124 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v124 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v143 = &v124 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v142 = &v124 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v151 = &v124 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v141 = &v124 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v140 = &v124 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v128 = &v124 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v127 = &v124 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v139 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v150 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v149 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v124 - v32;
  sub_18AFCDF14();
  v129 = sub_18AFCDF04();
  sub_18AFCDED4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v34 = *MEMORY[0x1E697F468];
  v35 = sub_18AFCC534();
  v36 = *(v35 - 8);
  v136 = *(v36 + 104);
  v146 = v36 + 104;
  v136(v33, v34, v35);
  v37 = sub_18AFCC6F4();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F68, &qword_18AFD86F0);
  *&v33[*(v38 + 52)] = v37;
  *&v33[*(v38 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F70, &qword_18AFD3EB0);
  v40 = &v33[*(v39 + 36)];
  v41 = v154;
  *v40 = v153;
  *(v40 + 1) = v41;
  *(v40 + 2) = v155;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F78, &qword_18AFD3EB8);
  v42 = *(v145 + 36);
  v152 = xmmword_18AFDA9C0;
  *&v33[v42] = xmmword_18AFDA9C0;
  sub_18AFCDD04();
  v44 = v43;
  v46 = v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3B0, &qword_18AFDAAD0);
  v48 = *(v47 + 36);
  v134 = v47;
  v138 = v33;
  v49 = &v33[v48];
  *v49 = 0x4015FDBBE9BBA775;
  *(v49 + 1) = v44;
  *(v49 + 2) = v46;
  v50 = v148;
  *&v33[*(v148 + 36)] = 0x3FF0000000000000;
  v51 = v136;
  v136(v30, v34, v35);
  *&v30[*(v38 + 52)] = sub_18AFCC6F4();
  *&v30[*(v38 + 56)] = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v52 = &v30[*(v39 + 36)];
  v53 = v157;
  *v52 = v156;
  *(v52 + 1) = v53;
  *(v52 + 2) = v158;
  v54 = v145;
  *&v30[*(v145 + 36)] = v152;
  sub_18AFCDD04();
  v55 = *(v47 + 36);
  v137 = v30;
  v56 = &v30[v55];
  *v56 = 0x4012D97C7F3321D2;
  *(v56 + 1) = v57;
  *(v56 + 2) = v58;
  *&v30[*(v50 + 36)] = 0x3FEB851EB851EB85;
  v59 = v147;
  v60 = v34;
  v133 = v34;
  v51(v147, v34, v35);
  v61 = sub_18AFCC6F4();
  v125 = v38;
  *(v59 + *(v38 + 52)) = v61;
  *(v59 + *(v38 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v62 = (v59 + *(v39 + 36));
  v63 = v160;
  *v62 = v159;
  v62[1] = v63;
  v62[2] = v161;
  *(v59 + *(v54 + 36)) = v152;
  sub_18AFCDD04();
  v64 = v134;
  v65 = (v59 + *(v134 + 36));
  *v65 = 0x400F6A7A2955385ELL;
  v65[1] = v66;
  v65[2] = v67;
  v69 = v148;
  v68 = v149;
  *(v59 + *(v148 + 36)) = 0x3FE70A3D70A3D70ALL;
  v70 = v35;
  v135 = v35;
  v51(v68, v60, v35);
  v71 = sub_18AFCC6F4();
  v72 = v125;
  *(v68 + *(v125 + 52)) = v71;
  *(v68 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v73 = v39;
  v126 = v39;
  v74 = (v68 + *(v39 + 36));
  v75 = v163;
  *v74 = v162;
  v74[1] = v75;
  v74[2] = v164;
  v76 = v145;
  *(v68 + *(v145 + 36)) = v152;
  sub_18AFCDD04();
  v77 = (v68 + *(v64 + 36));
  *v77 = 0x400921FB54442D18;
  v77[1] = v78;
  v77[2] = v79;
  *(v68 + *(v69 + 36)) = 0x3FE28F5C28F5C28FLL;
  v80 = v150;
  v81 = v133;
  v51(v150, v133, v70);
  *(v80 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v80 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v82 = (v80 + *(v73 + 36));
  v83 = v166;
  *v82 = v165;
  v82[1] = v83;
  v82[2] = v167;
  *(v80 + *(v76 + 36)) = v152;
  sub_18AFCDD04();
  v84 = (v80 + *(v64 + 36));
  *v84 = 0x4002D97C7F3321D2;
  v84[1] = v85;
  v84[2] = v86;
  *(v80 + *(v69 + 36)) = 0x3FDC28F5C28F5C29;
  v87 = v139;
  v88 = v135;
  v51(v139, v81, v135);
  *(v87 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v87 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v89 = v126;
  v90 = (v87 + *(v126 + 36));
  v91 = v169;
  *v90 = v168;
  v90[1] = v91;
  v90[2] = v170;
  v92 = v76;
  *(v87 + *(v76 + 36)) = v152;
  sub_18AFCDD04();
  v93 = (v87 + *(v64 + 36));
  *v93 = 0x3FF921FB54442D18;
  v93[1] = v94;
  v93[2] = v95;
  *(v87 + *(v69 + 36)) = 0x3FD3333333333333;
  v96 = v127;
  v97 = v133;
  v98 = v136;
  v136(v127, v133, v88);
  *(v96 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v96 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v99 = v89;
  v100 = (v96 + *(v89 + 36));
  v101 = v172;
  *v100 = v171;
  v100[1] = v101;
  v100[2] = v173;
  *(v96 + *(v92 + 36)) = v152;
  sub_18AFCDD04();
  v103 = v134;
  v102 = v135;
  v104 = (v96 + *(v134 + 36));
  *v104 = 0x3FE921FB54442D18;
  v104[1] = v105;
  v104[2] = v106;
  v107 = v148;
  *(v96 + *(v148 + 36)) = 0x3FE4CCCCCCCCCCCDLL;
  v108 = v128;
  v98(v128, v97, v102);
  *(v108 + *(v72 + 52)) = sub_18AFCC6F4();
  *(v108 + *(v72 + 56)) = 256;
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v109 = (v108 + *(v99 + 36));
  v110 = v175;
  *v109 = v174;
  v109[1] = v110;
  v109[2] = v176;
  *(v108 + *(v145 + 36)) = v152;
  sub_18AFCDD04();
  v111 = (v108 + *(v103 + 36));
  *v111 = 0;
  v111[1] = v112;
  v111[2] = v113;
  *(v108 + *(v107 + 36)) = 0x3FF0000000000000;
  v114 = v140;
  sub_18AF426F8(v138, v140);
  v115 = v141;
  sub_18AF426F8(v137, v141);
  sub_18AF426F8(v147, v151);
  v116 = v142;
  sub_18AF426F8(v149, v142);
  sub_18AF426F8(v150, v143);
  v117 = v139;
  sub_18AF426F8(v139, v144);
  v118 = v131;
  sub_18AF426F8(v96, v131);
  v119 = v132;
  sub_18AF426F8(v108, v132);
  v120 = v130;
  sub_18AF426F8(v114, v130);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3B8, &qword_18AFDAAD8);
  sub_18AF426F8(v115, v120 + v121[12]);
  sub_18AF426F8(v151, v120 + v121[16]);
  sub_18AF426F8(v116, v120 + v121[20]);
  v122 = v143;
  sub_18AF426F8(v143, v120 + v121[24]);
  v123 = v144;
  sub_18AF426F8(v144, v120 + v121[28]);
  sub_18AF426F8(v118, v120 + v121[32]);
  sub_18AF426F8(v119, v120 + v121[36]);
  sub_18AF42768(v108);
  sub_18AF42768(v96);
  sub_18AF42768(v117);
  sub_18AF42768(v150);
  sub_18AF42768(v149);
  sub_18AF42768(v147);
  sub_18AF42768(v137);
  sub_18AF42768(v138);
  sub_18AF42768(v119);
  sub_18AF42768(v118);
  sub_18AF42768(v123);
  sub_18AF42768(v122);
  sub_18AF42768(v142);
  sub_18AF42768(v151);
  sub_18AF42768(v141);
  sub_18AF42768(v140);
}

double sub_18AF42520@<D0>(uint64_t *a2@<X8>)
{
  *a2 = sub_18AFCDB44();
  a2[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B398, &qword_18AFDAAB8);
  sub_18AF41960(a2 + *(v4 + 44));
  sub_18AFCDB44();
  sub_18AFCBCC4();
  v5 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A0, &qword_18AFDAAC0) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

void sub_18AF425C0(void *a1@<X8>)
{
  sub_18AFCDD04();
  *a1 = 0;
  a1[1] = v3;
  a1[2] = v4;
}

unint64_t sub_18AF425FC()
{
  result = qword_1EA99B380;
  if (!qword_1EA99B380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B388, &qword_18AFDAA60);
    sub_18AF42688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B380);
  }

  return result;
}

unint64_t sub_18AF42688()
{
  result = qword_1EA99B390;
  if (!qword_1EA99B390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B390);
  }

  return result;
}

uint64_t sub_18AF426F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8, &qword_18AFDAAC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF42768(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3A8, &qword_18AFDAAC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18AF427D0()
{
  result = qword_1EA99B3C0;
  if (!qword_1EA99B3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B3A0, &qword_18AFDAAC0);
    sub_18AF4285C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B3C0);
  }

  return result;
}

unint64_t sub_18AF4285C()
{
  result = qword_1EA99B3C8;
  if (!qword_1EA99B3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B3D0, &unk_18AFDAAE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B3C8);
  }

  return result;
}

uint64_t type metadata accessor for MacSwitchSliderKnob(uint64_t a1)
{
  result = qword_1EA99B3D8;
  if (!qword_1EA99B3D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18AF42934(uint64_t a1)
{
  sub_18AF0B7D8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_18AF429DC@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a1;
  v96 = a3;
  v5 = sub_18AFCDD64();
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v90 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCDAD4();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v82 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B350, &qword_18AFDAB60);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v68 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3E8, &qword_18AFDAB68);
  v89 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v84 = &v68 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F0, &unk_18AFDAB70) - 8;
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v86 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99AA68, &unk_18AFD8B28);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v68 - v17;
  v75 = sub_18AFCBB34();
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v20 = (&v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v73 = &v68 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F8, &unk_18AFDAB80);
  v28 = v27 - 8;
  MEMORY[0x1EEE9AC00](v27);
  v79 = &v68 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v68 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v72 = &v68 - v34;
  v70 = *MEMORY[0x1E697F468];
  v35 = v70;
  v36 = sub_18AFCC534();
  v37 = *(v36 - 8);
  v69 = *(v37 + 104);
  v71 = v37 + 104;
  v69(v26, v35, v36);
  v38 = a2;
  v39 = *a2;
  type metadata accessor for MacSwitchSliderKnob(0);
  sub_18AED2E48(v20);
  v40 = a2[1];
  v76 = v40;
  v41 = sub_18AF1DD10(v20, v18);
  v42.n128_f64[0] = (*(v74 + 8))(v20, v75, v41);
  sub_18AEF0D88(v26, v42);
  v43 = 1.0;
  if ((v39 == 3) | v40 & 1)
  {
    v44 = 0.0;
  }

  else
  {
    v44 = 1.0;
  }

  sub_18AE9A768(v18, v32, qword_1EA99AA68, &unk_18AFD8B28);
  *&v32[*(v28 + 44)] = v44;
  v45 = v72;
  sub_18AE9A768(v32, v72, &qword_1EA99B3F8, &unk_18AFDAB80);
  v46 = v73;
  v69(v73, v70, v36);
  LODWORD(v75) = *a2;
  sub_18AFCBD04();
  v48 = v47;
  v50 = v49;
  v51 = v38[2];
  v52 = sub_18AFCCD74();
  v53 = MEMORY[0x1E6981998];
  v54 = v80;
  sub_18AF4350C(v46, v80, MEMORY[0x1E6981998]);
  v55 = v81;
  *(v54 + *(v81 + 52)) = v52;
  *(v54 + *(v55 + 56)) = 256;
  v56 = v82;
  sub_18AF46584(v51, v48, v50, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99AA28, &unk_18AFD8B00);
  sub_18AFCDD34();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AF4350C(v46, v77, v53);
  sub_18AEDC310(v57);
  sub_18AFCDD44();
  v58 = v90;
  sub_18AFCDD54();
  sub_18AE95F54(&qword_1EA99B400, &qword_1EA99B350, &qword_18AFDAB60, MEMORY[0x1E697DB78]);
  v59 = v84;
  sub_18AFCCB34();
  (*(v94 + 8))(v58, v95);
  (*(v92 + 8))(v56, v93);
  sub_18AE7BA80(v54, &qword_1EA99B350, &qword_18AFDAB60);
  sub_18AEF0D88(v46, v60);
  if (!((v75 == 3) | v76 & 1))
  {
    v43 = 0.0;
  }

  v61 = v85;
  (*(v89 + 32))(v85, v59, v91);
  v62 = v86;
  *(v61 + *(v87 + 44)) = v43;
  sub_18AEA6DEC(v61, v62);
  v63 = v79;
  sub_18AF43574(v45, v79);
  v64 = v88;
  sub_18AEA6E5C(v62, v88);
  v65 = v96;
  sub_18AF43574(v63, v96);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B408, &qword_18AFDAB90);
  sub_18AEA6E5C(v64, v65 + *(v66 + 48));
  sub_18AEA6ECC(v62);
  sub_18AE7BA80(v45, &qword_1EA99B3F8, &unk_18AFDAB80);
  sub_18AEA6ECC(v64);
  return sub_18AE7BA80(v63, &qword_1EA99B3F8, &unk_18AFDAB80);
}

uint64_t sub_18AF43310@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = sub_18AFCDB44();
  v8 = v7;
  sub_18AF4350C(v2, &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MacSwitchSliderKnob);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  result = sub_18AF43428(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = sub_18AF4348C;
  a2[3] = v10;
  return result;
}

uint64_t sub_18AF43428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MacSwitchSliderKnob(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AF4348C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for MacSwitchSliderKnob(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_18AF429DC(a1, v6, a2);
}

uint64_t sub_18AF4350C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AF43574(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B3F8, &unk_18AFDAB80);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_18AF435E4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_18AF43F08(319, &qword_1EA998418, MEMORY[0x1E697F610]);
    if (v2 <= 0x3F)
    {
      sub_18AEB1A48(319, &qword_1EA997C38, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_18AF43F08(319, &qword_1EA9986F8, MEMORY[0x1E697DBD0]);
        if (v4 <= 0x3F)
        {
          sub_18AEB1A48(319, &qword_1EA997C28, &type metadata for ControlContext);
          if (v5 <= 0x3F)
          {
            sub_18AEB1A48(319, &qword_1EA997C40, &type metadata for MacSizeClass);
            if (v6 <= 0x3F)
            {
              sub_18AF43F08(319, &qword_1EA997DB8, MEMORY[0x1E697DC30]);
              if (v7 <= 0x3F)
              {
                sub_18AEB1A48(319, &qword_1EA997C48, &type metadata for ButtonBorderShape);
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

uint64_t sub_18AF437A4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v31 = *(a3 + 16);
  v5 = *(v31 - 8);
  v6 = *(v5 + 84);
  v7 = *(sub_18AFCC5C4() - 8);
  v8 = *(v7 + 64);
  if (v8 <= 8)
  {
    v8 = 8;
  }

  v32 = v8;
  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(sub_18AFCBB34() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  if (!a2)
  {
    return 0;
  }

  v16 = *(v7 + 80) & 0xF8 | 7;
  if (v9 >= a2)
  {
    goto LABEL_39;
  }

  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = ((v13 + ((v18 + ((v11 + ((v17 + ((v32 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v19 <= 3)
  {
    v20 = ((a2 - v9 + 255) >> 8) + 1;
  }

  else
  {
    v20 = 2;
  }

  if (v20 >= 0x10000)
  {
    v21 = 4;
  }

  else
  {
    v21 = 2;
  }

  if (v20 < 0x100)
  {
    v21 = 1;
  }

  if (v20 >= 2)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = *&a1[v19];
      if (!*&a1[v19])
      {
        goto LABEL_39;
      }
    }

    else
    {
      v23 = *&a1[v19];
      if (!v23)
      {
        goto LABEL_39;
      }
    }
  }

  else if (!v22 || (v23 = a1[v19]) == 0)
  {
LABEL_39:
    v27 = &a1[v14 + 1] & ~v14;
    if (v6 < 0xFE)
    {
      v29 = *(((v27 + v15 + v16) & ~v16) + v32);
      if (v29 >= 2)
      {
        return (v29 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v28 = *(v5 + 48);

      return v28(v27, v6, v31);
    }
  }

  v25 = v19 > 3;
  if (v19 <= 3)
  {
    v26 = (v23 - 1) << (8 * v19);
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v30 = *a1;
  }

  else
  {
    v30 = *a1;
  }

  return v9 + (v30 | v26) + 1;
}

void sub_18AF43AF0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v5 = *(v32 - 8);
  v33 = v5;
  v6 = *(v5 + 84);
  v7 = *(sub_18AFCC5C4() - 8);
  if (*(v7 + 64) <= 8uLL)
  {
    v8 = 8;
  }

  else
  {
    v8 = *(v7 + 64);
  }

  if (v6 <= 0xFE)
  {
    v9 = 254;
  }

  else
  {
    v9 = v6;
  }

  v10 = *(sub_18AFCBB34() - 8);
  if (*(v10 + 64) <= 8uLL)
  {
    v11 = 8;
  }

  else
  {
    v11 = *(v10 + 64);
  }

  v12 = *(sub_18AFCBB54() - 8);
  if (*(v12 + 64) <= 8uLL)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v12 + 64);
  }

  v14 = *(v5 + 80);
  v15 = *(v5 + 64);
  v16 = *(v7 + 80) & 0xF8 | 7;
  v17 = *(v10 + 80) & 0xF8 | 7;
  v18 = *(v12 + 80) & 0xF8 | 7;
  v19 = ((v13 + ((v18 + ((v11 + ((v17 + ((v8 + ((v15 + v16 + ((v14 + 1) & ~v14)) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v17) + 24) & 0xFFFFFFFFFFFFFFF8) + 9) & ~v18) + 24) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (v19 <= 3)
    {
      v20 = ((a3 - v9 + 255) >> 8) + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (v9 >= a2)
  {
    if (v22 > 1)
    {
      if (v22 != 2)
      {
        *&a1[v19] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_44;
      }

      *&a1[v19] = 0;
    }

    else if (v22)
    {
      a1[v19] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_44;
    }

    if (!a2)
    {
      return;
    }

LABEL_44:
    v25 = &a1[v14 + 1] & ~v14;
    if (v6 < 0xFE)
    {
      v27 = ((v25 + v15 + v16) & ~v16);
      if (a2 > 0xFE)
      {
        v28 = (v8 + 1);
        if (v28 <= 3)
        {
          v29 = ~(-1 << (8 * (v8 + 1)));
        }

        else
        {
          v29 = -1;
        }

        if (v8 != -1)
        {
          v30 = v29 & (a2 - 255);
          if (v28 <= 3)
          {
            v31 = v28;
          }

          else
          {
            v31 = 4;
          }

          bzero(v27, v28);
          if (v31 > 2)
          {
            if (v31 == 3)
            {
              *v27 = v30;
              v27[2] = BYTE2(v30);
            }

            else
            {
              *v27 = v30;
            }
          }

          else if (v31 == 1)
          {
            *v27 = v30;
          }

          else
          {
            *v27 = v30;
          }
        }
      }

      else
      {
        v27[v8] = -a2;
      }
    }

    else
    {
      v26 = *(v33 + 56);

      v26(v25, a2, v6, v32);
    }

    return;
  }

  v23 = ~v9 + a2;
  bzero(a1, v19);
  if (v19 <= 3)
  {
    v24 = (v23 >> 8) + 1;
  }

  else
  {
    v24 = 1;
  }

  if (v19 <= 3)
  {
    *a1 = v23;
    if (v22 > 1)
    {
LABEL_32:
      if (v22 == 2)
      {
        *&a1[v19] = v24;
      }

      else
      {
        *&a1[v19] = v24;
      }

      return;
    }
  }

  else
  {
    *a1 = v23;
    if (v22 > 1)
    {
      goto LABEL_32;
    }
  }

  if (v22)
  {
    a1[v19] = v24;
  }
}

void sub_18AF43F08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_18AFCBB64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_18AF43FA0@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18AF44000@<X0>(_BYTE *a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _BYTE *a6@<X8>)
{
  *a6 = *a1;
  v9 = type metadata accessor for UniversalTextField(0, a4, a5, a3);
  a2();
  v10 = v9[10];
  *&a6[v10] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA997E98, &qword_18AFCFC30);
  swift_storeEnumTagMultiPayload();
  v11 = &a6[v9[11]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  sub_18AE9A768(a3, &a6[v9[12]], &qword_1EA9986E8, &qword_18AFD2400);
  v12 = &a6[v9[13]];
  *v12 = swift_getKeyPath();
  v12[8] = 0;
  v13 = &a6[v9[14]];
  *v13 = swift_getKeyPath();
  v13[8] = 0;
  v14 = v9[15];
  *&a6[v14] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  swift_storeEnumTagMultiPayload();
  v15 = &a6[v9[16]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &a6[v9[17]];
  result = swift_getKeyPath();
  *v16 = result;
  v16[8] = 0;
  return result;
}

uint64_t sub_18AF44184@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_18AFCC474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998148, &qword_18AFD12E0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_18AE83A40(v2 + *(a1 + 48), &v15 - v10, &qword_1EA998148, &qword_18AFD12E0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_18AFCBB34();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_18AFCE024();
    v14 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_18AF44388(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[8];
  }

  return v8 & 1;
}

unint64_t sub_18AF444D8(uint64_t a1)
{
  v3 = sub_18AFCC474();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if ((*(v7 + 8) & 1) == 0)
  {

    sub_18AFCE024();
    v9 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v8, 0);
    (*(v4 + 8))(v6, v3);
    v8 = v11[1];
  }

  return (v8 >> 1) & 1;
}

uint64_t sub_18AF44628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_18AFCC474();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA997D30, &qword_18AFD3310);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_18AFCBB54();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  sub_18AE83A40(v2 + *(a1 + 60), v9, qword_1EA997D30, &qword_18AFD3310);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = v4;
    v15 = v22;
  }

  else
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();

    v15 = v22;
    (*(v22 + 8))(v6, v4);
    v14 = v4;
  }

  v17 = v2 + *(v23 + 68);
  v18 = *v17;
  if (*(v17 + 8) == 1)
  {
    v25 = *v17;
  }

  else
  {

    sub_18AFCE024();
    v19 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    sub_18AE9B234(v18, 0);
    (*(v15 + 8))(v6, v14);
    LOBYTE(v18) = v25;
  }

  v20 = v24;
  (*(v11 + 32))(v24, v13, v10);
  result = type metadata accessor for ResolvedTextFieldBorderShape(0);
  *(v20 + *(result + 20)) = v18;
  return result;
}

uint64_t sub_18AF44984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v68 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v67);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_18AFCC474();
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4A0, &unk_18AFDAC18);
  v8 = sub_18AFCC044();
  v75 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v71 = &v62 - v9;
  v10 = sub_18AFCC044();
  v76 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v62 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B48, &unk_18AFD2F90);
  v12 = MEMORY[0x1E697DDC8];
  sub_18AE95F54(&qword_1EA998B50, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDC8]);
  v74 = sub_18AFCBDC4();
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v72 = &v62 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4A8, &qword_18AFDAC28);
  v14 = sub_18AFCC044();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v70 = &v62 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58, &qword_18AFDA3C0);
  sub_18AE95F54(&qword_1EA998B60, &qword_1EA998B58, &qword_18AFDA3C0, v12);
  v80 = sub_18AFCBDC4();
  v79 = v14;
  v16 = sub_18AFCC624();
  v83 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v81 = &v62 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B128, &qword_18AFDA3D0);
  v85 = v16;
  v87 = sub_18AFCC044();
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v62 - v20;
  v69 = a1;
  v21 = *(a1 + 24);
  v22 = v89;
  v107 = sub_18AF45738(v3, v89, v21);
  v23 = v71;
  sub_18AF45788(&v107, v22, MEMORY[0x1E69815C0], v21, MEMORY[0x1E6981568]);

  sub_18AFCC844();
  v24 = sub_18AE95F54(&qword_1EA99B4B0, &qword_1EA99B4A0, &unk_18AFDAC18, MEMORY[0x1E6980AC0]);
  v105 = v21;
  v106 = v24;
  WitnessTable = swift_getWitnessTable();
  v26 = v73;
  sub_18AFCCC24();
  (*(v75 + 8))(v23, v8);
  v103 = WitnessTable;
  v104 = MEMORY[0x1E697E5D8];
  v27 = swift_getWitnessTable();
  v28 = v72;
  sub_18AFC385C(1, 0, v10, v27, 2.0, 4.0, v72);
  v29 = v69;
  v30 = v10;
  v31 = v70;
  (*(v76 + 8))(v26, v30);
  v90 = v89;
  v91 = v21;
  v92 = v3;
  sub_18AFCDB44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4B8, &qword_18AFDAC30);
  v101 = sub_18AE95F54(&qword_1EA998B78, &qword_1EA998B48, &unk_18AFD2F90, MEMORY[0x1E697DDD0]);
  v102 = v27;
  v32 = v74;
  v33 = swift_getWitnessTable();
  sub_18AF46324();
  sub_18AFCCA64();
  (*(v77 + 8))(v28, v32);
  v34 = sub_18AF44388(v29);
  v35 = 0;
  if (v34)
  {
    v36 = &v3[*(v29 + 56)];
    v37 = *v36;
    if (v36[8] != 1)
    {
      v38 = v34;

      sub_18AFCE024();
      v39 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v40 = v62;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v37, 0);
      (*(v63 + 8))(v40, v64);
      v34 = v38;
      LOBYTE(v37) = v107;
    }

    v35 = qword_18AFDADE0[v37];
  }

  v41 = v34 ^ 1;
  v42 = sub_18AF44388(v29);
  if (v42)
  {
    v43 = &v3[*(v29 + 56)];
    v44 = *v43;
    if (v43[8] != 1)
    {

      sub_18AFCE024();
      v47 = sub_18AFCC7D4();
      sub_18AFCBA64();

      v48 = v62;
      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AE9B234(v44, 0);
      (*(v63 + 8))(v48, v64);
      LOBYTE(v44) = v107;
    }

    v46 = v81;
    v45 = qword_18AFDAE20[v44];
  }

  else
  {
    v45 = 0;
    v46 = v81;
  }

  v49 = sub_18AE95F54(&qword_1EA99B4E0, &qword_1EA99B4A8, &qword_18AFDAC28, MEMORY[0x1E697F940]);
  v99 = v33;
  v100 = v49;
  v50 = v79;
  v51 = swift_getWitnessTable();
  sub_18AFC2B18(v35, v41 & 1, v45, (v42 & 1) == 0, v50, v51, v46);
  (*(v78 + 8))(v31, v50);
  if (sub_18AF44388(v29))
  {
    v52 = *MEMORY[0x1E697F468];
    v53 = sub_18AFCC534();
    (*(*(v53 - 8) + 104))(v65, v52, v53);
    sub_18AF46488(&qword_1EA998A48, MEMORY[0x1E6981998], MEMORY[0x1E6981990]);
  }

  else
  {
    sub_18AF44628(v29, v66);
    sub_18AF46488(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape, &unk_18AFE2238);
  }

  v107 = sub_18AFCD4E4();
  v97 = sub_18AE95F54(&qword_1EA998B88, &qword_1EA998B58, &qword_18AFDA3C0, MEMORY[0x1E697DDD0]);
  v98 = v51;
  v95 = swift_getWitnessTable();
  v96 = v51;
  v54 = v85;
  v55 = swift_getWitnessTable();
  sub_18AF3D418();
  v56 = v82;
  sub_18AFCCAC4();

  (*(v83 + 8))(v46, v54);
  v57 = sub_18AE95F54(&qword_1EA99B198, &qword_1EA99B128, &qword_18AFDA3D0, MEMORY[0x1E697FD58]);
  v93 = v55;
  v94 = v57;
  v58 = v87;
  swift_getWitnessTable();
  v59 = v84;
  sub_18AEADA5C();
  v60 = *(v86 + 8);
  v60(v56, v58);
  sub_18AEADA5C();
  return (v60)(v59, v58);
}

uint64_t sub_18AF45738(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  result = sub_18AFCCD64();
  if (v3 == 1)
  {
    v5 = sub_18AFCCDA4();

    return v5;
  }

  return result;
}

uint64_t sub_18AF45788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v18 = a2;
  v7 = sub_18AFCE074();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - v9;
  v11 = sub_18AFCC7C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, v7, v13);
  sub_18AF464D0(v10, a3, v15);
  MEMORY[0x18CFEBFA0](v15, v18, v11, v19);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_18AF45938@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F10, &qword_18AFD3B90);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v58 - v8;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998F08, &qword_18AFDAC50);
  MEMORY[0x1EEE9AC00](v63);
  v10 = &v58 - v9;
  v60 = sub_18AFCC474();
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_18AFCBB34();
  v64 = *(v13 - 8);
  v65 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v67 = (&v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA998EE8, &qword_18AFD3B80);
  MEMORY[0x1EEE9AC00](v72);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v66 = &v58 - v18;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4F0, &unk_18AFDAC58);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v58 - v19;
  v20 = type metadata accessor for ResolvedTextFieldBorderShape(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v73 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v58 - v23;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99B1D0, &unk_18AFDAC40);
  MEMORY[0x1EEE9AC00](v70);
  v26 = &v58 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B4D0, &qword_18AFDAC38);
  v74 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v69 = &v58 - v28;
  v30 = type metadata accessor for UniversalTextField(0, a2, a3, v29);
  if (sub_18AF44388(v30))
  {
    v31 = *(v74 + 56);

    return v31(a4, 1, 1, v27);
  }

  else
  {
    v58 = v27;
    if (sub_18AF444D8(v30))
    {
      sub_18AF44628(v30, v24);
      sub_18AF3CF18(*a1, v26);
      sub_18AEDF6B0(v24);
      sub_18AE83A40(v26, v71, qword_1EA99B1D0, &unk_18AFDAC40);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0, &unk_18AFDAC40, &unk_18AFE35F0);
      sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8, &qword_18AFD3B80, &unk_18AFE35F0);
      v33 = v69;
      sub_18AFCC614();
      v34 = v33;
      sub_18AE7BA80(v26, qword_1EA99B1D0, &unk_18AFDAC40);
      v35 = a4;
      v36 = v58;
    }

    else
    {
      sub_18AF44628(v30, v73);
      v37 = *a1;
      v38 = v67;
      sub_18AF44184(v30, v67);
      v39 = &a1[*(v30 + 44)];
      v40 = *v39;
      if (v39[8] != 1)
      {

        sub_18AFCE024();
        v41 = sub_18AFCC7D4();
        sub_18AFCBA64();

        v38 = v67;
        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v40, 0);
        (*(v59 + 8))(v12, v60);
        LOBYTE(v40) = v78;
      }

      v42 = &a1[*(v30 + 64)];
      v43 = *v42;
      if (v42[8] != 1)
      {

        sub_18AFCE024();
        v44 = sub_18AFCC7D4();
        sub_18AFCBA64();

        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AE9B234(v43, 0);
        (*(v59 + 8))(v12, v60);
        LOBYTE(v43) = v78;
      }

      v36 = v58;
      v45 = sub_18AEF3BD4(v38, v37);
      v46 = v62;
      sub_18AEDF64C(v73, v62);
      v47 = v61;
      *(v46 + *(v61 + 52)) = v45;
      *(v46 + *(v47 + 56)) = 256;
      v48 = sub_18AEF3D90(v40 & 1, v38);
      if (v43)
      {
        v49 = 0;
      }

      else
      {
        v49 = 2;
      }

      sub_18AFCBB94();
      sub_18AEDF64C(v46, v10);
      v50 = v63;
      sub_18AE9A768(v46, &v10[*(v63 + 84)], &qword_1EA998F10, &qword_18AFD3B90);
      *&v10[v50[18]] = v48;
      v10[v50[17]] = v49;
      v51 = &v10[v50[19]];
      v52 = v76;
      *v51 = v75;
      *(v51 + 1) = v52;
      *(v51 + 4) = v77;
      v10[v50[20]] = 1;
      if (v40)
      {
        sub_18AFCCDB4();
        v53 = sub_18AFCCDA4();
      }

      else
      {
        v53 = sub_18AFCCD74();
      }

      v35 = a4;
      sub_18AFCBB94();
      (*(v64 + 8))(v38, v65);
      sub_18AEDF6B0(v73);
      sub_18AEDF64C(v10, v16);
      v54 = v72;
      sub_18AE9A768(v10, &v16[*(v72 + 84)], &qword_1EA998F08, &qword_18AFDAC50);
      *&v16[v54[18]] = v53;
      v16[v54[17]] = v49;
      v55 = &v16[v54[19]];
      v56 = v79;
      *v55 = v78;
      *(v55 + 1) = v56;
      *(v55 + 4) = v80;
      v16[v54[20]] = 1;
      v57 = v66;
      sub_18AE9A768(v16, v66, &qword_1EA998EE8, &qword_18AFD3B80);
      sub_18AE83A40(v57, v71, &qword_1EA998EE8, &qword_18AFD3B80);
      swift_storeEnumTagMultiPayload();
      sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0, &unk_18AFDAC40, &unk_18AFE35F0);
      sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8, &qword_18AFD3B80, &unk_18AFE35F0);
      v34 = v69;
      sub_18AFCC614();
      sub_18AE7BA80(v57, &qword_1EA998EE8, &qword_18AFD3B80);
    }

    sub_18AE9A768(v34, v35, &qword_1EA99B4D0, &qword_18AFDAC38);
    return (*(v74 + 56))(v35, 0, 1, v36);
  }
}

unint64_t sub_18AF46324()
{
  result = qword_1EA99B4C0;
  if (!qword_1EA99B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4B8, &qword_18AFDAC30);
    sub_18AF463A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4C0);
  }

  return result;
}

unint64_t sub_18AF463A8()
{
  result = qword_1EA99B4C8;
  if (!qword_1EA99B4C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99B4D0, &qword_18AFDAC38);
    sub_18AE95F54(&qword_1EA99B4D8, qword_1EA99B1D0, &unk_18AFDAC40, &unk_18AFE35F0);
    sub_18AE95F54(&qword_1EA998EE0, &qword_1EA998EE8, &qword_18AFD3B80, &unk_18AFE35F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4C8);
  }

  return result;
}

uint64_t sub_18AF46488(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_18AF464D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_18AFCE074();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t sub_18AF46584(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = type metadata accessor for GlassMaterialProvider(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56A5F0 != -1)
  {
    v24 = v15;
    swift_once();
    v15 = v24;
  }

  v18 = __swift_project_value_buffer(v15, qword_1ED56A5F8);
  sub_18AE7AF6C(v18, v17, type metadata accessor for GlassMaterialProvider.Configuration);
  v19 = *(v17 + 5);
  if ((v19 & 1) == 0 || !((v19 >> 18) & 1 | a1 & 1))
  {
    v20 = 262145;
    if ((v19 >> 18) & 1 | a1 & 1)
    {
      v20 = 1;
    }

    *(v17 + 5) = v20 | v19;
  }

  if (a4)
  {
    v21 = 0;
  }

  else
  {
    v21 = a2;
  }

  if (a4)
  {
    v22 = 0;
  }

  else
  {
    v22 = a3;
  }

  *(v17 + 2) = v21;
  *(v17 + 3) = v22;
  v17[32] = a4 & 1;
  sub_18AE7AF6C(v17, v13, type metadata accessor for GlassMaterialProvider.Configuration);
  sub_18AE7AF6C(v13, v10, type metadata accessor for GlassMaterialProvider);
  sub_18AE8C0E8(&qword_1ED56A5E8, type metadata accessor for GlassMaterialProvider, &protocol conformance descriptor for GlassMaterialProvider);
  sub_18AE8C0E8(&qword_1ED56A5E0, type metadata accessor for GlassMaterialProvider.Resolved, &protocol conformance descriptor for GlassMaterialProvider.Resolved);
  sub_18AFCD5E4();
  sub_18AE8BFB4(v13, type metadata accessor for GlassMaterialProvider);
  return sub_18AE8BFB4(v17, type metadata accessor for GlassMaterialProvider.Configuration);
}

uint64_t sub_18AF4682C(unsigned __int8 a1, char a2)
{
  v4 = sub_18AFCCCF4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69814D8], v5);
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else if (a1 != 2)
  {
    if (a2)
    {
      goto LABEL_7;
    }

LABEL_8:
    v8 = sub_18AFCCF54();
    goto LABEL_9;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_7:
  v8 = sub_18AFCCF44();
LABEL_9:
  v10[1] = v8;
  return sub_18AFCBCD4();
}

uint64_t sub_18AF46998(uint64_t a1)
{
  v1 = a1;
  sub_18AFCCD94();
  if (v1 == 1)
  {
    sub_18AFCCDA4();
  }

  return sub_18AFCBCD4();
}

uint64_t sub_18AF46A54(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v7 = sub_18AFCC5C4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = sub_18AFCBB34();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, a1, v14, v16);
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != *MEMORY[0x1E697DBB8])
  {
    if (v19 == *MEMORY[0x1E697DBA8])
    {
      (*(v8 + 16))(v13, a2, v7);
      v20 = (*(v8 + 88))(v13, v7);
      if (v20 != *MEMORY[0x1E697F600] && v20 != *MEMORY[0x1E697F608])
      {
        (*(v8 + 8))(v13, v7);
      }

      sub_18AFCCD94();
      goto LABEL_14;
    }

    (*(v15 + 8))(v18, v14);
  }

  (*(v8 + 16))(v10, a2, v7);
  v21 = (*(v8 + 88))(v10, v7);
  if (v21 != *MEMORY[0x1E697F600] && v21 != *MEMORY[0x1E697F608])
  {
    (*(v8 + 8))(v10, v7);
  }

  sub_18AFCCD64();
LABEL_14:
  v22 = sub_18AFCCDA4();

  return v22;
}

void sub_18AF46D84(_DWORD *a2@<X8>)
{
  if (!sub_18AFCC1C4())
  {
    sub_18AFCCCD4();
  }

  sub_18AFCCDC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  *a2 = v4;
  a2[1] = v6;
  a2[2] = v8;
  a2[3] = v10;
}

unint64_t sub_18AF46E18()
{
  result = qword_1EA99B4F8;
  if (!qword_1EA99B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B4F8);
  }

  return result;
}

uint64_t GlassMaterialProvider.Size.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | v2)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = (*&v1 | v2) != 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);
    if (v4 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v4;
    }

    MEMORY[0x18CFED640](*&v6);
    if (v5 == 0.0)
    {
      v7 = 0.0;
    }

    else
    {
      v7 = v5;
    }

    return MEMORY[0x18CFED640](*&v7);
  }
}

uint64_t GlassMaterialProvider.Size.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | *&v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (*&v1 | *&v2) != 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    if (v1 == 0.0)
    {
      v5 = 0.0;
    }

    else
    {
      v5 = v1;
    }

    MEMORY[0x18CFED640](*&v5);
    if (v2 == 0.0)
    {
      v6 = 0.0;
    }

    else
    {
      v6 = v2;
    }

    MEMORY[0x18CFED640](*&v6);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF4702C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 > 1uLL)
    {
      if (*&v1 ^ 2 | *&v2)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (*&v1 | *&v2) != 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AF470F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 16) == 1)
  {
    if (v2 > 1)
    {
      if (v2 ^ 2 | v3)
      {
        v4 = 4;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = (v2 | v3) != 0;
    }

    return MEMORY[0x18CFED610](v4);
  }

  else
  {
    v5 = *v1;
    v6 = *(v1 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v5, v6);
  }
}

uint64_t sub_18AF471B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_18AFCE294();
  if (v4 == 1)
  {
    if (*&v2 > 1uLL)
    {
      if (*&v2 ^ 2 | *&v3)
      {
        v5 = 4;
      }

      else
      {
        v5 = 2;
      }
    }

    else
    {
      v5 = (*&v2 | *&v3) != 0;
    }

    MEMORY[0x18CFED610](v5);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v2, v3);
  }

  return sub_18AFCE2E4();
}

void GlassMaterialProvider.Subvariant.init(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000018AFE4720 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000018AFE4740 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 2;
  }

  else if (a1 == 0x65726373656D6F68 && a2 == 0xEF65736F6C436E65 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 3;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 4;
  }

  else if (a1 == 0x7753726574736F70 && a2 == 0xEE00726568637469 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 5;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018AFE4760 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 6;
  }

  else if (a1 == 0x6341726F73727563 && a2 == 0xEF79726F73736563 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 7;
  }

  else if (a1 == 0xD000000000000010 && 0x800000018AFE4780 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 8;
  }

  else if (a1 == 6447476 && a2 == 0xE300000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 9;
  }

  else if (a1 == 0x6B63617274 && a2 == 0xE500000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 10;
  }

  else if (a1 == 0xD000000000000011 && 0x800000018AFE47A0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 11;
  }

  else if (a1 == 0x6569467972746E65 && a2 == 0xEA0000000000646CLL || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 12;
  }

  else if (a1 == 0x6C53656D756C6F76 && a2 == 0xEC00000072656469 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 13;
  }

  else if (a1 == 0x7A696D6F74737563 && a2 == 0xEE00746565685365 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 14;
  }

  else if (a1 == 0x6361466863746177 && a2 == 0xEF736F746F685065 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 15;
  }

  else if (a1 == 0xD000000000000013 && 0x800000018AFE47C0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000018AFE47E0 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 17;
  }

  else if (a1 == 0xD000000000000012 && 0x800000018AFE4800 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 18;
  }

  else if (a1 == 0xD000000000000015 && 0x800000018AFE4820 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 19;
  }

  else if (a1 == 0x7361506863746177 && a2 == 0xED000065646F6373 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 20;
  }

  else if (a1 == 0xD000000000000017 && 0x800000018AFE4840 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 21;
  }

  else if (a1 == 1970169197 && a2 == 0xE400000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 22;
  }

  else if (a1 == 0x616D536863746177 && a2 == 0xEF6B636174537472 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 23;
  }

  else if (a1 == 0xD00000000000001ELL && 0x800000018AFE4860 == a2 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 24;
  }

  else if (a1 == 0x70696E5369726973 && a2 == 0xEB00000000746570 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 25;
  }

  else if (a1 == 0x696C536D72616C61 && a2 == 0xEB00000000726564 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 26;
  }

  else if (a1 == 0x6E6769537370616DLL && a2 == 0xE800000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 27;
  }

  else if (a1 == 0x7465656873 && a2 == 0xE500000000000000 || (sub_18AFCE264() & 1) != 0)
  {

    v6 = 28;
  }

  else
  {
    if (a1 == 0x736567617373656DLL && a2 == 0xEF6B636162706154)
    {
    }

    else
    {
      v7 = sub_18AFCE264();

      if ((v7 & 1) == 0)
      {
        v6 = 30;
        goto LABEL_5;
      }
    }

    v6 = 29;
  }

LABEL_5:
  *a3 = v6;
}

uint64_t sub_18AF47C10()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v4);
  v1 = _s13ConfigurationV3MixVMa(0);
  GlassMaterialProvider.Configuration.hash(into:)(v4);
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x18CFED640](*&v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47C9C(uint64_t a1, uint64_t a2)
{
  GlassMaterialProvider.Configuration.hash(into:)(a1);
  GlassMaterialProvider.Configuration.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 24));
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  return MEMORY[0x18CFED640](*&v5);
}

uint64_t sub_18AF47D00(uint64_t a1, uint64_t a2)
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v6);
  GlassMaterialProvider.Configuration.hash(into:)(v6);
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x18CFED640](*&v4);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47DE4(unint64_t a1)
{
  v2 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 >> 62)
  {
    if (a1 >> 62 == 2)
    {
      v6 = v3;
      v7 = swift_projectBox();
      sub_18AE7AFD4(v7, v5, _s13ConfigurationV3MixVMa);
      if (sub_18AF47DE4(*v5))
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_18AF47DE4(*(v5 + *(v6 + 20)));
      }

      sub_18AF4BBC8(v5, _s13ConfigurationV3MixVMa);
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t sub_18AF47EE4()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AE90EE8(v3, v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47F34(uint64_t a1)
{
  v2 = *v1;
  sub_18AFCE294();
  sub_18AE90EE8(v4, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF47F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x100000000) != 0)
  {
    sub_18AFCE2B4();
    if ((a3 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if ((a3 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  sub_18AFCE2B4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AF4800C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  sub_18AFCE294();
  sub_18AF47F84(v6, v1 | (v2 << 32), v3 | (v4 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF480B0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = v1[2];
  v5 = *(v1 + 12);
  sub_18AFCE294();
  sub_18AF47F84(v7, v2 | (v3 << 32), v4 | (v5 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4811C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 12))
  {
    if (*(a2 + 12))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_18AF48184()
{
  v1 = *(v0 + 16);
  sub_18AFCE294();
  sub_18AFCE2B4();
  if (v1 != 1)
  {
    sub_18AFCDCD4();
  }

  return sub_18AFCE2E4();
}

void sub_18AF481FC(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    sub_18AFCE2B4();

    sub_18AFCDCD4();
  }
}

uint64_t sub_18AF48278(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_18AFCE294();
  sub_18AFCE2B4();
  if (v2 != 1)
  {
    sub_18AFCDCD4();
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AF482EC(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return (*(a2 + 16) & 1) == 0 && (sub_18AFCDCB4() & 1) != 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

__n128 GlassMaterialProvider.Configuration.size.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 GlassMaterialProvider.Configuration.size.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t sub_18AF48428@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v4 = v1 + *(result + 52);
  if (*(v4 + 16))
  {
    if (*v1 == 0xC000000000000008 && ((v5 = *(v1 + 9), (v5 - 1) < 2) || v5 == 20))
    {
      *a1 = xmmword_18AFDAF50;
    }

    else
    {
      if (qword_1ED56A8B8 != -1)
      {
        result = swift_once();
      }

      v7 = qword_1ED56C8E0;
      if (qword_1ED56A7E8 != -1)
      {
        result = swift_once();
      }

      v8 = qword_1ED56C4C0;
      *a1 = v7;
      *(a1 + 8) = v8;
    }
  }

  else
  {
    v6 = *(v1 + *(result + 52) + 8);
    *a1 = *v4;
    *(a1 + 8) = v6;
  }

  return result;
}

double static GlassMaterialProvider.HysteresisRange.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1ED56A8B8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_1ED56C8E0;
  if (qword_1ED56A7E8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  result = *&qword_1ED56C4C0;
  *a1 = v1;
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18AF485D8(uint64_t a1, uint64_t a2)
{
  if (!BYTE4(a2))
  {
    v2 = 1;
    goto LABEL_5;
  }

  if (BYTE4(a2) == 1)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x18CFED610](v2);
    return sub_18AFCE2C4();
  }

  return MEMORY[0x18CFED610](0);
}

uint64_t sub_18AF4863C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_18AFCE294();
  sub_18AF485D8(v4, v1 | (v2 << 32));
  return sub_18AFCE2E4();
}

uint64_t sub_18AF48698(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_18AFCE294();
  sub_18AF485D8(v5, v2 | (v3 << 32));
  return sub_18AFCE2E4();
}

BOOL sub_18AF486E0(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  if (!*(a1 + 4))
  {
    if (*(a2 + 4))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 4) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && LODWORD(v2) == 0;
}

uint64_t sub_18AF48740()
{
  v1 = _s13ConfigurationV3MixVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 >> 62 == 2)
  {
    v4 = swift_projectBox();
    sub_18AE7AFD4(v4, v3, _s13ConfigurationV3MixVMa);
    if (sub_18AF48740())
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_18AF48740();
    }

    sub_18AF4BBC8(v3, _s13ConfigurationV3MixVMa);
  }

  else
  {
    v5 = *(v0 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 68) + 4) != 1;
  }

  return v5 & 1;
}

double sub_18AF4884C@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 48) = 0;
  v4 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v5 = v4[10];
  v6 = sub_18AFCBB34();
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + v4[11]) = 3;
  *(a2 + v4[12]) = 0;
  v7 = a2 + v4[13];
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 1;
  *(a2 + v4[14]) = MEMORY[0x1E69E7CC0];
  *(a2 + v4[15]) = 0;
  v8 = a2 + v4[16];
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 20) = -1;
  *(v8 + 16) = 0;
  v9 = a2 + v4[17];
  *v9 = 0;
  *(v9 + 4) = 2;
  *(a2 + v4[18]) = 0;
  v10 = (a2 + v4[19]);
  *v10 = 0;
  v10[1] = 0;
  *a2 = a1;
  sub_18AE89F60(a1);
  sub_18AE8E22C(a1, &v12);
  sub_18AF4B0F8(a1);
  *(a2 + 40) = v12;
  *&result = 3;
  *(a2 + 16) = xmmword_18AFDAF60;
  *(a2 + 32) = 1;
  return result;
}

double sub_18AF489AC(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_18AF4884C(a3, v6);
}

double sub_18AF48A98()
{
  v0 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v0, qword_1ED56A548);
  v1 = __swift_project_value_buffer(v0, qword_1ED56A548);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 20) = 1;
  *(v2 + 24) = 0;
  *(v2 + 28) = 1;
  return sub_18AF4884C(v2, v1);
}

void static GlassMaterialProvider.Configuration.text(tint:frost:normalizedFactor:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 20) = BYTE4(a2) & 1;
  *(v11 + 24) = a3;
  *(v11 + 28) = BYTE4(a3) & 1;
  sub_18AF4884C(v11, a4);
  if (a1)
  {
    sub_18AE7AFD4(a4, v10, type metadata accessor for GlassMaterialProvider.Configuration);
    v12 = *(v8 + 56);
    v13 = *&v10[v12];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_18AE91D64(0, *(v13 + 2) + 1, 1, v13);
    }

    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_18AE91D64((v14 > 1), v15 + 1, 1, v13);
    }

    sub_18AF4BBC8(a4, type metadata accessor for GlassMaterialProvider.Configuration);
    *(v13 + 2) = v15 + 1;
    v16 = &v13[32 * v15];
    *(v16 + 4) = -1;
    *(v16 + 5) = a1;
    *(v16 + 6) = 0;
    *(v16 + 14) = 0;
    v16[60] = 0;
    *&v10[v12] = v13;
    sub_18AE8C014(v10, a4);
  }
}

char *GlassMaterialProvider.Configuration.tint(_:color:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  sub_18AE7AFD4(v4, a3, type metadata accessor for GlassMaterialProvider.Configuration);
  v8 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 56);
  v9 = *(a3 + v8);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_18AE91D64(0, *(v9 + 2) + 1, 1, v9);
    v9 = result;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    result = sub_18AE91D64((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[32 * v12];
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  *(v13 + 6) = 0;
  *(v13 + 14) = 0;
  v13[60] = 0;
  *(a3 + v8) = v9;
  return result;
}

double sub_18AF48F54(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  __swift_allocate_value_buffer(v3, a2);
  v4 = __swift_project_value_buffer(v3, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 32) = 1;
  return sub_18AF4884C(v5 | 0x4000000000000000, v4);
}

uint64_t GlassMaterialProvider.Configuration.subvariant(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  *(a2 + 9) = v4;
  return result;
}

void GlassMaterialProvider.Configuration.focusOffset(_:)(unint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  sub_18AE7AFD4(v3, a1, type metadata accessor for GlassMaterialProvider.Configuration);
  if (*v3 >> 62 == 1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a2;
    *(v7 + 24) = a3;
    *(v7 + 32) = 0;
    v8 = v7 | 0x4000000000000000;
    sub_18AF4B0F8(*a1);
    *a1 = v8;
  }
}

void GlassMaterialProvider.Configuration.controlTint(color:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 60);

  *(a2 + v5) = a1;
}

uint64_t GlassMaterialProvider.Configuration.adaptive(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = 0x4000;
  if ((a1 & 1) == 0)
  {
    v5 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFFBFFFLL | v5;
  v6 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v6, &qword_1EA99B5F0, &qword_18AFDAF70);
  v7 = sub_18AFCBB34();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t GlassMaterialProvider.Configuration.adaptiveHysteresisRange(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v7 = a2 + *(result + 52);
  *v7 = v4;
  *(v7 + 8) = v5;
  *(v7 + 16) = 0;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.adaptive(animatable:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x400000;
  if (a1)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFBFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.colorScheme(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v5 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 40);
  sub_18AE7BA80(a2 + v5, &qword_1EA99B5F0, &qword_18AFDAF70);
  v6 = sub_18AFCBB34();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2 + v5, a1, v6);
  result = (*(v7 + 56))(a2 + v5, 0, 1, v6);
  v9 = *(a2 + 40);
  if ((v9 & 0x4000) != 0)
  {
    *(a2 + 40) = v9 & 0xFFFFFFFFFFFFBFFFLL;
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.boostWhitePoint(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x20000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFFDFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.adaptivePreserveLuminance(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x100000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFFEFFFFFLL | v6;
  return result;
}

uint64_t sub_18AF4963C@<X0>(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>)
{
  v5 = v3;
  sub_18AE7AFD4(v5, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v9 = a2 + *(result + 68);
  *v9 = a3;
  *(v9 + 4) = a1;
  return result;
}

void GlassMaterialProvider.Configuration.customFill<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE7AFD4(v5, a5, type metadata accessor for GlassMaterialProvider.Configuration);
  _s10CustomFillCMa(0, a2, a3, a4);
  (*(v11 + 16))(v13, a1, a2);
  v14 = sub_18AF4BE98(v13);
  v15 = *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 72);

  *(a5 + v15) = v14;
}

void GlassMaterialProvider.Configuration.customGlow<A>(_:radius:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AE7AFD4(v6, a5, type metadata accessor for GlassMaterialProvider.Configuration);
  _s10CustomFillCMa(0, a2, a3, a4);
  (*(v13 + 16))(v15, a1, a2);
  v16 = sub_18AF4BE98(v15);
  v17 = a5 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 76);

  *v17 = v16;
  *(v17 + 8) = a6;
}

uint64_t GlassMaterialProvider.Configuration.identity()@<X0>(uint64_t a1@<X8>)
{
  result = sub_18AE7AFD4(v1, a1, type metadata accessor for GlassMaterialProvider.Configuration);
  v4 = *(a1 + 40);
  if ((v4 & 0x200000) == 0)
  {
    *(a1 + 40) = v4 | 0x200000;
  }

  return result;
}

uint64_t GlassMaterialProvider.Configuration.contentHidden(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x1000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFEFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.frost(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  *(a2 + 8) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.optimization(level:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  *(a2 + *(result + 44)) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.contentEffect(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  result = type metadata accessor for GlassMaterialProvider.Configuration(0);
  *(a2 + *(result + 48)) = v4;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  if (a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = 0xFFFFFFFF00000000;
  }

  v6 = a2 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 64);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16) | (*(v6 + 20) << 32);

  result = sub_18AF4B128(v7, v8, v9);
  *v6 = a1;
  *(v6 + 8) = 0;
  *(v6 + 20) = BYTE4(v5);
  *(v6 + 16) = v5;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.fixedBackgroundColor(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18AE7AFD4(v4, a4, type metadata accessor for GlassMaterialProvider.Configuration);
  v9 = a3 | 0x100000000;
  v10 = (a3 & 0x100000000) == 0;
  if ((a3 & 0x100000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a1;
  }

  if (v10)
  {
    v12 = a2;
  }

  else
  {
    v12 = 0;
  }

  if (v10)
  {
    v13 = v9;
  }

  else
  {
    v13 = 0xFFFFFFFF00000000;
  }

  v14 = a4 + *(type metadata accessor for GlassMaterialProvider.Configuration(0) + 64);
  result = sub_18AF4B128(*v14, *(v14 + 8), *(v14 + 16) | (*(v14 + 20) << 32));
  *v14 = v11;
  *(v14 + 8) = v12;
  *(v14 + 20) = BYTE4(v13);
  *(v14 + 16) = v13;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.sharpTinting(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x2000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFDFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.meshed(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  result = sub_18AE7AFD4(v2, a2, type metadata accessor for GlassMaterialProvider.Configuration);
  v6 = 0x4000000;
  if ((a1 & 1) == 0)
  {
    v6 = 0;
  }

  *(a2 + 40) = *(a2 + 40) & 0xFFFFFFFFFBFFFFFFLL | v6;
  return result;
}

uint64_t GlassMaterialProvider.Configuration.hashValue.getter()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF49D4C()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AF49D90(uint64_t a1)
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v2);
  return sub_18AFCE2E4();
}

__n128 static GlassMaterialProvider.HysteresisRange.disabled.getter@<Q0>(__n128 *a1@<X8>)
{
  result.n128_u64[0] = 0x3F0000003F000000;
  result.n128_u64[1] = 0x3F0000003F000000;
  *a1 = result;
  return result;
}

void sub_18AF49DDC()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = sub_18AFCAF30(0xD000000000000026, 0x800000018AFE48B0);
  if (!v0)
  {
    goto LABEL_7;
  }

  if (*(v0 + 2) <= 1uLL)
  {

LABEL_7:
    v1 = 0.2;
    v2 = 0.5;
    goto LABEL_8;
  }

  v1 = *(v0 + 8);
  v2 = *(v0 + 9);

  if (v1 > v2)
  {
    goto LABEL_7;
  }

LABEL_8:
  *&qword_1ED56C8E0 = v1;
  *(&qword_1ED56C8E0 + 1) = v2;
}

void sub_18AF49E98()
{
  if (qword_1ED56ADA8 != -1)
  {
    swift_once();
  }

  v0 = sub_18AFCAF30(0xD000000000000025, 0x800000018AFE4880);
  if (!v0)
  {
    goto LABEL_7;
  }

  if (*(v0 + 2) <= 1uLL)
  {

LABEL_7:
    v1 = 0.9;
    v2 = 0.6;
    goto LABEL_8;
  }

  v2 = *(v0 + 8);
  v1 = *(v0 + 9);

  if (v2 > v1)
  {
    goto LABEL_7;
  }

LABEL_8:
  *&qword_1ED56C4C0 = v2;
  *(&qword_1ED56C4C0 + 1) = v1;
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.colorScheme.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v4 = sub_18AFCBB34();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.colorScheme.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v4 = sub_18AFCBB34();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.init(luminance:colorScheme:)@<X0>(uint64_t a1@<X0>, float *a2@<X8>, float a3@<S0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0) + 20);
  v6 = sub_18AFCBB34();
  v7 = *(*(v6 - 8) + 32);

  return v7(a2 + v5, a1, v6);
}

uint64_t static GlassMaterialProvider.HysteresisRange.Context.== infix(_:_:)(float *a1, float *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);

  return sub_18AFCBB24();
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.hash(into:)(uint64_t a1)
{
  sub_18AFCE2C4();
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  return sub_18AFCDDA4();
}

uint64_t GlassMaterialProvider.HysteresisRange.Context.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A31C(uint64_t a1)
{
  sub_18AFCE2C4();
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  return sub_18AFCDDA4();
}

uint64_t sub_18AF4A3C0(uint64_t a1)
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AFCBB34();
  sub_18AF4B160(&qword_1ED56AA48, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A478(float *a1, float *a2, uint64_t a3)
{
  if (*a1 == *a2)
  {
    return sub_18AFCBB24();
  }

  else
  {
    return 0;
  }
}

uint64_t GlassMaterialProvider.HysteresisRange.modifyColorScheme(_:context:)(char *a1, float *a2)
{
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  v10 = v2[1];
  v11 = v2[2];
  v12 = v2[3];
  type metadata accessor for GlassMaterialProvider.HysteresisRange.Context(0);
  v13 = *MEMORY[0x1E697DBA8];
  v14 = *(v6 + 104);
  v14(v8, v13, v5);
  sub_18AF4B160(&qword_1ED56AD68, MEMORY[0x1E697DBD0], MEMORY[0x1E697DBE8]);
  v15 = sub_18AFCDDF4();
  v16 = *(v6 + 8);
  result = v16(v8, v5);
  if (v15)
  {
    v19 = v11;
  }

  else
  {
    v19 = v9;
  }

  if (v15)
  {
    v18.n128_f32[0] = v12;
  }

  else
  {
    v18.n128_f32[0] = v10;
  }

  v20 = *a2;
  if (v19 > *a2 || v20 > v18.n128_f32[0])
  {
    if (v20 >= v19)
    {
      if (v18.n128_f32[0] > v20)
      {
        return result;
      }

      v16(a1, v5);
      v13 = *MEMORY[0x1E697DBB8];
    }

    else
    {
      (v16)(a1, v5, v18);
    }

    return (v14)(a1, v13, v5);
  }

  return result;
}

uint64_t GlassMaterialProvider.HysteresisRange.hash(into:)()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2C4();
}

uint64_t GlassMaterialProvider.HysteresisRange.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AF4A7DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_18AFCE294();
  sub_18AF4AFA4(v1, v2);
  sub_18AF4AFA4(v3, v4);
  return sub_18AFCE2E4();
}

double sub_18AF4A84C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  sub_18AF4AFA4(*v1, v1[1]);

  sub_18AF4AFA4(v2, v3);
  return result;
}

uint64_t sub_18AF4A89C(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  sub_18AFCE294();
  sub_18AF4AFA4(v2, v3);
  sub_18AF4AFA4(v4, v5);
  return sub_18AFCE2E4();
}

char *sub_18AF4A90C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B670, &qword_18AFDB738);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18AF4AA10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B678, &qword_18AFDB740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

char *sub_18AF4AB2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C0, &qword_18AFDB848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_18AF4AC48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B6C8, &unk_18AFDB850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18AF4AD4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99A518, &qword_18AFD7E78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_18AF4AE50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B688, &unk_18AFDB750);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_18AF4AF54(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x18CFED640](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x18CFED640](*&v3);
}

BOOL _s13DesignLibrary21GlassMaterialProviderV15HysteresisRangeV2eeoiySbAE_AEtFZ_0(float *a1, float *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  return a1[3] == a2[3] && a1[2] == a2[2];
}

BOOL _s13DesignLibrary21GlassMaterialProviderV4SizeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 <= 1uLL)
    {
      if (!(*&v2 | *&v3))
      {
        return *(a2 + 16) && !(*&v5 | v4);
      }

      return *(a2 + 16) && !(*&v5 ^ 1 | v4);
    }

    if (!(*&v2 ^ 2 | *&v3))
    {
      return *(a2 + 16) && !(*&v5 ^ 2 | v4);
    }

    return *(a2 + 16) && *&v5 > 2uLL;
  }

  else
  {
    if (*(a2 + 16))
    {
      return 0;
    }

    return v3 == *(a2 + 8) && v2 == v5;
  }
}

double sub_18AF4B0F8(unint64_t a1)
{
  if ((a1 >> 62) <= 2)
  {
  }

  return result;
}

uint64_t sub_18AF4B128(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (BYTE4(a3) != 255)
  {
    return sub_18AE92094(result, a2, a3, BYTE4(a3) & 1);
  }

  return result;
}

uint64_t sub_18AF4B160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_18AF4B1AC()
{
  result = qword_1EA99B5F8;
  if (!qword_1EA99B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B5F8);
  }

  return result;
}

unint64_t sub_18AF4B204()
{
  result = qword_1EA99B600;
  if (!qword_1EA99B600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B600);
  }

  return result;
}

unint64_t sub_18AF4B25C()
{
  result = qword_1EA99B608;
  if (!qword_1EA99B608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B608);
  }

  return result;
}

unint64_t sub_18AF4B2B4()
{
  result = qword_1EA99B610;
  if (!qword_1EA99B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B610);
  }

  return result;
}

unint64_t sub_18AF4B30C()
{
  result = qword_1EA99B618;
  if (!qword_1EA99B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B618);
  }

  return result;
}

unint64_t sub_18AF4B3F4()
{
  result = qword_1EA99B630;
  if (!qword_1EA99B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99B630);
  }

  return result;
}

uint64_t _s4SizeOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}