id ValidTurnFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ValidTurnFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ValidTurnFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id ValidTurnFeatureExtractor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ValidTurnFeatureExtractor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

BOOL sub_24871E328(unint64_t a1)
{
  v27 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_53:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x24C1D7600](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_48;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v10 = [v7 uufrSaid];

    ++v4;
    if (v10)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v26 = v27;
      v4 = v9;
    }
  }

  v11 = 0;
  v27 = v6;
  v25 = v6;
  while (v3 != v11)
  {
    if (v5)
    {
      v12 = MEMORY[0x24C1D7600](v11, a1);
    }

    else
    {
      if (v11 >= *(v2 + 16))
      {
        goto LABEL_50;
      }

      v12 = *(a1 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_49;
    }

    v15 = [v12 uufrShown];

    ++v11;
    if (v15)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v25 = v6;
      v11 = v14;
    }
  }

  v16 = 0;
  v27 = v6;
  while (v3 != v16)
  {
    if (v5)
    {
      v17 = MEMORY[0x24C1D7600](v16, a1);
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        goto LABEL_52;
      }

      v17 = *(a1 + 8 * v16 + 32);
    }

    v18 = v17;
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_51;
    }

    v20 = [v17 uufrPresented];

    ++v16;
    if (v20)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v6 = v27;
      v16 = v19;
    }
  }

  if (v26 >> 62)
  {
    v21 = sub_248731790();
  }

  else
  {
    v21 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21)
  {

LABEL_43:

    return 1;
  }

  if (v25 >> 62)
  {
    v22 = sub_248731790();
  }

  else
  {
    v22 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22)
  {
    goto LABEL_43;
  }

  if (v6 >> 62)
  {
    v24 = sub_248731790();
  }

  else
  {
    v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v24 != 0;
}

uint64_t sub_24871E6FC(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_57;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_248731790())
  {
    v4 = a1 & 0xC000000000000001;
    v5 = off_278F52000;
    if (i)
    {
      v6 = 0;
      v37 = MEMORY[0x277D84F90];
      do
      {
        v7 = v6;
        while (1)
        {
          if (v4)
          {
            v8 = MEMORY[0x24C1D7600](v7, a1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_54;
            }

            v8 = *(a1 + 8 * v7 + 32);
          }

          v9 = v8;
          v6 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v10 = [v8 v5[346]];
          if (v10)
          {
            v11 = v5;
            v12 = v10;
            v13 = [v10 keyboardInvocationContext];

            v5 = v11;
            if (v13)
            {
              break;
            }
          }

          ++v7;
          if (v6 == i)
          {
            goto LABEL_22;
          }
        }

        v14 = [v13 keyboardPresented];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v37 = sub_2486C4700(0, *(v37 + 2) + 1, 1, v37);
        }

        v17 = *(v37 + 2);
        v16 = *(v37 + 3);
        if (v17 >= v16 >> 1)
        {
          v37 = sub_2486C4700((v16 > 1), v17 + 1, 1, v37);
        }

        *(v37 + 2) = v17 + 1;
        v37[v17 + 32] = v14;
      }

      while (v6 != i);
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

LABEL_22:
    v18 = *(v37 + 2);
    v19 = (v37 + 32);
    do
    {
      v20 = v18-- != 0;
      v21 = v20;
      if (!v20)
      {
        break;
      }

      v22 = *v19++;
    }

    while (v22 != 1);

    if (!i)
    {
      break;
    }

    v23 = 0;
    v24 = MEMORY[0x277D84F90];
LABEL_31:
    v25 = v23;
    while (1)
    {
      if (v4)
      {
        v26 = MEMORY[0x24C1D7600](v25, a1);
      }

      else
      {
        if (v25 >= *(v2 + 16))
        {
          goto LABEL_56;
        }

        v26 = *(a1 + 8 * v25 + 32);
      }

      v27 = v26;
      v23 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = [v26 v5[346]];
      if (v28)
      {
        v29 = v28;
        v30 = [v28 invocationSource];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_2486C46C4(0, *(v24 + 2) + 1, 1, v24);
        }

        v32 = *(v24 + 2);
        v31 = *(v24 + 3);
        if (v32 >= v31 >> 1)
        {
          v24 = sub_2486C46C4((v31 > 1), v32 + 1, 1, v24);
        }

        *(v24 + 2) = v32 + 1;
        *&v24[4 * v32 + 32] = v30;
        v5 = off_278F52000;
        if (v23 != i)
        {
          goto LABEL_31;
        }

        goto LABEL_47;
      }

      ++v25;
      if (v23 == i)
      {
        goto LABEL_47;
      }
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    ;
  }

  v24 = MEMORY[0x277D84F90];
LABEL_47:
  v33 = *(v24 + 2);
  v34 = 32;
  while (v33)
  {
    v35 = *&v24[v34];
    v34 += 4;
    --v33;
    if (v35 == 11)
    {
      goto LABEL_52;
    }
  }

  v21 = 0;
LABEL_52:

  return v21;
}

BOOL sub_24871EA44(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[347];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C46C4(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C46C4((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 48);
  v21 = v18 != 0;

  return v21;
}

uint64_t sub_24871EC04(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 ueiRequestCategorization];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v6[345];
    v12 = v10;
    v13 = [v10 v11];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C46D8(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C46D8((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v13;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v16 = *(v5 + 2);
  if (v16)
  {
    v17 = (v5 + 32);
    do
    {
      v18 = v16-- != 0;
      v19 = v18;
      if (!v18)
      {
        break;
      }

      v20 = *v17++;
    }

    while (v20 != 2);
  }

  else
  {
    v19 = 1;
  }

  return v19;
}

BOOL sub_24871EDC4(unint64_t a1)
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
    v5 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_23;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  do
  {
    v6 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1D7600](v6, a1);
      }

      else
      {
        if (v6 >= *(v2 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v9 = [v7 requestContext];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 cancelled];

        if (v11)
        {
          break;
        }
      }

      ++v6;
      if (v4 == v3)
      {
        goto LABEL_24;
      }
    }

    v12 = [v11 reason];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2486C4A34(0, *(v5 + 2) + 1, 1, v5);
    }

    v15 = *(v5 + 2);
    v14 = *(v5 + 3);
    if (v15 >= v14 >> 1)
    {
      v5 = sub_2486C4A34((v14 > 1), v15 + 1, 1, v5);
    }

    *(v5 + 2) = v15 + 1;
    *&v5[4 * v15 + 32] = v12;
  }

  while (v4 != v3);
LABEL_24:
  v16 = *(v5 + 2);
  v17 = 32;
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *&v5[v17];
    v17 += 4;
  }

  while (v20 != 1);
  v21 = v18 != 0;

  return v21;
}

BOOL sub_24871EFA8(unint64_t a1, SEL *a2)
{
  v14 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v5 = sub_248731790();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1D7600](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_18;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v11 = [v8 *a2];

    ++v6;
    if (v11)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v7 = v14;
      v6 = v10;
    }
  }

  if (v7 >> 62)
  {
    v12 = sub_248731790();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v12 != 0;
}

BOOL sub_24871F134(unint64_t a1, SEL *a2)
{
  v16 = MEMORY[0x277D84F90];
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_21:
    v4 = sub_248731790();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_22:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_22;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 requestContext];
      if (v10)
      {
        break;
      }

LABEL_6:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    v12 = [v10 *a2];

    if (!v12)
    {
      goto LABEL_6;
    }

    MEMORY[0x24C1D71A0]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_248731260();
    }

    sub_2487312A0();
    v6 = v16;
  }

  while (v5 != v4);
LABEL_23:
  if (v6 >> 62)
  {
    v13 = sub_248731790();
  }

  else
  {
    v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v13 != 0;
}

BOOL sub_24871F304(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_22:
    v5 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

LABEL_21:
  v3 = sub_248731790();
  if (!v3)
  {
    goto LABEL_22;
  }

LABEL_3:
  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  v6 = off_278F52000;
  do
  {
    v7 = v4;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1D7600](v7, a1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 invocation];
      if (v10)
      {
        break;
      }

      ++v7;
      if (v4 == v3)
      {
        goto LABEL_23;
      }
    }

    v11 = v10;
    [v10 v6[347]];

    sub_2487314F0();
    sub_2486D8A18();
    v12 = sub_248731590();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_2486C4700(0, *(v5 + 2) + 1, 1, v5);
    }

    v14 = *(v5 + 2);
    v13 = *(v5 + 3);
    if (v14 >= v13 >> 1)
    {
      v5 = sub_2486C4700((v13 > 1), v14 + 1, 1, v5);
    }

    *(v5 + 2) = v14 + 1;
    v5[v14 + 32] = v12 & 1;
    v6 = off_278F52000;
  }

  while (v4 != v3);
LABEL_23:
  v15 = *(v5 + 2);
  v16 = (v5 + 32);
  do
  {
    v17 = v15;
    if (v15-- == 0)
    {
      break;
    }

    v19 = *v16++;
  }

  while (v19 != 1);
  v20 = v17 != 0;

  return v20;
}

BOOL sub_24871F52C(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v3 = sub_248731790();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = a1 & 0xC000000000000001;
  v5 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = 0;
    v7 = off_278F52000;
    do
    {
      v8 = v6;
      while (1)
      {
        if (v4)
        {
          v9 = MEMORY[0x24C1D7600](v8, a1);
        }

        else
        {
          if (v8 >= *(v2 + 16))
          {
            goto LABEL_40;
          }

          v9 = *(a1 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v11 = [v9 invocation];
        if (v11)
        {
          break;
        }

        ++v8;
        if (v6 == v3)
        {
          goto LABEL_19;
        }
      }

      v12 = v11;
      [v11 v7[347]];

      sub_2487314F0();
      sub_2486D8A18();
      v13 = sub_248731590();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2486C4700(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v5 = sub_2486C4700((v14 > 1), v15 + 1, 1, v5);
      }

      *(v5 + 2) = v15 + 1;
      v5[v15 + 32] = v13 & 1;
      v7 = off_278F52000;
    }

    while (v6 != v3);
  }

LABEL_19:
  v16 = *(v5 + 2);
  v17 = (v5 + 32);
  do
  {
    v18 = v16;
    if (v16-- == 0)
    {
      break;
    }

    v20 = *v17++;
  }

  while (v20 != 1);

  v21 = 0;
  v30 = MEMORY[0x277D84F90];
  while (v3 != v21)
  {
    if (v4)
    {
      v22 = MEMORY[0x24C1D7600](v21, a1);
    }

    else
    {
      if (v21 >= *(v2 + 16))
      {
        goto LABEL_38;
      }

      v22 = *(a1 + 8 * v21 + 32);
    }

    v23 = v22;
    v24 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v25 = [v22 dictationContext];

    ++v21;
    if (v25)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v29 = v30;
      v21 = v24;
    }
  }

  if (v29 >> 62)
  {
    v26 = sub_248731790();
  }

  else
  {
    v26 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = v18 | v26;

  return v27 != 0;
}

uint64_t sub_24871F860(uint64_t isUniquelyReferenced_nonNull_native, unint64_t a2)
{
  v2 = a2;
  v3 = (a2 & 0xFFFFFFFFFFFFFF8);
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v57 = isUniquelyReferenced_nonNull_native;
    v5 = v2 & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v54 = v2;
    if (v4)
    {
      v7 = 0;
      v8 = MEMORY[0x277D84F90];
      do
      {
        v9 = v7;
        while (1)
        {
          if (v5)
          {
            isUniquelyReferenced_nonNull_native = MEMORY[0x24C1D7600](v9, v2);
          }

          else
          {
            if (v9 >= v3[2])
            {
              goto LABEL_47;
            }

            isUniquelyReferenced_nonNull_native = *(v2 + 8 * v9 + 32);
          }

          v10 = isUniquelyReferenced_nonNull_native;
          v7 = (v9 + 1);
          if (__OFADD__(v9, 1))
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          v11 = [isUniquelyReferenced_nonNull_native ueiRequestCategorization];
          if (v11)
          {
            break;
          }

          ++v9;
          if (v7 == v4)
          {
            goto LABEL_21;
          }
        }

        v12 = v11;
        v13 = [v11 requestStatus];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2486C46D8(0, *(v8 + 16) + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2486C46D8((v14 > 1), v15 + 1, 1, v8);
          v8 = isUniquelyReferenced_nonNull_native;
        }

        *(v8 + 16) = v15 + 1;
        *(v8 + 4 * v15 + 32) = v13;
        v2 = v54;
      }

      while (v7 != v4);
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

LABEL_21:
    v55 = v3;
    v56 = v5;
    v16 = *(v8 + 16);
    v17 = 32;
    do
    {
      v18 = v16;
      v19 = v16-- != 0;
      v20 = v19;
      if (!v19)
      {
        break;
      }

      v21 = *(v8 + v17);
      v17 += 4;
    }

    while (v21 != 3);
    v52 = v20;

    v59 = v6;
    if (v57 >> 62)
    {
      break;
    }

    v58 = v57 & 0xFFFFFFFFFFFFFF8;
    v22 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v57 & 0xC000000000000001;
    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_30:
    v2 = 0;
    v24 = MEMORY[0x277D84F90];
LABEL_31:
    v25 = v2;
    while (1)
    {
      if (v23)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x24C1D7600](v25, v57);
      }

      else
      {
        if (v25 >= *(v58 + 16))
        {
          goto LABEL_49;
        }

        isUniquelyReferenced_nonNull_native = *(v57 + 8 * v25 + 32);
      }

      v26 = isUniquelyReferenced_nonNull_native;
      v2 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v27 = [isUniquelyReferenced_nonNull_native requestContext];
      if (v27)
      {
        v3 = v27;
        v28 = [v27 ended];

        if (v28)
        {
          MEMORY[0x24C1D71A0]();
          if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_248731260();
          }

          isUniquelyReferenced_nonNull_native = sub_2487312A0();
          v24 = v59;
          if (v2 != v22)
          {
            goto LABEL_31;
          }

          goto LABEL_53;
        }
      }

      else
      {
      }

      ++v25;
      if (v2 == v22)
      {
        goto LABEL_53;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    v29 = isUniquelyReferenced_nonNull_native;
    v4 = sub_248731790();
    isUniquelyReferenced_nonNull_native = v29;
  }

  v58 = v57 & 0xFFFFFFFFFFFFFF8;
  isUniquelyReferenced_nonNull_native = sub_248731790();
  v22 = isUniquelyReferenced_nonNull_native;
  v23 = v57 & 0xC000000000000001;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_30;
  }

LABEL_52:
  v24 = MEMORY[0x277D84F90];
LABEL_53:
  v30 = v54;
  if (v24 >> 62)
  {
LABEL_97:
    v51 = sub_248731790();
  }

  else
  {
    v51 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = MEMORY[0x277D84F90];
  v53 = MEMORY[0x277D84F90];
  if (v4)
  {
    v32 = 0;
    do
    {
      v33 = v32;
      while (1)
      {
        if (v56)
        {
          v34 = MEMORY[0x24C1D7600](v33, v30);
        }

        else
        {
          if (v33 >= v55[2])
          {
            goto LABEL_96;
          }

          v34 = *(v30 + 8 * v33 + 32);
        }

        v35 = v34;
        v32 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v36 = [v34 ueiRequestCategorization];
        if (v36)
        {
          break;
        }

        ++v33;
        if (v32 == v4)
        {
          goto LABEL_71;
        }
      }

      v37 = v36;
      v38 = [v36 requestStatus];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_2486C46D8(0, *(v31 + 2) + 1, 1, v31);
      }

      v40 = *(v31 + 2);
      v39 = *(v31 + 3);
      if (v40 >= v39 >> 1)
      {
        v31 = sub_2486C46D8((v39 > 1), v40 + 1, 1, v31);
      }

      *(v31 + 2) = v40 + 1;
      *&v31[4 * v40 + 32] = v38;
      v30 = v54;
    }

    while (v32 != v4);
  }

LABEL_71:
  v41 = *(v31 + 2);
  v42 = 32;
  do
  {
    v43 = v41;
    if (!v41)
    {
      break;
    }

    v44 = *&v31[v42];
    v42 += 4;
    --v41;
  }

  while (v44 != 1);

  v30 = 0;
  v60 = MEMORY[0x277D84F90];
  while (v22 != v30)
  {
    if (v23)
    {
      v45 = MEMORY[0x24C1D7600](v30, v57);
    }

    else
    {
      if (v30 >= *(v58 + 16))
      {
        goto LABEL_94;
      }

      v45 = *(v57 + 8 * v30 + 32);
    }

    v46 = v45;
    v47 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v4 = [v45 partialResultGenerated];

    ++v30;
    if (v4)
    {
      MEMORY[0x24C1D71A0]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_248731260();
      }

      sub_2487312A0();
      v53 = v60;
      v30 = v47;
    }
  }

  if (v53 >> 62)
  {
    v48 = sub_248731790();
  }

  else
  {
    v48 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v49 = (v51 | v48) != 0;
  if (!v43)
  {
    v49 = v52;
  }

  if (v18)
  {
    return v52;
  }

  else
  {
    return v49;
  }
}

id UserFocusSleepModeFeatureExtractor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserFocusSleepModeFeatureExtractor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_24871FFA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6240, &unk_248733390);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - v6;
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation5Event_eventBody;
  swift_beginAccess();
  v9 = *(a1 + v8);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v31 = v9;
    v12 = [v11 state];
    type metadata accessor for BMUserFocusSleepModeState(0);
    *(&v33 + 1) = v13;
    LODWORD(v32) = v12;
    swift_beginAccess();
    sub_2486C6800(&v32, 0xD000000000000018, 0x800000024873A530);
    swift_endAccess();
    v14 = [v11 changeReason];
    type metadata accessor for BMUserFocusSleepModeChangeReason(0);
    *(&v33 + 1) = v15;
    LODWORD(v32) = v14;
    swift_beginAccess();
    sub_2486C6800(&v32, 0xD00000000000001FLL, 0x800000024873A510);
    swift_endAccess();
    [v11 state];
    v16 = BMUserFocusSleepModeStateAsString();
    v17 = sub_248730FF0();
    v19 = v18;

    v20 = MEMORY[0x277D837D0];
    *(&v33 + 1) = MEMORY[0x277D837D0];
    *&v32 = v17;
    *(&v32 + 1) = v19;
    swift_beginAccess();
    sub_2486C6800(&v32, 0xD000000000000020, 0x800000024873A580);
    swift_endAccess();
    [v11 changeReason];
    v21 = BMUserFocusSleepModeChangeReasonAsString();
    v22 = sub_248730FF0();
    v24 = v23;

    *(&v33 + 1) = v20;
    *&v32 = v22;
    *(&v32 + 1) = v24;
    swift_beginAccess();
    sub_2486C6800(&v32, 0xD000000000000027, 0x800000024873A550);
    swift_endAccess();
    v25 = [v11 expectedEndDate];
    if (v25)
    {
      v26 = v25;
      sub_248730950();

      v27 = 0;
    }

    else
    {
      v27 = 1;
    }

    v28 = sub_248730970();
    v29 = *(v28 - 8);
    (*(v29 + 56))(v5, v27, 1, v28);
    sub_2486E16DC(v5, v7);
    if ((*(v29 + 48))(v7, 1, v28) == 1)
    {
      sub_2486E1660(v7);
      v32 = 0u;
      v33 = 0u;
    }

    else
    {
      *(&v33 + 1) = v28;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v32);
      (*(v29 + 32))(boxed_opaque_existential_0, v7, v28);
    }

    swift_beginAccess();
    sub_2486C6800(&v32, 0xD000000000000022, 0x800000024873A5B0);
    swift_endAccess();
  }
}

id UserFocusSleepModeFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_248720430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_248720478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

