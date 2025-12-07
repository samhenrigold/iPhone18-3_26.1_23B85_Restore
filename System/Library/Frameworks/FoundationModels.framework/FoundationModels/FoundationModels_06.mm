uint64_t sub_23888FC20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_23888FC68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23888FCD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_23888FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_238810E44(&qword_27DF30E50, &qword_2388D8D48);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_23888FDF4(uint64_t a1)
{
  sub_23888FEA0(319, &qword_27DF30ED0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_23888FEA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_23888FF54(uint64_t a1)
{
  result = sub_2388D0F58();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23888FFC0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_238890020(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (a1 == a5 && a2 == a6 && !(a3 >> 16) && v7 == a4 >> 16)
  {
    return 1;
  }

  else
  {
    return sub_2388D32E8() & 1;
  }
}

unint64_t sub_23889008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30F08;
  if (!qword_27DF30F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F08);
  }

  return result;
}

uint64_t sub_2388900E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AdapterCompilationRateLimiter.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238890144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23889017C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2388414A0;

  return sub_23888D358(a1, v4);
}

uint64_t sub_238890234(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2388414A0;

  return sub_23888D168(a1, v4);
}

uint64_t sub_2388902EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238833668;

  return sub_23888D168(a1, v4);
}

uint64_t sub_2388903A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23889041C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 48);
    v4 = (a1 + 48);
    do
    {
      v5 = *(v4 - 2);
      v6 = *(v4 - 1);
      v7 = *v4;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          if (v10 != 3)
          {
            return 0;
          }

          sub_238814698(*(v3 - 2), *(v3 - 1), 3);
          sub_238814698(v5, v6, 3);
          v13 = sub_23889041C(v5, v8);
          sub_238810DC4(v8, v9, 3);
          sub_238810DC4(v5, v6, 3);
          if ((v13 & 1) == 0)
          {
            return 0;
          }
        }

        else if (v7 == 4)
        {
          if (v10 != 4)
          {
            return 0;
          }

          sub_238814698(*(v3 - 2), *(v3 - 1), 4);
          sub_238814698(v5, v6, 4);
          v11 = sub_23881B740(v5, v8);
          sub_238810DC4(v8, v9, 4);
          sub_238810DC4(v5, v6, 4);
          if ((v11 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v10 != 5 || v9 | v8)
          {
            return result;
          }
        }
      }

      else if (*v4)
      {
        if (v7 == 1)
        {
          if (v10 != 1 || *&v5 != *&v8)
          {
            return 0;
          }
        }

        else if (v10 != 2 || (v5 != v8 || v6 != v9) && (sub_2388D3368() & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (*v3 || ((v8 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238890610(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v45 = a2 + 32;
  v46 = result + 32;
  v44 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      __break(1u);
      goto LABEL_84;
    }

    v4 = v46 + 40 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 17);
    v9 = *(v4 + 24);
    v10 = *(v4 + 32);
    v11 = v45 + 40 * v3;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *(v11 + 16);
    v15 = *(v11 + 17);
    v47 = *(v11 + 24);
    v48 = v9;
    v51 = v10;
    v52 = *(v11 + 32);
    v49 = v7;
    v50 = *(v11 + 16);
    if (v7 <= 2)
    {
      if (v7)
      {
        if (v7 == 1)
        {
          if (v14 != 1 || *&v6 != *&v12)
          {
            return 0;
          }

          v17 = v6;
          v18 = v5;
          sub_238814698(v6, v5, 1);

          v19 = *&v12;
          v20 = v12;
          v21 = v13;
          v22 = v13;
          v23 = 1;
        }

        else
        {
          if (v14 != 2)
          {
            return 0;
          }

          if (v6 == v12 && v5 == v13)
          {
            v19 = *v11;
            v21 = *(v11 + 8);
            v37 = v5;
            sub_238814698(v6, v5, 2);

            v17 = v6;
            v20 = v6;
            v18 = v37;
            v22 = v37;
          }

          else
          {
            v35 = v5;
            if ((sub_2388D3368() & 1) == 0)
            {
              return 0;
            }

            v17 = v6;
            v18 = v35;
            sub_238814698(v6, v35, 2);

            v19 = *&v12;
            v20 = v12;
            v21 = v13;
            v22 = v13;
          }

          v23 = 2;
        }
      }

      else
      {
        result = 0;
        if (*(v11 + 16) || ((v12 ^ v6) & 1) != 0)
        {
          return result;
        }

        v17 = v6;
        v18 = v5;
        sub_238814698(v6, v5, 0);

        v19 = *&v12;
        v20 = v12;
        v21 = v13;
        v22 = v13;
        v23 = 0;
      }

LABEL_59:
      sub_238814698(v20, v22, v23);

      goto LABEL_60;
    }

    if (v7 != 3)
    {
      break;
    }

    if (v14 != 3)
    {
      return 0;
    }

    v18 = v5;
    sub_238814698(v6, v5, 3);

    v32 = v12;
    v33 = v12;
    v21 = v13;
    sub_238814698(v32, v13, 3);

    v17 = v6;
    v19 = *&v33;
    if ((sub_2388919B8(v6, v33) & 1) == 0)
    {
      sub_238810DC4(v33, v13, 3);

      v39 = v6;
      v40 = v18;
      v41 = 3;
LABEL_80:
      sub_238810DC4(v39, v40, v41);

      return 0;
    }

LABEL_60:
    if (v8 != v15)
    {
      sub_238810DC4(*&v19, v21, v50);

      v39 = v17;
      v40 = v18;
      v41 = v49;
      goto LABEL_80;
    }

    if (!v51)
    {
      if (v52)
      {
LABEL_73:

        sub_238810DC4(*&v19, v21, v50);

        v39 = v17;
        v40 = v18;
        v41 = v49;
        goto LABEL_80;
      }

      sub_238810DC4(*&v19, v21, v50);

      sub_238810DC4(v17, v18, v49);
      goto LABEL_6;
    }

    if (!v52)
    {
      goto LABEL_73;
    }

    if (v48 == v47 && v51 == v52)
    {
      sub_238810DC4(*&v19, v21, v50);

      sub_238810DC4(v17, v18, v49);
LABEL_6:

      goto LABEL_7;
    }

    v38 = sub_2388D3368();
    sub_238810DC4(*&v19, v21, v50);

    sub_238810DC4(v17, v18, v49);

    if ((v38 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    ++v3;
    v2 = v44;
    if (v3 == v44)
    {
      return 1;
    }
  }

  if (v7 != 4)
  {
    if (v14 != 5 || (v13 | v12) != 0)
    {
      return 0;
    }

    v19 = *v11;
    v21 = *(v11 + 8);
    v17 = v6;
    v18 = v5;
    sub_238814698(v6, v5, 5);

    v20 = 0;
    v22 = 0;
    v23 = 5;
    goto LABEL_59;
  }

  if (v14 != 4)
  {
    return 0;
  }

  v24 = v5;
  sub_238814698(v6, v5, 4);

  sub_238814698(v12, v13, 4);

  result = sub_23881D7DC(v6, v12);
  if ((result & 1) == 0)
  {
    sub_238810DC4(v12, v13, 4);

    v39 = v6;
    v40 = v24;
LABEL_79:
    v41 = 4;
    goto LABEL_80;
  }

  v25 = v24;
  if (!v24)
  {
    v19 = *&v12;
    v18 = 0;
    v17 = v6;
    v21 = v13;
    if (v13)
    {
      sub_238810DC4(*&v19, v13, 4);

      v39 = v6;
      v40 = 0;
LABEL_74:
      v41 = 4;
      goto LABEL_80;
    }

    goto LABEL_60;
  }

  if (!v13)
  {
    v42 = v12;
    v43 = v24;
    v26 = 0;
LABEL_78:
    sub_238810DC4(v42, v26, 4);

    v39 = v6;
    v40 = v43;
    goto LABEL_79;
  }

  v26 = v13;
  v27 = *(v24 + 16);
  if (v27 != *(v26 + 16))
  {
    v42 = v12;
    v43 = v24;
    goto LABEL_78;
  }

  v19 = *&v12;
  v17 = v6;
  v18 = v25;
  v21 = v26;
  if (v27)
  {
    v28 = v25 == v26;
  }

  else
  {
    v28 = 1;
  }

  if (v28)
  {
    goto LABEL_60;
  }

  v29 = (v25 + 40);
  v30 = (v26 + 40);
  while (v27)
  {
    result = *(v29 - 1);
    if (result != *(v30 - 1) || *v29 != *v30)
    {
      result = sub_2388D3368();
      if ((result & 1) == 0)
      {
        sub_238810DC4(*&v19, v21, 4);

        v39 = v17;
        v40 = v18;
        goto LABEL_74;
      }
    }

    v29 += 2;
    v30 += 2;
    if (!--v27)
    {
      goto LABEL_60;
    }
  }

LABEL_84:
  __break(1u);
  return result;
}

uint64_t sub_238890BFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_238890C8C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      if (*v3)
      {
        if (!v5)
        {
          return 0;
        }

        v6 = *(v3 - 1) == *(v4 - 1) && *v3 == v5;
        if (!v6 && (sub_2388D3368() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v5)
      {
        return 0;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_238890D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_23889777C(v13, v10, type metadata accessor for Transcript.Entry);
        sub_23889777C(v14, v7, type metadata accessor for Transcript.Entry);
        v16 = _s16FoundationModels10TranscriptV5EntryO2eeoiySbAE_AEtFZ_0(v10, v7);
        sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
        sub_238891FF0(v10, type metadata accessor for Transcript.Entry);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_238890EE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = v5[3];
    v33 = v5[2];
    v34 = v8;
    *v35 = v5[4];
    *&v35[16] = *(v5 + 10);
    v9 = v5[1];
    v31 = *v5;
    v32 = v9;
    v10 = v6[1];
    v36 = *v6;
    v37 = v10;
    v11 = v6[2];
    v12 = v6[3];
    v13 = v6[4];
    *&v40[1] = *(v6 + 10);
    v39 = v12;
    v40[0] = v13;
    v38 = v11;
    if (v31 != v36 && (sub_2388D3368() & 1) == 0 || v32 != v37 && (sub_2388D3368() & 1) == 0)
    {
      return 0;
    }

    v21 = v7;
    v15 = *(&v33 + 1);
    v14 = v33;
    v16 = v38;
    v17 = v34;
    v18 = v39;
    v27 = v33;
    v28 = v34;
    v29 = *(&v34 + 1);
    v30 = *v35;
    v23 = v38;
    v24 = v39;
    v25 = *(&v39 + 1);
    v26 = *&v40[0];
    sub_238827C78(&v31, v22);
    sub_238827C78(&v36, v22);
    sub_238814698(v14, v15, v17);

    sub_238814698(v16, *(&v16 + 1), v18);

    LOBYTE(v14) = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v27, &v23);
    sub_238810DC4(v23, *(&v23 + 1), v24);

    sub_238810DC4(v27, *(&v27 + 1), v28);

    if ((v14 & 1) == 0)
    {
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
      return 0;
    }

    if (*&v35[8] == *(v40 + 8))
    {
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
    }

    else
    {
      v19 = sub_2388D3368();
      sub_2388976E4(&v36);
      sub_2388976E4(&v31);
      if ((v19 & 1) == 0)
      {
        return 0;
      }
    }

    if (!v21)
    {
      break;
    }

    v7 = v21 - 1;
    v6 = (v6 + 88);
    v5 = (v5 + 88);
  }

  return 1;
}

uint64_t sub_238891144(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v77 = v2;
  v78 = v3;
  v5 = a1 + 32;
  v6 = (a2 + 32);
  v7 = v4 - 1;
  while (1)
  {
    v8 = *(v5 + 48);
    v9 = *(v5 + 16);
    v59 = *(v5 + 32);
    v60 = v8;
    v10 = *(v5 + 48);
    v61 = *(v5 + 64);
    v11 = *(v5 + 16);
    v58[0] = *v5;
    v58[1] = v11;
    v12 = v6[3];
    v13 = v6[1];
    v65 = v6[2];
    v66 = v12;
    v14 = v6[3];
    v67 = v6[4];
    v15 = v6[1];
    v63 = *v6;
    v64 = v15;
    v69[2] = v59;
    v69[3] = v10;
    v69[4] = *(v5 + 64);
    v69[0] = v58[0];
    v69[1] = v9;
    v75 = v6[4];
    v74 = v14;
    v73 = v65;
    v71 = v63;
    v62 = *(v5 + 80);
    v68 = *(v6 + 10);
    v70 = *(v5 + 80);
    v76 = *(v6 + 10);
    v72 = v13;
    v16 = v58[0];
    v17 = WORD3(v60) >> 14;
    v18 = v11;
    v44 = v7;
    if (v17)
    {
      if (v17 == 1)
      {
        if (((WORD3(v66) << 32) & 0xC00000000000) != 0x400000000000)
        {
          goto LABEL_33;
        }

        v41 = *(&v59 + 1);
        v42 = v59;
        v40 = v60;
        v35 = BYTE1(v60);
        v43 = v61;
        v30 = v62;
        v31 = *(&v61 + 1);
        v19 = v63;
        v20 = v64;
        v36 = *(&v60 + 1);
        v37 = *(&v65 + 1);
        v34 = *(&v66 + 1);
        v38 = v65;
        v39 = v67;
        v28 = v68;
        v29 = *(&v67 + 1);
        v32 = v66;
        v33 = BYTE1(v66);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        if (v16 != v19 && (sub_2388D3368() & 1) == 0 || v18 != v20 && (sub_2388D3368() & 1) == 0)
        {
          goto LABEL_35;
        }

        v51 = v42;
        v52 = v41;
        v53 = v40;
        v54 = v35 & 1;
        v55 = v36;
        v56 = v43;
        v45 = v38;
        v46 = v37;
        v47 = v32;
        v48 = v33 & 1;
        v49 = v34;
        v50 = v39;
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238814698(v42, v41, v40);

        sub_238814698(v38, v37, v32);

        v21 = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v51, &v45);
        sub_238810DC4(v45, v46, v47);

        sub_238810DC4(v51, v52, v53);

        if (!v21)
        {
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          return 0;
        }

        if (v31 == v29 && v30 == v28)
        {
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
        }

        else
        {
          v25 = sub_2388D3368();
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          sub_238840EF8(&v63);
          sub_238840EF8(v58);
          if ((v25 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (v66 >> 62 != 2)
        {
          goto LABEL_33;
        }

        if (v58[0] != v63 && (sub_2388D3368() & 1) == 0)
        {
          sub_2388977E4(v58, v57);
          v27 = &v63;
LABEL_34:
          sub_2388977E4(v27, v57);
LABEL_35:
          sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
          return 0;
        }

        type metadata accessor for CGImage(0);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage, &unk_2388D4468);
        v23 = sub_2388D1348();
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
        sub_238840EF8(&v63);
        sub_238840EF8(v58);
        sub_238840EF8(&v63);
        sub_238840EF8(v58);
        if ((v23 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      if (v66 >> 62 || (v22 = v64, v58[0] != v63) && (sub_2388D3368() & 1) == 0)
      {
LABEL_33:
        sub_2388977E4(&v63, v57);
        v27 = v58;
        goto LABEL_34;
      }

      if (v18 == v22)
      {
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
      }

      else
      {
        v24 = sub_2388D3368();
        sub_2388977E4(&v63, v57);
        sub_2388977E4(v58, v57);
        sub_238827E88(v69, &qword_27DF310A8, &qword_2388D9DC0);
        if ((v24 & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (!v44)
    {
      return 1;
    }

    v7 = v44 - 1;
    v6 = (v6 + 88);
    v5 += 88;
  }
}

uint64_t sub_238891780(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ToolDefinition(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v10 = (&v20 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_20:
    v18 = 0;
    return v18 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_23889777C(v13, v10, type metadata accessor for Transcript.ToolDefinition);
      sub_23889777C(v14, v7, type metadata accessor for Transcript.ToolDefinition);
      v16 = *v10 == *v7 && v10[1] == v7[1];
      if (!v16 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v17 = v10[2] == v7[2] && v10[3] == v7[3];
      if (!v17 && (sub_2388D3368() & 1) == 0)
      {
        break;
      }

      v18 = sub_2388D1F48();
      sub_238891FF0(v7, type metadata accessor for Transcript.ToolDefinition);
      sub_238891FF0(v10, type metadata accessor for Transcript.ToolDefinition);
      if (v18)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_238891FF0(v7, type metadata accessor for Transcript.ToolDefinition);
    sub_238891FF0(v10, type metadata accessor for Transcript.ToolDefinition);
    goto LABEL_20;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_2388919B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && result != a2)
  {
    v3 = 0;
    v4 = result + 32;
    v5 = a2 + 32;
    do
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
        return result;
      }

      v7 = v4 + 24 * v3;
      v8 = *v7;
      v9 = *(v7 + 8);
      v10 = *(v7 + 17);
      v11 = *(v7 + 16);
      v12 = v5 + 24 * v3;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      v16 = *(v12 + 17);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          if (v15 != 3)
          {
            return 0;
          }

          sub_238814698(*v12, *(v12 + 8), 3);
          sub_238814698(v8, v9, 3);
          if ((sub_2388919B8(v8, v13) & 1) == 0)
          {
            sub_238810DC4(v13, v14, 3);
            v30 = v8;
            v31 = v9;
            v32 = 3;
            goto LABEL_65;
          }

          sub_238810DC4(v8, v9, 3);
          v22 = v13;
          v23 = v14;
          v24 = 3;
LABEL_44:
          result = sub_238810DC4(v22, v23, v24);
          if (v10 != v16)
          {
            return 0;
          }

          goto LABEL_11;
        }

        if (v11 != 4)
        {
          if (v15 != 5)
          {
            return 0;
          }

          result = 0;
          if (v14 | v13)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v15 != 4)
        {
          return 0;
        }

        sub_238814698(*v12, *(v12 + 8), 4);
        sub_238814698(v8, v9, 4);
        if ((sub_23881D7DC(v8, v13) & 1) == 0)
        {
          goto LABEL_62;
        }

        if (!v9)
        {
          if (v14)
          {
            sub_238810DC4(v13, v14, 4);
            v30 = v8;
            v31 = 0;
            goto LABEL_64;
          }

          sub_238810DC4(v8, 0, 4);
          v22 = v13;
          v23 = 0;
          v24 = 4;
          goto LABEL_44;
        }

        if (!v14)
        {
          v28 = v13;
          v29 = 0;
LABEL_63:
          sub_238810DC4(v28, v29, 4);
          v30 = v8;
          v31 = v9;
LABEL_64:
          v32 = 4;
LABEL_65:
          sub_238810DC4(v30, v31, v32);
          return 0;
        }

        v35 = v10;
        v19 = *(v9 + 16);
        if (v19 != *(v14 + 16))
        {
          goto LABEL_62;
        }

        if (v19)
        {
          if (v9 != v14)
          {
            v33 = v5;
            v34 = v4;
            v25 = (v9 + 40);
            v26 = (v14 + 40);
            while (1)
            {
              v27 = *(v25 - 1) == *(v26 - 1) && *v25 == *v26;
              if (!v27 && (sub_2388D3368() & 1) == 0)
              {
                break;
              }

              v25 += 2;
              v26 += 2;
              if (!--v19)
              {
                sub_238810DC4(v8, v9, 4);
                result = sub_238810DC4(v13, v14, 4);
                v5 = v33;
                v4 = v34;
                if (v35 == v16)
                {
                  goto LABEL_11;
                }

                return 0;
              }
            }

LABEL_62:
            v28 = v13;
            v29 = v14;
            goto LABEL_63;
          }

          sub_238810DC4(v8, v9, 4);
          v20 = v13;
          v21 = v9;
        }

        else
        {
          sub_238810DC4(v8, v9, 4);
          v20 = v13;
          v21 = v14;
        }

        result = sub_238810DC4(v20, v21, 4);
        v10 = v35;
      }

      else
      {
        if (!v11)
        {
          result = 0;
          if (*(v12 + 16) || ((v13 ^ v8) & 1) != 0)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v11 == 1)
        {
          result = 0;
          if (v15 != 1 || *&v8 != *&v13)
          {
            return result;
          }

          goto LABEL_10;
        }

        if (v15 != 2)
        {
          return 0;
        }

        if (v8 != v13 || v9 != v14)
        {
          v18 = sub_2388D3368();
          result = 0;
          if ((v18 & 1) == 0)
          {
            return result;
          }

LABEL_10:
          if ((v10 ^ v16))
          {
            return result;
          }

          goto LABEL_11;
        }
      }

      if (v10 != v16)
      {
        return 0;
      }

LABEL_11:
      ++v3;
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t Transcript.Entry.instructions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v6, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    result = sub_238891FF0(v6, type metadata accessor for Transcript.Entry);
    v8 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  else
  {
    v8 = *v6;
    v10 = *(v6 + 8);
    v9 = *(v6 + 3);
  }

  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 24) = v9;
  return result;
}

uint64_t Transcript.Entry.id.getter()
{
  v1 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23889777C(v0, v6, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_238897714(v6, v3, type metadata accessor for Transcript.Prompt);
      v8 = *v3;

      sub_238891FF0(v3, type metadata accessor for Transcript.Prompt);
      return v8;
    }

LABEL_6:
    v8 = *v6;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v8 = *v6;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 3)
  {
    goto LABEL_6;
  }

  v8 = *v6;
LABEL_7:

LABEL_9:

  return v8;
}

uint64_t sub_238891FF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Transcript.init<A>(entries:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v7 + 16))(&v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  type metadata accessor for Transcript.Entry(0);
  v9 = sub_2388D2B28();
  result = (*(v7 + 8))(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t Transcript.ToolDefinition.init<A>(tool:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for GenerationSchema(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (*(a3 + 40))(a2, a3);
  v13 = v12;
  v14 = (*(a3 + 48))(a2, a3);
  v16 = v15;
  (*(a3 + 56))(a2, a3);
  *a4 = v11;
  a4[1] = v13;
  a4[2] = v14;
  a4[3] = v16;
  v17 = type metadata accessor for Transcript.ToolDefinition(0);
  GenerationSchema.jsonSchema()(a4 + *(v17 + 24));
  (*(*(a2 - 8) + 8))(a1, a2);
  return sub_238891FF0(v10, type metadata accessor for GenerationSchema);
}

FoundationModels::Transcript::Instructions __swiftcall Transcript.Instructions.init(id:segments:toolDefinitions:)(Swift::String id, Swift::OpaquePointer segments, Swift::OpaquePointer toolDefinitions)
{
  *v3 = id;
  *(v3 + 16) = segments;
  *(v3 + 24) = toolDefinitions;
  result.id = id;
  result.toolDefinitions = toolDefinitions;
  result.segments = segments;
  return result;
}

FoundationModels::Transcript::TextSegment __swiftcall Transcript.TextSegment.init(id:content:)(Swift::String id, Swift::String content)
{
  *v2 = id;
  v2[1] = content;
  result.content = content;
  result.id = id;
  return result;
}

uint64_t Transcript.ImageSegment.init(id:content:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t Transcript.ToolDefinition.init(name:description:parameters:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for Transcript.ToolDefinition(0);
  GenerationSchema.jsonSchema()(a6 + *(v8 + 24));
  return sub_238891FF0(a5, type metadata accessor for GenerationSchema);
}

uint64_t Transcript.Prompt.init(id:segments:options:responseFormat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(type metadata accessor for Transcript.Prompt(0) + 28);
  v13 = type metadata accessor for Transcript.ResponseFormat(0);
  (*(*(v13 - 8) + 56))(a6 + v12, 1, 1, v13);
  v14 = *(a4 + 48);
  *(a6 + 56) = *(a4 + 32);
  *(a6 + 72) = v14;
  *(a6 + 88) = *(a4 + 64);
  v15 = *(a4 + 16);
  *(a6 + 24) = *a4;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 104) = *(a4 + 80);
  *(a6 + 40) = v15;

  return sub_238856608(a5, a6 + v12);
}

uint64_t Transcript.ResponseFormat.init(schema:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (a1 + *(type metadata accessor for GenerationSchema(0) + 20));
  v6 = *v4;
  v5 = v4[1];

  sub_2388C24EC();
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  GenerationSchema.jsonSchema()(a2 + *(v11 + 24));
  result = sub_238891FF0(a1, type metadata accessor for GenerationSchema);
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v8;
  a2[3] = v10;
  return result;
}

unint64_t Transcript.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    v5 = *v2;
    if (*(v5 + 16) > result)
    {
      v6 = *(type metadata accessor for Transcript.Entry(0) - 8);
      return sub_23889777C(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a2, type metadata accessor for Transcript.Entry);
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_2388925BC@<X0>(uint64_t *result@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *result;
    if (v3 < *(*result + 16))
    {
      v6 = *(type metadata accessor for Transcript.Entry(0) - 8);
      return sub_23889777C(v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v3, a3, type metadata accessor for Transcript.Entry);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23889267C(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a3;
  sub_23889777C(a1, v9, type metadata accessor for Transcript.Entry);
  v11 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v11;
  if (result)
  {
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_238895348(v11);
  v11 = result;
  *a2 = result;
  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v10 < v11[2])
  {
    result = sub_23889535C(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10);
    *a2 = v11;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t Transcript.subscript.setter(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (result)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_238895348(v5);
  v5 = result;
  *v2 = result;
  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v5[2] > a2)
  {
    v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
    result = sub_23889535C(a1, v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * a2);
    *v2 = v5;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void (*Transcript.subscript.modify(void *a1, unint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x38uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v9 = *(v8 + 64);
  if (v5)
  {
    v7[2] = swift_coroFrameAlloc();
    result = swift_coroFrameAlloc();
  }

  else
  {
    v7[2] = malloc(*(v8 + 64));
    result = malloc(v9);
  }

  v7[3] = result;
  v11 = *v2;
  v7[4] = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v11 + 16) > a2)
  {
    v12 = *(v8 + 80);
    *(v7 + 12) = v12;
    v13 = v11 + ((v12 + 32) & ~v12);
    v14 = *(v8 + 72);
    v7[5] = v14;
    sub_23889777C(v13 + v14 * a2, result, type metadata accessor for Transcript.Entry);
    return sub_2388929EC;
  }

  __break(1u);
  return result;
}

void sub_2388929EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  if (a2)
  {
    v4 = v2[1];
    sub_23889777C(v2[3], v2[2], type metadata accessor for Transcript.Entry);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v3;
    v6 = v2[4];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = v2[1];
      v6 = sub_238895348(v2[4]);
      *v13 = v6;
    }

    if (v6[2] > *v2)
    {
      v8 = v2[2];
      v7 = v2[3];
      v9 = v2[1];
      sub_23889535C(v8, v6 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * *v2);
      *v9 = v6;
      sub_238891FF0(v7, type metadata accessor for Transcript.Entry);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_13;
  }

  v10 = v2[1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v3;
  v6 = v2[4];
  if ((v11 & 1) == 0)
  {
LABEL_13:
    v14 = v2[1];
    v6 = sub_238895348(v6);
    *v14 = v6;
  }

  if (v6[2] <= *v2)
  {
    __break(1u);
    return;
  }

  v8 = v2[2];
  v7 = v2[3];
  v12 = v2[1];
  sub_23889535C(v7, v6 + ((*(v2 + 48) + 32) & ~*(v2 + 48)) + v2[5] * *v2);
  *v12 = v6;
LABEL_9:
  free(v7);
  free(v8);

  free(v2);
}

uint64_t Transcript.Entry.toolCalls.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v6, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
  }

  else
  {
    result = sub_238891FF0(v6, type metadata accessor for Transcript.Entry);
    v8 = 0;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  return result;
}

uint64_t Transcript.Entry.toolOutput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v6, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 3)
  {
    v8 = *v6;
    v9 = *(v6 + 1);
    v10 = *(v6 + 2);
    v11 = *(v6 + 24);
  }

  else
  {
    result = sub_238891FF0(v6, type metadata accessor for Transcript.Entry);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  return result;
}

uint64_t Transcript.Entry.response.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Transcript.Entry(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23889777C(v2, v6, type metadata accessor for Transcript.Entry);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v8 = *v6;
    v9 = *(v6 + 8);
    v10 = *(v6 + 3);
  }

  else
  {
    result = sub_238891FF0(v6, type metadata accessor for Transcript.Entry);
    v8 = 0;
    v10 = 0;
    v9 = 0uLL;
  }

  *a1 = v8;
  *(a1 + 8) = v9;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_238892E50@<X0>(uint64_t *a1@<X8>)
{
  result = Transcript.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Transcript.Segment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_238892EB0@<X0>(void *a1@<X8>)
{
  v3 = *v1;

  *a1 = v3;
  a1[1] = result;
  return result;
}

uint64_t Transcript.TextSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.TextSegment.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.TextSegment.content.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transcript.TextSegment.content.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Transcript.TextSegment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2388D3368(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2388D3368();
    }
  }

  return result;
}

uint64_t sub_23889309C@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_2388930A8(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2388D3368(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_2388D3368();
    }
  }

  return result;
}

uint64_t Transcript.StructuredSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.StructuredSegment.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.StructuredSegment.source.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transcript.StructuredSegment.source.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_238893288(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_238894590();
  }

  return result;
}

uint64_t Transcript.ImageSegment.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.ImageSegment.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Transcript.ImageSegment.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage, &unk_2388D4468);
  return sub_2388D1348() & 1;
}

uint64_t sub_238893480(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for CGImage(0);
  sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage, &unk_2388D4468);
  return sub_2388D1348() & 1;
}

uint64_t Transcript.Instructions.segments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Transcript.Instructions.toolDefinitions.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Transcript.ToolDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.ToolDefinition.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.ToolDefinition.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transcript.ToolDefinition.description.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t static Transcript.ToolDefinition.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Transcript.ToolDefinition(0);

  return sub_2388D1F48();
}

uint64_t sub_238893804(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_2388D1F48();
}

uint64_t Transcript.Prompt.segments.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

__n128 Transcript.Prompt.options.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  *(a1 + 32) = *(v1 + 56);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 88);
  *(a1 + 80) = *(v1 + 104);
  result = *(v1 + 24);
  v4 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v4;
  return result;
}

__n128 Transcript.Prompt.options.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 56) = *(a1 + 32);
  *(v1 + 72) = v2;
  *(v1 + 88) = *(a1 + 64);
  *(v1 + 104) = *(a1 + 80);
  result = *a1;
  v4 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v4;
  return result;
}

uint64_t Transcript.Prompt.responseFormat.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Transcript.Prompt(0) + 28);

  return sub_238896400(v3, a1);
}

uint64_t Transcript.Prompt.responseFormat.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Transcript.Prompt(0) + 28);

  return sub_238856608(a1, v3);
}

uint64_t Transcript.ResponseFormat.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.ResponseFormat.init<A>(type:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v6 = type metadata accessor for GenerationSchema(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 40))(a1, a2);
  v10 = &v9[*(v7 + 28)];
  v12 = *v10;
  v11 = *(v10 + 1);

  sub_2388C24EC();
  v14 = v13;
  v16 = v15;
  v17 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  GenerationSchema.jsonSchema()(a3 + *(v17 + 24));
  result = sub_238891FF0(v9, type metadata accessor for GenerationSchema);
  *a3 = v12;
  a3[1] = v11;
  a3[2] = v14;
  a3[3] = v16;
  return result;
}

