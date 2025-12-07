uint64_t sub_22EDD0F0C()
{
  v1 = *(v0 + 2);
  sub_22EE3CC74();
  if (v1)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  return sub_22EE3CCC4();
}

uint64_t sub_22EDD0F84()
{
  if (*(v0 + 2))
  {
    MEMORY[0x2318F6370](1);
    return sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    return sub_22EE3CC94();
  }
}

uint64_t sub_22EDD0FD8(uint64_t a1)
{
  v2 = *(v1 + 2);
  sub_22EE3CC74();
  if (v2)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  return sub_22EE3CCC4();
}

uint64_t sub_22EDD104C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 2);
  }

  else
  {
    v2 = 0;
  }

  v3 = *a1 == *a2;
  if (a2[1])
  {
    v3 = 0;
  }

  if (a1[1])
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_22EDD10A0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3 ^ a4;

  if (v7 >= 0x4000)
  {
    while (1)
    {
      v12 = sub_22EE3C634();
      v14 = v13;
      v15 = sub_22EE3C604();
      v16 = sub_22EE3C224();
      if (!v17)
      {
        break;
      }

      if (v12 == v16 && v17 == v14)
      {
      }

      else
      {
        v11 = sub_22EE3CBA4();

        if ((v11 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if ((v15 ^ a4) < 0x4000)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    sub_22EE3C224();
    v9 = v8;

    if (v9)
    {
LABEL_3:

      return 0;
    }
  }

  return 1;
}

uint64_t sub_22EDD1210()
{
  sub_22EE3BAE4();
  swift_allocObject();
  sub_22EE3BAB4();
  return 0x200000000000;
}

uint64_t sub_22EDD1254(uint64_t a1, int a2)
{
  v3 = v2;
  v4 = a1;
  v55 = *MEMORY[0x277D85DE8];
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v50 = a2;
  v10 = 0;
  v11 = 0;
  v44 = vdupq_n_s8(a2 << 31 >> 31);
  v45 = v2;

LABEL_5:
  v12 = v10;
  if (!v8)
  {
    goto LABEL_7;
  }

  do
  {
    v10 = v12;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(v4 + 48) + ((v10 << 8) | (4 * v13)));
    if (v14[1])
    {
      sub_22EDD3000(v3, v50 & 1, *v14 >> 3, 1 << (*v14 & 7));
      goto LABEL_5;
    }

    v16 = *v3;
    v15 = v3[1];
    if ((v15 >> 62) <= 1)
    {
      v47 = v11;
      v49 = *v14;
      if (v15 >> 62 != 1)
      {
        sub_22EDD4074(v16, v15);
        v51 = v16;
        v3 = v45;
        LOWORD(v52) = v15;
        BYTE2(v52) = BYTE2(v15);
        HIBYTE(v52) = BYTE3(v15);
        LOBYTE(v53) = BYTE4(v15);
        HIBYTE(v53) = BYTE5(v15);
        v54 = BYTE6(v15);
        v41 = (&v51 + 4 * v49);
        *v41 = v44;
        v41[1] = v44;
        v42 = v43 & 0xF00000000000000 | v52 | ((v53 | (v54 << 16)) << 32);
        *v45 = v51;
        v45[1] = v42;
        v43 = v42;
        v4 = v46;
        goto LABEL_5;
      }

      v21 = v15 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22EDD4074(v16, v15);
      *v3 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      v22 = v16;
      v23 = v16 >> 32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        if (v23 < v16)
        {
          goto LABEL_47;
        }

        if (sub_22EE3BAA4() && __OFSUB__(v16, sub_22EE3BAD4()))
        {
LABEL_50:
          __break(1u);
        }

        sub_22EE3BAE4();
        swift_allocObject();
        v36 = sub_22EE3BA94();

        v21 = v36;
      }

      if (v23 < v16)
      {
        goto LABEL_45;
      }

      v28 = v16;

      result = sub_22EE3BAA4();
      if (!result)
      {
        __break(1u);
LABEL_52:
        __break(1u);
        return result;
      }

      v37 = result;
      v38 = sub_22EE3BAD4();
      if (__OFSUB__(v16, v38))
      {
        goto LABEL_46;
      }

      v39 = v38;
      sub_22EE3BAC4();
      v40 = (v37 + v22 + 32 * v49 - v39);
      *v40 = v44;
      v40[1] = v44;

      v35 = v21 | 0x4000000000000000;
    }

    else
    {
      if (v15 >> 62 != 2)
      {
        goto LABEL_5;
      }

      v47 = v11;
      v48 = *v14;
      v17 = v15 & 0x3FFFFFFFFFFFFFFFLL;

      sub_22EDD4074(v16, v15);
      *v3 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = v16;
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (sub_22EE3BAA4())
        {
          if (__OFSUB__(v19, sub_22EE3BAD4()))
          {
            goto LABEL_49;
          }

          if (__OFSUB__(v20, v19))
          {
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
            goto LABEL_50;
          }
        }

        else if (__OFSUB__(v20, v19))
        {
          goto LABEL_48;
        }

        sub_22EE3BAE4();
        swift_allocObject();
        v24 = sub_22EE3BA94();

        v17 = v24;
        v16 = v18;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v16 + 16);
        v26 = *(v16 + 24);
        sub_22EE3BCF4();
        v27 = swift_allocObject();
        *(v27 + 16) = v25;
        *(v27 + 24) = v26;

        v16 = v27;
      }

      v28 = v16;
      v29 = *(v16 + 16);
      result = sub_22EE3BAA4();
      if (!result)
      {
        goto LABEL_52;
      }

      v31 = result;
      v32 = sub_22EE3BAD4();
      if (__OFSUB__(v29, v32))
      {
        goto LABEL_44;
      }

      v33 = v32;
      sub_22EE3BAC4();
      v34 = (v31 + v29 + 32 * v48 - v33);
      *v34 = v44;
      v34[1] = v44;
      v35 = v17 | 0x8000000000000000;
    }

    v3 = v45;
    v4 = v46;
    *v45 = v28;
    v45[1] = v35;
    v12 = v10;
    v11 = v47;
  }

  while (v8);
  while (1)
  {
LABEL_7:
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v12;
    if (v8)
    {
      goto LABEL_10;
    }
  }
}

uint64_t sub_22EDD17AC(uint64_t result, uint64_t a2, unint64_t a3)
{
  LOBYTE(v3) = result;
  v44[2] = *MEMORY[0x277D85DE8];
  if ((result & 0x10000) != 0)
  {
    v9 = 1 << (result & 7);
    v10 = result >> 3;
    v11 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v11 != 2)
      {
        memset(v44, 0, 14);
        goto LABEL_62;
      }

      v12 = *(a2 + 16);
      v3 = sub_22EE3BAA4();
      if (v3)
      {
        result = sub_22EE3BAD4();
        v4 = v12 - result;
        if (__OFSUB__(v12, result))
        {
          __break(1u);
          goto LABEL_17;
        }

        goto LABEL_59;
      }
    }

    else
    {
      if (!v11)
      {
        v44[0] = a2;
        LOWORD(v44[1]) = a3;
        BYTE2(v44[1]) = BYTE2(a3);
        BYTE3(v44[1]) = BYTE3(a3);
        BYTE4(v44[1]) = BYTE4(a3);
        BYTE5(v44[1]) = BYTE5(a3);
LABEL_62:
        v43 = *(v44 + v10);
        return (v43 & v9) != 0;
      }

      v41 = a2;
      if (a2 > a2 >> 32)
      {
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }

      v3 = sub_22EE3BAA4();
      if (v3)
      {
        v42 = sub_22EE3BAD4();
        v4 = v41 - v42;
        if (__OFSUB__(v41, v42))
        {
          goto LABEL_73;
        }

LABEL_59:
        v3 += v4;
      }
    }

    sub_22EE3BAC4();
    v43 = *(v3 + v10);
    return (v43 & v9) != 0;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
LABEL_17:
    if (v4 != 2)
    {
      __break(1u);
      return result;
    }

    v13 = *(a2 + 16);
    v14 = *(a2 + 24);
    v15 = sub_22EE3BAA4();
    if (v15)
    {
      v16 = sub_22EE3BAD4();
      if (__OFSUB__(v13, v16))
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v15 += v13 - v16;
    }

    v17 = __OFSUB__(v14, v13);
    v18 = v14 - v13;
    if (v17)
    {
      goto LABEL_67;
    }

    v19 = sub_22EE3BAC4();
    if (v19 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v19;
    }

    v21 = v20 + v15;
    if (v15)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    if (!v15)
    {
      goto LABEL_69;
    }

    v23 = 32 * v3;
    if (v22 - v15 <= (v23 | 0x1F))
    {
      goto LABEL_69;
    }

    v24 = 0;
    v25 = v15 + v23;
    do
    {
      v26 = *(v25 + v24);
      result = v26 == 255;
    }

    while (v26 == 255 && v24++ != 31);
    return result;
  }

  if (!v4)
  {
    v44[0] = a2;
    LOWORD(v44[1]) = a3;
    BYTE2(v44[1]) = BYTE2(a3);
    BYTE3(v44[1]) = BYTE3(a3);
    BYTE4(v44[1]) = BYTE4(a3);
    BYTE5(v44[1]) = BYTE5(a3);
    v5 = 4 * result;
    if (((v5 * 8) | 0x1F) < BYTE6(a3))
    {
      v6 = 0;
      v7 = &v44[v5];
      do
      {
        v8 = *(v7 + v6);
        result = v8 == 255;
        if (v6 == 31)
        {
          break;
        }

        ++v6;
      }

      while (v8 == 255);
      return result;
    }

    __break(1u);
    goto LABEL_66;
  }

  v28 = a2;
  v29 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v30 = sub_22EE3BAA4();
  if (v30)
  {
    v31 = sub_22EE3BAD4();
    if (__OFSUB__(v28, v31))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
    }

    v30 += v28 - v31;
  }

  v32 = sub_22EE3BAC4();
  if (v32 >= v29)
  {
    v33 = v29;
  }

  else
  {
    v33 = v32;
  }

  v34 = v33 + v30;
  if (v30)
  {
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (!v30)
  {
    goto LABEL_68;
  }

  v36 = 32 * v3;
  if (v35 - v30 <= (v36 | 0x1F))
  {
    goto LABEL_68;
  }

  v37 = 0;
  v38 = v30 + v36;
  do
  {
    v39 = *(v38 + v37);
    result = v39 == 255;
  }

  while (v39 == 255 && v37++ != 31);
  return result;
}

unint64_t sub_22EDD1FA0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22EE3C314();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22EDD2CA8(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_22EDD2CA8((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_22EE3C2F4();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_22EE3C1E4();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_22EE3C1E4();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_22EE3C314();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_22EDD2CA8(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22EE3C314();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22EDD2CA8(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22EDD2CA8((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22EE3C1E4();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22EDD2360(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  sub_22EE3CC74();
  if ((v3 & 0x10000) != 0)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  v6 = sub_22EE3CCC4();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = v6 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_14:
    v13 = HIWORD(v3) & 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    sub_22EDD274C(v3 & 0x1FFFF, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v16;
    result = 1;
    goto LABEL_15;
  }

  v10 = ~v8;
  v11 = *(v5 + 48);
  while (1)
  {
    v12 = (v11 + 4 * v9);
    LOBYTE(v13) = *(v12 + 2);
    if ((v13 & 1) == 0)
    {
      break;
    }

    if ((v3 & 0x10000) != 0 && *v12 == v3)
    {
      result = 0;
      goto LABEL_15;
    }

LABEL_6:
    v9 = (v9 + 1) & v10;
    if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ((v3 & 0x10000) != 0 || *v12 != v3)
  {
    goto LABEL_6;
  }

  result = 0;
  LOWORD(v3) = *v12;
LABEL_15:
  *a1 = v3;
  *(a1 + 2) = v13;
  return result;
}

uint64_t sub_22EDD24C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  result = sub_22EE3C824();
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
      v18 = *(v3 + 48) + 4 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 2);
      sub_22EE3CC74();
      if (v20)
      {
        MEMORY[0x2318F6370](1);
        sub_22EE3CCA4();
      }

      else
      {
        MEMORY[0x2318F6370](0);
        sub_22EE3CC94();
      }

      result = sub_22EE3CCC4();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 4 * v13;
      *v14 = v19;
      *(v14 + 2) = v20;
      ++*(v5 + 16);
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

uint64_t sub_22EDD274C(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a3)
  {
    sub_22EDD24C0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22EDD28F8();
      a2 = v7;
      goto LABEL_21;
    }

    sub_22EDD2A4C(v5 + 1);
  }

  v8 = *v3;
  sub_22EE3CC74();
  if ((v4 & 0x10000) != 0)
  {
    MEMORY[0x2318F6370](1);
    sub_22EE3CCA4();
  }

  else
  {
    MEMORY[0x2318F6370](0);
    sub_22EE3CC94();
  }

  result = sub_22EE3CCC4();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = (*(v8 + 48) + 4 * a2);
      if (v11[1])
      {
        if ((v4 & 0x10000) != 0 && *v11 == v4)
        {
          goto LABEL_20;
        }
      }

      else if ((v4 & 0x10000) == 0 && *v11 == v4)
      {
LABEL_20:
        result = sub_22EE3CBD4();
        __break(1u);
        break;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_21:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v13 = *(v12 + 48) + 4 * a2;
  *v13 = v4;
  *(v13 + 2) = BYTE2(v4) & 1;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v16;
  }

  return result;
}

void *sub_22EDD28F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  v2 = *v0;
  v3 = sub_22EE3C814();
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
    for (i = (v9 + 63) >> 6; v11; *(v20 + 2) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 2);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
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

uint64_t sub_22EDD2A4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D70, &qword_22EE3FA98);
  result = sub_22EE3C824();
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
      v17 = *(v3 + 48) + 4 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 2);
      sub_22EE3CC74();
      if (v19)
      {
        MEMORY[0x2318F6370](1);
        sub_22EE3CCA4();
      }

      else
      {
        MEMORY[0x2318F6370](0);
        sub_22EE3CC94();
      }

      result = sub_22EE3CCC4();
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

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 4 * v12;
      *v13 = v18;
      *(v13 + 2) = v19;
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
        goto LABEL_29;
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

char *sub_22EDD2CA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D90, &unk_22EE43590);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDD2DB4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EDD2DF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDD2DD4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EDD2EF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_22EDD2DF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D78, &unk_22EE3FAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 4 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_22EDD2EF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *sub_22EDD3000(uint64_t *result, char a2, uint64_t a3, char a4)
{
  v7 = result;
  v33 = *MEMORY[0x277D85DE8];
  v9 = *result;
  v8 = result[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      result = sub_22EDD4074(v9, v8);
      v31 = v9;
      LOWORD(v32) = v8;
      BYTE2(v32) = BYTE2(v8);
      BYTE3(v32) = BYTE3(v8);
      BYTE4(v32) = BYTE4(v8);
      BYTE5(v32) = BYTE5(v8);
      BYTE6(v32) = BYTE6(v8);
      if (a2)
      {
        v11 = *(&v31 + a3) | a4;
      }

      else
      {
        v11 = *(&v31 + a3) & ~a4;
      }

      *(&v31 + a3) = v11;
      v21 = v32 | ((WORD2(v32) | (BYTE6(v32) << 16)) << 32);
      *v7 = v31;
      v7[1] = v21;
      return result;
    }

    v19 = v8 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22EDD4074(v9, v8);
    *v7 = xmmword_22EE3F920;
    sub_22EDD4074(0, 0xC000000000000000);
    v20 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v20 < v9)
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (sub_22EE3BAA4() && __OFSUB__(v9, sub_22EE3BAD4()))
      {
LABEL_32:
        __break(1u);
      }

      sub_22EE3BAE4();
      swift_allocObject();
      v22 = sub_22EE3BA94();

      v19 = v22;
    }

    if (v20 >= v9)
    {
      v23 = a2;

      result = sub_22EE3BAA4();
      if (result)
      {
        v24 = result;
        v25 = sub_22EE3BAD4();
        if (!__OFSUB__(v9, v25))
        {
          v26 = v24 + v9 - v25;
          sub_22EE3BAC4();
          if (v23)
          {
            v27 = v26[a3] | a4;
          }

          else
          {
            v27 = v26[a3] & ~a4;
          }

          v26[a3] = v27;

          *v7 = v9;
          v7[1] = v19 | 0x4000000000000000;
          return result;
        }

        goto LABEL_30;
      }

LABEL_34:
      __break(1u);
      return result;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v10 != 2)
  {
    return result;
  }

  sub_22EDD4074(v9, v8);
  v31 = v9;
  v32 = v8 & 0x3FFFFFFFFFFFFFFFLL;
  *v7 = xmmword_22EE3F920;
  sub_22EDD4074(0, 0xC000000000000000);
  sub_22EE3BCC4();
  v13 = v31;
  v12 = v32;
  v14 = *(v31 + 16);
  result = sub_22EE3BAA4();
  if (!result)
  {
    __break(1u);
    goto LABEL_34;
  }

  v15 = result;
  v16 = sub_22EE3BAD4();
  if (__OFSUB__(v14, v16))
  {
    __break(1u);
    goto LABEL_29;
  }

  v17 = v15 + v14 - v16;
  result = sub_22EE3BAC4();
  if (a2)
  {
    v18 = v17[a3] | a4;
  }

  else
  {
    v18 = v17[a3] & ~a4;
  }

  v17[a3] = v18;
  *v7 = v13;
  v7[1] = v12 | 0x8000000000000000;
  return result;
}