uint64_t FunctionDefinition.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FunctionDefinition.functionBlock.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t FunctionDefinition.init(name:numArgs:functionBlock:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t sub_248720590()
{
  v0 = sub_248730DF0();
  __swift_allocate_value_buffer(v0, qword_27EEA6858);
  __swift_project_value_buffer(v0, qword_27EEA6858);
  return sub_248730DE0();
}

uint64_t static UserDefinedFunctions.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEA59C0 != -1)
  {
    swift_once();
  }

  v2 = sub_248730DF0();
  v3 = __swift_project_value_buffer(v2, qword_27EEA6858);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24872072C@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X8>)
{
  v3 = a1();
  v5 = v4;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
  a2[3] = result;
  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t sub_2487207B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  *a4 = swift_allocObject();
  return a3(a1, a2);
}

uint64_t sub_248720828(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_2486C5B68(result + 32, v12);
    if (swift_dynamicCast())
    {
      return sub_2487314C0();
    }

    else if (a2)
    {
      v3 = type metadata accessor for SQLDatabaseError();
      v4 = objc_allocWithZone(v3);
      v5 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v7;
      *(inited + 48) = 0xD000000000000030;
      *(inited + 56) = 0x800000024873D760;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v8 = sub_248730F00();

      v11.receiver = v4;
      v11.super_class = v3;
      v9 = objc_msgSendSuper2(&v11, sel_initWithDomain_code_userInfo_, v5, -1, v8);

      v10 = v9;
      result = 0;
      *a2 = v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_248720A20(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_2486C5B68(a1 + 32, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (a2)
    {
      v8 = type metadata accessor for SQLDatabaseError();
      v9 = objc_allocWithZone(v8);
      v10 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v12;
      *(inited + 48) = 0xD000000000000039;
      *(inited + 56) = 0x800000024873D720;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v13 = sub_248730F00();

      v16.receiver = v9;
      v16.super_class = v8;
      v14 = objc_msgSendSuper2(&v16, sel_initWithDomain_code_userInfo_, v10, -1, v13);

      v15 = v14;
      *a2 = v14;
    }

    return;
  }

  if (v2 == 1)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  sub_2486C5B68(a1 + 64, v18);
  if (swift_dynamicCast())
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v17 payload:0];
    v6 = [v5 unwrap];

    if (v6)
    {
      swift_dynamicCastObjCProtocolUnconditional();
      swift_getObjectType();

      v7 = [swift_getObjCClassFromMetadata() getInnerTypeStringByTag_];
      sub_248730FF0();

      return;
    }

    goto LABEL_12;
  }
}

