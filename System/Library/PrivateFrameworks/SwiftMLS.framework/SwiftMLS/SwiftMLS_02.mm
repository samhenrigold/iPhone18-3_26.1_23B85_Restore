uint64_t sub_26BE2A900@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v7 = *v3;
  sub_26C00B05C();
  sub_26C00B09C();
  MEMORY[0x26D699B60](a2);
  result = sub_26C00B0CC();
  v9 = -1 << *(v7 + 32);
  v10 = result & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v7 + 48) + 16 * v10;
      v13 = *v12;
      v14 = *(v12 + 8);
      if (v13 == v5 && v14 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v21 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BF7AE44();
      v17 = v21;
    }

    v18 = *(v17 + 48) + 16 * v10;
    v19 = *v18;
    v20 = *(v18 + 8);
    *a3 = v19;
    *(a3 + 8) = v20;
    result = sub_26BE2B2BC(v10);
    *v3 = v21;
    *(a3 + 16) = 0;
  }

  else
  {
LABEL_8:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 1;
  }

  return result;
}

double sub_26BE2AA44@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v48 = *MEMORY[0x277D85DE8];
  v6 = *v3;
  sub_26C00B05C();
  sub_26C00911C();
  v7 = sub_26C00B0CC();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_64:
    result = 0.0;
    *a3 = xmmword_26C00DA60;
    return result;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v45 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v42 = v15;
  v40 = a2;
  v41 = HIDWORD(a1) - a1;
  v43 = v11;
  v44 = BYTE6(a2);
  v39 = a1;
  while (1)
  {
    v16 = (*(v6 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    v19 = v17 >> 62;
    if (v17 >> 62 == 3)
    {
      break;
    }

    if (v19 > 1)
    {
      if (v19 != 2)
      {
        goto LABEL_36;
      }

      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      v26 = __OFSUB__(v24, v25);
      v23 = v24 - v25;
      if (v26)
      {
        goto LABEL_67;
      }

      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v19)
    {
      LODWORD(v23) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_68;
      }

      v23 = v23;
      if (v14 <= 1)
      {
LABEL_33:
        v27 = v44;
        if (v14)
        {
          v27 = v41;
          if (v42)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v23 = BYTE6(v17);
      if (v14 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v14 != 2)
    {
      if (!v23)
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
      goto LABEL_73;
    }

LABEL_39:
    if (v23 != v27)
    {
      goto LABEL_13;
    }

    if (v23 < 1)
    {
      goto LABEL_62;
    }

    if (v19 <= 1)
    {
      if (!v19)
      {
        *v47 = v18;
        *&v47[8] = v17;
        v47[10] = BYTE2(v17);
        v47[11] = BYTE3(v17);
        v47[12] = BYTE4(v17);
        v47[13] = BYTE5(v17);
        sub_26BE00608(v18, v17);
        v11 = v43;
        goto LABEL_61;
      }

      a2 = (v18 >> 32) - v18;
      if (v18 >> 32 < v18)
      {
        goto LABEL_69;
      }

      sub_26BE00608(v18, v17);
      v31 = sub_26C008E9C();
      if (v31)
      {
        v33 = sub_26C008ECC();
        if (__OFSUB__(v18, v33))
        {
          goto LABEL_72;
        }

        v31 += v18 - v33;
      }

LABEL_58:
      sub_26C008EBC();
      a1 = v39;
      a2 = v40;
      sub_26BE567B0(v31, v39, v40, v47);
      sub_26BE00258(v18, v17);
      v8 = v6 + 56;
      v11 = v43;
      if (v47[0])
      {
        goto LABEL_62;
      }

      goto LABEL_13;
    }

    if (v19 == 2)
    {
      a2 = *(v18 + 16);
      v30 = *(v18 + 24);
      sub_26BE00608(v18, v17);
      v31 = sub_26C008E9C();
      if (v31)
      {
        v32 = sub_26C008ECC();
        if (__OFSUB__(a2, v32))
        {
          goto LABEL_71;
        }

        v31 += a2 - v32;
      }

      v26 = __OFSUB__(v30, a2);
      a2 = v30 - a2;
      if (v26)
      {
        goto LABEL_70;
      }

      goto LABEL_58;
    }

    *&v47[6] = 0;
    *v47 = 0;
    sub_26BE00608(v18, v17);
LABEL_61:
    sub_26BE567B0(v47, a1, a2, &v46);
    sub_26BE00258(v18, v17);
    if (v46)
    {
      goto LABEL_62;
    }

LABEL_13:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_64;
    }
  }

  if (v18)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17 == 0xC000000000000000;
  }

  v22 = !v20 || v14 < 3;
  if ((v22 | v45))
  {
LABEL_36:
    v23 = 0;
    if (v14 <= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

LABEL_62:
  a2 = v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v37;
  *v47 = *v37;
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_63;
  }

LABEL_73:
  sub_26BF7AF98();
  v35 = *v47;
LABEL_63:
  *a3 = *(*(v35 + 48) + 16 * v10);
  sub_26BE2B480(v10);
  *a2 = *v47;
  return result;
}

uint64_t sub_26BE2AE90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = *v2;
  sub_26C00B05C();
  sub_26C00B08C();
  result = sub_26C00B0CC();
  v7 = -1 << *(v5 + 32);
  v8 = result & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 2 * v8) != v3)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    v13 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26BF7AD00();
      v12 = v13;
    }

    *a2 = *(*(v12 + 48) + 2 * v8);
    result = sub_26BE2B654(v8);
    v10 = 0;
    *v2 = v13;
  }

  else
  {
LABEL_5:
    *a2 = 0;
    v10 = 1;
  }

  *(a2 + 2) = v10;
  return result;
}

uint64_t sub_26BE2AFA4(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_26C00ABBC();

    if (v5)
    {
      v6 = sub_26BE2B14C(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_26C00B05C();
  sub_26C00924C();
  v8 = sub_26C00B0CC();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (1)
  {

    v12 = sub_26C00923C();

    if (v12)
    {
      break;
    }

    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v1;
  v16 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_26BF7ABB0();
    v14 = v16;
  }

  v15 = *(*(v14 + 48) + 8 * v10);
  sub_26BE2B7FC(v10);
  result = v15;
  *v1 = v16;
  return result;
}

uint64_t sub_26BE2B14C(uint64_t a1, uint64_t a2)
{

  v3 = sub_26C00AB8C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_26BE29B54(v4, v3);
  v13 = v5;
  sub_26C00B05C();

  sub_26C00924C();
  v6 = sub_26C00B0CC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {

      v10 = sub_26C00923C();

      if (v10)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v11 = *(*(v5 + 48) + 8 * v8);
  sub_26BE2B7FC(v8);
  result = sub_26C00923C();
  if (result)
  {
    *v2 = v13;
    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_26BE2B2BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 16 * v6 + 8);
        sub_26C00B05C();
        sub_26C00B09C();
        MEMORY[0x26D699B60](v10);
        v11 = sub_26C00B0CC() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B480(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = (*(v3 + 48) + 16 * v6);
        v11 = *v10;
        v12 = v10[1];
        sub_26C00B05C();
        sub_26BE00608(v11, v12);
        sub_26C00911C();
        v13 = sub_26C00B0CC();
        sub_26BE00258(v11, v12);
        v14 = v13 & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v14)
        {
LABEL_11:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + 16 * v6);
          if (v2 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B654(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26C00B05C();
        sub_26C00B08C();
        v10 = sub_26C00B0CC() & v7;
        if (v2 >= v9)
        {
          if (v10 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v10 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v10)
        {
LABEL_11:
          v11 = *(v3 + 48);
          v12 = (v11 + 2 * v2);
          v13 = (v11 + 2 * v6);
          if (v2 != v6 || v12 >= v13 + 1)
          {
            *v12 = *v13;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v14 = *(v3 + 16);
  v15 = __OFSUB__(v14, 1);
  v16 = v14 - 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v16;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_26BE2B7FC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26C00AB5C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_26C00B05C();

        sub_26C00924C();
        v10 = sub_26C00B0CC();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26BE2BA78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_26BE2BAE8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    sub_26BE00608(a1, a2);
  }
}

uint64_t sub_26BE2BAFC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BE26770(a1, v5, v4);
}

uint64_t sub_26BE2BBA8(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26BE2E3F4;

  return sub_26BE28E60(a1, v4);
}

uint64_t type metadata accessor for MLS.Client.Client(uint64_t a1)
{
  result = qword_28045E480;
  if (!qword_28045E480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26BE2BCAC()
{
  result = qword_28045E470;
  if (!qword_28045E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E470);
  }

  return result;
}

unint64_t sub_26BE2BD04()
{
  result = qword_28045E478;
  if (!qword_28045E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E478);
  }

  return result;
}

void sub_26BE2BD58(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = *(v3 + 32);
  *a2 = v4;
  a2[1] = v5;
  sub_26BE2958C(v4, v5);
}

uint64_t sub_26BE2BDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  return sub_26BE295A0(v3 + 40, a2);
}

uint64_t sub_26BE2BE78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26BE2BED0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_26BE2BF24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  return sub_26BE038A8(v3 + v4, a2);
}

uint64_t sub_26BE2BF84@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_26BE2BFDC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t _s6ClientO13CommitOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
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

_WORD *_s6ClientO13CommitOptionsVwst(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s6ClientO17EncryptionOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t _s6ClientO17EncryptionOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
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

uint64_t sub_26BE2C294(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE2C2DC(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

uint64_t _s8LifetimeVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s8LifetimeVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8SwiftMLS0B0O7StorageO010GroupStateC2V2_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26BE2C3B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 355))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE2C3FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 354) = 0;
    *(result + 352) = 0;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 355) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 355) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE2C4C8(uint64_t a1)
{
  result = sub_26C00928C();
  if (v2 <= 0x3F)
  {
    result = sub_26C00921C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.Client.Client.loadCredential(credential:)(uint64_t a1)
{
  v6 = (*(*v1 + 680) + **(*v1 + 680));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.generateKeyPackage()(uint64_t a1)
{
  v6 = (*(*v1 + 696) + **(*v1 + 696));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.createGroup(groupID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 712) + **(*v2 + 712));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2CD5C;

  return v8(a1, a2);
}

uint64_t sub_26BE2CD5C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.joinGroup(welcome:ratchetTree:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 720) + **(*v2 + 720));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3E0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Client.Client.listGroupIDs()()
{
  v4 = (*(*v0 + 760) + **(*v0 + 760));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Client.Client.loadGroup(groupID:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 768) + **(*v2 + 768));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3E0;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.Client.Client.findKeyPackage(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 776) + **(*v3 + 776));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.Client.Client.delete()()
{
  v4 = (*(*v0 + 792) + **(*v0 + 792));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3F4;

  return v4();
}

uint64_t dispatch thunk of MLS.Client.Client.listKeyPackages()()
{
  v4 = (*(*v0 + 800) + **(*v0 + 800));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3E0;

  return v4();
}

uint64_t dispatch thunk of MLS.Client.Client.changeClientUUID(newClientUUID:)(uint64_t a1)
{
  v6 = (*(*v1 + 808) + **(*v1 + 808));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return v6(a1);
}

uint64_t dispatch thunk of MLS.Client.Client.periodicCleanup()()
{
  v4 = (*(*v0 + 816) + **(*v0 + 816));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE2E3F4;

  return v4();
}

uint64_t dispatch thunk of MLS.Client.Client.performWithLock<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 824) + **(*v4 + 824));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_26BE2E3F4;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_26BE2D8D0(uint64_t a1, unsigned int a2)
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

uint64_t sub_26BE2D924(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_26BE2D99C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE2D9E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE2DA54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26BE2DCF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26BE2E3F4;

  return sub_26BF71D9C(a1, v5, v4);
}

uint64_t sub_26BE2DD9C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26BE28F58;

  return sub_26BF70E2C(a1, v4, v5, v6);
}

uint64_t sub_26BE2DE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E460, &qword_26C0206D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(v0 + 136);
  if (v1 <= 0xF)
  {
    if (v1 != 2 && v1 != 14 && v1 != 15)
    {
      goto LABEL_17;
    }

LABEL_11:

    goto LABEL_17;
  }

  if (v1 == 16)
  {
    goto LABEL_11;
  }

  if (v1 == 21)
  {
    if (*(v0 + 64))
    {
      sub_26BE0489C(*(v0 + 24), *(v0 + 32));
      __swift_destroy_boxed_opaque_existential_1((v0 + 40));
    }

    if (*(v0 + 120))
    {
      sub_26BE0489C(*(v0 + 80), *(v0 + 88));
      v2 = (v0 + 96);
      goto LABEL_16;
    }
  }

  else if (v1 == 22 && *(v0 + 64))
  {
    sub_26BE0489C(*(v0 + 24), *(v0 + 32));
    v2 = (v0 + 40);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

LABEL_17:

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_26BE2E070(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_26BE2E12C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLS.GroupState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE2E190(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE2E1F0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_26BE2E258(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_26BE2E2B8(uint64_t a1)
{
  *a1 = xmmword_26C00DA50;
  *(a1 + 16) = xmmword_26C00DA50;
  result = 0.0;
  *(a1 + 32) = xmmword_26C00DA70;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 536870908;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_26BE2E2EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t MLS.TranscriptHash.confirmed.getter()
{
  v1 = *(v0 + 8);
  sub_26BE00608(v1, *(v0 + 16));
  return v1;
}

void MLS.TranscriptHash.confirmed.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 8), *(v2 + 16));
  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
}

uint64_t MLS.TranscriptHash.interim.getter()
{
  v1 = *(v0 + 24);
  sub_26BE00608(v1, *(v0 + 32));
  return v1;
}

void MLS.TranscriptHash.interim.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
}

double MLS.TranscriptHash.init(ciphersuiteID:)@<D0>(_WORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = 0;
  result = -2.0;
  *(a2 + 16) = xmmword_26C00E2C0;
  *(a2 + 32) = 0xC000000000000000;
  return result;
}

void sub_26BE2E558()
{
  v2 = v0;
  v4 = v0[1];
  v3 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v5 = sub_26BE12418(v35);
  v7 = v6;

  v35 = 0;
  v36 = xmmword_26C00E2C0;
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(v5 + 16);
    v10 = *(v5 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(v7);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = HIDWORD(v5) - v5;
LABEL_10:
  sub_26BF30414(v9);
  if (v1)
  {
    sub_26BE00258(v5, v7);
    sub_26BE00258(v35, v36);
    return;
  }

  sub_26BE11228(v5, v7);
  v12 = v36 >> 62;
  if ((v36 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_20;
    }

    v13 = *(v35 + 24);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_20;
    }

    v13 = v35 >> 32;
  }

  if (v13 < 0)
  {
    __break(1u);
  }

LABEL_20:
  v14 = sub_26C00909C();
  v39 = 0;
  v15 = v3;
  v17 = v16;
  sub_26BE00258(v5, v7);
  sub_26BE00258(v35, v36);
  v31 = v4;
  *&v32 = v15;
  v37 = MEMORY[0x277CC9318];
  v38 = MEMORY[0x277CC9300];
  v35 = v14;
  *&v36 = v17;
  v18 = __swift_project_boxed_opaque_existential_1(&v35, MEMORY[0x277CC9318]);
  v19 = *v18;
  v20 = v18[1];
  sub_26BE00608(v4, v15);
  sub_26BE00608(v14, v17);
  sub_26BE121A0(v19, v20, &v31);
  sub_26BE00258(v14, v17);
  __swift_destroy_boxed_opaque_existential_1(&v35);
  v21 = *v2;
  if ((v21 - 3) >= 0xFFFFFFFE)
  {
    v22 = v31;
    v23 = v32;
    v24 = v2[1];
    v25 = v2[2];
    v27 = v2[4];
    v39 = v2[3];
    v26 = v39;
    LOBYTE(v31) = v21 != 1;
    sub_26BE00608(v24, v25);
    sub_26BE00608(v26, v27);
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
    LOBYTE(v31) = v35;
    v32 = v36;
    v33 = v37;
    v34 = v38;
    v28 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v22, v23);
    v30 = v29;

    sub_26BE00258(v22, v23);
    sub_26BE00258(v24, v25);
    sub_26BE00258(v39, v27);
    sub_26BE00258(v2[3], v2[4]);
    v2[3] = v28;
    v2[4] = v30;
    return;
  }

LABEL_23:
  __break(1u);
}

void MLS.TranscriptHash.update(authenticatedContent:)(uint64_t a1)
{
  sub_26BE2E86C();
  if (!v1)
  {
    sub_26BE2E9FC();
  }
}