uint64_t sub_22EDD33A8(uint64_t *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t))
{
  v26 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      sub_22EDD4020(a2, a3);

      sub_22EDD4074(v9, v8);
      *&v25 = v9;
      *(&v25 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22EE3F920;
      sub_22EDD4074(0, 0xC000000000000000);
      sub_22EE3BCC4();
      v14 = *(&v25 + 1);
      v16 = *(v25 + 16);
      v15 = *(v25 + 24);
      v17 = sub_22EE3BAA4();
      if (v17)
      {
        v18 = v17;
        v19 = sub_22EE3BAD4();
        v20 = v16 - v19;
        if (__OFSUB__(v16, v19))
        {
          __break(1u);
        }

        else if (!__OFSUB__(v15, v16))
        {
          sub_22EE3BAC4();
          a4(v18 + v20, a2, a3);
          sub_22EDD4074(a2, a3);
          result = sub_22EDD4074(a2, a3);
          *a1 = v25;
          a1[1] = v14 | 0x8000000000000000;
          return result;
        }

        __break(1u);
      }

      result = sub_22EDD4074(a2, a3);
      __break(1u);
    }

    else
    {
      *(&v25 + 7) = 0;
      *&v25 = 0;
      a4(&v25, a2, a3);
      return sub_22EDD4074(a2, a3);
    }
  }

  else if (v10)
  {
    sub_22EDD4020(a2, a3);
    sub_22EDD4020(v9, v8);
    sub_22EDD4074(v9, v8);
    *&v25 = v9;
    *(&v25 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_22EE3F920;
    sub_22EDD4074(0, 0xC000000000000000);
    sub_22EDD36EC(&v25, a2, a3, a5);
    result = sub_22EDD4074(a2, a3);
    v22 = *(&v25 + 1) | 0x4000000000000000;
    *a1 = v25;
    a1[1] = v22;
  }

  else
  {
    sub_22EDD4020(a2, a3);
    sub_22EDD4074(v9, v8);
    *&v25 = v9;
    WORD4(v25) = v8;
    BYTE10(v25) = BYTE2(v8);
    BYTE11(v25) = BYTE3(v8);
    BYTE12(v25) = BYTE4(v8);
    BYTE13(v25) = BYTE5(v8);
    BYTE14(v25) = BYTE6(v8);
    a4(&v25, a2, a3);
    v11 = v25;
    v12 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
    sub_22EDD4074(a2, a3);
    result = sub_22EDD4074(a2, a3);
    *a1 = v11;
    a1[1] = v12;
  }

  return result;
}

