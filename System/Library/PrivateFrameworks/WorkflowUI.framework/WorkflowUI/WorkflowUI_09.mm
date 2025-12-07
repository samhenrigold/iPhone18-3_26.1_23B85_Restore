uint64_t sub_2747DCCC4(char *a1, id *a2, void **a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_274772FC4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    v51 = v10;
    v53 = v5;
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      v55 = v7;
      v12 = *v4;
      v13 = *v6;
      v14 = v12;
      v15 = [v13 actionUUID];
      v16 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v18 = v17;

      v19 = [v14 actionUUID];
      v20 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
      v22 = v21;

      if (v16 == v20 && v18 == v22)
      {

        v25 = v55;
      }

      else
      {
        v24 = sub_2749FDCC4();

        v25 = v55;
        if (v24)
        {
          v26 = v6;
          v27 = v55 == v6++;
          goto LABEL_15;
        }
      }

      v26 = v4;
      v27 = v25 == v4++;
LABEL_15:
      v10 = v51;
      v5 = v53;
      if (!v27)
      {
        *v25 = *v26;
      }

      v7 = (v25 + 1);
    }
  }

  sub_274772FC4(a2, a3 - a2, a4);
  v10 = &v4[v9];
  v49 = v4;
  v56 = v7;
LABEL_19:
  v28 = v6 - 1;
  v29 = v5 - 1;
  for (i = v6; v10 > v4 && v6 > v7; v6 = i)
  {
    v52 = v10;
    v54 = v29;
    v31 = v10 - 1;
    v32 = v28;
    v33 = *v28;
    v34 = *(v10 - 1);
    v35 = v33;
    v36 = [v34 actionUUID];
    v37 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v39 = v38;

    v40 = [v35 actionUUID];
    v41 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v43 = v42;

    if (v37 == v41 && v39 == v43)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_2749FDCC4();
    }

    v7 = v56;
    v10 = v52;
    v28 = v32;
    if (v45)
    {
      v5 = v54;
      v4 = v49;
      v6 = v28;
      if (v54 + 1 != i)
      {
        *v54 = *v28;
        v6 = v28;
      }

      goto LABEL_19;
    }

    v4 = v49;
    if (v52 != v54 + 1)
    {
      *v54 = *v31;
    }

    v29 = v54 - 1;
    v10 = v31;
  }

LABEL_38:
  v46 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v46])
  {
    memmove(v6, v4, 8 * v46);
  }

  return 1;
}

char *sub_2747DD010(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967998, &unk_274A148D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

uint64_t sub_2747DD110(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v28 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v28 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v10 = v8;
    v12 = sub_274797CC0(v7, v6);
    v13 = v9[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_17;
    }

    v16 = v11;
    if (v9[3] >= v15)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969150, &qword_274A14948);
        sub_2749FDA94();
      }
    }

    else
    {
      sub_27493484C(v15, a2 & 1);
      v17 = sub_274797CC0(v7, v6);
      if ((v16 & 1) != (v18 & 1))
      {
        goto LABEL_19;
      }

      v12 = v17;
    }

    v19 = *a3;
    if (v16)
    {
      v20 = *(v19[7] + 8 * v12);

      v21 = v19[7];
      v22 = *(v21 + 8 * v12);
      *(v21 + 8 * v12) = v20;
    }

    else
    {
      v19[(v12 >> 6) + 8] |= 1 << v12;
      v23 = (v19[6] + 16 * v12);
      *v23 = v7;
      v23[1] = v6;
      *(v19[7] + 8 * v12) = v10;
      v24 = v19[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v19[2] = v26;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747DD2E8(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v27 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v27 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(i - 2);
    v7 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_274797CC0(v6, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_17;
    }

    v15 = v10;
    if (v9[3] >= v14)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969140, &qword_274A14938);
        sub_2749FDA94();
      }
    }

    else
    {
      sub_274934874(v14, a2 & 1);
      v16 = sub_274797CC0(v6, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_19;
      }

      v11 = v16;
    }

    v18 = *a3;
    if (v15)
    {
      v19 = *(v18[7] + 8 * v11);

      sub_2747D7128(v8, v19, &qword_28096EE00, 0x277D7C8F8, &qword_2809688B0, sub_2747655A0);
      v21 = v20;

      *(v18[7] + 8 * v11) = v21;
    }

    else
    {
      v18[(v11 >> 6) + 8] |= 1 << v11;
      v22 = (v18[6] + 16 * v11);
      *v22 = v6;
      v22[1] = v7;
      *(v18[7] + 8 * v11) = v8;
      v23 = v18[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v18[2] = v25;
    }

    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_2749FDD54();
  __break(1u);
  return result;
}

