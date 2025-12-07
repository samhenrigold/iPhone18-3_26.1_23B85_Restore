unint64_t sub_1E49486F0(double *a1, uint64_t a2)
{
  v5 = type metadata accessor for TextClockDescriptor(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *a1;
    v13 = *(v6 + 72);
    do
    {
      sub_1E4949EB4(*(v2 + 48) + v13 * v10, v8);
      if (*v8 == v12)
      {
        v14 = MEMORY[0x1E691A740](v8 + *(v5 + 20), a1 + *(v5 + 20), *v8);
        sub_1E4949F18(v8);
        if (v14)
        {
          return v10;
        }
      }

      else
      {
        sub_1E4949F18(v8);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1E4948860(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1E499884C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1E4948918(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948984(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1E48C8304(*(v2 + 48) + 104 * v4, v8);
      v6 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
      sub_1E48C8360(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1E4948A4C(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xE700000000000000;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 0x676F6C616E61;
        }

        else
        {
          v8 = 0x6C617469676964;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE600000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      else if (v7 == 2)
      {
        v9 = 0xE500000000000000;
        v8 = 0x646C726F77;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x72616C6F73;
        }

        else
        {
          v8 = 2036427888;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE400000000000000;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x72616C6F73;
      }

      else
      {
        v10 = 2036427888;
      }

      if (v6 == 3)
      {
        v11 = 0xE500000000000000;
      }

      else
      {
        v11 = 0xE400000000000000;
      }

      if (v6 == 2)
      {
        v10 = 0x646C726F77;
        v11 = 0xE500000000000000;
      }

      if (v6)
      {
        v12 = 0x676F6C616E61;
      }

      else
      {
        v12 = 0x6C617469676964;
      }

      if (v6)
      {
        v5 = 0xE600000000000000;
      }

      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? v5 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = sub_1E499884C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xE700000000000000;
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

unint64_t sub_1E4948C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1E4997EEC();
      v8 = v7;
      if (v6 == sub_1E4997EEC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1E499884C();

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

unint64_t sub_1E4948D24(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948D9C(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x4B72656874616577;
    }

    else
    {
      v6 = 0x6C616E7265746E69;
    }

    if (a1)
    {
      v7 = 0xEA00000000007469;
    }

    else
    {
      v7 = 0xEA00000000004955;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x4B72656874616577 : 0x6C616E7265746E69;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007469 : 0xEA00000000004955;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = sub_1E499884C();

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

unint64_t sub_1E4948EE0(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(*(v2 + 48) + result);
      if (a1)
      {
        if (a1 == 1)
        {
          if (v7 == 1)
          {
            return result;
          }
        }

        else if (v7 == 2)
        {
          return result;
        }
      }

      else if (!*(*(v2 + 48) + result))
      {
        return result;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1E4948F70(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1E4949F74(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1E691BD50](v9, a1);
      sub_1E49490A0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1E4949038(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E494908C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1E48CD2C8(result, a2);
  }

  return result;
}

unint64_t sub_1E49490F4()
{
  result = qword_1ECF80B18;
  if (!qword_1ECF80B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B18);
  }

  return result;
}

unint64_t sub_1E4949148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B50, &qword_1E49A3DF8);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1E494809C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949258(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80130, &qword_1E49A3E20);
    v3 = sub_1E499871C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_1E494812C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E494935C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B60, &qword_1E49A3E08);
    v3 = sub_1E499871C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = sub_1E49481A4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E494943C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B58, &qword_1E49A3E00);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1E494809C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949534(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B88, &qword_1E49A3E40);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1E494809C(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E494962C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B80, &unk_1E49A3E30);
    v3 = sub_1E499871C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v4, &v15, &qword_1ECF7FC48, &unk_1E499E5B0);
      v5 = v15;
      v6 = v16;
      result = sub_1E494812C(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E494975C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B68, &unk_1E49A3E10);
    v3 = sub_1E499871C();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1E494809C(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949870(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v9 = sub_1E499871C();
    v10 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_1E494809C(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_1E48C42DC(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949988(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B78, &qword_1E49A3E28);
    v3 = sub_1E499871C();

    for (i = a1 + 40; ; i += 56)
    {
      v5 = *(i - 8);
      v6 = *i;
      v16 = *(i + 24);
      v17 = *(i + 8);
      v7 = *(i + 40);

      v8 = v7;
      result = sub_1E494812C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 40 * result;
      *v12 = v17;
      *(v12 + 16) = v16;
      *(v12 + 32) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949AB8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80B90, &qword_1E49A3E48);
    v3 = sub_1E499871C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E48C12D0(v4, v13, &qword_1ECF80B28, &qword_1E49A3AF0);
      result = sub_1E49484EC(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1E48C42DC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1E4949BF4(uint64_t a1)
{
  result = sub_1E4949C1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4949C1C()
{
  result = qword_1ECF80B30;
  if (!qword_1ECF80B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B30);
  }

  return result;
}

__n128 __swift_memcpy98_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 48);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4949C9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 98))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 96);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4949CE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 98) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 98) = 0;
    }

    if (a2)
    {
      *(result + 96) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E4949D68()
{
  result = qword_1ECF80B38;
  if (!qword_1ECF80B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B38);
  }

  return result;
}

unint64_t sub_1E4949DC0()
{
  result = qword_1ECF80B40;
  if (!qword_1ECF80B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B40);
  }

  return result;
}

unint64_t sub_1E4949E18()
{
  result = qword_1ECF80B48;
  if (!qword_1ECF80B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B48);
  }

  return result;
}

uint64_t sub_1E4949E6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4949EB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4949F18(uint64_t a1)
{
  v2 = type metadata accessor for TextClockDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4949FD0()
{
  result = qword_1ECF80B98;
  if (!qword_1ECF80B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80B98);
  }

  return result;
}

id sub_1E494A024(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView____lazy_storage___scaler];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  v9[40] = 1;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor] = 0;
  v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView] = 0;
  v10 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView] = 0;
  *&v4[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask] = 0;
  v11 = [objc_allocWithZone(type metadata accessor for AnalogClockDialView()) initWithFrame_];
  v12 = *&v4[v10];
  *&v4[v10] = v11;

  v14.receiver = v4;
  v14.super_class = type metadata accessor for AnalogClockFaceView();
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

void sub_1E494A194()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC60, &unk_1E49A0DC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v80 - v3;
  v5 = type metadata accessor for AnalogClockFaceView();
  v86.receiver = v0;
  v86.super_class = v5;
  objc_msgSendSuper2(&v86, sel_layoutSubviews);
  v87 = UIView.cp_safeAreaInsets(centering:)(1);
  top = v87.top;
  left = v87.left;
  [v0 frame];
  UIEdgeInsetsInsetRect_0(v8, v9, v10, v11, top, left);
  UIRectIntegralWithViewScale();
  v15 = v14;
  v17 = v16;
  v18 = v12;
  v19 = v13;
  v20 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView])
  {
    v21 = [objc_allocWithZone(AnalogHandsView) initWithFixedSize_];
    v22 = *&v0[v20];
    *&v0[v20] = v21;
  }

  sub_1E494B0D8();
  v23 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask;
  if (!*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask])
  {
    v24 = sub_1E499816C();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E499814C();

    v26 = sub_1E499813C();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E85E0];
    v27[2] = v26;
    v27[3] = v28;
    v27[4] = v25;

    *&v1[v23] = sub_1E49690B8(0, 0, v4, &unk_1E49A3EB0, v27);
  }

  sub_1E494B934();
  v29 = objc_opt_self();
  v30 = swift_allocObject();
  *(v30 + 2) = v1;
  v30[3] = v15;
  v30[4] = v17;
  v30[5] = v18;
  v30[6] = v19;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E494BE74;
  *(v31 + 24) = v30;
  aBlock[4] = sub_1E48C36A4;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E496F580;
  aBlock[3] = &block_descriptor_42;
  v32 = _Block_copy(aBlock);
  v33 = v1;

  [v29 performWithoutAnimation_];
  _Block_release(v32);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v34 = [v33 effectiveUserInterfaceLayoutDirection];
  v35 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  if (v34 == 1)
  {
    v36 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView;
  }

  else
  {
    v36 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  }

  v37 = *&v33[v36];
  if (v34 == 1)
  {
    v35 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView;
  }

  v38 = *&v33[v35];
  v39 = &qword_1ECF80000;
  v83 = v18;
  v84 = v17;
  v82 = v19;
  if (v37)
  {
    v81 = v20;
    v40 = *&v33[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
    if (!v40)
    {
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v41 = v15;
    v42 = *(v40 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame);
    v43 = *(v40 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 8);
    v44 = *(v40 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 16);
    v45 = *(v40 + OBJC_IVAR____TtC11ClockPoster19AnalogClockDialView_leftComplicationFrame + 24);
    v46 = v38;
    v47 = v37;
    v48 = v46;
    [v33 convertRect:v40 fromView:{v42, v43, v44, v45}];
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v56 = v55;
    [v47 intrinsicContentSize];
    v58 = v57;
    v60 = v59;
    v88.origin.x = v50;
    v88.origin.y = v52;
    v88.size.width = v54;
    v88.size.height = v56;
    MinX = CGRectGetMinX(v88);
    v89.origin.x = v50;
    v89.origin.y = v52;
    v89.size.width = v54;
    v89.size.height = v56;
    [v47 setFrame_];
    v15 = v41;
    v18 = v83;
    v17 = v84;
    v19 = v82;
    v20 = v81;
    v39 = &qword_1ECF80000;
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v62 = v38;
    if (!v38)
    {
      goto LABEL_18;
    }
  }

  v63 = *&v33[v39[377]];
  if (v63)
  {
    v64 = v15;
    [v33 byte_1E876131C];
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    [v38 intrinsicContentSize];
    v74 = v73;
    v76 = v75;
    v90.origin.x = v66;
    v90.origin.y = v68;
    v90.size.width = v70;
    v90.size.height = v72;
    v77 = CGRectGetMaxX(v90) - v74;
    v91.origin.x = v66;
    v91.origin.y = v68;
    v91.size.width = v70;
    v91.size.height = v72;
    [v38 setFrame_];

    v15 = v64;
    v18 = v83;
    v17 = v84;
    v19 = v82;
LABEL_18:
    v92.origin.x = v15;
    v92.origin.y = v17;
    v92.size.width = v18;
    v92.size.height = v19;
    CGRectGetHeight(v92);
    v93.origin.x = v15;
    v93.origin.y = v17;
    v93.size.width = v18;
    v93.size.height = v19;
    CGRectGetHeight(v93);
    v78 = *&v1[v20];
    if (v78)
    {
      v79 = v78;
      UIRectCenteredRect();
      [v79 setFrame_];

      return;
    }

    goto LABEL_21;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_1E494A7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  v4[10] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6C0, &qword_1E49A3A70);
  v4[14] = v7;
  v4[15] = *(v7 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = sub_1E499814C();
  v4[18] = sub_1E499813C();
  v9 = sub_1E499811C();
  v4[19] = v9;
  v4[20] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1E494A9E8, v9, v8);
}

uint64_t sub_1E494A9E8()
{
  if (qword_1ECF7EB40 != -1)
  {
    swift_once();
  }

  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  sub_1E493C7A4(v1);
  sub_1E499819C();
  (*(v2 + 8))(v1, v3);
  swift_beginAccess();
  v4 = sub_1E499813C();
  v0[21] = v4;
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E494AB40;
  v6 = v0[14];
  v7 = v0[10];
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D9C8](v7, v4, v8, v6);
}

uint64_t sub_1E494AB40()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1E494AC84, v3, v2);
}

uint64_t sub_1E494AC84()
{
  v1 = v0[10];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);

LABEL_11:

    v22 = v0[1];

    return v22();
  }

  sub_1E48D4BCC(v1, v0[9]);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v19 = v0[15];
    v18 = v0[16];
    v20 = v0[14];
    v21 = v0[9];

    sub_1E48C1338(v21, &qword_1ECF809D0, &qword_1E499D6C0);
    (*(v19 + 8))(v18, v20);
    goto LABEL_11;
  }

  v6 = Strong;
  v7 = *(Strong + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView);
  if (v7)
  {
    v8 = v0[8];
    sub_1E48D4CA4(v0[9], v8);
    v9 = sub_1E4996D8C();
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v8, 1, v9);
    v12 = v7;
    v13 = 0;
    if (v11 != 1)
    {
      v14 = v0[8];
      v13 = sub_1E4996CEC();
      (*(v10 + 8))(v14, v9);
    }

    v15 = v0[9];
    [v12 setOverrideDate_];

    sub_1E48C1338(v15, &qword_1ECF809D0, &qword_1E499D6C0);
    v16 = sub_1E499813C();
    v0[21] = v16;
    v17 = swift_task_alloc();
    v0[22] = v17;
    *v17 = v0;
    v17[1] = sub_1E494AB40;
    v5 = v0[14];
    Strong = v0[10];
    v4 = MEMORY[0x1E69E85E0];
    v3 = v16;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6D9C8](Strong, v3, v4, v5);
}

id sub_1E494AF64(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  result = *(a1 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView);
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  [result setFrame_];
  result = *(a1 + v2);
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  return [result layoutIfNeeded];
}

void sub_1E494B0D8()
{
  v1 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView];
  if (v1)
  {
    if (v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode] == 1)
    {
      v2 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v3 = v1;
      v4 = [v2 initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      [v3 applySecondHandColor_];

      v5 = [v3 hourHandView];
      if (!v5)
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
      [v5 setColor_];

      v7 = [v3 minuteHandView];
      if (!v7)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v9 = v1;
      v10 = [v0 tintColor];
      [v9 applySecondHandColor_];

      v11 = [v9 hourHandView];
      if (!v11)
      {
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = objc_opt_self();
      v13 = [v12 whiteColor];
      [v11 setColor_];

      v7 = [v9 minuteHandView];
      if (!v7)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v8 = [v12 whiteColor];
    }

    v14 = v8;
    [v7 setColor_];
  }

  v15 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  if (v15)
  {
    v16 = v15;
    v17 = [v0 tintColor];
    [v16 setTintColor_];
  }

  v18 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1E494B400();
    [v19 setTintColor_];
  }

  v21 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
  if (!v21)
  {
    __break(1u);
    goto LABEL_19;
  }

  [v21 setNeedsLayout];
}

id sub_1E494B400()
{
  v1 = sub_1E4996E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E4996E2C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80BE0, &unk_1E49A3E98);
  *&v10 = MEMORY[0x1EEE9AC00](v9 - 8).n128_u64[0];
  v12 = &v31 - v11;
  v33 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor;
  v13 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor];
  v14 = v13;
  if (!v13)
  {
    v14 = [v0 tintColor];
  }

  v34 = v14;
  if (*&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView])
  {
    type metadata accessor for AnalogClockFaceDateComplicationView();
    v15 = swift_dynamicCastClass();
    v16 = v13;
    if (v15)
    {
      v32 = v0;
      v17 = sub_1E495F1E8(&unk_1F5E82628);
      swift_arrayDestroy();
      sub_1E4996DEC();
      sub_1E4996E1C();
      (*(v6 + 8))(v8, v5);
      sub_1E4996DFC();
      (*(v2 + 8))(v4, v1);
      v18 = sub_1E4996DDC();
      v19 = *(v18 - 8);
      if ((*(v19 + 48))(v12, 1, v18) == 1)
      {

        sub_1E48C1338(v12, &qword_1ECF80BE0, &unk_1E49A3E98);
      }

      else
      {
        v21 = sub_1E4996DCC();
        v23 = v22;
        (*(v19 + 8))(v12, v18);
        LOBYTE(v21) = sub_1E494B83C(v21, v23, v17);

        if ((v21 & 1) != 0 && *&v32[v33])
        {
          v24 = [objc_opt_self() whiteColor];
          v25 = swift_allocObject();
          *(v25 + 16) = v24;
          v26 = objc_allocWithZone(MEMORY[0x1E69DC888]);
          aBlock[4] = sub_1E492429C;
          aBlock[5] = v25;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E4923F24;
          aBlock[3] = &block_descriptor_9;
          v27 = _Block_copy(aBlock);
          v28 = v24;
          v29 = [v26 initWithDynamicProvider_];

          _Block_release(v27);

          return v29;
        }
      }
    }
  }

  else
  {
    v20 = v13;
  }

  return v34;
}

uint64_t sub_1E494B83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E499892C();
  sub_1E4997F5C();
  v6 = sub_1E499896C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1E499884C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1E494B934()
{
  v1 = [v0 subviews];
  sub_1E48D8F04();
  v2 = sub_1E49980BC();
  v3 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView;
  v4 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView];
  if (!v4)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = v2;
  v6 = v4;

  v29 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v29;
  v8 = sub_1E49964FC(sub_1E494BD6C, v27, v5);

  if ((v8 & 1) == 0)
  {
    if (!*&v0[v3])
    {
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    [v0 addSubview_];
  }

  v9 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView];
  if (v9)
  {
    v10 = v9;
    v11 = [v0 subviews];
    v12 = sub_1E49980BC();

    v29 = v10;
    MEMORY[0x1EEE9AC00](v13);
    v28 = &v29;
    LOBYTE(v11) = sub_1E49964FC(sub_1E494BF58, v27, v12);

    if ((v11 & 1) == 0)
    {
      [v0 addSubview_];
    }
  }

  v14 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView];
  if (v14)
  {
    v15 = v14;
    v16 = [v0 subviews];
    v17 = sub_1E49980BC();

    v29 = v15;
    MEMORY[0x1EEE9AC00](v18);
    v28 = &v29;
    LOBYTE(v16) = sub_1E49964FC(sub_1E494BF58, v27, v17);

    if ((v16 & 1) == 0)
    {
      [v0 addSubview_];
    }
  }

  v19 = [v0 subviews];
  v20 = sub_1E49980BC();
  v21 = OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView;
  v22 = *&v0[OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v20;
  v24 = v22;

  v29 = v24;
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v29;
  v26 = sub_1E49964FC(sub_1E494BF58, v27, v23);

  if (v26)
  {
    return;
  }

  if (!*&v0[v21])
  {
LABEL_21:
    __break(1u);
    return;
  }

  [v0 addSubview_];
}