uint64_t sub_22EDD36EC(int *a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = sub_22EE3BCE4();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_22EE3BAA4();
  if (result)
  {
    v10 = result;
    result = sub_22EE3BAD4();
    v11 = __OFSUB__(v9, result);
    v12 = v9 - result;
    if (!v11)
    {
      sub_22EE3BAC4();
      a4(v10 + v12, a2, a3);

      return sub_22EDD4074(a2, a3);
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22EDD37A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22EE3BAA4();
    if (v10)
    {
      v11 = sub_22EE3BAD4();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22EE3BAC4();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22EE3BAA4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22EE3BAD4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22EE3BAC4();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_22EDD39D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_22EDD40C8(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22EDD4074(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_22EDD37A8(v13, a3, a4, &v12);
  v10 = v4;
  sub_22EDD4074(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_22EDD3B68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_22EDD459C();
  result = MEMORY[0x2318F5B30](v2, &type metadata for Filter, v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 34);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 4;
      sub_22EDD2360(v8, v6 | (v7 << 16));
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

unint64_t sub_22EDD3BE4(uint64_t a1, unint64_t a2)
{
  v41 = 44;
  v42 = 0xE100000000000000;
  v40 = &v41;

  v6 = sub_22EDD1FA0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22EDD4544, v39, a1, a2, v5);
  v7 = *(v6 + 16);
  if (v7)
  {
    v36 = a1;
    v37 = a2;
    v45 = MEMORY[0x277D84F90];
    result = sub_22EDD2DB4(0, v7, 0);
    v9 = 0;
    v10 = v45;
    v11 = (v6 + 56);
    v38 = v7;
    while (v9 < *(v6 + 16))
    {
      v13 = *(v11 - 3);
      v12 = *(v11 - 2);
      v14 = *(v11 - 1);
      v15 = *v11;

      v16 = sub_22EDD10A0(83, 0xE100000000000000, v13, v12, v14, v15);
      if (v16)
      {
        result = sub_22EE3C614();
        if (v17)
        {
          result = v12;
        }

        if (v12 >> 14 < result >> 14)
        {
          goto LABEL_28;
        }

        v41 = sub_22EE3C654();
        v42 = v18;
        v43 = v19;
        v44 = v20;
        v21 = sub_22EDD4648();
        v22 = sub_22EE11A98(MEMORY[0x277D83E40], v21);
        v24 = v23;

        if ((v24 & 1) != 0 || v22 >> 16)
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((sub_22EDD10A0(67, 0xE100000000000000, v13, v12, v14, v15) & 1) == 0)
        {
          goto LABEL_23;
        }

        result = sub_22EE3C614();
        if (v25)
        {
          result = v12;
        }

        if (v12 >> 14 < result >> 14)
        {
          goto LABEL_29;
        }

        v41 = sub_22EE3C654();
        v42 = v26;
        v43 = v27;
        v44 = v28;
        v29 = sub_22EDD4648();
        v22 = sub_22EE11A98(MEMORY[0x277D83E40], v29);
        v31 = v30;

        if ((v31 & 1) != 0 || v22 >= 0x100)
        {
LABEL_23:
          v22 = type metadata accessor for KTraceRecordError(0);
          sub_22EDD45F0();
          swift_allocError();
          *v35 = v36;
          v35[1] = v37;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

LABEL_24:

          return v22;
        }
      }

      if (v2)
      {
        goto LABEL_24;
      }

      v45 = v10;
      v33 = *(v10 + 16);
      v32 = *(v10 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_22EDD2DB4((v32 > 1), v33 + 1, 1);
        v10 = v45;
      }

      ++v9;
      *(v10 + 16) = v33 + 1;
      v34 = v10 + 4 * v33;
      *(v34 + 32) = v22;
      *(v34 + 34) = v16 & 1;
      v11 += 4;
      if (v38 == v9)
      {

        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
LABEL_25:
    v22 = sub_22EDD3B68(v10);

    return v22;
  }

  return result;
}

unint64_t sub_22EDD3F74()
{
  result = qword_27DA94D50;
  if (!qword_27DA94D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA94D48, &qword_22EE41F60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D50);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_22EDD4020(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22EDD4074(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_22EDD40C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22EE3BAA4();
  v11 = result;
  if (result)
  {
    result = sub_22EE3BAD4();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22EE3BAC4();
  sub_22EDD37A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_22EDD4180(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22EDD4020(a3, a4);
          return sub_22EDD39D8(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_22EDD42EC()
{
  result = qword_27DA94D58;
  if (!qword_27DA94D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D58);
  }

  return result;
}

uint64_t __swift_memcpy3_2(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Filter(unsigned __int16 *a1, unsigned int a2)
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
  if (v4 <= 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4 ^ 0xFF;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for Filter(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 2) = -a2;
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22EDD4494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22EDD44E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_22EDD4544(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22EE3CBA4() & 1;
  }
}

unint64_t sub_22EDD459C()
{
  result = qword_27DA94D68;
  if (!qword_27DA94D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D68);
  }

  return result;
}

unint64_t sub_22EDD45F0()
{
  result = qword_27DA94D80;
  if (!qword_27DA94D80)
  {
    type metadata accessor for KTraceRecordError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D80);
  }

  return result;
}

unint64_t sub_22EDD4648()
{
  result = qword_27DA94D88;
  if (!qword_27DA94D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94D88);
  }

  return result;
}

unint64_t PassiveCollectingError.errorDescription.getter()
{
  v1 = sub_22EE3BCB4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22EE3BDA4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = type metadata accessor for PassiveCollectingError(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22EDDB544(v0, v14, type metadata accessor for PassiveCollectingError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        (*(v2 + 32))(v4, v14, v1);
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_22EE3C864();

        v30 = 0xD000000000000012;
        v31 = 0x800000022EE47C90;
        sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v27 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v27);

        v17 = 0xD000000000000014;
        v18 = 0x800000022EE47CB0;
        goto LABEL_12;
      }

      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DA0, &qword_22EE3FAD8) + 48);
      v20 = *(v6 + 32);
      v20(v11, v14, v5);
      v20(v9, (v14 + v19), v5);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22EE3C864();

      v30 = 0x6164207472617453;
      v31 = 0xEB00000000206574;
      sub_22EDD4D0C(&qword_27DA94DA8, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v21 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v21);

      MEMORY[0x2318F58F0](0xD000000000000010, 0x800000022EE47CD0);
      v22 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v22);

      v23 = v30;
      v24 = *(v6 + 8);
      v24(v9, v5);
      v24(v11, v5);
    }

    else
    {
      v25 = *v14;
      v26 = v14[1];
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22EE3C864();

      v30 = 0xD000000000000019;
      v31 = 0x800000022EE47C40;
      MEMORY[0x2318F58F0](v25, v26);

      return v30;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload != 3)
      {
        (*(v2 + 32))(v4, v14, v1);
        v30 = 0;
        v31 = 0xE000000000000000;
        sub_22EE3C864();

        v30 = 0xD000000000000017;
        v31 = 0x800000022EE47C00;
        sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v28 = sub_22EE3CB84();
        MEMORY[0x2318F58F0](v28);

        goto LABEL_14;
      }

      (*(v2 + 32))(v4, v14, v1);
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_22EE3C864();

      v30 = 0xD00000000000002ALL;
      v31 = 0x800000022EE47C60;
      sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v16 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v16);

      v17 = 39;
      v18 = 0xE100000000000000;
LABEL_12:
      MEMORY[0x2318F58F0](v17, v18);
LABEL_14:
      v23 = v30;
      (*(v2 + 8))(v4, v1);
      return v23;
    }

    if (EnumCaseMultiPayload == 5)
    {
      return 0xD000000000000019;
    }

    else
    {
      return 0xD000000000000036;
    }
  }

  return v23;
}

uint64_t sub_22EDD4D0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22EDD4DBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v46 = a5;
  v42 = type metadata accessor for PassiveTraceInterval(0);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v40 - v8;
  v10 = sub_22EE3BDA4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = swift_projectBox();
  v48 = swift_projectBox();
  v49 = a1;
  v18 = [a1 bootDate];
  sub_22EE3BD84();

  swift_beginAccess();
  v19 = *(v11 + 16);
  v47 = v17;
  v19(v14, v17, v10);
  LOBYTE(v18) = sub_22EE3BD64();
  v45 = v11;
  v20 = *(v11 + 8);
  v20(v14, v10);
  v20(v16, v10);
  if (v18)
  {
    v21 = [v49 uuid];
    sub_22EE3BDC4();

    v22 = sub_22EE3BDF4();
    (*(*(v22 - 8) + 56))(v9, 0, 1, v22);
    v23 = v48;
  }

  else
  {
    v24 = [v49 bootDate];
    sub_22EE3BD84();

    sub_22EE3BA44();
    v25 = sub_22EE3BD54();
    v20(v14, v10);
    result = (v20)(v16, v10);
    if (v25)
    {
      return result;
    }

    v27 = v47;
    swift_beginAccess();
    v41 = v10;
    v19(v16, v27, v10);
    v28 = v49;
    v29 = [v49 bootDate];
    sub_22EE3BD84();

    v30 = v43;
    sub_22EE3BA54();
    v23 = v48;
    swift_beginAccess();
    sub_22EDDB6E8(v23, v30 + *(v42 + 20), &qword_27DA94DB0, &unk_22EE3FAE0);
    v31 = v46;
    swift_beginAccess();
    v32 = *(v31 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + 16) = v32;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_22EDDA04C(0, v32[2] + 1, 1, v32);
      *(v31 + 16) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_22EDDA04C((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    sub_22EDDC3D0(v30, v32 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v35, type metadata accessor for PassiveTraceInterval);
    *(v31 + 16) = v32;
    swift_endAccess();
    v36 = [v28 bootDate];
    sub_22EE3BD84();

    v37 = v47;
    swift_beginAccess();
    (*(v45 + 40))(v37, v16, v41);
    v38 = [v28 uuid];
    sub_22EE3BDC4();

    v39 = sub_22EE3BDF4();
    (*(*(v39 - 8) + 56))(v9, 0, 1, v39);
  }

  swift_beginAccess();
  return sub_22EDDC5D4(v9, v23);
}

void sub_22EDD5384(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t PassiveDataSourceCollectionConfig.options.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PassiveDataSourceCollectionConfig.dataCategoryNames.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

ktrace::PassiveDataSourceCollectionConfig __swiftcall PassiveDataSourceCollectionConfig.init(options:dataCategoryNames:)(Swift::OpaquePointer options, Swift::OpaquePointer dataCategoryNames)
{
  v2->_rawValue = options._rawValue;
  v2[1]._rawValue = dataCategoryNames._rawValue;
  result.dataCategoryNames = dataCategoryNames;
  result.options = options;
  return result;
}

Swift::Void __swiftcall PassiveDataSourceCollectionConfig.add(name:value:)(Swift::String name, Swift::String value)
{
  v3 = v2;
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = name._object;
  v7 = name._countAndFlagsBits;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v11 = sub_22EDDADA0(v7, v6, sub_22EDDA5EC);
  v12 = *(v9 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_17;
  }

  v15 = v10;
  if (*(v9 + 3) < v14)
  {
    sub_22EDDA7A8(v14, isUniquelyReferenced_nonNull_native, &qword_27DA94F08, &unk_22EE3FF50);
    v16 = sub_22EDDADA0(v7, v6, sub_22EDDA5EC);
    if ((v15 & 1) != (v17 & 1))
    {
      goto LABEL_21;
    }

    v11 = v16;
    *v3 = v9;
    if (v15)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (isUniquelyReferenced_nonNull_native)
  {
    *v3 = v9;
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  sub_22EDDAA48(&qword_27DA94F08, &unk_22EE3FF50);
  *v3 = v9;
  if ((v15 & 1) == 0)
  {
LABEL_8:
    *&v9[8 * (v11 >> 6) + 64] |= 1 << v11;
    v18 = (*(v9 + 6) + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(*(v9 + 7) + 8 * v11) = MEMORY[0x277D84F90];
    v19 = *(v9 + 2);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (!v20)
    {
      *(v9 + 2) = v21;

      goto LABEL_10;
    }

    __break(1u);
LABEL_21:
    sub_22EE3CBE4();
    __break(1u);
    return;
  }

LABEL_10:
  v7 = *(v9 + 7);
  v9 = *(v7 + 8 * v11);
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v11) = v9;
  if ((v22 & 1) == 0)
  {
LABEL_17:
    v9 = sub_22EDDA224(0, *(v9 + 2) + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
  }

  v24 = *(v9 + 2);
  v23 = *(v9 + 3);
  if (v24 >= v23 >> 1)
  {
    v9 = sub_22EDDA224((v23 > 1), v24 + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
  }

  *(v9 + 2) = v24 + 1;
  v25 = &v9[16 * v24];
  *(v25 + 4) = countAndFlagsBits;
  *(v25 + 5) = object;
}

uint64_t PassiveCollectionResult.OutputFile.succinctDescription.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22EE3FAB0;
  v2 = sub_22EE3BC84();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x277D837D0];
  *(v1 + 64) = sub_22EDDB4DC();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  v6 = *(v0 + *(v5 + 24));
  v7 = MEMORY[0x277D839F8];
  v8 = MEMORY[0x277D83A80];
  *(v1 + 96) = MEMORY[0x277D839F8];
  *(v1 + 104) = v8;
  *(v1 + 72) = v6;
  v9 = *(v0 + *(v5 + 20));
  *(v1 + 136) = v7;
  *(v1 + 144) = v8;
  *(v1 + 112) = v9;

  return sub_22EE3C134();
}

uint64_t sub_22EDD5824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v6 = sub_22EE3BCB4();
  v7 = *(v6 - 8);
  (*(v7 + 16))(a2, a1, v6);
  v8 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  *(a2 + *(v8 + 20)) = a3;
  v9 = [objc_opt_self() defaultManager];
  sub_22EE3BC84();
  v10 = sub_22EE3C0F4();

  v22[0] = 0;
  v11 = [v9 attributesOfItemAtPath:v10 error:v22];

  v12 = v22[0];
  if (v11)
  {
    type metadata accessor for FileAttributeKey(0);
    sub_22EDD4D0C(&qword_27DA94DC0, type metadata accessor for FileAttributeKey, &unk_22EE3FEE8);
    v13 = sub_22EE3C064();
    v14 = v12;

    if (*(v13 + 16) && (v15 = sub_22EDDA558(*MEMORY[0x277CCA1C0]), (v16 & 1) != 0))
    {
      sub_22ED7E678(*(v13 + 56) + 32 * v15, v22);
      (*(v7 + 8))(a1, v6);

      result = swift_dynamicCast();
      if (result)
      {
        v18 = v21 * 0.0009765625 * 0.0009765625;
LABEL_8:
        *(a2 + *(v8 + 24)) = v18;
        return result;
      }
    }

    else
    {

      result = (*(v7 + 8))(a1, v6);
    }

    v18 = 0.0;
    goto LABEL_8;
  }

  v19 = v22[0];
  sub_22EE3BBA4();

  swift_willThrow();
  v20 = *(v7 + 8);
  v20(a1, v6);
  return (v20)(a2, v6);
}

uint64_t PassiveCollectionResult.dataSourceErrors.getter()
{
  type metadata accessor for PassiveCollectionResult(0);
}

uint64_t PassiveCollectionResult.infrastructureErrors.getter()
{
  type metadata accessor for PassiveCollectionResult(0);
}

unint64_t PassiveCollectionResult.succinctDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v66 - v2;
  v4 = sub_22EE3BDA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = 0;
  v76 = 0xE000000000000000;
  v8 = type metadata accessor for PassiveCollectionResult(0);
  v9 = *(v0 + *(v8 + 24));
  if (v9)
  {
    v66 = v0;
    v67 = v8;
    v10 = v9 + 64;
    v11 = 1 << *(v9 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v9 + 64);
    v14 = (v11 + 63) >> 6;

    v16 = 0;
    v68 = v14;
    v69 = v9 + 64;
    v70 = v9;
    while (v13)
    {
LABEL_11:
      v18 = __clz(__rbit64(v13)) | (v16 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = v19[1];
      v21 = *(*(v9 + 56) + 8 * v18);
      v73 = *v19;
      v74 = v20;

      MEMORY[0x2318F58F0](8250, 0xE200000000000000);
      v72 = *(v21 + 16);
      v22 = sub_22EE3CB84();
      MEMORY[0x2318F58F0](v22);

      MEMORY[0x2318F58F0](0x73726F72726520, 0xE700000000000000);
      MEMORY[0x2318F58F0](v73, v74);

      v71 = v21;
      v23 = *(v21 + 16);
      if (v23)
      {
        v24 = (v71 + 32);
        do
        {
          v25 = *v24++;
          v73 = 2314;
          v74 = 0xE200000000000000;
          swift_getErrorValue();
          v26 = v25;
          v27 = sub_22EE3CBF4();
          MEMORY[0x2318F58F0](v27);

          MEMORY[0x2318F58F0](v73, v74);

          --v23;
        }

        while (v23);
      }

      v13 &= v13 - 1;

      v10 = v69;
      v9 = v70;
      v14 = v68;
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v17 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    v28 = *(v66 + *(v67 + 28));
    if (v28)
    {
      goto LABEL_18;
    }

    return v75;
  }

  v28 = *(v0 + *(v8 + 28));
  if (v28)
  {
LABEL_18:
    v73 = 0;
    v74 = 0xE000000000000000;
    sub_22EE3C864();

    v73 = 0xD000000000000017;
    v74 = 0x800000022EE47D20;
    v72 = *(v28 + 16);
    v29 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v29);

    MEMORY[0x2318F58F0](0x73726F72726520, 0xE700000000000000);
    MEMORY[0x2318F58F0](v73, v74);

    v30 = *(v28 + 16);
    if (v30)
    {
      v31 = (v28 + 32);
      do
      {
        v32 = *v31++;
        v73 = 2314;
        v74 = 0xE200000000000000;
        swift_getErrorValue();
        v33 = v32;
        v34 = sub_22EE3CBF4();
        MEMORY[0x2318F58F0](v34);

        MEMORY[0x2318F58F0](v73, v74);

        --v30;
      }

      while (v30);
    }

    return v75;
  }

  v67 = v8;
  v35 = objc_opt_self();
  v36 = v0;
  sub_22EE3BA64();
  v37 = sub_22EE3BD44();
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = [v35 localizedStringFromDate:v37 dateStyle:1 timeStyle:1];

  v70 = sub_22EE3C124();
  v71 = v40;

  sub_22EE3BA44();
  v41 = sub_22EE3BD44();
  v38(v7, v4);
  v42 = [v35 localizedStringFromDate:v41 dateStyle:1 timeStyle:1];

  v43 = sub_22EE3C124();
  v45 = v44;

  v46 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v46 setAllowedUnits_];
  [v46 setUnitsStyle_];
  sub_22EE3BA74();
  v47 = [v46 stringFromTimeInterval_];
  if (v47)
  {
    v48 = v47;
    v49 = sub_22EE3C124();
    v51 = v50;
  }

  else
  {
    v51 = 0xE700000000000000;
    v49 = 0x6E776F6E6B6E55;
  }

  v73 = v49;
  v74 = v51;

  MEMORY[0x2318F58F0](10272, 0xE200000000000000);
  MEMORY[0x2318F58F0](v70, v71);
  MEMORY[0x2318F58F0](540945696, 0xE400000000000000);
  MEMORY[0x2318F58F0](v43, v45);
  MEMORY[0x2318F58F0](41, 0xE100000000000000);
  v53 = v73;
  v52 = v74;
  v73 = 0;
  v74 = 0xE000000000000000;
  sub_22EDDB6E8(v36 + *(v67 + 20), v3, &qword_27DA94DC8, &unk_22EE3FAF0);
  v54 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  result = (*(*(v54 - 8) + 48))(v3, 1, v54);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_22EE3FAB0;
    v56 = sub_22EE3BC84();
    v58 = v57;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = sub_22EDDB4DC();
    *(v55 + 32) = v56;
    *(v55 + 40) = v58;
    v59 = *&v3[*(v54 + 24)];
    v60 = MEMORY[0x277D839F8];
    v61 = MEMORY[0x277D83A80];
    *(v55 + 96) = MEMORY[0x277D839F8];
    *(v55 + 104) = v61;
    *(v55 + 72) = v59;
    v62 = *&v3[*(v54 + 20)];
    *(v55 + 136) = v60;
    *(v55 + 144) = v61;
    *(v55 + 112) = v62;
    v63 = sub_22EE3C134();
    v65 = v64;
    sub_22EDDB5CC(v3);
    MEMORY[0x2318F58F0](v63, v65);

    MEMORY[0x2318F58F0](8250, 0xE200000000000000);
    MEMORY[0x2318F58F0](v53, v52);

    return v73;
  }

  return result;
}

uint64_t sub_22EDD63F0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t PassiveCollection.outputDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PassiveCollection(0) + 20);
  v4 = sub_22EE3BCB4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PassiveCollection.dataSourceOptions.getter()
{
  type metadata accessor for PassiveCollection(0);
}

uint64_t PassiveCollection.traceNamePrefix.getter()
{
  v1 = *(v0 + *(type metadata accessor for PassiveCollection(0) + 28));

  return v1;
}

uint64_t PassiveCollection.traceIntervals.getter()
{
  type metadata accessor for PassiveCollection(0);
}

uint64_t sub_22EDD65A8()
{
  v0 = sub_22EE3BE94();
  __swift_allocate_value_buffer(v0, qword_27DA9C8D0);
  __swift_project_value_buffer(v0, qword_27DA9C8D0);
  return sub_22EE3BE84();
}

uint64_t PassiveCollection.init(traceNamePrefix:startDate:endDate:outputDirectory:dataSourceOptions:flags:logger:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v91 = a6;
  v92 = a8;
  v82 = a7;
  v90 = a5;
  v95 = a4;
  v13 = sub_22EE3BA84();
  v84 = *(v13 - 8);
  v85 = v13;
  MEMORY[0x28223BE20](v13);
  v80 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DD0, &unk_22EE40AE0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v88 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v75 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v75 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v75 - v23;
  v25 = sub_22EE3BDA4();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v79 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v87 = &v75 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v93 = &v75 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = &v75 - v33;
  v35 = type metadata accessor for PassiveCollection(0);
  *(a9 + *(v35 + 44)) = 1;
  v36 = 0x5F65766973736170;
  if (a2)
  {
    v36 = a1;
    v37 = a2;
  }

  else
  {
    v37 = 0xED00006563617274;
  }

  v78 = v35;
  v38 = *(v35 + 28);
  v81 = a9;
  v39 = (a9 + v38);
  *v39 = v36;
  v39[1] = v37;
  v86 = v37;
  v94 = a3;
  sub_22EDDB6E8(a3, v24, &qword_27DA94DD0, &unk_22EE40AE0);
  v40 = *(v26 + 48);
  if (v40(v24, 1, v25) == 1)
  {
    sub_22EE3BD24();
    if (v40(v24, 1, v25) != 1)
    {
      sub_22EDDBA48(v24, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v26 + 32))(v34, v24, v25);
  }

  sub_22EDDB6E8(v95, v22, &qword_27DA94DD0, &unk_22EE40AE0);
  v41 = v40(v22, 1, v25);
  v42 = v93;
  if (v41 == 1)
  {
    sub_22EE3BD94();
    v43 = v40(v22, 1, v25);
    v44 = v88;
    if (v43 != 1)
    {
      sub_22EDDBA48(v22, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v26 + 32))(v93, v22, v25);
    v44 = v88;
  }

  sub_22EDD4D0C(&qword_27DA94DD8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v45 = sub_22EE3C0C4();
  v89 = v34;
  if ((v45 & 1) == 0)
  {

    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    swift_allocError();
    v53 = v52;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DA0, &qword_22EE3FAD8);
    v55 = v34;
    v56 = *(v54 + 48);
    v57 = *(v26 + 16);
    v57(v53, v55, v25);
    v57(v53 + v56, v42, v25);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_unknownObjectRelease();
    v58 = sub_22EE3BCB4();
    (*(*(v58 - 8) + 8))(v90, v58);
    sub_22EDDBA48(v95, &qword_27DA94DD0, &unk_22EE40AE0);
    sub_22EDDBA48(v94, &qword_27DA94DD0, &unk_22EE40AE0);
    v59 = *(v26 + 8);
    v59(v42, v25);
    v59(v89, v25);
  }

  v46 = v77;
  sub_22EDDB6E8(v94, v77, &qword_27DA94DD0, &unk_22EE40AE0);
  if (v40(v46, 1, v25) == 1)
  {
    sub_22EE3BD24();
    v47 = v40(v46, 1, v25) == 1;
    v48 = v90;
    v49 = v46;
    v51 = v84;
    v50 = v85;
    if (!v47)
    {
      sub_22EDDBA48(v49, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v26 + 32))(v87, v46, v25);
    v48 = v90;
    v51 = v84;
    v50 = v85;
  }

  sub_22EDDB6E8(v95, v44, &qword_27DA94DD0, &unk_22EE40AE0);
  v60 = v40(v44, 1, v25);
  v76 = v26;
  if (v60 == 1)
  {
    sub_22EE3BD94();
    if (v40(v44, 1, v25) != 1)
    {
      sub_22EDDBA48(v44, &qword_27DA94DD0, &unk_22EE40AE0);
    }
  }

  else
  {
    (*(v26 + 32))(v79, v44, v25);
  }

  v61 = v80;
  sub_22EE3BA54();
  v62 = v81;
  (*(v51 + 32))(v81, v61, v50);
  v63 = v78;
  v64 = v78[5];
  v65 = sub_22EE3BCB4();
  v66 = *(v65 - 8);
  (*(v66 + 16))(v62 + v64, v48, v65);
  *(v62 + v63[6]) = v91;
  *(v62 + v63[10]) = v92;
  *(v62 + v63[9]) = v82;
  v67 = v83;
  v68 = sub_22EDDAE24(v62);
  v69 = v48;
  v90 = v67;
  if (v67)
  {
    v70 = *(v66 + 8);
    v70(v48, v65);
    sub_22EDDBA48(v95, &qword_27DA94DD0, &unk_22EE40AE0);
    sub_22EDDBA48(v94, &qword_27DA94DD0, &unk_22EE40AE0);
    v71 = *(v76 + 8);
    v71(v93, v25);
    v71(v89, v25);
    (*(v51 + 8))(v62, v85);
    v70(v62 + v64, v65);
    swift_unknownObjectRelease();
  }

  v73 = v68;
  (*(v66 + 8))(v69, v65);
  sub_22EDDBA48(v95, &qword_27DA94DD0, &unk_22EE40AE0);
  sub_22EDDBA48(v94, &qword_27DA94DD0, &unk_22EE40AE0);
  v74 = *(v76 + 8);
  v74(v93, v25);
  result = (v74)(v89, v25);
  *(v62 + v63[8]) = v73;
  return result;
}

void sub_22EDD6FC8(uint64_t a1@<X8>)
{
  v28 = sub_22EE3BCB4();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PassiveCollection(0);
  v7 = (v1 + v6[7]);
  v8 = v6[11];
  v26 = v6[5];
  v9 = objc_opt_self();
  v10 = 0;
  v27 = v1;
  v21 = v8;
  v11 = *(v1 + v8);
  v22 = (v3 + 8);
  v23 = v9;
  v12 = (v3 + 32);
  v13 = v7[1];
  v25 = *v7;
  v24 = xmmword_22EE3F500;
  while (1)
  {
    v29 = v25;
    v30 = v13;

    MEMORY[0x2318F58F0](95, 0xE100000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D30, &qword_22EE3F510);
    v14 = swift_allocObject();
    *(v14 + 16) = v24;
    *(v14 + 56) = MEMORY[0x277D83E88];
    *(v14 + 64) = MEMORY[0x277D83ED0];
    *(v14 + 32) = v11;
    v15 = sub_22EE3C134();
    MEMORY[0x2318F58F0](v15);

    MEMORY[0x2318F58F0](0x637274612ELL, 0xE500000000000000);
    sub_22EE3BC44();

    if (v10)
    {
      (*v22)(a1, v28);
    }

    (*v12)(a1, v5, v28);
    v16 = v11 + 1;
    if (v11 == -1)
    {
      break;
    }

    v17 = [v23 defaultManager];
    v10 = 1;
    sub_22EE3BC84();
    v18 = sub_22EE3C0F4();

    v19 = [v17 fileExistsAtPath_];

    ++v11;
    if ((v19 & 1) == 0)
    {
      *(v27 + v21) = v16;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_22EDD725C@<X0>(uint64_t a1@<X0>, int64_t a2@<X8>)
{
  v200 = a1;
  v209 = *MEMORY[0x277D85DE8];
  v191 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  v190 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v174 = &v168 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_22EE3BA84();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v177 = &v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DC8, &unk_22EE3FAF0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v169 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v171 = &v168 - v9;
  v187 = type metadata accessor for PassiveTraceInterval(0);
  v10 = MEMORY[0x28223BE20](v187);
  v168 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v170 = &v168 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  MEMORY[0x28223BE20](v13 - 8);
  v185 = &v168 - v14;
  v186 = sub_22EE3BDF4();
  v184 = *(v186 - 1);
  MEMORY[0x28223BE20](v186);
  v182 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22EE3BE64();
  v195 = *(v16 - 8);
  v196 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v194 = &v168 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v168 - v19;
  v21 = sub_22EE3BCB4();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v173 = &v168 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v168 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v168 - v28;
  v30 = sub_22EE3BDA4();
  v202 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v172 = &v168 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v199 = &v168 - v34;
  MEMORY[0x28223BE20](v33);
  v197 = &v168 - v35;
  sub_22EE3BD94();
  v178 = v2;
  sub_22EDD6FC8(v29);
  if (qword_27DA96160 != -1)
  {
    goto LABEL_71;
  }

LABEL_2:
  v36 = sub_22EE3BE94();
  __swift_project_value_buffer(v36, qword_27DA9C8D0);
  v37 = *(v22 + 16);
  v201 = v29;
  v189 = v22 + 16;
  v188 = v37;
  v37(v27, v29, v21);
  sub_22EE3BE54();
  v38 = sub_22EE3BE74();
  v39 = sub_22EE3C574();
  v40 = sub_22EE3C5C4();
  v193 = v21;
  v198 = v22;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v180 = a2;
    v42 = v41;
    v43 = swift_slowAlloc();
    v183 = v30;
    v44 = v43;
    *&v206 = v43;
    *v42 = 136446210;
    v45 = sub_22EE3BC94();
    v46 = v21;
    v48 = v47;
    v49 = *(v22 + 8);
    v49(v27, v46);
    v50 = sub_22ED7DF24(v45, v48, &v206);

    *(v42 + 4) = v50;
    v51 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v38, v39, v51, "PassiveCollectInterval", "Collecting to path: %{public}s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    v52 = v44;
    v30 = v183;
    MEMORY[0x2318F8320](v52, -1, -1);
    v53 = v42;
    a2 = v180;
    MEMORY[0x2318F8320](v53, -1, -1);
  }

  else
  {

    v49 = *(v22 + 8);
    v49(v27, v21);
  }

  v54 = v195;
  v55 = v196;
  (v195[2])(v194, v20, v196);
  sub_22EE3BED4();
  swift_allocObject();
  v56 = sub_22EE3BEC4();
  (*(v54 + 8))(v20, v55);
  v29 = swift_allocObject();
  v57 = v201;
  sub_22EE3BC84();
  v58 = sub_22EE3C184();

  v59 = ktrace_file_create(0, (v58 + 32));

  v196 = v29;
  v60 = v200;
  v192 = v49;
  if (!v59)
  {
    *(v29 + 2) = 0xD000000000000015;
    *(v29 + 3) = 0x800000022EE47D40;
    sub_22EDDB544(v60, a2, type metadata accessor for PassiveTraceInterval);
    v77 = type metadata accessor for PassiveCollectionResult(0);
    (*(v190 + 56))(a2 + v77[5], 1, 1, v191);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_22EE3F500;
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    *(v78 + 32) = swift_allocError();
    v79 = v193;
    v188(v80, v57, v193);
    v81 = v196;
    swift_storeEnumTagMultiPayload();
    *(a2 + v77[6]) = 0;
    *(a2 + v77[7]) = v78;
    sub_22EDD8CA0(v56, v81);
    v82 = 0;
    goto LABEL_69;
  }

  v195 = v59;
  v179 = v56;
  v207 = 0u;
  v208 = 0u;
  v206 = 0u;
  v61 = v199;
  sub_22EE3BA64();
  v62 = v61;
  sub_22EE3BD74();
  v64 = v63;
  v65 = v63;
  v66 = *(v202 + 8);
  v194 = (v202 + 8);
  v181 = v66;
  v66(v61, v30);
  v68 = *&v65 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v67 = sub_22EDDA330((v68 > 1), v62, 1, v67);
LABEL_56:
    v138 = v197;
    v139 = v202;
    v67[2] = v62;
    v186 = v67;
    v67[a2 + 4] = v60;
    goto LABEL_63;
  }

  v68 = 0xC3E0000000000001;
  if (v64 <= -9.22337204e18)
  {
    goto LABEL_73;
  }

  v68 = 0x43E0000000000000;
  if (v64 >= 9.22337204e18)
  {
    goto LABEL_74;
  }

  v69 = (v64 - v64) * 1000000.0;
  v68 = fabs(v69);
  if (v68 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_75;
  }

  v68 = 0xC1E0000000200000;
  if (v69 <= -2147483650.0)
  {
    goto LABEL_76;
  }

  v68 = 0x41E0000000000000;
  if (v69 >= 2147483650.0)
  {
    goto LABEL_77;
  }

  *&v206 = v64;
  DWORD2(v206) = v69;
  v61 = v199;
  sub_22EE3BA44();
  v62 = v61;
  sub_22EE3BD74();
  v71 = v70;
  v72 = v70;
  v181(v61, v30);
  v68 = *&v72 & 0x7FFFFFFFFFFFFFFFLL;
  if ((*&v72 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_78;
  }

  v68 = 0xC3E0000000000001;
  if (v71 <= -9.22337204e18)
  {
    goto LABEL_79;
  }

  v68 = 0x43E0000000000000;
  if (v71 >= 9.22337204e18)
  {
    goto LABEL_80;
  }

  v73 = (v71 - v71) * 1000000.0;
  v68 = fabs(v73);
  if (v68 > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_81;
  }

  v68 = 0xC1E0000000200000;
  if (v73 <= -2147483650.0)
  {
    goto LABEL_82;
  }

  v68 = 0x41E0000000000000;
  if (v73 >= 2147483650.0)
  {
    goto LABEL_83;
  }

  *&v207 = v71;
  DWORD2(v207) = v73;
  v74 = v185;
  sub_22EDDB6E8(v60 + *(v187 + 20), v185, &qword_27DA94DB0, &unk_22EE3FAE0);
  v75 = v184;
  v76 = v186;
  if ((*(v184 + 48))(v74, 1, v186) == 1)
  {
    sub_22EDDBA48(v74, &qword_27DA94DB0, &unk_22EE3FAE0);
    v208 = 0uLL;
  }

  else
  {
    v83 = v29;
    v84 = a2;
    v85 = v30;
    v86 = v57;
    v87 = v182;
    (*(v75 + 32))(v182, v74, v76);
    v88 = sub_22EE3BDD4();
    v90 = v89;
    v91 = v87;
    v57 = v86;
    v30 = v85;
    a2 = v84;
    v29 = v83;
    v60 = v200;
    (*(v75 + 8))(v91, v76);
    *&v208 = v88;
    *(&v208 + 1) = v90;
  }

  v92 = v195;
  if (!ktrace_file_append_chunk(v195, 32816, 1, 0, &v206, 48))
  {
    *(v29 + 2) = 0xD000000000000029;
    *(v29 + 3) = 0x800000022EE47D60;
    sub_22EDDB544(v60, a2, type metadata accessor for PassiveTraceInterval);
    v97 = type metadata accessor for PassiveCollectionResult(0);
    (*(v190 + 56))(a2 + v97[5], 1, 1, v191);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_22EE3F500;
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    *(v98 + 32) = swift_allocError();
    v79 = v193;
    v188(v99, v201, v193);
    v100 = v196;
    v57 = v201;
    swift_storeEnumTagMultiPayload();
    *(a2 + v97[6]) = 0;
    *(a2 + v97[7]) = v98;
    sub_22EDD8CA0(v179, v100);
    v82 = 0;
    goto LABEL_69;
  }

  v93 = v203;
  v94 = sub_22EDDB85C(v92);
  if (v93)
  {
    *(v29 + 2) = 0xD00000000000002ALL;
    *(v29 + 3) = 0x800000022EE47D90;
    sub_22EDDB544(v60, a2, type metadata accessor for PassiveTraceInterval);
    v95 = type metadata accessor for PassiveCollectionResult(0);
    (*(v190 + 56))(a2 + v95[5], 1, 1, v191);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v96 = swift_allocObject();
    *(v96 + 16) = xmmword_22EE3F500;
    *(v96 + 32) = v93;
    *(a2 + v95[6]) = 0;
    *(a2 + v95[7]) = v96;
    sub_22EDD8CA0(v179, v29);
    v82 = 0;
    v79 = v193;
    goto LABEL_69;
  }

  v187 = v94;
  v183 = v30;
  v203 = 0;
  v180 = a2;
  v185 = sub_22EDDB750(MEMORY[0x277D84F90], &qword_27DA94EF8, &unk_22EE3FF40, sub_22EDDA5EC);
  v101 = type metadata accessor for PassiveCollection(0);
  v102 = v178;
  v22 = *(v178 + *(v101 + 40));
  swift_unknownObjectRetain();
  *&v206 = sub_22EDE4694();
  DWORD2(v206) = v103;
  *&v207 = v104;
  v105 = *(v102 + *(v101 + 24));
  v27 = (v105 + 64);
  v106 = 1 << *(v105 + 32);
  v107 = -1;
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  v21 = v107 & *(v105 + 64);
  a2 = (v106 + 63) >> 6;
  v186 = v105;

  v184 = 0;
  v108 = 0;
  while (v21)
  {
    v20 = v108;
LABEL_35:
    v109 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v110 = (v20 << 10) | (16 * v109);
    v111 = (v186[6] + v110);
    v29 = *v111;
    v112 = v111[1];
    v113 = v186[7] + v110;
    v114 = *v113;
    v22 = *(v113 + 8);

    v115 = v203;
    sub_22EDE46A8(v29, v112, v187, v114, v22);
    v203 = v115;
    if (v115)
    {

      sub_22ED97EE0(v184, 0);
      v116 = v185;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v204 = v116;
      v119 = sub_22EDDADA0(v29, v112, sub_22EDDA5EC);
      v120 = *(v116 + 16);
      v121 = (v118 & 1) == 0;
      v122 = v120 + v121;
      if (__OFADD__(v120, v121))
      {
        __break(1u);
LABEL_86:
        __break(1u);
      }

      if (*(v116 + 24) >= v122)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v118)
          {
            goto LABEL_45;
          }
        }

        else
        {
          v134 = v118;
          sub_22EDDAA48(&qword_27DA94EF8, &unk_22EE3FF40);
          v185 = v204;
          if (v134)
          {
            goto LABEL_45;
          }
        }
      }

      else
      {
        LODWORD(v184) = v118;
        sub_22EDDA7A8(v122, isUniquelyReferenced_nonNull_native, &qword_27DA94EF8, &unk_22EE3FF40);
        v185 = v204;
        v123 = sub_22EDDADA0(v29, v112, sub_22EDDA5EC);
        if ((v184 & 1) != (v124 & 1))
        {
          result = sub_22EE3CBE4();
          __break(1u);
          return result;
        }

        v119 = v123;
        if (v184)
        {
LABEL_45:

          v125 = v185;
          goto LABEL_46;
        }
      }

      v125 = v185;
      *(v185 + 8 * (v119 >> 6) + 64) |= 1 << v119;
      v126 = (v125[6] + 16 * v119);
      *v126 = v29;
      v126[1] = v112;
      *(v125[7] + 8 * v119) = MEMORY[0x277D84F90];
      v127 = v125[2];
      v128 = __OFADD__(v127, 1);
      v129 = v127 + 1;
      if (v128)
      {
        goto LABEL_86;
      }

      v125[2] = v129;
LABEL_46:
      v29 = v125[7];
      v130 = *&v29[8 * v119];
      v131 = swift_isUniquelyReferenced_nonNull_native();
      *&v29[8 * v119] = v130;
      if ((v131 & 1) == 0)
      {
        v130 = sub_22EDDA330(0, v130[2] + 1, 1, v130);
        *&v29[8 * v119] = v130;
      }

      v133 = v130[2];
      v132 = v130[3];
      v22 = v133 + 1;
      if (v133 >= v132 >> 1)
      {
        v130 = sub_22EDDA330((v132 > 1), v133 + 1, 1, v130);
        *&v29[8 * v119] = v130;
      }

      v130[2] = v22;
      v130[v133 + 4] = v203;
      v184 = sub_22EDD8FD0;
      v108 = v20;
      v203 = 0;
    }

    else
    {

      v108 = v20;
    }
  }

  v30 = v183;
  while (1)
  {
    v20 = v108 + 1;
    if (__OFADD__(v108, 1))
    {
      __break(1u);
LABEL_71:
      swift_once();
      goto LABEL_2;
    }

    if (v20 >= a2)
    {
      break;
    }

    v21 = *&v27[8 * v20];
    ++v108;
    if (v21)
    {
      goto LABEL_35;
    }
  }

  ktrace_machine_destroy(v187);
  if (*(v206 + 16))
  {
    v135 = v207;
    v136 = v195;
    v195 = v206;
    v137 = v203;
    sub_22EDE5B5C(v136, v200, v206);
    v60 = v137;
    v61 = v201;
    v187 = v135;
    if (v137)
    {
      v67 = sub_22EDDA330(0, 1, 1, MEMORY[0x277D84F90]);
      a2 = v67[2];
      v68 = v67[3];
      v62 = a2 + 1;
      if (a2 < v68 >> 1)
      {
        goto LABEL_56;
      }

      goto LABEL_84;
    }

    v186 = MEMORY[0x277D84F90];
    v138 = v197;
    v139 = v202;
LABEL_63:
    (*(v139 + 16))(v199, v138, v30);
    sub_22EE3BD94();
    sub_22EE3BA54();
    v204 = 0;
    v205 = 0xE000000000000000;
    sub_22EE3C864();

    v204 = 0xD000000000000012;
    v205 = 0x800000022EE47DC0;
    sub_22EDD4D0C(&qword_27DA94D98, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v150 = v193;
    v151 = sub_22EE3CB84();
    MEMORY[0x2318F58F0](v151);

    v152 = v205;
    v153 = v196;
    *(v196 + 2) = v204;
    *(v153 + 3) = v152;
    v154 = v173;
    v188(v173, v61, v150);
    sub_22EE3BA74();
    v155 = v174;
    sub_22EDD5824(v154, v174, v156);
    v157 = v180;
    v203 = 0;
    v199 = v152;
    v158 = v168;
    sub_22EDDB544(v200, v168, type metadata accessor for PassiveTraceInterval);
    v159 = v169;
    sub_22EDDB544(v155, v169, type metadata accessor for PassiveCollectionResult.OutputFile);
    (*(v190 + 56))(v159, 0, 1, v191);
    if (!*(v185 + 16))
    {

      v185 = 0;
    }

    v57 = v201;
    v160 = v196;
    v161 = v177;
    v162 = v186;
    if (!v186[2])
    {

      v162 = 0;
    }

    sub_22EDDC3D0(v158, v157, type metadata accessor for PassiveTraceInterval);
    v163 = type metadata accessor for PassiveCollectionResult(0);
    sub_22EDDB628(v159, v157 + v163[5], &qword_27DA94DC8, &unk_22EE3FAF0);
    *(v157 + v163[6]) = v185;
    *(v157 + v163[7]) = v162;
    v164 = PassiveCollectionResult.succinctDescription.getter();
    v166 = v165;
    sub_22EDDB5CC(v155);
    (*(v175 + 8))(v161, v176);

    swift_unknownObjectRelease();

    *(v160 + 16) = v164;
    *(v160 + 24) = v166;
    sub_22EDD8CA0(v179, v160);
    v79 = v150;
    v30 = v183;
  }

  else
  {
    type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    v140 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    v141 = sub_22EDDA330(0, 1, 1, MEMORY[0x277D84F90]);
    v143 = v141[2];
    v142 = v141[3];
    v144 = v180;
    v57 = v201;
    if (v143 >= v142 >> 1)
    {
      v141 = sub_22EDDA330((v142 > 1), v143 + 1, 1, v141);
    }

    v141[2] = v143 + 1;
    v141[v143 + 4] = v140;
    v145 = v196;
    *(v196 + 2) = 0xD00000000000002ALL;
    *(v145 + 24) = 0x800000022EE47DE0;
    v146 = v170;
    sub_22EDDB544(v200, v170, type metadata accessor for PassiveTraceInterval);
    v147 = v171;
    (*(v190 + 56))(v171, 1, 1, v191);
    v148 = v185;
    if (!*(v185 + 16))
    {

      v148 = 0;
    }

    sub_22EDDC3D0(v146, v144, type metadata accessor for PassiveTraceInterval);
    v149 = type metadata accessor for PassiveCollectionResult(0);
    sub_22EDDB628(v147, v144 + v149[5], &qword_27DA94DC8, &unk_22EE3FAF0);

    *(v144 + v149[6]) = v148;
    *(v144 + v149[7]) = v141;
    swift_unknownObjectRelease();
    sub_22EDD8CA0(v179, v145);
    v79 = v193;
  }

  v82 = v184;
LABEL_69:

  v192(v57, v79);
  (*(v202 + 8))(v197, v30);

  return sub_22ED97EE0(v82, 0);
}

uint64_t sub_22EDD8CA0(uint64_t a1, uint64_t a2)
{
  v3 = sub_22EE3BEA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22EE3BE64();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27DA96160 != -1)
  {
    swift_once();
  }

  v11 = sub_22EE3BE94();
  __swift_project_value_buffer(v11, qword_27DA9C8D0);

  v12 = sub_22EE3BE74();
  sub_22EE3BEB4();
  v24 = sub_22EE3C564();

  if (sub_22EE3C5C4())
  {

    sub_22EE3BEE4();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x277D85B00])
    {
      v13 = 0;
      v14 = 0;
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v15 = "%{public}s";
      v14 = 2;
      v13 = 1;
    }

    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v25 = v17;
    *v16 = v14;
    *(v16 + 1) = v13;
    *(v16 + 2) = 2082;
    swift_beginAccess();
    v18 = *(a2 + 16);
    v19 = *(a2 + 24);

    v20 = sub_22ED7DF24(v18, v19, &v25);

    *(v16 + 4) = v20;
    v21 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v12, v24, v21, "PassiveCollectInterval", v15, v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2318F8320](v17, -1, -1);
    MEMORY[0x2318F8320](v16, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

id PassiveCollection.collect()()
{
  v1 = v0;
  v89[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22EE3BE64();
  v3 = *(v2 - 8);
  v87 = v2;
  v88 = v3;
  v4 = MEMORY[0x28223BE20](v2);
  v86 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v73 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v73 - v9;
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  v81 = type metadata accessor for PassiveCollection(0);
  v13 = *(v81 + 20);
  sub_22EE3BC84();
  v14 = sub_22EE3C0F4();

  v15 = [v12 fileExistsAtPath_];

  if (v15)
  {
    v16 = type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    swift_allocError();
    v18 = v17;
    v19 = sub_22EE3BCB4();
    (*(*(v19 - 8) + 16))(v18, v1 + v13, v19);
    swift_storeEnumTagMultiPayload();
LABEL_8:
    swift_willThrow();
    return v16;
  }

  v20 = [v11 defaultManager];
  v21 = sub_22EE3BC14();
  v89[0] = 0;
  v22 = [v20 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:v89];

  if (!v22)
  {
    v16 = v89[0];
    sub_22EE3BBA4();

    goto LABEL_8;
  }

  v23 = v89[0];
  v24 = sub_22EE3BC84();
  v26 = v25;
  if (qword_27DA96160 != -1)
  {
LABEL_28:
    swift_once();
  }

  v27 = sub_22EE3BE94();
  v28 = __swift_project_value_buffer(v27, qword_27DA9C8D0);

  sub_22EE3BE54();
  v79 = v28;
  v29 = sub_22EE3BE74();
  v30 = sub_22EE3C574();

  v31 = sub_22EE3C5C4();
  v80 = v1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v89[0] = v33;
    *v32 = 136446210;
    v34 = sub_22ED7DF24(v24, v26, v89);

    *(v32 + 4) = v34;
    v35 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v29, v30, v35, "PassiveCollection", "Output directory: '%{public}s'", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    v36 = v33;
    v1 = v80;
    MEMORY[0x2318F8320](v36, -1, -1);
    MEMORY[0x2318F8320](v32, -1, -1);
  }

  else
  {
  }

  v38 = v87;
  v39 = v88;
  (*(v88 + 16))(v8, v10, v87);
  sub_22EE3BED4();
  swift_allocObject();
  v74 = sub_22EE3BEC4();
  v40 = *(v39 + 8);
  v88 = v39 + 8;
  v78 = v40;
  v40(v10, v38);
  v41 = *(v1 + *(v81 + 24));
  v43 = *(v41 + 64);
  v24 = v41 + 64;
  v42 = v43;
  v44 = 1 << *(*(v1 + *(v81 + 24)) + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v10 = v45 & v42;
  v26 = (v44 + 63) >> 6;
  v82 = *(v1 + *(v81 + 24));

  v46 = 0;
  *&v47 = 136446722;
  v75 = v47;
  v48 = v86;
  while (v10)
  {
    v8 = v46;
LABEL_21:
    v49 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v50 = (v8 << 10) | (16 * v49);
    v51 = *(v82 + 56);
    v52 = (*(v82 + 48) + v50);
    v53 = v52[1];
    v83 = *v52;
    v54 = *(v51 + v50 + 8);

    sub_22EE3BE54();
    v55 = sub_22EE3BE74();
    v84 = sub_22EE3C584();
    v85 = v55;
    if (sub_22EE3C5C4())
    {
      v56 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v89[0] = v76;
      *v56 = v75;
      v57 = sub_22ED7DF24(v83, v53, v89);

      *(v56 + 4) = v57;
      *(v56 + 12) = 2082;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60);
      v58 = sub_22EE3C074();
      v60 = v59;

      v61 = sub_22ED7DF24(v58, v60, v89);

      *(v56 + 14) = v61;
      *(v56 + 22) = 2082;

      v62 = MEMORY[0x2318F5AD0](v54, MEMORY[0x277D837D0]);
      v64 = v63;

      v65 = sub_22ED7DF24(v62, v64, v89);

      *(v56 + 24) = v65;
      v66 = sub_22EE3BE44();
      v67 = v85;
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v85, v84, v66, "PassiveDataSourceConfiguration", "Including data source '%{public}s':\nOptions:\n%{public}s\nData Categories:\n%{public}s", v56, 0x20u);
      v68 = v76;
      swift_arrayDestroy();
      MEMORY[0x2318F8320](v68, -1, -1);
      v69 = v56;
      v48 = v86;
      MEMORY[0x2318F8320](v69, -1, -1);
    }

    else
    {
    }

    v78(v48, v87);
    v46 = v8;
    v1 = v80;
  }

  while (1)
  {
    v8 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v8 >= v26)
    {
      break;
    }

    v10 = *(v24 + 8 * v8);
    ++v46;
    if (v10)
    {
      goto LABEL_21;
    }
  }

  v71 = v77;
  v72 = sub_22EDD9A58(v70, v1);
  if (v71)
  {

    v16 = v74;
  }

  else
  {
    v16 = v72;
  }

  sub_22EDD97CC(v74);

  return v16;
}

uint64_t sub_22EDD97CC(uint64_t a1)
{
  v1 = sub_22EE3BEA4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22EE3BE64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DA96160 != -1)
  {
    swift_once();
  }

  v9 = sub_22EE3BE94();
  __swift_project_value_buffer(v9, qword_27DA9C8D0);
  v10 = sub_22EE3BE74();
  sub_22EE3BEB4();
  v11 = sub_22EE3C564();
  if (sub_22EE3C5C4())
  {

    sub_22EE3BEE4();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v10, v11, v14, "PassiveCollection", v12, v13, 2u);
    MEMORY[0x2318F8320](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22EDD9A58(uint64_t a1, uint64_t a2)
{
  v15[1] = a2;
  v4 = type metadata accessor for PassiveCollectionResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v16 = MEMORY[0x277D84F90];
    sub_22EDDABA8(0, v8, 0);
    v9 = v16;
    v10 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
    v11 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15[0] = *(v10 + 72);
    while (1)
    {
      sub_22EDD725C(v11, v7);
      if (v2)
      {
        break;
      }

      v16 = v9;
      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_22EDDABA8((v12 > 1), v13 + 1, 1);
        v9 = v16;
      }

      *(v9 + 16) = v13 + 1;
      sub_22EDDC3D0(v7, v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, type metadata accessor for PassiveCollectionResult);
      v11 += v15[0];
      if (!--v8)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_22EDD9C4C()
{
  v0 = sub_22EE3C124();
  v1 = MEMORY[0x2318F59B0](v0);

  return v1;
}

uint64_t sub_22EDD9C88(uint64_t a1)
{
  sub_22EE3C124();
  sub_22EE3C1C4();
}

uint64_t sub_22EDD9CDC(uint64_t a1)
{
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v1 = sub_22EE3CCC4();

  return v1;
}

uint64_t sub_22EDD9D58(uint64_t a1, id *a2)
{
  result = sub_22EE3C104();
  *a2 = 0;
  return result;
}

uint64_t sub_22EDD9DD0(uint64_t a1, id *a2)
{
  v3 = sub_22EE3C114();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_22EDD9E50@<X0>(uint64_t *a2@<X8>)
{
  sub_22EE3C124();
  v3 = sub_22EE3C0F4();

  *a2 = v3;
  return result;
}

uint64_t sub_22EDD9E94(void *a1, uint64_t *a2)
{
  v2 = sub_22EE3C124();
  v4 = v3;
  if (v2 == sub_22EE3C124() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_22EE3CBA4();
  }

  return v7 & 1;
}

uint64_t sub_22EDD9F1C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_22EE3C0F4();

  *a2 = v3;
  return result;
}

uint64_t sub_22EDD9F64@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22EE3C124();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22EDD9F90(uint64_t a1)
{
  v2 = sub_22EDD4D0C(&qword_27DA94DC0, type metadata accessor for FileAttributeKey, &unk_22EE3FEE8);
  v3 = sub_22EDD4D0C(&qword_27DA94EE0, type metadata accessor for FileAttributeKey, &unk_22EE3FE3C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

void *sub_22EDDA04C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F10, &qword_22EE3FF60);
  v10 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassiveTraceInterval(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22EDDA224(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D60, &unk_22EE40520);
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
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDDA330(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DE8, &unk_22EE3FB00);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDDA464(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EF0, &qword_22EE40540);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_22EDDA558(uint64_t a1)
{
  sub_22EE3C124();
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v2 = sub_22EE3CCC4();

  return sub_22EDDA6A4(a1, v2);
}

unint64_t sub_22EDDA5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22EE3CBA4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22EDDA6A4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_22EE3C124();
      v8 = v7;
      if (v6 == sub_22EE3C124() && v8 == v9)
      {
        break;
      }

      v11 = sub_22EE3CBA4();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t sub_22EDDA7A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_22EE3C9C4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_22EE3CC74();
      sub_22EE3C1C4();
      result = sub_22EE3CCC4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

void sub_22EDDAA48(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22EE3C9B4();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 64 + 8 * v8)
    {
      memmove(v7, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_22EDDABA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_22EDDABC8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_22EDDABC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94EE8, &unk_22EE3FF30);
  v10 = *(type metadata accessor for PassiveCollectionResult(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PassiveCollectionResult(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_22EDDADA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v5 = sub_22EE3CCC4();

  return a3(a1, a2, v5);
}

uint64_t sub_22EDDAE24(uint64_t a1)
{
  v42 = type metadata accessor for PassiveTraceInterval(0);
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22EE3BDA4();
  v45 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v49 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v41 - v6;
  v7 = sub_22EE3BA84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  v52 = v11;
  *(v11 + 16) = MEMORY[0x277D84F90];
  v50 = (v11 + 16);
  v46 = v3;
  v54 = swift_allocBox();
  v47 = v12;
  sub_22EE3BA64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  v13 = swift_allocBox();
  v15 = v14;
  v16 = sub_22EE3BDF4();
  v17 = *(*(v16 - 8) + 56);
  v41 = v15;
  v17(v15, 1, 1, v16);
  v18 = v7;
  (*(v8 + 16))(v10, a1, v7);
  v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v20 = (v9 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v54;
  *(v21 + 24) = v13;
  (*(v8 + 32))(v21 + v19, v10, v18);
  *(v21 + v20) = v52;
  aBlock[4] = sub_22EDDC534;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22EDD5384;
  aBlock[3] = &block_descriptor_55;
  v22 = _Block_copy(aBlock);

  v51 = v13;

  LOBYTE(v19) = enumerate_boots();
  _Block_release(v22);
  if (v19)
  {
    v23 = v47;
    swift_beginAccess();
    v24 = v45;
    v25 = v46;
    v26 = *(v45 + 16);
    v27 = v48;
    v26(v48, v23, v46);
    v28 = v49;
    sub_22EE3BA44();
    v29 = sub_22EE3BD64();
    v30 = *(v24 + 8);
    v30(v28, v25);
    v30(v27, v25);
    if (v29)
    {
      v26(v48, v47, v25);
      sub_22EE3BA44();
      v31 = v43;
      sub_22EE3BA54();
      v32 = v41;
      swift_beginAccess();
      sub_22EDDB6E8(v32, v31 + *(v42 + 20), &qword_27DA94DB0, &unk_22EE3FAE0);
      v33 = v50;
      swift_beginAccess();
      v34 = *v33;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v33 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v34 = sub_22EDDA04C(0, v34[2] + 1, 1, v34);
        *v33 = v34;
      }

      v37 = v34[2];
      v36 = v34[3];
      if (v37 >= v36 >> 1)
      {
        v34 = sub_22EDDA04C((v36 > 1), v37 + 1, 1, v34);
      }

      v34[2] = v37 + 1;
      sub_22EDDC3D0(v31, v34 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v37, type metadata accessor for PassiveTraceInterval);
      *v33 = v34;
      swift_endAccess();
    }

    swift_beginAccess();
    v38 = *(v52 + 16);
  }

  else
  {
    v38 = type metadata accessor for PassiveCollectingError(0);
    sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
    swift_allocError();
    strcpy(v39, "Unknown error");
    *(v39 + 7) = -4864;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  return v38;
}

unint64_t sub_22EDDB4DC()
{
  result = qword_27DA94DB8;
  if (!qword_27DA94DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA94DB8);
  }

  return result;
}

uint64_t sub_22EDDB544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22EDDB5CC(uint64_t a1)
{
  v2 = type metadata accessor for PassiveCollectionResult.OutputFile(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22EDDB628(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_22EDDB6B0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22EDDB6E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_22EDDB750(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = sub_22EE3C9D4();

    for (i = (a1 + 48); ; i += 3)
    {
      v9 = *(i - 2);
      v10 = *(i - 1);
      v11 = *i;

      result = sub_22EDDADA0(v9, v10, a4);
      if (v13)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v7[6] + 16 * result);
      *v14 = v9;
      v14[1] = v10;
      *(v7[7] + 8 * result) = v11;
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_22EDDB85C(uint64_t a1)
{
  v9 = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22EDDC438;
  *(v3 + 24) = v2;
  v8[4] = sub_22EDDC48C;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_22EDD6F98;
  v8[3] = &block_descriptor;
  v4 = _Block_copy(v8);

  v5 = ktrace_file_header_iterate(a1, 0, v4);
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (v5 || (v7 = v9) == 0)
    {
      v7 = type metadata accessor for PassiveCollectingError(0);
      sub_22EDD4D0C(&qword_27DA94DE0, type metadata accessor for PassiveCollectingError, &protocol conformance descriptor for PassiveCollectingError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
    }

    return v7;
  }

  return result;
}

uint64_t sub_22EDDBA48(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22EDDBB40(uint64_t a1)
{
  sub_22EDDBBEC();
  if (v1 <= 0x3F)
  {
    sub_22EDDBC1C(319);
    if (v2 <= 0x3F)
    {
      sub_22EDDBC84(319, &qword_27DA94E00);
      if (v3 <= 0x3F)
      {
        sub_22EDDBC84(319, &qword_27DA94E08);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_22EDDBBEC()
{
  result = qword_27DA94DF0;
  if (!qword_27DA94DF0)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27DA94DF0);
  }

  return result;
}

void sub_22EDDBC1C(uint64_t a1)
{
  if (!qword_27DA94DF8)
  {
    sub_22EE3BDA4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27DA94DF8);
    }
  }
}

void sub_22EDDBC84(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_22EE3BCB4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_22EDDBCF4(uint64_t a1)
{
  sub_22EE3BA84();
  if (v1 <= 0x3F)
  {
    sub_22EDDBF78(319, &qword_27DA94E10, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_22EDDBDA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22EDDBDF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_22EDDBE64(uint64_t a1)
{
  type metadata accessor for PassiveTraceInterval(319);
  if (v1 <= 0x3F)
  {
    sub_22EDDBF78(319, &qword_27DA94E18, type metadata accessor for PassiveCollectionResult.OutputFile, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22EDDBFDC(319, &qword_27DA94E20, &qword_27DA94E28, &qword_22EE3FCF8);
      if (v3 <= 0x3F)
      {
        sub_22EDDBFDC(319, &qword_27DA94E30, &qword_27DA94E38, &qword_22EE3FD00);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22EDDBF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_22EDDBFDC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_22EE3C5D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_22EDDC058(uint64_t a1)
{
  result = sub_22EE3BCB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_22EDDC0FC(uint64_t a1)
{
  sub_22EE3BA84();
  if (v1 <= 0x3F)
  {
    sub_22EE3BCB4();
    if (v2 <= 0x3F)
    {
      sub_22EDDC220();
      if (v3 <= 0x3F)
      {
        sub_22EDDBF78(319, &qword_27DA94E48, type metadata accessor for PassiveTraceInterval, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PassiveDataSourceFlags(319);
          if (v5 <= 0x3F)
          {
            sub_22EDDC294();
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_22EDDC220()
{
  if (!qword_27DA94E40)
  {
    v0 = sub_22EE3C084();
    if (!v1)
    {
      atomic_store(v0, &qword_27DA94E40);
    }
  }
}

unint64_t sub_22EDDC294()
{
  result = qword_27DA94EB0;
  if (!qword_27DA94EB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27DA94EB0);
  }

  return result;
}

uint64_t sub_22EDDC3D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

BOOL sub_22EDDC438(uint64_t *a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v6 = ktrace_chunk_tag(a1, a2);
  if (v6 == 35840)
  {
    *v4 = ktrace_machine_create(a1, v5);
  }

  return v6 != 35840;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
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

uint64_t sub_22EDDC534(void *a1)
{
  v3 = *(sub_22EE3BA84() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);

  return sub_22EDD4DBC(a1, v6, v7, v1 + v4, v5);
}

uint64_t sub_22EDDC5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94DB0, &unk_22EE3FAE0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_22EDDC668(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 112))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_22EDDC6AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_22EDDC758(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 216);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_22EDDC7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_22EDDC8B8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22EDDC8D8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_22EDDC938(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_22EDDC998()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 32);
  if (v3 > 2)
  {
    if (*(v0 + 32) > 4u)
    {
      if (v3 == 5)
      {
        sub_22EE3C864();

        v12 = v2;
        v5 = ": provider failed to amend";
        v6 = 0xD000000000000024;
      }

      else
      {
        sub_22EE3C864();

        v12 = v2;
        v5 = "v16@?0@OSLogBootEntry8";
        v6 = 0xD00000000000001ALL;
      }
    }

    else
    {
      if (v3 == 3)
      {
        sub_22EE3C864();

        v12 = v2;
        v4 = ": no principal class found for provider";
      }

      else
      {
        v10 = v0[2];
        v9 = v0[3];
        v12 = 0;
        sub_22EE3C864();
        MEMORY[0x2318F58F0](v2, v1);
        MEMORY[0x2318F58F0](0x207373616C63203ALL, 0xE900000000000060);
        MEMORY[0x2318F58F0](v10, v9);
        v4 = "' does not conform to provider protocol";
      }

      v5 = (v4 - 32);
      v6 = 0xD000000000000027;
    }

    goto LABEL_16;
  }

  if (*(v0 + 32))
  {
    if (v3 == 1)
    {
      sub_22EE3C864();

      v12 = v2;
      v5 = " bundle of provider";
      v6 = 0xD000000000000014;
LABEL_16:
      v8 = v5 | 0x8000000000000000;
      goto LABEL_17;
    }

    sub_22EE3C864();

    v12 = v2;
    v7 = ": could not load bundle of provider";
  }

  else
  {
    sub_22EE3C864();

    v12 = v2;
    v7 = ": experimental provider not allowed";
  }

  v8 = (v7 - 32) | 0x8000000000000000;
  v6 = 0xD000000000000023;
LABEL_17:
  MEMORY[0x2318F58F0](v6, v8);
  return v12;
}

char *sub_22EDDCC20(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v8 = *v6;
    v25[0] = *(v6 - 1);
    v25[1] = v8;

    (a1)(&v21, v25);
    if (v3)
    {
      break;
    }

    if (*(&v21 + 1))
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22EDE17D4(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_22EDE17D4((v9 > 1), v10 + 1, 1, v7);
      }

      v15 = v19;
      v16 = v20;
      v11 = v17;
      v14 = v18;
      *(v7 + 2) = v10 + 1;
      v12 = &v7[64 * v10];
      *(v12 + 4) = v15;
      *(v12 + 5) = v16;
      *(v12 + 2) = v11;
      *(v12 + 3) = v14;
    }

    else
    {
      v17 = v21;
      v18 = v22;
      v19 = v23;
      v20 = v24;
      sub_22EDDBA48(&v17, &qword_27DA95028, &qword_22EE40550);
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

double sub_22EDDCDD0@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v31 = a2;
  v3 = sub_22EE3BBC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_22EE3BCB4();
  v29 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  *&v37 = *a1;
  *(&v37 + 1) = v9;
  (*(v4 + 104))(v6, *MEMORY[0x277CC91D8], v3);
  sub_22ED80FA0();
  sub_22EE3BCA4();
  (*(v4 + 8))(v6, v3);
  v10 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v11 = sub_22EE3BC14();
  v12 = [v10 initWithURL_];

  v13 = sub_22EE3C0F4();
  v14 = [v13 stringByDeletingPathExtension];

  v15 = sub_22EE3C124();
  v17 = v16;

  *&v37 = sub_22EE3BC84();
  *(&v37 + 1) = v18;
  strcpy(v36, "AppleInternal");
  v36[7] = -4864;
  LOBYTE(v13) = sub_22EE3C6A4();

  if (v13)
  {
    *&v37 = v15;
    *(&v37 + 1) = v17;
    MEMORY[0x2318F58F0](0x6E7265746E492820, 0xEB00000000296C61);
    v17 = *(&v37 + 1);
    v15 = v37;
  }

  if (!v12)
  {
    (*(v29 + 8))(v8, v30);
LABEL_9:

    result = 0.0;
    v24 = v31;
    v31[2] = 0u;
    v24[3] = 0u;
    *v24 = 0u;
    v24[1] = 0u;
    return result;
  }

  v19 = [v12 infoDictionary];
  if (!v19)
  {
    (*(v29 + 8))(v8, v30);

    goto LABEL_9;
  }

  v20 = v19;
  v21 = sub_22EE3C064();

  sub_22EDE27BC(v15, v17, v21, &v37);
  v32 = v37;
  v33 = v38;
  v34 = v39;
  v35 = v40;

  (*(v29 + 8))(v8, v30);
  if (v38)
  {
    sub_22EDE4390(&v37);
    result = 0.0;
    v23 = v31;
    *v31 = 0u;
    v23[1] = 0u;
    v23[2] = 0u;
    v23[3] = 0u;
  }

  else
  {
    v25 = v33;
    v26 = v31;
    *v31 = v32;
    v26[1] = v25;
    result = *&v34;
    v27 = v35;
    v26[2] = v34;
    v26[3] = v27;
  }

  return result;
}

uint64_t sub_22EDDD1C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22EDE17D4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22EDDD324(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, uint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000010, 0x800000022EE48090, 0x72656469766F7250, 0xE900000000000073);
}

void sub_22EDDD3B0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v56 = a2;
  v48 = a4;
  v6 = sub_22EE3BCB4();
  v57 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v46 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v55 = &v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v59 = &v46 - v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v46 - v13;
  has_internal_content = os_variant_has_internal_content();
  v47 = has_internal_content & a3;
  v15 = sub_22EDE2D50(has_internal_content & a3);
  v49 = *(v15 + 2);
  if (v49)
  {
    v16 = 0;
    v52 = v57 + 16;
    v53 = v15;
    v58 = v57 + 8;
    v50 = a1;
    v51 = v6;
    while (1)
    {
      if (v16 >= *(v15 + 2))
      {
        __break(1u);
        return;
      }

      v17 = v57;
      v18 = v54;
      (*(v57 + 16))(v54, &v15[((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v16], v6);
      v19 = v55;
      v20 = v56;
      sub_22EE3BC44();
      v21 = *(v17 + 8);
      v21(v18, v6);
      sub_22EE3BC54();
      v21(v19, v6);
      v22 = objc_opt_self();
      v23 = v20;
      v24 = [v22 defaultManager];
      sub_22EE3BC94();
      v25 = sub_22EE3C0F4();

      v26 = [v24 fileExistsAtPath_];

      if (v26)
      {

        v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
        v34 = v48;
        v35 = v51;
        *v48 = v50;
        v34[1] = v23;
        (*(v57 + 32))(v34 + v33, v59, v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_10;
      }

      v27 = v21;
      v28 = [v22 defaultManager];
      v29 = v50;
      v30 = sub_22EE3C0F4();
      v31 = [v28 fileExistsAtPath_];

      if (v31)
      {
        break;
      }

      ++v16;
      v6 = v51;
      v21(v59, v51);
      a1 = v29;
      v15 = v53;
      if (v49 == v16)
      {
        goto LABEL_7;
      }
    }

    v36 = v51;
    if (v47)
    {
      v37 = v55;
      sub_22EE3BBF4();
      v38 = v46;
      sub_22EE3BC24();
      v39 = sub_22EE3BC04();
      v41 = v40;
      v27(v38, v36);
      v27(v59, v36);
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8) + 48);
      v43 = v48;
      *v48 = v39;
      v43[1] = v41;
      (*(v57 + 32))(v43 + v42, v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
      swift_storeEnumTagMultiPayload();
      return;
    }

    v27(v59, v51);
    v44 = v48;
    v45 = v56;
    *v48 = v29;
    v44[1] = v45;
    v44[2] = 0;
    v44[3] = 0;
    *(v44 + 32) = 0;
  }

  else
  {
LABEL_7:

    v32 = v48;
    *v48 = a1;
    v32[1] = v56;
    v32[2] = 0;
    v32[3] = 0;
    *(v32 + 32) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
  swift_storeEnumTagMultiPayload();
LABEL_10:
}

uint64_t sub_22EDDD898@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, char a6@<W5>, uint64_t *a7@<X8>)
{
  v100 = a7;
  v104 = a4;
  v105 = a5;
  v99 = a3;
  v111 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F50, &qword_22EE400B0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v95 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F58, &qword_22EE400B8);
  MEMORY[0x28223BE20](v13);
  v15 = &v95 - v14;
  v106 = sub_22EE3BCB4();
  v16 = *(v106 - 8);
  v17 = MEMORY[0x28223BE20](v106);
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v95 - v19;
  v103 = a1;
  sub_22EDDD3B0(a1, a2, a6 & 1, v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v22 = v12[1];
    v23 = v12[2];
    v24 = v12[3];
    v25 = *(v12 + 32);
    v109[0] = *v12;
    v21 = v109[0];
    v109[1] = v22;
    v109[2] = v23;
    v109[3] = v24;
    v110 = v25;
    sub_22EDE35E8();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v26 = v21;
    *(v26 + 8) = v22;
    *(v26 + 16) = v23;
    *(v26 + 24) = v24;
    *(v26 + 32) = v25;
    return swift_unknownObjectRelease();
  }

  sub_22EDE363C(v12, v15);

  (*(v16 + 32))(v20, &v15[*(v13 + 48)], v106);
  if (qword_27DA965C0 != -1)
  {
    swift_once();
  }

  v28 = sub_22EE3BF14();
  v29 = __swift_project_value_buffer(v28, qword_27DA9C8E8);
  v30 = v102;
  (*(v16 + 16))(v102, v20, v106);

  v31 = sub_22EE3BEF4();
  v32 = sub_22EE3C4C4();

  v33 = os_log_type_enabled(v31, v32);
  v98 = a2;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v96 = v16;
    v35 = v34;
    v36 = swift_slowAlloc();
    v95 = v29;
    v37 = v20;
    v38 = v36;
    v109[0] = v36;
    *v35 = 136446466;
    *(v35 + 4) = sub_22ED7DF24(v103, a2, v109);
    *(v35 + 12) = 2082;
    v39 = sub_22EE3BC94();
    v41 = v40;
    v97 = v96[1];
    v97(v30, v106);
    v42 = sub_22ED7DF24(v39, v41, v109);

    *(v35 + 14) = v42;
    _os_log_impl(&dword_22ED7A000, v31, v32, "loading provider %{public}s's bundle at %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    v43 = v38;
    v20 = v37;
    MEMORY[0x2318F8320](v43, -1, -1);
    MEMORY[0x2318F8320](v35, -1, -1);
  }

  else
  {

    v97 = *(v16 + 8);
    v97(v30, v106);
  }

  v44 = v104;
  sub_22EE3BC94();
  v45 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v46 = sub_22EE3C0F4();

  v47 = [v45 initWithPath_];

  if (v47)
  {
    v48 = [v47 load];
    v49 = v98;
    v50 = v103;
    if ((v48 & 1) == 0)
    {

      v66 = sub_22EE3BEF4();
      v67 = sub_22EE3C4C4();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = v47;
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v109[0] = v70;
        *v69 = 136315138;
        *(v69 + 4) = sub_22ED7DF24(v50, v49, v109);
        _os_log_impl(&dword_22ED7A000, v66, v67, "failed to load %s's bundle", v69, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v70);
        MEMORY[0x2318F8320](v70, -1, -1);
        v71 = v69;
        v47 = v68;
        MEMORY[0x2318F8320](v71, -1, -1);
      }

      v109[0] = 0;
      v109[1] = 0xE000000000000000;
      sub_22EE3C864();

      strcpy(v109, "cannot load ");
      BYTE5(v109[1]) = 0;
      HIWORD(v109[1]) = -5120;
      MEMORY[0x2318F58F0](v50, v49);

      MEMORY[0x2318F58F0](0x656469766F727020, 0xE900000000000072);
      v72 = sub_22EE3C0F4();

      [v105 warnWithMessage_];
      swift_unknownObjectRelease();

      result = (v97)(v20, v106);
      goto LABEL_20;
    }

    if ([v47 principalClass])
    {
      ObjCClassMetadata = swift_getObjCClassMetadata();
      v108 = &unk_2843A8F28;
      if (swift_dynamicCastTypeToObjCProtocolConditional())
      {
        v96 = v47;
        v52 = objc_allocWithZone(swift_getObjCClassFromMetadata());

        swift_unknownObjectRetain();
        v53 = [v52 init];

        v102 = v53;
        swift_unknownObjectRetain();
        v54 = sub_22EE3BEF4();
        v55 = sub_22EE3C4C4();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v109[0] = v57;
          *v56 = 136446210;
          *(v56 + 4) = sub_22ED7DF24(v50, v49, v109);
          _os_log_impl(&dword_22ED7A000, v54, v55, "calling provider %{public}s's shouldInitialize", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          v58 = v57;
          v44 = v104;
          MEMORY[0x2318F8320](v58, -1, -1);
          MEMORY[0x2318F8320](v56, -1, -1);
        }

        v59 = sub_22EE3C054();

        v109[0] = 0;
        v60 = [v102 shouldInitializeWithLogger:v105 machine:v99 options:v59 error:v109];
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
        if (v60)
        {
          v61 = v109[0];

          result = (v97)(v20, v106);
          v62 = v102;
          v63 = v103;
LABEL_21:
          v73 = v100;
          *v100 = v63;
          v73[1] = v49;
          v73[2] = v62;
          v73[3] = v105;
          v73[4] = v44;
          return result;
        }

        v79 = v109[0];
        v80 = sub_22EE3BBA4();

        swift_willThrow();
        v101 = 0;

        v81 = v80;
        v82 = v80;
        v83 = sub_22EE3BEF4();
        v84 = sub_22EE3C4B4();

        v85 = os_log_type_enabled(v83, v84);
        v86 = v103;
        if (v85)
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v99 = v20;
          v89 = v88;
          v109[0] = v88;
          *v87 = 136446466;
          v90 = sub_22ED7DF24(v86, v49, v109);

          *(v87 + 4) = v90;
          *(v87 + 12) = 2082;
          v107 = v82;
          v91 = v82;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
          v92 = sub_22EE3C164();
          v94 = sub_22ED7DF24(v92, v93, v109);

          *(v87 + 14) = v94;
          _os_log_impl(&dword_22ED7A000, v83, v84, "\tprovider %{public}s should not initialize: %{public}s", v87, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2318F8320](v89, -1, -1);
          MEMORY[0x2318F8320](v87, -1, -1);

          v97(v99, v106);
        }

        else
        {

          v97(v20, v106);
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_20:
        v63 = 0;
        v49 = 0;
        v62 = 0;
        v105 = 0;
        v44 = 0;
        goto LABEL_21;
      }

      v109[0] = ObjCClassMetadata;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94FC8, &unk_22EE400C0);
      v76 = sub_22EE3C164();
      v78 = v77;
      sub_22EDE35E8();
      swift_allocError();
      *v74 = v50;
      *(v74 + 8) = v49;
      *(v74 + 16) = v76;
      *(v74 + 24) = v78;
      v75 = 4;
    }

    else
    {

      sub_22EDE35E8();
      swift_allocError();
      *v74 = v50;
      *(v74 + 8) = v49;
      *(v74 + 16) = 0;
      *(v74 + 24) = 0;
      v75 = 3;
    }

    *(v74 + 32) = v75;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {

    sub_22EDE35E8();
    swift_allocError();
    v64 = v98;
    *v65 = v103;
    *(v65 + 8) = v64;
    *(v65 + 16) = 0;
    *(v65 + 24) = 0;
    *(v65 + 32) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
  }

  return (v97)(v20, v106);
}

id ProviderList.__allocating_init(machine:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC6ktrace12ProviderList_providers] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC6ktrace12ProviderList_machine] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id ProviderList.init(machine:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC6ktrace12ProviderList_providers] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC6ktrace12ProviderList_machine] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

Swift::Bool __swiftcall ProviderList.contains(name:)(Swift::String name)
{
  object = name._object;
  countAndFlagsBits = name._countAndFlagsBits;
  v4 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v5 = *(v1 + v4);
  v6 = (v5 + 40);
  v7 = *(v5 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == countAndFlagsBits && *v6 == object)
    {
      break;
    }

    v6 += 5;
  }

  while ((sub_22EE3CBA4() & 1) == 0);
  return v7 != 0;
}

uint64_t sub_22EDDE6A8(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  v12 = *(v5 + OBJC_IVAR____TtC6ktrace12ProviderList_machine);

  swift_unknownObjectRetain();
  result = sub_22EDDD898(a1, a2, v12, a3, a4, a5, &v28);
  if (!v6)
  {
    v14 = v29;
    if (v29)
    {
      v15 = v28;
      v16 = v30;
      v17 = v31;
      v18 = v32;
      v33[0] = v28;
      v33[1] = v29;
      v34 = v32;
      v19 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
      swift_beginAccess();
      v20 = *(v5 + v19);
      sub_22EDE3770(v33, v27);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_22EDE3700(&v34, v27);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + v19) = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = sub_22EDE18E0(0, *(v20 + 2) + 1, 1, v20);
        *(v5 + v19) = v20;
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v26 = sub_22EDE18E0((v22 > 1), v23 + 1, 1, v20);
        v24 = v23 + 1;
        v20 = v26;
      }

      *(v20 + 2) = v24;
      v25 = &v20[40 * v23];
      *(v25 + 4) = v15;
      *(v25 + 5) = v14;
      *(v25 + 6) = v16;
      *(v25 + 7) = v17;
      *(v25 + 8) = v18;
      *(v5 + v19) = v20;
      swift_endAccess();
      sub_22EDE37CC(v33);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return sub_22EDDBA48(&v34, &qword_27DA94FD8, qword_22EE400D0);
    }
  }

  return result;
}

uint64_t ProviderList.shouldStartTracing(configuration:)(uint64_t a1)
{
  v66 = a1;
  v75 = *MEMORY[0x277D85DE8];
  v67 = sub_22EE3BE64();
  v3 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v5 = v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v1 + v6);
  v65 = *(result + 16);
  if (v65)
  {
    v62 = v5;
    v58[1] = v2;
    v64 = (v3 + 8);

    v9 = 0;
    v10 = (v8 + 64);
    *&v11 = 136446210;
    v59 = v11;
    *&v11 = 136315138;
    v61 = v11;
    v63 = v8;
    while (1)
    {
      if (v9 >= *(v8 + 16))
      {
        __break(1u);
      }

      v68 = v9;
      v13 = *(v10 - 4);
      v12 = *(v10 - 3);
      v14 = *(v10 - 2);
      v15 = *(v10 - 1);
      v16 = *v10;
      v17 = qword_27DA965C0;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      if (v17 != -1)
      {
        swift_once();
      }

      v18 = sub_22EE3BF14();
      v19 = __swift_project_value_buffer(v18, qword_27DA9C8E8);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v60 = v19;
      v20 = sub_22EE3BEF4();
      v21 = sub_22EE3C4C4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v22 = os_log_type_enabled(v20, v21);
      v69 = v16;
      v70 = v15;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v73 = v24;
        *v23 = v59;

        v25 = sub_22ED7DF24(v13, v12, &v73);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_22ED7A000, v20, v21, "calling provider %{public}s's shouldStartTracing", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x2318F8320](v24, -1, -1);
        MEMORY[0x2318F8320](v23, -1, -1);
      }

      v26 = v12;
      if (qword_27DA965C8 != -1)
      {
        swift_once();
      }

      v27 = sub_22EE3BE94();
      __swift_project_value_buffer(v27, qword_27DA9C900);
      v28 = v62;
      sub_22EE3BE54();
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v73 = v30;
      *v29 = v61;

      v31 = sub_22ED7DF24(v13, v26, &v73);
      v71 = v26;

      *(v29 + 4) = v31;
      v32 = sub_22EE3BE74();
      v33 = sub_22EE3C574();
      v34 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v32, v33, v34, "01: shouldStartTracing", "%s", v29, 0xCu);
      v72 = 0;
      if (![v14 shouldStartTracingWithConfiguration:v66 error:&v72])
      {
        break;
      }

      v9 = v68 + 1;
      v35 = v72;
      v36 = sub_22EE3C564();
      v37 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v32, v36, v37, "01: shouldStartTracing", "%s", v29, 0xCu);

      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x2318F8320](v30, -1, -1);
      MEMORY[0x2318F8320](v29, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*v64)(v28, v67);
      v10 += 5;
      v8 = v63;
      if (v65 == v9)
      {
      }
    }

    v66 = v13;
    v38 = v72;
    v39 = sub_22EE3BBA4();

    swift_willThrow();

    (*v64)(v28, v67);
    v73 = v39;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94F00, qword_22EE40590);
    v41 = sub_22EE3C164();
    v43 = v42;

    swift_unknownObjectRetain();
    v44 = v70;
    swift_unknownObjectRetain();

    v45 = sub_22EE3BEF4();
    v46 = sub_22EE3C4B4();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    LODWORD(v68) = v46;
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v67 = v41;
      v48 = v47;
      v49 = swift_slowAlloc();
      v65 = v14;
      v50 = v43;
      v51 = v49;
      v73 = v49;
      *v48 = 136446466;
      v52 = v71;

      v53 = v44;
      v54 = sub_22ED7DF24(v66, v52, &v73);

      *(v48 + 4) = v54;
      v44 = v53;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_22ED7DF24(v67, v50, &v73);
      _os_log_impl(&dword_22ED7A000, v45, v68, "provider %{public}s disallowing tracing: %{public}s", v48, 0x16u);
      swift_arrayDestroy();
      v55 = v51;
      v43 = v50;
      MEMORY[0x2318F8320](v55, -1, -1);
      v56 = v48;
      v41 = v67;
      MEMORY[0x2318F8320](v56, -1, -1);
    }

    v73 = 0;
    v74 = 0xE000000000000000;
    swift_unknownObjectRetain();
    sub_22EE3C864();

    v73 = 0xD00000000000001ELL;
    v74 = 0x800000022EE480D0;
    MEMORY[0x2318F58F0](v41, v43);

    v57 = sub_22EE3C0F4();

    [v44 failWithReason_];
    swift_unknownObjectRelease();

    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return result;
}

void sub_22EDDF0A0(uint64_t a1)
{
  v73 = a1;
  v96 = *MEMORY[0x277D85DE8];
  v74 = sub_22EE3BE64();
  v2 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v4 = v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v6 = *(*(v1 + v5) + 16);
  v75 = *(v1 + v5);

  v72 = v6;
  if (!v6)
  {
LABEL_15:

    return;
  }

  v8 = 0;
  v70 = (v2 + 8);
  v9 = (v75 + 64);
  *&v7 = 136446210;
  v67 = v7;
  *&v7 = 136315138;
  v69 = v7;
  v71 = v4;
  while (1)
  {
    if (v8 >= *(v75 + 16))
    {
      __break(1u);
    }

    v10 = *(v9 - 4);
    v11 = *(v9 - 3);
    v12 = *(v9 - 2);
    v13 = *(v9 - 1);
    v14 = *v9;
    v88 = v10;
    v89 = v11;
    v90 = v12;
    v91 = v13;
    v92 = v14;
    objc_opt_self();
    v15 = swift_dynamicCastObjCClass();
    swift_unknownObjectRetain();
    if (!v15)
    {

      swift_unknownObjectRetain();

LABEL_18:

      sub_22EDE35E8();
      swift_allocError();
      *v44 = v10;
      *(v44 + 8) = v11;
      *(v44 + 16) = 0;
      *(v44 + 24) = 0;
      *(v44 + 32) = 5;
      swift_willThrow();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return;
    }

    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    if (![v15 respondsToSelector_])
    {
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    v86 = v10;
    v84 = sel_shouldAmendWithFile_error_;
    v83 = [v15 methodForSelector_];
    if (qword_27DA965C0 != -1)
    {
      swift_once();
    }

    v77 = v9;
    v16 = sub_22EE3BF14();
    v17 = __swift_project_value_buffer(v16, qword_27DA9C8E8);
    swift_unknownObjectRetain();

    swift_unknownObjectRetain();

    v68 = v17;
    v18 = sub_22EE3BEF4();
    v19 = sub_22EE3C4C4();
    v80 = v14;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v20 = os_log_type_enabled(v18, v19);
    v81 = v13;
    v85 = v12;
    if (v20)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v93 = v22;
      *v21 = v67;

      v23 = sub_22ED7DF24(v86, v11, &v93);
      v24 = v11;
      v25 = v23;
      v26 = v24;

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22ED7A000, v18, v19, "calling provider %{public}s's shouldAmend", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x2318F8320](v22, -1, -1);
      MEMORY[0x2318F8320](v21, -1, -1);
    }

    else
    {
      v26 = v11;
    }

    v78 = v8;
    v27 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v28 = sub_22EE3C0F4();
    v82 = [v27 initWithDomain:v28 code:1 userInfo:0];

    if (qword_27DA965C8 != -1)
    {
      swift_once();
    }

    v29 = sub_22EE3BE94();
    __swift_project_value_buffer(v29, qword_27DA9C900);
    v30 = v71;
    sub_22EE3BE54();
    v31 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v95 = v76;
    *v31 = v69;

    v32 = v86;
    v33 = sub_22ED7DF24(v86, v26, &v95);
    v79 = v26;

    *(v31 + 4) = v33;
    v34 = sub_22EE3BE74();
    v35 = sub_22EE3C574();
    v36 = v30;
    v37 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v34, v35, v37, "01: shouldAmend", "%s", v31, 0xCu);
    v38 = v82;
    v93 = v82;
    v39 = v73;
    v40 = v83(v85, v84, v73, &v93);
    v84 = v93;

    sub_22ED7DFF0(v39);
    if (!v40)
    {
      break;
    }

    v8 = v78 + 1;
    v41 = sub_22EE3C564();
    v42 = sub_22EE3BE44();
    _os_signpost_emit_with_name_impl(&dword_22ED7A000, v34, v41, v42, "01: shouldAmend", "%s", v31, 0xCu);

    v43 = v76;
    __swift_destroy_boxed_opaque_existential_0(v76);
    MEMORY[0x2318F8320](v43, -1, -1);
    MEMORY[0x2318F8320](v31, -1, -1);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
    (*v70)(v36, v74);

    v9 = v77 + 5;
    if (v72 == v8)
    {
      goto LABEL_15;
    }
  }

  v82 = v34;
  sub_22EDE35E8();
  v45 = swift_allocError();
  v46 = v79;
  *v47 = v32;
  *(v47 + 8) = v46;
  *(v47 + 16) = 0;
  *(v47 + 24) = 0;
  *(v47 + 32) = 6;

  if (v84)
  {
    v48 = v84;

    v45 = v48;
  }

  v66[1] = v45;
  ErrorValue = swift_getErrorValue();
  v50 = v87;
  v51 = *(v87 - 8);
  MEMORY[0x28223BE20](ErrorValue);
  v53 = v66 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v51 + 16))(v53);
  v83 = sub_22EE3CBF4();
  v55 = v54;
  (*(v51 + 8))(v53, v50);
  swift_unknownObjectRetain();

  v56 = v81;
  swift_unknownObjectRetain();

  v57 = sub_22EE3BEF4();
  v58 = sub_22EE3C4B4();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = v56;
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v93 = v61;
    *v60 = 136446466;
    v62 = v86;
    *(v60 + 4) = sub_22ED7DF24(v86, v46, &v93);
    *(v60 + 12) = 2082;
    *(v60 + 14) = sub_22ED7DF24(v83, v55, &v93);
    _os_log_impl(&dword_22ED7A000, v57, v58, "provider %{public}s cannot amend: %{public}s", v60, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318F8320](v61, -1, -1);
    v63 = v60;
    v56 = v59;
    MEMORY[0x2318F8320](v63, -1, -1);

    v64 = v71;
  }

  else
  {

    v64 = v71;
    v62 = v86;
  }

  v93 = 0;
  v94 = 0xE000000000000000;
  sub_22EE3C864();

  v93 = v62;
  v94 = v46;
  MEMORY[0x2318F58F0](0xD000000000000012, 0x800000022EE48100);
  MEMORY[0x2318F58F0](v83, v55);

  v65 = sub_22EE3C0F4();

  [v56 failWithReason_];

  swift_willThrow();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease_n();

  (*v70)(v64, v74);
}

uint64_t sub_22EDDFCB0(uint64_t a1, SEL *a2, const char *a3, const char *a4, ...)
{
  v43 = a4;
  v39 = a3;
  v49 = a2;
  v45 = a1;
  v44 = sub_22EE3BE64();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v42 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v4 + v7);
  v9 = *(result + 16);
  if (v9)
  {
    v41 = (v5 + 8);

    v10 = (v37 + 64);
    v11 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v12 = 136446210;
    v38 = v12;
    *&v12 = 136315138;
    v40 = v12;
    do
    {
      v24 = *(v10 - 4);
      v23 = *(v10 - 3);
      v26 = *(v10 - 2);
      v25 = *(v10 - 1);
      v27 = *v10;
      v51 = v24;
      v52 = v23;
      v53 = v26;
      v54 = v25;
      v55 = v27;
      if ([v26 v11[353]])
      {
        v48 = v9;
        v28 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v28 != -1)
        {
          swift_once();
        }

        v29 = sub_22EE3BF14();
        __swift_project_value_buffer(v29, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v30 = sub_22EE3BEF4();
        v31 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v32 = os_log_type_enabled(v30, v31);
        v46 = v27;
        if (v32)
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v50 = v34;
          *v33 = v38;

          v35 = sub_22ED7DF24(v24, v23, &v50);

          *(v33 + 4) = v35;
          _os_log_impl(&dword_22ED7A000, v30, v31, v39, v33, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v34);
          MEMORY[0x2318F8320](v34, -1, -1);
          MEMORY[0x2318F8320](v33, -1, -1);
        }

        v47 = v25;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v13 = sub_22EE3BE94();
        __swift_project_value_buffer(v13, qword_27DA9C900);
        v14 = v42;
        sub_22EE3BE54();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v50 = v16;
        *v15 = v40;

        v17 = sub_22ED7DF24(v24, v23, &v50);

        *(v15 + 4) = v17;
        v18 = sub_22EE3BE74();
        LOBYTE(v17) = sub_22EE3C574();
        v19 = sub_22EE3BE44();
        v20 = v43;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v18, v17, v19, v43, "%s", v15, 0xCu);
        v21 = v45;
        [v26 *v49];
        sub_22ED7DFF0(v21);
        LOBYTE(v21) = sub_22EE3C564();
        v22 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v18, v21, v22, v20, "%s", v15, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x2318F8320](v16, -1, -1);
        MEMORY[0x2318F8320](v15, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*v41)(v14, v44);
        v9 = v48;
        v11 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
      }

      v10 += 5;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_22EDE01E8(uint64_t a1, SEL *a2, const char *a3, const char *a4, ...)
{
  v42 = a4;
  v38 = a3;
  v48 = a2;
  v44 = a1;
  v43 = sub_22EE3BE64();
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v4 + v7);
  v9 = *(result + 16);
  if (v9)
  {
    v40 = (v5 + 8);

    v10 = (v36 + 64);
    v11 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v12 = 136446210;
    v37 = v12;
    *&v12 = 136315138;
    v39 = v12;
    do
    {
      v23 = *(v10 - 4);
      v22 = *(v10 - 3);
      v24 = *(v10 - 2);
      v25 = *(v10 - 1);
      v26 = *v10;
      if ([v24 v11[353]])
      {
        v47 = v9;
        v27 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v27 != -1)
        {
          swift_once();
        }

        v28 = sub_22EE3BF14();
        __swift_project_value_buffer(v28, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v29 = sub_22EE3BEF4();
        v30 = sub_22EE3C4C4();

        v46 = v25;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v31 = v24;
        if (os_log_type_enabled(v29, v30))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v49 = v33;
          *v32 = v37;

          v34 = sub_22ED7DF24(v23, v22, &v49);

          *(v32 + 4) = v34;
          _os_log_impl(&dword_22ED7A000, v29, v30, v38, v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          MEMORY[0x2318F8320](v33, -1, -1);
          MEMORY[0x2318F8320](v32, -1, -1);
        }

        v45 = v26;
        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v13 = sub_22EE3BE94();
        __swift_project_value_buffer(v13, qword_27DA9C900);
        v14 = v41;
        sub_22EE3BE54();
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v49 = v16;
        *v15 = v39;

        v17 = sub_22ED7DF24(v23, v22, &v49);

        *(v15 + 4) = v17;
        v18 = sub_22EE3BE74();
        LOBYTE(v17) = sub_22EE3C574();
        v19 = sub_22EE3BE44();
        v20 = v42;
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v18, v17, v19, v42, "%s", v15, 0xCu);
        [v31 *v48];
        LOBYTE(v17) = sub_22EE3C564();
        v21 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v18, v17, v21, v20, "%s", v15, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x2318F8320](v16, -1, -1);
        MEMORY[0x2318F8320](v15, -1, -1);

        swift_unknownObjectRelease();

        swift_unknownObjectRelease_n();
        (*v40)(v14, v43);
        v11 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
        v9 = v47;
      }

      v10 += 5;
      --v9;
    }

    while (v9);
  }

  return result;
}

Swift::Void __swiftcall ProviderList.postprocessingComplete(file:)(Swift::OpaquePointer file)
{
  rawValue = file._rawValue;
  v38 = sub_22EE3BE64();
  v2 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  v5 = *(*(v1 + v4) + 16);
  if (v5)
  {
    v35 = (v2 + 8);

    v6 = (v32 + 64);
    v7 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
    *&v8 = 136446210;
    v33 = v8;
    *&v8 = 136315138;
    v34 = v8;
    do
    {
      v19 = *(v6 - 4);
      v18 = *(v6 - 3);
      v21 = *(v6 - 2);
      v20 = *(v6 - 1);
      v22 = *v6;
      v42 = v19;
      v43 = v18;
      v44 = v21;
      v45 = v20;
      v46 = v22;
      if ([v21 v7[353]])
      {
        v23 = qword_27DA965C0;
        swift_unknownObjectRetain_n();

        swift_unknownObjectRetain();

        if (v23 != -1)
        {
          swift_once();
        }

        v24 = sub_22EE3BF14();
        __swift_project_value_buffer(v24, qword_27DA9C8E8);
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();

        v25 = sub_22EE3BEF4();
        v26 = sub_22EE3C4C4();

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v27 = os_log_type_enabled(v25, v26);
        v39 = v22;
        v40 = v20;
        if (v27)
        {
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          v41 = v29;
          *v28 = v33;

          v30 = sub_22ED7DF24(v19, v18, &v41);

          *(v28 + 4) = v30;
          _os_log_impl(&dword_22ED7A000, v25, v26, "calling provider %{public}s's postprocessingComplete", v28, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v29);
          MEMORY[0x2318F8320](v29, -1, -1);
          MEMORY[0x2318F8320](v28, -1, -1);
        }

        if (qword_27DA965C8 != -1)
        {
          swift_once();
        }

        v9 = sub_22EE3BE94();
        __swift_project_value_buffer(v9, qword_27DA9C900);
        v10 = v36;
        sub_22EE3BE54();
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v41 = v12;
        *v11 = v34;

        v13 = sub_22ED7DF24(v19, v18, &v41);

        *(v11 + 4) = v13;
        v14 = sub_22EE3BE74();
        LOBYTE(v13) = sub_22EE3C574();
        v15 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v14, v13, v15, "08: postprocessingComplete", "%s", v11, 0xCu);
        v16 = rawValue;
        [v21 postprocessingCompleteWithFile_];
        sub_22ED7DFF0(v16);
        LOBYTE(v16) = sub_22EE3C564();
        v17 = sub_22EE3BE44();
        _os_signpost_emit_with_name_impl(&dword_22ED7A000, v14, v16, v17, "08: postprocessingComplete", "%s", v11, 0xCu);

        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x2318F8320](v12, -1, -1);
        MEMORY[0x2318F8320](v11, -1, -1);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease_n();

        (*v35)(v10, v38);
        v7 = &__block_descriptor_48_e8_32r40r_e22_v24__0__CSTypeRef_QQ_8lr32l8r40l8;
      }

      v6 += 5;
      --v5;
    }

    while (v5);
  }
}

uint64_t ProviderList.willFinish(catalog:file:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v40 = a1;
  v39 = sub_22EE3BE64();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
  swift_beginAccess();
  result = *(v2 + v5);
  v7 = *(result + 16);
  if (v7)
  {
    v36 = (v3 + 8);

    v8 = (v33 + 64);
    *&v9 = 136446210;
    v34 = v9;
    *&v9 = 136315138;
    v35 = v9;
    do
    {
      v44 = v7;
      v11 = *(v8 - 4);
      v10 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      v46 = v11;
      v47 = v10;
      v48 = v12;
      v49 = v13;
      v50 = v14;
      v15 = qword_27DA965C0;

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = sub_22EE3BF14();
      __swift_project_value_buffer(v16, qword_27DA9C8E8);

      swift_unknownObjectRetain();
      swift_unknownObjectRetain();

      v17 = sub_22EE3BEF4();
      v18 = sub_22EE3C4C4();

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v19 = os_log_type_enabled(v17, v18);
      v42 = v13;
      if (v19)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v45 = v21;
        *v20 = v34;

        v22 = sub_22ED7DF24(v11, v10, &v45);

        *(v20 + 4) = v22;
        _os_log_impl(&dword_22ED7A000, v17, v18, "calling provider %{public}s's willFinish", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x2318F8320](v21, -1, -1);
        MEMORY[0x2318F8320](v20, -1, -1);
      }

      v41 = v14;
      v43 = v12;
      if (qword_27DA965C8 != -1)
      {
        swift_once();
      }

      v23 = sub_22EE3BE94();
      __swift_project_value_buffer(v23, qword_27DA9C900);
      v24 = v37;
      sub_22EE3BE54();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45 = v26;
      *v25 = v35;

      v27 = sub_22ED7DF24(v11, v10, &v45);

      *(v25 + 4) = v27;
      v28 = sub_22EE3BE74();
      LOBYTE(v27) = sub_22EE3C574();
      v29 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v28, v27, v29, "09: willFinish", "%s", v25, 0xCu);
      v30 = v38;
      [v43 willFinishWithCatalog:v40 file:v38];
      sub_22ED7DFF0(v30);
      LOBYTE(v30) = sub_22EE3C564();
      v31 = sub_22EE3BE44();
      _os_signpost_emit_with_name_impl(&dword_22ED7A000, v28, v30, v31, "09: willFinish", "%s", v25, 0xCu);

      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x2318F8320](v26, -1, -1);
      MEMORY[0x2318F8320](v25, -1, -1);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      (*v36)(v24, v39);
      v8 += 5;
      v7 = v44 - 1;
    }

    while (v44 != 1);
  }

  return result;
}