uint64_t sub_248720D0C(uint64_t result, void *a2)
{
  if (*(result + 16))
  {
    sub_2486C5B68(result + 32, v12);
    if (swift_dynamicCast())
    {
      return sub_2487314E0();
    }

    else if (a2)
    {
      v3 = type metadata accessor for SQLDatabaseError();
      v4 = objc_allocWithZone(v3);
      v5 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v7;
      *(inited + 48) = 0xD00000000000003FLL;
      *(inited + 56) = 0x800000024873D6E0;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v8 = sub_248730F00();

      v11.receiver = v4;
      v11.super_class = v3;
      v9 = objc_msgSendSuper2(&v11, sel_initWithDomain_code_userInfo_, v5, -1, v8);

      v10 = v9;
      result = 0;
      *a2 = v9;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_248720F08(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v68 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v66 - v6;
  v8 = *(a1 + 16);
  if (v8 < 2)
  {
    __break(1u);
  }

  else
  {
    sub_2486C5B68(a1 + 64, v78);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_13;
    }

    v9 = v73;
    sub_2486C5B68(a1 + 32, v78);
    if (swift_dynamicCast())
    {
      v10 = v73;
      v11 = v74;
      v12 = sub_2487308A0();
      sub_2486CC7FC(v10, v11);
    }

    else
    {
      v12 = 0;
    }

    v13 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v9 payload:v12];

    v14 = [v13 unwrap];
    if (!v14)
    {
LABEL_13:
      if (v68)
      {
        v16 = type metadata accessor for SQLDatabaseError();
        v17 = objc_allocWithZone(v16);
        v18 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v20;
        *(inited + 48) = 0xD000000000000033;
        *(inited + 56) = 0x800000024873D5F0;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v21 = sub_248730F00();

        v77.receiver = v17;
        v77.super_class = v16;
        v22 = objc_msgSendSuper2(&v77, sel_initWithDomain_code_userInfo_, v18, -1, v21);

        v23 = v22;
        *v68 = v22;
      }

      goto LABEL_18;
    }

    if (v8 != 2)
    {
      sub_2486C5B68(a1 + 96, v78);
      v15 = MEMORY[0x277D837D0];
      if (swift_dynamicCast())
      {
        static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v14, v73, v74, v68, 0x7465675F70, 0xE500000000000000, v78);

        if (!v79)
        {
          goto LABEL_41;
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          type metadata accessor for UndefinedField();
          if (swift_dynamicCast())
          {

            goto LABEL_38;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          if (swift_dynamicCast())
          {
            if (v70 == 0xD000000000000010 && 0x800000024873D1F0 == v71)
            {

              goto LABEL_38;
            }

            v38 = sub_248731880();

            if (v38)
            {
LABEL_38:
              if (v68)
              {
                v39 = type metadata accessor for SQLDatabaseError();
                v67 = objc_allocWithZone(v39);
                v40 = sub_248730FC0();
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
                v41 = swift_initStackObject();
                *(v41 + 16) = xmmword_2487335F0;
                *(v41 + 32) = sub_248730FF0();
                *(v41 + 72) = v15;
                *(v41 + 40) = v42;
                *(v41 + 48) = 0xD000000000000030;
                *(v41 + 56) = 0x800000024873D6A0;
                sub_2486D3554(v41);
                swift_setDeallocating();
                sub_2486C7940(v41 + 32, &unk_27EEA5FE0, &qword_248735AA0);
                v43 = sub_248730F00();

                v69.receiver = v67;
                v69.super_class = v39;
                v44 = objc_msgSendSuper2(&v69, sel_initWithDomain_code_userInfo_, v40, -1, v43);
LABEL_40:
                v45 = v44;

                v46 = v45;
                *v68 = v45;
              }

LABEL_41:

              *a3 = 0u;
              *(a3 + 16) = 0u;
              goto LABEL_42;
            }
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          v32 = MEMORY[0x277D849A8];
          if (swift_dynamicCast())
          {
            v33 = v70;
            *(a3 + 24) = v32;

            *a3 = v33;
LABEL_42:
            sub_2486C7940(v78, &qword_27EEA64E0, &qword_248733800);
            return;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          v34 = MEMORY[0x277D84A28];
          if (swift_dynamicCast())
          {
            v35 = v70;
            *(a3 + 24) = v34;

            *a3 = v35;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          v36 = MEMORY[0x277D83A90];
          if (swift_dynamicCast())
          {
            v37 = v70;
            *(a3 + 24) = v36;

            *a3 = v37;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          v47 = MEMORY[0x277D839F8];
          if (swift_dynamicCast())
          {
            v48 = v70;
            *(a3 + 24) = v47;

            *a3 = v48;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          v49 = MEMORY[0x277D837D0];
          if (swift_dynamicCast())
          {
            v50 = v70;
            v51 = v71;
            *(a3 + 24) = v49;

            *a3 = v50;
            *(a3 + 8) = v51;
            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        sub_248728C48(v78, &v73);
        if (v75)
        {
          if (swift_dynamicCast())
          {
            v52 = v14;
            v53 = v70;
            v54 = v71;
            v55 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            sub_24871D610(v53, v54);
            v56 = sub_2487308A0();
            v57 = [v55 initWithBytesAsData_];

            sub_2486CC7FC(v53, v54);
            sub_248731380();

            v58 = sub_2487309B0();
            v59 = *(v58 - 8);
            if ((*(v59 + 48))(v7, 1, v58) == 1)
            {
              sub_2486C7940(v7, &qword_27EEA5D90, &qword_2487333C0);
              *(a3 + 24) = MEMORY[0x277CC9318];

              *a3 = v53;
              *(a3 + 8) = v54;
            }

            else
            {
              v63 = sub_248730980();
              v65 = v64;
              (*(v59 + 8))(v7, v58);
              *(a3 + 24) = MEMORY[0x277D837D0];

              sub_2486CC7FC(v53, v54);
              *a3 = v63;
              *(a3 + 8) = v65;
            }

            goto LABEL_42;
          }
        }

        else
        {
          sub_2486C7940(&v73, &qword_27EEA64E0, &qword_248733800);
        }

        if (!v68)
        {
          goto LABEL_41;
        }

        v60 = type metadata accessor for SQLDatabaseError();
        v67 = objc_allocWithZone(v60);
        v40 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v61 = swift_initStackObject();
        *(v61 + 16) = xmmword_2487335F0;
        *(v61 + 32) = sub_248730FF0();
        *(v61 + 72) = v15;
        *(v61 + 40) = v62;
        *(v61 + 48) = 0xD000000000000035;
        *(v61 + 56) = 0x800000024873D660;
        sub_2486D3554(v61);
        swift_setDeallocating();
        sub_2486C7940(v61 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v43 = sub_248730F00();

        v72.receiver = v67;
        v72.super_class = v60;
        v44 = objc_msgSendSuper2(&v72, sel_initWithDomain_code_userInfo_, v40, -1, v43);
        goto LABEL_40;
      }

      if (v68)
      {
        v24 = type metadata accessor for SQLDatabaseError();
        v67 = objc_allocWithZone(v24);
        v25 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v26 = v14;
        v27 = swift_initStackObject();
        *(v27 + 16) = xmmword_2487335F0;
        *(v27 + 32) = sub_248730FF0();
        *(v27 + 72) = v15;
        *(v27 + 40) = v28;
        *(v27 + 48) = 0xD000000000000028;
        *(v27 + 56) = 0x800000024873D630;
        sub_2486D3554(v27);
        swift_setDeallocating();
        sub_2486C7940(v27 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v29 = sub_248730F00();

        v76.receiver = v67;
        v76.super_class = v24;
        v30 = objc_msgSendSuper2(&v76, sel_initWithDomain_code_userInfo_, v25, -1, v29);

        v14 = v26;
        v31 = v30;
        *v68 = v30;
      }

LABEL_18:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }
  }

  __break(1u);
}

void static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2486D8A18();
  swift_bridgeObjectRetain_n();
  v13 = a1;
  *&v120[0] = a2;
  *(&v120[0] + 1) = a3;
  *&v118 = 91;
  *(&v118 + 1) = 0xE100000000000000;
  LOBYTE(a1) = sub_248731590();

  if (a1)
  {
    *&v103 = a5;
    *(&v103 + 1) = a6;
    v104 = a4;
    v14 = MEMORY[0x277D84F70];
    v15 = MEMORY[0x277D837D0];
    while (1)
    {
      sub_2487273F0(91, 0xE100000000000000, a2, a3);
      if (v17 & 1) != 0 || (v18 = sub_2487273F0(93, 0xE100000000000000, a2, a3), (v19))
      {

        if (v104)
        {
          *&v120[0] = 0;
          *(&v120[0] + 1) = 0xE000000000000000;
          sub_248731650();

          v120[0] = v103;
          MEMORY[0x24C1D70A0](0xD00000000000002CLL, 0x800000024873D140);
          v111 = v13;
          v61 = *(&v120[0] + 1);
          v60 = *&v120[0];
          v62 = type metadata accessor for SQLDatabaseError();
          v63 = objc_allocWithZone(v62);
          v64 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2487335F0;
          *(inited + 32) = sub_248730FF0();
          *(inited + 72) = v15;
          *(inited + 40) = v66;
          *(inited + 48) = __PAIR128__(v61, v60);
          sub_2486D3554(inited);
          swift_setDeallocating();
          sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
          v67 = sub_248730F00();
          v13 = v111;

          v117.receiver = v63;
          v117.super_class = v62;
          v68 = objc_msgSendSuper2(&v117, sel_initWithDomain_code_userInfo_, v64, -1, v67);

          v69 = v68;
          *v104 = v68;
        }

        goto LABEL_63;
      }

      v20 = v18;
      v21 = sub_2487311F0();
      v23 = v22;
      v105 = v21;
      v106 = v24;
      v107 = v25;
      MEMORY[0x24C1D7000]();
      v26 = sub_248730FC0();

      v27 = [v13 valueForKeyPath_];

      if (!v27)
      {

        goto LABEL_63;
      }

      sub_2487315A0();
      swift_unknownObjectRelease();
      sub_2486C5B68(v120, &v118);
      type metadata accessor for UndefinedField();
      if (swift_dynamicCast())
      {

LABEL_43:

LABEL_53:

        if (!v104)
        {
          __swift_destroy_boxed_opaque_existential_0(v120);

          goto LABEL_63;
        }

        *&v118 = 0;
        *(&v118 + 1) = 0xE000000000000000;
        sub_248731650();

        v118 = v103;
        MEMORY[0x24C1D70A0](0xD00000000000002BLL, 0x800000024873D210);
        v84 = v118;
        v85 = type metadata accessor for SQLDatabaseError();
        v86 = objc_allocWithZone(v85);
        v87 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v88 = swift_initStackObject();
        *(v88 + 16) = xmmword_2487335F0;
        *(v88 + 32) = sub_248730FF0();
        *(v88 + 72) = v15;
        *(v88 + 40) = v89;
        *(v88 + 48) = v84;
        sub_2486D3554(v88);
        swift_setDeallocating();
        sub_2486C7940(v88 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v90 = sub_248730F00();

        v112.receiver = v86;
        v112.super_class = v85;
        v91 = objc_msgSendSuper2(&v112, sel_initWithDomain_code_userInfo_, v87, -1, v90);

        v92 = v91;
        *v104 = v91;

LABEL_62:
        __swift_destroy_boxed_opaque_existential_0(v120);
        goto LABEL_63;
      }

      sub_2486C5B68(v120, &v118);
      if (swift_dynamicCast())
      {
        if (v115 == 0xD000000000000010 && 0x800000024873D1F0 == v116)
        {

          goto LABEL_53;
        }

        v28 = sub_248731880();

        if (v28)
        {
          goto LABEL_43;
        }
      }

      sub_2486C5B68(v120, &v118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6878, &qword_248735FA8);
      if (!swift_dynamicCast())
      {

        if (v104)
        {
          *&v118 = 0;
          *(&v118 + 1) = 0xE000000000000000;
          sub_248731650();
          MEMORY[0x24C1D70A0](v103, *(&v103 + 1));
          MEMORY[0x24C1D70A0](0xD000000000000025, 0x800000024873D170);
          v70 = MEMORY[0x24C1D7000](v105, v106, v107, v23);
          v72 = v71;

          MEMORY[0x24C1D70A0](v70, v72);

          MEMORY[0x24C1D70A0](0xD000000000000010, 0x800000024873D1A0);
          v73 = v13;
          v74 = v118;
          v75 = type metadata accessor for SQLDatabaseError();
          v76 = objc_allocWithZone(v75);
          v77 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          v78 = swift_initStackObject();
          *(v78 + 16) = xmmword_2487335F0;
          *(v78 + 32) = sub_248730FF0();
          *(v78 + 72) = v15;
          *(v78 + 40) = v79;
          *(v78 + 48) = v74;
          sub_2486D3554(v78);
          swift_setDeallocating();
          sub_2486C7940(v78 + 32, &unk_27EEA5FE0, &qword_248735AA0);
          v80 = sub_248730F00();

          v114.receiver = v76;
          v114.super_class = v75;
          v81 = objc_msgSendSuper2(&v114, sel_initWithDomain_code_userInfo_, v77, -1, v80, v103);
          goto LABEL_61;
        }

LABEL_56:
        __swift_destroy_boxed_opaque_existential_0(v120);

        goto LABEL_63;
      }

      if (v20 >> 14 < sub_2487310F0() >> 14)
      {
        __break(1u);
LABEL_58:

        v13 = v14;
        v42 = v110;
LABEL_59:

        if (!v104)
        {
          goto LABEL_56;
        }

        *&v118 = 0;
        *(&v118 + 1) = 0xE000000000000000;
        sub_248731650();

        v118 = v103;
        MEMORY[0x24C1D70A0](0xD000000000000024, 0x800000024873D1C0);
        v93 = MEMORY[0x24C1D7000](v105, v106, v107, v42);
        v95 = v94;

        MEMORY[0x24C1D70A0](v93, v95);

        v73 = v13;
        v96 = v118;
        v97 = type metadata accessor for SQLDatabaseError();
        v98 = objc_allocWithZone(v97);
        v77 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v99 = swift_initStackObject();
        *(v99 + 16) = xmmword_2487335F0;
        *(v99 + 32) = sub_248730FF0();
        *(v99 + 72) = MEMORY[0x277D837D0];
        *(v99 + 40) = v100;
        *(v99 + 48) = v96;
        sub_2486D3554(v99);
        swift_setDeallocating();
        sub_2486C7940(v99 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v80 = sub_248730F00();

        v113.receiver = v98;
        v113.super_class = v97;
        v81 = objc_msgSendSuper2(&v113, sel_initWithDomain_code_userInfo_, v77, -1, v80, v103);
LABEL_61:
        v101 = v81;

        v102 = v101;
        *v104 = v101;

        goto LABEL_62;
      }

      v109 = a3;
      v110 = v23;
      v14 = v13;
      v29 = a2;
      v30 = sub_2487311F0();
      v34 = v33;
      if (!((v30 ^ v31) >> 14))
      {
        goto LABEL_58;
      }

      v35 = v30;
      v36 = v31;
      v37 = v32;
      v38 = sub_2487284F0(v30, v31, v32, v33, 10);
      if ((v39 & 0x100) != 0)
      {
        v40 = sub_248727A3C(v35, v36, v37, v34, 10);
        v47 = v46;

        v13 = v14;
        v14 = MEMORY[0x277D84F70];
        v43 = v109;
        v42 = v23;
        v44 = v29;
        v45 = v115;
        if (v47)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v40 = v38;
        v41 = v39;

        v13 = v14;
        v14 = MEMORY[0x277D84F70];
        v43 = v109;
        v42 = v23;
        v44 = v29;
        v45 = v115;
        if (v41)
        {
          goto LABEL_59;
        }
      }

      if (v45 >> 62)
      {
        if (v40 >= sub_248731790())
        {
          goto LABEL_59;
        }
      }

      else if (v40 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_59;
      }

      if ((v45 & 0xC000000000000001) != 0)
      {
        v48 = MEMORY[0x24C1D7600](v40, v45);
        v15 = MEMORY[0x277D837D0];
      }

      else
      {
        v15 = MEMORY[0x277D837D0];
        if (v40 < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
          return;
        }

        if (v40 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v48 = *(v45 + 8 * v40 + 32);
      }

      if (sub_2487311A0() < 3)
      {

        a2 = 0;
        a3 = 0xE000000000000000;
      }

      else
      {
        v49 = sub_248731110();
        v50 = sub_2487274E0(v49, v44, v43);
        v52 = v51;
        v54 = v53;
        v56 = v55;

        a2 = MEMORY[0x24C1D7000](v50, v52, v54, v56);
        a3 = v57;
      }

      __swift_destroy_boxed_opaque_existential_0(v120);
      *&v120[0] = a2;
      *(&v120[0] + 1) = a3;
      *&v118 = 91;
      *(&v118 + 1) = 0xE100000000000000;
      v16 = sub_248731590();

      v13 = v48;
      if ((v16 & 1) == 0)
      {
        goto LABEL_32;
      }
    }
  }

  v48 = v13;
LABEL_32:
  if (!a2 && a3 == 0xE000000000000000 || (sub_248731880() & 1) != 0)
  {

    *(a7 + 24) = sub_2486CF4C4(0, &qword_27EEA6870, 0x277D82BB8);
    *a7 = v48;
    return;
  }

  v58 = sub_248730FC0();

  v59 = [v48 valueForKeyPath_];

  if (v59)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v118 = 0u;
    v119 = 0u;
  }

  v120[0] = v118;
  v120[1] = v119;
  if (*(&v119 + 1))
  {
    v82 = sub_2486CF4C4(0, &qword_27EEA6870, 0x277D82BB8);
    if (swift_dynamicCast())
    {
      v83 = v115;
      *(a7 + 24) = v82;

      *a7 = v83;
      return;
    }
  }

  else
  {

    sub_2486C7940(v120, &qword_27EEA64E0, &qword_248733800);
  }

LABEL_63:
  *a7 = 0u;
  *(a7 + 16) = 0u;
}

uint64_t sub_248722854(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v32 - v6;
  if (*(a1 + 16))
  {
    sub_2486C5B68(a1 + 32, v37);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (a2)
      {
        v23 = type metadata accessor for SQLDatabaseError();
        v24 = objc_allocWithZone(v23);
        v25 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v27;
        *(inited + 48) = 0xD00000000000002CLL;
        *(inited + 56) = 0x800000024873D590;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v28 = sub_248730F00();

        v34.receiver = v24;
        v34.super_class = v23;
        v29 = objc_msgSendSuper2(&v34, sel_initWithDomain_code_userInfo_, v25, -1, v28);

        v30 = v29;
        result = 0;
        *a2 = v29;
        return result;
      }

      return 0;
    }

    v9 = v35;
    v8 = v36;
    v10 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    sub_24871D610(v9, v8);
    v11 = sub_2487308A0();
    v12 = [v10 initWithBytesAsData_];

    sub_2486CC7FC(v9, v8);
    sub_248731380();

    v13 = sub_2487309B0();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v7, 1, v13) == 1)
    {
      sub_2486C7940(v7, &qword_27EEA5D90, &qword_2487333C0);
      if (a2)
      {
        v15 = type metadata accessor for SQLDatabaseError();
        v16 = objc_allocWithZone(v15);
        v17 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        v18 = swift_initStackObject();
        *(v18 + 16) = xmmword_2487335F0;
        *(v18 + 32) = sub_248730FF0();
        *(v18 + 72) = MEMORY[0x277D837D0];
        *(v18 + 40) = v19;
        *(v18 + 48) = 0xD00000000000002DLL;
        *(v18 + 56) = 0x800000024873D5C0;
        sub_2486D3554(v18);
        swift_setDeallocating();
        sub_2486C7940(v18 + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v20 = sub_248730F00();

        v33.receiver = v16;
        v33.super_class = v15;
        v21 = objc_msgSendSuper2(&v33, sel_initWithDomain_code_userInfo_, v17, -1, v20);

        v22 = v21;
        *a2 = v21;
      }

      sub_2486CC7FC(v9, v8);
      return 0;
    }

    v31 = sub_248730980();
    sub_2486CC7FC(v9, v8);
    (*(v14 + 8))(v7, v13);
    return v31;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248722D00(uint64_t a1, void *a2)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = sub_248731030();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) < 2uLL)
  {
    __break(1u);
  }

  sub_2486C5B68(a1 + 64, &v61);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = LODWORD(v57[0]);
  sub_2486C5B68(a1 + 32, &v61);
  if (swift_dynamicCast())
  {
    v9 = v57[0];
    v10 = v57[1];
    v11 = sub_2487308A0();
    sub_2486CC7FC(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v8 payload:v11];

  v13 = [v12 unwrap];
  if (!v13)
  {
LABEL_13:
    if (a2)
    {
      v32 = type metadata accessor for SQLDatabaseError();
      v33 = objc_allocWithZone(v32);
      v34 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v36;
      *(inited + 48) = 0xD000000000000034;
      *(inited + 56) = 0x800000024873D520;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v37 = sub_248730F00();

      v56.receiver = v33;
      v56.super_class = v32;
      v38 = objc_msgSendSuper2(&v56, sel_initWithDomain_code_userInfo_, v34, -1, v37);

      v39 = v38;
      result = 0;
      *a2 = v38;
      return result;
    }

    return 0;
  }

  v14 = [v13 formattedJsonBody];
  if (!v14 || (v15 = v14, sub_248730FF0(), v15, sub_248731020(), v16 = sub_248731000(), v18 = v17, , (*(v5 + 8))(v7, v4), v18 >> 60 == 15))
  {
LABEL_16:
    if (!a2)
    {
LABEL_18:

      return 0;
    }

LABEL_17:
    v43 = type metadata accessor for SQLDatabaseError();
    v44 = objc_allocWithZone(v43);
    v45 = sub_248730FC0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_2487335F0;
    *(v46 + 32) = sub_248730FF0();
    *(v46 + 72) = MEMORY[0x277D837D0];
    *(v46 + 40) = v47;
    *(v46 + 48) = 0xD000000000000029;
    *(v46 + 56) = 0x800000024873D560;
    sub_2486D3554(v46);
    swift_setDeallocating();
    sub_2486C7940(v46 + 32, &unk_27EEA5FE0, &qword_248735AA0);
    v48 = sub_248730F00();

    v55.receiver = v44;
    v55.super_class = v43;
    v49 = objc_msgSendSuper2(&v55, sel_initWithDomain_code_userInfo_, v45, -1, v48);

    v50 = v49;
    *a2 = v49;
    goto LABEL_18;
  }

  v19 = objc_opt_self();
  v20 = sub_2487308A0();
  v57[0] = 0;
  v21 = [v19 JSONObjectWithData:v20 options:1 error:v57];

  v22 = v57[0];
  if (!v21)
  {
    v41 = v22;
    v42 = sub_2487307E0();

    swift_willThrow();
    sub_248702D3C(v16, v18);

    goto LABEL_16;
  }

  sub_2487315A0();
  swift_unknownObjectRelease();
  sub_2486C79A0(&v61, &v63);
  __swift_project_boxed_opaque_existential_1(&v63, v64);
  v23 = sub_248731870();
  *&v61 = 0;
  v24 = [v19 dataWithJSONObject:v23 options:1 error:&v61];
  swift_unknownObjectRelease();
  v25 = v61;
  if (!v24)
  {
    v51 = v25;
    v52 = sub_2487307E0();

    swift_willThrow();
    sub_248702D3C(v16, v18);

    __swift_destroy_boxed_opaque_existential_0(&v63);
    if (!a2)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v26 = sub_2487308C0();
  v28 = v27;

  sub_24871D610(v26, v28);
  v29 = sub_248728738(v26, v28);
  if (v30)
  {
    v31 = v29;
    sub_2486CC7FC(v26, v28);
LABEL_28:
    sub_248702D3C(v16, v18);

    sub_2486CC7FC(v26, v28);
    goto LABEL_29;
  }

  v59 = v26;
  v60 = v28;
  sub_24871D610(v26, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6888, &qword_248736060);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2486CC7FC(v26, v28);
    v58 = 0;
    memset(v57, 0, sizeof(v57));
    sub_2486C7940(v57, &qword_27EEA6890, &qword_248736068);
LABEL_27:
    v31 = sub_248728448(v26, v28);
    goto LABEL_28;
  }

  sub_2486CD01C(v57, &v61);
  __swift_project_boxed_opaque_existential_1(&v61, v62);
  v53 = sub_248731800();
  sub_2486CC7FC(v26, v28);
  if ((v53 & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_0(&v61);
    goto LABEL_27;
  }

  __swift_project_boxed_opaque_existential_1(&v61, v62);
  sub_2487317F0();
  sub_248702D3C(v16, v18);

  sub_2486CC7FC(v26, v28);
  v31 = v57[0];
  __swift_destroy_boxed_opaque_existential_0(&v61);
LABEL_29:
  __swift_destroy_boxed_opaque_existential_0(&v63);
  return v31;
}

uint64_t sub_248723508(uint64_t a1, void *a2)
{
  v98 = *MEMORY[0x277D85DE8];
  v4 = sub_248731030();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  if (v7 < 2)
  {
    __break(1u);
    goto LABEL_65;
  }

  sub_2486C5B68(a1 + 64, v96);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = v93;
  sub_2486C5B68(a1 + 32, v96);
  if (swift_dynamicCast())
  {
    v9 = v93;
    v10 = v94;
    v11 = sub_2487308A0();
    sub_2486CC7FC(v9, v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = [objc_allocWithZone(MEMORY[0x277D5A790]) initWithAnyEventType:v8 payload:v11];

  v13 = [v12 unwrap];
  if (!v13)
  {
LABEL_13:
    if (a2)
    {
      v15 = type metadata accessor for SQLDatabaseError();
      v16 = objc_allocWithZone(v15);
      v17 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v19;
      *(inited + 48) = 0xD000000000000035;
      *(inited + 56) = 0x800000024873D3F0;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v20 = sub_248730F00();

      v90.receiver = v16;
      v90.super_class = v15;
      v21 = objc_msgSendSuper2(&v90, sel_initWithDomain_code_userInfo_, v17, -1, v20);

      v22 = v21;
      result = 0;
      *a2 = v21;
      return result;
    }

    return 0;
  }

  if (v7 == 2)
  {
LABEL_65:
    __break(1u);
  }

  sub_2486C5B68(a1 + 96, v96);
  v14 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (a2)
    {
      v24 = type metadata accessor for SQLDatabaseError();
      v25 = objc_allocWithZone(v24);
      v26 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v27 = swift_initStackObject();
      v84 = a2;
      v28 = v27;
      *(v27 + 16) = xmmword_2487335F0;
      *(v27 + 32) = sub_248730FF0();
      v28[9] = v14;
      v28[5] = v29;
      v28[6] = 0xD00000000000002ALL;
      v28[7] = 0x800000024873D430;
      sub_2486D3554(v28);
      swift_setDeallocating();
      sub_2486C7940((v28 + 4), &unk_27EEA5FE0, &qword_248735AA0);
      v30 = sub_248730F00();

      v89.receiver = v25;
      v89.super_class = v24;
      v31 = objc_msgSendSuper2(&v89, sel_initWithDomain_code_userInfo_, v26, -1, v30);

      v32 = v31;
      *v84 = v31;
    }

    return 0;
  }

  static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v13, v93, v94, a2, 0x7465675F70, 0xE500000000000000, v96);

  if (!v97)
  {

    sub_2486C7940(v96, &qword_27EEA64E0, &qword_248733800);
    return 0;
  }

  sub_248728C48(v96, &v93);
  if (v95)
  {
    type metadata accessor for UndefinedField();
    if (swift_dynamicCast())
    {

      goto LABEL_53;
    }
  }

  else
  {
    sub_2486C7940(&v93, &qword_27EEA64E0, &qword_248733800);
  }

  sub_248728C48(v96, &v93);
  if (v95)
  {
    if (swift_dynamicCast())
    {
      if (__PAIR128__(0x800000024873D1F0, 0xD000000000000010) == v91)
      {

        goto LABEL_53;
      }

      v56 = sub_248731880();

      if (v56)
      {
LABEL_53:
        if (a2)
        {
          v57 = type metadata accessor for SQLDatabaseError();
          v58 = objc_allocWithZone(v57);
          v50 = sub_248730FC0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
          v59 = swift_initStackObject();
          v84 = a2;
          v60 = v59;
          *(v59 + 16) = xmmword_2487335F0;
          *(v59 + 32) = sub_248730FF0();
          v60[9] = v14;
          v60[5] = v61;
          v60[6] = 0xD000000000000032;
          v60[7] = 0x800000024873D4E0;
          sub_2486D3554(v60);
          swift_setDeallocating();
          sub_2486C7940((v60 + 4), &unk_27EEA5FE0, &qword_248735AA0);
          v54 = sub_248730F00();

          v85.receiver = v58;
          v85.super_class = v57;
          v55 = objc_msgSendSuper2(&v85, sel_initWithDomain_code_userInfo_, v50, -1, v54);
          goto LABEL_55;
        }

        goto LABEL_56;
      }
    }
  }

  else
  {
    sub_2486C7940(&v93, &qword_27EEA64E0, &qword_248733800);
  }

  sub_248728C48(v96, &v93);
  if (!v95)
  {
    sub_2486C7940(&v93, &qword_27EEA64E0, &qword_248733800);
LABEL_50:
    if (a2)
    {
      v48 = type metadata accessor for SQLDatabaseError();
      v49 = objc_allocWithZone(v48);
      v50 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v51 = swift_initStackObject();
      v84 = a2;
      v52 = v51;
      *(v51 + 16) = xmmword_2487335F0;
      *(v51 + 32) = sub_248730FF0();
      v52[9] = v14;
      v52[5] = v53;
      v52[6] = 0xD000000000000038;
      v52[7] = 0x800000024873D460;
      sub_2486D3554(v52);
      swift_setDeallocating();
      sub_2486C7940((v52 + 4), &unk_27EEA5FE0, &qword_248735AA0);
      v54 = sub_248730F00();

      v88.receiver = v49;
      v88.super_class = v48;
      v55 = objc_msgSendSuper2(&v88, sel_initWithDomain_code_userInfo_, v50, -1, v54);
LABEL_55:
      v62 = v55;

      v63 = v62;
      *v84 = v62;
    }

LABEL_56:

    sub_2486C7940(v96, &qword_27EEA64E0, &qword_248733800);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6898, &unk_248736080);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_50;
  }

  v33 = *(v91 + 16);
  if (v33)
  {
    v82 = v13;
    v34 = MEMORY[0x277D84F90];
    v81[1] = v91;
    v35 = v91 + 32;
    v83 = v6;
    v84 = a2;
    while (1)
    {
      sub_2486C5B68(v35, &v93);
      sub_2486C5B68(&v93, &v91);
      sub_2486CF4C4(0, &qword_27EEA63E0, 0x277D5A918);
      if (swift_dynamicCast())
      {
        v36 = v87;
        v37 = [v87 formattedJsonBody];
        if (v37)
        {
          v38 = v37;
          v39 = v14;
          v40 = sub_248730FF0();
          v42 = v41;

          v92 = v39;
          *&v91 = v40;
          *(&v91 + 1) = v42;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2486C4DBC(0, *(v34 + 2) + 1, 1, v34);
          }

          v44 = *(v34 + 2);
          v43 = *(v34 + 3);
          v14 = v39;
          if (v44 >= v43 >> 1)
          {
            v34 = sub_2486C4DBC((v43 > 1), v44 + 1, 1, v34);
          }

          __swift_destroy_boxed_opaque_existential_0(&v93);
          *(v34 + 2) = v44 + 1;
          sub_2486C79A0(&v91, &v34[32 * v44 + 32]);
          a2 = v84;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v93);
        }
      }

      else
      {
        sub_2486C5B68(&v93, &v91);
        if (swift_dynamicCast())
        {
          v92 = v14;
          v91 = v87;
LABEL_43:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v34 = sub_2486C4DBC(0, *(v34 + 2) + 1, 1, v34);
          }

          v47 = *(v34 + 2);
          v46 = *(v34 + 3);
          if (v47 >= v46 >> 1)
          {
            v34 = sub_2486C4DBC((v46 > 1), v47 + 1, 1, v34);
          }

          __swift_destroy_boxed_opaque_existential_0(&v93);
          *(v34 + 2) = v47 + 1;
          sub_2486C79A0(&v91, &v34[32 * v47 + 32]);
          goto LABEL_31;
        }

        sub_2486C5B68(&v93, &v91);
        v45 = sub_2486CF4C4(0, &qword_27EEA6388, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v92 = v45;
          *&v91 = v87;
          goto LABEL_43;
        }

        __swift_destroy_boxed_opaque_existential_0(&v93);
      }

LABEL_31:
      v35 += 32;
      if (!--v33)
      {

        v13 = v82;
        goto LABEL_60;
      }
    }
  }

LABEL_60:
  v64 = objc_opt_self();
  v65 = sub_248731230();

  v93 = 0;
  v66 = [v64 dataWithJSONObject:v65 options:0 error:&v93];

  v67 = v93;
  if (!v66)
  {
    v72 = v67;
    v73 = sub_2487307E0();

    swift_willThrow();
    if (a2)
    {
      v74 = type metadata accessor for SQLDatabaseError();
      v83 = objc_allocWithZone(v74);
      v75 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_2487335F0;
      *(v76 + 32) = sub_248730FF0();
      *(v76 + 72) = v14;
      *(v76 + 40) = v77;
      *(v76 + 48) = 0xD000000000000033;
      *(v76 + 56) = 0x800000024873D4A0;
      sub_2486D3554(v76);
      swift_setDeallocating();
      sub_2486C7940(v76 + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v78 = sub_248730F00();

      v86.receiver = v83;
      v86.super_class = v74;
      v79 = objc_msgSendSuper2(&v86, sel_initWithDomain_code_userInfo_, v75, -1, v78);

      v80 = v79;
      *a2 = v79;
    }

    goto LABEL_56;
  }

  v68 = sub_2487308C0();
  v70 = v69;

  sub_248731020();
  v71 = sub_248731010();

  sub_2486CC7FC(v68, v70);
  sub_2486C7940(v96, &qword_27EEA64E0, &qword_248733800);
  return v71;
}

void sub_2487242A8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5D90, &qword_2487333C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v90 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    sub_2486C5B68(a1 + 32, &v102);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (qword_27EEA59C0 != -1)
      {
        swift_once();
      }

      v16 = sub_248730DF0();
      __swift_project_value_buffer(v16, qword_27EEA6858);
      v17 = sub_248730DD0();
      v18 = sub_2487313C0();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        *v19 = 0;
        _os_log_impl(&dword_2486BF000, v17, v18, "pstr_get() returning nil because event payload is empty, check if eventFilter in your UnifiedSiriTurn class includes all necessary types.", v19, 2u);
        MEMORY[0x24C1D8100](v19, -1, -1);
      }

      goto LABEL_254;
    }

    v4 = v98;
    v5 = sub_248730880();
    v3 = v13;

    if (v3 >> 60 == 15)
    {
      goto LABEL_245;
    }

    if (v12 == 1)
    {
      __break(1u);
      goto LABEL_34;
    }

    sub_2486C5B68(a1 + 64, &v102);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_248702D3C(v5, v3);
LABEL_245:
      sub_2486C5B68(a1 + 32, &v102);
      v30 = MEMORY[0x277D837D0];
      v31 = swift_dynamicCast();
      if (v31)
      {
        v32 = v98;
      }

      else
      {
        v32 = 0;
      }

      if (a2)
      {
        if (v31)
        {
          v33 = v97;
        }

        else
        {
          v33 = 0;
        }

        v102 = 0;
        v103 = 0xE000000000000000;
        sub_248731650();
        MEMORY[0x24C1D70A0](0xD000000000000037, 0x800000024873D300);
        v97 = v33;
        v98 = v32;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
        sub_248731710();

        v92 = a3;
        v34 = a2;
        v36 = v102;
        v35 = v103;
        v37 = type metadata accessor for SQLDatabaseError();
        v38 = objc_allocWithZone(v37);
        v39 = sub_248730FC0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2487335F0;
        *(inited + 32) = sub_248730FF0();
        *(inited + 72) = v30;
        *(inited + 40) = v41;
        *(inited + 48) = v36;
        *(inited + 56) = v35;
        sub_2486D3554(inited);
        swift_setDeallocating();
        sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
        v42 = sub_248730F00();

        v101.receiver = v38;
        v101.super_class = v37;
        v43 = objc_msgSendSuper2(&v101, sel_initWithDomain_code_userInfo_, v39, -1, v42);

        v44 = v43;
        *v34 = v43;
        a3 = v92;
      }

      else
      {
      }

      goto LABEL_254;
    }

    v91 = v11;
    v14 = sub_248730FC0();

    v4 = v14;
    if ([v4 isEqualToString:@"UNKNOWN_EVENT"])
    {
      v15 = 0;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"UEI_CLIENT_EVENT"])
    {
      v15 = 1;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"UEI_SERVER_EVENT"])
    {
      v15 = 2;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"DAILY_DEVICE_STATUS"])
    {
      v15 = 3;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"MT_CLIENT_EVENT"])
    {
      v15 = 4;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"PROACTIVE_EVENT_TRACKER"])
    {
      v15 = 5;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"ORDERED_ANY_EVENT"])
    {
      v15 = 6;
      goto LABEL_237;
    }

    if ([v4 isEqualToString:@"PROVISIONAL_EVENT"])
    {
      v15 = 7;
      goto LABEL_237;
    }
  }

  else
  {
    __break(1u);
  }

  if ([v4 isEqualToString:@"SIRI_UNDER_TEST_EVENT"])
  {
    v15 = 8;
    goto LABEL_237;
  }

  if ([v4 isEqualToString:@"REQUEST_LINK_EVENT"])
  {
    v15 = 9;
    goto LABEL_237;
  }