id sub_1E494BC88(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnalogClockFaceView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1E494BDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E48BFD3C;

  return sub_1E494A7D0(a1, v4, v5, v6);
}

void sub_1E494BE84()
{
  v1 = v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView____lazy_storage___scaler;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_secondaryTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_redMode) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_leadingComplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_trailingComplicationView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_dialView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_handsView) = 0;
  *(v0 + OBJC_IVAR____TtC11ClockPoster19AnalogClockFaceView_overrideStreamTask) = 0;
  sub_1E49986DC();
  __break(1u);
}

Swift::Void __swiftcall UIView.cp_applyFullscreenConstraints(inContainer:)(UIView *inContainer)
{
  v2 = v1;
  [v1 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F108, &unk_1E49A18C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1E49A3EC0;
  v6 = [(UIView *)inContainer leadingAnchor];
  v7 = [v2 leadingAnchor];
  v8 = [(NSLayoutXAxisAnchor *)v6 constraintEqualToAnchor:v7];

  *(v5 + 32) = v8;
  v9 = [(UIView *)inContainer trailingAnchor];
  v10 = [v2 trailingAnchor];
  v11 = [(NSLayoutXAxisAnchor *)v9 constraintEqualToAnchor:v10];

  *(v5 + 40) = v11;
  v12 = [(UIView *)inContainer topAnchor];
  v13 = [v2 topAnchor];
  v14 = [(NSLayoutYAxisAnchor *)v12 constraintEqualToAnchor:v13];

  *(v5 + 48) = v14;
  v15 = [(UIView *)inContainer bottomAnchor];
  v16 = [v2 bottomAnchor];
  v17 = [(NSLayoutYAxisAnchor *)v15 constraintEqualToAnchor:v16];

  *(v5 + 56) = v17;
  sub_1E494C1CC();
  v18 = sub_1E499809C();

  [v4 activateConstraints_];
}

unint64_t sub_1E494C1CC()
{
  result = qword_1ECF80BE8;
  if (!qword_1ECF80BE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF80BE8);
  }

  return result;
}

UIEdgeInsets __swiftcall UIView.cp_safeAreaInsets(centering:)(Swift::Bool centering)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_1E499708C();
  v8 = *(v7 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 safeAreaInsets];
  v13.f64[1] = v12;
  v15.f64[1] = v14;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v13, *MEMORY[0x1E69DDCE0]), vceqq_f64(v15, *(MEMORY[0x1E69DDCE0] + 16))))))
  {
    [v1 safeAreaInsets];
    v16 = v24;
    goto LABEL_25;
  }

  v16 = 24.0;
  if (!SBUIIsSystemApertureEnabled())
  {
    *&v25 = 64.0;
    goto LABEL_24;
  }

  v17 = [objc_opt_self() sharedInstanceForEmbeddedDisplay];
  [v17 interSensorRegionInWindowSpace];
  v18 = CGRectGetMaxY(v37) + 1.0;
  v19 = [objc_opt_self() mainScreen];
  v20 = sub_1E494C660();

  if (v20 != 4)
  {
    if (v20 == 3)
    {

      v21 = v18;
      if (centering)
      {
        v22 = v18;
      }

      else
      {
        v22 = 64.0;
      }

      v23 = 24.0;
      goto LABEL_25;
    }

    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v26 = qword_1EE2BB458;
    v27 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_rendering_private;
    swift_beginAccess();
    sub_1E48CC978(v26 + v27, v6);
    v28 = *(v8 + 48);
    if (v28(v6, 1, v7) == 1)
    {
      sub_1E4904BF4(v11);
      if (v28(v6, 1, v7) != 1)
      {
        sub_1E48C1338(v6, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
    }

    v29 = v2;
    v30 = sub_1E499706C();
    v31 = sub_1E499830C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138543618;
      *(v32 + 4) = v29;
      *v33 = v29;
      *(v32 + 12) = 2050;
      *(v32 + 14) = v20;
      v34 = v29;
      _os_log_impl(&dword_1E48B0000, v30, v31, "[%{public}@] Unsupported interface orientation %{public}ld.", v32, 0x16u);
      sub_1E48C1338(v33, &qword_1ECF7F718, &unk_1E499CA90);
      MEMORY[0x1E691CED0](v33, -1, -1);
      MEMORY[0x1E691CED0](v32, -1, -1);
    }

    (*(v8 + 8))(v11, v7);
    *&v25 = 49.0;
LABEL_24:
    v21 = *&v25;
    v23 = 24.0;
    v22 = *&v25;
    goto LABEL_25;
  }

  v22 = v18;
  if (centering)
  {
    v21 = v18;
  }

  else
  {
    v21 = 64.0;
  }

  v23 = 24.0;
LABEL_25:
  v35 = v16;
  result.right = v22;
  result.bottom = v23;
  result.left = v21;
  result.top = v35;
  return result;
}

uint64_t sub_1E494C660()
{
  [objc_msgSend(v0 coordinateSpace)];
  v2 = v1;
  v4 = v3;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v5 = 4;
  if (v4 == 0.0)
  {
    v5 = 1;
  }

  v6 = 2;
  if (v4 == 0.0)
  {
    v6 = 3;
  }

  if (v2 == 0.0)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

double sub_1E494C710()
{
  [v0 frame];
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  MinY = CGRectGetMinY(v32);
  CGFloatMax(24.0 - MinY);
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  MinX = CGRectGetMinX(v33);
  v31 = CGFloatMax(64.0 - MinX);
  v7 = objc_opt_self();
  v8 = [v7 mainScreen];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  MaxY = CGRectGetMaxY(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  v18 = CGRectGetMaxY(v35);
  v19 = [v7 mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v36.origin.x = v21;
  v36.origin.y = v23;
  v36.size.width = v25;
  v36.size.height = v27;
  MaxX = CGRectGetMaxX(v36);
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  v29 = CGRectGetMaxX(v37);
  CGFloatMax(v29 - MaxX + 64.0);
  [v0 frame];
  CGRectGetWidth(v38);
  [v0 frame];
  CGRectGetHeight(v39);
  return v31;
}

void *sub_1E494C904(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

void sub_1E494C94C(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

id sub_1E494C9C0(double a1)
{
  v2 = *MEMORY[0x1E69DDD58];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 preferredFontDescriptorWithTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F1D8, &qword_1E499B698);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E499B670;
  v7 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80BF0, &unk_1E49A5FB0);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_1E499B670;
  v9 = *MEMORY[0x1E69DB990];
  *(v8 + 32) = *MEMORY[0x1E69DB990];
  *(v8 + 40) = *MEMORY[0x1E69DB970];
  v10 = v5;
  v11 = v7;
  v12 = v9;
  v13 = sub_1E494975C(v8);
  swift_setDeallocating();
  sub_1E48C1338(v8 + 32, &qword_1ECF80BF8, &unk_1E49A3EE0);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C00, &unk_1E49A5FC0);
  *(inited + 40) = v13;
  sub_1E4949234(inited);
  swift_setDeallocating();
  sub_1E48C1338(inited + 32, &qword_1ECF7F1E8, &qword_1E49A3DF0);
  type metadata accessor for AttributeName(0);
  sub_1E48C3FBC();
  v14 = sub_1E4997E2C();

  v15 = [v10 fontDescriptorByAddingAttributes_];

  v16 = objc_allocWithZone(MEMORY[0x1E69946A8]);
  v17 = v15;
  v18 = [v16 init];
  v19 = [objc_opt_self() fontWithDescriptor:v17 size:a1];

  [v18 setFont_];
  [v18 setUppercase_];

  return v18;
}

id sub_1E494CC58()
{
  type metadata accessor for ClockFaceController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1ECF819A8 = result;
  return result;
}

uint64_t sub_1E494CCB0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = sub_1E4997EEC();
    v4 = v3;

    if (v2 == 0xD000000000000024 && 0x80000001E49A84E0 == v4)
    {
      LOBYTE(v1) = 1;
    }

    else
    {
      LOBYTE(v1) = sub_1E499884C();
    }
  }

  return v1 & 1;
}

uint64_t sub_1E494CDB8@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, void *a3@<X8>)
{
  *a3 = 0x403E000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C48, &qword_1E49A40C0);
  v6 = a2 & 1;
  sub_1E4961FB8(a1, v6, v7);
  v8 = sub_1E4953174();

  sub_1E4952DFC(v8);

  swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2 & 1;
  *(v9 + 25) = HIBYTE(a2) & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1E494DD28;
  *(v10 + 24) = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C50, &qword_1E49A40E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C58, &qword_1E49A40F0);
  sub_1E48C1B44(&qword_1ECF80C60, &qword_1ECF80C50, &qword_1E49A40E8, MEMORY[0x1E69E6338]);
  sub_1E48C1B44(&qword_1ECF80C68, &qword_1ECF80C58, &qword_1E49A40F0, MEMORY[0x1E6981810]);
  v11 = sub_1E4997C8C();
  v12 = MEMORY[0x1E691B530](v11, 0.5, 1.0, 0.0);
  sub_1E4961FB8(a1, v6, v13);
  v14 = sub_1E4953174();

  v15 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C70, &qword_1E49A40F8) + 36));
  *v15 = v12;
  v15[1] = v14;
  v16 = sub_1E499734C();
  LOBYTE(v14) = sub_1E49977CC();
  v17 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C78, &qword_1E49A4100) + 36);
  *v17 = v16;
  v17[8] = v14;
  if (qword_1ECF7EAF0 != -1)
  {
    swift_once();
  }

  v18 = qword_1ECF81920;
  v19 = sub_1E499782C();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80C80, &qword_1E49A4138);
  v22 = (a3 + *(result + 36));
  *v22 = KeyPath;
  v22[1] = v19;
  return result;
}

double sub_1E494D0AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W4>, uint64_t a5@<X8>)
{
  v9 = (a1 == 2) & (a4 >> 8);
  type metadata accessor for PlayViewModel(0);
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  v10 = sub_1E49971EC();
  v12 = v11;
  v13 = objc_opt_self();

  v14 = [v13 mainScreen];
  [v14 bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v27.origin.x = v16;
  v27.origin.y = v18;
  v27.size.width = v20;
  v27.size.height = v22;
  Height = CGRectGetHeight(v27);
  MEMORY[0x1E691AA70](0.0, Height);
  MEMORY[0x1E691AA70](0.0, -Height);
  v24 = sub_1E499724C();

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = a1;
  *(a5 + 24) = v9;
  *(a5 + 32) = v10;
  *(a5 + 40) = v12 & 1;
  *(a5 + 48) = v24;
  *(a5 + 56) = a2;
  *(a5 + 64) = a3;

  return result;
}

uint64_t sub_1E494D258@<X0>(void *a1@<X8>)
{
  if (*(v1 + 9))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E494CDB8(*v1, v2 | *(v1 + 8), a1);
}

double sub_1E494D280(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_1E494D2B0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1E499716C();
  return sub_1E48C2910;
}

void sub_1E494D338(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 24);
  v5 = *v1;
  v6 = v1[1];
  v20 = v5;
  v21 = v6;
  v22 = (v4 & 1) == 0;
  sub_1E494E210();
  sub_1E494E264();

  sub_1E499772C();
  v8 = v16;
  v7 = v17;
  sub_1E4961FB8(v2[4], *(v2 + 40), v9);
  v10 = sub_1E4950D30();

  v11 = v2[2];
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v11 < *(v10 + 16))
  {
    v12 = *(v10 + 8 * v11 + 32);

    v14[2] = a1;
    KeyPath = swift_getKeyPath();
    v18 = KeyPath;
    v19 = v12;
    MEMORY[0x1E691B530](2.0, 0.6, 0.0);
    sub_1E4997D0C();

    v14[1] = v14;
    MEMORY[0x1EEE9AC00](v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF0, &qword_1E49A4368);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF8, &qword_1E49A4370);
    sub_1E494E2C0();
    sub_1E494E488();
    sub_1E49979AC();

    sub_1E494E540(v8, v7);

    return;
  }

  __break(1u);
}

void sub_1E494D578(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  sub_1E4961FB8(*(a2 + 32), *(a2 + 40), a4);
  sub_1E495072C();
  v8 = v7;

  v9 = *(a2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *(v8 + 16))
  {
    v10 = *(v8 + 8 * v9 + 32);

    sub_1E4997DAC();
    v12 = v11;
    v14 = v13;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D38, &qword_1E49A4390);
    (*(*(v15 - 8) + 16))(a3, a1, v15);
    v16 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80CF8, &qword_1E49A4370) + 36));
    *v16 = v10;
    v16[1] = v12;
    v16[2] = v14;
    return;
  }

  __break(1u);
}

uint64_t sub_1E494D6C4@<X0>(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1E48D2EE4();

  v3 = sub_1E49978DC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80DA0, &qword_1E49A4508) + 36);
  v11 = *MEMORY[0x1E6981DF8];
  v12 = sub_1E4997D4C();
  result = (*(*(v12 - 8) + 104))(a1 + v10, v11, v12);
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = KeyPath;
  *(a1 + 40) = 0;
  return result;
}

double sub_1E494D7C4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D80, &qword_1E49A44B8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v34[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  KeyPath = swift_getKeyPath();
  v41 = a1;
  v36 = a1;
  v42 = a2;
  sub_1E48D2EE4();
  swift_bridgeObjectRetain_n();
  v38 = sub_1E49978DC();
  v39 = v11;
  v13 = v12;
  v35 = v14;
  sub_1E4997A6C();
  v15 = sub_1E4997A8C();

  if (qword_1ECF7EB48 != -1)
  {
    swift_once();
  }

  v16 = qword_1ECF819A8;
  v17 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D88, &qword_1E49A44F0) + 36);
  v18 = v16;
  sub_1E4997CDC();

  LOBYTE(v16) = sub_1E49977CC();
  v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D90, &qword_1E49A44F8) + 36)] = v16;
  *v10 = v15;
  v10[1] = 0xBFF0000000000000;
  v19 = swift_getKeyPath();
  v41 = v36;
  v42 = a2;
  v20 = sub_1E49978DC();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = sub_1E4997A3C();
  v28 = v10 + *(v37 + 36);
  *v28 = v20;
  *(v28 + 1) = v22;
  v28[16] = v24 & 1;
  *(v28 + 3) = v26;
  *(v28 + 4) = v19;
  v28[40] = 0;
  *(v28 + 6) = v27;
  sub_1E494EFE8(v10, v7);
  v30 = v38;
  v29 = v39;
  *a3 = v38;
  *(a3 + 8) = v13;
  LOBYTE(v19) = v35 & 1;
  *(a3 + 16) = v35 & 1;
  v31 = KeyPath;
  *(a3 + 24) = v29;
  *(a3 + 32) = v31;
  *(a3 + 40) = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D98, &qword_1E49A4500);
  sub_1E494EFE8(v7, a3 + *(v32 + 48));
  sub_1E48C14F4(v30, v13, v19);

  j__swift_retain(v31);
  sub_1E48C1338(v10, &qword_1ECF80D80, &qword_1E49A44B8);
  sub_1E48C1338(v7, &qword_1ECF80D80, &qword_1E49A44B8);
  sub_1E48C1564(v30, v13, v19);

  return j__swift_release(v31);
}

uint64_t sub_1E494DAEC@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a1 = sub_1E4997CEC();
  a1[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D70, &qword_1E49A44A8);
  sub_1E494D7C4(v5, v4, a1 + *(v7 + 44));
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D78, &qword_1E49A44B0);
  *(a1 + *(result + 36)) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1E494DB68@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for PlayViewModel(0);
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  result = sub_1E49971EC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E494DBE4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4997CEC();
  v5 = v4;
  type metadata accessor for PlayViewModel(0);
  sub_1E494EF48(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  result = sub_1E49971EC();
  *a1 = v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = result;
  *(a1 + 24) = v7 & 1;
  *(a1 + 25) = 1;
  return result;
}

unint64_t sub_1E494DC80(uint64_t a1)
{
  result = sub_1E494DCA8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E494DCA8()
{
  result = qword_1ECF80C28;
  if (!qword_1ECF80C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C28);
  }

  return result;
}

double sub_1E494DD28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(v4 + 25))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  return sub_1E494D0AC(a1, a2, a3, v5 | *(v4 + 24), a4);
}

uint64_t sub_1E494DD84(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1E494DDCC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E494DE38()
{
  result = qword_1ECF80C88;
  if (!qword_1ECF80C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C80, &qword_1E49A4138);
    sub_1E494DEF0();
    sub_1E48C1B44(&qword_1ECF7F698, &qword_1ECF7F688, &qword_1E499C148, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C88);
  }

  return result;
}

unint64_t sub_1E494DEF0()
{
  result = qword_1ECF80C90;
  if (!qword_1ECF80C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C78, &qword_1E49A4100);
    sub_1E494DF7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C90);
  }

  return result;
}

unint64_t sub_1E494DF7C()
{
  result = qword_1ECF80C98;
  if (!qword_1ECF80C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C70, &qword_1E49A40F8);
    sub_1E494E034();
    sub_1E48C1B44(&qword_1ECF80CC8, &qword_1ECF80CD0, &unk_1E49A4210, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80C98);
  }

  return result;
}

unint64_t sub_1E494E034()
{
  result = qword_1ECF80CA0;
  if (!qword_1ECF80CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80C48, &qword_1E49A40C0);
    sub_1E48C1B44(&qword_1ECF80CA8, &qword_1ECF80CB0, &qword_1E49A4200, MEMORY[0x1E697DDD0]);
    sub_1E494E0EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CA0);
  }

  return result;
}