id ProviderList.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProviderList.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ktrace_session_provide(_TtC6ktrace12ProviderList *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v9 = sub_22EE3C064();
  swift_unknownObjectRetain();
  v10 = ktrace_session_provide(_:_:_:_:_:)(a1, a2, v9, a4, v5);
  swift_unknownObjectRelease();

  return v10;
}

uint64_t ktrace_session_provide(_:_:_:_:_:)(_TtC6ktrace12ProviderList *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  _session_ensure_providers(a1);
  v9 = _session_providers(a1);
  v10 = sub_22EE3C214();
  v12 = v11;
  v13 = *&v9[OBJC_IVAR____TtC6ktrace12ProviderList_machine];

  swift_unknownObjectRetain();
  sub_22EDDD898(v10, v12, v13, a3, a4, a5, &v32);
  v14 = v33;
  if (v33)
  {
    v15 = v32;
    v16 = v34;
    v17 = v35;
    v18 = v36;
    v37[0] = v32;
    v37[1] = v33;
    v38 = v36;
    v19 = OBJC_IVAR____TtC6ktrace12ProviderList_providers;
    swift_beginAccess();
    v20 = *&v9[v19];
    sub_22EDE3770(v37, v31);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    sub_22EDE3700(&v38, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v9[v19] = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_22EDE18E0(0, *(v20 + 2) + 1, 1, v20);
      *&v9[v19] = v20;
    }

    v22 = *(v20 + 2);
    v23 = *(v20 + 3);
    v24 = v22 + 1;
    if (v22 >= v23 >> 1)
    {
      v30 = v22 + 1;
      v27 = v20;
      v28 = *(v20 + 2);
      v29 = sub_22EDE18E0((v23 > 1), v22 + 1, 1, v27);
      v22 = v28;
      v24 = v30;
      v20 = v29;
    }

    *(v20 + 2) = v24;
    v25 = &v20[40 * v22];
    *(v25 + 4) = v15;
    *(v25 + 5) = v14;
    *(v25 + 6) = v16;
    *(v25 + 7) = v17;
    *(v25 + 8) = v18;
    *&v9[v19] = v20;
    swift_endAccess();
    sub_22EDE37CC(v37);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_22EDDBA48(&v38, &qword_27DA94FD8, qword_22EE400D0);
  }

  return 0;
}

