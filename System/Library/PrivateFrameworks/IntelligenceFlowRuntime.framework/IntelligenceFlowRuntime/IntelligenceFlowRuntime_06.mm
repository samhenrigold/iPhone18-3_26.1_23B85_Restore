void sub_22BBEB27C(uint64_t a1)
{
  if (!qword_27D8E25D8)
  {
    sub_22BBEB2E0(qword_27D8E25E0, qword_22BDBCC40);
    v1 = sub_22BDBB254();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8E25D8);
    }
  }
}

uint64_t sub_22BBEB2E0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_22BBEB328(uint64_t a1)
{
  sub_22BBEB4C4(319, &qword_2814287F8, MEMORY[0x277D72A78], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_22BBEB4C4(319, qword_28142D9D8, type metadata accessor for ResultResponse, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22BBEB4C4(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_22BBEB4C4(319, &qword_281428798, sub_22BBEB528, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BBEB4C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22BBEB528()
{
  result = qword_2814287A0;
  if (!qword_2814287A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814287A0);
  }

  return result;
}

uint64_t sub_22BBEB570()
{
  sub_22BDB8FD4();
  result = sub_22BDB8FC4();
  qword_27D906300 = result;
  return result;
}

uint64_t sub_22BBEB5C8()
{
  v1[2] = v0;
  v2 = sub_22BDB77D4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEB694, 0, 0);
}

uint64_t sub_22BBEBC60@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23[2] = a1;
  v25 = a2;
  v24 = sub_22BDBA634();
  v3 = *(v24 - 8);
  v4 = MEMORY[0x28223BE20](v24);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v23 - v7;
  v9 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  v12 = sub_22BDBA594();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6184();
  if (sub_22BB3AA28(v11, 1, v12) == 1)
  {
    sub_22BBEBF44(v11);
    v16 = 1;
LABEL_6:
    v21 = v25;
    return sub_22BB336D0(v21, v16, 1, v12);
  }

  v23[1] = v2;
  v23[0] = *(v13 + 32);
  (v23[0])(v15, v11, v12);
  sub_22BDBA524();
  sub_22BDB81D4();
  v17 = sub_22BDBA614();
  v18 = *(v3 + 8);
  v19 = v6;
  v20 = v24;
  v18(v19, v24);
  v18(v8, v20);
  if ((v17 & 1) == 0)
  {
    (*(v13 + 8))(v15, v12);
    v16 = 1;
    goto LABEL_6;
  }

  v21 = v25;
  (v23[0])(v25, v15, v12);
  v16 = 0;
  return sub_22BB336D0(v21, v16, 1, v12);
}

uint64_t sub_22BBEBF44(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EntityMatcherCandidateGenerator(uint64_t a1)
{
  result = qword_27D8E2670;
  if (!qword_27D8E2670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBEC020(uint64_t a1)
{
  result = sub_22BDB8254();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BBEC08C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22BDB77D4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEC168, 0, 0);
}

uint64_t sub_22BBECBF4@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v1 = sub_22BDB77D4();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x28223BE20](v1);
  v48 = &v47 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22BDBA514();
  v53 = *(v3 - 8);
  v54 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22BDBA4F4();
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v47 - v8;
  v10 = sub_22BDBA594();
  v56 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v57 = &v47 - v14;
  v15 = sub_22BDBA634();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDBA3D4();
  if (qword_27D8E2298 != -1)
  {
    swift_once();
  }

  sub_22BBED810(v15, qword_27D8E36C0);
  v19 = sub_22BDBA614();
  result = (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v21 = sub_22BDBA444();
  sub_22BD80E68(0xD000000000000015, 0x800000022BDD14D0, v21, v9);

  if (sub_22BB3AA28(v9, 1, v10) == 1)
  {
    result = sub_22BB58728(v9, &qword_27D8E2668, &unk_22BDBCCD0);
LABEL_12:
    v37 = 0;
    goto LABEL_13;
  }

  v22 = v56;
  v23 = v57;
  (*(v56 + 32))(v57, v9, v10);
  (*(v22 + 16))(v13, v23, v10);
  if ((*(v22 + 88))(v13, v10) != *MEMORY[0x277D72A58])
  {
    v36 = *(v22 + 8);
    v36(v23, v10);
    result = (v36)(v13, v10);
    goto LABEL_12;
  }

  (*(v22 + 96))(v13, v10);
  v24 = swift_projectBox();
  v26 = v53;
  v25 = v54;
  (*(v53 + 16))(v5, v24, v54);
  if ((*(v26 + 88))(v5, v25) != *MEMORY[0x277D72998])
  {
    (*(v22 + 8))(v23, v10);
    (*(v26 + 8))(v5, v25);

    goto LABEL_12;
  }

  (*(v26 + 96))(v5, v25);
  v28 = v51;
  v27 = v52;
  (*(v51 + 32))(v52, v5, v55);

  sub_22BBED848(0, &qword_27D8E2690, 0x277CCAAC8);
  sub_22BBED848(0, qword_27D8E2698, 0x277CC34B0);
  v29 = sub_22BDBA4E4();
  v30 = [v29 data];

  v31 = sub_22BDB4304();
  v33 = v32;

  v34 = v59;
  v35 = sub_22BDBB144();
  if (v34)
  {
    sub_22BB3531C(v31, v33);
    (*(v28 + 8))(v27, v55);
    return (*(v56 + 8))(v57, v10);
  }

  v37 = v35;
  v38 = v55;
  sub_22BB3531C(v31, v33);
  if (v37)
  {
    (*(v28 + 8))(v52, v38);
    result = (*(v56 + 8))(v57, v10);
  }

  else
  {
    v39 = v48;
    sub_22BDB63A4();
    v40 = sub_22BDB77C4();
    v41 = sub_22BDBB114();
    v42 = os_log_type_enabled(v40, v41);
    v43 = v52;
    v44 = v57;
    if (v42)
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_22BB2C000, v40, v41, "EntitySearchableItemCandidateGenerator: Unable to decode CSSearchableItem data in encodedSearchableItem", v45, 2u);
      v46 = v45;
      v44 = v57;
      MEMORY[0x2318A6080](v46, -1, -1);
    }

    (*(v49 + 8))(v39, v50);
    (*(v28 + 8))(v43, v38);
    result = (*(v56 + 8))(v44, v10);
    v37 = 0;
  }

LABEL_13:
  *v58 = v37;
  return result;
}

uint64_t sub_22BBED398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  type metadata accessor for QueryExecutor(0, a2, a3, a5);
  sub_22BB2F330();
  v9 = *(v8 + 32);

  return v9(a4, a1, v7);
}

uint64_t sub_22BBED3FC()
{
  v0 = sub_22BBE6DE0(&qword_27D8E2680, &qword_22BDBCCB0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v33 - v1;
  v42 = sub_22BDBA674();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v41 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BDBA704();
  sub_22BB30444();
  v9 = v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  result = sub_22BDBA5B4();
  v17 = v7;
  v18 = result;
  v19 = 0;
  v20 = result + 56;
  v21 = 1 << *(result + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(result + 56);
  v24 = (v21 + 63) >> 6;
  v45 = v9 + 32;
  v46 = v9 + 16;
  v44 = v9 + 88;
  v43 = *MEMORY[0x277D72FA0];
  v38 = (v9 + 96);
  v39 = (v9 + 8);
  v36 = (v4 + 8);
  v37 = (v4 + 32);
  v34 = v17;
  v35 = v15;
  v40 = result;
  while (v23)
  {
    v25 = v19;
LABEL_9:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    (*(v9 + 16))(v15, *(v18 + 48) + *(v9 + 72) * (v26 | (v25 << 6)), v17);
    (*(v9 + 32))(v13, v15, v17);
    v27 = (*(v9 + 88))(v13, v17);
    if (v27 == v43)
    {
      (*v38)(v13, v17);
      v28 = sub_22BBE6DE0(&qword_27D8E2688, &qword_22BDBCCB8);
      v29 = v41;
      v30 = v42;
      (*v37)(v41, &v13[*(v28 + 48)], v42);
      sub_22BDBA6C4();
      sub_22BB2F330();
      (*(v31 + 8))(v13);
      sub_22BDBA654();
      (*v36)(v29, v30);
      v32 = sub_22BDBA894();
      if (sub_22BB3AA28(v2, 1, v32) != 1)
      {

        sub_22BB58728(v2, &qword_27D8E2680, &qword_22BDBCCB0);
        return 1;
      }

      result = sub_22BB58728(v2, &qword_27D8E2680, &qword_22BDBCCB0);
      v19 = v25;
      v17 = v34;
      v15 = v35;
      v18 = v40;
    }

    else
    {
      result = (*v39)(v13, v17);
      v19 = v25;
    }
  }

  while (1)
  {
    v25 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v25 >= v24)
    {

      return 0;
    }

    v23 = *(v20 + 8 * v25);
    ++v19;
    if (v23)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBED810(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_22BBED848(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_22BBED890(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for QueryExecutor(319, *(a1 + 16), *(a1 + 24), a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22BBED900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22BDBA764();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_22BDBA014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 > v12)
  {
    v12 = *(v14 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v16;
  if (a2 <= v12)
  {
LABEL_27:
    if (v8 == v12)
    {
      v28 = a1;
      v11 = v8;
      v13 = v6;
    }

    else
    {
      v28 = ((a1 + v20) & ~v16);
      if (v11 == v12)
      {
        v13 = v9;
      }

      else
      {
        v28 = ((v28 + v17 + v18) & ~v18);
        v11 = v15;
      }
    }

    return sub_22BB3AA28(v28, v11, v13);
  }

  v21 = ((v17 + (v20 & ~v16) + v18) & ~v18) + v19;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v12 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 < 2)
    {
LABEL_26:
      if (v12)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_26;
  }

LABEL_16:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v12 + (v27 | v25) + 1;
}

void sub_22BBEDBC0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_22BDBA764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_22BDBA014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v15 + 84);
  if (v17 > v16)
  {
    v16 = *(v15 + 84);
  }

  v18 = *(v12 + 80);
  v19 = *(v9 + 64) + v18;
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v15 + 80);
  v22 = ((v20 + (v19 & ~v18) + v21) & ~v21) + *(v15 + 64);
  v23 = 8 * v22;
  if (a3 <= v16)
  {
    v24 = 0;
  }

  else if (v22 <= 3)
  {
    v27 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v16 >= a2)
  {
    switch(v24)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v10 == v16)
          {
            v30 = a1;
            v31 = a2;
            v13 = v10;
            v14 = v8;
          }

          else
          {
            v30 = (&a1[v19] & ~v18);
            if (v13 == v16)
            {
              v31 = a2;
              v14 = v11;
            }

            else
            {
              v30 = (&v30[v20 + v21] & ~v21);
              v31 = a2;
              v13 = v17;
            }
          }

          sub_22BB336D0(v30, v31, v13, v14);
        }

        break;
    }
  }

  else
  {
    v25 = ~v16 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> v23) + 1;
      if (v22)
      {
        v29 = v25 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v22 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        a1[v22] = v26;
        break;
      case 2:
        *&a1[v22] = v26;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v26;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22BBEDF18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v3);
  v2[4] = sub_22BB30ACC();
  v4 = sub_22BDBA594();
  v2[5] = v4;
  sub_22BB30434(v4);
  v2[6] = v5;
  v2[7] = sub_22BB31AF0();
  v2[8] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E2720, &qword_22BDBCD30);
  v2[9] = v6;
  sub_22BB2F0C8(v6);
  v2[10] = sub_22BB30ACC();
  v7 = sub_22BDB4854();
  v2[11] = v7;
  sub_22BB30434(v7);
  v2[12] = v8;
  v2[13] = sub_22BB30ACC();
  v9 = sub_22BDB4434();
  sub_22BB2F0C8(v9);
  v2[14] = sub_22BB30ACC();
  v10 = sub_22BDB4414();
  sub_22BB2F0C8(v10);
  v2[15] = sub_22BB31AF0();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v11 = sub_22BDB4874();
  v2[18] = v11;
  sub_22BB30434(v11);
  v2[19] = v12;
  v2[20] = sub_22BB30ACC();
  v13 = sub_22BBE6DE0(&qword_27D8E2728, &qword_22BDBCD38);
  sub_22BB2F0C8(v13);
  v2[21] = sub_22BB30ACC();
  v14 = sub_22BBE6DE0(&qword_27D8E2730, &qword_22BDBCD40);
  sub_22BB2F0C8(v14);
  v2[22] = sub_22BB30ACC();
  v15 = sub_22BBE6DE0(&qword_27D8E2738, &qword_22BDBCD48);
  sub_22BB2F0C8(v15);
  v2[23] = sub_22BB30ACC();
  v16 = sub_22BBE6DE0(&qword_27D8E2740, &qword_22BDBCD50);
  sub_22BB2F0C8(v16);
  v2[24] = sub_22BB30ACC();
  v17 = sub_22BBE6DE0(&qword_27D8E2748, &qword_22BDBCD58);
  sub_22BB2F0C8(v17);
  v2[25] = sub_22BB30ACC();
  v18 = sub_22BBE6DE0(&qword_27D8E2750, &qword_22BDBCD60);
  sub_22BB2F0C8(v18);
  v2[26] = sub_22BB30ACC();
  v19 = sub_22BBE6DE0(&qword_27D8E2758, &qword_22BDBCD68);
  sub_22BB2F0C8(v19);
  v2[27] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2760, &qword_22BDBCD70);
  sub_22BB2F0C8(v20);
  v2[28] = sub_22BB30ACC();
  v21 = sub_22BBE6DE0(&qword_27D8E2768, &qword_22BDBCD78);
  sub_22BB2F0C8(v21);
  v2[29] = sub_22BB30ACC();
  v22 = sub_22BBE6DE0(&qword_27D8E2770, &qword_22BDBCD80);
  sub_22BB2F0C8(v22);
  v2[30] = sub_22BB30ACC();
  v23 = sub_22BBE6DE0(&qword_27D8E2778, &qword_22BDBCD88);
  sub_22BB2F0C8(v23);
  v2[31] = sub_22BB30ACC();
  v24 = sub_22BBE6DE0(&qword_27D8E2780, &qword_22BDBCD90);
  sub_22BB2F0C8(v24);
  v2[32] = sub_22BB30ACC();
  v25 = sub_22BBE6DE0(&qword_27D8E2788, &qword_22BDBCD98);
  sub_22BB2F0C8(v25);
  v2[33] = sub_22BB30ACC();
  v26 = sub_22BBE6DE0(&qword_27D8E2790, &qword_22BDBCDA0);
  sub_22BB2F0C8(v26);
  v2[34] = sub_22BB30ACC();
  v27 = sub_22BDB4944();
  v2[35] = v27;
  sub_22BB30434(v27);
  v2[36] = v28;
  v2[37] = sub_22BB31AF0();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v29 = sub_22BDB4834();
  v2[40] = v29;
  sub_22BB30434(v29);
  v2[41] = v30;
  v2[42] = sub_22BB30ACC();
  v31 = sub_22BDB77D4();
  v2[43] = v31;
  sub_22BB30434(v31);
  v2[44] = v32;
  v2[45] = sub_22BB31AF0();
  v2[46] = swift_task_alloc();
  v2[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEE49C, 0, 0);
}

uint64_t sub_22BBEE49C(uint64_t a1)
{
  v909 = v1;
  sub_22BDB63A4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "Running LocationCandidateGenerator", v4, 2u);
    sub_22BB30AF0();
  }

  v5 = v1[47];
  v7 = v1[43];
  v6 = v1[44];
  v9 = v1[33];
  v8 = v1[34];
  v10 = v1[31];
  v11 = v1[32];
  v903 = v1[29];
  v906 = v1[30];
  v899 = v1[28];
  v868 = v1[27];
  v870 = v1[26];
  v872 = v1[25];
  v875 = v1[24];
  v878 = v1[23];
  v885 = v1[21];
  v881 = v1[22];
  v893 = v1[2];

  v896 = *(v6 + 8);
  v896(v5, v7);
  sub_22BDB4824();
  v12 = sub_22BDB48D4();
  sub_22BB3591C(v8, v13, v14, v12);
  v15 = sub_22BDB48E4();
  sub_22BB3591C(v9, v16, v17, v15);
  v18 = sub_22BDB48F4();
  sub_22BB3591C(v11, v19, v20, v18);
  v21 = sub_22BDB48B4();
  sub_22BB3591C(v10, v22, v23, v21);
  v24 = sub_22BDB4884();
  sub_22BB3591C(v906, v25, v26, v24);
  v27 = sub_22BDB4904();
  sub_22BB3591C(v903, v28, v29, v27);
  v30 = sub_22BDB48A4();
  sub_22BB3591C(v899, v31, v32, v30);
  v33 = sub_22BDB4954();
  sub_22BB3591C(v868, v34, v35, v33);
  v36 = sub_22BDB4914();
  sub_22BB3591C(v870, v37, v38, v36);
  v39 = sub_22BDB47F4();
  sub_22BB3591C(v872, v40, v41, v39);
  v42 = sub_22BDB47E4();
  sub_22BB3591C(v875, v43, v44, v42);
  v45 = sub_22BDB4804();
  sub_22BB3591C(v878, v46, v47, v45);
  v48 = sub_22BDB47D4();
  sub_22BB336D0(v881, 1, 1, v48);
  v49 = sub_22BDB8234();
  v51 = v50;
  v52 = sub_22BDB48C4();
  sub_22BB336D0(v885, 1, 1, v52);
  v645 = 0;
  v676 = 0;
  v583 = v51;
  v614 = v885;
  v521 = v881;
  v552 = v49;
  v459 = v875;
  v490 = v878;
  v397 = v870;
  v428 = v872;
  v335 = 0;
  v366 = v868;
  sub_22BDB4934();
  sub_22BDB4404();
  sub_22BDB4404();
  sub_22BDB4404();
  sub_22BDB4424();
  if (v893)
  {
    v53 = v1[2];
    v54 = [v53 location];
    if (v54)
    {
      v55 = v54;
      [v54 coordinate];
    }

    v56 = [v53 location];
    if (v56)
    {
      v57 = v56;
      [v56 coordinate];
    }
  }

  v59 = v1[38];
  v58 = v1[39];
  v61 = v1[35];
  v60 = v1[36];
  sub_22BDB4864();
  sub_22BDB4844();
  sub_22BDB63A4();
  v62 = *(v60 + 16);
  v62(v59, v58, v61);
  v63 = sub_22BDB77C4();
  v64 = sub_22BDBB104();
  v65 = os_log_type_enabled(v63, v64);
  v66 = v1[46];
  v67 = v1[43];
  v68 = v1[38];
  if (v65)
  {
    v891 = v64;
    v904 = v1[46];
    v70 = v1[36];
    v69 = v1[37];
    v71 = v1[35];
    v900 = v1[43];
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v908[0] = v73;
    *v72 = 136315138;
    v62(v69, v68, v71);
    v74 = sub_22BDBAC14();
    v76 = v75;
    v907 = *(v70 + 8);
    v907(v68, v71);
    v77 = sub_22BB32EE0(v74, v76, v908);

    *(v72 + 4) = v77;
    _os_log_impl(&dword_22BB2C000, v63, v891, "Running location search with input: %s", v72, 0xCu);
    sub_22BB32FA4(v73);
    sub_22BB30AF0();
    sub_22BB30AF0();

    v79 = v900;
    v78 = v904;
  }

  else
  {
    v81 = v1[35];
    v80 = v1[36];

    v907 = *(v80 + 8);
    v907(v68, v81);
    v78 = v66;
    v79 = v67;
  }

  v896(v78, v79);
  v82 = sub_22BDB4814();
  sub_22BDB63A4();

  v83 = sub_22BDB77C4();
  v84 = sub_22BDBB104();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    *v85 = 134217984;
    *(v85 + 4) = *(v82 + 16);

    _os_log_impl(&dword_22BB2C000, v83, v84, "Got %ld location search results", v85, 0xCu);
    sub_22BB30AF0();
  }

  else
  {
  }

  v86 = v1[9];
  v87 = v1[6];
  result = (v896)(v1[45], v1[43]);
  v89 = 0;
  v897 = v87;
  v901 = (v87 + 32);
  v905 = MEMORY[0x277D84F90];
  v90 = *(v82 + 16);
  while (v90 != v89)
  {
    if (v89 >= *(v82 + 16))
    {
      __break(1u);
      return result;
    }

    v91 = v1[10];
    v93 = v1[4];
    v92 = v1[5];
    v94 = sub_22BBE6DE0(&qword_27D8E2798, &qword_22BDBCDA8);
    v95 = *(v94 - 8);
    v96 = *(v95 + 16);
    v97 = v82 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v89;
    v98 = *(v86 + 48);
    *v91 = v89;
    v96(v91 + v98, v97, v94);
    sub_22BBEF114(v89, v91 + v98, v93);
    sub_22BB58780(v91, &qword_27D8E2720, &qword_22BDBCD30);
    if (sub_22BB3AA28(v93, 1, v92) == 1)
    {
      result = sub_22BB58780(v1[4], &qword_27D8E2668, &unk_22BDBCCD0);
      ++v89;
    }

    else
    {
      v99 = v1[8];
      v894 = v1[7];
      v100 = v1[5];
      v101 = *v901;
      (*v901)(v99, v1[4], v100);
      v101(v894, v99, v100);
      v102 = v101;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BD8EBF4();
        v905 = v106;
      }

      v103 = *(v905 + 16);
      if (v103 >= *(v905 + 24) >> 1)
      {
        sub_22BD8EBF4();
        v905 = v107;
      }

      ++v89;
      v104 = v1[7];
      v105 = v1[5];
      *(v905 + 16) = v103 + 1;
      result = v102(v905 + ((*(v897 + 80) + 32) & ~*(v897 + 80)) + *(v897 + 72) * v103, v104, v105);
    }
  }

  v831 = v1[47];
  v862 = v1[46];
  v109 = v1[41];
  v108 = v1[42];
  v769 = v1[39];
  v800 = v1[40];
  v863 = v1[45];
  v864 = v1[38];
  v707 = v1[36];
  v738 = v1[35];
  v865 = v1[37];
  v866 = v1[34];
  v867 = v1[33];
  v869 = v1[32];
  v871 = v1[31];
  v873 = v1[30];
  v874 = v1[29];
  v876 = v1[28];
  v877 = v1[27];
  v879 = v1[26];
  v880 = v1[25];
  v882 = v1[24];
  v883 = v1[23];
  v884 = v1[22];
  v110 = v1[19];
  v111 = v1[20];
  v112 = v1[18];
  v886 = v1[21];
  v887 = v1[17];
  v888 = v1[16];
  v889 = v1[15];
  v113 = v1[13];
  v115 = v1[11];
  v114 = v1[12];
  v890 = v1[14];
  v892 = v1[10];
  v895 = v1[8];
  v898 = v1[7];
  v902 = v1[4];

  (*(v114 + 8))(v113, v115);
  (*(v110 + 8))(v111, v112);
  v116 = v769;
  v907(v769, v738);
  (*(v109 + 8))(v108, v800);
  v831, v117, v118, v119, v120, v121, v122, v123, v335, v366, v397, v428, v459, v490, v521, v552, v583, v614, v645, v676, v707, v738, v769, v800, v831;
  v862, v124, v125, v126, v127, v128, v129, v130, v336, v367, v398, v429, v460, v491, v522, v553, v584, v615, v646, v677, v708, v739, v770, v801, v832;
  v863, v131, v132, v133, v134, v135, v136, v137, v337, v368, v399, v430, v461, v492, v523, v554, v585, v616, v647, v678, v709, v740, v771, v802, v833;
  v108, v138, v139, v140, v141, v142, v143, v144, v338, v369, v400, v431, v462, v493, v524, v555, v586, v617, v648, v679, v710, v741, v772, v803, v834;
  v116, v145, v146, v147, v148, v149, v150, v151, v339, v370, v401, v432, v463, v494, v525, v556, v587, v618, v649, v680, v711, v742, v773, v804, v835;
  v864, v152, v153, v154, v155, v156, v157, v158, v340, v371, v402, v433, v464, v495, v526, v557, v588, v619, v650, v681, v712, v743, v774, v805, v836;
  v865, v159, v160, v161, v162, v163, v164, v165, v341, v372, v403, v434, v465, v496, v527, v558, v589, v620, v651, v682, v713, v744, v775, v806, v837;
  v866, v166, v167, v168, v169, v170, v171, v172, v342, v373, v404, v435, v466, v497, v528, v559, v590, v621, v652, v683, v714, v745, v776, v807, v838;
  v867, v173, v174, v175, v176, v177, v178, v179, v343, v374, v405, v436, v467, v498, v529, v560, v591, v622, v653, v684, v715, v746, v777, v808, v839;
  v869, v180, v181, v182, v183, v184, v185, v186, v344, v375, v406, v437, v468, v499, v530, v561, v592, v623, v654, v685, v716, v747, v778, v809, v840;
  v871, v187, v188, v189, v190, v191, v192, v193, v345, v376, v407, v438, v469, v500, v531, v562, v593, v624, v655, v686, v717, v748, v779, v810, v841;
  v873, v194, v195, v196, v197, v198, v199, v200, v346, v377, v408, v439, v470, v501, v532, v563, v594, v625, v656, v687, v718, v749, v780, v811, v842;
  v874, v201, v202, v203, v204, v205, v206, v207, v347, v378, v409, v440, v471, v502, v533, v564, v595, v626, v657, v688, v719, v750, v781, v812, v843;
  v876, v208, v209, v210, v211, v212, v213, v214, v348, v379, v410, v441, v472, v503, v534, v565, v596, v627, v658, v689, v720, v751, v782, v813, v844;
  v877, v215, v216, v217, v218, v219, v220, v221, v349, v380, v411, v442, v473, v504, v535, v566, v597, v628, v659, v690, v721, v752, v783, v814, v845;
  v879, v222, v223, v224, v225, v226, v227, v228, v350, v381, v412, v443, v474, v505, v536, v567, v598, v629, v660, v691, v722, v753, v784, v815, v846;
  v880, v229, v230, v231, v232, v233, v234, v235, v351, v382, v413, v444, v475, v506, v537, v568, v599, v630, v661, v692, v723, v754, v785, v816, v847;
  v882, v236, v237, v238, v239, v240, v241, v242, v352, v383, v414, v445, v476, v507, v538, v569, v600, v631, v662, v693, v724, v755, v786, v817, v848;
  v883, v243, v244, v245, v246, v247, v248, v249, v353, v384, v415, v446, v477, v508, v539, v570, v601, v632, v663, v694, v725, v756, v787, v818, v849;
  v884, v250, v251, v252, v253, v254, v255, v256, v354, v385, v416, v447, v478, v509, v540, v571, v602, v633, v664, v695, v726, v757, v788, v819, v850;
  v886, v257, v258, v259, v260, v261, v262, v263, v355, v386, v417, v448, v479, v510, v541, v572, v603, v634, v665, v696, v727, v758, v789, v820, v851;
  v111, v264, v265, v266, v267, v268, v269, v270, v356, v387, v418, v449, v480, v511, v542, v573, v604, v635, v666, v697, v728, v759, v790, v821, v852;
  v887, v271, v272, v273, v274, v275, v276, v277, v357, v388, v419, v450, v481, v512, v543, v574, v605, v636, v667, v698, v729, v760, v791, v822, v853;
  v888, v278, v279, v280, v281, v282, v283, v284, v358, v389, v420, v451, v482, v513, v544, v575, v606, v637, v668, v699, v730, v761, v792, v823, v854;
  v889, v285, v286, v287, v288, v289, v290, v291, v359, v390, v421, v452, v483, v514, v545, v576, v607, v638, v669, v700, v731, v762, v793, v824, v855;
  v890, v292, v293, v294, v295, v296, v297, v298, v360, v391, v422, v453, v484, v515, v546, v577, v608, v639, v670, v701, v732, v763, v794, v825, v856;
  v113, v299, v300, v301, v302, v303, v304, v305, v361, v392, v423, v454, v485, v516, v547, v578, v609, v640, v671, v702, v733, v764, v795, v826, v857;
  v892, v306, v307, v308, v309, v310, v311, v312, v362, v393, v424, v455, v486, v517, v548, v579, v610, v641, v672, v703, v734, v765, v796, v827, v858;
  v895, v313, v314, v315, v316, v317, v318, v319, v363, v394, v425, v456, v487, v518, v549, v580, v611, v642, v673, v704, v735, v766, v797, v828, v859;
  v898, v320, v321, v322, v323, v324, v325, v326, v364, v395, v426, v457, v488, v519, v550, v581, v612, v643, v674, v705, v736, v767, v798, v829, v860;
  v902, v327, v328, v329, v330, v331, v332, v333, v365, v396, v427, v458, v489, v520, v551, v582, v613, v644, v675, v706, v737, v768, v799, v830, v861;
  v334 = v1[1];

  return v334(v905);
}