uint64_t Transcript.ToolCalls.init<A>(id:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a5@<X8>)
{
  v8 = *(a3 - 8);
  *a5 = MEMORY[0x28223BE20](a1);
  a5[1] = v10;
  (*(v8 + 16))(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v12);
  v13 = sub_2388D2B28();
  result = (*(v8 + 8))(a2, a3);
  a5[2] = v13;
  return result;
}

unint64_t Transcript.ToolCalls.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(v2 + 16);
    if (*(v3 + 16) > result)
    {
      v4 = v3 + 88 * result;
      v5 = *(v4 + 48);
      v14[0] = *(v4 + 32);
      v14[1] = v5;
      v6 = *(v4 + 64);
      v7 = *(v4 + 80);
      v8 = *(v4 + 96);
      v15 = *(v4 + 112);
      v14[3] = v7;
      v14[4] = v8;
      v14[2] = v6;
      v9 = *(v4 + 48);
      *a2 = *(v4 + 32);
      *(a2 + 16) = v9;
      v10 = *(v4 + 64);
      v11 = *(v4 + 80);
      v12 = *(v4 + 96);
      *(a2 + 80) = *(v4 + 112);
      *(a2 + 48) = v11;
      *(a2 + 64) = v12;
      *(a2 + 32) = v10;
      return sub_238827C78(v14, v13);
    }
  }

  __break(1u);
  return result;
}

uint64_t static Transcript.ToolCalls.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238890EE8(v2, v3);
}

uint64_t sub_238893E10(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238890EE8(v2, v3);
}

unint64_t sub_238893E84(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a6 + 16);
  if (v6 < result || v6 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a3 - result;
  if (a2 >= 1)
  {
    if (v8 < 0 || v8 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v8 <= 0 && v8 > a2)
  {
    return 0;
  }

LABEL_13:
  v9 = __OFADD__(result, a2);
  result += a2;
  if (v9)
  {
    goto LABEL_16;
  }

  if (result > v6)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t sub_238893EF0(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 16);
  if (v4 < result || v4 < a3)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a3 - result;
  if (a2 >= 1)
  {
    if (v6 < 0 || v6 >= a2)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v6 <= 0 && v6 > a2)
  {
    return 0;
  }

LABEL_13:
  v7 = __OFADD__(result, a2);
  result += a2;
  if (v7)
  {
    goto LABEL_16;
  }

  if (result > v4)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_238893F5C@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*(v2 + 16) + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_238893F88(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*(v1 + 16) + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*sub_238893FD8(void (**a1)(uint64_t *a1), unint64_t *a2))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x108uLL);
  }

  v6 = result;
  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v2 + 16);
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 88 * v7;
      v10 = *(v9 + 48);
      *result = *(v9 + 32);
      *(result + 1) = v10;
      v11 = *(v9 + 64);
      v12 = *(v9 + 80);
      v13 = *(v9 + 96);
      *(result + 10) = *(v9 + 112);
      *(result + 3) = v12;
      *(result + 4) = v13;
      *(result + 2) = v11;
      memmove(result + 88, (v9 + 32), 0x58uLL);
      sub_238827C78(v6, v6 + 176);
      return sub_2388940AC;
    }
  }

  __break(1u);
  return result;
}

void sub_2388940AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 136);
  *(v1 + 208) = *(*a1 + 120);
  *(v1 + 224) = v2;
  *(v1 + 240) = *(v1 + 152);
  *(v1 + 256) = *(v1 + 168);
  v3 = *(v1 + 104);
  *(v1 + 176) = *(v1 + 88);
  *(v1 + 192) = v3;
  sub_2388976E4(v1 + 176);

  free(v1);
}

uint64_t *sub_238894110@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], v5 = v2[2], *(v5 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    v6 = v2[1];
    a2[2] = *v2;
    a2[3] = v6;
    a2[4] = v5;
    *a2 = v3;
    a2[1] = v4;
  }

  return result;
}