unint64_t sub_1E494E0EC()
{
  result = qword_1ECF80CB8;
  if (!qword_1ECF80CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CC0, &qword_1E49A4208);
    sub_1E48C1B44(&qword_1ECF80C68, &qword_1ECF80C58, &qword_1E49A40F0, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CB8);
  }

  return result;
}

unint64_t sub_1E494E1A0()
{
  result = qword_1ECF80CD8;
  if (!qword_1ECF80CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CD8);
  }

  return result;
}

unint64_t sub_1E494E210()
{
  result = qword_1ECF80CE0;
  if (!qword_1ECF80CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CE0);
  }

  return result;
}

unint64_t sub_1E494E264()
{
  result = qword_1ECF80CE8;
  if (!qword_1ECF80CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80CE8);
  }

  return result;
}

unint64_t sub_1E494E2C0()
{
  result = qword_1ECF80D00;
  if (!qword_1ECF80D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF0, &qword_1E49A4368);
    sub_1E494E378();
    sub_1E48C1B44(&qword_1ECF7EED8, &qword_1ECF7EEE0, &qword_1E499B038, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D00);
  }

  return result;
}

unint64_t sub_1E494E378()
{
  result = qword_1ECF80D08;
  if (!qword_1ECF80D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D10, &qword_1E49A4378);
    sub_1E494E3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D08);
  }

  return result;
}

unint64_t sub_1E494E3FC()
{
  result = qword_1ECF80D18;
  if (!qword_1ECF80D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D20, &unk_1E49A4380);
    sub_1E494E210();
    sub_1E494E264();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D18);
  }

  return result;
}

unint64_t sub_1E494E488()
{
  result = qword_1ECF80D28;
  if (!qword_1ECF80D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80CF8, &qword_1E49A4370);
    sub_1E48C1B44(&qword_1ECF80D30, &qword_1ECF80D38, &qword_1E49A4390, MEMORY[0x1E697FEC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80D28);
  }

  return result;
}

void sub_1E494E548(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, __n128 a6)
{
  v109 = a6;
  v108 = a5;
  v107 = a4;
  v106 = a3;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D40, &qword_1E49A4398);
  v8 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v10 = (&v93 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D48, &qword_1E49A43A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v103 = &v93 - v15;
  v16 = sub_1E49972DC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v111 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D50, &qword_1E49A43A8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v93 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D58, &qword_1E49A43B0);
  MEMORY[0x1EEE9AC00](v102);
  v94 = &v93 - v21;
  v113 = sub_1E49972CC();
  v100 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v98 = &v93 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v93 - v24;
  v26 = sub_1E494EF48(qword_1ECF7F5A8, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D8]);
  v27 = sub_1E499828C();
  v28 = MEMORY[0x1E69E7CC0];
  v112 = v13;
  v110 = v25;
  v99 = v10;
  if (v27)
  {
    v29 = v27;
    v101 = v17;
    v116 = MEMORY[0x1E69E7CC0];
    sub_1E4906F38(0, v27 & ~(v27 >> 63), 0);
    v30 = v116;
    v31 = a1;
    sub_1E499827C();
    if (v29 < 0)
    {
      goto LABEL_30;
    }

    v97 = v8;
    v32 = (v100 + 2);
    v33 = v100 + 1;
    do
    {
      v34 = v31;
      v35 = sub_1E49982CC();
      v36 = v110;
      v37 = v113;
      (*v32)(v110);
      v35(v115, 0);
      sub_1E499735C();
      LOBYTE(v115[0]) = v38 & 1;
      v114 = v39 & 1;
      sub_1E49972AC();
      v41 = v40;
      v43 = v42;
      (*v33)(v36, v37);
      v116 = v30;
      v44 = v16;
      v46 = *(v30 + 16);
      v45 = *(v30 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1E4906F38((v45 > 1), v46 + 1, 1);
        v30 = v116;
      }

      *(v30 + 16) = v46 + 1;
      v47 = v30 + 16 * v46;
      *(v47 + 32) = v41;
      *(v47 + 40) = v43;
      v31 = v34;
      sub_1E49982BC();
      --v29;
      v16 = v44;
    }

    while (v29);
    a1 = v34;
    v13 = v112;
    v25 = v110;
    v28 = v30;
    v8 = v97;
    v17 = v101;
  }

  v48 = *(v28 + 16);
  v49 = v109.n128_f64[0];
  if (v48)
  {
    if (v48 > 4)
    {
      v51 = *(v28 + 16) & 3;
      if ((v48 & 3) == 0)
      {
        v51 = 4;
      }

      v50 = v48 - v51;
      v52 = vdupq_lane_s64(v109.n128_i64[0], 0);
      v53 = (v28 + 64);
      v54 = v50;
      v49 = v109.n128_f64[0];
      do
      {
        v55 = v53 - 4;
        v56 = vld2q_f64(v55);
        v57 = vld2q_f64(v53);
        v58 = vsubq_f64(v56, v52);
        v59 = vsubq_f64(v57, v52);
        v49 = v49 + v58.f64[0] + v58.f64[1] + v59.f64[0] + v59.f64[1];
        v53 += 8;
        v54 -= 4;
      }

      while (v54);
    }

    else
    {
      v50 = 0;
      v49 = v109.n128_f64[0];
    }

    v60 = v48 - v50;
    v61 = (v28 + 16 * v50 + 32);
    do
    {
      v62 = *v61;
      v61 += 2;
      v49 = v49 + v62 - v109.n128_f64[0];
      --v60;
    }

    while (v60);
  }

  v117.origin.x = a2;
  v117.origin.y = v106;
  v117.size.width = v107;
  v117.size.height = v108;
  v63 = v28;
  v64 = (CGRectGetWidth(v117) - v49) * 0.5;
  v65 = v104;
  (*(v17 + 16))(v104, a1, v16);
  (*(v17 + 32))(v111, v65, v16);
  sub_1E494EF48(&qword_1ECF80D60, MEMORY[0x1E697E3C0], MEMORY[0x1E697E3D0]);
  v66 = v94;
  v104 = v16;
  sub_1E499805C();
  v96 = *(v102 + 36);
  *(v66 + v96) = 0;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D68, &qword_1E49A43B8);
  v102 = 0;
  v68 = *(v67 + 36);
  v97 = (v100 + 2);
  v111 = (v100 + 4);
  v69 = (v8 + 7);
  v70 = (v8 + 6);
  v101 = v63;
  v71 = v63 + 32;
  v72 = v68;
  ++v100;
  v95 = v71;
  while (1)
  {
    sub_1E49982AC();
    if (*(v66 + v72) == v115[0])
    {
      v73 = v105;
      (*v69)(v13, 1, 1, v105);
    }

    else
    {
      v74 = v70;
      v75 = v69;
      v76 = sub_1E49982CC();
      v77 = v98;
      v78 = v113;
      (*v97)(v98);
      v76(v115, 0);
      v79 = v26;
      sub_1E49982BC();
      v73 = v105;
      v80 = *(v105 + 48);
      v81 = v99;
      v82 = v102;
      *v99 = v102;
      (*v111)(v81 + v80, v77, v78);
      v83 = __OFADD__(v82, 1);
      v84 = v82 + 1;
      if (v83)
      {
        goto LABEL_29;
      }

      v102 = v84;
      *(v66 + v96) = v84;
      v85 = v81;
      v13 = v112;
      sub_1E48C15C8(v85, v112, &qword_1ECF80D40, &qword_1E49A4398);
      v69 = v75;
      (*v75)(v13, 0, 1, v73);
      v25 = v110;
      v26 = v79;
      v70 = v74;
      v71 = v95;
    }

    v86 = v13;
    v87 = v103;
    sub_1E48C15C8(v86, v103, &qword_1ECF80D48, &qword_1E49A43A0);
    if ((*v70)(v87, 1, v73) == 1)
    {
      sub_1E48C1338(v66, &qword_1ECF80D58, &qword_1E49A43B0);

      return;
    }

    v88 = v87;
    v89 = *v87;
    (*v111)(v25, &v88[*(v73 + 48)], v113);
    if ((v89 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v89 >= *(v101 + 16))
    {
      goto LABEL_28;
    }

    v90 = *(v71 + 16 * v89);
    v118.origin.x = a2;
    v118.origin.y = v106;
    v118.size.width = v107;
    v118.size.height = v108;
    CGRectGetHeight(v118);
    sub_1E4997DAC();
    sub_1E499735C();
    LOBYTE(v115[0]) = v91 & 1;
    LOBYTE(v116) = v92 & 1;
    sub_1E49972BC();
    (*v100)(v25, v113);
    v64 = v64 + v90 - v109.n128_f64[0];
    v13 = v112;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

uint64_t sub_1E494EF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E494EFE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80D80, &qword_1E49A44B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E494F058()
{
  result = qword_1ECF80DA8;
  if (!qword_1ECF80DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80D78, &qword_1E49A44B0);
    sub_1E48C1B44(&qword_1ECF80DB0, &qword_1ECF80DB8, &unk_1E49A4510, MEMORY[0x1E6981880]);
    sub_1E48C1B44(&qword_1ECF80478, &qword_1ECF80480, &qword_1E49A2568, MEMORY[0x1E697FDC0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DA8);
  }

  return result;
}

unint64_t sub_1E494F13C()
{
  result = qword_1ECF80DC0;
  if (!qword_1ECF80DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF80DA0, &qword_1E49A4508);
    sub_1E494F1C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DC0);
  }

  return result;
}

unint64_t sub_1E494F1C8()
{
  result = qword_1ECF80DC8;
  if (!qword_1ECF80DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DC8);
  }

  return result;
}

uint64_t sub_1E494F21C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);
  sub_1E4996FCC();

  v4 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  return sub_1E49184D8(v3 + v4, a2);
}

uint64_t sub_1E494F2E4(uint64_t a1)
{
  v2 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E49184D8(a1, v4);
  return sub_1E48B8534(v4);
}

uint64_t sub_1E494F370@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E18, &qword_1E49A48D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49530CC();
  sub_1E49989BC();
  if (!v2)
  {
    sub_1E48EB55C();
    sub_1E499878C();
    (*(v6 + 8))(v8, v5);
    v9 = v22;
    v28 = v21;
    v29 = v22;
    v10 = v23;
    v30 = v23;
    v11 = v17;
    v12 = v18;
    v24 = v17;
    v25 = v18;
    v13 = v20;
    v14 = v19;
    v26 = v19;
    v27 = v20;
    *(a2 + 64) = v21;
    *(a2 + 80) = v9;
    *(a2 + 96) = v10;
    *a2 = v11;
    *(a2 + 16) = v12;
    *(a2 + 32) = v14;
    *(a2 + 48) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1E494F528(uint64_t a1)
{
  v2 = sub_1E49530CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E494F564(uint64_t a1)
{
  v2 = sub_1E49530CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E494F5B8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E28, &unk_1E49A48D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E49530CC();
  sub_1E49989CC();
  sub_1E48EB5B0();
  sub_1E49987DC();
  return (*(v3 + 8))(v5, v2);
}

double sub_1E494F6FC(uint64_t a1)
{
  if (*(v1 + 16) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }

  return result;
}

double sub_1E494F830(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24) == a1 && *(v2 + 32) == a2;
  if (v5 || (sub_1E499884C() & 1) != 0)
  {
    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }

  return result;
}

void sub_1E494F990(char a1)
{
  v2 = a1 & 1;
  swift_beginAccess();
  if (*(v1 + 161) == v2)
  {
    *(v1 + 161) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }
}

void sub_1E494FAB4(char a1)
{
  if (*(v1 + 162) == (a1 & 1))
  {
    *(v1 + 162) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }
}

uint64_t sub_1E494FBC4(uint64_t a1)
{
  swift_beginAccess();
  sub_1E48C9C40(v1 + 64, v6);
  v3 = _s11ClockPoster0A8FaceLookO2eeoiySbAC_ACtFZ_0();
  sub_1E48C9D60(v6);
  if (v3)
  {
    sub_1E48C9C40(a1, v6);
    swift_beginAccess();
    sub_1E49543B0(v6, v1 + 64);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v6[0] = v1;
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }

  return sub_1E48C9D60(a1);
}

uint64_t sub_1E494FD38()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();
}

uint64_t sub_1E494FDDC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *a2 = *(v3 + 16);
}

uint64_t sub_1E494FE88()
{
  v1 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  v13 = v0;
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  v4 = *(v0 + 16);
  swift_getKeyPath();
  v13 = v4;
  sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);

  sub_1E4996FCC();

  v5 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
  swift_beginAccess();
  sub_1E49184D8(v4 + v5, v3);

  v6 = sub_1E4997F6C();
  v7 = *v3;
  v8 = v3[1];
  if (v6 == 2)
  {
  }

  else
  {
    v11 = 9142498;
    v12 = 0xA300000000000000;
    MEMORY[0x1E691B7A0](v7, v8);
    v7 = v11;
  }

  sub_1E48DBE0C(v3);
  return v7;
}

uint64_t sub_1E4950070()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  v1 = *(v0 + 24);

  return v1;
}

double sub_1E4950120@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  v4 = *(v3 + 32);
  *a2 = *(v3 + 24);
  a2[1] = v4;

  return result;
}

double sub_1E49501CC()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  return result;
}

double sub_1E4950270@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *a2 = *(v3 + 40);

  return result;
}

double sub_1E495031C(uint64_t a1)
{
  if (!*(v1 + 40))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();

    return result;
  }

  if (!a1 || (sub_1E498DA54(*(v1 + 40), a1) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 40) = a1;

  return result;
}

double sub_1E4950474()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  return result;
}

double sub_1E4950518@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *a2 = *(v3 + 48);

  return result;
}

double sub_1E49505C4(uint64_t a1)
{
  if (!*(v1 + 48))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  v6 = sub_1E498DAE4(v3, a1, v4, v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 48) = a1;

  return result;
}

void sub_1E495072C()
{
  v1 = v0;
  v2 = sub_1E494FE88();
  v4 = v3;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  if (v2 == *(v0 + 24) && v4 == *(v0 + 32))
  {
  }

  else
  {
    v6 = sub_1E499884C();

    if ((v6 & 1) == 0)
    {
      if (*(v1 + 40))
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1E4996FBC();
      }

      if (*(v1 + 48))
      {
        v8 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v8);
        sub_1E4996FBC();
      }

      v9 = sub_1E494FE88();
      sub_1E494F830(v9, v10);
    }
  }

  swift_getKeyPath();
  sub_1E4996FCC();

  if (*(v1 + 48))
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
  v11 = swift_allocObject();
  v12 = _swift_stdlib_malloc_size(v11);
  v13 = v12 - 32;
  if (v12 < 32)
  {
    v13 = v12 - 25;
  }

  *(v11 + 16) = 10;
  *(v11 + 24) = 2 * (v13 >> 3);
  *(v11 + 32) = xmmword_1E49A4520;
  *(v11 + 48) = xmmword_1E49A4530;
  *(v11 + 64) = xmmword_1E49A4540;
  *(v11 + 80) = xmmword_1E499B670;
  *(v11 + 96) = xmmword_1E49A4550;
  sub_1E4952BC0();
  if (*(v11 + 16) >= 5uLL)
  {
    sub_1E4953FD8(v11 + 32, 0, 0xBuLL, sub_1E4950A5C);

    sub_1E49505C4(v14);
LABEL_17:

    return;
  }

  __break(1u);
}

double sub_1E4950A5C@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.0174532925;
  *a2 = result;
  return result;
}

double sub_1E4950A78()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  return result;
}

double sub_1E4950B1C@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *a2 = *(v3 + 56);

  return result;
}

double sub_1E4950BC8(uint64_t a1)
{
  if (!*(v1 + 56))
  {
    if (!a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();

    return result;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1E498D730(v3, a1);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + 56) = a1;

  return result;
}

uint64_t sub_1E4950D30()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v26 - v3);
  v5 = sub_1E499708C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v33[0] = v0;
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  if (*(v0 + 56))
  {
    v9 = *(v0 + 56);
LABEL_6:

    return v9;
  }

  v30 = v8;
  v31 = v5;
  v29 = v6;
  v10 = sub_1E495434C(&qword_1ECF80E10, type metadata accessor for PlayViewModel, &unk_1E49A481C);
  v11 = *(v10 + 40);
  v12 = type metadata accessor for PlayViewModel(0);
  v11(v33, v12, v10);
  v13 = sub_1E4953710(v33);
  sub_1E48C8360(v33);
  sub_1E4950BC8(v13);
  swift_getKeyPath();
  v33[0] = v1;
  sub_1E4996FCC();

  if (!*(v1 + 56))
  {
    v26 = v12;
    v27 = v10;
    v28 = v11;
    if (qword_1EE2BB450 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  swift_getKeyPath();
  v33[0] = v1;
  sub_1E4996FCC();

  v9 = *(v1 + 56);
  if (v9)
  {

    goto LABEL_6;
  }

  __break(1u);
LABEL_12:
  (*(v29 + 32))(v30, v4, v31);
  while (1)
  {

    v4 = sub_1E499706C();
    v18 = sub_1E499830C();

    if (os_log_type_enabled(v4, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      v28(v33, v26, v27);
      v21 = sub_1E48C60D0();
      v23 = v22;
      sub_1E48C8360(v33);
      v24 = sub_1E48CA094(v21, v23, &v32);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_1E48B0000, v4, v18, "unsupported look for Play: %s, choosing default", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x1E691CED0](v20, -1, -1);
      MEMORY[0x1E691CED0](v19, -1, -1);
    }

    (*(v29 + 8))(v30, v31);
    v25 = sub_1E48D5B04();
    if (*(v25 + 16))
    {
      break;
    }

    __break(1u);
LABEL_17:
    swift_once();
LABEL_8:
    v15 = qword_1EE2BB458;
    v16 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48CC978(v15 + v16, v4);
    v17 = *(v29 + 48);
    if (v17(v4, 1, v31) != 1)
    {
      goto LABEL_12;
    }

    sub_1E4904BF4(v30);
    if (v17(v4, 1, v31) != 1)
    {
      sub_1E48EF578(v4);
    }
  }

  sub_1E48C8304(v25 + 32, v33);

  result = sub_1E49986DC();
  __break(1u);
  return result;
}

uint64_t sub_1E495126C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9C40(v1 + 64, a1);
}