uint64_t sub_22BBEF114@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a1;
  v55 = a3;
  v4 = sub_22BBE6DE0(&qword_27D8E2798, &qword_22BDBCDA8);
  v51 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v51 - v5;
  v7 = sub_22BDB77D4();
  v53 = *(v7 - 8);
  v54 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - v11;
  v13 = sub_22BDB4944();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB4894();
  v17 = sub_22BDB4924();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    sub_22BDB63A4();
    v18 = v17;
    v19 = sub_22BDB77C4();
    v20 = sub_22BDBB104();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 134218242;
      *(v21 + 4) = v52;
      *(v21 + 12) = 2112;
      *(v21 + 14) = v18;
      *v22 = v17;
      v23 = v18;
      _os_log_impl(&dword_22BB2C000, v19, v20, "converted results[%ld] to placemark: %@", v21, 0x16u);
      sub_22BB58780(v22, &unk_27D8E6A70, &unk_22BDBCDB0);
      MEMORY[0x2318A6080](v22, -1, -1);
      MEMORY[0x2318A6080](v21, -1, -1);
    }

    (*(v53 + 8))(v12, v54);
    v24 = sub_22BDBA514();
    v32 = swift_allocBox(v24, v25, v26, v27, v28, v29, v30, v31, v51, v52, v53);
    v34 = v33;
    sub_22BDBA504();
    (*(*(v24 - 8) + 104))(v34, *MEMORY[0x277D729D0], v24);
    v35 = v55;
    *v55 = v32;
    v36 = *MEMORY[0x277D72A58];
    v37 = sub_22BDBA594();
    (*(*(v37 - 8) + 104))(v35, v36, v37);
    v38 = v35;
    v39 = 0;
    v40 = v37;
  }

  else
  {
    sub_22BDB63A4();
    v41 = v51;
    (*(v51 + 16))(v6, a2, v4);
    v42 = sub_22BDB77C4();
    v43 = sub_22BDBB104();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v56 = v45;
      *v44 = 134218242;
      *(v44 + 4) = v52;
      *(v44 + 12) = 2080;
      sub_22BBEF670();
      v46 = sub_22BDBB684();
      v48 = v47;
      (*(v41 + 8))(v6, v4);
      v49 = sub_22BB32EE0(v46, v48, &v56);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_22BB2C000, v42, v43, "Skipping location result [%ld] - not convertible to CLPlacemark %s", v44, 0x16u);
      sub_22BB32FA4(v45);
      MEMORY[0x2318A6080](v45, -1, -1);
      MEMORY[0x2318A6080](v44, -1, -1);
    }

    else
    {

      (*(v41 + 8))(v6, v4);
    }

    (*(v53 + 8))(v10, v54);
    v40 = sub_22BDBA594();
    v38 = v55;
    v39 = 1;
  }

  return sub_22BB336D0(v38, v39, 1, v40);
}

unint64_t sub_22BBEF670()
{
  result = qword_27D8E27A0;
  if (!qword_27D8E27A0)
  {
    sub_22BBEB2E0(&qword_27D8E2798, &qword_22BDBCDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E27A0);
  }

  return result;
}

uint64_t type metadata accessor for LocationCandidateGenerator(uint64_t a1)
{
  result = qword_27D8E27A8;
  if (!qword_27D8E27A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBEF748()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_22BDBA604();
  v12 = swift_allocBox(v4, v5, v6, v7, v8, v9, v10, v11, v16[0], v16[1], v16[2]);
  (*(*(v4 - 8) + 104))(v13, *MEMORY[0x277D72CC0], v4);
  *v3 = v12;
  (*(v1 + 104))(v3, *MEMORY[0x277D72D50], v0);
  v14 = sub_22BBFB614();
  (*(v1 + 8))(v3, v0);
  if (v14)
  {
    return v14;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_22BBEF89C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v6 = sub_22BBE6DE0(&qword_27D8E27B8, &unk_22BDBD9D0);
  sub_22BB2F0C8(v6);
  v4[17] = sub_22BB30ACC();
  v7 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v7);
  v4[18] = sub_22BB30ACC();
  v8 = sub_22BBE6DE0(&qword_27D8E27C8, &qword_22BDBCDF8);
  sub_22BB2F0C8(v8);
  v4[19] = sub_22BB30ACC();
  v9 = sub_22BBE6DE0(&qword_27D8E27D0, &unk_22BDBCE00);
  sub_22BB2F0C8(v9);
  v4[20] = sub_22BB30ACC();
  v10 = *(a3 + 16);
  v4[21] = v10;
  v11 = *(a3 + 24);
  v4[22] = v11;
  v13 = type metadata accessor for SearchToolExecutor.HydratedSearchResults(255, v10, v11, v12);
  v4[23] = v13;
  v14 = sub_22BDBB254();
  v4[24] = v14;
  sub_22BB30434(v14);
  v4[25] = v15;
  v4[26] = sub_22BB30ACC();
  v4[27] = *(v13 - 8);
  v4[28] = sub_22BB30ACC();
  v16 = sub_22BDBA634();
  v4[29] = v16;
  sub_22BB30434(v16);
  v4[30] = v17;
  v4[31] = sub_22BB30ACC();
  v18 = sub_22BDBA3A4();
  v4[32] = v18;
  sub_22BB30434(v18);
  v4[33] = v19;
  v4[34] = sub_22BB30ACC();
  v20 = sub_22BDBA594();
  v4[35] = v20;
  sub_22BB30434(v20);
  v4[36] = v21;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v22 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  sub_22BB2F0C8(v22);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v23 = sub_22BDB77D4();
  v4[42] = v23;
  sub_22BB30434(v23);
  v4[43] = v24;
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBEFC20, 0, 0);
}

uint64_t sub_22BBEFC20()
{
  v125 = v0;
  sub_22BDB63A4();
  v1 = sub_22BDB77C4();
  v2 = sub_22BDBB104();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_22BB2C000, v1, v2, "Running SearchToolCandidateGenerator", v3, 2u);
    MEMORY[0x2318A6080](v3, -1, -1);
  }

  v4 = *(v0 + 368);
  v5 = *(v0 + 336);
  v6 = *(v0 + 344);
  v118 = *(v0 + 328);
  v114 = *(v0 + 320);
  v7 = *(v0 + 288);
  v8 = *(v0 + 264);

  v9 = *(v6 + 8);
  *(v0 + 376) = v9;
  v108 = v9;
  v9(v4, v5);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v10 = sub_22BDBAB14();
  result = MEMORY[0x2318A21C0]();
  v12 = 0;
  v13 = result + 64;
  v115 = result;
  v14 = -1;
  v15 = -1 << *(result + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(result + 64);
  v17 = (63 - v15) >> 6;
  v120 = (v7 + 32);
  v121 = (v7 + 16);
  v119 = *MEMORY[0x277D729E0];
  *(v0 + 408) = *MEMORY[0x277D729E0];
  v110 = (v8 + 16);
  v112 = v0;
  v113 = v7;
  v109 = (v7 + 104);
  v116 = v17;
  for (i = result + 64; ; v13 = i)
  {
    *(v0 + 384) = v10;
    if (!v16)
    {
      while (1)
      {
        v18 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v18 >= v17)
        {
          v92 = *(v0 + 320);
          v93 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
          sub_22BB31B08(v92, v94, v95, v93);
          v16 = 0;
          goto LABEL_13;
        }

        v16 = *(v13 + 8 * v18);
        ++v12;
        if (v16)
        {
          v122 = v10;
          v12 = v18;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v122 = v10;
    v18 = v12;
LABEL_12:
    v20 = *(v0 + 312);
    v19 = *(v0 + 320);
    v21 = *(v0 + 280);
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = v22 | (v18 << 6);
    v24 = (*(v115 + 48) + 16 * v23);
    v25 = *v24;
    v26 = v24[1];
    (*(v113 + 16))(v20, *(v115 + 56) + *(v113 + 72) * v23, v21);
    v27 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
    v28 = *(v27 + 48);
    *v19 = v25;
    v0 = v112;
    *(v114 + 8) = v26;
    (*(v113 + 32))(&v19[v28], v20, v21);
    sub_22BB336D0(v19, 0, 1, v27);

    v10 = v122;
LABEL_13:
    v29 = *(v0 + 328);
    sub_22BBF1708(*(v0 + 320), v29);
    v30 = sub_22BBE6DE0(&qword_27D8E27E8, &qword_22BDBF4C0);
    if (sub_22BB3AA28(v29, 1, v30) == 1)
    {
      break;
    }

    v31 = *(v0 + 328);
    v32 = *v31;
    v33 = *(v118 + 8);
    (*v120)(*(v0 + 304), v31 + *(v30 + 48), *(v0 + 280));
    v123 = v32;
    v34 = v32 == 0x6E65644965707974 && v33 == 0xEF73726569666974;
    if (v34 || (sub_22BDBB6D4() & 1) != 0)
    {
      v42 = *(v0 + 280);
      v43 = sub_22BB31F1C();
      v44(v43);
      v45 = sub_22BB31F1C();
      if (v46(v45, v42) == v119)
      {
        v47 = *(v0 + 272);
        v48 = *(v0 + 256);
        v49 = *(v0 + 120);
        v50 = sub_22BB31F1C();
        v51(v50);
        v52 = swift_projectBox();
        (*v110)(v47, v52, v48);

        v124[0] = sub_22BDBA394();
        sub_22BBF0FAC(v124, v49);
        v53 = *(v0 + 280);
        v54 = *(v0 + 256);
        v111 = swift_allocBox(v54, v55, v56, v57, v58, v59, v60, v61, v106, v107, v108);
        sub_22BDBA384();
        sub_22BDBA374();
        *(v0 + 40) = v53;
        *(v0 + 48) = MEMORY[0x277D72A68];
        *sub_22BB8B8A0((v0 + 16), v62, v63, v64, v65, v66, v67, v68) = v111;
        (*v109)();
        v69 = sub_22BB31F1C();
        v70(v69, v54);
        goto LABEL_23;
      }

      v71 = sub_22BB338A4();
      v72(v71);
    }

    v73 = *(v0 + 304);
    v74 = *(v0 + 280);
    *(v0 + 40) = v74;
    *(v0 + 48) = MEMORY[0x277D72A68];
    v75 = sub_22BB8B8A0((v0 + 16), v35, v36, v37, v38, v39, v40, v41);
    (*v121)(v75, v73, v74);
LABEL_23:
    sub_22BB69088(v0 + 16, v0 + 56);
    swift_isUniquelyReferenced_nonNull_native();
    v124[0] = v10;
    v76 = v33;
    result = sub_22BD8446C(v123, v33);
    if (__OFADD__(v10[2], (v77 & 1) == 0))
    {
      goto LABEL_40;
    }

    v78 = result;
    v79 = v77;
    sub_22BBE6DE0(&qword_27D8E27F0, &qword_22BDBCE18);
    if (sub_22BDBB4A4())
    {
      v80 = sub_22BD8446C(v123, v76);
      if ((v79 & 1) != (v81 & 1))
      {
        sub_22BB341A0();

        return sub_22BDBB744();
      }

      v78 = v80;
    }

    v82 = *(v0 + 280);
    if (v79)
    {

      v10 = v124[0];
      v83 = (*(v124[0] + 56) + 40 * v78);
      sub_22BB32FA4(v83);
      sub_22BB382E8((v0 + 56), v83);
      v84 = sub_22BB338A4();
      v85(v84, v82);
    }

    else
    {
      v10 = v124[0];
      *(v124[0] + 8 * (v78 >> 6) + 64) |= 1 << v78;
      v86 = (v10[6] + 16 * v78);
      *v86 = v123;
      v86[1] = v76;
      sub_22BB382E8((v0 + 56), v10[7] + 40 * v78);
      v87 = sub_22BB338A4();
      result = v88(v87, v82);
      v89 = v10[2];
      v90 = __OFADD__(v89, 1);
      v91 = v89 + 1;
      if (v90)
      {
        goto LABEL_41;
      }

      v10[2] = v91;
    }

    result = sub_22BB32FA4((v0 + 16));
    v17 = v116;
  }

  v96 = *(v0 + 168);
  v97 = *(v0 + 176);

  v98 = swift_task_alloc();
  *(v0 + 392) = v98;
  type metadata accessor for SearchToolExecutor(0, v96, v97, v99);
  *v98 = v0;
  v98[1] = sub_22BBF087C;
  sub_22BB341A0();

  return sub_22BBFAD34(v100, v101, v102, v103);
}

uint64_t sub_22BBF0998()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  if (sub_22BB3AA28(v1, 1, v2) == 1)
  {
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    sub_22BDB63A4();
    v3 = sub_22BDB77C4();
    v4 = sub_22BDBB104();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22BB2C000, v3, v4, "Unable to execute SearchTool or hydrate entities", v5, 2u);
      MEMORY[0x2318A6080](v5, -1, -1);
    }

    v293 = *(v0 + 408);
    v6 = *(v0 + 376);
    v7 = *(v0 + 360);
    v8 = *(v0 + 336);
    v9 = *(v0 + 288);
    v245 = *(v0 + 312);
    v261 = *(v0 + 280);
    v10 = *(v0 + 248);
    v11 = *(v0 + 256);
    v12 = *(v0 + 240);
    v228 = *(v0 + 232);
    v277 = *(v0 + 160);
    v310 = *(v0 + 152);
    v326 = *(v0 + 144);
    v343 = *(v0 + 136);
    v359 = *(v0 + 104);

    v6(v7, v8);
    v20 = swift_allocBox(v11, v13, v14, v15, v16, v17, v18, v19, v192, v210, v228);
    v21 = sub_22BDBA604();
    v29 = swift_allocBox(v21, v22, v23, v24, v25, v26, v27, v28, v193, v211, v229);
    sub_22BB30474();
    (*(v30 + 104))();
    *v10 = v29;
    (*(v12 + 104))(v10, *MEMORY[0x277D72D50], v227);
    sub_22BDBA374();
    *v245 = v20;
    v32 = *(v9 + 104);
    v31 = (v9 + 104);
    v32(v245, v293, v261);
    v33 = sub_22BDB4D94();
    sub_22BB3591C(v277, v34, v35, v33);
    v36 = sub_22BDB4D54();
    v37 = v310;
    sub_22BB3591C(v310, v38, v39, v36);
    v40 = sub_22BDB4C34();
    sub_22BB3591C(v326, v41, v42, v40);
    v43 = sub_22BDB4BB4();
    sub_22BB31B08(v343, v44, v45, v43);
    v46 = sub_22BDB4DB4();
    sub_22BDB4DC4();
    v194 = v343;
    v2 = v359;
    sub_22BDB4DA4();
    Output = type metadata accessor for QueryOutput(0);
    v48 = Output[5];
    v49 = type metadata accessor for ResultResponse(0);
    v50 = v359 + v48;
    v51 = v359;
    sub_22BB31B08(v50, v52, v53, v49);
    v54 = 0;
    v55 = 0;
  }

  else
  {
    v56 = *(v0 + 312);
    v57 = *(v0 + 280);
    v58 = *(v0 + 288);
    v46 = *(v0 + 224);
    v360 = *(v0 + 216);
    v60 = *(v0 + 152);
    v59 = *(v0 + 160);
    v294 = *(v0 + 144);
    v327 = *(v0 + 136);
    v51 = *(v0 + 104);
    (*(v360 + 32))(v46, v1, v2);
    (*(v58 + 16))(v56, v46, v57);
    v61 = sub_22BDB4D94();
    sub_22BB3591C(v59, v62, v63, v61);
    v64 = sub_22BDB4D54();
    sub_22BB31B08(v60, v65, v66, v64);
    v29 = *(v46 + v2[10]);
    v67 = sub_22BDB4C34();
    sub_22BB3591C(v294, v68, v69, v67);
    v70 = sub_22BDB4BB4();
    v21 = v327;
    sub_22BB31B08(v327, v71, v72, v70);

    v194 = v327;
    sub_22BDB4DA4();
    v73 = v2[11];
    Output = type metadata accessor for QueryOutput(0);
    sub_22BBF17C4(v46 + v73, v51 + Output[5]);
    v54 = *(v46 + v2[13]);
    v37 = v360 + 8;
    v31 = *(v360 + 8);
    v74 = v54;
    v31(v46, v2);
    v55 = 1;
  }

  *(v51 + Output[6]) = v54;
  *(v51 + Output[7]) = v55;
  v75 = sub_22BB32934();
  v75, v76, v77, v78, v79, v80, v81, v82, v194, v210, v227, v245, v261, v84, v83, *(v0 + 160), *(v0 + 152), *(v0 + 144), *(v0 + 136), v376, v392, v408, v424, v440, v456;
  v46, v85, v86, v87, v88, v89, v90, v91, v195, v212, v230, v246, v262, v278, v295, v311, v328, v344, v361, v377, v393, v409, v425, v441, v457;
  Output, v92, v93, v94, v95, v96, v97, v98, v196, v213, v231, v247, v263, v279, v296, v312, v329, v345, v362, v378, v394, v410, v426, v442, v458;
  v54, v99, v100, v101, v102, v103, v104, v105, v197, v214, v232, v248, v264, v280, v297, v313, v330, v346, v363, v379, v395, v411, v427, v443, v459;
  v37, v106, v107, v108, v109, v110, v111, v112, v198, v215, v233, v249, v265, v281, v298, v314, v331, v347, v364, v380, v396, v412, v428, v444, v460;
  v21, v113, v114, v115, v116, v117, v118, v119, v199, v216, v234, v250, v266, v282, v299, v315, v332, v348, v365, v381, v397, v413, v429, v445, v461;
  v31, v120, v121, v122, v123, v124, v125, v126, v200, v217, v235, v251, v267, v283, v300, v316, v333, v349, v366, v382, v398, v414, v430, v446, v462;
  v29, v127, v128, v129, v130, v131, v132, v133, v201, v218, v236, v252, v268, v284, v301, v317, v334, v350, v367, v383, v399, v415, v431, v447, v463;
  v51, v134, v135, v136, v137, v138, v139, v140, v202, v219, v237, v253, v269, v285, v302, v318, v335, v351, v368, v384, v400, v416, v432, v448, v464;
  v2, v141, v142, v143, v144, v145, v146, v147, v203, v220, v238, v254, v270, v286, v303, v319, v336, v352, v369, v385, v401, v417, v433, v449, v465;
  v287, v148, v149, v150, v151, v152, v153, v154, v204, v221, v239, v255, v271, v287, v304, v320, v337, v353, v370, v386, v402, v418, v434, v450, v466;
  v305, v155, v156, v157, v158, v159, v160, v161, v205, v222, v240, v256, v272, v288, v305, v321, v338, v354, v371, v387, v403, v419, v435, v451, v467;
  v322, v162, v163, v164, v165, v166, v167, v168, v206, v223, v241, v257, v273, v289, v306, v322, v339, v355, v372, v388, v404, v420, v436, v452, v468;
  v340, v169, v170, v171, v172, v173, v174, v175, v207, v224, v242, v258, v274, v290, v307, v323, v340, v356, v373, v389, v405, v421, v437, v453, v469;
  v357, v176, v177, v178, v179, v180, v181, v182, v208, v225, v243, v259, v275, v291, v308, v324, v341, v357, v374, v390, v406, v422, v438, v454, v470;
  v375, v183, v184, v185, v186, v187, v188, v189, v209, v226, v244, v260, v276, v292, v309, v325, v342, v358, v375, v391, v407, v423, v439, v455, v471;
  sub_22BB2F09C();

  return v190();
}

uint64_t sub_22BBF0E7C()
{

  v215 = v0[50];
  v7 = sub_22BB30F28();
  v8 = v0[37];
  v9 = v0[34];
  v10 = v0[31];
  v7, v11, v12, v13, v14, v15, v16, v17, v0[28], v0[26], v0[20], v0[19], v0[18], v0[17], v215, v231, v247, v263, v279, v295, v311, v327, v343, v0, v374;
  v1, v18, v19, v20, v21, v22, v23, v24, v125, v140, v155, v170, v185, v200, v216, v232, v248, v264, v280, v296, v312, v328, v344, v359, v375;
  v2, v25, v26, v27, v28, v29, v30, v31, v126, v141, v156, v171, v186, v201, v217, v233, v249, v265, v281, v297, v313, v329, v345, v360, v376;
  v3, v32, v33, v34, v35, v36, v37, v38, v127, v142, v157, v172, v187, v202, v218, v234, v250, v266, v282, v298, v314, v330, v346, v361, v377;
  v4, v39, v40, v41, v42, v43, v44, v45, v128, v143, v158, v173, v188, v203, v219, v235, v251, v267, v283, v299, v315, v331, v347, v362, v378;
  v5, v46, v47, v48, v49, v50, v51, v52, v129, v144, v159, v174, v189, v204, v220, v236, v252, v268, v284, v300, v316, v332, v348, v363, v379;
  v6, v53, v54, v55, v56, v57, v58, v59, v130, v145, v160, v175, v190, v205, v221, v237, v253, v269, v285, v301, v317, v333, v349, v364, v380;
  v8, v60, v61, v62, v63, v64, v65, v66, v131, v146, v161, v176, v191, v206, v222, v238, v254, v270, v286, v302, v318, v334, v350, v365, v381;
  v9, v67, v68, v69, v70, v71, v72, v73, v132, v147, v162, v177, v192, v207, v223, v239, v255, v271, v287, v303, v319, v335, v351, v366, v382;
  v10, v74, v75, v76, v77, v78, v79, v80, v133, v148, v163, v178, v193, v208, v224, v240, v256, v272, v288, v304, v320, v336, v352, v367, v383;
  v134, v81, v82, v83, v84, v85, v86, v87, v134, v149, v164, v179, v194, v209, v225, v241, v257, v273, v289, v305, v321, v337, v353, v368, v384;
  v150, v88, v89, v90, v91, v92, v93, v94, v135, v150, v165, v180, v195, v210, v226, v242, v258, v274, v290, v306, v322, v338, v354, v369, v385;
  v166, v95, v96, v97, v98, v99, v100, v101, v136, v151, v166, v181, v196, v211, v227, v243, v259, v275, v291, v307, v323, v339, v355, v370, v386;
  v182, v102, v103, v104, v105, v106, v107, v108, v137, v152, v167, v182, v197, v212, v228, v244, v260, v276, v292, v308, v324, v340, v356, v371, v387;
  v198, v109, v110, v111, v112, v113, v114, v115, v138, v153, v168, v183, v198, v213, v229, v245, v261, v277, v293, v309, v325, v341, v357, v372, v388;
  v214, v116, v117, v118, v119, v120, v121, v122, v139, v154, v169, v184, v199, v214, v230, v246, v262, v278, v294, v310, v326, v342, v358, v373, v389;
  sub_22BB2F09C();

  return v123();
}

uint64_t sub_22BBF0FAC(uint64_t *a1, uint64_t a2)
{
  v5 = sub_22BDB77D4();
  v24 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *a1;
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v21 = v9;
  v22 = v10;
  v23 = v2;

  sub_22BDA253C(sub_22BBF184C, v20, v8);
  v12 = v11;
  v13 = *(v11 + 16);
  v14 = *(v8 + 16);
  if (v13 || !v14)
  {
    if (v14 != v13)
    {
      sub_22BDB63A4();
      v15 = sub_22BDB77C4();
      v16 = sub_22BDBB114();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_22BB2C000, v15, v16, "SearchToolCandidateGenerator: Removed disallowed typeIdentifier filters", v17, 2u);
        MEMORY[0x2318A6080](v17, -1, -1);
      }

      (*(v24 + 8))(v7, v5);
    }

    *a1 = v12;
  }

  else
  {

    type metadata accessor for SearchToolCandidateGenerator.SearchToolCandidateGeneratorError(0, v9, v10, v19);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_22BBF11D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v22 = a2;
  v6 = sub_22BDBA594();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDBA4B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D72A38])
  {
    (*(v7 + 96))(v9, v6);
    v14 = swift_projectBox();
    (*(v11 + 16))(v13, v14, v10);

    type metadata accessor for SearchToolCandidateGenerator(0, a3, v21, v15);
    v16 = sub_22BBEF748();
    MEMORY[0x28223BE20](v16);
    *(&v20 - 2) = v13;
    v17 = sub_22BD72628(sub_22BBF1888, (&v20 - 4), v16);

    v18 = !v17;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    (*(v7 + 8))(v9, v6);
    v18 = 1;
  }

  return v18 & 1;
}