void sub_238894174(void *a1@<X8>)
{
  v2 = *(*(v1 + 16) + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_2388941A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*(v3 + 16) + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_2388941D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_238893E84(*a1, a2, *a3, *v4, v4[1], v4[2]);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_238894214(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*(v2 + 16) + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t *sub_23889423C(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_238894258(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_238894274(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_238894290@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*(v2 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2388942B4(void *result)
{
  if (*result >= *(*(v1 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

__n128 sub_2388942D8@<Q0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  result = *(v1 + 8);
  *(a1 + 8) = result;
  *(a1 + 24) = 0;
  return result;
}

char *sub_238894304()
{
  v1 = sub_238853BC8(*v0, v0[1], v0[2]);

  return v1;
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV7contentAA16GeneratedContentVvg_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 49);
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  *a1 = v2;
  *(a1 + 8) = v3;
  v7 = *(v1 + 48);
  *(a1 + 16) = v7;
  *(a1 + 17) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  sub_238814698(v2, v3, v7);
}

uint64_t sub_238894418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(a1 + 49);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  *a2 = v3;
  *(a2 + 8) = v2;
  v7 = *(a1 + 48);
  *(a2 + 16) = v7;
  *(a2 + 17) = v4;
  *(a2 + 24) = v5;
  *(a2 + 32) = v6;
  sub_238814698(v3, v2, v7);
}

uint64_t sub_238894470(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 17);
  v6 = *(a1 + 32);
  v12 = *(a1 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a1 + 16);
  v10 = *(a2 + 48);
  sub_238814698(*a1, v4, v9);

  sub_238810DC4(v7, v8, v10);

  *(a2 + 32) = v3;
  *(a2 + 40) = v4;
  *(a2 + 48) = v9;
  *(a2 + 49) = v5;
  *(a2 + 56) = v12;
  *(a2 + 64) = v6;
  return sub_238894590();
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV7contentAA16GeneratedContentVvs_0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);
  v6 = a1[3];
  v7 = a1[4];
  sub_238810DC4(*(v1 + 32), *(v1 + 40), *(v1 + 48));

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 49) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v7;
  return sub_238894590();
}

uint64_t sub_238894590()
{
  v1 = v0;
  v2 = sub_2388D0D88();
  MEMORY[0x28223BE20](v2);
  v9 = *(v0 + 40);
  v10 = *(v0 + 32);
  v3 = *(v0 + 48);
  sub_2388D0DC8();
  swift_allocObject();
  v4 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  *(swift_allocObject() + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  sub_2388963B8(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v5 = sub_238819C1C(v10, v9, v3, v4);
  v7 = v6;

  *(v1 + 72) = v5;
  *(v1 + 80) = v7;
  return result;
}

uint64_t _s16FoundationModels10TranscriptV17StructuredSegmentV2id6source7contentAESS_SSAA16GeneratedContentVtcfC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = sub_2388D0D88();
  v27[1] = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a5;
  v14 = *(a5 + 8);
  v15 = *(a5 + 16);
  v16 = *(a5 + 17);
  v29 = v16;
  v17 = *(a5 + 24);
  v18 = *(a5 + 32);
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v13;
  *(a6 + 40) = v14;
  v19 = v13;
  v28 = v13;
  *(a6 + 48) = v15;
  *(a6 + 49) = v16;
  *(a6 + 56) = v17;
  *(a6 + 64) = v18;
  v30 = v18;
  sub_2388D0DC8();
  swift_allocObject();
  sub_238814698(v19, v14, v15);

  v20 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v33 = v21;
  sub_2388963B8(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v22 = v28;
  v23 = sub_238819C1C(v28, v14, v15, v20);
  v25 = v24;

  sub_238810DC4(v22, v14, v15);

  *(a6 + 72) = v23;
  *(a6 + 80) = v25;
  return result;
}

uint64_t Transcript.ToolOutput.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transcript.ToolOutput.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Transcript.ToolOutput.toolName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transcript.ToolOutput.toolName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Transcript.ToolOutput.segments.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

void __swiftcall Transcript.ToolOutput.init(id:toolName:segments:)(FoundationModels::Transcript::ToolOutput *__return_ptr retstr, Swift::String id, Swift::String toolName, Swift::OpaquePointer segments)
{
  retstr->id = id;
  retstr->toolName = toolName;
  retstr->segments = segments;
}

uint64_t static Transcript.ToolOutput.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238891144(v3, v7);
}

uint64_t sub_238894CC0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (!v8 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v9 = v2 == v5 && v4 == v6;
  if (!v9 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  return sub_238891144(v3, v7);
}

uint64_t sub_238894E08(uint64_t *a1, void *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = a1[2];
  v6 = a1[3];
  v8 = a2[2];
  v7 = a2[3];
  v9 = *a1 == *a2 && a1[1] == a2[1];
  if (!v9 && (sub_2388D3368() & 1) == 0 || (a3(v5, v8) & 1) == 0)
  {
    return 0;
  }

  return a4(v6, v7);
}

uint64_t sub_238894EF4(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a1[2];
  v8 = a1[3];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  if (!v11 && (sub_2388D3368() & 1) == 0 || (a5(v7, v10) & 1) == 0)
  {
    return 0;
  }

  return a6(v8, v9);
}

void *sub_238894FCC@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *sub_238894FF8(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_238895040(uint64_t (**a1)(), unint64_t *a2))()
{
  v5 = *(type metadata accessor for Transcript.Entry(0) - 8);
  if (MEMORY[0x277D84FD8])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(*(v5 + 64));
  }

  *a1 = result;
  v7 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v7 < *(*v2 + 16))
  {
    sub_23889777C(*v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v7, result, type metadata accessor for Transcript.Entry);
    return sub_238895150;
  }

  __break(1u);
  return result;
}

void sub_238895150(uint64_t *a1)
{
  v1 = *a1;
  sub_238891FF0(*a1, type metadata accessor for Transcript.Entry);

  free(v1);
}

uint64_t *sub_2388951A0@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

void sub_2388951CC(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *sub_2388951F0@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_23889521C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_238893EF0(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *sub_238895258(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *sub_238895280@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_2388952A4(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_2388952E0()
{
  v1 = sub_238853C84(*v0);

  return v1;
}

uint64_t sub_23889535C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s16FoundationModels10TranscriptV7SegmentO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  *&v31[16] = a1[2];
  *v32 = v2;
  v4 = a1[3];
  *&v32[16] = a1[4];
  v5 = a1[1];
  v30 = *a1;
  *v31 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v35 = a2[2];
  *v36 = v6;
  v8 = a2[3];
  *&v36[16] = a2[4];
  v9 = a2[1];
  v33 = *a2;
  v34 = v9;
  v37[2] = *&v31[16];
  v37[3] = v4;
  v37[4] = a1[4];
  v37[0] = v30;
  v37[1] = v3;
  v43 = a2[4];
  v42 = v8;
  v41 = v35;
  v39 = v33;
  *&v32[32] = *(a1 + 10);
  *&v36[32] = *(a2 + 10);
  v10 = *(a2 + 10);
  v38 = *(a1 + 10);
  v44 = v10;
  v40 = v7;
  v12 = *(&v5 + 1);
  v11 = v5;
  if (!(*v32 >> 62))
  {
    if (*v36 >> 62)
    {
      goto LABEL_15;
    }

    if (v30 != v33)
    {
      v14 = sub_2388D3368();
      v12 = *&v31[8];
      if ((v14 & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (__PAIR128__(v12, v11) == v34)
    {
      sub_2388977E4(&v33, &v23);
      sub_2388977E4(&v30, &v23);
      sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
      v13 = 1;
      return v13 & 1;
    }

    v17 = sub_2388D3368();
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    if (v17)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  if (*v32 >> 62 != 1)
  {
    if (*v36 >> 62 != 2 || v30 != v33 && (sub_2388D3368() & 1) == 0)
    {
      goto LABEL_15;
    }

    type metadata accessor for CGImage(0);
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_2388963B8(&qword_27DF30F68, type metadata accessor for CGImage, &unk_2388D4468);
    v15 = sub_2388D1348();
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    sub_238840EF8(&v33);
    sub_238840EF8(&v30);
    if (v15)
    {
LABEL_19:
      v13 = 1;
      return v13 & 1;
    }

LABEL_16:
    v13 = 0;
    return v13 & 1;
  }

  if (*v36 >> 62 != 1)
  {
LABEL_15:
    sub_2388977E4(&v33, &v23);
    sub_2388977E4(&v30, &v23);
    sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
    goto LABEL_16;
  }

  v23 = v30;
  v25 = *&v31[8];
  v24 = *v31;
  v26 = *&v31[24];
  v27 = *v32 & 0x3FFFFFFFFFFFFFFFLL;
  v28 = *&v32[8];
  v29 = *&v32[24];
  v19[0] = v33;
  v19[1] = v34;
  v19[2] = v35;
  v20 = *v36 & 0x3FFFFFFFFFFFFFFFLL;
  v21 = *&v36[8];
  v22 = *&v36[24];
  sub_2388977E4(&v33, v18);
  sub_2388977E4(&v30, v18);
  sub_2388977E4(&v33, v18);
  sub_2388977E4(&v30, v18);
  v13 = sub_238896470(&v23, v19);
  sub_238827E88(v37, &qword_27DF310A8, &qword_2388D9DC0);
  sub_238840EF8(&v33);
  sub_238840EF8(&v30);
  return v13 & 1;
}

uint64_t sub_238895764(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (v6)
    {
      v7 = a1[2] == a2[2] && v5 == v6;
      if (v7 || (sub_2388D3368() & 1) != 0)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_13:
  type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);

  return sub_2388D1F48();
}

BOOL _s16FoundationModels10TranscriptV14ResponseFormatV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_2388D3368() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  return (sub_2388D1F48() & 1) != 0;
}

uint64_t _s16FoundationModels10TranscriptV6PromptV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v26 - v9);
  v11 = sub_238810E44(&qword_27DF310A0, &qword_2388D9DB8);
  MEMORY[0x28223BE20](v11);
  v13 = v26 - v12;
  if (*a1 != *a2 && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  if ((sub_238891144(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 72);
  v28[2] = *(a1 + 56);
  v28[3] = v14;
  v28[4] = *(a1 + 88);
  v29 = *(a1 + 104);
  v15 = *(a1 + 40);
  v28[0] = *(a1 + 24);
  v28[1] = v15;
  v16 = *(a2 + 72);
  v26[2] = *(a2 + 56);
  v26[3] = v16;
  v26[4] = *(a2 + 88);
  v27 = *(a2 + 104);
  v17 = *(a2 + 40);
  v26[0] = *(a2 + 24);
  v26[1] = v17;
  if ((_s16FoundationModels17GenerationOptionsV2eeoiySbAC_ACtFZ_0(v28, v26) & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Transcript.Prompt(0) + 28);
  v19 = *(v11 + 48);
  sub_238896400(a1 + v18, v13);
  sub_238896400(a2 + v18, &v13[v19]);
  v20 = *(v5 + 48);
  if (v20(v13, 1, v4) == 1)
  {
    if (v20(&v13[v19], 1, v4) == 1)
    {
LABEL_7:
      sub_238827E88(v13, &qword_27DF2FF00, &qword_2388D57E0);
      return 1;
    }

    goto LABEL_10;
  }

  sub_238896400(v13, v10);
  if (v20(&v13[v19], 1, v4) != 1)
  {
    sub_238897714(&v13[v19], v7, type metadata accessor for Transcript.ResponseFormat);
    if ((*v10 != *v7 || v10[1] != v7[1]) && (sub_2388D3368() & 1) == 0)
    {
      goto LABEL_23;
    }

    v24 = v10[3];
    v25 = v7[3];
    if (v24)
    {
      if (!v25 || (v10[2] != v7[2] || v24 != v25) && (sub_2388D3368() & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (v25)
    {
LABEL_23:
      sub_238891FF0(v7, type metadata accessor for Transcript.ResponseFormat);
      sub_238891FF0(v10, type metadata accessor for Transcript.ResponseFormat);
      v22 = &qword_27DF2FF00;
      v23 = &qword_2388D57E0;
      goto LABEL_24;
    }

    type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
    if (sub_2388D1F48())
    {
      sub_238891FF0(v7, type metadata accessor for Transcript.ResponseFormat);
      sub_238891FF0(v10, type metadata accessor for Transcript.ResponseFormat);
      goto LABEL_7;
    }

    goto LABEL_23;
  }

  sub_238891FF0(v10, type metadata accessor for Transcript.ResponseFormat);
LABEL_10:
  v22 = &qword_27DF310A0;
  v23 = &qword_2388D9DB8;
LABEL_24:
  sub_238827E88(v13, v22, v23);
  return 0;
}

uint64_t _s16FoundationModels10TranscriptV5EntryO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v70 = a2;
  v3 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v69 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (&v69 - v14);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v69 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = (&v69 - v19);
  v21 = sub_238810E44(&qword_27DF310B0, &qword_2388D9DC8);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = (&v69 + *(v22 + 56) - v23);
  v25 = a1;
  v26 = &v69 - v23;
  sub_23889777C(v25, &v69 - v23, type metadata accessor for Transcript.Entry);
  sub_23889777C(v70, v24, type metadata accessor for Transcript.Entry);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_23889777C(v26, v18, type metadata accessor for Transcript.Entry);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_238897714(v24, v5, type metadata accessor for Transcript.Prompt);
        v67 = _s16FoundationModels10TranscriptV6PromptV2eeoiySbAE_AEtFZ_0(v18, v5);
        sub_238891FF0(v5, type metadata accessor for Transcript.Prompt);
        sub_238891FF0(v18, type metadata accessor for Transcript.Prompt);
        sub_238891FF0(v26, type metadata accessor for Transcript.Entry);
        return v67 & 1;
      }

      sub_238891FF0(v18, type metadata accessor for Transcript.Prompt);
      goto LABEL_55;
    }

    sub_23889777C(v26, v20, type metadata accessor for Transcript.Entry);
    v44 = *v20;
    v43 = v20[1];
    v45 = v20[2];
    v46 = v20[3];
    if (!swift_getEnumCaseMultiPayload())
    {
      v48 = v24[2];
      v47 = v24[3];
      v49 = v44 == *v24 && v43 == v24[1];
      if (v49 || (sub_2388D3368()) && (sub_238891144(v45, v48))
      {
        v50 = sub_238891780(v46, v47);
        goto LABEL_42;
      }

      goto LABEL_48;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_23889777C(v26, v15, type metadata accessor for Transcript.Entry);
    v52 = *v15;
    v51 = v15[1];
    v53 = v15[2];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v54 = *v24;
      v55 = v24[1];
      v56 = v24[2];
      v57 = v52 == v54 && v51 == v55;
      if (v57 || (sub_2388D3368() & 1) != 0)
      {
        v58 = sub_238890EE8(v53, v56);

        if (v58)
        {
LABEL_43:
          v42 = v26;
          goto LABEL_44;
        }

LABEL_50:
        sub_238891FF0(v26, type metadata accessor for Transcript.Entry);
LABEL_56:
        v67 = 0;
        return v67 & 1;
      }

LABEL_49:

      goto LABEL_50;
    }

LABEL_52:

LABEL_55:
    sub_238827E88(v26, &qword_27DF310B0, &qword_2388D9DC8);
    goto LABEL_56;
  }

  if (EnumCaseMultiPayload != 3)
  {
    sub_23889777C(v26, v9, type metadata accessor for Transcript.Entry);
    v60 = *v9;
    v59 = v9[1];
    v61 = v9[2];
    v62 = v9[3];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v64 = v24[2];
      v63 = v24[3];
      v65 = v60 == *v24 && v59 == v24[1];
      if (v65 || (sub_2388D3368()) && (sub_238890BFC(v61, v64))
      {
        v50 = sub_238891144(v62, v63);
LABEL_42:
        v66 = v50;

        if (v66)
        {
          goto LABEL_43;
        }

        goto LABEL_50;
      }

LABEL_48:

      goto LABEL_49;
    }

LABEL_45:

    goto LABEL_52;
  }

  v28 = v26;
  sub_23889777C(v26, v12, type metadata accessor for Transcript.Entry);
  v30 = *v12;
  v29 = v12[1];
  v32 = v12[2];
  v31 = v12[3];
  v33 = v12[4];
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v26 = v28;
    goto LABEL_55;
  }

  v34 = *v24;
  v35 = v24[1];
  v37 = v24[2];
  v36 = v24[3];
  v38 = v24[4];
  v39 = v30 == v34 && v29 == v35;
  if (!v39 && (sub_2388D3368() & 1) == 0 || (v32 == v37 ? (v40 = v31 == v36) : (v40 = 0), !v40 && (sub_2388D3368() & 1) == 0))
  {

    goto LABEL_59;
  }

  v41 = sub_238891144(v33, v38);

  if ((v41 & 1) == 0)
  {
LABEL_59:
    sub_238891FF0(v28, type metadata accessor for Transcript.Entry);
    goto LABEL_56;
  }

  v42 = v28;
LABEL_44:
  sub_238891FF0(v42, type metadata accessor for Transcript.Entry);
  v67 = 1;
  return v67 & 1;
}

uint64_t sub_2388963B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238896400(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238896470(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[5];
  v5 = *(a1 + 48);
  v21 = *(a1 + 49);
  v20 = a1[7];
  v22 = a1[4];
  v23 = a1[8];
  v16 = a1[10];
  v17 = a1[9];
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v8 = *(a2 + 40);
  v10 = *(a2 + 48);
  v19 = *(a2 + 49);
  v11 = *(a2 + 64);
  v18 = *(a2 + 56);
  v14 = *(a2 + 80);
  v15 = *(a2 + 72);
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  if ((v2 != v6 || v3 != v7) && (sub_2388D3368() & 1) == 0)
  {
    return 0;
  }

  v30 = v22;
  v31 = v4;
  v32 = v5;
  v33 = v21;
  v34 = v20;
  v35 = v23;
  v24 = v9;
  v25 = v8;
  v26 = v10;
  v27 = v19;
  v28 = v18;
  v29 = v11;
  sub_238814698(v22, v4, v5);

  sub_238814698(v9, v8, v10);

  v12 = _s16FoundationModels16GeneratedContentV2eeoiySbAC_ACtFZ_0(&v30, &v24);
  sub_238810DC4(v24, v25, v26);

  sub_238810DC4(v30, v31, v32);

  if (!v12)
  {
    return 0;
  }

  if (v17 == v15 && v16 == v14)
  {
    return 1;
  }

  return sub_2388D3368();
}

unint64_t sub_23889666C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30F70;
  if (!qword_27DF30F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F70);
  }

  return result;
}

unint64_t sub_2388966F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30F88;
  if (!qword_27DF30F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30F88);
  }

  return result;
}

unint64_t sub_238896790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30FA0;
  if (!qword_27DF30FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FA0);
  }

  return result;
}

unint64_t sub_2388967E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30FA8;
  if (!qword_27DF30FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FA8);
  }

  return result;
}

uint64_t sub_2388968B8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF30F98, &qword_2388D9350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30FC0;
  if (!qword_27DF30FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FC0);
  }

  return result;
}

uint64_t sub_2388969C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_238810E8C(&qword_27DF30F80, &qword_2388D9348);
    sub_2388966F4(v4, v5, v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF30FE8;
  if (!qword_27DF30FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF30FE8);
  }

  return result;
}

uint64_t sub_238896B68(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF30FF8, &qword_2388D96A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238896BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31000;
  if (!qword_27DF31000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31000);
  }

  return result;
}

unint64_t sub_238896C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31008;
  if (!qword_27DF31008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31008);
  }

  return result;
}

unint64_t sub_238896CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31018;
  if (!qword_27DF31018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31018);
  }

  return result;
}