void sub_26BE2E86C()
{
  v2 = v0;
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_26BE2EB8C();
  if (!v1)
  {
    v22 = v3;
    *&v23 = v4;
    v28 = MEMORY[0x277CC9318];
    v29 = MEMORY[0x277CC9300];
    v26 = v5;
    *&v27 = v6;
    v7 = v5;
    v8 = v6;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277CC9318]);
    v10 = *v9;
    v11 = v9[1];
    sub_26BE00608(v3, v4);
    sub_26BE00608(v7, v8);
    sub_26BE121A0(v10, v11, &v22);
    v30 = 0;
    sub_26BE00258(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v12 = *v2;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v13 = v22;
      v14 = v23;
      v15 = v2[1];
      v16 = v2[2];
      v17 = v2[3];
      v18 = v2[4];
      LOBYTE(v22) = v12 != 1;
      sub_26BE00608(v15, v16);
      sub_26BE00608(v17, v18);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      LOBYTE(v22) = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v19 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v13, v14);
      v21 = v20;

      sub_26BE00258(v13, v14);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      sub_26BE00258(v2[1], v2[2]);
      v2[1] = v19;
      v2[2] = v21;
    }
  }
}

void sub_26BE2E9FC()
{
  v2 = v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = sub_26BE2F02C();
  if (!v1)
  {
    v22 = v3;
    *&v23 = v4;
    v28 = MEMORY[0x277CC9318];
    v29 = MEMORY[0x277CC9300];
    v26 = v5;
    *&v27 = v6;
    v7 = v5;
    v8 = v6;
    v9 = __swift_project_boxed_opaque_existential_1(&v26, MEMORY[0x277CC9318]);
    v10 = *v9;
    v11 = v9[1];
    sub_26BE00608(v3, v4);
    sub_26BE00608(v7, v8);
    sub_26BE121A0(v10, v11, &v22);
    v30 = 0;
    sub_26BE00258(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(&v26);
    v12 = *v2;
    if ((v12 - 3) < 0xFFFFFFFE)
    {
      __break(1u);
    }

    else
    {
      v13 = v22;
      v14 = v23;
      v15 = v2[1];
      v16 = v2[2];
      v17 = v2[3];
      v18 = v2[4];
      LOBYTE(v22) = v12 != 1;
      sub_26BE00608(v15, v16);
      sub_26BE00608(v17, v18);
      MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)();
      LOBYTE(v22) = v26;
      v23 = v27;
      v24 = v28;
      v25 = v29;
      v19 = MLS.Cryptography.Ciphersuite.digestHash(_:)(v13, v14);
      v21 = v20;

      sub_26BE00258(v13, v14);
      sub_26BE00258(v15, v16);
      sub_26BE00258(v17, v18);
      sub_26BE00258(v2[3], v2[4]);
      v2[3] = v19;
      v2[4] = v21;
    }
  }
}