uint64_t sub_2747DD4F8(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2747DD858(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v30 = MEMORY[0x277D84FA0];
  sub_2749FD804();
  v27 = v2;
  while (1)
  {
    while (1)
    {
      v4 = sub_2749FD874();
      if (!v4)
      {

        return v3;
      }

      v28 = v4;
      sub_27471CF08(0, &qword_28096EE00, 0x277D7C8F8);
      swift_dynamicCast();
      v5 = [v29 sourceContentAttribution];
      if (v5)
      {
        v6 = v5;
        v7 = [v5 origin];

        if (v7)
        {
          break;
        }
      }

LABEL_14:
    }

    v8 = *v2;
    if ((*v2 & 0xC000000000000001) != 0)
    {

      v9 = v7;
      v10 = sub_2749FD884();

      if (v10)
      {

        goto LABEL_14;
      }
    }

    else if (*(v8 + 16))
    {
      sub_27471CF08(0, &qword_2809679B0, 0x277CFC318);

      v11 = sub_2749FD5F4();
      v12 = ~(-1 << *(v8 + 32));
      while (1)
      {
        v13 = v11 & v12;
        if (((*(v8 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
        {
          break;
        }

        v14 = *(*(v8 + 48) + 8 * v13);
        v15 = sub_2749FD604();

        v11 = v13 + 1;
        if (v15)
        {

          v2 = v27;
          goto LABEL_14;
        }
      }

      v2 = v27;
    }

    sub_2747655C4(&v28, v7);

    v16 = v29;
    if (*(v3 + 24) <= *(v3 + 16))
    {
      sub_274767810();
    }

    v3 = v30;
    result = sub_2749FD5F4();
    v18 = v3 + 56;
    v19 = -1 << *(v3 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v3 + 56 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v3 + 56 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v3 + 48) + 8 * v22) = v16;
    ++*(v3 + 16);
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v18 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_2747DD858(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = a1;
  v45[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  v8 = 8 * v7;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_34;
  }

  while (2)
  {
    v36 = &v33;
    v37 = v3;
    MEMORY[0x28223BE20](a1);
    v38 = &v33 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_27476A4B0(0, v7, v38);
    v9 = 0;
    v10 = v5 + 56;
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v39 = v5 + 56;
    v40 = v14;
    v41 = 0;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_13:
      v18 = v15 | (v9 << 6);
      v19 = *(v5 + 48);
      v42 = v18;
      v3 = *(v19 + 8 * v18);
      v20 = [v3 sourceContentAttribution];
      if (v20)
      {
        v8 = v20;
        v43 = v3;
        v44 = v13;
        v21 = [v20 origin];

        if (v21)
        {
          v8 = *a2;
          if ((*a2 & 0xC000000000000001) != 0)
          {

            v22 = v21;
            v23 = sub_2749FD884();

            if ((v23 & 1) == 0)
            {
              goto LABEL_27;
            }

LABEL_25:
            v10 = v39;
            v14 = v40;
            v13 = v44;
          }

          else
          {
            if (*(v8 + 16))
            {
              v33 = v7;
              v34 = a2;
              v35 = v5;
              sub_27471CF08(0, &qword_2809679B0, 0x277CFC318);

              v24 = sub_2749FD5F4();
              v25 = ~(-1 << *(v8 + 32));
              while (1)
              {
                v3 = v24 & v25;
                if (((*(v8 + 56 + (((v24 & v25) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v24 & v25)) & 1) == 0)
                {
                  break;
                }

                v26 = *(*(v8 + 48) + 8 * v3);
                v27 = sub_2749FD604();

                v24 = v3 + 1;
                if (v27)
                {

                  a2 = v34;
                  v5 = v35;
                  v7 = v33;
                  goto LABEL_25;
                }
              }

              a2 = v34;
              v5 = v35;
              v7 = v33;
LABEL_27:
              v10 = v39;
            }

            sub_2747655C4(v45, v21);
            v8 = v45[0];

            *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
            v14 = v40;
            v28 = __OFADD__(v41++, 1);
            v13 = v44;
            if (v28)
            {
              __break(1u);
LABEL_31:
              sub_274975BCC(v38, v7, v41, v5);
              return v29;
            }
          }
        }

        else
        {

          v13 = v44;
        }
      }

      else
      {
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_31;
      }

      v17 = *(v10 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_34:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v32 = swift_slowAlloc();
  v30 = sub_2747DDF40(v32, v7, v5, a2);

  MEMORY[0x277C61040](v32, -1, -1);
  return v30;
}

void sub_2747DDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  v33 = a3 + 56;
  v34 = v12;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v36 = v13 | (v7 << 6);
    v16 = *(*(v4 + 48) + 8 * v36);
    v17 = [v16 sourceContentAttribution];
    if (v17)
    {
      v18 = v17;
      v37 = v16;
      v38 = v11;
      v19 = [v17 origin];

      if (v19)
      {
        v20 = *a4;
        if ((*a4 & 0xC000000000000001) != 0)
        {

          v21 = v19;
          v22 = sub_2749FD884();

          if ((v22 & 1) == 0)
          {
            goto LABEL_26;
          }

LABEL_24:
          v8 = v33;
          v12 = v34;
          v11 = v38;
        }

        else
        {
          if (*(v20 + 16))
          {
            v30 = a2;
            v31 = v4;
            sub_27471CF08(0, &qword_2809679B0, 0x277CFC318);

            v23 = sub_2749FD5F4();
            v24 = ~(-1 << *(v20 + 32));
            while (1)
            {
              v25 = v23 & v24;
              if (((*(v20 + 56 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
              {
                break;
              }

              v26 = *(*(v20 + 48) + 8 * v25);
              v27 = sub_2749FD604();

              v23 = v25 + 1;
              if (v27)
              {

                a2 = v30;
                v4 = v31;
                goto LABEL_24;
              }
            }

            a2 = v30;
            v4 = v31;
LABEL_26:
            v8 = v33;
          }

          sub_2747655C4(&v39, v19);
          v28 = v39;

          *(a1 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
          v29 = __OFADD__(v6++, 1);
          v12 = v34;
          v11 = v38;
          if (v29)
          {
            __break(1u);
LABEL_30:

            sub_274975BCC(a1, a2, v6, v4);
            return;
          }
        }
      }

      else
      {

        v11 = v38;
      }
    }

    else
    {
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_30;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
}

void *sub_2747DDF40(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2747DDC4C(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_2747DDFD4(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  }

  return OUTLINED_FUNCTION_44();
}

uint64_t sub_2747DE030(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  v4 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();

  return v4;
}

uint64_t sub_2747DE0B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_2749FD844();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_27472D918(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_27471CF08(0, &qword_28096EE00, 0x277D7C8F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2747DE674(&qword_280969130, &qword_280969110, &qword_274A14760);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969110, &qword_274A14760);
          v9 = sub_2747A35F4(v12, i, a3);
          v11 = *v10;
          v9(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2747DE234()
{
  OUTLINED_FUNCTION_4_12();
  if (v2)
  {
    v5 = sub_2749FD844();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_44();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_27472D918(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_27471CF08(0, &unk_2809708B0, 0x277D79EC0);
        OUTLINED_FUNCTION_9_8();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v25 = v6;
        sub_2747DE674(&qword_280969180, &qword_280969178, &unk_274A14970);
        do
        {
          v7 = OUTLINED_FUNCTION_42();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_3_25(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2747A3660(v17, v18, v19);
          v22 = *v21;
          v20(v26, 0);
          OUTLINED_FUNCTION_5_13();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_2747DE374()
{
  OUTLINED_FUNCTION_4_12();
  if (v2)
  {
    v5 = sub_2749FD844();
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v4 + 16);
    if (!v5)
    {
LABEL_13:
      OUTLINED_FUNCTION_44();
      return;
    }
  }

  if (v1)
  {
    v6 = sub_27472D918(v0);
    if (v6 > v3)
    {
      __break(1u);
    }

    else
    {
      if (!v2)
      {
        sub_27471CF08(0, &qword_280968930, 0x277D79E28);
        OUTLINED_FUNCTION_9_8();
        goto LABEL_13;
      }

      if (v5 >= 1)
      {
        v25 = v6;
        sub_2747DE674(&qword_280969190, &qword_280969188, &qword_274A14980);
        do
        {
          v7 = OUTLINED_FUNCTION_42();
          v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
          v17 = OUTLINED_FUNCTION_3_25(v9, v10, v11, v12, v13, v14, v15, v16, v24, v25, v26[0]);
          v20 = sub_2747A3660(v17, v18, v19);
          v22 = *v21;
          v20(v26, 0);
          OUTLINED_FUNCTION_5_13();
        }

        while (!v23);
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747DE510(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_27471CF08(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t objectdestroy_29Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_2747DE674(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t WFGlyphCategory.init(localizedTitle:glyphs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2749F9154();
  result = type metadata accessor for WFGlyphCategory(0);
  v9 = (a4 + *(result + 20));
  *v9 = a1;
  v9[1] = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t type metadata accessor for WFGlyphCategory(uint64_t a1)
{
  result = qword_28159FCC8;
  if (!qword_28159FCC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WFGlyphCategory.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749F9164();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t WFGlyphCategory.localizedTitle.getter()
{
  v1 = *(v0 + *(type metadata accessor for WFGlyphCategory(0) + 20));

  return v1;
}

uint64_t WFGlyphCategory.glyphs.getter()
{
  type metadata accessor for WFGlyphCategory(0);
}

uint64_t WFGlyphCategory.hash(into:)(uint64_t a1)
{
  sub_2749F9164();
  OUTLINED_FUNCTION_0_17();
  sub_2747DEAF0(v1, v2, MEMORY[0x277CC9600]);

  return sub_2749FCD04();
}

uint64_t static WFGlyphCategory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2749F9134() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WFGlyphCategory(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_2749FDCC4() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_274785420(v11, v12);
}

uint64_t WFGlyphCategory.hashValue.getter()
{
  sub_2749FDDF4();
  sub_2749F9164();
  OUTLINED_FUNCTION_0_17();
  sub_2747DEAF0(v0, v1, MEMORY[0x277CC9600]);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2747DE9DC(uint64_t a1)
{
  sub_2749FDDF4();
  sub_2749F9164();
  sub_2747DEAF0(&qword_2809707C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2749FCD04();
  return sub_2749FDE44();
}

uint64_t sub_2747DEAF0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_2747DEB64(uint64_t a1)
{
  sub_2749F9164();
  if (v1 <= 0x3F)
  {
    sub_2747DEBF0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2747DEBF0(uint64_t a1)
{
  if (!qword_28159E528)
  {
    type metadata accessor for WFGlyphCharacter(255);
    v1 = sub_2749FD014();
    if (!v2)
    {
      atomic_store(v1, &qword_28159E528);
    }
  }
}

id sub_2747DEC58(uint64_t a1, const void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  memcpy(__dst, a2, 0x59uLL);
  v10 = *a3;
  v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry] = 0;
  v11 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView;
  v12 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v13 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *&v5[v11] = v13;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation] = 0;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource] = a1;
  memcpy(&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style], a2, 0x59uLL);
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout] = v10;
  memcpy(aBlock, a2, 0x59uLL);
  v27 = v10;
  type metadata accessor for SmartShortcutPickerCollectionViewDataSource(0);
  swift_allocObject();
  swift_retain_n();
  v14 = v13;
  sub_2747D2AC8(__dst, v26);

  SmartShortcutPickerCollectionViewDataSource.init(collectionView:dataSource:style:layout:)();
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource] = v15;
  *&v5[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_selectionCoordinator] = a4;
  v25.receiver = v5;
  v25.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();

  v16 = objc_msgSendSuper2(&v25, sel_initWithNibName_bundle_, 0, 0);
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 defaultCenter];
  v20 = *MEMORY[0x277CCA0D0];
  OUTLINED_FUNCTION_86();
  v21 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_2747E2A30;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2747DF484;
  aBlock[3] = &block_descriptor_13;
  v22 = _Block_copy(aBlock);

  v23 = [v19 addObserverForName:v20 object:0 queue:0 usingBlock:v22];
  _Block_release(v22);

  swift_unknownObjectRelease();

  return v18;
}

double sub_2747DEF3C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a2;

  sub_274832938(0, 0, v5, &unk_274A14AA8, v7);

  return result;
}

uint64_t sub_2747DF024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = sub_2749FA4E4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2747DF0E4, 0, 0);
}

uint64_t sub_2747DF0E4()
{
  sub_2749FA3D4();
  v1 = sub_2749FA4D4();
  v2 = sub_2749FD2E4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_274719000, v1, v2, "User returned to staccato configuration, reloading data source", v3, 2u);
    MEMORY[0x277C61040](v3, -1, -1);
  }

  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];

  (*(v5 + 8))(v4, v6);
  if (qword_280966BA8 != -1)
  {
    swift_once();
  }

  sub_27477DD74();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = Strong;
  if (Strong)
  {
    v0[9] = *(Strong + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_dataSource);

    v9 = swift_task_alloc();
    v0[10] = v9;
    *v9 = v0;
    v9[1] = sub_2747DF2DC;

    return SmartShortcutPickerDataSource.load()();
  }

  else
  {

    OUTLINED_FUNCTION_48_0();

    return v11();
  }
}

uint64_t sub_2747DF2DC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2747DF41C, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_48_0();

    return v2();
  }
}

uint64_t sub_2747DF41C()
{

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747DF484(uint64_t a1, uint64_t a2)
{
  v3 = sub_2749F8EB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_2749F8EA4();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

id SmartShortcutPickerBaseViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void SmartShortcutPickerBaseViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry) = 0;
  v1 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView;
  v2 = [objc_allocWithZone(MEMORY[0x277D752F0]) init];
  v3 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v2 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  *(v0 + v1) = v3;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id SmartShortcutPickerBaseViewController.__deallocating_deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2747DF82C()
{
  v1 = v0;
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  [v3 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v7 = v6;
  v8 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
  [v6 addSubview_];

  v9 = sub_2747CBE58();
  [v8 setDataSource_];

  type metadata accessor for CollectionViewHeaderView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = *MEMORY[0x277D767D8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969288, &qword_274A206D0);
  sub_2749FCDC4();
  v12 = sub_2749FCD64();

  [v8 registerClass:ObjCClassFromMetadata forSupplementaryViewOfKind:v11 withReuseIdentifier:v12];

  v13 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

  v14 = [v1 interfaceOrientation];
  OUTLINED_FUNCTION_86();
  v15 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_32_2();
  if (v13)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v14;
    v17 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v18 = sub_2747E2930(sub_2747E2DEC, v16);
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v15;
    *(v19 + 24) = v14;
    v20 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v18 = sub_2747E2930(sub_2747E2DF0, v19);
  }

  [v8 setCollectionViewLayout_];

  v21 = [v4 clearColor];
  [v8 setBackgroundColor_];

  [v8 setKeyboardDismissMode_];
  sub_2747CE740();
}

id sub_2747DFBEC()
{
  v1 = v0;
  v14.receiver = v0;
  v14.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v2 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation;
  v3 = *&v0[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_lastLayoutOrientation];
  result = [v1 interfaceOrientation];
  if (v3 != result)
  {
    v5 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
    v6 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

    v7 = [v1 interfaceOrientation];
    OUTLINED_FUNCTION_86();
    v8 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_32_2();
    if (v6)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = v7;
      v10 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v11 = sub_2747E2930(sub_2747E29D4, v9);
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = v8;
      *(v12 + 24) = v7;
      v13 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v11 = sub_2747E2930(sub_2747E29DC, v12);
    }

    [v5 setCollectionViewLayout_];

    result = [v1 interfaceOrientation];
    *&v1[v2] = result;
  }

  return result;
}

void sub_2747DFDD4(void *a1)
{
  v21.receiver = v1;
  v21.super_class = type metadata accessor for SmartShortcutPickerBaseViewController();
  objc_msgSendSuper2(&v21, sel_traitCollectionDidChange_, a1);
  v3 = [v1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_9:
    v12 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
    v13 = *&v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_layout];

    v14 = [v1 interfaceOrientation];
    OUTLINED_FUNCTION_86();
    v15 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_32_2();
    if (v13)
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v14;
      v17 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v18 = sub_2747E2930(sub_2747E2DEC, v16);
    }

    else
    {
      v19 = swift_allocObject();
      *(v19 + 16) = v15;
      *(v19 + 24) = v14;
      v20 = objc_allocWithZone(MEMORY[0x277D752B8]);
      v18 = sub_2747E2930(sub_2747E2DF0, v19);
    }

    [v12 setCollectionViewLayout_];

    return;
  }

  v5 = [a1 preferredContentSizeCategory];
  v6 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v8 = v7;
  if (v6 == _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0() && v8 == v9)
  {

    return;
  }

  v11 = sub_2749FDCC4();

  if ((v11 & 1) == 0)
  {
    goto LABEL_9;
  }
}

void sub_2747E0084(char a1)
{
  v3 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v638 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  v637 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v616 - v8;
  sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v635 = v11;
  v636 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20_1();
  v639 = v12;
  v13 = type metadata accessor for SmartShortcutPickerEntry(0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_20_1();
  v641 = v14;
  v651 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  OUTLINED_FUNCTION_43();
  v646 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_20_1();
  v656 = v17;
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969250, &qword_274A14AB0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v645 = (&v616 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969258, &qword_274A14AB8);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_5_1();
  v652 = v21;
  MEMORY[0x28223BE20](v22);
  v658 = &v616 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969260, &qword_274A14AC0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v616 - v25;
  v27 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_20_1();
  v642 = v1;
  v643 = v29;
  v30 = OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry;
  if (v1[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_hasScrolledToEntry] == 1 && (a1 & 1) == 0)
  {
    return;
  }

  v631 = v9;
  v633 = v3;
  v31 = v642;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2749FA904();

  if (__swift_getEnumTagSinglePayload(v26, 1, v27) == 1)
  {
    sub_27472ECBC(v26, &unk_280969260, &qword_274A14AC0);
    return;
  }

  v32 = v26;
  v33 = v643;
  sub_2747E2CFC(v32, v643, type metadata accessor for SmartShortcutPickerSelectedEntry);
  v34 = *&v31[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_smartShortcutPickerDataSource];
  v35 = *(v33 + 200);
  v36 = *(v33 + 208);
  v665[0] = *(v33 + 192);
  v665[1] = v35;
  LOBYTE(v665[2]) = v36;
  sub_27477D408(v665[0], v35, v36);
  sub_2747CF564(v665);
  sub_27478C4DC(v665[0], v665[1], v665[2]);
  v683 = v680[0];
  v684 = v680[1];
  *v685 = v680[2];
  *&v685[9] = *(&v680[2] + 9);
  if (!*&v680[2])
  {
    OUTLINED_FUNCTION_14_5();
    v610 = v33;
LABEL_317:
    sub_2747E2D5C(v610, v609);
    return;
  }

  v38 = *(&v683 + 1);
  v37 = v683;
  v39 = v684;
  v31[v30] = 1;
  swift_beginAccess();
  v40 = *(v34 + 16);
  v657 = *(v40 + 16);
  v654 = v39;
  v41 = v39 != 3;
  v42 = v39 == 3;
  if (__PAIR128__(v38, v37) != 0)
  {
    v42 = 0;
  }

  v630 = v42;
  v655 = v38;
  v43 = v37 == 1 && v38 == 0;
  v44 = v40;
  if (!v43)
  {
    v41 = 1;
  }

  v634 = v41;

  v649 = 0;
  v650 = 0;
  LODWORD(v632) = 0;
  v647 = 0.0;
  v648 = v44;
  v46 = 0;
  v47 = v656;
  v48 = v658;
  while (1)
  {
    v49 = 40 * v46;
LABEL_15:
    if (v657 == v46)
    {

      v571 = v642;
      v572 = *&v642[OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_collectionView];
      v573 = [v572 numberOfSections];
      v574 = v647;
      if (*&v647 >= v573 || (v632 & 1) == 0)
      {
        v611 = v637;
        sub_2749FA3D4();
        v612 = sub_2749FA4D4();
        v613 = sub_2749FD2C4();
        v614 = os_log_type_enabled(v612, v613);
        v585 = v643;
        if (v614)
        {
          v615 = swift_slowAlloc();
          *v615 = 134217984;
          *(v615 + 4) = v574;
          _os_log_impl(&dword_274719000, v612, v613, "Attempted to scroll to a section %ld that does not exist!", v615, 0xCu);
          MEMORY[0x277C61040](v615, -1, -1);

          sub_27472ECBC(&v683, &qword_280969280, &qword_274A14B30);
        }

        else
        {
          sub_27472ECBC(&v683, &qword_280969280, &qword_274A14B30);
        }

        (*(v638 + 8))(v611, v633);
        goto LABEL_316;
      }

      v575 = v639;
      MEMORY[0x277C5AFB0](v649, *&v647);
      v576 = sub_2749F9224();
      [v572 scrollToItemAtIndexPath:v576 atScrollPosition:4 animated:0];

      [v572 adjustedContentInset];
      v660 = v577;
      v579 = v578;
      v581 = v580;
      v583 = v582;
      v584 = [v571 view];
      v585 = v643;
      if (!v584)
      {
        goto LABEL_322;
      }

      v586 = v584;
      [v584 safeAreaInsets];
      v588 = v587;

      [v572 bounds];
      v590 = v589;
      v592 = v591;
      v594 = v593;
      v596 = v595;
      v597 = sub_2749F9224();
      v598 = [v572 layoutAttributesForItemAtIndexPath_];

      if (v598)
      {
        if (v581 > v588)
        {
          v599 = v581;
        }

        else
        {
          v599 = v588;
        }

        v600 = UIEdgeInsetsInsetRect(v590, v592, v594, v596, v660, v579, v599, v583);
        v602 = v601;
        [v598 frame];
        if (v602 < v603)
        {
          sub_2749FA3D4();
          v604 = sub_2749FA4D4();
          v605 = sub_2749FD2C4();
          if (os_log_type_enabled(v604, v605))
          {
            v606 = swift_slowAlloc();
            *v606 = 0;
            _os_log_impl(&dword_274719000, v604, v605, "Adding extra", v606, 2u);
            MEMORY[0x277C61040](v606, -1, -1);
          }

          (*(v638 + 8))(v631, v633);
          v607 = [v642 view];
          v585 = v643;
          if (!v607)
          {
            goto LABEL_323;
          }

          v608 = v607;
          [v607 safeAreaInsets];

          [v572 contentOffset];
          [v572 setContentOffset_];

          sub_27472ECBC(&v683, &qword_280969280, &qword_274A14B30);
          (*(v635 + 8))(v639, v636);
LABEL_316:
          OUTLINED_FUNCTION_14_5();
          v610 = v585;
          goto LABEL_317;
        }

        (*(v635 + 8))(v639, v636);
      }

      else
      {
        (*(v635 + 8))(v575, v636);
      }

      sub_27472ECBC(&v683, &qword_280969280, &qword_274A14B30);
      goto LABEL_316;
    }

    if (v46 >= *(v44 + 16))
    {
      break;
    }

    v50 = *(v44 + v49 + 32);
    v51 = *(v44 + v49 + 40);
    v52 = *(v44 + v49 + 48);
    v53 = *(v44 + v49 + 48);
    v54 = *(v44 + v49 + 56);
    v660 = *&v46;
    if ((v52 & 0x80000000) == 0)
    {
      v659 = v54;
      switch(v53)
      {
        case 1:
          v79 = v654;
          if (v654 != 1)
          {
            v133 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3A4(v133, v134, v135);

            v121 = v49;
            OUTLINED_FUNCTION_36_5();
            sub_27477D408(v136, v137, v79);
            v138 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3A4(v138, v139, v140);
            v141 = OUTLINED_FUNCTION_4_13();
            sub_2747CB3B0(v141, v142, v143);

            v130 = OUTLINED_FUNCTION_4_13();
            goto LABEL_43;
          }

          v644 = v53;
          if (v50 == v37 && v51 == v655)
          {
            v55 = v655;
            sub_2747CB3A4(v37, v655, 1u);

            v174 = OUTLINED_FUNCTION_18_11();
            sub_27477D408(v174, v175, v176);
            v177 = OUTLINED_FUNCTION_18_11();
            sub_2747CB3A4(v177, v178, v179);
            v180 = OUTLINED_FUNCTION_18_11();
            sub_27478C4DC(v180, v181, v182);
            v183 = OUTLINED_FUNCTION_18_11();
            goto LABEL_57;
          }

          v55 = v51;
          v81 = v49;
          OUTLINED_FUNCTION_42();
          v104 = sub_2749FDCC4();
          v105 = OUTLINED_FUNCTION_4_13();
          sub_2747CB3A4(v105, v106, v107);

          v108 = OUTLINED_FUNCTION_22_7();
          sub_27477D408(v108, v109, 1u);
          v110 = OUTLINED_FUNCTION_4_13();
          sub_2747CB3A4(v110, v111, v112);
          v113 = OUTLINED_FUNCTION_4_13();
          sub_27478C4DC(v113, v114, v115);
          v116 = OUTLINED_FUNCTION_22_7();
          sub_27478C4DC(v116, v117, 1u);
          if (v104)
          {
LABEL_54:
            v640 = v50;
            v621 = v37;
            v48 = v658;
            goto LABEL_58;
          }

          v96 = v50;
          v97 = v51;
          v98 = 1;
          goto LABEL_40;
        case 2:
          v79 = v654;
          if (v654 != 2)
          {
            v118 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v118, v119, v120);

            v121 = v49;
            OUTLINED_FUNCTION_36_5();
            sub_27477D408(v122, v123, v79);
            v124 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v124, v125, v126);
            v127 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3B0(v127, v128, v129);

            v130 = OUTLINED_FUNCTION_5_14();
LABEL_43:
            sub_27478C4DC(v130, v131, v132);
            v144 = OUTLINED_FUNCTION_22_7();
            v49 = v121;
            v45 = sub_27478C4DC(v144, v145, v79);
            v44 = v648;
LABEL_44:
            v47 = v656;
            goto LABEL_48;
          }

          v644 = v53;
          if (v50 != v37 || v51 != v655)
          {
            v55 = v51;
            v81 = v49;
            OUTLINED_FUNCTION_42();
            v82 = sub_2749FDCC4();
            v83 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v83, v84, v85);

            v86 = OUTLINED_FUNCTION_22_7();
            sub_27477D408(v86, v87, 2u);
            v88 = OUTLINED_FUNCTION_5_14();
            sub_2747CB3A4(v88, v89, v90);
            v91 = OUTLINED_FUNCTION_5_14();
            sub_27478C4DC(v91, v92, v93);
            v94 = OUTLINED_FUNCTION_22_7();
            sub_27478C4DC(v94, v95, 2u);
            if (v82)
            {
              goto LABEL_54;
            }

            v96 = v50;
            v97 = v51;
            v98 = 2;
LABEL_40:
            sub_2747CB3B0(v96, v97, v98);

            v48 = v658;
            v44 = v648;
            v49 = v81;
            goto LABEL_44;
          }

          v55 = v655;
          sub_2747CB3A4(v37, v655, 2u);

          v186 = OUTLINED_FUNCTION_19_6();
          sub_27477D408(v186, v187, v188);
          v189 = OUTLINED_FUNCTION_19_6();
          sub_2747CB3A4(v189, v190, v191);
          v192 = OUTLINED_FUNCTION_19_6();
          sub_27478C4DC(v192, v193, v194);
          v183 = OUTLINED_FUNCTION_19_6();
LABEL_57:
          sub_27478C4DC(v183, v184, v185);
          v621 = v37;
          v640 = v37;
LABEL_58:
          v47 = v656;
LABEL_61:
          v198 = v659[2];

          v199 = *&v198;
          v200 = 0;
          v201 = v643;
          v202 = v641;
          v647 = v199;
LABEL_62:
          v622 = v649;
          while (1)
          {
LABEL_63:
            if (v200 == *&v199)
            {
              v203 = 1;
              v200 = *&v199;
              v205 = v652;
              v204 = v653;
            }

            else
            {
              v204 = v653;
              if ((v200 & 0x8000000000000000) != 0)
              {
                goto LABEL_320;
              }

              if (v200 >= v659[2])
              {
                goto LABEL_321;
              }

              v206 = v645;
              v207 = v659 + ((*(v646 + 80) + 32) & ~*(v646 + 80)) + *(v646 + 72) * v200;
              v208 = *(v653 + 48);
              *v645 = v200;
              sub_2747E2C38(v207, v206 + v208);
              v209 = v206;
              v205 = v652;
              sub_2747E2C9C(v209, v652, &qword_280969250, &qword_274A14AB0);
              v203 = 0;
              ++v200;
              v48 = v658;
            }

            __swift_storeEnumTagSinglePayload(v205, v203, 1, v204);
            sub_2747E2C9C(v205, v48, &qword_280969258, &qword_274A14AB8);
            if (__swift_getEnumTagSinglePayload(v48, 1, v204) == 1)
            {
              sub_2747CB3B0(v640, v55, v644);
              v45 = swift_bridgeObjectRelease_n();
              v37 = v621;
              v166 = v622;
              goto LABEL_296;
            }

            v649 = *v48;
            sub_2747E2CFC(v48 + *(v204 + 48), v47, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              break;
            }

            sub_2747E2D5C(v47, type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item);
            v199 = v647;
          }

          break;
        case 3:
          v644 = v53;
          v55 = v51;
          v640 = v50;
          v99 = OUTLINED_FUNCTION_42();
          sub_2747CB3A4(v99, v100, 3u);

          if (v50 | v51)
          {
            v101 = v655;
            v102 = v654;
            if (!v634)
            {
              v621 = v37;
              OUTLINED_FUNCTION_35_3();
              sub_27478C4DC(v170, v171, v172);
              v173 = 1;
LABEL_60:
              sub_27478C4DC(v173, 0, 3u);
              v48 = v658;
              goto LABEL_61;
            }
          }

          else
          {
            v101 = v655;
            v102 = v654;
            if (v630)
            {
              v621 = v37;
              OUTLINED_FUNCTION_35_3();
              sub_27478C4DC(v195, v196, v197);
              v173 = 0;
              goto LABEL_60;
            }
          }

          sub_27477D408(v37, v101, v102);
          OUTLINED_FUNCTION_35_3();
          sub_2747CB3B0(v146, v147, v148);

          OUTLINED_FUNCTION_35_3();
          sub_27478C4DC(v149, v150, v151);
          v45 = sub_27478C4DC(v37, v101, v102);
          v48 = v658;
LABEL_47:
          v44 = v648;
LABEL_48:
          v49 += 40;
          v46 = *&v660 + 1;
          goto LABEL_15;
        default:
          v644 = v53;
          v55 = v51;
          sub_2747CB3A4(v50, v51, 0);

          v56 = v654;
          if (!v654)
          {
            v640 = v50;
            v167 = OUTLINED_FUNCTION_27_5();
            sub_27478C4DC(v167, v168, v169);
            v621 = v37;
            sub_27478C4DC(v37, v655, 0);
            goto LABEL_61;
          }

          OUTLINED_FUNCTION_36_5();
          sub_27477D408(v57, v58, v56);
          v59 = OUTLINED_FUNCTION_27_5();
          sub_2747CB3B0(v59, v60, v61);

          v62 = OUTLINED_FUNCTION_27_5();
          sub_27478C4DC(v62, v63, v64);
          v65 = OUTLINED_FUNCTION_22_7();
          v45 = sub_27478C4DC(v65, v66, v56);
          goto LABEL_47;
      }

      v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968E90, &unk_274A14B10);
      sub_27478C4DC(*(v47 + *(v210 + 48)), *(v47 + *(v210 + 48) + 8), *(v47 + *(v210 + 48) + 16));
      sub_2747E2CFC(v47, v202, type metadata accessor for SmartShortcutPickerEntry);
      memcpy(v678, v202, 0xB9uLL);
      memcpy(v679, v201, 0xB9uLL);
      memcpy(v680, v202, 0xB9uLL);
      memcpy(v681, v201, sizeof(v681));
      memcpy(v682, v202, 0xB9uLL);
      switch(sub_274772AD0(v682))
      {
        case 1u:
          sub_274721C98(v682);
          OUTLINED_FUNCTION_29_6();
          OUTLINED_FUNCTION_0_18();
          sub_2747E2D5C(v202, v264);
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v665) != 1)
          {
            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            goto LABEL_123;
          }

          sub_274721C98(v665);
          sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
          goto LABEL_289;
        case 2u:
          v220 = *sub_274721C98(v682);
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v665) != 2)
          {
            OUTLINED_FUNCTION_29_6();
            v265 = OUTLINED_FUNCTION_24_7();
            goto LABEL_100;
          }

          v221 = *sub_274721C98(v665);
          OUTLINED_FUNCTION_29_6();
          v222 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v222, v223);
          OUTLINED_FUNCTION_29_6();
          v224 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v224, v225);
          v226 = [v220 identifier];
          v227 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v229 = v228;

          v230 = [v221 identifier];
          v231 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
          v202 = v232;

          if (v227 == v231 && v229 == v202)
          {

            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v563, v564);
            sub_274772BE8(v679);
            sub_274772BE8(v678);
            v47 = v656;
          }

          else
          {
            v234 = sub_2749FDCC4();

            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v235, v236);
            sub_274772BE8(v679);
            sub_274772BE8(v678);
            v47 = v656;
            if ((v234 & 1) == 0)
            {
              v201 = v643;
              goto LABEL_123;
            }
          }

          v201 = v643;
          goto LABEL_289;
        case 3u:
          v632 = sub_274721C98(v682);
          memcpy(v677, v679, 0xB9uLL);
          if (sub_274772AD0(v677) != 3)
          {
            OUTLINED_FUNCTION_26_4();
            v265 = OUTLINED_FUNCTION_13_10();
LABEL_100:
            sub_274772ADC(v265, v266);
            v267 = v680;
            v268 = &unk_280969270;
            v269 = &qword_274A270B0;
            goto LABEL_101;
          }

          v237 = sub_274721C98(v677);
          v239 = *v632;
          v238 = *(v632 + 8);
          v240 = *(v632 + 16);
          v241 = *(v632 + 24);
          v243 = *(v632 + 32);
          v242 = *(v632 + 40);
          v244 = *(v632 + 48);
          v245 = *v237;
          v246 = *(v237 + 8);
          v247 = *(v237 + 16);
          v248 = *(v237 + 24);
          v250 = *(v237 + 32);
          v249 = *(v237 + 40);
          v251 = *(v237 + 48);
          v668[0] = *v632;
          v668[1] = v238;
          v626 = v243;
          v627 = v240;
          v668[2] = v240;
          v628 = v247;
          v629 = v241;
          v668[3] = v241;
          v668[4] = v243;
          v624 = v249;
          v625 = v242;
          v668[5] = v242;
          v669 = v244;
          v670 = v245;
          v671 = v246;
          v672 = v247;
          v252 = v248;
          v673 = v248;
          v623 = v250;
          v674 = v250;
          v675 = v249;
          v676 = v251;
          if (v244)
          {
            if ((v251 & 1) == 0)
            {
              OUTLINED_FUNCTION_26_4();
              v295 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v295, v296);
              v297 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v297, v298, v299, v300, v301, v302, 0);
              v288 = OUTLINED_FUNCTION_11_10();
              v294 = 1;
              goto LABEL_118;
            }

            v620 = v237;
            v619 = sub_2747949D8();
            OUTLINED_FUNCTION_26_4();
            v253 = OUTLINED_FUNCTION_13_10();
            sub_274772ADC(v253, v254);
            v255 = OUTLINED_FUNCTION_1_22();
            sub_27477C094(v255, v256, v257, v258, v259, v260, 1);
            v261 = v627;
            sub_27477C094(v239, v238, v627, v629, v626, v625, 1);
            if ((sub_2749FD604() & 1) == 0)
            {
              sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
              sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
              v202 = v641;
              goto LABEL_120;
            }

            if (v261)
            {
              v201 = v643;
              if (!v628)
              {

                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
                goto LABEL_159;
              }

              if (v238 != v246 || v261 != v628)
              {
                v263 = sub_2749FDCC4();
                sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
                if ((v263 & 1) == 0)
                {
                  goto LABEL_150;
                }

                goto LABEL_165;
              }

LABEL_164:
              sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
              goto LABEL_165;
            }

            v366 = v628;

            sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
            v201 = v643;
            if (v366)
            {
              goto LABEL_154;
            }
          }

          else
          {
            if (v251)
            {
              OUTLINED_FUNCTION_26_4();
              v280 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v280, v281);
              v282 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v282, v283, v284, v285, v286, v287, 1);
              v288 = OUTLINED_FUNCTION_11_10();
              goto LABEL_116;
            }

            v620 = v237;
            v307 = v239 == v245 && v238 == v246;
            if (!v307 && (sub_2749FDCC4() & 1) == 0)
            {
              OUTLINED_FUNCTION_26_4();
              v352 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v352, v353);
              v354 = OUTLINED_FUNCTION_1_22();
              sub_27477C094(v354, v355, v356, v357, v358, v359, 0);
              v360 = OUTLINED_FUNCTION_11_10();
              sub_27477C094(v360, v361, v362, v363, v364, v365, 0);
              sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
              v303 = v680;
              v304 = &unk_280969270;
              v305 = &qword_274A270B0;
LABEL_119:
              sub_27472ECBC(v303, v304, v305);
LABEL_120:
              v201 = v643;
LABEL_121:
              v306 = type metadata accessor for SmartShortcutPickerEntry;
LABEL_122:
              sub_2747E2D5C(v202, v306);
              goto LABEL_123;
            }

            v616 = v245;
            v617 = v246;
            v618 = v239;
            v619 = v238;
            if (v629)
            {
              v308 = v625;
              v309 = v623;
              if (!v252)
              {
                OUTLINED_FUNCTION_26_4();
                v367 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v367, v368);
                sub_27477C094(v616, v617, v628, 0, v309, v624, 0);
                OUTLINED_FUNCTION_31_8(v618, v619, v627, v629, v626);

                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
                goto LABEL_162;
              }

              v310 = v252;
              v311 = v627 == v628 && v629 == v252;
              v312 = v626;
              v313 = v624;
              if (!v311 && (sub_2749FDCC4() & 1) == 0)
              {
                OUTLINED_FUNCTION_26_4();
                v314 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v314, v315);
                v316 = OUTLINED_FUNCTION_3_26();
                OUTLINED_FUNCTION_38_3(v316, v317, v318, v319, v320);
                v288 = OUTLINED_FUNCTION_2_19();
                v293 = v308;
LABEL_116:
                v294 = 0;
LABEL_118:
                sub_27477C094(v288, v289, v290, v291, v292, v293, v294);
                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                v303 = v668;
                v304 = &unk_2809707D0;
                v305 = &unk_274A14B20;
                goto LABEL_119;
              }
            }

            else
            {
              v308 = v625;
              v312 = v626;
              v310 = v252;
              v309 = v623;
              v313 = v624;
              if (v310)
              {
                OUTLINED_FUNCTION_26_4();
                v328 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v328, v329);
                v330 = OUTLINED_FUNCTION_3_26();
                OUTLINED_FUNCTION_38_3(v330, v331, v332, v333, v334);
                OUTLINED_FUNCTION_31_8(v618, v619, v627, 0, v312);

                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
LABEL_162:

                goto LABEL_120;
              }
            }

            if (v308)
            {
              if (!v313)
              {
                OUTLINED_FUNCTION_26_4();
                v381 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v381, v382);
                v383 = OUTLINED_FUNCTION_3_26();
                sub_27477C094(v383, v384, v385, v386, v387, 0, 0);
                v388 = OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_31_8(v388, v389, v390, v391, v392);

                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
                goto LABEL_162;
              }

              if (v312 == v309 && v308 == v313)
              {
                OUTLINED_FUNCTION_26_4();
                v393 = OUTLINED_FUNCTION_13_10();
                sub_274772ADC(v393, v394);
                OUTLINED_FUNCTION_31_8(v616, v617, v628, v310, v312);
                v395 = OUTLINED_FUNCTION_2_19();
                OUTLINED_FUNCTION_31_8(v395, v396, v397, v398, v399);
                v201 = v643;
                goto LABEL_164;
              }

              v336 = sub_2749FDCC4();
              OUTLINED_FUNCTION_26_4();
              v337 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v337, v338);
              v339 = OUTLINED_FUNCTION_3_26();
              OUTLINED_FUNCTION_38_3(v339, v340, v341, v342, v343);
              v344 = OUTLINED_FUNCTION_2_19();
              OUTLINED_FUNCTION_31_8(v344, v345, v346, v347, v348);
              sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
              v201 = v643;
              if ((v336 & 1) == 0)
              {
LABEL_150:
                v349 = v680;
                v350 = &unk_280969270;
                v351 = &qword_274A270B0;
                goto LABEL_151;
              }
            }

            else
            {
              OUTLINED_FUNCTION_26_4();
              v369 = OUTLINED_FUNCTION_13_10();
              sub_274772ADC(v369, v370);
              v371 = OUTLINED_FUNCTION_3_26();
              OUTLINED_FUNCTION_38_3(v371, v372, v373, v374, v375);
              v376 = OUTLINED_FUNCTION_2_19();
              sub_27477C094(v376, v377, v378, v379, v380, 0, 0);

              sub_27472ECBC(v668, &unk_2809707D0, &unk_274A14B20);
              v201 = v643;
              if (v313)
              {
LABEL_154:
                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
LABEL_159:

                goto LABEL_160;
              }
            }
          }

LABEL_165:
          memcpy(v665, (v632 + 56), 0x81uLL);
          memcpy(v666, (v620 + 56), sizeof(v666));
          memcpy(v667, (v632 + 56), 0x81uLL);
          v400 = sub_274772C3C(v667);
          if (!v400)
          {
            CGSizeMake();
            v422 = *v421;
            v202 = v421[1];
            v423 = v421[2];
            memcpy(v664, (v620 + 56), 0x81uLL);
            if (!sub_274772C3C(v664))
            {
              CGSizeMake();
              v47 = v484[2];
              v485 = v422 == *v484 && v202 == v484[1];
              if (v485 || (sub_2749FDCC4() & 1) != 0)
              {
                v486 = v423[2];
                if (v486 != v47[2])
                {
                  v500 = OUTLINED_FUNCTION_12_11();
                  sub_274772B38(v500, v663);
                  OUTLINED_FUNCTION_8_11();
LABEL_251:
                  sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                  sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                  v201 = v643;
                  v202 = v641;
                  v47 = v656;
                  goto LABEL_121;
                }

                if (!v486 || v423 == v47)
                {
                  sub_274772B38(v620 + 56, v663);
                  OUTLINED_FUNCTION_8_11();
                  sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                  sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                  v201 = v643;
                  v202 = v641;
                  v47 = v656;
                  goto LABEL_294;
                }

                v487 = (v423 + 4);
                v488 = (v47 + 4);
                sub_274772B38(v620 + 56, v663);
                OUTLINED_FUNCTION_8_11();
                v489 = v486 - 1;
                OUTLINED_FUNCTION_33_5();
                while (2)
                {
                  memcpy(v662, v487, sizeof(v662));
                  memcpy(v663, v488, 0x58uLL);
                  v490 = v662[0] == v663[0] && v662[1] == v663[1];
                  if (!v490 && (sub_2749FDCC4() & 1) == 0)
                  {
                    goto LABEL_280;
                  }

                  v491 = v662[2] == v663[2] && v662[3] == v663[3];
                  if (!v491 && (sub_2749FDCC4() & 1) == 0)
                  {
                    goto LABEL_280;
                  }

                  v492 = v662[5];
                  if (!v662[5])
                  {
                    if (v663[5])
                    {
                      goto LABEL_280;
                    }

                    sub_27478C42C(v662, v661);
                    sub_27478C42C(v663, v661);
                    goto LABEL_239;
                  }

                  v628 = v489;
                  v629 = v488;
                  v632 = v487;
                  v493 = v663[8];
                  v494 = v662[7];
                  v47 = v662[8];
                  v495 = v662[6];
                  v496 = v662[4];
                  v201 = v663[5];
                  sub_27478C42C(v662, v661);
                  sub_27478C42C(v663, v661);
                  sub_274772C44(v496, v492, v495, v494, v47);

                  if (!v201)
                  {
                    swift_unknownObjectRelease();
                    sub_27478C488(v663);
                    sub_27478C488(v662);
                    goto LABEL_251;
                  }

                  swift_unknownObjectRetain();

                  v497 = [v47 isEqual_];
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  OUTLINED_FUNCTION_33_5();
                  v487 = v632;
                  v489 = v628;
                  v488 = v629;
                  if ((v497 & 1) == 0)
                  {
                    sub_27478C488(v663);
                    sub_27478C488(v662);
LABEL_280:
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                    v349 = v665;
                    v350 = &qword_280970170;
                    v351 = &qword_274A25830;
LABEL_151:
                    sub_27472ECBC(v349, v350, v351);
LABEL_160:
                    v202 = v641;
                    goto LABEL_121;
                  }

LABEL_239:
                  if (v662[9] == v663[9] && v662[10] == v663[10])
                  {
                    sub_27478C488(v663);
                    sub_27478C488(v662);
                    v202 = v641;
                  }

                  else
                  {
                    v499 = sub_2749FDCC4();
                    sub_27478C488(v663);
                    sub_27478C488(v662);
                    v202 = v641;
                    if ((v499 & 1) == 0)
                    {
                      sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                      v267 = v665;
                      v268 = &qword_280970170;
                      v269 = &qword_274A25830;
LABEL_101:
                      sub_27472ECBC(v267, v268, v269);
                      goto LABEL_121;
                    }
                  }

                  if (v489)
                  {
                    --v489;
                    v487 += 88;
                    v488 += 88;
                    continue;
                  }

                  break;
                }

                sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
LABEL_294:
                OUTLINED_FUNCTION_0_18();
                sub_2747E2D5C(v202, v570);
LABEL_289:
                v199 = v647;
LABEL_290:
                v48 = v658;
                goto LABEL_62;
              }
            }

            v424 = OUTLINED_FUNCTION_12_11();
            sub_274772B38(v424, v663);
            OUTLINED_FUNCTION_8_11();
            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            v323 = v665;
            v324 = &qword_280970170;
            v325 = &qword_274A25830;
LABEL_139:
            sub_27472ECBC(v323, v324, v325);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v326, v327);
            v201 = v643;
            goto LABEL_76;
          }

          if (v400 == 1)
          {
            CGSizeMake();
            v402 = v401;
            v403 = v620;
            memcpy(v664, (v620 + 56), 0x81uLL);
            if (sub_274772C3C(v664) == 1)
            {
              CGSizeMake();
              v405 = v404;
              v407 = v402[2];
              v406 = v402[3];
              v408 = v404[2];
              v409 = v404[3];
              v410 = *v402 == *v404 && v402[1] == v404[1];
              if (v410 || (sub_2749FDCC4() & 1) != 0)
              {
                v411 = v407 == v408 && v406 == v409;
                if (v411 || (sub_2749FDCC4() & 1) != 0)
                {
                  v412 = v402[4] == v405[4] && v402[5] == v405[5];
                  if (!v412 && (sub_2749FDCC4() & 1) == 0 || (v402[6] == v405[6] ? (v413 = v402[7] == v405[7]) : (v413 = 0), !v413 && (sub_2749FDCC4() & 1) == 0))
                  {
LABEL_259:
                    v520 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v520, v663);
                    OUTLINED_FUNCTION_8_11();
LABEL_260:
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
LABEL_261:
                    v47 = v656;
LABEL_262:
                    sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                    OUTLINED_FUNCTION_0_18();
                    v202 = v641;
                    goto LABEL_122;
                  }

                  v202 = v402[9];
                  v414 = v405[9];
                  if (v202)
                  {
                    v415 = v402[11];
                    v416 = v402[12];
                    v417 = v402[10];
                    v628 = v405[12];
                    v629 = v417;
                    v418 = v402[8];
                    v419 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v419, v663);
                    OUTLINED_FUNCTION_8_11();
                    sub_274772C44(v418, v202, v629, v415, v416);

                    if (!v414)
                    {
                      sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                      swift_unknownObjectRelease();
                      v201 = v643;
                      goto LABEL_261;
                    }

                    v420 = v628;
                    swift_unknownObjectRetain();

                    v202 = [v416 isEqual_];
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v201 = v643;
                    if ((v202 & 1) == 0)
                    {
                      goto LABEL_260;
                    }
                  }

                  else
                  {
                    if (v414)
                    {
                      goto LABEL_259;
                    }

                    v537 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v537, v663);
                    OUTLINED_FUNCTION_8_11();
                  }

                  v538 = v402[13] == v405[13] && v402[14] == v405[14];
                  v47 = v656;
                  if (!v538 && (sub_2749FDCC4() & 1) == 0)
                  {
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                    goto LABEL_262;
                  }

                  v275 = sub_2747843DC(v402[15], v405[15]);
                  sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                  sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                  OUTLINED_FUNCTION_0_18();
                  OUTLINED_FUNCTION_32_5(v539, v540);
LABEL_112:
                  v199 = v647;
                  if (v275)
                  {
                    goto LABEL_290;
                  }

                  goto LABEL_124;
                }
              }

              v479 = OUTLINED_FUNCTION_12_11();
            }

            else
            {
              v479 = v403 + 56;
            }

            sub_274772B38(v479, v663);
            OUTLINED_FUNCTION_8_11();
            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            v216 = v665;
            v217 = &qword_280970170;
            v218 = &qword_274A25830;