uint64_t sub_238896E0C(uint64_t a1)
{
  result = type metadata accessor for Transcript.Prompt(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_238896EA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_238896EC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 48) >> 4) & 0xFFFFFFE0 | (*(a1 + 48) >> 3);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_238896F18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 88) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      *(a1 + 48) = (16 * -a2) & 0xFFFFFFE00 | (8 * (-a2 & 0x1FLL));
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      return result;
    }

    *(a1 + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_238897060(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238897130(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388971E0(uint64_t a1)
{
  sub_23889763C(319, &qword_27DF31068, &type metadata for Transcript.Segment, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2388972A0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2388972A0(uint64_t a1)
{
  if (!qword_27DF31070)
  {
    type metadata accessor for Transcript.ResponseFormat(255);
    v1 = sub_2388D2E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF31070);
    }
  }
}

uint64_t sub_23889730C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23889738C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2388973FC(uint64_t a1)
{
  result = type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238897488(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2388974D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_23889758C(uint64_t a1)
{
  sub_23889763C(319, &qword_27DF30088, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_2388D2178();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23889763C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_238897690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31098;
  if (!qword_27DF31098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31098);
  }

  return result;
}

uint64_t sub_238897714(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23889777C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388978D4(void (*a1)(uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for Transcript.Entry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v21 = MEMORY[0x277D84F90];
    sub_2388B8324(0, v10, 0);
    v11 = v21;
    v17 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a3 + v17;
    v13 = *(v7 + 72);
    while (1)
    {
      v18(v12, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v21 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2388B8324((v14 > 1), v15 + 1, 1);
        v11 = v21;
      }

      *(v11 + 16) = v15 + 1;
      sub_2388A2F00(v9, v11 + v17 + v15 * v13, type metadata accessor for Transcript.Entry);
      v12 += v13;
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_238897A80(void (*a1)(void *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v23 = MEMORY[0x277D84F90];
  sub_2388B8368(0, v4, 0);
  v5 = v23;
  v7 = *(type metadata accessor for Transcript.Entry(0) - 8);
  v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v18 = *(v7 + 72);
  while (1)
  {
    a1(v20, v8);
    if (v3)
    {
      break;
    }

    v9 = v20[0];
    v10 = v20[1];
    v11 = v21;
    v12 = v22;
    v23 = v5;
    v14 = *(v5 + 16);
    v13 = *(v5 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      sub_2388B8368((v13 > 1), v14 + 1, 1);
      v11 = v17;
      v5 = v23;
    }

    *(v5 + 16) = v14 + 1;
    v15 = v5 + 40 * v14;
    *(v15 + 32) = v9;
    *(v15 + 40) = v10;
    *(v15 + 48) = v11;
    *(v15 + 64) = v12;
    v8 += v18;
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238897C08(void (*a1)(void *__return_ptr), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = MEMORY[0x277D84F90];
    sub_2388B81C4(0, v4, 0);
    v5 = v27;
    v8 = *(type metadata accessor for TranscriptCoderV1.Content(0) - 8);
    v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v10 = *(v8 + 72);
    (a1)(v25, a3 + v9, &v24);
    if (v3)
    {
    }

    else
    {
      for (i = a3 + v10 + v9; ; i = v16)
      {
        v23 = v26;
        v21 = v25[3];
        v22 = v25[4];
        v19 = v25[1];
        v20 = v25[2];
        v18 = v25[0];
        v27 = v5;
        v14 = *(v5 + 16);
        v13 = *(v5 + 24);
        if (v14 >= v13 >> 1)
        {
          v17 = i;
          sub_2388B81C4((v13 > 1), v14 + 1, 1);
          i = v17;
          v5 = v27;
        }

        *(v5 + 16) = v14 + 1;
        v15 = v5 + 88 * v14;
        *(v15 + 32) = v18;
        *(v15 + 48) = v19;
        *(v15 + 112) = v23;
        *(v15 + 80) = v21;
        *(v15 + 96) = v22;
        *(v15 + 64) = v20;
        if (!--v4)
        {
          break;
        }

        v16 = i + v10;
        a1(v25);
      }
    }
  }

  return v5;
}

uint64_t sub_238897DD4(void (*a1)(void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for DynamicGenerationSchema.Property(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2388B7FF0(0, v10, 0);
    v11 = v22;
    for (i = (a3 + 40); ; i += 2)
    {
      v13 = *i;
      v21[0] = *(i - 1);
      v21[1] = v13;

      v18(v21, &v20);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v22 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2388B7FF0((v14 > 1), v15 + 1, 1);
        v11 = v22;
      }

      *(v11 + 16) = v15 + 1;
      sub_2388A2F00(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for DynamicGenerationSchema.Property);
      if (!--v10)
      {
        return v11;
      }
    }
  }

  return v11;
}

uint64_t sub_238897F98(void (*a1)(_OWORD *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v45 = a2;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v44 = MEMORY[0x277D84F90];
  sub_2388B81C4(0, v5, 0);
  v6 = v44;
  v9 = a3 + 32;
  for (i = v5 - 1; ; --i)
  {
    v11 = *(v9 + 48);
    v12 = *(v9 + 16);
    v40 = *(v9 + 32);
    v41 = v11;
    v13 = *(v9 + 48);
    v42 = *(v9 + 64);
    v14 = *(v9 + 16);
    v39[0] = *v9;
    v39[1] = v14;
    v33 = v40;
    v34 = v13;
    v35 = *(v9 + 64);
    v43 = *(v9 + 80);
    v36 = *(v9 + 80);
    v31 = v39[0];
    v32 = v12;
    sub_2388977E4(v39, &v25);
    a1(v37, &v31);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v23[2] = v33;
    v23[3] = v34;
    v23[4] = v35;
    v24 = v36;
    v23[0] = v31;
    v23[1] = v32;
    sub_238840EF8(v23);
    v30 = v38;
    v28 = v37[3];
    v29 = v37[4];
    v26 = v37[1];
    v27 = v37[2];
    v25 = v37[0];
    v44 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_2388B81C4((v15 > 1), v16 + 1, 1);
      v6 = v44;
    }

    *(v6 + 16) = v16 + 1;
    v17 = v6 + 88 * v16;
    v18 = v26;
    *(v17 + 32) = v25;
    *(v17 + 48) = v18;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    *(v17 + 112) = v30;
    *(v17 + 80) = v20;
    *(v17 + 96) = v21;
    *(v17 + 64) = v19;
    if (!i)
    {
      return v6;
    }

    v9 += 88;
  }

  v27 = v33;
  v28 = v34;
  v29 = v35;
  v30 = v36;
  v25 = v31;
  v26 = v32;
  sub_238840EF8(&v25);

  __break(1u);
  return result;
}

uint64_t sub_238898184(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000006CLL;
  v3 = 0x7566706C65686E75;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000002388DE0B0;
    v12 = 0xD00000000000001ELL;
    if (a1 == 6)
    {
      v12 = 0xD000000000000011;
    }

    else
    {
      v11 = 0x80000002388DE0D0;
    }

    v13 = 0x80000002388DE070;
    v14 = 0xD000000000000012;
    if (a1 == 4)
    {
      v14 = 0xD000000000000010;
    }

    else
    {
      v13 = 0x80000002388DE090;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000002388DE040;
    v6 = 0xD000000000000018;
    if (a1 != 2)
    {
      v6 = 0x636572726F636E69;
      v5 = 0xE900000000000074;
    }

    v7 = 0x6F627265566F6F74;
    v8 = 0xEA00000000006573;
    if (!a1)
    {
      v7 = 0x7566706C65686E75;
      v8 = 0xE90000000000006CLL;
    }

    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000002388DE0B0;
        if (v9 != 0xD000000000000011)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v2 = 0x80000002388DE0D0;
        if (v9 != 0xD00000000000001ELL)
        {
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v2 = 0x80000002388DE070;
      if (v9 != 0xD000000000000010)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0x80000002388DE090;
      if (v9 != 0xD000000000000012)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v2 = 0x80000002388DE040;
        if (v9 != 0xD000000000000018)
        {
          goto LABEL_46;
        }

        goto LABEL_43;
      }

      v3 = 0x636572726F636E69;
      v2 = 0xE900000000000074;
    }

    else if (a2)
    {
      v2 = 0xEA00000000006573;
      if (v9 != 0x6F627265566F6F74)
      {
        goto LABEL_46;
      }

      goto LABEL_43;
    }

    if (v9 != v3)
    {
LABEL_46:
      v15 = sub_2388D3368();
      goto LABEL_47;
    }
  }

LABEL_43:
  if (v10 != v2)
  {
    goto LABEL_46;
  }

  v15 = 1;
LABEL_47:

  return v15 & 1;
}

uint64_t sub_2388983F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x65736E6F70736572;
    }

    else
    {
      v5 = 1819242356;
    }

    if (v4 == 2)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 1919251317;
    }

    else
    {
      v5 = 0x7463757274736E69;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEC000000736E6F69;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x65736E6F70736572;
  if (a2 != 2)
  {
    v8 = 1819242356;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 1919251317;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_23889851C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x65736E6F70736572;
    v10 = 0xEF74616D726F665FLL;
    if (a1 != 6)
    {
      v9 = 0x6D6165727473;
      v10 = 0xE600000000000000;
    }

    v11 = 0xD000000000000015;
    v12 = 0x80000002388DDE70;
    if (a1 != 4)
    {
      v11 = 0x736C6F6F74;
      v12 = 0xE500000000000000;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x74617265706D6574;
    v5 = 0xEB00000000657275;
    if (a1 != 2)
    {
      v4 = 0x705F706F74;
      v5 = 0xE500000000000000;
    }

    v6 = 0x736567617373656DLL;
    if (a1)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v6 = 0x6C65646F6DLL;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEF74616D726F665FLL;
        if (v7 != 0x65736E6F70736572)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE600000000000000;
        if (v7 != 0x6D6165727473)
        {
LABEL_47:
          v14 = sub_2388D3368();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x80000002388DDE70;
      if (v7 != 0xD000000000000015)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x736C6F6F74)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEB00000000657275;
      if (v7 != 0x74617265706D6574)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE500000000000000;
      if (v7 != 0x705F706F74)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x736567617373656DLL)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x6C65646F6DLL)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_2388987A8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6D6574737973;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1919251317;
    }

    else
    {
      v5 = 0x6D6574737973;
    }

    if (v3)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x6E61747369737361;
    v4 = 0xE900000000000074;
  }

  else if (a1 == 3)
  {
    v4 = 0xE800000000000000;
    v5 = 0x6E6F6974636E7566;
  }

  else
  {
    v4 = 0xE400000000000000;
    v5 = 1819242356;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE600000000000000;
    v7 = 0xE400000000000000;
    v8 = 1919251317;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x6E61747369737361;
    v6 = 0xE900000000000074;
    v7 = 0xE800000000000000;
    v8 = 0x6E6F6974636E7566;
    if (a2 != 3)
    {
      v8 = 1819242356;
      v7 = 0xE400000000000000;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v7;
  }

  if (v5 == v10 && v4 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2388D3368();
  }

  return v12 & 1;
}

uint64_t sub_238898908(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701605234;
  v3 = a1;
  if (a1 > 1u)
  {
    v4 = 0x6C61635F6C6F6F74;
    if (v3 == 2)
    {
      v5 = 0xEA0000000000736CLL;
    }

    else
    {
      v5 = 0xEC00000064695F6CLL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 1701605234;
    }

    if (v3)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xEA0000000000736CLL;
  if (a2 != 2)
  {
    v7 = 0xEC00000064695F6CLL;
  }

  if (a2)
  {
    v2 = 0x746E65746E6F63;
    v6 = 0xE700000000000000;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = 0x6C61635F6C6F6F74;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2388D3368();
  }

  return v10 & 1;
}

uint64_t sub_238898ADC@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2388D3138();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_238898B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238898E58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238898B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_238898E58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t Transcript.init(from:)@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v5 = sub_238810E44(&qword_27DF310B8, &qword_2388D9DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_238898E58(v9, v10, v11);
  sub_2388D3538();
  if (!v2)
  {
    v12 = sub_2388D31E8();
    if (v12 == 1)
    {
      sub_238898EAC(a1, &v20);
      (*(v6 + 8))(v8, v5);
      *a2 = v20;
    }

    else
    {
      v18 = v12;
      v13 = sub_2388D2FF8();
      swift_allocError();
      v19 = v14;
      sub_238815878(a1, a1[3]);
      sub_2388D3508();
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_2388D2FA8();

      v20 = 0xD000000000000020;
      v21 = 0x80000002388DF820;
      v22 = v18;
      v15 = sub_2388D32F8();
      MEMORY[0x23EE66C20](v15);

      v16 = v19;
      sub_2388D2FD8();
      (*(*(v13 - 8) + 104))(v16, *MEMORY[0x277D84168], v13);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
    }
  }

  return sub_2388158BC(a1);
}

unint64_t sub_238898E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310C0;
  if (!qword_27DF310C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310C0);
  }

  return result;
}

uint64_t sub_238898EAC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = sub_238810E44(&qword_27DF311E0, &qword_2388D9FD0);
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v26 - v5;
  v7 = sub_238810E44(&qword_27DF311E8, &qword_2388D9FD8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  v11 = sub_238815878(a1, a1[3]);
  sub_2388A34DC(v11, v12, v13);
  result = sub_2388D3538();
  if (!v2)
  {
    v15 = v6;
    v16 = v28;
    LOBYTE(v29) = 1;
    v17 = sub_2388D31D8();
    v19 = v17 == 0xD00000000000001BLL && 0x80000002388DF870 == v18;
    if (v19 || (v20 = v17, v21 = v18, (sub_2388D3368() & 1) != 0))
    {

      LOBYTE(v29) = 2;
      sub_2388A3530(v22, v23, v24);
      sub_2388D3168();
      sub_2388D3158();
      v25 = sub_23889D22C(&v29);
      sub_2388158BC(&v29);
      (*(v27 + 8))(v15, v4);
      result = (*(v8 + 8))(v10, v7);
      *v16 = v25;
    }

    else
    {
      v31 = 1;
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_2388D2FA8();

      v29 = 0xD000000000000015;
      v30 = 0x80000002388DF890;
      MEMORY[0x23EE66C20](v20, v21);

      sub_2388D2FF8();
      swift_allocError();
      sub_238815180(&qword_27DF311F0, &qword_27DF311E8, &qword_2388D9FD8, MEMORY[0x277D844D0]);
      sub_2388D2FC8();

      swift_willThrow();
      return (*(v8 + 8))(v10, v7);
    }
  }

  return result;
}

uint64_t sub_23889931C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736E6F6974706FLL;
    v6 = 0x737465737361;
    if (a1 != 8)
    {
      v6 = 0x65736E6F70736572;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6C6C61436C6F6F74;
    if (a1 != 5)
    {
      v7 = 0x656D614E6C6F6F74;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x73746E65746E6F63;
    v3 = 0x736C6F6F74;
    if (a1 != 3)
    {
      v3 = 0x6C6C61436C6F6F74;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701605234;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_238899498(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701869940;
  if (v2 != 1)
  {
    v4 = 0x697263736E617274;
    v3 = 0xEA00000000007470;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E6F6973726576;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701869940;
  if (*a2 != 1)
  {
    v8 = 0x697263736E617274;
    v7 = 0xEA00000000007470;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E6F6973726576;
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
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_238899594()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899634(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_2388996C0()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_23889975C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388A43E4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23889978C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701869940;
  if (v2 != 1)
  {
    v5 = 0x697263736E617274;
    v4 = 0xEA00000000007470;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E6F6973726576;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2388997E8()
{
  v1 = 1701869940;
  if (*v0 != 1)
  {
    v1 = 0x697263736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

unint64_t sub_238899840@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A43E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238899868(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A34DC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2388998A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A34DC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2388998F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_23889996C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2388D34A8();
  sub_2388D2938();
  return sub_2388D34E8();
}

uint64_t sub_2388999C0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2388D3138();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_238899A44@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2388D3138();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_238899A9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A3530(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238899AD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A3530(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238899B14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_23889931C(*a1);
  v5 = v4;
  if (v3 == sub_23889931C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2388D3368();
  }

  return v8 & 1;
}

uint64_t sub_238899B9C()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23889931C(v1);
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899C00(uint64_t a1)
{
  sub_23889931C(*v1);
  sub_2388D2938();
}

uint64_t sub_238899C54()
{
  v1 = *v0;
  sub_2388D34A8();
  sub_23889931C(v1);
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_238899CB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388A4430(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_238899CE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23889931C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_238899D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2388A4430(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_238899D60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A2D18(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_238899D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A2D18(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_238899DE4()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_238899E9C(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_238899F40()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_238899FF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388A4684(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23889A024(uint64_t *a1@<X8>)
{
  v2 = 0xEC000000736E6F69;
  v3 = 0x7463757274736E69;
  v4 = 0xE800000000000000;
  v5 = 0x65736E6F70736572;
  if (*v1 != 2)
  {
    v5 = 1819242356;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 1919251317;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_23889A148(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF31328, &qword_2388DAA20);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v21 - v7;
  v9 = sub_238815878(a1, a1[3]);
  sub_2388A44D0(v9, v10, v11);
  sub_2388D3568();
  LOBYTE(v21[0]) = 0;
  v12 = sub_2388D3298();
  if (!v2)
  {
    LOBYTE(v21[0]) = *(v3 + 16);
    v23 = 1;
    sub_2388A5444(v12, v13, v14);
    sub_2388D32C8();
    LOBYTE(v21[0]) = 2;
    v15 = sub_2388D3238();
    v16 = *(v3 + 72);
    v17 = *(v3 + 56);
    v21[0] = *(v3 + 40);
    v21[1] = v17;
    v22 = v16;
    v23 = 3;
    sub_2388A5498(v15, v18, v19);
    sub_2388D3278();
    type metadata accessor for TranscriptCoderV1.Content(0);
    LOBYTE(v21[0]) = 4;
    sub_2388D0F58();
    sub_2388A2EA0(&qword_27DF30A20, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_2388D3278();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23889A3B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v4 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v36 - v5;
  v7 = sub_238810E44(&qword_27DF312B8, &qword_2388DA9F8);
  v39 = *(v7 - 8);
  v40 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = type metadata accessor for TranscriptCoderV1.Content(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 40);
  v15 = sub_2388D0F58();
  v16 = *(*(v15 - 8) + 56);
  v42 = v14;
  v17 = v13;
  v16(&v13[v14], 1, 1, v15);
  v18 = sub_238815878(a1, a1[3]);
  sub_2388A44D0(v18, v19, v20);
  v41 = v9;
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(a1);
    return sub_238827E88(&v13[v42], &qword_27DF30608, &qword_2388D6690);
  }

  else
  {
    v37 = v6;
    v22 = v39;
    v21 = v40;
    LOBYTE(v43) = 0;
    v23 = sub_2388D31D8();
    *v17 = v23;
    *(v17 + 1) = v24;
    v36[4] = v24;
    v49 = 1;
    sub_2388A4524(v23, v24, v25);
    sub_2388D31F8();
    v17[16] = v43;
    LOBYTE(v43) = 2;
    v26 = sub_2388D3178();
    v27 = v17;
    *(v17 + 3) = v26;
    *(v17 + 4) = v28;
    v49 = 3;
    sub_2388A45C8(v26, v28, v29);
    sub_2388D31B8();
    v30 = v44;
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v36[2] = v44;
    v36[3] = v43;
    *(v17 + 5) = v43;
    *(v17 + 6) = v30;
    v36[0] = v32;
    v36[1] = v31;
    *(v17 + 7) = v31;
    *(v17 + 8) = v32;
    v48 = v33;
    v17[72] = v33;
    LOBYTE(v43) = 4;
    sub_2388A2EA0(&qword_27DF30A10, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v34 = v37;
    sub_2388D31B8();
    (*(v22 + 8))(v41, v21);
    sub_2388A461C(v34, v27 + v42, &qword_27DF30608, &qword_2388D6690);
    sub_2388A30B8(v27, v38, type metadata accessor for TranscriptCoderV1.Content);
    sub_2388158BC(a1);
    return sub_2388A2F88(v27, type metadata accessor for TranscriptCoderV1.Content);
  }
}

uint64_t sub_23889A8D8(void *a1)
{
  v3 = v1;
  v5 = sub_238810E44(&qword_27DF313B8, &qword_2388DAA70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16[-v7];
  v9 = sub_238815878(a1, a1[3]);
  sub_2388A5594(v9, v10, v11);
  sub_2388D3568();
  LOBYTE(v17) = 0;
  v12 = sub_2388D3298();
  if (!v2)
  {
    v17 = *(v3 + 16);
    v18 = *(v3 + 32);
    v16[15] = 1;
    sub_238826EC8(v12, v13, v14);
    sub_2388D32C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_23889AA5C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1954047348;
  v4 = 0x7275746375727473;
  if (v1 != 3)
  {
    v4 = 0x6567616D69;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701869940;
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

uint64_t sub_23889AADC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388A46D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23889AB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A44D0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889AB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A44D0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23889ABB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7275746375727473;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1954047348;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x7275746375727473;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 0x6567616D69;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1954047348;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2388D3368();
  }

  return v11 & 1;
}

uint64_t sub_23889ACB4()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

uint64_t sub_23889AD50(uint64_t a1)
{
  sub_2388D2938();
}

uint64_t sub_23889ADD8()
{
  sub_2388D34A8();
  sub_2388D2938();

  return sub_2388D34E8();
}

unint64_t sub_23889AE70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2388A487C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23889AEA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000065;
  v5 = 0x7275746375727473;
  if (v2 != 1)
  {
    v5 = 0x6567616D69;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1954047348;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_23889AFA8()
{
  if (*v0)
  {
    return 0x746E65746E6F63;
  }

  else
  {
    return 0x656372756F73;
  }
}

uint64_t sub_23889AFE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v6 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_23889B0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5594(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889B0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5594(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_23889B130@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2388A48C8(a2, v6);
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

uint64_t sub_23889B1B4(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31360, &qword_2388DAA40);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A53F0(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    type metadata accessor for TranscriptCoderV1.Tool(0);
    v11[14] = 1;
    type metadata accessor for TranscriptCoderV1.Function(0);
    sub_2388A2EA0(&qword_27DF31368, type metadata accessor for TranscriptCoderV1.Function, &unk_2388DA4F4);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889B36C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for TranscriptCoderV1.Function(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF31310, &qword_2388DAA18);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TranscriptCoderV1.Tool(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v23 = a1;
  v14 = sub_238815878(a1, v13);
  sub_2388A53F0(v14, v15, v16);
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(v23);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    *v12 = sub_2388D31D8();
    v12[1] = v18;
    v24 = 1;
    sub_2388A2EA0(&qword_27DF31320, type metadata accessor for TranscriptCoderV1.Function, &unk_2388DA51C);
    sub_2388D31F8();
    (*(v17 + 8))(v9, v22);
    sub_2388A2F00(v6, v12 + *(v10 + 20), type metadata accessor for TranscriptCoderV1.Function);
    sub_2388A30B8(v12, v20, type metadata accessor for TranscriptCoderV1.Tool);
    sub_2388158BC(v23);
    return sub_2388A2F88(v12, type metadata accessor for TranscriptCoderV1.Tool);
  }
}

uint64_t sub_23889B680(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31388, &qword_2388DAA50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A54EC(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    v11[14] = 1;
    sub_2388D3298();
    type metadata accessor for TranscriptCoderV1.Function(0);
    v11[13] = 2;
    sub_2388D2178();
    sub_2388A2EA0(&qword_27DF30AF8, MEMORY[0x277D0DC20], MEMORY[0x277D0DC28]);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889B89C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = sub_2388D2178();
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238810E44(&qword_27DF31370, &qword_2388DAA48);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = v19 - v6;
  v8 = type metadata accessor for TranscriptCoderV1.Function(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238815878(a1, a1[3]);
  sub_2388A54EC(v11, v12, v13);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v20 = a1;
  v15 = v23;
  v14 = v24;
  v28 = 0;
  *v10 = sub_2388D31D8();
  v10[1] = v16;
  v19[1] = v16;
  v27 = 1;
  v10[2] = sub_2388D31D8();
  v10[3] = v17;
  v26 = 2;
  sub_2388A2EA0(&qword_27DF31380, MEMORY[0x277D0DC20], MEMORY[0x277D0DC30]);
  sub_2388D31F8();
  (*(v15 + 8))(v7, v25);
  (*(v21 + 32))(v10 + *(v8 + 24), v5, v14);
  sub_2388A30B8(v10, v22, type metadata accessor for TranscriptCoderV1.Function);
  sub_2388158BC(v20);
  return sub_2388A2F88(v10, type metadata accessor for TranscriptCoderV1.Function);
}

uint64_t sub_23889BC4C(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31340, &qword_2388DAA28);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A4E2C(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_2388D3298();
  v11[13] = 2;
  sub_2388D3298();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889BDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A53F0(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889BE28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A53F0(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23889BE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A54EC(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889BED0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A54EC(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23889BF3C()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23889BF88@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388A4AC8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23889BFB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A4E2C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889BFEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A4E2C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

double sub_23889C028@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_2388A4BE0(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_23889C0A8(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31348, &qword_2388DAA30);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A5348(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3258();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11[14] = 1;
  sub_2388D3268();
  v11[13] = 2;
  sub_2388D3258();
  v11[12] = 3;
  sub_2388D3248();
  v11[11] = 4;
  sub_2388D3288();
  v11[10] = 5;
  sub_2388D3268();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889C2BC()
{
  v1 = *v0;
  v2 = 0x74617265706D6574;
  v3 = 0x796465657267;
  v4 = 0x65536D6F646E6172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1265659764;
  if (v1 != 1)
  {
    v5 = 1349545844;
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

uint64_t sub_23889C374@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388A4E80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23889C3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5348(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5348(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

__n128 sub_23889C420@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_2388A508C(a2, v6);
  if (!v2)
  {
    v5 = v7[0];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 57) = *(v7 + 9);
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_23889C4B0(void *a1)
{
  v3 = sub_238810E44(&qword_27DF31350, &qword_2388DAA38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A539C(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
    v11[14] = 1;
    type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
    sub_2388A2EA0(&qword_27DF31358, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat, &unk_2388DA4A4);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889C668@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238810E44(&qword_27DF312F8, &qword_2388DAA10);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v23 = a1;
  v14 = sub_238815878(a1, v13);
  sub_2388A539C(v14, v15, v16);
  sub_2388D3538();
  if (v2)
  {
    sub_2388158BC(v23);
  }

  else
  {
    v17 = v21;
    v25 = 0;
    *v12 = sub_2388D31D8();
    v12[1] = v18;
    v24 = 1;
    sub_2388A2EA0(&qword_27DF31308, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat, &unk_2388DA4CC);
    sub_2388D31F8();
    (*(v17 + 8))(v9, v22);
    sub_2388A2F00(v6, v12 + *(v10 + 20), type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
    sub_2388A30B8(v12, v20, type metadata accessor for TranscriptCoderV1.ResponseFormat);
    sub_2388158BC(v23);
    return sub_2388A2F88(v12, type metadata accessor for TranscriptCoderV1.ResponseFormat);
  }
}

uint64_t sub_23889C978()
{
  if (*v0)
  {
    return 0x656863536E6F736ALL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_23889C9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_2388D3368() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656863536E6F736ALL && a2 == 0xEA0000000000616DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2388D3368();

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

uint64_t sub_23889CA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A539C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889CAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A539C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23889CB3C(void *a1)
{
  v3 = sub_238810E44(&qword_27DF313A0, &qword_2388DAA60);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = sub_238815878(a1, a1[3]);
  sub_2388A5540(v7, v8, v9);
  sub_2388D3568();
  v11[15] = 0;
  sub_2388D3298();
  if (!v1)
  {
    v11[14] = 1;
    sub_2388D3238();
    type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
    v11[13] = 2;
    sub_2388D2178();
    sub_2388A2EA0(&qword_27DF30AF8, MEMORY[0x277D0DC20], MEMORY[0x277D0DC28]);
    sub_2388D32C8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23889CD58@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v26 = sub_2388D2178();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_238810E44(&qword_27DF31390, &qword_2388DAA58);
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = v21 - v6;
  v8 = type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0);
  MEMORY[0x28223BE20](v8);
  v10 = (v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_238815878(a1, a1[3]);
  sub_2388A5540(v11, v12, v13);
  sub_2388D3538();
  if (v2)
  {
    return sub_2388158BC(a1);
  }

  v22 = a1;
  v14 = v10;
  v16 = v25;
  v15 = v26;
  v30 = 0;
  v17 = v27;
  *v14 = sub_2388D31D8();
  v14[1] = v18;
  v21[1] = v18;
  v29 = 1;
  v14[2] = sub_2388D3178();
  v14[3] = v19;
  v21[0] = v19;
  v28 = 2;
  sub_2388A2EA0(&qword_27DF31380, MEMORY[0x277D0DC20], MEMORY[0x277D0DC30]);
  sub_2388D31F8();
  (*(v16 + 8))(v7, v17);
  (*(v23 + 32))(v14 + *(v8 + 24), v5, v15);
  sub_2388A30B8(v14, v24, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
  sub_2388158BC(v22);
  return sub_2388A2F88(v14, type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat);
}

uint64_t sub_23889D104()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x616D65686373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_23889D15C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2388A603C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23889D184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5540(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23889D1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2388A5540(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

void *sub_23889D22C(void *a1)
{
  v196 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v196);
  v200 = &v183 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
  v3 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v192 = &v183 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v195 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v202 = (&v183 - v8);
  v9 = sub_238810E44(&qword_27DF310E0, &qword_2388D9F80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v197 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v205 = &v183 - v12;
  v13 = type metadata accessor for Transcript.Entry(0);
  v207 = *(v13 - 8);
  v208 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v199 = (&v183 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v14);
  v194 = (&v183 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v193 = (&v183 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v198 = &v183 - v21;
  MEMORY[0x28223BE20](v20);
  v201 = (&v183 - v22);
  v23 = type metadata accessor for TranscriptCoderV1.Tool(0);
  v24 = *(v23 - 8);
  v219 = v23;
  v220 = v24;
  MEMORY[0x28223BE20](v23);
  v218 = &v183 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Transcript.ToolDefinition(0);
  v216 = *(v26 - 8);
  v217 = v26;
  MEMORY[0x28223BE20](v26);
  v215 = &v183 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_238810E44(&qword_27DF310E8, &qword_2388D9F88);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v183 - v30;
  sub_238815878(a1, a1[3]);
  if ((sub_2388D3328() & 1) == 0)
  {
    v191 = (v3 + 48);
    v206 = (v29 + 8);
    *&v32 = 136446210;
    v185 = v32;
    v221 = v31;
    v222 = MEMORY[0x277D84F90];
    v210 = v28;
    v204 = a1;
    while (1)
    {
      v34 = sub_238827C28(a1, a1[3]);
      sub_2388A2D18(v34, v35, v36);
      v37 = v252;
      sub_2388D3308();
      if (v37)
      {
        v252 = v37;
        v33 = v222;

        return v33;
      }

      LOBYTE(v240) = 0;
      v38 = sub_2388D31D8();
      v252 = 0;
      v209 = v38;
      v211 = v39;
      LOBYTE(v234) = 1;
      sub_2388A2D6C(v38, v39, v40);
      v41 = v252;
      sub_2388D31F8();
      if (v41)
      {
        v252 = v41;
LABEL_99:

        v33 = v222;

        v180 = *v206;
        v181 = v31;
        v182 = v28;
        goto LABEL_100;
      }

      if (v240 > 1u)
      {
        if (v240 == 2)
        {
          v64 = sub_2388D3208();
          v65 = *(v64 + 16);
          v66 = (v64 + 32);
          while (1)
          {
            if (!v65)
            {

              sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
              LOBYTE(v234) = 2;
              sub_2388A32B4(&qword_27DF31108, &qword_27DF31110, &unk_2388DA954, MEMORY[0x277D83978]);
              v102 = v210;
              sub_2388D31F8();
              v252 = v41;
              v103 = v240;
              sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
              LOBYTE(v234) = 8;
              sub_2388A3350(&qword_27DF31130, MEMORY[0x277D83808], MEMORY[0x277D83978]);
              v104 = v252;
              v105 = sub_2388D31B8();
              v28 = v102;
              if (v104)
              {
                v252 = v104;
                goto LABEL_98;
              }

              if (v240)
              {
                v106 = v240;
              }

              else
              {
                v106 = MEMORY[0x277D84F90];
              }

              MEMORY[0x28223BE20](v105);
              *(&v183 - 2) = v31;
              v107 = sub_238897C08(sub_2388A6158, (&v183 - 4), v103);
              v252 = 0;
              v108 = v107;

              v109 = v194;
              v110 = v211;
              *v194 = v209;
              v109[1] = v110;
              v109[2] = v106;
              v109[3] = v108;
              swift_storeEnumTagMultiPayload();
              v111 = v222;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v111 = sub_2388B7500(0, v111[2] + 1, 1, v111);
              }

              v113 = v111[2];
              v112 = v111[3];
              v222 = v111;
              if (v113 >= v112 >> 1)
              {
                v222 = sub_2388B7500((v112 > 1), v113 + 1, 1, v222);
              }

              v114 = v222;
              v222[2] = v113 + 1;
              v100 = v114 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v113;
              v101 = v194;
              goto LABEL_88;
            }

            v68 = *v66;
            if (v68 <= 4 && *v66 >= 4u)
            {
              break;
            }

            v67 = sub_2388D3368();

            ++v66;
            --v65;
            if (v67)
            {
              goto LABEL_72;
            }
          }

LABEL_72:

          sub_238810E44(&qword_27DF31118, &unk_2388D9F98);
          LOBYTE(v234) = 4;
          sub_2388A33BC(&qword_27DF31120, sub_2388A2DE0, MEMORY[0x277D83978]);
          sub_2388D31F8();
          v252 = v41;
          v155 = v240;
          v156 = *(v240 + 16);
          if (!v156)
          {

            v159 = MEMORY[0x277D84F90];
LABEL_83:
            v173 = v193;
            v174 = v211;
            *v193 = v209;
            v173[1] = v174;
            v173[2] = v159;
            swift_storeEnumTagMultiPayload();
            v175 = v222;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v28 = v210;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v175 = sub_2388B7500(0, v175[2] + 1, 1, v175);
            }

            v31 = v221;
            v178 = v175[2];
            v177 = v175[3];
            v222 = v175;
            if (v178 >= v177 >> 1)
            {
              v222 = sub_2388B7500((v177 > 1), v178 + 1, 1, v222);
            }

            v179 = v222;
            v222[2] = v178 + 1;
            v100 = v179 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v178;
            v101 = v193;
            goto LABEL_88;
          }

          v246 = MEMORY[0x277D84F90];
          result = sub_2388B82E4(0, v156, 0);
          v157 = v252;
          if (!*(v155 + 16))
          {
            goto LABEL_103;
          }

          v158 = 0;
          v159 = v246;
          v160 = (v155 + 72);
          v223 = v156 - 1;
          v224 = v155;
          while (1)
          {
            v161 = *(v160 - 4);
            v162 = *(v160 - 3);
            v163 = *(v160 - 2);
            v164 = *(v160 - 1);
            v165 = *v160;
            *&v247 = *(v160 - 5);
            *(&v247 + 1) = v161;
            v248 = v162;
            v249 = v163;
            v250 = v164;
            v251 = v165;

            sub_2388A2E34(&v247, &v240);
            v252 = v157;
            if (v157)
            {
              break;
            }

            v239 = v245;
            v237 = v243;
            v238 = v244;
            v235 = v241;
            v236 = v242;
            v234 = v240;
            v246 = v159;
            v167 = *(v159 + 16);
            v166 = *(v159 + 24);
            if (v167 >= v166 >> 1)
            {
              result = sub_2388B82E4((v166 > 1), v167 + 1, 1);
              v159 = v246;
            }

            *(v159 + 16) = v167 + 1;
            v168 = v159 + 88 * v167;
            v169 = v235;
            *(v168 + 32) = v234;
            *(v168 + 48) = v169;
            v170 = v236;
            v171 = v237;
            v172 = v238;
            *(v168 + 112) = v239;
            *(v168 + 80) = v171;
            *(v168 + 96) = v172;
            *(v168 + 64) = v170;
            v157 = v252;
            if (v223 == v158)
            {

              goto LABEL_83;
            }

            v160 += 6;
            if (++v158 >= *(v224 + 16))
            {
              goto LABEL_103;
            }
          }

          v33 = v222;

          v180 = *v206;
          v181 = v221;
LABEL_92:
          v182 = v210;
LABEL_100:
          v180(v181, v182);
          return v33;
        }

        sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
        LOBYTE(v234) = 2;
        sub_2388A32B4(&qword_27DF31108, &qword_27DF31110, &unk_2388DA954, MEMORY[0x277D83978]);
        sub_2388D31F8();
        v85 = v240;
        LOBYTE(v240) = 5;
        v86 = v31;
        v87 = sub_2388D31D8();
        v89 = v88;
        LOBYTE(v240) = 6;
        v90 = sub_2388D31D8();
        v92 = v91;
        MEMORY[0x28223BE20](v90);
        *(&v183 - 2) = v86;
        v93 = sub_238897C08(sub_2388A6158, (&v183 - 4), v85);
        v252 = 0;
        v94 = v93;

        v95 = v199;
        *v199 = v87;
        v95[1] = v89;
        v95[2] = v90;
        v95[3] = v92;
        v95[4] = v94;
        swift_storeEnumTagMultiPayload();
        v96 = v222;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_2388B7500(0, v96[2] + 1, 1, v96);
        }

        v28 = v210;
        v31 = v221;
        v98 = v96[2];
        v97 = v96[3];
        v222 = v96;
        if (v98 >= v97 >> 1)
        {
          v222 = sub_2388B7500((v97 > 1), v98 + 1, 1, v222);
        }

        v99 = v222;
        v222[2] = v98 + 1;
        v100 = v99 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v98;
        v101 = v199;
      }

      else
      {
        if (v240)
        {
          sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
          LOBYTE(v234) = 2;
          sub_2388A32B4(&qword_27DF31108, &qword_27DF31110, &unk_2388DA954, MEMORY[0x277D83978]);
          v69 = sub_2388D31F8();
          v252 = v41;
          v70 = v240;
          LOBYTE(v234) = 7;
          sub_2388A2E4C(v69, v71, v72);
          v73 = v252;
          sub_2388D31F8();
          v252 = v73;
          if (v73)
          {
            goto LABEL_98;
          }

          v190 = v240;
          LODWORD(v224) = BYTE8(v240);
          v74 = BYTE8(v241);
          v75 = v242;
          v76 = BYTE8(v242);
          v77 = BYTE9(v242);
          v212 = v243;
          v213 = v241;
          LODWORD(v223) = BYTE8(v243);
          v214 = v244;
          v78 = v31;
          v79 = BYTE8(v244);
          LOBYTE(v240) = 9;
          sub_2388A2EA0(&qword_27DF31140, type metadata accessor for TranscriptCoderV1.ResponseFormat, &unk_2388DA8DC);
          v80 = v252;
          v81 = sub_2388D31B8();
          if (v80)
          {
            v252 = v80;

            v33 = v222;

            v180 = *v206;
            v181 = v78;
            goto LABEL_92;
          }

          MEMORY[0x28223BE20](v81);
          *(&v183 - 2) = v78;
          v82 = sub_238897C08(sub_2388A2EE8, (&v183 - 4), v70);
          v252 = 0;
          v83 = v82;

          if (v77 != 2 && (v77 & 1) != 0)
          {
            v212 = 0;
            v213 = 0;
            v84 = 128;
            goto LABEL_38;
          }

          if (v74)
          {
            if (v76)
            {
              v212 = 0;
              v213 = 0;
              v84 = 254;
LABEL_38:
              LODWORD(v223) = v84;
            }

            else
            {
              LODWORD(v223) = v223 | 0x40;
              v213 = v75;
            }
          }

          v121 = 1;
          v232 = 1;
          v231 = 1;
          v28 = v210;
          v189 = v83;
          if ((v79 & 1) == 0)
          {
            if (v214 <= 0)
            {
              if (qword_27DF2F9E0 != -1)
              {
                swift_once();
              }

              v122 = sub_2388D2408();
              sub_2388413AC(v122, qword_27DF3F8E0);
              v123 = sub_2388D23E8();
              v124 = sub_2388D2E18();
              if (os_log_type_enabled(v123, v124))
              {
                v125 = swift_slowAlloc();
                v126 = swift_slowAlloc();
                *&v240 = v126;
                *v125 = v185;
                *&v234 = v214;
                v127 = sub_2388D32F8();
                v129 = sub_2388C0770(v127, v128, &v240);

                *(v125 + 4) = v129;
                _os_log_impl(&dword_23880E000, v123, v124, "Maximum response tokens (%{public}s) must be positive.", v125, 0xCu);
                sub_2388158BC(v126);
                MEMORY[0x23EE68030](v126, -1, -1);
                MEMORY[0x23EE68030](v125, -1, -1);
              }

              v214 = 0;
              v121 = 1;
            }

            else
            {
              v121 = 0;
            }
          }

          v233 = v224;
          v229 = v121;
          v228[0] = v240;
          *(v228 + 3) = *(&v240 + 3);
          v227[0] = v234;
          *(v227 + 3) = *(&v234 + 3);
          *(v226 + 3) = *(&v246 + 3);
          v226[0] = v246;
          v186 = v232;
          v187 = v231;
          *(v225 + 3) = *&v230[3];
          v225[0] = *v230;
          v188 = v121;
          v130 = v197;
          sub_238827E14(v205, v197, &qword_27DF310E0, &qword_2388D9F80);
          v131 = 1;
          if ((*v191)(v130, 1, v203) != 1)
          {
            v132 = v192;
            sub_2388A2F00(v197, v192, type metadata accessor for TranscriptCoderV1.ResponseFormat);
            v133 = (v132 + *(v203 + 20));
            v134 = *(v133 + 1);
            v184 = *v133;
            v136 = *(v133 + 2);
            v135 = *(v133 + 3);
            v137 = *(type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0) + 24);
            v138 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
            v139 = sub_2388D2178();
            v140 = v202;
            v141 = v202 + v138;
            v28 = v210;
            (*(*(v139 - 8) + 16))(v141, &v133[v137], v139);
            *v140 = v184;
            v140[1] = v134;
            v140[2] = v136;
            v140[3] = v135;

            sub_2388A2F88(v132, type metadata accessor for TranscriptCoderV1.ResponseFormat);
            v131 = 0;
          }

          v142 = type metadata accessor for Transcript.ResponseFormat(0);
          v143 = *(*(v142 - 8) + 56);
          v144 = v202;
          v143(v202, v131, 1, v142);
          v145 = v195;
          sub_238827E14(v144, v195, &qword_27DF2FF00, &qword_2388D57E0);
          v146 = *(v196 + 28);
          v147 = v200;
          v143((v200 + v146), 1, 1, v142);
          v148 = v211;
          *v147 = v209;
          *(v147 + 8) = v148;
          v149 = v212;
          v150 = v213;
          *(v147 + 16) = v189;
          *(v147 + 24) = v150;
          *(v147 + 32) = v149;
          *(v147 + 40) = v223;
          *(v147 + 41) = v228[0];
          *(v147 + 44) = *(v228 + 3);
          *(v147 + 48) = v190;
          *(v147 + 56) = v224;
          *(v147 + 57) = v227[0];
          *(v147 + 60) = *(v227 + 3);
          *(v147 + 64) = 0;
          *(v147 + 72) = v186;
          LODWORD(v149) = v226[0];
          *(v147 + 76) = *(v226 + 3);
          *(v147 + 73) = v149;
          *(v147 + 80) = 0;
          *(v147 + 88) = v187;
          *(v147 + 89) = v225[0];
          *(v147 + 92) = *(v225 + 3);
          *(v147 + 96) = v214;
          *(v147 + 104) = v188;
          sub_2388A461C(v145, v147 + v146, &qword_27DF2FF00, &qword_2388D57E0);
          sub_2388A30B8(v147, v198, type metadata accessor for Transcript.Prompt);
          swift_storeEnumTagMultiPayload();
          v151 = v222;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v151 = sub_2388B7500(0, v151[2] + 1, 1, v151);
          }

          v31 = v221;
          a1 = v204;
          v153 = v151[2];
          v152 = v151[3];
          v222 = v151;
          if (v153 >= v152 >> 1)
          {
            v222 = sub_2388B7500((v152 > 1), v153 + 1, 1, v222);
          }

          sub_238827E88(v202, &qword_27DF2FF00, &qword_2388D57E0);
          sub_238827E88(v205, &qword_27DF310E0, &qword_2388D9F80);
          v154 = v222;
          v222[2] = v153 + 1;
          sub_2388A2F00(v198, v154 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v153, type metadata accessor for Transcript.Entry);
          sub_2388A2F88(v200, type metadata accessor for Transcript.Prompt);
          goto LABEL_89;
        }

        sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
        LOBYTE(v234) = 2;
        sub_2388A32B4(&qword_27DF31108, &qword_27DF31110, &unk_2388DA954, MEMORY[0x277D83978]);
        sub_2388D31F8();
        v252 = v41;
        v42 = v240;
        sub_238810E44(&qword_27DF31148, &unk_2388D9FA8);
        LOBYTE(v234) = 3;
        sub_2388A2FE8(&qword_27DF31150, &qword_27DF31158, &unk_2388DA8B4, MEMORY[0x277D83978]);
        v43 = v252;
        v44 = sub_2388D31B8();
        if (v43)
        {
          v252 = v43;
LABEL_98:

          goto LABEL_99;
        }

        v45 = v240;
        MEMORY[0x28223BE20](v44);
        *(&v183 - 2) = v31;
        v46 = sub_238897C08(sub_2388A6158, (&v183 - 4), v42);
        v252 = 0;
        v190 = v46;

        if (v45)
        {
          v47 = *(v45 + 16);
          v48 = MEMORY[0x277D84F90];
          if (v47)
          {
            *&v240 = MEMORY[0x277D84F90];
            result = sub_2388B8140(0, v47, 0);
            v50 = 0;
            v51 = v240;
            v212 = v45 + ((*(v220 + 80) + 32) & ~*(v220 + 80));
            v213 = v47;
            v214 = v45;
            while (v50 < *(v45 + 16))
            {
              v52 = v218;
              sub_2388A30B8(v212 + *(v220 + 72) * v50, v218, type metadata accessor for TranscriptCoderV1.Tool);
              v53 = (v52 + *(v219 + 20));
              v54 = v53[1];
              v223 = *v53;
              v224 = v51;
              v56 = v53[2];
              v55 = v53[3];
              v57 = *(type metadata accessor for TranscriptCoderV1.Function(0) + 24);
              v58 = *(v217 + 24);
              v59 = sub_2388D2178();
              v60 = &v215[v58];
              v61 = v215;
              (*(*(v59 - 8) + 16))(v60, v53 + v57, v59);
              *v61 = v223;
              v61[1] = v54;
              v61[2] = v56;
              v61[3] = v55;
              v51 = v224;

              sub_2388A2F88(v52, type metadata accessor for TranscriptCoderV1.Tool);
              *&v240 = v51;
              v63 = *(v51 + 16);
              v62 = *(v51 + 24);
              if (v63 >= v62 >> 1)
              {
                sub_2388B8140((v62 > 1), v63 + 1, 1);
                v51 = v240;
              }

              ++v50;
              *(v51 + 16) = v63 + 1;
              result = sub_2388A2F00(v61, v51 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v63, type metadata accessor for Transcript.ToolDefinition);
              v45 = v214;
              v31 = v221;
              if (v213 == v50)
              {

                v28 = v210;
                goto LABEL_50;
              }
            }

            __break(1u);
LABEL_103:
            __break(1u);
            return result;
          }

          v51 = v48;
        }

        else
        {
          v51 = MEMORY[0x277D84F90];
        }

LABEL_50:
        v115 = v222;
        v116 = v201;
        v117 = v211;
        *v201 = v209;
        v116[1] = v117;
        v116[2] = v190;
        v116[3] = v51;
        swift_storeEnumTagMultiPayload();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_2388B7500(0, v115[2] + 1, 1, v115);
        }

        v119 = v115[2];
        v118 = v115[3];
        v222 = v115;
        if (v119 >= v118 >> 1)
        {
          v222 = sub_2388B7500((v118 > 1), v119 + 1, 1, v222);
        }

        v120 = v222;
        v222[2] = v119 + 1;
        v100 = v120 + ((*(v207 + 80) + 32) & ~*(v207 + 80)) + *(v207 + 72) * v119;
        v101 = v201;
      }

LABEL_88:
      sub_2388A2F00(v101, v100, type metadata accessor for Transcript.Entry);
      a1 = v204;
LABEL_89:
      (*v206)(v31, v28);
      sub_238815878(a1, a1[3]);
      if (sub_2388D3328())
      {
        return v222;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_23889EE7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2388D0F58();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v50 - v11;
  v13 = sub_2388D0D88();
  v14 = MEMORY[0x28223BE20](v13);
  if (!*(a1 + 16))
  {
    v36 = a1[4];
    if (!v36)
    {
      goto LABEL_21;
    }

    v37 = a1[3];
    v38 = a1[1];
    *a3 = *a1;
    a3[1] = v38;
    a3[2] = v37;
    a3[3] = v36;
    a3[6] = 0;
  }

  if (*(a1 + 16) != 1)
  {
    v54 = a2;
    v39 = type metadata accessor for TranscriptCoderV1.Content(0);
    sub_238827E14(a1 + *(v39 + 32), v12, &qword_27DF30608, &qword_2388D6690);
    if ((*(v7 + 48))(v12, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v12, v6);
      v57 = sub_2388D0EF8();
      v58 = v40;
      v55 = 44;
      v56 = 0xE100000000000000;
      sub_238856678(v57, v40, v41);
      v42 = sub_2388D2EB8();

      if (*(v42 + 16))
      {

        v43 = sub_2388D0FA8();
        v45 = v44;

        if (v45 >> 60 != 15)
        {
          v46 = sub_2388D0FE8();
          v47 = CGDataProviderCreateWithCFData(v46);

          if (v47)
          {
            v48 = CGImageCreateWithJPEGDataProvider(v47, 0, 0, kCGRenderingIntentDefault);
            sub_238827FA4(v43, v45);

            if (v48)
            {
              (*(v7 + 8))(v9, v6);
              v49 = a1[1];
              *a3 = *a1;
              a3[1] = v49;
              a3[2] = v48;
              a3[6] = 0x8000000000000000;
            }
          }

          else
          {
            sub_238827FA4(v43, v45);
          }
        }
      }

      else
      {
      }

      (*(v7 + 8))(v9, v6);
    }

LABEL_21:
    LOBYTE(v57) = 2;
    sub_2388D2FF8();
    swift_allocError();
    sub_238810E44(&qword_27DF310E8, &qword_2388D9F88);
    sub_238815180(&qword_27DF31160, &qword_27DF310E8, &qword_2388D9F88, MEMORY[0x277D844D0]);
    sub_2388D2FC8();
    return swift_willThrow();
  }

  v15 = a1[6];
  if (!v15)
  {
    goto LABEL_21;
  }

  v17 = a1[7];
  v16 = a1[8];
  v18 = a1[5];
  v19 = a1[1];
  v53 = *a1;
  v54 = v18;
  v52 = v19;
  v20 = *(a1 + 72);
  v50[1] = v14;

  v51 = v15;
  sub_238814698(v17, v16, v20);
  v21 = sub_23882C97C(v17, v16, v20, 0, 0, 0, 0);
  v50[0] = v21;
  v23 = v22;
  v25 = v24;
  sub_2388D0DC8();
  swift_allocObject();
  sub_238814698(v21, v23, v25);
  v26 = sub_2388D0DB8();
  sub_238810E44(&qword_27DF2FA00, &unk_2388D44D0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_2388D3F70;
  sub_2388D0D78();
  v57 = v27;
  sub_2388A2EA0(&qword_27DF2FA08, MEMORY[0x277CC8718], MEMORY[0x277CC8730]);
  sub_238810E44(&qword_27DF2FA10, &unk_2388D3F90);
  sub_238815180(&qword_27DF2FA18, &qword_27DF2FA10, &unk_2388D3F90, MEMORY[0x277D83970]);
  sub_2388D2F08();
  sub_2388D0D98();
  v28 = v50[0];
  v29 = sub_238819C1C(v50[0], v23, v25, v26);
  v31 = v30;

  sub_238810DC4(v28, v23, v25);

  v33 = v52;
  *a3 = v53;
  a3[1] = v33;
  v34 = v51;
  a3[2] = v54;
  a3[3] = v34;
  a3[4] = v28;
  a3[5] = v23;
  v35 = 0x4000000000000100;
  if ((v25 & 0x100) == 0)
  {
    v35 = 0x4000000000000000;
  }

  a3[6] = v35 | v25 & 7;
  a3[7] = 0;
  a3[8] = 0;
  a3[9] = v29;
  a3[10] = v31;
  return result;
}

double sub_23889F62C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_2388D1058();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v26 = a1[1];
  v27 = v9;
  v11 = *(a1 + 4);
  v10 = *(a1 + 5);
  v24 = v9;
  v25 = v26;
  swift_bridgeObjectRetain_n();
  sub_2388A3140(&v27, v19);
  sub_2388A3140(&v26, v19);
  sub_2388D1048();
  v12 = sub_2388D1038();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  v19[0] = v12;
  v19[1] = v14;
  GeneratedContent.init(id:text:)(v19, v11, v10, &v20);
  if (v2)
  {
    sub_2388A319C(&v27);
    sub_2388A319C(&v26);
  }

  else
  {
    v16 = v21;
    v17 = v22;
    v18 = v25;
    *a2 = v24;
    *(a2 + 16) = v18;
    *(a2 + 32) = v20;
    *(a2 + 48) = v16;
    *(a2 + 49) = v17;
    result = v23[0];
    *(a2 + 56) = *v23;
    *(a2 + 72) = v11;
    *(a2 + 80) = v10;
  }

  return result;
}

void sub_23889F7C8(uint64_t a1, uint64_t a2)
{
  v361 = a2;
  v353 = type metadata accessor for Transcript.ResponseFormat(0);
  v3 = *(v353 - 8);
  MEMORY[0x28223BE20](v353);
  v349 = (&v347 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_238810E44(&qword_27DF2FF00, &qword_2388D57E0);
  MEMORY[0x28223BE20](v5 - 8);
  v352 = &v347 - v6;
  v7 = sub_238810E44(&qword_27DF310E0, &qword_2388D9F80);
  MEMORY[0x28223BE20](v7 - 8);
  v351 = &v347 - v8;
  v350 = type metadata accessor for Transcript.Prompt(0);
  MEMORY[0x28223BE20](v350);
  v355 = &v347 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v396 = sub_2388D1D78();
  v10 = *(v396 - 8);
  MEMORY[0x28223BE20](v396);
  v395 = &v347 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v347 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v368 = &v347 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v347 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v365 = &v347 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v369 = &v347 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v367 = &v347 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v347 - v28;
  MEMORY[0x28223BE20](v27);
  v366 = &v347 - v30;
  v31 = type metadata accessor for TranscriptCoderV1.Content(0);
  v401 = *(v31 - 8);
  v402 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v383 = (&v347 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v385 = &v347 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v376 = (&v347 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v377 = &v347 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v382 = (&v347 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v384 = &v347 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v380 = (&v347 - v45);
  MEMORY[0x28223BE20](v44);
  v381 = &v347 - v46;
  v390 = type metadata accessor for Transcript.ToolDefinition(0);
  v392 = *(v390 - 8);
  MEMORY[0x28223BE20](v390);
  v389 = &v347 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v388 = type metadata accessor for TranscriptCoderV1.Tool(0);
  v387 = *(v388 - 8);
  MEMORY[0x28223BE20](v388);
  v400 = (&v347 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  v360 = type metadata accessor for Transcript.Entry(0);
  v49 = *(v360 - 8);
  MEMORY[0x28223BE20](v360);
  v371 = (&v347 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_238810E44(&qword_27DF31168, &qword_2388D9FB8);
  v52 = MEMORY[0x28223BE20](v51);
  v378 = &v347 - v54;
  v356 = *(a1 + 16);
  if (!v356)
  {
    return;
  }

  v375 = v52;
  v55 = 0;
  v359 = a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
  v394 = (v10 + 8);
  v393 = 0x80000002388DF220;
  v357 = (v53 + 8);
  v348 = (v3 + 48);
  v358 = *(v49 + 72);
  v364 = v15;
  v362 = v20;
  v363 = v29;
  while (1)
  {
    v370 = v55;
    v59 = v359 + v358 * v55;
    v60 = sub_238827C28(v361, *(v361 + 24));
    sub_2388A2D18(v60, v61, v62);
    sub_2388D3338();
    sub_2388A30B8(v59, v371, type metadata accessor for Transcript.Entry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      break;
    }

    v64 = v391;
    if (EnumCaseMultiPayload == 2)
    {
      v137 = v371[1];
      v138 = v371[2];
      LOBYTE(v404) = 0;
      v139 = v375;
      v140 = v378;
      v141 = sub_2388D3298();
      if (v64)
      {

LABEL_127:

        (*v357)(v140, v139);
        return;
      }

      LOBYTE(v404) = 2;
      LOBYTE(v419) = 1;
      sub_2388A31F0(v141, v142, v143);
      sub_2388D32C8();
      v391 = 0;
      v144 = *(v138 + 16);
      if (v144)
      {
        v374 = v137;
        v404 = MEMORY[0x277D84F90];
        sub_2388B8450(0, v144, 0);
        v145 = 0;
        v146 = v404;
        v147 = *(v138 + 16);
        v148 = (v138 + 56);
        v386 = v138;
        v379 = v144;
        while (v145 < v147)
        {
          v149 = *(v148 - 3);
          v150 = *(v148 - 2);
          v151 = *v148;
          v398 = *(v148 - 1);
          v399 = v149;
          v152 = v148[7];
          v397 = v148[6];
          v404 = v146;
          v154 = *(v146 + 16);
          v153 = *(v146 + 24);

          if (v154 >= v153 >> 1)
          {
            sub_2388B8450((v153 > 1), v154 + 1, 1);
            v146 = v404;
          }

          *(v146 + 16) = v154 + 1;
          v155 = (v146 + 48 * v154);
          v156 = v398;
          v155[4] = v399;
          v155[5] = v150;
          v155[6] = v156;
          v155[7] = v151;
          v155[8] = v397;
          v155[9] = v152;
          v147 = *(v386 + 16);
          if (v145 >= v147)
          {
            goto LABEL_141;
          }

          ++v145;
          v148 += 11;
          if (v379 == v145)
          {

            goto LABEL_98;
          }
        }

        goto LABEL_140;
      }

      v146 = MEMORY[0x277D84F90];
LABEL_98:
      v404 = v146;
      LOBYTE(v419) = 4;
      sub_238810E44(&qword_27DF31118, &unk_2388D9F98);
      sub_2388A33BC(&qword_27DF31190, sub_2388A3434, MEMORY[0x277D83948]);
      v308 = v375;
      v309 = v378;
      v310 = v391;
      sub_2388D32C8();
      v391 = v310;
      if (v310)
      {

        (*v357)(v309, v308);
        return;
      }

      (*v357)(v309, v308);
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v65 = v371[1];
      v373 = v371[3];
      v66 = v371[4];
      LOBYTE(v404) = 0;
      v67 = v375;
      v68 = v378;
      v69 = sub_2388D3298();
      if (v64)
      {

        (*v357)(v68, v67);
        return;
      }

      LOBYTE(v404) = 3;
      LOBYTE(v419) = 1;
      sub_2388A31F0(v69, v70, v71);
      sub_2388D32C8();
      LOBYTE(v404) = 5;
      sub_2388D3298();
      LOBYTE(v404) = 6;
      sub_2388D3298();
      v391 = 0;
      v72 = *(v66 + 16);
      if (v72)
      {
        v372 = v65;
        v419 = MEMORY[0x277D84F90];
        sub_2388B8470(0, v72, 0);
        if (!*(v66 + 16))
        {
          goto LABEL_138;
        }

        v73 = 0;
        v74 = v419;
        v75 = v66 + 82;
        v397 = v72 - 1;
        v386 = v66;
        while (1)
        {
          v76 = *(v75 - 50);
          v77 = *(v75 - 42);
          v78 = *(v75 - 34);
          v79 = *(v75 - 26);
          v80 = *(v75 + 4) >> 14;
          if (v80)
          {
            v398 = *(v75 - 50);
            v399 = v78;
            if (v80 == 1)
            {
              v81 = *(v75 - 2);
              v82 = *(v75 - 10);
              v83 = *(v75 - 18);

              v379 = sub_23882BCCC(v83, v82, v81);
              v85 = v84;
              v87 = v86;
              v88 = v77;
              v89 = v74;
              v90 = *(v402 + 32);
              v91 = sub_2388D0F58();
              v92 = v376;
              v93 = v376 + v90;
              v74 = v89;
              (*(*(v91 - 8) + 56))(v93, 1, 1, v91);
              *v92 = v398;
              v92[1] = v88;
              *(v92 + 16) = 1;
              v92[3] = 0;
              v92[4] = 0;
              v92[5] = v399;
              v92[6] = v79;
              v92[7] = v379;
              v92[8] = v85;
              v94 = v92;
              *(v92 + 72) = v87;
              v66 = v386;
            }

            else
            {
              v379 = v74;
              v98 = objc_allocWithZone(MEMORY[0x277CBEB28]);
              v374 = v77;

              v99 = [v98 init];
              v100 = v395;
              sub_2388D1D68();
              sub_2388D1D58();
              (*v394)(v100, v396);
              v101 = sub_2388D2848();

              v102 = CGImageDestinationCreateWithData(v99, v101, 1uLL, 0);

              if (!v102)
              {
                goto LABEL_149;
              }

              CGImageDestinationAddImage(v102, v399, 0);
              CGImageDestinationFinalize(v102);
              v399 = v99;
              v103 = MEMORY[0x23EE65230](v99);
              v105 = v104;
              v106 = sub_2388D0FF8();
              v108 = v107;
              v404 = 0;
              v405 = 0xE000000000000000;
              sub_2388D2FA8();

              v404 = 0xD000000000000017;
              v405 = v393;
              MEMORY[0x23EE66C20](v106, v108);
              v109 = v362;
              sub_2388D0F28();

              v110 = sub_2388D0F58();
              v111 = *(v110 - 8);
              if ((*(v111 + 48))(v109, 1, v110) == 1)
              {
                goto LABEL_148;
              }

              sub_238826D50(v103, v105);

              v112 = v365;
              (*(v111 + 32))(v365, v109, v110);
              (*(v111 + 56))(v112, 0, 1, v110);
              v94 = v376;
              v113 = v374;
              *v376 = v398;
              *(v94 + 8) = v113;
              *(v94 + 16) = 2;
              *(v94 + 24) = 0u;
              *(v94 + 40) = 0u;
              *(v94 + 56) = 0u;
              *(v94 + 72) = 0;
              sub_2388A3244(v112, v94 + *(v402 + 32));
              v66 = v386;
              v74 = v379;
            }
          }

          else
          {
            v95 = *(v402 + 32);
            v96 = sub_2388D0F58();
            v97 = v376 + v95;
            v94 = v376;
            (*(*(v96 - 8) + 56))(v97, 1, 1, v96);
            *v94 = v76;
            *(v94 + 8) = v77;
            *(v94 + 16) = 0;
            *(v94 + 24) = v78;
            *(v94 + 32) = v79;
            *(v94 + 40) = 0u;
            *(v94 + 56) = 0u;
            *(v94 + 72) = 0;
          }

          v114 = v377;
          sub_2388A2F00(v94, v377, type metadata accessor for TranscriptCoderV1.Content);
          v419 = v74;
          v116 = *(v74 + 16);
          v115 = *(v74 + 24);
          if (v116 >= v115 >> 1)
          {
            sub_2388B8470((v115 > 1), v116 + 1, 1);
            v114 = v377;
            v74 = v419;
          }

          *(v74 + 16) = v116 + 1;
          sub_2388A2F00(v114, v74 + ((*(v401 + 80) + 32) & ~*(v401 + 80)) + *(v401 + 72) * v116, type metadata accessor for TranscriptCoderV1.Content);
          if (v397 == v73)
          {
            break;
          }

          ++v73;
          v75 += 88;
          if (v73 >= *(v66 + 16))
          {
            goto LABEL_138;
          }
        }
      }

      else
      {

        v74 = MEMORY[0x277D84F90];
      }

      v56 = v378;
      v404 = v74;
      LOBYTE(v419) = 2;
      sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
      sub_2388A32B4(&qword_27DF31178, &qword_27DF31180, &unk_2388DA864, MEMORY[0x277D83948]);
      v57 = v375;
      v58 = v391;
      sub_2388D32C8();
      v391 = v58;
      if (v58)
      {

        (*v357)(v56, v57);
        return;
      }

      (*v357)(v56, v57);
    }

    else
    {
      v157 = v371[1];
      v158 = v371[2];
      v159 = v371[3];
      if (*(v158 + 16))
      {

        v64 = v391;
        v160 = v158;
      }

      else
      {
        v160 = 0;
      }

      LOBYTE(v404) = 0;
      v139 = v375;
      v140 = v378;
      v214 = sub_2388D3298();
      if (v64)
      {
        goto LABEL_126;
      }

      LOBYTE(v404) = 2;
      LOBYTE(v419) = 1;
      sub_2388A31F0(v214, v215, v216);
      sub_2388D32C8();
      v391 = 0;
      v217 = *(v159 + 16);
      if (v217)
      {
        v354 = v158;
        v372 = v157;
        v373 = v160;
        v419 = MEMORY[0x277D84F90];
        sub_2388B8470(0, v217, 0);
        if (!*(v159 + 16))
        {
          goto LABEL_136;
        }

        v218 = 0;
        v219 = v419;
        v220 = v159 + 82;
        v397 = v217 - 1;
        v386 = v159;
        while (1)
        {
          v221 = *(v220 - 50);
          v222 = *(v220 - 42);
          v223 = *(v220 - 34);
          v224 = *(v220 - 26);
          v225 = *(v220 + 4) >> 14;
          if (v225)
          {
            v398 = *(v220 - 50);
            v399 = v223;
            if (v225 == 1)
            {
              v226 = *(v220 - 2);
              v227 = *(v220 - 10);
              v228 = *(v220 - 18);

              v379 = sub_23882BCCC(v228, v227, v226);
              v230 = v229;
              v232 = v231;
              v233 = v222;
              v234 = v219;
              v235 = *(v402 + 32);
              v236 = sub_2388D0F58();
              v237 = v383;
              v238 = v383 + v235;
              v219 = v234;
              (*(*(v236 - 8) + 56))(v238, 1, 1, v236);
              *v237 = v398;
              v237[1] = v233;
              *(v237 + 16) = 1;
              v237[3] = 0;
              v237[4] = 0;
              v237[5] = v399;
              v237[6] = v224;
              v237[7] = v379;
              v237[8] = v230;
              v239 = v237;
              *(v237 + 72) = v232;
              v159 = v386;
            }

            else
            {
              v379 = v219;
              v243 = objc_allocWithZone(MEMORY[0x277CBEB28]);
              v374 = v222;

              v244 = [v243 init];
              v245 = v395;
              sub_2388D1D68();
              sub_2388D1D58();
              (*v394)(v245, v396);
              v246 = sub_2388D2848();

              v247 = CGImageDestinationCreateWithData(v244, v246, 1uLL, 0);

              if (!v247)
              {
                goto LABEL_143;
              }

              CGImageDestinationAddImage(v247, v399, 0);
              CGImageDestinationFinalize(v247);
              v399 = v244;
              v248 = MEMORY[0x23EE65230](v244);
              v250 = v249;
              v251 = sub_2388D0FF8();
              v253 = v252;
              v404 = 0;
              v405 = 0xE000000000000000;
              sub_2388D2FA8();

              v404 = 0xD000000000000017;
              v405 = v393;
              MEMORY[0x23EE66C20](v251, v253);
              v254 = v364;
              sub_2388D0F28();

              v255 = sub_2388D0F58();
              v256 = *(v255 - 8);
              if ((*(v256 + 48))(v254, 1, v255) == 1)
              {
                goto LABEL_142;
              }

              sub_238826D50(v248, v250);

              v257 = v368;
              (*(v256 + 32))(v368, v254, v255);
              (*(v256 + 56))(v257, 0, 1, v255);
              v239 = v383;
              v258 = v374;
              *v383 = v398;
              *(v239 + 8) = v258;
              *(v239 + 16) = 2;
              *(v239 + 24) = 0u;
              *(v239 + 40) = 0u;
              *(v239 + 56) = 0u;
              *(v239 + 72) = 0;
              sub_2388A3244(v257, v239 + *(v402 + 32));
              v159 = v386;
              v219 = v379;
            }
          }

          else
          {
            v240 = *(v402 + 32);
            v241 = sub_2388D0F58();
            v242 = v383 + v240;
            v239 = v383;
            (*(*(v241 - 8) + 56))(v242, 1, 1, v241);
            *v239 = v221;
            *(v239 + 8) = v222;
            *(v239 + 16) = 0;
            *(v239 + 24) = v223;
            *(v239 + 32) = v224;
            *(v239 + 40) = 0u;
            *(v239 + 56) = 0u;
            *(v239 + 72) = 0;
          }

          v259 = v385;
          sub_2388A2F00(v239, v385, type metadata accessor for TranscriptCoderV1.Content);
          v419 = v219;
          v261 = *(v219 + 16);
          v260 = *(v219 + 24);
          if (v261 >= v260 >> 1)
          {
            sub_2388B8470((v260 > 1), v261 + 1, 1);
            v259 = v385;
            v219 = v419;
          }

          *(v219 + 16) = v261 + 1;
          sub_2388A2F00(v259, v219 + ((*(v401 + 80) + 32) & ~*(v401 + 80)) + *(v401 + 72) * v261, type metadata accessor for TranscriptCoderV1.Content);
          if (v397 == v218)
          {
            break;
          }

          ++v218;
          v220 += 88;
          if (v218 >= *(v159 + 16))
          {
            goto LABEL_136;
          }
        }

        v262 = v378;
        v160 = v373;
      }

      else
      {

        v219 = MEMORY[0x277D84F90];
        v262 = v378;
      }

      v404 = v219;
      LOBYTE(v419) = 2;
      sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
      sub_2388A32B4(&qword_27DF31178, &qword_27DF31180, &unk_2388DA864, MEMORY[0x277D83948]);
      v311 = v375;
      v312 = v391;
      sub_2388D32C8();
      if (v312)
      {

        (*v357)(v262, v311);
        return;
      }

      v404 = v160;
      LOBYTE(v419) = 8;
      sub_238810E44(&qword_27DF2FBB8, &unk_2388D5410);
      sub_2388A3350(&qword_27DF31188, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
      sub_2388D3278();
      v391 = 0;
      (*v357)(v262, v311);
    }

LABEL_6:
    v55 = v370 + 1;
    if (v370 + 1 == v356)
    {
      return;
    }
  }

  if (!EnumCaseMultiPayload)
  {
    v117 = *v371;
    v354 = v371[1];
    v119 = v371[2];
    v118 = v371[3];
    v120 = *(v118 + 16);
    v379 = v119;
    v397 = v118;
    if (v120)
    {
      v374 = v117;
      v404 = MEMORY[0x277D84F90];
      sub_2388B84B4(0, v120, 0);
      v121 = 0;
      v386 = v118 + ((*(v392 + 80) + 32) & ~*(v392 + 80));
      v122 = v404;
      v398 = v120;
      while (v121 < *(v118 + 16))
      {
        v123 = v386 + *(v392 + 72) * v121;
        v399 = v122;
        v124 = v389;
        sub_2388A30B8(v123, v389, type metadata accessor for Transcript.ToolDefinition);
        v126 = *v124;
        v125 = *(v124 + 1);
        v128 = *(v124 + 2);
        v127 = *(v124 + 3);
        v129 = *(v390 + 24);
        v130 = v400 + *(v388 + 20);
        v131 = *(type metadata accessor for TranscriptCoderV1.Function(0) + 24);
        v132 = sub_2388D2178();
        (*(*(v132 - 8) + 16))(&v130[v131], &v124[v129], v132);
        *v130 = v126;
        *(v130 + 1) = v125;
        *(v130 + 2) = v128;
        *(v130 + 3) = v127;
        v133 = v400;
        *v400 = 0x6E6F6974636E7566;
        *(v133 + 8) = 0xE800000000000000;

        v134 = v124;
        v122 = v399;
        sub_2388A2F88(v134, type metadata accessor for Transcript.ToolDefinition);
        v404 = v122;
        v136 = *(v122 + 2);
        v135 = *(v122 + 3);
        if (v136 >= v135 >> 1)
        {
          sub_2388B84B4((v135 > 1), v136 + 1, 1);
          v122 = v404;
        }

        ++v121;
        *(v122 + 2) = v136 + 1;
        sub_2388A2F00(v133, v122 + ((*(v387 + 80) + 32) & ~*(v387 + 80)) + *(v387 + 72) * v136, type metadata accessor for TranscriptCoderV1.Tool);
        v118 = v397;
        if (v398 == v121)
        {
          v213 = v391;
          v119 = v379;
          goto LABEL_80;
        }
      }

      goto LABEL_139;
    }

    v122 = MEMORY[0x277D84F90];
    v213 = v391;
LABEL_80:
    LOBYTE(v404) = 0;
    v139 = v375;
    v140 = v378;
    v263 = sub_2388D3298();
    if (v213)
    {
LABEL_126:

      goto LABEL_127;
    }

    LOBYTE(v404) = 0;
    LOBYTE(v419) = 1;
    sub_2388A31F0(v263, v264, v265);
    sub_2388D32C8();
    v391 = 0;
    v266 = *(v119 + 16);
    if (v266)
    {
      v399 = v122;
      v419 = MEMORY[0x277D84F90];
      sub_2388B8470(0, v266, 0);
      if (!*(v119 + 16))
      {
        goto LABEL_137;
      }

      v267 = 0;
      v268 = v419;
      v269 = v119 + 82;
      v386 = v266 - 1;
      while (1)
      {
        v270 = *(v269 - 50);
        v271 = *(v269 - 42);
        v272 = *(v269 - 34);
        v273 = *(v269 - 26);
        v274 = *(v269 + 4) >> 14;
        if (v274)
        {
          v398 = v268;
          if (v274 == 1)
          {
            v275 = *(v269 - 2);
            v276 = *(v269 - 10);
            v277 = *(v269 - 18);

            v374 = sub_23882BCCC(v277, v276, v275);
            v279 = v278;
            LODWORD(v373) = v280;
            v281 = *(v402 + 32);
            v282 = sub_2388D0F58();
            v283 = v272;
            v284 = v380;
            (*(*(v282 - 8) + 56))(v380 + v281, 1, 1, v282);
            *v284 = v270;
            v284[1] = v271;
            *(v284 + 16) = 1;
            v284[3] = 0;
            v284[4] = 0;
            v284[5] = v283;
            v284[6] = v273;
            v284[7] = v374;
            v284[8] = v279;
            v285 = v284;
            v268 = v398;
            *(v284 + 72) = v373;
            v119 = v379;
          }

          else
          {
            v373 = v270;
            v289 = objc_allocWithZone(MEMORY[0x277CBEB28]);
            v374 = v271;

            v290 = [v289 init];
            v291 = v395;
            sub_2388D1D68();
            sub_2388D1D58();
            (*v394)(v291, v396);
            v292 = sub_2388D2848();

            v293 = CGImageDestinationCreateWithData(v290, v292, 1uLL, 0);

            if (!v293)
            {
              goto LABEL_146;
            }

            CGImageDestinationAddImage(v293, v272, 0);
            CGImageDestinationFinalize(v293);
            v372 = v290;
            v294 = MEMORY[0x23EE65230](v290);
            v296 = v295;
            v297 = sub_2388D0FF8();
            v299 = v298;
            v404 = 0;
            v405 = 0xE000000000000000;
            sub_2388D2FA8();

            v404 = 0xD000000000000017;
            v405 = v393;
            MEMORY[0x23EE66C20](v297, v299);
            v300 = v363;
            sub_2388D0F28();

            v301 = sub_2388D0F58();
            v302 = *(v301 - 8);
            if ((*(v302 + 48))(v300, 1, v301) == 1)
            {
              goto LABEL_147;
            }

            sub_238826D50(v294, v296);

            v303 = v366;
            (*(v302 + 32))(v366, v300, v301);
            (*(v302 + 56))(v303, 0, 1, v301);
            v285 = v380;
            v304 = v374;
            *v380 = v373;
            *(v285 + 8) = v304;
            *(v285 + 16) = 2;
            *(v285 + 24) = 0u;
            *(v285 + 40) = 0u;
            *(v285 + 56) = 0u;
            *(v285 + 72) = 0;
            sub_2388A3244(v303, v285 + *(v402 + 32));
            v119 = v379;
            v268 = v398;
          }
        }

        else
        {
          v286 = *(v402 + 32);
          v287 = sub_2388D0F58();
          v288 = v380 + v286;
          v285 = v380;
          (*(*(v287 - 8) + 56))(v288, 1, 1, v287);
          *v285 = v270;
          *(v285 + 8) = v271;
          *(v285 + 16) = 0;
          *(v285 + 24) = v272;
          *(v285 + 32) = v273;
          *(v285 + 40) = 0u;
          *(v285 + 56) = 0u;
          *(v285 + 72) = 0;
        }

        v305 = v381;
        sub_2388A2F00(v285, v381, type metadata accessor for TranscriptCoderV1.Content);
        v419 = v268;
        v307 = *(v268 + 16);
        v306 = *(v268 + 24);
        if (v307 >= v306 >> 1)
        {
          sub_2388B8470((v306 > 1), v307 + 1, 1);
          v305 = v381;
          v268 = v419;
        }

        *(v268 + 16) = v307 + 1;
        sub_2388A2F00(v305, v268 + ((*(v401 + 80) + 32) & ~*(v401 + 80)) + *(v401 + 72) * v307, type metadata accessor for TranscriptCoderV1.Content);
        if (v386 == v267)
        {
          break;
        }

        ++v267;
        v269 += 88;
        if (v267 >= *(v119 + 16))
        {
          goto LABEL_137;
        }
      }

      v122 = v399;
    }

    else
    {

      v268 = MEMORY[0x277D84F90];
    }

    v404 = v268;
    LOBYTE(v419) = 2;
    sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A32B4(&qword_27DF31178, &qword_27DF31180, &unk_2388DA864, MEMORY[0x277D83948]);
    v326 = v391;
    sub_2388D32C8();
    if (v326)
    {

      (*v357)(v378, v375);
      return;
    }

    if (!*(v122 + 2))
    {

      v122 = 0;
    }

    v404 = v122;
    LOBYTE(v419) = 3;
    sub_238810E44(&qword_27DF31148, &unk_2388D9FA8);
    sub_2388A2FE8(&qword_27DF311B0, &qword_27DF311B8, &unk_2388DA7C4, MEMORY[0x277D83948]);
    v327 = v375;
    v328 = v378;
    sub_2388D3278();

    (*v357)(v328, v327);
    v391 = 0;
    goto LABEL_6;
  }

  sub_2388A2F00(v371, v355, type metadata accessor for Transcript.Prompt);
  LOBYTE(v404) = 0;
  v161 = v375;
  v162 = v378;
  v163 = v391;
  v164 = sub_2388D3298();
  if (v163)
  {
    (*v357)(v162, v161);
LABEL_129:
    sub_2388A2F88(v355, type metadata accessor for Transcript.Prompt);
    return;
  }

  LOBYTE(v404) = 1;
  LOBYTE(v419) = 1;
  sub_2388A31F0(v164, v165, v166);
  sub_2388D32C8();
  v391 = 0;
  v167 = *(v355 + 16);
  v168 = *(v167 + 16);
  if (!v168)
  {
    v170 = MEMORY[0x277D84F90];
LABEL_104:
    v313 = v378;
    v404 = v170;
    LOBYTE(v419) = 2;
    sub_238810E44(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A32B4(&qword_27DF31178, &qword_27DF31180, &unk_2388DA864, MEMORY[0x277D83948]);
    v314 = v391;
    sub_2388D32C8();
    if (v314)
    {

      (*v357)(v313, v375);
      goto LABEL_129;
    }

    v318 = v355;
    v319 = *(v355 + 40);
    if (v319 > 0xFD)
    {
      v320 = 0;
      v321 = 0;
      v322 = 0;
      v323 = 2;
      LOBYTE(v319) = 1;
LABEL_118:
      v324 = 1;
      v325 = 1;
      goto LABEL_119;
    }

    v322 = *(v355 + 24);
    v320 = *(v355 + 32);
    if (v319 >> 6)
    {
      if (v319 >> 6 != 1)
      {
        v320 = 0;
        v321 = 0;
        v322 = 0;
        LOBYTE(v319) = 1;
        v323 = 1;
        goto LABEL_118;
      }

      v324 = 0;
      v325 = 1;
      v323 = 2;
      v321 = *(v355 + 24);
      v322 = 0;
    }

    else
    {
      v321 = 0;
      v325 = 0;
      v324 = 1;
      v323 = 2;
    }

LABEL_119:
    v329 = *(v355 + 48);
    v330 = *(v355 + 96);
    v331 = *(v355 + 104);
    LOBYTE(v419) = *(v355 + 56);
    v418 = v325;
    v417 = v324;
    v416 = v319 & 1;
    v415 = v331;
    v404 = v329;
    LOBYTE(v405) = v419;
    v406 = v322;
    v407 = v325;
    v408 = v321;
    v409 = v324;
    v410 = v323;
    v411 = v320;
    v412 = v319 & 1;
    v413 = v330;
    v414 = v331;
    v403 = 7;
    sub_2388A3488(v315, v316, v317);
    sub_2388D32C8();
    v332 = v352;
    sub_238827E14(v318 + *(v350 + 28), v352, &qword_27DF2FF00, &qword_2388D57E0);
    if ((*v348)(v332, 1, v353) == 1)
    {
      v333 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
      v334 = v351;
      (*(*(v333 - 8) + 56))(v351, 1, 1, v333);
    }

    else
    {
      v335 = v349;
      sub_2388A2F00(v332, v349, type metadata accessor for Transcript.ResponseFormat);
      v336 = *v335;
      v337 = v335[1];
      v338 = v335[3];
      v398 = v335[2];
      v399 = v336;
      v339 = *(type metadata accessor for Transcript.ResponseFormat.JSONSchemaFormat(0) + 24);
      v340 = type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
      v334 = v351;
      v341 = &v351[*(v340 + 20)];
      v342 = *(type metadata accessor for TranscriptCoderV1.JSONSchemaResponseFormat(0) + 24);
      v343 = sub_2388D2178();
      (*(*(v343 - 8) + 16))(&v341[v342], v335 + v339, v343);
      v344 = v398;
      *v341 = v399;
      *(v341 + 1) = v337;
      *(v341 + 2) = v344;
      *(v341 + 3) = v338;
      *v334 = 0x656863536E6F736ALL;
      *(v334 + 1) = 0xEA0000000000616DLL;

      sub_2388A2F88(v335, type metadata accessor for Transcript.ResponseFormat);
      (*(*(v340 - 8) + 56))(v334, 0, 1, v340);
    }

    LOBYTE(v404) = 9;
    type metadata accessor for TranscriptCoderV1.ResponseFormat(0);
    sub_2388A2EA0(&qword_27DF311A8, type metadata accessor for TranscriptCoderV1.ResponseFormat, &unk_2388DA7EC);
    v345 = v375;
    v346 = v378;
    sub_2388D3278();
    v391 = 0;
    sub_238827E88(v334, &qword_27DF310E0, &qword_2388D9F80);
    (*v357)(v346, v345);
    sub_2388A2F88(v355, type metadata accessor for Transcript.Prompt);
    goto LABEL_6;
  }

  v419 = MEMORY[0x277D84F90];
  sub_2388B8470(0, v168, 0);
  if (*(v167 + 16))
  {
    v169 = 0;
    v170 = v419;
    v171 = v167 + 82;
    v397 = v168 - 1;
    v386 = v167;
    do
    {
      v172 = *(v171 - 50);
      v173 = *(v171 - 42);
      v174 = *(v171 - 34);
      v175 = *(v171 - 26);
      v176 = *(v171 + 4) >> 14;
      if (v176)
      {
        v398 = *(v171 - 50);
        v399 = v174;
        if (v176 == 1)
        {
          v177 = *(v171 - 2);
          v178 = *(v171 - 10);
          v179 = *(v171 - 18);

          v379 = sub_23882BCCC(v179, v178, v177);
          v181 = v180;
          v183 = v182;
          v184 = v170;
          v185 = *(v402 + 32);
          v186 = sub_2388D0F58();
          v187 = v173;
          v188 = v382;
          v189 = v382 + v185;
          v170 = v184;
          v167 = v386;
          (*(*(v186 - 8) + 56))(v189, 1, 1, v186);
          *v188 = v398;
          v188[1] = v187;
          *(v188 + 16) = 1;
          v188[3] = 0;
          v188[4] = 0;
          v188[5] = v399;
          v188[6] = v175;
          v188[7] = v379;
          v188[8] = v181;
          v190 = v188;
          *(v188 + 72) = v183;
        }

        else
        {
          v379 = v170;
          v194 = objc_allocWithZone(MEMORY[0x277CBEB28]);
          v374 = v173;

          v195 = [v194 init];
          v196 = v395;
          sub_2388D1D68();
          sub_2388D1D58();
          (*v394)(v196, v396);
          v197 = sub_2388D2848();

          v198 = CGImageDestinationCreateWithData(v195, v197, 1uLL, 0);

          if (!v198)
          {
            goto LABEL_145;
          }

          CGImageDestinationAddImage(v198, v399, 0);
          CGImageDestinationFinalize(v198);
          v399 = v195;
          v199 = MEMORY[0x23EE65230](v195);
          v201 = v200;
          v202 = sub_2388D0FF8();
          v204 = v203;
          v404 = 0;
          v405 = 0xE000000000000000;
          sub_2388D2FA8();

          v404 = 0xD000000000000017;
          v405 = v393;
          MEMORY[0x23EE66C20](v202, v204);
          v205 = v369;
          sub_2388D0F28();

          v206 = sub_2388D0F58();
          v207 = *(v206 - 8);
          if ((*(v207 + 48))(v205, 1, v206) == 1)
          {
            goto LABEL_144;
          }

          sub_238826D50(v199, v201);

          v208 = v367;
          (*(v207 + 32))(v367, v205, v206);
          (*(v207 + 56))(v208, 0, 1, v206);
          v190 = v382;
          v209 = v374;
          *v382 = v398;
          *(v190 + 8) = v209;
          *(v190 + 16) = 2;
          *(v190 + 24) = 0u;
          *(v190 + 40) = 0u;
          *(v190 + 56) = 0u;
          *(v190 + 72) = 0;
          sub_2388A3244(v208, v190 + *(v402 + 32));
          v170 = v379;
          v167 = v386;
        }
      }

      else
      {
        v191 = *(v402 + 32);
        v192 = sub_2388D0F58();
        v193 = v382 + v191;
        v190 = v382;
        (*(*(v192 - 8) + 56))(v193, 1, 1, v192);
        *v190 = v172;
        *(v190 + 8) = v173;
        *(v190 + 16) = 0;
        *(v190 + 24) = v174;
        *(v190 + 32) = v175;
        *(v190 + 40) = 0u;
        *(v190 + 56) = 0u;
        *(v190 + 72) = 0;
      }

      v210 = v384;
      sub_2388A2F00(v190, v384, type metadata accessor for TranscriptCoderV1.Content);
      v419 = v170;
      v212 = *(v170 + 16);
      v211 = *(v170 + 24);
      if (v212 >= v211 >> 1)
      {
        sub_2388B8470((v211 > 1), v212 + 1, 1);
        v210 = v384;
        v170 = v419;
      }

      *(v170 + 16) = v212 + 1;
      sub_2388A2F00(v210, v170 + ((*(v401 + 80) + 32) & ~*(v401 + 80)) + *(v401 + 72) * v212, type metadata accessor for TranscriptCoderV1.Content);
      if (v397 == v169)
      {
        goto LABEL_104;
      }

      ++v169;
      v171 += 88;
    }

    while (v169 < *(v167 + 16));
  }

  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

uint64_t sub_2388A2910(uint64_t *a1, void *a2)
{
  v4 = sub_238810E44(&qword_27DF311C0, &qword_2388D9FC0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v22[-1] - v5;
  v7 = sub_238810E44(&qword_27DF311C8, &qword_2388D9FC8);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - v9;
  v11 = *a1;
  v12 = sub_238815878(a2, a2[3]);
  sub_2388A34DC(v12, v13, v14);
  sub_2388D3568();
  LOBYTE(v22[0]) = 1;
  v15 = v22[6];
  sub_2388D3298();
  if (!v15)
  {
    v17 = v21;
    LOBYTE(v22[0]) = 0;
    v18 = sub_2388D32B8();
    LOBYTE(v22[0]) = 2;
    sub_2388A3530(v18, v19, v20);
    sub_2388D3228();
    sub_2388D3218();
    sub_23889F7C8(v11, v22);
    sub_2388158BC(v22);
    (*(v17 + 8))(v6, v4);
  }

  return (*(v8 + 8))(v10, v7);
}

unint64_t sub_2388A2BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310C8;
  if (!qword_27DF310C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310C8);
  }

  return result;
}

unint64_t sub_2388A2C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310D0;
  if (!qword_27DF310D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310D0);
  }

  return result;
}

unint64_t sub_2388A2C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310D8;
  if (!qword_27DF310D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310D8);
  }

  return result;
}

unint64_t sub_2388A2D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310F0;
  if (!qword_27DF310F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310F0);
  }

  return result;
}

unint64_t sub_2388A2D6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF310F8;
  if (!qword_27DF310F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF310F8);
  }

  return result;
}

unint64_t sub_2388A2DE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31128;
  if (!qword_27DF31128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31128);
  }

  return result;
}

unint64_t sub_2388A2E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31138;
  if (!qword_27DF31138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31138);
  }

  return result;
}

uint64_t sub_2388A2EA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2388A2F00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2388A2F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2388A2FE8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31148, &unk_2388D9FA8);
    sub_2388A2EA0(a2, type metadata accessor for TranscriptCoderV1.Tool, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A3084@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_23889EE7C(a1, *(v3 + 16), a3);
  if (v4)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t sub_2388A30B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2388A31F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31170;
  if (!qword_27DF31170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31170);
  }

  return result;
}

uint64_t sub_2388A3244(uint64_t a1, uint64_t a2)
{
  v4 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2388A32B4(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31100, &qword_2388D9F90);
    sub_2388A2EA0(a2, type metadata accessor for TranscriptCoderV1.Content, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A3350(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF2FBB8, &unk_2388D5410);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2388A33BC(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_238810E8C(&qword_27DF31118, &unk_2388D9F98);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2388A3434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31198;
  if (!qword_27DF31198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31198);
  }

  return result;
}

unint64_t sub_2388A3488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF311A0;
  if (!qword_27DF311A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311A0);
  }

  return result;
}

unint64_t sub_2388A34DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF311D0;
  if (!qword_27DF311D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311D0);
  }

  return result;
}

unint64_t sub_2388A3530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF311D8;
  if (!qword_27DF311D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF311D8);
  }

  return result;
}

void sub_2388A35FC(uint64_t a1)
{
  sub_2388A3A88(319, &qword_27DF30088, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2388D2178();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_2388A3698(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2388A36BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 73))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 41);
  if (v3 >= 2)
  {
    v4 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v4 = -2;
  }

  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2388A371C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_2388A3784(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2388A37CC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2388A383C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2388A390C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238810E44(&qword_27DF30608, &qword_2388D6690);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_2388A39BC(uint64_t a1)
{
  sub_2388A3A88(319, &qword_27DF30088, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_2388A3A88(319, &qword_27DF31228, &type metadata for TranscriptCoderV1.Structure);
    if (v2 <= 0x3F)
    {
      sub_2388A3AD4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2388A3A88(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2388D2E78();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2388A3AD4(uint64_t a1)
{
  if (!qword_27DF31230)
  {
    sub_2388D0F58();
    v1 = sub_2388D2E78();
    if (!v2)
    {
      atomic_store(v1, &qword_27DF31230);
    }
  }
}

uint64_t sub_2388A3B2C(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_2388A3B48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_2388A3B90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TranscriptCoderV1.EntryCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TranscriptCoderV1.EntryCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2388A3E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2388A3EDC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_2388A3F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2388A4020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31258;
  if (!qword_27DF31258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31258);
  }

  return result;
}

unint64_t sub_2388A4078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31260;
  if (!qword_27DF31260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31260);
  }

  return result;
}

unint64_t sub_2388A40D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DF31268;
  if (!qword_27DF31268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF31268);
  }

  return result;
}