__int128 *sub_26BE2EB8C()
{
  v2 = &qword_28045E4E0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = type metadata accessor for MLS.FramedContentAuthData(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for MLS.AuthenticatedContent(0);
  sub_26BE2E1F0(v0 + *(v10 + 24), v5, &qword_28045E4E0, &qword_26C015A80);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    v2 = &v28;
    sub_26BE2FABC(v5, v9, type metadata accessor for MLS.FramedContentAuthData);
    v12 = *(v0 + 92);
    v13 = *(v0 + 108);
    v30[12] = *(v0 + 100);
    v31[0] = v13;
    *(v31 + 9) = *(v0 + 225);
    v14 = *(v0 + 60);
    v15 = *(v0 + 76);
    v30[8] = *(v0 + 68);
    v30[9] = v15;
    v30[10] = *(v0 + 84);
    v30[11] = v12;
    v16 = *(v0 + 28);
    v17 = *(v0 + 44);
    v30[4] = *(v0 + 36);
    v30[5] = v17;
    v30[6] = *(v0 + 52);
    v30[7] = v14;
    v18 = *(v0 + 12);
    v30[0] = *(v0 + 4);
    v30[1] = v18;
    v30[2] = *(v0 + 20);
    v30[3] = v16;
    *&v27[182] = *(v0 + 92);
    *&v27[198] = *(v0 + 100);
    *&v27[214] = *(v0 + 108);
    *&v27[223] = *(v0 + 225);
    *&v27[118] = *(v0 + 60);
    *&v27[134] = *(v0 + 68);
    *&v27[150] = *(v0 + 76);
    *&v27[166] = *(v0 + 84);
    *&v27[54] = *(v0 + 28);
    *&v27[70] = *(v0 + 36);
    *&v27[86] = *(v0 + 44);
    *&v27[102] = *(v0 + 52);
    *&v27[6] = *(v0 + 4);
    *&v27[22] = *(v0 + 12);
    *&v27[38] = *(v0 + 20);
    *(&v32[22] + 2) = *&v27[176];
    *(&v32[24] + 2) = *&v27[192];
    *(&v32[26] + 2) = *&v27[208];
    *(&v32[28] + 1) = *&v27[223];
    *(&v32[14] + 2) = *&v27[112];
    *(&v32[16] + 2) = *&v27[128];
    *(&v32[18] + 2) = *&v27[144];
    *(&v32[20] + 2) = *&v27[160];
    *(&v32[6] + 2) = *&v27[48];
    *(&v32[8] + 2) = *&v27[64];
    *(&v32[10] + 2) = *&v27[80];
    *(&v32[12] + 2) = *&v27[96];
    *(v32 + 2) = *v27;
    *(&v32[2] + 2) = *&v27[16];
    v19 = *v0;
    v20 = *v9;
    v21 = v9[1];
    LOWORD(v32[0]) = v19;
    *(&v32[4] + 2) = *&v27[32];
    v32[31] = v20;
    v32[32] = v21;
    v28 = xmmword_26C00BBD0;
    v29 = 0;
    memcpy(v27, v32, sizeof(v27));
    sub_26BE2FB24(v30, &v26);
    sub_26BE00608(v20, v21);
    sub_26BFF6ED4(v27);
    if (v1)
    {
      sub_26BE2FA5C(v9, type metadata accessor for MLS.FramedContentAuthData);
      sub_26BE2FB80(v32);
      sub_26BE00258(v28, *(&v28 + 1));
      return v2;
    }

    v23 = v28;
    v24 = *(&v28 + 1) >> 62;
    if ((*(&v28 + 1) >> 62) > 1)
    {
      if (v24 != 2 || (*(v28 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (!v24 || ((v28 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_14:
    v2 = sub_26C00909C();
    sub_26BE2FB80(v32);
    sub_26BE2FA5C(v9, type metadata accessor for MLS.FramedContentAuthData);
    sub_26BE00258(v23, *(&v23 + 1));
    return v2;
  }

  sub_26BE2E258(v5, &qword_28045E4E0, &qword_26C015A80);
  sub_26BE01654();
  swift_allocError();
  *v11 = 0xD000000000000049;
  *(v11 + 8) = 0x800000026C02AE70;
  *(v11 + 112) = 16;
  swift_willThrow();
  return v2;
}

unint64_t sub_26BE2F02C()
{
  v2 = &qword_28045E4E0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E0, &qword_26C015A80);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4E8, &qword_26C012550);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for MLS.Cryptography.MACTag(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MLS.AuthenticatedContent(0);
  sub_26BE2E1F0(v0 + *(v13 + 24), v5, &qword_28045E4E0, &qword_26C015A80);
  v14 = type metadata accessor for MLS.FramedContentAuthData(0);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_26BE2E258(v5, &qword_28045E4E0, &qword_26C015A80);
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_4:
    sub_26BE2E258(v8, &qword_28045E4E8, &qword_26C012550);
    sub_26BE01654();
    swift_allocError();
    *v15 = 0xD000000000000047;
    *(v15 + 8) = 0x800000026C02AE20;
    *(v15 + 112) = 16;
    swift_willThrow();
    return v2;
  }

  sub_26BE2E1F0(&v5[*(v14 + 20)], v8, &qword_28045E4E8, &qword_26C012550);
  sub_26BE2FA5C(v5, type metadata accessor for MLS.FramedContentAuthData);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_4;
  }

  sub_26BE2FABC(v8, v12, type metadata accessor for MLS.Cryptography.MACTag);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E228, &qword_26C00CDD0);
  sub_26C009C3C();
  v17 = sub_26BE12418(v25);
  v19 = v18;

  v25 = xmmword_26C00BBD0;
  v26 = 0;
  v20 = v19 >> 62;
  if ((v19 >> 62) > 1)
  {
    result = 0;
    if (v20 != 2 || (v22 = *(v17 + 16), v21 = *(v17 + 24), result = v21 - v22, !__OFSUB__(v21, v22)))
    {
LABEL_15:
      sub_26BF30414(result);
      if (v1)
      {
        sub_26BE00258(v17, v19);
        sub_26BE2FA5C(v12, type metadata accessor for MLS.Cryptography.MACTag);
        sub_26BE00258(v25, *(&v25 + 1));
        return v2;
      }

      sub_26BE11228(v17, v19);
      v23 = v25;
      v24 = *(&v25 + 1) >> 62;
      if ((*(&v25 + 1) >> 62) > 1)
      {
        if (v24 != 2 || (*(v25 + 24) & 0x8000000000000000) == 0)
        {
          goto LABEL_25;
        }
      }

      else if (!v24 || ((v25 >> 32) & 0x8000000000000000) == 0)
      {
        goto LABEL_25;
      }

      __break(1u);
LABEL_25:
      v2 = sub_26C00909C();
      sub_26BE00258(v17, v19);
      sub_26BE2FA5C(v12, type metadata accessor for MLS.Cryptography.MACTag);
      sub_26BE00258(v23, *(&v23 + 1));
      return v2;
    }

    __break(1u);
  }

  else if (!v20)
  {
    result = BYTE6(v19);
    goto LABEL_15;
  }

  if (!__OFSUB__(HIDWORD(v17), v17))
  {
    result = HIDWORD(v17) - v17;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

BOOL static MLS.TranscriptHash.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

uint64_t MLS.TranscriptHash.hash(into:)(uint64_t a1)
{
  sub_26C00B08C();
  sub_26C00911C();

  return sub_26C00911C();
}

uint64_t MLS.TranscriptHash.hashValue.getter()
{
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

BOOL sub_26BE2F62C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if (!sub_26BE02DEC(a1[1], a1[2], a2[1], a2[2]))
  {
    return 0;
  }

  return sub_26BE02DEC(v2, v3, v4, v5);
}

uint64_t sub_26BE2F6AC()
{
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

uint64_t sub_26BE2F72C(uint64_t a1)
{
  sub_26C00B08C();
  sub_26C00911C();

  return sub_26C00911C();
}

uint64_t sub_26BE2F79C(uint64_t a1)
{
  sub_26C00B05C();
  sub_26C00B08C();
  sub_26C00911C();
  sub_26C00911C();
  return sub_26C00B0CC();
}

unint64_t sub_26BE2F818(void *a1)
{
  v21[5] = *MEMORY[0x277D85DE8];
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v20 = bswap32(*a1) >> 16;
  v21[3] = MEMORY[0x277D838B0];
  v21[4] = MEMORY[0x277CC9C18];
  v21[0] = &v20;
  v21[1] = v21;
  __swift_project_boxed_opaque_existential_1(v21, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(v21);
  v6 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(v3);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(v2 + 16);
  v8 = *(v2 + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v7 = HIDWORD(v2) - v2;
  }

LABEL_11:
  result = sub_26BF30414(v7);
  if (v1)
  {
    return result;
  }

  v11 = result;
  sub_26BE11228(v2, v3);
  v12 = v11 + v7;
  if (__OFADD__(v11, v7))
  {
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12 + 2;
  if (__OFADD__(v12, 2))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v14)
    {
      v15 = BYTE6(v5);
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  if (v14 != 2)
  {
    v15 = 0;
    goto LABEL_25;
  }

  v17 = *(v4 + 16);
  v16 = *(v4 + 24);
  v15 = v16 - v17;
  if (__OFSUB__(v16, v17))
  {
    __break(1u);
LABEL_21:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      goto LABEL_33;
    }

    v15 = HIDWORD(v4) - v4;
  }

LABEL_25:
  v18 = sub_26BF30414(v15);
  sub_26BE11228(v4, v5);
  v19 = v18 + v15;
  if (__OFADD__(v18, v15))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = v13 + v19;
  if (__OFADD__(v13, v19))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

unint64_t sub_26BE2F9F8()
{
  result = qword_28045E4D8;
  if (!qword_28045E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E4D8);
  }

  return result;
}

uint64_t sub_26BE2FA5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26BE2FABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE2FBD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v38);
  v7 = &v37 - v6;
  v8 = sub_26C00921C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v37 - v14;
  MEMORY[0x28223BE20](v13);
  v41 = &v37 - v16;
  v17 = *(v2 + 48);
  swift_beginAccess();
  v18 = *(v17 + 376);
  v39 = *(v17 + 384);
  v40 = v18;
  v19 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  swift_beginAccess();
  v20 = *(v3 + v19);
  if (!*(v20 + 16))
  {
    goto LABEL_5;
  }

  v21 = sub_26BEBB618(a1, a2);
  if ((v22 & 1) == 0)
  {

LABEL_5:
    v24 = sub_26BE4126C();
    v25 = 0;
    goto LABEL_6;
  }

  v23 = (*(v20 + 56) + 16 * v21);
  v24 = *v23;
  v25 = *(v23 + 1);

LABEL_6:
  v26 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  swift_beginAccess();
  v27 = *(v3 + v26);
  if (*(v27 + 16) && (v28 = sub_26BEBB598(v24, v25), (v29 & 1) != 0))
  {
    (*(v9 + 16))(v15, *(v27 + 56) + *(v9 + 72) * v28, v8);
    v30 = *(v9 + 32);
    v31 = v41;
    v30(v41, v15, v8);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v38, qword_28045E4F0);
    swift_beginAccess();
    sub_26BE30C8C(v32, v7);
    v33 = *(v9 + 48);
    if (v33(v7, 1, v8) == 1)
    {
      sub_26C00920C();
      if (v33(v7, 1, v8) != 1)
      {
        sub_26BE30E14(v7);
      }
    }

    else
    {
      v30(v12, v7, v8);
    }

    sub_26C00918C();
    v35 = *(v9 + 8);
    v35(v12, v8);
    sub_26C00B15C();
    LOBYTE(v24) = sub_26C00B14C();
    v35(v31, v8);
  }

  else
  {
    sub_26BE01654();
    swift_allocError();
    *v34 = 47;
    v34[112] = 0;
    swift_willThrow();
  }

  return v24 & 1;
}

void sub_26BE2FFCC()
{
  v2 = *(v0 + 64);
  if ((v2 & 0x2000000000000000) == 0)
  {
    return;
  }

  v3 = *(v0 + 56);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = v1;

    v6 = MEMORY[0x26D6996F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v4 = v1;
    v5 = *(v3 + 32);
    sub_26BE04890(*(v0 + 56), *(v0 + 64));
    v6 = v5;
  }

  v7 = v6;
  v8 = SecCertificateCopyURIs();
  if (!v8)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = v8;
  sub_26BE0489C(v3, v2);

  type metadata accessor for CFArray(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
  if (swift_dynamicCast() && v14)
  {
    if (v14[2])
    {
      v10 = v14[4];
      v11 = v14[5];

      v12 = sub_26BE2FBD4(v10, v11);

      if (!v4 && (v12 & 1) != 0)
      {
        sub_26BE01654();
        swift_allocError();
        *v13 = 44;
        *(v13 + 8) = 0u;
        *(v13 + 24) = 0u;
        *(v13 + 40) = 0u;
        *(v13 + 56) = 0u;
        *(v13 + 72) = 0u;
        *(v13 + 88) = 0u;
        *(v13 + 104) = 0;
        *(v13 + 112) = 23;
        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_26BE30198()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  MEMORY[0x28223BE20](v1);
  v3 = &v23 - v2;
  v4 = sub_26C00921C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v23 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  v14 = *v0;
  v13 = v0[1];
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v1, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30C8C(v15, v3);
  v16 = *(v5 + 48);
  if (v16(v3, 1, v4) == 1)
  {
    sub_26C00920C();
    result = v16(v3, 1, v4);
    if (result != 1)
    {
      result = sub_26BE30E14(v3);
    }

    if ((v13 & 0x2000000000000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    result = (*(v5 + 32))(v12, v3, v4);
    if ((v13 & 0x2000000000000000) == 0)
    {
LABEL_7:
      (*(v5 + 8))(v12, v4);
      v18 = 0;
      return v18 & 1;
    }
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x26D6996F0](0, v14);
    goto LABEL_12;
  }

  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = *(v14 + 32);
LABEL_12:
    v20 = v19;
    SecCertificateNotValidAfter();
    v21 = v23;
    sub_26C00916C();

    (*(v5 + 32))(v10, v21, v4);
    v18 = sub_26C0091AC();
    v22 = *(v5 + 8);
    v22(v10, v4);
    v22(v12, v4);
    return v18 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE304A0()
{
  v1[14] = v0;
  v1[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v1[16] = swift_task_alloc();
  v2 = sub_26C00921C();
  v1[17] = v2;
  v1[18] = *(v2 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[21] = v3;
  *v3 = v1;
  v3[1] = sub_26BE305D4;

  return sub_26BF3536C();
}

uint64_t sub_26BE305D4(uint64_t a1)
{
  v3 = *v2;
  v3[22] = a1;
  v3[23] = v1;

  if (v1)
  {

    v4 = v3[1];

    return v4(0);
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BE30734, 0, 0);
  }
}

uint64_t sub_26BE30734()
{
  result = *(v0 + 176);
  v37 = *(result + 16);
  if (v37)
  {
    v2 = 0;
    v3 = *(v0 + 144);
    v4 = result + 32;
    v35 = (v3 + 8);
    v36 = (v3 + 48);
    v32 = *(v0 + 184);
    v33 = (v3 + 32);
    v34 = *(v0 + 176);
    while (v2 < *(result + 16))
    {
      result = sub_26BE2DA9C(v4, v0 + 16);
      if ((*(v0 + 31) & 0x20) != 0)
      {
        v5 = *(v0 + 16);
        if ((v5 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v6 = *(v5 + 32);
        }

        v7 = v6;
        result = SecCertificateCopyURIs();
        if (!result)
        {
          goto LABEL_43;
        }

        v8 = result;

        *(v0 + 96) = v8;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          v9 = *(v0 + 104);
          if (v9)
          {
            if (v9[2])
            {
              v10 = v9[4];
              v11 = v9[5];

              v12 = sub_26BE2FBD4(v10, v11);
              if (v32)
              {

                sub_26BE2DAF8(v0 + 16);

                v30 = *(v0 + 8);
                v31 = 0;
                goto LABEL_35;
              }

              v13 = v12;

              if (v13)
              {
                sub_26BE2DAF8(v0 + 16);
LABEL_33:

                v29 = 1;
                goto LABEL_34;
              }

              v32 = 0;
            }

            else
            {
            }
          }
        }
      }

      v14 = *(v0 + 16);
      v15 = *(v0 + 24);
      if (qword_28045DF48 != -1)
      {
        swift_once();
      }

      v17 = *(v0 + 128);
      v16 = *(v0 + 136);
      v18 = __swift_project_value_buffer(*(v0 + 120), qword_28045E4F0);
      swift_beginAccess();
      sub_26BE30C8C(v18, v17);
      v19 = *v36;
      v20 = (*v36)(v17, 1, v16);
      v22 = *(v0 + 128);
      v21 = *(v0 + 136);
      if (v20 == 1)
      {
        sub_26C00920C();
        result = v19(v22, 1, v21);
        if (result != 1)
        {
          result = sub_26BE30E14(*(v0 + 128));
        }
      }

      else
      {
        result = (*v33)(*(v0 + 160), *(v0 + 128), *(v0 + 136));
      }

      if ((v15 & 0x2000000000000000) != 0)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x26D6996F0](0, v14);
        }

        else
        {
          if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v23 = *(v14 + 32);
        }

        v24 = v23;
        v26 = *(v0 + 152);
        v25 = *(v0 + 160);
        v27 = *(v0 + 136);
        SecCertificateNotValidAfter();
        sub_26C00916C();

        LOBYTE(v24) = sub_26C0091AC();
        v28 = *v35;
        (*v35)(v26, v27);
        v28(v25, v27);
        sub_26BE2DAF8(v0 + 16);
        if (v24)
        {
          goto LABEL_33;
        }
      }

      else
      {
        (*v35)(*(v0 + 160), *(v0 + 136));
        sub_26BE2DAF8(v0 + 16);
      }

      ++v2;
      v4 += 56;
      result = v34;
      if (v37 == v2)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  else
  {
LABEL_32:

    v29 = 0;
LABEL_34:

    v30 = *(v0 + 8);
    v31 = v29;
LABEL_35:

    return v30(v31);
  }

  return result;
}

uint64_t sub_26BE30B54()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  __swift_allocate_value_buffer(v0, qword_28045E4F0);
  v1 = __swift_project_value_buffer(v0, qword_28045E4F0);
  v2 = sub_26C00921C();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t static MLS.currentDateOverride.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3 = __swift_project_value_buffer(v2, qword_28045E4F0);
  swift_beginAccess();
  return sub_26BE30C8C(v3, a1);
}

uint64_t sub_26BE30C8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MLS.currentDateOverride.setter(uint64_t a1)
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v3 = __swift_project_value_buffer(v2, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE30DA4(a1, v3);
  swift_endAccess();
  return sub_26BE30E14(a1);
}

uint64_t sub_26BE30DA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE30E14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static MLS.currentDateOverride.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  __swift_project_value_buffer(v1, qword_28045E4F0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_26BE30F1C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE30F3C, 0, 0);
}

uint64_t sub_26BE30F3C()
{
  v40 = v0;
  if (qword_28045DF80 != -1)
  {
LABEL_19:
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478EE8);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v38[0] = v5;
    *v4 = 136315394;

    v6 = sub_26BE3D034();
    v8 = v7;

    v9 = sub_26BE29740(v6, v8, v38);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    v10 = sub_26C00A38C();
    v12 = sub_26BE29740(v10, v11, v38);

    *(v4 + 14) = v12;
    _os_log_impl(&dword_26BDFE000, v2, v3, "%s: verifying key packages for URIs: %s", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v5, -1, -1);
    MEMORY[0x26D69A4E0](v4, -1, -1);
  }

  v13 = v0[2];
  v14 = -1;
  v15 = -1 << *(v13 + 32);
  if (-v15 < 64)
  {
    v14 = ~(-1 << -v15);
  }

  v16 = v14 & *(v13 + 64);
  v17 = (63 - v15) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_11:
      v20 = v0[3];
      v21 = (v19 << 10) | (16 * __clz(__rbit64(v16)));
      v22 = *(v13 + 56);
      v23 = (*(v13 + 48) + v21);
      v25 = v23[1];
      v38[0] = *v23;
      v24 = v38[0];
      v38[1] = v25;
      v39 = *(v22 + v21);
      v37 = v39;

      sub_26BE00608(v37, *(&v37 + 1));
      sub_26BE3138C(v24, v25, &v39, v20);
      v16 &= v16 - 1;
      v26 = v39;

      sub_26BE00258(v26, *(&v26 + 1));
      v18 = v19;
      if (!v16)
      {
        goto LABEL_8;
      }
    }
  }

  while (1)
  {
LABEL_8:
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v19 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v19);
    ++v18;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v27 = sub_26C009A3C();
  v28 = sub_26C00AA1C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v38[0] = v30;
    *v29 = 136315138;

    v31 = sub_26BE3D034();
    v33 = v32;

    v34 = sub_26BE29740(v31, v33, v38);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_26BDFE000, v27, v28, "%s: verified key packages for URIs successfully", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x26D69A4E0](v30, -1, -1);
    MEMORY[0x26D69A4E0](v29, -1, -1);
  }

  v35 = v0[1];

  return v35();
}

void sub_26BE3138C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v138 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v88 - v15;
  v127 = *a3;
  MLS.Client.KeyPackage.asKeyPackage()(v128);
  if (!v4)
  {
    v101 = v16;
    v17 = v138;
    v97 = v8;
    v98 = v11;
    v99 = v14;
    v100 = a1;
    v123 = v134;
    v124 = v135;
    v125 = v136;
    v126 = v137;
    v119 = v130;
    v120 = v131;
    v121 = v132;
    v122 = v133;
    v116[0] = v128[0];
    v116[1] = v128[1];
    v117 = v128[2];
    v118 = v129;
    v112 = *(&v129 + 1);
    v113 = v130;
    sub_26BE04890(*(&v129 + 1), v130);
    sub_26C006590(&v112, &v107);
    v95 = a2;
    v19 = v107;
    v18 = v108;
    v20 = v17;
    v22 = *(v17 + 96);
    v21 = *(v17 + 104);
    LOBYTE(v107) = *(v17 + 72);
    v108 = *(v17 + 80);
    v109 = v22;
    v110 = v21;
    v24 = *(&v117 + 1);
    v23 = v118;

    MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v24, v23, v115);
    v96 = 0;

    sub_26BE038A8(v115, &v114);
    v112 = v19;
    v113 = v18;
    v25 = *(v20 + 48);
    swift_beginAccess();
    v90 = v25;
    sub_26BE038A8(v25 + 240, &v107);
    v26 = v110;
    v92 = v109;
    v91 = __swift_project_boxed_opaque_existential_1(&v107, v109);
    v27 = sub_26C00921C();
    v28 = *(v27 - 8);
    v29 = v101;
    v88 = *(v28 + 56);
    v89 = v28;
    v88(v101, 1, 1, v27);
    v30 = *(v26 + 8);
    v93 = v18;
    v94 = v19;
    sub_26BE04890(v19, v18);
    v31 = v96;
    v32 = v30(&v112, v29, v92, v26);
    v96 = v31;
    if (v31)
    {
      sub_26BE0489C(v94, v93);
      sub_26BE2E01C(v116);
      sub_26BE2E258(v29, &qword_28045E4A8, &unk_26C00ECB0);
      sub_26BE2DBC4(&v112);
      __swift_destroy_boxed_opaque_existential_1(v115);
      __swift_destroy_boxed_opaque_existential_1(&v107);
      return;
    }

    v33 = v32;
    v34 = v89;
    v35 = v90;
    v36 = v94;
    sub_26BE2E258(v29, &qword_28045E4A8, &unk_26C00ECB0);
    __swift_destroy_boxed_opaque_existential_1(&v107);
    if ((v33 & 1) == 0)
    {
      sub_26BE0489C(v36, v93);
      v44 = v95;
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v45 = sub_26C009A5C();
      __swift_project_value_buffer(v45, qword_280478EE8);

      v46 = sub_26C009A3C();
      v47 = sub_26C00AA0C();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v107 = v49;
        *v48 = 136315394;

        v50 = sub_26BE3D034();
        v52 = v51;

        v53 = sub_26BE29740(v50, v52, &v107);

        *(v48 + 4) = v53;
        *(v48 + 12) = 2080;
        *(v48 + 14) = sub_26BE29740(v100, v44, &v107);
        _os_log_impl(&dword_26BDFE000, v46, v47, "%s: invalid credential in key package for uri %s", v48, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v49, -1, -1);
        MEMORY[0x26D69A4E0](v48, -1, -1);
      }

      LOBYTE(v107) = 6;
      v111 = 9;
      sub_26BE7C458(&v107, 1);
      sub_26BE2DC9C(&v107);
      sub_26BE01654();
      swift_allocError();
      *v54 = 6;
      v54[112] = 9;
      swift_willThrow();
      sub_26BE2E01C(v116);
      sub_26BE2DBC4(&v112);
      v55 = v115;
      goto LABEL_18;
    }

    sub_26BE038A8(v35 + 240, &v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E550, &qword_26C00E4C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E558, &unk_26C00ECC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_26BE0489C(v36, v93);
      sub_26BE2E01C(v116);
      sub_26BE2DBC4(&v112);
      __swift_destroy_boxed_opaque_existential_1(v115);
      v103 = 0;
      memset(v102, 0, sizeof(v102));
      sub_26BE2E258(v102, &qword_28045E560, &qword_26C00E4D0);
      return;
    }

    sub_26BE03890(v102, v104);
    v92 = v106;
    v101 = v105;
    v91 = __swift_project_boxed_opaque_existential_1(v104, v105);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v97, qword_28045E4F0);
    swift_beginAccess();
    v38 = v98;
    sub_26BE2E1F0(v37, v98, &qword_28045E4A8, &unk_26C00ECB0);
    v39 = v34;
    v40 = *(v34 + 48);
    v41 = v27;
    v42 = v40(v38, 1, v27);
    v43 = v99;
    if (v42 == 1)
    {
      sub_26C00920C();
      if (v40(v38, 1, v41) != 1)
      {
        sub_26BE2E258(v38, &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v39 + 32))(v99, v38, v41);
    }

    v88(v43, 0, 1, v41);
    v57 = v95;
    v56 = v96;
    v58 = (*(v92 + 16))(&v112, v43, 0, 1, v100, v95, v101);
    if (v56)
    {
      sub_26BE0489C(v94, v93);
      sub_26BE2E01C(v116);
      sub_26BE2E258(v43, &qword_28045E4A8, &unk_26C00ECB0);
LABEL_24:
      sub_26BE2DBC4(&v112);
      __swift_destroy_boxed_opaque_existential_1(v115);
      __swift_destroy_boxed_opaque_existential_1(v104);
      return;
    }

    v59 = v58;
    sub_26BE2E258(v43, &qword_28045E4A8, &unk_26C00ECB0);
    if (v59)
    {
      sub_26BE0489C(v94, v93);
      sub_26BE2E01C(v116);
      goto LABEL_24;
    }

    LOBYTE(v107) = 6;
    v111 = 9;
    sub_26BE7C458(&v107, 1);
    sub_26BE2DC9C(&v107);
    v61 = v93;
    v60 = v94;
    v107 = v94;
    *&v108 = v93;
    MLS.Identity.Credential.telURI.getter();
    v63 = v62;
    sub_26BE0489C(v60, v61);
    if (v63)
    {
      if (v63[2])
      {
        v64 = v63[5];
        v101 = v63[4];

LABEL_30:
        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v65 = sub_26C009A5C();
        __swift_project_value_buffer(v65, qword_280478EE8);

        v66 = sub_26C009A3C();
        v67 = sub_26C00AA0C();

        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v99 = v64;
          v70 = v69;
          v107 = v69;
          *v68 = 136315394;

          v71 = sub_26BE3D034();
          v73 = v72;

          v74 = sub_26BE29740(v71, v73, &v107);

          *(v68 + 4) = v74;
          *(v68 + 12) = 2080;
          *(v68 + 14) = sub_26BE29740(v100, v57, &v107);
          _os_log_impl(&dword_26BDFE000, v66, v67, "%s: credential in key package when attempting to add uri %s was invalid", v68, 0x16u);
          swift_arrayDestroy();
          v75 = v70;
          v64 = v99;
          MEMORY[0x26D69A4E0](v75, -1, -1);
          MEMORY[0x26D69A4E0](v68, -1, -1);
        }

        v76 = sub_26C009A3C();
        v77 = sub_26C00AA0C();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v107 = v79;
          *v78 = 136315650;

          v80 = sub_26BE3D034();
          v82 = v81;

          v83 = sub_26BE29740(v80, v82, &v107);

          *(v78 + 4) = v83;
          *(v78 + 12) = 2080;
          *(v78 + 14) = sub_26BE29740(v100, v57, &v107);
          *(v78 + 22) = 2080;
          if (v64)
          {
            v84 = v101;
          }

          else
          {
            v84 = 0x296C696E28;
          }

          if (v64)
          {
            v85 = v64;
          }

          else
          {
            v85 = 0xE500000000000000;
          }

          v86 = sub_26BE29740(v84, v85, &v107);

          *(v78 + 24) = v86;
          _os_log_impl(&dword_26BDFE000, v76, v77, "%s: supplied telURI %s may not match telURI from credential %s", v78, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v79, -1, -1);
          MEMORY[0x26D69A4E0](v78, -1, -1);
        }

        else
        {
        }

        sub_26BE01654();
        swift_allocError();
        *v87 = 6;
        v87[112] = 9;
        swift_willThrow();
        sub_26BE2E01C(v116);
        sub_26BE2DBC4(&v112);
        __swift_destroy_boxed_opaque_existential_1(v115);
        v55 = v104;
LABEL_18:
        __swift_destroy_boxed_opaque_existential_1(v55);
        return;
      }
    }

    v101 = 0;
    v64 = 0;
    goto LABEL_30;
  }
}

uint64_t sub_26BE31F8C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BE31FB0, 0, 0);
}

uint64_t sub_26BE31FB0()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BE32070;

  return (sub_26BE958B4)();
}