LABEL_34:
  if ([v4 isEqualToString:@"ABE_CLIENT_EVENT"])
  {
    v15 = 10;
  }

  else if ([v4 isEqualToString:@"ABE_SERVER_EVENT"])
  {
    v15 = 11;
  }

  else if ([v4 isEqualToString:@"FLOW_SERVER_EVENT"])
  {
    v15 = 12;
  }

  else if ([v4 isEqualToString:@"FLOW_CLIENT_EVENT"])
  {
    v15 = 13;
  }

  else if ([v4 isEqualToString:@"CAM_CLIENT_EVENT"])
  {
    v15 = 14;
  }

  else if ([v4 isEqualToString:@"UNIFIED_SIRI_PERFORMANCE_EVENT"])
  {
    v15 = 15;
  }

  else if ([v4 isEqualToString:@"GRR_CLIENT_EVENT"])
  {
    v15 = 16;
  }

  else if ([v4 isEqualToString:@"DIM_CLIENT_EVENT"])
  {
    v15 = 17;
  }

  else if ([v4 isEqualToString:@"NLX_CLIENT_EVENT"])
  {
    v15 = 18;
  }

  else if ([v4 isEqualToString:@"ORCH_CLIENT_EVENT"])
  {
    v15 = 19;
  }

  else if ([v4 isEqualToString:@"ASR_CLIENT_EVENT"])
  {
    v15 = 20;
  }

  else if ([v4 isEqualToString:@"DATA_UPLOAD_EVENT"])
  {
    v15 = 21;
  }

  else if ([v4 isEqualToString:@"IH_CLIENT_EVENT"])
  {
    v15 = 22;
  }

  else if ([v4 isEqualToString:@"MH_CLIENT_EVENT"])
  {
    v15 = 23;
  }

  else if ([v4 isEqualToString:@"TTS_CLIENT_EVENT"])
  {
    v15 = 24;
  }

  else if ([v4 isEqualToString:@"CLP_CLIENT_EVENT"])
  {
    v15 = 25;
  }

  else if ([v4 isEqualToString:@"RR_CLIENT_EVENT"])
  {
    v15 = 26;
  }

  else if ([v4 isEqualToString:@"CNV_CLIENT_EVENT"])
  {
    v15 = 27;
  }

  else if ([v4 isEqualToString:@"ANC_CLIENT_EVENT"])
  {
    v15 = 28;
  }

  else if ([v4 isEqualToString:@"ANC_SERVER_EVENT"])
  {
    v15 = 29;
  }

  else if ([v4 isEqualToString:@"DELETE_HISTORY_TRIGGER_SERVER_EVENT"])
  {
    v15 = 30;
  }

  else if ([v4 isEqualToString:@"HAL_CLIENT_EVENT"])
  {
    v15 = 31;
  }

  else if ([v4 isEqualToString:@"NET_CLIENT_EVENT"])
  {
    v15 = 32;
  }

  else if ([v4 isEqualToString:@"SAD_CLIENT_EVENT"])
  {
    v15 = 33;
  }

  else if ([v4 isEqualToString:@"DFI_DATA_EVENT"])
  {
    v15 = 34;
  }

  else if ([v4 isEqualToString:@"SERVER_ORDERED_ANY_EVENT"])
  {
    v15 = 35;
  }

  else if ([v4 isEqualToString:@"SERVER_REQUEST_LINK_EVENT"])
  {
    v15 = 36;
  }

  else if ([v4 isEqualToString:@"DODML_CLIENT_EVENT"])
  {
    v15 = 37;
  }

  else if ([v4 isEqualToString:@"PLUS_CLIENT_EVENT"])
  {
    v15 = 38;
  }

  else if ([v4 isEqualToString:@"EXP_SEARCH_CLIENT_EVENT"])
  {
    v15 = 39;
  }

  else if ([v4 isEqualToString:@"EXP_SIRI_CLIENT_EVENT"])
  {
    v15 = 40;
  }

  else if ([v4 isEqualToString:@"SRST_CLIENT_EVENT"])
  {
    v15 = 41;
  }

  else if ([v4 isEqualToString:@"POMMES_CLIENT_EVENT"])
  {
    v15 = 42;
  }

  else if ([v4 isEqualToString:@"MT_CLIENT_EVENT_V2"])
  {
    v15 = 43;
  }

  else if ([v4 isEqualToString:@"CDA_CLIENT_EVENT"])
  {
    v15 = 44;
  }

  else if ([v4 isEqualToString:@"MWT_CLIENT_EVENT"])
  {
    v15 = 45;
  }

  else if ([v4 isEqualToString:@"HOME_CLIENT_EVENT"])
  {
    v15 = 46;
  }

  else if ([v4 isEqualToString:@"OPT_IN_CHANGELOG_CLIENT_EVENT"])
  {
    v15 = 47;
  }

  else if ([v4 isEqualToString:@"OPT_IN_PROPAGATION_CLIENT_EVENT"])
  {
    v15 = 48;
  }

  else if ([v4 isEqualToString:@"PEGASUS_SERVER_EVENT"])
  {
    v15 = 49;
  }

  else if ([v4 isEqualToString:@"RSS_CLIENT_EVENT"])
  {
    v15 = 50;
  }

  else if ([v4 isEqualToString:@"EXP_SIRI_SERVER_EVENT"])
  {
    v15 = 51;
  }

  else if ([v4 isEqualToString:@"SUGGESTIONS_CLIENT_EVENT"])
  {
    v15 = 52;
  }

  else if ([v4 isEqualToString:@"FLOW_LINK_CLIENT_EVENT"])
  {
    v15 = 53;
  }

  else if ([v4 isEqualToString:@"RF_CLIENT_EVENT"])
  {
    v15 = 54;
  }

  else if ([v4 isEqualToString:@"SIRI_SERVER_ORDERED_ANY_EVENT"])
  {
    v15 = 55;
  }

  else if ([v4 isEqualToString:@"SIC_CLIENT_EVENT"])
  {
    v15 = 56;
  }

  else if ([v4 isEqualToString:@"INFERENCE_CLIENT_EVENT"])
  {
    v15 = 57;
  }

  else if ([v4 isEqualToString:@"CAAR_CLIENT_EVENT"])
  {
    v15 = 58;
  }

  else if ([v4 isEqualToString:@"RFG_CLIENT_EVENT"])
  {
    v15 = 59;
  }

  else if ([v4 isEqualToString:@"SMT_CLIENT_EVENT"])
  {
    v15 = 60;
  }

  else if ([v4 isEqualToString:@"SC_CLIENT_EVENT"])
  {
    v15 = 61;
  }

  else if ([v4 isEqualToString:@"SIRI_SETUP_CLIENT_EVENT"])
  {
    v15 = 62;
  }

  else if ([v4 isEqualToString:@"OPT_IN_CLIENT_EVENT"])
  {
    v15 = 63;
  }

  else if ([v4 isEqualToString:@"LOG_REDACTION_CLIENT_EVENT"])
  {
    v15 = 64;
  }

  else if ([v4 isEqualToString:@"PSE_CLIENT_EVENT"])
  {
    v15 = 65;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_CLIENT_EVENT"])
  {
    v15 = 66;
  }

  else if ([v4 isEqualToString:@"ACTIVATION_CLIENT_EVENT"])
  {
    v15 = 67;
  }

  else if ([v4 isEqualToString:@"IA_CLIENT_EVENT"])
  {
    v15 = 68;
  }

  else if ([v4 isEqualToString:@"NLG_CLIENT_EVENT"])
  {
    v15 = 69;
  }

  else if ([v4 isEqualToString:@"TTM_CLIENT_EVENT"])
  {
    v15 = 70;
  }

  else if ([v4 isEqualToString:@"TRP_REQUEST_LINK_CLIENT_EVENT"])
  {
    v15 = 71;
  }

  else if ([v4 isEqualToString:@"ODM_SIRI_CLIENT_EVENT"])
  {
    v15 = 72;
  }

  else if ([v4 isEqualToString:@"IDENTITY_CLIENT_EVENT"])
  {
    v15 = 73;
  }

  else if ([v4 isEqualToString:@"HOMEKIT_CLIENT_EVENT"])
  {
    v15 = 74;
  }

  else if ([v4 isEqualToString:@"READ_CLIENT_EVENT"])
  {
    v15 = 75;
  }

  else if ([v4 isEqualToString:@"OPAQUE_CLIENT_EVENT"])
  {
    v15 = 76;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_SERVER_EVENT"])
  {
    v15 = 77;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_GROUPING"])
  {
    v15 = 78;
  }

  else if ([v4 isEqualToString:@"GROUPED_MESSAGES_PRODUCER_METADATA"])
  {
    v15 = 79;
  }

  else if ([v4 isEqualToString:@"RTS_CLIENT_EVENT"])
  {
    v15 = 80;
  }

  else if ([v4 isEqualToString:@"ODD_SIRI_CLIENT_EVENT"])
  {
    v15 = 81;
  }

  else if ([v4 isEqualToString:@"SESSION_EVENT"])
  {
    v15 = 82;
  }

  else if ([v4 isEqualToString:@"SESSION_BYTE_EVENT"])
  {
    v15 = 83;
  }

  else if ([v4 isEqualToString:@"ODBATCH_CLIENT_EVENT"])
  {
    v15 = 84;
  }

  else if ([v4 isEqualToString:@"NLROUTER_CLIENT_EVENT"])
  {
    v15 = 85;
  }

  else if ([v4 isEqualToString:@"PFA_CLIENT_EVENT"])
  {
    v15 = 86;
  }

  else if ([v4 isEqualToString:@"SPEECH_DONATION_EVENT"])
  {
    v15 = 87;
  }

  else if ([v4 isEqualToString:@"SR_CLIENT_EVENT"])
  {
    v15 = 88;
  }

  else if ([v4 isEqualToString:@"IFT_CLIENT_EVENT"])
  {
    v15 = 89;
  }

  else if ([v4 isEqualToString:@"CM_CLIENT_EVENT"])
  {
    v15 = 90;
  }

  else if ([v4 isEqualToString:@"PNR_ON_DEVICE_CLIENT_EVENT"])
  {
    v15 = 91;
  }

  else if ([v4 isEqualToString:@"JR_CLIENT_EVENT"])
  {
    v15 = 92;
  }

  else if ([v4 isEqualToString:@"RG_CLIENT_EVENT"])
  {
    v15 = 93;
  }

  else if ([v4 isEqualToString:@"PR_CLIENT_EVENT"])
  {
    v15 = 94;
  }

  else if ([v4 isEqualToString:@"QUERY_DECORATION_CLIENT_EVENT"])
  {
    v15 = 95;
  }

  else if ([v4 isEqualToString:@"PG_CLIENT_EVENT"])
  {
    v15 = 96;
  }

  else if ([v4 isEqualToString:@"DIALOGENGINE_CLIENT_EVENT"])
  {
    v15 = 97;
  }

  else if ([v4 isEqualToString:@"UAF_CLIENT_EVENT"])
  {
    v15 = 98;
  }

  else if ([v4 isEqualToString:@"IF_PLATFORM_CLIENT_EVENT"])
  {
    v15 = 99;
  }

  else if ([v4 isEqualToString:@"IF_PLATFORM_REQUEST_CLIENT_EVENT"])
  {
    v15 = 100;
  }

  else if ([v4 isEqualToString:@"FL_CLIENT_EVENT"])
  {
    v15 = 101;
  }

  else if ([v4 isEqualToString:@"SEARCH_TOOL_CLIENT_EVENT"])
  {
    v15 = 102;
  }

  else if ([v4 isEqualToString:@"ODSAMPLE_CLIENT_EVENT"])
  {
    v15 = 103;
  }

  else if ([v4 isEqualToString:@"GAT_CLIENT_EVENT"])
  {
    v15 = 104;
  }

  else if ([v4 isEqualToString:@"EXECUTOR_CLIENT_EVENT"])
  {
    v15 = 106;
  }

  else if ([v4 isEqualToString:@"ODFUNNEL_SIRI_CLIENT_EVENT"])
  {
    v15 = 107;
  }

  else if ([v4 isEqualToString:@"GMS_CLIENT_EVENT"])
  {
    v15 = 108;
  }

  else if ([v4 isEqualToString:@"CLOUDKIT_CLIENT_EVENT"])
  {
    v15 = 109;
  }

  else if ([v4 isEqualToString:@"ASR_SPEECH_PROFILE_CLIENT_EVENT"])
  {
    v15 = 112;
  }

  else if ([v4 isEqualToString:@"ASV_CLIENT_EVENT"])
  {
    v15 = 113;
  }

  else
  {
    v15 = 0;
  }

LABEL_237:

  v20 = objc_allocWithZone(MEMORY[0x277D5A790]);
  sub_24871D610(v5, v3);
  v21 = v3;
  v22 = v5;
  v23 = sub_2487308A0();
  sub_248702D3C(v22, v21);
  v24 = [v20 initWithAnyEventType:v15 payload:v23];

  v25 = [v24 unwrap];
  if (!v25)
  {
    sub_248702D3C(v22, v21);
    goto LABEL_245;
  }

  v92 = v22;
  if (v12 >= 3)
  {
    sub_2486C5B68(a1 + 96, &v102);
    v26 = MEMORY[0x277D837D0];
    v27 = swift_dynamicCast();
    v28 = v92;
    v29 = v21;
    if (v27)
    {
      static UserDefinedFunctions.getValueAtPath(parsedPayload:inputKeyPath:error:functionName:)(v25, v97, v98, a2, 0x7465675F72747370, 0xE800000000000000, &v102);

      if (!v104)
      {
        goto LABEL_280;
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        type metadata accessor for UndefinedField();
        if (swift_dynamicCast())
        {

          goto LABEL_277;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        if (swift_dynamicCast())
        {
          if (v94 == 0xD000000000000010 && 0x800000024873D1F0 == v95)
          {

            goto LABEL_277;
          }

          v60 = sub_248731880();

          if (v60)
          {
LABEL_277:
            if (a2)
            {
              v61 = type metadata accessor for SQLDatabaseError();
              v91 = objc_allocWithZone(v61);
              v62 = sub_248730FC0();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
              v63 = swift_initStackObject();
              *(v63 + 16) = xmmword_2487335F0;
              *(v63 + 32) = sub_248730FF0();
              *(v63 + 72) = v26;
              *(v63 + 40) = v64;
              *(v63 + 48) = 0xD000000000000033;
              *(v63 + 56) = 0x800000024873D3B0;
              sub_2486D3554(v63);
              swift_setDeallocating();
              sub_2486C7940(v63 + 32, &unk_27EEA5FE0, &qword_248735AA0);
              v65 = sub_248730F00();

              v28 = v92;
              v93.receiver = v91;
              v93.super_class = v61;
              v66 = objc_msgSendSuper2(&v93, sel_initWithDomain_code_userInfo_, v62, -1, v65);
LABEL_279:
              v67 = v66;

              v68 = v67;
              *a2 = v67;
            }

LABEL_280:
            sub_248702D3C(v28, v29);

            *a3 = 0u;
            *(a3 + 16) = 0u;
            goto LABEL_281;
          }
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v54 = MEMORY[0x277D849A8];
        if (swift_dynamicCast())
        {
          v55 = v94;
          *(a3 + 24) = v54;
          sub_248702D3C(v28, v21);

          *a3 = v55;
LABEL_281:
          sub_2486C7940(&v102, &qword_27EEA64E0, &qword_248733800);
          return;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v56 = MEMORY[0x277D84A28];
        if (swift_dynamicCast())
        {
          v57 = v94;
          *(a3 + 24) = v56;
          sub_248702D3C(v28, v21);

          *a3 = v57;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v58 = MEMORY[0x277D83A90];
        if (swift_dynamicCast())
        {
          v59 = v94;
          *(a3 + 24) = v58;
          sub_248702D3C(v28, v21);

          *a3 = v59;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v69 = MEMORY[0x277D839F8];
        if (swift_dynamicCast())
        {
          v70 = v94;
          *(a3 + 24) = v69;
          sub_248702D3C(v28, v21);

          *a3 = v70;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v71 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          v72 = v94;
          v73 = v95;
          *(a3 + 24) = v71;
          sub_248702D3C(v28, v21);

          *a3 = v72;
          *(a3 + 8) = v73;
          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      sub_248728C48(&v102, &v97);
      if (v99)
      {
        v74 = MEMORY[0x277CC9318];
        if (swift_dynamicCast())
        {
          v75 = v74;
          v90 = v25;
          v76 = v94;
          v77 = v95;
          v78 = objc_allocWithZone(MEMORY[0x277D5AC78]);
          sub_24871D610(v76, v77);
          v79 = sub_2487308A0();
          v80 = [v78 initWithBytesAsData_];

          sub_2486CC7FC(v76, v77);
          v81 = v91;
          sub_248731380();

          v82 = sub_2487309B0();
          v83 = *(v82 - 8);
          if ((*(v83 + 48))(v81, 1, v82) == 1)
          {
            sub_2486C7940(v81, &qword_27EEA5D90, &qword_2487333C0);
            *(a3 + 24) = v75;
            sub_248702D3C(v92, v29);

            *a3 = v76;
            *(a3 + 8) = v77;
          }

          else
          {
            v87 = sub_248730980();
            v89 = v88;
            (*(v83 + 8))(v81, v82);
            *(a3 + 24) = MEMORY[0x277D837D0];
            sub_248702D3C(v92, v29);

            sub_2486CC7FC(v76, v77);
            *a3 = v87;
            *(a3 + 8) = v89;
          }

          goto LABEL_281;
        }
      }

      else
      {
        sub_2486C7940(&v97, &qword_27EEA64E0, &qword_248733800);
      }

      if (!a2)
      {
        goto LABEL_280;
      }

      v84 = type metadata accessor for SQLDatabaseError();
      v91 = objc_allocWithZone(v84);
      v62 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v85 = swift_initStackObject();
      *(v85 + 16) = xmmword_2487335F0;
      *(v85 + 32) = sub_248730FF0();
      *(v85 + 72) = v26;
      *(v85 + 40) = v86;
      *(v85 + 48) = 0xD000000000000038;
      *(v85 + 56) = 0x800000024873D370;
      sub_2486D3554(v85);
      swift_setDeallocating();
      sub_2486C7940(v85 + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v65 = sub_248730F00();

      v28 = v92;
      v96.receiver = v91;
      v96.super_class = v84;
      v66 = objc_msgSendSuper2(&v96, sel_initWithDomain_code_userInfo_, v62, -1, v65);
      goto LABEL_279;
    }

    if (a2)
    {
      v45 = type metadata accessor for SQLDatabaseError();
      v90 = objc_allocWithZone(v45);
      v46 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      v47 = swift_initStackObject();
      *(v47 + 16) = xmmword_2487335F0;
      v48 = sub_248730FF0();
      v91 = v29;
      v49 = v25;
      *(v47 + 32) = v48;
      *(v47 + 72) = v26;
      *(v47 + 40) = v50;
      *(v47 + 48) = 0xD00000000000002BLL;
      *(v47 + 56) = 0x800000024873D340;
      sub_2486D3554(v47);
      swift_setDeallocating();
      sub_2486C7940(v47 + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v51 = sub_248730F00();

      v100.receiver = v90;
      v100.super_class = v45;
      v28 = v92;
      v52 = objc_msgSendSuper2(&v100, sel_initWithDomain_code_userInfo_, v46, -1, v51);

      v25 = v49;
      v29 = v91;
      v53 = v52;
      *a2 = v52;
    }

    sub_248702D3C(v28, v29);

LABEL_254:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return;
  }

  __break(1u);
}

uint64_t sub_248725D44(uint64_t a1, void *a2)
{
  v93 = *MEMORY[0x277D85DE8];
  v5 = sub_248731030();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  if (!v9)
  {
    __break(1u);
LABEL_29:
    if ([v9 isEqualToString:@"SIRI_UNDER_TEST_EVENT"])
    {
      v19 = 8;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"REQUEST_LINK_EVENT"])
    {
      v19 = 9;
      goto LABEL_237;
    }

LABEL_34:
    if ([v9 isEqualToString:@"ABE_CLIENT_EVENT"])
    {
      v19 = 10;
    }

    else if ([v9 isEqualToString:@"ABE_SERVER_EVENT"])
    {
      v19 = 11;
    }

    else if ([v9 isEqualToString:@"FLOW_SERVER_EVENT"])
    {
      v19 = 12;
    }

    else if ([v9 isEqualToString:@"FLOW_CLIENT_EVENT"])
    {
      v19 = 13;
    }

    else if ([v9 isEqualToString:@"CAM_CLIENT_EVENT"])
    {
      v19 = 14;
    }

    else if ([v9 isEqualToString:@"UNIFIED_SIRI_PERFORMANCE_EVENT"])
    {
      v19 = 15;
    }

    else if ([v9 isEqualToString:@"GRR_CLIENT_EVENT"])
    {
      v19 = 16;
    }

    else if ([v9 isEqualToString:@"DIM_CLIENT_EVENT"])
    {
      v19 = 17;
    }

    else if ([v9 isEqualToString:@"NLX_CLIENT_EVENT"])
    {
      v19 = 18;
    }

    else if ([v9 isEqualToString:@"ORCH_CLIENT_EVENT"])
    {
      v19 = 19;
    }

    else if ([v9 isEqualToString:@"ASR_CLIENT_EVENT"])
    {
      v19 = 20;
    }

    else if ([v9 isEqualToString:@"DATA_UPLOAD_EVENT"])
    {
      v19 = 21;
    }

    else if ([v9 isEqualToString:@"IH_CLIENT_EVENT"])
    {
      v19 = 22;
    }

    else if ([v9 isEqualToString:@"MH_CLIENT_EVENT"])
    {
      v19 = 23;
    }

    else if ([v9 isEqualToString:@"TTS_CLIENT_EVENT"])
    {
      v19 = 24;
    }

    else if ([v9 isEqualToString:@"CLP_CLIENT_EVENT"])
    {
      v19 = 25;
    }

    else if ([v9 isEqualToString:@"RR_CLIENT_EVENT"])
    {
      v19 = 26;
    }

    else if ([v9 isEqualToString:@"CNV_CLIENT_EVENT"])
    {
      v19 = 27;
    }

    else if ([v9 isEqualToString:@"ANC_CLIENT_EVENT"])
    {
      v19 = 28;
    }

    else if ([v9 isEqualToString:@"ANC_SERVER_EVENT"])
    {
      v19 = 29;
    }

    else if ([v9 isEqualToString:@"DELETE_HISTORY_TRIGGER_SERVER_EVENT"])
    {
      v19 = 30;
    }

    else if ([v9 isEqualToString:@"HAL_CLIENT_EVENT"])
    {
      v19 = 31;
    }

    else if ([v9 isEqualToString:@"NET_CLIENT_EVENT"])
    {
      v19 = 32;
    }

    else if ([v9 isEqualToString:@"SAD_CLIENT_EVENT"])
    {
      v19 = 33;
    }

    else if ([v9 isEqualToString:@"DFI_DATA_EVENT"])
    {
      v19 = 34;
    }

    else if ([v9 isEqualToString:@"SERVER_ORDERED_ANY_EVENT"])
    {
      v19 = 35;
    }

    else if ([v9 isEqualToString:@"SERVER_REQUEST_LINK_EVENT"])
    {
      v19 = 36;
    }

    else if ([v9 isEqualToString:@"DODML_CLIENT_EVENT"])
    {
      v19 = 37;
    }

    else if ([v9 isEqualToString:@"PLUS_CLIENT_EVENT"])
    {
      v19 = 38;
    }

    else if ([v9 isEqualToString:@"EXP_SEARCH_CLIENT_EVENT"])
    {
      v19 = 39;
    }

    else if ([v9 isEqualToString:@"EXP_SIRI_CLIENT_EVENT"])
    {
      v19 = 40;
    }

    else if ([v9 isEqualToString:@"SRST_CLIENT_EVENT"])
    {
      v19 = 41;
    }

    else if ([v9 isEqualToString:@"POMMES_CLIENT_EVENT"])
    {
      v19 = 42;
    }

    else if ([v9 isEqualToString:@"MT_CLIENT_EVENT_V2"])
    {
      v19 = 43;
    }

    else if ([v9 isEqualToString:@"CDA_CLIENT_EVENT"])
    {
      v19 = 44;
    }

    else if ([v9 isEqualToString:@"MWT_CLIENT_EVENT"])
    {
      v19 = 45;
    }

    else if ([v9 isEqualToString:@"HOME_CLIENT_EVENT"])
    {
      v19 = 46;
    }

    else if ([v9 isEqualToString:@"OPT_IN_CHANGELOG_CLIENT_EVENT"])
    {
      v19 = 47;
    }

    else if ([v9 isEqualToString:@"OPT_IN_PROPAGATION_CLIENT_EVENT"])
    {
      v19 = 48;
    }

    else if ([v9 isEqualToString:@"PEGASUS_SERVER_EVENT"])
    {
      v19 = 49;
    }

    else if ([v9 isEqualToString:@"RSS_CLIENT_EVENT"])
    {
      v19 = 50;
    }

    else if ([v9 isEqualToString:@"EXP_SIRI_SERVER_EVENT"])
    {
      v19 = 51;
    }

    else if ([v9 isEqualToString:@"SUGGESTIONS_CLIENT_EVENT"])
    {
      v19 = 52;
    }

    else if ([v9 isEqualToString:@"FLOW_LINK_CLIENT_EVENT"])
    {
      v19 = 53;
    }

    else if ([v9 isEqualToString:@"RF_CLIENT_EVENT"])
    {
      v19 = 54;
    }

    else if ([v9 isEqualToString:@"SIRI_SERVER_ORDERED_ANY_EVENT"])
    {
      v19 = 55;
    }

    else if ([v9 isEqualToString:@"SIC_CLIENT_EVENT"])
    {
      v19 = 56;
    }

    else if ([v9 isEqualToString:@"INFERENCE_CLIENT_EVENT"])
    {
      v19 = 57;
    }

    else if ([v9 isEqualToString:@"CAAR_CLIENT_EVENT"])
    {
      v19 = 58;
    }

    else if ([v9 isEqualToString:@"RFG_CLIENT_EVENT"])
    {
      v19 = 59;
    }

    else if ([v9 isEqualToString:@"SMT_CLIENT_EVENT"])
    {
      v19 = 60;
    }

    else if ([v9 isEqualToString:@"SC_CLIENT_EVENT"])
    {
      v19 = 61;
    }

    else if ([v9 isEqualToString:@"SIRI_SETUP_CLIENT_EVENT"])
    {
      v19 = 62;
    }

    else if ([v9 isEqualToString:@"OPT_IN_CLIENT_EVENT"])
    {
      v19 = 63;
    }

    else if ([v9 isEqualToString:@"LOG_REDACTION_CLIENT_EVENT"])
    {
      v19 = 64;
    }

    else if ([v9 isEqualToString:@"PSE_CLIENT_EVENT"])
    {
      v19 = 65;
    }

    else if ([v9 isEqualToString:@"GROUPED_MESSAGES_CLIENT_EVENT"])
    {
      v19 = 66;
    }

    else if ([v9 isEqualToString:@"ACTIVATION_CLIENT_EVENT"])
    {
      v19 = 67;
    }

    else if ([v9 isEqualToString:@"IA_CLIENT_EVENT"])
    {
      v19 = 68;
    }

    else if ([v9 isEqualToString:@"NLG_CLIENT_EVENT"])
    {
      v19 = 69;
    }

    else if ([v9 isEqualToString:@"TTM_CLIENT_EVENT"])
    {
      v19 = 70;
    }

    else if ([v9 isEqualToString:@"TRP_REQUEST_LINK_CLIENT_EVENT"])
    {
      v19 = 71;
    }

    else if ([v9 isEqualToString:@"ODM_SIRI_CLIENT_EVENT"])
    {
      v19 = 72;
    }

    else if ([v9 isEqualToString:@"IDENTITY_CLIENT_EVENT"])
    {
      v19 = 73;
    }

    else if ([v9 isEqualToString:@"HOMEKIT_CLIENT_EVENT"])
    {
      v19 = 74;
    }

    else if ([v9 isEqualToString:@"READ_CLIENT_EVENT"])
    {
      v19 = 75;
    }

    else if ([v9 isEqualToString:@"OPAQUE_CLIENT_EVENT"])
    {
      v19 = 76;
    }

    else if ([v9 isEqualToString:@"GROUPED_MESSAGES_SERVER_EVENT"])
    {
      v19 = 77;
    }

    else if ([v9 isEqualToString:@"GROUPED_MESSAGES_GROUPING"])
    {
      v19 = 78;
    }

    else if ([v9 isEqualToString:@"GROUPED_MESSAGES_PRODUCER_METADATA"])
    {
      v19 = 79;
    }

    else if ([v9 isEqualToString:@"RTS_CLIENT_EVENT"])
    {
      v19 = 80;
    }

    else if ([v9 isEqualToString:@"ODD_SIRI_CLIENT_EVENT"])
    {
      v19 = 81;
    }

    else if ([v9 isEqualToString:@"SESSION_EVENT"])
    {
      v19 = 82;
    }

    else if ([v9 isEqualToString:@"SESSION_BYTE_EVENT"])
    {
      v19 = 83;
    }

    else if ([v9 isEqualToString:@"ODBATCH_CLIENT_EVENT"])
    {
      v19 = 84;
    }

    else if ([v9 isEqualToString:@"NLROUTER_CLIENT_EVENT"])
    {
      v19 = 85;
    }

    else if ([v9 isEqualToString:@"PFA_CLIENT_EVENT"])
    {
      v19 = 86;
    }

    else if ([v9 isEqualToString:@"SPEECH_DONATION_EVENT"])
    {
      v19 = 87;
    }

    else if ([v9 isEqualToString:@"SR_CLIENT_EVENT"])
    {
      v19 = 88;
    }

    else if ([v9 isEqualToString:@"IFT_CLIENT_EVENT"])
    {
      v19 = 89;
    }

    else if ([v9 isEqualToString:@"CM_CLIENT_EVENT"])
    {
      v19 = 90;
    }

    else if ([v9 isEqualToString:@"PNR_ON_DEVICE_CLIENT_EVENT"])
    {
      v19 = 91;
    }

    else if ([v9 isEqualToString:@"JR_CLIENT_EVENT"])
    {
      v19 = 92;
    }

    else if ([v9 isEqualToString:@"RG_CLIENT_EVENT"])
    {
      v19 = 93;
    }

    else if ([v9 isEqualToString:@"PR_CLIENT_EVENT"])
    {
      v19 = 94;
    }

    else if ([v9 isEqualToString:@"QUERY_DECORATION_CLIENT_EVENT"])
    {
      v19 = 95;
    }

    else if ([v9 isEqualToString:@"PG_CLIENT_EVENT"])
    {
      v19 = 96;
    }

    else if ([v9 isEqualToString:@"DIALOGENGINE_CLIENT_EVENT"])
    {
      v19 = 97;
    }

    else if ([v9 isEqualToString:@"UAF_CLIENT_EVENT"])
    {
      v19 = 98;
    }

    else if ([v9 isEqualToString:@"IF_PLATFORM_CLIENT_EVENT"])
    {
      v19 = 99;
    }

    else if ([v9 isEqualToString:@"IF_PLATFORM_REQUEST_CLIENT_EVENT"])
    {
      v19 = 100;
    }

    else if ([v9 isEqualToString:@"FL_CLIENT_EVENT"])
    {
      v19 = 101;
    }

    else if ([v9 isEqualToString:@"SEARCH_TOOL_CLIENT_EVENT"])
    {
      v19 = 102;
    }

    else if ([v9 isEqualToString:@"ODSAMPLE_CLIENT_EVENT"])
    {
      v19 = 103;
    }

    else if ([v9 isEqualToString:@"GAT_CLIENT_EVENT"])
    {
      v19 = 104;
    }

    else if ([v9 isEqualToString:@"EXECUTOR_CLIENT_EVENT"])
    {
      v19 = 106;
    }

    else if ([v9 isEqualToString:@"ODFUNNEL_SIRI_CLIENT_EVENT"])
    {
      v19 = 107;
    }

    else if ([v9 isEqualToString:@"GMS_CLIENT_EVENT"])
    {
      v19 = 108;
    }

    else if ([v9 isEqualToString:@"CLOUDKIT_CLIENT_EVENT"])
    {
      v19 = 109;
    }

    else if ([v9 isEqualToString:@"ASR_SPEECH_PROFILE_CLIENT_EVENT"])
    {
      v19 = 112;
    }

    else if ([v9 isEqualToString:@"ASV_CLIENT_EVENT"])
    {
      v19 = 113;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_237;
  }

  sub_2486C5B68(a1 + 32, &v88);
  if ((swift_dynamicCast() & 1) == 0)
  {
    if (qword_27EEA59C0 != -1)
    {
      swift_once();
    }

    v15 = sub_248730DF0();
    __swift_project_value_buffer(v15, qword_27EEA6858);
    v16 = sub_248730DD0();
    v17 = sub_2487313C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2486BF000, v16, v17, "pstr_json() returning nil because event payload is empty, check if eventFilter in your UnifiedSiriTurn class includes all necessary types.", v18, 2u);
      MEMORY[0x24C1D8100](v18, -1, -1);
    }

    return 0;
  }

  v81 = a2;
  v10 = sub_248730880();
  v2 = v11;

  if (v2 >> 60 == 15)
  {
    goto LABEL_246;
  }

  if (v9 == 1)
  {
    __break(1u);
    goto LABEL_34;
  }

  sub_2486C5B68(a1 + 64, &v88);
  v12 = MEMORY[0x277D837D0];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_248702D3C(v10, v2);
    goto LABEL_246;
  }

  v80 = v2;
  v2 = v12;
  v13 = sub_248730FC0();

  v9 = v13;
  v14 = [v9 isEqualToString:@"UNKNOWN_EVENT"];
  v79 = v10;
  if ((v14 & 1) == 0)
  {
    if ([v9 isEqualToString:@"UEI_CLIENT_EVENT"])
    {
      v19 = 1;
LABEL_237:
      LODWORD(v78) = v19;
      goto LABEL_238;
    }

    if ([v9 isEqualToString:@"UEI_SERVER_EVENT"])
    {
      v19 = 2;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"DAILY_DEVICE_STATUS"])
    {
      v19 = 3;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"MT_CLIENT_EVENT"])
    {
      v19 = 4;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"PROACTIVE_EVENT_TRACKER"])
    {
      v19 = 5;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"ORDERED_ANY_EVENT"])
    {
      v19 = 6;
      goto LABEL_237;
    }

    if ([v9 isEqualToString:@"PROVISIONAL_EVENT"])
    {
      v19 = 7;
      goto LABEL_237;
    }

    goto LABEL_29;
  }

  LODWORD(v78) = 0;
LABEL_238:

  v20 = objc_allocWithZone(MEMORY[0x277D5A790]);
  v22 = v79;
  v21 = v80;
  sub_24871D610(v79, v80);
  v23 = sub_2487308A0();
  sub_248702D3C(v22, v21);
  v24 = [v20 initWithAnyEventType:v78 payload:v23];

  v25 = [v24 unwrap];
  if (v25)
  {
    v26 = [v25 formattedJsonBody];
    if (v26)
    {
      v27 = v26;
      sub_248730FF0();

      sub_248731020();
      v28 = sub_248731000();
      v30 = v29;
      v22 = v79;

      (*(v6 + 8))(v8, v5);
      if (v30 >> 60 != 15)
      {
        v31 = objc_opt_self();
        v32 = sub_2487308A0();
        *&v84[0] = 0;
        v33 = [v31 JSONObjectWithData:v32 options:1 error:v84];

        v34 = *&v84[0];
        if (v33)
        {
          sub_2487315A0();
          swift_unknownObjectRelease();
          sub_2486C79A0(&v88, &v91);
          __swift_project_boxed_opaque_existential_1(&v91, v92);
          v35 = sub_248731870();
          *&v88 = 0;
          v36 = [v31 dataWithJSONObject:v35 options:1 error:&v88];
          swift_unknownObjectRelease();
          v37 = v88;
          if (v36)
          {
            v38 = v28;
            v39 = sub_2487308C0();
            v41 = v40;

            sub_24871D610(v39, v41);
            v42 = sub_248728738(v39, v41);
            if (v43)
            {
              v44 = v42;
              sub_2486CC7FC(v39, v41);
              sub_248702D3C(v38, v30);

              v45 = v22;
              v46 = v80;
            }

            else
            {
              v86 = v39;
              v87 = v41;
              sub_24871D610(v39, v41);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6888, &qword_248736060);
              v74 = swift_dynamicCast();
              v75 = v80;
              if (v74)
              {
                v81 = 0;
                sub_2486CD01C(v84, &v88);
                __swift_project_boxed_opaque_existential_1(&v88, v89);
                v76 = sub_248731800();
                sub_2486CC7FC(v39, v41);
                if (v76)
                {
                  v78 = v90;
                  __swift_project_boxed_opaque_existential_1(&v88, v89);
                  sub_2487317F0();
                  sub_248702D3C(v38, v30);

                  sub_248702D3C(v79, v75);
                  sub_2486CC7FC(v39, v41);
                  v44 = *&v84[0];
                  __swift_destroy_boxed_opaque_existential_0(&v88);
LABEL_269:
                  __swift_destroy_boxed_opaque_existential_0(&v91);
                  return v44;
                }

                __swift_destroy_boxed_opaque_existential_0(&v88);
                v22 = v79;
              }

              else
              {
                sub_2486CC7FC(v39, v41);
                v85 = 0;
                memset(v84, 0, sizeof(v84));
                sub_2486C7940(v84, &qword_27EEA6890, &qword_248736068);
              }

              v44 = sub_248728448(v39, v41);
              sub_248702D3C(v38, v30);

              v45 = v22;
              v46 = v75;
            }

            sub_248702D3C(v45, v46);
            sub_2486CC7FC(v39, v41);
            goto LABEL_269;
          }

          v64 = v37;
          v65 = sub_2487307E0();

          swift_willThrow();
          sub_248702D3C(v28, v30);

          __swift_destroy_boxed_opaque_existential_0(&v91);
        }

        else
        {
          v62 = v34;
          v63 = sub_2487307E0();

          swift_willThrow();
          sub_248702D3C(v28, v30);
        }
      }
    }

    v66 = v81;
    if (v81)
    {
      v67 = type metadata accessor for SQLDatabaseError();
      v79 = objc_allocWithZone(v67);
      v68 = sub_248730FC0();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2487335F0;
      *(inited + 32) = sub_248730FF0();
      *(inited + 72) = v2;
      *(inited + 40) = v70;
      *(inited + 48) = 0xD00000000000002CLL;
      *(inited + 56) = 0x800000024873D2D0;
      sub_2486D3554(inited);
      swift_setDeallocating();
      sub_2486C7940(inited + 32, &unk_27EEA5FE0, &qword_248735AA0);
      v71 = sub_248730F00();

      v82.receiver = v79;
      v82.super_class = v67;
      v72 = objc_msgSendSuper2(&v82, sel_initWithDomain_code_userInfo_, v68, -1, v71);

      v73 = v72;
      *v66 = v72;
    }

    sub_248702D3C(v22, v80);

    return 0;
  }

  sub_248702D3C(v22, v21);
LABEL_246:
  sub_2486C5B68(a1 + 32, &v88);
  v47 = MEMORY[0x277D837D0];
  v48 = swift_dynamicCast();
  if (v48)
  {
    v49 = *(&v84[0] + 1);
  }

  else
  {
    v49 = 0;
  }

  v50 = v81;
  if (!v81)
  {

    return 0;
  }

  if (v48)
  {
    v51 = *&v84[0];
  }

  else
  {
    v51 = 0;
  }

  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_248731650();
  MEMORY[0x24C1D70A0](0xD000000000000038, 0x800000024873D290);
  *&v84[0] = v51;
  *(&v84[0] + 1) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6880, &qword_248736058);
  sub_248731710();

  v52 = v88;
  v53 = type metadata accessor for SQLDatabaseError();
  v54 = objc_allocWithZone(v53);
  v55 = sub_248730FC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FF0, qword_248734180);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_2487335F0;
  *(v56 + 32) = sub_248730FF0();
  *(v56 + 72) = v47;
  *(v56 + 40) = v57;
  *(v56 + 48) = v52;
  sub_2486D3554(v56);
  swift_setDeallocating();
  sub_2486C7940(v56 + 32, &unk_27EEA5FE0, &qword_248735AA0);
  v58 = sub_248730F00();

  v83.receiver = v54;
  v83.super_class = v53;
  v59 = objc_msgSendSuper2(&v83, sel_initWithDomain_code_userInfo_, v55, -1, v58);

  v60 = v59;
  result = 0;
  *v50 = v59;
  return result;
}

unint64_t sub_2487273F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_2487311D0() != a1 || v9 != a2)
  {
    v10 = sub_248731880();

    if (v10)
    {
      return v8;
    }

    v8 = sub_2487310F0();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unint64_t sub_2487274E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return sub_2487311F0();
  }

  __break(1u);
  return result;
}