uint64_t sub_22BBF1470()
{
  v0 = sub_22BDBA634();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  sub_22BDBA3D4();
  sub_22BDBA3D4();
  v7 = sub_22BDBA614();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v8(v6, v0);
  if (v7)
  {
    sub_22BDBA444();
    sub_22BDBA444();
    sub_22BC90C1C();
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_22BBF15F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22BDB8204();
  sub_22BB30474();
  (*(v10 + 32))(a5, a1);
  v12 = *(type metadata accessor for SearchToolCandidateGenerator(0, a3, a4, v11) + 36);
  type metadata accessor for SearchToolExecutor(0, a3, a4, v13);
  sub_22BB30474();
  v15 = *(v14 + 32);

  return v15(a5 + v12, a2);
}

uint64_t sub_22BBF16CC(uint64_t a1)
{
  sub_22BDBB814();
  sub_22BBE604C();
  return sub_22BDBB834();
}

uint64_t sub_22BBF1708(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E27D8, &qword_22BDC0640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for QueryOutput(uint64_t a1)
{
  result = qword_27D8E2900;
  if (!qword_27D8E2900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBF17C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *sub_22BBF18B0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_22BBF194C(uint64_t a1)
{
  result = sub_22BDB8204();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for SearchToolExecutor(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22BBF19D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v77 = sub_22BDB8204();
  v86 = *(v77 - 8);
  v83 = *(v86 + 84);
  v75 = sub_22BDB8E14();
  v85 = *(v75 - 8);
  v4 = *(v85 + 84);
  v73 = sub_22BDBA014();
  v84 = *(v73 - 8);
  v5 = *(v84 + 84);
  v76 = v4;
  v74 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v71 = *(a3 + 16);
  v82 = *(v71 - 8);
  v72 = *(v82 + 84);
  if (v72 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(v82 + 84);
  }

  v66 = sub_22BDB8274();
  v81 = *(v66 - 8);
  v90 = *(v81 + 84);
  if (v90)
  {
    v7 = v90 - 1;
  }

  else
  {
    v7 = 0;
  }

  v65 = sub_22BDBA234();
  v80 = *(v65 - 8);
  v89 = *(v80 + 84);
  v8 = v89 - 1;
  if (!v89)
  {
    v8 = 0;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v69 = v7;
  v70 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v68 = v10;
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v64 = sub_22BDB89A4();
  v79 = *(v64 - 8);
  v12 = *(v79 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v67 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v62 = sub_22BDB9774();
  v15 = *(v62 - 8);
  v63 = *(v15 + 84);
  if (v14 <= v63)
  {
    v14 = *(v15 + 84);
  }

  v61 = sub_22BDB9C14();
  v16 = *(v61 - 8);
  v17 = *(v16 + 84);
  if (v14 <= v17)
  {
    v18 = *(v16 + 84);
  }

  else
  {
    v18 = v14;
  }

  if (v18 <= 0x7FFFFFFF)
  {
    v19 = 0x7FFFFFFF;
  }

  else
  {
    v19 = v18;
  }

  v20 = *(v81 + 64);
  v21 = *(v84 + 80);
  v22 = *(v82 + 80);
  v23 = *(v80 + 80);
  v24 = *(v79 + 80);
  v25 = *(v15 + 80);
  v26 = *(v16 + 80);
  v27 = *(v15 + 64);
  if (v19 <= v83)
  {
    v28 = v83;
  }

  else
  {
    v28 = v19;
  }

  if (!v90)
  {
    ++v20;
  }

  if (v89)
  {
    v29 = *(v80 + 64);
  }

  else
  {
    v29 = *(v80 + 64) + 1;
  }

  v87 = v12;
  if (v12)
  {
    v30 = *(v79 + 64);
  }

  else
  {
    v30 = *(v79 + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v31 = *(v81 + 80) & 0xF8 | v23 | 7;
  v32 = *(v85 + 80) & 0xF8 | v21 | v22 | v31 | v24 | v25 | v26;
  v33 = *(v86 + 64) + v32;
  v34 = *(v85 + 64) + v21;
  v35 = *(v84 + 64) + v22;
  v36 = *(v82 + 64) + v31;
  v37 = v20 + 7;
  v38 = v29 + v24 + ((v23 + 16 + ((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23);
  v39 = v30 + 7;
  v40 = v25 + 40;
  v41 = v27 + 7;
  v42 = v26 + 8;
  if (a2 <= v28)
  {
    goto LABEL_65;
  }

  v43 = (v42 + ((((v41 + ((v40 + ((v39 + ((v38 + ((v36 + ((v35 + (v34 & ~v21)) & ~v22)) & ~v31)) & ~v24)) & 0xFFFFFFFFFFFFFFF8)) & ~v25)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v26;
  v44 = *(*(v61 - 8) + 64) + (v33 & ~v32);
  v45 = v44 + v43;
  v46 = 8 * (v44 + v43);
  if ((v44 + v43) > 3)
  {
    goto LABEL_47;
  }

  v49 = ((a2 - v28 + ~(-1 << v46)) >> v46) + 1;
  if (HIWORD(v49))
  {
    v47 = *(a1 + v45);
    if (v47)
    {
      goto LABEL_55;
    }
  }

  else
  {
    if (v49 <= 0xFF)
    {
      if (v49 < 2)
      {
        goto LABEL_65;
      }

LABEL_47:
      v47 = *(a1 + v45);
      if (!*(a1 + v45))
      {
        goto LABEL_65;
      }

LABEL_55:
      v50 = (v47 - 1) << v46;
      if (v45 > 3)
      {
        v50 = 0;
      }

      if (v45)
      {
        if (v45 <= 3)
        {
          v51 = v44 + v43;
        }

        else
        {
          v51 = 4;
        }

        switch(v51)
        {
          case 2:
            v52 = *a1;
            break;
          case 3:
            v52 = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            v52 = *a1;
            break;
          default:
            v52 = *a1;
            break;
        }
      }

      else
      {
        v52 = 0;
      }

      return v28 + (v52 | v50) + 1;
    }

    v47 = *(a1 + v45);
    if (*(a1 + v45))
    {
      goto LABEL_55;
    }
  }

LABEL_65:
  if (v83 >= v19)
  {
    v54 = v77;
    v53 = a1;
    v17 = v83;
    goto LABEL_69;
  }

  v53 = ((a1 + v33) & ~v32);
  if (v76 == v19)
  {
    v17 = v76;
    v54 = v75;
    goto LABEL_69;
  }

  v53 = ((v53 + v34) & ~v21);
  if (v74 == v19)
  {
    v17 = v74;
    v54 = v73;
    goto LABEL_69;
  }

  v53 = ((v53 + v35) & ~v22);
  if (v72 == v19)
  {
    v17 = v72;
    v54 = v71;
    goto LABEL_69;
  }

  v55 = (v53 + v36) & ~v31;
  if (v70 == v19)
  {
    if (v69 == v68)
    {
      v56 = v90;
      v57 = v66;
    }

    else
    {
      v55 = (v23 + 16 + ((((v37 + v55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v23;
      v56 = v89;
      v57 = v65;
    }

    goto LABEL_86;
  }

  v55 = (v38 + v55) & ~v24;
  if (v67 == v19)
  {
    v56 = v87;
    v57 = v64;
LABEL_86:
    v58 = sub_22BB3AA28(v55, v56, v57);
    if (v58 >= 2)
    {
      return v58 - 1;
    }

    else
    {
      return 0;
    }
  }

  v59 = (v39 + v55) & 0xFFFFFFFFFFFFFFF8;
  if ((v18 & 0x80000000) != 0)
  {
    v53 = ((v40 + v59) & ~v25);
    if (v63 == v19)
    {
      v17 = v63;
      v54 = v62;
    }

    else
    {
      v53 = ((v42 + ((((v53 + v41) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v26);
      v54 = v61;
    }

LABEL_69:

    return sub_22BB3AA28(v53, v17, v54);
  }

  v60 = *(v59 + 24);
  if (v60 >= 0xFFFFFFFF)
  {
    LODWORD(v60) = -1;
  }

  return (v60 + 1);
}

void sub_22BBF2160(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v97 = sub_22BDB8204();
  v105 = *(v97 - 8);
  v104 = *(v105 + 84);
  v95 = sub_22BDB8E14();
  v109 = *(v95 - 8);
  v5 = *(v109 + 84);
  v93 = sub_22BDBA014();
  v107 = *(v93 - 8);
  v6 = *(v107 + 84);
  v96 = v5;
  v94 = v6;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v91 = *(a4 + 16);
  v106 = *(v91 - 8);
  v92 = *(v106 + 84);
  if (v92 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v106 + 84);
  }

  v84 = sub_22BDB8274();
  v8 = *(v84 - 8);
  v101 = v8;
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v82 = sub_22BDBA234();
  v98 = *(v82 - 8);
  v100 = v98;
  v11 = *(v98 + 84);
  v12 = v11 - 1;
  if (!v11)
  {
    v12 = 0;
  }

  v87 = v10;
  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  if (v13 <= 0x7FFFFFFE)
  {
    v14 = 2147483646;
  }

  else
  {
    v14 = v13;
  }

  v89 = v14;
  v90 = v13;
  if (v14 > v7)
  {
    v7 = v14;
  }

  v86 = sub_22BDB89A4();
  v103 = *(v86 - 8);
  v15 = *(v103 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  v88 = v16;
  if (v16 <= v7)
  {
    v17 = v7;
  }

  else
  {
    v17 = v16;
  }

  v79 = sub_22BDB9774();
  v102 = *(v79 - 8);
  v80 = *(v102 + 84);
  if (v17 <= v80)
  {
    v17 = *(v102 + 84);
  }

  v18 = sub_22BDB9C14();
  v116 = 0;
  v19 = *(v18 - 8);
  v20 = *(v8 + 64);
  v78 = *(v19 + 84);
  if (v17 <= v78)
  {
    v21 = *(v19 + 84);
  }

  else
  {
    v21 = v17;
  }

  v85 = v21;
  if (v21 <= 0x7FFFFFFF)
  {
    v22 = 0x7FFFFFFF;
  }

  else
  {
    v22 = v21;
  }

  v23 = v104;
  if (v22 <= v104)
  {
    v24 = v104;
  }

  else
  {
    v24 = v22;
  }

  v83 = v9;
  if (!v9)
  {
    ++v20;
  }

  v81 = v11;
  if (v11)
  {
    v25 = *(v98 + 64);
  }

  else
  {
    v25 = *(v98 + 64) + 1;
  }

  v99 = v15;
  v26 = v15 == 0;
  v27 = *(v107 + 80);
  v28 = *(v106 + 80);
  v29 = *(v100 + 80);
  v30 = *(v101 + 80) & 0xF8 | v29 | 7;
  v31 = *(v103 + 80);
  v32 = *(v102 + 80);
  v33 = *(v19 + 80);
  v34 = *(v109 + 80) & 0xF8 | v27 | v28 | v30 | v31 | v32 | v33;
  v35 = *(v105 + 64) + v34;
  v36 = *(v109 + 64) + v27;
  v37 = *(v107 + 64);
  v38 = *(v106 + 64);
  v39 = v20 + 7;
  v110 = v25;
  v111 = v29 + 16;
  v40 = ((v29 + 16 + (((v39 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + v25 + v31;
  v41 = v37 + v28;
  v42 = v38 + v30;
  v43 = (v40 + ((v38 + v30 + ((v37 + v28 + (v36 & ~v27)) & ~v28)) & ~v30)) & ~v31;
  if (v26)
  {
    v44 = *(v103 + 64) + 1;
  }

  else
  {
    v44 = *(v103 + 64);
  }

  v45 = v44 + 7;
  v46 = (v32 + 40 + ((v44 + 7 + v43) & 0xFFFFFFFFFFFFFFF8)) & ~v32;
  v47 = *(v102 + 64) + 7;
  v48 = v47 + v46;
  v49 = *(*(v18 - 8) + 64);
  v50 = v33 + 8;
  v51 = v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33);
  v52 = 8 * v51;
  if (a3 > v24)
  {
    if (v51 <= 3)
    {
      v54 = ((a3 - v24 + ~(-1 << v52)) >> v52) + 1;
      if (HIWORD(v54))
      {
        v53 = 4;
      }

      else
      {
        if (v54 < 0x100)
        {
          v55 = 1;
        }

        else
        {
          v55 = 2;
        }

        if (v54 >= 2)
        {
          v53 = v55;
        }

        else
        {
          v53 = 0;
        }
      }
    }

    else
    {
      v53 = 1;
    }

    v116 = v53;
  }

  if (v24 < a2)
  {
    v56 = ~v24 + a2;
    if (v51 < 4)
    {
      v58 = (v56 >> v52) + 1;
      v57 = a1;
      if (v51)
      {
        v64 = v56 & ~(-1 << v52);
        bzero(a1, v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33));
        if (v51 == 3)
        {
          *a1 = v64;
          a1[2] = BYTE2(v64);
        }

        else
        {
          if (v51 != 2)
          {
            v73 = v116;
            *a1 = v56;
LABEL_88:
            switch(v73)
            {
              case 1:
                v57[v51] = v58;
                break;
              case 2:
                *&v57[v51] = v58;
                break;
              case 3:
                goto LABEL_123;
              case 4:
                *&v57[v51] = v58;
                break;
              default:
                return;
            }

            return;
          }

          *a1 = v64;
        }
      }
    }

    else
    {
      v57 = a1;
      bzero(a1, v49 + (v35 & ~v34) + ((v33 + 8 + (((v48 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v33));
      *a1 = v56;
      v58 = 1;
    }

    v73 = v116;
    goto LABEL_88;
  }

  v108 = v18;
  v113 = ~v29;
  v59 = ~v33;
  v60 = ~v34;
  v61 = ~v28;
  v62 = ~v30;
  v63 = a1;
  switch(v116)
  {
    case 1:
      a1[v51] = 0;
      if (a2)
      {
        goto LABEL_67;
      }

      return;
    case 2:
      *&a1[v51] = 0;
      if (a2)
      {
        goto LABEL_67;
      }

      return;
    case 3:
LABEL_123:
      __break(1u);
      return;
    case 4:
      *&a1[v51] = 0;
      goto LABEL_66;
    default:
LABEL_66:
      if (!a2)
      {
        return;
      }

LABEL_67:
      if (v104 >= v22)
      {
        v71 = a2;
        v72 = v97;
LABEL_79:

        sub_22BB336D0(v63, v71, v23, v72);
        return;
      }

      v65 = &a1[v35] & v60;
      if (v22 < a2)
      {
        v66 = ((v50 + (((v48 & 0xFFFFFFF8) + 47) & 0xFFFFFFF8)) & v59) + v49;
        v67 = -1 << (8 * (((v50 + (((v48 & 0xF8) + 47) & 0xF8)) & v59) + v49));
        if (v66 <= 3)
        {
          v68 = ~v67;
        }

        else
        {
          v68 = -1;
        }

        if (v66)
        {
          v69 = v68 & (~v22 + a2);
          if (v66 <= 3)
          {
            v70 = v66;
          }

          else
          {
            v70 = 4;
          }

          bzero((&a1[v35] & v60), v66);
          switch(v70)
          {
            case 2:
              goto LABEL_108;
            case 3:
              goto LABEL_109;
            case 4:
              goto LABEL_110;
            default:
              goto LABEL_77;
          }
        }

        return;
      }

      v23 = v96;
      if (v96 == v22)
      {
        v63 = (&a1[v35] & v60);
        v71 = a2;
        v72 = v95;
        goto LABEL_79;
      }

      v63 = ((v36 + v65) & ~v27);
      v23 = v94;
      if (v94 == v22)
      {
        v71 = a2;
        v72 = v93;
        goto LABEL_79;
      }

      v63 = (&v63[v41] & v61);
      v23 = v92;
      if (v92 == v22)
      {
        v71 = a2;
        v72 = v91;
        goto LABEL_79;
      }

      v65 = &v63[v42] & v62;
      if (v90 != v22)
      {
        v63 = ((v40 + v65) & ~v31);
        if (v88 == v22)
        {
          v71 = a2 + 1;
          v23 = v99;
          v72 = v86;
        }

        else
        {
          v77 = &v63[v45] & 0xFFFFFFFFFFFFFFF8;
          if ((v85 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v77 + 8) = 0u;
              *(v77 + 24) = 0u;
              *v77 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v77 + 24) = a2 - 1;
            }

            return;
          }

          v63 = ((v32 + 40 + v77) & ~v32);
          v23 = v80;
          if (v80 == v22)
          {
            v71 = a2;
            v72 = v79;
          }

          else
          {
            v63 = ((v50 + (((&v63[v47] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & v59);
            v71 = a2;
            v23 = v78;
            v72 = v108;
          }
        }

        goto LABEL_79;
      }

      if (v89 >= a2)
      {
        if (v87 == v89)
        {
          v71 = a2 + 1;
          v63 = (&v63[v42] & v62);
          v23 = v83;
          v72 = v84;
        }

        else
        {
          v63 = ((v111 + ((((v39 + v65) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v113);
          v71 = a2 + 1;
          v23 = v81;
          v72 = v82;
        }

        goto LABEL_79;
      }

      v74 = ((v111 + (((v39 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v113) + v110;
      if (v74 <= 3)
      {
        v75 = ~(-1 << (8 * (((v111 + (((v39 & 0xF8) + 23) & 0xF8)) & v113) + v110)));
      }

      else
      {
        v75 = -1;
      }

      if (v74)
      {
        v69 = v75 & (~v89 + a2);
        if (v74 <= 3)
        {
          v76 = ((v111 + (((v39 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v113) + v110;
        }

        else
        {
          v76 = 4;
        }

        bzero((&v63[v42] & v62), v74);
        switch(v76)
        {
          case 2:
LABEL_108:
            *v65 = v69;
            break;
          case 3:
LABEL_109:
            *v65 = v69;
            *(v65 + 2) = BYTE2(v69);
            break;
          case 4:
LABEL_110:
            *v65 = v69;
            break;
          default:
LABEL_77:
            *v65 = v69;
            break;
        }
      }

      return;
  }
}

void sub_22BBF2AF0(uint64_t a1)
{
  sub_22BDB4E24();
  if (v1 <= 0x3F)
  {
    sub_22BBF2BCC(319, qword_28142D9D8, type metadata accessor for ResultResponse);
    if (v2 <= 0x3F)
    {
      sub_22BBF2BCC(319, &qword_281428798, sub_22BBEB528);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22BBF2BCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_22BBF2C3C()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB77D4();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v1[7] = sub_22BB30ACC();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_22BBF2CE8()
{
  v1 = v0[3];
  v2 = v0[4];
  *(v2 + 16) = v0[2];
  sub_22BBF5EFC(v1, v2 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions);
  sub_22BB3B294();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22BBF2DA4;

  return v5();
}

uint64_t sub_22BBF2EA0()
{
  v0[10] = *(v0[4] + 16);
  sub_22BB3B294();
  v1 = swift_task_alloc();
  v0[11] = v1;
  *v1 = v0;
  v1[1] = sub_22BBF2F48;

  return v3();
}

uint64_t sub_22BBF3364()
{
  sub_22BB2F0D4();
  v1[34] = v2;
  v1[35] = v0;
  v1[32] = v3;
  v1[33] = v4;
  v5 = sub_22BDBA634();
  v1[36] = v5;
  sub_22BB30434(v5);
  v1[37] = v6;
  v1[38] = sub_22BB30ACC();
  v7 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  sub_22BB2F0C8(v7);
  v1[39] = sub_22BB30ACC();
  v8 = sub_22BDB77D4();
  v1[40] = v8;
  sub_22BB30434(v8);
  v1[41] = v9;
  v1[42] = sub_22BB31AF0();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E2930, &qword_22BDBCFA8);
  sub_22BB2F0C8(v10);
  v1[48] = sub_22BB30ACC();
  v11 = sub_22BDB4B34();
  v1[49] = v11;
  sub_22BB30434(v11);
  v1[50] = v12;
  v1[51] = sub_22BB31AF0();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v1[54] = swift_task_alloc();
  v13 = sub_22BBE6DE0(&qword_27D8E2938, &unk_22BDBCFB0);
  sub_22BB2F0C8(v13);
  v1[55] = sub_22BB31AF0();
  v1[56] = swift_task_alloc();
  v14 = sub_22BDBA594();
  v1[57] = v14;
  sub_22BB30434(v14);
  v1[58] = v15;
  v1[59] = sub_22BB31AF0();
  v1[60] = swift_task_alloc();
  v1[61] = swift_task_alloc();
  v1[62] = swift_task_alloc();
  v16 = sub_22BDBA3A4();
  v1[63] = v16;
  sub_22BB30434(v16);
  v1[64] = v17;
  v1[65] = sub_22BB30ACC();
  v18 = sub_22BDBA514();
  v1[66] = v18;
  sub_22BB30434(v18);
  v1[67] = v19;
  v1[68] = sub_22BB30ACC();
  v20 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v20);
  v1[69] = sub_22BB31AF0();
  v1[70] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

uint64_t sub_22BBF36D8()
{
  v714 = v0;
  sub_22BD80E80(0x7972657571, 0xE500000000000000, *(v0 + 272), v0 + 56);
  if (!*(v0 + 80))
  {
    v86 = &unk_27D8E2940;
    v87 = &unk_22BDBCFC0;
    v88 = v0 + 56;
LABEL_26:
    sub_22BB58728(v88, v86, v87);
LABEL_27:
    sub_22BDB63F4();
    v93 = sub_22BDB77C4();
    v94 = sub_22BDBB114();
    if (sub_22BB333C0(v94))
    {
      v95 = sub_22BB37F30();
      sub_22BB360F0(v95);
      sub_22BB2F0A8(&dword_22BB2C000, v96, v97, "Missing rewrittenQuery");
      sub_22BB30AF0();
    }

    v98 = *(v0 + 328);

    v99 = v98 + 8;
    v100 = sub_22BB30AE4();
    v101(v100);
    type metadata accessor for ExecutorError(0);
    v102 = sub_22BBF5FBC();
    v103 = sub_22BB37F10(v102);
    sub_22BB38C48(v103, v104);
    swift_willThrow();
    goto LABEL_30;
  }

  sub_22BB382E8((v0 + 56), v0 + 16);
  sub_22BB69088(v0 + 16, v0 + 96);
  v5 = sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v6 = sub_22BB52878(v5, v0 + 96);
  v7 = *(v0 + 560);
  if (!v6)
  {
    v89 = *(v0 + 456);
    sub_22BB32FA4((v0 + 16));
    sub_22BB30B28();
    sub_22BB336D0(v90, v91, v92, v89);
    v86 = &qword_27D8E2668;
    v87 = &unk_22BDBCCD0;
    v88 = v7;
    goto LABEL_26;
  }

  v8 = *(v0 + 456);
  v9 = *(v0 + 464);
  sub_22BB331C8();
  sub_22BB336D0(v10, v11, v12, v8);
  v14 = *(v9 + 88);
  v1 = v9 + 88;
  v13 = v14;
  v15 = sub_22BB30AE4();
  v16 = v14(v15);
  v17 = *(v0 + 560);
  if (v16 != *MEMORY[0x277D72A58])
  {
    v272 = *(v0 + 456);
    v273 = *(v0 + 464);
    sub_22BB32FA4((v0 + 16));
    (*(v273 + 8))(v17, v272);
    goto LABEL_27;
  }

  v709 = v13;
  v18 = *(v0 + 544);
  v19 = *(v0 + 536);
  v20 = *(v0 + 528);
  v21 = *(v0 + 464);
  v22 = *(v21 + 96);
  v2 = v21 + 96;
  v3 = v22;
  v22(v17, *(v0 + 456));
  v23 = swift_projectBox();
  (*(v19 + 16))(v18, v23, v20);
  v1 = v19 + 88;
  v24 = sub_22BB2F0E0();
  v26 = v25(v24);
  v27 = *(v0 + 544);
  v28 = *(v0 + 536);
  if (v26 != *MEMORY[0x277D729B8])
  {
    sub_22BB32FA4((v0 + 16));
    v4 = v28 + 8;
    v274 = sub_22BB2F0E0();
    v275(v274);

    goto LABEL_27;
  }

  v1 = *(v0 + 272);
  v4 = v28 + 96;
  v29 = sub_22BB2F0E0();
  v30(v29);
  v31 = *v27;
  v32 = v27[1];
  v361 = v31;
  *(v0 + 568) = v32;

  sub_22BD80E80(0xD000000000000015, 0x800000022BDD1570, v1, v0 + 176);
  if (!*(v0 + 200))
  {

    v276 = &unk_27D8E2940;
    v277 = &unk_22BDBCFC0;
    v278 = v0 + 176;
LABEL_37:
    sub_22BB58728(v278, v276, v277);
    goto LABEL_38;
  }

  v384 = v32;
  sub_22BB382E8((v0 + 176), v0 + 136);
  v33 = sub_22BB69088(v0 + 136, v0 + 216);
  v34 = sub_22BB52878(v33, v0 + 216);
  v35 = *(v0 + 552);
  v36 = *(v0 + 456);
  if (!v34)
  {
    sub_22BB32FA4((v0 + 136));

    sub_22BB30B28();
    sub_22BB336D0(v279, v280, v281, v36);
    v276 = &qword_27D8E2668;
    v277 = &unk_22BDBCCD0;
    v278 = v35;
    goto LABEL_37;
  }

  sub_22BB331C8();
  sub_22BB336D0(v37, v38, v39, v36);
  v40 = sub_22BB2F324();
  v41 = v709(v40);
  *(v0 + 656) = v41;
  if (v41 == *MEMORY[0x277D729E0])
  {
    v42 = *(v0 + 520);
    v43 = *(v0 + 504);
    v44 = *(v0 + 512);
    v45 = *(v0 + 464);
    v46 = *(v0 + 400);
    v47 = *(v0 + 328);
    v3(*(v0 + 552), *(v0 + 456));
    v48 = swift_projectBox();
    (*(v44 + 16))(v42, v48, v43);

    result = sub_22BDBA394();
    v50 = 0;
    v705 = *(result + 16);
    v51 = v45 + 16;
    v636 = *MEMORY[0x277D72A38];
    v682 = v45;
    v4 = v45 + 8;
    v590 = (v47 + 8);
    v567 = *MEMORY[0x277D374E0];
    *(v0 + 660) = *MEMORY[0x277D374E0];
    v544 = (v46 + 104);
    v315 = v46;
    v338 = (v46 + 32);
    v707 = MEMORY[0x277D84F90];
    *&v52 = 136315138;
    v407 = v52;
    v659 = result;
    v475 = v51;
    while (1)
    {
      *(v0 + 576) = v707;
      if (v705 == v50)
      {
        break;
      }

      if (v50 >= *(result + 16))
      {
        __break(1u);
        return result;
      }

      v712 = v50;
      v53 = v51;
      v54 = *(v682 + 16);
      (v54)(*(v0 + 496), result + ((*(v682 + 80) + 32) & ~*(v682 + 80)) + *(v682 + 72) * v50, *(v0 + 456));
      v55 = sub_22BB52868();
      v54(v55);
      v56 = sub_22BB30AE4();
      v57 = v709(v56);
      v58 = *(v682 + 8);
      v59 = sub_22BB30AE4();
      v58(v59);
      if (v57 == v636)
      {
        v61 = *(v0 + 384);
        v60 = *(v0 + 392);
        (v54)(v61, *(v0 + 496), *(v0 + 456));
        (*v544)(v61, v567, v60);
        v62 = 0;
        v51 = v53;
      }

      else
      {
        sub_22BDB63F4();
        v63 = sub_22BB52868();
        v54(v63);
        v64 = sub_22BDB77C4();
        v65 = sub_22BDBB104();
        v66 = os_log_type_enabled(v64, v65);
        v67 = *(v0 + 480);
        v68 = *(v0 + 456);
        v69 = *(v0 + 376);
        v613 = *(v0 + 320);
        if (v66)
        {
          v70 = sub_22BB31AD8();
          v71 = swift_slowAlloc();
          v713[0] = v71;
          *v70 = v407;
          v498 = sub_22BDBA554();
          v521 = v69;
          v73 = v72;
          (v58)(v67, v68);
          v74 = sub_22BB32EE0(v498, v73, v713);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_22BB2C000, v64, v65, "Filtering out non-entity non-question values from collection: %s", v70, 0xCu);
          sub_22BB32FA4(v71);
          v51 = v475;
          sub_22BB30AF0();
          sub_22BB30AF0();

          (*v590)(v521, v613);
        }

        else
        {
          v51 = v53;

          (v58)(v67, v68);
          (*v590)(v69, v613);
        }

        v62 = 1;
      }

      v76 = *(v0 + 384);
      v75 = *(v0 + 392);
      sub_22BB336D0(v76, v62, 1, v75);
      v77 = sub_22BB2F324();
      v58(v77);
      if (sub_22BB3AA28(v76, 1, v75) == 1)
      {
        sub_22BB58728(*(v0 + 384), &qword_27D8E2930, &qword_22BDBCFA8);
        v50 = v712 + 1;
        result = v659;
      }

      else
      {
        v78 = v51;
        v79 = *v338;
        (*v338)(*(v0 + 432), *(v0 + 384), *(v0 + 392));
        v80 = sub_22BB52868();
        v79(v80);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_22BB3267C();
          sub_22BD8F300();
          v707 = v84;
        }

        v81 = *(v707 + 16);
        if (v81 >= *(v707 + 24) >> 1)
        {
          sub_22BD8F300();
          v707 = v85;
        }

        v50 = v712 + 1;
        v82 = *(v0 + 424);
        v83 = *(v0 + 392);
        *(v707 + 16) = v81 + 1;
        (v79)(v707 + ((*(v315 + 80) + 32) & ~*(v315 + 80)) + *(v315 + 72) * v81, v82, v83);
        result = v659;
        v51 = v78;
      }
    }

    v295 = *(v0 + 448);
    v296 = *(v0 + 280);

    sub_22BBF52A8(v296, v295);
    v297 = v296 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions;
    v298 = (v297 + *(type metadata accessor for InvocationOptions(0) + 20));
    *(v0 + 584) = *v298;
    v299 = v298[1];
    *(v0 + 592) = v299;
    if (v299)
    {
      sub_22BB8AE8C(*(v0 + 448), *(v0 + 440), &qword_27D8E2938, &unk_22BDBCFB0);
      sub_22BDB46D4();
      swift_allocObject();
      swift_bridgeObjectRetain_n();
      v300 = sub_22BDB46C4();
      *(v0 + 600) = v300;
      v301 = swift_task_alloc();
      *(v0 + 608) = v301;
      *v301 = v0;
      v301[1] = sub_22BBF4300;
      v302 = *(v0 + 280);

      return sub_22BBF557C(v302, v361, v384, v707, v300);
    }

    sub_22BDB63F4();
    v303 = sub_22BDB77C4();
    v304 = sub_22BDBB114();
    if (sub_22BB333C0(v304))
    {
      v305 = sub_22BB37F30();
      sub_22BB360F0(v305);
      sub_22BB2F0A8(&dword_22BB2C000, v306, v307, "Missing locale");
      sub_22BB30AF0();
    }

    v308 = *(v0 + 520);
    v99 = *(v0 + 504);
    v309 = *(v0 + 512);
    v1 = *(v0 + 448);
    v310 = *(v0 + 360);
    v2 = *(v0 + 320);

    (*v590)(v310, v2);
    type metadata accessor for ExecutorError(0);
    v311 = sub_22BBF5FBC();
    v312 = sub_22BB37F10(v311);
    sub_22BB38C48(v312, v313);
    swift_willThrow();
    sub_22BB58728(v1, &qword_27D8E2938, &unk_22BDBCFB0);
    v314 = *(v309 + 8);
    v3 = (v309 + 8);
    v314(v308, v99);
    sub_22BB32FA4((v0 + 136));
    goto LABEL_41;
  }

  sub_22BB32FA4((v0 + 136));

  v293 = sub_22BB2F324();
  v294(v293);
LABEL_38:
  sub_22BDB63F4();
  v282 = sub_22BDB77C4();
  v283 = sub_22BDBB114();
  if (sub_22BB333C0(v283))
  {
    v284 = sub_22BB37F30();
    sub_22BB360F0(v284);
    sub_22BB2F0A8(&dword_22BB2C000, v285, v286, "Missing extractionCandidates");
    sub_22BB30AF0();
  }

  v287 = *(v0 + 328);

  v99 = v287 + 8;
  v288 = sub_22BB30AE4();
  v289(v288);
  type metadata accessor for ExecutorError(0);
  v290 = sub_22BBF5FBC();
  v291 = sub_22BB37F10(v290);
  sub_22BB38C48(v291, v292);
  swift_willThrow();
LABEL_41:
  sub_22BB32FA4((v0 + 16));
LABEL_30:
  v105 = sub_22BB54124();
  v106 = *(v0 + 472);
  v107 = *(v0 + 480);
  v109 = *(v0 + 440);
  v108 = *(v0 + 448);
  v706 = *(v0 + 344);
  v708 = *(v0 + 336);
  v710 = *(v0 + 312);
  v711 = *(v0 + 304);
  v105, v110, v111, v112, v113, v114, v115, v116, v315, v338, v361, v384, v407, *(&v407 + 1), v452, v475, *(v0 + 432), *(v0 + 424), *(v0 + 416), *(v0 + 408), *(v0 + 384), *(v0 + 376), *(v0 + 368), *(v0 + 360), *(v0 + 352);
  v99, v117, v118, v119, v120, v121, v122, v123, v316, v339, v362, v385, v408, v430, v453, v476, v499, v522, v545, v568, v591, v614, v637, v660, v683;
  v1, v124, v125, v126, v127, v128, v129, v130, v317, v340, v363, v386, v409, v431, v454, v477, v500, v523, v546, v569, v592, v615, v638, v661, v684;
  v2, v131, v132, v133, v134, v135, v136, v137, v318, v341, v364, v387, v410, v432, v455, v478, v501, v524, v547, v570, v593, v616, v639, v662, v685;
  v3, v138, v139, v140, v141, v142, v143, v144, v319, v342, v365, v388, v411, v433, v456, v479, v502, v525, v548, v571, v594, v617, v640, v663, v686;
  v4, v145, v146, v147, v148, v149, v150, v151, v320, v343, v366, v389, v412, v434, v457, v480, v503, v526, v549, v572, v595, v618, v641, v664, v687;
  v107, v152, v153, v154, v155, v156, v157, v158, v321, v344, v367, v390, v413, v435, v458, v481, v504, v527, v550, v573, v596, v619, v642, v665, v688;
  v106, v159, v160, v161, v162, v163, v164, v165, v322, v345, v368, v391, v414, v436, v459, v482, v505, v528, v551, v574, v597, v620, v643, v666, v689;
  v108, v166, v167, v168, v169, v170, v171, v172, v323, v346, v369, v392, v415, v437, v460, v483, v506, v529, v552, v575, v598, v621, v644, v667, v690;
  v109, v173, v174, v175, v176, v177, v178, v179, v324, v347, v370, v393, v416, v438, v461, v484, v507, v530, v553, v576, v599, v622, v645, v668, v691;
  v508, v180, v181, v182, v183, v184, v185, v186, v325, v348, v371, v394, v417, v439, v462, v485, v508, v531, v554, v577, v600, v623, v646, v669, v692;
  v532, v187, v188, v189, v190, v191, v192, v193, v326, v349, v372, v395, v418, v440, v463, v486, v509, v532, v555, v578, v601, v624, v647, v670, v693;
  v556, v194, v195, v196, v197, v198, v199, v200, v327, v350, v373, v396, v419, v441, v464, v487, v510, v533, v556, v579, v602, v625, v648, v671, v694;
  v580, v201, v202, v203, v204, v205, v206, v207, v328, v351, v374, v397, v420, v442, v465, v488, v511, v534, v557, v580, v603, v626, v649, v672, v695;
  v604, v208, v209, v210, v211, v212, v213, v214, v329, v352, v375, v398, v421, v443, v466, v489, v512, v535, v558, v581, v604, v627, v650, v673, v696;
  v628, v215, v216, v217, v218, v219, v220, v221, v330, v353, v376, v399, v422, v444, v467, v490, v513, v536, v559, v582, v605, v628, v651, v674, v697;
  v652, v222, v223, v224, v225, v226, v227, v228, v331, v354, v377, v400, v423, v445, v468, v491, v514, v537, v560, v583, v606, v629, v652, v675, v698;
  v676, v229, v230, v231, v232, v233, v234, v235, v332, v355, v378, v401, v424, v446, v469, v492, v515, v538, v561, v584, v607, v630, v653, v676, v699;
  v700, v236, v237, v238, v239, v240, v241, v242, v333, v356, v379, v402, v425, v447, v470, v493, v516, v539, v562, v585, v608, v631, v654, v677, v700;
  v706, v243, v244, v245, v246, v247, v248, v249, v334, v357, v380, v403, v426, v448, v471, v494, v517, v540, v563, v586, v609, v632, v655, v678, v701;
  v708, v250, v251, v252, v253, v254, v255, v256, v335, v358, v381, v404, v427, v449, v472, v495, v518, v541, v564, v587, v610, v633, v656, v679, v702;
  v710, v257, v258, v259, v260, v261, v262, v263, v336, v359, v382, v405, v428, v450, v473, v496, v519, v542, v565, v588, v611, v634, v657, v680, v703;
  v711, v264, v265, v266, v267, v268, v269, v270, v337, v360, v383, v406, v429, v451, v474, v497, v520, v543, v566, v589, v612, v635, v658, v681, v704;
  sub_22BB2F09C();

  return v271();
}

uint64_t sub_22BBF4448(uint64_t a1)
{
  v20 = v1;
  sub_22BDB63F4();

  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB0F4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[77];
    v5 = v1[41];
    v6 = sub_22BB31AD8();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = sub_22BDB4B14();
    v9 = MEMORY[0x2318A4D50](v4, v8);
    v11 = sub_22BB32EE0(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_22BB2C000, v2, v3, "Received [AnswerSynthesisResult] %s", v6, 0xCu);
    sub_22BB32FA4(v7);
    sub_22BB30AF0();
    sub_22BB30458();

    v12 = *(v5 + 8);
    v13 = sub_22BB30AE4();
    v12(v13);
  }

  else
  {
    v14 = v1[41];

    v12 = *(v14 + 8);
    v15 = sub_22BB30AE4();
    v12(v15);
  }

  v1[79] = v12;
  v18 = (*MEMORY[0x277D36FF0] + MEMORY[0x277D36FF0]);
  v16 = swift_task_alloc();
  v1[80] = v16;
  *v16 = v1;
  v16[1] = sub_22BBF462C;

  return v18();
}

uint64_t sub_22BBF4728()
{
  if (sub_22BBC20A8(v2[77]))
  {
    v6 = v2[77] & 0xC000000000000001;
    sub_22BD72584();
    v7 = v2[77];
    if (v6)
    {
      v8 = MEMORY[0x2318A5340](0, v7);
    }

    else
    {
      v8 = *(v7 + 32);
    }

    v9 = sub_22BDB4B04();

    v10 = *(v9 + 16);
    if (v10)
    {
      sub_22BB338B4();
      v659 = MEMORY[0x277D84F90];
      do
      {
        v11 = sub_22BB341BC();
        v12(v11);
        v13 = sub_22BB396C0();
        v14(v13);
        if ((*v5)(v3, v4) == v8)
        {
          v15 = sub_22BB30F3C();
          v16(v15);
          v17 = sub_22BB587E0();
          v8(v17);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v21 = v659;
          }

          else
          {
            sub_22BB3267C();
            sub_22BD8EBF4();
            v21 = isUniquelyReferenced_nonNull_native;
          }

          v3 = *(v21 + 16);
          if (v3 >= *(v21 + 24) >> 1)
          {
            sub_22BB6B598();
            v21 = isUniquelyReferenced_nonNull_native;
          }

          v22 = sub_22BB31F28(isUniquelyReferenced_nonNull_native, v19, v20, v21);
          v8(v22);
        }

        else
        {
          v23 = sub_22BB333DC();
          v24(v23);
        }

        v1 += v656;
        --v10;
      }

      while (v10);

      v6 = v653;
    }

    else
    {
    }

    sub_22BD72584();
    if (v6)
    {
      MEMORY[0x2318A5340](0, v2[77]);
    }

    else
    {
    }

    v0 = sub_22BDB4AF4();
    sub_22BB72EB4();
    sub_22BD72584();
    v1 = v2[77];
    if (v6)
    {
      MEMORY[0x2318A5340](0, v2[77]);
      v1 = v2[77];
    }

    else
    {
    }

    v292 = sub_22BDB4AE4();
    sub_22BB72EB4();
  }

  else
  {

    v292 = 0;
  }

  sub_22BB30480();
  v25 = sub_22BB35398();
  sub_22BDBA694();
  sub_22BB30B28();
  v30 = sub_22BB336D0(v26, v27, v28, v29);
  v38 = sub_22BB3A8FC(v30, v31, v32, v33, v34, v35, v36, v37, v237, v265, v292);
  sub_22BB37468(v38);
  swift_allocBox(v0, v39, v40, v41, v42, v43, v44, v45, v238, v266, v293);
  v47 = v46;
  swift_allocObject();
  sub_22BB6BC7C();
  sub_22BB360D0(v48, v49, v239);
  (*(v1 + 104))(v0, *MEMORY[0x277D72D28]);
  sub_22BDBA374();

  v50 = v319;
  v51 = sub_22BB58728(v319, &qword_27D8E2938, &unk_22BDBCFB0);
  v59 = sub_22BB33FAC(v51, v52, v53, v54, v55, v56, v57, v58, v240, v267, v294, v319, v344, v369, v3, v416);
  v60(v59);
  sub_22BB32FA4(v2 + 17);
  v61 = sub_22BB32FA4(v2 + 2);
  v69 = sub_22BB6B968(v61, v62, v63, v64, v65, v66, v67, v68, v241, v268, v295, v320, v345);
  v70(v69);
  sub_22BB331C8();
  sub_22BB336D0(v71, v72, v73, v25);
  v486, v74, v75, v76, v77, v78, v79, v80, v242, v269, v296, v321, v346, v370, v393, v417, v440, v463, v486, v509, v532, v555, v578, v601, v624;
  v510, v81, v82, v83, v84, v85, v86, v87, v243, v270, v297, v322, v347, v371, v394, v418, v441, v464, v487, v510, v533, v556, v579, v602, v625;
  v534, v88, v89, v90, v91, v92, v93, v94, v244, v271, v298, v323, v348, v372, v395, v419, v442, v465, v488, v511, v534, v557, v580, v603, v626;
  v47, v95, v96, v97, v98, v99, v100, v101, v245, v272, v299, v324, v349, v373, v396, v420, v443, v466, v489, v512, v535, v558, v581, v604, v627;
  v559, v102, v103, v104, v105, v106, v107, v108, v246, v273, v300, v325, v350, v374, v397, v421, v444, v467, v490, v513, v536, v559, v582, v605, v628;
  v583, v109, v110, v111, v112, v113, v114, v115, v247, v274, v301, v326, v351, v375, v398, v422, v445, v468, v491, v514, v537, v560, v583, v606, v629;
  v607, v116, v117, v118, v119, v120, v121, v122, v248, v275, v302, v327, v352, v376, v399, v423, v446, v469, v492, v515, v538, v561, v584, v607, v630;
  v631, v123, v124, v125, v126, v127, v128, v129, v249, v276, v303, v328, v353, v377, v400, v424, v447, v470, v493, v516, v539, v562, v585, v608, v631;
  v50, v130, v131, v132, v133, v134, v135, v136, v250, v277, v304, v329, v354, v378, v401, v425, v448, v471, v494, v517, v540, v563, v586, v609, v632;
  v647, v137, v138, v139, v140, v141, v142, v143, v251, v278, v305, v330, v355, v379, v402, v426, v449, v472, v495, v518, v541, v564, v587, v610, v633;
  v648, v144, v145, v146, v147, v148, v149, v150, v252, v279, v306, v331, v356, v380, v403, v427, v450, v473, v496, v519, v542, v565, v588, v611, v634;
  v649, v151, v152, v153, v154, v155, v156, v157, v253, v280, v307, v332, v357, v381, v404, v428, v451, v474, v497, v520, v543, v566, v589, v612, v635;
  v650, v158, v159, v160, v161, v162, v163, v164, v254, v281, v308, v333, v358, v382, v405, v429, v452, v475, v498, v521, v544, v567, v590, v613, v636;
  v651, v165, v166, v167, v168, v169, v170, v171, v255, v282, v309, v334, v359, v383, v406, v430, v453, v476, v499, v522, v545, v568, v591, v614, v637;
  v652, v172, v173, v174, v175, v176, v177, v178, v256, v283, v310, v335, v360, v384, v407, v431, v454, v477, v500, v523, v546, v569, v592, v615, v638;
  v653, v179, v180, v181, v182, v183, v184, v185, v257, v284, v311, v336, v361, v385, v408, v432, v455, v478, v501, v524, v547, v570, v593, v616, v639;
  v654, v186, v187, v188, v189, v190, v191, v192, v258, v285, v312, v337, v362, v386, v409, v433, v456, v479, v502, v525, v548, v571, v594, v617, v640;
  v655, v193, v194, v195, v196, v197, v198, v199, v259, v286, v313, v338, v363, v387, v410, v434, v457, v480, v503, v526, v549, v572, v595, v618, v641;
  v656, v200, v201, v202, v203, v204, v205, v206, v260, v287, v314, v339, v364, v388, v411, v435, v458, v481, v504, v527, v550, v573, v596, v619, v642;
  v657, v207, v208, v209, v210, v211, v212, v213, v261, v288, v315, v340, v365, v389, v412, v436, v459, v482, v505, v528, v551, v574, v597, v620, v643;
  v658, v214, v215, v216, v217, v218, v219, v220, v262, v289, v316, v341, v366, v390, v413, v437, v460, v483, v506, v529, v552, v575, v598, v621, v644;
  v414, v221, v222, v223, v224, v225, v226, v227, v263, v290, v317, v342, v367, v391, v414, v438, v461, v484, v507, v530, v553, v576, v599, v622, v645;
  v0, v228, v229, v230, v231, v232, v233, v234, v264, v291, v318, v343, v368, v392, v415, v439, v462, v485, v508, v531, v554, v577, v600, v623, v646;
  sub_22BB2F09C();

  return v235();
}

uint64_t sub_22BBF4B94()
{
  v5 = v0[64];
  v6 = v0[56];

  sub_22BB58728(v6, &qword_27D8E2938, &unk_22BDBCFB0);
  v7 = sub_22BB2F324();
  v8(v7);
  sub_22BB32FA4(v0 + 17);
  sub_22BB32FA4(v0 + 2);
  v486 = v0[78];
  v9 = sub_22BB54124();
  v10 = v0[59];
  v11 = v0[60];
  v13 = v0[55];
  v12 = v0[56];
  v9, v14, v15, v16, v17, v18, v19, v20, v177, v0[54], v0[53], v0[52], v0[51], v0[48], v0[47], v0[46], v0[45], v0[44], v0[43], v0[42], v0[39], v0[38], v486, v509, v532;
  v5 + 8, v21, v22, v23, v24, v25, v26, v27, v178, v200, v222, v244, v266, v288, v310, v332, v354, v376, v398, v420, v442, v464, v487, v510, v533;
  v1, v28, v29, v30, v31, v32, v33, v34, v179, v201, v223, v245, v267, v289, v311, v333, v355, v377, v399, v421, v443, v465, v488, v511, v534;
  v2, v35, v36, v37, v38, v39, v40, v41, v180, v202, v224, v246, v268, v290, v312, v334, v356, v378, v400, v422, v444, v466, v489, v512, v535;
  v3, v42, v43, v44, v45, v46, v47, v48, v181, v203, v225, v247, v269, v291, v313, v335, v357, v379, v401, v423, v445, v467, v490, v513, v536;
  v4, v49, v50, v51, v52, v53, v54, v55, v182, v204, v226, v248, v270, v292, v314, v336, v358, v380, v402, v424, v446, v468, v491, v514, v537;
  v11, v56, v57, v58, v59, v60, v61, v62, v183, v205, v227, v249, v271, v293, v315, v337, v359, v381, v403, v425, v447, v469, v492, v515, v538;
  v10, v63, v64, v65, v66, v67, v68, v69, v184, v206, v228, v250, v272, v294, v316, v338, v360, v382, v404, v426, v448, v470, v493, v516, v539;
  v12, v70, v71, v72, v73, v74, v75, v76, v185, v207, v229, v251, v273, v295, v317, v339, v361, v383, v405, v427, v449, v471, v494, v517, v540;
  v13, v77, v78, v79, v80, v81, v82, v83, v186, v208, v230, v252, v274, v296, v318, v340, v362, v384, v406, v428, v450, v472, v495, v518, v541;
  v209, v84, v85, v86, v87, v88, v89, v90, v187, v209, v231, v253, v275, v297, v319, v341, v363, v385, v407, v429, v451, v473, v496, v519, v542;
  v232, v91, v92, v93, v94, v95, v96, v97, v188, v210, v232, v254, v276, v298, v320, v342, v364, v386, v408, v430, v452, v474, v497, v520, v543;
  v255, v98, v99, v100, v101, v102, v103, v104, v189, v211, v233, v255, v277, v299, v321, v343, v365, v387, v409, v431, v453, v475, v498, v521, v544;
  v278, v105, v106, v107, v108, v109, v110, v111, v190, v212, v234, v256, v278, v300, v322, v344, v366, v388, v410, v432, v454, v476, v499, v522, v545;
  v301, v112, v113, v114, v115, v116, v117, v118, v191, v213, v235, v257, v279, v301, v323, v345, v367, v389, v411, v433, v455, v477, v500, v523, v546;
  v324, v119, v120, v121, v122, v123, v124, v125, v192, v214, v236, v258, v280, v302, v324, v346, v368, v390, v412, v434, v456, v478, v501, v524, v547;
  v347, v126, v127, v128, v129, v130, v131, v132, v193, v215, v237, v259, v281, v303, v325, v347, v369, v391, v413, v435, v457, v479, v502, v525, v548;
  v370, v133, v134, v135, v136, v137, v138, v139, v194, v216, v238, v260, v282, v304, v326, v348, v370, v392, v414, v436, v458, v480, v503, v526, v549;
  v393, v140, v141, v142, v143, v144, v145, v146, v195, v217, v239, v261, v283, v305, v327, v349, v371, v393, v415, v437, v459, v481, v504, v527, v550;
  v416, v147, v148, v149, v150, v151, v152, v153, v196, v218, v240, v262, v284, v306, v328, v350, v372, v394, v416, v438, v460, v482, v505, v528, v551;
  v439, v154, v155, v156, v157, v158, v159, v160, v197, v219, v241, v263, v285, v307, v329, v351, v373, v395, v417, v439, v461, v483, v506, v529, v552;
  v462, v161, v162, v163, v164, v165, v166, v167, v198, v220, v242, v264, v286, v308, v330, v352, v374, v396, v418, v440, v462, v484, v507, v530, v553;
  v485, v168, v169, v170, v171, v172, v173, v174, v199, v221, v243, v265, v287, v309, v331, v353, v375, v397, v419, v441, v463, v485, v508, v531, v554;
  sub_22BB2F09C();

  return v175();
}

uint64_t sub_22BBF4D5C(uint64_t a1)
{
  v6 = *(v1 + 648);
  sub_22BDB63F4();
  v7 = v6;
  v8 = sub_22BDB77C4();
  v9 = sub_22BDBB114();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v1 + 648);
  if (v10)
  {
    sub_22BB31AD8();
    v3 = sub_22BB2F340();
    *v2 = 138412290;
    v12 = v11;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    sub_22BB94CA4(v13);
    sub_22BB30F08(&dword_22BB2C000, v14, v15, "AnswerSynthesisClient failed to deactivate: %@");
    sub_22BB58728(v3, &unk_27D8E6A70, &unk_22BDBCDB0);
    sub_22BB30458();
    sub_22BB30AF0();
  }

  else
  {
  }

  (*(v1 + 632))(*(v1 + 336), *(v1 + 320));
  if (sub_22BBC20A8(*(v1 + 616)))
  {
    v16 = *(v1 + 616) & 0xC000000000000001;
    sub_22BD72584();
    v17 = *(v1 + 616);
    if (v16)
    {
      v18 = MEMORY[0x2318A5340](0, v17);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v19 = sub_22BDB4B04();

    v20 = *(v19 + 16);
    if (v20)
    {
      sub_22BB338B4();
      v669 = MEMORY[0x277D84F90];
      do
      {
        v21 = sub_22BB341BC();
        v22(v21);
        v23 = sub_22BB396C0();
        v24(v23);
        if ((*v5)(v3, v4) == v18)
        {
          v25 = sub_22BB30F3C();
          v26(v25);
          v27 = sub_22BB587E0();
          v18(v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native)
          {
            v31 = v669;
          }

          else
          {
            sub_22BB3267C();
            sub_22BD8EBF4();
            v31 = isUniquelyReferenced_nonNull_native;
          }

          v3 = *(v31 + 16);
          if (v3 >= *(v31 + 24) >> 1)
          {
            sub_22BB6B598();
            v31 = isUniquelyReferenced_nonNull_native;
          }

          v32 = sub_22BB31F28(isUniquelyReferenced_nonNull_native, v29, v30, v31);
          v18(v32);
        }

        else
        {
          v33 = sub_22BB333DC();
          v34(v33);
        }

        v9 += v666;
        --v20;
      }

      while (v20);

      v16 = v663;
    }

    else
    {
    }

    sub_22BD72584();
    if (v16)
    {
      MEMORY[0x2318A5340](0, *(v1 + 616));
    }

    else
    {
    }

    v11 = sub_22BDB4AF4();
    sub_22BB72EB4();
    sub_22BD72584();
    v9 = *(v1 + 616);
    if (v16)
    {
      MEMORY[0x2318A5340](0, *(v1 + 616));
      v9 = *(v1 + 616);
    }

    else
    {
    }

    v302 = sub_22BDB4AE4();
    sub_22BB72EB4();
  }

  else
  {

    v302 = 0;
  }

  sub_22BB30480();
  v35 = sub_22BB35398();
  sub_22BDBA694();
  sub_22BB30B28();
  v40 = sub_22BB336D0(v36, v37, v38, v39);
  v48 = sub_22BB3A8FC(v40, v41, v42, v43, v44, v45, v46, v47, v247, v275, v302);
  sub_22BB37468(v48);
  swift_allocBox(v11, v49, v50, v51, v52, v53, v54, v55, v248, v276, v303);
  v57 = v56;
  swift_allocObject();
  sub_22BB6BC7C();
  sub_22BB360D0(v58, v59, v249);
  (*(v9 + 104))(v11, *MEMORY[0x277D72D28]);
  sub_22BDBA374();

  v60 = v329;
  v61 = sub_22BB58728(v329, &qword_27D8E2938, &unk_22BDBCFB0);
  v69 = sub_22BB33FAC(v61, v62, v63, v64, v65, v66, v67, v68, v250, v277, v304, v329, v354, v379, v3, v426);
  v70(v69);
  sub_22BB32FA4((v1 + 136));
  v71 = sub_22BB32FA4((v1 + 16));
  v79 = sub_22BB6B968(v71, v72, v73, v74, v75, v76, v77, v78, v251, v278, v305, v330, v355);
  v80(v79);
  sub_22BB331C8();
  sub_22BB336D0(v81, v82, v83, v35);
  v496, v84, v85, v86, v87, v88, v89, v90, v252, v279, v306, v331, v356, v380, v403, v427, v450, v473, v496, v519, v542, v565, v588, v611, v634;
  v520, v91, v92, v93, v94, v95, v96, v97, v253, v280, v307, v332, v357, v381, v404, v428, v451, v474, v497, v520, v543, v566, v589, v612, v635;
  v544, v98, v99, v100, v101, v102, v103, v104, v254, v281, v308, v333, v358, v382, v405, v429, v452, v475, v498, v521, v544, v567, v590, v613, v636;
  v57, v105, v106, v107, v108, v109, v110, v111, v255, v282, v309, v334, v359, v383, v406, v430, v453, v476, v499, v522, v545, v568, v591, v614, v637;
  v569, v112, v113, v114, v115, v116, v117, v118, v256, v283, v310, v335, v360, v384, v407, v431, v454, v477, v500, v523, v546, v569, v592, v615, v638;
  v593, v119, v120, v121, v122, v123, v124, v125, v257, v284, v311, v336, v361, v385, v408, v432, v455, v478, v501, v524, v547, v570, v593, v616, v639;
  v617, v126, v127, v128, v129, v130, v131, v132, v258, v285, v312, v337, v362, v386, v409, v433, v456, v479, v502, v525, v548, v571, v594, v617, v640;
  v641, v133, v134, v135, v136, v137, v138, v139, v259, v286, v313, v338, v363, v387, v410, v434, v457, v480, v503, v526, v549, v572, v595, v618, v641;
  v60, v140, v141, v142, v143, v144, v145, v146, v260, v287, v314, v339, v364, v388, v411, v435, v458, v481, v504, v527, v550, v573, v596, v619, v642;
  v657, v147, v148, v149, v150, v151, v152, v153, v261, v288, v315, v340, v365, v389, v412, v436, v459, v482, v505, v528, v551, v574, v597, v620, v643;
  v658, v154, v155, v156, v157, v158, v159, v160, v262, v289, v316, v341, v366, v390, v413, v437, v460, v483, v506, v529, v552, v575, v598, v621, v644;
  v659, v161, v162, v163, v164, v165, v166, v167, v263, v290, v317, v342, v367, v391, v414, v438, v461, v484, v507, v530, v553, v576, v599, v622, v645;
  v660, v168, v169, v170, v171, v172, v173, v174, v264, v291, v318, v343, v368, v392, v415, v439, v462, v485, v508, v531, v554, v577, v600, v623, v646;
  v661, v175, v176, v177, v178, v179, v180, v181, v265, v292, v319, v344, v369, v393, v416, v440, v463, v486, v509, v532, v555, v578, v601, v624, v647;
  v662, v182, v183, v184, v185, v186, v187, v188, v266, v293, v320, v345, v370, v394, v417, v441, v464, v487, v510, v533, v556, v579, v602, v625, v648;
  v663, v189, v190, v191, v192, v193, v194, v195, v267, v294, v321, v346, v371, v395, v418, v442, v465, v488, v511, v534, v557, v580, v603, v626, v649;
  v664, v196, v197, v198, v199, v200, v201, v202, v268, v295, v322, v347, v372, v396, v419, v443, v466, v489, v512, v535, v558, v581, v604, v627, v650;
  v665, v203, v204, v205, v206, v207, v208, v209, v269, v296, v323, v348, v373, v397, v420, v444, v467, v490, v513, v536, v559, v582, v605, v628, v651;
  v666, v210, v211, v212, v213, v214, v215, v216, v270, v297, v324, v349, v374, v398, v421, v445, v468, v491, v514, v537, v560, v583, v606, v629, v652;
  v667, v217, v218, v219, v220, v221, v222, v223, v271, v298, v325, v350, v375, v399, v422, v446, v469, v492, v515, v538, v561, v584, v607, v630, v653;
  v668, v224, v225, v226, v227, v228, v229, v230, v272, v299, v326, v351, v376, v400, v423, v447, v470, v493, v516, v539, v562, v585, v608, v631, v654;
  v424, v231, v232, v233, v234, v235, v236, v237, v273, v300, v327, v352, v377, v401, v424, v448, v471, v494, v517, v540, v563, v586, v609, v632, v655;
  v11, v238, v239, v240, v241, v242, v243, v244, v274, v301, v328, v353, v378, v402, v425, v449, v472, v495, v518, v541, v564, v587, v610, v633, v656;
  sub_22BB2F09C();

  return v245();
}

uint64_t sub_22BBF52A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21 = sub_22BDB77D4();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E2968, &unk_22BDBD220);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = sub_22BDB8274();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BB8AE8C(a1 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions, v9, &qword_27D8E2968, &unk_22BDBD220);
  if (sub_22BB3AA28(v9, 1, v10) == 1)
  {
    sub_22BB58728(v9, &qword_27D8E2968, &unk_22BDBD220);
    sub_22BDB63F4();
    v14 = sub_22BDB77C4();
    v15 = sub_22BDBB114();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_22BB2C000, v14, v15, "Missing interactionMode from invocationOptions", v16, 2u);
      MEMORY[0x2318A6080](v16, -1, -1);
    }

    (*(v4 + 8))(v6, v21);
    v17 = 1;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    sub_22BBF5BF0(v13, a2);
    (*(v11 + 8))(v13, v10);
    v17 = 0;
  }

  v18 = sub_22BDB4104();
  return sub_22BB336D0(a2, v17, 1, v18);
}

uint64_t sub_22BBF557C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_22BBE6DE0(&qword_27D8E2958, &qword_22BDBCFD8);
  v5[7] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2960, &qword_22BDBCFE0);
  v5[8] = swift_task_alloc();
  v6 = sub_22BDB77D4();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF56C0, 0, 0);
}

uint64_t sub_22BBF56C0(uint64_t a1)
{
  sub_22BDB63F4();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB104();
  if (sub_22BB333C0(v3))
  {
    v4 = sub_22BB37F30();
    sub_22BB360F0(v4);
    sub_22BB2F0A8(&dword_22BB2C000, v5, v6, "Calling extractAnswer XPC from AnswerSynthesisResolver");
    sub_22BB30AF0();
  }

  v7 = v1[10];

  v1[13] = *(v7 + 8);
  v8 = sub_22BB30AE4();
  v9(v8);
  sub_22BDB46B4();
  sub_22BB30B28();
  sub_22BB336D0(v10, v11, v12, v13);
  sub_22BDB4B24();
  sub_22BB30B28();
  sub_22BB336D0(v14, v15, v16, v17);
  v26 = (*MEMORY[0x277D36FE8] + MEMORY[0x277D36FE8]);
  v18 = swift_task_alloc();
  v1[14] = v18;
  *v18 = v1;
  v18[1] = sub_22BBF582C;
  v20 = v1[7];
  v19 = v1[8];
  v21 = v1[5];
  v22 = v1[6];
  v24 = v1[3];
  v23 = v1[4];

  return v26(v24, v23, v19, v21, v20, v22);
}

id sub_22BBF5B7C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_22BDBABE4();

  v4 = [v2 initWithLocaleIdentifier_];

  return v4;
}

uint64_t sub_22BBF5BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22BDB8274();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = (*(v5 + 88))(v7, v4);
  if (v8 == *MEMORY[0x277D1DC20])
  {
    v9 = MEMORY[0x277CBA0B0];
LABEL_9:
    v10 = *v9;
    sub_22BDB4104();
    sub_22BB2F330();
    return (*(v11 + 104))(a2, v10);
  }

  if (v8 == *MEMORY[0x277D1DC30])
  {
    v9 = MEMORY[0x277CBA0C0];
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x277D1DC28])
  {
    v9 = MEMORY[0x277CBA0B8];
    goto LABEL_9;
  }

  if (v8 == *MEMORY[0x277D1DC18])
  {
    v9 = MEMORY[0x277CBA0A8];
    goto LABEL_9;
  }

  result = sub_22BDBB6C4();
  __break(1u);
  return result;
}

uint64_t sub_22BBF5D9C()
{

  sub_22BBF5F60(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime23AnswerSynthesisResolver_invocationOptions);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AnswerSynthesisResolver(uint64_t a1)
{
  result = qword_27D8E2918;
  if (!qword_27D8E2918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BBF5E5C(uint64_t a1)
{
  result = type metadata accessor for InvocationOptions(319);
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

uint64_t sub_22BBF5EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBF5F60(uint64_t a1)
{
  v2 = type metadata accessor for InvocationOptions(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BBF5FBC()
{
  result = qword_27D8E2948;
  if (!qword_27D8E2948)
  {
    type metadata accessor for ExecutorError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8E2948);
  }

  return result;
}

unint64_t sub_22BBF6014()
{
  result = qword_27D8E2950;
  if (!qword_27D8E2950)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D8E2950);
  }

  return result;
}

uint64_t sub_22BBF6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2928, &qword_22BDBCFA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBF60C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a3;
  v5[2] = a4;
  v5[3] = v4;
  v10 = sub_22BDB77D4();
  v5[4] = v10;
  sub_22BB30434(v10);
  v5[5] = v11;
  v5[6] = swift_task_alloc();
  v13 = type metadata accessor for QueryExecutor.ToolKitEntityQuery(255, *(a4 + 16), *(a4 + 24), v12);
  v5[7] = v13;
  v14 = sub_22BDBB254();
  v5[8] = v14;
  sub_22BB30434(v14);
  v5[9] = v15;
  v16 = swift_task_alloc();
  v5[10] = v16;
  v5[11] = *(v13 - 8);
  v5[12] = swift_task_alloc();
  swift_task_alloc();
  sub_22BB30B34();
  v5[13] = v17;
  *v17 = v18;
  v17[1] = sub_22BBF62A8;

  return sub_22BBF6984(v16, a1, a2, v7, a4);
}

uint64_t sub_22BBF684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_22BDBA764();
  sub_22BB2F330();
  (*(v12 + 32))(a6, a1);
  Executor = type metadata accessor for QueryExecutor(0, a4, a5, v13);
  v15 = *(Executor + 36);
  sub_22BDBA014();
  sub_22BB2F330();
  (*(v16 + 32))(a6 + v15, a2);
  v17 = *(*(a4 - 8) + 32);
  v18 = a6 + *(Executor + 40);

  return v17(v18, a3, a4);
}

uint64_t sub_22BBF6984(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = a5;
  *(v6 + 64) = a5;
  *(v6 + 72) = v5;
  *(v6 + 33) = a4;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  v8 = sub_22BDBA764();
  *(v6 + 80) = v8;
  *(v6 + 88) = *(v8 - 8);
  *(v6 + 96) = swift_task_alloc();
  v9 = *(v7 - 8);
  v7 -= 8;
  *(v6 + 104) = v9;
  *(v6 + 112) = swift_task_alloc();
  v10 = sub_22BDB77D4();
  *(v6 + 120) = v10;
  *(v6 + 128) = *(v10 - 8);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = *(v7 + 32);
  *(v6 + 152) = *(v7 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v6 + 160) = AssociatedTypeWitness;
  *(v6 + 168) = *(AssociatedTypeWitness - 8);
  *(v6 + 176) = swift_task_alloc();
  v14 = type metadata accessor for QualifiedToolKitQuery(255, AssociatedTypeWitness, v12, v13);
  *(v6 + 184) = v14;
  v15 = sub_22BDBB254();
  *(v6 + 192) = v15;
  *(v6 + 200) = *(v15 - 8);
  *(v6 + 208) = swift_task_alloc();
  *(v6 + 216) = *(v14 - 8);
  *(v6 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF6C9C, 0, 0);
}

void sub_22BBF6C9C()
{
  sub_22BB30F5C();
  v6 = v0[18];
  sub_22BDBA744();
  v0[29] = v1;
  v4 = *(v6 + 64) + **(v6 + 64);
  swift_task_alloc();
  sub_22BB30B34();
  v0[30] = v2;
  *v2 = v3;
  v2[1] = sub_22BBF6DF4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_22BBF6EFC()
{
  v151 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  if (sub_22BB3AA28(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 33);
    (*(*(v0 + 200) + 8))(v1, *(v0 + 192));
    sub_22BDB63A4();
    (*(v4 + 16))(v3, v5, v6);
    sub_22BBF9494(v8, v7, v9);
    v10 = sub_22BDB77C4();
    v11 = sub_22BDBB114();
    sub_22BBF94C0(v8, v7, v9);
    v12 = os_log_type_enabled(v10, v11);
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 112);
    v16 = *(v0 + 120);
    v17 = *(v0 + 104);
    if (v12)
    {
      HIDWORD(v124) = v11;
      v19 = *(v0 + 88);
      v18 = *(v0 + 96);
      v136 = *(v0 + 120);
      v20 = *(v0 + 80);
      v100 = *(v0 + 64);
      v112 = *(v0 + 56);
      v21 = *(v0 + 48);
      HIDWORD(v106) = *(v0 + 33);
      v130 = *(v0 + 136);
      v22 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v142 = v118;
      *v22 = 136315394;
      (*(v19 + 16))(v18, v15, v20);
      v23 = sub_22BDBAC14();
      v25 = v24;
      (*(v17 + 8))(v15, v100);
      v26 = sub_22BB32EE0(v23, v25, &v142);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2080;
      *(v0 + 16) = v21;
      *(v0 + 24) = v112;
      *(v0 + 32) = BYTE4(v106);
      sub_22BBF9494(v21, v112, SBYTE4(v106));
      v27 = sub_22BDBAC14();
      v29 = sub_22BB32EE0(v27, v28, &v142);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_22BB2C000, v10, BYTE4(v124), "Unable to find any predicates + valueSet for parameter: %s with query %s", v22, 0x16u);
      swift_arrayDestroy();
      sub_22BB30AF0();
      sub_22BB30AF0();

      (*(v14 + 8))(v130, v136);
    }

    else
    {
      v43 = *(v0 + 64);

      (*(v17 + 8))(v15, v43);
      (*(v14 + 8))(v13, v16);
    }

    v44 = *(v0 + 40);
    v40 = type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, *(v0 + 152), *(v0 + 144), v30);
    v41 = v44;
    v42 = 1;
  }

  else
  {
    v32 = *(v0 + 216);
    v31 = *(v0 + 224);
    v33 = *(v0 + 168);
    v34 = *(v0 + 176);
    v35 = *(v0 + 152);
    v36 = *(v0 + 160);
    v37 = *(v0 + 144);
    v136 = *(v0 + 40);
    (*(v32 + 32))(v31, v1, v2);
    (*(v33 + 16))(v34, v31, v36);
    sub_22BBE6DE0(qword_27D8E2998, qword_22BDBD060);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_22BDBCBD0;
    sub_22BB69088(v31 + *(v2 + 28), v38 + 32);
    (*(v32 + 8))(v31, v2);
    sub_22BBF7864(v34, v38, v35, v37, v136);
    v40 = type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, v35, v37, v39);
    v41 = v136;
    v42 = 0;
  }

  sub_22BB336D0(v41, v42, 1, v40);
  v45 = *(v0 + 208);
  v46 = *(v0 + 176);
  v47 = *(v0 + 136);
  v48 = *(v0 + 112);
  v49 = *(v0 + 96);
  *(v0 + 224), v50, v51, v52, v53, v54, v55, v56, v94, v100, v106, v112, v118, v124, v130, v136, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  v45, v57, v58, v59, v60, v61, v62, v63, v95, v101, v107, v113, v119, v125, v131, v137, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  v46, v64, v65, v66, v67, v68, v69, v70, v96, v102, v108, v114, v120, v126, v132, v138, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  v47, v71, v72, v73, v74, v75, v76, v77, v97, v103, v109, v115, v121, v127, v133, v139, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  v48, v78, v79, v80, v81, v82, v83, v84, v98, v104, v110, v116, v122, v128, v134, v140, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  v49, v85, v86, v87, v88, v89, v90, v91, v99, v105, v111, v117, v123, v129, v135, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150;
  sub_22BB2F09C();

  return v92();
}

uint64_t sub_22BBF73DC(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_22BDB77D4();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF74A0, 0, 0);
}

uint64_t sub_22BBF74A0()
{
  sub_22BB30F5C();
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  v5 = swift_task_alloc();
  v0[9] = v5;
  v5[2] = *(v2 + 16);
  v5[3] = *(v2 + 24);
  v5[4] = v3;
  v5[5] = v1;
  swift_task_alloc();
  sub_22BB30B34();
  v0[10] = v6;
  *v6 = v7;
  v6[1] = sub_22BBF75B8;

  return MEMORY[0x282200600](v0 + 2, v4, v4, 0, 0, &unk_22BDBD018, v5, v4);
}

uint64_t sub_22BBF7864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_22BB2F330();
  (*(v10 + 32))(a5, a1);
  result = type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, a3, a4, v11);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t sub_22BBF7950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v9 = type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, a5, a6, a4);
  v6[21] = v9;
  v10 = *(v9 - 8);
  v6[22] = v10;
  v6[23] = *(v10 + 64);
  v6[24] = swift_task_alloc();
  Executor = type metadata accessor for QueryExecutor(0, a5, a6, v11);
  v6[25] = Executor;
  v13 = *(Executor - 8);
  v6[26] = v13;
  v6[27] = *(v13 + 64);
  v6[28] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v6[29] = swift_task_alloc();
  v6[30] = swift_task_alloc();
  v14 = sub_22BBE6DE0(&qword_27D8E2980, &qword_22BDBD028);
  v6[31] = v14;
  v6[32] = *(v14 - 8);
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF7B48, 0, 0);
}

uint64_t sub_22BBF7B48()
{
  v1 = *(*(v0 + 136) + *(*(v0 + 168) + 36));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    v27 = *(v0 + 176);
    v28 = *(v0 + 208);
    v29 = **(v0 + 128);
    v26 = *(v0 + 184) + 7;
    v4 = sub_22BDBAEF4();
    v25 = v4;
    do
    {
      v34 = v2;
      v5 = *(v0 + 224);
      v6 = *(v0 + 192);
      v7 = *(v0 + 200);
      v32 = v6;
      v8 = *(v0 + 168);
      v30 = *(v0 + 216);
      v31 = v8;
      v9 = *(v0 + 136);
      v10 = *(v0 + 144);
      v33 = *(v0 + 152);
      sub_22BB336D0(*(v0 + 240), 1, 1, v4);
      (*(v28 + 16))(v5, v10, v7);
      (*(v27 + 16))(v6, v9, v8);
      sub_22BB69088(v3, v0 + 16);
      v11 = (*(v28 + 80) + 48) & ~*(v28 + 80);
      v12 = (v30 + *(v27 + 80) + v11) & ~*(v27 + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 32) = v33;
      (*(v28 + 32))(v13 + v11, v5, v7);
      (*(v27 + 32))(v13 + v12, v32, v31);
      sub_22BB382E8((v0 + 16), v13 + ((v26 + v12) & 0xFFFFFFFFFFFFFFF8));

      if (swift_taskGroup_addPending())
      {
        v14 = *(v0 + 232);
        sub_22BBB5584(*(v0 + 240), v14);
        v4 = v25;
        v15 = sub_22BB3AA28(v14, 1, v25);
        v16 = *(v0 + 232);
        if (v15 == 1)
        {
          sub_22BB58728(*(v0 + 232), &qword_27D8E2978, &qword_22BDBD020);
        }

        else
        {
          sub_22BDBAEE4();
          (*(*(v25 - 8) + 8))(v16, v25);
        }

        if (*(v13 + 16))
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v17 = sub_22BDBAE44();
          v19 = v18;
          swift_unknownObjectRelease();
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v20 = swift_allocObject();
        *(v20 + 16) = &unk_22BDBD038;
        *(v20 + 24) = v13;
        sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
        v21 = v19 | v17;
        if (v19 | v17)
        {
          v21 = v0 + 56;
          *(v0 + 56) = 0;
          *(v0 + 64) = 0;
          *(v0 + 72) = v17;
          *(v0 + 80) = v19;
        }

        *(v0 + 88) = 1;
        *(v0 + 96) = v21;
        *(v0 + 104) = v29;
        swift_task_create();
      }

      else
      {

        v4 = v25;
      }

      sub_22BB58728(*(v0 + 240), &qword_27D8E2978, &qword_22BDBD020);
      v3 += 40;
      v2 = v34 - 1;
    }

    while (v34 != 1);
  }

  sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  sub_22BDBAE84();
  *(v0 + 272) = MEMORY[0x277D84F90];
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 280) = v22;
  *v22 = v23;
  sub_22BB3295C(v22);
  sub_22BB31B20();

  return MEMORY[0x2822002E8]();
}

uint64_t sub_22BBF82A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = a7;
  v8[15] = a8;
  v8[12] = a5;
  v8[13] = a6;
  v8[10] = a1;
  v8[11] = a4;
  v9 = sub_22BDB77D4();
  v8[16] = v9;
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2988, &unk_22BDBD050);
  v8[19] = swift_task_alloc();
  v10 = sub_22BDBA014();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v11 = sub_22BDBA044();
  v8[23] = v11;
  v8[24] = *(v11 - 8);
  v8[25] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v8[26] = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[27] = AssociatedTypeWitness;
  v8[28] = *(AssociatedTypeWitness - 8);
  v8[29] = swift_task_alloc();
  v13 = swift_checkMetadataState();
  v8[30] = v13;
  v8[31] = *(v13 - 8);
  v8[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBF858C, 0, 0);
}

uint64_t sub_22BBF858C()
{
  if (sub_22BDBAFF4())
  {
    v15 = sub_22BB338F8();
    **(v3 + 80) = v16;
    v15, v17, v18, v19, v20, v21, v22, v23, v66, v73, v80, v87, v94, v102, v109, v115, v121, v127, v133, v139, v145, v151, v157, v3, v168;
    v1, v24, v25, v26, v27, v28, v29, v30, v68, v75, v82, v89, v96, v103, v110, v116, v122, v128, v134, v140, v146, v152, v158, v163, v169;
    v0, v31, v32, v33, v34, v35, v36, v37, v69, v76, v83, v90, v97, v104, v111, v117, v123, v129, v135, v141, v147, v153, v159, v164, v170;
    v2, v38, v39, v40, v41, v42, v43, v44, v70, v77, v84, v91, v98, v105, v112, v118, v124, v130, v136, v142, v148, v154, v160, v165, v171;
    v4, v45, v46, v47, v48, v49, v50, v51, v71, v78, v85, v92, v99, v106, v113, v119, v125, v131, v137, v143, v149, v155, v161, v166, v172;
    v5, v52, v53, v54, v55, v56, v57, v58, v72, v79, v86, v93, v100, v107, v114, v120, v126, v132, v138, v144, v150, v156, v162, v167, v173;
    sub_22BB2F09C();

    return v59();
  }

  else
  {
    v7 = *(v3 + 224);
    v67 = *(v3 + 216);
    v74 = *(v3 + 232);
    v8 = *(v3 + 168);
    v81 = *(v3 + 160);
    v88 = *(v3 + 176);
    v95 = *(v3 + 152);
    v9 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 88);
    v11 = *(v3 + 96);
    Executor = type metadata accessor for QueryExecutor(0, v9, v10, v6);
    (*(v10 + 32))(v9, v10);
    (*(v7 + 16))(v74, v11, v67);
    (*(v8 + 16))(v88, v12 + *(Executor + 36), v81);
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    sub_22BDBAB14();
    v14 = sub_22BDBA264();
    sub_22BB336D0(v95, 1, 1, v14);
    sub_22BDBA024();
    v108 = *(v3 + 208);
    sub_22BB69088(*(v3 + 104), v3 + 16);
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 1;
    v101 = (*(v108 + 72) + **(v108 + 72));
    v61 = swift_task_alloc();
    *(v3 + 264) = v61;
    *v61 = v3;
    v61[1] = sub_22BBF89A8;
    v63 = *(v3 + 232);
    v62 = *(v3 + 240);
    v64 = *(v3 + 200);
    v65 = *(v3 + 208);

    return v101(v63, v64, v3 + 16, v62, v65);
  }
}

uint64_t sub_22BBF8E94()
{
  sub_22BB30F5C();
  v3 = v2;
  v5 = v4;
  v6 = v0[2];
  v7 = v0[3];
  v9 = v0[4];
  v8 = v0[5];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v10;
  *v10 = v11;
  v10[1] = sub_22BB3C48C;

  return sub_22BBF7950(v5, v3, v9, v8, v6, v7);
}

uint64_t sub_22BBF8F54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v9 = v4[4];
  v8 = v4[5];
  Executor = type metadata accessor for QueryExecutor(0, v9, v8, a4);
  sub_22BB30434(Executor);
  v12 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v16 = type metadata accessor for QueryExecutor.ToolKitEntityQuery(0, v9, v8, v15);
  sub_22BB30434(v16);
  v18 = (v12 + v14 + *(v17 + 80)) & ~*(v17 + 80);
  v20 = (*(v19 + 64) + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v4[2];
  v22 = v4[3];
  v23 = swift_task_alloc();
  *(v6 + 16) = v23;
  *v23 = v6;
  v23[1] = sub_22BBF90EC;

  return sub_22BBF82A8(a1, v21, v22, v4 + v12, v4 + v18, v4 + v20, v9, v8);
}

uint64_t sub_22BBF91CC(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_22BBF92C0;

  return v5(v2 + 16);
}

uint64_t sub_22BBF93E4()
{
  sub_22BB2F35C();
  v3 = v2;
  v4 = *(v0 + 16);
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 16) = v5;
  *v5 = v6;
  v5[1] = sub_22BBF90EC;

  return sub_22BBF91CC(v3, v4);
}

id sub_22BBF9494(id result, id a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }
  }

  return result;
}

void sub_22BBF94C0(void *a1, id a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return;
    }

    goto LABEL_4;
  }
}

__n128 sub_22BBF94F8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_22BBF950C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_22BBF954C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void sub_22BBF95A8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  if (v1 <= 0x3F)
  {
    sub_22BBF9AD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22BBF969C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  v6 = *(*(result - 8) + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(result - 8) + 84);
  }

  v8 = *(*(result - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v6 < 0x7FFFFFFF)
    {
      v16 = *((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {

      return sub_22BB3AA28(a1, v6, result);
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *a1;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_22BBF9890(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 84);
  }

  v10 = *(*(AssociatedTypeWitness - 8) + 64);
  v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v12 = a3 - v9 + 1;
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

  if (v9 < a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v8 < 0x7FFFFFFF)
          {
            v18 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v19 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v19 = (a2 - 1);
            }

            *v18 = v19;
          }

          else
          {

            sub_22BB336D0(a1, a2, v8, AssociatedTypeWitness);
          }
        }

        break;
    }
  }

  else
  {
    if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((v10 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

void sub_22BBF9AD8(uint64_t a1)
{
  if (!qword_27D8E2A20)
  {
    sub_22BBEB2E0(qword_27D8E2A28, qword_22BDBD128);
    v1 = sub_22BDBAE24();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8E2A20);
    }
  }
}

uint64_t sub_22BBF9B44(uint64_t a1)
{
  result = sub_22BDBA764();
  if (v2 <= 0x3F)
  {
    result = sub_22BDBA014();
    if (v3 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_22BBF9BE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_22BDBA764();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = sub_22BDBA014();
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(a3 + 16);
  v14 = *(v13 - 8);
  v15 = *(v14 + 84);
  if (v15 > v12)
  {
    v12 = *(v14 + 84);
  }

  v16 = *(v10 + 80);
  v17 = *(*(v9 - 8) + 64);
  v18 = *(v14 + 80);
  v19 = *(v14 + 64);
  if (!a2)
  {
    return 0;
  }

  v20 = *(v7 + 64) + v16;
  if (a2 <= v12)
  {
LABEL_27:
    if (v8 == v12)
    {
      v28 = a1;
      v11 = v8;
      v13 = v6;
    }

    else
    {
      v28 = ((a1 + v20) & ~v16);
      if (v11 == v12)
      {
        v13 = v9;
      }

      else
      {
        v28 = ((v28 + v17 + v18) & ~v18);
        v11 = v15;
      }
    }

    return sub_22BB3AA28(v28, v11, v13);
  }

  v21 = ((v17 + (v20 & ~v16) + v18) & ~v18) + v19;
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v24 = ((a2 - v12 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v24))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_26;
      }

      goto LABEL_16;
    }

    if (v24 < 2)
    {
LABEL_26:
      if (v12)
      {
        goto LABEL_27;
      }

      return 0;
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_26;
  }

LABEL_16:
  v25 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v25 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v26 = v21;
    }

    else
    {
      v26 = 4;
    }

    switch(v26)
    {
      case 2:
        v27 = *a1;
        break;
      case 3:
        v27 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v27 = *a1;
        break;
      default:
        v27 = *a1;
        break;
    }
  }

  else
  {
    v27 = 0;
  }

  return v12 + (v27 | v25) + 1;
}

void sub_22BBF9EA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_22BDBA764();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = sub_22BDBA014();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v13 <= v10)
  {
    v16 = v10;
  }

  else
  {
    v16 = *(v12 + 84);
  }

  v17 = *(v15 + 84);
  if (v17 > v16)
  {
    v16 = *(v15 + 84);
  }

  v18 = *(v12 + 80);
  v19 = *(v9 + 64) + v18;
  v20 = *(*(v11 - 8) + 64);
  v21 = *(v15 + 80);
  v22 = ((v20 + (v19 & ~v18) + v21) & ~v21) + *(v15 + 64);
  v23 = 8 * v22;
  if (a3 <= v16)
  {
    v24 = 0;
  }

  else if (v22 <= 3)
  {
    v27 = ((a3 - v16 + ~(-1 << v23)) >> v23) + 1;
    if (HIWORD(v27))
    {
      v24 = 4;
    }

    else
    {
      if (v27 < 0x100)
      {
        v28 = 1;
      }

      else
      {
        v28 = 2;
      }

      if (v27 >= 2)
      {
        v24 = v28;
      }

      else
      {
        v24 = 0;
      }
    }
  }

  else
  {
    v24 = 1;
  }

  if (v16 >= a2)
  {
    switch(v24)
    {
      case 1:
        a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v22] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_47:
        __break(1u);
        break;
      case 4:
        *&a1[v22] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          if (v10 == v16)
          {
            v30 = a1;
            v31 = a2;
            v13 = v10;
            v14 = v8;
          }

          else
          {
            v30 = (&a1[v19] & ~v18);
            if (v13 == v16)
            {
              v31 = a2;
              v14 = v11;
            }

            else
            {
              v30 = (&v30[v20 + v21] & ~v21);
              v31 = a2;
              v13 = v17;
            }
          }

          sub_22BB336D0(v30, v31, v13, v14);
        }

        break;
    }
  }

  else
  {
    v25 = ~v16 + a2;
    if (v22 < 4)
    {
      v26 = (v25 >> v23) + 1;
      if (v22)
      {
        v29 = v25 & ~(-1 << v23);
        bzero(a1, v22);
        if (v22 == 3)
        {
          *a1 = v29;
          a1[2] = BYTE2(v29);
        }

        else if (v22 == 2)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v25;
        }
      }
    }

    else
    {
      bzero(a1, v22);
      *a1 = v25;
      v26 = 1;
    }

    switch(v24)
    {
      case 1:
        a1[v22] = v26;
        break;
      case 2:
        *&a1[v22] = v26;
        break;
      case 3:
        goto LABEL_47;
      case 4:
        *&a1[v22] = v26;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_22BBFA1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v151 = a4;
  v147 = a3;
  v148 = a2;
  v142 = a1;
  v145 = sub_22BDB46B4();
  sub_22BB30444();
  v144 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BB30560();
  v143 = v8;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v9);
  v149 = &v138 - v10;
  sub_22BB2F120();
  v167 = sub_22BDBA4B4();
  sub_22BB30444();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  sub_22BB30574();
  v165 = v15 - v14;
  sub_22BB2F120();
  v16 = sub_22BDBA594();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30560();
  v150 = v20;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v21);
  v23 = (&v138 - v22);
  v140 = sub_22BDB77D4();
  sub_22BB30444();
  v139 = v24;
  MEMORY[0x28223BE20](v25);
  sub_22BB30574();
  v146 = v27 - v26;
  sub_22BB2F120();
  v28 = sub_22BDBA634();
  sub_22BB30444();
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  v141 = v30;
  sub_22BB30B70();
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v138 - v33;
  v172 = MEMORY[0x277D84F90];
  v35 = *(a5 + 16);
  v157 = a5;
  v158 = v35;
  v159 = (v36 + 16);
  v153 = v12;
  v163 = (v12 + 32);
  v164 = v12 + 16;
  v166 = *MEMORY[0x277D72A38];
  v168 = (v18 + 104);
  v169 = v18;
  v162 = (v18 + 32);
  v37 = 0;
  v155 = v36;
  v156 = (v36 + 8);
  v154 = v32;
  v152 = &v138 - v33;
  while (v37 != v158)
  {
    sub_22BB2F374();
    v40 = *(v39 + 16);
    v40(v34, v157 + v38 + *(v39 + 72) * v37, v28);
    v41 = sub_22BBFB614();
    if (!v41)
    {

      v131 = type metadata accessor for SearchToolExecutorError(0);
      sub_22BB30548();
      sub_22BC05284(v132, v133);
      sub_22BB369E0();
      swift_allocError();
      v40(v134, v34, v28);
      sub_22BB2F324();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v135 = sub_22BB9778C();
      v136(v135);
      return v131;
    }

    v42 = *(v41 + 16);
    if (v42)
    {
      v161 = v37;
      v171 = MEMORY[0x277D84F90];
      v43 = v41;
      sub_22BD27A40(0, v42, 0);
      v44 = v171;
      sub_22BB2F374();
      v160 = v43;
      v46 = v43 + v45;
      v170 = *(v47 + 72);
      v48 = *(v47 + 16);
      do
      {
        v49 = v165;
        v50 = v167;
        v48(v165, v46, v167);
        v58 = swift_allocBox(v50, v51, v52, v53, v54, v55, v56, v57, v138, v139, v140);
        (*v163)(v59, v49, v50);
        *v23 = v58;
        (*v168)(v23, v166, v16);
        v171 = v44;
        v60 = v16;
        v62 = *(v44 + 16);
        v61 = *(v44 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_22BD27A40(v61 > 1, v62 + 1, 1);
          v44 = v171;
        }

        *(v44 + 16) = v62 + 1;
        sub_22BB2F374();
        (*(v64 + 32))(v44 + v63 + *(v64 + 72) * v62, v23, v60);
        v46 += v170;
        --v42;
        v16 = v60;
      }

      while (v42);
      v34 = v152;
      v28 = v154;
      (*v156)(v152, v154);

      v37 = v161;
    }

    else
    {

      v65 = sub_22BB9778C();
      v66(v65);
      v44 = MEMORY[0x277D84F90];
    }

    ++v37;
    sub_22BD669CC(v44);
  }

  v67 = v146;
  sub_22BDB63A4();
  v68 = sub_22BDB77C4();
  sub_22BDBB104();
  sub_22BB379BC();
  if (os_log_type_enabled(v68, v69))
  {
    sub_22BB2F114();
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_22BB2C000, v68, v67, "Constructed valid SearchEntityTypeIdentifier", v70, 2u);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  (*(v139 + 8))(v146, v140);
  v71 = sub_22BDBA3A4();
  v79 = swift_allocBox(v71, v72, v73, v74, v75, v76, v77, v78, v138, v139, v140);
  if (qword_27D8E2278 != -1)
  {
    swift_once();
  }

  v80 = sub_22BBED810(v28, qword_27D8E2AB0);
  (*v159)(v141, v80, v28);
  sub_22BDBA374();
  *v150 = v79;
  v170 = *(v169 + 104);
  v170();
  sub_22BDB46A4();
  sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
  v81 = swift_allocObject();
  *(v81 + 16) = xmmword_22BDBCBD0;
  *(v81 + 32) = v147;
  *(v81 + 40) = v151;

  sub_22BDB45F4();
  sub_22BBE6DE0(&qword_27D8E2B50, &qword_22BDBD258);
  v82 = (sub_22BBE6DE0(&qword_27D8E2B58, &unk_22BDBD260) - 8);
  v83 = *(*v82 + 72);
  v84 = (*(*v82 + 80) + 32) & ~*(*v82 + 80);
  v85 = swift_allocObject();
  v165 = v85;
  *(v85 + 16) = xmmword_22BDBD160;
  v86 = v16;
  v87 = (v85 + v84);
  v88 = v82[14];
  *v87 = 0x7972657551776172;
  *(v87 + 1) = 0xE800000000000000;
  v89 = sub_22BDBA514();
  v97 = swift_allocBox(v89, v90, v91, v92, v93, v94, v95, v96, v138, v139, v140);
  v98 = v148;
  *v99 = v142;
  v99[1] = v98;
  LODWORD(v163) = *MEMORY[0x277D729B8];
  sub_22BB30474();
  v162 = *(v100 + 104);
  v164 = v100 + 104;
  v162();
  *&v87[v88] = v97;
  LODWORD(v161) = *MEMORY[0x277D72A58];
  v101 = v170;
  (v170)(&v87[v88]);
  v160 = v83;
  v102 = &v87[v83];
  v103 = v82[14];
  *v102 = 0x6E65644965707974;
  *(v102 + 1) = 0xEF73726569666974;
  v104 = *(v169 + 16);
  v138 = v86;
  v104(&v87[v83 + v103], v150, v86);
  v105 = &v87[2 * v83];
  v106 = v82[14];
  strcpy(v105, "rewrittenQuery");
  v105[15] = -18;
  v114 = swift_allocBox(v89, v107, v108, v109, v110, v111, v112, v113, v138, v139, v140);
  v115 = v151;
  *v116 = v147;
  v116[1] = v115;
  (v162)(v116, v163, v89);
  *&v105[v106] = v114;
  v101(&v105[v106], v161, v86);
  v117 = &v87[3 * v160];
  v118 = v82[14];
  *v117 = 0x7275746375727473;
  *(v117 + 1) = 0xEF79726575516465;
  v167 = swift_allocBox(v167, v119, v120, v121, v122, v123, v124, v125, v138, v139, v140);
  v126 = v144;
  v127 = v149;
  v128 = v145;
  (*(v144 + 16))(v143, v149, v145);
  sub_22BC05284(&qword_27D8E2B60, MEMORY[0x277D36F88]);

  sub_22BDBA474();
  *&v117[v118] = v167;
  v129 = &v117[v118];
  v130 = v138;
  (v170)(v129, v166, v138);
  v131 = sub_22BDBAB14();
  (*(v126 + 8))(v127, v128);
  (*(v169 + 8))(v150, v130);
  return v131;
}

uint64_t sub_22BBFAD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[7] = a1;
  v9 = sub_22BDB77D4();
  v5[10] = v9;
  sub_22BB30434(v9);
  v5[11] = v10;
  v5[12] = sub_22BB30ACC();
  sub_22BDB5F24();
  v5[13] = sub_22BB30ACC();
  v11 = *(a4 + 16);
  v5[14] = v11;
  v12 = *(a4 + 24);
  v5[15] = v12;
  v14 = type metadata accessor for SearchToolExecutor.SearchResults(255, v11, v12, v13);
  v5[16] = v14;
  v15 = sub_22BDBB254();
  v5[17] = v15;
  sub_22BB30434(v15);
  v5[18] = v16;
  v17 = sub_22BB30ACC();
  v5[19] = v17;
  v5[20] = *(v14 - 8);
  v5[21] = sub_22BB30ACC();
  swift_task_alloc();
  sub_22BB30B34();
  v5[22] = v18;
  *v18 = v19;
  v18[1] = sub_22BBFAF20;

  return sub_22BBFC7F0(v17, a2, a3, a4);
}

uint64_t sub_22BBFB614()
{
  v1 = sub_22BDB77D4();
  sub_22BB30444();
  v122 = v2;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v112 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v119 = &v112 - v7;
  sub_22BB2F120();
  v126 = sub_22BDB4464();
  sub_22BB30444();
  v128 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  v124 = v10;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v11);
  v125 = &v112 - v12;
  sub_22BB2F120();
  v123 = sub_22BDBA4B4();
  sub_22BB30444();
  v127 = v13;
  MEMORY[0x28223BE20](v14);
  sub_22BB30574();
  v117 = v16 - v15;
  sub_22BB2F120();
  v17 = sub_22BDBA634();
  sub_22BB30444();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  sub_22BB30560();
  v120 = v21;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v22);
  v118 = &v112 - v23;
  sub_22BB30B70();
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v112 - v26;
  MEMORY[0x28223BE20](v25);
  v121 = (&v112 - v28);
  sub_22BB30B70();
  v30 = MEMORY[0x28223BE20](v29);
  v32 = (&v112 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = &v112 - v33;
  v35 = v0;
  sub_22BDBA624();
  v36 = (*(v19 + 88))(v34, v17);
  v37 = v36;
  if (v36 == *MEMORY[0x277D72D50])
  {
    v38 = v6;
    v39 = *(v19 + 16);
    v119 = v34;
    v39(v32, v34, v17);
    (*(v19 + 96))(v32, v17);
    v40 = *v32;
    v41 = sub_22BDBA604();
    v42 = swift_projectBox();
    v43 = *(v41 - 8);
    v44 = (*(v43 + 88))(v42, v41);
    if (v44 == *MEMORY[0x277D72CC0])
    {
      v52 = v44;
      v115 = v40;
      v53 = swift_allocBox(v41, v45, v46, v47, v48, v49, v50, v51, v112, v113, v114);
      (*(v43 + 104))(v54, v52, v41);
      v55 = v121;
      *v121 = v53;
      (*(v19 + 104))(v55, v37, v17);
      v56 = sub_22BDB4444();
      v57 = *(v19 + 8);
      v58 = sub_22BB3B528();
      (v57)(v58);
      v59 = *(v56 + 16);
      if (v59)
      {
        v118 = v57;
        v116 = v19;
        v114 = v17;
        v129 = MEMORY[0x277D84F90];
        sub_22BD27A98(0, v59, 0);
        v60 = v129;
        v61 = *(v128 + 2);
        v62 = v128[80];
        v113 = v56;
        v63 = v56 + ((v62 + 32) & ~v62);
        v121 = *(v128 + 9);
        v122 = "AnswerSynthesisResult";
        v128 += 16;
        v120 = v127 + 4;
        v64 = v117;
        do
        {
          v66 = v125;
          v65 = v126;
          v61(v125, v63, v126);
          v61(v124, v66, v65);
          sub_22BB52898();
          sub_22BC05284(&qword_27D8E2AC8, v67);
          sub_22BDBA474();
          v68 = sub_22BB3304C();
          v69(v68);
          v129 = v60;
          v71 = *(v60 + 16);
          v70 = *(v60 + 24);
          if (v71 >= v70 >> 1)
          {
            sub_22BD27A98(v70 > 1, v71 + 1, 1);
            v60 = v129;
          }

          *(v60 + 16) = v71 + 1;
          sub_22BB2F374();
          (*(v73 + 32))(v60 + v72 + *(v73 + 72) * v71, v64, v123);
          v63 += v121;
          --v59;
        }

        while (v59);

        v17 = v114;
        v57 = v118;
      }

      else
      {

        v60 = MEMORY[0x277D84F90];
      }

      v34 = v119;
      goto LABEL_21;
    }

    v123 = v1;

    v34 = v119;
    v6 = v38;
LABEL_13:
    sub_22BDB63A4();
    v92 = v19;
    v93 = *(v19 + 16);
    v94 = v120;
    v93(v120, v35, v17);
    v95 = v6;
    v96 = sub_22BDB77C4();
    sub_22BDBB114();
    sub_22BB379BC();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = sub_22BB31AD8();
      v128 = v6;
      v99 = v98;
      v127 = sub_22BB314C8();
      v129 = v127;
      *v99 = 136315138;
      v93(v121, v94, v17);
      sub_22BDBAC14();
      v57 = *(v92 + 8);
      (v57)(v94, v17);
      v100 = sub_22BB331D4();
      v103 = sub_22BB32EE0(v100, v101, v102);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_22BB2C000, v96, v95, "Unable to convert %s into SearchEntityTypeIdentifier representation", v99, 0xCu);
      sub_22BB32FA4(v127);
      sub_22BB2F368();
      MEMORY[0x2318A6080]();
      sub_22BB2F368();
      MEMORY[0x2318A6080]();

      (*(v122 + 1))(v128, v123);
    }

    else
    {

      v57 = *(v92 + 8);
      (v57)(v94, v17);
      (*(v122 + 1))(v6, v123);
    }

    v60 = 0;
LABEL_21:
    (v57)(v34, v17);
    return v60;
  }

  v123 = v1;
  if (v36 != *MEMORY[0x277D72D28])
  {
    goto LABEL_13;
  }

  v74 = v19;
  v75 = *(v19 + 16);
  v75(v27, v34, v17);
  v76 = sub_22BB3B528();
  v77(v76);
  v78 = *v27;
  v79 = *(*v27 + 24);
  v117 = *(*v27 + 16);
  v80 = v78[5];
  v114 = v78[4];
  v115 = v79;
  v120 = v78;

  v113 = v80;

  v81 = v119;
  sub_22BDB63A4();
  v82 = v118;
  v75(v118, v0, v17);
  v83 = sub_22BDB77C4();
  v84 = sub_22BDBB104();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = sub_22BB31AD8();
    v116 = v74;
    v86 = v85;
    v112 = sub_22BB314C8();
    v129 = v112;
    *v86 = 136315138;
    v75(v121, v82, v17);
    sub_22BB3B528();
    v87 = v34;
    v88 = sub_22BDBAC14();
    v90 = v89;
    v118 = *(v116 + 8);
    (v118)(v82, v17);
    v91 = sub_22BB32EE0(v88, v90, &v129);

    *(v86 + 4) = v91;
    v34 = v87;
    _os_log_impl(&dword_22BB2C000, v83, v84, "Converting %s to SearchEntityTypeIdentifier representation", v86, 0xCu);
    sub_22BB32FA4(v112);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v104 = sub_22BB3B528();
    v118 = v105;
    (v105)(v104);
  }

  (*(v122 + 1))(v81, v123);
  v106 = v125;
  sub_22BDB4454();
  sub_22BBE6DE0(&qword_27D8E2548, &qword_22BDBD170);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_22BDBCBD0;
  v107 = v128;
  v108 = v126;
  (*(v128 + 2))(v124, v106, v126);
  sub_22BB52898();
  sub_22BC05284(v109, v110);
  sub_22BDBA474();
  (*(v107 + 1))(v106, v108);

  (v118)(v34, v17);
  return v60;
}

uint64_t sub_22BBFC0C8()
{
  v0 = sub_22BDBA634();
  sub_22BC052C8(v0, qword_27D8E2AB0);
  v1 = sub_22BBED810(v0, qword_27D8E2AB0);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x800000022BDD15D0;
  v2[4] = 0xD00000000000001ALL;
  v2[5] = 0x800000022BDD1620;
  *v1 = v2;
  v3 = *MEMORY[0x277D72D28];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_22BBFC1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_22BDBA594();
  sub_22BB30ED8();
  (*(v10 + 32))(a5, a1);
  sub_22BB72044();
  v15 = type metadata accessor for SearchToolExecutor.SearchResults(v11, v12, v13, v14);
  sub_22BBDB5D0(a2, a5 + v15[9], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBDB5D0(a3, a5 + v15[10], &qword_27D8E2528, &unk_22BDBD190);
  *(a5 + v15[11]) = a4;
  return result;
}

uint64_t sub_22BBFC27C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  sub_22BDBA594();
  sub_22BB30ED8();
  (*(v19 + 32))(a9, a1);
  v21 = type metadata accessor for SearchToolExecutor.HydratedSearchResults(0, a8, a10, v20);
  *(a9 + v21[9]) = a2;
  v22 = (a9 + v21[10]);
  *v22 = a3;
  v22[1] = a4;
  sub_22BBDB5D0(a5, a9 + v21[11], &qword_27D8E2530, &qword_22BDBCBF0);
  result = sub_22BBDB5D0(a6, a9 + v21[12], &qword_27D8E2528, &unk_22BDBD190);
  *(a9 + v21[13]) = a7;
  return result;
}

uint64_t sub_22BBFC380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v16 = sub_22BDB60B4();
  sub_22BB30444();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  sub_22BB30574();
  v22 = v21 - v20;
  sub_22BDB8E14();
  sub_22BB314BC();
  v47 = v24;
  v48 = v23;
  v51 = a1;
  (*(v24 + 16))(a9, a1);
  v26 = type metadata accessor for SearchToolExecutor(0, a11, a12, v25);
  v27 = v26[9];
  sub_22BDBA014();
  sub_22BB314BC();
  v45 = v29;
  v46 = v28;
  v50 = a2;
  (*(v29 + 16))(a9 + v27, a2);
  v30 = *(a11 - 8);
  v49 = a3;
  (*(v30 + 16))(a9 + v26[10], a3, a11);
  sub_22BB3269C();
  sub_22BC051C4(a4, a9 + v31);
  sub_22BB72ECC();
  sub_22BC051C4(a5, a9 + v32);
  sub_22BB69088(a6, a9 + v26[13]);
  v33 = v26[14];
  v34 = sub_22BDB9774();
  sub_22BB314BC();
  v36 = v35;
  (*(v35 + 16))(a9 + v33, a7, v34);
  sub_22BBBEE60(a8, a9 + v26[15], &qword_27D8E2B28, &unk_22BDBD230);
  (*(v18 + 104))(v22, *MEMORY[0x277D1EBC8], v16);
  LOBYTE(v33) = sub_22BDB60A4();
  (*(v18 + 8))(v22, v16);
  if (v33)
  {
    sub_22BDB5F64();
    swift_allocObject();
    sub_22BDB5F54();
    sub_22BB30F68();
    type metadata accessor for SearchToolResolver();
    swift_allocObject();
    v37 = sub_22BB358DC();
    v38 = sub_22BC06880(v37);
    sub_22BB58728(a8, &qword_27D8E2B28, &unk_22BDBD230);
    (*(v36 + 8))(a7, v34);
    sub_22BB32FA4(a6);
    sub_22BB3A398();
    sub_22BB3593C();
    sub_22BC05344(a4, v39);
    (*(v30 + 8))(v49, a11);
    (*(v45 + 8))(v50, v46);
    (*(v47 + 8))(v51, v48);
  }

  else
  {
    sub_22BB58728(a8, &qword_27D8E2B28, &unk_22BDBD230);
    (*(v36 + 8))(a7, v34);
    sub_22BB32FA4(a6);
    sub_22BB3A398();
    sub_22BB3593C();
    sub_22BC05344(a4, v40);
    (*(v30 + 8))(v49, a11);
    (*(v45 + 8))(v50, v46);
    (*(v47 + 8))(v51, v48);
    v38 = 0;
  }

  *(a9 + v26[16]) = v38;
  v41 = v26[17];
  sub_22BDB9C14();
  sub_22BB30ED8();
  return (*(v42 + 32))(a9 + v41, a10);
}

uint64_t sub_22BBFC7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  v7 = sub_22BDBA0C4();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v8 = sub_22BDBA0D4();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  v5[29] = swift_task_alloc();
  v9 = *(a4 + 24);
  v5[30] = v9;
  v10 = *(a4 + 16);
  v5[31] = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[32] = AssociatedTypeWitness;
  v12 = sub_22BDBB254();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v5[36] = swift_task_alloc();
  v5[37] = sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[40] = AssociatedConformanceWitness;
  v15 = type metadata accessor for TypedValueExecutionResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  v5[41] = v15;
  v5[42] = *(v15 - 8);
  v5[43] = swift_task_alloc();
  v16 = sub_22BDB43E4();
  v5[44] = v16;
  v5[45] = *(v16 - 8);
  v5[46] = swift_task_alloc();
  v17 = sub_22BDB8E14();
  v5[47] = v17;
  v5[48] = *(v17 - 8);
  v5[49] = swift_task_alloc();
  v19 = type metadata accessor for ToolExecutionEventStream(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v5[50] = v19;
  WitnessTable = swift_getWitnessTable();
  v5[51] = WitnessTable;
  v5[7] = AssociatedTypeWitness;
  v5[8] = v19;
  v5[9] = AssociatedConformanceWitness;
  v5[10] = WitnessTable;
  v21 = type metadata accessor for ToolExecution.Outcome(0, (v5 + 7));
  v5[52] = v21;
  v5[53] = *(v21 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v5[56] = swift_task_alloc();
  v5[57] = swift_task_alloc();
  v5[58] = *(v10 - 8);
  v5[59] = swift_task_alloc();
  v22 = sub_22BDBA014();
  v5[60] = v22;
  v5[61] = *(v22 - 8);
  v5[62] = swift_task_alloc();
  type metadata accessor for Resolver(0);
  v5[63] = swift_task_alloc();
  v5[64] = sub_22BBE6DE0(&qword_27D8E2B18, &qword_22BDBD218);
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = swift_task_alloc();
  v23 = sub_22BDBA594();
  v5[68] = v23;
  v5[69] = *(v23 - 8);
  v5[70] = swift_task_alloc();
  v5[71] = swift_task_alloc();
  v5[72] = swift_task_alloc();
  v5[73] = swift_task_alloc();
  v24 = sub_22BDBA3A4();
  v5[74] = v24;
  v5[75] = *(v24 - 8);
  v5[76] = swift_task_alloc();
  v26 = type metadata accessor for SearchToolExecutor.SearchResults(0, v10, v9, v25);
  v5[77] = v26;
  v5[78] = *(v26 - 8);
  v5[79] = swift_task_alloc();
  v27 = sub_22BDB60B4();
  v5[80] = v27;
  v5[81] = *(v27 - 8);
  v5[82] = swift_task_alloc();
  v28 = sub_22BDB9F64();
  v5[83] = v28;
  v5[84] = *(v28 - 8);
  v5[85] = swift_task_alloc();
  v29 = sub_22BDB5414();
  v5[86] = v29;
  v5[87] = *(v29 - 8);
  v5[88] = swift_task_alloc();
  v30 = sub_22BDB7C54();
  v5[89] = v30;
  v5[90] = *(v30 - 8);
  v5[91] = swift_task_alloc();
  v5[92] = swift_task_alloc();
  v5[93] = type metadata accessor for InvocationOptions(0);
  v5[94] = swift_task_alloc();
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v31 = sub_22BDB77D4();
  v5[97] = v31;
  v5[98] = *(v31 - 8);
  v5[99] = swift_task_alloc();
  v5[100] = swift_task_alloc();
  v5[101] = swift_task_alloc();
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();
  v5[104] = swift_task_alloc();
  v5[105] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBFD168, 0, 0);
}

uint64_t sub_22BBFD168(uint64_t a1)
{
  v62 = v1;
  sub_22BDB63A4();

  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB134();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 784);
  if (v4)
  {
    v6 = sub_22BB31AD8();
    v7 = sub_22BB314C8();
    v61 = v7;
    *v6 = 136315138;
    sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
    v8 = sub_22BDBAAF4();
    v10 = sub_22BB32EE0(v8, v9, &v61);

    *(v6 + 4) = v10;
    sub_22BB30B08(&dword_22BB2C000, v11, v12, "SearchToolExecutor: calling SearchTool with parameters: %s");
    sub_22BB32FA4(v7);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  v13 = *(v5 + 8);
  v14 = sub_22BB30AE4();
  v13(v14);
  v60 = v13;
  *(v1 + 848) = v13;
  v15 = *(v1 + 768);
  v16 = *(v1 + 744);
  v17 = *(v1 + 168) + *(*(v1 + 160) + 44);
  v18 = sub_22BB3304C();
  sub_22BBBEE60(v18, v19, v20, v21);
  v22 = (v17 + v16[5]);
  v24 = *v22;
  v23 = v22[1];

  v25 = sub_22BDB4374();
  v27 = v26;
  sub_22BBBEE60(v17 + v16[7], v15 + v16[7], &qword_27D8E2B20, &unk_22BDBF750);
  v28 = (v15 + v16[5]);
  *v28 = v24;
  v28[1] = v23;
  v29 = (v15 + v16[6]);
  *v29 = v25;
  v29[1] = v27;
  sub_22BDB63A4();
  sub_22BB3269C();
  v30 = sub_22BB2F0E0();
  sub_22BC051C4(v30, v31);
  v32 = sub_22BDB77C4();
  v33 = sub_22BDBB134();
  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v1 + 832);
  v36 = *(v1 + 776);
  v37 = *(v1 + 760);
  if (v34)
  {
    v38 = *(v1 + 752);
    v59 = *(v1 + 832);
    v39 = sub_22BB31AD8();
    v40 = sub_22BB314C8();
    v61 = v40;
    *v39 = 136315138;
    sub_22BB3269C();
    sub_22BC051C4(v37, v38);
    sub_22BB2F12C();
    sub_22BDBAC14();
    sub_22BB3593C();
    sub_22BC05344(v37, v41);
    v42 = sub_22BB2F12C();
    v45 = sub_22BB32EE0(v42, v43, v44);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_22BB2C000, v32, v33, "SearchToolExecutor: with invocationOptions: %s", v39, 0xCu);
    sub_22BB32FA4(v40);
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();

    v46 = v59;
  }

  else
  {

    sub_22BB3593C();
    sub_22BC05344(v37, v47);
    v46 = v35;
  }

  v60(v46, v36);
  v49 = *(v1 + 160);
  v48 = *(v1 + 168);
  v50 = (v48 + v49[13]);
  v51 = v50[3];
  v52 = v50[4];
  sub_22BB69FEC(v50, v51);
  v53 = v49[9];
  *(v1 + 968) = v53;
  v54 = v49[14];
  *(v1 + 972) = v54;
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 856) = v55;
  *v55 = v56;
  v55[1] = sub_22BBFD534;
  v57 = *(v1 + 736);

  return MEMORY[0x282176A68](v57, v48 + v53, v48 + v54, v51, v52);
}

uint64_t sub_22BC00D90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22BDB77D4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  v4[9] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = sub_22BDBA594();
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v7 = sub_22BDB60B4();
  v4[16] = v7;
  v4[17] = *(v7 - 8);
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC00F94, 0, 0);
}

uint64_t sub_22BC014D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_22BBE6DE0(&qword_27D8E2528, &unk_22BDBD190);
  v4[6] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2530, &qword_22BDBCBF0);
  v4[7] = swift_task_alloc();
  v5 = sub_22BDBA594();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v6 = sub_22BDBA634();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = sub_22BDB89A4();
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  type metadata accessor for HydrationConfiguration(0);
  v4[17] = swift_task_alloc();
  v8 = sub_22BDB77D4();
  v4[18] = v8;
  v4[19] = *(v8 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2AE0, &qword_22BDBD1A0);
  v4[24] = swift_task_alloc();
  v4[25] = type metadata accessor for UnwrappedSearchResults(0);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC017E8, 0, 0);
}