uint64_t sub_26BE32070()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26BE32494;
  }

  else
  {
    v2 = sub_26BE32184;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE32184()
{
  v11 = v0;
  v1 = *(v0 + 24);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_26BE328D4(*(v1 + 16), 0, &qword_28045E590, &qword_26C024670);
    v4 = sub_26BE33804(&v10, v3 + 2, v2, v1);

    sub_26BE2DA4C();
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  *(v0 + 56) = v3;
  v5 = *(**(v0 + 32) + 472);
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_26BE32358;
  v7 = *(v0 + 16);

  return (v9)(v7, v3);
}

uint64_t sub_26BE32358()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE324AC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BE324AC()
{

  v1 = *(v0 + 8);

  return v1();
}

void *MLS.RCSGroup.deinit()
{

  sub_26BE00258(v0[4], v0[5]);

  sub_26BE0489C(v0[7], v0[8]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t MLS.RCSGroup.__deallocating_deinit()
{

  sub_26BE00258(v0[4], v0[5]);

  sub_26BE0489C(v0[7], v0[8]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

void *sub_26BE32680(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_26BE3277C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E580, &qword_26C00E4E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_26BE32800(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E578, &unk_26C024610);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_26BE328D4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *sub_26BE329A8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = result;
  if (!a2)
  {
    v8 = 0;
    goto LABEL_11;
  }

  v8 = a3;
  if (!a3)
  {
LABEL_11:
    *v7 = a4;
    v7[1] = v8;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = *(a4 + 16);
    if (v9)
    {
      v12 = a2;
      v13 = 0;
      v14 = a3 - 1;
      while (v13 < *(a4 + 16))
      {
        v15 = *(a5(0) - 8);
        v16 = *(v15 + 72);
        result = sub_26BE33B40(a4 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v16 * v13, v12, a6);
        if (v14 == v13)
        {
          goto LABEL_11;
        }

        v12 += v16;
        if (v9 == ++v13)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_13;
    }

LABEL_9:
    v8 = v9;
    goto LABEL_11;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_26BE32B1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E520, &unk_26C016B80);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v45 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v45 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = &v45 - v18;
  v51 = _s9AttributeVMa(0);
  v53 = *(v51 - 8);
  v19 = MEMORY[0x28223BE20](v51);
  v52 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v45 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E530, &unk_26C022480);
  v23 = v22 - 8;
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - v24;
  sub_26BE33AD8(v4, &v45 - v24, _s25RelativeDistinguishedNameVMa);
  v49 = *(v23 + 44);
  *&v25[v49] = 0;
  if (!a2)
  {
    a3 = 0;
    goto LABEL_25;
  }

  if (!a3)
  {
LABEL_25:
    sub_26BE33F30(v25, a1, &qword_28045E530, &unk_26C022480);
    return a3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  v54 = a2;
  v26 = a3;
  a3 = 0;
  v45 = v26;
  v46 = a1;
  v47 = v26 - 1;
  v48 = (v53 + 56);
  v27 = &qword_28045E520;
  while (1)
  {
    sub_26BE2E1F0(v25, v16, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v28 = *(*v16 + 16);

      v29 = a3 == v28;
      v30 = v52;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    else
    {
      sub_26BE2E258(v16, v27, &unk_26C016B80);
      v30 = v52;
      if (a3 == 1)
      {
LABEL_22:
        v42 = v55;
        (*v48)(v55, 1, 1, v51);
        sub_26BE2E258(v42, &qword_28045E528, &qword_26C00E4B0);
LABEL_24:
        a1 = v46;
        goto LABEL_25;
      }
    }

    sub_26BE2E1F0(v25, v14, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (a3 >= *(*v14 + 16))
      {
        goto LABEL_27;
      }

      sub_26BE33B40(*v14 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * a3, v55, _s9AttributeVMa);
    }

    else
    {
      sub_26BE33AD8(v14, v30, _s9AttributeVMa);
      if (a3)
      {
        goto LABEL_29;
      }

      sub_26BE33AD8(v30, v55, _s9AttributeVMa);
    }

    sub_26BE2E1F0(v25, v11, v27, &unk_26C016B80);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = *(*v11 + 16);
    }

    else
    {
      sub_26BE2E258(v11, v27, &unk_26C016B80);
      v31 = 1;
    }

    if (a3 >= v31)
    {
      break;
    }

    v32 = v16;
    v33 = v14;
    v34 = v11;
    v35 = v8;
    v36 = v27;
    v37 = v48;
    *&v25[v49] = a3 + 1;
    v38 = v55;
    (*v37)(v55, 0, 1, v51);
    v39 = v38;
    v40 = v50;
    sub_26BE33AD8(v39, v50, _s9AttributeVMa);
    v41 = v54;
    sub_26BE33AD8(v40, v54, _s9AttributeVMa);
    if (v47 == a3)
    {
      a3 = v45;
      goto LABEL_24;
    }

    v54 = v41 + *(v53 + 72);
    ++a3;
    v27 = v36;
    v8 = v35;
    v11 = v34;
    v14 = v33;
    v16 = v32;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_26C00AC1C();

  v57 = 0x207865646E69;
  v58 = 0xE600000000000000;
  v56 = a3;
  v44 = sub_26C00AEFC();
  MEMORY[0x26D699090](v44);

  MEMORY[0x26D699090](0x20666F2074756F20, 0xEE0073646E756F62);
  result = sub_26C00AD6C();
  __break(1u);
  return result;
}

void *sub_26BE33124(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE33224(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v7))));
      v15 = *v14;
      LODWORD(v14) = *(v14 + 4);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 4) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v17 = v9 + 1;
    }

    else
    {
      v17 = (63 - v6) >> 6;
    }

    v9 = v17 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE33330(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26BE33488(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE33594(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = *(a4 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v7))));
      v15 = *v14;
      v16 = *(v14 + 8);
      v7 &= v7 - 1;
      *a2 = v15;
      *(a2 + 8) = v16;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 16;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_26BE336A0(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_26BE33804(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t dispatch thunk of MLS.RCSGroup.addMembersForUris(packages:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 728) + **(*v2 + 728));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE28F58;

  return v8(a1, a2);
}

uint64_t sub_26BE33AD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE33B40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26BE33BA8(unsigned int (**a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = _s9AttributeVMa(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E588, &qword_26C00E4E8);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v25 - v19;
  sub_26BE33AD8(v4, v17, _s9AttributeVMa);
  v28 = v9;
  v21 = *(v9 + 56);
  v21(v17, 0, 1, v8);
  v27 = v21;
  v21(v20, 1, 1, v8);
  result = sub_26BE33EC0(v17, v20);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    sub_26BE33F30(v20, a1, &qword_28045E588, &qword_26C00E4E8);
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v26 = a1;
    a1 = (v28 + 48);
    v23 = 1;
    while (1)
    {
      sub_26BE33F30(v20, v15, &qword_28045E528, &qword_26C00E4B0);
      v27(v20, 1, 1, v8);
      if ((*a1)(v15, 1, v8) == 1)
      {
        break;
      }

      sub_26BE33AD8(v15, v11, _s9AttributeVMa);
      sub_26BE33AD8(v11, a2, _s9AttributeVMa);
      if (a3 == v23)
      {
        goto LABEL_12;
      }

      a2 += *(v28 + 72);
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    sub_26BE2E258(v15, &qword_28045E528, &qword_26C00E4B0);
    a3 = v23 - 1;
LABEL_12:
    a1 = v26;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_26BE33EC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E528, &qword_26C00E4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE33F30(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void *sub_26BE33F9C(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 10) | (16 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        sub_26BE00608(v18, *(&v18 + 1));
        goto LABEL_24;
      }

      ++v11;
      sub_26BE00608(v18, *(&v18 + 1));
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

_WORD *MLS.Extension.Extension.init(type:data:)@<X0>(_WORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26BE34190(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_26BE341D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_26BE34228(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v15 = bswap32(*a1) >> 16;
  v18 = MEMORY[0x277D838B0];
  v19 = MEMORY[0x277CC9C18];
  *&v16 = &v15;
  *(&v16 + 1) = &v16;
  __swift_project_boxed_opaque_existential_1(&v16, MEMORY[0x277D838B0]);
  sub_26C00908C();
  __swift_destroy_boxed_opaque_existential_1(&v16);
  v16 = xmmword_26C00BBD0;
  v17 = 0;
  sub_26BE34834(0, v3, &v16);
  if (v1)
  {
    sub_26BE00258(v16, *(&v16 + 1));
    return;
  }

  v6 = v5;
  v7 = sub_26BF30414(v5);
  sub_26BF2A30C(&v16);
  sub_26BE00258(v16, *(&v16 + 1));
  v8 = v7 + v6;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
    goto LABEL_20;
  }

  v9 = v8 + 2;
  if (__OFADD__(v8, 2))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v10 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v4);
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_16;
  }

  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  v11 = v12 - v13;
  if (__OFSUB__(v12, v13))
  {
    __break(1u);
LABEL_13:
    if (__OFSUB__(HIDWORD(v2), v2))
    {
      goto LABEL_23;
    }

    v11 = HIDWORD(v2) - v2;
  }

LABEL_16:
  v14 = sub_26BF30414(v11);
  sub_26BE11228(v2, v4);
  if (__OFADD__(v14, v11))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (__OFADD__(v9, v14 + v11))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t sub_26BE343E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_26BEE6180();
  if ((v5 & 0x10000) != 0)
  {
    goto LABEL_8;
  }

  v41 = v5;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  sub_26BE00608(*v3, v3[1]);
  sub_26BE00608(v7, v6);
  sub_26BF30764(v3, &v42);
  if (v2)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    swift_willThrow();
LABEL_4:
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
    return swift_willThrow();
  }

  if (v43)
  {
    sub_26BE00258(*v3, v3[1]);
    *v3 = v7;
    v3[1] = v6;
    v9 = v6;
    v10 = v7;
    v3[2] = v8;
LABEL_7:
    sub_26BE00258(v10, v9);
    *v3 = v7;
    v3[1] = v6;
    v3[2] = v8;
LABEL_8:
    sub_26BE01600();
    swift_allocError();
    *v11 = 1;
    return swift_willThrow();
  }

  v37 = v8;
  v13 = v42;
  sub_26BE00258(v7, v6);
  if (v13 > 100000000)
  {
    sub_26BE01600();
    swift_allocError();
    *v14 = 5;
    swift_willThrow();
    v8 = v37;
    goto LABEL_4;
  }

  result = sub_26BF2A44C(v13);
  if (v15 >> 60 == 15)
  {
    v10 = *v3;
    v9 = v3[1];
    v8 = v37;
    goto LABEL_7;
  }

  v42 = result;
  v43 = v15;
  v44 = v16;
  v45 = MEMORY[0x277D84F90];
  v39 = v6;
  v40 = v7;
  for (i = a1; ; a1 = i)
  {
    v17 = v15 >> 62;
    if ((v15 >> 62) > 1)
    {
      if (v17 == 2)
      {
        v18 = *(result + 24);
      }

      else
      {
        v18 = 0;
      }
    }

    else if (v17)
    {
      v18 = result >> 32;
    }

    else
    {
      v18 = BYTE6(v15);
    }

    v19 = __OFSUB__(v18, v16);
    v20 = v18 - v16;
    if (v19)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      return result;
    }

    if (v20 < 1)
    {
      break;
    }

    v21 = sub_26BF2F7B0();
    v23 = v22;
    v24 = sub_26BF2F7B0();
    v26 = v25;
    v27 = sub_26BF2F7B0();
    v29 = v28;
    sub_26BE00608(v21, v23);
    sub_26BE00608(v24, v26);
    sub_26BE00608(v27, v29);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_26BEECA34(0, *(v45 + 2) + 1, 1, v45);
    }

    v31 = *(v45 + 2);
    v30 = *(v45 + 3);
    if (v31 >= v30 >> 1)
    {
      v45 = sub_26BEECA34((v30 > 1), v31 + 1, 1, v45);
    }

    sub_26BE00258(v21, v23);
    sub_26BE00258(v24, v26);
    sub_26BE00258(v27, v29);
    v32 = v45;
    *(v45 + 2) = v31 + 1;
    v33 = &v32[48 * v31];
    *(v33 + 4) = v21;
    *(v33 + 5) = v23;
    *(v33 + 6) = v24;
    *(v33 + 7) = v26;
    *(v33 + 8) = v27;
    *(v33 + 9) = v29;
    result = v42;
    v15 = v43;
    v16 = v44;
    v6 = v39;
    v7 = v40;
  }

  if (v17 > 1)
  {
    v8 = v37;
    if (v17 == 2)
    {
      v34 = *(result + 24);
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    if (v17)
    {
      v34 = result >> 32;
    }

    else
    {
      v34 = BYTE6(v15);
    }

    v8 = v37;
  }

  if (__OFSUB__(v34, v16))
  {
    goto LABEL_42;
  }

  if (v34 != v16)
  {
    sub_26BE01654();
    swift_allocError();
    *v35 = 0;
    v35[112] = 1;
    swift_willThrow();

    sub_26BE00258(v42, v43);
    goto LABEL_4;
  }

  sub_26BE00258(result, v15);
  sub_26BE00258(v7, v6);
  result = sub_26BF2F7B0();
  *a1 = v41;
  *(a1 + 8) = v45;
  *(a1 + 16) = result;
  *(a1 + 24) = v36;
  return result;
}

void sub_26BE34834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16) + 1;
  v6 = (a2 + 40);
  while (1)
  {
    v7 = v5 - 1;
    if (!v7)
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v10 = v6[2];
    v64 = v6[1];
    v11 = v6[3];
    v12 = v6[4];
    v13 = v8 >> 62;
    v52 = v6;
    if ((v8 >> 62) <= 1)
    {
      if (v13)
      {
        LODWORD(v14) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_50;
        }

        v14 = v14;
      }

      else
      {
        v14 = BYTE6(v8);
      }

      goto LABEL_12;
    }

    if (v13 == 2)
    {
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v14 = v15 - v16;
      if (v17)
      {
        goto LABEL_51;
      }

LABEL_12:
      v59 = v14;
      goto LABEL_14;
    }

    v59 = 0;
LABEL_14:
    sub_26BE00608(v9, v8);
    v58 = v10;
    sub_26BE00608(v64, v10);
    sub_26BE00608(v11, v12);
    v18 = sub_26BF30414(v59);
    v54 = v8;
    v55 = v9;
    if (v3)
    {
      goto LABEL_43;
    }

    v19 = v18;
    v56 = v11;
    v20 = v12;
    v51 = v7;
    v62 = MEMORY[0x277CC9318];
    v63 = MEMORY[0x277CC9300];
    v60 = v9;
    v61 = v8;
    v21 = __swift_project_boxed_opaque_existential_1(&v60, MEMORY[0x277CC9318]);
    v22 = *v21;
    v23 = v21[1];
    sub_26BE00608(v9, v8);
    sub_26BE121A0(v22, v23, a3);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    v24 = v19 + v59;
    if (__OFADD__(v19, v59))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
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
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      return;
    }

    v25 = v58 >> 62;
    v53 = a1;
    if ((v58 >> 62) > 1)
    {
      v26 = v20;
      v27 = v64;
      if (v25 == 2)
      {
        v30 = *(v64 + 16);
        v29 = *(v64 + 24);
        v28 = v29 - v30;
        if (__OFSUB__(v29, v30))
        {
          goto LABEL_53;
        }
      }

      else
      {
        v28 = 0;
      }
    }

    else
    {
      v26 = v20;
      v27 = v64;
      if (v25)
      {
        if (__OFSUB__(HIDWORD(v64), v64))
        {
          goto LABEL_52;
        }

        v28 = HIDWORD(v64) - v64;
      }

      else
      {
        v28 = BYTE6(v58);
      }
    }

    sub_26BE00608(v27, v58);
    sub_26BE00608(v56, v26);
    v31 = sub_26BF30414(v28);
    v62 = MEMORY[0x277CC9318];
    v63 = MEMORY[0x277CC9300];
    v60 = v27;
    v61 = v58;
    v32 = __swift_project_boxed_opaque_existential_1(&v60, MEMORY[0x277CC9318]);
    v33 = *v32;
    v34 = v32[1];
    sub_26BE00608(v27, v58);
    sub_26BE121A0(v33, v34, a3);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    v35 = v31 + v28;
    if (__OFADD__(v31, v28))
    {
      goto LABEL_46;
    }

    v12 = v20;
    v36 = v20 >> 62;
    if ((v20 >> 62) > 1)
    {
      v11 = v56;
      if (v36 == 2)
      {
        v39 = *(v56 + 16);
        v38 = *(v56 + 24);
        v37 = v38 - v39;
        if (__OFSUB__(v38, v39))
        {
          goto LABEL_55;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v11 = v56;
      if (v36)
      {
        if (__OFSUB__(HIDWORD(v56), v56))
        {
          goto LABEL_54;
        }

        v37 = HIDWORD(v56) - v56;
      }

      else
      {
        v37 = BYTE6(v12);
      }
    }

    v40 = sub_26BF30414(v37);
    v64 = v37;
    v41 = v24;
    v42 = v35;
    v62 = MEMORY[0x277CC9318];
    v63 = MEMORY[0x277CC9300];
    v60 = v11;
    v61 = v12;
    v43 = __swift_project_boxed_opaque_existential_1(&v60, MEMORY[0x277CC9318]);
    v44 = v27;
    v46 = *v43;
    v45 = v43[1];
    sub_26BE00608(v11, v12);
    sub_26BE121A0(v46, v45, a3);
    __swift_destroy_boxed_opaque_existential_1(&v60);
    sub_26BE00258(v44, v58);
    sub_26BE00258(v11, v12);
    sub_26BE00258(v55, v54);
    sub_26BE00258(v44, v58);
    sub_26BE00258(v11, v12);
    v47 = v40 + v64;
    if (__OFADD__(v40, v64))
    {
      goto LABEL_47;
    }

    v17 = __OFADD__(v42, v47);
    v48 = v42 + v47;
    if (v17)
    {
      goto LABEL_48;
    }

    v17 = __OFADD__(v41, v48);
    v49 = v41 + v48;
    if (v17)
    {
      goto LABEL_49;
    }

    v6 = v52 + 6;
    a1 = v53 + v49;
    v5 = v51;
    if (__OFADD__(v53, v49))
    {
      __break(1u);
LABEL_43:
      v50 = v64;
      sub_26BE00258(v55, v54);
      sub_26BE00258(v50, v58);
      sub_26BE00258(v11, v12);
      return;
    }
  }
}

unint64_t sub_26BE34C94(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
    goto LABEL_6;
  }

  sub_26BE00608(*(a1 + 8), v2);
LABEL_6:
  v7 = v1;
  v4 = sub_26BEE6028();
  sub_26BE00258(v7, v2);
  if ((v4 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  return v4;
}

uint64_t static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v38 = a3;
  v36 = a2;
  v32 = a1;
  v37 = sub_26C009F3C();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_26C009EDC();
  v7 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C009EEC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_26C009EAC();
  v14 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = v10;
  v18 = v36;
  (*(v11 + 104))(v13, *MEMORY[0x277CC5450], v17);
  (*(v7 + 104))(v9, *MEMORY[0x277CC5438], v34);
  (*(v35 + 104))(v6, *MEMORY[0x277CC5460], v37);
  sub_26C009E7C();
  type metadata accessor for MLS.Cryptography.Ciphersuite.SuitePrimitives(0);
  v19 = swift_allocObject();
  (*(v14 + 32))(v19 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hpke, v16, v33);
  *(v19 + OBJC_IVAR____TtCVOO8SwiftMLS3MLS12Cryptography11Ciphersuite15SuitePrimitives_hash) = 0;
  static MLS.Storage.StorageOptions.testInMemoryOptions.getter(v42);
  v40 = &type metadata for SwiftMLSFeatureFlags;
  v41 = sub_26BE295D8();
  LOBYTE(v39[0]) = 1;
  LOBYTE(v14) = sub_26C00929C();
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v14 & 1) != 0 || v18 != 2 && (v18)
  {
    v20 = type metadata accessor for MLS.Identity.X509RCSIdentityProvider();
    v21 = swift_allocObject();
    *(v21 + 24) = 2;
    *(v21 + 16) = v32;
    swift_beginAccess();
    *(v21 + 24) = v18;
    v22 = &protocol witness table for MLS.Identity.X509RCSIdentityProvider;
    v40 = v20;
    v41 = &protocol witness table for MLS.Identity.X509RCSIdentityProvider;
    v39[0] = v21;
  }

  else
  {
    v20 = type metadata accessor for MLS.Identity.PermissiveRCSIdentityProvider();
    v23 = swift_allocObject();
    v22 = &protocol witness table for MLS.Identity.PermissiveRCSIdentityProvider;
    v40 = v20;
    v41 = &protocol witness table for MLS.Identity.PermissiveRCSIdentityProvider;
    v39[0] = v23;
  }

  sub_26BE14FF4(v42, a4 + 72);
  v24 = __swift_project_boxed_opaque_existential_1(v39, v20);
  v25 = v22[1];
  *(a4 + 224) = v20;
  *(a4 + 232) = v25;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a4 + 200));
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v24, v20);
  *(a4 + 280) = 0x8AC7230489E80000;
  *(a4 + 288) = 0;
  v27 = MEMORY[0x277D84F90];
  *(a4 + 296) = MEMORY[0x277D84F90];
  *(a4 + 304) = v27;
  *(a4 + 312) = v27;
  *(a4 + 320) = v27;
  *(a4 + 328) = &unk_287CBA400;
  *(a4 + 336) = xmmword_26C00DA40;
  *(a4 + 353) = 514;
  *a4 = 257;
  *(a4 + 8) = 256;
  *(a4 + 10) = 1;
  *(a4 + 16) = xmmword_26C00DA40;
  *(a4 + 32) = 1;
  *(a4 + 40) = xmmword_26C00CDC0;
  *(a4 + 56) = 16;
  *(a4 + 64) = v19;
  *(a4 + 240) = 0xD00000000000001ALL;
  *(a4 + 248) = 0x800000026C02AD20;
  *(a4 + 256) = 0;
  *(a4 + 264) = 0;
  *(a4 + 352) = v18;
  v28 = v38;
  v29 = v38;
  *(a4 + 272) = 1;
  if (v29 == 2 || (v28 & 1) == 0)
  {
    v30 = &unk_287CBA450;
  }

  else
  {
    v30 = &unk_287CBA428;
  }

  sub_26BE29538(v42);
  __swift_destroy_boxed_opaque_existential_1(v39);

  *(a4 + 296) = &unk_287CBA478;
  *(a4 + 304) = &unk_287CBA4A0;
  *(a4 + 312) = &unk_287CBA4C8;
  *(a4 + 320) = &unk_287CBA4F8;
  *(a4 + 328) = v30;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.certificateSigningRequest.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.RCSClient.CredentialSigningRequest.certificateSigningRequest.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.participantInfo.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void MLS.RCSClient.CredentialSigningRequest.participantInfo.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.telURI.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.telURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t MLS.RCSClient.CredentialSigningRequest.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