id SISchemaInstrumentationMessage.value(forUndefinedKey:)@<X0>(void *a2@<X8>)
{
  v3 = type metadata accessor for UndefinedField();
  result = [objc_allocWithZone(v3) init];
  a2[3] = v3;
  *a2 = result;
  return result;
}

id sub_24872756C(uint64_t a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for UndefinedField()) init];

  return v1;
}

id SISchemaInstrumentationMessage.value(forKey:)@<X0>(_OWORD *a3@<X8>)
{
  v5 = sub_248730FC0();
  v15.receiver = v3;
  v15.super_class = MEMORY[0x277D5A918];
  v6 = objc_msgSendSuper2(&v15, sel_valueForKey_, v5);

  if (v6)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v16 = v13;
  v17 = v14;
  sub_248728C48(&v16, &v13);
  if (!*(&v14 + 1))
  {
    result = sub_2486C7940(&v13, &qword_27EEA64E0, &qword_248733800);
    goto LABEL_11;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_11:
    v12 = v17;
    *a3 = v16;
    a3[1] = v12;
    return result;
  }

  result = [v3 dictionaryRepresentation];
  if (result)
  {
    v8 = result;
    v9 = sub_248730F10();

    sub_248731600();
    if (*(v9 + 16) && (v10 = sub_2486C9640(&v13), (v11 & 1) != 0))
    {
      sub_2486C5B68(*(v9 + 56) + 32 * v10, a3);
      sub_2486CA134(&v13);
      sub_2486C7940(&v16, &qword_27EEA64E0, &qword_248733800);
    }

    else
    {

      sub_2486CA134(&v13);
      result = sub_2486C7940(&v16, &qword_27EEA64E0, &qword_248733800);
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_248727794(void *a1, uint64_t a2, uint64_t a3)
{
  sub_248730FF0();
  v4 = a1;
  SISchemaInstrumentationMessage.value(forKey:)(&v12);

  v5 = v13;
  if (v13)
  {
    v6 = __swift_project_boxed_opaque_existential_1(&v12, v13);
    v7 = *(v5 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9);
    v10 = sub_248731870();
    (*(v7 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0(&v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

id sub_2487278F8()
{
  v0 = sub_248731890();

  return v0;
}

id sub_248727990(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UndefinedField();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_2487279C8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5FC8, &unk_248736070);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_248727A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_248728D7C();

  result = sub_2487311E0();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_248727FD4(result, v7);
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_2487316A0();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_248727FD4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2487311F0();
  v6 = sub_248728054(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_248728054(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_248731560();
    if (!v9 || (v10 = v9, v11 = sub_2487279C8(v9, 0), v12 = sub_2487281AC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_2487310C0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_2487310C0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2487316A0();
LABEL_4:

  return sub_2487310C0();
}

unint64_t sub_2487281AC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2487283CC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_248731190();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2487316A0();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2487283CC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_248731160();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2487283CC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2487311B0();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1D70F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_248728448(uint64_t a1, unint64_t a2)
{
  sub_24871D610(a1, a2);
  sub_2487285BC(a1, a2);
  v4 = sub_2487310B0();

  return v4;
}

uint64_t sub_2487284B4@<X0>(uint64_t *a3@<X8>)
{
  result = sub_2487310B0();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_2487284F0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2487316A0();
  }

  result = sub_248728DD0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

void *sub_2487285BC(uint64_t a1, unint64_t a2)
{
  v4 = sub_2487308E0();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_12:
      sub_2486CC7FC(a1, a2);
      return MEMORY[0x277D84F90];
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      if (v10)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v9)
    {
      goto LABEL_10;
    }

    v10 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v13 = sub_2487279C8(v10, 0);
      v14 = sub_248730870();
      sub_2486CC7FC(a1, a2);
      v15 = *(v5 + 8);
      v5 += 8;
      v15(v8, v4);
      result = v13;
      if (v14 == v10)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v16 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v10 = v16;
      if (!v16)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_248728738(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return sub_2487310B0();
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    return sub_2487310B0();
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_2487307A0();
  if (a1)
  {
    a1 = sub_2487307C0();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_2487307A0() || !__OFSUB__(v5, sub_2487307C0()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_2487307B0();
  return sub_2487310B0();
}

char *_s26DeepThoughtBiomeFoundation20UserDefinedFunctionsO010predefinedG0SayAA18FunctionDefinitionVGyFZ_0()
{
  v0 = sub_2486C4B44(0, 1, 1, MEMORY[0x277D84F90]);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2486C4B44((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  *(v5 + 4) = 0xD000000000000015;
  *(v5 + 5) = 0x800000024873D7C0;
  *(v5 + 12) = 1;
  *(v5 + 7) = sub_2487206B4;
  *(v5 + 8) = 0;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_2486C4B44((v1 > 1), v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 4) = 0xD000000000000011;
  *(v7 + 5) = 0x800000024873D7E0;
  *(v7 + 12) = 2;
  *(v7 + 7) = sub_2487206CC;
  *(v7 + 8) = 0;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_2486C4B44((v8 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[40 * v6];
  *(v10 + 4) = 0xD000000000000015;
  *(v10 + 5) = 0x800000024873D800;
  *(v10 + 12) = 1;
  *(v10 + 7) = sub_2487206E4;
  *(v10 + 8) = 0;
  v11 = *(v0 + 3);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_2486C4B44((v11 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v12;
  v13 = &v0[40 * v9];
  *(v13 + 4) = 0x7465675F70;
  *(v13 + 5) = 0xE500000000000000;
  *(v13 + 12) = 3;
  *(v13 + 7) = sub_248720780;
  *(v13 + 8) = 0;
  v14 = *(v0 + 3);
  v15 = v2 + 5;
  if ((v2 + 5) > (v14 >> 1))
  {
    v0 = sub_2486C4B44((v14 > 1), v2 + 5, 1, v0);
  }

  *(v0 + 2) = v15;
  v16 = &v0[40 * v12];
  *(v16 + 4) = 0x646975755F746567;
  *(v16 + 5) = 0xE800000000000000;
  *(v16 + 12) = 1;
  *(v16 + 7) = sub_2487206FC;
  *(v16 + 8) = 0;
  v17 = *(v0 + 3);
  v18 = v2 + 6;
  if ((v2 + 6) > (v17 >> 1))
  {
    v0 = sub_2486C4B44((v17 > 1), v2 + 6, 1, v0);
  }

  *(v0 + 2) = v18;
  v19 = &v0[40 * v15];
  *(v19 + 4) = 0x79617272615F70;
  *(v19 + 5) = 0xE700000000000000;
  *(v19 + 12) = 3;
  *(v19 + 7) = sub_248720714;
  *(v19 + 8) = 0;
  v20 = *(v0 + 3);
  if ((v2 + 7) > (v20 >> 1))
  {
    v0 = sub_2486C4B44((v20 > 1), v2 + 7, 1, v0);
  }

  *(v0 + 2) = v2 + 7;
  v21 = &v0[40 * v18];
  *(v21 + 4) = 0x7465675F72747370;
  *(v21 + 5) = 0xE800000000000000;
  *(v21 + 12) = 3;
  *(v21 + 7) = sub_248720798;
  *(v21 + 8) = 0;
  return v0;
}

uint64_t sub_248728C48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA64E0, &qword_248733800);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

uint64_t sub_248728CCC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_248728D14(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_248728D7C()
{
  result = qword_27EEA68A0;
  if (!qword_27EEA68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA68A0);
  }

  return result;
}

uint64_t sub_248728DD0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2487283CC(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_248731180();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2487283CC(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2487283CC(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_248731180();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t StreamBookmarkStoreError.hashValue.getter()
{
  v1 = *v0;
  sub_248731910();
  MEMORY[0x24C1D78A0](v1);
  return sub_248731930();
}

uint64_t UserDefaultBookmarkStore.__allocating_init(defaults:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_248729310(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8);
  v3 = HIBYTE(v2) & 0xF;
  if ((v2 & 0x2000000000000000) == 0)
  {
    v3 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name) & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v5 = objc_opt_self();
    swift_beginAccess();
    v26[0] = 0;
    v6 = [v5 archivedDataWithRootObject:a1 requiringSecureCoding:byte_27EEA6490 error:v26];
    v7 = v26[0];
    if (v6)
    {
      v8 = sub_2487308C0();
      v10 = v9;

      v11 = *(v1 + 16);
      v12 = sub_2487308A0();
      v13 = sub_248730FC0();
      [v11 setObject:v12 forKey:v13];

      sub_2486CC7FC(v8, v10);
    }

    else
    {
      v19 = v7;
      v20 = sub_2487307E0();

      swift_willThrow();
      if (qword_28150EE60 != -1)
      {
        swift_once();
      }

      v21 = sub_248730DF0();
      __swift_project_value_buffer(v21, qword_28150F088);
      v22 = sub_248730DD0();
      v23 = sub_2487313D0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2486BF000, v22, v23, "Failed to archive bookmark to UserDefaults", v24, 2u);
        MEMORY[0x24C1D8100](v24, -1, -1);
      }

      sub_248729660();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v14 = sub_248730DF0();
    __swift_project_value_buffer(v14, qword_28150F088);
    v15 = sub_248730DD0();
    v16 = sub_2487313D0();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2486BF000, v15, v16, "Bookmark name cannot be empty for storage", v17, 2u);
      MEMORY[0x24C1D8100](v17, -1, -1);
    }

    sub_248729660();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
  }
}

unint64_t sub_248729660()
{
  result = qword_27EEA68C8;
  if (!qword_27EEA68C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA68C8);
  }

  return result;
}

uint64_t sub_2487296B4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = sub_248730FC0();
  v6 = [v4 objectForKey_];

  if (v6)
  {
    sub_2487315A0();
    swift_unknownObjectRelease();
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  v23[0] = v21;
  v23[1] = v22;
  if (*(&v22 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_2486CF4C4(0, qword_28150EF68, 0x277CCAAC8);
      type metadata accessor for StreamsBookmark();
      v7 = sub_2487313F0();
      if (v3)
      {
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v8 = sub_248730DF0();
        __swift_project_value_buffer(v8, qword_28150F088);
        v9 = sub_248730DD0();
        v10 = sub_2487313D0();
        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          *v11 = 0;
          _os_log_impl(&dword_2486BF000, v9, v10, "Failed to unarchive bookmark from UserDefaults", v11, 2u);
          MEMORY[0x24C1D8100](v11, -1, -1);
        }

        sub_248729660();
        swift_allocError();
        *v12 = 2;
        swift_willThrow();

        return sub_2486CC7FC(v19, v20);
      }

      else
      {
        v18 = v7;
        sub_2486CC7FC(v19, v20);
        return v18;
      }
    }
  }

  else
  {
    sub_2486EA0BC(v23);
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v14 = sub_248730DF0();
  __swift_project_value_buffer(v14, qword_28150F088);
  v15 = sub_248730DD0();
  v16 = sub_2487313D0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2486BF000, v15, v16, "Bookmark in UserDefaults not present or invalid", v17, 2u);
    MEMORY[0x24C1D8100](v17, -1, -1);
  }

  return 0;
}

uint64_t sub_24872999C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2486D873C;

  return sub_24872CA24();
}

uint64_t UserDefaultBookmarkStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_248729ADC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24870DDFC;

  return sub_24872CA24();
}

uint64_t sub_248729BB4()
{
  v0 = sub_248730850();
  __swift_allocate_value_buffer(v0, qword_27EEA68A8);
  __swift_project_value_buffer(v0, qword_27EEA68A8);
  return sub_2487307F0();
}

uint64_t static FlatFileStreamsBookmarkStore.defaultBookmarkPath.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v2 = sub_248730850();
  v3 = __swift_project_value_buffer(v2, qword_27EEA68A8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_248729CDC()
{
  v0 = sub_248730850();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v0, qword_27EEA68A8);
  v8 = *(v1 + 16);
  v8(v6, v7, v0);
  v8(v4, v6, v0);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v9 = qword_27EEA8158;
  type metadata accessor for FlatFileStreamsBookmarkStore(0);
  swift_allocObject();

  v10 = sub_24872CBA0(0xD000000000000023, 0x800000024873E1A0, v4, v9);

  result = (*(v1 + 8))(v6, v0);
  qword_27EEA68C0 = v10;
  return result;
}

uint64_t FlatFileStreamsBookmarkStore.__allocating_init(name:path:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_248730850();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a3, v6);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v10 = qword_27EEA8158;
  type metadata accessor for FlatFileStreamsBookmarkStore(0);
  swift_allocObject();

  v11 = sub_24872CBA0(a1, a2, v9, v10);

  (*(v7 + 8))(a3, v6);
  return v11;
}

uint64_t static FlatFileStreamsBookmarkStore.shared.getter()
{
  if (qword_27EEA59D0 != -1)
  {
    swift_once();
  }
}

uint64_t FlatFileStreamsBookmarkStore.__allocating_init()()
{
  v0 = sub_248730850();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27EEA59C8 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27EEA68A8);
  (*(v1 + 16))(v3, v4, v0);
  if (qword_27EEA59B0 != -1)
  {
    swift_once();
  }

  v5 = qword_27EEA8158;
  type metadata accessor for FlatFileStreamsBookmarkStore(0);
  swift_allocObject();

  v6 = sub_24872CBA0(0xD000000000000023, 0x800000024873E1A0, v3, v5);

  return v6;
}

uint64_t sub_24872A228(char *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = -1;
  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v5));
  swift_endAccess();
  v6 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v7 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v8 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();

  v9 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v2 + v8);
  *(v2 + v8) = 0x8000000000000000;
  sub_2486ECA34(v9, v6, v7, isUniquelyReferenced_nonNull_native);

  *(v2 + v8) = v18;
  result = swift_endAccess();
  v12 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = v14;
    *(v4 + 16) = v14;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v5));
    swift_endAccess();
    v15 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
    v16 = swift_allocObject();
    v16[2] = v9;
    v16[3] = v2;
    v16[4] = v4;
    v17 = v9;

    sub_248704F58(v2 + v15);
    sub_2487039C8(v2 + v15, 0, 0, 0, sub_24872D020, v16);
  }

  return result;
}

void sub_24872A410(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v8 = sub_248730DF0();
    __swift_project_value_buffer(v8, qword_28150F088);
    v9 = a3;

    oslog = sub_248730DD0();
    v10 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v34[0] = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_2486D3010(*&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name], *&v9[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8], v34);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_2486D3010(a1, a2, v34);
      _os_log_impl(&dword_2486BF000, oslog, v10, "Failed to acquire a file lock to write bookmark data for %s: %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v12, -1, -1);
      MEMORY[0x24C1D8100](v11, -1, -1);
    }

    else
    {
    }

    return;
  }

  v15 = *&a3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v16 = *&a3[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v17 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog;
  swift_beginAccess();
  v18 = *(a4 + v17);
  if (*(v18 + 16))
  {

    v19 = sub_2486C94CC(v15, v16);
    if (v20)
    {
      v21 = *(*(v18 + 56) + 8 * v19);

      swift_beginAccess();
      if (v21 >= *(a5 + 16))
      {
        if (qword_28150EE60 != -1)
        {
          swift_once();
        }

        v22 = sub_248730DF0();
        __swift_project_value_buffer(v22, qword_28150F088);
        v23 = a3;

        v24 = sub_248730DD0();
        v25 = sub_2487313C0();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v33[0] = v27;
          *v26 = 136315650;
          *(v26 + 4) = sub_2486D3010(v15, v16, v33);
          *(v26 + 12) = 2048;
          swift_beginAccess();
          *(v26 + 14) = *(a5 + 16);

          *(v26 + 22) = 2048;
          *(v26 + 24) = v21;
          _os_log_impl(&dword_2486BF000, v24, v25, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v26, 0x20u);
          __swift_destroy_boxed_opaque_existential_0(v27);
          MEMORY[0x24C1D8100](v27, -1, -1);
          MEMORY[0x24C1D8100](v26, -1, -1);
        }

        else
        {
        }

        return;
      }
    }

    else
    {
    }
  }

  v28 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  swift_beginAccess();
  if (sub_24872E730((a4 + v28), a3, *(a5 + 16)))
  {
    swift_beginAccess();
    v29 = *(a5 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = *(a4 + v17);
    *(a4 + v17) = 0x8000000000000000;
    sub_2486EC470(v29, v15, v16, isUniquelyReferenced_nonNull_native);
    *(a4 + v17) = v32;
    swift_endAccess();
  }
}

uint64_t sub_24872A86C(char *a1)
{
  v2 = v1;
  v4 = sub_248730E70();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_248730EB0();
  v26 = *(v7 - 8);
  v27 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = -1;
  v11 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v2 + v11));
  swift_endAccess();
  v12 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v13 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
  v14 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();

  v15 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v2 + v14);
  *(v2 + v14) = 0x8000000000000000;
  sub_2486ECA34(v15, v12, v13, isUniquelyReferenced_nonNull_native);

  *(v2 + v14) = v31;
  result = swift_endAccess();
  v18 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = v20;
    *(v10 + 16) = v20;
    swift_beginAccess();
    pthread_rwlock_unlock((v2 + v11));
    swift_endAccess();
    dispatch_group_enter(*(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup));
    v21 = swift_allocObject();
    v21[2] = v2;
    v21[3] = v15;
    v21[4] = v10;
    aBlock[4] = sub_24872D02C;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24872EB14;
    aBlock[3] = &block_descriptor_5;
    v22 = _Block_copy(aBlock);
    v23 = v15;

    sub_248730E90();
    v31 = MEMORY[0x277D84F90];
    sub_24872EA74(&qword_27EEA6670, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
    sub_24872EABC(&qword_27EEA6680, &qword_27EEA6678, &qword_248735528);
    v24 = v29;
    sub_2487315B0();
    MEMORY[0x24C1D73D0](0, v9, v6, v22);
    _Block_release(v22);
    (*(v28 + 8))(v6, v24);
    (*(v26 + 8))(v9, v27);
  }

  return result;
}