uint64_t sub_22BC0234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a4;
  v5[7] = v4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_22BC02374, 0, 0);
}

uint64_t sub_22BC02374()
{
  sub_22BB2F35C();
  v1 = *(v0 + 56);
  sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  sub_22BBE6DE0(&qword_27D8E2970, &qword_22BDBD008);
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 72) = v4;
  *v4 = v5;
  v4[1] = sub_22BC02498;

  return MEMORY[0x282200740](v0 + 16);
}

uint64_t sub_22BC02614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[15] = a6;
  v7[16] = a7;
  v7[13] = a4;
  v7[14] = a5;
  v7[11] = a2;
  v7[12] = a3;
  v7[10] = a1;
  v9 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v7[23] = swift_task_alloc();
  v10 = sub_22BDB89A4();
  v7[24] = v10;
  v11 = *(v10 - 8);
  v7[25] = v11;
  v7[26] = *(v11 + 64);
  v7[27] = swift_task_alloc();
  v12 = sub_22BDBA594();
  v7[28] = v12;
  v13 = *(v12 - 8);
  v7[29] = v13;
  v7[30] = *(v13 + 64);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = swift_task_alloc();
  v14 = *(a6 - 8);
  v7[34] = v14;
  v7[35] = *(v14 + 64);
  v7[36] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2AF8, &qword_22BDBD1D8);
  v7[39] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E2B00, &qword_22BDBD1E0);
  v7[40] = v15;
  v7[41] = *(v15 - 8);
  v7[42] = swift_task_alloc();
  v7[43] = sub_22BBE6DE0(&qword_27D8E2B08, &qword_22BDBD1E8);
  v7[44] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2B10, &unk_22BDBD1F0);
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC029E8, 0, 0);
}