char *sub_22EDE14DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95040, &qword_22EE40568);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_22EDE15FC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95020, &qword_22EE40548);
  v10 = *(sub_22EE3BCB4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22EE3BCB4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_22EDE17D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95010, &qword_22EE40530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDE18E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95018, &qword_22EE40538);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_22EDE1A00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95008, &unk_22EE41EC0);
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
    v10 = MEMORY[0x277D84F90];
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

unint64_t sub_22EDE1B04(uint64_t a1, uint64_t a2)
{
  sub_22EE3CC74();
  sub_22EE3C1C4();
  v4 = sub_22EE3CCC4();

  return sub_22EDDA5EC(a1, a2, v4);
}

char *sub_22EDE1B7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95010, &qword_22EE40530);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_22EDE1C88(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22EDE27A8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22EDE1CF4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22EDE1CF4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22EE3CB64();
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
        v5 = sub_22EE3C404();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22EDE1ED4(v7, v8, a1, v4);
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
    return sub_22EDE1DEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22EDE1DEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + (a3 << 6);
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 64);
      v12 = *v10 == *(v10 - 64) && *(v10 + 8) == *(v10 - 56);
      if (v12 || (result = sub_22EE3CBA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 64;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v14 = *(v10 + 32);
      v13 = *(v10 + 48);
      v16 = *v10;
      v15 = *(v10 + 16);
      v17 = *(v10 - 48);
      *v10 = *v11;
      *(v10 + 16) = v17;
      v18 = *(v10 - 16);
      *(v10 + 32) = *(v10 - 32);
      *(v10 + 48) = v18;
      *v11 = v16;
      *(v10 - 48) = v15;
      v10 -= 64;
      v11[2] = v14;
      v11[3] = v13;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22EDE1ED4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v104 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v104;
    if (!*v104)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_22EDE2794(v8);
      v8 = result;
    }

    v94 = v8 + 16;
    v95 = *(v8 + 2);
    if (v95 >= 2)
    {
      while (*a3)
      {
        v96 = &v8[16 * v95];
        v97 = *v96;
        v98 = &v94[2 * v95];
        v99 = v98[1];
        sub_22EDE24C8((*a3 + (*v96 << 6)), (*a3 + (*v98 << 6)), (*a3 + (v99 << 6)), v9);
        if (v5)
        {
        }

        if (v99 < v97)
        {
          goto LABEL_130;
        }

        if (v95 - 2 >= *v94)
        {
          goto LABEL_131;
        }

        *v96 = v97;
        *(v96 + 1) = v99;
        v100 = *v94 - v95;
        if (*v94 < v95)
        {
          goto LABEL_132;
        }

        v95 = *v94 - 1;
        result = memmove(v98, v98 + 2, 16 * v100);
        *v94 = v95;
        if (v95 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + (v7 << 6));
      result = *v10;
      v11 = (*a3 + (v9 << 6));
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_22EE3CBA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 9;
        v15 = v11 + 9;
        do
        {
          result = v14[7];
          v17 = v15[8];
          v15 += 8;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_22EE3CBA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = (v7 << 6) - 64;
          v20 = v9 << 6;
          v21 = v7;
          v22 = v9;
          do
          {
            if (v22 != --v21)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v32 + v20);
              v24 = (v32 + v19);
              v26 = v23[2];
              v25 = v23[3];
              v28 = *v23;
              v27 = v23[1];
              v29 = v24[3];
              v31 = *v24;
              v30 = v24[1];
              v23[2] = v24[2];
              v23[3] = v29;
              *v23 = v31;
              v23[1] = v30;
              *v24 = v28;
              v24[1] = v27;
              v24[2] = v26;
              v24[3] = v25;
            }

            ++v22;
            v19 -= 64;
            v20 += 64;
          }

          while (v22 < v21);
        }
      }
    }

    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE1A00(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v49 = *(v8 + 2);
    v48 = *(v8 + 3);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      result = sub_22EDE1A00((v48 > 1), v49 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v50;
    v51 = &v8[16 * v49];
    *(v51 + 4) = v9;
    *(v51 + 5) = v7;
    v52 = *v104;
    if (!*v104)
    {
      goto LABEL_143;
    }

    if (v49)
    {
      while (1)
      {
        v53 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v54 = *(v8 + 4);
          v55 = *(v8 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_75:
          if (v57)
          {
            goto LABEL_121;
          }

          v70 = &v8[16 * v50];
          v72 = *v70;
          v71 = *(v70 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_124;
          }

          v76 = &v8[16 * v53 + 32];
          v78 = *v76;
          v77 = *(v76 + 1);
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v74, v79))
          {
            goto LABEL_128;
          }

          if (v74 + v79 >= v56)
          {
            if (v56 < v79)
            {
              v53 = v50 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v80 = &v8[16 * v50];
        v82 = *v80;
        v81 = *(v80 + 1);
        v64 = __OFSUB__(v81, v82);
        v74 = v81 - v82;
        v75 = v64;
LABEL_89:
        if (v75)
        {
          goto LABEL_123;
        }

        v83 = &v8[16 * v53];
        v85 = *(v83 + 4);
        v84 = *(v83 + 5);
        v64 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v64)
        {
          goto LABEL_126;
        }

        if (v86 < v74)
        {
          goto LABEL_3;
        }

LABEL_96:
        v91 = v53 - 1;
        if (v53 - 1 >= v50)
        {
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
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v9 = *&v8[16 * v91 + 32];
        v92 = *&v8[16 * v53 + 40];
        sub_22EDE24C8((*a3 + (v9 << 6)), (*a3 + (*&v8[16 * v53 + 32] << 6)), (*a3 + (v92 << 6)), v52);
        if (v5)
        {
        }

        if (v92 < v9)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22EDE2794(v8);
        }

        if (v91 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v93 = &v8[16 * v91];
        *(v93 + 4) = v9;
        *(v93 + 5) = v92;
        result = sub_22EDE2708(v53);
        v50 = *(v8 + 2);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v58 = &v8[16 * v50 + 32];
      v59 = *(v58 - 64);
      v60 = *(v58 - 56);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_119;
      }

      v63 = *(v58 - 48);
      v62 = *(v58 - 40);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_120;
      }

      v65 = &v8[16 * v50];
      v67 = *v65;
      v66 = *(v65 + 1);
      v64 = __OFSUB__(v66, v67);
      v68 = v66 - v67;
      if (v64)
      {
        goto LABEL_122;
      }

      v64 = __OFADD__(v56, v68);
      v69 = v56 + v68;
      if (v64)
      {
        goto LABEL_125;
      }

      if (v69 >= v61)
      {
        v87 = &v8[16 * v53 + 32];
        v89 = *v87;
        v88 = *(v87 + 1);
        v64 = __OFSUB__(v88, v89);
        v90 = v88 - v89;
        if (v64)
        {
          goto LABEL_129;
        }

        if (v56 < v90)
        {
          v53 = v50 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v102 = v5;
  if (v9 + a4 >= v33)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v102;
    goto LABEL_55;
  }

  v34 = *a3;
  v35 = *a3 + (v7 << 6);
  v101 = v9;
  v36 = (v9 - v7);
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    v39 = (v38 - 64);
    v40 = *v38 == *(v38 - 64) && *(v38 + 8) == *(v38 - 56);
    if (v40 || (result = sub_22EE3CBA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v35 += 64;
      --v36;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v101;
      goto LABEL_54;
    }

    if (!v34)
    {
      break;
    }

    v42 = *(v38 + 32);
    v41 = *(v38 + 48);
    v44 = *v38;
    v43 = *(v38 + 16);
    v45 = *(v38 - 48);
    *v38 = *v39;
    *(v38 + 16) = v45;
    v46 = *(v38 - 16);
    *(v38 + 32) = *(v38 - 32);
    *(v38 + 48) = v46;
    *v39 = v44;
    *(v38 - 48) = v43;
    v38 -= 64;
    v39[2] = v42;
    v39[3] = v41;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_22EDE24C8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 < v12 >> 6)
  {
    if (a4 != __dst || &__dst[64 * v10] <= a4)
    {
      memmove(a4, __dst, v10 << 6);
    }

    v14 = &v4[64 * v10];
    if (v8 < 64)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v19 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v19 && (sub_22EE3CBA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v19 = v7 == v4;
      v4 += 64;
      if (!v19)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 64;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v19 = v7 == v6;
    v6 += 64;
    if (v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    v16 = *v15;
    v17 = *(v15 + 1);
    v18 = *(v15 + 3);
    *(v7 + 2) = *(v15 + 2);
    *(v7 + 3) = v18;
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[64 * v13] <= a4)
  {
    memmove(a4, __src, v13 << 6);
  }

  v14 = &v4[64 * v13];
  if (v11 >= 64 && v6 > v7)
  {
LABEL_28:
    v20 = v6 - 64;
    v5 -= 64;
    v21 = v14;
    do
    {
      v22 = *(v21 - 8);
      v23 = *(v21 - 7);
      v21 -= 64;
      v24 = v22 == *(v6 - 8) && v23 == *(v6 - 7);
      if (!v24 && (sub_22EE3CBA4() & 1) != 0)
      {
        if (v5 + 64 != v6)
        {
          v28 = *v20;
          v29 = *(v6 - 3);
          v30 = *(v6 - 1);
          *(v5 + 2) = *(v6 - 2);
          *(v5 + 3) = v30;
          *v5 = v28;
          *(v5 + 1) = v29;
        }

        if (v14 <= v4 || (v6 -= 64, v20 <= v7))
        {
          v6 = v20;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 64 != v14)
      {
        v25 = *v21;
        v26 = *(v21 + 1);
        v27 = *(v21 + 3);
        *(v5 + 2) = *(v21 + 2);
        *(v5 + 3) = v27;
        *v5 = v25;
        *(v5 + 1) = v26;
      }

      v5 -= 64;
      v14 = v21;
    }

    while (v21 > v4);
    v14 = v21;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0])
  {
    memmove(v6, v4, ((v14 - v4) / 64) << 6);
  }

  return 1;
}

uint64_t sub_22EDE2708(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22EDE2794(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22EDE27BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (!*(a3 + 16) || (v8 = sub_22EDE1B04(0x746E656D75636F44, 0xED00006E6F697461), (v9 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_22ED7E678(*(a3 + 56) + 32 * v8, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95030, &qword_22EE40558);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_12:
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    goto LABEL_13;
  }

  v11 = *(v51 + 16);
  if (v11)
  {
    v12 = sub_22EDE1B04(0x736973706F6E7953, 0xE800000000000000);
    if (v13)
    {
      sub_22ED7E678(*(v51 + 56) + 32 * v12, v53);
      v14 = swift_dynamicCast();
      v15 = v51;
      if (!v14)
      {
        v15 = 0;
      }

      v50 = v15;
      if (v14)
      {
        v11 = v52;
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v50 = 0;
      v11 = 0;
    }
  }

  else
  {
    v50 = 0;
  }

  v49 = v11;
  if (*(v51 + 16) && (v22 = sub_22EDE1B04(0x7470697263736544, 0xEB000000006E6F69), (v23 & 1) != 0))
  {
    sub_22ED7E678(*(v51 + 56) + 32 * v22, v53);
    v24 = swift_dynamicCast();
    if (v24)
    {
      v19 = v51;
    }

    else
    {
      v19 = 0;
    }

    if (v24)
    {
      v20 = v52;
    }

    else
    {
      v20 = 0;
    }

    if (!*(v51 + 16))
    {
      goto LABEL_30;
    }
  }

  else
  {
    v19 = 0;
    v20 = 0;
    if (!*(v51 + 16))
    {
LABEL_30:
      v16 = 0;
      goto LABEL_31;
    }
  }

  v25 = sub_22EDE1B04(0x6E6564646948, 0xE600000000000000);
  if ((v26 & 1) == 0)
  {
    goto LABEL_30;
  }

  sub_22ED7E678(*(v51 + 56) + 32 * v25, v53);
  if (!swift_dynamicCast())
  {
    goto LABEL_30;
  }

  v16 = v51;
LABEL_31:
  if (!*(v51 + 16) || (v27 = sub_22EDE1B04(0x736E6F6974704FLL, 0xE700000000000000), (v28 & 1) == 0))
  {

    goto LABEL_59;
  }

  sub_22ED7E678(*(v51 + 56) + 32 * v27, v53);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA95038, &qword_22EE40560);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_59:
    v17 = v50;
    v21 = 0;
    goto LABEL_60;
  }

  v48 = a2;
  v29 = v51;
  v30 = *(v51 + 16);
  if (!v30)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_62;
  }

  v31 = 0;
  v47 = v30 - 1;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v32 = v31;
    while (1)
    {
      if (v32 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v33 = *(v51 + 32 + 8 * v32);
      if (*(v33 + 16))
      {
        v34 = v29;
        v35 = v30;
        result = sub_22EDE1B04(0x6E6F6974704FLL, 0xE600000000000000);
        v30 = v35;
        v29 = v34;
        if (v36)
        {
          break;
        }
      }

LABEL_39:
      if (v30 == ++v32)
      {
        goto LABEL_62;
      }
    }

    sub_22ED7E678(*(v33 + 56) + 32 * result, v53);
    result = swift_dynamicCast();
    if (!result)
    {
      goto LABEL_38;
    }

    if (!*(v33 + 16) || (v37 = sub_22EDE1B04(0x7470697263736544, 0xEB000000006E6F69), (v38 & 1) == 0) || (sub_22ED7E678(*(v33 + 56) + 32 * v37, v53), !swift_dynamicCast()))
    {

LABEL_38:
      v29 = v34;
      v30 = v35;
      goto LABEL_39;
    }

    if (*(v33 + 16) && (v39 = sub_22EDE1B04(0xD000000000000011, 0x800000022EE483B0), (v40 & 1) != 0) && (sub_22ED7E678(*(v33 + 56) + 32 * v39, v53), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA94D48, &qword_22EE41F60), swift_dynamicCast()))
    {
      v41 = v51;
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v46 = v41;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22EDE14DC(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v29 = v34;
    v30 = v35;
    v43 = *(v21 + 16);
    v42 = *(v21 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_22EDE14DC((v42 > 1), v43 + 1, 1, v21);
      v44 = v43 + 1;
      v30 = v35;
      v29 = v34;
      v21 = result;
    }

    v31 = v32 + 1;
    *(v21 + 16) = v44;
    v45 = (v21 + 40 * v43);
    v45[4] = v51;
    v45[5] = v52;
    v45[6] = v51;
    v45[7] = v52;
    v45[8] = v46;
  }

  while (v47 != v32);
LABEL_62:

  a2 = v48;
  v17 = v50;
LABEL_60:
  v18 = v49;
LABEL_13:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v16;
  *(a4 + 24) = v17;
  *(a4 + 32) = v18;
  *(a4 + 40) = v19;
  *(a4 + 48) = v20;
  *(a4 + 56) = v21;
  return result;
}