uint64_t sub_24872AC74(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v7 = *(a1 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_queue);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;

  v9 = a2;

  sub_248704F58(a1 + v6);
  sub_2487039C8(a1 + v6, v7, 5, 0, sub_24872E724, v8);
}

void sub_24872AD50(uint64_t a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  if (!a2)
  {
    v17 = *&a4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v18 = *&a4[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];
    v19 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog;
    swift_beginAccess();
    v20 = *(a3 + v19);
    if (*(v20 + 16))
    {

      v21 = sub_2486C94CC(v17, v18);
      if (v22)
      {
        v23 = *(*(v20 + 56) + 8 * v21);

        swift_beginAccess();
        if (v23 >= *(a5 + 16))
        {
          if (qword_28150EE60 != -1)
          {
            swift_once();
          }

          v24 = sub_248730DF0();
          __swift_project_value_buffer(v24, qword_28150F088);
          v25 = a4;

          v26 = sub_248730DD0();
          v27 = sub_2487313C0();

          if (os_log_type_enabled(v26, v27))
          {
            v28 = swift_slowAlloc();
            v29 = swift_slowAlloc();
            v34[0] = v29;
            *v28 = 136315650;
            *(v28 + 4) = sub_2486D3010(v17, v18, v34);
            *(v28 + 12) = 2048;
            swift_beginAccess();
            *(v28 + 14) = *(a5 + 16);

            *(v28 + 22) = 2048;
            *(v28 + 24) = v23;
            _os_log_impl(&dword_2486BF000, v26, v27, "Discarding a write for %s with a sequence number %ld, the current number is %ld", v28, 0x20u);
            __swift_destroy_boxed_opaque_existential_0(v29);
            MEMORY[0x24C1D8100](v29, -1, -1);
            MEMORY[0x24C1D8100](v28, -1, -1);
          }

          else
          {
          }

LABEL_19:
          dispatch_group_leave(*(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup));
          return;
        }
      }

      else
      {
      }
    }

    v30 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
    swift_beginAccess();
    if (sub_24872E730((a3 + v30), a4, *(a5 + 16)))
    {
      swift_beginAccess();
      v31 = *(a5 + 16);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33 = *(a3 + v19);
      *(a3 + v19) = 0x8000000000000000;
      sub_2486EC470(v31, v17, v18, isUniquelyReferenced_nonNull_native);
      *(a3 + v19) = v33;
      swift_endAccess();
    }

    goto LABEL_19;
  }

  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v9 = sub_248730DF0();
  __swift_project_value_buffer(v9, qword_28150F088);
  v10 = a4;

  v11 = sub_248730DD0();
  v12 = sub_2487313D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v35[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2486D3010(*&v10[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name], *&v10[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8], v35);
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_2486D3010(a1, a2, v35);
    _os_log_impl(&dword_2486BF000, v11, v12, "Failed to acquire a file lock to write bookmark data for %s: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v14, -1, -1);
    MEMORY[0x24C1D8100](v13, -1, -1);
  }

  v15 = *(a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);

  dispatch_group_leave(v15);
}

id sub_24872B1C8(uint64_t a1, unint64_t a2)
{
  v4 = sub_24872B738(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    v7 = v5;
    v8 = sub_248730DD0();
    v9 = sub_2487313E0();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_2486D3010(a1, a2, &v28);
      *(v10 + 12) = 2080;
      v12 = [v7 debugDescription];
      v13 = sub_248730FF0();
      v15 = v14;

      v16 = sub_2486D3010(v13, v15, &v28);

      *(v10 + 14) = v16;
      _os_log_impl(&dword_2486BF000, v8, v9, "Load %s bookmark: %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v11, -1, -1);
      MEMORY[0x24C1D8100](v10, -1, -1);
    }
  }

  else
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v17 = sub_248730DF0();
    __swift_project_value_buffer(v17, qword_28150F088);

    v18 = sub_248730DD0();
    v19 = sub_2487313E0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_2486D3010(a1, a2, &v28);
      _os_log_impl(&dword_2486BF000, v18, v19, "No bookmark found for %s: create a new one", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x24C1D8100](v21, -1, -1);
      MEMORY[0x24C1D8100](v20, -1, -1);
    }

    v22 = MEMORY[0x277D84F90];
    v23 = sub_2486D3BA8(MEMORY[0x277D84F90]);
    v24 = type metadata accessor for StreamsBookmark();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    *v26 = a1;
    *(v26 + 1) = a2;
    *&v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_timeIntervals] = v23;

    *&v25[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_stagedTimeIntervals] = sub_2486D3BA8(v22);
    v29.receiver = v25;
    v29.super_class = v24;
    return objc_msgSendSuper2(&v29, sel_init);
  }

  return v7;
}