unint64_t sub_26BE35538()
{
  v1 = 0x7069636974726170;
  v2 = 0x4952556C6574;
  if (*v0 != 2)
  {
    v2 = 1701667182;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000019;
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

uint64_t sub_26BE355B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26BE3BEC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26BE355F8(uint64_t a1)
{
  v2 = sub_26BE3AF70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26BE35634(uint64_t a1)
{
  v2 = sub_26BE3AF70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.RCSClient.CredentialSigningRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E628, &qword_26C00E670);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v15 = v1[3];
  v16 = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE00608(v7, v8);
  sub_26BE3AF70();
  sub_26C00B10C();
  v18 = v7;
  v19 = v8;
  v20 = 0;
  sub_26BE3AFC4();
  v12 = v17;
  sub_26C00AEBC();
  sub_26BE00258(v18, v19);
  if (!v12)
  {
    v18 = v16;
    v19 = v15;
    v20 = 1;
    sub_26BE00608(v16, v15);
    sub_26C00AEBC();
    sub_26BE00258(v18, v19);
    LOBYTE(v18) = 2;
    sub_26C00AE9C();
    LOBYTE(v18) = 3;
    sub_26C00AE9C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.RCSClient.CredentialSigningRequest.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E640, qword_26C00E678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26BE3AF70();
  sub_26C00B0FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = a2;
  LOBYTE(v26[0]) = 0;
  sub_26BE3B018();
  sub_26C00AE3C();
  v25 = *(&v29[0] + 1);
  v10 = *&v29[0];
  LOBYTE(v26[0]) = 1;
  sub_26C00AE3C();
  v24 = v29[0];
  LOBYTE(v29[0]) = 2;
  *&v23 = sub_26C00AE1C();
  *(&v23 + 1) = v11;
  v34 = 3;
  v12 = sub_26C00AE1C();
  v13 = v8;
  v15 = v14;
  (*(v6 + 8))(v13, v5);
  v16 = v10;
  *&v26[0] = v10;
  v17 = v25;
  v19 = *(&v23 + 1);
  v18 = v24;
  *(&v26[0] + 1) = v25;
  v26[1] = v24;
  v27 = v23;
  *&v28 = v12;
  *(&v28 + 1) = v15;
  v20 = v24;
  *v9 = v26[0];
  v9[1] = v20;
  v21 = v28;
  v9[2] = v27;
  v9[3] = v21;
  sub_26BE3B06C(v26, v29);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v29[0] = v16;
  *(&v29[0] + 1) = v17;
  v29[1] = __PAIR128__(*(&v24 + 1), v18);
  v30 = v23;
  v31 = v19;
  v32 = v12;
  v33 = v15;
  return sub_26BE3B0A4(v29);
}

uint64_t sub_26BE35C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE35C30, 0, 0);
}

uint64_t sub_26BE35C30()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C268;
  v2 = *(v0 + 16);

  return (sub_26BE9A008)(v2);
}

uint64_t sub_26BE35CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[121] = a4;
  v4[120] = a3;
  v4[119] = a2;
  v4[118] = a1;
  v4[122] = _s25CertificateSigningRequestVMa(0);
  v4[123] = swift_task_alloc();
  v5 = sub_26C00978C();
  v4[124] = v5;
  v4[125] = *(v5 - 8);
  v4[126] = swift_task_alloc();
  v4[127] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E680, &unk_26C00ECF8);
  v4[128] = swift_task_alloc();
  v6 = _s21RCSTBSParticipantInfoVMa(0);
  v4[129] = v6;
  v4[130] = *(v6 - 8);
  v4[131] = swift_task_alloc();
  v4[132] = _s18RCSParticipantInfoVMa(0);
  v4[133] = swift_task_alloc();
  v7 = sub_26C00928C();
  v4[134] = v7;
  v4[135] = *(v7 - 8);
  v4[136] = swift_task_alloc();
  v4[137] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE35F2C, 0, 0);
}

uint64_t sub_26BE35F2C()
{
  v103 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v1 = sub_26C009A5C();
  __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1096);
    v5 = *(v0 + 1080);
    v99 = *(v0 + 1072);
    v6 = *(v0 + 968);
    v7 = *(v0 + 960);
    v8 = *(v0 + 952);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v102[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_26BE29740(v8, v7, v102);
    *(v9 + 12) = 2080;
    v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v5 + 16))(v4, v6 + v11, v99);
    v12 = sub_26C00922C();
    v14 = v13;
    (*(v5 + 8))(v4, v99);
    v15 = sub_26BE29740(v12, v14, v102);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_26BDFE000, v2, v3, "getting credential signing request for %s for client %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  v16 = *(v0 + 968);
  v17 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v16 + v17, v0 + 416, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 440))
  {
    sub_26BE03890((v0 + 416), v0 + 376);
  }

  else
  {
    v18 = *(v0 + 968);
    v19 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
    swift_beginAccess();
    sub_26BE038A8(v18 + v19, v0 + 376);
    if (*(v0 + 440))
    {
      sub_26BE2E258(v0 + 416, &qword_28045E468, &qword_26C00ECA0);
    }
  }

  v20 = *(v0 + 968);
  swift_beginAccess();
  sub_26BE295A0(v20 + 40, v0 + 16);
  v21 = *(v0 + 369);
  if (v21 == 2)
  {
    *(v0 + 480) = &type metadata for SwiftMLSFeatureFlags;
    *(v0 + 488) = sub_26BE295D8();
    *(v0 + 456) = 2;
    v22 = sub_26C00929C();
    sub_26BE29710(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 456));
    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_26BE29710(v0 + 16);
    if ((v21 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v23 = sub_26C009A3C();
  v24 = sub_26C00AA1C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26BDFE000, v23, v24, "using participant key", v25, 2u);
    MEMORY[0x26D69A4E0](v25, -1, -1);
  }

  v26 = *(v0 + 960);
  v27 = *(v0 + 952);

  sub_26BF7F748(v27, v26, v0 + 656);
  sub_26BE2E1F0(v0 + 656, v0 + 736, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 760))
  {
    sub_26BE03890((v0 + 736), v0 + 696);
    v28 = sub_26C009A3C();
    v29 = sub_26C00AA1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26BDFE000, v28, v29, "Using retrieved or generated participant private key", v30, 2u);
      MEMORY[0x26D69A4E0](v30, -1, -1);
    }

    sub_26BE2E258(v0 + 656, &qword_28045E468, &qword_26C00ECA0);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    sub_26BE03890((v0 + 696), v0 + 376);
  }

  else
  {
    sub_26BE2E258(v0 + 656, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE2E258(v0 + 736, &qword_28045E468, &qword_26C00ECA0);
  }

LABEL_20:
  v93 = *(v0 + 1088);
  v31 = *(v0 + 1080);
  v89 = *(v0 + 1072);
  v32 = *(v0 + 968);
  v96 = *(v0 + 960);
  v98 = *(v0 + 1064);
  v100 = *(v0 + 952);
  sub_26BE038A8(v0 + 376, v0 + 496);
  swift_beginAccess();
  sub_26BE3C038(v0 + 496, v16 + v17);
  swift_endAccess();
  v85 = *(v0 + 400);
  v94 = *(v0 + 408);
  v91 = __swift_project_boxed_opaque_existential_1((v0 + 376), v85);
  v33 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  v80 = v33;
  sub_26BE038A8(v32 + v33, v0 + 576);
  v34 = *(v0 + 600);
  v35 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1((v0 + 576), v34);
  v36 = *(v35 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v0 + 560) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v0 + 568) = AssociatedConformanceWitness;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 536));
  v36(v34, v35);
  __swift_destroy_boxed_opaque_existential_1((v0 + 576));
  v39 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
  swift_beginAccess();
  v82 = v32;
  v78 = *(v31 + 16);
  v79 = v39;
  v40 = v89;
  v78(v93, v32 + v39, v89);
  v41 = sub_26C00922C();
  v83 = v42;
  v90 = *(v31 + 8);
  v90(v93, v40);
  v43 = *(v85 - 8);
  v44 = swift_task_alloc();
  (*(v43 + 16))(v44, v91, v85);
  v45 = *(AssociatedTypeWitness - 8);
  v46 = swift_task_alloc();
  (*(v45 + 16))(v46, boxed_opaque_existential_1, AssociatedTypeWitness);

  sub_26BECCB00(v41, v83, v44, v46, v100, v96, v85, AssociatedTypeWitness, v98, v94, AssociatedConformanceWitness);
  v47 = *(v0 + 1064);
  v48 = *(v0 + 1056);
  v49 = *(v0 + 1040);
  v50 = *(v0 + 1032);
  v51 = *(v0 + 1024);

  __swift_destroy_boxed_opaque_existential_1((v0 + 536));
  sub_26BE2E1F0(v47 + *(v48 + 40), v51, &qword_28045E680, &unk_26C00ECF8);
  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    sub_26BE2E258(*(v0 + 1024), &qword_28045E680, &unk_26C00ECF8);
    v52 = sub_26C009A3C();
    v53 = sub_26C00AA0C();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_26BDFE000, v52, v53, "no tbs participant info", v54, 2u);
      MEMORY[0x26D69A4E0](v54, -1, -1);
    }

    v55 = *(v0 + 1064);

    sub_26BE01654();
    swift_allocError();
    *v56 = 0;
    v56[112] = 9;
    swift_willThrow();
    sub_26BE3C204(v55, _s18RCSParticipantInfoVMa);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));

    v59 = *(v0 + 8);
  }

  else
  {
    sub_26BE3C158(*(v0 + 1024), *(v0 + 1048));
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E688, _s18RCSParticipantInfoVMa, &unk_26C016AB4);
    sub_26C00976C();
    v57 = *(v0 + 984);
    v58 = **(v0 + 1048);
    sub_26BE038A8(v82 + v80, v0 + 616);

    sub_26BEC91F8(0, v58, (v0 + 616), MEMORY[0x277D84F90], v57);
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E690, _s25CertificateSigningRequestVMa, &unk_26C022DDC);
    sub_26C00976C();
    v61 = *(v0 + 1096);
    v62 = *(v0 + 1072);
    v95 = *(v0 + 1064);
    v92 = *(v0 + 1048);
    v63 = *(v0 + 1016);
    v64 = *(v0 + 1008);
    v65 = *(v0 + 1000);
    v76 = *(v0 + 992);
    v77 = *(v0 + 984);
    v66 = *(v0 + 960);
    v97 = *(v0 + 952);
    v67 = *(v0 + 944);
    v68 = sub_26C00971C();
    v69 = sub_26BE12418(v68);
    v86 = v70;
    v88 = v69;

    v71 = sub_26C00971C();
    v84 = sub_26BE12418(v71);
    v81 = v72;

    v78(v61, v82 + v79, v62);

    v73 = sub_26C00922C();
    v101 = v74;
    v90(v61, v62);
    v75 = *(v65 + 8);
    v75(v64, v76);
    sub_26BE3C204(v77, _s25CertificateSigningRequestVMa);
    v75(v63, v76);
    sub_26BE3C204(v92, _s21RCSTBSParticipantInfoVMa);
    sub_26BE3C204(v95, _s18RCSParticipantInfoVMa);
    __swift_destroy_boxed_opaque_existential_1((v0 + 376));
    *v67 = v88;
    v67[1] = v86;
    v67[2] = v84;
    v67[3] = v81;
    v67[4] = v97;
    v67[5] = v66;
    v67[6] = v73;
    v67[7] = v101;

    v59 = *(v0 + 8);
  }

  return v59();
}

uint64_t sub_26BE36CB8(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BE36CE4, 0, 0);
}

uint64_t sub_26BE36CE4()
{
  v1 = v0[5];
  v2 = v0[6];

  sub_26BE04890(v1, v2);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_26BE36DBC;
  v4 = v0[5];
  v5 = v0[6];
  v7 = v0[3];
  v6 = v0[4];
  v8 = v0[2];

  return sub_26BE9AA84(sub_26BE9AA84, v6, v8, v7, v6, v4, v5);
}

uint64_t sub_26BE36DBC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26BE36ED0;
  }

  else
  {
    v2 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE36EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[120] = a6;
  v6[119] = a5;
  v6[118] = a4;
  v6[117] = a3;
  v6[116] = a2;
  v6[121] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v6[122] = swift_task_alloc();
  v6[123] = swift_task_alloc();
  v7 = sub_26C00928C();
  v6[124] = v7;
  v6[125] = *(v7 - 8);
  v6[126] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE37000, 0, 0);
}