uint64_t sub_22BC029E8(uint64_t a1)
{
  v2 = 0;
  v57 = *(v1 + 344);
  v3 = *(v1 + 96);
  v55 = *(v1 + 272);
  v56 = *(v1 + 232);
  v53 = *(v1 + 208) + 7;
  v54 = *(v1 + 200);
  v4 = *v3;
  v5 = *(*v3 + 16);
  v51 = *v3;
  v52 = v5;
  while (1)
  {
    if (v2 == v5)
    {
      v6 = 1;
      v7 = v5;
    }

    else
    {
      if (v2 >= *(v4 + 16))
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1);
      }

      v8 = *(v1 + 352);
      v7 = v2 + 1;
      sub_22BB2F374();
      v12 = v4 + v9 + *(v10 + 72) * v11;
      v13 = *(v57 + 48);
      *v8 = v11;
      (*(v10 + 16))(&v8[v13], v12);
      v14 = sub_22BB31F54();
      sub_22BBDB5D0(v14, v15, &qword_27D8E2B08, &qword_22BDBD1E8);
      v6 = 0;
    }

    v16 = *(v1 + 344);
    sub_22BB336D0(*(v1 + 360), v6, 1, v16);
    v17 = sub_22BB31F54();
    sub_22BBDB5D0(v17, v18, &qword_27D8E2B10, &unk_22BDBD1F0);
    v19 = sub_22BB3A190();
    sub_22BB31814(v19, v20, v16);
    if (v21)
    {
      break;
    }

    v22 = *(v1 + 368);
    v67 = *(v1 + 304);
    v69 = *(v1 + 296);
    v70 = v7;
    v23 = *(v1 + 288);
    v63 = *(v1 + 280);
    v64 = v23;
    v24 = *(v1 + 264);
    v65 = *(v1 + 240);
    v25 = *(v1 + 216);
    v26 = *(v1 + 224);
    v61 = v26;
    v27 = *(v1 + 192);
    v62 = v27;
    v28 = *(v1 + 104);
    v59 = *(v1 + 112);
    v68 = *v22;
    v58 = *(v57 + 48);
    v66 = sub_22BDBAEF4();
    v71 = *(v1 + 120);
    sub_22BB30B28();
    sub_22BB336D0(v29, v30, v31, v32);
    (*(v55 + 16))(v23, v28);
    v60 = *(v56 + 32);
    v60(v24, v22 + v58, v26);
    (*(v54 + 16))(v25, v59, v27);
    v33 = (*(v55 + 80) + 48) & ~*(v55 + 80);
    v34 = (v63 + *(v56 + 80) + v33) & ~*(v56 + 80);
    v35 = (v65 + *(v54 + 80) + v34) & ~*(v54 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    *(v36 + 32) = v71;
    (*(v55 + 32))(v36 + v33, v64, v71);
    v60(v36 + v34, v24, v61);
    (*(v54 + 32))(v36 + v35, v25, v62);
    *(v36 + ((v53 + v35) & 0xFFFFFFFFFFFFFFF8)) = v68;
    sub_22BBBEE60(v67, v69, &qword_27D8E2978, &qword_22BDBD020);
    v37 = sub_22BB3A190();
    v39 = sub_22BB3AA28(v37, v38, v66);
    v40 = *(v1 + 296);
    if (v39 == 1)
    {
      sub_22BB58728(*(v1 + 296), &qword_27D8E2978, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      sub_22BB30474();
      (*(v41 + 8))(v40, v66);
    }

    v5 = v52;
    if (*(v36 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v42 = sub_22BDBAE44();
      v44 = v43;
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0;
      v44 = 0;
    }

    v4 = v51;
    v45 = **(v1 + 88);

    sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
    v46 = v44 | v42;
    if (v44 | v42)
    {
      v46 = v1 + 16;
      *(v1 + 16) = 0;
      *(v1 + 24) = 0;
      *(v1 + 32) = v42;
      *(v1 + 40) = v44;
    }

    v47 = *(v1 + 304);
    *(v1 + 48) = 1;
    *(v1 + 56) = v46;
    *(v1 + 64) = v45;
    swift_task_create();

    a1 = sub_22BB58728(v47, &qword_27D8E2978, &qword_22BDBD020);
    v2 = v70;
  }

  *(v1 + 376) = sub_22BBE6DE0(&qword_27D8E2AE8, &qword_22BDBD1B0);
  sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
  sub_22BB30AE4();
  sub_22BDBB014();
  *(v1 + 384) = MEMORY[0x277D84F90];
  swift_task_alloc();
  sub_22BB30B34();
  *(v1 + 392) = v48;
  *v48 = v49;
  a1 = sub_22BB3A158(v48);

  return MEMORY[0x2822004E8](a1);
}

uint64_t sub_22BC03050()
{
  v352 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 312);
  v3 = sub_22BB3A190();
  sub_22BB31814(v3, v4, v1);
  if (v12)
  {
    v5 = *(v0 + 400);
    v6 = *(v0 + 384);
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    v344 = v6;

    sub_22BC03D98(&v344);
    if (!v5)
    {
      v28 = v344;
      v29 = *(v344 + 16);
      if (v29)
      {
        v30 = *(v0 + 144);
        v344 = MEMORY[0x277D84F90];
        sub_22BD27A40(0, v29, 0);
        v31 = v344;
        v32 = v28 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
        v272 = *(v30 + 72);
        do
        {
          v308 = v31;
          v326 = v29;
          v290 = *(v0 + 248);
          v34 = *(v0 + 224);
          v33 = *(v0 + 232);
          v35 = *(v0 + 160);
          v36 = *(v0 + 152);
          v37 = *(v0 + 136);
          sub_22BBBEE60(v32, *(v0 + 168), &qword_27D8E2AF0, &qword_22BDBD1D0);
          v38 = sub_22BB2F12C();
          sub_22BBBEE60(v38, v39, &qword_27D8E2AF0, &qword_22BDBD1D0);
          v40 = *(v33 + 32);
          v41 = *(v37 + 48);
          *v36 = *v35;
          v42 = v35 + v41;
          v43 = v40;
          v40(v36 + v41, v42, v34);
          v44 = v36 + v41;
          v31 = v308;
          (*(v33 + 16))(v290, v44, v34);
          v45 = sub_22BB31F54();
          sub_22BB58728(v45, v46, &qword_22BDBD1D0);
          sub_22BB72044();
          sub_22BB58728(v47, v48, v49);
          v344 = v308;
          v51 = *(v308 + 16);
          v50 = *(v308 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_22BD27A40(v50 > 1, v51 + 1, 1);
            v31 = v344;
          }

          v52 = *(v0 + 248);
          v53 = *(v0 + 224);
          v54 = *(v0 + 232);
          *(v31 + 16) = v51 + 1;
          v43(v31 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v51, v52, v53);
          v32 += v272;
          v29 = v326 - 1;
        }

        while (v326 != 1);
      }

      else
      {

        v31 = MEMORY[0x277D84F90];
      }

      v63 = *(v0 + 360);
      v62 = *(v0 + 368);
      v64 = *(v0 + 352);
      v65 = *(v0 + 336);
      v67 = *(v0 + 304);
      v66 = *(v0 + 312);
      v68 = *(v0 + 288);
      v69 = *(v0 + 296);
      v70 = *(v0 + 264);
      v204 = *(v0 + 256);
      v221 = *(v0 + 248);
      v238 = *(v0 + 216);
      v255 = *(v0 + 184);
      v273 = *(v0 + 176);
      v291 = *(v0 + 168);
      v309 = *(v0 + 160);
      v327 = *(v0 + 152);
      **(v0 + 80) = v31;
      v62, v55, v56, v57, v58, v59, v60, v61, v187, v204, v221, v238, v255, v273, v291, v309, v327, v344, v345, v346, v347, v348, v349, v350, v351;
      v63, v71, v72, v73, v74, v75, v76, v77, v188, v205, v222, v239, v256, v274, v292, v310, v328, v344, v345, v346, v347, v348, v349, v350, v351;
      v64, v78, v79, v80, v81, v82, v83, v84, v189, v206, v223, v240, v257, v275, v293, v311, v329, v344, v345, v346, v347, v348, v349, v350, v351;
      v65, v85, v86, v87, v88, v89, v90, v91, v190, v207, v224, v241, v258, v276, v294, v312, v330, v344, v345, v346, v347, v348, v349, v350, v351;
      v66, v92, v93, v94, v95, v96, v97, v98, v191, v208, v225, v242, v259, v277, v295, v313, v331, v344, v345, v346, v347, v348, v349, v350, v351;
      v67, v99, v100, v101, v102, v103, v104, v105, v192, v209, v226, v243, v260, v278, v296, v314, v332, v344, v345, v346, v347, v348, v349, v350, v351;
      v69, v106, v107, v108, v109, v110, v111, v112, v193, v210, v227, v244, v261, v279, v297, v315, v333, v344, v345, v346, v347, v348, v349, v350, v351;
      v68, v113, v114, v115, v116, v117, v118, v119, v194, v211, v228, v245, v262, v280, v298, v316, v334, v344, v345, v346, v347, v348, v349, v350, v351;
      v70, v120, v121, v122, v123, v124, v125, v126, v195, v212, v229, v246, v263, v281, v299, v317, v335, v344, v345, v346, v347, v348, v349, v350, v351;
      v213, v127, v128, v129, v130, v131, v132, v133, v196, v213, v230, v247, v264, v282, v300, v318, v336, v344, v345, v346, v347, v348, v349, v350, v351;
      v231, v134, v135, v136, v137, v138, v139, v140, v197, v214, v231, v248, v265, v283, v301, v319, v337, v344, v345, v346, v347, v348, v349, v350, v351;
      v249, v141, v142, v143, v144, v145, v146, v147, v198, v215, v232, v249, v266, v284, v302, v320, v338, v344, v345, v346, v347, v348, v349, v350, v351;
      v267, v148, v149, v150, v151, v152, v153, v154, v199, v216, v233, v250, v267, v285, v303, v321, v339, v344, v345, v346, v347, v348, v349, v350, v351;
      v286, v155, v156, v157, v158, v159, v160, v161, v200, v217, v234, v251, v268, v286, v304, v322, v340, v344, v345, v346, v347, v348, v349, v350, v351;
      v305, v162, v163, v164, v165, v166, v167, v168, v201, v218, v235, v252, v269, v287, v305, v323, v341, v344, v345, v346, v347, v348, v349, v350, v351;
      v324, v169, v170, v171, v172, v173, v174, v175, v202, v219, v236, v253, v270, v288, v306, v324, v342, v344, v345, v346, v347, v348, v349, v350, v351;
      v343, v176, v177, v178, v179, v180, v181, v182, v203, v220, v237, v254, v271, v289, v307, v325, v343, v344, v345, v346, v347, v348, v349, v350, v351;
      sub_22BB360FC();
      sub_22BB38C7C();

      __asm { BRAA            X1, X16 }
    }

    sub_22BB38C7C();
  }

  else
  {
    v9 = *(v0 + 224);
    v10 = *(v0 + 184);
    v11 = *v2;
    sub_22BBDB5D0(v2 + *(v1 + 48), v10, &qword_27D8E2668, &unk_22BDBCCD0);
    sub_22BB31814(v10, 1, v9);
    if (v12)
    {
      sub_22BB58728(*(v0 + 184), &qword_27D8E2668, &unk_22BDBCCD0);
    }

    else
    {
      v13 = *(v0 + 256);
      v14 = *(v0 + 224);
      v15 = *(v0 + 232);
      v16 = *(v0 + 176);
      v17 = *(v0 + 136);
      (*(v15 + 32))(v13, *(v0 + 184), v14);
      v18 = *(v17 + 48);
      *v16 = v11;
      (*(v15 + 16))(&v16[v18], v13, v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *(v0 + 384);
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BD8F488();
        v20 = v185;
      }

      v21 = *(v20 + 16);
      if (v21 >= *(v20 + 24) >> 1)
      {
        sub_22BD8F488();
        v20 = v186;
      }

      v22 = *(v0 + 176);
      v23 = *(v0 + 144);
      (*(*(v0 + 232) + 8))(*(v0 + 256), *(v0 + 224));
      *(v20 + 16) = v21 + 1;
      sub_22BBDB5D0(v22, v20 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, &qword_27D8E2AF0, &qword_22BDBD1D0);
      *(v0 + 384) = v20;
    }

    swift_task_alloc();
    sub_22BB30B34();
    *(v0 + 392) = v24;
    *v24 = v25;
    sub_22BB3A158(v24);
    sub_22BB38C7C();

    return MEMORY[0x2822004E8](v26);
  }
}