uint64_t sub_24872B528(char *a1, char a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  v7 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v6 = *&a1[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

  if (a2)
  {
    sub_24872A228(a1);
    v8 = sub_24872B738(v7, v6);

    if (v8)
    {
      v9 = [v8 debugDescription];
      v10 = sub_248730FF0();
      v12 = v11;

      *(v5 + 16) = v10;
      *(v5 + 24) = v12;
    }
  }

  else
  {
    sub_24872A86C(a1);
    v13 = swift_allocObject();
    v13[2] = v2;
    v13[3] = v7;
    v13[4] = v6;
    v13[5] = v5;

    sub_24872BE54(sub_24872D050, v13);
  }

  swift_beginAccess();
  v14 = *(v5 + 16);

  return v14;
}

void *sub_24872B69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_24872B738(a2, a3);
  if (result)
  {
    v6 = result;
    v7 = [result debugDescription];
    v8 = sub_248730FF0();
    v10 = v9;

    swift_beginAccess();
    *(a4 + 16) = v8;
    *(a4 + 24) = v10;
  }

  return result;
}

void *sub_24872B738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_rdlock((v3 + v6));
  swift_endAccess();
  v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_2486C94CC(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);
      v12 = v11;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  swift_beginAccess();
  pthread_rwlock_unlock((v3 + v6));
  swift_endAccess();
  return v11;
}

uint64_t sub_24872B834()
{
  v1 = v0;
  sub_248731400();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;

  sub_248704F58(v0 + v3);
  sub_2487039C8(v0 + v3, 0, 0, 0, sub_24872D05C, v4);

  swift_beginAccess();
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
    swift_beginAccess();

    pthread_rwlock_wrlock((v1 + v6));
    swift_endAccess();
    v7 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
    swift_beginAccess();
    *(v1 + v7) = v5;

    swift_beginAccess();
    pthread_rwlock_unlock((v1 + v6));
    swift_endAccess();
  }
}

void sub_24872B9BC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    oslog = sub_248730DD0();
    v7 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13[0] = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2486D3010(a1, a2, v13);
      _os_log_impl(&dword_2486BF000, oslog, v7, "Failed to acquire a file lock to refresh bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D8100](v9, -1, -1);
      MEMORY[0x24C1D8100](v8, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v11 = sub_24872D8A8((a4 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath));
    swift_beginAccess();
    *(a3 + 16) = v11;
  }
}

uint64_t sub_24872BB74()
{
  v1 = v0;
  sub_248731400();
  v2 = sub_2486D41E0(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath;
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;

  sub_248704F58(v0 + v3);
  sub_2487039C8(v0 + v3, 0, 0, 0, sub_24872D0B4, v4);

  v5 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  swift_beginAccess();
  pthread_rwlock_wrlock((v1 + v5));
  swift_endAccess();
  v6 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks;
  swift_beginAccess();
  *(v1 + v6) = v2;

  swift_beginAccess();
  pthread_rwlock_unlock((v1 + v5));
  return swift_endAccess();
}

void sub_24872BCC0(uint64_t a1, unint64_t a2, uint64_t a3, char *a4)
{
  if (a2)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v6 = sub_248730DF0();
    __swift_project_value_buffer(v6, qword_28150F088);

    oslog = sub_248730DD0();
    v7 = sub_2487313D0();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v12 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2486D3010(a1, a2, &v12);
      _os_log_impl(&dword_2486BF000, oslog, v7, "Failed to acquire a file lock to reset bookmark data: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x24C1D8100](v9, -1, -1);
      MEMORY[0x24C1D8100](v8, -1, -1);
    }
  }

  else
  {
    v10 = a3 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;

    sub_24872E0A4(v10, a4);
  }
}

uint64_t sub_24872BE54(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_248730E70();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_248730EB0();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_248730E80();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup);
  sub_2486CF4C4(0, &qword_27EEA6940, 0x277D85C78);
  (*(v11 + 104))(v13, *MEMORY[0x277D851C8], v10);
  v14 = sub_248731480();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = v19;
  *(v15 + 24) = a2;
  aBlock[4] = sub_24872E6B4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24872EB14;
  aBlock[3] = &block_descriptor_66;
  v16 = _Block_copy(aBlock);

  sub_248730E90();
  v23 = MEMORY[0x277D84F90];
  sub_24872EA74(&qword_27EEA6670, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6678, &qword_248735528);
  sub_24872EABC(&qword_27EEA6680, &qword_27EEA6678, &qword_248735528);
  sub_2487315B0();
  sub_248731410();
  _Block_release(v16);

  (*(v22 + 8))(v6, v4);
  (*(v7 + 8))(v9, v21);
}

uint64_t sub_24872C208(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_24872C24C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_24872C270, 0, 0);
}

uint64_t sub_24872C270()
{
  v1 = v0[2];
  if (v1)
  {
    sub_24872BE54(v1, v0[3]);
    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = swift_task_alloc();
    v0[5] = v4;
    *v4 = v0;
    v4[1] = sub_24872C384;
    v5 = v0[4];
    v6 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v4, 0, 0, 0xD00000000000001DLL, 0x800000024873E1D0, sub_24872D0BC, v5, v6);
  }
}

uint64_t sub_24872C384()
{

  return MEMORY[0x2822009F8](sub_2486D2C34, 0, 0);
}

uint64_t sub_24872C480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6930, &unk_2487362A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  sub_24872BE54(sub_24872D83C, v7);
}

uint64_t FlatFileStreamsBookmarkStore.deinit()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  v2 = sub_248730850();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v2);

  return v0;
}

uint64_t FlatFileStreamsBookmarkStore.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath;
  v2 = sub_248730850();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v2);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v4, v5);
}

uint64_t sub_24872C840(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24870DDFC;

  return sub_24872C24C(a1, a2);
}

uint64_t sub_24872C90C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_24872C93C()
{
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v0 = sub_248730DF0();
  __swift_project_value_buffer(v0, qword_28150F088);
  oslog = sub_248730DD0();
  v1 = sub_2487313D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2486BF000, oslog, v1, "Unsupported operation", v2, 2u);
    MEMORY[0x24C1D8100](v2, -1, -1);
  }
}

uint64_t sub_24872CA40()
{
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v1 = sub_248730DF0();
  __swift_project_value_buffer(v1, qword_28150F088);
  v2 = sub_248730DD0();
  v3 = sub_2487313D0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2486BF000, v2, v3, "Unsupported operation", v4, 2u);
    MEMORY[0x24C1D8100](v4, -1, -1);
  }

  v5 = *(v0 + 8);

  return v5();
}