uint64_t sub_26BE37000()
{
  v59 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v57 = (v0 + 768);
  v1 = sub_26C009A5C();
  *(v0 + 1016) = __swift_project_value_buffer(v1, qword_280478E70);

  v2 = sub_26C009A3C();
  v3 = sub_26C00AA1C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1008);
    v5 = *(v0 + 1000);
    v56 = *(v0 + 992);
    v6 = *(v0 + 944);
    v7 = *(v0 + 936);
    v8 = *(v0 + 928);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v58[0] = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_26BE29740(v8, v7, v58);
    *(v9 + 12) = 2080;
    v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v5 + 16))(v4, v6 + v11, v56);
    v12 = sub_26C00922C();
    v14 = v13;
    (*(v5 + 8))(v4, v56);
    v15 = sub_26BE29740(v12, v14, v58);

    *(v9 + 14) = v15;
    _os_log_impl(&dword_26BDFE000, v2, v3, "loading credential for %s for client %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  v16 = *(v0 + 960);
  v17 = *(v0 + 952);
  v18 = *(v0 + 944);
  v19 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v18 + v19, v0 + 648);
  v20 = *(v0 + 672);
  v21 = *(v0 + 680);
  __swift_project_boxed_opaque_existential_1((v0 + 648), v20);
  v22 = *(v21 + 40);
  *(v0 + 536) = swift_getAssociatedTypeWitness();
  *(v0 + 544) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((v0 + 512));
  v22(v20, v21);
  __swift_destroy_boxed_opaque_existential_1((v0 + 648));
  *(v0 + 496) = v17;
  *(v0 + 504) = v16;
  swift_beginAccess();
  sub_26BE038A8(v18 + 240, v0 + 728);
  sub_26BE04890(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E550, &qword_26C00E4C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E558, &unk_26C00ECC0);
  if (swift_dynamicCast())
  {
    sub_26BE03890(v57, v0 + 688);
    v23 = *(v0 + 712);
    v24 = *(v0 + 720);
    __swift_project_boxed_opaque_existential_1((v0 + 688), v23);
    if (qword_28045DF48 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 976);
    v26 = __swift_project_value_buffer(*(v0 + 968), qword_28045E4F0);
    swift_beginAccess();
    sub_26BE2E1F0(v26, v25, &qword_28045E4A8, &unk_26C00ECB0);
    v27 = sub_26C00921C();
    v28 = *(v27 - 8);
    v29 = *(v28 + 48);
    v30 = v29(v25, 1, v27);
    v31 = *(v0 + 976);
    if (v30 == 1)
    {
      sub_26C00920C();
      if (v29(v31, 1, v27) != 1)
      {
        sub_26BE2E258(*(v0 + 976), &qword_28045E4A8, &unk_26C00ECB0);
      }
    }

    else
    {
      (*(v28 + 32))(*(v0 + 984), *(v0 + 976), v27);
    }

    v39 = *(v0 + 984);
    v40 = *(v0 + 936);
    v41 = *(v0 + 928);
    (*(v28 + 56))(v39, 0, 1, v27);
    v42 = (*(v24 + 16))(v0 + 496, v39, 1, 0, v41, v40, v23, v24);
    sub_26BE2E258(*(v0 + 984), &qword_28045E4A8, &unk_26C00ECB0);
    if (v42)
    {
      sub_26BE18EF4((v0 + 496));
      v55 = swift_task_alloc();
      *(v0 + 1024) = v55;
      *v55 = v0;
      v55[1] = sub_26BE37AB8;

      return sub_26BE18958();
    }

    v43 = sub_26C009A3C();
    v44 = sub_26C00AA1C();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_26BDFE000, v43, v44, "RCS identity provider determined identity was invalid", v45, 2u);
      MEMORY[0x26D69A4E0](v45, -1, -1);
    }

    *(v0 + 256) = 18;
    *(v0 + 264) = 0u;
    *(v0 + 280) = 0u;
    *(v0 + 296) = 0u;
    *(v0 + 312) = 0u;
    *(v0 + 328) = 0u;
    *(v0 + 344) = 0u;
    *(v0 + 360) = 0;
    *(v0 + 368) = 23;
    v46 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 256, v0 + 376);
    v47 = swift_allocObject();
    v48 = *(v0 + 456);
    *(v47 + 88) = *(v0 + 440);
    *(v47 + 104) = v48;
    *(v47 + 120) = *(v0 + 472);
    v49 = *(v0 + 392);
    *(v47 + 24) = *(v0 + 376);
    *(v47 + 40) = v49;
    v50 = *(v0 + 424);
    *(v47 + 56) = *(v0 + 408);
    *(v47 + 16) = 1;
    *(v47 + 136) = *(v0 + 488);
    *(v47 + 72) = v50;
    *(v0 + 632) = sub_26BE2E3DC;
    *(v0 + 640) = v47;
    *(v0 + 600) = MEMORY[0x277D85DD0];
    *(v0 + 608) = 1107296256;
    *(v0 + 616) = sub_26BEB8234;
    *(v0 + 624) = &block_descriptor_93;
    v51 = _Block_copy((v0 + 600));

    AnalyticsSendEventLazy();
    _Block_release(v51);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 256);
    sub_26BE01654();
    swift_allocError();
    *v52 = 18;
    *(v52 + 8) = 0u;
    *(v52 + 24) = 0u;
    *(v52 + 40) = 0u;
    *(v52 + 56) = 0u;
    *(v52 + 72) = 0u;
    *(v52 + 88) = 0u;
    *(v52 + 104) = 0;
    *(v52 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 496);
    __swift_destroy_boxed_opaque_existential_1((v0 + 688));
  }

  else
  {
    *(v0 + 800) = 0;
    *v57 = 0u;
    *(v0 + 784) = 0u;
    sub_26BE2E258(v57, &qword_28045E560, &qword_26C00E4D0);
    v32 = sub_26C009A3C();
    v33 = sub_26C00AA1C();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_26BDFE000, v32, v33, "failed to use RCS identity provider", v34, 2u);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    *(v0 + 16) = 19;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 104) = 0u;
    *(v0 + 120) = 0;
    *(v0 + 128) = 23;
    v35 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 16, v0 + 136);
    v36 = swift_allocObject();
    *(v36 + 16) = 1;
    *(v36 + 88) = *(v0 + 200);
    *(v36 + 104) = *(v0 + 216);
    *(v36 + 120) = *(v0 + 232);
    *(v36 + 136) = *(v0 + 248);
    *(v36 + 24) = *(v0 + 136);
    *(v36 + 40) = *(v0 + 152);
    *(v36 + 56) = *(v0 + 168);
    *(v36 + 72) = *(v0 + 184);
    *(v0 + 584) = sub_26BE2DC78;
    *(v0 + 592) = v36;
    *(v0 + 552) = MEMORY[0x277D85DD0];
    *(v0 + 560) = 1107296256;
    *(v0 + 568) = sub_26BEB8234;
    *(v0 + 576) = &block_descriptor_0;
    v37 = _Block_copy((v0 + 552));

    AnalyticsSendEventLazy();
    _Block_release(v37);

    sub_26BE7C9B8(1u, 0);
    sub_26BE2DC9C(v0 + 16);
    sub_26BE01654();
    swift_allocError();
    *v38 = 19;
    *(v38 + 8) = 0u;
    *(v38 + 24) = 0u;
    *(v38 + 40) = 0u;
    *(v38 + 56) = 0u;
    *(v38 + 72) = 0u;
    *(v38 + 88) = 0u;
    *(v38 + 104) = 0;
    *(v38 + 112) = 23;
    swift_willThrow();
    sub_26BE2DBC4(v0 + 496);
  }

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26BE37AB8()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_26BE37E18;
  }

  else
  {
    v2 = sub_26BE37BCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE37BCC()
{
  v19 = v0;

  v1 = sub_26C009A3C();
  v2 = sub_26C00AA1C();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[126];
    v4 = v0[125];
    v17 = v0[124];
    v5 = v0[118];
    v6 = v0[117];
    v7 = v0[116];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_26BE29740(v7, v6, &v18);
    *(v8 + 12) = 2080;
    v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID;
    swift_beginAccess();
    (*(v4 + 16))(v3, v5 + v10, v17);
    v11 = sub_26C00922C();
    v13 = v12;
    (*(v4 + 8))(v3, v17);
    v14 = sub_26BE29740(v11, v13, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_26BDFE000, v1, v2, "successfully loaded credential for %s for client %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  sub_26BE2DBC4((v0 + 62));
  __swift_destroy_boxed_opaque_existential_1(v0 + 86);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BE37E18()
{
  sub_26BE2DBC4(v0 + 496);
  __swift_destroy_boxed_opaque_existential_1((v0 + 688));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.RCSClient.SignNonceInput.nonce.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.RCSClient.SignNonceInput.nonce.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.RCSClient.SignNonceInput.telURI.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MLS.RCSClient.SignNonceInput.telURI.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MLS.RCSClient.SignNonceInput.init(nonce:telURI:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t MLS.RCSClient.SignNonceOutput.signature.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.RCSClient.SignNonceOutput.signature.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.RCSClient.SignNonceOutput.init(signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void sub_26BE38060(uint64_t a1, unint64_t a2)
{
  v4 = v3;
  v5 = v2;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v8 = sub_26C009A5C();
  v9 = __swift_project_value_buffer(v8, qword_280478E70);

  v10 = sub_26C009A3C();
  v11 = sub_26C00A9FC();

  if (os_log_type_enabled(v10, v11))
  {
    v69 = v9;
    v12 = a1;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v67[0] = v14;
    *v13 = 136315394;

    v15 = sub_26BE16A38();
    v17 = v16;

    v18 = sub_26BE29740(v15, v17, v67);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_26BE29740(v12, a2, v67);
    _os_log_impl(&dword_26BDFE000, v10, v11, "%s: loadParticipantPrivateKey for %s", v13, 0x16u);
    swift_arrayDestroy();
    v19 = v14;
    v4 = v3;
    MEMORY[0x26D69A4E0](v19, -1, -1);
    v20 = v13;
    a1 = v12;
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  swift_beginAccess();
  sub_26BE295A0(v5 + 40, v67);
  v21 = v68;
  if (v68 == 2)
  {
    v65 = &type metadata for SwiftMLSFeatureFlags;
    v66 = sub_26BE295D8();
    LOBYTE(v64) = 2;
    v22 = sub_26C00929C();
    sub_26BE29710(v67);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    if ((v22 & 1) == 0)
    {
LABEL_7:

      v23 = sub_26C009A3C();
      v24 = sub_26C00AA0C();

      if (!os_log_type_enabled(v23, v24))
      {
LABEL_10:

        sub_26BE01654();
        swift_allocError();
        v33 = 12;
LABEL_11:
        *v32 = v33;
        v32[112] = 9;
        swift_willThrow();
        return;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v67[0] = v26;
      *v25 = 136315138;

      v27 = sub_26BE16A38();
      v29 = v28;

      v30 = sub_26BE29740(v27, v29, v67);

      *(v25 + 4) = v30;
      v31 = "%s: called loadParticipantPrivateKey without participantKey enabled in configuration";
LABEL_9:
      _os_log_impl(&dword_26BDFE000, v23, v24, v31, v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26D69A4E0](v26, -1, -1);
      MEMORY[0x26D69A4E0](v25, -1, -1);
      goto LABEL_10;
    }
  }

  else
  {
    sub_26BE29710(v67);
    if ((v21 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v34 = a2;
  swift_beginAccess();
  v35 = *(v5 + 32);
  if ((~v35 & 0x3000000000000000) != 0)
  {
    *&v67[0] = *(v5 + 24);
    *(&v67[0] + 1) = v35;
    MLS.Identity.Credential.telURI.getter();
    if (v36)
    {
      if (v36[2])
      {
        v37 = v4;
        v39 = v36[4];
        v38 = v36[5];

        if (v39 == a1 && v38 == v34)
        {

          v4 = v37;
        }

        else
        {
          v40 = sub_26C00AF2C();

          v4 = v37;
          if ((v40 & 1) == 0)
          {

            v56 = sub_26C009A3C();
            v57 = sub_26C00AA0C();

            if (os_log_type_enabled(v56, v57))
            {
              v58 = swift_slowAlloc();
              v59 = swift_slowAlloc();
              *&v67[0] = v59;
              *v58 = 136315138;

              v60 = sub_26BE16A38();
              v62 = v61;

              v63 = sub_26BE29740(v60, v62, v67);

              *(v58 + 4) = v63;
              _os_log_impl(&dword_26BDFE000, v56, v57, "%s: called loadParticipantPrivateKey without a telURI in the loaded credential", v58, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v59);
              MEMORY[0x26D69A4E0](v59, -1, -1);
              MEMORY[0x26D69A4E0](v58, -1, -1);
            }

            sub_26BE01654();
            swift_allocError();
            v33 = 7;
            goto LABEL_11;
          }
        }
      }

      else
      {
      }
    }
  }

  v41 = v34;
  sub_26BF7F748(a1, v34, &v64);
  if (!v4)
  {
    if (!v65)
    {
      sub_26BE2E258(&v64, &qword_28045E468, &qword_26C00ECA0);

      v23 = sub_26C009A3C();
      v24 = sub_26C00AA0C();

      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_10;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v67[0] = v26;
      *v25 = 136315138;

      v52 = sub_26BE16A38();
      v54 = v53;

      v55 = sub_26BE29740(v52, v54, v67);

      *(v25 + 4) = v55;
      v31 = "%s: called loadParticipantPrivateKey but failed to retrieve or generate participant private key";
      goto LABEL_9;
    }

    sub_26BE03890(&v64, v67);

    v42 = sub_26C009A3C();
    v43 = sub_26C00A9FC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v69 = a1;
      v46 = v45;
      *&v64 = v45;
      *v44 = 136315394;

      v47 = sub_26BE16A38();
      v49 = v48;

      v50 = sub_26BE29740(v47, v49, &v64);

      *(v44 + 4) = v50;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_26BE29740(v69, v41, &v64);
      _os_log_impl(&dword_26BDFE000, v42, v43, "%s: loadParticipantPrivateKey completed for %s", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v46, -1, -1);
      MEMORY[0x26D69A4E0](v44, -1, -1);
    }

    sub_26BE03890(v67, &v64);
    v51 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
    swift_beginAccess();
    sub_26BE3C038(&v64, v5 + v51);
    swift_endAccess();
  }
}

uint64_t sub_26BE38838(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *v2;
  *(v3 + 40) = *a2;
  v4 = *(a2 + 24);
  *(v3 + 56) = *(a2 + 16);
  *(v3 + 64) = v4;
  return MEMORY[0x2822009F8](sub_26BE38890, 0, 0);
}

uint64_t sub_26BE38890()
{
  v2 = v0[5];
  v1 = v0[6];

  sub_26BE00608(v2, v1);

  v3 = swift_task_alloc();
  v0[9] = v3;
  *v3 = v0;
  v3[1] = sub_26BE3897C;
  v4 = v0[2];

  return (sub_26BE9B52C)(v4);
}

uint64_t sub_26BE3897C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE38A70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[17] = a3;
  v6[18] = a4;
  v6[15] = a1;
  v6[16] = a2;
  v7 = sub_26C00A4EC();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE38B38, 0, 0);
}

uint64_t sub_26BE38B38()
{
  v67 = v0;
  if (qword_28045DF40 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478E70);

  sub_26BE00608(v2, v1);

  v4 = sub_26C009A3C();
  v5 = sub_26C00A9FC();

  sub_26BE00258(v2, v1);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 152);
    v63 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v65 = v8;
    *v7 = 136315394;

    v9 = sub_26BE16A38();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, &v65);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_26BE29740(v6, v63, &v65);
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: signNonceWithParticipantKey for %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  sub_26BE38060(*(v0 + 152), *(v0 + 160));
  v13 = *(v0 + 128);
  v14 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v13 + v14, v0 + 56, &qword_28045E468, &qword_26C00ECA0);
  if (!*(v0 + 80))
  {
    sub_26BE2E258(v0 + 56, &qword_28045E468, &qword_26C00ECA0);

    v24 = sub_26C009A3C();
    v25 = sub_26C00AA0C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v65 = v27;
      *v26 = 136315138;

      v28 = sub_26BE16A38();
      v30 = v29;

      v31 = sub_26BE29740(v28, v30, &v65);

      *(v26 + 4) = v31;
      _os_log_impl(&dword_26BDFE000, v24, v25, "%s: called signNonceWithParticipantKey but failed to retrieve or generate participant private key", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x26D69A4E0](v27, -1, -1);
      MEMORY[0x26D69A4E0](v26, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v32 = 12;
    v32[112] = 9;
    swift_willThrow();

    v33 = *(v0 + 8);
    goto LABEL_11;
  }

  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  sub_26BE03890((v0 + 56), v0 + 16);
  sub_26C00A4CC();
  v18 = sub_26C00A49C();
  v20 = v19;
  result = (*(v16 + 8))(v15, v17);
  if (v20 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v65 = xmmword_26C00BBD0;
  v66 = 0;
  sub_26BE00608(v23, v22);
  sub_26BFBD380(v18, v20, v23, v22);
  v34 = v65;
  v35 = *(&v65 + 1) >> 62;
  if ((*(&v65 + 1) >> 62) <= 1)
  {
    if (!v35)
    {
      goto LABEL_22;
    }

    v36 = v65 >> 32;
LABEL_20:
    if (v36 < 0)
    {
      __break(1u);
    }

    goto LABEL_22;
  }

  if (v35 == 2)
  {
    v36 = *(v65 + 24);
    goto LABEL_20;
  }

LABEL_22:
  v37 = sub_26C00909C();
  v39 = v38;
  sub_26BE00258(v34, *(&v34 + 1));
  v40 = *(v0 + 40);
  v41 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v40);
  v60 = v39;
  v62 = (*(v41 + 32))(v37, v39, v40, v41);
  v64 = v42;
  v43 = *(v0 + 136);
  v44 = *(v0 + 144);

  sub_26BE00608(v43, v44);

  v45 = sub_26C009A3C();
  LOBYTE(v39) = sub_26C00A9FC();

  sub_26BE00258(v43, v44);

  v59 = v39;
  log = v45;
  if (os_log_type_enabled(v45, v39))
  {
    v46 = *(v0 + 160);
    v58 = *(v0 + 144);
    v56 = *(v0 + 152);
    v57 = *(v0 + 136);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v65 = v48;
    *v47 = 136315394;

    v49 = sub_26BE16A38();
    v51 = v50;

    v52 = sub_26BE29740(v49, v51, &v65);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2080;
    *(v47 + 14) = sub_26BE29740(v56, v46, &v65);
    _os_log_impl(&dword_26BDFE000, log, v59, "%s: signNonceWithParticipantKey completed for %s", v47, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v48, -1, -1);
    MEMORY[0x26D69A4E0](v47, -1, -1);
    sub_26BE00258(v37, v60);
    sub_26BE00258(v18, v20);
    sub_26BE00258(v57, v58);
  }

  else
  {
    v53 = *(v0 + 136);
    v54 = *(v0 + 144);
    sub_26BE00258(v37, v60);
    sub_26BE00258(v18, v20);
    sub_26BE00258(v53, v54);
  }

  v55 = *(v0 + 120);
  *v55 = v62;
  v55[1] = v64;
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v33 = *(v0 + 8);
LABEL_11:

  return v33();
}

uint64_t MLS.RCSClient.VerifyNonceInput.participantPublicKey.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.RCSClient.VerifyNonceInput.participantPublicKey.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.RCSClient.VerifyNonceInput.nonce.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void MLS.RCSClient.VerifyNonceInput.nonce.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MLS.RCSClient.VerifyNonceInput.signature.getter()
{
  v1 = *(v0 + 32);
  sub_26BE00608(v1, *(v0 + 40));
  return v1;
}

void MLS.RCSClient.VerifyNonceInput.signature.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t MLS.RCSClient.VerifyNonceInput.init(participantPublicKey:nonce:signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

uint64_t sub_26BE39468(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = *v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  return MEMORY[0x2822009F8](sub_26BE394C0, 0, 0);
}

uint64_t sub_26BE394C0()
{
  v1 = v0[16];

  sub_26BE3B0D4((v0 + 2), (v0 + 8));
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_26BE39588;
  v3 = v0[14];
  v4 = v0[15];

  return sub_26BE9BFF4(v3, v4, v4, (v0 + 2), v1);
}

uint64_t sub_26BE39588()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26BE3967C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v4 = sub_26C00A4EC();
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE3973C, 0, 0);
}

uint64_t sub_26BE3973C()
{
  v62 = v0;
  v2 = v0[19];
  v1 = v0[20];
  swift_beginAccess();
  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  v5 = *(v2 + 80);
  v59[0] = *(v2 + 72);
  *&v59[8] = v5;
  v60 = v3;
  v61 = v4;
  v6 = *v1;
  v7 = v1[1];

  MLS.Cryptography.Ciphersuite.importSignaturePublicKey(_:)(v6, v7, v0 + 8);
  v57 = v6;
  v9 = v0[22];
  v8 = v0[23];
  v10 = v0[21];
  sub_26C00A4CC();
  v11 = sub_26C00A49C();
  v13 = v12;
  result = (*(v9 + 8))(v8, v10);
  if (v13 >> 60 == 15)
  {
    __break(1u);
    return result;
  }

  v15 = v0[20];
  v17 = *(v15 + 16);
  v16 = *(v15 + 24);
  *v59 = xmmword_26C00BBD0;
  *&v59[16] = 0;
  sub_26BE00608(v17, v16);
  sub_26BFBD380(v11, v13, v17, v16);
  v56 = v11;
  v18 = *&v59[8] >> 62;
  if ((*&v59[8] >> 62) <= 1)
  {
    if (!v18)
    {
      goto LABEL_14;
    }

    v19 = *v59 >> 32;
LABEL_12:
    if (v19 < 0)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  if (v18 == 2)
  {
    v19 = *(*v59 + 24);
    goto LABEL_12;
  }

LABEL_14:
  v52 = v17;
  v53 = v13;
  v54 = v16;
  v20 = v0[20];
  v55 = sub_26C00909C();
  v22 = v21;
  sub_26BE00258(*v59, *&v59[8]);
  v23 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v0[11]);
  v50 = *(v20 + 40);
  v51 = *(v20 + 32);
  if ((*(v23 + 16))())
  {
    sub_26BE00258(v55, v22);
    sub_26BE00258(v56, v13);
    sub_26BE00258(v52, v54);

    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v24 = v0[1];
  }

  else
  {
    if (qword_28045DF40 != -1)
    {
      swift_once();
    }

    v25 = v0[20];
    v26 = sub_26C009A5C();
    __swift_project_value_buffer(v26, qword_280478E70);
    sub_26BE3B0D4(v25, (v0 + 2));

    v27 = sub_26C009A3C();
    v28 = sub_26C00AA0C();

    sub_26BE3C0C4(v25);
    if (os_log_type_enabled(v27, v28))
    {
      log = v27;
      v29 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v59 = v48;
      *v29 = 136315906;

      v30 = sub_26BE16A38();
      v32 = v31;

      v33 = sub_26BE29740(v30, v32, v59);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v0[16] = sub_26BF87240(v57, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      v34 = sub_26C00A3EC();
      v58 = v28;
      v36 = v35;

      v37 = sub_26BE29740(v34, v36, v59);

      *(v29 + 14) = v37;
      *(v29 + 22) = 2080;
      v0[17] = sub_26BF87240(v51, v50);
      v38 = sub_26C00A3EC();
      v40 = v39;

      v41 = sub_26BE29740(v38, v40, v59);

      *(v29 + 24) = v41;
      *(v29 + 32) = 2080;
      v42 = v52;
      v0[18] = sub_26BF87240(v52, v54);
      v43 = sub_26C00A3EC();
      v45 = v44;

      v46 = sub_26BE29740(v43, v45, v59);

      *(v29 + 34) = v46;
      _os_log_impl(&dword_26BDFE000, log, v58, "%s: verifyNonceAgainstParticipantKey failed: participantPublicKey:%s, signature: %s, nonce: %s", v29, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v48, -1, -1);
      MEMORY[0x26D69A4E0](v29, -1, -1);
    }

    else
    {

      v42 = v52;
    }

    sub_26BE01654();
    swift_allocError();
    *v47 = 10;
    *(v47 + 8) = 0u;
    *(v47 + 24) = 0u;
    *(v47 + 40) = 0u;
    *(v47 + 56) = 0u;
    *(v47 + 72) = 0u;
    *(v47 + 88) = 0u;
    *(v47 + 104) = 0;
    *(v47 + 112) = 23;
    swift_willThrow();

    sub_26BE00258(v55, v22);
    sub_26BE00258(v56, v53);
    sub_26BE00258(v42, v54);
    __swift_destroy_boxed_opaque_existential_1(v0 + 8);

    v24 = v0[1];
  }

  return v24();
}

uint64_t sub_26BE39DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BE39DCC, 0, 0);
}

uint64_t sub_26BE39DCC()
{

  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_26BE23BEC;
  v2 = *(v0 + 16);

  return (sub_26BE9CA54)(v2);
}

uint64_t sub_26BE39E94(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_26BE39EB8, 0, 0);
}

uint64_t sub_26BE39EB8()
{

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_26BE39F84;

  return (sub_26BE9D484)(v0 + 16);
}

uint64_t sub_26BE39F84()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_26BE36ED0;
  }

  else
  {
    v2 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE3A0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a3;
  v4[23] = a4;
  v4[20] = a1;
  v4[21] = a2;
  v5 = sub_26C00978C();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = type metadata accessor for MLS.SubjectPublicKeyInfo(0);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BE3A1A8, 0, 0);
}

uint64_t sub_26BE3A1A8()
{
  sub_26BE38060(*(v0 + 176), *(v0 + 184));
  v1 = *(v0 + 168);
  v2 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  swift_beginAccess();
  sub_26BE2E1F0(v1 + v2, v0 + 56, &qword_28045E468, &qword_26C00ECA0);
  if (*(v0 + 80))
  {
    v3 = *(v0 + 224);
    sub_26BE03890((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v6 = *(v5 + 40);
    *(v0 + 120) = swift_getAssociatedTypeWitness();
    *(v0 + 128) = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    v6(v4, v5);
    sub_26BE106CC((v0 + 96), v3);
    sub_26C00977C();
    sub_26BE3C1BC(&qword_28045E678, type metadata accessor for MLS.SubjectPublicKeyInfo, &protocol conformance descriptor for MLS.SubjectPublicKeyInfo);
    sub_26C0096FC();
    v7 = *(v0 + 224);
    v9 = *(v0 + 200);
    v8 = *(v0 + 208);
    v10 = *(v0 + 192);
    v13 = *(v0 + 160);
    v14 = sub_26C00971C();
    v15 = sub_26BE12418(v14);
    v17 = v16;

    (*(v9 + 8))(v8, v10);
    sub_26BE3C204(v7, type metadata accessor for MLS.SubjectPublicKeyInfo);
    *v13 = v15;
    v13[1] = v17;
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    sub_26BE2E258(v0 + 56, &qword_28045E468, &qword_26C00ECA0);
    sub_26BE01654();
    swift_allocError();
    *v11 = 12;
    v11[112] = 9;
    swift_willThrow();
  }

  v18 = *(v0 + 8);

  return v18();
}

void *MLS.RCSClient.__allocating_init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v22 = a3;
  v23 = a5;
  v21 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v21 - v9;
  v11 = sub_26C00928C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  v15 = *a4;
  v16 = a4[1];
  sub_26BE295A0(a1, v26);
  (*(v12 + 16))(v14, a2, v11);
  v17 = v22;
  sub_26BE038A8(v22, v25);
  v24[0] = v15;
  v24[1] = v16;
  v18 = v23;
  sub_26BE2E1F0(v23, v10, &qword_28045E458, &unk_26C00DAA0);
  v19 = MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(v26, v14, v25, v24, v10);
  sub_26BE2E258(v18, &qword_28045E458, &unk_26C00DAA0);
  __swift_destroy_boxed_opaque_existential_1(v17);
  (*(v12 + 8))(a2, v11);
  sub_26BE29710(v21);
  return v19;
}

void *MLS.RCSClient.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v23 = a5;
  v22 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E458, &unk_26C00DAA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v22 - v10;
  v12 = sub_26C00928C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a4;
  v17 = a4[1];
  sub_26BE295A0(a1, v26);
  v18 = a2;
  (*(v13 + 16))(v15, a2, v12);
  sub_26BE038A8(a3, v25);
  v24[0] = v16;
  v24[1] = v17;
  v19 = v23;
  sub_26BE2E1F0(v23, v11, &qword_28045E458, &unk_26C00DAA0);
  v20 = MLS.Client.Client.init(configuration:signaturePrivateKeyUUID:signaturePrivateKey:credential:clientUUID:)(v26, v15, v25, v24, v11);
  sub_26BE2E258(v19, &qword_28045E458, &unk_26C00DAA0);
  __swift_destroy_boxed_opaque_existential_1(a3);
  (*(v13 + 8))(v18, v12);
  sub_26BE29710(v22);
  return v20;
}

uint64_t sub_26BE3A894(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t a6)
{
  v30 = a6;
  v31 = a4;
  v32 = a3;
  v34 = a2;
  v8 = sub_26C00928C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v12;
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = swift_allocObject();
  v16 = *a5;
  v17 = a5[1];
  v29 = a1;
  sub_26BE295A0(a1, v37);
  v28 = v9;
  v18 = *(v9 + 16);
  v18(v14, v34, v8);
  v18(v12, v32, v8);
  sub_26BE038A8(v31, v36);
  sub_26BE2E1F0(v30, v35, &qword_28045E460, &qword_26C0206D0);
  *(v15 + 24) = xmmword_26C00DA50;
  v19 = v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_participantPrivateKey;
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyPackageSecretsStore) = MEMORY[0x277D84F90];
  *(v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_inner) = 1;
  v20 = (v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state);
  *v20 = 0u;
  v20[1] = 0u;
  v20[2] = 0u;
  v20[3] = 0u;
  v20[4] = 0u;
  v20[5] = 0u;
  v20[6] = 0u;
  *(v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_usePureSwiftOverride) = 2;
  v21 = (v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_healthReport);
  *v21 = 0u;
  v21[1] = 0u;
  v21[2] = 0u;
  v21[3] = 0u;
  v21[4] = 0u;
  v21[5] = 0u;
  v21[6] = 0u;
  v21[7] = 0u;
  *(v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_reportingIntervalSeconds) = 86400;
  sub_26BE295A0(v37, v15 + 40);
  v18((v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_clientUUID), v14, v8);
  v18((v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_keyUUID), v33, v8);
  sub_26BE038A8(v36, v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey);
  swift_beginAccess();
  v22 = *(v15 + 24);
  v23 = *(v15 + 32);
  *(v15 + 24) = v16;
  *(v15 + 32) = v17;
  sub_26BE2958C(v16, v17);
  sub_26BE2962C(v22, v23);
  swift_beginAccess();
  sub_26BE2DE54(v35, v20);
  swift_endAccess();
  if ((~v17 & 0x3000000000000000) != 0)
  {
    sub_26BE2962C(v16, v17);
    v24 = 1;
  }

  else
  {
    v24 = 0;
  }

  *(v15 + OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_state) = v24;
  type metadata accessor for SMSemaphore();
  v25 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v25 + 120) = MEMORY[0x277D84FA0];
  *(v25 + 112) = 1;
  *(v15 + 16) = v25;
  sub_26C00920C();
  sub_26BE2E258(v30, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(v31);
  v26 = *(v28 + 8);
  v26(v32, v8);
  v26(v34, v8);
  sub_26BE29710(v29);
  sub_26BE2E258(v35, &qword_28045E460, &qword_26C0206D0);
  __swift_destroy_boxed_opaque_existential_1(v36);
  v26(v33, v8);
  v26(v14, v8);
  sub_26BE29710(v37);
  return v15;
}