LABEL_74:
            sub_27472ECBC(v216, v217, v218);
            OUTLINED_FUNCTION_0_18();
            v202 = v641;
            goto LABEL_75;
          }

          CGSizeMake();
          v427 = *v425;
          v426 = v425[1];
          v429 = v425[2];
          v428 = v425[3];
          v430 = v425[5];
          v627 = v425[4];
          v629 = v430;
          LODWORD(v628) = *(v425 + 48);
          v431 = v620;
          memcpy(v664, (v620 + 56), 0x81uLL);
          v432 = sub_274772C3C(v664);
          v202 = v641;
          if (v432 == 2)
          {
            v620 = v431;
            CGSizeMake();
            v434 = *v433;
            v435 = v433[1];
            v436 = v433[2];
            v437 = v433[3];
            v438 = v433[4];
            v625 = v433[5];
            v626 = v438;
            v439 = *(v433 + 48);
            v440 = v427 == v434 && v426 == v435;
            if (v440 || (v441 = v436, v442 = v437, v443 = sub_2749FDCC4(), v437 = v442, v436 = v441, (v443 & 1) != 0))
            {
              v444 = v429 == v436 && v428 == v437;
              if (v444 || (sub_2749FDCC4() & 1) != 0)
              {
                v47 = v656;
                if (v628)
                {
                  v445 = v626;
                  if (v628 == 1)
                  {
                    if (v439 == 1)
                    {
                      v628 = sub_2747949D8();
                      v446 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v446, v447, v448);
                      v449 = OUTLINED_FUNCTION_16_7();
                      sub_2747E2DB4(v449, v450, 1);
                      v451 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v451, v452, v453);
                      v454 = OUTLINED_FUNCTION_20_9();
                      sub_2747E2DB4(v454, v455, v456);
                      v457 = OUTLINED_FUNCTION_12_11();
                      sub_274772B38(v457, v663);
                      OUTLINED_FUNCTION_8_11();
                      v458 = OUTLINED_FUNCTION_6_10();
                      sub_2747E2DB4(v458, v459, v460);
                      v461 = OUTLINED_FUNCTION_20_9();
                      sub_2747E2DB4(v461, v462, v463);
                      LODWORD(v632) = sub_2749FD604();
                      v464 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v464, v465, v466);
                      sub_2747D2EB8(v445, v625, 1);
                      sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                      sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                      v467 = OUTLINED_FUNCTION_20_9();
                      sub_2747D2EB8(v467, v468, v469);
                      v470 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v470, v471, v472);
                      v473 = OUTLINED_FUNCTION_20_9();
                      sub_2747D2EB8(v473, v474, v475);
                      v476 = OUTLINED_FUNCTION_6_10();
                      sub_2747D2EB8(v476, v477, v478);
                      if (v632)
                      {
                        goto LABEL_294;
                      }

                      goto LABEL_121;
                    }

                    v502 = v627;
                    v521 = OUTLINED_FUNCTION_6_10();
                    sub_2747E2DB4(v521, v522, v523);
                    v524 = OUTLINED_FUNCTION_16_7();
                    sub_2747E2DB4(v524, v525, v439);
                    v526 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v526, v663);
                    OUTLINED_FUNCTION_8_11();
                    sub_2747E2DB4(v502, v629, 1);
                    v527 = OUTLINED_FUNCTION_17_5();
                    sub_2747E2DB4(v527, v528, v529);
                    sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                    v530 = OUTLINED_FUNCTION_17_5();
                    sub_2747D2EB8(v530, v531, v532);
                    sub_2747D2EB8(v502, v629, 1);
                  }

                  else
                  {
                    if (v439 == 2)
                    {
                      v569 = OUTLINED_FUNCTION_12_11();
                      sub_274772B38(v569, v663);
                      OUTLINED_FUNCTION_8_11();
                      sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                      sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                      sub_2747D2EB8(v627, v629, 2);
                      sub_2747D2EB8(v445, v625, 2);
                      goto LABEL_294;
                    }

                    v515 = OUTLINED_FUNCTION_16_7();
                    sub_2747E2DB4(v515, v516, v439);
                    v517 = OUTLINED_FUNCTION_12_11();
                    v518 = v445;
                    v519 = v626;
                    sub_274772B38(v517, v663);
                    OUTLINED_FUNCTION_8_11();
                    sub_2747E2DB4(v519, v518, v439);
                    sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                    sub_2747D2EB8(v519, v518, v439);
                    v502 = v627;
                  }

                  v513 = v629;
                }

                else
                {
                  v501 = v626;
                  if (!v439)
                  {
                    if (v627 == v626 && v629 == v625)
                    {
                      LODWORD(v628) = 1;
                    }

                    else
                    {
                      LODWORD(v628) = sub_2749FDCC4();
                    }

                    sub_2747E2DB4(v627, v629, 0);
                    v541 = OUTLINED_FUNCTION_15_8();
                    sub_2747E2DB4(v541, v542, v543);
                    v544 = OUTLINED_FUNCTION_12_11();
                    sub_274772B38(v544, v663);
                    OUTLINED_FUNCTION_8_11();
                    v545 = OUTLINED_FUNCTION_28_5();
                    sub_2747E2DB4(v545, v546, v547);
                    v548 = OUTLINED_FUNCTION_15_8();
                    sub_2747E2DB4(v548, v549, v550);
                    sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                    sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                    v551 = OUTLINED_FUNCTION_15_8();
                    sub_2747D2EB8(v551, v552, v553);
                    v554 = OUTLINED_FUNCTION_28_5();
                    sub_2747D2EB8(v554, v555, v556);
                    v557 = OUTLINED_FUNCTION_28_5();
                    sub_2747D2EB8(v557, v558, v559);
                    v560 = OUTLINED_FUNCTION_15_8();
                    sub_2747D2EB8(v560, v561, v562);
                    if (v628)
                    {
                      goto LABEL_294;
                    }

                    goto LABEL_121;
                  }

                  v502 = v627;
                  v503 = v629;
                  sub_2747E2DB4(v627, v629, 0);
                  v504 = OUTLINED_FUNCTION_16_7();
                  sub_2747E2DB4(v504, v505, v439);
                  v506 = OUTLINED_FUNCTION_12_11();
                  LODWORD(v649) = v439;
                  v507 = v501;
                  v508 = v626;
                  sub_274772B38(v506, v663);
                  OUTLINED_FUNCTION_8_11();
                  sub_2747E2DB4(v502, v503, 0);
                  sub_2747E2DB4(v508, v507, v649);
                  sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
                  sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
                  v509 = OUTLINED_FUNCTION_17_5();
                  sub_2747D2EB8(v509, v510, v511);
                  v512 = v629;
                  sub_2747D2EB8(v502, v629, 0);
                  v513 = v512;
                }

                sub_2747D2EB8(v502, v513, v628);
                v533 = OUTLINED_FUNCTION_17_5();
                sub_2747D2EB8(v533, v534, v535);
                goto LABEL_121;
              }

              v514 = OUTLINED_FUNCTION_12_11();
              sub_274772B38(v514, v663);
              OUTLINED_FUNCTION_8_11();
              sub_27472ECBC(v665, &qword_280970170, &qword_274A25830);
              v481 = v680;
              v482 = &unk_280969270;
              v483 = &qword_274A270B0;
              goto LABEL_213;
            }

            v480 = OUTLINED_FUNCTION_12_11();
          }

          else
          {
            v480 = v431 + 56;
          }

          sub_274772B38(v480, v663);
          OUTLINED_FUNCTION_8_11();
          sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
          v481 = v665;
          v482 = &qword_280970170;
          v483 = &qword_274A25830;
LABEL_213:
          sub_27472ECBC(v481, v482, v483);
          OUTLINED_FUNCTION_0_18();
LABEL_75:
          sub_2747E2D5C(v202, v219);
LABEL_76:
          v47 = v656;
LABEL_123:
          v199 = v647;
LABEL_124:
          v48 = v658;
          goto LABEL_63;
        default:
          v211 = sub_274721C98(v682);
          v212 = *v211;
          v202 = v211[1];
          v213 = v211[2];
          v47 = v211[3];
          OUTLINED_FUNCTION_30_4();
          if (sub_274772AD0(v665))
          {
            OUTLINED_FUNCTION_29_6();
            v214 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v214, v215);
            v216 = v680;
            v217 = &unk_280969270;
            v218 = &qword_274A270B0;
            goto LABEL_74;
          }

          v270 = sub_274721C98(v665);
          v271 = v270[2];
          v272 = v270[3];
          v273 = v212 == *v270 && v202 == v270[1];
          if (!v273 && (sub_2749FDCC4() & 1) == 0)
          {
            OUTLINED_FUNCTION_29_6();
            v321 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v321, v322);
            v323 = v680;
            v324 = &unk_280969270;
            v325 = &qword_274A270B0;
            goto LABEL_139;
          }

          if (v213 != v271 || v47 != v272)
          {
            v275 = sub_2749FDCC4();
            OUTLINED_FUNCTION_29_6();
            v276 = OUTLINED_FUNCTION_24_7();
            sub_274772ADC(v276, v277);
            sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
            OUTLINED_FUNCTION_0_18();
            OUTLINED_FUNCTION_32_5(v278, v279);
            OUTLINED_FUNCTION_33_5();
            goto LABEL_112;
          }

          OUTLINED_FUNCTION_29_6();
          v565 = OUTLINED_FUNCTION_24_7();
          sub_274772ADC(v565, v566);
          sub_27472ECBC(v680, &unk_280969270, &qword_274A270B0);
          OUTLINED_FUNCTION_0_18();
          OUTLINED_FUNCTION_32_5(v567, v568);
          OUTLINED_FUNCTION_33_5();
          goto LABEL_289;
      }
    }

    v67 = v49;
    v659 = &v616;
    v68 = v37;
    *&v680[0] = v37;
    *(&v680[0] + 1) = v655;
    LOBYTE(v680[1]) = v654;
    MEMORY[0x28223BE20](v45);
    *(&v616 - 2) = v680;
    v69 = OUTLINED_FUNCTION_42();
    sub_2747CB3A4(v69, v70, v53);

    v71 = OUTLINED_FUNCTION_42();
    sub_2747CB3A4(v71, v72, v53);
    v73 = v650;
    v74 = sub_274947E70();
    v650 = v73;
    if (!v74)
    {
      v75 = OUTLINED_FUNCTION_42();
      sub_2747CB3B0(v75, v76, v53);

      v77 = OUTLINED_FUNCTION_42();
      v45 = sub_2747CB3B0(v77, v78, v53);
      v48 = v658;
      v37 = v68;
      v49 = v67;
      v47 = v656;
      goto LABEL_48;
    }

    v37 = v68;
    OUTLINED_FUNCTION_36_5();
    v152 = v654;
    sub_27477D408(v153, v154, v654);
    v155 = OUTLINED_FUNCTION_22_7();
    v157 = sub_27484F734(v155, v156, v152, v50);
    v159 = v158;
    v160 = OUTLINED_FUNCTION_42();
    sub_2747CB3B0(v160, v161, v53);

    v162 = OUTLINED_FUNCTION_22_7();
    sub_27478C4DC(v162, v163, v152);
    v164 = OUTLINED_FUNCTION_42();
    v45 = sub_2747CB3B0(v164, v165, v53);
    if (v159)
    {
      v166 = 0;
    }

    else
    {
      v166 = v157;
    }

    v47 = v656;
    v48 = v658;
LABEL_296:
    v647 = v660;
    LODWORD(v632) = 1;
    v649 = v166;
    v46 = *&v660 + 1;
    v44 = v648;
  }

  __break(1u);
LABEL_320:
  __break(1u);
LABEL_321:
  __break(1u);
LABEL_322:
  __break(1u);
LABEL_323:
  __break(1u);
}

uint64_t sub_2747E281C(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC10WorkflowUI37SmartShortcutPickerBaseViewController_style + 88) != 1)
  {
    return 0;
  }

  if (_UISolariumEnabled())
  {
    return 0;
  }

  return 2;
}

id SmartShortcutPickerBaseViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2749FCD64();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_2747E2930(uint64_t a1, uint64_t a2)
{
  v6[4] = a1;
  v6[5] = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2747F94FC;
  v6[3] = &block_descriptor_49;
  v3 = _Block_copy(v6);
  v4 = [v2 initWithSectionProvider_];
  _Block_release(v3);

  return v4;
}

uint64_t sub_2747E2A40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2747E2AF4;

  return sub_2747DF024(a1, v4, v5, v6);
}

uint64_t sub_2747E2AF4()
{

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747E2C38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerCollectionViewDataSource.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747E2C9C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_9();
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2747E2CFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2747E2D5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

id sub_2747E2DB4(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

id OUTLINED_FUNCTION_38_3(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_27477C094(a1, a2, a3, a4, a5, v5, 0);
}

uint64_t sub_2747E2E30(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for WFGridSectionContainerView();
  result = sub_2749F95A4();
  if (v4 <= 0x3F)
  {
    sub_2749FD014();
    result = sub_2749F95A4();
    if (v5 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_2747E2F84()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0(v0);
}

uint64_t sub_2747E2FD4()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0(v0);
}

uint64_t sub_2747E3024@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x88);
  swift_beginAccess();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F95A4();
  OUTLINED_FUNCTION_9();
  return (*(v4 + 16))(a1, &v1[v3]);
}

uint64_t sub_2747E3100()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0(v0);
}

uint64_t sub_2747E3150@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59_2();
  v5 = *((v4 & v3) + 0x98);
  swift_beginAccess();
  v6 = OUTLINED_FUNCTION_17_6();
  type metadata accessor for WFSectionedItemsSnapshot(v6, v7);
  OUTLINED_FUNCTION_9();
  return (*(v8 + 16))(a1, v1 + v5);
}

uint64_t sub_2747E32F8()
{
  OUTLINED_FUNCTION_59_2();
  OUTLINED_FUNCTION_15_0(v0);
}

id sub_2747E33E4(double a1, double a2, double a3, double a4)
{
  v9 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_59_2();
  v11 = MEMORY[0x277D84F98];
  *(v4 + *(v10 + 112)) = MEMORY[0x277D84F98];
  v12 = *((*v9 & *v4) + 0x78);
  v15 = *((v14 & v13) + 0x50);
  OUTLINED_FUNCTION_59_2();
  v17 = *(v16 + 88);
  OUTLINED_FUNCTION_59_2();
  v19 = *(v18 + 96);
  v20 = OUTLINED_FUNCTION_54_4();
  type metadata accessor for WFGridView.CellRegistrationEntry(v20, v21);
  *(v4 + v12) = sub_2749FCC84();
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v22 + 128)) = v11;
  OUTLINED_FUNCTION_7_9();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_9();
  v24 = *(v23 + 144);
  type metadata accessor for WFDrawerSearchControlsView();
  *(v4 + v24) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  sub_2747CA960(v15, v17, v19);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v25 + 160));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v26 + 168));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v27 + 176));
  OUTLINED_FUNCTION_7_9();
  v29 = *(v28 + 184);
  v30 = sub_2749F9284();
  OUTLINED_FUNCTION_38_4(v30);
  *(v4 + v29) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  v32 = *(v31 + 192);
  *(v4 + v32) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v33 + 200)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v34 + 208)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v4 + *(v35 + 216)) = 0;
  v36 = OUTLINED_FUNCTION_54_4();
  v40.receiver = v4;
  v40.super_class = type metadata accessor for WFGridView(v36, v37);
  v38 = objc_msgSendSuper2(&v40, sel_initWithFrame_, a1, a2, a3, a4);
  [v38 setDelegate_];
  return v38;
}

void sub_2747E36B0()
{
  v1 = OUTLINED_FUNCTION_17_6();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for WFGridView(v1, v2);
  objc_msgSendSuper2(&v3, sel_layoutSubviews);
  sub_2747E48DC();
  sub_2747E3D44();
}

void sub_2747E3728(void *a1)
{
  v1 = a1;
  sub_2747E36B0();
}