uint64_t sub_22BC036C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a7;
  v12 = sub_22BDB77D4();
  v8[4] = v12;
  v8[5] = *(v12 - 8);
  v8[6] = swift_task_alloc();
  v13 = sub_22BDBA594();
  v8[7] = v13;
  v8[8] = *(v13 - 8);
  v14 = swift_task_alloc();
  v8[9] = v14;
  v17 = (*(v19 + 96) + **(v19 + 96));
  v15 = swift_task_alloc();
  v8[10] = v15;
  *v15 = v8;
  v15[1] = sub_22BC038CC;

  return v17(v14, a5, a6, a8);
}

uint64_t sub_22BC03C6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnwrappedSearchResults(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BC03CD0()
{
  sub_22BB34E84();
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_22BB3C48C;
  sub_22BB37AC0();

  return sub_22BC02614(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BC03D98(uint64_t *a1)
{
  v2 = *(sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_22BDB1654(v3, v4, v5, v6);
    v3 = v7;
  }

  v8 = *(v3 + 16);
  v10[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v10[1] = v8;
  result = sub_22BC04030(v10);
  *a1 = v3;
  return result;
}

uint64_t sub_22BC03E4C(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v5 = *(*(v4 - 8) + 64);
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = sub_22BDBA594();
  sub_22BB30434(v7);
  v9 = (v6 + v5 + *(v8 + 80)) & ~*(v8 + 80);
  v11 = *(v10 + 64);
  v12 = sub_22BDB89A4();
  sub_22BB30434(v12);
  v14 = (v9 + v11 + *(v13 + 80)) & ~*(v13 + 80);
  v16 = v1[2];
  v17 = v1[3];
  v18 = *(v1 + ((*(v15 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  v19 = swift_task_alloc();
  *(v3 + 16) = v19;
  *v19 = v3;
  v19[1] = sub_22BBF90EC;

  return sub_22BC036C0(a1, v16, v17, v1 + v6, v1 + v9, v1 + v14, v18, v4);
}

uint64_t sub_22BC04030(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_22BDBB674();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
        v6 = sub_22BDBADC4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22BC043C4(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22BC04178(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22BC04178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v8 = MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = (&v27 - v11);
  result = MEMORY[0x28223BE20](v10);
  v16 = (&v27 - v15);
  v29 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v34 = -v18;
    v35 = v17;
    v20 = a1 - a3;
    v28 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v32 = v19;
      v33 = a3;
      v30 = v21;
      v31 = v20;
      v22 = v20;
      do
      {
        sub_22BBBEE60(v21, v16, &qword_27D8E2AF0, &qword_22BDBD1D0);
        sub_22BBBEE60(v19, v12, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v23 = *v16;
        v24 = *v12;
        sub_22BB58728(v12, &qword_27D8E2AF0, &qword_22BDBD1D0);
        result = sub_22BB58728(v16, &qword_27D8E2AF0, &qword_22BDBD1D0);
        if (v23 >= v24)
        {
          break;
        }

        if (!v35)
        {
          __break(1u);
          return result;
        }

        v25 = v36;
        sub_22BBDB5D0(v21, v36, &qword_27D8E2AF0, &qword_22BDBD1D0);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_22BBDB5D0(v25, v19, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v19 += v34;
        v21 += v34;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v33 + 1;
      v19 = v32 + v28;
      v20 = v31 - 1;
      v21 = v30 + v28;
      if (v33 + 1 != v29)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_22BC043C4(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v107 = a1;
  v122 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v114 = *(v122 - 8);
  v7 = MEMORY[0x28223BE20](v122);
  v111 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v121 = &v106 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v124 = (&v106 - v12);
  MEMORY[0x28223BE20](v11);
  v123 = (&v106 - v16);
  v17 = a3[1];
  v116 = a3;
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_101:
    v118 = v19;
    v19 = *v107;
    if (!*v107)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = v117;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_103:
      v100 = (v118 + 16);
      for (i = *(v118 + 2); i >= 2; *v100 = i)
      {
        if (!*v116)
        {
          goto LABEL_138;
        }

        v102 = &v118[16 * i];
        v103 = *v102;
        v104 = &v100[2 * i];
        v105 = *(v104 + 1);
        sub_22BC04D08(*v116 + *(v114 + 72) * *v102, *v116 + *(v114 + 72) * *v104, *v116 + *(v114 + 72) * v105, v19);
        if (v4)
        {
          break;
        }

        if (v105 < v103)
        {
          goto LABEL_126;
        }

        if (i - 2 >= *v100)
        {
          goto LABEL_127;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        v13 = *v100 - i;
        if (*v100 < i)
        {
          goto LABEL_128;
        }

        i = *v100 - 1;
        sub_22BDB12C0(v104 + 16, v13, v104);
      }

LABEL_99:

      return;
    }

LABEL_135:
    v118 = sub_22BDB12A8(v118, v13, v14, v15);
    goto LABEL_103;
  }

  v106 = a4;
  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v108 = v18;
    if (v18 + 1 < v17)
    {
      v118 = v19;
      v119 = v18 + 1;
      v22 = *v116;
      v23 = *(v114 + 72);
      v19 = *v116 + v23 * v21;
      v24 = v123;
      sub_22BBBEE60(v19, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v25 = v124;
      sub_22BBBEE60(v22 + v23 * v20, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v26 = *v24;
      v112 = *v25;
      v113 = v26;
      sub_22BB58728(v25, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v24, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v27 = v20 + 2;
      v115 = v23;
      v28 = v22 + v23 * (v20 + 2);
      while (1)
      {
        v29 = v27;
        if (++v119 >= v17)
        {
          break;
        }

        LODWORD(v120) = v113 < v112;
        v30 = v123;
        sub_22BBBEE60(v28, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v31 = v17;
        v32 = v124;
        sub_22BBBEE60(v19, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v4 = *v30;
        v33 = *v32;
        v34 = v32;
        v17 = v31;
        sub_22BB58728(v34, &qword_27D8E2AF0, &qword_22BDBD1D0);
        sub_22BB58728(v30, &qword_27D8E2AF0, &qword_22BDBD1D0);
        v28 += v115;
        v19 += v115;
        v27 = v29 + 1;
        if (((v120 ^ (v4 >= v33)) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      v119 = v17;
LABEL_9:
      if (v113 >= v112)
      {
        v19 = v118;
        v21 = v119;
        v20 = v108;
      }

      else
      {
        v21 = v119;
        if (v119 < v108)
        {
          goto LABEL_132;
        }

        if (v108 >= v119)
        {
          v19 = v118;
          v20 = v108;
        }

        else
        {
          if (v17 >= v29)
          {
            v35 = v29;
          }

          else
          {
            v35 = v17;
          }

          v36 = v115 * (v35 - 1);
          v37 = v115 * v35;
          v4 = v108 * v115;
          v38 = v108;
          v20 = v108;
          do
          {
            if (v38 != --v21)
            {
              v39 = *v116;
              if (!*v116)
              {
                goto LABEL_139;
              }

              sub_22BBDB5D0(v39 + v4, v111, &qword_27D8E2AF0, &qword_22BDBD1D0);
              v40 = v4 < v36 || v39 + v4 >= v39 + v37;
              if (v40)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v4 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22BBDB5D0(v111, v39 + v36, &qword_27D8E2AF0, &qword_22BDBD1D0);
              v20 = v108;
            }

            ++v38;
            v36 -= v115;
            v37 -= v115;
            v4 += v115;
          }

          while (v38 < v21);
          v19 = v118;
          v21 = v119;
        }
      }
    }

    v41 = v116[1];
    if (v21 < v41)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_131;
      }

      if (v21 - v20 < v106)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_130;
    }

    v53 = swift_isUniquelyReferenced_nonNull_native();
    v119 = v21;
    if ((v53 & 1) == 0)
    {
      sub_22BD8F3C8();
      v19 = v97;
    }

    v54 = *(v19 + 16);
    v55 = v54 + 1;
    if (v54 >= *(v19 + 24) >> 1)
    {
      sub_22BD8F3C8();
      v19 = v98;
    }

    *(v19 + 16) = v55;
    v56 = v19 + 32;
    v57 = (v19 + 32 + 16 * v54);
    v58 = v119;
    *v57 = v20;
    v57[1] = v58;
    v120 = *v107;
    if (!v120)
    {
      goto LABEL_140;
    }

    if (v54)
    {
      v118 = v19;
      while (1)
      {
        v59 = v55 - 1;
        v60 = (v56 + 16 * (v55 - 1));
        v61 = (v19 + 16 * v55);
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v62 = *(v19 + 32);
          v63 = *(v19 + 40);
          v72 = __OFSUB__(v63, v62);
          v64 = v63 - v62;
          v65 = v72;
LABEL_68:
          if (v65)
          {
            goto LABEL_117;
          }

          v77 = *v61;
          v76 = v61[1];
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_120;
          }

          v81 = v60[1];
          v82 = v81 - *v60;
          if (__OFSUB__(v81, *v60))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v79, v82))
          {
            goto LABEL_125;
          }

          if (v79 + v82 >= v64)
          {
            if (v64 < v82)
            {
              v59 = v55 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v55 < 2)
        {
          goto LABEL_119;
        }

        v84 = *v61;
        v83 = v61[1];
        v72 = __OFSUB__(v83, v84);
        v79 = v83 - v84;
        v80 = v72;
LABEL_83:
        if (v80)
        {
          goto LABEL_122;
        }

        v86 = *v60;
        v85 = v60[1];
        v72 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v72)
        {
          goto LABEL_124;
        }

        if (v87 < v79)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v59 - 1 >= v55)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*v116)
        {
          goto LABEL_137;
        }

        v91 = (v56 + 16 * (v59 - 1));
        v92 = *v91;
        v93 = v56;
        v94 = v59;
        v19 = v56 + 16 * v59;
        v4 = *(v19 + 8);
        v95 = v117;
        sub_22BC04D08(*v116 + *(v114 + 72) * *v91, *v116 + *(v114 + 72) * *v19, *v116 + *(v114 + 72) * v4, v120);
        v117 = v95;
        if (v95)
        {
          goto LABEL_99;
        }

        if (v4 < v92)
        {
          goto LABEL_112;
        }

        v96 = *(v118 + 2);
        if (v94 > v96)
        {
          goto LABEL_113;
        }

        *v91 = v92;
        v91[1] = v4;
        if (v94 >= v96)
        {
          goto LABEL_114;
        }

        v55 = v96 - 1;
        sub_22BDB12C0((v19 + 16), v96 - 1 - v94, v19);
        v19 = v118;
        *(v118 + 2) = v96 - 1;
        v56 = v93;
        if (v96 <= 2)
        {
          goto LABEL_97;
        }
      }

      v66 = v56 + 16 * v55;
      v67 = *(v66 - 64);
      v68 = *(v66 - 56);
      v72 = __OFSUB__(v68, v67);
      v69 = v68 - v67;
      if (v72)
      {
        goto LABEL_115;
      }

      v71 = *(v66 - 48);
      v70 = *(v66 - 40);
      v72 = __OFSUB__(v70, v71);
      v64 = v70 - v71;
      v65 = v72;
      if (v72)
      {
        goto LABEL_116;
      }

      v73 = v61[1];
      v74 = v73 - *v61;
      if (__OFSUB__(v73, *v61))
      {
        goto LABEL_118;
      }

      v72 = __OFADD__(v64, v74);
      v75 = v64 + v74;
      if (v72)
      {
        goto LABEL_121;
      }

      if (v75 >= v69)
      {
        v89 = *v60;
        v88 = v60[1];
        v72 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v72)
        {
          goto LABEL_129;
        }

        if (v64 < v90)
        {
          v59 = v55 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v116[1];
    v18 = v119;
    if (v119 >= v17)
    {
      goto LABEL_101;
    }
  }

  v42 = v20 + v106;
  if (__OFADD__(v20, v106))
  {
    goto LABEL_133;
  }

  if (v42 >= v41)
  {
    v42 = v116[1];
  }

  if (v42 < v20)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v21 == v42)
  {
    goto LABEL_47;
  }

  v118 = v19;
  v43 = *(v114 + 72);
  v44 = *v116 + v43 * (v21 - 1);
  v4 = -v43;
  v45 = v20 - v21;
  v120 = *v116;
  v109 = v43;
  v110 = v42;
  v46 = v120 + v21 * v43;
LABEL_40:
  v119 = v21;
  v112 = v46;
  v113 = v45;
  v115 = v44;
  v47 = v44;
  while (1)
  {
    v48 = v123;
    sub_22BBBEE60(v46, v123, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v49 = v124;
    sub_22BBBEE60(v47, v124, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v50 = *v48;
    v51 = *v49;
    sub_22BB58728(v49, &qword_27D8E2AF0, &qword_22BDBD1D0);
    sub_22BB58728(v48, &qword_27D8E2AF0, &qword_22BDBD1D0);
    if (v50 >= v51)
    {
LABEL_45:
      v21 = v119 + 1;
      v44 = v115 + v109;
      v45 = v113 - 1;
      v46 = v112 + v109;
      if (v119 + 1 == v110)
      {
        v21 = v110;
        v19 = v118;
        v20 = v108;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v120)
    {
      break;
    }

    v52 = v121;
    sub_22BBDB5D0(v46, v121, &qword_27D8E2AF0, &qword_22BDBD1D0);
    swift_arrayInitWithTakeFrontToBack();
    sub_22BBDB5D0(v52, v47, &qword_27D8E2AF0, &qword_22BDBD1D0);
    v47 += v4;
    v46 += v4;
    v40 = __CFADD__(v45++, 1);
    if (v40)
    {
      goto LABEL_45;
    }
  }

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
}

uint64_t sub_22BC04D08(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v59 = sub_22BBE6DE0(&qword_27D8E2AF0, &qword_22BDBD1D0);
  v8 = MEMORY[0x28223BE20](v59);
  v60 = (&v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v61 = (&v52 - v11);
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v65 = a1;
  v64 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_22BD274B8(a2, v16 / v13, a4);
    v34 = a4 + v19 * v13;
    v35 = -v13;
    v36 = v34;
    v55 = -v13;
    v56 = a4;
    v62 = a1;
LABEL_36:
    v37 = a2 + v35;
    v53 = v36;
    v57 = a2 + v35;
    while (1)
    {
      if (v34 <= a4)
      {
        v65 = a2;
        v63 = v36;
        goto LABEL_58;
      }

      if (a2 <= a1)
      {
        break;
      }

      v54 = v36;
      v38 = a2;
      v39 = a3 + v35;
      v40 = v34 + v35;
      v41 = v61;
      v42 = v37;
      v43 = v34;
      sub_22BBBEE60(v34 + v35, v61, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v44 = v42;
      v45 = v60;
      sub_22BBBEE60(v44, v60, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v58 = *v41;
      v46 = v45;
      v47 = *v45;
      sub_22BB58728(v46, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v41, &qword_27D8E2AF0, &qword_22BDBD1D0);
      if (v58 < v47)
      {
        if (a3 < v38 || v39 >= v38)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v54;
          v35 = v55;
          a4 = v56;
          a3 = v39;
          a1 = v62;
          v34 = v43;
        }

        else
        {
          v35 = v55;
          v36 = v54;
          v15 = a3 == v38;
          a4 = v56;
          v50 = v57;
          a2 = v57;
          a3 = v39;
          a1 = v62;
          v34 = v43;
          if (!v15)
          {
            v51 = v54;
            swift_arrayInitWithTakeBackToFront();
            v34 = v43;
            a2 = v50;
            v36 = v51;
          }
        }

        goto LABEL_36;
      }

      v48 = a3 < v43 || v39 >= v43;
      a2 = v38;
      if (v48)
      {
        swift_arrayInitWithTakeFrontToBack();
        a3 += v35;
        v34 = v40;
        v36 = v40;
        v35 = v55;
        a4 = v56;
        a1 = v62;
        v37 = v57;
      }

      else
      {
        v36 = v40;
        v15 = v43 == a3;
        a3 += v35;
        v34 = v40;
        v35 = v55;
        a4 = v56;
        a1 = v62;
        v37 = v57;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v39;
          v34 = v40;
          v36 = v40;
        }
      }
    }

    v65 = a2;
    v63 = v53;
  }

  else
  {
    sub_22BD274B8(a1, v14 / v13, a4);
    v57 = a3;
    v58 = a4 + v18 * v13;
    v63 = v58;
    v20 = a1;
    while (a4 < v58 && a2 < a3)
    {
      v62 = v20;
      v22 = v13;
      v23 = a2;
      v24 = a2;
      v25 = v61;
      sub_22BBBEE60(v23, v61, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v26 = a4;
      v27 = a4;
      v28 = v60;
      sub_22BBBEE60(v26, v60, &qword_27D8E2AF0, &qword_22BDBD1D0);
      v29 = *v25;
      v30 = *v28;
      sub_22BB58728(v28, &qword_27D8E2AF0, &qword_22BDBD1D0);
      sub_22BB58728(v25, &qword_27D8E2AF0, &qword_22BDBD1D0);
      if (v29 >= v30)
      {
        v13 = v22;
        a4 = v27 + v22;
        v31 = v62;
        if (v62 < v27 || v62 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v24;
        }

        else
        {
          a2 = v24;
          if (v62 != v27)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v64 = v27 + v22;
      }

      else
      {
        v13 = v22;
        a2 = v24 + v22;
        v31 = v62;
        v32 = v62 < v24 || v62 >= a2;
        a4 = v27;
        if (v32)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v62 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v20 = v31 + v13;
      v65 = v20;
      a3 = v57;
    }
  }

LABEL_58:
  sub_22BCD3BB8(&v65, &v64, &v63);
  return 1;
}

uint64_t sub_22BC051C4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22BB30F68();
  v4(v3);
  sub_22BB30ED8();
  v5 = sub_22BB31F54();
  v6(v5);
  return a2;
}

uint64_t type metadata accessor for SearchToolExecutorError(uint64_t a1)
{
  result = qword_27D8E2B68;
  if (!qword_27D8E2B68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BC05284(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_22BC052C8(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_22BC05344(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BC0539C(uint64_t a1)
{
  result = sub_22BDB5414();
  if (v2 <= 0x3F)
  {
    result = sub_22BDBA634();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22BC05410(uint64_t a1)
{
  sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    sub_22BC06830(319, qword_28142D9D8, type metadata accessor for ResultResponse);
    if (v2 <= 0x3F)
    {
      sub_22BC06830(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext);
      if (v3 <= 0x3F)
      {
        sub_22BC06830(319, &qword_281428798, sub_22BBEB528);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22BC05548(uint64_t a1)
{
  sub_22BDBA594();
  if (v1 <= 0x3F)
  {
    sub_22BC05698();
    if (v2 <= 0x3F)
    {
      sub_22BC06830(319, qword_28142D9D8, type metadata accessor for ResultResponse);
      if (v3 <= 0x3F)
      {
        sub_22BC06830(319, qword_28142A3C0, type metadata accessor for TypedValueUndoContext);
        if (v4 <= 0x3F)
        {
          sub_22BC06830(319, &qword_281428798, sub_22BBEB528);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22BC05698()
{
  if (!qword_2814288C8)
  {
    v0 = sub_22BDBB254();
    if (!v1)
    {
      atomic_store(v0, &qword_2814288C8);
    }
  }
}

void sub_22BC056F0(uint64_t a1)
{
  sub_22BDB8E14();
  if (v1 <= 0x3F)
  {
    sub_22BDBA014();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        type metadata accessor for InvocationOptions(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for HydrationConfiguration(319);
          if (v5 <= 0x3F)
          {
            sub_22BC06770();
            if (v6 <= 0x3F)
            {
              sub_22BDB9774();
              if (v7 <= 0x3F)
              {
                sub_22BC067CC(319);
                if (v8 <= 0x3F)
                {
                  sub_22BC06830(319, &qword_27D8E2D10, type metadata accessor for SearchToolResolver);
                  if (v9 <= 0x3F)
                  {
                    sub_22BDB9C14();
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

uint64_t sub_22BC05854(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v70 = sub_22BDB8E14();
  v81 = *(v70 - 8);
  v4 = *(v81 + 84);
  v68 = sub_22BDBA014();
  v80 = *(v68 - 8);
  v5 = *(v80 + 84);
  v71 = v4;
  v69 = v5;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v66 = *(a3 + 16);
  v78 = *(v66 - 8);
  v67 = *(v78 + 84);
  if (v67 <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(v78 + 84);
  }

  v60 = sub_22BDB8274();
  v75 = *(v60 - 8);
  v77 = *(v75 + 84);
  if (v77)
  {
    v7 = v77 - 1;
  }

  else
  {
    v7 = 0;
  }

  v61 = sub_22BDBA234();
  v74 = *(v61 - 8);
  v76 = *(v74 + 84);
  v8 = v76 - 1;
  if (!v76)
  {
    v8 = 0;
  }

  if (v7 <= v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = v7;
  }

  v64 = v7;
  v65 = v9;
  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v63 = v10;
  if (v10 <= v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = v10;
  }

  v59 = sub_22BDB89A4();
  v73 = *(v59 - 8);
  v12 = *(v73 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  v62 = v13;
  if (v13 <= v11)
  {
    v14 = v11;
  }

  else
  {
    v14 = v13;
  }

  v57 = sub_22BDB9774();
  v15 = *(v57 - 8);
  v58 = *(v15 + 84);
  if (v14 <= v58)
  {
    v14 = *(v15 + 84);
  }

  v16 = sub_22BDB9C14();
  result = a2;
  v18 = *(v16 - 8);
  v19 = *(v18 + 84);
  if (v14 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v14;
  }

  v21 = *(v80 + 80);
  v22 = *(v80 + 64);
  v23 = *(v78 + 80);
  v24 = *(v78 + 64);
  v25 = *(v74 + 80);
  v26 = *(v73 + 80);
  v27 = *(v15 + 80);
  v28 = *(v15 + 64);
  v29 = *(v18 + 80);
  if (v20 <= 0x7FFFFFFF)
  {
    v30 = 0x7FFFFFFF;
  }

  else
  {
    v30 = v20;
  }

  if (v77)
  {
    v31 = *(v75 + 64);
  }

  else
  {
    v31 = *(v75 + 64) + 1;
  }

  if (v76)
  {
    v32 = *(v74 + 64);
  }

  else
  {
    v32 = *(v74 + 64) + 1;
  }

  if (v12)
  {
    v33 = *(v73 + 64);
  }

  else
  {
    v33 = *(v73 + 64) + 1;
  }

  if (!a2)
  {
    return result;
  }

  v34 = v12;
  v35 = *(v81 + 64) + v21;
  v36 = *(v75 + 80) & 0xF8 | v25 | 7;
  v37 = v31 + 7;
  v38 = v32 + ((v25 + 16 + ((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v25);
  v39 = v33 + 7;
  v40 = v27 + 40;
  v41 = v28 + 7;
  v42 = v29 + 8;
  v43 = a1;
  if (a2 > v30)
  {
    v44 = ((v42 + ((((v41 + ((v40 + ((v39 + ((v38 + v26 + ((v24 + v36 + ((v22 + (v35 & ~v21) + v23) & ~v23)) & ~v36)) & ~v26)) & 0xFFFFFFFFFFFFFFF8)) & ~v27)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29) + *(*(v16 - 8) + 64);
    v45 = 8 * v44;
    if (v44 > 3)
    {
      goto LABEL_45;
    }

    v47 = ((a2 - v30 + ~(-1 << v45)) >> v45) + 1;
    if (HIWORD(v47))
    {
      v46 = *(a1 + v44);
      if (v46)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if (v47 <= 0xFF)
      {
        if (v47 < 2)
        {
          goto LABEL_62;
        }

LABEL_45:
        v46 = *(a1 + v44);
        if (!*(a1 + v44))
        {
          goto LABEL_62;
        }

LABEL_52:
        v48 = (v46 - 1) << v45;
        if (v44 > 3)
        {
          v48 = 0;
        }

        if (v44)
        {
          if (v44 <= 3)
          {
            v49 = v44;
          }

          else
          {
            v49 = 4;
          }

          switch(v49)
          {
            case 2:
              v50 = *a1;
              break;
            case 3:
              v50 = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              v50 = *a1;
              break;
            default:
              v50 = *a1;
              break;
          }
        }

        else
        {
          v50 = 0;
        }

        return v30 + (v50 | v48) + 1;
      }

      v46 = *(a1 + v44);
      if (*(a1 + v44))
      {
        goto LABEL_52;
      }
    }
  }

LABEL_62:
  if (v71 == v30)
  {
    v19 = v71;
    v16 = v70;
    goto LABEL_68;
  }

  v43 = ((a1 + v35) & ~v21);
  if (v69 == v30)
  {
    v19 = v69;
    v16 = v68;
    goto LABEL_68;
  }

  v43 = ((v43 + v22 + v23) & ~v23);
  if (v67 == v30)
  {
    v19 = v67;
    v16 = v66;
    goto LABEL_68;
  }

  v51 = (v43 + v24 + v36) & ~v36;
  if (v65 == v30)
  {
    if (v64 == v63)
    {
      if (v77 >= 2)
      {
        v52 = v77;
        v53 = v60;
        goto LABEL_89;
      }

      return 0;
    }

    v51 = (v25 + 16 + ((((v37 + v51) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & ~v25;
    v52 = v76;
    v53 = v61;
LABEL_89:
    v56 = sub_22BB3AA28(v51, v52, v53);
    if (v56 >= 2)
    {
      return v56 - 1;
    }

    else
    {
      return 0;
    }
  }

  v51 = (v51 + v26 + v38) & ~v26;
  if (v62 == v30)
  {
    if (v34 < 2)
    {
      return 0;
    }

    v52 = v34;
    v53 = v59;
    goto LABEL_89;
  }

  v54 = (v39 + v51) & 0xFFFFFFFFFFFFFFF8;
  if ((v20 & 0x80000000) != 0)
  {
    v43 = ((v40 + v54) & ~v27);
    if (v58 == v30)
    {
      v19 = v58;
      v16 = v57;
    }

    else
    {
      v43 = ((v42 + ((((v43 + v41) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v29);
    }

LABEL_68:

    return sub_22BB3AA28(v43, v19, v16);
  }

  v55 = *(v54 + 24);
  if (v55 >= 0xFFFFFFFF)
  {
    LODWORD(v55) = -1;
  }

  return (v55 + 1);
}

void sub_22BC05F2C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v80 = sub_22BDB8E14();
  v90 = *(v80 - 8);
  v5 = *(v90 + 84);
  v78 = sub_22BDBA014();
  v89 = *(v78 - 8);
  v6 = *(v89 + 84);
  v81 = v5;
  v79 = v6;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v76 = *(a4 + 16);
  v88 = *(v76 - 8);
  v77 = *(v88 + 84);
  if (v77 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v88 + 84);
  }

  v70 = sub_22BDB8274();
  v83 = *(v70 - 8);
  v87 = v83;
  v8 = *(v83 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v68 = sub_22BDBA234();
  v82 = *(v68 - 8);
  v10 = *(v82 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v72 = v9;
  if (v9 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  if (v12 <= 0x7FFFFFFE)
  {
    v13 = 2147483646;
  }

  else
  {
    v13 = v12;
  }

  v74 = v13;
  v75 = v12;
  if (v13 > v7)
  {
    v7 = v13;
  }

  v71 = sub_22BDB89A4();
  v86 = *(v71 - 8);
  v14 = *(v86 + 84);
  v15 = v14 - 1;
  if (!v14)
  {
    v15 = 0;
  }

  v73 = v15;
  if (v15 <= v7)
  {
    v16 = v7;
  }

  else
  {
    v16 = v15;
  }

  v65 = sub_22BDB9774();
  v85 = *(v65 - 8);
  v66 = *(v85 + 84);
  if (v16 <= v66)
  {
    v16 = *(v85 + 84);
  }

  v17 = sub_22BDB9C14();
  v95 = 0;
  v18 = *(v17 - 8);
  v19 = *(v18 + 84);
  if (v16 <= v19)
  {
    v20 = *(v18 + 84);
  }

  else
  {
    v20 = v16;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  v69 = v8;
  if (v8)
  {
    v22 = *(v83 + 64);
  }

  else
  {
    v22 = *(v83 + 64) + 1;
  }

  v67 = v10;
  v23 = *(v82 + 64);
  if (!v10)
  {
    ++v23;
  }

  v84 = v14;
  v24 = v14 == 0;
  v25 = *(v89 + 80);
  v26 = *(v90 + 64) + v25;
  v27 = *(v89 + 64);
  v28 = *(v88 + 80);
  v29 = *(v88 + 64);
  v30 = *(v82 + 80);
  v31 = *(v87 + 80) & 0xF8 | v30 | 7;
  v32 = v22 + 7;
  v33 = (((v22 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = v30 + 16;
  v35 = ((v30 + 16 + v33) & ~v30) + v23;
  v36 = *(v86 + 80);
  if (v24)
  {
    v37 = *(v86 + 64) + 1;
  }

  else
  {
    v37 = *(v86 + 64);
  }

  v38 = v37 + 7;
  v39 = *(v85 + 80);
  v40 = v39 + 40;
  v41 = *(v85 + 64) + 7;
  v42 = *(v18 + 80);
  v43 = ((v42 + 8 + ((((v41 + ((v39 + 40 + ((v37 + 7 + ((v35 + v36 + ((v29 + v31 + ((v27 + (v26 & ~v25) + v28) & ~v28)) & ~v31)) & ~v36)) & 0xFFFFFFFFFFFFFFF8)) & ~v39)) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v42) + *(*(v17 - 8) + 64);
  v44 = 8 * v43;
  if (a3 > v21)
  {
    if (v43 <= 3)
    {
      v46 = ((a3 - v21 + ~(-1 << v44)) >> v44) + 1;
      if (HIWORD(v46))
      {
        v45 = 4;
      }

      else
      {
        if (v46 < 0x100)
        {
          v47 = 1;
        }

        else
        {
          v47 = 2;
        }

        if (v46 >= 2)
        {
          v45 = v47;
        }

        else
        {
          v45 = 0;
        }
      }
    }

    else
    {
      v45 = 1;
    }

    v95 = v45;
  }

  if (v21 < a2)
  {
    v48 = ~v21 + a2;
    if (v43 < 4)
    {
      v50 = (v48 >> v44) + 1;
      if (v43)
      {
        v55 = v48 & ~(-1 << v44);
        bzero(a1, v43);
        if (v43 == 3)
        {
          *a1 = v55;
          v58 = HIWORD(v55);
          v49 = a1;
          a1[2] = v58;
        }

        else if (v43 == 2)
        {
          *a1 = v55;
          v49 = a1;
        }

        else
        {
          v49 = a1;
          *a1 = v48;
        }
      }

      else
      {
        v49 = a1;
      }
    }

    else
    {
      v49 = a1;
      bzero(a1, v43);
      *a1 = v48;
      v50 = 1;
    }

    switch(v95)
    {
      case 1:
        v49[v43] = v50;
        break;
      case 2:
        *&v49[v43] = v50;
        break;
      case 3:
        goto LABEL_107;
      case 4:
        *&v49[v43] = v50;
        break;
      default:
        return;
    }

    return;
  }

  v91 = v17;
  v93 = ~v30;
  v51 = ~v25;
  v52 = ~v31;
  v53 = ~v39;
  v54 = a1;
  switch(v95)
  {
    case 1:
      a1[v43] = 0;
      goto LABEL_63;
    case 2:
      *&a1[v43] = 0;
      goto LABEL_63;
    case 3:
LABEL_107:
      __break(1u);
      return;
    case 4:
      *&a1[v43] = 0;
      goto LABEL_63;
    default:
LABEL_63:
      if (!a2)
      {
        return;
      }

      if (v81 == v21)
      {
        v56 = a2;
        v19 = v81;
        v57 = v80;
LABEL_71:

        sub_22BB336D0(v54, v56, v19, v57);
        return;
      }

      v54 = (&a1[v26] & v51);
      if (v79 == v21)
      {
        v56 = a2;
        v19 = v79;
        v57 = v78;
        goto LABEL_71;
      }

      v54 = (&v54[v27 + v28] & ~v28);
      if (v77 == v21)
      {
        v56 = a2;
        v19 = v77;
        v57 = v76;
        goto LABEL_71;
      }

      v59 = &v54[v29 + v31] & v52;
      if (v75 != v21)
      {
        v54 = ((v59 + v36 + v35) & ~v36);
        if (v73 == v21)
        {
          v56 = a2 + 1;
          v19 = v84;
          v57 = v71;
        }

        else
        {
          v64 = &v54[v38] & 0xFFFFFFFFFFFFFFF8;
          if ((v20 & 0x80000000) == 0)
          {
            if ((a2 & 0x80000000) != 0)
            {
              *(v64 + 8) = 0u;
              *(v64 + 24) = 0u;
              *v64 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v64 + 24) = a2 - 1;
            }

            return;
          }

          v54 = ((v40 + v64) & v53);
          if (v66 == v21)
          {
            v56 = a2;
            v19 = v66;
            v57 = v65;
          }

          else
          {
            v54 = ((v42 + 8 + (((&v54[v41] & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)) & ~v42);
            v56 = a2;
            v57 = v91;
          }
        }

        goto LABEL_71;
      }

      if (v74 >= a2)
      {
        if (v72 == v74)
        {
          v56 = a2 + 1;
          v54 = (&v54[v29 + v31] & v52);
          v19 = v69;
          v57 = v70;
        }

        else
        {
          v54 = ((v34 + ((((v32 + v59) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v93);
          v56 = a2 + 1;
          v19 = v67;
          v57 = v68;
        }

        goto LABEL_71;
      }

      v60 = ((v34 + (((v32 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v93) + v23;
      if (v60 <= 3)
      {
        v61 = ~(-1 << (8 * (((v34 + (((v32 & 0xF8) + 23) & 0xF8)) & v93) + v23)));
      }

      else
      {
        v61 = -1;
      }

      if (v60)
      {
        v62 = v61 & (~v74 + a2);
        if (v60 <= 3)
        {
          v63 = ((v34 + (((v32 & 0xFFFFFFF8) + 23) & 0xFFFFFFF8)) & v93) + v23;
        }

        else
        {
          v63 = 4;
        }

        bzero((&v54[v29 + v31] & v52), v60);
        switch(v63)
        {
          case 2:
            *v59 = v62;
            break;
          case 3:
            *v59 = v62;
            *(v59 + 2) = BYTE2(v62);
            break;
          case 4:
            *v59 = v62;
            break;
          default:
            *v59 = v62;
            break;
        }
      }

      return;
  }
}

unint64_t sub_22BC06770()
{
  result = qword_27D8E2CF8;
  if (!qword_27D8E2CF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27D8E2CF8);
  }

  return result;
}

void sub_22BC067CC(uint64_t a1)
{
  if (!qword_27D8E2D00)
  {
    sub_22BBEB2E0(&qword_27D8E2D08, qword_22BDBD2F8);
    v1 = sub_22BDBB254();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8E2D00);
    }
  }
}

void sub_22BC06830(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_22BB358DC();
    v4 = sub_22BDBB254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void *sub_22BC06880(uint64_t a1)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB39070();
  v1[2] = 0xD000000000000028;
  v1[3] = 0x800000022BDD15D0;
  v1[4] = a1;
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v6, v7, v8, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v1;

  sub_22BCA20FC(0, 0, v2, &unk_22BDBD390, v10);

  return v1;
}

uint64_t sub_22BC06994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_22BDB77D4();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BC06A54, 0, 0);
}

uint64_t sub_22BC06A54()
{
  sub_22BB2F0D4();
  v0[6] = *(v0[2] + 32);
  sub_22BB32A48(MEMORY[0x277D37018]);
  v4 = v1;
  v2 = swift_task_alloc();
  v0[7] = v2;
  *v2 = v0;
  v2[1] = sub_22BC06AF4;

  return v4();
}

void sub_22BC07018()
{
  sub_22BB30F94();
  v4 = v3;
  v6 = v5;
  v7 = sub_22BBE6DE0(&qword_27D8E2938, &unk_22BDBCFB0);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB39070();
  v215 = sub_22BDB77D4();
  sub_22BB30444();
  v214 = v9;
  MEMORY[0x28223BE20](v10);
  sub_22BB305A8();
  sub_22BB30B8C(v11);
  v233 = sub_22BDB5FC4();
  sub_22BB30444();
  v230 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30560();
  v232 = v14;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  v231 = v16;
  sub_22BB2F120();
  v17 = sub_22BDBA514();
  sub_22BB30444();
  v220 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v214 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  sub_22BB2F384();
  v227 = v23;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v24);
  sub_22BB2F384();
  v224 = v25;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v26);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v27);
  sub_22BB2F384();
  v226 = v28;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v29);
  v31 = (&v214 - v30);
  v32 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  v33 = sub_22BB2F0C8(v32);
  MEMORY[0x28223BE20](v33);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v34);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB353B8();
  MEMORY[0x28223BE20](v37);
  sub_22BB38524();
  MEMORY[0x28223BE20](v38);
  v40 = &v214 - v39;
  v41 = v4;
  sub_22BD80E80(0x656475746974616CLL, 0xE800000000000000, v4, v235);
  v221 = v17;
  v234 = v22;
  if (!v236)
  {
    sub_22BB58780(v235, &qword_27D8E2940, &unk_22BDBCFC0);
    v228 = 0;
    v229 = 1;
    goto LABEL_12;
  }

  v42 = sub_22BB37F58();
  sub_22BB382E8(v42, v43);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v44 = sub_22BDBA594();
  if (!swift_dynamicCast())
  {
    v229 = 1;
    sub_22BB30B28();
    sub_22BB336D0(v55, v56, v57, v44);
    sub_22BB58780(v40, &qword_27D8E2668, &unk_22BDBCCD0);
    v228 = 0;
    goto LABEL_11;
  }

  sub_22BB331C8();
  sub_22BB336D0(v45, v46, v47, v44);
  sub_22BB30418();
  v49 = v48;
  if ((*(v50 + 88))(v40, v44) != *MEMORY[0x277D72A58])
  {
    (*(v49 + 8))(v40, v44);
LABEL_10:
    v228 = 0;
    v229 = 1;
    goto LABEL_11;
  }

  (*(v49 + 96))(v40, v44);
  swift_projectBox();
  sub_22BB71F10();
  sub_22BB71FBC();
  v51 = v221;
  v52(v31);
  sub_22BB3CF10();
  if (v53(v31, v51) != *MEMORY[0x277D729A8])
  {
    sub_22BBADBFC();
    v58(v31, v51);

    goto LABEL_10;
  }

  sub_22BB3E298();
  v54(v31, v51);
  v228 = *v31;

  v229 = 0;
LABEL_11:
  v22 = v234;
LABEL_12:
  v59 = v41;
  sub_22BD80E80(0x64757469676E6F6CLL, 0xE900000000000065, v41, v235);
  v60 = v230;
  if (!v236)
  {
    sub_22BB58780(v235, &qword_27D8E2940, &unk_22BDBCFC0);
    v225 = 0;
    LODWORD(v226) = 1;
    v78 = v233;
    v65 = v231;
    goto LABEL_23;
  }

  v61 = sub_22BB37F58();
  sub_22BB382E8(v61, v62);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v63 = sub_22BDBA594();
  v64 = swift_dynamicCast();
  v65 = v231;
  if (!v64)
  {
    LODWORD(v226) = 1;
    sub_22BB30B28();
    sub_22BB336D0(v79, v80, v81, v63);
    sub_22BB58780(v2, &qword_27D8E2668, &unk_22BDBCCD0);
    v225 = 0;
    goto LABEL_22;
  }

  sub_22BB331C8();
  sub_22BB336D0(v66, v67, v68, v63);
  sub_22BB30418();
  v70 = v69;
  if ((*(v71 + 88))(v2, v63) != *MEMORY[0x277D72A58])
  {
    (*(v70 + 8))(v2, v63);
LABEL_21:
    v225 = 0;
    LODWORD(v226) = 1;
    goto LABEL_22;
  }

  (*(v70 + 96))(v2, v63);
  swift_projectBox();
  sub_22BB71F10();
  sub_22BB3DE24();
  v72 = v226;
  v73(v226);
  sub_22BB97BB4();
  v74 = sub_22BB34E90();
  if (v75(v74) != *MEMORY[0x277D729A8])
  {
    v82 = sub_22BB34E90();
    v83(v82);

    goto LABEL_21;
  }

  v76 = sub_22BB34E90();
  v77(v76);
  v225 = *v72;

  LODWORD(v226) = 0;
LABEL_22:
  v78 = v233;
  v22 = v234;
  v59 = v41;
LABEL_23:
  sub_22BDB5F94();
  sub_22BD80E80(0x6165536C61636F6CLL, 0xEB00000000686372, v59, v235);
  v231 = v6;
  v84 = v224;
  v222 = v1;
  if (!v236)
  {
    sub_22BB58780(v235, &qword_27D8E2940, &unk_22BDBCFC0);
LABEL_31:
    v94 = v227;
    v95 = v223;
    goto LABEL_32;
  }

  v85 = sub_22BB37F58();
  sub_22BB69088(v85, v86);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v87 = sub_22BDBA594();
  if (!swift_dynamicCast())
  {
    sub_22BB32FA4(v237);
    sub_22BB30B28();
    sub_22BB336D0(v105, v106, v107, v87);
    sub_22BB58780(v0, &qword_27D8E2668, &unk_22BDBCCD0);
    v22 = v234;
    goto LABEL_31;
  }

  sub_22BB331C8();
  sub_22BB336D0(v88, v89, v90, v87);
  sub_22BB30418();
  v91 = sub_22BB31F54();
  v93 = v92(v91);
  v94 = v227;
  v95 = v223;
  if (v93 != *MEMORY[0x277D72A58])
  {
    sub_22BB32FA4(v237);
    v190 = sub_22BB31F54();
    v191(v190);
    v22 = v234;
    goto LABEL_32;
  }

  v96 = sub_22BB31F54();
  v97(v96);
  swift_projectBox();
  sub_22BB71F10();
  sub_22BB3B2D0();
  v98 = v217;
  v99(v217);
  sub_22BB314E0();
  v100 = sub_22BB52D78();
  if (v101(v100) != *MEMORY[0x277D72988])
  {
    sub_22BB32FA4(v237);
    sub_22BBC7F4C();
    v196 = sub_22BB52D78();
    v197(v196);

    v22 = v234;
    goto LABEL_66;
  }

  sub_22BB8DC88();
  v102 = sub_22BB52D78();
  v103(v102);
  v104 = *v98;

  v22 = v234;
  if (v104)
  {
    sub_22BB32FA4(v237);
LABEL_66:
    v78 = v233;
    goto LABEL_32;
  }

  sub_22BB33404();
  sub_22BDB63F4();
  v200 = sub_22BDB77C4();
  v201 = sub_22BDBB104();
  v202 = os_log_type_enabled(v200, v201);
  v78 = v233;
  if (v202)
  {
    v203 = swift_slowAlloc();
    *v203 = 0;
    _os_log_impl(&dword_22BB2C000, v200, v201, "", v203, 2u);
    v22 = v234;
    sub_22BB30AF0();
  }

  (*(v214 + 8))(v216, v215);
  v204 = v232;
  sub_22BDB5FA4();
  sub_22BD9A968(v204, v205, v206, v207, v208, v209, v210, v211, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
  sub_22BB721F0();
  v212 = sub_22BB31B54();
  v213(v212);
  sub_22BB32FA4(v237);
LABEL_32:
  sub_22BD80E80(0x65536C61626F6C67, 0xEC00000068637261, v59, v235);
  if (!v236)
  {
    v135 = &qword_27D8E2940;
    v136 = &unk_22BDBCFC0;
    v137 = v235;
LABEL_41:
    sub_22BB58780(v137, v135, v136);
    goto LABEL_42;
  }

  v108 = sub_22BB37F58();
  sub_22BB69088(v108, v109);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v110 = sub_22BDBA594();
  if (!sub_22BB6C6A0(v95, v235))
  {
    sub_22BB32FA4(v237);
    sub_22BB30B28();
    sub_22BB336D0(v138, v139, v140, v110);
    v135 = &qword_27D8E2668;
    v136 = &unk_22BDBCCD0;
    v137 = v95;
    goto LABEL_41;
  }

  sub_22BB52D68();
  sub_22BB336D0(v111, v112, v113, v114);
  sub_22BB30418();
  v115 = sub_22BB3182C();
  if (v116(v115) == *MEMORY[0x277D72A58])
  {
    v117 = sub_22BB3182C();
    v118(v117);
    swift_projectBox();
    sub_22BB71F10();
    sub_22BB3B2D0();
    v119(v84);
    sub_22BB314E0();
    v120 = sub_22BB7031C();
    if (v121(v120) == *MEMORY[0x277D72988])
    {
      sub_22BB8DC88();
      v122 = sub_22BB7031C();
      v123(v122);
      v124 = *v84;

      if ((v124 & 1) == 0)
      {
        v125 = v232;
        sub_22BDB5FB4();
        sub_22BD9A968(v125, v126, v127, v128, v129, v130, v131, v132, v214, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225);
        sub_22BB721F0();
        v133 = sub_22BB31B54();
        v134(v133);
      }

      sub_22BB32FA4(v237);
    }

    else
    {
      sub_22BB32FA4(v237);
      sub_22BBC7F4C();
      v198 = sub_22BB7031C();
      v199(v198);
    }
  }

  else
  {
    sub_22BB32FA4(v237);
    v192 = sub_22BB3182C();
    v193(v192);
  }

LABEL_42:
  sub_22BD80E80(0xD000000000000015, 0x800000022BDD1750, v59, v235);
  if (!v236)
  {
    v157 = &qword_27D8E2940;
    v158 = &unk_22BDBCFC0;
    v159 = v235;
LABEL_50:
    sub_22BB58780(v159, v157, v158);
    goto LABEL_51;
  }

  v141 = sub_22BB37F58();
  sub_22BB382E8(v141, v142);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v143 = sub_22BDBA594();
  v144 = v218;
  if (!sub_22BB6C6A0(v218, v235))
  {
    sub_22BB30B28();
    sub_22BB336D0(v160, v161, v162, v143);
    v157 = &qword_27D8E2668;
    v158 = &unk_22BDBCCD0;
    v159 = v144;
    goto LABEL_50;
  }

  sub_22BB52D68();
  sub_22BB336D0(v145, v146, v147, v148);
  sub_22BB30418();
  v150 = v149;
  if ((*(v151 + 88))(v144, v143) == *MEMORY[0x277D72A58])
  {
    (*(v150 + 96))(v144, v143);
    swift_projectBox();
    sub_22BB71F10();
    sub_22BB3B2D0();
    v152(v94);
    sub_22BB314E0();
    v153 = sub_22BB38518();
    if (v154(v153) == *MEMORY[0x277D72988])
    {
      sub_22BB8DC88();
    }

    else
    {
      sub_22BBC7F4C();
    }

    v155 = sub_22BB38518();
    v156(v155);
  }

  else
  {
    (*(v150 + 8))(v144, v143);
  }

LABEL_51:
  sub_22BD80E80(0xD000000000000012, 0x800000022BDD1770, v59, v235);
  if (!v236)
  {
    v180 = &qword_27D8E2940;
    v181 = &unk_22BDBCFC0;
    v182 = v235;
LABEL_59:
    sub_22BB58780(v182, v180, v181);
    goto LABEL_60;
  }

  v163 = sub_22BB37F58();
  sub_22BB382E8(v163, v164);
  sub_22BBE6DE0(&qword_27D8E27E0, &qword_22BDBCE10);
  v165 = sub_22BDBA594();
  v166 = v219;
  if (!sub_22BB6C6A0(v219, v235))
  {
    sub_22BB30B28();
    sub_22BB336D0(v183, v184, v185, v165);
    v180 = &qword_27D8E2668;
    v181 = &unk_22BDBCCD0;
    v182 = v166;
    goto LABEL_59;
  }

  sub_22BB52D68();
  sub_22BB336D0(v167, v168, v169, v170);
  sub_22BB30418();
  v171 = sub_22BB30428();
  if (v172(v171) == *MEMORY[0x277D72A58])
  {
    v173 = sub_22BB30428();
    v174(v173);
    swift_projectBox();
    v175 = v22;
    v176 = v220;
    sub_22BB3DE24();
    v177 = v221;
    v178(v175);
    sub_22BB97BB4();
    if (v179(v175, v177) == *MEMORY[0x277D72988])
    {
      (*(v176 + 96))(v175, v177);
    }

    else
    {
      (*(v176 + 8))(v175, v177);
    }
  }

  else
  {
    v194 = sub_22BB30428();
    v195(v194);
  }

LABEL_60:
  sub_22BDB4104();
  sub_22BB30B28();
  sub_22BB336D0(v186, v187, v188, v189);
  (*(v60 + 16))(v232, v65, v78);
  sub_22BDB5F74();
  (*(v60 + 8))(v65, v78);
  sub_22BB314EC();
}

uint64_t sub_22BC081F8()
{
  sub_22BB2F0D4();
  v1[65] = v0;
  v1[63] = v2;
  v1[64] = v3;
  v1[62] = v4;
  v5 = sub_22BDB4AD4();
  v1[66] = v5;
  sub_22BB30434(v5);
  v1[67] = v6;
  v1[68] = sub_22BB30ACC();
  v7 = sub_22BDBA634();
  v1[69] = v7;
  sub_22BB30434(v7);
  v1[70] = v8;
  v1[71] = sub_22BB30ACC();
  v9 = sub_22BDBA594();
  v1[72] = v9;
  sub_22BB30434(v9);
  v1[73] = v10;
  v1[74] = sub_22BB31AF0();
  v1[75] = swift_task_alloc();
  v11 = type metadata accessor for ResultResponse(0);
  v1[76] = v11;
  sub_22BB2F0C8(v11);
  v1[77] = sub_22BB30ACC();
  v12 = sub_22BBE6DE0(&qword_27D8E2E00, &qword_22BDBD450);
  sub_22BB2F0C8(v12);
  v1[78] = sub_22BB30ACC();
  v13 = sub_22BBE6DE0(&qword_27D8E2E08, &qword_22BDBD458);
  sub_22BB2F0C8(v13);
  v1[79] = sub_22BB30ACC();
  v14 = sub_22BDBA694();
  v1[80] = v14;
  sub_22BB30434(v14);
  v1[81] = v15;
  v1[82] = sub_22BB30ACC();
  v16 = sub_22BDB5F84();
  v1[83] = v16;
  sub_22BB30434(v16);
  v1[84] = v17;
  v1[85] = sub_22BB30ACC();
  v18 = sub_22BDB4A14();
  v1[86] = v18;
  sub_22BB30434(v18);
  v1[87] = v19;
  v1[88] = sub_22BB31AF0();
  v1[89] = swift_task_alloc();
  v1[90] = swift_task_alloc();
  v20 = sub_22BDBA3A4();
  v1[91] = v20;
  sub_22BB30434(v20);
  v1[92] = v21;
  v1[93] = sub_22BB30ACC();
  v22 = sub_22BDBA4B4();
  v1[94] = v22;
  sub_22BB30434(v22);
  v1[95] = v23;
  v1[96] = sub_22BB30ACC();
  v24 = sub_22BBE6DE0(&qword_27D8E2960, &qword_22BDBCFE0);
  sub_22BB2F0C8(v24);
  v1[97] = sub_22BB30ACC();
  v25 = sub_22BDB77D4();
  v1[98] = v25;
  sub_22BB30434(v25);
  v1[99] = v26;
  v1[100] = sub_22BB31AF0();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v27 = sub_22BDBA514();
  v1[104] = v27;
  sub_22BB30434(v27);
  v1[105] = v28;
  v1[106] = sub_22BB31AF0();
  v1[107] = swift_task_alloc();
  v29 = sub_22BBE6DE0(&qword_27D8E2668, &unk_22BDBCCD0);
  sub_22BB2F0C8(v29);
  v1[108] = sub_22BB31AF0();
  v1[109] = swift_task_alloc();
  v1[110] = swift_task_alloc();
  v1[111] = swift_task_alloc();
  sub_22BB31B20();

  return MEMORY[0x2822009F8](v30, v31, v32);
}