uint64_t sub_1E495132C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  swift_beginAccess();
  return sub_1E48C9C40(v3 + 64, a2);
}

uint64_t sub_1E49513EC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1E49543E8(a2, a1 + 64);
  return swift_endAccess();
}

uint64_t sub_1E49514A0()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  swift_beginAccess();
  return *(v0 + 161);
}

void sub_1E4951554(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  swift_beginAccess();
  *a2 = *(v3 + 161);
}

uint64_t (*sub_1E4951610(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11ClockPoster13PlayViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1E4996FEC();

  v4[7] = sub_1E4951450(v4);
  return sub_1E4951748;
}

void sub_1E4951748(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E4996FDC();

  free(v1);
}

uint64_t sub_1E49517DC()
{
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  return *(v0 + 162);
}

void sub_1E495187C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  *a2 = *(v3 + 162);
}

uint64_t sub_1E4951924()
{

  sub_1E48C9D60(v0 + 64);
  v1 = OBJC_IVAR____TtC11ClockPoster13PlayViewModel___observationRegistrar;
  v2 = sub_1E499700C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PlayViewModel(uint64_t a1)
{
  result = qword_1ECF80DD8;
  if (!qword_1ECF80DD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E4951A44(uint64_t a1)
{
  result = sub_1E499700C();
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

unint64_t sub_1E4951B20(uint64_t a1)
{
  result = sub_1E4951B48();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4951B48()
{
  result = qword_1ECF80DE8;
  if (!qword_1ECF80DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DE8);
  }

  return result;
}

unint64_t sub_1E4951B9C(void *a1)
{
  a1[1] = sub_1E4951BDC();
  a1[2] = sub_1E4951C30();
  a1[3] = sub_1E4951C84();
  result = sub_1E4951CD8();
  a1[4] = result;
  return result;
}

unint64_t sub_1E4951BDC()
{
  result = qword_1ECF80DF0;
  if (!qword_1ECF80DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DF0);
  }

  return result;
}

unint64_t sub_1E4951C30()
{
  result = qword_1ECF80DF8;
  if (!qword_1ECF80DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80DF8);
  }

  return result;
}

unint64_t sub_1E4951C84()
{
  result = qword_1ECF80E00;
  if (!qword_1ECF80E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E00);
  }

  return result;
}

unint64_t sub_1E4951CD8()
{
  result = qword_1ECF80E08;
  if (!qword_1ECF80E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E08);
  }

  return result;
}

void (*sub_1E4951D34(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1E4951610(v2);
  return sub_1E48C2910;
}

uint64_t sub_1E4951DA8(uint64_t a1)
{
  result = sub_1E495434C(&qword_1ECF80E10, type metadata accessor for PlayViewModel, &unk_1E49A481C);
  *(a1 + 8) = result;
  return result;
}

char *sub_1E4951E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E40, &qword_1E49A4A08);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4951F30(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E48, &qword_1E49A4A10);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4952050(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E50, &qword_1E49A4A18);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E495215C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E58, &unk_1E49A4A20);
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

void *sub_1E4952260(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD10, &unk_1E49A49F0);
  v10 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
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
  v15 = *(type metadata accessor for WorldViewModel.Pin(0) - 8);
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

void *sub_1E495245C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1E49525A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC10, &qword_1E499E578);
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

char *sub_1E49526A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD48, &unk_1E49A02A0);
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

char *sub_1E49527AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD80, &qword_1E49A02F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1E49528A0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EF40, &qword_1E49A4B50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E49529AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FC08, &unk_1E499E510);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E4952ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7FD30, &unk_1E49A0DB0);
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

void sub_1E4952BC0()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x1E691CEE0](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x1E691CEE0](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = *&v1[8 * v4 + 32];
        v11 = *&v1[8 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1E4952DE8(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_22;
        }

        *&v1[8 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_1E4952D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_13:
    v6 = 0;
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_15:
    v7 = a4;
LABEL_18:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if (a3 < 0)
  {
    goto LABEL_20;
  }

  v5 = 0;
  v6 = 0;
  v7 = a4;
  while (1)
  {
    if (v6)
    {
      v6 = 1;
      a3 = v5;
      goto LABEL_18;
    }

    v6 = v7 == a5;
    if (v7 == a5)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

LABEL_9:
    *(a2 + 8 * v5) = v7;
    if (a3 - 1 == v5)
    {
      v7 = v8;
      goto LABEL_18;
    }

    ++v5;
    v7 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_1E4952DFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x1E69E7CC0] + 32);
    v6 = (a1 + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {

        v9 = __OFSUB__(v4--, 1);
        if (v9)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v10 = v2[3];
        if (((v10 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
        if (v11 <= 1)
        {
          v12 = 1;
        }

        else
        {
          v12 = v11;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E78, &qword_1E49A4B58);
        v13 = swift_allocObject();
        v14 = (_swift_stdlib_malloc_size(v13) - 32) / 24;
        v13[2] = v12;
        v13[3] = 2 * v14;
        v15 = v13 + 4;
        v16 = v2[3] >> 1;
        v5 = &v13[3 * v16 + 4];
        v17 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;
        if (v2[2])
        {
          if (v13 != v2 || v15 >= &v2[3 * v16 + 4])
          {
            memmove(v15, v2 + 4, 24 * v16);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v13;
        v9 = __OFSUB__(v17, 1);
        v4 = v17 - 1;
        if (v9)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v19 = v2[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v9 = __OFSUB__(v20, v4);
    v21 = v20 - v4;
    if (v9)
    {
      goto LABEL_30;
    }

    v2[2] = v21;
  }
}

void sub_1E4952FAC(char a1)
{
  if (*(v1 + 162) == (a1 & 1))
  {
    *(v1 + 162) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
    sub_1E4996FBC();
  }
}

unint64_t sub_1E49530CC()
{
  result = qword_1ECF80E20;
  if (!qword_1ECF80E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E20);
  }

  return result;
}

void sub_1E4953120()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_beginAccess();
  *(v1 + 161) = v2;
}

char *sub_1E4953174()
{
  v1 = v0;
  v2 = type metadata accessor for TimeString(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E494FE88();
  v7 = v6;
  swift_getKeyPath();
  v37 = v0;
  v8 = sub_1E495434C(&qword_1ECF80C30, type metadata accessor for PlayViewModel, "i]O\n");
  sub_1E4996FCC();

  if (v5 == v0[3] && v7 == v0[4])
  {
  }

  else
  {
    v9 = sub_1E499884C();

    if ((v9 & 1) == 0)
    {
      if (v1[5])
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        *(&v31 - 2) = v1;
        *(&v31 - 1) = 0;
        v37 = v1;
        sub_1E4996FBC();
      }

      if (v1[6])
      {
        v11 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v11);
        *(&v31 - 2) = v1;
        *(&v31 - 1) = 0;
        v37 = v1;
        sub_1E4996FBC();
      }

      v12 = sub_1E494FE88();
      sub_1E494F830(v12, v13);
    }
  }

  swift_getKeyPath();
  v37 = v1;
  sub_1E4996FCC();

  result = v1[5];
  if (!result)
  {
    swift_getKeyPath();
    v37 = v1;
    sub_1E4996FCC();

    v15 = v1[2];
    swift_getKeyPath();
    v37 = v15;
    sub_1E495434C(&qword_1ECF7EC58, type metadata accessor for RollingClockViewModel, &unk_1E499A2B8);

    sub_1E4996FCC();

    v16 = OBJC_IVAR____TtC11ClockPoster21RollingClockViewModel__timeString;
    swift_beginAccess();
    sub_1E49184D8(v15 + v16, v4);

    v17 = sub_1E4997F6C();
    v19 = *v4;
    v18 = v4[1];
    if (v17 == 2)
    {
    }

    else
    {
      v35 = 9142498;
      v36 = 0xA300000000000000;
      MEMORY[0x1E691B7A0](v19, v18);
    }

    sub_1E48DBE0C(v4);
    v20 = sub_1E4997F6C();
    if (v20)
    {
      v21 = v20;
      v33 = v8;
      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      result = sub_1E4906E58(0, v20 & ~(v20 >> 63), 0);
      if (v21 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }

      v22 = v35;
      do
      {
        v23 = sub_1E499802C();
        v35 = v22;
        v26 = *(v22 + 16);
        v25 = *(v22 + 24);
        if (v26 >= v25 >> 1)
        {
          v32 = v23;
          v28 = v24;
          sub_1E4906E58((v25 > 1), v26 + 1, 1);
          v24 = v28;
          v23 = v32;
          v22 = v35;
        }

        *(v22 + 16) = v26 + 1;
        v27 = v22 + 16 * v26;
        *(v27 + 32) = v23;
        *(v27 + 40) = v24;
        sub_1E4997F7C();
        --v21;
      }

      while (v21);

      v29 = v1[5];
      if (!v29)
      {
        goto LABEL_25;
      }
    }

    else
    {

      v22 = MEMORY[0x1E69E7CC0];
      v29 = v1[5];
      if (!v29)
      {
        goto LABEL_25;
      }
    }

    if (sub_1E498DA54(v29, v22))
    {
      v1[5] = v22;

      goto LABEL_26;
    }

LABEL_25:
    v30 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v30);
    *(&v31 - 2) = v1;
    *(&v31 - 1) = v22;
    v35 = v1;
    sub_1E4996FBC();

LABEL_26:
    swift_getKeyPath();
    v35 = v1;
    sub_1E4996FCC();

    result = v1[5];
    if (result)
    {
      return result;
    }

LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4953710(uint64_t a1)
{
  sub_1E48C8304(a1, v63);
  if (v65 == 2)
  {

    sub_1E48B7448(v63, v60);
    sub_1E48B7448(&v64, v57);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E30, &qword_1E49A4910);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E49A4560;
    v26 = v61;
    v27 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v28 = (*(v27 + 56))(v26, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = 0x4063200000000000;
    v30 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE188;
    v56 = v29;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_10;
    v31 = _Block_copy(&aBlock);
    [v30 initWithDynamicProvider_];
    _Block_release(v31);

    *(v1 + 32) = sub_1E49979DC();
    v32 = v58;
    v33 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v34 = (*(v33 + 40))(v32, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    *(v35 + 24) = 0x4063200000000000;
    v36 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v35;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_72;
    v37 = _Block_copy(&aBlock);
    [v36 initWithDynamicProvider_];
    _Block_release(v37);

    *(v1 + 40) = sub_1E49979DC();
    *(v1 + 48) = sub_1E4997A4C();
    v38 = v61;
    v39 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v40 = (*(v39 + 40))(v38, v39);
    v41 = swift_allocObject();
    *(v41 + 16) = v40;
    *(v41 + 24) = 0x4063200000000000;
    v42 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v41;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_79;
    v43 = _Block_copy(&aBlock);
    [v42 initWithDynamicProvider_];
    _Block_release(v43);

    *(v1 + 56) = sub_1E49979DC();
    v44 = v58;
    v45 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v46 = (*(v45 + 56))(v44, v45);
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    *(v47 + 24) = 0x4063200000000000;
    v48 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_86;
    v49 = _Block_copy(&aBlock);
    [v48 initWithDynamicProvider_];
    _Block_release(v49);

    *(v1 + 64) = sub_1E49979DC();
    __swift_destroy_boxed_opaque_existential_0Tm(v57);
  }

  else
  {
    if (v65)
    {
      sub_1E48C8360(v63);
      return 0;
    }

    sub_1E48B7448(v63, v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E30, &qword_1E49A4910);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E49A4560;
    v2 = v61;
    v3 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v4 = (*(v3 + 56))(v2, v3);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0x4063200000000000;
    v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v5;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_93;
    v7 = _Block_copy(&aBlock);
    [v6 initWithDynamicProvider_];
    _Block_release(v7);

    *(v1 + 32) = sub_1E49979DC();
    v8 = v61;
    v9 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v10 = (*(v9 + 40))(v8, v9);
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0x4063200000000000;
    v12 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v11;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_100;
    v13 = _Block_copy(&aBlock);
    [v12 initWithDynamicProvider_];
    _Block_release(v13);

    *(v1 + 40) = sub_1E49979DC();
    *(v1 + 48) = sub_1E4997A4C();
    v14 = v61;
    v15 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v16 = (*(v15 + 56))(v14, v15);
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0x4063200000000000;
    v18 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v17;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_107;
    v19 = _Block_copy(&aBlock);
    [v18 initWithDynamicProvider_];
    _Block_release(v19);

    *(v1 + 56) = sub_1E49979DC();
    v20 = v61;
    v21 = v62;
    __swift_project_boxed_opaque_existential_1(v60, v61);
    v22 = (*(v21 + 40))(v20, v21);
    v23 = swift_allocObject();
    *(v23 + 16) = v22;
    *(v23 + 24) = 0x4063200000000000;
    v24 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v55 = sub_1E48CE240;
    v56 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v52 = 1107296256;
    v53 = sub_1E4923F24;
    v54 = &block_descriptor_114;
    v25 = _Block_copy(&aBlock);
    [v24 initWithDynamicProvider_];
    _Block_release(v25);

    *(v1 + 64) = sub_1E49979DC();
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v60);
  return v1;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1E4953F9C()
{
  *(*(v0 + 16) + 56) = *(v0 + 24);
}

void sub_1E4953FD8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t *))
{
  v4 = a3 >> 1;
  v5 = (a3 >> 1) - a2;
  if (__OFSUB__(a3 >> 1, a2))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = a2;
  v47 = a3 >> 1;
  if (v5)
  {
    if (v5 <= 0)
    {
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E38, &qword_1E49A4998);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    v11 = v10 - 32;
    if (v10 < 32)
    {
      v11 = v10 - 25;
    }

    v9[2] = v5;
    v9[3] = 2 * (v11 >> 3);
    if (v5 < 0)
    {
LABEL_40:
      __break(1u);
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = v9[3];
      v15 = v9 + 4;
      if (v7 <= v4)
      {
        v16 = v4;
      }

      else
      {
        v16 = v7;
      }

      v17 = v16 - v7;
      v18 = v7;
      v19 = (v14 >> 1) | 0x8000000000000000;
      v46 = a1;
      v44 = v14 >> 1;
      v45 = v18;
      v20 = a1 + 8 * v18;
      while (v5 != v13)
      {
        if (v17 == v13)
        {
          goto LABEL_42;
        }

        v49 = *(v20 + 8 * v13);
        a4(&v48, &v49);
        if (v19 == v13)
        {
          goto LABEL_43;
        }

        v21 = v13 + 1;
        v15[v13] = v48;
        v12 -= 8;
        v13 = v21;
        if (v5 == v21)
        {
          v7 = v45;
          v22 = v44 - v21;
          v23 = &v15[v12 / 0xFFFFFFFFFFFFFFF8];
          v24 = v45 + v21;
          a1 = v46;
          goto LABEL_17;
        }
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v9 = MEMORY[0x1E69E7CC0];
  v25 = *(MEMORY[0x1E69E7CC0] + 24);

  v23 = v9 + 4;
  v22 = v25 >> 1;
  v24 = v7;
LABEL_17:
  v26 = v47 - v24;
  if (v47 != v24)
  {
    if (v47 <= v24)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    if (v24 < v7)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v27 = (a1 + 8 * v24);
    do
    {
      v28 = *v27++;
      v49 = v28;
      a4(&v48, &v49);
      v29 = v48;
      if (!v22)
      {
        v30 = v9[3];
        if (((v30 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_45;
        }

        v31 = v30 & 0xFFFFFFFFFFFFFFFELL;
        if (v31 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80E38, &qword_1E49A4998);
        v33 = swift_allocObject();
        v34 = _swift_stdlib_malloc_size(v33);
        v35 = v34 - 32;
        if (v34 < 32)
        {
          v35 = v34 - 25;
        }

        v36 = v35 >> 3;
        v33[2] = v32;
        v33[3] = 2 * (v35 >> 3);
        v37 = (v33 + 4);
        v38 = v9[3] >> 1;
        if (v9[2])
        {
          v39 = v9 + 4;
          if (v33 != v9 || v37 >= v39 + 8 * v38)
          {
            memmove(v33 + 4, v39, 8 * v38);
          }

          v9[2] = 0;
        }

        v23 = (v37 + 8 * v38);
        v22 = (v36 & 0x7FFFFFFFFFFFFFFFLL) - v38;

        v9 = v33;
      }

      v40 = __OFSUB__(v22--, 1);
      if (v40)
      {
        goto LABEL_44;
      }

      *v23++ = v29;
    }

    while (--v26);
  }

  v41 = v9[3];
  if (v41 >= 2)
  {
    v42 = v41 >> 1;
    v40 = __OFSUB__(v42, v22);
    v43 = v42 - v22;
    if (v40)
    {
LABEL_49:
      __break(1u);
      return;
    }

    v9[2] = v43;
  }
}

void sub_1E495430C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_1E495434C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4954434()
{
  result = qword_1ECF80E60;
  if (!qword_1ECF80E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E60);
  }

  return result;
}

unint64_t sub_1E495448C()
{
  result = qword_1ECF80E68;
  if (!qword_1ECF80E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E68);
  }

  return result;
}

unint64_t sub_1E49544E4()
{
  result = qword_1ECF80E70;
  if (!qword_1ECF80E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF80E70);
  }

  return result;
}

void sub_1E4954538()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
}

void sub_1E4954574()
{
  *(*(v0 + 16) + 40) = *(v0 + 24);
}

char *sub_1E4954630()
{
  type metadata accessor for WorldDataProvider(0);
  swift_allocObject();
  result = sub_1E4954670();
  qword_1ECF819B0 = result;
  return result;
}

char *sub_1E4954670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80ED0, &qword_1E49A4C28);
  v1 = swift_allocObject();
  *(v1 + 16) = 1;
  type metadata accessor for CPUnfairLock();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC8];
  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  *(v1 + 40) = 0;
  *(v0 + 2) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80ED8, &qword_1E49A4C30);
  v4 = swift_allocObject();
  v5 = *(*v4 + 96);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  v7 = *(*v4 + 104);
  v8 = swift_allocObject();
  *(v4 + v7) = v8;
  *(v8 + 16) = 0;
  *(v4 + *(*v4 + 112)) = v3;
  *(v4 + *(*v4 + 120)) = 0;
  *(v0 + 3) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE0, &qword_1E49A4C38);
  v9 = swift_allocObject();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CD0];
  *(v10 + 16) = 0;
  *(v9 + 16) = v10;
  *(v9 + 24) = v11;
  *(v0 + 4) = v9;
  v12 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  v13 = type metadata accessor for City(0);
  (*(*(v13 - 8) + 56))(&v0[v12], 1, 1, v13);
  return v0;
}

uint64_t sub_1E4954870@<X0>(uint64_t a1@<X8>)
{
  v29[0] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB8, &qword_1E49A4C08);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = v29 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC0, &unk_1E49A4C10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = *(v1 + 16);
  v14 = *(v13 + 24);
  swift_beginAccess();

  os_unfair_lock_lock(v14 + 4);
  swift_endAccess();
  if (*(v13 + 40))
  {
    v15 = *(v13 + 24);
    swift_beginAccess();
    os_unfair_lock_unlock(v15 + 4);
    swift_endAccess();
    v16 = 1;
  }

  else
  {
    *(v13 + 40) = 1;
    v17 = *(v13 + 24);
    swift_beginAccess();
    os_unfair_lock_unlock(v17 + 4);
    swift_endAccess();
    v33 = 1;
    sub_1E4954D1C();
    v18 = *(v1 + 32);
    v19 = *(v18 + 16);
    swift_beginAccess();

    os_unfair_lock_lock(v19 + 4);
    swift_endAccess();
    swift_beginAccess();
    v20 = *(v18 + 16);
    v16 = *(v18 + 24);
    swift_beginAccess();

    os_unfair_lock_unlock(v20 + 4);
    swift_endAccess();
  }

  v33 = v16;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F8B8, &qword_1E499D7D0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v23(v12, 1, 1, v21);
  v24 = *(v13 + 24);
  swift_beginAccess();
  os_unfair_lock_lock(v24 + 4);
  v25 = swift_endAccess();
  v29[1] = v29;
  MEMORY[0x1EEE9AC00](v25);
  v29[-2] = v13;
  v29[-1] = &v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC8, &qword_1E49A4C20);
  (*(v30 + 104))(v4, *MEMORY[0x1E69E8650], v31);
  sub_1E49981BC();
  sub_1E48C1338(v12, &qword_1ECF80EC0, &unk_1E49A4C10);
  v23(v9, 0, 1, v21);
  sub_1E49583A8(v9, v12);
  v26 = *(v13 + 24);
  swift_beginAccess();
  os_unfair_lock_unlock(v26 + 4);
  swift_endAccess();
  v27 = v32;
  sub_1E48C12D0(v12, v32, &qword_1ECF80EC0, &unk_1E49A4C10);
  result = (*(v22 + 48))(v27, 1, v21);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    sub_1E48C1338(v12, &qword_1ECF80EC0, &unk_1E49A4C10);
    (*(v22 + 32))(v29[0], v27, v21);
    return sub_1E48EC714(v33);
  }

  return result;
}