uint64_t sub_2747E3770@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v44 = a1;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_1();
  v47 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15();
  v46 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  OUTLINED_FUNCTION_34(v10);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v45 = &v44 - v12;
  v48 = v3;
  v13 = sub_2747E2F84();
  v14 = v13 + 64;
  OUTLINED_FUNCTION_22_8();
  v17 = v16 & v15;
  v19 = (v18 + 63) >> 6;

  v21 = 0;
  if (v17)
  {
    while (1)
    {
      v22 = v21;
LABEL_6:
      v23 = __clz(__rbit64(v17)) | (v22 << 6);
      v24 = *(v13 + 48);
      sub_2749F9284();
      OUTLINED_FUNCTION_9();
      v26 = v46;
      (*(v25 + 16))(v46, v24 + *(v25 + 72) * v23);
      v27 = v13;
      v28 = *(*(v13 + 56) + 8 * v23);
      v29 = v49;
      *(v26 + *(v49 + 48)) = v28;
      v30 = v47;
      sub_2747E2C9C(v26, v47, &qword_280968420, &qword_274A118D0);
      v31 = *(v30 + *(v29 + 48));
      v32 = v28;
      if (sub_2747E3AAC(v30, v31, v48, a2, a3))
      {
        break;
      }

      v17 &= v17 - 1;
      result = sub_27472ECBC(v30, &qword_280968420, &qword_274A118D0);
      v21 = v22;
      v13 = v27;
      if (!v17)
      {
        goto LABEL_3;
      }
    }

    v33 = v45;
    sub_2747E2C9C(v30, v45, &qword_280968420, &qword_274A118D0);
    v34 = v33;
    v35 = 0;
LABEL_10:
    v36 = v49;
    __swift_storeEnumTagSinglePayload(v34, v35, 1, v49);

    OUTLINED_FUNCTION_14_6(v33);
    if (v37)
    {
      sub_27472ECBC(v33, &unk_280968DD0, &qword_274A14050);
      v43 = sub_2749F9284();
      v40 = v44;
      v41 = 1;
      v42 = 1;
    }

    else
    {

      v38 = sub_2749F9284();
      OUTLINED_FUNCTION_9();
      (*(v39 + 32))(v44, v33, v38);
      OUTLINED_FUNCTION_143();
      v43 = v38;
    }

    return __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v19)
      {

        v33 = v45;
        v34 = v45;
        v35 = 1;
        goto LABEL_10;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_2747E3AAC(uint64_t a1, void *a2, uint64_t *a3, double a4, double a5)
{
  v29[1] = a1;
  v30 = a2;
  v8 = *((*MEMORY[0x277D85000] & *a3) + 0x50);
  type metadata accessor for WFGridSectionContainerView();
  v29[0] = v8;
  v9 = sub_2749F95A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v29 - v15;
  v17 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v19 = v29 - v18;
  sub_2747E3024(v16);
  sub_2749F9524();
  v20 = *(v10 + 8);
  v20(v16, v9);
  sub_2749F9274();
  v21 = v29[0];
  sub_2749FD024();

  sub_2747E3024(v13);
  sub_2749F95D4();
  v20(v13, v9);
  v22 = v31;
  [a3 convertPoint:v31 toView:{a4, a5}];
  v24 = v23;
  v26 = v25;

  [v30 frame];
  v32.x = v24;
  v32.y = v26;
  v27 = CGRectContainsPoint(v33, v32);
  (*(v17 + 8))(v19, v21);
  return v27;
}

void sub_2747E3D44()
{
  v1 = sub_2747E3348();
  [v0 addGestureRecognizer_];

  v2 = sub_2747E3348();
  [v2 addTarget:v0 action:sel_handleTap_];
}

void sub_2747E3DBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  v22 = v20;
  v24 = v23;
  v25 = *v22;
  v26 = *MEMORY[0x277D85000];
  v27 = *MEMORY[0x277D85000] & *v22;
  sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v130 = v29;
  v131 = v28;
  MEMORY[0x28223BE20](v28);
  v129 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2749F9284();
  v32 = *((v26 & v25) + 0x58);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v118 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v117 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v36);
  OUTLINED_FUNCTION_3_0();
  v126 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_15();
  v127 = v41;
  v42 = *((v26 & v25) + 0x50);
  OUTLINED_FUNCTION_3_0();
  v132 = v43;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_15();
  v133 = v46;
  *&v47 = v42;
  *(&v47 + 1) = v32;
  v134 = *(v27 + 96);
  v138[0] = v47;
  v138[1] = v134;
  v48 = type metadata accessor for WFSectionedItemsSnapshot(0, v138);
  v49 = OUTLINED_FUNCTION_34(v48);
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_5_1();
  v128 = v50;
  MEMORY[0x28223BE20](v51);
  v53 = &v109 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969498, &unk_274A14D60);
  OUTLINED_FUNCTION_34(v54);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_3_0();
  v57 = v56;
  v59 = MEMORY[0x28223BE20](v58);
  v61 = &v109 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v63 = &v109 - v62;
  [v24 locationInView_];
  sub_2747E3770(v21, v64, v65);
  if (__swift_getEnumTagSinglePayload(v21, 1, v31) == 1)
  {
    sub_27472ECBC(v21, &qword_280969498, &unk_274A14D60);
  }

  else
  {
    v114 = v61;
    v122 = v57;
    v66 = *(v57 + 32);
    v124 = v31;
    v113 = v57 + 32;
    v112 = v66;
    v66(v63, v21, v31);
    sub_2747E3150(v53);
    v116 = v32;
    sub_2749FD014();
    v115 = *(v134 + 8);
    v67 = sub_2749F95A4();
    v68 = sub_2749F9524();
    v69 = *(*(v67 - 8) + 8);
    v70 = OUTLINED_FUNCTION_105_0();
    v69(v70);
    v137 = v68;
    sub_2749FD014();
    OUTLINED_FUNCTION_12_12();
    swift_getWitnessTable();
    sub_2749FD194();

    v136 = v138[0];
    v135 = sub_2749F9274();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460, &qword_274A14D48);
    if (sub_2749FD224())
    {
      sub_2747E3150(v53);
      sub_2749F9524();
      v71 = OUTLINED_FUNCTION_105_0();
      v69(v71);
      sub_2749F9274();
      v72 = v133;
      sub_2749FD024();

      v73 = v128;
      sub_2747E3150(v128);
      OUTLINED_FUNCTION_105_0();
      sub_2749F95D4();
      (v69)(v73, v67);
      if (*&v138[0])
      {
        v111 = v42;
        sub_2749F9264();
        OUTLINED_FUNCTION_33_6();
        v74 = v116;
        sub_2749FD024();

        v76 = v126;
        v75 = v127;
        v77 = *(v126 + 32);
        v77(v127, v73, v74);
        if ((*(*(&v134 + 1) + 24))(v74))
        {
          sub_2747E32F8();
          v78 = v120;
          v79 = TupleTypeMetadata2;
          sub_2749FCCD4();
          v80 = v78;

          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v78, 1, v79);
          v82 = v124;
          if (EnumTagSinglePayload == 1)
          {
            OUTLINED_FUNCTION_40_5();
            v83(v80, v118);
            v84 = v122;
            v85 = v111;
            v86 = v132;
          }

          else
          {
            v92 = *(v79 + 48);
            v93 = v114;
            v112(v114, v80, v124);
            v94 = v80 + v92;
            v95 = v119;
            v77(v119, v94, v74);
            v96 = v93;
            if (sub_2747E3260())
            {
              swift_getObjectType();
              v97 = OUTLINED_FUNCTION_45();
              v98(v97);
              swift_unknownObjectRelease();
            }

            (*(v76 + 8))(v95, v74);
            v84 = v122;
            v82 = v124;
            (*(v122 + 8))(v96, v124);
            v85 = v111;
            v86 = v132;
            v79 = TupleTypeMetadata2;
          }

          v110 = v63;
          (*(v86 + 16))(v125, v133, v85);
          v99 = *(v79 + 48);
          v100 = *(v84 + 16);
          v101 = v121;
          v100(v121, v63, v82);
          v102 = v127;
          (*(v76 + 16))(v101 + v99, v127, v74);
          OUTLINED_FUNCTION_143();
          __swift_storeEnumTagSinglePayload(v103, v104, v105, v79);
          swift_beginAccess();
          sub_2749FCCC4();
          v106 = v102;
          v63 = v110;
          sub_2749FCCE4();
          swift_endAccess();
          if (sub_2747E3260())
          {
            swift_getObjectType();
            v107 = OUTLINED_FUNCTION_45();
            v108(v107);
            swift_unknownObjectRelease();
          }

          (*(v76 + 8))(v106, v74);
          (*(v86 + 8))(v133, v111);
        }

        else
        {
          (*(v76 + 8))(v75, v74);
          (*(v132 + 8))(v133, v111);
        }
      }

      else
      {
        (*(v132 + 8))(v72, v42);
      }
    }

    else
    {
      v87 = v129;
      sub_2749FA3D4();
      v88 = sub_2749FA4D4();
      v89 = sub_2749FD2D4();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_274719000, v88, v89, "Invalid section index", v90, 2u);
        OUTLINED_FUNCTION_31();
      }

      (*(v130 + 8))(v87, v131);
    }

    OUTLINED_FUNCTION_40_5();
    v91(v63, v124);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747E48DC()
{
  v1 = v0;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v378 = sub_2749FA4E4();
  OUTLINED_FUNCTION_43();
  v343 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968DD0, &qword_274A14050);
  v9 = OUTLINED_FUNCTION_34(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v11);
  v409 = sub_2749F9284();
  OUTLINED_FUNCTION_43();
  v389 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v16);
  v17 = type metadata accessor for WFGridSectionContainerView();
  v18 = *((v3 & v2) + 0x50);
  v19 = *((v3 & v2) + 0x60);
  v20 = *(v19 + 8);
  v349 = v17;
  v398 = sub_2749F95A4();
  OUTLINED_FUNCTION_43();
  v345 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v26);
  v27 = *((v3 & v2) + 0x58);
  v362 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v422 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v30);
  v32 = &v341 - v31;
  OUTLINED_FUNCTION_3_0();
  v420 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &v341 - v37;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v39);
  OUTLINED_FUNCTION_3_0();
  v416 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_10_1(v43);
  v44.n128_u64[0] = v18;
  v44.n128_u64[1] = v27;
  v45 = *((v3 & v2) + 0x68);
  v399 = v19;
  *&v46 = v19;
  *&v410 = v45;
  *(&v46 + 1) = v45;
  v374 = v46;
  v428 = v46;
  v375 = v44;
  v427 = v44;
  v47 = type metadata accessor for WFSectionedItemsSnapshot(0, &v427);
  v48 = OUTLINED_FUNCTION_34(v47);
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_3_3();
  MEMORY[0x28223BE20](v49);
  v51 = &v341 - v50;
  [v1 bounds];
  Width = CGRectGetWidth(v439);
  v53 = &selRef_colorWithAlphaComponent_;
  [v1 contentSize];
  [v1 setContentSize_];
  v438 = 0.0;
  v54 = sub_2747E3214();
  if (v54)
  {
    v56 = v54;
    v424 = v55;
    [v1 contentOffset];
    v58 = 0.0;
    if (v57 + -70.0 < 0.0)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v57 + -70.0;
    }

    [v1 frame];
    v61 = v60 + v59 + 70.0;
    [v1 contentSize];
    if (v62 >= v61)
    {
      v63 = v61;
    }

    else
    {
      v63 = v62;
    }

    v415 = v63;
    v423 = [v1 effectiveUserInterfaceLayoutDirection];
    v437 = 0;
    sub_2747E3150(v51);
    v417 = v27;
    v64 = sub_2749FD014();
    v360 = v20;
    v65 = sub_2749F95A4();
    v66 = sub_2749F9524();
    v67 = *(v65 - 8);
    v68 = *(v67 + 8);
    v384 = v65;
    v383 = v68;
    v382 = v67 + 8;
    v68(v51, v65);
    v386 = v66;
    v69 = sub_2749FD004();
    if ((v69 & 0x8000000000000000) == 0)
    {
      v419 = v1;
      v402 = v18;
      v425 = v56;
      if (v69)
      {
        v371 = v64;
        OUTLINED_FUNCTION_47_2();
        v70 = 0;
        v392 = 0;
        OUTLINED_FUNCTION_50_5();
        v342 = *(v71 + 144);
        OUTLINED_FUNCTION_50_5();
        v396 = *(v72 + 112);
        v370 = v420 + 32;
        v361 = v422 + 8;
        v369 = v399 + 16;
        v344 = *((v74 & v73) + 0x88);
        v357 = v399 + 32;
        v405 = (v424 + 11);
        v408 = (v424 + 10);
        OUTLINED_FUNCTION_53();
        v368 = v75;
        v356 = v76 + 56;
        v367 = v76 + 40;
        v350 = v416 + 16;
        v388 = v76 + 24;
        v414 = (v410 + 16);
        v418 = v77 + 8;
        OUTLINED_FUNCTION_53();
        v395 = v78;
        v352 = &v428;
        v348 = "ontainerView";
        v355 = v79 + 48;
        v381 = v80 + 8;
        v351 = 1107296256;
        v347 = 0.9;
        v346 = 0.45;
        OUTLINED_FUNCTION_23_8();
        OUTLINED_FUNCTION_41_6();
        v372 = v32;
        v380 = v81;
        v403 = v38;
        while (1)
        {
          v82 = v53;
          v422 = v70;
          sub_2749FD024();
          v83 = v18;
          OUTLINED_FUNCTION_33_6();
          sub_2747E3150(v84);
          v85 = v384;
          sub_2749F95D4();
          v86 = v383(v56, v85);
          v87 = v427.n128_u64[0];
          if (v427.n128_u64[0])
          {
            MEMORY[0x28223BE20](v86);
            v88 = OUTLINED_FUNCTION_35_4();
            *(v89 - 32) = v88;
            *(v89 - 16) = v90;
            OUTLINED_FUNCTION_13_11();
            swift_getWitnessTable();
            OUTLINED_FUNCTION_33_6();
            v91 = v392;
            sub_2749FCED4();
            v392 = v91;
            v92 = v417;
            OUTLINED_FUNCTION_58_1(v56);
            v416 = v87;
            if (v93)
            {
              v427.n128_u64[0] = v87;
              swift_getWitnessTable();
              v97 = v372;
              sub_2749FD1D4();
              OUTLINED_FUNCTION_58_1(v56);
              v56 = v425;
              v53 = v82;
              if (!v93)
              {
                OUTLINED_FUNCTION_8_2();
                v94(v379, v362);
              }
            }

            else
            {
              OUTLINED_FUNCTION_8_2();
              v97 = v372;
              OUTLINED_FUNCTION_68();
              v98();
              OUTLINED_FUNCTION_143();
              __swift_storeEnumTagSinglePayload(v99, v100, v101, v92);
              v56 = v425;
              v53 = v82;
            }

            OUTLINED_FUNCTION_58_1(v97);
            if (v93)
            {
              OUTLINED_FUNCTION_8_2();
              v102 = OUTLINED_FUNCTION_51_3();
              v103(v102, v18);

              OUTLINED_FUNCTION_8_2();
              v104(v97, v362);
              v96 = v422;
            }

            else
            {
              v105 = v58;
              OUTLINED_FUNCTION_8_2();
              v106 = v373;
              v107(v373, v97, v92);
              v108 = v399;
              OUTLINED_FUNCTION_42_3();
              v365 = v109;
              v110 = v109(v83, v108);
              v111 = (*(v108 + 32))(v83, v108);
              [v1 contentSize];
              v113 = v112 - (v110 + v111 + v110 + v111);
              ObjectType = swift_getObjectType();
              v115 = v424;
              v404 = v424[11];
              v116 = v404(v106, ObjectType, v424, v113);
              v117 = v115[10];
              v420 = ObjectType;
              v407 = v117;
              v413 = v111 + v111 + v117(v106, ObjectType, v115);
              v433.n128_f64[0] = v413;
              v118 = trunc(v113 / v116);
              v119 = 0.0;
              if (v118 > 1.0)
              {
                v119 = fmod(v113, v116) / (v118 + -1.0);
              }

              if (v422 || (OUTLINED_FUNCTION_50_5(), *(v1 + *(v120 + 208)) == 1))
              {
                v105 = v105 + v110;
                v438 = v105;
              }

              sub_2747E3024(v359);
              sub_2749F95D4();
              v121 = *v368;
              v122 = OUTLINED_FUNCTION_45();
              v121(v122);
              v123 = v427.n128_u64[0];
              v366 = v105;
              v364 = v121;
              if (!v427.n128_u64[0])
              {
                v124 = objc_allocWithZone(v349);
                v123 = sub_2747E99D8(v111);
              }

              v125 = v399;
              v126 = *(v399 + 56);
              v127 = v123;
              OUTLINED_FUNCTION_42_3();
              v126(v83, v125);
              v128 = sub_2749FCD64();

              v401 = v127;
              [v127 setAccessibilityLabel_];

              v436 = MEMORY[0x277D84F90];
              v129 = v111;
              OUTLINED_FUNCTION_30_5();
              if (v93)
              {
                [v1 contentSize];
                v129 = v130 - (v110 + v110) - v111;
              }

              v435 = *&v129;
              v432 = v111;
              OUTLINED_FUNCTION_49_4();
              v132 = v421;
              v363 = *(v131 + 40);
              (v363)(v83);
              if (v133)
              {
                sub_2747E3100();
                v134 = v1;
                v135 = v83;
                type metadata accessor for WFDrawerSearchControlsView();
                sub_2749FCCD4();

                v136 = v427.n128_u64[0];
                if (v427.n128_u64[0])
                {

                  v137 = v136;
                }

                else
                {
                  v140 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
                  *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarHorizontalEdgeInsets] = 0x4020000000000000;
                  *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBarTopInset] = 0;
                  v141 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
                  v142 = *&v140[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
                  v412 = v140;
                  v143 = [v142 searchTextField];
                  v144 = sub_2749FCD64();

                  [v143 setPlaceholder_];

                  v145 = *&v140[v141];
                  v137 = v412;
                  [v145 setDelegate_];
                  OUTLINED_FUNCTION_8_2();
                  v146 = OUTLINED_FUNCTION_51_3();
                  v147(v146, v132, v135);
                  v426 = v137;
                  OUTLINED_FUNCTION_21_9(v134 + v342);
                  sub_2749FCCC4();
                  sub_2749FCCE4();
                  swift_endAccess();
                  v136 = 0;
                }

                v1 = v134;
                v148 = v136;
                v149 = [v137 superview];

                if (v149)
                {
                }

                else
                {
                  [*&v401[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] addSubview_];
                }

                v150 = v402;
                [v134 contentSize];
                v152 = v151 - (v110 + v110);
                v153 = objc_opt_self();
                v154 = v137;
                [v153 begin];
                [v153 setDisableActions_];
                [v154 setFrame_];
                [v153 commit];
                v155 = v399;
                v139 = *(v399 + 24);
                OUTLINED_FUNCTION_42_3();
                v432 = v111 + (v139)(v150, v155) + 46.0;
                v156 = (v139)(v150, v155);
                v433.n128_f64[0] = v413 + v156 + 46.0;
                MEMORY[0x277C5ECC0]();
                if (*((v436 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v436 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_2749FCFB4();
                }

                sub_2749FCFF4();
                v138 = v436;

                OUTLINED_FUNCTION_41_6();
              }

              else
              {
                v138 = MEMORY[0x277D84F90];
                v139 = v132;
              }

              v157 = v417;
              *&v158 = COERCE_DOUBLE(sub_2749FD004());
              if (v158 < 0)
              {
                goto LABEL_115;
              }

              v159 = *&v158;
              v406 = v138;
              if (*&v158 != 0.0)
              {
                v412 = *v414;
                v411 = objc_opt_self();
                v160 = 0;
                v397 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
                v413 = v159;
                do
                {
                  sub_2749FD024();
                  if (((v412)(v157, v410) & 1) != 0 && (v437 & 1) == 0)
                  {
                    v435 = *&v129;
                    if (v160)
                    {
                      v161 = v1;
                      v162 = v385;
                      sub_2749FD024();
                      OUTLINED_FUNCTION_48_3();
                      OUTLINED_FUNCTION_45_3();
                      v164 = v163();
                      OUTLINED_FUNCTION_8_2();
                      v165 = v162;
                      v1 = v161;
                      v139 = v421;
                      v166(v165, v157);
                      OUTLINED_FUNCTION_49_4();
                      v168 = (*(v167 + 24))(v402);
                      v432 = v432 + v164 + v168;
                    }
                  }

                  v437 = 0;
                  v169 = v411;
                  [v411 begin];
                  [v169 setDisableActions:1];
                  v431 = 0;
                  v170 = v424;
                  v171 = sub_2747E7718(v160, v422, v1, &v438, &v432, v59, v415, v425, v424, v38, &v431, v139);
                  v139 = v38;
                  [v169 commit];
                  if (v171)
                  {
                    v172 = v404(v38, v420, v170, v113);
                    OUTLINED_FUNCTION_30_5();
                    [v169 begin];
                    [v169 setDisableActions:1];
                    v173 = v171;
                    [v173 layoutIfNeeded];
                    v174 = [v1 traitCollection];
                    [v174 displayScale];

                    BSFloatRoundForScale();
                    v176 = v175;
                    v177 = [v1 traitCollection];
                    [v177 displayScale];

                    BSFloatRoundForScale();
                    v179 = v178;
                    OUTLINED_FUNCTION_48_3();
                    OUTLINED_FUNCTION_45_3();
                    [v173 setFrame_];

                    v181 = [v169 commit];
                    if (v431 == 1)
                    {
                      OUTLINED_FUNCTION_33_6();
                      MEMORY[0x277C5AFB0](v160, v422);
                      v182 = v419;
                      v183 = v396;
                      OUTLINED_FUNCTION_21_9(v419 + v396);
                      v184 = v173;
                      swift_isUniquelyReferenced_nonNull_native();
                      v426 = *(v182 + v183);
                      sub_2748F9C64(v184, v38);
                      *(v182 + v183) = v426;
                      OUTLINED_FUNCTION_8_2();
                      v185 = OUTLINED_FUNCTION_27_6();
                      v186(v185);
                      swift_endAccess();
                      v181 = [*&v401[v397] addSubview_];
                    }

                    MEMORY[0x277C5ECC0](v181);
                    v187 = v413;
                    if (*((v436 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v436 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_2749FCFB4();
                    }

                    sub_2749FCFF4();
                    v406 = v436;

                    v1 = v419;
                    v38 = v403;
                    OUTLINED_FUNCTION_41_6();
                    v188 = v416;
                  }

                  else
                  {
                    OUTLINED_FUNCTION_41_6();
                    v188 = v416;
                    v187 = v413;
                  }

                  v189 = v160 + 1;
                  OUTLINED_FUNCTION_30_5();
                  if (v93)
                  {
                    v190 = 1;
                  }

                  else
                  {
                    v190 = 0;
                  }

                  sub_2747E72E0(v160, v188, v38, v425, v424, v190, &v435, v1, v113, v119, v129, &v432, v139, &v433, &v437);
                  OUTLINED_FUNCTION_8_2();
                  v157 = v417;
                  v191(v38, v417);
                  ++v160;
                }

                while (*&v187 != v189);
              }

              sub_27479BB64(v406);
              v192 = sub_2749FCF74();

              v193 = v401;
              [v401 setAccessibilityElements_];

              v194 = v402;
              v195 = v399;
              v196 = v365;
              v197 = v365(v402, v399);
              [v1 contentSize];
              v199 = v198;
              v200 = v196(v194, v195);
              v201 = v199 - (v200 + v200);
              v202 = v433.n128_f64[0];
              sub_2747E3024(v358);
              sub_2749F95D4();
              v203 = OUTLINED_FUNCTION_45();
              v364(v203);
              v204 = v427.n128_u64[0];
              if (v427.n128_u64[0])
              {

                v205 = v366;
                v206 = v193;
              }

              else
              {
                v207 = objc_opt_self();
                v208 = swift_allocObject();
                *(v208 + 16) = v193;
                v205 = v366;
                *(v208 + 24) = v197;
                *(v208 + 32) = v205;
                *(v208 + 40) = v201;
                *(v208 + 48) = v202;
                *(v208 + 56) = v1;
                v209 = v193;
                v210 = v1;
                OUTLINED_FUNCTION_57_1();
                v211 = swift_allocObject();
                *(v211 + 16) = sub_2747EA0F0;
                *(v211 + 24) = v208;
                v429 = sub_2747B6980;
                v430 = v211;
                OUTLINED_FUNCTION_10_8();
                *(v212 - 256) = v213;
                v427.n128_u64[1] = v351;
                *&v428 = sub_274963064;
                v214 = OUTLINED_FUNCTION_36_6(&block_descriptor_17);

                [v207 performWithoutAnimation_];
                _Block_release(v214);
                LOBYTE(v207) = swift_isEscapingClosureAtFileLocation();

                if (v207)
                {
                  goto LABEL_116;
                }

                v215 = v209;
                [v210 insertSubview:v215 atIndex:0];
                [v215 setAlpha_];
                MEMORY[8] = 0;
                MEMORY[0x10] = 0;
                v427.n128_u64[0] = 0x3FF0000000000000;
                *(&v428 + 1) = 0x3FF0000000000000;
                MEMORY[0x20] = 0;
                MEMORY[0x28] = 0;
                [v215 setTransform_];

                OUTLINED_FUNCTION_8_2();
                v216 = OUTLINED_FUNCTION_51_3();
                v217(v216, v421, v402);
                v426 = v215;
                OUTLINED_FUNCTION_21_9(v1 + v344);
                v218 = v215;
                v219 = sub_2749F95E4();
                MEMORY[0x28223BE20](v219);
                v220 = v392;
                sub_2749F9554();
                v392 = v220;

                swift_endAccess();
                v354 = sub_2747EA0F0;
                v353 = v208;
                v206 = v401;
              }

              OUTLINED_FUNCTION_50_5();
              v53 = v394;
              if (*(v1 + *(v221 + 200)) == 1)
              {
                v222 = [v206 layer];
                v223 = sub_2749F9884();
                v224 = sub_2749FCD64();
                [v222 setValue:v223 forKeyPath:v224];

                v225 = objc_opt_self();
                v226 = swift_allocObject();
                *(v226 + 16) = v401;
                v429 = sub_2747EA124;
                v430 = v226;
                OUTLINED_FUNCTION_10_8();
                *(v227 - 256) = v228;
                v229 = v351;
                v427.n128_u64[1] = v351;
                *&v428 = sub_274760264;
                v230 = OUTLINED_FUNCTION_36_6(&block_descriptor_23);
                v231 = v401;

                v429 = CGSizeMake;
                v430 = 0;
                v427.n128_u64[0] = MEMORY[0x277D85DD0];
                v427.n128_u64[1] = v229;
                *&v428 = sub_27480D7B8;
                v232 = OUTLINED_FUNCTION_36_6(&block_descriptor_26);
                [v225 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
                v1 = v419;
                _Block_release(v232);
                v233 = v230;
                v206 = v401;
                _Block_release(v233);
              }

              [v206 setFrame_];
              OUTLINED_FUNCTION_49_4();
              v18 = v402;
              *&v235 = COERCE_DOUBLE((*(v234 + 48))(v402));
              v56 = v417;
              if ((v236 & 1) == 0)
              {
                v237 = *&v235;
                v238 = [*&v206[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                [v238 setCornerRadius_];
              }

              OUTLINED_FUNCTION_42_3();
              OUTLINED_FUNCTION_49_4();
              v363();
              if (v239)
              {

                v240 = [*&v206[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView] layer];
                [v240 setCornerRadius_];

                v206 = v240;
              }

              v96 = v422;

              OUTLINED_FUNCTION_8_2();
              v241(v373, v56);
              OUTLINED_FUNCTION_8_2();
              v242 = OUTLINED_FUNCTION_51_3();
              v243(v242, v18);
              v58 = v205 + v202;
              v438 = v58;
            }
          }

          else
          {
            OUTLINED_FUNCTION_8_2();
            v95(v56, v18);
            v96 = v422;
            v53 = v82;
          }

          v70 = v96 + 1;
          if (v70 == v380)
          {
            goto LABEL_74;
          }
        }
      }

      OUTLINED_FUNCTION_47_2();
      v392 = 0;
      OUTLINED_FUNCTION_23_8();
LABEL_74:
      [v1 contentSize];
      [v1 setContentSize_];
      v246 = sub_2747E2F84();
      v408 = 0;
      v247 = 0;
      v416 = v246;
      OUTLINED_FUNCTION_22_8();
      v250 = v249 & v248;
      v251 = *MEMORY[0x277D85000] & *v1;
      v406 = *(v251 + 0x80);
      v407 = *(v251 + 112);
      v422 = v389 + 16;
      v423 = (v389 + 32);
      OUTLINED_FUNCTION_53();
      v421 = v252;
      v414 = *MEMORY[0x277D7A490];
      v417 = (v253 + 8);
      OUTLINED_FUNCTION_53();
      v413 = v256;
      *&v257 = 136315138;
      v410 = v257;
      v420 = v255;
      v418 = v254;
      if (!v250)
      {
        goto LABEL_76;
      }

      do
      {
        v258 = v53;
        v259 = v409;
        v260 = v247;
LABEL_80:
        v261 = __clz(__rbit64(v250));
        v250 &= v250 - 1;
        v262 = v261 | (v260 << 6);
        v263 = v416;
        (*(v389 + 16))(v400, *(v416 + 48) + *(v389 + 72) * v262, v259);
        v264 = *(*(v263 + 56) + 8 * v262);
        v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
        v266 = *(v265 + 48);
        v53 = v258;
        v267 = OUTLINED_FUNCTION_105_0();
        v268(v267);
        *(v258 + v266) = v264;
        OUTLINED_FUNCTION_143();
        __swift_storeEnumTagSinglePayload(v269, v270, v271, v265);
        v272 = v264;
LABEL_81:
        v273 = v391;
        sub_2747E2C9C(v53, v391, &unk_280968DD0, &qword_274A14050);
        v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
        OUTLINED_FUNCTION_14_6(v273);
        if (v93)
        {
          swift_unknownObjectRelease();

          OUTLINED_FUNCTION_57_1();
          return sub_27471F8A4(v408, 0);
        }

        v424 = *(v273 + *(v274 + 48));
        OUTLINED_FUNCTION_8_2();
        v275 = v393;
        v276(v393, v273, v409);
        v277 = v390;
        v53 = v419;
        sub_2747E3024(v390);
        v278 = v398;
        v279 = sub_2749F9524();
        v280 = v421;
        v281 = *v421;
        (*v421)(v277, v278);
        v436 = v279;
        sub_2749FD014();
        OUTLINED_FUNCTION_12_12();
        swift_getWitnessTable();
        sub_2749FD194();

        v433 = v427;
        v435 = sub_2749F9274();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460, &qword_274A14D48);
        if (sub_2749FD224())
        {
          v282 = v376;
          sub_2747E3024(v376);
          v283 = sub_2749F9534();
          v281(v282, v278);
          v284 = sub_2749F9274();
          if ((v283 & 0xC000000000000001) != 0)
          {
            v286 = MEMORY[0x277C5F6D0](v284, v283);
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_44_2();
          }

          else
          {
            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_44_2();
            if ((v285 & 0x8000000000000000) != 0)
            {
              goto LABEL_113;
            }

            if (v285 >= *((v283 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_114;
            }

            v286 = *(v283 + 8 * v285 + 32);
          }

          [v280 frame];
          [v286 convertRect:v419 toCoordinateSpace:?];
          x = v440.origin.x;
          y = v440.origin.y;
          v289 = v440.size.width;
          height = v440.size.height;
          if (CGRectGetMaxY(v440) < v59 || (v441.origin.x = x, v441.origin.y = y, v441.size.width = v289, v441.size.height = height, v415 < CGRectGetMinY(v441)))
          {
            [v280 removeFromSuperview];
            v310 = v419;
            v436 = sub_2747E2FD4();
            MEMORY[0x28223BE20](v436);
            v311 = OUTLINED_FUNCTION_35_4();
            *(v312 - 48) = v311;
            *(v312 - 32) = v313;
            *(v312 - 16) = v280;
            v428 = v313;
            v427 = v311;
            type metadata accessor for WFGridView.CellRegistrationEntry(255, &v427);
            v53 = sub_2749FD014();
            OUTLINED_FUNCTION_13_11();
            swift_getWitnessTable();
            v314 = v392;
            sub_2749FCED4();
            v392 = v314;

            if (v433.n128_u64[0])
            {
              v315 = v433.n128_u64[1];
              v411 = v433.n128_u64[0];
              v316 = v434;
              v317 = v406;
              OUTLINED_FUNCTION_21_9(v310 + v406);
              sub_27471F8A4(v408, 0);
              swift_isUniquelyReferenced_nonNull_native();
              v433.n128_u64[0] = *(v310 + v317);
              v318 = v433.n128_u64[0];
              *(v310 + v317) = 0x8000000000000000;
              v412 = v315;
              v319 = v315;
              v320 = v316;
              v321 = sub_274797CC0(v319, v316);
              v323 = *(v318 + 16);
              v324 = (v322 & 1) == 0;
              v53 = (v323 + v324);
              if (__OFADD__(v323, v324))
              {
                goto LABEL_118;
              }

              v280 = v321;
              v325 = v322;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969478, &qword_274A14D58);
              v326 = sub_2749FDA84();
              v327 = v433.n128_u64[0];
              if (v326)
              {
                v328 = sub_274797CC0(v412, v320);
                if ((v325 & 1) != (v329 & 1))
                {
                  goto LABEL_119;
                }

                v280 = v328;
              }

              *(v419 + v317) = v327;
              if (v325)
              {
                sub_2747EA090(v411);
              }

              else
              {
                sub_274972654(&v433);
                sub_2748FB298();
              }

              OUTLINED_FUNCTION_44_2();
              sub_274765168(&v433, v280);
              v337 = v433.n128_u64[0];
              swift_endAccess();

              v408 = sub_274972654;
            }

            else
            {
              OUTLINED_FUNCTION_33_6();
              sub_2749FA3D4();
              v330 = v280;
              v331 = sub_2749FA4D4();
              v332 = sub_2749FD2D4();

              if (os_log_type_enabled(v331, v332))
              {
                v333 = swift_slowAlloc();
                v280 = swift_slowAlloc();
                OUTLINED_FUNCTION_31_9(v280);
                v433.n128_u64[0] = swift_getObjectType();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969470, &qword_274A14D50);
                v334 = sub_2749FCDC4();
                v53 = sub_2747AF460(v334, v335, &v427);

                *(v333 + 4) = v53;
                _os_log_impl(&dword_274719000, v331, v332, "Recycled cell without a reuse identifier, cell is of type: %s", v333, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v280);
                OUTLINED_FUNCTION_31();
                OUTLINED_FUNCTION_44_2();
                OUTLINED_FUNCTION_31();
              }

              OUTLINED_FUNCTION_8_2();
              v336(&v341, v378);
            }

            OUTLINED_FUNCTION_23_8();
            OUTLINED_FUNCTION_21_9(v407 + v419);
            v338 = sub_274973FF0();
            swift_endAccess();

            OUTLINED_FUNCTION_8_2();
            v339 = OUTLINED_FUNCTION_27_6();
            v340(v339);
          }

          else
          {
            OUTLINED_FUNCTION_8_2();
            v291 = OUTLINED_FUNCTION_27_6();
            v292(v291);
          }
        }

        else
        {
          v53 = v387;
          sub_2749FA3D4();
          OUTLINED_FUNCTION_8_2();
          v293 = v377;
          v294 = v409;
          v295(v377, v275, v409);
          v296 = sub_2749FA4D4();
          v297 = sub_2749FD2D4();
          if (os_log_type_enabled(v296, v297))
          {
            v298 = v293;
            v299 = swift_slowAlloc();
            v412 = swift_slowAlloc();
            OUTLINED_FUNCTION_31_9(v412);
            sub_2747E9FF4();
            v300 = sub_2749FDC74();
            v411 = v296;
            v301 = v300;
            v303 = v302;
            v53 = *v417;
            (*v417)(v298, v294);
            v304 = sub_2747AF460(v301, v303, &v427);

            *(v299 + 4) = v304;
            v305 = v411;
            _os_log_impl(&dword_274719000, v411, v297, "Invalid on screen cell index path %s", v299, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v412);
            OUTLINED_FUNCTION_31();
            OUTLINED_FUNCTION_31();

            OUTLINED_FUNCTION_8_2();
            v306(v387, v378);
            (v53)(v393, v294);
          }

          else
          {

            v307 = *v417;
            (*v417)(v293, v294);
            OUTLINED_FUNCTION_8_2();
            v308(v53, v378);
            (v307)(v275, v294);
          }

          OUTLINED_FUNCTION_23_8();
        }

        v255 = v420;
        v254 = v418;
      }

      while (v250);
LABEL_76:
      while (1)
      {
        v260 = v247 + 1;
        if (__OFADD__(v247, 1))
        {
          break;
        }

        if (v260 >= v254)
        {
          v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968420, &qword_274A118D0);
          __swift_storeEnumTagSinglePayload(v53, 1, 1, v309);
          v250 = 0;
          goto LABEL_81;
        }

        v250 = *(v255 + 8 * v260);
        ++v247;
        if (v250)
        {
          v258 = v53;
          v259 = v409;
          v247 = v260;
          goto LABEL_80;
        }
      }

      __break(1u);
LABEL_113:
      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
    }

    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    result = sub_2749FDD54();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v244 = swift_allocObject();
    *(v244 + 16) = xmmword_274A0EF10;
    *(v244 + 56) = MEMORY[0x277D837D0];
    *(v244 + 32) = 0xD000000000000043;
    *(v244 + 40) = 0x8000000274A2DC30;
    sub_2749FD8A4();
  }

  return result;
}

void sub_2747E72E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double *a7, void *a8, double a9, double a10, double a11, double *a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  v55 = a7;
  v56 = a4;
  LODWORD(v54) = a6;
  v57 = a5;
  v58 = a3;
  v21 = (*MEMORY[0x277D85000] & *a8);
  v22 = v21[11];
  v53 = *(v22 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v51 - v23;
  v63 = v25;
  sub_2749FD014();
  swift_getWitnessTable();
  sub_2749FD194();
  v61 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280969460, &qword_274A14D48);
  sub_2747EA12C();
  sub_2749FCD14();
  if ((v60 & 1) != 0 || v59 != a1)
  {
    if ((*(v21[13] + 16))(v22))
    {
LABEL_4:
      v53 = a14;
      v54 = a15;
      v51 = a13;
      v52 = a12;
      *v55 = a11;
      v26 = v21;
      v27 = v21[12];
      v28 = v57;
      v55 = *(v27 + 24);
      v29 = v26[10];
      v30 = (v55)(v29, v27);
      ObjectType = swift_getObjectType();
      v32 = *(v28 + 80);
      v33 = v58;
      v34 = v32(v58, ObjectType, v28);
      *v52 = *v52 + v30 + v34;
      v35 = (v55)(v29, v27);
      v36 = v32(v33, ObjectType, v28);
      v37 = v54;
      *v53 = *v53 + v35 + v36;
      *v37 = 1;
      return;
    }

    v38 = __OFADD__(a1, 1);
    v39 = a1 + 1;
    if (v38)
    {
      __break(1u);
      return;
    }

    v59 = a2;
    sub_2749FD194();
    v61 = v62;
    v63 = v39;
    if (sub_2749FD224())
    {
      v40 = swift_getObjectType();
      sub_2749FD024();
      v41 = *(v57 + 88);
      v42 = v41(v24, v40, a9);
      (*(v53 + 8))(v24, v22);
    }

    else
    {
      v41 = *(v57 + 88);
      v42 = 0.0;
    }

    if (v54)
    {
      v43 = swift_getObjectType();
      v44 = (v41)(v58, v43, v57, a9);
      v45 = *v55 - (v44 + a10);
      *v55 = v45;
      if (v45 - v42 <= 0.0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v46 = swift_getObjectType();
      v47 = (v41)(v58, v46, v57, a9);
      v48 = *v55 + v47 + a10;
      *v55 = v48;
      v49 = v42 + v48;
      [a8 contentSize];
      if (v50 <= v49)
      {
        goto LABEL_4;
      }
    }
  }
}

void *sub_2747E7718(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, double *a5, double a6, double a7, uint64_t a8, uint64_t a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  v31 = a10;
  v20 = sub_2749F9284();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x277C5AFB0](a1, a2);
  v24 = sub_2747E2F84();
  v25 = sub_27494F9EC(v23, v24);

  if (!v25)
  {
    v26 = *a4 + *a5;
    ObjectType = swift_getObjectType();
    if (v26 + (*(a9 + 80))(v31, ObjectType, a9) > a6 && *a4 + *a5 < a7)
    {
      *a11 = 1;
      v25 = (*(a9 + 48))(a3, v31, a12, ObjectType, a9);
    }

    else
    {
      v25 = 0;
    }
  }

  (*(v21 + 8))(v23, v20);
  return v25;
}

void sub_2747E78F8(void *a1, void *a2)
{
  [a1 setFrame_];
  if (*(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC8)) == 1)
  {
    [a1 setAlpha_];
    CGAffineTransformMakeScale(&v23, 0.5, 0.5);
    tx = v23.tx;
    ty = v23.ty;
    v20 = *&v23.c;
    v21 = *&v23.a;
    [a1 bounds];
    Height = CGRectGetHeight(v24);
    *&v23.a = v21;
    *&v23.c = v20;
    v23.tx = tx;
    v23.ty = ty;
    CGAffineTransformTranslate(&v22, &v23, 0.0, Height * -0.175);
    v23 = v22;
    [a1 setTransform_];
    v7 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
    v8 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v10 = sub_27480D818(v8, v9);
    v11 = sub_2749FD184();
    [v10 setValue:v11 forKey:*MEMORY[0x277CDA4F0]];

    v12 = sub_2749FD034();
    [v10 setValue:v12 forKey:*MEMORY[0x277CDA4C8]];

    v13 = sub_2749FD034();
    [v10 setValue:v13 forKey:*MEMORY[0x277CDA4A0]];

    v14 = sub_2749FCD64();
    [v10 setValue:v14 forKey:*MEMORY[0x277CDA4E8]];

    v15 = sub_2749FCD64();
    [v10 setValue:v15 forKey:*MEMORY[0x277CDA4B8]];

    v16 = [a1 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_274A0EF10;
    *(v17 + 56) = v7;
    *(v17 + 32) = v10;
    v18 = v10;
    v19 = sub_2749FCF74();

    [v16 setFilters_];
  }
}

BOOL sub_2747E7BD0(char *a1, id *a2, uint64_t a3, void **a4, void *a5)
{
  v55 = a3;
  v53 = a1;
  v54 = a4;
  v57 = a5;
  v6 = *MEMORY[0x277D85000] & *a5;
  v7 = *(v6 + 0x50);
  v51 = *(v6 + 0x58);
  v61 = v7;
  v62 = v51;
  v52 = *(v6 + 96);
  v63 = v52;
  v8 = type metadata accessor for WFSectionedItemsSnapshot(0, &v61);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v56 = &v48 - v10;
  v60 = *(v7 - 1);
  v11 = v60;
  v12 = MEMORY[0x28223BE20](v9);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v59 = &v48 - v14;
  type metadata accessor for WFGridSectionContainerView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v48 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = (&v48 - v23);
  v49 = *a2;
  v25 = v49;
  v50 = v7;
  v26 = *(v11 + 16);
  v26(&v48 - v23, v53, v7);
  *(v24 + *(TupleTypeMetadata2 + 48)) = v25;
  v27 = *v54;
  v26(v22, v55, v7);
  *&v22[*(TupleTypeMetadata2 + 48)] = v27;
  v54 = v24;
  v55 = v16;
  v28 = *(v16 + 16);
  v28(v19, v24, TupleTypeMetadata2);
  v29 = *&v19[*(TupleTypeMetadata2 + 48)];
  v30 = v49;
  v31 = v27;

  v32 = *(v60 + 32);
  v33 = v50;
  v32(v59, v19, v50);
  v53 = v22;
  v28(v19, v22, TupleTypeMetadata2);

  v32(v58, v19, v33);
  v34 = v56;
  sub_2747E3150(v56);
  sub_2749FD014();
  v35 = sub_2749F95A4();
  v36 = v34;
  v37 = sub_2749F9524();
  v38 = *(v35 - 8);
  v39 = *(v38 + 8);
  v51 = v38 + 8;
  *&v52 = v39;
  v39(v36, v35);
  v64 = v37;
  sub_2749FD014();
  swift_getWitnessTable();
  sub_2749FD1E4();

  if (v62 == 1)
  {
    v40 = *(v60 + 8);
    v40(v58, v33);
    v40(v59, v33);
    v41 = *(v55 + 8);
    v41(v53, TupleTypeMetadata2);
    v41(v54, TupleTypeMetadata2);
    return 0;
  }

  v49 = v61;
  v42 = v56;
  sub_2747E3150(v56);
  v43 = sub_2749F9524();
  (v52)(v42, v35);
  v64 = v43;
  v44 = v58;
  sub_2749FD1E4();

  v45 = *(v60 + 8);
  v45(v44, v33);
  v45(v59, v33);
  v46 = *(v55 + 8);
  v46(v53, TupleTypeMetadata2);
  v46(v54, TupleTypeMetadata2);
  if (v62 == 1)
  {
    return 0;
  }

  return v49 < v61;
}

void sub_2747E817C(void *a1)
{
  v2 = objc_opt_self();
  sub_2749FD314();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2747E9F74;
  *(v10 + 24) = v9;
  v16[4] = sub_27475D1DC;
  v16[5] = v10;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = sub_274963064;
  v16[3] = &block_descriptor_14;
  v11 = _Block_copy(v16);
  v12 = a1;

  LODWORD(v13) = v4;
  LODWORD(v14) = v6;
  LODWORD(v15) = v8;
  [v2 _modifyAnimationsWithPreferredFrameRateRange_updateReason_animations_];
  _Block_release(v11);

  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }
}