uint64_t MLS.RCSClient.__deallocating_deinit()
{
  MLS.Client.Client.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26BE3AE5C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = sub_26C00947C();
  __swift_allocate_value_buffer(v4, a2);
  __swift_project_value_buffer(v4, a2);
  return sub_26C00944C();
}

uint64_t sub_26BE3AED8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_26C00947C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

unint64_t sub_26BE3AF70()
{
  result = qword_28045E630;
  if (!qword_28045E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E630);
  }

  return result;
}

unint64_t sub_26BE3AFC4()
{
  result = qword_28045E638;
  if (!qword_28045E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E638);
  }

  return result;
}

unint64_t sub_26BE3B018()
{
  result = qword_28045E648;
  if (!qword_28045E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E648);
  }

  return result;
}

uint64_t type metadata accessor for MLS.RCSClient(uint64_t a1)
{
  result = qword_28045E650;
  if (!qword_28045E650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t dispatch thunk of MLS.RCSClient.getCredentialSigningRequest(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 832) + **(*v3 + 832));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.loadCredential(credential:telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 840) + **(*v3 + 840));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE28F58;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.signNonceWithParticipantKey(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 856) + **(*v2 + 856));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.RCSClient.verifyNonceAgainstParticipantKey(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 864) + **(*v2 + 864));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE2E3F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of MLS.RCSClient.getParticipantPublicKey(telURI:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 872) + **(*v3 + 872));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_26BE2E3F4;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.RCSClient.getParticipantPublicKeySPKI(telURI:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 880) + **(*v2 + 880));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26BE3B910;

  return v8(a1, a2);
}

