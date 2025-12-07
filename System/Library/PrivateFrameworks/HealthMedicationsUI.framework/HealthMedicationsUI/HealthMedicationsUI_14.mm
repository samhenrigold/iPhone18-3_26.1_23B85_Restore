uint64_t sub_2282E3B90(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22838EF60() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_2282E34A0(0, &qword_27D827560, MEMORY[0x277D858B0]);
  v9 = (v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_22819DA1C;

  return sub_2282E13B0(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

void sub_2282E3D0C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_22817A958(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_2282E3D74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_2282E3D0C(255, &qword_27D823F40, &qword_27D823F48, 0x277D11588, MEMORY[0x277D83940]);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_2282E3E00(uint64_t a1)
{
  if (!qword_27D827580)
  {
    sub_2282E3D0C(255, &qword_27D827588, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB630]);
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D827580);
    }
  }
}

unint64_t sub_2282E3E84()
{
  result = qword_27D8275A0;
  if (!qword_27D8275A0)
  {
    sub_2282E3D0C(255, &qword_27D827598, &unk_280DDB968, 0x277CCD8A8, MEMORY[0x277CCB638]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8275A0);
  }

  return result;
}

uint64_t sub_2282E3F08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_19Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2282E3FB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22819DA1C;

  return sub_2282E00C4(a1, v4, v5, v6);
}