void sub_2747E832C(void *a1)
{
  v1 = [a1 layer];
  v2 = sub_2749FD184();
  v3 = sub_2749FCD64();
  [v1 setValue:v2 forKeyPath:v3];
}

uint64_t sub_2747E83C8()
{
  if (sub_2747E32AC())
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    (*(v2 + 8))(v0, *(v0 + *((*MEMORY[0x277D85000] & *v0) + 0xC8)), ObjectType, v2);
    swift_unknownObjectRelease();
  }

  return sub_2747E48DC();
}

void sub_2747E8464(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E83C8();
}

uint64_t sub_2747E84C4()
{
  result = sub_2747E32AC();
  if (result)
  {
    swift_getObjectType();
    v1 = OUTLINED_FUNCTION_25_4();
    v2(v1);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2747E8530(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E84C4();
}

void sub_2747E8590(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && sub_2747E32AC())
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_25_4();
    v3(v2);

    swift_unknownObjectRelease();
  }
}

void sub_2747E8600(void *a1, uint64_t a2, void *a3, char a4)
{
  v6 = a3;
  v7 = a1;
  sub_2747E8590(v7, a4);
}

void sub_2747E8670()
{
  v1 = MEMORY[0x277D85000];
  OUTLINED_FUNCTION_7_9();
  v3 = MEMORY[0x277D84F98];
  *(v0 + *(v2 + 112)) = MEMORY[0x277D84F98];
  v4 = *((*v1 & *v0) + 0x78);
  v7 = *((v6 & v5) + 0x50);
  OUTLINED_FUNCTION_59_2();
  v9 = *(v8 + 88);
  OUTLINED_FUNCTION_59_2();
  v11 = *(v10 + 96);
  v14 = *((v13 & v12) + 0x68);
  v29[0] = v7;
  v29[1] = v9;
  v29[2] = v11;
  v29[3] = v14;
  type metadata accessor for WFGridView.CellRegistrationEntry(0, v29);
  *(v0 + v4) = sub_2749FCC84();
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v15 + 128)) = v3;
  OUTLINED_FUNCTION_7_9();
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F9594();
  OUTLINED_FUNCTION_7_9();
  v17 = *(v16 + 144);
  type metadata accessor for WFDrawerSearchControlsView();
  *(v0 + v17) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  sub_2747CA960(v7, v9, v11);
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v18 + 160));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v19 + 168));
  OUTLINED_FUNCTION_7_9();
  OUTLINED_FUNCTION_98_1(*(v20 + 176));
  OUTLINED_FUNCTION_7_9();
  v22 = *(v21 + 184);
  v23 = sub_2749F9284();
  OUTLINED_FUNCTION_38_4(v23);
  *(v0 + v22) = sub_2749FCC74();
  OUTLINED_FUNCTION_7_9();
  v25 = *(v24 + 192);
  *(v0 + v25) = [objc_allocWithZone(MEMORY[0x277D75B80]) init];
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v26 + 200)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v27 + 208)) = 0;
  OUTLINED_FUNCTION_7_9();
  *(v0 + *(v28 + 216)) = 0;
  OUTLINED_FUNCTION_24_8();
  __break(1u);
}

void sub_2747E8960()
{
  OUTLINED_FUNCTION_48();
  v43 = v1;
  v2 = *v0;
  v3 = *MEMORY[0x277D85000];
  v4 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v5 = *((v3 & v2) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v41 = v7;
  v42 = v6;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  OUTLINED_FUNCTION_9_9();
  v39 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - v12;
  OUTLINED_FUNCTION_3_0();
  v40 = v14;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_10_1(&v37 - v16);
  v48[8] = sub_2747E3100();
  v17 = *((v3 & v2) + 0x68);
  v18.i64[0] = v5;
  v48[6] = v43;
  v45 = v5;
  OUTLINED_FUNCTION_28_6(v17, vzip1q_s64(v18, *(v4 + 88)), *(v4 + 88), *(v4 + 96));
  v46 = sub_2747EA224;
  v47 = v48;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v19 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v10);
  if (v20)
  {
    (*(v41 + 8))(v10, v42);
  }

  else
  {
    v21 = *&v10[*(v19 + 48)];
    v22 = v39;
    v23 = *(v39 + 48);
    v24 = v40;
    v25 = *(v40 + 32);
    v25(v13, v10, v5);
    *&v13[v23] = v21;
    v26 = *&v13[*(v22 + 48)];
    v27 = v38;
    v25(v38, v13, v5);
    sub_2749585BC(1);
    v28 = sub_2747E3214();
    v30 = v24;
    if (v28)
    {
      v31 = v29;
      ObjectType = swift_getObjectType();
      v33 = [*&v26[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar] searchTextField];
      (*(v31 + 64))(v27, v33, ObjectType, v31);

      swift_unknownObjectRelease();
    }

    if (sub_2747E32AC())
    {
      v35 = v34;
      v36 = swift_getObjectType();
      (*(v35 + 24))(v36, v35);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    (*(v30 + 8))(v27, v5);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747E8D34(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  type metadata accessor for WFDrawerSearchControlsView();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48))) & 1;
}

void sub_2747E8DB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E8960();
}

void sub_2747E8E20()
{
  OUTLINED_FUNCTION_48();
  v35 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v31 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_3_0();
  v32 = v9;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_15();
  v34 = v14;
  v40[8] = sub_2747E3100();
  v15 = v4 & v3;
  v16 = v35;
  v17 = *(v15 + 104);
  v18.i64[0] = v6;
  v40[6] = v35;
  v37 = v6;
  OUTLINED_FUNCTION_28_6(v17, vzip1q_s64(v18, *(v5 + 88)), *(v5 + 88), *(v5 + 96));
  v38 = sub_2747EA224;
  v39 = v40;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v19 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v1);
  if (v20)
  {
    OUTLINED_FUNCTION_40_5();
    v21(v1, v33);
  }

  else
  {

    v22 = v32;
    v23 = *(v32 + 32);
    v24 = OUTLINED_FUNCTION_105_0();
    v23(v24);
    v25 = v34;
    (v23)(v34, v13, v6);
    if (sub_2747E3214())
    {
      v28 = v27;
      ObjectType = swift_getObjectType();
      v30 = [v16 searchTextField];
      (*(v28 + 56))(v25, v30, ObjectType, v28);
      swift_unknownObjectRelease();
    }

    (*(v22 + 8))(v25, v6);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747E91B4(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
  v6 = a3;
  v7 = a1;
  sub_2747E8E20();
}

void sub_2747E9220()
{
  OUTLINED_FUNCTION_48();
  v42 = v2;
  v3 = *v0;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v0;
  type metadata accessor for WFDrawerSearchControlsView();
  v6 = *((v4 & v3) + 0x50);
  OUTLINED_FUNCTION_68();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v38 = sub_2749FD6C4();
  OUTLINED_FUNCTION_43();
  v37 = v7;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_26_5();
  OUTLINED_FUNCTION_9_9();
  v36 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  OUTLINED_FUNCTION_3_0();
  v40 = v12;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v39 = &v35 - v14;
  v46[8] = sub_2747E3100();
  v15 = *((v4 & v3) + 0x68);
  v16.i64[0] = v6;
  v46[6] = v42;
  v43 = v6;
  OUTLINED_FUNCTION_28_6(v15, vzip1q_s64(v16, *(v5 + 88)), *(v5 + 88), *(v5 + 96));
  v44 = sub_2747E9F84;
  v45 = v46;
  OUTLINED_FUNCTION_9_9();
  sub_2749FCCC4();
  OUTLINED_FUNCTION_6_11();
  OUTLINED_FUNCTION_29_7();
  sub_2749FCED4();
  v17 = TupleTypeMetadata2;

  OUTLINED_FUNCTION_14_6(v1);
  if (v18)
  {
    OUTLINED_FUNCTION_40_5();
    v19(v1, v38);
  }

  else
  {
    v20 = *(v1 + *(v17 + 48));
    v21 = v36;
    v22 = *(v36 + 48);
    v23 = v40;
    v24 = *(v40 + 32);
    v24(v11, v1, v6);
    *&v11[v22] = v20;
    v25 = *&v11[*(v21 + 48)];
    v26 = v39;
    v24(v39, v11, v6);
    v27 = OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar;
    v28 = *&v25[OBJC_IVAR____TtC10WorkflowUI26WFDrawerSearchControlsView_searchBar];
    v29 = sub_2749FCD64();
    [v28 setText_];

    sub_2749585BC(0);
    [*&v25[v27] endEditing_];
    if (sub_2747E3214())
    {
      v32 = v31;
      ObjectType = swift_getObjectType();
      v34 = [v42 searchTextField];
      (*(v32 + 72))(v26, v34, ObjectType, v32);

      swift_unknownObjectRelease();
      v25 = v34;
    }

    (*(v23 + 8))(v26, v6);
  }

  OUTLINED_FUNCTION_46();
}

void sub_2747E9604(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_2747E9220();
}

id sub_2747E966C()
{
  v1 = OUTLINED_FUNCTION_17_6();
  v4.receiver = v0;
  v4.super_class = type metadata accessor for WFGridView(v1, v2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2747E96DC(char *a1)
{

  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
  v3 = *(v2 + 136);
  type metadata accessor for WFGridSectionContainerView();
  sub_2749F95A4();
  OUTLINED_FUNCTION_9();
  (*(v4 + 8))(&a1[v3]);
  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
  v6 = *(v5 + 152);
  v7 = OUTLINED_FUNCTION_17_6();
  type metadata accessor for WFSectionedItemsSnapshot(v7, v8);
  OUTLINED_FUNCTION_9();
  (*(v9 + 8))(&a1[v6]);
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(&a1[*(v10 + 160)]);
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(&a1[*(v11 + 168)]);
  OUTLINED_FUNCTION_1_23();
  sub_2747545BC(&a1[*(v12 + 176)]);
  OUTLINED_FUNCTION_1_23();

  OUTLINED_FUNCTION_1_23();
}

void sub_2747E993C()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  sub_2749FDAE4();
  __break(1u);
}

char *sub_2747E99D8(double a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *&v1[v3] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16.receiver = v1;
  v16.super_class = type metadata accessor for WFGridSectionContainerView();
  v4 = objc_msgSendSuper2(&v16, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  v6 = *&v4[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView];
  v7 = v4;
  [v7 addSubview_];
  v8 = *&v4[v5];
  v9 = objc_allocWithZone(MEMORY[0x277D75348]);
  v10 = v8;
  v11 = sub_2747CA0C4(sub_2747E9B98, 0);
  [v10 setBackgroundColor_];

  v12 = [*&v4[v5] layer];
  [v12 setCornerCurve_];

  v13 = [*&v4[v5] layer];
  [v13 setMasksToBounds_];

  v14 = [*&v4[v5] layer];
  [v14 setCornerRadius_];

  [v7 setAccessibilityContainerType_];
  return v7;
}

id sub_2747E9B98(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v1 initWithRed:0.212 green:0.212 blue:0.22 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

void sub_2747E9C2C()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for WFGridSectionContainerView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView];
  [v0 bounds];
  [v1 setFrame_];
  v2 = OUTLINED_FUNCTION_37_4();
  v3 = [v1 layer];
  [v3 cornerRadius];
  v5 = v4;

  [v2 setCornerRadius_];
  v6 = OUTLINED_FUNCTION_37_4();
  [v6 setCornerCurve_];

  v7 = OUTLINED_FUNCTION_37_4();
  v8 = [objc_opt_self() blackColor];
  v9 = [v8 CGColor];

  [v7 setShadowColor_];
  v10 = OUTLINED_FUNCTION_37_4();
  LODWORD(v11) = *"\nף<";
  [v10 setShadowOpacity_];

  v12 = OUTLINED_FUNCTION_37_4();
  [v12 setShadowOffset_];

  v13 = OUTLINED_FUNCTION_37_4();
  [v13 setShadowRadius_];
}

void sub_2747E9E58()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26WFGridSectionContainerView_contentView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  OUTLINED_FUNCTION_24_8();
  __break(1u);
}

id sub_2747E9EDC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFGridSectionContainerView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2747E9F20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_2747E9FF4()
{
  result = qword_280968FC8;
  if (!qword_280968FC8)
  {
    sub_2749F9284();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280968FC8);
  }

  return result;
}

