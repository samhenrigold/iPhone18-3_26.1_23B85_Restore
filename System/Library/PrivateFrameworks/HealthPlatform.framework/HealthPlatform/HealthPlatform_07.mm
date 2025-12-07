uint64_t sub_22848404C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE9320, 0x277CCDA70);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D83F9A0, &qword_280DE9320, 0x277CCDA70, &qword_280DE9318);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_2284842E4(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  sub_22855E22C();
  v48 = *a2;
  if (*a2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v39 = a2;
  v10 = a2[5];
  v9 = a2[6];
  v45 = v6;
  v46 = v5;
  sub_22855D20C();
  v43 = v8;
  v44 = v7;
  sub_22855D20C();
  sub_22855D20C();
  v11 = sub_22855E27C();
  v12 = -1 << *(v4 + 32);
  v13 = v11 & ~v12;
  v51 = v4 + 56;
  if (((*(v4 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *v38;
    sub_22842B9BC(v39, v53);
    sub_228488A80(v39, v13, isUniquelyReferenced_nonNull_native);
    *v38 = v52;
    v28 = *(v39 + 1);
    *a1 = *v39;
    *(a1 + 16) = v28;
    *(a1 + 32) = *(v39 + 2);
    *(a1 + 48) = v39[6];
    return 1;
  }

  v41 = v9;
  v42 = v10;
  v50 = ~v12;
  v47 = v4;
  v14 = v48;
  while (1)
  {
    v15 = *(v4 + 48) + 56 * v13;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
    v20 = *(v15 + 32);
    v21 = *(v15 + 48);
    if (*v15)
    {
      if (!v14)
      {
        goto LABEL_7;
      }

      v49 = *(v15 + 40);
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v22 = v16;

      if ((sub_22855D9AC() & 1) == 0)
      {

        v16 = v22;
        goto LABEL_30;
      }
    }

    else
    {
      if (v14)
      {
        goto LABEL_7;
      }

      v49 = *(v15 + 40);
    }

    v23 = v17 == v46 && v18 == v45;
    if (!v23 && (sub_22855E15C() & 1) == 0)
    {

LABEL_30:
      v4 = v47;
LABEL_31:

      v14 = v48;
      goto LABEL_7;
    }

    v24 = v19 == v44 && v20 == v43;
    v4 = v47;
    if (!v24 && (sub_22855E15C() & 1) == 0)
    {

      goto LABEL_31;
    }

    if (v49 == v42 && v21 == v41)
    {
      break;
    }

    v26 = sub_22855E15C();

    v14 = v48;
    if (v26)
    {
      goto LABEL_36;
    }

LABEL_7:
    v13 = (v13 + 1) & v50;
    if (((*(v51 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

LABEL_36:
  sub_22848CF64(v39);
  v30 = *(v47 + 48) + 56 * v13;
  v32 = *(v30 + 16);
  v31 = *(v30 + 24);
  v34 = *(v30 + 32);
  v33 = *(v30 + 40);
  v35 = *(v30 + 48);
  v36 = *v30;
  *a1 = *v30;
  *(a1 + 16) = v32;
  *(a1 + 24) = v31;
  *(a1 + 32) = v34;
  *(a1 + 40) = v33;
  *(a1 + 48) = v35;
  v37 = v36;

  return 0;
}

uint64_t sub_228484698(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_22855D13C();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_22840A390(&qword_280DECD78, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22855D16C();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_228488E0C(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_228484978(void *a1, void *a2)
{
  v3 = v2;
  v5 = *v2;
  sub_22855E22C();
  if (a2)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v6 = sub_22855E27C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_2284890D8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = a2;
    return 1;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = *(*(v5 + 48) + 8 * v8);
    if (!v10)
    {
      break;
    }

    if (a2)
    {
      sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
      v11 = v10;
      v12 = sub_22855D9AC();

      if (v12)
      {

        v13 = *(*(v5 + 48) + 8 * v8);
        goto LABEL_14;
      }
    }

LABEL_7:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  if (a2)
  {
    goto LABEL_7;
  }

  v13 = 0;
LABEL_14:
  *a1 = v13;
  v17 = v13;
  return 0;
}

uint64_t sub_228484B0C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE94C8, 0x277CCD830);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_280DE91F8, &qword_280DE94C8, 0x277CCD830, &qword_280DE94C0);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_228484DA4(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  sub_22855E22C();
  v7 = a2 & 1;
  MEMORY[0x22AABA2B0](v7);
  v8 = sub_22855E27C();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_22848929C(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t sub_228484EA4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_22855DB5C();

    if (v9)
    {

      sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_22855DB4C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_228485488(v7, result + 1, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_2284863FC(v20 + 1, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    }

    v18 = v8;
    sub_22851C480();

    *v3 = v19;
    goto LABEL_16;
  }

  sub_2283EF310(0, &qword_280DE9280, 0x277CCD940);
  v11 = sub_22855D99C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_2284893F0(v18, v13, isUniquelyReferenced_nonNull_native, &qword_27D83F7D8, &qword_280DE9280, 0x277CCD940, &qword_280DE9270);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_22855D9AC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_22848513C(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a2);
  v6 = sub_22855E27C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_228489598(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_228485234(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t (*a4)(void), void (*a5)(void))
{
  if (a2)
  {
    a3(0);
    v7 = sub_22855DC1C();
    v20 = v7;
    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      a4(0);
      do
      {
        swift_dynamicCast();
        v14 = *(v7 + 16);
        if (*(v7 + 24) <= v14)
        {
          sub_2284858F4(v14 + 1, a5);
        }

        v7 = v20;
        result = sub_22855D99C();
        v9 = v20 + 56;
        v10 = -1 << *(v20 + 32);
        v11 = result & ~v10;
        v12 = v11 >> 6;
        if (((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6))) != 0)
        {
          v13 = __clz(__rbit64((-1 << v11) & ~*(v20 + 56 + 8 * (v11 >> 6)))) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v10) >> 6;
          do
          {
            if (++v12 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v12 == v16;
            if (v12 == v16)
            {
              v12 = 0;
            }

            v15 |= v17;
            v18 = *(v9 + 8 * v12);
          }

          while (v18 == -1);
          v13 = __clz(__rbit64(~v18)) + (v12 << 6);
        }

        *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
        *(*(v20 + 48) + 8 * v13) = v19;
        ++*(v20 + 16);
      }

      while (sub_22855DB8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v7;
}

uint64_t sub_228485488(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_22848D04C(0, a3, a4, a5, a6);
    v10 = sub_22855DC1C();
    v23 = v10;
    sub_22855DAFC();
    if (sub_22855DB8C())
    {
      sub_2283EF310(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_2284863FC(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_22855D99C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22855DB8C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_2284856A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_228460124();
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2284858F4(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v4 + 16))
  {
    v7 = 0;
    v8 = (v4 + 56);
    v9 = 1 << *(v4 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v4 + 48) + 8 * (v15 | (v7 << 6)));
      result = sub_22855D99C();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v4 + 32);
    if (v26 >= 64)
    {
      bzero((v4 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v26;
    }

    *(v4 + 16) = 0;
  }

  *v3 = v6;
  return result;
}

uint64_t sub_228485B14(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22855C33C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22848D41C(0);
  result = sub_22855DC0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
      result = sub_22855D13C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_228485E64(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UserProfile(0);
  v32 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22846021C(0);
  result = sub_22855DC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v30 = v1;
    v31 = v6;
    v9 = 0;
    v10 = (v6 + 56);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v32 + 72);
      sub_2284602F8(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_22855E22C();
      sub_22855C1DC();
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22855D14C();
      result = sub_22855E27C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2284602F8(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v6 + 32);
    if (v29 >= 64)
    {
      bzero(v10, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    v2 = v30;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
  return result;
}

uint64_t sub_228486184(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70, &type metadata for PluginFeedItem.SharableModelReference);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22855E22C();
      sub_22855D20C();
      result = sub_22855E27C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2284863FC(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22848D04C(0, a2, a3, a4, a5);
  result = sub_22855DC0C();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      result = sub_22855D99C();
      v22 = -1 << *(v9 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v16 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v16 + 8 * v24);
          if (v28 != -1)
          {
            v17 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v23) & ~*(v16 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v7 + 32);
    if (v29 >= 64)
    {
      bzero((v7 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v29;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
  return result;
}

uint64_t sub_228486618(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848CFB8(0);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22855D1AC();
      sub_22855E22C();
      sub_22855D20C();
      v18 = sub_22855E27C();

      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_228486888(uint64_t a1)
{
  v2 = *v1;
  sub_22848D200(0, &qword_280DE9228, sub_22842BA18, &type metadata for ContentKind);
  result = sub_22855DC0C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v20 = *(*(v2 + 48) + (v17 | (v5 << 6)));
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
      v12 = -1 << *(v4 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      v15 = (-1 << v13) & ~*(v11 + 8 * (v13 >> 6));
      if (!v15)
      {
        v21 = 0;
        v22 = (63 - v12) >> 6;
        while (++v14 != v22 || (v21 & 1) == 0)
        {
          v23 = v14 == v22;
          if (v14 == v22)
          {
            v14 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v14);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v14 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64(v15)) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v4 + 48) + v16) = v20;
      ++*(v4 + 16);
    }

    v18 = v5;
    while (1)
    {
      v5 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v19 = v6[v5];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v2 + 32);
    if (v25 >= 64)
    {
      bzero((v2 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v25;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_228486DDC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968, &type metadata for PluginFeedItem.NotificationIdentifier);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 56 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[3];
      v33 = v18[2];
      v34 = v18[1];
      v21 = v18[4];
      v31 = v18[6];
      v32 = v18[5];
      sub_22855E22C();
      if (v19)
      {
        MEMORY[0x22AABA2B0](1);
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      sub_22855D20C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 56 * v13);
      *v14 = v19;
      v14[1] = v34;
      v14[2] = v33;
      v14[3] = v20;
      v14[4] = v21;
      v14[5] = v32;
      v14[6] = v31;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2284870C4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_22855C1DC();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_22848CED0(0);
  result = sub_22855DC0C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22855D13C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_228487414(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_280DE9218, sub_22842B914, &type metadata for SourceProfile);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22855E22C();
      if (v17)
      {
        MEMORY[0x22AABA2B0](1);
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      result = sub_22855E27C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_228487698(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_280DE9210, sub_22848CD68, &type metadata for GenerationPhase);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v17);
      result = sub_22855E27C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_228487900(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848CCD4(0);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v17);
      result = sub_22855E27C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_228487B44(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22855C33C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228485B14(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22848A2B8(MEMORY[0x277D10C20], sub_22848D41C);
      goto LABEL_12;
    }

    sub_22848AD18(v10 + 1);
  }

  v12 = *v3;
  sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
  v13 = sub_22855D13C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22840A390(&qword_27D83F580, MEMORY[0x277D10C20], MEMORY[0x277D10C30]);
      v21 = sub_22855D16C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_228487E10(uint64_t a1, unint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a5;
    sub_2284858F4(v9 + 1, a4);
  }

  else
  {
    if (v10 > v9)
    {
      sub_228489844(a4);
      goto LABEL_12;
    }

    v11 = a5;
    sub_22848AB0C(v9 + 1, a6);
  }

  v12 = *v6;
  v13 = sub_22855D99C();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = sub_22855D9AC();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22855E1AC();
  __break(1u);
}

void sub_228487F88(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_228486184(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_228489B64();
      goto LABEL_16;
    }

    sub_22848B318(v8 + 1);
  }

  v10 = *v4;
  sub_22855E22C();
  sub_22855D20C();
  v11 = sub_22855E27C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22855E15C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22855E1AC();
  __break(1u);
}

uint64_t sub_228488108(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_228486618(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_228489E68();
      goto LABEL_16;
    }

    sub_22848B770(v7 + 1);
  }

  v9 = *v3;
  sub_22855D1AC();
  sub_22855E22C();
  sub_22855D20C();
  v10 = sub_22855E27C();

  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    type metadata accessor for HKFeatureIdentifier(0);
    do
    {
      v13 = sub_22855D1AC();
      v15 = v14;
      if (v13 == sub_22855D1AC() && v15 == v16)
      {
        goto LABEL_19;
      }

      v18 = sub_22855E15C();

      if (v18)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v19 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = v6;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

uint64_t sub_2284882F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_228486888(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_228489FAC();
        goto LABEL_88;
      }

      sub_22848B9B8(v7 + 1);
    }

    v9 = *v3;
    sub_22855E22C();
    ContentKind.rawValue.getter();
    sub_22855D20C();

    result = sub_22855E27C();
    v10 = -1 << *(v9 + 32);
    a2 = result & ~v10;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      while (2)
      {
        v12 = 0xE500000000000000;
        v13 = 0x7472656C61;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            break;
          case 2:
            v12 = 0xE300000000000000;
            v13 = 7368801;
            break;
          case 3:
            v12 = 0xE700000000000000;
            v13 = 0x656C6369747261;
            break;
          case 4:
            v12 = 0xE800000000000000;
            v13 = 0x79726F6765746163;
            break;
          case 5:
            v12 = 0xE400000000000000;
            v13 = 1635017060;
            break;
          case 6:
            v13 = 0x67676F4C61746164;
            v12 = 0xEB00000000676E69;
            break;
          case 7:
            v13 = 0x6D6D755361746164;
            v12 = 0xEB00000000797261;
            break;
          case 8:
            v13 = 0xD000000000000010;
            v12 = 0x800000022856CF30;
            break;
          case 9:
            v13 = 0xD000000000000010;
            v12 = 0x800000022856CF50;
            break;
          case 0xA:
            v13 = 0xD000000000000010;
            v12 = 0x800000022856CF70;
            break;
          case 0xB:
            v13 = 0x5365727574616566;
            v12 = 0xED00007375746174;
            break;
          case 0xC:
            v12 = 0xE900000000000074;
            v13 = 0x6867696C68676968;
            break;
          case 0xD:
            v13 = 0x6867696C68676968;
            v12 = 0xEF68637261655374;
            break;
          case 0xE:
            v13 = 0x697461676976616ELL;
            v12 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v12 = 0xE600000000000000;
            v13 = 0x617461446F6ELL;
            break;
          case 0x10:
            v13 = 0x726568746FLL;
            break;
          case 0x11:
            v13 = 0x6D726F6674616C70;
            v12 = 0xED00007472656C41;
            break;
          case 0x12:
            v13 = 0x6F69746F6D6F7270;
            v12 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v12 = 0xE600000000000000;
            v13 = 0x74706D6F7270;
            break;
          case 0x14:
            v12 = 0xE700000000000000;
            v13 = 0x656C69666F7270;
            break;
          case 0x15:
            v13 = 0x6E6F6974616C6572;
            v12 = 0xEC00000070696873;
            break;
          case 0x16:
            v12 = 0xE800000000000000;
            v13 = 0x73676E6974746573;
            break;
          case 0x17:
            v12 = 0xE600000000000000;
            v13 = 0x657461647075;
            break;
          case 0x18:
            v12 = 0xE700000000000000;
            v13 = 0x72616265646973;
            break;
          default:
            v13 = 0xD000000000000011;
            v12 = 0x800000022856CEE0;
            break;
        }

        v14 = 0xE500000000000000;
        v15 = 0x7472656C61;
        switch(v6)
        {
          case 1:
            goto LABEL_81;
          case 2:
            v14 = 0xE300000000000000;
            if (v13 != 7368801)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 3:
            v14 = 0xE700000000000000;
            v18 = 0x6C6369747261;
            goto LABEL_61;
          case 4:
            v14 = 0xE800000000000000;
            if (v13 != 0x79726F6765746163)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 5:
            v14 = 0xE400000000000000;
            if (v13 != 1635017060)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 6:
            v19 = 0x67676F4C61746164;
            v20 = 6778473;
            goto LABEL_70;
          case 7:
            v19 = 0x6D6D755361746164;
            v20 = 7959137;
LABEL_70:
            v14 = v20 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v13 != v19)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 8:
            v14 = 0x800000022856CF30;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 9:
            v14 = 0x800000022856CF50;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 10:
            v14 = 0x800000022856CF70;
            if (v13 != 0xD000000000000010)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 11:
            v16 = 0x5365727574616566;
            v17 = 0x7375746174;
            goto LABEL_58;
          case 12:
            v14 = 0xE900000000000074;
            if (v13 != 0x6867696C68676968)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 13:
            v14 = 0xEF68637261655374;
            if (v13 != 0x6867696C68676968)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 14:
            v14 = 0xEA00000000006E6FLL;
            if (v13 != 0x697461676976616ELL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 15:
            v14 = 0xE600000000000000;
            if (v13 != 0x617461446F6ELL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 16:
            if (v13 != 0x726568746FLL)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 17:
            v16 = 0x6D726F6674616C70;
            v17 = 0x7472656C41;
LABEL_58:
            v14 = v17 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v13 != v16)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 18:
            v14 = 0xE90000000000006ELL;
            if (v13 != 0x6F69746F6D6F7270)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 19:
            v14 = 0xE600000000000000;
            v15 = 0x74706D6F7270;
LABEL_81:
            if (v13 == v15)
            {
              goto LABEL_82;
            }

            goto LABEL_83;
          case 20:
            v14 = 0xE700000000000000;
            v18 = 0x6C69666F7270;
LABEL_61:
            if (v13 != (v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 21:
            v14 = 0xEC00000070696873;
            if (v13 != 0x6E6F6974616C6572)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 22:
            v14 = 0xE800000000000000;
            if (v13 != 0x73676E6974746573)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 23:
            v14 = 0xE600000000000000;
            if (v13 != 0x657461647075)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          case 24:
            v14 = 0xE700000000000000;
            if (v13 != 0x72616265646973)
            {
              goto LABEL_83;
            }

            goto LABEL_82;
          default:
            v14 = 0x800000022856CEE0;
            if (v13 != 0xD000000000000011)
            {
              goto LABEL_83;
            }

LABEL_82:
            if (v12 == v14)
            {
              goto LABEL_91;
            }

LABEL_83:
            v21 = sub_22855E15C();

            if (v21)
            {
              goto LABEL_92;
            }

            a2 = (a2 + 1) & v11;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_88:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v6;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_91:

LABEL_92:
    result = sub_22855E1AC();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

void sub_228488A80(void *a1, unint64_t a2, char a3)
{
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_228486DDC(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_22848A104();
        goto LABEL_39;
      }

      sub_22848BEAC(v7 + 1);
    }

    v41 = *v3;
    sub_22855E22C();
    v44 = *a1;
    if (*a1)
    {
      MEMORY[0x22AABA2B0](1);
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v9 = a1[1];
    v10 = a1[2];
    v11 = a1[3];
    v12 = a1[4];
    v4 = a1[5];
    v13 = a1[6];
    v42 = v10;
    v43 = v9;
    sub_22855D20C();
    v39 = v12;
    v40 = v11;
    sub_22855D20C();
    sub_22855D20C();
    v14 = sub_22855E27C();
    v15 = v41;
    v16 = -1 << *(v41 + 32);
    a2 = v14 & ~v16;
    if ((*(v41 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v35 = v13;
      v36 = v4;
      v46 = ~v16;
      v17 = v44;
      do
      {
        v18 = *(v15 + 48) + 56 * a2;
        v4 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v20 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 48);
        if (*v18)
        {
          if (!v17)
          {
            goto LABEL_15;
          }

          v45 = *(v18 + 40);
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v24 = v4;

          v15 = v41;
          if ((sub_22855D9AC() & 1) == 0)
          {

            v4 = v24;
LABEL_14:

            v17 = v44;
            goto LABEL_15;
          }
        }

        else
        {
          if (v17)
          {
            goto LABEL_15;
          }

          v45 = *(v18 + 40);
        }

        v25 = v19 == v43 && v21 == v42;
        if (!v25 && (sub_22855E15C() & 1) == 0 || (v20 == v40 ? (v26 = v22 == v39) : (v26 = 0), !v26 && (sub_22855E15C() & 1) == 0))
        {

          goto LABEL_14;
        }

        if (v45 == v36 && v23 == v35)
        {
          goto LABEL_42;
        }

        v28 = sub_22855E15C();

        v17 = v44;
        if (v28)
        {
          goto LABEL_43;
        }

LABEL_15:
        a2 = (a2 + 1) & v46;
      }

      while (((*(v41 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_39:
  v29 = *v37;
  *(*v37 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = *(v29 + 48) + 56 * a2;
  v31 = *(a1 + 1);
  *v30 = *a1;
  *(v30 + 16) = v31;
  *(v30 + 32) = *(a1 + 2);
  *(v30 + 48) = a1[6];
  v32 = *(v29 + 16);
  v33 = __OFADD__(v32, 1);
  v34 = v32 + 1;
  if (v33)
  {
    __break(1u);
LABEL_42:

LABEL_43:
    sub_22855E1AC();
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v34;
  }
}

uint64_t sub_228488E0C(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_22855C1DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_2284870C4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22848A2B8(MEMORY[0x277CC95F0], sub_22848CED0);
      goto LABEL_12;
    }

    sub_22848C1C8(v10 + 1);
  }

  v12 = *v3;
  sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_22855D13C();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_22840A390(&qword_280DECD78, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_22855D16C();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_2284890D8(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_228487414(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_22848A4EC();
      goto LABEL_19;
    }

    sub_22848C4D8(v7 + 1);
  }

  v9 = *v3;
  sub_22855E22C();
  if (a1)
  {
    MEMORY[0x22AABA2B0](1);
    sub_22855D9BC();
  }

  else
  {
    MEMORY[0x22AABA2B0](0);
  }

  v10 = sub_22855E27C();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      if (v13)
      {
        if (a1)
        {
          sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
          v14 = v13;
          v15 = sub_22855D9AC();

          if (v15)
          {
LABEL_18:
            sub_22855E1AC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a1)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + 8 * a2) = a1;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v19;
  }
}

uint64_t sub_22848929C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228487698(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22848A654();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22848C730(v5 + 1);
  }

  v8 = *v3;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v4 & 1);
  result = sub_22855E27C();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != (v4 & 1))
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4 & 1;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22855E1AC();
  __break(1u);
  return result;
}

void sub_2284893F0(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_2284863FC(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_228489D14(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_22848B568(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_22855D99C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_2283EF310(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22855D9AC();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22855E1AC();
  __break(1u);
}

void sub_228489598(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_228487900(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_22848A7AC();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22848C968(v5 + 1);
  }

  v8 = *v3;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](a1);
  v9 = sub_22855E27C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for _HKDataTypeCode(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22855E1AC();
  __break(1u);
}

void sub_2284896F4()
{
  v1 = v0;
  sub_228460124();
  v2 = *v0;
  v3 = sub_22855DBFC();
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

id sub_228489844(void (*a1)(void))
{
  v2 = v1;
  a1(0);
  v3 = *v1;
  v4 = sub_22855DBFC();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 56);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 56 + 8 * v7)
    {
      result = memmove(result, (v3 + 56), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 56);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        *(*(v5 + 48) + 8 * v18) = v19;
        result = v19;
      }

      while (v13);
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

      v17 = *(v3 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

void *sub_228489990()
{
  v1 = v0;
  v2 = type metadata accessor for UserProfile(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22846021C(0);
  v6 = *v0;
  v7 = sub_22855DBFC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_22842BF58(*(v6 + 48) + v21, v5);
        result = sub_2284602F8(v5, *(v8 + 48) + v21);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v8;
  }

  return result;
}

void sub_228489B64()
{
  v1 = v0;
  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70, &type metadata for PluginFeedItem.SharableModelReference);
  v2 = *v0;
  v3 = sub_22855DBFC();
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

id sub_228489D14(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_22848D04C(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_22855DBFC();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

id sub_228489E68()
{
  v1 = v0;
  sub_22848CFB8(0);
  v2 = *v0;
  v3 = sub_22855DBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

void *sub_228489FAC()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9228, sub_22842BA18, &type metadata for ContentKind);
  v2 = *v0;
  v3 = sub_22855DBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void sub_22848A104()
{
  v1 = v0;
  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968, &type metadata for PluginFeedItem.NotificationIdentifier);
  v2 = *v0;
  v3 = sub_22855DBFC();
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
        v17 = 56 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 16);
        v19 = *(v18 + 24);
        v22 = *(v18 + 32);
        v21 = *(v18 + 40);
        v23 = *(v18 + 48);
        v24 = *(v4 + 48) + v17;
        v25 = *v18;
        *v24 = *v18;
        *(v24 + 16) = v20;
        *(v24 + 24) = v19;
        *(v24 + 32) = v22;
        *(v24 + 40) = v21;
        *(v24 + 48) = v23;
        v26 = v25;
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

void *sub_22848A2B8(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_22855DBFC();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

id sub_22848A4EC()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9218, sub_22842B914, &type metadata for SourceProfile);
  v2 = *v0;
  v3 = sub_22855DBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

  return result;
}

void *sub_22848A654()
{
  v1 = v0;
  sub_22848D200(0, &qword_280DE9210, sub_22848CD68, &type metadata for GenerationPhase);
  v2 = *v0;
  v3 = sub_22855DBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

void *sub_22848A7AC()
{
  v1 = v0;
  sub_22848CCD4(0);
  v2 = *v0;
  v3 = sub_22855DBFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

  return result;
}

uint64_t sub_22848A8E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_228460124();
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848AB0C(uint64_t a1, void (*a2)(void))
{
  v3 = v2;
  v4 = *v2;
  a2(0);
  result = sub_22855DC0C();
  v6 = result;
  if (*(v4 + 16))
  {
    v25 = v2;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v4 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_22855D99C();
      v18 = -1 << *(v6 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v3 = v25;
        goto LABEL_26;
      }

      v16 = *(v4 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v3 = v6;
  }

  return result;
}

uint64_t sub_22848AD18(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22855C33C();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22848D41C(0);
  v7 = sub_22855DC0C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
      result = sub_22855D13C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22848B028(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for UserProfile(0);
  v31 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22846021C(0);
  result = sub_22855DC0C();
  v8 = result;
  if (*(v6 + 16))
  {
    v29 = v1;
    v30 = v6;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v31 + 72);
      sub_22842BF58(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_22855E22C();
      sub_22855C1DC();
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_22855D14C();
      result = sub_22855E27C();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      result = sub_2284602F8(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_22848B318(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_27D83F9D8, sub_22842BE70, &type metadata for PluginFeedItem.SharableModelReference);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22855E22C();

      sub_22855D20C();
      result = sub_22855E27C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848B568(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_22848D04C(0, a2, a3, a4, a5);
  result = sub_22855DC0C();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_22855D99C();
      v21 = -1 << *(v9 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }

  return result;
}

uint64_t sub_22848B770(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848CFB8(0);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
    v28 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_22855D1AC();
      sub_22855E22C();
      v18 = v17;
      sub_22855D20C();
      v19 = sub_22855E27C();

      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v18;
      ++*(v5 + 16);
      v3 = v28;
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v27;
        goto LABEL_26;
      }

      v16 = *(v7 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848B9B8(uint64_t a1)
{
  v2 = *v1;
  sub_22848D200(0, &qword_280DE9228, sub_22842BA18, &type metadata for ContentKind);
  result = sub_22855DC0C();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v16 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v19 = *(*(v2 + 48) + (v16 | (v5 << 6)));
      sub_22855E22C();
      sub_22855D20C();

      result = sub_22855E27C();
      v11 = -1 << *(v4 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = (-1 << v12) & ~*(v10 + 8 * (v12 >> 6));
      if (!v14)
      {
        v20 = 0;
        v21 = (63 - v11) >> 6;
        while (++v13 != v21 || (v20 & 1) == 0)
        {
          v22 = v13 == v21;
          if (v13 == v21)
          {
            v13 = 0;
          }

          v20 |= v22;
          v23 = *(v10 + 8 * v13);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v13 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v15 = __clz(__rbit64(v14)) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v4 + 48) + v15) = v19;
      ++*(v4 + 16);
    }

    v17 = v5;
    while (1)
    {
      v5 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_24;
      }

      v18 = *(v2 + 56 + 8 * v5);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v8 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22848BEAC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_27D83F9C8, sub_22842B968, &type metadata for PluginFeedItem.NotificationIdentifier);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v35 = result;
    while (v10)
    {
      v16 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v19 = *(v3 + 48) + 56 * (v16 | (v6 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v22 = *(v19 + 16);
      v37 = *(v19 + 24);
      v23 = *(v19 + 32);
      v38 = *(v19 + 40);
      v24 = *(v19 + 48);
      sub_22855E22C();
      if (v21)
      {
        MEMORY[0x22AABA2B0](1);
        v25 = v21;

        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      sub_22855D20C();
      sub_22855D20C();
      sub_22855D20C();
      result = sub_22855E27C();
      v5 = v35;
      v26 = -1 << *(v35 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v12 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v14 = v21;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v12 + 8 * v28);
          if (v32 != -1)
          {
            v13 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v13 = __clz(__rbit64((-1 << v27) & ~*(v12 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v14 = v21;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v35 + 48) + 56 * v13);
      *v15 = v14;
      v15[1] = v20;
      v15[2] = v22;
      v15[3] = v37;
      v15[4] = v23;
      v15[5] = v38;
      v15[6] = v24;
      ++*(v35 + 16);
      v3 = v34;
      v10 = v36;
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v33;
        goto LABEL_29;
      }

      v18 = *(v7 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848C1C8(uint64_t a1)
{
  v2 = v1;
  v33 = sub_22855C1DC();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_22848CED0(0);
  v7 = sub_22855DC0C();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_22855D13C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_22848C4D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_280DE9218, sub_22842B914, &type metadata for SourceProfile);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_22855E22C();
      if (v16)
      {
        MEMORY[0x22AABA2B0](1);
        v17 = v16;
        sub_22855D9BC();
      }

      else
      {
        MEMORY[0x22AABA2B0](0);
      }

      result = sub_22855E27C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848C730(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848D200(0, &qword_280DE9210, sub_22848CD68, &type metadata for GenerationPhase);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v16);
      result = sub_22855E27C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22848C968(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_22848CCD4(0);
  result = sub_22855DC0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_22855E22C();
      MEMORY[0x22AABA2B0](v16);
      result = sub_22855E27C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_22848CB7C()
{
  if (!qword_280DE9638)
  {
    v0 = sub_22855D47C();
    if (!v1)
    {
      atomic_store(v0, &qword_280DE9638);
    }
  }
}

unint64_t sub_22848CBCC()
{
  result = qword_27D83F998;
  if (!qword_27D83F998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F998);
  }

  return result;
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

uint64_t sub_22848CC34(uint64_t *a1, int a2)
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

uint64_t sub_22848CC7C(uint64_t result, int a2, int a3)
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

void sub_22848CCD4(uint64_t a1)
{
  if (!qword_280DE91F0)
  {
    type metadata accessor for _HKDataTypeCode(255);
    sub_22840A390(&unk_280DE9450, type metadata accessor for _HKDataTypeCode, &unk_22855FD6C);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91F0);
    }
  }
}

unint64_t sub_22848CD68()
{
  result = qword_280DEBF98;
  if (!qword_280DEBF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBF98);
  }

  return result;
}

unint64_t sub_22848CDBC()
{
  result = qword_27D83F9A8;
  if (!qword_27D83F9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F9A8);
  }

  return result;
}

uint64_t sub_22848CE10(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_22848CB7C();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22848CE7C()
{
  result = qword_27D83F9B8;
  if (!qword_27D83F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F9B8);
  }

  return result;
}

void sub_22848CED0(uint64_t a1)
{
  if (!qword_27D83F9C0)
  {
    sub_22855C1DC();
    sub_22840A390(&qword_280DEE378, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9C0);
    }
  }
}

void sub_22848CFB8(uint64_t a1)
{
  if (!qword_280DE91E0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    sub_22840A390(&unk_280DE9370, type metadata accessor for HKFeatureIdentifier, &unk_22855FE04);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91E0);
    }
  }
}

void sub_22848D04C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_2283EF310(255, a3, a4);
    sub_22844B928(a5, a3, a4);
    v9 = sub_22855DC3C();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_22848D0D8(uint64_t a1)
{
  if (!qword_280DE9208)
  {
    type metadata accessor for EncodedFeatureTag();
    sub_22840A390(qword_280DED8F8, type metadata accessor for EncodedFeatureTag, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE9208);
    }
  }
}

void sub_22848D16C(uint64_t a1)
{
  if (!qword_27D83F9D0)
  {
    type metadata accessor for SharableModelReference();
    sub_22840A390(&qword_280DED6B8, type metadata accessor for SharableModelReference, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9D0);
    }
  }
}

void sub_22848D200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_22855DC3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_22848D260(uint64_t a1)
{
  if (!qword_27D83F9E0)
  {
    type metadata accessor for Profile();
    sub_22840A390(&qword_280DED540, type metadata accessor for Profile, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9E0);
    }
  }
}

void sub_22848D2F4(uint64_t a1)
{
  if (!qword_27D83F9E8)
  {
    type metadata accessor for Keyword();
    sub_22840A390(qword_280DED548, type metadata accessor for Keyword, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9E8);
    }
  }
}

void sub_22848D388(uint64_t a1)
{
  if (!qword_27D83F9F0)
  {
    type metadata accessor for MeasureIdentifierManagedObject();
    sub_22840A390(qword_280DED5F8, type metadata accessor for MeasureIdentifierManagedObject, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9F0);
    }
  }
}

void sub_22848D41C(uint64_t a1)
{
  if (!qword_27D83F9F8)
  {
    sub_22855C33C();
    sub_22840A390(&qword_280DEE360, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83F9F8);
    }
  }
}

void sub_22848D4B0(uint64_t a1)
{
  if (!qword_27D83FA00)
  {
    type metadata accessor for DataType();
    sub_22840A390(&qword_280DED538, type metadata accessor for DataType, MEMORY[0x277D85378]);
    v1 = sub_22855DC3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA00);
    }
  }
}

unint64_t sub_22848D558()
{
  result = qword_27D83FA08;
  if (!qword_27D83FA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83FA08);
  }

  return result;
}

uint64_t RecursiveUnfairLock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t RecursiveUnfairLock.init()()
{
  v1 = swift_slowAlloc();
  *(v0 + 16) = v1;
  *v1 = 0;
  return v0;
}

uint64_t RecursiveUnfairLock.__deallocating_deinit()
{
  MEMORY[0x22AABAD40](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t PluginFeedItem.SharableModelReference.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginFeedItem.SharableModelReference.init(identifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t PluginFeedItem.SharableModelReference.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];

  result = sub_22848D7D8(a1);
  *a2 = v5;
  a2[1] = v4;
  return result;
}

uint64_t sub_22848D7D8(uint64_t a1)
{
  v2 = type metadata accessor for PluginSharableModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PluginFeedItem.SharableModelReference.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C();
  }
}

uint64_t PluginFeedItem.SharableModelReference.hashValue.getter()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22848D8B8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C();
  }
}

uint64_t sub_22848D8E8()
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

uint64_t sub_22848D93C(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  return sub_22855E27C();
}

Swift::Void __swiftcall PluginFeedItem.setAssociatedSharableModelReferences(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for PluginSharableModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1._rawValue + 2);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v20 = MEMORY[0x277D84F90];
    sub_2284273B0(0, v8, 0);
    v9 = v20;
    v10 = a1._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_22848DB1C(v10, v7);
      v13 = *v7;
      v12 = v7[1];

      sub_22848D7D8(v7);
      v20 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2284273B0((v14 > 1), v15 + 1, 1);
        v9 = v20;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v13;
      *(v16 + 40) = v12;
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v17 = sub_228429AB8(v9);

  v18 = *(type metadata accessor for PluginFeedItem(0) + 60);

  *(v2 + v18) = v17;
}

uint64_t sub_22848DB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PluginSharableModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22848DB84()
{
  result = qword_280DEDAC0;
  if (!qword_280DEDAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEDAC0);
  }

  return result;
}

uint64_t static InputSignalIdentifier.pregnancyState.getter()
{
  sub_22855E19C();
  v0 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  return sub_22855C86C();
}

uint64_t static InputSignalSet.LookupKey.pregnancyState.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  (*(v1 + 16))(v3, v4, v0);
  type metadata accessor for PregnancyStateInputSignal();
  return sub_22855C61C();
}

uint64_t static PregnancyStateInputSignal.identityConfiguration.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  (*(v1 + 16))(v3, v4, v0);
  return sub_22855C82C();
}

uint64_t sub_22848DEC4()
{
  v0 = sub_22855C85C();
  __swift_allocate_value_buffer(v0, qword_280DEB2E8);
  __swift_project_value_buffer(v0, qword_280DEB2E8);
  sub_22855E19C();
  v1 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  sub_22855D1BC();
  return sub_22855C86C();
}

id PregnancyStateInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22848EFC4(a1, a3, a4, a5, v5, ObjectType, a2);
}

id PregnancyStateInputSignal.init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  return sub_22848F03C(a1, a3, a4, a5, v5, ObjectType, a2);
}

uint64_t sub_22848E0E8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*a1)
  {
    [*(a2 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(MEMORY[0x277CCD5B0]);
  v9[4] = sub_2283EED00;
  v9[5] = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_2283EEC60;
  v9[3] = &block_descriptor_8;
  v6 = _Block_copy(v9);

  v7 = [v5 initWithIsRunningForMaintenance:1 updateHandler:v6];
  _Block_release(v6);

  *a3 = v7;
  return result;
}

void sub_22848E228(void *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_22855C85C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283EF29C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = a1;
    v13 = sub_22855BF2C();
    v14 = [v13 hk_isDatabaseAccessibilityError];

    if (v14)
    {
      if (qword_280DEE800 != -1)
      {
        swift_once();
      }

      v15 = sub_22855CABC();
      __swift_project_value_buffer(v15, qword_280DEE808);
      v16 = v1;
      v17 = sub_22855CA8C();
      v18 = sub_22855D68C();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v16;
        *v20 = v16;
        v21 = v16;
        _os_log_impl(&dword_2283ED000, v17, v18, "[%@] Failed to get state due to database inaccessible, scheduling retry when unlocked", v19, 0xCu);
        sub_22841DC98(v20);
        MEMORY[0x22AABAD40](v20, -1, -1);
        MEMORY[0x22AABAD40](v19, -1, -1);
      }

      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      v22 = swift_allocObject();
      swift_unknownObjectWeakInit();

      sub_228506C84(sub_22848F390, v22);

      return;
    }
  }

  v46 = v6;
  v47 = v9;
  if (qword_280DEE800 != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  __swift_project_value_buffer(v23, qword_280DEE808);
  v24 = a1;
  v25 = v1;
  v26 = sub_22855CA8C();
  v27 = sub_22855D68C();

  if (os_log_type_enabled(v26, v27))
  {
    v44 = v4;
    v45 = v8;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v50 = v30;
    *v28 = 138412546;
    *(v28 + 4) = v25;
    *v29 = v25;
    *(v28 + 12) = 2080;
    if (a1)
    {
      v49 = a1;
      v31 = a1;
      sub_228418D44();
      v32 = v25;
      v33 = sub_22855D1BC();
      v35 = v34;
    }

    else
    {
      v36 = v25;
      v35 = 0xE300000000000000;
      v33 = 7104878;
    }

    v37 = sub_2283F8938(v33, v35, &v50);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_2283ED000, v26, v27, "[%@] Error when trying to get model from query: %s", v28, 0x16u);
    sub_22841DC98(v29);
    MEMORY[0x22AABAD40](v29, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x22AABAD40](v30, -1, -1);
    MEMORY[0x22AABAD40](v28, -1, -1);

    v4 = v44;
    v8 = v45;
  }

  else
  {
  }

  v38 = [objc_allocWithZone(MEMORY[0x277CCD5A8]) initWithState:0 pregnancyStartDate:0 pregnancyEndDate:0 estimatedDueDate:0 pregnancyDuration:0 physiologicalWashoutEndDate:0 behavioralWashoutEndDate:0 trimesters:0 sample:0 educationalStepsCompletedDate:0];
  v39 = v46;
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v3, qword_280DEB2E8);
  (*(v4 + 16))(v39, v40, v3);
  sub_2283EF310(0, &qword_280DE93F8, 0x277CCD5A8);
  sub_2283EF358();
  v41 = v38;
  sub_22855C88C();
  swift_getObjectType();
  v50 = v25;
  sub_2283FD424(&unk_280DEB2D0, v42, type metadata accessor for PregnancyStateInputSignal, &protocol conformance descriptor for PregnancyStateInputSignal);
  sub_22855C78C();

  (*(v47 + 8))(v11, v8);
}

void sub_22848E88C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
    v3 = MEMORY[0x28223BE20](Strong);
    os_unfair_lock_lock((v2 + 24));
    sub_22848F418((v2 + 16), &v5);
    os_unfair_lock_unlock((v2 + 24));
    v4 = v5;
    [*&v3[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] executeQuery_];
  }
}

Swift::Void __swiftcall PregnancyStateInputSignal.stopObservation()()
{
  v1 = *(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;
  os_unfair_lock_unlock((v1 + 24));
  if (v2)
  {
    [*(v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }
}

uint64_t PregnancyStateInputSignal.description.getter()
{
  v0 = sub_22855C85C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v12 - v5;
  if (qword_280DEB2E0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_280DEB2E8);
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v8(v4, v6, v0);
  sub_22855E19C();
  v9 = HKSensitiveLogItem();
  swift_unknownObjectRelease();
  sub_22855DA7C();
  swift_unknownObjectRelease();
  v10 = sub_22855D1BC();
  (*(v1 + 8))(v6, v0);
  return v10;
}

id PregnancyStateInputSignal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PregnancyStateInputSignal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22848EF2C()
{
  v1 = *v0;
  v2 = *(*v0 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery);
  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));
  if (v3)
  {
    [*(v1 + OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore) stopQuery_];
  }
}

id sub_22848EFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, Class a5, uint64_t a6, uint64_t a7)
{
  v13 = objc_allocWithZone(a5);

  return sub_22848F03C(a1, a2, a3, a4, v13, a6, a7);
}

id sub_22848F03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v14 = OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery;
  sub_22848F398(0);
  v15 = swift_allocObject();
  *(v15 + 24) = 0;
  *(v15 + 16) = 0;
  *&a5[v14] = v15;
  v16 = &a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_context];
  *v16 = a1;
  *(v16 + 1) = a7;
  v17 = &a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_observer];
  *v17 = a2;
  *(v17 + 1) = a3;
  *&a5[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] = a4;
  v19.receiver = a5;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

void _s14HealthPlatform25PregnancyStateInputSignalC16beginObservation4from14configurationsy0A13Orchestration23SecureCodingValueAnchorVySo18HKMCPregnancyModelCAkG0lM6ObjectAAyHCg_GSg_SayAG21IdentityConfigurationVGtF_0()
{
  if (qword_280DEE800 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEE808);
  v2 = v0;
  v3 = sub_22855CA8C();
  v4 = sub_22855D6AC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v2;
    *v6 = v2;
    v7 = v2;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%@] Beginning Observation", v5, 0xCu);
    sub_22841DC98(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v8 = *&v2[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_protectedQuery];
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock((v8 + 24));
  sub_22848F374((v8 + 16), &v11);
  os_unfair_lock_unlock((v8 + 24));
  v10 = v11;
  [*&v2[OBJC_IVAR____TtC14HealthPlatform25PregnancyStateInputSignal_healthStore] executeQuery_];
}

void sub_22848F398(uint64_t a1)
{
  if (!qword_280DE90C8)
  {
    sub_228465560(255, &qword_280DE92C8, &qword_280DE92D0, 0x277CCD5B0);
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90C8);
    }
  }
}

id static EncodedFeatureTag.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22848F4AC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 data];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_22848F510(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 name];
  v4 = sub_22855D1AC();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_setTm_0(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = (a5)(*a1, a1[1], a3, a4);
  [v7 *a6];
}

id Plugin.__allocating_init(context:package:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22855D17C();
  v7 = [v5 entityForName:v6 inManagedObjectContext:a1];

  if (v7)
  {
    v8 = [objc_allocWithZone(v3) initWithEntity:v7 insertIntoManagedObjectContext:a1];
    v9 = sub_22855D17C();

    [v8 setPackage_];

    return v8;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

void sub_22848F750()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v11 = type metadata accessor for DaemonHealthExperienceStore();
    sub_228454FB0(0, qword_280DECB68, 255, type metadata accessor for DaemonHealthExperienceStore);
    v7 = sub_22855D1BC();
    v9 = sub_2283F8938(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] registerForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v10 addObserver:v1 selector:v11 name:v12 object:?];
}

void sub_22848F95C()
{
  v1 = v0;
  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v2 = sub_22855CABC();
  __swift_project_value_buffer(v2, qword_280DEEC98);
  v3 = sub_22855CA8C();
  v4 = sub_22855D66C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    v12 = type metadata accessor for DaemonHealthExperienceStoreOracle();
    sub_228454FB0(0, &unk_280DECB48, v7, type metadata accessor for DaemonHealthExperienceStoreOracle);
    v8 = sub_22855D1BC();
    v10 = sub_2283F8938(v8, v9, &v13);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_2283ED000, v3, v4, "[%s] registerForDebuggingRequests()", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x22AABAD40](v6, -1, -1);
    MEMORY[0x22AABAD40](v5, -1, -1);
  }

  v11 = [objc_opt_self() defaultCenter];
  if (qword_280DE93C0 != -1)
  {
    swift_once();
  }

  [v11 addObserver:v1 selector:v12 name:v13 object:?];
}

uint64_t sub_22848FB60(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_22855D17C();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v7, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  sub_228476B98(0, &qword_280DECFD0, MEMORY[0x277D84F70] + 8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_22848FC2C()
{
  v1 = *(v0 + 16);
  v2 = sub_22855D17C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22855DA7C();
    swift_unknownObjectRelease();
    sub_228400400(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_228476B98(0, &qword_280DECFD0, MEMORY[0x277D84F70] + 8);
  sub_228476B98(0, &qword_280DEE7D0, MEMORY[0x277D837D0]);
  if (swift_dynamicCast())
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

char *sub_22848FD14()
{
  sub_2283F6B58(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22855C06C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = objc_allocWithZone(type metadata accessor for DaemonHealthExperienceStoreOracle());
  result = DaemonHealthExperienceStoreOracle.init(overrideStoreLocation:)(v2);
  qword_280DECB60 = result;
  return result;
}

id static DaemonHealthExperienceStoreOracle.shared.getter()
{
  if (qword_280DECB58 != -1)
  {
    swift_once();
  }

  v1 = qword_280DECB60;

  return v1;
}

char *DaemonHealthExperienceStoreOracle.init(overrideStoreLocation:)(uint64_t a1)
{
  v2 = v1;
  sub_2283F6B58(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  v10 = OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier;
  if (qword_280DED1C0 != -1)
  {
    swift_once();
  }

  v11 = qword_280DED1C8;
  v12 = &v2[v10];
  *(v12 + 3) = 0;
  *(v12 + 4) = 0;
  *v12 = 0xD00000000000002FLL;
  *(v12 + 1) = 0x800000022856EE70;
  *(v12 + 2) = v11;
  v12[40] = 0;
  sub_228491064(a1, v9, sub_2283F6B58);
  type metadata accessor for DaemonHealthExperienceStore();
  swift_allocObject();
  sub_228491064(v9, v7, sub_2283F6B58);
  v13 = v11;
  v14 = DiskHealthExperienceStore.init(overrideStoreLocation:observeExternalChanges:)(v7, 1);

  sub_22848F750();

  sub_228491134(v9, sub_2283F6B58);
  v15 = sub_228490BB8(v14, v2);
  sub_22848F95C();

  sub_228491134(a1, sub_2283F6B58);
  return v15;
}

uint64_t sub_228490024(uint64_t a1)
{
  sub_2283F9B10(a1, v2);
  sub_2283F9B94(0, qword_280DECAA8, &protocol descriptor for HealthExperienceStore);
  type metadata accessor for DiskHealthExperienceStore();
  result = swift_dynamicCast();
  if (result)
  {
    sub_2284900A4();
  }

  return result;
}

uint64_t sub_2284900A4()
{
  ObjectType = swift_getObjectType();
  v2 = sub_228490E5C();
  v4 = v3;
  v5 = (v0 + OBJC_IVAR____TtC14HealthPlatform33DaemonHealthExperienceStoreOracle__lastPolledHealthKitDatabaseIdentifier);
  swift_beginAccess();
  *&v30[9] = *(v5 + 25);
  v6 = v5[1];
  v29 = *v5;
  *v30 = v6;
  if (v30[24])
  {
    v7 = objc_opt_self();
    sub_228491064(&v29, v27, sub_2284910CC);
    if (([v7 isAppleInternalInstall] & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_228491064(&v29, v27, sub_2284910CC);
  }

  v8 = sub_22848FC2C();
  if (v9 == 1)
  {
LABEL_6:
    v11 = *&v30[8];
    v10 = *&v30[16];

    goto LABEL_8;
  }

  v11 = v8;
  v10 = v9;
LABEL_8:
  sub_228491134(&v29, sub_2284910CC);
  if (!v10)
  {
    if (qword_280DEEBC8 != -1)
    {
      swift_once();
    }

    v13 = sub_22855CABC();
    __swift_project_value_buffer(v13, qword_280DEEBD0);
    v14 = sub_22855CA8C();
    v15 = sub_22855D6AC();
    if (!os_log_type_enabled(v14, v15))
    {
      goto LABEL_23;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315138;
    v27[0] = ObjectType;
    swift_getMetatypeMetadata();
    v18 = sub_22855D1BC();
    v20 = sub_2283F8938(v18, v19, v28);

    *(v16 + 4) = v20;
    v21 = "[%s]: First time fetching DB identifier, wiping cache!";
    goto LABEL_22;
  }

  if (v2 == v11 && v10 == v4)
  {
  }

  v22 = sub_22855E15C();

  if (v22)
  {
  }

  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v23 = sub_22855CABC();
  __swift_project_value_buffer(v23, qword_280DEEBD0);
  v14 = sub_22855CA8C();
  v15 = sub_22855D6AC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315138;
    v27[0] = ObjectType;
    swift_getMetatypeMetadata();
    v24 = sub_22855D1BC();
    v26 = sub_2283F8938(v24, v25, v28);

    *(v16 + 4) = v26;
    v21 = "[%s]: DB identifier has changed, wiping cache!";
LABEL_22:
    _os_log_impl(&dword_2283ED000, v14, v15, v21, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x22AABAD40](v17, -1, -1);
    MEMORY[0x22AABAD40](v16, -1, -1);
  }

LABEL_23:

  sub_2284E9720();
  swift_beginAccess();
  sub_22846FB78(v2, v4);
  return swift_endAccess();
}

uint64_t sub_2284907FC()
{
}

id DaemonHealthExperienceStoreOracle.__deallocating_deinit()
{
  sub_2284549F0();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DaemonHealthExperienceStoreOracle();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DaemonHealthExperienceStoreOracle.debuggingInfoRequested(note:)()
{
  ObjectType = swift_getObjectType();
  if (qword_280DEEBC8 != -1)
  {
    swift_once();
  }

  v1 = sub_22855CABC();
  __swift_project_value_buffer(v1, qword_280DEEBD0);
  oslog = sub_22855CA8C();
  v2 = sub_22855D6AC();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9[0] = v4;
    v9[1] = ObjectType;
    *v3 = 136315138;
    swift_getMetatypeMetadata();
    v5 = sub_22855D1BC();
    v7 = sub_2283F8938(v5, v6, v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_2283ED000, oslog, v2, "[%s]: debuggingInfoRequested()", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x22AABAD40](v4, -1, -1);
    MEMORY[0x22AABAD40](v3, -1, -1);
  }

  else
  {
  }
}

char *sub_228490BB8(uint64_t a1, char *a2)
{
  ObjectType = swift_getObjectType();
  v22[3] = type metadata accessor for DaemonHealthExperienceStore();
  v22[4] = &protocol witness table for DiskHealthExperienceStore;
  v22[0] = a1;
  v5 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_notificationCenter;
  *&a2[v5] = [objc_allocWithZone(MEMORY[0x277CCAB98]) init];
  v6 = OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState;
  sub_228491194(0);
  v7 = swift_allocObject();
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0;
  *&a2[v6] = v7;
  sub_2283F9B10(v22, &a2[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_healthExperienceStore]);
  v21.receiver = a2;
  v21.super_class = type metadata accessor for HealthExperienceStoreOracle();
  v8 = objc_msgSendSuper2(&v21, sel_init);
  v9 = *&v8[OBJC_IVAR____TtC14HealthPlatform27HealthExperienceStoreOracle_protectedState];
  v10 = v8;
  os_unfair_lock_lock(v9 + 16);
  sub_2284911F4(&v9[4], v20);
  os_unfair_lock_unlock(v9 + 16);
  if (LOBYTE(v20[0]) == 1)
  {
    sub_2284FDA94();
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v11 = sub_22855CABC();
  __swift_project_value_buffer(v11, qword_280DEEC98);
  v12 = sub_22855CA8C();
  v13 = sub_22855D66C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v14 = 136315138;
    v16 = sub_2284FF8D0(ObjectType);
    v18 = sub_2283F8938(v16, v17, v20);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_2283ED000, v12, v13, "[%s] init()", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AABAD40](v15, -1, -1);
    MEMORY[0x22AABAD40](v14, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0(v22);
  return v10;
}

id sub_228490E5C()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22855C1DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCD4D8]) init];
  v5 = [objc_allocWithZone(MEMORY[0x277CCD2C0]) initWithHealthStore_];

  v12[0] = 0;
  v6 = [v5 healthDatabaseIdentifierWithError_];
  v7 = v12[0];
  if (v6)
  {
    v8 = v6;
    sub_22855C1BC();
    v9 = v7;

    v7 = sub_22855C17C();
    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v10 = v12[0];
    sub_22855BF3C();

    swift_willThrow();
  }

  return v7;
}

unint64_t sub_228491018()
{
  result = qword_280DED0B0;
  if (!qword_280DED0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED0B0);
  }

  return result;
}

uint64_t sub_228491064(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_2284910CC(uint64_t a1)
{
  if (!qword_280DEC178)
  {
    sub_228476B98(255, &qword_280DEE7D0, MEMORY[0x277D837D0]);
    v5 = type metadata accessor for UserDefault(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_280DEC178);
    }
  }
}

uint64_t sub_228491134(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_228491194(uint64_t a1)
{
  if (!qword_280DE91C8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE91C8);
    }
  }
}

unint64_t sub_22849123C()
{
  type metadata accessor for HealthPluginHostNotificationBuffer();
  v0 = swift_allocObject();
  result = sub_22847CE50(MEMORY[0x277D84F90]);
  *(v0 + 16) = 0;
  *(v0 + 24) = result;
  off_280DEC798 = v0;
  return result;
}

uint64_t static HealthPluginHostNotificationBuffer.shared.getter()
{
  if (qword_280DEC790 != -1)
  {
    swift_once();
  }
}

void sub_2284912E4()
{
  v1 = sub_22855BE5C();
  v2 = sub_22855D1AC();
  v4 = v3;

  v5 = sub_22855BE7C();
  if (!v5)
  {
    v5 = sub_22847CF80(MEMORY[0x277D84F90]);
  }

  v6 = v5;
  os_unfair_lock_lock((v0 + 16));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v0 + 24);
  *(v0 + 24) = 0x8000000000000000;
  sub_22845B318(v6, v2, v4, isUniquelyReferenced_nonNull_native);

  *(v0 + 24) = v8;

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t sub_2284913AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  os_unfair_lock_lock((v2 + 16));
  v6 = sub_22855D1AC();
  v8 = *(v2 + 24);
  if (!*(v8 + 16))
  {

    goto LABEL_6;
  }

  v9 = sub_2283F6D18(v6, v7);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_6:
    os_unfair_lock_unlock(v3 + 4);
    goto LABEL_7;
  }

  v12 = *(*(v8 + 56) + 8 * v9);

  os_unfair_lock_unlock(v3 + 4);
  if (v12)
  {
    v13 = a1;
    sub_22855BE4C();
    v14 = 0;
    goto LABEL_8;
  }

LABEL_7:
  v14 = 1;
LABEL_8:
  v15 = sub_22855BE9C();
  v16 = *(*(v15 - 8) + 56);

  return v16(a2, v14, 1, v15);
}

void sub_2284914CC()
{
  os_unfair_lock_lock((v0 + 16));

  *(v0 + 24) = MEMORY[0x277D84F98];

  os_unfair_lock_unlock((v0 + 16));
}

uint64_t HealthPluginHostNotificationBuffer.__deallocating_deinit()
{
  sub_228491568(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_228491568(uint64_t a1)
{
  sub_2284915C4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2284915C4(uint64_t a1)
{
  if (!qword_280DE96D8)
  {
    sub_22844C220();
    v1 = sub_22855D12C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE96D8);
    }
  }
}

void sub_2284916D4(uint64_t a1)
{
  if (!qword_27D83FA38)
  {
    sub_2284915C4(255);
    v1 = sub_22855C34C();
    if (!v2)
    {
      atomic_store(v1, &qword_27D83FA38);
    }
  }
}

void *sub_228491868(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  sub_22855C32C();
  sub_228439BBC();
  sub_22840A70C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560570;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22840A7C8();
  *(v7 + 64) = v9;
  *(v7 + 32) = 0x696669746E656469;
  *(v7 + 40) = 0xEA00000000007265;
  v10 = sub_22855C32C();
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 72) = v10;
  *(v7 + 80) = v11;
  v12 = sub_22855D62C();
  v13 = sub_22843A720(a2, v12, a3);
  if (v3)
  {
  }

  else
  {
    v4 = v13;
    if (!v13)
    {
      v14 = objc_opt_self();
      v15 = sub_22855D17C();
      v16 = [v14 insertNewObjectForEntityForName:v15 inManagedObjectContext:a2];

      type metadata accessor for MeasureIdentifierManagedObject();
      v4 = swift_dynamicCastClassUnconditional();
    }

    v17 = sub_22855D17C();

    [v4 setIdentifier_];
  }

  return v4;
}

uint64_t static DiskHealthExperienceStore.storeVersion.getter()
{
  if (qword_280DEE228 != -1)
  {
    swift_once();
  }

  v0 = xmmword_280DEE230;

  return v0;
}

id DataType.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id DataType.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DataType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id DataType.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void NSManagedObjectContext.markObjectsForDeletion<A>(entity:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = v5;
    [v5 setPredicate_];
    [v6 setIncludesPropertyValues_];
    v7 = sub_22855D97C();
    MEMORY[0x28223BE20](v7);
    sub_22855D47C();
    swift_getWitnessTable();
    sub_22855D32C();
  }

  else
  {

    sub_22855DEDC();
    __break(1u);
  }
}

id NSManagedObjectContext.makeAllKeywordsFetchedResultsController()()
{
  v1 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v2 = sub_22855D17C();
  v3 = [v1 initWithKey:v2 ascending:1];

  v4 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v5 = sub_22855D17C();
  v6 = [v4 initWithEntityName_];

  sub_2284661F0();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560690;
  *(v7 + 32) = v3;
  v8 = v3;
  [v6 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v9 = sub_22855D39C();

  [v6 setSortDescriptors_];

  v10 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v6 managedObjectContext:v0 sectionNameKeyPath:0 cacheName:0];
  return v10;
}

id NSManagedObjectContext.makeKeywordsWithFeedItemsController()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v3 = sub_22855D17C();
  v4 = [v2 initWithKey:v3 ascending:1];

  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v6 = sub_22855D17C();
  v7 = [v5 initWithEntityName_];

  sub_2284661F0();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_228560690;
  *(v8 + 32) = v4;
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  v9 = v4;
  v10 = sub_22855D62C();
  [v7 setPredicate_];
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v11 = sub_22855D39C();

  [v7 setSortDescriptors_];

  v12 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v7 managedObjectContext:v1 sectionNameKeyPath:0 cacheName:0];
  return v12;
}

id NSManagedObjectContext.makeFeedItemFetchedResultsController(forFeedItemIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = _s14HealthPlatform8FeedItemC12fetchRequestSo07NSFetchF0CyACGyFZ_0();
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_228560570;
  v8 = MEMORY[0x277D837D0];
  *(v7 + 56) = MEMORY[0x277D837D0];
  v9 = sub_22840A7C8();
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x800000022856DA90;
  *(v7 + 96) = v8;
  *(v7 + 104) = v9;
  *(v7 + 64) = v9;
  *(v7 + 72) = a1;
  *(v7 + 80) = a2;

  v10 = sub_22855D62C();
  [v6 setPredicate_];

  sub_2284661F0();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_228560690;
  v12 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v13 = sub_22855D17C();
  v14 = [v12 initWithKey:v13 ascending:1];

  *(v11 + 32) = v14;
  sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
  v15 = sub_22855D39C();

  [v6 setSortDescriptors_];

  v16 = [objc_allocWithZone(MEMORY[0x277CBE430]) initWithFetchRequest:v6 managedObjectContext:v3 sectionNameKeyPath:0 cacheName:0];
  return v16;
}

uint64_t NSManagedObjectContext.deleteEntity<A>(entity:predicates:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    [v8 setIncludesPropertyValues_];
    if (a2)
    {
      sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
      v10 = sub_22855D39C();
      v11 = [objc_opt_self() orPredicateWithSubpredicates_];

      [v9 setPredicate_];
    }

    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v12 = sub_22855CABC();
    __swift_project_value_buffer(v12, qword_280DEEC98);
    v13 = sub_22855CA8C();
    v14 = sub_22855D66C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136315138;
      v17 = sub_22855E34C();
      v19 = sub_2283F8938(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_2283ED000, v13, v14, "Attempting to delete %s from database", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x22AABAD40](v16, -1, -1);
      MEMORY[0x22AABAD40](v15, -1, -1);
    }

    v26 = 0;
    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = &v26;
    v20[4] = v4;
    v20[5] = v9;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_228492F88;
    *(v21 + 24) = v20;
    aBlock[4] = sub_228466000;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228417B68;
    aBlock[3] = &block_descriptor_9;
    v22 = _Block_copy(aBlock);
    v23 = v4;
    v7 = v7;

    [v23 performBlockAndWait_];

    _Block_release(v22);
    LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

    if ((v23 & 1) == 0)
    {
    }

    __break(1u);
  }

  result = sub_22855DEDC();
  __break(1u);
  return result;
}

id sub_228492808(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = sub_22855D97C();
  *a1 = v6;

  if (sub_22855D44C())
  {
    v7 = 4;
    do
    {
      v8 = sub_22855D41C();
      sub_22855D3DC();
      if (v8)
      {
        v9 = *(v6 + 8 * v7);
      }

      else
      {
        v9 = sub_22855DC9C();
      }

      v10 = v9;
      v11 = v7 - 3;
      if (__OFADD__(v7 - 4, 1))
      {
        __break(1u);
      }

      [a2 deleteObject_];

      ++v7;
    }

    while (v11 != sub_22855D44C());
  }

  v16[0] = 0;
  v12 = [a2 save_];
  v13 = v16[0];
  if (v12)
  {

    return v13;
  }

  else
  {
    v15 = v16[0];
    sub_22855BF3C();

    swift_willThrow();
    v16[0] = 0;
    v16[1] = 0xE000000000000000;
    sub_22855DC6C();
    MEMORY[0x22AAB92A0](0xD000000000000068, 0x8000000228570740);
    sub_2283F9B94(0, &qword_280DECFE0, MEMORY[0x277D84948]);
    sub_22855DDDC();
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

uint64_t NSManagedObjectContext.fetchEntity<A>(entity:predicates:sortDescriptors:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  isEscapingClosureAtFileLocation = [swift_getObjCClassFromMetadata() fetchRequest];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10;
  if (a2)
  {
    sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
    v12 = sub_22855D39C();
    v13 = [objc_opt_self() orPredicateWithSubpredicates_];

    [v11 setPredicate_];
  }

  if (a3)
  {
    sub_2283EF310(0, &unk_280DED180, 0x277CCAC98);
    a3 = sub_22855D39C();
  }

  [v11 setSortDescriptors_];

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v14 = sub_22855CABC();
  __swift_project_value_buffer(v14, qword_280DEEC98);
  v15 = sub_22855CA8C();
  v16 = sub_22855D66C();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    aBlock[0] = v18;
    *v17 = 136315138;
    v19 = sub_22855E34C();
    v21 = sub_2283F8938(v19, v20, aBlock);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2283ED000, v15, v16, "Attempting to fetch %s from database", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AABAD40](v18, -1, -1);
    MEMORY[0x22AABAD40](v17, -1, -1);
  }

  v30 = 0;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = &v30;
  v22[4] = v5;
  v22[5] = v11;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_228492F94;
  *(v23 + 24) = v22;
  aBlock[4] = sub_228492FA4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_228417B68;
  aBlock[3] = &block_descriptor_13;
  v24 = _Block_copy(aBlock);
  v25 = v5;
  v26 = isEscapingClosureAtFileLocation;

  [v25 performBlockAndWait_];
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_16:

    result = sub_22855DEDC();
    __break(1u);
    return result;
  }

  v27 = v30;
  if (v30)
  {
  }

  else
  {
    v27 = sub_22855D3FC();
  }

  return v27;
}

uint64_t sub_228492E74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = sub_22855D97C();
}

id sub_228492FAC(id result, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = result;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; result = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x22AAB9D20](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        result = *(a4 + 8 * j + 32);
      }

      v8 = result;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = result;
      a2(&v13, &v12);

      if (v4)
      {
      }

      if (v9 == i)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = result;
    i = sub_22855DB4C();
  }

  return result;
}

uint64_t sub_2284930D4(uint64_t result, void (*a2)(uint64_t *, uint64_t *), uint64_t a3, uint64_t a4)
{
  v17 = result;
  v5 = v4;
  v6 = *(a4 + 16);
  if (v6)
  {
    for (i = (a4 + 56); ; i += 4)
    {
      v10 = *(i - 1);
      v9 = *i;
      v11 = *(i - 2);
      v14[0] = *(i - 3);
      v14[1] = v11;
      v15 = v10;
      v16 = v9;

      sub_22842B3E0(v10, v9);
      a2(&v17, v14);
      v12 = v15;
      v13 = v16;

      sub_22842B38C(v12, v13);
      if (v5)
      {
        break;
      }

      if (!--v6)
      {
        return v17;
      }
    }
  }

  return result;
}

uint64_t sub_22849319C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ProtectedNotificationContentState(0);
  v25 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_22849AEE0(a3 + v15 + v16 * v13, v12, type metadata accessor for ProtectedNotificationContentState);
      v17 = a1(v12);
      if (v3)
      {
        sub_22849C108(v12, type metadata accessor for ProtectedNotificationContentState);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_22849B298(v12, v24, type metadata accessor for ProtectedNotificationContentState);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2284275A0(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_2284275A0((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_22849B298(v24, v14 + v15 + v20 * v16, type metadata accessor for ProtectedNotificationContentState);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_22849C108(v12, type metadata accessor for ProtectedNotificationContentState);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_228493428(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AAB9D20](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_22855DD1C();
        sub_22855DD5C();
        v4 = v15;
        sub_22855DD6C();
        sub_22855DD2C();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

id sub_2284935D4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCD128]) initWithHealthStore_];
    v4 = *(v0 + 32);
    *(v0 + 32) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t sub_22849367C(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:)(void *a1, uint64_t a2, uint64_t a3)
{
  v15 = a2;
  v16 = a3;
  v14 = a1;
  v13 = sub_22855D81C();
  v4 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855D7BC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22855CFEC();
  MEMORY[0x28223BE20](v8 - 8);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  v17 = v3;
  swift_getMetatypeMetadata();
  sub_22855D1BC();
  sub_22855CFDC();
  v17 = MEMORY[0x277D84F90];
  sub_2283FA100(&unk_280DED140, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_2283FA404(0, &qword_280DED250, MEMORY[0x277D85230], MEMORY[0x277D83940]);
  sub_22846B7E8();
  sub_22855DA9C();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v13);
  v9 = sub_22855D84C();
  type metadata accessor for HealthAppNotificationContentStateManager();
  swift_allocObject();
  v10 = sub_22849A708(v14, v15, v16, v9);

  return v10;
}

uint64_t HealthAppNotificationContentStateManager.__allocating_init(healthStore:domain:queue:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_allocObject();
  v8 = sub_22849A708(a1, a2, a3, a4);

  return v8;
}

uint64_t HealthAppNotificationContentStateManager.init(healthStore:domain:queue:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = sub_22849A708(a1, a2, a3, a4);

  return v5;
}

uint64_t sub_228493A88(uint64_t a1, uint64_t a2)
{
  v32 = MEMORY[0x277D85248];
  v37 = MEMORY[0x277D83D88];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  sub_22849A848(0);
  v7 = v6;
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849A9C4(0);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849AA94(0);
  v15 = *(v14 - 8);
  v35 = v14;
  v36 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22855D95C();
  v38 = sub_22855D95C();
  v39 = v18;
  v30 = v18;
  v31 = v38;
  sub_22849A8EC(0);
  sub_2283FA100(&qword_280DE98C0, 255, sub_22849A8EC, MEMORY[0x277CBCD90]);

  sub_22855CB0C();
  v39 = *(v2 + 48);
  v19 = v39;
  v20 = sub_22855D7EC();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&unk_280DE9D30, 255, sub_22849A848, MEMORY[0x277CBCAF0]);
  sub_2283F22E0();
  v21 = v19;
  sub_22855CF4C();
  sub_22849C400(v5, &qword_280DED138, v32);

  (*(v29 + 8))(v9, v7);
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22849AB74;
  *(v23 + 24) = v22;
  sub_2283FA404(0, qword_280DEB558, type metadata accessor for NotificationContentState, v37);
  sub_2283FA100(&qword_280DE9970, 255, sub_22849A9C4, MEMORY[0x277CBCD60]);
  v24 = v33;
  sub_22855CF0C();

  (*(v34 + 8))(v13, v24);
  sub_2283FA100(&qword_280DE9AA8, 255, sub_22849AA94, MEMORY[0x277CBCCC0]);
  v25 = v35;
  v26 = sub_22855CE6C();

  (*(v36 + 8))(v17, v25);
  return v26;
}

uint64_t sub_228493FF0@<X0>(void (**a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, void *a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2284940C4(a1, a2, a4);
  }

  else
  {
    v8 = type metadata accessor for NotificationContentState(0);
    return (*(*(v8 - 8) + 56))(a4, 1, 1, v8);
  }
}

uint64_t sub_2284940C4@<X0>(void (**a1)(char *, uint64_t)@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = type metadata accessor for UnprotectedNotificationContentState(0);
  v107 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v99 = &v89 - v11;
  MEMORY[0x28223BE20](v10);
  v119 = &v89 - v12;
  v13 = sub_22855C1DC();
  v100 = *(v13 - 8);
  v14 = MEMORY[0x28223BE20](v13);
  v116 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v115 = &v89 - v16;
  v17 = type metadata accessor for ProtectedNotificationContentState(0);
  v117 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = sub_228494C8C(a1);
  if (v23)
  {
    v114 = a1;
    v104 = v9;
    v102 = v6;
    v94 = a2;
    v90 = a3;
    v24 = *(v118 + 56);
    v25 = v23;
    v26 = [v23 value];
    v27 = sub_22855C09C();
    v29 = v28;

    sub_2283FA100(&qword_27D83FA40, 255, type metadata accessor for ProtectedNotificationContentState, &protocol conformance descriptor for ProtectedNotificationContentState);
    v97 = v24;
    v30 = v93;
    sub_22855BD7C();
    if (v30)
    {

      return sub_22842B38C(v27, v29);
    }

    v33 = v22;
    v89 = v25;
    v34 = sub_22842B38C(v27, v29);
    MEMORY[0x28223BE20](v34);
    *(&v89 - 2) = &v120;
    *(&v89 - 1) = v97;
    v35 = MEMORY[0x277D84F90];
    v36 = sub_228492FAC(MEMORY[0x277D84F90], sub_22849ABC0, (&v89 - 4), v114);
    MEMORY[0x28223BE20](v36);
    *(&v89 - 2) = v22;
    v38 = sub_22849319C(sub_22849AC08, (&v89 - 4), v37);
    v93 = 0;
    v39 = v38[2];
    v103 = v22;
    v109 = v17;
    if (v39)
    {
      v120 = v35;
      sub_228427550(0, v39, 0);
      v35 = v120;
      v40 = (*(v117 + 80) + 32) & ~*(v117 + 80);
      v114 = v38;
      v41 = v38 + v40;
      v42 = *(v117 + 72);
      v43 = (v100 + 16);
      v117 = v100 + 32;
      v118 = v42;
      v44 = v115;
      do
      {
        sub_22849AEE0(v41, v20, type metadata accessor for ProtectedNotificationContentState);
        (*v43)(v44, &v20[*(v109 + 20)], v13);
        sub_22849C108(v20, type metadata accessor for ProtectedNotificationContentState);
        v120 = v35;
        v46 = *(v35 + 16);
        v45 = *(v35 + 24);
        if (v46 >= v45 >> 1)
        {
          sub_228427550((v45 > 1), v46 + 1, 1);
          v35 = v120;
        }

        *(v35 + 16) = v46 + 1;
        (*(v100 + 32))(v35 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v46, v44, v13);
        v41 += v118;
        --v39;
      }

      while (v39);

      v33 = v103;
      v17 = v109;
    }

    else
    {
    }

    v118 = sub_228429D08(v35);

    v47 = v94;
    v48 = v104;
    if (v94 >> 62)
    {
      goto LABEL_52;
    }

    v49 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = 0; v49; i = 0)
    {
      v113 = 0;
      v51 = 0;
      v96 = v47 & 0xC000000000000001;
      v92 = v47 & 0xFFFFFFFFFFFFFF8;
      v91 = v47 + 32;
      v117 = v118 + 56;
      v114 = (v100 + 8);
      v115 = (v100 + 16);
      v95 = v49;
      while (1)
      {
        if (v96)
        {
          v52 = v51;
          v53 = MEMORY[0x22AAB9D20](v51, v94);
        }

        else
        {
          if (v51 >= *(v92 + 16))
          {
            goto LABEL_51;
          }

          v52 = v51;
          v53 = *(v91 + 8 * v51);
        }

        v110 = v53;
        v54 = __OFADD__(v52, 1);
        v47 = v52 + 1;
        if (v54)
        {
          goto LABEL_50;
        }

        v98 = v47;
        v55 = sub_228494E04(v110, v97);
        v108 = v55[2];
        if (v108)
        {
          break;
        }

        v101 = MEMORY[0x277D84F90];
LABEL_39:

        v47 = *(v101 + 16);
        if (v47)
        {
          v72 = v101 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
          v112 = *(v107 + 72);
          v73 = v102;
          while (1)
          {
            sub_22849AEE0(v72, v48, type metadata accessor for UnprotectedNotificationContentState);
            v74 = [v110 deviceContext];
            v75 = [v74 representsLocalDevice];

            if (v75)
            {
              v76 = *(v48 + *(v73 + 24));
              if (i)
              {
                goto LABEL_47;
              }
            }

            else
            {
              v76 = 0;
              if (i)
              {
LABEL_47:
                i = 1;
                goto LABEL_42;
              }
            }

            i = *(v48 + *(v73 + 28));
LABEL_42:
            v113 |= v76;
            sub_22849C108(v48, type metadata accessor for UnprotectedNotificationContentState);
            v72 += v112;
            if (!--v47)
            {

              v17 = v109;
              goto LABEL_16;
            }
          }
        }

LABEL_16:

        v51 = v98;
        if (v98 == v95)
        {
          goto LABEL_54;
        }
      }

      v56 = 0;
      v101 = MEMORY[0x277D84F90];
      v105 = i;
      v106 = v55;
      while (v56 < v55[2])
      {
        v57 = (*(v107 + 80) + 32) & ~*(v107 + 80);
        v111 = *(v107 + 72);
        v112 = v57;
        sub_22849AEE0(v55 + v57 + v111 * v56, v119, type metadata accessor for UnprotectedNotificationContentState);
        if (*(v118 + 16) && (v47 = *(v102 + 20), v58 = v118, sub_2283FA100(&qword_280DEE378, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v59 = sub_22855D13C(), v60 = -1 << *(v58 + 32), v61 = v59 & ~v60, ((*(v117 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0))
        {
          v62 = ~v60;
          v63 = *(v100 + 72);
          v64 = *(v100 + 16);
          while (1)
          {
            v65 = v116;
            v64(v116, *(v118 + 48) + v63 * v61, v13);
            sub_2283FA100(&qword_280DECD78, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v66 = sub_22855D16C();
            (*v114)(v65, v13);
            if (v66)
            {
              break;
            }

            v61 = (v61 + 1) & v62;
            if (((*(v117 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
            {
              goto LABEL_24;
            }
          }

          sub_22849B298(v119, v99, type metadata accessor for UnprotectedNotificationContentState);
          v67 = v101;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v67;
          v120 = v67;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_228427500(0, *(v67 + 16) + 1, 1);
            v69 = v120;
          }

          v33 = v103;
          v48 = v104;
          v17 = v109;
          i = v105;
          v70 = v69;
          v47 = *(v69 + 16);
          v71 = *(v69 + 24);
          if (v47 >= v71 >> 1)
          {
            sub_228427500((v71 > 1), v47 + 1, 1);
            v70 = v120;
          }

          *(v70 + 16) = v47 + 1;
          v101 = v70;
          sub_22849B298(v99, v70 + v112 + v47 * v111, type metadata accessor for UnprotectedNotificationContentState);
        }

        else
        {
LABEL_24:
          sub_22849C108(v119, type metadata accessor for UnprotectedNotificationContentState);
          v33 = v103;
          v48 = v104;
          v17 = v109;
          i = v105;
        }

        ++v56;
        v55 = v106;
        if (v56 == v108)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      v49 = sub_22855DB4C();
    }

    v113 = 0;
LABEL_54:

    v77 = i;
    v78 = v33;
    v79 = *v33;
    v80 = *(v78 + 8);
    v81 = v17;
    v82 = *(v17 + 20);
    v83 = type metadata accessor for NotificationContentState(0);
    v84 = v90;
    (*(v100 + 16))(v90 + v83[5], v78 + v82, v13);
    v85 = (v78 + *(v81 + 24));
    v86 = *v85;
    v87 = v85[1];
    *v84 = v79;
    v84[1] = v80;
    v88 = (v84 + v83[6]);
    *v88 = v86;
    v88[1] = v87;
    *(v84 + v83[7]) = v113 & 1;
    *(v84 + v83[8]) = v77 & 1;
    (*(*(v83 - 1) + 56))(v84, 0, 1, v83);

    return sub_22849C108(v78, type metadata accessor for ProtectedNotificationContentState);
  }

  else
  {
    v32 = type metadata accessor for NotificationContentState(0);
    return (*(*(v32 - 8) + 56))(a3, 1, 1, v32);
  }
}

char *sub_228494C8C(unint64_t a1)
{
  v11 = 0;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v3 = 0;
    v4 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = sub_22852B20C(v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(a1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = v5;
      sub_228528174(&v11, &v10, &v9);

      v4 = v9;
      v11 = v9;
      ++v3;
      if (v7 == i)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  return 0;
}

uint64_t sub_228494D94(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for ProtectedNotificationContentState(0) + 24);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_22855E15C() & 1;
  }
}

void *sub_228494E04(void *a1, uint64_t a2)
{
  sub_2283FA404(0, &qword_27D83FB10, type metadata accessor for UnprotectedNotificationContentState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v29 = type metadata accessor for UnprotectedNotificationContentState(0);
  v25 = *(v29 - 8);
  v7 = MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v23 - v9;
  v10 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v11 = sub_22855D3AC();

  if (v11 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v13 = 0;
    v26 = v11 & 0xFFFFFFFFFFFFFF8;
    v27 = v11 & 0xC000000000000001;
    v14 = (v25 + 48);
    v15 = MEMORY[0x277D84F90];
    v23 = a2;
    while (1)
    {
      if (v27)
      {
        v16 = MEMORY[0x22AAB9D20](v13, v11);
      }

      else
      {
        if (v13 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_228498874(v16, v6);

      if ((*v14)(v6, 1, v29) == 1)
      {
        sub_22849C400(v6, &qword_27D83FB10, type metadata accessor for UnprotectedNotificationContentState);
      }

      else
      {
        v19 = v24;
        sub_22849B298(v6, v24, type metadata accessor for UnprotectedNotificationContentState);
        sub_22849B298(v19, v28, type metadata accessor for UnprotectedNotificationContentState);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_228426920(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_228426920((v20 > 1), v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_22849B298(v28, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for UnprotectedNotificationContentState);
        a2 = v23;
      }

      ++v13;
      if (v18 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_21:

  return v15;
}

void *sub_22849519C(void *a1, uint64_t a2)
{
  sub_2283FA404(0, &qword_27D83FB28, type metadata accessor for ProtectedNotificationContentState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v29 = type metadata accessor for ProtectedNotificationContentState(0);
  v25 = *(v29 - 8);
  v7 = MEMORY[0x28223BE20](v29);
  v28 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v24 = &v23 - v9;
  v10 = [a1 storageEntries];
  sub_2283EF310(0, &qword_27D83FB18, 0x277CCD300);
  v11 = sub_22855D3AC();

  if (v11 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22855DB4C())
  {
    v13 = 0;
    v26 = v11 & 0xFFFFFFFFFFFFFF8;
    v27 = v11 & 0xC000000000000001;
    v14 = (v25 + 48);
    v15 = MEMORY[0x277D84F90];
    v23 = a2;
    while (1)
    {
      if (v27)
      {
        v16 = MEMORY[0x22AAB9D20](v13, v11);
      }

      else
      {
        if (v13 >= *(v26 + 16))
        {
          goto LABEL_18;
        }

        v16 = *(v11 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      sub_228498BC8(v16, v6);

      if ((*v14)(v6, 1, v29) == 1)
      {
        sub_22849C400(v6, &qword_27D83FB28, type metadata accessor for ProtectedNotificationContentState);
      }

      else
      {
        v19 = v24;
        sub_22849B298(v6, v24, type metadata accessor for ProtectedNotificationContentState);
        sub_22849B298(v19, v28, type metadata accessor for ProtectedNotificationContentState);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_228426954(0, v15[2] + 1, 1, v15);
        }

        v21 = v15[2];
        v20 = v15[3];
        if (v21 >= v20 >> 1)
        {
          v15 = sub_228426954((v20 > 1), v21 + 1, 1, v15);
        }

        v15[2] = v21 + 1;
        sub_22849B298(v28, v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, type metadata accessor for ProtectedNotificationContentState);
        a2 = v23;
      }

      ++v13;
      if (v18 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_21:

  return v15;
}

uint64_t sub_228495534(char *a1)
{
  v2 = type metadata accessor for NotificationContentState(0);
  v3 = v2 - 8;
  v70 = *(v2 - 8);
  v69 = *(v70 + 64);
  MEMORY[0x28223BE20](v2);
  v65 = MEMORY[0x277D85248];
  v66 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v61 = &v53 - v6;
  sub_22849AC28(0);
  v8 = *(v7 - 8);
  v62 = v7;
  v63 = v8;
  MEMORY[0x28223BE20](v7);
  v57 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ACF4(0);
  v11 = *(v10 - 8);
  v67 = v10;
  v68 = v11;
  MEMORY[0x28223BE20](v10);
  v60 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ADC4(0);
  v14 = *(v13 - 8);
  v71 = v13;
  v72 = v14;
  MEMORY[0x28223BE20](v13);
  v64 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for UnprotectedNotificationContentState(0);
  v17 = (v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ProtectedNotificationContentState(0);
  v21 = v20 - 8;
  MEMORY[0x28223BE20](v20);
  v23 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v24 = *(a1 + 1);
  v54 = v3;
  v26 = *(v3 + 28);
  v59 = *(v21 + 28);
  v55 = sub_22855C1DC();
  v58 = *(*(v55 - 8) + 16);
  v58(&v23[v59], &a1[v26], v55);
  v27 = &a1[*(v3 + 32)];
  v28 = *v27;
  v29 = *(v27 + 1);
  *v23 = v25;
  *(v23 + 1) = v24;
  v30 = &v23[*(v21 + 32)];
  *v30 = v28;
  *(v30 + 1) = v29;
  swift_bridgeObjectRetain_n();

  v31 = v73;
  v32 = sub_228498084(v23);
  sub_22849C108(v23, type metadata accessor for ProtectedNotificationContentState);
  v58(&v19[v17[7]], &a1[v26], v55);
  v33 = *(v54 + 36);
  v34 = *(v54 + 40);
  v56 = a1;
  LOBYTE(v33) = a1[v33];
  LOBYTE(v34) = a1[v34];
  *v19 = v25;
  *(v19 + 1) = v24;
  v19[v17[8]] = v33;
  v19[v17[9]] = v34;
  v35 = v31;
  v36 = sub_228497BCC(v19);
  sub_22849C108(v19, type metadata accessor for UnprotectedNotificationContentState);
  v58 = v36;
  v59 = v32;
  v74 = v36;
  v75 = v32;
  v37 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v37, MEMORY[0x277CBCD90]);

  v38 = v57;
  sub_22855CB0C();
  v75 = *(v35 + 48);
  v39 = v75;
  v40 = sub_22855D7EC();
  v41 = v61;
  (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28, MEMORY[0x277CBCAF0]);
  sub_2283F22E0();
  v42 = v39;
  v43 = v60;
  v44 = v62;
  sub_22855CF4C();
  sub_22849C400(v41, &qword_280DED138, v65);

  (*(v63 + 8))(v38, v44);
  v45 = v66;
  sub_22849AEE0(v56, v66, type metadata accessor for NotificationContentState);
  v46 = (*(v70 + 80) + 24) & ~*(v70 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = v73;
  sub_22849B298(v45, v47 + v46, type metadata accessor for NotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4, MEMORY[0x277CBCD60]);
  v48 = v64;
  v49 = v67;
  sub_22855CF2C();

  (*(v68 + 8))(v43, v49);
  sub_2283FA100(&qword_27D83FA70, 255, sub_22849ADC4, MEMORY[0x277CBCCE0]);
  v50 = v71;
  v51 = sub_22855CE6C();

  (*(v72 + 8))(v48, v50);
  return v51;
}

uint64_t sub_228495D04(uint64_t a1)
{
  v30 = a1;
  v3 = type metadata accessor for ProtectedNotificationContentState(0);
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = MEMORY[0x277D85248];
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  sub_22849AF74(0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B06C(0);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v16 = sub_228498084(a1);
  v40 = *(v1 + 48);
  v17 = v40;
  v41 = v16;
  v18 = sub_22855D7EC();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  v29[1] = v20;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v19, MEMORY[0x277CBCD90]);
  sub_2283F22E0();
  v21 = v17;
  sub_22855CF4C();
  sub_22849C400(v7, &qword_280DED138, v32);

  v22 = v33;
  sub_22849AEE0(v30, v33, type metadata accessor for ProtectedNotificationContentState);
  v23 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  sub_22849B298(v22, v24 + v23, type metadata accessor for ProtectedNotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74, MEMORY[0x277CBCD60]);
  v25 = v36;
  sub_22855CF2C();

  (*(v37 + 8))(v11, v25);
  sub_2283FA100(&qword_27D83FA90, 255, sub_22849B06C, MEMORY[0x277CBCCE0]);
  v26 = v38;
  v27 = sub_22855CE6C();
  (*(v39 + 8))(v15, v26);
  return v27;
}

uint64_t sub_2284961F0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X8>)
{
  v8 = *a1;
  v9 = a1[1];

  MEMORY[0x22AAB92A0](32, 0xE100000000000000);
  v4 = type metadata accessor for ProtectedNotificationContentState(0);
  sub_22855C1DC();
  sub_2283FA100(&qword_280DECD70, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v5 = sub_22855E11C();
  MEMORY[0x22AAB92A0](v5);

  MEMORY[0x22AAB92A0](0x203A657461747320, 0xE800000000000000);
  MEMORY[0x22AAB92A0](*(a1 + *(v4 + 24)), *(a1 + *(v4 + 24) + 8));
  v6 = sub_2284972EC(v8, v9);

  *a2 = v6;
  return result;
}

uint64_t sub_228496314(uint64_t a1)
{
  v30 = a1;
  v3 = type metadata accessor for UnprotectedNotificationContentState(0);
  v35 = *(v3 - 8);
  v34 = *(v35 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v32 = MEMORY[0x277D85248];
  v33 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v29 - v6;
  sub_22849AF74(0);
  v9 = *(v8 - 8);
  v36 = v8;
  v37 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B06C(0);
  v13 = *(v12 - 8);
  v38 = v12;
  v39 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v1;
  v16 = sub_228497BCC(a1);
  v40 = *(v1 + 48);
  v17 = v40;
  v41 = v16;
  v18 = sub_22855D7EC();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  v29[1] = v20;
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v19, MEMORY[0x277CBCD90]);
  sub_2283F22E0();
  v21 = v17;
  sub_22855CF4C();
  sub_22849C400(v7, &qword_280DED138, v32);

  v22 = v33;
  sub_22849AEE0(v30, v33, type metadata accessor for UnprotectedNotificationContentState);
  v23 = (*(v35 + 80) + 24) & ~*(v35 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v31;
  sub_22849B298(v22, v24 + v23, type metadata accessor for UnprotectedNotificationContentState);

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA88, 255, sub_22849AF74, MEMORY[0x277CBCD60]);
  v25 = v36;
  sub_22855CF2C();

  (*(v37 + 8))(v11, v25);
  sub_2283FA100(&qword_27D83FA90, 255, sub_22849B06C, MEMORY[0x277CBCCE0]);
  v26 = v38;
  v27 = sub_22855CE6C();
  (*(v39 + 8))(v15, v26);
  return v27;
}

uint64_t sub_228496800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = MEMORY[0x277D85248];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v39 = &v34 - v7;
  sub_22849AC28(0);
  v42 = v8;
  v44 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ACF4(0);
  v12 = *(v11 - 8);
  v46 = v11;
  v47 = v12;
  MEMORY[0x28223BE20](v11);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849ADC4(0);
  v15 = *(v14 - 8);
  v48 = v14;
  v49 = v15;
  MEMORY[0x28223BE20](v14);
  v43 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v37 = a1;
  v51 = sub_22855D96C();
  v17 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v17, MEMORY[0x277CBCD90]);
  v18 = sub_22855CE6C();

  v35 = v3;
  v51 = sub_22855D96C();
  v19 = sub_22855CE6C();
  v40 = v19;

  v41 = v18;
  v50 = v19;
  v51 = v18;

  sub_22855CB0C();
  v51 = *(v3 + 48);
  v20 = v51;
  v21 = sub_22855D7EC();
  v22 = v39;
  (*(*(v21 - 8) + 56))(v39, 1, 1, v21);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_27D83FA58, 255, sub_22849AC28, MEMORY[0x277CBCAF0]);
  sub_2283F22E0();
  v23 = v20;
  v24 = v38;
  v25 = v42;
  sub_22855CF4C();
  sub_22849C400(v22, &qword_280DED138, v45);

  (*(v44 + 8))(v10, v25);
  v26 = swift_allocObject();
  v27 = v36;
  v28 = v37;
  v26[2] = v35;
  v26[3] = v28;
  v26[4] = v27;

  sub_22855CCBC();
  sub_2283FA100(&qword_27D83FA68, 255, sub_22849ACF4, MEMORY[0x277CBCD60]);
  v29 = v43;
  v30 = v46;
  sub_22855CF2C();

  (*(v47 + 8))(v24, v30);
  sub_2283FA100(&qword_27D83FA70, 255, sub_22849ADC4, MEMORY[0x277CBCCE0]);
  v31 = v48;
  v32 = sub_22855CE6C();

  (*(v49 + 8))(v29, v31);
  return v32;
}

uint64_t sub_228496DCC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  MEMORY[0x22AAB92A0](a1, a2);
  v4 = sub_2284972EC(0x676E69766F6D6552, 0xE900000000000020);

  *a3 = v4;
  return result;
}

uint64_t sub_228496E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[0] = a4;
  v32 = a2;
  v33 = a3;
  v34 = a1;
  v31 = MEMORY[0x277D85248];
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v30 - v6;
  sub_22849B450(0);
  v9 = *(v8 - 8);
  v35 = v8;
  v36 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849B5C0(0);
  v13 = *(v12 - 8);
  v37 = v12;
  v38 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 48);
  v17 = sub_22855D71C();
  v39 = v16;
  v40 = v17;
  v18 = sub_22855D7EC();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  sub_22849B520(0);
  sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_2283FA100(&qword_280DE97E0, 255, sub_22849B520, MEMORY[0x277CBCEB0]);
  sub_2283F22E0();
  sub_22855CF4C();
  sub_22849C400(v7, &qword_280DED138, v31);

  v19 = swift_allocObject();
  v19[2] = v32;
  v20 = v34;
  v19[3] = v33;
  v19[4] = 0xD000000000000048;
  v19[5] = 0x80000002285707B0;
  v19[6] = v20;
  v21 = v30[0];
  v22 = v30[1];
  v19[7] = v16;
  v19[8] = v22;
  v19[9] = v21;

  v23 = v16;

  v24 = v21;
  sub_22855CCBC();
  v25 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_2283FA100(&qword_280DE9990, 255, sub_22849B450, MEMORY[0x277CBCD60]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v25, MEMORY[0x277CBCD90]);
  v26 = v35;
  sub_22855CF2C();

  (*(v36 + 8))(v11, v26);
  sub_2283FA100(&qword_280DE9A18, 255, sub_22849B5C0, MEMORY[0x277CBCCE0]);
  v27 = v37;
  v28 = sub_22855CE6C();
  (*(v38 + 8))(v15, v27);
  return v28;
}

uint64_t sub_2284972EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v55[1] = *v2;
  v56 = a2;
  v4 = MEMORY[0x277D84F78];
  sub_22849BD38(0, &qword_280DE9820, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCE78]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = v55 - v8;
  sub_2283FEFCC(0, &qword_280DE8EB0, v4 + 8, MEMORY[0x277CBCF38]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v55 - v13;
  sub_2283FA404(0, &qword_280DED138, MEMORY[0x277D85248], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v15 - 8);
  v58 = v55 - v16;
  sub_22849B9B8(0, v17);
  v61 = v18;
  v59 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v57 = v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BA18(0, v20);
  v64 = *(v21 - 8);
  v65 = v21;
  MEMORY[0x28223BE20](v21);
  v60 = v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22849BACC(0, v23);
  v66 = *(v24 - 8);
  v67 = v24;
  MEMORY[0x28223BE20](v24);
  v63 = v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_22855CABC();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v3 + 72) == 1)
  {
    sub_22855CA7C();
    v30 = v56;

    v31 = sub_22855CA8C();
    v32 = sub_22855D6AC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v55[0] = swift_slowAlloc();
      v68 = v55[0];
      *v33 = 136315394;
      v34 = sub_22855E34C();
      v36 = sub_2283F8938(v34, v35, &v68);

      *(v33 + 4) = v36;
      *(v33 + 12) = 2080;
      v37 = v62;
      *(v33 + 14) = sub_2283F8938(v62, v30, &v68);
      _os_log_impl(&dword_2283ED000, v31, v32, "%s Requesting cloud sync for reason: %s", v33, 0x16u);
      v38 = v55[0];
      swift_arrayDestroy();
      MEMORY[0x22AABAD40](v38, -1, -1);
      MEMORY[0x22AABAD40](v33, -1, -1);

      (*(v27 + 8))(v29, v26);
    }

    else
    {

      (*(v27 + 8))(v29, v26);
      v37 = v62;
    }

    v41 = [objc_allocWithZone(MEMORY[0x277CCD220]) initWithPush:1 pull:0];
    v42 = [objc_allocWithZone(MEMORY[0x277CCD140]) initWithContextSyncRequest_];

    v68 = 0;
    v69 = 0xE000000000000000;
    sub_22855DC6C();

    v68 = 0xD000000000000024;
    v69 = 0x80000002285708E0;
    MEMORY[0x22AAB92A0](v37, v30);
    v43 = sub_2284935D4();
    v44 = v57;
    sub_22855D86C();

    v68 = v3[6];
    v45 = v68;
    v46 = sub_22855D7EC();
    v47 = v58;
    (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
    sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
    v48 = v45;
    swift_getOpaqueTypeConformance2();
    sub_2283F22E0();
    v50 = v60;
    v49 = v61;
    sub_22855CF4C();
    sub_22849C400(v47, &qword_280DED138, MEMORY[0x277D85248]);

    (*(v59 + 8))(v44, v49);
    sub_2283FA100(&qword_27D83FAC0, 255, sub_22849BA18, MEMORY[0x277CBCD60]);
    v51 = v63;
    v52 = v65;
    sub_22855CE8C();
    (*(v64 + 8))(v50, v52);
    sub_2283FA100(&qword_27D83FAC8, 255, sub_22849BACC, MEMORY[0x277CBCC08]);
    v53 = v67;
    v40 = sub_22855CE6C();

    (*(v66 + 8))(v51, v53);
  }

  else
  {
    v39 = MEMORY[0x277D84F78];
    sub_22855CDCC();
    sub_228418D44();
    sub_22855CD9C();
    (*(v7 + 8))(v9, v6);
    sub_22849BB70(&qword_280DE8EB8, &qword_280DE8EB0, v39 + 8);
    v40 = sub_22855CE6C();
    (*(v12 + 8))(v14, v11);
  }

  return v40;
}

uint64_t sub_228497BCC(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for UnprotectedNotificationContentState(0);
  v31 = *(v29 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_27D83FAD0, type metadata accessor for UnprotectedNotificationContentState, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_2283FEFCC(0, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  sub_22849C168(0);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 24);
  sub_22849AEE0(a1, v5, type metadata accessor for UnprotectedNotificationContentState);
  sub_22855CDCC();
  sub_22855CDAC();
  (*(v8 + 8))(v10, v7);
  sub_22849AEE0(a1, v5, type metadata accessor for UnprotectedNotificationContentState);
  v20 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_22849B298(v5, v21 + v20, type metadata accessor for UnprotectedNotificationContentState);
  v22 = v19;
  sub_22855CCBC();
  v23 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, MEMORY[0x277CC9318]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v23, MEMORY[0x277CBCD90]);
  v24 = v32;
  sub_22855CF2C();

  (*(v33 + 8))(v14, v24);
  sub_2283FA100(&qword_27D83FAF0, 255, sub_22849C168, MEMORY[0x277CBCCE0]);
  v25 = v34;
  v26 = sub_22855CE6C();
  (*(v35 + 8))(v18, v25);
  return v26;
}

uint64_t sub_228498084(uint64_t a1)
{
  v2 = v1;
  v29 = type metadata accessor for ProtectedNotificationContentState(0);
  v31 = *(v29 - 8);
  v30 = *(v31 + 64);
  MEMORY[0x28223BE20](v29);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2283FA404(0, &qword_27D83FB00, type metadata accessor for ProtectedNotificationContentState, MEMORY[0x277CBCE78]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  sub_2283FEFCC(0, &qword_27D83FAD8, MEMORY[0x277CC9318], MEMORY[0x277CBCF38]);
  v12 = *(v11 - 8);
  v32 = v11;
  v33 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  sub_22849C168(0);
  v16 = *(v15 - 8);
  v34 = v15;
  v35 = v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 16);
  sub_22849AEE0(a1, v5, type metadata accessor for ProtectedNotificationContentState);
  sub_22855CDCC();
  sub_22855CDAC();
  (*(v8 + 8))(v10, v7);
  sub_22849AEE0(a1, v5, type metadata accessor for ProtectedNotificationContentState);
  v20 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_22849B298(v5, v21 + v20, type metadata accessor for ProtectedNotificationContentState);
  v22 = v19;
  sub_22855CCBC();
  v23 = MEMORY[0x277CBCD88];
  sub_2283FEFCC(0, &qword_280DE9888, MEMORY[0x277D84F78] + 8, MEMORY[0x277CBCD88]);
  sub_22849BB70(&qword_27D83FAE8, &qword_27D83FAD8, MEMORY[0x277CC9318]);
  sub_2283FEEB0(&qword_280DE9890, &qword_280DE9888, v23, MEMORY[0x277CBCD90]);
  v24 = v32;
  sub_22855CF2C();

  (*(v33 + 8))(v14, v24);
  sub_2283FA100(&qword_27D83FAF0, 255, sub_22849C168, MEMORY[0x277CBCCE0]);
  v25 = v34;
  v26 = sub_22855CE6C();
  (*(v35 + 8))(v18, v25);
  return v26;
}

uint64_t sub_22849853C@<X0>(uint64_t (*a2)(void)@<X2>, unint64_t *a3@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  a2(0);
  sub_2283FA100(a3, 255, a4, a5);
  result = sub_22855BDAC();
  if (!v6)
  {
    *a6 = result;
    a6[1] = v12;
  }

  return result;
}