uint64_t sub_2282E4094(uint64_t a1, uint64_t (*a2)(BOOL, unint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v29 = MEMORY[0x277D84F90];
  a2(0, v2, 0);
  v3 = v29;
  v4 = a1 + 64;
  result = sub_228393040();
  v6 = result;
  v7 = a1;
  v8 = 0;
  v9 = *(a1 + 36);
  v27 = v2;
  v28 = v9;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v7 + 32))
  {
    v12 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v9 != *(v7 + 36))
    {
      goto LABEL_23;
    }

    v13 = *(*(v7 + 56) + 8 * v6);
    v15 = *(v29 + 16);
    v14 = *(v29 + 24);
    v16 = v7;

    if (v15 >= v14 >> 1)
    {
      result = a2(v14 > 1, v15 + 1, 1);
    }

    *(v29 + 16) = v15 + 1;
    *(v29 + 8 * v15 + 32) = v13;
    v10 = 1 << *(v16 + 32);
    if (v6 >= v10)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v17 = *(a1 + 64 + 8 * v12);
    if ((v17 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v7 = v16;
    v18 = *(v16 + 36);
    v9 = v28;
    if (v28 != v18)
    {
      goto LABEL_26;
    }

    v19 = v17 & (-2 << (v6 & 0x3F));
    if (v19)
    {
      v10 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v11 = v27;
    }

    else
    {
      v20 = v12 << 6;
      v21 = v12 + 1;
      v22 = (a1 + 72 + 8 * v12);
      v11 = v27;
      while (v21 < (v10 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_228205ADC(v6, v28, 0);
          v7 = a1;
          v10 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      result = sub_228205ADC(v6, v28, 0);
      v7 = a1;
    }

LABEL_4:
    ++v8;
    v6 = v10;
    if (v8 == v11)
    {
      return v3;
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
  return result;
}

void *sub_2282E42F8(void (*a1)(void *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v17 = MEMORY[0x277D84F98];
  sub_2282E84B4(a5, a1, a2, &v17);
  v16 = sub_2282E4094(v17, sub_2281CA08C);

  sub_2282EA294(&v16, a3, a4, sub_228340824, sub_2282E9308);

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v16 + 32;
    v11 = MEMORY[0x277D84F90];
    while (v9 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_228199670(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_228199670((v13 > 1), v14 + 1, 1, v11);
      }

      ++v9;
      v11[2] = v14 + 1;
      v11[v14 + 4] = v12;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_11:

    return v11;
  }

  return result;
}

void *sub_2282E44B8(void (*a1)(void *__return_ptr, void **), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = MEMORY[0x277D84F98];
  sub_2282E87E4(a5, a1, a2, &v17);
  v16 = sub_2282E4094(v17, sub_2281CA174);

  sub_2282EA294(&v16, a3, a4, sub_228340838, sub_2282EA154);

  v7 = v16;
  v8 = *(v16 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = v16 + 32;
    v11 = MEMORY[0x277D84F90];
    while (v9 < *(v7 + 16))
    {
      v12 = *(v10 + 8 * v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_2281998F0(0, v11[2] + 1, 1, v11);
      }

      v14 = v11[2];
      v13 = v11[3];
      if (v14 >= v13 >> 1)
      {
        v11 = sub_2281998F0((v13 > 1), v14 + 1, 1, v11);
      }

      ++v9;
      v11[2] = v14 + 1;
      v11[v14 + 4] = v12;
      if (v8 == v9)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_11:

    return v11;
  }

  return result;
}

uint64_t sub_2282E4678(void *a1, void *a2, char a3, void (*a4)(void *__return_ptr, void **), uint64_t a5, void *a6)
{
  v27 = a1;
  v28 = a2;
  v29 = a3 & 1;
  a4(v26, &v27);
  v9 = v26[0];
  v8 = v26[1];
  if (!*(*a6 + 16) || (, sub_2281A76E0(v9, v8), v11 = v10, , (v11 & 1) == 0))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25[0] = *a6;
    *a6 = 0x8000000000000000;
    sub_22829AE24(MEMORY[0x277D84F90], v9, v8, isUniquelyReferenced_nonNull_native);

    *a6 = v25[0];
  }

  v14 = sub_2282E48EC(v25, v9, v8);
  v15 = *v13;
  if (*v13)
  {
    v16 = v13;
    v30 = v6;
    v17 = v27;
    v18 = v28;
    v19 = v29;
    sub_22819A598(v27, v28, v29);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    *v16 = v15;
    if ((v20 & 1) == 0)
    {
      v15 = sub_228199528(0, *(v15 + 2) + 1, 1, v15);
      *v16 = v15;
    }

    v22 = *(v15 + 2);
    v21 = *(v15 + 3);
    if (v22 >= v21 >> 1)
    {
      v15 = sub_228199528((v21 > 1), v22 + 1, 1, v15);
      *v16 = v15;
    }

    *(v15 + 2) = v22 + 1;
    v23 = &v15[24 * v22];
    *(v23 + 4) = v17;
    *(v23 + 5) = v18;
    v23[48] = v19;
    (v14)(v25, 0);
  }

  else
  {
    (v14)(v25, 0);
  }
}

uint64_t (*sub_2282E4864(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2282E7608(v6, a2, a3);
  return sub_2282EAA58;
}

uint64_t (*sub_2282E48EC(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_2282E76B4(v6, a2, a3);
  return sub_2282E4974;
}

void sub_2282E4978(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2282E49C4(unint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t *, uint64_t *))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = a1;
  v10 = sub_2283930D0();
  a1 = v9;
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_14:
    v5 = MEMORY[0x22AAB6D80](0, a1);
    goto LABEL_6;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_6:
  v12 = v5;
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  result = sub_2283930D0();
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_8:
  if ((a2 & 0xC000000000000001) != 0)
  {
LABEL_18:
    v7 = MEMORY[0x22AAB6D80](0, a2);
    goto LABEL_11;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

LABEL_11:
    v11 = v7;
    v8 = a3(&v12, &v11);

    return v8 & 1;
  }

  __break(1u);
  return result;
}

void *sub_2282E4B04(void *result, uint64_t a2, uint64_t (*a3)(void **, void **))
{
  if (!result[2] || (v5 = result[4], v6 = result[5], v15 = *(result + 48), result = sub_22819A598(v5, v6, v15), v13 = v5, v14 = v6, v15 == 255))
  {
    __break(1u);
  }

  else if (*(a2 + 16))
  {
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v12 = *(a2 + 48);
    result = sub_22819A598(v7, v8, v12);
    v10 = v7;
    v11 = v8;
    if (v12 != 255)
    {
      v9 = a3(&v13, &v10);
      sub_2282E32E8(v10, v11, v12);
      sub_2282E32E8(v13, v14, v15);
      return (v9 & 1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282E4BE4(unint64_t a1)
{
  v10 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_17:
    v2 = sub_2283930D0();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAB6D80](i, a1);
          v4 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_14:
            __break(1u);
            return v10;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v4 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_14;
          }
        }

        v5 = sub_228390A10();
        v6 = [v5 logStatus];

        if (v6 == 4 || (v7 = sub_228390A10(), v8 = [v7 logStatus], v7, v8 == 5))
        {
          sub_228393210();
          sub_228393250();
          sub_228393260();
          sub_228393220();
        }

        else
        {
        }

        if (v4 == v2)
        {
          return v10;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282E4D64(unint64_t a1)
{
  sub_2282EA894(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v22 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_20:
    v5 = sub_2283930D0();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v20 = a1 & 0xFFFFFFFFFFFFFF8;
      v21 = a1 & 0xC000000000000001;
      while (1)
      {
        if (v21)
        {
          MEMORY[0x22AAB6D80](v6, a1);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_17:
            __break(1u);
            return v22;
          }
        }

        else
        {
          if (v6 >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_17;
          }
        }

        v9 = sub_228390A10();
        v10 = [v9 scheduleItemIdentifier];

        if (v10)
        {

          v11 = sub_228390A10();
          v12 = [v11 scheduledDate];

          if (v12)
          {
            sub_22838F3E0();

            v13 = sub_22838F440();
            (*(*(v13 - 8) + 56))(v4, 0, 1, v13);
            sub_2282EA98C(v4, &qword_280DDCDB0, MEMORY[0x277CC9578]);
            v14 = sub_228390A10();
            v15 = [v14 logStatus];

            if (v15 != 4)
            {
              v16 = sub_228390A10();
              v17 = [v16 &selRef_opaqueSeparatorColor + 1];

              if (v17 != 5)
              {
                sub_228393210();
                sub_228393250();
                sub_228393260();
                sub_228393220();
                goto LABEL_6;
              }
            }
          }

          else
          {
            v7 = sub_22838F440();
            (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
            sub_2282EA98C(v4, &qword_280DDCDB0, MEMORY[0x277CC9578]);
          }
        }

LABEL_6:
        ++v6;
        if (v8 == v5)
        {
          return v22;
        }
      }
    }
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2282E509C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_23:
    v23 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_2283930D0();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v23 = MEMORY[0x277D84F90];
  v5 = &selRef_localizedStringFromTimeInterval_;
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](v6, a1);
        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = sub_228390A10();
      v8 = [v7 v5[98]];
      if (v8)
      {
        break;
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v9 = v8;
    v10 = sub_228392000();
    v21 = v11;
    v22 = v10;

    v12 = [v7 medicationIdentifier];
    v13 = sub_228392000();
    v15 = v14;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_228199404(0, *(v23 + 2) + 1, 1, v23);
    }

    v17 = *(v23 + 2);
    v16 = *(v23 + 3);
    if (v17 >= v16 >> 1)
    {
      v23 = sub_228199404((v16 > 1), v17 + 1, 1, v23);
    }

    *(v23 + 2) = v17 + 1;
    v18 = &v23[32 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    *(v18 + 6) = v22;
    *(v18 + 7) = v21;
    v5 = &selRef_localizedStringFromTimeInterval_;
  }

  while (v4 != v3);
LABEL_24:
  v19 = sub_2282B9714(v23);

  return v19;
}

char *sub_2282E52A8(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v3 = sub_2283930D0();
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    for (i = v4; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAB6D80](i, a1);
        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v4 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v7 = sub_228390A20();
      if (v7)
      {
        break;
      }

      if (v4 == v3)
      {
        return v5;
      }
    }

    v8 = v7;
    v9 = sub_228390A10();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_228199528(0, *(v5 + 2) + 1, 1, v5);
    }

    v11 = *(v5 + 2);
    v10 = *(v5 + 3);
    if (v11 >= v10 >> 1)
    {
      v5 = sub_228199528((v10 > 1), v11 + 1, 1, v5);
    }

    *(v5 + 2) = v11 + 1;
    v12 = &v5[24 * v11];
    *(v12 + 4) = v9;
    *(v12 + 5) = v8;
    v12[48] = 1;
  }

  while (v4 != v3);
  return v5;
}

uint64_t sub_2282E5438(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAB6D80](v3, a1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_24;
      }

LABEL_9:
      v18[1] = v5;
      sub_22825A264(v18);

      v7 = v18[0];
      v8 = *(v18[0] + 16);
      v9 = *(v4 + 2);
      v10 = v9 + v8;
      if (__OFADD__(v9, v8))
      {
        goto LABEL_26;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v10 <= *(v4 + 3) >> 1)
      {
        if (*(v7 + 16))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v9 <= v10)
        {
          v12 = v9 + v8;
        }

        else
        {
          v12 = v9;
        }

        v4 = sub_228199404(isUniquelyReferenced_nonNull_native, v12, 1, v4);
        if (*(v7 + 16))
        {
LABEL_18:
          if ((*(v4 + 3) >> 1) - *(v4 + 2) < v8)
          {
            goto LABEL_28;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v13 = *(v4 + 2);
            v14 = __OFADD__(v13, v8);
            v15 = v13 + v8;
            if (v14)
            {
              goto LABEL_29;
            }

            *(v4 + 2) = v15;
          }

          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_27;
      }

LABEL_5:
      ++v3;
      if (v6 == i)
      {
        goto LABEL_32;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v5 = *(a1 + 8 * v3 + 32);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_32:
  v16 = sub_2282B9714(v4);

  return v16;
}

uint64_t DayScheduleProvider.init(doseEvents:scheduleItems:timeZoneChange:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v5 = a4 + *(type metadata accessor for DayScheduleProvider(0) + 24);

  return sub_2282E56BC(a3, v5);
}

uint64_t type metadata accessor for DayScheduleProvider(uint64_t a1)
{
  result = qword_27D8275A8;
  if (!qword_27D8275A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282E56BC(uint64_t a1, uint64_t a2)
{
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *DayScheduleProvider.makeLoggableItems(timeZone:)(void *a1)
{
  v117 = *MEMORY[0x277D85DE8];
  v3 = sub_22838F440();
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228390C80();
  v107 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v103 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v90 - v8;
  v10 = *v1;
  v98 = sub_2282E4D64(*v1);
  v11 = sub_2282E4BE4(v10);
  v111 = sub_2282E509C(v11);

  v100 = sub_2282E6598(a1);
  v12 = v1[1];
  if (v12 >> 62)
  {
    goto LABEL_69;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v14 = 0;
    v110 = 0;
    v94 = v12 & 0xC000000000000001;
    v93 = v12 & 0xFFFFFFFFFFFFFF8;
    v92 = v12 + 32;
    v101 = v107 + 16;
    v114 = v107 + 8;
    v115 = v111 + 56;
    v96 = MEMORY[0x277D84F90];
    v102 = v9;
    v90 = i;
    v91 = v12;
    while (v94)
    {
      v86 = v14;
      v16 = MEMORY[0x22AAB6D80](v14, v12);
      v18 = __OFADD__(v86, 1);
      v19 = v86 + 1;
      if (v18)
      {
        goto LABEL_62;
      }

LABEL_9:
      v95 = v19;
      v12 = v16;
      v20 = sub_228390AF0();
      v21 = v20;
      v108 = *(v20 + 16);
      if (v108)
      {
        v22 = 0;
        v104 = v20 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
        v99 = MEMORY[0x277D84F90];
        v106 = v16;
        v105 = v20;
        while (1)
        {
          if (v22 >= *(v21 + 16))
          {
            goto LABEL_63;
          }

          v23 = v107;
          v24 = *(v107 + 72);
          v113 = v22;
          v25 = *(v107 + 16);
          v25(v9, v104 + v24 * v22, v5);
          v26 = v103;
          v25(v103, v9, v5);
          v27 = sub_228390C70();
          v28 = [v27 semanticIdentifier];

          v29 = [v28 stringValue];
          v30 = sub_228392000();
          v32 = v31;

          v33 = sub_228390C50();
          v35 = v34;
          v112 = *(v23 + 8);
          v112(v26, v5);
          v36 = v111;
          if (*(v111 + 16) && (sub_228393520(), sub_2283920B0(), sub_2283920B0(), v37 = sub_228393570(), v38 = -1 << *(v36 + 32), v39 = v37 & ~v38, ((*(v115 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) != 0))
          {
            v40 = ~v38;
            v41 = *(v36 + 48);
            while (1)
            {
              v42 = (v41 + 32 * v39);
              v12 = v42[2];
              v43 = v42[3];
              v44 = *v42 == v30 && v42[1] == v32;
              if (v44 || (sub_228393460() & 1) != 0)
              {
                v45 = v12 == v33 && v43 == v35;
                if (v45 || (sub_228393460() & 1) != 0)
                {
                  break;
                }
              }

              v39 = (v39 + 1) & v40;
              if (((*(v115 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
              {
                goto LABEL_30;
              }
            }

            v9 = v102;
          }

          else
          {
LABEL_30:

            v47 = v110;
            v48 = sub_2282EA484(v46, v30, v32, v33, v35);
            v110 = v47;

            v49 = *(v48 + 32);
            v50 = v49 & 0x3F;
            v51 = ((1 << v49) + 63) >> 6;
            v52 = 8 * v51;

            v53 = v100;

            if (v50 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
            {
              v109 = v35;
              MEMORY[0x28223BE20](isStackAllocationSafe);
              bzero(&v90 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0), v52);
              v55 = v51;
              v56 = v110;
              v57 = sub_2282E7F4C((&v90 - ((v52 + 15) & 0x3FFFFFFFFFFFFFF0)), v55, v48, v53);
              v110 = v56;
              if (v56)
              {

                v89 = v110;
                swift_willThrow();

                __break(1u);
LABEL_73:

                result = MEMORY[0x22AAB7B80](v109, -1, -1);
                __break(1u);
                return result;
              }

              v58 = v57;

              v9 = v102;
              v35 = v109;
            }

            else
            {
              v73 = swift_slowAlloc();

              v109 = v73;
              v74 = v51;
              v75 = v110;
              v58 = sub_2282E7C68(v73, v74, v48, v53);

              v9 = v102;
              v110 = v75;
              if (v75)
              {
                goto LABEL_73;
              }

              MEMORY[0x22AAB7B80](v109, -1, -1);
            }

            v12 = v58[2];

            if (!v12)
            {
              v59 = sub_2282E4D64(v98);
              v60 = sub_2282E509C(v59);

              v12 = sub_2282844A4(v30, v32, v33, v35, v60);

              if (v12)
              {
                v112(v9, v5);
              }

              else
              {
                sub_228390C50();
                v61 = sub_228390AE0();
                v62 = [v61 scheduledDateTime];

                sub_22838F3E0();
                v63 = sub_228390C60();
                v64 = [v63 medicationIdentifier];

                sub_228392000();
                v65 = sub_228390C60();
                v66 = [v65 dose];

                sub_2283923C0();
                v67 = sub_228390C60();
                [v67 isLastScheduledDose];

                sub_228390930();
                swift_allocObject();
                v68 = sub_228390900();
                v12 = sub_228390C70();
                v112(v9, v5);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v69 = v99;
                }

                else
                {
                  v69 = sub_228199528(0, *(v99 + 2) + 1, 1, v99);
                }

                v71 = *(v69 + 2);
                v70 = *(v69 + 3);
                if (v71 >= v70 >> 1)
                {
                  v69 = sub_228199528((v70 > 1), v71 + 1, 1, v69);
                }

                *(v69 + 2) = v71 + 1;
                v99 = v69;
                v72 = &v69[24 * v71];
                *(v72 + 4) = v68;
                *(v72 + 5) = v12;
                v72[48] = 0;
              }

              goto LABEL_13;
            }
          }

          v112(v9, v5);

LABEL_13:
          v22 = v113 + 1;
          v21 = v105;
          if (v113 + 1 == v108)
          {

            v76 = v99;
            goto LABEL_47;
          }
        }
      }

      v76 = MEMORY[0x277D84F90];
LABEL_47:
      v77 = *(v76 + 2);
      v78 = v96;
      v12 = *(v96 + 2);
      v79 = v12 + v77;
      if (__OFADD__(v12, v77))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v79 <= *(v78 + 24) >> 1)
      {
        v12 = v91;
        v81 = v78;
      }

      else
      {
        if (v12 <= v79)
        {
          v82 = v12 + v77;
        }

        else
        {
          v82 = v12;
        }

        v81 = sub_228199528(isUniquelyReferenced_nonNull_native, v82, 1, v78);
        v12 = v91;
      }

      v83 = *(v76 + 2);
      v96 = v81;
      if (v83)
      {
        if ((*(v81 + 3) >> 1) - *(v81 + 2) < v77)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        v15 = v90;
        if (v77)
        {
          v84 = *(v96 + 2);
          v18 = __OFADD__(v84, v77);
          v85 = v84 + v77;
          if (v18)
          {
            goto LABEL_68;
          }

          *(v96 + 2) = v85;
        }
      }

      else
      {

        v15 = v90;
        if (v77)
        {
          goto LABEL_66;
        }
      }

      v44 = v95 == v15;
      v14 = v95;
      if (v44)
      {
        goto LABEL_71;
      }
    }

    if (v14 >= *(v93 + 16))
    {
      goto LABEL_64;
    }

    v16 = *(v92 + 8 * v14);
    v17 = v14;

    v18 = __OFADD__(v17, 1);
    v19 = v17 + 1;
    if (!v18)
    {
      goto LABEL_9;
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    ;
  }

  v96 = MEMORY[0x277D84F90];
LABEL_71:

  v87 = sub_2282E52A8(v98);

  v116 = v87;
  sub_2281D5D94(v96);
  return v116;
}

void *DayScheduleProvider.makeHistoryItems(ungrouped:)(char a1)
{
  v3 = sub_2282E4BE4(*v1);
  v4 = v3;
  if ((a1 & 1) == 0)
  {
    v20 = sub_2282E42F8(sub_228236DE4, 0, sub_228237048, 0, v3);

    v21 = sub_228195C98(v20);

    return v21;
  }

  if (v3 >> 62)
  {
    v5 = sub_2283930D0();
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_16:

    return MEMORY[0x277D84F90];
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_16;
  }

LABEL_4:
  v26 = MEMORY[0x277D84F90];
  result = sub_2281CA0AC(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = v26;
  v22 = xmmword_228396260;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x22AAB6D80](v7, v4);
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    sub_228222D8C(0, &qword_280DDCE30, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    *(v10 + 16) = v22;
    *(v10 + 32) = v9;
    sub_2282EA894(0, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
    v24 = v11;
    v25 = &protocol witness table for <A> [A];
    v23[0] = v10;
    v26 = v8;
    v13 = *(v8 + 16);
    v12 = *(v8 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_2281CA0AC((v12 > 1), v13 + 1, 1);
      v14 = v24;
      v15 = v25;
    }

    else
    {
      v14 = v11;
      v15 = &protocol witness table for <A> [A];
    }

    ++v7;
    v16 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    MEMORY[0x28223BE20](v16);
    v18 = &v23[-2] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v18);
    sub_2282E841C(v13, v18, &v26, v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v23);
    v8 = v26;
  }

  while (v5 != v7);

  return v8;
}

uint64_t sub_2282E6598(void *a1)
{
  v87 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2282EA894(0, &qword_280DDCDB0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v86 = &v72 - v4;
  v5 = sub_22838F440();
  v6 = *(v5 - 8);
  v84 = v5;
  v85 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v83 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v72 - v9;
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], v2);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v72 - v15;
  v17 = *(type metadata accessor for DayScheduleProvider(0) + 24);
  v18 = v1;
  sub_2282EA8F8(v1 + v17, v16);
  v19 = sub_2283909A0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 48);
  if (v21(v16, 1, v19) == 1)
  {
    v22 = &qword_27D827550;
    v23 = MEMORY[0x277D11630];
    v24 = v16;
LABEL_8:
    sub_2282EA98C(v24, v22, v23);
    return MEMORY[0x277D84FA0];
  }

  v81 = v10;
  v82 = sub_228390990();
  v26 = v25;
  v27 = *(v20 + 8);
  v27(v16, v19);
  if (v26)
  {
    return MEMORY[0x277D84FA0];
  }

  v28 = v18 + v17;
  v29 = v18;
  sub_2282EA8F8(v28, v14);
  if (v21(v14, 1, v19) == 1)
  {
    sub_2282EA98C(v14, &qword_27D827550, MEMORY[0x277D11630]);
    v30 = v86;
    (*(v85 + 56))(v86, 1, 1, v84);
LABEL_7:
    v22 = &qword_280DDCDB0;
    v23 = MEMORY[0x277CC9578];
    v24 = v30;
    goto LABEL_8;
  }

  v30 = v86;
  sub_228390980();
  v27(v14, v19);
  v32 = v84;
  v31 = v85;
  if ((*(v85 + 48))(v30, 1, v84) == 1)
  {
    goto LABEL_7;
  }

  v34 = v81;
  (*(v31 + 32))(v81, v30, v32);
  v35 = v83;
  sub_22838F430();
  sub_2282EA9FC();
  v36 = v31;
  v37 = sub_228391FA0();
  v40 = *(v36 + 8);
  v38 = v36 + 8;
  v39 = v40;
  v40(v35, v32);
  if (v37)
  {
    v39(v34, v32);
    return MEMORY[0x277D84FA0];
  }

  v85 = v38;
  v41 = *(v29 + 8);
  v89 = MEMORY[0x277D84F90];
  if (v41 >> 62)
  {
    goto LABEL_41;
  }

  v42 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_14:
  v43 = MEMORY[0x277D84F90];
  if (v42)
  {
    v44 = 0;
    v77 = v41 & 0xFFFFFFFFFFFFFF8;
    v78 = v41 & 0xC000000000000001;
    v75 = v39;
    v76 = v41 + 32;
    v73 = v42;
    v74 = v41;
    while (1)
    {
      if (v78)
      {
        v46 = MEMORY[0x22AAB6D80](v44, v41);
        v47 = __OFADD__(v44++, 1);
        if (v47)
        {
          goto LABEL_38;
        }
      }

      else
      {
        if (v44 >= *(v77 + 16))
        {
          goto LABEL_39;
        }

        v46 = *(v76 + 8 * v44);

        v47 = __OFADD__(v44++, 1);
        if (v47)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          v42 = sub_2283930D0();
          goto LABEL_14;
        }
      }

      v83 = sub_228390AE0();
      sub_22838EB00(v82);
      v87 = v48;
      v49 = [v48 doses];
      sub_22825A9CC();
      v50 = sub_2283921A0();

      if (v50 >> 62)
      {
        v51 = sub_2283930D0();
        if (!v51)
        {
LABEL_35:

          v54 = v43;
          goto LABEL_16;
        }
      }

      else
      {
        v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v51)
        {
          goto LABEL_35;
        }
      }

      v52 = v50;
      v88 = v43;
      sub_2281CA06C(0, v51 & ~(v51 >> 63), 0);
      if (v51 < 0)
      {
        goto LABEL_40;
      }

      v86 = v51;
      v79 = v46;
      v80 = v44;
      v53 = 0;
      v54 = v88;
      v55 = v52;
      v56 = v52 & 0xC000000000000001;
      v57 = v52;
      do
      {
        if (v56)
        {
          v58 = MEMORY[0x22AAB6D80](v53, v55);
        }

        else
        {
          v58 = *(v55 + 8 * v53 + 32);
        }

        v59 = v58;
        v60 = [v87 identifier];
        v61 = sub_228392000();
        v63 = v62;

        v64 = [v59 medicationIdentifier];
        v65 = sub_228392000();
        v67 = v66;

        v88 = v54;
        v69 = *(v54 + 16);
        v68 = *(v54 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_2281CA06C((v68 > 1), v69 + 1, 1);
          v54 = v88;
        }

        ++v53;
        *(v54 + 16) = v69 + 1;
        v70 = (v54 + 32 * v69);
        v70[4] = v65;
        v70[5] = v67;
        v70[6] = v61;
        v70[7] = v63;
        v55 = v57;
      }

      while (v86 != v53);

      v44 = v80;
      v34 = v81;
      v41 = v74;
      v39 = v75;
      v43 = MEMORY[0x277D84F90];
      v42 = v73;
LABEL_16:
      v45 = sub_2282B9714(v54);

      sub_2281D5AB0(v45);
      if (v44 == v42)
      {
        v43 = v89;
        break;
      }
    }
  }

  v71 = sub_2282B9714(v43);

  v39(v34, v84);
  return v71;
}

uint64_t DayScheduleProvider.isDoneForToday.getter()
{
  v1 = v0[1];
  if (v1 >> 62)
  {
    v10 = v0[1];
    v11 = sub_2283930D0();
    v1 = v10;
    if (!v11)
    {
      goto LABEL_5;
    }
  }

  else if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  if (!(*v0 >> 62))
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_13:
    v8 = 0;
    return v8 & 1;
  }

  v12 = v1;
  v13 = sub_2283930D0();
  v1 = v12;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_5:
  v2 = sub_2282E5438(v1);
  v3 = *v0;
  v4 = sub_2282E4BE4(*v0);
  v5 = sub_2282E509C(v4);

  v6 = sub_2282E4D64(v3);
  v7 = sub_2282E509C(v6);

  if (*(v5 + 16) && !*(v7 + 16))
  {
    v9 = sub_2282E6DFC(v7, v5);
    v8 = sub_2282E7CF8(v9, v2);
  }

  else
  {

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_2282E6DFC(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v17 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 11) | (32 * v10)));
    v12 = *v11;
    v13 = v11[1];
    v14 = v11[2];
    v15 = v11[3];

    sub_2282D6520(&v16, v12, v13, v14, v15);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v17;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_2282E6F24(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_228393050() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_228392C50();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

uint64_t sub_2282E70B0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_228393050() + 1) & ~v5;
    do
    {
      sub_228393520();

      sub_2283920B0();
      v9 = sub_228393570();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2282E7260(char *__dst, uint64_t *a2, char *a3, unint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a3;
  v7 = __dst;
  v8 = a2 - __dst;
  v9 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v9 = a2 - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    v15 = a4;
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v16 = &v15[v10];
    if (v8 < 8 || v14 >= v6)
    {
LABEL_21:
      a2 = v7;
      goto LABEL_53;
    }

    v17 = v14;
    while (1)
    {
      v18 = *v17;
      v19 = *v15;

      v20 = sub_2282E49C4(v18, v19, a5);
      if (v5)
      {

        v36 = v16 - v15 + 7;
        if (v16 - v15 >= 0)
        {
          v36 = v16 - v15;
        }

        if (v7 < v15 || v7 >= (v15 + (v36 & 0xFFFFFFFFFFFFFFF8)) || v7 != v15)
        {
          v37 = 8 * (v36 >> 3);
          v38 = v7;
          goto LABEL_59;
        }

        return 1;
      }

      v21 = v20;

      if ((v21 & 1) == 0)
      {
        break;
      }

      v22 = v17;
      v23 = v7 == v17++;
      if (!v23)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v7;
      if (v15 >= v16 || v17 >= v6)
      {
        goto LABEL_21;
      }
    }

    v22 = v15;
    v23 = v7 == v15++;
    if (v23)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v7 = *v22;
    goto LABEL_19;
  }

  if (a4 != a2 || &a2[v13] <= a4)
  {
    v24 = a2;
    v25 = a4;
    memmove(a4, a2, 8 * v13);
    a4 = v25;
    a2 = v24;
  }

  v16 = (a4 + 8 * v13);
  v15 = a4;
  if (v11 < 8 || a2 <= v7)
  {
LABEL_53:
    v42 = v16 - v15 + 7;
    if (v16 - v15 >= 0)
    {
      v42 = v16 - v15;
    }

    if (a2 >= v15 && a2 < (v15 + (v42 & 0xFFFFFFFFFFFFFFF8)) && a2 == v15)
    {
      return 1;
    }

    v37 = 8 * (v42 >> 3);
    v38 = a2;
LABEL_59:
    v41 = v15;
LABEL_60:
    memmove(v38, v41, v37);
    return 1;
  }

  v26 = -a4;
  v46 = a4;
  v44 = -a4;
LABEL_28:
  v45 = a2;
  v27 = (a2 - 1);
  v28 = v16 + v26;
  v6 -= 8;
  v47 = v16;
  v29 = v16;
  while (1)
  {
    v30 = *--v29;
    v31 = v27;
    v32 = *v27;

    v33 = sub_2282E49C4(v30, v32, a5);

    if (v5)
    {
      break;
    }

    v34 = (v6 + 8);
    if (v33)
    {
      v35 = v31;
      if (v34 != v45)
      {
        *v6 = *v31;
      }

      v15 = v46;
      v16 = v47;
      if (v47 <= v46 || (a2 = v35, v26 = v44, v35 <= v7))
      {
        a2 = v35;
        goto LABEL_53;
      }

      goto LABEL_28;
    }

    if (v34 != v47)
    {
      *v6 = *v29;
    }

    v28 -= 8;
    v6 -= 8;
    v47 = v29;
    v27 = v31;
    if (v29 <= v46)
    {
      v16 = v29;
      a2 = v45;
      v15 = v46;
      goto LABEL_53;
    }
  }

  if (v28 >= 0)
  {
    v39 = v28;
  }

  else
  {
    v39 = v28 + 7;
  }

  v40 = v39 >> 3;
  v38 = v45;
  v41 = v46;
  if (v45 < v46 || v45 >= (v46 + (v39 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v45, v46, 8 * v40);
    return 1;
  }

  if (v45 != v46)
  {
    v37 = 8 * v40;
    goto LABEL_60;
  }

  return 1;
}

uint64_t (*sub_2282E7608(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2282E7B48(v7);
  v7[9] = sub_2282E77C4(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2282EAA5C;
}

uint64_t (*sub_2282E76B4(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_2282E7B70(v7);
  v7[9] = sub_2282E7934(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_2282E7760;
}

void sub_2282E7764(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_2282E77C4(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2281A76E0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22829B2A8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_228299B6C(v18, a4 & 1);
    v13 = sub_2281A76E0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2283934A0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2282E791C;
}

void (*sub_2282E7934(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2281A76E0(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_22829B54C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_22829A07C(v18, a4 & 1);
    v13 = sub_2281A76E0(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2283934A0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_2282E791C;
}

void sub_2282E7A8C(uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *a1;
  v4 = **a1;
  v5 = *(*a1 + 40);
  if (v4)
  {
    v6 = v3[4];
    v7 = *v3[3];
    if (v5)
    {
      *(*(v7 + 56) + 8 * v6) = v4;
    }

    else
    {
      a3(v6, v3[1], v3[2], v4, v7);
    }
  }

  else if ((*a1)[5])
  {
    v8 = v3[4];
    v9 = *v3[3];
    sub_2281CBC34(*(v9 + 48) + 16 * v8);
    sub_2282E70B0(v8, v9);
  }

  free(v3);
}

uint64_t (*sub_2282E7B48(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2282EAA54;
}

uint64_t (*sub_2282E7B70(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_2282E7B98;
}

void *sub_2282E7BA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_2282EA330(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t *sub_2282E7C68(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_2282E7F4C(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2282E7CF8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v3 = a1;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v31 = a1 + 56;

    v10 = 0;
    v28 = v3;
    v29 = v2;
    v26 = v8;
    v27 = v4;
    if (v7)
    {
      while (*(v3 + 16))
      {
LABEL_7:
        v11 = (*(v2 + 48) + ((v10 << 11) | (32 * __clz(__rbit64(v7)))));
        v13 = *v11;
        v12 = v11[1];
        v15 = v11[2];
        v14 = v11[3];
        sub_228393520();

        sub_2283920B0();
        sub_2283920B0();
        v16 = sub_228393570();
        v17 = -1 << *(v3 + 32);
        v18 = v16 & ~v17;
        if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
LABEL_26:

          return 0;
        }

        v7 &= v7 - 1;
        v30 = ~v17;
        v19 = *(v3 + 48);
        while (1)
        {
          v20 = (v19 + 32 * v18);
          v21 = v20[2];
          v22 = v20[3];
          v23 = *v20 == v13 && v20[1] == v12;
          if (v23 || (sub_228393460() & 1) != 0)
          {
            v24 = v21 == v15 && v22 == v14;
            if (v24 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v18 = (v18 + 1) & v30;
          if (((*(v31 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_26;
          }
        }

        v3 = v28;
        v2 = v29;
        v8 = v26;
        v4 = v27;
        if (!v7)
        {
          goto LABEL_21;
        }
      }
    }

    else
    {
      do
      {
LABEL_21:
        v25 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return result;
        }

        if (v25 >= v8)
        {

          return 1;
        }

        v7 = *(v4 + 8 * v25);
        ++v10;
      }

      while (!v7);
      v10 = v25;
      if (*(v3 + 16))
      {
        goto LABEL_7;
      }
    }
  }

  return 0;
}

unint64_t *sub_2282E7F4C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v58 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_30:
    v61 = 0;
    v32 = 0;
    v57 = v5 + 56;
    v33 = 1 << *(v5 + 32);
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    else
    {
      v34 = -1;
    }

    v35 = v34 & *(v5 + 56);
    v36 = (v33 + 63) >> 6;
    v71 = v4 + 56;
    v60 = v36;
    while (v35)
    {
      v37 = __clz(__rbit64(v35));
      v67 = (v35 - 1) & v35;
LABEL_42:
      v65 = v37 | (v32 << 6);
      v40 = (*(v5 + 48) + 32 * v65);
      v41 = *v40;
      v42 = v40[1];
      v44 = v40[2];
      v43 = v40[3];
      sub_228393520();

      sub_2283920B0();
      sub_2283920B0();
      v45 = sub_228393570();
      v46 = -1 << *(v4 + 32);
      v47 = v45 & ~v46;
      if ((*(v71 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
      {
        v69 = ~v46;
        v48 = *(a4 + 48);
        while (1)
        {
          v49 = (v48 + 32 * v47);
          v50 = v49[2];
          v51 = v49[3];
          v52 = *v49 == v41 && v49[1] == v42;
          if (v52 || (sub_228393460() & 1) != 0)
          {
            v53 = v50 == v44 && v51 == v43;
            if (v53 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v47 = (v47 + 1) & v69;
          if (((*(v71 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

        v5 = a3;
        *(v58 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
        v4 = a4;
        v31 = __OFADD__(v61++, 1);
        v36 = v60;
        v35 = v67;
        if (v31)
        {
          __break(1u);
          goto LABEL_58;
        }
      }

      else
      {
LABEL_34:

        v4 = a4;
        v5 = a3;
        v36 = v60;
        v35 = v67;
      }
    }

    v38 = v32;
    while (1)
    {
      v32 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v32 >= v36)
      {
        goto LABEL_58;
      }

      v39 = *(v57 + 8 * v32);
      ++v38;
      if (v39)
      {
        v37 = __clz(__rbit64(v39));
        v67 = (v39 - 1) & v39;
        goto LABEL_42;
      }
    }
  }

  else
  {
    v61 = 0;
    v6 = 0;
    v54 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v68 = a3 + 56;
    v56 = v10;
    while (v9)
    {
      v11 = __clz(__rbit64(v9));
      v59 = (v9 - 1) & v9;
LABEL_14:
      v14 = (*(v4 + 48) + 32 * (v11 | (v6 << 6)));
      v15 = *v14;
      v16 = v14[1];
      v17 = v14[2];
      v18 = v14[3];
      sub_228393520();

      v19 = v15;
      v70 = v16;
      sub_2283920B0();
      v20 = v17;
      sub_2283920B0();
      v21 = sub_228393570();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      v25 = 1 << v23;
      if (((1 << v23) & *(v68 + 8 * (v23 >> 6))) != 0)
      {
        v64 = ~v22;
        v66 = *(a3 + 48);
        while (1)
        {
          v26 = (v66 + 32 * v23);
          v27 = v26[2];
          v28 = v26[3];
          v29 = *v26 == v19 && v26[1] == v70;
          if (v29 || (sub_228393460() & 1) != 0)
          {
            v30 = v27 == v20 && v28 == v18;
            if (v30 || (sub_228393460() & 1) != 0)
            {
              break;
            }
          }

          v23 = (v23 + 1) & v64;
          v24 = v23 >> 6;
          v25 = 1 << v23;
          if ((*(v68 + 8 * (v23 >> 6)) & (1 << v23)) == 0)
          {
            goto LABEL_6;
          }
        }

        v10 = v56;
        v58[v24] |= v25;
        v4 = a4;
        v31 = __OFADD__(v61++, 1);
        v5 = a3;
        v9 = v59;
        if (v31)
        {
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v5 = a3;
        v10 = v56;
        v9 = v59;
      }
    }

    v12 = v6;
    while (1)
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
LABEL_58:

        return sub_22827A9E4(v58, a2, v61, v5);
      }

      v13 = *(v54 + 8 * v6);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v59 = (v13 - 1) & v13;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2282E841C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_22816DFFC(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_2282E84B4(unint64_t result, void (*a2)(void *__return_ptr, uint64_t *), uint64_t a3, void *a4)
{
  v5 = result;
  if (result >> 62)
  {
LABEL_33:
    result = sub_2283930D0();
    v6 = result;
    if (result)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      v34 = v5 & 0xFFFFFFFFFFFFFF8;
      v35 = v5 & 0xC000000000000001;
      v32 = v6;
      v33 = v5;
      while (1)
      {
        if (v35)
        {
          v8 = MEMORY[0x22AAB6D80](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v7 >= *(v34 + 16))
          {
            goto LABEL_30;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }
        }

        v37 = v9;
        v40 = v8;
        a2(v39, &v40);
        v11 = v39[0];
        v10 = v39[1];
        if (!*(*a4 + 16))
        {
          break;
        }

        sub_2281A76E0(v11, v10);
        v13 = v12;

        if ((v13 & 1) == 0)
        {
          break;
        }

LABEL_26:
        v29 = sub_2282E4864(v38, v11, v10);
        if (*v28)
        {
          v30 = v28;

          MEMORY[0x22AAB5D20](v31);
          if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_2283921E0();
          }

          sub_228392230();
        }

        (v29)(v38, 0);

        ++v7;
        if (v37 == v6)
        {
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v38[0] = *a4;
      v15 = v38[0];
      v5 = a4;
      *a4 = 0x8000000000000000;
      v17 = sub_2281A76E0(v11, v10);
      v18 = v15[2];
      v19 = (v16 & 1) == 0;
      v20 = v18 + v19;
      if (__OFADD__(v18, v19))
      {
        goto LABEL_31;
      }

      a4 = v16;
      if (v15[3] < v20)
      {
        sub_228299B6C(v20, isUniquelyReferenced_nonNull_native);
        v21 = sub_2281A76E0(v11, v10);
        if ((a4 & 1) != (v22 & 1))
        {
          result = sub_2283934A0();
          __break(1u);
          return result;
        }

        v17 = v21;
        v23 = v38[0];
        if ((a4 & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_18:
        *(v23[7] + 8 * v17) = MEMORY[0x277D84F90];

LABEL_25:
        a4 = v5;
        *v5 = v23;
        v6 = v32;
        v5 = v33;
        goto LABEL_26;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v38[0];
        if (v16)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_22829B2A8();
        v23 = v38[0];
        if (a4)
        {
          goto LABEL_18;
        }
      }

LABEL_23:
      v23[(v17 >> 6) + 8] |= 1 << v17;
      v24 = (v23[6] + 16 * v17);
      *v24 = v11;
      v24[1] = v10;
      *(v23[7] + 8 * v17) = MEMORY[0x277D84F90];
      v25 = v23[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
        goto LABEL_32;
      }

      v23[2] = v27;
      goto LABEL_25;
    }
  }

  return result;
}

void sub_2282E87E4(uint64_t a1, void (*a2)(void *__return_ptr, void **), uint64_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    for (i = (a1 + 48); ; i += 24)
    {
      v10 = *(i - 2);
      v11 = *(i - 1);
      v12 = *i;
      sub_22819A598(v10, v11, *i);
      sub_2282E4678(v10, v11, v12, a2, a3, a4);
      if (v4)
      {
        break;
      }

      sub_2282E32E8(v10, v11, v12);
      if (!--v5)
      {
        return;
      }
    }

    sub_2282E32E8(v10, v11, v12);
  }
}

uint64_t sub_2282E88A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v7 = v5;
  v95 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v9 + 1 >= v8)
      {
        v20 = v9 + 1;
        goto LABEL_40;
      }

      v99 = v8;
      v11 = *a3;
      v6 = *(*a3 + 8 * (v9 + 1));
      v12 = *(*a3 + 8 * v9);

      v97 = sub_2282E49C4(v6, v12, a5);
      if (v7)
      {
      }

      v13 = v9 + 2;
      v93 = v9;
      v14 = 8 * v9;
      v15 = (v11 + 8 * v9 + 16);
      do
      {
        if (v99 == v13)
        {
          v20 = v99;
          if (v97)
          {
            goto LABEL_30;
          }

LABEL_38:
          v9 = v93;
          goto LABEL_40;
        }

        v16 = *(v15 - 1);
        v6 = *v15;
        if (*v15 >> 62)
        {
          if (!sub_2283930D0())
          {
            goto LABEL_142;
          }
        }

        else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_142;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {

          v17 = MEMORY[0x22AAB6D80](0, v6);
        }

        else
        {
          if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_144;
          }

          v17 = *(v6 + 32);
        }

        v104 = v17;
        if (v16 >> 62)
        {
          if (!sub_2283930D0())
          {
            goto LABEL_143;
          }
        }

        else if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x22AAB6D80](0, v16);
        }

        else
        {
          if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_145;
          }
        }

        v103 = v18;
        v19 = a5(&v104, &v103) & 1;

        ++v13;
        ++v15;
      }

      while ((v97 & 1) == v19);
      v20 = v13 - 1;
      if ((v97 & 1) == 0)
      {
        goto LABEL_38;
      }

LABEL_30:
      v21 = v93;
      if (v20 < v93)
      {
        break;
      }

      if (v93 < v20)
      {
        v22 = 8 * v20 - 8;
        v23 = v20;
        while (1)
        {
          if (v21 != --v23)
          {
            v25 = *a3;
            if (!*a3)
            {
              goto LABEL_171;
            }

            v24 = *(v25 + v14);
            *(v25 + v14) = *(v25 + v22);
            *(v25 + v22) = v24;
          }

          ++v21;
          v22 -= 8;
          v14 += 8;
          if (v21 >= v23)
          {
            goto LABEL_38;
          }
        }
      }

      v9 = v93;
LABEL_40:
      v26 = a3[1];
      if (v20 >= v26)
      {
        goto LABEL_49;
      }

      if (__OFSUB__(v20, v9))
      {
        goto LABEL_163;
      }

      if (v20 - v9 >= a4)
      {
LABEL_49:
        v28 = v20;
        if (v20 < v9)
        {
          goto LABEL_162;
        }

        goto LABEL_50;
      }

      if (__OFADD__(v9, a4))
      {
        goto LABEL_164;
      }

      if (v9 + a4 >= v26)
      {
        v27 = a3[1];
      }

      else
      {
        v27 = v9 + a4;
      }

      if (v27 < v9)
      {
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      if (v20 == v27)
      {
        goto LABEL_49;
      }

      v91 = v7;
      v76 = *a3;
      v77 = *a3 + 8 * v20 - 8;
      v94 = v9;
      v7 = v9 - v20;
      v96 = v27;
      do
      {
        v98 = v77;
        v100 = v20;
        v78 = *(v76 + 8 * v20);
        v79 = v7;
        v80 = v77;
        do
        {
          v81 = *v80;
          if (v78 >> 62)
          {
            if (!sub_2283930D0())
            {
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
LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              __break(1u);
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
              goto LABEL_165;
            }
          }

          else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_138;
          }

          if ((v78 & 0xC000000000000001) != 0)
          {

            v82 = MEMORY[0x22AAB6D80](0, v78);
          }

          else
          {
            if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_140;
            }

            v82 = *(v78 + 32);
          }

          v104 = v82;
          if (v81 >> 62)
          {
            if (!sub_2283930D0())
            {
              goto LABEL_139;
            }
          }

          else if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_139;
          }

          if ((v81 & 0xC000000000000001) != 0)
          {
            v83 = MEMORY[0x22AAB6D80](0, v81);
          }

          else
          {
            if (!*((v81 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_141;
            }
          }

          v103 = v83;
          v84 = a5(&v104, &v103);

          v6 = v104;

          if ((v84 & 1) == 0)
          {
            break;
          }

          if (!v76)
          {
            goto LABEL_168;
          }

          v85 = *v80;
          v78 = v80[1];
          *v80 = v78;
          v80[1] = v85;
          --v80;
        }

        while (!__CFADD__(v79++, 1));
        v20 = v100 + 1;
        v77 = v98 + 8;
        --v7;
        v28 = v96;
      }

      while (v100 + 1 != v96);
      v7 = v91;
      v9 = v94;
      if (v96 < v94)
      {
        goto LABEL_162;
      }

LABEL_50:
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_228198978(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v30 = *(v10 + 2);
      v29 = *(v10 + 3);
      v31 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        result = sub_228198978((v29 > 1), v30 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v31;
      v32 = &v10[16 * v30];
      *(v32 + 4) = v9;
      *(v32 + 5) = v28;
      v33 = *v95;
      if (!*v95)
      {
        goto LABEL_172;
      }

      v9 = v28;
      if (v30)
      {
        while (1)
        {
          v34 = v31 - 1;
          if (v31 >= 4)
          {
            break;
          }

          if (v31 == 3)
          {
            v35 = *(v10 + 4);
            v36 = *(v10 + 5);
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_69:
            if (v38)
            {
              goto LABEL_151;
            }

            v51 = &v10[16 * v31];
            v53 = *v51;
            v52 = *(v51 + 1);
            v54 = __OFSUB__(v52, v53);
            v55 = v52 - v53;
            v56 = v54;
            if (v54)
            {
              goto LABEL_154;
            }

            v57 = &v10[16 * v34 + 32];
            v59 = *v57;
            v58 = *(v57 + 1);
            v45 = __OFSUB__(v58, v59);
            v60 = v58 - v59;
            if (v45)
            {
              goto LABEL_157;
            }

            if (__OFADD__(v55, v60))
            {
              goto LABEL_158;
            }

            if (v55 + v60 >= v37)
            {
              if (v37 < v60)
              {
                v34 = v31 - 2;
              }

              goto LABEL_90;
            }

            goto LABEL_83;
          }

          v61 = &v10[16 * v31];
          v63 = *v61;
          v62 = *(v61 + 1);
          v45 = __OFSUB__(v62, v63);
          v55 = v62 - v63;
          v56 = v45;
LABEL_83:
          if (v56)
          {
            goto LABEL_153;
          }

          v64 = &v10[16 * v34];
          v66 = *(v64 + 4);
          v65 = *(v64 + 5);
          v45 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v45)
          {
            goto LABEL_156;
          }

          if (v67 < v55)
          {
            goto LABEL_3;
          }

LABEL_90:
          v72 = v34 - 1;
          if (v34 - 1 >= v31)
          {
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_169;
          }

          v73 = *&v10[16 * v72 + 32];
          v74 = *&v10[16 * v34 + 40];
          sub_2282E7260((*a3 + 8 * v73), (*a3 + 8 * *&v10[16 * v34 + 32]), (*a3 + 8 * v74), v33, a5);
          if (v7)
          {
          }

          if (v74 < v73)
          {
            goto LABEL_147;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_2283406C0(v10);
          }

          if (v72 >= *(v10 + 2))
          {
            goto LABEL_148;
          }

          v75 = &v10[16 * v72];
          *(v75 + 4) = v73;
          *(v75 + 5) = v74;
          v105 = v10;
          result = sub_228340634(v34);
          v10 = v105;
          v31 = *(v105 + 2);
          if (v31 <= 1)
          {
            goto LABEL_3;
          }
        }

        v39 = &v10[16 * v31 + 32];
        v40 = *(v39 - 64);
        v41 = *(v39 - 56);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_149;
        }

        v44 = *(v39 - 48);
        v43 = *(v39 - 40);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_150;
        }

        v46 = &v10[16 * v31];
        v48 = *v46;
        v47 = *(v46 + 1);
        v45 = __OFSUB__(v47, v48);
        v49 = v47 - v48;
        if (v45)
        {
          goto LABEL_152;
        }

        v45 = __OFADD__(v37, v49);
        v50 = v37 + v49;
        if (v45)
        {
          goto LABEL_155;
        }

        if (v50 >= v42)
        {
          v68 = &v10[16 * v34 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v45 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v45)
          {
            goto LABEL_161;
          }

          if (v37 < v71)
          {
            v34 = v31 - 2;
          }

          goto LABEL_90;
        }

        goto LABEL_69;
      }

LABEL_3:
      v8 = a3[1];
      if (v9 >= v8)
      {
        goto LABEL_126;
      }
    }

    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_126:
  v6 = *v95;
  if (*v95)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_166:
      result = sub_2283406C0(v10);
      v10 = result;
    }

    v105 = v10;
    v87 = *(v10 + 2);
    if (v87 < 2)
    {
    }

    while (*a3)
    {
      v88 = *&v10[16 * v87];
      v89 = *&v10[16 * v87 + 24];
      sub_2282E7260((*a3 + 8 * v88), (*a3 + 8 * *&v10[16 * v87 + 16]), (*a3 + 8 * v89), v6, a5);
      if (v7)
      {
      }

      if (v89 < v88)
      {
        goto LABEL_159;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_2283406C0(v10);
      }

      if (v87 - 2 >= *(v10 + 2))
      {
        goto LABEL_160;
      }

      v90 = &v10[16 * v87];
      *v90 = v88;
      *(v90 + 1) = v89;
      v105 = v10;
      result = sub_228340634(v87 - 1);
      v10 = v105;
      v87 = *(v105 + 2);
      if (v87 <= 1)
      {
      }
    }

    goto LABEL_170;
  }

LABEL_173:
  __break(1u);
  return result;
}

uint64_t sub_2282E9124(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  if (a3 == a2)
  {
    return result;
  }

  v6 = *a4;
  v7 = (*a4 + 8 * a3 - 8);
  v8 = result - a3;
LABEL_5:
  v18 = v7;
  v19 = a3;
  v9 = *(v6 + 8 * a3);
  v17 = v8;
  while (1)
  {
    v10 = *v7;
    if (!(v9 >> 62))
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        break;
      }

      goto LABEL_8;
    }

    result = sub_2283930D0();
    if (!result)
    {
      break;
    }

LABEL_8:
    if ((v9 & 0xC000000000000001) != 0)
    {

      v11 = MEMORY[0x22AAB6D80](0, v9);
    }

    else
    {
      if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v11 = *(v9 + 32);
    }

    v21 = v11;
    if (v10 >> 62)
    {
      result = sub_2283930D0();
      if (!result)
      {
        goto LABEL_28;
      }
    }

    else
    {
      result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_28;
      }
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB6D80](0, v10);
    }

    else
    {
      if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }
    }

    v20 = v12;
    v13 = a5(&v21, &v20);

    if (v13)
    {
      if (!v6)
      {
        goto LABEL_31;
      }

      v14 = *v7;
      v9 = v7[1];
      *v7 = v9;
      v7[1] = v14;
      --v7;
      if (!__CFADD__(v8++, 1))
      {
        continue;
      }
    }

    a3 = v19 + 1;
    v7 = v18 + 1;
    v8 = v17 - 1;
    if (v19 + 1 == a2)
    {
      return result;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2282E9308(uint64_t *a1, uint64_t (*a2)(uint64_t *, uint64_t *))
{
  v4 = a1[1];
  result = sub_228393410();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2282EA894(0, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
        v7 = sub_228392220();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_2282E88A4(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_2282E9124(0, v4, 1, a1, a2);
  }

  return result;
}

unint64_t sub_2282E9454(unint64_t __src, char *a2, char *a3, char *a4, uint64_t (*a5)(void **, void **))
{
  v46 = a5;
  v5 = a4;
  v6 = a3;
  v7 = __src;
  v8 = &a2[-__src];
  v9 = &a2[-__src + 7];
  if (&a2[-__src] >= 0)
  {
    v9 = &a2[-__src];
  }

  v10 = v9 >> 3;
  v11 = a3 - a2;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    v14 = a2;
    if (a4 != __src || __src + 8 * v10 <= a4)
    {
      __src = memmove(a4, __src, 8 * v10);
    }

    v15 = &v5[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      __src = v7;
LABEL_44:
      if (__src != v5 || __src >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
      {
        memmove(__src, v5, 8 * ((v15 - v5) / 8));
      }

      return 1;
    }

    while (1)
    {
      if (v14 >= v6)
      {
        goto LABEL_10;
      }

      v18 = *v14;
      if (!*(*v14 + 16) || (v19 = *v5, v20 = *(v18 + 40), v21 = *(v18 + 48), v43 = *(v18 + 32), v44 = v20, v45 = v21, __src = sub_22819A598(v43, v20, v21), v45 == 255))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_49;
      }

      v22 = *(v19 + 40);
      v23 = *(v19 + 48);
      v40 = *(v19 + 32);
      v41 = v22;
      v42 = v23;
      __src = sub_22819A598(v40, v22, v23);
      if (v42 == 255)
      {
        goto LABEL_49;
      }

      v24 = v46(&v43, &v40);
      sub_2282E32E8(v40, v41, v42);
      sub_2282E32E8(v43, v44, v45);

      if (v24)
      {
        break;
      }

      v16 = v5;
      v17 = v7 == v5;
      v5 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v5 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v14;
    v17 = v7 == v14;
    v14 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  if (a4 != a2 || &a2[8 * v13] <= a4)
  {
    v25 = a2;
    memmove(a4, a2, 8 * v13);
    a2 = v25;
  }

  __src = a2;
  v15 = &v5[8 * v13];
  if (v11 < 8 || a2 <= v7)
  {
    goto LABEL_44;
  }

  v39 = v5;
LABEL_29:
  __dst = __src;
  v26 = (__src - 8);
  v6 -= 8;
  v27 = v15;
  while (1)
  {
    v29 = *(v27 - 1);
    v27 -= 8;
    v28 = v29;
    if (!*(v29 + 16))
    {
      break;
    }

    v30 = *v26;
    v31 = *(v28 + 40);
    v32 = *(v28 + 48);
    v43 = *(v28 + 32);
    v44 = v31;
    v45 = v32;
    __src = sub_22819A598(v43, v31, v32);
    if (v45 == 255)
    {
      break;
    }

    if (!*(v30 + 16))
    {
      goto LABEL_51;
    }

    v33 = *(v30 + 40);
    v34 = *(v30 + 48);
    v40 = *(v30 + 32);
    v41 = v33;
    v42 = v34;
    __src = sub_22819A598(v40, v33, v34);
    if (v42 == 255)
    {
      goto LABEL_51;
    }

    v35 = v46(&v43, &v40);
    sub_2282E32E8(v40, v41, v42);
    sub_2282E32E8(v43, v44, v45);

    v36 = v6 + 8;
    if (v35)
    {
      v37 = v26;
      if (v36 != __dst)
      {
        *v6 = *v26;
      }

      v5 = v39;
      if (v15 <= v39 || (__src = v37, v37 <= v7))
      {
        __src = v37;
        goto LABEL_44;
      }

      goto LABEL_29;
    }

    if (v36 != v15)
    {
      *v6 = *v27;
    }

    v6 -= 8;
    v15 = v27;
    if (v27 <= v39)
    {
      v15 = v27;
      __src = __dst;
      v5 = v39;
      goto LABEL_44;
    }
  }

LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return __src;
}

uint64_t sub_2282E97D4(uint64_t *a1, char *a2, void *a3, uint64_t (*a4)(void **, void **))
{
  v6 = a1;
  v7 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_13:
    result = sub_2283406C0(v7);
    v7 = result;
  }

  v16 = v6;
  *v6 = v7;
  v9 = (v7 + 16);
  v6 = *(v7 + 16);
  if (v6 < 2)
  {
LABEL_9:
    *v16 = v7;
    return 1;
  }

  else
  {
    while (*a3)
    {
      v10 = (v7 + 16 * v6);
      v11 = *v10;
      v12 = &v9[2 * v6];
      v13 = v12[1];
      sub_2282E9454(*a3 + 8 * *v10, (*a3 + 8 * *v12), (*a3 + 8 * v13), a2, a4);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v13 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v14 = *v9;
      if (v6 - 2 >= *v9)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      v10[1] = v13;
      v15 = v14 - v6;
      if (v14 < v6)
      {
        goto LABEL_12;
      }

      v6 = v14 - 1;
      result = memmove(v12, v12 + 2, 16 * v15);
      *v9 = v6;
      if (v6 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v16 = v7;
    __break(1u);
  }

  return result;
}

uint64_t sub_2282E9914(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void **, void **))
{
  v97 = result;
  v113 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 < 1)
  {
LABEL_100:
    if (!*v97)
    {
      goto LABEL_132;
    }

    sub_2282E97D4(&v113, *v97, a3, a5);
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    if (v7 + 1 >= v6)
    {
      v25 = v7 + 1;
      goto LABEL_17;
    }

    v103 = v8;
    v10 = *a3;
    v11 = *(*a3 + 8 * (v7 + 1));
    v12 = *(*a3 + 8 * v7);

    v13 = sub_2282E4B04(v11, v12, a5);
    if (v5)
    {
    }

    v14 = v13;

    v15 = v7 + 2;
    v95 = v7;
    v16 = 8 * v7;
    v17 = v10 + 8 * v9 + 16;
    while (v6 != v15)
    {
      v18 = *v17;
      if (!*(*v17 + 16))
      {
        goto LABEL_128;
      }

      v19 = *(v17 - 8);
      v20 = *(v18 + 40);
      v21 = *(v18 + 48);
      v110 = *(v18 + 32);
      v111 = v20;
      v112 = v21;
      result = sub_22819A598(v110, v20, v21);
      if (v112 == 255)
      {
        goto LABEL_128;
      }

      if (!*(v19 + 16))
      {
        goto LABEL_127;
      }

      v22 = *(v19 + 40);
      v23 = *(v19 + 48);
      v107 = *(v19 + 32);
      v108 = v22;
      v109 = v23;
      result = sub_22819A598(v107, v22, v23);
      if (v109 == 255)
      {
        goto LABEL_127;
      }

      v24 = a5(&v110, &v107) & 1;
      sub_2282E32E8(v107, v108, v109);
      sub_2282E32E8(v110, v111, v112);

      ++v15;
      v17 += 8;
      if ((v14 & 1) != v24)
      {
        v25 = v15 - 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_15;
        }

LABEL_76:
        v9 = v95;
        if (v25 >= v95)
        {
          v5 = 0;
          if (v95 < v25)
          {
            v75 = 8 * v25 - 8;
            v76 = v25;
            v77 = v95;
            v8 = v103;
            while (1)
            {
              if (v77 != --v76)
              {
                v79 = *a3;
                if (!*a3)
                {
                  goto LABEL_130;
                }

                v78 = *(v79 + v16);
                *(v79 + v16) = *(v79 + v75);
                *(v79 + v75) = v78;
              }

              ++v77;
              v75 -= 8;
              v16 += 8;
              if (v77 >= v76)
              {
                goto LABEL_17;
              }
            }
          }

          v8 = v103;
          goto LABEL_17;
        }

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
        goto LABEL_131;
      }
    }

    v25 = v6;
    if (v14)
    {
      goto LABEL_76;
    }

LABEL_15:
    v9 = v95;
    v5 = 0;
    v8 = v103;
LABEL_17:
    v26 = a3[1];
    if (v25 >= v26)
    {
      goto LABEL_25;
    }

    if (__OFSUB__(v25, v9))
    {
      goto LABEL_120;
    }

    if (v25 - v9 >= a4)
    {
      goto LABEL_25;
    }

    if (__OFADD__(v9, a4))
    {
      goto LABEL_121;
    }

    if (v9 + a4 < v26)
    {
      v26 = v9 + a4;
    }

    if (v26 < v9)
    {
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
      goto LABEL_125;
    }

    if (v25 == v26)
    {
LABEL_25:
      v7 = v25;
      if (v25 < v9)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v99 = v26;
      v105 = v8;
      v96 = v9;
      v80 = *a3;
      v81 = *a3 + 8 * v25 - 8;
      v82 = v9 - v25;
      do
      {
        v101 = v25;
        v83 = *(v80 + 8 * v25);
        v84 = v82;
        v85 = v81;
        do
        {
          if (!*(v83 + 16))
          {
            goto LABEL_124;
          }

          v86 = *v85;
          v87 = *(v83 + 40);
          v88 = *(v83 + 48);
          v110 = *(v83 + 32);
          v111 = v87;
          v112 = v88;
          result = sub_22819A598(v110, v87, v88);
          if (v112 == 255)
          {
            goto LABEL_124;
          }

          if (!*(v86 + 16))
          {
            goto LABEL_123;
          }

          v89 = *(v86 + 40);
          v90 = *(v86 + 48);
          v107 = *(v86 + 32);
          v108 = v89;
          v109 = v90;
          result = sub_22819A598(v107, v89, v90);
          if (v109 == 255)
          {
            goto LABEL_123;
          }

          v91 = a5(&v110, &v107);
          sub_2282E32E8(v107, v108, v109);
          sub_2282E32E8(v110, v111, v112);

          if ((v91 & 1) == 0)
          {
            break;
          }

          if (!v80)
          {
            goto LABEL_126;
          }

          v92 = *v85;
          v83 = v85[1];
          *v85 = v83;
          v85[1] = v92;
          --v85;
        }

        while (!__CFADD__(v84++, 1));
        v25 = (v101 + 1);
        v81 += 8;
        --v82;
      }

      while (v101 + 1 != v99);
      v9 = v96;
      v8 = v105;
      v7 = v99;
      if (v99 < v96)
      {
        goto LABEL_119;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v28 = *(v8 + 16);
    v27 = *(v8 + 24);
    v29 = v28 + 1;
    if (v28 >= v27 >> 1)
    {
      result = sub_228198978((v27 > 1), v28 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v29;
    v30 = v8 + 32;
    v31 = (v8 + 32 + 16 * v28);
    *v31 = v9;
    v31[1] = v7;
    v113 = v8;
    v100 = *v97;
    if (!*v97)
    {
      break;
    }

    if (v28)
    {
      v98 = v7;
      v104 = v8;
      while (1)
      {
        v32 = v29 - 1;
        if (v29 >= 4)
        {
          break;
        }

        v8 = v104;
        if (v29 == 3)
        {
          v33 = v104[4];
          v34 = v104[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_46:
          if (v36)
          {
            goto LABEL_110;
          }

          v49 = (v8 + 16 * v29);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_113;
          }

          v55 = (v30 + 16 * v32);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_117;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v32 = v29 - 2;
            }

            goto LABEL_67;
          }

          goto LABEL_60;
        }

        v59 = &v104[2 * v29];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_60:
        if (v54)
        {
          goto LABEL_112;
        }

        v62 = (v30 + 16 * v32);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_115;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_67:
        if (v32 - 1 >= v29)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_122;
        }

        if (!*a3)
        {
          goto LABEL_129;
        }

        v70 = (v30 + 16 * (v32 - 1));
        v71 = *v70;
        v72 = (v30 + 16 * v32);
        v73 = v72[1];
        result = sub_2282E9454(*a3 + 8 * *v70, (*a3 + 8 * *v72), (*a3 + 8 * v73), v100, a5);
        if (v5)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_105;
        }

        v74 = *(v8 + 16);
        if (v32 > v74)
        {
          goto LABEL_106;
        }

        *v70 = v71;
        v70[1] = v73;
        if (v32 >= v74)
        {
          goto LABEL_107;
        }

        v29 = v74 - 1;
        result = memmove((v30 + 16 * v32), v72 + 2, 16 * (v74 - 1 - v32));
        v104[2] = v74 - 1;
        if (v74 <= 2)
        {
          v8 = v104;
LABEL_3:
          v113 = v8;
          v7 = v98;
          goto LABEL_4;
        }
      }

      v37 = v30 + 16 * v29;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      v8 = v104;
      if (v43)
      {
        goto LABEL_108;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_109;
      }

      v44 = &v104[2 * v29];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_111;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_114;
      }

      if (v48 >= v40)
      {
        v66 = (v30 + 16 * v32);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_118;
        }

        if (v35 < v69)
        {
          v32 = v29 - 2;
        }

        goto LABEL_67;
      }

      goto LABEL_46;
    }

LABEL_4:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_100;
    }
  }

LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
  return result;
}

char *sub_2282E9FF0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void **, void **))
{
  if (a3 != a2)
  {
    v6 = a3;
    v7 = *a4;
    v8 = (*a4 + 8 * a3 - 8);
    v9 = &result[-a3];
LABEL_5:
    v10 = *(v7 + 8 * v6);
    v20 = v9;
    v27 = v8;
    while (*(v10 + 16))
    {
      v11 = *v8;
      v12 = *(v10 + 40);
      v13 = *(v10 + 48);
      v24 = *(v10 + 32);
      v25 = v12;
      v26 = v13;
      result = sub_22819A598(v24, v12, v13);
      if (v26 == 255)
      {
        break;
      }

      if (!*(v11 + 16))
      {
        goto LABEL_16;
      }

      v14 = *(v11 + 40);
      v15 = *(v11 + 48);
      v21 = *(v11 + 32);
      v22 = v14;
      v23 = v15;
      result = sub_22819A598(v21, v14, v15);
      if (v23 == 255)
      {
        goto LABEL_16;
      }

      v16 = a5(&v24, &v21);
      sub_2282E32E8(v21, v22, v23);
      sub_2282E32E8(v24, v25, v26);

      if (v16)
      {
        if (!v7)
        {
          goto LABEL_17;
        }

        v17 = *v8;
        v10 = v8[1];
        *v8 = v10;
        v8[1] = v17;
        --v8;
        if (!__CFADD__(v9++, 1))
        {
          continue;
        }
      }

      ++v6;
      v8 = v27 + 1;
      v9 = v20 - 1;
      if (v6 == a2)
      {
        return result;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

char *sub_2282EA154(uint64_t *a1, uint64_t (*a2)(void **, void **))
{
  v4 = a1[1];
  result = sub_228393410();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      if (v4 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_228222D8C(0, &qword_27D823EC0, &type metadata for LoggableDose, MEMORY[0x277D83940]);
        v7 = sub_228392220();
        *(v7 + 16) = v4 / 2;
      }

      v9[0] = v7 + 32;
      v9[1] = v4 / 2;
      v8 = v7;
      sub_2282E9914(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_2282E9FF0(0, v4, 1, a1, a2);
  }

  return result;
}

uint64_t sub_2282EA294(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(void *, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a4(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = a5(v13, a2, a3);
  *a1 = v10;
  return result;
}

uint64_t sub_2282EA330(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 32 * v18);
    result = *v19;
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_228393460();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:

      return sub_22827A9E4(v23, a2, v8, a3);
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
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2282EA484(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v34 = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v14 = ((1 << v12) + 63) >> 6;
  v15 = 8 * v14;

  if (v13 > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v28 = swift_slowAlloc();

      v26 = sub_2282E7BA4(v28, v14, a1, a2, a3, a4, a5);

      MEMORY[0x22AAB7B80](v28, -1, -1);

      return v26;
    }
  }

  v30 = v14;
  v31 = a5;
  v32 = v6;
  v29 = &v29;
  MEMORY[0x28223BE20](v16);
  a4 = &v29 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(a4, v15);
  v17 = 0;
  v6 = 0;
  a5 = a1 + 56;
  v18 = 1 << *(a1 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v14 = v19 & *(a1 + 56);
  v20 = (v18 + 63) >> 6;
  while (2)
  {
    v33 = v17;
    do
    {
      if (!v14)
      {
        v22 = v6;
        while (1)
        {
          v6 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v6 >= v20)
          {
            goto LABEL_21;
          }

          v23 = *(a5 + 8 * v6);
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v14 = (v23 - 1) & v23;
            goto LABEL_13;
          }
        }

        __break(1u);
        goto LABEL_24;
      }

      v21 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v15 = v21 | (v6 << 6);
      v24 = (*(a1 + 48) + 32 * v15);
      v25 = *v24 == a2 && v24[1] == a3;
    }

    while (!v25 && (sub_228393460() & 1) == 0);
    *&a4[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
    v17 = v33 + 1;
    if (!__OFADD__(v33, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_21:
  v26 = sub_22827A9E4(a4, v30, v33, a1);

  return v26;
}

void sub_2282EA768(uint64_t a1)
{
  sub_2282EA894(319, &qword_27D823EA0, MEMORY[0x277D11660], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2282EA894(319, &qword_27D8275B8, MEMORY[0x277D11670], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2282EA894(319, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2282EA894(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282EA8F8(uint64_t a1, uint64_t a2)
{
  sub_2282EA894(0, &qword_27D827550, MEMORY[0x277D11630], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282EA98C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282EA894(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_2282EA9FC()
{
  result = qword_280DDCDB8;
  if (!qword_280DDCDB8)
  {
    sub_22838F440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DDCDB8);
  }

  return result;
}

uint64_t sub_2282EAA60()
{

  return swift_deallocClassInstance();
}

void *sub_2282EAB00()
{
  v1 = v0;
  sub_2282EAF18(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_228398270;
  *(inited + 32) = xmmword_228397F40;
  *(inited + 48) = 3;
  if (sub_228390730())
  {
    result = [objc_opt_self() sharedBehavior];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [result isAppleInternalInstall];

    if (v5)
    {
      inited = sub_2281997BC(1, 4, 1, inited);
      *(inited + 16) = 4;
      *(inited + 56) = 4;
    }
  }

  v7 = v1[5];
  v6 = v1[6];
  type metadata accessor for InteractionFactorsDataSource(0);
  swift_allocObject();

  v9 = sub_2282541B0(v8, v6);
  v10 = MEMORY[0x277D84F90];
  v11 = sub_228198C84(0, 1, 1, MEMORY[0x277D84F90]);
  v13 = v11[2];
  v12 = v11[3];
  if (v13 >= v12 >> 1)
  {
    v11 = sub_228198C84((v12 > 1), v13 + 1, 1, v11);
  }

  v14 = sub_2282EAF70(&qword_27D8275C0, type metadata accessor for InteractionFactorsDataSource);
  v11[2] = v13 + 1;
  v15 = &v11[2 * v13];
  v15[4] = v9;
  v15[5] = v14;
  type metadata accessor for InteractionSeperatorLineDataSource(0);
  swift_allocObject();
  v16 = InteractionSeperatorLineDataSource.init()();
  v18 = v11[2];
  v17 = v11[3];
  if (v18 >= v17 >> 1)
  {
    v11 = sub_228198C84((v17 > 1), v18 + 1, 1, v11);
  }

  v19 = sub_2282EAF70(&qword_27D8275C8, type metadata accessor for InteractionSeperatorLineDataSource);
  v11[2] = v18 + 1;
  v20 = &v11[2 * v18];
  v20[4] = v16;
  v20[5] = v19;
  v35 = v11;
  v21 = *(inited + 16);
  if (v21)
  {
    v34 = v10;
    sub_228393240();
    v32 = v1[3];
    v33 = v1[2];
    v22 = v1[4];
    type metadata accessor for InteractionSeverityDataSource(0);
    v23 = 32;
    do
    {
      v24 = inited;
      v25 = *(inited + v23);
      v26 = swift_allocObject();
      *(v26 + qword_27D826578) = 0;
      *(v26 + qword_27D826580) = 0;
      v27 = v26 + qword_27D826588;
      *v27 = 0u;
      *(v27 + 16) = 0u;
      *(v27 + 32) = 0;
      *(v26 + qword_27D826590) = MEMORY[0x277D84FA0];
      *(v26 + qword_27D826598) = v25;
      *(v26 + qword_27D826558) = v33;
      *(v26 + qword_27D826560) = v32;
      *(v26 + qword_27D826568) = v22;
      *(v26 + qword_27D826570) = v7;
      *(v26 + qword_27D8265A8) = v6;

      v28 = v33;

      v29 = v22;
      sub_22838F920();

      sub_228276A44();

      sub_228393210();
      sub_228393250();
      inited = v24;
      sub_228393260();
      sub_228393220();
      v23 += 8;
      --v21;
    }

    while (v21);

    v30 = v34;
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  v31 = sub_2281967EC(v30);

  sub_2281D5EA4(v31);
  return v35;
}

void sub_2282EAF18(uint64_t a1)
{
  if (!qword_27D823ED0)
  {
    type metadata accessor for HKDrugInteractionSeverityLevel(255);
    v1 = sub_228393430();
    if (!v2)
    {
      atomic_store(v1, &qword_27D823ED0);
    }
  }
}

uint64_t sub_2282EAF70(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

id sub_2282EAFF8()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_228390970()) initWithFrame_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282EB090()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView);
  }

  else
  {
    v4 = sub_2282EE8C0(*(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton), *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton));
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2282EB11C()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher);
    v5 = objc_allocWithZone(type metadata accessor for ShapeSelectionViewController(0));
    *&v5[qword_27D825AF8] = v4;
    sub_2283901F0();
    sub_2282EFB98(0, &qword_27D827750, sub_228212470, MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_228397F40;
    v15 = 1;
    type metadata accessor for VisualizationShapeDataSource(0);
    swift_allocObject();
    v7 = swift_retain_n();
    v8 = v0;
    v9 = sub_2281F0A88(v7, &v15);
    v10 = MEMORY[0x277D10F80];
    *(v6 + 32) = v9;
    *(v6 + 40) = v10;
    sub_228390220();
    v11 = sub_228390480();

    v12 = *(v8 + v1);
    *(v8 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

char *sub_2282EB280()
{
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController;
  v5 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController);
  }

  else
  {
    v7 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
    swift_beginAccess();
    sub_2282EE728(v0 + v7, v3, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v8 = objc_allocWithZone(type metadata accessor for ColorSelectionViewController(0));
    v9 = v3;
    v10 = v0;
    v11 = sub_22820647C(v9);
    v12 = *(v0 + v4);
    *(v10 + v4) = v11;
    v6 = v11;

    v5 = 0;
  }

  v13 = v5;
  return v6;
}

char *MedmojiPickerViewController.init(config:)(uint64_t a1)
{
  v80 = a1;
  v2 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v79 = &v55 - v4;
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], v2);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = &v55 - v6;
  sub_2282EFB98(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], v2);
  MEMORY[0x28223BE20](v7 - 8);
  v76 = &v55 - v8;
  v9 = sub_22838F0D0();
  v85 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v82 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v68 = &v55 - v12;
  v84 = sub_228392DE0();
  v77 = *(v84 - 8);
  v13 = MEMORY[0x28223BE20](v84);
  v83 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v78 = v1;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView] = 0;
  v75 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v74 = qword_280DDCF20;
  v73 = *algn_280DDCF28;
  v72 = qword_280DDCF30;
  sub_22838F0C0();
  sub_228392DA0();
  v71 = objc_opt_self();
  v17 = [v71 labelColor];
  sub_228392D60();
  sub_228392CF0();
  sub_2282EFB98(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v70 = v18;
  inited = swift_initStackObject();
  v69 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v20 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v21 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v62 = v21;
  v66 = *MEMORY[0x277D76918];
  v65 = *MEMORY[0x277D74420];
  v67 = v20;
  v22 = sub_228392AD0();
  *(inited + 64) = v21;
  *(inited + 40) = v22;
  sub_2281A859C(inited);
  swift_setDeallocating();
  sub_228239BFC(inited + 32);
  v23 = v68;
  sub_22838F0F0();
  v24 = v85;
  v25 = *(v85 + 16);
  v63 = v85 + 16;
  v64 = v25;
  v25(v82, v23, v9);
  v26 = v76;
  sub_22838F0B0();
  v60 = sub_22838F0A0();
  v27 = *(v60 - 8);
  v59 = *(v27 + 56);
  v61 = v27 + 56;
  v59(v26, 0, 1, v60);
  sub_228392D30();
  v58 = sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v28 = v9;
  v55 = v9;
  v29 = v77;
  v57 = *(v77 + 16);
  v30 = v84;
  v57(v83, v16, v84);
  v31 = sub_228392DF0();
  [v31 setContentHorizontalAlignment_];
  [v31 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = *(v24 + 8);
  v85 = v24 + 8;
  v56 = v32;
  v32(v23, v28);
  v77 = *(v29 + 8);
  (v77)(v16, v30);
  v33 = v78;
  *&v78[v75] = v31;
  v75 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton;
  sub_22838F0C0();
  v74 = v34;
  sub_228392DA0();
  v35 = [v71 labelColor];
  sub_228392D60();
  sub_228392CF0();
  v36 = swift_initStackObject();
  *(v36 + 16) = v69;
  *(v36 + 32) = v67;
  v37 = v62;
  v38 = sub_228392AD0();
  *(v36 + 64) = v37;
  *(v36 + 40) = v38;
  sub_2281A859C(v36);
  swift_setDeallocating();
  sub_228239BFC(v36 + 32);
  sub_22838F0F0();
  v39 = v55;
  v64(v82, v23, v55);
  sub_22838F0B0();
  v59(v26, 0, 1, v60);
  sub_228392D30();
  v40 = v84;
  v57(v83, v16, v84);
  v41 = sub_228392DF0();
  [v41 setContentHorizontalAlignment_];
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v56(v23, v39);
  (v77)(v16, v40);
  *&v33[v75] = v41;
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView] = 0;
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] = 0;
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController] = 0;
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_cancellables] = MEMORY[0x277D84FA0];
  v42 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  v43 = sub_228390D50();
  v44 = *(v43 - 8);
  (*(v44 + 56))(&v33[v42], 1, 1, v43);
  v45 = v80;
  v46 = v79;
  sub_2282EE728(v80, v79, &qword_280DDBD20, MEMORY[0x277D116C8]);
  if ((*(v44 + 48))(v46, 1, v43) == 1)
  {
    sub_2282EE508(v46, &qword_280DDBD20, MEMORY[0x277D116C8]);
    v47 = 1;
    v48 = v81;
  }

  else
  {
    v48 = v81;
    sub_228390D40();
    (*(v44 + 8))(v46, v43);
    v47 = 0;
  }

  v49 = sub_2283909E0();
  (*(*(v49 - 8) + 56))(v48, v47, 1, v49);
  sub_2282EE7A8(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  swift_allocObject();
  *&v33[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher] = sub_228391890();
  v50 = type metadata accessor for MedmojiPickerViewController(0);
  v86.receiver = v33;
  v86.super_class = v50;
  v51 = objc_msgSendSuper2(&v86, sel_initWithNibName_bundle_, 0, 0);
  v52 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  swift_beginAccess();
  v53 = v51;
  sub_22824F65C(v45, v51 + v52);
  swift_endAccess();

  return v53;
}

void sub_2282EBF98()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for MedmojiPickerViewController(0);
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() systemBackgroundColor];
    [v2 setBackgroundColor_];

    v4 = [v0 navigationItem];
    v5 = objc_allocWithZone(MEMORY[0x277D751E0]);
    v6 = v0;
    v7 = [v5 initWithBarButtonSystemItem:0 target:v6 action:sel_doneButtonTappped_];
    [v4 setRightBarButtonItem_];

    v8 = [v6 navigationItem];
    v9 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:1 target:v6 action:sel_cancelButtonTappped_];

    [v8 setLeftBarButtonItem_];
    if (qword_280DDCF18 != -1)
    {
      swift_once();
    }

    sub_22838F0C0();
    v10 = sub_228391FC0();

    [v6 setTitle_];

    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton] addTarget:v6 action:sel_shapeButtonTappped_ forControlEvents:64];
    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton] addTarget:v6 action:sel_colorButtonTappped_ forControlEvents:64];
    v11 = sub_2282EB11C();
    [v6 addChildViewController_];

    v12 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
    [*&v6[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] didMoveToParentViewController_];
    v13 = [*&v6[v12] collectionView];
    if (v13)
    {
      v14 = v13;
      [v13 setTranslatesAutoresizingMaskIntoConstraints_];

      sub_2282ECEC0();
      sub_2282EC2E4();
      sub_2282EC418();
      sub_2282EC848();
      sub_2282EDFB8();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_2282EC2E4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = v1;
  v3 = sub_2282EAFF8();
  [v2 addSubview_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v6 = sub_2282EB090();
  [v5 addSubview_];

  v7 = [v0 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = sub_2282EB11C();
  v10 = [v9 collectionView];

  if (!v10)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v8 addSubview_];
}

id sub_2282EC418()
{
  v1 = sub_2282EB280();
  [v0 addChildViewController_];

  v2 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController;
  [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController] didMoveToParentViewController_];
  result = [*&v0[v2] collectionView];
  if (!result)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = result;
  [result setTranslatesAutoresizingMaskIntoConstraints_];

  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v5 = result;
  [result setHidden_];

  result = [v0 view];
  if (!result)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = result;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result;
  [v6 addSubview_];

  sub_228180ED0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228397F00;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = result;
  v10 = [result topAnchor];

  v11 = sub_2282EB090();
  v12 = [v11 bottomAnchor];

  v13 = [v10 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v14 = result;
  v15 = [result leadingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v16 = result;
  v17 = [result leadingAnchor];

  v18 = [v15 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v19 = result;
  v20 = [result trailingAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v21 = result;
  v22 = [result trailingAnchor];

  v23 = [v20 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  result = [*&v0[v2] collectionView];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v24 = result;
  v25 = [result bottomAnchor];

  result = [v0 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = objc_opt_self();
  v28 = [v26 bottomAnchor];

  v29 = [v25 constraintEqualToAnchor_];
  *(v8 + 56) = v29;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v30 = sub_228392190();

  [v27 activateConstraints_];

  return sub_2282ED684();
}

void sub_2282EC848()
{
  sub_228180ED0();
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_228397F10;
  v2 = sub_2282EAFF8();
  v3 = [v2 heightAnchor];

  v4 = [v3 constraintEqualToConstant_];
  *(v1 + 32) = v4;
  v5 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView;
  v6 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView] widthAnchor];
  v7 = [v6 constraintEqualToConstant_];

  *(v1 + 40) = v7;
  v8 = [*&v0[v5] topAnchor];
  v9 = [v0 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 safeAreaLayoutGuide];

  v12 = [v11 topAnchor];
  v13 = [v8 constraintEqualToAnchor:v12 constant:20.0];

  *(v1 + 48) = v13;
  v14 = [*&v0[v5] centerXAnchor];
  v15 = [v0 view];
  if (!v15)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v16 = v15;
  v17 = [v15 centerXAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v1 + 56) = v18;
  v19 = sub_2282EB090();
  v20 = [v19 topAnchor];

  v21 = [*&v0[v5] bottomAnchor];
  v22 = [v20 constraintEqualToAnchor:v21 constant:30.0];

  *(v1 + 64) = v22;
  v23 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView;
  v24 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView] leadingAnchor];
  v25 = [v0 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 leadingAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v1 + 72) = v28;
  v29 = [*&v0[v23] trailingAnchor];
  v30 = [v0 &selRef_didTapDay_];
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 trailingAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v1 + 80) = v33;
  v34 = sub_2282EB11C();
  v35 = [v34 collectionView];

  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = [v35 topAnchor];

  v37 = [*&v0[v23] bottomAnchor];
  v38 = [v36 constraintEqualToAnchor_];

  *(v1 + 88) = v38;
  v39 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController;
  v40 = [*&v0[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController] collectionView];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 leadingAnchor];

  v43 = [v0 view];
  if (!v43)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 constraintEqualToAnchor_];
  *(v1 + 96) = v46;
  v47 = [*&v0[v39] collectionView];
  if (!v47)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = v47;
  v49 = [v47 trailingAnchor];

  v50 = [v0 view];
  if (!v50)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v51 = v50;
  v52 = [v50 trailingAnchor];

  v53 = [v49 constraintEqualToAnchor_];
  *(v1 + 104) = v53;
  v54 = [*&v0[v39] collectionView];
  if (!v54)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v55 = v54;
  v56 = [v54 bottomAnchor];

  v57 = [v0 view];
  if (!v57)
  {
LABEL_25:
    __break(1u);
    return;
  }

  v58 = v57;
  v59 = objc_opt_self();
  v60 = [v58 bottomAnchor];

  v61 = [v56 constraintEqualToAnchor_];
  *(v1 + 112) = v61;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v62 = sub_228392190();

  [v59 activateConstraints_];
}

uint64_t sub_2282ECEC0()
{
  sub_2282EFB98(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v13 - v2;
  sub_2281F2C88(0);
  v14 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapePublisher);
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);

  v8 = sub_228392790();
  v16 = v8;
  v9 = sub_228392730();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = MEMORY[0x277D11640];
  sub_2282EE7A8(0, &qword_27D8238C8, &qword_27D8238A8, MEMORY[0x277D11640]);
  sub_2282EFAEC(&qword_27D824F30, &qword_27D8238C8, &qword_27D8238A8, v10);
  sub_2281A1504();
  sub_228391A70();
  sub_2282EE508(v3, &qword_280DDBAD0, v13[2]);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2282EFB44(&qword_27D824F38, sub_2281F2C88);
  v11 = v14;
  sub_228391AC0();

  (*(v5 + 8))(v7, v11);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

char *sub_2282ED1E0(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], v3);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = sub_2283909E0();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    v33 = v7;
    v34 = v10;
    v22 = *(v17 + 48);
    [*&result[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton] setEnabled_];
    sub_2282EE728(a1, v15, &qword_27D8238A8, MEMORY[0x277D11640]);
    if (v22(v15, 1, v16) == 1)
    {

      return sub_2282EE508(v15, &qword_27D8238A8, MEMORY[0x277D11640]);
    }

    else
    {
      (*(v17 + 32))(v19, v15, v16);
      v23 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
      swift_beginAccess();
      v24 = MEMORY[0x277D116C8];
      sub_2282EE728(v21 + v23, v12, &qword_280DDBD20, MEMORY[0x277D116C8]);
      v25 = sub_228390D50();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 48))(v12, 1, v25);
      sub_2282EE508(v12, &qword_280DDBD20, v24);
      if (v27 == 1)
      {
        v28 = v34;
        MedicationShape.previewConfig.getter(v34);
        (*(v26 + 56))(v28, 0, 1, v25);
        swift_beginAccess();
        sub_2282EE82C(v28, v21 + v23);
        swift_endAccess();
        v29 = sub_2282EAFF8();
        v30 = MEMORY[0x277D116C8];
        sub_2282EE728(v21 + v23, v33, &qword_280DDBD20, MEMORY[0x277D116C8]);
        sub_228390950();

        sub_2282EE508(v28, &qword_280DDBD20, v30);
      }

      v31 = sub_2282EB280();

      sub_228391850();

      return (*(v17 + 8))(v19, v16);
    }
  }

  return result;
}

uint64_t sub_2282ED684()
{
  sub_2282EFB98(0, &qword_280DDBAD0, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  sub_228208F04(0);
  v15 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2282EB280();
  v8 = *&v7[qword_27D825228];

  v16 = v8;
  sub_22817A958(0, &qword_280DDCEE0, 0x277D85C78);
  v9 = sub_228392790();
  v17 = v9;
  v10 = sub_228392730();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = MEMORY[0x277D116C8];
  sub_2282EE7A8(0, &qword_27D827800, &qword_280DDBD20, MEMORY[0x277D116C8]);
  sub_2282EFAEC(&qword_27D825288, &qword_27D827800, &qword_280DDBD20, v11);
  sub_2281A1504();
  sub_228391A70();
  sub_2282EE508(v2, &qword_280DDBAD0, v14[2]);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2282EFB44(&qword_27D825290, sub_228208F04);
  v12 = v15;
  sub_228391AC0();

  (*(v4 + 8))(v6, v12);
  swift_beginAccess();
  sub_228391800();
  swift_endAccess();
}

void *sub_2282ED9B4(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D83D88];
  sub_2282EFB98(0, &qword_27D8238A8, MEMORY[0x277D11640], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5];
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], v3);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v29[-v12];
  MEMORY[0x28223BE20](v11);
  v15 = &v29[-v14];
  v16 = sub_228390D50();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v21 = result;
    sub_2282EE728(a1, v15, &qword_280DDBD20, MEMORY[0x277D116C8]);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {

      v22 = &qword_280DDBD20;
      v23 = MEMORY[0x277D116C8];
      v24 = v15;
      return sub_2282EE508(v24, v22, v23);
    }

    (*(v17 + 32))(v19, v15, v16);

    sub_228391870();

    v25 = sub_2283909E0();
    if ((*(*(v25 - 8) + 48))(v6, 1, v25) == 1)
    {
      (*(v17 + 8))(v19, v16);

      v22 = &qword_27D8238A8;
      v23 = MEMORY[0x277D11640];
      v24 = v6;
      return sub_2282EE508(v24, v22, v23);
    }

    sub_2282EE508(v6, &qword_27D8238A8, MEMORY[0x277D11640]);
    (*(v17 + 16))(v13, v19, v16);
    (*(v17 + 56))(v13, 0, 1, v16);
    v26 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
    swift_beginAccess();
    sub_2282EE82C(v13, v21 + v26);
    swift_endAccess();
    v27 = sub_2282EAFF8();
    v28 = MEMORY[0x277D116C8];
    sub_2282EE728(v21 + v26, v10, &qword_280DDBD20, MEMORY[0x277D116C8]);
    sub_228390950();

    sub_2282EE508(v13, &qword_280DDBD20, v28);
    return (*(v17 + 8))(v19, v16);
  }

  return result;
}

void sub_2282EDFF0(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v24 = a4;
  v25 = a3;
  sub_2282EFB98(0, &qword_280DDB950, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v24 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v26 = v4;
  sub_228392E00();
  v14 = sub_228392DE0();
  v15 = *(*(v14 - 8) + 48);
  if (v15(v13, 1, v14))
  {
    v16 = MEMORY[0x277D75058];
    sub_2282EE728(v13, v8, &qword_280DDB950, MEMORY[0x277D75058]);
    sub_228392E10();
    sub_2282EE508(v13, &qword_280DDB950, v16);
  }

  else
  {
    v17 = [objc_opt_self() systemBlueColor];
    sub_228392D60();
    sub_228392E10();
  }

  sub_228392E00();
  if (v15(v11, 1, v14))
  {
    v18 = MEMORY[0x277D75058];
    sub_2282EE728(v11, v8, &qword_280DDB950, MEMORY[0x277D75058]);
    sub_228392E10();
    sub_2282EE508(v11, &qword_280DDB950, v18);
  }

  else
  {
    v19 = [objc_opt_self() labelColor];
    sub_228392D60();
    sub_228392E10();
  }

  v20 = sub_2282EB11C();
  v21 = [v20 collectionView];

  if (v21)
  {
    [v21 setHidden_];

    v22 = sub_2282EB280();
    v23 = [v22 collectionView];

    if (v23)
    {
      [v23 setHidden_];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id MedmojiPickerViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_228391FC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id MedmojiPickerViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MedmojiPickerViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2282EE508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282EFB98(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t type metadata accessor for MedmojiPickerViewController(uint64_t a1)
{
  result = qword_27D827620;
  if (!qword_27D827620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2282EE5F4(uint64_t a1)
{
  sub_2282EFB98(319, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2282EE728(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2282EFB98(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_2282EE7A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_2282EFB98(255, a3, a4, MEMORY[0x277D83D88]);
    v5 = sub_228391880();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_2282EE82C(uint64_t a1, uint64_t a2)
{
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_2282EE8C0(void *a1, void *a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v3 = objc_opt_self();
  v4 = [v3 secondarySystemBackgroundColor];
  [v2 setBackgroundColor_];

  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v5 setSeparatorThickness_];
  v6 = [v3 separatorColor];
  [v5 setColor_];

  v7 = v5;
  [v7 setTranslatesAutoresizingMaskIntoConstraints_];
  v8 = [objc_allocWithZone(MEMORY[0x277D12A48]) init];
  HKUIOnePixel();
  [v8 setSeparatorThickness_];
  v9 = [v3 separatorColor];
  [v8 setColor_];

  v50 = v8;
  [v50 setTranslatesAutoresizingMaskIntoConstraints_];
  sub_228180ED0();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228397F20;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22817A958(0, &qword_280DDB9B0, 0x277D75D18);
  v12 = a1;
  v13 = a2;
  v14 = sub_228392190();

  v15 = [v11 initWithArrangedSubviews_];

  [v15 setAxis_];
  [v15 setAlignment_];
  [v15 setDistribution_];
  [v15 setSpacing_];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 addSubview_];
  [v2 addSubview_];
  [v2 addSubview_];
  v49 = objc_opt_self();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2283A25D0;
  v18 = [v7 leadingAnchor];
  v19 = [v2 leadingAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v17 + 32) = v20;
  v21 = [v7 trailingAnchor];
  v22 = [v2 trailingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v17 + 40) = v23;
  v24 = [v50 leadingAnchor];
  v25 = [v2 leadingAnchor];
  v26 = [v24 &selRef_freeTextMedicationName + 5];

  *(v17 + 48) = v26;
  v27 = [v50 trailingAnchor];
  v28 = [v2 trailingAnchor];
  v29 = [v27 &selRef_freeTextMedicationName + 5];

  *(v17 + 56) = v29;
  v30 = [v16 centerXAnchor];
  v31 = [v2 centerXAnchor];
  v32 = [v30 &selRef_freeTextMedicationName + 5];

  *(v17 + 64) = v32;
  v33 = [v7 topAnchor];
  v34 = [v2 topAnchor];
  v35 = [v33 &selRef_freeTextMedicationName + 5];

  *(v17 + 72) = v35;
  v36 = [v16 topAnchor];
  v37 = [v7 bottomAnchor];

  v38 = [v36 &selRef_freeTextMedicationName + 5];
  *(v17 + 80) = v38;
  v39 = [v50 topAnchor];
  v40 = [v16 bottomAnchor];

  v41 = [v39 &selRef_freeTextMedicationName + 5];
  *(v17 + 88) = v41;
  v42 = [v50 bottomAnchor];

  v43 = [v2 bottomAnchor];
  v44 = [v42 &selRef_freeTextMedicationName + 5];

  *(v17 + 96) = v44;
  sub_22817A958(0, &qword_280DDBA90, 0x277CCAAD0);
  v45 = sub_228392190();

  [v49 activateConstraints_];

  return v2;
}

void sub_2282EEF84()
{
  sub_2282EFB98(0, &unk_280DDCDC8, MEMORY[0x277CC8C40], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v50 - v2;
  v4 = sub_22838F0D0();
  v78 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v75 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v76 = &v50 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - v9;
  v77 = sub_228392DE0();
  v72 = *(v77 - 8);
  v11 = MEMORY[0x28223BE20](v77);
  v73 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v71 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - v15;
  v74 = v0;
  *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medicationView) = 0;
  v70 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_shapeButton;
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v69 = qword_280DDCF20;
  v68 = *algn_280DDCF28;
  v67 = qword_280DDCF30;
  v59 = sub_22838F0C0();
  sub_228392DA0();
  v66 = objc_opt_self();
  v17 = [v66 labelColor];
  sub_228392D60();
  sub_228392CF0();
  sub_2282EFB98(0, &qword_280DDB880, sub_2281D50E8, MEMORY[0x277D84560]);
  v65 = v18;
  inited = swift_initStackObject();
  v64 = xmmword_228397F40;
  *(inited + 16) = xmmword_228397F40;
  v20 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v21 = sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v63 = *MEMORY[0x277D76918];
  v62 = *MEMORY[0x277D74420];
  v60 = v20;
  v56 = v21;
  v22 = sub_228392AD0();
  *(inited + 64) = v21;
  *(inited + 40) = v22;
  sub_2281A859C(inited);

  sub_22838F0F0();
  v23 = v78;
  v24 = *(v78 + 16);
  v53 = v78 + 16;
  v61 = v24;
  v24(v76, v10, v4);
  sub_22838F0B0();
  v58 = sub_22838F0A0();
  v25 = *(v58 - 8);
  v57 = *(v25 + 56);
  v59 = v25 + 56;
  v57(v3, 0, 1, v58);
  sub_228392D30();
  v55 = sub_22817A958(0, &unk_280DDB940, 0x277D75220);
  v26 = v23;
  v27 = v4;
  v51 = v4;
  v28 = v72;
  v29 = v10;
  v54 = *(v72 + 16);
  v30 = v71;
  v31 = v77;
  v54(v71, v16, v77);
  v32 = sub_228392DF0();
  [v32 setContentHorizontalAlignment_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = *(v26 + 8);
  v78 = v26 + 8;
  v52 = v33;
  v33(v29, v27);
  v34 = *(v28 + 8);
  v34(v16, v31);
  v35 = v74;
  *(v74 + v70) = v32;
  v72 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_colorButton;
  v70 = sub_22838F0C0();
  v69 = v36;
  v37 = v73;
  sub_228392DA0();
  v38 = [v66 labelColor];
  sub_228392D60();
  sub_228392CF0();
  v39 = swift_initStackObject();
  *(v39 + 16) = v64;
  v40 = v60;
  *(v39 + 32) = v60;
  v41 = v40;
  v42 = v56;
  v43 = sub_228392AD0();
  *(v39 + 64) = v42;
  *(v39 + 40) = v43;
  sub_2281A859C(v39);

  v44 = v75;
  sub_22838F0F0();
  v45 = v51;
  v61(v76, v44, v51);
  sub_22838F0B0();
  v57(v3, 0, 1, v58);
  sub_228392D30();
  v46 = v77;
  v54(v30, v37, v77);
  v47 = sub_228392DF0();
  [v47 setContentHorizontalAlignment_];
  [v47 setTranslatesAutoresizingMaskIntoConstraints_];
  v52(v44, v45);
  v34(v37, v46);
  *(v35 + v72) = v47;
  *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___medmojiCategorySelectionView) = 0;
  *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___shapeSelectionViewController) = 0;
  *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController____lazy_storage___colorSelectionViewController) = 0;
  *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v35 + OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_cancellables) = MEMORY[0x277D84FA0];
  v48 = OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_config;
  v49 = sub_228390D50();
  (*(*(v49 - 8) + 56))(v35 + v48, 1, 1, v49);
  sub_228393300();
  __break(1u);
}

id sub_2282EF8D0()
{
  v1 = v0;
  sub_2282EFB98(0, &qword_280DDBD20, MEMORY[0x277D116C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = sub_228390D50();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2282EAFF8();
  sub_228390940();

  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_2282EE508(v4, &qword_280DDBD20, MEMORY[0x277D116C8]);
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI27MedmojiPickerViewController_delegate];
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 1);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(v8, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    (*(v6 + 8))(v8, v5);
  }

  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_2282EFAEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_2282EE7A8(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2282EFB44(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

void sub_2282EFB98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t SelectionEntryItem.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22838F4A0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SelectionEntryItem.SwitchStyle.hashValue.getter()
{
  v1 = *v0;
  sub_228393520();
  MEMORY[0x22AAB70D0](v1);
  return sub_228393570();
}

uint64_t SelectionEntryItem.listContentProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SelectionEntryItem(0) + 20);

  return sub_228180FB0(v3, a1);
}

uint64_t type metadata accessor for SelectionEntryItem(uint64_t a1)
{
  result = qword_27D827678;
  if (!qword_27D827678)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SelectionEntryItem.isEnabled.setter(char a1)
{
  result = type metadata accessor for SelectionEntryItem(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void *SelectionEntryItem.leadingImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SelectionEntryItem(0) + 28));
  v2 = v1;
  return v1;
}

uint64_t SelectionEntryItem.switchStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SelectionEntryItem(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t SelectionEntryItem.selectionHandler.getter()
{
  v1 = *(v0 + *(type metadata accessor for SelectionEntryItem(0) + 36));

  return v1;
}

uint64_t SelectionEntryItem.init(listContentProvider:leadingImage:switchStyle:isEnabled:selectionHandler:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  sub_22838F490();
  v14 = type metadata accessor for SelectionEntryItem(0);
  v15 = (a7 + v14[10]);
  type metadata accessor for SelectionOptionsCell();
  sub_2282F2AF8(&qword_27D825FF8, v16, type metadata accessor for SelectionOptionsCell, &protocol conformance descriptor for SelectionOptionsCell);
  *v15 = sub_22838FBB0();
  v15[1] = v17;
  result = sub_22816DFFC(a1, a7 + v14[5]);
  *(a7 + v14[7]) = a2;
  *(a7 + v14[6]) = a4;
  *(a7 + v14[8]) = v13;
  v19 = (a7 + v14[9]);
  *v19 = a5;
  v19[1] = a6;
  return result;
}

uint64_t SelectionEntryItem.reuseIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SelectionEntryItem(0) + 40));

  return v1;
}

unint64_t SelectionEntryItem.uniqueIdentifier.getter()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000013;
}

uint64_t SelectionEntryItem.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for SelectionEntryItem(0);
  __swift_project_boxed_opaque_existential_0((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  sub_228391F70();
  return sub_228393540();
}

uint64_t static SelectionEntryItem.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionEntryItem(0);
  __swift_project_boxed_opaque_existential_0((a1 + *(v4 + 20)), *(a1 + *(v4 + 20) + 24));
  v5 = sub_228391F80();
  __swift_project_boxed_opaque_existential_0((a2 + *(v4 + 20)), *(a2 + *(v4 + 20) + 24));
  if (v5 == sub_228391F80())
  {
    v6 = *(a1 + *(v4 + 24)) ^ *(a2 + *(v4 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t SelectionEntryItem.hashValue.getter()
{
  sub_228393520();
  v1 = type metadata accessor for SelectionEntryItem(0);
  __swift_project_boxed_opaque_existential_0((v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 24));
  sub_228391F70();
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F0254(uint64_t a1)
{
  sub_228393520();
  __swift_project_boxed_opaque_existential_0((v1 + *(a1 + 20)), *(v1 + *(a1 + 20) + 24));
  sub_228391F70();
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F02DC(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 24));
  sub_228391F70();
  return sub_228393540();
}

uint64_t sub_2282F034C(uint64_t a1, uint64_t a2)
{
  sub_228393520();
  __swift_project_boxed_opaque_existential_0((v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 24));
  sub_228391F70();
  sub_228393540();
  return sub_228393570();
}

uint64_t sub_2282F03D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + *(a3 + 20)), *(a1 + *(a3 + 20) + 24));
  v6 = sub_228391F80();
  __swift_project_boxed_opaque_existential_0((a2 + *(a3 + 20)), *(a2 + *(a3 + 20) + 24));
  if (v6 == sub_228391F80())
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_2282F047C(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

unint64_t sub_2282F04B4()
{
  sub_2283931D0();

  v0 = sub_22838F450();
  MEMORY[0x22AAB5C80](v0);

  return 0xD000000000000013;
}

uint64_t sub_2282F0534(uint64_t a1)
{
  v2 = sub_2282F2AF8(&qword_27D827698, 255, type metadata accessor for SelectionEntryItem, &protocol conformance descriptor for SelectionEntryItem);

  return MEMORY[0x282169440](a1, v2);
}

uint64_t sub_2282F05B4(uint64_t a1, uint64_t *a2)
{
  sub_2282F2B40(a1, v6, sub_228181D50);
  v3 = *a2;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_22818FD64(v6, v3 + v4);
  swift_endAccess();
  sub_2282F0AEC();
  return sub_2282F2BA8(v6, sub_228181D50);
}

uint64_t sub_2282F0648@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  return sub_2282F2B40(v1 + v3, a1, sub_228181D50);
}

uint64_t sub_2282F06B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_22818FD64(a1, v1 + v3);
  swift_endAccess();
  sub_2282F0AEC();
  return sub_2282F2BA8(a1, sub_228181D50);
}

uint64_t (*sub_2282F0734(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_2282F0798;
}

uint64_t sub_2282F0798(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_2282F0AEC();
  }

  return result;
}

id sub_2282F07CC()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75AE8]) init];
    [v4 addTarget:v0 action:sel_switchValueChanged_ forControlEvents:4096];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_2282F0860()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_228391FC0();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

void sub_2282F0954()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage);
  if (v2)
  {
    goto LABEL_4;
  }

  v3 = [objc_opt_self() configurationWithTextStyle_];
  v4 = sub_228391FC0();
  v5 = [objc_opt_self() systemImageNamed:v4 withConfiguration:v3];

  if (v5)
  {
    v6 = *(v0 + v1);
    *(v0 + v1) = v5;
    v5;

    v2 = 0;
LABEL_4:
    v7 = v2;
    return;
  }

  __break(1u);
}

id sub_2282F0A40()
{
  v1 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView;
  v2 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  }

  else
  {
    sub_2282F0954();
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithImage_];

    [v6 setAccessibilityTraits_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

uint64_t sub_2282F0AEC()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v51 = *(v2 - 8);
  v52 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_228391590();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_2282F141C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, v8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v48 - v16;
  v18 = type metadata accessor for SelectionEntryItem(0);
  v19 = *(v18 - 1);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(&v1[v22], v54, sub_228181D50);
  if (v55)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v23 = swift_dynamicCast();
    (*(v19 + 56))(v17, v23 ^ 1u, 1, v18);
    if ((*(v19 + 48))(v17, 1, v18) != 1)
    {
      sub_2282F2A94(v17, v21);
      sub_228391390();
      v24 = sub_2283913A0();
      v25 = *(v24 - 8);
      (*(v25 + 56))(v14, 0, 1, v24);
      v26 = MEMORY[0x22AAB6420](v14);
      MEMORY[0x22AAB6410](v26);
      if ((*(v25 + 48))(v12, 1, v24))
      {
        sub_228205274(v12, v14);
        MEMORY[0x22AAB6420](v14);
        sub_2282F2A24(v12, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
      }

      else
      {
        v36 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor];
        sub_228391370();
        MEMORY[0x22AAB6420](v12);
      }

      v37 = &v21[v18[5]];
      v38 = *(v37 + 3);
      v39 = *(v37 + 4);
      __swift_project_boxed_opaque_existential_0(v37, v38);
      (*(v39 + 16))(v38, v39);
      v40 = *&v21[v18[7]];
      sub_228391550();
      sub_2282F141C(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
      v41 = *(sub_2283912F0() - 8);
      v42 = (*(v41 + 80) + 32) & ~*(v41 + 80);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_228397F40;
      v44 = v18[8];
      LOBYTE(v54[0]) = v21[v44];
      sub_2282F1568(v54, v43 + v42);
      sub_2283928F0();
      v45 = v50;
      v55 = v50;
      v56 = MEMORY[0x277D74C30];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v54);
      v47 = v49;
      (*(v49 + 16))(boxed_opaque_existential_1, v7, v45);
      MEMORY[0x22AAB6400](v54);
      LOBYTE(v54[0]) = v21[v44];
      sub_2282F1840(v54);
      (*(v47 + 8))(v7, v45);
      return sub_2282F2BA8(v21, type metadata accessor for SelectionEntryItem);
    }
  }

  else
  {
    sub_2282F2BA8(v54, sub_228181D50);
    (*(v19 + 56))(v17, 1, 1, v18);
  }

  sub_2282F2A24(v17, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  sub_228391150();
  v27 = v1;
  v28 = sub_2283911A0();
  v29 = sub_2283925C0();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v53 = v31;
    *v30 = 136446210;
    sub_2282F2B40(&v1[v22], v54, sub_228181D50);
    sub_228181D50(0);
    v32 = sub_228392040();
    v34 = sub_2281C96FC(v32, v33, &v53);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22816B000, v28, v29, "Incorrect view model for SelectionOptionsCell: %{public}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x22AAB7B80](v31, -1, -1);
    MEMORY[0x22AAB7B80](v30, -1, -1);
  }

  return (*(v51 + 8))(v4, v52);
}

uint64_t sub_2282F1278()
{
  v1 = v0;
  sub_2282F141C(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v13 - v6;
  v8 = sub_228391330();
  v9 = type metadata accessor for SelectionOptionsCell();
  v13.receiver = v1;
  v13.super_class = v9;
  objc_msgSendSuper2(&v13, sel__bridgedUpdateConfigurationUsingState_, v8);

  MEMORY[0x22AAB6410]();
  v10 = sub_2283913A0();
  if ((*(*(v10 - 8) + 48))(v7, 1, v10))
  {
    sub_228205274(v7, v5);
    MEMORY[0x22AAB6420](v5);
    return sub_2282F2A24(v7, &unk_280DDBCD0, MEMORY[0x277D74BD0]);
  }

  else
  {
    v12 = *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor];
    sub_228391370();
    return MEMORY[0x22AAB6420](v7);
  }
}

void sub_2282F141C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2282F1568@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a2;
  sub_2282F141C(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v20 - v4;
  v6 = sub_2283912D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_228391280();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    sub_2282F0A40();
  }

  else
  {
    sub_2282F07CC();
  }

  sub_22820DC6C(0);
  v15 = &v9[*(v14 + 48)];
  v16 = *MEMORY[0x277D74A98];
  v17 = sub_228391220();
  (*(*(v17 - 8) + 104))(v9, v16, v17);
  *v15 = sub_2281AF1B4;
  v15[1] = 0;
  (*(v7 + 104))(v9, *MEMORY[0x277D74AD8], v6);
  v18 = sub_228391230();
  (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
  sub_228391270();
  sub_2283911D0();
  return (*(v11 + 8))(v13, v10);
}

void sub_2282F1840(unsigned __int8 *a1)
{
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v23 - v4 + 22;
  v6 = *a1;
  v7 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v1 + v7, v23, sub_228181D50);
  if (!v24)
  {
    sub_2282F2BA8(v23, sub_228181D50);
    v16 = type metadata accessor for SelectionEntryItem(0);
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    goto LABEL_7;
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v8 = type metadata accessor for SelectionEntryItem(0);
  v9 = swift_dynamicCast();
  v10 = *(v8 - 8);
  (*(v10 + 56))(v5, v9 ^ 1u, 1, v8);
  if ((*(v10 + 48))(v5, 1, v8) == 1)
  {
LABEL_7:
    sub_2282F2A24(v5, &qword_27D827690, type metadata accessor for SelectionEntryItem);
    if (v6)
    {
      v12 = sub_2282F0A40();
      goto LABEL_9;
    }

    v11 = 0;
LABEL_12:
    v21 = sub_2282F07CC();
    [v21 setOn_];
    goto LABEL_13;
  }

  v11 = v5[*(v8 + 24)];
  sub_2282F2BA8(v5, type metadata accessor for SelectionEntryItem);
  if ((v6 & 1) == 0)
  {
    goto LABEL_12;
  }

  v12 = sub_2282F0A40();
  if (!v11)
  {
LABEL_9:
    sub_2282F0954();
    v14 = v17;
    v15 = &selRef_secondarySystemFillColor;
    goto LABEL_10;
  }

  sub_2282F0860();
  v14 = v13;
  v15 = &selRef_tintColor;
LABEL_10:
  [v12 setImage_];

  v18 = *(v1 + OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView);
  v19 = objc_opt_self();
  v20 = v18;
  v21 = [v19 *v15];
  [v20 setTintColor_];

LABEL_13:
}

uint64_t sub_2282F1B58()
{
  v1 = v0;
  v2 = sub_2283911B0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28[-1] - v7;
  v9 = type metadata accessor for SelectionEntryItem(0);
  v10 = *(v9 - 1);
  MEMORY[0x28223BE20](v9);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v1 + v13, v29, sub_228181D50);
  if (v30)
  {
    sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
    v14 = swift_dynamicCast();
    (*(v10 + 56))(v8, v14 ^ 1u, 1, v9);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_2282F2A94(v8, v12);
      v15 = v9[6];
      v16 = (v12[v15] & 1) == 0;
      (*&v12[v9[9]])(&v12[v9[5]], v16);
      v12[v15] = v16;
      v30 = v9;
      v31 = sub_2282F2AF8(&qword_27D827698, 255, type metadata accessor for SelectionEntryItem, &protocol conformance descriptor for SelectionEntryItem);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
      sub_2282F2B40(v12, boxed_opaque_existential_1, type metadata accessor for SelectionEntryItem);
      swift_beginAccess();
      sub_22818FD64(v29, v1 + v13);
      swift_endAccess();
      sub_2282F0AEC();
      sub_2282F2BA8(v29, sub_228181D50);
      return sub_2282F2BA8(v12, type metadata accessor for SelectionEntryItem);
    }
  }

  else
  {
    sub_2282F2BA8(v29, sub_228181D50);
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_2282F2A24(v8, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  sub_228391150();
  v19 = v1;
  v20 = sub_2283911A0();
  v21 = sub_2283925C0();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v28[0] = v23;
    *v22 = 136446210;
    sub_2282F2B40(v1 + v13, v29, sub_228181D50);
    sub_228181D50(0);
    v24 = sub_228392040();
    v26 = sub_2281C96FC(v24, v25, v28);

    *(v22 + 4) = v26;
    _os_log_impl(&dword_22816B000, v20, v21, "Incorrect view model for SelectionOptionsCell: %{public}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AAB7B80](v23, -1, -1);
    MEMORY[0x22AAB7B80](v22, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

id SelectionOptionsCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SelectionOptionsCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage] = 0;
  *&v4[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView] = 0;
  v10 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor;
  *&v4[v10] = [objc_opt_self() tertiarySystemBackgroundColor];
  v12.receiver = v4;
  v12.super_class = type metadata accessor for SelectionOptionsCell();
  return objc_msgSendSuper2(&v12, sel_initWithFrame_, a1, a2, a3, a4);
}

id SelectionOptionsCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SelectionOptionsCell.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___cellSwitch] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___selectedImage] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___notSelectedImage] = 0;
  *&v1[OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell____lazy_storage___accessoryImageView] = 0;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_defaultBackgroundColor;
  *&v1[v4] = [objc_opt_self() tertiarySystemBackgroundColor];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SelectionOptionsCell();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id SelectionOptionsCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SelectionOptionsCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SelectionOptionsCell.deselectionBehavior(in:)@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 1;
  v2 = *MEMORY[0x277D10F90];
  v3 = sub_22838FFC0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t _s19HealthMedicationsUI20SelectionOptionsCellC09didSelectF0_2inySo6UIViewC_So0J10ControllerCtF_0()
{
  sub_2282F141C(0, &qword_27D827690, type metadata accessor for SelectionEntryItem, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v12 - v2 + 22;
  v4 = OBJC_IVAR____TtC19HealthMedicationsUI20SelectionOptionsCell_item;
  swift_beginAccess();
  sub_2282F2B40(v0 + v4, v12, sub_228181D50);
  if (!v13)
  {
    sub_2282F2BA8(v12, sub_228181D50);
    v10 = type metadata accessor for SelectionEntryItem(0);
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    return sub_2282F2A24(v3, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  }

  sub_2281810DC(0, &qword_280DDCD60, MEMORY[0x277D10D48]);
  v5 = type metadata accessor for SelectionEntryItem(0);
  v6 = swift_dynamicCast();
  v7 = *(v5 - 8);
  (*(v7 + 56))(v3, v6 ^ 1u, 1, v5);
  if ((*(v7 + 48))(v3, 1, v5) == 1)
  {
    return sub_2282F2A24(v3, &qword_27D827690, type metadata accessor for SelectionEntryItem);
  }

  v8 = v3[*(v5 + 32)];
  result = sub_2282F2BA8(v3, type metadata accessor for SelectionEntryItem);
  if (v8 == 1)
  {
    return sub_2282F1B58();
  }

  return result;
}

unint64_t sub_2282F26F4()
{
  result = qword_27D827660;
  if (!qword_27D827660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D827660);
  }

  return result;
}

void sub_2282F2808(uint64_t a1)
{
  sub_22838F4A0();
  if (v1 <= 0x3F)
  {
    sub_2281810DC(319, &qword_27D827688, &protocol descriptor for ListContentConfigurationProvider);
    if (v2 <= 0x3F)
    {
      sub_2282F141C(319, &qword_280DDB978, sub_2282F2914, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2281C35D8();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_2282F2914()
{
  result = qword_280DDB980;
  if (!qword_280DDB980)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DDB980);
  }

  return result;
}

uint64_t sub_2282F2A24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2282F141C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2282F2A94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionEntryItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2282F2AF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2282F2B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2282F2BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2282F2C08(uint64_t a1)
{
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2283930D0();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x277D84F90];
    sub_228393240();
    result = sub_228393070();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x277D84F90];
  sub_228393240();
  result = sub_228393040();
  v5 = *(a1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  while (v6 < v2)
  {
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_31;
    }

    v10 = v26;
    v9 = v27;
    v11 = v28;
    sub_2282D96A0(v26, v27, v28, a1);
    v13 = v12;
    v14 = [v12 severity];

    sub_228393210();
    sub_228393250();
    sub_228393260();
    result = sub_228393220();
    if (v24)
    {
      if (!v11)
      {
        goto LABEL_35;
      }

      if (sub_228393090())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      sub_2282F3FB4(0);
      v7 = sub_2283924A0();
      sub_228393130();
      result = v7(v25, 0);
      if (v6 == v2)
      {
LABEL_28:
        sub_228205ADC(v26, v27, v28);
        return v29;
      }
    }

    else
    {
      if (v11)
      {
        goto LABEL_36;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v15 = 1 << *(a1 + 32);
      if (v10 >= v15)
      {
        goto LABEL_32;
      }

      v16 = v10 >> 6;
      v17 = *(a1 + 56 + 8 * (v10 >> 6));
      if (((v17 >> v10) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_34;
      }

      v18 = v17 & (-2 << (v10 & 0x3F));
      if (v18)
      {
        v15 = __clz(__rbit64(v18)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v16 << 6;
        v20 = v16 + 1;
        v21 = (a1 + 64 + 8 * v16);
        while (v20 < (v15 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            result = sub_228205ADC(v10, v9, 0);
            v15 = __clz(__rbit64(v22)) + v19;
            goto LABEL_27;
          }
        }

        result = sub_228205ADC(v10, v9, 0);
      }

LABEL_27:
      v26 = v15;
      v27 = v9;
      v28 = 0;
      if (v6 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t Set<>.severities(filtering:includeMinorInteractions:)(void *a1, char a2, uint64_t a3)
{
  v5 = a1;

  v7 = sub_2282F3BC8(v6, a1);

  v8 = sub_2282F30A4(v7);

  v16 = MEMORY[0x277D84F90];
  if (v8 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2283930D0())
  {
    v10 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x22AAB6D80](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(v8 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if ((a2 & 1) != 0 || [v11 severityLevel] != 4)
      {
        sub_228393210();
        sub_228393250();
        sub_228393260();
        sub_228393220();
      }

      else
      {
      }

      ++v10;
      if (v13 == i)
      {
        v14 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v14 = MEMORY[0x277D84F90];
LABEL_19:

  return v14;
}

unint64_t sub_2282F30A4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_228393080();
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    sub_2281A89C4(&qword_280DDB9E8, &qword_280DDB9F0, 0x277D11550);
    result = sub_2283924C0();
    v3 = v48[4];
    v5 = v48[5];
    v6 = v48[6];
    v7 = v48[7];
    v8 = v48[8];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v12 = (v6 + 64) >> 6;
  v46 = MEMORY[0x277D84F90];
  v41 = v3;
  v43 = v5;
  while (v3 < 0)
  {
    v17 = sub_228393100();
    if (!v17)
    {
      goto LABEL_46;
    }

    v48[10] = v17;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    swift_dynamicCast();
    v16 = v48[0];
    v15 = v7;
    v45 = v8;
    if (!v48[0])
    {
      goto LABEL_46;
    }

LABEL_18:
    v18 = [v16 interactions];
    sub_22817A958(0, &qword_280DDBA10, 0x277D11518);
    sub_2281A89C4(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
    v19 = sub_228392480();

    v20 = sub_2282F2C08(v19);

    v21 = v20 >> 62;
    if (v20 >> 62)
    {
      v22 = sub_2283930D0();
    }

    else
    {
      v22 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = v46;
    v24 = v46 >> 62;
    v47 = v22;
    if (v46 >> 62)
    {
      v40 = sub_2283930D0();
      v26 = v40 + v47;
      if (__OFADD__(v40, v47))
      {
LABEL_45:
        __break(1u);
LABEL_46:
        sub_228176F04(v3);
        return v46;
      }
    }

    else
    {
      v25 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v25 + v22;
      if (__OFADD__(v25, v22))
      {
        goto LABEL_45;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v24)
      {
LABEL_27:
        sub_2283930D0();
      }

LABEL_28:
      result = sub_2283931F0();
      v23 = result;
      v27 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_29;
    }

    if (v24)
    {
      goto LABEL_27;
    }

    v27 = v46 & 0xFFFFFFFFFFFFFF8;
    if (v26 > *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_28;
    }

LABEL_29:
    v28 = *(v27 + 16);
    v29 = *(v27 + 24);
    if (v21)
    {
      v31 = v27;
      result = sub_2283930D0();
      v27 = v31;
      v30 = result;
    }

    else
    {
      v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v46 = v23;
    if (v30)
    {
      if (((v29 >> 1) - v28) < v47)
      {
        goto LABEL_49;
      }

      v44 = v2;
      v32 = v27 + 8 * v28 + 32;
      v42 = v27;
      if (v21)
      {
        if (v30 < 1)
        {
          goto LABEL_51;
        }

        sub_2282F3EF4(0);
        sub_2282F3F5C();
        for (i = 0; i != v30; ++i)
        {
          v34 = sub_2281CB85C(v48, i, v20);
          v36 = *v35;
          (v34)(v48, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        sub_22817A958(0, &qword_280DDB9F8, 0x277D11520);
        swift_arrayInitWithCopy();
      }

      v2 = v44;
      v7 = v15;
      v8 = v45;
      v3 = v41;
      v12 = (v6 + 64) >> 6;
      v5 = v43;
      if (v47 >= 1)
      {
        v37 = *(v42 + 16);
        v38 = __OFADD__(v37, v47);
        v39 = v37 + v47;
        if (v38)
        {
          goto LABEL_50;
        }

        *(v42 + 16) = v39;
        v7 = v15;
        v8 = v45;
      }
    }

    else
    {

      v7 = v15;
      v8 = v45;
      v12 = (v6 + 64) >> 6;
      v5 = v43;
      if (v47 > 0)
      {
        goto LABEL_48;
      }
    }
  }

  v13 = v7;
  v14 = v8;
  v15 = v7;
  if (v8)
  {
LABEL_14:
    v45 = (v14 - 1) & v14;
    v16 = *(*(v3 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v16)
    {
      goto LABEL_46;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_46;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

unint64_t *sub_2282F3584(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
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

    v8 = a4;
    sub_2282F361C(v7, a2, a3, a4);
    v10 = v9;

    return v10;
  }

  return result;
}

void sub_2282F361C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v25 = a2;
  v26 = a1;
  v27 = 0;
  v5 = 0;
  v29 = a3;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v28 = v11 | (v5 << 6);
    if (!a4)
    {
      goto LABEL_16;
    }

    v14 = *(*(v29 + 48) + 8 * (v11 | (v5 << 6)));
    v15 = [a4 firstConceptIdentifier];
    if (v15)
    {
      v16 = v15;
      v17 = [v14 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v18 = sub_2283921A0();
      v30 = v9;
      v19 = v18;

      v32 = v16;
      MEMORY[0x28223BE20](v20);
      v24[2] = &v32;
      v21 = v31;
      LOBYTE(v17) = sub_228309FEC(sub_2282F4068, v24, v19);
      v31 = v21;

      v9 = v30;

      if (v17)
      {
        goto LABEL_16;
      }
    }

    else
    {

LABEL_16:
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_19:
        v23 = v29;

        sub_22827AC30(v26, v25, v27, v23);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_19;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_2282F3860(uint64_t a1, void *a2)
{
  v3 = v2;
  v4 = a1;
  v38[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = (8 * v7);
  v34 = a2;
  v9 = a2;
  v35 = v9;
  if (v6 > 0xD)
  {
    goto LABEL_23;
  }

  while (2)
  {
    v37 = v3;
    v29[1] = v29;
    v30 = v7;
    MEMORY[0x28223BE20](v9);
    v31 = v29 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v8);
    v32 = 0;
    v7 = 0;
    v3 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v33 = v14 | (v7 << 6);
      if (!v34)
      {
        goto LABEL_17;
      }

      v17 = v4;
      v8 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = [v35 firstConceptIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = [v8 conceptIdentifiers];
        sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
        v21 = sub_2283921A0();

        v36 = v12;
        v38[0] = v19;
        MEMORY[0x28223BE20](v22);
        v29[-2] = v38;
        v23 = v37;
        LOBYTE(v20) = sub_228309FEC(sub_2282F4068, &v29[-4], v21);
        v37 = v23;

        v12 = v36;
        v4 = v17;
        if (v20)
        {
          goto LABEL_17;
        }
      }

      else
      {

LABEL_17:
        *&v31[(v33 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v33;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_20:
          v25 = sub_22827AC30(v31, v30, v32, v4);

          return v25;
        }
      }
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v13)
      {
        goto LABEL_20;
      }

      v16 = *(v3 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_23:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v27 = swift_slowAlloc();
  v28 = v35;
  v25 = sub_2282F3584(v27, v7, v4, v34);

  MEMORY[0x22AAB7B80](v27, -1, -1);

  return v25;
}

uint64_t sub_2282F3BC8(uint64_t a1, void *a2)
{
  v3 = v2;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_2282F3860(a1, a2);
  }

  v5 = MEMORY[0x277D84FA0];
  v33 = MEMORY[0x277D84FA0];
  v30 = a2;
  v6 = sub_228393080();
  v7 = sub_228393100();
  if (v7)
  {
    v8 = v7;
    sub_22817A958(0, &qword_280DDB9F0, 0x277D11550);
    v9 = v8;
    v29[4] = v6;
    while (1)
    {
      v31 = v9;
      swift_dynamicCast();
      v16 = v32;
      if (!a2)
      {
        goto LABEL_21;
      }

      v17 = [v30 firstConceptIdentifier];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      v19 = [v16 conceptIdentifiers];
      sub_22817A958(0, &qword_27D823BE0, 0x277CCD1D0);
      v20 = sub_2283921A0();

      v31 = v18;
      MEMORY[0x28223BE20](v21);
      v29[2] = &v31;
      v22 = v3;
      v23 = sub_228309FEC(sub_2282F4048, v29, v20);

      v16 = v32;
      if (v23)
      {
        v3 = v22;
LABEL_21:
        v28 = *(v5 + 16);
        if (*(v5 + 24) <= v28)
        {
          sub_2282D7530(v28 + 1);
        }

        v5 = v33;
        result = sub_228392C50();
        v11 = v5 + 56;
        v12 = -1 << *(v5 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v5 + 56 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v5 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = 0;
          v25 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v25 && (v24 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v26 = v14 == v25;
            if (v14 == v25)
            {
              v14 = 0;
            }

            v24 |= v26;
            v27 = *(v11 + 8 * v14);
          }

          while (v27 == -1);
          v15 = __clz(__rbit64(~v27)) + (v14 << 6);
        }

        *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        *(*(v5 + 48) + 8 * v15) = v16;
        ++*(v5 + 16);
        goto LABEL_7;
      }

      v3 = v22;
LABEL_7:
      v9 = sub_228393100();
      if (!v9)
      {
        goto LABEL_24;
      }
    }

    v16 = v32;
    goto LABEL_21;
  }

LABEL_24:

  return v5;
}

void sub_2282F3EF4(uint64_t a1)
{
  if (!qword_27D8276A0)
  {
    sub_22817A958(255, &qword_280DDB9F8, 0x277D11520);
    v1 = sub_228392240();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8276A0);
    }
  }
}

unint64_t sub_2282F3F5C()
{
  result = qword_27D8276A8;
  if (!qword_27D8276A8)
  {
    sub_2282F3EF4(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276A8);
  }

  return result;
}

void sub_2282F3FB4(uint64_t a1)
{
  if (!qword_280DDBB20)
  {
    sub_22817A958(255, &qword_280DDBA10, 0x277D11518);
    sub_2281A89C4(&qword_280DDBA08, &qword_280DDBA10, 0x277D11518);
    v1 = sub_2283924B0();
    if (!v2)
    {
      atomic_store(v1, &qword_280DDBB20);
    }
  }
}

uint64_t static UIButton.makeCriticalInteractionButton()()
{
  if (qword_280DDCF18 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000014, 0x80000002283A7590);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalPregnancyInteractionButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000012, 0x80000002283ABE90);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalLactationInteractionButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0xD000000000000012, 0x80000002283ABEE0);
  v3 = v2;

  return v3;
}

uint64_t static UIButton.makeCriticalButton()()
{
  if (qword_27D823310 != -1)
  {
    swift_once();
  }

  v0 = sub_22838F0C0();
  _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(v0, v1, 0x616369746972432ELL, 0xE90000000000006CLL);
  v3 = v2;

  return v3;
}

uint64_t sub_2282F43A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22838F0D0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = [objc_opt_self() systemBlackColor];
  sub_2282F4BD0();
  sub_22838F0E0();
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  sub_228392AD0();
  sub_2282F4C24();
  return sub_22838F0E0();
}

void _sSo8UIButtonC19HealthMedicationsUIE21makeExclamationButton5title29accessibilityIdentifierSuffixABSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v49 = a2;
  sub_2282F4B78(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_228392D80();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_228392CC0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_228392DE0();
  v45 = *(v16 - 8);
  v46 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  sub_228392DC0();
  (*(v13 + 104))(v15, *MEMORY[0x277D74FD8], v12);
  sub_228392CD0();
  v22 = objc_opt_self();
  v23 = [v22 hk_alertHeaderForegroundColor];
  sub_228392D60();
  v24 = [v22 hk_alertHeaderBackgroundColor];
  sub_228392D50();
  (*(v9 + 104))(v11, *MEMORY[0x277D75028], v8);
  sub_228392CB0();
  v50 = 9011426;
  v51 = 0xA300000000000000;
  MEMORY[0x22AAB5C80](a1, v49);
  sub_228392DB0();
  sub_228391660();
  v25 = sub_228391650();
  (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
  sub_228392D70();
  sub_22817A958(0, &qword_280DDB9C0, 0x277D74300);
  v26 = sub_228392AD0();
  v27 = objc_opt_self();
  v28 = [v27 configurationWithFont:v26 scale:1];

  sub_228180ED0();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_228397F20;
  *(v29 + 32) = [v22 systemYellowColor];
  *(v29 + 40) = [v22 systemBlackColor];
  sub_22817A958(0, &qword_280DDB990, 0x277D75348);
  v30 = sub_228392190();

  v31 = [v27 configurationWithPaletteColors_];

  v32 = v28;
  v33 = sub_228391FC0();
  v34 = [objc_opt_self() systemImageNamed:v33 withConfiguration:v32];

  if (v34)
  {
    v35 = [v34 imageByApplyingSymbolConfiguration_];

    v36 = v35;
    sub_228392D90();
    sub_22817A958(0, &unk_280DDB940, 0x277D75220);
    v38 = v45;
    v37 = v46;
    (*(v45 + 16))(v19, v21, v46);
    v39 = sub_228392DF0();
    [v39 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v39 titleLabel];
    [v40 setAdjustsFontForContentSizeCategory_];

    LODWORD(v41) = 1148846080;
    [v39 setContentHuggingPriority:0 forAxis:v41];
    [v39 setUserInteractionEnabled_];
    v50 = sub_228392000();
    v51 = v42;

    MEMORY[0x22AAB5C80](0x6E6F747475422ELL, 0xE700000000000000);

    MEMORY[0x22AAB5C80](v47, v48);

    v43 = sub_228391FC0();

    [v39 setAccessibilityIdentifier_];

    [v39 setTintAdjustmentMode_];
    (*(v38 + 8))(v21, v37);
  }

  else
  {
    __break(1u);
  }
}

void sub_2282F4B78(uint64_t a1)
{
  if (!qword_27D8276B0)
  {
    sub_228391650();
    v1 = sub_228392F00();
    if (!v2)
    {
      atomic_store(v1, &qword_27D8276B0);
    }
  }
}

unint64_t sub_2282F4BD0()
{
  result = qword_27D8276B8;
  if (!qword_27D8276B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276B8);
  }

  return result;
}

unint64_t sub_2282F4C24()
{
  result = qword_27D8276C0;
  if (!qword_27D8276C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D8276C0);
  }

  return result;
}

uint64_t type metadata accessor for ManaulFormsDataSource(uint64_t a1)
{
  result = qword_27D8276C8;
  if (!qword_27D8276C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2282F4D1C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2283407FC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2282F61B0(v5);
  *a1 = v2;
  return result;
}

void *sub_2282F4D88(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v4 = sub_2282F6D70(a1, a2);

  return v4;
}

uint64_t sub_2282F4DE4()
{
  v1 = MEMORY[0x22AAB6620]();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + qword_27D828E68);
    v5 = MEMORY[0x277D84F90];
    do
    {
      v8 = *(v1 + 32 + 8 * v3);
      v9 = *(v4 + 16);
      v10 = (v4 + 32);
      while (v9)
      {
        v11 = *v10++;
        --v9;
        if (v11 == v8)
        {
          goto LABEL_6;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2281C9E64(0, *(v5 + 16) + 1, 1);
      }

      v7 = *(v5 + 16);
      v6 = *(v5 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2281C9E64((v6 > 1), v7 + 1, 1);
      }

      *(v5 + 16) = v7 + 1;
      *(v5 + 8 * v7 + 32) = v8;
LABEL_6:
      ++v3;
    }

    while (v3 != v2);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v5;
}

uint64_t sub_2282F4F18(uint64_t a1)
{
  if (a1 == 2)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

LABEL_8:
    swift_once();
    return sub_22838F0C0();
  }

  if (!a1)
  {
    if (qword_280DDCF18 == -1)
    {
      return sub_22838F0C0();
    }

    goto LABEL_8;
  }

  return 0;
}

uint64_t sub_2282F502C(uint64_t a1, uint64_t a2)
{
  v2 = sub_2283900D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228390010();
  v6 = sub_2283900C0();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t sub_2282F5100()
{
  v1 = sub_228390170();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v0;
  v5 = *(v0 + qword_27D828E68);
  v6 = *(v5 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v19 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v6, 0);
    v7 = v19;
    v8 = (v5 + 32);
    do
    {
      v9 = *v8++;
      sub_2282F52B4(v9, v4);
      v19 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2281C9DB4((v10 > 1), v11 + 1, 1);
      }

      v17 = v1;
      v18 = sub_2282F6EDC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
      (*(v2 + 16))(boxed_opaque_existential_1, v4, v1);
      v7 = v19;
      *(v19 + 16) = v11 + 1;
      sub_22816DFFC(&v16, v7 + 40 * v11 + 32);
      (*(v2 + 8))(v4, v1);
      --v6;
    }

    while (v6);
  }

  return v7;
}

uint64_t sub_2282F52B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v60 = *v2;
  v4 = sub_228390460();
  v73 = *(v4 - 8);
  v74 = v4;
  MEMORY[0x28223BE20](v4);
  v72 = v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D83D88];
  sub_2282F6FA4(0, &unk_280DDBCD0, MEMORY[0x277D74BD0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v71 = v56 - v8;
  v9 = sub_22838FFC0();
  v67 = *(v9 - 8);
  v68 = v9;
  MEMORY[0x28223BE20](v9);
  v69 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_228391220();
  v64 = *(v11 - 8);
  v65 = v11;
  MEMORY[0x28223BE20](v11);
  v63 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2282F6FA4(0, &qword_280DDBCE8, MEMORY[0x277D74AC8], v6);
  MEMORY[0x28223BE20](v13 - 8);
  v58 = v56 - v14;
  v62 = sub_228391250();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for FormStepResult(0);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = v56 - v21;
  sub_2282F6FA4(0, &unk_27D827790, type metadata accessor for FormStepResult, v6);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = v56 - v24;
  v26 = sub_228391590();
  v66 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v28 = v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228391520();
  v70 = a1;
  sub_228392A60();
  sub_228391540();
  v57 = objc_opt_self();
  v29 = [v57 labelColor];
  v76 = v28;
  v30 = sub_228391450();
  sub_228391420();
  v30(&v79, 0);
  v31 = v56[1];
  sub_228391870();
  if ((*(v17 + 48))(v25, 1, v16))
  {
    sub_2282F6F34(v25, &unk_27D827790, type metadata accessor for FormStepResult);
LABEL_6:
    v32 = v70;
    goto LABEL_7;
  }

  sub_228234878(v25, v22);
  sub_2282F6F34(v25, &unk_27D827790, type metadata accessor for FormStepResult);
  sub_2282F7010(v22, v20);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_2282F7074(v20);
    goto LABEL_6;
  }

  v32 = v70;
LABEL_7:
  v79 = sub_228393600();
  v80 = v33;
  MEMORY[0x22AAB5C80](0x5F6D726F665FLL, 0xE600000000000000);
  v77 = v32;
  v34 = sub_228393420();
  MEMORY[0x22AAB5C80](v34);

  v70 = v79;
  v60 = v80;
  v81 = v26;
  v82 = MEMORY[0x277D74C30];
  v35 = __swift_allocate_boxed_opaque_existential_1(&v79);
  v36 = v66;
  (*(v66 + 16))(v35, v76, v26);
  sub_2282F6FA4(0, &unk_280DDB890, MEMORY[0x277D74AE0], MEMORY[0x277D84560]);
  sub_2283912F0();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_228397F40;
  v56[0] = v37;
  v38 = sub_228391230();
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  v39 = v59;
  sub_228391240();
  v41 = v63;
  v40 = v64;
  v42 = v65;
  (*(v64 + 104))(v63, *MEMORY[0x277D74A98], v65);
  sub_2283912E0();
  (*(v40 + 8))(v41, v42);
  (*(v61 + 8))(v39, v62);
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v43;
  *(v44 + 24) = v32;
  v65 = v26;
  v45 = v68;
  v46 = v69;
  *v69 = 1;
  (*(v67 + 104))(v46, *MEMORY[0x277D10F90], v45);

  v47 = v71;
  sub_228391390();
  v48 = [v57 secondarySystemBackgroundColor];
  sub_228391370();
  v49 = sub_2283913A0();
  (*(*(v49 - 8) + 56))(v47, 0, 1, v49);
  v51 = *(v31 + qword_27D828E70);
  v50 = *(v31 + qword_27D828E70 + 8);
  v77 = 46;
  v78 = 0xE100000000000000;
  v52 = sub_228392A60();
  MEMORY[0x22AAB5C80](v52);

  v53 = v77;
  v54 = v78;
  v77 = v51;
  v78 = v50;

  MEMORY[0x22AAB5C80](v53, v54);

  (*(v73 + 104))(v72, *MEMORY[0x277D11140], v74);
  sub_228390160();
  (*(v36 + 8))(v76, v65);
}

uint64_t sub_2282F5CE4()
{
  v15 = sub_228390170();
  v1 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v0;
  *&v17 = sub_2282F4DE4();

  sub_2282F4D1C(&v17);

  v4 = v17;
  v5 = *(v17 + 16);
  if (v5)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2281C9DB4(0, v5, 0);
    v6 = v20;
    v7 = 32;
    do
    {
      v8 = v4;
      sub_2282F52B4(*(v4 + v7), v3);
      v20 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_2281C9DB4((v9 > 1), v10 + 1, 1);
      }

      v11 = v15;
      v18 = v15;
      v19 = sub_2282F6EDC();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
      (*(v1 + 16))(boxed_opaque_existential_1, v3, v11);
      v6 = v20;
      *(v20 + 16) = v10 + 1;
      sub_22816DFFC(&v17, v6 + 40 * v10 + 32);
      (*(v1 + 8))(v3, v11);
      v7 += 8;
      --v5;
      v4 = v8;
    }

    while (v5);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_2282F5EF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2282F6FA4(0, &unk_27D827790, type metadata accessor for FormStepResult, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v9 - v5);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    *v6 = a3;
    v8 = type metadata accessor for FormStepResult(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
    sub_228391850();

    return sub_2282F6F34(v6, &unk_27D827790, type metadata accessor for FormStepResult);
  }

  return result;
}

uint64_t sub_2282F6070()
{
}

uint64_t sub_2282F60B4()
{
  v0 = sub_22838FFB0();

  sub_2282F6F34(v0 + qword_27D828B70, &qword_27D8238D0, type metadata accessor for MedicationSearchItem);

  return swift_deallocClassInstance();
}

uint64_t sub_2282F61B0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_228393410();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for HKMedicationFreeTextFormTypeCode(0);
        v5 = sub_228392220();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2282F63BC(v7, v8, a1, v4);
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
    return sub_2282F62AC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2282F62AC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = result - a3;
LABEL_6:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      v10 = sub_228392A60();
      v12 = v11;
      if (v10 == sub_228392A60() && v12 == v13)
      {

LABEL_5:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v15 = sub_228393460();

      if ((v15 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v16 = *v9;
      result = v9[1];
      *v9 = result;
      v9[1] = v16;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2282F63BC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v102 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v7 = *v102;
    if (!*v102)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_108:
      v93 = v5;
      v94 = *(v9 + 2);
      if (v94 >= 2)
      {
        while (*v6)
        {
          v5 = v94 - 1;
          v95 = *&v9[16 * v94];
          v96 = *&v9[16 * v94 + 24];
          sub_2282F6A7C((*v6 + 8 * v95), (*v6 + 8 * *&v9[16 * v94 + 16]), (*v6 + 8 * v96), v7);
          if (v93)
          {
          }

          if (v96 < v95)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_2283406C0(v9);
          }

          if (v94 - 2 >= *(v9 + 2))
          {
            goto LABEL_133;
          }

          v97 = &v9[16 * v94];
          *v97 = v95;
          *(v97 + 1) = v96;
          result = sub_228340634(v94 - 1);
          v94 = *(v9 + 2);
          if (v94 <= 1)
          {
          }
        }

        goto LABEL_143;
      }
    }

LABEL_139:
    result = sub_2283406C0(v9);
    v9 = result;
    goto LABEL_108;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v12 = *v6;
      v13 = sub_228392A60();
      v15 = v14;
      if (v13 == sub_228392A60() && v15 == v16)
      {
        v18 = 0;
      }

      else
      {
        v18 = sub_228393460();
      }

      v11 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v99 = v10;
        v19 = v12 + 8 * v10 + 16;
        do
        {
          v22 = v11;
          v23 = sub_228392A60();
          v25 = v24;
          if (v23 == sub_228392A60() && v25 == v26)
          {

            v6 = a3;
            if (v18)
            {
              v10 = v99;
              goto LABEL_25;
            }
          }

          else
          {
            v20 = sub_228393460();

            v21 = v18 ^ v20;
            v6 = a3;
            if (v21)
            {
              goto LABEL_23;
            }
          }

          v19 += 8;
          ++v11;
        }

        while (v7 != v22 + 1);
        v11 = v7;
LABEL_23:
        v10 = v99;
      }

      if (v18)
      {
LABEL_25:
        if (v11 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v11)
        {
          v28 = v11 - 1;
          v29 = v10;
          do
          {
            if (v29 != v28)
            {
              v31 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v32 = *(v31 + 8 * v29);
              *(v31 + 8 * v29) = *(v31 + 8 * v28);
              *(v31 + 8 * v28) = v32;
            }
          }

          while (++v29 < v28--);
        }
      }
    }

    v33 = v6[1];
    if (v11 < v33)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_135;
      }

      if (v11 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v11 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v106 = v11;
    if ((result & 1) == 0)
    {
      result = sub_228198978(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      result = sub_228198978((v47 > 1), v48 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v10;
    *(v50 + 5) = v11;
    v51 = *v102;
    if (!*v102)
    {
      goto LABEL_144;
    }

    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_75:
          if (v56)
          {
            goto LABEL_123;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_126;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_130;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_89:
        if (v74)
        {
          goto LABEL_125;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_128;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_96:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v91 = *&v9[16 * v90 + 32];
        v7 = *&v9[16 * v52 + 40];
        sub_2282F6A7C((*v6 + 8 * v91), (*v6 + 8 * *&v9[16 * v52 + 32]), (*v6 + 8 * v7), v51);
        if (v5)
        {
        }

        if (v7 < v91)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_2283406C0(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_120;
        }

        v92 = &v9[16 * v90];
        *(v92 + 4) = v91;
        *(v92 + 5) = v7;
        result = sub_228340634(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_121;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_122;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_124;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_127;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_131;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v106;
    if (v106 >= v7)
    {
      goto LABEL_106;
    }
  }

  v34 = v10 + a4;
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v34 >= v33)
  {
    v34 = v6[1];
  }

  if (v34 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v11 == v34)
  {
    goto LABEL_55;
  }

  v98 = v5;
  v100 = v10;
  v35 = *v6;
  v36 = v35 + 8 * v11 - 8;
  v37 = v10 - v11;
  v103 = v34;
LABEL_44:
  v105 = v11;
  v7 = v37;
  v38 = v36;
  while (1)
  {
    v39 = sub_228392A60();
    v41 = v40;
    if (v39 == sub_228392A60() && v41 == v42)
    {

LABEL_43:
      v11 = v105 + 1;
      v36 += 8;
      --v37;
      if (v105 + 1 == v103)
      {
        v11 = v103;
        v5 = v98;
        v10 = v100;
        v6 = a3;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v44 = sub_228393460();

    if ((v44 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v35)
    {
      break;
    }

    v45 = *v38;
    *v38 = v38[1];
    v38[1] = v45;
    --v38;
    if (__CFADD__(v7++, 1))
    {
      goto LABEL_43;
    }
  }

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
  return result;
}