uint64_t sub_2747EA090(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2747EA12C()
{
  result = qword_280969488;
  if (!qword_280969488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280969460, &qword_274A14D48);
    sub_2747EA1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969488);
  }

  return result;
}

unint64_t sub_2747EA1B8()
{
  result = qword_280969490;
  if (!qword_280969490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969490);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_38_4(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t sub_2747EA338(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_2747EA380(void *a1)
{
  v2 = v1;
  v3 = [a1 integerValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C9A0, &qword_274A14DC0);
  if (v3 == 2)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_274A11F50;
    v5 = [objc_opt_self() defaultDatabase];
    v6 = type metadata accessor for SmartShortcutPickerUserLibraryDataSource(0);
    OUTLINED_FUNCTION_132(v6);
    v7 = SmartShortcutPickerUserLibraryDataSource.init(database:)(v5);
    OUTLINED_FUNCTION_0_19();
    v10 = sub_2747EC14C(v8, v9, &protocol conformance descriptor for SmartShortcutPickerUserLibraryDataSource);
    *(v4 + 32) = v7;
    *(v4 + 40) = v10;
    v11 = type metadata accessor for SmartShortcutPickerPromotedActionsDataSource(0);
    OUTLINED_FUNCTION_132(v11);
    v12 = SmartShortcutPickerPromotedActionsDataSource.init()();
    OUTLINED_FUNCTION_2_20();
    v15 = sub_2747EC14C(v13, v14, &protocol conformance descriptor for SmartShortcutPickerPromotedActionsDataSource);
    *(v4 + 48) = v12;
    *(v4 + 56) = v15;
    [objc_allocWithZone(MEMORY[0x277D23B70]) init];
    v16 = OUTLINED_FUNCTION_10_9();
    v17 = OUTLINED_FUNCTION_132(v16);
    v25 = OUTLINED_FUNCTION_5_15(v17, v18, v19, v20, v21, v22, v23, v24, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184]);
    OUTLINED_FUNCTION_1_24();
    v28 = sub_2747EC14C(v26, v27, &protocol conformance descriptor for SmartShortcutPickerAppShortcutDataSource);
    *(v4 + 64) = v25;
    *(v4 + 72) = v28;
    v29 = *MEMORY[0x277D7D818];
  }

  else
  {
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_274A0F610;
    v31 = [objc_opt_self() defaultDatabase];
    v32 = type metadata accessor for SmartShortcutPickerUserLibraryDataSource(0);
    OUTLINED_FUNCTION_132(v32);
    v33 = SmartShortcutPickerUserLibraryDataSource.init(database:)(v31);
    OUTLINED_FUNCTION_0_19();
    v36 = sub_2747EC14C(v34, v35, &protocol conformance descriptor for SmartShortcutPickerUserLibraryDataSource);
    *(v30 + 32) = v33;
    *(v30 + 40) = v36;
    v37 = type metadata accessor for SmartShortcutPickerPromotedActionsDataSource(0);
    OUTLINED_FUNCTION_132(v37);
    v38 = SmartShortcutPickerPromotedActionsDataSource.init()();
    OUTLINED_FUNCTION_2_20();
    v41 = sub_2747EC14C(v39, v40, &protocol conformance descriptor for SmartShortcutPickerPromotedActionsDataSource);
    *(v30 + 48) = v38;
    *(v30 + 56) = v41;
    __src[0] = *MEMORY[0x277D7D818];
    LOBYTE(__src[11]) = 1;
    v42 = type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource(0);
    OUTLINED_FUNCTION_132(v42);
    v29 = __src[0];
    v43 = SmartShortcutPickerStaccatoSuggestionsDataSource.init(style:)(__src);
    v44 = sub_2747EC14C(&qword_280969518, type metadata accessor for SmartShortcutPickerStaccatoSuggestionsDataSource, &protocol conformance descriptor for SmartShortcutPickerStaccatoSuggestionsDataSource);
    *(v30 + 64) = v43;
    *(v30 + 72) = v44;
    [objc_allocWithZone(MEMORY[0x277D23B70]) init];
    v45 = OUTLINED_FUNCTION_10_9();
    v46 = OUTLINED_FUNCTION_132(v45);
    v54 = OUTLINED_FUNCTION_5_15(v46, v47, v48, v49, v50, v51, v52, v53, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__dst[128], *&__dst[136], *&__dst[144], *&__dst[152], *&__dst[160], *&__dst[168], *&__dst[176], *&__dst[184]);
    OUTLINED_FUNCTION_1_24();
    v57 = sub_2747EC14C(v55, v56, &protocol conformance descriptor for SmartShortcutPickerAppShortcutDataSource);
    *(v30 + 80) = v54;
    *(v30 + 88) = v57;
  }

  v58 = *MEMORY[0x277D7D828];
  SmartShortcutPickerAppAvailabilityChecker.Availability.init(configurationContext:)(v58, &v101);
  SmartShortcutPickerAppAvailabilityChecker.Strategy.init(configurationContext:)(v58, &__dst[191]);
  __dst[190] = __dst[191];
  sub_2747B9A5C(__src);
  memcpy(__dst, __src, 0xB9uLL);
  v59 = type metadata accessor for SmartShortcutPickerDataSource(0);
  OUTLINED_FUNCTION_132(v59);
  SmartShortcutPickerDataSource.init(dataSources:appAvailabilityContext:appAvailabilityStrategy:selectedEntry:)();
  v61 = v60;
  *__dst = v29;
  __dst[88] = 1;
  v62 = *MEMORY[0x277D7D830];

  v63 = v29;
  SmartShortcutPickerViewStyle.init(with:)(v62, &v101);
  OUTLINED_FUNCTION_86();
  v64 = swift_allocObject();
  *(v64 + 16) = v2;
  OUTLINED_FUNCTION_86();
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for SmartShortcutPickerSelectionCoordinator();
  swift_allocObject();
  v66 = v2;
  v67 = SmartShortcutPickerSelectionCoordinator.init(style:selectionHandler:errorHandler:)(&v101, sub_2747EC194, v64, sub_2747EC1B8, v65);
  v68 = objc_allocWithZone(type metadata accessor for SmartShortcutPickerViewController());
  v69 = SmartShortcutPickerViewController.init(dataSource:style:selectionCoordinator:)(v61, __dst, v67);
  v70 = _UISolariumEnabled();
  v71 = v69;
  v72 = [v71 sheetPresentationController];
  v73 = v72;
  if (!v70)
  {
    if (v72)
    {
      [v72 setPrefersGrabberVisible_];
    }

    v95 = [v71 sheetPresentationController];

    if (!v95)
    {
      goto LABEL_16;
    }

    [v95 _setGrabberTopSpacing_];
LABEL_15:

LABEL_16:
    v96 = v71;
    v97 = [v96 view];
    if (v97)
    {
      v98 = v97;
      v99 = [objc_opt_self() systemGroupedBackgroundColor];
      OUTLINED_FUNCTION_11_11(v99);

      return;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (v72)
  {
    [v72 setPrefersGrabberVisible_];
  }

  v74 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v75 = [objc_opt_self() systemGray3Color];
  OUTLINED_FUNCTION_11_11(v75);

  v76 = [v74 layer];
  [v76 setCornerRadius_];

  v77 = [v74 layer];
  [v77 setMasksToBounds_];

  [v74 setTranslatesAutoresizingMaskIntoConstraints_];
  v78 = [v71 view];
  if (!v78)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v79 = v78;
  [v78 addSubview_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_274A108E0;
  v80 = [v74 centerXAnchor];
  v81 = [v71 view];
  if (!v81)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v82 = v81;
  v83 = [v81 centerXAnchor];

  v84 = [v80 constraintEqualToAnchor_];
  *(v70 + 32) = v84;
  v85 = [v74 topAnchor];
  v86 = [v71 view];

  if (v86)
  {
    v87 = objc_opt_self();
    v88 = [v86 safeAreaLayoutGuide];

    v89 = [v88 topAnchor];
    v90 = [v85 constraintEqualToAnchor:v89 constant:6.0];

    *(v70 + 40) = v90;
    v91 = [v74 heightAnchor];
    v92 = [v91 constraintEqualToConstant_];

    *(v70 + 48) = v92;
    v93 = [v74 widthAnchor];
    v94 = [v93 constraintEqualToConstant_];

    *(v70 + 56) = v94;
    sub_27478069C();
    v95 = sub_2749FCF74();

    [v87 activateConstraints_];

    goto LABEL_15;
  }

LABEL_21:
  __break(1u);
}

void sub_2747EAC14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      v5 = sub_2749F8FD4();
      [v4 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:v5];

      swift_unknownObjectRelease();
    }
  }
}

double sub_2747EAD18(const void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20[-v10];
  memcpy(v21, a1, 0xB9uLL);
  v12 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  sub_2747EBB34(a2, v8);
  sub_2749FD0A4();
  sub_2747EBB98(v21, v20);
  v13 = v2;
  v14 = sub_2749FD094();
  v15 = (*(v6 + 80) + 217) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D85700];
  v17[2] = v14;
  v17[3] = v18;
  memcpy(v17 + 4, v21, 0xB9uLL);
  sub_2747EBD84(v8, v17 + v15);
  *(v17 + v16) = v13;
  sub_27479930C();

  return result;
}

uint64_t sub_2747EAF10(int a1, int a2, int a3, void *__src, uint64_t a5, uint64_t a6)
{
  v6[182] = a6;
  v6[181] = a5;
  v6[180] = __src;
  memcpy(v6 + 2, __src, 0xB9uLL);
  v7 = sub_2749FA4E4();
  v6[183] = v7;
  v6[184] = *(v7 - 8);
  v6[185] = swift_task_alloc();
  sub_2749FD0A4();
  v6[186] = sub_2749FD094();
  v9 = sub_2749FD044();
  v6[187] = v9;
  v6[188] = v8;

  return MEMORY[0x2822009F8](sub_2747EB020, v9, v8);
}

uint64_t sub_2747EB020()
{
  memcpy((v0 + 208), *(v0 + 1440), 0xB9uLL);
  v1 = sub_274772AD0(v0 + 208);
  if (v1 == 1)
  {
    v10 = *(v0 + 1448);
    v11 = *sub_274721C98(v0 + 208);

    memcpy((v0 + 400), (v0 + 16), 0xB9uLL);
    v12 = *sub_274721C98(v0 + 400);
    v13 = [v11 name];
    v14 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v16 = v15;

    *(v0 + 1080) = v14;
    *(v0 + 1088) = v16;
    *(v0 + 1096) = MEMORY[0x277D84F90];
    sub_2747EBF0C(v0 + 1080);
    v17 = *(v10 + 192);
    v18 = *(v10 + 200);
    LOBYTE(v16) = *(v10 + 208);
    memcpy((v0 + 592), (v0 + 1080), 0x81uLL);
    *(v0 + 728) = 0u;
    *(v0 + 744) = v17;
    *(v0 + 752) = v18;
    *(v0 + 760) = v16;
    v19 = sub_2749F8F54();
    OUTLINED_FUNCTION_132(v19);
    sub_27477D408(v17, v18, v16);
    sub_2749F8F44();
    memcpy((v0 + 768), (v0 + 592), 0xA9uLL);
    sub_27477C9A8();
    v21 = sub_2749F8F34();
    v23 = v22;
    swift_allocObject();
    sub_2749F8F44();
    type metadata accessor for SmartShortcutPickerSelectedEntry(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968A30, &unk_274A133E0);
    sub_2747EC040();
    v24 = sub_2749F8F34();
    v26 = v25;
    v27 = objc_allocWithZone(MEMORY[0x277D79E78]);
    v28 = OUTLINED_FUNCTION_99();
    sub_2747EC0F4(v28, v29);
    sub_2747EC0F4(v24, v26);
    v30 = sub_2747EBF68(v11, v21, v23, v24, v26);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      [Strong smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:v30 error:0];
      v32 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v32, v33);
      sub_2747BD02C(v24, v26);
      swift_unknownObjectRelease();

      sub_27477C9FC(v0 + 592);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_99();
      sub_2747BD02C(v34, v35);
      sub_2747BD02C(v24, v26);

      sub_27477C9FC(v0 + 592);
    }
  }

  else
  {
    if (v1 == 2)
    {
      v2 = *(v0 + 1448);
      v3 = sub_274721C98(v0 + 208);
      v4 = *(v3 + 48);
      v38 = *(v3 + 16);
      v39 = *v3;
      v37 = *(v3 + 32);
      memcpy((v0 + 944), (v3 + 49), 0x88uLL);
      *(v0 + 1352) = v39;
      *(v0 + 1368) = v38;
      *(v0 + 1384) = v37;
      *(v0 + 1400) = v4 & 1;
      memcpy((v0 + 1216), (v0 + 951), 0x81uLL);
      v5 = *(v2 + 192);
      v6 = *(v2 + 200);
      v7 = *(v2 + 208);
      *(v0 + 1408) = v5;
      *(v0 + 1416) = v6;
      *(v0 + 1424) = v7;
      type metadata accessor for SmartShortcutPickerSelectedEntry(0);
      sub_27477D408(v5, v6, v7);
      v8 = swift_task_alloc();
      *(v0 + 1512) = v8;
      *v8 = v0;
      v8[1] = sub_2747EB650;

      return SmartShortcutPickerActionTemplate.asSystemAction(with:sectionIdentifier:iconOverride:colorScheme:)();
    }

    v20 = swift_unknownObjectWeakLoadStrong();
    if (v20)
    {
      [v20 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:0];
      swift_unknownObjectRelease();
    }
  }

  OUTLINED_FUNCTION_48_0();

  return v36();
}

uint64_t sub_2747EB650(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  sub_27478C4DC(*(v3 + 1408), *(v3 + 1416), *(v3 + 1424));
  v4 = *(v3 + 1504);
  v5 = *(v3 + 1496);
  if (v1)
  {
    v6 = sub_2747EB834;
  }

  else
  {
    v6 = sub_2747EB790;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2747EB790()
{

  Strong = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 1520);
  if (Strong)
  {
    [Strong smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:*(v0 + 1520) error:0];
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_48_0();

  return v3();
}

uint64_t sub_2747EB834()
{
  v25 = v0;

  v1 = v0[191];
  sub_2749FA3D4();
  v2 = v1;
  v3 = sub_2749FA4D4();
  v4 = sub_2749FD2C4();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = v0[185];
    v5 = v0[184];
    v6 = v0[183];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v0[179] = v1;
    v9 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967C18, &qword_274A0FEA0);
    v10 = sub_2749FCDC4();
    v12 = sub_2747AF460(v10, v11, &v24);

    *(v7 + 4) = v12;
    OUTLINED_FUNCTION_9_10(&dword_274719000, v13, v14, "Failed to construct selected action due to: %s");
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_31();

    (*(v5 + 8))(v23, v6);
  }

  else
  {
    v15 = v0[185];
    v16 = v0[184];
    v17 = v0[183];

    (*(v16 + 8))(v15, v17);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v20 = sub_2749F8FD4();
    [v19 smartShortcutPickerViewControllerDidFinishWithSystemActionWithSystemAction:0 error:v20];

    swift_unknownObjectRelease();
  }

  else
  {
  }

  OUTLINED_FUNCTION_48_0();

  return v21();
}

id sub_2747EBA60()
{
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmartShortcutPickerViewControllerManager();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_2747EBACC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SmartShortcutPickerViewControllerManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2747EBB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2747EBBF4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24)
{
  switch(a24 >> 6)
  {
    case 1:

      break;
    case 2:
      sub_27477CABC(a1, a2, a3, a4, a5, a6, a7 & 1);

      sub_2747D2D7C(a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24 & 0x3F);
      break;
    case 3:
      return;
    default:

      break;
  }
}

uint64_t sub_2747EBD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmartShortcutPickerSelectedEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747EBDE8(int a1)
{
  v4 = *(type metadata accessor for SmartShortcutPickerSelectedEntry(0) - 8);
  v5 = (*(v4 + 80) + 217) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2747E2AF4;

  return sub_2747EAF10(a1, v6, v7, v1 + 4, v1 + v5, v8);
}

id sub_2747EBF68(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = sub_2749F9074();
    sub_2747BD018(a2, a3);
  }

  if (a5 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_2749F9074();
    sub_2747BD018(a4, a5);
  }

  v13 = [v5 initWithWorkflow:a1 shortcutsMetadata:v9 colorScheme:v12];

  return v13;
}

unint64_t sub_2747EC040()
{
  result = qword_280970700;
  if (!qword_280970700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280968A30, &unk_274A133E0);
    sub_2747EC14C(&qword_280969508, MEMORY[0x277D7D618], MEMORY[0x277D7D620]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280970700);
  }

  return result;
}

double sub_2747EC0F4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_2747EC14C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void LinkSnippetDialogView.init(request:snippetEnvironmentProvider:snippetResultValueUpdated:)()
{
  OUTLINED_FUNCTION_48();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_34(v12);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v13);
  v15 = v23 - v14;
  if (v7)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    *(v16 + 24) = v5;
  }

  v23[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969528, &qword_274A14DC8);
  swift_allocObject();
  sub_27473A658(v7, v5);
  v17 = v9;
  v18 = sub_2749FCC64();
  v19 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v19);
  sub_2749FD0A4();

  v20 = sub_2749FD094();
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D85700];
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v18;
  sub_27479930C();

  *v11 = v18;
  v11[1] = v7;
  v11[2] = v5;
  v11[3] = v3;
  v11[4] = v1;
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747EC380(uint64_t (*a1)(void))
{
  v2 = a1();
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_2747EC3E4()
{
  v0[2] = sub_2749FD0A4();
  v0[3] = sub_2749FD094();
  v3 = (*MEMORY[0x277D63DA0] + MEMORY[0x277D63DA0]);
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_2747EC4A8;

  return v3();
}

uint64_t sub_2747EC4A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  v4 = sub_2749FD044();

  return MEMORY[0x2822009F8](sub_2747EC5D4, v4, v3);
}

uint64_t sub_2747EC5D4()
{
  OUTLINED_FUNCTION_79();

  OUTLINED_FUNCTION_48_0();

  return v0();
}

uint64_t sub_2747EC62C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_7(v1);

  return sub_2747EC3E4();
}

uint64_t sub_2747EC6C4()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return v4(v3);
}

void LinkSnippetDialogView.body.getter()
{
  OUTLINED_FUNCTION_48();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969530, &qword_274A14DF0);
  OUTLINED_FUNCTION_43();
  v3 = v2;
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  v7 = v0[1];
  v14 = *v0;
  v15 = v7;
  v16 = *(v0 + 4);

  sub_2749FCC44();
  v8 = sub_2749FCC54();
  v13[5] = v8;
  v9 = swift_allocObject();
  v10 = v15;
  *(v9 + 16) = v14;
  *(v9 + 32) = v10;
  *(v9 + 48) = v16;
  sub_2747EC934(&v14, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969538, &qword_274A14DF8);
  OUTLINED_FUNCTION_4_14();
  sub_27472AB6C(v11, &qword_280969530, &qword_274A14DF0, v12);
  sub_2747EC96C();
  sub_2749FC304();

  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_2747EC900(uint64_t a1, void *a2)
{
  v3 = *(v2 + 40);
  if (v3)
  {
    return v3(*a2);
  }

  return result;
}

unint64_t sub_2747EC96C()
{
  result = qword_280969548;
  if (!qword_280969548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969538, &qword_274A14DF8);
    sub_2747EC9F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969548);
  }

  return result;
}

unint64_t sub_2747EC9F0()
{
  result = qword_280969550;
  if (!qword_280969550)
  {
    sub_27471CF08(255, &qword_280969558, 0x277D23CA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969550);
  }

  return result;
}

uint64_t sub_2747ECA94(void *a1, uint64_t (*a2)(void))
{
  v5 = v2;
  v6 = [v2 snippetAction];
  if (!v6 || (v7 = v6, sub_274916A5C(a1), v9 = v8, v11 = v10, v7, !v11))
  {
    v12 = [v5 viewSnippet];
    if (v12)
    {
      v13 = v12;
      v9 = a2();
    }

    else
    {

      return 0;
    }
  }

  return v9;
}

uint64_t WFLinkSnippetDialogRequest.fetchArchive(snippetEnvironmentProvider:)()
{
  OUTLINED_FUNCTION_79();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2749F8E44();
  v1[6] = v5;
  v1[7] = *(v5 - 8);
  v1[8] = swift_task_alloc();
  sub_2749FD0A4();
  v1[9] = sub_2749FD094();
  v7 = sub_2749FD044();
  v1[10] = v7;
  v1[11] = v6;

  return MEMORY[0x2822009F8](sub_2747ECC54, v7, v6);
}

uint64_t sub_2747ECC54()
{
  v1 = [*(v0 + 40) snippetAction];
  *(v0 + 96) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 104) = v2;
    *v2 = v0;
    v3 = OUTLINED_FUNCTION_24_9(v2);

    return MEMORY[0x2821CBF08](v3);
  }

  else
  {
    v4 = [*(v0 + 40) viewSnippet];
    *(v0 + 120) = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      *(v0 + 128) = v5;
      *v5 = v0;
      v6 = OUTLINED_FUNCTION_24_9(v5);

      return MEMORY[0x2821CBED8](v6);
    }

    else
    {
      v7 = *(v0 + 64);
      v8 = *(v0 + 48);
      v9 = *(v0 + 56);

      *(v0 + 144) = 22;
      sub_2747F1734(MEMORY[0x277D84F90]);
      sub_2747F1888(&qword_280969560, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      sub_2749F8FC4();
      sub_2749F8E34();
      (*(v9 + 8))(v7, v8);
      swift_willThrow();

      OUTLINED_FUNCTION_48_0();

      return v10();
    }
  }
}

uint64_t sub_2747ECE8C()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2747ED1D4;
  }

  else
  {
    v5 = sub_2747ECFC4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2747ECFC4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED030()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 88);
  v4 = *(v2 + 80);
  if (v0)
  {
    v5 = sub_2747ED240;
  }

  else
  {
    v5 = sub_2747ED168;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_2747ED168()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED1D4()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED240()
{
  OUTLINED_FUNCTION_79();
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_48_0();

  return v2();
}

uint64_t sub_2747ED2F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2747ED3A8;

  return WFLinkSnippetDialogRequest.fetchArchive(snippetEnvironmentProvider:)();
}

uint64_t sub_2747ED3A8()
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_21_1();
  v1 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v2 = v1;

  OUTLINED_FUNCTION_48_0();

  return v3();
}

void sub_2747ED488()
{
  OUTLINED_FUNCTION_48();
  v50 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v53 = sub_2749FBC04();
  OUTLINED_FUNCTION_43();
  v51 = v12;
  MEMORY[0x28223BE20](v13);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C960, &unk_274A10040);
  OUTLINED_FUNCTION_34(v15);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  if (v11)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = v11;
    *(v19 + 24) = v9;
  }

  v54 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969528, &qword_274A14DC8);
  swift_allocObject();
  v20 = OUTLINED_FUNCTION_63();
  sub_27473A658(v20, v21);
  v22 = OUTLINED_FUNCTION_63();
  sub_27473A658(v22, v23);
  v24 = v0;
  v25 = OUTLINED_FUNCTION_45();
  sub_27473A658(v25, v26);
  v27 = sub_2749FCC64();
  v28 = sub_2749FD0E4();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v28);
  sub_2749FD0A4();

  v29 = sub_2749FD094();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D85700];
  v30[2] = v29;
  v30[3] = v31;
  v30[4] = v27;
  sub_27479930C();

  if (v3)
  {
    v54 = v27;
    v55 = v11;
    v56 = v9;
    v57 = v7;
    v58 = v5;
    v59 = v3;
    v60 = v50;
    sub_27473A658(v3, v50);

    v32 = OUTLINED_FUNCTION_63();
    sub_27473A658(v32, v33);
    v34 = OUTLINED_FUNCTION_45();
    sub_27473A658(v34, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969720, &qword_274A151E8);
    sub_2747F25F8();
  }

  else
  {
    v54 = v27;
    v55 = v11;
    v56 = v9;
    v57 = v7;
    v58 = v5;

    v36 = OUTLINED_FUNCTION_63();
    sub_27473A658(v36, v37);
    v38 = OUTLINED_FUNCTION_45();
    sub_27473A658(v38, v39);
    sub_2747F25A4();
  }

  v54 = sub_2749FC6A4();
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696F8, &qword_274A151D0));
  v40 = sub_2749F9F34();
  v41 = [v40 view];
  if (v41)
  {
    v42 = v41;
    v43 = [objc_opt_self() clearColor];
    [v42 setBackgroundColor_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969700, &qword_274A151D8);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_274A0F620;
    sub_2749FBBF4();
    sub_2749FBBE4();
    v54 = v44;
    sub_2747F1888(&qword_280969708, MEMORY[0x277CDE4B0], MEMORY[0x277CDE4C0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969710, &qword_274A151E0);
    sub_27472AB6C(&qword_280969718, &qword_280969710, &qword_274A151E0, MEMORY[0x277D83970]);
    sub_2749FD7B4();
    sub_2749FB6A4();

    v45 = OUTLINED_FUNCTION_63();
    sub_27471F8A4(v45, v46);
    v47 = OUTLINED_FUNCTION_45();
    sub_27471F8A4(v47, v48);

    OUTLINED_FUNCTION_46();
  }

  else
  {
    __break(1u);
  }
}