uint64_t type metadata accessor for FlatFileStreamsBookmarkStore(uint64_t a1)
{
  result = qword_27EEA6920;
  if (!qword_27EEA6920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24872CBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a4;
  v9 = sub_248731440();
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_248731420();
  MEMORY[0x28223BE20](v11);
  v12 = sub_248730EB0();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_248730850();
  v23 = *(v13 - 8);
  v14 = v23;
  MEMORY[0x28223BE20](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1;
  v29 = a2;

  MEMORY[0x24C1D70A0](1802330670, 0xE400000000000000);

  v22 = a3;
  sub_248730810();

  v17 = *(v14 + 32);
  v21 = v13;
  v17(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_filePath, v16, v13);
  sub_248730810();
  v17(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lockPath, v16, v13);
  sub_2486CF4C4(0, &qword_27EEA6940, 0x277D85C78);
  sub_248730EA0();
  v28 = MEMORY[0x277D84F90];
  sub_24872EA74(&qword_27EEA6948, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6950, &qword_2487362B8);
  sub_24872EABC(&qword_27EEA6958, &qword_27EEA6950, &qword_2487362B8);
  sub_2487315B0();
  (*(v25 + 104))(v24, *MEMORY[0x277D85260], v26);
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_queue) = sub_248731460();
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_dispatchGroup) = dispatch_group_create();
  v18 = v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_lock;
  *v18 = 0u;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 80) = 0u;
  *(v18 + 96) = 0u;
  *(v18 + 112) = 0u;
  *(v18 + 128) = 0u;
  *(v18 + 144) = 0u;
  *(v18 + 160) = 0u;
  *(v18 + 176) = 0u;
  *(v18 + 192) = 0;
  swift_beginAccess();
  pthread_rwlock_init(v18, 0);
  swift_endAccess();
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarkFileLock) = v27;
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumber) = 0;

  v19 = MEMORY[0x277D84F90];
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_writeSequenceNumberLog) = sub_2486D40E4(MEMORY[0x277D84F90]);
  *(v5 + OBJC_IVAR____TtC26DeepThoughtBiomeFoundation28FlatFileStreamsBookmarkStore_bookmarks) = sub_2486D41E0(v19);
  sub_24872B834();
  (*(v23 + 8))(v22, v21);
  return v5;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_19Tm(void (*a1)(void))
{

  a1(*(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t sub_24872D0C8()
{
  result = qword_27EEA6918;
  if (!qword_27EEA6918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6918);
  }

  return result;
}

uint64_t dispatch thunk of StreamsBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2486D873C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of UserDefaultBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24870DDFC;

  return v8(a1, a2);
}

uint64_t sub_24872D4E8(uint64_t a1)
{
  result = sub_248730850();
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

uint64_t dispatch thunk of FlatFileStreamsBookmarkStore.notifyOnComplete(completion:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_24870DDFC;

  return v8(a1, a2);
}

void *sub_24872D8A8(id a1)
{
  v2 = sub_248730850();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v65 - v5;
  v7 = sub_248730860();
  v23 = v22;
  v24 = v7;
  sub_2486CF4C4(0, qword_28150EF68, 0x277CCAAC8);
  type metadata accessor for StreamsBookmarkCollection();
  sub_24871D610(v24, v23);
  v68 = v24;
  v69 = v23;
  v25 = sub_2487313F0();
  if (!v25)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v26 = sub_248730DF0();
    __swift_project_value_buffer(v26, qword_28150F088);
    (*(v3 + 16))(v6, a1, v2);
    v27 = sub_248730DD0();
    v28 = sub_2487313D0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v72[0] = v30;
      *v29 = 136315138;
      sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v31 = sub_248731850();
      v33 = v32;
      (*(v3 + 8))(v6, v2);
      v34 = sub_2486D3010(v31, v33, v72);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2486BF000, v27, v28, "Cannot decode bookmarks read from path=%s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x24C1D8100](v30, -1, -1);
      MEMORY[0x24C1D8100](v29, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    v35 = sub_2486D41E0(MEMORY[0x277D84F90]);
    v37 = v68;
    v36 = v69;
    sub_2486CC7FC(v68, v69);
    sub_2486CC7FC(v37, v36);
    return v35;
  }

  v38 = v25;
  sub_2486CC7FC(v68, v69);
  v39 = OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks;
  v40 = *&v38[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks];
  v66 = v38;
  if (v40 >> 62)
  {
    v41 = sub_248731790();
  }

  else
  {
    v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = type metadata accessor for StreamsBookmark();
  v35 = MEMORY[0x24C1D6EA0](v41, MEMORY[0x277D837D0], v42, MEMORY[0x277D837E0]);
  v43 = *&v66[v39];
  if (v43 >> 62)
  {
    v44 = sub_248731790();
    if (v44)
    {
      goto LABEL_17;
    }

LABEL_37:
    sub_2486CC7FC(v68, v69);

    return v35;
  }

  v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v44)
  {
    goto LABEL_37;
  }

LABEL_17:
  v71 = v43 & 0xC000000000000001;
  v67 = v43 & 0xFFFFFFFFFFFFFF8;

  v45 = 0;
  v70 = v43;
  while (1)
  {
    if (v71)
    {
      v49 = MEMORY[0x24C1D7600](v45, v43);
    }

    else
    {
      if (v45 >= *(v67 + 16))
      {
        goto LABEL_42;
      }

      v49 = *(v43 + 8 * v45 + 32);
    }

    v50 = v49;
    v2 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    v43 = v44;
    v3 = *&v49[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
    v51 = *&v49[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

    a1 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72[0] = v35;
    v24 = sub_2486C94CC(v3, v51);
    v54 = v35[2];
    v55 = (v53 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_40;
    }

    v57 = v53;
    if (v35[3] >= v56)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v53)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_2486E6FC4();
        if (v57)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_2486E5BB0(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_2486C94CC(v3, v51);
      if ((v57 & 1) != (v59 & 1))
      {
        result = sub_2487318B0();
        __break(1u);
        return result;
      }

      v24 = v58;
      if (v57)
      {
LABEL_18:

        v35 = v72[0];
        v46 = *(v72[0] + 56);
        v47 = *(v46 + 8 * v24);
        *(v46 + 8 * v24) = a1;

        goto LABEL_19;
      }
    }

    v35 = v72[0];
    *(v72[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v60 = (v35[6] + 16 * v24);
    *v60 = v3;
    v60[1] = v51;
    *(v35[7] + 8 * v24) = a1;

    v61 = v35[2];
    v62 = __OFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
      goto LABEL_41;
    }

    v35[2] = v63;
LABEL_19:
    ++v45;
    v44 = v43;
    v48 = v2 == v43;
    v43 = v70;
    if (v48)
    {

      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  swift_once();
  v8 = sub_248730DF0();
  __swift_project_value_buffer(v8, qword_28150F088);
  (*(v3 + 16))(v24, a1, v2);
  v9 = v43;
  v10 = sub_248730DD0();
  v11 = sub_2487313C0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v74[0] = v13;
    *v12 = 136315394;
    sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v14 = sub_248731850();
    v16 = v15;
    (*(v3 + 8))(v24, v2);
    v17 = sub_2486D3010(v14, v16, v74);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2080;
    v72[0] = v43;
    v72[1] = 0;
    v73 = 1;
    v18 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6938, &qword_2487362B0);
    v19 = sub_248731040();
    v21 = sub_2486D3010(v19, v20, v74);

    *(v12 + 14) = v21;
    _os_log_impl(&dword_2486BF000, v10, v11, "Cannot read bookmarks from path=%s, error=%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1D8100](v13, -1, -1);
    MEMORY[0x24C1D8100](v12, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v24, v2);
  }

  v35 = sub_2486D41E0(MEMORY[0x277D84F90]);

  return v35;
}

uint64_t sub_24872E0A4(uint64_t a1, char *a2)
{
  v57[5] = *MEMORY[0x277D85DE8];
  v4 = sub_248730850();
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = *(a2 + 2);
  if (v6)
  {
    v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = a1;
    v8 = sub_2486DE8A4();
    v9 = sub_2486FD1D0(v57, v8 + 4, v6, a2);
    v10 = v57[0];
    v11 = v57[1];
    v12 = v57[4];

    sub_2486CA188(v10);
    if (v9 != v6)
    {
      __break(1u);
      swift_once();
      v22 = sub_248730DF0();
      __swift_project_value_buffer(v22, qword_28150F088);
      v11[2](v7, v10, v12);
      v23 = v8;
      v24 = sub_248730DD0();
      v25 = sub_2487313D0();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v52 = a2;
        v27 = v26;
        v51 = swift_slowAlloc();
        v57[0] = v51;
        *v27 = 136315394;
        sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v28 = sub_248731850();
        v29 = v12;
        v31 = v30;
        (v11[1])(v7, v29);
        v32 = sub_2486D3010(v28, v31, v57);

        *(v27 + 4) = v32;
        *(v27 + 12) = 2080;
        v55 = v8;
        v33 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
        v34 = sub_248731040();
        v36 = sub_2486D3010(v34, v35, v57);

        *(v27 + 14) = v36;
        _os_log_impl(&dword_2486BF000, v24, v25, "Cannot write bookmark data to a file, path=%s, error=%s", v27, 0x16u);
        v37 = v51;
        swift_arrayDestroy();
        MEMORY[0x24C1D8100](v37, -1, -1);
        MEMORY[0x24C1D8100](v27, -1, -1);
        sub_2486CC7FC(v9, v6);
      }

      else
      {

        sub_2486CC7FC(v9, v6);
        (v11[1])(v7, v12);
      }

      return 0;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v13 = type metadata accessor for StreamsBookmarkCollection();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation25StreamsBookmarkCollection_bookmarks] = v8;
  v56.receiver = v14;
  v56.super_class = v13;
  v15 = objc_msgSendSuper2(&v56, sel_init);
  v16 = objc_opt_self();
  v57[0] = 0;
  v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v57];
  v18 = v57[0];
  if (v17)
  {
    v19 = sub_2487308C0();
    v21 = v20;

    sub_2487308D0();
    sub_2486CC7FC(v19, v21);

    return 1;
  }

  v38 = v18;
  v39 = sub_2487307E0();

  swift_willThrow();
  if (qword_28150EE60 != -1)
  {
    swift_once();
  }

  v40 = sub_248730DF0();
  __swift_project_value_buffer(v40, qword_28150F088);
  v41 = v39;
  v42 = sub_248730DD0();
  v43 = sub_2487313D0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v57[0] = v45;
    *v44 = 136315138;
    v55 = v39;
    v46 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6688, qword_248735530);
    v47 = sub_248731040();
    v49 = sub_2486D3010(v47, v48, v57);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_2486BF000, v42, v43, "Cannot encode bookmarks, error=%s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x24C1D8100](v45, -1, -1);
    MEMORY[0x24C1D8100](v44, -1, -1);
  }

  else
  {
  }

  return 0;
}

uint64_t objectdestroy_7Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24872E730(void *a1, char *a2, uint64_t a3)
{
  v6 = sub_248730850();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24872D8A8(a1);
  v11 = *&a2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name];
  v12 = *&a2[OBJC_IVAR____TtC26DeepThoughtBiomeFoundation15StreamsBookmark_name + 8];

  v13 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v10;
  sub_2486ECA34(v13, v11, v12, isUniquelyReferenced_nonNull_native);

  v15 = sub_24872E0A4(a1, v30);

  if (v15)
  {
    if (qword_28150EE60 != -1)
    {
      swift_once();
    }

    v16 = sub_248730DF0();
    __swift_project_value_buffer(v16, qword_28150F088);
    (*(v7 + 16))(v9, a1, v6);
    v17 = v13;
    v18 = sub_248730DD0();
    v19 = sub_2487313C0();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      HIDWORD(v29) = v19;
      v21 = a3;
      v22 = v20;
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136315650;
      *(v22 + 4) = sub_2486D3010(v11, v12, &v30);
      *(v22 + 12) = 2048;
      *(v22 + 14) = v21;
      *(v22 + 22) = 2080;
      sub_24872EA74(&qword_27EEA6660, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v24 = sub_248731850();
      v26 = v25;
      (*(v7 + 8))(v9, v6);
      v27 = sub_2486D3010(v24, v26, &v30);

      *(v22 + 24) = v27;
      _os_log_impl(&dword_2486BF000, v18, BYTE4(v29), "Updated a bookmark, name=%s, sequenceNum=%ld, path=%s", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x24C1D8100](v23, -1, -1);
      MEMORY[0x24C1D8100](v22, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }
  }

  return v15 & 1;
}

uint64_t sub_24872EA74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24872EABC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

DeepThoughtBiomeFoundation::BiomeEventStreamType_optional __swiftcall BiomeEventStreamType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_24872EB58@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_24872EC3C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_24872EC94()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t BiomeEventStream.__allocating_init(streamType:libraryFeatureExtractor:)(char *a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = *a1;
  *(result + 16) = 5;
  *(result + 24) = v5;
  *(result + 32) = a2;
  return result;
}

uint64_t BiomeEventStream.init(streamType:libraryFeatureExtractor:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = 5;
  *(v2 + 24) = v3;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t sub_24872ED44(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  if (qword_27EEA5998 != -1)
  {
    swift_once();
  }

  v4 = qword_27EEA8138;
  if (!*(qword_27EEA8138 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  v5 = sub_2486C95D4(v3);
  if ((v6 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(*(v4 + 56) + 8 * v5);
  return sub_2486DEFCC(v3, v7, a1, v7);
}

uint64_t sub_24872EDFC(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = qword_27EEA5998;
  v6 = v4;
  if (v5 != -1)
  {
    swift_once();
  }

  v7 = qword_27EEA8138;
  if (*(qword_27EEA8138 + 16) && (v8 = sub_2486C95D4(v3), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    v11 = sub_2486DF2FC(v3, v10, a1, v6, v10);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  return v11;
}

uint64_t _s26DeepThoughtBiomeFoundation0C11EventStreamCfD_0()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_24872EF9C(_BYTE *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = swift_allocObject();
  LOBYTE(a1) = *a1;
  v9 = [objc_allocWithZone(a3(0)) init];
  *(v8 + 16) = 5;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 40) = v9;
  swift_beginAccess();
  *(v8 + 16) = a4;
  return v8;
}

uint64_t sub_24872F04C()
{

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_24872F0D4(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = *a1;
  *(v6 + 16) = 5;
  *(v6 + 24) = v7;
  *(v6 + 32) = a2;
  swift_beginAccess();
  *(v6 + 16) = a3;
  return v6;
}

uint64_t sub_24872F154()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6980, &qword_2487366E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733750;
  *(inited + 32) = 0;
  *(inited + 40) = type metadata accessor for AppInFocusBiomeEventStream();
  *(inited + 48) = 13;
  *(inited + 56) = type metadata accessor for AppIntentBiomeEventStream();
  *(inited + 64) = 12;
  *(inited + 72) = type metadata accessor for CarPlayConnectedBiomeEventStream();
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for DeviceScreenLockedBiomeEventStream();
  *(inited + 96) = 7;
  *(inited + 104) = type metadata accessor for LocationPointOfInterestCategoryBiomeEventStream();
  *(inited + 112) = 9;
  *(inited + 120) = type metadata accessor for LocationSemanticBiomeEventStream();
  *(inited + 128) = 2;
  *(inited + 136) = type metadata accessor for MediaNowPlayingBiomeEventStream();
  *(inited + 144) = 10;
  *(inited + 152) = type metadata accessor for MessagesReadBiomeEventStream();
  *(inited + 160) = 11;
  *(inited + 168) = type metadata accessor for NotificationUsageBiomeEventStream();
  *(inited + 176) = 6;
  *(inited + 184) = type metadata accessor for SiriExecutionBiomeEventStream();
  *(inited + 192) = 14;
  *(inited + 200) = type metadata accessor for SiriPostSiriEngagementBiomeEventStream();
  *(inited + 208) = 1;
  *(inited + 216) = type metadata accessor for SiriUIBiomeEventStream();
  *(inited + 224) = 16;
  *(inited + 232) = type metadata accessor for SiriVoiceTriggerStatisticsBiomeEventStream();
  *(inited + 240) = 8;
  *(inited + 248) = type metadata accessor for TextInputSessionBiomeEventStream();
  *(inited + 256) = 4;
  *(inited + 264) = type metadata accessor for UserFocusSleepModeBiomeEventStream();
  *(inited + 272) = 3;
  *(inited + 280) = type metadata accessor for UserFocusStatusChangeBiomeEventStream();
  v1 = sub_2486D42E4(inited);
  result = swift_setDeallocating();
  qword_27EEA81A0 = v1;
  return result;
}

uint64_t sub_24872F288()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6978, &qword_2487366E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_248733750;
  *(inited + 32) = 0;
  *(inited + 40) = type metadata accessor for AppInFocusFeatureExtractor();
  *(inited + 48) = 13;
  *(inited + 56) = type metadata accessor for AppIntentFeatureExtractor();
  *(inited + 64) = 12;
  *(inited + 72) = type metadata accessor for CarPlayConnectedFeatureExtractor();
  *(inited + 80) = 15;
  *(inited + 88) = type metadata accessor for DeviceLockedEventFeatureExtractor();
  *(inited + 96) = 7;
  *(inited + 104) = type metadata accessor for LocationPointOfInterestCategoryFeatureExtractor();
  *(inited + 112) = 9;
  *(inited + 120) = type metadata accessor for LocationSemanticFeatureExtractor();
  *(inited + 128) = 2;
  *(inited + 136) = type metadata accessor for MediaNowPlayingFeatureExtractor();
  *(inited + 144) = 10;
  *(inited + 152) = type metadata accessor for MessagesReadFeatureExtractor();
  *(inited + 160) = 11;
  *(inited + 168) = type metadata accessor for NotificationUsageFeatureExtractor();
  *(inited + 176) = 6;
  *(inited + 184) = type metadata accessor for SiriExecutionFeatureExtractor();
  *(inited + 192) = 14;
  *(inited + 200) = type metadata accessor for SiriPostSiriEngagementFeatureExtractor();
  *(inited + 208) = 1;
  *(inited + 216) = type metadata accessor for SiriUIFeatureExtractor();
  *(inited + 224) = 16;
  *(inited + 232) = type metadata accessor for VoiceTriggerStatisticsEventFeatureExtractor();
  *(inited + 240) = 8;
  *(inited + 248) = type metadata accessor for TextInputSessionFeatureExtractor();
  *(inited + 256) = 4;
  *(inited + 264) = type metadata accessor for UserFocusSleepModeFeatureExtractor();
  *(inited + 272) = 3;
  *(inited + 280) = type metadata accessor for UserFocusStatusChangeFeatureExtractor();
  v1 = sub_2486D42F8(inited);
  result = swift_setDeallocating();
  qword_27EEA81A8 = v1;
  return result;
}

uint64_t BiomeAggregatedStream.__allocating_init(streamsToType:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_24872F444(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_248731270();
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_9:
    v10 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    if (*(*(a1 + 56) + ((v8 << 9) | (8 * v10))))
    {
      sub_2487312D0();

      swift_getWitnessTable();
      sub_2487312C0();
    }
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

    v6 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v6)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_24872F580(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_2486D43E0(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v51 = a1;
  if (v7)
  {
    v8 = v4;
    v3 = sub_2486DDA38(v7, 0);
    v9 = sub_2486FD324(&v53, v3 + 4, v7, v6);
    v10 = v53;

    sub_2486CA188(v10);
    if (v9 != v7)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }

    v5 = v8;
  }

  v11 = v3[2];
  if (v11)
  {
    v12 = 0;
    v13 = 0x27EEA5000;
    v14 = &unk_27EEA8000;
    while (1)
    {
      if (v12 >= v3[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(v6 + 16))
      {
        v15 = v3[v12 + 4];
        v16 = sub_2486C95D4(v15);
        if (v17)
        {
          v18 = *(*(v6 + 56) + v16);
          if (*(v13 + 2520) != -1)
          {
            swift_once();
          }

          v19 = v14[52];
          if (*(v19 + 16))
          {
            v20 = sub_2486C95D4(v15);
            if (v21)
            {
              break;
            }
          }
        }
      }

LABEL_9:
      if (v11 == ++v12)
      {
        goto LABEL_38;
      }
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    if (qword_27EEA59E0 != -1)
    {
      swift_once();
    }

    v23 = qword_27EEA81A8;
    if (!*(qword_27EEA81A8 + 16) || (v24 = sub_2486C95D4(v15), (v25 & 1) == 0))
    {
LABEL_8:
      v14 = &unk_27EEA8000;
      goto LABEL_9;
    }

    v26 = *(*(v23 + 56) + 8 * v24);
    LOBYTE(v52) = v18;
    v27 = (*(v22 + 176))(&v52, [objc_allocWithZone(v26) init]);
    swift_beginAccess();
    v28 = *(v27 + 16);
    if (qword_27EEA5998 != -1)
    {
      swift_once();
    }

    v29 = qword_27EEA8138;
    if (*(qword_27EEA8138 + 16) && (v30 = sub_2486C95D4(v28), (v31 & 1) != 0))
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      v33 = sub_2486DEFCC(v28, v32, v51, v32);
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v5;
    v36 = sub_2486C95D4(v15);
    v37 = v5;
    v38 = *(v5 + 16);
    v39 = (v35 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v41 = v35;
    if (*(v37 + 24) < v40)
    {
      sub_2486E5E54(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_2486C95D4(v15);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_43;
      }

      v36 = v42;
      v44 = v52;
      if ((v41 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_6:
      *(v44[7] + 8 * v36) = v33;

      v5 = v44;
LABEL_7:
      v13 = 0x27EEA5000uLL;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v44 = v52;
      if (v35)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_2486E7130();
      v44 = v52;
      if (v41)
      {
        goto LABEL_6;
      }
    }

LABEL_34:
    v44[(v36 >> 6) + 8] |= 1 << v36;
    *(v44[6] + 8 * v36) = v15;
    *(v44[7] + 8 * v36) = v33;

    v45 = v44[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_42;
    }

    v5 = v44;
    v44[2] = v47;
    goto LABEL_7;
  }

LABEL_38:

  sub_24872F964(v5);
  v49 = v48;

  return v49;
}

void sub_24872F964(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6988, &qword_2487366F0);
    v2 = sub_2487317D0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6990, &qword_2487366F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6998, &unk_248736700);
    swift_dynamicCast();
    sub_248731910();
    MEMORY[0x24C1D78A0](v11);
    v12 = sub_248731930();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v20;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_24872FBCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6968, &unk_2487366C8);
    v2 = sub_2487317D0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v11 = *(*(a1 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v5)))));

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA5B20, &qword_248733060);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEA6970, &qword_2487366D8);
    swift_dynamicCast();
    sub_248731910();
    MEMORY[0x24C1D78A0](v11);
    v12 = sub_248731930();
    v13 = -1 << *(v2 + 32);
    v14 = v12 & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v9 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    *(*(v2 + 48) + 8 * v9) = v11;
    *(*(v2 + 56) + 8 * v9) = v20;
    ++*(v2 + 16);
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_24872FE34(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  v4 = sub_2486D43F4(MEMORY[0x277D84F90]);
  v5 = v4;
  v6 = *(v1 + 16);
  v7 = *(v6 + 16);
  v53 = a1;
  if (v7)
  {
    v8 = v4;
    v3 = sub_2486DDA38(v7, 0);
    v9 = sub_2486FD324(&v56, v3 + 4, v7, v6);
    v10 = v56;

    sub_2486CA188(v10);
    if (v9 != v7)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      result = sub_2487318B0();
      __break(1u);
      return result;
    }

    v5 = v8;
  }

  v11 = v3[2];
  if (v11)
  {
    v12 = 0;
    v13 = 0x27EEA5000;
    v14 = &unk_27EEA8000;
    while (1)
    {
      if (v12 >= v3[2])
      {
        __break(1u);
        goto LABEL_40;
      }

      if (*(v6 + 16))
      {
        v15 = v3[v12 + 4];
        v16 = sub_2486C95D4(v15);
        if (v17)
        {
          v18 = *(*(v6 + 56) + v16);
          if (*(v13 + 2520) != -1)
          {
            swift_once();
          }

          v19 = v14[52];
          if (*(v19 + 16))
          {
            v20 = sub_2486C95D4(v15);
            if (v21)
            {
              break;
            }
          }
        }
      }

LABEL_9:
      if (v11 == ++v12)
      {
        goto LABEL_38;
      }
    }

    v22 = *(*(v19 + 56) + 8 * v20);
    if (qword_27EEA59E0 != -1)
    {
      swift_once();
    }

    v23 = qword_27EEA81A8;
    if (!*(qword_27EEA81A8 + 16) || (v24 = sub_2486C95D4(v15), (v25 & 1) == 0))
    {
LABEL_8:
      v14 = &unk_27EEA8000;
      goto LABEL_9;
    }

    v26 = v5;
    v27 = *(*(v23 + 56) + 8 * v24);
    LOBYTE(v55) = v18;
    v28 = (*(v22 + 176))(&v55, [objc_allocWithZone(v27) init]);
    swift_beginAccess();
    v29 = *(v28 + 16);
    swift_beginAccess();
    v30 = qword_27EEA5998;
    v31 = *(v28 + 32);
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = qword_27EEA8138;
    if (*(qword_27EEA8138 + 16) && (v33 = sub_2486C95D4(v29), (v34 & 1) != 0))
    {
      v35 = *(*(v32 + 56) + 8 * v33);
      v54 = sub_2486DF2FC(v29, v35, v53, v31, v35);
    }

    else
    {
      v54 = MEMORY[0x277D84F90];
    }

    v36 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v26;
    v39 = sub_2486C95D4(v15);
    v40 = *(v36 + 16);
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_41;
    }

    v43 = v38;
    if (*(v36 + 24) < v42)
    {
      sub_2486E5E68(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_2486C95D4(v15);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_43;
      }

      v39 = v44;
      v46 = v55;
      if ((v43 & 1) == 0)
      {
        goto LABEL_34;
      }

LABEL_6:
      *(v46[7] + 8 * v39) = v54;

      v5 = v46;
LABEL_7:
      v13 = 0x27EEA5000uLL;
      goto LABEL_8;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v46 = v55;
      if (v38)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_2486E7144();
      v46 = v55;
      if (v43)
      {
        goto LABEL_6;
      }
    }

LABEL_34:
    v46[(v39 >> 6) + 8] |= 1 << v39;
    *(v46[6] + 8 * v39) = v15;
    *(v46[7] + 8 * v39) = v54;

    v47 = v46[2];
    v48 = __OFADD__(v47, 1);
    v49 = v47 + 1;
    if (v48)
    {
      goto LABEL_42;
    }

    v5 = v46;
    v46[2] = v49;
    goto LABEL_7;
  }

LABEL_38:

  sub_24872FBCC(v5);
  v51 = v50;

  return v51;
}

uint64_t BiomeAggregatedStream.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_2487302A4()
{
  result = qword_27EEA6960;
  if (!qword_27EEA6960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEA6960);
  }

  return result;
}