uint64_t sub_26BE3B910(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26BE3BA30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE3BA78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26BE3BAD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26BE3BB20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_26BE3BB94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t sub_26BE3BBE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t _s9RCSClientC24CredentialSigningRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s9RCSClientC24CredentialSigningRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26BE3BDC0()
{
  result = qword_28045E660;
  if (!qword_28045E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E660);
  }

  return result;
}

unint64_t sub_26BE3BE18()
{
  result = qword_28045E668;
  if (!qword_28045E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E668);
  }

  return result;
}

unint64_t sub_26BE3BE70()
{
  result = qword_28045E670;
  if (!qword_28045E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E670);
  }

  return result;
}

uint64_t sub_26BE3BEC4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x800000026C02AF20 == a2 || (sub_26C00AF2C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEF6F666E49746E61 || (sub_26C00AF2C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4952556C6574 && a2 == 0xE600000000000000 || (sub_26C00AF2C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_26C00AF2C();

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

uint64_t sub_26BE3C038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E468, &qword_26C00ECA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26BE3C0F4()
{
  result = qword_28045E4B8;
  if (!qword_28045E4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28045E4B0, &qword_26C00ECE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28045E4B8);
  }

  return result;
}

uint64_t sub_26BE3C158(uint64_t a1, uint64_t a2)
{
  v4 = _s21RCSTBSParticipantInfoVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26BE3C1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26BE3C204(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 MLS.Group.Member.init(identity:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 32);
  *(a2 + 32) = result;
  *(a2 + 48) = *(a1 + 48);
  return result;
}

void sub_26BE3C290(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v8 == 2)
    {
      v10 = *(a2 + 16);
      v9 = *(a2 + 24);
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  else
  {
    if (v8)
    {
      v9 = a2 >> 32;
    }

    else
    {
      v9 = BYTE6(a3);
    }

    if (v8)
    {
      v10 = a2;
    }

    else
    {
      v10 = 0;
    }
  }

  v11 = sub_26BE855EC(v10, v9, a2, a3);
  if (a1 && v11 < a1)
  {
    if (v8 <= 1)
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v12 = a2 >> 32;
      goto LABEL_26;
    }

    if (v8 != 2)
    {
      goto LABEL_28;
    }

    v12 = *(a2 + 24);
LABEL_24:
    v13 = *(a2 + 16);
    goto LABEL_27;
  }

  v12 = sub_26BE85588(v10, a1, a2, a3);
  v13 = 0;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      goto LABEL_24;
    }
  }

  else if (v8)
  {
LABEL_26:
    v13 = a2;
  }

LABEL_27:
  if (v12 >= v13)
  {
LABEL_28:
    v14 = sub_26C00909C();
    v16 = v15;
    sub_26BE00258(a2, a3);
    *a4 = v14;
    a4[1] = v16;
    return;
  }

LABEL_31:
  __break(1u);
}

void *MLS.Group.Group.deinit()
{

  sub_26BE00258(v0[4], v0[5]);

  sub_26BE0489C(v0[7], v0[8]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 14);
  return v0;
}

uint64_t sub_26BE3C440()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C4FC;
  v2 = *(v0 + 16);

  return sub_26BEAE7D0(v2, &unk_26C00ED10, v2);
}

uint64_t sub_26BE3C4FC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BE45BEC, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BE3C658()
{

  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C714;
  v2 = *(v0 + 32);

  return sub_26BE8FE74(v0 + 16, v2, v2);
}

uint64_t sub_26BE3C714()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_26BE3C840;
  }

  else
  {
    v2 = sub_26BE3C828;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE3C898(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3C8B8, 0, 0);
}

uint64_t sub_26BE3C8B8()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BE3C970;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE96314(v2, v3, v3);
}

uint64_t sub_26BE3C970()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE3CAA4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BE3CAC0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3CAE0, 0, 0);
}

uint64_t sub_26BE3CAE0()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BE3CB98;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE96744(v2, v3, v3);
}

uint64_t sub_26BE3CB98()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BE45BE8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26BE3CCCC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BE3CCEC, 0, 0);
}

uint64_t sub_26BE3CCEC()
{

  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_26BE3CB98;
  v2 = v0[2];
  v3 = v0[3];

  return sub_26BE96EDC(v2, v3, v3);
}

uint64_t sub_26BE3CDA4@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, v7);
  v3 = v8;
  v4 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v5 = *(v4 + 40);
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  v5(v3, v4);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t sub_26BE3CE90()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3CF34;

  return sub_26BE973DC(v0);
}

uint64_t sub_26BE3CF34(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_26BE3D034()
{
  sub_26C00AC1C();

  v1 = sub_26BE16A38();
  MEMORY[0x26D699090](v1);

  MEMORY[0x26D699090](0x2870756F7247202CLL, 0xEC000000203A6469);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_26BE00608(v2, v3);
  sub_26BF87240(v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v4 = sub_26C00A3EC();
  v6 = v5;
  sub_26BE00258(v2, v3);

  v7 = sub_26BE411D0(16, v4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = MEMORY[0x26D698FE0](v7, v9, v11, v13);
  v16 = v15;

  MEMORY[0x26D699090](v14, v16);

  MEMORY[0x26D699090](0x617265202C2E2E2ELL, 0xEA0000000000203ALL);
  v17 = sub_26C00AEFC();
  MEMORY[0x26D699090](v17);

  MEMORY[0x26D699090](0x3A68636F7065202CLL, 0xE900000000000020);
  v18 = sub_26C00AEFC();
  MEMORY[0x26D699090](v18);

  MEMORY[0x26D699090](10537, 0xE200000000000000);
  return 40;
}

uint64_t sub_26BE3D26C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE978A8(a1, v1);
}

uint64_t sub_26BE3D320(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE97BF0(a1, v1);
}

uint64_t sub_26BE3D3D4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE97F38(a1, v1);
}

uint64_t sub_26BE3D488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE98280(a1, v1);
}

uint64_t sub_26BE3D558()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000032;
  *(v1 + 8) = 0x800000026C02AF60;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3D63C()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000036;
  *(v1 + 8) = 0x800000026C02AFA0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3D6E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE94B94(a1, v1);
}

uint64_t sub_26BE3D79C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE94EDC(a1, v1);
}

uint64_t sub_26BE3D850(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE985C8(a1, v1);
}

uint64_t sub_26BE3D904(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE95224(a1, v1);
}

uint64_t sub_26BE3D9B8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE98910(a1, v1);
}

uint64_t sub_26BE3DA6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE9556C(a1, v1);
}

uint64_t sub_26BE3DB20(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return sub_26BE99630(a1, v1);
}

uint64_t sub_26BE3DBD4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3DC78;

  return sub_26BE99978(sub_26BE99978, v0);
}

uint64_t sub_26BE3DC78()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_26BE3DD8C;
  }

  else
  {
    v2 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE3DDA4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE98C58(a1, v1);
}

uint64_t sub_26BE3DE58(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE98FA0(a1, v1);
}

uint64_t sub_26BE3DF0C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE992E8(a1, v1);
}

uint64_t sub_26BE3DFC0()
{
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_26BE3E06C;

  return sub_26BE9053C(v1 + 16, v0);
}

uint64_t sub_26BE3E06C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_26BE3E180;
  }

  else
  {
    v2 = sub_26BE3A098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26BE3E198(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE99CC0(a1, v1);
}

uint64_t sub_26BE3E268()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000026;
  *(v1 + 8) = 0x800000026C02AFE0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E330()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B010;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E3F8()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000023;
  *(v1 + 8) = 0x800000026C02B040;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E4C0()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x800000026C02B070;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E588()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD00000000000001CLL;
  *(v1 + 8) = 0x800000026C02B0A0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E670()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_26BE3E72C;
  v2 = *(v0 + 16);

  return sub_26BEAF004(v2, &unk_26C00EE48, v2);
}

uint64_t sub_26BE3E72C(unsigned int a1)
{
  v4 = *v2;
  *(v4 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_26BE3E880, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_26BE3E8B8()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD00000000000001DLL;
  *(v1 + 8) = 0x800000026C02B0C0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3E980()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B0E0;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EA48()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000025;
  *(v1 + 8) = 0x800000026C02B110;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EB10()
{
  sub_26BE01654();
  swift_allocError();
  *v1 = 0xD000000000000020;
  *(v1 + 8) = 0x800000026C02B140;
  *(v1 + 112) = 2;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BE3EBBC()
{
  v0 = sub_26C009A5C();
  __swift_allocate_value_buffer(v0, qword_280478EE8);
  __swift_project_value_buffer(v0, qword_280478EE8);
  return sub_26C009A4C();
}

uint64_t sub_26BE3EC30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EC50, 0, 0);
}

uint64_t sub_26BE3EC70(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE2E3F4;

  return sub_26BE3EC30(a1, v1);
}

uint64_t sub_26BE3ED0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3ED2C, 0, 0);
}

uint64_t sub_26BE3ED2C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  *v2 = v3;
  v2[1] = v4;
  sub_26BE00608(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE3ED9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EDBC, 0, 0);
}

uint64_t sub_26BE3EDBC()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  *v2 = v3;
  v2[1] = v4;
  sub_26BE04890(v3, v4);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26BE3EE24(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_26BE45B9C, 0, 0);
}

uint64_t sub_26BE3EE44(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_26BE3EE64, 0, 0);
}

uint64_t sub_26BE3EE64()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = *(v1 + 56);
  v4 = *(v1 + 64);
  swift_beginAccess();
  sub_26BE038A8(v1 + 112, (v0 + 2));
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v7 = *(v6 + 40);
  v2[5] = swift_getAssociatedTypeWitness();
  v2[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v2 + 2);
  sub_26BE04890(v3, v4);
  v7(v5, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v2 = v3;
  v2[1] = v4;
  v8 = v0[1];

  return v8();
}

uint64_t MLS.Group.Group.ciphersuite.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  *a1 = *(v1 + 72);
  *(a1 + 8) = *(v1 + 80);
  *(a1 + 24) = v3;
  *(a1 + 32) = v2;
}

uint64_t sub_26BE3EFC0(uint64_t a1, uint64_t a2, unint64_t a3, char *a4, uint64_t *a5)
{
  v6 = v5;
  v10 = *a4;
  *log = *(a4 + 8);
  v11 = *(a4 + 3);
  v12 = *(a4 + 4);
  v14 = *a5;
  v13 = a5[1];
  *(v6 + 152) = sub_26BE4126C();
  *(v6 + 40) = a3;
  *(v6 + 48) = a1;
  *(v6 + 24) = 0;
  *(v6 + 32) = a2;
  *(v6 + 56) = v14;
  *(v6 + 64) = v13;
  *(v6 + 72) = v10;
  *(v6 + 80) = *log;
  *(v6 + 96) = v11;
  *(v6 + 104) = v12;
  swift_beginAccess();
  sub_26BE295A0(a1 + 40, v29);

  sub_26BE00608(a2, a3);
  v15 = v31;
  sub_26BE11028(v30);
  if (v15)
  {
    sub_26BE00258(a2, a3);

    sub_26BE29710(v29);
    sub_26BE00258(*(v6 + 32), *(v6 + 40));

    sub_26BE0489C(*(v6 + 56), *(v6 + 64));

    type metadata accessor for MLS.Group.Group();
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_26BE29710(v29);
    sub_26BE03890(v30, v6 + 112);
    type metadata accessor for SMSemaphore();
    v16 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v16 + 120) = MEMORY[0x277D84FA0];
    *(v16 + 112) = 1;
    *(v6 + 16) = v16;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v17 = sub_26C009A5C();
    __swift_project_value_buffer(v17, qword_280478EE8);

    v18 = sub_26C009A3C();
    v19 = sub_26C00AA1C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v29[0] = v31;
      *v20 = 136315138;

      loga = v18;
      v21 = sub_26BE3D034();
      v23 = v22;

      v24 = sub_26BE29740(v21, v23, v29);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_26BDFE000, loga, v19, "%s: Initialized empty group", v20, 0xCu);
      v25 = v31;
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x26D69A4E0](v25, -1, -1);
      MEMORY[0x26D69A4E0](v20, -1, -1);

      sub_26BE00258(a2, a3);
    }

    else
    {
      sub_26BE00258(a2, a3);
    }
  }

  return v6;
}

uint64_t MLS.Group.Group.__allocating_init(client:ciphersuite:initPriv:leafPriv:sigPriv:keyPackage:welcome:tree:psks:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15)
{

  sub_26BE132D4(a13, a14);

  sub_26BE01654();
  swift_allocError();
  *v17 = 0u;
  *(v17 + 16) = 0u;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = 0u;
  *(v17 + 96) = 0u;
  *(v17 + 112) = 23;
  swift_willThrow();
  sub_26BE00258(a11, a12);
  sub_26BE00258(a9, a10);
  sub_26BE00258(a7, a8);
  sub_26BE00258(a5, a6);
  sub_26BE00258(a3, a4);
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.message.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Group.Group.EncryptApplicationMessageWithAADInput.message.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.messageID.getter()
{
  v1 = *(v0 + 16);
  sub_26BE00608(v1, *(v0 + 24));
  return v1;
}

void MLS.Group.Group.EncryptApplicationMessageWithAADInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t MLS.Group.Group.EncryptApplicationMessageWithAADInput.originalMessageID.getter()
{
  v1 = *(v0 + 32);
  sub_26BE2BAE8(v1, *(v0 + 40));
  return v1;
}

void MLS.Group.Group.EncryptApplicationMessageWithAADInput.originalMessageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE132D4(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void MLS.Group.Group.EncryptApplicationMessageWithAADInput.init(message:messageID:originalMessageID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  sub_26BE132D4(0, 0xF000000000000000);
  a7[4] = a5;
  a7[5] = a6;
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.verifiableDerivedContent.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_26BE03890(a1, v1);
}

uint64_t MLS.Group.Group.SignPublicApplicationMessageInput.messageID.getter()
{
  v1 = *(v0 + 40);
  sub_26BE00608(v1, *(v0 + 48));
  return v1;
}

void MLS.Group.Group.SignPublicApplicationMessageInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

void MLS.Group.Group.SignPublicApplicationMessageInput.init(verifiableDerivedContent:messageID:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = xmmword_26C00BBD0;
  sub_26BE03890(a1, a4);
  sub_26BE00258(*(a4 + 40), *(a4 + 48));
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.message.getter()
{
  v1 = *v0;
  sub_26BE00608(*v0, *(v0 + 8));
  return v1;
}

void MLS.Group.Group.EncryptWrappedApplicationMessageInput.message.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t MLS.Group.Group.EncryptWrappedApplicationMessageInput.messageID.getter()
{
  v1 = *(v0 + 72);
  sub_26BE00608(v1, *(v0 + 80));
  return v1;
}

void MLS.Group.Group.EncryptWrappedApplicationMessageInput.messageID.setter(uint64_t a1, uint64_t a2)
{
  sub_26BE00258(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

__n128 MLS.Group.Group.EncryptWrappedApplicationMessageInput.init(message:recipient:messageID:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  v6 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v6;
  result = *(a3 + 32);
  *(a6 + 48) = result;
  *(a6 + 64) = *(a3 + 48);
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  return result;
}

void MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.newKeyPackage.getter(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = v2;
  a1[1] = v3;
  sub_26BE00608(v2, v3);
}

void MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.newKeyPackage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_26BE00258(*(v1 + 56), *(v1 + 64));
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

__n128 MLS.Group.Group.ReplaceExpiredCredentialInput.Replacement.init(target:newKeyPackage:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = *(a1 + 48);
  result = *a2;
  *(a3 + 56) = *a2;
  return result;
}

uint64_t MLS.Group.Group.ReplaceExpiredCredentialInput.init(replacements:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  *a2 = a1;
  return result;
}

__n128 MLS.Group.Group.ReplaceExpiredCredentialOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE41488(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.DowngradeOutput.commitOutput.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[3];
  v9 = v1[2];
  v10 = v2;
  v11 = v1[4];
  v3 = v11;
  v4 = v1[1];
  v8[0] = *v1;
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_26BE41450(v8, &v7);
}

__n128 MLS.Group.Group.DowngradeOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE414B8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

uint64_t MLS.Group.Group.ResurrectionInput.replaceExpired.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

__n128 MLS.Group.Group.ResurrectionOutput.commitOutput.setter(uint64_t a1)
{
  v3 = v1[3];
  v7[2] = v1[2];
  v7[3] = v3;
  v7[4] = v1[4];
  v4 = v1[1];
  v7[0] = *v1;
  v7[1] = v4;
  sub_26BE414E8(v7);
  v5 = *(a1 + 48);
  v1[2] = *(a1 + 32);
  v1[3] = v5;
  v1[4] = *(a1 + 64);
  result = *(a1 + 16);
  *v1 = *a1;
  v1[1] = result;
  return result;
}

__n128 MLS.Group.Group.ResurrectionOutput.init(commitOutput:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v2;
  *(a2 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = result;
  return result;
}

uint64_t MLS.Group.Group.ChangeRCSGroupNameInput.newName.getter()
{
  v1 = *v0;

  return v1;
}