uint64_t View.onSnippetTapped(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a1;
  v4[1] = a2;
  return MEMORY[0x277C5E040](v4, a3, &type metadata for SnippetTapHandlingModifier);
}

id sub_2747ED93C(void *a1, int a2, void *aBlock, const void *a4, const void *a5)
{
  v8 = _Block_copy(aBlock);
  v9 = _Block_copy(a4);
  v10 = _Block_copy(a5);
  if (v8)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    v8 = sub_2747F2504;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = 0;
    if (v10)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (!v9)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  v9 = sub_2747F24F0;
  if (v10)
  {
LABEL_4:
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    v14 = sub_2747F24E8;
    goto LABEL_8;
  }

LABEL_7:
  v14 = 0;
  v13 = 0;
LABEL_8:
  v15 = a1;
  sub_2747ED488();
  v17 = v16;
  sub_27471F8A4(v14, v13);
  sub_27471F8A4(v9, v12);
  sub_27471F8A4(v8, v11);

  return v17;
}

id sub_2747EDABC(uint64_t a1)
{
  v1 = (*(a1 + 16))();

  return v1;
}

void sub_2747EDAF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618, &qword_274A151C0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  sub_2747B97A0(a1, &v9 - v5, &qword_280967618, &qword_274A151C0);
  v7 = sub_2749F9064();
  v8 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
  {
    v8 = sub_2749F9024();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  (*(a2 + 16))(a2, v8);
}

void View.observeSnippetEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_48();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for SnippetEnvironmentModifier(0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v33);
  v35 = (&a9 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));

  sub_2747EDCDC(v31, v29, v27, v35);
  MEMORY[0x277C5E040](v35, v25, v32, v23);
  sub_2747F191C(v35);
  OUTLINED_FUNCTION_46();
}

void sub_2747EDCDC(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for SnippetEnvironmentModifier(0);
  v9 = v8[6];
  *(a4 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650, &qword_274A150F8);
  swift_storeEnumTagMultiPayload();
  v10 = v8[7];
  *(a4 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
  swift_storeEnumTagMultiPayload();
  v11 = v8[8];
  *(a4 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658, &unk_274A15108);
  swift_storeEnumTagMultiPayload();
  v12 = v8[9];
  *(a4 + v12) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8, &unk_274A13650);
  swift_storeEnumTagMultiPayload();
  v13 = v8[10];
  *(a4 + v13) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  swift_storeEnumTagMultiPayload();
  v14 = v8[11];
  *(a4 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  swift_storeEnumTagMultiPayload();
  v15 = a4 + v8[12];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = v8[13];
  *(a4 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660, &qword_274A15118);
  swift_storeEnumTagMultiPayload();
  v17 = a4 + v8[14];
  *v17 = swift_getKeyPath();
  v17[8] = 0;
  v18 = a4 + v8[15];
  *v18 = swift_getKeyPath();
  v18[8] = 0;
  v19 = a4 + v8[16];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = a4 + v8[17];
  *v20 = swift_getKeyPath();
  v20[8] = 0;
  v25[1] = a1;
  v25[2] = a2;
  v25[3] = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C0, &qword_274A15138);
  MEMORY[0x277C5E410](v25, v21);
  v22 = v25[0];
  [v25[0] size];
  v24 = v23;

  a4[3] = v24;
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_2747EDF98@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C8, &qword_274A15140);
  sub_27472AB6C(&qword_2809696D0, &qword_2809696C8, &qword_274A15140, MEMORY[0x277CE04B0]);
  sub_2749FC074();

  KeyPath = swift_getKeyPath();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696D8, &qword_274A15178) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696E0, &qword_274A15180);

  sub_2749FACB4();
  *v9 = KeyPath;
  v10 = swift_getKeyPath();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696E8, &qword_274A151B8) + 36));

  result = sub_2749FACB4();
  *v12 = v10;
  return result;
}

uint64_t sub_2747EE184(void (*a1)(char *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618, &qword_274A151C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  v5 = sub_2749F9064();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  a1(v4);
  return sub_2747359D0(v4, &qword_280967618, &qword_274A151C0);
}

uint64_t sub_2747EE248(uint64_t a1, void (*a2)(char *))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280967618, &qword_274A151C0);
  OUTLINED_FUNCTION_34(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v8 = sub_2749F9064();
  OUTLINED_FUNCTION_9();
  (*(v9 + 16))(v7, a1, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  a2(v7);
  sub_2747359D0(v7, &qword_280967618, &qword_274A151C0);
  return sub_2749FACA4();
}

uint64_t sub_2747EE34C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650, &qword_274A150F8);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 24), v9, &qword_280969650, &qword_274A150F8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749F91B4();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EE554@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 28), v9, &unk_28096C200, &qword_274A15100);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAE14();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EE75C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658, &unk_274A15108);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 32), v9, &qword_280969658, &unk_274A15108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_2747F2454(v9, a1);
  }

  sub_2749FD2D4();
  v12 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2747EE934@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8, &unk_274A13650);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 36), v9, &qword_280968AA8, &unk_274A13650);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAE34();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EEB3C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 40), v9, &qword_28096D850, &unk_274A13E20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAA94();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EED44@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 44), v9, &qword_28096DA60, &qword_274A13620);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FB614();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

double sub_2747EEF4C()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for SnippetEnvironmentModifier(0) + 48));
  v6 = *v5;
  if (v5[8] == 1)
  {
    return *v5;
  }

  sub_2749FD2D4();
  v8 = sub_2749FBC14();
  sub_2749FA424();

  sub_2749FB4B4();
  swift_getAtKeyPath();
  sub_27471F620(v6, 0);
  (*(v2 + 8))(v4, v1);
  return *&v9[1];
}

uint64_t sub_2747EF0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2749FB4C4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660, &qword_274A15118);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for SnippetEnvironmentModifier(0);
  sub_2747B97A0(v1 + *(v10 + 52), v9, &qword_280969660, &qword_274A15118);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_2749FAB54();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_2749FD2D4();
    v13 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_2747EF2B0()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier(0) + 56);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF408()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier(0) + 60);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF560()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier(0) + 64);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF6B8()
{
  v1 = sub_2749FB4C4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for SnippetEnvironmentModifier(0) + 68);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_2749FD2D4();
    v7 = sub_2749FBC14();
    sub_2749FA424();

    sub_2749FB4B4();
    swift_getAtKeyPath();
    sub_27471F620(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_2747EF818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v187 = a1;
  v178 = a2;
  v3 = sub_2749FAB54();
  v4 = *(v3 - 8);
  v176 = v3;
  v177 = v4;
  MEMORY[0x28223BE20](v3);
  v175 = &v132 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2749FB614();
  v172 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v165 = &v132 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_2749FAA94();
  v164 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v157 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_2749FAE34();
  v156 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v150 = &v132 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  MEMORY[0x28223BE20](v148);
  v145 = &v132 - v9;
  v142 = sub_2749FAE14();
  v143 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v137 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SnippetEnvironmentModifier(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v13;
  v15 = &v132 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_2749F91B4();
  v135 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v17 = &v132 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695F8, &qword_274A150A0);
  v139 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v133 = &v132 - v18;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969600, &qword_274A150A8);
  v141 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v136 = &v132 - v19;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969608, &qword_274A150B0);
  v146 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v179 = &v132 - v20;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969610, &qword_274A150B8);
  v149 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v181 = &v132 - v21;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969618, &qword_274A150C0);
  v152 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v180 = &v132 - v22;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969620, &qword_274A150C8);
  v155 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v182 = &v132 - v23;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969628, &qword_274A150D0);
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v183 = &v132 - v24;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969630, &qword_274A150D8);
  v163 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v184 = &v132 - v25;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969638, &qword_274A150E0);
  v168 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v185 = &v132 - v26;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969640, &qword_274A150E8);
  v170 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v160 = &v132 - v27;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969648, &qword_274A150F0);
  v174 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v166 = &v132 - v28;
  v191 = v2;
  sub_2747EE34C(v17);
  sub_2747F1E88(v2, v15);
  v188 = *(v12 + 80);
  v29 = (v188 + 16) & ~v188;
  v190 = v14;
  v30 = swift_allocObject();
  sub_2747F1EEC(v15, v30 + v29);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969668, &qword_274A15120);
  v32 = sub_27472AB6C(&qword_280969670, &qword_280969668, &qword_274A15120, MEMORY[0x277CE04B0]);
  v33 = sub_2747F1888(&qword_280969678, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v34 = v134;
  sub_2749FC314();

  v35 = v17;
  v36 = v34;
  (*(v135 + 8))(v35, v34);
  v37 = v137;
  v38 = v191;
  sub_2747EE554(v137);
  v186 = v15;
  sub_2747F1E88(v38, v15);
  v39 = swift_allocObject();
  sub_2747F1EEC(v15, v39 + v29);
  v193 = v31;
  v194 = v36;
  v195 = v32;
  v196 = v33;
  v187 = MEMORY[0x277CE0E40];
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = sub_2747F1888(&qword_280969680, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  v42 = v136;
  v43 = v37;
  v44 = v138;
  v45 = v142;
  v46 = v133;
  sub_2749FC314();

  v47 = v45;
  (*(v143 + 8))(v43, v45);
  (*(v139 + 8))(v46, v44);
  v48 = v145;
  v49 = v191;
  sub_2747EE75C(v145);
  v50 = v186;
  sub_2747F1E88(v49, v186);
  v189 = v29;
  v51 = swift_allocObject();
  sub_2747F1EEC(v50, v51 + v29);
  v193 = v44;
  v194 = v47;
  v195 = OpaqueTypeConformance2;
  v196 = v41;
  v143 = swift_getOpaqueTypeConformance2();
  v52 = sub_2747F1F54();
  v53 = v48;
  v54 = v140;
  v55 = v148;
  sub_2749FC314();

  sub_2747359D0(v53, &qword_2809695C8, &qword_274A14FB0);
  (*(v141 + 8))(v42, v54);
  v56 = v150;
  v57 = v191;
  sub_2747EE934(v150);
  v58 = v186;
  sub_2747F1E88(v57, v186);
  v59 = v189;
  v60 = swift_allocObject();
  sub_2747F1EEC(v58, v60 + v59);
  v193 = v54;
  v194 = v55;
  v195 = v143;
  v196 = v52;
  v148 = swift_getOpaqueTypeConformance2();
  v61 = sub_2747F1888(&qword_280969698, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAB0]);
  v62 = v144;
  v63 = v154;
  v64 = v179;
  sub_2749FC314();

  (*(v156 + 8))(v56, v63);
  (*(v146 + 8))(v64, v62);
  v65 = v157;
  v66 = v191;
  sub_2747EEB3C(v157);
  v67 = v66;
  v68 = v186;
  sub_2747F1E88(v67, v186);
  v69 = v189;
  v70 = swift_allocObject();
  sub_2747F1EEC(v68, v70 + v69);
  v193 = v62;
  v194 = v63;
  v195 = v148;
  v196 = v61;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = sub_2747F1888(&qword_280968A80, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
  v73 = v181;
  v74 = v147;
  v75 = v162;
  sub_2749FC314();

  v76 = v65;
  v77 = v75;
  (*(v164 + 8))(v76, v75);
  (*(v149 + 8))(v73, v74);
  v78 = v165;
  v79 = v191;
  sub_2747EED44(v165);
  v80 = v186;
  sub_2747F1E88(v79, v186);
  v81 = v189;
  v82 = swift_allocObject();
  sub_2747F1EEC(v80, v82 + v81);
  v193 = v74;
  v194 = v77;
  v195 = v71;
  v196 = v72;
  v181 = swift_getOpaqueTypeConformance2();
  v83 = sub_2747F1888(&qword_2809696A0, MEMORY[0x277CE0228], MEMORY[0x277CE0240]);
  v84 = v78;
  v85 = v151;
  v86 = v171;
  v87 = v180;
  sub_2749FC314();

  (*(v172 + 8))(v84, v86);
  (*(v152 + 8))(v87, v85);
  v88 = v191;
  v192 = sub_2747EEF4C();
  sub_2747F1E88(v88, v80);
  v89 = v189;
  v90 = swift_allocObject();
  sub_2747F1EEC(v80, v90 + v89);
  v193 = v85;
  v194 = v86;
  v195 = v181;
  v196 = v83;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = sub_2747F2008();
  v93 = v182;
  v94 = v153;
  sub_2749FC314();

  (*(v155 + 8))(v93, v94);
  v95 = v175;
  v96 = v191;
  sub_2747EF0A8(v175);
  sub_2747F1E88(v96, v80);
  v97 = v189;
  v98 = swift_allocObject();
  sub_2747F1EEC(v80, v98 + v97);
  v193 = v94;
  v194 = MEMORY[0x277D85048];
  v195 = v91;
  v196 = v92;
  v99 = swift_getOpaqueTypeConformance2();
  v100 = sub_2747F1888(&qword_2809696B0, MEMORY[0x277CDF548], MEMORY[0x277CDF550]);
  v101 = v183;
  v102 = v158;
  v103 = v176;
  sub_2749FC314();

  (*(v177 + 8))(v95, v103);
  (*(v159 + 8))(v101, v102);
  v104 = v191;
  LOBYTE(v192) = sub_2747EF2B0() & 1;
  v105 = v80;
  sub_2747F1E88(v104, v80);
  v106 = v189;
  v107 = swift_allocObject();
  sub_2747F1EEC(v105, v107 + v106);
  v193 = v102;
  v194 = v103;
  v195 = v99;
  v196 = v100;
  v108 = swift_getOpaqueTypeConformance2();
  v109 = v184;
  v110 = v161;
  sub_2749FC314();

  (*(v163 + 8))(v109, v110);
  v111 = v191;
  LOBYTE(v192) = sub_2747EF408() & 1;
  sub_2747F1E88(v111, v105);
  v112 = swift_allocObject();
  sub_2747F1EEC(v105, v112 + v106);
  v193 = v110;
  v194 = MEMORY[0x277D839B0];
  v195 = v108;
  v196 = MEMORY[0x277D839C8];
  v113 = swift_getOpaqueTypeConformance2();
  v114 = v160;
  v115 = v167;
  v116 = v185;
  sub_2749FC314();

  (*(v168 + 8))(v116, v115);
  v117 = v191;
  LOBYTE(v192) = sub_2747EF560() & 1;
  v118 = v186;
  sub_2747F1E88(v117, v186);
  v119 = swift_allocObject();
  sub_2747F1EEC(v118, v119 + v106);
  v193 = v115;
  v194 = MEMORY[0x277D839B0];
  v195 = v113;
  v120 = MEMORY[0x277D839C8];
  v196 = MEMORY[0x277D839C8];
  v121 = swift_getOpaqueTypeConformance2();
  v122 = v166;
  v123 = v169;
  v124 = v120;
  sub_2749FC314();

  (*(v170 + 8))(v114, v123);
  v125 = v191;
  LOBYTE(v192) = sub_2747EF6B8() & 1;
  sub_2747F1E88(v125, v118);
  v126 = swift_allocObject();
  sub_2747F1EEC(v118, v126 + v106);
  v193 = v123;
  v194 = MEMORY[0x277D839B0];
  v195 = v121;
  v196 = v124;
  swift_getOpaqueTypeConformance2();
  v127 = v178;
  v128 = v173;
  sub_2749FC314();

  (*(v174 + 8))(v122, v128);
  sub_2747F1E88(v191, v118);
  v129 = swift_allocObject();
  sub_2747F1EEC(v118, v129 + v106);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696B8, &qword_274A15128);
  v131 = (v127 + *(result + 36));
  *v131 = sub_2747F2F10;
  v131[1] = v129;
  v131[2] = 0;
  v131[3] = 0;
  return result;
}

void sub_2747F0FE8()
{
  v1 = v0;
  v2 = sub_2749FAB54();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2749FB614();
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x28223BE20](v4);
  v48 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2749FAA94();
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2749FAE34();
  v41 = *(v9 - 8);
  v42 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v39 - v13;
  v15 = sub_2749FAE14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096F960, &qword_274A15130);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v39 - v20;
  v22 = *v0;
  v23 = *(v0 + 1);
  v24 = *(v0 + 2);
  v55 = v22;
  v56 = v23;
  v57 = v24;
  v25 = v1[3];
  v47 = v22;

  v46 = v23;

  v43 = v24;
  sub_2747EE34C(v21);
  v26 = sub_2749F91B4();
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v26);
  sub_2747EE554(v18);
  v40 = DynamicTypeSize.snippetEnvironmentDynamicTypeSize.getter();
  (*(v16 + 8))(v18, v15);
  sub_2747EE75C(v14);
  v27 = sub_2749FAF44();
  if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
  {
    sub_2747359D0(v14, &qword_2809695C8, &qword_274A14FB0);
    v39 = -1;
  }

  else
  {
    v39 = LegibilityWeight.snippetEnvironmentLegibilityWeight.getter();
    (*(*(v27 - 8) + 8))(v14, v27);
  }

  sub_2747EE934(v11);
  v28 = LayoutDirection.snippetEnvironmentLayoutDirection.getter();
  (*(v41 + 8))(v11, v42);
  sub_2747EEB3C(v8);
  v29 = ColorScheme.snippetEnvironmentColorScheme.getter();
  (*(v44 + 8))(v8, v45);
  v30 = v48;
  sub_2747EED44(v48);
  v31 = ColorSchemeContrast.snippetEnvironmentColorSchemeContrast.getter();
  (*(v49 + 8))(v30, v50);
  v32 = sub_2747EEF4C();
  v33 = v51;
  sub_2747EF0A8(v51);
  v34 = DisplayGamut.snippetEnvironmentDisplayGamut.getter();
  (*(v52 + 8))(v33, v53);
  LOBYTE(v33) = sub_2747EF2B0();
  v35 = sub_2747EF408();
  v36 = sub_2747EF560();
  v37 = sub_2747EF6B8();
  v38 = objc_allocWithZone(MEMORY[0x277D23C88]);
  v54 = sub_27483C520(v21, v40, v39, v28, v29, v31, v34, v33 & 1, v25, 1.79769313e308, v32, v35 & 1, v36 & 1, v37 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809696C0, &qword_274A15138);
  sub_2749FC6C4();
}

uint64_t sub_2747F15CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2747B97A0(a1, &v5 - v3, &qword_2809695C8, &qword_274A14FB0);
  return sub_2749FB1D4();
}

uint64_t sub_2747F1674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_2747F1734(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84F98];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969730, &qword_274A15438);
  v2 = sub_2749FDB54();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_2747B97A0(v6, &v15, &qword_280969738, &unk_274A15440);
    v7 = v15;
    v8 = v16;
    result = sub_274797CC0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_2747A42D8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_2747F1888(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SnippetEnvironmentModifier(uint64_t a1)
{
  result = qword_280969598;
  if (!qword_280969598)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2747F191C(uint64_t a1)
{
  v2 = type metadata accessor for SnippetEnvironmentModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2747F19A8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2747F19E8(uint64_t result, int a2, int a3)
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

unint64_t sub_2747F1A40()
{
  result = qword_280969570;
  if (!qword_280969570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969570);
  }

  return result;
}

void sub_2747F1ABC(uint64_t a1)
{
  sub_2747F1CD4(319);
  if (v1 <= 0x3F)
  {
    sub_2747F1D3C(319, &qword_2809695B8, MEMORY[0x277CC9788]);
    if (v2 <= 0x3F)
    {
      sub_2747F1D3C(319, &qword_28096CB80, MEMORY[0x277CDFA28]);
      if (v3 <= 0x3F)
      {
        sub_2747F1D90(319);
        if (v4 <= 0x3F)
        {
          sub_2747F1D3C(319, &qword_2809695D0, MEMORY[0x277CDFAA0]);
          if (v5 <= 0x3F)
          {
            sub_2747F1D3C(319, &qword_280968A60, MEMORY[0x277CDF3E0]);
            if (v6 <= 0x3F)
            {
              sub_2747F1D3C(319, &qword_2809695D8, MEMORY[0x277CE0228]);
              if (v7 <= 0x3F)
              {
                sub_2747F1DF4(319, &qword_2809695E0);
                if (v8 <= 0x3F)
                {
                  sub_2747F1D3C(319, &qword_2809695E8, MEMORY[0x277CDF548]);
                  if (v9 <= 0x3F)
                  {
                    sub_2747F1DF4(319, &qword_2809695F0);
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

void sub_2747F1CD4(uint64_t a1)
{
  if (!qword_2809695A8)
  {
    sub_27471CF08(255, &qword_2809695B0, 0x277D23C88);
    v1 = sub_2749FC714();
    if (!v2)
    {
      atomic_store(v1, &qword_2809695A8);
    }
  }
}

void sub_2747F1D3C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2749FAAB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2747F1D90(uint64_t a1)
{
  if (!qword_2809695C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8, &qword_274A14FB0);
    v1 = sub_2749FAAB4();
    if (!v2)
    {
      atomic_store(v1, &qword_2809695C0);
    }
  }
}

void sub_2747F1DF4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2749FAAB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_2747F1E88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetEnvironmentModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747F1EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetEnvironmentModifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2747F1F54()
{
  result = qword_280969688;
  if (!qword_280969688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8, &qword_274A14FB0);
    sub_2747F1888(&qword_280969690, MEMORY[0x277CDFB80], MEMORY[0x277CDFB88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969688);
  }

  return result;
}

unint64_t sub_2747F2008()
{
  result = qword_2809696A8;
  if (!qword_2809696A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809696A8);
  }

  return result;
}

uint64_t objectdestroy_28Tm()
{
  v1 = type metadata accessor for SnippetEnvironmentModifier(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = v1[6];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969650, &qword_274A150F8);
  if (OUTLINED_FUNCTION_17_7(v4) == 1)
  {
    sub_2749F91B4();
    OUTLINED_FUNCTION_1_2();
    (*(v5 + 8))(v2 + v3);
  }

  else
  {
  }

  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C200, &qword_274A15100);
  if (OUTLINED_FUNCTION_17_7(v7) == 1)
  {
    sub_2749FAE14();
    OUTLINED_FUNCTION_1_2();
    (*(v8 + 8))(v2 + v6);
  }

  else
  {
  }

  v9 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969658, &unk_274A15108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_2749FAF44();
    if (!__swift_getEnumTagSinglePayload(v2 + v9, 1, v10))
    {
      (*(*(v10 - 8) + 8))(v2 + v9, v10);
    }
  }

  else
  {
  }

  v11 = v1[9];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280968AA8, &unk_274A13650);
  if (OUTLINED_FUNCTION_17_7(v12) == 1)
  {
    sub_2749FAE34();
    OUTLINED_FUNCTION_1_2();
    (*(v13 + 8))(v2 + v11);
  }

  else
  {
  }

  v14 = v1[10];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096D850, &unk_274A13E20);
  if (OUTLINED_FUNCTION_17_7(v15) == 1)
  {
    sub_2749FAA94();
    OUTLINED_FUNCTION_1_2();
    (*(v16 + 8))(v2 + v14);
  }

  else
  {
  }

  v17 = v1[11];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28096DA60, &qword_274A13620);
  if (OUTLINED_FUNCTION_17_7(v18) == 1)
  {
    sub_2749FB614();
    OUTLINED_FUNCTION_1_2();
    (*(v19 + 8))(v2 + v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_10(v1[12]);
  v20 = v1[13];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280969660, &qword_274A15118);
  if (OUTLINED_FUNCTION_17_7(v21) == 1)
  {
    sub_2749FAB54();
    OUTLINED_FUNCTION_1_2();
    (*(v22 + 8))(v2 + v20);
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_10(v1[14]);
  OUTLINED_FUNCTION_10_10(v1[15]);
  OUTLINED_FUNCTION_10_10(v1[16]);
  OUTLINED_FUNCTION_10_10(v1[17]);

  return MEMORY[0x2821FE8E8](v0);
}

void sub_2747F23FC()
{
  v0 = type metadata accessor for SnippetEnvironmentModifier(0);
  OUTLINED_FUNCTION_34(v0);
  sub_2747F0FE8();
}

uint64_t sub_2747F2454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809695C8, &qword_274A14FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2747F250C()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_5_7(v1);

  return sub_2747EC3E4();
}

unint64_t sub_2747F25A4()
{
  result = qword_2809696F0;
  if (!qword_2809696F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809696F0);
  }

  return result;
}

unint64_t sub_2747F25F8()
{
  result = qword_280969728;
  if (!qword_280969728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969720, &qword_274A151E8);
    sub_2747F25A4();
    sub_2747F1A40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969728);
  }

  return result;
}

uint64_t sub_2747F2684()
{
  OUTLINED_FUNCTION_72();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_22_9(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_11_12(v1);

  return v4(v3);
}

uint64_t sub_2747F2714()
{
  OUTLINED_FUNCTION_79();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  v3 = *v0;
  OUTLINED_FUNCTION_8_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_2747F2800()
{
  result = qword_280969740;
  if (!qword_280969740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696B8, &qword_274A15128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969648, &qword_274A150F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969640, &qword_274A150E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969638, &qword_274A150E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969630, &qword_274A150D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969628, &qword_274A150D0);
    sub_2749FAB54();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969620, &qword_274A150C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969618, &qword_274A150C0);
    sub_2749FB614();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969610, &qword_274A150B8);
    sub_2749FAA94();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969608, &qword_274A150B0);
    sub_2749FAE34();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969600, &qword_274A150A8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695C8, &qword_274A14FB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809695F8, &qword_274A150A0);
    sub_2749FAE14();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280969668, &qword_274A15120);
    sub_2749F91B4();
    sub_27472AB6C(&qword_280969670, &qword_280969668, &qword_274A15120, MEMORY[0x277CE04B0]);
    sub_2747F1888(&qword_280969678, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280969680, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1F54();
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280969698, MEMORY[0x277CDFAA0], MEMORY[0x277CDFAB0]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_280968A80, MEMORY[0x277CDF3E0], MEMORY[0x277CDF3F8]);
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_2809696A0, MEMORY[0x277CE0228], MEMORY[0x277CE0240]);
    swift_getOpaqueTypeConformance2();
    sub_2747F2008();
    swift_getOpaqueTypeConformance2();
    sub_2747F1888(&qword_2809696B0, MEMORY[0x277CDF548], MEMORY[0x277CDF550]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969740);
  }

  return result;
}