void sub_1E4954D1C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v108 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v108 - v9;
  v133 = sub_1E499708C();
  v11 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v13 = (&v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v129 = &v108 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v108 - v17;
  v119 = type metadata accessor for City(0);
  MEMORY[0x1EEE9AC00](v119);
  v118 = (&v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v117 = &v108 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v116 = (&v108 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v108 - v25;
  v132 = sub_1E4996F4C();
  v27 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v128 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [objc_opt_self() sharedManager];
  if (!v29)
  {
    if (qword_1EE2BB450 != -1)
    {
LABEL_42:
      swift_once();
    }

    v98 = qword_1EE2BB458;
    v99 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v98 + v99, v4, &qword_1ECF7F008, &qword_1E499B170);
    v100 = *(v11 + 48);
    if (v100(v4, 1, v133) == 1)
    {
      sub_1E4904BF4(v13);
      if (v100(v4, 1, v133) != 1)
      {
        sub_1E48C1338(v4, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v11 + 32))(v13, v4, v133);
    }

    v101 = sub_1E499706C();
    v102 = sub_1E499830C();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v136 = v104;
      *v103 = 136446210;
      v105 = sub_1E48C60F8();
      v107 = sub_1E48CA094(v105, v106, &v136);

      *(v103 + 4) = v107;
      _os_log_impl(&dword_1E48B0000, v101, v102, "[%{public}s] WorldClockManager is nil. Cannot fetch world clock data.", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
      MEMORY[0x1E691CED0](v104, -1, -1);
      MEMORY[0x1E691CED0](v103, -1, -1);
    }

    (*(v11 + 8))(v13, v133);
    return;
  }

  v115 = v10;
  v30 = v29;
  [v29 loadCities];
  v13 = *(v1 + 32);
  isa = v13[2].isa;
  swift_beginAccess();

  os_unfair_lock_lock(isa + 4);
  swift_endAccess();
  swift_beginAccess();
  v13[3].isa = MEMORY[0x1E69E7CD0];

  v32 = v13[2].isa;
  swift_beginAccess();
  os_unfair_lock_unlock(v32 + 4);
  swift_endAccess();

  v109 = v30;
  v33 = [v30 cities];
  if (!v33)
  {
    goto LABEL_46;
  }

  v34 = v33;
  v35 = sub_1E49980BC();

  v131 = *(v35 + 16);
  if (!v131)
  {
LABEL_32:

    return;
  }

  v121 = v18;
  v37 = 0;
  v4 = (v35 + 32);
  v127 = (v11 + 48);
  v122 = (v11 + 32);
  v126 = (v11 + 8);
  v124 = (v27 + 48);
  v113 = (v27 + 32);
  v112 = (v27 + 16);
  v111 = (v27 + 8);
  *&v36 = 136446466;
  v110 = v36;
  *&v36 = 136446210;
  v114 = v36;
  v123 = v1;
  v125 = v7;
  v11 = v129;
  v120 = v26;
  v130 = v35;
  while (1)
  {
    if (v37 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_42;
    }

    sub_1E48CCF68(v4, &v135);
    sub_1E48D9CFC(0, &qword_1ECF80EA8, 0x1E69B2000);
    if (!swift_dynamicCast())
    {
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v49 = qword_1EE2BB458;
      v50 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v49 + v50, v7, &qword_1ECF7F008, &qword_1E499B170);
      v51 = *v127;
      if ((*v127)(v7, 1, v133) == 1)
      {
        sub_1E4904BF4(v11);
        if (v51(v7, 1, v133) != 1)
        {
          sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        (*v122)(v11, v7, v133);
      }

      v13 = sub_1E499706C();
      v52 = sub_1E499830C();

      if (os_log_type_enabled(v13, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v135 = v54;
        *v53 = v114;
        v55 = sub_1E48C60F8();
        v57 = sub_1E48CA094(v55, v56, &v135);

        *(v53 + 4) = v57;
        v11 = v129;
        _os_log_impl(&dword_1E48B0000, v13, v52, "[%{public}s] City from WorldClockManager is not the expected type, WorldClockCity.", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v54);
        v58 = v54;
        v7 = v125;
        MEMORY[0x1E691CED0](v58, -1, -1);
        MEMORY[0x1E691CED0](v53, -1, -1);
      }

      (*v126)(v11, v133);
      goto LABEL_6;
    }

    v13 = v134;
    v38 = [v134 timeZone];
    if (!v38)
    {
      break;
    }

    v39 = v38;
    sub_1E4997EEC();

    sub_1E4996EEC();

    v40 = v132;
    if ((*v124)(v26, 1, v132) == 1)
    {
      sub_1E48C1338(v26, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v41 = v115;
      v42 = v127;
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v43 = qword_1EE2BB458;
      v44 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      sub_1E48C12D0(v43 + v44, v41, &qword_1ECF7F008, &qword_1E499B170);
      v45 = *v42;
      if ((*v42)(v41, 1, v133) == 1)
      {
        v46 = v121;
        sub_1E4904BF4(v121);
        v47 = v45(v41, 1, v133);
        v48 = v46;
        if (v47 != 1)
        {
          sub_1E48C1338(v41, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v48 = v121;
        (*v122)(v121, v41, v133);
      }

      v88 = v13;
      v13 = sub_1E499706C();
      v89 = sub_1E499830C();

      if (os_log_type_enabled(v13, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v92 = swift_slowAlloc();
        v135 = v92;
        *v90 = v110;
        v93 = sub_1E48C60F8();
        v95 = sub_1E48CA094(v93, v94, &v135);

        *(v90 + 4) = v95;
        *(v90 + 12) = 2114;
        *(v90 + 14) = v88;
        *v91 = v88;
        v96 = v88;
        _os_log_impl(&dword_1E48B0000, v13, v89, "[%{public}s] TimeZone for %{public}@ is invalid.", v90, 0x16u);
        sub_1E48C1338(v91, &qword_1ECF7F718, &unk_1E499CA90);
        v97 = v91;
        v26 = v120;
        MEMORY[0x1E691CED0](v97, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v92);
        MEMORY[0x1E691CED0](v92, -1, -1);
        MEMORY[0x1E691CED0](v90, -1, -1);

        (*v126)(v121, v133);
      }

      else
      {

        (*v126)(v48, v133);
      }

      v7 = v125;
      v11 = v129;
    }

    else
    {
      (*v113)(v128, v26, v40);
      v59 = [v13 alCity];
      if (!v59)
      {
        goto LABEL_45;
      }

      v60 = v59;
      [v59 latitude];
      v62 = v61;
      [v60 longitude];
      v64 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v62 longitude:v63];
      v65 = [v13 name];
      if (!v65)
      {
        goto LABEL_44;
      }

      v66 = v65;
      v67 = sub_1E4997EEC();
      v69 = v68;

      v70 = v116;
      (*v112)(v116 + *(v119 + 24), v128, v132);
      *v70 = v67;
      v70[1] = v69;
      v70[2] = v64;
      v71 = v118;
      sub_1E4956D64(v70, v118);
      v72 = v123;
      v73 = *(v123 + 32);
      v74 = *(v73 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v74 + 4);
      swift_endAccess();
      swift_beginAccess();
      v75 = *(v73 + 16);
      v76 = *(v73 + 24);
      swift_beginAccess();

      os_unfair_lock_unlock(v75 + 4);
      swift_endAccess();
      v134 = v76;
      v77 = v117;
      sub_1E4956EF8(v117, v71);
      sub_1E4956E2C(v77);
      v78 = v134;
      v79 = *(v73 + 16);
      swift_beginAccess();
      os_unfair_lock_lock(v79 + 4);
      swift_endAccess();
      *(v73 + 24) = v78;

      v80 = *(v73 + 16);
      swift_beginAccess();
      os_unfair_lock_unlock(v80 + 4);
      swift_endAccess();

      v81 = *(v72 + 16);
      v82 = *(v72 + 32);
      v83 = *(v82 + 16);
      swift_beginAccess();

      os_unfair_lock_lock(v83 + 4);
      swift_endAccess();
      swift_beginAccess();
      v84 = *(v82 + 16);
      v85 = *(v82 + 24);
      swift_beginAccess();

      os_unfair_lock_unlock(v84 + 4);
      swift_endAccess();

      v86 = *(v81 + 24);
      swift_beginAccess();
      os_unfair_lock_lock(v86 + 4);
      swift_endAccess();
      sub_1E4974B14(v85);

      v87 = *(v81 + 24);
      swift_beginAccess();
      os_unfair_lock_unlock(v87 + 4);
      swift_endAccess();

      sub_1E4955EEC();

      sub_1E4956E2C(v70);
      (*v111)(v128, v132);
      v7 = v125;
      v11 = v129;
      v26 = v120;
    }

LABEL_6:
    v35 = v130;
    ++v37;
    v4 += 32;
    if (v131 == v37)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

double sub_1E4955DA0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10[-v2];
  v4 = *(v0 + 24);
  v5 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  swift_beginAccess();
  sub_1E48C12D0(v0 + v5, v3, &qword_1ECF81570, &qword_1E49A4BF8);
  v6 = *(*v4 + 104);
  v7 = *(v4 + v6);
  swift_beginAccess();

  os_unfair_lock_lock(v7 + 4);
  swift_endAccess();
  sub_1E4973ED0(v3);
  v8 = *(v4 + v6);
  swift_beginAccess();
  os_unfair_lock_unlock(v8 + 4);
  swift_endAccess();
  sub_1E48C1338(v3, &qword_1ECF81570, &qword_1E49A4BF8);

  return result;
}

void sub_1E4955EEC()
{
  v105 = type metadata accessor for City(0);
  v1 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v96 = &v84 - v4;
  v5 = sub_1E4996D8C();
  v102 = *(v5 - 8);
  v103 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1E4996F4C();
  v92 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC78, &qword_1E499A388);
  MEMORY[0x1EEE9AC00](v86);
  v93 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v85 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v88 = &v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v89 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v84 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v84 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v84 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v84 - v28;
  v30 = OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity;
  swift_beginAccess();
  v90 = v30;
  v91 = v0;
  sub_1E48C12D0(v0 + v30, v29, &qword_1ECF81570, &qword_1E49A4BF8);
  v31 = v1;
  v32 = v105;
  v100 = *(v1 + 48);
  v101 = v1 + 48;
  LODWORD(v1) = v100(v29, 1, v105);
  v33 = v29;
  v34 = v102;
  v35 = v103;
  sub_1E48C1338(v33, &qword_1ECF81570, &qword_1E49A4BF8);
  v97 = v23;
  v98 = v7;
  v99 = v31;
  if (v1 != 1)
  {
    v36 = v9;
    sub_1E48C12D0(v91 + v90, v26, &qword_1ECF81570, &qword_1E49A4BF8);
    v37 = 1;
    v38 = v100(v26, 1, v32);
    v39 = v94;
    v40 = v92;
    v41 = v88;
    if (!v38)
    {
      (*(v92 + 16))(v88, &v26[*(v32 + 24)], v94);
      v37 = 0;
    }

    sub_1E48C1338(v26, &qword_1ECF81570, &qword_1E49A4BF8);
    v42 = *(v40 + 56);
    v42(v41, v37, 1, v39);
    v43 = v87;
    sub_1E4996F3C();
    v42(v43, 0, 1, v39);
    v44 = *(v86 + 48);
    v45 = v93;
    sub_1E48C12D0(v41, v93, &qword_1ECF7EC50, &qword_1E49A4BF0);
    sub_1E48C12D0(v43, &v45[v44], &qword_1ECF7EC50, &qword_1E49A4BF0);
    v46 = *(v40 + 48);
    if (v46(v45, 1, v39) == 1)
    {
      sub_1E48C1338(v43, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v47 = v93;
      sub_1E48C1338(v41, &qword_1ECF7EC50, &qword_1E49A4BF0);
      if (v46(&v47[v44], 1, v39) == 1)
      {
        v48 = &qword_1ECF7EC50;
        v49 = &qword_1E49A4BF0;
        v50 = v47;
LABEL_31:
        sub_1E48C1338(v50, v48, v49);
        return;
      }
    }

    else
    {
      v51 = v85;
      sub_1E48C12D0(v45, v85, &qword_1ECF7EC50, &qword_1E49A4BF0);
      if (v46(&v45[v44], 1, v39) != 1)
      {
        (*(v40 + 32))(v36, &v45[v44], v39);
        sub_1E49571D8(&qword_1ECF7EC80, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD8]);
        LODWORD(v86) = sub_1E4997E9C();
        v83 = *(v40 + 8);
        v83(v36, v39);
        sub_1E48C1338(v43, &qword_1ECF7EC50, &qword_1E49A4BF0);
        sub_1E48C1338(v41, &qword_1ECF7EC50, &qword_1E49A4BF0);
        v83(v85, v39);
        sub_1E48C1338(v45, &qword_1ECF7EC50, &qword_1E49A4BF0);
        v32 = v105;
        v34 = v102;
        v35 = v103;
        v9 = v36;
        v23 = v97;
        v7 = v98;
        v31 = v99;
        if (v86)
        {
          return;
        }

        goto LABEL_10;
      }

      sub_1E48C1338(v43, &qword_1ECF7EC50, &qword_1E49A4BF0);
      v47 = v93;
      sub_1E48C1338(v41, &qword_1ECF7EC50, &qword_1E49A4BF0);
      (*(v40 + 8))(v51, v39);
    }

    sub_1E48C1338(v47, &qword_1ECF7EC78, &qword_1E499A388);
    v32 = v105;
    v34 = v102;
    v35 = v103;
    v9 = v36;
    v23 = v97;
    v7 = v98;
    v31 = v99;
  }

LABEL_10:
  v52 = *(v31 + 56);
  v88 = (v31 + 56);
  v87 = v52;
  (v52)(v23, 1, 1, v32);
  sub_1E4996F3C();
  sub_1E4996D7C();
  v53 = sub_1E4996EFC();
  v55 = *(v34 + 8);
  v54 = v34 + 8;
  v93 = v55;
  (v55)(v7, v35);
  (*(v92 + 8))(v9, v94);
  v92 = v53 + 86400;
  if (__OFADD__(v53, 86400))
  {
    goto LABEL_39;
  }

  v56 = v54;
  v57 = *(v91 + 32);
  v58 = *(v57 + 16);
  swift_beginAccess();

  os_unfair_lock_lock(v58 + 4);
  swift_endAccess();
  swift_beginAccess();
  v59 = *(v57 + 16);
  v60 = *(v57 + 24);
  swift_beginAccess();

  os_unfair_lock_unlock(v59 + 4);
  swift_endAccess();

  v94 = 0;
  v61 = 0;
  v63 = v60 + 56;
  v62 = *(v60 + 56);
  v102 = v60;
  v64 = 1 << *(v60 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & v62;
  v67 = (v64 + 63) >> 6;
  v68 = &qword_1ECF81570;
  v69 = v95;
  while (1)
  {
    v70 = v61;
    if (!v66)
    {
      break;
    }

    v71 = v68;
    v72 = v56;
LABEL_20:
    v73 = v96;
    sub_1E4956D64(*(v102 + 48) + *(v99 + 72) * (__clz(__rbit64(v66)) | (v61 << 6)), v96);
    sub_1E4956DC8(v73, v104);
    v74 = v98;
    sub_1E4996D7C();
    v75 = sub_1E4996EFC();
    v56 = v72;
    (v93)(v74, v103);
    v76 = v75 + 86400;
    if (__OFADD__(v75, 86400))
    {
      goto LABEL_36;
    }

    v77 = v76 - v92;
    if (__OFSUB__(v76, v92))
    {
      goto LABEL_37;
    }

    v23 = v97;
    if (v77 < 0)
    {
      v78 = __OFSUB__(0, v77);
      v77 = v92 - v76;
      if (v78)
      {
        goto LABEL_38;
      }
    }

    v66 &= v66 - 1;
    v68 = v71;
    sub_1E48C12D0(v97, v69, v71, &qword_1E49A4BF8);
    if (v100(v69, 1, v105) == 1)
    {
      sub_1E48C1338(v23, v71, &qword_1E49A4BF8);
      v79 = v69;
      goto LABEL_29;
    }

    sub_1E48C1338(v69, v71, &qword_1E49A4BF8);
    if (v77 < v94)
    {
      v79 = v23;
LABEL_29:
      sub_1E48C1338(v79, v71, &qword_1E49A4BF8);
      sub_1E4956DC8(v104, v23);
      (v87)(v23, 0, 1, v105);
      v94 = v77;
    }

    else
    {
      sub_1E4956E2C(v104);
    }
  }

  while (1)
  {
    v61 = v70 + 1;
    if (__OFADD__(v70, 1))
    {
      break;
    }

    if (v61 >= v67)
    {

      v80 = v89;
      sub_1E48C12D0(v23, v89, &qword_1ECF81570, &qword_1E49A4BF8);
      v81 = v91;
      v82 = v90;
      swift_beginAccess();
      sub_1E4956E88(v80, v81 + v82);
      swift_endAccess();
      sub_1E4955DA0();
      sub_1E48C1338(v80, &qword_1ECF81570, &qword_1E49A4BF8);
      v50 = v23;
      v48 = &qword_1ECF81570;
      v49 = &qword_1E49A4BF8;
      goto LABEL_31;
    }

    v66 = *(v63 + 8 * v61);
    ++v70;
    if (v66)
    {
      v71 = v68;
      v72 = v56;
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_1E4956ADC()
{

  sub_1E48C1338(v0 + OBJC_IVAR____TtC11ClockPoster17WorldDataProvider_defaultCity, &qword_1ECF81570, &qword_1E49A4BF8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorldDataProvider(uint64_t a1)
{
  result = qword_1ECF80E88;
  if (!qword_1ECF80E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4956BBC(uint64_t a1)
{
  sub_1E4956C60(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E4956C60(uint64_t a1)
{
  if (!qword_1ECF80E98)
  {
    type metadata accessor for City(255);
    v1 = sub_1E49984BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF80E98);
    }
  }
}

uint64_t sub_1E4956CB8(uint64_t a1)
{
  swift_getWitnessTable();

  return CustomStringConvertibleViaMirror.description.getter(a1);
}

uint64_t sub_1E4956D0C(uint64_t a1)
{
  result = sub_1E49571D8(&qword_1ECF80EA0, type metadata accessor for WorldDataProvider, &unk_1E49A4BA4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E4956D64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for City(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956DC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for City(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956E2C(uint64_t a1)
{
  v2 = type metadata accessor for City(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4956E88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF81570, &qword_1E49A4BF8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4956EF8(uint64_t a1, void *a2)
{
  v27 = a1;
  v4 = type metadata accessor for City(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v25 = (&v25 - v9);
  v26 = v2;
  v10 = *v2;
  sub_1E499892C();
  v11 = *a2;
  v12 = a2[1];
  sub_1E4997F5C();
  v31 = a2[2];
  sub_1E499849C();
  v29 = v4;
  v13 = *(v4 + 24);
  sub_1E4996F4C();
  sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  v30 = a2;
  v28 = v13;
  sub_1E4997E5C();
  v14 = sub_1E499896C();
  v15 = -1 << *(v10 + 32);
  v16 = v14 & ~v15;
  if ((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = *(v5 + 72);
    while (1)
    {
      sub_1E4956D64(*(v10 + 48) + v18 * v16, v7);
      v19 = *v7 == v11 && v7[1] == v12;
      if (v19 || (sub_1E499884C() & 1) != 0)
      {
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        if (sub_1E499848C() & 1) != 0 && (MEMORY[0x1E691A740](v7 + *(v29 + 24), v30 + v28))
        {
          break;
        }
      }

      sub_1E4956E2C(v7);
      v16 = (v16 + 1) & v17;
      if (((*(v10 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    sub_1E4956E2C(v7);
    sub_1E4956E2C(v30);
    sub_1E4956D64(*(v10 + 48) + v18 * v16, v27);
    return 0;
  }

  else
  {
LABEL_12:
    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v30;
    v24 = v25;
    sub_1E4956D64(v30, v25);
    v32 = *v21;
    sub_1E495790C(v24, v16, isUniquelyReferenced_nonNull_native);
    *v21 = v32;
    sub_1E4956DC8(v23, v27);
    return 1;
  }
}

uint64_t sub_1E49571D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4957220(double *a1, double a2, double a3)
{
  v7 = *v3;
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a2, a3);
  v8 = sub_1E499896C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      if (*v12 == a2 && v12[1] == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
    a2 = *v12;
    a3 = v12[1];
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_1E4957BF0(v10, isUniquelyReferenced_nonNull_native, a2, a3);
    *v3 = v16;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

void sub_1E495733C(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for City(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  v7 = sub_1E499856C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_1E4956DC8(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_1E499892C();
      sub_1E4997F5C();
      sub_1E499849C();
      sub_1E4996F4C();
      sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
      sub_1E4997E5C();
      v22 = sub_1E499896C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1E4956DC8(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v33;
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

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1E495768C(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  v3 = sub_1E499856C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v3 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v2 + 48) + 16 * (v14 | (v5 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1E499892C();
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      MEMORY[0x1E691C170](*&v20);
      if (v19 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v19;
      }

      MEMORY[0x1E691C170](*&v21);
      v22 = sub_1E499896C();
      v23 = -1 << *(v4 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v11 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v11 + 8 * v25);
          if (v29 != -1)
          {
            v12 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v12 = __clz(__rbit64((-1 << v24) & ~*(v11 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v4 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v4 + 16);
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v5 >= v10)
      {
        break;
      }

      v16 = v6[v5];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v2 + 32);
    if (v30 >= 64)
    {
      bzero((v2 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v30;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
}

uint64_t sub_1E495790C(uint64_t *a1, unint64_t a2, char a3)
{
  v28 = a1;
  v27 = type metadata accessor for City(0);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*v3 + 16);
  v9 = *(*v3 + 24);
  v24 = v3;
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_1E495733C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1E4957D58();
      goto LABEL_19;
    }

    sub_1E4958080(v8 + 1);
  }

  v10 = *v3;
  sub_1E499892C();
  v11 = *v28;
  v12 = v28[1];
  sub_1E4997F5C();
  sub_1E499849C();
  v13 = *(v27 + 24);
  sub_1E4996F4C();
  sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  v26 = v13;
  sub_1E4997E5C();
  v14 = sub_1E499896C();
  v15 = -1 << *(v10 + 32);
  a2 = v14 & ~v15;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v17 = *(v25 + 72);
    while (1)
    {
      sub_1E4956D64(*(v10 + 48) + v17 * a2, v7);
      v18 = *v7 == v11 && v7[1] == v12;
      if (v18 || (sub_1E499884C() & 1) != 0)
      {
        sub_1E48D9CFC(0, &qword_1ECF80A10, 0x1E69E58C0);
        if (sub_1E499848C() & 1) != 0 && (MEMORY[0x1E691A740](v7 + *(v27 + 24), v28 + v26))
        {
          break;
        }
      }

      sub_1E4956E2C(v7);
      a2 = (a2 + 1) & v16;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    sub_1E4956E2C(v7);
    sub_1E499886C();
    __break(1u);
  }

LABEL_19:
  v19 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1E4956DC8(v28, *(v19 + 48) + *(v25 + 72) * a2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

unint64_t sub_1E4957BF0(unint64_t result, char a2, double a3, double a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a2 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a2)
  {
    sub_1E495768C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = result;
      sub_1E4957F3C();
      result = v9;
      goto LABEL_15;
    }

    sub_1E4958418(v7 + 1);
  }

  v10 = *v4;
  sub_1E499892C();
  CLLocationCoordinate2D.hash(into:)(a3, a4);
  v11 = sub_1E499896C();
  v12 = -1 << *(v10 + 32);
  result = v11 & ~v12;
  if ((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * result);
      if (*v14 == a3 && v14[1] == a4)
      {
        goto LABEL_18;
      }

      result = (result + 1) & v13;
    }

    while (((*(v10 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

LABEL_15:
  v16 = *v4;
  *(*v4 + 8 * (result >> 6) + 56) |= 1 << result;
  v17 = (*(v16 + 48) + 16 * result);
  *v17 = a3;
  v17[1] = a4;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_18:
  type metadata accessor for CLLocationCoordinate2D(0);
  result = sub_1E499886C();
  __break(1u);
  return result;
}

void sub_1E4957D58()
{
  v1 = v0;
  v2 = type metadata accessor for City(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  v6 = *v0;
  v7 = sub_1E499855C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v10 + 8 * v11)
    {
      memmove(v9, (v6 + 56), 8 * v11);
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
LABEL_14:
        v21 = *(v3 + 72) * (v18 | (v12 << 6));
        sub_1E4956D64(*(v6 + 48) + v21, v5);
        sub_1E4956DC8(v5, *(v8 + 48) + v21);
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
        goto LABEL_16;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v1 = v8;
  }
}

void sub_1E4957F3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  v2 = *v0;
  v3 = sub_1E499855C();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
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
}

void sub_1E4958080(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for City(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EB0, &qword_1E49A4C00);
  v7 = sub_1E499856C();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_1E4956D64(v20 + v21 * (v17 | (v9 << 6)), v5);
      sub_1E499892C();
      sub_1E4997F5C();
      sub_1E499849C();
      sub_1E4996F4C();
      sub_1E49571D8(&unk_1ECF809B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
      sub_1E4997E5C();
      v22 = sub_1E499896C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_1E4956DC8(v5, *(v8 + 48) + v16 * v21);
      ++*(v8 + 16);
      v6 = v32;
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

        v2 = v31;
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
}

uint64_t sub_1E49583A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EC0, &unk_1E49A4C10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E4958418(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80EE8, &unk_1E49A4C40);
  v3 = sub_1E499856C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v16 = (*(v2 + 48) + 16 * (v13 | (v5 << 6)));
      v17 = *v16;
      v18 = v16[1];
      sub_1E499892C();
      if (v17 == 0.0)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = v17;
      }

      MEMORY[0x1E691C170](*&v19);
      if (v18 == 0.0)
      {
        v20 = 0.0;
      }

      else
      {
        v20 = v18;
      }

      MEMORY[0x1E691C170](*&v20);
      v21 = sub_1E499896C();
      v22 = -1 << *(v4 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v10 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v10 + 8 * v24);
          if (v28 != -1)
          {
            v11 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_32;
      }

      v11 = __clz(__rbit64((-1 << v23) & ~*(v10 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      v12 = (*(v4 + 48) + 16 * v11);
      *v12 = v17;
      v12[1] = v18;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_30;
      }

      v15 = *(v2 + 56 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v8 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
LABEL_30:

    *v1 = v4;
  }
}

double sub_1E495865C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    sub_1E48C12D0(a1, v5, &qword_1ECF80F30, &unk_1E49A4D40);
    v15 = type metadata accessor for SystemOverrideClockData(0);
    if ((*(*(v15 - 8) + 48))(v5, 1, v15) == 1)
    {
      sub_1E48C1338(v5, &qword_1ECF80F30, &unk_1E49A4D40);
      v16 = sub_1E4996D8C();
      (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
    }

    else
    {
      v17 = sub_1E4996D8C();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v11, v5, v17);
      sub_1E495F350(v5);
      (*(v18 + 56))(v11, 0, 1, v17);
    }

    sub_1E4958FD8(v11);
    v19 = *(v14 + 32);
    v20 = *(v14 + 40);
    v21 = v20[2];
    swift_beginAccess();

    os_unfair_lock_lock(v21 + 4);
    swift_endAccess();
    v22 = *(*v20 + 96);
    swift_beginAccess();
    sub_1E48C12D0(v20 + v22, v8, &qword_1ECF809D0, &qword_1E499D6C0);
    v23 = v20[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v23 + 4);
    swift_endAccess();

    v24 = *(*v19 + 104);
    v25 = *(v19 + v24);
    swift_beginAccess();
    os_unfair_lock_lock(v25 + 4);
    swift_endAccess();
    sub_1E4974E44(v8);
    v26 = *(v19 + v24);
    swift_beginAccess();
    os_unfair_lock_unlock(v26 + 4);
    swift_endAccess();
    sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);
  }

  return result;
}

uint64_t sub_1E4958A10@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A50, &unk_1E49A3A00);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80A58, &unk_1E49A4D50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v48 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v40 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF80A60, &unk_1E49A3A10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = *(v1 + 32);
  v19 = *(*v18 + 104);
  v20 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_lock(v20 + 4);
  swift_endAccess();
  v21 = *(*v18 + 120);
  v22 = *(v18 + v21);
  if ((v22 & 1) == 0)
  {
    *(v18 + v21) = 1;
  }

  v23 = v19;
  v24 = *(v18 + v19);
  swift_beginAccess();
  os_unfair_lock_unlock(v24 + 4);
  swift_endAccess();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  v26 = *(*(v25 - 8) + 56);
  v49 = v25;
  v26(v17, 1, 1);
  if ((v22 & 1) == 0)
  {
    v27 = *(v1 + 40);
    v28 = v27[2];
    swift_beginAccess();

    os_unfair_lock_lock(v28 + 4);
    swift_endAccess();
    v29 = *(*v27 + 96);
    swift_beginAccess();
    sub_1E48C12D0(v27 + v29, v14, &qword_1ECF809D0, &qword_1E499D6C0);
    v30 = v27[2];
    swift_beginAccess();
    os_unfair_lock_unlock(v30 + 4);
    swift_endAccess();

    (v26)(v14, 0, 1, v49);
    sub_1E48EC0CC(v14, v17, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F6B8, &qword_1E49A4D60);
  v32 = *(v31 - 8);
  v33 = v32;
  v43 = *(v32 + 56);
  v44 = v32 + 56;
  v43(v11, 1, 1, v31);
  v34 = *(v18 + v23);
  swift_beginAccess();
  os_unfair_lock_lock(v34 + 4);
  v35 = swift_endAccess();
  v36 = MEMORY[0x1EEE9AC00](v35);
  *(&v40 - 2) = v18;
  *(&v40 - 1) = v17;
  v41 = v17;
  (*(v46 + 104))(v45, *MEMORY[0x1E69E8650], v47, v36);
  sub_1E49981BC();
  sub_1E48C1338(v11, &qword_1ECF80A58, &unk_1E49A4D50);
  v43(v8, 0, 1, v31);
  sub_1E495F178(v8, v11);
  v37 = *(v18 + v23);
  swift_beginAccess();
  os_unfair_lock_unlock(v37 + 4);
  swift_endAccess();
  v38 = v48;
  sub_1E48C12D0(v11, v48, &qword_1ECF80A58, &unk_1E49A4D50);
  result = (*(v33 + 48))(v38, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1E48C1338(v11, &qword_1ECF80A58, &unk_1E49A4D50);
    (*(v33 + 32))(v42, v38, v31);
    return sub_1E48C1338(v41, &unk_1ECF80A60, &unk_1E49A3A10);
  }

  return result;
}

double sub_1E4958FD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = *(v1 + 40);
  sub_1E48C12D0(a1, &v14 - v7, &qword_1ECF809D0, &qword_1E499D6C0);
  v10 = v9[2];
  swift_beginAccess();

  os_unfair_lock_lock(v10 + 4);
  swift_endAccess();
  sub_1E48C12D0(v8, v5, &qword_1ECF809D0, &qword_1E499D6C0);
  v11 = *(*v9 + 96);
  swift_beginAccess();
  sub_1E48EC0CC(v5, v9 + v11, &qword_1ECF809D0, &qword_1E499D6C0);
  swift_endAccess();
  v12 = v9[2];
  swift_beginAccess();
  os_unfair_lock_unlock(v12 + 4);
  swift_endAccess();
  sub_1E48C1338(a1, &qword_1ECF809D0, &qword_1E499D6C0);
  sub_1E48C1338(v8, &qword_1ECF809D0, &qword_1E499D6C0);

  return result;
}

uint64_t sub_1E4959180()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1E4959200@<X0>(char *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, unsigned int (*a5)(char *, uint64_t, uint64_t)@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v248 = a6;
  v252 = a5;
  v267 = a4;
  v259 = a3;
  v272 = a2;
  v264 = a1;
  v249 = a8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v245 = &v223 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F00, &qword_1E49A4D28);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v258 = &v223 - v12;
  v265 = sub_1E49969CC();
  v255 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v233 = &v223 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v232 = &v223 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v263 = &v223 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v268 = &v223 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v271 = &v223 - v21;
  v257 = sub_1E4996F4C();
  v273 = *(v257 - 8);
  MEMORY[0x1EEE9AC00](v257);
  v243 = &v223 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_1E4996E3C();
  v241 = *(v242 - 1);
  MEMORY[0x1EEE9AC00](v242);
  v240 = &v223 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = sub_1E4996EDC();
  v261 = *(v262 - 8);
  MEMORY[0x1EEE9AC00](v262);
  v274 = &v223 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v228 = &v223 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v246 = &v223 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v231 = &v223 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v226 = &v223 - v32;
  v266 = sub_1E499708C();
  v256 = *(v266 - 8);
  MEMORY[0x1EEE9AC00](v266);
  v229 = &v223 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v253 = &v223 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v235 = &v223 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v230 = &v223 - v39;
  v40 = sub_1E4996D8C();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v247 = &v223 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v254 = &v223 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v269 = &v223 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v238 = (&v223 - v48);
  MEMORY[0x1EEE9AC00](v49);
  v227 = &v223 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v225 = &v223 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v223 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v234 = &v223 - v57;
  MEMORY[0x1EEE9AC00](v58);
  v270 = &v223 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v60 - 8);
  v244 = &v223 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v260 = &v223 - v63;
  MEMORY[0x1EEE9AC00](v64);
  *&v239 = &v223 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v237 = &v223 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v223 - v69;
  MEMORY[0x1EEE9AC00](v71);
  v236 = &v223 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v223 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v223 - v77;
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v223 - v80;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v223 - v83;
  MEMORY[0x1EEE9AC00](v85);
  v87 = &v223 - v86;
  sub_1E495B49C(v252, v248, a7, &v223 - v86);
  sub_1E495C234(v259, v267, a7, v84);
  v267 = v81;
  v259 = a7;
  sub_1E495C234(v264, v272, a7, v81);
  v272 = v41;
  v88 = v41[6];
  v264 = v87;
  v89 = v87;
  v90 = v41 + 6;
  v91 = v88;
  if (v88(v89, 1, v40) == 1 && v91(v84, 1, v40) == 1 && v91(v267, 1, v40) == 1)
  {
    v92 = v40;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v93 = qword_1EE2BB458;
    v94 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v95 = v228;
    sub_1E48C12D0(v93 + v94, v228, &qword_1ECF7F008, &qword_1E499B170);
    v96 = v256;
    v97 = *(v256 + 48);
    v98 = v266;
    if (v97(v95, 1, v266) == 1)
    {
      v99 = v229;
      sub_1E4904BF4(v229);
      if (v97(v95, 1, v98) != 1)
      {
        sub_1E48C1338(v95, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      v200 = *(v96 + 32);
      v99 = v229;
      v200(v229, v95, v98);
    }

    v201 = sub_1E499706C();
    v202 = sub_1E49982EC();
    if (os_log_type_enabled(v201, v202))
    {
      v203 = swift_slowAlloc();
      *v203 = 0;
      _os_log_impl(&dword_1E48B0000, v201, v202, "Status bar overrides for all time & date entries are nil. Not using override time.", v203, 2u);
      MEMORY[0x1E691CED0](v203, -1, -1);
    }

    (*(v256 + 8))(v99, v266);
    sub_1E48C1338(v264, &qword_1ECF809D0, &qword_1E499D6C0);
    v189 = 1;
    v188 = v249;
    v148 = v272;
    goto LABEL_51;
  }

  sub_1E48C12D0(v84, v78, &qword_1ECF809D0, &qword_1E499D6C0);
  v100 = v91(v78, 1, v40);
  v252 = v91;
  v250 = v84;
  v248 = v90;
  if (v100 == 1)
  {
    sub_1E48C1338(v78, &qword_1ECF809D0, &qword_1E499D6C0);
    v101 = v40;
    v102 = v272;
  }

  else
  {
    v224 = v55;
    v103 = v91;
    v104 = v272;
    v105 = v272[4];
    v106 = v234;
    v105(v234, v78, v40);
    sub_1E48C12D0(v267, v75, &qword_1ECF809D0, &qword_1E499D6C0);
    v101 = v40;
    if (v103(v75, 1, v40) == 1)
    {
      (v104[1])(v106, v40);
      sub_1E48C1338(v75, &qword_1ECF809D0, &qword_1E499D6C0);
      v102 = v104;
    }

    else
    {
      v107 = v224;
      v105(v224, v75, v40);
      sub_1E495F110(&qword_1ECF7F440, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      if ((sub_1E4997E9C() & 1) == 0)
      {
        v238 = v105;
        v191 = v272[2];
        v191(v270, v106, v40);
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v192 = qword_1EE2BB458;
        v193 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
        swift_beginAccess();
        v194 = v226;
        sub_1E48C12D0(v192 + v193, v226, &qword_1ECF7F008, &qword_1E499B170);
        v195 = v256;
        v196 = *(v256 + 48);
        v197 = v266;
        v198 = v196(v194, 1, v266);
        v199 = v230;
        if (v198 == 1)
        {
          sub_1E4904BF4(v230);
          if (v196(v194, 1, v197) != 1)
          {
            sub_1E48C1338(v194, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          (*(v195 + 32))(v230, v194, v197);
        }

        v204 = v225;
        v205 = v234;
        v191(v225, v234, v101);
        v206 = v227;
        v207 = v224;
        v191(v227, v224, v101);
        v208 = sub_1E499706C();
        v209 = sub_1E499830C();
        if (os_log_type_enabled(v208, v209))
        {
          v210 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v277 = v237;
          *v210 = 136446466;
          sub_1E495F110(&qword_1ECF7F8F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          LODWORD(v236) = v209;
          v211 = sub_1E49987FC();
          v213 = v212;
          v214 = v204;
          v215 = v272[1];
          v215(v214, v101);
          v216 = sub_1E48CA094(v211, v213, &v277);

          *(v210 + 4) = v216;
          *(v210 + 12) = 2082;
          v217 = sub_1E49987FC();
          v219 = v218;
          v215(v206, v101);
          v220 = sub_1E48CA094(v217, v219, &v277);

          *(v210 + 14) = v220;
          _os_log_impl(&dword_1E48B0000, v208, v236, "Status bar overrides for timeEntry and shortTimeEntry are both set and do not match.\nChoosing timeEntry.\ntimeEntry=%{public}s\nshortTimeEntry=%{public}s'", v210, 0x16u);
          v221 = v237;
          swift_arrayDestroy();
          MEMORY[0x1E691CED0](v221, -1, -1);
          MEMORY[0x1E691CED0](v210, -1, -1);

          (*(v256 + 8))(v230, v266);
          v215(v224, v101);
          v215(v234, v101);
        }

        else
        {

          v222 = v272[1];
          v222(v206, v101);
          v222(v204, v101);
          (*(v256 + 8))(v199, v266);
          v222(v207, v101);
          v222(v205, v101);
        }

        v91 = v252;
        v110 = v239;
        v114 = v238;
        goto LABEL_25;
      }

      v102 = v272;
      v108 = v272[1];
      v108(v107, v40);
      v108(v106, v40);
    }

    v84 = v250;
    v91 = v252;
  }

  sub_1E48C12D0(v84, v70, &qword_1ECF809D0, &qword_1E499D6C0);
  v109 = v91(v70, 1, v101);
  v110 = v239;
  v111 = v238;
  v112 = v237;
  v113 = v236;
  if (v109 == 1)
  {
    sub_1E48C12D0(v267, v236, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v91(v70, 1, v101) != 1)
    {
      sub_1E48C1338(v70, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    (v102[4])(v236, v70, v101);
    (v102[7])(v113, 0, 1, v101);
  }

  sub_1E48C12D0(v113, v112, &qword_1ECF809D0, &qword_1E499D6C0);
  if (v91(v112, 1, v101) == 1)
  {
    sub_1E4996D4C();
    sub_1E48C1338(v113, &qword_1ECF809D0, &qword_1E499D6C0);
    if (v91(v112, 1, v101) != 1)
    {
      sub_1E48C1338(v112, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    sub_1E48C1338(v113, &qword_1ECF809D0, &qword_1E499D6C0);
    (v102[4])(v111, v112, v101);
  }

  v114 = v102[4];
  v114(v270, v111, v101);
LABEL_25:
  sub_1E48C12D0(v264, v110, &qword_1ECF809D0, &qword_1E499D6C0);
  v115 = v91(v110, 1, v101);
  v251 = v101;
  if (v115 == 1)
  {
    sub_1E4996D4C();
    if (v91(v110, 1, v101) != 1)
    {
      sub_1E48C1338(v110, &qword_1ECF809D0, &qword_1E499D6C0);
    }
  }

  else
  {
    v114(v269, v110, v101);
  }

  v116 = v241;
  v117 = v240;
  v118 = v242;
  (*(v241 + 104))(v240, *MEMORY[0x1E6969868], v242);
  sub_1E4996E4C();
  (*(v116 + 8))(v117, v118);
  v119 = *(v273 + 16);
  v241 = v273 + 16;
  v242 = v119;
  (v119)(v243, v259, v257);
  sub_1E4996EBC();
  v243 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F08, &unk_1E49A5E20);
  v120 = sub_1E4996ECC();
  v121 = *(v120 - 8);
  v122 = *(v121 + 72);
  v123 = (*(v121 + 80) + 32) & ~*(v121 + 80);
  v240 = 3 * v122;
  v124 = swift_allocObject();
  v239 = xmmword_1E499E4C0;
  *(v124 + 16) = xmmword_1E499E4C0;
  v125 = *(v121 + 104);
  v125(v124 + v123, *MEMORY[0x1E6969A68], v120);
  v125(v124 + v123 + v122, *MEMORY[0x1E6969A78], v120);
  v126.n128_f64[0] = v125(v124 + v123 + 2 * v122, *MEMORY[0x1E6969A48], v120);
  sub_1E495EDF0(v124, v126);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4996E6C();

  v127 = swift_allocObject();
  *(v127 + 16) = v239;
  v125(v127 + v123, *MEMORY[0x1E6969A58], v120);
  v125(v127 + v123 + v122, *MEMORY[0x1E6969A88], v120);
  v128.n128_f64[0] = v125(v127 + v123 + 2 * v122, *MEMORY[0x1E6969A98], v120);
  sub_1E495EDF0(v127, v128);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1E4996E6C();

  (*(v261 + 56))(v258, 1, 1, v262);
  v129 = *(v273 + 56);
  v273 += 56;
  v243 = v129;
  v130 = v245;
  v131 = v257;
  (v129)(v245, 1, 1, v257);
  v240 = sub_1E499693C();
  LODWORD(v238) = v132;
  *&v239 = sub_1E499694C();
  LODWORD(v237) = v133;
  v236 = sub_1E49968FC();
  sub_1E499691C();
  sub_1E499696C();
  sub_1E499698C();
  sub_1E49969AC();
  (v242)(v130, v259, v131);
  (v243)(v130, 0, 1, v131);
  sub_1E49969BC();
  v134 = v260;
  sub_1E4996E8C();
  v135 = v134;
  v136 = v244;
  sub_1E48C12D0(v135, v244, &qword_1ECF809D0, &qword_1E499D6C0);
  v92 = v251;
  if (v252(v136, 1, v251) == 1)
  {
    sub_1E48C1338(v136, &qword_1ECF809D0, &qword_1E499D6C0);
    v137 = v255;
    v138 = v266;
    v139 = v256;
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v140 = qword_1EE2BB458;
    v141 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v142 = v231;
    sub_1E48C12D0(v140 + v141, v231, &qword_1ECF7F008, &qword_1E499B170);
    v143 = *(v139 + 48);
    v144 = v143(v142, 1, v138);
    v145 = v233;
    v146 = v232;
    v147 = v235;
    if (v144 == 1)
    {
      sub_1E4904BF4(v235);
      if (v143(v142, 1, v138) != 1)
      {
        sub_1E48C1338(v142, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v139 + 32))(v235, v142, v138);
    }

    v152 = *(v137 + 16);
    v153 = v265;
    v152(v146, v271, v265);
    v152(v145, v268, v153);
    v154 = sub_1E499706C();
    v155 = sub_1E499830C();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      v157 = swift_slowAlloc();
      v276 = v157;
      *v156 = 136446466;
      sub_1E495F110(&qword_1ECF80F10, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
      v158 = sub_1E49987FC();
      v160 = v159;
      v161 = *(v137 + 8);
      v161(v146, v265);
      v162 = sub_1E48CA094(v158, v160, &v276);
      v139 = v256;

      *(v156 + 4) = v162;
      *(v156 + 12) = 2082;
      v163 = sub_1E49987FC();
      v165 = v164;
      v161(v145, v265);
      v166 = sub_1E48CA094(v163, v165, &v276);

      *(v156 + 14) = v166;
      _os_log_impl(&dword_1E48B0000, v154, v155, "Cannot combine date components.\nChoosing hours and minutes.\nday,month,year=%{public}s\nhour,minute=%{public}s'", v156, 0x16u);
      swift_arrayDestroy();
      v167 = v157;
      v138 = v266;
      MEMORY[0x1E691CED0](v167, -1, -1);
      MEMORY[0x1E691CED0](v156, -1, -1);

      (*(v139 + 8))(v235, v138);
    }

    else
    {

      v168 = *(v137 + 8);
      v168(v145, v153);
      v168(v146, v153);
      (*(v139 + 8))(v147, v138);
    }

    v148 = v272;
    v150 = v253;
    v151 = v246;
    v149 = v254;
    v92 = v251;
    (v272[2])(v254, v270, v251);
  }

  else
  {
    v148 = v272;
    v149 = v254;
    (v272[4])(v254, v136, v92);
    v138 = v266;
    v139 = v256;
    v150 = v253;
    v151 = v246;
  }

  if (qword_1EE2BB450 != -1)
  {
    swift_once();
  }

  v169 = qword_1EE2BB458;
  v170 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
  swift_beginAccess();
  sub_1E48C12D0(v169 + v170, v151, &qword_1ECF7F008, &qword_1E499B170);
  v171 = *(v139 + 48);
  if (v171(v151, 1, v138) == 1)
  {
    sub_1E4904BF4(v150);
    if (v171(v151, 1, v138) != 1)
    {
      sub_1E48C1338(v151, &qword_1ECF7F008, &qword_1E499B170);
    }
  }

  else
  {
    (*(v139 + 32))(v150, v151, v138);
  }

  v172 = v247;
  (v148[2])(v247, v149, v92);
  v173 = sub_1E499706C();
  v174 = sub_1E49982EC();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v275 = v176;
    *v175 = 136446210;
    sub_1E495F110(&qword_1ECF7F8F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v177 = sub_1E49987FC();
    v178 = v172;
    v180 = v179;
    v181 = v272[1];
    v181(v178, v92);
    v182 = sub_1E48CA094(v177, v180, &v275);

    *(v175 + 4) = v182;
    _os_log_impl(&dword_1E48B0000, v173, v174, "Status bar override date set: %{public}s", v175, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v176);
    MEMORY[0x1E691CED0](v176, -1, -1);
    MEMORY[0x1E691CED0](v175, -1, -1);

    (*(v139 + 8))(v253, v266);
    sub_1E48C1338(v260, &qword_1ECF809D0, &qword_1E499D6C0);
    v183 = *(v255 + 8);
    v184 = v265;
    v183(v263, v265);
    v183(v268, v184);
    v183(v271, v184);
    (*(v261 + 8))(v274, v262);
    v181(v269, v92);
    v181(v270, v92);
    v149 = v254;
    v148 = v272;
  }

  else
  {

    v185 = v148[1];
    v185(v172, v92);
    (*(v139 + 8))(v150, v138);
    sub_1E48C1338(v260, &qword_1ECF809D0, &qword_1E499D6C0);
    v186 = *(v255 + 8);
    v187 = v265;
    v186(v263, v265);
    v186(v268, v187);
    v186(v271, v187);
    (*(v261 + 8))(v274, v262);
    v185(v269, v92);
    v185(v270, v92);
  }

  sub_1E48C1338(v264, &qword_1ECF809D0, &qword_1E499D6C0);
  v188 = v249;
  (v148[4])(v249, v149, v92);
  v189 = 0;
  v84 = v250;
LABEL_51:
  (v148[7])(v188, v189, 1, v92);
  sub_1E48C1338(v267, &qword_1ECF809D0, &qword_1E499D6C0);
  return sub_1E48C1338(v84, &qword_1ECF809D0, &qword_1E499D6C0);
}

uint64_t sub_1E495B49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v116 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v114 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v101 = &v94 - v10;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v94 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v102 = &v94 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v115 = &v94 - v18;
  v19 = sub_1E4996F4C();
  v112 = *(v19 - 8);
  v113 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E4996E3C();
  v109 = *(v21 - 8);
  v110 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v108 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E4996EDC();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v94 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7EC50, &qword_1E49A4BF0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v107 = &v94 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F00, &qword_1E49A4D28);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v94 - v30;
  v32 = sub_1E49969CC();
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v94 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v97 = v14;
    v98 = v36;
    v95 = v34;
    v96 = v33;
    v99 = v26;
    v100 = v24;
    v105 = v11;
    v106 = v23;
    v103 = v12;
    v104 = a4;
    v117 = a1;
    v118 = a2;
    v119 = 47;
    v120 = 0xE100000000000000;
    sub_1E48D2EE4();
    v37 = sub_1E49984DC();
    v38 = v37;
    v39 = *(v37 + 16);
    if (v39)
    {
      v40 = 0;
      v41 = (v37 + 40);
      v42 = MEMORY[0x1E69E7CC0];
      while (v40 < *(v38 + 16))
      {
        v43 = *v41;
        v117 = *(v41 - 1);
        v118 = v43;
        sub_1E495C830(&v117, &v119);
        if ((v120 & 1) == 0)
        {
          v23 = v119;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_1E4905F5C(0, *(v42 + 2) + 1, 1, v42);
          }

          v45 = *(v42 + 2);
          v44 = *(v42 + 3);
          if (v45 >= v44 >> 1)
          {
            v42 = sub_1E4905F5C((v44 > 1), v45 + 1, 1, v42);
          }

          *(v42 + 2) = v45 + 1;
          *&v42[8 * v45 + 32] = v23;
        }

        ++v40;
        v41 += 2;
        if (v39 == v40)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v42 = MEMORY[0x1E69E7CC0];
LABEL_16:
      if (*(v42 + 2) == 3)
      {

        v49 = v100;
        (*(v100 + 56))(v31, 1, 1, v106);
        v51 = v112;
        v50 = v113;
        (*(v112 + 56))(v107, 1, 1, v113);
        v52 = v98;
        sub_1E49969AC();
        v54 = v108;
        v53 = v109;
        v55 = v110;
        (*(v109 + 104))(v108, *MEMORY[0x1E6969868], v110);
        v56 = v99;
        sub_1E4996E4C();
        (*(v53 + 8))(v54, v55);
        (*(v51 + 16))(v111, v116, v50);
        sub_1E4996EBC();
        v57 = v115;
        sub_1E4996E8C();
        v58 = sub_1E4996D8C();
        v59 = *(v58 - 8);
        v60 = (*(v59 + 48))(v57, 1, v58);
        v61 = v105;
        if (v60 == 1)
        {
          sub_1E48C1338(v57, &qword_1ECF809D0, &qword_1E499D6C0);
          if (qword_1EE2BB450 != -1)
          {
            swift_once();
          }

          v62 = qword_1EE2BB458;
          v63 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
          swift_beginAccess();
          v64 = v101;
          sub_1E48C12D0(v62 + v63, v101, &qword_1ECF7F008, &qword_1E499B170);
          v65 = v103;
          v66 = *(v103 + 48);
          if (v66(v64, 1, v61) == 1)
          {
            v67 = v102;
            sub_1E4904BF4(v102);
            if (v66(v64, 1, v61) != 1)
            {
              sub_1E48C1338(v64, &qword_1ECF7F008, &qword_1E499B170);
            }
          }

          else
          {
            v85 = *(v65 + 32);
            v67 = v102;
            v85(v102, v64, v61);
          }

          v86 = sub_1E499706C();
          v87 = sub_1E499830C();

          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v119 = v89;
            *v88 = 136446210;
            v90 = MEMORY[0x1E691B8E0](v38, MEMORY[0x1E69E6158]);
            v92 = v91;

            v93 = sub_1E48CA094(v90, v92, &v119);

            *(v88 + 4) = v93;
            _os_log_impl(&dword_1E48B0000, v86, v87, "Cannot convert date components ints to date. Components: '%{public}s'", v88, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v89);
            MEMORY[0x1E691CED0](v89, -1, -1);
            MEMORY[0x1E691CED0](v88, -1, -1);

            (*(v103 + 8))(v102, v61);
          }

          else
          {

            (*(v103 + 8))(v67, v61);
          }

          (*(v100 + 8))(v99, v106);
          (*(v95 + 8))(v98, v96);
          return (*(v59 + 56))(v104, 1, 1, v58);
        }

        else
        {

          (*(v49 + 8))(v56, v106);
          (*(v95 + 8))(v52, v96);
          v75 = v104;
          (*(v59 + 32))(v104, v57, v58);
          return (*(v59 + 56))(v75, 0, 1, v58);
        }
      }

      v23 = v105;
      if (qword_1EE2BB450 == -1)
      {
        goto LABEL_24;
      }
    }

    swift_once();
LABEL_24:
    v68 = qword_1EE2BB458;
    v69 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    v70 = v114;
    sub_1E48C12D0(v68 + v69, v114, &qword_1ECF7F008, &qword_1E499B170);
    v71 = v103;
    v72 = *(v103 + 48);
    v73 = v72(v70, 1, v23);
    v74 = v97;
    if (v73 == 1)
    {
      sub_1E4904BF4(v97);
      if (v72(v70, 1, v23) != 1)
      {
        sub_1E48C1338(v70, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v71 + 32))(v97, v70, v23);
    }

    v76 = sub_1E499706C();
    v77 = sub_1E499830C();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      v119 = v79;
      *v78 = 136446210;
      v80 = MEMORY[0x1E691B8E0](v38, MEMORY[0x1E69E6158]);
      v82 = v81;

      v83 = sub_1E48CA094(v80, v82, &v119);

      *(v78 + 4) = v83;
      _os_log_impl(&dword_1E48B0000, v76, v77, "Expected 3 date components, not '%{public}s'", v78, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v79);
      MEMORY[0x1E691CED0](v79, -1, -1);
      MEMORY[0x1E691CED0](v78, -1, -1);
    }

    else
    {
    }

    (*(v71 + 8))(v74, v23);
    v84 = sub_1E4996D8C();
    return (*(*(v84 - 8) + 56))(v104, 1, 1, v84);
  }

  v46 = sub_1E4996D8C();
  v47 = *(*(v46 - 8) + 56);

  return v47(a4, 1, 1, v46);
}

uint64_t sub_1E495C234@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v43 - v9;
  v11 = sub_1E499708C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF809D0, &qword_1E499D6C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  if (a2)
  {
    v44 = v10;
    v45 = v14;
    v46 = v12;
    v47 = v11;
    v19 = *aHMmA;
    v18 = unk_1F5E82600;

    sub_1E495CE20(a1, a2, v19, v18, a3, v17);

    v20 = sub_1E4996D8C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (v22(v17, 1, v20) == 1 && (sub_1E48C1338(v17, &qword_1ECF809D0, &qword_1E499D6C0), v48 = a4, v23 = *aHhMm, v24 = unk_1F5E82610, , v25 = v23, a4 = v48, sub_1E495CE20(a1, a2, v25, v24, a3, v17), , v22(v17, 1, v20) == 1) && (sub_1E48C1338(v17, &qword_1ECF809D0, &qword_1E499D6C0), v27 = aHhMmSs[0], v26 = aHhMmSs[1], , sub_1E495CE20(a1, a2, v27, v26, a3, v17), a4 = v48, , v22(v17, 1, v20) == 1))
    {
      v43 = a1;
      sub_1E48C1338(v17, &qword_1ECF809D0, &qword_1E499D6C0);
      swift_arrayDestroy();
      if (qword_1EE2BB450 != -1)
      {
        swift_once();
      }

      v28 = qword_1EE2BB458;
      v29 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
      swift_beginAccess();
      v30 = v44;
      sub_1E48C12D0(v28 + v29, v44, &qword_1ECF7F008, &qword_1E499B170);
      v32 = v46;
      v31 = v47;
      v33 = *(v46 + 48);
      if (v33(v30, 1, v47) == 1)
      {
        v34 = v45;
        sub_1E4904BF4(v45);
        if (v33(v30, 1, v31) != 1)
        {
          sub_1E48C1338(v30, &qword_1ECF7F008, &qword_1E499B170);
        }
      }

      else
      {
        v34 = v45;
        (*(v32 + 32))(v45, v30, v31);
      }

      v38 = sub_1E499706C();
      v39 = sub_1E499830C();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = v31;
        v42 = swift_slowAlloc();
        v49 = v42;
        *v40 = 136315138;
        *(v40 + 4) = sub_1E48CA094(v43, a2, &v49);
        _os_log_impl(&dword_1E48B0000, v38, v39, "Couldn't convert '%s' to override date", v40, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v42);
        MEMORY[0x1E691CED0](v42, -1, -1);
        MEMORY[0x1E691CED0](v40, -1, -1);

        (*(v32 + 8))(v34, v41);
      }

      else
      {

        (*(v32 + 8))(v34, v31);
      }

      return (*(v21 + 56))(v48, 1, 1, v20);
    }

    else
    {
      swift_arrayDestroy();
      (*(v21 + 32))(a4, v17, v20);
      return (*(v21 + 56))(a4, 0, 1, v20);
    }
  }

  else
  {
    v36 = sub_1E4996D8C();
    v37 = *(*(v36 - 8) + 56);

    return v37(a4, 1, 1, v36);
  }
}

void sub_1E495C830(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  v8 = sub_1E499708C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  v13 = HIBYTE(v12) & 0xF;
  v14 = *a1 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_63;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {

    sub_1E495E3F0(v11, v12, 10);
    v18 = v45;
    v47 = v46;

    if (v47)
    {
      goto LABEL_63;
    }

    goto LABEL_73;
  }

  if ((v12 & 0x2000000000000000) == 0)
  {
    if ((v11 & 0x1000000000000000) != 0)
    {
      v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v16 = sub_1E49985DC();
    }

    v17 = *v16;
    if (v17 == 43)
    {
      if (v14 >= 1)
      {
        v13 = v14 - 1;
        if (v14 != 1)
        {
          v18 = 0;
          if (v16)
          {
            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                goto LABEL_61;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_61;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                goto LABEL_61;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_78;
    }

    if (v17 != 45)
    {
      if (v14)
      {
        v18 = 0;
        if (v16)
        {
          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              goto LABEL_61;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              goto LABEL_61;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v18 = 0;
      LOBYTE(v13) = 1;
LABEL_62:
      LOBYTE(v54) = v13;
      if (v13)
      {
LABEL_63:
        v49 = v11;
        v50 = v2;
        v51 = a2;
        if (qword_1EE2BB450 != -1)
        {
          swift_once();
        }

        v36 = qword_1EE2BB458;
        v37 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
        swift_beginAccess();
        sub_1E48C12D0(v36 + v37, v7, &qword_1ECF7F008, &qword_1E499B170);
        v38 = *(v9 + 48);
        if (v38(v7, 1, v8) == 1)
        {
          v39 = v52;
          sub_1E4904BF4(v52);
          if (v38(v7, 1, v8) != 1)
          {
            sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
          }
        }

        else
        {
          v39 = v52;
          (*(v9 + 32))(v52, v7, v8);
        }

        v40 = sub_1E499706C();
        v41 = sub_1E499830C();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v54 = v43;
          *v42 = 136446210;
          *(v42 + 4) = sub_1E48CA094(v49, v12, &v54);
          _os_log_impl(&dword_1E48B0000, v40, v41, "Couldn't covert '%{public}s' to int", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v43);
          MEMORY[0x1E691CED0](v43, -1, -1);
          MEMORY[0x1E691CED0](v42, -1, -1);
        }

        (*(v9 + 8))(v39, v8);
        v18 = 0;
        v44 = 1;
        a2 = v51;
        goto LABEL_74;
      }

LABEL_73:
      v44 = 0;
LABEL_74:
      *a2 = v18;
      *(a2 + 8) = v44;
      return;
    }

    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v19 = v16 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_61;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_61;
            }

            ++v19;
            if (!--v13)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v13) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v53[0] = *a1;
  v53[1] = v12 & 0xFFFFFFFFFFFFFFLL;
  if (v11 != 43)
  {
    if (v11 != 45)
    {
      if (v13)
      {
        v18 = 0;
        v33 = v53;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          ++v33;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v22 = v53 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v13)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_77;
  }

  if (v13)
  {
    if (--v13)
    {
      v18 = 0;
      v28 = v53 + 1;
      while (1)
      {
        v29 = *v28 - 48;
        if (v29 > 9)
        {
          break;
        }

        v30 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          break;
        }

        v18 = v30 + v29;
        if (__OFADD__(v30, v29))
        {
          break;
        }

        ++v28;
        if (!--v13)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_79:
  __break(1u);
}

uint64_t sub_1E495CE20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v67 = a3;
  v68 = a4;
  v64 = a1;
  v65 = a2;
  v73 = a6;
  v8 = sub_1E4996E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E4996EDC();
  v74 = v12;
  v79 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E4996D8C();
  v71 = *(v15 - 8);
  v72 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v57 - v18;
  sub_1E4996D4C();
  v20 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v60 = *MEMORY[0x1E6969868];
  v78 = *(v9 + 104);
  v78(v11);
  sub_1E4996E4C();
  v76 = *(v9 + 8);
  v77 = v9 + 8;
  v76(v11, v8);
  v21 = sub_1E4996E7C();
  v22 = *(v79 + 8);
  v79 += 8;
  v75 = v22;
  v22(v14, v12);
  [v20 setCalendar_];

  v59 = a5;
  v23 = sub_1E4996F1C();
  [v20 setTimeZone_];

  v24 = sub_1E4997EAC();
  [v20 setDateFormat_];

  v25 = sub_1E4996CEC();
  v69 = v20;
  v26 = [v20 stringFromDate_];

  v63 = sub_1E4997EEC();
  v62 = v27;

  v28 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v29 = v60;
  (v78)(v11, v60, v8);
  sub_1E4996E4C();
  v76(v11, v8);
  v30 = sub_1E4996E7C();
  v75(v14, v74);
  [v28 setCalendar_];

  v31 = sub_1E4996F1C();
  [v28 setTimeZone_];

  v32 = sub_1E4997EAC();
  [v28 setDateFormat_];

  v70 = v19;
  v33 = sub_1E4996CEC();
  v66 = v28;
  v34 = [v28 stringFromDate_];

  v61 = sub_1E4997EEC();
  v36 = v35;

  v37 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  (v78)(v11, v29, v8);
  sub_1E4996E4C();
  v38 = v11;
  v39 = v64;
  v76(v38, v8);
  v40 = sub_1E4996E7C();
  v75(v14, v74);
  v41 = v65;
  [v37 setCalendar_];

  v42 = sub_1E4996F1C();
  [v37 setTimeZone_];

  v82 = 0x2D4D4D2D79797979;
  v83 = 0xEB00000000206464;
  MEMORY[0x1E691B7A0](v67, v68);
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](8026746, 0xE300000000000000);
  v43 = sub_1E4997EAC();

  [v37 setDateFormat_];

  v82 = v39;
  v83 = v41;
  v80 = 58;
  v81 = 0xE100000000000000;
  sub_1E48D2EE4();
  if (*(sub_1E49984DC() + 16))
  {

    v44 = sub_1E4997F6C();

    v82 = 0;
    v83 = 0xE000000000000000;
    if (v44 == 1)
    {
      v45 = 48;
    }

    else
    {
      v45 = 0;
    }

    if (v44 == 1)
    {
      v46 = 0xE100000000000000;
    }

    else
    {
      v46 = 0xE000000000000000;
    }
  }

  else
  {

    v45 = 0;
    v46 = 0xE000000000000000;
    v82 = 0;
    v83 = 0xE000000000000000;
  }

  MEMORY[0x1E691B7A0](v45, v46);

  MEMORY[0x1E691B7A0](v39, v41);
  v47 = v82;
  v48 = v83;
  v82 = v63;
  v83 = v62;
  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v47, v48);

  MEMORY[0x1E691B7A0](32, 0xE100000000000000);
  MEMORY[0x1E691B7A0](v61, v36);

  v49 = sub_1E4997EAC();

  v50 = [v37 dateFromString_];

  if (v50)
  {
    v51 = v58;
    sub_1E4996D3C();

    v52 = v71;
    v53 = v72;
    (*(v71 + 8))(v70, v72);
    v54 = v73;
    (*(v52 + 32))(v73, v51, v53);
    v55 = 0;
  }

  else
  {
    v52 = v71;
    v53 = v72;
    (*(v71 + 8))(v70, v72);

    v55 = 1;
    v54 = v73;
  }

  return (*(v52 + 56))(v54, v55, 1, v53);
}

uint64_t sub_1E495D620(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF7F008, &qword_1E499B170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_1E499708C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + 16))
  {
    if (qword_1EE2BB450 != -1)
    {
      swift_once();
    }

    v12 = qword_1EE2BB458;
    v13 = OBJC_IVAR____TtC11ClockPoster11ClockLogger_data_private;
    swift_beginAccess();
    sub_1E48C12D0(v12 + v13, v7, &qword_1ECF7F008, &qword_1E499B170);
    v14 = *(v9 + 48);
    if (v14(v7, 1, v8) == 1)
    {
      sub_1E4904BF4(v11);
      if (v14(v7, 1, v8) != 1)
      {
        sub_1E48C1338(v7, &qword_1ECF7F008, &qword_1E499B170);
      }
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
    }

    v16 = sub_1E499706C();
    v17 = sub_1E499830C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1E48B0000, v16, v17, "SystemSystemStatusBarOverrideProvider handler is not nil. Cannot replace it'", v18, 2u);
      MEMORY[0x1E691CED0](v18, -1, -1);
    }

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_1E495D8EC();
  }
}

uint64_t sub_1E495D8EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = aBlock - v2;
  v4 = v0[4];
  v5 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E495F158;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E495DB80;
  aBlock[3] = &block_descriptor_11;
  v6 = _Block_copy(aBlock);

  [v4 observeDataWithBlock_];
  _Block_release(v6);
  v7 = [v4 data];
  sub_1E495DBEC(v7, v3);
  v8 = v0[2];
  if (v8)
  {
    v9 = v0[3];

    v8(v3);
    sub_1E48BFEC4(v8, v9);
  }

  return sub_1E48C1338(v3, &qword_1ECF80F30, &unk_1E49A4D40);
}

uint64_t sub_1E495DA80(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF80F30, &unk_1E49A4D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_1E495DBEC(a1, v5);
    v8 = *(v7 + 16);
    if (v8)
    {
      v9 = *(v7 + 24);

      v8(v5);
      sub_1E48BFEC4(v8, v9);
    }

    return sub_1E48C1338(v5, &qword_1ECF80F30, &unk_1E49A4D40);
  }

  return result;
}