unint64_t sub_2747F2D24()
{
  result = qword_280969748;
  if (!qword_280969748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696E8, &qword_274A151B8);
    sub_2747F2DDC();
    sub_27472AB6C(&qword_280969758, &qword_2809696E0, &qword_274A15180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969748);
  }

  return result;
}

unint64_t sub_2747F2DDC()
{
  result = qword_280969750;
  if (!qword_280969750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696D8, &qword_274A15178);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809696C8, &qword_274A15140);
    sub_27472AB6C(&qword_2809696D0, &qword_2809696C8, &qword_274A15140, MEMORY[0x277CE04B0]);
    swift_getOpaqueTypeConformance2();
    sub_27472AB6C(&qword_280969758, &qword_2809696E0, &qword_274A15180, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280969750);
  }

  return result;
}

char *sub_2747F2F2C(void *a1)
{
  v3 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  *&v1[v3] = [objc_opt_self() buttonWithType_];
  v4 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  *&v1[v4] = OUTLINED_FUNCTION_5_17();
  v5 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  *&v1[v5] = OUTLINED_FUNCTION_5_17();
  v6 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  *&v1[v6] = OUTLINED_FUNCTION_5_17();
  v7 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  *&v1[v7] = OUTLINED_FUNCTION_5_17();
  v8 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  *&v1[v8] = OUTLINED_FUNCTION_5_17();
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem] = 0;
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning] = 0;
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue] = 2;
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem] = 0;
  *&v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar] = a1;
  v9 = *MEMORY[0x277CBF3A0];
  v10 = *(MEMORY[0x277CBF3A0] + 8);
  v11 = *(MEMORY[0x277CBF3A0] + 16);
  v12 = *(MEMORY[0x277CBF3A0] + 24);
  v150.receiver = v1;
  v150.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  v149 = a1;
  v13 = objc_msgSendSuper2(&v150, sel_initWithFrame_, v9, v10, v11, v12);
  v14 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  v15 = *&v13[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
  sub_27471CF08(0, &qword_28096D750, 0x277D750C8);
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v13;
  v16 = v13;
  v17 = v15;
  v18 = OUTLINED_FUNCTION_0_20();
  v26 = sub_2749FD644(v18, v19, v20, v21, v22, v23, v24, v25, 0, 0);
  [v17 addAction:v26 forControlEvents:64];

  v27 = *&v13[v14];
  sub_27471CF08(0, &qword_280968030, 0x277D755B8);
  objc_opt_self();
  v28 = v27;
  v29 = OUTLINED_FUNCTION_2_21(v28, sel_configurationWithPointSize_weight_scale_);
  v30 = sub_2747F3934(0xD000000000000014, 0x8000000274A2DE80, v29);
  [v28 setImage:v30 forState:0];

  v31 = *&v13[v14];
  v32 = v16;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  v34 = *&v32[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v32;
  v35 = v32;
  v36 = v34;
  v37 = OUTLINED_FUNCTION_0_20();
  v45 = sub_2749FD644(v37, v38, v39, v40, v41, v42, v43, v44, 0, 0);
  [v36 addAction:v45 forControlEvents:64];

  v46 = *&v32[v33];
  v47 = OUTLINED_FUNCTION_2_21(v46, sel_configurationWithPointSize_weight_scale_);
  v48 = OUTLINED_FUNCTION_9_11();
  v51 = sub_2747F3934(v48, v49, v50);
  [v46 setImage:v51 forState:0];

  [v35 &selRef_actingAsNumberField];
  v52 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  v53 = *&v35[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v35;
  v54 = v35;
  v55 = v53;
  v56 = OUTLINED_FUNCTION_0_20();
  v64 = sub_2749FD644(v56, v57, v58, v59, v60, v61, v62, v63, 0, 0);
  [v55 addAction:v64 forControlEvents:64];

  v65 = *&v35[v52];
  v66 = OUTLINED_FUNCTION_2_21(v65, sel_configurationWithPointSize_weight_scale_);
  v67 = sub_2747F3934(0x7269632E6F666E69, 0xEB00000000656C63, v66);
  OUTLINED_FUNCTION_6_12(v67, sel_setImage_forState_);

  [v54 addSubview_];
  v68 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  v69 = *&v54[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v54;
  v70 = v54;
  v71 = v69;
  v72 = OUTLINED_FUNCTION_0_20();
  v80 = sub_2749FD644(v72, v73, v74, v75, v76, v77, v78, v79, 0, 0);
  OUTLINED_FUNCTION_7_10(v80, sel_addAction_forControlEvents_);

  v81 = *&v54[v68];
  v82 = OUTLINED_FUNCTION_2_21(v81, sel_configurationWithPointSize_weight_scale_);
  v83 = OUTLINED_FUNCTION_9_11();
  v86 = sub_2747F3934(v83, v84, v85);
  OUTLINED_FUNCTION_6_12(v86, sel_setImage_forState_);

  [v70 addSubview_];
  v87 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  v88 = *&v70[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v70;
  v89 = v70;
  v90 = v88;
  v91 = OUTLINED_FUNCTION_0_20();
  v99 = sub_2749FD644(v91, v92, v93, v94, v95, v96, v97, v98, 0, 0);
  OUTLINED_FUNCTION_7_10(v99, sel_addAction_forControlEvents_);

  v100 = *&v70[v87];
  v101 = OUTLINED_FUNCTION_10_11(v100, sel_configurationWithPointSize_weight_scale_);
  v103 = OUTLINED_FUNCTION_8_12(0x79616C70u, v102, v101);
  OUTLINED_FUNCTION_6_12(v103, sel_setImage_forState_);

  [v89 addSubview_];
  v104 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  v105 = *&v89[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton];
  OUTLINED_FUNCTION_86();
  *(swift_allocObject() + 16) = v89;
  v106 = v105;
  v107 = OUTLINED_FUNCTION_0_20();
  v115 = sub_2749FD644(v107, v108, v109, v110, v111, v112, v113, v114, 0, 0);
  OUTLINED_FUNCTION_7_10(v115, sel_addAction_forControlEvents_);

  v116 = *&v89[v104];
  v117 = OUTLINED_FUNCTION_10_11(v116, sel_configurationWithPointSize_weight_scale_);
  v119 = OUTLINED_FUNCTION_8_12(0x706F7473u, v118, v117);
  OUTLINED_FUNCTION_6_12(v119, sel_setImage_forState_);

  [*&v89[v104] setAlpha_];
  [v89 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274A15450;
  v121 = *&v70[v87];
  *(inited + 32) = v121;
  v148 = v89;
  v122 = *&v89[v104];
  *(inited + 40) = v122;
  v123 = sub_27471CF08(0, &qword_280969480, 0x277CD9EA0);
  sub_2747B2790();
  sub_2747B2790();
  v124 = v121;
  v125 = v122;
  v126 = 0;
  v127 = 0;
  do
  {
    v128 = v126;
    if ((inited & 0xC000000000000001) != 0)
    {
      v129 = MEMORY[0x277C5F6D0](v127, inited);
    }

    else
    {
      v129 = *(inited + 32 + 8 * v127);
    }

    v130 = v129;
    v131 = _sSo32WFShortcutConcerningReportReasona10WorkflowUIE2idSSvg_0();
    v133 = sub_27480D818(v131, v132);
    sub_2747D57FC(0x6E61697373756167, 0xEC00000072756C42, v133);
    sub_2749F9884();
    v134 = OUTLINED_FUNCTION_1_25();
    [v134 v135];

    sub_2749FD034();
    v136 = OUTLINED_FUNCTION_1_25();
    [v136 v137];

    sub_2749FD034();
    v138 = OUTLINED_FUNCTION_1_25();
    [v138 v139];

    sub_2749FCD64();
    v140 = OUTLINED_FUNCTION_1_25();
    [v140 v141];

    sub_2749FCD64();
    v142 = OUTLINED_FUNCTION_1_25();
    [v142 v143];

    v121 = [v130 layer];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280968A00, &qword_274A0FCC0);
    v144 = swift_allocObject();
    *(v144 + 16) = xmmword_274A0EF10;
    *(v144 + 56) = v123;
    *(v144 + 32) = v133;
    v145 = v133;
    sub_27480FF3C(v144, v121);

    v126 = 1;
    v127 = 1;
  }

  while ((v128 & 1) == 0);
  swift_setDeallocating();
  sub_2747A3418();
  v146 = [objc_opt_self() labelColor];
  [v148 setTintColor_];

  return v148;
}

id sub_2747F3934(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2749FCD64();

  v5 = [swift_getObjCClassFromMetadata() systemImageNamed:v4 withConfiguration:a3];

  return v5;
}

id sub_2747F39A4(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  result = [v4 delegate];
  if (result)
  {
    v6 = result;
    if ([result respondsToSelector_])
    {
      [v6 *a3];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2747F3A40(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  result = [v3 delegate];
  if (result)
  {
    v5 = result;
    if ([result respondsToSelector_])
    {
      [v5 runToolbarShareTapped:v3 sender:*(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton)];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2747F3AEC(uint64_t a1, uint64_t a2, SEL *a3, char a4)
{
  v6 = *(a2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  v7 = [v6 delegate];
  if (v7)
  {
    v8 = v7;
    if ([v7 respondsToSelector_])
    {
      [v8 *a3];
    }

    swift_unknownObjectRelease();
  }

  sub_2747F5344(a4 & 1);
  return sub_2747F535C(a4 & 1);
}

uint64_t sub_2747F3B8C()
{
  v29.receiver = v0;
  v29.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  objc_msgSendSuper2(&v29, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v30);
  CGSizeMake();
  v1 = OUTLINED_FUNCTION_11_13();
  [v1 displayScale];

  BSFloatRoundForScale();
  v2 = [v0 effectiveUserInterfaceLayoutDirection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096C990, &qword_274A11FB0);
  v3 = swift_allocObject();
  v4 = v3;
  *(v3 + 16) = xmmword_274A15460;
  if (v2 == 1)
  {
    v5 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
    v6 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
    *(v3 + 32) = v5;
    *(v3 + 40) = v6;
    v7 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
    v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
    v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
    *(v3 + 48) = v7;
    *(v3 + 56) = v8;
    v26 = v8;
    v28 = v6;
    v10 = v9;
    v11 = v5;
  }

  else
  {
    v5 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton];
    v6 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton];
    *(v3 + 32) = v5;
    *(v3 + 40) = v6;
    v7 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton];
    v8 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton];
    v9 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton];
    *(v3 + 48) = v7;
    *(v3 + 56) = v8;
    v26 = v6;
    v28 = v8;
    v10 = v5;
    v11 = v9;
  }

  *(v3 + 64) = v9;
  v12 = v5;
  v13 = v6;
  v14 = v7;
  v15 = v8;
  v16 = v9;
  result = sub_27472D918(v4);
  if (!result)
  {
LABEL_11:

    v22 = *&v0[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton];
    [v11 frame];
    [v22 setFrame_];
    v23 = OUTLINED_FUNCTION_11_13();
    [v23 displayScale];

    [v10 frame];
    [v10 setFrame_];
    v24 = OUTLINED_FUNCTION_11_13();
    [v24 displayScale];

    [v27 frame];
    [v27 setFrame_];
    v25 = OUTLINED_FUNCTION_11_13();
    [v25 displayScale];

    [v28 frame];
    return [v28 setFrame_];
  }

  v18 = result;
  if (result >= 1)
  {
    v19 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x277C5F6D0](v19, v4);
      }

      else
      {
        v20 = *(v4 + 8 * v19 + 32);
      }

      v21 = v20;
      ++v19;
      CGRectMake();
      [v21 setFrame_];
      [v21 frame];
      CGRectGetMaxX(v31);
    }

    while (v18 != v19);
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_2747F3FC8(double a1)
{
  v2 = v1;
  v3 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue;
  v4 = *(v2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue);
  if (v4 != 2)
  {
    if (([*(v2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar) isRunning] ^ v4))
    {
      return;
    }

    *(v2 + v3) = 2;
    v5 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem;
    if (*(v2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem))
    {

      sub_2749FCAE4();
    }

    *(v2 + v5) = 0;
  }

  sub_2747F5344([*(v2 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar) isRunning]);

  sub_2747F40A8();
}

void sub_2747F40A8()
{
  v1 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton);
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_toolbar);
  v3 = [v2 workflowUndoManager];
  if (v3 && (v4 = v3, v5 = [v3 canUndo], v4, v5))
  {
    v6 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  sub_2747F4230(v1, v6 & 1);
  v7 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton);
  v8 = [v2 workflowUndoManager];
  if (v8 && (v9 = v8, v10 = [v8 canRedo], v9, v10))
  {
    v11 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  sub_2747F4230(v7, v11 & 1);
  v12 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  sub_2747F4230(*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton), (*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) & 1) == 0);
  v13 = *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton);
  if (*(v0 + v12))
  {
    v14 = 0;
  }

  else
  {
    v14 = [v2 shareEnabled];
  }

  sub_2747F4230(v13, v14);
  sub_2747F4230(*(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton), [v2 playEnabled]);
}

void sub_2747F4230(void *a1, char a2)
{
  [a1 setUserInteractionEnabled_];
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v6 = a1;
  v7 = sub_27480FE78(sub_2747F59D8, v4, 0.3, 1.0);
  [v7 startAnimation];
}

uint64_t sub_2747F42F8(char a1)
{
  v2 = v1;
  v3 = a1 & 1;
  v4 = sub_2749FCA74();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2749FCAA4();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2749FCAC4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v24 - v16;
  v18 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  if (v2[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning] != v3)
  {
    sub_2747F40A8();
    v19 = v2[v18];
    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    v25 = sub_2749FD404();
    sub_2749FCAB4();
    sub_2749FCB14();
    v26 = *(v11 + 8);
    v26(v14, v10);
    v20 = swift_allocObject();
    *(v20 + 16) = v2;
    *(v20 + 24) = v19;
    aBlock[4] = sub_2747F5994;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274760264;
    aBlock[3] = &block_descriptor_18;
    v21 = _Block_copy(aBlock);
    v22 = v2;

    sub_2749FCA94();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_27473FC78();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
    sub_27473FCD0();
    sub_2749FD7B4();
    v23 = v25;
    MEMORY[0x277C5F120](v17, v9, v6, v21);
    _Block_release(v21);

    (*(v29 + 8))(v6, v4);
    (*(v27 + 8))(v9, v28);
    return (v26)(v17, v10);
  }

  return result;
}

uint64_t sub_2747F469C(uint64_t a1, char a2)
{
  v3 = a2 & 1;
  v4 = sub_2749FCAC4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = sub_2749FCA74();
  result = MEMORY[0x28223BE20](v11);
  v13 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning;
  if (*(a1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) == v3)
  {
    v14 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem;
    v15 = *(a1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem);
    v51 = v5;
    v52 = v4;
    v50 = v10;
    v48 = v8;
    if (v15)
    {

      sub_2749FCAE4();
    }

    *(a1 + v14) = 0;

    v16 = *(a1 + v13) == 0;
    if (*(a1 + v13))
    {
      v17 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
    }

    else
    {
      v17 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
    }

    v18 = *(a1 + v17);
    if (v16)
    {
      v19 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
    }

    else
    {
      v19 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
    }

    v20 = *(a1 + v19);
    CGAffineTransformMakeScale(&v58, 0.75, 0.75);
    tx = v58.tx;
    ty = v58.ty;
    v49 = *&v58.a;
    v47 = *&v58.c;
    CGAffineTransformMakeScale(&v58, 0.65, 0.65);
    v23 = v18;
    v24 = v20;
    v55 = v47;
    aBlock = v49;
    v56 = tx;
    v57 = ty;
    [v23 setTransform_];
    v25 = objc_opt_self();
    v26 = swift_allocObject();
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    v27 = *&v58.c;
    *(v26 + 32) = *&v58.a;
    *(v26 + 48) = v27;
    *(v26 + 64) = *&v58.tx;
    v56 = COERCE_DOUBLE(sub_2747F59A0);
    v57 = *&v26;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_24_0;
    v28 = _Block_copy(&aBlock);
    *&v49 = v14;
    v29 = v28;
    v30 = v23;
    v31 = v24;

    v56 = COERCE_DOUBLE(CGSizeMake);
    v57 = 0.0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_27480D7B8;
    *(&v55 + 1) = &block_descriptor_27;
    v32 = _Block_copy(&aBlock);
    [v25 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v32);
    _Block_release(v29);
    v33 = swift_allocObject();
    *(v33 + 16) = v31;
    v56 = COERCE_DOUBLE(sub_2747F59AC);
    v57 = *&v33;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_33_0;
    v34 = _Block_copy(&aBlock);
    v35 = v31;

    v56 = COERCE_DOUBLE(CGSizeMake);
    v57 = 0.0;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_27480D7B8;
    *(&v55 + 1) = &block_descriptor_36;
    v36 = _Block_copy(&aBlock);
    [v25 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
    _Block_release(v36);
    _Block_release(v34);
    v37 = swift_allocObject();
    *(v37 + 16) = v30;
    *(v37 + 24) = v35;
    v56 = COERCE_DOUBLE(sub_2747F59C0);
    v57 = *&v37;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v55 = sub_274760264;
    *(&v55 + 1) = &block_descriptor_42;
    _Block_copy(&aBlock);
    v53 = MEMORY[0x277D84F90];
    sub_27473FC78();
    v38 = v30;
    v39 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
    sub_27473FCD0();
    sub_2749FD7B4();
    sub_2749FCAF4();
    swift_allocObject();
    v40 = sub_2749FCAD4();

    *(a1 + v49) = v40;

    sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
    v41 = sub_2749FD404();
    v42 = v48;
    sub_2749FCAB4();
    v43 = v50;
    sub_2749FCB14();
    v44 = *(v51 + 8);
    v45 = v42;
    v46 = v52;
    v44(v45, v52);
    sub_2749FD3D4();

    return (v44)(v43, v46);
  }

  return result;
}

id sub_2747F4D04(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 32);
  v6 = *(a3 + 40);
  v7 = [a1 layer];
  v8 = sub_2749F9884();
  v9 = sub_2749FCD64();
  [v7 setValue:v8 forKeyPath:v9];

  v10 = [a2 layer];
  v11 = sub_2749F9884();
  v12 = sub_2749FCD64();
  [v10 setValue:v11 forKeyPath:v12];

  v13 = *(a3 + 16);
  v15[0] = *a3;
  v15[1] = v13;
  v16 = v5;
  v17 = v6;
  return [a2 setTransform_];
}

void sub_2747F4E34(void *a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v22 = sub_2747F59C8;
  v23 = v5;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_48;
  v6 = _Block_copy(&v18);
  v7 = a1;
  v8 = a2;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_51;
  v9 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v9);
  _Block_release(v6);
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  v22 = sub_2747B68F4;
  v23 = v10;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_57;
  v11 = _Block_copy(&v18);
  v12 = v7;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_60;
  v13 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v13);
  _Block_release(v11);
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v22 = sub_2747F59D0;
  v23 = v14;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_274760264;
  v21 = &block_descriptor_66;
  v15 = _Block_copy(&v18);
  v16 = v12;

  v22 = CGSizeMake;
  v23 = 0;
  v18 = MEMORY[0x277D85DD0];
  v19 = 1107296256;
  v20 = sub_27480D7B8;
  v21 = &block_descriptor_69;
  v17 = _Block_copy(&v18);
  [v4 _animateUsingSpringWithDampingRatio_response_tracking_dampingRatioSmoothing_responseSmoothing_targetSmoothing_projectionDeceleration_animations_completion_];
  _Block_release(v17);
  _Block_release(v15);
}

void sub_2747F51F0(void *a1, void *a2)
{
  v3 = [a1 layer];
  v4 = sub_2749F9884();
  v5 = sub_2749FCD64();
  [v3 setValue:v4 forKeyPath:v5];

  v6 = [a2 layer];
  v7 = sub_2749F9884();
  v8 = sub_2749FCD64();
  [v6 setValue:v7 forKeyPath:v8];
}

id sub_2747F5300(void *a1)
{
  v1 = *(MEMORY[0x277CBF2C0] + 16);
  v3[0] = *MEMORY[0x277CBF2C0];
  v3[1] = v1;
  v3[2] = *(MEMORY[0x277CBF2C0] + 32);
  return [a1 setTransform_];
}

uint64_t sub_2747F5344(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning);
  *(v1 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) = a1;
  return sub_2747F42F8(v2);
}

uint64_t sub_2747F535C(char a1)
{
  v3 = sub_2749FCAC4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = sub_2749FCA74();
  MEMORY[0x28223BE20](v10);
  v1[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue] = a1;
  OUTLINED_FUNCTION_86();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_2747F5984;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274760264;
  aBlock[3] = &block_descriptor_15;
  _Block_copy(aBlock);
  v17[1] = MEMORY[0x277D84F90];
  sub_27473FC78();
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28096DB60, &qword_274A0F640);
  sub_27473FCD0();
  sub_2749FD7B4();
  sub_2749FCAF4();
  swift_allocObject();
  v13 = sub_2749FCAD4();

  *&v12[OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem] = v13;

  sub_27471CF08(0, &qword_28159E4E0, 0x277D85C78);
  v14 = sub_2749FD404();
  sub_2749FCAB4();
  sub_2749FCB14();
  v15 = *(v4 + 8);
  v15(v7, v3);
  sub_2749FD3D4();

  return (v15)(v9, v3);
}

void sub_2747F5668()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_undoButton;
  *(v0 + v1) = [objc_opt_self() buttonWithType_];
  v2 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_redoButton;
  *(v0 + v2) = OUTLINED_FUNCTION_4_15();
  v3 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_infoButton;
  *(v0 + v3) = OUTLINED_FUNCTION_4_15();
  v4 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_shareButton;
  *(v0 + v4) = OUTLINED_FUNCTION_4_15();
  v5 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_playButton;
  *(v0 + v5) = OUTLINED_FUNCTION_4_15();
  v6 = OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_stopButton;
  *(v0 + v6) = OUTLINED_FUNCTION_4_15();
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingWorkItem) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_isRunning) = 0;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValue) = 2;
  *(v0 + OBJC_IVAR____TtC10WorkflowUI27WFDrawerEmbeddedToolbarView_pendingRunningStateValueTimeoutWorkItem) = 0;
  sub_2749FDAE4();
  __break(1u);
}

id WFDrawerEmbeddedToolbarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id WFDrawerEmbeddedToolbarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFDrawerEmbeddedToolbarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2747F59D8()
{
  v1 = 0.22;
  if (*(v0 + 24))
  {
    v1 = 1.0;
  }

  return [*(v0 + 16) setAlpha_];
}

id sub_2747F5B24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2749FCD64();

  v7 = [swift_getObjCClassFromMetadata() boundarySupplementaryItemWithLayoutSize:a1 elementKind:v6 alignment:a4];

  return v7;
}

uint64_t sub_2747F5BAC(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_2747F5C34(v2, v1);
}

uint64_t sub_2747F5BE8()
{
  OUTLINED_FUNCTION_24();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_2747F5C34(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_2747F5CA0(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_2747F5D2C;
}

void sub_2747F5D2C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + *(*a1 + 48) + 8) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void sub_2747F5DB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x277C5FB60](v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v6 = *v4++;
      v5 = v6;
      if (v6)
      {
        if (v5 != 1)
        {
          MEMORY[0x277C5FB60](2);
          v8 = v5;
          sub_2749FD614();
          sub_27478C360(v5);
          goto LABEL_9;
        }

        v7 = 1;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x277C5FB60](v7);
LABEL_9:
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_2747F5E58(uint64_t a1)
{
  sub_2749FDDF4();
  sub_27478AA54(v3, a1);
  return sub_2749FDE44();
}

BOOL sub_2747F5EA0(uint64_t a1, unint64_t a2)
{
  if (!a1)
  {
    return !a2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if (a2 < 2)
  {
    return 0;
  }

  sub_27471CF08(0, &qword_28159E390, 0x277D82BB8);
  return sub_2749FD604() & 1;
}

uint64_t sub_2747F5F28(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v2 = 0;
    return MEMORY[0x277C5FB60](v2);
  }

  if (a2 == 1)
  {
    v2 = 1;
    return MEMORY[0x277C5FB60](v2);
  }

  MEMORY[0x277C5FB60](2);
  return sub_2749FD614();
}

uint64_t sub_2747F5F80(uint64_t a1)
{
  sub_2749FDDF4();
  if (a1)
  {
    if (a1 != 1)
    {
      MEMORY[0x277C5FB60](2);
      sub_2749FD614();
      return sub_2749FDE44();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x277C5FB60](v2);
  return sub_2749FDE44();
}

uint64_t sub_2747F6050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6 = *v4;
  sub_2749FDDF4();
  a4(v8, v6);
  return sub_2749FDE44();
}

id sub_2747F60A8()
{
  v1 = OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___layout;
  v2 = *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___layout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC10WorkflowUI26MoveToFolderViewController____lazy_storage___layout);
  }

  else
  {
    v4 = sub_2747F6108();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}